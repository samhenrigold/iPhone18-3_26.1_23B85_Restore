uint64_t partial apply for specialized closure #1 in StringProtocol.addingPercentEncoding(forURLComponent:skipAlreadyEncoded:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  return specialized closure #1 in StringProtocol.addingPercentEncoding(forURLComponent:skipAlreadyEncoded:)(a1, a2, *(v3 + 24), *(v3 + 25), a3);
}

{
  result = _sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9component18skipAlreadyEncodedSSqd___AA15URLComponentSetACLLVSbtSlRd__s5UInt8V7ElementRtd__lFSs_SRyAJGTt2g5Tm(a1, a2, *(v3 + 24), *(v3 + 25), specialized closure #1 in StringProtocol.addingPercentEncoding<A>(utf8Buffer:component:skipAlreadyEncoded:));
  *a3 = result;
  a3[1] = v6;
  return result;
}

{
  return specialized closure #1 in StringProtocol.addingPercentEncoding(forURLComponent:skipAlreadyEncoded:)(a1, a2, *(v3 + 24), *(v3 + 25), a3);
}

{
  result = _sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9component18skipAlreadyEncodedSSqd___AA15URLComponentSetACLLVSbtSlRd__s5UInt8V7ElementRtd__lFSs_SRyAJGTt2g5(a1, a2, *(v3 + 24), *(v3 + 25));
  *a3 = result;
  a3[1] = v6;
  return result;
}

unint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(void *), uint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v8 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
LABEL_27:

    v17 = 0;
    return v17 & 1;
  }

  v19 = 4 * v8;
  v9 = (a3 >> 59) & 1;
  if ((a4 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = 15;
  while (1)
  {
    v12 = v11 & 0xC;
    result = v11;
    if (v12 == v10)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v11, a3, a4);
    }

    v14 = result >> 16;
    if (result >> 16 >= v8)
    {
      break;
    }

    if ((a4 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v15 = result;
      if (v12 != v10)
      {
        goto LABEL_18;
      }
    }

    else if ((a4 & 0x2000000000000000) != 0)
    {
      v18[0] = a3;
      v18[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      v15 = *(v18 + v14);
      if (v12 != v10)
      {
        goto LABEL_18;
      }
    }

    else
    {
      result = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
      if ((a3 & 0x1000000000000000) == 0)
      {
        result = _StringObject.sharedUTF8.getter();
      }

      v15 = *(result + v14);
      if (v12 != v10)
      {
LABEL_18:
        if ((a4 & 0x1000000000000000) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_22;
      }
    }

    result = _StringGuts._slowEnsureMatchingEncoding(_:)(v11, a3, a4);
    v11 = result;
    if ((a4 & 0x1000000000000000) == 0)
    {
LABEL_19:
      v11 = (v11 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_24;
    }

LABEL_22:
    if (v8 <= v11 >> 16)
    {
      goto LABEL_32;
    }

    v11 = String.UTF8View._foreignIndex(after:)();
LABEL_24:
    LOBYTE(v18[0]) = v15;
    v16 = a1(v18);
    if (v4)
    {

      return v17 & 1;
    }

    if (v16)
    {

      v17 = 1;
      return v17 & 1;
    }

    if (v19 == v11 >> 14)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t specialized static URL.isAbsolute(standardizing:pathStyle:)(unint64_t *a1, char a2)
{
  v11 = *a1;
  v10 = a1[1];
  if ((specialized Collection.first.getter(*a1, v10) & 0x1FF) == 0x2F)
  {
    return 1;
  }

  if ((a2 & 1) == 0)
  {
    if ((specialized Collection.first.getter(v11, v10) & 0x1FF) != 0x7E)
    {
      goto LABEL_82;
    }

    if ((specialized Collection.first.getter(v11, v10) & 0x1FF) != 0x7E)
    {
      goto LABEL_81;
    }

    v18 = specialized Collection<>.firstIndex(of:)(47, v11, v10);
    if (v19)
    {
      v20 = HIBYTE(v10) & 0xF;
      if ((v10 & 0x2000000000000000) == 0)
      {
        v20 = v11;
      }

      v21 = v20 << 16;
      if ((v10 & 0x1000000000000000) != 0 && (v11 & 0x800000000000000) == 0)
      {
        v14 = v21 | 0xB;
        goto LABEL_38;
      }

      v24 = v10 & 0x1000000000000000;
      v14 = v21 | 7;
    }

    else
    {
      v14 = v18;
      v24 = v10 & 0x1000000000000000;
    }

    if (!v24)
    {
      v23 = 65540;
      goto LABEL_71;
    }

LABEL_38:
    v22 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v22 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v22)
    {
      v23 = String.UTF8View._foreignIndex(after:)();
LABEL_71:
      if (v14 >> 14 == v23 >> 14)
      {
        v31 = static String.homeDirectoryPath()();
        v33 = v32;
LABEL_80:
        v46 = specialized Collection.suffix(from:)(v14, v11, v10);
        v47 = v41;
        v48 = v42;
        v49 = v43;
        lazy protocol witness table accessor for type Substring and conformance Substring();
        String.append<A>(contentsOf:)();

        v11 = v31;
        v10 = v33;
        goto LABEL_81;
      }

      if (v14 >> 14 < v23 >> 14)
      {
        goto LABEL_93;
      }

      v34 = String.subscript.getter();
      v35 = MEMORY[0x1865CAE80](v34);
      v37 = v36;

      if (!issetugid() && getenv("CFFIXED_USER_HOME"))
      {
        v38 = String.init(cString:)();
        goto LABEL_79;
      }

      v38 = specialized static Platform.homeDirectory(forUserName:)(v35, v37);
      if (v39)
      {
LABEL_79:
        v31 = String.standardizingPath.getter(v38, v39);
        v33 = v40;

        goto LABEL_80;
      }

LABEL_81:
      *a1 = v11;
      a1[1] = v10;
LABEL_82:
      v44 = specialized Collection.first.getter(v11, v10);
      return (v44 & 0x100) == 0 && v44 == 47;
    }

    __break(1u);
LABEL_97:
    v14 = specialized _ArrayBuffer._consumeAndCreateNew()(v14);
LABEL_65:
    v27 = *(v14 + 16);
    if (v27 < 2)
    {
      __break(1u);
    }

    else
    {
      *(v14 + 33) = 58;
      if (v27 < *(v14 + 24) >> 1)
      {
LABEL_67:
        memmove((v14 + 33), (v14 + 32), v27);
        *(v14 + 16) = v27 + 1;
        *(v14 + 32) = 47;
        v28 = static String._fromUTF8Repairing(_:)();
        v30 = v29;

        swift_bridgeObjectRelease_n();
        *a1 = v28;
        a1[1] = v30;
        return 1;
      }
    }

    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(1, v27 + 1, 1, v14);
    v27 = *(v14 + 16);
    goto LABEL_67;
  }

  if ((v10 & 0x1000000000000000) == 0)
  {
    if ((v10 & 0x2000000000000000) != 0)
    {
      v13 = HIBYTE(v10) & 0xF;
    }

    else
    {
      v13 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v13 >= 3)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (String.UTF8View._foreignCount()() < 3)
  {
    return 0;
  }

LABEL_9:
  result = specialized Collection.first.getter(v11, v10);
  if ((result & 0x100) != 0)
  {
    __break(1u);
    return result;
  }

  LOBYTE(v14) = result;
  v4 = 65540;
  if ((v10 & 0x1000000000000000) != 0)
  {
    v2 = (v11 >> 59) & 1;
  }

  else
  {
    v2 = 1;
  }

  v3 = 65540;
  if ((v10 & 0x1000000000000000) != 0)
  {
    v15 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v15 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15)
    {
      goto LABEL_91;
    }

    v3 = String.UTF8View._foreignIndex(after:)();
  }

  v5 = 4 << v2;
  v7 = v3 & 0xC;
  v16 = v3;
  if (v7 == 4 << v2)
  {
    v16 = _StringGuts._slowEnsureMatchingEncoding(_:)(v3, v11, v10);
  }

  if ((v10 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(v10) & 0xF;
  }

  else
  {
    v6 = v11 & 0xFFFFFFFFFFFFLL;
  }

  v2 = v16 >> 16;
  if (v16 >> 16 >= v6)
  {
    __break(1u);
    goto LABEL_89;
  }

  if ((v10 & 0x1000000000000000) != 0)
  {
    v2 = String.UTF8View._foreignSubscript(position:)();
    if (v7 == v5)
    {
      goto LABEL_47;
    }

    goto LABEL_43;
  }

  if ((v10 & 0x2000000000000000) != 0)
  {
    v46 = v11;
    v47 = v10 & 0xFFFFFFFFFFFFFFLL;
    v2 = *(&v46 + v2);
    if (v7 == v5)
    {
      goto LABEL_47;
    }

    goto LABEL_43;
  }

  if ((v11 & 0x1000000000000000) == 0)
  {
    goto LABEL_94;
  }

  for (i = (v10 & 0xFFFFFFFFFFFFFFFLL) + 32; ; i = _StringObject.sharedUTF8.getter())
  {
    LOBYTE(v2) = *(i + v2);
    if (v7 == v5)
    {
LABEL_47:
      v3 = _StringGuts._slowEnsureMatchingEncoding(_:)(v3, v11, v10);
      if ((v10 & 0x1000000000000000) == 0)
      {
LABEL_44:
        v16 = (v3 & 0xFFFFFFFFFFFF0000) + v4;
        goto LABEL_50;
      }
    }

    else
    {
LABEL_43:
      if ((v10 & 0x1000000000000000) == 0)
      {
        goto LABEL_44;
      }
    }

    if (v6 <= v3 >> 16)
    {
      goto LABEL_92;
    }

    v16 = String.UTF8View._foreignIndex(after:)();
LABEL_50:
    if ((v16 & 0xC) == v5)
    {
LABEL_89:
      v16 = _StringGuts._slowEnsureMatchingEncoding(_:)(v16, v11, v10);
    }

    v3 = v16 >> 16;
    if (v16 >> 16 < v6)
    {
      break;
    }

    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    ;
  }

  if ((v10 & 0x1000000000000000) != 0)
  {
    v26 = String.UTF8View._foreignSubscript(position:)();
  }

  else if ((v10 & 0x2000000000000000) != 0)
  {
    v46 = v11;
    v47 = v10 & 0xFFFFFFFFFFFFFFLL;
    v26 = *(&v46 + v3);
  }

  else
  {
    if ((v11 & 0x1000000000000000) != 0)
    {
      v25 = (v10 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      v25 = _StringObject.sharedUTF8.getter();
    }

    v26 = *(v25 + v3);
  }

  if ((v14 & 0xDF) - 91 < 0xFFFFFFE6 || v2 != 124 && v2 != 58 || v26 != 47)
  {
    return 0;
  }

  if (v2 == 124)
  {
    v14 = specialized _copyCollectionToContiguousArray<A>(_:)(v11, v10);

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_65;
    }

    goto LABEL_97;
  }

  v46 = 47;
  v47 = 0xE100000000000000;

  MEMORY[0x1865CB0E0](v11, v10);
  swift_bridgeObjectRelease_n();
  v45 = v47;
  *a1 = v46;
  a1[1] = v45;
  return 1;
}

void *_s10Foundation13RFC3986ParserV17percentEncodePath33_A90579D1FA072CB135F95EF00BA46450LL_18skipAlreadyEncodedSSx_SbtSyRzlFZSS_Tt1g5(unint64_t a1, unint64_t a2, char a3)
{
  v3 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    return 0;
  }

  v7 = specialized Collection<>.firstIndex(of:)(47, a1, a2);
  if (v8)
  {
    v46 = a1;
    v47 = a2;
    MEMORY[0x1EEE9AC00](v7);
    v40 = &v46;
    v41 = 32;
    v9 = a3 & 1;
    v42 = v9;
    result = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.addingPercentEncoding(forURLComponent:skipAlreadyEncoded:)specialized partial apply, v39, a1, a2);
    if (v11)
    {
      return result;
    }

    v12 = a1;
    v13 = a2;
    v14 = 32;
    return _sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9component18skipAlreadyEncodedSSqd___AA15URLComponentSetACLLVSbtSlRd__s5UInt8V7ElementRtd__lFSS_SS8UTF8ViewVTt2g5(v12, v13, v14, v9);
  }

  v15 = v7;
  if (v7 < 0x4000)
  {
    v46 = a1;
    v47 = a2;
    MEMORY[0x1EEE9AC00](v7);
    v40 = &v46;
    v41 = 16;
    v9 = a3 & 1;
    v42 = v9;
    result = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.addingPercentEncoding(forURLComponent:skipAlreadyEncoded:)specialized partial apply, v39, a1, a2);
    if (v16)
    {
      return result;
    }

    v12 = a1;
    v13 = a2;
    v14 = 16;
    return _sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9component18skipAlreadyEncodedSSqd___AA15URLComponentSetACLLVSbtSlRd__s5UInt8V7ElementRtd__lFSS_SS8UTF8ViewVTt2g5(v12, v13, v14, v9);
  }

  v17 = String.subscript.getter();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v46 = v17;
  v47 = v18;
  v48 = v20;
  v49 = v22;
  MEMORY[0x1EEE9AC00](v17);
  v40 = &v46;
  v41 = 32;
  v45 = a3 & 1;
  v42 = a3 & 1;

  v43 = v19;
  v44 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SS_Tg5(closure #1 in StringProtocol.addingPercentEncoding(forURLComponent:skipAlreadyEncoded:)specialized partial apply, v39, v17, v19, v21, v23);
  v25 = v24;

  if (v25)
  {

    v26 = v44;
  }

  else
  {

    v26 = _sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9component18skipAlreadyEncodedSSqd___AA15URLComponentSetACLLVSbtSlRd__s5UInt8V7ElementRtd__lFSs_Ss8UTF8ViewVTt2g5(v17, v43, v21, v23, 32, v45);
    v25 = v27;
    swift_bridgeObjectRelease_n();
  }

  v28 = specialized Collection.suffix(from:)(v15, a1, a2);
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v46 = v28;
  v47 = v29;
  v48 = v31;
  v49 = v33;
  MEMORY[0x1EEE9AC00](v28);
  v40 = &v46;
  v41 = 16;
  v42 = v45;

  v35 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SS_Tg5(closure #1 in StringProtocol.addingPercentEncoding(forURLComponent:skipAlreadyEncoded:)specialized partial apply, v39, v28, v30, v32, v34);
  v37 = v36;

  if (v37)
  {
  }

  else
  {

    v35 = _sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9component18skipAlreadyEncodedSSqd___AA15URLComponentSetACLLVSbtSlRd__s5UInt8V7ElementRtd__lFSs_Ss8UTF8ViewVTt2g5(v28, v30, v32, v34, 16, a3 & 1);
    v37 = v38;
    swift_bridgeObjectRelease_n();
  }

  v46 = v26;
  v47 = v25;

  MEMORY[0x1865CB0E0](v35, v37);

  return v46;
}

void *specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(void *(*a1)(void *__return_ptr, void *, uint64_t), uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v10[0] = 0;
    v10[1] = 0;
    return v10[0];
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v9[0] = a3;
    v9[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    result = a1(v10, v9, HIBYTE(a4) & 0xF);
    if (v4)
    {
      return result;
    }

    return v10[0];
  }

  if ((a3 & 0x1000000000000000) != 0)
  {
    v6 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v7 = a3 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = _StringObject.sharedUTF8.getter();
  }

  result = a1(v10, v6, v7);
  if (!v4)
  {
    return v10[0];
  }

  return result;
}

unint64_t specialized static RFC3986Parser.parse(filePath:isAbsolute:)(unint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
    result = specialized Collection.first.getter(a1, a2);
    if ((result & 0x100) != 0)
    {
      __break(1u);
    }

    else
    {
      if (result == 47)
      {
        v33[0] = 0x2F2F3A656C6966;
        v33[1] = 0xE700000000000000;
        MEMORY[0x1865CB0E0](a1, a2);
        v3 = 0x2F2F3A656C6966;
        v4 = 0xE700000000000000;
        v8 = 0x2000000000000000;
        v9 = 7;
        v10 = 0x2F3A656C6966;
        v11 = 458756;
        v12 = 262148;
        v13 = 7;
        v14 = 458756;
        v15 = 458756;
        goto LABEL_5;
      }

      __break(1u);
      v12 = MEMORY[0x1865CB180](15, 4, v3, v4);
      v11 = MEMORY[0x1865CB180](15, 7, v3, v4);
      result = MEMORY[0x1865CB180](15, 7, v3, v4);
      if (result >> 14 >= v11 >> 14)
      {
        v14 = result;
        v15 = MEMORY[0x1865CB180](15, 7, v3, v4);
        if ((v3 & 0x800000000000000) != 0)
        {
          v13 = 7;
        }

        else
        {
          v13 = 11;
        }

        v8 = v4 & 0x2000000000000000;
        v9 = HIBYTE(v4) & 0xF;
        v10 = v3 & 0xFFFFFFFFFFFFLL;
LABEL_5:
        if (v8)
        {
          v16 = v9;
        }

        else
        {
          v16 = v10;
        }

        if (4 * v16 < v15 >> 14)
        {
          __break(1u);
          __break(1u);
        }

        else
        {
          v31 = v13 | (v16 << 16);
          v32 = v14;
          v17 = one-time initialization token for fileIDPrefix;

          if (v17 == -1)
          {
LABEL_10:
            v18 = specialized Sequence<>.starts<A>(with:)(static URL.fileIDPrefix, a1, a2);
            v19 = v18;
            LOBYTE(v33[0]) = 37;
            MEMORY[0x1EEE9AC00](v18);
            v30 = v33;
            v20 = specialized Sequence.contains(where:)(closure #1 in BidirectionalCollection<>.lastIndex(of:)specialized partial apply, v29, a1, a2);

            if (v20)
            {
              v21 = 8;
            }

            else
            {
              v21 = 0;
            }

            type metadata accessor for URLParseInfo();
            result = swift_allocObject();
            *(result + 16) = v3;
            *(result + 24) = v4;
            *(result + 32) = 15;
            *(result + 40) = v12;
            *(result + 48) = 0;
            *(result + 56) = 0;
            *(result + 64) = 0;
            *(result + 72) = 1;
            *(result + 80) = 0;
            *(result + 88) = 0;
            *(result + 96) = 1;
            v22 = v31;
            v23 = v32;
            *(result + 104) = v11;
            *(result + 112) = v23;
            *(result + 120) = 0;
            *(result + 128) = 0;
            *(result + 136) = 0;
            *(result + 144) = 1;
            *(result + 152) = v15;
            *(result + 160) = v22;
            *(result + 168) = 0;
            *(result + 176) = 0;
            *(result + 184) = 0;
            *(result + 192) = 1;
            *(result + 200) = 0;
            *(result + 208) = 0;
            *(result + 216) = 1;
            *(result + 217) = 0;
            *(result + 219) = v19 & 1;
            *(result + 220) = v21;
            return result;
          }
        }

        swift_once();
        goto LABEL_10;
      }
    }

    __break(1u);
    return result;
  }

  v24 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v24 = a1;
  }

  v25 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v25 = 11;
  }

  v26 = v25 | (v24 << 16);
  LOBYTE(v33[0]) = 37;
  MEMORY[0x1EEE9AC00](a1);
  v30 = v33;
  if (specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v29, a1, a2))
  {
    v27 = 8;
  }

  else
  {
    v27 = 0;
  }

  type metadata accessor for URLParseInfo();
  v28 = swift_allocObject();
  *(v28 + 16) = a1;
  *(v28 + 24) = a2;
  *(v28 + 32) = 0;
  *(v28 + 40) = 0;
  *(v28 + 48) = 1;
  *(v28 + 56) = 0;
  *(v28 + 64) = 0;
  *(v28 + 72) = 1;
  *(v28 + 80) = 0;
  *(v28 + 88) = 0;
  *(v28 + 96) = 1;
  *(v28 + 104) = 0;
  *(v28 + 112) = 0;
  *(v28 + 120) = 1;
  *(v28 + 128) = 0;
  *(v28 + 136) = 0;
  *(v28 + 144) = 1;
  *(v28 + 152) = 15;
  *(v28 + 160) = v26;
  *(v28 + 168) = 0;
  *(v28 + 176) = 0;
  *(v28 + 184) = 0;
  *(v28 + 192) = 1;
  *(v28 + 200) = 0;
  *(v28 + 208) = 0;
  *(v28 + 216) = 1;
  *(v28 + 217) = 0;
  *(v28 + 219) = 0;
  *(v28 + 220) = v27;

  return v28;
}

uint64_t _SwiftURL.convertingFileReference()()
{
  v1 = v0;
  if ((*(v0 + 48) & 1) == 0)
  {
    if (*(*(v0 + 16) + 48))
    {
      if (!*(v0 + 24))
      {
        goto LABEL_14;
      }

      v2 = *(v0 + 32);
      ObjectType = swift_getObjectType();
      (*(v2 + 136))(ObjectType, v2);
      if (!v4)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v5 = String.subscript.getter();
      MEMORY[0x1865CAE80](v5);
    }

    v6 = String.lowercased()();

    if (one-time initialization token for fileSchemeUTF8 != -1)
    {
      swift_once();
    }

    v7 = specialized Sequence<>.elementsEqual<A>(_:)(static _SwiftURL.fileSchemeUTF8, v6._countAndFlagsBits, v6._object);

    if ((v7 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v8 = *(v0 + 16);
  if (*(v8 + 219) != 1)
  {
LABEL_14:
    swift_unknownObjectRetain();
    return v1;
  }

  v9 = _foundation_swift_nsurl_feature_enabled();
  if (!v9)
  {
    v16 = *(v1 + 64);
    MEMORY[0x1EEE9AC00](v9);
    os_unfair_lock_lock((v16 + 24));
    partial apply for closure #1 in _SwiftURL._nsurl.getter((v16 + 16), &v44);
    os_unfair_lock_unlock((v16 + 24));
    v17 = v44;
    goto LABEL_34;
  }

  v10 = type metadata accessor for _NSSwiftURL();
  v11 = objc_allocWithZone(v10);
  *&v11[OBJC_IVAR____NSSwiftURL_url] = v1;
  v12 = *(v8 + 24);
  v13 = &v11[OBJC_IVAR____NSSwiftURL_string];
  *v13 = *(v8 + 16);
  v13[1] = v12;
  if (*(v8 + 48) == 1)
  {

    v14 = 1;
  }

  else
  {

    String.subscript.getter();

    if (*(v8 + 72) == 1 && *(v8 + 96) == 1 && *(v8 + 120) == 1 && *(v8 + 144) == 1)
    {
      if (*(v8 + 168))
      {
        v18 = MEMORY[0x1865CBC20](0, 0xE000000000000000);
      }

      else
      {
        v18 = String.subscript.getter();
      }

      if ((v18 ^ v19) >= 0x4000)
      {
        v40 = Substring.UTF8View.subscript.getter();

        v14 = v40 == 47;
      }

      else
      {

        v14 = 0;
      }
    }

    else
    {
      v14 = 1;
    }
  }

  v11[OBJC_IVAR____NSSwiftURL_isDecomposable] = v14;
  v20 = URLParseInfo.netLocationRange.getter();
  if (v22)
  {
    v23 = 0;
    v24 = 0;
    v11[OBJC_IVAR____NSSwiftURL_hasNetLocation] = 0;
    if (!v14)
    {
      goto LABEL_33;
    }

LABEL_28:
    if (*(v8 + 168))
    {
      v25 = MEMORY[0x1865CBC20](0, 0xE000000000000000);
    }

    else
    {
      v25 = String.subscript.getter();
    }

    v27 = v25;
    v28 = v26;

    v24 = ((v27 ^ v28) & 0xFFFFFFFFFFFFC000) != 0 || v23;
    goto LABEL_33;
  }

  v23 = ((v20 ^ v21) & 0xFFFFFFFFFFFFC000) != 0;
  v11[OBJC_IVAR____NSSwiftURL_hasNetLocation] = v23;
  if (v14)
  {
    goto LABEL_28;
  }

  v24 = 0;
LABEL_33:
  v11[OBJC_IVAR____NSSwiftURL_hasPath] = v24;
  v41.receiver = v11;
  v41.super_class = v10;
  v17 = objc_msgSendSuper2(&v41, sel_init);
LABEL_34:
  v29 = [v17 filePathURL];

  if (v29)
  {
    if (_foundation_swift_nsurl_feature_enabled())
    {
      type metadata accessor for _NSSwiftURL();
      v30 = swift_dynamicCastClass();
      if (v30)
      {
        v31 = v30;
        type metadata accessor for _BridgedNSSwiftURL();
        *(swift_allocObject() + 16) = v31;
        v32 = v29;
        v1 = _BridgedNSSwiftURL.convertingFileReference()();

        return v1;
      }

      v37 = type metadata accessor for _BridgedURL();
      v38 = objc_allocWithZone(v37);
      *&v38[OBJC_IVAR____TtC10Foundation11_BridgedURL__url] = v29;
      v42.receiver = v38;
      v42.super_class = v37;
      v35 = v29;
      v36 = objc_msgSendSuper2(&v42, sel_init);
    }

    else
    {
      v33 = type metadata accessor for _BridgedURL();
      v34 = objc_allocWithZone(v33);
      *&v34[OBJC_IVAR____TtC10Foundation11_BridgedURL__url] = v29;
      v43.receiver = v34;
      v43.super_class = v33;
      v35 = v29;
      v36 = objc_msgSendSuper2(&v43, sel_init);
    }

    v39 = v36;
    v1 = _BridgedURL.convertingFileReference()();

    return v1;
  }

  result = specialized _SwiftURL.__allocating_init(string:)(0xD00000000000002ALL, 0x8000000181486A80);
  if (result)
  {
    return result;
  }

  __break(1u);
  return result;
}

unint64_t specialized Sequence<>.elementsEqual<A>(_:)(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v6 = 0;
  if ((a3 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v7 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v8 = 4 * v7;
  v9 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v25 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v26 = a3 & 0xFFFFFFFFFFFFFFLL;
  v27 = a1 + 32;
  result = 15;
  while (1)
  {
    v12 = result >> 14;
    if (result >> 14 == v8)
    {
      v13 = 0;
      goto LABEL_24;
    }

    v14 = result & 0xC;
    v15 = result;
    if (v14 == v10)
    {
      v18 = result;
      v15 = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a2, a3);
      result = v18;
    }

    v16 = v15 >> 16;
    if (v15 >> 16 >= v7)
    {
      break;
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      v24 = result;
      v13 = String.UTF8View._foreignSubscript(position:)();
      result = v24;
      if (v14 != v10)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if ((a3 & 0x2000000000000000) != 0)
      {
        v28[0] = a2;
        v28[1] = v26;
        v17 = v28;
      }

      else
      {
        v17 = v25;
        if ((a2 & 0x1000000000000000) == 0)
        {
          v23 = result;
          v17 = _StringObject.sharedUTF8.getter();
          result = v23;
        }
      }

      v13 = *(v17 + v16);
      if (v14 != v10)
      {
LABEL_18:
        if ((a3 & 0x1000000000000000) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_22;
      }
    }

    result = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a2, a3);
    if ((a3 & 0x1000000000000000) == 0)
    {
LABEL_19:
      result = (result & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_24;
    }

LABEL_22:
    if (v7 <= result >> 16)
    {
      goto LABEL_34;
    }

    result = String.UTF8View._foreignIndex(after:)();
LABEL_24:
    v19 = *(a1 + 16);
    v20 = v6 == v19;
    if (v6 == v19)
    {
      v21 = 0;
      v22 = v6;
      if (v12 == v8)
      {
        return v20;
      }
    }

    else
    {
      if (v6 >= v19)
      {
        goto LABEL_33;
      }

      v21 = *(v27 + v6);
      v22 = v6 + 1;
      if (v12 == v8)
      {
        return v20;
      }
    }

    v20 = 0;
    if (v6 != v19)
    {
      v6 = v22;
      if (v21 == v13)
      {
        continue;
      }
    }

    return v20;
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

id protocol witness for _URLProtocol.bridgeToNSURL() in conformance _SwiftURL()
{
  v1 = _foundation_swift_nsurl_feature_enabled();
  if (v1)
  {
    v2 = objc_allocWithZone(type metadata accessor for _NSSwiftURL());

    v4 = specialized _NSSwiftURL.init(url:)(v3);

    return v4;
  }

  else
  {
    v6 = *(v0 + 64);
    MEMORY[0x1EEE9AC00](v1);
    os_unfair_lock_lock((v6 + 24));
    closure #1 in _SwiftURL._nsurl.getterpartial apply((v6 + 16), &v7);
    os_unfair_lock_unlock((v6 + 24));
    return v7;
  }
}

uint64_t storeEnumTagSinglePayload for ICUDateFormatter.AttributePosition(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t _sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA46450LL10utf8Buffer9component18skipAlreadyEncodedSSqd___AA15URLComponentSetACLLVSbtSlRd__s5UInt8V7ElementRtd__lFSs_SRyAJGTt2g5Tm(uint64_t isStackAllocationSafe, uint64_t a2, uint64_t a3, char a4, uint64_t (*a5)(void))
{
  v9 = 3 * a2;
  if ((a2 * 3) >> 64 == (3 * a2) >> 63)
  {
    if (v9 < 0)
    {
      __break(1u);
    }

    v5 = a5;
    v6 = a3;
    v7 = a2;
    v8 = isStackAllocationSafe;
    if (v9 < 1025)
    {
      goto LABEL_4;
    }
  }

  else
  {
    __break(1u);
  }

  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if ((isStackAllocationSafe & 1) == 0)
  {
    v13 = swift_slowAlloc();
    v14 = (v5)(v13, v8, v7, v6, a4 & 1, 37);
    MEMORY[0x1865D2690](v13, -1, -1);
    return v14;
  }

LABEL_4:
  v10 = MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  return (v5)(v10);
}

uint64_t sub_1807A0F0C(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 a4, char a5, unsigned __int8 a6)
{
  v6 = 0;
  if (!a3)
  {
    return static String._fromUTF8Repairing(_:)();
  }

  for (i = 0; i != a3; ++i)
  {
    v9 = (a2 + i);
    v10 = *(a2 + i);
    if (*(a2 + i) > 0x29u)
    {
      if (*(a2 + i) > 0x2Cu)
      {
        if (v10 == 45 || v10 == 46)
        {
          goto LABEL_42;
        }

        if (v10 == 47)
        {
          goto LABEL_26;
        }
      }

      else
      {
        switch(v10)
        {
          case '*':
            goto LABEL_4;
          case '+':
            if ((a4 & 0xF7) == 0)
            {
              goto LABEL_43;
            }

            goto LABEL_5;
          case ',':
            goto LABEL_4;
        }
      }
    }

    else if (*(a2 + i) > 0x26u)
    {
      if (v10 == 39 || v10 == 40 || v10 == 41)
      {
LABEL_4:
        if ((a4 & 0xF6) == 0)
        {
          goto LABEL_43;
        }

        goto LABEL_5;
      }
    }

    else
    {
      if (v10 == 33 || v10 == 36)
      {
        goto LABEL_4;
      }

      if (v10 == 38)
      {
LABEL_12:
        if ((a4 & 0x76) == 0)
        {
          goto LABEL_43;
        }

        goto LABEL_5;
      }
    }

    if ((v10 - 58) > 0xF5u)
    {
      goto LABEL_42;
    }

    if (*(a2 + i) <= 0x3Cu)
    {
      if (v10 != 58)
      {
        if (v10 == 59)
        {
          goto LABEL_4;
        }

LABEL_36:
        if ((v10 - 91) <= 0xE5u)
        {
          if (v10 == 95)
          {
            goto LABEL_40;
          }

          if ((v10 - 123) <= 0xE5u)
          {
            if (v10 != 126)
            {
              goto LABEL_43;
            }

LABEL_40:
            if (a4 < 2u)
            {
              goto LABEL_43;
            }

            goto LABEL_5;
          }
        }

LABEL_42:
        if (!a4)
        {
          goto LABEL_43;
        }

        goto LABEL_5;
      }

      if ((a4 & 0xD2) == 0)
      {
LABEL_43:
        if ((a5 & 1) != 0 && v10 == a6 && i + 1 != a3 && ((*(a2 + i + 1) - 58) > 0xF5u || (v11 = *(a2 + i + 1) - 65, v11 <= 0x25) && ((1 << v11) & 0x3F0000003FLL) != 0) && (v12 = i + 2, i + 2 != a3) && ((*(a2 + v12) - 58) > 0xF5u || (v17 = *(a2 + v12) - 65, v17 <= 0x25) && ((1 << v17) & 0x3F0000003FLL) != 0))
        {
          if (__OFADD__(v6, 2))
          {
            goto LABEL_86;
          }

          if (i > 0x7FFFFFFFFFFFFFFDLL || v6 + 2 < v6)
          {
            goto LABEL_87;
          }

          v18 = v6 + result;
          if (!result)
          {
            v18 = 0;
          }

          if (__OFADD__(i, 3))
          {
            goto LABEL_88;
          }

          if (i + 3 < i)
          {
            goto LABEL_89;
          }

          if (a2)
          {
            v19 = *v9;
            *(v18 + 2) = *(v9 + 2);
            *v18 = v19;
            v8 = __OFADD__(v6, 3);
            v6 += 3;
            if (v8)
            {
              goto LABEL_90;
            }
          }

          i = v12;
        }

        else
        {
          if (__OFADD__(v6, 2))
          {
            goto LABEL_82;
          }

          if (v6 + 2 < v6)
          {
            goto LABEL_83;
          }

          v13 = v10 & 0xF;
          if (v13 >= 7)
          {
            v14 = a789abcdef[v13 - 7];
          }

          else
          {
            v14 = v13 | 0x30;
          }

          v15 = byte_1812DB9F0[v10 >> 4];
          v16 = (v6 + result);
          if (!result)
          {
            v16 = 0;
          }

          *v16 = a6;
          v16[1] = v15;
          v16[2] = v14;
          v8 = __OFADD__(v6, 3);
          v6 += 3;
          if (v8)
          {
            goto LABEL_84;
          }
        }

        continue;
      }
    }

    else
    {
      if (v10 == 61)
      {
        goto LABEL_12;
      }

      if (v10 != 63)
      {
        if (v10 == 64)
        {
LABEL_26:
          if (a4 < 0x10u)
          {
            goto LABEL_43;
          }

          goto LABEL_5;
        }

        goto LABEL_36;
      }

      if (a4 < 0x40u)
      {
        goto LABEL_43;
      }
    }

LABEL_5:
    *(result + v6) = v10;
    v8 = __OFADD__(v6++, 1);
    if (v8)
    {
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }
  }

  if ((v6 & 0x8000000000000000) == 0)
  {
    return static String._fromUTF8Repairing(_:)();
  }

LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
  return result;
}

id closure #1 in _SwiftURL._nsurl.getter@<X0>(void **a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  if (*a1)
  {
    *a3 = v4;
  }

  else
  {
    v7 = a2[2];
    v6 = a2[3];
    if (v6)
    {
      v8 = a2[4];
      ObjectType = swift_getObjectType();
      v6 = (*(v8 + 432))(ObjectType, v8);
    }

    v10 = specialized static _SwiftURL._makeCFURL(from:baseURL:)(v7, v6);

    *a1 = v10;
    *a3 = v10;
    v11 = v10;
    v4 = 0;
  }

  return v4;
}

uint64_t specialized static _SwiftURL._makeCFURL(from:baseURL:)(uint64_t isUniquelyReferenced_nonNull_native, uint64_t a2)
{
  v3 = isUniquelyReferenced_nonNull_native;
  LODWORD(v4) = 212993;
  v6 = *(isUniquelyReferenced_nonNull_native + 16);
  v5 = *(isUniquelyReferenced_nonNull_native + 24);
  if (*(isUniquelyReferenced_nonNull_native + 48))
  {
    LODWORD(v4) = 212992;
    v7 = MEMORY[0x1E69E7CC0];
    if ((*(isUniquelyReferenced_nonNull_native + 72) & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_3;
  }

  v7 = *(isUniquelyReferenced_nonNull_native + 32);
  v8 = *(isUniquelyReferenced_nonNull_native + 40);
  String.subscript.getter();

  if (*(v3 + 72) != 1 || *(v3 + 96) != 1 || *(v3 + 120) != 1 || *(v3 + 144) != 1)
  {
    goto LABEL_16;
  }

  if (*(v3 + 168))
  {
    v9 = MEMORY[0x1865CBC20](0, 0xE000000000000000);
  }

  else
  {
    v9 = String.subscript.getter();
  }

  if ((v9 ^ v10) >= 0x4000)
  {
    v11 = Substring.UTF8View.subscript.getter();

    if (v11 == 47)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  LODWORD(v4) = 196609;
LABEL_16:
  v89 = v6;
  v90 = v5;
  lazy protocol witness table accessor for type String and conformance String();
  v12 = &v89;
  v13 = StringProtocol._toUTF16Offsets(_:)();
  v16 = v15 - v13;
  if (!__OFSUB__(v15, v13))
  {
    v12 = v13;
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v2 = *(v7 + 2);
    v14 = *(v7 + 3);
    v8 = v2 + 1;
    if (v2 >= v14 >> 1)
    {
      goto LABEL_113;
    }

    goto LABEL_18;
  }

  while (2)
  {
    __break(1u);
LABEL_111:
    __break(1u);
    do
    {
      __break(1u);
LABEL_113:
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v8, 1, v7);
LABEL_18:
      *(v7 + 2) = v8;
      v17 = &v7[16 * v2];
      *(v17 + 4) = v12;
      *(v17 + 5) = v16;
      if (*(v3 + 72))
      {
LABEL_3:
        if (*(v3 + 96))
        {
          goto LABEL_30;
        }
      }

      else
      {
LABEL_19:
        v8 = *(v3 + 64);
        v89 = v6;
        v90 = v5;
        lazy protocol witness table accessor for type String and conformance String();
        v12 = &v89;
        v18 = StringProtocol._toUTF16Offsets(_:)();
        v16 = v19 - v18;
        if (__OFSUB__(v19, v18))
        {
          goto LABEL_111;
        }

        v20 = v18;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
        }

        LODWORD(v4) = v4 | 2;
        v2 = *(v7 + 2);
        v21 = *(v7 + 3);
        if (v2 >= v21 >> 1)
        {
          v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v2 + 1, 1, v7);
        }

        *(v7 + 2) = v2 + 1;
        v22 = &v7[16 * v2];
        *(v22 + 4) = v20;
        *(v22 + 5) = v16;
        if (*(v3 + 96))
        {
          goto LABEL_30;
        }
      }

      v8 = *(v3 + 88);
      v89 = v6;
      v90 = v5;
      lazy protocol witness table accessor for type String and conformance String();
      v12 = &v89;
      v23 = StringProtocol._toUTF16Offsets(_:)();
      v16 = v24 - v23;
    }

    while (__OFSUB__(v24, v23));
    v25 = v23;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_115;
    }

    while (1)
    {
      LODWORD(v4) = v4 | 4;
      v27 = *(v7 + 2);
      v26 = *(v7 + 3);
      if (v27 >= v26 >> 1)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v7);
      }

      *(v7 + 2) = v27 + 1;
      v28 = &v7[16 * v27];
      *(v28 + 4) = v25;
      *(v28 + 5) = v16;
LABEL_30:
      v29 = *(v3 + 144);
      if (v29)
      {
        v16 = v4;
      }

      else
      {
        v16 = v4 | 0x10;
      }

      v87 = v6;
      v88 = v5;
      if ((*(v3 + 120) & 1) == 0)
      {
        if (!((*(v3 + 112) ^ *(v3 + 104)) >> 14) && (v16 & 0x16) == 0)
        {
LABEL_41:
          v6 = v87;
          goto LABEL_42;
        }

        v89 = v6;
        v90 = v5;
        lazy protocol witness table accessor for type String and conformance String();
        v30 = &v89;
        v31 = StringProtocol._toUTF16Offsets(_:)();
        v33 = v32 - v31;
        if (__OFSUB__(v32, v31))
        {
          __break(1u);
        }

        else
        {
          v30 = v31;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v16 = v16 | 8;
            v35 = *(v7 + 2);
            v34 = *(v7 + 3);
            if (v35 >= v34 >> 1)
            {
              v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v7);
            }

            *(v7 + 2) = v35 + 1;
            v36 = &v7[16 * v35];
            *(v36 + 4) = v30;
            *(v36 + 5) = v33;
            goto LABEL_41;
          }
        }

        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
        goto LABEL_38;
      }

LABEL_42:
      if (v29)
      {
        break;
      }

      v89 = v6;
      v90 = v5;
      lazy protocol witness table accessor for type String and conformance String();
      v25 = &v89;
      v37 = StringProtocol._toUTF16Offsets(_:)();
      v4 = v38 - v37;
      if (!__OFSUB__(v38, v37))
      {
        v39 = v37;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_117;
        }

        goto LABEL_45;
      }

      __break(1u);
LABEL_115:
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
    }

    while (1)
    {
      v8 = *(v3 + 168);
      if (v8)
      {
        v43 = MEMORY[0x1865CBC20](0, 0xE000000000000000);
      }

      else
      {
        v43 = String.subscript.getter();
      }

      v45 = v43;
      v46 = v44;

      v47 = v88;
      if ((v45 ^ v46) >> 14 || (v48 = URLParseInfo.netLocationRange.getter(), (v50 & 1) == 0) && (v48 ^ v49) >= 0x4000)
      {
        if (v8)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
          }

          v52 = *(v7 + 2);
          v51 = *(v7 + 3);
          v53 = v52 + 1;
          if (v52 >= v51 >> 1)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1, v7);
          }

          v54 = 0;
          v55 = -1;
LABEL_64:
          v16 = v16 | 0x20;
          *(v7 + 2) = v53;
          v59 = &v7[16 * v52];
          *(v59 + 4) = v55;
          *(v59 + 5) = v54;
          v47 = v88;
          goto LABEL_65;
        }

        v89 = v6;
        v90 = v88;
        lazy protocol witness table accessor for type String and conformance String();
        v55 = &v89;
        v56 = StringProtocol._toUTF16Offsets(_:)();
        v54 = v57 - v56;
        if (__OFSUB__(v57, v56))
        {
          __break(1u);
        }

        else
        {
          v55 = v56;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            goto LABEL_62;
          }
        }

        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
LABEL_62:
        v52 = *(v7 + 2);
        v58 = *(v7 + 3);
        v53 = v52 + 1;
        if (v52 >= v58 >> 1)
        {
          v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v58 > 1), v52 + 1, 1, v7);
        }

        goto LABEL_64;
      }

