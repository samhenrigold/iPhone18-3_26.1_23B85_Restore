uint64_t (*Dictionary.Values.subscript.read(Class **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, Class *a7))()
{
  v13 = *(a7 - 1);
  *a1 = a7;
  a1[1] = v13;
  v14 = v13[8];
  if (swift_coroFrameAlloc)
  {
    v15 = swift_coroFrameAlloc(v14, 0x278CuLL);
  }

  else
  {
    v15 = malloc(v14);
  }

  a1[2] = v15;
  Dictionary.Values.subscript.getter(a2, a3, a5, a6, a7, v15);
  return _ArrayBuffer.subscript.read;
}

uint64_t MutableCollection<>.subscript.getter@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v66 = a1;
  v64 = a4;
  v6 = *(a3 + 8);
  swift_getAssociatedTypeWitness(255, v6, a2, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v8 = v7;
  swift_getTupleTypeMetadata2(0, v8, v8, "lower upper ", 0);
  v10 = v9;
  v61 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v56 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v17 = &v53 - v16;
  v58 = *(v8 - 1);
  v19 = MEMORY[0x1EEE9AC00](v15, v18);
  v21 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v53 - v23;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v6, a2, v8, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v62 = type metadata accessor for Range(0, v8, AssociatedConformanceWitness, v26);
  v59 = *(v62 - 8);
  v28 = MEMORY[0x1EEE9AC00](v62, v27);
  v60 = &v53 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v30);
  v32 = &v53 - v31;
  (*(v6 + 64))(a2, v6);
  v33 = *(v6 + 72);
  v65 = v4;
  v63 = a2;
  v57 = v6;
  v33(a2, v6);
  if (((*(AssociatedConformanceWitness + 24))(v24, v21, v8, AssociatedConformanceWitness) & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v34 = v58;
  v35 = *(v58 + 32);
  v35(v17, v24, v8);
  v35(&v17[*(v10 + 48)], v21, v8);
  v36 = v35;
  v37 = v61;
  v38 = v32;
  v39 = v56;
  (*(v61 + 16))(v56, v17, v10);
  v54 = *(v10 + 48);
  v35(v38, v39, v8);
  v55 = v35;
  v40 = *(v34 + 8);
  v40(&v39[v54], v8);
  (*(v37 + 32))(v39, v17, v10);
  v41 = v62;
  v36(&v38[*(v62 + 36)], &v39[*(v10 + 48)], v8);
  v40(v39, v8);
  v42 = v57;
  v43 = v65;
  v44 = v66;
  v45 = v63;
  (*(v57 + 176))(v66, v38, v63, v57);
  v46 = v59;
  (*(v59 + 8))(v38, v41);
  v48 = type metadata accessor for Slice(0, v45, v42, v47);
  v49 = v64;
  (*(*(v45 - 8) + 16))(&v64[*(v48 + 40)], v43, v45);
  v50 = v60;
  (*(v46 + 16))(v60, v44, v41);
  v51 = v55;
  v55(v49, v50, v8);
  return v51(&v49[*(v48 + 36)], &v50[*(v41 + 36)], v8);
}

int64_t Dictionary.Keys.makeIterator()@<X0>(int64_t result@<X0>, int64_t *a2@<X8>)
{
  if ((result & 0xC000000000000001) != 0)
  {
    if (result < 0)
    {
      v3 = result;
    }

    else
    {
      v3 = result & 0xFFFFFFFFFFFFFF8;
    }

    v4 = type metadata accessor for __CocoaDictionary.Iterator();
    v5 = swift_allocObject(v4, 0xE8, 7uLL);
    v6 = 0;
    v7 = 0;
    v8 = 0;
    *(v5 + 208) = v3;
    *(v5 + 216) = 0;
    *(v5 + 16) = 0u;
    *(v5 + 32) = 0u;
    *(v5 + 48) = 0u;
    *(v5 + 64) = 0u;
    *(v5 + 80) = 0u;
    *(v5 + 96) = 0u;
    *(v5 + 112) = 0u;
    *(v5 + 128) = 0u;
    *(v5 + 144) = 0u;
    *(v5 + 160) = 0u;
    *(v5 + 176) = 0u;
    *(v5 + 192) = 0u;
    *(v5 + 224) = 0;
    result = v5 | 0x8000000000000000;
  }

  else
  {
    v9 = -1;
    v10 = -1 << *(result + 32);
    v6 = result + 64;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v9 = ~(-1 << v11);
    }

    v8 = v9 & *(result + 64);
  }

  *a2 = result;
  a2[1] = v6;
  a2[2] = v7;
  a2[3] = 0;
  a2[4] = v8;
  return result;
}

uint64_t Dictionary.Keys.description.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for Dictionary.Keys(0, a2, a3, a4);
  swift_getWitnessTable(protocol conformance descriptor for [A : B].Keys, v4, v5);
  return Collection._makeCollectionDescription(withTypeName:)(0)._countAndFlagsBits;
}

unint64_t Dictionary.Keys.debugDescription.getter(uint64_t a1, uint64_t a2)
{
  v214 = a2;
  v218 = a1;
  v215 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v3 = &v204 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Optional(0, v4, v5, v6);
  v217 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7, v8);
  v11 = &v204 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v9, v12);
  v15 = (&v204 - v14);
  MEMORY[0x1EEE9AC00](v13, v16);
  v220 = (&v204 - v17);
  v18 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Dictionary.Keys", 0xFuLL, 1);
  countAndFlagsBits = v18._countAndFlagsBits;
  object = v18._object;
  v225 = 0;
  v226 = 0xE000000000000000;
  v20 = _StringGuts.init(_initialCapacity:)(4);
  inited = v20;
  v23 = v21;
  v223 = v20;
  v224 = v21;
  v24 = HIBYTE(v21) & 0xF;
  v25 = v20 & 0xFFFFFFFFFFFFLL;
  if ((v21 & 0x2000000000000000) != 0)
  {
    v26 = HIBYTE(v21) & 0xF;
  }

  else
  {
    v26 = v20 & 0xFFFFFFFFFFFFLL;
  }

  v212 = v3;
  v207 = v7;
  v208 = v11;
  v209 = v15;
  if (!v26 && (v20 & ~v21 & 0x2000000000000000) == 0)
  {
    v21;
    inited = 0;
    v36 = 0xE000000000000000;
    v223 = 0;
LABEL_21:
    v224 = v36;
LABEL_36:
    v44 = countAndFlagsBits;
    goto LABEL_37;
  }

  if ((v21 & 0x2000000000000000) != 0)
  {
    v21;
    0xE000000000000000;
    v35 = 0xA000000000000000;
    if (!(v23 & 0x80808080808080 | inited & 0x8080808080808080))
    {
      v35 = 0xE000000000000000;
    }

    v36 = v35 & 0xFF00000000000000 | (v24 << 56) | v23 & 0xFFFFFFFFFFFFFFLL;
    v223 = inited;
    goto LABEL_21;
  }

  0xE000000000000000;
  v28 = v25;
  if ((v23 & 0x1000000000000000) != 0)
  {
    v28 = String.UTF8View._foreignCount()();
    if ((inited & 0x2000000000000000) == 0)
    {
      goto LABEL_34;
    }
  }

  else if ((inited & 0x2000000000000000) == 0)
  {
    goto LABEL_34;
  }

  if (swift_isUniquelyReferenced_nonNull_native(v23 & 0xFFFFFFFFFFFFFFFLL))
  {
    v29 = _StringGuts.nativeUnusedCapacity.getter(inited, v23);
    if (v30)
    {
      goto LABEL_229;
    }

    if (v28 <= 15 && (v29 & 0x8000000000000000) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_35;
  }

LABEL_34:
  if (v28 > 15)
  {
LABEL_35:
    _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v28, 0);
    v221 = 0uLL;
    closure #1 in _StringGuts.append(_:)(&v221, 0, &v223, 1);
    swift_bridgeObjectRelease_n(0xE000000000000000, 2);
    inited = v223;
    v36 = v224;
    goto LABEL_36;
  }

