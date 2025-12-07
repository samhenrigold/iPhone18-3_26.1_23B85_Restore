uint64_t specialized _NativeSet.isEqual(to:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = __CocoaSet.count.getter();
  if (v3 != result)
  {
    return 0;
  }

  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v8 &= v8 - 1;
LABEL_12:

    v12 = __CocoaSet.contains(_:)();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v5;
  while (1)
  {
    v5 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return 1;
    }

    v11 = *(a2 + 56 + 8 * v5);
    ++v10;
    if (v11)
    {
      v8 = (v11 - 1) & v11;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSfySfSgxcSyRzlufCSS_Tt0gq5(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0 || !(a2 & 0x2000000000000000 | a1 & 0x1000000000000000))
  {
    _StringGuts._slowWithCString<A>(_:)();

    v6 = v9;
  }

  else
  {
    MEMORY[0x28223BE20](a1);
    if ((a2 & 0x2000000000000000) != 0)
    {
      v6 = (v3 > 0x20u || ((0x100003E01uLL >> v3) & 1) == 0) && (v7 = _swift_stdlib_strtof_clocale()) != 0 && *v7 == 0;
    }

    else
    {
      if ((v3 & 0x1000000000000000) != 0)
      {
        v4 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v5 = v3 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v4 = _StringObject.sharedUTF8.getter();
      }

      v6 = _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSRyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys4Int8VsAD_pqd_1_Isgyrzr_SRys5UInt8VGqd_1_sAD_pAIRszAGRsd__sAD_pRsd_0_Ri_d_1_r_1_lIetMgyrzo_Tpq5Sb_Tgq507_sSRys4f5VGxs5E35_pIgyrzo_ACxsAD_pIegyrzr_lTRSb_TGq5SRyAGGSbsAD_pIgyrzo_Tf1cn_n(v4, v5, partial apply for specialized closure #1 in _StringGuts.withCString<A>(_:));
    }
  }

  return ((v6 & 1) == 0) << 32;
}

uint64_t _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSRyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys4Int8VsAD_pqd_1_Isgyrzr_SRys5UInt8VGqd_1_sAD_pAIRszAGRsd__sAD_pRsd_0_Ri_d_1_r_1_lIetMgyrzo_Tpq5Sb_Tgq507_sSRys4f5VGxs5E35_pIgyrzo_ACxsAD_pIegyrzr_lTRSb_TGq5SRyAGGSbsAD_pIgyrzo_Tf1cn_n(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t, uint64_t))
{
  if (a1)
  {
    a3(&var2, a1, a2);
    if (!v3)
    {
      v4 = var2;
    }
  }

  else
  {
    a3((&var2 + 1), 0, 0);
    if (!v3)
    {
      v4 = BYTE1(var2);
    }
  }

  return v4 & 1;
}

BOOL specialized String.withCString<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 >= 0x21 || ((0x100003E01uLL >> v4) & 1) == 0)
      {
LABEL_10:
        v6 = _swift_stdlib_strtof_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  _StringGuts._slowWithCString<A>(_:)();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

Swift::String *specialized MaterialXDataType.__allocating_init(xmlElement:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v4._countAndFlagsBits = 1701869940;
  v4._object = 0xE400000000000000;
  v5 = XMLElement.getRequiredAttribute(_:)(v4);
  if (v6)
  {
    return swift_unknownObjectRelease();
  }

  if ((*(a2 + 16))(1836412517, 0xE400000000000000, ObjectType, a2) && (v9 = v8, v10 = swift_getObjectType(), (*(v9 + 32))(v10, v9), v12 = v11, swift_unknownObjectRelease(), v12))
  {
    lazy protocol witness table accessor for type String and conformance String();
    v13 = StringProtocol.components<A>(separatedBy:)();

    type metadata accessor for MaterialXDataType();
    v14 = swift_allocObject();
    v14[1]._object = v13;
    v14[2] = v5;
    swift_unknownObjectRelease();
    result = v14;
    v14[1]._countAndFlagsBits = MEMORY[0x277D84F90];
  }

  else
  {
    type metadata accessor for MaterialXDataType();
    v15 = swift_allocObject();
    v15[1]._object = 0;
    v15[2] = v5;
    swift_unknownObjectRelease();
    result = v15;
    v15[1]._countAndFlagsBits = MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t specialized SGDataTypeStorage.init(materialXValue:type:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = type metadata accessor for CharacterSet();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = (&v160 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(a3 + 24);
  if (v15)
  {
    v174 = a1;
    v175 = a2;
    MEMORY[0x28223BE20](v12);
    *(&v160 - 2) = &v174;

    if (specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySSG_TG5TA_0, (&v160 - 4), v15))
    {

LABEL_4:
      *&v20 = a1;
      *&v17 = a2;
      *(&v20 + 1) = a2;
      v21 = 6;
      goto LABEL_21;
    }

    v174 = 0;
    v175 = 0xE000000000000000;
    _StringGuts.grow(_:)(19);

    v174 = a1;
    v175 = a2;
    MEMORY[0x266771550](0x20746F6E20736920, 0xEF20666F20656E6FLL);
    v26 = MEMORY[0x2667717B0](v15, MEMORY[0x277D837D0]);
    v28 = v27;

    MEMORY[0x266771550](v26, v28);

    v29 = v174;
    v30 = v175;
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v31 = 25;
    *(v31 + 8) = v29;
    *(v31 + 16) = v30;
    goto LABEL_14;
  }

  v22 = v12;
  v23 = one-time initialization token for BOOLean;

  if (v23 != -1)
  {
    swift_once();
  }

  v24 = MaterialXDataType.isEqual(to:)(a3);

  if (v24)
  {
    if (a1 == 1702195828 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v25 = 1;
LABEL_12:
      v21 = 0;
      LODWORD(v20) = v25;
      goto LABEL_21;
    }

    if (a1 == 0x65736C6166 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v25 = 0;
      goto LABEL_12;
    }

LABEL_227:
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v159 = 25;
    *(v159 + 8) = a1;
    *(v159 + 16) = a2;
LABEL_14:
    swift_willThrow();
  }

  v32 = one-time initialization token for integer;

  if (v32 != -1)
  {
    swift_once();
  }

  v33 = MaterialXDataType.isEqual(to:)(a3);

  if (v33)
  {

    v34 = _ss17FixedWidthIntegerPsEyxSgSScfCs5Int32V_Tt1g5(a1, a2);
    if ((v34 & 0x100000000) == 0)
    {
      v35 = v34;

      LODWORD(v20) = v35;
      v21 = 2;
      goto LABEL_21;
    }

    goto LABEL_227;
  }

  v36 = one-time initialization token for integer2;

  if (v36 != -1)
  {
    swift_once();
  }

  v37 = MaterialXDataType.isEqual(to:)(a3);

  if (v37)
  {
    _ss4SIMDP11ShaderGraphs25LosslessStringConvertible6ScalarRpzrlEyxSSKcfCs5SIMD2Vys5Int32VG_Tt1g5(a1, a2);
    v169 = v38;

    if (!v5)
    {
      v21 = 13;
      goto LABEL_42;
    }

    return result;
  }

  v39 = one-time initialization token for integer3;

  if (v39 != -1)
  {
    swift_once();
  }

  v40 = MaterialXDataType.isEqual(to:)(a3);

  if (v40)
  {
    _ss4SIMDP11ShaderGraphs25LosslessStringConvertible6ScalarRpzrlEyxSSKcfCs5SIMD3Vys5Int32VG_Tt1g5(a1, a2);
    v169 = v41;

    if (!v5)
    {
      v21 = 14;
      goto LABEL_42;
    }

    return result;
  }

  v42 = one-time initialization token for integer4;

  if (v42 != -1)
  {
    swift_once();
  }

  v43 = MaterialXDataType.isEqual(to:)(a3);

  if (v43)
  {
    _ss4SIMDP11ShaderGraphs25LosslessStringConvertible6ScalarRpzrlEyxSSKcfCs5SIMD4Vys5Int32VG_Tt1g5(a1, a2);
    v169 = v44;

    if (!v5)
    {
      v21 = 15;
      goto LABEL_42;
    }

    return result;
  }

  v45 = one-time initialization token for float;

  if (v45 != -1)
  {
    swift_once();
  }

  v46 = MaterialXDataType.isEqual(to:)(a3);

  if (v46)
  {
    LODWORD(v174) = 0;
    if (specialized String.withCString<A>(_:)(a1, a2, &v174))
    {

      LODWORD(v20) = v174;
      v21 = 5;
      goto LABEL_21;
    }

    goto LABEL_227;
  }

  v47 = one-time initialization token for color3;

  if (v47 != -1)
  {
    swift_once();
  }

  v48 = MaterialXDataType.isEqual(to:)(a3);

  if (v48)
  {
    _ss4SIMDP11ShaderGraphs25LosslessStringConvertible6ScalarRpzrlEyxSSKcfCs5SIMD3VySfG_Tt1g5(a1, a2);
    v169 = v49;

    if (!v5)
    {
      v21 = 8;
      goto LABEL_42;
    }

    return result;
  }

  v50 = one-time initialization token for color4;

  if (v50 != -1)
  {
    swift_once();
  }

  v51 = MaterialXDataType.isEqual(to:)(a3);

  if (v51)
  {
    _ss4SIMDP11ShaderGraphs25LosslessStringConvertible6ScalarRpzrlEyxSSKcfCs5SIMD4VySfG_Tt1g5(a1, a2);
    v169 = v52;

    if (v5)
    {
      return result;
    }

    goto LABEL_57;
  }

  v53 = one-time initialization token for vector2;

  if (v53 != -1)
  {
    swift_once();
  }

  v54 = MaterialXDataType.isEqual(to:)(a3);

  if (v54)
  {
LABEL_63:
    _ss4SIMDP11ShaderGraphs25LosslessStringConvertible6ScalarRpzrlEyxSSKcfCs5SIMD2VySfG_Tt1g5(a1, a2);
    if (!v5)
    {
      v169 = v57;

      v20 = v169;
      v21 = 7;
      goto LABEL_21;
    }
  }

  v55 = one-time initialization token for float2;

  if (v55 != -1)
  {
    goto LABEL_214;
  }

LABEL_62:
  v56 = MaterialXDataType.isEqual(to:)(a3);

  if (v56)
  {
    goto LABEL_63;
  }

  v58 = one-time initialization token for vector3;

  if (v58 != -1)
  {
    swift_once();
  }

  v59 = MaterialXDataType.isEqual(to:)(a3);

  if (v59)
  {
    goto LABEL_71;
  }

  v60 = one-time initialization token for float3;

  if (v60 != -1)
  {
    swift_once();
  }

  v61 = MaterialXDataType.isEqual(to:)(a3);

  if (v61)
  {
LABEL_71:
    _ss4SIMDP11ShaderGraphs25LosslessStringConvertible6ScalarRpzrlEyxSSKcfCs5SIMD3VySfG_Tt1g5(a1, a2);
    if (!v5)
    {
      v169 = v62;

      v20 = v169;
      v21 = 8;
      goto LABEL_21;
    }
  }

  v63 = one-time initialization token for vector4;

  if (v63 != -1)
  {
    swift_once();
  }

  v64 = MaterialXDataType.isEqual(to:)(a3);

  if (v64)
  {
    goto LABEL_79;
  }

  v65 = one-time initialization token for float4;

  if (v65 != -1)
  {
    swift_once();
  }

  v66 = MaterialXDataType.isEqual(to:)(a3);

  if (v66)
  {
LABEL_79:
    _ss4SIMDP11ShaderGraphs25LosslessStringConvertible6ScalarRpzrlEyxSSKcfCs5SIMD4VySfG_Tt1g5(a1, a2);
    v169 = v67;
    if (v5)
    {
    }

LABEL_57:
    v21 = 9;
    goto LABEL_42;
  }

  v68 = one-time initialization token for matrix22;

  if (v68 != -1)
  {
LABEL_229:
    swift_once();
  }

  v69 = MaterialXDataType.isEqual(to:)(a3);

  if (v69)
  {
    v174 = a1;
    v175 = a2;
    v172 = 44;
    v173 = 0xE100000000000000;
    v165 = lazy protocol witness table accessor for type String and conformance String();
    v163 = StringProtocol.components<A>(separatedBy:)();
    *&v168 = *(v163 + 16);
    if (v168)
    {
      v172 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v168, 0);
      *&v169 = v172;
      v164 = (v11 + 8);
      v70 = (v163 + 40);
      do
      {
        *&v167 = v70;
        v71 = *v70;
        v174 = *(v70 - 1);
        v175 = v71;

        static CharacterSet.whitespacesAndNewlines.getter();
        v72 = StringProtocol.trimmingCharacters(in:)();
        *&v166 = v73;
        (*v164)(v14, v22);

        v74 = v169;
        v172 = v169;
        v11 = *(v169 + 16);
        v75 = *(v169 + 24);
        v76 = v11 + 1;
        if (v11 >= v75 >> 1)
        {
          v162 = v72;
          *&v169 = v11 + 1;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v75 > 1), v11 + 1, 1);
          v76 = v169;
          v72 = v162;
          v74 = v172;
        }

        *&v169 = v74;
        *(v74 + 16) = v76;
        v77 = v74 + 16 * v11;
        v78 = v166;
        *(v77 + 32) = v72;
        *(v77 + 40) = v78;
        v70 = (v167 + 16);
        *&v168 = v168 - 1;
      }

      while (v168);
    }

    else
    {

      *&v169 = MEMORY[0x277D84F90];
    }

    *&v166 = *(v169 + 16);
    if (v166)
    {
      v172 = MEMORY[0x277D84F90];
      v100 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v166, 0);
      *&v168 = 0;
      v101 = v172;
      v14 = (v169 + 40);
      while (1)
      {
        if (v168 >= *(v169 + 16))
        {
          __break(1u);
          goto LABEL_229;
        }

        *&v167 = &v160;
        v102 = *(v14 - 1);
        v103 = *v14;
        v171 = 0;
        MEMORY[0x28223BE20](v100);
        *(&v160 - 2) = &v171;
        if ((v103 & 0x1000000000000000) == 0)
        {
          if ((v103 & 0x2000000000000000) != 0)
          {
            v174 = v102;
            v175 = v103 & 0xFFFFFFFFFFFFFFLL;
            if (v102 <= 0x20u && ((1 << v102) & 0x100003E01) != 0)
            {
              goto LABEL_165;
            }

            goto LABEL_123;
          }

          if ((v102 & 0x1000000000000000) != 0)
          {
            v104 = *((v103 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
            v105 = v104 > 0x20;
            v106 = (1 << v104) & 0x100003E01;
            if (!v105 && v106 != 0)
            {
              goto LABEL_165;
            }

LABEL_123:

            v109 = _swift_stdlib_strtof_clocale();
            if (!v109 || *v109)
            {
              goto LABEL_166;
            }

            goto LABEL_125;
          }
        }

        _StringGuts._slowWithCString<A>(_:)();
        if ((v170 & 1) == 0)
        {
          goto LABEL_166;
        }

LABEL_125:

        v110 = v171;
        v172 = v101;
        v22 = v101[2];
        v111 = v101[3];
        v11 = v22 + 1;
        if (v22 >= v111 >> 1)
        {
          v100 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v111 > 1), v22 + 1, 1);
          v101 = v172;
        }

        v112 = v168 + 1;
        v101[2] = v11;
        *(v101 + v22 + 8) = v110;
        v14 += 2;
        *&v168 = v112;
        if (v166 == v112)
        {

          v113 = v101[2];
          if (v113)
          {
            goto LABEL_132;
          }

LABEL_213:
          __break(1u);
LABEL_214:
          swift_once();
          goto LABEL_62;
        }
      }
    }

    v101 = MEMORY[0x277D84F90];
    v113 = *(MEMORY[0x277D84F90] + 16);
    if (!v113)
    {
      goto LABEL_213;
    }

LABEL_132:
    if (v113 == 1)
    {
      __break(1u);
    }

    else if (v113 >= 3)
    {
      if (v113 != 3)
      {
        *&v152 = v101[4];
        v169 = v152;
        *&v152 = v101[5];
        v168 = v152;

        v17 = v168;
        *&v20 = v169;
        *(&v20 + 1) = v168;
        v21 = 16;
        goto LABEL_21;
      }

LABEL_236:
      __break(1u);
LABEL_237:
      swift_once();
LABEL_137:
      v115 = MaterialXDataType.isEqual(to:)(a3);

      if (v115)
      {

        v21 = 4;
        goto LABEL_219;
      }

      v132 = one-time initialization token for half2;

      if (v132 == -1)
      {
LABEL_173:
        v133 = MaterialXDataType.isEqual(to:)(a3);

        if (v133)
        {

          v21 = 10;
        }

        else
        {
          v150 = one-time initialization token for half3;

          if (v150 != -1)
          {
LABEL_246:
            swift_once();
          }

          v151 = MaterialXDataType.isEqual(to:)(a3);

          if (v151)
          {

            v21 = 11;
          }

          else
          {
            v153 = one-time initialization token for half4;

            if (v153 != -1)
            {
              swift_once();
            }

            v154 = MaterialXDataType.isEqual(to:)(a3);

            if ((v154 & 1) == 0)
            {
              v155 = one-time initialization token for filename;

              if (v155 != -1)
              {
                swift_once();
              }

              v156 = MaterialXDataType.isEqual(to:)(a3);

              if (v156)
              {
                goto LABEL_226;
              }

              v157 = one-time initialization token for string;

              if (v157 != -1)
              {
                swift_once();
              }

              v158 = MaterialXDataType.isEqual(to:)(a3);

              if (v158)
              {
LABEL_226:

                goto LABEL_4;
              }

              goto LABEL_227;
            }

            v21 = 12;
          }
        }

LABEL_219:
        v20 = 0uLL;
        goto LABEL_21;
      }

LABEL_241:
      swift_once();
      goto LABEL_173;
    }

    __break(1u);
    goto LABEL_236;
  }

  v79 = one-time initialization token for matrix33;

  if (v79 != -1)
  {
    goto LABEL_231;
  }

LABEL_90:
  v80 = MaterialXDataType.isEqual(to:)(a3);

  if ((v80 & 1) == 0)
  {
    v90 = one-time initialization token for matrix44;

    if (v90 != -1)
    {
      goto LABEL_233;
    }

    while (1)
    {
      v91 = MaterialXDataType.isEqual(to:)(a3);

      if ((v91 & 1) == 0)
      {
        v114 = one-time initialization token for half;

        if (v114 != -1)
        {
          goto LABEL_237;
        }

        goto LABEL_137;
      }

      v174 = a1;
      v175 = a2;
      v172 = 44;
      v173 = 0xE100000000000000;
      v163 = lazy protocol witness table accessor for type String and conformance String();
      v161 = StringProtocol.components<A>(separatedBy:)();
      *&v167 = *(v161 + 16);
      if (v167)
      {
        v172 = MEMORY[0x277D84F90];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v167, 0);
        *&v168 = v172;
        v162 = (v11 + 8);
        *&v169 = v161 + 40;
        do
        {
          v92 = *v169;
          v174 = *(v169 - 8);
          v175 = v92;

          static CharacterSet.whitespacesAndNewlines.getter();
          v93 = StringProtocol.trimmingCharacters(in:)();
          v164 = v94;
          v165 = v93;
          (*v162)(v14, v22);

          v172 = v168;
          v11 = *(v168 + 16);
          v95 = *(v168 + 24);
          *&v166 = v11 + 1;
          if (v11 >= v95 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v95 > 1), v166, 1);
            *&v168 = v172;
          }

          v96 = v168;
          v97 = v165;
          *(v168 + 16) = v166;
          v98 = v96 + 16 * v11;
          v99 = v164;
          *(v98 + 32) = v97;
          *(v98 + 40) = v99;
          *&v169 = v169 + 16;
          *&v167 = v167 - 1;
        }

        while (v167);
      }

      else
      {

        *&v168 = MEMORY[0x277D84F90];
      }

      *&v166 = *(v168 + 16);
      if (!v166)
      {

        v135 = MEMORY[0x277D84F90];
LABEL_204:
        a2 = *(v135 + 16);
        if (a2 < 4)
        {
          __break(1u);
        }

        else
        {
          _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_s10ArraySliceVySfGTt1g5Tf4gX_n(v135 + 32, 0, 9uLL);
          v169 = v146;
          if (a2 >= 8)
          {
            _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_s10ArraySliceVySfGTt1g5Tf4gX_n(v135 + 32, 4, 0x11uLL);
            v168 = v147;
            if (a2 >= 0xC)
            {
              _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_s10ArraySliceVySfGTt1g5Tf4gX_n(v135 + 32, 8, 0x19uLL);
              v167 = v148;
              if (a2 >= 0x10)
              {
                _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_s10ArraySliceVySfGTt1g5Tf4gX_n(v135 + 32, 12, 0x21uLL);
                v166 = v149;

                v19 = v166;
                v18 = v167;
                v21 = 18;
                v17 = v168;
                v20 = v169;
                goto LABEL_21;
              }

              goto LABEL_245;
            }

LABEL_244:
            __break(1u);
LABEL_245:
            __break(1u);
            goto LABEL_246;
          }
        }

        __break(1u);
        goto LABEL_244;
      }

      v172 = MEMORY[0x277D84F90];
      v134 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v166, 0);
      *&v169 = 0;
      v135 = v172;
      v14 = (v168 + 40);
      while (v169 < *(v168 + 16))
      {
        *&v167 = &v160;
        v136 = *(v14 - 1);
        v137 = *v14;
        v171 = 0;
        MEMORY[0x28223BE20](v134);
        *(&v160 - 2) = &v171;
        if ((v137 & 0x1000000000000000) == 0)
        {
          if ((v137 & 0x2000000000000000) != 0)
          {
            v174 = v136;
            v175 = v137 & 0xFFFFFFFFFFFFFFLL;
            if (v136 <= 0x20u && ((1 << v136) & 0x100003E01) != 0)
            {
LABEL_201:

LABEL_166:

              lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
              swift_allocError();
              *v128 = 25;
              *(v128 + 8) = a1;
              *(v128 + 16) = a2;
              swift_willThrow();
            }

            goto LABEL_193;
          }

          if ((v136 & 0x1000000000000000) != 0)
          {
            v138 = *((v137 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
            v105 = v138 > 0x20;
            v139 = (1 << v138) & 0x100003E01;
            if (!v105 && v139 != 0)
            {
              goto LABEL_201;
            }

LABEL_193:

            v142 = _swift_stdlib_strtof_clocale();
            if (!v142 || *v142)
            {
              goto LABEL_166;
            }

            goto LABEL_195;
          }
        }

        _StringGuts._slowWithCString<A>(_:)();
        if ((v170 & 1) == 0)
        {
          goto LABEL_166;
        }

LABEL_195:

        v143 = v171;
        v172 = v135;
        v22 = *(v135 + 16);
        v144 = *(v135 + 24);
        v11 = v22 + 1;
        if (v22 >= v144 >> 1)
        {
          v134 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v144 > 1), v22 + 1, 1);
          v135 = v172;
        }

        v145 = v169 + 1;
        *(v135 + 16) = v11;
        *(v135 + 4 * v22 + 32) = v143;
        v14 += 2;
        *&v169 = v145;
        if (v166 == v145)
        {

          goto LABEL_204;
        }
      }

      __break(1u);
LABEL_233:
      swift_once();
    }
  }

  v174 = a1;
  v175 = a2;
  v172 = 44;
  v173 = 0xE100000000000000;
  v165 = lazy protocol witness table accessor for type String and conformance String();
  v163 = StringProtocol.components<A>(separatedBy:)();
  *&v168 = *(v163 + 16);
  if (v168)
  {
    v172 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v168, 0);
    *&v169 = v172;
    v164 = (v11 + 8);
    v81 = (v163 + 40);
    do
    {
      *&v167 = v81;
      v82 = *v81;
      v174 = *(v81 - 1);
      v175 = v82;

      static CharacterSet.whitespacesAndNewlines.getter();
      v83 = StringProtocol.trimmingCharacters(in:)();
      *&v166 = v84;
      (*v164)(v14, v22);

      v85 = v169;
      v172 = v169;
      v11 = *(v169 + 16);
      v86 = *(v169 + 24);
      v87 = v11 + 1;
      if (v11 >= v86 >> 1)
      {
        v162 = v83;
        *&v169 = v11 + 1;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v86 > 1), v11 + 1, 1);
        v87 = v169;
        v83 = v162;
        v85 = v172;
      }

      *&v169 = v85;
      *(v85 + 16) = v87;
      v88 = v85 + 16 * v11;
      v89 = v166;
      *(v88 + 32) = v83;
      *(v88 + 40) = v89;
      v81 = (v167 + 16);
      *&v168 = v168 - 1;
    }

    while (v168);
  }

  else
  {

    *&v169 = MEMORY[0x277D84F90];
  }

  *&v166 = *(v169 + 16);
  if (v166)
  {
    v172 = MEMORY[0x277D84F90];
    v116 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v166, 0);
    *&v168 = 0;
    v117 = v172;
    v14 = (v169 + 40);
    while (1)
    {
      if (v168 >= *(v169 + 16))
      {
        __break(1u);
LABEL_231:
        swift_once();
        goto LABEL_90;
      }

      *&v167 = &v160;
      v118 = *(v14 - 1);
      v119 = *v14;
      v171 = 0;
      MEMORY[0x28223BE20](v116);
      *(&v160 - 2) = &v171;
      if ((v119 & 0x1000000000000000) == 0)
      {
        if ((v119 & 0x2000000000000000) != 0)
        {
          v174 = v118;
          v175 = v119 & 0xFFFFFFFFFFFFFFLL;
          if (v118 <= 0x20u && ((1 << v118) & 0x100003E01) != 0)
          {
LABEL_165:

            goto LABEL_166;
          }

          goto LABEL_157;
        }

        if ((v118 & 0x1000000000000000) != 0)
        {
          v120 = *((v119 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          v105 = v120 > 0x20;
          v121 = (1 << v120) & 0x100003E01;
          if (!v105 && v121 != 0)
          {
            goto LABEL_165;
          }

LABEL_157:

          v124 = _swift_stdlib_strtof_clocale();
          if (!v124 || *v124)
          {
            goto LABEL_166;
          }

          goto LABEL_159;
        }
      }

      _StringGuts._slowWithCString<A>(_:)();
      if ((v170 & 1) == 0)
      {
        goto LABEL_166;
      }

LABEL_159:

      v125 = v171;
      v172 = v117;
      v22 = *(v117 + 16);
      v126 = *(v117 + 24);
      v11 = v22 + 1;
      if (v22 >= v126 >> 1)
      {
        v116 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v126 > 1), v22 + 1, 1);
        v117 = v172;
      }

      v127 = v168 + 1;
      *(v117 + 16) = v11;
      *(v117 + 4 * v22 + 32) = v125;
      v14 += 2;
      *&v168 = v127;
      if (v166 == v127)
      {

        goto LABEL_168;
      }
    }
  }

  v117 = MEMORY[0x277D84F90];
LABEL_168:
  a2 = *(v117 + 16);
  if (a2 < 3)
  {
    __break(1u);
    goto LABEL_239;
  }

  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_s10ArraySliceVySfGTt1g5Tf4gX_n(v117 + 32, 0, 7uLL);
  v169 = v129;
  if (a2 < 6)
  {
LABEL_239:
    __break(1u);
    goto LABEL_240;
  }

  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_s10ArraySliceVySfGTt1g5Tf4gX_n(v117 + 32, 3, 0xDuLL);
  v168 = v130;
  if (a2 < 9)
  {
LABEL_240:
    __break(1u);
    goto LABEL_241;
  }

  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_s10ArraySliceVySfGTt1g5Tf4gX_n(v117 + 32, 6, 0x13uLL);
  v167 = v131;

  v18 = v167;
  v17 = v168;
  v21 = 17;
LABEL_42:
  v20 = v169;
LABEL_21:
  *a4 = v20;
  *(a4 + 16) = v17;
  *(a4 + 32) = v18;
  *(a4 + 48) = v19;
  *(a4 + 64) = v21;
  return result;
}

