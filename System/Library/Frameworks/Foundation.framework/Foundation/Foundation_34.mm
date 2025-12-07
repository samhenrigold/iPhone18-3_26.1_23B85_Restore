double specialized _SwiftURL.URLStringBuilder.init(parseInfo:original:)@<D0>(_BYTE *a1@<X0>, char a2@<W1>, _OWORD *a3@<X8>)
{
  v144 = a3;
  if (a2)
  {
    v4 = a1[220];
    if ((a1[48] & 1) == 0)
    {
LABEL_3:
      v5 = String.subscript.getter();
      *&v143 = MEMORY[0x1865CAE80](v5);
      *(&v143 + 1) = v6;

      goto LABEL_6;
    }
  }

  else
  {
    v4 = 0;
    if ((a1[48] & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v143 = 0uLL;
LABEL_6:
  v7 = a1[72];
  LODWORD(v142) = v4;
  if (v7)
  {
    v145 = 0;
    v8 = 0;
  }

  else
  {
    v9 = String.subscript.getter();
    v13 = v12;
    if (v4)
    {
      if ((v9 ^ v10) >> 14)
      {
        *&v156 = v9;
        *(&v156 + 1) = v10;
        v157 = v11;
        v158 = v12;
        MEMORY[0x1EEE9AC00](v9);
        v129 = &v156;
        v130 = MEMORY[0x1E69E7CD0];
        v131 = 4;
        v23 = v22;
        v25 = v24;
        v27 = v26;

        v28 = v27;
        v29 = v25;
        v30 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SSSg_Tg5(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v128, v23, v27, v25, v13);
        v32 = v31;

        v145 = v32;
        if (v32 == 1)
        {

          v8 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSs_Ss8UTF8ViewVTt2B5(v23, v28, v29, v13, MEMORY[0x1E69E7CD0], 4);
          v145 = v33;
          swift_bridgeObjectRelease_n();
        }

        else
        {

          v8 = v30;
        }

        LOBYTE(v4) = v142;
      }

      else
      {

        v8 = 0;
        v145 = 0xE000000000000000;
      }
    }

    else
    {
      v8 = MEMORY[0x1865CAE80](v9);
      v145 = v14;
    }
  }

  if (a1[96])
  {
    v141 = 0;
    v15 = 0;
  }

  else
  {
    v16 = String.subscript.getter();
    v20 = v19;
    if ((v4 & 2) != 0)
    {
      if ((v16 ^ v17) >> 14)
      {
        v135 = v8;
        *&v156 = v16;
        *(&v156 + 1) = v17;
        v157 = v18;
        v158 = v19;
        MEMORY[0x1EEE9AC00](v16);
        v129 = &v156;
        v130 = MEMORY[0x1E69E7CD0];
        v131 = 4;
        v35 = v34;
        v37 = v36;
        v39 = v38;

        v40 = v35;
        v41 = v35;
        v42 = v39;
        v43 = v37;
        v44 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SSSg_Tg5(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v128, v41, v39, v37, v20);
        v15 = v45;

        if (v15 == 1)
        {

          v141 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSs_Ss8UTF8ViewVTt2B5(v40, v42, v43, v20, MEMORY[0x1E69E7CD0], 4);
          v15 = v46;
          swift_bridgeObjectRelease_n();
        }

        else
        {
          v141 = v44;
        }

        v8 = v135;
        LOBYTE(v4) = v142;
      }

      else
      {

        v141 = 0;
        v15 = 0xE000000000000000;
      }
    }

    else
    {
      v141 = MEMORY[0x1865CAE80](v16);
      v15 = v21;
    }
  }

  v47 = a1[120];
  v140 = v15;
  if (v47)
  {
    v138 = 0;
    v139 = 0;
    if (a1[144])
    {
      goto LABEL_52;
    }

LABEL_34:
    v55 = String.subscript.getter();
    v56 = MEMORY[0x1865CAE80](v55);
    v136 = v57;
    v137 = v56;

    v58 = a1[168];
    if ((v4 & 8) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_35;
  }

  v48 = String.subscript.getter();
  v52 = v51;
  if ((v4 & 4) != 0)
  {
    if (!((v48 ^ v49) >> 14))
    {

      v138 = 0xE000000000000000;
      v139 = 0;
      if (a1[144])
      {
        goto LABEL_52;
      }

      goto LABEL_34;
    }

    v135 = v8;
    *&v156 = v48;
    *(&v156 + 1) = v49;
    v157 = v50;
    v158 = v51;
    MEMORY[0x1EEE9AC00](v48);
    v129 = &v156;
    v130 = MEMORY[0x1E69E7CD0];
    v131 = 4;
    v71 = v70;
    v73 = v72;
    v75 = v74;

    v76 = v71;
    v77 = v71;
    v78 = v75;
    v79 = v73;
    v80 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SSSg_Tg5(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v128, v77, v75, v73, v52);
    v82 = v81;

    if (v82 == 1)
    {

      v83 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSs_Ss8UTF8ViewVTt2B5(v76, v78, v79, v52, MEMORY[0x1E69E7CD0], 4);
      v138 = v84;
      v139 = v83;
      swift_bridgeObjectRelease_n();
    }

    else
    {
      v138 = v82;
      v139 = v80;
    }

    v8 = v135;
    LOBYTE(v4) = v142;
    v15 = v140;
    if ((a1[144] & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v53 = MEMORY[0x1865CAE80](v48);
    v138 = v54;
    v139 = v53;

    if ((a1[144] & 1) == 0)
    {
      goto LABEL_34;
    }
  }

LABEL_52:
  v136 = 0;
  v137 = 0;
  v58 = a1[168];
  if ((v4 & 8) == 0)
  {
LABEL_53:
    if (v58)
    {
      v87 = MEMORY[0x1865CBC20](0, 0xE000000000000000);
    }

    else
    {
      v87 = String.subscript.getter();
    }

    v146 = MEMORY[0x1865CAE80](v87);
    v67 = v88;

    if ((a1[192] & 1) == 0)
    {
      goto LABEL_57;
    }

LABEL_49:
    v85 = 0;
    v86 = 0;
    goto LABEL_64;
  }

LABEL_35:
  if (v58)
  {
    v59 = MEMORY[0x1865CBC20](0, 0xE000000000000000);
  }

  else
  {
    v59 = String.subscript.getter();
  }

  v63 = v59;
  v64 = v60;
  v65 = v61;
  v66 = v62;
  if ((v59 ^ v60) >> 14)
  {
    *&v156 = v59;
    *(&v156 + 1) = v60;
    v157 = v61;
    v158 = v62;
    MEMORY[0x1EEE9AC00](v59);
    v129 = &v156;
    v130 = MEMORY[0x1E69E7CD0];
    v131 = 4;

    v146 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SSSg_Tg5(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v128, v63, v64, v65, v66);
    v67 = v68;

    if (v67 == 1)
    {

      v146 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSs_Ss8UTF8ViewVTt2B5(v63, v64, v65, v66, MEMORY[0x1E69E7CD0], 4);
      v67 = v69;
      swift_bridgeObjectRelease_n();
    }

    else
    {
    }

    LOBYTE(v4) = v142;
    v15 = v140;
    if (!v67)
    {
      v146 = 0;
      v67 = 0xE000000000000000;
    }

    if ((a1[192] & 1) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_49;
  }

  v146 = 0;
  v67 = 0xE000000000000000;
  LOBYTE(v4) = v142;
  if (a1[192])
  {
    goto LABEL_49;
  }

LABEL_57:
  v89 = String.subscript.getter();
  v93 = v92;
  if ((v4 & 0x10) != 0)
  {
    if ((v89 ^ v90) >> 14)
    {
      v134 = v67;
      v135 = v8;
      v133 = &v132;
      *&v156 = v89;
      *(&v156 + 1) = v90;
      v157 = v91;
      v158 = v92;
      MEMORY[0x1EEE9AC00](v89);
      v129 = &v156;
      v130 = MEMORY[0x1E69E7CD0];
      v131 = 4;
      v97 = v96;
      v99 = v98;
      v101 = v100;

      v102 = v97;
      v103 = v99;
      v104 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SSSg_Tg5(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v128, v97, v101, v99, v93);
      v86 = v105;

      if (v86 == 1)
      {

        v106 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSs_Ss8UTF8ViewVTt2B5(v102, v101, v103, v93, MEMORY[0x1E69E7CD0], 4);
        v86 = v107;
        v85 = v106;
        swift_bridgeObjectRelease_n();
        v67 = v134;
        v8 = v135;
        LOBYTE(v4) = v142;
        v15 = v140;
      }

      else
      {

        v67 = v134;
        v8 = v135;
        LOBYTE(v4) = v142;
        v15 = v140;
        v85 = v104;
      }
    }

    else
    {

      v85 = 0;
      v86 = 0xE000000000000000;
    }
  }

  else
  {
    v94 = MEMORY[0x1865CAE80](v89);
    v86 = v95;
    v85 = v94;
  }

LABEL_64:
  if (a1[216] == 1)
  {

    v108 = 0;
    v109 = 0;
  }

  else
  {
    v133 = v85;
    v134 = v67;
    v135 = v8;
    v110 = String.subscript.getter();
    v114 = v110;
    v115 = v111;
    v116 = v112;
    v117 = v113;
    if ((v4 & 0x20) != 0)
    {
      if ((v110 ^ v111) >> 14)
      {
        v142 = v128;
        *&v156 = v110;
        *(&v156 + 1) = v111;
        v157 = v112;
        v158 = v113;
        MEMORY[0x1EEE9AC00](v110);
        v119 = MEMORY[0x1E69E7CD0];
        *&v128[-32] = &v156;
        *&v128[-24] = v119;
        *&v128[-16] = 4;

        v108 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SSSg_Tg5(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, &v128[-48], v114, v115, v116, v117);
        v109 = v120;

        if (v109 == 1)
        {

          v108 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSs_Ss8UTF8ViewVTt2B5(v114, v115, v116, v117, MEMORY[0x1E69E7CD0], 4);
          v109 = v121;
          swift_bridgeObjectRelease_n();
        }

        else
        {
        }
      }

      else
      {

        v108 = 0;
        v109 = 0xE000000000000000;
      }
    }

    else
    {
      v108 = MEMORY[0x1865CAE80](v110, v111, v112, v113);
      v109 = v118;
    }

    v67 = v134;
    v8 = v135;
    v15 = v140;
    v85 = v133;
  }

  v148 = v143;
  *&v149 = v8;
  *(&v149 + 1) = v145;
  *&v150 = v141;
  *(&v150 + 1) = v15;
  *&v151 = v139;
  *(&v151 + 1) = v138;
  *&v152 = v137;
  *(&v152 + 1) = v136;
  *&v153 = v146;
  *(&v153 + 1) = v67;
  *&v154 = v85;
  *(&v154 + 1) = v86;
  *&v155 = v108;
  *(&v155 + 1) = v109;
  v156 = v143;
  v157 = v8;
  v158 = v145;
  v159 = v141;
  v160 = v15;
  v161 = v139;
  v162 = v138;
  v163 = v137;
  v164 = v136;
  v165 = v146;
  v166 = v67;
  v167 = v85;
  v168 = v86;
  v169 = v108;
  v170 = v109;
  outlined init with copy of _SwiftURL.URLStringBuilder(&v148, &v147);
  outlined destroy of _SwiftURL.URLStringBuilder(&v156);
  v122 = v153;
  v123 = v144;
  v144[4] = v152;
  v123[5] = v122;
  v124 = v155;
  v123[6] = v154;
  v123[7] = v124;
  v125 = v149;
  *v123 = v148;
  v123[1] = v125;
  result = *&v150;
  v127 = v151;
  v123[2] = v150;
  v123[3] = v127;
  return result;
}

void URL._swiftURL.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Class = object_getClass(*v0);
  if (Class == _TtC10Foundation9_SwiftURL && v1 != 0)
  {
    swift_unknownObjectRetain();
    return;
  }

  if (Class == _TtC10Foundation18_BridgedNSSwiftURL && v1 != 0)
  {

    return;
  }

  if (!_foundation_swift_nsurl_feature_enabled())
  {
    goto LABEL_22;
  }

  ObjectType = swift_getObjectType();
  v7 = (*(v2 + 432))(ObjectType, v2);
  v8 = [v7 _trueSelf];

  if (!v8)
  {
    __break(1u);
    return;
  }

  if (!_foundation_swift_nsurl_feature_enabled())
  {
    v13 = type metadata accessor for _BridgedURL();
    v14 = objc_allocWithZone(v13);
    *&v14[OBJC_IVAR____TtC10Foundation11_BridgedURL__url] = v8;
    v25.receiver = v14;
    v15 = v8;
    v16 = objc_msgSendSuper2(&v25, sel_init, v24.receiver, v24.super_class, v25.receiver, v13);
LABEL_18:
    v19 = v16;
    v12 = _BridgedURL.convertingFileReference()();

    goto LABEL_19;
  }

  type metadata accessor for _NSSwiftURL();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    v17 = type metadata accessor for _BridgedURL();
    v18 = objc_allocWithZone(v17);
    *&v18[OBJC_IVAR____TtC10Foundation11_BridgedURL__url] = v8;
    v24.receiver = v18;
    v15 = v8;
    v16 = objc_msgSendSuper2(&v24, sel_init, v24.receiver, v17, v25.receiver, v25.super_class);
    goto LABEL_18;
  }

  v10 = v9;
  type metadata accessor for _BridgedNSSwiftURL();
  *(swift_allocObject() + 16) = v10;
  v11 = v8;
  v12 = _BridgedNSSwiftURL.convertingFileReference()();

LABEL_19:
  if (object_getClass(v12) != _TtC10Foundation9_SwiftURL || !v12)
  {
    swift_unknownObjectRelease();
LABEL_22:
    v20 = swift_getObjectType();
    v21 = (*(v2 + 104))(v20, v2);
    v23 = v22;
    (*(v2 + 120))(&v27, v20, v2);
    v26 = v27;
    specialized _SwiftURL.__allocating_init(stringOrEmpty:relativeTo:)(v21, v23, &v26);
  }
}

Swift::String_optional __swiftcall _SwiftURL.password(percentEncoded:)(Swift::Bool percentEncoded)
{
  v3 = v1[2];
  if (v3[72] == 1)
  {
    if (v3[96])
    {
      if (v3[120] == 1 && v3[144] == 1 && v1[3])
      {
        v4 = v1[4];
        ObjectType = swift_getObjectType();
        v6 = *(v4 + 184);
        swift_unknownObjectRetain();
        v7 = v6(percentEncoded, ObjectType, v4);
        v9 = v8;
        swift_unknownObjectRelease();
LABEL_11:
        v11 = v9;
        v10 = v7;
        goto LABEL_23;
      }

      goto LABEL_8;
    }
  }

  else if (v3[96])
  {
LABEL_8:
    v10 = 0;
    v11 = 0;
    goto LABEL_23;
  }

  v12 = String.subscript.getter();
  v16 = v15;
  if (percentEncoded)
  {
    v7 = MEMORY[0x1865CAE80](v12);
    v9 = v17;

    goto LABEL_11;
  }

  if ((v3[220] & 2) != 0)
  {
    if ((v12 ^ v13) >> 14)
    {
      v49 = v12;
      v50 = v13;
      v51 = v14;
      v52 = v15;
      MEMORY[0x1EEE9AC00](v12);
      v46 = &v49;
      v47 = MEMORY[0x1E69E7CD0];
      v48 = 4;
      v33 = v32;
      v35 = v34;
      v37 = v36;

      v38 = v33;
      v39 = v35;
      v40 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SSSg_Tg5(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v45, v33, v37, v35, v16);
      v42 = v41;

      if (v42 != 1)
      {

        v11 = v42;
        v10 = v40;
        goto LABEL_23;
      }

      v7 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSs_Ss8UTF8ViewVTt2B5(v38, v37, v39, v16, MEMORY[0x1E69E7CD0], 4);
      v9 = v43;
      swift_bridgeObjectRelease_n();
      goto LABEL_11;
    }

LABEL_17:

    v10 = 0;
    v11 = 0xE000000000000000;
    goto LABEL_23;
  }

  if (!((v12 ^ v13) >> 14))
  {
    goto LABEL_17;
  }

  v18 = v1[5];
  v49 = v12;
  v50 = v13;
  v51 = v14;
  v52 = v15;
  MEMORY[0x1EEE9AC00](v12);
  v46 = &v49;
  v47 = MEMORY[0x1E69E7CD0];
  v48 = v18;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v25 = v20;
  v26 = v20;
  v27 = v22;
  v28 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SSSg_Tg5(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v45, v26, v24, v22, v16);
  v30 = v29;

  if (v30 == 1)
  {

    v28 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSs_Ss8UTF8ViewVTt2B5(v25, v24, v27, v16, MEMORY[0x1E69E7CD0], v18);
    v30 = v31;
    swift_bridgeObjectRelease_n();
  }

  else
  {
  }

  v10 = v28;
  v11 = v30;
LABEL_23:
  result.value._object = v11;
  result.value._countAndFlagsBits = v10;
  return result;
}

uint64_t protocol witness for _URLProtocol.hasAuthority.getter in conformance _SwiftURL()
{
  v1 = *(v0 + 16);
  if (v1[72] == 1 && (v1[96] & 1) != 0 && v1[120] == 1)
  {
    return (v1[144] ^ 1) & 1;
  }

  else
  {
    return 1;
  }
}

uint64_t String.removingDotSegments.getter(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    result = HIBYTE(a2) & 0xF;
  }

  else
  {
    result = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (result)
  {
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignCount()();
    }

    MEMORY[0x1EEE9AC00](result);
    return String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  }

  return result;
}

Swift::String __swiftcall _SwiftURL.relativePath(percentEncoded:)(Swift::Bool percentEncoded)
{
  v2 = *(v1 + 16);
  if (!percentEncoded)
  {
    if ((*(v2 + 220) & 8) != 0)
    {
      if (*(v2 + 168))
      {
        v11 = MEMORY[0x1865CBC20](0, 0xE000000000000000);
      }

      else
      {
        v11 = String.subscript.getter();
      }

      v27 = v11;
      v28 = v12;
      v29 = v13;
      v30 = v14;
      if ((v11 ^ v12) >> 14)
      {
        v40 = v11;
        v41 = v12;
        v42 = v13;
        v43 = v14;
        MEMORY[0x1EEE9AC00](v11);
        v37 = &v40;
        v38 = MEMORY[0x1E69E7CD0];
        v39 = 4;

        v8 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SSSg_Tg5(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v36, v27, v28, v29, v30);
        v10 = v33;

        if (v10 == 1)
        {

          v21 = MEMORY[0x1E69E7CD0];
          v22 = v27;
          v23 = v28;
          v24 = v29;
          v25 = v30;
          v26 = 4;
LABEL_22:
          v8 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSs_Ss8UTF8ViewVTt2B5(v22, v23, v24, v25, v21, v26);
          v10 = v34;
          swift_bridgeObjectRelease_n();
          if (v10)
          {
            goto LABEL_19;
          }

          goto LABEL_18;
        }

        goto LABEL_24;
      }
    }

    else
    {
      if (*(v2 + 168))
      {
        v4 = MEMORY[0x1865CBC20](0, 0xE000000000000000);
      }

      else
      {
        v4 = String.subscript.getter();
      }

      v15 = v4;
      v16 = v5;
      v17 = v6;
      v18 = v7;
      if ((v4 ^ v5) >> 14)
      {
        v19 = *(v1 + 40);
        v40 = v4;
        v41 = v5;
        v42 = v6;
        v43 = v7;
        MEMORY[0x1EEE9AC00](v4);
        v37 = &v40;
        v38 = MEMORY[0x1E69E7CD0];
        v39 = v19;

        v8 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SSSg_Tg5(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v36, v15, v16, v17, v18);
        v10 = v20;

        if (v10 == 1)
        {

          v21 = MEMORY[0x1E69E7CD0];
          v22 = v15;
          v23 = v16;
          v24 = v17;
          v25 = v18;
          v26 = v19;
          goto LABEL_22;
        }

LABEL_24:

        if (v10)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }
    }

LABEL_18:
    v8 = 0;
    v10 = 0xE000000000000000;
    goto LABEL_19;
  }

  if (*(v2 + 168))
  {
    v3 = MEMORY[0x1865CBC20](0, 0xE000000000000000);
  }

  else
  {
    v3 = String.subscript.getter();
  }

  v8 = MEMORY[0x1865CAE80](v3);
  v10 = v9;

LABEL_19:
  v31 = v8;
  v32 = v10;
  result._object = v32;
  result._countAndFlagsBits = v31;
  return result;
}

void NSKeyValueObservation.Helper.invalidate()()
{
  v1 = *&v0[OBJC_IVAR____TtCC10Foundation21NSKeyValueObservationP33_6DA0945A07226B3278459E9368612FF46Helper_lock];
  os_unfair_lock_lock(v1);
  v2 = *&v0[OBJC_IVAR____TtCC10Foundation21NSKeyValueObservationP33_6DA0945A07226B3278459E9368612FF46Helper_unsafeUnretainedObject];
  if (v2)
  {
    Strong = v2;
LABEL_4:
    v4 = Strong;
    closure #1 in NSKeyValueObservation.Helper.invalidate()(v0, Strong);

    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    goto LABEL_4;
  }

  os_unfair_lock_unlock(v1);
}

void closure #1 in NSKeyValueObservation.Helper.invalidate()(char *a1, void *a2)
{
  swift_unknownObjectWeakAssign();
  *&a1[OBJC_IVAR____TtCC10Foundation21NSKeyValueObservationP33_6DA0945A07226B3278459E9368612FF46Helper_unsafeUnretainedObject] = 0;
  [a2 removeObserver:a1 forKeyPath:String._bridgeToObjectiveCImpl()() context:0];
  swift_unknownObjectRelease();
  objc_setAssociatedObject(a2, a1, 0, 0);
  os_unfair_lock_unlock(*&a1[OBJC_IVAR____TtCC10Foundation21NSKeyValueObservationP33_6DA0945A07226B3278459E9368612FF46Helper_lock]);
}

char *specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v15 = *v7;
  v16 = (v15 + 32 + 32 * a1);
  result = swift_arrayDestroy();
  v18 = __OFSUB__(a3, v8);
  v19 = a3 - v8;
  if (v18)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v19)
  {
    goto LABEL_13;
  }

  v20 = *(v15 + 16);
  v18 = __OFSUB__(v20, a2);
  v21 = v20 - a2;
  if (v18)
  {
    goto LABEL_21;
  }

  result = &v16[4 * a3];
  v22 = (v15 + 32 + 32 * a2);
  if (result != v22 || result >= &v22[32 * v21])
  {
    result = memmove(result, v22, 32 * v21);
  }

  v24 = *(v15 + 16);
  v18 = __OFADD__(v24, v19);
  v25 = v24 + v19;
  if (v18)
  {
    goto LABEL_22;
  }

  *(v15 + 16) = v25;
LABEL_13:
  if (a3 < 1)
  {
    return result;
  }

  *v16 = a4;
  v16[1] = a5;
  v16[2] = a6;
  v16[3] = a7;
  if (a3 != 1)
  {
LABEL_23:

    __break(1u);
    return result;
  }
}

Swift::UInt32 __swiftcall String._queryResolveFlags()()
{
  v2 = v1;
  v3 = v0;
  v4 = 0;
  v5 = &v78;
  LOBYTE(v6) = 1;
  if ((v1 & 0x1000000000000000) != 0)
  {
    v78 = v0;
    v79 = v1;
    lazy protocol witness table accessor for type String and conformance String();
    StringProtocol._ephemeralString.getter();
    v10 = String._bridgeToObjectiveCImpl()();

    v11 = v3;
    v12 = [v10 _fastCharacterContents];
    v13 = v10;
    if (v12)
    {
      v78 = v11;
      v79 = v2;
      v14 = v11;
      StringProtocol._ephemeralString.getter();
      v15 = String._bridgeToObjectiveCImpl()();

      v16 = [v15 length];
      swift_unknownObjectRelease();
      v9 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v12, v16, 0x40u, 0);
      v3 = v14;
      if ((v9 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v9 = specialized Sequence.allSatisfy(_:)(v11, v2, 64);
      v3 = v11;
      if ((v9 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

LABEL_7:
    v54 = v4;

    goto LABEL_18;
  }

  if ((v1 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(v1) & 0xF;
    v78 = v0;
    v79 = v2 & 0xFFFFFFFFFFFFFFLL;
    v7 = &v78;
  }

  else
  {
    if ((v0 & 0x1000000000000000) == 0)
    {
      goto LABEL_101;
    }

    v7 = ((v1 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v8 = v3 & 0xFFFFFFFFFFFFLL;
  }

LABEL_6:
  v9 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v7, v8, 0x40u, 0);
  if (v9)
  {
    goto LABEL_7;
  }

LABEL_10:
  v17 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v17 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {
    v78 = v3;
    v79 = v2;
    MEMORY[0x1EEE9AC00](v9);
    v52[2] = &v78;
    v53 = 64;

    v18 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.addingPercentEncoding(forURLComponent:skipAlreadyEncoded:)specialized partial apply, v52, v3, v2);
    v54 = v4;
    if (v19)
    {
      v20 = v18;
      v21 = v19;

      v3 = v20;
    }

    else
    {
      v3 = _sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9component18skipAlreadyEncodedSSqd___AA15URLComponentSetACLLVSbtSlRd__s5UInt8V7ElementRtd__lFSS_SS8UTF8ViewVTt2g5(v3, v2, 0x40u, 0);
      v21 = v22;
    }

    v2 = v21;
  }

  else
  {
    v54 = v4;

    v3 = 0;
    v2 = 0xE000000000000000;
  }

LABEL_18:
  v78 = 0;
  v79 = 0;
  v80 = 0;
  *v81 = *v77;
  *&v81[3] = *&v77[3];
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  *(v5 + 9) = 0u;
  v5[11] = 0;
  v85 = v6;
  v86 = *&v76[3];
  *(v5 + 97) = *v76;
  v5[13] = 0;
  v5[14] = 0;
  v5[15] = v3;
  v5[16] = v2;
  v5[17] = 0;
  v5[18] = 0;
  v87 = 0;
  v23 = URLComponents._URLComponents.queryItems(percentEncoded:)(1);
  if (v23)
  {
    v24 = v23;
    v55 = v3;
    v5 = *(v23 + 16);
    if (v5)
    {
      v25 = 0;
      v3 = 0;
      v4 = v23 + 32;
      v56 = &v58 + 1;
      while (1)
      {
        if (v3 >= *(v24 + 16))
        {
          __break(1u);
LABEL_97:
          __break(1u);
LABEL_98:
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          v7 = _StringObject.sharedUTF8.getter();
          goto LABEL_6;
        }

        v26 = (v4 + 32 * v3);
        v27 = v26[2];
        v6 = v26[3];
        if (specialized Sequence<>.elementsEqual<A>(_:)(0x65766C6F7365722EuLL, 0xE800000000000000, *v26, v26[1]))
        {
          if (v6)
          {
            v28 = HIBYTE(v6) & 0xF;
            v29 = v27 & 0xFFFFFFFFFFFFLL;
            if ((v6 & 0x2000000000000000) != 0 ? HIBYTE(v6) & 0xF : v27 & 0xFFFFFFFFFFFFLL)
            {
              break;
            }
          }
        }

LABEL_22:
        if (++v3 == v5)
        {
          goto LABEL_94;
        }
      }

      if ((v6 & 0x1000000000000000) != 0)
      {

        v33 = specialized _parseInteger<A, B>(ascii:radix:)(v27, v6, 10);

        if ((v33 & 0x100000000) != 0)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }

      if ((v6 & 0x2000000000000000) != 0)
      {
        v58 = v27;
        v59 = v6 & 0xFFFFFFFFFFFFFFLL;
        if (v27 == 43)
        {
          if (!v28)
          {
            goto LABEL_100;
          }

          if (--v28)
          {
            LODWORD(v33) = 0;
            v43 = v56;
            while (1)
            {
              v44 = *v43 - 48;
              if (v44 > 9)
              {
                break;
              }

              v45 = 10 * v33;
              if ((v45 & 0xFFFFFFFF00000000) != 0)
              {
                break;
              }

              LODWORD(v33) = v45 + v44;
              if (__CFADD__(v45, v44))
              {
                break;
              }

              ++v43;
              if (!--v28)
              {
                goto LABEL_87;
              }
            }
          }
        }

        else if (v27 == 45)
        {
          if (!v28)
          {
            goto LABEL_98;
          }

          if (--v28)
          {
            LODWORD(v33) = 0;
            v37 = v56;
            while (1)
            {
              v38 = *v37 - 48;
              if (v38 > 9)
              {
                break;
              }

              v39 = 10 * v33;
              if ((v39 & 0xFFFFFFFF00000000) != 0)
              {
                break;
              }

              LODWORD(v33) = v39 - v38;
              if (v39 < v38)
              {
                break;
              }

              ++v37;
              if (!--v28)
              {
                goto LABEL_87;
              }
            }
          }
        }

        else if (v28)
        {
          LODWORD(v33) = 0;
          v48 = &v58;
          while (1)
          {
            v49 = *v48 - 48;
            if (v49 > 9)
            {
              break;
            }

            v50 = 10 * v33;
            if ((v50 & 0xFFFFFFFF00000000) != 0)
            {
              break;
            }

            LODWORD(v33) = v50 + v49;
            if (__CFADD__(v50, v49))
            {
              break;
            }

            v48 = (v48 + 1);
            if (!--v28)
            {
              goto LABEL_87;
            }
          }
        }

        goto LABEL_86;
      }

      if ((v27 & 0x1000000000000000) != 0)
      {
        v31 = ((v6 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v31 = _StringObject.sharedUTF8.getter();
      }

      v32 = *v31;
      if (v32 == 43)
      {
        if (v29 < 1)
        {
          goto LABEL_99;
        }

        v28 = v29 - 1;
        if (v29 == 1)
        {
          goto LABEL_86;
        }

        LODWORD(v33) = 0;
        if (v31)
        {
          v40 = v31 + 1;
          while (1)
          {
            v41 = *v40 - 48;
            if (v41 > 9)
            {
              goto LABEL_86;
            }

            v42 = 10 * v33;
            if ((v42 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_86;
            }

            LODWORD(v33) = v42 + v41;
            if (__CFADD__(v42, v41))
            {
              goto LABEL_86;
            }

            ++v40;
            if (!--v28)
            {
              goto LABEL_87;
            }
          }
        }
      }

      else if (v32 == 45)
      {
        if (v29 < 1)
        {
          goto LABEL_97;
        }

        v28 = v29 - 1;
        if (v29 == 1)
        {
          goto LABEL_86;
        }

        LODWORD(v33) = 0;
        if (v31)
        {
          v34 = v31 + 1;
          while (1)
          {
            v35 = *v34 - 48;
            if (v35 > 9)
            {
              goto LABEL_86;
            }

            v36 = 10 * v33;
            if ((v36 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_86;
            }

            LODWORD(v33) = v36 - v35;
            if (v36 < v35)
            {
              goto LABEL_86;
            }

            ++v34;
            if (!--v28)
            {
              goto LABEL_87;
            }
          }
        }
      }

      else
      {
        if (!v29)
        {
LABEL_86:
          LODWORD(v33) = 0;
          LOBYTE(v28) = 1;
LABEL_87:
          v57 = v28;
          if (v28)
          {
            goto LABEL_22;
          }

LABEL_21:
          v25 |= v33;
          goto LABEL_22;
        }

        LODWORD(v33) = 0;
        if (v31)
        {
          do
          {
            v46 = *v31 - 48;
            if (v46 > 9)
            {
              goto LABEL_86;
            }

            v47 = 10 * v33;
            if ((v47 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_86;
            }

            LODWORD(v33) = v47 + v46;
            if (__CFADD__(v47, v46))
            {
              goto LABEL_86;
            }

            ++v31;
          }

          while (--v29);
        }
      }

      LOBYTE(v28) = 0;
      goto LABEL_87;
    }

    v25 = 0;
LABEL_94:

    LOBYTE(v6) = 1;
    v3 = v55;
  }

  else
  {
    v25 = 0;
  }

  v58 = 0;
  v59 = 0;
  v60 = 0;
  *v61 = *v77;
  *&v61[3] = *&v77[3];
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0;
  v67 = v6;
  *&v68[3] = *&v76[3];
  *v68 = *v76;
  v69 = 0;
  v70 = 0;
  v71 = v3;
  v72 = v2;
  v73 = 0;
  v74 = 0;
  v75 = 0;
  outlined destroy of URLComponents(&v58);
  return v25;
}

Swift::String_optional __swiftcall _SwiftURL.user(percentEncoded:)(Swift::Bool percentEncoded)
{
  v3 = v1[2];
  if (v3[72] == 1)
  {
    if (v3[96] != 1 || v3[120] != 1 || v3[144] != 1 || !v1[3])
    {
      v17 = 0;
      v16 = 0;
      goto LABEL_22;
    }

    v4 = v1[4];
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 168);
    swift_unknownObjectRetain();
    v7 = v6(percentEncoded, ObjectType, v4);
    v9 = v8;
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  v10 = String.subscript.getter();
  v14 = v13;
  if (percentEncoded)
  {
    v7 = MEMORY[0x1865CAE80](v10);
    v9 = v15;

LABEL_9:
    v16 = v9;
    v17 = v7;
    goto LABEL_22;
  }

  if (v3[220])
  {
    if ((v10 ^ v11) >> 14)
    {
      v49 = v10;
      v50 = v11;
      v51 = v12;
      v52 = v13;
      MEMORY[0x1EEE9AC00](v10);
      v46 = &v49;
      v47 = MEMORY[0x1E69E7CD0];
      v48 = 4;
      v33 = v32;
      v35 = v34;
      v37 = v36;

      v38 = v33;
      v39 = v35;
      v40 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SSSg_Tg5(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v45, v33, v37, v35, v14);
      v42 = v41;

      if (v42 != 1)
      {

        v16 = v42;
        v17 = v40;
        goto LABEL_22;
      }

      v7 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSs_Ss8UTF8ViewVTt2B5(v38, v37, v39, v14, MEMORY[0x1E69E7CD0], 4);
      v9 = v43;
      swift_bridgeObjectRelease_n();
      goto LABEL_9;
    }

LABEL_16:

    v17 = 0;
    v16 = 0xE000000000000000;
    goto LABEL_22;
  }

  if (!((v10 ^ v11) >> 14))
  {
    goto LABEL_16;
  }

  v18 = v1[5];
  v49 = v10;
  v50 = v11;
  v51 = v12;
  v52 = v13;
  MEMORY[0x1EEE9AC00](v10);
  v46 = &v49;
  v47 = MEMORY[0x1E69E7CD0];
  v48 = v18;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v25 = v20;
  v26 = v20;
  v27 = v22;
  v28 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SSSg_Tg5(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v45, v26, v24, v22, v14);
  v30 = v29;

  if (v30 == 1)
  {

    v28 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSs_Ss8UTF8ViewVTt2B5(v25, v24, v27, v14, MEMORY[0x1E69E7CD0], v18);
    v30 = v31;
    swift_bridgeObjectRelease_n();
  }

  else
  {
  }

  v17 = v28;
  v16 = v30;
LABEL_22:
  result.value._object = v16;
  result.value._countAndFlagsBits = v17;
  return result;
}

uint64_t _SwiftURL.port.getter()
{
  v1 = v0[2];
  if (v1[72] == 1 && v1[96] == 1 && v1[120] == 1 && (v1[144] & 1) != 0)
  {
    if (v0[3])
    {
      v2 = v0[4];
      ObjectType = swift_getObjectType();
      return (*(v2 + 208))(ObjectType, v2);
    }

    return 0;
  }

  if (v1[144])
  {
    return 0;
  }

  v5 = String.subscript.getter();
  v9 = v8;
  if (!((v5 ^ v6) >> 14))
  {

    return 0;
  }

  v10 = v5;
  v11 = v6;
  v12 = v7;
  v13 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5I15VGXEfU_Si_SsTG5SiTf1cn_n(v5, v6, v7, v8, 10);
  if ((v14 & 0x100) != 0)
  {
    v13 = specialized _parseInteger<A, B>(ascii:radix:)(v10, v11, v12, v9, 10);
  }

  v15 = v13;
  v16 = v14;

  if (v16)
  {
    return 0;
  }

  else
  {
    return v15;
  }
}

uint64_t _SwiftURL.URLStringBuilder.string.getter()
{
  v13 = 0;
  v14 = 0xE000000000000000;
  v15 = *v0;
  if (*(&v15 + 1))
  {
    v12 = v15;
    outlined init with copy of FloatingPointRoundingRule?(&v15, &v11, &_sSSSgMd, &_sSSSgMR);
    MEMORY[0x1865CB0E0](58, 0xE100000000000000);
    MEMORY[0x1865CB0E0](v12, *(&v12 + 1));
  }

  v1 = *(v0 + 3);
  if (v1)
  {
    v2 = *(v0 + 2);
    MEMORY[0x1865CB0E0](12079, 0xE200000000000000);
    MEMORY[0x1865CB0E0](v2, v1);
    v3 = *(v0 + 5);
    if (!v3)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v3 = *(v0 + 5);
  if (v3)
  {
    MEMORY[0x1865CB0E0](12079, 0xE200000000000000);
LABEL_8:
    v4 = *(v0 + 4);
    *&v12 = 58;
    *(&v12 + 1) = 0xE100000000000000;
    MEMORY[0x1865CB0E0](v4, v3);
    MEMORY[0x1865CB0E0](v12, *(&v12 + 1));

LABEL_9:
    v5 = 64;
    v6 = 0xE100000000000000;
LABEL_10:
    MEMORY[0x1865CB0E0](v5, v6);
    goto LABEL_11;
  }

  if (*(v0 + 7) || *(v0 + 9))
  {
    v5 = 12079;
    v6 = 0xE200000000000000;
    goto LABEL_10;
  }

LABEL_11:
  if (*(v0 + 7))
  {
    MEMORY[0x1865CB0E0](*(v0 + 6));
  }

  if (*(v0 + 9))
  {
    v7 = *(v0 + 8);
    *&v12 = 58;
    *(&v12 + 1) = 0xE100000000000000;
    MEMORY[0x1865CB0E0](v7);
    MEMORY[0x1865CB0E0](v12, *(&v12 + 1));
  }

  MEMORY[0x1865CB0E0](*(v0 + 10), *(v0 + 11));
  if (*(v0 + 13))
  {
    v8 = *(v0 + 12);
    *&v12 = 63;
    *(&v12 + 1) = 0xE100000000000000;
    MEMORY[0x1865CB0E0](v8);
    MEMORY[0x1865CB0E0](v12, *(&v12 + 1));
  }

  if (*(v0 + 15))
  {
    v9 = *(v0 + 14);
    *&v12 = 35;
    *(&v12 + 1) = 0xE100000000000000;
    MEMORY[0x1865CB0E0](v9);
    MEMORY[0x1865CB0E0](v12, *(&v12 + 1));
  }

  return v13;
}

_BYTE *specialized static RFC3986Parser.compatibilityParse(urlString:encodingInvalidCharacters:)(uint64_t a1, unint64_t a2, char a3)
{
  v4 = specialized static RFC3986Parser.compatibilityParse(urlString:encodedComponents:)(a1, a2, 0);
  v5 = v4;
  if (!v4)
  {
    return v5;
  }

  if ((a3 & 1) == 0)
  {
    if (*(v4 + 72))
    {
      goto LABEL_26;
    }

    v26 = String.subscript.getter();
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v33 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5Sb_Tg50162_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506string9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSyRzlFZSbSRys5I7VGXEfU_10Foundation0nO0VXMtAP15URLComponentSet01_qrstuvW0LLVSbTf1cn_nTf4ndnn_n(v26, v27, v29, v31, 2, 1);
    if (v33 == 2)
    {
      v289 = v26;
      v290 = v28;
      v291 = v30;
      v292 = v32;
      lazy protocol witness table accessor for type Substring and conformance Substring();
      StringProtocol._ephemeralString.getter();
      v34 = String._bridgeToObjectiveCImpl()();

      v35 = [v34 _fastCharacterContents];
      v36 = v34;
      if (v35)
      {
        v289 = v26;
        v290 = v28;
        v291 = v30;
        v292 = v32;
        StringProtocol._ephemeralString.getter();
        v37 = String._bridgeToObjectiveCImpl()();

        v38 = [v37 length];
        swift_unknownObjectRelease();
        if (!_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v35, v38, 2u, 1))
        {
          goto LABEL_169;
        }

        goto LABEL_26;
      }

      v33 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSs8UTF8ViewV_Tt2g5(v26, v28, v30, v32, 2u, 1);
    }

    v53 = v33;

    if ((v53 & 1) == 0)
    {
      goto LABEL_169;
    }

LABEL_26:
    if (v5[96])
    {
      goto LABEL_91;
    }

    v54 = String.subscript.getter();
    v56 = v55;
    v58 = v57;
    v60 = v59;
    v61 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5Sb_Tg50162_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506string9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSyRzlFZSbSRys5I7VGXEfU_10Foundation0nO0VXMtAP15URLComponentSet01_qrstuvW0LLVSbTf1cn_nTf4ndnn_n(v54, v55, v57, v59, 2, 1);
    if (v61 == 2)
    {
      v289 = v54;
      v290 = v56;
      v291 = v58;
      v292 = v60;
      lazy protocol witness table accessor for type Substring and conformance Substring();
      StringProtocol._ephemeralString.getter();
      v62 = String._bridgeToObjectiveCImpl()();

      v63 = [v62 _fastCharacterContents];
      v64 = v62;
      if (v63)
      {
        v289 = v54;
        v290 = v56;
        v291 = v58;
        v292 = v60;
        StringProtocol._ephemeralString.getter();
        v65 = String._bridgeToObjectiveCImpl()();

        v66 = [v65 length];
        swift_unknownObjectRelease();
        if (!_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v63, v66, 2u, 1))
        {
          goto LABEL_169;
        }

        goto LABEL_91;
      }

      v61 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSs8UTF8ViewV_Tt2g5(v54, v56, v58, v60, 2u, 1);
    }

    v153 = v61;

    if ((v153 & 1) == 0)
    {
      goto LABEL_169;
    }

LABEL_91:
    if ((v5[120] & 1) == 0)
    {
      v154 = String.subscript.getter();
      v158 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464504host14knownIPLiteralSbx_SbtSyRzlFZSs_Tt1g5(v154, v155, v156, v157, v5[217]);

      if ((v158 & 1) == 0)
      {
        goto LABEL_169;
      }
    }

    if (v5[168])
    {
      v159 = MEMORY[0x1865CBC20](0, 0xE000000000000000);
    }

    else
    {
      v159 = String.subscript.getter();
    }

    v163 = v159;
    v164 = v160;
    v165 = v161;
    v166 = v162;
    v167 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5Sb_Tg50162_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506string9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSyRzlFZSbSRys5I7VGXEfU_10Foundation0nO0VXMtAP15URLComponentSet01_qrstuvW0LLVSbTf1cn_nTf4ndnn_n(v159, v160, v161, v162, 16, 1);
    if (v167 == 2)
    {
      v289 = v163;
      v290 = v164;
      v291 = v165;
      v292 = v166;
      lazy protocol witness table accessor for type Substring and conformance Substring();
      StringProtocol._ephemeralString.getter();
      v168 = String._bridgeToObjectiveCImpl()();

      v169 = [v168 _fastCharacterContents];
      v170 = v168;
      if (v169)
      {
        v289 = v163;
        v290 = v164;
        v291 = v165;
        v292 = v166;
        StringProtocol._ephemeralString.getter();
        v171 = String._bridgeToObjectiveCImpl()();

        v172 = [v171 length];
        swift_unknownObjectRelease();
        if (!_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v169, v172, 0x10u, 1))
        {
          goto LABEL_169;
        }

LABEL_102:
        if (v5[192])
        {
          goto LABEL_111;
        }

        v174 = String.subscript.getter();
        v176 = v175;
        v178 = v177;
        v180 = v179;
        v181 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5Sb_Tg50162_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506string9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSyRzlFZSbSRys5I7VGXEfU_10Foundation0nO0VXMtAP15URLComponentSet01_qrstuvW0LLVSbTf1cn_nTf4ndnn_n(v174, v175, v177, v179, 64, 1);
        if (v181 == 2)
        {
          v289 = v174;
          v290 = v176;
          v291 = v178;
          v292 = v180;
          lazy protocol witness table accessor for type Substring and conformance Substring();
          StringProtocol._ephemeralString.getter();
          v182 = String._bridgeToObjectiveCImpl()();

          v183 = [v182 _fastCharacterContents];
          v184 = v182;
          if (v183)
          {
            v289 = v174;
            v290 = v176;
            v291 = v178;
            v292 = v180;
            StringProtocol._ephemeralString.getter();
            v185 = String._bridgeToObjectiveCImpl()();

            v186 = [v185 length];
            swift_unknownObjectRelease();
            if (!_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v183, v186, 0x40u, 1))
            {
              goto LABEL_169;
            }

LABEL_111:
            if (v5[216])
            {
              return v5;
            }

            v190 = String.subscript.getter();
            v192 = v191;
            v194 = v193;
            v196 = v195;
            v197 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5Sb_Tg50162_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506string9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSyRzlFZSbSRys5I7VGXEfU_10Foundation0nO0VXMtAP15URLComponentSet01_qrstuvW0LLVSbTf1cn_nTf4ndnn_n(v190, v191, v193, v195, 64, 1);
            if (v197 == 2)
            {
              v289 = v190;
              v290 = v192;
              v291 = v194;
              v292 = v196;
              lazy protocol witness table accessor for type Substring and conformance Substring();
              StringProtocol._ephemeralString.getter();
              v198 = String._bridgeToObjectiveCImpl()();

              v199 = [v198 _fastCharacterContents];
              v200 = v198;
              if (v199)
              {
                v289 = v190;
                v290 = v192;
                v291 = v194;
                v292 = v196;
                StringProtocol._ephemeralString.getter();
                v201 = String._bridgeToObjectiveCImpl()();

                v202 = [v201 length];
                swift_unknownObjectRelease();
                if (_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v199, v202, 0x40u, 1))
                {
                  return v5;
                }

                goto LABEL_169;
              }

              v197 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSs8UTF8ViewV_Tt2g5(v190, v192, v194, v196, 0x40u, 1);
            }

            v279 = v197;

            if (v279)
            {
              return v5;
            }

            goto LABEL_169;
          }

          v181 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSs8UTF8ViewV_Tt2g5(v174, v176, v178, v180, 0x40u, 1);
        }

        v189 = v181;

        if (v189)
        {
          goto LABEL_111;
        }

LABEL_169:

        return 0;
      }

      v167 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSs8UTF8ViewV_Tt2g5(v163, v164, v165, v166, 0x10u, 1);
    }

    v173 = v167;

    if ((v173 & 1) == 0)
    {
      goto LABEL_169;
    }

    goto LABEL_102;
  }

  if (*(v4 + 72))
  {
    v6 = 0;
    v7 = 0;
    if (*(v4 + 96))
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

  v12 = String.subscript.getter();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v7 = 0;
  v19 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5Sb_Tg50162_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506string9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSyRzlFZSbSRys5I7VGXEfU_10Foundation0nO0VXMtAP15URLComponentSet01_qrstuvW0LLVSbTf1cn_nTf4ndnn_n(v12, v13, v15, v17, 2, 1);
  if (v19 == 2)
  {
    v289 = v12;
    v290 = v14;
    v291 = v16;
    v292 = v18;
    lazy protocol witness table accessor for type Substring and conformance Substring();
    StringProtocol._ephemeralString.getter();
    v20 = String._bridgeToObjectiveCImpl()();

    v21 = [v20 _fastCharacterContents];
    v22 = v20;
    if (v21)
    {
      v289 = v12;
      v290 = v14;
      v291 = v16;
      v292 = v18;
      StringProtocol._ephemeralString.getter();
      v23 = String._bridgeToObjectiveCImpl()();

      v24 = [v23 length];
      swift_unknownObjectRelease();
      v25 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v21, v24, 2u, 1);
      goto LABEL_19;
    }

    v19 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSs8UTF8ViewV_Tt2g5(v12, v14, v16, v18, 2u, 1);
  }

  v25 = v19;

LABEL_19:
  v6 = !v25;
  if (v5[96])
  {
LABEL_5:
    if (v5[120])
    {
      goto LABEL_6;
    }

LABEL_36:
    v67 = String.subscript.getter();
    v71 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464504host14knownIPLiteralSbx_SbtSyRzlFZSs_Tt1g5(v67, v68, v69, v70, v5[217]);

    if ((v71 & 1) == 0)
    {
      v6 |= 4u;
    }

    if (v5[168])
    {
      goto LABEL_7;
    }

    goto LABEL_39;
  }

LABEL_20:
  v39 = String.subscript.getter();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v46 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5Sb_Tg50162_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506string9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSyRzlFZSbSRys5I7VGXEfU_10Foundation0nO0VXMtAP15URLComponentSet01_qrstuvW0LLVSbTf1cn_nTf4ndnn_n(v39, v40, v42, v44, 2, 1);
  if (v46 == 2)
  {
    LODWORD(v284) = v6;
    v289 = v39;
    v290 = v41;
    v291 = v43;
    v292 = v45;
    lazy protocol witness table accessor for type Substring and conformance Substring();
    StringProtocol._ephemeralString.getter();
    v47 = String._bridgeToObjectiveCImpl()();

    v48 = [v47 _fastCharacterContents];
    v49 = v47;
    if (v48)
    {
      v289 = v39;
      v290 = v41;
      v291 = v43;
      v292 = v45;
      StringProtocol._ephemeralString.getter();
      v50 = String._bridgeToObjectiveCImpl()();

      v51 = [v50 length];
      swift_unknownObjectRelease();
      v52 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v48, v51, 2u, 1);
    }

    else
    {
      v52 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSs8UTF8ViewV_Tt2g5(v39, v41, v43, v45, 2u, 1);
    }

    v6 = v284;
  }

  else
  {
    v52 = v46;
  }

  if ((v52 & 1) == 0)
  {
    v6 |= 2u;
  }

  if ((v5[120] & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_6:
  if (v5[168])
  {
LABEL_7:
    v8 = MEMORY[0x1865CBC20](0, 0xE000000000000000);
    goto LABEL_40;
  }

LABEL_39:
  v8 = String.subscript.getter();
LABEL_40:
  v72 = v8;
  v73 = v9;
  v74 = v10;
  v75 = v11;
  v76 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5Sb_Tg50162_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506string9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSyRzlFZSbSRys5I7VGXEfU_10Foundation0nO0VXMtAP15URLComponentSet01_qrstuvW0LLVSbTf1cn_nTf4ndnn_n(v8, v9, v10, v11, 16, 1);
  if (v76 == 2)
  {
    v284 = 0;
    v77 = v6;
    v289 = v72;
    v290 = v73;
    v291 = v74;
    v292 = v75;
    lazy protocol witness table accessor for type Substring and conformance Substring();
    StringProtocol._ephemeralString.getter();
    v78 = String._bridgeToObjectiveCImpl()();

    v79 = [v78 _fastCharacterContents];
    v80 = v78;
    if (v79)
    {
      v289 = v72;
      v290 = v73;
      v291 = v74;
      v292 = v75;
      StringProtocol._ephemeralString.getter();
      v81 = String._bridgeToObjectiveCImpl()();

      v82 = [v81 length];
      swift_unknownObjectRelease();
      v83 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v79, v82, 0x10u, 1);
    }

    else
    {
      v83 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSs8UTF8ViewV_Tt2g5(v72, v73, v74, v75, 0x10u, 1);
    }

    v6 = v77;
    v7 = v284;
  }

  else
  {
    v83 = v76;
  }

  if (v83)
  {
    v84 = v6;
  }

  else
  {
    v84 = v6 | 8;
  }

  if ((v5[192] & 1) == 0)
  {
    v85 = String.subscript.getter();
    v87 = v86;
    v89 = v88;
    v91 = v90;
    v92 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5Sb_Tg50162_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506string9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSyRzlFZSbSRys5I7VGXEfU_10Foundation0nO0VXMtAP15URLComponentSet01_qrstuvW0LLVSbTf1cn_nTf4ndnn_n(v85, v86, v88, v90, 64, 1);
    if (v92 == 2)
    {
      v284 = v7;
      v289 = v85;
      v290 = v87;
      v291 = v89;
      v292 = v91;
      lazy protocol witness table accessor for type Substring and conformance Substring();
      StringProtocol._ephemeralString.getter();
      v93 = String._bridgeToObjectiveCImpl()();

      v94 = [v93 _fastCharacterContents];
      v95 = v93;
      if (v94)
      {
        v289 = v85;
        v290 = v87;
        v291 = v89;
        v292 = v91;
        StringProtocol._ephemeralString.getter();
        v96 = String._bridgeToObjectiveCImpl()();

        v97 = [v96 length];
        swift_unknownObjectRelease();
        v98 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v94, v97, 0x40u, 1);
      }

      else
      {
        v98 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSs8UTF8ViewV_Tt2g5(v85, v87, v89, v91, 0x40u, 1);
      }

      v7 = v284;
    }

    else
    {
      v98 = v92;
    }

    if ((v98 & 1) == 0)
    {
      v84 |= 0x10u;
    }
  }

  if ((v5[216] & 1) == 0)
  {
    v99 = String.subscript.getter();
    v101 = v100;
    v103 = v102;
    v105 = v104;
    v106 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5Sb_Tg50162_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506string9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSyRzlFZSbSRys5I7VGXEfU_10Foundation0nO0VXMtAP15URLComponentSet01_qrstuvW0LLVSbTf1cn_nTf4ndnn_n(v99, v100, v102, v104, 64, 1);
    if (v106 != 2)
    {
      v112 = v106;

      if ((v112 & 1) == 0)
      {
        v84 |= 0x20u;
        goto LABEL_69;
      }

      goto LABEL_59;
    }

    v289 = v99;
    v290 = v101;
    v291 = v103;
    v292 = v105;
    lazy protocol witness table accessor for type Substring and conformance Substring();
    StringProtocol._ephemeralString.getter();
    v107 = String._bridgeToObjectiveCImpl()();

    v108 = [v107 _fastCharacterContents];
    v109 = v107;
    if (v108)
    {
      v289 = v99;
      v290 = v101;
      v291 = v103;
      v292 = v105;
      StringProtocol._ephemeralString.getter();
      v110 = String._bridgeToObjectiveCImpl()();

      v111 = [v110 length];
      swift_unknownObjectRelease();
      if (_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v108, v111, 0x40u, 1))
      {
        goto LABEL_59;
      }
    }

    else
    {
      v113 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSs8UTF8ViewV_Tt2g5(v99, v101, v103, v105, 0x40u, 1);

      if (v113)
      {
        goto LABEL_59;
      }
    }

    v84 |= 0x20u;
    goto LABEL_69;
  }

LABEL_59:
  if (!v84)
  {
    return v5;
  }

LABEL_69:
  v287 = 0;
  v288 = 0xE000000000000000;
  if ((v5[48] & 1) == 0)
  {
    v114 = String.subscript.getter();
    v115 = MEMORY[0x1865CAE80](v114);
    v117 = v116;

    v289 = v115;
    v290 = v117;
    MEMORY[0x1865CB0E0](58, 0xE100000000000000);
    MEMORY[0x1865CB0E0](v115, v117);
  }

  v118 = v5[72];
  LODWORD(v284) = v84;
  if (v118 != 1 || v5[96] != 1 || v5[120] != 1 || (v5[144] & 1) == 0)
  {
    MEMORY[0x1865CB0E0](12079, 0xE200000000000000);
    if (v5[72])
    {
LABEL_121:
      if (v5[120])
      {
        goto LABEL_130;
      }

      v204 = String.subscript.getter();
      if ((v84 & 4) == 0)
      {
        v289 = v204;
        v290 = v205;
        v291 = v206;
        v292 = v207;
        lazy protocol witness table accessor for type Substring and conformance Substring();
        String.append<A>(contentsOf:)();
LABEL_129:

        goto LABEL_130;
      }

      if (!((v204 ^ v205) >> 14))
      {

        v208 = 0;
        v209 = 0xE000000000000000;
LABEL_128:
        MEMORY[0x1865CB0E0](v208, v209);
        goto LABEL_129;
      }

      v210 = _s10Foundation13RFC3986ParserV17percentEncodeHost33_A90579D1FA072CB135F95EF00BA46450LL_18skipAlreadyEncodedSSSgxSg_SbtSyRzlFZSs_Tt1g5(v204, v205, v206, v207, 1);
      v209 = v211;

      if (v209)
      {
        v208 = v210;
        goto LABEL_128;
      }

      return 0;
    }

    v119 = String.subscript.getter();
    v123 = v122;
    if (v84)
    {
      if ((v119 ^ v120) >= 0x4000)
      {
        v289 = v119;
        v290 = v120;
        v291 = v121;
        v292 = v122;
        MEMORY[0x1EEE9AC00](v119);
        v282 = &v289;
        v283 = 258;
        v127 = v126;
        v129 = v128;
        v131 = v130;

        v132 = v131;
        v133 = v131;
        v134 = v129;
        v135 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SS_Tg5(closure #1 in StringProtocol.addingPercentEncoding(forURLComponent:skipAlreadyEncoded:)specialized partial apply, v281, v127, v133, v129, v123);
        v125 = v136;

        if (!v125)
        {

          v135 = _sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9component18skipAlreadyEncodedSSqd___AA15URLComponentSetACLLVSbtSlRd__s5UInt8V7ElementRtd__lFSs_Ss8UTF8ViewVTt2g5(v127, v132, v134, v123, 2, 1);
          v125 = v137;
        }

        v124 = v135;
        LOBYTE(v84) = v284;
      }

      else
      {
        v124 = 0;
        v125 = 0xE000000000000000;
      }

      MEMORY[0x1865CB0E0](v124, v125);

      if (v5[96])
      {
        goto LABEL_120;
      }
    }

    else
    {
      v289 = v119;
      v290 = v120;
      v291 = v121;
      v292 = v122;
      lazy protocol witness table accessor for type Substring and conformance Substring();
      String.append<A>(contentsOf:)();
      if (v5[96])
      {
LABEL_120:

        MEMORY[0x1865CB0E0](64, 0xE100000000000000);
        goto LABEL_121;
      }
    }

    v138 = String.subscript.getter();
    v140 = v139;
    v142 = v141;
    v144 = v143;
    if ((v84 & 2) != 0)
    {

      v285 = 58;
      v286 = 0xE100000000000000;
      if ((v138 ^ v140) >> 14)
      {
        v289 = v138;
        v290 = v140;
        v291 = v142;
        v292 = v144;
        MEMORY[0x1EEE9AC00](v150);
        v282 = &v289;
        v283 = 258;

        v187 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SS_Tg5(closure #1 in StringProtocol.addingPercentEncoding(forURLComponent:skipAlreadyEncoded:)specialized partial apply, v281, v138, v140, v142, v144);
        v152 = v188;

        if (v152)
        {
        }

        else
        {

          v187 = _sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9component18skipAlreadyEncodedSSqd___AA15URLComponentSetACLLVSbtSlRd__s5UInt8V7ElementRtd__lFSs_Ss8UTF8ViewVTt2g5(v138, v140, v142, v144, 2, 1);
          v152 = v203;
          swift_bridgeObjectRelease_n();
        }

        v151 = v187;
        LOBYTE(v84) = v284;
      }

      else
      {

        v151 = 0;
        v152 = 0xE000000000000000;
      }

      MEMORY[0x1865CB0E0](v151, v152);

      v148 = v285;
      v149 = v286;
    }

    else
    {

      v289 = 58;
      v290 = 0xE100000000000000;
      v145 = MEMORY[0x1865CAE80](v138, v140, v142, v144);
      v147 = v146;

      MEMORY[0x1865CB0E0](v145, v147);

      v148 = v289;
      v149 = v290;
    }

    MEMORY[0x1865CB0E0](v148, v149);
    goto LABEL_120;
  }

LABEL_130:
  if ((v5[144] & 1) == 0)
  {
    v212 = String.subscript.getter();
    v214 = v213;
    v216 = v215;
    v218 = v217;
    v289 = v212;
    v290 = v213;
    v291 = v215;
    v292 = v217;
    MEMORY[0x1EEE9AC00](v212);
    v282 = &v289;
    v283 = 320;

    v219 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SS_Tg5(closure #1 in StringProtocol.addingPercentEncoding(forURLComponent:skipAlreadyEncoded:)specialized partial apply, v281, v212, v214, v216, v218);
    v221 = v220;

    if (v221)
    {
    }

    else
    {

      v219 = _sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9component18skipAlreadyEncodedSSqd___AA15URLComponentSetACLLVSbtSlRd__s5UInt8V7ElementRtd__lFSs_Ss8UTF8ViewVTt2g5(v212, v214, v216, v218, 64, 1);
      v221 = v222;
      swift_bridgeObjectRelease_n();
    }

    v289 = 58;
    v290 = 0xE100000000000000;
    MEMORY[0x1865CB0E0](v219, v221);

    MEMORY[0x1865CB0E0](v289, v290);

    LOBYTE(v84) = v284;
  }

  if (v5[168])
  {
    v223 = MEMORY[0x1865CBC20](0, 0xE000000000000000);
  }

  else
  {
    v223 = String.subscript.getter();
  }

  v227 = v223;
  v228 = v224;
  v229 = v225;
  v230 = v226;
  if ((v84 & 8) != 0)
  {
    v289 = v223;
    v290 = v224;
    v291 = v225;
    v292 = v226;
    MEMORY[0x1EEE9AC00](v223);
    v282 = &v289;
    v283 = 272;

    v231 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SS_Tg5(closure #1 in StringProtocol.addingPercentEncoding(forURLComponent:skipAlreadyEncoded:)specialized partial apply, v281, v227, v228, v229, v230);
    v233 = v232;

    if (!v233)
    {

      v231 = _sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9component18skipAlreadyEncodedSSqd___AA15URLComponentSetACLLVSbtSlRd__s5UInt8V7ElementRtd__lFSs_Ss8UTF8ViewVTt2g5(v227, v228, v229, v230, 16, 1);
      v233 = v234;
    }

    MEMORY[0x1865CB0E0](v231, v233);

    LOBYTE(v84) = v284;
    if (v5[192])
    {
      goto LABEL_154;
    }

    goto LABEL_144;
  }

  v289 = v223;
  v290 = v224;
  v291 = v225;
  v292 = v226;
  lazy protocol witness table accessor for type Substring and conformance Substring();
  String.append<A>(contentsOf:)();
  if ((v5[192] & 1) == 0)
  {
LABEL_144:
    v235 = String.subscript.getter();
    v239 = v238;
    if ((v84 & 0x10) != 0)
    {
      v285 = 63;
      v286 = 0xE100000000000000;
      if ((v235 ^ v236) >> 14)
      {
        v289 = v235;
        v290 = v236;
        v291 = v237;
        v292 = v238;
        MEMORY[0x1EEE9AC00](v235);
        v282 = &v289;
        v283 = 320;
        v248 = v247;
        v250 = v249;
        v252 = v251;

        v253 = v248;
        v254 = v252;
        v255 = v252;
        v256 = v250;
        v257 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SS_Tg5(closure #1 in StringProtocol.addingPercentEncoding(forURLComponent:skipAlreadyEncoded:)specialized partial apply, v281, v248, v255, v250, v239);
        v246 = v258;

        if (v246)
        {
        }

        else
        {

          v257 = _sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9component18skipAlreadyEncodedSSqd___AA15URLComponentSetACLLVSbtSlRd__s5UInt8V7ElementRtd__lFSs_Ss8UTF8ViewVTt2g5(v253, v254, v256, v239, 64, 1);
          v246 = v259;
          swift_bridgeObjectRelease_n();
        }

        v245 = v257;
        LOBYTE(v84) = v284;
      }

      else
      {

        v245 = 0;
        v246 = 0xE000000000000000;
      }

      MEMORY[0x1865CB0E0](v245, v246);

      v243 = v285;
      v244 = v286;
    }

    else
    {
      v289 = 63;
      v290 = 0xE100000000000000;
      v240 = MEMORY[0x1865CAE80](v235);
      v242 = v241;

      MEMORY[0x1865CB0E0](v240, v242);

      v243 = v289;
      v244 = v290;
    }

    MEMORY[0x1865CB0E0](v243, v244);
  }

LABEL_154:
  if ((v5[216] & 1) == 0)
  {
    v260 = String.subscript.getter();
    v262 = v261;
    v264 = v263;
    v266 = v265;
    if ((v84 & 0x20) != 0)
    {

      v285 = 35;
      v286 = 0xE100000000000000;
      if ((v260 ^ v262) >> 14)
      {
        v289 = v260;
        v290 = v262;
        v291 = v264;
        v292 = v266;
        MEMORY[0x1EEE9AC00](v272);
        v282 = &v289;
        v283 = 320;

        v275 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SS_Tg5(_sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA4645015forURLComponent18skipAlreadyEncodedSSAA0M3SetACLLV_SbtFSSSRys5UInt8VGXEfU_Ss_TG5TA_0, v281, v260, v262, v264, v266);
        v274 = v276;

        if (v274)
        {
        }

        else
        {

          v275 = _sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9component18skipAlreadyEncodedSSqd___AA15URLComponentSetACLLVSbtSlRd__s5UInt8V7ElementRtd__lFSs_Ss8UTF8ViewVTt2g5(v260, v262, v264, v266, 64, 1);
          v274 = v277;
          swift_bridgeObjectRelease_n();
        }

        v273 = v275;
      }

      else
      {

        v273 = 0;
        v274 = 0xE000000000000000;
      }

      MEMORY[0x1865CB0E0](v273, v274);

      v270 = v285;
      v271 = v286;
    }

    else
    {

      v289 = 35;
      v290 = 0xE100000000000000;
      v267 = MEMORY[0x1865CAE80](v260, v262, v264, v266);
      v269 = v268;

      MEMORY[0x1865CB0E0](v267, v269);

      v270 = v289;
      v271 = v290;
    }

    MEMORY[0x1865CB0E0](v270, v271);
  }

  v278 = specialized static RFC3986Parser.compatibilityParse(urlString:encodedComponents:)(v287, v288, v84);

  return v278;
}

uint64_t specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = a4;
  v21 = *MEMORY[0x1E69E9840];
  v9 = *a1;
  v8 = a1[1];
  v10 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v10 == 2)
    {
      swift_bridgeObjectRetain_n();
      outlined copy of Data._Representation(v9, v8);
      outlined consume of Data._Representation(v9, v8);
      *&__dst = v9;
      *(&__dst + 1) = v8 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_181234410;
      outlined consume of Data._Representation(0, 0xC000000000000000);

      specialized Data.LargeSlice.withUnsafeMutableBytes<A>(_:)(&__dst, a2, a3, v4);
      v4 = v14;
      swift_bridgeObjectRelease_n();
      v15 = *(&__dst + 1) | 0x8000000000000000;
      *a1 = __dst;
      a1[1] = v15;
    }

    else
    {
      *(&__dst + 7) = 0;
      *&__dst = 0;
      specialized UnsafeMutableBufferPointer.initialize<A>(fromContentsOf:)(a2, a3, &__dst, 0);
      if (v4 == 2)
      {
        v4 = _allASCII(_:)(&__dst, 0);
      }
    }
  }

  else if (v10)
  {
    swift_bridgeObjectRetain_n();
    outlined copy of Data._Representation(v9, v8);
    outlined consume of Data._Representation(v9, v8);
    *&__dst = v9;
    *(&__dst + 1) = v8 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_181234410;
    outlined consume of Data._Representation(0, 0xC000000000000000);

    specialized Data.InlineSlice.withUnsafeMutableBytes<A>(_:)(&__dst, a2, a3, v4);
    v4 = v16;
    swift_bridgeObjectRelease_n();
    v17 = *(&__dst + 1) | 0x4000000000000000;
    *a1 = __dst;
    a1[1] = v17;
  }

  else
  {
    v19 = HIWORD(v8);
    swift_bridgeObjectRetain_n();
    outlined consume of Data._Representation(v9, v8);
    *&__dst = v9;
    WORD4(__dst) = v8;
    BYTE10(__dst) = BYTE2(v8);
    BYTE11(__dst) = BYTE3(v8);
    BYTE12(__dst) = BYTE4(v8);
    BYTE13(__dst) = BYTE5(v8);
    v11 = BYTE6(v8);
    BYTE14(__dst) = v19;
    specialized UnsafeMutableBufferPointer.initialize<A>(fromContentsOf:)(a2, a3, &__dst, v11);
    if (v4 == 2)
    {
      v4 = _allASCII(_:)(&__dst, v11);
    }

    v12 = __dst;
    v13 = DWORD2(__dst) | ((WORD6(__dst) | (BYTE14(__dst) << 16)) << 32);
    swift_bridgeObjectRelease_n();
    *a1 = v12;
    a1[1] = v13;
  }

  return v4 & 1;
}

uint64_t specialized UnsafeMutableBufferPointer.initialize<A>(fromContentsOf:)(uint64_t result, unint64_t a2, void *__dst, int64_t a4)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) == 0)
    {
      if ((result & 0x1000000000000000) != 0)
      {
        a2 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v4 = result & 0xFFFFFFFFFFFFLL;
        if ((result & 0xFFFFFFFFFFFFLL) == 0)
        {
          return v4;
        }
      }

      else
      {
        v6 = a4;
        v7 = __dst;
        result = _StringObject.sharedUTF8.getter();
        if (!result)
        {
          return 0;
        }

        v4 = v8;
        a2 = result;
        __dst = v7;
        a4 = v6;
        if (!v4)
        {
          return v4;
        }
      }

      if (v4 <= a4)
      {
LABEL_10:
        memcpy(__dst, a2, v4);
        return v4;
      }

      __break(1u);
    }

    v4 = HIBYTE(a2) & 0xF;
    v9[0] = result;
    v9[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    if (v4)
    {
      if (v4 <= a4)
      {
        a2 = v9;
        goto LABEL_10;
      }

      __break(1u);
      return 0;
    }

    return v4;
  }

  if (__dst)
  {
    result = _StringGuts.copyUTF8(into:)();
    if ((v5 & 1) == 0)
    {
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void @objc static NSLocale._resetCurrent()()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleNotifications.reset()();
}

id @objc static NSTimeZone._resetSystemTimeZone()()
{
  v0 = specialized static NSTimeZone._resetSystemTimeZone()();

  return v0;
}

id specialized static NSTimeZone._resetSystemTimeZone()()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v0 = static TimeZoneCache.cache;
  os_unfair_lock_lock((static TimeZoneCache.cache + 120));
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v3 = *(v0 + 80);
  *(v0 + 80) = 0;

  os_unfair_lock_unlock((v0 + 120));
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleNotifications.reset()();
  if (!v1)
  {
    return 0;
  }

  v4 = type metadata accessor for _NSSwiftTimeZone();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR____NSSwiftTimeZone_timeZone];
  *v6 = v1;
  *(v6 + 1) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyAA16_NSSwiftTimeZoneC0C0V_GMd, &_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyAA16_NSSwiftTimeZoneC0C0V_GMR);
  v7 = swift_allocObject();
  *(v7 + 32) = 0;
  *(v7 + 16) = xmmword_18122E880;
  *&v5[OBJC_IVAR____NSSwiftTimeZone_lock] = v7;
  v9.receiver = v5;
  v9.super_class = v4;
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t outlined destroy of String?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::String __swiftcall NSString._pathByInsertingResolveFlags(_:)(Swift::UInt32 a1)
{
  v43 = *MEMORY[0x1E69E9840];
  isTaggedPointer = _objc_isTaggedPointer(v1);
  v4 = v1;
  v5 = v4;
  if (!isTaggedPointer)
  {
    goto LABEL_7;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v4);
  switch(TaggedPointerTag)
  {
    case 0:
      goto LABEL_17;
    case 0x16:
      v13 = [v5 UTF8String];
      if (!v13)
      {
        __break(1u);
        goto LABEL_43;
      }

      v15 = String.init(utf8String:)(v13);
      if (v16)
      {
LABEL_18:
        v7 = v15;
        v9 = v16;

        if (!a1)
        {
          goto LABEL_38;
        }

        goto LABEL_25;
      }

      __break(1u);
LABEL_17:
      LOWORD(prefixLength) = 0;
      _CFIndirectTaggedPointerStringGetContents();
      v15 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v16)
      {
        [v5 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v7 = v33;
        v9 = v35;
        if (!a1)
        {
          goto LABEL_38;
        }

        goto LABEL_25;
      }

      goto LABEL_18;
    case 2:
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v7 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v9 = v8;

      if (!a1)
      {
        goto LABEL_38;
      }

LABEL_25:
      if ((specialized Collection.first.getter(v7, v9) & 0x1FF) != 0x2F)
      {
        goto LABEL_38;
      }

      prefixLength = 0;
      *&v18 = String._pathResolveFlags(prefixLength:)(&prefixLength);
      if ((v18 & 0x100000000) != 0)
      {
        goto LABEL_38;
      }

      v19 = v18 | a1;
      if ((v18 | a1) == v18)
      {
        goto LABEL_38;
      }

      if ((v9 & 0x1000000000000000) == 0)
      {
        if (prefixLength < 0)
        {
          __break(1u);
        }

        else
        {
          v20 = HIBYTE(v9) & 0xF;
          if ((v9 & 0x2000000000000000) == 0)
          {
            v20 = v7 & 0xFFFFFFFFFFFFLL;
          }

          if (v20 >= prefixLength)
          {
            v21 = (prefixLength << 16) | 4;
LABEL_34:
            v22 = specialized Collection.suffix(from:)(v21, v7, v9);
            v24 = v23;
            v26 = v25;
            v28 = v27;
            if (v19 == 1)
            {
              v29 = 0x6C6C6F666F6E2E2FLL;
              v30 = 0xEA0000000000776FLL;
            }

            else
            {
              v39 = 0x766C6F7365722E2FLL;
              v40 = 0xEA00000000002F65;
              v31 = dispatch thunk of CustomStringConvertible.description.getter();
              MEMORY[0x1865CB0E0](v31);

              v29 = v39;
              v30 = v40;
            }

            v34 = v29;
            v36 = v30;
            v39 = v22;
            v40 = v24;
            v41 = v26;
            v42 = v28;
            lazy protocol witness table accessor for type Substring and conformance Substring();
            String.append<A>(contentsOf:)();

            v7 = v34;
            v9 = v36;
            goto LABEL_38;
          }
        }

        __break(1u);
      }

      v21 = MEMORY[0x1865CB180](15, prefixLength, v7, v9);
      goto LABEL_34;
  }

LABEL_7:
  v39 = 0;
  LOBYTE(prefixLength) = 0;
  v38 = 0;
  if (__CFStringIsCF())
  {

    goto LABEL_12;
  }

  v10 = v5;
  v11 = String.init(_nativeStorage:)();
  if (v12)
  {
    v7 = v11;
    v9 = v12;

    if (!a1)
    {
      goto LABEL_38;
    }

    goto LABEL_25;
  }

  v39 = [v10 length];
  if (!v39)
  {

LABEL_12:
    v7 = 0;
    v9 = 0xE000000000000000;
    if (!a1)
    {
      goto LABEL_38;
    }

    goto LABEL_25;
  }

  v7 = String.init(_cocoaString:)();
  v9 = v17;
  if (a1)
  {
    goto LABEL_25;
  }

LABEL_38:
  v13 = v7;
  v14 = v9;
LABEL_43:
  result._object = v14;
  result._countAndFlagsBits = v13;
  return result;
}

uint64_t specialized static RFC3986Parser.compatibilityParse(urlString:encodedComponents:)(uint64_t a1, unint64_t a2, char a3)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;

  if ((a2 & 0x1000000000000000) != 0)
  {
    a1 = static String._copying(_:)(a1, a2);
    v120 = v119;

    *(v8 + 16) = a1;
    *(v8 + 24) = v120;
    a2 = v120;
  }

  LOBYTE(v157) = a3;
  v155 = a2;
  v156 = a1;
  v158 = v8;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v14 = HIBYTE(a2) & 0xF;
    v191[0] = a1;
    v191[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    v11 = 1;
    LOBYTE(v10) = 1;
    LOBYTE(v17) = 1;
    LOBYTE(v16) = 1;
    LOBYTE(v4) = 1;
    LOBYTE(v3) = 1;
    v188 = 1;
    v187 = 1;
    v186 = 1;
    v185 = 1;
    v184 = 1;
    v183 = 1;
    v182 = 1;
    if (!v14)
    {
      v160 = 0;
      v161 = 1;
      v162 = 0;
      v163 = 0;
      v164 = 1;
      v165 = 0;
      v166 = 0;
      v167 = 1;
      v168 = 0;
      v169 = 0;
      v170 = 1;
      v171 = 0;
      v172 = 0;
      v173 = 1;
      v174 = 0;
      v175 = 0;
      goto LABEL_16;
    }

    if ((a1 & 0xDF) - 91 < 0xFFFFFFE6)
    {
      if (a1 != 58)
      {
LABEL_66:
        v15 = 0;
        v12 = 0;
        goto LABEL_67;
      }

      v15 = 0;
      v188 = 0;
      goto LABEL_24;
    }

    if (v14 == 1)
    {
      v15 = 0;
LABEL_24:
      v12 = 1;
      if (v14 == 1)
      {
        goto LABEL_104;
      }

      goto LABEL_67;
    }

    v15 = 1;
    while (1)
    {
      result = *(v191 + v15);
      if (result <= 0x3A)
      {
        if (((1 << result) & 0x680000000000) != 0)
        {
          goto LABEL_58;
        }

        if (((1 << result) & 0x97D200000000) != 0)
        {
          goto LABEL_66;
        }

        if (result == 58)
        {
          v188 = 0;
          if (v15 - v14 == -1)
          {
            v160 = v15;
            v161 = 0;
            v162 = 0;
            v163 = 0;
            v164 = 1;
            v165 = 0;
            v166 = 0;
            v167 = 1;
            v168 = 0;
            v169 = 0;
            v170 = 1;
            v171 = 0;
            v172 = 0;
            v173 = 1;
            v174 = HIBYTE(a2) & 0xF;
            v175 = v174;
LABEL_16:
            v176 = 0;
            v177 = 0;
            v178 = 1;
LABEL_105:
            v179 = 0;
            v180 = 0;
            LOBYTE(v181) = v3;
            *(&v181 + 1) = 0;
            HIBYTE(v181) = 0;
LABEL_110:
            _NSBundleDeallocatingImmortalBundle();
            v18 = v160;
            v25 = v161;
            v20 = v162;
            v19 = v163;
            v26 = v164;
            v21 = v166;
            v22 = v168;
            v4 = v169;
            v23 = v172;
            LOBYTE(v14) = v173;
            v24 = v174;
            v159 = v175;
            LOBYTE(v151) = v178;
            LOBYTE(v150) = v181 & 1;
            v140 = v167;
            v154 = v171;
            v142 = v170;
            *&v147[1] = v177;
            v148 = v165;
            v144 = v180;
            v145 = v176;
            v146 = v179;
            LODWORD(v153) = BYTE1(v181) & 1;
            LOBYTE(v152) = BYTE2(v181) & 1;
            LOBYTE(v147[0]) = 0;
            LODWORD(v149) = HIBYTE(HIWORD(v181)) & 1;
LABEL_111:
            v54 = convert #1 (_:) in static RFC3986Parser.parse(urlString:allowEmptyScheme:encodedComponents:)(0, v18, v25 & 1, v158);
            v137 = v55;
            v139 = v54;
            v135 = v56;
            v57 = convert #1 (_:) in static RFC3986Parser.parse(urlString:allowEmptyScheme:encodedComponents:)(v20, v19, v26 & 1, v158);
            v131 = v58;
            v133 = v57;
            v129 = v59;
            v148 = convert #1 (_:) in static RFC3986Parser.parse(urlString:allowEmptyScheme:encodedComponents:)(v148, v21, v140 & 1, v158);
            v141 = v60;
            v127 = v61;
            v143 = convert #1 (_:) in static RFC3986Parser.parse(urlString:allowEmptyScheme:encodedComponents:)(v22, v4, v142 & 1, v158);
            v126 = v62;
            v125 = v63;
            v154 = convert #1 (_:) in static RFC3986Parser.parse(urlString:allowEmptyScheme:encodedComponents:)(v154, v23, v14 & 1, v158);
            v124 = v64;
            v123 = v65;
            v159 = convert #1 (_:) in static RFC3986Parser.parse(urlString:allowEmptyScheme:encodedComponents:)(v24, v159, v147[0] & 1, v158);
            v67 = v66;
            v69 = v68;
            v70 = convert #1 (_:) in static RFC3986Parser.parse(urlString:allowEmptyScheme:encodedComponents:)(v145, *&v147[1], v151 & 1, v158);
            v72 = v71;
            v74 = v73;
            v75 = convert #1 (_:) in static RFC3986Parser.parse(urlString:allowEmptyScheme:encodedComponents:)(v146, v144, v150 & 1, v158);
            v77 = v76;
            v79 = v78;

            type metadata accessor for URLParseInfo();
            result = swift_allocObject();
            *(result + 16) = v156;
            *(result + 24) = v155;
            *(result + 32) = v139;
            *(result + 40) = v137;
            *(result + 48) = v135 & 1;
            *(result + 56) = v133;
            *(result + 64) = v131;
            *(result + 72) = v129 & 1;
            *(result + 80) = v148;
            *(result + 88) = v141;
            *(result + 96) = v127 & 1;
            *(result + 104) = v143;
            *(result + 112) = v126;
            *(result + 120) = v125 & 1;
            *(result + 128) = v154;
            *(result + 136) = v124;
            *(result + 144) = v123 & 1;
            *(result + 152) = v159;
            *(result + 160) = v67;
            *(result + 168) = v69 & 1;
            *(result + 176) = v70;
            *(result + 184) = v72;
            *(result + 192) = v74 & 1;
            *(result + 200) = v75;
            *(result + 208) = v77;
            *(result + 216) = v79 & 1;
            *(result + 217) = v153 & 1;
            *(result + 218) = v152 & 1;
            *(result + 219) = v149 & 1;
            *(result + 220) = v157;
            return result;
          }

          v12 = v15 + 1;
          if (v15 + 1 == v14)
          {
LABEL_104:
            v160 = v15;
            v161 = v188;
            v162 = 0;
            v163 = 0;
            v164 = v11;
            v165 = 0;
            v166 = 0;
            v167 = v10;
            v168 = 0;
            v169 = 0;
            v170 = v17;
            v171 = 0;
            v172 = 0;
            v173 = v16;
            v174 = 0;
            v175 = v14;
            v176 = 0;
            v177 = 0;
            v178 = v4;
            goto LABEL_105;
          }

LABEL_67:
          if (v12 + 1 == v14 || *(v191 + v12) != 47 || *(v191 + v12 + 1) != 47)
          {
            v152 = 0;
            v153 = 0;
            v40 = 0;
            v41 = 0;
            v38 = 0;
            a2 = 0;
            v8 = 0;
            v149 = 0;
            LOBYTE(v151) = 0;
            LOBYTE(a1) = 0;
            goto LABEL_75;
          }

          v38 = v12 + 2;
          v39 = HIBYTE(a2) & 0xF;
          if (v12 + 2 != v14)
          {
            v39 = v12 + 2;
            do
            {
              v81 = *(v191 + v39);
              v82 = v81 > 0x3F;
              v83 = (1 << v81) & 0x8000800800000000;
              if (!v82 && v83 != 0)
              {
                goto LABEL_71;
              }

              ++v39;
            }

            while (v14 != v39);
            v39 = HIBYTE(a2) & 0xF;
          }

LABEL_71:
          if (v39 >= v38)
          {
            if (v38 == v39)
            {
              v152 = 0;
              v153 = 0;
              v40 = 0;
              v41 = 0;
              v8 = 0;
              v149 = 0;
              LOBYTE(v151) = 0;
              LOBYTE(a1) = 0;
              v185 = 0;
              a2 = v12 + 2;
              v12 += 2;
              goto LABEL_75;
            }

            v88 = 0;
            v89 = &v190;
            v90 = v12 + 2;
            do
            {
              if (v39 == v90)
              {
                result = 0;
                v93 = 0;
                v40 = 0;
                v41 = 0;
                v92 = v12 + 2;
                if (v38 == v39)
                {
                  goto LABEL_180;
                }

                goto LABEL_156;
              }

              v91 = v89[v39];
              ++v88;
              ++v90;
              --v89;
            }

            while (v91 != 64);
            v41 = v39 - v88;
            if (v39 - v88 < v38)
            {
              goto LABEL_260;
            }

            v92 = v41 + 1;
            if (v39 == v90)
            {
LABEL_137:
              v40 = 0;
              v187 = 0;
              result = v38;
              v93 = v41;
              v41 = 0;
              if (v92 != v39)
              {
                goto LABEL_156;
              }

LABEL_180:
              v8 = 0;
              v102 = 0;
              v101 = 0;
              a2 = v39;
              goto LABEL_202;
            }

            while (*(v191 + v12 + 2) != 58)
            {
              if (v41 - 2 == ++v12)
              {
                goto LABEL_137;
              }
            }

            v187 = 0;
            v40 = v12 + 3;
            if (v41 < v12 + 3)
            {
              goto LABEL_269;
            }

            v93 = v12 + 2;
            v186 = 0;
            result = v38;
            if (v92 == v39)
            {
              goto LABEL_180;
            }

LABEL_156:
            if (*(v191 + v92) != 91)
            {
LABEL_161:
              if (v39 < v92)
              {
                goto LABEL_263;
              }

              a2 = v92;
              while (1)
              {
                v8 = a2 + 1;
                if (*(v191 + a2) == 58)
                {
                  break;
                }

                ++a2;
                if (v39 == v8)
                {
                  goto LABEL_180;
                }
              }

              if (v39 >= v8)
              {
                v101 = 0;
                LOBYTE(v16) = 0;
                v184 = 0;
                goto LABEL_201;
              }

              goto LABEL_267;
            }

            if (v39 < v92)
            {
              goto LABEL_265;
            }

            v8 = v92 + 2;
            while (*(&v189 + v8) != 93)
            {
              if (++v8 - v39 == 2)
              {
                goto LABEL_161;
              }
            }

            if (v8 - v39 == 1)
            {
              v8 = 0;
              v102 = 0;
              v101 = 1;
              a2 = v39;
              goto LABEL_202;
            }

            if (v39 < v8)
            {
LABEL_271:
              __break(1u);
LABEL_272:
              __break(1u);
              return result;
            }

            LOBYTE(v16) = 0;
            a2 = v8 - 1;
            v184 = 0;
            v101 = 1;
LABEL_201:
            v102 = v39;
LABEL_202:
            if (a2 < v92)
            {
              goto LABEL_256;
            }

            LOBYTE(a1) = 0;
            v185 = 0;
            if (v92 != a2)
            {
              v105 = ~v92 + a2;
              v106 = v191 + v92;
              do
              {
                v107 = *v106++;
                LOBYTE(a1) = v107 == 37;
              }

              while (v107 != 37 && v105-- != 0);
            }

            if (!(v16 & 1 | (v8 == v102)))
            {
              v109 = v8;
              do
              {
                if (*(v191 + v109) < 0)
                {
                  goto LABEL_243;
                }

                v110 = *(v191 + v109) >= 0x40u ? 0x47FFFFFEAFFFFFFFLL : 0xAFFFFFDA00000000;
                if (((v110 >> *(v191 + v109)) & 1) == 0)
                {
                  goto LABEL_243;
                }

                ++v109;
              }

              while (v102 != v109);
            }

            v149 = v102;
            LOBYTE(v151) = v101;
            v152 = v93;
            v153 = result;
            v38 = v92;
            v12 = v39;
LABEL_75:
            v150 = v38;
            v154 = v40;
            v159 = v41;
            if (v14 >= v12)
            {
              if (one-time initialization token for fileIDPrefix == -1)
              {
                goto LABEL_77;
              }

              goto LABEL_247;
            }

            __break(1u);
LABEL_246:
            __break(1u);
LABEL_247:
            swift_once();
LABEL_77:
            v42 = static URL.fileIDPrefix;
            result = specialized Sequence<>.starts<A>(with:)(static URL.fileIDPrefix, v12, v14, v191);
            if (result)
            {
              v43 = *(v42 + 16) + v12;
              v44 = 1;
            }

            else
            {
              v44 = 0;
              v43 = v12;
            }

            if (v43 == v14)
            {
LABEL_85:
              v160 = v15;
              v161 = v188;
              v162 = v153;
              v163 = v152;
              v164 = v187;
              v165 = v154;
              v166 = v159;
              v167 = v186;
              v168 = v150;
              v169 = a2;
              v170 = v185;
              v171 = v8;
              v172 = v149;
              v173 = v184;
              v174 = v12;
              v175 = v14;
              v176 = 0;
              v177 = 0;
              v178 = v4;
              v179 = 0;
              v180 = 0;
              LOBYTE(v181) = v3;
              goto LABEL_109;
            }

            v45 = v43 + 1;
            while (1)
            {
              v46 = *(v191 + v45 - 1);
              if (v46 == 35 || v46 == 63)
              {
                break;
              }

              if (++v45 - v14 == 1)
              {
                goto LABEL_85;
              }
            }

            v47 = v45 - 1;
            if (v45 - 1 >= v12)
            {
              if (v46 == 35)
              {
                if (v14 >= v45)
                {
                  v49 = 0;
                  v48 = 0;
                  v182 = 0;
                  goto LABEL_108;
                }
              }

              else
              {
                if (v14 >= v45)
                {
                  if (v45 == v14)
                  {
LABEL_93:
                    v183 = 0;
                    v49 = v45;
                    v48 = v14;
                    v45 = 0;
                    v14 = 0;
                    goto LABEL_108;
                  }

                  v48 = v45;
                  while (*(v191 + v48) != 35)
                  {
                    if (v14 == ++v48)
                    {
                      goto LABEL_93;
                    }
                  }

                  v183 = 0;
                  if (v14 >= v48 + 1)
                  {
                    v182 = 0;
                    v49 = v45;
                    v45 = v48 + 1;
LABEL_108:
                    v160 = v15;
                    v161 = v188;
                    v162 = v153;
                    v163 = v152;
                    v164 = v187;
                    v165 = v154;
                    v166 = v159;
                    v167 = v186;
                    v168 = v150;
                    v169 = a2;
                    v170 = v185;
                    v171 = v8;
                    v172 = v149;
                    v173 = v184;
                    v174 = v12;
                    v175 = v47;
                    v176 = v49;
                    v177 = v48;
                    v178 = v183;
                    v179 = v45;
                    v180 = v14;
                    LOBYTE(v181) = v182;
LABEL_109:
                    BYTE1(v181) = v151;
                    BYTE2(v181) = a1;
                    HIBYTE(v181) = v44;
                    goto LABEL_110;
                  }

LABEL_259:
                  __break(1u);
LABEL_260:
                  __break(1u);
LABEL_261:
                  __break(1u);
LABEL_262:
                  __break(1u);
LABEL_263:
                  __break(1u);
LABEL_264:
                  __break(1u);
LABEL_265:
                  __break(1u);
LABEL_266:
                  __break(1u);
LABEL_267:
                  __break(1u);
LABEL_268:
                  __break(1u);
LABEL_269:
                  __break(1u);
LABEL_270:
                  __break(1u);
                  goto LABEL_271;
                }

LABEL_252:
                __break(1u);
              }

              __break(1u);
LABEL_254:
              __break(1u);
LABEL_255:
              __break(1u);
LABEL_256:
              __break(1u);
LABEL_257:
              __break(1u);
LABEL_258:
              __break(1u);
              goto LABEL_259;
            }

            __break(1u);
LABEL_249:
            __break(1u);
          }

          __break(1u);
LABEL_251:
          __break(1u);
          goto LABEL_252;
        }
      }

      if ((result - 58) <= 0xF5u)
      {
        if (result - 59) < 6 && ((0x35u >> (result - 59)))
        {
          goto LABEL_66;
        }

        result = ((result & 0xDF) - 91);
        if (result < 0xE6)
        {
          goto LABEL_66;
        }
      }

LABEL_58:
      if (++v15 == v14)
      {
        goto LABEL_103;
      }
    }
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v12 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v13 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    result = _StringObject.sharedUTF8.getter();
    v12 = result;
    v13 = v121;
  }

  v14 = 1;
  v182 = 1;
  v15 = 1;
  LOBYTE(v191[0]) = 1;
  v188 = 1;
  v187 = 1;
  v186 = 1;
  v185 = 1;
  v184 = 1;
  v183 = 1;
  if (!v13)
  {
    _NSBundleDeallocatingImmortalBundle();
    v18 = 0;
    v20 = 0;
    v19 = 0;
    v21 = 0;
    v22 = 0;
    v4 = 0;
    v23 = 0;
    v154 = 0;
    v24 = 0;
    v159 = 0;
    v148 = 0;
    v145 = 0;
    v146 = 0;
    v144 = 0;
    v25 = 1;
    v26 = 1;
    v140 = 1;
    v142 = 1;
    LOBYTE(v14) = 1;
    memset(v147, 0, sizeof(v147));
    LOBYTE(v150) = 1;
    LOBYTE(v153) = 0;
    LOBYTE(v151) = 1;
    LOBYTE(v152) = 0;
    LOBYTE(v149) = 0;
    goto LABEL_111;
  }

  LODWORD(v16) = *v12;
  LODWORD(v17) = (v16 & 0xFFFFFFDF) - 91;
  v159 = v13;
  if (v17 < 0xFFFFFFE6)
  {
    if (v16 != 58)
    {
LABEL_36:
      v18 = 0;
      v27 = 0;
      goto LABEL_37;
    }

    v18 = 0;
    LOBYTE(v191[0]) = 0;
LABEL_19:
    v27 = 1;
    if (v13 != 1)
    {
      goto LABEL_37;
    }

    goto LABEL_20;
  }

  v17 = v13 - 1;
  if (v13 == 1)
  {
    v18 = 0;
    goto LABEL_19;
  }

  v16 = 0;
  v10 = v12 + 1;
  v11 = 53;
  while (1)
  {
    v28 = *(v10 + v16);
    if (v28 > 0x3A)
    {
      goto LABEL_33;
    }

    if (((1 << v28) & 0x680000000000) == 0)
    {
      break;
    }

LABEL_28:
    if (v17 == ++v16)
    {
      LOBYTE(v150) = 1;
      v18 = 0;
      LOBYTE(v151) = 1;
      if ((v13 & 0x8000000000000000) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_102;
    }
  }

  if (((1 << v28) & 0x97D200000000) != 0)
  {
    goto LABEL_36;
  }

  if (v28 != 58)
  {
LABEL_33:
    if ((v28 - 58) <= 0xF5u && ((v28 - 59) < 6 && ((0x35u >> (v28 - 59)) & 1) != 0 || ((v28 & 0xDF) - 91) < 0xE6u))
    {
      goto LABEL_36;
    }

    goto LABEL_28;
  }

  v18 = v16 + 1;
  if (v16 + 1 < 0)
  {
    goto LABEL_258;
  }

  LOBYTE(v191[0]) = 0;
  LOBYTE(v17) = v13 - 2;
  if (v13 - 2 == v16)
  {
    LOBYTE(v150) = 1;
    LOBYTE(v151) = 1;
    LOBYTE(v152) = 0;
    LOBYTE(v149) = 0;
    LOBYTE(v153) = 0;
    LOBYTE(v147[0]) = 0;
    v20 = 0;
    v19 = 0;
    *&v147[1] = 0;
    v148 = 0;
    v21 = 0;
    v22 = 0;
    v4 = 0;
    v154 = 0;
    v23 = 0;
    v145 = 0;
    v146 = 0;
    v144 = 0;
    v25 = v191[0];
    v142 = 1;
    v140 = 1;
    v26 = 1;
    v24 = v13;
    goto LABEL_111;
  }

  v27 = v16 + 2;
  if (v16 + 2 == v13)
  {
LABEL_20:
    LOBYTE(v150) = 1;
    LOBYTE(v151) = 1;
    if ((v13 & 0x8000000000000000) == 0)
    {
LABEL_21:
      LOBYTE(v149) = 0;
      LOBYTE(v152) = 0;
      LOBYTE(v153) = 0;
      LOBYTE(v147[0]) = 0;
      v20 = 0;
      v19 = 0;
      *&v147[1] = 0;
      v148 = 0;
      v21 = 0;
      v22 = 0;
      v4 = 0;
      v154 = 0;
      v23 = 0;
      v24 = 0;
      v145 = 0;
      v146 = 0;
      v144 = 0;
      v25 = v191[0];
      v142 = 1;
      v140 = 1;
      v26 = 1;
      goto LABEL_111;
    }

LABEL_102:
    __break(1u);
LABEL_103:
    v15 = 0;
    goto LABEL_104;
  }

LABEL_37:
  if (v27 + 1 == v13 || *(v12 + v27) != 47 || *(v12 + v27 + 1) != 47)
  {
    LODWORD(v152) = 0;
    LODWORD(v153) = 0;
    v128 = 0;
    v130 = 0;
    v154 = 0;
    v4 = 0;
    v31 = 0;
    v3 = 0;
    v136 = 0;
    v30 = 0;
LABEL_45:
    v132 = v31;
    v134 = v30;
    if (v13 < v27)
    {
      goto LABEL_246;
    }

    v32 = v18;
    if (one-time initialization token for fileIDPrefix != -1)
    {
      v122 = v27;
      swift_once();
      v27 = v122;
      v13 = v159;
    }

    v138 = v27;
    v33 = static URL.fileIDPrefix;
    result = specialized Sequence<>.starts<A>(with:)(static URL.fileIDPrefix, v27, v13, v12);
    v34 = v138;
    if (result)
    {
      v34 = *(v33 + 16) + v138;
    }

    v35 = v159;
    v18 = v32;
    LOBYTE(v149) = result;
    v148 = v3;
    if (v34 == v159)
    {
LABEL_55:
      LOBYTE(v150) = 1;
      LOBYTE(v151) = 1;
      LOBYTE(v147[0]) = 0;
      v145 = 0;
      v146 = 0;
      *&v147[1] = 0;
      v144 = 0;
      v25 = v191[0];
      v26 = v188;
      v140 = v187;
      v142 = v186;
      LOBYTE(v14) = v185;
      v20 = v134;
      v19 = v136;
      v21 = v130;
      v22 = v132;
      v23 = v128;
      v24 = v138;
      goto LABEL_111;
    }

    v36 = v34 + 2;
    while (1)
    {
      v37 = *(v12 + v36 - 2);
      if (v37 == 35 || v37 == 63)
      {
        break;
      }

      if (++v36 - v159 == 2)
      {
        goto LABEL_55;
      }
    }

    v50 = v36 - 2;
    if (v36 - 2 >= v138)
    {
      if (v37 == 35)
      {
        v80 = v36 - 1;
        if (v159 < v80)
        {
          goto LABEL_255;
        }

        v53 = v80;
        v51 = 0;
        v183 = 0;
        v52 = v159;
        v35 = 0;
      }

      else
      {
        v51 = v36 - 1;
        if (v159 < v36 - 1)
        {
          goto LABEL_254;
        }

        if (v36 - v159 == 1)
        {
LABEL_100:
          v52 = 0;
          v53 = 0;
          v184 = 0;
        }

        else
        {
          while (*(v12 + 1 + v36 - 2) != 35)
          {
            ++v36;
            if (1 - v159 + v36 == 2)
            {
              goto LABEL_100;
            }
          }

          v184 = 0;
          if (v159 < v36)
          {
            goto LABEL_262;
          }

          v52 = v159;
          v53 = v36;
          v35 = v36 - 1;
          v183 = 0;
        }
      }

      v20 = v134;
      v19 = v136;
      v144 = v52;
      v145 = v51;
      v146 = v53;
      *&v147[1] = v35;
      v25 = v191[0];
      v26 = v188;
      v140 = v187;
      v142 = v186;
      LOBYTE(v14) = v185;
      LOBYTE(v147[0]) = 0;
      LOBYTE(v151) = v184;
      v159 = v50;
      LOBYTE(v150) = v183;
      v21 = v130;
      v22 = v132;
      v23 = v128;
      v24 = v138;
      goto LABEL_111;
    }

    goto LABEL_249;
  }

  v4 = v27 + 2;
  v29 = v13;
  if (v27 + 2 != v13)
  {
    v29 = v27 + 2;
    while (1)
    {
      v85 = *(v12 + v29);
      v82 = v85 > 0x3F;
      v86 = (1 << v85) & 0x8000800800000000;
      if (!v82 && v86 != 0)
      {
        break;
      }

      if (v13 == ++v29)
      {
        v29 = v13;
        break;
      }
    }
  }

  if (v29 < v4)
  {
    goto LABEL_251;
  }

  if (v4 == v29)
  {
    LODWORD(v152) = 0;
    LODWORD(v153) = 0;
    v128 = 0;
    v130 = 0;
    v154 = 0;
    v3 = 0;
    v136 = 0;
    v30 = 0;
    v186 = 0;
    v31 = v27 + 2;
    v27 += 2;
    goto LABEL_45;
  }

  v94 = 0;
  v95 = v12 - 1;
  v96 = v27 + 2;
  do
  {
    if (v29 == v96)
    {
      v100 = 0;
      v3 = 0;
      v136 = 0;
      v30 = 0;
      v31 = v27 + 2;
      goto LABEL_184;
    }

    v97 = *(v95 + v29);
    ++v94;
    ++v96;
    --v95;
  }

  while (v97 != 64);
  v98 = v29 - v94;
  if (v98 < v4)
  {
    goto LABEL_261;
  }

  v136 = v98;
  v31 = v98 + 1;
  if (v29 == v96)
  {
LABEL_147:
    v100 = 0;
    v3 = 0;
    v188 = 0;
  }

  else
  {
    v99 = v98 - 2;
    while (*(v12 + 2 + v27) != 58)
    {
      if (v99 == ++v27)
      {
        goto LABEL_147;
      }
    }

    v188 = 0;
    v3 = v27 + 3;
    if (v136 < v27 + 3)
    {
      goto LABEL_270;
    }

    v100 = v136;
    v187 = 0;
    v136 = v27 + 2;
  }

  v30 = v4;
LABEL_184:
  if (v31 == v29)
  {
LABEL_194:
    v103 = 0;
    v104 = 0;
    result = 0;
    v4 = v29;
    goto LABEL_223;
  }

  if (*(v12 + v31) != 91)
  {
LABEL_190:
    if (v29 < v31)
    {
      goto LABEL_264;
    }

    v4 = v31;
    while (1)
    {
      result = v4 + 1;
      if (*(v12 + v4) == 58)
      {
        break;
      }

      ++v4;
      if (v29 == result)
      {
        goto LABEL_194;
      }
    }

    if (v29 >= result)
    {
      v103 = 0;
      v14 = 0;
      v185 = 0;
      goto LABEL_222;
    }

    goto LABEL_268;
  }

  if (v29 < v31)
  {
    goto LABEL_266;
  }

  result = v31 + 2;
  while (*(v12 + result - 2) != 93)
  {
    if (++result - v29 == 2)
    {
      goto LABEL_190;
    }
  }

  if (result - v29 == 1)
  {
    v104 = 0;
    result = 0;
    v103 = 1;
    v4 = v29;
    goto LABEL_223;
  }

  if (v29 < result)
  {
    goto LABEL_272;
  }

  v14 = 0;
  v4 = result - 1;
  v185 = 0;
  v103 = 1;
LABEL_222:
  v104 = v29;
LABEL_223:
  if (v4 < v31)
  {
    goto LABEL_257;
  }

  v111 = 0;
  v186 = 0;
  if (v31 != v4)
  {
    v112 = ~v31 + v4;
    v113 = (v12 + v31);
    do
    {
      v114 = *v113++;
      v111 = v114 == 37;
    }

    while (v114 != 37 && v112-- != 0);
  }

  if (result == v104)
  {
    v116 = 1;
  }

  else
  {
    v116 = v14;
  }

  if (v116)
  {
LABEL_242:
    LODWORD(v152) = v111;
    LODWORD(v153) = v103;
    v128 = v104;
    v130 = v100;
    v154 = result;
    v27 = v29;
    goto LABEL_45;
  }

  v117 = result;
  while ((*(v12 + v117) & 0x80000000) == 0)
  {
    v118 = *(v12 + v117) >= 0x40u ? 0x47FFFFFEAFFFFFFFLL : 0xAFFFFFDA00000000;
    if (((v118 >> *(v12 + v117)) & 1) == 0)
    {
      break;
    }

    if (v104 == ++v117)
    {
      goto LABEL_242;
    }
  }

LABEL_243:

  return 0;
}

Swift::Void __swiftcall URL.removeCachedResourceValue(forKey:)(NSURLResourceKey forKey)
{
  v3 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  v5 = (*(v3 + 432))(ObjectType, v3);
  [v5 removeCachedResourceValueForKey_];
}

char *_SwiftURL.pathComponents.getter()
{
  v46 = *MEMORY[0x1E69E9840];
  v0 = _SwiftURL.absolutePath(percentEncoded:)(1);
  v1 = String._pathComponents.getter(v0._countAndFlagsBits, v0._object);

  v2 = *(v1 + 16);
  if (!v2)
  {

    v6 = MEMORY[0x1E69E7CC0];
    goto LABEL_37;
  }

  v45 = MEMORY[0x1E69E7CC0];
  v42 = v1;
  v43 = v2;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
  v3 = v1;
  v4 = v43;
  v5 = 0;
  v6 = v45;
  v7 = (v1 + 40);
  do
  {
    if (v5 >= *(v3 + 16))
    {
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v9 = *(v7 - 1);
    v8 = *v7;
    v10 = HIBYTE(*v7) & 0xF;
    v11 = v9 & 0xFFFFFFFFFFFFLL;
    if ((*v7 & 0x2000000000000000) != 0)
    {
      v12 = HIBYTE(*v7) & 0xF;
    }

    else
    {
      v12 = v9 & 0xFFFFFFFFFFFFLL;
    }

    if (!v12)
    {
      v20 = 0;
      v21 = 0xE000000000000000;
      goto LABEL_23;
    }

    if ((v8 & 0x1000000000000000) != 0)
    {

      v24 = String.UTF8View._foreignCount()();
      v12 = v24;
      if (v24 < 0)
      {
        goto LABEL_48;
      }

      goto LABEL_18;
    }

    if ((v8 & 0x2000000000000000) != 0)
    {
      v44[0] = *(v7 - 1);
      v44[1] = v8 & 0xFFFFFFFFFFFFFFLL;

      MEMORY[0x1EEE9AC00](v22);
      v16 = &v41 - v23;
      v18 = v44;
      v17 = v10;
      v19 = v10;
    }

    else
    {
      if ((v9 & 0x1000000000000000) != 0)
      {
        v13 = ((v8 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v13 = _StringObject.sharedUTF8.getter();
        v11 = v33;
        if (v33 < 0)
        {
          goto LABEL_49;
        }
      }

      if (v11 >= 1025)
      {
        isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
        if ((isStackAllocationSafe & 1) == 0)
        {
          v34 = swift_slowAlloc();
          v20 = specialized closure #1 in StringProtocol.removingURLPercentEncoding<A>(utf8Buffer:excluding:encoding:)(v34, v11, v13, v11, MEMORY[0x1E69E7CD0], 4);
          v21 = v35;
          v24 = MEMORY[0x1865D2690](v34, -1, -1);
          if (v21 != 1)
          {
            goto LABEL_20;
          }

LABEL_17:
          if (v12 < 0)
          {
            goto LABEL_48;
          }

LABEL_18:
          if (v12 < 1025 || (v24 = swift_stdlib_isStackAllocationSafe(), (v24 & 1) != 0))
          {
            MEMORY[0x1EEE9AC00](v24);
            v20 = specialized closure #1 in StringProtocol.removingURLPercentEncoding<A>(utf8Buffer:excluding:encoding:)(&v41 - v26, v12, v9, v8, MEMORY[0x1E69E7CD0], 4);
            v21 = v27;
          }

          else
          {
            v31 = swift_slowAlloc();
            v20 = specialized closure #1 in StringProtocol.removingURLPercentEncoding<A>(utf8Buffer:excluding:encoding:)(v31, v12, v9, v8, MEMORY[0x1E69E7CD0], 4);
            v21 = v32;
            MEMORY[0x1865D2690](v31, -1, -1);
          }

          goto LABEL_20;
        }
      }

      MEMORY[0x1EEE9AC00](isStackAllocationSafe);
      v16 = &v41 - v15;
      v17 = v11;
      v18 = v13;
      v19 = v11;
    }

    v24 = specialized closure #1 in StringProtocol.removingURLPercentEncoding<A>(utf8Buffer:excluding:encoding:)(v16, v17, v18, v19, MEMORY[0x1E69E7CD0], 4);
    v20 = v24;
    v21 = v25;
    if (v25 == 1)
    {
      goto LABEL_17;
    }

LABEL_20:

    if (!v21)
    {
      v20 = 0;
      v21 = 0xE000000000000000;
    }

    v3 = v42;
    v4 = v43;
LABEL_23:
    v45 = v6;
    v29 = *(v6 + 2);
    v28 = *(v6 + 3);
    if (v29 >= v28 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1);
      v3 = v42;
      v4 = v43;
      v6 = v45;
    }

    ++v5;
    *(v6 + 2) = v29 + 1;
    v30 = &v6[16 * v29];
    *(v30 + 4) = v20;
    *(v30 + 5) = v21;
    v7 += 2;
  }

  while (v4 != v5);

LABEL_37:
  v36 = *(v6 + 2);
  if (v36 <= 1)
  {
    return v6;
  }

  v37 = &v6[16 * v36 + 16];
  v38 = *v37 == 47 && *(v37 + 1) == 0xE100000000000000;
  if (!v38 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return v6;
  }

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v39 = *(v6 + 2);
    if (v39)
    {
      goto LABEL_45;
    }

LABEL_51:
    __break(1u);
  }

LABEL_50:
  v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
  v39 = *(v6 + 2);
  if (!v39)
  {
    goto LABEL_51;
  }

LABEL_45:
  *(v6 + 2) = v39 - 1;

  return v6;
}

void *specialized withVaList<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for __VaListBuilder();
  v4 = swift_allocObject();
  v4[2] = 8;
  v4[3] = 0;
  v5 = v4 + 3;
  v4[4] = 0;
  v4[5] = 0;
  v6 = *(a1 + 16);
  if (!v6)
  {
LABEL_26:
    v24 = __VaListBuilder.va_list()();
    v25 = String._bridgeToObjectiveCImpl()();
    NSLogv(v25, v24);

    return swift_unknownObjectRelease();
  }

  v7 = 0;
  v8 = a1 + 32;
  while (1)
  {
    __swift_project_boxed_opaque_existential_1((v8 + 40 * v7), *(v8 + 40 * v7 + 24));
    result = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v10 = *v5;
    v11 = result[2];
    v12 = __OFADD__(*v5, v11);
    v13 = *v5 + v11;
    if (v12)
    {
      break;
    }

    v14 = v4[4];
    if (v14 >= v13)
    {
      goto LABEL_18;
    }

    if (v14 + 0x4000000000000000 < 0)
    {
      goto LABEL_31;
    }

    v15 = v4[5];
    if (2 * v14 > v13)
    {
      v13 = 2 * v14;
    }

    v4[4] = v13;
    if ((v13 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_32;
    }

    v16 = result;
    v17 = swift_slowAlloc();
    v18 = v17;
    v4[5] = v17;
    if (v15)
    {
      if (v17 != v15 || v17 >= &v15[8 * v10])
      {
        memmove(v17, v15, 8 * v10);
      }

      __VaListBuilder.deallocStorage(wordCount:storage:)();
      result = v16;
LABEL_18:
      v18 = v4[5];
      if (!v18)
      {
        goto LABEL_25;
      }

      goto LABEL_19;
    }

    result = v16;
    if (!v18)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_19:
    v20 = result[2];
    if (v20)
    {
      v21 = result + 4;
      v22 = *v5;
      while (1)
      {
        v23 = *v21++;
        *&v18[8 * v22] = v23;
        v22 = *v5 + 1;
        if (__OFADD__(*v5, 1))
        {
          break;
        }

        *v5 = v22;
        if (!--v20)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
      break;
    }

LABEL_3:

    if (++v7 == v6)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t __JSONEncoder.wrap<A>(_:for:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v51 = a2;
  v49 = a5;
  v50 = a1;
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v47 - v13;
  v16 = v5;
  v17 = *(v5 + 88);
  if (v17)
  {
    if (v17 == 1)
    {
      return _s10Foundation6Base64O14encodeToString5bytes7optionsSSx_So06NSDataB15EncodingOptionsVtSlRzs5UInt8V7ElementRtzlFZAA4DataV_Tt1g5(v50, v51, 0);
    }

    v48 = *(v16 + 96);
    (*(v9 + 16))(v11, a3, v8, v14);
    v20 = *(a4 - 8);
    if ((*(v20 + 48))(v11, 1, a4) == 1)
    {
      v21 = *(v9 + 8);
      v22 = v48;

      v21(v11, v8);
      v66 = 0;
      v64 = 0u;
      v65 = 0u;
    }

    else
    {
      *(&v65 + 1) = a4;
      v66 = v49;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v64);
      (*(v20 + 32))(boxed_opaque_existential_0, v11, a4);
      v22 = v48;
    }

    outlined init with copy of FloatingPointRoundingRule?(&v64, &v55, &_ss9CodingKey_pSgMd, &_ss9CodingKey_pSgMR);
    v27 = v52;
    v28 = v16;
    if (*(&v56 + 1))
    {
      outlined init with take of Equatable(&v55, v63);
      v16 = *(v16 + 184);
      v29 = v17;
      if (v16)
      {
        *(v28 + 184) = 0;
        outlined destroy of TermOfAddress?(v16 + 192, &_ss9CodingKey_pSgMd, &_ss9CodingKey_pSgMR);
        outlined init with take of Equatable(v63, v16 + 192);
        *(v16 + 176) = v28;
      }

      else
      {
        v38 = *(v28 + 136);
        v59 = *(v28 + 120);
        v60 = v38;
        v61 = *(v28 + 152);
        v62 = *(v28 + 168);
        v39 = *(v28 + 72);
        v55 = *(v28 + 56);
        v56 = v39;
        v40 = *(v28 + 104);
        v57 = *(v28 + 88);
        v58 = v40;
        outlined init with take of Equatable(v63, v54);
        type metadata accessor for __JSONEncoder();
        v16 = swift_allocObject();
        *(v16 + 184) = 0u;
        *(v16 + 200) = 0u;
        *(v16 + 216) = 0u;
        v41 = v60;
        *(v16 + 120) = v59;
        *(v16 + 136) = v41;
        *(v16 + 152) = v61;
        v42 = v56;
        *(v16 + 56) = v55;
        *(v16 + 72) = v42;
        v43 = v58;
        *(v16 + 88) = v57;
        *(v16 + 16) = 0;
        *(v16 + 24) = 0;
        *(v16 + 32) = -1;
        *(v16 + 40) = 0;
        *(v16 + 48) = 0;
        v44 = v62;
        *(v16 + 104) = v43;
        *(v16 + 168) = v44;
        *(v16 + 176) = v28;

        outlined init with copy of JSONEncoder._Options(&v55, v53);
        outlined assign with take of CodingKey?(v54, v16 + 192);
      }
    }

    else
    {
      v29 = v17;
      outlined destroy of TermOfAddress?(&v55, &_ss9CodingKey_pSgMd, &_ss9CodingKey_pSgMR);
    }

    outlined destroy of TermOfAddress?(&v64, &_ss9CodingKey_pSgMd, &_ss9CodingKey_pSgMR);
    v67 = v16;
    *(&v56 + 1) = type metadata accessor for __JSONEncoder();
    *&v57 = lazy protocol witness table accessor for type __JSONEncoder and conformance __JSONEncoder(&lazy protocol witness table cache variable for type __JSONEncoder and conformance __JSONEncoder, type metadata accessor for __JSONEncoder, &protocol conformance descriptor for __JSONEncoder);
    *&v55 = v16;

    v29(v50, v51, &v55);
    if (v27)
    {
      __swift_destroy_boxed_opaque_existential_1(&v55);
      $defer #1 <A>() in __JSONEncoder.wrap<A>(_:for:)(v28, &v67);
      sub_1807A5C7C(v29, v22);
    }

    __swift_destroy_boxed_opaque_existential_1(&v55);
    v45 = __JSONEncoder.takeValue()();
    if (v46 == 255)
    {
      v37 = MEMORY[0x1E69E7CC8];
    }

    else
    {
      v37 = v45;
    }

    $defer #1 <A>() in __JSONEncoder.wrap<A>(_:for:)(v28, &v67);
    sub_1807A5C7C(v29, v22);
  }

  else
  {
    (*(v9 + 16))(&v47 - v13, a3, v8, v14);
    v19 = *(a4 - 8);
    if ((*(v19 + 48))(v15, 1, a4) == 1)
    {
      (*(v9 + 8))(v15, v8);
      v66 = 0;
      v64 = 0u;
      v65 = 0u;
    }

    else
    {
      *(&v65 + 1) = a4;
      v66 = v49;
      v23 = __swift_allocate_boxed_opaque_existential_0(&v64);
      (*(v19 + 32))(v23, v15, a4);
    }

    v24 = v52;
    outlined init with copy of FloatingPointRoundingRule?(&v64, &v55, &_ss9CodingKey_pSgMd, &_ss9CodingKey_pSgMR);
    if (*(&v56 + 1))
    {
      outlined init with take of Equatable(&v55, v63);
      v25 = *(v16 + 184);
      if (v25)
      {
        *(v16 + 184) = 0;
        outlined destroy of TermOfAddress?(v25 + 192, &_ss9CodingKey_pSgMd, &_ss9CodingKey_pSgMR);
        outlined init with take of Equatable(v63, v25 + 192);
        *(v25 + 176) = v16;
      }

      else
      {
        v30 = *(v16 + 136);
        v59 = *(v16 + 120);
        v60 = v30;
        v61 = *(v16 + 152);
        v62 = *(v16 + 168);
        v31 = *(v16 + 72);
        v55 = *(v16 + 56);
        v56 = v31;
        v32 = *(v16 + 104);
        v57 = *(v16 + 88);
        v58 = v32;
        outlined init with take of Equatable(v63, v54);
        type metadata accessor for __JSONEncoder();
        v25 = swift_allocObject();
        *(v25 + 184) = 0u;
        *(v25 + 200) = 0u;
        *(v25 + 216) = 0u;
        v33 = v60;
        *(v25 + 120) = v59;
        *(v25 + 136) = v33;
        *(v25 + 152) = v61;
        v34 = v56;
        *(v25 + 56) = v55;
        *(v25 + 72) = v34;
        v35 = v58;
        *(v25 + 88) = v57;
        *(v25 + 16) = 0;
        *(v25 + 24) = 0;
        *(v25 + 32) = -1;
        *(v25 + 40) = 0;
        *(v25 + 48) = 0;
        v36 = v62;
        *(v25 + 104) = v35;
        *(v25 + 168) = v36;
        *(v25 + 176) = v16;

        outlined init with copy of JSONEncoder._Options(&v55, v53);
        outlined assign with take of CodingKey?(v54, v25 + 192);
      }
    }

    else
    {
      outlined destroy of TermOfAddress?(&v55, &_ss9CodingKey_pSgMd, &_ss9CodingKey_pSgMR);

      v25 = v16;
    }

    outlined destroy of TermOfAddress?(&v64, &_ss9CodingKey_pSgMd, &_ss9CodingKey_pSgMR);
    v67 = v25;

    __JSONEncoder.unkeyedContainer()(&v55);

    specialized Data._Representation.withUnsafeBytes<A>(_:)(v50, v51, &v55);
    if (v24)
    {
      __swift_destroy_boxed_opaque_existential_1(&v55);
      $defer #1 <A>() in __JSONEncoder.wrap<A>(_:for:)(v16, &v67);
    }

    __swift_destroy_boxed_opaque_existential_1(&v55);
    v37 = __JSONEncoder.takeValue()();
    $defer #1 <A>() in __JSONEncoder.wrap<A>(_:for:)(v16, &v67);
  }

  return v37;
}

void *NSLog(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return specialized withVaList<A>(_:_:)(a3, a1, a2);
}

uint64_t _CalendarICU.__deallocating_deinit()
{
  ucal_close();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t PredicateExpressions.NotEqual.description.getter(uint64_t a1)
{
  _StringGuts.grow(_:)(26);
  MEMORY[0x1865CB0E0](0x6C61757145746F4ELL, 0xEE00203A73686C28);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865CB0E0](0x203A736872202CLL, 0xE700000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865CB0E0](41, 0xE100000000000000);
  return 0;
}

unint64_t lazy protocol witness table accessor for type PredicateCodableError and conformance PredicateCodableError()
{
  result = lazy protocol witness table cache variable for type PredicateCodableError and conformance PredicateCodableError;
  if (!lazy protocol witness table cache variable for type PredicateCodableError and conformance PredicateCodableError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateCodableError and conformance PredicateCodableError);
  }

  return result;
}

uint64_t *JSONEncoder.encode<A>(_:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v41 = *MEMORY[0x1E69E9840];
  v11 = *(v4 + 96);
  v39[4] = *(v4 + 80);
  v39[5] = v11;
  v39[6] = *(v4 + 112);
  v40 = *(v4 + 128);
  v12 = *(v4 + 32);
  v39[0] = *(v4 + 16);
  v39[1] = v12;
  v13 = *(v4 + 64);
  v39[2] = *(v4 + 48);
  v39[3] = v13;
  type metadata accessor for __JSONEncoder();
  memset(v34, 0, sizeof(v34));
  v35 = 0;
  v14 = swift_allocObject();
  *(v14 + 23) = 0u;
  *(v14 + 25) = 0u;
  *(v14 + 27) = 0u;
  v15 = *(v6 + 96);
  *(v14 + 15) = *(v6 + 80);
  *(v14 + 17) = v15;
  *(v14 + 19) = *(v6 + 112);
  v16 = *(v6 + 32);
  *(v14 + 7) = *(v6 + 16);
  *(v14 + 9) = v16;
  v17 = *(v6 + 64);
  *(v14 + 11) = *(v6 + 48);
  v14[2] = 0;
  v14[3] = 0;
  *(v14 + 32) = -1;
  v14[5] = 0;
  v14[6] = 0;
  v18 = *(v6 + 128);
  *(v14 + 13) = v17;
  v14[21] = v18;
  v14[22] = 0;
  outlined init with copy of JSONEncoder._Options(v39, &v36);
  outlined assign with take of CodingKey?(v34, (v14 + 24));
  v19 = specialized __JSONEncoder.wrapGeneric<A, B>(_:configuration:for:)(a1, a2, 0, 0, 0, 255, a3, a4);
  if (!v5)
  {
    v23 = v21;
    if (v21 != 0xFF)
    {
      v24 = v19;
      v25 = v20;
      (*(*v6 + 96))(&v36);
      v26 = v36;
      v36 = 0;
      LOBYTE(v37) = v26 & 1;
      BYTE1(v37) = (v26 & 2) != 0;
      BYTE2(v37) = (v26 & 8) != 0;
      v38 = MEMORY[0x1E69E7CC0];
      v27._rawValue = v24;
      v28._rawValue = v25;
      JSONWriter.serializeJSON(_:depth:)(v27, v28, v23, 0);
      outlined consume of JSONEncoderValue?(v24, v25, v23);
      v14 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(v38);

      return v14;
    }

    v29 = type metadata accessor for EncodingError();
    swift_allocError();
    v31 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_syp_s13EncodingErrorO7ContextVtMd, &_syp_s13EncodingErrorO7ContextVtMR);
    v31[3] = a3;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v31);
    (*(*(a3 - 8) + 16))(boxed_opaque_existential_0, a1, a3);
    v36 = 0;
    v37 = 0xE000000000000000;
    _StringGuts.grow(_:)(39);

    v36 = 0x6576656C2D706F54;
    v37 = 0xEA0000000000206CLL;
    v33 = _typeName(_:qualified:)();
    MEMORY[0x1865CB0E0](v33);

    v14 = &v36;
    MEMORY[0x1865CB0E0](0xD00000000000001BLL, 0x8000000181482320);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v29 - 8) + 104))(v31, *MEMORY[0x1E69E6B30], v29);
    swift_willThrow();
  }

  return v14;
}

uint64_t specialized __JSONEncoder.wrapGeneric<A, B>(_:configuration:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  if (a6 == -1)
  {
    v16 = 0;
    v17 = 0;
    v15 = 0;
    v41[1] = 0;
    v41[2] = 0;
  }

  else
  {
    v15 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    v16 = swift_allocObject();
    *(v16 + 16) = a3;
    *(v16 + 24) = a4;
    *(v16 + 32) = a5;
    *(v16 + 40) = a6;
    v17 = &type metadata for _CodingKey;
  }

  v41[0] = v16;
  v41[3] = v17;
  v41[4] = v15;
  outlined init with copy of FloatingPointRoundingRule?(v41, &v32, &_ss9CodingKey_pSgMd, &_ss9CodingKey_pSgMR);
  if (*(&v33 + 1))
  {
    outlined init with take of Equatable(&v32, v40);
    v18 = *(v8 + 184);
    if (v18)
    {
      *(v8 + 184) = 0;
      outlined copy of _CodingKey?(a3, a4, a5, a6);
      outlined destroy of TermOfAddress?(v18 + 192, &_ss9CodingKey_pSgMd, &_ss9CodingKey_pSgMR);
      outlined init with take of Equatable(v40, v18 + 192);
      *(v18 + 176) = v8;
    }

    else
    {
      v19 = *(v8 + 136);
      v36 = *(v8 + 120);
      v37 = v19;
      v38 = *(v8 + 152);
      v39 = *(v8 + 168);
      v20 = *(v8 + 72);
      v32 = *(v8 + 56);
      v33 = v20;
      v21 = *(v8 + 104);
      v34 = *(v8 + 88);
      v35 = v21;
      outlined init with take of Equatable(v40, v31);
      type metadata accessor for __JSONEncoder();
      v18 = swift_allocObject();
      *(v18 + 184) = 0u;
      *(v18 + 200) = 0u;
      *(v18 + 216) = 0u;
      v22 = v37;
      *(v18 + 120) = v36;
      *(v18 + 136) = v22;
      *(v18 + 152) = v38;
      v23 = v33;
      *(v18 + 56) = v32;
      *(v18 + 72) = v23;
      v24 = v35;
      *(v18 + 88) = v34;
      *(v18 + 16) = 0;
      *(v18 + 24) = 0;
      *(v18 + 32) = -1;
      *(v18 + 40) = 0;
      *(v18 + 48) = 0;
      v25 = v39;
      *(v18 + 104) = v24;
      *(v18 + 168) = v25;
      *(v18 + 176) = v8;
      outlined copy of _CodingKey?(a3, a4, a5, a6);

      outlined init with copy of JSONEncoder._Options(&v32, v30);
      outlined assign with take of CodingKey?(v31, v18 + 192);
    }
  }

  else
  {
    outlined copy of _CodingKey?(a3, a4, a5, a6);
    outlined destroy of TermOfAddress?(&v32, &_ss9CodingKey_pSgMd, &_ss9CodingKey_pSgMR);

    v18 = v8;
  }

  outlined destroy of TermOfAddress?(v41, &_ss9CodingKey_pSgMd, &_ss9CodingKey_pSgMR);
  v42 = v18;
  *(&v33 + 1) = type metadata accessor for __JSONEncoder();
  *&v34 = lazy protocol witness table accessor for type __JSONEncoder and conformance __JSONEncoder(&lazy protocol witness table cache variable for type __JSONEncoder and conformance __JSONEncoder, type metadata accessor for __JSONEncoder, &protocol conformance descriptor for __JSONEncoder);
  *&v32 = v18;
  v26 = *(a8 + 16);

  v26(&v32, a2, a7, a8);
  __swift_destroy_boxed_opaque_existential_1(&v32);
  if (!v29)
  {
    v18 = __JSONEncoder.takeValue()();
  }

  $defer #1 <A>() in __JSONEncoder.wrap<A>(_:for:)(v8, &v42);

  return v18;
}

uint64_t Predicate.encode(to:configuration:)(void *a1, uint64_t *a2, uint64_t a3)
{
  v102 = a1;
  v5 = *(a3 + 16);
  v107 = 8 * v5;
  if (v5 == 1)
  {
    MetatypeMetadata = swift_getMetatypeMetadata();
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    if (v5)
    {
      v8 = *(a3 + 24) & 0xFFFFFFFFFFFFFFFELL;
      v9 = (&v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      v10 = v5;
      do
      {
        v8 += 8;
        *v9++ = swift_getMetatypeMetadata();
        --v10;
      }

      while (v10);
    }

    MetatypeMetadata = swift_getTupleTypeMetadata();
  }

  v100 = &v86;
  v88 = MetatypeMetadata;
  MEMORY[0x1EEE9AC00](MetatypeMetadata);
  v12 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation29PredicateExpressionCodingKeysOGMd, &_ss22KeyedEncodingContainerVy10Foundation29PredicateExpressionCodingKeysOGMR);
  v99 = &v86;
  v104 = v13;
  v98 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v103 = &v86 - v17;
  v106 = a3;
  if (v5 == 1)
  {
    TupleTypeMetadata = type metadata accessor for PredicateExpressions.Variable(0, *(*(a3 + 24) & 0xFFFFFFFFFFFFFFFELL), v15, v16);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v14);
    if (v5)
    {
      v22 = (*(v106 + 24) & 0xFFFFFFFFFFFFFFFELL);
      v23 = (&v86 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
      v24 = v5;
      do
      {
        v25 = *v22++;
        *v23++ = type metadata accessor for PredicateExpressions.Variable(255, v25, v19, v20);
        --v24;
      }

      while (v24);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v105 = TupleTypeMetadata;
  v97 = &v86;
  v89 = *(TupleTypeMetadata - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata - 8);
  v27 = &v86 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = &v86;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v86 - v29;
  v95 = &v86;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v86 - v32;
  v34 = a2[1];
  v90 = *a2;
  v91 = v34;
  v120 = *(a2 + 16);
  __swift_project_boxed_opaque_existential_1(v102, v102[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  v35 = v92;
  outlined init with copy of Hashable & Sendable(v92, v115);
  v87 = v117;
  v101 = v116;
  v102 = __swift_project_boxed_opaque_existential_1(v115, v116);
  v94 = &v86;
  v36 = MEMORY[0x1EEE9AC00](v102);
  v38 = (v37 + 15) & 0xFFFFFFFFFFFFFFF0;
  v39 = &v86 - v38;
  v40 = v35 + *(v106 + 36);
  v41 = v105;
  (*(v89 + 16))(v30, v40, v105, v36);
  if (v5)
  {
    v42 = (v41 + 4);
    v43 = (&v86 - v38);
    v44 = v5;
    do
    {
      if (v5 == 1)
      {
        v45 = 0;
        v46 = v33;
      }

      else
      {
        v45 = *v42;
        v46 = &v33[v45];
      }

      *&v33[v45] = *&v30[v45];
      *v43++ = v46;
      v42 += 4;
      --v44;
    }

    while (v44);
  }

  __swift_mutable_project_boxed_opaque_existential_1(v118, v118[3]);
  lazy protocol witness table accessor for type PredicateExpressionCodingKeys and conformance PredicateExpressionCodingKeys();
  v47 = v103;
  v48 = dispatch thunk of UnkeyedEncodingContainer.nestedContainer<A>(keyedBy:)();
  MEMORY[0x1EEE9AC00](v48);
  v49 = (&v86 - v38);
  if (v5)
  {
    v50 = 0;
    v51 = (v105 + 4);
    v52 = v91;
    v53 = v90;
    do
    {
      if (v5 == 1)
      {
        v54 = 0;
      }

      else
      {
        v54 = *v51;
      }

      *&v27[v54] = **&v39[8 * v50];
      v49[v50++] = &v27[v54];
      v51 += 4;
    }

    while (v5 != v50);
    v105 = &v86;
    v112 = v53;
    v113 = v52;
    v114 = v120;
    MEMORY[0x1EEE9AC00](v53);
    v57 = &v86 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
    v58 = 0;
    v59 = *(v55 + 24) & 0xFFFFFFFFFFFFFFFELL;
    v61 = (v60 + 32);
    v62 = v102;
    v63 = v101;
    do
    {
      if (v5 == 1)
      {
        v64 = 0;
      }

      else
      {
        v64 = *v61;
      }

      v65 = &v12[v64];
      *v65 = *(v59 + 8 * v58);
      *&v57[8 * v58++] = v65;
      v61 += 4;
    }

    while (v5 != v58);
  }

  else
  {
    v105 = &v86;
    v112 = v90;
    v113 = v91;
    v57 = &v119;
    v114 = v120;
    v55 = v106;
    v62 = v102;
    v63 = v101;
  }

  v66 = *(v55 + 24);

  PredicateCodableConfiguration.allowInputs<each A>(_:)(v57, v5, v66);
  v111 = v63;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v109);
  (*(*(v63 - 8) + 16))(boxed_opaque_existential_0, v62, v63);
  __swift_project_boxed_opaque_existential_1(v109, v111);
  DynamicType = swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_1(v109);
  v69 = v112;
  v109[0] = v112;
  v109[1] = v113;
  v110 = v114;

  v70 = v93;
  v71 = ExpressionStructure.init(_:with:path:)(DynamicType, v109, MEMORY[0x1E69E7CC0]);
  if (v70)
  {
  }

  else
  {
    v106 = v73;
    v107 = v72;
    v93 = v71;
    LOBYTE(v108) = 0;
    v74 = KeyedEncodingContainer.nestedUnkeyedContainer(forKey:)();
    v92 = v66;
    if (v5)
    {
      v75 = (v66 & 0xFFFFFFFFFFFFFFFELL);
      v76 = v5;
      do
      {
        v77 = *v75;
        v108 = **v49;
        __swift_mutable_project_boxed_opaque_existential_1(v109, v111);
        type metadata accessor for PredicateExpressions.Variable(0, v77, v78, v79);
        swift_getWitnessTable();
        v74 = dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
        ++v49;
        ++v75;
        --v76;
      }

      while (v76);
      v69 = v112;
      v47 = v103;
      v62 = v102;
      v63 = v101;
    }

    v80 = v113;
    MEMORY[0x1EEE9AC00](v74);
    *(&v86 - 10) = v5;
    *(&v86 - 9) = v63;
    *(&v86 - 8) = v92;
    v81 = v87;
    *(&v86 - 7) = *(v87 + 8);
    *(&v86 - 6) = *(v81 + 24);
    *(&v86 - 5) = v47;
    v83 = v106;
    v82 = v107;
    *(&v86 - 4) = v93;
    *(&v86 - 3) = v82;
    *(&v86 - 2) = v83;
    *(&v86 - 1) = v62;
    specialized _withPredicateArchivingState<A>(_:_:)(v69, v80, v84, closure #1 in KeyedEncodingContainer<>._encode<A, B>(_:variable:predicateConfiguration:)partial apply);

    __swift_destroy_boxed_opaque_existential_1(v109);
  }

  (*(v98 + 8))(v47, v104);
  __swift_destroy_boxed_opaque_existential_1(v115);
  return __swift_destroy_boxed_opaque_existential_1(v118);
}

uint64_t specialized PredicateExpressions.NilLiteral.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  dispatch thunk of SingleValueEncodingContainer.encodeNil()();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t protocol witness for _LocaleProtocol.scriptCode.getter in conformance _LocaleICU()
{
  v1 = *(v0 + 200);
  os_unfair_lock_lock(v1 + 134);
  partial apply for closure #1 in _LocaleICU.scriptCode.getter(&v1[4], &v3);
  os_unfair_lock_unlock(v1 + 134);
  return v3;
}

void closure #1 in _LocaleICU.scriptCode.getter(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  v50 = *MEMORY[0x1E69E9840];
  if (*(a1 + 8) == 1)
  {
    memset(v49, 0, sizeof(v49));
    outlined destroy of Locale.Language.Components(v49);
    LODWORD(v45[0]) = 0;
    String.utf8CString.getter();
    Language = uloc_getLanguage();

    v5 = 0;
    v6 = 0;
    if (Language > 0)
    {
      v48[Language] = 0;
      v5 = MEMORY[0x1865CAEB0](v48);
      v6 = v7;
    }

    LODWORD(v45[0]) = 0;
    String.utf8CString.getter();
    Script = uloc_getScript();

    v9 = 0;
    v10 = 0;
    if (Script > 0)
    {
      v47[Script] = 0;
      v9 = MEMORY[0x1865CAEB0](v47);
      v10 = v11;
    }

    LODWORD(v45[0]) = 0;
    String.utf8CString.getter();
    Country = uloc_getCountry();

    v13 = 0;
    v14 = 0;
    if (Country > 0)
    {
      v46[Country] = 0;
      v13 = MEMORY[0x1865CAEB0](v46);
      v14 = v15;
    }

    if (v6)
    {
      v16 = String.lowercased()();
      object = v16._object;
      countAndFlagsBits = v16._countAndFlagsBits;
      v35 = v6;
      v36 = v5;
      if (v10)
      {
        goto LABEL_13;
      }
    }

    else
    {
      object = 0;
      countAndFlagsBits = 0;
      v35 = 0;
      v36 = 0;
      if (v10)
      {
LABEL_13:
        *&v45[0] = v9;
        *(&v45[0] + 1) = v10;

        String.init<A>(_:)();
        v17 = String._capitalized()();
        v18 = v17._countAndFlagsBits;
        v19 = v17._object;

        if (v14)
        {
LABEL_14:
          v20 = String.uppercased()();
          v21 = v20._countAndFlagsBits;
          v22 = v20._object;
          goto LABEL_20;
        }

LABEL_19:
        v13 = 0;
        v21 = 0;
        v22 = 0;
LABEL_20:
        outlined consume of Locale.LanguageCode?(0, 0, 0, 0);
        outlined consume of Locale.LanguageCode?(0, 0, 0, 0);
        outlined consume of Locale.LanguageCode?(0, 0, 0, 0);
        *&v39 = v36;
        *(&v39 + 1) = v35;
        *&v40 = countAndFlagsBits;
        *(&v40 + 1) = object;
        *&v41 = v9;
        *(&v41 + 1) = v10;
        *&v42 = v18;
        *(&v42 + 1) = v19;
        *&v43 = v13;
        *(&v43 + 1) = v14;
        *&v44 = v21;
        *(&v44 + 1) = v22;
        v24 = *(a1 + 48);
        v45[2] = *(a1 + 32);
        v45[3] = v24;
        v25 = *(a1 + 80);
        v45[4] = *(a1 + 64);
        v45[5] = v25;
        v26 = *(a1 + 16);
        v45[0] = *a1;
        v45[1] = v26;
        v27 = v44;
        *(a1 + 64) = v43;
        *(a1 + 80) = v27;
        v28 = v42;
        *(a1 + 32) = v41;
        *(a1 + 48) = v28;
        v29 = v40;
        *a1 = v39;
        *(a1 + 16) = v29;
        outlined init with copy of Locale.Language.Components(&v39, v38);
        outlined destroy of TermOfAddress?(v45, &_s10Foundation6LocaleV8LanguageV10ComponentsVSgMd, &_s10Foundation6LocaleV8LanguageV10ComponentsVSgMR);
        v30 = *(&v41 + 1);
        if (*(&v41 + 1))
        {
          v31 = v42;
          v32 = v41;

          outlined destroy of Locale.Language.Components(&v39);

          outlined consume of Locale.LanguageCode?(v32, v30, v31, *(&v31 + 1));
          *a3 = v32;
          a3[1] = v30;
        }

        else
        {
          outlined destroy of Locale.Language.Components(&v39);
          *a3 = 0;
          a3[1] = 0;
        }

        return;
      }
    }

    v9 = 0;
    v18 = 0;
    v19 = 0;
    if (v14)
    {
      goto LABEL_14;
    }

    goto LABEL_19;
  }

  v23 = *(a1 + 40);
  if (v23)
  {
    *a3 = *(a1 + 32);
    a3[1] = v23;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }
}

void sub_180962DD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void protocol witness for _LocaleProtocol.measurementSystem.getter in conformance _LocaleICU(Swift::String *a1@<X8>)
{
  v3 = *(v1 + 200);
  os_unfair_lock_lock((v3 + 536));
  partial apply for closure #1 in _LocaleICU.measurementSystem.getter((v3 + 16), a1);

  os_unfair_lock_unlock((v3 + 536));
}

uint64_t _NSSwiftURLComponents.rangeOfQuery.getter()
{
  v35 = *MEMORY[0x1E69E9840];
  v1 = *&v0[OBJC_IVAR____NSSwiftURLComponents_lock];
  os_unfair_lock_lock((v1 + 172));
  v2 = *(v1 + 128);
  v32 = *(v1 + 112);
  v33 = v2;
  v34[0] = *(v1 + 144);
  *(v34 + 10) = *(v1 + 154);
  v3 = *(v1 + 64);
  v28 = *(v1 + 48);
  v29 = v3;
  v4 = *(v1 + 96);
  v30 = *(v1 + 80);
  v31 = v4;
  v5 = *(v1 + 32);
  v26 = *(v1 + 16);
  v27 = v5;
  outlined init with copy of URLComponents(&v26, v24);
  os_unfair_lock_unlock((v1 + 172));
  v24[6] = v32;
  v24[7] = v33;
  v25[0] = v34[0];
  *(v25 + 10) = *(v34 + 10);
  v24[2] = v28;
  v24[3] = v29;
  v24[4] = v30;
  v24[5] = v31;
  v24[0] = v26;
  v24[1] = v27;
  if (v26)
  {
    if (BYTE8(v26))
    {
      v6 = *(v26 + 192);
      goto LABEL_9;
    }
  }

  else if (BYTE8(v26))
  {
LABEL_8:
    v6 = 1;
    goto LABEL_9;
  }

  v7 = URLComponents._URLComponents.computedString.getter();
  if (!v8)
  {
    goto LABEL_8;
  }

  v6 = 1;
  v9 = specialized static RFC3986Parser.parse(urlString:encodingInvalidCharacters:allowEmptyScheme:)(v7, v8, 1, 0);

  if (v9)
  {
    v6 = v9[192];
  }

LABEL_9:
  outlined destroy of URLComponents(&v26);
  v10 = [v0 string];
  if (!v10)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v11 = v10;
  isTaggedPointer = _objc_isTaggedPointer(v10);
  v13 = v11;
  v14 = v13;
  if (!isTaggedPointer)
  {
    goto LABEL_16;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v13);
  switch(TaggedPointerTag)
  {
    case 0:
      goto LABEL_26;
    case 0x16:
      result = [v14 UTF8String];
      if (!result)
      {
        __break(1u);
        return result;
      }

      String.init(utf8String:)(result);
      if (v19)
      {
LABEL_27:

        if (v6)
        {
          goto LABEL_35;
        }

        goto LABEL_28;
      }

      __break(1u);
LABEL_26:
      _CFIndirectTaggedPointerStringGetContents();
      _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v20)
      {
        [v14 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();

        if (v6)
        {
          goto LABEL_35;
        }

        goto LABEL_28;
      }

      goto LABEL_27;
    case 2:
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

      if (v6)
      {
        goto LABEL_35;
      }

      goto LABEL_28;
  }

LABEL_16:
  if (__CFStringIsCF())
  {

    goto LABEL_21;
  }

  v16 = v14;
  String.init(_nativeStorage:)();
  if (v17)
  {

    if (v6)
    {
      goto LABEL_35;
    }

    goto LABEL_28;
  }

  if (![v16 length])
  {

LABEL_21:
    if (v6)
    {
      goto LABEL_35;
    }

    goto LABEL_28;
  }

  String.init(_cocoaString:)();

  if (v6)
  {
LABEL_35:

    return 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_28:
  lazy protocol witness table accessor for type String and conformance String();
  v21 = StringProtocol._toUTF16Offsets(_:)();
  v23 = v22;

  if (__OFSUB__(v23, v21))
  {
    __break(1u);
  }

  return v21;
}

uint64_t _NSSwiftURLComponents.rangeOfPath.getter()
{
  v35 = *MEMORY[0x1E69E9840];
  v1 = *&v0[OBJC_IVAR____NSSwiftURLComponents_lock];
  os_unfair_lock_lock((v1 + 172));
  v2 = *(v1 + 128);
  v32 = *(v1 + 112);
  v33 = v2;
  v34[0] = *(v1 + 144);
  *(v34 + 10) = *(v1 + 154);
  v3 = *(v1 + 64);
  v28 = *(v1 + 48);
  v29 = v3;
  v4 = *(v1 + 96);
  v30 = *(v1 + 80);
  v31 = v4;
  v5 = *(v1 + 32);
  v26 = *(v1 + 16);
  v27 = v5;
  outlined init with copy of URLComponents(&v26, v24);
  os_unfair_lock_unlock((v1 + 172));
  v24[6] = v32;
  v24[7] = v33;
  v25[0] = v34[0];
  *(v25 + 10) = *(v34 + 10);
  v24[2] = v28;
  v24[3] = v29;
  v24[4] = v30;
  v24[5] = v31;
  v24[0] = v26;
  v24[1] = v27;
  if (v26)
  {
    if (BYTE8(v26))
    {
      v6 = *(v26 + 168);
      goto LABEL_9;
    }
  }

  else if (BYTE8(v26))
  {
LABEL_8:
    v6 = 1;
    goto LABEL_9;
  }

  v7 = URLComponents._URLComponents.computedString.getter();
  if (!v8)
  {
    goto LABEL_8;
  }

  v6 = 1;
  v9 = specialized static RFC3986Parser.parse(urlString:encodingInvalidCharacters:allowEmptyScheme:)(v7, v8, 1, 0);

  if (v9)
  {
    v6 = v9[168];
  }

LABEL_9:
  outlined destroy of URLComponents(&v26);
  v10 = [v0 string];
  if (!v10)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v11 = v10;
  isTaggedPointer = _objc_isTaggedPointer(v10);
  v13 = v11;
  v14 = v13;
  if (!isTaggedPointer)
  {
    goto LABEL_16;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v13);
  switch(TaggedPointerTag)
  {
    case 0:
      goto LABEL_26;
    case 0x16:
      result = [v14 UTF8String];
      if (!result)
      {
        __break(1u);
        return result;
      }

      String.init(utf8String:)(result);
      if (v19)
      {
LABEL_27:

        if (v6)
        {
          goto LABEL_35;
        }

        goto LABEL_28;
      }

      __break(1u);
LABEL_26:
      _CFIndirectTaggedPointerStringGetContents();
      _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v20)
      {
        [v14 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();

        if (v6)
        {
          goto LABEL_35;
        }

        goto LABEL_28;
      }

      goto LABEL_27;
    case 2:
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

      if (v6)
      {
        goto LABEL_35;
      }

      goto LABEL_28;
  }

LABEL_16:
  if (__CFStringIsCF())
  {

    goto LABEL_21;
  }

  v16 = v14;
  String.init(_nativeStorage:)();
  if (v17)
  {

    if (v6)
    {
      goto LABEL_35;
    }

    goto LABEL_28;
  }

  if (![v16 length])
  {

LABEL_21:
    if (v6)
    {
      goto LABEL_35;
    }

    goto LABEL_28;
  }

  String.init(_cocoaString:)();

  if (v6)
  {
LABEL_35:

    return 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_28:
  lazy protocol witness table accessor for type String and conformance String();
  v21 = StringProtocol._toUTF16Offsets(_:)();
  v23 = v22;

  if (__OFSUB__(v23, v21))
  {
    __break(1u);
  }

  return v21;
}

uint64_t URL.debugDescription.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 424))(ObjectType, v1);
}

id String.init(localized:defaultValue:table:bundle:locale:comment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, void *a6, void *a7, uint64_t *a8)
{
  v84 = *MEMORY[0x1E69E9840];
  v10 = *a4;
  v12 = *a8;
  v11 = a8[1];
  StaticString.description.getter();
  v77 = MEMORY[0x1E69E7CC0];
  v78 = 0;
  swift_unknownObjectRetain();
  v73 = v11;
  v13 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySS10FoundationE17LocalizationValueV14FormatArgumentVG_AJs5NeverOTg506_sSS10d3E17ef43V25argumentsWithReplacements_6localeSayAC14gH40VGSays7CVarArg_pGSg_AA6LocaleVtFA2GXEfU_s16IndexingIteratorVySays0tU0_pGGAF0X0VTf1cn_nTf4nng_n(v10, &v77, v12, v11);

  swift_unknownObjectRelease();
  if (a7)
  {
    v14 = a7;
  }

  else
  {
    v14 = [objc_opt_self() mainBundle];
  }

  v15 = a7;
  v16 = String._bridgeToObjectiveCImpl()();

  v17 = String._bridgeToObjectiveCImpl()();
  if (a6)
  {
    v18 = String._bridgeToObjectiveCImpl()();
  }

  else
  {
    v18 = 0;
  }

  v19 = [v14 _localizedStringForKey_value_table_localizations_];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  if (!v19)
  {

    v24 = 0;
    goto LABEL_17;
  }

  isTaggedPointer = _objc_isTaggedPointer(v19);
  v21 = v19;
  v22 = v21;
  if ((isTaggedPointer & 1) == 0)
  {
LABEL_13:
    LOBYTE(v83[0]) = 0;
    v77 = 0;
    LOBYTE(v75[0]) = 0;
    if (__CFStringIsCF())
    {
      v25 = v73;
      if (!v77)
      {
        goto LABEL_61;
      }
    }

    else
    {
      v56 = v22;
      v57 = String.init(_nativeStorage:)();
      v25 = v73;
      if (v58)
      {
        v24 = v57;

        v26 = v13[2];
        if (!v26)
        {
          goto LABEL_94;
        }

        goto LABEL_18;
      }

      v77 = [v56 length];
      if (!v77)
      {

        goto LABEL_62;
      }
    }

    v24 = String.init(_cocoaString:)();

LABEL_93:
    v26 = v13[2];
    if (!v26)
    {
      goto LABEL_94;
    }

    goto LABEL_18;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v21);
  if (TaggedPointerTag)
  {
    if (TaggedPointerTag != 22)
    {
      if (TaggedPointerTag == 2)
      {
        MEMORY[0x1EEE9AC00](TaggedPointerTag);
        v24 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

        goto LABEL_17;
      }

      goto LABEL_13;
    }

    result = [v22 UTF8String];
    if (result)
    {
      result = String.init(utf8String:)(result);
      v25 = v73;
      if (v63)
      {
        v24 = result;

        goto LABEL_93;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_105:
    __break(1u);
    return result;
  }

  LOWORD(v75[0]) = 0;
  _CFIndirectTaggedPointerStringGetContents();
  v64 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
  if (v65)
  {
    v24 = v64;

LABEL_17:
    v25 = v73;
    v26 = v13[2];
    if (!v26)
    {
      goto LABEL_94;
    }

    goto LABEL_18;
  }

  [v22 mutableCopy];
  _bridgeAnyObjectToAny(_:)();

  swift_unknownObjectRelease();
  swift_dynamicCast();
  v24 = *&v83[0];

  v26 = v13[2];
  v25 = v73;
  if (!v26)
  {
    goto LABEL_94;
  }

LABEL_18:
  v72 = v15;
  v74 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26, 0);
  v14 = v74;
  v27 = (v13 + 4);
  do
  {
    outlined init with copy of String.LocalizationValue.FormatArgument(v27, &v77);
    _sSS10FoundationE17LocalizationValueV14FormatArgumentV7resolve10attributed4with9includings7CVarArg_p6vararg_AE15_AttributeFixupOSg11attrStrInfotSb_AA6LocaleVxmtAA0M5ScopeRzlFAA0M6ScopesO0A10AttributesV_Tt3B5(v83, v75, 0, v12, v25);
    outlined destroy of String.LocalizationValue.FormatArgument(&v77);
    outlined consume of String.LocalizationValue.FormatArgument._AttributeFixup?(v75[0], v75[1], v76);
    v29 = v74[2];
    v28 = v74[3];
    if (v29 >= v28 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1);
    }

    v74[2] = v29 + 1;
    outlined init with take of Equatable(v83, &v74[5 * v29 + 4]);
    v27 += 112;
    --v26;
  }

  while (v26);

  type metadata accessor for __VaListBuilder();
  v30 = swift_allocObject();
  v30[2] = 8;
  v30[3] = 0;
  v13 = v30 + 3;
  v30[4] = 0;
  v30[5] = 0;
  v25 = v74[2];
  swift_unknownObjectRetain();

  if (v25)
  {
    v12 = 0;
    v15 = 40;
    while (1)
    {
      __swift_project_boxed_opaque_existential_1(&v74[5 * v12 + 4], v74[5 * v12 + 7]);
      v31 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v22 = *v13;
      v32 = *(v31 + 16);
      v33 = __OFADD__(*v13, v32);
      v34 = *v13 + v32;
      if (v33)
      {
        __break(1u);
LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
      }

      v35 = v30[4];
      if (v35 >= v34)
      {
        goto LABEL_39;
      }

      if (v35 + 0x4000000000000000 < 0)
      {
        goto LABEL_101;
      }

      v36 = v30[5];
      if (2 * v35 > v34)
      {
        v34 = 2 * v35;
      }

      v30[4] = v34;
      if ((v34 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_102;
      }

      v37 = v31;
      v38 = swift_slowAlloc();
      v39 = v38;
      v30[5] = v38;
      if (v36)
      {
        break;
      }

      v31 = v37;
      v15 = 40;
      if (!v39)
      {
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

LABEL_40:
      v41 = *(v31 + 16);
      if (v41)
      {
        v42 = (v31 + 32);
        v43 = *v13;
        while (1)
        {
          v44 = *v42++;
          *&v39[8 * v43] = v44;
          v43 = *v13 + 1;
          if (__OFADD__(*v13, 1))
          {
            break;
          }

          *v13 = v43;
          if (!--v41)
          {
            goto LABEL_24;
          }
        }

        __break(1u);
LABEL_61:

LABEL_62:
        v24 = 0;
        v26 = v13[2];
        if (!v26)
        {
LABEL_94:

          swift_unknownObjectRelease();
          swift_bridgeObjectRelease_n();
          goto LABEL_99;
        }

        goto LABEL_18;
      }

LABEL_24:

      if (++v12 == v25)
      {
        goto LABEL_47;
      }
    }

    if (v38 != v36 || v38 >= &v36[8 * v22])
    {
      memmove(v38, v36, 8 * v22);
    }

    __VaListBuilder.deallocStorage(wordCount:storage:)();
    v31 = v37;
    v15 = 40;
LABEL_39:
    v39 = v30[5];
    if (!v39)
    {
      goto LABEL_46;
    }

    goto LABEL_40;
  }

LABEL_47:
  v45 = __VaListBuilder.va_list()();
  v46 = objc_opt_self();
  v47 = String._bridgeToObjectiveCImpl()();
  ObjectType = swift_getObjectType();
  v49 = (*(v73 + 488))(ObjectType);
  v77 = 0;
  v78 = 0;
  v79 = 256;
  v80 = 0;
  v81 = 0;
  v82 = 0;
  v50 = String.LocalizationOptions._nsOptions.getter();
  v51 = [v46 _stringWithFormat_locale_options_arguments_];

  swift_unknownObjectRelease();
  LODWORD(v46) = _objc_isTaggedPointer(v51);
  v52 = v51;
  v53 = v52;
  if (!v46)
  {
LABEL_52:
    LOBYTE(v83[0]) = 0;
    v77 = 0;
    LOBYTE(v75[0]) = 0;
    IsCF = __CFStringIsCF();
    if (IsCF)
    {
      if (v77)
      {
        if (v75[0])
        {
          if (LOBYTE(v83[0]) != 1)
          {
            IsCF = [v53 lengthOfBytesUsingEncoding_];
          }

          MEMORY[0x1EEE9AC00](IsCF);
          v69 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v71 = HIBYTE(v70) & 0xF;
          if ((v70 & 0x2000000000000000) == 0)
          {
            v71 = v69 & 0xFFFFFFFFFFFFLL;
          }

          if (v71)
          {
            v24 = v69;
            goto LABEL_76;
          }
        }

LABEL_96:
        v24 = String.init(_cocoaString:)();
        goto LABEL_97;
      }
    }

    else
    {
      v59 = v53;
      v60 = String.init(_nativeStorage:)();
      if (v61)
      {
        v24 = v60;

        goto LABEL_98;
      }

      v77 = [v59 length];
      if (v77)
      {
        goto LABEL_96;
      }
    }

    v24 = 0;
    goto LABEL_98;
  }

  v54 = _objc_getTaggedPointerTag(v52);
  if (!v54)
  {
    goto LABEL_74;
  }

  if (v54 == 22)
  {
    result = [v53 UTF8String];
    if (!result)
    {
      goto LABEL_105;
    }

    v66 = String.init(utf8String:)(result);
    if (v67)
    {
LABEL_75:
      v24 = v66;
LABEL_76:

LABEL_97:
      goto LABEL_98;
    }

    __break(1u);
LABEL_74:
    LOWORD(v75[0]) = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v66 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v68)
    {
      [v53 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v24 = *&v83[0];
      goto LABEL_97;
    }

    goto LABEL_75;
  }

  if (v54 != 2)
  {
    goto LABEL_52;
  }

  MEMORY[0x1EEE9AC00](v54);
  v24 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

LABEL_98:

  swift_bridgeObjectRelease_n();
  swift_unknownObjectRelease_n();
  swift_bridgeObjectRelease_n();

LABEL_99:

  return v24;
}

unint64_t lazy protocol witness table accessor for type IndexSet.RangeView and conformance IndexSet.RangeView()
{
  result = lazy protocol witness table cache variable for type IndexSet.RangeView and conformance IndexSet.RangeView;
  if (!lazy protocol witness table cache variable for type IndexSet.RangeView and conformance IndexSet.RangeView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IndexSet.RangeView and conformance IndexSet.RangeView);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IndexSet.RangeView and conformance IndexSet.RangeView;
  if (!lazy protocol witness table cache variable for type IndexSet.RangeView and conformance IndexSet.RangeView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IndexSet.RangeView and conformance IndexSet.RangeView);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IndexSet.RangeView and conformance IndexSet.RangeView;
  if (!lazy protocol witness table cache variable for type IndexSet.RangeView and conformance IndexSet.RangeView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IndexSet.RangeView and conformance IndexSet.RangeView);
  }

  return result;
}

uint64_t URLRequest.description.getter()
{
  v1 = *(*v0 + 16);
  v2 = [v1 URL];
  if (v2)
  {
    v3 = v2;
    if (_foundation_swift_nsurl_feature_enabled())
    {
      type metadata accessor for _NSSwiftURL();
      v4 = swift_dynamicCastClass();
      if (v4)
      {
        v5 = v4;
        type metadata accessor for _BridgedNSSwiftURL();
        *(swift_allocObject() + 16) = v5;
        v6 = v3;
        _BridgedNSSwiftURL.convertingFileReference()();
        v8 = v7;

LABEL_9:
        ObjectType = swift_getObjectType();
        v9 = (*(v8 + 416))(ObjectType, v8);
        swift_unknownObjectRelease();
        return v9;
      }

      v14 = type metadata accessor for _BridgedURL();
      v15 = objc_allocWithZone(v14);
      *&v15[OBJC_IVAR____TtC10Foundation11_BridgedURL__url] = v3;
      v20.receiver = v15;
      v12 = v3;
      v13 = objc_msgSendSuper2(&v20, sel_init, v20.receiver, v14, v21.receiver, v21.super_class);
    }

    else
    {
      v10 = type metadata accessor for _BridgedURL();
      v11 = objc_allocWithZone(v10);
      *&v11[OBJC_IVAR____TtC10Foundation11_BridgedURL__url] = v3;
      v21.receiver = v11;
      v12 = v3;
      v13 = objc_msgSendSuper2(&v21, sel_init, v20.receiver, v20.super_class, v21.receiver, v10);
    }

    v16 = v13;
    _BridgedURL.convertingFileReference()();
    v8 = v17;

    goto LABEL_9;
  }

  return 0x6C696E203A6C7275;
}

void closure #1 in _FileManagerImpl.createSymbolicLink(atPath:withDestinationPath:)(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (!a1)
  {

    if (_foundation_swift_url_feature_enabled())
    {

      v13 = specialized String.withFileSystemRepresentation<A>(_:)(a2, a3, a2, a3);
      v15 = v14;

      v28 = 3;
      type metadata accessor for _SwiftURL();
      v27[0] = 0;
      v27[1] = 0;
      swift_allocObject();
      _SwiftURL.init(filePath:pathStyle:directoryHint:relativeTo:)(v13, v15, 0, &v28, v27);
      v16 = _SwiftURL.convertingFileReference()();
      v18 = v17;
    }

    else
    {
      v19 = (specialized BidirectionalCollection.last.getter(a2, a3) & 0x1FF) == 47;
      objc_allocWithZone(type metadata accessor for _BridgedURL());

      v20 = _BridgedURL.init(fileURLWithPath:isDirectory:)(a2, a3, v19);
      if (!v20)
      {

        v23 = String._bridgeToObjectiveCImpl()();
        goto LABEL_11;
      }

      v21 = v20;
      v16 = _BridgedURL.convertingFileReference()();
      v18 = v22;
    }

    v23 = String._bridgeToObjectiveCImpl()();
    if (v16)
    {
      ObjectType = swift_getObjectType();
      v25 = (*(v18 + 432))(ObjectType, v18);
      swift_unknownObjectRelease();
LABEL_12:
      [objc_opt_self() _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
      swift_unknownObjectRelease();

      swift_willThrow();
      return;
    }

LABEL_11:
    v25 = 0;
    goto LABEL_12;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    MEMORY[0x1EEE9AC00](Strong);
    v26[2] = a5;
    v26[3] = a6;
    v26[4] = a1;
    v26[5] = a2;
    v26[6] = a3;
    specialized NSFileManager.withFileSystemRepresentation<A>(for:_:)(a5, a6, partial apply for closure #1 in closure #1 in _FileManagerImpl.createSymbolicLink(atPath:withDestinationPath:), v26);
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t closure #1 in closure #1 in _FileManagerImpl.createSymbolicLink(atPath:withDestinationPath:)(const char *a1, unint64_t a2, unint64_t a3, char *a4, unint64_t a5, unint64_t a6)
{
  v97 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    result = symlink(a1, a4);
    if (!result)
    {
      return result;
    }

    v9 = MEMORY[0x1865CA7A0]();
    if (v9 > 27)
    {
      if (v9 <= 62)
      {
        if (v9 != 28)
        {
          if (v9 == 30)
          {
            v27 = 642;
            goto LABEL_32;
          }

          goto LABEL_31;
        }
      }

      else
      {
        if (v9 == 63)
        {
          v27 = 514;
          goto LABEL_32;
        }

        if (v9 != 69)
        {
          if (v9 == 102)
          {
            v10 = 0;
            v11 = 512;
            goto LABEL_96;
          }

LABEL_31:
          v27 = 512;
LABEL_32:
          if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) != 0)
          {
LABEL_116:
            _StringGuts.grow(_:)(22);

            v87 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x1865CB0E0](v87);

            result = _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
            return result;
          }

          isTaggedPointer = _objc_isTaggedPointer(@"NSPOSIXErrorDomain");
          v29 = @"NSPOSIXErrorDomain";
          v30 = v29;
          v90 = isTaggedPointer;
          v88 = a5;
          v89 = v27;
          if (isTaggedPointer)
          {
            TaggedPointerTag = _objc_getTaggedPointerTag(v29);
            if (TaggedPointerTag)
            {
              if (TaggedPointerTag != 22)
              {
                if (TaggedPointerTag == 2)
                {
                  MEMORY[0x1EEE9AC00](TaggedPointerTag);
                  String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

                  goto LABEL_51;
                }

                goto LABEL_38;
              }

              v34 = [(__CFString *)v30 UTF8String];
              if (!v34)
              {
                __break(1u);
LABEL_114:
                __break(1u);
                goto LABEL_115;
              }

              String.init(utf8String:)(v34);
              if (v35)
              {
                goto LABEL_39;
              }

              __break(1u);
            }

            v93 = 0;
            _CFIndirectTaggedPointerStringGetContents();
            _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
            if (v36)
            {
              goto LABEL_39;
            }

            [(__CFString *)v30 mutableCopy];
            _bridgeAnyObjectToAny(_:)();

            swift_unknownObjectRelease();
            swift_dynamicCast();
            goto LABEL_51;
          }

LABEL_38:
          LOBYTE(v91) = 0;
          v95 = 0;
          LOBYTE(v93) = 0;
          v94 = 0;
          if (__CFStringIsCF())
          {
LABEL_39:

            goto LABEL_51;
          }

          v32 = v30;
          String.init(_nativeStorage:)();
          if (!v33 && (v95 = [(__CFString *)v32 length]) != 0)
          {
            String.init(_cocoaString:)();
          }

          else
          {
          }

LABEL_51:
          v37 = POSIXErrorCode.rawValue.getter();
          v38 = objc_allocWithZone(NSError);
          v39 = String._bridgeToObjectiveCImpl()();

          v10 = [v38 initWithDomain:v39 code:v37 userInfo:_NativeDictionary.bridged()()];
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          v40 = [v10 domain];
          if (!v40)
          {
LABEL_61:
            v46 = 0;
            v48 = 0xE000000000000000;
            goto LABEL_72;
          }

          v41 = v40;
          v42 = _objc_isTaggedPointer(v40);
          v43 = v41;
          v44 = v43;
          if ((v42 & 1) == 0)
          {
            goto LABEL_57;
          }

          v45 = _objc_getTaggedPointerTag(v43);
          if (v45)
          {
            if (v45 != 22)
            {
              if (v45 == 2)
              {
                MEMORY[0x1EEE9AC00](v45);
                v46 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                v48 = v47;

LABEL_72:
                v56 = v30;
                v57 = v56;
                if (!v90)
                {
LABEL_77:
                  LOBYTE(v91) = 0;
                  v95 = 0;
                  LOBYTE(v93) = 0;
                  v94 = 0;
                  if (__CFStringIsCF())
                  {

LABEL_81:
                    v59 = 0;
                    v61 = 0xE000000000000000;
                    goto LABEL_91;
                  }

                  v62 = v57;
                  v63 = String.init(_nativeStorage:)();
                  if (v64)
                  {
                    v59 = v63;
                    v61 = v64;

                    goto LABEL_91;
                  }

                  v95 = [(__CFString *)v62 length];
                  if (!v95)
                  {

                    goto LABEL_81;
                  }

                  v59 = String.init(_cocoaString:)();
                  v61 = v68;
LABEL_91:
                  if (v46 == v59 && v48 == v61)
                  {
                  }

                  else
                  {
                    v69 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if ((v69 & 1) == 0)
                    {
                      __break(1u);
                    }
                  }

                  a5 = v88;
                  v11 = v89;
LABEL_96:

                  if (_foundation_swift_url_feature_enabled())
                  {

                    v70 = specialized String.withFileSystemRepresentation<A>(_:)(a5, a6, a5, a6);
                    v72 = v71;

                    LOBYTE(v91) = 3;
                    type metadata accessor for _SwiftURL();
                    v95 = 0;
                    v96 = 0;
                    swift_allocObject();
                    _SwiftURL.init(filePath:pathStyle:directoryHint:relativeTo:)(v70, v72, 0, &v91, &v95);
                    v73 = _SwiftURL.convertingFileReference()();
                    v75 = v74;
                  }

                  else
                  {
                    v76 = (specialized BidirectionalCollection.last.getter(a5, a6) & 0x1FF) == 47;
                    v77 = objc_allocWithZone(type metadata accessor for _BridgedURL());

                    v78 = _BridgedURL.init(fileURLWithPath:isDirectory:)(a5, a6, v76);
                    if (!v78)
                    {

                      v81 = String._bridgeToObjectiveCImpl()();
                      goto LABEL_107;
                    }

                    v79 = v78;
                    v73 = _BridgedURL.convertingFileReference()();
                    v75 = v80;
                  }

                  v81 = String._bridgeToObjectiveCImpl()();
                  if (v73)
                  {
                    ObjectType = swift_getObjectType();
                    v83 = (*(v75 + 432))(ObjectType, v75);
                    swift_unknownObjectRelease();
                    if (v10)
                    {
LABEL_102:
                      v95 = v10;
                      lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
                      v10 = v10;
                      v84 = _getErrorEmbeddedNSError<A>(_:)();

                      if (v84)
                      {
                      }

                      else
                      {
                        swift_allocError();
                        *v85 = v10;
                      }

                      v86 = _swift_stdlib_bridgeErrorToNSError();
                      goto LABEL_109;
                    }

LABEL_108:
                    v86 = 0;
LABEL_109:
                    [objc_opt_self() _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
                    swift_unknownObjectRelease();

                    return swift_willThrow();
                  }

LABEL_107:
                  v83 = 0;
                  if (v10)
                  {
                    goto LABEL_102;
                  }

                  goto LABEL_108;
                }

                v58 = _objc_getTaggedPointerTag(v56);
                if (!v58)
                {
                  goto LABEL_85;
                }

                if (v58 != 22)
                {
                  if (v58 == 2)
                  {
                    MEMORY[0x1EEE9AC00](v58);
                    v59 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                    v61 = v60;

                    goto LABEL_91;
                  }

                  goto LABEL_77;
                }

                v65 = [(__CFString *)v57 UTF8String];
                if (v65)
                {
                  v66 = String.init(utf8String:)(v65);
                  if (v67)
                  {
                    goto LABEL_86;
                  }

                  __break(1u);
LABEL_85:
                  v93 = 0;
                  _CFIndirectTaggedPointerStringGetContents();
                  v66 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                  if (!v67)
                  {
                    [(__CFString *)v57 mutableCopy];
                    _bridgeAnyObjectToAny(_:)();

                    swift_unknownObjectRelease();
                    swift_dynamicCast();
                    v59 = v91;
                    v61 = v92;
                    goto LABEL_91;
                  }

LABEL_86:
                  v59 = v66;
                  v61 = v67;

                  goto LABEL_91;
                }

                goto LABEL_114;
              }

LABEL_57:
              LOBYTE(v91) = 0;
              v95 = 0;
              LOBYTE(v93) = 0;
              v94 = 0;
              if (__CFStringIsCF())
              {

                goto LABEL_61;
              }

              v49 = v44;
              v50 = String.init(_nativeStorage:)();
              if (v51)
              {
                v46 = v50;
                v48 = v51;

                goto LABEL_72;
              }

              v95 = [v49 length];
              if (!v95)
              {

                goto LABEL_61;
              }

              v46 = String.init(_cocoaString:)();
              v48 = v55;
LABEL_71:

              goto LABEL_72;
            }

            v52 = [v44 UTF8String];
            if (!v52)
            {
LABEL_115:
              __break(1u);
              goto LABEL_116;
            }

            v53 = String.init(utf8String:)(v52);
            if (v54)
            {
LABEL_66:
              v46 = v53;
              v48 = v54;

              goto LABEL_71;
            }

            __break(1u);
          }

          v93 = 0;
          _CFIndirectTaggedPointerStringGetContents();
          v53 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
          if (!v54)
          {
            [v44 mutableCopy];
            _bridgeAnyObjectToAny(_:)();

            swift_unknownObjectRelease();
            swift_dynamicCast();
            v46 = v91;
            v48 = v92;
            goto LABEL_71;
          }

          goto LABEL_66;
        }
      }

      v27 = 640;
      goto LABEL_32;
    }

    if (v9 > 12)
    {
      if (v9 != 13)
      {
        if (v9 == 17)
        {
          v27 = 516;
          goto LABEL_32;
        }

        goto LABEL_31;
      }
    }

    else if (v9 != 1)
    {
      if (v9 == 2)
      {
        v27 = 4;
        goto LABEL_32;
      }

      goto LABEL_31;
    }

    v27 = 513;
    goto LABEL_32;
  }

  if (_foundation_swift_url_feature_enabled())
  {

    v14 = specialized String.withFileSystemRepresentation<A>(_:)(a2, a3, a2, a3);
    v16 = v15;

    LOBYTE(v91) = 3;
    type metadata accessor for _SwiftURL();
    v95 = 0;
    v96 = 0;
    swift_allocObject();
    _SwiftURL.init(filePath:pathStyle:directoryHint:relativeTo:)(v14, v16, 0, &v91, &v95);
    v17 = _SwiftURL.convertingFileReference()();
    v19 = v18;
  }

  else
  {
    v20 = (specialized BidirectionalCollection.last.getter(a2, a3) & 0x1FF) == 47;
    objc_allocWithZone(type metadata accessor for _BridgedURL());

    v21 = _BridgedURL.init(fileURLWithPath:isDirectory:)(a2, a3, v20);
    if (!v21)
    {

      v24 = String._bridgeToObjectiveCImpl()();
      goto LABEL_28;
    }

    v22 = v21;
    v17 = _BridgedURL.convertingFileReference()();
    v19 = v23;
  }

  v24 = String._bridgeToObjectiveCImpl()();
  if (!v17)
  {
LABEL_28:
    v26 = 0;
    goto LABEL_29;
  }

  v25 = swift_getObjectType();
  v26 = (*(v19 + 432))(v25, v19);
  swift_unknownObjectRelease();
LABEL_29:
  [objc_opt_self() _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
  swift_unknownObjectRelease();

  return swift_willThrow();
}

double specialized _PlistDecoder.unwrapFloatingPoint<A, B>(from:for:_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v28[0] = a3;
  v28[1] = a4;
  v28[2] = a5;
  v29 = a6;
  v15 = *(v14 + 80);
  v16 = *(v14 + 88);
  if ((*(v16 + 40))(a1, v15, v16))
  {
    v17 = type metadata accessor for DecodingError();
    swift_allocError();
    v19 = v18;
    *v18 = MEMORY[0x1E69E63B0];
    if (a6 == -1)
    {
      _CodingPathNode.path.getter(a2);
    }

    else
    {
      outlined copy of _CodingKey(a3, a4, a5, a6);
      _CodingPathNode.path.getter(a2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_181218E20;
      *(inited + 56) = &type metadata for _CodingKey;
      *(inited + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
      v21 = swift_allocObject();
      *(inited + 32) = v21;
      *(v21 + 16) = a3;
      *(v21 + 24) = a4;
      *(v21 + 32) = a5;
      *(v21 + 40) = a6;
      specialized Array.append<A>(contentsOf:)(inited);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x1E69E6B08], v17);
    swift_willThrow();
  }

  else
  {
    v22 = v7[3];
    v23 = *(v16 + 80);
    v24 = lazy protocol witness table accessor for type Double and conformance Double();
    v25 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    swift_unknownObjectRetain();
    v23(&v30, a1, v22, a2, v28, MEMORY[0x1E69E63B0], &type metadata for _CodingKey, v24, v25, v15, v16);
    swift_unknownObjectRelease();
    if (!v27)
    {
      return v30;
    }
  }

  return result;
}

char *static FormatStyle<>.iso8601.getter@<X0>(_OWORD *a1@<X8>)
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v4 = *(&xmmword_1ED440468 + 1);
  v3 = xmmword_1ED440468;
  BYTE4(v55) = 1;
  *(&v55 + 1) = 0;
  v57 = xmmword_1ED440468;
  LODWORD(v55) = 0x10000;
  v5 = one-time initialization token for cache;
  swift_unknownObjectRetain_n();
  if (v5 != -1)
  {
    swift_once();
  }

  v6 = qword_1ED440450;
  os_unfair_lock_lock((qword_1ED440450 + 24));
  v7 = *(v6 + 16);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(7), (v9 & 1) != 0))
  {
    v47 = *(*(v7 + 56) + 16 * v8);
    v10 = *(*(v7 + 56) + 16 * v8);
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v6 + 24));
    if (v10)
    {
LABEL_41:
      v56 = v47;
      v52 = v3;
      v53 = v4;
      result = Calendar.timeZone.setter(&v52);
      v43 = v56;
      *a1 = v55;
      a1[1] = v43;
      a1[2] = v57;
      return result;
    }
  }

  else
  {
    os_unfair_lock_unlock((v6 + 24));
  }

  v11 = type metadata accessor for _CalendarGregorian();
  v12 = lazy protocol witness table accessor for type _CalendarGregorian and conformance _CalendarGregorian();
  v54 = 7;
  v52 = 0;
  v53 = 0;
  v51[0] = 0;
  v51[1] = 0;
  v49 = 0;
  v50 = 1;
  v13 = protocol witness for _CalendarProtocol.init(identifier:timeZone:locale:firstWeekday:minimumDaysInFirstWeek:gregorianStartDate:) in conformance _CalendarGregorian(&v54, &v52, v51, 0, 1, 0, 1, &v49);
  os_unfair_lock_lock((v6 + 24));
  v14 = *(v6 + 16);
  if (*(v14 + 16))
  {
    v15 = specialized __RawDictionaryStorage.find<A>(_:)(7);
    if (v16)
    {
      v17 = *(*(v14 + 56) + 16 * v15);
LABEL_40:
      v47 = v17;
      swift_unknownObjectRetain();
      os_unfair_lock_unlock((v6 + 24));

      goto LABEL_41;
    }
  }

  v48 = v4;
  swift_unknownObjectRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v52 = *(v6 + 16);
  v19 = v52;
  v20 = specialized __RawDictionaryStorage.find<A>(_:)(7);
  v22 = *(v19 + 16);
  v23 = (v21 & 1) == 0;
  v24 = __OFADD__(v22, v23);
  v25 = v22 + v23;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    v1 = v21;
    if (*(v19 + 24) < v25)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v25, isUniquelyReferenced_nonNull_native);
      v26 = v52;
      v20 = specialized __RawDictionaryStorage.find<A>(_:)(7);
      if ((v1 & 1) == (v27 & 1))
      {
        goto LABEL_19;
      }

      v20 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v26 = v19;
LABEL_19:
      v4 = v48;
      if (v1)
      {
LABEL_20:
        v28 = (*(v26 + 56) + 16 * v20);
        *v28 = v13;
        v28[1] = v12;
        swift_unknownObjectRelease();
LABEL_39:
        *(v6 + 16) = v26;
        *&v17 = v13;
        *(&v17 + 1) = v12;
        goto LABEL_40;
      }

LABEL_38:
      specialized _NativeDictionary._insert(at:key:value:)(v20, 7, v13, v26, v11, v12);
      goto LABEL_39;
    }
  }

  v44 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation8CalendarV10IdentifierOAC01_D8Protocol_pGMd, "nC)");
  v29 = static _DictionaryStorage.copy(original:)();
  v26 = v29;
  if (!*(v19 + 16))
  {
LABEL_37:

    v20 = v44;
    v4 = v48;
    if (v1)
    {
      goto LABEL_20;
    }

    goto LABEL_38;
  }

  result = (v29 + 64);
  v31 = (v19 + 64);
  v32 = ((1 << *(v26 + 32)) + 63) >> 6;
  if (v26 != v19 || result >= &v31[8 * v32])
  {
    result = memmove(result, v31, 8 * v32);
  }

  v33 = 0;
  *(v26 + 16) = *(v19 + 16);
  v34 = 1 << *(v19 + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v35 & *(v19 + 64);
  v37 = (v34 + 63) >> 6;
  v45 = v37;
  if (v36)
  {
    do
    {
      v38 = __clz(__rbit64(v36));
      v46 = (v36 - 1) & v36;
LABEL_35:
      v41 = v38 | (v33 << 6);
      v42 = *(*(v19 + 56) + 16 * v41);
      *(*(v26 + 48) + v41) = *(*(v19 + 48) + v41);
      *(*(v26 + 56) + 16 * v41) = v42;
      result = swift_unknownObjectRetain();
      v37 = v45;
      v36 = v46;
    }

    while (v46);
  }

  v39 = v33;
  while (1)
  {
    v33 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    if (v33 >= v37)
    {
      goto LABEL_37;
    }

    v40 = *(v19 + 64 + 8 * v33);
    ++v39;
    if (v40)
    {
      v38 = __clz(__rbit64(v40));
      v46 = (v40 - 1) & v40;
      goto LABEL_35;
    }
  }

  __break(1u);
  return result;
}