LABEL_65:
      if (*(v3 + 192))
      {
        break;
      }

      v60 = v6;
      v6 = *(v3 + 176);
      v89 = v60;
      v90 = v47;
      lazy protocol witness table accessor for type String and conformance String();
      v39 = &v89;
      v61 = StringProtocol._toUTF16Offsets(_:)();
      v4 = v62 - v61;
      if (!__OFSUB__(v62, v61))
      {
        v63 = v61;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_119;
        }

        goto LABEL_68;
      }

      __break(1u);
LABEL_117:
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
LABEL_45:
      v41 = *(v7 + 2);
      v40 = *(v7 + 3);
      if (v41 >= v40 >> 1)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1, v7);
      }

      *(v7 + 2) = v41 + 1;
      v42 = &v7[16 * v41];
      *(v42 + 4) = v39;
      *(v42 + 5) = v4;
    }

    while (1)
    {
      if (*(v3 + 216))
      {
        goto LABEL_78;
      }

      v89 = v6;
      v90 = v47;
      lazy protocol witness table accessor for type String and conformance String();
      v63 = &v89;
      v67 = StringProtocol._toUTF16Offsets(_:)();
      v4 = v68 - v67;
      if (!__OFSUB__(v68, v67))
      {
        break;
      }

      __break(1u);
LABEL_119:
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
LABEL_68:
      v6 = v87;
      v16 = v16 | 0x80;
      v65 = *(v7 + 2);
      v64 = *(v7 + 3);
      if (v65 >= v64 >> 1)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v64 > 1), v65 + 1, 1, v7);
      }

      *(v7 + 2) = v65 + 1;
      v66 = &v7[16 * v65];
      *(v66 + 4) = v63;
      *(v66 + 5) = v4;
      v47 = v88;
    }

    v69 = v67;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
    }

    v16 = v16 | 0x100;
    v71 = *(v7 + 2);
    v70 = *(v7 + 3);
    if (v71 >= v70 >> 1)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v70 > 1), v71 + 1, 1, v7);
    }

    *(v7 + 2) = v71 + 1;
    v72 = &v7[16 * v71];
    *(v72 + 4) = v69;
    *(v72 + 5) = v4;
LABEL_78:
    if (v8)
    {
      v73 = MEMORY[0x1865CBC20](0, 0xE000000000000000);
    }

    else
    {
      v73 = String.subscript.getter();
    }

    v6 = v75;
    v12 = v76;
    if (!((v73 ^ v74) >> 14))
    {
      if ((*(v3 + 217) & ((v16 & 0x400) == 0)) != 0)
      {
        LODWORD(v16) = v16 | 0x400;
      }

      v2 = v87;
      v5 = v88;
LABEL_95:
      if (*(v3 + 219))
      {
        v16 = v16 | 0x2000;
      }

      else
      {
        v16 = v16;
      }

      if (v8)
      {
        v80 = MEMORY[0x1865CBC20](0, 0xE000000000000000);
      }

      else
      {
        v80 = String.subscript.getter();
      }

      v84 = specialized Sequence<>.contains(_:)(37, v80, v81, v82, v83);

      if (v84)
      {
        v3 = v16;
      }

      else
      {
        v3 = v16 | 0x8000;
      }

      goto LABEL_104;
    }

    Substring.UTF8View.index(before:)();
    v77 = Substring.UTF8View.subscript.getter();
    if (*(v3 + 217) != 1 || (v16 & 0x400) != 0)
    {
      v78 = v77;
    }

    else
    {
      v78 = v77;
      v16 = v16 | 0x400;
    }

    v2 = v87;
    v5 = v88;
    if (v78 != 47)
    {
      goto LABEL_95;
    }

    if ((v16 & 0x800) != 0)
    {
      if (*(v3 + 219))
      {
        v3 = v16 | 0x2000;
      }

      else
      {
        v3 = v16;
      }
    }

    else
    {
      if ((((v16 & 0x2000) == 0) & *(v3 + 219)) != 0)
      {
        v79 = 10240;
      }

      else
      {
        v79 = 2048;
      }

      v3 = v79 | v16;
    }

LABEL_104:
    v4 = *(v7 + 2);
    String._bridgeToObjectiveCImpl()();
    if (v4 > 0xFF)
    {
      __break(1u);
      continue;
    }

    break;
  }

  v85 = _CFURLCreateWithRangesAndFlags();

  swift_unknownObjectRelease();
  return v85;
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, uint64_t a2, uint64_t a3, char *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySo7CFRangeaGMd, &_ss23_ContiguousArrayStorageCySo7CFRangeaGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10Foundation9BPlistMapC5ValueOGMd, &_ss23_ContiguousArrayStorageCy10Foundation9BPlistMapC5ValueOGMR, &type metadata for BPlistMap.Value);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10Foundation11XMLPlistMapC5ValueOGMd, &_ss23_ContiguousArrayStorageCy10Foundation11XMLPlistMapC5ValueOGMR, &type metadata for XMLPlistMap.Value);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCys7UnicodeO6ScalarVGMd, &_ss23_ContiguousArrayStorageCys7UnicodeO6ScalarVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySo16UDateFormatFieldVGMd, &_ss23_ContiguousArrayStorageCySo16UDateFormatFieldVGMR);
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
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
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
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
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
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
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
      v14 = v13 - 29;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 2);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
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