void specialized closure #1 in closure #7 in createGraph(_:nodeDefStore:)(uint64_t *a1, __int128 *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v200 = a8;
  v13 = *a1;
  v14 = a1[1];
  swift_getObjectType();
  v15._countAndFlagsBits = 1701667182;
  v15._object = 0xE400000000000000;
  v16 = XMLElement.getRequiredAttribute(_:)(v15);
  if (v17)
  {
    return;
  }

  v120 = v14;
  specialized ShaderGraphNode.output(labeled:)(&v124, v16._countAndFlagsBits, v16._object, *(a2 + 1));
  if (!v125)
  {
    *&v123 = 0;
    *(&v123 + 1) = 0xE000000000000000;
    MEMORY[0x266771550](v16._countAndFlagsBits, v16._object);
    MEMORY[0x266771550](32, 0xE100000000000000);
    v44 = a2[1];
    v121 = *a2;
    *v122 = v44;
    *&v122[9] = *(a2 + 25);
    _print_unlocked<A, B>(_:_:)();

    *&v121 = 0;
    *(&v121 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(22);
    v123 = v121;
    MEMORY[0x266771550](0x6D614E7475706E69, 0xEB00000000203A65);
    MEMORY[0x266771550](v16._countAndFlagsBits, v16._object);

    MEMORY[0x266771550](0x203A65646F6E20, 0xE700000000000000);
    v45 = a2[1];
    v121 = *a2;
    *v122 = v45;
    *&v122[9] = *(a2 + 25);
    _print_unlocked<A, B>(_:_:)();
    v46 = v123;
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v47 = 11;
    *(v47 + 8) = v46;
    swift_willThrow();
    return;
  }

  v160 = v124;
  v161 = v125;
  v162 = v126;
  v163 = v127;
  v164 = v128;
  v18 = v13;
  XMLNode.subscript.getter(0x65756C6176, 0xE500000000000000);
  v119 = a3;
  v118 = a4;
  if (v19 || (XMLNode.subscript.getter(0x67746C7561666564, 0xEF706F72706D6F65), v20))
  {

    v21 = 1;
  }

  else
  {
    v21 = 0;
  }

  XMLNode.subscript.getter(0x65756C6176, 0xE500000000000000);
  v117 = a5;
  object = v16._object;
  if (v23)
  {

    XMLNode.subscript.getter(0x67746C7561666564, 0xEF706F72706D6F65);
    if (v24)
    {

      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      __swift_project_value_buffer(v25, logger);

      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        *&v121 = v29;
        *v28 = 136315138;
        *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16._countAndFlagsBits, v16._object, &v121);
        __swift_destroy_boxed_opaque_existential_1Tm(v29);
        MEMORY[0x266773120](v29, -1, -1);
        MEMORY[0x266773120](v28, -1, -1);
      }
    }
  }

  if ((v21 & 1) == 0)
  {
    XMLNode.subscript.getter(0x656D616E65646F6ELL, 0xE800000000000000);
    if (v30 || (XMLNode.subscript.getter(0x6361667265746E69, 0xED0000656D616E65), v31))
    {
    }

    else
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v81 = type metadata accessor for Logger();
      __swift_project_value_buffer(v81, logger);

      v82 = Logger.logObject.getter();
      v83 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        *&v121 = v85;
        *v84 = 136315138;
        *(v84 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16._countAndFlagsBits, v16._object, &v121);
        __swift_destroy_boxed_opaque_existential_1Tm(v85);
        MEMORY[0x266773120](v85, -1, -1);
        MEMORY[0x266773120](v84, -1, -1);
      }
    }
  }

  countAndFlagsBits = &v160;
  v33 = XMLNode.subscript.getter(0x6361667265746E69, 0xED0000656D616E65);
  if (!v34)
  {
    v48 = XMLNode.subscript.getter(0x656D616E65646F6ELL, 0xE800000000000000);
    if (v49)
    {
      v50 = v48;
      v51 = v49;

      v52 = *v118;
      if (!*(*v118 + 16) || (v53 = specialized __RawDictionaryStorage.find<A>(_:)(v50, v51), (v54 & 1) == 0))
      {
        lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
        swift_allocError();
        *v75 = 9;
        *(v75 + 8) = v50;
        *(v75 + 16) = v51;
        swift_willThrow();

        v174 = v162;
        outlined destroy of String(&v174);
        return;
      }

      v55 = v53;

      v56 = *(*(v52 + 56) + 8 * v55);
      v57 = XMLNode.subscript.getter(0x74757074756FLL, 0xE600000000000000);
      if (v58)
      {
        object = v57;
      }

      else
      {
        object = 7632239;
      }

      if (v58)
      {
        v59 = v58;
      }

      else
      {
        v59 = 0xE300000000000000;
      }

      if (v56 == -7)
      {
LABEL_53:
        lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
        swift_allocError();
        *v98 = 14;
        *(v98 + 8) = object;
        *(v98 + 16) = v59;
        swift_willThrow();

        v173 = v162;
        v43 = &v173;
        goto LABEL_20;
      }

      if ((v56 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v60 = *(v119 + 64);
        if (v56 < *(v60 + 16))
        {
          v61 = v60 + 48 * v56;
          v63 = *(v61 + 32);
          v62 = *(v61 + 40);
          v65 = *(v61 + 48);
          v64 = *(v61 + 56);
          v66 = *(v61 + 64);
          v67 = *(v61 + 72);
          specialized ShaderGraphNode.output(labeled:)(&v134, object, v59, v65);
          v68 = v135;
          if (v135)
          {
            v69 = v140;
            v70 = v139;
            v71 = v137;
            v72 = v138;
            v73 = v136;
            v74 = v134;

            v177[0] = v73;
            v177[1] = v71;
            v172 = v162;
            v187[0] = v74;
            v187[1] = v68;
            v187[2] = v73;
            v187[3] = v71;
            v187[4] = v72;
            v188 = v70 & 1;
            v189 = v69;
            v190[0] = v160;
            v190[1] = v161;
            v191 = v162;
            v192 = v163;
            v193 = BYTE8(v163) & 1;
            v194 = v164;

            outlined init with copy of String(v177, &v121);

            outlined init with copy of String(&v172, &v121);
            UserGraph.connect(_:to:)(v187, v190);

            outlined destroy of String(&v172);

            v43 = v177;
            goto LABEL_20;
          }

          *&v123 = 0;
          *(&v123 + 1) = 0xE000000000000000;
          outlined copy of NodePersonality(v63);

          MEMORY[0x266771550](object, v59);
          MEMORY[0x266771550](32, 0xE100000000000000);
          *&v121 = v63;
          *(&v121 + 1) = v62;
          *v122 = v65;
          *&v122[8] = v64;
          *&v122[16] = v66;
          v122[24] = v67;
          _print_unlocked<A, B>(_:_:)();

          outlined consume of NodePersonality(v63);

          goto LABEL_53;
        }
      }

      __break(1u);
    }

    else
    {
      v76 = XMLNode.subscript.getter(0x65756C6176, 0xE500000000000000);
      if (v77)
      {
        v78 = v77;
        v79 = v76;

        v80 = swift_unknownObjectRetain();
        v59 = specialized MaterialXDataType.__allocating_init(xmlElement:)(v80, v120);

        specialized SGDataTypeStorage.init(materialXValue:type:)(v79, v78, v59, v141);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMR);
        object = swift_allocObject();
        *(object + 16) = xmmword_265F1F670;
        *(object + 32) = 7632239;
        countAndFlagsBits = (object + 32);
        *(object + 40) = 0xE300000000000000;
        *(object + 48) = v59;
        v99 = swift_allocObject();
        v100 = v141[3];
        *(v99 + 48) = v141[2];
        *(v99 + 64) = v100;
        *(v99 + 80) = v142;
        v101 = v141[1];
        *(v99 + 16) = v141[0];
        *(v99 + 32) = v101;
        *(v99 + 88) = v59;
        swift_retain_n();
        outlined init with copy of SGDataTypeStorage(v141, &v121);
        UserGraph.insertNode(inputs:outputs:shaderGraphData:)(MEMORY[0x277D84F90], object, v99, &v143);

        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v181 = v144;
        if (*(v144 + 16))
        {
          v102 = *(v144 + 40);
          v103 = *(v144 + 48);
          v104 = *(v144 + 56);
          v105 = *(v144 + 64);
          v106 = *(v144 + 72);
          v107 = *(v144 + 80);
          v195[0] = *(v144 + 32);
          v195[1] = v102;
          v195[2] = v103;
          v195[3] = v104;
          v195[4] = v105;
          v196 = v106;
          v197 = v107;

          UserGraph.connect(_:to:)(v195, &v160);

          v171 = v162;
          outlined destroy of String(&v171);

          outlined destroy of SGDataTypeStorage(v141);
          v180 = v143;
          outlined destroy of NodePersonality(&v180);
          v179 = *(&v143 + 1);
          outlined destroy of [Input](&v179, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          outlined destroy of [Input](&v181, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

          return;
        }

        goto LABEL_68;
      }

      v86 = XMLNode.subscript.getter(0x67746C7561666564, 0xEF706F72706D6F65);
      if (!v87)
      {
        swift_getObjectType();
        v95._countAndFlagsBits = 1701667182;
        v95._object = 0xE400000000000000;
        v96 = XMLElement.getRequiredAttribute(_:)(v95);
        if (v97)
        {

          v165 = v162;
          outlined destroy of String(&v165);

          return;
        }

        v59 = v96._object;
        countAndFlagsBits = v96._countAndFlagsBits;
        if (one-time initialization token for logger == -1)
        {
          goto LABEL_57;
        }

        goto LABEL_69;
      }

      v59 = v86;
      v88 = v87;

      if (*(a6 + 16))
      {
        object = specialized __RawDictionaryStorage.find<A>(_:)(v59, v88);
        v59 = v89;

        if (v59)
        {
          v90 = (*(a6 + 56) + (object << 6));
          v92 = v90[1];
          v91 = v90[2];
          v93 = *v90;
          *&v199[9] = *(v90 + 41);
          v198[1] = v92;
          *v199 = v91;
          v198[0] = v93;
          swift_unknownObjectRetain();
          outlined init with copy of GeomPropDef(v198, &v121);
          v94 = specialized MaterialXDataType.__allocating_init(xmlElement:)(v18, v120);
          specialized UserGraph.insertGeomPropGetter(_:outputType:nodeDefStore:)(v198, v94, v117, &v145);
          v186 = v146[0];
          specialized ShaderGraphNode.output(labeled:)(&v147, 7632239, 0xE300000000000000, v146[0]);
          if (!v148)
          {
            *&v123 = 0;
            *(&v123 + 1) = 0xE000000000000000;
            MEMORY[0x266771550](7632239, 0xE300000000000000);
            MEMORY[0x266771550](32, 0xE100000000000000);
            v121 = v145;
            *v122 = *v146;
            *&v122[9] = *(&v146[1] + 1);
            _print_unlocked<A, B>(_:_:)();
            v115 = v123;
            lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
            swift_allocError();
            *v116 = 14;
            *(v116 + 8) = v115;
            swift_willThrow();
            v185 = v145;
            outlined destroy of NodePersonality(&v185);
            v184 = *(&v145 + 1);
            outlined destroy of [Input](&v184, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
            outlined destroy of [Input](&v186, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

            outlined destroy of GeomPropDef(v198);

            v169 = v162;
            v43 = &v169;
            goto LABEL_20;
          }

          v156[0] = v147;
          v156[1] = v148;
          v157 = v149;
          v158 = v150;
          v159 = v151;
          UserGraph.connect(_:to:)(v156, &v160);

          v170 = v162;
          outlined destroy of String(&v170);

          v176 = v157;
          outlined destroy of String(&v176);
          v183 = v145;
          outlined destroy of NodePersonality(&v183);
          v182 = *(&v145 + 1);
          outlined destroy of [Input](&v182, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          outlined destroy of [Input](&v186, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

          outlined destroy of GeomPropDef(v198);
          return;
        }

        goto LABEL_67;
      }
    }

    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    swift_once();
LABEL_57:
    v108 = type metadata accessor for Logger();
    __swift_project_value_buffer(v108, logger);

    v109 = Logger.logObject.getter();
    v110 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      *&v121 = v112;
      *v111 = 136315394;
      v113 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16._countAndFlagsBits, object, &v121);

      *(v111 + 4) = v113;
      *(v111 + 12) = 2080;
      v114 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, v59, &v121);

      *(v111 + 14) = v114;
      swift_arrayDestroy();
      MEMORY[0x266773120](v112, -1, -1);
      MEMORY[0x266773120](v111, -1, -1);

      v168 = v162;
      outlined destroy of String(&v168);
    }

    else
    {

      v167 = v162;
      outlined destroy of String(&v167);
    }

    return;
  }

  v35 = v33;
  v36 = v34;

  v38 = *(v119 + 80);
  v37 = *(v119 + 88);
  v39 = *(v119 + 96);
  v40 = *(v119 + 104);
  v41 = *(v119 + 112);
  v42 = *(v119 + 120);
  specialized ShaderGraphNode.output(labeled:)(&v129, v35, v36, v39);
  if (v130)
  {
    v152[0] = v129;
    v152[1] = v130;
    v153 = v131;
    v154 = v132;
    v155 = v133;
    outlined copy of NodePersonality(v38);

    UserGraph.connect(_:to:)(v152, &v160);
    outlined consume of NodePersonality(v38);

    v175 = v162;
    outlined destroy of String(&v175);

    v178 = v153;
    v43 = &v178;
LABEL_20:
    outlined destroy of String(v43);
    return;
  }

  *&v123 = 0;
  *(&v123 + 1) = 0xE000000000000000;
  outlined copy of NodePersonality(v38);

  MEMORY[0x266771550](v35, v36);
  MEMORY[0x266771550](32, 0xE100000000000000);
  *&v121 = v38;
  *(&v121 + 1) = v37;
  *v122 = v39;
  *&v122[8] = v40;
  *&v122[16] = v41;
  v122[24] = v42;
  _print_unlocked<A, B>(_:_:)();

  outlined consume of NodePersonality(v38);

  v166 = v162;
  outlined destroy of String(&v166);
}

uint64_t specialized UserGraph.appendSwizzleNode(to:resultType:channels:nodeDefStore:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v7 = v6;
  v93 = a6;
  v13 = a1[1];
  type metadata accessor for MaterialXDataType();
  v14 = swift_dynamicCastClass();
  if (!v14)
  {
    *&v40 = 0;
    *(&v40 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(58);
    v20 = MEMORY[0x266771550](0x742074757074754FLL, 0xED00002720657079);
    v21 = (*(*v13 + 136))(v20);
    MEMORY[0x266771550](v21);

    MEMORY[0x266771550](0xD00000000000002BLL, 0x8000000265F303D0);
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v22 = 47;
    *(v22 + 8) = v40;
    return swift_willThrow();
  }

  v15 = v14;
  if (*(v14 + 24))
  {

    _StringGuts.grow(_:)(41);

    *&v39 = 0x272065707954;
    *(&v39 + 1) = 0xE600000000000000;
    v17 = (*(*v13 + 136))(v16);
    MEMORY[0x266771550](v17);

    v18 = 0xD000000000000021;
    v19 = 0x8000000265F30400;
LABEL_7:
    MEMORY[0x266771550](v18, v19);
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v26 = 47;
    *(v26 + 8) = v39;
    swift_willThrow();
  }

  if (a2[3])
  {

    _StringGuts.grow(_:)(40);

    *&v39 = 0x272065707954;
    *(&v39 + 1) = 0xE600000000000000;
    v25 = (*(*v13 + 136))(v24);
    MEMORY[0x266771550](v25);

    v19 = 0x8000000265F30430;
    v18 = 0xD000000000000020;
    goto LABEL_7;
  }

  _StringGuts.grow(_:)(16);

  v27 = *(v15 + 32);
  v28 = *(v15 + 40);

  MEMORY[0x266771550](v27, v28);

  MEMORY[0x266771550](95, 0xE100000000000000);
  MEMORY[0x266771550](a2[4], a2[5]);
  specialized NodeDefStore.createNode(in:nodeDefName:)(0x7A7A6977735F444ELL, 0xEB000000005F656CLL, a5, &v41);
  if (v7)
  {
  }

  if (one-time initialization token for string != -1)
  {
    swift_once();
  }

  v29 = static MaterialXDataType.string;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMR);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_265F1F670;
  *(v30 + 32) = 7632239;
  *(v30 + 40) = 0xE300000000000000;
  *(v30 + 48) = v29;
  v31 = swift_allocObject();
  *(v31 + 16) = a3;
  *(v31 + 24) = a4;
  *(v31 + 80) = 6;
  *(v31 + 88) = v29;
  swift_retain_n();

  UserGraph.insertNode(inputs:outputs:shaderGraphData:)(MEMORY[0x277D84F90], v30, v31, &v43);

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v92[0] = v44[0];
  specialized ShaderGraphNode.output(labeled:)(&v45, 7632239, 0xE300000000000000, v44[0]);
  if (!v46)
  {
    MEMORY[0x266771550](7632239, 0xE300000000000000);
    MEMORY[0x266771550](32, 0xE100000000000000);
    _print_unlocked<A, B>(_:_:)();
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v35 = 14;
    *(v35 + 8) = 0;
    *(v35 + 16) = 0xE000000000000000;
    swift_willThrow();
    v91 = v43;
    outlined destroy of NodePersonality(&v91);
    v90 = *(&v43 + 1);
    outlined destroy of [Input](&v90, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined destroy of [Input](v92, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    v89 = v41;
    outlined destroy of NodePersonality(&v89);
    v88 = *(&v41 + 1);
    outlined destroy of [Input](&v88, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    v87 = *&v42[0];
    v36 = &v87;
LABEL_20:
    outlined destroy of [Input](v36, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
  }

  v68[0] = v45;
  v68[1] = v46;
  v69 = v47;
  v70 = v48;
  v71 = v49;
  v32 = *(&v41 + 1);
  v86 = *(&v41 + 1);
  specialized ShaderGraphNode.output(labeled:)(&v50, 0x736C656E6E616863, 0xE800000000000000, *(&v41 + 1));
  if (!v51)
  {
    MEMORY[0x266771550](0x736C656E6E616863, 0xE800000000000000);
    MEMORY[0x266771550](32, 0xE100000000000000);
    _print_unlocked<A, B>(_:_:)();
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v37 = 11;
    *(v37 + 8) = 0;
    *(v37 + 16) = 0xE000000000000000;
    swift_willThrow();

    v72 = v69;
    outlined destroy of String(&v72);
    v85 = v43;
    outlined destroy of NodePersonality(&v85);
    v84 = *(&v43 + 1);
    outlined destroy of [Input](&v84, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined destroy of [Input](v92, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    v83 = v41;
    outlined destroy of NodePersonality(&v83);
    outlined destroy of [Input](&v86, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    v82 = *&v42[0];
    v36 = &v82;
    goto LABEL_20;
  }

  v64[0] = v50;
  v64[1] = v51;
  v65 = v52;
  v66 = v53;
  v67 = v54;
  UserGraph.connect(_:to:)(v68, v64);

  v74 = v65;
  outlined destroy of String(&v74);

  v73 = v69;
  outlined destroy of String(&v73);
  specialized ShaderGraphNode.output(labeled:)(&v55, 28265, 0xE200000000000000, v32);
  if (!v56)
  {
    MEMORY[0x266771550](28265, 0xE200000000000000);
    MEMORY[0x266771550](32, 0xE100000000000000);
    _print_unlocked<A, B>(_:_:)();
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v38 = 11;
    *(v38 + 8) = 0;
    *(v38 + 16) = 0xE000000000000000;
    swift_willThrow();
    v81 = v43;
    outlined destroy of NodePersonality(&v81);
    v80 = *(&v43 + 1);
    outlined destroy of [Input](&v80, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined destroy of [Input](v92, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    v79 = v41;
    outlined destroy of NodePersonality(&v79);
    outlined destroy of [Input](&v86, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    v78 = *&v42[0];
    v36 = &v78;
    goto LABEL_20;
  }

  v60[0] = v55;
  v60[1] = v56;
  v61 = v57;
  v62 = v58;
  v63 = v59;
  UserGraph.connect(_:to:)(a1, v60);

  v75 = v61;
  outlined destroy of String(&v75);
  v77 = v43;
  outlined destroy of NodePersonality(&v77);
  v76 = *(&v43 + 1);
  outlined destroy of [Input](&v76, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  outlined destroy of [Input](v92, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

  v33 = v42[0];
  v34 = v93;
  *v93 = v41;
  v34[1] = v33;
  *(v34 + 25) = *(v42 + 9);
  return result;
}

void specialized closure #8 in createGraph(_:nodeDefStore:)(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = *a1;
  v10 = XMLNode.subscript.getter(0x656D616E65646F6ELL, 0xE800000000000000);
  if (v11)
  {
    v12 = *a2;
    if (!*(*a2 + 16))
    {
LABEL_10:

      return;
    }

    v13 = specialized __RawDictionaryStorage.find<A>(_:)(v10, v11);
    v15 = v14;

    if (v15)
    {
      v16 = *(*(v12 + 56) + 8 * v13);
      if (v16 != -7)
      {
        if ((v16 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else
        {
          v17 = *(a3 + 64);
          if (v16 < *(v17 + 16))
          {
            v18 = v17 + 48 * v16;
            v20 = *(v18 + 32);
            v19 = *(v18 + 40);
            v21 = *(v18 + 48);
            v22 = *(v18 + 56);
            v23 = *(v18 + 64);
            LODWORD(v137) = *(v18 + 72);
            v94 = v19;

            v93 = v20;
            outlined copy of NodePersonality(v20);
            v24 = XMLNode.subscript.getter(0x74757074756FLL, 0xE600000000000000);
            if (v25)
            {
              v26 = v25;
              v95 = v23;
              v27 = v24;
              specialized ShaderGraphNode.output(labeled:)(&v97, v24, v25, v21);
              if (!v98)
              {
                *&v127 = 0;
                *(&v127 + 1) = 0xE000000000000000;
                MEMORY[0x266771550](v27, v26);
                MEMORY[0x266771550](32, 0xE100000000000000);
                v130 = v20;
                v131 = v94;
                v132 = v21;
                v133 = v22;
                v134 = v95;
                v135 = v137;
                _print_unlocked<A, B>(_:_:)();
                v47 = v127;
                lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
                v9 = swift_allocError();
                *v48 = 14;
                *(v48 + 8) = v47;
                swift_willThrow();

                outlined consume of NodePersonality(v20);

                goto LABEL_32;
              }

              v96 = v103;
              v28 = v100;
              v29 = v101;
              v137 = v99;
              v91 = v97;
              v30 = v102;
              v31 = v98;

              v32 = v30;

              v90 = v31;
              v33 = v31;
              v34 = v91;
            }

            else
            {
              v35 = v21;
              if (!*(v21 + 16))
              {
                outlined consume of NodePersonality(v20);
LABEL_22:

                goto LABEL_10;
              }

              v34 = *(v21 + 32);
              v36 = *(v35 + 40);
              v28 = *(v35 + 56);
              v137 = *(v35 + 48);
              v29 = *(v35 + 64);
              v32 = *(v35 + 72);
              v96 = *(v35 + 80);
              swift_retain_n();

              v90 = v36;
              v33 = v36;
            }

            v130 = v34;
            v131 = v33;
            v132 = v137;
            v133 = v28;
            v134 = v29;
            v86 = v32;
            v135 = v32 & 1;
            v136 = v96;
            v37 = v28;
            v38 = XMLNode.subscript.getter(1701869940, 0xE400000000000000);
            if (v39)
            {
              v40 = v38;
              v87 = v33;
              v92 = v34;
              v41 = v137;
              v88 = v29;
              v89 = v37;
              v42 = v39;
              type metadata accessor for MaterialXDataType();
              inited = swift_initStackObject();
              inited[4] = v40;
              inited[5] = v42;
              inited[2] = MEMORY[0x277D84F90];
              inited[3] = 0;
              v44 = XMLNode.subscript.getter(0x736C656E6E616863, 0xE800000000000000);
              if (v45)
              {
                specialized UserGraph.appendSwizzleNode(to:resultType:channels:nodeDefStore:)(&v130, inited, v44, v45, a4, &v104);
                v46 = v41;
                if (v5)
                {

                  outlined consume of NodePersonality(v93);

                  outlined consume of Output?(v92, v90, v41, v89);

                  v9 = v5;
                  goto LABEL_33;
                }

                v126 = v105[0];
                specialized ShaderGraphNode.output(labeled:)(&v106, 7632239, 0xE300000000000000, v105[0]);
                v50 = v107;
                if (!v107)
                {
                  v118 = 0;
                  v119 = 0xE000000000000000;
                  MEMORY[0x266771550](7632239, 0xE300000000000000);
                  MEMORY[0x266771550](32, 0xE100000000000000);
                  v127 = v104;
                  *v128 = *v105;
                  *&v128[9] = *(&v105[1] + 1);
                  _print_unlocked<A, B>(_:_:)();
                  v67 = v118;
                  v68 = v119;
                  lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
                  v9 = swift_allocError();
                  *v69 = 14;
                  *(v69 + 8) = v67;
                  *(v69 + 16) = v68;
                  swift_willThrow();

                  outlined consume of NodePersonality(v93);

                  outlined consume of Output?(v92, v90, v41, v89);
                  *&v127 = v104;
                  outlined destroy of NodePersonality(&v127);
                  v118 = *(&v104 + 1);
                  outlined destroy of [Input](&v118, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
                  outlined destroy of [Input](&v126, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
                  goto LABEL_32;
                }

                v49 = v109;
                v84 = v110;
                v85 = v112;
                v82 = v106;
                v83 = v108;
                v125 = v104;
                v86 = v111;
                outlined destroy of NodePersonality(&v125);
                v124 = *(&v104 + 1);
                outlined destroy of [Input](&v124, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
                outlined destroy of [Input](&v126, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

                v87 = v50;
              }

              else
              {
                v82 = v92;
                v83 = v41;
                v46 = v41;
                v49 = v89;
                v84 = v88;
                v85 = v96;
              }

              v51 = XMLNode.subscript.getter(1701667182, 0xE400000000000000);
              if (!v52)
              {

                outlined consume of NodePersonality(v93);

                v60 = v92;
                v62 = v89;
                v61 = v90;
                v63 = v46;
                goto LABEL_29;
              }

              v53 = v52;
              v137 = v46;
              v55 = *(a3 + 128);
              v54 = *(a3 + 136);
              v56 = *(a3 + 144);
              v80 = *(a3 + 152);
              v81 = v49;
              v57 = *(a3 + 160);
              v58 = *(a3 + 168);
              v59 = v51;
              specialized ShaderGraphNode.output(labeled:)(&v113, v51, v52, v54);
              if (v114)
              {
                v118 = v113;
                v119 = v114;
                v120 = v115;
                v121 = v116;
                v122 = v117;

                *&v127 = v82;
                *(&v127 + 1) = v87;
                *v128 = v83;
                *&v128[8] = v81;
                *&v128[16] = v84;
                v128[24] = v86 & 1;
                v129 = v85;
                UserGraph.connect(_:to:)(&v127, &v118);

                v123 = v120;
                outlined destroy of String(&v123);
                outlined consume of NodePersonality(v93);

                v60 = v92;
                v62 = v89;
                v61 = v90;
                v63 = v137;
LABEL_29:
                outlined consume of Output?(v60, v61, v63, v62);
                goto LABEL_10;
              }

              v118 = 0;
              v119 = 0xE000000000000000;
              outlined copy of NodePersonality(v55);

              MEMORY[0x266771550](v59, v53);
              MEMORY[0x266771550](32, 0xE100000000000000);
              *&v127 = v55;
              *(&v127 + 1) = v54;
              *v128 = v56;
              *&v128[8] = v80;
              *&v128[16] = v57;
              v128[24] = v58;
              _print_unlocked<A, B>(_:_:)();
              v64 = v118;
              v65 = v119;
              lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
              v9 = swift_allocError();
              *v66 = 11;
              *(v66 + 8) = v64;
              *(v66 + 16) = v65;
              swift_willThrow();

              outlined consume of NodePersonality(v55);

              outlined consume of NodePersonality(v93);

              outlined consume of Output?(v92, v90, v137, v89);
LABEL_32:

LABEL_33:
              if (one-time initialization token for logger == -1)
              {
                goto LABEL_34;
              }

              goto LABEL_39;
            }

            outlined consume of Output?(v34, v90, v137, v28);
            outlined consume of NodePersonality(v93);

            goto LABEL_22;
          }
        }

        __break(1u);
LABEL_39:
        swift_once();
LABEL_34:
        v70 = type metadata accessor for Logger();
        __swift_project_value_buffer(v70, logger);
        v71 = v9;
        v72 = Logger.logObject.getter();
        v73 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          v75 = swift_slowAlloc();
          *&v123 = v75;
          *v74 = 136315138;
          v76 = v9;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
          v77 = String.init<A>(describing:)();
          v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v78, &v123);

          *(v74 + 4) = v79;
          _os_log_impl(&dword_265D7D000, v72, v73, "Got error '%s'. Ignoring.", v74, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v75);
          MEMORY[0x266773120](v75, -1, -1);
          MEMORY[0x266773120](v74, -1, -1);
        }

        else
        {
        }
      }
    }
  }
}

uint64_t specialized Sequence.forEach(_:)(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(result + 16);
  if (v5)
  {
    for (i = (result + 32); ; ++i)
    {
      v10 = *i;
      swift_unknownObjectRetain();
      specialized closure #8 in createGraph(_:nodeDefStore:)(&v10, a2, a3, a4);
      if (v4)
      {
        break;
      }

      result = swift_unknownObjectRelease();
      if (!--v5)
      {
        return result;
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type XMLElementErrors and conformance XMLElementErrors()
{
  result = lazy protocol witness table cache variable for type XMLElementErrors and conformance XMLElementErrors;
  if (!lazy protocol witness table cache variable for type XMLElementErrors and conformance XMLElementErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XMLElementErrors and conformance XMLElementErrors);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MaterialXDataType.Kind.CodingKeys and conformance MaterialXDataType.Kind.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MaterialXDataType.Kind.CodingKeys and conformance MaterialXDataType.Kind.CodingKeys;
  if (!lazy protocol witness table cache variable for type MaterialXDataType.Kind.CodingKeys and conformance MaterialXDataType.Kind.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MaterialXDataType.Kind.CodingKeys and conformance MaterialXDataType.Kind.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MaterialXDataType.Kind.CodingKeys and conformance MaterialXDataType.Kind.CodingKeys;
  if (!lazy protocol witness table cache variable for type MaterialXDataType.Kind.CodingKeys and conformance MaterialXDataType.Kind.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MaterialXDataType.Kind.CodingKeys and conformance MaterialXDataType.Kind.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MaterialXDataType.Kind.CodingKeys and conformance MaterialXDataType.Kind.CodingKeys;
  if (!lazy protocol witness table cache variable for type MaterialXDataType.Kind.CodingKeys and conformance MaterialXDataType.Kind.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MaterialXDataType.Kind.CodingKeys and conformance MaterialXDataType.Kind.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MaterialXDataType.Kind.CodingKeys and conformance MaterialXDataType.Kind.CodingKeys;
  if (!lazy protocol witness table cache variable for type MaterialXDataType.Kind.CodingKeys and conformance MaterialXDataType.Kind.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MaterialXDataType.Kind.CodingKeys and conformance MaterialXDataType.Kind.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MaterialXDataType.Kind.SetCodingKeys and conformance MaterialXDataType.Kind.SetCodingKeys()
{
  result = lazy protocol witness table cache variable for type MaterialXDataType.Kind.SetCodingKeys and conformance MaterialXDataType.Kind.SetCodingKeys;
  if (!lazy protocol witness table cache variable for type MaterialXDataType.Kind.SetCodingKeys and conformance MaterialXDataType.Kind.SetCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MaterialXDataType.Kind.SetCodingKeys and conformance MaterialXDataType.Kind.SetCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MaterialXDataType.Kind.SetCodingKeys and conformance MaterialXDataType.Kind.SetCodingKeys;
  if (!lazy protocol witness table cache variable for type MaterialXDataType.Kind.SetCodingKeys and conformance MaterialXDataType.Kind.SetCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MaterialXDataType.Kind.SetCodingKeys and conformance MaterialXDataType.Kind.SetCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MaterialXDataType.Kind.SetCodingKeys and conformance MaterialXDataType.Kind.SetCodingKeys;
  if (!lazy protocol witness table cache variable for type MaterialXDataType.Kind.SetCodingKeys and conformance MaterialXDataType.Kind.SetCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MaterialXDataType.Kind.SetCodingKeys and conformance MaterialXDataType.Kind.SetCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MaterialXDataType.Kind.SetCodingKeys and conformance MaterialXDataType.Kind.SetCodingKeys;
  if (!lazy protocol witness table cache variable for type MaterialXDataType.Kind.SetCodingKeys and conformance MaterialXDataType.Kind.SetCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MaterialXDataType.Kind.SetCodingKeys and conformance MaterialXDataType.Kind.SetCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MaterialXDataType.Kind.NamedCodingKeys and conformance MaterialXDataType.Kind.NamedCodingKeys()
{
  result = lazy protocol witness table cache variable for type MaterialXDataType.Kind.NamedCodingKeys and conformance MaterialXDataType.Kind.NamedCodingKeys;
  if (!lazy protocol witness table cache variable for type MaterialXDataType.Kind.NamedCodingKeys and conformance MaterialXDataType.Kind.NamedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MaterialXDataType.Kind.NamedCodingKeys and conformance MaterialXDataType.Kind.NamedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MaterialXDataType.Kind.NamedCodingKeys and conformance MaterialXDataType.Kind.NamedCodingKeys;
  if (!lazy protocol witness table cache variable for type MaterialXDataType.Kind.NamedCodingKeys and conformance MaterialXDataType.Kind.NamedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MaterialXDataType.Kind.NamedCodingKeys and conformance MaterialXDataType.Kind.NamedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MaterialXDataType.Kind.NamedCodingKeys and conformance MaterialXDataType.Kind.NamedCodingKeys;
  if (!lazy protocol witness table cache variable for type MaterialXDataType.Kind.NamedCodingKeys and conformance MaterialXDataType.Kind.NamedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MaterialXDataType.Kind.NamedCodingKeys and conformance MaterialXDataType.Kind.NamedCodingKeys);
  }

  return result;
}

void *specialized MaterialXDataType.Kind.init(from:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11ShaderGraph17MaterialXDataTypeC4KindO13SetCodingKeys33_82E50B62BEFBE102264EBACF2BC2855FLLOGMd, &_ss22KeyedDecodingContainerVy11ShaderGraph17MaterialXDataTypeC4KindO13SetCodingKeys33_82E50B62BEFBE102264EBACF2BC2855FLLOGMR);
  v3 = *(v2 - 8);
  v28 = v2;
  v29 = v3;
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11ShaderGraph17MaterialXDataTypeC4KindO15NamedCodingKeys33_82E50B62BEFBE102264EBACF2BC2855FLLOGMd, &_ss22KeyedDecodingContainerVy11ShaderGraph17MaterialXDataTypeC4KindO15NamedCodingKeys33_82E50B62BEFBE102264EBACF2BC2855FLLOGMR);
  v30 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11ShaderGraph17MaterialXDataTypeC4KindO10CodingKeys33_82E50B62BEFBE102264EBACF2BC2855FLLOGMd, &_ss22KeyedDecodingContainerVy11ShaderGraph17MaterialXDataTypeC4KindO10CodingKeys33_82E50B62BEFBE102264EBACF2BC2855FLLOGMR);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - v11;
  v13 = a1[3];
  v32 = a1;
  v14 = __swift_project_boxed_opaque_existential_1(a1, v13);
  lazy protocol witness table accessor for type MaterialXDataType.Kind.CodingKeys and conformance MaterialXDataType.Kind.CodingKeys();
  v15 = v31;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v15)
  {
    v16 = v30;
    v31 = v10;
    v17 = KeyedDecodingContainer.allKeys.getter();
    v18 = (2 * *(v17 + 16)) | 1;
    v33 = v17;
    v34 = v17 + 32;
    v35 = 0;
    v36 = v18;
    v19 = specialized Collection<>.popFirst()();
    if (v19 == 2 || v35 != v36 >> 1)
    {
      v21 = type metadata accessor for DecodingError();
      swift_allocError();
      v23 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
      *v23 = &type metadata for MaterialXDataType.Kind;
      v14 = v12;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v21 - 8) + 104))(v23, *MEMORY[0x277D84160], v21);
      swift_willThrow();
      (*(v31 + 8))(v12, v9);
      swift_unknownObjectRelease();
    }

    else if (v19)
    {
      LOBYTE(v37) = 1;
      lazy protocol witness table accessor for type MaterialXDataType.Kind.SetCodingKeys and conformance MaterialXDataType.Kind.SetCodingKeys();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v20 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], MEMORY[0x277D83808], MEMORY[0x277D83978]);
      v26 = v28;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v29 + 8))(v5, v26);
      (*(v20 + 8))(v12, v9);
      swift_unknownObjectRelease();
      v14 = v37;
    }

    else
    {
      LOBYTE(v37) = 0;
      lazy protocol witness table accessor for type MaterialXDataType.Kind.NamedCodingKeys and conformance MaterialXDataType.Kind.NamedCodingKeys();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v25 = v31;
      (*(v16 + 8))(v8, v6);
      (*(v25 + 8))(v12, v9);
      swift_unknownObjectRelease();
      v14 = 0;
    }
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v32);
  return v14;
}

uint64_t lazy protocol witness table accessor for type [String] and conformance [A](unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MaterialXDataType.Kind(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MaterialXDataType.Kind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTag for MaterialXDataType.Kind(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *destructiveInjectEnumTag for MaterialXDataType.Kind(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for XMLElementErrors(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for XMLElementErrors(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for MaterialXDataType.Kind.SetCodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for MaterialXDataType.Kind.SetCodingKeys(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [String] and conformance <A> [A](unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_265E1A8C8()
{
  outlined consume of SGDataTypeStorage(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));

  return MEMORY[0x2821FE8E8](v0, 96, 15);
}

uint64_t sub_265E1A924()
{

  outlined consume of NodePersonality(*(v0 + 96));

  outlined consume of NodePersonality(*(v0 + 144));

  return MEMORY[0x2821FE8E8](v0, 185, 7);
}

uint64_t outlined init with copy of NodeDef.Implementation(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NodeDef.Implementation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of NodeDef.Implementation(uint64_t a1)
{
  v2 = type metadata accessor for NodeDef.Implementation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of NodeDef.Implementation(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NodeDef.Implementation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s11ShaderGraph14MaterialXErrorOWOi4_(uint64_t a1)
{
  *a1 = 1;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 280) = 0x8000000000000000;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 8) = 0u;
  result = a1 + 8;
  *(result + 256) = 0u;
  return result;
}

unint64_t lazy protocol witness table accessor for type MaterialXError and conformance MaterialXError()
{
  result = lazy protocol witness table cache variable for type MaterialXError and conformance MaterialXError;
  if (!lazy protocol witness table cache variable for type MaterialXError and conformance MaterialXError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MaterialXError and conformance MaterialXError);
  }

  return result;
}

double _s11ShaderGraph7NodeDefVSgWOi0_(uint64_t a1)
{
  *(a1 + 144) = 0;
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
  return result;
}

_BYTE *partial apply for closure #1 in closure #1 in Float.init<A>(_:)@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtof_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void *partial apply for specialized closure #1 in _StringGuts.withCString<A>(_:)@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t SGTypeDescription.offset.getter()
{
  v1 = OBJC_IVAR___SGTypeDescription_offset;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SGTypeDescription.offset.setter(int a1)
{
  v3 = OBJC_IVAR___SGTypeDescription_offset;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

BOOL SGTypeDescription.getMTLTextureType(_:)(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = a2();
  if ((v4 & 1) == 0 && a1)
  {
    *a1 = v3;
  }

  return (v4 & 1) == 0;
}

BOOL @objc SGTypeDescription.getMTLTextureType(_:)(void *a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a1;
  v7 = a4();
  v9 = v8;
  if ((v8 & 1) == 0 && a3)
  {
    *a3 = v7;
  }

  return (v9 & 1) == 0;
}

id SGTypeDescription.__allocating_init(_:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = specialized SGTypeDescription.init(_:)(a1);

  return v4;
}

id SGTypeDescription.init(_:)(uint64_t a1)
{
  v1 = specialized SGTypeDescription.init(_:)(a1);

  return v1;
}

id SGPropertyDescription.__allocating_init(name:type:visible:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = &v9[OBJC_IVAR___SGPropertyDescription_name];
  *v10 = a1;
  v10[1] = a2;
  *&v9[OBJC_IVAR___SGPropertyDescription_type] = a3;
  v9[OBJC_IVAR___SGPropertyDescription_visible] = a4;
  v12.receiver = v9;
  v12.super_class = v4;
  return objc_msgSendSuper2(&v12, sel_init);
}

uint64_t SGTypeDescription.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  outlined init with copy of Any?(a1, v7);
  if (!v8)
  {
    outlined destroy of Any?(v7);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v4 = 0;
    return v4 & 1;
  }

  v3 = v1;
  v4 = static NSObject.== infix(_:_:)();

  return v4 & 1;
}

uint64_t SGTypeDescription.description.getter()
{

  return SGTypeDescription.description.getter(closure #1 in SGTypeDescription.description.getter);
}

uint64_t closure #1 in SGTypeDescription.description.getter@<X0>(uint64_t a2@<X1>, void *a3@<X8>)
{
  _StringGuts.grow(_:)(45);
  MEMORY[0x266771550](0xD000000000000014, 0x8000000265F30650);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSPy11ShaderGraph17SGTypeDescriptionCGMd, &_sSPy11ShaderGraph17SGTypeDescriptionCGMR);
  _print_unlocked<A, B>(_:_:)();
  v5 = MEMORY[0x266771550](0x3D6570797420, 0xE600000000000000);
  v6 = (*(**(a2 + OBJC_IVAR___SGTypeDescription_type) + 136))(v5);
  MEMORY[0x266771550](v6);

  MEMORY[0x266771550](0x747265706F727020, 0xEC0000003D736569);
  v7 = *(a2 + OBJC_IVAR___SGTypeDescription_properties);
  v8 = type metadata accessor for SGPropertyDescription();
  v9 = MEMORY[0x2667717B0](v7, v8);
  MEMORY[0x266771550](v9);

  result = MEMORY[0x266771550](62, 0xE100000000000000);
  *a3 = 0;
  a3[1] = 0xE000000000000000;
  return result;
}

id SGTypeDescription.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t SGPropertyDescription.name.getter()
{
  v1 = *(v0 + OBJC_IVAR___SGPropertyDescription_name);

  return v1;
}

id SGPropertyDescription.init(name:type:visible:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR___SGPropertyDescription_name];
  *v10 = a1;
  v10[1] = a2;
  *&v4[OBJC_IVAR___SGPropertyDescription_type] = a3;
  v4[OBJC_IVAR___SGPropertyDescription_visible] = a4;
  v12.receiver = v4;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_init);
}

id static SGPropertyDescription.create(_:type:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR___SGPropertyDescription_name];
  *v8 = a1;
  v8[1] = a2;
  *&v7[OBJC_IVAR___SGPropertyDescription_type] = a3;
  v7[OBJC_IVAR___SGPropertyDescription_visible] = 1;
  v11.receiver = v7;
  v11.super_class = v3;

  v9 = a3;
  return objc_msgSendSuper2(&v11, sel_init);
}

id @objc SGTypeDescription.description.getter(void *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, void **, id))
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7 = a1;
  v4 = a1;
  a3(v8, &v7, v4);

  v5 = MEMORY[0x266771450](v8[0], v8[1]);

  return v5;
}

uint64_t SGPropertyDescription.description.getter()
{

  return SGTypeDescription.description.getter(closure #1 in SGPropertyDescription.description.getter);
}

uint64_t SGTypeDescription.description.getter(void (*a1)(void *__return_ptr, uint64_t *, uint64_t))
{
  v4[2] = *MEMORY[0x277D85DE8];
  a1(v4, &v3, v1);
  return v4[0];
}

uint64_t closure #1 in SGPropertyDescription.description.getter@<X0>(uint64_t a2@<X1>, void *a3@<X8>)
{
  _StringGuts.grow(_:)(53);
  MEMORY[0x266771550](0xD000000000000017, 0x8000000265F30630);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSPy11ShaderGraph21SGPropertyDescriptionCGMd, &_sSPy11ShaderGraph21SGPropertyDescriptionCGMR);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x266771550](0x3D656D616E20, 0xE600000000000000);
  MEMORY[0x266771550](*(a2 + OBJC_IVAR___SGPropertyDescription_name), *(a2 + OBJC_IVAR___SGPropertyDescription_name + 8));
  MEMORY[0x266771550](0x3D6570797420, 0xE600000000000000);
  v5 = [*(a2 + OBJC_IVAR___SGPropertyDescription_type) description];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  MEMORY[0x266771550](v6, v8);

  MEMORY[0x266771550](0x656C626973697620, 0xE90000000000003DLL);
  if (*(a2 + OBJC_IVAR___SGPropertyDescription_visible))
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (*(a2 + OBJC_IVAR___SGPropertyDescription_visible))
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  MEMORY[0x266771550](v9, v10);

  result = MEMORY[0x266771550](62, 0xE100000000000000);
  *a3 = 0;
  a3[1] = 0xE000000000000000;
  return result;
}

uint64_t static SGPropertyDescription.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v4 = *(a1 + OBJC_IVAR___SGPropertyDescription_name) == *(a2 + OBJC_IVAR___SGPropertyDescription_name) && *(a1 + OBJC_IVAR___SGPropertyDescription_name + 8) == *(a2 + OBJC_IVAR___SGPropertyDescription_name + 8);
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && ((*(**(*(a1 + OBJC_IVAR___SGPropertyDescription_type) + OBJC_IVAR___SGTypeDescription_type) + 128))(*(*(a2 + OBJC_IVAR___SGPropertyDescription_type) + OBJC_IVAR___SGTypeDescription_type)))
  {
    v5 = *(a1 + OBJC_IVAR___SGPropertyDescription_visible) ^ *(a2 + OBJC_IVAR___SGPropertyDescription_visible) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t SGPropertyDescription.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  outlined init with copy of Any?(a1, v8);
  if (!v9)
  {
    outlined destroy of Any?(v8);
    goto LABEL_13;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    v5 = 0;
    return v5 & 1;
  }

  if (v7 == v1)
  {

    v5 = 1;
    return v5 & 1;
  }

  v3 = *&v7[OBJC_IVAR___SGPropertyDescription_name] == *&v1[OBJC_IVAR___SGPropertyDescription_name] && *&v7[OBJC_IVAR___SGPropertyDescription_name + 8] == *&v1[OBJC_IVAR___SGPropertyDescription_name + 8];
  if (!v3 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || ((*(**(*&v7[OBJC_IVAR___SGPropertyDescription_type] + OBJC_IVAR___SGTypeDescription_type) + 128))(*(*&v1[OBJC_IVAR___SGPropertyDescription_type] + OBJC_IVAR___SGTypeDescription_type)) & 1) == 0)
  {

    goto LABEL_13;
  }

  v4 = v7[OBJC_IVAR___SGPropertyDescription_visible];

  v5 = v4 ^ v1[OBJC_IVAR___SGPropertyDescription_visible] ^ 1;
  return v5 & 1;
}

uint64_t @objc SGTypeDescription.isEqual(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = a4(v10);

  outlined destroy of Any?(v10);
  return v8 & 1;
}

id specialized SGTypeDescription.init(_:)(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR___SGTypeDescription_offset] = 0;
  *&v2[OBJC_IVAR___SGTypeDescription_type] = a1;
  v4 = *(*a1 + 232);

  v6 = v4(v5);
  v7 = *(v6 + 16);
  if (v7)
  {
    v23 = v2;
    v29 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray.reserveCapacity(_:)();
    v9 = 0;
    v10 = v6 + 40;
    v24 = v6;
    while (v9 < *(v6 + 16))
    {
      ++v9;
      v11 = *(v10 - 8);
      v12 = *v10;
      v13 = *(v10 + 8);
      v14 = *(v10 + 24);
      v26 = *(v10 + 40);
      v15 = objc_allocWithZone(ObjectType);
      swift_bridgeObjectRetain_n();
      swift_retain_n();

      v16 = specialized SGTypeDescription.init(_:)(v13);

      v17 = type metadata accessor for SGPropertyDescription();
      v18 = objc_allocWithZone(v17);
      v19 = &v18[OBJC_IVAR___SGPropertyDescription_name];
      *v19 = v11;
      v19[1] = v12;
      *&v18[OBJC_IVAR___SGPropertyDescription_type] = v16;
      v18[OBJC_IVAR___SGPropertyDescription_visible] = v14;
      v28.receiver = v18;
      v28.super_class = v17;
      v20 = *(objc_msgSendSuper2(&v28, sel_init) + OBJC_IVAR___SGPropertyDescription_type);
      v21 = OBJC_IVAR___SGTypeDescription_offset;
      swift_beginAccess();
      *(v20 + v21) = v26;
      v6 = v24;

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v10 += 56;
      if (v7 == v9)
      {

        v22 = v29;
        v2 = v23;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {

    v22 = MEMORY[0x277D84F90];
LABEL_7:
    *&v2[OBJC_IVAR___SGTypeDescription_properties] = v22;
    v27.receiver = v2;
    v27.super_class = ObjectType;
    return objc_msgSendSuper2(&v27, sel_init, v23);
  }

  return result;
}

void specialized static MetalDataType.create(_:name:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  p_cb = &OBJC_PROTOCOL___NSCopying.cb;
  if (!(*(**(a1 + OBJC_IVAR___SGTypeDescription_type) + 144))())
  {
    v7 = *(a1 + OBJC_IVAR___SGTypeDescription_properties);
    v8 = v7 >> 62;
    if (v7 >> 62)
    {
      goto LABEL_29;
    }

    for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {
      v38 = MEMORY[0x277D84F90];
      v37 = i;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, i & ~(i >> 63), 0);
      v10 = v37;
      if (v37 < 0)
      {
        __break(1u);
        return;
      }

      v11 = v38;
      v32 = a3;
      v31 = a2;
      v33 = v7 & 0xFFFFFFFFFFFFFF8;
      if (v8)
      {
        v36 = __CocoaSet.count.getter();
        v10 = v37;
      }

      else
      {
        v36 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v13 = 0;
      v34 = v7;
      v35 = v7 & 0xC000000000000001;
      while (1)
      {
        v14 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v13 >= v10 || v13 >= v36)
        {
          goto LABEL_27;
        }

        if (v35)
        {
          v15 = v11;
          v16 = MEMORY[0x266772030](v13, v7);
        }

        else
        {
          if (v13 >= *(v33 + 16))
          {
            goto LABEL_28;
          }

          v15 = v11;
          v16 = *(v7 + 8 * v13 + 32);
        }

        v17 = v16;
        v18 = OBJC_IVAR___SGPropertyDescription_type;
        v19 = *(**(*&v16[OBJC_IVAR___SGPropertyDescription_type] + *(p_cb + 399)) + 144);

        v21 = v19(v20);

        if (!v21)
        {
          v26 = [*&v17[v18] description];
          v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v29 = v28;

          MEMORY[0x266771550](v27, v29);

          lazy protocol witness table accessor for type APIError and conformance APIError();
          swift_allocError();
          *v30 = 0x6F72724565707974;
          *(v30 + 8) = 0xEA00000000002072;
          *(v30 + 16) = 11;
          swift_willThrow();

          return;
        }

        v22 = *&v17[OBJC_IVAR___SGPropertyDescription_name];
        v8 = *&v17[OBJC_IVAR___SGPropertyDescription_name + 8];
        v23 = v17[OBJC_IVAR___SGPropertyDescription_visible];

        v11 = v15;
        v39 = v15;
        a2 = v15[2];
        v24 = v11[3];
        a3 = a2 + 1;
        if (a2 >= v24 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), a2 + 1, 1);
          v11 = v39;
        }

        v11[2] = a3;
        v25 = &v11[6 * a2];
        v25[4] = v22;
        v25[5] = v8;
        v25[6] = v21;
        v25[7] = MEMORY[0x277D84F90];
        *(v25 + 64) = v23;
        v25[9] = v13++;
        v10 = v37;
        p_cb = (&OBJC_PROTOCOL___NSCopying + 64);
        v7 = v34;
        if (v14 == v37)
        {
          a3 = v32;
          a2 = v31;
          v12 = v11;
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      ;
    }

    v12 = MEMORY[0x277D84F90];
LABEL_24:
    type metadata accessor for MetalDataType.Struct();
    swift_allocObject();

    MetalDataType.Struct.init(note:typeName:fields:)(0, 0, a2, a3, v12);
  }
}

uint64_t outlined init with copy of Any?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id specialized static SGTypeDescription.create(_:)(uint64_t a1)
{
  specialized SGDataType.materialXDataType.getter(a1);

  v1 = MaterialXDataType.asMetalDataType.getter();
  if (v1)
  {
    v2 = v1;
    v3 = objc_allocWithZone(type metadata accessor for SGTypeDescription());
    v4 = specialized SGTypeDescription.init(_:)(v2);

    return v4;
  }

  else
  {
    v6 = SGDataType.stringValue.getter();
    MEMORY[0x266771550](v6);

    lazy protocol witness table accessor for type APIError and conformance APIError();
    swift_allocError();
    *v7 = 0x6F72724565707974;
    *(v7 + 8) = 0xEA00000000002072;
    *(v7 + 16) = 11;
    swift_willThrow();
  }
}

uint64_t OrderedDictionary.init(dictionaryLiteral:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = specialized OrderedDictionary.init(dictionaryLiteral:)(a1, a2, a3, a4);

  return v4;
}

uint64_t protocol witness for ExpressibleByDictionaryLiteral.init(dictionaryLiteral:) in conformance OrderedDictionary<A, B>@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = specialized OrderedDictionary.init(dictionaryLiteral:)(a1, a2[2], a2[3], a2[4]);
  v6 = v5;
  v8 = v7;

  *a3 = v4;
  a3[1] = v6;
  a3[2] = v8;
  return result;
}

uint64_t specialized OrderedDictionary.init(dictionaryLiteral:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a1;
  swift_getTupleTypeMetadata2();
  v7 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  return specialized OrderedDictionary.init<A>(uniqueKeysWithValues:)(&v10, a2, a3, v7, a4, WitnessTable);
}

uint64_t static _HashTable.wordCount(forScale:)(uint64_t result)
{
  v1 = (result << result) + 63;
  if (__OFADD__(result << result, 63))
  {
    __break(1u);
  }

  else
  {
    if (v1 < 0)
    {
      v1 = (result << result) + 126;
    }

    return v1 >> 6;
  }

  return result;
}

uint64_t specialized static _HashTable.maximumCapacity(forScale:)(uint64_t result)
{
  if (result < 5)
  {
    return 15;
  }

  v1 = (1 << result) * 0.75;
  if (COERCE__INT64(fabs(v1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v1 < 9.22337204e18)
  {
    return v1;
  }

LABEL_9:
  __break(1u);
  return result;
}

int64_t specialized static _HashTable.scale(forCapacity:)(int64_t result)
{
  if (result < 16)
  {
    return 0;
  }

  v1 = ceil(result / 0.75);
  if (v1 == INFINITY)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v1 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v2 = result + 1;
  if (__OFADD__(result, 1))
  {
LABEL_13:
    __break(1u);
    return result;
  }

  if (v2 <= v1)
  {
    v2 = v1;
  }

  return 64 - __clz(v2 - 1);
}

uint64_t specialized static _HashTable.minimumCapacity(forScale:)(uint64_t result)
{
  if (result < 5)
  {
    return 0;
  }

  v1 = vcvtd_n_f64_s64(1 << result, 2uLL);
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v1 < 9.22337204e18)
  {
    return v1;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t GraphCompiler.replaceTier1TextureGetterNodes(in:surface:geometryModifier:)(_OWORD *a1, uint64_t *a2, unint64_t *a3)
{
  v29 = a3[1];
  v5 = a3 + 2;
  v28 = *a3;
  v6 = a1[1];
  v55[2] = *a1;
  v55[3] = v6;
  v7 = a1[2];
  v8 = a1[3];
  v9 = a1[5];
  v55[6] = a1[4];
  v55[7] = v9;
  v55[4] = v7;
  v55[5] = v8;
  v10 = a1[6];
  v11 = a1[7];
  *(v56 + 9) = *(a1 + 153);
  v12 = a1[9];
  v55[10] = a1[8];
  v56[0] = v12;
  v55[8] = v10;
  v55[9] = v11;
  UserGraph.connectedUpstreamSubgraph(rootedAt:)(a2, &v30);
  v13 = v30;

  if (one-time initialization token for surface_parameters_private != -1)
  {
    swift_once();
  }

  v14 = static MetalDataType.re.surface_parameters_private;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265F1F670;
  *(inited + 32) = 7632239;
  *(inited + 40) = 0xE300000000000000;
  *(inited + 48) = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = 12324;
  *(v16 + 24) = 0xE200000000000000;

  UserGraph.insertNode(inputs:outputs:shaderGraphData:)(MEMORY[0x277D84F90], inited, v16 | 0x6000000000000000, &v31);

  swift_setDeallocating();
  swift_arrayDestroy();
  v57 = v31;
  v44 = v32;
  v45 = *(&v31 + 1);
  outlined init with copy of NodePersonality(&v57, &v30);
  outlined init with copy of [Input](&v45, &v30, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  outlined init with copy of [Input](&v44, &v30, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
  specialized Sequence.forEach(_:)(v13, a1, &v31);
  if (v3)
  {
    outlined destroy of NodePersonality(&v57);
    outlined destroy of [Input](&v45, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined destroy of [Input](&v44, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    outlined destroy of NodePersonality(&v57);
    outlined destroy of [Input](&v45, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    v17 = &v44;
LABEL_5:
    outlined destroy of [Input](v17, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
  }

  outlined destroy of NodePersonality(&v57);
  outlined destroy of [Input](&v45, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  outlined destroy of [Input](&v44, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

  if (v29)
  {
    v35 = v28;
    v36 = v29;
    *v37 = *v5;
    *&v37[9] = *(v5 + 9);
    v19 = a1[9];
    v54 = a1[8];
    v55[0] = v19;
    *(v55 + 9) = *(a1 + 153);
    v20 = a1[5];
    v50 = a1[4];
    v51 = v20;
    v21 = a1[7];
    v52 = a1[6];
    v53 = v21;
    v22 = a1[1];
    v46 = *a1;
    v47 = v22;
    v23 = a1[3];
    v48 = a1[2];
    v49 = v23;
    outlined copy of NodePersonality(v28);

    UserGraph.connectedUpstreamSubgraph(rootedAt:)(&v35, &v30);
    v24 = v30;

    if (one-time initialization token for geometry_parameters_private != -1)
    {
      swift_once();
    }

    v25 = static MetalDataType.re.geometry_parameters_private;
    v26 = swift_initStackObject();
    *(v26 + 16) = xmmword_265F1F670;
    *(v26 + 32) = 7632239;
    *(v26 + 40) = 0xE300000000000000;
    *(v26 + 48) = v25;
    v27 = swift_allocObject();
    *(v27 + 16) = 12324;
    *(v27 + 24) = 0xE200000000000000;

    UserGraph.insertNode(inputs:outputs:shaderGraphData:)(MEMORY[0x277D84F90], v26, v27 | 0x6000000000000000, &v33);

    swift_setDeallocating();
    swift_arrayDestroy();
    v42 = *(&v33 + 1);
    v43 = v33;
    v41 = v34;
    outlined init with copy of NodePersonality(&v43, &v30);
    outlined init with copy of [Input](&v42, &v30, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined init with copy of [Input](&v41, &v30, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    specialized Sequence.forEach(_:)(v24, a1, &v33);
    outlined destroy of NodePersonality(&v43);
    outlined destroy of [Input](&v42, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined destroy of [Input](&v41, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    outlined destroy of NodePersonality(&v57);
    outlined destroy of [Input](&v45, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined destroy of [Input](&v44, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    v38 = v35;
    outlined destroy of NodePersonality(&v38);
    v39 = v36;
    outlined destroy of [Input](&v39, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    v40 = *v37;
    outlined destroy of [Input](&v40, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    outlined destroy of NodePersonality(&v43);
    outlined destroy of [Input](&v42, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    v17 = &v41;
    goto LABEL_5;
  }

  outlined destroy of NodePersonality(&v57);
  outlined destroy of [Input](&v45, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  return outlined destroy of [Input](&v44, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
}

uint64_t closure #1 in GraphCompiler.replaceTier1TextureGetterNodes(in:surface:geometryModifier:)(uint64_t result, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t a8)
{
  v9 = *result;
  if (*result >> 61 == 4)
  {
    v10 = *(result + 8);
    if (*(v10 + 16))
    {
      v107 = v8;
      v66 = *(result + 24);
      v67 = *(result + 16);
      v64 = v9;
      v65 = v10;
      v15 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v16 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      type metadata accessor for MetalDataType();
      result = swift_dynamicCastClass();
      if (result)
      {
        swift_retain_n();

        DataType.subscript.getter(v15, v16, &v70);

        if (!v71)
        {
LABEL_8:
        }

        v60 = v71;
        v17 = v70;
        v18 = v72;
        MetalDataType.MTLTextureType.getter();
        if (v19)
        {
          v97[0] = v17;
          v97[1] = v60;
          outlined destroy of String(v97);

          v98 = v18;
          v20 = &v98;
LABEL_7:
          outlined destroy of [Input](v20, &_sSaySSGMd, &_sSaySSGMR);
          goto LABEL_8;
        }

        v57 = v17;
        v58 = v18;
        specialized ShaderGraphNode.output(labeled:)(&v73, 7632239, 0xE300000000000000, v67);
        v21 = v74;
        if (!v74)
        {
          MEMORY[0x266771550](7632239, 0xE300000000000000);
          MEMORY[0x266771550](32, 0xE100000000000000);
          _print_unlocked<A, B>(_:_:)();
          lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
          swift_allocError();
          *v40 = 14;
          *(v40 + 8) = 0;
          *(v40 + 16) = 0xE000000000000000;
          swift_willThrow();
          v87[0] = v17;
          v87[1] = v60;
          outlined destroy of String(v87);

          v88 = v18;
          v41 = &v88;
          goto LABEL_30;
        }

        v99 = v75;
        outlined destroy of String(&v99);
        type metadata accessor for MetalDataType.Struct();
        v22 = swift_dynamicCastClass();
        if (!v22)
        {
          lazy protocol witness table accessor for type GraphCompilerErrors and conformance GraphCompilerErrors();
          swift_allocError();
          *v42 = 0xD000000000000030;
          *(v42 + 8) = 0x8000000265F307D0;
          *(v42 + 16) = 2;
          swift_willThrow();

          v89[0] = v17;
          v89[1] = v60;
          outlined destroy of String(v89);

          v90 = v18;
          v41 = &v90;
          goto LABEL_30;
        }

        v56 = v22;
        lazy protocol witness table accessor for type String and conformance String();

        StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v23 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v25 = v24;

        v68 = *(v56 + 24);

        MEMORY[0x266771550](95, 0xE100000000000000);
        v26 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x266771550](v26);

        MEMORY[0x266771550](95, 0xE100000000000000);
        MEMORY[0x266771550](v23, v25);

        MEMORY[0x266771550](a4, a5);

        v27 = swift_allocObject();
        *(v27 + 16) = v68;
        v59 = v27;
        *(v27 + 32) = v21;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph9InputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph9InputSpecVGMR);
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_265F1F670;
        v29 = *a6;

        if (v29 != -1)
        {
          swift_once();
        }

        v30 = *a7;
        *(v28 + 32) = 28265;
        *(v28 + 40) = 0xE200000000000000;
        *(v28 + 48) = v30;
        v31 = *(v67 + 16);
        if (v31)
        {
          v61 = v28;
          v69 = MEMORY[0x277D84F90];

          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31, 0);
          v32 = v69;
          v33 = (v67 + 56);
          do
          {
            v34 = *(v33 - 2);
            v35 = *(v33 - 1);
            v36 = *v33;
            v38 = *(v69 + 16);
            v37 = *(v69 + 24);

            if (v38 >= v37 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1);
            }

            *(v69 + 16) = v38 + 1;
            v39 = (v69 + 24 * v38);
            v39[4] = v35;
            v39[5] = v36;
            v39[6] = v34;
            v33 += 7;
            --v31;
          }

          while (v31);
          v28 = v61;
        }

        else
        {

          v32 = MEMORY[0x277D84F90];
        }

        UserGraph.insertNode(inputs:outputs:shaderGraphData:)(v28, v32, v59 | 0x2000000000000000, &v76);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();

        v43 = *(&v76 + 1);
        outlined copy of NodePersonality(v64);

        v44 = v43;
        v45 = v107;
        specialized Sequence.forEach(_:)(v43, v65, a2);
        outlined consume of NodePersonality(v64);

        v46 = v77;
        outlined copy of NodePersonality(v64);

        specialized Sequence.forEach(_:)(v46, v67, a2);
        v107 = v45;
        outlined consume of NodePersonality(v64);

        specialized UserGraph.removeEdges(connectedTo:)(v66);
        v47 = *(a2 + 64);
        result = swift_isUniquelyReferenced_nonNull_native();
        *(a2 + 64) = v47;
        if (result)
        {
          if ((v66 & 0x8000000000000000) == 0)
          {
            goto LABEL_25;
          }
        }

        else
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v47);
          v47 = result;
          *(a2 + 64) = result;
          if ((v66 & 0x8000000000000000) == 0)
          {
LABEL_25:
            if (v66 < *(v47 + 16))
            {
              ShaderGraphNode.update(id:)(-7);
              if (v44[2])
              {
                v48 = v44[5];
                v49 = v44[6];
                v50 = v44[7];
                v51 = v44[8];
                v52 = *(v44 + 72);
                v53 = v44[10];
                v104[0] = v44[4];
                v104[1] = v48;
                v104[2] = v49;
                v104[3] = v50;
                v104[4] = v51;
                v105 = v52;
                v106 = v53;
                specialized ShaderGraphNode.output(labeled:)(&v78, 7632239, 0xE300000000000000, *(a3 + 2));
                if (v79)
                {
                  v83[0] = v78;
                  v83[1] = v79;
                  v84 = v80;
                  v85 = v81;
                  v86 = v82;

                  UserGraph.connect(_:to:)(v83, v104);

                  v100 = v84;
                  outlined destroy of String(&v100);

                  v102 = v76;
                  outlined destroy of NodePersonality(&v102);

                  v93[0] = v57;
                  v93[1] = v60;
                  outlined destroy of String(v93);

                  v94 = v58;
                  v20 = &v94;
                  goto LABEL_7;
                }

                MEMORY[0x266771550](7632239, 0xE300000000000000);
                MEMORY[0x266771550](32, 0xE100000000000000);
                _print_unlocked<A, B>(_:_:)();
                lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
                swift_allocError();
                *v55 = 14;
                *(v55 + 8) = 0;
                *(v55 + 16) = 0xE000000000000000;
                swift_willThrow();

                v103 = v76;
                outlined destroy of NodePersonality(&v103);

                v95[0] = v57;
                v95[1] = v60;
                outlined destroy of String(v95);

                v96 = v58;
                v41 = &v96;
              }

              else
              {
                lazy protocol witness table accessor for type GraphCompilerErrors and conformance GraphCompilerErrors();
                swift_allocError();
                *v54 = 0xD000000000000016;
                *(v54 + 8) = 0x8000000265F30810;
                *(v54 + 16) = 2;
                swift_willThrow();
                v101 = v76;
                outlined destroy of NodePersonality(&v101);

                v91[0] = v57;
                v91[1] = v60;
                outlined destroy of String(v91);

                v92 = v58;
                v41 = &v92;
              }

LABEL_30:
              outlined destroy of [Input](v41, &_sSaySSGMd, &_sSaySSGMR);
            }

LABEL_34:
            __break(1u);
            return result;
          }
        }

        __break(1u);
        goto LABEL_34;
      }
    }
  }

  return result;
}

void MetalStitchingBackend.generateFallbackTier1Getters(for:augmenting:library:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v127 = *MEMORY[0x277D85DE8];
  type metadata accessor for MetalDataType.Struct();
  v6 = swift_dynamicCastClass();
  if (!v6)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v84 = type metadata accessor for Logger();
    __swift_project_value_buffer(v84, logger);

    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v123[0] = v88;
      *v87 = 136315138;
      *(v87 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(a1 + 24), *(a1 + 32), v123);
      _os_log_impl(&dword_265D7D000, v85, v86, "Can not generate getters for a non-struct type %s", v87, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v88);
      MEMORY[0x266773120](v88, -1, -1);
      MEMORY[0x266773120](v87, -1, -1);
    }

    return;
  }

  v7 = v6;
  swift_beginAccess();

  v9 = calculateOffsets(for:)(v8);

  v10 = v9[2];
  if (!v10)
  {
LABEL_37:

    return;
  }

  v111 = v7;
  v106 = 0;
  v107 = 0;
  v11 = 0;
  v109 = v9[2];
  v110 = v9;
  v108 = v10 - 1;
LABEL_4:
  v12 = 56 * v11;
  while (1)
  {
    if (v11 >= v9[2])
    {
      __break(1u);
LABEL_51:

      lazy protocol witness table accessor for type MetalStitchingBackendErrors and conformance MetalStitchingBackendErrors();
      swift_allocError();
      *v97 = xmmword_265F22B90;
      *(v97 + 16) = 6;
      swift_willThrow();

      goto LABEL_46;
    }

    v115 = v12;
    v13 = (v9 + v12);
    v14 = *(v9 + v12 + 80);
    v15 = *(v9 + v12 + 72);
    v16 = *(v9 + v12 + 64);
    v17 = v13[6];
    v18 = v13[7];
    v19 = v13[4];
    v20 = v13[5];
    v123[0] = v11;
    v123[1] = v19;
    v123[2] = v20;
    v123[3] = v17;
    v123[4] = v18;
    v124 = v16;
    v125 = v15;
    v126 = v14;

    outlined init with copy of [Input](v123, &v121, &_sSi6offset_11ShaderGraph16DataTypePropertyV_s6UInt32Vt7elementtMd, &_sSi6offset_11ShaderGraph16DataTypePropertyV_s6UInt32Vt7elementtMR);
    v120 = v17;
    v21 = MetalDataType.MTLTextureType.getter();
    v119 = v4;
    v118 = v11 + 1;
    if ((v22 & 1) == 0)
    {
      v47 = *(v17 + 32);
      v121 = *(v17 + 24);
      v122 = v47;
      v116 = v21;
      v48 = lazy protocol witness table accessor for type String and conformance String();
      v49 = MEMORY[0x277D837D0];
      v121 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v122 = v50;
      v101 = v48;
      v103 = v48;
      v99 = v48;
      v51 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v53 = v52;

      v54 = *(v111 + 32);
      v121 = *(v111 + 24);
      v122 = v54;

      MEMORY[0x266771550](95, 0xE100000000000000);
      v55 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v55);

      MEMORY[0x266771550](95, 0xE100000000000000);
      MEMORY[0x266771550](v51, v53);

      v56 = v121;
      v57 = v122;
      if (v116 > 4)
      {
        if (v116 == 5)
        {
          if (v106 == -1)
          {
            goto LABEL_55;
          }

          v105 = 0xD00000000000002ALL;
          v117 = v106;
          v58 = "ial";
          LODWORD(v106) = v106 + 1;
        }

        else
        {
          if (v116 != 7)
          {
            goto LABEL_51;
          }

          if (v107 == -1)
          {
            goto LABEL_54;
          }

          v56 = v121;
          v105 = 0xD000000000000028;
          v117 = v107;
          v58 = "tureSlot_texture2darray_float";
          LODWORD(v107) = v107 + 1;
        }
      }

      else if (v116 == 2)
      {
        if (HIDWORD(v107) == -1)
        {
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
        }

        v105 = 0xD000000000000028;
        v117 = HIDWORD(v107);
        v58 = "tureSlot_texture3d_float";
        ++HIDWORD(v107);
      }

      else
      {
        if (v116 != 3)
        {
          goto LABEL_51;
        }

        if (HIDWORD(v106) == -1)
        {
          goto LABEL_53;
        }

        v56 = v121;
        v105 = 0xD00000000000002DLL;
        v117 = HIDWORD(v106);
        v58 = "tureSlot_texturecube_float";
        ++HIDWORD(v106);
      }

      v59 = v58 | 0x8000000000000000;
      v60 = [objc_allocWithZone(MEMORY[0x277CD6D78]) init];
      v104 = v56;
      v121 = v56;
      v122 = v57;
      v114 = v57;

      MEMORY[0x266771550](0x656361667275735FLL, 0xE800000000000000);
      v62 = v121;
      v61 = v122;
      v63 = MEMORY[0x266771450](v121, v122);
      [v60 setSpecializedName_];

      v64 = [objc_allocWithZone(MEMORY[0x277CD6D70]) init];
      [v60 setConstantValues_];

      v121 = v105;
      v122 = v59;

      MEMORY[0x266771550](0x656361667275735FLL, 0xE800000000000000);

      v65 = MEMORY[0x266771450](v121, v122);

      [v60 setName_];

      LODWORD(v121) = v117;
      v66 = [v60 constantValues];
      if (v66)
      {
        v67 = v66;
        [v66 setConstantValue:&v121 type:33 atIndex:100];
      }

      v121 = 0;
      v68 = [a3 newFunctionWithDescriptor:v60 error:&v121];
      v69 = v121;
      if (!v68)
      {
        v95 = v121;

        _convertNSErrorToError(_:)();

        swift_willThrow();

        goto LABEL_47;
      }

      v70 = v68;
      swift_unknownObjectRetain();
      v71 = v69;
      specialized OrderedDictionary.subscript.setter(v70, v62, v61);
      v72 = [objc_allocWithZone(MEMORY[0x277CD6D78]) init];
      v121 = v104;
      v122 = v114;

      MEMORY[0x266771550](0x7274656D6F65675FLL, 0xE900000000000079);

      v74 = v121;
      v73 = v122;
      v75 = MEMORY[0x266771450](v121, v122);
      [v72 setSpecializedName_];

      v76 = [objc_allocWithZone(MEMORY[0x277CD6D70]) init];
      [v72 setConstantValues_];

      v121 = v105;
      v122 = v59;

      MEMORY[0x266771550](0x7274656D6F65675FLL, 0xE900000000000079);

      v77 = MEMORY[0x266771450](v121, v122);

      [v72 setName_];

      LODWORD(v121) = v117;
      v78 = [v72 constantValues];
      if (v78)
      {
        v79 = v78;
        [v78 setConstantValue:&v121 type:33 atIndex:100];
      }

      v121 = 0;
      v80 = [a3 newFunctionWithDescriptor:v72 error:&v121];
      v81 = v121;
      if (!v80)
      {
        v96 = v81;

        _convertNSErrorToError(_:)();

        swift_willThrow();

        swift_unknownObjectRelease();
        goto LABEL_47;
      }

      v82 = swift_unknownObjectRetain();
      specialized OrderedDictionary.subscript.setter(v82, v74, v73);

      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      outlined destroy of [Input](v123, &_sSi6offset_11ShaderGraph16DataTypePropertyV_s6UInt32Vt7elementtMd, &_sSi6offset_11ShaderGraph16DataTypePropertyV_s6UInt32Vt7elementtMR);
      v83 = v108 == v11++;
      v4 = v119;
      v9 = v110;
      if (v83)
      {
        goto LABEL_37;
      }

      goto LABEL_4;
    }

    if (one-time initialization token for typeToLookupFunctionMap != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v23 = static MetalStitchingBackend.typeToLookupFunctionMap;
    if (!*(static MetalStitchingBackend.typeToLookupFunctionMap + 16) || (v24 = specialized __RawDictionaryStorage.find<A>(_:)(v120), (v25 & 1) == 0))
    {
      swift_endAccess();
      v89 = *(v111 + 32);
      v121 = *(v111 + 24);
      v122 = v89;

      MEMORY[0x266771550](46, 0xE100000000000000);
      MEMORY[0x266771550](v19, v20);
      v90 = MEMORY[0x266771550](10272, 0xE200000000000000);
      v91 = (*(*v120 + 136))(v90);
      MEMORY[0x266771550](v91);

      MEMORY[0x266771550](41, 0xE100000000000000);
      v92 = v121;
      v93 = v122;
      lazy protocol witness table accessor for type MetalStitchingBackendErrors and conformance MetalStitchingBackendErrors();
      swift_allocError();
      *v94 = v92;
      *(v94 + 8) = v93;
      *(v94 + 16) = 4;
      swift_willThrow();

      goto LABEL_45;
    }

    v26 = (*(v23 + 56) + 16 * v24);
    v27 = v26[1];
    v113 = *v26;
    swift_endAccess();
    v28 = v120[4];
    v121 = v120[3];
    v122 = v28;
    v29 = lazy protocol witness table accessor for type String and conformance String();

    v30 = MEMORY[0x277D837D0];
    v121 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v122 = v31;
    v100 = v29;
    v102 = v29;
    v98 = v29;
    v32 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v34 = v33;

    v35 = *(v111 + 32);
    v121 = *(v111 + 24);
    v122 = v35;

    MEMORY[0x266771550](95, 0xE100000000000000);
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266771550](v36);

    MEMORY[0x266771550](95, 0xE100000000000000);
    MEMORY[0x266771550](v32, v34);

    v37 = v121;
    v38 = v122;
    v39 = [objc_allocWithZone(MEMORY[0x277CD6D78]) init];
    v40 = MEMORY[0x266771450](v37, v38);
    [v39 setSpecializedName_];

    v41 = [objc_allocWithZone(MEMORY[0x277CD6D70]) init];
    [v39 setConstantValues_];

    v42 = MEMORY[0x266771450](v113, v27);

    [v39 setName_];

    LODWORD(v121) = v14;
    v43 = [v39 constantValues];
    if (v43)
    {
      v44 = v43;
      [v43 setConstantValue:&v121 type:33 atIndex:100];
    }

    v45 = MetalStitchingBackend.makeFunction(_:descriptor:)(a3, v39);
    v4 = v119;
    v9 = v110;
    if (v119)
    {
      break;
    }

    v46 = v45;

    specialized OrderedDictionary.subscript.setter(v46, v37, v38);

    outlined destroy of [Input](v123, &_sSi6offset_11ShaderGraph16DataTypePropertyV_s6UInt32Vt7elementtMd, &_sSi6offset_11ShaderGraph16DataTypePropertyV_s6UInt32Vt7elementtMR);
    v12 = v115 + 56;
    v11 = v118;
    if (v109 == v118)
    {
      goto LABEL_37;
    }
  }

LABEL_45:

LABEL_46:

LABEL_47:
  outlined destroy of [Input](v123, &_sSi6offset_11ShaderGraph16DataTypePropertyV_s6UInt32Vt7elementtMd, &_sSi6offset_11ShaderGraph16DataTypePropertyV_s6UInt32Vt7elementtMR);
}

uint64_t sub_265E1EF14()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t specialized Sequence.forEach(_:)(uint64_t result, uint64_t a2, __int128 *a3)
{
  v4 = *(result + 16);
  if (v4)
  {
    for (i = (result + 40); ; i += 6)
    {
      v9 = *(i - 1);
      v8 = *i;
      v10 = i[1];
      v11 = *(i + 32);
      v12[0] = v9;
      v12[1] = v8;
      v12[2] = v10;
      v13 = *(i + 1);
      v14 = v11;
      outlined copy of NodePersonality(v9);

      closure #1 in GraphCompiler.replaceTier1TextureGetterNodes(in:surface:geometryModifier:)(v12, a2, a3, 0x656361667275735FLL, 0xE800000000000000, &one-time initialization token for surface_parameters_private, &static MetalDataType.re.surface_parameters_private, one-time initialization function for surface_parameters_private);
      if (v3)
      {
        break;
      }

      outlined consume of NodePersonality(v9);

      if (!--v4)
      {
        return result;
      }
    }

    outlined consume of NodePersonality(v9);
  }

  return result;
}

{
  v4 = *(result + 16);
  if (v4)
  {
    for (i = (result + 40); ; i += 6)
    {
      v9 = *(i - 1);
      v8 = *i;
      v10 = i[1];
      v11 = *(i + 32);
      v12[0] = v9;
      v12[1] = v8;
      v12[2] = v10;
      v13 = *(i + 1);
      v14 = v11;
      outlined copy of NodePersonality(v9);

      closure #1 in GraphCompiler.replaceTier1TextureGetterNodes(in:surface:geometryModifier:)(v12, a2, a3, 0x7274656D6F65675FLL, 0xE900000000000079, &one-time initialization token for geometry_parameters_private, &static MetalDataType.re.geometry_parameters_private, one-time initialization function for geometry_parameters_private);
      if (v3)
      {
        break;
      }

      outlined consume of NodePersonality(v9);

      if (!--v4)
      {
        return result;
      }
    }

    outlined consume of NodePersonality(v9);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MetalStitchingBackendErrors and conformance MetalStitchingBackendErrors()
{
  result = lazy protocol witness table cache variable for type MetalStitchingBackendErrors and conformance MetalStitchingBackendErrors;
  if (!lazy protocol witness table cache variable for type MetalStitchingBackendErrors and conformance MetalStitchingBackendErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetalStitchingBackendErrors and conformance MetalStitchingBackendErrors);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GraphCompilerErrors and conformance GraphCompilerErrors()
{
  result = lazy protocol witness table cache variable for type GraphCompilerErrors and conformance GraphCompilerErrors;
  if (!lazy protocol witness table cache variable for type GraphCompilerErrors and conformance GraphCompilerErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GraphCompilerErrors and conformance GraphCompilerErrors);
  }

  return result;
}

uint64_t sub_265E1F248()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t OrderedSet._UnstableInternals.base.getter(uint64_t a1)
{

  return a1;
}

uint64_t OrderedSet._UnstableInternals.base.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t OrderedSet.__unstable.getter(uint64_t a1)
{

  return a1;
}

uint64_t key path getter for OrderedSet.__unstable : <A>OrderedSet<A>@<X0>(void *a1@<X8>)
{
  OrderedSet._UnstableInternals.init(_:)();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t key path setter for OrderedSet.__unstable : <A>OrderedSet<A>(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  v6 = *a1;
  v7 = a1[1];
  OrderedSet._UnstableInternals.init(_:)();

  v8 = OrderedSet.init()(v5);
  v10 = v9;

  *a2 = v8;
  a2[1] = v10;
  v12[0] = v6;
  v12[1] = v7;
  $defer #1 <A>() in OrderedSet.__unstable.modify(a2, v12);
}

void (*OrderedSet.__unstable.modify(uint64_t *a1, uint64_t a2))(uint64_t **a1)
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
  *(v5 + 16) = v2;
  v7 = *v2;
  v8 = v2[1];
  v9 = *(a2 + 16);
  v6[3] = v9;
  v6[4] = *(a2 + 24);
  *v6 = v7;
  v6[1] = v8;
  *v2 = OrderedSet.init()(v9);
  v2[1] = v10;
  return OrderedSet.__unstable.modify;
}

void OrderedSet.__unstable.modify(uint64_t **a1)
{
  v1 = *a1;
  $defer #1 <A>() in OrderedSet.__unstable.modify((*a1)[2], *a1);

  free(v1);
}

uint64_t $defer #1 <A>() in OrderedSet.__unstable.modify(uint64_t *a1, uint64_t *a2)
{
  v2 = a2[1];
  *a1 = *a2;
  a1[1] = v2;
}

uint64_t OrderedSet.__unstable.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OrderedSet.init()(*(a3 + 16));
  v8 = v7;

  *v3 = v6;
  v3[1] = v8;
  v10[0] = a1;
  v10[1] = a2;
  $defer #1 <A>() in OrderedSet.__unstable.modify(v3, v10);
}

__n128 sub_265E1F68C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t type metadata instantiation function for OrderedSet._UnstableInternals(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

Swift::Void __swiftcall OrderedDictionary.removeAll(keepingCapacity:)(Swift::Bool keepingCapacity)
{
  type metadata accessor for OrderedSet(0, *(v1 + 16), *(v1 + 32), v2);
  OrderedSet.removeAll(keepingCapacity:)(keepingCapacity);
  type metadata accessor for ContiguousArray();
  ContiguousArray.removeAll(keepingCapacity:)(keepingCapacity);
}

uint64_t OrderedDictionary.remove(at:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = type metadata accessor for OrderedSet(0, a4[2], a4[4], a4);
  OrderedSet.remove(at:)(a3, v5);
  type metadata accessor for ContiguousArray();
  return ContiguousArray.remove(at:)();
}

uint64_t OrderedDictionary.removeSubrange(_:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = type metadata accessor for OrderedSet(0, a3[2], a3[4], a4);
  OrderedSet.removeSubrange(_:)(a1, a2, v6);
  type metadata accessor for ContiguousArray();
  swift_getWitnessTable();
  return RangeReplaceableCollection.removeSubrange(_:)();
}

uint64_t OrderedDictionary.removeSubrange<A>(_:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for OrderedDictionary.Elements(0, a2[2], a2[3], a2[4]);
  swift_getWitnessTable();
  dispatch thunk of RangeExpression.relative<A>(to:)();
  return OrderedDictionary.removeSubrange(_:)(v7, v8, a2, v5);
}

uint64_t OrderedDictionary.removeLast()(uint64_t a1, uint64_t a2, void *a3)
{
  type metadata accessor for ContiguousArray();
  swift_getWitnessTable();
  result = Collection.isEmpty.getter();
  if (result)
  {
    __break(1u);
  }

  else
  {
    result = ContiguousArray.count.getter();
    if (!__OFSUB__(result, 1))
    {
      return OrderedDictionary.remove(at:)(a1, a2, result - 1, a3);
    }
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall OrderedDictionary.removeLast(_:)(Swift::Int a1)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = v1;
    if (ContiguousArray.count.getter() >= a1)
    {
      type metadata accessor for OrderedSet(0, *(v2 + 16), *(v2 + 32), v4);
      OrderedSet.removeLast(_:)(a1);
      type metadata accessor for ContiguousArray();
      swift_getWitnessTable();
      swift_getWitnessTable();
      RangeReplaceableCollection<>.removeLast(_:)();
      return;
    }
  }

  __break(1u);
}

uint64_t OrderedDictionary.removeFirst()(uint64_t a1, uint64_t a2, void *a3)
{
  type metadata accessor for ContiguousArray();
  swift_getWitnessTable();
  result = Collection.isEmpty.getter();
  if ((result & 1) == 0)
  {
    return OrderedDictionary.remove(at:)(a1, a2, 0, a3);
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall OrderedDictionary.removeFirst(_:)(Swift::Int a1)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = v1;
    if (ContiguousArray.count.getter() >= a1)
    {
      type metadata accessor for OrderedSet(0, *(v2 + 16), *(v2 + 32), v4);
      OrderedSet.removeFirst(_:)(a1);
      type metadata accessor for ContiguousArray();
      swift_getWitnessTable();
      RangeReplaceableCollection.removeFirst(_:)(a1);
      return;
    }
  }

  __break(1u);
}

void OrderedDictionary.removeAll(where:)(uint64_t (*a1)(char *, char *), uint64_t a2, void *a3)
{
  v8 = a3[3];
  type metadata accessor for ContiguousArray();
  ContiguousArray._makeMutableAndUnique()();
  v9 = *(v3 + 16);
  v10 = *(v9 + 16);
  v11 = v9 + ((*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80));
  v15[0] = v11;
  v15[1] = v10;
  closure #1 in OrderedDictionary.removeAll(where:)(v15, a1, a2, a3[2], v8, a3[4], &v14, &v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  _ss15ContiguousArrayV30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysAERd_0_r_0_lF(v15, v11, v10, v3 + 16, v8);
  if (!v4)
  {
    v15[0] = v16;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16PartialRangeFromVySiGMd, &_ss16PartialRangeFromVySiGMR);
    v13 = lazy protocol witness table accessor for type PartialRangeFrom<Int> and conformance PartialRangeFrom<A>();
    OrderedDictionary.removeSubrange<A>(_:)(v15, a3, v12, v13);
  }
}

Swift::Void __swiftcall OrderedDictionary.reserveCapacity(_:)(Swift::Int a1)
{
  type metadata accessor for OrderedSet(0, *(v1 + 16), *(v1 + 32), v2);
  OrderedSet.reserveCapacity(_:)(a1);
  type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(a1);
}

void closure #1 in OrderedDictionary.removeAll(where:)(uint64_t *a1@<X0>, uint64_t (*a2)(char *, char *)@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, void *a7@<X7>, uint64_t *a8@<X8>)
{
  v14 = *a1;
  v15 = a1[1];
  v16 = type metadata accessor for OrderedSet(0, a4, a6, a3);
  OrderedSet._halfStablePartition<A>(values:by:)(v14, v15, a2, a3, v16, a5);
  if (v8)
  {
    *a7 = v8;
  }

  else
  {
    *a8 = v17;
  }
}

unint64_t lazy protocol witness table accessor for type PartialRangeFrom<Int> and conformance PartialRangeFrom<A>()
{
  result = lazy protocol witness table cache variable for type PartialRangeFrom<Int> and conformance PartialRangeFrom<A>;
  if (!lazy protocol witness table cache variable for type PartialRangeFrom<Int> and conformance PartialRangeFrom<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss16PartialRangeFromVySiGMd, &_ss16PartialRangeFromVySiGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PartialRangeFrom<Int> and conformance PartialRangeFrom<A>);
  }

  return result;
}

uint64_t specialized Sequence.compactMap<A>(_:)(uint64_t result, _OWORD *a2)
{
  v2 = *(result + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = 0;
  v5 = result + 72;
  v6 = MEMORY[0x277D84F90];
  v35 = result + 72;
  do
  {
    v36 = v6;
    for (i = (v5 + 48 * v4); ; i += 48)
    {
      if (v4 >= v2)
      {
        __break(1u);
LABEL_20:
        __break(1u);
        return result;
      }

      if (__OFADD__(v4, 1))
      {
        goto LABEL_20;
      }

      v59 = v4 + 1;
      v8 = *(i - 5);
      v9 = *(i - 4);
      v37 = *i;
      v11 = *(i - 2);
      v10 = *(i - 1);
      v12 = *(i - 3);
      v13 = a2[9];
      v57[8] = a2[8];
      v58[0] = v13;
      *(v58 + 9) = *(a2 + 153);
      v14 = a2[5];
      v57[4] = a2[4];
      v57[5] = v14;
      v15 = a2[7];
      v57[6] = a2[6];
      v57[7] = v15;
      v16 = a2[1];
      v57[0] = *a2;
      v57[1] = v16;
      v17 = a2[3];
      v57[2] = a2[2];
      v57[3] = v17;
      v18 = v12;
      specialized ShaderGraphNode.output(labeled:)(&v47, 7632239, 0xE300000000000000, v12);
      if (!v48)
      {
        v38 = 0;
        v39 = 0xE000000000000000;
        outlined copy of NodePersonality(v8);

        outlined init with copy of UserGraph(v57, &v40);
        MEMORY[0x266771550](7632239, 0xE300000000000000);
        MEMORY[0x266771550](32, 0xE100000000000000);
        *&v40 = v8;
        *(&v40 + 1) = v9;
        *&v41 = v18;
        *(&v41 + 1) = v11;
        *&v42 = v10;
        BYTE8(v42) = v37;
        _print_unlocked<A, B>(_:_:)();
        v32 = v38;
        v33 = v39;
        lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
        swift_allocError();
        *v34 = 14;
        *(v34 + 8) = v32;
        *(v34 + 16) = v33;
        swift_willThrow();
        outlined destroy of UserGraph(v57);
        outlined consume of NodePersonality(v8);
        v6 = v36;

        return v6;
      }

      v19 = v2;
      v52[0] = v47;
      v52[1] = v48;
      v53 = v49;
      v54 = v50;
      v55 = v51;
      outlined copy of NodePersonality(v8);

      outlined init with copy of UserGraph(v57, &v40);
      v20 = UserGraph.edges(from:)(v52);

      v56 = v53;
      outlined destroy of String(&v56);
      outlined destroy of UserGraph(v57);
      if (*(v20 + 16))
      {
        break;
      }

      outlined consume of NodePersonality(v8);

      ++v4;
      v2 = v19;
      if (v59 == v19)
      {
        return v36;
      }
    }

    v21 = *(v20 + 96);
    v43 = *(v20 + 80);
    v44 = v21;
    v22 = *(v20 + 128);
    v45 = *(v20 + 112);
    v46 = v22;
    v23 = *(v20 + 48);
    v40 = *(v20 + 32);
    v41 = v23;
    v42 = *(v20 + 64);
    outlined init with copy of Edge(&v40, &v38);

    outlined consume of NodePersonality(v8);

    v6 = v36;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v36 + 16) + 1, 1, v36);
      v6 = result;
    }

    v25 = *(v6 + 16);
    v24 = *(v6 + 24);
    if (v25 >= v24 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v6);
      v6 = result;
    }

    *(v6 + 16) = v25 + 1;
    v26 = (v6 + 112 * v25);
    v27 = v40;
    v28 = v42;
    v26[3] = v41;
    v26[4] = v28;
    v26[2] = v27;
    v29 = v43;
    v30 = v44;
    v31 = v46;
    v26[7] = v45;
    v26[8] = v31;
    v26[5] = v29;
    v26[6] = v30;
    v2 = v19;
    v4 = v59;
    v5 = v35;
  }

  while (v59 != v19);
  return v6;
}

uint64_t specialized Sequence.forEach(_:)(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v4 = *(result + 16);
  if (v4)
  {
    for (i = result + 40; ; i += 48)
    {
      v9 = *(i - 8);
      v8 = *i;
      v10 = *(i + 8);
      v11 = *(i + 32);
      v12[0] = v9;
      v12[1] = v8;
      v12[2] = v10;
      v13 = *(i + 16);
      v14 = v11;
      outlined copy of NodePersonality(v9);

      closure #1 in GraphCompiler.extract(node:from:withName:)(v12, a2, a3);
      if (v3)
      {
        break;
      }

      outlined consume of NodePersonality(v9);

      if (!--v4)
      {
        return result;
      }
    }

    outlined consume of NodePersonality(v9);
  }

  return result;
}

{
  v53 = *(result + 16);
  if (v53)
  {
    v4 = 0;
    v27 = result + 32;
    v5 = a2 + 56;
    do
    {
      v6 = v27 + 56 * v4;
      v8 = *v6;
      v7 = *(v6 + 8);
      v9 = *(v6 + 16);
      v10 = *(v6 + 24);
      v11 = *(v6 + 48);
      v12 = *(v6 + 40);
      v13 = *(v6 + 32);
      *&v49 = v8;
      *(&v49 + 1) = v7;
      *&v50 = v9;
      *(&v50 + 1) = v10;
      *&v51 = v13;
      BYTE8(v51) = v12;
      v52 = v11;
      if (*(a2 + 16))
      {
        Hasher.init(_seed:)();

        String.hash(into:)();
        v14 = Hasher._finalize()();
        v15 = -1 << *(a2 + 32);
        v16 = v14 & ~v15;
        if ((*(v5 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
        {
          v17 = ~v15;
          while (1)
          {
            v18 = (*(a2 + 48) + 16 * v16);
            v19 = *v18 == v9 && v18[1] == v10;
            if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v16 = (v16 + 1) & v17;
            if (((*(v5 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
            {
              goto LABEL_3;
            }
          }

          specialized OrderedDictionary.subscript.getter(v8, *a3, a3[1], a3[2], &v29);
          v20 = v30;
          if (v30)
          {
            v22 = v33;
            v21 = v34;
            v23 = v32;
            v24 = v29;
            v25 = v31;
            specialized OrderedDictionary.subscript.getter(&v49, v32, v33, v34, &v35);
            outlined consume of UserGraph.Adjacent?(v24, v20, v25, v23, v22, v21);
            if (v36 > 1)
            {
              v42 = v37;
              v43 = v38;
              v44 = v39;
              v40 = v37;
              v45 = v49;
              v46 = v50;
              v47 = v51;
              v48 = v52;
              v41[0] = v35;
              v41[1] = v36;

              outlined init with copy of [Input](&v35, v28, &_s11ShaderGraph6OutputVSgSgMd, &_s11ShaderGraph6OutputVSgSgMR);

              outlined init with copy of String(&v40, v28);
              UserGraph.remove(_:)(v41);
              outlined destroy of Edge(v41);

              outlined destroy of String(&v40);
              outlined destroy of [Input](&v35, &_s11ShaderGraph6OutputVSgSgMd, &_s11ShaderGraph6OutputVSgSgMR);
            }
          }
        }

LABEL_3:
      }

      ++v4;
    }

    while (v4 != v53);
  }

  return result;
}

uint64_t specialized Sequence.forEach(_:)(void *a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a1;
  v7 = a1[2];
  v39 = a1[1];
  v40 = v6;
  v8 = a1[4];
  v37 = a1[3];
  v38 = v7;
  v36 = v8;
  v9 = *(a1 + 1);
  v32 = *a1;
  v33 = v9;
  v34 = v8;
  outlined init with copy of [Input](&v40, &v25, &_s11ShaderGraph10_HashTableV7StorageCSgMd, &_s11ShaderGraph10_HashTableV7StorageCSgMR);
  outlined init with copy of [Input](&v39, &v25, &_ss15ContiguousArrayVy11ShaderGraph0cD4NodeV2IDVGMd, &_ss15ContiguousArrayVy11ShaderGraph0cD4NodeV2IDVGMR);
  outlined init with copy of [Input](&v38, &v25, &_ss15ContiguousArrayVy11ShaderGraph04UserD0V8AdjacentVGMd, &_ss15ContiguousArrayVy11ShaderGraph04UserD0V8AdjacentVGMR);
  outlined init with copy of [Input](&v37, &v25, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  outlined init with copy of [Input](&v36, &v25, &_sShy11ShaderGraph5InputVGMd, &_sShy11ShaderGraph5InputVGMR);
  while (1)
  {
    UserGraph.DepthFirstEdgeIterator.next()(v35);
    v29 = v35[4];
    v30 = v35[5];
    v31 = v35[6];
    v25 = v35[0];
    v26 = v35[1];
    v27 = v35[2];
    v28 = v35[3];
    if (!*(&v35[0] + 1))
    {
      break;
    }

    v22 = v29;
    v23 = v30;
    v24 = v31;
    v18 = v25;
    v19 = v26;
    v20 = v27;
    v21 = v28;
    closure #2 in GraphCompiler.extract(node:from:withName:)(&v18, a2, a3);
    if (v3)
    {
      v15 = v22;
      v16 = v23;
      v17 = v24;
      v11 = v18;
      v12 = v19;
      v13 = v20;
      v14 = v21;
      outlined destroy of Edge(&v11);
      break;
    }

    v15 = v22;
    v16 = v23;
    v17 = v24;
    v11 = v18;
    v12 = v19;
    v13 = v20;
    v14 = v21;
    outlined destroy of Edge(&v11);
  }
}

uint64_t GraphCompiler.init(material:)@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(a2, __src, 0x148uLL);
  type metadata accessor for GraphCompiler(0);
  return OSSignposter.init(subsystem:category:)();
}

uint64_t type metadata accessor for GraphCompiler(uint64_t a1)
{
  result = type metadata singleton initialization cache for GraphCompiler;
  if (!type metadata singleton initialization cache for GraphCompiler)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void GraphCompiler.compile(for:options:)(void *a1, uint64_t a2)
{
  v345 = a2;
  v406 = *MEMORY[0x277D85DE8];
  v350 = type metadata accessor for OSSignposter();
  *&v334 = *(v350 - 8);
  v357 = v334;
  MEMORY[0x28223BE20](v350);
  v335 = &v319 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSSignpostError();
  v347 = *(v5 - 8);
  v348 = v5;
  MEMORY[0x28223BE20](v5);
  v346 = &v319 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v330 = &v319 - v8;
  MEMORY[0x28223BE20](v9);
  v332 = &v319 - v10;
  MEMORY[0x28223BE20](v11);
  *(&v334 + 1) = &v319 - v12;
  MEMORY[0x28223BE20](v13);
  v339 = &v319 - v14;
  v15 = type metadata accessor for MetalStitchingBackend(0);
  MEMORY[0x28223BE20](v15);
  v356 = (&v319 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for OSSignpostID();
  v363 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v354 = &v319 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v331 = &v319 - v20;
  MEMORY[0x28223BE20](v21);
  v336 = &v319 - v22;
  MEMORY[0x28223BE20](v23);
  v340 = (&v319 - v24);
  MEMORY[0x28223BE20](v25);
  v341 = &v319 - v26;
  MEMORY[0x28223BE20](v27);
  v353 = (&v319 - v28);
  MEMORY[0x28223BE20](v29);
  v31 = &v319 - v30;
  v32 = *(v2 + 320);
  v359 = *(v2 + 312);
  v364 = v32;
  v33 = *(type metadata accessor for GraphCompiler(0) + 20);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v351 = a1;
  v349 = [a1 registryID];
  v361 = v33;
  v358 = v2;
  v34 = v17;
  v35 = OSSignposter.logHandle.getter();
  v36 = static os_signpost_type_t.begin.getter();
  v37 = OS_os_log.signpostsEnabled.getter();
  v352 = v17;
  if (v37)
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    v39 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_265D7D000, v35, v36, v39, "compile", "", v38, 2u);
    v40 = v38;
    v34 = v352;
    MEMORY[0x266773120](v40, -1, -1);
  }

  v362 = v31;
  v42 = v363 + 16;
  v41 = *(v363 + 16);
  v41(v353, v31, v34);
  v342 = type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v360 = OSSignpostIntervalState.init(id:isOpen:)();
  v43 = *v358;
  v44 = *(v358 + 8);
  v45 = v356;
  v46 = *(v357 + 16);
  v47 = v356 + *(v15 + 24);
  v357 += 16;
  v333 = v46;
  v46(v47, &v361[v358], v350);
  v48 = *(v15 + 28);
  v49 = v362;
  v343 = v41;
  v344 = v42;
  v41((v45 + v48), v362, v34);
  v337 = v44;
  v338 = v43;
  *v45 = v43;
  v45[1] = v44;
  v50 = v364;
  v45[2] = v359;
  v45[3] = v50;
  v51 = one-time initialization token for builtInLibraryCache;

  if (v51 != -1)
  {
    v52 = swift_once();
  }

  v53 = static GraphCompiler.builtInLibraryCache;
  MEMORY[0x28223BE20](v52);
  v54 = v358;
  *(&v319 - 4) = v349;
  *(&v319 - 3) = v54;
  v55 = v351;
  *(&v319 - 2) = v49;
  *(&v319 - 1) = v55;
  os_unfair_lock_lock((v53 + 40));
  v56 = v355;
  partial apply for closure #1 in GraphCompiler.compile(for:options:)((v53 + 16), v386);
  v355 = v56;
  if (v56)
  {
    os_unfair_lock_unlock((v53 + 40));
    outlined destroy of MetalStitchingBackend(v356);
  }

  else
  {
    v57 = &v376;
    os_unfair_lock_unlock((v53 + 40));
    v329 = *&v386[0];
    v395 = 0;
    v396 = MEMORY[0x277D84F90];
    v397 = MEMORY[0x277D84F90];
    v58 = OSSignposter.logHandle.getter();
    v59 = static os_signpost_type_t.begin.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      v61 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_265D7D000, v58, v59, v61, "graphTransforms", "", v60, 2u);
      v62 = v60;
      v34 = v352;
      MEMORY[0x266773120](v62, -1, -1);
    }

    v343(v353, v362, v34);
    swift_allocObject();
    v63 = OSSignpostIntervalState.init(id:isOpen:)();
    v64 = *(v54 + 240);
    v65 = *(v54 + 208);
    v392 = *(v54 + 224);
    v393 = v64;
    v66 = *(v54 + 240);
    v394[0] = *(v54 + 256);
    *(v394 + 9) = *(v54 + 265);
    v67 = *(v54 + 160);
    v68 = *(v54 + 192);
    v389 = *(v54 + 176);
    v390 = v68;
    v69 = *(v54 + 192);
    v391 = *(v54 + 208);
    v70 = *(v54 + 128);
    v386[0] = *(v54 + 112);
    v386[1] = v70;
    v71 = *(v54 + 160);
    v73 = *(v54 + 112);
    v72 = *(v54 + 128);
    v387 = *(v54 + 144);
    v388 = v71;
    v383 = v392;
    v384 = v66;
    v385[0] = *(v54 + 256);
    *(v385 + 9) = *(v54 + 265);
    v380 = v389;
    v381 = v69;
    v382 = v65;
    v376 = v73;
    v377 = v72;
    v378 = v387;
    v379 = v67;
    v74 = *(v345 + OBJC_IVAR___SGREMaterialCompilationOptions_workingColorSpace);
    outlined init with copy of UserGraph(v386, v367);
    v75 = v355;
    GraphCompiler.convertColorConstants(to:in:)(v74, &v376);
    v76 = v341;
    if (v75)
    {
      v355 = v75;
      outlined destroy of MetalStitchingBackend(v356);

      swift_unknownObjectRelease();
      v373 = v383;
      v374 = v384;
      v375[0] = v385[0];
      *(v375 + 9) = *(v385 + 9);
      v77 = v378;
      v369 = v379;
      v370 = v380;
      v371 = v381;
      v372 = v382;
    }

    else
    {
      v328 = v63;
      UserGraph.replaceCreateSamplerNodes()();
      if (v78)
      {
        v355 = v78;
        outlined destroy of MetalStitchingBackend(v356);

        swift_unknownObjectRelease();
      }

      else
      {
        GraphCompiler.extractSamplerNodes(in:into:device:)(&v376, &v395, v351);
        UserGraph.replaceWellKnownConstants()();
        v355 = v79;
        if (!v79)
        {
          if ([v351 argumentBuffersSupport] && (*(v345 + OBJC_IVAR___SGREMaterialCompilationOptions_forceEnableTier1FallbackSupport) & 1) == 0)
          {
            if (one-time initialization token for tier1SupportOverrideEnabled != -1)
            {
              swift_once();
            }

            swift_beginAccess();
            if (static DebugConfig.tier1SupportOverrideEnabled != 1)
            {
              goto LABEL_20;
            }
          }

          v80 = *(v54 + 32);
          v402 = *(v54 + 16);
          v403[0] = v80;
          *(v403 + 9) = *(v54 + 41);
          v81 = *(v54 + 80);
          v404 = *(v54 + 64);
          v405[0] = v81;
          *(v405 + 9) = *(v54 + 89);
          v82 = v355;
          GraphCompiler.replaceTier1TextureGetterNodes(in:surface:geometryModifier:)(&v376, &v402, &v404);
          v355 = v82;
          if (!v82)
          {
LABEL_20:
            v83 = v355;
            GraphCompiler.replaceGettersWithFunctionCalls(in:)(&v376);
            v355 = v83;
            if (!v83)
            {
              v117 = v380;
              v118 = *(v380 + 16);

              if (v118)
              {
                v119 = 0;
                while (v119 < v118)
                {
                  v120 = v117 + 32 + 48 * v119;
                  v121 = *(v120 + 24);
                  v123 = __OFADD__(v119++, 1);
                  if (v121 == -7)
                  {
                    if (v123)
                    {
LABEL_160:
                      __break(1u);
LABEL_161:
                      __break(1u);
                      goto LABEL_162;
                    }

                    if (v119 >= v118)
                    {
                      goto LABEL_48;
                    }
                  }

                  else
                  {
                    if (v123)
                    {
                      goto LABEL_161;
                    }

                    v124 = *(v120 + 40);
                    v125 = *(v120 + 32);
                    *&v367[0] = *v120;
                    *(v367 + 8) = *(v120 + 8);
                    *(&v367[1] + 1) = v121;
                    *&v368 = v125;
                    BYTE8(v368) = v124;
                    v126 = v355;
                    closure #1 in GraphCompiler.replaceMetalFunctionsWithStitchedNodes(in:)(v367, &v376);
                    v355 = v126;
                    if (v119 >= v118)
                    {
                      goto LABEL_48;
                    }
                  }
                }

                __break(1u);
LABEL_157:

                swift_unknownObjectRelease();

                v312 = v331;
              }

              else
              {
LABEL_48:

                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph0dE4NodeVSgGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph0dE4NodeVSgGMR);
                v127 = swift_allocObject();
                v128 = *(v54 + 16);
                v129 = *(v54 + 24);
                *(v127 + 32) = v128;
                v326 = v127 + 32;
                v327 = v129;
                v130 = *(v54 + 32);
                v131 = *(v54 + 56);
                *(v127 + 40) = v129;
                *(v127 + 48) = v130;
                *(v127 + 56) = *(v54 + 40);
                *(v127 + 72) = v131;
                v133 = *(v54 + 64);
                v132 = *(v54 + 72);
                v134 = *(v54 + 80);
                v324 = *(v54 + 88);
                v135 = v324;
                v325 = v134;
                v323 = *(v54 + 96);
                v136 = v323;
                *(v127 + 80) = v133;
                *(v127 + 88) = v132;
                *(v127 + 96) = v134;
                *(v127 + 104) = v135;
                *(v127 + 112) = v136;
                v118 = *(v54 + 104);
                *(v127 + 120) = v118;
                outlined copy of NodePersonality(v128);

                outlined copy of ShaderGraphNode?(v133, v132, v325);
                v137 = 0;
                v138 = v127 + 16;
                v327 = MEMORY[0x277D84F90];
LABEL_49:
                v139 = v138 + 48 * v137;
                while (++v137 != 3)
                {
                  v140 = v139 + 48;
                  v118 = *(v139 + 24);
                  v139 += 48;
                  if (v118)
                  {
                    v325 = v138;
                    v141 = *(v140 - 32);
                    LODWORD(v323) = *(v140 + 8);
                    v142 = *v140;
                    v321 = *(v140 - 8);
                    v322 = v141;
                    v143 = *(v140 - 16);
                    outlined copy of NodePersonality(v141);

                    v320 = v143;

                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    v324 = v142;
                    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                    {
                      v327 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v327 + 2) + 1, 1, v327);
                    }

                    v146 = *(v327 + 2);
                    v145 = *(v327 + 3);
                    v138 = v325;
                    if (v146 >= v145 >> 1)
                    {
                      v149 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v145 > 1), v146 + 1, 1, v327);
                      v138 = v325;
                      v327 = v149;
                    }

                    v147 = v327;
                    *(v327 + 2) = v146 + 1;
                    v148 = &v147[48 * v146];
                    *(v148 + 4) = v322;
                    *(v148 + 5) = v118;
                    *(v148 + 6) = v320;
                    *(v148 + 7) = v321;
                    *(v148 + 8) = v324;
                    v148[72] = v323 & 1;
                    goto LABEL_49;
                  }
                }

                swift_setDeallocating();
                __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph0aB4NodeVSgMd, &_s11ShaderGraph0aB4NodeVSgMR);
                swift_arrayDestroy();
                swift_deallocClassInstance();
                v150 = v355;
                v151 = specialized Sequence.compactMap<A>(_:)(v327, &v376);
                v355 = v150;
                if (v150)
                {
                  outlined destroy of MetalStitchingBackend(v356);

                  swift_unknownObjectRelease();

                  v373 = v383;
                  v374 = v384;
                  v375[0] = v385[0];
                  *(v375 + 9) = *(v385 + 9);
                  v369 = v379;
                  v370 = v380;
                  v371 = v381;
                  v372 = v382;
                  v367[0] = v376;
                  v367[1] = v377;
                  v368 = v378;
                  outlined destroy of UserGraph(v367);
                  v34 = v352;
                  goto LABEL_24;
                }

                v152 = v151;

                v153 = 0;
                v154 = MEMORY[0x277D84F90];
                v34 = *(v152 + 16);
                v155 = 88;
                while (1)
                {
                  v156 = v155 + 112 * v153;
                  do
                  {
                    if (v34 == v153)
                    {

                      UserGraph.removeUnconnectedNodesAndEdges(roots:)(v154);

                      v168 = OSSignposter.logHandle.getter();
                      OSSignpostIntervalState.signpostID.getter();
                      LODWORD(v326) = static os_signpost_type_t.end.getter();

                      v169 = OS_os_log.signpostsEnabled.getter();
                      v327 = v154;
                      if (v169)
                      {

                        v170 = v339;
                        checkForErrorAndConsumeState(state:)();

                        v172 = v347;
                        v171 = v348;
                        if ((*(v347 + 88))(v170, v348) == *MEMORY[0x277D85B00])
                        {
                          v173 = 0;
                          v174 = 0;
                          v175 = "[Error] Interval already ended";
                        }

                        else
                        {
                          (*(v172 + 8))(v170, v171);
                          v175 = "%s";
                          v174 = 2;
                          v173 = 1;
                        }

                        v177 = swift_slowAlloc();
                        v178 = swift_slowAlloc();
                        *&v367[0] = v178;
                        *v177 = v174;
                        *(v177 + 1) = v173;
                        *(v177 + 2) = 2080;
                        *(v177 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v359, v364, v367);
                        v179 = OSSignpostID.rawValue.getter();
                        _os_signpost_emit_with_name_impl(&dword_265D7D000, v168, v326, v179, "graphTransforms", v175, v177, 0xCu);
                        __swift_destroy_boxed_opaque_existential_1Tm(v178);
                        MEMORY[0x266773120](v178, -1, -1);
                        MEMORY[0x266773120](v177, -1, -1);

                        v176 = *(v363 + 8);
                        v34 = v352;
                        (v176)(v76, v352);
                      }

                      else
                      {

                        v176 = *(v363 + 8);
                        v34 = v352;
                        (v176)(v76, v352);
                      }

                      v57 = &v376;
                      if (one-time initialization token for debugMode != -1)
                      {
LABEL_172:
                        swift_once();
                      }

                      swift_beginAccess();
                      v180 = static DebugConfig.debugMode;

                      v181 = specialized Set.contains(_:)(3, v180);

                      if (v181)
                      {
                        v182 = v57[8];
                        v183 = v57[9];
                        v184 = v57[6];
                        v400[7] = v57[7];
                        v400[8] = v182;
                        v401[0] = v183;
                        *(v401 + 9) = *(v57 + 153);
                        v185 = v57[5];
                        v400[4] = v57[4];
                        v400[5] = v185;
                        v400[6] = v184;
                        v186 = v57[1];
                        v400[0] = *v57;
                        v400[1] = v186;
                        v187 = v57[3];
                        v400[2] = v57[2];
                        v400[3] = v187;
                        v188 = v355;
                        createDotText(representing:)(v400);
                        v355 = v188;
                        if (v188)
                        {
                          outlined destroy of MetalStitchingBackend(v356);

                          swift_unknownObjectRelease();

                          v191 = v57[8];
                          v192 = v57[9];
                          v193 = v57[6];
                          v373 = v57[7];
                          v374 = v191;
                          v375[0] = v192;
                          *(v375 + 9) = *(v57 + 153);
                          v194 = v57[4];
                          v195 = v57[5];
                          v77 = v57[2];
                          v369 = v57[3];
                          v370 = v194;
                          v371 = v195;
                          v372 = v193;
                          goto LABEL_23;
                        }

                        v196 = v190;
                        *&v367[0] = 0;
                        *(&v367[0] + 1) = 0xE000000000000000;
                        v197 = v189;
                        _StringGuts.grow(_:)(25);
                        v198 = v337;

                        *&v367[0] = v338;
                        *(&v367[0] + 1) = v198;
                        MEMORY[0x266771550](95, 0xE100000000000000);
                        MEMORY[0x266771550](v359, v364);
                        MEMORY[0x266771550](0xD000000000000014, 0x8000000265F30890);
                        specialized static FileLogger.saveDebugTextSource(_:name:extension:)(v197, v196, *&v367[0], *(&v367[0] + 1), 7630692, 0xE300000000000000);
                      }

                      v199 = OSSignposter.logHandle.getter();
                      v200 = static os_signpost_type_t.begin.getter();
                      if (OS_os_log.signpostsEnabled.getter())
                      {
                        v201 = swift_slowAlloc();
                        *v201 = 0;
                        v202 = OSSignpostID.rawValue.getter();
                        _os_signpost_emit_with_name_impl(&dword_265D7D000, v199, v200, v202, "functionGraph", "", v201, 2u);
                        v203 = v201;
                        v34 = v352;
                        MEMORY[0x266773120](v203, -1, -1);
                      }

                      v343(v353, v362, v34);
                      swift_allocObject();
                      v204 = OSSignpostIntervalState.init(id:isOpen:)();
                      v205 = v57[8];
                      v206 = v57[9];
                      v207 = v57[6];
                      v398[7] = v57[7];
                      v398[8] = v205;
                      v399[0] = v206;
                      *(v399 + 9) = *(v57 + 153);
                      v208 = v57[5];
                      v398[4] = v57[4];
                      v398[5] = v208;
                      v398[6] = v207;
                      v209 = v57[1];
                      v398[0] = *v57;
                      v398[1] = v209;
                      v210 = v57[3];
                      v398[2] = v57[2];
                      v398[3] = v210;
                      v211 = v355;
                      v212 = GraphCompiler.functionGraph(for:)(v398);
                      v355 = v211;
                      if (v211)
                      {
                        outlined destroy of MetalStitchingBackend(v356);

                        swift_unknownObjectRelease();

                        v213 = v57[8];
                        v214 = v57[9];
                        v215 = v57[6];
                        v373 = v57[7];
                        v374 = v213;
                        v375[0] = v214;
                        *(v375 + 9) = *(v57 + 153);
                        v216 = v57[4];
                        v217 = v57[5];
                        v77 = v57[2];
                        v369 = v57[3];
                        v370 = v216;
                        v371 = v217;
                        v372 = v215;
                        goto LABEL_23;
                      }

                      v341 = v212;

                      v218 = OSSignposter.logHandle.getter();
                      OSSignpostIntervalState.signpostID.getter();
                      v219 = static os_signpost_type_t.end.getter();

                      v220 = OS_os_log.signpostsEnabled.getter();
                      v339 = v176;
                      v326 = v204;
                      if (v220)
                      {

                        v221 = *(&v334 + 1);
                        checkForErrorAndConsumeState(state:)();

                        if ((*(v347 + 88))(v221, v348) == *MEMORY[0x277D85B00])
                        {
                          v222 = 0;
                          v223 = 0;
                          v224 = "[Error] Interval already ended";
                        }

                        else
                        {
                          (*(v347 + 8))(*(&v334 + 1), v348);
                          v224 = "%s";
                          v223 = 2;
                          v222 = 1;
                        }

                        v225 = swift_slowAlloc();
                        v226 = swift_slowAlloc();
                        *&v367[0] = v226;
                        *v225 = v223;
                        *(v225 + 1) = v222;
                        *(v225 + 2) = 2080;
                        *(v225 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v359, v364, v367);
                        v227 = v340;
                        v228 = OSSignpostID.rawValue.getter();
                        _os_signpost_emit_with_name_impl(&dword_265D7D000, v218, v219, v228, "functionGraph", v224, v225, 0xCu);
                        __swift_destroy_boxed_opaque_existential_1Tm(v226);
                        MEMORY[0x266773120](v226, -1, -1);
                        MEMORY[0x266773120](v225, -1, -1);

                        (v339)(v227, v352);
                      }

                      else
                      {

                        (v176)(v340, v34);
                      }

                      v229 = static DebugConfig.debugMode;

                      v230 = specialized Set.contains(_:)(3, v229);

                      if (v230 & 1) != 0 || (v231 = static DebugConfig.debugMode, , v232 = specialized Set.contains(_:)(6, v231), , (v232))
                      {
                        v233 = v355;
                        v234 = createDotText(representing:inputNodeIDs:outputNodeIDs:)(v341, MEMORY[0x277D84F90], MEMORY[0x277D84F90]);
                        v355 = v233;
                        if (v233)
                        {
                          outlined destroy of MetalStitchingBackend(v356);

                          swift_unknownObjectRelease();

LABEL_152:
                          v373 = v383;
                          v374 = v384;
                          v375[0] = v385[0];
                          *(v375 + 9) = *(v385 + 9);
                          v369 = v379;
                          v370 = v380;
                          v371 = v381;
                          v372 = v382;
                          v367[0] = v376;
                          v367[1] = v377;
                          v368 = v378;
                          outlined destroy of UserGraph(v367);
                          v34 = v352;
                          goto LABEL_24;
                        }

                        v236 = v234;
                        v237 = v235;
                        *&v367[0] = 0;
                        *(&v367[0] + 1) = 0xE000000000000000;
                        _StringGuts.grow(_:)(23);
                        v238 = v337;

                        *&v367[0] = v338;
                        *(&v367[0] + 1) = v238;
                        MEMORY[0x266771550](95, 0xE100000000000000);
                        MEMORY[0x266771550](v359, v364);
                        MEMORY[0x266771550](0xD000000000000012, 0x8000000265F30870);
                        specialized static FileLogger.saveDebugTextSource(_:name:extension:)(v236, v237, *&v367[0], *(&v367[0] + 1), 7630692, 0xE300000000000000);
                      }

                      v239 = OSSignposter.logHandle.getter();
                      v240 = static os_signpost_type_t.begin.getter();
                      if (OS_os_log.signpostsEnabled.getter())
                      {
                        v241 = swift_slowAlloc();
                        *v241 = 0;
                        v242 = OSSignpostID.rawValue.getter();
                        _os_signpost_emit_with_name_impl(&dword_265D7D000, v239, v240, v242, "samplerCacheCompile", "", v241, 2u);
                        MEMORY[0x266773120](v241, -1, -1);
                      }

                      v57 = v353;
                      v343(v353, v362, v352);
                      swift_allocObject();
                      v343 = OSSignpostIntervalState.init(id:isOpen:)();
                      v365 = 0;
                      v366 = 0xE000000000000000;
                      v243 = v396;
                      v34 = v397;
                      v244 = *(v397 + 16);
                      *(&v334 + 1) = 0x8000000265F30830;
                      v340 = (v334 + 8);

                      v176 = 0;
                      *&v334 = 0xD00000000000002FLL;
                      v353 = MEMORY[0x277D84F90];
                      v344 = v243;
                      v325 = v244;
LABEL_101:
                      if (v176 <= v244)
                      {
                        v245 = v244;
                      }

                      else
                      {
                        v245 = v176;
                      }

                      v246 = 16 * v176;
                      v247 = v34;
                      v248 = v243;
                      while (v245 != v176)
                      {
                        if (v176 >= *(v243 + 16))
                        {
                          __break(1u);
LABEL_169:
                          __break(1u);
                          goto LABEL_170;
                        }

                        if (v176 >= *(v34 + 16))
                        {
                          goto LABEL_169;
                        }

                        v248 += 16;
                        v249 = v247 + 16;
                        ++v176;
                        v250 = *(v247 + v246 + 40);
                        v247 += 16;
                        if ((v250 & 1) == 0)
                        {
                          v251 = *(v248 + v246 + 24);
                          v321 = *(v248 + v246 + 16);
                          v252 = *(v249 + v246 + 16);
                          type metadata accessor for MetalShaderCompiler();
                          v253 = swift_allocObject();
                          *(v253 + 16) = v252;
                          type metadata accessor for MetalShaderCompiler.Scope();
                          v254 = swift_allocObject();
                          outlined copy of MetalLibrary(v252, 0);
                          v255 = MEMORY[0x277D84F90];
                          v254[2] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11ShaderGraph14FunctionNodeIDV_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
                          v254[3] = 0;
                          swift_weakInit();
                          v254[5] = v255;
                          outlined copy of MetalLibrary(v252, 0);
                          v324 = v252;
                          outlined copy of MetalLibrary(v252, 0);
                          v323 = v251;

                          v254[6] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11ShaderGraph13MetalDataTypeCTt0g5Tf4g_n(v255);
                          v254[7] = v255;
                          v254[8] = v255;
                          v254[9] = v255;
                          v254[10] = v255;
                          swift_beginAccess();
                          swift_weakAssign();
                          *(v253 + 24) = v254;
                          v322 = v253;
                          v256 = MetalShaderCompiler.compile()();
                          v355 = v257;
                          if (v257)
                          {

                            outlined consume of MetalLibrary(v324, 0);
                          }

                          else
                          {
                            v367[0] = v334;
                            MEMORY[0x266771550]();
                            v342 = *(&v367[0] + 1);
                            v258 = *&v367[0];
                            v259 = static DebugConfig.debugMode;

                            v260 = specialized Set.contains(_:)(4, v259);

                            if (v260)
                            {
                              MEMORY[0x266771550](v256._countAndFlagsBits, v256._object);

                              MEMORY[0x266771550](2570, 0xE200000000000000);
                            }

                            else
                            {
                            }

                            v261 = [objc_allocWithZone(MEMORY[0x277CD6D08]) init];
                            v333(v335, &v361[v358], v350);
                            v262 = swift_slowAlloc();
                            *v262 = 0;
                            v263 = OSSignposter.logHandle.getter();
                            v264 = static os_signpost_type_t.begin.getter();
                            v265 = OSSignpostID.rawValue.getter();
                            _os_signpost_emit_with_name_impl(&dword_265D7D000, v263, v264, v265, "waitingOnMetal", "makeFunction_n", v262, 2u);
                            v266 = MEMORY[0x266771450](v258, v342);
                            *&v367[0] = 0;
                            v267 = v261;
                            v268 = [v351 newLibraryWithSource:v266 options:v261 error:v367];

                            v320 = v268;
                            if (v268)
                            {
                              v269 = *&v367[0];
                              v270 = static os_signpost_type_t.end.getter();
                              v271 = OSSignpostID.rawValue.getter();
                              _os_signpost_emit_with_name_impl(&dword_265D7D000, v263, v270, v271, "waitingOnMetal", "makeFunction_n", v262, 2u);

                              MEMORY[0x266773120](v262, -1, -1);

                              v272 = v324;
                              outlined consume of MetalLibrary(v324, 0);

                              (*v340)(v335, v350);
                              outlined consume of MetalLibrary(v272, 0);
                              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                              {
                                v353 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v353 + 2) + 1, 1, v353);
                              }

                              v57 = *(v353 + 2);
                              v273 = *(v353 + 3);
                              if (v57 >= v273 >> 1)
                              {
                                v353 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v273 > 1), v57 + 1, 1, v353);
                              }

                              v274 = v353;
                              *(v353 + 2) = v57 + 1;
                              v275 = v274 + 3 * v57;
                              v276 = v323;
                              v275[4] = v321;
                              v275[5] = v276;
                              v275[6] = v320;
                              v243 = v344;
                              v244 = v325;
                              goto LABEL_101;
                            }

                            v317 = *&v367[0];
                            v318 = _convertNSErrorToError(_:)();

                            v355 = v318;
                            swift_willThrow();

                            outlined consume of MetalLibrary(v324, 0);

                            (*v340)(v335, v350);
                          }

                          swift_unknownObjectRelease();

                          outlined consume of MetalLibrary(v324, 0);
                          outlined destroy of MetalStitchingBackend(v356);

                          goto LABEL_151;
                        }
                      }

                      v277 = static DebugConfig.debugMode;

                      v278 = specialized Set.contains(_:)(4, v277);

                      if (v278)
                      {
                        v279 = v365;
                        v280 = v366;
                        v281 = HIBYTE(v366) & 0xF;
                        if ((v366 & 0x2000000000000000) == 0)
                        {
                          v281 = v365 & 0xFFFFFFFFFFFFLL;
                        }

                        if (v281)
                        {
                          *&v367[0] = 0;
                          *(&v367[0] + 1) = 0xE000000000000000;
                          _StringGuts.grow(_:)(18);
                          v282 = v337;

                          *&v367[0] = v338;
                          *(&v367[0] + 1) = v282;
                          MEMORY[0x266771550](95, 0xE100000000000000);
                          MEMORY[0x266771550](v359, v364);
                          MEMORY[0x266771550](0x72656C706D61735FLL, 0xED00006568636143);
                          specialized static FileLogger.saveDebugTextSource(_:name:extension:)(v279, v280, *&v367[0], *(&v367[0] + 1), 0x6C6174656DLL, 0xE500000000000000);
                        }
                      }

                      v283 = OSSignposter.logHandle.getter();
                      OSSignpostIntervalState.signpostID.getter();
                      v284 = static os_signpost_type_t.end.getter();

                      if (OS_os_log.signpostsEnabled.getter())
                      {

                        v285 = v332;
                        checkForErrorAndConsumeState(state:)();

                        if ((*(v347 + 88))(v285, v348) == *MEMORY[0x277D85B00])
                        {
                          v286 = 0;
                          v287 = 0;
                          v288 = "[Error] Interval already ended";
                        }

                        else
                        {
                          (*(v347 + 8))(v332, v348);
                          v288 = "%s";
                          v287 = 2;
                          v286 = 1;
                        }

                        v290 = swift_slowAlloc();
                        v291 = swift_slowAlloc();
                        *&v367[0] = v291;
                        *v290 = v287;
                        *(v290 + 1) = v286;
                        *(v290 + 2) = 2080;
                        *(v290 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v359, v364, v367);
                        v292 = v336;
                        v293 = OSSignpostID.rawValue.getter();
                        _os_signpost_emit_with_name_impl(&dword_265D7D000, v283, v284, v293, "samplerCacheCompile", v288, v290, 0xCu);
                        __swift_destroy_boxed_opaque_existential_1Tm(v291);
                        MEMORY[0x266773120](v291, -1, -1);
                        MEMORY[0x266773120](v290, -1, -1);

                        v289 = v292;
                      }

                      else
                      {

                        v289 = v336;
                      }

                      v294 = (v339)(v289, v352);
                      if (one-time initialization token for samplerCache != -1)
                      {
                        goto LABEL_175;
                      }

                      goto LABEL_131;
                    }

                    if (v153 >= v34)
                    {
                      __break(1u);
LABEL_159:
                      __break(1u);
                      goto LABEL_160;
                    }

                    v118 = (v153 + 1);
                    if (__OFADD__(v153, 1))
                    {
                      goto LABEL_159;
                    }

                    v157 = *(v152 + v156);
                    v156 += 112;
                    ++v153;
                  }

                  while (v157 == -7);
                  if ((v157 & 0x8000000000000000) != 0)
                  {
                    break;
                  }

                  v326 = v155;
                  if (v157 >= *(v380 + 16))
                  {
                    goto LABEL_174;
                  }

                  v158 = v154;
                  v159 = v380 + 48 * v157;
                  v160 = *(v159 + 32);
                  v161 = *(v159 + 40);
                  v163 = *(v159 + 48);
                  v162 = *(v159 + 56);
                  v321 = *(v159 + 64);
                  v322 = v162;
                  LODWORD(v320) = *(v159 + 72);
                  v325 = v160;
                  outlined copy of NodePersonality(v160);
                  v324 = v161;

                  v323 = v163;

                  v154 = v158;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v154 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v158 + 2) + 1, 1, v158);
                  }

                  v165 = *(v154 + 2);
                  v164 = *(v154 + 3);
                  v155 = v326;
                  if (v165 >= v164 >> 1)
                  {
                    v167 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v164 > 1), v165 + 1, 1, v154);
                    v155 = v326;
                    v154 = v167;
                  }

                  *(v154 + 2) = v165 + 1;
                  v166 = &v154[48 * v165];
                  *(v166 + 4) = v325;
                  *(v166 + 5) = v324;
                  *(v166 + 6) = v323;
                  *(v166 + 7) = v322;
                  *(v166 + 8) = v321;
                  v166[72] = v320;
                  v153 = v118;
                }

                __break(1u);
LABEL_174:
                __break(1u);
LABEL_175:
                v294 = swift_once();
LABEL_131:
                v295 = static GraphCompiler.samplerCache;
                MEMORY[0x28223BE20](v294);
                v296 = v349;
                *(&v319 - 2) = v353;
                *(&v319 - 1) = v296;
                os_unfair_lock_lock((v295 + 40));
                v297 = v355;
                partial apply for closure #6 in GraphCompiler.compile(for:options:)((v295 + 16));
                v355 = v297;
                v298 = (v295 + 40);
                if (v297)
                {
                  os_unfair_lock_unlock(v298);
                  __break(1u);
                  return;
                }

                os_unfair_lock_unlock(v298);
                v299 = MEMORY[0x277D84F90];
                *&v367[0] = MEMORY[0x277D84F90];
                v300 = *(v34 + 16);

                v57 = 0;
                v176 = v34 + 40;
                v357 = v299;
LABEL_133:
                if (v57 <= v300)
                {
                  v301 = v300;
                }

                else
                {
                  v301 = v57;
                }

                v302 = (v176 + 16 * v57);
                while (v301 != v57)
                {
                  if (v57 >= *(v344 + 16))
                  {
LABEL_170:
                    __break(1u);
LABEL_171:
                    __break(1u);
                    goto LABEL_172;
                  }

                  if (v57 >= *(v34 + 16))
                  {
                    goto LABEL_171;
                  }

                  v57 = (v57 + 1);
                  v303 = *v302;
                  v302 += 16;
                  if (v303 == 1)
                  {
                    v304 = swift_unknownObjectRetain();
                    MEMORY[0x266771770](v304);
                    if (*((*&v367[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v367[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                    {
                      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                    }

                    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                    v357 = *&v367[0];
                    goto LABEL_133;
                  }
                }

                v305 = *(v353 + 2);
                if (v305)
                {
                  *&v367[0] = MEMORY[0x277D84F90];
                  specialized ContiguousArray.reserveCapacity(_:)();
                  v306 = 48;
                  do
                  {
                    swift_unknownObjectRetain();
                    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                    specialized ContiguousArray._endMutation()();
                    v306 += 24;
                    --v305;
                  }

                  while (v305);

                  v307 = *&v367[0];
                }

                else
                {

                  v307 = MEMORY[0x277D84F90];
                }

                *&v367[0] = v357;
                specialized Array.append<A>(contentsOf:)(v307);
                v308 = v355;
                MetalStitchingBackend.compile(program:uniformDefinition:builtInLibrary:additionalLibraries:options:device:)(v341, *(v358 + 304), v329, *&v367[0], v345, v351);
                v355 = v308;
                if (v308)
                {
                  outlined destroy of MetalStitchingBackend(v356);

                  swift_unknownObjectRelease();
LABEL_151:

                  goto LABEL_152;
                }

                v118 = OSSignposter.logHandle.getter();
                OSSignpostIntervalState.signpostID.getter();
                LOBYTE(v54) = static os_signpost_type_t.end.getter();

                if ((OS_os_log.signpostsEnabled.getter() & 1) == 0)
                {
                  goto LABEL_157;
                }

                v309 = v330;
                checkForErrorAndConsumeState(state:)();

                if ((*(v347 + 88))(v309, v348) == *MEMORY[0x277D85B00])
                {
                  v310 = 0;
                  v311 = 0;
                  v361 = "[Error] Interval already ended";
                  goto LABEL_163;
                }

LABEL_162:
                (*(v347 + 8))(v330, v348);
                v361 = "%s";
                v311 = 2;
                v310 = 1;
LABEL_163:
                v313 = swift_slowAlloc();
                v314 = swift_slowAlloc();
                *&v367[0] = v314;
                *v313 = v311;
                *(v313 + 1) = v310;
                *(v313 + 2) = 2080;
                *(v313 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v359, v364, v367);
                v315 = v331;
                v316 = OSSignpostID.rawValue.getter();
                _os_signpost_emit_with_name_impl(&dword_265D7D000, v118, v54, v316, "compile", v361, v313, 0xCu);
                __swift_destroy_boxed_opaque_existential_1Tm(v314);
                MEMORY[0x266773120](v314, -1, -1);
                MEMORY[0x266773120](v313, -1, -1);

                swift_unknownObjectRelease();

                v312 = v315;
              }

              (v339)(v312, v352);
              outlined destroy of MetalStitchingBackend(v356);

              v373 = v383;
              v374 = v384;
              v375[0] = v385[0];
              *(v375 + 9) = *(v385 + 9);
              v369 = v379;
              v370 = v380;
              v371 = v381;
              v372 = v382;
              v367[0] = v376;
              v367[1] = v377;
              v368 = v378;
              outlined destroy of UserGraph(v367);
              (v339)(v362, v352);
              return;
            }
          }
        }

        outlined destroy of MetalStitchingBackend(v356);

        swift_unknownObjectRelease();
      }

      v373 = v383;
      v374 = v384;
      v375[0] = v385[0];
      *(v375 + 9) = *(v385 + 9);
      v77 = v378;
      v369 = v379;
      v370 = v380;
      v371 = v381;
      v372 = v382;
    }

LABEL_23:
    v84 = v57[1];
    v367[0] = *v57;
    v367[1] = v84;
    v368 = v77;
    outlined destroy of UserGraph(v367);
  }

LABEL_24:

  v85 = OSSignposter.logHandle.getter();
  v86 = v354;
  OSSignpostIntervalState.signpostID.getter();
  v87 = static os_signpost_type_t.end.getter();

  if (OS_os_log.signpostsEnabled.getter())
  {

    v88 = v346;
    checkForErrorAndConsumeState(state:)();

    v90 = v347;
    v89 = v348;
    v91 = (*(v347 + 88))(v88, v348);
    v92 = v355;
    if (v91 == *MEMORY[0x277D85B00])
    {
      v93 = 0;
      v94 = 0;
      v95 = "[Error] Interval already ended";
    }

    else
    {
      (*(v90 + 8))(v88, v89);
      v95 = "Compile Failure: %s";
      v94 = 2;
      v93 = 1;
    }

    v97 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    *&v386[0] = v98;
    *v97 = v94;
    *(v97 + 1) = v93;
    *(v97 + 2) = 2080;
    *(v97 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v359, v364, v386);
    v99 = v354;
    v100 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_265D7D000, v85, v87, v100, "compile", v95, v97, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v98);
    MEMORY[0x266773120](v98, -1, -1);
    MEMORY[0x266773120](v97, -1, -1);

    v96 = *(v363 + 8);
    v34 = v352;
    v96(v99, v352);
  }

  else
  {

    v96 = *(v363 + 8);
    v96(v86, v34);
    v92 = v355;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v101 = type metadata accessor for Logger();
  __swift_project_value_buffer(v101, logger);
  v102 = v364;

  v103 = Logger.logObject.getter();
  v104 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v103, v104))
  {
    v105 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    v107 = v102;
    v108 = v106;
    *&v386[0] = v106;
    *v105 = 136315138;
    *(v105 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v359, v107, v386);
    _os_log_impl(&dword_265D7D000, v103, v104, "Compile failed for material: %s", v105, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v108);
    MEMORY[0x266773120](v108, -1, -1);
    MEMORY[0x266773120](v105, -1, -1);
  }

  v109 = v362;
  v110 = v92;
  v111 = Logger.logObject.getter();
  v112 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v111, v112))
  {
    v113 = swift_slowAlloc();
    v114 = swift_slowAlloc();
    *v113 = 138412290;
    v115 = v92;
    v116 = _swift_stdlib_bridgeErrorToNSError();
    *(v113 + 4) = v116;
    *v114 = v116;
    _os_log_impl(&dword_265D7D000, v111, v112, "%@", v113, 0xCu);
    outlined destroy of [Input](v114, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266773120](v114, -1, -1);
    MEMORY[0x266773120](v113, -1, -1);
  }

  swift_willThrow();

  v96(v109, v34);
}

uint64_t specialized OrderedSet.removeSubrange(_:)(uint64_t result, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v5 = v2 + 1;
  v4 = v6;
  if (!v6)
  {
    return specialized ContiguousArray.replaceSubrange<A>(_:with:)(result, a2);
  }

  v7 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v7 <= 0)
  {
    return result;
  }

  v8 = *(*v5 + 16);
  v9 = v8 - v7;
  if ((v8 - v7) > (v8 >> 1))
  {
    v10 = result;
    v11 = a2;
    v12 = specialized OrderedSet._minimumCapacity.getter(v4);
    a2 = v11;
    v13 = v12;
    result = v10;
    if (v9 >= v13)
    {
      result = swift_isUniquelyReferenced_native();
      v14 = *v3;
      if (result)
      {
        goto LABEL_15;
      }

      if (!v14)
      {
LABEL_22:
        __break(1u);
        return result;
      }

      v15 = v14[2];
      v16 = (v15 & 0x3F) << v15;
      v17 = __OFADD__(v16, 64);
      v18 = v16 + 64;
      if (!v17)
      {
        v20 = v18 - 1;
        v19 = v18 < 1;
        v21 = v18 + 62;
        if (!v19)
        {
          v21 = v20;
        }

        v22 = v21 >> 6;
        type metadata accessor for _HashTable.Storage(0);
        v23 = swift_allocObject();
        v24 = v14[3];
        v23[2] = v15;
        v23[3] = v24;
        memcpy(v23 + 4, v14 + 4, 8 * v22);

        *v3 = v23;
        v14 = v23;
LABEL_15:
        if (v14)
        {

          specialized closure #1 in OrderedSet.removeSubrange(_:)(v14 + 2, v14 + 4, v3, v10, v11);

          result = v10;
          a2 = v11;
          return specialized ContiguousArray.replaceSubrange<A>(_:with:)(result, a2);
        }

        goto LABEL_21;
      }

LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }
  }

  specialized ContiguousArray.replaceSubrange<A>(_:with:)(result, a2);

  return specialized OrderedSet._regenerateHashTable()();
}

uint64_t static GPUSpecificCacheKey.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 != a4)
  {
    return 0;
  }

  if (a2 == a5 && a3 == a6)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t GPUSpecificCacheKey.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x2667727B0](a2);

  return String.hash(into:)();
}

Swift::Int GPUSpecificCacheKey.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  MEMORY[0x2667727B0](a1);
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance GPUSpecificCacheKey()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x2667727B0](v1);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance GPUSpecificCacheKey(uint64_t a1)
{
  MEMORY[0x2667727B0](*v1);

  return String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GPUSpecificCacheKey(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x2667727B0](v2);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance GPUSpecificCacheKey(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] == a2[1] && a1[2] == a2[2])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t *GraphCompiler.samplerCache.unsafeMutableAddressor()
{
  if (one-time initialization token for samplerCache != -1)
  {
    swift_once();
  }

  return &static GraphCompiler.samplerCache;
}

uint64_t one-time initialization function for samplerCache(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = MEMORY[0x277D84F90];
  v6 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62)
  {
    v8 = a2;
    v9 = a3;
    v6 = MEMORY[0x277D84F90];
    v10 = __CocoaSet.count.getter();
    if (v10)
    {
      v11 = v10;
      v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11ShaderGraph6SGNodeC_Tt1g5();
      specialized Array._copyContents(initializing:)(v6 + 32, v11, MEMORY[0x277D84F90]);
      v13 = v12;

      a3 = v9;
      a2 = v8;
      if (v13 == v11)
      {
        goto LABEL_2;
      }

      __break(1u);
    }

    a3 = v9;
    a2 = v8;
  }

LABEL_2:
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = swift_allocObject();
  *(result + 40) = 0;
  *(result + 16) = 0;
  *(result + 24) = v5;
  *(result + 32) = v6;
  *a4 = result;
  return result;
}

uint64_t *GraphCompiler.builtInLibraryCache.unsafeMutableAddressor()
{
  if (one-time initialization token for builtInLibraryCache != -1)
  {
    swift_once();
  }

  return &static GraphCompiler.builtInLibraryCache;
}

id one-time initialization function for shaderGraphBundle()
{
  type metadata accessor for SGGraph();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  static GraphCompiler.shaderGraphBundle = result;
  return result;
}

uint64_t *GraphCompiler.shaderGraphBundle.unsafeMutableAddressor()
{
  if (one-time initialization token for shaderGraphBundle != -1)
  {
    swift_once();
  }

  return &static GraphCompiler.shaderGraphBundle;
}

id static GraphCompiler.shaderGraphBundle.getter()
{
  if (one-time initialization token for shaderGraphBundle != -1)
  {
    swift_once();
  }

  v1 = static GraphCompiler.shaderGraphBundle;

  return v1;
}

uint64_t GraphCompiler.signposter.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GraphCompiler(0) + 20);
  v4 = type metadata accessor for OSSignposter();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void closure #1 in GraphCompiler.compile(for:options:)(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X4>, uint64_t *a4@<X8>)
{
  v24[2] = *MEMORY[0x277D85DE8];
  v7 = specialized OrderedDictionary.subscript.getter(a2, *a1, a1[1], a1[2]);
  if (v7)
  {
    *a4 = v7;
  }

  else
  {
    v21 = a4;
    v22 = a3;
    _StringGuts.grow(_:)(17);

    v24[1] = 0xEF5F797261726269;
    v23 = a2;
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266771550](v8);

    type metadata accessor for GraphCompiler(0);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24[0] = v10;
    *v9 = 136315138;
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x4C6E49746C697562, 0xEF5F797261726269, v24);

    *(v9 + 4) = v11;
    v12 = OSSignposter.logHandle.getter();
    v13 = static os_signpost_type_t.begin.getter();
    v14 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_265D7D000, v12, v13, v14, "waitingOnMetal", "%s", v9, 0xCu);
    if (one-time initialization token for shaderGraphBundle != -1)
    {
      swift_once();
    }

    v23 = 0;
    v15 = [v22 newDefaultLibraryWithBundle:static GraphCompiler.shaderGraphBundle error:&v23];
    v16 = v23;
    if (v15)
    {
      v17 = static os_signpost_type_t.end.getter();
      v18 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_265D7D000, v12, v17, v18, "waitingOnMetal", "%s", v9, 0xCu);

      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x266773120](v10, -1, -1);
      MEMORY[0x266773120](v9, -1, -1);
      v19 = swift_unknownObjectRetain();
      specialized OrderedDictionary.subscript.setter(v19, a2);
      *v21 = v15;
    }

    else
    {
      v20 = v16;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }
}

void GraphCompiler.convertColorConstants(to:in:)(CGColorSpace *a1, uint64_t a2)
{
  v20 = a2;
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v4 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF490]);
    if (!v4)
    {
      lazy protocol witness table accessor for type GraphCompilerErrors and conformance GraphCompilerErrors();
      swift_allocError();
      *v17 = xmmword_265F23D80;
      *(v17 + 16) = 3;
      swift_willThrow();
      return;
    }

    v3 = v4;
    a1 = 0;
  }

  v5 = *(v20 + 64);
  v6 = *(v5 + 16);
  v7 = a1;

  if (v6)
  {
    v8 = 0;
    while (v8 < v6)
    {
      v10 = v5 + 32 + 48 * v8;
      v11 = *(v10 + 24);
      if (v11 == -7)
      {
        v9 = __OFADD__(v8++, 1);
        if (v9)
        {
          goto LABEL_18;
        }

        if (v8 >= v6)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v9 = __OFADD__(v8++, 1);
        if (v9)
        {
          goto LABEL_19;
        }

        v12 = *(v10 + 8);
        v13 = *(v10 + 16);
        v14 = *v10;
        v15 = *(v10 + 40);
        v16 = *(v10 + 32);
        v18[0] = v14;
        v18[1] = v12;
        v18[2] = v13;
        v18[3] = v11;
        v18[4] = v16;
        v19 = v15;
        outlined copy of NodePersonality(v14);

        closure #1 in UserGraph.convertColors(to:)(v18, v3, v20);
        outlined consume of NodePersonality(v14);
        if (v2)
        {

          return;
        }

        if (v8 >= v6)
        {
          goto LABEL_14;
        }
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_14:
  }
}

void GraphCompiler.extractSamplerNodes(in:into:device:)(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  v6 = v4;
  v110 = a3;
  v127 = a2;
  v109 = a1;
  v7 = *(a1 + 64);
  v8 = *(v7 + 16);

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (v9 < v8)
  {
    v11 = (v7 + 72 + 48 * v9);
    v12 = v9;
    while (1)
    {
      if (v9 >= v8)
      {
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
        goto LABEL_75;
      }

      v5 = *(v11 - 2);
      if (v5 != -7)
      {
        break;
      }

      ++v12;
      v11 += 48;
      if (v8 == v12)
      {
        goto LABEL_15;
      }
    }

    v9 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      goto LABEL_77;
    }

    if (*(v11 - 5) == 0xE000000000000008)
    {
      v13 = *(v11 - 4);
      v14 = *(v11 - 3);
      v108 = *(v11 - 1);
      LODWORD(v107) = *v11;
      v106 = v13;

      v105 = v14;

      *&v111 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 16) + 1, 1);
        v10 = v111;
      }

      v16 = *(v10 + 16);
      v15 = *(v10 + 24);
      v17 = v16 + 1;
      if (v16 >= v15 >> 1)
      {
        v103 = *(v10 + 16);
        *&v104 = v3;
        v20 = v16 + 1;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
        v17 = v20;
        v16 = v103;
        v10 = v111;
      }

      *(v10 + 16) = v17;
      v18 = v10 + 48 * v16;
      v19 = v106;
      *(v18 + 32) = 0xE000000000000008;
      *(v18 + 40) = v19;
      *(v18 + 48) = v105;
      *(v18 + 56) = v5;
      *(v18 + 64) = v108;
      *(v18 + 72) = v107;
    }
  }

LABEL_15:

  MEMORY[0x28223BE20](v21);
  v97 = v3;
  v98 = v109;
  v22 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay11ShaderGraph0dE4NodeVG_SS_AHtsAE_pTg5(partial apply for closure #2 in GraphCompiler.extractSamplerNodes(in:into:device:), &v96, v10);
  v5 = v6;
  if (v6)
  {

    return;
  }

  v102 = v22;

  if (one-time initialization token for samplerCache != -1)
  {
    goto LABEL_78;
  }

  while (1)
  {
    v24 = static GraphCompiler.samplerCache;
    MEMORY[0x28223BE20](v23);
    v97 = v102;
    v98 = v110;
    os_unfair_lock_lock(v24 + 10);
    partial apply for closure #3 in GraphCompiler.extractSamplerNodes(in:into:device:)(&v24[4], &v111);
    v25 = v127;
    v108 = v5;
    v26 = v24 + 10;
    if (v5)
    {
      break;
    }

    os_unfair_lock_unlock(v26);
    v110 = v111;
    v107 = *(v111 + 16);
    if (v107)
    {
      v27 = 0;
      v106 = v110 + 32;
      do
      {
        if (v27 >= *(v110 + 16))
        {
          goto LABEL_72;
        }

        v30 = (v106 + 24 * v27);
        v31 = *v30;
        v32 = v30[1];
        v33 = v30[2];
        v35 = *v25;
        v34 = v25[1];
        v36 = *(v34 + 16);
        if (v35)
        {

          swift_unknownObjectRetain();

          v37 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(v31, v32, v34 + 32, v36, (v35 + 16), v35 + 32);
          v5 = v38;
          v40 = v39;

          if (v5)
          {
            goto LABEL_38;
          }
        }

        else
        {
          if (!v36)
          {
LABEL_37:

            swift_unknownObjectRetain();
            v40 = 0;
LABEL_38:
            v42 = v40;
            v25 = v127;
            specialized OrderedSet._appendNew(_:in:)(v31, v32, v42);

            v47 = v25[2];
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v25[2] = v47;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v47 + 2) + 1, 1);
              v47 = v25[2];
            }

            v5 = *(v47 + 2);
            v28 = *(v47 + 3);
            if (v5 >= v28 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v5 + 1, 1);
              v47 = v25[2];
            }

            *(v47 + 2) = v5 + 1;
            v29 = &v47[16 * v5];
            *(v29 + 4) = v33;
            v29[40] = 1;
            goto LABEL_24;
          }

          v37 = 0;
          v5 = v34 + 40;
          while (1)
          {
            v41 = *(v5 - 8) == v31 && *v5 == v32;
            if (v41 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            ++v37;
            v5 += 16;
            if (v36 == v37)
            {
              goto LABEL_37;
            }
          }

          swift_unknownObjectRetain();
        }

        v25 = v127;
        v47 = v127[2];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v47 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v47);
        }

        if ((v37 & 0x8000000000000000) != 0)
        {
          goto LABEL_73;
        }

        if (v37 >= *(v47 + 2))
        {
          goto LABEL_74;
        }

        v44 = &v47[16 * v37];
        v45 = *(v44 + 4);
        v46 = v44[40];
        *(v44 + 4) = v33;
        v44[40] = 1;
        outlined consume of MetalLibrary(v45, v46);
LABEL_24:
        ++v27;
        v25[2] = v47;
      }

      while (v27 != v107);
    }

    v48 = v102;
    v100 = *(v102 + 16);
    if (!v100)
    {
LABEL_70:

      return;
    }

    v49 = 0;
    v99 = v102 + 32;
    while (v49 < *(v48 + 16))
    {
      v50 = v99 + (v49 << 6);
      v51 = v25;
      v53 = *v50;
      v52 = *(v50 + 8);
      v55 = *(v50 + 24);
      v56 = *(v50 + 32);
      v57 = *(v50 + 56);
      *&v122 = *(v50 + 16);
      v54 = v122;
      *(&v122 + 1) = v55;
      *v123 = v56;
      v104 = *(v50 + 40);
      *&v123[8] = v104;
      v124 = v57;
      v58 = *v51;
      v59 = v51[1];
      v60 = v51[2];

      v110 = v54;
      outlined copy of NodePersonality(v54);
      v105 = v55;
      v61 = v56;
      v62 = v53;

      v63 = specialized OrderedDictionary.subscript.getter(v53, v52, v58, v59, v60);
      v103 = v49;
      if (v64 == -1)
      {
        v65 = v109[9];
        v125[8] = v109[8];
        v126[0] = v65;
        v5 = &v122;
        *(v126 + 9) = *(v109 + 153);
        v66 = v109[5];
        v125[4] = v109[4];
        v125[5] = v66;
        v67 = v109[7];
        v125[6] = v109[6];
        v125[7] = v67;
        v68 = v109[1];
        v125[0] = *v109;
        v125[1] = v68;
        v69 = v109[3];
        v125[2] = v109[2];
        v125[3] = v69;
        outlined init with copy of UserGraph(v125, &v111);
        v70 = v108;
        v71 = GraphCompiler.extract(node:from:withName:)(&v122, v125, v53, v52);
        outlined destroy of UserGraph(v125);
        v108 = v70;
        if (v70)
        {

          outlined consume of NodePersonality(v110);

          goto LABEL_70;
        }

        v72 = v53;
        v25 = v127;
        specialized OrderedDictionary.subscript.setter(v71, 0, v72, v52);
      }

      else
      {
        v5 = &v122;
        outlined consume of MetalLibrary?(v63, v64);
        v25 = v127;
      }

      v73 = *(v61 + 2);
      v106 = v52;
      v107 = v61;
      if (v73)
      {
        v101 = v62;
        *&v111 = MEMORY[0x277D84F90];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v73, 0);
        v74 = v111;
        v75 = (v61 + 56);
        do
        {
          v77 = *(v75 - 2);
          v76 = *(v75 - 1);
          v78 = *v75;
          *&v111 = v74;
          v80 = *(v74 + 16);
          v79 = *(v74 + 24);

          if (v80 >= v79 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v79 > 1), v80 + 1, 1);
            v74 = v111;
          }

          *(v74 + 16) = v80 + 1;
          v81 = (v74 + 24 * v80);
          v81[4] = v76;
          v81[5] = v78;
          v81[6] = v77;
          v75 += 7;
          --v73;
        }

        while (v73);
        v82 = v74;
        v5 = &v122;
        v25 = v127;
        v52 = v106;
        v61 = v107;
        v62 = v101;
      }

      else
      {
        v82 = MEMORY[0x277D84F90];
      }

      v83 = swift_allocObject();
      *(v83 + 16) = v62;
      *(v83 + 24) = v52;
      specialized ShaderGraphNode.output(labeled:)(&v115, 7632239, 0xE300000000000000, v61);
      v84 = v116;
      if (!v116)
      {
        goto LABEL_68;
      }

      v120 = v117;

      outlined destroy of String(&v120);
      *(v83 + 32) = v84;
      v85 = v61;
      v86 = v109;
      UserGraph.insertNode(inputs:outputs:shaderGraphData:)(MEMORY[0x277D84F90], v82, v83 | 0x2000000000000000, &v118);

      v87 = *(&v118 + 1);
      v88 = v110;
      outlined copy of NodePersonality(v110);
      v89 = v105;

      v90 = v108;
      specialized Sequence.forEach(_:)(v87, v89, v86);
      outlined consume of NodePersonality(v88);

      v91 = v119;
      outlined copy of NodePersonality(v88);

      specialized Sequence.forEach(_:)(v91, v85, v86);
      v108 = v90;
      outlined consume of NodePersonality(v88);

      v5 = v104;
      specialized UserGraph.removeEdges(connectedTo:)(v104);
      v92 = *(v86 + 64);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if ((v5 & 0x8000000000000000) != 0)
        {
          goto LABEL_67;
        }
      }

      else
      {
        v92 = specialized _ArrayBuffer._consumeAndCreateNew()(v92);
        if ((v5 & 0x8000000000000000) != 0)
        {
LABEL_67:
          __break(1u);
LABEL_68:
          v113 = 0;
          v114 = 0xE000000000000000;

          MEMORY[0x266771550](7632239, 0xE300000000000000);
          MEMORY[0x266771550](32, 0xE100000000000000);
          v111 = v122;
          v112[0] = *v123;
          *(v112 + 9) = *(v5 + 25);
          _print_unlocked<A, B>(_:_:)();
          v93 = v113;
          v94 = v114;
          lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
          swift_allocError();
          *v95 = 14;
          *(v95 + 8) = v93;
          *(v95 + 16) = v94;
          swift_willThrow();

          swift_deallocUninitializedObject();

          outlined consume of NodePersonality(v110);

          return;
        }
      }

      if (v5 >= *(v92 + 2))
      {
        goto LABEL_76;
      }

      v49 = v103 + 1;
      ShaderGraphNode.update(id:)(-7);
      v121 = v118;
      outlined destroy of NodePersonality(&v121);

      outlined consume of NodePersonality(v110);

      *(v109 + 8) = v92;
      v48 = v102;
      if (v49 == v100)
      {
        goto LABEL_70;
      }
    }

LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    v23 = swift_once();
  }

  os_unfair_lock_unlock(v26);
  __break(1u);
}

