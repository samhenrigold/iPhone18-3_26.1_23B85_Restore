float GraphicsFilter.AlphaThreshold.color.getter@<S0>(uint64_t a1@<X8>)
{
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

__n128 GraphicsFilter.AlphaThreshold.color.setter(__n128 *a1)
{
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u32[0] = a1[1].n128_u32[0];
  return result;
}

SwiftUI::GraphicsFilter::EDRGainMultiply __swiftcall GraphicsFilter.EDRGainMultiply.init(amount:scale:isAdaptive:allowsGroup:)(Swift::Float amount, Swift::Float scale, Swift::Bool isAdaptive, Swift::Bool allowsGroup)
{
  *v4 = amount;
  *(v4 + 4) = scale;
  *(v4 + 8) = isAdaptive;
  *(v4 + 9) = allowsGroup;
  result.scale = scale;
  result.amount = amount;
  result.isAdaptive = isAdaptive;
  return result;
}

uint64_t GraphicsFilter.DisplacementMap.mask.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 56);
  v4 = *(v1 + 88);
  v13 = *(v1 + 72);
  v3 = v13;
  v14[0] = v4;
  *(v14 + 12) = *(v1 + 100);
  v5 = *(v14 + 12);
  v6 = *(v1 + 24);
  v10[0] = *(v1 + 8);
  v10[1] = v6;
  v11 = *(v1 + 40);
  v7 = v11;
  v12 = v2;
  *a1 = v10[0];
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v2;
  a1[4] = v3;
  a1[5] = v4;
  *(a1 + 92) = v5;
  return outlined init with copy of VariableBlurStyle.Mask(v10, &v9);
}

uint64_t static GraphicsBlendMode.normal.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for normal != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v2 = static GraphicsBlendMode.normal;
  v3 = byte_1ED52F818;
  *a1 = static GraphicsBlendMode.normal;
  *(a1 + 8) = v3;

  return outlined copy of GraphicsBlendMode(v2, v3);
}

uint64_t GraphicsFilter.changesDOD.getter()
{
  v1 = v0[5];
  v7[4] = v0[4];
  v7[5] = v1;
  v8[0] = v0[6];
  *(v8 + 12) = *(v0 + 108);
  v2 = v0[1];
  v7[0] = *v0;
  v7[1] = v2;
  v3 = v0[3];
  v7[2] = v0[2];
  v7[3] = v3;
  v4 = _s7SwiftUI14GraphicsFilterOWOg(v7);
  v5 = 0;
  if (v4 <= 2)
  {
    if (v4 < 2)
    {
      v5 = *(_s7SwiftUI14GraphicsFilterOWOj6_(v7) + 8) ^ 1;
      return v5 & 1;
    }

    if (v4 != 2)
    {
      return v5 & 1;
    }

    goto LABEL_8;
  }

  if (v4 == 3 || v4 == 4 || v4 == 21)
  {
LABEL_8:
    _s7SwiftUI14GraphicsFilterOWOj6_(v7);
    v5 = 1;
  }

  return v5 & 1;
}

void GraphicsFilter.encode(to:)(float *a1)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[3];
  v143[2] = v1[2];
  v143[3] = v6;
  v143[0] = v4;
  v143[1] = v5;
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  *&v144[12] = *(v1 + 108);
  v143[5] = v8;
  *v144 = v9;
  v143[4] = v7;
  switch(_s7SwiftUI14GraphicsFilterOWOg(v143))
  {
    case 1u:
      _s7SwiftUI14GraphicsFilterOWOj6_(v143);
      specialized ProtobufEncoder.messageField<A>(_:_:)(18);
      return;
    case 2u:
      goto LABEL_36;
    case 3u:
      v45 = _s7SwiftUI14GraphicsFilterOWOj6_(v143);
      v46 = *(v45 + 80);
      v113[4] = *(v45 + 64);
      v113[5] = v46;
      v113[6] = *(v45 + 96);
      v114 = *(v45 + 112);
      v47 = *(v45 + 16);
      v113[0] = *v45;
      v113[1] = v47;
      v48 = *(v45 + 48);
      v113[2] = *(v45 + 32);
      v113[3] = v48;
      v39 = v113;
      v40 = 23;
      goto LABEL_42;
    case 4u:
      goto LABEL_13;
    case 5u:
      v63 = _s7SwiftUI14GraphicsFilterOWOj6_(v143);
      v64 = *(v63 + 48);
      v118[2] = *(v63 + 32);
      v118[3] = v64;
      v119 = *(v63 + 64);
      v65 = *(v63 + 16);
      v118[0] = *v63;
      v118[1] = v65;
      ProtobufEncoder.encodeVarint(_:)(0x1AuLL);
      specialized ProtobufEncoder.encodeMessage<A>(_:)(v118);
      return;
    case 6u:
      goto LABEL_61;
    case 7u:
      v49 = _s7SwiftUI14GraphicsFilterOWOj6_(v143);
      v50 = *(v49 + 16);
      v120[5] = *v49;
      v121 = v50;
      ProtobufEncoder.encodeVarint(_:)(0x2AuLL);
      v10 = *(a1 + 1);
      v11 = *(a1 + 3);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
      }

      v51 = *(v11 + 2);
      v52 = *(v11 + 3);
      v53 = v51 + 1;
      if (v51 >= v52 >> 1)
      {
        v107 = v51 + 1;
        v93 = v11;
        v94 = *(v11 + 2);
        v95 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v52 > 1), v51 + 1, 1, v93);
        v51 = v94;
        v53 = v107;
        v11 = v95;
      }

      *(v11 + 2) = v53;
      *&v11[8 * v51 + 32] = v10;
      *(a1 + 3) = v11;
      if (!__OFADD__(v10, 1))
      {
        *(a1 + 1) = v10 + 1;
LABEL_74:
        Color.ResolvedHDR.encode(to:)(a1);
        goto LABEL_82;
      }

      __break(1u);
LABEL_87:
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
LABEL_3:
      v12 = *(v11 + 2);
      v13 = *(v11 + 3);
      v14 = v12 + 1;
      if (v12 >= v13 >> 1)
      {
        v108 = v12 + 1;
        v96 = v11;
        v97 = *(v11 + 2);
        v98 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v12 + 1, 1, v96);
        v12 = v97;
        v14 = v108;
        v11 = v98;
      }

      *(v11 + 2) = v14;
      *&v11[8 * v12 + 32] = v10;
      *(a1 + 3) = v11;
      if (!__OFADD__(v10, 1))
      {
        *(a1 + 1) = v10 + 1;
        BlurStyle.encode(to:)(a1);
        goto LABEL_82;
      }

      __break(1u);
LABEL_89:
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
LABEL_70:
      v78 = *(v11 + 2);
      v79 = *(v11 + 3);
      v80 = v78 + 1;
      if (v78 >= v79 >> 1)
      {
        v109 = v78 + 1;
        v99 = v11;
        v100 = *(v11 + 2);
        v101 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v79 > 1), v78 + 1, 1, v99);
        v78 = v100;
        v80 = v109;
        v11 = v101;
      }

      *(v11 + 2) = v80;
      *&v11[8 * v78 + 32] = v10;
      *(a1 + 3) = v11;
      if (!__OFADD__(v10, 1))
      {
        *(a1 + 1) = v10 + 1;
        goto LABEL_74;
      }

      __break(1u);
LABEL_91:
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
LABEL_78:
      v82 = *(v11 + 2);
      v83 = *(v11 + 3);
      v84 = v82 + 1;
      if (v82 >= v83 >> 1)
      {
        v110 = v82 + 1;
        v102 = v11;
        v103 = *(v11 + 2);
        v104 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v83 > 1), v82 + 1, 1, v102);
        v82 = v103;
        v84 = v110;
        v11 = v104;
      }

      *(v11 + 2) = v84;
      *&v11[8 * v82 + 32] = v10;
      *(a1 + 3) = v11;
      v29 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
LABEL_93:
        __break(1u);
      }

      else
      {
LABEL_81:
        *(a1 + 1) = v29;
LABEL_82:
        ProtobufEncoder.endLengthDelimited()();
      }

      return;
    case 8u:
      v76 = _s7SwiftUI14GraphicsFilterOWOj6_(v143);
      v77 = *(v76 + 16);
      v122 = *v76;
      v123 = v77;
      ProtobufEncoder.encodeVarint(_:)(0xD2uLL);
      v10 = *(a1 + 1);
      v11 = *(a1 + 3);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_70;
      }

      goto LABEL_89;
    case 9u:
      goto LABEL_18;
    case 0xAu:
      v19 = *_s7SwiftUI14GraphicsFilterOWOj6_(v143);
      if (v19 == 0.0)
      {
        return;
      }

      ProtobufEncoder.encodeVarint(_:)(0x39uLL);
      v20 = *(a1 + 1);
      v21 = v20 + 8;
      if (!__OFADD__(v20, 8))
      {
        goto LABEL_67;
      }

      goto LABEL_93;
    case 0xBu:
      v19 = *_s7SwiftUI14GraphicsFilterOWOj6_(v143);
      if (v19 == 0.0)
      {
        return;
      }

      ProtobufEncoder.encodeVarint(_:)(0x41uLL);
      v20 = *(a1 + 1);
      v21 = v20 + 8;
      if (!__OFADD__(v20, 8))
      {
        goto LABEL_67;
      }

      __break(1u);
LABEL_13:
      v22 = _s7SwiftUI14GraphicsFilterOWOj6_(v143);
      v23 = *(v22 + 16);
      v115 = *v22;
      v116 = v23;
      v117[0] = *(v22 + 32);
      *(v117 + 13) = *(v22 + 45);
      specialized ProtobufEncoder.messageField<A>(_:_:)(2);
      return;
    case 0xCu:
      v19 = *_s7SwiftUI14GraphicsFilterOWOj6_(v143);
      if (v19 == 0.0)
      {
        return;
      }

      ProtobufEncoder.encodeVarint(_:)(0x49uLL);
      v20 = *(a1 + 1);
      v21 = v20 + 8;
      if (!__OFADD__(v20, 8))
      {
        goto LABEL_67;
      }

      __break(1u);
LABEL_18:
      v19 = *_s7SwiftUI14GraphicsFilterOWOj6_(v143);
      if (v19 == 0.0)
      {
        return;
      }

      ProtobufEncoder.encodeVarint(_:)(0x31uLL);
      v20 = *(a1 + 1);
      v21 = v20 + 8;
      if (!__OFADD__(v20, 8))
      {
LABEL_67:
        if (*(a1 + 2) < v21)
        {
          *ProtobufEncoder.growBufferSlow(to:)(v21) = v19;
        }

        else
        {
          *(a1 + 1) = v21;
          *(*a1 + v20) = v19;
        }

        return;
      }

      __break(1u);
LABEL_22:
      ProtobufEncoder.encodeVarint(_:)(0x5AuLL);
      v24 = *(a1 + 1);
      v25 = *(a1 + 3);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v25 + 2) + 1, 1, v25);
      }

      v26 = *(v25 + 2);
      v27 = *(v25 + 3);
      v28 = v26 + 1;
      if (v26 >= v27 >> 1)
      {
        v105 = v26 + 1;
        v87 = v25;
        v88 = *(v25 + 2);
        v89 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v26 + 1, 1, v87);
        v26 = v88;
        v28 = v105;
        v25 = v89;
      }

      *(v25 + 2) = v28;
      *&v25[8 * v26 + 32] = v24;
      *(a1 + 3) = v25;
      v29 = v24 + 1;
      if (!__OFADD__(v24, 1))
      {
        goto LABEL_81;
      }

      __break(1u);
LABEL_29:
      ProtobufEncoder.encodeVarint(_:)(0x52uLL);
      v30 = *(a1 + 1);
      v31 = *(a1 + 3);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v31 + 2) + 1, 1, v31);
      }

      v32 = *(v31 + 2);
      v33 = *(v31 + 3);
      v34 = v32 + 1;
      if (v32 >= v33 >> 1)
      {
        v106 = v32 + 1;
        v90 = v31;
        v91 = *(v31 + 2);
        v92 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v32 + 1, 1, v90);
        v32 = v91;
        v34 = v106;
        v31 = v92;
      }

      *(v31 + 2) = v34;
      *&v31[8 * v32 + 32] = v30;
      *(a1 + 3) = v31;
      v29 = v30 + 1;
      if (!__OFADD__(v30, 1))
      {
        goto LABEL_81;
      }

      __break(1u);
LABEL_36:
      v35 = _s7SwiftUI14GraphicsFilterOWOj6_(v143);
      v36 = *(v35 + 80);
      v111[4] = *(v35 + 64);
      v111[5] = v36;
      v111[6] = *(v35 + 96);
      v112 = *(v35 + 112);
      v37 = *(v35 + 16);
      v111[0] = *v35;
      v111[1] = v37;
      v38 = *(v35 + 48);
      v111[2] = *(v35 + 32);
      v111[3] = v38;
      v39 = v111;
      v40 = 22;
LABEL_42:
      specialized ProtobufEncoder.messageField<A>(_:_:)(v40, v39);
      return;
    case 0xDu:
      v19 = *_s7SwiftUI14GraphicsFilterOWOj6_(v143);
      if (v19 == 0.0)
      {
        return;
      }

      ProtobufEncoder.encodeVarint(_:)(0x61uLL);
      v20 = *(a1 + 1);
      v21 = v20 + 8;
      if (!__OFADD__(v20, 8))
      {
        goto LABEL_67;
      }

      __break(1u);
LABEL_61:
      v70 = _s7SwiftUI14GraphicsFilterOWOj6_(v143);
      v71 = *(v70 + 48);
      v120[2] = *(v70 + 32);
      v120[3] = v71;
      v120[4] = *(v70 + 64);
      v72 = *(v70 + 16);
      v120[0] = *v70;
      v120[1] = v72;
      v73 = *(v70 + 80);
      ProtobufEncoder.encodeVarint(_:)(0x22uLL);
      specialized ProtobufEncoder.encodeMessage<A>(_:)(v120);
      if (!v2)
      {
        if (v73)
        {
          ProtobufEncoder.encodeVarint(_:)(0x98uLL);
          ProtobufEncoder.encodeVarint(_:)(1uLL);
        }
      }

      return;
    case 0xEu:
      v17 = _s7SwiftUI14GraphicsFilterOWOj6_(v143);
      v18 = *(v17 + 24);
      v124 = *v17;
      v125 = *(v17 + 16);
      v126 = v18;
      specialized ProtobufEncoder.messageField<A>(_:_:)(13);
      return;
    case 0xFu:
      v41 = _s7SwiftUI14GraphicsFilterOWOj6_(v143);
      v42 = *(v41 + 48);
      v128[2] = *(v41 + 32);
      v128[3] = v42;
      v129[0] = *(v41 + 64);
      *(v129 + 13) = *(v41 + 77);
      v43 = *(v41 + 80) == INFINITY;
      v44 = *(v41 + 16);
      v128[0] = *v41;
      v128[1] = v44;
      if (v43 && !*(v41 + 84))
      {
        v85 = *(v41 + 48);
        v127[2] = *(v41 + 32);
        v127[3] = v85;
        v127[4] = *(v41 + 64);
        v86 = *(v41 + 16);
        v127[0] = *v41;
        v127[1] = v86;
        ProtobufEncoder.encodeVarint(_:)(0x72uLL);
        specialized ProtobufEncoder.encodeMessage<A>(_:)(v127);
      }

      else
      {
        specialized ProtobufEncoder.messageField<A>(_:_:)(27, v128);
      }

      return;
    case 0x10u:
      v15 = _s7SwiftUI14GraphicsFilterOWOj6_(v143);
      v16 = *(v15 + 16);
      v129[2] = *v15;
      v130 = v16;
      specialized ProtobufEncoder.messageField<A>(_:_:)(15);
      return;
    case 0x11u:
      v54 = _s7SwiftUI14GraphicsFilterOWOj6_(v143);
      v55 = v54[1];
      v131 = *v54;
      v132 = v55;
      v56 = v54[3];
      v133 = v54[2];
      v134 = v56;
      specialized ProtobufEncoder.messageField<A>(_:_:)(20);
      return;
    case 0x12u:
      v74 = _s7SwiftUI14GraphicsFilterOWOj6_(v143);
      v75 = *(v74 + 24);
      v135 = *v74;
      v136 = *(v74 + 8);
      v137 = v75;
      v138 = *(v74 + 32);
      specialized ProtobufEncoder.messageField<A>(_:_:)(17);
      return;
    case 0x13u:
      v81 = _s7SwiftUI14GraphicsFilterOWOj6_(v143);
      v139 = *v81;
      v140 = *(v81 + 16);
      ProtobufEncoder.encodeVarint(_:)(0xAAuLL);
      specialized ProtobufEncoder.encodeMessage<A>(_:)(&v139);
      return;
    case 0x14u:
      v57 = _s7SwiftUI14GraphicsFilterOWOj6_(v143);
      v58 = *v57;
      v59 = *(v57 + 4);
      v60 = *(v57 + 8);
      v61 = *(v57 + 9);
      ProtobufEncoder.encodeVarint(_:)(0xC2uLL);
      if (v61)
      {
        v62 = 256;
      }

      else
      {
        v62 = 0;
      }

      specialized ProtobufEncoder.encodeMessage<A>(_:)(v62 | v60, v58, v59);
      return;
    case 0x15u:
      v66 = _s7SwiftUI14GraphicsFilterOWOj6_(v143);
      v67 = *(v66 + 80);
      v141[4] = *(v66 + 64);
      v141[5] = v67;
      v141[6] = *(v66 + 96);
      v142 = *(v66 + 112);
      v68 = *(v66 + 16);
      v141[0] = *v66;
      v141[1] = v68;
      v69 = *(v66 + 48);
      v141[2] = *(v66 + 32);
      v141[3] = v69;
      specialized ProtobufEncoder.messageField<A>(_:_:)(25, v141);
      return;
    case 0x16u:
      _s7SwiftUI14GraphicsFilterOWOj6_(v143);
      return;
    case 0x17u:
      ProtobufEncoder.encodeVarint(_:)(0x82uLL);
      v10 = *(a1 + 1);
      v11 = *(a1 + 3);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_78;
      }

      goto LABEL_91;
    case 0x18u:
      goto LABEL_29;
    case 0x19u:
      goto LABEL_22;
    default:
      _s7SwiftUI14GraphicsFilterOWOj6_(v143);
      ProtobufEncoder.encodeVarint(_:)(0xAuLL);
      v10 = *(a1 + 1);
      v11 = *(a1 + 3);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_3;
      }

      goto LABEL_87;
  }
}

int64_t GraphicsFilter.ColorMonochrome.encode(to:)(float *a1)
{
  v4 = *(v1 + 20);
  v3 = *(v1 + 24);
  ProtobufEncoder.encodeVarint(_:)(0xAuLL);
  v5 = *(a1 + 1);
  v6 = *(a1 + 3);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 16) + 1, 1, v6);
    v6 = result;
  }

  v9 = *(v6 + 16);
  v8 = *(v6 + 24);
  if (v9 >= v8 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v6);
    v6 = result;
  }

  *(v6 + 16) = v9 + 1;
  *(v6 + 8 * v9 + 32) = v5;
  *(a1 + 3) = v6;
  if (__OFADD__(v5, 1))
  {
    __break(1u);
    goto LABEL_16;
  }

  *(a1 + 1) = v5 + 1;
  Color.ResolvedHDR.encode(to:)(a1);
  result = ProtobufEncoder.endLengthDelimited()();
  if (v4 == 1.0)
  {
    goto LABEL_10;
  }

  ProtobufEncoder.encodeVarint(_:)(0x15uLL);
  v10 = *(a1 + 1);
  result = v10 + 4;
  if (__OFADD__(v10, 4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (*(a1 + 2) < result)
  {
    goto LABEL_18;
  }

  *(a1 + 1) = result;
  *(*a1 + v10) = v4;
LABEL_10:
  if (v3 != 0.0)
  {
    while (1)
    {
      ProtobufEncoder.encodeVarint(_:)(0x1DuLL);
      v11 = *(a1 + 1);
      result = v11 + 4;
      if (!__OFADD__(v11, 4))
      {
        break;
      }

LABEL_17:
      __break(1u);
LABEL_18:
      result = ProtobufEncoder.growBufferSlow(to:)(result);
      *result = v4;
      if (v3 == 0.0)
      {
        return result;
      }
    }

    if (*(a1 + 2) < result)
    {
      result = ProtobufEncoder.growBufferSlow(to:)(result);
      *result = v3;
    }

    else
    {
      *(a1 + 1) = result;
      *(*a1 + v11) = v3;
    }
  }

  return result;
}

unint64_t GraphicsFilter.ColorMonochrome.init(from:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = result;
  v5 = *(result + 8);
  v6 = *(result + 16);
  v7 = 0uLL;
  if (v5 >= v6)
  {
LABEL_61:
    v28 = v7;
    v8 = 0;
    v9 = 1.0;
    v10 = 2143289344;
LABEL_62:
    v3[3] = 0;
    *a2 = v28;
    *(a2 + 16) = v10;
    *(a2 + 20) = v9;
    *(a2 + 24) = v8;
    return result;
  }

  v28 = 0uLL;
  v8 = 0;
  v9 = 1.0;
  v10 = 2143289344;
  while (1)
  {
    result = v3[3];
    if (result)
    {
      v11 = v3[4];
      if (v5 < v11)
      {
        goto LABEL_11;
      }

      if (v11 < v5)
      {
        goto LABEL_63;
      }

      v3[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()(result);
    if (v2)
    {
      return result;
    }

    if (result <= 7)
    {
LABEL_63:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      return swift_willThrow();
    }

LABEL_11:
    v12 = result >> 3;
    v13 = result & 7;
    if (result >> 3 == 3)
    {
      if (v13 == 2)
      {
        result = ProtobufDecoder.decodeVarint()(result);
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_69;
        }

        v23 = v3[1];
        if (v6 < v23 + result)
        {
          goto LABEL_63;
        }

        v3[3] = 29;
        v3[4] = v23 + result;
      }

      else
      {
        if (v13 != 5)
        {
          goto LABEL_63;
        }

        v23 = v3[1];
      }

      if (v6 < (v23 + 1))
      {
        goto LABEL_63;
      }

      v8 = *v23;
      v3[1] = v23 + 1;
      goto LABEL_4;
    }

    if (v12 == 2)
    {
      if (v13 == 2)
      {
        result = ProtobufDecoder.decodeVarint()(result);
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_68;
        }

        v22 = v3[1];
        if (v6 < v22 + result)
        {
          goto LABEL_63;
        }

        v3[3] = 21;
        v3[4] = v22 + result;
      }

      else
      {
        if (v13 != 5)
        {
          goto LABEL_63;
        }

        v22 = v3[1];
      }

      if (v6 < (v22 + 1))
      {
        goto LABEL_63;
      }

      v9 = *v22;
      v3[1] = v22 + 1;
      goto LABEL_4;
    }

    if (v12 != 1)
    {
      if ((result & 7) > 1)
      {
        if (v13 == 2)
        {
          result = ProtobufDecoder.decodeVarint()(result);
          if (v2)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_70;
          }

          v24 = v3[1] + result;
          if (v6 < v24)
          {
            goto LABEL_63;
          }
        }

        else
        {
          if (v13 != 5)
          {
            goto LABEL_63;
          }

          v24 = v3[1] + 4;
          if (v6 < v24)
          {
            goto LABEL_63;
          }
        }
      }

      else
      {
        if ((result & 7) == 0)
        {
          result = ProtobufDecoder.decodeVarint()(result);
          if (v2)
          {
            return result;
          }

          goto LABEL_4;
        }

        if (v13 != 1)
        {
          goto LABEL_63;
        }

        v24 = v3[1] + 8;
        if (v6 < v24)
        {
          goto LABEL_63;
        }
      }

      v3[1] = v24;
      goto LABEL_4;
    }

    if (v13 != 2)
    {
      goto LABEL_63;
    }

    v14 = v3[5];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 16) + 1, 1, v14);
      v14 = isUniquelyReferenced_nonNull_native;
    }

    v17 = *(v14 + 16);
    v16 = *(v14 + 24);
    if (v17 >= v16 >> 1)
    {
      isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v14);
      v14 = isUniquelyReferenced_nonNull_native;
    }

    *(v14 + 16) = v17 + 1;
    *(v14 + 8 * v17 + 32) = v6;
    v3[5] = v14;
    result = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
    if (v2)
    {
      return result;
    }

    if ((result & 0x8000000000000000) != 0)
    {
      break;
    }

    v18 = v3[1] + result;
    if (v6 < v18)
    {
      goto LABEL_63;
    }

    v3[2] = v18;
    specialized Color.ResolvedHDR.init(from:)(v3, &v29);
    v19 = v3[5];
    if (!*(v19 + 16))
    {
      goto LABEL_67;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v20 = *(v19 + 16);
      if (!v20)
      {
        goto LABEL_60;
      }
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v19);
      v19 = result;
      v20 = *(result + 16);
      if (!v20)
      {
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }
    }

    v21 = v20 - 1;
    v6 = *(v19 + 8 * v21 + 32);
    *(v19 + 16) = v21;
    v3[5] = v19;
    v3[2] = v6;
    v28 = v29;
    v10 = v30;
LABEL_4:
    v5 = v3[1];
    if (v5 >= v6)
    {
      goto LABEL_62;
    }
  }

  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
  __break(1u);
  result = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
  v27 = *(result + 16);
  if (v27)
  {
    v25 = v27 - 1;
    v26 = *(result + 8 * v25 + 32);
    *(result + 16) = v25;
    v3[5] = result;
    v3[2] = v26;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void GraphicsFilter.VibrantColorMatrix.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = *(v3 + 48);
  v11[2] = *(v3 + 32);
  v11[3] = v5;
  v11[4] = *(v3 + 64);
  v6 = *(v3 + 16);
  v11[0] = *v3;
  v11[1] = v6;
  v7 = *(v3 + 80);
  v8 = *(v3 + 84);
  ProtobufEncoder.encodeVarint(_:)(0xAuLL);
  specialized ProtobufEncoder.encodeMessage<A>(_:)(v11);
  if (!v2)
  {
    if (v8)
    {
      ProtobufEncoder.encodeVarint(_:)(0x10uLL);
      ProtobufEncoder.encodeVarint(_:)(v8);
    }

    if (v7 != INFINITY)
    {
      ProtobufEncoder.encodeVarint(_:)(0x1DuLL);
      v9 = a1[1];
      v10 = v9 + 4;
      if (__OFADD__(v9, 4))
      {
        __break(1u);
      }

      else if (a1[2] >= v10)
      {
        a1[1] = v10;
        *(*a1 + v9) = v7;
        return;
      }

      *ProtobufEncoder.growBufferSlow(to:)(v10) = v7;
    }
  }
}