uint64_t _SwiftURL.__deallocating_deinit()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t _SwiftURL.ResourceInfo.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t specialized Collection<>.firstIndex(of:)(char a1, unint64_t a2, unint64_t a3)
{
  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    return 0;
  }

  v7 = 4 * v3;
  v8 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v8) = 1;
  }

  v9 = 4 << v8;
  v10 = a3 & 0xFFFFFFFFFFFFFFLL;
  v11 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
  result = 15;
  while (1)
  {
    v13 = result & 0xC;
    v14 = result;
    if (v13 == v9)
    {
      v18 = result;
      v14 = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a2, a3);
      result = v18;
    }

    v15 = v14 >> 16;
    if (v14 >> 16 >= v3)
    {
      break;
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      v19 = result;
      v17 = String.UTF8View._foreignSubscript(position:)();
      result = v19;
    }

    else
    {
      if ((a3 & 0x2000000000000000) != 0)
      {
        v21[0] = a2;
        v21[1] = v10;
        v16 = v21;
      }

      else
      {
        v16 = v11;
        if ((a2 & 0x1000000000000000) == 0)
        {
          v20 = result;
          v16 = _StringObject.sharedUTF8.getter();
          result = v20;
        }
      }

      v17 = *(v16 + v15);
    }

    if (v17 == a1)
    {
      return result;
    }

    if (v13 == v9)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a2, a3);
      if ((a3 & 0x1000000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_21:
      if (v3 <= result >> 16)
      {
        goto LABEL_31;
      }

      result = String.UTF8View._foreignIndex(after:)();
      if (v7 == result >> 14)
      {
        return 0;
      }
    }

    else
    {
      if ((a3 & 0x1000000000000000) != 0)
      {
        goto LABEL_21;
      }

LABEL_8:
      result = (result & 0xFFFFFFFFFFFF0000) + 65540;
      if (v7 == result >> 14)
      {
        return 0;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

unint64_t static String.homeDirectoryPath()()
{
  if (!issetugid() && getenv("CFFIXED_USER_HOME"))
  {
    v3 = String.init(cString:)();
    v4 = v11;
    if ((specialized Collection.first.getter(v3, v11) & 0x1FF) != 0x7E)
    {
      goto LABEL_279;
    }

    result = specialized Collection<>.firstIndex(of:)(47, v3, v4);
    if (v12)
    {
      v13 = HIBYTE(v4) & 0xF;
      if ((v4 & 0x2000000000000000) == 0)
      {
        v13 = v3;
      }

      v14 = v13 << 16;
      if ((v4 & 0x1000000000000000) != 0 && (v3 & 0x800000000000000) == 0)
      {
        v9 = v14 | 0xB;
LABEL_22:
        v15 = HIBYTE(v4) & 0xF;
        if ((v4 & 0x2000000000000000) == 0)
        {
          v15 = v3 & 0xFFFFFFFFFFFFLL;
        }

        if (!v15)
        {
          goto LABEL_284;
        }

        result = String.UTF8View._foreignIndex(after:)();
        goto LABEL_78;
      }

      v9 = v14 | 7;
      if ((v4 & 0x1000000000000000) != 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v9 = result;
      if ((v4 & 0x1000000000000000) != 0)
      {
        goto LABEL_22;
      }
    }

    result = 65540;
LABEL_78:
    if (v9 >> 14 == result >> 14)
    {
      goto LABEL_44;
    }

    if (v9 >> 14 >= result >> 14)
    {
      v42 = String.subscript.getter();
      v43 = MEMORY[0x1865CAE80](v42);
      v45 = v44;

      if (!issetugid() && getenv("CFFIXED_USER_HOME"))
      {

        v46 = String.init(cString:)();
        v48 = v66;
        if ((specialized Collection.first.getter(v46, v66) & 0x1FF) != 0x7E)
        {
          goto LABEL_277;
        }

        result = specialized Collection<>.firstIndex(of:)(47, v46, v48);
        if (v67)
        {
          v68 = HIBYTE(v48) & 0xF;
          if ((v48 & 0x2000000000000000) == 0)
          {
            v68 = v46;
          }

          v69 = v68 << 16;
          if ((v48 & 0x1000000000000000) != 0 && (v46 & 0x800000000000000) == 0)
          {
            v52 = v69 | 0xB;
            goto LABEL_119;
          }

          v104 = v48 & 0x1000000000000000;
          v52 = v69 | 7;
        }

        else
        {
          v52 = result;
          v104 = v48 & 0x1000000000000000;
        }

        if (!v104)
        {
          result = 65540;
LABEL_208:
          if (v52 >> 14 == result >> 14)
          {
            goto LABEL_209;
          }

          if (v52 >> 14 >= result >> 14)
          {
            v139 = String.subscript.getter();
            v140 = MEMORY[0x1865CAE80](v139);
            v102 = v141;

            if (!issetugid())
            {
              v152 = String.utf8CString.getter();
              v153 = getenv((v152 + 32));

              if (v153)
              {
                v125 = String.init(cString:)();
                v127 = v154;

                if ((specialized Collection.first.getter(v125, v127) & 0x1FF) != 0x7E)
                {
                  goto LABEL_274;
                }

                result = specialized Collection<>.firstIndex(of:)(47, v125, v127);
                if (v155)
                {
                  v156 = HIBYTE(v127) & 0xF;
                  if ((v127 & 0x2000000000000000) == 0)
                  {
                    v156 = v125;
                  }

                  v157 = v156 << 16;
                  if ((v127 & 0x1000000000000000) != 0 && (v125 & 0x800000000000000) == 0)
                  {
                    v131 = v157 | 0xB;
                    goto LABEL_233;
                  }

                  v170 = v127 & 0x1000000000000000;
                  v131 = v157 | 7;
LABEL_266:
                  if (!v170)
                  {
                    result = 65540;
LABEL_268:
                    if (v131 >> 14 == result >> 14)
                    {
                      goto LABEL_269;
                    }

                    if (v131 >> 14 >= result >> 14)
                    {
LABEL_271:
                      v177 = v131;
                      v171 = String.subscript.getter();
                      v179 = MEMORY[0x1865CAE80](v171);
                      v173 = v172;

                      static String.homeDirectoryPath(forUser:)(v179, v173);
                      v175 = v174;

                      if (v175)
                      {
                        v131 = v177;
                        goto LABEL_273;
                      }

LABEL_274:
                      String._standardizingPath.getter();
                      goto LABEL_275;
                    }

                    goto LABEL_301;
                  }

LABEL_233:
                  v158 = HIBYTE(v127) & 0xF;
                  if ((v127 & 0x2000000000000000) == 0)
                  {
                    v158 = v125 & 0xFFFFFFFFFFFFLL;
                  }

                  if (!v158)
                  {
                    goto LABEL_302;
                  }

                  result = String.UTF8View._foreignIndex(after:)();
                  goto LABEL_268;
                }

LABEL_264:
                v131 = result;
                v170 = v127 & 0x1000000000000000;
                goto LABEL_266;
              }
            }

            v103 = v140;
            goto LABEL_213;
          }

          goto LABEL_293;
        }

LABEL_119:
        v70 = HIBYTE(v48) & 0xF;
        if ((v48 & 0x2000000000000000) == 0)
        {
          v70 = v46 & 0xFFFFFFFFFFFFLL;
        }

        if (!v70)
        {
          goto LABEL_296;
        }

        result = String.UTF8View._foreignIndex(after:)();
        goto LABEL_208;
      }

      v46 = specialized static Platform.homeDirectory(forUserName:)(v43, v45);
      v48 = v47;

      if (v48)
      {
        if ((specialized Collection.first.getter(v46, v48) & 0x1FF) != 0x7E)
        {
          goto LABEL_277;
        }

        result = specialized Collection<>.firstIndex(of:)(47, v46, v48);
        if (v49)
        {
          v50 = HIBYTE(v48) & 0xF;
          if ((v48 & 0x2000000000000000) == 0)
          {
            v50 = v46;
          }

          v51 = v50 << 16;
          if ((v48 & 0x1000000000000000) != 0 && (v46 & 0x800000000000000) == 0)
          {
            v52 = v51 | 0xB;
            goto LABEL_90;
          }

          v85 = v48 & 0x1000000000000000;
          v52 = v51 | 7;
        }

        else
        {
          v52 = result;
          v85 = v48 & 0x1000000000000000;
        }

        if (!v85)
        {
          result = 65540;
LABEL_165:
          if (v52 >> 14 == result >> 14)
          {
LABEL_209:
            static String.homeDirectoryPath()();
LABEL_276:
            specialized Collection.suffix(from:)(v52, v46, v48);

            lazy protocol witness table accessor for type Substring and conformance Substring();
            String.append<A>(contentsOf:)();

            goto LABEL_277;
          }

          if (v52 >> 14 >= result >> 14)
          {
            v99 = String.subscript.getter();
            v100 = MEMORY[0x1865CAE80](v99);
            v102 = v101;

            if (issetugid() || (v123 = String.utf8CString.getter(), v124 = getenv((v123 + 32)), , !v124))
            {
              v103 = v100;
LABEL_213:
              v142 = specialized static Platform.homeDirectory(forUserName:)(v103, v102);
              v144 = v143;

              if (v144)
              {
                String._expandingTildeInPath.getter(v142, v144);

                String._standardizingPath.getter();
LABEL_275:

                goto LABEL_276;
              }

LABEL_277:
              String._standardizingPath.getter();

              goto LABEL_278;
            }

            v125 = String.init(cString:)();
            v127 = v126;

            if ((specialized Collection.first.getter(v125, v127) & 0x1FF) != 0x7E)
            {
              goto LABEL_274;
            }

            result = specialized Collection<>.firstIndex(of:)(47, v125, v127);
            if (v128)
            {
              v129 = HIBYTE(v127) & 0xF;
              if ((v127 & 0x2000000000000000) == 0)
              {
                v129 = v125;
              }

              v130 = v129 << 16;
              if ((v127 & 0x1000000000000000) != 0 && (v125 & 0x800000000000000) == 0)
              {
                v131 = v130 | 0xB;
                goto LABEL_199;
              }

              v164 = v127 & 0x1000000000000000;
              v131 = v130 | 7;
            }

            else
            {
              v131 = result;
              v164 = v127 & 0x1000000000000000;
            }

            if (!v164)
            {
              result = 65540;
              goto LABEL_261;
            }

LABEL_199:
            v132 = HIBYTE(v127) & 0xF;
            if ((v127 & 0x2000000000000000) == 0)
            {
              v132 = v125 & 0xFFFFFFFFFFFFLL;
            }

            if (!v132)
            {
              goto LABEL_300;
            }

            result = String.UTF8View._foreignIndex(after:)();
LABEL_261:
            if (v131 >> 14 == result >> 14)
            {
LABEL_269:
              static String.homeDirectoryPath()();
LABEL_273:
              specialized Collection.suffix(from:)(v131, v125, v127);

              lazy protocol witness table accessor for type Substring and conformance Substring();
              String.append<A>(contentsOf:)();

              goto LABEL_274;
            }

            if (v131 >> 14 >= result >> 14)
            {
              goto LABEL_271;
            }

            __break(1u);
            goto LABEL_264;
          }

          goto LABEL_289;
        }

LABEL_90:
        v53 = HIBYTE(v48) & 0xF;
        if ((v48 & 0x2000000000000000) == 0)
        {
          v53 = v46 & 0xFFFFFFFFFFFFLL;
        }

        if (!v53)
        {
          goto LABEL_292;
        }

        result = String.UTF8View._foreignIndex(after:)();
        goto LABEL_165;
      }

LABEL_279:
      v21 = String._standardizingPath.getter();

      return v21;
    }

    goto LABEL_282;
  }

  v0 = specialized static Platform.getUGIDs(allowEffectiveRootUID:)(0);
  v1 = specialized static Platform.homeDirectory(forUID:)(v0);
  if (!v2)
  {
    if (!getenv("HOME"))
    {
      return 0x706D652F7261762FLL;
    }

    v3 = String.init(cString:)();
    v4 = v16;
    if ((specialized Collection.first.getter(v3, v16) & 0x1FF) != 0x7E)
    {
      goto LABEL_279;
    }

    result = specialized Collection<>.firstIndex(of:)(47, v3, v4);
    if (v17)
    {
      v18 = HIBYTE(v4) & 0xF;
      if ((v4 & 0x2000000000000000) == 0)
      {
        v18 = v3;
      }

      v19 = v18 << 16;
      if ((v4 & 0x1000000000000000) != 0 && (v3 & 0x800000000000000) == 0)
      {
        v9 = v19 | 0xB;
LABEL_34:
        v20 = HIBYTE(v4) & 0xF;
        if ((v4 & 0x2000000000000000) == 0)
        {
          v20 = v3 & 0xFFFFFFFFFFFFLL;
        }

        if (!v20)
        {
          goto LABEL_285;
        }

        result = String.UTF8View._foreignIndex(after:)();
LABEL_96:
        if (v9 >> 14 == result >> 14)
        {
          goto LABEL_44;
        }

        if (v9 >> 14 < result >> 14)
        {
          goto LABEL_283;
        }

        v54 = String.subscript.getter();
        v55 = MEMORY[0x1865CAE80](v54);
        v57 = v56;

        if (!issetugid() && getenv("CFFIXED_USER_HOME"))
        {

          v58 = String.init(cString:)();
          v60 = v71;
          if ((specialized Collection.first.getter(v58, v71) & 0x1FF) != 0x7E)
          {
            goto LABEL_277;
          }

          result = specialized Collection<>.firstIndex(of:)(47, v58, v60);
          if (v72)
          {
            v73 = HIBYTE(v60) & 0xF;
            if ((v60 & 0x2000000000000000) == 0)
            {
              v73 = v58;
            }

            v74 = v73 << 16;
            if ((v60 & 0x1000000000000000) != 0 && (v58 & 0x800000000000000) == 0)
            {
              v64 = v74 | 0xB;
              goto LABEL_131;
            }

            v112 = v60 & 0x1000000000000000;
            v64 = v74 | 7;
          }

          else
          {
            v64 = result;
            v112 = v60 & 0x1000000000000000;
          }

          if (!v112)
          {
            result = 65540;
LABEL_218:
            if (v64 >> 14 == result >> 14)
            {
              goto LABEL_219;
            }

            if (v64 >> 14 < result >> 14)
            {
LABEL_295:
              __break(1u);
LABEL_296:
              __break(1u);
LABEL_297:
              __break(1u);
              goto LABEL_298;
            }

            v145 = String.subscript.getter();
            v146 = MEMORY[0x1865CAE80](v145);
            v148 = v147;

            if (!issetugid())
            {
              v159 = String.utf8CString.getter();
              v160 = getenv((v159 + 32));

              if (v160)
              {
                v161 = String.init(cString:)();
                v137 = v162;

                v138 = v161;
                goto LABEL_239;
              }
            }

            v149 = specialized static Platform.homeDirectory(forUserName:)(v146, v148);
            v151 = v150;

            if (!v151)
            {
              goto LABEL_277;
            }

            String._expandingTildeInPath.getter(v149, v151);

            goto LABEL_224;
          }

LABEL_131:
          v75 = HIBYTE(v60) & 0xF;
          if ((v60 & 0x2000000000000000) == 0)
          {
            v75 = v58 & 0xFFFFFFFFFFFFLL;
          }

          if (!v75)
          {
            goto LABEL_297;
          }

          result = String.UTF8View._foreignIndex(after:)();
          goto LABEL_218;
        }

        v58 = specialized static Platform.homeDirectory(forUserName:)(v55, v57);
        v60 = v59;

        if (!v60)
        {
          goto LABEL_279;
        }

        if ((specialized Collection.first.getter(v58, v60) & 0x1FF) != 0x7E)
        {
          goto LABEL_277;
        }

        result = specialized Collection<>.firstIndex(of:)(47, v58, v60);
        if (v61)
        {
          v62 = HIBYTE(v60) & 0xF;
          if ((v60 & 0x2000000000000000) == 0)
          {
            v62 = v58;
          }

          v63 = v62 << 16;
          if ((v60 & 0x1000000000000000) != 0 && (v58 & 0x800000000000000) == 0)
          {
            v64 = v63 | 0xB;
            goto LABEL_107;
          }

          v86 = v60 & 0x1000000000000000;
          v64 = v63 | 7;
        }

        else
        {
          v64 = result;
          v86 = v60 & 0x1000000000000000;
        }

        if (!v86)
        {
          result = 65540;
LABEL_173:
          if (v64 >> 14 == result >> 14)
          {
LABEL_219:
            static String.homeDirectoryPath()();
LABEL_241:
            specialized Collection.suffix(from:)(v64, v58, v60);

            lazy protocol witness table accessor for type Substring and conformance Substring();
            String.append<A>(contentsOf:)();

            goto LABEL_277;
          }

          if (v64 >> 14 < result >> 14)
          {
LABEL_290:
            __break(1u);
LABEL_291:
            __break(1u);
LABEL_292:
            __break(1u);
LABEL_293:
            __break(1u);
LABEL_294:
            __break(1u);
            goto LABEL_295;
          }

          v105 = String.subscript.getter();
          v106 = MEMORY[0x1865CAE80](v105);
          v108 = v107;

          if (!issetugid())
          {
            v133 = String.utf8CString.getter();
            v134 = getenv((v133 + 32));

            if (v134)
            {
              v135 = String.init(cString:)();
              v137 = v136;

              v138 = v135;
LABEL_239:
              String._expandingTildeInPath.getter(v138, v137);

              String._standardizingPath.getter();
              goto LABEL_240;
            }
          }

          v109 = specialized static Platform.homeDirectory(forUserName:)(v106, v108);
          v111 = v110;

          if (!v111)
          {
            goto LABEL_277;
          }

          String._expandingTildeInPath.getter(v109, v111);

LABEL_224:
          String._standardizingPath.getter();
LABEL_240:

          goto LABEL_241;
        }

LABEL_107:
        v65 = HIBYTE(v60) & 0xF;
        if ((v60 & 0x2000000000000000) == 0)
        {
          v65 = v58 & 0xFFFFFFFFFFFFLL;
        }

        if (!v65)
        {
          goto LABEL_294;
        }

        result = String.UTF8View._foreignIndex(after:)();
        goto LABEL_173;
      }

      v9 = v19 | 7;
      if ((v4 & 0x1000000000000000) != 0)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v9 = result;
      if ((v4 & 0x1000000000000000) != 0)
      {
        goto LABEL_34;
      }
    }

    result = 65540;
    goto LABEL_96;
  }

  v3 = v1;
  v4 = v2;
  if ((specialized Collection.first.getter(v1, v2) & 0x1FF) != 0x7E)
  {
    goto LABEL_279;
  }

  result = specialized Collection<>.firstIndex(of:)(47, v3, v4);
  if ((v6 & 1) == 0)
  {
    v9 = result;
    if ((v4 & 0x1000000000000000) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_42;
  }

  v7 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v7 = v3;
  }

  v8 = v7 << 16;
  if ((v4 & 0x1000000000000000) == 0 || (v3 & 0x800000000000000) != 0)
  {
    v9 = v8 | 7;
    if ((v4 & 0x1000000000000000) != 0)
    {
      goto LABEL_10;
    }

LABEL_42:
    result = 65540;
    goto LABEL_43;
  }

  v9 = v8 | 0xB;
LABEL_10:
  v10 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v10 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {
    goto LABEL_281;
  }

  result = String.UTF8View._foreignIndex(after:)();
LABEL_43:
  if (v9 >> 14 == result >> 14)
  {
LABEL_44:
    static String.homeDirectoryPath()();
LABEL_278:
    specialized Collection.suffix(from:)(v9, v3, v4);

    lazy protocol witness table accessor for type Substring and conformance Substring();
    String.append<A>(contentsOf:)();

    goto LABEL_279;
  }

  if (v9 >> 14 < result >> 14)
  {
    __break(1u);
LABEL_281:
    __break(1u);
LABEL_282:
    __break(1u);
LABEL_283:
    __break(1u);
LABEL_284:
    __break(1u);
LABEL_285:
    __break(1u);
    goto LABEL_286;
  }

  v22 = String.subscript.getter();
  v23 = MEMORY[0x1865CAE80](v22);
  v25 = v24;

  if (issetugid() || !getenv("CFFIXED_USER_HOME"))
  {
    v26 = specialized static Platform.homeDirectory(forUserName:)(v23, v25);
    v28 = v27;

    if (!v28)
    {
      goto LABEL_279;
    }

    if ((specialized Collection.first.getter(v26, v28) & 0x1FF) != 0x7E)
    {
      goto LABEL_277;
    }

    result = specialized Collection<>.firstIndex(of:)(47, v26, v28);
    if (v29)
    {
      v30 = HIBYTE(v28) & 0xF;
      if ((v28 & 0x2000000000000000) == 0)
      {
        v30 = v26;
      }

      v31 = v30 << 16;
      if ((v28 & 0x1000000000000000) != 0 && (v26 & 0x800000000000000) == 0)
      {
        v32 = v31 | 0xB;
        goto LABEL_56;
      }

      v76 = v28 & 0x1000000000000000;
      v32 = v31 | 7;
    }

    else
    {
      v32 = result;
      v76 = v28 & 0x1000000000000000;
    }

    if (!v76)
    {
      result = 65540;
      goto LABEL_139;
    }

LABEL_56:
    v33 = HIBYTE(v28) & 0xF;
    if ((v28 & 0x2000000000000000) == 0)
    {
      v33 = v26 & 0xFFFFFFFFFFFFLL;
    }

    if (!v33)
    {
      goto LABEL_287;
    }

    result = String.UTF8View._foreignIndex(after:)();
LABEL_139:
    if (v32 >> 14 == result >> 14)
    {
      static String.homeDirectoryPath()();
    }

    else
    {
      if (v32 >> 14 < result >> 14)
      {
LABEL_286:
        __break(1u);
LABEL_287:
        __break(1u);
        goto LABEL_288;
      }

      v77 = String.subscript.getter();
      v78 = MEMORY[0x1865CAE80](v77);
      v80 = v79;

      if (issetugid() || (v87 = String.utf8CString.getter(), v88 = getenv((v87 + 32)), , !v88))
      {
        v81 = specialized static Platform.homeDirectory(forUserName:)(v78, v80);
        v83 = v82;

        if (!v83)
        {
          goto LABEL_277;
        }

        String._expandingTildeInPath.getter(v81, v83);

        String._standardizingPath.getter();
      }

      else
      {
        v89 = String.init(cString:)();
        v91 = v90;

        String._expandingTildeInPath.getter(v89, v91);

        String._standardizingPath.getter();
      }
    }

    specialized Collection.suffix(from:)(v32, v26, v28);

    lazy protocol witness table accessor for type Substring and conformance Substring();
    String.append<A>(contentsOf:)();

    goto LABEL_277;
  }

  v34 = String.init(cString:)();
  v36 = v35;
  if ((specialized Collection.first.getter(v34, v35) & 0x1FF) != 0x7E)
  {
    goto LABEL_277;
  }

  result = specialized Collection<>.firstIndex(of:)(47, v34, v36);
  if (v37)
  {
    v38 = HIBYTE(v36) & 0xF;
    if ((v36 & 0x2000000000000000) == 0)
    {
      v38 = v34;
    }

    v39 = v38 << 16;
    if ((v36 & 0x1000000000000000) != 0 && (v34 & 0x800000000000000) == 0)
    {
      v40 = v39 | 0xB;
      goto LABEL_72;
    }

    v84 = v36 & 0x1000000000000000;
    v40 = v39 | 7;
  }

  else
  {
    v40 = result;
    v84 = v36 & 0x1000000000000000;
  }

  if (!v84)
  {
    result = 65540;
    goto LABEL_156;
  }

LABEL_72:
  v41 = HIBYTE(v36) & 0xF;
  if ((v36 & 0x2000000000000000) == 0)
  {
    v41 = v34 & 0xFFFFFFFFFFFFLL;
  }

  if (!v41)
  {
    goto LABEL_291;
  }

  result = String.UTF8View._foreignIndex(after:)();
LABEL_156:
  if (v40 >> 14 == result >> 14)
  {
    static String.homeDirectoryPath()();
LABEL_256:
    specialized Collection.suffix(from:)(v40, v34, v36);

    lazy protocol witness table accessor for type Substring and conformance Substring();
    String.append<A>(contentsOf:)();

    goto LABEL_277;
  }

  if (v40 >> 14 < result >> 14)
  {
LABEL_288:
    __break(1u);
LABEL_289:
    __break(1u);
    goto LABEL_290;
  }

  v92 = String.subscript.getter();
  v93 = MEMORY[0x1865CAE80](v92);
  v95 = v94;

  if (issetugid() || (v113 = String.utf8CString.getter(), v114 = getenv((v113 + 32)), , !v114))
  {
    v96 = specialized static Platform.homeDirectory(forUserName:)(v93, v95);
    v98 = v97;

    if (!v98)
    {
      goto LABEL_277;
    }

    String._expandingTildeInPath.getter(v96, v98);

    String._standardizingPath.getter();
    goto LABEL_255;
  }

  v115 = String.init(cString:)();
  v117 = v116;

  if ((specialized Collection.first.getter(v115, v117) & 0x1FF) != 0x7E)
  {
    goto LABEL_254;
  }

  result = specialized Collection<>.firstIndex(of:)(47, v115, v117);
  if (v118)
  {
    v119 = HIBYTE(v117) & 0xF;
    if ((v117 & 0x2000000000000000) == 0)
    {
      v119 = v115;
    }

    v120 = v119 << 16;
    if ((v117 & 0x1000000000000000) != 0 && (v115 & 0x800000000000000) == 0)
    {
      v121 = v120 | 0xB;
      goto LABEL_187;
    }

    v163 = v117 & 0x1000000000000000;
    v121 = v120 | 7;
  }

  else
  {
    v121 = result;
    v163 = v117 & 0x1000000000000000;
  }

  if (!v163)
  {
    result = 65540;
    goto LABEL_248;
  }

LABEL_187:
  v122 = HIBYTE(v117) & 0xF;
  if ((v117 & 0x2000000000000000) == 0)
  {
    v122 = v115 & 0xFFFFFFFFFFFFLL;
  }

  if (!v122)
  {
    goto LABEL_299;
  }

  result = String.UTF8View._foreignIndex(after:)();
LABEL_248:
  if (v121 >> 14 == result >> 14)
  {
    static String.homeDirectoryPath()();
LABEL_253:
    specialized Collection.suffix(from:)(v121, v115, v117);

    lazy protocol witness table accessor for type Substring and conformance Substring();
    String.append<A>(contentsOf:)();

    goto LABEL_254;
  }

  if (v121 >> 14 >= result >> 14)
  {
    v176 = v121;
    v165 = String.subscript.getter();
    v178 = MEMORY[0x1865CAE80](v165);
    v167 = v166;

    static String.homeDirectoryPath(forUser:)(v178, v167);
    v169 = v168;

    if (v169)
    {
      v121 = v176;
      goto LABEL_253;
    }

LABEL_254:
    String._standardizingPath.getter();
LABEL_255:

    goto LABEL_256;
  }

LABEL_298:
  __break(1u);
LABEL_299:
  __break(1u);
LABEL_300:
  __break(1u);
LABEL_301:
  __break(1u);
LABEL_302:
  __break(1u);
  return result;
}

char *___foundation_swift_url_feature_enabled_block_invoke()
{
  result = _os_feature_enabled_impl();
  if (result)
  {
    v1 = 1;
  }

  else
  {
    result = getenv("NSSwiftURL");
    v1 = result != 0;
  }

  _MergedGlobals_95 = v1;
  return result;
}

unint64_t specialized BidirectionalCollection.last.getter(unint64_t result, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    v11 = 0;
    return v11 | ((v2 == 0) << 8);
  }

  v4 = (result & 0x800000000000000) >> 59;
  v5 = 4 << v4;
  v6 = 11;
  if (((a2 >> 60) & ((result & 0x800000000000000) == 0)) == 0)
  {
    v6 = 7;
  }

  v7 = v6 | (v2 << 16);
  v8 = v6 & 0xC;
  if ((a2 & 0x1000000000000000) == 0)
  {
    v5 = 8;
  }

  if (v8 == v5)
  {
    v13 = result;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(v7, result, a2);
    if (result < 0x4000)
    {
      __break(1u);
LABEL_25:
      v14 = result;
      v9 = _StringGuts._slowEnsureMatchingEncoding(_:)(v9, result, a2);
      result = v14;
LABEL_13:
      v10 = v9 >> 16;
      if (v9 >> 16 >= v2)
      {
        __break(1u);
      }

      else
      {
        if ((a2 & 0x1000000000000000) != 0)
        {
          v11 = String.UTF8View._foreignSubscript(position:)();
          return v11 | ((v2 == 0) << 8);
        }

        if ((a2 & 0x2000000000000000) != 0)
        {
          v16[0] = result;
          v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
          v11 = *(v16 + v10);
          return v11 | ((v2 == 0) << 8);
        }

        if ((result & 0x1000000000000000) != 0)
        {
          v12 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
LABEL_20:
          v11 = *(v12 + v10);
          return v11 | ((v2 == 0) << 8);
        }
      }

      v12 = _StringObject.sharedUTF8.getter();
      goto LABEL_20;
    }

    v7 = result;
    result = v13;
    if ((a2 & 0x1000000000000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((a2 & 0x1000000000000000) == 0)
  {
LABEL_11:
    v9 = (v7 & 0xFFFFFFFFFFFF0000) - 65532;
    LOBYTE(v4) = 1;
    goto LABEL_12;
  }

  if (v2 >= v7 >> 16)
  {
    v15 = result;
    v9 = String.UTF8View._foreignIndex(before:)();
    result = v15;
LABEL_12:
    if ((v9 & 0xC) != 4 << v4)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

  __break(1u);
  return result;
}

void JSONDecoder.decode<A>(_:from:)(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v108 = *MEMORY[0x1E69E9840];
  v98[2] = a4;
  v98[3] = a5;
  v98[4] = a1;
  v97[4] = partial apply for closure #1 in JSONDecoder.decode<A>(_:from:);
  v97[5] = v98;
  v10 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v10 != 2 || !__OFSUB__(*(a2 + 24), *(a2 + 16)))
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  else if (!v10)
  {
    goto LABEL_9;
  }

  if (__OFSUB__(HIDWORD(a2), a2))
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

LABEL_9:
  MEMORY[0x1EEE9AC00](a1);
  v84 = v11;
  v85 = v12;
  v86 = partial apply for closure #1 in JSONDecoder._decode<A>(_:from:);
  v87 = v97;
  MEMORY[0x1EEE9AC00](v13);
  v83[2] = v14;
  v83[3] = partial apply for closure #1 in static JSONDecoder.withUTF8Representation<A>(of:_:);
  v83[4] = v15;
  Data._Representation.withUnsafeBytes<A>(_:)(partial apply for closure #1 in Data.withBufferView<A>(_:), v83, v16, v17);
  if (!v5)
  {
    return;
  }

  v96 = v5;
  v18 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (!swift_dynamicCast())
  {

    swift_willThrow();
    return;
  }

  v106[0] = v104[0];
  v106[1] = v104[1];
  v106[2] = v104[2];
  v107 = v105;
  isTaggedPointer = _objc_isTaggedPointer(@"NSDebugDescription");
  v20 = @"NSDebugDescription";
  v21 = v20;
  if (!isTaggedPointer)
  {
    goto LABEL_17;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v20);
  switch(TaggedPointerTag)
  {
    case 0:
      goto LABEL_29;
    case 0x16:
      v31 = [(__CFString *)v21 UTF8String];
      if (!v31)
      {
        goto LABEL_82;
      }

      v32 = String.init(utf8String:)(v31);
      if (v33)
      {
        goto LABEL_30;
      }

      __break(1u);
LABEL_29:
      LOWORD(v99[0]) = 0;
      _CFIndirectTaggedPointerStringGetContents();
      v32 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v33)
      {
        [(__CFString *)v21 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v94 = 0;
        v25 = *(&v100[0] + 1);
        v23 = *&v100[0];
        goto LABEL_46;
      }

LABEL_30:
      v23 = v32;
      v25 = v33;

      v94 = 0;
      goto LABEL_46;
    case 2:
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v86 = v21;
      v23 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v25 = v24;
      v94 = 0;

      goto LABEL_46;
  }

LABEL_17:
  LOBYTE(v100[0]) = 0;
  *&v101 = 0;
  LOBYTE(v99[0]) = 0;
  LOBYTE(v95) = 0;
  IsCF = __CFStringIsCF();
  if (!IsCF)
  {
    v28 = v21;
    v29 = String.init(_nativeStorage:)();
    if (v30)
    {
      v23 = v29;
      v25 = v30;

      v94 = 0;
      goto LABEL_46;
    }

    *&v101 = [(__CFString *)v28 length];
    if (v101)
    {
      goto LABEL_35;
    }

LABEL_25:
    v23 = 0;
    v94 = 0;
    v25 = 0xE000000000000000;
    goto LABEL_46;
  }

  v27 = v101;
  if (!v101)
  {

    goto LABEL_25;
  }

  if (v95 != 1)
  {
    if (v99[0])
    {
      if (LOBYTE(v100[0]) == 1)
      {
        MEMORY[0x1EEE9AC00](IsCF);
        v84 = v21;
        v85 = &v101;
        LODWORD(v86) = 1536;
        v87 = v27;
      }

      else
      {
        v38 = [(__CFString *)v21 lengthOfBytesUsingEncoding:4];
        MEMORY[0x1EEE9AC00](v38);
        v84 = v21;
        v85 = &v101;
        LODWORD(v86) = 134217984;
        v87 = v39;
      }

      v34 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v25 = v35;
      v40 = HIBYTE(v35) & 0xF;
      if ((v35 & 0x2000000000000000) == 0)
      {
        v40 = v34 & 0xFFFFFFFFFFFFLL;
      }

      v94 = 0;
      if (v40)
      {
        v23 = v34;

        goto LABEL_46;
      }

LABEL_36:
      v23 = String.init(_cocoaString:)();
      v25 = v36;
      goto LABEL_46;
    }

LABEL_35:
    v94 = 0;
    goto LABEL_36;
  }

  if (v100[0])
  {
    lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
  }

  else
  {
    lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
  }

  v23 = String.init<A>(_immortalCocoaString:count:encoding:)();
  v25 = v37;
  v94 = 0;
LABEL_46:
  v103[0] = v23;
  v103[1] = v25;
  v41 = JSONError.debugDescription.getter();
  v103[5] = MEMORY[0x1E69E6158];
  v103[2] = v41;
  v103[3] = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
  v7 = static _DictionaryStorage.allocate(capacity:)();
  v6 = &v101;
  outlined init with copy of FloatingPointRoundingRule?(v103, &v101, &_sSS_yptMd, &_sSS_yptMR);

  outlined destroy of TermOfAddress?(v103, &_sSS_yptMd, &_sSS_yptMR);
  v43 = *(&v101 + 1);
  v9 = v101;
  v44 = specialized __RawDictionaryStorage.find<A>(_:)(v101, *(&v101 + 1));
  v8 = v45;

  if (v8)
  {
    __break(1u);
    goto LABEL_62;
  }

  v8 = (v7 + 64);
  *(v7 + 64 + ((v44 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v44;
  v46 = (*(v7 + 48) + 16 * v44);
  *v46 = v9;
  v46[1] = v43;
  a1 = outlined init with take of Any(&v102, (*(v7 + 56) + 32 * v44));
  v47 = *(v7 + 16);
  v48 = __OFADD__(v47, 1);
  v49 = v47 + 1;
  if (v48)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  *(v7 + 16) = v49;
  JSONError.sourceLocation.getter();
  v51 = v50;
  LOBYTE(v9) = v52;
  outlined destroy of JSONError(v106);
  if ((v9 & 1) == 0)
  {
    v6 = "as not valid JSON.";
    *(&v102 + 1) = MEMORY[0x1E69E6530];
    *&v101 = v51;
    outlined init with take of Any(&v101, v100);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v95 = v7;
    a1 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001DLL, 0x8000000181481C50);
    v55 = *(v7 + 16);
    v56 = (v54 & 1) == 0;
    v48 = __OFADD__(v55, v56);
    v57 = v55 + v56;
    if (!v48)
    {
      LOBYTE(v9) = v54;
      if (*(v7 + 24) < v57)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v57, isUniquelyReferenced_nonNull_native);
        v58 = v95;
        a1 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001DLL, 0x8000000181481C50);
        if ((v9 & 1) == (v59 & 1))
        {
          goto LABEL_55;
        }

        a1 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        v58 = v7;
        goto LABEL_55;
      }

      goto LABEL_65;
    }

LABEL_64:
    __break(1u);
LABEL_65:
    v89 = a1;
    v68 = static _DictionaryStorage.copy(original:)();
    v58 = v68;
    if (!*(v7 + 16))
    {
LABEL_80:

      a1 = v89;
LABEL_55:
      if (v9)
      {
        v60 = (*(v58 + 56) + 32 * a1);
        __swift_destroy_boxed_opaque_existential_1(v60);
        outlined init with take of Any(v100, v60);
      }

      else
      {
        specialized _NativeDictionary._insert(at:key:value:)(a1, 0xD00000000000001DLL, v6 | 0x8000000000000000, v100, v58);
      }

      goto LABEL_58;
    }

    v69 = (v68 + 64);
    v70 = ((1 << *(v58 + 32)) + 63) >> 6;
    if (v58 != v7 || v69 >= &v8[8 * v70])
    {
      memmove(v69, v8, 8 * v70);
    }

    v71 = 0;
    *(v58 + 16) = *(v7 + 16);
    v72 = 1 << *(v7 + 32);
    v73 = -1;
    if (v72 < 64)
    {
      v73 = ~(-1 << v72);
    }

    v93 = v73 & *(v7 + 64);
    v88 = (v72 + 63) >> 6;
    for (i = v93; v93; i = v93)
    {
      v75 = __clz(__rbit64(i));
      v93 = (i - 1) & i;
LABEL_78:
      v78 = v75 | (v71 << 6);
      v90 = 16 * v78;
      v79 = *(v7 + 56);
      v80 = (*(v7 + 48) + 16 * v78);
      v81 = v80[1];
      v91 = *v80;
      v92 = 32 * v78;
      outlined init with copy of Any(v79 + 32 * v78, v99);
      v82 = (*(v58 + 48) + v90);
      *v82 = v91;
      v82[1] = v81;
      outlined init with take of Any(v99, (*(v58 + 56) + v92));
    }

    v76 = v71;
    while (1)
    {
      v71 = v76 + 1;
      if (__OFADD__(v76, 1))
      {
        break;
      }

      if (v71 >= v88)
      {
        goto LABEL_80;
      }

      v77 = *&v8[8 * v71];
      ++v76;
      if (v77)
      {
        v75 = __clz(__rbit64(v77));
        v93 = (v77 - 1) & v77;
        goto LABEL_78;
      }
    }

    __break(1u);
LABEL_82:
    __break(1u);
    return;
  }

LABEL_58:
  v61 = objc_allocWithZone(NSError);
  v62 = @"NSCocoaErrorDomain";
  v63 = [v61 initWithDomain:v62 code:3840 userInfo:_NativeDictionary.bridged()()];

  swift_unknownObjectRelease();
  v64 = type metadata accessor for DecodingError();
  swift_allocError();
  v66 = v65;
  v67 = v63;
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v64 - 8) + 104))(v66, *MEMORY[0x1E69E6B00], v64);
  swift_willThrow();
}

void closure #1 in JSONDecoder._decode<A>(_:from:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(int64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17CodingUserInfoKeyV3key_yp5valuetMd, &_ss17CodingUserInfoKeyV3key_yp5valuetMR);
  MEMORY[0x1EEE9AC00](v99);
  v98 = v81 - v12;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17CodingUserInfoKeyV_yptMd, &_ss17CodingUserInfoKeyV_yptMR);
  MEMORY[0x1EEE9AC00](v97);
  v96 = v81 - v13;
  v119 = type metadata accessor for CodingUserInfoKey();
  v101 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v106 = v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17CodingUserInfoKeyV3key_s8Sendable_p5valuetMd, &_ss17CodingUserInfoKeyV3key_s8Sendable_p5valuetMR);
  MEMORY[0x1EEE9AC00](v95);
  v94 = v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v93 = v81 - v18;
  v19 = a1 + a2;
  if ((*(*a3 + 224))(v17))
  {
    LOBYTE(v111) = (*(*a3 + 248))() & 1;
    *(&v111 + 1) = a1;
    *&v112 = a2;
    *(&v112 + 1) = a1;
    v113 = v19;
    v114 = MEMORY[0x1E69E7CC0];
    v20 = v105;
    v21 = JSON5Scanner.scan()();
    if (v20)
    {
      v107 = v111;
      v108 = v112;
      v109 = v113;
      v110 = v114;
      outlined destroy of JSON5Scanner(&v107);
      return;
    }

    v86 = v21;
    v107 = v111;
    v108 = v112;
    v109 = v113;
    v110 = v114;
    outlined destroy of JSON5Scanner(&v107);
  }

  else
  {
    LOBYTE(v111) = (*(*a3 + 248))() & 1;
    *(&v111 + 1) = a1;
    *&v112 = a2;
    *(&v112 + 1) = a1;
    v113 = v19;
    v114 = MEMORY[0x1E69E7CC0];
    v22 = v105;
    JSONScanner.scan()();
    if (v22)
    {
      v107 = v111;
      v108 = v112;
      v109 = v113;
      v110 = v114;
      outlined destroy of JSONScanner(&v107);
      return;
    }

    v86 = v23;
    v107 = v111;
    v108 = v112;
    v109 = v113;
    v110 = v114;
    outlined destroy of JSONScanner(&v107);
  }

  v24 = JSONMap.loadValue(at:)(0);
  v84 = v25;
  v85 = v24;
  v83 = v26;
  if (v26 > 0xFDu)
  {
    goto LABEL_49;
  }

  v100 = (*(*a3 + 200))();
  v27 = *(v100 + 16);
  v81[2] = a5;
  v82 = a4;
  v81[0] = 0;
  v81[1] = a6;
  if (v27)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys17CodingUserInfoKeyVypGMd, &_ss18_DictionaryStorageCys17CodingUserInfoKeyVypGMR);
    v28 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v28 = MEMORY[0x1E69E7CC8];
  }

  v29 = v100 + 64;
  v30 = 1 << *(v100 + 32);
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  else
  {
    v31 = -1;
  }

  v32 = v31 & *(v100 + 64);
  v33 = (v30 + 63) >> 6;
  v90 = v101 + 16;
  v105 = v101 + 32;
  v34 = v28 + 64;

  v36 = 0;
  v87 = v29;
  v88 = a3;
  v91 = v33;
  v92 = v28;
  v89 = v28 + 64;
  while (v32)
  {
LABEL_23:
    v39 = __clz(__rbit64(v32)) | (v36 << 6);
    v41 = v100;
    v40 = v101;
    v42 = *(v100 + 48);
    v102 = *(v101 + 72);
    v43 = v93;
    v44 = v119;
    (*(v101 + 16))(v93, v42 + v102 * v39, v119);
    v45 = *(v41 + 56) + 32 * v39;
    v46 = v95;
    outlined init with copy of Any(v45, &v43[*(v95 + 48)]);
    v47 = v43;
    v48 = v94;
    outlined init with take of (key: CodingUserInfoKey, value: Sendable)(v47, v94);
    v49 = *(v46 + 48);
    v50 = *(v99 + 48);
    v103 = v49;
    v104 = v50;
    v51 = *(v40 + 32);
    v52 = v98;
    v51(v98, v48, v44);
    outlined init with take of Any((v48 + v103), &v111);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8Sendable_pMd, &_ss8Sendable_pMR);
    swift_dynamicCast();
    v53 = v96;
    v54 = *(v97 + 48);
    v51(v96, v52, v44);
    outlined init with take of Any(&v52[v104], &v53[v54]);
    v51(v106, v53, v44);
    outlined init with take of Any(&v53[v54], &v111);
    v28 = v92;
    v35 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v55 = -1 << *(v28 + 32);
    v56 = v35 & ~v55;
    v38 = v56 >> 6;
    v34 = v89;
    if (((-1 << v56) & ~*(v89 + 8 * (v56 >> 6))) == 0)
    {
      v57 = 0;
      v58 = (63 - v55) >> 6;
      v33 = v91;
      while (++v38 != v58 || (v57 & 1) == 0)
      {
        v59 = v38 == v58;
        if (v38 == v58)
        {
          v38 = 0;
        }

        v57 |= v59;
        v60 = *(v89 + 8 * v38);
        if (v60 != -1)
        {
          v37 = __clz(__rbit64(~v60)) + (v38 << 6);
          goto LABEL_17;
        }
      }

LABEL_44:
      __break(1u);
LABEL_45:
      v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v36, 1, v35);
      goto LABEL_33;
    }

    v37 = __clz(__rbit64((-1 << v56) & ~*(v89 + 8 * (v56 >> 6)))) | v56 & 0x7FFFFFFFFFFFFFC0;
    v33 = v91;