uint64_t GraphCompiler.replaceGettersWithFunctionCalls(in:)(uint64_t a1)
{
  v3 = *(*(a1 + 64) + 16);

  if (v3)
  {
    v5 = 0;
    v6 = result + 32;
    while (v5 < v3)
    {
      v8 = v6 + 48 * v5;
      v9 = *(v8 + 24);
      if (v9 == -7)
      {
        v7 = __OFADD__(v5++, 1);
        if (v7)
        {
          goto LABEL_13;
        }

        if (v5 >= v3)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v7 = __OFADD__(v5++, 1);
        if (v7)
        {
          goto LABEL_14;
        }

        v10 = *(v8 + 8);
        v11 = *(v8 + 16);
        v12 = *v8;
        v13 = *(v8 + 40);
        v14 = *(v8 + 32);
        v15[0] = v12;
        v15[1] = v10;
        v15[2] = v11;
        v15[3] = v9;
        v15[4] = v14;
        v16 = v13;
        outlined copy of NodePersonality(v12);

        closure #1 in GraphCompiler.replaceGettersWithFunctionCalls(in:)(v15, a1, &v17);
        outlined consume of NodePersonality(v12);
        if (v1)
        {
        }

        if (v5 >= v3)
        {
          goto LABEL_10;
        }
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
  }

  else
  {
LABEL_10:

    return v17;
  }

  return result;
}

char *GraphCompiler.functionGraph(for:)(__int128 *a1)
{
  type metadata accessor for UserGraphCompiler();
  v3 = swift_allocObject();
  _s11ShaderGraph04UserB8CompilerC14CompileContextVSgWOi0_(v44);
  v4 = v44[11];
  *(v3 + 176) = v44[10];
  *(v3 + 192) = v4;
  *(v3 + 208) = v45;
  v5 = v44[7];
  *(v3 + 112) = v44[6];
  *(v3 + 128) = v5;
  v6 = v44[9];
  *(v3 + 144) = v44[8];
  *(v3 + 160) = v6;
  v7 = v44[3];
  *(v3 + 48) = v44[2];
  *(v3 + 64) = v7;
  v8 = v44[5];
  *(v3 + 80) = v44[4];
  *(v3 + 96) = v8;
  v9 = v44[1];
  *(v3 + 16) = v44[0];
  *(v3 + 32) = v9;
  type metadata accessor for MetalShaderProgram();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D84F90];
  *(v10 + 16) = MEMORY[0x277D84F90];
  *(v10 + 24) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11ShaderGraph14FunctionNodeIDV_AC05MetaleF0_pTt0g5Tf4g_n(v11);
  *(v10 + 32) = v11;
  *(v10 + 40) = v11;
  *(v10 + 48) = 1;
  v12 = UserGraphCompiler.compile(sourceProgram:into:)(a1, v10);
  if (v1)
  {

LABEL_38:

    return v12;
  }

  v38 = v12;
  MetalShaderProgram.terminalNodes()();
  v46 = v11;
  v14 = *(v13 + 16);
  v39 = v13;
  if (v14)
  {
    v15 = v13 + 32;
    v41 = MEMORY[0x277D84F90];
    do
    {
      outlined init with copy of MetalFunctionNode(v15, v43);
      outlined init with take of MetalFunctionNode(v43, v42);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph17MetalFunctionNode_pMd, &_s11ShaderGraph17MetalFunctionNode_pMR);
      type metadata accessor for RESurfaceShaderFunctionNode();
      if ((swift_dynamicCast() & 1) != 0 && v42[5])
      {
        MEMORY[0x266771770]();
        if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v41 = v46;
      }

      v15 += 40;
      --v14;
    }

    while (v14);
  }

  else
  {
    v41 = v11;
  }

  v16 = *(v39 + 16);

  v17 = v41;
  if (v41 >> 62)
  {
LABEL_25:
    v23 = v17;
    if (v16 == __CocoaSet.count.getter())
    {
      v24 = __CocoaSet.count.getter();
      v17 = v23;
      v18 = v24;
      v40 = v16;
      if (v24)
      {
        goto LABEL_15;
      }

      goto LABEL_27;
    }

LABEL_37:

    lazy protocol witness table accessor for type GraphCompilerErrors and conformance GraphCompilerErrors();
    swift_allocError();
    *v35 = 0;
    *(v35 + 8) = 0;
    *(v35 + 16) = 3;
    swift_willThrow();

    v12 = v38;
    goto LABEL_38;
  }

  v18 = v16;
  if (v16 != *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_37;
  }

  v40 = v16;
  if (v16)
  {
LABEL_15:
    v19 = 0;
    v16 = v17 & 0xC000000000000001;
    v20 = v17 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if (v16)
      {
        v21 = MEMORY[0x266772030](v19, v17);
        v22 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
LABEL_23:
          __break(1u);

          v12 = v38;

          goto LABEL_38;
        }
      }

      else
      {
        if (v19 >= *(v20 + 16))
        {
          __break(1u);
          goto LABEL_25;
        }

        v21 = *(v17 + 8 * v19 + 32);

        v22 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          goto LABEL_23;
        }
      }

      *&v43[0] = v21;
      closure #2 in GraphCompiler.functionGraph(for:)(v43, v38);

      ++v19;
      v17 = v41;
    }

    while (v22 != v18);
  }