unint64_t GraphicsFilter.VibrantColorMatrix.init(from:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = result;
  v5 = *(result + 8);
  v6 = *(result + 16);
  if (v5 >= v6)
  {
    v7 = 0;
    v17 = 0u;
    v18 = xmmword_18DDD8E20;
    v8 = 2139095040;
    v15 = xmmword_18DDC57D0;
    v16 = xmmword_18DDD8E20;
    v19 = xmmword_18DDC57D0;
LABEL_50:
    v3[3] = 0;
    *a2 = v18;
    *(a2 + 16) = v19;
    *(a2 + 32) = v17;
    *(a2 + 48) = v16;
    *(a2 + 64) = v15;
    *(a2 + 80) = v8;
    *(a2 + 84) = v7;
    return result;
  }

  v7 = 0;
  v8 = 2139095040;
  v17 = 0u;
  v18 = xmmword_18DDD8E20;
  v15 = xmmword_18DDC57D0;
  v16 = xmmword_18DDD8E20;
  v19 = xmmword_18DDC57D0;
  while (1)
  {
    result = v3[3];
    if (result)
    {
      v9 = v3[4];
      if (v5 < v9)
      {
        goto LABEL_11;
      }

      if (v9 < v5)
      {
        goto LABEL_48;
      }

      v3[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()(result);
    if (v2)
    {
      return result;
    }

    if (result <= 7)
    {
LABEL_48:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      return swift_willThrow();
    }

LABEL_11:
    v10 = result >> 3;
    if (result >> 3 == 3)
    {
      break;
    }

    if (v10 == 2)
    {
      if ((result & 7) != 0)
      {
        if ((result & 7) != 2)
        {
          goto LABEL_48;
        }

        result = ProtobufDecoder.decodeVarint()(result);
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_53;
        }

        v11 = v3[1] + result;
        if (v6 < v11)
        {
          goto LABEL_48;
        }

        v3[3] = 16;
        v3[4] = v11;
      }

      result = ProtobufDecoder.decodeVarint()(result);
      if (v2)
      {
        return result;
      }

      v7 = result;
    }

    else
    {
      if (v10 != 1)
      {
        v13 = result & 7;
        if (v13 > 1)
        {
          if (v13 == 2)
          {
            result = ProtobufDecoder.decodeVarint()(result);
            if (v2)
            {
              return result;
            }

            if ((result & 0x8000000000000000) != 0)
            {
              goto LABEL_54;
            }

            v14 = v3[1] + result;
            if (v6 < v14)
            {
              goto LABEL_48;
            }
          }

          else
          {
            if (v13 != 5)
            {
              goto LABEL_48;
            }

            v14 = v3[1] + 4;
            if (v6 < v14)
            {
              goto LABEL_48;
            }
          }
        }

        else
        {
          if ((result & 7) == 0)
          {
            result = ProtobufDecoder.decodeVarint()(result);
            if (v2)
            {
              return result;
            }

            goto LABEL_4;
          }

          if (v13 != 1)
          {
            goto LABEL_48;
          }

          v14 = v3[1] + 8;
          if (v6 < v14)
          {
            goto LABEL_48;
          }
        }

        v3[1] = v14;
        goto LABEL_4;
      }

      if ((result & 7) != 2)
      {
        goto LABEL_48;
      }

      result = specialized ProtobufDecoder.decodeMessage<A>()(v20);
      if (v2)
      {
        return result;
      }

      v18 = v20[0];
      v19 = v20[1];
      v16 = v20[3];
      v17 = v20[2];
      v15 = v20[4];
    }

LABEL_4:
    v5 = v3[1];
    v6 = v3[2];
    if (v5 >= v6)
    {
      goto LABEL_50;
    }
  }

  if ((result & 7) != 2)
  {
    if ((result & 7) != 5)
    {
      goto LABEL_48;
    }

    v12 = v3[1];
LABEL_41:
    if (v6 < (v12 + 1))
    {
      goto LABEL_48;
    }

    v8 = *v12;
    v3[1] = v12 + 1;
    goto LABEL_4;
  }

  result = ProtobufDecoder.decodeVarint()(result);
  if (v2)
  {
    return result;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v12 = v3[1];
    if (v6 < v12 + result)
    {
      goto LABEL_48;
    }

    v3[3] = 29;
    v3[4] = v12 + result;
    goto LABEL_41;
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
  return result;
}

void protocol witness for ProtobufEncodableMessage.encode(to:) in conformance GraphicsFilter.VibrantColorMatrix(void *a1)
{
  v3 = v1;
  v5 = *(v3 + 48);
  v12[2] = *(v3 + 32);
  v12[3] = v5;
  v12[4] = *(v3 + 64);
  v6 = *(v3 + 16);
  v12[0] = *v3;
  v12[1] = v6;
  v7 = *(v3 + 80);
  v8 = *(v3 + 84);
  ProtobufEncoder.encodeVarint(_:)(0xAuLL);
  specialized ProtobufEncoder.encodeMessage<A>(_:)(v12);
  if (!v2)
  {
    if (v8)
    {
      ProtobufEncoder.encodeVarint(_:)(0x10uLL);
      ProtobufEncoder.encodeVarint(_:)(v8);
    }

    if (v7 != INFINITY)
    {
      ProtobufEncoder.encodeVarint(_:)(0x1DuLL);
      v9 = a1[1];
      v10 = v9 + 4;
      if (__OFADD__(v9, 4))
      {
        __break(1u);
      }

      else if (a1[2] >= v10)
      {
        a1[1] = v10;
        v11 = (*a1 + v9);
LABEL_8:
        *v11 = v7;
        return;
      }

      v11 = ProtobufEncoder.growBufferSlow(to:)(v10);
      goto LABEL_8;
    }
  }
}

float *GraphicsFilter.LuminanceCurve.encode(to:)(void *a1)
{
  v2 = v1;
  v5 = *v2;
  v4 = *(v2 + 1);
  v7 = *(v2 + 2);
  v6 = *(v2 + 3);
  v8 = v2[4];
  ProtobufEncoder.encodeVarint(_:)(0xAuLL);
  v9 = a1[1];
  v10 = a1[3];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 16) + 1, 1, v10);
    v10 = isUniquelyReferenced_nonNull_native;
  }

  v13 = *(v10 + 16);
  v12 = *(v10 + 24);
  if (v13 >= v12 >> 1)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v10);
    v10 = isUniquelyReferenced_nonNull_native;
  }

  *(v10 + 16) = v13 + 1;
  *(v10 + 8 * v13 + 32) = v9;
  a1[3] = v10;
  v14 = v9 + 1;
  if (__OFADD__(v9, 1))
  {
    __break(1u);
    goto LABEL_24;
  }

  a1[1] = v14;
  isUniquelyReferenced_nonNull_native = v9 + 5;
  if (__OFADD__(v14, 4))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (a1[2] >= isUniquelyReferenced_nonNull_native)
  {
    a1[1] = isUniquelyReferenced_nonNull_native;
    v15 = (*a1 + v14);
    goto LABEL_9;
  }

LABEL_25:
  v15 = ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native);
LABEL_9:
  *v15 = v5;
  v16 = a1[1];
  v17 = v16 + 4;
  if (__OFADD__(v16, 4))
  {
    __break(1u);
  }

  else if (a1[2] >= v17)
  {
    a1[1] = v17;
    v18 = (*a1 + v16);
    goto LABEL_12;
  }

  v18 = ProtobufEncoder.growBufferSlow(to:)(v17);
LABEL_12:
  *v18 = v4;
  v19 = a1[1];
  v20 = v19 + 4;
  if (__OFADD__(v19, 4))
  {
    __break(1u);
  }

  else if (a1[2] >= v20)
  {
    a1[1] = v20;
    v21 = (*a1 + v19);
    goto LABEL_15;
  }

  v21 = ProtobufEncoder.growBufferSlow(to:)(v20);
LABEL_15:
  *v21 = v7;
  v22 = a1[1];
  v23 = v22 + 4;
  if (__OFADD__(v22, 4))
  {
    __break(1u);
  }

  else if (a1[2] >= v23)
  {
    a1[1] = v23;
    v24 = (*a1 + v22);
    goto LABEL_18;
  }

  v24 = ProtobufEncoder.growBufferSlow(to:)(v23);
LABEL_18:
  *v24 = v6;
  result = ProtobufEncoder.endLengthDelimited()();
  if (v8 == 0.0)
  {
    return result;
  }

  ProtobufEncoder.encodeVarint(_:)(0x15uLL);
  v26 = a1[1];
  result = (v26 + 4);
  if (__OFADD__(v26, 4))
  {
    __break(1u);
    goto LABEL_33;
  }

  if (a1[2] < result)
  {
LABEL_33:
    result = ProtobufEncoder.growBufferSlow(to:)(result);
    *result = v8;
    return result;
  }

  a1[1] = result;
  *(*a1 + v26) = v8;
  return result;
}

unint64_t GraphicsFilter.LuminanceCurve.init(from:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = result;
  v15 = 0uLL;
  v16 = 0;
  v5 = *(result + 8);
  v6 = *(result + 16);
  if (v5 >= v6)
  {
    v9 = 0uLL;
    v8 = 0;
LABEL_4:
    v3[3] = 0;
    *a2 = v9;
    *(a2 + 16) = v8;
    return result;
  }

  v7 = 0;
  v8 = 0;
  while (1)
  {
    result = v3[3];
    if (result)
    {
      v10 = v3[4];
      if (v5 < v10)
      {
        goto LABEL_15;
      }

      if (v10 < v5)
      {
        goto LABEL_48;
      }

      v3[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()(result);
    if (v2)
    {
      return result;
    }

    if (result <= 7)
    {
      goto LABEL_48;
    }

LABEL_15:
    v11 = result & 7;
    if (result >> 3 == 2)
    {
      if (v11 == 2)
      {
        result = ProtobufDecoder.decodeVarint()(result);
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_52;
        }

        v13 = v3[1];
        if (v6 < v13 + result)
        {
          goto LABEL_48;
        }

        v3[3] = 21;
        v3[4] = v13 + result;
      }

      else
      {
        if (v11 != 5)
        {
          goto LABEL_48;
        }

        v13 = v3[1];
      }

      v5 = (v13 + 1);
      if (v6 < (v13 + 1))
      {
        goto LABEL_48;
      }

      v8 = *v13;
      goto LABEL_7;
    }

    if (result >> 3 == 1)
    {
      break;
    }

    if ((result & 7) > 1)
    {
      if (v11 == 2)
      {
        result = ProtobufDecoder.decodeVarint()(result);
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_48:
          lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
          swift_allocError();
          return swift_willThrow();
        }

        v5 = v3[1] + result;
      }

      else
      {
        if (v11 != 5)
        {
          goto LABEL_48;
        }

        v5 = v3[1] + 4;
      }
    }

    else
    {
      if ((result & 7) == 0)
      {
        result = ProtobufDecoder.decodeVarint()(result);
        if (v2)
        {
          return result;
        }

        v5 = v3[1];
        goto LABEL_8;
      }

      if (v11 != 1)
      {
        goto LABEL_48;
      }

      v5 = v3[1] + 8;
    }

    if (v6 < v5)
    {
      goto LABEL_48;
    }

LABEL_7:
    v3[1] = v5;
LABEL_8:
    if (v5 >= v6)
    {
      v9 = v15;
      goto LABEL_4;
    }
  }

  if (v11 != 2)
  {
    if (v11 != 5)
    {
      goto LABEL_48;
    }

    v12 = v3[1];
LABEL_34:
    v5 = (v12 + 1);
    if (v6 < (v12 + 1))
    {
      goto LABEL_48;
    }

    v14 = *v12;
    v3[1] = v5;
    if (v7 < 4)
    {
      *(&v15 + v7++) = v14;
    }

    goto LABEL_8;
  }

  result = ProtobufDecoder.decodeVarint()(result);
  if (v2)
  {
    return result;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v12 = v3[1];
    if (v6 < v12 + result)
    {
      goto LABEL_48;
    }

    v3[3] = 13;
    v3[4] = v12 + result;
    goto LABEL_34;
  }

  __break(1u);
LABEL_52:
  __break(1u);
  return result;
}

uint64_t GraphicsFilter.ColorCurves.encode(to:)(void *a1)
{
  v2 = v1;
  v5 = *v2;
  v4 = v2[1];
  v7 = v2[2];
  v6 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v83 = v2[9];
  v84 = v2[8];
  v81 = v2[11];
  v82 = v2[10];
  v79 = v2[13];
  v80 = v2[12];
  v77 = v2[15];
  v78 = v2[14];
  ProtobufEncoder.encodeVarint(_:)(0xAuLL);
  v12 = a1[1];
  v13 = a1[3];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 16) + 1, 1, v13);
    v13 = isUniquelyReferenced_nonNull_native;
  }

  v16 = *(v13 + 16);
  v15 = *(v13 + 24);
  if (v16 >= v15 >> 1)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v13);
    v13 = isUniquelyReferenced_nonNull_native;
  }

  *(v13 + 16) = v16 + 1;
  *(v13 + 8 * v16 + 32) = v12;
  a1[3] = v13;
  v17 = v12 + 1;
  if (__OFADD__(v12, 1))
  {
    __break(1u);
    goto LABEL_71;
  }

  a1[1] = v17;
  isUniquelyReferenced_nonNull_native = v12 + 5;
  if (__OFADD__(v17, 4))
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  if (a1[2] >= isUniquelyReferenced_nonNull_native)
  {
    a1[1] = isUniquelyReferenced_nonNull_native;
    v18 = (*a1 + v17);
    goto LABEL_9;
  }

LABEL_72:
  v18 = ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native);
LABEL_9:
  *v18 = v5;
  v19 = a1[1];
  v20 = v19 + 4;
  if (__OFADD__(v19, 4))
  {
    __break(1u);
  }

  else if (a1[2] >= v20)
  {
    a1[1] = v20;
    v21 = (*a1 + v19);
    goto LABEL_12;
  }

  v21 = ProtobufEncoder.growBufferSlow(to:)(v20);
LABEL_12:
  *v21 = v4;
  v22 = a1[1];
  v23 = v22 + 4;
  if (__OFADD__(v22, 4))
  {
    __break(1u);
  }

  else if (a1[2] >= v23)
  {
    a1[1] = v23;
    v24 = (*a1 + v22);
    goto LABEL_15;
  }

  v24 = ProtobufEncoder.growBufferSlow(to:)(v23);
LABEL_15:
  *v24 = v7;
  v25 = a1[1];
  v26 = v25 + 4;
  if (__OFADD__(v25, 4))
  {
    __break(1u);
  }

  else if (a1[2] >= v26)
  {
    a1[1] = v26;
    v27 = (*a1 + v25);
    goto LABEL_18;
  }

  v27 = ProtobufEncoder.growBufferSlow(to:)(v26);
LABEL_18:
  *v27 = v6;
  ProtobufEncoder.endLengthDelimited()();
  ProtobufEncoder.encodeVarint(_:)(0x12uLL);
  v28 = a1[1];
  v29 = a1[3];
  v30 = swift_isUniquelyReferenced_nonNull_native();
  if ((v30 & 1) == 0)
  {
    v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 16) + 1, 1, v29);
    v29 = v30;
  }

  v32 = *(v29 + 16);
  v31 = *(v29 + 24);
  if (v32 >= v31 >> 1)
  {
    v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v29);
    v29 = v30;
  }

  *(v29 + 16) = v32 + 1;
  *(v29 + 8 * v32 + 32) = v28;
  a1[3] = v29;
  v33 = v28 + 1;
  if (__OFADD__(v28, 1))
  {
    __break(1u);
    goto LABEL_80;
  }

  a1[1] = v33;
  v30 = v28 + 5;
  if (__OFADD__(v33, 4))
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  if (a1[2] >= v30)
  {
    a1[1] = v30;
    v34 = (*a1 + v33);
    goto LABEL_26;
  }

LABEL_81:
  v34 = ProtobufEncoder.growBufferSlow(to:)(v30);
LABEL_26:
  *v34 = v9;
  v35 = a1[1];
  v36 = v35 + 4;
  if (__OFADD__(v35, 4))
  {
    __break(1u);
  }

  else if (a1[2] >= v36)
  {
    a1[1] = v36;
    v37 = (*a1 + v35);
    goto LABEL_29;
  }

  v37 = ProtobufEncoder.growBufferSlow(to:)(v36);
LABEL_29:
  *v37 = v8;
  v38 = a1[1];
  v39 = v38 + 4;
  if (__OFADD__(v38, 4))
  {
    __break(1u);
  }

  else if (a1[2] >= v39)
  {
    a1[1] = v39;
    v40 = (*a1 + v38);
    goto LABEL_32;
  }

  v40 = ProtobufEncoder.growBufferSlow(to:)(v39);
LABEL_32:
  *v40 = v11;
  v41 = a1[1];
  v42 = v41 + 4;
  if (__OFADD__(v41, 4))
  {
    __break(1u);
  }

  else if (a1[2] >= v42)
  {
    a1[1] = v42;
    v43 = (*a1 + v41);
    goto LABEL_35;
  }

  v43 = ProtobufEncoder.growBufferSlow(to:)(v42);
LABEL_35:
  *v43 = v10;
  ProtobufEncoder.endLengthDelimited()();
  ProtobufEncoder.encodeVarint(_:)(0x1AuLL);
  v44 = a1[1];
  v45 = a1[3];
  v46 = swift_isUniquelyReferenced_nonNull_native();
  if ((v46 & 1) == 0)
  {
    v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v45 + 16) + 1, 1, v45);
    v45 = v46;
  }

  v48 = *(v45 + 16);
  v47 = *(v45 + 24);
  if (v48 >= v47 >> 1)
  {
    v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1, v45);
    v45 = v46;
  }

  *(v45 + 16) = v48 + 1;
  *(v45 + 8 * v48 + 32) = v44;
  a1[3] = v45;
  v49 = v44 + 1;
  if (__OFADD__(v44, 1))
  {
    __break(1u);
    goto LABEL_89;
  }

  a1[1] = v49;
  v46 = v44 + 5;
  if (__OFADD__(v49, 4))
  {
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  if (a1[2] >= v46)
  {
    a1[1] = v46;
    v50 = (*a1 + v49);
    goto LABEL_43;
  }

LABEL_90:
  v50 = ProtobufEncoder.growBufferSlow(to:)(v46);
LABEL_43:
  *v50 = v84;
  v51 = a1[1];
  v52 = v51 + 4;
  if (__OFADD__(v51, 4))
  {
    __break(1u);
  }

  else if (a1[2] >= v52)
  {
    a1[1] = v52;
    v53 = (*a1 + v51);
    goto LABEL_46;
  }

  v53 = ProtobufEncoder.growBufferSlow(to:)(v52);
LABEL_46:
  *v53 = v83;
  v54 = a1[1];
  v55 = v54 + 4;
  if (__OFADD__(v54, 4))
  {
    __break(1u);
  }

  else if (a1[2] >= v55)
  {
    a1[1] = v55;
    v56 = (*a1 + v54);
    goto LABEL_49;
  }

  v56 = ProtobufEncoder.growBufferSlow(to:)(v55);
LABEL_49:
  *v56 = v82;
  v57 = a1[1];
  v58 = v57 + 4;
  if (__OFADD__(v57, 4))
  {
    __break(1u);
  }

  else if (a1[2] >= v58)
  {
    a1[1] = v58;
    v59 = (*a1 + v57);
    goto LABEL_52;
  }

  v59 = ProtobufEncoder.growBufferSlow(to:)(v58);
LABEL_52:
  *v59 = v81;
  ProtobufEncoder.endLengthDelimited()();
  ProtobufEncoder.encodeVarint(_:)(0x22uLL);
  v60 = a1[1];
  v61 = a1[3];
  v62 = swift_isUniquelyReferenced_nonNull_native();
  if ((v62 & 1) == 0)
  {
    v62 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v61 + 16) + 1, 1, v61);
    v61 = v62;
  }

  v64 = *(v61 + 16);
  v63 = *(v61 + 24);
  if (v64 >= v63 >> 1)
  {
    v62 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v63 > 1), v64 + 1, 1, v61);
    v61 = v62;
  }

  *(v61 + 16) = v64 + 1;
  *(v61 + 8 * v64 + 32) = v60;
  a1[3] = v61;
  v65 = v60 + 1;
  if (__OFADD__(v60, 1))
  {
    __break(1u);
    goto LABEL_98;
  }

  a1[1] = v65;
  v62 = v60 + 5;
  if (__OFADD__(v65, 4))
  {
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  if (a1[2] >= v62)
  {
    a1[1] = v62;
    v66 = (*a1 + v65);
    goto LABEL_60;
  }

LABEL_99:
  v66 = ProtobufEncoder.growBufferSlow(to:)(v62);
LABEL_60:
  *v66 = v80;
  v67 = a1[1];
  v68 = v67 + 4;
  if (__OFADD__(v67, 4))
  {
    __break(1u);
  }

  else if (a1[2] >= v68)
  {
    a1[1] = v68;
    v69 = (*a1 + v67);
    goto LABEL_63;
  }

  v69 = ProtobufEncoder.growBufferSlow(to:)(v68);
LABEL_63:
  *v69 = v79;
  v70 = a1[1];
  v71 = v70 + 4;
  if (__OFADD__(v70, 4))
  {
    __break(1u);
  }

  else if (a1[2] >= v71)
  {
    a1[1] = v71;
    v72 = (*a1 + v70);
    goto LABEL_66;
  }

  v72 = ProtobufEncoder.growBufferSlow(to:)(v71);
LABEL_66:
  *v72 = v78;
  v73 = a1[1];
  v74 = v73 + 4;
  if (__OFADD__(v73, 4))
  {
    __break(1u);
    goto LABEL_105;
  }

  if (a1[2] < v74)
  {
LABEL_105:
    v75 = ProtobufEncoder.growBufferSlow(to:)(v74);
    goto LABEL_69;
  }

  a1[1] = v74;
  v75 = (*a1 + v73);
LABEL_69:
  *v75 = v77;
  return ProtobufEncoder.endLengthDelimited()();
}

unint64_t GraphicsFilter.ColorCurves.init(from:)@<X0>(unint64_t result@<X0>, _OWORD *a2@<X8>)
{
  v3 = result;
  v32 = 0uLL;
  v33 = 0;
  v30 = 0uLL;
  v31 = 0;
  v28 = 0uLL;
  v29 = 0;
  v26 = 0uLL;
  v27 = 0;
  v5 = 0uLL;
  v6 = *(result + 8);
  v7 = *(result + 16);
  if (v6 >= v7)
  {
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
LABEL_4:
    v3[3] = 0;
    *a2 = v5;
    a2[1] = v12;
    a2[2] = v13;
    a2[3] = v14;
    return result;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  while (1)
  {
    result = v3[3];
    if (result)
    {
      v15 = v3[4];
      if (v6 < v15)
      {
        goto LABEL_13;
      }

      if (v15 < v6)
      {
        goto LABEL_72;
      }

      v3[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()(result);
    if (v2)
    {
      return result;
    }

    if (result <= 7)
    {
LABEL_72:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      return swift_willThrow();
    }

LABEL_13:
    v16 = result >> 3;
    v17 = result & 7;
    if (result >> 3 <= 2)
    {
      break;
    }

    if (v16 == 3)
    {
      if (v17 == 2)
      {
        result = ProtobufDecoder.decodeVarint()(result);
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_78;
        }

        v21 = v3[1];
        if (v7 < v21 + result)
        {
          goto LABEL_72;
        }

        v3[3] = 29;
        v3[4] = v21 + result;
      }

      else
      {
        if (v17 != 5)
        {
          goto LABEL_72;
        }

        v21 = v3[1];
      }

      v6 = (v21 + 1);
      if (v7 < (v21 + 1))
      {
        goto LABEL_72;
      }

      v25 = *v21;
      v3[1] = v6;
      if (v9 < 4)
      {
        *(&v28 + v9++) = v25;
        v29 = v9;
      }

      goto LABEL_6;
    }

    if (v16 == 4)
    {
      if (v17 == 2)
      {
        result = ProtobufDecoder.decodeVarint()(result);
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_76;
        }

        v19 = v3[1];
        if (v7 < v19 + result)
        {
          goto LABEL_72;
        }

        v3[3] = 37;
        v3[4] = v19 + result;
      }

      else
      {
        if (v17 != 5)
        {
          goto LABEL_72;
        }

        v19 = v3[1];
      }

      v6 = (v19 + 1);
      if (v7 < (v19 + 1))
      {
        goto LABEL_72;
      }

      v23 = *v19;
      v3[1] = v6;
      if (v8 < 4)
      {
        *(&v26 + v8++) = v23;
        v27 = v8;
      }

      goto LABEL_6;
    }

LABEL_24:
    if ((result & 7) > 1)
    {
      if (v17 == 2)
      {
        result = ProtobufDecoder.decodeVarint()(result);
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_79;
        }

        v6 = v3[1] + result;
        if (v7 < v6)
        {
          goto LABEL_72;
        }
      }

      else
      {
        if (v17 != 5)
        {
          goto LABEL_72;
        }

        v6 = v3[1] + 4;
        if (v7 < v6)
        {
          goto LABEL_72;
        }
      }
    }

    else
    {
      if ((result & 7) == 0)
      {
        result = ProtobufDecoder.decodeVarint()(result);
        if (v2)
        {
          return result;
        }

        v6 = v3[1];
        goto LABEL_6;
      }

      if (v17 != 1)
      {
        goto LABEL_72;
      }

      v6 = v3[1] + 8;
      if (v7 < v6)
      {
        goto LABEL_72;
      }
    }

    v3[1] = v6;
LABEL_6:
    if (v6 >= v7)
    {
      v5 = v32;
      v12 = v30;
      v13 = v28;
      v14 = v26;
      goto LABEL_4;
    }
  }

  if (v16 == 1)
  {
    if (v17 == 2)
    {
      result = ProtobufDecoder.decodeVarint()(result);
      if (v2)
      {
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        goto LABEL_77;
      }

      v20 = v3[1];
      if (v7 < v20 + result)
      {
        goto LABEL_72;
      }

      v3[3] = 13;
      v3[4] = v20 + result;
    }

    else
    {
      if (v17 != 5)
      {
        goto LABEL_72;
      }

      v20 = v3[1];
    }

    v6 = (v20 + 1);
    if (v7 < (v20 + 1))
    {
      goto LABEL_72;
    }

    v24 = *v20;
    v3[1] = v6;
    if (v11 < 4)
    {
      *(&v32 + v11++) = v24;
      v33 = v11;
    }

    goto LABEL_6;
  }

  if (v16 != 2)
  {
    goto LABEL_24;
  }

  if (v17 != 2)
  {
    if (v17 != 5)
    {
      goto LABEL_72;
    }

    v18 = v3[1];
LABEL_43:
    v6 = (v18 + 1);
    if (v7 < (v18 + 1))
    {
      goto LABEL_72;
    }

    v22 = *v18;
    v3[1] = v6;
    if (v10 < 4)
    {
      *(&v30 + v10++) = v22;
      v31 = v10;
    }

    goto LABEL_6;
  }

  result = ProtobufDecoder.decodeVarint()(result);
  if (v2)
  {
    return result;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v18 = v3[1];
    if (v7 < v18 + result)
    {
      goto LABEL_72;
    }

    v3[3] = 21;
    v3[4] = v18 + result;
    goto LABEL_43;
  }

  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
  return result;
}