LABEL_17:
    v32 &= v32 - 1;
    *(v89 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v37;
    v51((*(v28 + 48) + v37 * v102), v106, v119);
    v35 = outlined init with take of Any(&v111, (*(v28 + 56) + 32 * v37));
    ++*(v28 + 16);
    v29 = v87;
    a3 = v88;
  }

  while (1)
  {
    v38 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      __break(1u);
      goto LABEL_44;
    }

    if (v38 >= v33)
    {
      break;
    }

    v32 = *(v29 + 8 * v38);
    ++v36;
    if (v32)
    {
      v36 = v38;
      goto LABEL_23;
    }
  }

  v61 = *(a3 + OBJC_IVAR____TtC10Foundation13__JSONDecoder_options + 80);
  v115 = *(a3 + OBJC_IVAR____TtC10Foundation13__JSONDecoder_options + 64);
  v116 = v61;
  v117 = *(a3 + OBJC_IVAR____TtC10Foundation13__JSONDecoder_options + 96);
  v118 = *(a3 + OBJC_IVAR____TtC10Foundation13__JSONDecoder_options + 112);
  v62 = *(a3 + OBJC_IVAR____TtC10Foundation13__JSONDecoder_options + 16);
  v111 = *(a3 + OBJC_IVAR____TtC10Foundation13__JSONDecoder_options);
  v112 = v62;
  v63 = *(a3 + OBJC_IVAR____TtC10Foundation13__JSONDecoder_options + 48);
  v113 = *(a3 + OBJC_IVAR____TtC10Foundation13__JSONDecoder_options + 32);
  v114 = v63;
  type metadata accessor for JSONDecoderImpl();
  v33 = swift_allocObject();
  outlined init with copy of JSONDecoder._Options(&v111, &v107);
  v64 = v86;

  v65 = v116;
  *(v33 + 104) = v115;
  *(v33 + 120) = v65;
  *(v33 + 136) = v117;
  v66 = v112;
  *(v33 + 40) = v111;
  *(v33 + 56) = v66;
  v67 = v114;
  *(v33 + 72) = v113;
  *(v33 + 160) = 0x8000000000000000;
  *(v33 + 32) = v64;
  *(v33 + 152) = v118;
  *(v33 + 88) = v67;
  v68 = MEMORY[0x1E69E7CC0];
  *(v33 + 16) = MEMORY[0x1E69E7CC0];
  *(v33 + 24) = v28;

  v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, v68);
  *(v33 + 16) = v35;
  v34 = *(v35 + 16);
  v38 = *(v35 + 24);
  v36 = v34 + 1;
  if (v34 >= v38 >> 1)
  {
    goto LABEL_45;
  }