LABEL_27:
  if (!v40)
  {

    v28 = MEMORY[0x277D84F90];
LABEL_41:
    _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC11ShaderGraph14FunctionNodeIDV_SayAFGTt0g5Tf4g_n(v28);

    v37.n128_f64[0] = MEMORY[0x28223BE20](v36);
    v12 = v38;
    (*(*v38 + 288))(partial apply for closure #3 in GraphCompiler.functionGraph(for:), v37);

    return v12;
  }

  v25 = v17;
  v42[0] = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v40 & ~(v40 >> 63), 0);
  if ((v40 & 0x8000000000000000) == 0)
  {
    v27 = 0;
    v28 = v42[0];
    v29 = v25;
    v30 = v25 & 0xC000000000000001;
    do
    {
      if (v30)
      {
        v31 = MEMORY[0x266772030](v27, v29);
      }

      else
      {
        v31 = *(v29 + 8 * v27 + 32);
      }

      swift_beginAccess();
      v32 = *(v31 + 88);

      v42[0] = v28;
      v34 = *(v28 + 16);
      v33 = *(v28 + 24);
      if (v34 >= v33 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1);
        v28 = v42[0];
      }

      ++v27;
      *(v28 + 16) = v34 + 1;
      *(v28 + 8 * v34 + 32) = v32;
      v29 = v41;
    }

    while (v40 != v27);

    goto LABEL_41;
  }

  __break(1u);
  return result;
}