void GraphicsFilter.ShaderFilter.encode(to:)(uint64_t a1)
{
  v3 = v1;
  v5 = *(v3 + 32);
  v6 = *(v3 + 40);
  specialized ProtobufEncoder.messageField<A>(_:_:)(1);
  if (!v2 && (v5 != 0.0 || v6 != 0.0))
  {
    ProtobufEncoder.encodeVarint(_:)(0x12uLL);
    v7 = *(a1 + 8);
    v8 = *(a1 + 24);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
    }

    v9 = *(v8 + 2);
    v10 = *(v8 + 3);
    v11 = v9 + 1;
    if (v9 >= v10 >> 1)
    {
      v15 = v9 + 1;
      v12 = v8;
      v13 = *(v8 + 2);
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v9 + 1, 1, v12);
      v9 = v13;
      v11 = v15;
      v8 = v14;
    }

    *(v8 + 2) = v11;
    *&v8[8 * v9 + 32] = v7;
    *(a1 + 24) = v8;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
    }

    else
    {
      *(a1 + 8) = v7 + 1;
      CGSize.encode(to:)(a1, v5, v6);
      ProtobufEncoder.endLengthDelimited()();
    }
  }
}

void GraphicsFilter.ShaderFilter.init(from:)(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 1);
  v6 = *(a1 + 2);
  if (v5 < v6)
  {
    v7 = 0;
    v8 = 0;
    v43 = 0;
    v9 = 0;
    v10 = 1;
    v11 = 0;
    while (1)
    {
      v12 = *(a1 + 3);
      if (v12)
      {
        v13 = *(a1 + 4);
        if (v5 < v13)
        {
          goto LABEL_11;
        }

        if (v13 < v5)
        {
          goto LABEL_58;
        }

        *(a1 + 3) = 0;
      }

      v12 = ProtobufDecoder.decodeVarint()(v12);
      if (v2)
      {
        goto LABEL_59;
      }

      if (v12 < 8)
      {
        goto LABEL_58;
      }

LABEL_11:
      if (v12 >> 3 == 2)
      {
        if ((v12 & 7) != 2)
        {
          goto LABEL_58;
        }

        v3 = v2;
        v23 = *(a1 + 5);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v23 + 16) + 1, 1, v23);
          v23 = isUniquelyReferenced_nonNull_native;
        }

        v26 = *(v23 + 16);
        v25 = *(v23 + 24);
        if (v26 >= v25 >> 1)
        {
          isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v23);
          v23 = isUniquelyReferenced_nonNull_native;
        }

        *(v23 + 16) = v26 + 1;
        *(v23 + 8 * v26 + 32) = v6;
        *(a1 + 5) = v23;
        v27 = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
        if (v2)
        {
LABEL_59:
          outlined consume of Shader.ResolvedShader?(v10);
          return;
        }

        if (v27 < 0)
        {
          goto LABEL_67;
        }

        v28 = *(a1 + 1) + v27;
        if (v6 < v28)
        {
LABEL_58:
          lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
          swift_allocError();
          swift_willThrow();
          outlined consume of Shader.ResolvedShader?(v10);
          return;
        }

        *(a1 + 2) = v28;
        specialized CGPoint.init(from:)(a1);
        v31 = *(a1 + 5);
        if (!*(v31 + 2))
        {
          goto LABEL_69;
        }

        v9 = v29;
        v11 = v30;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v32 = *(v31 + 2);
          if (!v32)
          {
            goto LABEL_55;
          }
        }

        else
        {
          v31 = specialized _ArrayBuffer._consumeAndCreateNew()(v31);
          v32 = *(v31 + 2);
          if (!v32)
          {
LABEL_55:
            __break(1u);
            break;
          }
        }

        v33 = v32 - 1;
        v6 = *&v31[8 * v33 + 32];
        *(v31 + 2) = v33;
        *(a1 + 5) = v31;
        *(a1 + 2) = v6;
        goto LABEL_4;
      }

      if (v12 >> 3 == 1)
      {
        if ((v12 & 7) != 2)
        {
          goto LABEL_58;
        }

        v3 = v2;
        v14 = *(a1 + 5);
        v15 = swift_isUniquelyReferenced_nonNull_native();
        if ((v15 & 1) == 0)
        {
          v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 16) + 1, 1, v14);
          v14 = v15;
        }

        v17 = *(v14 + 16);
        v16 = *(v14 + 24);
        if (v17 >= v16 >> 1)
        {
          v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v14);
          v14 = v15;
        }

        *(v14 + 16) = v17 + 1;
        *(v14 + 8 * v17 + 32) = v6;
        *(a1 + 5) = v14;
        v18 = ProtobufDecoder.decodeVarint()(v15);
        if (v2)
        {
          goto LABEL_59;
        }

        if (v18 < 0)
        {
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
          __break(1u);
          do
          {
            __break(1u);
            v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
            v37 = *(v3 + 2);
            if (v37)
            {
              goto LABEL_65;
            }

            __break(1u);
            v3 = *(a1 + 5);
          }

          while (!*(v3 + 2));
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v37 = *(v3 + 2);
            if (v37)
            {
LABEL_65:
              v38 = v37 - 1;
              v39 = *&v3[8 * v38 + 32];
              *(v3 + 2) = v38;
              outlined consume of Shader.ResolvedShader?(v10);
              *(a1 + 5) = v3;
              *(a1 + 2) = v39;
              return;
            }
          }

          else
          {
            v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
            v37 = *(v3 + 2);
            if (v37)
            {
              goto LABEL_65;
            }
          }

          __break(1u);
          return;
        }

        v19 = *(a1 + 1) + v18;
        if (v6 < v19)
        {
          goto LABEL_58;
        }

        *(a1 + 2) = v19;
        Shader.ResolvedShader.init(from:)(a1, v41);
        v20 = *(a1 + 5);
        if (!*(v20 + 2))
        {
          goto LABEL_68;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v21 = *(v20 + 2);
          if (!v21)
          {
            goto LABEL_70;
          }
        }

        else
        {
          v20 = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
          v21 = *(v20 + 2);
          if (!v21)
          {
            goto LABEL_70;
          }
        }

        v22 = v21 - 1;
        v6 = *&v20[8 * v22 + 32];
        *(v20 + 2) = v22;
        outlined consume of Shader.ResolvedShader?(v10);
        *(a1 + 5) = v20;
        *(a1 + 2) = v6;
        v10 = v41[0];
        v7 = v41[1];
        v8 = v41[2];
        v43 = v42;
        goto LABEL_4;
      }

      v34 = v12 & 7;
      if (v34 > 1)
      {
        if (v34 == 2)
        {
          v36 = ProtobufDecoder.decodeVarint()(v12);
          if (v2)
          {
            goto LABEL_59;
          }

          if (v36 < 0)
          {
            goto LABEL_71;
          }

          v35 = *(a1 + 1) + v36;
          if (v6 < v35)
          {
            goto LABEL_58;
          }
        }

        else
        {
          if (v34 != 5)
          {
            goto LABEL_58;
          }

          v35 = *(a1 + 1) + 4;
          if (v6 < v35)
          {
            goto LABEL_58;
          }
        }
      }

      else
      {
        if ((v12 & 7) == 0)
        {
          ProtobufDecoder.decodeVarint()(v12);
          if (v2)
          {
            goto LABEL_59;
          }

          goto LABEL_4;
        }

        if (v34 != 1)
        {
          goto LABEL_58;
        }

        v35 = *(a1 + 1) + 8;
        if (v6 < v35)
        {
          goto LABEL_58;
        }
      }

      *(a1 + 1) = v35;
LABEL_4:
      v5 = *(a1 + 1);
      if (v5 >= v6)
      {
        *(a1 + 3) = 0;
        if (v10 == 1)
        {
          goto LABEL_57;
        }

        *a2 = v10;
        *(a2 + 8) = v7;
        *(a2 + 16) = v8;
        *(a2 + 24) = v43;
        *(a2 + 32) = v9;
        *(a2 + 40) = v11;
        return;
      }
    }
  }

  *(a1 + 3) = 0;
LABEL_57:
  lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
  swift_allocError();
  swift_willThrow();
}

int64_t GraphicsFilter.AlphaThreshold.encode(to:)(float *a1)
{
  v3 = *(v1 + 20);
  ProtobufEncoder.encodeVarint(_:)(0xAuLL);
  v4 = *(a1 + 1);
  v5 = *(a1 + 3);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 16) + 1, 1, v5);
    v5 = result;
  }

  v8 = *(v5 + 16);
  v7 = *(v5 + 24);
  if (v8 >= v7 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1, v5);
    v5 = result;
  }

  *(v5 + 16) = v8 + 1;
  *(v5 + 8 * v8 + 32) = v4;
  *(a1 + 3) = v5;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  *(a1 + 1) = v4 + 1;
  Color.ResolvedHDR.encode(to:)(a1);
  result = ProtobufEncoder.endLengthDelimited()();
  if (v3 == 0.5)
  {
    return result;
  }

  ProtobufEncoder.encodeVarint(_:)(0x15uLL);
  v9 = *(a1 + 1);
  result = v9 + 4;
  if (__OFADD__(v9, 4))
  {
    goto LABEL_12;
  }

  if (*(a1 + 2) < result)
  {
LABEL_13:
    result = ProtobufEncoder.growBufferSlow(to:)(result);
    *result = v3;
    return result;
  }

  *(a1 + 1) = result;
  *(*a1 + v9) = v3;
  return result;
}

unint64_t GraphicsFilter.AlphaThreshold.init(from:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = result;
  v5 = *(result + 8);
  v6 = *(result + 16);
  v7 = xmmword_18DD85540;
  if (v5 >= v6)
  {
LABEL_51:
    v25 = v7;
    v8 = 0.5;
    v9 = 2143289344;
LABEL_52:
    v3[3] = 0;
    *a2 = v25;
    *(a2 + 16) = v9;
    *(a2 + 20) = v8;
    return result;
  }

  v25 = xmmword_18DD85540;
  v8 = 0.5;
  v9 = 2143289344;
  while (1)
  {
    result = v3[3];
    if (result)
    {
      v10 = v3[4];
      if (v5 < v10)
      {
        goto LABEL_11;
      }

      if (v10 < v5)
      {
        goto LABEL_53;
      }

      v3[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()(result);
    if (v2)
    {
      return result;
    }

    if (result <= 7)
    {
LABEL_53:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      return swift_willThrow();
    }

LABEL_11:
    v11 = result & 7;
    if (result >> 3 == 2)
    {
      if (v11 == 2)
      {
        result = ProtobufDecoder.decodeVarint()(result);
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_58;
        }

        v20 = v3[1];
        if (v6 < v20 + result)
        {
          goto LABEL_53;
        }

        v3[3] = 21;
        v3[4] = v20 + result;
      }

      else
      {
        if (v11 != 5)
        {
          goto LABEL_53;
        }

        v20 = v3[1];
      }

      if (v6 < (v20 + 1))
      {
        goto LABEL_53;
      }

      v8 = *v20;
      v3[1] = v20 + 1;
      goto LABEL_4;
    }

    if (result >> 3 != 1)
    {
      if ((result & 7) > 1)
      {
        if (v11 == 2)
        {
          result = ProtobufDecoder.decodeVarint()(result);
          if (v2)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_59;
          }

          v21 = v3[1] + result;
          if (v6 < v21)
          {
            goto LABEL_53;
          }
        }

        else
        {
          if (v11 != 5)
          {
            goto LABEL_53;
          }

          v21 = v3[1] + 4;
          if (v6 < v21)
          {
            goto LABEL_53;
          }
        }
      }

      else
      {
        if ((result & 7) == 0)
        {
          result = ProtobufDecoder.decodeVarint()(result);
          if (v2)
          {
            return result;
          }

          goto LABEL_4;
        }

        if (v11 != 1)
        {
          goto LABEL_53;
        }

        v21 = v3[1] + 8;
        if (v6 < v21)
        {
          goto LABEL_53;
        }
      }

      v3[1] = v21;
      goto LABEL_4;
    }

    if (v11 != 2)
    {
      goto LABEL_53;
    }

    v12 = v3[5];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 16) + 1, 1, v12);
      v12 = isUniquelyReferenced_nonNull_native;
    }

    v15 = *(v12 + 16);
    v14 = *(v12 + 24);
    if (v15 >= v14 >> 1)
    {
      isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v12);
      v12 = isUniquelyReferenced_nonNull_native;
    }

    *(v12 + 16) = v15 + 1;
    *(v12 + 8 * v15 + 32) = v6;
    v3[5] = v12;
    result = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
    if (v2)
    {
      return result;
    }

    if ((result & 0x8000000000000000) != 0)
    {
      break;
    }

    v16 = v3[1] + result;
    if (v6 < v16)
    {
      goto LABEL_53;
    }

    v3[2] = v16;
    specialized Color.ResolvedHDR.init(from:)(v3, &v26);
    v17 = v3[5];
    if (!*(v17 + 16))
    {
      goto LABEL_57;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v18 = *(v17 + 16);
      if (!v18)
      {
        goto LABEL_50;
      }
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v17);
      v17 = result;
      v18 = *(result + 16);
      if (!v18)
      {
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }
    }

    v19 = v18 - 1;
    v6 = *(v17 + 8 * v19 + 32);
    *(v17 + 16) = v19;
    v3[5] = v17;
    v3[2] = v6;
    v25 = v26;
    v9 = v27;
LABEL_4:
    v5 = v3[1];
    if (v5 >= v6)
    {
      goto LABEL_52;
    }
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
  __break(1u);
  result = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
  v24 = *(result + 16);
  if (v24)
  {
    v22 = v24 - 1;
    v23 = *(result + 8 * v22 + 32);
    *(result + 16) = v22;
    v3[5] = result;
    v3[2] = v23;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void GraphicsFilter.DisplacementMap.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(v2 + 56);
  v6 = *(v2 + 88);
  v13[4] = *(v2 + 72);
  v14[0] = v6;
  *(v14 + 12) = *(v2 + 100);
  v7 = *(v2 + 24);
  v13[0] = *(v2 + 8);
  v13[1] = v7;
  v13[2] = *(v2 + 40);
  v13[3] = v5;
  if (v4 != 0.0)
  {
    v8 = fabs(v4);
    if (v8 >= 65536.0)
    {
      v9 = 17;
    }

    else
    {
      v9 = 21;
    }

    ProtobufEncoder.encodeVarint(_:)(v9);
    if (v8 < 65536.0)
    {
      v10 = a1[1];
      v11 = v10 + 4;
      if (!__OFADD__(v10, 4))
      {
        *&v4 = v4;
        if (a1[2] >= v11)
        {
          a1[1] = v11;
          *(*a1 + v10) = LODWORD(v4);
          goto LABEL_12;
        }

LABEL_15:
        *ProtobufEncoder.growBufferSlow(to:)(v11) = LODWORD(v4);
        goto LABEL_12;
      }

      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v12 = a1[1];
    v11 = v12 + 8;
    if (__OFADD__(v12, 8))
    {
      goto LABEL_14;
    }

    if (a1[2] < v11)
    {
      *ProtobufEncoder.growBufferSlow(to:)(v11) = v4;
    }

    else
    {
      a1[1] = v11;
      *(*a1 + v12) = v4;
    }
  }

LABEL_12:
  specialized ProtobufEncoder.messageField<A>(_:_:)(1, v13);
}

unint64_t GraphicsFilter.DisplacementMap.init(from:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 < v5)
  {
    v49 = 0;
    v50 = 0.0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v57 = 0;
    v58 = 0;
    v55 = 0;
    v56 = 0;
    v9 = 0;
    v53 = 0;
    v54 = 0;
    v52 = 0;
    v51 = 0x80000000;
    v10 = 0.0;
    while (1)
    {
      result = v3[3];
      if (result)
      {
        v11 = v3[4];
        if (v4 < v11)
        {
          goto LABEL_11;
        }

        if (v11 < v4)
        {
          goto LABEL_56;
        }

        v3[3] = 0;
      }

      result = ProtobufDecoder.decodeVarint()(result);
      if (v2)
      {
        goto LABEL_58;
      }

      if (result <= 7)
      {
        goto LABEL_56;
      }

LABEL_11:
      if (result >> 3 == 2)
      {
        v31 = result & 7;
        if (v31 == 5)
        {
          v35 = v3[1];
          if (v5 < (v35 + 1))
          {
            goto LABEL_56;
          }

          v36 = *v35;
          v3[1] = v35 + 1;
          v10 = v36;
        }

        else
        {
          if (v31 == 2)
          {
            result = ProtobufDecoder.decodeVarint()(result);
            if (v2)
            {
              goto LABEL_58;
            }

            if ((result & 0x8000000000000000) != 0)
            {
              goto LABEL_63;
            }

            v32 = v3[1];
            if (v5 < v32 + result)
            {
              goto LABEL_56;
            }

            v3[3] = 17;
            v3[4] = v32 + result;
          }

          else
          {
            if (v31 != 1)
            {
              goto LABEL_56;
            }

            v32 = v3[1];
          }

          if (v5 < (v32 + 1))
          {
            goto LABEL_56;
          }

          v10 = *v32;
          v3[1] = v32 + 1;
        }
      }

      else if (result >> 3 == 1)
      {
        v48 = v9;
        if ((result & 7) != 2)
        {
          goto LABEL_57;
        }

        v12 = v3[5];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v14 = v5;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 16) + 1, 1, v12);
          v12 = isUniquelyReferenced_nonNull_native;
        }

        v16 = *(v12 + 16);
        v15 = *(v12 + 24);
        v5 = v16 + 1;
        if (v16 >= v15 >> 1)
        {
          isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v12);
          v12 = isUniquelyReferenced_nonNull_native;
        }

        *(v12 + 16) = v5;
        *(v12 + 8 * v16 + 32) = v14;
        v3[5] = v12;
        v17 = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
        if (v2)
        {
          goto LABEL_59;
        }

        if (v17 < 0)
        {
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
          __break(1u);
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
          v39 = *(result + 16);
          if (!v39)
          {
            __break(1u);
            return result;
          }

          v37 = v39 - 1;
          v38 = *(result + 8 * v37 + 32);
          *(result + 16) = v37;
          v3[5] = result;
          v3[2] = v38;
          v8 = v5;
LABEL_59:
          v61 = v10;
          v62 = v50;
          v63 = v6;
          v64 = v7;
          v65 = v8;
          v66 = v49;
          v67 = v58;
          v68 = v57;
          v69 = v56;
          v70 = v48;
          v71 = v55;
          v72 = v54;
          v73 = v53;
          v74 = v52;
          v75 = v51;
          return outlined destroy of GraphicsFilter.DisplacementMap(&v61);
        }

        v18 = v3[1] + v17;
        if (v14 < v18)
        {
          goto LABEL_57;
        }

        v3[2] = v18;
        VariableBlurStyle.Mask.init(from:)(v3, &v61);
        v19 = v3[5];
        if (!*(v19 + 16))
        {
          goto LABEL_62;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          v20 = *(v19 + 16);
          if (!v20)
          {
            goto LABEL_53;
          }
        }

        else
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v19);
          v19 = result;
          v20 = *(result + 16);
          if (!v20)
          {
LABEL_53:
            __break(1u);
            break;
          }
        }

        v21 = v20 - 1;
        v5 = *(v19 + 8 * v21 + 32);
        *(v19 + 16) = v21;
        v3[5] = v19;
        v3[2] = v5;
        v46 = v62;
        v47 = v61;
        v44 = v64;
        v45 = v63;
        v42 = v66;
        v43 = v65;
        v41 = v67;
        v22 = v6;
        v23 = v68;
        v9 = v69;
        v24 = v70;
        v25 = v71;
        v26 = v7;
        v28 = v72;
        v27 = v73;
        v29 = v8;
        v30 = v74;
        *v59 = v50;
        v59[1] = v22;
        v59[2] = v26;
        v59[3] = v29;
        v59[4] = v49;
        v59[5] = v58;
        v59[6] = v57;
        v59[7] = v56;
        v59[8] = v48;
        v59[9] = v55;
        v59[10] = v54;
        v59[11] = v53;
        v59[12] = v52;
        v60 = v51;
        result = outlined destroy of VariableBlurStyle.Mask(v59);
        v50 = v47;
        v49 = v43;
        v58 = v42;
        v56 = v23;
        v57 = v41;
        v6 = *&v46;
        v54 = v25;
        v55 = v24;
        v52 = v27;
        v53 = v28;
        v7 = v45;
        v51 = v30;
        v8 = v44;
      }

      else
      {
        v33 = result & 7;
        if (v33 > 1)
        {
          if (v33 == 2)
          {
            result = ProtobufDecoder.decodeVarint()(result);
            if (v2)
            {
LABEL_58:
              v48 = v9;
              goto LABEL_59;
            }

            if ((result & 0x8000000000000000) != 0)
            {
              goto LABEL_64;
            }

            v34 = v3[1] + result;
            if (v5 < v34)
            {
LABEL_56:
              v48 = v9;
LABEL_57:
              lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
              swift_allocError();
              swift_willThrow();
              goto LABEL_59;
            }
          }

          else
          {
            if (v33 != 5)
            {
              goto LABEL_56;
            }

            v34 = v3[1] + 4;
            if (v5 < v34)
            {
              goto LABEL_56;
            }
          }

          goto LABEL_3;
        }

        if ((result & 7) != 0)
        {
          if (v33 != 1)
          {
            goto LABEL_56;
          }

          v34 = v3[1] + 8;
          if (v5 < v34)
          {
            goto LABEL_56;
          }

LABEL_3:
          v3[1] = v34;
          goto LABEL_4;
        }

        result = ProtobufDecoder.decodeVarint()(result);
        if (v2)
        {
          goto LABEL_58;
        }
      }

LABEL_4:
      v4 = v3[1];
      if (v4 >= v5)
      {
        goto LABEL_55;
      }
    }
  }

  v49 = 0;
  v50 = 0.0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v57 = 0;
  v58 = 0;
  v55 = 0;
  v56 = 0;
  v9 = 0;
  v53 = 0;
  v54 = 0;
  v52 = 0;
  v10 = 0.0;
  v51 = 0x80000000;
LABEL_55:
  v3[3] = 0;
  *a2 = v10;
  *(a2 + 8) = v50;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  *(a2 + 40) = v49;
  *(a2 + 48) = v58;
  *(a2 + 56) = v57;
  *(a2 + 64) = v56;
  *(a2 + 72) = v9;
  *(a2 + 80) = v55;
  *(a2 + 88) = v54;
  *(a2 + 96) = v53;
  *(a2 + 104) = v52;
  *(a2 + 112) = v51;
  return result;
}