LABEL_33:
  v69 = v82;
  v70 = v81[0];
  v72 = v84;
  v71 = v85;
  v73 = v83;
  *(v35 + 16) = v36;
  v74 = v35 + 24 * v34;
  *(v74 + 32) = v71;
  *(v74 + 40) = v72;
  *(v74 + 48) = v73;
  *(v33 + 16) = v35;
  v69(v33);

  if (v70 || swift_isUniquelyReferenced_nonNull_native() && (swift_isUniquelyReferenced_nonNull_native() & 1) != 0)
  {
    goto LABEL_42;
  }

  v75 = *(*(v33 + 32) + 24);

  os_unfair_lock_lock((v75 + 40));
  if (*(v75 + 32))
  {
LABEL_41:
    os_unfair_lock_unlock((v75 + 40));

LABEL_42:

    return;
  }

  v76 = *(v75 + 24);
  v77 = v76 + 1;
  if (__OFADD__(v76, 1))
  {
    __break(1u);
  }

  else
  {
    v78 = *(v75 + 16);
    v79 = swift_slowAlloc();
    if ((v76 & 0x8000000000000000) == 0)
    {
      v80 = v79;
      memmove(v79, v78, v76);
      v80[v76] = 0;
      if ((v77 & 0x8000000000000000) == 0)
      {
        *(v75 + 16) = v80;
        *(v75 + 24) = v77;
        *(v75 + 32) = v80;
        goto LABEL_41;
      }

      goto LABEL_48;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
}

uint64_t closure #1 in static JSONDecoder.withUTF8Representation<A>(of:_:)(unsigned __int8 *a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(unsigned __int8 *, uint64_t))
{
  if (a3 < 1)
  {
    v11 = 0;
    goto LABEL_5;
  }

  v6 = *a1;
  v7 = a3 == 1;
  if (a3 == 1)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
LABEL_13:
    v14 = 0;
    v15 = 0;
    goto LABEL_21;
  }

  v10 = a1[1];
  if (a3 < 3)
  {
    v8 = 0;
    v9 = 0;
    goto LABEL_13;
  }

  v14 = a1[2];
  if (a3 == 3)
  {
    v8 = 0;
    v15 = 0;
    v9 = 1;
  }

  else
  {
    v8 = a1[3];
    v9 = 1;
    v15 = 1;
    if (!*a1 && !a1[1] && v14 == 254 && v8 == 255)
    {
      v11 = 4;
LABEL_19:
      v16 = 2550137088;
      goto LABEL_43;
    }
  }

LABEL_21:
  v16 = 2617245952;
  v17 = v6 == 254 && v10 == 255;
  v18 = !v17 || a3 == 1;
  v19 = !v18;
  if (v18)
  {
    v20 = 0;
  }

  else
  {
    v20 = v9;
  }

  if (v14)
  {
    v20 = 0;
  }

  v17 = (v15 & v20 & (v8 == 0)) == 0;
  v11 = 2;
  if (v17)
  {
    v16 = 2415919360;
  }

  else
  {
    v11 = 4;
  }

  if (v19)
  {
LABEL_43:
    if (v11 >= a2)
    {
      v21 = a2;
    }

    else
    {
      v21 = v11;
    }

    v22 = _sSS10FoundationE5bytes8encodingSSSgxh_SSAAE8EncodingVtcSTRzs5UInt8V7ElementRtzlufCAA10BufferViewVyAHG_Tt1B5(&a1[v21], a2 - v21, v16);
    if (!v23)
    {
      lazy protocol witness table accessor for type JSONError and conformance JSONError();
      swift_allocError();
      *v27 = 0u;
      *(v27 + 16) = 0u;
      *(v27 + 32) = 0u;
      *(v27 + 48) = 12;
      return swift_willThrow();
    }

    v24 = v23;
    if ((v23 & 0x1000000000000000) != 0)
    {
      v34 = static String._copying(_:)(v22, v23);
      v36 = v35;

      v22 = v34;
      v24 = v36;
    }

    if ((v24 & 0x2000000000000000) != 0)
    {
      v37[0] = v22;
      v37[1] = v24 & 0xFFFFFFFFFFFFFFLL;
      v25 = HIBYTE(v24) & 0xF;
      v26 = v37;
    }

    else
    {
      if ((v22 & 0x1000000000000000) == 0)
      {
        v26 = _StringObject.sharedUTF8.getter();
        if (v26)
        {
          if ((v25 & 0x8000000000000000) == 0)
          {
            goto LABEL_54;
          }

          __break(1u);
        }

        __break(1u);
        goto LABEL_54;
      }

      v25 = v22 & 0xFFFFFFFFFFFFLL;
      v26 = ((v24 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

LABEL_54:
    a4(v26, v25);
  }

  v16 = 2483028224;
  if (a3 != 1 && v6 == 255 && v10 == 254)
  {
    v11 = 2;
    goto LABEL_43;
  }

  if (v6 != 239 || v10 != 187 || a3 == 1)
  {
    v30 = 0;
  }

  else
  {
    v30 = v9;
  }

  if (v30 == 1 && v14 == 191)
  {
    v11 = 3;
    goto LABEL_5;
  }

  if (*a1)
  {
    v31 = 0;
  }

  else
  {
    v31 = v15;
  }

  if (v31 == 1)
  {
    if (a3 == 1)
    {
      v6 = 0;
      v15 = 1;
      goto LABEL_82;
    }

    v33 = v9 ^ 1;
    if (v10)
    {
      v33 = 1;
    }

    if ((v33 & 1) == 0)
    {
      v10 = 0;
      if (!v14)
      {
        if (v8)
        {
          v11 = 0;
          goto LABEL_19;
        }
      }
    }

    if (v9)
    {
      if (!v14 && v10 && v8)
      {
        goto LABEL_110;
      }

      v6 = 0;
      if (v10)
      {
LABEL_95:
        v7 = 0;
        goto LABEL_96;
      }

LABEL_76:
      v32 = v15 ^ 1;
      v10 = 0;
      if (v14)
      {
        v32 = 1;
      }

      if ((v32 & 1) == 0)
      {
        v15 = 1;
        v14 = 0;
        v7 = 0;
        if (!v8 && v6)
        {
          v11 = 0;
          v16 = 2617245952;
          goto LABEL_43;
        }

        goto LABEL_96;
      }

      goto LABEL_95;
    }

    v6 = 0;
  }

  else
  {
    if (a3 == 1 || v10)
    {
LABEL_82:
      if (!v9)
      {
        goto LABEL_106;
      }

LABEL_96:
      v11 = 0;
      if (!v7 && !v10)
      {
        if (v15)
        {
          v11 = 0;
          if (!v8 && v6 && v14)
          {
            goto LABEL_43;
          }
        }
      }

      goto LABEL_5;
    }

    if (v9)
    {
      goto LABEL_76;
    }

    v10 = 0;
  }

  LOBYTE(v7) = 0;
LABEL_106:
  v11 = 0;
  if ((v15 & 1) == 0 && !v7)
  {
    if (!v6 && v10)
    {
LABEL_110:
      v11 = 0;
      v16 = 2415919360;
      goto LABEL_43;
    }

    v11 = 0;
    if (!v10 && v6)
    {
      goto LABEL_43;
    }
  }

LABEL_5:
  if (v11 >= a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = v11;
  }

  return a4(&a1[v12], a2 - v12);
}

uint64_t JSONDecoder.assumesTopLevelDictionary.getter()
{
  v1 = (*(*v0 + 200))();
  if (*(v1 + 16) && (v2 = specialized __RawDictionaryStorage.find<A>(_:)(v0 + OBJC_IVAR____TtC10Foundation13__JSONDecoder_assumesTopLevelDictionaryKey), (v3 & 1) != 0))
  {
    outlined init with copy of Any(*(v1 + 56) + 32 * v2, v6);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8Sendable_pMd, &_ss8Sendable_pMR);
    if (swift_dynamicCast())
    {
      return v5;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t JSONDecoder.userInfo.getter()
{
  v1 = OBJC_IVAR____TtC10Foundation13__JSONDecoder_optionsLock;
  v2 = *(v0 + OBJC_IVAR____TtC10Foundation13__JSONDecoder_optionsLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = *(v0 + OBJC_IVAR____TtC10Foundation13__JSONDecoder_options + 104);
  v4 = *(v0 + v1);

  os_unfair_lock_unlock(v4 + 4);

  return v3;
}

void JSONScanner.scan()()
{
  if (*v0 == 1)
  {
    v1 = *(v0 + 24);
    v2 = *(v0 + 32);
    if (v1 >= v2)
    {
      goto LABEL_12;
    }

    while (1)
    {
      v3 = *v1;
      if (v3 > 0x3F)
      {
        break;
      }

      if (((1 << v3) & 0x100002600) != 0)
      {
        *(v0 + 24) = ++v1;
        if (v1 != v2)
        {
          continue;
        }
      }

      goto LABEL_12;
    }

    if (v3 == 123)
    {
      JSONScanner.scanObject()();
      if (v5)
      {
        return;
      }
    }

    else
    {
LABEL_12:
      JSONScanner.scanObject(withoutBraces:)(1);
      if (v6)
      {
        return;
      }
    }
  }

  else
  {
    JSONScanner.scanValue()();
    if (v4)
    {
      return;
    }
  }

  v7 = *(v0 + 24);
  v8 = *(v0 + 32);
  if (v7 < v8)
  {
    v9 = 0;
    while (1)
    {
      v10 = *(v7 + v9);
      if (v10 > 0x20 || ((1 << v10) & 0x100002600) == 0)
      {
        v25 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v7 + v9, *(v0 + 8), *(v0 + 16));
        v27 = v26;
        v29 = v28;
        lazy protocol witness table accessor for type JSONError and conformance JSONError();
        swift_allocError();
        *v30 = 0xD000000000000015;
        *(v30 + 8) = 0x8000000181481B60;
        *(v30 + 16) = v10;
        *(v30 + 24) = v25;
        *(v30 + 32) = v27;
        *(v30 + 40) = v29;
        *(v30 + 48) = 1;
        swift_willThrow();
        return;
      }

      if (__OFADD__(v9, 1))
      {
        break;
      }

      v12 = v7 + ++v9;
      if (v12 >= v8)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
    goto LABEL_33;
  }

LABEL_22:
  v13 = *(v0 + 48);
  v14 = *(v0 + 8);
  v15 = *(v0 + 16);
  type metadata accessor for JSONMap();
  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyAA0D4ViewVys5UInt8VG6buffer_SVSg10allocationt_GMd, &_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyAA0D4ViewVys5UInt8VG6buffer_SVSg10allocationt_GMR);
  v17 = swift_allocObject();
  *(v17 + 40) = 0;
  v18 = (v17 + 40);
  *(v17 + 16) = v14;
  *(v17 + 24) = v15;
  *(v17 + 32) = 0;
  *(v16 + 24) = v17;

  JSONMap.loadValue(at:)(0);
  if (v19 > 0xFDu)
  {
LABEL_36:
    __break(1u);
    return;
  }

  if ((v19 & 0xE0) == 0x20)
  {

    os_unfair_lock_lock(v18);
    if (!*(v17 + 32))
    {
      v20 = *(v17 + 24);
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v22 = *(v17 + 16);
      v23 = swift_slowAlloc();
      if ((v20 & 0x8000000000000000) != 0)
      {
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v24 = v23;
      memmove(v23, v22, v20);
      v24[v20] = 0;
      if ((v21 & 0x8000000000000000) != 0)
      {
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      *(v17 + 16) = v24;
      *(v17 + 24) = v21;
      *(v17 + 32) = v24;
    }

    os_unfair_lock_unlock(v18);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> JSONScanner.scanObject(withoutBraces:)(Swift::Bool withoutBraces)
{
  v2 = v1;
  v4 = *(v1 + 40);
  *(v1 + 40) = v4 + 1;
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  if (v5 < v6)
  {
    while (1)
    {
      v7 = *v5;
      if (v7 > 0x3F)
      {
        break;
      }

      if (((1 << v7) & 0x100002600) == 0)
      {
        goto LABEL_13;
      }

      *(v1 + 24) = ++v5;
      if (v5 == v6)
      {
        v5 = v6;
        goto LABEL_6;
      }
    }

    if (v7 != 125)
    {
LABEL_13:
      count = 0;
      JSON5Scanner.JSONPartialMapData.resizeIfNecessary(with:)(*(v1 + 8), *(v1 + 16), v5);
      v9 = *(v1 + 48);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_14;
    }

    if (withoutBraces)
    {
      v10 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v5, *(v1 + 8), *(v1 + 16));
      v12 = v11;
      v14 = v13;
      lazy protocol witness table accessor for type JSONError and conformance JSONError();
      swift_allocError();
      *v15 = 0;
      *(v15 + 8) = 0;
      *(v15 + 16) = 125;
      *(v15 + 24) = v10;
      *(v15 + 32) = v12;
      *(v15 + 40) = v14;
      *(v15 + 48) = 1;
      swift_willThrow();
      *(v2 + 40) = v4;
      return;
    }

    v29 = (v5 + 1);
    *(v1 + 24) = v29;
    JSON5Scanner.JSONPartialMapData.resizeIfNecessary(with:)(*(v1 + 8), *(v1 + 16), v29);
    v30 = *(*(v1 + 48) + 16);
    v9 = (v30 + 4);
    if (__OFADD__(v30, 4))
    {
      goto LABEL_37;
    }

LABEL_31:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18121D6C0;
    *(inited + 32) = 5;
    *(inited + 40) = v9;
    *(inited + 48) = xmmword_181237530;
    specialized Array.append<A>(contentsOf:)(inited);
    *(v2 + 40) = v4;
    return;
  }

LABEL_6:
  if (!withoutBraces)
  {
    lazy protocol witness table accessor for type JSONError and conformance JSONError();
    swift_allocError();
    *v16 = 1;
    *(v16 + 8) = 0u;
    *(v16 + 24) = 0u;
    *(v16 + 40) = 0;
    *(v16 + 48) = 12;
    swift_willThrow();
    *(v1 + 40) = v4;
    return;
  }

  JSON5Scanner.JSONPartialMapData.resizeIfNecessary(with:)(*(v1 + 8), *(v1 + 16), v5);
  v8 = *(*(v1 + 48) + 16);
  v9 = (v8 + 4);
  if (!__OFADD__(v8, 4))
  {
    goto LABEL_31;
  }

  __break(1u);
LABEL_33:
  v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
LABEL_14:
  v18 = *(v9 + 2);
  v17 = *(v9 + 3);
  v19 = v18 + 1;
  if (v18 >= v17 >> 1)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v9);
  }

  *(v9 + 2) = v19;
  *&v9[8 * v18 + 32] = 5;
  *(v2 + 48) = v9;
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of JSONScanner.scanObject(withoutBraces:));
  done = 0;
  do
  {
    JSONScanner._scanObjectLoop(withoutBraces:count:done:)(withoutBraces, &count, &done);
    if (v20)
    {
      v21 = count;
      JSON5Scanner.JSONPartialMapData.resizeIfNecessary(with:)(*(v2 + 8), *(v2 + 16), *(v2 + 24));
      v22 = *(v2 + 48);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 2) + 1, 1, v22);
      }

      v26 = *(v22 + 2);
      v27 = *(v22 + 3);
      v28 = v26 + 1;
      if (v26 >= v27 >> 1)
      {
        v32 = v22;
        v33 = *(v22 + 2);
        v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v26 + 1, 1, v32);
        v26 = v33;
        v22 = v34;
      }

      *(v22 + 2) = v28;
      *&v22[8 * v26 + 32] = 7;
      *&v22[8 * v19 + 32] = v28;
      if (!__OFADD__(v18, 2))
      {
        *&v22[8 * v18 + 48] = v21;
        --*(v2 + 40);
        *(v2 + 48) = v22;
        return;
      }

      __break(1u);
      goto LABEL_35;
    }
  }

  while (!done);
  v21 = count;
  JSON5Scanner.JSONPartialMapData.resizeIfNecessary(with:)(*(v2 + 8), *(v2 + 16), *(v2 + 24));
  v22 = *(v2 + 48);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_20;
  }

LABEL_35:
  v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 2) + 1, 1, v22);
LABEL_20:
  v23 = *(v22 + 2);
  v24 = *(v22 + 3);
  v25 = v23 + 1;
  if (v23 >= v24 >> 1)
  {
    v35 = v22;
    v36 = *(v22 + 2);
    v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v23 + 1, 1, v35);
    v23 = v36;
    v22 = v37;
  }

  *(v22 + 2) = v25;
  *&v22[8 * v23 + 32] = 7;
  *&v22[8 * v19 + 32] = v25;
  if (!__OFADD__(v18, 2))
  {
    *&v22[8 * v18 + 48] = v21;
    --*(v2 + 40);
    *(v2 + 48) = v22;
    return;
  }

  __break(1u);
LABEL_37:
  __break(1u);
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

  memcpy((v3 + 8 * v7 + 32), (v6 + 32), 8 * v2);

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

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> JSONScanner.scanValue()()
{
  v1 = v0[3];
  v2 = v0[4];
  if (v1 >= v2)
  {
LABEL_6:
    lazy protocol witness table accessor for type JSONError and conformance JSONError();
    swift_allocError();
    *v4 = 1;
    *(v4 + 8) = 0u;
    *(v4 + 24) = 0u;
    *(v4 + 40) = 0;
    v5 = 12;
LABEL_7:
    *(v4 + 48) = v5;
    swift_willThrow();
    return;
  }

  while (1)
  {
    v3 = *v1;
    if (v3 >= 0x41)
    {
      break;
    }

    if (v3 == 64)
    {
      goto LABEL_25;
    }

    if (((1 << v3) & 0x100002600) == 0)
    {
      break;
    }

    v0[3] = ++v1;
    if (v1 == v2)
    {
      goto LABEL_6;
    }
  }

  if (*v1 <= 0x65u)
  {
    switch(v3)
    {
      case '""':
        JSONScanner.scanString()();
        return;
      case '-':
        goto LABEL_26;
      case '[':
        JSONScanner.scanArray()();
        return;
    }
  }

  else
  {
    if (*v1 <= 0x73u)
    {
      if (v3 != 102)
      {
        if (v3 == 110)
        {
          JSONScanner.scanNull()();
          return;
        }

        goto LABEL_22;
      }

LABEL_20:
      JSONScanner.scanBool()();
      return;
    }

    if (v3 == 116)
    {
      goto LABEL_20;
    }

    if (v3 == 123)
    {
      JSONScanner.scanObject()();
      return;
    }
  }

LABEL_22:
  if ((v3 - 58) >= 0xFFFFFFF6)
  {
LABEL_26:
    JSONScanner.scanNumber()();
    return;
  }

  if (v3 > 0x20 || ((1 << v3) & 0x100002600) == 0)
  {
LABEL_25:
    v6 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v1, v0[1], v0[2]);
    v8 = v7;
    v10 = v9;
    lazy protocol witness table accessor for type JSONError and conformance JSONError();
    swift_allocError();
    *v4 = 0;
    *(v4 + 8) = 0;
    *(v4 + 16) = v3;
    *(v4 + 24) = v6;
    *(v4 + 32) = v8;
    *(v4 + 40) = v10;
    v5 = 1;
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t getEnumTag for LoadedScopeCache.ScopeType(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

Swift::Int __swiftcall JSONMap.offset(after:)(Swift::Int after)
{
  if (after < 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v3 = *(v1 + 16);
  v4 = *(v3 + 16);
  if (v4 <= after)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v5 = v3 + 32;
  v6 = specialized JSONMap.TypeDescriptor.init(rawValue:)(*(v3 + 32 + 8 * after));
  if (v6 > 4)
  {
    if (v6 <= 7)
    {
      if ((v6 - 5) >= 2)
      {
LABEL_17:
        _StringGuts.grow(_:)(68);
        MEMORY[0x1865CB0E0](0xD000000000000041, 0x8000000181482610);
        v8 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x1865CB0E0](v8);

        MEMORY[0x1865CB0E0](41, 0xE100000000000000);
LABEL_19:
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

      if (after + 1 < v4)
      {
        return *(v5 + 8 * (after + 1));
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    if ((v6 - 8) >= 2)
    {
      _StringGuts.grow(_:)(44);

      v9 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1865CB0E0](v9);

      MEMORY[0x1865CB0E0](41, 0xE100000000000000);
      goto LABEL_19;
    }
  }

  else if ((v6 - 2) < 3)
  {
    return after + 1;
  }

  result = after + 3;
  if (__OFADD__(after, 3))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  return result;
}

uint64_t JSONDecoder.dataDecodingStrategy.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = OBJC_IVAR____TtC10Foundation13__JSONDecoder_optionsLock;
  v5 = *(v1 + OBJC_IVAR____TtC10Foundation13__JSONDecoder_optionsLock);

  os_unfair_lock_lock(v5 + 4);

  v6 = v1 + OBJC_IVAR____TtC10Foundation13__JSONDecoder_options;
  v7 = *(v1 + OBJC_IVAR____TtC10Foundation13__JSONDecoder_options + 24);
  v8 = *(v1 + OBJC_IVAR____TtC10Foundation13__JSONDecoder_options + 32);
  *(v6 + 24) = v2;
  *(v6 + 32) = v3;
  sub_1807A5C7C(v7, v8);
  v9 = *(v1 + v4);

  os_unfair_lock_unlock(v9 + 4);
}

unint64_t sub_1807A5C7C(unint64_t result, uint64_t a2)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t LockedState._Buffer.__deallocating_deinit()
{
  (*(*(*(*v0 + class metadata base offset for LockedState._Buffer) - 8) + 8))(&v0[*(*v0 + *MEMORY[0x1E69E6B68] + 16)]);

  return swift_deallocClassInstance();
}

uint64_t outlined copy of _CodingKey?(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return outlined copy of _CodingKey(a1, a2, a3, a4);
  }

  return a1;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
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

uint64_t JSONDecoder.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17CodingUserInfoKeyVSgMd, &_ss17CodingUserInfoKeyVSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v11 - v2;
  CodingUserInfoKey.init(rawValue:)();
  v4 = type metadata accessor for CodingUserInfoKey();
  v5 = *(v4 - 8);
  result = (*(v5 + 48))(v3, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v5 + 32))(v0 + OBJC_IVAR____TtC10Foundation13__JSONDecoder_assumesTopLevelDictionaryKey, v3, v4);
    v7 = v0 + OBJC_IVAR____TtC10Foundation13__JSONDecoder_options;
    *v7 = 0;
    *(v7 + 8) = 0;
    *(v7 + 16) = 2;
    *(v7 + 24) = 1;
    *(v7 + 32) = 0u;
    *(v7 + 48) = 0u;
    v8 = MEMORY[0x1E69E7CC8];
    *(v7 + 64) = 0u;
    *(v7 + 80) = 0u;
    *(v7 + 96) = 0;
    *(v7 + 104) = v8;
    *(v7 + 112) = 0;
    v9 = OBJC_IVAR____TtC10Foundation13__JSONDecoder_optionsLock;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyyt_GMd, &_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyyt_GMR);
    v10 = swift_allocObject();
    *(v10 + 16) = 0;
    *(v0 + v9) = v10;
    return v0;
  }

  return result;
}

uint64_t __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = *(v3 + 16);
  if (!v5)
  {
    result = 0;
    if (!__OFSUB__(a2, v4))
    {
      return a3();
    }

LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v6 = *(v3 + 40);
  v7 = __OFSUB__(result, v6);
  v8 = result - v6;
  if (!v7)
  {
    result = v8 + v5;
    if (!__OFSUB__(a2, v4))
    {
      return a3();
    }

    goto LABEL_7;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t closure #1 in Data.withBufferView<A>(_:)(uint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  if (result)
  {
    if (a2 - result >= 0)
    {
      return a3();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t get_enum_tag_for_layout_string_10Foundation15_CodingPathNodeO(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

char *JSON5Scanner.JSONPartialMapData.resizeIfNecessary(with:)(char *result, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *(*v3 + 2);
  if (v5)
  {
    v6 = (*(*v3 + 2) & 0x7FFLL) == 0;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    return result;
  }

  v7 = a2 / (a3 - result) * v5;
  if (COERCE__INT64(fabs(v7)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v8 = v7;
  v9 = v3[1];
  if (!v9 || v8 / v9 > 1.25)
  {
    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v8 > *(v4 + 3) >> 1)
    {
      if (v5 <= v8)
      {
        v10 = v8;
      }

      else
      {
        v10 = v5;
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 0, v4);
      v4 = result;
    }

    *v3 = v4;
    v3[1] = v8;
  }

  return result;
}

void specialized JSONDecoderImpl.unwrap<A, B>(_:as:for:_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, ValueMetadata *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, double *a8@<X7>, char *a9@<X8>, unsigned __int8 a10, uint64_t a11, uint64_t a12)
{
  v14 = a5;
  if (a4 == &type metadata for Date)
  {
    specialized JSONDecoderImpl.unwrapDate<A>(from:for:_:)(a1, a2, a3, a5, a6, a7, a8, a10, &v46);
    if (v13)
    {
      return;
    }

    goto LABEL_13;
  }

  if (a4 == &type metadata for Data)
  {
    v20 = specialized JSONDecoderImpl.unwrapData<A>(from:for:_:)(a1, a2, a3, a5, a6, a7, a8, a10);
    if (v13)
    {
      return;
    }

    v46 = v20;
    v47 = v21;
    goto LABEL_13;
  }

  if (a4 == &type metadata for URL)
  {
    specialized JSONDecoderImpl.unwrapURL<A>(from:for:_:)(a1, a2, a3, a5, a6, a7, a8, a10, &v46);
    if (v13)
    {
      return;
    }

    goto LABEL_13;
  }

  v16 = a6;
  v42 = v13;
  v44 = a3;
  v51 = a4;
  type metadata accessor for NSDecimal(0);
  if (v19 != v51)
  {
    if (swift_conformsToProtocol2() && a11)
    {
      specialized JSONDecoderImpl.unwrapDictionary<A, B>(from:as:for:_:)(a1, a2, v44, v51, v14, v16, a7, a8, a10, a11);
      return;
    }

    if (a10 == 0xFF)
    {

      v28 = a8;
      v29 = a7;
      v30 = v16;
      goto LABEL_27;
    }

    v25 = swift_allocObject();
    v25[5] = &type metadata for _CodingKey;
    v25[6] = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    v26 = swift_allocObject();
    v25[2] = v26;
    *(v26 + 16) = v16;
    *(v26 + 24) = a7;
    *(v26 + 32) = a8;
    *(v26 + 40) = a10;
    v25[7] = v14;
    if (v14 >> 62)
    {
      if (v14 >> 62 != 1)
      {
        v30 = v16;
        v29 = a7;
        v28 = a8;
        v31 = 0;
        goto LABEL_25;
      }

      v27 = ((v14 & 0x3FFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v27 = (v14 + 64);
    }

    v31 = *v27;

    v28 = a8;
    v29 = a7;
    v30 = v16;
LABEL_25:
    if (__OFADD__(v31, 1))
    {
      __break(1u);
      goto LABEL_41;
    }

    v25[8] = v31 + 1;
    v14 = v25;
LABEL_27:
    v16 = *(v12 + 20);
    *(v12 + 20) = v14;
    v32 = *(v12 + 2);
    outlined copy of _CodingKey?(v30, v29, v28, a10);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v12 + 2) = v32;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v32 + 2) + 1, 1, v32);
      *(v12 + 2) = v32;
    }

    v34 = v44;
    v35 = a2;
    v36 = a1;
    v38 = *(v32 + 2);
    v37 = *(v32 + 3);
    if (v38 >= v37 >> 1)
    {
      v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1, v32);
      v35 = a2;
      v34 = v44;
      v32 = v41;
      v36 = a1;
    }

    *(v32 + 2) = v38 + 1;
    v39 = &v32[24 * v38];
    *(v39 + 4) = v36;
    *(v39 + 5) = v35;
    v39[48] = v34;
    *(v12 + 2) = v32;
    v49 = type metadata accessor for JSONDecoderImpl();
    v50 = lazy protocol witness table accessor for type JSONDecoderImpl and conformance JSONDecoderImpl(&lazy protocol witness table cache variable for type JSONDecoderImpl and conformance JSONDecoderImpl, type metadata accessor for JSONDecoderImpl, &protocol conformance descriptor for JSONDecoderImpl);
    v46 = v12;
    v14 = v12;

    dispatch thunk of Decodable.init(from:)();
    a9 = v12;
    if (!v42)
    {
LABEL_36:
      *(v14 + 160) = v16;

      v12 = *(v14 + 16);
      if (*(v12 + 2))
      {
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v40 = *(v12 + 2);
          if (v40)
          {
            goto LABEL_39;
          }

          goto LABEL_46;
        }
      }

      else
      {
        __break(1u);
      }

      v12 = specialized _ArrayBuffer._consumeAndCreateNew()(v12);
      v40 = *(v12 + 2);
      if (v40)
      {
        goto LABEL_39;
      }

LABEL_46:
      __break(1u);
      return;
    }

    *(v12 + 20) = v16;

    v12 = *(v12 + 2);
    if (*(v12 + 2))
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v40 = *(v12 + 2);
        if (v40)
        {
LABEL_39:
          *(v12 + 2) = v40 - 1;
          *(a9 + 2) = v12;

          return;
        }

        goto LABEL_35;
      }

LABEL_42:
      v12 = specialized _ArrayBuffer._consumeAndCreateNew()(v12);
      v40 = *(v12 + 2);
      if (v40)
      {
        goto LABEL_39;
      }

LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v22 = specialized JSONDecoderImpl.unwrapDecimal<A>(from:for:_:)(a1, a2, v44, v14, v16, a7, a8, a10);
  if (!v13)
  {
    v46 = v22;
    v47 = v23;
    v48 = v24;
LABEL_13:
    swift_dynamicCast();
  }
}

uint64_t sub_1807A66A4()
{
  outlined consume of _CodingKey(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t sub_1807A66E4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> JSONScanner.scanArray()()
{
  v6 = *(v1 + 3);
  v7 = *(v1 + 4);
  if (v7 == v6)
  {
    goto LABEL_104;
  }

  v0 = v1;
  v3 = v6 + 1;
  v8 = *v6;
  *(v1 + 3) = v6 + 1;
  if (v8 != 91)
  {
    goto LABEL_105;
  }

  v2 = *(v1 + 5);
  if (v2 > 511)
  {
    v11 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)((v6 + 2), *(v1 + 1), *(v1 + 2));
    v13 = v12;
    v15 = v14;
    lazy protocol witness table accessor for type JSONError and conformance JSONError();
    swift_allocError();
    *v16 = v11;
    *(v16 + 8) = v13;
    *(v16 + 16) = v15;
    *(v16 + 24) = 0;
    *(v16 + 32) = 0;
    *(v16 + 40) = 0;
    *(v16 + 48) = 2;
    swift_willThrow();
    return;
  }

  *(v1 + 5) = v2 + 1;
  if (v3 >= v7)
  {
LABEL_9:
    lazy protocol witness table accessor for type JSONError and conformance JSONError();
    swift_allocError();
    *v10 = 1;
    *(v10 + 8) = 0u;
    *(v10 + 24) = 0u;
    *(v10 + 40) = 0;
    *(v10 + 48) = 12;
    swift_willThrow();
    *(v1 + 5) = v2;
    return;
  }

  while (1)
  {
    v9 = *v3;
    if (v9 >= 0x41)
    {
      break;
    }

    if (v9 == 64)
    {
      goto LABEL_17;
    }

    if (((0x100002600uLL >> v9) & 1) == 0)
    {
      break;
    }

    *(v1 + 3) = ++v3;
    if (v3 == v7)
    {
      goto LABEL_9;
    }
  }

  if (v9 == 93)
  {
    *(v1 + 3) = v3 + 1;
    JSON5Scanner.JSONPartialMapData.resizeIfNecessary(with:)(*(v1 + 1), *(v1 + 2), (v3 + 1));
    v25 = *(*(v1 + 6) + 16);
    v1 = (v25 + 4);
    if (__OFADD__(v25, 4))
    {
      __break(1u);
      goto LABEL_110;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18121D6C0;
    *(inited + 32) = 6;
    *(inited + 40) = v1;
    *(inited + 48) = xmmword_181237530;
    specialized Array.append<A>(contentsOf:)(inited);
    *(v0 + 5) = v2;
    return;
  }

  v17 = v9 > 0x20;
  v18 = (1 << v9) & 0x100002600;
  if (!v17 && v18 != 0)
  {
    __break(1u);
LABEL_114:
    __break(1u);
LABEL_115:
    __break(1u);
    return;
  }

LABEL_17:
  JSON5Scanner.JSONPartialMapData.resizeIfNecessary(with:)(*(v1 + 1), *(v1 + 2), v3);
  v20 = *(v1 + 6);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 2) + 1, 1, v20);
  }

  v4 = *(v20 + 2);
  v21 = *(v20 + 3);
  v2 = v4 + 1;
  if (v4 >= v21 >> 1)
  {
    v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v4 + 1, 1, v20);
  }

  *(v20 + 2) = v2;
  *&v20[8 * v4 + 32] = 6;
  *(v0 + 6) = v20;
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of JSONScanner.scanArray());
  if (v3 < v7)
  {
    v5 = 0;
    while (1)
    {
      v1 = *v3;
      if (v1 >= 0x41)
      {
        break;
      }

      if (v1 == 64)
      {
        goto LABEL_108;
      }

      if (((0x100002600uLL >> v1) & 1) == 0)
      {
        break;
      }

      *(v0 + 3) = ++v3;
LABEL_27:
      if (v3 >= v7)
      {
        goto LABEL_64;
      }
    }

    if (*v3 <= 0x65u)
    {
      switch(v1)
      {
        case '""':
          v1 = v0;
          JSONScanner.scanString()();
          goto LABEL_45;
        case '-':
LABEL_44:
          v1 = v0;
          JSONScanner.scanNumber()();
          goto LABEL_45;
        case '[':
          v1 = v0;
          JSONScanner.scanArray()();
          goto LABEL_45;
      }
    }

    else
    {
      if (*v3 <= 0x73u)
      {
        if (v1 != 102)
        {
          if (v1 == 110)
          {
            v1 = v0;
            JSONScanner.scanNull()();
LABEL_45:
            if (v22)
            {
              goto LABEL_66;
            }

            if (__OFADD__(v5++, 1))
            {
              goto LABEL_112;
            }

            v3 = *(v0 + 3);
            v7 = *(v0 + 4);
            if (v3 >= v7)
            {
LABEL_71:
              lazy protocol witness table accessor for type JSONError and conformance JSONError();
              swift_allocError();
              *v34 = 1;
              *(v34 + 8) = 0u;
              *(v34 + 24) = 0u;
              *(v34 + 40) = 0;
              *(v34 + 48) = 12;
              swift_willThrow();
              JSON5Scanner.JSONPartialMapData.resizeIfNecessary(with:)(*(v0 + 1), *(v0 + 2), v3);
              v1 = *(v0 + 6);
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                goto LABEL_72;
              }

              goto LABEL_113;
            }

            while (1)
            {
              v1 = *v3;
              if (v1 >= 0x41)
              {
                break;
              }

              if (v1 == 64)
              {
                goto LABEL_90;
              }

              if (((0x100002600uLL >> v1) & 1) == 0)
              {
                break;
              }

              *(v0 + 3) = ++v3;
              if (v3 == v7)
              {
                v3 = v7;
                goto LABEL_71;
              }
            }

            if (v1 != 44)
            {
              goto LABEL_84;
            }

            while (1)
            {
              *(v0 + 3) = ++v3;
              if (v3 >= v7)
              {
                goto LABEL_77;
              }

              v24 = *v3;
              if (v24 >= 0x41)
              {
                break;
              }

              if (v24 == 64 || ((0x100002600uLL >> v24) & 1) == 0)
              {
                goto LABEL_27;
              }
            }

            if (v24 == 93)
            {
              goto LABEL_97;
            }

            goto LABEL_27;
          }

          goto LABEL_43;
        }

LABEL_41:
        v1 = v0;
        JSONScanner.scanBool()();
        goto LABEL_45;
      }

      if (v1 == 116)
      {
        goto LABEL_41;
      }

      if (v1 == 123)
      {
        v1 = v0;
        JSONScanner.scanObject()();
        goto LABEL_45;
      }
    }