Swift::String __swiftcall Date.ISO8601FormatStyle.format(_:)(Foundation::Date a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = *v1;
  v4 = v2[1];
  v24[0] = *v2;
  v24[1] = v4;
  v24[2] = v2[2];
  v5 = BYTE8(v24[0]);
  if (*(&v24[0] + 1))
  {
    if ((BYTE8(v24[0]) & 5) != 1)
    {
      v6 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 59;
  }

  v6 = 3;
LABEL_6:
  v7 = v6 | 0x40000;
  v8 = v6 & 0xFFFFFFFFFFFFFFFBLL | (4 * (((v5 & 2) >> 1) & 1));
  v9 = v8 | 0x1800;
  if ((v5 & 4) == 0)
  {
    v9 = v8;
  }

  if ((v5 & 2) != 0)
  {
    v10 = v8 | 8;
  }

  else
  {
    v10 = v7;
  }

  v11 = v8 | 0x1880;
  if ((v5 & 4) == 0)
  {
    v11 = v10;
  }

  if ((v5 & 8) == 0)
  {
    v11 = v9;
  }

  if ((v5 & 0x10) != 0)
  {
    if ((~v11 & 0x70) != 0)
    {
      v11 |= 0x70uLL;
    }

    if (BYTE1(v24[0]))
    {
      v11 |= 0x2000uLL;
    }
  }

  v23 = v2[1];
  __dst[0] = v2[1];
  v21[0] = v11;
  v22 = v3;
  outlined init with copy of Calendar(&v23, __src);
  Calendar._dateComponents(_:from:)(v21, &v22, __src);
  swift_unknownObjectRelease();
  memcpy(__dst, __src, 0x11BuLL);
  if ((v5 & 0x20) != 0)
  {
    __src[0] = v2[2];
    v13 = *(&__src[0] + 1);
    ObjectType = swift_getObjectType();
    v22 = v3;
    v15 = *(v13 + 40);
    outlined init with copy of TimeZone(__src, v21);
    v12 = v15(&v22, ObjectType, v13);
    outlined destroy of TimeZone(__src);
  }

  else
  {
    v12 = 0;
  }

  LOBYTE(v22) = 0;
  closure #1 in DateComponents.ISO8601FormatStyle.format(_:appendingTimeZoneOffset:)(v25, 129, v24, __dst, &v22, v12, (v5 & 0x20) == 0, v21);
  v16 = v21[0];
  v17 = v21[1];
  outlined destroy of DateComponents(__dst);
  v18 = v16;
  v19 = v17;
  result._object = v19;
  result._countAndFlagsBits = v18;
  return result;
}

uint64_t closure #1 in DateComponents.ISO8601FormatStyle.format(_:appendingTimeZoneOffset:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t *a8@<X8>)
{
  if (!result)
  {
    goto LABEL_154;
  }

  v10 = a3;
  v11 = a2;
  v12 = result;
  v46 = 0;
  v14 = *(a3 + 8);
  if (!v14)
  {
LABEL_9:
    if (*(a4 + 56))
    {
      result = 1970;
    }

    else
    {
      result = *(a4 + 48);
    }

    if ((*(a4 + 40) & 1) == 0 && !*(a4 + 32))
    {
      v15 = __OFSUB__(1, result);
      result = 1 - result;
      if (v15)
      {
        goto LABEL_138;
      }
    }

    if ((result & 0x8000000000000000) == 0)
    {
      goto LABEL_21;
    }

    if (a2 < 1)
    {
LABEL_145:
      __break(1u);
      goto LABEL_146;
    }

    *v12 = 45;
    v46 = 1;
    v15 = __OFSUB__(0, result);
    result = -result;
    if (!v15)
    {
LABEL_21:
      result = OutputBuffer<A>.append(_:zeroPad:)(result, 4);
      *a5 = 1;
      if (v14 && (v14 & 2) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_23;
    }

    __break(1u);
LABEL_20:
    result = *(a4 + 272);
    goto LABEL_21;
  }

  if (v14)
  {
    if ((v14 & 4) != 0 && (*(a4 + 280) & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_9;
  }

  if ((v14 & 2) == 0)
  {
    goto LABEL_33;
  }

  if (*a5 != 1)
  {
    goto LABEL_29;
  }

LABEL_23:
  if (v10[3])
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v16 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  else
  {
  }

  if (v46 >= v11)
  {
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  v12[v46++] = 45;
LABEL_29:
  if (*(a4 + 72))
  {
    v17 = 1;
  }

  else
  {
    v17 = *(a4 + 64);
  }

  result = OutputBuffer<A>.append(_:zeroPad:)(v17, 2);
  *a5 = 1;
  if (!v14)
  {
    goto LABEL_52;
  }

LABEL_33:
  if ((v14 & 4) != 0)
  {
    if (*a5 != 1)
    {
      goto LABEL_44;
    }

    if (v10[3])
    {
      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v18 & 1) == 0)
      {
        goto LABEL_44;
      }
    }

    else
    {
    }

    if (v46 >= v11)
    {
LABEL_149:
      __break(1u);
      goto LABEL_150;
    }

    v12[v46++] = 45;
LABEL_44:
    if (v46 >= v11)
    {
LABEL_134:
      __break(1u);
      goto LABEL_135;
    }

    if (*(a4 + 264))
    {
      v19 = 1;
    }

    else
    {
      v19 = *(a4 + 256);
    }

    v12[v46++] = 87;
    result = OutputBuffer<A>.append(_:zeroPad:)(v19, 2);
    *a5 = 1;
    if ((v14 & 8) != 0)
    {
      goto LABEL_52;
    }

    goto LABEL_49;
  }

  if ((v14 & 8) != 0)
  {
    if (*a5 != 1)
    {
LABEL_60:
      if ((v14 & 2) == 0)
      {
        if (*(a4 + 104))
        {
          result = 1;
        }

        else
        {
          result = *(a4 + 96);
        }

        v21 = 3;
LABEL_74:
        result = OutputBuffer<A>.append(_:zeroPad:)(result, v21);
        *a5 = 1;
        if (!v14 || (v14 & 0x10) != 0)
        {
LABEL_76:
          if (v10[4])
          {
            if (v46 >= v11)
            {
LABEL_146:
              __break(1u);
              goto LABEL_147;
            }

            v23 = 84;
          }

          else
          {
            if (v46 >= v11)
            {
LABEL_147:
              __break(1u);
LABEL_148:
              __break(1u);
              goto LABEL_149;
            }

            v23 = 32;
          }

          v12[v46++] = v23;
LABEL_82:
          v43 = a6;
          v44 = a8;
          if (*(a4 + 120))
          {
            v24 = 0;
          }

          else
          {
            v24 = *(a4 + 112);
          }

          v25 = v10;
          if (*(a4 + 136))
          {
            v26 = 0;
          }

          else
          {
            v26 = *(a4 + 128);
          }

          if (*(a4 + 152))
          {
            v27 = 0;
          }

          else
          {
            v27 = *(a4 + 144);
          }

          v28 = v25;
          v29 = *v25;
          result = OutputBuffer<A>.append(_:zeroPad:)(v24, 2);
          if (v29)
          {
            OutputBuffer<A>.append(_:zeroPad:)(v26, 2);
          }

          else
          {
            if (v46 >= v11)
            {
LABEL_139:
              __break(1u);
LABEL_140:
              __break(1u);
              goto LABEL_141;
            }

            v12[v46] = 58;
            v47 = v46 + 1;
            result = OutputBuffer<A>.append(_:zeroPad:)(v26, 2);
            if (v47 >= v11)
            {
LABEL_141:
              __break(1u);
              goto LABEL_142;
            }

            v12[v47] = 58;
            v46 = v47 + 1;
          }

          result = OutputBuffer<A>.append(_:zeroPad:)(v27, 2);
          v10 = v28;
          v30 = v28[1];
          a8 = v44;
          a6 = v43;
          if (v30)
          {
            v31 = *(a4 + 160) / 1000000.0;
            if (*(a4 + 168))
            {
              v31 = 0.0;
            }

            v32 = trunc(v31);
            if ((*&v32 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_140;
            }

            if (v32 <= -9.22337204e18)
            {
LABEL_142:
              __break(1u);
              goto LABEL_143;
            }

            if (v32 >= 9.22337204e18)
            {
LABEL_143:
              __break(1u);
              goto LABEL_144;
            }

            if (v46 >= v11)
            {
LABEL_144:
              __break(1u);
              goto LABEL_145;
            }

            v12[v46++] = 46;
            result = OutputBuffer<A>.append(_:zeroPad:)(v32, 3);
          }

          *a5 = 1;
          if (!v14)
          {
            goto LABEL_106;
          }

          goto LABEL_105;
        }

        goto LABEL_105;
      }

      goto LABEL_65;
    }

LABEL_52:
    if (v10[3])
    {
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v20 & 1) == 0)
      {
        if (!v14)
        {
LABEL_65:
          if (*(a4 + 88))
          {
            result = 1;
          }

          else
          {
            result = *(a4 + 80);
          }

LABEL_73:
          v21 = 2;
          goto LABEL_74;
        }

LABEL_59:
        if ((v14 & 4) != 0)
        {
          v22 = *(a4 + 176);
          if (v22 >= 10)
          {
            v22 = 10;
          }

          if (*(a4 + 184))
          {
            v22 = 1;
          }

          result = v22 - 1;
          if (__OFSUB__(v22, 1))
          {
            goto LABEL_148;
          }

          goto LABEL_73;
        }

        goto LABEL_60;
      }
    }

    else
    {
    }

    if (v46 >= v11)
    {
LABEL_136:
      __break(1u);
      goto LABEL_137;
    }

    v12[v46++] = 45;
    if (!v14)
    {
      goto LABEL_65;
    }

    goto LABEL_59;
  }

LABEL_49:
  if ((v14 & 0x10) != 0)
  {
    if (*a5 != 1)
    {
      goto LABEL_82;
    }

    goto LABEL_76;
  }

LABEL_105:
  if ((v14 & 0x20) == 0)
  {
    goto LABEL_109;
  }

LABEL_106:
  if ((a7 & 1) != 0 || !a6 || (a6 - 64800) <= 0xFFFFFFFFFFFE05C0)
  {
    if (v46 >= v11)
    {
LABEL_135:
      __break(1u);
      goto LABEL_136;
    }

    v12[v46++] = 90;
  }

  else
  {
    if (a6 < 0)
    {
      if (v46 >= v11)
      {
LABEL_153:
        __break(1u);
LABEL_154:
        __break(1u);
        goto LABEL_155;
      }

      v37 = a6;
      v35 = v11;
      v34 = -v37;
      v36 = 45;
    }

    else
    {
      if (v46 >= v11)
      {
LABEL_151:
        __break(1u);
        goto LABEL_152;
      }

      LOWORD(v34) = a6;
      v35 = v11;
      v36 = 43;
    }

    v12[v46] = v36;
    v38 = v34 % 0xE10u / 0x3C;
    v39 = v34 % 0xE10u % 0x3C;
    ++v46;
    OutputBuffer<A>.append(_:zeroPad:)(v34 / 0xE10u, 2);
    v40 = v10[2];
    if (v40)
    {
      v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v41 & 1) == 0)
      {
        result = OutputBuffer<A>.append(_:zeroPad:)(v38, 2);
        v11 = v35;
        if (!v39)
        {
          goto LABEL_109;
        }

        goto LABEL_127;
      }
    }

    else
    {
    }

    if (v46 >= v35)
    {
LABEL_150:
      __break(1u);
      goto LABEL_151;
    }

    v12[v46++] = 58;
    result = OutputBuffer<A>.append(_:zeroPad:)(v38, 2);
    v11 = v35;
    if (v39)
    {
      if ((v40 & 1) == 0)
      {

        goto LABEL_130;
      }

LABEL_127:
      v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v42 & 1) == 0)
      {
LABEL_132:
        result = OutputBuffer<A>.append(_:zeroPad:)(v39, 2);
        goto LABEL_109;
      }

LABEL_130:
      if (v46 >= v11)
      {
LABEL_152:
        __break(1u);
        goto LABEL_153;
      }

      v12[v46++] = 58;
      goto LABEL_132;
    }
  }