void protocol witness for ProtobufEncodableMessage.encode(to:) in conformance GraphicsFilter.DisplacementMap(void *a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(v2 + 56);
  v6 = *(v2 + 88);
  v13[4] = *(v2 + 72);
  v14[0] = v6;
  *(v14 + 12) = *(v2 + 100);
  v7 = *(v2 + 24);
  v13[0] = *(v2 + 8);
  v13[1] = v7;
  v13[2] = *(v2 + 40);
  v13[3] = v5;
  if (v4 != 0.0)
  {
    v8 = fabs(v4);
    if (v8 >= 65536.0)
    {
      v9 = 17;
    }

    else
    {
      v9 = 21;
    }

    ProtobufEncoder.encodeVarint(_:)(v9);
    if (v8 < 65536.0)
    {
      v10 = a1[1];
      v11 = v10 + 4;
      if (!__OFADD__(v10, 4))
      {
        *&v4 = v4;
        if (a1[2] >= v11)
        {
          a1[1] = v11;
          *(*a1 + v10) = LODWORD(v4);
          goto LABEL_12;
        }

LABEL_15:
        *ProtobufEncoder.growBufferSlow(to:)(v11) = LODWORD(v4);
        goto LABEL_12;
      }

      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v12 = a1[1];
    v11 = v12 + 8;
    if (__OFADD__(v12, 8))
    {
      goto LABEL_14;
    }

    if (a1[2] < v11)
    {
      *ProtobufEncoder.growBufferSlow(to:)(v11) = v4;
    }

    else
    {
      a1[1] = v11;
      *(*a1 + v12) = v4;
    }
  }

LABEL_12:
  specialized ProtobufEncoder.messageField<A>(_:_:)(1, v13);
}

void GraphicsFilter.EDRGainMultiply.encode(to:)(void *a1)
{
  v2 = v1;
  v5 = *v2;
  v4 = *(v2 + 4);
  v6 = *(v2 + 8);
  v7 = *(v2 + 9);
  if (*v2 != 0.0)
  {
    ProtobufEncoder.encodeVarint(_:)(0xDuLL);
    v8 = a1[1];
    v9 = v8 + 4;
    if (__OFADD__(v8, 4))
    {
      __break(1u);
      goto LABEL_15;
    }

    if (a1[2] < v9)
    {
      goto LABEL_16;
    }

    a1[1] = v9;
    *(*a1 + v8) = v5;
  }

  while (1)
  {
    if (v4 == 1.0)
    {
      goto LABEL_9;
    }

    ProtobufEncoder.encodeVarint(_:)(0x15uLL);
    v10 = a1[1];
    v9 = v10 + 4;
    if (!__OFADD__(v10, 4))
    {
      break;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    *ProtobufEncoder.growBufferSlow(to:)(v9) = v5;
  }

  if (a1[2] >= v9)
  {
    a1[1] = v9;
    *(*a1 + v10) = v4;
LABEL_9:
    if ((v6 & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_10:
    ProtobufEncoder.encodeVarint(_:)(0x18uLL);
    ProtobufEncoder.encodeVarint(_:)(1uLL);
    goto LABEL_11;
  }

  *ProtobufEncoder.growBufferSlow(to:)(v9) = v4;
  if (v6)
  {
    goto LABEL_10;
  }

LABEL_11:
  if ((v7 & 1) == 0)
  {
    ProtobufEncoder.encodeVarint(_:)(0x20uLL);
    ProtobufEncoder.encodeVarint(_:)(0);
  }
}

unint64_t GraphicsFilter.EDRGainMultiply.init(from:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = result;
  v5 = *(result + 8);
  v6 = *(result + 16);
  if (v5 >= v6)
  {
    v7 = 0;
    v8 = 1.0;
    v10 = 0;
    v9 = 1;
LABEL_4:
    v3[3] = 0;
    *a2 = v10;
    *(a2 + 4) = v8;
    *(a2 + 8) = v7;
    *(a2 + 9) = v9;
    return result;
  }

  v7 = 0;
  v8 = 1.0;
  v9 = 1;
  v10 = 0;
  while (1)
  {
    result = v3[3];
    if (result)
    {
      v11 = v3[4];
      if (v5 < v11)
      {
        goto LABEL_13;
      }

      if (v11 < v5)
      {
        goto LABEL_66;
      }

      v3[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()(result);
    if (v2)
    {
      return result;
    }

    if (result <= 7)
    {
LABEL_66:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      return swift_willThrow();
    }

LABEL_13:
    v12 = result >> 3;
    v13 = result & 7;
    if (result >> 3 <= 2)
    {
      break;
    }

    if (v12 == 3)
    {
      if ((result & 7) != 0)
      {
        if (v13 != 2)
        {
          goto LABEL_66;
        }

        result = ProtobufDecoder.decodeVarint()(result);
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_71;
        }

        v18 = v3[1] + result;
        if (v6 < v18)
        {
          goto LABEL_66;
        }

        v3[3] = 24;
        v3[4] = v18;
      }

      result = ProtobufDecoder.decodeVarint()(result);
      if (v2)
      {
        return result;
      }

      v7 = result != 0;
    }

    else
    {
      if (v12 != 4)
      {
LABEL_29:
        if ((result & 7) > 1)
        {
          if (v13 == 2)
          {
            result = ProtobufDecoder.decodeVarint()(result);
            if (v2)
            {
              return result;
            }

            if ((result & 0x8000000000000000) != 0)
            {
              goto LABEL_72;
            }

            v16 = v3[1] + result;
            if (v6 < v16)
            {
              goto LABEL_66;
            }
          }

          else
          {
            if (v13 != 5)
            {
              goto LABEL_66;
            }

            v16 = v3[1] + 4;
            if (v6 < v16)
            {
              goto LABEL_66;
            }
          }
        }

        else
        {
          if ((result & 7) == 0)
          {
            result = ProtobufDecoder.decodeVarint()(result);
            if (v2)
            {
              return result;
            }

            goto LABEL_6;
          }

          if (v13 != 1)
          {
            goto LABEL_66;
          }

          v16 = v3[1] + 8;
          if (v6 < v16)
          {
            goto LABEL_66;
          }
        }

        v3[1] = v16;
        goto LABEL_6;
      }

      if ((result & 7) != 0)
      {
        if (v13 != 2)
        {
          goto LABEL_66;
        }

        result = ProtobufDecoder.decodeVarint()(result);
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_69;
        }

        v15 = v3[1] + result;
        if (v6 < v15)
        {
          goto LABEL_66;
        }

        v3[3] = 32;
        v3[4] = v15;
      }

      result = ProtobufDecoder.decodeVarint()(result);
      if (v2)
      {
        return result;
      }

      v9 = result != 0;
    }

LABEL_6:
    v5 = v3[1];
    if (v5 >= v6)
    {
      goto LABEL_4;
    }
  }

  if (v12 == 1)
  {
    if (v13 == 2)
    {
      result = ProtobufDecoder.decodeVarint()(result);
      if (v2)
      {
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        goto LABEL_70;
      }

      v17 = v3[1];
      if (v6 < v17 + result)
      {
        goto LABEL_66;
      }

      v3[3] = 13;
      v3[4] = v17 + result;
    }

    else
    {
      if (v13 != 5)
      {
        goto LABEL_66;
      }

      v17 = v3[1];
    }

    if (v6 < (v17 + 1))
    {
      goto LABEL_66;
    }

    v10 = *v17;
    v3[1] = v17 + 1;
    goto LABEL_6;
  }

  if (v12 != 2)
  {
    goto LABEL_29;
  }

  if (v13 != 2)
  {
    if (v13 != 5)
    {
      goto LABEL_66;
    }

    v14 = v3[1];
LABEL_53:
    if (v6 < (v14 + 1))
    {
      goto LABEL_66;
    }

    v8 = *v14;
    v3[1] = v14 + 1;
    goto LABEL_6;
  }

  result = ProtobufDecoder.decodeVarint()(result);
  if (v2)
  {
    return result;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v14 = v3[1];
    if (v6 < v14 + result)
    {
      goto LABEL_66;
    }

    v3[3] = 21;
    v3[4] = v14 + result;
    goto LABEL_53;
  }

  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
  return result;
}

void GraphicsFilter.GlassBackgroundStyle.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(v2 + 56);
  v6 = *(v2 + 88);
  v13[4] = *(v2 + 72);
  v14[0] = v6;
  *(v14 + 12) = *(v2 + 100);
  v7 = *(v2 + 24);
  v13[0] = *(v2 + 8);
  v13[1] = v7;
  v13[2] = *(v2 + 40);
  v13[3] = v5;
  if (v4 != 0.0)
  {
    v8 = fabs(v4);
    if (v8 >= 65536.0)
    {
      v9 = 9;
    }

    else
    {
      v9 = 13;
    }

    ProtobufEncoder.encodeVarint(_:)(v9);
    if (v8 < 65536.0)
    {
      v10 = a1[1];
      v11 = v10 + 4;
      if (!__OFADD__(v10, 4))
      {
        *&v4 = v4;
        if (a1[2] >= v11)
        {
          a1[1] = v11;
          *(*a1 + v10) = LODWORD(v4);
          goto LABEL_12;
        }

LABEL_15:
        *ProtobufEncoder.growBufferSlow(to:)(v11) = LODWORD(v4);
        goto LABEL_12;
      }

      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v12 = a1[1];
    v11 = v12 + 8;
    if (__OFADD__(v12, 8))
    {
      goto LABEL_14;
    }

    if (a1[2] < v11)
    {
      *ProtobufEncoder.growBufferSlow(to:)(v11) = v4;
    }

    else
    {
      a1[1] = v11;
      *(*a1 + v12) = v4;
    }
  }

LABEL_12:
  specialized ProtobufEncoder.messageField<A>(_:_:)(2, v13);
}

unint64_t GraphicsFilter.GlassBackgroundStyle.init(from:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 < v5)
  {
    v49 = 0;
    v50 = 0.0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v57 = 0;
    v58 = 0;
    v55 = 0;
    v56 = 0;
    v9 = 0;
    v53 = 0;
    v54 = 0;
    v52 = 0;
    v51 = 0x80000000;
    v10 = 0.0;
    while (1)
    {
      result = v3[3];
      if (result)
      {
        v11 = v3[4];
        if (v4 < v11)
        {
          goto LABEL_11;
        }

        if (v11 < v4)
        {
          goto LABEL_56;
        }

        v3[3] = 0;
      }

      result = ProtobufDecoder.decodeVarint()(result);
      if (v2)
      {
        goto LABEL_58;
      }

      if (result <= 7)
      {
        goto LABEL_56;
      }

LABEL_11:
      if (result >> 3 == 2)
      {
        v48 = v9;
        if ((result & 7) != 2)
        {
          goto LABEL_57;
        }

        v14 = v3[5];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v16 = v5;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 16) + 1, 1, v14);
          v14 = isUniquelyReferenced_nonNull_native;
        }

        v18 = *(v14 + 16);
        v17 = *(v14 + 24);
        v5 = v18 + 1;
        if (v18 >= v17 >> 1)
        {
          isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v14);
          v14 = isUniquelyReferenced_nonNull_native;
        }

        *(v14 + 16) = v5;
        *(v14 + 8 * v18 + 32) = v16;
        v3[5] = v14;
        v19 = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
        if (v2)
        {
          goto LABEL_59;
        }

        if (v19 < 0)
        {
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
          __break(1u);
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
          v39 = *(result + 16);
          if (!v39)
          {
            __break(1u);
            return result;
          }

          v37 = v39 - 1;
          v38 = *(result + 8 * v37 + 32);
          *(result + 16) = v37;
          v3[5] = result;
          v3[2] = v38;
          v8 = v5;
LABEL_59:
          v61 = v10;
          v62 = v50;
          v63 = v6;
          v64 = v7;
          v65 = v8;
          v66 = v49;
          v67 = v58;
          v68 = v57;
          v69 = v56;
          v70 = v48;
          v71 = v55;
          v72 = v54;
          v73 = v53;
          v74 = v52;
          v75 = v51;
          return outlined destroy of GraphicsFilter.GlassBackgroundStyle(&v61);
        }

        v20 = v3[1] + v19;
        if (v16 < v20)
        {
          goto LABEL_57;
        }

        v3[2] = v20;
        VariableBlurStyle.Mask.init(from:)(v3, &v61);
        v21 = v3[5];
        if (!*(v21 + 16))
        {
          goto LABEL_62;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          v22 = *(v21 + 16);
          if (!v22)
          {
            goto LABEL_53;
          }
        }

        else
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v21);
          v21 = result;
          v22 = *(result + 16);
          if (!v22)
          {
LABEL_53:
            __break(1u);
            break;
          }
        }

        v23 = v22 - 1;
        v5 = *(v21 + 8 * v23 + 32);
        *(v21 + 16) = v23;
        v3[5] = v21;
        v3[2] = v5;
        v46 = v62;
        v47 = v61;
        v44 = v64;
        v45 = v63;
        v42 = v66;
        v43 = v65;
        v41 = v67;
        v24 = v6;
        v25 = v68;
        v9 = v69;
        v26 = v70;
        v27 = v71;
        v28 = v7;
        v30 = v72;
        v29 = v73;
        v31 = v8;
        v32 = v74;
        *v59 = v50;
        v59[1] = v24;
        v59[2] = v28;
        v59[3] = v31;
        v59[4] = v49;
        v59[5] = v58;
        v59[6] = v57;
        v59[7] = v56;
        v59[8] = v48;
        v59[9] = v55;
        v59[10] = v54;
        v59[11] = v53;
        v59[12] = v52;
        v60 = v51;
        result = outlined destroy of VariableBlurStyle.Mask(v59);
        v50 = v47;
        v49 = v43;
        v58 = v42;
        v56 = v25;
        v57 = v41;
        v6 = *&v46;
        v54 = v27;
        v55 = v26;
        v52 = v29;
        v53 = v30;
        v7 = v45;
        v51 = v32;
        v8 = v44;
      }

      else if (result >> 3 == 1)
      {
        v12 = result & 7;
        if (v12 == 5)
        {
          v35 = v3[1];
          if (v5 < (v35 + 1))
          {
            goto LABEL_56;
          }

          v36 = *v35;
          v3[1] = v35 + 1;
          v10 = v36;
        }

        else
        {
          if (v12 == 2)
          {
            result = ProtobufDecoder.decodeVarint()(result);
            if (v2)
            {
              goto LABEL_58;
            }

            if ((result & 0x8000000000000000) != 0)
            {
              goto LABEL_63;
            }

            v13 = v3[1];
            if (v5 < v13 + result)
            {
              goto LABEL_56;
            }

            v3[3] = 9;
            v3[4] = v13 + result;
          }

          else
          {
            if (v12 != 1)
            {
              goto LABEL_56;
            }

            v13 = v3[1];
          }

          if (v5 < (v13 + 1))
          {
            goto LABEL_56;
          }

          v10 = *v13;
          v3[1] = v13 + 1;
        }
      }

      else
      {
        v33 = result & 7;
        if (v33 > 1)
        {
          if (v33 == 2)
          {
            result = ProtobufDecoder.decodeVarint()(result);
            if (v2)
            {
LABEL_58:
              v48 = v9;
              goto LABEL_59;
            }

            if ((result & 0x8000000000000000) != 0)
            {
              goto LABEL_64;
            }

            v34 = v3[1] + result;
            if (v5 < v34)
            {
LABEL_56:
              v48 = v9;
LABEL_57:
              lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
              swift_allocError();
              swift_willThrow();
              goto LABEL_59;
            }
          }

          else
          {
            if (v33 != 5)
            {
              goto LABEL_56;
            }

            v34 = v3[1] + 4;
            if (v5 < v34)
            {
              goto LABEL_56;
            }
          }

          goto LABEL_3;
        }

        if ((result & 7) != 0)
        {
          if (v33 != 1)
          {
            goto LABEL_56;
          }

          v34 = v3[1] + 8;
          if (v5 < v34)
          {
            goto LABEL_56;
          }

LABEL_3:
          v3[1] = v34;
          goto LABEL_4;
        }

        result = ProtobufDecoder.decodeVarint()(result);
        if (v2)
        {
          goto LABEL_58;
        }
      }

LABEL_4:
      v4 = v3[1];
      if (v4 >= v5)
      {
        goto LABEL_55;
      }
    }
  }

  v49 = 0;
  v50 = 0.0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v57 = 0;
  v58 = 0;
  v55 = 0;
  v56 = 0;
  v9 = 0;
  v53 = 0;
  v54 = 0;
  v52 = 0;
  v10 = 0.0;
  v51 = 0x80000000;
LABEL_55:
  v3[3] = 0;
  *a2 = v10;
  *(a2 + 8) = v50;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  *(a2 + 40) = v49;
  *(a2 + 48) = v58;
  *(a2 + 56) = v57;
  *(a2 + 64) = v56;
  *(a2 + 72) = v9;
  *(a2 + 80) = v55;
  *(a2 + 88) = v54;
  *(a2 + 96) = v53;
  *(a2 + 104) = v52;
  *(a2 + 112) = v51;
  return result;
}

void protocol witness for ProtobufEncodableMessage.encode(to:) in conformance GraphicsFilter.GlassBackgroundStyle(void *a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(v2 + 56);
  v6 = *(v2 + 88);
  v13[4] = *(v2 + 72);
  v14[0] = v6;
  *(v14 + 12) = *(v2 + 100);
  v7 = *(v2 + 24);
  v13[0] = *(v2 + 8);
  v13[1] = v7;
  v13[2] = *(v2 + 40);
  v13[3] = v5;
  if (v4 != 0.0)
  {
    v8 = fabs(v4);
    if (v8 >= 65536.0)
    {
      v9 = 9;
    }

    else
    {
      v9 = 13;
    }

    ProtobufEncoder.encodeVarint(_:)(v9);
    if (v8 < 65536.0)
    {
      v10 = a1[1];
      v11 = v10 + 4;
      if (!__OFADD__(v10, 4))
      {
        *&v4 = v4;
        if (a1[2] >= v11)
        {
          a1[1] = v11;
          *(*a1 + v10) = LODWORD(v4);
          goto LABEL_12;
        }

LABEL_15:
        *ProtobufEncoder.growBufferSlow(to:)(v11) = LODWORD(v4);
        goto LABEL_12;
      }

      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v12 = a1[1];
    v11 = v12 + 8;
    if (__OFADD__(v12, 8))
    {
      goto LABEL_14;
    }

    if (a1[2] < v11)
    {
      *ProtobufEncoder.growBufferSlow(to:)(v11) = v4;
    }

    else
    {
      a1[1] = v11;
      *(*a1 + v12) = v4;
    }
  }

LABEL_12:
  specialized ProtobufEncoder.messageField<A>(_:_:)(2, v13);
}

void GraphicsBlendMode.encode(to:)()
{
  if (v0[1])
  {
    lazy protocol witness table accessor for type ProtobufEncoder.EncodingError and conformance ProtobufEncoder.EncodingError();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    v1 = *v0;
    if ((*v0 & 0x80000000) != 0)
    {
      __break(1u);
    }

    else
    {
      ProtobufEncoder.encodeVarint(_:)(8uLL);
      ProtobufEncoder.encodeVarint(_:)(v1 & 0x7FFFFFFF);
    }
  }
}

void protocol witness for ProtobufEncodableMessage.encode(to:) in conformance GraphicsBlendMode()
{
  if (v0[1])
  {
    lazy protocol witness table accessor for type ProtobufEncoder.EncodingError and conformance ProtobufEncoder.EncodingError();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    v1 = *v0;
    if ((*v0 & 0x80000000) != 0)
    {
      __break(1u);
    }

    else
    {
      ProtobufEncoder.encodeVarint(_:)(8uLL);
      ProtobufEncoder.encodeVarint(_:)(v1 & 0x7FFFFFFF);
    }
  }
}

BOOL specialized static GraphicsFilter.ColorMonochrome.== infix(_:_:)(float32x4_t *a1, float32x4_t *a2)
{
  if ((vminv_u16(vmovn_s32(vceqq_f32(*a1, *a2))) & 1) != 0 && (a1[1].f32[0] == a2[1].f32[0] ? (v2 = a1[1].f32[1] == a2[1].f32[1]) : (v2 = 0), v2))
  {
    return a1[1].f32[2] == a2[1].f32[2];
  }

  else
  {
    return 0;
  }
}

uint64_t specialized static GraphicsFilter.ColorCurves.== infix(_:_:)(float32x4_t *a1, float32x4_t *a2)
{
  v2 = 0;
  if ((vminv_u8(vmovn_s16(vuzp1q_s16(vceqq_f32(*a1, *a2), vceqq_f32(a1[1], a2[1])))) & 1) != 0 && (~vaddvq_s32(vandq_s8(vceqq_f32(a1[2], a2[2]), xmmword_18DDA9F30)) & 0xF) == 0)
  {
    v2 = vminv_u16(vmovn_s32(vceqq_f32(a1[3], a2[3])));
  }

  return v2 & 1;
}

BOOL specialized static GraphicsFilter.ShaderFilter.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *a2;
  v6 = *(a2 + 24);
  v8 = *(a2 + 32);
  v7 = *(a2 + 40);
  v16 = *a1;
  v17 = *(a1 + 8);
  v18 = v2;
  v13 = v5;
  v14 = *(a2 + 8);
  v15 = v6;
  v9 = v5;
  v10 = v16;
  v11 = specialized static Shader.ResolvedShader.== infix(_:_:)(&v16, &v13);

  if (!v11)
  {
    return 0;
  }

  if (v3 == v7)
  {
    return v4 == v8;
  }

  return 0;
}

BOOL specialized static GraphicsFilter.EDRGainMultiply.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1 != *a2;
  if (*(a1 + 4) != *(a2 + 4))
  {
    v2 = 1;
  }

  return ((v2 | (*(a1 + 8) ^ *(a2 + 8) | *(a2 + 9) ^ *(a1 + 9))) & 1) == 0;
}

uint64_t specialized static GraphicsFilter.DisplacementMap.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 56);
  v4 = *(a1 + 88);
  v35[4] = *(a1 + 72);
  v36[0] = v4;
  *(v36 + 12) = *(a1 + 100);
  v5 = *(a1 + 24);
  v35[0] = *(a1 + 8);
  v35[1] = v5;
  v35[2] = *(a1 + 40);
  v35[3] = v3;
  *&v3 = *a2;
  v6 = *(a2 + 24);
  v7 = *(a2 + 40);
  v37[0] = *(a2 + 8);
  v37[1] = v6;
  v8 = *(a2 + 56);
  v9 = *(a2 + 72);
  *&v38[12] = *(a2 + 100);
  v10 = *(a2 + 88);
  v37[4] = v9;
  *v38 = v10;
  v37[2] = v7;
  v37[3] = v8;
  if (v2 == *&v3)
  {
    v11 = *(a1 + 56);
    v12 = *(a1 + 88);
    v29 = *(a1 + 72);
    v30[0] = v12;
    *(v30 + 12) = *(a1 + 100);
    v13 = *(a1 + 24);
    v25 = *(a1 + 8);
    v26 = v13;
    v27 = *(a1 + 40);
    v28 = v11;
    v14 = *(a2 + 56);
    v15 = *(a2 + 88);
    v23 = *(a2 + 72);
    v24[0] = v15;
    *(v24 + 12) = *(a2 + 100);
    v16 = *(a2 + 24);
    v19 = *(a2 + 8);
    v20 = v16;
    v21 = *(a2 + 40);
    v22 = v14;
    outlined init with copy of VariableBlurStyle.Mask(v35, v33);
    outlined init with copy of VariableBlurStyle.Mask(v37, v33);
    v17 = specialized static VariableBlurStyle.Mask.== infix(_:_:)(&v25, &v19);
    v31[4] = v23;
    v32[0] = v24[0];
    *(v32 + 12) = *(v24 + 12);
    v31[0] = v19;
    v31[1] = v20;
    v31[2] = v21;
    v31[3] = v22;
    outlined destroy of VariableBlurStyle.Mask(v31);
    v33[4] = v29;
    v34[0] = v30[0];
    *(v34 + 12) = *(v30 + 12);
    v33[0] = v25;
    v33[1] = v26;
    v33[2] = v27;
    v33[3] = v28;
    outlined destroy of VariableBlurStyle.Mask(v33);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

BOOL specialized static GraphicsBlendMode.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v3)
  {
    if (*(a2 + 8))
    {
      outlined copy of GraphicsBlendMode(*a2, 1);
      outlined copy of GraphicsBlendMode(v2, 1);
      outlined consume of GraphicsBlendMode(v2, 1);
      outlined consume of GraphicsBlendMode(v4, 1);
      return v2 == v4;
    }

    swift_unknownObjectRetain();
  }

  else if ((*(a2 + 8) & 1) == 0)
  {
    outlined consume of GraphicsBlendMode(*a1, 0);
    outlined consume of GraphicsBlendMode(v4, 0);
    return v2 == v4;
  }

  outlined copy of GraphicsBlendMode(v4, v5);
  outlined consume of GraphicsBlendMode(v2, v3);
  outlined consume of GraphicsBlendMode(v4, v5);
  return 0;
}

double _s7SwiftUI14GraphicsFilterOWOi23_(uint64_t a1)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 746586112;
  return result;
}

void outlined consume of Shader.ResolvedShader?(id a1)
{
  if (a1 != 1)
  {
  }
}

void lazy protocol witness table accessor for type GraphicsFilter.VibrantColorMatrix.Options and conformance GraphicsFilter.VibrantColorMatrix.Options()
{
  if (!lazy protocol witness table cache variable for type GraphicsFilter.VibrantColorMatrix.Options and conformance GraphicsFilter.VibrantColorMatrix.Options)
  {
    swift_getWitnessTable(protocol conformance descriptor for GraphicsFilter.VibrantColorMatrix.Options, &type metadata for GraphicsFilter.VibrantColorMatrix.Options, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GraphicsFilter.VibrantColorMatrix.Options and conformance GraphicsFilter.VibrantColorMatrix.Options);
  }
}

{
  if (!lazy protocol witness table cache variable for type GraphicsFilter.VibrantColorMatrix.Options and conformance GraphicsFilter.VibrantColorMatrix.Options)
  {
    swift_getWitnessTable(protocol conformance descriptor for GraphicsFilter.VibrantColorMatrix.Options, &type metadata for GraphicsFilter.VibrantColorMatrix.Options, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GraphicsFilter.VibrantColorMatrix.Options and conformance GraphicsFilter.VibrantColorMatrix.Options);
  }
}

{
  if (!lazy protocol witness table cache variable for type GraphicsFilter.VibrantColorMatrix.Options and conformance GraphicsFilter.VibrantColorMatrix.Options)
  {
    swift_getWitnessTable(protocol conformance descriptor for GraphicsFilter.VibrantColorMatrix.Options, &type metadata for GraphicsFilter.VibrantColorMatrix.Options, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GraphicsFilter.VibrantColorMatrix.Options and conformance GraphicsFilter.VibrantColorMatrix.Options);
  }
}

{
  if (!lazy protocol witness table cache variable for type GraphicsFilter.VibrantColorMatrix.Options and conformance GraphicsFilter.VibrantColorMatrix.Options)
  {
    swift_getWitnessTable(protocol conformance descriptor for GraphicsFilter.VibrantColorMatrix.Options, &type metadata for GraphicsFilter.VibrantColorMatrix.Options, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GraphicsFilter.VibrantColorMatrix.Options and conformance GraphicsFilter.VibrantColorMatrix.Options);
  }
}

uint64_t assignWithCopy for GraphicsFilter(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = *(a2 + 64);
  v26 = *(a2 + 72);
  v27 = *(a2 + 80);
  v28 = *(a2 + 88);
  v29 = *(a2 + 96);
  v30 = *(a2 + 104);
  v31 = *(a2 + 112);
  v32 = *(a2 + 120);
  outlined copy of GraphicsFilter(*a2, v4, v5, v6, v7, v8, v9, v10, v11, v26, v27, v28, v29, v30, v31, v32);
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  v20 = *(a1 + 64);
  v21 = *(a1 + 80);
  v22 = *(a1 + 96);
  v23 = *(a1 + 112);
  v24 = *(a1 + 120);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  *(a1 + 72) = v26;
  *(a1 + 80) = v27;
  *(a1 + 88) = v28;
  *(a1 + 96) = v29;
  *(a1 + 104) = v30;
  *(a1 + 112) = v31;
  *(a1 + 120) = v32;
  outlined consume of GraphicsFilter(v12, v13, v14, v15, v16, v17, v18, v19, v20, *(&v20 + 1), v21, *(&v21 + 1), v22, *(&v22 + 1), v23, v24);
  return a1;
}

uint64_t assignWithTake for GraphicsFilter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 112);
  v4 = *(a2 + 120);
  v5 = *a1;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v13 = *(a1 + 64);
  v14 = *(a1 + 80);
  v15 = *(a1 + 96);
  v16 = *(a1 + 112);
  v17 = *(a1 + 120);
  v18 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v18;
  v19 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v19;
  v20 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v20;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v3;
  *(a1 + 120) = v4;
  outlined consume of GraphicsFilter(v5, v7, v6, v8, v9, v10, v11, v12, v13, *(&v13 + 1), v14, *(&v14 + 1), v15, *(&v15 + 1), v16, v17);
  return a1;
}

uint64_t storeEnumTagSinglePayload for GraphicsFilter(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x1FFE9)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 - 131049;
    if (a3 > 0x1FFE8)
    {
      *(result + 124) = 1;
    }
  }

  else
  {
    if (a3 > 0x1FFE8)
    {
      *(result + 124) = 0;
    }

    if (a2)
    {
      *(result + 112) = 0;
      *(result + 80) = 0u;
      *(result + 96) = 0u;
      *(result + 48) = 0u;
      *(result + 64) = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 120) = (-33554432 * a2) & 0x3C000000 | (((-a2 >> 5) & 0x7F) << 9) | (((-64 * a2) & 0x7C0000) - (a2 << 23)) & 0xFC0000;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for GraphicsFilter(uint64_t result, unsigned int a2)
{
  if (a2 < 0x17)
  {
    *(result + 120) = (a2 << 25) & 0x3C000000 | ((a2 & 1) << 23) | *(result + 120) & 0xC30301FF;
  }

  else
  {
    *result = a2 - 23;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 104) = 0u;
    *(result + 120) = 746586112;
  }

  return result;
}