LABEL_43:
    if ((v1 - 58) < 0xFFFFFFF6)
    {
      goto LABEL_106;
    }

    goto LABEL_44;
  }

  v5 = 0;
LABEL_64:
  lazy protocol witness table accessor for type JSONError and conformance JSONError();
  swift_allocError();
  *v27 = 1;
  *(v27 + 8) = 0u;
  *(v27 + 24) = 0u;
  *(v27 + 40) = 0;
  for (i = 12; ; i = 1)
  {
    *(v27 + 48) = i;
    swift_willThrow();
LABEL_66:
    JSON5Scanner.JSONPartialMapData.resizeIfNecessary(with:)(*(v0 + 1), *(v0 + 2), *(v0 + 3));
    v1 = *(v0 + 6);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_110:
      v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v1 + 2) + 1, 1, v1);
    }

    v30 = *(v1 + 2);
    v29 = *(v1 + 3);
    v31 = v30 + 1;
    if (v30 >= v29 >> 1)
    {
      v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v1);
    }

    *(v1 + 2) = v31;
    v32 = v1 + 32;
    *&v1[8 * v30 + 32] = 7;
    *&v1[8 * v2 + 32] = v31;
    v33 = v4 + 2;
    if (!__OFADD__(v4, 2))
    {
      break;
    }

    __break(1u);
LABEL_112:
    __break(1u);
LABEL_113:
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v1 + 2) + 1, 1, v1);
LABEL_72:
    v36 = *(v1 + 2);
    v35 = *(v1 + 3);
    v3 = (v36 + 1);
    if (v36 >= v35 >> 1)
    {
      v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v1);
    }

    *(v1 + 2) = v3;
    v32 = v1 + 32;
    *&v1[8 * v36 + 32] = 7;
    *&v1[8 * v2 + 32] = v3;
    v33 = v4 + 2;
    if (!__OFADD__(v4, 2))
    {
      break;
    }

    __break(1u);
LABEL_77:
    lazy protocol witness table accessor for type JSONError and conformance JSONError();
    swift_allocError();
    *v37 = 1;
    *(v37 + 8) = 0u;
    *(v37 + 24) = 0u;
    *(v37 + 40) = 0;
    *(v37 + 48) = 12;
    swift_willThrow();
    JSON5Scanner.JSONPartialMapData.resizeIfNecessary(with:)(*(v0 + 1), *(v0 + 2), v3);
    v1 = *(v0 + 6);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v1 + 2) + 1, 1, v1);
    }

    v39 = *(v1 + 2);
    v38 = *(v1 + 3);
    v3 = (v39 + 1);
    if (v39 >= v38 >> 1)
    {
      v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1, v1);
    }

    *(v1 + 2) = v3;
    v32 = v1 + 32;
    *&v1[8 * v39 + 32] = 7;
    *&v1[8 * v2 + 32] = v3;
    v33 = v4 + 2;
    if (!__OFADD__(v4, 2))
    {
      break;
    }

    __break(1u);
LABEL_84:
    if (v1 != 93)
    {
      if (v1 <= 0x20 && ((1 << v1) & 0x100002600) != 0)
      {
        goto LABEL_114;
      }

LABEL_90:
      v41 = *(v0 + 1);
      v42 = *(v0 + 2);
      v57 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v3, v41, v42);
      v55 = v44;
      v56 = v43;
      lazy protocol witness table accessor for type JSONError and conformance JSONError();
      swift_allocError();
      *v45 = xmmword_181237540;
      *(v45 + 16) = v1;
      *(v45 + 24) = v57;
      *(v45 + 32) = v56;
      *(v45 + 40) = v55;
      *(v45 + 48) = 1;
      swift_willThrow();
      JSON5Scanner.JSONPartialMapData.resizeIfNecessary(with:)(v41, v42, v3);
      v1 = *(v0 + 6);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v1 + 2) + 1, 1, v1);
      }

      v47 = *(v1 + 2);
      v46 = *(v1 + 3);
      v3 = (v47 + 1);
      if (v47 >= v46 >> 1)
      {
        v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1, v1);
      }

      *(v1 + 2) = v3;
      v32 = v1 + 32;
      *&v1[8 * v47 + 32] = 7;
      *&v1[8 * v2 + 32] = v3;
      v33 = v4 + 2;
      if (!__OFADD__(v4, 2))
      {
        break;
      }

      __break(1u);
    }

LABEL_97:
    *(v0 + 3) = v3 + 1;
    JSON5Scanner.JSONPartialMapData.resizeIfNecessary(with:)(*(v0 + 1), *(v0 + 2), (v3 + 1));
    v1 = *(v0 + 6);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v1 + 2) + 1, 1, v1);
    }

    v49 = *(v1 + 2);
    v48 = *(v1 + 3);
    v3 = (v49 + 1);
    if (v49 >= v48 >> 1)
    {
      v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1, v1);
    }

    *(v1 + 2) = v3;
    v32 = v1 + 32;
    *&v1[8 * v49 + 32] = 7;
    *&v1[8 * v2 + 32] = v3;
    v33 = v4 + 2;
    if (!__OFADD__(v4, 2))
    {
      break;
    }

    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    if (v1 <= 0x20 && ((1 << v1) & 0x100002600) != 0)
    {
      goto LABEL_115;
    }

LABEL_108:
    v50 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v3, *(v0 + 1), *(v0 + 2));
    v52 = v51;
    v54 = v53;
    lazy protocol witness table accessor for type JSONError and conformance JSONError();
    swift_allocError();
    *v27 = 0;
    *(v27 + 8) = 0;
    *(v27 + 16) = v1;
    *(v27 + 24) = v50;
    *(v27 + 32) = v52;
    *(v27 + 40) = v54;
  }

  *&v32[8 * v33] = v5;
  --*(v0 + 5);
  *(v0 + 6) = v1;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> JSONScanner.scanObject()()
{
  v1 = v0[3];
  if (v0[4] == v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *v1;
  v0[3] = v1 + 1;
  if (v2 != 123)
  {
LABEL_7:
    __break(1u);
    return;
  }

  if (v0[5] > 511)
  {
    v3 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v1, v0[1], v0[2]);
    v5 = v4;
    v7 = v6;
    lazy protocol witness table accessor for type JSONError and conformance JSONError();
    swift_allocError();
    *v8 = v3;
    *(v8 + 8) = v5;
    *(v8 + 16) = v7;
    *(v8 + 24) = 0;
    *(v8 + 32) = 0;
    *(v8 + 40) = 0;
    *(v8 + 48) = 2;
    swift_willThrow();
  }

  else
  {
    JSONScanner.scanObject(withoutBraces:)(0);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> JSONScanner.scanString()()
{
  v10 = 0;
  v2 = JSONScanner.DocumentReader.skipUTF8StringTillNextUnescapedQuote(isSimple:)(&v10);
  if (v1)
  {
    return;
  }

  v3 = *(v0 + 24);
  if (*(v0 + 32) == v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = *v3;
  *(v0 + 24) = v3 + 1;
  if (v4 != 34)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v5 = v10;
  v6 = v3 - v2;
  v7 = &v2[-*(v0 + 8)];
  JSON5Scanner.JSONPartialMapData.resizeIfNecessary(with:)(*(v0 + 8), *(v0 + 16), (v3 + 1));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18121D6B0;
  v9 = 8;
  if (!v5)
  {
    v9 = 0;
  }

  *(inited + 32) = v9;
  *(inited + 40) = v6;
  *(inited + 48) = v7;
  specialized Array.append<A>(contentsOf:)(inited);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> JSONScanner._scanObjectLoop(withoutBraces:count:done:)(Swift::Bool withoutBraces, Swift::Int *count, Swift::Bool *done)
{
  JSONScanner.scanString()();
  if (!v7)
  {
    v8 = v3[3];
    v9 = v3[4];
    if (v8 >= v9)
    {
LABEL_6:
      lazy protocol witness table accessor for type JSONError and conformance JSONError();
      swift_allocError();
      *v11 = 1;
      *(v11 + 8) = 0u;
      *(v11 + 24) = 0u;
      *(v11 + 40) = 0;
      v12 = 12;
LABEL_18:
      *(v11 + 48) = v12;
      swift_willThrow();
    }

    else
    {
      while (1)
      {
        v10 = *v8;
        if (v10 > 0x3F)
        {
          goto LABEL_16;
        }

        if (((1 << v10) & 0x100002600) == 0)
        {
          break;
        }

        v3[3] = ++v8;
        if (v8 == v9)
        {
          goto LABEL_6;
        }
      }

      if (v10 != 58)
      {
LABEL_16:
        v17 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v8, v3[1], v3[2]);
        v19 = v18;
        v21 = v20;
        lazy protocol witness table accessor for type JSONError and conformance JSONError();
        swift_allocError();
        *v11 = xmmword_181237550;
        *(v11 + 16) = v10;
        goto LABEL_17;
      }

      v3[3] = v8 + 1;
      JSONScanner.scanValue()();
      if (v13)
      {
        return;
      }

      if (!__OFADD__(*count, 2))
      {
        *count += 2;
        v14 = v3[3];
        v15 = v3[4];
        if (v14 >= v15)
        {
          goto LABEL_14;
        }

        while (1)
        {
          v16 = *v14;
          if (v16 > 0x3F || ((0x100002600uLL >> v16) & 1) == 0)
          {
            break;
          }

          v3[3] = ++v14;
          if (v14 == v15)
          {
            goto LABEL_14;
          }
        }

        if (v16 == 125)
        {
LABEL_28:
          if (!withoutBraces)
          {
            v3[3] = v14 + 1;
LABEL_31:
            *done = 1;
            return;
          }

          v17 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v14, v3[1], v3[2]);
          v19 = v25;
          v21 = v26;
          lazy protocol witness table accessor for type JSONError and conformance JSONError();
          swift_allocError();
          *v11 = 0;
          *(v11 + 8) = 0;
          *(v11 + 16) = 125;
        }

        else
        {
          if (v16 == 44)
          {
            while (1)
            {
              v3[3] = ++v14;
              if (v14 >= v15)
              {
                break;
              }

              v22 = *v14;
              if (v22 > 0x3F)
              {
                if (v22 != 125)
                {
                  return;
                }

                goto LABEL_28;
              }

              if (((0x100002600uLL >> v22) & 1) == 0)
              {
                return;
              }
            }

LABEL_14:
            if (!withoutBraces)
            {
              goto LABEL_6;
            }

            goto LABEL_31;
          }

          v17 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v14, v3[1], v3[2]);
          v19 = v23;
          v21 = v24;
          lazy protocol witness table accessor for type JSONError and conformance JSONError();
          swift_allocError();
          *v11 = xmmword_181237550;
          *(v11 + 16) = v16;
        }

LABEL_17:
        *(v11 + 24) = v17;
        *(v11 + 32) = v19;
        *(v11 + 40) = v21;
        v12 = 1;
        goto LABEL_18;
      }

      __break(1u);
    }
  }
}

unsigned __int8 *JSONScanner.DocumentReader.skipUTF8StringTillNextUnescapedQuote(isSimple:)(_BYTE *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  if (v3 == v2)
  {
    goto LABEL_23;
  }

  v5 = *v2++;
  v4 = v5;
  v1[2] = v2;
  if (v5 != 34)
  {
    v9 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v2, *v1, v1[1]);
    v2 = v10;
    v12 = v11;
    lazy protocol witness table accessor for type JSONError and conformance JSONError();
    swift_allocError();
    *v13 = 0;
    *(v13 + 8) = 0;
    *(v13 + 16) = v4;
    *(v13 + 24) = v9;
    *(v13 + 32) = v2;
    *(v13 + 40) = v12;
    v14 = 1;
    goto LABEL_24;
  }

  result = JSONScanner.DocumentReader.skipUTF8StringTillQuoteOrBackslashOrInvalidCharacter()();
  if (v8)
  {
    return v2;
  }

  if (result == 34)
  {
    *a1 = 1;
    return v2;
  }

  v15 = v1[2];
  if (v15 >= v3)
  {
LABEL_23:
    lazy protocol witness table accessor for type JSONError and conformance JSONError();
    swift_allocError();
    *v13 = 1;
    *(v13 + 8) = 0u;
    *(v13 + 24) = 0u;
    *(v13 + 40) = 0;
    v14 = 12;
LABEL_24:
    *(v13 + 48) = v14;
LABEL_25:
    swift_willThrow();
    return v2;
  }

  v16 = a1;
  while (1)
  {
    v19 = *v15;
    if (v19 != 92)
    {
      if (v19 == 34)
      {
        *v16 = 0;
        return v2;
      }

      v17 = 1;
LABEL_11:
      v18 = &v15[v17];
      v1[2] = &v15[v17];
      goto LABEL_12;
    }

    if (v3 == v15)
    {
      break;
    }

    v1[2] = (v15 + 1);
    if (v3 == v15 + 1)
    {
      goto LABEL_23;
    }

    v20 = v15[1];
    v18 = (v15 + 2);
    v1[2] = (v15 + 2);
    if (v20 == 117)
    {
      if (&v3[-v18] <= 3)
      {
        lazy protocol witness table accessor for type JSONError and conformance JSONError();
        swift_allocError();
        *v25 = 1;
        *(v25 + 8) = 0u;
        *(v25 + 24) = 0u;
        *(v25 + 40) = 0;
        v26 = 12;
LABEL_30:
        *(v25 + 48) = v26;
        goto LABEL_25;
      }

      v21 = *v1;
      v22 = v18 - *v1;
      v23 = v22 + 4;
      if (__OFADD__(v22, 4))
      {
        goto LABEL_32;
      }

      v24 = v1[1];
      if (v24 < v23 || (((v21 + v23 - v18) | v22) & 0x8000000000000000) != 0)
      {
        goto LABEL_33;
      }

      if ((~(((*(v21 + v22) & 0x7F7F7F7F ^ 0x22222222) + 2139062143) | *(v21 + v22)) & 0x80808080) != 0)
      {
        v27 = static String._fromUTF8Repairing(_:)();
        v2 = v28;
        v29 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v18, v21, v24);
        v31 = v30;
        v33 = v32;
        lazy protocol witness table accessor for type JSONError and conformance JSONError();
        swift_allocError();
        *v25 = v27;
        *(v25 + 8) = v2;
        *(v25 + 16) = v29;
        *(v25 + 24) = v31;
        *(v25 + 32) = v33;
        *(v25 + 40) = 0;
        v26 = 3;
        goto LABEL_30;
      }

      v17 = 6;
      goto LABEL_11;
    }

LABEL_12:
    v15 = v18;
    if (v18 >= v3)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

Swift::UInt8 __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> JSONScanner.DocumentReader.skipUTF8StringTillQuoteOrBackslashOrInvalidCharacter()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (v1 >= v2)
  {
LABEL_6:
    lazy protocol witness table accessor for type JSONError and conformance JSONError();
    swift_allocError();
    *v4 = 1;
    *(v4 + 8) = 0u;
    *(v4 + 24) = 0u;
    *(v4 + 40) = 0;
    *(v4 + 48) = 12;
    swift_willThrow();
    LOBYTE(v3) = 0;
  }

  else
  {
    while (1)
    {
      v3 = *v1;
      if (v3 == 34 || v3 == 92 || v3 < 0x20)
      {
        break;
      }

      *(v0 + 16) = ++v1;
      if (v1 == v2)
      {
        goto LABEL_6;
      }
    }
  }

  return v3;
}

unint64_t specialized JSONMap.TypeDescriptor.init(rawValue:)(unint64_t result)
{
  if (result >= 0xA)
  {
    return 10;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation11JSONDecoderC20DateDecodingStrategyO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation11JSONDecoderC34NonConformingFloatDecodingStrategyO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t JSONMap.loadValue(at:)(unint64_t a1)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  v3 = *(v1 + 16);
  v4 = *(v3 + 16);
  if (v4 <= a1)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v5 = v3 + 32;
  v6 = specialized JSONMap.TypeDescriptor.init(rawValue:)(*(v3 + 32 + 8 * a1));
  if (v6 > 4u)
  {
    if (v6 <= 7u)
    {
      if (v6 != 5)
      {
        if (v6 != 6)
        {
          return 0;
        }

        if (a1 + 2 < v4)
        {
          return a1 + 3;
        }

        goto LABEL_33;
      }

      if (a1 + 2 < v4)
      {
        return a1 + 3;
      }

LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    if (v6 != 8)
    {
      if (v6 != 9)
      {
LABEL_34:
        _StringGuts.grow(_:)(44);

        v8 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x1865CB0E0](v8);

        MEMORY[0x1865CB0E0](41, 0xE100000000000000);
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

LABEL_23:
      if (a1 + 1 < v4)
      {
        if (a1 + 2 < v4)
        {
          return *(v5 + 8 * (a1 + 2));
        }

        goto LABEL_31;
      }

      goto LABEL_29;
    }

    goto LABEL_15;
  }

  if (v6 <= 1u)
  {
    if (v6)
    {
      goto LABEL_23;
    }

LABEL_15:
    if (a1 + 1 < v4)
    {
      if (a1 + 2 < v4)
      {
        return *(v5 + 8 * (a1 + 2));
      }

      goto LABEL_30;
    }

    goto LABEL_28;
  }

  return v6 != 2 && v6 == 3;
}

uint64_t lazy protocol witness table accessor for type JSONDecoderImpl and conformance JSONDecoderImpl(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t *specialized JSONDecoderImpl.unwrapString<A>(from:for:_:)(uint64_t a1, uint64_t a2, unsigned __int8 a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a8;
  v14 = a3 >> 5;
  v15 = v14 == 5 && (a2 | a1) == 0;
  if (v15 && a3 == 160)
  {
    v52 = type metadata accessor for DecodingError();
    swift_allocError();
    v42 = v41;
    *v41 = MEMORY[0x1E69E6158];
    v43 = _CodingPathNode.path.getter(a4);
    if (v10 != -1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_181218E20;
      *(inited + 56) = &type metadata for _CodingKey;
      *(inited + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
      v45 = swift_allocObject();
      *(inited + 32) = v45;
      *(v45 + 16) = a5;
      *(v45 + 24) = a6;
      *(v45 + 32) = a7;
      *(v45 + 40) = v10;
      v50 = v43;
      outlined copy of _CodingKey(a5, a6, a7, v10);
      specialized Array.append<A>(contentsOf:)(inited);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    v50 = 0;
    v51 = 0xE000000000000000;
    v20 = &v50;
    _StringGuts.grow(_:)(55);
    MEMORY[0x1865CB0E0](0xD000000000000019, 0x8000000181481E50);
    MEMORY[0x1865CB0E0](0x676E69727453, 0xE600000000000000);
    MEMORY[0x1865CB0E0](0xD00000000000001CLL, 0x8000000181481E70);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v52 - 8) + 104))(v42, *MEMORY[0x1E69E6B08], v52);
LABEL_28:
    swift_willThrow();
    return v20;
  }

  if (a3 > 0x1Fu)
  {
    v24 = ~a8;
    v25 = _CodingPathNode.path.getter(a4);
    if (v24)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
      v26 = swift_initStackObject();
      *(v26 + 16) = xmmword_181218E20;
      *(v26 + 56) = &type metadata for _CodingKey;
      *(v26 + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
      v27 = swift_allocObject();
      *(v26 + 32) = v27;
      *(v27 + 16) = a5;
      *(v27 + 24) = a6;
      *(v27 + 32) = a7;
      *(v27 + 40) = v10;
      v50 = v25;
      outlined copy of _CodingKey(a5, a6, a7, v10);
      specialized Array.append<A>(contentsOf:)(v26);
    }

    v28 = type metadata accessor for DecodingError();
    swift_allocError();
    v30 = v29;
    *v29 = MEMORY[0x1E69E6158];
    v50 = 0;
    v51 = 0xE000000000000000;
    v20 = &v50;
    _StringGuts.grow(_:)(43);

    v50 = 0xD000000000000024;
    v51 = 0x8000000181481E20;
    v31 = 0xE600000000000000;
    v32 = 0x7265626D756ELL;
    v33 = 0xEC0000007972616ELL;
    v34 = 0x6F69746369642061;
    v35 = 0xE800000000000000;
    v36 = 0x7961727261206E61;
    if (v14 != 4)
    {
      v36 = 1819047278;
      v35 = 0xE400000000000000;
    }

    if (v14 != 3)
    {
      v34 = v36;
      v33 = v35;
    }

    if (v14 != 1)
    {
      v32 = 1819242338;
      v31 = 0xE400000000000000;
    }

    v37 = v14 <= 2;
    if (v14 <= 2)
    {
      v38 = v32;
    }

    else
    {
      v38 = v34;
    }

    if (v37)
    {
      v39 = v31;
    }

    else
    {
      v39 = v33;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    MEMORY[0x1865CB0E0](v38, v39);

    MEMORY[0x1865CB0E0](0x64616574736E6920, 0xE90000000000002ELL);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v28 - 8) + 104))(v30, *MEMORY[0x1E69E6AF8], v28);
    goto LABEL_28;
  }

  MEMORY[0x1EEE9AC00](a1);
  v48 = v16 & 1;
  v49 = v17;
  v18 = *(*(v8 + 32) + 24);
  MEMORY[0x1EEE9AC00](v19);
  v20 = v47;
  v47[2] = partial apply for closure #1 in JSONDecoderImpl.unwrapString<A>(from:for:_:);
  v47[3] = v21;
  v47[4] = v22;
  v47[5] = v23;

  os_unfair_lock_lock((v18 + 40));
  partial apply for specialized closure #1 in JSONMap.withBuffer<A>(for:perform:)((v18 + 16), &v50);
  os_unfair_lock_unlock((v18 + 40));

  if (!v9)
  {
    v20 = v50;
  }

  return v20;
}