LABEL_13:
  if ((v23 & 0x1000000000000000) != 0)
  {
    v32 = _StringGuts._foreignConvertedToSmall()(inited, v23);
    v33 = v37;
  }

  else
  {
    if ((inited & 0x1000000000000000) != 0)
    {
      v31 = ((v23 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v31 = _StringObject.sharedUTF8.getter(inited, v23);
      v25 = v193;
    }

    closure #1 in _StringGuts._convertedToSmall()(v31, v25, &v221, v27);
    v33 = *(&v221 + 1);
    v32 = v221;
  }

  v38 = 0xE000000000000000;
  0xE000000000000000;
  v39._rawBits = 1;
  v40._rawBits = 1;
  v41._rawBits = _StringGuts.validateScalarRange(_:)(v39, v40, 0, 0xE000000000000000)._rawBits;
  if (v41._rawBits < 0x10000)
  {
    v41._rawBits |= 3;
  }

  v44 = countAndFlagsBits;
  if (v41._rawBits >> 16 || v42._rawBits >= 0x10000)
  {
    v45 = specialized static String._copying(_:)(v41._rawBits, v42, 0, 0xE000000000000000);
    v38 = v46;
    0xE000000000000000;
  }

  else
  {
    v45 = 0;
  }

  if ((v38 & 0x2000000000000000) != 0)
  {
    v38;
  }

  else
  {
    if ((v38 & 0x1000000000000000) != 0)
    {
      v45 = _StringGuts._foreignConvertedToSmall()(v45, v38);
      v201 = v200;
      v38;
      v38 = v201;
    }

    else
    {
      if ((v45 & 0x1000000000000000) != 0)
      {
        v189 = ((v38 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v190 = v45 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v189 = _StringObject.sharedUTF8.getter(v45, v38);
      }

      closure #1 in _StringGuts._convertedToSmall()(v189, v190, &v221, v43);
      v38;
      v38 = *(&v221 + 1);
      v45 = v221;
    }

    v3 = v212;
    v44 = countAndFlagsBits;
  }

  v47 = specialized _SmallString.init(_:appending:)(v32, v33, v45, v38);
  if (v49)
  {
    goto LABEL_229;
  }

  inited = v47;
  v36 = v48;
  v23;
  swift_bridgeObjectRelease_n(0xE000000000000000, 2);
  v223 = inited;
  v224 = v36;
LABEL_37:
  v50 = HIBYTE(v36) & 0xF;
  v51 = inited & 0xFFFFFFFFFFFFLL;
  if ((v36 & 0x2000000000000000) != 0)
  {
    v52 = HIBYTE(v36) & 0xF;
  }

  else
  {
    v52 = inited & 0xFFFFFFFFFFFFLL;
  }

  if (!v52 && (inited & ~v36 & 0x2000000000000000) == 0)
  {
    v18._object;
    v36;
    v223 = v44;
    v224 = v18._object;
    v58 = v214;
    goto LABEL_99;
  }

  v53 = (v18._object & 0x2000000000000000) == 0;
  v54 = (v18._object >> 56) & 0xF;
  if ((v36 & 0x2000000000000000) == 0)
  {
    v55 = v44 & 0xFFFFFFFFFFFFLL;
    v3 = (v18._object >> 56) & 0xF;
    if ((v18._object & 0x2000000000000000) != 0)
    {
      goto LABEL_48;
    }

LABEL_47:
    v3 = v55;
    goto LABEL_48;
  }

  if ((v18._object & 0x2000000000000000) == 0)
  {
    v55 = v44 & 0xFFFFFFFFFFFFLL;
    v53 = 1;
    goto LABEL_47;
  }

  v72 = v50 + v54;
  if (v50 + v54 < 0x10)
  {
    if (v54)
    {
      v79 = 0;
      v80 = 0;
      v81 = 8 * v50;
      v82 = v36;
      v58 = v214;
      do
      {
        v83 = v18._object >> (v79 & 0x38);
        if (v80 < 8)
        {
          v83 = v44 >> v79;
        }

        v84 = (v83 << (v81 & 0x38)) | ((-255 << (v81 & 0x38)) - 1) & v82;
        v85 = (v83 << v81) | ((-255 << v81) - 1) & inited;
        if (v50 <= 7)
        {
          inited = v85;
        }

        else
        {
          v82 = v84;
        }

        ++v50;
        v81 += 8;
        v79 += 8;
        ++v80;
      }

      while (8 * v54 != v79);
    }

    else
    {
      v82 = v36;
      v58 = v214;
    }

    v36;
    v86 = 0xA000000000000000;
    if (!(inited & 0x8080808080808080 | v82 & 0x80808080808080))
    {
      v86 = 0xE000000000000000;
    }

    v223 = inited;
    v224 = v86 & 0xFF00000000000000 | (v72 << 56) | v82 & 0xFFFFFFFFFFFFFFLL;
    goto LABEL_99;
  }

  v53 = 0;
  v55 = v44 & 0xFFFFFFFFFFFFLL;
  v3 = (v18._object >> 56) & 0xF;
LABEL_48:
  *&v216 = v55;
  v56 = v3;
  if ((v18._object & 0x1000000000000000) == 0)
  {
    if ((v36 & 0x1000000000000000) == 0)
    {
      goto LABEL_50;
    }

LABEL_203:
    v185 = String.UTF8View._foreignCount()();
    v58 = v185 + v56;
    if (!__OFADD__(v185, v56))
    {
      goto LABEL_51;
    }

LABEL_205:
    __break(1u);
    goto LABEL_206;
  }

  v180._rawBits = (v3 << 16) | 1;
  v181._rawBits = 1;
  v182._rawBits = _StringGuts.validateScalarRange(_:)(v181, v180, v44, v18._object)._rawBits;
  v213._rawBits = v183;
  if (v182._rawBits >= 0x10000)
  {
    rawBits = v182._rawBits;
  }

  else
  {
    rawBits = v182._rawBits | 3;
  }

  v18._object;
  v56 = String.UTF8View.distance(from:to:)(rawBits, v213);
  v18._object;
  if ((v36 & 0x1000000000000000) != 0)
  {
    goto LABEL_203;
  }

LABEL_50:
  v57 = __OFADD__(v52, v56);
  v58 = v52 + v56;
  if (v57)
  {
    goto LABEL_205;
  }

LABEL_51:
  if ((inited & ~v36 & 0x2000000000000000) == 0 || !swift_isUniquelyReferenced_nonNull_native(v36 & 0xFFFFFFFFFFFFFFFLL))
  {
    if (v58 <= 15)
    {
      if ((v36 & 0x2000000000000000) == 0)
      {
        goto LABEL_57;
      }

LABEL_68:
      v51 = v36;
      goto LABEL_69;
    }

LABEL_62:
    _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v58, v56);
    if ((v18._object & 0x1000000000000000) != 0)
    {
      _StringGuts._foreignAppendInPlace(_:)(v44, v18._object, 0, v3);
      v58 = v214;
    }

    else
    {
      v58 = v214;
      if (v53)
      {
        if ((v44 & 0x1000000000000000) != 0)
        {
          v62 = (v18._object & 0xFFFFFFFFFFFFFFFLL) + 32;
          v63 = v216;
          v64 = v216;
          v3 = v212;
        }

        else
        {
          v194 = _StringObject.sharedUTF8.getter(v44, v18._object);
          if (v195 < v216)
          {
            _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

          v62 = v194;
          v64 = v195;
          v58 = v214;
          v3 = v212;
          v44 = countAndFlagsBits;
          v63 = v216;
        }

        v65 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v63, v62, v64);
        closure #1 in _StringGuts.append(_:)(v65, v66, &v223, v44 < 0);
        goto LABEL_99;
      }

      *&v221 = v44;
      *(&v221 + 1) = v18._object & 0xFFFFFFFFFFFFFFLL;
      closure #1 in _StringGuts.append(_:)(&v221, (v18._object >> 56) & 0xF, &v223, (v18._object & 0x4000000000000000) != 0);
    }

    v3 = v212;
    goto LABEL_99;
  }

  v59 = _StringGuts.nativeUnusedCapacity.getter(inited, v36);
  if (v60)
  {
    goto LABEL_229;
  }

  if (v58 > 15)
  {
    goto LABEL_62;
  }

  if ((v36 & 0x2000000000000000) != 0)
  {
    goto LABEL_68;
  }

  if (v59 >= v56)
  {
    goto LABEL_62;
  }

LABEL_57:
  if ((v36 & 0x1000000000000000) == 0)
  {
    v58 = v214;
    if ((inited & 0x1000000000000000) != 0)
    {
      v61 = ((v36 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v61 = _StringObject.sharedUTF8.getter(inited, v36);
      v51 = v196;
    }

    closure #1 in _StringGuts._convertedToSmall()(v61, v51, &v221, v34);
    v51 = *(&v221 + 1);
    inited = v221;
    goto LABEL_70;
  }

  inited = _StringGuts._foreignConvertedToSmall()(inited, v36);
  v51 = v178;
LABEL_69:
  v58 = v214;
LABEL_70:
  v18._object;
  v67._rawBits = 1;
  v68._rawBits = (v3 << 16) | 1;
  v69._rawBits = _StringGuts.validateScalarRange(_:)(v67, v68, v44, v18._object)._rawBits;
  if (v69._rawBits < 0x10000)
  {
    v69._rawBits |= 3;
  }

  if (v69._rawBits >> 16 || v70._rawBits >> 16 != v3)
  {
    v44 = specialized static String._copying(_:)(v69._rawBits, v70, v44, v18._object);
    v56 = v73;
    v18._object;
  }

  else
  {
    v56 = v18._object;
  }

  v3 = v212;
  if ((v56 & 0x2000000000000000) == 0)
  {
    goto LABEL_209;
  }

  v56;
  while (1)
  {
    v74 = specialized _SmallString.init(_:appending:)(inited, v51, v44, v56);
    if (v76)
    {
      goto LABEL_229;
    }

    v77 = v74;
    v78 = v75;
    v36;
    v223 = v77;
    v224 = v78;
LABEL_99:
    v56 = v223;
    inited = v224;
    v87 = HIBYTE(v224) & 0xF;
    v51 = v223 & 0xFFFFFFFFFFFFLL;
    if ((v224 & 0x2000000000000000) != 0)
    {
      v88 = HIBYTE(v224) & 0xF;
    }

    else
    {
      v88 = v223 & 0xFFFFFFFFFFFFLL;
    }

    if (!v88 && (v223 & ~v224 & 0x2000000000000000) == 0)
    {
      v224;
      v100 = 0xE200000000000000;
      v56 = 23336;
      goto LABEL_138;
    }

    if ((v224 & 0x2000000000000000) != 0 && v87 <= 0xD)
    {
      v89 = 8 * (HIBYTE(v224) & 7);
      v90 = (-255 << v89) - 1;
      v91 = 40 << v89;
      v92 = v87 + 1;
      if (v87 >= 8)
      {
        v94 = v90 & v224 | v91;
        v93 = 8 * (v92 & 7);
LABEL_124:
        v101 = ((-255 << v93) - 1) & v94 | (91 << v93);
      }

      else
      {
        v56 = v90 & v223 | v91;
        if (v87 == 7)
        {
          v93 = 0;
          v94 = v224;
          goto LABEL_124;
        }

        v56 = ((-255 << (8 * (v92 & 7u))) - 1) & v56 | (91 << (8 * (v92 & 7u)));
        v101 = v224;
      }

      v224;
      0xE200000000000000;
      v113 = 0xA000000000000000;
      if (!(v56 & 0x8080808080808080 | v101 & 0x80808080808080))
      {
        v113 = 0xE000000000000000;
      }

      v100 = (v113 & 0xFF00000000000000 | (v87 << 56) | v101 & 0xFFFFFFFFFFFFFFLL) + 0x200000000000000;
      goto LABEL_138;
    }

    0xE200000000000000;
    if ((inited & 0x1000000000000000) != 0)
    {
      break;
    }

    v57 = __OFADD__(v88, 2);
    v95 = v88 + 2;
    if (!v57)
    {
      goto LABEL_111;
    }

LABEL_208:
    __break(1u);
LABEL_209:
    if ((v56 & 0x1000000000000000) != 0)
    {
      v44 = _StringGuts._foreignConvertedToSmall()(v44, v56);
      v199 = v198;
      v56;
      v56 = v199;
    }

    else
    {
      if ((v44 & 0x1000000000000000) != 0)
      {
        v187 = ((v56 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v188 = v44 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v187 = _StringObject.sharedUTF8.getter(v44, v56);
      }

      closure #1 in _StringGuts._convertedToSmall()(v187, v188, &v221, v71);
      v56;
      v56 = *(&v221 + 1);
      v44 = v221;
    }
  }

LABEL_206:
  v186 = String.UTF8View._foreignCount()();
  v95 = v186 + 2;
  if (__OFADD__(v186, 2))
  {
    goto LABEL_208;
  }

LABEL_111:
  if ((v56 & ~inited & 0x2000000000000000) == 0 || !swift_isUniquelyReferenced_nonNull_native(inited & 0xFFFFFFFFFFFFFFFLL))
  {
    if (v95 > 15)
    {
      goto LABEL_122;
    }

    if ((inited & 0x2000000000000000) == 0)
    {
      goto LABEL_117;
    }

    goto LABEL_126;
  }

  v96 = _StringGuts.nativeUnusedCapacity.getter(v56, inited);
  if (v97)
  {
    goto LABEL_229;
  }

  if (v95 > 15)
  {
    goto LABEL_122;
  }

  if ((inited & 0x2000000000000000) != 0)
  {
LABEL_126:
    v99 = inited;
    goto LABEL_127;
  }

  if (v96 < 2)
  {
LABEL_117:
    if ((inited & 0x1000000000000000) != 0)
    {
      goto LABEL_196;
    }

    if ((v56 & 0x1000000000000000) != 0)
    {
      v98 = ((inited & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v98 = _StringObject.sharedUTF8.getter(v56, inited);
      v51 = v197;
    }

    closure #1 in _StringGuts._convertedToSmall()(v98, v51, &v221, v71);
    v99 = *(&v221 + 1);
    v56 = v221;
LABEL_127:
    0xE200000000000000;
    v102._rawBits = 1;
    v103._rawBits = 131073;
    v104._rawBits = _StringGuts.validateScalarRange(_:)(v102, v103, 0x5B28uLL, 0xE200000000000000)._rawBits;
    if (v104._rawBits < 0x10000)
    {
      v104._rawBits |= 3;
    }

    v106 = Substring.description.getter(v104._rawBits, v105, 0x5B28uLL, 0xE200000000000000);
    v108 = v107;
    0xE200000000000000;
    if ((v108 & 0x2000000000000000) != 0)
    {
      v108;
    }

    else
    {
      if ((v108 & 0x1000000000000000) != 0)
      {
        v106 = _StringGuts._foreignConvertedToSmall()(v106, v108);
        v203 = v202;
        v108;
        v108 = v203;
      }

      else
      {
        if ((v106 & 0x1000000000000000) != 0)
        {
          v191 = ((v108 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v192 = v106 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v191 = _StringObject.sharedUTF8.getter(v106, v108);
        }

        closure #1 in _StringGuts._convertedToSmall()(v191, v192, &v221, v109);
        v108;
        v108 = *(&v221 + 1);
        v106 = v221;
      }

      v3 = v212;
    }

    v110 = specialized _SmallString.init(_:appending:)(v56, v99, v106, v108);
    if ((v112 & 1) == 0)
    {
      v56 = v110;
      v100 = v111;
      inited;
      swift_bridgeObjectRelease_n(0xE200000000000000, 2);
      v58 = v214;
      goto LABEL_138;
    }

LABEL_229:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

LABEL_122:
  _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v95, 2);
  v221 = xmmword_18071DC30;
  closure #1 in _StringGuts.append(_:)(&v221, 2uLL, &v223, 1);
  swift_bridgeObjectRelease_n(0xE200000000000000, 2);
  v56 = v223;
  v100 = v224;
LABEL_138:
  0xE000000000000000;
  v225 = v56;
  v226 = v100;
  inited = v218;
  v211 = object;
  if ((v218 & 0xC000000000000001) != 0)
  {
    if (v218 < 0)
    {
      v114 = v218;
    }

    else
    {
      v114 = v218 & 0xFFFFFFFFFFFFFF8;
    }

    v115 = type metadata accessor for __CocoaDictionary.Iterator();
    v116 = swift_allocObject(v115, 0xE8, 7uLL);
    v117 = 0;
    v118 = 0;
    v119 = 0;
    *(v116 + 208) = v114;
    *(v116 + 216) = 0;
    *(v116 + 16) = 0u;
    *(v116 + 32) = 0u;
    *(v116 + 48) = 0u;
    *(v116 + 64) = 0u;
    *(v116 + 80) = 0u;
    *(v116 + 96) = 0u;
    *(v116 + 112) = 0u;
    *(v116 + 128) = 0u;
    *(v116 + 144) = 0u;
    *(v116 + 160) = 0u;
    *(v116 + 176) = 0u;
    *(v116 + 192) = 0u;
    *(v116 + 224) = 0;
    v120 = v116 | 0x8000000000000000;
  }

  else
  {
    v121 = -1 << *(v218 + 32);
    v118 = ~v121;
    v117 = v218 + 64;
    v122 = -v121;
    if (v122 < 64)
    {
      v123 = ~(-1 << v122);
    }

    else
    {
      v123 = -1;
    }

    v119 = v123 & *(v218 + 64);
    v120 = v218;
  }

  object = v120 & 0x7FFFFFFFFFFFFFFFLL;
  countAndFlagsBits = (v215 + 56);
  v206 = (v217 + 16);
  v205 = (v215 + 48);
  v204 = (v217 + 8);
  v56 = v215 + 32;
  v210 = v118;
  v124 = (v118 + 64) >> 6;
  v213._rawBits = v215 + 16;
  inited;
  v218 = 0;
  v125 = 1;
  v216 = xmmword_18071DB30;
  v217 = v120;
  while ((v120 & 0x8000000000000000) == 0)
  {
    if (v119)
    {
      v136 = v218;
      goto LABEL_164;
    }

    v142 = v218;
    do
    {
      v136 = v142 + 1;
      if (__OFADD__(v142, 1))
      {
        __break(1u);
LABEL_196:
        v56 = _StringGuts._foreignConvertedToSmall()(v56, inited);
        v99 = v179;
        goto LABEL_127;
      }

      if (v136 >= v124)
      {
        (*countAndFlagsBits)(v220, 1, 1, v58);
        _sSh8IteratorV8_VariantOySS__GWOe_0(v120);
        goto LABEL_183;
      }

      v119 = *(v117 + 8 * v136);
      ++v142;
    }

    while (!v119);
    v218 = v136;
LABEL_164:
    v143 = __clz(__rbit64(v119));
    v119 &= v119 - 1;
    v144 = v215;
    v145 = *(v120 + 48) + *(v215 + 72) * (v143 | (v136 << 6));
    v146 = v220;
    (*(v215 + 16))(v220, v145, v58);
    v147 = *(v144 + 56);
    v148 = v146;
    v147(v146, 0, 1, v58);
LABEL_171:
    v155 = *v56;
    (*v56)(v3, v148, v58);
    if ((v125 & 1) == 0)
    {
      v156 = v226;
      v157 = HIBYTE(v226) & 0xF;
      if ((v226 & 0x2000000000000000) == 0)
      {
        v157 = v225 & 0xFFFFFFFFFFFFLL;
      }

      if (v157 || (v225 & ~v226 & 0x2000000000000000) != 0)
      {
        if (v226 & 0x2000000000000000) == 0 || (v158 = specialized _SmallString.init(_:appending:)(v225, v226, 0x202CuLL, 0xE200000000000000), (v160))
        {
          0xE200000000000000;
          _StringGuts.append(_:)(8236, 0xE200000000000000, 0, 2, v126, v127, v128, v129, v130, v131, v132, v133);
          swift_bridgeObjectRelease_n(0xE200000000000000, 2);
        }

        else
        {
          v161 = v158;
          v162 = v159;
          v156;
          0xE200000000000000;
          v225 = v161;
          v226 = v162;
        }

        v58 = v214;
      }

      else
      {
        v226;
        v225 = 8236;
        v226 = 0xE200000000000000;
      }
    }

    v134 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Any>(0);
    inited = swift_initStackObject(v134, v222);
    *(inited + 16) = v216;
    *(inited + 56) = v58;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm((inited + 32));
    v155(boxed_opaque_existential_0Tm, v3, v58);
    specialized _debugPrint<A>(_:separator:terminator:to:)(inited, 0x20uLL, 0xE100000000000000, 0, 0xE000000000000000, &v225);
    0xE000000000000000;
    0xE100000000000000;
    swift_setDeallocating(inited);
    __swift_destroy_boxed_opaque_existential_1Tm((inited + 32));
    v125 = 0;
    v120 = v217;
  }

  v137 = *(object + 216);
  v139 = countAndFlagsBits;
  v138 = v220;
  if ((v137 & 0x8000000000000000) == 0)
  {
    if (v137 != *(object + 224))
    {
      v141 = *(object + 24);
      if (v141)
      {
        if (!(v137 >> 60))
        {
          goto LABEL_167;
        }

        __break(1u);
LABEL_198:
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

LABEL_228:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v140 = [*(object + 208) countByEnumeratingWithState:object + 16 objects:object + 80 count:16];
    *(object + 224) = v140;
    if (v140)
    {
      *(object + 216) = 0;
      v141 = *(object + 24);
      if (v141)
      {
        v137 = 0;
LABEL_167:
        v149 = (v141 + 8 * v137);
        if ((v149 & 7) == 0)
        {
          v150 = *v149;
          *(object + 216) = v137 + 1;
          swift_unknownObjectRetain(v150);
          if (_swift_isClassOrObjCExistentialType(v58, v58))
          {
            v223 = v150;
            v148 = v220;
            swift_dynamicCast(v220, &v223, qword_1EEEAC710, v58, 7uLL, v151, v152, v153, v204);
            v154 = *v139;
          }

          else
          {
            v154 = *v139;
            v154(v209, 1, 1, v58);
            _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v150, v58, v209);
            (*v206)(v208, v209, v207);
            if ((*v205)(v208, 1, v58) == 1)
            {
              _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
            }

            (*v204)(v209, v207);
            swift_unknownObjectRelease(v150);
            v148 = v220;
            (*v56)(v220, v208, v58);
          }

          v154(v148, 0, 1, v58);
          v3 = v212;
          goto LABEL_171;
        }

        goto LABEL_198;
      }

      goto LABEL_228;
    }

    *(object + 216) = -1;
  }

  _sSh8IteratorV8_VariantOySS__GWOe_0(v120);
  (*v139)(v138, 1, 1, v58);
LABEL_183:
  v163 = v226;
  v164 = HIBYTE(v226) & 0xF;
  if ((v226 & 0x2000000000000000) == 0)
  {
    v164 = v225 & 0xFFFFFFFFFFFFLL;
  }

  v165 = v211;
  if (v164 || (v225 & ~v226 & 0x2000000000000000) != 0)
  {
    if ((v226 & 0x2000000000000000) != 0 && (v166 = specialized _SmallString.init(_:appending:)(v225, v226, 0x295DuLL, 0xE200000000000000), (v167 & 1) == 0))
    {
      v177 = v166;
      v163;
      v165;
      0xE200000000000000;
      return v177;
    }

    else
    {
      0xE200000000000000;
      _StringGuts.append(_:)(10589, 0xE200000000000000, 0, 2, v168, v169, v170, v171, v172, v173, v174, v175);
      v165;
      swift_bridgeObjectRelease_n(0xE200000000000000, 2);
      return v225;
    }
  }

  else
  {
    v226;
    v165;
    return 10589;
  }
}

unint64_t Dictionary.Values.description.getter(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = a3;
  inited = a1;
  v133 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v140 = &v121 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = type metadata accessor for Optional(0, v6, v6, v7);
  v8 = *(v125 - 8);
  v10 = MEMORY[0x1EEE9AC00](v125 - 8, v9);
  v126 = &v121 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v124 = &v121 - v14;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = (&v121 - v16);
  0xE000000000000000;
  v143 = 91;
  v144 = 0xE100000000000000;
  if ((inited & 0xC000000000000001) != 0)
  {
    if (inited < 0)
    {
      v18 = inited;
    }

    else
    {
      v18 = inited & 0xFFFFFFFFFFFFFF8;
    }

    v19 = type metadata accessor for __CocoaDictionary.Iterator();
    v20 = swift_allocObject(v19, 0xE8, 7uLL);
    v21 = 0;
    v22 = 0;
    v23 = 0;
    *(v20 + 208) = v18;
    *(v20 + 216) = 0;
    *(v20 + 16) = 0u;
    *(v20 + 32) = 0u;
    *(v20 + 48) = 0u;
    *(v20 + 64) = 0u;
    *(v20 + 80) = 0u;
    *(v20 + 96) = 0u;
    *(v20 + 112) = 0u;
    *(v20 + 128) = 0u;
    *(v20 + 144) = 0u;
    *(v20 + 160) = 0u;
    *(v20 + 176) = 0u;
    *(v20 + 192) = 0u;
    *(v20 + 224) = 0;
    v24 = v20 | 0x8000000000000000;
  }

  else
  {
    v25 = -1 << *(inited + 32);
    v22 = ~v25;
    v21 = inited + 64;
    v26 = -v25;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    else
    {
      v27 = -1;
    }

    v23 = v27 & *(inited + 64);
    v24 = inited;
  }

  v129 = v24 & 0x7FFFFFFFFFFFFFFFLL;
  v123 = (v8 + 16);
  v122 = (v133 + 48);
  v121 = (v8 + 8);
  v28 = (v133 + 56);
  v29 = (v133 + 32);
  v128 = v22;
  v132 = (v22 + 64) >> 6;
  v131 = v133 + 16;
  inited;
  v139 = 0;
  v30 = 1;
  v138 = xmmword_18071DB30;
  v127 = xmmword_18071DB40;
  v135 = v28;
  v136 = v24;
  v137 = v29;
  v130 = v21;
  while ((v24 & 0x8000000000000000) == 0)
  {
    if (v23)
    {
      v36 = v139;
      goto LABEL_27;
    }

    v41 = v139;
    do
    {
      v36 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        __break(1u);
LABEL_131:
        inited = _StringGuts._foreignConvertedToSmall()(inited, v3);
        v29 = v114;
        goto LABEL_118;
      }

      if (v36 >= v132)
      {
        (*v28)(v17, 1, 1, v3);
        _sSh8IteratorV8_VariantOySS__GWOe_0(v24);
        goto LABEL_92;
      }

      v23 = *(v21 + 8 * v36);
      ++v41;
    }

    while (!v23);
    v139 = v36;
LABEL_27:
    v42 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
    v43 = v133;
    (*(v133 + 16))(v17, *(v24 + 56) + *(v133 + 72) * (v42 | (v36 << 6)), v3);
    (*(v43 + 56))(v17, 0, 1, v3);
LABEL_35:
    v32 = v140;
    v31 = *v29;
    (*v29)(v140, v17, v3);
    if (v30)
    {
      goto LABEL_13;
    }

    v134 = v31;
    v54 = v17;
    v55 = v32;
    v56 = v143;
    inited = v144;
    v57 = HIBYTE(v144) & 0xF;
    v58 = v143 & 0xFFFFFFFFFFFFLL;
    if ((v144 & 0x2000000000000000) != 0)
    {
      v59 = HIBYTE(v144) & 0xF;
    }

    else
    {
      v59 = v143 & 0xFFFFFFFFFFFFLL;
    }

    if (!v59 && (v143 & ~v144 & 0x2000000000000000) == 0)
    {
      v144;
      v143 = 8236;
      v144 = 0xE200000000000000;
      v32 = v55;
      v17 = v54;
      v21 = v130;
      v28 = v135;
      v24 = v136;
      goto LABEL_77;
    }

    if ((v144 & 0x2000000000000000) == 0 || v57 > 0xD)
    {
      0xE200000000000000;
      if ((inited & 0x1000000000000000) != 0)
      {
        v93 = String.UTF8View._foreignCount()();
        v68 = v93 + 2;
        if (!__OFADD__(v93, 2))
        {
          goto LABEL_48;
        }
      }

      else
      {
        v67 = __OFADD__(v59, 2);
        v68 = v59 + 2;
        if (!v67)
        {
LABEL_48:
          if ((v56 & ~inited & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(inited & 0xFFFFFFFFFFFFFFFLL))
          {
            v69 = _StringGuts.nativeUnusedCapacity.getter(v56, inited);
            if (v70)
            {
              goto LABEL_144;
            }

            v17 = v54;
            v21 = v130;
            if (v68 > 15)
            {
              goto LABEL_11;
            }

            if ((inited & 0x2000000000000000) == 0)
            {
              if (v69 < 2)
              {
LABEL_54:
                if ((inited & 0x1000000000000000) != 0)
                {
                  v56 = _StringGuts._foreignConvertedToSmall()(v56, inited);
                  v72 = v88;
                }

                else
                {
                  if ((v56 & 0x1000000000000000) != 0)
                  {
                    v71 = ((inited & 0xFFFFFFFFFFFFFFFLL) + 32);
                  }

                  else
                  {
                    v71 = _StringObject.sharedUTF8.getter(v56, inited);
                    v58 = v96;
                  }

                  closure #1 in _StringGuts._convertedToSmall()(v71, v58, &v141, v66);
                  v72 = *(&v141 + 1);
                  v56 = v141;
                }

LABEL_61:
                v73 = 0xE200000000000000;
                0xE200000000000000;
                v74._rawBits = 131073;
                v75._rawBits = 1;
                v76._rawBits = _StringGuts.validateScalarRange(_:)(v75, v74, 0x202CuLL, 0xE200000000000000)._rawBits;
                if (v76._rawBits < 0x10000)
                {
                  v76._rawBits |= 3;
                }

                if (v76._rawBits >> 16 || (v79 = 8236, (v77._rawBits & 0xFFFFFFFFFFFF0000) != 0x20000))
                {
                  v79 = specialized static String._copying(_:)(v76._rawBits, v77, 0x202CuLL, 0xE200000000000000);
                  v73 = v80;
                  0xE200000000000000;
                }

                if ((v73 & 0x2000000000000000) != 0)
                {
                  v73;
                }

                else if ((v73 & 0x1000000000000000) != 0)
                {
                  v79 = _StringGuts._foreignConvertedToSmall()(v79, v73);
                  v98 = v97;
                  v73;
                  v73 = v98;
                }

                else
                {
                  if ((v79 & 0x1000000000000000) != 0)
                  {
                    v94 = ((v73 & 0xFFFFFFFFFFFFFFFLL) + 32);
                    v95 = v79 & 0xFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v94 = _StringObject.sharedUTF8.getter(v79, v73);
                  }

                  closure #1 in _StringGuts._convertedToSmall()(v94, v95, &v141, v78);
                  v73;
                  v73 = *(&v141 + 1);
                  v79 = v141;
                }

                v81 = specialized _SmallString.init(_:appending:)(v56, v72, v79, v73);
                if ((v83 & 1) == 0)
                {
                  v84 = v81;
                  v85 = v82;
                  inited;
                  swift_bridgeObjectRelease_n(0xE200000000000000, 2);
                  v143 = v84;
                  v144 = v85;
                  goto LABEL_12;
                }

LABEL_144:
                _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
              }

LABEL_11:
              _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v68, 2);
              v141 = v127;
              0xE200000000000000;
              _StringGuts.appendInPlace(_:isASCII:)(&v141, 2uLL, 1);
              0xE200000000000000;
LABEL_12:
              v28 = v135;
              v24 = v136;
              v29 = v137;
              v31 = v134;
              v32 = v140;
              goto LABEL_13;
            }
          }

          else
          {
            v17 = v54;
            v21 = v130;
            if (v68 > 15)
            {
              goto LABEL_11;
            }

            if ((inited & 0x2000000000000000) == 0)
            {
              goto LABEL_54;
            }
          }

          v72 = inited;
          goto LABEL_61;
        }
      }

      __break(1u);
LABEL_135:
      v115 = String.UTF8View._foreignCount()();
      v102 = v115 + 1;
      if (!__OFADD__(v115, 1))
      {
        goto LABEL_104;
      }

LABEL_137:
      __break(1u);
LABEL_138:
      if ((v102 & 0x1000000000000000) != 0)
      {
        v23 = _StringGuts._foreignConvertedToSmall()(v23, v102);
        v120 = v119;
        v102;
        v102 = v120;
      }

      else
      {
        if ((v23 & 0x1000000000000000) != 0)
        {
          v116 = ((v102 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v117 = v23 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v116 = _StringObject.sharedUTF8.getter(v23, v102);
        }

        closure #1 in _StringGuts._convertedToSmall()(v116, v117, &v141, v101);
        v102;
        v102 = *(&v141 + 1);
        v23 = v141;
      }

      goto LABEL_125;
    }

    v60 = 8 * (HIBYTE(v144) & 7);
    v61 = (-255 << v60) - 1;
    v62 = 44 << v60;
    v63 = v57 + 1;
    if (v57 >= 8)
    {
      v65 = v61 & v144 | v62;
      v64 = 8 * (v63 & 7);
      v28 = v135;
LABEL_71:
      v86 = ((-255 << v64) - 1) & v65 | (32 << v64);
    }

    else
    {
      v56 = v61 & v143 | v62;
      v28 = v135;
      if (v57 == 7)
      {
        v64 = 0;
        v65 = v144;
        goto LABEL_71;
      }

      v56 = ((-255 << (8 * (v63 & 7u))) - 1) & v56 | (32 << (8 * (v63 & 7u)));
      v86 = v144;
    }

    v144;
    0xE200000000000000;
    v87 = 0xE000000000000000;
    if (v56 & 0x8080808080808080 | v86 & 0x80808080808080)
    {
      v87 = 0xA000000000000000;
    }

    v143 = v56;
    v144 = (v87 & 0xFF00000000000000 | (v57 << 56) | v86 & 0xFFFFFFFFFFFFFFLL) + 0x200000000000000;
    v32 = v55;
    v17 = v54;
    v21 = v130;
    v24 = v136;
LABEL_77:
    v29 = v137;
    v31 = v134;
LABEL_13:
    v33 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Any>(0);
    v34 = v32;
    inited = swift_initStackObject(v33, v142);
    *(inited + 16) = v138;
    *(inited + 56) = v3;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm((inited + 32));
    v31(boxed_opaque_existential_0Tm, v34, v3);
    specialized _debugPrint<A>(_:separator:terminator:to:)(inited, 0x20uLL, 0xE100000000000000, 0, 0xE000000000000000, &v143);
    0xE000000000000000;
    0xE100000000000000;
    swift_setDeallocating(inited);
    __swift_destroy_boxed_opaque_existential_1Tm((inited + 32));
    v30 = 0;
  }

  v37 = v129;
  v38 = *(v129 + 216);
  if ((v38 & 0x8000000000000000) == 0)
  {
    if (v38 != *(v129 + 224))
    {
      v40 = *(v129 + 24);
      if (!v40)
      {
        goto LABEL_143;
      }

      if (v38 >> 60)
      {
        __break(1u);
        goto LABEL_133;
      }

LABEL_30:
      v44 = (v40 + 8 * v38);
      if ((v44 & 7) == 0)
      {
        v45 = *v44;
        v37[27] = v38 + 1;
        v46 = v37[26];
        swift_unknownObjectRetain(v45);
        v47 = [v46 &sel:v45 objectForKey:?];
        if (v47)
        {
          v48 = v47;
          swift_unknownObjectRelease(v45);
          isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(v3, v3);
          v28 = v135;
          if (isClassOrObjCExistentialType)
          {
            *&v141 = v48;
            swift_dynamicCast(v17, &v141, qword_1EEEAC710, v3, 7uLL, v50, v51, v52, v121);
            v53 = *v28;
          }

          else
          {
            v53 = *v135;
            v89 = v124;
            (*v135)(v124, 1, 1, v3);
            _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v48, v3, v89);
            v90 = v126;
            v91 = v28;
            v92 = v125;
            (*v123)(v126, v89, v125);
            if ((*v122)(v90, 1, v3) == 1)
            {
              _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
            }

            (*v121)(v89, v92);
            swift_unknownObjectRelease(v48);
            (*v137)(v17, v126, v3);
            v21 = v130;
            v28 = v91;
          }

          v53(v17, 0, 1, v3);
          v24 = v136;
          v29 = v137;
          goto LABEL_35;
        }

LABEL_143:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

LABEL_133:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v39 = [*(v129 + 208) countByEnumeratingWithState:v129 + 16 objects:v129 + 80 count:16];
    v37[28] = v39;
    if (v39)
    {
      v37[27] = 0;
      v40 = v37[3];
      if (!v40)
      {
        goto LABEL_143;
      }

      v38 = 0;
      goto LABEL_30;
    }

    v37[27] = -1;
  }

  _sSh8IteratorV8_VariantOySS__GWOe_0(v24);
  (*v28)(v17, 1, 1, v3);
LABEL_92:
  inited = v143;
  v3 = v144;
  v23 = HIBYTE(v144) & 0xF;
  v29 = (v143 & 0xFFFFFFFFFFFFLL);
  if ((v144 & 0x2000000000000000) != 0)
  {
    v99 = HIBYTE(v144) & 0xF;
  }

  else
  {
    v99 = v143 & 0xFFFFFFFFFFFFLL;
  }

  if (!v99 && (v143 & ~v144 & 0x2000000000000000) == 0)
  {
    v144;
    return 93;
  }

  if ((v144 & 0x2000000000000000) != 0 && v23 != 15)
  {
    if (v23 < 8)
    {
      inited = ((-255 << (8 * (HIBYTE(v144) & 7u))) - 1) & v143 | (93 << (8 * (HIBYTE(v144) & 7u)));
    }

    v144;
    0xE100000000000000;
    return inited;
  }

  0xE100000000000000;
  if ((v3 & 0x1000000000000000) != 0)
  {
    goto LABEL_135;
  }

  v67 = __OFADD__(v99, 1);
  v102 = v99 + 1;
  if (v67)
  {
    goto LABEL_137;
  }

LABEL_104:
  if ((inited & ~v3 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v3 & 0xFFFFFFFFFFFFFFFLL))
  {
    v103 = _StringGuts.nativeUnusedCapacity.getter(inited, v3);
    if (v104)
    {
      goto LABEL_144;
    }

    if (v102 > 15)
    {
      goto LABEL_115;
    }

    if ((v3 & 0x2000000000000000) == 0)
    {
      if (v103 < 1)
      {
        goto LABEL_110;
      }

LABEL_115:
      _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v102, 1);
      v141 = xmmword_18071DB50;
      closure #1 in _StringGuts.append(_:)(&v141, 1uLL, &v143, 1);
      swift_bridgeObjectRelease_n(0xE100000000000000, 2);
      return v143;
    }

    goto LABEL_117;
  }

  if (v102 > 15)
  {
    goto LABEL_115;
  }

  if ((v3 & 0x2000000000000000) != 0)
  {
LABEL_117:
    v29 = v3;
    goto LABEL_118;
  }

LABEL_110:
  if ((v3 & 0x1000000000000000) != 0)
  {
    goto LABEL_131;
  }

  if ((inited & 0x1000000000000000) != 0)
  {
    v105 = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v105 = _StringObject.sharedUTF8.getter(inited, v3);
    v29 = v118;
  }

  closure #1 in _StringGuts._convertedToSmall()(v105, v29, &v141, v101);
  v29 = *(&v141 + 1);
  inited = v141;
LABEL_118:
  v102 = 0xE100000000000000;
  0xE100000000000000;
  v23 = 93;
  v106._rawBits = 1;
  v107._rawBits = 65537;
  v108._rawBits = _StringGuts.validateScalarRange(_:)(v106, v107, 0x5DuLL, 0xE100000000000000)._rawBits;
  if (v108._rawBits < 0x10000)
  {
    v108._rawBits |= 3;
  }

  if (v108._rawBits >> 16 || (v109._rawBits & 0xFFFFFFFFFFFF0000) != 0x10000)
  {
    v23 = specialized static String._copying(_:)(v108._rawBits, v109, 0x5DuLL, 0xE100000000000000);
    v102 = v110;
    0xE100000000000000;
  }

  if ((v102 & 0x2000000000000000) == 0)
  {
    goto LABEL_138;
  }

  v102;
LABEL_125:
  v111 = specialized _SmallString.init(_:appending:)(inited, v29, v23, v102);
  if (v112)
  {
    goto LABEL_144;
  }

  v113 = v111;
  v3;
  swift_bridgeObjectRelease_n(0xE100000000000000, 2);
  return v113;
}

unint64_t Dictionary.Values.debugDescription.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v218 = a1;
  v213 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1, a3);
  v216 = &v204 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v217 = v5;
  v8 = type metadata accessor for Optional(0, v6, v5, v7);
  v215 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v12 = &v204 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v209 = &v204 - v15;
  MEMORY[0x1EEE9AC00](v14, v16);
  v220 = (&v204 - v17);
  v225 = 0;
  v226 = 0xE000000000000000;
  v18 = _StringGuts.init(_initialCapacity:)(4);
  inited = v18;
  v21 = v19;
  v223 = v18;
  v224 = v19;
  v22 = HIBYTE(v19) & 0xF;
  v23 = v18 & 0xFFFFFFFFFFFFLL;
  if ((v19 & 0x2000000000000000) != 0)
  {
    v24 = HIBYTE(v19) & 0xF;
  }

  else
  {
    v24 = v18 & 0xFFFFFFFFFFFFLL;
  }

  v208 = v8;
  v207 = v12;
  if (!v24 && (v18 & ~v19 & 0x2000000000000000) == 0)
  {
    v19;
    inited = 0;
    v34 = 0xE000000000000000;
    v223 = 0;
LABEL_33:
    v224 = v34;
    goto LABEL_37;
  }

  if ((v19 & 0x2000000000000000) != 0)
  {
    v19;
    0xE000000000000000;
    v33 = 0xA000000000000000;
    if (!(v21 & 0x80808080808080 | inited & 0x8080808080808080))
    {
      v33 = 0xE000000000000000;
    }

    v34 = v33 & 0xFF00000000000000 | (v22 << 56) | v21 & 0xFFFFFFFFFFFFFFLL;
LABEL_32:
    v223 = inited;
    goto LABEL_33;
  }

  0xE000000000000000;
  v26 = v23;
  if ((v21 & 0x1000000000000000) != 0)
  {
    v26 = String.UTF8View._foreignCount()();
    if ((inited & 0x2000000000000000) == 0)
    {
      goto LABEL_35;
    }
  }

  else if ((inited & 0x2000000000000000) == 0)
  {
    goto LABEL_35;
  }

  if (swift_isUniquelyReferenced_nonNull_native(v21 & 0xFFFFFFFFFFFFFFFLL))
  {
    v27 = _StringGuts.nativeUnusedCapacity.getter(inited, v21);
    if (v28)
    {
      goto LABEL_220;
    }

    if (v26 <= 15 && (v27 & 0x8000000000000000) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_36;
  }

LABEL_35:
  if (v26 <= 15)
  {
LABEL_13:
    if ((v21 & 0x1000000000000000) != 0)
    {
      v30 = _StringGuts._foreignConvertedToSmall()(inited, v21);
      v31 = v35;
    }

    else
    {
      if ((inited & 0x1000000000000000) != 0)
      {
        v29 = ((v21 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v29 = _StringObject.sharedUTF8.getter(inited, v21);
        v23 = v195;
      }

      closure #1 in _StringGuts._convertedToSmall()(v29, v23, &v221, v25);
      v31 = *(&v221 + 1);
      v30 = v221;
    }

    v3 = 0xE000000000000000;
    0xE000000000000000;
    v36._rawBits = 1;
    v37._rawBits = 1;
    v38._rawBits = _StringGuts.validateScalarRange(_:)(v36, v37, 0, 0xE000000000000000)._rawBits;
    if (v38._rawBits < 0x10000)
    {
      v38._rawBits |= 3;
    }

    if (v38._rawBits >> 16 || v39._rawBits >= 0x10000)
    {
      v41 = specialized static String._copying(_:)(v38._rawBits, v39, 0, 0xE000000000000000);
      v3 = v42;
      0xE000000000000000;
    }

    else
    {
      v41 = 0;
    }

    if ((v3 & 0x2000000000000000) != 0)
    {
      v3;
    }

    else if ((v3 & 0x1000000000000000) != 0)
    {
      v41 = _StringGuts._foreignConvertedToSmall()(v41, v3);
      v201 = v200;
      v3;
      v3 = v201;
    }

    else
    {
      if ((v41 & 0x1000000000000000) != 0)
      {
        v191 = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v192 = v41 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v191 = _StringObject.sharedUTF8.getter(v41, v3);
      }

      closure #1 in _StringGuts._convertedToSmall()(v191, v192, &v221, v40);
      v3;
      v3 = *(&v221 + 1);
      v41 = v221;
    }

    v43 = specialized _SmallString.init(_:appending:)(v30, v31, v41, v3);
    if (v45)
    {
      goto LABEL_220;
    }

    inited = v43;
    v34 = v44;
    v21;
    swift_bridgeObjectRelease_n(0xE000000000000000, 2);
    goto LABEL_32;
  }

LABEL_36:
  _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v26, 0);
  v221 = 0uLL;
  closure #1 in _StringGuts.append(_:)(&v221, 0, &v223, 1);
  swift_bridgeObjectRelease_n(0xE000000000000000, 2);
  inited = v223;
  v34 = v224;
LABEL_37:
  v46 = HIBYTE(v34) & 0xF;
  v47 = inited & 0xFFFFFFFFFFFFLL;
  if ((v34 & 0x2000000000000000) != 0)
  {
    v48 = HIBYTE(v34) & 0xF;
  }

  else
  {
    v48 = inited & 0xFFFFFFFFFFFFLL;
  }

  v211 = 0x800000018066CAE0 | 0x8000000000000000;
  if (!v48 && (inited & ~v34 & 0x2000000000000000) == 0)
  {
    0x800000018066CAE0 | 0x8000000000000000;
    v34;
    v223 = 0xD000000000000011;
    v224 = 0x800000018066CAE0 | 0x8000000000000000;
    goto LABEL_92;
  }

  v49 = 0x800000018066CAE0 & 0x2000000000000000;
  v3 = (0x800000018066CAE0 >> 56) & 0xF;
  if ((0x800000018066CAE0 & 0x2000000000000000 & v34) == 0 || (v50 = v46 + v3, v46 + v3 > 0xF))
  {
    if (v49)
    {
      v51 = (0x800000018066CAE0 >> 56) & 0xF;
    }

    else
    {
      v51 = 17;
    }

    v52 = v51;
    if ((0x800000018066CAE0 & 0x1000000000000000) != 0)
    {
      v181._rawBits = (v51 << 16) | 1;
      v182._rawBits = 1;
      v183 = v211;
      v184._rawBits = _StringGuts.validateScalarRange(_:)(v182, v181, 0xD000000000000011, v211)._rawBits;
      v219._rawBits = v185;
      if (v184._rawBits >= 0x10000)
      {
        rawBits = v184._rawBits;
      }

      else
      {
        rawBits = v184._rawBits | 3;
      }

      v183;
      v52 = String.UTF8View.distance(from:to:)(rawBits, v219);
      v183;
      if ((v34 & 0x1000000000000000) == 0)
      {
LABEL_49:
        v53 = __OFADD__(v48, v52);
        v54 = v48 + v52;
        if (!v53)
        {
LABEL_50:
          if ((inited & ~v34 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v34 & 0xFFFFFFFFFFFFFFFLL))
          {
            v55 = _StringGuts.nativeUnusedCapacity.getter(inited, v34);
            if (v56)
            {
              goto LABEL_220;
            }

            if (v54 > 15)
            {
              goto LABEL_61;
            }

            if ((v34 & 0x2000000000000000) == 0)
            {
              if (v55 < v52)
              {
LABEL_56:
                if ((v34 & 0x1000000000000000) != 0)
                {
                  goto LABEL_190;
                }

                v57 = v211;
                if ((inited & 0x1000000000000000) != 0)
                {
                  v58 = ((v34 & 0xFFFFFFFFFFFFFFFLL) + 32);
                }

                else
                {
                  v58 = _StringObject.sharedUTF8.getter(inited, v34);
                  v47 = v196;
                }

                closure #1 in _StringGuts._convertedToSmall()(v58, v47, &v221, v32);
                v3 = *(&v221 + 1);
                inited = v221;
                goto LABEL_76;
              }

LABEL_61:
              _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v54, v52);
              if ((0x800000018066CAE0 & 0x1000000000000000) != 0)
              {
                _StringGuts._foreignAppendInPlace(_:)(0xD000000000000011, v211, 0, v51);
              }

              else if (v49)
              {
                *&v221 = 0xD000000000000011;
                *(&v221 + 1) = 0x800000018066CAE0 & 0xFFFFFFFFFFFFF0;
                closure #1 in _StringGuts.append(_:)(&v221, (0x800000018066CAE0 >> 56) & 0xF, &v223, (0x800000018066CAE0 & 0x4000000000000000) != 0);
              }

              else
              {
                v177 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, 17, (0x800000018066CAE0 & 0xFFFFFFFFFFFFFF0) + 32, 17);
                closure #1 in _StringGuts.append(_:)(v177, v178, &v223, 1);
              }

              goto LABEL_92;
            }
          }

          else
          {
            if (v54 > 15)
            {
              goto LABEL_61;
            }

            if ((v34 & 0x2000000000000000) == 0)
            {
              goto LABEL_56;
            }
          }

          v3 = v34;
          goto LABEL_75;
        }

        goto LABEL_200;
      }
    }

    else if ((v34 & 0x1000000000000000) == 0)
    {
      goto LABEL_49;
    }

    v187 = String.UTF8View._foreignCount()();
    v54 = v187 + v52;
    if (!__OFADD__(v187, v52))
    {
      goto LABEL_50;
    }

LABEL_200:
    __break(1u);
LABEL_201:
    v188 = String.UTF8View._foreignCount()();
    v86 = v188 + 2;
    if (!__OFADD__(v188, 2))
    {
      goto LABEL_104;
    }

LABEL_203:
    __break(1u);
    goto LABEL_204;
  }

  if (v3)
  {
    v59 = 0;
    v60 = 0;
    v61 = 8 * v46;
    v62 = v34;
    do
    {
      v63 = (0x800000018066CAE0 | 0x8000000000000000) >> (v59 & 0x38);
      if (v60 < 8)
      {
        v63 = 0xD000000000000011 >> v59;
      }

      v64 = (v63 << (v61 & 0x38)) | ((-255 << (v61 & 0x38)) - 1) & v62;
      v65 = (v63 << v61) | ((-255 << v61) - 1) & inited;
      if (v46 <= 7)
      {
        inited = v65;
      }

      else
      {
        v62 = v64;
      }

      ++v46;
      v61 += 8;
      v59 += 8;
      ++v60;
    }

    while (8 * v3 != v59);
  }

  else
  {
    v62 = v34;
  }

  v34;
  v77 = 0xA000000000000000;
  if (!(inited & 0x8080808080808080 | v62 & 0x80808080808080))
  {
    v77 = 0xE000000000000000;
  }

  v223 = inited;
  v224 = v77 & 0xFF00000000000000 | (v50 << 56) | v62 & 0xFFFFFFFFFFFFFFLL;
LABEL_92:
  inited = v223;
  v34 = v224;
  v78 = HIBYTE(v224) & 0xF;
  v51 = v223 & 0xFFFFFFFFFFFFLL;
  if ((v224 & 0x2000000000000000) != 0)
  {
    v79 = HIBYTE(v224) & 0xF;
  }

  else
  {
    v79 = v223 & 0xFFFFFFFFFFFFLL;
  }

  if (!v79 && (v223 & ~v224 & 0x2000000000000000) == 0)
  {
    v224;
    v91 = 0xE200000000000000;
    inited = 23336;
    v51 = v217;
    goto LABEL_131;
  }

  if ((v224 & 0x2000000000000000) != 0 && v78 <= 0xD)
  {
    v80 = 8 * (HIBYTE(v224) & 7);
    v81 = (-255 << v80) - 1;
    v82 = 40 << v80;
    v83 = v78 + 1;
    if (v78 >= 8)
    {
      v85 = v81 & v224 | v82;
      v84 = 8 * (v83 & 7);
      v51 = v217;
    }

    else
    {
      inited = v81 & v223 | v82;
      v51 = v217;
      if (v78 != 7)
      {
        inited = ((-255 << (8 * (v83 & 7u))) - 1) & inited | (91 << (8 * (v83 & 7u)));
        v92 = v224;
        goto LABEL_128;
      }

      v84 = 0;
      v85 = v224;
    }

    v92 = ((-255 << v84) - 1) & v85 | (91 << v84);
LABEL_128:
    v224;
    0xE200000000000000;
    v104 = 0xA000000000000000;
    if (!(inited & 0x8080808080808080 | v92 & 0x80808080808080))
    {
      v104 = 0xE000000000000000;
    }

    v91 = (v104 & 0xFF00000000000000 | (v78 << 56) | v92 & 0xFFFFFFFFFFFFFFLL) + 0x200000000000000;
    goto LABEL_131;
  }

  0xE200000000000000;
  if ((v34 & 0x1000000000000000) != 0)
  {
    goto LABEL_201;
  }

  v53 = __OFADD__(v79, 2);
  v86 = v79 + 2;
  if (v53)
  {
    goto LABEL_203;
  }

LABEL_104:
  if ((inited & ~v34 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v34 & 0xFFFFFFFFFFFFFFFLL))
  {
    v87 = _StringGuts.nativeUnusedCapacity.getter(inited, v34);
    if (v88)
    {
      goto LABEL_220;
    }

    if (v86 <= 15)
    {
      if ((v34 & 0x2000000000000000) == 0)
      {
        if (v87 < 2)
        {
          goto LABEL_110;
        }

        goto LABEL_115;
      }

LABEL_119:
      v90 = v34;
LABEL_120:
      0xE200000000000000;
      v93._rawBits = 1;
      v94._rawBits = 131073;
      v95._rawBits = _StringGuts.validateScalarRange(_:)(v93, v94, 0x5B28uLL, 0xE200000000000000)._rawBits;
      if (v95._rawBits < 0x10000)
      {
        v95._rawBits |= 3;
      }

      v97 = Substring.description.getter(v95._rawBits, v96, 0x5B28uLL, 0xE200000000000000);
      v99 = v98;
      0xE200000000000000;
      if ((v99 & 0x2000000000000000) != 0)
      {
        v99;
      }

      else if ((v99 & 0x1000000000000000) != 0)
      {
        v97 = _StringGuts._foreignConvertedToSmall()(v97, v99);
        v203 = v202;
        v99;
        v99 = v203;
      }

      else
      {
        if ((v97 & 0x1000000000000000) != 0)
        {
          v193 = ((v99 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v194 = v97 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v193 = _StringObject.sharedUTF8.getter(v97, v99);
        }

        closure #1 in _StringGuts._convertedToSmall()(v193, v194, &v221, v100);
        v99;
        v99 = *(&v221 + 1);
        v97 = v221;
      }

      v101 = specialized _SmallString.init(_:appending:)(inited, v90, v97, v99);
      if (v103)
      {
        goto LABEL_220;
      }

      inited = v101;
      v91 = v102;
      v34;
      swift_bridgeObjectRelease_n(0xE200000000000000, 2);
      v51 = v217;
      goto LABEL_131;
    }
  }

  else if (v86 <= 15)
  {
    if ((v34 & 0x2000000000000000) == 0)
    {
LABEL_110:
      if ((v34 & 0x1000000000000000) != 0)
      {
        inited = _StringGuts._foreignConvertedToSmall()(inited, v34);
        v90 = v180;
      }

      else
      {
        if ((inited & 0x1000000000000000) != 0)
        {
          v89 = ((v34 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v89 = _StringObject.sharedUTF8.getter(inited, v34);
          v51 = v197;
        }

        closure #1 in _StringGuts._convertedToSmall()(v89, v51, &v221, v70);
        v90 = *(&v221 + 1);
        inited = v221;
      }

      goto LABEL_120;
    }

    goto LABEL_119;
  }

LABEL_115:
  _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v86, 2);
  v221 = xmmword_18071DC30;
  closure #1 in _StringGuts.append(_:)(&v221, 2uLL, &v223, 1);
  swift_bridgeObjectRelease_n(0xE200000000000000, 2);
  inited = v223;
  v91 = v224;
  v51 = v217;
LABEL_131:
  0xE000000000000000;
  v225 = inited;
  v226 = v91;
  inited = v218;
  if ((v218 & 0xC000000000000001) != 0)
  {
    if (v218 < 0)
    {
      v105 = v218;
    }

    else
    {
      v105 = v218 & 0xFFFFFFFFFFFFFF8;
    }

    v106 = type metadata accessor for __CocoaDictionary.Iterator();
    v107 = swift_allocObject(v106, 0xE8, 7uLL);
    v108 = 0;
    v109 = 0;
    v34 = 0;
    *(v107 + 208) = v105;
    *(v107 + 216) = 0;
    *(v107 + 16) = 0u;
    *(v107 + 32) = 0u;
    *(v107 + 48) = 0u;
    *(v107 + 64) = 0u;
    *(v107 + 80) = 0u;
    *(v107 + 96) = 0u;
    *(v107 + 112) = 0u;
    *(v107 + 128) = 0u;
    *(v107 + 144) = 0u;
    *(v107 + 160) = 0u;
    *(v107 + 176) = 0u;
    *(v107 + 192) = 0u;
    *(v107 + 224) = 0;
    v110 = v107 | 0x8000000000000000;
  }

  else
  {
    v111 = -1 << *(v218 + 32);
    v109 = ~v111;
    v108 = v218 + 64;
    v112 = -v111;
    if (v112 < 64)
    {
      v113 = ~(-1 << v112);
    }

    else
    {
      v113 = -1;
    }

    v34 = v113 & *(v218 + 64);
    v110 = v218;
  }

  v114 = v110 & 0x7FFFFFFFFFFFFFFFLL;
  v219._rawBits = v213 + 56;
  v115 = v216;
  v206 = (v215 + 16);
  v205 = (v213 + 48);
  v204 = (v215 + 8);
  v116 = (v213 + 32);
  v210 = v109;
  v117 = (v109 + 64) >> 6;
  v212 = v213 + 16;
  inited;
  v218 = 0;
  v118 = 1;
  v214 = xmmword_18071DB30;
  v215 = v110;
  while ((v110 & 0x8000000000000000) == 0)
  {
    if (v34)
    {
      v129 = v218;
      goto LABEL_157;
    }

    v134 = v218;
    do
    {
      v129 = v134 + 1;
      if (__OFADD__(v134, 1))
      {
        __break(1u);
LABEL_190:
        inited = _StringGuts._foreignConvertedToSmall()(inited, v34);
        v3 = v179;
LABEL_75:
        v57 = v211;
LABEL_76:
        v47 = 0xD000000000000011;
        v57;
        v66._rawBits = 1;
        v67._rawBits = (v51 << 16) | 1;
        v68._rawBits = _StringGuts.validateScalarRange(_:)(v66, v67, 0xD000000000000011, v57)._rawBits;
        if (v68._rawBits < 0x10000)
        {
          v68._rawBits |= 3;
        }

        if (v68._rawBits >> 16 || v69._rawBits >> 16 != v51)
        {
          v47 = specialized static String._copying(_:)(v68._rawBits, v69, 0xD000000000000011, v57);
          v51 = v71;
          v57;
        }

        else
        {
          v51 = v57;
        }

        if ((v51 & 0x2000000000000000) != 0)
        {
          v51;
          goto LABEL_86;
        }

LABEL_204:
        if ((v51 & 0x1000000000000000) != 0)
        {
          v47 = _StringGuts._foreignConvertedToSmall()(v47, v51);
          v199 = v198;
          v51;
          v51 = v199;
        }

        else
        {
          if ((v47 & 0x1000000000000000) != 0)
          {
            v189 = ((v51 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v190 = v47 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v189 = _StringObject.sharedUTF8.getter(v47, v51);
          }

          closure #1 in _StringGuts._convertedToSmall()(v189, v190, &v221, v70);
          v51;
          v51 = *(&v221 + 1);
          v47 = v221;
        }

LABEL_86:
        v72 = specialized _SmallString.init(_:appending:)(inited, v3, v47, v51);
        if ((v74 & 1) == 0)
        {
          v75 = v72;
          v76 = v73;
          v34;
          v223 = v75;
          v224 = v76;
          goto LABEL_92;
        }

LABEL_220:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      if (v129 >= v117)
      {
        (*v219._rawBits)(v220, 1, 1, v51);
        _sSh8IteratorV8_VariantOySS__GWOe_0(v110);
        goto LABEL_177;
      }

      v34 = *(v108 + 8 * v129);
      ++v134;
    }

    while (!v34);
    v218 = v129;
LABEL_157:
    v135 = __clz(__rbit64(v34));
    v34 &= v34 - 1;
    v136 = v213;
    v137 = *(v110 + 56) + *(v213 + 72) * (v135 | (v129 << 6));
    v138 = v220;
    (*(v213 + 16))(v220, v137, v51);
    v139 = *(v136 + 56);
    v140 = v138;
    v139(v138, 0, 1, v51);
LABEL_165:
    v152 = *v116;
    (*v116)(v115, v140, v51);
    if ((v118 & 1) == 0)
    {
      v153 = v226;
      v154 = HIBYTE(v226) & 0xF;
      if ((v226 & 0x2000000000000000) == 0)
      {
        v154 = v225 & 0xFFFFFFFFFFFFLL;
      }

      if (v154 || (v225 & ~v226 & 0x2000000000000000) != 0)
      {
        if (v226 & 0x2000000000000000) == 0 || (v155 = specialized _SmallString.init(_:appending:)(v225, v226, 0x202CuLL, 0xE200000000000000), (v157))
        {
          0xE200000000000000;
          _StringGuts.append(_:)(8236, 0xE200000000000000, 0, 2, v119, v120, v121, v122, v123, v124, v125, v126);
          swift_bridgeObjectRelease_n(0xE200000000000000, 2);
        }

        else
        {
          v158 = v155;
          v159 = v156;
          v153;
          0xE200000000000000;
          v225 = v158;
          v226 = v159;
        }

        v115 = v216;
        v51 = v217;
      }

      else
      {
        v226;
        v225 = 8236;
        v226 = 0xE200000000000000;
      }
    }

    v127 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Any>(0);
    inited = swift_initStackObject(v127, v222);
    *(inited + 16) = v214;
    *(inited + 56) = v51;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm((inited + 32));
    v152(boxed_opaque_existential_0Tm, v115, v51);
    specialized _debugPrint<A>(_:separator:terminator:to:)(inited, 0x20uLL, 0xE100000000000000, 0, 0xE000000000000000, &v225);
    0xE000000000000000;
    0xE100000000000000;
    swift_setDeallocating(inited);
    __swift_destroy_boxed_opaque_existential_1Tm((inited + 32));
    v118 = 0;
    v110 = v215;
  }

  v130 = *(v114 + 216);
  v131 = v220;
  if ((v130 & 0x8000000000000000) == 0)
  {
    if (v130 != *(v114 + 224))
    {
      v133 = *(v114 + 24);
      if (!v133)
      {
        goto LABEL_219;
      }

      if (v130 >> 60)
      {
        __break(1u);
        goto LABEL_193;
      }

LABEL_160:
      v141 = (v133 + 8 * v130);
      if ((v141 & 7) == 0)
      {
        v142 = *v141;
        *(v114 + 216) = v130 + 1;
        v143 = *(v114 + 208);
        swift_unknownObjectRetain(v142);
        v144 = [v143 &sel:v142 objectForKey:?];
        if (v144)
        {
          v145 = v144;
          swift_unknownObjectRelease(v142);
          v146 = v217;
          if (_swift_isClassOrObjCExistentialType(v217, v217))
          {
            v223 = v145;
            v140 = v220;
            swift_dynamicCast(v220, &v223, qword_1EEEAC710, v146, 7uLL, v147, v148, v149, v204);
            v150 = *v219._rawBits;
            v151 = v146;
          }

          else
          {
            v150 = *v219._rawBits;
            v160 = v209;
            (*v219._rawBits)(v209, 1, 1, v146);
            _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v145, v146, v160);
            v161 = v207;
            (*v206)(v207, v209, v208);
            if ((*v205)(v161, 1, v146) == 1)
            {
              _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
            }

            v151 = v146;
            (*v204)(v209, v208);
            swift_unknownObjectRelease(v145);
            v140 = v220;
            (*v116)(v220, v207, v146);
          }

          v150(v140, 0, 1, v151);
          v51 = v151;
          v115 = v216;
          goto LABEL_165;
        }

LABEL_219:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

LABEL_193:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v132 = [*(v114 + 208) countByEnumeratingWithState:v114 + 16 objects:v114 + 80 count:16];
    *(v114 + 224) = v132;
    if (v132)
    {
      *(v114 + 216) = 0;
      v133 = *(v114 + 24);
      if (!v133)
      {
        goto LABEL_219;
      }

      v130 = 0;
      goto LABEL_160;
    }

    *(v114 + 216) = -1;
  }

  _sSh8IteratorV8_VariantOySS__GWOe_0(v110);
  (*v219._rawBits)(v131, 1, 1, v51);
LABEL_177:
  v162 = v226;
  v163 = HIBYTE(v226) & 0xF;
  if ((v226 & 0x2000000000000000) == 0)
  {
    v163 = v225 & 0xFFFFFFFFFFFFLL;
  }

  v164 = v211;
  if (v163 || (v225 & ~v226 & 0x2000000000000000) != 0)
  {
    if ((v226 & 0x2000000000000000) != 0 && (v165 = specialized _SmallString.init(_:appending:)(v225, v226, 0x295DuLL, 0xE200000000000000), (v166 & 1) == 0))
    {
      v176 = v165;
      v162;
      v164;
      0xE200000000000000;
      return v176;
    }

    else
    {
      0xE200000000000000;
      _StringGuts.append(_:)(10589, 0xE200000000000000, 0, 2, v167, v168, v169, v170, v171, v172, v173, v174);
      v164;
      swift_bridgeObjectRelease_n(0xE200000000000000, 2);
      return v225;
    }
  }

  else
  {
    v226;
    v164;
    return 10589;
  }
}

__n128 Dictionary.Keys.Iterator.init(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 32);
  result = *a1;
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  *(a2 + 32) = v2;
  return result;
}

id __CocoaDictionary.Iterator.nextKey()()
{
  return __CocoaDictionary.Iterator.nextKey()();
}

{
  v1 = *(v0 + 216);
  if ((v1 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  if (v1 != *(v0 + 224))
  {
    v3 = *(v0 + 24);
    if (v3)
    {
      if (v1 >> 60)
      {
        __break(1u);
        goto LABEL_13;
      }

LABEL_9:
      v4 = (v3 + 8 * v1);
      if ((v4 & 7) == 0)
      {
        v5 = *v4;
        *(v0 + 216) = v1 + 1;
        return swift_unknownObjectRetain(v5);
      }

LABEL_13:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

LABEL_14:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  result = [*(v0 + 208) countByEnumeratingWithState:v0 + 16 objects:v0 + 80 count:16];
  *(v0 + 224) = result;
  if (result)
  {
    *(v0 + 216) = 0;
    v3 = *(v0 + 24);
    if (v3)
    {
      v1 = 0;
      goto LABEL_9;
    }

    goto LABEL_14;
  }

  *(v0 + 216) = -1;
  return result;
}

uint64_t Dictionary.Keys.Iterator._base.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  result = _sSh8IteratorV8_VariantOyx__GSHRzlWOy_0(v3);
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  return result;
}

uint64_t Dictionary.Values.Iterator.next()@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  if (*v2 < 0)
  {
    v10 = *(result + 24);
    v11 = __CocoaDictionary.Iterator.next()();
    if (v11)
    {
      v13 = v12;
      swift_unknownObjectRelease(v11);
      _forceBridgeFromObjectiveC<A>(_:_:)(v13, v10, a2, v14);
      swift_unknownObjectRelease(v13);
      v15 = *(*(v10 - 1) + 7);
      v16 = a2;
      v17 = 0;
    }

    else
    {
      v15 = *(*(v10 - 1) + 7);
      v16 = a2;
      v17 = 1;
    }

    return v15(v16, v17, 1, v10);
  }

  else
  {
    v5 = v2[1];
    v6 = v2[2];
    v7 = v2[3];
    v8 = v2[4];
    if (v8)
    {
      v9 = v2[3];
LABEL_13:
      v21 = (v8 - 1) & v8;
      v22 = *(result + 24);
      v23 = *(v22 - 8);
      (*(v23 + 16))(a2, *(v4 + 56) + *(v23 + 72) * (__clz(__rbit64(v8)) | (v9 << 6)), v22);
      result = (*(v23 + 56))(a2, 0, 1, v22);
      v20 = v9;
LABEL_14:
      *v2 = v4;
      v2[1] = v5;
      v2[2] = v6;
      v2[3] = v20;
      v2[4] = v21;
    }

    else
    {
      v18 = (v6 + 64) >> 6;
      if (v18 <= v7 + 1)
      {
        v19 = v7 + 1;
      }

      else
      {
        v19 = (v6 + 64) >> 6;
      }

      v20 = v19 - 1;
      while (1)
      {
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if (v9 >= v18)
        {
          result = (*(*(*(result + 24) - 8) + 56))(a2, 1, 1);
          v21 = 0;
          goto LABEL_14;
        }

        v8 = *(v5 + 8 * v9);
        ++v7;
        if (v8)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }

  return result;
}

id __CocoaDictionary.Iterator.next()()
{
  v1 = __CocoaDictionary.Iterator.nextKey()();
  if (v1 && ![*(v0 + 208) &sel:v1 objectForKey:?])
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return v1;
}

uint64_t _NativeDictionary.Iterator.nextValue()@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = v2[4];
  if (v4)
  {
    v2[4] = (v4 - 1) & v4;
    v5 = __clz(__rbit64(v4)) | (v2[3] << 6);
LABEL_8:
    v10 = *(*v2 + 56);
    v11 = *(result + 24);
    v16 = *(v11 - 8);
    (*(v16 + 16))(a2, v10 + *(v16 + 72) * v5, v11);
    v12 = *(v16 + 56);
    v13 = a2;
    v14 = 0;
    v15 = v11;
LABEL_9:

    return v12(v13, v14, 1, v15);
  }

  else
  {
    v6 = v2[3];
    v7 = (v2[2] + 64) >> 6;
    while (1)
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v8 >= v7)
      {
        v15 = *(result + 24);
        v12 = *(*(v15 - 8) + 56);
        v13 = a2;
        v14 = 1;
        goto LABEL_9;
      }

      v2[3] = v8;
      v9 = *(v2[1] + 8 * v8);
      v2[4] = v9;
      ++v6;
      if (v9)
      {
        v2[4] = (v9 - 1) & v9;
        v5 = __clz(__rbit64(v9)) | (v8 << 6);
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZs11AnyHashableV_ADTt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  if (v7)
  {
    do
    {
      v9 = __clz(__rbit64(v7));
      v10 = (v7 - 1) & v7;
      v11 = v9 | (v3 << 6);
      v12 = a2;
LABEL_12:
      v15 = 40 * v11;
      outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v11, v38);
      outlined init with copy of AnyHashable(*(v2 + 56) + v15, &v35);
      if (!v38[3])
      {
        return 1;
      }

      v16 = specialized __RawDictionaryStorage.find<A>(_:)(v38);
      v18 = v17;
      outlined destroy of AnyHashable(v38);
      if ((v18 & 1) == 0)
      {
        outlined destroy of AnyHashable(&v35);
        return 0;
      }

      v27 = v10;
      outlined init with copy of AnyHashable(*(v12 + 56) + 40 * v16, v32);
      v19 = v33;
      v20 = v34;
      __swift_project_boxed_opaque_existential_0Tm(v32, v33);
      (*(v20 + 8))(v29, v19, v20);
      v21 = v30;
      v22 = v31;
      __swift_project_boxed_opaque_existential_0Tm(v29, v30);
      v23 = v36;
      v24 = v37;
      __swift_project_boxed_opaque_existential_0Tm(&v35, v36);
      (*(v24 + 8))(v28, v23, v24);
      v25 = (*(v22 + 16))(v28, v21, v22);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      outlined destroy of AnyHashable(v32);
      result = outlined destroy of AnyHashable(&v35);
      if ((v25 & 1) == 0)
      {
        return 0;
      }

      v7 = v27;
    }

    while (v27);
  }

  v13 = v3;
  v12 = a2;
  while (1)
  {
    v3 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v14 = *(v4 + 8 * v3);
    ++v13;
    if (v14)
    {
      v10 = (v14 - 1) & v14;
      v11 = __clz(__rbit64(v14)) | (v3 << 6);
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSi_SiTt1g5(unint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + 8 * v12);
    result = specialized __RawDictionaryStorage.find<A>(_:)(*(*(v3 + 48) + 8 * v12));
    if ((v14 & 1) == 0 || *(*(a2 + 56) + 8 * result) != v13)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t static Dictionary<>.== infix(_:_:)(uint64_t a1, uint64_t a2, unint64_t *a3, char *a4, uint64_t a5, uint64_t a6)
{
  v105 = a5;
  v106 = a6;
  v107 = *(a4 - 1);
  v10 = MEMORY[0x1EEE9AC00](a1, a2);
  v12 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = &v83 - v15;
  v18 = *(v17 - 8);
  v20 = MEMORY[0x1EEE9AC00](v14, v19);
  v22 = &v83 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = &v83 - v24;
  swift_getTupleTypeMetadata2(255, v26, a4, "key value ", 0);
  v28 = v27;
  v31 = type metadata accessor for Optional(0, v27, v29, v30);
  v33 = MEMORY[0x1EEE9AC00](v31, v32);
  result = MEMORY[0x1EEE9AC00](v33, v34);
  v40 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v41 = a1;
    }

    else
    {
      v41 = (a1 & 0xFFFFFFFFFFFFFF8);
    }

    if (v40)
    {
      if (a2 < 0)
      {
        v42 = a2;
      }

      else
      {
        v42 = (a2 & 0xFFFFFFFFFFFFFF8);
      }

      return swift_stdlib_NSObject_isEqual(v41, v42);
    }

    v43 = a2;
    goto LABEL_18;
  }

  v95 = &v83 - v38;
  v96 = v39;
  v94 = result;
  v97 = v22;
  v98 = v25;
  v99 = v18;
  if (v40)
  {
    if (a2 < 0)
    {
      v41 = a2;
    }

    else
    {
      v41 = (a2 & 0xFFFFFFFFFFFFFF8);
    }

    v43 = a1;
LABEL_18:
    v44 = v106;

    return _NativeDictionary<>.isEqual(to:)(v41, v43, a3, a4, v36, v44);
  }

  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v101 = v16;
  v91 = a2;
  v45 = 0;
  v87 = a1;
  v46 = *(a1 + 64);
  v85 = a1 + 64;
  v47 = 1 << *(a1 + 32);
  v48 = -1;
  if (v47 < 64)
  {
    v48 = ~(-1 << v47);
  }

  v49 = v48 & v46;
  v84 = (v47 + 63) >> 6;
  v93 = v28 - 8;
  v50 = v99;
  v86 = v99 + 16;
  v100 = v107 + 16;
  v102 = (v107 + 32);
  v103 = (v99 + 32);
  v92 = (v37 + 32);
  v88 = v106 + 8;
  v89 = (v107 + 8);
  v90 = (v99 + 8);
  v51 = v94;
  while (v49)
  {
    v104 = (v49 - 1) & v49;
    v52 = __clz(__rbit64(v49)) | (v45 << 6);
    v53 = v98;
LABEL_36:
    v58 = v87;
    (*(v50 + 16))(v53, *(v87 + 48) + *(v50 + 72) * v52, a3);
    v59 = *(v58 + 56);
    v60 = v107;
    v61 = v101;
    (*(v107 + 16))(v101, v59 + *(v107 + 72) * v52, a4);
    v62 = *(v28 + 48);
    v63 = *(v50 + 32);
    v64 = v96;
    v63(v96, v53, a3);
    (*(v60 + 32))(v64 + v62, v61, a4);
    v65 = 0;
    v51 = v94;
LABEL_37:
    v66 = *(v28 - 8);
    (*(v66 + 56))(v64, v65, 1, v28);
    v67 = v95;
    (*v92)(v95, v64, v51);
    v68 = (*(v66 + 48))(v67, 1, v28);
    v69 = v68 == 1;
    v70 = v97;
    if (v68 == 1)
    {
      return v69;
    }

    v71 = *(v28 + 48);
    (*v103)(v97, v67, a3);
    (*v102)(v12, &v67[v71], a4);
    v72 = v91;
    v73 = __RawDictionaryStorage.find<A>(_:)(v70, a3, v105);
    v74 = v70;
    v75 = v73;
    v77 = v76;
    (*v90)(v74, a3);
    if ((v77 & 1) == 0)
    {
      (*v89)(v12, a4);
      return 0;
    }

    v78 = v107;
    v79 = *(v72 + 56) + *(v107 + 72) * v75;
    v80 = v101;
    (*(v107 + 16))(v101, v79, a4);
    v81 = (*(v106 + 8))(v80, v12, a4);
    v82 = *(v78 + 8);
    v82(v80, a4);
    result = (v82)(v12, a4);
    v50 = v99;
    v49 = v104;
    if ((v81 & 1) == 0)
    {
      return v69;
    }
  }

  if (v84 <= v45 + 1)
  {
    v54 = v45 + 1;
  }

  else
  {
    v54 = v84;
  }

  v55 = v54 - 1;
  v53 = v98;
  while (1)
  {
    v56 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      break;
    }

    if (v56 >= v84)
    {
      v104 = 0;
      v65 = 1;
      v45 = v55;
      v64 = v96;
      goto LABEL_37;
    }

    v57 = *(v85 + 8 * v56);
    ++v45;
    if (v57)
    {
      v104 = (v57 - 1) & v57;
      v52 = __clz(__rbit64(v57)) | (v56 << 6);
      v45 = v56;
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

uint64_t _NativeDictionary<>.isEqual(to:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  v87 = a6;
  v84 = a5;
  v96 = *(a4 - 1);
  v9 = MEMORY[0x1EEE9AC00](a1, a2);
  v11 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v9, v12);
  v94 = &v70 - v14;
  v82 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v13, v16);
  v83 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v19);
  v81 = &v70 - v20;
  v95 = v21;
  swift_getTupleTypeMetadata2(255, v21, a4, "key value ", 0);
  v23 = v22;
  v86 = type metadata accessor for Optional(0, v22, v24, v25);
  v27 = MEMORY[0x1EEE9AC00](v86, v26);
  result = MEMORY[0x1EEE9AC00](v27, v28);
  v88 = &v70 - v32;
  if (a2 == a1)
  {
    return 1;
  }

  if (*(a2 + 16) != *(a1 + 16))
  {
    return 0;
  }

  v85 = v31;
  v33 = 0;
  v74 = a2;
  v34 = *(a2 + 64);
  v71 = a2 + 64;
  v35 = 1 << *(a2 + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & v34;
  v38 = (v35 + 63) >> 6;
  v80 = v23 - 8;
  v72 = v82 + 16;
  v89 = v96 + 16;
  v92 = (v82 + 32);
  v91 = (v96 + 32);
  v79 = (v30 + 32);
  v76 = (v82 + 8);
  v75 = v87 + 8;
  v77 = (v96 + 8);
  v78 = a1;
  v73 = v11;
  v90 = v23;
  while (v37)
  {
    v93 = (v37 - 1) & v37;
    v39 = __clz(__rbit64(v37)) | (v33 << 6);
LABEL_16:
    v46 = v74;
    v48 = v81;
    v47 = v82;
    v49 = v95;
    (*(v82 + 16))(v81, *(v74 + 48) + *(v82 + 72) * v39, v95);
    v50 = v96;
    v51 = v94;
    (*(v96 + 16))(v94, *(v46 + 56) + *(v96 + 72) * v39, a4);
    v23 = v90;
    v52 = *(v90 + 48);
    v53 = *(v47 + 32);
    v42 = v85;
    v53(v85, v48, v49);
    (*(v50 + 32))(v42 + v52, v51, a4);
    v54 = 0;
    v11 = v73;
    v43 = v88;
LABEL_17:
    v55 = *(v23 - 8);
    (*(v55 + 56))(v42, v54, 1, v23);
    (*v79)(v43, v42, v86);
    v56 = (*(v55 + 48))(v43, 1, v23);
    v57 = v56 == 1;
    if (v56 == 1)
    {
      return v57;
    }

    v58 = *(v23 + 48);
    v59 = v83;
    v60 = v95;
    (*v92)(v83, v43, v95);
    (*v91)(v11, &v43[v58], a4);
    v61 = v78;
    v62 = __RawDictionaryStorage.find<A>(_:)(v59, v60, v84);
    v64 = v63;
    (*v76)(v59, v60);
    if ((v64 & 1) == 0)
    {
      (*v77)(v11, a4);
      return 0;
    }

    v65 = v96;
    v66 = *(v61 + 56) + *(v96 + 72) * v62;
    v67 = v94;
    (*(v96 + 16))(v94, v66, a4);
    v68 = (*(v87 + 8))(v67, v11, a4);
    v69 = *(v65 + 8);
    v69(v67, a4);
    result = (v69)(v11, a4);
    v23 = v90;
    v37 = v93;
    if ((v68 & 1) == 0)
    {
      return v57;
    }
  }

  if (v38 <= v33 + 1)
  {
    v40 = v33 + 1;
  }

  else
  {
    v40 = v38;
  }

  v41 = v40 - 1;
  v42 = v85;
  v43 = v88;
  while (1)
  {
    v44 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v44 >= v38)
    {
      v93 = 0;
      v54 = 1;
      v33 = v41;
      goto LABEL_17;
    }

    v45 = *(v71 + 8 * v44);
    ++v33;
    if (v45)
    {
      v93 = (v45 - 1) & v45;
      v39 = __clz(__rbit64(v45)) | (v44 << 6);
      v33 = v44;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t _NativeDictionary<>.isEqual(to:)(void *a1, uint64_t a2, unint64_t *a3, Class *a4, uint64_t a5, uint64_t a6)
{
  v83 = a6;
  v7 = a3;
  v10 = type metadata accessor for Optional(0, a4, a3, a4);
  v11 = *(v10 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v13, v16);
  v70 = &v61 - v18;
  v19 = *(a4 - 1);
  v21 = MEMORY[0x1EEE9AC00](v17, v20);
  v80 = (&v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = MEMORY[0x1EEE9AC00](v21, v23);
  v86 = &v61 - v25;
  v26 = *(v7 - 1);
  v28 = MEMORY[0x1EEE9AC00](v24, v27);
  v71 = (&v61 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v81 = v29;
  MEMORY[0x1EEE9AC00](v28, v30);
  v85 = (&v61 - v31);
  v32 = *(a2 + 16);
  v82 = a1;
  if (v32 == [a1 count])
  {
    v67 = v15;
    v68 = v10;
    v33 = 0;
    v79 = a2;
    v34 = a2 + 64;
    v35 = 1 << *(a2 + 32);
    v36 = -1;
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    v37 = v36 & *(a2 + 64);
    v38 = (v35 + 63) >> 6;
    v76 = v19 + 16;
    v77 = v26 + 16;
    v69 = (v26 + 32);
    v74 = (v26 + 8);
    v66 = (v19 + 56);
    v65 = (v11 + 16);
    v64 = (v19 + 48);
    v63 = (v11 + 8);
    v62 = (v19 + 32);
    v72 = v83 + 8;
    v73 = v26;
    v78 = v19;
    v75 = (v19 + 8);
    while (1)
    {
      if (v37)
      {
        v39 = __clz(__rbit64(v37));
        v84 = (v37 - 1) & v37;
        goto LABEL_12;
      }

      v40 = v33;
      do
      {
        v33 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          __break(1u);
          goto LABEL_28;
        }

        if (v33 >= v38)
        {
          return 1;
        }

        v41 = *(v34 + 8 * v33);
        ++v40;
      }

      while (!v41);
      v39 = __clz(__rbit64(v41));
      v84 = (v41 - 1) & v41;
LABEL_12:
      v42 = v39 | (v33 << 6);
      v43 = v79;
      (*(v26 + 16))(v85, *(v79 + 48) + *(v26 + 72) * v42, v7);
      (*(v78 + 16))(v86, *(v43 + 56) + *(v78 + 72) * v42, a4);
      if (_swift_isClassOrObjCExistentialType(v7, v7))
      {
        if (v81 == 8)
        {
          v44 = v85;
          v45 = *v85;
          v46 = *v74;
          swift_unknownObjectRetain(*v85);
          v46(v44, v7);
          goto LABEL_15;
        }

LABEL_28:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v56 = v71;
      (*v69)(v71, v85, v7);
      v45 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)(v56, v7);
LABEL_15:
      v47 = [v82 &sel:v45 objectForKey:?];
      swift_unknownObjectRelease(v45);
      if (!v47)
      {
        break;
      }

      if (_swift_isClassOrObjCExistentialType(a4, a4))
      {
        v51 = v7;
        v87 = v47;
        v52 = v80;
        swift_dynamicCast(v80, &v87, qword_1EEEAC710, a4, 7uLL, v48, v49, v50, v61);
      }

      else
      {
        v57 = v70;
        (*v66)(v70, 1, 1, a4);
        _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v47, a4, v57);
        v58 = v67;
        v59 = v68;
        (*v65)(v67, v57, v68);
        if ((*v64)(v58, 1, a4) == 1)
        {
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v51 = v7;
        swift_unknownObjectRelease(v47);
        (*v63)(v57, v59);
        v52 = v80;
        (*v62)(v80, v58, a4);
      }

      v53 = v86;
      v54 = (*(v83 + 8))(v86, v52, a4);
      v55 = *v75;
      (*v75)(v53, a4);
      v55(v52, a4);
      v7 = v51;
      v26 = v73;
      v37 = v84;
      if ((v54 & 1) == 0)
      {
        return 0;
      }
    }

    (*v75)(v86, a4);
  }

  return 0;
}

void specialized Dictionary<>.hash(into:)(__int128 *a1, unint64_t a2)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;
  a2;
  v9 = 0;
  v10 = 0;
  if (v7)
  {
    while (1)
    {
      v11 = v10;
LABEL_8:
      v12 = 40 * (__clz(__rbit64(v7)) | (v11 << 6));
      outlined init with copy of AnyHashable(*(a2 + 48) + v12, &v29);
      outlined init with copy of AnyHashable(*(a2 + 56) + v12, &v37);
      v13 = *(&v30 + 1);
      if (!*(&v30 + 1))
      {
        break;
      }

      v14 = v31;
      v15 = v37;
      v16 = v38;
      v17 = v39;
      v7 &= v7 - 1;
      v37 = v29;
      v38 = v30;
      v39 = v31;
      v34 = v15;
      v35 = v16;
      v36 = v17;
      v18 = a1[3];
      v31 = a1[2];
      v32 = v18;
      v33 = *(a1 + 8);
      v19 = a1[1];
      v29 = *a1;
      v30 = v19;
      __swift_project_boxed_opaque_existential_0Tm(&v37, v13);
      (*(v14 + 8))(v26, v13, v14);
      v20 = v27;
      v21 = v28;
      __swift_project_boxed_opaque_existential_0Tm(v26, v27);
      (*(v21 + 32))(&v29, v20, v21);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      outlined destroy of AnyHashable(&v37);
      v22 = *(&v35 + 1);
      v23 = v36;
      __swift_project_boxed_opaque_existential_0Tm(&v34, *(&v35 + 1));
      (*(v23 + 8))(v26, v22, v23);
      v24 = v27;
      v25 = v28;
      __swift_project_boxed_opaque_existential_0Tm(v26, v27);
      (*(v25 + 32))(&v29, v24, v25);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      outlined destroy of AnyHashable(&v34);
      v9 ^= Hasher._finalize()();
      v10 = v11;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

LABEL_11:
    a2;
    Hasher._combine(_:)(v9);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v8)
      {
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v11);
      ++v10;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void Dictionary<>.hash(into:)(uint64_t a1, int64_t a2, char *a3, char *a4, uint64_t a5, uint64_t a6)
{
  v144 = a5;
  v145 = a6;
  v6 = a4;
  v7 = a3;
  v142 = a1;
  v121 = type metadata accessor for Optional(0, a4, a3, a4);
  v9 = *(v121 - 8);
  v11 = MEMORY[0x1EEE9AC00](v121, v10);
  v13 = &v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v109 - v15;
  v19 = type metadata accessor for Optional(0, v7, v17, v18);
  v20 = *(v19 - 8);
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v124 = &v109 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v22, v24);
  v125 = &v109 - v26;
  v131 = *(v6 - 1);
  v28 = MEMORY[0x1EEE9AC00](v25, v27);
  v123 = (&v109 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = MEMORY[0x1EEE9AC00](v28, v30);
  v150 = (&v109 - v32);
  v130 = *(v7 - 1);
  v34 = MEMORY[0x1EEE9AC00](v31, v33);
  v127 = (&v109 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v34, v36);
  v149 = &v109 - v37;
  swift_getTupleTypeMetadata2(255, v7, v6, "key value ", 0);
  v39 = v38;
  v140 = type metadata accessor for Optional(0, v38, v40, v41);
  v43 = MEMORY[0x1EEE9AC00](v140, v42);
  v147 = &v109 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43, v45);
  v139 = &v109 - v47;
  v120 = v13;
  v119 = v16;
  v118 = v19;
  if ((a2 & 0xC000000000000001) != 0)
  {
    if (a2 < 0)
    {
      v48 = a2;
    }

    else
    {
      v48 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    v49 = v46;
    v50 = type metadata accessor for __CocoaDictionary.Iterator();
    v51 = swift_allocObject(v50, 0xE8, 7uLL);
    v46 = v49;
    v52 = 0;
    v53 = 0;
    v54 = 0;
    *(v51 + 208) = v48;
    *(v51 + 216) = 0;
    *(v51 + 16) = 0u;
    *(v51 + 32) = 0u;
    *(v51 + 48) = 0u;
    *(v51 + 64) = 0u;
    *(v51 + 80) = 0u;
    *(v51 + 96) = 0u;
    *(v51 + 112) = 0u;
    *(v51 + 128) = 0u;
    *(v51 + 144) = 0u;
    *(v51 + 160) = 0u;
    *(v51 + 176) = 0u;
    *(v51 + 192) = 0u;
    *(v51 + 224) = 0;
    v55 = v51 | 0x8000000000000000;
  }

  else
  {
    v56 = -1 << *(a2 + 32);
    v53 = ~v56;
    v52 = a2 + 64;
    v57 = -v56;
    if (v57 < 64)
    {
      v58 = ~(-1 << v57);
    }

    else
    {
      v58 = -1;
    }

    v54 = v58 & *(a2 + 64);
    v55 = a2;
  }

  v146 = v55;
  v126 = v55 & 0x7FFFFFFFFFFFFFFFLL;
  v117 = (v130 + 56);
  v116 = (v20 + 16);
  v115 = (v130 + 48);
  v114 = (v20 + 8);
  v59 = (v130 + 32);
  v113 = (v131 + 56);
  v112 = (v9 + 16);
  v111 = (v131 + 48);
  v110 = (v9 + 8);
  v60 = (v131 + 32);
  v138 = v39 - 8;
  v122 = v53;
  v143 = (v53 + 64) >> 6;
  v129 = v130 + 16;
  v128 = v131 + 16;
  v137 = (v46 + 32);
  v136 = v144 + 24;
  v135 = (v130 + 8);
  v134 = v145 + 24;
  v133 = (v131 + 8);
  a2;
  v61 = 0;
  v62 = 0;
  v151 = v7;
  v141 = v52;
  v132 = v6;
  while (2)
  {
    v148 = v62;
    v152 = v61;
    if ((v146 & 0x8000000000000000) != 0)
    {
      v76 = v126;
      v77 = __CocoaDictionary.Iterator.nextKey()();
      if (!v77)
      {
        v93 = 1;
        v66 = v62;
        v72 = v54;
        v68 = v147;
        goto LABEL_28;
      }

      v78 = v77;
      v79 = [*(v76 + 208) &sel:v77 objectForKey:?];
      if (!v79)
      {
LABEL_38:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v80 = v79;
      isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(v7, v7);
      v85 = v124;
      v86 = v125;
      if (isClassOrObjCExistentialType)
      {
        *&v153[0] = v78;
        swift_dynamicCast(v127, v153, qword_1EEEAC710, v7, 7uLL, v82, v83, v84, v109);
      }

      else
      {
        (*v117)(v125, 1, 1, v7);
        _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v78, v7, v86);
        v104 = v86;
        v105 = v118;
        (*v116)(v85, v104, v118);
        if ((*v115)(v85, 1, v7) == 1)
        {
          goto LABEL_39;
        }

        swift_unknownObjectRelease(v78);
        (*v114)(v125, v105);
        (*v59)(v127, v85, v7);
      }

      v87 = _swift_isClassOrObjCExistentialType(v6, v6);
      v91 = v148;
      if (v87)
      {
        *&v153[0] = v80;
        v74 = v123;
        swift_dynamicCast(v123, v153, qword_1EEEAC710, v6, 7uLL, v88, v89, v90, v109);
        v66 = v91;
        v72 = v54;
        v75 = v6;
        goto LABEL_27;
      }

      v106 = v119;
      (*v113)(v119, 1, 1, v6);
      _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v80, v6, v106);
      v107 = v120;
      v108 = v121;
      (*v112)(v120, v106, v121);
      if ((*v111)(v107, 1, v6) != 1)
      {
        swift_unknownObjectRelease(v80);
        (*v110)(v106, v108);
        v74 = v123;
        (*v60)(v123, v107, v6);
        v66 = v91;
        v72 = v54;
        v75 = v6;
        goto LABEL_27;
      }

LABEL_39:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v63 = v54;
    v64 = v62;
    if (v54)
    {
LABEL_20:
      v69 = (v63 - 1) & v63;
      v70 = __clz(__rbit64(v63)) | (v64 << 6);
      v71 = v146;
      (*(v130 + 16))(v149, *(v146 + 48) + *(v130 + 72) * v70, v151);
      v72 = v69;
      v73 = *(v71 + 56) + *(v131 + 72) * v70;
      v74 = v150;
      v75 = v132;
      (*(v131 + 16))(v150, v73, v132);
      v66 = v64;
LABEL_27:
      v92 = *(v39 + 48);
      v68 = v147;
      (*v59)();
      (*v60)(&v68[v92], v74, v75);
      v93 = 0;
      v6 = v75;
      goto LABEL_28;
    }

    if (v143 <= v62 + 1)
    {
      v65 = v62 + 1;
    }

    else
    {
      v65 = v143;
    }

    v66 = v65 - 1;
    v67 = v62;
    v68 = v147;
    while (1)
    {
      v64 = v67 + 1;
      if (__OFADD__(v67, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v64 >= v143)
      {
        break;
      }

      v63 = *(v52 + 8 * v64);
      ++v67;
      if (v63)
      {
        goto LABEL_20;
      }
    }

    v72 = 0;
    v93 = 1;
    v6 = v132;
LABEL_28:
    v94 = *(v39 - 8);
    (*(v94 + 56))(v68, v93, 1, v39);
    v95 = v139;
    (*v137)(v139, v68, v140);
    if ((*(v94 + 48))(v95, 1, v39) != 1)
    {
      v96 = *(v39 + 48);
      v97 = v149;
      v98 = v95;
      v99 = v95;
      v7 = v151;
      (*v59)(v149, v98, v151);
      v100 = &v99[v96];
      v101 = v150;
      (*v60)(v150, v100, v6);
      v102 = *(v142 + 48);
      v153[2] = *(v142 + 32);
      v153[3] = v102;
      v154 = *(v142 + 64);
      v103 = *(v142 + 16);
      v153[0] = *v142;
      v153[1] = v103;
      (*(v144 + 24))(v153, v7);
      (*v135)(v97, v7);
      (*(v145 + 24))(v153, v6);
      (*v133)(v101, v6);
      v61 = Hasher._finalize()() ^ v152;
      v62 = v66;
      v54 = v72;
      v52 = v141;
      continue;
    }

    break;
  }

  _sSh8IteratorV8_VariantOySS__GWOe_0(v146);
  Hasher._combine(_:)(v152);
}

Swift::Int Dictionary<>.hashValue.getter(int64_t a1, char *a2, char *a3, uint64_t a4, uint64_t a5)
{
  v9 = 0u;
  v10 = 0u;
  v6 = 0;
  v7 = veorq_s8(_swift_stdlib_Hashing_parameters, xmmword_18071DB60);
  v8 = veorq_s8(_swift_stdlib_Hashing_parameters, xmmword_18071DB70);
  Dictionary<>.hash(into:)(&v6, a1, a2, a3, a4, a5);
  return Hasher._finalize()();
}

uint64_t Dictionary<>._toCustomAnyHashable()@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = specialized _dictionaryUpCast<A, B, C, D>(_:)(a1, a2, a3);
  v14[0] = a2;
  v14[1] = a3;
  v14[2] = a4;
  v14[3] = a5;
  result = type metadata accessor for _DictionaryAnyHashableBox(0, v14);
  a6[3] = result;
  a6[4] = &protocol witness table for _DictionaryAnyHashableBox<A, B>;
  *a6 = a1;
  a6[1] = v12;
  return result;
}

void specialized _dictionaryUpCast<A, B, C, D>(_:)(unint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = _ss18_DictionaryStorageC8allocate8capacityAByxq_GSi_tFZs11AnyHashableV_AGTt0g5Tm(v2, _ss18_DictionaryStorageC8allocate5scale3age4seedAByxq_Gs4Int8V_s5Int32VSgSiSgtFZs11AnyHashableV_AOTt2g5);
  }

  else
  {
    v3 = &_swiftEmptyDictionarySingleton;
  }

  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  v3;
  a1;
  v8 = 0;
  while (v6)
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v11 = 40 * (v10 | (v9 << 6));
    outlined init with copy of AnyHashable(*(a1 + 48) + v11, v16);
    outlined init with copy of AnyHashable(*(a1 + 56) + v11, v18);
    v14[0] = v16[0];
    v14[1] = v16[1];
    v15 = v17;
    v12[0] = v18[0];
    v12[1] = v18[1];
    v13 = v19;
    specialized _NativeDictionary._unsafeInsertNew(key:value:)(v14, v12, v3);
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {
      v3;
      a1;
      return;
    }

    v6 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_12;
    }
  }

  __break(1u);
}

__objc2_class **specialized _dictionaryUpCast<A, B, C, D>(_:)(int64_t a1, Class *a2, char *a3)
{
  v4 = a2;
  swift_getTupleTypeMetadata2(0, a2, a3, "key value ", 0);
  v7 = v6;
  i = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v147 = &v121 - v9;
  v12 = type metadata accessor for Optional(0, a3, v10, v11);
  v159 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  v16 = &v121 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v121 - v18;
  v22 = type metadata accessor for Optional(0, v4, v20, v21);
  v158 = *(v22 - 8);
  v24 = MEMORY[0x1EEE9AC00](v22, v23);
  v137 = &v121 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v24, v26);
  v129 = &v121 - v28;
  v144 = *(a3 - 1);
  v30 = MEMORY[0x1EEE9AC00](v27, v29);
  v136 = (&v121 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = MEMORY[0x1EEE9AC00](v30, v32);
  v156 = &v121 - v34;
  v143 = *(v4 - 1);
  v36 = MEMORY[0x1EEE9AC00](v33, v35);
  v145 = (&v121 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v36, v38);
  v155 = &v121 - v39;
  v42 = type metadata accessor for Optional(0, v7, v40, v41);
  MEMORY[0x1EEE9AC00](v42 - 8, v43);
  v45 = &v121 - v44;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v46 = a1;
    }

    else
    {
      v46 = (a1 & 0xFFFFFFFFFFFFFF8);
    }

    v47 = [v46 count];
    if (v47)
    {
      goto LABEL_6;
    }

LABEL_8:
    v153 = &_swiftEmptyDictionarySingleton;
    goto LABEL_9;
  }

  v47 = *(a1 + 16);
  if (!v47)
  {
    goto LABEL_8;
  }

LABEL_6:
  v153 = _ss18_DictionaryStorageC8allocate8capacityAByxq_GSi_tFZs11AnyHashableV_AGTt0g5Tm(v47, _ss18_DictionaryStorageC8allocate5scale3age4seedAByxq_Gs4Int8V_s5Int32VSgSiSgtFZs11AnyHashableV_AOTt2g5);
LABEL_9:
  v131 = v19;
  v132 = v16;
  v154 = v7;
  v133 = v12;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v48 = a1;
    }

    else
    {
      v48 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    v49 = type metadata accessor for __CocoaDictionary.Iterator();
    v50 = swift_allocObject(v49, 0xE8, 7uLL);
    v51 = 0;
    v52 = 0;
    v53 = 0;
    *(v50 + 208) = v48;
    *(v50 + 216) = 0;
    *(v50 + 16) = 0u;
    *(v50 + 32) = 0u;
    *(v50 + 48) = 0u;
    *(v50 + 64) = 0u;
    *(v50 + 80) = 0u;
    *(v50 + 96) = 0u;
    *(v50 + 112) = 0u;
    *(v50 + 128) = 0u;
    *(v50 + 144) = 0u;
    *(v50 + 160) = 0u;
    *(v50 + 176) = 0u;
    *(v50 + 192) = 0u;
    *(v50 + 224) = 0;
    v54 = v50 | 0x8000000000000000;
  }

  else
  {
    v55 = -1 << *(a1 + 32);
    v52 = ~v55;
    v51 = a1 + 64;
    v56 = -v55;
    if (v56 < 64)
    {
      v57 = ~(-1 << v56);
    }

    else
    {
      v57 = -1;
    }

    v53 = v57 & *(a1 + 64);
    v54 = a1;
  }

  v58 = v159;
  v138 = v54 & 0x7FFFFFFFFFFFFFFFLL;
  v128 = (v143 + 56);
  v127 = (v158 + 2);
  v126 = (v143 + 48);
  v125 = (v158 + 1);
  v159 = (v143 + 32);
  v124 = (v144 + 56);
  v123 = (v58 + 2);
  v122 = (v144 + 48);
  v121 = (v58 + 1);
  v158 = (v144 + 32);
  v152 = (i + 56);
  v134 = v52;
  v135 = (v52 + 64) >> 6;
  v140 = v143 + 16;
  v139 = v144 + 16;
  v151 = (i + 48);
  v146 = (i + 32);
  v153;
  a1;
  v59 = 0;
  v157 = a3;
  v148 = v4;
  v130 = v22;
  v150 = v54;
  v60 = v53;
  v142 = v45;
  v141 = v51;
  if ((v54 & 0x8000000000000000) != 0)
  {
    goto LABEL_28;
  }

LABEL_19:
  v61 = v60;
  v62 = v59;
  if (v60)
  {
LABEL_27:
    i = (v61 - 1) & v61;
    v67 = __clz(__rbit64(v61)) | (v62 << 6);
    v68 = v143;
    v69 = v155;
    (*(v143 + 16))(v155, *(v54 + 48) + *(v143 + 72) * v67, v4);
    v70 = *(v54 + 56);
    v71 = v144;
    v72 = v70 + *(v144 + 72) * v67;
    v73 = *(v144 + 16);
    v149 = v60;
    v74 = v156;
    v75 = v4;
    v76 = v157;
    v73(v156, v72, v157);
    v66 = v154;
    v77 = *(v154 + 48);
    v78 = *(v68 + 32);
    v45 = v142;
    v79 = v69;
    v51 = v141;
    v78(v142, v79, v75);
    (*(v71 + 32))(&v45[v77], v74, v76);
    (*v152)(v45, 0, 1, v66);
    v64 = v62;
    goto LABEL_43;
  }

  if (v135 <= v59 + 1)
  {
    v63 = v59 + 1;
  }

  else
  {
    v63 = v135;
  }

  v64 = v63 - 1;
  v65 = v59;
  v66 = v154;
  while (1)
  {
    v62 = v65 + 1;
    if (__OFADD__(v65, 1))
    {
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (v62 >= v135)
    {
      break;
    }

    v61 = *(v51 + 8 * v62);
    ++v65;
    if (v61)
    {
      goto LABEL_27;
    }
  }

  (*v152)(v45, 1, 1, v154);
  for (i = 0; ; i = v60)
  {
LABEL_43:
    if ((*v151)(v45, 1, v66) == 1)
    {
      _sSh8IteratorV8_VariantOySS__GWOe_0(v150);
      goto LABEL_53;
    }

    v101 = v147;
    (*v146)(v147, v45, v66);
    v102 = *(v66 + 48);
    v103 = v155;
    v4 = v148;
    (*v159)(v155, v101, v148);
    swift_dynamicCast(v161, v103, v4, &type metadata for AnyHashable, 7uLL, v104, v105, v106, v121);
    v107 = &v101[v102];
    v108 = v156;
    v109 = v157;
    (*v158)(v156, v107, v157);
    swift_dynamicCast(&v163, v108, v109, &type metadata for AnyHashable, 7uLL, v110, v111, v112, v121);
    v167 = v162;
    v166[0] = v161[0];
    v166[1] = v161[1];
    v168 = v163;
    v169 = v164;
    v170 = v165;
    v172 = v165;
    v171[0] = v163;
    v171[1] = v164;
    specialized _NativeDictionary._unsafeInsertNew(key:value:)(v161, v171, v153);
    v59 = v64;
    v60 = i;
    v54 = v150;
    if ((v150 & 0x8000000000000000) == 0)
    {
      goto LABEL_19;
    }

LABEL_28:
    v80 = v138;
    v81 = *(v138 + 216);
    v66 = v154;
    if ((v81 & 0x8000000000000000) != 0)
    {
      goto LABEL_52;
    }

    v149 = v59;
    if (v81 == *(v138 + 224))
    {
      break;
    }

    v84 = *(v138 + 24);
    v83 = v137;
    if (!v84)
    {
      goto LABEL_57;
    }

    if (v81 >> 60)
    {
      goto LABEL_55;
    }

LABEL_35:
    v85 = (v84 + 8 * v81);
    if ((v85 & 7) != 0)
    {
      goto LABEL_56;
    }

    v86 = *v85;
    v80[27] = v81 + 1;
    v87 = v80[26];
    swift_unknownObjectRetain(v86);
    v88 = [v87 &sel:v86 objectForKey:?];
    if (!v88)
    {
LABEL_57:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v89 = v88;
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(v4, v4);
    v94 = v157;
    if (isClassOrObjCExistentialType)
    {
      *&v166[0] = v86;
      swift_dynamicCast(v145, v166, qword_1EEEAC710, v4, 7uLL, v91, v92, v93, v121);
    }

    else
    {
      v113 = v129;
      (*v128)(v129, 1, 1, v4);
      _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v86, v4, v113);
      v114 = v83;
      v115 = v130;
      (*v127)(v114, v113, v130);
      if ((*v126)(v137, 1, v4) == 1)
      {
        goto LABEL_58;
      }

      (*v125)(v113, v115);
      swift_unknownObjectRelease(v86);
      (*v159)(v145, v137, v4);
    }

    v95 = _swift_isClassOrObjCExistentialType(v94, v94);
    v99 = v136;
    if (v95)
    {
      *&v166[0] = v89;
      swift_dynamicCast(v136, v166, qword_1EEEAC710, v94, 7uLL, v96, v97, v98, v121);
    }

    else
    {
      v116 = v131;
      (*v124)(v131, 1, 1, v94);
      _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v89, v94, v116);
      v117 = v132;
      v118 = v133;
      (*v123)(v132, v116, v133);
      if ((*v122)(v117, 1, v94) == 1)
      {
LABEL_58:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      (*v121)(v116, v118);
      swift_unknownObjectRelease(v89);
      v99 = v136;
      (*v158)(v136, v117, v94);
    }

    v100 = *(v66 + 48);
    (*v159)(v45, v145, v4);
    (*v158)(&v45[v100], v99, v94);
    (*v152)(v45, 0, 1, v66);
    v64 = v149;
  }

  v82 = [*(v138 + 208) countByEnumeratingWithState:v138 + 16 objects:v138 + 80 count:16];
  v80[28] = v82;
  v83 = v137;
  if (v82)
  {
    v80[27] = 0;
    v84 = v80[3];
    if (!v84)
    {
      goto LABEL_57;
    }

    v81 = 0;
    goto LABEL_35;
  }

  v80[27] = -1;
LABEL_52:
  _sSh8IteratorV8_VariantOySS__GWOe_0(v54);
  (*v152)(v45, 1, 1, v66);
LABEL_53:
  v119 = v153;
  v153;
  return v119;
}

__objc2_class **specialized _dictionaryUpCast<A, B, C, D>(_:)(unint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = _ss18_DictionaryStorageC8allocate8capacityAByxq_GSi_tFZs11AnyHashableV_AGTt0g5Tm(v2, _ss18_DictionaryStorageC8allocate5scale3age4seedAByxq_Gs4Int8V_s5Int32VSgSiSgtFZSS_ypTt2g5);
  }

  else
  {
    v3 = &_swiftEmptyDictionarySingleton;
  }

  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  v3;
  a1;
  v8 = 0;
  if (v6)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_10:
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_20:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (v13 >= v7)
    {
      v3;
      a1;
      return v3;
    }

    v6 = *(a1 + 64 + 8 * v13);
    ++v8;
  }

  while (!v6);
  while (1)
  {
    v14 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v15 = v14 | (v13 << 6);
    v16 = (*(a1 + 48) + 16 * v15);
    v18 = *v16;
    v17 = v16[1];
    outlined init with copy of AnyHashable(*(a1 + 56) + 40 * v15, v38);
    v36 = v18;
    v37 = v17;
    v30[0] = v38[0];
    v30[1] = v38[1];
    v31 = v39;
    v17;
    swift_dynamicCast(v32, v30, &type metadata for AnyHashable, qword_1EEEAC6F8, 7uLL, v19, v20, v21, v29);
    outlined init with take of Any(v32, v34);
    outlined init with take of Any(v34, v35);
    outlined init with take of Any(v35, &v33);
    v22 = specialized __RawDictionaryStorage.find<A>(_:)(v18, v17);
    if (v23)
    {
      v9 = (v3[6] + 16 * v22);
      v10 = v9[1];
      *v9 = v18;
      v9[1] = v17;
      v11 = v22;
      v10;
      v12 = (v3[7] + 32 * v11);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      outlined init with take of Any(&v33, v12);
      v8 = v13;
      if (!v6)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    if (v3[2] >= v3[3])
    {
      goto LABEL_20;
    }

    *(v3 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) = (*(v3 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) | (1 << v22));
    v24 = (v3[6] + 16 * v22);
    *v24 = v18;
    v24[1] = v17;
    result = outlined init with take of Any(&v33, v3[7] + 2 * v22);
    v26 = v3[2];
    v27 = __OFADD__(v26, 1);
    v28 = (&v26->isa + 1);
    if (v27)
    {
      break;
    }

    v3[2] = v28;
    v8 = v13;
    if (!v6)
    {
      goto LABEL_10;
    }

LABEL_9:
    v13 = v8;
  }

  __break(1u);
  return result;
}

{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = _ss18_DictionaryStorageC8allocate8capacityAByxq_GSi_tFZs11AnyHashableV_AGTt0g5Tm(v2, _ss18_DictionaryStorageC8allocate5scale3age4seedAByxq_Gs4Int8V_s5Int32VSgSiSgtFZs11AnyHashableV_ypTt2g5);
  }

  else
  {
    v3 = &_swiftEmptyDictionarySingleton;
  }

  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  v3;
  result = a1;
  for (i = 0; v6; result = specialized _NativeDictionary._unsafeInsertNew(key:value:)(&v25, v22, v3))
  {
    v10 = i;
LABEL_12:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (v10 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    outlined init with copy of AnyHashable(*(a1 + 56) + 40 * v12, v38);
    v36 = v15;
    v37 = v14;
    v33 = v38[0];
    v34 = v38[1];
    v35 = v39;
    v24[0] = v15;
    v24[1] = v14;
    v14;
    swift_dynamicCast(&v25, v24, &type metadata for String, &type metadata for AnyHashable, 7uLL, v16, v17, v18, v22[0]);
    *(&v22[0] + 1) = *(&v33 + 1);
    v22[1] = v34;
    v23 = v35;
    swift_dynamicCast(v28, v22, &type metadata for AnyHashable, qword_1EEEAC6F8, 7uLL, v19, v20, v21, v33);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    outlined init with take of Any(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    outlined init with take of Any(v32, v22);
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v7)
    {
      v3;
      a1;
      return v3;
    }

    v6 = *(a1 + 64 + 8 * v10);
    ++i;
    if (v6)
    {
      i = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

__objc2_class **_dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1, char *a2, char *a3, char *a4, char *a5, uint64_t a6, uint64_t a7)
{
  v333 = a7;
  swift_getTupleTypeMetadata2(0, a4, a5, "key value ", 0);
  v332 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v331 = (&v287 - v14);
  swift_getTupleTypeMetadata2(0, a4, a5, 0, 0);
  v330 = v15;
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  v329 = &v287 - v18;
  v325 = *(a5 - 1);
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v323 = (&v287 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v322 = (&v287 - v24);
  v26 = MEMORY[0x1EEE9AC00](v23, v25);
  v316 = &v287 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26, v28);
  v312 = &v287 - v30;
  v327 = a4;
  v317 = *(a4 - 1);
  v32 = MEMORY[0x1EEE9AC00](v29, v31);
  v321 = &v287 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v32, v34);
  v320 = &v287 - v36;
  v38 = MEMORY[0x1EEE9AC00](v35, v37);
  v311 = &v287 - v39;
  MEMORY[0x1EEE9AC00](v38, v40);
  v310 = &v287 - v41;
  swift_getTupleTypeMetadata2(0, a2, a3, "key value ", 0);
  v43 = v42;
  v337 = *(v42 - 8);
  v45 = MEMORY[0x1EEE9AC00](v42, v44);
  v319 = &v287 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45, v47);
  v309 = &v287 - v48;
  v299 = type metadata accessor for Optional(0, a3, v49, v50);
  v326 = *(v299 - 8);
  v52 = MEMORY[0x1EEE9AC00](v299, v51);
  v303 = (&v287 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
  v55 = MEMORY[0x1EEE9AC00](v52, v54);
  v307 = &v287 - v56;
  v58 = MEMORY[0x1EEE9AC00](v55, v57);
  v302 = &v287 - v59;
  MEMORY[0x1EEE9AC00](v58, v60);
  v324 = &v287 - v61;
  v64 = type metadata accessor for Optional(0, a2, v62, v63);
  v336 = *(v64 - 8);
  v66 = MEMORY[0x1EEE9AC00](v64, v65);
  v305 = &v287 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = MEMORY[0x1EEE9AC00](v66, v68);
  v306 = &v287 - v70;
  v72 = MEMORY[0x1EEE9AC00](v69, v71);
  v74 = (&v287 - v73);
  v76 = MEMORY[0x1EEE9AC00](v72, v75);
  v318 = &v287 - v77;
  v315 = *(a3 - 1);
  v79 = MEMORY[0x1EEE9AC00](v76, v78);
  v304 = (&v287 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0));
  v82 = MEMORY[0x1EEE9AC00](v79, v81);
  v301 = (&v287 - v83);
  v85 = MEMORY[0x1EEE9AC00](v82, v84);
  v344 = &v287 - v86;
  v314 = *(a2 - 1);
  v88 = MEMORY[0x1EEE9AC00](v85, v87);
  v313 = (&v287 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0));
  v91 = MEMORY[0x1EEE9AC00](v88, v90);
  v308 = (&v287 - v92);
  MEMORY[0x1EEE9AC00](v91, v93);
  v343 = &v287 - v94;
  v97 = type metadata accessor for Optional(0, v43, v95, v96);
  v99 = MEMORY[0x1EEE9AC00](v97 - 8, v98);
  v328 = &v287 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v99, v101);
  i = &v287 - v102;
  v103 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v104 = a1;
    if (a1 < 0)
    {
      v105 = a1;
    }

    else
    {
      v105 = (a1 & 0xFFFFFFFFFFFFFF8);
    }

    v106 = [v105 count];
  }

  else
  {
    v104 = a1;
    v106 = *(a1 + 16);
  }

  v297 = v74;
  if (v106)
  {
    v107 = v327;
    type metadata accessor for _DictionaryStorage(0, v327, a5, v333);
    v334 = static _DictionaryStorage.allocate(capacity:)(v106);
  }

  else
  {
    v334 = &_swiftEmptyDictionarySingleton;
    v107 = v327;
  }

  v339 = a3;
  v340 = a5;
  v341 = v43;
  v342 = a2;
  v298 = v64;
  if (v107 == &type metadata for String)
  {
    v115 = v334;
    v116 = v104;
    if (v103)
    {
      if (v104 < 0)
      {
        v117 = v104;
      }

      else
      {
        v117 = v104 & 0xFFFFFFFFFFFFFF8;
      }

      v118 = type metadata accessor for __CocoaDictionary.Iterator();
      v119 = swift_allocObject(v118, 0xE8, 7uLL);
      v303 = 0;
      v120 = 0;
      v121 = 0;
      *(v119 + 208) = v117;
      *(v119 + 216) = 0;
      *(v119 + 16) = 0u;
      *(v119 + 32) = 0u;
      *(v119 + 48) = 0u;
      *(v119 + 64) = 0u;
      *(v119 + 80) = 0u;
      *(v119 + 96) = 0u;
      *(v119 + 112) = 0u;
      *(v119 + 128) = 0u;
      *(v119 + 144) = 0u;
      *(v119 + 160) = 0u;
      *(v119 + 176) = 0u;
      *(v119 + 192) = 0u;
      *(v119 + 224) = 0;
      v122 = v119 | 0x8000000000000000;
    }

    else
    {
      v198 = -1 << *(v104 + 32);
      v120 = ~v198;
      v199 = *(v104 + 64);
      v303 = (v104 + 64);
      v200 = -v198;
      if (v200 < 64)
      {
        v201 = ~(-1 << v200);
      }

      else
      {
        v201 = -1;
      }

      v121 = (v201 & v199);
      v122 = v104;
    }

    v202 = v324;
    v203 = v318;
    v204 = i;
    v304 = (v122 & 0x7FFFFFFFFFFFFFFFLL);
    v295 = (v314 + 56);
    v294 = (v336 + 16);
    v293 = (v314 + 48);
    v292 = (v336 + 8);
    v335 = (v314 + 32);
    v291 = (v315 + 56);
    v290 = (v326 + 2);
    v289 = (v315 + 48);
    v288 = (v326 + 1);
    v328 = (v315 + 32);
    v323 = (v337 + 56);
    v296 = v120;
    v300 = ((v120 + 64) >> 6);
    v319 = (v314 + 16);
    v313 = (v315 + 16);
    v322 = (v337 + 48);
    v320 = (v337 + 32);
    v326 = (v325 + 32);
    v327 = (v317 + 32);
    v305 = (v115 + 8);
    v307 = (v317 + 40);
    v306 = (v325 + 40);
    v115;
    v116;
    v205 = 0;
    v321 = v122;
    v334 = v115;
    while (1)
    {
      if ((v122 & 0x8000000000000000) != 0)
      {
        v224 = v304;
        v225 = v304[27];
        if ((v225 & 0x8000000000000000) != 0)
        {
          goto LABEL_103;
        }

        if (v225 == v304[28])
        {
          v226 = [v304[26] countByEnumeratingWithState:v304 + 2 objects:v304 + 10 count:16];
          *(v224 + 28) = v226;
          if (!v226)
          {
            *(v224 + 27) = -1;
LABEL_103:
            (*v323)(v204, 1, 1, v43);
            v197 = v122;
            goto LABEL_104;
          }

          *(v224 + 27) = 0;
          v227 = *(v224 + 3);
          if (!v227)
          {
            goto LABEL_112;
          }

          v225 = 0;
        }

        else
        {
          v227 = v304[3];
          if (!v227)
          {
            goto LABEL_112;
          }

          if (v225 >> 60)
          {
            goto LABEL_111;
          }
        }

        v228 = &v227[8 * v225];
        if ((v228 & 7) != 0)
        {
          goto LABEL_107;
        }

        v229 = v202;
        v209 = v205;
        v230 = *v228;
        *(v224 + 27) = v225 + 1;
        v231 = *(v224 + 26);
        swift_unknownObjectRetain(v230);
        v232 = [v231 &sel:v230 objectForKey:?];
        if (!v232)
        {
          goto LABEL_112;
        }

        v233 = v232;
        v336 = v121;
        v234 = v342;
        isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(v342, v342);
        v239 = v302;
        if (isClassOrObjCExistentialType)
        {
          v345 = v230;
          swift_dynamicCast(v308, &v345, qword_1EEEAC710, v234, 7uLL, v236, v237, v238, v287);
        }

        else
        {
          (*v295)(v203, 1, 1, v234);
          _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v230, v234, v203);
          v280 = v297;
          v281 = v298;
          (*v294)(v297, v203, v298);
          if ((*v293)(v280, 1, v234) == 1)
          {
            goto LABEL_109;
          }

          swift_unknownObjectRelease(v230);
          (*v292)(v203, v281);
          (*v335)(v308, v280, v234);
          v239 = v302;
        }

        v240 = v339;
        v241 = _swift_isClassOrObjCExistentialType(v339, v339);
        v245 = v301;
        if (v241)
        {
          v345 = v233;
          swift_dynamicCast(v301, &v345, qword_1EEEAC710, v240, 7uLL, v242, v243, v244, v287);
        }

        else
        {
          (*v291)(v229, 1, 1, v240);
          _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v233, v240, v229);
          v282 = v239;
          v283 = v239;
          v284 = v299;
          (*v290)(v282, v229, v299);
          if ((*v289)(v283, 1, v240) == 1)
          {
LABEL_109:
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

          swift_unknownObjectRelease(v233);
          (*v288)(v229, v284);
          (*v328)(v245, v283, v240);
        }

        v246 = *(v43 + 48);
        (*v335)(v204, v308, v342);
        (*v328)(&v204[v246], v245, v240);
        (*v323)(v204, 0, 1, v43);
        v337 = v336;
      }

      else
      {
        v206 = v121;
        v207 = v205;
        if (v121)
        {
LABEL_74:
          v337 = (v206 - 1) & v206;
          v211 = __clz(__rbit64(v206)) | (v207 << 6);
          v212 = v314;
          v214 = v342;
          v213 = v343;
          (*(v314 + 16))(v343, *(v122 + 48) + *(v314 + 72) * v211, v342);
          v215 = *(v122 + 56);
          v216 = v315;
          v217 = v215 + *(v315 + 72) * v211;
          v218 = *(v315 + 16);
          v336 = v121;
          v219 = v344;
          v220 = v339;
          v218(v344, v217, v339);
          v221 = *(v341 + 48);
          v222 = *(v212 + 32);
          v223 = v214;
          v204 = i;
          v43 = v341;
          v222(i, v213, v223);
          (*(v216 + 32))(&v204[v221], v219, v220);
          (*v323)(v204, 0, 1, v43);
          v209 = v207;
        }

        else
        {
          if (v300 <= (v205 + 1))
          {
            v208 = v205 + 1;
          }

          else
          {
            v208 = v300;
          }

          v209 = v208 - 1;
          v210 = v205;
          while (1)
          {
            v207 = (v210 + 1);
            if (__OFADD__(v210, 1))
            {
              goto LABEL_106;
            }

            if (v207 >= v300)
            {
              break;
            }

            v206 = v303[v207];
            ++v210;
            if (v206)
            {
              goto LABEL_74;
            }
          }

          (*v323)(v204, 1, 1, v43);
          v337 = 0;
        }
      }

      if ((*v322)(v204, 1, v43) == 1)
      {
        v197 = v321;
        goto LABEL_104;
      }

      v336 = v209;
      v247 = v309;
      (*v320)(v309, v204, v43);
      v248 = *(v43 + 48);
      v249 = *(v332 + 48);
      v251 = v342;
      v250 = v343;
      (*v335)(v343, v247, v342);
      v252 = v331;
      swift_dynamicCast(v331, v250, v251, &type metadata for String, 7uLL, v253, v254, v255, v287);
      v256 = &v247[v248];
      v257 = v344;
      v258 = v339;
      (*v328)(v344, v256, v339);
      swift_dynamicCast((v252 + v249), v257, v258, v340, 7uLL, v259, v260, v261, v287);
      v262 = v329;
      v263 = *(v330 + 48);
      v264 = *v327;
      (*v327)(v329, v252, &type metadata for String);
      v265 = *v326;
      v266 = v252 + v249;
      v267 = v340;
      (*v326)(&v262[v263], v266, v340);
      v268 = v310;
      (v264)(v310, v262, &type metadata for String);
      v269 = v312;
      v265(v312, &v262[v263], v267);
      v270 = v311;
      (v264)(v311, v268, &type metadata for String);
      v271 = v316;
      v265(v316, v269, v267);
      v272 = v334;
      v273 = __RawDictionaryStorage.find<A>(_:)(v270, &type metadata for String, v333);
      v274 = v273;
      if (v275)
      {
        (*(v317 + 40))(v272[6] + *(v317 + 72) * v273, v270, &type metadata for String);
        (*(v325 + 40))(v272[7] + *(v325 + 72) * v274, v271, v267);
        v205 = v336;
      }

      else
      {
        v276 = v336;
        if (v272[2] >= v272[3])
        {
          goto LABEL_109;
        }

        *&v305[(v273 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v273;
        (v264)(v272[6] + *(v317 + 72) * v273, v270, &type metadata for String);
        v265(v272[7] + *(v325 + 72) * v274, v271, v267);
        v277 = v272[2];
        v278 = __OFADD__(v277, 1);
        v279 = (&v277->isa + 1);
        if (v278)
        {
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v272[2] = v279;
        v205 = v276;
      }

      v121 = v337;
      v204 = i;
      v43 = v341;
      v202 = v324;
      v203 = v318;
      v122 = v321;
    }
  }

  v108 = v334;
  v109 = v104;
  if (v103)
  {
    if (v104 < 0)
    {
      v110 = v104;
    }

    else
    {
      v110 = v104 & 0xFFFFFFFFFFFFFF8;
    }

    v111 = type metadata accessor for __CocoaDictionary.Iterator();
    v112 = swift_allocObject(v111, 0xE8, 7uLL);
    v309 = 0;
    v113 = 0;
    v114 = 0;
    *(v112 + 208) = v110;
    *(v112 + 216) = 0;
    *(v112 + 16) = 0u;
    *(v112 + 32) = 0u;
    *(v112 + 48) = 0u;
    *(v112 + 64) = 0u;
    *(v112 + 80) = 0u;
    *(v112 + 96) = 0u;
    *(v112 + 112) = 0u;
    *(v112 + 128) = 0u;
    *(v112 + 144) = 0u;
    *(v112 + 160) = 0u;
    *(v112 + 176) = 0u;
    *(v112 + 192) = 0u;
    *(v112 + 224) = 0;
    v104 = v112 | 0x8000000000000000;
  }

  else
  {
    v123 = -1 << *(v104 + 32);
    v113 = ~v123;
    v124 = *(v104 + 64);
    v309 = (v104 + 64);
    v125 = -v123;
    if (v125 < 64)
    {
      v126 = ~(-1 << v125);
    }

    else
    {
      v126 = -1;
    }

    v114 = (v126 & v124);
  }

  v312 = (v104 & 0x7FFFFFFFFFFFFFFFLL);
  v301 = (v314 + 56);
  v300 = v336 + 16;
  v297 = (v314 + 48);
  v296 = (v336 + 8);
  v336 = (v314 + 32);
  v295 = (v315 + 56);
  v294 = (v326 + 2);
  v293 = (v315 + 48);
  v292 = (v326 + 1);
  v335 = (v315 + 32);
  v326 = (v337 + 56);
  v302 = v113;
  v308 = ((v113 + 64) >> 6);
  v311 = (v314 + 16);
  v310 = (v315 + 16);
  v324 = (v337 + 48);
  v318 = (v337 + 32);
  v317 += 32;
  v316 = (v325 + 32);
  v108;
  v109;
  v127 = 0;
  v325 = v104;
  if (v104 < 0)
  {
    goto LABEL_35;
  }

LABEL_26:
  v128 = v114;
  v129 = v127;
  v130 = v339;
  v131 = v341;
  v132 = v342;
  if (v114)
  {
LABEL_34:
    v337 = v114;
    i = ((v128 - 1) & v128);
    v137 = __clz(__rbit64(v128)) | (v129 << 6);
    v138 = v314;
    v139 = v343;
    (*(v314 + 16))(v343, *(v104 + 48) + *(v314 + 72) * v137, v342);
    v140 = v315;
    v141 = *(v104 + 56) + *(v315 + 72) * v137;
    v142 = v344;
    (*(v315 + 16))(v344, v141, v130);
    v143 = *(v131 + 48);
    v144 = *(v138 + 32);
    v145 = v328;
    v144(v328, v139, v132);
    v146 = *(v140 + 32);
    v136 = v145;
    v146(&v145[v143], v142, v130);
    (*v326)(v145, 0, 1, v131);
    v134 = v129;
    goto LABEL_50;
  }

  if (v308 <= v127 + 1)
  {
    v133 = (v127 + 1);
  }

  else
  {
    v133 = v308;
  }

  v134 = v133 - 1;
  v135 = v127;
  v136 = v328;
  while (1)
  {
    v129 = v135 + 1;
    if (__OFADD__(v135, 1))
    {
      __break(1u);
LABEL_106:
      __break(1u);
LABEL_107:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (v129 >= v308)
    {
      break;
    }

    v128 = *&v309[8 * v129];
    ++v135;
    if (v128)
    {
      goto LABEL_34;
    }
  }

  (*v326)(v328, 1, 1, v341);
  for (i = 0; ; i = v114)
  {
LABEL_50:
    if ((*v324)(v136, 1, v131) == 1)
    {
      v197 = v325;
      goto LABEL_104;
    }

    v170 = v319;
    (*v318)(v319, v136, v131);
    v171 = *(v131 + 48);
    v172 = *(v332 + 48);
    v173 = v343;
    (*v336)(v343, v170, v132);
    v174 = v331;
    v175 = v327;
    swift_dynamicCast(v331, v173, v132, v327, 7uLL, v176, v177, v178, v287);
    v179 = &v170[v171];
    v180 = v344;
    (*v335)(v344, v179, v130);
    v181 = v340;
    swift_dynamicCast((v174 + v172), v180, v130, v340, 7uLL, v182, v183, v184, v287);
    v185 = v329;
    v186 = *(v330 + 48);
    v337 = v134;
    v187 = *v317;
    (*v317)(v329, v174, v175);
    v188 = *v316;
    (*v316)(&v185[v186], v174 + v172, v181);
    v189 = v320;
    v187(v320, v185, v175);
    v190 = &v185[v186];
    v191 = v322;
    v188(v322, v190, v181);
    v192 = v321;
    v187(v321, v189, v175);
    v193 = v323;
    v188(v323, v191, v181);
    _NativeDictionary._unsafeInsertNew(key:value:)(v192, v193, v334, v175, v181, v333);
    v127 = v337;
    v114 = i;
    v104 = v325;
    if ((v325 & 0x8000000000000000) == 0)
    {
      goto LABEL_26;
    }

LABEL_35:
    v147 = v312;
    v148 = *(v312 + 27);
    v130 = v339;
    v131 = v341;
    v132 = v342;
    if ((v148 & 0x8000000000000000) != 0)
    {
      goto LABEL_101;
    }

    if (v148 == *(v312 + 28))
    {
      break;
    }

    v152 = *(v312 + 3);
    v150 = v307;
    v151 = v306;
    if (!v152)
    {
      goto LABEL_112;
    }

    if (v148 >> 60)
    {
      __break(1u);
      goto LABEL_109;
    }

LABEL_42:
    v153 = (v152 + 8 * v148);
    if ((v153 & 7) != 0)
    {
      goto LABEL_107;
    }

    v154 = *v153;
    v147[27] = v148 + 1;
    v155 = v147[26];
    swift_unknownObjectRetain(v154);
    v156 = [v155 &sel:v154 objectForKey:?];
    if (!v156)
    {
      goto LABEL_112;
    }

    v157 = v156;
    v158 = _swift_isClassOrObjCExistentialType(v132, v132);
    v162 = v305;
    if (v158)
    {
      v345 = v154;
      swift_dynamicCast(v313, &v345, qword_1EEEAC710, v132, 7uLL, v159, v160, v161, v287);
    }

    else
    {
      (*v301)(v151, 1, 1, v132);
      _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v154, v132, v151);
      v194 = v162;
      v195 = v298;
      (*v300)(v194, v151, v298);
      if ((*v297)(v305, 1, v132) == 1)
      {
        goto LABEL_109;
      }

      swift_unknownObjectRelease(v154);
      (*v296)(v151, v195);
      (*v336)(v313, v305, v132);
    }

    v163 = _swift_isClassOrObjCExistentialType(v130, v130);
    v167 = v303;
    v168 = v304;
    if (v163)
    {
      v345 = v157;
      swift_dynamicCast(v304, &v345, qword_1EEEAC710, v130, 7uLL, v164, v165, v166, v287);
    }

    else
    {
      (*v295)(v150, 1, 1, v130);
      _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v157, v130, v150);
      v196 = v299;
      (*v294)(v167, v150, v299);
      if ((*v293)(v167, 1, v130) == 1)
      {
        goto LABEL_109;
      }

      swift_unknownObjectRelease(v157);
      (*v292)(v150, v196);
      v168 = v304;
      (*v335)(v304, v167, v130);
    }

    v169 = *(v131 + 48);
    v136 = v328;
    (*v336)(v328, v313, v132);
    (*v335)(&v136[v169], v168, v130);
    (*v326)(v136, 0, 1, v131);
    v134 = v127;
  }

  v149 = [*(v312 + 26) countByEnumeratingWithState:v312 + 16 objects:v312 + 80 count:16];
  v147 = v312;
  *(v312 + 28) = v149;
  v150 = v307;
  v151 = v306;
  if (v149)
  {
    v147[27] = 0;
    v152 = v147[3];
    if (!v152)
    {
      goto LABEL_112;
    }

    v148 = 0;
    goto LABEL_42;
  }

  v147[27] = -1;
  v104 = v325;
LABEL_101:
  (*v326)(v328, 1, 1, v131);
  v197 = v104;
LABEL_104:
  _sSh8IteratorV8_VariantOySS__GWOe_0(v197);
  v285 = v334;
  v334;
  return v285;
}

unint64_t _DictionaryAnyHashableBox._base.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, unint64_t *a5@<X8>)
{
  a5[3] = type metadata accessor for Dictionary(0, a2, a3, a4);
  *a5 = a1;

  return a1;
}

void _DictionaryAnyHashableBox._canonicalBox.getter(unint64_t a1@<X1>, unint64_t *a2@<X8>)
{
  a1;
  specialized _dictionaryUpCast<A, B, C, D>(_:)(a1);
  a2[3] = qword_1EEEBF448;
  a2[4] = &protocol witness table for _DictionaryAnyHashableBox<A, B>;
  *a2 = a1;
  a2[1] = v4;
}

uint64_t _DictionaryAnyHashableBox._isEqual(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  outlined init with copy of MirrorPath(a1, v14);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15_AnyHashableBox_pMd, _ss15_AnyHashableBox_pMR);
  if (!swift_dynamicCast(v13, v14, v4, qword_1EEEBF448, 6uLL, v5, v6, v7, v12))
  {
    return 2;
  }

  v8 = v13[0];
  v9 = v13[1];
  v10 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZs11AnyHashableV_ADTt1g5(a3, v13[0]);
  v9;
  v8;
  return v10 & 1;
}

Swift::Int _DictionaryAnyHashableBox._hashValue.getter(uint64_t a1, unint64_t a2)
{
  v6 = 0u;
  v7 = 0u;
  v3 = 0;
  v4 = veorq_s8(_swift_stdlib_Hashing_parameters, xmmword_18071DB60);
  v5 = veorq_s8(_swift_stdlib_Hashing_parameters, xmmword_18071DB70);
  specialized Dictionary<>.hash(into:)(&v3, a2);
  return Hasher._finalize()();
}

Swift::Int __swiftcall _DictionaryAnyHashableBox._rawHashValue(_seed:)(Swift::Int _seed)
{
  v7 = 0u;
  v8 = 0u;
  *&v3 = 0;
  *(&v3 + 1) = _swift_stdlib_Hashing_parameters ^ _seed ^ 0x736F6D6570736575;
  v4 = *(&_swift_stdlib_Hashing_parameters + 1) ^ 0x646F72616E646F6DLL;
  v5 = _swift_stdlib_Hashing_parameters ^ _seed ^ 0x6C7967656E657261;
  v6 = *(&_swift_stdlib_Hashing_parameters + 1) ^ 0x7465646279746573;
  specialized Dictionary<>.hash(into:)(&v3, v1);
  return Hasher._finalize()();
}

uint64_t _DictionaryAnyHashableBox._unbox<A>()@<X0>(unint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, Class *a4@<X4>, uint64_t a5@<X5>, swift *a6@<X8>)
{
  v16 = a1;
  v9 = type metadata accessor for Dictionary(0, a2, a3, a5);
  a1;
  v13 = swift_dynamicCast(a6, &v16, v9, a4, 6uLL, v10, v11, v12, v15);
  return (*(*(a4 - 1) + 7))(a6, v13 ^ 1u, 1, a4);
}

uint64_t _DictionaryAnyHashableBox._downCastConditional<A>(into:)(char *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, Class *a6, uint64_t a7)
{
  v30 = a1;
  v12 = type metadata accessor for Optional(0, a6, a3, a4);
  v13 = *(v12 - 8);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v17 = (&v30 - v16);
  v18 = *(a6 - 1);
  MEMORY[0x1EEE9AC00](v15, v19);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a2;
  v22 = type metadata accessor for Dictionary(0, a4, a5, a7);
  a2;
  v26 = swift_dynamicCast(v17, &v31, v22, a6, 6uLL, v23, v24, v25, v30);
  v27 = *(v18 + 56);
  if (v26)
  {
    v27(v17, 0, 1, a6);
    v28 = *(v18 + 32);
    v28(v21, v17, a6);
    v28(v30, v21, a6);
  }

  else
  {
    v27(v17, 1, 1, a6);
    (*(v13 + 8))(v17, v12);
  }

  return v26;
}

uint64_t Dictionary.description.getter(int64_t a1, char *a2, char *a3, uint64_t a4)
{
  v7 = type metadata accessor for Optional(0, a3, a3, a4);
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v241 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v241 - v14;
  v252 = type metadata accessor for Optional(0, a2, v16, v17);
  v18 = *(v252 - 8);
  v20 = MEMORY[0x1EEE9AC00](v252 - 8, v19);
  v274 = &v241 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v253 = (&v241 - v24);
  v266 = *(a3 - 1);
  v26 = MEMORY[0x1EEE9AC00](v23, v25);
  v283 = (&v241 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = MEMORY[0x1EEE9AC00](v26, v28);
  v258 = (&v241 - v30);
  v32 = MEMORY[0x1EEE9AC00](v29, v31);
  v264 = (&v241 - v33);
  v265 = *(a2 - 1);
  v35 = MEMORY[0x1EEE9AC00](v32, v34);
  v276 = &v241 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1EEE9AC00](v35, v37);
  v260 = (&v241 - v39);
  MEMORY[0x1EEE9AC00](v38, v40);
  v263 = &v241 - v41;
  swift_getTupleTypeMetadata2(255, a2, a3, "key value ", 0);
  v275 = v42;
  v271 = type metadata accessor for Optional(0, v42, v43, v44);
  v45 = *(v271 - 8);
  v47 = MEMORY[0x1EEE9AC00](v271, v46);
  MEMORY[0x1EEE9AC00](v47, v48);
  v278 = &v241 - v49;
  v285 = a2;
  v270 = v50;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (*(a1 + 16))
    {
      v250 = v12;
      v251 = v7;
      v290 = 91;
      v291 = 0xE100000000000000;
      v57 = -1 << *(a1 + 32);
      v54 = ~v57;
      v58 = *(a1 + 64);
      v259 = a1 + 64;
      v59 = -v57;
      if (v59 < 64)
      {
        v60 = ~(-1 << v59);
      }

      else
      {
        v60 = -1;
      }

      v55 = v60 & v58;
      v56 = a1;
      goto LABEL_12;
    }

    return 6109787;
  }

  if (a1 < 0)
  {
    v51 = a1;
  }

  else
  {
    v51 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  if (![v51 count])
  {
    return 6109787;
  }

  v250 = v12;
  v251 = v7;
  v290 = 91;
  v291 = 0xE100000000000000;
  v52 = type metadata accessor for __CocoaDictionary.Iterator();
  v53 = swift_allocObject(v52, 0xE8, 7uLL);
  v259 = 0;
  v54 = 0;
  v55 = 0;
  *(v53 + 208) = v51;
  *(v53 + 216) = 0;
  *(v53 + 16) = 0u;
  *(v53 + 32) = 0u;
  *(v53 + 48) = 0u;
  *(v53 + 64) = 0u;
  *(v53 + 80) = 0u;
  *(v53 + 96) = 0u;
  *(v53 + 112) = 0u;
  *(v53 + 128) = 0u;
  *(v53 + 144) = 0u;
  *(v53 + 160) = 0u;
  *(v53 + 176) = 0u;
  *(v53 + 192) = 0u;
  *(v53 + 224) = 0;
  v56 = v53 | 0x8000000000000000;
LABEL_12:
  v277 = a3;
  v272 = v56;
  v61 = v56 & 0x7FFFFFFFFFFFFFFFLL;
  v249 = (v265 + 56);
  v248 = (v18 + 16);
  v247 = (v265 + 48);
  v246 = (v18 + 8);
  v284 = (v265 + 32);
  v245 = (v266 + 56);
  v244 = (v8 + 16);
  v243 = (v266 + 48);
  v242 = (v8 + 8);
  v286 = (v266 + 32);
  v62 = v275;
  v269 = v275 - 8;
  v254 = v54;
  v257 = (v54 + 64) >> 6;
  v262 = v265 + 16;
  v261 = v266 + 16;
  v268 = (v45 + 32);
  a1;
  v63 = 0;
  v64 = 1;
  v282 = xmmword_18071DB30;
  v256 = xmmword_18071DC40;
  v255 = xmmword_18071DB40;
  v65 = v274;
  v267 = v61;
  v273 = v15;
  while (1)
  {
    v68 = v55;
    v69 = v278;
    if ((v272 & 0x8000000000000000) != 0)
    {
      v83 = __CocoaDictionary.Iterator.nextKey()();
      if (!v83)
      {
        v99 = 1;
        v280 = v63;
        v281 = v68;
        v98 = v270;
        goto LABEL_34;
      }

      v84 = v83;
      v85 = v15;
      v86 = v62;
      v87 = [*(v61 + 208) &sel:v83 objectForKey:?];
      if (!v87)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v88 = v87;
      v89 = v285;
      isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(v285, v285);
      v81 = v277;
      if (isClassOrObjCExistentialType)
      {
        *&v289 = v84;
        swift_dynamicCast(v260, &v289, qword_1EEEAC710, v89, 7uLL, v91, v92, v93, v241);
      }

      else
      {
        (*v249)(v253, 1, 1, v89);
        _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v84, v89, v253);
        v182 = v65;
        v183 = v252;
        (*v248)(v182, v253, v252);
        if ((*v247)(v274, 1, v89) == 1)
        {
          goto LABEL_245;
        }

        (*v246)(v253, v183);
        swift_unknownObjectRelease(v84);
        (*v284)(v260, v274, v89);
      }

      v62 = v86;
      if (_swift_isClassOrObjCExistentialType(v81, v81))
      {
        *&v289 = v88;
        v80 = v258;
        swift_dynamicCast(v258, &v289, qword_1EEEAC710, v81, 7uLL, v94, v95, v96, v241);
LABEL_32:
        v82 = v260;
        v280 = v63;
        v281 = v68;
        v78 = v285;
        goto LABEL_33;
      }

      (*v245)(v85, 1, 1, v81);
      _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v88, v81, v85);
      v184 = v250;
      v185 = v251;
      (*v244)(v250, v85, v251);
      if ((*v243)(v184, 1, v81) != 1)
      {
        (*v242)(v85, v185);
        swift_unknownObjectRelease(v88);
        v80 = v258;
        (*v286)(v258, v184, v81);
        goto LABEL_32;
      }

LABEL_245:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v70 = v68;
    v71 = v63;
    if (v68)
    {
LABEL_25:
      v281 = (v70 - 1) & v70;
      v75 = __clz(__rbit64(v70)) | (v71 << 6);
      v76 = v263;
      v77 = v272;
      v78 = v285;
      (*(v265 + 16))(v263, *(v272 + 48) + *(v265 + 72) * v75, v285);
      v79 = *(v77 + 56) + *(v266 + 72) * v75;
      v80 = v264;
      v81 = v277;
      (*(v266 + 16))(v264, v79, v277);
      v82 = v76;
      v62 = v275;
      v280 = v71;
LABEL_33:
      v97 = *(v62 + 48);
      v98 = v270;
      (*v284)(v270, v82, v78);
      (*v286)((v98 + v97), v80, v81);
      v99 = 0;
LABEL_34:
      v69 = v278;
      goto LABEL_35;
    }

    if (v257 <= v63 + 1)
    {
      v72 = v63 + 1;
    }

    else
    {
      v72 = v257;
    }

    v73 = v72 - 1;
    v74 = v63;
    while (1)
    {
      v71 = v74 + 1;
      if (__OFADD__(v74, 1))
      {
        __break(1u);
        goto LABEL_228;
      }

      if (v71 >= v257)
      {
        break;
      }

      v70 = *(v259 + 8 * v71);
      ++v74;
      if (v70)
      {
        goto LABEL_25;
      }
    }

    v280 = v73;
    v281 = 0;
    v99 = 1;
    v98 = v270;
LABEL_35:
    v100 = *(v62 - 8);
    (*(v100 + 56))(v98, v99, 1, v62);
    (*v268)(v69, v98, v271);
    if ((*(v100 + 48))(v69, 1, v62) == 1)
    {
      _sSh8IteratorV8_VariantOySS__GWOe_0(v272);
      v65 = v290;
      v61 = v291;
      v109 = HIBYTE(v291) & 0xF;
      v107 = v290 & 0xFFFFFFFFFFFFLL;
      if ((v291 & 0x2000000000000000) != 0)
      {
        v196 = HIBYTE(v291) & 0xF;
      }

      else
      {
        v196 = v290 & 0xFFFFFFFFFFFFLL;
      }

      if (!v196 && (v290 & ~v291 & 0x2000000000000000) == 0)
      {
        v291;
        v291 = 0xE100000000000000;
        return 93;
      }

      if ((v291 & 0x2000000000000000) != 0 && v109 != 15)
      {
        v197 = 8 * (HIBYTE(v291) & 7);
        v198 = (-255 << v197) - 1;
        v199 = 93 << v197;
        v200 = v198 & v291 | v199;
        v201 = v198 & v290 | v199;
        if (v109 >= 8)
        {
          v202 = v200;
        }

        else
        {
          v202 = v291;
        }

        if (v109 < 8)
        {
          v65 = v201;
        }

        v291;
        0xE100000000000000;
        v203 = 0xA000000000000000;
        if (!(v65 & 0x8080808080808080 | v202 & 0x80808080808080))
        {
          v203 = 0xE000000000000000;
        }

        v204 = (v203 & 0xFF00000000000000 | (v109 << 56) | v202 & 0xFFFFFFFFFFFFFFLL) + 0x100000000000000;
        goto LABEL_224;
      }

      0xE100000000000000;
      if ((v61 & 0x1000000000000000) != 0)
      {
        goto LABEL_231;
      }

      v118 = __OFADD__(v196, 1);
      v206 = v196 + 1;
      if (v118)
      {
        goto LABEL_233;
      }

LABEL_177:
      v207 = v65 & ~v61;
      if ((v207 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v61 & 0xFFFFFFFFFFFFFFFLL))
      {
        v208 = _StringGuts.nativeUnusedCapacity.getter(v65, v61);
        if (v209)
        {
          goto LABEL_241;
        }

        if (v206 > 15)
        {
          goto LABEL_188;
        }

        if ((v61 & 0x2000000000000000) == 0)
        {
          if (v208 < 1)
          {
            goto LABEL_183;
          }

LABEL_188:
          v211 = v207 & 0x2000000000000000;
          v212 = _StringGuts.nativeUnusedCapacity.getter(v65, v61);
          if ((v213 & 1) != 0 || v212 <= 0)
          {
            if (v211)
            {
              swift_isUniquelyReferenced_nonNull_native(v61 & 0xFFFFFFFFFFFFFFFLL);
            }

            v214 = _StringGuts.nativeCapacity.getter(v65, v61);
            if (v215)
            {
              v216 = 0;
            }

            else
            {
              v216 = v214;
            }

            if (v216 + 0x4000000000000000 < 0)
            {
              __break(1u);
              goto LABEL_241;
            }

            v217 = 2 * v216;
            if (v217 > v206)
            {
              v206 = v217;
            }
          }

          else if (v211 && swift_isUniquelyReferenced_nonNull_native(v61 & 0xFFFFFFFFFFFFFFFLL))
          {
            goto LABEL_202;
          }

          _StringGuts.grow(_:)(v206);
LABEL_202:
          v289 = xmmword_18071DB50;
          closure #1 in _StringGuts.append(_:)(&v289, 1uLL, &v290, 1);
          swift_bridgeObjectRelease_n(0xE100000000000000, 2);
          return v290;
        }

LABEL_204:
        v206 = v61;
LABEL_205:
        v107 = 0xE100000000000000;
        0xE100000000000000;
        v218._rawBits = 65537;
        v109 = 93;
        v219._rawBits = 1;
        v220._rawBits = _StringGuts.validateScalarRange(_:)(v219, v218, 0x5DuLL, 0xE100000000000000)._rawBits;
        if (v220._rawBits < 0x10000)
        {
          v220._rawBits |= 3;
        }

        if (v220._rawBits >> 16 || (v221._rawBits & 0xFFFFFFFFFFFF0000) != 0x10000)
        {
          v109 = specialized static String._copying(_:)(v220._rawBits, v221, 0x5DuLL, 0xE100000000000000);
          v107 = v222;
          0xE100000000000000;
        }

        if ((v107 & 0x2000000000000000) == 0)
        {
          goto LABEL_234;
        }

        v107;
        goto LABEL_212;
      }

      if (v206 > 15)
      {
        goto LABEL_188;
      }

      if ((v61 & 0x2000000000000000) != 0)
      {
        goto LABEL_204;
      }

LABEL_183:
      if ((v61 & 0x1000000000000000) == 0)
      {
        if ((v65 & 0x1000000000000000) != 0)
        {
          v210 = ((v61 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v210 = _StringObject.sharedUTF8.getter(v65, v61);
          v107 = v238;
        }

        closure #1 in _StringGuts._convertedToSmall()(v210, v107, &v289, v205);
        v206 = *(&v289 + 1);
        v65 = v289;
        goto LABEL_205;
      }

LABEL_229:
      v65 = _StringGuts._foreignConvertedToSmall()(v65, v61);
      v206 = v234;
      goto LABEL_205;
    }

    v101 = *(v62 + 48);
    v102 = *v284;
    v103 = v276;
    v104 = v285;
    (*v284)(v276, v69, v285);
    v105 = &v69[v101];
    v106 = v277;
    v279 = *v286;
    v279(v283, v105, v277);
    v65 = v274;
    if (v64)
    {
      goto LABEL_85;
    }

    v107 = v290;
    v61 = v291;
    v108 = HIBYTE(v291) & 0xF;
    v109 = v290 & 0xFFFFFFFFFFFFLL;
    if ((v291 & 0x2000000000000000) != 0)
    {
      v110 = HIBYTE(v291) & 0xF;
    }

    else
    {
      v110 = v290 & 0xFFFFFFFFFFFFLL;
    }

    if (!v110 && (v290 & ~v291 & 0x2000000000000000) == 0)
    {
      v291;
      v290 = 8236;
      v138 = 0xE200000000000000;
      goto LABEL_82;
    }

    if ((v291 & 0x2000000000000000) == 0 || v108 > 0xD)
    {
      break;
    }

    v111 = 8 * (HIBYTE(v291) & 7);
    v112 = (-255 << v111) - 1;
    v113 = 44 << v111;
    v114 = v108 + 1;
    if (v108 >= 8)
    {
      v116 = v112 & v291 | v113;
      v115 = 8 * (v114 & 7);
LABEL_65:
      v124 = ((-255 << v115) - 1) & v116 | (32 << v115);
    }

    else
    {
      v107 = v112 & v290 | v113;
      if (v108 == 7)
      {
        v115 = 0;
        v116 = v291;
        goto LABEL_65;
      }

      v107 = ((-255 << (8 * (v114 & 7u))) - 1) & v107 | (32 << (8 * (v114 & 7u)));
      v124 = v291;
    }

    v291;
    0xE200000000000000;
    v139 = 0xE000000000000000;
    if (v107 & 0x8080808080808080 | v124 & 0x80808080808080)
    {
      v139 = 0xA000000000000000;
    }

    v138 = (v139 & 0xFF00000000000000 | (v108 << 56) | v124 & 0xFFFFFFFFFFFFFFLL) + 0x200000000000000;
    v290 = v107;
LABEL_82:
    v291 = v138;
LABEL_83:
    v103 = v276;
LABEL_84:
    v104 = v285;
LABEL_85:
    v140 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Any>(0);
    inited = swift_initStackObject(v140, &v288);
    *(inited + 1) = v282;
    inited[7] = v104;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(inited + 4);
    v102(boxed_opaque_existential_0Tm, v103, v104);
    specialized _debugPrint<A>(_:separator:terminator:to:)(inited, 0x20uLL, 0xE100000000000000, 0, 0xE000000000000000, &v290);
    0xE000000000000000;
    0xE100000000000000;
    swift_setDeallocating(inited);
    __swift_destroy_boxed_opaque_existential_1Tm(inited + 4);
    v144 = v290;
    v143 = v291;
    v145 = HIBYTE(v291) & 0xF;
    v61 = v290 & 0xFFFFFFFFFFFFLL;
    if ((v291 & 0x2000000000000000) != 0)
    {
      v146 = HIBYTE(v291) & 0xF;
    }

    else
    {
      v146 = v290 & 0xFFFFFFFFFFFFLL;
    }

    if (!v146 && (v290 & ~v291 & 0x2000000000000000) == 0)
    {
      v291;
      v290 = 8250;
      v291 = 0xE200000000000000;
      v15 = v273;
      goto LABEL_14;
    }

    if ((v291 & 0x2000000000000000) == 0 || v145 > 0xD)
    {
      0xE200000000000000;
      if ((v143 & 0x1000000000000000) != 0)
      {
        v146 = String.UTF8View._foreignCount()();
      }

      v118 = __OFADD__(v146, 2);
      v154 = v146 + 2;
      v15 = v273;
      if (!v118)
      {
        if ((v144 & ~v143 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v143 & 0xFFFFFFFFFFFFFFFLL))
        {
          v155 = _StringGuts.nativeUnusedCapacity.getter(v144, v143);
          if (v156)
          {
            goto LABEL_241;
          }

          if (v154 <= 15)
          {
            if ((v143 & 0x2000000000000000) == 0)
            {
              if (v155 < 2)
              {
                goto LABEL_104;
              }

              goto LABEL_13;
            }

LABEL_110:
            v158 = v143;
            goto LABEL_111;
          }
        }

        else if (v154 <= 15)
        {
          if ((v143 & 0x2000000000000000) == 0)
          {
LABEL_104:
            if ((v143 & 0x1000000000000000) != 0)
            {
              v144 = _StringGuts._foreignConvertedToSmall()(v144, v143);
              v158 = v180;
            }

            else
            {
              if ((v144 & 0x1000000000000000) != 0)
              {
                v157 = ((v143 & 0xFFFFFFFFFFFFFFFLL) + 32);
              }

              else
              {
                v157 = _StringObject.sharedUTF8.getter(v144, v143);
                v61 = v190;
              }

              closure #1 in _StringGuts._convertedToSmall()(v157, v61, &v289, v153);
              v158 = *(&v289 + 1);
              v144 = v289;
            }

LABEL_111:
            v159 = 0xE200000000000000;
            0xE200000000000000;
            v160._rawBits = 1;
            v161._rawBits = 131073;
            v162._rawBits = _StringGuts.validateScalarRange(_:)(v160, v161, 0x203AuLL, 0xE200000000000000)._rawBits;
            if (v162._rawBits < 0x10000)
            {
              v162._rawBits |= 3;
            }

            if (v162._rawBits >> 16 || (v165 = 8250, (v163._rawBits & 0xFFFFFFFFFFFF0000) != 0x20000))
            {
              v165 = specialized static String._copying(_:)(v162._rawBits, v163, 0x203AuLL, 0xE200000000000000);
              v159 = v166;
              0xE200000000000000;
            }

            if ((v159 & 0x2000000000000000) != 0)
            {
              v159;
            }

            else if ((v159 & 0x1000000000000000) != 0)
            {
              v165 = _StringGuts._foreignConvertedToSmall()(v165, v159);
              v193 = v192;
              v159;
              v159 = v193;
            }

            else
            {
              if ((v165 & 0x1000000000000000) != 0)
              {
                v186 = ((v159 & 0xFFFFFFFFFFFFFFFLL) + 32);
                v187 = v165 & 0xFFFFFFFFFFFFLL;
              }

              else
              {
                v186 = _StringObject.sharedUTF8.getter(v165, v159);
              }

              closure #1 in _StringGuts._convertedToSmall()(v186, v187, &v289, v164);
              v159;
              v159 = *(&v289 + 1);
              v165 = v289;
            }

            v167 = HIBYTE(v158) & 0xF;
            v168 = HIBYTE(v159) & 0xF;
            v169 = v168 + v167;
            v62 = v275;
            if (v168 + v167 <= 0xF)
            {
              0xE200000000000000;
              if (v168)
              {
                v170 = 0;
                v171 = 0;
                v172 = 8 * v167;
                v173 = 8 * v168;
                v65 = v274;
                do
                {
                  v174 = v159 >> (v170 & 0x38);
                  if (v171 < 8)
                  {
                    v174 = v165 >> v170;
                  }

                  v175 = (v174 << (v172 & 0x38)) | ((-255 << (v172 & 0x38)) - 1) & v158;
                  v176 = (v174 << v172) | ((-255 << v172) - 1) & v144;
                  if (v167 <= 7)
                  {
                    v144 = v176;
                  }

                  else
                  {
                    v158 = v175;
                  }

                  ++v167;
                  v172 += 8;
                  v170 += 8;
                  ++v171;
                }

                while (v173 != v170);
              }

              else
              {
                v65 = v274;
              }

              v143;
              0xE200000000000000;
              v179 = 0xE000000000000000;
              if (v144 & 0x8080808080808080 | v158 & 0x80808080808080)
              {
                v179 = 0xA000000000000000;
              }

              v290 = v144;
              v291 = v179 & 0xFF00000000000000 | (v169 << 56) | v158 & 0xFFFFFFFFFFFFFFLL;
              v106 = v277;
              v15 = v273;
              v61 = v267;
              goto LABEL_15;
            }

            goto LABEL_241;
          }

          goto LABEL_110;
        }

LABEL_13:
        _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v154, 2);
        v289 = v256;
        closure #1 in _StringGuts.append(_:)(&v289, 2uLL, &v290, 1);
        swift_bridgeObjectRelease_n(0xE200000000000000, 2);
LABEL_14:
        v61 = v267;
        v62 = v275;
        goto LABEL_15;
      }

LABEL_228:
      __break(1u);
      goto LABEL_229;
    }

    v147 = 8 * (HIBYTE(v291) & 7);
    v148 = (-255 << v147) - 1;
    v149 = 58 << v147;
    v150 = v145 + 1;
    if (v145 >= 8)
    {
      v152 = v148 & v291 | v149;
      v151 = 8 * (v150 & 7);
      v61 = v267;
      v62 = v275;
LABEL_129:
      v177 = ((-255 << v151) - 1) & v152 | (32 << v151);
    }

    else
    {
      v144 = v148 & v290 | v149;
      v61 = v267;
      v62 = v275;
      if (v145 == 7)
      {
        v151 = 0;
        v152 = v291;
        goto LABEL_129;
      }

      v144 = ((-255 << (8 * (v150 & 7u))) - 1) & v144 | (32 << (8 * (v150 & 7u)));
      v177 = v291;
    }

    v291;
    0xE200000000000000;
    v178 = 0xE000000000000000;
    if (v144 & 0x8080808080808080 | v177 & 0x80808080808080)
    {
      v178 = 0xA000000000000000;
    }

    v290 = v144;
    v291 = (v178 & 0xFF00000000000000 | (v145 << 56) | v177 & 0xFFFFFFFFFFFFFFLL) + 0x200000000000000;
    v15 = v273;
LABEL_15:
    v66 = swift_initStackObject(v140, &v287);
    *(v66 + 1) = v282;
    v66[7] = v106;
    v67 = __swift_allocate_boxed_opaque_existential_0Tm(v66 + 4);
    v279(v67, v283, v106);
    specialized _debugPrint<A>(_:separator:terminator:to:)(v66, 0x20uLL, 0xE100000000000000, 0, 0xE000000000000000, &v290);
    0xE000000000000000;
    0xE100000000000000;
    swift_setDeallocating(v66);
    __swift_destroy_boxed_opaque_existential_1Tm(v66 + 4);
    v64 = 0;
    v55 = v281;
    v63 = v280;
  }

  0xE200000000000000;
  if ((v61 & 0x1000000000000000) != 0)
  {
    v110 = String.UTF8View._foreignCount()();
  }

  v118 = __OFADD__(v110, 2);
  v119 = v110 + 2;
  v103 = v276;
  if (!v118)
  {
    if ((v107 & ~v61 & 0x2000000000000000) == 0 || !swift_isUniquelyReferenced_nonNull_native(v61 & 0xFFFFFFFFFFFFFFFLL))
    {
      if (v119 > 15)
      {
        goto LABEL_61;
      }

      if ((v61 & 0x2000000000000000) == 0)
      {
        goto LABEL_56;
      }

      goto LABEL_67;
    }

    v120 = _StringGuts.nativeUnusedCapacity.getter(v107, v61);
    if ((v121 & 1) == 0)
    {
      if (v119 > 15)
      {
        goto LABEL_61;
      }

      if ((v61 & 0x2000000000000000) == 0)
      {
        if (v120 < 2)
        {
LABEL_56:
          if ((v61 & 0x1000000000000000) != 0)
          {
            v107 = _StringGuts._foreignConvertedToSmall()(v107, v61);
            v123 = v181;
          }

          else
          {
            if ((v107 & 0x1000000000000000) != 0)
            {
              v122 = ((v61 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v122 = _StringObject.sharedUTF8.getter(v107, v61);
              v109 = v191;
            }

            closure #1 in _StringGuts._convertedToSmall()(v122, v109, &v289, v117);
            v123 = *(&v289 + 1);
            v107 = v289;
          }

          goto LABEL_68;
        }

LABEL_61:
        _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v119, 2);
        v289 = v255;
        closure #1 in _StringGuts.append(_:)(&v289, 2uLL, &v290, 1);
        swift_bridgeObjectRelease_n(0xE200000000000000, 2);
        goto LABEL_84;
      }

LABEL_67:
      v123 = v61;
LABEL_68:
      v125 = 0xE200000000000000;
      0xE200000000000000;
      v126._rawBits = 1;
      v127._rawBits = 131073;
      v128._rawBits = _StringGuts.validateScalarRange(_:)(v126, v127, 0x202CuLL, 0xE200000000000000)._rawBits;
      if (v128._rawBits < 0x10000)
      {
        v128._rawBits |= 3;
      }

      if (v128._rawBits >> 16 || (v131 = 8236, (v129._rawBits & 0xFFFFFFFFFFFF0000) != 0x20000))
      {
        v131 = specialized static String._copying(_:)(v128._rawBits, v129, 0x202CuLL, 0xE200000000000000);
        v125 = v132;
        0xE200000000000000;
      }

      if ((v125 & 0x2000000000000000) != 0)
      {
        v125;
      }

      else if ((v125 & 0x1000000000000000) != 0)
      {
        v131 = _StringGuts._foreignConvertedToSmall()(v131, v125);
        v195 = v194;
        v125;
        v125 = v195;
      }

      else
      {
        if ((v131 & 0x1000000000000000) != 0)
        {
          v188 = ((v125 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v189 = v131 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v188 = _StringObject.sharedUTF8.getter(v131, v125);
        }

        closure #1 in _StringGuts._convertedToSmall()(v188, v189, &v289, v130);
        v125;
        v125 = *(&v289 + 1);
        v131 = v289;
      }

      v133 = specialized _SmallString.init(_:appending:)(v107, v123, v131, v125);
      if ((v135 & 1) == 0)
      {
        v136 = v133;
        v137 = v134;
        v61;
        swift_bridgeObjectRelease_n(0xE200000000000000, 2);
        v290 = v136;
        v291 = v137;
        goto LABEL_83;
      }
    }

LABEL_241:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  __break(1u);
LABEL_231:
  v235 = String.UTF8View._foreignCount()();
  v206 = v235 + 1;
  if (!__OFADD__(v235, 1))
  {
    goto LABEL_177;
  }

LABEL_233:
  __break(1u);
LABEL_234:
  if ((v107 & 0x1000000000000000) != 0)
  {
    v109 = _StringGuts._foreignConvertedToSmall()(v109, v107);
    v240 = v239;
    v107;
    v107 = v240;
  }

  else
  {
    if ((v109 & 0x1000000000000000) != 0)
    {
      v236 = ((v107 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v237 = v109 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v236 = _StringObject.sharedUTF8.getter(v109, v107);
    }

    closure #1 in _StringGuts._convertedToSmall()(v236, v237, &v289, v205);
    v107;
    v107 = *(&v289 + 1);
    v109 = v289;
  }

LABEL_212:
  v223 = HIBYTE(v206) & 0xF;
  v224 = HIBYTE(v107) & 0xF;
  v225 = v224 + v223;
  if (v224 + v223 > 0xF)
  {
    goto LABEL_241;
  }

  0xE100000000000000;
  if (v224)
  {
    v226 = 0;
    v227 = 0;
    v228 = 8 * v223;
    do
    {
      v229 = v107 >> (v226 & 0x38);
      if (v227 < 8)
      {
        v229 = v109 >> v226;
      }

      v230 = (v229 << (v228 & 0x38)) | ((-255 << (v228 & 0x38)) - 1) & v206;
      v231 = (v229 << v228) | ((-255 << v228) - 1) & v65;
      if (v223 <= 7)
      {
        v65 = v231;
      }

      else
      {
        v206 = v230;
      }

      ++v223;
      v228 += 8;
      v226 += 8;
      ++v227;
    }

    while (8 * v224 != v226);
  }

  v61;
  0xE100000000000000;
  v232 = 0xA000000000000000;
  if (!(v65 & 0x8080808080808080 | v206 & 0x80808080808080))
  {
    v232 = 0xE000000000000000;
  }

  v204 = v232 & 0xFF00000000000000 | (v225 << 56) | v206 & 0xFFFFFFFFFFFFFFLL;
LABEL_224:
  v291 = v204;
  return v65;
}

uint64_t Dictionary.debugDescription.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for Dictionary(0, a2, a3, a4);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for [A : B], v6, v7);
  return specialized Collection._makeKeyValuePairDescription<A, B>(withTypeName:)(v6, a2, a3, WitnessTable);
}

uint64_t specialized Error._domain.getter(Class *a1)
{
  TypeName = swift_getTypeName(a1, 1);
  if (v2 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v3 = TypeName;
  v4 = v2;
  v5 = validateUTF8(_:)(TypeName, v2);
  if ((v5 & 0x8000000000000000) == 0)
  {
    return specialized static String._uncheckedFromUTF8(_:isASCII:)(v3, v4, v5 & 1, v8);
  }

  return repairUTF8(_:firstKnownBrokenRange:)(v3, v4, v6, v7);
}

uint64_t specialized Error._domain.getter(uint64_t a1, Class *a2)
{
  TypeName = swift_getTypeName(a2, 1);
  if (v3 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v4 = TypeName;
  v5 = v3;
  v6 = validateUTF8(_:)(TypeName, v3);
  if ((v6 & 0x8000000000000000) == 0)
  {
    return specialized static String._uncheckedFromUTF8(_:isASCII:)(v4, v5, v6 & 1, v9);
  }

  return repairUTF8(_:firstKnownBrokenRange:)(v4, v5, v7, v8);
}

uint64_t specialized Error._domain.getter()
{
  TypeName = swift_getTypeName(&type metadata for Unicode.UTF8.ValidationError, 1);
  if (v1 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v2 = TypeName;
  v3 = v1;
  v4 = validateUTF8(_:)(TypeName, v1);
  if ((v4 & 0x8000000000000000) == 0)
  {
    return specialized static String._uncheckedFromUTF8(_:isASCII:)(v2, v3, v4 & 1, v7);
  }

  return repairUTF8(_:firstKnownBrokenRange:)(v2, v3, v5, v6);
}

uint64_t Error._domain.getter(uint64_t *a1)
{
  DynamicType = swift_getDynamicType(v1, a1, 0);
  TypeName = swift_getTypeName(DynamicType, 1);
  if (v4 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5 = TypeName;
  v6 = v4;
  v7 = validateUTF8(_:)(TypeName, v4);
  if ((v7 & 0x8000000000000000) == 0)
  {
    return specialized static String._uncheckedFromUTF8(_:isASCII:)(v5, v6, v7 & 1, v10);
  }

  return repairUTF8(_:firstKnownBrokenRange:)(v5, v6, v8, v9);
}

Swift::Bool __swiftcall Dictionary.Index._isUniquelyReferenced()()
{
  if (*(v0 + 16) != 1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (*v0 >= 0)
  {
    v1 = (*v0 & 0xFFFFFFFFFFFFFF8);
  }

  else
  {
    v1 = *v0;
  }

  v2 = type metadata accessor for __CocoaDictionary.Index.Storage();
  if (!swift_dynamicCastClass(v1, v2))
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return !v1 || swift_isUniquelyReferenced_nonNull_native(v1);
}

unint64_t Dictionary.Index._asCocoa.getter(unint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a1;
}

void Dictionary.Index._asNative.getter(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }
}

uint64_t (*Dictionary.Index._asCocoa.modify(void *a1))(void)
{
  a1[2] = v1;
  if (*(v1 + 16) != 1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v2 = *(v1 + 8);
  *a1 = *v1;
  a1[1] = v2;
  return Dictionary.Index._asCocoa.modify;
}

void *Dictionary.Index._asCocoa.modify(void *result)
{
  v2 = result[1];
  v1 = result[2];
  *v1 = *result;
  *(v1 + 8) = v2;
  *(v1 + 16) = 1;
  return result;
}

void Dictionary.Index._asCocoa.setter(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 16) != 1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  sub_180615F30(*v2, *(v2 + 8), 1);
  *v2 = a1;
  *(v2 + 8) = a2;
  *(v2 + 16) = 1;
}

BOOL static Dictionary.Index.== infix(_:_:)(swift *a1, uint64_t a2, char a3, swift *a4, uint64_t a5, char a6)
{
  v7 = a4;
  if (a3)
  {
    if (a6)
    {
      if (a1 >= 0)
      {
        v9 = (a1 & 0xFFFFFFFFFFFFFF8);
      }

      else
      {
        v9 = a1;
      }

      v10 = type metadata accessor for __CocoaDictionary.Index.Storage();
      if (!swift_dynamicCastClass(v9, v10))
      {
        goto LABEL_21;
      }

      if (v7 >= 0)
      {
        v7 &= 0xFFFFFFFFFFFFFF8uLL;
      }

      if (!swift_dynamicCastClass(v7, v10))
      {
LABEL_21:
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      if (*(v9 + 2) != *(v7 + 16))
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      return a2 == a5;
    }

LABEL_20:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a6)
  {
    goto LABEL_20;
  }

  if (a2 != a5)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a1 == a4;
}

BOOL static _HashTable.Index.== infix(_:_:)(uint64_t a1, int a2, uint64_t a3, int a4)
{
  if (a2 != a4)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a1 == a3;
}

BOOL static Dictionary.Index.< infix(_:_:)(swift *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = a4;
  if (a3)
  {
    if (a6)
    {
      if (a1 >= 0)
      {
        v9 = (a1 & 0xFFFFFFFFFFFFFF8);
      }

      else
      {
        v9 = a1;
      }

      v10 = type metadata accessor for __CocoaDictionary.Index.Storage();
      if (!swift_dynamicCastClass(v9, v10))
      {
        goto LABEL_21;
      }

      if (v7 >= 0)
      {
        v7 &= 0xFFFFFFFFFFFFFF8uLL;
      }

      if (!swift_dynamicCastClass(v7, v10))
      {
LABEL_21:
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      if (*(v9 + 2) != *(v7 + 16))
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      return a2 < a5;
    }

LABEL_20:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a6)
  {
    goto LABEL_20;
  }

  if (a2 != a5)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a1 < a4;
}

BOOL static _HashTable.Index.< infix(_:_:)(uint64_t a1, int a2, uint64_t a3, int a4)
{
  if (a2 != a4)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a1 < a3;
}

void Dictionary.Index.hash(into:)(uint64_t a1, Swift::UInt a2, Swift::UInt a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    a3 = a2;
  }

  Hasher._combine(_:)(a4 & 1);
  Hasher._combine(_:)(a3);
}

Swift::Int Dictionary.Index.hashValue.getter(Swift::UInt a1, Swift::UInt a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    a2 = a1;
  }

  Hasher._combine(_:)(a3 & 1);
  Hasher._combine(_:)(a2);
  return Hasher._finalize()();
}

uint64_t Dictionary.Iterator._variant.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Dictionary.Iterator._Variant(0, a1[2], a1[3], a1[4]);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

__n128 Dictionary.Iterator.init(_variant:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 32);
  result = *a1;
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  *(a2 + 32) = v2;
  return result;
}

__n128 Dictionary.Iterator.init(_native:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 32);
  result = *a1;
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  *(a2 + 32) = v2;
  return result;
}

double Dictionary.Iterator.init(_cocoa:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1 | 0x8000000000000000;
  result = 0.0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  return result;
}

void (*Dictionary.Iterator._asNative.modify(uint64_t **a1))(uint64_t **a1, uint64_t a2)
{
  if (swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc(0x58, 0xCEBBuLL);
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[5] = v1;
  v5 = *v1;
  v4[6] = *v1;
  v6 = v1[1];
  v4[7] = v6;
  v7 = v1[2];
  v4[8] = v7;
  v8 = v1[3];
  v4[9] = v8;
  v9 = v1[4];
  v4[10] = v9;
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;
  v4[3] = v8;
  v4[4] = v9;
  v5;
  return Dictionary.Iterator._asNative.modify;
}

uint64_t _NativeDictionary.Iterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 24);
  v6 = *(v5 - 1);
  v7 = MEMORY[0x1EEE9AC00](a1, a2);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v7 + 16);
  v11 = *(v10 - 1);
  result = MEMORY[0x1EEE9AC00](v7, v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v3[4];
  if (v16)
  {
    v3[4] = (v16 - 1) & v16;
    v17 = __clz(__rbit64(v16)) | (v3[3] << 6);
LABEL_8:
    v22 = *v3;
    (*(v11 + 16))(v15, *(v22 + 48) + *(v11 + 72) * v17, v10);
    (*(v6 + 16))(v9, *(v22 + 56) + *(v6 + 72) * v17, v5);
    swift_getTupleTypeMetadata2(0, v10, v5, "key value ", 0);
    v24 = v23;
    v25 = *(v23 + 48);
    (*(v11 + 32))(a3, v15, v10);
    (*(v6 + 32))(a3 + v25, v9, v5);
    return (*(*(v24 - 8) + 56))(a3, 0, 1, v24);
  }

  else
  {
    v18 = v3[3];
    v19 = (v3[2] + 64) >> 6;
    while (1)
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        return result;
      }

      if (v20 >= v19)
      {
        break;
      }

      v3[3] = v20;
      v21 = *(v3[1] + 8 * v20);
      v3[4] = v21;
      ++v18;
      if (v21)
      {
        v3[4] = (v21 - 1) & v21;
        v17 = __clz(__rbit64(v21)) | (v20 << 6);
        goto LABEL_8;
      }
    }

    swift_getTupleTypeMetadata2(0, v10, v5, "key value ", 0);
    v27 = *(*(v26 - 8) + 56);

    return v27(a3, 1, 1, v26);
  }
}

uint64_t Dictionary.Iterator.customMirror.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v27[0] = *v2;
  v27[1] = v5;
  v28 = *(v2 + 32);
  v24[0] = 0;
  v24[1] = 0;
  v6 = *(v2 + 16);
  v29[0] = *v2;
  v29[1] = v6;
  v30 = *(v2 + 32);
  v7 = type metadata accessor for Dictionary.Iterator._Variant(0, a1[2], a1[3], a1[4]);
  (*(*(v7 - 8) + 16))(v25, v29, v7);
  v8 = static Mirror._superclassIterator<A>(_:_:)(v27, v24, a1);
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss14_CollectionBoxCys05EmptyA0VySSSg5label_yp5valuetGGMd, _ss14_CollectionBoxCys05EmptyA0VySSSg5label_yp5valuetGGMR);
  v12 = swift_allocObject(v11, 0x30, 7uLL);
  v13 = canonical specialized generic type metadata accessor for _IndexBox<Int>();
  v14 = swift_allocObject(v13, 0x18, 7uLL);
  v14[2] = 0;
  v15 = swift_allocObject(v13, 0x18, 7uLL);
  v15[2] = 0;
  v12[2] = v14;
  v12[3] = &protocol witness table for _IndexBox<A>;
  v12[4] = v15;
  v12[5] = &protocol witness table for _IndexBox<A>;
  v16 = *(v2 + 16);
  v25[0] = *v2;
  v25[1] = v16;
  v26 = *(v2 + 32);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss21CustomLeafReflectable_pMd, _ss21CustomLeafReflectable_pMR);
  result = swift_dynamicCast(v24, v25, a1, v17, 6uLL, v18, v19, v20, v23);
  v22 = result;
  if (result)
  {
    result = __swift_destroy_boxed_opaque_existential_1Tm(v24);
  }

  *a2 = a1;
  *(a2 + 8) = v12;
  *(a2 + 16) = 9;
  *(a2 + 24) = v8;
  *(a2 + 32) = v10;
  *(a2 + 40) = v22;
  return result;
}

uint64_t Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, unint64_t *a4@<X3>, Class *a5@<X4>, const char *a6@<X5>, swift *a7@<X6>, Class **a8@<X8>)
{
  v53 = a5;
  v54 = a1;
  v60 = a8;
  v59 = *(a5 - 1);
  MEMORY[0x1EEE9AC00](a1, a2);
  v57 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, v17, v16, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v19 = v18;
  v61 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v51 - v21;
  v58 = *a3;
  v23 = *a4;
  v24 = a4[1];
  v62[0] = v23;
  v62[1] = v24;
  v25 = static Mirror._superclassIterator<A>(_:_:)(a1, v62, a5);
  v55 = v26;
  v56 = v25;
  outlined consume of Mirror.AncestorRepresentation(v23, v24);
  v28 = type metadata accessor for _CollectionBox(0, a6, a7, v27);
  v29 = swift_allocObject(v28, *(v28 + 48), *(v28 + 52));
  v30 = *(*v29 + 45);
  v31 = *(a6 - 1);
  v32 = *(v31 + 16);
  v52 = a2;
  v32(v29 + v30, a2, a6);
  (*(a7 + 8))(a6, a7);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a7, a6, v19, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v35 = type metadata accessor for _IndexBox(0, v19, AssociatedConformanceWitness, v34);
  v36 = swift_allocObject(v35, *(v35 + 48), *(v35 + 52));
  v37 = *(*v36 + 96);
  v38 = *(v61 + 32);
  v61 += 32;
  v38(v36 + v37, v22, v19);
  v39 = v52;
  (*(a7 + 9))(a6, a7);
  (*(v31 + 8))(v39, a6);
  v40 = v53;
  v41 = swift_allocObject(v35, *(v35 + 48), *(v35 + 52));
  v38(v41 + *(*v41 + 96), v22, v19);
  v29[2] = v36;
  v29[3] = &protocol witness table for _IndexBox<A>;
  v29[4] = v41;
  v29[5] = &protocol witness table for _IndexBox<A>;
  v42 = v57;
  (*(v59 + 32))(v57, v54, v40);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss21CustomLeafReflectable_pMd, _ss21CustomLeafReflectable_pMR);
  result = swift_dynamicCast(v62, v42, v40, v43, 6uLL, v44, v45, v46, v51);
  v48 = result;
  if (result)
  {
    result = __swift_destroy_boxed_opaque_existential_1Tm(v62);
  }

  v49 = v60;
  *v60 = v40;
  v49[1] = v29;
  *(v49 + 16) = v58;
  v50 = v55;
  v49[3] = v56;
  v49[4] = v50;
  *(v49 + 40) = v48;
  return result;
}

void Dictionary.customMirror.getter(int64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v63 = a1;
  v9 = type metadata accessor for Dictionary(0, a2, a3, a4);
  v60[0] = 0;
  v60[1] = 0;
  a1;
  v10 = static Mirror._superclassIterator<A>(_:_:)(&v63, v60, v9);
  v12 = v11;
  v13 = swift_allocObject(&unk_1EEEADE80, 0x28, 7uLL);
  v13[2] = v9;
  v13[3] = v9;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for [A : B], v9, v14);
  v13[4] = WitnessTable;
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSSSg5label_yp5valuetMd, _sSSSg5label_yp5valuetMR);
  v18 = swift_getWitnessTable(protocol conformance descriptor for [A : B], v9, v17);
  v19 = type metadata accessor for LazyMapSequence(255, v9, v16, v18);
  v62 = WitnessTable;
  v20 = swift_getWitnessTable(protocol conformance descriptor for <> LazyMapSequence<A, B>, v19, &v62);
  v22 = type metadata accessor for _CollectionBox(0, v19, v20, v21);
  v23 = swift_allocObject(v22, 0x48, 7uLL);
  v23[6] = a1;
  v23[7] = closure #1 in Mirror.init<A, B>(_:unlabeledChildren:displayStyle:ancestorRepresentation:)partial apply;
  v23[8] = v13;
  v24 = a1 & 0xC000000000000001;
  v59 = a1 & 0xC000000000000001;
  v55 = v12;
  v57 = v10;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v25 = a1;
    }

    else
    {
      v25 = (a1 & 0xFFFFFFFFFFFFFF8);
    }

    a1;
    v26 = [v25 count];
    type metadata accessor for __BridgingBufferStorage(0);
    if ((v26 - 0x1000000000000000) >> 61 == 7)
    {
      if (!__OFADD__(8 * v26, 24))
      {
        v28 = swift_bufferAllocate(v27, (8 * v26 + 24), 7uLL);
        v28[2] = v26;
        [v25 getObjects:0 andKeys:v28 + 3 count:v26];
        v29 = type metadata accessor for __CocoaDictionary.Index.Storage();
        v30 = swift_allocObject(v29, 0x20, 7uLL);
        v31 = 0;
        *(v30 + 16) = v25;
        *(v30 + 24) = v28;
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v32 = (a1 + 64);
  v33 = -1 << *(a1 + 32);
  v30 = -v33;
  v34 = (63 - v33) >> 6;
  while (1)
  {
    v36 = *v32++;
    v35 = v36;
    if (v36)
    {
      break;
    }

    v24 -= 64;
    if (!--v34)
    {
      goto LABEL_13;
    }
  }

  v30 = __clz(__rbit64(v35)) - v24;
LABEL_13:
  v31 = *(a1 + 36);
LABEL_14:
  v37 = type metadata accessor for Dictionary.Index(255, a2, a3, a4);
  v39 = type metadata accessor for _IndexBox(0, v37, &protocol witness table for [A : B].Index, v38);
  v40 = swift_allocObject(v39, 0x21, 7uLL);
  v40[2] = v30;
  v40[3] = v31;
  *(v40 + 32) = v59 != 0;
  if (!v59)
  {
    v46 = (1 << *(a1 + 32));
    v47 = *(a1 + 36);
    goto LABEL_22;
  }

  if (a1 < 0)
  {
    v41 = a1;
  }

  else
  {
    v41 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v42 = [swift_unknownObjectRetain(v41) count];
  type metadata accessor for __BridgingBufferStorage(0);
  if ((v42 - 0x1000000000000000) >> 61 != 7)
  {
    goto LABEL_27;
  }

  if (__OFADD__(8 * v42, 24))
  {
LABEL_28:
    __break(1u);
    return;
  }

  v44 = swift_bufferAllocate(v43, (8 * v42 + 24), 7uLL);
  v44[2] = v42;
  [v41 getObjects:0 andKeys:v44 + 3 count:v42];
  a1;
  v45 = type metadata accessor for __CocoaDictionary.Index.Storage();
  v46 = swift_allocObject(v45, 0x20, 7uLL);
  v46[2] = v41;
  v46[3] = v44;
  v47 = v44[2];
  a1;
LABEL_22:
  v48 = swift_allocObject(v39, 0x21, 7uLL);
  v48[2] = v46;
  v48[3] = v47;
  *(v48 + 32) = v59 != 0;
  v23[2] = v40;
  v23[3] = &protocol witness table for _IndexBox<A>;
  v23[4] = v48;
  v23[5] = &protocol witness table for _IndexBox<A>;
  v61 = a1;
  a1;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss21CustomLeafReflectable_pMd, _ss21CustomLeafReflectable_pMR);
  v53 = swift_dynamicCast(v60, &v61, v9, v49, 6uLL, v50, v51, v52, v55);
  v54 = v53;
  if (v53)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v60);
  }

  *a5 = v9;
  *(a5 + 8) = v23;
  *(a5 + 16) = 6;
  *(a5 + 24) = v57;
  *(a5 + 32) = v56;
  *(a5 + 40) = v54;
}

void Dictionary.popFirst()(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *(a1 + 16);
  v7 = *v2 & 0xC000000000000001;
  if (v7)
  {
    if (v5 < 0)
    {
      v8 = *v2;
    }

    else
    {
      v8 = (v5 & 0xFFFFFFFFFFFFFF8);
    }

    if ([v8 count])
    {
      v9 = [swift_unknownObjectRetain(v8) count];
      type metadata accessor for __BridgingBufferStorage(0);
      if ((v9 - 0x1000000000000000) >> 61 == 7)
      {
        if (!__OFADD__(8 * v9, 24))
        {
          v11 = swift_bufferAllocate(v10, (8 * v9 + 24), 7uLL);
          v11[2] = v9;
          [v8 getObjects:0 andKeys:v11 + 3 count:v9];
          v5;
          v12 = type metadata accessor for __CocoaDictionary.Index.Storage();
          v13 = swift_allocObject(v12, 0x20, 7uLL);
          *(v13 + 16) = v8;
          *(v13 + 24) = v11;
          v5;
          v14 = 0;
LABEL_17:
          v26 = v7 != 0;
          v27 = *(a1 + 24);
          swift_getTupleTypeMetadata2(0, v6, v27, "key value ", 0);
          v29 = v28;
          v30 = *(v28 + 48);
          v31 = type metadata accessor for Dictionary._Variant(0, v6, v27, *(a1 + 32));
          Dictionary._Variant.remove(at:)(a2, a2 + v30, v13, v14, v26, v31);
          sub_180615F30(v13, v14, v26);
          v22 = *(*(v29 - 8) + 56);
          v24 = a2;
          v25 = 0;
          v23 = v29;
          goto LABEL_18;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return;
    }
  }

  else if (*(v5 + 16))
  {
    v15 = 0;
    v16 = (v5 + 64);
    v17 = -1 << *(v5 + 32);
    v13 = -v17;
    v18 = (63 - v17) >> 6;
    while (1)
    {
      v20 = *v16++;
      v19 = v20;
      if (v20)
      {
        break;
      }

      v15 -= 64;
      if (!--v18)
      {
        goto LABEL_16;
      }
    }

    v13 = __clz(__rbit64(v19)) - v15;
LABEL_16:
    v14 = *(v5 + 36);
    goto LABEL_17;
  }

  swift_getTupleTypeMetadata2(0, v6, *(a1 + 24), "key value ", 0);
  v22 = *(*(v21 - 8) + 56);
  v23 = v21;
  v24 = a2;
  v25 = 1;
LABEL_18:

  v22(v24, v25, 1, v23);
}

id Dictionary._Variant.capacity.getter(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return *(a1 + 24);
  }

  if (a1 >= 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return [a1 count];
}

Swift::Void __swiftcall Dictionary.reserveCapacity(_:)(Swift::Int a1)
{
  type metadata accessor for Dictionary._Variant(0, v1[2], v1[3], v1[4]);

  Dictionary._Variant.reserveCapacity(_:)(a1);
}

Swift::Void __swiftcall Dictionary._Variant.reserveCapacity(_:)(Swift::Int a1)
{
  v3 = v1;
  v5 = *v2;
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v5 < 0)
    {
      v8 = *v2;
    }

    else
    {
      v8 = (v5 & 0xFFFFFFFFFFFFFF8);
    }

    v9 = [v8 count];
    if (v9 <= a1)
    {
      v10 = a1;
    }

    else
    {
      v10 = v9;
    }

    *v2 = _NativeDictionary.init(_:capacity:)(v8, v10, v7, v6, *(v3 + 32));
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v5);
    v12 = isUniquelyReferenced_nonNull_native;
    v14 = *v2;
    v13 = *v2;
    *v2 = 0x8000000000000000;
    if (*(v13 + 24) >= a1)
    {
      if (!isUniquelyReferenced_nonNull_native)
      {
        type metadata accessor for _NativeDictionary(0, v7, v6, *(v3 + 32));
        _NativeDictionary.copy()();
      }
    }

    else
    {
      type metadata accessor for _NativeDictionary(0, v7, v6, *(v3 + 32));
      _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, v12);
    }

    *v2 = v14;
  }
}

__objc2_class **_NativeDictionary.bridged()(__objc2_class **a1, unint64_t *a2, void *a3, uint64_t a4)
{
  if (one-time initialization token for _bridgeInitializedSuccessfully != -1)
  {
    v12 = a2;
    v13 = a4;
    swift_once(&one-time initialization token for _bridgeInitializedSuccessfully, one-time initialization function for _bridgeInitializedSuccessfully, a3);
    a2 = v12;
    a4 = v13;
  }

  if (!_bridgeInitializedSuccessfully)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  _orphanedFoundationSubclassesReparented = 1;
  if (a1 == &_swiftEmptyDictionarySingleton)
  {
    a1 = &_swiftEmptyDictionarySingleton;
    &_swiftEmptyDictionarySingleton;
  }

  else if (a1[2])
  {
    v6 = a4;
    v7 = a2;
    if (_swift_isClassOrObjCExistentialType(a2, a2) && _swift_isClassOrObjCExistentialType(a3, a3))
    {
      v8 = type metadata accessor for _DictionaryStorage(0, v7, a3, v6);
      if (!swift_dynamicCastClass(a1, v8))
      {
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }
    }

    else
    {
      v9 = type metadata accessor for _SwiftDeferredNSDictionary(0, v7, a3, v6);
      v10 = swift_allocObject(v9, 0x28, 7uLL);
      v10[2] = 0;
      v10[3] = 0;
      v10[4] = a1;
      return v10;
    }
  }

  else
  {
    a1;
    return &_swiftEmptyDictionarySingleton;
  }

  return a1;
}

unint64_t _HashTable.startBucket.getter(unint64_t *a1, unint64_t a2)
{
  result = a2 + 1;
  if (a2 <= 0xFFFFFFFFFFFFFFBFLL)
  {
    v4 = 0;
    v5 = (a2 + 64) >> 6;
    while (1)
    {
      v7 = *a1++;
      v6 = v7;
      if (v7)
      {
        break;
      }

      v4 -= 64;
      if (!--v5)
      {
        return result;
      }
    }

    return __clz(__rbit64(v6)) - v4;
  }

  return result;
}

void *_SwiftDictionaryNSEnumerator.init(_:)(uint64_t a1)
{
  v2 = v1;
  v2[3] = 0;
  v4 = *(a1 + 32);
  v2[2] = v4;
  v5 = v4;
  v7 = _SwiftDeferredNSDictionary.bridgeKeys()(v5, v6);
  a1;
  v8 = v2[3];
  v2[3] = v7;
  v8;
  v9 = 0;
  v10 = v2[2];
  v11 = (v10 + 64);
  v12 = -1 << *(v10 + 32);
  v13 = -v12;
  v14 = (63 - v12) >> 6;
  while (1)
  {
    v16 = *v11++;
    v15 = v16;
    if (v16)
    {
      break;
    }

    v9 -= 64;
    if (!--v14)
    {
      v17 = v13;
      goto LABEL_6;
    }
  }

  v17 = __clz(__rbit64(v15)) - v9;
LABEL_6:
  v2[4] = v17;
  v2[5] = v13;
  return v2;
}

void *_SwiftDeferredNSDictionary.bridgeKeys()(uint64_t a1, uint64_t a2)
{
  v3 = *(*v2 + 96);
  v4 = *(v3 - 1);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](a1, a2);
  MEMORY[0x1EEE9AC00](v6, v7);
  v45 = (&v34 - v8);
  if (!_swift_isClassOrObjCExistentialType(v3, v3))
  {
    v9 = atomic_load(v2 + 2);
    if (v9)
    {
      type metadata accessor for __BridgingHashBuffer(0);
      v11 = v10;
      v12 = swift_unknownObjectRetain(v9);
      if (swift_dynamicCastClass(v12, v11))
      {
        return v9;
      }
    }

    else
    {
      v36 = (&v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
      v13 = v2[4];
      v14 = *(v13 + 32);
      type metadata accessor for __BridgingHashBuffer(0);
      v37 = v15;
      v16 = swift_allocObject(v15, ((8 << v14) + 40), 7uLL);
      v16[2] = v13;
      v16[3] = v13 + 64;
      v40 = v13 + 64;
      v16[4] = ~(-1 << v14);
      if (1 << v14 < 64)
      {
        v17 = ~(-1 << (1 << v14));
      }

      else
      {
        v17 = -1;
      }

      v18 = v17 & *(v13 + 64);
      v38 = v16;
      v39 = ((1 << v14) + 63) >> 6;
      v35 = (v4 + 32);
      v41 = (v4 + 8);
      v42 = v16 + 5;
      v43 = v4 + 16;
      v13;
      v19 = 0;
      v20 = v45;
LABEL_10:
      if (v18)
      {
        v21 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
        goto LABEL_17;
      }

      v22 = v19;
      while (1)
      {
        v19 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          __break(1u);
          goto LABEL_28;
        }

        if (v19 >= v39)
        {
          break;
        }

        v23 = *(v40 + 8 * v19);
        ++v22;
        if (v23)
        {
          v21 = __clz(__rbit64(v23));
          v18 = (v23 - 1) & v23;
LABEL_17:
          v24 = v21 | (v19 << 6);
          (*(v4 + 16))(v45, *(v2[4] + 48) + *(v4 + 72) * v24, v3);
          if (_swift_isClassOrObjCExistentialType(v3, v3))
          {
            if (v5 == 8)
            {
              v25 = *v20;
              v26 = v4;
              v44 = v24;
              v27 = *v41;
              swift_unknownObjectRetain(v25);
              v27(v20, v3);
              v4 = v26;
              v5 = 8;
              v42[v44] = v25;
              goto LABEL_10;
            }

LABEL_28:
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

          v28 = v36;
          (*v35)(v36, v45, v3);
          v29 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)(v28, v3);
          v42[v24] = v29;
          goto LABEL_10;
        }
      }

      v30 = v38;
      v38;
      v31 = 0;
      atomic_compare_exchange_strong(v2 + 2, &v31, v30);
      if (v31)
      {
        swift_unknownObjectRelease(v30);
      }

      v9 = atomic_load(v2 + 2);
      if (!v9)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v32 = swift_unknownObjectRetain(v9);
      if (swift_dynamicCastClass(v32, v37))
      {
        v30;
        return v9;
      }
    }

    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return 0;
}

Swift::Bool __swiftcall _HashTable.isOccupied(_:)(Swift::_HashTable::Bucket a1)
{
  offset = a1.offset;
  LOBYTE(a1.offset) = 0;
  if ((offset & 0x8000000000000000) == 0 && v2 + 1 > offset)
  {
    a1.offset = (*(v1 + ((offset >> 3) & 0x1FFFFFFFFFFFFFF8)) >> offset) & 1;
  }

  return a1.offset;
}

unint64_t *_SwiftDictionaryNSEnumerator.nextObject()()
{
  offset = v0[4].offset;
  if (offset == v0[5].offset)
  {
    return 0;
  }

  v0[4].offset = _HashTable.occupiedBucket(after:)(v0[4]).offset;
  return _SwiftDictionaryNSEnumerator.bridgedKey(at:)(offset, v3);
}

Swift::_HashTable::Bucket __swiftcall _HashTable.occupiedBucket(after:)(Swift::_HashTable::Bucket after)
{
  v3 = after.offset >> 6;
  if ((*(v1 + 8 * (after.offset >> 6)) & (-2 << SLOBYTE(after.offset))) != 0)
  {
    return (__clz(__rbit64(*(v1 + 8 * (after.offset >> 6)) & (-2 << SLOBYTE(after.offset)))) | after.offset & 0xFFFFFFFFFFFFFFC0);
  }

  result.offset = v2 + 1;
  v5 = v3 << 6;
  for (i = v3 + 1; i < (v2 + 64) >> 6; ++i)
  {
    v7 = *(v1 + 8 * i);
    v5 += 64;
    if (v7)
    {
      return (__clz(__rbit64(v7)) + v5);
    }
  }

  return result;
}

id _stdlib_atomicLoadARCRef(object:)(unint64_t *a1)
{
  result = atomic_load(a1);
  if (result)
  {
    return swift_unknownObjectRetain(result);
  }

  return result;
}

BOOL _stdlib_atomicInitializeARCRef(object:desired:)(atomic_ullong *a1, void *a2)
{
  swift_unknownObjectRetain(a2);
  v4 = 0;
  atomic_compare_exchange_strong(a1, &v4, a2);
  v5 = v4 == 0;
  if (v4)
  {
    swift_unknownObjectRelease(a2);
  }

  return v5;
}

Swift::_HashTable::Bucket_optional __swiftcall _HashTable.Iterator.next()()
{
  v1 = v0[3];
  if (v1)
  {
    v2 = 0;
    v0[3] = (v1 - 1) & v1;
    v3 = __clz(__rbit64(v1)) | (v0[2] << 6);
  }

  else
  {
    v4 = v0[2];
    v5 = (v0[1] + 64) >> 6;
    while (1)
    {
      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v6 >= v5)
      {
        v3 = 0;
        v2 = 1;
        goto LABEL_10;
      }

      v0[2] = v6;
      v7 = *(*v0 + 8 * v6);
      v0[3] = v7;
      ++v4;
      if (v7)
      {
        v2 = 0;
        v0[3] = (v7 - 1) & v7;
        v3 = __clz(__rbit64(v7)) | (v6 << 6);
        goto LABEL_10;
      }
    }

    __break(1u);
  }

LABEL_10:
  result.value.offset = v3;
  result.is_nil = v2;
  return result;
}

void *_SwiftDeferredNSDictionary.bridgeValues()(uint64_t a1, uint64_t a2)
{
  v3 = *(*v2 + 104);
  v4 = *(v3 - 1);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](a1, a2);
  MEMORY[0x1EEE9AC00](v6, v7);
  v45 = (&v34 - v8);
  if (!_swift_isClassOrObjCExistentialType(v3, v3))
  {
    v9 = atomic_load(v2 + 3);
    if (v9)
    {
      type metadata accessor for __BridgingHashBuffer(0);
      v11 = v10;
      v12 = swift_unknownObjectRetain(v9);
      if (swift_dynamicCastClass(v12, v11))
      {
        return v9;
      }
    }

    else
    {
      v36 = (&v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
      v13 = v2[4];
      v14 = *(v13 + 32);
      type metadata accessor for __BridgingHashBuffer(0);
      v37 = v15;
      v16 = swift_allocObject(v15, ((8 << v14) + 40), 7uLL);
      v16[2] = v13;
      v16[3] = v13 + 64;
      v40 = v13 + 64;
      v16[4] = ~(-1 << v14);
      if (1 << v14 < 64)
      {
        v17 = ~(-1 << (1 << v14));
      }

      else
      {
        v17 = -1;
      }

      v18 = v17 & *(v13 + 64);
      v38 = v16;
      v39 = ((1 << v14) + 63) >> 6;
      v35 = (v4 + 32);
      v41 = (v4 + 8);
      v42 = v16 + 5;
      v43 = v4 + 16;
      v13;
      v19 = 0;
      v20 = v45;
LABEL_10:
      if (v18)
      {
        v21 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
        goto LABEL_17;
      }

      v22 = v19;
      while (1)
      {
        v19 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          __break(1u);
          goto LABEL_28;
        }

        if (v19 >= v39)
        {
          break;
        }

        v23 = *(v40 + 8 * v19);
        ++v22;
        if (v23)
        {
          v21 = __clz(__rbit64(v23));
          v18 = (v23 - 1) & v23;
LABEL_17:
          v24 = v21 | (v19 << 6);
          (*(v4 + 16))(v45, *(v2[4] + 56) + *(v4 + 72) * v24, v3);
          if (_swift_isClassOrObjCExistentialType(v3, v3))
          {
            if (v5 == 8)
            {
              v25 = *v20;
              v26 = v4;
              v44 = v24;
              v27 = *v41;
              swift_unknownObjectRetain(v25);
              v27(v20, v3);
              v4 = v26;
              v5 = 8;
              v42[v44] = v25;
              goto LABEL_10;
            }

LABEL_28:
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

          v28 = v36;
          (*v35)(v36, v45, v3);
          v29 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)(v28, v3);
          v42[v24] = v29;
          goto LABEL_10;
        }
      }

      v30 = v38;
      v38;
      v31 = 0;
      atomic_compare_exchange_strong(v2 + 3, &v31, v30);
      if (v31)
      {
        swift_unknownObjectRelease(v30);
      }

      v9 = atomic_load(v2 + 3);
      if (!v9)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v32 = swift_unknownObjectRetain(v9);
      if (swift_dynamicCastClass(v32, v37))
      {
        v30;
        return v9;
      }
    }

    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return 0;
}

id @objc _SwiftDeferredNSDictionary.copy(with:)()
{
  v0 = specialized _SwiftDeferredNSDictionary.copy(with:)();

  return swift_unknownObjectRetain(v0);
}

unint64_t *_SwiftDeferredNSDictionary.object(forKey:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v37 = *v2;
  v5 = *(v37 + 104);
  v36 = *(v5 - 1);
  MEMORY[0x1EEE9AC00](a1, a2);
  v7 = (&v36 - v6);
  v9 = *(v8 + 96);
  v12 = type metadata accessor for Optional(0, v9, v10, v11);
  v13 = *(v12 - 8);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v17 = (&v36 - v16);
  v18 = *(v9 - 1);
  MEMORY[0x1EEE9AC00](v15, v19);
  v21 = &v36 - v20;
  _conditionallyBridgeFromObjectiveC<A>(_:_:)(a1, v9, v17, v22);
  if ((*(v18 + 48))(v17, 1, v9) == 1)
  {
    (*(v13 + 8))(v17, v12);
    return 0;
  }

  (*(v18 + 32))(v21, v17, v9);
  v23 = v3[4];
  v24 = *(v37 + 112);
  v23;
  v25 = __RawDictionaryStorage.find<A>(_:)(v21, v9, v24);
  LOBYTE(v24) = v26;
  v23;
  v27 = (*(v18 + 8))(v21, v9);
  if ((v24 & 1) == 0)
  {
    return 0;
  }

  v29 = _SwiftDeferredNSDictionary.bridgeValues()(v27, v28);
  if (v29)
  {
    v30 = v29[v25 + 5];
    v31 = v29;
    swift_unknownObjectRetain(v30);
    v31;
    return v30;
  }

  else
  {
    v33 = *(v3[4] + 56);
    v34 = v36;
    (*(v36 + 16))(v7, v33 + *(v36 + 72) * v25, v5);
    v35 = _bridgeAnythingToObjectiveC<A>(_:)(v7, v5);
    (*(v34 + 8))(v7, v5);
    return v35;
  }
}

void *_SwiftDeferredNSDictionary.keyEnumerator()()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(*v0 + 96);
  if (_swift_isClassOrObjCExistentialType(v3, v3))
  {
    v4 = *(v1 + 32);
    v5 = type metadata accessor for _SwiftDictionaryNSEnumerator(0, v3, *(v2 + 104), *(v2 + 112));
    v6 = swift_allocObject(v5, 0x30, 7uLL);
    v7 = v6;
    v8 = 0;
    v6[2] = v4;
    v6[3] = 0;
    v9 = (v4 + 64);
    v10 = -1 << *(v4 + 32);
    v11 = -v10;
    v12 = (63 - v10) >> 6;
    while (1)
    {
      v14 = *v9++;
      v13 = v14;
      if (v14)
      {
        break;
      }

      v8 -= 64;
      if (!--v12)
      {
        v15 = v11;
        goto LABEL_8;
      }
    }

    v15 = __clz(__rbit64(v13)) - v8;
LABEL_8:
    v6[4] = v15;
    v6[5] = v11;
    v4;
  }

  else
  {
    v16 = type metadata accessor for _SwiftDictionaryNSEnumerator(0, v3, *(v2 + 104), *(v2 + 112));
    v7 = swift_allocObject(v16, 0x30, 7uLL);
    v17 = v1;
    _SwiftDictionaryNSEnumerator.init(_:)(v17);
  }

  return v7;
}

void *_SwiftDeferredNSDictionary.getObjects(_:andKeys:count:)(uint64_t a1, void *a2, uint64_t a3)
{
  v127 = a2;
  v128 = a1;
  v124 = *(*v3 + 104);
  v5 = *(*(v124 - 1) + 64);
  v6 = MEMORY[0x1EEE9AC00](a1, a2);
  v7 = (&v105 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = (&v105 - v10);
  v13 = MEMORY[0x1EEE9AC00](v9, v12);
  v121 = (&v105 - v14);
  v125 = *(v15 + 96);
  v123 = *(v125 - 1);
  v16 = *(v123 + 64);
  v18 = MEMORY[0x1EEE9AC00](v13, v17);
  v20 = MEMORY[0x1EEE9AC00](v18, v19);
  result = MEMORY[0x1EEE9AC00](v20, v21);
  v122 = (&v105 - v27);
  if (v28 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a3)
  {
    v116 = v26;
    v118 = v25;
    v113 = v24;
    v29 = _SwiftDeferredNSDictionary.bridgeKeys()(result, v23);
    v129 = _SwiftDeferredNSDictionary.bridgeValues()(v29, v30);
    if (v127)
    {
      v126 = v29;
      v117 = v16;
      v119 = a3;
      v120 = v3;
      if (v128)
      {
        v108 = v11;
        v116 = v5;
        v31 = 0;
        v32 = 0;
        v33 = v3[4];
        v36 = *(v33 + 64);
        v35 = v33 + 64;
        v34 = v36;
        v37 = 1 << *(v35 - 32);
        v38 = -1;
        if (v37 < 64)
        {
          v38 = ~(-1 << v37);
        }

        v39 = v38 & v34;
        v40 = (v37 + 63) >> 6;
        v115 = (v126 + 5);
        v112 = v123 + 16;
        v107 = (v123 + 32);
        v114 = (v129 + 5);
        v110 = (v123 + 8);
        v111 = v118 + 16;
        v106 = (v118 + 32);
        v109 = (v118 + 8);
        while (1)
        {
          if (v39)
          {
            v42 = __clz(__rbit64(v39));
            v39 &= v39 - 1;
            goto LABEL_17;
          }

          v43 = v32;
          do
          {
            v32 = v43 + 1;
            if (__OFADD__(v43, 1))
            {
              __break(1u);
LABEL_78:
              __break(1u);
LABEL_79:
              __break(1u);
              goto LABEL_80;
            }

            if (v32 >= v40)
            {
              goto LABEL_29;
            }

            v44 = *(v35 + 8 * v32);
            ++v43;
          }

          while (!v44);
          v42 = __clz(__rbit64(v44));
          v39 = (v44 - 1) & v44;
LABEL_17:
          v45 = v42 | (v32 << 6);
          if (v126)
          {
            v46 = *&v115[8 * v45];
            result = swift_unknownObjectRetain(v46);
            goto LABEL_22;
          }

          v47 = v125;
          (*(v123 + 16))(v122, *(v120[4] + 48) + *(v123 + 72) * v45, v125);
          if (_swift_isClassOrObjCExistentialType(v47, v47))
          {
            if (v117 == 8)
            {
              v48 = v39;
              v49 = v122;
              v46 = *v122;
              v50 = *v110;
              swift_unknownObjectRetain(*v122);
              v51 = v49;
              v39 = v48;
              result = v50(v51, v125);
              a3 = v119;
              goto LABEL_22;
            }

LABEL_80:
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

          v56 = v113;
          v57 = v125;
          (*v107)(v113, v122, v125);
          result = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)(v56, v57);
          v46 = result;
LABEL_22:
          if (v31 == 0x1000000000000000)
          {
            __break(1u);
            goto LABEL_83;
          }

          v127[v31] = v46;
          swift_unknownObjectRelease(v46);
          if (v129)
          {
            v41 = *&v114[8 * v45];
            swift_unknownObjectRetain(v41);
          }

          else
          {
            v52 = *(v120[4] + 56) + *(v118 + 72) * v45;
            v53 = v124;
            (*(v118 + 16))(v121, v52, v124);
            if (_swift_isClassOrObjCExistentialType(v53, v53))
            {
              if (v116 != 8)
              {
                goto LABEL_80;
              }

              v54 = v121;
              v41 = *v121;
              v55 = *v109;
              swift_unknownObjectRetain(*v121);
              a3 = v119;
              v55(v54, v124);
            }

            else
            {
              v58 = v108;
              v59 = v124;
              (*v106)(v108, v121, v124);
              v41 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)(v58, v59);
            }
          }

          *(v128 + 8 * v31) = v41;
          swift_unknownObjectRelease(v41);
          if (++v31 == a3)
          {
LABEL_29:
            v129;
            v60 = v126;
            return v60;
          }
        }
      }

      v81 = v127;
      v129;
      v82 = 0;
      v83 = 0;
      v84 = v3[4];
      v87 = *(v84 + 64);
      v86 = v84 + 64;
      v85 = v87;
      v88 = 1 << *(v86 - 32);
      v89 = -1;
      if (v88 < 64)
      {
        v89 = ~(-1 << v88);
      }

      v90 = v89 & v85;
      v91 = (v88 + 63) >> 6;
      v92 = v126;
      v128 = v123 + 16;
      v129 = v126 + 5;
      v122 = (v123 + 32);
      v124 = (v123 + 8);
      v93 = v116;
      while (v90)
      {
        v94 = __clz(__rbit64(v90));
        v90 &= v90 - 1;
        v95 = v94 | (v83 << 6);
        if (v92)
        {
LABEL_56:
          v96 = v129[v95];
          swift_unknownObjectRetain(v96);
          if (v82 == 0x1000000000000000)
          {
            goto LABEL_69;
          }
        }

        else
        {
LABEL_63:
          v99 = v125;
          (*(v123 + 16))(v93, *(v120[4] + 48) + *(v123 + 72) * v95, v125);
          if (_swift_isClassOrObjCExistentialType(v99, v99))
          {
            if (v117 != 8)
            {
              goto LABEL_80;
            }

            v96 = *v93;
            v100 = *v124;
            swift_unknownObjectRetain(*v93);
            v100(v93, v125);
            v92 = v126;
            if (v82 == 0x1000000000000000)
            {
LABEL_69:
              __break(1u);
              goto LABEL_70;
            }
          }

          else
          {
            v101 = v113;
            v102 = v125;
            (*v122)(v113, v93, v125);
            v103 = v101;
            v92 = v126;
            v96 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)(v103, v102);
            if (v82 == 0x1000000000000000)
            {
              goto LABEL_69;
            }
          }
        }

        v81[v82] = v96;
        swift_unknownObjectRelease(v96);
        if (++v82 == v119)
        {
          goto LABEL_70;
        }
      }

      v97 = v83;
      while (1)
      {
        v83 = v97 + 1;
        if (__OFADD__(v97, 1))
        {
          goto LABEL_79;
        }

        if (v83 >= v91)
        {
          break;
        }

        v98 = *(v86 + 8 * v83);
        ++v97;
        if (v98)
        {
          v90 = (v98 - 1) & v98;
          v95 = __clz(__rbit64(v98)) | (v83 << 6);
          if (v92)
          {
            goto LABEL_56;
          }

          goto LABEL_63;
        }
      }

LABEL_70:
      v60 = v92;
      return v60;
    }

    else
    {
      v29;
      if (v128)
      {
        v108 = v11;
        v116 = v5;
        v61 = 0;
        v62 = 0;
        v120 = v3;
        v63 = v3[4];
        v66 = *(v63 + 64);
        v65 = v63 + 64;
        v64 = v66;
        v67 = 1 << *(v65 - 32);
        v68 = -1;
        if (v67 < 64)
        {
          v68 = ~(-1 << v67);
        }

        v69 = v68 & v64;
        v70 = (v67 + 63) >> 6;
        v71 = v129 + 5;
        v72 = v118;
        v125 = v129 + 5;
        v126 = (v118 + 16);
        v122 = (v118 + 32);
        v123 = v118 + 8;
        while (1)
        {
          if (!v69)
          {
            v74 = v62;
            while (1)
            {
              v62 = v74 + 1;
              if (__OFADD__(v74, 1))
              {
                goto LABEL_78;
              }

              if (v62 >= v70)
              {
                break;
              }

              v75 = *(v65 + 8 * v62);
              ++v74;
              if (v75)
              {
                v73 = __clz(__rbit64(v75));
                v69 = (v75 - 1) & v75;
                goto LABEL_41;
              }
            }

LABEL_71:
            v60 = v129;
            return v60;
          }

          v73 = __clz(__rbit64(v69));
          v69 &= v69 - 1;
LABEL_41:
          v76 = v73 | (v62 << 6);
          if (v129)
          {
            v77 = v71[v76];
            result = swift_unknownObjectRetain(v77);
          }

          else
          {
            v78 = v124;
            (*(v72 + 16))(v7, *(v120[4] + 56) + *(v72 + 72) * v76, v124);
            if (_swift_isClassOrObjCExistentialType(v78, v78))
            {
              if (v116 != 8)
              {
                goto LABEL_80;
              }

              v77 = *v7;
              v127 = *v123;
              swift_unknownObjectRetain(v77);
              result = (v127)(v7, v124);
            }

            else
            {
              v79 = v108;
              v80 = v124;
              (*v122)(v108, v7, v124);
              result = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)(v79, v80);
              v77 = result;
            }

            v71 = v125;
          }

          if (v61 == 0x1000000000000000)
          {
            break;
          }

          *(v128 + 8 * v61) = v77;
          swift_unknownObjectRelease(v77);
          if (++v61 == a3)
          {
            goto LABEL_71;
          }
        }

LABEL_83:
        __break(1u);
      }

      else
      {
        v104 = v129;

        return v104;
      }
    }
  }

  return result;
}

void @objc _SwiftDeferredNSDictionary.enumerateKeysAndObjects(options:using:)(uint64_t a1, int a2, int a3, void *aBlock)
{
  v5 = _Block_copy(aBlock);
  a1;
  specialized _SwiftDeferredNSDictionary.enumerateKeysAndObjects(options:using:)(v5, v6);
  a1;

  _Block_release(v5);
}

uint64_t _SwiftDeferredNSDictionary.countByEnumerating(with:objects:count:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 96);
  v58 = *(v7 - 1);
  v8 = *(v58 + 64);
  v9 = MEMORY[0x1EEE9AC00](a1, a2);
  v11 = MEMORY[0x1EEE9AC00](v9, v10);
  v57 = (&v43 - v14);
  v15 = v3[4];
  v16 = v15 + 64;
  v17 = -1 << *(v15 + 32);
  v18 = *v11;
  v19 = *(v11 + 8);
  v20 = *(v11 + 16);
  v21 = *(v11 + 24);
  v22 = *(v11 + 48);
  v59 = *(v11 + 32);
  v60 = v22;
  if (!v18)
  {
    v35 = 0;
    v21 = -v17;
    v36 = (63 - v17) >> 6;
    v37 = (v15 + 64);
    while (1)
    {
      v39 = *v37++;
      v38 = v39;
      if (v39)
      {
        break;
      }

      v35 -= 64;
      if (!--v36)
      {
        goto LABEL_36;
      }
    }

    v21 = __clz(__rbit64(v38)) - v35;
LABEL_36:
    if ((v21 & 0x8000000000000000) != 0)
    {
      goto LABEL_45;
    }

    v20 = &_fastEnumerationStorageMutationsTarget;
    v18 = 1;
    v19 = a2;
    if (a2)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (!a2)
  {
    return 0;
  }

LABEL_3:
  if ((v21 & 0x8000000000000000) != 0)
  {
    goto LABEL_45;
  }

  v56 = -v17;
  if (v21 + v17 && (v21 >= v56 || ((*(v16 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v21) & 1) == 0))
  {
LABEL_47:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v53 = v19;
  v54 = v18;
  v55 = v20;
  v49 = v13;
  v23 = _SwiftDeferredNSDictionary.bridgeKeys()(v11, v12);
  if (a3 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a3)
  {
    v51 = v7;
    v24 = 0;
    v47 = v58 + 16;
    v48 = v23 + 40;
    v50 = (v58 + 8);
    v25 = (63 - v17) >> 6;
    v45 = (v58 + 32);
    v46 = v15 + 72;
    while (1)
    {
      if (v24 == a3)
      {
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      if (v21 == v56)
      {
        break;
      }

      v52 = v23;
      if (v23)
      {
        v26 = *&v48[8 * v21];
        swift_unknownObjectRetain(v26);
      }

      else
      {
        v27 = v51;
        (*(v58 + 16))(v57, *(v3[4] + 48) + *(v58 + 72) * v21, v51);
        if (_swift_isClassOrObjCExistentialType(v27, v27))
        {
          if (v8 != 8)
          {
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

          v26 = *v57;
          v44 = *v50;
          swift_unknownObjectRetain(v26);
          v44(v57, v51);
        }

        else
        {
          v34 = v51;
          (*v45)(v49, v57, v51);
          v26 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)(v49, v34);
        }
      }

      if (v24 == 0x1000000000000000)
      {
        __break(1u);
        goto LABEL_47;
      }

      *(a2 + 8 * v24) = v26;
      swift_unknownObjectRelease(v26);
      v28 = v21 >> 6;
      if ((*(v16 + 8 * (v21 >> 6)) & (-2 << v21)) != 0)
      {
        v21 = __clz(__rbit64(*(v16 + 8 * (v21 >> 6)) & (-2 << v21))) | v21 & 0xFFFFFFFFFFFFFFC0;
        v23 = v52;
      }

      else
      {
        v29 = v28 << 6;
        v30 = v28 + 1;
        v31 = (v46 + 8 * v28);
        v23 = v52;
        while (v30 < v25)
        {
          v33 = *v31++;
          v32 = v33;
          v29 += 64;
          ++v30;
          if (v33)
          {
            v21 = __clz(__rbit64(v32)) + v29;
            goto LABEL_25;
          }
        }

        v21 = v56;
      }

LABEL_25:
      if (++v24 == a3)
      {
        v24 = a3;
        goto LABEL_41;
      }
    }

    v21 = v56;
LABEL_41:
    if ((v21 & 0x8000000000000000) == 0)
    {
      v23;
      goto LABEL_34;
    }

LABEL_45:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v23;
  v24 = 0;
LABEL_34:
  v40 = v53;
  *a1 = v54;
  *(a1 + 8) = v40;
  *(a1 + 16) = v55;
  *(a1 + 24) = v21;
  v41 = v60;
  *(a1 + 32) = v59;
  *(a1 + 48) = v41;
  return v24;
}

uint64_t @objc _SwiftDictionaryNSEnumerator.init(coder:)(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 104);
  v6 = *(*a1 + 112);
  swift_unknownObjectRetain(a3);

  return a4(v4, v5, v6);
}

uint64_t _SwiftDeferredNSDictionary.__ivar_destroyer()
{
  swift_unknownObjectRelease(*(v0 + 16));
  swift_unknownObjectRelease(*(v0 + 24));
  v1 = *(v0 + 32);

  return v1;
}

void _SwiftDeferredNSDictionary.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  v0;
  swift_unknownObjectRelease(v1);
  swift_unknownObjectRelease(*(v0 + 24));
  v2 = *(v0 + 32);
  v0;
  v2;

  swift_deallocClassInstance(v0);
}

void __CocoaDictionary.startIndex.getter(void *a1)
{
  v2 = [swift_unknownObjectRetain(a1) count];
  type metadata accessor for __BridgingBufferStorage(0);
  if ((v2 - 0x1000000000000000) >> 61 == 7)
  {
    if (!__OFADD__(8 * v2, 24))
    {
      v4 = swift_bufferAllocate(v3, (8 * v2 + 24), 7uLL);
      v4[2] = v2;
      [a1 getObjects:0 andKeys:v4 + 3 count:v2];
      swift_unknownObjectRelease(a1);
      v5 = type metadata accessor for __CocoaDictionary.Index.Storage();
      v6 = swift_allocObject(v5, 0x20, 7uLL);
      v6[2] = a1;
      v6[3] = v4;
      swift_unknownObjectRetain(a1);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void __CocoaDictionary.endIndex.getter(void *a1)
{
  v2 = [swift_unknownObjectRetain(a1) count];
  type metadata accessor for __BridgingBufferStorage(0);
  if ((v2 - 0x1000000000000000) >> 61 == 7)
  {
    if (!__OFADD__(8 * v2, 24))
    {
      v4 = swift_bufferAllocate(v3, (8 * v2 + 24), 7uLL);
      v4[2] = v2;
      [a1 getObjects:0 andKeys:v4 + 3 count:v2];
      swift_unknownObjectRelease(a1);
      v5 = type metadata accessor for __CocoaDictionary.Index.Storage();
      v6 = swift_allocObject(v5, 0x20, 7uLL);
      v6[2] = a1;
      v6[3] = v4;
      swift_unknownObjectRetain(a1);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

unint64_t __CocoaDictionary.index(after:)(int64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v7 = type metadata accessor for __CocoaDictionary.Index.Storage();
  if (!swift_dynamicCastClass(v6, v7))
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (*(v6 + 2) != a3 || *(*(v6 + 3) + 16) <= a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a1;
}

swift *__CocoaDictionary.formIndex(after:isUnique:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[1];
  if (*a1 < 0)
  {
    v6 = *a1;
  }

  else
  {
    v6 = (*a1 & 0xFFFFFFFFFFFFFF8);
  }

  v7 = type metadata accessor for __CocoaDictionary.Index.Storage();
  result = swift_dynamicCastClass(v6, v7);
  if (!result)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (*(v6 + 2) != a3 || v5 >= *(*(v6 + 3) + 16))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  a1[1] = v5 + 1;
  return result;
}

void *__CocoaDictionary.index(forKey:)(void *a1, id a2)
{
  v4 = [a2 &sel:a1 objectForKey:?];
  if (!v4)
  {
    return 0;
  }

  swift_unknownObjectRelease(v4);
  v5 = [swift_unknownObjectRetain(a2) count];
  type metadata accessor for __BridgingBufferStorage(0);
  if ((v5 - 0x1000000000000000) >> 61 != 7)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (__OFADD__(8 * v5, 24))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v7 = swift_bufferAllocate(v6, (8 * v5 + 24), 7uLL);
  v7[2] = v5;
  [a2 getObjects:0 andKeys:v7 + 3 count:v5];
  swift_unknownObjectRelease(a2);
  if ((v7[2] & 0x8000000000000000) != 0)
  {
    goto LABEL_12;
  }

  v8 = 3;
  do
  {
    v9 = v7[v8];
    swift_unknownObjectRetain(v9);
    isEqual = swift_stdlib_NSObject_isEqual(a1, v9);
    swift_unknownObjectRelease(v9);
    ++v8;
  }

  while ((isEqual & 1) == 0);
  v11 = type metadata accessor for __CocoaDictionary.Index.Storage();
  v12 = swift_allocObject(v11, 0x20, 7uLL);
  v12[2] = a2;
  v12[3] = v7;
  swift_unknownObjectRetain(a2);
  return v12;
}

id __CocoaDictionary.lookup(_:)(uint64_t a1, id a2)
{
  v2 = [a2 &sel:a1 objectForKey:?];

  return v2;
}

void *__CocoaDictionary.lookup(_:)(swift *a1, uint64_t a2, void *a3)
{
  if (a1 < 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v6 = type metadata accessor for __CocoaDictionary.Index.Storage();
  if (!swift_dynamicCastClass(v5, v6))
  {
    goto LABEL_10;
  }

  v7 = *(v5 + 2);
  if (v7 != a3)
  {
    goto LABEL_9;
  }

  v8 = *(*(v5 + 3) + 8 * a2 + 24);
  swift_unknownObjectRetain(v8);
  if (!swift_dynamicCastClass(v5, v6))
  {
LABEL_10:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (![v7 &sel:v8 objectForKey:?])
  {
LABEL_9:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return v8;
}

id __CocoaDictionary.key(at:)(swift *a1, uint64_t a2, uint64_t a3)
{
  v3 = specialized __CocoaDictionary.key(at:)(a1, a2, a3);

  return swift_unknownObjectRetain(v3);
}

id __CocoaDictionary.Index.key.getter(swift *a1, uint64_t a2)
{
  v2 = specialized __CocoaDictionary.Index.key.getter(a1, a2);

  return swift_unknownObjectRetain(v2);
}

id __CocoaDictionary.value(at:)(swift *a1, uint64_t a2, void *a3)
{
  if (a1 < 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v6 = type metadata accessor for __CocoaDictionary.Index.Storage();
  if (!swift_dynamicCastClass(v5, v6))
  {
    goto LABEL_10;
  }

  v7 = *(v5 + 2);
  if (v7 != a3)
  {
    goto LABEL_9;
  }

  v8 = *(*(v5 + 3) + 8 * a2 + 24);
  swift_unknownObjectRetain(v8);
  if (!swift_dynamicCastClass(v5, v6))
  {
LABEL_10:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v9 = [v7 &sel:v8 objectForKey:?];
  if (!v9)
  {
LABEL_9:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v10 = v9;
  swift_unknownObjectRelease(v8);
  return v10;
}

__objc2_class **__CocoaDictionary.mapValues<A, B, C>(_:)(void (*a1)(uint64_t), uint64_t a2, void *a3, unint64_t *a4, Class *a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v100 = a1;
  v101 = a2;
  MEMORY[0x1EEE9AC00](a1, a2);
  v15 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for Optional(0, v18, v16, v17);
  v103 = *(v90 - 8);
  v20 = MEMORY[0x1EEE9AC00](v90 - 8, v19);
  v89 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v87 = &v77 - v24;
  v97 = *(a5 - 1);
  MEMORY[0x1EEE9AC00](v23, v25);
  v99 = (&v77 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v88 = type metadata accessor for Optional(0, a4, v27, v28);
  v102 = *(v88 - 8);
  v30 = MEMORY[0x1EEE9AC00](v88 - 8, v29);
  v91 = &v77 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v30, v32);
  v92 = (&v77 - v34);
  v93 = *(a4 - 1);
  v36 = MEMORY[0x1EEE9AC00](v33, v35);
  v105 = &v77 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36, v38);
  v104 = (&v77 - v39);
  v40 = [a3 count];
  v106 = a4;
  if (v40)
  {
    v41 = v40;
    type metadata accessor for _DictionaryStorage(0, a4, a6, a7);
    v42 = static _DictionaryStorage.allocate(capacity:)(v41);
  }

  else
  {
    v42 = &_swiftEmptyDictionarySingleton;
  }

  v108 = v42;
  v43 = type metadata accessor for __CocoaDictionary.Iterator();
  v44 = swift_allocObject(v43, 0xE8, 7uLL);
  *(v44 + 1) = 0u;
  v95 = v44 + 2;
  v44[27] = 0;
  v96 = v44 + 27;
  *(v44 + 2) = 0u;
  *(v44 + 3) = 0u;
  *(v44 + 4) = 0u;
  *(v44 + 6) = 0u;
  *(v44 + 7) = 0u;
  *(v44 + 8) = 0u;
  *(v44 + 9) = 0u;
  v45 = v93;
  v86 = (v93 + 56);
  v46 = v102;
  v85 = (v102 + 2);
  v84 = (v93 + 48);
  *(v44 + 10) = 0u;
  *(v44 + 11) = 0u;
  v83 = (v46 + 1);
  v102 = (v45 + 32);
  v47 = v97;
  v82 = (v97 + 7);
  *(v44 + 12) = 0u;
  *(v44 + 5) = 0u;
  v94 = v44 + 10;
  v48 = v103;
  v81 = (v103 + 2);
  v80 = (v47 + 6);
  v44[28] = 0;
  v79 = (v48 + 1);
  v78 = (v47 + 4);
  v97 = v47 + 1;
  v44[26] = a3;
  swift_unknownObjectRetain(a3);
  v49 = 0;
  v98 = v44;
  while (1)
  {
    if (v49 != v44[28])
    {
      v51 = v44[3];
      if (!v51)
      {
        goto LABEL_31;
      }

      if (v49 >> 60)
      {
        __break(1u);
LABEL_30:
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      goto LABEL_12;
    }

    v50 = [v44[26] countByEnumeratingWithState:v95 objects:v94 count:16];
    v44[28] = v50;
    if (!v50)
    {
      break;
    }

    v44[27] = 0;
    v51 = v44[3];
    if (!v51)
    {
      goto LABEL_31;
    }

    v49 = 0;
LABEL_12:
    v52 = (v51 + 8 * v49);
    if ((v52 & 7) != 0)
    {
      goto LABEL_30;
    }

    v103 = v42;
    v53 = v8;
    v54 = a5;
    v55 = v15;
    v56 = a6;
    v57 = a7;
    v58 = *v52;
    v44[27] = v49 + 1;
    v59 = v44[26];
    swift_unknownObjectRetain(v58);
    v60 = [v59 &sel:v58 objectForKey:?];
    if (!v60)
    {
LABEL_31:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v61 = v60;
    v62 = v106;
    if (_swift_isClassOrObjCExistentialType(v106, v106))
    {
      v107[0] = v58;
      swift_dynamicCast(v104, v107, qword_1EEEAC710, v62, 7uLL, v63, v64, v65, v77);
    }

    else
    {
      (*v86)(v92, 1, 1, v62);
      _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v58, v62, v92);
      (*v85)(v91, v92, v88);
      if ((*v84)(v91, 1, v62) == 1)
      {
        goto LABEL_32;
      }

      swift_unknownObjectRelease(v58);
      (*v83)(v92, v88);
      (*v102)(v104, v91, v62);
    }

    v69 = v57;
    if (_swift_isClassOrObjCExistentialType(v54, v54))
    {
      v107[0] = v61;
      v70 = v99;
      swift_dynamicCast(v99, v107, qword_1EEEAC710, v54, 7uLL, v66, v67, v68, v77);
      a6 = v56;
    }

    else
    {
      v73 = v87;
      (*v82)(v87, 1, 1, v54);
      _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v61, v54, v73);
      v74 = v89;
      (*v81)(v89, v73, v90);
      if ((*v80)(v74, 1, v54) == 1)
      {
LABEL_32:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      a6 = v56;
      swift_unknownObjectRelease(v61);
      (*v79)(v73, v90);
      v70 = v99;
      (*v78)(v99, v89, v54);
    }

    v71 = v106;
    (*v102)(v105, v104, v106);
    v15 = v55;
    v100(v70);
    v8 = v53;
    if (v53)
    {
      (*(v93 + 8))(v105, v71);
      v98;
      (*v97)(v70, v54);
      v42 = v103;
      v75 = v103;
      goto LABEL_28;
    }

    a5 = v54;
    (*v97)(v70, v54);
    v72 = v103[2];
    a7 = v69;
    if (v103[3] <= v72)
    {
      type metadata accessor for _NativeDictionary(0, v106, a6, v69);
      _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(&v72->isa + 1, 1);
    }

    v42 = v108;
    _NativeDictionary._unsafeInsertNew(key:value:)(v105, v15, v108, v106, a6, v69);
    v49 = *v96;
    v44 = v98;
    if ((*v96 & 0x8000000000000000) != 0)
    {
      goto LABEL_27;
    }
  }

  *v96 = -1;
LABEL_27:
  v75 = v44;
LABEL_28:
  v75;
  return v42;
}

id __CocoaDictionary.Index.dictionary.getter(swift *a1)
{
  if (a1 < 0)
  {
    v1 = a1;
  }

  else
  {
    v1 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v2 = type metadata accessor for __CocoaDictionary.Index.Storage();
  if (!swift_dynamicCastClass(v1, v2))
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v3 = *(v1 + 2);

  return swift_unknownObjectRetain(v3);
}

__objc2_class **protocol witness for Sequence._copyToContiguousArray() in conformance __CocoaDictionary()
{
  v1 = *v0;
  v2 = specialized _copySequenceToContiguousArray<A>(_:)(*v0);
  swift_unknownObjectRelease(v1);
  return v2;
}

id protocol witness for IteratorProtocol.next() in conformance __CocoaDictionary.Iterator@<X0>(uint64_t *a1@<X8>)
{
  result = __CocoaDictionary.Iterator.next()();
  *a1 = result;
  a1[1] = v3;
  return result;
}

int64_t Dictionary._bridgeToObjectiveCImpl()(int64_t result, unint64_t *a2, void *a3, uint64_t a4)
{
  if ((result & 0xC000000000000001) == 0)
  {
    return _NativeDictionary.bridged()(result, a2, a3, a4);
  }

  if (result >= 0)
  {
    return result & 0xFFFFFFFFFFFFFF8;
  }

  return result;
}