__n128 __swift_memcpy85_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 77) = *(a2 + 77);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for GraphicsFilter.VibrantColorMatrix(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 85))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for GraphicsFilter.VibrantColorMatrix(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 84) = 0;
    *(result + 80) = 0;
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

  *(result + 85) = v3;
  return result;
}

__n128 __swift_memcpy64_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t initializeWithCopy for GraphicsFilter.ShaderFilter(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v4 = v3;
  return a1;
}

uint64_t assignWithCopy for GraphicsFilter.ShaderFilter(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  *a1 = *a2;
  v6 = v5;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t assignWithTake for GraphicsFilter.ShaderFilter(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t getEnumTagSinglePayload for GraphicsFilter.ShaderFilter(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for GraphicsFilter.ShaderFilter(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t __swift_memcpy10_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t initializeWithCopy for GraphicsFilter.DisplacementMap(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  v8 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = *(a2 + 64);
  v11 = *(a2 + 72);
  v13 = *(a2 + 80);
  v14 = *(a2 + 88);
  v15 = *(a2 + 96);
  v16 = *(a2 + 104);
  v17 = *(a2 + 112);
  outlined copy of VariableBlurStyle.Mask(v3, v4, v5, v6, v7, v8, v9, v10, v11, v13, v14, v15, v16, v17);
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;
  *(a1 + 56) = v9;
  *(a1 + 64) = v10;
  *(a1 + 72) = v11;
  *(a1 + 80) = v13;
  *(a1 + 88) = v14;
  *(a1 + 96) = v15;
  *(a1 + 104) = v16;
  *(a1 + 112) = v17;
  return a1;
}

uint64_t assignWithCopy for GraphicsFilter.DisplacementMap(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  v8 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = *(a2 + 64);
  v11 = *(a2 + 72);
  v25 = *(a2 + 80);
  v26 = *(a2 + 88);
  v27 = *(a2 + 96);
  v28 = *(a2 + 104);
  v29 = *(a2 + 112);
  outlined copy of VariableBlurStyle.Mask(v3, v4, v5, v6, v7, v8, v9, v10, v11, v25, v26, v27, v28, v29);
  v12 = *(a1 + 8);
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  v15 = *(a1 + 32);
  v16 = *(a1 + 40);
  v17 = *(a1 + 48);
  v18 = *(a1 + 56);
  v19 = *(a1 + 64);
  v20 = *(a1 + 72);
  v21 = *(a1 + 88);
  v22 = *(a1 + 104);
  v23 = *(a1 + 112);
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;
  *(a1 + 56) = v9;
  *(a1 + 64) = v10;
  *(a1 + 72) = v11;
  *(a1 + 80) = v25;
  *(a1 + 88) = v26;
  *(a1 + 96) = v27;
  *(a1 + 104) = v28;
  *(a1 + 112) = v29;
  outlined consume of VariableBlurStyle.Mask(v12, v13, v14, v15, v16, v17, v18, v19, v20, *(&v20 + 1), v21, *(&v21 + 1), v22, v23);
  return a1;
}

uint64_t assignWithTake for GraphicsFilter.DisplacementMap(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 104);
  v4 = *(a2 + 112);
  v5 = *(a1 + 8);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  v13 = *(a1 + 72);
  v14 = *(a1 + 88);
  v15 = *(a1 + 104);
  v16 = *(a1 + 112);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = v3;
  *(a1 + 112) = v4;
  outlined consume of VariableBlurStyle.Mask(v5, v7, v6, v8, v9, v10, v11, v12, v13, *(&v13 + 1), v14, *(&v14 + 1), v15, v16);
  return a1;
}

uint64_t getEnumTagSinglePayload for GraphicsFilter.DisplacementMap(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 116))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 17);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double storeEnumTagSinglePayload for GraphicsFilter.DisplacementMap(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 104) = 0;
    result = 0.0;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 112) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 116) = 1;
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
      *(a1 + 8) = 0;
      *(a1 + 16) = -a2 << 8;
      result = 0.0;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0u;
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      *(a1 + 100) = 0u;
      return result;
    }

    *(a1 + 116) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double LocalizedStringKey.StringInterpolation.appendInterpolation(accessibilityName:)(uint64_t a1)
{
  type metadata accessor for AccessibilityColorStorage();
  v2 = swift_allocObject();
  *(v2 + 16) = a1;

  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v2, 0, 1, MEMORY[0x1E69E7CC0]);

  return result;
}

double AccessibilityColorStorage.resolve<A>(into:in:with:)(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v8 = *a2;
  v9 = a2[1];
  v10 = *a3;
  v11 = *(v5 + 16);
  v18 = v8;
  v19 = v9;
  v12 = Color.resolveAccessibilityName(in:)(&v18, v11);
  if (v13)
  {
    v18 = v12;
    v19 = v13;
    v17[0] = v8;
    v17[1] = v9;
    v16 = v10;
    lazy protocol witness table accessor for type String and conformance String();
    ResolvedTextContainer.append<A>(_:in:with:)(&v18, v17, &v16, a4, MEMORY[0x1E69E6158], a5, v15);
  }

  return result;
}

uint64_t Color.resolveAccessibilityName(in:)(unint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for Locale();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v9 = a1[1];
  v110 = *a1;
  v111 = v9;
  *v11.i64 = (*(*a2 + 112))(&v110, v6);
  v12 = v11.i32[0];
  v14 = v13;
  v16 = v15;
  v18 = *v17.i32;
  LOBYTE(v110) = 1;
  v19 = RGBToHSB(_:_:_:)(v11, v13, v15, v17);
  v21 = v110;
  v110 = __PAIR64__(LODWORD(v14), v12);
  v111 = __PAIR64__(LODWORD(v19), LODWORD(v16));
  v112 = v20;
  v113 = v22;
  v114 = v18;
  v115 = 0;
  v116 = v21;
  if (v18 == 0.0)
  {
    v23 = 0;
LABEL_5:
    v26 = 2;
    v27 = 2;
    goto LABEL_6;
  }

  v24 = *&v19;
  v25 = v20;
  if (AccessibilityColorValues.luma.getter() > 0.99)
  {
    v23 = 1;
    goto LABEL_5;
  }

  if (AccessibilityColorValues.luma.getter() >= 0.01)
  {
    v99 = AccessibilityColorValues.luma.getter();
    if (v25 >= 0.05)
    {
      v101 = AccessibilityColorValues.luma.getter();
      if (v101 > 0.85)
      {
        v102 = 1;
      }

      else
      {
        v102 = 2;
      }

      if (v101 >= 0.35)
      {
        v27 = v102;
      }

      else
      {
        v27 = 0;
      }

      v103 = AccessibilityColorValues.luma.getter();
      if (v99 >= 0.54 || v24 <= 0.056 || v24 >= 0.111)
      {
        if (v103 > 0.7)
        {
          v104 = 1;
        }

        else
        {
          v104 = 2;
        }

        if (v25 <= 0.9)
        {
          v105 = 2;
        }

        else
        {
          v105 = v104;
        }

        if (v25 >= 0.2)
        {
          v26 = v105;
        }

        else
        {
          v26 = 0;
        }

        v23 = specialized AccessibilityColorKey.init(hue:)(v24);
        if (v23 == 21)
        {
          return 0;
        }
      }

      else if (v25 >= 0.2)
      {
        v26 = 2;
        if (v25 > 0.9)
        {
          if (v103 > 0.7)
          {
            v26 = 1;
          }

          else
          {
            v26 = 2;
          }
        }

        v23 = 4;
      }

      else
      {
        v26 = 0;
        v23 = 4;
      }
    }

    else
    {
      if (v99 > 0.85)
      {
        v100 = 1;
      }

      else
      {
        v100 = 2;
      }

      v26 = 2;
      if (v99 >= 0.35)
      {
        v27 = v100;
      }

      else
      {
        v27 = 0;
      }

      v23 = 3;
    }
  }

  else
  {
    v26 = 2;
    v27 = 2;
    v23 = 2;
  }

LABEL_6:
  v28 = AccessibilityColorKey.rawValue.getter(v23);
  v30 = v29;
  if (v9)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v10, v8);
  }

  else
  {
    v31 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v10);
    if (v31)
    {
      (*(v5 + 16))(v8, &v31[*(*v31 + 248)], v4);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v32 = __swift_project_value_buffer(v4, static LocaleKey.defaultValue);
      (*(v5 + 16))(v8, v32, v4);
    }
  }

  v109 = v5;
  if (one-time initialization token for accessibilityBundle != -1)
  {
    swift_once();
  }

  v33 = static AccessibilityLocalizedString.accessibilityBundle;
  v34 = MEMORY[0x193ABEC20](v28, v30);

  v35 = MEMORY[0x193ABEC20](0x6269737365636341, 0xED00007974696C69);
  isa = Locale._bridgeToObjectiveC()().super.isa;
  v37 = _LocalizeString(v33, v34, v35, isa);

  v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v40 = v39;

  if (v27 != 2)
  {
    v107 = v38;
    v108 = v4;
    if (v27)
    {
      v58 = 0x746867696CLL;
    }

    else
    {
      v58 = 1802658148;
    }

    if (v27)
    {
      v59 = 0xE500000000000000;
    }

    else
    {
      v59 = 0xE400000000000000;
    }

    if (v26 == 2)
    {
      v60 = MEMORY[0x193ABEC20](0xD000000000000025, 0x800000018DD7BC30);
      v61 = MEMORY[0x193ABEC20](0x6269737365636341, 0xED00007974696C69);
      v62 = Locale._bridgeToObjectiveC()().super.isa;
      v63 = _LocalizeString(v33, v60, v61, v62);

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      type metadata accessor for _ContiguousArrayStorage<CVarArg>(0);
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_18DDAB4C0;
      v65 = MEMORY[0x193ABEC20](v58, v59);

      v66 = MEMORY[0x193ABEC20](0x6269737365636341, 0xED00007974696C69);
      v67 = Locale._bridgeToObjectiveC()().super.isa;
      v68 = _LocalizeString(v33, v65, v66, v67);

      v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v71 = v70;

      v72 = MEMORY[0x1E69E6158];
      *(v64 + 56) = MEMORY[0x1E69E6158];
      lazy protocol witness table accessor for type String and conformance String();
      *(v64 + 32) = v69;
      *(v64 + 40) = v71;
      *(v64 + 96) = v72;
      *(v64 + 104) = v73;
      v74 = v107;
      *(v64 + 64) = v73;
      *(v64 + 72) = v74;
      *(v64 + 80) = v40;
    }

    else
    {
      v75 = 0x68736979617267;
      if (v26)
      {
        v75 = 0x746E6172626976;
      }

      v106[0] = v75;
      v76 = MEMORY[0x193ABEC20](0xD00000000000001BLL, 0x800000018DD7BC10);
      v77 = MEMORY[0x193ABEC20](0x6269737365636341, 0xED00007974696C69);
      v78 = Locale._bridgeToObjectiveC()().super.isa;
      v79 = _LocalizeString(v33, v76, v77, v78);

      v106[1] = static String._unconditionallyBridgeFromObjectiveC(_:)();
      type metadata accessor for _ContiguousArrayStorage<CVarArg>(0);
      v80 = swift_allocObject();
      *(v80 + 16) = xmmword_18DDAF080;
      v81 = MEMORY[0x193ABEC20](v58, v59);

      v82 = MEMORY[0x193ABEC20](0x6269737365636341, 0xED00007974696C69);
      v83 = Locale._bridgeToObjectiveC()().super.isa;
      v84 = _LocalizeString(v33, v81, v82, v83);

      v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v87 = v86;

      v88 = MEMORY[0x1E69E6158];
      *(v80 + 56) = MEMORY[0x1E69E6158];
      lazy protocol witness table accessor for type String and conformance String();
      v90 = v89;
      *(v80 + 64) = v89;
      *(v80 + 32) = v85;
      *(v80 + 40) = v87;
      v91 = MEMORY[0x193ABEC20](v106[0], 0xE700000000000000);

      v92 = MEMORY[0x193ABEC20](0x6269737365636341, 0xED00007974696C69);
      v93 = Locale._bridgeToObjectiveC()().super.isa;
      v94 = _LocalizeString(v33, v91, v92, v93);

      v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v97 = v96;

      *(v80 + 96) = v88;
      *(v80 + 104) = v90;
      *(v80 + 72) = v95;
      *(v80 + 80) = v97;
      *(v80 + 136) = v88;
      *(v80 + 144) = v90;
      *(v80 + 112) = v107;
      *(v80 + 120) = v40;
    }

    goto LABEL_34;
  }

  if (v26 != 2)
  {
    v108 = v4;
    if (v26)
    {
      v41 = 0x746E6172626976;
    }

    else
    {
      v41 = 0x68736979617267;
    }

    v42 = MEMORY[0x193ABEC20](0xD000000000000026, 0x800000018DD7BC60);
    v107 = v38;
    v43 = v42;
    v44 = MEMORY[0x193ABEC20](0x6269737365636341, 0xED00007974696C69);
    v45 = Locale._bridgeToObjectiveC()().super.isa;
    v46 = _LocalizeString(v33, v43, v44, v45);

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    type metadata accessor for _ContiguousArrayStorage<CVarArg>(0);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_18DDAB4C0;
    v48 = MEMORY[0x193ABEC20](v41, 0xE700000000000000);

    v49 = MEMORY[0x193ABEC20](0x6269737365636341, 0xED00007974696C69);
    v50 = Locale._bridgeToObjectiveC()().super.isa;
    v51 = _LocalizeString(v33, v48, v49, v50);

    v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v54 = v53;

    v55 = MEMORY[0x1E69E6158];
    *(v47 + 56) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    *(v47 + 32) = v52;
    *(v47 + 40) = v54;
    *(v47 + 96) = v55;
    *(v47 + 104) = v56;
    v57 = v107;
    *(v47 + 64) = v56;
    *(v47 + 72) = v57;
    *(v47 + 80) = v40;
LABEL_34:
    v38 = static String.localizedStringWithFormat(_:_:)();

    v4 = v108;
  }

  (*(v109 + 8))(v8, v4);
  return v38;
}

uint64_t AccessibilityColorStorage.isEqual(to:)(uint64_t a1)
{
  v2 = v1;
  result = swift_dynamicCastClass();
  if (result)
  {
    v4 = *(result + 16);
    if (v4 == *(v2 + 16))
    {
      return 1;
    }

    else
    {
      v5 = *(*v4 + 88);

      LOBYTE(v5) = v5(v6);

      return v5 & 1;
    }
  }

  return result;
}

float AccessibilityColorValues.luma.getter()
{
  if ((*(v0 + 32) & 1) == 0)
  {
    return *(v0 + 28);
  }

  v1 = vmul_f32(*(v0 + 4), 0x3D93DD983F371759);
  v2 = *(v0 + 24) * (((*v0 * 0.2126) + v1.f32[0]) + v1.f32[1]);
  if (v2 < 0.0)
  {
    v2 = 0.0;
  }

  result = fminf(v2, 1.0);
  *(v0 + 28) = result;
  *(v0 + 32) = 0;
  return result;
}

uint64_t AccessibilityColorKey.rawValue.getter(char a1)
{
  result = 0x726170736E617274;
  switch(a1)
  {
    case 1:
      result = 0x6574696877;
      break;
    case 2:
      result = 0x6B63616C62;
      break;
    case 3:
      result = 2036429415;
      break;
    case 4:
      result = 0x6E776F7262;
      break;
    case 5:
      result = 6579570;
      break;
    case 6:
      result = 0x6E61726F20646572;
      break;
    case 7:
      result = 0x65676E61726FLL;
      break;
    case 8:
      result = 0x792065676E61726FLL;
      break;
    case 9:
      result = 0x776F6C6C6579;
      break;
    case 10:
      result = 0x6720776F6C6C6579;
      break;
    case 11:
      result = 0x6E65657267;
      break;
    case 12:
      result = 0x6572672065756C62;
      break;
    case 13:
      result = 1851881827;
      break;
    case 14:
      result = 0x756C62206E617963;
      break;
    case 15:
      result = 1702194274;
      break;
    case 16:
      result = 0x67616D2065756C62;
      break;
    case 17:
      result = 0x61746E6567616DLL;
      break;
    case 18:
      result = 0x2061746E6567616DLL;
      break;
    case 19:
      result = 1802398064;
      break;
    case 20:
      result = 0x646572206B6E6970;
      break;
    default:
      return result;
  }

  return result;
}

id one-time initialization function for accessibilityBundle()
{
  type metadata accessor for AXCustomContent();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  static AccessibilityLocalizedString.accessibilityBundle = result;
  return result;
}

double RGBToHSB(_:_:_:)(int8x16_t a1, float a2, float a3, int8x16_t a4)
{
  v4 = a3;
  v5 = a2;
  if (a2 <= *a1.i32)
  {
    v7 = a3 == *a1.i32;
    v6 = a3 >= *a1.i32;
  }

  else
  {
    v6 = 1;
    v7 = 0;
  }

  if (!v7 && v6)
  {
    if (a2 >= *a1.i32)
    {
      a2 = *a1.i32;
    }

    if (*a1.i32 < a3)
    {
      a3 = *a1.i32;
    }

    if (*a1.i32 <= v5)
    {
      v9 = v4 == v5;
      v8 = v4 >= v5;
    }

    else
    {
      v8 = 1;
      v9 = 0;
    }

    if (!v9 && v8)
    {
      v10 = a2;
    }

    else
    {
      v10 = a3;
    }

    if (!v9 && v8)
    {
      v11 = v4;
    }

    else
    {
      v11 = v5;
    }
  }

  else
  {
    if (a2 >= a3)
    {
      v10 = a3;
    }

    else
    {
      v10 = a2;
    }

    v11 = *a1.i32;
  }

  v12 = 0.0;
  if (v11 > 0.0)
  {
    v13 = v11 - v10;
    if (((v11 - v10) / v11) != 0.0)
    {
      v14 = (v11 - v5) / v13;
      v15 = (v11 - v4) / v13;
      if (v11 == *a1.i32)
      {
        if (v10 == v5)
        {
          v12 = v15 + 5.0;
        }

        else
        {
          v12 = 1.0 - v14;
        }
      }

      else
      {
        v7 = v11 == v5;
        v17 = (v11 - *a1.i32) / v13;
        if (v7)
        {
          if (v10 == v4)
          {
            v12 = v17 + 1.0;
          }

          else
          {
            v12 = 3.0 - v15;
          }
        }

        else if (v10 == *a1.i32)
        {
          v12 = v14 + 3.0;
        }

        else
        {
          v12 = 5.0 - v17;
        }
      }
    }
  }

  *a1.i32 = v12 / 6.0;
  *a4.i32 = (v12 / 6.0) - truncf(v12 / 6.0);
  v16.i64[0] = 0x8000000080000000;
  v16.i64[1] = 0x8000000080000000;
  a1.i64[0] = vbslq_s8(v16, a4, a1).u64[0];
  return *a1.i64;
}

uint64_t specialized AccessibilityColorKey.init(hue:)(float a1)
{
  if (a1 < 0.0 || a1 > 1.0)
  {
    return 21;
  }

  if (a1 < 0.028)
  {
    return 5;
  }

  if (a1 < 0.056)
  {
    return 6;
  }

  if (a1 < 0.111)
  {
    return 7;
  }

  if (a1 < 0.129)
  {
    return 8;
  }

  if (a1 < 0.167)
  {
    return 9;
  }

  if (a1 < 0.222)
  {
    return 10;
  }

  if (a1 < 0.389)
  {
    return 11;
  }

  if (a1 < 0.469)
  {
    return 12;
  }

  if (a1 < 0.54)
  {
    return 13;
  }

  if (a1 < 0.611)
  {
    return 14;
  }

  if (a1 < 0.667)
  {
    return 15;
  }

  if (a1 < 0.8)
  {
    return 16;
  }

  if (a1 < 0.889)
  {
    return 17;
  }

  if (a1 < 0.917)
  {
    return 18;
  }

  if (a1 < 0.958)
  {
    return 19;
  }

  if (a1 >= 0.986)
  {
    return 5;
  }

  return 20;
}

unint64_t type metadata accessor for AXCustomContent()
{
  result = lazy cache variable for type metadata for AXCustomContent;
  if (!lazy cache variable for type metadata for AXCustomContent)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for AXCustomContent);
  }

  return result;
}

void lazy protocol witness table accessor for type MRUIKitFeature and conformance MRUIKitFeature()
{
  if (!lazy protocol witness table cache variable for type MRUIKitFeature and conformance MRUIKitFeature)
  {
    swift_getWitnessTable(protocol conformance descriptor for MRUIKitFeature, &type metadata for MRUIKitFeature, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type MRUIKitFeature and conformance MRUIKitFeature);
  }
}

void lazy protocol witness table accessor for type RSSFeature and conformance RSSFeature()
{
  if (!lazy protocol witness table cache variable for type RSSFeature and conformance RSSFeature)
  {
    swift_getWitnessTable(protocol conformance descriptor for RSSFeature, &type metadata for RSSFeature, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type RSSFeature and conformance RSSFeature);
  }
}

uint64_t initializeWithCopy for AnyCodable(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  *(a1 + 40) = v3;
  (**(v4 - 8))();
  return a1;
}

double __swift_assign_boxed_opaque_existential_2(uint64_t *a1, uint64_t *a2, __n128 result)
{
  if (a1 != a2)
  {
    v3 = a1[3];
    v4 = a2[3];
    if (v3 == v4)
    {
      v11 = *(v3 - 8);
      if ((*(v11 + 82) & 2) != 0)
      {
        v13 = *a2;

        *a1 = v13;
      }

      else
      {
        v12 = *(v11 + 24);

        v12(result);
      }
    }

    else
    {
      a1[3] = v4;
      a1[4] = a2[4];
      a1[5] = a2[5];
      v5 = *(v3 - 8);
      v6 = *(v4 - 8);
      v7 = v6;
      v8 = *(v6 + 80);
      if ((*(v5 + 82) & 2) != 0)
      {
        if ((v8 & 0x20000) != 0)
        {
          *a1 = *a2;
        }

        else
        {
          (*(v6 + 16))(result);
        }
      }

      else
      {
        (*(v5 + 32))(v16, result);
        if ((v8 & 0x20000) != 0)
        {
          *a1 = *a2;
        }

        else
        {
          (*(v7 + 16))(a1, a2, v4);
        }

        (*(v5 + 8))(v16, v3);
      }
    }
  }

  return result.n128_f64[0];
}

uint64_t assignWithTake for AnyCodable(uint64_t a1, _OWORD *a2)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v4 = a2[1];
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = a2[2];
  return a1;
}

uint64_t AnyCodable.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t *a5@<X8>)
{
  a5[3] = a2;
  a5[4] = a3;
  a5[5] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a5);
  v8 = *(*(a2 - 8) + 32);

  return v8(boxed_opaque_existential_1, a1, a2);
}

uint64_t AnyCodable.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>, uint64_t a5@<X3>)
{
  v38 = a4;
  v39 = a3;
  v7 = type metadata accessor for AnyCodable.CodingKeys(255, a2, a3, a5);
  swift_getWitnessTable(protocol conformance descriptor for AnyCodable<A>.CodingKeys, v7);
  v8 = type metadata accessor for KeyedDecodingContainer();
  v40 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v36 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = v41;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v11)
  {
    goto LABEL_3;
  }

  LOBYTE(v42[0]) = 0;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v16 = v15;
  v17 = _typeByName(_:)();
  v41 = v17;
  if (!v17)
  {
    v26 = type metadata accessor for AnyCodable.Errors(0, a2, v39, v18);
    swift_getWitnessTable(protocol conformance descriptor for AnyCodable<A>.Errors, v26);
    swift_allocError();
    *v27 = v14;
    *(v27 + 8) = v16;
    *(v27 + 16) = 1;
    swift_willThrow();
    (*(v40 + 8))(v10, v8);
LABEL_3:
    v12 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v12);
  }

  v37 = a1;

  v43 = 0;
  v44 = 0;
  v45 = 0;
  v19 = (*(v39 + 8))(v41, v41, a2);
  v21 = v20;
  v23 = v22;
  swift_beginAccess();
  v43 = v19;
  v44 = v21;
  v45 = v23;
  swift_beginAccess();
  if (!v43)
  {
    v28 = type metadata accessor for DecodingError();
    swift_allocError();
    v30 = v29;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
    v39 = *(v31 + 48);
    *v30 = v41;
    v38 = KeyedDecodingContainer.codingPath.getter();
    *&v42[0] = 0;
    *(&v42[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(25);
    v32 = _typeName(_:qualified:)();
    v34 = v33;

    *&v42[0] = v32;
    *(&v42[0] + 1) = v34;
    MEMORY[0x193ABEDD0](0xD000000000000015, 0x800000018DD7BCF0);
    v35 = _typeName(_:qualified:)();
    MEMORY[0x193ABEDD0](v35);

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v28 - 8) + 104))(v30, *MEMORY[0x1E69E6AF8], v28);
    swift_willThrow();
    (*(v40 + 8))(v10, v8);
    a1 = v37;
    goto LABEL_3;
  }

  v47 = 1;
  static Decodable<>.decode<A>(from:in:)(v43, v44, v45, v42);
  (*(v40 + 8))(v10, v8);
  outlined init with take of Decodable & Encodable(v42, v46);
  v24 = v46[1];
  v25 = v38;
  *v38 = v46[0];
  v25[1] = v24;
  v25[2] = v46[2];
  v12 = v37;
  return __swift_destroy_boxed_opaque_existential_1(v12);
}

void *static Decodable<>.decode<A>(from:in:)@<X0>(uint64_t a2@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a7@<X8>)
{
  a7[3] = a2;
  a7[4] = a4;
  a7[5] = a5;
  __swift_allocate_boxed_opaque_existential_1(a7);
  type metadata accessor for KeyedDecodingContainer();
  result = KeyedDecodingContainer.decode<A>(_:forKey:)();
  if (v7)
  {
    return __swift_deallocate_boxed_opaque_existential_1(a7);
  }

  return result;
}