void *closure #6 in GraphCompiler.compile(for:options:)(void *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = result[2];
  if (*(v6 + 16) <= 0x1000uLL)
  {
    goto LABEL_5;
  }

  if (*(result[1] + 16) < 0xC00uLL)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  result = specialized OrderedSet.removeSubrange(_:)(0, 3072);
  if (*(v6 + 16) < 0xC00uLL)
  {
LABEL_29:
    __break(1u);
    return result;
  }

  result = specialized ContiguousArray.replaceSubrange<A>(_:with:)(0, 3072);
LABEL_5:
  v24 = *(a2 + 16);
  if (!v24)
  {
    return result;
  }

  v7 = 0;
  v22 = v5;
  v23 = a2 + 32;
  while (1)
  {
    v9 = (v23 + 24 * v7);
    v10 = *v9;
    v11 = v9[1];
    v13 = *v5;
    v12 = v5[1];
    v25 = v5[2];
    v14 = *(v12 + 16);
    if (*v5)
    {
      break;
    }

    if (v14)
    {
      v15 = 0;
      v18 = (v12 + 48);
      while (1)
      {
        if (*(v18 - 2) == a3)
        {
          v19 = *(v18 - 1) == v10 && *v18 == v11;
          if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }
        }

        ++v15;
        v18 += 3;
        if (v14 == v15)
        {
          goto LABEL_7;
        }
      }

      swift_bridgeObjectRetain_n();
      swift_unknownObjectRetain();
      goto LABEL_24;
    }