uint64_t static JSONDecoderImpl.KeyedContainer.stringify(objectRegion:using:codingPathNode:keyDecodingStrategy:)(Swift::Int a1, uint64_t a2, uint64_t a3, unint64_t a4, void (**a5)(void *__return_ptr, void))
{
  v6 = v5;
  v267 = a4;
  v9 = *a5;
  v264 = a5[1];
  v276 = MEMORY[0x1E69E7CC8];
  v10 = a2 / 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS10Foundation7JSONMapC5ValueOGMd, &_sSDySS10Foundation7JSONMapC5ValueOGMR);
  Dictionary.reserveCapacity(_:)(v10);
  v265 = *(a3 + 32);
  v266 = a3;
  if (v9)
  {
    if (v9 == 1)
    {

      v11 = JSONMap.loadValue(at:)(a1);
      if (v13 > 0xFDu)
      {
LABEL_4:

        return v276;
      }

      v22 = v11;
      v23 = v12;
      v24 = v13;
      v254 = xmmword_181218E20;
LABEL_13:
      v33 = JSONMap.offset(after:)(a1);
      v34 = JSONMap.loadValue(at:)(v33);
      v260 = v35;
      v261 = v34;
      v259 = v36;
      if (v36 > 0xFDu)
      {
        goto LABEL_169;
      }

      a1 = JSONMap.offset(after:)(v33);
      v37 = specialized JSONDecoderImpl.unwrapString<A>(from:for:_:)(v22, v23, v24, v267, 0, 0, 0, 255);
      if (v6)
      {
      }

      v39 = v38;
      if ((v38 & 0x2000000000000000) != 0)
      {
        v40 = HIBYTE(v38) & 0xF;
      }

      else
      {
        v40 = v37 & 0xFFFFFFFFFFFFLL;
      }

      v269 = v37;
      if (!v40)
      {
        goto LABEL_56;
      }

      v41 = 0;
      v270 = 4 * v40;
      v42 = 15;
      while (1)
      {
        if (String.subscript.getter() == 95 && v45 == 0xE100000000000000)
        {
        }

        else
        {
          v43 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v44 = v269;

          if ((v43 & 1) == 0)
          {
            v46 = 7;
            if (((v39 >> 60) & ((v44 & 0x800000000000000) == 0)) != 0)
            {
              v46 = 11;
            }

            v257 = v46 | (v40 << 16);
            v264 = v39;
            for (i = String.index(before:)() >> 14; v41 < i; i = String.index(before:)() >> 14)
            {
              if (String.subscript.getter() == 95 && v49 == 0xE100000000000000)
              {
              }

              else
              {
                v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if ((v48 & 1) == 0)
                {
                  break;
                }
              }
            }

            if (i < v41)
            {
              goto LABEL_160;
            }

            v50 = String.index(after:)();
            v51 = v50 >> 14;
            if (v270 < v50 >> 14)
            {
              goto LABEL_161;
            }

            v256 = v50;
            String.index(after:)();
            v52 = String.subscript.getter();
            *&v272 = 95;
            *(&v272 + 1) = 0xE100000000000000;
            MEMORY[0x1EEE9AC00](v52);
            v252[2] = &v272;
            v56 = specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)(0x7FFFFFFFFFFFFFFFLL, 1, partial apply for specialized closure #1 in Sequence<>.contains(_:), v252, v53, v54, v55, v253);
            if (*(v56 + 2) == 1)
            {

              String.index(after:)();
              v57 = String.subscript.getter();
              v58 = MEMORY[0x1865CAE80](v57);
              v60 = v59;

              if (!(v42 >> 14))
              {
                goto LABEL_39;
              }

LABEL_52:
              v263 = a1;
              v78 = String.subscript.getter();
              v79 = MEMORY[0x1865CAE80](v78);
              v80 = v51;
              v82 = v81;

              *&v272 = v79;
              *(&v272 + 1) = v82;
              if (v80 == v270)
              {

                MEMORY[0x1865CB0E0](v58, v60);
              }

              else
              {

                MEMORY[0x1865CB0E0](v58, v60);

                v83 = v272;
                v84 = String.subscript.getter();
                v85 = MEMORY[0x1865CAE80](v84);
                v87 = v86;

                v272 = v83;

                MEMORY[0x1865CB0E0](v85, v87);
              }

              v39 = *(&v272 + 1);
              v269 = v272;
              a1 = v263;
              goto LABEL_56;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
            v61 = swift_allocObject();
            *(v61 + 16) = v254;
            if (!*(v56 + 2))
            {
              goto LABEL_162;
            }

            v258 = v61;

            v62 = Substring.lowercased()();

            *(v258 + 32) = v62._countAndFlagsBits;
            v63 = v258;
            *(v258 + 40) = v62._object;
            v64 = *(v56 + 2);
            if (!v64)
            {
              goto LABEL_163;
            }

            v255 = v51;
            v268 = 0;
            v65 = v64 - 1;
            if (v64 == 1)
            {

              v66 = MEMORY[0x1E69E7CC0];
            }

            else
            {
              v263 = a1;
              v271 = MEMORY[0x1E69E7CC0];
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v65, 0);
              v66 = v271;
              v262 = lazy protocol witness table accessor for type Substring and conformance Substring();
              v253[1] = v56;
              v67 = (v56 + 88);
              do
              {
                v68 = *(v67 - 1);
                v69 = *v67;
                v272 = *(v67 - 3);
                v273 = v68;
                v274 = v69;
                swift_bridgeObjectRetain_n();
                String.init<A>(_:)();
                v70 = String._capitalized()();

                v271 = v66;
                v72 = *(v66 + 16);
                v71 = *(v66 + 24);
                if (v72 >= v71 >> 1)
                {
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v71 > 1), v72 + 1, 1);
                  v66 = v271;
                }

                *(v66 + 16) = v72 + 1;
                *(v66 + 16 * v72 + 32) = v70;
                v67 += 4;
                --v65;
              }

              while (v65);

              a1 = v263;
              v63 = v258;
            }

            *&v272 = v63;
            specialized Array.append<A>(contentsOf:)(v66);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
            lazy protocol witness table accessor for type [String] and conformance [A]();
            v58 = BidirectionalCollection<>.joined(separator:)();
            v60 = v77;

            v6 = v268;
            v51 = v255;
            if (v42 >> 14)
            {
              goto LABEL_52;
            }

LABEL_39:
            if (v51 == v270)
            {

              v269 = v58;
              v39 = v60;
            }

            else
            {
              v73 = String.subscript.getter();
              v74 = MEMORY[0x1865CAE80](v73);
              v76 = v75;

              *&v272 = v58;
              *(&v272 + 1) = v60;

              MEMORY[0x1865CB0E0](v74, v76);

              v39 = *(&v272 + 1);
              v269 = v272;
            }

LABEL_56:
            v88 = v276;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v272 = v88;
            v90 = specialized __RawDictionaryStorage.find<A>(_:)(v269, v39);
            v92 = *(v88 + 16);
            v93 = (v91 & 1) == 0;
            v94 = __OFADD__(v92, v93);
            v95 = v92 + v93;
            if (v94)
            {
              goto LABEL_156;
            }

            v96 = v91;
            if (*(v88 + 24) >= v95)
            {
              if (isUniquelyReferenced_nonNull_native)
              {
                v97 = v88;
                v98 = v269;
                if ((v91 & 1) == 0)
                {
                  goto LABEL_63;
                }

                goto LABEL_11;
              }

              v263 = a1;
              v105 = v90;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation7JSONMapC5ValueOGMd, &_ss18_DictionaryStorageCySS10Foundation7JSONMapC5ValueOGMR);
              v106 = static _DictionaryStorage.copy(original:)();
              v97 = v106;
              if (*(v88 + 16))
              {
                v107 = v39;
                v108 = (v106 + 64);
                v109 = v88 + 64;
                v110 = ((1 << *(v97 + 32)) + 63) >> 6;
                if (v97 != v88 || v108 >= v109 + 8 * v110)
                {
                  memmove(v108, (v88 + 64), 8 * v110);
                }

                v111 = 0;
                *(v97 + 16) = *(v88 + 16);
                v112 = 1 << *(v88 + 32);
                v113 = *(v88 + 64);
                if (v112 < 64)
                {
                  v114 = ~(-1 << v112);
                }

                else
                {
                  v114 = -1;
                }

                v115 = v114 & v113;
                v116 = (v112 + 63) >> 6;
                if ((v114 & v113) != 0)
                {
                  do
                  {
                    v117 = __clz(__rbit64(v115));
                    v115 &= v115 - 1;
LABEL_79:
                    v120 = v117 | (v111 << 6);
                    v121 = 16 * v120;
                    v122 = (*(v88 + 48) + 16 * v120);
                    v124 = *v122;
                    v123 = v122[1];
                    v120 *= 24;
                    v125 = *(v88 + 56) + v120;
                    v126 = *(v125 + 16);
                    v127 = (*(v97 + 48) + v121);
                    v128 = *v125;
                    *v127 = v124;
                    v127[1] = v123;
                    v129 = *(v97 + 56) + v120;
                    *v129 = v128;
                    *(v129 + 16) = v126;
                  }

                  while (v115);
                }

                v118 = v111;
                v39 = v107;
                while (1)
                {
                  v111 = v118 + 1;
                  if (__OFADD__(v118, 1))
                  {
                    goto LABEL_166;
                  }

                  if (v111 >= v116)
                  {
                    break;
                  }

                  v119 = *(v109 + 8 * v111);
                  ++v118;
                  if (v119)
                  {
                    v117 = __clz(__rbit64(v119));
                    v115 = (v119 - 1) & v119;
                    goto LABEL_79;
                  }
                }
              }

              v90 = v105;
              a1 = v263;
              v98 = v269;
              if (v96)
              {
                goto LABEL_11;
              }

LABEL_63:
              *(v97 + 8 * (v90 >> 6) + 64) |= 1 << v90;
              v100 = (*(v97 + 48) + 16 * v90);
              *v100 = v98;
              v100[1] = v39;
              v101 = *(v97 + 56) + 24 * v90;
              v102 = v260;
              *v101 = v261;
              *(v101 + 8) = v102;
              *(v101 + 16) = v259;
              v103 = *(v97 + 16);
              v94 = __OFADD__(v103, 1);
              v104 = v103 + 1;
              if (!v94)
              {
                *(v97 + 16) = v104;
                goto LABEL_12;
              }

              goto LABEL_159;
            }

            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v95, isUniquelyReferenced_nonNull_native);
            v97 = v272;
            v98 = v269;
            v90 = specialized __RawDictionaryStorage.find<A>(_:)(v269, v39);
            if ((v96 & 1) != (v99 & 1))
            {
              goto LABEL_170;
            }

            if ((v96 & 1) == 0)
            {
              goto LABEL_63;
            }

LABEL_11:
            v25 = 24 * v90;
            v26 = *(v97 + 56) + 24 * v90;
            v27 = *v26;
            v28 = *(v26 + 8);
            v29 = *(v26 + 16);

            v30 = *(v97 + 56) + v25;
            *v30 = v27;
            *(v30 + 8) = v28;
            *(v30 + 16) = v29;
LABEL_12:
            v276 = v97;
            v22 = JSONMap.loadValue(at:)(a1);
            v23 = v31;
            v24 = v32;
            if (v32 > 0xFDu)
            {
              goto LABEL_4;
            }

            goto LABEL_13;
          }
        }

        v42 = String.index(after:)();
        v41 = v42 >> 14;
        if (v42 >> 14 == v270)
        {
          goto LABEL_56;
        }
      }
    }

    v268 = v5;

    v262 = _CodingPathNode.path.getter(v267);
    v18 = JSONMap.loadValue(at:)(a1);
    if (v20 > 0xFDu)
    {
LABEL_8:

      return v276;
    }

    v185 = v18;
    v186 = v19;
    v187 = v20;
    while (1)
    {
      v196 = JSONMap.offset(after:)(a1);
      v197 = JSONMap.loadValue(at:)(v196);
      v270 = v199;
      if (v198 > 0xFDu)
      {
        goto LABEL_167;
      }

      v200 = v197;
      v201 = v198;
      v263 = JSONMap.offset(after:)(v196);
      v202 = specialized JSONDecoderImpl.unwrapString<A>(from:for:_:)(v185, v186, v187, v267, 0, 0, 0, 255);
      if (v268)
      {
      }

      v204 = v202;
      v205 = v203;
      v206 = v262;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v206 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v262[2] + 1, 1, v262);
      }

      v208 = v206[2];
      v207 = v206[3];
      v269 = v200;
      if (v208 >= v207 >> 1)
      {
        v206 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v207 > 1), v208 + 1, 1, v206);
      }

      v274 = &type metadata for _CodingKey;
      v275 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
      v209 = swift_allocObject();
      *&v272 = v209;
      *(v209 + 16) = v204;
      *(v209 + 24) = v205;
      *(v209 + 32) = 0;
      *(v209 + 40) = 0;
      v206[2] = v208 + 1;
      outlined init with take of Equatable(&v272, &v206[5 * v208 + 4]);
      v210 = v9;
      v9(&v272, v206);

      __swift_project_boxed_opaque_existential_1(&v272, v274);
      v211 = dispatch thunk of CodingKey.stringValue.getter();
      v213 = v212;
      v214 = v276;
      v215 = swift_isUniquelyReferenced_nonNull_native();
      v271 = v214;
      v217 = specialized __RawDictionaryStorage.find<A>(_:)(v211, v213);
      v218 = *(v214 + 16);
      v219 = (v216 & 1) == 0;
      v220 = v218 + v219;
      if (__OFADD__(v218, v219))
      {
        goto LABEL_155;
      }

      v221 = v216;
      if (*(v214 + 24) >= v220)
      {
        if (v215)
        {
          v222 = v214;
          if (v216)
          {
            goto LABEL_115;
          }
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation7JSONMapC5ValueOGMd, &_ss18_DictionaryStorageCySS10Foundation7JSONMapC5ValueOGMR);
          v230 = static _DictionaryStorage.copy(original:)();
          v222 = v230;
          if (*(v214 + 16))
          {
            v231 = (v230 + 64);
            v232 = (v214 + 64);
            v233 = ((1 << *(v222 + 32)) + 63) >> 6;
            v260 = v214 + 64;
            if (v222 != v214 || v231 >= &v232[8 * v233])
            {
              memmove(v231, v232, 8 * v233);
            }

            v234 = 0;
            *(v222 + 16) = *(v214 + 16);
            v235 = 1 << *(v214 + 32);
            if (v235 < 64)
            {
              v236 = ~(-1 << v235);
            }

            else
            {
              v236 = -1;
            }

            v237 = v236 & *(v214 + 64);
            v238 = (v235 + 63) >> 6;
            if (v237)
            {
              do
              {
                v239 = __clz(__rbit64(v237));
                v261 = (v237 - 1) & v237;
LABEL_146:
                v242 = v239 | (v234 << 6);
                v243 = 16 * v242;
                v244 = (*(v214 + 48) + 16 * v242);
                v246 = *v244;
                v245 = v244[1];
                v242 *= 24;
                v247 = *(v214 + 56) + v242;
                v248 = *(v247 + 16);
                v249 = (*(v222 + 48) + v243);
                v250 = *v247;
                *v249 = v246;
                v249[1] = v245;
                v251 = *(v222 + 56) + v242;
                *v251 = v250;
                *(v251 + 16) = v248;

                v237 = v261;
              }

              while (v261);
            }

            v240 = v234;
            while (1)
            {
              v234 = v240 + 1;
              if (__OFADD__(v240, 1))
              {
                goto LABEL_165;
              }

              if (v234 >= v238)
              {
                break;
              }

              v241 = *(v260 + 8 * v234);
              ++v240;
              if (v241)
              {
                v239 = __clz(__rbit64(v241));
                v261 = (v241 - 1) & v241;
                goto LABEL_146;
              }
            }
          }

          if (v221)
          {
LABEL_115:
            v188 = 24 * v217;
            v189 = *(v222 + 56) + 24 * v217;
            v190 = *v189;
            v191 = *(v189 + 8);
            v192 = *(v189 + 16);

            v193 = *(v222 + 56) + v188;
            *v193 = v190;
            *(v193 + 8) = v191;
            *(v193 + 16) = v192;
            goto LABEL_116;
          }
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v220, v215);
        v222 = v271;
        v223 = specialized __RawDictionaryStorage.find<A>(_:)(v211, v213);
        if ((v221 & 1) != (v224 & 1))
        {
          goto LABEL_170;
        }

        v217 = v223;
        if (v221)
        {
          goto LABEL_115;
        }
      }

      *(v222 + 8 * (v217 >> 6) + 64) |= 1 << v217;
      v225 = (*(v222 + 48) + 16 * v217);
      *v225 = v211;
      v225[1] = v213;
      v226 = *(v222 + 56) + 24 * v217;
      v227 = v270;
      *v226 = v269;
      *(v226 + 8) = v227;
      *(v226 + 16) = v201;
      v228 = *(v222 + 16);
      v94 = __OFADD__(v228, 1);
      v229 = v228 + 1;
      if (v94)
      {
        goto LABEL_158;
      }

      *(v222 + 16) = v229;
LABEL_116:
      v276 = v222;
      __swift_destroy_boxed_opaque_existential_1(&v272);
      a1 = v263;
      v185 = JSONMap.loadValue(at:)(v263);
      v186 = v194;
      v187 = v195;
      v9 = v210;
      if (v195 > 0xFDu)
      {
        goto LABEL_8;
      }
    }
  }

  v268 = v5;

  v14 = v276;
  v15 = JSONMap.loadValue(at:)(a1);
  if (v17 > 0xFDu)
  {
LABEL_6:
    v276 = v14;

    return v276;
  }

  v130 = v15;
  v131 = v16;
  v132 = v17;
  while (1)
  {
    v141 = JSONMap.offset(after:)(a1);
    v270 = JSONMap.loadValue(at:)(v141);
    if (v143 > 0xFDu)
    {
      goto LABEL_168;
    }

    v144 = v142;
    v145 = v143;
    v146 = JSONMap.offset(after:)(v141);
    v147 = specialized JSONDecoderImpl.unwrapString<A>(from:for:_:)(v130, v131, v132, v267, 0, 0, 0, 255);
    if (v268)
    {
      break;
    }

    v149 = v147;
    v150 = v148;
    v151 = swift_isUniquelyReferenced_nonNull_native();
    *&v272 = v14;
    v152 = specialized __RawDictionaryStorage.find<A>(_:)(v149, v150);
    v154 = *(v14 + 16);
    v155 = (v153 & 1) == 0;
    v94 = __OFADD__(v154, v155);
    v156 = v154 + v155;
    if (v94)
    {
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

    v157 = v153;
    if (*(v14 + 24) < v156)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v156, v151);
      v14 = v272;
      v152 = specialized __RawDictionaryStorage.find<A>(_:)(v149, v150);
      if ((v157 & 1) != (v158 & 1))
      {
        goto LABEL_170;
      }

LABEL_93:
      if (v157)
      {
        goto LABEL_84;
      }

      goto LABEL_94;
    }

    if (v151)
    {
      goto LABEL_93;
    }

    v263 = v152;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation7JSONMapC5ValueOGMd, &_ss18_DictionaryStorageCySS10Foundation7JSONMapC5ValueOGMR);
    v269 = static _DictionaryStorage.copy(original:)();
    if (*(v14 + 16))
    {
      v163 = v269 + 8;
      v164 = v14 + 64;
      v165 = ((1 << *(v269 + 32)) + 63) >> 6;
      if (v269 != v14 || v163 >= v164 + 8 * v165)
      {
        memmove(v163, (v14 + 64), 8 * v165);
      }

      v166 = 0;
      v269[2] = *(v14 + 16);
      v167 = 1 << *(v14 + 32);
      if (v167 < 64)
      {
        v168 = ~(-1 << v167);
      }

      else
      {
        v168 = -1;
      }

      v169 = v168 & *(v14 + 64);
      v170 = (v167 + 63) >> 6;
      if (v169)
      {
        do
        {
          v171 = __clz(__rbit64(v169));
          v264 = ((v169 - 1) & v169);
LABEL_110:
          v174 = v171 | (v166 << 6);
          v175 = 16 * v174;
          v176 = (*(v14 + 48) + 16 * v174);
          v178 = *v176;
          v177 = v176[1];
          v174 *= 24;
          v179 = *(v14 + 56) + v174;
          v180 = *(v179 + 16);
          v181 = v269;
          v182 = (v269[6] + v175);
          v183 = *v179;
          *v182 = v178;
          v182[1] = v177;
          v184 = *(v181 + 56) + v174;
          *v184 = v183;
          *(v184 + 16) = v180;

          v169 = v264;
        }

        while (v264);
      }

      v172 = v166;
      while (1)
      {
        v166 = v172 + 1;
        if (__OFADD__(v172, 1))
        {
          break;
        }

        if (v166 >= v170)
        {
          goto LABEL_112;
        }

        v173 = *(v164 + 8 * v166);
        ++v172;
        if (v173)
        {
          v171 = __clz(__rbit64(v173));
          v264 = ((v173 - 1) & v173);
          goto LABEL_110;
        }
      }

LABEL_164:
      __break(1u);
LABEL_165:
      __break(1u);
LABEL_166:
      __break(1u);
LABEL_167:
      __break(1u);
LABEL_168:
      __break(1u);
LABEL_169:
      __break(1u);
LABEL_170:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }

LABEL_112:

    v14 = v269;
    v152 = v263;
    if (v157)
    {
LABEL_84:
      v133 = 24 * v152;
      v134 = *(v14 + 56) + 24 * v152;
      v135 = *v134;
      v136 = *(v134 + 8);
      v137 = *(v134 + 16);

      v138 = *(v14 + 56) + v133;
      *v138 = v135;
      *(v138 + 8) = v136;
      *(v138 + 16) = v137;
      goto LABEL_85;
    }

LABEL_94:
    *(v14 + 8 * (v152 >> 6) + 64) |= 1 << v152;
    v159 = (*(v14 + 48) + 16 * v152);
    *v159 = v149;
    v159[1] = v150;
    v160 = *(v14 + 56) + 24 * v152;
    *v160 = v270;
    *(v160 + 8) = v144;
    *(v160 + 16) = v145;
    v161 = *(v14 + 16);
    v94 = __OFADD__(v161, 1);
    v162 = v161 + 1;
    if (v94)
    {
      goto LABEL_157;
    }

    *(v14 + 16) = v162;
LABEL_85:
    a1 = v146;
    v130 = JSONMap.loadValue(at:)(v146);
    v131 = v139;
    v132 = v140;
    if (v140 > 0xFDu)
    {
      goto LABEL_6;
    }
  }
}