void AnyCodable.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *(a2 + 16);
  v19 = *(a2 + 24);
  v20 = v7;
  v8 = type metadata accessor for AnyCodable.CodingKeys(255, v7, v19, a4);
  swift_getWitnessTable(protocol conformance descriptor for AnyCodable<A>.CodingKeys, v8);
  v9 = type metadata accessor for KeyedEncodingContainer();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of Decodable & Encodable(v5, v21);
  __swift_project_boxed_opaque_existential_1(v21, v21[3]);
  DynamicType = swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_1(v21);
  _mangledTypeName(_:)();
  if (v15)
  {
    LOBYTE(v21[0]) = 0;
    v16 = v21[7];
    KeyedEncodingContainer.encode(_:forKey:)();
    if (v16)
    {
      (*(v10 + 8))(v12, v9);

      return;
    }

    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    LOBYTE(v21[0]) = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  else
  {
    v17 = type metadata accessor for AnyCodable.Errors(0, v20, v19, v14);
    swift_getWitnessTable(protocol conformance descriptor for AnyCodable<A>.Errors, v17);
    swift_allocError();
    *v18 = DynamicType;
    *(v18 + 8) = 0;
    *(v18 + 16) = 0;
    swift_willThrow();
  }

  (*(v10 + 8))(v12, v9);
}

uint64_t AnyCodable.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t AnyCodable.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x65756C6176;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AnyCodable<A>.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7.n128_f64[0] = swift_getWitnessTable(protocol conformance descriptor for AnyCodable<A>.CodingKeys, a3);
  v8 = MEMORY[0x1E69E6550];

  return MEMORY[0x1EEE6B350](a1, a2, a3, v6, v8, v7);
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance AnyCodable<A>.CodingKeys(uint64_t a1, uint64_t a2)
{
  v5.n128_f64[0] = swift_getWitnessTable(protocol conformance descriptor for AnyCodable<A>.CodingKeys, a1);
  v6 = MEMORY[0x1E69E6540];

  return MEMORY[0x1EEE69348](a1, a2, v4, v6, v5);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AnyCodable<A>.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7.n128_f64[0] = swift_getWitnessTable(protocol conformance descriptor for AnyCodable<A>.CodingKeys);
  v8 = MEMORY[0x1E69E6540];

  return MEMORY[0x1EEE69358](a1, a2, a3, v6, v8, v7);
}

uint64_t protocol witness for Hashable._rawHashValue(seed:) in conformance AnyCodable<A>.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7.n128_f64[0] = swift_getWitnessTable(protocol conformance descriptor for AnyCodable<A>.CodingKeys);
  v8 = MEMORY[0x1E69E6540];

  return MEMORY[0x1EEE69350](a1, a2, a3, v6, v8, v7);
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance AnyCodable<A>.CodingKeys@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_18D3AF908(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AnyCodable<A>.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = AnyCodable.CodingKeys.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AnyCodable<A>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = AnyCodable.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance AnyCodable<A>.CodingKeys@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_18D3AF908(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnyCodable<A>.CodingKeys(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for AnyCodable<A>.CodingKeys, a1);

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnyCodable<A>.CodingKeys(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for AnyCodable<A>.CodingKeys, a1);

  return MEMORY[0x1EEE6BB78](a1, v2);
}

_OWORD *outlined init with take of Decodable & Encodable(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

double outlined copy of AnyCodable<A>.Errors<A>(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

double outlined consume of AnyCodable<A>.Errors<A>(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for AnyCodable.Errors(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of AnyCodable<A>.Errors<A>(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for AnyCodable.Errors(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of AnyCodable<A>.Errors<A>(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  outlined consume of AnyCodable<A>.Errors<A>(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for AnyCodable.Errors(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  v6 = *(a1 + 16);
  *(a1 + 16) = v3;
  outlined consume of AnyCodable<A>.Errors<A>(v4, v5, v6);
  return a1;
}

uint64_t Text.init<A>(_:formatter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_dynamicCast();
  type metadata accessor for FormatterTextStorage();
  result = swift_allocObject();
  *(result + 16) = v6;
  *(result + 24) = a2;
  return result;
}

uint64_t Text.init<A>(_:formatter:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for FormatterTextStorage();
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

double FormatterTextStorage.resolve<A>(into:in:with:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v9 = *a2;
  v10 = a2[1];
  v11 = *a3;
  v12 = *(v5 + 24);
  swift_getObjectType();
  v13 = swift_conformsToProtocol2();
  if (v13)
  {
    v14 = v12 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (!v14)
  {
    v15 = v13;
    ObjectType = swift_getObjectType();
    v26 = v9;
    v27 = v10;
    (*(v15 + 8))(&v26, ObjectType, v15);
  }

  v17 = [v12 stringForObjectValue_];
  if (v17)
  {
    v19 = v17;
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v26 = v20;
    v27 = v22;
    v25[0] = v9;
    v25[1] = v10;
    v24 = v11;
    lazy protocol witness table accessor for type String and conformance String();
    ResolvedTextContainer.append<A>(_:in:with:)(&v26, v25, &v24, a4, MEMORY[0x1E69E6158], a5, v23);
  }

  return result;
}

uint64_t FormatterTextStorage.isEqual(to:)(uint64_t a1)
{
  v1 = swift_dynamicCastClass();
  if (v1)
  {
    v2 = v1;
    type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
    v3 = *(v2 + 16);

    v4 = v3;
    v5 = static NSObject.== infix(_:_:)();

    if (v5)
    {
      v6 = *(v2 + 24);
      v7 = static NSObject.== infix(_:_:)();

      return v7 & 1;
    }
  }

  return 0;
}

void FormatterTextStorage.__ivar_destroyer()
{
  v1 = *(v0 + 24);
}

uint64_t FormatterTextStorage.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t FormatStyleBox.__allocating_init(input:format:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  FormatStyleBox.init(input:format:)(a1, a2);
  return v4;
}

uint64_t FormatStyleBox.__ivar_destroyer()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 104);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v1, AssociatedTypeWitness);
  v4 = *(*(v2 - 8) + 8);
  v5 = v0 + *(*v0 + 144);

  return v4(v5, v2);
}

uint64_t FormatStyleBox.deinit()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 104);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v1, AssociatedTypeWitness);
  (*(*(v2 - 8) + 8))(v0 + *(*v0 + 144), v2);
  return v0;
}

uint64_t FormatStyleBox.__deallocating_deinit()
{
  FormatStyleBox.deinit();

  return swift_deallocClassInstance();
}

uint64_t specialized Text.init<A>(_:format:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return specialized Text.init<A>(_:format:)(a1, a2, a3, a4, a5, &protocol witness table for String);
}

{
  return specialized Text.init<A>(_:format:)(a1, a2, a3, a4, a5, &protocol witness table for AttributedString);
}

uint64_t specialized Collection.count.getter()
{
  v1 = v0;
  type metadata accessor for RangeSet<String.Index>.Ranges(0, &lazy cache variable for type metadata for RangeSet<String.Index>.Ranges, MEMORY[0x1E69E7BA8]);
  v3 = v2;
  v25 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v24 - v4;
  type metadata accessor for RangeSet<String.Index>.Ranges(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E7BE0]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - v9;
  type metadata accessor for RangeSet<String.Index>.Ranges(0, &lazy cache variable for type metadata for SelectionRanges<String.Index>, type metadata accessor for SelectionRanges);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - v15;
  v17 = v1;
  outlined init with copy of SelectionRanges<String.Index>(v1, &v24 - v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    (*(v8 + 32))(v10, v16, v7);
    RangeSet.ranges.getter();
    v24 = RangeSet.Ranges.startIndex.getter();
    v19 = v25;
    (*(v25 + 8))(v5, v3);
    (*(v8 + 8))(v10, v7);
  }

  else
  {
    outlined destroy of SelectionRanges<String.Index>(v16);
    v24 = 0;
    v19 = v25;
  }

  outlined init with copy of SelectionRanges<String.Index>(v17, v13);
  v20 = swift_getEnumCaseMultiPayload();
  if (v20 == 1)
  {
    (*(v8 + 32))(v10, v13, v7);
    v21 = v19;
    RangeSet.ranges.getter();
    v22 = RangeSet.Ranges.count.getter();
    (*(v21 + 8))(v5, v3);
    (*(v8 + 8))(v10, v7);
  }

  else
  {
    outlined destroy of SelectionRanges<String.Index>(v13);
    v22 = 1;
  }

  return specialized BidirectionalCollection._distance(from:to:)(v24, EnumCaseMultiPayload == 1, v22, v20 == 1);
}

{
  v0 = 0;
  v1 = 0;
  while (1)
  {
    result = v0 + 1;
    if (__OFADD__(v0, 1))
    {
      break;
    }

    if (byte_1F0043DA0 == v1)
    {
      v2 = 0;
    }

    else if (byte_1F0043DA1 == v1)
    {
      v2 = 1;
    }

    else if (byte_1F0043DA2 == v1)
    {
      v2 = 2;
    }

    else if (byte_1F0043DA3 == v1)
    {
      v2 = 3;
    }

    else if (byte_1F0043DA4 == v1)
    {
      v2 = 4;
    }

    else if (byte_1F0043DA5 == v1)
    {
      v2 = 5;
    }

    else if (byte_1F0043DA6 == v1)
    {
      v2 = 6;
    }

    else if (asc_1F0043DA7[0] == v1)
    {
      v2 = 7;
    }

    else if (asc_1F0043DA7[1] == v1)
    {
      v2 = 8;
    }

    else if (asc_1F0043DA7[2] == v1)
    {
      v2 = 9;
    }

    else if (asc_1F0043DA7[3] == v1)
    {
      v2 = 10;
    }

    else
    {
      if (asc_1F0043DA7[4] != v1)
      {
        goto LABEL_32;
      }

      v2 = 11;
    }

    if (v2 >= 0xA)
    {
      v2 = 10;
    }

    v1 = *(&outlined read-only object #0 of static DynamicTypeSize.allCases.getter + v2 + 33);
    ++v0;
    if (v1 == 11)
    {
      return result;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t specialized Collection.count.getter(double a1)
{
  v2 = v1;
  type metadata accessor for RangeSet<AttributedString.Index>.Ranges(0, a1);
  v4 = v3;
  v29 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RangeSet<AttributedString.Index>.Ranges(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0], v5);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v28 - v12;
  type metadata accessor for SelectionRanges<AttributedString.Index>(0, v11);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v28 - v18;
  v20 = v2;
  outlined init with copy of (Hashable, isUnary: Bool)(v2, &v28 - v18, type metadata accessor for SelectionRanges<AttributedString.Index>);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    (*(v10 + 32))(v13, v19, v9);
    RangeSet.ranges.getter();
    v28 = RangeSet.Ranges.startIndex.getter();
    v22 = v29;
    (*(v29 + 8))(v7, v4);
    (*(v10 + 8))(v13, v9);
  }

  else
  {
    outlined destroy of (Hashable, isUnary: Bool)(v19, type metadata accessor for SelectionRanges<AttributedString.Index>);
    v28 = 0;
    v22 = v29;
  }

  outlined init with copy of (Hashable, isUnary: Bool)(v20, v16, type metadata accessor for SelectionRanges<AttributedString.Index>);
  v23 = swift_getEnumCaseMultiPayload();
  if (v23 == 1)
  {
    (*(v10 + 32))(v13, v16, v9);
    v24 = v22;
    RangeSet.ranges.getter();
    v25 = RangeSet.Ranges.count.getter();
    (*(v24 + 8))(v7, v4);
    (*(v10 + 8))(v13, v9);
  }

  else
  {
    outlined destroy of (Hashable, isUnary: Bool)(v16, type metadata accessor for SelectionRanges<AttributedString.Index>);
    v25 = 1;
  }

  return specialized BidirectionalCollection._distance(from:to:)(v28, EnumCaseMultiPayload == 1, v25, v23 == 1, v26);
}

uint64_t specialized HeterogeneousCollection.map<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a4 + 16);
  if (v12)
  {
    v12 = *(a4 + 4 * v12 + 28);
  }

  v17 = MEMORY[0x1E69E7CC0];
  if (*(MEMORY[0x1E69E7CC0] + 16) <= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = *(MEMORY[0x1E69E7CC0] + 16);
  }

  v14 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13, 0);
  v16[7] = a3;
  v16[8] = a4;
  v16[9] = a5;
  v16[10] = a6;
  MEMORY[0x1EEE9AC00](v14);
  v16[2] = &v17;
  v16[3] = a1;
  v16[4] = a2;
  HeterogeneousCollection.forEach(_:)(partial apply for specialized closure #1 in HeterogeneousCollection.map<A>(_:), v16);
  return v17;
}

uint64_t specialized closure #1 in HeterogeneousCollection.map<A>(_:)(uint64_t a1, uint64_t *a2, void (*a3)(void *__return_ptr))
{
  (a3)(v11, a1);
  v4 = v11[0];
  v5 = v11[1];
  v6 = *a2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v6;
  if ((result & 1) == 0)
  {
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 16) + 1, 1);
    v6 = *a2;
  }

  v9 = *(v6 + 16);
  v8 = *(v6 + 24);
  if (v9 >= v8 >> 1)
  {
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1);
    v6 = *a2;
  }

  *(v6 + 16) = v9 + 1;
  v10 = v6 + 16 * v9;
  *(v10 + 32) = v4;
  *(v10 + 40) = v5;
  return result;
}

uint64_t TypedCanonicalViewID.init(index:implicitID:explicitID:)@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _DWORD *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  v9 = type metadata accessor for TypedCanonicalViewID(0, a4, a5, a4);
  v10 = *(*(a4 - 8) + 32);
  v11 = a6 + *(v9 + 40);

  return v10(v11, a3, a4);
}

uint64_t TypedCanonicalViewID.hash(into:)(uint64_t a1, uint64_t a2)
{
  Hasher._combine(_:)(*v2);
  Hasher._combine(_:)(v2[1]);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int TypedCanonicalViewID.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  TypedCanonicalViewID.hash(into:)(v3, a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TypedCanonicalViewID<A>(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  TypedCanonicalViewID.hash(into:)(v4, a2);
  return Hasher._finalize()();
}

void *TypedCanonicalViewID.asCanonical()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 16) == &type metadata for Nil)
  {
    v5 = *v2;
    result = (*(*(a1 - 8) + 8))(v2);
    v6 = 0;
  }

  else
  {
    result = TypedCanonicalViewID.unsafeAsCanonicalWithExplicitID()(a1, v7);
    v5 = v7[0];
    v6 = v7[1];
  }

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t TypedCanonicalViewID.unsafeAsCanonicalWithExplicitID()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  (*(v9 + 32))(v7, &v2[*(v8 + 40)], v4, v5);
  result = AnyHashable2.init<A>(_:)(v7, v4, &v14);
  v12 = v14;
  *a2 = v10;
  a2[1] = v12;
  return result;
}

uint64_t specialized makeCanonical<A>(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  outlined init with copy of Any(a1, v22);
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for CanonicalViewIDProtocol, &protocol descriptor for CanonicalViewIDProtocol);
  if (swift_dynamicCast())
  {
    outlined init with take of AnyTrackedValue(&v19, v23);
    v4 = v24;
    v5 = v25;
    v6 = __swift_project_boxed_opaque_existential_1(v23, v24);
    v7 = MEMORY[0x1EEE9AC00](v6);
    (*(v9 + 16))(&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    (*(v5 + 24))(v4, v5);
    return __swift_destroy_boxed_opaque_existential_1(v23);
  }

  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  outlined destroy of CanonicalViewIDProtocol?(&v19, &lazy cache variable for type metadata for CanonicalViewIDProtocol?, &lazy cache variable for type metadata for CanonicalViewIDProtocol, &protocol descriptor for CanonicalViewIDProtocol, type metadata accessor for ScrollStateRequest?);
  outlined init with copy of Any(a1, v22);
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for Hashable, MEMORY[0x1E69E5EA0]);
  if (swift_dynamicCast())
  {
    outlined init with take of AnyTrackedValue(&v19, v23);
    v10 = v24;
    v11 = __swift_project_boxed_opaque_existential_1(v23, v24);
    v12 = MEMORY[0x1EEE9AC00](v11);
    v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v15 + 16))(v14, v12);
    AnyHashable2.init<A>(_:)(v14, v10, &v19);
    v16 = v19;
    *a2 = 0xFFFFFFFF00000000;
    a2[1] = v16;
    return __swift_destroy_boxed_opaque_existential_1(v23);
  }

  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  outlined destroy of CanonicalViewIDProtocol?(&v19, &lazy cache variable for type metadata for Hashable?, &lazy cache variable for type metadata for Hashable, MEMORY[0x1E69E5EA0], type metadata accessor for ScrollStateRequest?);
  v23[0] = 0;
  v23[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(21);
  MEMORY[0x193ABEDD0](0xD000000000000010, 0x800000018DD7BE60);
  v18 = _typeName(_:qualified:)();
  MEMORY[0x193ABEDD0](v18);

  MEMORY[0x193ABEDD0](32, 0xE100000000000000);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

double one-time initialization function for empty()
{
  v0 = MEMORY[0x1E69E7CC0];
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    v2 = MEMORY[0x1E69E7CC0];
    v3 = __CocoaSet.count.getter();
    if (v3)
    {
      v2 = v3;
      v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs10AnyKeyPathC_Tt1g5(v3, 0, v4);
      specialized Array._copyContents(initializing:)(v5 + 32, v2, MEMORY[0x1E69E7CC0]);
      v7 = v6;

      v0 = v5;
      if (v7 == v2)
      {
        goto LABEL_2;
      }

      __break(1u);
    }

    v0 = v2;
  }

LABEL_2:
  HeterogeneousCollection.init(_:)(v0, v8);
  result = *v8;
  static HeterogeneousViewIDs.empty = v8[0];
  xmmword_1EAB1F010 = v8[1];
  return result;
}

double HeterogeneousViewIDs.init()@<D0>(_OWORD *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    v5 = MEMORY[0x1E69E7CC0];
    v6 = __CocoaSet.count.getter();
    if (v6)
    {
      v5 = v6;
      v8 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs10AnyKeyPathC_Tt1g5(v6, 0, v7);
      specialized Array._copyContents(initializing:)(v8 + 32, v5, MEMORY[0x1E69E7CC0]);
      v10 = v9;

      v2 = v8;
      if (v10 == v5)
      {
        goto LABEL_2;
      }

      __break(1u);
    }

    v2 = v5;
  }

LABEL_2:
  HeterogeneousCollection.init(_:)(v2, v11);
  result = *v11;
  v4 = v11[1];
  *a1 = v11[0];
  a1[1] = v4;
  return result;
}

double static HeterogeneousViewIDs.empty.getter@<D0>(_OWORD *a1@<X8>)
{
  if (one-time initialization token for empty != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = *(&static HeterogeneousViewIDs.empty + 1);
  *a1 = static HeterogeneousViewIDs.empty;
  *(a1 + 1) = v1;
  a1[1] = xmmword_1EAB1F010;

  return result;
}

uint64_t HeterogeneousViewIDs.count.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v1 + 16);
  if (v2)
  {
    return *(v1 + 4 * v2 + 28);
  }

  else
  {
    return 0;
  }
}

uint64_t HeterogeneousViewIDs.subscript.getter@<X0>(unint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = v2[1];
  v25 = *v2;
  v26 = v5;
  v27 = *(v2 + 1);

  HeterogeneousCollection.element(at:)(a1);

  outlined init with copy of Any(v29, v24);
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for CanonicalViewIDProtocol, &protocol descriptor for CanonicalViewIDProtocol);
  if (swift_dynamicCast())
  {
    outlined init with take of AnyTrackedValue(&v21, &v25);
    v6 = *(&v27 + 1);
    v7 = v28;
    v8 = __swift_project_boxed_opaque_existential_1(&v25, *(&v27 + 1));
    v9 = MEMORY[0x1EEE9AC00](v8);
    (*(v11 + 16))(&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
    (*(v7 + 24))(v6, v7);
LABEL_5:
    __swift_destroy_boxed_opaque_existential_1(&v25);
    return __swift_destroy_boxed_opaque_existential_1(v29);
  }

  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  outlined destroy of CanonicalViewIDProtocol?(&v21, &lazy cache variable for type metadata for CanonicalViewIDProtocol?, &lazy cache variable for type metadata for CanonicalViewIDProtocol, &protocol descriptor for CanonicalViewIDProtocol, type metadata accessor for ScrollStateRequest?);
  outlined init with copy of Any(v29, v24);
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for Hashable, MEMORY[0x1E69E5EA0]);
  if (swift_dynamicCast())
  {
    outlined init with take of AnyTrackedValue(&v21, &v25);
    v12 = *(&v27 + 1);
    v13 = __swift_project_boxed_opaque_existential_1(&v25, *(&v27 + 1));
    v14 = MEMORY[0x1EEE9AC00](v13);
    v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v17 + 16))(v16, v14);
    AnyHashable2.init<A>(_:)(v16, v12, &v21);
    v18 = v21;
    *a2 = 0xFFFFFFFF00000000;
    a2[1] = v18;
    goto LABEL_5;
  }

  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  outlined destroy of CanonicalViewIDProtocol?(&v21, &lazy cache variable for type metadata for Hashable?, &lazy cache variable for type metadata for Hashable, MEMORY[0x1E69E5EA0], type metadata accessor for ScrollStateRequest?);
  v25 = 0;
  v26 = 0xE000000000000000;
  _StringGuts.grow(_:)(21);
  MEMORY[0x193ABEDD0](0xD000000000000010, 0x800000018DD7BE60);
  v20 = _typeName(_:qualified:)();
  MEMORY[0x193ABEDD0](v20);

  MEMORY[0x193ABEDD0](32, 0xE100000000000000);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void HeterogeneousViewIDs.forEach(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v8[2] = a1;
  v8[3] = a2;
  v4 = *(v3 + 16);
  if (v4)
  {

    swift_retain_n();

    v5 = 0;
    while (v5 < *(v3 + 16))
    {
      v6 = *(v3 + 8 * v5++ + 32);
      v7 = *(*v6 + 128);

      v7(partial apply for closure #1 in HeterogeneousViewIDs.forEach(_:), v8);

      if (v4 == v5)
      {

        return;
      }
    }

    __break(1u);
  }
}

void closure #1 in HeterogeneousViewIDs.forEach(_:)(uint64_t a1, void (*a2)(unint64_t *))
{
  outlined init with copy of Any(a1, v22);
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for CanonicalViewIDProtocol, &protocol descriptor for CanonicalViewIDProtocol);
  if (swift_dynamicCast())
  {
    outlined init with take of AnyTrackedValue(&v19, &v23);
    v4 = v25;
    v5 = v26;
    v6 = __swift_project_boxed_opaque_existential_1(&v23, v25);
    v7 = MEMORY[0x1EEE9AC00](v6);
    (*(v9 + 16))(&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    (*(v5 + 24))(&v19, v4, v5);
    __swift_destroy_boxed_opaque_existential_1(&v23);
    v10 = *(&v19 + 1);
    v11 = v19;
LABEL_5:
    v23 = v11;
    v24 = v10;
    a2(&v23);

    return;
  }

  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  outlined destroy of CanonicalViewIDProtocol?(&v19, &lazy cache variable for type metadata for CanonicalViewIDProtocol?, &lazy cache variable for type metadata for CanonicalViewIDProtocol, &protocol descriptor for CanonicalViewIDProtocol, type metadata accessor for ScrollStateRequest?);
  outlined init with copy of Any(a1, v22);
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for Hashable, MEMORY[0x1E69E5EA0]);
  if (swift_dynamicCast())
  {
    outlined init with take of AnyTrackedValue(&v19, &v23);
    v12 = v25;
    v13 = __swift_project_boxed_opaque_existential_1(&v23, v25);
    v14 = MEMORY[0x1EEE9AC00](v13);
    v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v17 + 16))(v16, v14);
    AnyHashable2.init<A>(_:)(v16, v12, &v19);
    v10 = v19;
    __swift_destroy_boxed_opaque_existential_1(&v23);
    v11 = 0xFFFFFFFF00000000;
    goto LABEL_5;
  }

  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  outlined destroy of CanonicalViewIDProtocol?(&v19, &lazy cache variable for type metadata for Hashable?, &lazy cache variable for type metadata for Hashable, MEMORY[0x1E69E5EA0], type metadata accessor for ScrollStateRequest?);
  v23 = 0;
  v24 = 0xE000000000000000;
  _StringGuts.grow(_:)(21);
  MEMORY[0x193ABEDD0](0xD000000000000010, 0x800000018DD7BE60);
  v18 = _typeName(_:qualified:)();
  MEMORY[0x193ABEDD0](v18);

  MEMORY[0x193ABEDD0](32, 0xE100000000000000);
  _print_unlocked<A, B>(_:_:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

SwiftUI::HeterogeneousViewIDIndexLookupTable __swiftcall HeterogeneousViewIDs.makeIndexLookupTableIfNeeded()()
{
  v2 = v0;
  if (*(v1 + 16))
  {
    v3 = *(v1 + 24);
    v4 = *(v1 + 16);
  }

  else
  {

    specialized HeterogeneousIndexLookupTable.init(_:)(v5);
    v3 = v6;
    *(v1 + 16) = v7;
    *(v1 + 24) = v6;
  }

  *v2 = v4;
  v2[1] = v3;

  result.lookupTable.count = v9;
  result.lookupTable.homogenousLookupTable._rawValue = v8;
  return result;
}

uint64_t HeterogeneousViewIDIndexLookupTable.index(for:)(unsigned int *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 1);
  v7 = *v2;
  v6 = v2[1];
  if (!v5)
  {
    return specialized index #1 <A>(explicitID:) in HeterogeneousViewIDIndexLookupTable.index(for:)(*v2, v2[1], v3 | (v4 << 32));
  }

  (*(*v5 + 104))(v15);
  outlined init with take of AnyTrackedValue(v15, v16);
  v8 = v17;
  v9 = v18;
  v10 = __swift_project_boxed_opaque_existential_1(v16, v17);
  if (v3)
  {
    v11 = 0;
  }

  else
  {
    v11 = v4 == -1;
  }

  if (v11)
  {
    v12 = HeterogeneousIndexLookupTable.index<A>(for:)(v10, v7, v6, v8, v9);
  }

  else
  {
    v12 = index #1 <A>(explicitID:) in HeterogeneousViewIDIndexLookupTable.index(for:)(v10, v7, v6, v3 | (v4 << 32), v5, v8);
  }

  v14 = v12;
  __swift_destroy_boxed_opaque_existential_1(v16);
  return v14;
}

uint64_t specialized index #1 <A>(explicitID:) in HeterogeneousViewIDIndexLookupTable.index(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = a3;
  type metadata accessor for TypedCanonicalViewID<Nil>(0);
  if (!*(a1 + 16))
  {
    return 0;
  }

  v5 = v4;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = *(**(*(a1 + 56) + 8 * v6) + 104);
  lazy protocol witness table accessor for type TypedCanonicalViewID<Nil> and conformance TypedCanonicalViewID<A>(&lazy protocol witness table cache variable for type TypedCanonicalViewID<Nil> and conformance TypedCanonicalViewID<A>, type metadata accessor for TypedCanonicalViewID<Nil>, protocol conformance descriptor for TypedCanonicalViewID<A>);
  v10 = v9;

  v11 = v8(&v13, v5, v10);

  return v11;
}