LABEL_7:
    swift_bridgeObjectRetain_n();
    swift_unknownObjectRetain();
LABEL_8:
    v8 = swift_unknownObjectRetain();
    v5 = v22;
    specialized OrderedDictionary.subscript.setter(v8, a3, v10, v11);
    swift_unknownObjectRelease();

LABEL_9:
    if (++v7 == v24)
    {
      return result;
    }
  }

  swift_bridgeObjectRetain_n();
  swift_unknownObjectRetain();

  v15 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(a3, v10, v11, v12 + 32, v14, (v13 + 16), v13 + 32);
  v17 = v16;

  if (v17)
  {
    goto LABEL_8;
  }

  if ((v15 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_28;
  }

LABEL_24:
  v20 = *(v25 + 16);
  swift_unknownObjectRelease();
  result = swift_bridgeObjectRelease_n();
  v21 = v15 >= v20;
  v5 = v22;
  if (!v21)
  {
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t closure #2 in GraphCompiler.functionGraph(for:)(void *a1, uint64_t a2)
{
  v5 = *a1;
  v39 = type metadata accessor for RESurfaceShaderFunctionNode();
  v40 = &protocol witness table for RESurfaceShaderFunctionNode;
  *&v38 = v5;

  MetalShaderProgram.topologicalSort(from:)(&v38);
  v7 = v6;
  result = __swift_destroy_boxed_opaque_existential_1Tm(&v38);
  if (!v2)
  {
    v36 = a2;
    v41 = MEMORY[0x277D84F90];
    v9 = *(v7 + 16);
    if (v9)
    {
      v3 = v7 + 32;
      v10 = MEMORY[0x277D84F90];
      do
      {
        outlined init with copy of MetalFunctionNode(v3, &v38);
        outlined init with take of MetalFunctionNode(&v38, v37);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph17MetalFunctionNode_pMd, &_s11ShaderGraph17MetalFunctionNode_pMR);
        type metadata accessor for MetalFunctionParameterNode();
        if ((swift_dynamicCast() & 1) != 0 && v37[5])
        {
          MEMORY[0x266771770]();
          if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v10 = v41;
        }

        v3 += 40;
        --v9;
      }

      while (v9);
    }

    else
    {

      v10 = MEMORY[0x277D84F90];
    }

    v37[0] = MEMORY[0x277D84FA0];
    if (v10 >> 62)
    {
      goto LABEL_24;
    }

    for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {
      v3 = 0;
      while ((v10 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x266772030](v3, v10);
        v13 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_22;
        }

LABEL_18:
        v14 = (*(*v12 + 160))();
        specialized Set._Variant.insert(_:)(&v38, v14, v15);

        ++v3;
        if (v13 == i)
        {
          goto LABEL_25;
        }
      }

      if (v3 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v12 = *(v10 + 8 * v3 + 32);

      v13 = v3 + 1;
      if (!__OFADD__(v3, 1))
      {
        goto LABEL_18;
      }

LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      ;
    }

LABEL_25:

    v16 = *(v37[0] + 16);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS4name_11ShaderGraph13MetalDataTypeC4typetGMd, &_ss23_ContiguousArrayStorageCySS4name_11ShaderGraph13MetalDataTypeC4typetGMR);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_265F1F670;
    v18 = v5[5];
    v19 = v5[6];
    *(v17 + 32) = v5[4];
    *(v17 + 40) = v18;
    *(v17 + 48) = v19;
    v20 = v5[8];
    if (!v20)
    {

      goto LABEL_33;
    }

    v3 = v5[7];

    outlined copy of (name: String, type: MetalDataType)?(v3, v20);
    if (v16 <= 1)
    {

      goto LABEL_33;
    }

    v21 = one-time initialization token for uint8;

    if (v21 != -1)
    {
      goto LABEL_39;
    }

    while (1)
    {
      type metadata accessor for MetalDataType.Pointer();
      swift_allocObject();

      v23 = specialized MetalDataType.Pointer.init(to:isConst:addressSpace:)(v22, 0, 0);

      v25 = *(v17 + 16);
      v24 = *(v17 + 24);
      if (v25 >= v24 >> 1)
      {
        v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v17);
      }

      *(v17 + 16) = v25 + 1;
      v26 = (v17 + 24 * v25);
      v26[4] = v3;
      v26[5] = v20;
      v26[6] = v23;
LABEL_33:
      if (one-time initialization token for void != -1)
      {
        swift_once();
      }

      v27 = *(v36 + 48);
      if (!__OFADD__(v27, 1))
      {
        break;
      }

      __break(1u);
LABEL_39:
      swift_once();
    }

    v28 = v5[2];
    v29 = v5[3];
    v30 = static MetalDataType.void;
    *(v36 + 48) = v27 + 1;
    type metadata accessor for MetalFunctionDefinitionNode();
    v31 = swift_allocObject();
    v31[4] = v30;
    v31[5] = v28;
    v31[6] = v29;
    v31[7] = 0;
    v31[8] = 0xE000000000000000;
    v31[9] = v17;
    v32 = MEMORY[0x277D84F90];
    v31[2] = v27;
    v31[3] = v32;

    v33 = specialized MetalShaderProgram.add<A>(_:)(v31);

    (*(*v33 + 208))(0x6863746974735B5BLL, 0xEE005D5D656C6261);
    (*(*v33 + 232))(v17);
    swift_beginAccess();
    v34 = *(*v33 + 160);

    v34(v35);
  }

  return result;
}