LABEL_109:
  if (v46 >= v11)
  {
    __break(1u);
    goto LABEL_134;
  }

  v12[v46] = 0;
  result = MEMORY[0x1865CAEB0](v12);
  if (v33)
  {
    *a8 = result;
    a8[1] = v33;
    return result;
  }

LABEL_155:
  __break(1u);
  return result;
}

unint64_t OutputBuffer<A>.append(_:zeroPad:)(unint64_t result, uint64_t a2)
{
  v67 = *MEMORY[0x1E69E9840];
  if (result <= 9)
  {
    if (!__OFSUB__(a2, 1))
    {
      if (a2 - 1 < 1)
      {
        goto LABEL_37;
      }

      v3 = v2[2];
      v4 = *v2;
      if (v3 <= v2[1])
      {
        v5 = v2[1];
      }

      else
      {
        v5 = v2[2];
      }

      v6 = v5 - v3;
      if (a2 - 2 < (v5 - v3))
      {
        v6 = a2 - 2;
      }

      v7 = v6 + 1;
      if (v7 >= 0x21)
      {
        v24 = v7 & 0x1F;
        if ((v7 & 0x1F) == 0)
        {
          v24 = 32;
        }

        v8 = v7 - v24;
        v9 = v3 + v8;
        v25 = (v3 + v4 + 16);
        *&v26 = 0x3030303030303030;
        *(&v26 + 1) = 0x3030303030303030;
        v27 = v8;
        do
        {
          *(v25 - 1) = v26;
          *v25 = v26;
          v25 += 2;
          v27 -= 32;
        }

        while (v27);
      }

      else
      {
        v8 = 0;
        v9 = v2[2];
      }

      v28 = v8 + v3 - v5;
      v29 = ~v8 + a2;
      while (v28)
      {
        *(v4 + v9++) = 48;
        ++v28;
        if (!--v29)
        {
          v2[2] = v9;
LABEL_37:
          if (result >= -128)
          {
            v30 = v2[2];
            if (v30 < v2[1])
            {
              *(*v2 + v30) = result + 48;
              v31 = v30 + 1;
              goto LABEL_86;
            }

LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
            goto LABEL_96;
          }

LABEL_92:
          __break(1u);
          goto LABEL_93;
        }
      }

      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
    }

    __break(1u);
    goto LABEL_92;
  }

  if (result > 0x63)
  {
    if (result > 0x3E7)
    {
      if (result >> 4 > 0x270)
      {
        v65 = specialized closure #1 in numericStringRepresentationForBinaryInteger<A>(words:isSigned:)(v66, 1, result, 1u);
        MEMORY[0x1EEE9AC00](v65);
        specialized String.withUTF8<A>(_:)(partial apply for closure #1 in OutputBuffer<A>.append(_:zeroPad:));
      }

      if (!__OFSUB__(a2, 4))
      {
        v32 = v2[2];
        if (a2 - 4 >= 1)
        {
          v33 = *v2;
          v34 = v2[1];
          if (v32 > v34)
          {
            v34 = v2[2];
          }

          v35 = v34 - v32;
          if (a2 - 5 < (v34 - v32))
          {
            v35 = a2 - 5;
          }

          v36 = v35 + 1;
          if (v36 >= 0x21)
          {
            v55 = v36 & 0x1F;
            if ((v36 & 0x1F) == 0)
            {
              v55 = 32;
            }

            v37 = v36 - v55;
            v38 = v32 + v37;
            v56 = (v32 + v33 + 16);
            *&v57 = 0x3030303030303030;
            *(&v57 + 1) = 0x3030303030303030;
            v58 = v37;
            do
            {
              *(v56 - 1) = v57;
              *v56 = v57;
              v56 += 2;
              v58 -= 32;
            }

            while (v58);
          }

          else
          {
            v37 = 0;
            v38 = v2[2];
          }

          v59 = v37 + v32 - v34;
          v60 = a2 - v37 - 4;
          v32 = v38;
          do
          {
            if (!v59)
            {
              goto LABEL_90;
            }

            *(v33 + v32++) = 48;
            ++v59;
            --v60;
          }

          while (v60);
          v2[2] = v32;
        }

        v61 = v2[1];
        if (v32 < v61)
        {
          v62 = *v2;
          *(*v2 + v32) = result / 0x3E8 + 48;
          v2[2] = v32 + 1;
          if (v32 + 1 < v61)
          {
            v63 = result % 0x3E8;
            *(v62 + v32 + 1) = (v63 / 0x64u) | 0x30;
            v2[2] = v32 + 2;
            if (v32 + 2 < v61)
            {
              v64 = v63 % 0x64u;
              *(v62 + v32 + 2) = (v64 / 0xAu) | 0x30;
              v2[2] = v32 + 3;
              if (v32 + 3 < v61)
              {
                *(v62 + v32 + 3) = (v64 % 0xAu) | 0x30;
                v31 = v32 + 4;
                goto LABEL_86;
              }

LABEL_105:
              __break(1u);
            }

LABEL_104:
            __break(1u);
            goto LABEL_105;
          }

LABEL_103:
          __break(1u);
          goto LABEL_104;
        }

LABEL_102:
        __break(1u);
        goto LABEL_103;
      }

LABEL_101:
      __break(1u);
      goto LABEL_102;
    }

    if (!__OFSUB__(a2, 3))
    {
      v17 = v2[2];
      if (a2 - 3 >= 1)
      {
        v18 = *v2;
        v19 = v2[1];
        if (v17 > v19)
        {
          v19 = v2[2];
        }

        v20 = v19 - v17;
        if (a2 - 4 < (v19 - v17))
        {
          v20 = a2 - 4;
        }

        v21 = v20 + 1;
        if (v21 >= 0x21)
        {
          v47 = v21 & 0x1F;
          if ((v21 & 0x1F) == 0)
          {
            v47 = 32;
          }

          v22 = v21 - v47;
          v23 = v17 + v22;
          v48 = (v17 + v18 + 16);
          *&v49 = 0x3030303030303030;
          *(&v49 + 1) = 0x3030303030303030;
          v50 = v22;
          do
          {
            *(v48 - 1) = v49;
            *v48 = v49;
            v48 += 2;
            v50 -= 32;
          }

          while (v50);
        }

        else
        {
          v22 = 0;
          v23 = v2[2];
        }

        v51 = v22 + v17 - v19;
        v52 = a2 - v22 - 3;
        v17 = v23;
        do
        {
          if (!v51)
          {
            goto LABEL_89;
          }

          *(v18 + v17++) = 48;
          ++v51;
          --v52;
        }

        while (v52);
        v2[2] = v17;
      }

      v53 = v2[1];
      if (v17 < v53)
      {
        v54 = *v2;
        *(*v2 + v17) = (result / 0x64) | 0x30;
        v2[2] = v17 + 1;
        if (v17 + 1 < v53)
        {
          *(v54 + v17 + 1) = (result % 0x64 / 0xA) | 0x30;
          v2[2] = v17 + 2;
          if (v17 + 2 < v53)
          {
            *(v54 + v17 + 2) = (result % 0x64 % 0xA) | 0x30;
            v31 = v17 + 3;
            goto LABEL_86;
          }

          goto LABEL_100;
        }

LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
        goto LABEL_101;
      }

LABEL_98:
      __break(1u);
      goto LABEL_99;
    }

LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  if (__OFSUB__(a2, 2))
  {
    goto LABEL_94;
  }

  v10 = v2[2];
  if (a2 - 2 >= 1)
  {
    v11 = *v2;
    v12 = v2[1];
    if (v10 > v12)
    {
      v12 = v2[2];
    }

    v13 = v12 - v10;
    if (a2 - 3 < (v12 - v10))
    {
      v13 = a2 - 3;
    }

    v14 = v13 + 1;
    if (v14 >= 0x21)
    {
      v39 = v14 & 0x1F;
      if ((v14 & 0x1F) == 0)
      {
        v39 = 32;
      }

      v15 = v14 - v39;
      v16 = v10 + v15;
      v40 = (v10 + v11 + 16);
      *&v41 = 0x3030303030303030;
      *(&v41 + 1) = 0x3030303030303030;
      v42 = v15;
      do
      {
        *(v40 - 1) = v41;
        *v40 = v41;
        v40 += 2;
        v42 -= 32;
      }

      while (v42);
    }

    else
    {
      v15 = 0;
      v16 = v2[2];
    }

    v43 = v15 + v10 - v12;
    v44 = a2 - v15 - 2;
    v10 = v16;
    do
    {
      if (!v43)
      {
        goto LABEL_88;
      }

      *(v11 + v10++) = 48;
      ++v43;
      --v44;
    }

    while (v44);
    v2[2] = v10;
  }

  v45 = v2[1];
  if (v10 >= v45)
  {
    goto LABEL_95;
  }

  v46 = *v2;
  *(*v2 + v10) = (result / 0xA) | 0x30;
  v2[2] = v10 + 1;
  if (v10 + 1 >= v45)
  {
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  *(v46 + v10 + 1) = (result % 0xA) | 0x30;
  v31 = v10 + 2;
LABEL_86:
  v2[2] = v31;
  return result;
}

uint64_t protocol witness for FormatStyle.format(_:) in conformance Date.ISO8601FormatStyle@<X0>(Swift::String *a1@<X8>, Foundation::Date a2@<D0>)
{
  v4 = Date.ISO8601FormatStyle.format(_:)(a2);
  result = v4._countAndFlagsBits;
  *a1 = v4;
  return result;
}

uint64_t protocol witness for _LocaleProtocol.currencySymbol.getter in conformance _LocaleICU()
{
  v1 = *(v0 + 200);
  os_unfair_lock_lock(v1 + 134);
  partial apply for closure #1 in _LocaleICU.currencySymbol.getter(&v3);
  os_unfair_lock_unlock(v1 + 134);
  return v3;
}

void _compatEncodeValueOfObjCType(objc_class *a1, int a2, const char **a3, const char *a4)
{
  if (a2 <= 80)
  {
    if (a2 > 63)
    {
      if (a2 > 66)
      {
        if (a2 != 67)
        {
          if (a2 != 73 && a2 != 76)
          {
LABEL_93:
            v35 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: unknown type encoding ('%c')", _NSMethodExceptionProem(a1, a4), a2), 0}];
            objc_exception_throw(v35);
          }

          goto LABEL_37;
        }

LABEL_39:
        v16 = *(a1 + 11);
        *(a1 + 11) = v16 + 1;
        if (v16 > 0x27)
        {
          v8 = [NSString stringWithFormat:@"$%ld", a4, v16];
        }

        else
        {
          v8 = generic_keys[v16];
        }

        v17 = *a3;
        goto LABEL_55;
      }

      if (a2 != 64)
      {
        if (a2 != 66)
        {
          goto LABEL_93;
        }

        v13 = *(a1 + 11);
        *(a1 + 11) = v13 + 1;
        if (v13 > 0x27)
        {
          v14 = [NSString stringWithFormat:@"$%ld", a4, v13];
        }

        else
        {
          v14 = generic_keys[v13];
        }

        if (*a3)
        {
          v33 = MEMORY[0x1E695E4D0];
        }

        else
        {
          v33 = MEMORY[0x1E695E4C0];
        }

        v34 = *v33;

        addValueToTopContainerE(a1, v14, v34);
        return;
      }

      v25 = *(a1 + 11);
      *(a1 + 11) = v25 + 1;
      if (v25 > 0x27)
      {
        v26 = [NSString stringWithFormat:@"$%ld", a4, v25];
      }

      else
      {
        v26 = generic_keys[v25];
      }

      v29 = *a3;
      v30 = a1;
LABEL_79:

      _encodeObject(v30, v26, v29, 0);
      return;
    }

    if (a2 > 41)
    {
      if (a2 != 42)
      {
        if (a2 != 58)
        {
          goto LABEL_93;
        }

        value = NSCopyStringFromSelector(*a3);
        v9 = *(a1 + 11);
        *(a1 + 11) = v9 + 1;
        if (v9 > 0x27)
        {
          v10 = [NSString stringWithFormat:@"$%ld", v9];
        }

        else
        {
          v10 = generic_keys[v9];
        }

        _encodeObject(a1, v10, value, 0);

        return;
      }
    }

    else
    {
      if (a2 == 35)
      {
        _NSCoderCheckPotentiallyMangledClassNameAndWarn(*a3, 1);
        v23 = *(a1 + 11);
        *(a1 + 11) = v23 + 1;
        if (v23 > 0x27)
        {
          v21 = [NSString stringWithFormat:@"$%ld", v23];
        }

        else
        {
          v21 = generic_keys[v23];
        }

        v24 = NSStringFromClass(*a3);
        goto LABEL_68;
      }

      if (a2 != 37)
      {
        goto LABEL_93;
      }

      v6 = _NSMethodExceptionProem(a1, a4);
      NSLog(@"%@: warning: NXAtom being encoded -- will not be decoded uniqued", v6);
    }

    v20 = *(a1 + 11);
    *(a1 + 11) = v20 + 1;
    if (v20 > 0x27)
    {
      v21 = [NSString stringWithFormat:@"$%ld", v20];
    }

    else
    {
      v21 = generic_keys[v20];
    }

    v24 = [NSString stringWithUTF8String:*a3];
LABEL_68:
    v29 = v24;
    v30 = a1;
    v26 = v21;
    goto LABEL_79;
  }

  if (a2 > 101)
  {
    if (a2 <= 107)
    {
      if (a2 == 102)
      {
        v27 = *(a1 + 11);
        *(a1 + 11) = v27 + 1;
        if (v27 > 0x27)
        {
          v28 = [NSString stringWithFormat:@"$%ld", a4, v27];
        }

        else
        {
          v28 = generic_keys[v27];
        }

        v32 = *a3;

        _encodeFloat(a1, v28, v32);
        return;
      }

      if (a2 != 105)
      {
        goto LABEL_93;
      }
    }

    else if (a2 != 108)
    {
      if (a2 != 113)
      {
        if (a2 != 115)
        {
          goto LABEL_93;
        }

        goto LABEL_21;
      }

      goto LABEL_43;
    }

LABEL_37:
    v15 = *(a1 + 11);
    *(a1 + 11) = v15 + 1;
    if (v15 > 0x27)
    {
      v8 = [NSString stringWithFormat:@"$%ld", a4, v15];
    }

    else
    {
      v8 = generic_keys[v15];
    }

    v17 = *a3;
LABEL_55:

    _encodeInt32(a1, v8, v17);
    return;
  }

  if (a2 <= 98)
  {
    if (a2 != 81)
    {
      if (a2 != 83)
      {
        goto LABEL_93;
      }

LABEL_21:
      v7 = *(a1 + 11);
      *(a1 + 11) = v7 + 1;
      if (v7 > 0x27)
      {
        v8 = [NSString stringWithFormat:@"$%ld", a4, v7];
      }

      else
      {
        v8 = generic_keys[v7];
      }

      v17 = *a3;
      goto LABEL_55;
    }

LABEL_43:
    v18 = *(a1 + 11);
    *(a1 + 11) = v18 + 1;
    if (v18 > 0x27)
    {
      v19 = [NSString stringWithFormat:@"$%ld", a4, v18];
    }

    else
    {
      v19 = generic_keys[v18];
    }

    v22 = *a3;

    _encodeInt64(a1, v19, v22);
    return;
  }

  if (a2 == 99)
  {
    goto LABEL_39;
  }

  if (a2 != 100)
  {
    goto LABEL_93;
  }

  v11 = *(a1 + 11);
  *(a1 + 11) = v11 + 1;
  if (v11 > 0x27)
  {
    v12 = [NSString stringWithFormat:@"$%ld", a4, v11];
  }

  else
  {
    v12 = generic_keys[v11];
  }

  v31 = *a3;

  _encodeDouble(a1, v12, *&v31);
}

void _startElementNs(uint64_t a1, void *key, char *__s, void *a4, int a5, uint64_t a6, int a7, int a8, uint64_t a9)
{
  v83 = *MEMORY[0x1E69E9840];
  if (a1 && (*(a1 + 120) & 1) != 0)
  {
    return;
  }

  v73 = *(a1 + 8);
  v78 = *(a1 + 40);
  if (__s && (v16 = strlen(__s)) != 0)
  {
    v17 = v16;
    Value = 0;
    if (key)
    {
      if ((v78 & 4) != 0)
      {
        Value = CFDictionaryGetValue(*(a1 + 64), key);
        if (!Value)
        {
          Value = __SlowPathNSXMLParserNSStringFromBytes(*(a1 + 64), key);
        }
      }
    }

    v18 = strlen(key);
    v19 = _cachedColonSeparatedStringFromPrefixAndSuffix(__s, v17, key, v18, a1);
  }

  else
  {
    if (key)
    {
      v19 = CFDictionaryGetValue(*(a1 + 64), key);
      v20 = v78;
      Value = v19;
      if (!v19)
      {
        v19 = __SlowPathNSXMLParserNSStringFromBytes(*(a1 + 64), key);
        Value = v19;
      }

      goto LABEL_15;
    }

    Value = 0;
    v19 = 0;
  }

  v20 = v78;
LABEL_15:
  v74 = v19;
  v21 = 0;
  if (a4)
  {
    if ((v20 & 4) != 0)
    {
      v21 = CFDictionaryGetValue(*(a1 + 64), a4);
      if (!v21)
      {
        v21 = __SlowPathNSXMLParserNSStringFromBytes(*(a1 + 64), a4);
      }
    }
  }

  v72 = v21;
  v22 = a7 + a5;
  if (a7 + a5 < 0)
  {
    v68 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", 2 * v22);
    v69 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:v68 userInfo:0];
    CFRelease(v68);
    objc_exception_throw(v69);
  }

  v76 = v70;
  if (v22)
  {
    v23 = 2 * v22;
  }

  else
  {
    v23 = 1;
  }

  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v70[-v25];
  v82 = 0;
  if (v27 >= 0x101)
  {
    v26 = _CFCreateArrayStorage();
    v77 = v26;
  }

  else
  {
    v77 = 0;
  }

  v80 = &v26[8 * v22];
  v81 = v26;
  v28 = &stru_1EEEFDF90;
  if (!v22)
  {
    v29 = 0;
    v79 = 0;
    if ((v20 & 8) == 0)
    {
      goto LABEL_58;
    }

LABEL_57:
    [a1 _pushNamespaces:{v79, v24}];
    goto LABEL_58;
  }

  if ((v20 & 8) != 0)
  {
    v79 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:a5];
  }

  else
  {
    v79 = 0;
  }

  if (!a5)
  {
    v29 = 0;
    if ((v20 & 8) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_57;
  }

  v71 = a7;
  v29 = 0;
  v30 = 0;
  v31 = 2 * a5;
  do
  {
    v32 = *(a6 + 8 * v30);
    if (v32)
    {
      if ((v20 & 8) != 0)
      {
        v33 = CFDictionaryGetValue(*(a1 + 64), *(a6 + 8 * v30));
        if (!v33)
        {
          v33 = __SlowPathNSXMLParserNSStringFromBytes(*(a1 + 64), v32);
        }
      }

      else
      {
        v33 = 0;
      }

      v35 = strlen(*(a6 + 8 * v30));
      v34 = _cachedColonSeparatedStringFromPrefixAndSuffix("xmlns", 5uLL, *(a6 + 8 * v30), v35, a1);
    }

    else
    {
      v34 = @"xmlns";
      v33 = &stru_1EEEFDF90;
    }

    v36 = a6 + 8 * v30;
    v37 = *(v36 + 8);
    if (!v37)
    {
      v39 = &stru_1EEEFDF90;
      if ((v20 & 8) == 0)
      {
        goto LABEL_51;
      }

LABEL_50:
      [v79 setObject:v39 forKey:v33];
      goto LABEL_51;
    }

    v38 = CFDictionaryGetValue(*(a1 + 64), *(v36 + 8));
    if (!v38)
    {
      v38 = __SlowPathNSXMLParserNSStringFromBytes(*(a1 + 64), v37);
    }

    if (v38)
    {
      v39 = v38;
    }

    else
    {
      v39 = &stru_1EEEFDF90;
    }

    if ((v20 & 8) != 0)
    {
      goto LABEL_50;
    }

LABEL_51:
    if ((v20 & 4) == 0)
    {
      v40 = v80;
      *&v81[8 * v29] = v34;
      *&v40[8 * v29++] = v39;
    }

    v30 += 2;
  }

  while (v30 < v31);
  a7 = v71;
  if ((v20 & 8) != 0)
  {
    goto LABEL_57;
  }

LABEL_58:

  if (a7)
  {
    v41 = 5 * a7;
    v42 = (a9 + 24);
    v43 = 3;
    while (1)
    {
      v44 = *(v42 - 3);
      if (v44)
      {
        break;
      }

LABEL_80:
      v59 = v43 + 2;
      v43 += 5;
      v42 += 5;
      if (v59 >= v41)
      {
        goto LABEL_81;
      }
    }

    v45 = *(v42 - 2);
    if (v45)
    {
      v46 = strlen(*(v42 - 2));
      if (v46)
      {
        v47 = v46;
        v48 = strlen(v44);
        v49 = _cachedColonSeparatedStringFromPrefixAndSuffix(v45, v47, v44, v48, a1);
        goto LABEL_66;
      }
    }

    v50 = CFDictionaryGetValue(*(a1 + 64), v44);
    if (!v50)
    {
      v49 = __SlowPathNSXMLParserNSStringFromBytes(*(a1 + 64), v44);
LABEL_66:
      v50 = v49;
    }

    v51 = *v42;
    if (*v42)
    {
      v52 = v42[1];
      if (v52)
      {
        v53 = v52 - v51;
        if (v52 != v51)
        {
          MEMORY[0x1EEE9AC00](v53 + 1);
          v56 = &v70[-v55];
          if (v53 >= 128)
          {
            v56 = malloc_type_malloc(v54, 0xA0EFF249uLL);
          }

          strncpy(v56, *v42, v53);
          v56[v53] = 0;
          v57 = CFDictionaryGetValue(*(a1 + 64), v56);
          if (!v57)
          {
            v57 = __SlowPathNSXMLParserNSStringFromBytes(*(a1 + 64), v56);
          }

          if (v57)
          {
            v28 = v57;
          }

          if (v53 >= 128)
          {
            free(v56);
          }

          v20 = v78;
        }
      }
    }

    v58 = v80;
    *&v81[8 * v29] = v50;
    *&v58[8 * v29++] = v28;
    v28 = &stru_1EEEFDF90;
    goto LABEL_80;
  }

LABEL_81:
  if (v29)
  {
    v60 = objc_alloc(MEMORY[0x1E695DF20]);
    v61 = [v60 initWithObjects:v80 forKeys:v81 count:v29];
  }

  else
  {
    v61 = 0;
  }

  if ((*(a1 + 43) & 0x20) != 0)
  {
    if (qword_1ED43FCA8 != -1)
    {
      dispatch_once(&qword_1ED43FCA8, &__block_literal_global_185);
    }

    if (_MergedGlobals_130 == 1)
    {
      if (v61)
      {
        v62 = v61;
        v63 = [v61 mutableCopy];
      }

      else
      {
        v63 = objc_alloc_init(MEMORY[0x1E695DF90]);
      }

      v61 = v63;
    }

    if ((v20 & 4) != 0)
    {
      if (Value)
      {
        v64 = Value;
      }

      else
      {
        v64 = &stru_1EEEFDF90;
      }

      if (v72)
      {
        v65 = v72;
      }

      else
      {
        v65 = &stru_1EEEFDF90;
      }

      if (v74)
      {
        v28 = v74;
      }

      v66 = v61;
      if (!v61)
      {
        v66 = [MEMORY[0x1E695DF20] dictionary];
      }

      [v73 parser:a1 didStartElement:v64 namespaceURI:v65 qualifiedName:v28 attributes:v66];
    }

    else
    {
      v67 = v61;
      if (!v61)
      {
        v67 = [MEMORY[0x1E695DF20] dictionary];
      }

      [v73 parser:a1 didStartElement:v74 namespaceURI:0 qualifiedName:0 attributes:v67];
    }
  }

  free(v77);
}

NSString *__SlowPathNSXMLParserNSStringFromBytes(__CFDictionary *a1, char *__s)
{
  v4 = [[NSString alloc] initWithBytes:__s length:strlen(__s) encoding:4];
  v5 = v4;
  if ((v4 & 0x8000000000000000) != 0)
  {
    return v5;
  }

  CStringPtr = CFStringGetCStringPtr(v4, 0x8000100u);
  if (CStringPtr)
  {
    v8 = CStringPtr;
    if (!strcmp(__s, CStringPtr))
    {
      CFDictionaryAddValue(a1, v8, v5);

      return v5;
    }
  }

  return v5;
}

CFDictionaryRef *_endElementNs(CFDictionaryRef *result, void *key, char *__s, void *a4)
{
  v7 = result;
  if (result && (result[15] & 1) != 0)
  {
    return result;
  }

  v8 = result[1];
  v9 = result[5];
  if (__s)
  {
    v10 = strlen(__s);
    if (v10)
    {
      Value = 0;
      if (key)
      {
        if ((v9 & 4) != 0)
        {
          Value = CFDictionaryGetValue(v7[8], key);
          if (!Value)
          {
            Value = __SlowPathNSXMLParserNSStringFromBytes(v7[8], key);
          }
        }
      }

      v12 = strlen(key);
      v13 = _cachedColonSeparatedStringFromPrefixAndSuffix(__s, v10, key, v12, v7);
LABEL_13:
      v14 = v13;
      goto LABEL_15;
    }
  }

  if (key)
  {
    Value = CFDictionaryGetValue(v7[8], key);
    v14 = Value;
    if (Value)
    {
      goto LABEL_15;
    }

    v13 = __SlowPathNSXMLParserNSStringFromBytes(v7[8], key);
    Value = v13;
    goto LABEL_13;
  }

  Value = 0;
  v14 = 0;
LABEL_15:
  v15 = 0;
  if (a4)
  {
    if ((v9 & 4) != 0)
    {
      v15 = CFDictionaryGetValue(v7[8], a4);
      if (!v15)
      {
        v15 = __SlowPathNSXMLParserNSStringFromBytes(v7[8], a4);
      }
    }
  }

  if ((*(v7 + 43) & 0x40) != 0)
  {
    if ((v9 & 4) != 0)
    {
      if (v15)
      {
        v16 = v15;
      }

      else
      {
        v16 = &stru_1EEEFDF90;
      }

      if (v14)
      {
        v17 = v14;
      }

      else
      {
        v17 = &stru_1EEEFDF90;
      }

      v18 = v8;
      v19 = v7;
      v20 = Value;
    }

    else
    {
      v18 = v8;
      v19 = v7;
      v20 = v14;
      v16 = 0;
      v17 = 0;
    }

    [(__CFDictionary *)v18 parser:v19 didEndElement:v20 namespaceURI:v16 qualifiedName:v17];
  }

  return [(CFDictionaryRef *)v7 _popNamespaces];
}