uint64_t index #1 <A>(explicitID:) in HeterogeneousViewIDIndexLookupTable.index(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for TypedCanonicalViewID(0, v15, v16, v14);
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v25 - v20;
  (*(v11 + 16))(v13, a1, a6, v19);
  *v21 = a4;
  (*(v11 + 32))(&v21[*(v17 + 40)], v13, a6);
  swift_getWitnessTable(protocol conformance descriptor for TypedCanonicalViewID<A>, v17);
  v23 = HeterogeneousIndexLookupTable.index<A>(for:)(v21, a2, a3, v17, v22);
  (*(v18 + 8))(v21, v17);
  return v23;
}

uint64_t HeterogeneousViewIDs.init(_:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v10 = _ss15ContiguousArrayV12arrayLiteralAByxGxd_tcfC7SwiftUI29AbstractHomogeneousCollectionC_Tt0g5(MEMORY[0x1E69E7CC0]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  memset(v15, 0, sizeof(v15));
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  (*(v5 + 48))(&v10, v4, v5);
  outlined init with copy of HeterogeneousViewIDsAccumulator(&v10, v8);
  HeterogeneousViewIDsAccumulator.finalize()(v9);
  outlined destroy of HeterogeneousViewIDsAccumulator(&v10);
  v6 = v9[1];
  *a2 = v9[0];
  a2[1] = v6;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

double HeterogeneousViewIDsAccumulator.init()@<D0>(uint64_t a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    v3 = a1;
    v4 = __CocoaSet.count.getter();
    if (v4)
    {
      v6 = v4;
      v1 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs10AnyKeyPathC_Tt1g5(v4, 0, v5);
      specialized Array._copyContents(initializing:)(v1 + 32, v6, MEMORY[0x1E69E7CC0]);
      v8 = v7;

      a1 = v3;
      if (v8 == v6)
      {
        goto LABEL_2;
      }

      __break(1u);
    }

    a1 = v3;
  }

LABEL_2:
  *a1 = v1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 81) = 0u;
  return result;
}

double ContiguousArray<A>.asContiguousArray<A>(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 == a3)
  {
  }

  return result;
}

uint64_t protocol witness for AbstractContiguousArray.isEmpty.getter in conformance <A> ContiguousArray<A>(uint64_t a1)
{
  swift_getWitnessTable(MEMORY[0x1E69E6C20], a1);

  return Collection.isEmpty.getter();
}

uint64_t HeterogeneousViewIDsAccumulator.count.getter()
{
  v1 = *(v0 + 8);
  outlined init with copy of AbstractContiguousArray?(v0 + 16, v6, &lazy cache variable for type metadata for AbstractContiguousArray?, &lazy cache variable for type metadata for AbstractContiguousArray, &protocol descriptor for AbstractContiguousArray, type metadata accessor for ScrollStateRequest?);
  v2 = v7;
  if (v7)
  {
    v3 = v8;
    __swift_project_boxed_opaque_existential_1(v6, v7);
    v4 = (*(v3 + 40))(v2, v3);
    __swift_destroy_boxed_opaque_existential_1(v6);
    result = v1 + v4;
    if (__OFADD__(v1, v4))
    {
      __break(1u);
    }
  }

  else
  {
    outlined destroy of CanonicalViewIDProtocol?(v6, &lazy cache variable for type metadata for AbstractContiguousArray?, &lazy cache variable for type metadata for AbstractContiguousArray, &protocol descriptor for AbstractContiguousArray, type metadata accessor for ScrollStateRequest?);
    return v1;
  }

  return result;
}

uint64_t HeterogeneousViewIDsAccumulator.isEmpty.getter()
{
  if (*(v0 + 8))
  {
    v1 = 0;
  }

  else
  {
    outlined init with copy of AbstractContiguousArray?(v0 + 16, v5, &lazy cache variable for type metadata for AbstractContiguousArray?, &lazy cache variable for type metadata for AbstractContiguousArray, &protocol descriptor for AbstractContiguousArray, type metadata accessor for ScrollStateRequest?);
    v2 = v6;
    if (v6)
    {
      v3 = v7;
      __swift_project_boxed_opaque_existential_1(v5, v6);
      v1 = (*(v3 + 48))(v2, v3);
      __swift_destroy_boxed_opaque_existential_1(v5);
    }

    else
    {
      outlined destroy of CanonicalViewIDProtocol?(v5, &lazy cache variable for type metadata for AbstractContiguousArray?, &lazy cache variable for type metadata for AbstractContiguousArray, &protocol descriptor for AbstractContiguousArray, type metadata accessor for ScrollStateRequest?);
      v1 = 1;
    }
  }

  return v1 & 1;
}

double HeterogeneousViewIDsAccumulator.withBuffer<A>(of:body:)(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = *(v5 + 40);
  if (v10 && (v11 = *(v5 + 48), __swift_project_boxed_opaque_existential_1((v5 + 16), *(v5 + 40)), (v12 = (*(v11 + 24))(a4, a4, v10, v11)) != 0))
  {
    v19[0] = v12;
    outlined destroy of CanonicalViewIDProtocol?(v5 + 16, &lazy cache variable for type metadata for AbstractContiguousArray?, &lazy cache variable for type metadata for AbstractContiguousArray, &protocol descriptor for AbstractContiguousArray, type metadata accessor for ScrollStateRequest?);
    *(v5 + 16) = 0u;
    *(v5 + 32) = 0u;
    *(v5 + 48) = 0;
  }

  else
  {
    outlined init with copy of AbstractContiguousArray?(v5 + 16, &v17, &lazy cache variable for type metadata for AbstractContiguousArray?, &lazy cache variable for type metadata for AbstractContiguousArray, &protocol descriptor for AbstractContiguousArray, type metadata accessor for ScrollStateRequest?);
    if (v18)
    {
      outlined init with take of AnyTrackedValue(&v17, v19);
      v13 = v20;
      v14 = v21;
      v15 = __swift_project_boxed_opaque_existential_1(v19, v20);
      append #1 <A><A1>(buffer:) in HeterogeneousViewIDsAccumulator.append<A>(contentsOf:)(v15, v6, a4, v13, a5, v14);
      outlined destroy of CanonicalViewIDProtocol?(v6 + 16, &lazy cache variable for type metadata for AbstractContiguousArray?, &lazy cache variable for type metadata for AbstractContiguousArray, &protocol descriptor for AbstractContiguousArray, type metadata accessor for ScrollStateRequest?);
      *(v6 + 16) = 0u;
      *(v6 + 32) = 0u;
      *(v6 + 48) = 0;
      __swift_destroy_boxed_opaque_existential_1(v19);
    }

    else
    {
      outlined destroy of CanonicalViewIDProtocol?(&v17, &lazy cache variable for type metadata for AbstractContiguousArray?, &lazy cache variable for type metadata for AbstractContiguousArray, &protocol descriptor for AbstractContiguousArray, type metadata accessor for ScrollStateRequest?);
    }

    v19[0] = ContiguousArray.init()();
  }

  a2(v19);
  $defer #1 <A>() in HeterogeneousViewIDsAccumulator.withBuffer<A>(of:body:)(v6, v19, a4, a5);

  return result;
}

void append #1 <A><A1>(buffer:) in HeterogeneousViewIDsAccumulator.append<A>(contentsOf:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = (*(a6 + 32))(a4, a6, a3);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for HomogeneousCollection(0, AssociatedTypeWitness, AssociatedConformanceWitness, v10);
  specialized HomogeneousCollection.__allocating_init(_:)(v7);
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  v11 = ContiguousArray.count.getter();

  v12 = a2[1];
  v13 = __OFADD__(v12, v11);
  v14 = v12 + v11;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a2[1] = v14;
  }
}

uint64_t $defer #1 <A>() in HeterogeneousViewIDsAccumulator.withBuffer<A>(of:body:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a2;
  v11 = type metadata accessor for ContiguousArray();
  v9 = a4;
  swift_getWitnessTable(protocol conformance descriptor for <A> ContiguousArray<A>, v11, &v9);
  v12 = v7;
  v10[0] = v6;

  return outlined assign with take of AbstractContiguousArray?(v10, a1 + 16, &lazy cache variable for type metadata for AbstractContiguousArray?, &lazy cache variable for type metadata for AbstractContiguousArray, &protocol descriptor for AbstractContiguousArray, type metadata accessor for ScrollStateRequest?);
}

void HeterogeneousViewIDsAccumulator.append(_:)(unsigned int *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 1);
  if (v3)
  {
    (*(*v3 + 104))(v8);
    outlined init with take of AnyTrackedValue(v8, v9);
    v4 = v10;
    v5 = v11;
    v6 = __swift_project_boxed_opaque_existential_1(v9, v10);
    HeterogeneousViewIDsAccumulator.append<A>(index:implicitID:explicitID:)(v1, v2, v6, v4, v5);
    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  else
  {
    v7 = *a1;

    HeterogeneousViewIDsAccumulator.append(index:implicitID:)(v7, v2);
  }
}

void HeterogeneousViewIDsAccumulator.append<A>(index:implicitID:explicitID:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a1;
  v10 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TypedCanonicalViewID(0, v13, v14, v13);
  v16 = *(v15 - 8);
  v18.n128_f64[0] = MEMORY[0x1EEE9AC00](v15);
  v20 = &v24 - v19;
  if (v9 || a2 != -1)
  {
    (*(v10 + 16))(v12, a3, a4, v18);
    *v20 = v9;
    *(v20 + 1) = a2;
    (*(v10 + 32))(&v20[*(v15 + 40)], v12, a4);
    v23 = HeterogeneousViewIDsAccumulator.append<A>(_:)(v20, a4, a5, v22);
    (*(v16 + 8))(v20, v15, v23);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v17);
    *(&v24 - 4) = a4;
    *(&v24 - 3) = a5;
    *(&v24 - 2) = a3;
    HeterogeneousViewIDsAccumulator.withBuffer<A>(of:body:)(v21, partial apply for closure #1 in HeterogeneousViewIDsAccumulator.append<A>(index:implicitID:explicitID:), (&v24 - 6), a4, a5);
  }
}

Swift::Void __swiftcall HeterogeneousViewIDsAccumulator.append(index:implicitID:)(Swift::Int32 index, Swift::Int32 implicitID)
{
  v3 = *&implicitID;
  v4 = *&index;
  outlined init with copy of AbstractContiguousArray?(v2 + 56, &v10, &lazy cache variable for type metadata for (Hashable, isUnary: Bool)?, type metadata accessor for (Hashable, isUnary: Bool), MEMORY[0x1E69E6720], type metadata accessor for ContiguousArray<TypedCanonicalViewID<Nil>>);
  if (*&v11[8])
  {
    *&v13[9] = *&v11[9];
    v12 = v10;
    *v13 = *v11;
    v5 = *&v11[8];
    v6 = *&v11[9] >> 56;
    v7 = __swift_project_boxed_opaque_existential_1(&v12, *&v11[8]);
    outlined init with copy of (Hashable, isUnary: Bool)(&v12, &v10, type metadata accessor for (Hashable, isUnary: Bool));
    v8 = v11[24];
    __swift_destroy_boxed_opaque_existential_1(&v10);
    if (v8)
    {
      v9 = -1;
    }

    else
    {
      v9 = v3;
    }

    HeterogeneousViewIDsAccumulator.append<A>(index:implicitID:explicitID:)(v4, v9, v7, v5, v6);
    outlined destroy of (Hashable, isUnary: Bool)(&v12, type metadata accessor for (Hashable, isUnary: Bool));
  }

  else
  {
    outlined destroy of CanonicalViewIDProtocol?(&v10, &lazy cache variable for type metadata for (Hashable, isUnary: Bool)?, type metadata accessor for (Hashable, isUnary: Bool), MEMORY[0x1E69E6720], type metadata accessor for ContiguousArray<TypedCanonicalViewID<Nil>>);
    specialized HeterogeneousViewIDsAccumulator.append<A>(_:)(v4 | (v3 << 32));
  }
}

uint64_t specialized HeterogeneousViewIDsAccumulator.append<A>(_:)(unint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = HIDWORD(a1);
  v5 = v1[5];
  if (v5 && (v6 = v1[6], __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]), type metadata accessor for TypedCanonicalViewID<Nil>(0), (v8 = (*(v6 + 24))(v7, v7, v5, v6)) != 0))
  {
    v9 = v8;
    outlined destroy of CanonicalViewIDProtocol?((v2 + 2), &lazy cache variable for type metadata for AbstractContiguousArray?, &lazy cache variable for type metadata for AbstractContiguousArray, &protocol descriptor for AbstractContiguousArray, type metadata accessor for ScrollStateRequest?);
    *(v2 + 1) = 0u;
    *(v2 + 2) = 0u;
    v2[6] = 0;
    *&v23 = v9;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_10;
    }

    v10 = *(v9 + 16) + 1;
  }

  else
  {
    outlined init with copy of AbstractContiguousArray?((v1 + 2), &v23, &lazy cache variable for type metadata for AbstractContiguousArray?, &lazy cache variable for type metadata for AbstractContiguousArray, &protocol descriptor for AbstractContiguousArray, type metadata accessor for ScrollStateRequest?);
    if (v24)
    {
      outlined init with take of AnyTrackedValue(&v23, v25);
      v11 = v26;
      v12 = v27;
      v13 = __swift_project_boxed_opaque_existential_1(v25, v26);
      type metadata accessor for TypedCanonicalViewID<Nil>(0);
      v15 = v14;
      lazy protocol witness table accessor for type TypedCanonicalViewID<Nil> and conformance TypedCanonicalViewID<A>(&lazy protocol witness table cache variable for type TypedCanonicalViewID<Nil> and conformance TypedCanonicalViewID<A>, type metadata accessor for TypedCanonicalViewID<Nil>, protocol conformance descriptor for TypedCanonicalViewID<A>);
      append #1 <A><A1>(buffer:) in HeterogeneousViewIDsAccumulator.append<A>(contentsOf:)(v13, v2, v15, v11, v16, v12);
      outlined destroy of CanonicalViewIDProtocol?((v2 + 2), &lazy cache variable for type metadata for AbstractContiguousArray?, &lazy cache variable for type metadata for AbstractContiguousArray, &protocol descriptor for AbstractContiguousArray, type metadata accessor for ScrollStateRequest?);
      *(v2 + 1) = 0u;
      *(v2 + 2) = 0u;
      v2[6] = 0;
      __swift_destroy_boxed_opaque_existential_1(v25);
    }

    else
    {
      outlined destroy of CanonicalViewIDProtocol?(&v23, &lazy cache variable for type metadata for AbstractContiguousArray?, &lazy cache variable for type metadata for AbstractContiguousArray, &protocol descriptor for AbstractContiguousArray, type metadata accessor for ScrollStateRequest?);
    }

    *&v23 = MEMORY[0x1E69E7CC0];
    v10 = 1;
  }

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 1);
  v9 = v23;
LABEL_10:
  v18 = *(v9 + 16);
  v17 = *(v9 + 24);
  if (v18 >= v17 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
    v9 = v23;
  }

  *(v9 + 16) = v18 + 1;
  v19 = v9 + 8 * v18;
  *(v19 + 32) = v3;
  *(v19 + 36) = v4;
  type metadata accessor for ContiguousArray<TypedCanonicalViewID<Nil>>(0, &lazy cache variable for type metadata for ContiguousArray<TypedCanonicalViewID<Nil>>, type metadata accessor for TypedCanonicalViewID<Nil>, MEMORY[0x1E69E6BE8]);
  v26 = v20;
  lazy protocol witness table accessor for type ContiguousArray<TypedCanonicalViewID<Nil>> and conformance <A> ContiguousArray<A>();
  v27 = v21;
  v25[0] = v9;
  return outlined assign with take of AbstractContiguousArray?(v25, (v2 + 2), &lazy cache variable for type metadata for AbstractContiguousArray?, &lazy cache variable for type metadata for AbstractContiguousArray, &protocol descriptor for AbstractContiguousArray, type metadata accessor for ScrollStateRequest?);
}

double HeterogeneousViewIDsAccumulator.append<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for TypedCanonicalViewID(0, a2, a3, a4);
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a1;
  swift_getWitnessTable(protocol conformance descriptor for TypedCanonicalViewID<A>, v7);
  return HeterogeneousViewIDsAccumulator.withBuffer<A>(of:body:)(v8, partial apply for closure #1 in HeterogeneousViewIDsAccumulator.append<A>(_:), v10, v7, v8);
}

uint64_t closure #1 in HeterogeneousViewIDsAccumulator.append<A>(index:implicitID:explicitID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  type metadata accessor for ContiguousArray();
  return ContiguousArray.append(_:)();
}

uint64_t closure #1 in HeterogeneousViewIDsAccumulator.append<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for TypedCanonicalViewID(0, a3, a4, a4);
  v6 = MEMORY[0x1EEE9AC00](v5);
  (*(v8 + 16))(&v10 - v7, a2, v5, v6);
  type metadata accessor for ContiguousArray();
  return ContiguousArray.append(_:)();
}