BOOL closure #3 in GraphCompiler.functionGraph(for:)(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = (*(v4 + 24))(v3, v4);
  return !specialized Set.contains(_:)(v5, a2);
}

uint64_t closure #1 in GraphCompiler.replaceGettersWithFunctionCalls(in:)(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *result;
  if (*result >> 61 == 4)
  {
    v4 = *(result + 8);
    if (*(v4 + 16))
    {
      v52 = *(result + 16);
      v51 = *(result + 24);
      v5 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v6 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      type metadata accessor for MetalDataType();
      result = swift_dynamicCastClass();
      if (result)
      {
        swift_retain_n();

        DataType.subscript.getter(v5, v6, &v57);

        if (!v58)
        {
        }

        v46 = v3;
        v47 = v58;
        v48 = v4;
        v7 = v57;
        v8 = v59;
        specialized ShaderGraphNode.output(labeled:)(&v60, 7632239, 0xE300000000000000, v52);
        if (v61)
        {
          v45 = v61;
          v43 = v7;
          v71 = v62;
          outlined destroy of String(&v71);
          type metadata accessor for MetalDataType.Struct();
          v9 = swift_dynamicCastClass();
          if (v9)
          {
            v10 = v9;
            v42 = v8;
            lazy protocol witness table accessor for type String and conformance String();
            StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
            v11 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
            v13 = v12;

            v53 = *(v10 + 24);
            v56 = *(v10 + 32);

            MEMORY[0x266771550](95, 0xE100000000000000);
            v14 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x266771550](v14);

            MEMORY[0x266771550](95, 0xE100000000000000);
            MEMORY[0x266771550](v11, v13);

            v15 = swift_allocObject();
            *(v15 + 16) = v53;
            *(v15 + 24) = v56;
            *(v15 + 32) = v45;
            v16 = *(v48 + 16);
            v44 = v15;
            if (v16)
            {
              v54 = MEMORY[0x277D84F90];

              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16, 0);
              v17 = v54;
              v18 = (v48 + 56);
              do
              {
                v19 = *(v18 - 2);
                v20 = *(v18 - 1);
                v21 = *v18;
                v23 = *(v54 + 16);
                v22 = *(v54 + 24);

                if (v23 >= v22 >> 1)
                {
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1);
                }

                *(v54 + 16) = v23 + 1;
                v24 = (v54 + 24 * v23);
                v24[4] = v20;
                v24[5] = v21;
                v24[6] = v19;
                v18 += 7;
                --v16;
              }

              while (v16);
              v15 = v44;
            }

            else
            {

              v17 = MEMORY[0x277D84F90];
            }

            v28 = v52;
            v29 = *(v52 + 16);
            v30 = MEMORY[0x277D84F90];
            if (v29)
            {
              v41 = v17;
              v55 = MEMORY[0x277D84F90];
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v29, 0);
              v30 = v55;
              v31 = (v52 + 56);
              do
              {
                v32 = *(v31 - 2);
                v33 = *(v31 - 1);
                v34 = *v31;
                v36 = *(v55 + 16);
                v35 = *(v55 + 24);

                if (v36 >= v35 >> 1)
                {
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1);
                  v17 = v41;
                }

                *(v55 + 16) = v36 + 1;
                v37 = (v55 + 24 * v36);
                v37[4] = v33;
                v37[5] = v34;
                v37[6] = v32;
                v31 += 7;
                --v29;
              }

              while (v29);
              v28 = v52;
              v15 = v44;
            }

            UserGraph.insertNode(inputs:outputs:shaderGraphData:)(v17, v30, v15 | 0x2000000000000000, &v63);

            v38 = *(&v63 + 1);
            outlined copy of NodePersonality(v46);

            specialized Sequence.forEach(_:)(v38, v48, a2);
            outlined consume of NodePersonality(v46);

            v39 = v64;
            outlined copy of NodePersonality(v46);

            specialized Sequence.forEach(_:)(v39, v28, a2);
            outlined consume of NodePersonality(v46);

            specialized UserGraph.removeEdges(connectedTo:)(v51);
            v40 = *(a2 + 64);
            result = swift_isUniquelyReferenced_nonNull_native();
            *(a2 + 64) = v40;
            if (result)
            {
              if ((v51 & 0x8000000000000000) == 0)
              {
                goto LABEL_26;
              }
            }

            else
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew()(v40);
              v40 = result;
              *(a2 + 64) = result;
              if ((v51 & 0x8000000000000000) == 0)
              {
LABEL_26:
                if (v51 < *(v40 + 16))
                {
                  ShaderGraphNode.update(id:)(-7);
                  v69[0] = v43;
                  v69[1] = v47;
                  outlined destroy of String(v69);

                  v70 = v42;
                  outlined destroy of [Input](&v70, &_sSaySSGMd, &_sSaySSGMR);

                  v72 = v63;
                  outlined destroy of NodePersonality(&v72);

                  if (!__OFADD__(*a3, 1))
                  {
                    ++*a3;
                    return result;
                  }

LABEL_33:
                  __break(1u);
                  return result;
                }

LABEL_32:
                __break(1u);
                goto LABEL_33;
              }
            }

            __break(1u);
            goto LABEL_32;
          }

          lazy protocol witness table accessor for type GraphCompilerErrors and conformance GraphCompilerErrors();
          swift_allocError();
          *v27 = 0xD000000000000030;
          *(v27 + 8) = 0x8000000265F307D0;
          *(v27 + 16) = 2;
          swift_willThrow();

          v67[0] = v7;
          v67[1] = v47;
          outlined destroy of String(v67);

          v68 = v8;
          v26 = &v68;
        }

        else
        {
          MEMORY[0x266771550](7632239, 0xE300000000000000);
          MEMORY[0x266771550](32, 0xE100000000000000);
          _print_unlocked<A, B>(_:_:)();
          lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
          swift_allocError();
          *v25 = 14;
          *(v25 + 8) = 0;
          *(v25 + 16) = 0xE000000000000000;
          swift_willThrow();
          v65[0] = v7;
          v65[1] = v47;
          outlined destroy of String(v65);

          v66 = v8;
          v26 = &v66;
        }

        outlined destroy of [Input](v26, &_sSaySSGMd, &_sSaySSGMR);
      }
    }
  }

  return result;
}