void JSONDecoderImpl.container<A>(keyedBy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 16);
  v6 = *(v5 + 16);
  if (!v6)
  {
    __break(1u);
LABEL_27:
    __break(1u);
    return;
  }

  v7 = v5 + 24 * v6;
  v8 = *(v7 + 8);
  v9 = *(v7 + 16);
  v10 = *(v7 + 24);
  if (v10 >> 5 != 3)
  {
    v11 = v10 >> 5 == 5 && (v9 | v8) == 0;
    if (v11 && v10 == 160)
    {
      v12 = type metadata accessor for DecodingError();
      swift_allocError();
      v14 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
      *v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
      v27 = *(v3 + 160);

      _CodingPathNode.path.getter(v27);

      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      v28 = MEMORY[0x1E69E6B08];
LABEL_25:
      (*(*(v12 - 8) + 104))(v14, *v28, v12);
      swift_willThrow();
      return;
    }

    v12 = type metadata accessor for DecodingError();
    swift_allocError();
    v14 = v13;
    *v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
    v15 = *(v3 + 160);

    _CodingPathNode.path.getter(v15);

    _StringGuts.grow(_:)(43);

    v30 = 0xD000000000000035;
    v31 = 0x8000000181481DA0;
    v16 = *(v3 + 16);
    v17 = *(v16 + 16);
    if (v17)
    {
      v18 = *(v16 + 24 * v17 + 24) >> 5;
      if (v18 > 2)
      {
        if (v18 == 3)
        {
          v19 = 0xEC0000007972616ELL;
          v20 = 0x6F69746369642061;
        }

        else if (v18 == 4)
        {
          v19 = 0xE800000000000000;
          v20 = 0x7961727261206E61;
        }

        else
        {
          v19 = 0xE400000000000000;
          v20 = 1819047278;
        }
      }

      else if (v18)
      {
        if (v18 == 1)
        {
          v19 = 0xE600000000000000;
          v20 = 0x7265626D756ELL;
        }

        else
        {
          v19 = 0xE400000000000000;
          v20 = 1819242338;
        }
      }

      else
      {
        v19 = 0xE800000000000000;
        v20 = 0x676E697274732061;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
      MEMORY[0x1865CB0E0](v20, v19);

      MEMORY[0x1865CB0E0](0x64616574736E6920, 0xE90000000000002ELL);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      v28 = MEMORY[0x1E69E6AF8];
      goto LABEL_25;
    }

    goto LABEL_27;
  }

  v23 = *(v3 + 160);
  v24 = *(v3 + 136);
  v30 = *(v3 + 128);
  v31 = v24;
  swift_retain_n();
  swift_retain_n();
  sub_1807A98E4(v30, v24);
  v25 = static JSONDecoderImpl.KeyedContainer.stringify(objectRegion:using:codingPathNode:keyDecodingStrategy:)(v8, v9, v3, v23, &v30);

  if (v4)
  {

    sub_1807A5C7C(v30, v31);
  }

  else
  {
    sub_1807A5C7C(v30, v31);
    v30 = v3;
    v31 = v23;
    v32 = v25;
    type metadata accessor for JSONDecoderImpl.KeyedContainer(0, a2, a3, v29);
    swift_getWitnessTable();
    KeyedDecodingContainer.init<A>(_:)();
  }
}

unint64_t sub_1807A98E4(unint64_t result, uint64_t a2)
{
  if (result >= 2)
  {
  }

  return result;
}

void *partial apply for specialized closure #1 in JSONMap.withBuffer<A>(for:perform:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  return specialized closure #1 in JSONMap.withBuffer<A>(for:perform:)(a1, *(v2 + 16), *(v2 + 32), *(v2 + 40), a2);
}

{
  return partial apply for specialized closure #1 in JSONMap.withBuffer<A>(for:perform:)(a1, a2);
}

{
  return specialized closure #1 in JSONMap.withBuffer<A>(for:perform:)(a1, *(v2 + 16), *(v2 + 32), *(v2 + 40), a2);
}

{
  return specialized closure #1 in JSONMap.withBuffer<A>(for:perform:)(a1, *(v2 + 16), *(v2 + 32), *(v2 + 40), a2);
}

void *specialized closure #1 in JSONMap.withBuffer<A>(for:perform:)@<X0>(void *result@<X0>, void *(*a2)(void *__return_ptr, uint64_t, uint64_t, void, uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v7 = result[1];
  v8 = v7 < a4 + a3 || v7 < a4;
  if (v8 || (a4 | a3) < 0 || v7 <= a3)
  {
    __break(1u);
  }

  else
  {
    result = a2(v10, *result + a3, a4, *result, v7);
    if (!v5)
    {
      v9 = v10[1];
      *a5 = v10[0];
      a5[1] = v9;
    }
  }

  return result;
}

uint64_t closure #1 in JSONDecoderImpl.unwrapString<A>(from:for:_:)@<X0>(unsigned __int8 *a1@<X0>, unint64_t a2@<X2>, uint64_t a3@<X3>, char a4@<W4>, char a5@<W5>, uint64_t *a6@<X8>, uint64_t a7@<X1>)
{
  if (a4)
  {
    result = static String._tryFromUTF8(_:)();
    if (v13)
    {
      *a6 = result;
      a6[1] = v13;
    }

    else
    {
      v15 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(a1, a2, a3);
      v17 = v16;
      v19 = v18;
      lazy protocol witness table accessor for type JSONError and conformance JSONError();
      swift_allocError();
      *v20 = v15;
      *(v20 + 8) = v17;
      *(v20 + 16) = v19;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0;
      *(v20 + 40) = 0;
      *(v20 + 48) = 0;
      return swift_willThrow();
    }
  }

  else
  {
    if (a5)
    {
      result = static JSON5Scanner.stringValue(from:fullSource:)(a1, a7, a2, a3);
      if (v7)
      {
        return result;
      }
    }

    else
    {
      result = static JSONScanner.stringValue(from:fullSource:)(a1, a7, a2, a3);
      if (v7)
      {
        return result;
      }
    }

    *a6 = result;
    a6[1] = v14;
  }

  return result;
}

unint64_t String.data(using:allowLossyConversion:)(uint64_t *a1, int64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a4;
  v7 = a3;
  v71[2] = *MEMORY[0x1E69E9840];
  v8 = *a1;
  if (*a1 == 4)
  {

    return _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(v7, v6);
  }

  if (v8 == 7 || v8 == 1)
  {
    if (a2)
    {
      if (v8 == 1)
      {
        v8 = 0xFFFFFFFFLL;
      }

      else
      {
        v8 = 63;
      }

      if ((a4 & 0x1000000000000000) != 0)
      {
        goto LABEL_132;
      }

      if ((a4 & 0x2000000000000000) != 0)
      {
        v11 = HIBYTE(a4) & 0xF;
      }

      else
      {
        v11 = a3 & 0xFFFFFFFFFFFFLL;
      }

      goto LABEL_16;
    }

    if ((a4 & 0x1000000000000000) != 0)
    {
      v46 = String.UTF8View._foreignCount()();
      v47 = 2;
    }

    else
    {
      if ((a4 & 0x2000000000000000) != 0)
      {
        v26 = HIBYTE(a4) & 0xF;
        *&v68 = a3;
        *(&v68 + 1) = a4 & 0xFFFFFFFFFFFFFFLL;
        if (!v26)
        {
          goto LABEL_115;
        }

        if (v26 >= 8)
        {
          if ((a3 & 0x8080808080808080) != 0)
          {
            return 0;
          }

          v27 = 8;
          v38 = v26 > 8;
          v26 -= 8;
          if (!v38)
          {
            goto LABEL_115;
          }
        }

        else
        {
          v27 = 0;
        }

        v39 = &v68 + v27;
        while (1)
        {
          v40 = *v39++;
          if (v40 < 0)
          {
            return 0;
          }

          if (!--v26)
          {
            goto LABEL_115;
          }
        }
      }

      if ((a3 & 0x1000000000000000) == 0)
      {
        goto LABEL_136;
      }

      v15 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v16 = a3 & 0xFFFFFFFFFFFFLL;
      if ((a3 & 0xFFFFFFFFFFFFLL) != 0)
      {
        goto LABEL_23;
      }

LABEL_115:
      if ((v6 & 0x2000000000000000) != 0)
      {
        v46 = HIBYTE(v6) & 0xF;
      }

      else
      {
        v46 = v7 & 0xFFFFFFFFFFFFLL;
      }

      v47 = 1;
    }

    *&v68 = specialized Data.init(count:)(v46);
    *(&v68 + 1) = v48;

    v49 = specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(&v68, v7, v6, v47);

    result = v68;
    if ((v49 & 1) == 0)
    {
      outlined consume of Data._Representation(v68, *(&v68 + 1));
      return 0;
    }

    return result;
  }

  if (v8 != 2415919360)
  {
    goto LABEL_62;
  }

  while (2)
  {
    v19 = 0;
    for (i = 1; ; i = 0)
    {

      v20 = MEMORY[0x1865CB200](v7, v6);
      v21 = v20;
      if (i)
      {
        v22 = calloc(v20, 2uLL);
        if (!v22)
        {
          goto LABEL_151;
        }

        i = v22;
        if ((v6 & 0x1000000000000000) == 0)
        {

          if ((v21 & 0x8000000000000000) == 0)
          {
            String._copyUTF16CodeUnits(into:range:)();
LABEL_57:
            v5 = v21;
            goto LABEL_76;
          }

          goto LABEL_141;
        }

LABEL_139:
        specialized Sequence._copySequenceContents(initializing:)(&v68, i, v21, v7, v6);
        v7 = &v68;
        *&v64 = String.UTF16View.Iterator.next()();
        v6 = v64;

        if ((v6 & 0x10000) != 0)
        {
          goto LABEL_57;
        }

        __break(1u);
LABEL_141:
        __break(1u);
LABEL_142:
        __break(1u);
        goto LABEL_143;
      }

      v5 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_139;
      }

      v22 = calloc(v20 + 1, 2uLL);
      if (!v22)
      {
LABEL_151:
        __break(1u);
        outlined consume of Data._Representation(v22, v23);
        __break(1u);
LABEL_152:
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);

        result = MEMORY[0x1865D2690](v5, -1, -1);
        __break(1u);
        return result;
      }

      i = v22;
      *v22 = v19;
      v19 = v21;
      if (v5 < 1)
      {
        goto LABEL_142;
      }

      if ((v6 & 0x1000000000000000) == 0)
      {

        if (v21 < 0)
        {
          goto LABEL_145;
        }

        String._copyUTF16CodeUnits(into:range:)();
        goto LABEL_76;
      }

LABEL_143:
      specialized Sequence._copySequenceContents(initializing:)(&v68, i + 2, v19, v7, v6);
      v7 = &v68;
      *&v65 = String.UTF16View.Iterator.next()();
      v6 = v65;

      if ((v6 & 0x10000) == 0)
      {
        __break(1u);
LABEL_145:
        __break(1u);
        goto LABEL_146;
      }

LABEL_76:
      if (v8 != 2415919360)
      {
LABEL_81:
        if (v5 + 0x4000000000000000 >= 0)
        {
LABEL_82:
          v68 = xmmword_18121D490;
          return specialized Data.init(bytesNoCopy:count:deallocator:)(i, 2 * v5, &v68);
        }

        goto LABEL_135;
      }

      if (!v5)
      {
        goto LABEL_82;
      }

      v28 = 0;
      v29 = 2 * v5;
      while (!__OFADD__(v28, 1))
      {
        *(i + 2 * v28) = bswap32(*(i + 2 * v28)) >> 16;
        ++v28;
        v29 -= 2;
        if (!v29)
        {
          goto LABEL_81;
        }
      }

      __break(1u);
LABEL_132:
      v11 = String.UTF8View._foreignCount()();
LABEL_16:
      v5 = v67;
      swift_bridgeObjectRetain_n();
      *&v68 = specialized Data.init(count:)(v11);
      *(&v68 + 1) = v12;
      v13 = v8;
      v8 = 0;
      i = specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(&v68, v11, v7, v6, v13);

      v14 = *(&v68 + 1) >> 62;
      if ((*(&v68 + 1) >> 62) <= 1)
      {
        if (!v14)
        {
          a2 = BYTE14(v68);
          goto LABEL_86;
        }

        if (!__OFSUB__(DWORD1(v68), v68))
        {
          a2 = DWORD1(v68) - v68;
          goto LABEL_86;
        }

LABEL_146:
        __break(1u);
LABEL_147:
        __break(1u);
        goto LABEL_148;
      }

      if (v14 != 2)
      {
        a2 = 0;
LABEL_86:
        if (a2 >= i)
        {
          Data._Representation.replaceSubrange(_:with:count:)(i, a2, 0, 0);
          v30 = v68;
          outlined copy of Data._Representation(v68, *(&v68 + 1));
          outlined consume of Data._Representation(v30, *(&v30 + 1));

          return v30;
        }

        __break(1u);
LABEL_135:
        __break(1u);
LABEL_136:
        v15 = _StringObject.sharedUTF8.getter();
        if (!v16)
        {
          goto LABEL_115;
        }

LABEL_23:
        v17 = 0;
        if (v16 >= 1 && (v15 & 7) != 0)
        {
          if ((*v15 & 0x80000000) == 0)
          {
            v17 = 1;
            if (v16 < 2 || ((v15 + 1) & 7) == 0)
            {
              goto LABEL_48;
            }

            if ((v15[1] & 0x80000000) == 0)
            {
              v17 = 2;
              if (v16 < 3 || ((v15 + 2) & 7) == 0)
              {
                goto LABEL_48;
              }

              if ((v15[2] & 0x80000000) == 0)
              {
                v17 = 3;
                if (v16 < 4 || ((v15 + 3) & 7) == 0)
                {
                  goto LABEL_48;
                }

                if ((v15[3] & 0x80000000) == 0)
                {
                  v17 = 4;
                  if (v16 < 5 || (v15 & 7) == 4)
                  {
                    goto LABEL_48;
                  }

                  if ((v15[4] & 0x80000000) == 0)
                  {
                    v17 = 5;
                    if (v16 < 6 || ((v15 + 5) & 7) == 0)
                    {
                      goto LABEL_48;
                    }

                    if ((v15[5] & 0x80000000) == 0)
                    {
                      v17 = 6;
                      if (v16 < 7 || ((v15 + 6) & 7) == 0)
                      {
                        goto LABEL_48;
                      }

                      if ((v15[6] & 0x80000000) == 0)
                      {
                        v17 = 7;
                        if (v16 < 8 || ((v15 - 1) & 7) == 0)
                        {
                          goto LABEL_48;
                        }

                        if ((v15[7] & 0x80000000) == 0)
                        {
                          v17 = 8;
                          goto LABEL_48;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }

        else
        {
LABEL_48:
          if (v16 >= v17 + 8)
          {
            v41 = &v15[v17];
            while ((*v41 & 0x8080808080808080) == 0)
            {
              v41 += 8;
              v18 = v17 + 8;
              v42 = v17 + 16;
              v17 += 8;
              if (v16 < v42)
              {
                goto LABEL_111;
              }
            }
          }

          else
          {
            v18 = v17;
LABEL_111:
            v43 = v16 - v18;
            if (v16 <= v18)
            {
              goto LABEL_115;
            }

            v44 = &v15[v18];
            while (1)
            {
              v45 = *v44++;
              if (v45 < 0)
              {
                break;
              }

              if (!--v43)
              {
                goto LABEL_115;
              }
            }
          }
        }

        return 0;
      }

      v25 = *(v68 + 16);
      v24 = *(v68 + 24);
      a2 = v24 - v25;
      if (!__OFSUB__(v24, v25))
      {
        goto LABEL_86;
      }

      __break(1u);
LABEL_62:
      if (v8 > 2483028223)
      {
        break;
      }

      if (v8 != 10)
      {
        if (v8 != 2348810496)
        {
          goto LABEL_124;
        }

        if (a2)
        {
          *&v68 = v7;
          *(&v68 + 1) = v6;
          lazy protocol witness table accessor for type String and conformance String();
          StringProtocol._ephemeralString.getter();
          v31 = String._bridgeToObjectiveCImpl()();

          v32 = [v31 dataUsingEncoding:2348810496 allowLossyConversion:1];
          goto LABEL_125;
        }

        v55 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(&outlined read-only object #0 of String.data(using:allowLossyConversion:));
        v57 = v56;
        *&v68 = 2617245952;
        v58 = String.data(using:allowLossyConversion:)(&v68, 0, v7, v6);
        if (v59 >> 60 == 15)
        {
          v60 = v58;
          outlined consume of Data._Representation(v55, v57);
          return v60;
        }

        v71[0] = v55;
        v71[1] = v57;
        v69 = &type metadata for Data;
        v70 = &protocol witness table for Data;
        *&v68 = v58;
        *(&v68 + 1) = v59;
        v61 = __swift_project_boxed_opaque_existential_1(&v68, &type metadata for Data);
        v62 = *v61;
        v63 = v61[1];
        outlined copy of Data._Representation(v55, v57);
        specialized Data._Representation.withUnsafeBytes<A>(_:)(v62, v63);
        outlined consume of Data._Representation(v55, v57);
        __swift_destroy_boxed_opaque_existential_1(&v68);
        return v71[0];
      }

      v19 = 65279;
    }

    if (v8 == 2617245952 || v8 == 2550137088)
    {
      v33 = HIBYTE(v6) & 0xF;
      if ((v6 & 0x2000000000000000) == 0)
      {
        v33 = v7;
      }

      v34 = 7;
      if (((v6 >> 60) & ((v7 & 0x800000000000000) == 0)) != 0)
      {
        v34 = 11;
      }

      v35 = String.UnicodeScalarView.distance(from:to:)(0xFuLL, v34 | (v33 << 16), v7, v6);
      if ((v35 - 0x2000000000000000) >> 62 != 3)
      {
        goto LABEL_147;
      }

      i = 4 * v35;
      if (((4 * v35) & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      if (i <= 1024)
      {
        goto LABEL_99;
      }

LABEL_148:
      isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
      if (isStackAllocationSafe)
      {
LABEL_99:
        MEMORY[0x1EEE9AC00](isStackAllocationSafe);
        v5 = &v67[-v37];
        if ((v8 | 0x4000000) == 0x9C000100)
        {
          specialized Sequence._copySequenceContents(initializing:)(&v68, v5, i, v7, v6, v8 != 2617245952);
          outlined destroy of UnicodeScalarToDataAdaptor.Iterator(&v68);
          return _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSryAEG_Tt0g5(v5, i);
        }

        goto LABEL_152;
      }

      v66 = swift_slowAlloc();
      closure #4 in String.data(using:allowLossyConversion:)(v66, i, v7, v6, v8, v71);
      MEMORY[0x1865D2690](v66, -1, -1);
      return v71[0];
    }

    if (v8 == 2483028224)
    {
      continue;
    }

    break;
  }

LABEL_124:
  *&v68 = v7;
  *(&v68 + 1) = v6;
  v50 = a2;
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol._ephemeralString.getter();
  v51 = String._bridgeToObjectiveCImpl()();

  v32 = [v51 dataUsingEncoding:v8 allowLossyConversion:v50 & 1];
LABEL_125:
  v52 = v32;
  swift_unknownObjectRelease();
  if (!v52)
  {
    return 0;
  }

  v53 = v52;
  v54 = specialized Data.init(referencing:)(v53);

  return v54;
}

uint64_t _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(uint64_t a1, unint64_t a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v41[0] = a1;
  v41[1] = a2;
  *&v44 = a1;
  *(&v44 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation15ContiguousBytes_pMd, &_s10Foundation15ContiguousBytes_pMR);
  if (swift_dynamicCast())
  {
    outlined init with take of Equatable(v42, &__src);
    v4 = v46;
    v5 = v47;
    __swift_project_boxed_opaque_existential_1(&__src, v46);
    (*(v5 + 8))(&v44, closure #1 in Data.init<A>(_:), 0, &type metadata for Data._Representation, v4, v5);
    v42[0] = v44;
    __swift_destroy_boxed_opaque_existential_1(&__src);
    goto LABEL_63;
  }

  v43 = 0;
  memset(v42, 0, sizeof(v42));
  outlined destroy of ContiguousBytes?(v42);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(a2) & 0xF;
    *&v42[0] = a1;
    *(&v42[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v6 = v42;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v6 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = _StringObject.sharedUTF8.getter();
  }

  closure #2 in Data.init<A>(_:)(v6, v7, &__src);
  v8 = *(&__src + 1);
  v9 = __src;
  if (*(&__src + 1) >> 60 != 15)
  {
    v42[0] = __src;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v10 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v10 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&v42[0] = _s10Foundation4DataV15_RepresentationO5countAESi_tcfC_0(v10);
  *(&v42[0] + 1) = v11;
  MEMORY[0x1EEE9AC00](*&v42[0]);
  v36[2] = v41;
  specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(partial apply for specialized closure #3 in Data.init<A>(_:), v36);
  v16 = v12;
  v17 = v13;
  v18 = v14;
  v19 = *(&v42[0] + 1) >> 62;
  if ((*(&v42[0] + 1) >> 62) > 1)
  {
    if (v19 == 2)
    {
      v21 = *(*&v42[0] + 16);
      v20 = *(*&v42[0] + 24);
      v22 = __OFSUB__(v20, v21);
      v23 = v20 - v21;
      if (v22)
      {
        goto LABEL_70;
      }

      if (v15 != v23)
      {
        goto LABEL_23;
      }
    }

    else if (v15)
    {
      v24 = 0;
      goto LABEL_60;
    }
  }

  else if (v19)
  {
    if (__OFSUB__(DWORD1(v42[0]), v42[0]))
    {
      goto LABEL_71;
    }

    if (v15 != DWORD1(v42[0]) - LODWORD(v42[0]))
    {
LABEL_23:
      if (v19 == 2)
      {
        v24 = *(*&v42[0] + 24);
      }

      else if (v19 == 1)
      {
        v24 = *&v42[0] >> 32;
      }

      else
      {
        v24 = BYTE14(v42[0]);
      }

LABEL_60:
      if (v24 >= v15)
      {
        Data._Representation.replaceSubrange(_:with:count:)(v15, v24, 0, 0);
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v15 != BYTE14(v42[0]))
  {
    goto LABEL_23;
  }

  v38 = v9;
  if ((v13 & 0x2000000000000000) != 0)
  {
    v25 = HIBYTE(v13) & 0xF;
  }

  else
  {
    v25 = v12 & 0xFFFFFFFFFFFFLL;
  }

  *(&v44 + 7) = 0;
  *&v44 = 0;
  if (4 * v25 == v14 >> 14)
  {
    goto LABEL_57;
  }

  v37 = v8;
  LOBYTE(v26) = 0;
  v27 = (v12 >> 59) & 1;
  if ((v13 & 0x1000000000000000) == 0)
  {
    LOBYTE(v27) = 1;
  }

  v28 = 4 << v27;
  v39 = (v13 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v40 = v13 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v29 = v18 & 0xC;
    v30 = v18;
    if (v29 == v28)
    {
      v30 = _StringGuts._slowEnsureMatchingEncoding(_:)(v18, v16, v17);
    }

    v31 = v30 >> 16;
    if (v30 >> 16 >= v25)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v10 = String.UTF8View._foreignCount()();
      v9 = 0;
      v8 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v17 & 0x1000000000000000) != 0)
    {
      v33 = String.UTF8View._foreignSubscript(position:)();
      if (v29 != v28)
      {
        goto LABEL_46;
      }
    }

    else if ((v17 & 0x2000000000000000) != 0)
    {
      *&__src = v16;
      *(&__src + 1) = v40;
      v33 = *(&__src + v31);
      if (v29 != v28)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v32 = v39;
      if ((v16 & 0x1000000000000000) == 0)
      {
        v32 = _StringObject.sharedUTF8.getter();
      }

      v33 = *(v32 + v31);
      if (v29 != v28)
      {
LABEL_46:
        if ((v17 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v18 = _StringGuts._slowEnsureMatchingEncoding(_:)(v18, v16, v17);
    if ((v17 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v18 = (v18 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v25 <= v18 >> 16)
    {
      goto LABEL_66;
    }

    v18 = String.UTF8View._foreignIndex(after:)();
LABEL_52:
    *(&v44 + v26) = v33;
    v26 = v26 + 1;
    if ((v26 >> 8))
    {
      goto LABEL_65;
    }

    BYTE14(v44) = v26;
    if (v26 == 14)
    {
      *&__src = v44;
      *(&__src + 6) = *(&v44 + 6);
      Data._Representation.append(contentsOf:)(&__src, &__src + 14);
      LOBYTE(v26) = 0;
      BYTE14(v44) = 0;
    }
  }

  while (4 * v25 != v18 >> 14);
  v8 = v37;
  if (v26)
  {
    *&__src = v44;
    *(&__src + 6) = *(&v44 + 6);
    Data._Representation.append(contentsOf:)(&__src, &__src + v26);
    outlined consume of Data?(v38, v8);
    goto LABEL_62;
  }

LABEL_57:

  outlined consume of Data?(v38, v8);
LABEL_63:
  v34 = v42[0];
  outlined copy of Data._Representation(*&v42[0], *(&v42[0] + 1));

  outlined consume of Data._Representation(v34, *(&v34 + 1));
  return v34;
}

uint64_t _s10Foundation4DataV15_RepresentationO5countAESi_tcfC_0(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      type metadata accessor for __DataStorage();
      swift_allocObject();
      __DataStorage.init(length:)(v1);
      if (v1 > 0x7FFFFFFE)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

void *specialized Data.InlineSlice.init(_:)(unint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = a2 - a1;
  }

  else
  {
    v3 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)(a1, v3);
  if (v3 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v3 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    return (v3 << 32);
  }

LABEL_10:
  __break(1u);
  return result;
}