uint64_t HeterogeneousViewIDsAccumulator.UnsafeOutputBuffer.init<A>(buffer:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = type metadata accessor for TypedCanonicalViewID(0, a3, a4, a4);
  result = UnsafeMutableBufferPointer.baseAddress.getter();
  if (result)
  {
    v9 = *(*(v7 - 8) + 72);
    v10 = *(v7 + 40);
    *a5 = result;
    *(a5 + 8) = a2;
    *(a5 + 16) = v9;
    *(a5 + 24) = xmmword_18DDD9A00;
    *(a5 + 40) = v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void HeterogeneousViewIDsAccumulator.UnsafeOutputBuffer.initialize<A>(at:index:implicitID:explicitID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v5[2];
  v16 = v15 * v14;
  if ((v15 * v14) >> 64 == (v15 * v14) >> 63)
  {
    v17 = v5[4];
    v18 = v5[5];
    v19 = v5[3];
    v20 = *v5 + v16;
    *(v20 + v19) = v7;
    *(v20 + v17) = v8;
    (*(v10 + 16))(v13, v9, a5, v11);
    _sSpsRi_zrlE10initialize2toyxn_tF(v13, v20 + v18, a5);
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall HeterogeneousViewIDsAccumulator.UnsafeOutputBuffer.initialize(at:index:implicitID:)(Swift::Int at, Swift::Int32 index, Swift::Int32 implicitID)
{
  v4 = v3[2];
  v5 = at * v4;
  if ((at * v4) >> 64 == (at * v4) >> 63)
  {
    v6 = v3[4];
    v7 = *v3 + v5;
    *(v7 + v3[3]) = index;
    *(v7 + v6) = implicitID;
  }

  else
  {
    __break(1u);
  }
}

uint64_t HeterogeneousViewIDsAccumulator.UnsafeOutputBuffer.mutableExplicitIDPointer<A>(at:for:)(uint64_t result)
{
  v2 = v1[2];
  if ((result * v2) >> 64 == (result * v2) >> 63)
  {
    return *v1 + v1[5] + result * v2;
  }

  __break(1u);
  return result;
}

double HeterogeneousViewIDsAccumulator.appendWithUnsafeOutputBuffer<A>(explicitID:count:body:)(uint64_t a1, uint64_t a2)
{
  if (a2 >= 1)
  {
    MEMORY[0x1EEE9AC00](a1);
    v12[2] = v2;
    v12[3] = v3;
    v12[4] = v4;
    v12[5] = v5;
    v12[6] = v6;
    v7 = v6;
    v8 = type metadata accessor for TypedCanonicalViewID(0, v2, v3, v5);
    v9 = ContiguousArray.init(unsafeUninitializedCapacity:initializingWith:)(v7, partial apply for closure #1 in HeterogeneousViewIDsAccumulator.appendWithUnsafeOutputBuffer<A>(explicitID:count:body:), v12, v8);
    swift_getWitnessTable(protocol conformance descriptor for TypedCanonicalViewID<A>, v8);
    HeterogeneousViewIDsAccumulator.append<A>(contentsOf:)(v9, v8, v10);
  }

  return result;
}

uint64_t closure #1 in HeterogeneousViewIDsAccumulator.appendWithUnsafeOutputBuffer<A>(explicitID:count:body:)(uint64_t *a1, void *a2, uint64_t (*a3)(uint64_t *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  HeterogeneousViewIDsAccumulator.UnsafeOutputBuffer.init<A>(buffer:)(a1[1], a6, a7, &v15);
  v11 = v15;
  v12 = v16;
  v13 = v17;
  v14 = v18;
  result = a3(&v11);
  *a2 = a5;
  return result;
}

double HeterogeneousViewIDsAccumulator.append<A>(indices:implicitID:explicitID:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  while (1)
  {
    v5 = HIDWORD(result);
    if (result == HIDWORD(result))
    {
      break;
    }

    if (result > 0 || SHIDWORD(result) < 1 || a2 != -1)
    {
      v11 = a2 == -1;
      v12 = result;
      v13 = a5;
      v14 = a4;
      v15 = a3;
      v16 = a2;
      v17 = specialized Collection.count.getter(result);
      MEMORY[0x1EEE9AC00](v17);
      v19[4] = v12;
      v19[5] = v5;
      v19[6] = v16;
      return HeterogeneousViewIDsAccumulator.prepareForAppendWithSingleExplicitID<A>(explicitID:isUnary:count:body:)(v15, v11, v18, partial apply for closure #1 in HeterogeneousViewIDsAccumulator.append<A>(indices:implicitID:explicitID:), v19, v14, v13);
    }

    v6 = result;
    v7 = a3;
    v8 = a4;
    v9 = a5;
    HeterogeneousViewIDsAccumulator.append<A>(indices:implicitID:explicitID:)(result, a2, a3, a4, a5);
    HeterogeneousViewIDsAccumulator.append<A>(index:implicitID:explicitID:)(0, -1, v7, v8, v9);
    result = v6 & 0xFFFFFFFF00000000 | 1;
    a2 = 0xFFFFFFFFLL;
    a3 = v7;
    a4 = v8;
    a5 = v9;
  }

  return v10;
}

uint64_t (*closure #1 in HeterogeneousViewIDsAccumulator.append<A>(indices:implicitID:explicitID:)(uint64_t (*result)(unint64_t, uint64_t), uint64_t a2, unint64_t a3, uint64_t a4))(unint64_t, uint64_t)
{
  v4 = HIDWORD(a3);
  if (a3 != HIDWORD(a3))
  {
    if (SHIDWORD(a3) >= a3)
    {
      v6 = result;
      while (a3 < v4)
      {
        v7 = (a3 + 1);
        result = v6(a3, a4);
        a3 = v7;
        if (v4 == v7)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

double HeterogeneousViewIDsAccumulator.prepareForAppendWithSingleExplicitID<A>(explicitID:isUnary:count:body:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = type metadata accessor for TypedCanonicalViewID(0, a6, a7, a4);
  v17[2] = a6;
  v17[3] = a7;
  v17[4] = a3;
  v17[5] = a4;
  v17[6] = a5;
  v18 = a2;
  v19 = a1;
  swift_getWitnessTable(protocol conformance descriptor for TypedCanonicalViewID<A>, v14);
  return HeterogeneousViewIDsAccumulator.withBuffer<A>(of:body:)(v15, partial apply for closure #1 in HeterogeneousViewIDsAccumulator.prepareForAppendWithSingleExplicitID<A>(explicitID:isUnary:count:body:), v17, v14, v15);
}

uint64_t closure #1 in HeterogeneousViewIDsAccumulator.prepareForAppendWithSingleExplicitID<A>(explicitID:isUnary:count:body:)(uint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t (*)(), double), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  type metadata accessor for TypedCanonicalViewID(0, a7, a8, a4);
  result = ContiguousArray.count.getter();
  v11 = __OFADD__(result, a2);
  v12 = result + a2;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for ContiguousArray();
    ContiguousArray.reserveCapacity(_:)(v12);
    v14 = MEMORY[0x1EEE9AC00](v13);
    return a3(partial apply for closure #1 in closure #1 in HeterogeneousViewIDsAccumulator.prepareForAppendWithSingleExplicitID<A>(explicitID:isUnary:count:body:), v14);
  }

  return result;
}

uint64_t closure #1 in closure #1 in HeterogeneousViewIDsAccumulator.prepareForAppendWithSingleExplicitID<A>(explicitID:isUnary:count:body:)(uint64_t a1, int a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v10 = a1;
  v11 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for TypedCanonicalViewID(0, v15, v16, v14);
  v18.n128_f64[0] = MEMORY[0x1EEE9AC00](v17);
  v20 = &v23 - v19;
  if (a4)
  {
    v21 = -1;
  }

  else
  {
    v21 = a2;
  }

  (*(v11 + 16))(v13, a5, a6, v18);
  *v20 = v10;
  *(v20 + 1) = v21;
  (*(v11 + 32))(&v20[*(v17 + 40)], v13, a6);
  type metadata accessor for ContiguousArray();
  return ContiguousArray.append(_:)();
}

uint64_t HeterogeneousViewIDsAccumulator.appendSlowPath<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  v6 = 0;
  return ViewList.applyIDs(from:transform:to:)(&v7, &v5, partial apply for closure #1 in HeterogeneousViewIDsAccumulator.appendSlowPath<A>(_:), &v4, a2, a3);
}

uint64_t closure #1 in HeterogeneousViewIDsAccumulator.appendSlowPath<A>(_:)(void *a1)
{
  v1 = a1[1];
  v10[0] = *a1;
  v10[1] = v1;

  v2 = _ViewList_ID.Canonical.init(id:)(v10, &v13);
  v3 = v13;
  v4 = v14;
  if (v15)
  {
    (*(*v15 + 104))(v9, v2);
    outlined init with take of AnyTrackedValue(v9, v10);
    v5 = v11;
    v6 = v12;
    v7 = __swift_project_boxed_opaque_existential_1(v10, v11);
    HeterogeneousViewIDsAccumulator.append<A>(index:implicitID:explicitID:)(v3, v4, v7, v5, v6);
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    HeterogeneousViewIDsAccumulator.append(index:implicitID:)(v13, v14);
  }

  return 1;
}

uint64_t specialized BidirectionalCollection._distance(from:to:)(uint64_t a1, BOOL a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v43 = a3;
  type metadata accessor for RangeSet<String.Index>.Ranges(0, &lazy cache variable for type metadata for RangeSet<String.Index>.Ranges, MEMORY[0x1E69E7BA8]);
  v45 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v38 - v9;
  type metadata accessor for RangeSet<String.Index>.Ranges(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E7BE0]);
  v46 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v38 - v13;
  type metadata accessor for RangeSet<String.Index>.Ranges(0, &lazy cache variable for type metadata for SelectionRanges<String.Index>, type metadata accessor for SelectionRanges);
  v48 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v44 = &v38 - v19;
  type metadata accessor for (SelectionRanges<String.Index>, SelectionRanges<String.Index>.Index)(0);
  v47 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v38 - v24;
  if (a2)
  {
    if (v4)
    {
      if (a1 >= v43)
      {
        if (v43 >= a1)
        {
          return 0;
        }

        goto LABEL_22;
      }

LABEL_7:
      v40 = (v8 + 8);
      v41 = (v12 + 32);
      v42 = (v12 + 8);
      LODWORD(v38) = v4;
      LODWORD(v39) = v4 | v43 ^ 1;
      v26 = 1;
      while (1)
      {
        v28 = &v25[*(v47 + 48)];
        outlined init with copy of SelectionRanges<String.Index>(v49, v25);
        *v28 = a1;
        *(v28 + 8) = a2;
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v30 = EnumCaseMultiPayload == 1;
        if (EnumCaseMultiPayload == 1)
        {
          v28 = v44;
          outlined init with copy of SelectionRanges<String.Index>(v25, v44);
          if (!a2)
          {
            goto LABEL_43;
          }

          v31 = v46;
          (*v41)(v14, v28, v46);
          RangeSet.ranges.getter();
          v52 = a1;
          lazy protocol witness table accessor for type RangeSet<String.Index>.Ranges and conformance RangeSet<A>.Ranges();
          v28 = v10;
          v32 = v45;
          dispatch thunk of Collection.startIndex.getter();
          dispatch thunk of Collection.endIndex.getter();
          v54 = v51;
          v55 = v50;
          dispatch thunk of Collection._failEarlyRangeCheck(_:bounds:)();
          (*v40)(v10, v32);
          (*v42)(v14, v31);
          v27 = __OFADD__(a1++, 1);
          if (v27)
          {
            goto LABEL_41;
          }

          outlined destroy of SelectionRanges<String.Index>(v25);
          if ((v38 & 1) != 0 && a1 == v43)
          {
            return v26;
          }
        }

        else
        {
          if (a2 || (a1 & 1) != 0)
          {
            goto LABEL_46;
          }

          outlined destroy of SelectionRanges<String.Index>(v25);
          if ((v39 & 1) == 0)
          {
            return v26;
          }

          a1 = 1;
        }

        a2 = v30;
        v27 = __OFADD__(v26++, 1);
        if (v27)
        {
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          (*v42)(v28, v46);
          goto LABEL_45;
        }
      }
    }
  }

  else
  {
    if (v4)
    {
      goto LABEL_7;
    }

    if ((a1 & 1) == 0)
    {
      if ((v43 & 1) == 0 || ((v43 ^ a1) & 1) == 0)
      {
        return 0;
      }

      goto LABEL_7;
    }

    if ((v43 & 1) != 0 || ((v43 ^ a1) & 1) == 0)
    {
      return 0;
    }
  }

LABEL_22:
  v42 = (v12 + 32);
  v38 = (v8 + 8);
  v39 = (v12 + 8);
  LODWORD(v41) = v4 | v43;
  v26 = -1;
  v40 = v17;
  while (1)
  {
    v28 = &v22[*(v47 + 48)];
    outlined init with copy of SelectionRanges<String.Index>(v49, v22);
    *v28 = a1;
    *(v28 + 8) = a2;
    v34 = swift_getEnumCaseMultiPayload();
    v33 = v34 == 1;
    if (v34 == 1)
    {
      break;
    }

    if (a2 || (a1 & 1) == 0)
    {
      goto LABEL_46;
    }

    outlined destroy of SelectionRanges<String.Index>(v22);
    if ((v41 & 1) == 0)
    {
      return v26;
    }

    a1 = 0;
LABEL_24:
    a2 = v33;
    v27 = __OFSUB__(v26--, 1);
    if (v27)
    {
      goto LABEL_40;
    }
  }

  outlined init with copy of SelectionRanges<String.Index>(v22, v17);
  if (a2)
  {
    v35 = v46;
    (*v42)(v14, v17, v46);
    v28 = v14;
    RangeSet.ranges.getter();
    v27 = __OFSUB__(a1--, 1);
    if (v27)
    {
      goto LABEL_42;
    }

    LODWORD(v44) = v33;
    v52 = a1;
    lazy protocol witness table accessor for type RangeSet<String.Index>.Ranges and conformance RangeSet<A>.Ranges();
    v36 = v45;
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    v54 = v51;
    v55 = v50;
    dispatch thunk of Collection._failEarlyRangeCheck(_:bounds:)();
    (*v38)(v10, v36);
    v28 = v14;
    (*v39)(v14, v35);
    outlined destroy of SelectionRanges<String.Index>(v22);
    if (v4)
    {
      v17 = v40;
      LOBYTE(v33) = v44;
      if (a1 == v43)
      {
        return v26;
      }
    }

    else
    {
      v17 = v40;
      LOBYTE(v33) = v44;
    }

    goto LABEL_24;
  }

  (*v39)(v17, v46);
LABEL_45:
  a2 = 0;
LABEL_46:
  v54 = 0;
  v55 = 0xE000000000000000;
  _StringGuts.grow(_:)(28);
  MEMORY[0x193ABEDD0](0x207865646E49, 0xE600000000000000);
  v52 = a1;
  v53 = a2;
  type metadata accessor for RangeSet<String.Index>.Ranges(0, &lazy cache variable for type metadata for SelectionRanges<String.Index>.Index, type metadata accessor for SelectionRanges.Index);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](0xD000000000000012, 0x800000018DD7BE80);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized BidirectionalCollection._distance(from:to:)(uint64_t a1, char a2, uint64_t a3, int a4, double a5)
{
  v45 = a3;
  type metadata accessor for RangeSet<AttributedString.Index>.Ranges(0, a5);
  v9 = v8;
  v41 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RangeSet<AttributedString.Index>.Ranges(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0], v10);
  v14 = v13;
  v15 = *(v13 - 8);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v40 - v17;
  type metadata accessor for SelectionRanges<AttributedString.Index>(0, v16);
  v48 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v43 = (&v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = MEMORY[0x1EEE9AC00](v21);
  v44 = &v40 - v23;
  type metadata accessor for (SelectionRanges<AttributedString.Index>, SelectionRanges<AttributedString.Index>.Index)(0, v22);
  v47 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v40 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v40 - v28;
  v46 = a4;
  if (a2)
  {
    if (a4)
    {
      if (a1 >= v45)
      {
        if (v45 >= a1)
        {
          return 0;
        }

        goto LABEL_22;
      }

LABEL_7:
      ++v41;
      v42 = (v15 + 32);
      v43 = (v15 + 8);
      LODWORD(v40) = a4 | v45 ^ 1;
      v30 = 1;
      while (1)
      {
        v32 = &v29[*(v47 + 48)];
        outlined init with copy of (Hashable, isUnary: Bool)(v49, v29, type metadata accessor for SelectionRanges<AttributedString.Index>);
        *v32 = a1;
        v32[8] = a2 & 1;
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v34 = EnumCaseMultiPayload == 1;
        if (EnumCaseMultiPayload == 1)
        {
          v32 = v44;
          outlined init with copy of (Hashable, isUnary: Bool)(v29, v44, type metadata accessor for SelectionRanges<AttributedString.Index>);
          if ((a2 & 1) == 0)
          {
            goto LABEL_42;
          }

          (*v42)(v18, v32, v14);
          RangeSet.ranges.getter();
          v52 = a1;
          lazy protocol witness table accessor for type TypedCanonicalViewID<Nil> and conformance TypedCanonicalViewID<A>(&lazy protocol witness table cache variable for type RangeSet<AttributedString.Index>.Ranges and conformance RangeSet<A>.Ranges, type metadata accessor for RangeSet<AttributedString.Index>.Ranges, MEMORY[0x1E69E7BC8]);
          v32 = v12;
          dispatch thunk of Collection.startIndex.getter();
          dispatch thunk of Collection.endIndex.getter();
          v54 = v51;
          v55 = v50;
          dispatch thunk of Collection._failEarlyRangeCheck(_:bounds:)();
          (*v41)(v12, v9);
          (*v43)(v18, v14);
          v31 = __OFADD__(a1++, 1);
          if (v31)
          {
            goto LABEL_40;
          }

          outlined destroy of (Hashable, isUnary: Bool)(v29, type metadata accessor for SelectionRanges<AttributedString.Index>);
          if ((v46 & 1) != 0 && a1 == v45)
          {
            return v30;
          }
        }

        else
        {
          if (a2 & 1) != 0 || (a1)
          {
            goto LABEL_45;
          }

          outlined destroy of (Hashable, isUnary: Bool)(v29, type metadata accessor for SelectionRanges<AttributedString.Index>);
          if ((v40 & 1) == 0)
          {
            return v30;
          }

          a1 = 1;
        }

        a2 = v34;
        v31 = __OFADD__(v30++, 1);
        if (v31)
        {
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          v38 = v43;
          goto LABEL_44;
        }
      }
    }
  }

  else
  {
    if (a4)
    {
      goto LABEL_7;
    }

    if ((a1 & 1) == 0)
    {
      if ((v45 & 1) == 0 || ((v45 ^ a1) & 1) == 0)
      {
        return 0;
      }

      goto LABEL_7;
    }

    if ((v45 & 1) != 0 || ((v45 ^ a1) & 1) == 0)
    {
      return 0;
    }
  }

LABEL_22:
  v44 = (v15 + 32);
  v40 = v41 + 1;
  v41 = (v15 + 8);
  LODWORD(v42) = a4 | v45;
  v30 = -1;
  while (1)
  {
    v32 = &v26[*(v47 + 48)];
    outlined init with copy of (Hashable, isUnary: Bool)(v49, v26, type metadata accessor for SelectionRanges<AttributedString.Index>);
    *v32 = a1;
    v32[8] = a2 & 1;
    v35 = swift_getEnumCaseMultiPayload();
    v36 = v35 == 1;
    if (v35 != 1)
    {
      if ((a2 & 1) != 0 || (a1 & 1) == 0)
      {
        goto LABEL_45;
      }

      outlined destroy of (Hashable, isUnary: Bool)(v26, type metadata accessor for SelectionRanges<AttributedString.Index>);
      if ((v42 & 1) == 0)
      {
        return v30;
      }

      a1 = 0;
      goto LABEL_23;
    }

    v32 = v43;
    outlined init with copy of (Hashable, isUnary: Bool)(v26, v43, type metadata accessor for SelectionRanges<AttributedString.Index>);
    if ((a2 & 1) == 0)
    {
      break;
    }

    (*v44)(v18, v32, v14);
    v32 = v18;
    RangeSet.ranges.getter();
    v31 = __OFSUB__(a1--, 1);
    if (v31)
    {
      goto LABEL_41;
    }

    v52 = a1;
    lazy protocol witness table accessor for type TypedCanonicalViewID<Nil> and conformance TypedCanonicalViewID<A>(&lazy protocol witness table cache variable for type RangeSet<AttributedString.Index>.Ranges and conformance RangeSet<A>.Ranges, type metadata accessor for RangeSet<AttributedString.Index>.Ranges, MEMORY[0x1E69E7BC8]);
    v32 = v12;
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    v54 = v51;
    v55 = v50;
    dispatch thunk of Collection._failEarlyRangeCheck(_:bounds:)();
    (*v40)(v12, v9);
    (*v41)(v18, v14);
    outlined destroy of (Hashable, isUnary: Bool)(v26, type metadata accessor for SelectionRanges<AttributedString.Index>);
    if ((v46 & 1) != 0 && a1 == v45)
    {
      return v30;
    }

LABEL_23:
    a2 = v36;
    v31 = __OFSUB__(v30--, 1);
    if (v31)
    {
      goto LABEL_39;
    }
  }

  v38 = v41;
LABEL_44:
  (*v38)(v32, v14);
  a2 = 0;
LABEL_45:
  v54 = 0;
  v55 = 0xE000000000000000;
  _StringGuts.grow(_:)(28);
  v39 = MEMORY[0x193ABEDD0](0x207865646E49, 0xE600000000000000);
  v52 = a1;
  v53 = a2 & 1;
  type metadata accessor for RangeSet<AttributedString.Index>.Ranges(0, &lazy cache variable for type metadata for SelectionRanges<AttributedString.Index>.Index, type metadata accessor for SelectionRanges.Index, v39);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](0xD000000000000012, 0x800000018DD7BE80);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void *initializeBufferWithCopyOfBuffer for TypedCanonicalViewID(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  if (v5 <= 7 && (*(v4 + 80) & 0x100000) == 0 && ((-9 - v5) | v5) - *(*(*(a3 + 16) - 8) + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    *a1 = *a2;
    v9 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v10 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v9 = *v10;
    (*(v4 + 16))((v9 + v5 + 4) & ~v5, (v10 + v5 + 4) & ~v5);
  }

  else
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + ((v5 & 0xFC ^ 0x1FC) & (v5 + 16)));
  }

  return v3;
}

_DWORD *initializeWithCopy for TypedCanonicalViewID(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  v6 = *(*(a3 + 16) - 8);
  (*(v6 + 16))((v4 + *(v6 + 80) + 4) & ~*(v6 + 80), (v5 + *(v6 + 80) + 4) & ~*(v6 + 80));
  return a1;
}

_DWORD *assignWithCopy for TypedCanonicalViewID(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  v6 = *(*(a3 + 16) - 8);
  (*(v6 + 24))((v4 + *(v6 + 80) + 4) & ~*(v6 + 80), (v5 + *(v6 + 80) + 4) & ~*(v6 + 80));
  return a1;
}

_DWORD *initializeWithTake for TypedCanonicalViewID(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  v6 = *(*(a3 + 16) - 8);
  (*(v6 + 32))((v4 + *(v6 + 80) + 4) & ~*(v6 + 80), (v5 + *(v6 + 80) + 4) & ~*(v6 + 80));
  return a1;
}

_DWORD *assignWithTake for TypedCanonicalViewID(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  v6 = *(*(a3 + 16) - 8);
  (*(v6 + 40))((v4 + *(v6 + 80) + 4) & ~*(v6 + 80), (v5 + *(v6 + 80) + 4) & ~*(v6 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for TypedCanonicalViewID(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + v6 + 4) & ~v6);
  }

  v8 = ((v6 + 8) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + v6 + 4) & ~v6);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

void storeEnumTagSinglePayload for TypedCanonicalViewID(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + 8) & ~v8) + *(v6 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v15 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v14 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v13 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v9] = v14;
              }

              else
              {
                *&a1[v9] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v9] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v12)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v6 + 56);
  v19 = (((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + v8 + 4) & ~v8;

  v18(v19);
}

uint64_t *assignWithCopy for HeterogeneousViewIDsAccumulator(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  v5 = a2[5];
  if (a1[5])
  {
    v6 = a1 + 2;
    if (v5)
    {
      v7.n128_f64[0] = __swift_assign_boxed_opaque_existential_1(v6, a2 + 2, v4);
      goto LABEL_8;
    }

    __swift_destroy_boxed_opaque_existential_1(v6);
  }

  else if (v5)
  {
    a1[5] = v5;
    a1[6] = a2[6];
    (**(v5 - 8))(a1 + 2, a2 + 2);
    goto LABEL_8;
  }

  v7 = *(a2 + 1);
  v8 = *(a2 + 2);
  a1[6] = a2[6];
  *(a1 + 1) = v7;
  *(a1 + 2) = v8;
LABEL_8:
  v9 = a2[10];
  if (a1[10])
  {
    if (!v9)
    {
      outlined destroy of (Hashable, isUnary: Bool)((a1 + 7), type metadata accessor for (Hashable, isUnary: Bool));
      v10 = *(a2 + 81);
      v11 = *(a2 + 9);
      *(a1 + 7) = *(a2 + 7);
      *(a1 + 9) = v11;
      *(a1 + 81) = v10;
      return a1;
    }

    __swift_assign_boxed_opaque_existential_1(a1 + 7, a2 + 7, v7);
  }

  else
  {
    if (!v9)
    {
      v12 = *(a2 + 7);
      v13 = *(a2 + 9);
      *(a1 + 81) = *(a2 + 81);
      *(a1 + 9) = v13;
      *(a1 + 7) = v12;
      return a1;
    }

    a1[10] = v9;
    a1[11] = a2[11];
    (**(v9 - 8))(a1 + 7, a2 + 7, v7);
  }

  *(a1 + 96) = *(a2 + 96);
  return a1;
}

__n128 __swift_memcpy97_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t *assignWithTake for HeterogeneousViewIDsAccumulator(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  if (a1[5])
  {
    __swift_destroy_boxed_opaque_existential_1(a1 + 2);
  }

  v4 = *(a2 + 2);
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 2) = v4;
  a1[6] = a2[6];
  if (!a1[10])
  {
    goto LABEL_7;
  }

  if (!a2[10])
  {
    outlined destroy of (Hashable, isUnary: Bool)((a1 + 7), type metadata accessor for (Hashable, isUnary: Bool));
LABEL_7:
    *(a1 + 7) = *(a2 + 7);
    *(a1 + 9) = *(a2 + 9);
    *(a1 + 81) = *(a2 + 81);
    return a1;
  }

  __swift_destroy_boxed_opaque_existential_1(a1 + 7);
  *(a1 + 7) = *(a2 + 7);
  *(a1 + 9) = *(a2 + 9);
  a1[11] = a2[11];
  *(a1 + 96) = *(a2 + 96);
  return a1;
}

uint64_t getEnumTagSinglePayload for HeterogeneousViewIDsAccumulator(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
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

uint64_t storeEnumTagSinglePayload for HeterogeneousViewIDsAccumulator(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HeterogeneousViewIDsAccumulator.UnsafeOutputBuffer(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 48))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for HeterogeneousViewIDsAccumulator.UnsafeOutputBuffer(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

void type metadata accessor for RangeSet<AttributedString.Index>.Ranges(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), double a4)
{
  if (!*a2)
  {
    v7 = type metadata accessor for AttributedString.Index();
    lazy protocol witness table accessor for type TypedCanonicalViewID<Nil> and conformance TypedCanonicalViewID<A>(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8], MEMORY[0x1E69687F0]);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t outlined init with copy of (Hashable, isUnary: Bool)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of (Hashable, isUnary: Bool)(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for (SelectionRanges<AttributedString.Index>, SelectionRanges<AttributedString.Index>.Index)(uint64_t a1, double a2)
{
  if (!lazy cache variable for type metadata for (SelectionRanges<AttributedString.Index>, SelectionRanges<AttributedString.Index>.Index))
  {
    type metadata accessor for SelectionRanges<AttributedString.Index>(255, a2);
    type metadata accessor for RangeSet<AttributedString.Index>.Ranges(255, &lazy cache variable for type metadata for SelectionRanges<AttributedString.Index>.Index, type metadata accessor for SelectionRanges.Index, v2);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (SelectionRanges<AttributedString.Index>, SelectionRanges<AttributedString.Index>.Index));
    }
  }
}

void lazy protocol witness table accessor for type TypedCanonicalViewID<Nil> and conformance TypedCanonicalViewID<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  if (!*a1)
  {
    v5 = a2(255);
    swift_getWitnessTable(a3, v5);
    atomic_store(v6, a1);
  }
}

uint64_t outlined init with copy of SelectionRanges<String.Index>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for RangeSet<String.Index>.Ranges(0, &lazy cache variable for type metadata for SelectionRanges<String.Index>, type metadata accessor for SelectionRanges);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of SelectionRanges<String.Index>(uint64_t a1)
{
  type metadata accessor for RangeSet<String.Index>.Ranges(0, &lazy cache variable for type metadata for SelectionRanges<String.Index>, type metadata accessor for SelectionRanges);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for (SelectionRanges<String.Index>, SelectionRanges<String.Index>.Index)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (SelectionRanges<String.Index>, SelectionRanges<String.Index>.Index))
  {
    type metadata accessor for RangeSet<String.Index>.Ranges(255, &lazy cache variable for type metadata for SelectionRanges<String.Index>, type metadata accessor for SelectionRanges);
    type metadata accessor for RangeSet<String.Index>.Ranges(255, &lazy cache variable for type metadata for SelectionRanges<String.Index>.Index, type metadata accessor for SelectionRanges.Index);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (SelectionRanges<String.Index>, SelectionRanges<String.Index>.Index));
    }
  }
}

void type metadata accessor for RangeSet<String.Index>.Ranges(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void lazy protocol witness table accessor for type RangeSet<String.Index>.Ranges and conformance RangeSet<A>.Ranges()
{
  if (!lazy protocol witness table cache variable for type RangeSet<String.Index>.Ranges and conformance RangeSet<A>.Ranges)
  {
    type metadata accessor for RangeSet<String.Index>.Ranges(255, &lazy cache variable for type metadata for RangeSet<String.Index>.Ranges, MEMORY[0x1E69E7BA8]);
    swift_getWitnessTable(MEMORY[0x1E69E7BC8], v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type RangeSet<String.Index>.Ranges and conformance RangeSet<A>.Ranges);
  }
}

void static TupleContent<each A>._makeView(view:inputs:)(int *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = a3;
  v10 = *a1;
  v11 = *(a2 + 48);
  v47 = *(a2 + 32);
  v48 = v11;
  v49 = *(a2 + 64);
  v50 = *(a2 + 80);
  v12 = *(a2 + 16);
  v45 = *a2;
  v46 = v12;
  if (a3 != 1)
  {
    MEMORY[0x1EEE9AC00](a1);
    v14 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v8)
    {
      v15 = 0;
      v16 = a4 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 < 4)
      {
        goto LABEL_8;
      }

      if (&v14[-v16] < 0x20)
      {
        goto LABEL_8;
      }

      v15 = v8 & 0xFFFFFFFFFFFFFFFCLL;
      v17 = (v16 + 16);
      v18 = v14 + 16;
      v19 = v8 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v20 = *v17;
        *(v18 - 1) = *(v17 - 1);
        *v18 = v20;
        v17 += 2;
        v18 += 2;
        v19 -= 4;
      }

      while (v19);
      if (v15 != v8)
      {
LABEL_8:
        v21 = v8 - v15;
        v22 = 8 * v15;
        v23 = &v14[8 * v15];
        v24 = (v16 + v22);
        do
        {
          v25 = *v24++;
          *v23 = v25;
          v23 += 8;
          --v21;
        }

        while (v21);
      }
    }

    swift_getTupleTypeMetadata();
  }

  v26 = AGTupleCount();
  if (v26 == 1)
  {
    *(&v42[2] + 8) = v47;
    *(&v42[3] + 8) = v48;
    *(&v42[4] + 8) = v49;
    *(v42 + 8) = v45;
    DWORD2(v42[5]) = v50;
    *(&v42[1] + 8) = v46;
    LODWORD(v42[0]) = v10;
    v43 = 0uLL;
    if (v8)
    {
      outlined init with copy of _ViewInputs(&v45, v41);
      v29 = (a4 & 0xFFFFFFFFFFFFFFFELL);
      v30 = (a5 & 0xFFFFFFFFFFFFFFFELL);
      Unary = type metadata accessor for TupleContent<each A>.MakeUnary(0, v8, a4, a5);
      do
      {
        v33 = *v29++;
        v32 = v33;
        v34 = *v30++;
        TupleContent<each A>.MakeUnary.visit<A>(type:)(v32, Unary, v32, v34);
        --v8;
      }

      while (v8);
      v35 = v43;
      if (v43)
      {
        v36 = DWORD2(v43);
        v37 = HIDWORD(*(&v43 + 1));
        v41[4] = v42[4];
        v41[5] = v42[5];
        v41[6] = v43;
        v41[0] = v42[0];
        v41[1] = v42[1];
        v41[2] = v42[2];
        v41[3] = v42[3];
        v38 = *(*(Unary - 8) + 8);

        v38(v41, Unary);
        *a6 = v35;
        *(a6 + 8) = v36;
        *(a6 + 12) = v37;
        return;
      }
    }

    else
    {
      outlined init with copy of _ViewInputs(&v45, v41);
    }

    __break(1u);
  }

  else if (v26)
  {
    v39 = type metadata accessor for TupleContent(0, v8, a4, v27);
    LODWORD(v41[0]) = v10;
    v42[2] = v47;
    v42[3] = v48;
    v42[4] = v49;
    LODWORD(v42[5]) = v50;
    v42[0] = v45;
    v42[1] = v46;
    v44 = a5;
    swift_getWitnessTable(protocol conformance descriptor for <each A> TupleContent<Pack{repeat A}>, v39, &v44, *&v41[0]);
    static View.makeImplicitRoot(view:inputs:)(v41, v42, v39, v40, a6);
  }

  else
  {
    *a6 = MEMORY[0x1E69E7CC0];
    v28 = *MEMORY[0x1E698D3F8];
    *(a6 + 8) = 0;
    *(a6 + 12) = v28;
  }
}

void TupleContent<each A>.MakeUnary.visit<A>(type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v45 = *MEMORY[0x1E69E9840];
  v20[1] = *v4;
  v8 = type metadata accessor for TupleContent(255, *(a2 + 16), *(a2 + 24), a4);
  v11 = type metadata accessor for _GraphValue(0, v8, v9, v10);
  _GraphValue.unsafeBitCast<A>(to:)(v11, a3, &v21);
  v12 = v21;
  v13 = *(v4 + 56);
  v41 = *(v4 + 40);
  v42 = v13;
  v43 = *(v4 + 72);
  v44 = *(v4 + 88);
  v14 = *(v4 + 24);
  v39 = *(v4 + 8);
  v40 = v14;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v32 = v42;
  v33 = v43;
  v34 = v44;
  v29 = v39;
  v30 = v40;
  v31 = v41;
  v16 = v41;
  LODWORD(v31) = 0;
  v20[0] = v12;
  v35[0] = v39;
  v35[1] = v40;
  v36 = v44;
  v35[3] = v42;
  v35[4] = v43;
  v35[2] = v31;
  v25 = v31;
  v26 = v42;
  v27 = v43;
  v28 = v44;
  v23 = v39;
  v24 = v40;
  v17 = *(a4 + 24);
  outlined init with copy of _ViewInputs(&v39, v37);
  outlined init with copy of _ViewInputs(v35, v37);
  v17(v22, v20, &v23, a3, a4);
  v37[2] = v25;
  v37[3] = v26;
  v37[4] = v27;
  v38 = v28;
  v37[0] = v23;
  v37[1] = v24;
  outlined destroy of _ViewInputs(v37);
  LODWORD(v31) = v16;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(v22, &v29);
    AGSubgraphEndTreeElement();
  }

  v25 = v31;
  v26 = v32;
  v27 = v33;
  v28 = v34;
  v23 = v29;
  v24 = v30;
  outlined destroy of _ViewInputs(&v23);
  v18 = v22[0];
  v19 = v22[1];

  *(v5 + 96) = v18;
  *(v5 + 104) = v19;
}