unint64_t *closure #1 in GraphCompiler.replaceMetalFunctionsWithStitchedNodes(in:)(unint64_t *result, uint64_t a2)
{
  if (*result >> 61 == 1)
  {
    v40 = *result;
    v2 = result[1];
    v43 = result[2];
    v3 = result[3];
    v4 = *((*result & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v5 = *((*result & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v6 = *((*result & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
    v7 = "ND_realitykit_min_lod_clamp";
    v8 = 0xD000000000000012;
    if (v4 == 1935763810 && v5 == 0xE400000000000000)
    {
      v11 = 0xD000000000000012;
      goto LABEL_18;
    }

    if (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || ((v7 = "ND_realitykit_level", v8 = 0xD00000000000001BLL, v4 == 0x5F646F6C5F6E696DLL) ? (v10 = v5 == 0xED0000706D616C63) : (v10 = 0), v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v7 = "ND_realitykit_gradient2d", v8 = 0xD000000000000013, v4 == 0x6C6576656CLL) && v5 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
    {
      v11 = v8;
      goto LABEL_18;
    }

    v7 = "ND_realitykit_gradient3d";
    if (v4 == 0x746E656964617267 && v5 == 0xEA00000000006432 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v7 = "ND_realitykit_gradientcube", v4 == 0x746E656964617267) && v5 == 0xEA00000000006433 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v11 = 0xD000000000000018;
      goto LABEL_18;
    }

    v7 = "_graphCompiler_final";
    v11 = 0xD00000000000001ALL;
    if (v4 == 0x746E656964617267 && v5 == 0xEC00000065627563 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
    {
LABEL_18:
      v39 = v3;
      v37 = v7 | 0x8000000000000000;
      v38 = v2;
      v12 = *(v2 + 16);
      v42 = v11;
      if (v12)
      {
        *&v44 = MEMORY[0x277D84F90];
        v13 = v6;

        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0);
        v14 = v44;
        v15 = (v2 + 56);
        do
        {
          v16 = *(v15 - 2);
          v17 = *(v15 - 1);
          v18 = *v15;
          *&v44 = v14;
          v20 = *(v14 + 16);
          v19 = *(v14 + 24);

          if (v20 >= v19 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
            v14 = v44;
          }

          *(v14 + 16) = v20 + 1;
          v21 = (v14 + 24 * v20);
          v21[4] = v17;
          v21[5] = v18;
          v21[6] = v16;
          v15 += 7;
          --v12;
        }

        while (v12);
        v6 = v13;
      }

      else
      {

        v14 = MEMORY[0x277D84F90];
      }

      v22 = v43;
      v23 = *(v43 + 16);
      v24 = MEMORY[0x277D84F90];
      if (v23)
      {
        v36 = v14;
        *&v44 = MEMORY[0x277D84F90];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23, 0);
        v24 = v44;
        v25 = (v43 + 56);
        do
        {
          v26 = *(v25 - 2);
          v27 = *(v25 - 1);
          v28 = *v25;
          *&v44 = v24;
          v30 = *(v24 + 16);
          v29 = *(v24 + 24);

          if (v30 >= v29 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1);
            v14 = v36;
            v24 = v44;
          }

          *(v24 + 16) = v30 + 1;
          v31 = (v24 + 24 * v30);
          v31[4] = v27;
          v31[5] = v28;
          v31[6] = v26;
          v25 += 7;
          --v23;
        }

        while (v23);
        v11 = v42;
        v22 = v43;
      }

      v32 = swift_allocObject();
      *(v32 + 16) = v11;
      *(v32 + 24) = v37;
      *(v32 + 32) = v6;

      UserGraph.insertNode(inputs:outputs:shaderGraphData:)(v14, v24, v32 | 0x2000000000000000, &v44);

      v33 = *(&v44 + 1);
      outlined copy of NodePersonality(v40);

      specialized Sequence.forEach(_:)(v33, v38, a2);
      outlined consume of NodePersonality(v40);

      v34 = v45;
      outlined copy of NodePersonality(v40);

      specialized Sequence.forEach(_:)(v34, v22, a2);
      outlined consume of NodePersonality(v40);

      specialized UserGraph.removeEdges(connectedTo:)(v39);
      v35 = *(a2 + 64);
      result = swift_isUniquelyReferenced_nonNull_native();
      *(a2 + 64) = v35;
      if (result)
      {
        if ((v39 & 0x8000000000000000) == 0)
        {
          goto LABEL_33;
        }
      }

      else
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(v35);
        v35 = result;
        *(a2 + 64) = result;
        if ((v39 & 0x8000000000000000) == 0)
        {
LABEL_33:
          if (v39 < v35[2])
          {
            ShaderGraphNode.update(id:)(-7);
            v46 = v44;
            outlined destroy of NodePersonality(&v46);
          }

LABEL_49:
          __break(1u);
          return result;
        }
      }

      __break(1u);
      goto LABEL_49;
    }
  }

  return result;
}

uint64_t closure #2 in GraphCompiler.samplerName(for:in:)@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v6 = *a1;
  v7 = *a1 >> 61;
  if (v7 != 1)
  {
    if (!v7)
    {
      v9 = *(v6 + 16);
      v8 = *(v6 + 24);
      v67 = *(v6 + 32);
      v69 = *(v6 + 48);
      v70 = *(v6 + 64);
      v10 = *(v6 + 80);
      if (v10 != 6)
      {
        *&v71 = 0;
        *(&v71 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(25);
        v66 = v71;
        MEMORY[0x266771550](0xD000000000000017, 0x8000000265F30A20);
        *&v71 = v9;
        *(&v71 + 1) = v8;
        v72 = v67;
        v73 = v69;
        v74 = v70;
        v75 = v10;
        _print_unlocked<A, B>(_:_:)();
        lazy protocol witness table accessor for type GraphCompilerErrors and conformance GraphCompilerErrors();
        v32 = swift_allocError();
        *v33 = v66;
        *(v33 + 16) = 0;
        result = swift_willThrow();
        *a2 = v32;
        return result;
      }

      v11 = *(v6 + 88);
      *&v71 = 0;
      *(&v71 + 1) = 0xE000000000000000;
      result = (*(*v11 + 144))();
      if (result)
      {
        v13 = *(result + 24);
        v14 = *(result + 32);

        MEMORY[0x266771550](v13, v14);

        MEMORY[0x266771550](95, 0xE100000000000000);
        result = MEMORY[0x266771550](v9, v8);
        v15 = *(&v71 + 1);
        *a3 = v71;
        a3[1] = v15;
        return result;
      }

      goto LABEL_42;
    }

    *&v71 = 0;
    *(&v71 + 1) = 0xE000000000000000;
    _print_unlocked<A, B>(_:_:)();
LABEL_16:
    lazy protocol witness table accessor for type GraphCompilerErrors and conformance GraphCompilerErrors();
    v30 = swift_allocError();
    *v31 = v71;
    *(v31 + 16) = 0;
    result = swift_willThrow();
    *a2 = v30;
    return result;
  }

  v65 = a3;
  v16 = a1[1];
  result = 0x73696E615F78616DLL;
  v17 = v6 & 0x1FFFFFFFFFFFFFFFLL;
  v19 = *(v17 + 16);
  v18 = *(v17 + 24);
  if (v19 != 0x73696E615F78616DLL || v18 != 0xEE0079706F72746FLL)
  {
    result = _stringCompareWithSmolCheck(_:_:expecting:)();
    if ((result & 1) == 0)
    {
      result = 0x6D616C635F646F6CLL;
      v36 = v19 == 0x6D616C635F646F6CLL && v18 == 0xE900000000000070;
      if (v36 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
      {
        if (!*(v16 + 16))
        {
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        v37 = *(v16 + 40);
        v38 = *(v16 + 48);
        v39 = *(v16 + 56);
        v40 = *(v16 + 64);
        v41 = *(v16 + 72);
        v42 = *(v16 + 80);
        v111[0] = *(v16 + 32);
        v111[1] = v37;
        v111[2] = v38;
        v111[3] = v39;
        v111[4] = v40;
        v112 = v41;
        v113 = v42;

        UserGraph.node(connectedTo:)(v111, &v81);

        if (v82)
        {
          v62 = a2;
          v63 = v82;
          if (*(v16 + 16) >= 2uLL)
          {
            v43 = v81;
            v64 = v83;
            v44 = *(v16 + 96);
            v45 = *(v16 + 104);
            v46 = *(v16 + 112);
            v47 = *(v16 + 120);
            v48 = *(v16 + 128);
            v49 = *(v16 + 136);
            v108[0] = *(v16 + 88);
            v108[1] = v44;
            v108[2] = v45;
            v108[3] = v46;
            v108[4] = v47;
            v109 = v48;
            v110 = v49;

            UserGraph.node(connectedTo:)(v108, &v84);

            v50 = v85;
            if (v85)
            {
              v51 = v84;
              v52 = v86;
              specialized GraphCompiler.floatValue(from:)(v43);
              if (v3)
              {
                v96 = v51;
                outlined destroy of NodePersonality(&v96);
                v97 = v50;
                outlined destroy of [Input](&v97, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
                v98 = v52;
                outlined destroy of [Input](&v98, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
                outlined consume of NodePersonality(v43);
                v92 = v63;
                outlined destroy of [Input](&v92, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
                v93 = v64;
                result = outlined destroy of [Input](&v93, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
                *v62 = v3;
              }

              else
              {
                specialized GraphCompiler.floatValue(from:)(v51);
                *&v71 = 0x6D616C635F646F6CLL;
                *(&v71 + 1) = 0xEA00000000005F70;
                v60 = dispatch thunk of CustomStringConvertible.description.getter();
                MEMORY[0x266771550](v60);

                MEMORY[0x266771550](95, 0xE100000000000000);
                v61 = dispatch thunk of CustomStringConvertible.description.getter();
                MEMORY[0x266771550](v61);

                outlined consume of NodePersonality(v43);
                v90 = v63;
                outlined destroy of [Input](&v90, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
                v91 = v64;
                outlined destroy of [Input](&v91, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
                outlined consume of NodePersonality(v51);
                v94 = v50;
                outlined destroy of [Input](&v94, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
                v95 = v52;
                result = outlined destroy of [Input](&v95, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
                *a3 = v71;
              }
            }

            else
            {
              _StringGuts.grow(_:)(33);

              *&v71 = 0xD00000000000001FLL;
              *(&v71 + 1) = 0x8000000265F309B0;
              MEMORY[0x266771550](v19, v18);
              lazy protocol witness table accessor for type GraphCompilerErrors and conformance GraphCompilerErrors();
              v58 = swift_allocError();
              *v59 = v71;
              *(v59 + 16) = 0;
              swift_willThrow();
              v87 = v43;
              outlined destroy of NodePersonality(&v87);
              v88 = v63;
              outlined destroy of [Input](&v88, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
              v89 = v64;
              result = outlined destroy of [Input](&v89, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
              *v62 = v58;
            }

            return result;
          }

LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
          return result;
        }

        *&v71 = 0;
        *(&v71 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(33);

        v56 = 0x8000000265F30990;
        v57 = 0xD00000000000001FLL;
      }

      else
      {
        *&v71 = 0;
        *(&v71 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(23);

        v56 = 0x8000000265F30970;
        v57 = 0xD000000000000015;
      }

      *&v71 = v57;
      *(&v71 + 1) = v56;
      MEMORY[0x266771550](v19, v18);
      goto LABEL_16;
    }
  }

  if (!*(v16 + 16))
  {
    __break(1u);
    goto LABEL_40;
  }

  v21 = *(v16 + 40);
  v22 = *(v16 + 48);
  v23 = *(v16 + 56);
  v24 = *(v16 + 64);
  v25 = *(v16 + 72);
  v26 = *(v16 + 80);
  v105[0] = *(v16 + 32);
  v105[1] = v21;
  v105[2] = v22;
  v105[3] = v23;
  v105[4] = v24;
  v106 = v25;
  v107 = v26;

  UserGraph.node(connectedTo:)(v105, &v76);

  v27 = v77;
  if (v77)
  {
    v28 = v76;
    v29 = v78;
    specialized GraphCompiler.constantValue(from:)(v76, v79);
    if (v3)
    {
      outlined consume of NodePersonality(v28);
      v103 = v27;
      outlined destroy of [Input](&v103, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v104 = v29;
      result = outlined destroy of [Input](&v104, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
      *a2 = v3;
      return result;
    }

    if ((SGDataTypeStorage.bitPattern.getter() & 0x100000000) == 0)
    {
      outlined init with copy of SGDataTypeStorage(v79, &v71);
      _StringGuts.grow(_:)(17);

      *&v71 = 0x73696E615F78616DLL;
      *(&v71 + 1) = 0xEF5F79706F72746FLL;
      v53 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v53);

      outlined destroy of SGDataTypeStorage(v79);
      outlined consume of NodePersonality(v28);
      v54 = v71;
      v101 = v27;
      outlined destroy of [Input](&v101, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v102 = v29;
      result = outlined destroy of [Input](&v102, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
      *v65 = v54;
      return result;
    }

    *&v68 = 0;
    *(&v68 + 1) = 0xE000000000000000;
    outlined init with copy of SGDataTypeStorage(v79, &v71);
    _StringGuts.grow(_:)(27);
    MEMORY[0x266771550](0xD000000000000018, 0x8000000265F30A00);
    v73 = v79[2];
    v74 = v79[3];
    v75 = v80;
    v71 = v79[0];
    v72 = v79[1];
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x266771550](32, 0xE100000000000000);
    lazy protocol witness table accessor for type GraphCompilerErrors and conformance GraphCompilerErrors();
    v34 = swift_allocError();
    *v55 = v68;
    *(v55 + 16) = 0;
    swift_willThrow();
    outlined destroy of SGDataTypeStorage(v79);
    outlined consume of NodePersonality(v28);
    v99 = v27;
    outlined destroy of [Input](&v99, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    v100 = v29;
    result = outlined destroy of [Input](&v100, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
  }

  else
  {
    _StringGuts.grow(_:)(40);

    *&v71 = 0xD000000000000026;
    *(&v71 + 1) = 0x8000000265F309D0;
    MEMORY[0x266771550](v19, v18);
    lazy protocol witness table accessor for type GraphCompilerErrors and conformance GraphCompilerErrors();
    v34 = swift_allocError();
    *v35 = v71;
    *(v35 + 16) = 0;
    result = swift_willThrow();
  }

  *a2 = v34;
  return result;
}

uint64_t closure #2 in GraphCompiler.extractSamplerNodes(in:into:device:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X2>, void *a3@<X3>, uint64_t a4@<X8>)
{
  v8 = *a1;
  v7 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v25 = *(a1 + 32);
  v21 = *(a1 + 40);
  v11 = a2[9];
  v23[8] = a2[8];
  v24[0] = v11;
  *(v24 + 9) = *(a2 + 153);
  v12 = a2[5];
  v23[4] = a2[4];
  v23[5] = v12;
  v13 = a2[7];
  v23[6] = a2[6];
  v23[7] = v13;
  v14 = a2[1];
  v23[0] = *a2;
  v23[1] = v14;
  v15 = a2[3];
  v23[2] = a2[2];
  v23[3] = v15;
  outlined init with copy of UserGraph(v23, v22);
  v16 = specialized GraphCompiler.samplerName(for:in:)(v7, v23);
  if (v4)
  {
    result = outlined destroy of UserGraph(v23);
    *a3 = v4;
  }

  else
  {
    v19 = v16;
    v20 = v17;
    outlined destroy of UserGraph(v23);
    *a4 = v19;
    *(a4 + 8) = v20;
    *(a4 + 16) = v8;
    *(a4 + 24) = v7;
    *(a4 + 32) = v9;
    *(a4 + 40) = v10;
    *(a4 + 48) = v25;
    *(a4 + 56) = v21;
    outlined copy of NodePersonality(v8);
  }

  return result;
}

uint64_t closure #3 in GraphCompiler.extractSamplerNodes(in:into:device:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v28 = result;
  v4 = *(a2 + 16);
  if (!v4)
  {
    v25 = MEMORY[0x277D84F90];
LABEL_27:
    *a4 = v25;
    return result;
  }

  v5 = 0;
  v27 = a2 + 32;
  v25 = MEMORY[0x277D84F90];
  v26 = *(a2 + 16);
  while (v5 < v4)
  {
    v9 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_29;
    }

    v10 = (v27 + (v5 << 6));
    v12 = *v10;
    v11 = v10[1];
    v13 = v10[2];
    v31 = v5 + 1;

    outlined copy of NodePersonality(v13);

    v14 = [a3 registryID];
    v16 = *v28;
    v15 = v28[1];
    v30 = v28[2];
    v17 = *(v15 + 16);
    if (*v28)
    {

      v6 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(v14, v12, v11, v15 + 32, v17, (v16 + 16), v16 + 32);
      v8 = v7;

      if (v8)
      {
        goto LABEL_4;
      }

      if ((v6 & 0x8000000000000000) != 0)
      {
        goto LABEL_30;
      }

LABEL_19:
      if (v6 >= *(v30 + 16))
      {
        goto LABEL_31;
      }

      v20 = *(v30 + 8 * v6 + 32);
      swift_unknownObjectRetain();
      outlined consume of NodePersonality(v13);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v25[2] + 1, 1, v25);
        v25 = result;
      }

      v4 = v26;
      v5 = v31;
      v22 = v25[2];
      v21 = v25[3];
      if (v22 >= v21 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v25);
        v25 = result;
      }

      v25[2] = v22 + 1;
      v23 = &v25[3 * v22];
      v23[4] = v12;
      v23[5] = v11;
      v23[6] = v20;
      if (v9 == v26)
      {
        goto LABEL_27;
      }
    }

    else
    {
      if (v17)
      {
        v6 = 0;
        v18 = (v15 + 48);
        do
        {
          if (*(v18 - 2) == v14)
          {
            result = *(v18 - 1);
            if (result == v12 && *v18 == v11)
            {
              goto LABEL_19;
            }

            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            if (result)
            {
              goto LABEL_19;
            }
          }

          ++v6;
          v18 += 3;
        }

        while (v17 != v6);
      }

LABEL_4:

      outlined consume of NodePersonality(v13);

      v4 = v26;
      v5 = v31;
      if (v9 == v26)
      {
        goto LABEL_27;
      }
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

char *GraphCompiler.extract(node:from:withName:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v63 = a1;
  UserGraph.connectedUpstreamSubgraph(rootedAt:)(a1, &v85);
  v5 = v85;
  v6 = *(&v86 + 1);
  v7 = *(&v87 + 1);
  v125 = *(&v85 + 1);
  v130 = v86;
  v126 = v86;
  v127 = v87;
  v8 = MEMORY[0x277D84F90];
  v106 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11ShaderGraph0cD4NodeV2IDV_AGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  specialized UserGraph.init(id:label:inputs:outputs:)(0, 1886217588, 0xE400000000000000, v8, v8, &v96);
  specialized Sequence.forEach(_:)(v5, &v96, &v106);
  specialized Sequence.forEach(_:)(&v125, &v106, &v96);
  type metadata accessor for UserGraphCompiler();
  v9 = swift_allocObject();
  _s11ShaderGraph04UserB8CompilerC14CompileContextVSgWOi0_(v128);
  v10 = v128[11];
  *(v9 + 176) = v128[10];
  *(v9 + 192) = v10;
  *(v9 + 208) = v129;
  v11 = v128[7];
  *(v9 + 112) = v128[6];
  *(v9 + 128) = v11;
  v12 = v128[9];
  *(v9 + 144) = v128[8];
  *(v9 + 160) = v12;
  v13 = v128[3];
  *(v9 + 48) = v128[2];
  *(v9 + 64) = v13;
  v14 = v128[5];
  *(v9 + 80) = v128[4];
  *(v9 + 96) = v14;
  v15 = v128[1];
  *(v9 + 16) = v128[0];
  *(v9 + 32) = v15;
  v123 = v104;
  v124[0] = v105[0];
  *(v124 + 9) = *(v105 + 9);
  v119 = v100;
  v120 = v101;
  v121 = v102;
  v122 = v103;
  v118[0] = v96;
  v118[1] = v97;
  v118[2] = v98;
  v118[3] = v99;
  type metadata accessor for MetalShaderProgram();
  v16 = swift_allocObject();
  *(v16 + 16) = v8;
  *(v16 + 24) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11ShaderGraph14FunctionNodeIDV_AC05MetaleF0_pTt0g5Tf4g_n(v8);
  *(v16 + 32) = v8;
  *(v16 + 40) = v8;
  *(v16 + 48) = 1;
  v17 = UserGraphCompiler.compile(sourceProgram:into:)(v118, v16);
  if (v4)
  {

LABEL_14:
    v92 = v103;
    v93 = v104;
    v94[0] = v105[0];
    *(v94 + 9) = *(v105 + 9);
    v89 = v100;
    v90 = v101;
    v91 = v102;
    v85 = v96;
    v86 = v97;
    v87 = v98;
    v88 = v99;
    outlined destroy of UserGraph(&v85);
LABEL_15:

    return v17;
  }

  *&v59 = v5;

  v18 = v106;
  if (!*(v106 + 16))
  {
    __break(1u);
    goto LABEL_20;
  }

  v60 = v17;
  v19 = v119;
  v20 = specialized __RawDictionaryStorage.find<A>(_:)(*(v63 + 24));
  if ((v21 & 1) == 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v22 = *(*(v18 + 56) + 8 * v20);
  if (v22 == -7)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if ((v22 & 0x8000000000000000) != 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v22 >= *(v19 + 16))
  {
LABEL_23:
    __break(1u);
LABEL_24:
    swift_once();
LABEL_17:
    *(v6 + 48) = static MetalDataType.void;
    v46 = v65;
    v26 = v66;
    __swift_project_boxed_opaque_existential_1(v64, v65);
    v47 = *(v26 + 2);

    v48 = v47(v46, v26);
    v17 = v60;
    v49 = *(v60 + 6);
    if (!__OFADD__(v49, 1))
    {
      v50 = v48;
      *(v60 + 6) = v49 + 1;
      type metadata accessor for MetalFunctionDefinitionNode();
      v51 = swift_allocObject();
      v51[4] = v50;
      v51[5] = a3;
      v51[6] = a4;
      v51[7] = 0;
      v51[8] = 0xE000000000000000;
      v51[9] = v6;
      v52 = MEMORY[0x277D84F90];
      v51[2] = v49;
      v51[3] = v52;

      v53 = specialized MetalShaderProgram.add<A>(_:)(v51);

      (*(*v53 + 208))(0x6863746974735B5BLL, 0xEE005D5D656C6261);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph17MetalFunctionNode_pGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph17MetalFunctionNode_pGMR);
      v54 = swift_allocObject();
      *(v54 + 16) = v59;
      outlined init with copy of MetalFunctionNode(v64, v54 + 32);
      (*(*v53 + 264))(v54);
      outlined consume of NodePersonality(v63);

      __swift_destroy_boxed_opaque_existential_1Tm(v64);
      v55 = v105[0];
      v7[8] = v104;
      v7[9] = v55;
      *(v7 + 153) = *(v105 + 9);
      v71 = v100;
      v72 = v101;
      v56 = v103;
      v7[6] = v102;
      v7[7] = v56;
      v67 = v96;
      v68 = v97;
      v69 = v98;
      v70 = v99;
      outlined destroy of UserGraph(&v67);
      goto LABEL_15;
    }

    __break(1u);
    goto LABEL_26;
  }

  v23 = v19 + 48 * v22;
  v24 = *(v23 + 40);
  v63 = *(v23 + 32);
  v25 = *(v23 + 48);
  v26 = *(v23 + 56);
  v27 = *(v23 + 64);
  v58 = *(v23 + 72);
  swift_beginAccess();
  v28 = *(v9 + 160);
  v29 = *(v9 + 192);
  v7 = &v67;
  v82 = *(v9 + 176);
  v83 = v29;
  v30 = *(v9 + 96);
  v31 = *(v9 + 128);
  v78 = *(v9 + 112);
  v79 = v31;
  v32 = *(v9 + 128);
  v33 = *(v9 + 160);
  v80 = *(v9 + 144);
  v81 = v33;
  v34 = *(v9 + 32);
  v35 = *(v9 + 64);
  v74 = *(v9 + 48);
  v75 = v35;
  v36 = *(v9 + 64);
  v37 = *(v9 + 96);
  v76 = *(v9 + 80);
  v77 = v37;
  v38 = *(v9 + 32);
  v73[0] = *(v9 + 16);
  v73[1] = v38;
  v39 = *(v9 + 192);
  v94[1] = v82;
  v94[2] = v39;
  v91 = v78;
  v92 = v32;
  v93 = v80;
  v94[0] = v28;
  v87 = v74;
  v88 = v36;
  v89 = v76;
  v90 = v30;
  v84 = *(v9 + 208);
  v95 = *(v9 + 208);
  v85 = v73[0];
  v86 = v34;
  if (getEnumTag for IOAttachment(&v85) != 1)
  {
    specialized ShaderGraphNode.output(labeled:)(&v107, 7632239, 0xE300000000000000, v25);
    if (!v108)
    {
      v64[0] = 0;
      v64[1] = 0xE000000000000000;
      outlined copy of NodePersonality(v63);

      outlined init with copy of [Input](v73, &v67, &_s11ShaderGraph04UserB8CompilerC14CompileContextVSgMd, &_s11ShaderGraph04UserB8CompilerC14CompileContextVSgMR);
      MEMORY[0x266771550](7632239, 0xE300000000000000);
      MEMORY[0x266771550](32, 0xE100000000000000);
      *&v67 = v63;
      *(&v67 + 1) = v24;
      *&v68 = v25;
      *(&v68 + 1) = v26;
      *&v69 = v27;
      BYTE8(v69) = v58;
      _print_unlocked<A, B>(_:_:)();
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v44 = 14;
      *(v44 + 8) = 0;
      *(v44 + 16) = 0xE000000000000000;
      swift_willThrow();

      outlined destroy of [Input](v73, &_s11ShaderGraph04UserB8CompilerC14CompileContextVSgMd, &_s11ShaderGraph04UserB8CompilerC14CompileContextVSgMR);
      outlined consume of NodePersonality(v63);

      goto LABEL_14;
    }

    v26 = v109;
    v111 = v107;
    v112 = v108;
    v113[0] = v109[0];
    v113[1] = v109[1];
    v114 = v110;
    v40 = v95;
    if (!*(v95 + 16))
    {
      goto LABEL_27;
    }

    v26 = v113;
    outlined copy of NodePersonality(v63);

    outlined init with copy of [Input](v73, &v67, &_s11ShaderGraph04UserB8CompilerC14CompileContextVSgMd, &_s11ShaderGraph04UserB8CompilerC14CompileContextVSgMR);
    v41 = specialized __RawDictionaryStorage.find<A>(_:)();
    if ((v42 & 1) == 0)
    {

      v57 = &v115;
      goto LABEL_29;
    }

    v43 = *(*(v40 + 56) + 8 * v41);

    v116 = v113[0];
    outlined destroy of String(&v116);
    outlined destroy of [Input](v73, &_s11ShaderGraph04UserB8CompilerC14CompileContextVSgMd, &_s11ShaderGraph04UserB8CompilerC14CompileContextVSgMR);
    (*(*v17 + 272))(v64, v43);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS4name_11ShaderGraph13MetalDataTypeC4typetGMd, &_ss23_ContiguousArrayStorageCySS4name_11ShaderGraph13MetalDataTypeC4typetGMR);
    v6 = swift_allocObject();
    v59 = xmmword_265F1F670;
    *(v6 + 16) = xmmword_265F1F670;
    *(v6 + 32) = 1684631414;
    *(v6 + 40) = 0xE400000000000000;
    if (one-time initialization token for void == -1)
    {
      goto LABEL_17;
    }

    goto LABEL_24;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  outlined copy of NodePersonality(v63);

  outlined init with copy of [Input](v73, &v67, &_s11ShaderGraph04UserB8CompilerC14CompileContextVSgMd, &_s11ShaderGraph04UserB8CompilerC14CompileContextVSgMR);

  v57 = &v117;
LABEL_29:
  *v57 = *v26;
  outlined destroy of String(v57);
  result = outlined destroy of [Input](v73, &_s11ShaderGraph04UserB8CompilerC14CompileContextVSgMd, &_s11ShaderGraph04UserB8CompilerC14CompileContextVSgMR);
  __break(1u);
  return result;
}

uint64_t closure #1 in GraphCompiler.extract(node:from:withName:)(unint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v3 = a1[1];
  v28 = *a1;
  v4 = a1[2];
  v29 = a1[3];
  v5 = *(v3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v26 = a1[2];
    *&v32 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
    v6 = v32;
    v7 = (v3 + 56);
    do
    {
      v9 = *(v7 - 2);
      v8 = *(v7 - 1);
      v10 = *v7;
      *&v32 = v6;
      v12 = *(v6 + 16);
      v11 = *(v6 + 24);

      if (v12 >= v11 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
        v6 = v32;
      }

      *(v6 + 16) = v12 + 1;
      v13 = (v6 + 24 * v12);
      v13[4] = v8;
      v13[5] = v10;
      v13[6] = v9;
      v7 += 7;
      --v5;
    }

    while (v5);
    v4 = v26;
  }

  v14 = *(v4 + 16);
  v15 = MEMORY[0x277D84F90];
  if (v14)
  {
    v27 = v6;
    *&v32 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
    v15 = v32;
    v16 = (v4 + 56);
    do
    {
      v17 = *(v16 - 2);
      v18 = *(v16 - 1);
      v19 = *v16;
      *&v32 = v15;
      v21 = *(v15 + 16);
      v20 = *(v15 + 24);

      if (v21 >= v20 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
        v6 = v27;
        v15 = v32;
      }

      *(v15 + 16) = v21 + 1;
      v22 = (v15 + 24 * v21);
      v22[4] = v18;
      v22[5] = v19;
      v22[6] = v17;
      v16 += 7;
      --v14;
    }

    while (v14);
  }

  UserGraph.insertNode(inputs:outputs:shaderGraphData:)(v6, v15, v28, &v32);

  v23 = v34;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = *a3;
  *a3 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v23, v29, isUniquelyReferenced_nonNull_native);
  v37 = v32;
  outlined destroy of NodePersonality(&v37);
  v36 = *(&v32 + 1);
  outlined destroy of [Input](&v36, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  v35 = v33;
  outlined destroy of [Input](&v35, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
  *a3 = v31;
}