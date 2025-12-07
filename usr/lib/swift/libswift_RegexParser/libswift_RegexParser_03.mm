unint64_t closure #1 in closure #1 in Parser.lexComment()(__int128 *a1)
{
  v2 = String.subscript.getter();
  v4 = v3;

  if ((v2 ^ v4) < 0x4000)
  {
    return 1;
  }

  v7 = *(a1 + 72);
  if (v7 <= 2)
  {
    if (*(a1 + 72))
    {
      if (v7 != 1)
      {
        v8 = 2573;
        v14 = 0xE200000000000000;
        return Parser.tryEat(_:)(*&v8);
      }

      v8 = 10;
    }

    else
    {
      v8 = 13;
    }

LABEL_17:
    v14 = 0xE100000000000000;
    return Parser.tryEat(_:)(*&v8);
  }

  if (v7 == 3)
  {
    specialized Parser.tryEat<A>(anyOf:)(&outlined read-only object #0 of closure #1 in closure #1 in Parser.lexComment());
    v5 = v13;
    swift_arrayDestroy();
    if (!v5)
    {
      return v5;
    }

    return 1;
  }

  if (v7 != 4)
  {
    v8 = 0;
    goto LABEL_17;
  }

  v9 = a1[1];
  v20[0] = *a1;
  v20[1] = v9;
  v10 = a1[3];
  v20[2] = a1[2];
  v20[3] = v10;
  v21[0] = a1[4];
  *(v21 + 9) = *(a1 + 73);
  outlined init with copy of Parser(v20, &v19);
  v11 = String.subscript.getter();
  if (!((v11 ^ v12) >> 14))
  {

    outlined destroy of Parser(v20);
    return 0;
  }

  v15 = Substring.subscript.getter();
  v17 = v16;

  outlined destroy of Parser(v20);
  result = specialized Collection.first.getter(v15, v17);
  if ((result & 0x100000000) == 0)
  {
    v18 = result;

    if ((v18 - 14) <= 0xFFFFFFFB && (v18 - 8232) >= 2 && v18 != 133)
    {
      return 0;
    }

    v5 = 1;
    Parser.advance(_:)(1);
    return v5;
  }

  __break(1u);
  return result;
}

double Parser.lexTrivia()@<D0>(uint64_t a1@<X8>)
{
  Parser.lexQuote()(closure #1 in Parser.lexComment(), &v6);
  v3 = v7;
  if (v7 || (*(v1 + 64) & 1) != 0 && (specialized Parser.tryEatPrefix(maxLength:_:)(0, 1, v1, specialized Source.peekPrefix(maxLength:_:), &v6), (v3 = v7) != 0))
  {
    v4 = v8;
    *a1 = v6;
    *(a1 + 8) = v3;
    *(a1 + 16) = v4;
  }

  else
  {
    *&v4 = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return *&v4;
}

void closure #1 in closure #1 in Parser.lexMatchingOption()(_OWORD *a1@<X0>, char *a2@<X8>)
{
  v4 = a1[1];
  v43[0] = *a1;
  v43[1] = v4;
  v5 = a1[3];
  v43[2] = a1[2];
  v43[3] = v5;
  v44[0] = a1[4];
  *(v44 + 9) = *(a1 + 73);
  outlined init with copy of Parser(v43, &v34);
  v6 = String.subscript.getter();
  if (!((v6 ^ v7) >> 14))
  {

    outlined destroy of Parser(v43);
LABEL_3:
    v8 = 20;
LABEL_4:
    *a2 = v8;
    return;
  }

  v9 = Substring.subscript.getter();
  v11 = v10;

  outlined destroy of Parser(v43);
  Parser.advance(_:)(1);
  if (v9 == 105 && v11 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    *a2 = 0;
    return;
  }

  if (v9 == 74 && v11 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 1;
    goto LABEL_4;
  }

  if (v9 == 109 && v11 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 2;
    goto LABEL_4;
  }

  if (v9 == 110 && v11 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 3;
    goto LABEL_4;
  }

  if (v9 == 115 && v11 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 4;
    goto LABEL_4;
  }

  if (v9 == 85 && v11 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 5;
    goto LABEL_4;
  }

  if (v9 == 120 && v11 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v12._countAndFlagsBits = 120;
    v12._object = 0xE100000000000000;
    if (Parser.tryEat(_:)(v12))
    {
      v8 = 7;
    }

    else
    {
      v8 = 6;
    }

    goto LABEL_4;
  }

  if (v9 == 119 && v11 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 8;
    goto LABEL_4;
  }

  if (v9 == 68 && v11 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 9;
    goto LABEL_4;
  }

  if (v9 == 80 && v11 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 10;
    goto LABEL_4;
  }

  if (v9 == 83 && v11 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 11;
    goto LABEL_4;
  }

  if (v9 == 87 && v11 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 12;
    goto LABEL_4;
  }

  if ((v9 != 121 || v11 != 0xE100000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if (v9 == 88 && v11 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v8 = 15;
      goto LABEL_4;
    }

    if (v9 == 117 && v11 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v8 = 16;
      goto LABEL_4;
    }

    if (v9 == 98 && v11 == 0xE100000000000000)
    {
    }

    else
    {
      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v27 & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    v8 = 17;
    goto LABEL_4;
  }

  v13._countAndFlagsBits = 123;
  v13._object = 0xE100000000000000;
  if (!Parser.tryEat(_:)(v13))
  {
    v34 = xmmword_1C0C7E380;
    v35 = 0uLL;
    LOBYTE(v36) = 3;
    *&v30 = *(a1 + 2);
    *(&v30 + 1) = v30;
    v21 = &v34;
    v22 = &v30;
LABEL_74:
    Diagnostics.error(_:at:)(v21, v22);
    v8 = 13;
    goto LABEL_4;
  }

  v14 = a1[1];
  v34 = *a1;
  v35 = v14;
  v15 = a1[3];
  v16 = a1[4];
  v36 = a1[2];
  v37 = v15;
  v17 = *(a1 + 2);
  v38[0] = v16;
  *(v38 + 9) = *(a1 + 73);
  v18 = v35;
  outlined init with copy of Parser(&v34, &v30);
  v19 = String.subscript.getter();
  if (!((v19 ^ v20) >> 14))
  {

    outlined destroy of Parser(&v34);
LABEL_73:
    *&v30 = 0xD000000000000011;
    *(&v30 + 1) = 0x80000001C0C86DD0;
    v31 = 0;
    v32 = 0;
    v33 = 3;
    *&v39 = v18;
    *(&v39 + 1) = v18;
    v21 = &v30;
    v22 = &v39;
    goto LABEL_74;
  }

  v23 = Substring.subscript.getter();
  v25 = v24;

  outlined destroy of Parser(&v34);
  Parser.advance(_:)(1);
  v18 = *(a1 + 2);
  if (v18 >> 14 < v17 >> 14)
  {
    __break(1u);
    return;
  }

  if (!v25)
  {
    goto LABEL_73;
  }

  if (v23 == 125 && v25 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    goto LABEL_73;
  }

  if (v23 == 119 && v25 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v26 = 14;
  }

  else
  {
    if (v23 == 103 && v25 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
    }

    else
    {
      *&v30 = v23;
      *(&v30 + 1) = v25;
      v31 = 0;
      v32 = 0;
      v33 = 16;
      *&v39 = v17;
      *(&v39 + 1) = v18;

      Diagnostics.error(_:at:)(&v30, &v39);
      swift_bridgeObjectRelease_n();
    }

    v26 = 13;
  }

  v28._countAndFlagsBits = 125;
  v28._object = 0xE100000000000000;
  if (!Parser.tryEat(_:)(v28))
  {
    v39 = xmmword_1C0C7E390;
    v40 = 0;
    v41 = 0;
    v42 = 3;
    *&v29 = *(a1 + 2);
    *(&v29 + 1) = v29;
    Diagnostics.error(_:at:)(&v39, &v29);
  }

  *a2 = v26;
}

uint64_t Parser.lexMatchingOptionSequence()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = v1[1];
  v140 = *v1;
  v141 = v4;
  v5 = v1[3];
  v142 = v1[2];
  v143 = v5;
  v144[0] = v1[4];
  *(v144 + 9) = *(v1 + 73);
  v6 = v141;
  outlined init with copy of Parser(&v140, v132);
  v7 = String.subscript.getter();
  if ((v7 ^ v8) >> 14)
  {
    v11 = Substring.subscript.getter();
    v13 = v12;

    outlined destroy of Parser(&v140);
    if (v11 == 41 && v13 == 0xE100000000000000)
    {
    }

    else
    {
      v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v35 & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    LOBYTE(v132[0]) = 1;
    LOBYTE(v122) = 1;
    *a1 = 0;
    *(a1 + 8) = 0;
    v36 = MEMORY[0x1E69E7CC0];
    *(a1 + 16) = 1;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 24) = v36;
    *(a1 + 48) = 1;
    *(a1 + 56) = v36;
    return result;
  }

  outlined destroy of Parser(&v140);
LABEL_3:
  v9._countAndFlagsBits = 94;
  v9._object = 0xE100000000000000;
  result = Parser.tryEat(_:)(v9);
  if (result)
  {
    v103 = *(v2 + 2);
    if (v103 >> 14 < v6 >> 14)
    {
      goto LABEL_89;
    }

    v105 = v6;
  }

  else
  {
    v105 = 0;
    v103 = 0;
  }

  v104 = result;
  v102 = result ^ 1;
  v14 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v15 = *(v2 + 2);
    v16 = v2[3];
    v17 = v2[4];
    v18 = v2[1];
    v133 = v2[2];
    v134 = v16;
    *v135 = v17;
    *&v135[9] = *(v2 + 73);
    v132[0] = *v2;
    v132[1] = v18;
    v129 = v133;
    v130 = v16;
    v131 = v17;
    v127 = v132[0];
    v128 = v18;
    v19 = *&v135[16];
    v20 = v135[24];
    outlined init with copy of Parser(v132, &v122);
    closure #1 in closure #1 in Parser.lexMatchingOption()(v2, v107);
    v21 = v107[0];
    if (v107[0] == 20)
    {
      break;
    }

    v124 = v129;
    v125 = v130;
    *v126 = v131;
    v122 = v127;
    v123 = v128;
    *&v126[16] = v19;
    v126[24] = v20;
    result = outlined destroy of Parser(&v122);
    v22 = *(v2 + 2);
    if (v22 >> 14 < v15 >> 14)
    {
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
      return result;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 2) + 1, 1, v14);
    }

    v24 = *(v14 + 2);
    v23 = *(v14 + 3);
    if (v24 >= v23 >> 1)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v14);
    }

    *(v14 + 2) = v24 + 1;
    v25 = &v14[24 * v24];
    v25[32] = v21;
    *(v25 + 5) = v15;
    *(v25 + 6) = v22;
  }

  v26 = *&v135[16];
  v27 = v135[24];
  v28 = *(v2 + 10);
  v106 = (v2 + 5);
  v29 = v2[3];
  v124 = v2[2];
  v125 = v29;
  *v126 = v2[4];
  *&v126[9] = *(v2 + 73);
  v30 = v2[1];
  v122 = *v2;
  v123 = v30;

  result = outlined destroy of Parser(&v122);
  if (v27 == 1 || ((v31 = *(v26 + 2), v32 = *(v28 + 16), v32 >= v31) ? (v33 = *(v26 + 2)) : (v33 = *(v28 + 16)), v31 ? (v34 = v33) : (v34 = 0), v34 == v32))
  {
  }

  else
  {
    v100 = a1;
    if (v34 >= v32)
    {
      goto LABEL_91;
    }

    v37 = ~v34 + v32;
    for (i = 80 * v34 + 32; ; i += 80)
    {
      v112 = *(v28 + i);
      v39 = *(v28 + i + 16);
      v40 = *(v28 + i + 32);
      v41 = *(v28 + i + 48);
      *&v115[9] = *(v28 + i + 57);
      v114 = v40;
      *v115 = v41;
      v113 = v39;
      if (!v112)
      {
        outlined init with copy of Diagnostic(&v112, &v108);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v26 + 2) + 1, 1, v26);
        }

        v43 = *(v26 + 2);
        v42 = *(v26 + 3);
        if (v43 >= v42 >> 1)
        {
          v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1, v26);
        }

        *(v26 + 2) = v43 + 1;
        v44 = &v26[80 * v43];
        *(v44 + 2) = v112;
        v45 = v113;
        v46 = v114;
        v47 = *v115;
        *(v44 + 89) = *&v115[9];
        *(v44 + 4) = v46;
        *(v44 + 5) = v47;
        *(v44 + 3) = v45;
        v19 = v26;
      }

      if (!v37)
      {
        break;
      }

      --v37;
    }

    a1 = v100;
  }

  v48 = v130;
  v2[2] = v129;
  v2[3] = v48;
  v2[4] = v131;
  v49 = v128;
  *v2 = v127;
  v2[1] = v49;
  *(v2 + 10) = v19;
  *(v2 + 88) = v20;
  v50 = *(v2 + 2);
  v51._countAndFlagsBits = 45;
  v51._object = 0xE100000000000000;
  result = Parser.tryEat(_:)(v51);
  if ((result & 1) == 0)
  {
    v72 = 0;
    v73 = 0;
    v52 = MEMORY[0x1E69E7CC0];
    v74 = v105;
    if (((v104 | result) & 1) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_75;
  }

  if (*(v2 + 2) >> 14 < v50 >> 14)
  {
    goto LABEL_90;
  }

  v97 = result;
  v98 = *(v2 + 2);
  v99 = v50;
  if (v104)
  {
    v136 = 6uLL;
    v137 = 0;
    v138 = 0;
    v139 = 36;
    *&v122 = v105;
    *(&v122 + 1) = v103;
    Diagnostics.error(_:at:)(&v136, &v122);
  }

  v101 = a1;
  v52 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v53 = *(v2 + 2);
    v54 = v2[3];
    v55 = v2[4];
    v56 = v2[1];
    v124 = v2[2];
    v125 = v54;
    *v126 = v55;
    *&v126[9] = *(v2 + 73);
    v122 = *v2;
    v123 = v56;
    v119 = v124;
    v120 = v54;
    v121 = v55;
    v117 = v122;
    v118 = v56;
    v57 = *&v126[16];
    v58 = v126[24];
    outlined init with copy of Parser(&v122, &v112);
    closure #1 in closure #1 in Parser.lexMatchingOption()(v2, &v116);
    v59 = v116;
    if (v116 == 20)
    {
      break;
    }

    v114 = v119;
    *v115 = v120;
    *&v115[16] = v121;
    v112 = v117;
    v113 = v118;
    *&v115[32] = v57;
    v115[40] = v58;
    result = outlined destroy of Parser(&v112);
    v60 = *(v2 + 2);
    if (v60 >> 14 < v53 >> 14)
    {
      goto LABEL_88;
    }

    if ((v59 - 15) >= 3)
    {
      if ((v59 - 13) > 1)
      {
        goto LABEL_58;
      }

      LOBYTE(v112) = 1;
      *(&v112 + 1) = 0xD00000000000002FLL;
      *&v113 = 0x80000001C0C865C0;
      *(&v113 + 1) = v53;
      *&v114 = v60;
      v61 = 11;
    }

    else
    {
      LOBYTE(v112) = 1;
      *(&v112 + 1) = 0xD00000000000002CLL;
      *&v113 = 0x80000001C0C86590;
      *(&v113 + 1) = v53;
      *&v114 = v60;
      v61 = 12;
    }

    *(&v114 + 1) = v61;
    memset(v115, 0, 24);
    v115[24] = 36;
    if (*(v2 + 88) == 1)
    {
      outlined destroy of Diagnostic(&v112);
    }

    else
    {
      v62 = *v106;
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

      *(v62 + 2) = v64 + 1;
      v65 = &v62[80 * v64];
      *(v65 + 2) = v112;
      v66 = v113;
      v67 = v114;
      v68 = *v115;
      *(v65 + 89) = *&v115[9];
      *(v65 + 4) = v67;
      *(v65 + 5) = v68;
      *(v65 + 3) = v66;
      *v106 = v62;
    }

LABEL_58:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v52 + 2) + 1, 1, v52);
    }

    v70 = *(v52 + 2);
    v69 = *(v52 + 3);
    if (v70 >= v69 >> 1)
    {
      v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v69 > 1), v70 + 1, 1, v52);
    }

    *(v52 + 2) = v70 + 1;
    v71 = &v52[24 * v70];
    v71[32] = v59;
    *(v71 + 5) = v53;
    *(v71 + 6) = v60;
  }

  v75 = *&v126[16];
  v76 = v126[24];
  v77 = *(v2 + 10);
  v78 = v2[3];
  v114 = v2[2];
  *v115 = v78;
  *&v115[16] = v2[4];
  *&v115[25] = *(v2 + 73);
  v79 = v2[1];
  v112 = *v2;
  v113 = v79;

  result = outlined destroy of Parser(&v112);
  if (v76 == 1)
  {
    goto LABEL_73;
  }

  v80 = *(v75 + 2);
  v81 = *(v77 + 16);
  v82 = v81 >= v80 ? *(v75 + 2) : *(v77 + 16);
  v83 = v80 ? v82 : 0;
  if (v83 == v81)
  {
    goto LABEL_73;
  }

  if (v83 >= v81)
  {
    goto LABEL_92;
  }

  v86 = ~v83 + v81;
  for (j = 80 * v83 + 32; ; j += 80)
  {
    v108 = *(v77 + j);
    v88 = *(v77 + j + 16);
    v89 = *(v77 + j + 32);
    v90 = *(v77 + j + 48);
    *(v111 + 9) = *(v77 + j + 57);
    v110 = v89;
    v111[0] = v90;
    v109 = v88;
    if (!v108)
    {
      outlined init with copy of Diagnostic(&v108, v107);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v75 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v75 + 2) + 1, 1, v75);
      }

      v92 = *(v75 + 2);
      v91 = *(v75 + 3);
      if (v92 >= v91 >> 1)
      {
        v75 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v91 > 1), v92 + 1, 1, v75);
      }

      *(v75 + 2) = v92 + 1;
      v93 = &v75[80 * v92];
      *(v93 + 2) = v108;
      v94 = v109;
      v95 = v110;
      v96 = v111[0];
      *(v93 + 89) = *(v111 + 9);
      *(v93 + 4) = v95;
      *(v93 + 5) = v96;
      *(v93 + 3) = v94;
      v57 = v75;
    }

    if (!v86)
    {
      break;
    }

    --v86;
  }

LABEL_73:

  v84 = v120;
  v2[2] = v119;
  v2[3] = v84;
  v2[4] = v121;
  v85 = v118;
  *v2 = v117;
  v2[1] = v85;
  *(v2 + 10) = v57;
  *(v2 + 88) = v58;
  v72 = v99;
  a1 = v101;
  v74 = v105;
  v73 = v98;
  result = v97;
  if ((v104 | v97))
  {
LABEL_75:
    LOBYTE(v122) = v102 & 1;
    LOBYTE(v112) = (result ^ 1) & 1;
    *a1 = v74;
    *(a1 + 8) = v103;
    *(a1 + 16) = v102 & 1;
    *(a1 + 24) = v14;
    *(a1 + 32) = v72;
    *(a1 + 40) = v73;
    *(a1 + 48) = (result ^ 1) & 1;
    *(a1 + 56) = v52;
    return result;
  }

LABEL_74:
  if (*(v14 + 2))
  {
    goto LABEL_75;
  }

  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t Parser.lexChangeMatchingOptionAtom()@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  v54 = *(v1 + 32);
  v55 = v3;
  *v56 = *(v1 + 64);
  v4 = *v56;
  *&v56[9] = *(v1 + 73);
  v5 = *(v1 + 16);
  v53[0] = *v1;
  v53[1] = v5;
  v50 = v54;
  v51 = v3;
  v52 = v4;
  v48 = v53[0];
  v49 = v5;
  v6 = *&v56[16];
  v7 = v56[24];
  outlined init with copy of Parser(v53, &v43);
  if ((specialized Parser.tryEat<A>(sequence:)(16168, 0xE200000000000000) & 1) == 0 || (Parser.lexMatchingOptionSequence()(&v43), v8 = *(&v44 + 1), v37 = v44, v34 = v45, v35 = v46, v36 = v43, !*(&v44 + 1)))
  {
    v11 = *&v56[16];
    v12 = v56[24];
    v13 = *(v1 + 80);
    v14 = *(v1 + 48);
    v45 = *(v1 + 32);
    v46 = v14;
    *v47 = *(v1 + 64);
    *&v47[9] = *(v1 + 73);
    v15 = *(v1 + 16);
    v43 = *v1;
    v44 = v15;

    result = outlined destroy of Parser(&v43);
    if (v12 == 1)
    {
    }

    else
    {
      v16 = *(v11 + 2);
      v17 = *(v13 + 16);
      if (v17 >= v16)
      {
        v18 = *(v11 + 2);
      }

      else
      {
        v18 = *(v13 + 16);
      }

      if (v16)
      {
        v19 = v18;
      }

      else
      {
        v19 = 0;
      }

      if (v19 == v17)
      {
        result = swift_unknownObjectRelease();
      }

      else
      {
        v33 = v7;
        if (v19 >= v17)
        {
          __break(1u);
          return result;
        }

        v20 = ~v19 + v17;
        for (i = 80 * v19 + 32; ; i += 80)
        {
          v39 = *(v13 + i);
          v22 = *(v13 + i + 16);
          v23 = *(v13 + i + 32);
          v24 = *(v13 + i + 48);
          *(v42 + 9) = *(v13 + i + 57);
          v41 = v23;
          v42[0] = v24;
          v40 = v22;
          if (!v39)
          {
            outlined init with copy of Diagnostic(&v39, v38);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
            }

            v26 = *(v11 + 2);
            v25 = *(v11 + 3);
            if (v26 >= v25 >> 1)
            {
              v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v11);
            }

            *(v11 + 2) = v26 + 1;
            v27 = &v11[80 * v26];
            *(v27 + 2) = v39;
            v28 = v40;
            v29 = v41;
            v30 = v42[0];
            *(v27 + 89) = *(v42 + 9);
            *(v27 + 4) = v29;
            *(v27 + 5) = v30;
            *(v27 + 3) = v28;
            v6 = v11;
          }

          if (!v20)
          {
            break;
          }

          --v20;
        }

        swift_unknownObjectRelease();

        v7 = v33;
      }
    }

    v31 = v51;
    *(v1 + 32) = v50;
    *(v1 + 48) = v31;
    *(v1 + 64) = v52;
    v32 = v49;
    *v1 = v48;
    *(v1 + 16) = v32;
    *(v1 + 80) = v6;
    *(v1 + 88) = v7;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    return result;
  }

  v9._countAndFlagsBits = 41;
  v9._object = 0xE100000000000000;
  if (!Parser.tryEat(_:)(v9))
  {
    v39 = xmmword_1C0C7E3A0;
    v40 = 0uLL;
    LOBYTE(v41) = 3;
    *&v43 = *(v1 + 16);
    *(&v43 + 1) = v43;
    Diagnostics.error(_:at:)(&v39, &v43);
  }

  v45 = v50;
  v46 = v51;
  *v47 = v52;
  v43 = v48;
  v44 = v49;
  *&v47[16] = v6;
  v47[24] = v7;
  result = outlined destroy of Parser(&v43);
  *a1 = v36;
  *(a1 + 16) = v37;
  *(a1 + 24) = v8;
  *(a1 + 32) = v34;
  *(a1 + 48) = v35;
  return result;
}

uint64_t Parser.lexExplicitPCRE2GroupStart()@<X0>(uint64_t a1@<X8>)
{
  *&v67[9] = *(v1 + 73);
  v3 = v1[3];
  v65 = v1[2];
  v66 = v3;
  *v67 = v1[4];
  v4 = v1[1];
  v64[0] = *v1;
  v64[1] = v4;
  v61 = v65;
  v62 = v3;
  v63 = *v67;
  v59 = v64[0];
  v60 = v4;
  v5 = *&v67[16];
  v6 = v67[24];
  outlined init with copy of Parser(v64, &v49);
  if (specialized Parser.tryEat<A>(sequence:)(10792, 0xE200000000000000))
  {
    if (specialized Parser.tryEat<A>(sequence:)(0x3A63696D6F7461, 0xE700000000000000))
    {
      v7 = 3;
LABEL_7:
      v58 = 0;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v51 = v61;
      v52 = v62;
      *v53 = v63;
      v49 = v59;
      v50 = v60;
      *&v53[16] = v5;
      v53[24] = v6;
      result = outlined destroy of Parser(&v49);
      *a1 = v7;
      v9 = v54;
      *(a1 + 24) = v55;
      v10 = v57;
      *(a1 + 40) = v56;
      *(a1 + 56) = v10;
      *(a1 + 72) = v58;
      *(a1 + 8) = v9;
      *(a1 + 80) = 3;
      return result;
    }

    if (specialized Parser.tryEat<A>(sequence:)(979463280, 0xE400000000000000) & 1) != 0 || (specialized Parser.tryEat<A>(sequence:)(0xD000000000000013, 0x80000001C0C888F0))
    {
      v7 = 4;
      goto LABEL_7;
    }

    if (specialized Parser.tryEat<A>(sequence:)(979463278, 0xE400000000000000) & 1) != 0 || (specialized Parser.tryEat<A>(sequence:)(0xD000000000000013, 0x80000001C0C88910))
    {
      v7 = 5;
      goto LABEL_7;
    }

    if (specialized Parser.tryEat<A>(sequence:)(979528816, 0xE400000000000000) & 1) != 0 || (specialized Parser.tryEat<A>(sequence:)(0xD000000000000014, 0x80000001C0C88930))
    {
      v7 = 7;
      goto LABEL_7;
    }

    if (specialized Parser.tryEat<A>(sequence:)(979528814, 0xE400000000000000) & 1) != 0 || (specialized Parser.tryEat<A>(sequence:)(0xD000000000000014, 0x80000001C0C88950))
    {
      v7 = 8;
      goto LABEL_7;
    }

    if (specialized Parser.tryEat<A>(sequence:)(0x3A616C70616ELL, 0xE600000000000000) & 1) != 0 || (specialized Parser.tryEat<A>(sequence:)(0xD00000000000001ELL, 0x80000001C0C88970))
    {
      v7 = 6;
      goto LABEL_7;
    }

    if (specialized Parser.tryEat<A>(sequence:)(0x3A626C70616ELL, 0xE600000000000000) & 1) != 0 || (specialized Parser.tryEat<A>(sequence:)(0xD00000000000001FLL, 0x80000001C0C88990))
    {
      v7 = 9;
      goto LABEL_7;
    }

    if (specialized Parser.tryEat<A>(sequence:)(3830387, 0xE300000000000000) & 1) != 0 || (specialized Parser.tryEat<A>(sequence:)(0x725F747069726373, 0xEB000000003A6E75))
    {
      v7 = 10;
      goto LABEL_7;
    }

    if (specialized Parser.tryEat<A>(sequence:)(980579169, 0xE400000000000000) & 1) != 0 || (specialized Parser.tryEat<A>(sequence:)(0xD000000000000012, 0x80000001C0C889B0))
    {
      v7 = 11;
      goto LABEL_7;
    }
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v45 = 0u;
  v46 = 0u;
  v58 = 0;
  v72 = 0;
  v11 = *&v67[16];
  v12 = v67[24];
  v42 = 0;
  v47 = 0;
  v43 = 0u;
  v44 = 0u;
  v48 = -1;
  outlined destroy of AST.Atom.Callout.OnigurumaTag?(&v42, &unk_1F402C068, &cache variable for noncanonical specialized generic type metadata for AST.Group.Kind?);
  v13 = *(v1 + 10);
  v14 = v1[3];
  v51 = v1[2];
  v52 = v14;
  *v53 = v1[4];
  *&v53[9] = *(v1 + 73);
  v15 = v1[1];
  v49 = *v1;
  v50 = v15;

  result = outlined destroy of Parser(&v49);
  if (v12 == 1)
  {

LABEL_50:
    v31 = v62;
    v1[2] = v61;
    v1[3] = v31;
    v1[4] = v63;
    v32 = v60;
    *v1 = v59;
    v1[1] = v32;
    *(v1 + 10) = v5;
    *(v1 + 88) = v6;
    *a1 = 0;
    v33 = v69;
    *(a1 + 8) = v68;
    v34 = v70;
    v35 = v71;
    *(a1 + 72) = v72;
    *(a1 + 56) = v35;
    *(a1 + 40) = v34;
    *(a1 + 24) = v33;
    *(a1 + 80) = -1;
    return result;
  }

  v16 = *(v11 + 2);
  v17 = *(v13 + 16);
  if (v17 >= v16)
  {
    v18 = *(v11 + 2);
  }

  else
  {
    v18 = *(v13 + 16);
  }

  if (v16)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 == v17)
  {
    result = swift_unknownObjectRelease();
    goto LABEL_50;
  }

  v36 = v6;
  if (v19 < v17)
  {

    v20 = ~v19 + v17;
    for (i = 80 * v19 + 32; ; i += 80)
    {
      v38 = *(v13 + i);
      v22 = *(v13 + i + 16);
      v23 = *(v13 + i + 32);
      v24 = *(v13 + i + 48);
      *(v41 + 9) = *(v13 + i + 57);
      v40 = v23;
      v41[0] = v24;
      v39 = v22;
      if (!v38)
      {
        outlined init with copy of Diagnostic(&v38, v37);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
        }

        v26 = *(v11 + 2);
        v25 = *(v11 + 3);
        if (v26 >= v25 >> 1)
        {
          v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v11);
        }

        *(v11 + 2) = v26 + 1;
        v27 = &v11[80 * v26];
        *(v27 + 2) = v38;
        v28 = v39;
        v29 = v40;
        v30 = v41[0];
        *(v27 + 89) = *(v41 + 9);
        *(v27 + 4) = v29;
        *(v27 + 5) = v30;
        *(v27 + 3) = v28;
        v5 = v11;
      }

      if (!v20)
      {
        break;
      }

      --v20;
    }

    swift_unknownObjectRelease();

    v6 = v36;
    goto LABEL_50;
  }

  __break(1u);
  return result;
}

void closure #1 in Parser.expectIdentifier(_:endingWith:eatEnding:)(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, unsigned __int8 a4@<W3>, void *a5@<X8>)
{
  v9 = a1[2];
  v10 = String.subscript.getter();
  v12 = v11;

  if (v10 ^ v12) < 0x4000 || (v13 = String.subscript.getter(), v17 = specialized Sequence<>.starts<A>(with:)(a2, a3, v13, v14, v15, v16), , (v17))
  {
    v95 = a4;
    v96 = 0;
    v97 = 0;
    v98 = 26;
    *&v92 = v9;
    *(&v92 + 1) = v9;
    Diagnostics.error(_:at:)(&v95, &v92);
    goto LABEL_4;
  }

  v76 = a2;
  v18 = *(a1 + 1);
  v78 = *a1;
  v79 = v18;
  v19 = *(a1 + 3);
  v80 = *(a1 + 2);
  v81 = v19;
  v82[0] = *(a1 + 4);
  *(v82 + 9) = *(a1 + 73);
  v20 = v79;
  outlined init with copy of Parser(&v78, &v95);
  v21 = String.subscript.getter();
  if (!((v21 ^ v22) >> 14))
  {
    goto LABEL_43;
  }

  Substring.subscript.getter();
  v24 = v23;

  v25 = String.index(after:)();

  if (v25 >> 14 < v20 >> 14)
  {
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:

    outlined destroy of Parser(&v78);
    goto LABEL_44;
  }

  outlined destroy of Parser(&v78);
  if (!v24)
  {
LABEL_44:
    __break(1u);
    return;
  }

  v26 = Character.isNumber.getter();

  if (v26)
  {
    v87 = a4;
    v88 = 0;
    v89 = 0;
    v90 = 28;
    *&v95 = v20;
    *(&v95 + 1) = v25;
    Diagnostics.error(_:at:)(&v87, &v95);
  }

  specialized Parser.tryEatPrefix(maxLength:_:)(0, 1, a1, specialized Source.peekPrefix(maxLength:_:), &v95);
  v27 = *(&v95 + 1);
  if (*(&v95 + 1))
  {
    v28 = v95;

    *a5 = v28;
    a5[1] = v27;
    return;
  }

  v83 = a4;
  v84 = 0;
  v85 = 0;
  v86 = 27;
  *&v95 = v20;
  *(&v95 + 1) = v25;
  Diagnostics.error(_:at:)(&v83, &v95);

  v105 = 0;
  v106 = 0xE000000000000000;
  v29 = a1[2];
  v30 = String.subscript.getter();
  v32 = v31;

  if (v30 ^ v32) < 0x4000 || (v33 = String.subscript.getter(), v37 = specialized Sequence<>.starts<A>(with:)(v76, a3, v33, v34, v35, v36), , (v37))
  {

    v38 = v29;
    goto LABEL_37;
  }

  v39 = *a1;
  v40 = a1[1];
  v71 = a1[6];
  v72 = a1[5];
  v70 = *(a1 + 7);
  v68 = a3;
  v69 = *(a1 + 72);
  v67 = v29;
  v38 = v29;
  v73 = *(a1 + 32);
  v74 = *(a1 + 88);
  while (1)
  {
    v42 = a1[2];
    v41 = a1[3];
    v43 = a1[10];
    *&v95 = v39;
    *(&v95 + 1) = v40;
    v96 = v42;
    v97 = v41;
    v98 = v73;
    v99 = v72;
    v100 = v71;
    v101 = v70;
    v102 = v69;
    v103 = v43;
    v104 = v74;
    outlined init with copy of Parser(&v95, &v92);
    v44 = String.subscript.getter();
    if (!((v44 ^ v45) >> 14))
    {
      break;
    }

    v75 = Substring.subscript.getter();
    v47 = v46;

    outlined destroy of Parser(&v95);
    String.subscript.getter();
    v38 = Substring.index(_:offsetBy:limitedBy:)();
    v49 = v48;

    if (v49)
    {
      strcpy(v91, "UNREACHABLE: ");
      HIWORD(v91[1]) = -4864;
      MEMORY[0x1C68E0BF0](0xD000000000000015, 0x80000001C0C86F20);
      LOBYTE(v92) = 0;
      *(&v92 + 1) = v91[0];
      *&v93 = v91[1];
      *(&v93 + 1) = v42;
      *v94 = v42;
      memset(&v94[8], 0, 32);
      v94[40] = -1;
      if (v74)
      {
        outlined destroy of Diagnostic(&v92);
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v43 + 2) + 1, 1, v43);
        }

        v51 = *(v43 + 2);
        v50 = *(v43 + 3);
        if (v51 >= v50 >> 1)
        {
          v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1, v43);
        }

        *(v43 + 2) = v51 + 1;
        v52 = &v43[80 * v51];
        *(v52 + 2) = v92;
        v53 = v93;
        v54 = *v94;
        v55 = *&v94[16];
        *(v52 + 89) = *&v94[25];
        *(v52 + 4) = v54;
        *(v52 + 5) = v55;
        *(v52 + 3) = v53;
        a1[10] = v43;
      }

      String.subscript.getter();
      v56 = Substring.distance(from:to:)();

      if (v56 < 1 || (String.subscript.getter(), v38 = Substring.index(_:offsetBy:limitedBy:)(), v58 = v57, , (v58 & 1) != 0))
      {
        v38 = v42;
        goto LABEL_32;
      }

      if (v41 >> 14 < v38 >> 14)
      {
        goto LABEL_42;
      }
    }

    else if (v41 >> 14 < v38 >> 14)
    {
      goto LABEL_40;
    }

    a1[2] = v38;
    a1[3] = v41;
LABEL_32:
    MEMORY[0x1C68E0BE0](v75, v47);

    v59 = String.subscript.getter();
    v61 = v60;

    if ((v59 ^ v61) >= 0x4000)
    {
      v62 = String.subscript.getter();
      v66 = specialized Sequence<>.starts<A>(with:)(v76, v68, v62, v63, v64, v65);

      if ((v66 & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_36;
  }

  outlined destroy of Parser(&v95);
LABEL_36:

  v29 = v67;
LABEL_37:
  if (v38 >> 14 < v29 >> 14)
  {
    goto LABEL_41;
  }

LABEL_4:
  *a5 = 0;
  a5[1] = 0xE000000000000000;
}

uint64_t Character.isWordCharacter.getter(uint64_t a1, uint64_t a2)
{
  if ((Character.isLetter.getter() & 1) != 0 || (Character.isNumber.getter() & 1) != 0 || a1 == 95 && a2 == 0xE100000000000000)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void Parser.expectNamedGroup(endingWith:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18 = 0u;
  v19 = 0u;
  lexBalanced #1 (_:) in Parser.expectNamedGroup(endingWith:)(&v18, v2, a1, v29);
  v33 = v29[2];
  v34 = v29[3];
  v35 = v29[4];
  v31 = v29[0];
  v32 = v29[1];
  v5 = v30;
  if (v30 == 255)
  {
    v8 = v2[2];
    closure #1 in Parser.expectIdentifier(_:endingWith:eatEnding:)(v2, a1, 0xE100000000000000, 0, &v18);
    v9 = v2[2];
    if (v9 >> 14 < v8 >> 14)
    {
      __break(1u);
    }

    else
    {
      v10 = v18;
      v15 = v18;
      v16 = v8;
      v17 = v9;

      lexBalanced #1 (_:) in Parser.expectNamedGroup(endingWith:)(&v15, v2, a1, &v18);

      v26 = v20;
      v27 = v21;
      v28 = v22;
      v24 = v18;
      v25 = v19;
      v11 = v23;
      if (v23 == 255)
      {
        if ((specialized Parser.tryEat<A>(sequence:)(a1, 0xE100000000000000) & 1) == 0)
        {
          *&v18 = a1;
          *(&v18 + 1) = 0xE100000000000000;

          *&v18 = String.init<A>(_:)();
          *(&v18 + 1) = v14;
          v19 = 0uLL;
          LOBYTE(v20) = 3;
          *&v15 = v2[2];
          *(&v15 + 1) = v15;
          Diagnostics.error(_:at:)(&v18, &v15);
        }

        *a2 = v10;
        *(a2 + 16) = v8;
        *(a2 + 24) = v9;
        *(a2 + 80) = 0;
      }

      else
      {

        v12 = v27;
        *(a2 + 32) = v26;
        *(a2 + 48) = v12;
        *(a2 + 64) = v28;
        v13 = v25;
        *a2 = v24;
        *(a2 + 16) = v13;
        *(a2 + 80) = v11;
      }
    }
  }

  else
  {
    v6 = v34;
    *(a2 + 32) = v33;
    *(a2 + 48) = v6;
    *(a2 + 64) = v35;
    v7 = v32;
    *a2 = v31;
    *(a2 + 16) = v7;
    *(a2 + 80) = v5;
  }
}

void lexBalanced #1 (_:) in Parser.expectNamedGroup(endingWith:)(__int128 *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v14 = a1[1];
  v15 = *a1;
  v7 = a2[2];
  v8._countAndFlagsBits = 45;
  v8._object = 0xE100000000000000;
  if (!Parser.tryEat(_:)(v8))
  {
    *(a4 + 48) = 0u;
    *(a4 + 64) = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *a4 = 0u;
    v13 = -1;
LABEL_8:
    *(a4 + 80) = v13;
    return;
  }

  v9 = a2[2];
  if (v9 >> 14 < v7 >> 14)
  {
    __break(1u);
  }

  else
  {
    closure #1 in Parser.expectIdentifier(_:endingWith:eatEnding:)(a2, a3, 0xE100000000000000, 0, &v17);
    v10 = a2[2];
    if (v9 >> 14 <= v10 >> 14)
    {
      v11 = v17;
      if ((specialized Parser.tryEat<A>(sequence:)(a3, 0xE100000000000000) & 1) == 0)
      {
        *&v17 = a3;
        *(&v17 + 1) = 0xE100000000000000;

        *&v17 = String.init<A>(_:)();
        *(&v17 + 1) = v12;
        v18 = 0;
        v19 = 0;
        v20 = 3;
        *&v16 = a2[2];
        *(&v16 + 1) = v16;
        Diagnostics.error(_:at:)(&v17, &v16);
      }

      *a4 = v15;
      *(a4 + 16) = v14;
      *(a4 + 32) = v7;
      *(a4 + 40) = v9;
      *(a4 + 48) = v11;
      *(a4 + 64) = v9;
      *(a4 + 72) = v10;
      v13 = 1;
      goto LABEL_8;
    }
  }

  __break(1u);
}

uint64_t Parser.lexGroupStart()@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 2);
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[1];
  v65 = v1[2];
  v66 = v4;
  *v67 = v5;
  *&v67[9] = *(v1 + 73);
  v64[0] = *v1;
  v64[1] = v6;
  v56 = v65;
  v57 = v4;
  v58 = v5;
  v54 = v64[0];
  v55 = v6;
  v7 = *&v67[16];
  v8 = v67[24];
  outlined init with copy of Parser(v64, &v43);
  closure #1 in closure #1 in Parser.lexGroupStart()(v1, &v48);
  v9 = v53;
  if (v53 != 255)
  {
    v45 = v56;
    v46 = v57;
    *v47 = v58;
    v43 = v54;
    v44 = v55;
    *&v47[16] = v7;
    v47[24] = v8;
    result = outlined destroy of Parser(&v43);
    v61 = v50;
    v62 = v51;
    v63 = v52;
    v59 = v48;
    v60 = v49;
    v11 = *(v1 + 2);
    if (v11 >> 14 >= v3 >> 14)
    {
      v12 = v62;
      *(a1 + 32) = v61;
      *(a1 + 48) = v12;
      *(a1 + 64) = v63;
      v13 = v60;
      *a1 = v59;
      *(a1 + 16) = v13;
      *(a1 + 80) = v9;
      *(a1 + 88) = v3;
      *(a1 + 96) = v11;
      return result;
    }

    __break(1u);
    goto LABEL_27;
  }

  v14 = *&v67[16];
  v15 = v67[24];
  v41[2] = v50;
  v41[3] = v51;
  v41[4] = v52;
  v42 = v53;
  v41[0] = v48;
  v41[1] = v49;
  outlined destroy of AST.Atom.Callout.OnigurumaTag?(v41, &unk_1F402C068, &cache variable for noncanonical specialized generic type metadata for AST.Group.Kind?);
  v16 = *(v1 + 10);
  v17 = v1[3];
  v45 = v1[2];
  v46 = v17;
  *v47 = v1[4];
  *&v47[9] = *(v1 + 73);
  v18 = v1[1];
  v43 = *v1;
  v44 = v18;

  result = outlined destroy of Parser(&v43);
  if (v15 == 1)
  {
    goto LABEL_24;
  }

  v19 = *(v14 + 2);
  v20 = *(v16 + 16);
  if (v20 >= v19)
  {
    v21 = *(v14 + 2);
  }

  else
  {
    v21 = *(v16 + 16);
  }

  if (v19)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  if (v22 == v20)
  {
    result = swift_unknownObjectRelease();
LABEL_25:
    v34 = v57;
    v1[2] = v56;
    v1[3] = v34;
    v1[4] = v58;
    v35 = v55;
    *v1 = v54;
    v1[1] = v35;
    *(v1 + 10) = v7;
    *(v1 + 88) = v8;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
    *(a1 + 80) = 255;
    return result;
  }

  if (v22 < v20)
  {

    v23 = ~v22 + v20;
    for (i = 80 * v22 + 32; ; i += 80)
    {
      v37 = *(v16 + i);
      v25 = *(v16 + i + 16);
      v26 = *(v16 + i + 32);
      v27 = *(v16 + i + 48);
      *(v40 + 9) = *(v16 + i + 57);
      v39 = v26;
      v40[0] = v27;
      v38 = v25;
      if (!v37)
      {
        outlined init with copy of Diagnostic(&v37, &v36);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 2) + 1, 1, v14);
        }

        v29 = *(v14 + 2);
        v28 = *(v14 + 3);
        if (v29 >= v28 >> 1)
        {
          v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v14);
        }

        *(v14 + 2) = v29 + 1;
        v30 = &v14[80 * v29];
        *(v30 + 2) = v37;
        v31 = v38;
        v32 = v39;
        v33 = v40[0];
        *(v30 + 89) = *(v40 + 9);
        *(v30 + 4) = v32;
        *(v30 + 5) = v33;
        *(v30 + 3) = v31;
        v7 = v14;
      }

      if (!v23)
      {
        break;
      }

      --v23;
    }

    swift_unknownObjectRelease();
LABEL_24:

    goto LABEL_25;
  }

LABEL_27:
  __break(1u);
  return result;
}

void closure #1 in closure #1 in Parser.lexGroupStart()(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  Parser.lexExplicitPCRE2GroupStart()(v72);
  v76 = v72[2];
  v77 = v72[3];
  v78 = v72[4];
  v74 = v72[0];
  v75 = v72[1];
  v4 = v73;
  if (v73 == 255)
  {
    v7 = a1[3];
    v67 = a1[2];
    v68 = v7;
    v69[0] = a1[4];
    v8 = v69[0];
    *(v69 + 9) = *(a1 + 73);
    v9 = a1[1];
    v66[0] = *a1;
    v66[1] = v9;
    *&v65[9] = *(v69 + 9);
    v63 = v67;
    v64 = v7;
    *v65 = v8;
    v61 = v66[0];
    v62 = v9;
    outlined init with copy of Parser(v66, &v57);
    closure #1 in Parser.shouldLexGroupLikeAtom()(&v61, &v48);
    v10 = *&v65[16];
    v11 = v65[24];
    v70[2] = v63;
    v70[3] = v64;
    v71[0] = *v65;
    *(v71 + 9) = *&v65[9];
    v70[0] = v61;
    v70[1] = v62;

    outlined destroy of Parser(v70);
    *&v57 = v10;
    BYTE8(v57) = v11;
    v79.diags._rawValue = &v57;
    Diagnostics.appendNewFatalErrors(from:)(v79);

    if ((v48 & 1) != 0 || (v12._countAndFlagsBits = 40, v12._object = 0xE100000000000000, !Parser.tryEat(_:)(v12)))
    {
      *(a2 + 48) = 0u;
      *(a2 + 64) = 0u;
      *(a2 + 16) = 0u;
      *(a2 + 32) = 0u;
      *a2 = 0u;
      v4 = -1;
      goto LABEL_10;
    }

    v13._countAndFlagsBits = 63;
    v13._object = 0xE100000000000000;
    if (Parser.tryEat(_:)(v13))
    {
      v14._countAndFlagsBits = 58;
      v14._object = 0xE100000000000000;
      if (!Parser.tryEat(_:)(v14))
      {
        v15._countAndFlagsBits = 124;
        v15._object = 0xE100000000000000;
        if (Parser.tryEat(_:)(v15))
        {
          v16 = 2;
LABEL_48:
          *a2 = v16;
          *(a2 + 8) = 0u;
          *(a2 + 24) = 0u;
          *(a2 + 40) = 0u;
          *(a2 + 56) = 0u;
          *(a2 + 72) = 0;
          v4 = 3;
          goto LABEL_10;
        }

        v18._countAndFlagsBits = 62;
        v18._object = 0xE100000000000000;
        if (Parser.tryEat(_:)(v18))
        {
          *a2 = 3;
          *(a2 + 8) = 0u;
          *(a2 + 24) = 0u;
          *(a2 + 40) = 0u;
          *(a2 + 56) = 0u;
          *(a2 + 72) = 0;
          *(a2 + 80) = 3;
          return;
        }

        v19._countAndFlagsBits = 61;
        v19._object = 0xE100000000000000;
        if (Parser.tryEat(_:)(v19))
        {
          v16 = 4;
          goto LABEL_48;
        }

        v20._countAndFlagsBits = 33;
        v20._object = 0xE100000000000000;
        if (Parser.tryEat(_:)(v20))
        {
          v16 = 5;
          goto LABEL_48;
        }

        v21._countAndFlagsBits = 42;
        v21._object = 0xE100000000000000;
        if (Parser.tryEat(_:)(v21))
        {
          v16 = 6;
          goto LABEL_48;
        }

        if (specialized Parser.tryEat<A>(sequence:)(15676, 0xE200000000000000))
        {
          v16 = 7;
          goto LABEL_48;
        }

        if (specialized Parser.tryEat<A>(sequence:)(8508, 0xE200000000000000))
        {
          v16 = 8;
          goto LABEL_48;
        }

        if (specialized Parser.tryEat<A>(sequence:)(10812, 0xE200000000000000))
        {
          v16 = 9;
          goto LABEL_48;
        }

        v22._countAndFlagsBits = 60;
        v22._object = 0xE100000000000000;
        if (Parser.tryEat(_:)(v22) || (specialized Parser.tryEat<A>(sequence:)(15440, 0xE200000000000000) & 1) != 0)
        {
          v23 = 62;
LABEL_34:
          Parser.expectNamedGroup(endingWith:)(v23, &v61);
          v24 = v64;
          *(a2 + 32) = v63;
          *(a2 + 48) = v24;
          *(a2 + 64) = *v65;
          *(a2 + 80) = v65[16];
          v25 = v62;
          *a2 = v61;
          *(a2 + 16) = v25;
          return;
        }

        v26._countAndFlagsBits = 39;
        v26._object = 0xE100000000000000;
        if (Parser.tryEat(_:)(v26))
        {
          v23 = 39;
          goto LABEL_34;
        }

        Parser.lexMatchingOptionSequence()(&v48);
        v27 = v50;
        v56 = v49;
        v53 = v51;
        v54 = v52;
        v55 = v48;
        if (v50)
        {
          v28._countAndFlagsBits = 58;
          v28._object = 0xE100000000000000;
          if (Parser.tryEat(_:)(v28))
          {
            goto LABEL_53;
          }

          v29 = a1[1];
          v61 = *a1;
          v62 = v29;
          v30 = a1[3];
          v63 = a1[2];
          v64 = v30;
          *v65 = a1[4];
          *&v65[9] = *(a1 + 73);
          v31 = v62;
          outlined init with copy of Parser(&v61, &v57);
          v32 = String.subscript.getter();
          if (!((v32 ^ v33) >> 14))
          {

            outlined destroy of Parser(&v61);
LABEL_52:
            v57 = xmmword_1C0C7E3A0;
            v58 = 0;
            v59 = 0;
            v60 = 3;
            *&v48 = v31;
            *(&v48 + 1) = v31;
            Diagnostics.error(_:at:)(&v57, &v48);
            goto LABEL_53;
          }

          v42 = Substring.subscript.getter();
          v44 = v43;

          v45 = String.index(after:)();

          if (v45 >> 14 >= v31 >> 14)
          {
            outlined destroy of Parser(&v61);
            if (!v44)
            {
              goto LABEL_52;
            }

            *&v57 = v42;
            *(&v57 + 1) = v44;
            v58 = 0;
            v59 = 0;
            v60 = 17;
            *&v48 = v31;
            *(&v48 + 1) = v45;

            Diagnostics.error(_:at:)(&v57, &v48);
            swift_bridgeObjectRelease_n();
LABEL_53:
            v46 = v54;
            *a2 = v55;
            *(a2 + 16) = v56;
            *(a2 + 24) = v27;
            *(a2 + 32) = v53;
            *(a2 + 48) = v46;
            v4 = 2;
            goto LABEL_10;
          }

LABEL_55:
          __break(1u);
          return;
        }

        v34 = a1[1];
        v61 = *a1;
        v62 = v34;
        v35 = a1[3];
        v63 = a1[2];
        v64 = v35;
        *v65 = a1[4];
        *&v65[9] = *(a1 + 73);
        v36 = v62;
        outlined init with copy of Parser(&v61, &v57);
        v37 = String.subscript.getter();
        if (!((v37 ^ v38) >> 14))
        {

          outlined destroy of Parser(&v61);
LABEL_46:
          v57 = 9uLL;
          v58 = 0;
          v59 = 0;
          v60 = 36;
          *&v47 = v36;
          *(&v47 + 1) = v36;
          Diagnostics.error(_:at:)(&v57, &v47);
          goto LABEL_47;
        }

        Substring.subscript.getter();
        v40 = v39;

        v41 = String.index(after:)();

        if (v41 >> 14 < v36 >> 14)
        {
          __break(1u);
          goto LABEL_55;
        }

        outlined destroy of Parser(&v61);
        if (!v40)
        {
          goto LABEL_46;
        }

        *&v57 = 0;
        *(&v57 + 1) = 0xE000000000000000;
        MEMORY[0x1C68E0BF0](63, 0xE100000000000000);

        Character.write<A>(to:)();

        v58 = 0;
        v59 = 0;
        v60 = 14;
        *&v47 = v36;
        *(&v47 + 1) = v41;
        Diagnostics.error(_:at:)(&v57, &v47);
      }

LABEL_47:
      v16 = 1;
      goto LABEL_48;
    }

    v17 = *(a1 + 8);
    if ((v17 & 0x20) != 0)
    {
      if (specialized Parser.tryEat<A>(sequence:)(14943, 0xE200000000000000))
      {
        goto LABEL_47;
      }

      v17 = *(a1 + 8);
    }

    if ((v17 & 0x80) == 0)
    {
      *(a2 + 48) = 0u;
      *(a2 + 64) = 0u;
      *(a2 + 16) = 0u;
      *(a2 + 32) = 0u;
      *a2 = 0u;
      v4 = 3;
      goto LABEL_10;
    }

    goto LABEL_47;
  }

  v5 = v77;
  *(a2 + 32) = v76;
  *(a2 + 48) = v5;
  *(a2 + 64) = v78;
  v6 = v75;
  *a2 = v74;
  *(a2 + 16) = v6;
LABEL_10:
  *(a2 + 80) = v4;
}

uint64_t Parser.getClosingDelimiter(for:)(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  if (a1 != 39 || a2 != 0xE100000000000000)
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v6 = v3 == 34 && a2 == 0xE100000000000000;
    v7 = v6;
    if ((v5 & 1) == 0 && !v7)
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v9 = v3 == 96 && a2 == 0xE100000000000000;
      v10 = v9;
      if ((v8 & 1) == 0 && !v10)
      {
        v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v12 = v3 == 94 && a2 == 0xE100000000000000;
        v13 = v12;
        if ((v11 & 1) == 0 && !v13)
        {
          v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v15 = v3 == 37 && a2 == 0xE100000000000000;
          v16 = v15;
          if ((v14 & 1) == 0 && !v16)
          {
            v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v18 = v3 == 35 && a2 == 0xE100000000000000;
            v19 = v18;
            if ((v17 & 1) == 0 && !v19)
            {
              v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
              v21 = v3 == 36 && a2 == 0xE100000000000000;
              v22 = v21;
              if ((v20 & 1) == 0 && !v22 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {
                if (v3 == 60 && a2 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  return 62;
                }

                if (v3 == 123 && a2 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  return 125;
                }

                v23._countAndFlagsBits = 0x656C646E61686E55;
                v23._object = 0xEE00657361632064;
                Parser.unreachable(_:)(v23);
              }
            }
          }
        }
      }
    }
  }

  return v3;
}

void Parser.lexNumberedReference(allowWholePatternRef:allowRecursionLevel:)(int a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = *(v3 + 16);
  v9 = *(v3 + 48);
  v10 = *(v3 + 64);
  v11 = *(v3 + 16);
  v74 = *(v3 + 32);
  v75 = v9;
  *v76 = v10;
  *&v76[9] = *(v3 + 73);
  v73[0] = *v3;
  v73[1] = v11;
  v71 = v9;
  v72 = v10;
  v68 = v73[0];
  v69 = v11;
  v70 = v74;
  v12 = *&v76[16];
  v55 = v76[24];
  outlined init with copy of Parser(v73, &v63);
  v13 = *(v3 + 16);
  v14._countAndFlagsBits = 43;
  v14._object = 0xE100000000000000;
  if (Parser.tryEat(_:)(v14))
  {
    v15 = *(v3 + 16);
    if (v15 >> 14 < v13 >> 14)
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    Parser.lexNumber(_:)(1, &v63);
    if ((v65 & 1) == 0)
    {
      v31 = v64;
      if (v13 >> 14 < v64 >> 14)
      {
        v31 = v13;
      }

      if (v15 >> 14 >= *(&v64 + 1) >> 14)
      {
        v32 = v15;
      }

      else
      {
        v32 = *(&v64 + 1);
      }

      if (v32 >> 14 < v31 >> 14)
      {
        goto LABEL_66;
      }

      v53 = v32;
      v54 = v31;
      v28 = v55;
      v57 = BYTE8(v63);
      v30 = v63;
      v29 = 1;
      goto LABEL_34;
    }
  }

  v16 = *(v3 + 16);
  v17._countAndFlagsBits = 45;
  v17._object = 0xE100000000000000;
  if (Parser.tryEat(_:)(v17))
  {
    v18 = *(v3 + 16);
    if (v18 >> 14 < v16 >> 14)
    {
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
      goto LABEL_70;
    }

    Parser.lexNumber(_:)(1, &v63);
    if ((v65 & 1) == 0)
    {
      v28 = v55;
      v33 = v64;
      v30 = v63;
      v57 = BYTE8(v63);
      if ((BYTE8(v63) & 1) == 0)
      {
        v30 = -v63;
        if (__OFSUB__(0, v63))
        {
          goto LABEL_69;
        }
      }

      if (v16 >> 14 < v64 >> 14)
      {
        v33 = v16;
      }

      if (v18 >> 14 >= *(&v64 + 1) >> 14)
      {
        v34 = v18;
      }

      else
      {
        v34 = *(&v64 + 1);
      }

      if (v34 >> 14 < v33 >> 14)
      {
        goto LABEL_67;
      }

      v53 = v34;
      v54 = v33;
      v29 = 1;
      goto LABEL_34;
    }
  }

  Parser.lexNumber(_:)(1, &v63);
  if ((v65 & 1) == 0)
  {
    v28 = v55;
    v29 = 0;
    v53 = *(&v64 + 1);
    v54 = v64;
    v30 = v63;
    v57 = BYTE8(v63);
LABEL_34:
    v65 = v70;
    v66 = v71;
    *v67 = v72;
    v63 = v68;
    v64 = v69;
    *&v67[16] = v12;
    v67[24] = v28;
    outlined destroy of Parser(&v63);
    v35 = *(v4 + 16);
    if (v35 >> 14 >= v8 >> 14)
    {
      if (((v29 | a1) & 1) == 0 && (v57 & 1) == 0 && !v30)
      {
        v63 = 5uLL;
        v64 = 0uLL;
        LOBYTE(v65) = 36;
        *&v59 = v8;
        *(&v59 + 1) = v35;
        Diagnostics.error(_:at:)(&v63, &v59);
        v30 = 0;
      }

      if ((a2 & 1) == 0)
      {
        v37 = 0;
        v38 = 0;
        v36 = 0uLL;
        v39 = 1;
        goto LABEL_49;
      }

      Parser.lexRecursionLevel()(&v59);
      v36 = v59;
      v38 = *(&v60 + 1);
      v37 = v60;
      if (v61)
      {
        v39 = 1;
LABEL_49:
        LOBYTE(v59) = v39;
        *a3 = v30;
        *(a3 + 8) = v57 & 1;
        *(a3 + 16) = v54;
        *(a3 + 24) = v53;
        *(a3 + 32) = v29;
        *(a3 + 40) = v36;
        *(a3 + 56) = v37;
        *(a3 + 64) = v38;
        *(a3 + 72) = v39;
        *(a3 + 80) = v8;
        *(a3 + 88) = v35;
        return;
      }

      if (v8 >> 14 >= v60 >> 14)
      {
        v8 = v60;
      }

      if (v35 >> 14 < *(&v60 + 1) >> 14)
      {
        v35 = *(&v60 + 1);
      }

      if (v35 >> 14 >= v8 >> 14)
      {
        v39 = 0;
        goto LABEL_49;
      }

      goto LABEL_68;
    }

    __break(1u);
    goto LABEL_64;
  }

  v19 = *&v76[16];
  v20 = v76[24];
  outlined consume of AST.Reference.Kind?(0, 0, 0, 0, 255);
  v21 = *(v3 + 80);
  v22 = *(v4 + 48);
  v65 = *(v4 + 32);
  v66 = v22;
  *v67 = *(v4 + 64);
  *&v67[9] = *(v4 + 73);
  v23 = *(v4 + 16);
  v63 = *v4;
  v64 = v23;

  outlined destroy of Parser(&v63);
  if (v20 == 1)
  {
LABEL_61:

    goto LABEL_62;
  }

  v56 = v12;
  v24 = *(v19 + 2);
  v25 = *(v21 + 16);
  if (v25 >= v24)
  {
    v26 = *(v19 + 2);
  }

  else
  {
    v26 = *(v21 + 16);
  }

  if (v24)
  {
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  if (v27 == v25)
  {
    swift_unknownObjectRelease();
    v12 = v56;
LABEL_62:
    v51 = v71;
    *(v4 + 32) = v70;
    *(v4 + 48) = v51;
    *(v4 + 64) = v72;
    v52 = v69;
    *v4 = v68;
    *(v4 + 16) = v52;
    *(v4 + 80) = v12;
    *(v4 + 88) = v55;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 255;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0u;
    *(a3 + 88) = 0;
    return;
  }

  if (v27 < v25)
  {

    v40 = ~v27 + v25;
    v41 = 80 * v27 + 32;
    v12 = v56;
    while (1)
    {
      v59 = *(v21 + v41);
      v42 = *(v21 + v41 + 16);
      v43 = *(v21 + v41 + 32);
      v44 = *(v21 + v41 + 48);
      *(v62 + 9) = *(v21 + v41 + 57);
      v61 = v43;
      v62[0] = v44;
      v60 = v42;
      if (!v59)
      {
        outlined init with copy of Diagnostic(&v59, v58);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 2) + 1, 1, v19);
        }

        v46 = *(v19 + 2);
        v45 = *(v19 + 3);
        if (v46 >= v45 >> 1)
        {
          v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v46 + 1, 1, v19);
        }

        *(v19 + 2) = v46 + 1;
        v47 = &v19[80 * v46];
        *(v47 + 2) = v59;
        v48 = v60;
        v49 = v61;
        v50 = v62[0];
        *(v47 + 89) = *(v62 + 9);
        *(v47 + 4) = v49;
        *(v47 + 5) = v50;
        *(v47 + 3) = v48;
        v12 = v19;
      }

      if (!v40)
      {
        break;
      }

      --v40;
      v41 += 80;
    }

    swift_unknownObjectRelease();
    goto LABEL_61;
  }

LABEL_70:
  __break(1u);
}

void Parser.lexKnownConditionalStart()(__int128 *a1@<X8>)
{
  v2 = v1;
  v4 = v1[3];
  v199 = v1[2];
  v200 = v4;
  *v201 = v1[4];
  v5 = *v201;
  *&v201[9] = *(v1 + 73);
  v6 = v1[1];
  v198[0] = *v1;
  v198[1] = v6;
  v195 = v199;
  v196 = v4;
  v197 = v5;
  v194 = v6;
  v193 = v198[0];
  v7 = *&v201[16];
  v8 = v201[24];
  outlined init with copy of Parser(v198, &v185);
  if ((specialized Parser.tryEat<A>(sequence:)(2637608, 0xE300000000000000) & 1) == 0)
  {
    goto LABEL_81;
  }

  v9 = *(v1 + 2);
  v10 = v1[3];
  v11 = v1[4];
  v12 = v1[1];
  v173 = v1[2];
  v174 = v10;
  *v175 = v11;
  *&v175[9] = *(v1 + 73);
  v172[0] = *v1;
  v172[1] = v12;
  v162 = v10;
  v163 = v11;
  v160 = v12;
  v161 = v173;
  v159 = v172[0];
  v13 = *&v175[16];
  v14 = v175[24];
  outlined init with copy of Parser(v172, &v145);
  v15._countAndFlagsBits = 82;
  v15._object = 0xE100000000000000;
  if (!Parser.tryEat(_:)(v15))
  {
    v19 = v13;
    v20 = v14;
    v138 = v9;
    v21 = specialized Parser.tryEat<A>(anyOf:)(&outlined read-only object #0 of closure #1 in closure #1 in Parser.lexKnownCondition());
    v23 = v22;
    swift_arrayDestroy();
    if (v23)
    {
      v135 = v19;
      v139 = v20;
      v142 = v8;
      v24 = Parser.getClosingDelimiter(for:)(v21, v23);
      v26 = v25;

      Parser.lexNumberedReference(allowWholePatternRef:allowRecursionLevel:)(0, 0, &v145);
      v28 = *(&v145 + 1);
      v27 = v145;
      v29 = *v147;
      v30 = v147[40];
      LODWORD(v207) = *&v147[41];
      *(&v207 + 3) = *&v147[44];
      if (v147[0] == 0xFF)
      {
        v31 = *(v2 + 2);
        closure #1 in Parser.expectIdentifier(_:endingWith:eatEnding:)(v2, v24, v26, 0, &v145);
        v132 = *(v2 + 2);
        if (v132 >> 14 < v31 >> 14)
        {
LABEL_109:
          __break(1u);
          goto LABEL_110;
        }

        v28 = *(&v145 + 1);
        v27 = v145;
        v129 = v31;
        if ((specialized Parser.tryEat<A>(sequence:)(v24, v26) & 1) == 0)
        {
          *&v145 = v24;
          *(&v145 + 1) = v26;
          *&v216 = String.init<A>(_:)();
          *(&v216 + 1) = v32;
          v217 = 0uLL;
          v218[0] = 3;
          *&v145 = *(v2 + 2);
          *(&v145 + 1) = v145;
          Diagnostics.error(_:at:)(&v216, &v145);
        }

        v13 = v135;
        v30 = 1;
        v222 = 1;
        v33 = 0uLL;
        v34 = 2;
        v35 = 0uLL;
        v36 = 0uLL;
      }

      else
      {
        v126 = v146;
        v127 = *&v147[24];
        v128 = *&v147[8];
        v132 = *&v147[56];
        v129 = *&v147[48];
        if ((specialized Parser.tryEat<A>(sequence:)(v24, v26) & 1) == 0)
        {
          *&v145 = v24;
          *(&v145 + 1) = v26;
          *&v216 = String.init<A>(_:)();
          *(&v216 + 1) = v37;
          v217 = 0uLL;
          v218[0] = 3;
          *&v145 = *(v2 + 2);
          *(&v145 + 1) = v145;
          Diagnostics.error(_:at:)(&v216, &v145);
        }

        v13 = v135;
        LODWORD(v211) = v207;
        *(&v211 + 3) = *(&v207 + 3);
        v34 = v29;
        v35 = v127;
        v33 = v128;
        v36 = v126;
      }

      *&v202 = v27;
      *(&v202 + 1) = v28;
      v203 = v36;
      v204[0] = v34;
      v204[7] = HIBYTE(v29);
      *&v204[5] = HIDWORD(v29) >> 8;
      *&v204[1] = v29 >> 8;
      *&v204[8] = v33;
      *&v204[24] = v35;
      v204[40] = v30;
      *&v204[41] = v211;
      *&v204[44] = *(&v211 + 3);
      *&v204[48] = v129;
      *&v204[56] = v132;
      _s12_RegexParser3ASTV11ConditionalV9ConditionV4KindOWOi_(&v202);
      *&v147[32] = *&v204[32];
      *&v147[48] = *&v204[48];
      v148 = v205;
      v149 = v206;
      v145 = v202;
      v146 = v203;
      *v147 = *v204;
      *&v147[16] = *&v204[16];
      AST.root.modify();
      v155 = *&v147[32];
      v156 = *&v147[48];
      v157 = v148;
      v158 = v149;
      v151 = v145;
      v152 = v146;
      v153 = *v147;
      v154 = *&v147[16];
      v14 = v139;
      v8 = v142;
      v9 = v138;
      goto LABEL_51;
    }

    if (specialized Parser.tryEat<A>(sequence:)(0x454E49464544, 0xE600000000000000))
    {
      _s12_RegexParser3ASTV11ConditionalV9ConditionV4KindOWOi4_(&v202);
      *&v147[32] = *&v204[32];
      *&v147[48] = *&v204[48];
      v148 = v205;
      v149 = v206;
      v145 = v202;
      v146 = v203;
      *v147 = *v204;
      *&v147[16] = *&v204[16];
      AST.root.modify();
      v155 = *&v147[32];
      v156 = *&v147[48];
      v157 = v148;
      v158 = v149;
      v151 = v145;
      v152 = v146;
      v153 = *v147;
      v154 = *&v147[16];
      v14 = v20;
LABEL_16:
      v13 = v19;
      goto LABEL_51;
    }

    if (specialized Parser.tryEat<A>(sequence:)(0x4E4F4953524556, 0xE700000000000000))
    {
      v143 = v8;
      v38 = *(v2 + 2);
      v39._countAndFlagsBits = 62;
      v39._object = 0xE100000000000000;
      v40 = Parser.tryEat(_:)(v39);
      v41._countAndFlagsBits = 61;
      v41._object = 0xE100000000000000;
      if (!Parser.tryEat(_:)(v41))
      {
        v207 = xmmword_1C0C7E3B0;
        v208 = 0uLL;
        v209[0] = 3;
        *&v145 = *(v2 + 2);
        *(&v145 + 1) = v145;
        Diagnostics.error(_:at:)(&v207, &v145);
      }

      v42 = *(v2 + 2);
      v43 = v42 >> 14;
      if (v42 >> 14 < v38 >> 14)
      {
        goto LABEL_111;
      }

      v130 = v40;
      v133 = v38;
      v136 = v19;
      v140 = v20;
      Parser.lexNumber(_:)(1, &v145);
      if (v147[0])
      {
        v145 = xmmword_1C0C7E360;
        v146 = xmmword_1C0C7E3C0;
        v147[0] = 2;
        v44 = *(v2 + 2);
        *&v202 = v44;
        *(&v202 + 1) = v44;
        Diagnostics.error(_:at:)(&v145, &v202);
        v45 = 0;
        v46 = 1;
        v47 = v44;
      }

      else
      {
        v47 = *(&v146 + 1);
        v44 = v146;
        v46 = BYTE8(v145);
        v45 = v145;
      }

      v56._countAndFlagsBits = 46;
      v56._object = 0xE100000000000000;
      if (!Parser.tryEat(_:)(v56))
      {
        v202 = xmmword_1C0C7E330;
        v203 = 0uLL;
        v204[0] = 3;
        *&v216 = *(v2 + 2);
        *(&v216 + 1) = v216;
        Diagnostics.error(_:at:)(&v202, &v216);
      }

      Parser.lexNumber(_:)(1, &v216);
      if (v218[0])
      {
        v216 = xmmword_1C0C7E360;
        v217 = xmmword_1C0C7E3C0;
        v218[0] = 2;
        v57 = v46;
        v58 = v47;
        v59 = v45;
        v60 = *(v2 + 2);
        *&v211 = v60;
        *(&v211 + 1) = v60;
        Diagnostics.error(_:at:)(&v216, &v211);
        v61 = 0;
        v62 = vdupq_n_s64(v60);
        v45 = v59;
        v47 = v58;
        v46 = v57;
        v43 = v42 >> 14;
        v63 = 1;
      }

      else
      {
        v62 = v217;
        v63 = BYTE8(v216);
        v61 = v216;
      }

      LOBYTE(v211) = v46 & 1;
      v222 = v63 & 1;
      v64 = *(v2 + 2);
      if (v43 > v64 >> 14)
      {
        goto LABEL_112;
      }

      v221 = v211;
      v220 = v222 & 1;
      LOBYTE(v145) = v130;
      *(&v145 + 1) = v133;
      *&v146 = v42;
      *(&v146 + 1) = v45;
      v147[0] = v211 & 1;
      *&v147[8] = v44;
      *&v147[16] = v47;
      *&v147[24] = v61;
      v147[32] = v222 & 1;
      *&v147[40] = v62;
      *&v147[56] = v42;
      *&v148 = v64;
      _s12_RegexParser3ASTV11ConditionalV9ConditionV4KindOWOi1_(&v145);
      *&v204[32] = *&v147[32];
      *&v204[48] = *&v147[48];
      v205 = v148;
      v206 = v149;
      v202 = v145;
      v203 = v146;
      *v204 = *v147;
      *&v204[16] = *&v147[16];
      AST.root.modify();
      v155 = *&v204[32];
      v156 = *&v204[48];
      v157 = v205;
      v158 = v206;
      v151 = v202;
      v152 = v203;
      v153 = *v204;
      v154 = *&v204[16];
    }

    else
    {
      v14 = v20;
      Parser.lexNumberedReference(allowWholePatternRef:allowRecursionLevel:)(0, 1, &v216);
      if (v218[0] != 0xFF)
      {
        v202 = v216;
        v203 = v217;
        *&v204[8] = *&v218[8];
        *&v204[24] = *&v218[24];
        *&v204[40] = *&v218[40];
        *v204 = *v218;
        *&v204[56] = v219;
        _s12_RegexParser3ASTV11ConditionalV9ConditionV4KindOWOi_(&v202);
        *&v147[32] = *&v204[32];
        *&v147[48] = *&v204[48];
        v148 = v205;
        v149 = v206;
        v145 = v202;
        v146 = v203;
        *v147 = *v204;
        *&v147[16] = *&v204[16];
        AST.root.modify();
        v155 = *&v147[32];
        v156 = *&v147[48];
        v157 = v148;
        v158 = v149;
        v151 = v145;
        v152 = v146;
        v153 = *v147;
        v154 = *&v147[16];
        goto LABEL_16;
      }

      v136 = v19;
      v140 = v20;
      v143 = v8;
      v48 = v2[3];
      v213 = v2[2];
      v214 = v48;
      v215[0] = v2[4];
      *(v215 + 9) = *(v2 + 73);
      v49 = *v2;
      v212 = v2[1];
      v211 = v49;
      v50 = v212;
      outlined init with copy of Parser(&v211, &v145);
      closure #1 in Parser.expectIdentifier(_:endingWith:eatEnding:)(v2, 41, 0xE100000000000000, 0, &v145);
      v51 = *(v2 + 2);
      if (v51 >> 14 < v50 >> 14)
      {
LABEL_113:
        __break(1u);
LABEL_114:
        __break(1u);
        return;
      }

      v53 = *(&v145 + 1);
      v52 = v145;
      Parser.lexRecursionLevel()(&v145);
      v131 = v145;
      v134 = v146;
      v54 = v147[0];
      outlined destroy of Parser(&v211);
      if (v54)
      {
        v55 = v134;
      }

      else
      {
        v55 = v134;
        if (v50 >> 14 >= v134 >> 14)
        {
          v50 = v134;
        }

        if (v51 >> 14 < *(&v134 + 1) >> 14)
        {
          v51 = *(&v134 + 1);
        }

        if (v51 >> 14 < v50 >> 14)
        {
          goto LABEL_114;
        }
      }

      v222 = v54;
      *&v207 = v52;
      *(&v207 + 1) = v53;
      v208 = 0uLL;
      v209[0] = 2;
      *&v209[8] = v131;
      *&v209[24] = v55;
      v209[40] = v54;
      *&v210 = v50;
      *(&v210 + 1) = v51;
      v65 = *(v2 + 6);

      outlined init with copy of AST.Reference(&v207, &v145);
      v66 = specialized Set.contains(_:)(v52, v53, v65);
      outlined destroy of AST.Reference(&v207, outlined consume of AST.Reference.Kind);

      if (v66)
      {
        *v204 = *v209;
        *&v204[16] = *&v209[16];
        *&v204[32] = *&v209[32];
        *&v204[48] = v210;
        v202 = v207;
        v203 = v208;
        _s12_RegexParser3ASTV11ConditionalV9ConditionV4KindOWOi_(&v202);
        *&v147[32] = *&v204[32];
        *&v147[48] = *&v204[48];
        v148 = v205;
        v149 = v206;
        v145 = v202;
        v146 = v203;
        *v147 = *v204;
        *&v147[16] = *&v204[16];
        AST.root.modify();
        v155 = *&v147[32];
        v156 = *&v147[48];
        v157 = v148;
        v158 = v149;
        v151 = v145;
        v152 = v146;
        v153 = *v147;
        v154 = *&v147[16];
      }

      else
      {
        outlined destroy of AST.Reference(&v207, outlined consume of AST.Reference.Kind);
        _s12_RegexParser3ASTV11ConditionalV9ConditionV4KindOSgWOi0_(&v151);
      }
    }

    v14 = v140;
    v8 = v143;
    v13 = v136;
    v9 = v138;
    goto LABEL_51;
  }

  v16._countAndFlagsBits = 38;
  v16._object = 0xE100000000000000;
  if (Parser.tryEat(_:)(v16))
  {
    v17 = *(v1 + 2);
    closure #1 in Parser.expectIdentifier(_:endingWith:eatEnding:)(v2, 41, 0xE100000000000000, 0, &v145);
    v18 = *(v2 + 2);
    if (v18 >> 14 < v17 >> 14)
    {
LABEL_108:
      __break(1u);
      goto LABEL_109;
    }

    LOBYTE(v216) = 1;
    v202 = v145;
    v203 = 0uLL;
    v204[0] = 2;
    memset(&v204[8], 0, 32);
    v204[40] = 1;
    *&v204[48] = v17;
    *&v204[56] = v18;
    _s12_RegexParser3ASTV11ConditionalV9ConditionV4KindOWOi0_(&v202);
    *&v147[32] = *&v204[32];
    *&v147[48] = *&v204[48];
    v148 = v205;
    v149 = v206;
    v145 = v202;
    v146 = v203;
    *v147 = *v204;
    *&v147[16] = *&v204[16];
    AST.root.modify();
    v155 = *&v147[32];
    v156 = *&v147[48];
    v157 = v148;
    v158 = v149;
    v151 = v145;
    v152 = v146;
    v153 = *v147;
    v154 = *&v147[16];
  }

  else
  {
    Parser.lexNumber(_:)(1, &v216);
    if (v218[0])
    {
      _s12_RegexParser3ASTV11ConditionalV9ConditionV4KindOWOi3_(&v202);
    }

    else
    {
      LOBYTE(v207) = 1;
      *&v202 = v216;
      *(&v202 + 1) = BYTE8(v216) & 1;
      v203 = v217;
      v204[0] = 0;
      memset(&v204[8], 0, 32);
      v204[40] = 1;
      *&v204[48] = v217;
      _s12_RegexParser3ASTV11ConditionalV9ConditionV4KindOWOi0_(&v202);
    }

    *&v147[32] = *&v204[32];
    *&v147[48] = *&v204[48];
    v148 = v205;
    v149 = v206;
    v145 = v202;
    v146 = v203;
    *v147 = *v204;
    *&v147[16] = *&v204[16];
    AST.root.modify();
    v155 = *&v147[32];
    v156 = *&v147[48];
    v157 = v148;
    v158 = v149;
    v151 = v145;
    v152 = v146;
    v153 = *v147;
    v154 = *&v147[16];
  }

LABEL_51:
  v180 = v155;
  v181 = v156;
  v182 = v157;
  v183 = v158;
  v176 = v151;
  v177 = v152;
  v178 = v153;
  v179 = v154;
  v184[2] = v153;
  v184[3] = v154;
  v184[0] = v151;
  v184[1] = v152;
  v184[6] = v157;
  v184[7] = v158;
  v184[4] = v155;
  v184[5] = v156;
  if (sub_1C0C7C864(v184) != 1)
  {
    *v147 = v161;
    *&v147[16] = v162;
    *&v147[32] = v163;
    v145 = v159;
    v146 = v160;
    *&v147[48] = v13;
    v147[56] = v14;
    outlined destroy of Parser(&v145);
    v168 = v155;
    v169 = v156;
    v170 = v157;
    v171 = v158;
    v164 = v151;
    v165 = v152;
    v166 = v153;
    v167 = v154;
    goto LABEL_76;
  }

  v67 = v9;
  v68 = v8;
  v137 = v7;
  v69 = v13;
  v70 = *&v175[16];
  v71 = v175[24];
  *&v147[32] = v155;
  *&v147[48] = v156;
  v148 = v157;
  v149 = v158;
  v145 = v151;
  v146 = v152;
  *v147 = v153;
  *&v147[16] = v154;
  outlined destroy of AST.Atom.Callout.OnigurumaTag?(&v145, &unk_1F402BFC8, &cache variable for noncanonical specialized generic type metadata for AST.Conditional.Condition.Kind?);
  v72 = *(v2 + 10);
  v73 = v2[3];
  *v204 = v2[2];
  *&v204[16] = v73;
  *&v204[32] = v2[4];
  *&v204[41] = *(v2 + 73);
  v74 = v2[1];
  v202 = *v2;
  v203 = v74;

  outlined destroy of Parser(&v202);
  if (v71 == 1)
  {
  }

  else
  {
    v141 = v14;
    v75 = *(v70 + 2);
    v76 = *(v72 + 16);
    if (v76 >= v75)
    {
      v77 = *(v70 + 2);
    }

    else
    {
      v77 = *(v72 + 16);
    }

    if (v75)
    {
      v78 = v77;
    }

    else
    {
      v78 = 0;
    }

    if (v78 != v76)
    {
      v144 = v68;
      if (v78 >= v76)
      {
LABEL_110:
        __break(1u);
LABEL_111:
        __break(1u);
LABEL_112:
        __break(1u);
        goto LABEL_113;
      }

      v80 = ~v78 + v76;
      v81 = 80 * v78 + 32;
      v79 = v69;
      v7 = v137;
      while (1)
      {
        v216 = *(v72 + v81);
        v82 = *(v72 + v81 + 16);
        v83 = *(v72 + v81 + 32);
        v84 = *(v72 + v81 + 48);
        *&v218[25] = *(v72 + v81 + 57);
        *v218 = v83;
        *&v218[16] = v84;
        v217 = v82;
        if (!v216)
        {
          outlined init with copy of Diagnostic(&v216, &v207);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v70 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v70 + 2) + 1, 1, v70);
          }

          v86 = *(v70 + 2);
          v85 = *(v70 + 3);
          if (v86 >= v85 >> 1)
          {
            v70 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v85 > 1), v86 + 1, 1, v70);
          }

          *(v70 + 2) = v86 + 1;
          v87 = &v70[80 * v86];
          *(v87 + 2) = v216;
          v88 = v217;
          v89 = *v218;
          v90 = *&v218[16];
          *(v87 + 89) = *&v218[25];
          *(v87 + 4) = v89;
          *(v87 + 5) = v90;
          *(v87 + 3) = v88;
          v79 = v70;
        }

        if (!v80)
        {
          break;
        }

        --v80;
        v81 += 80;
      }

      swift_unknownObjectRelease();

      v14 = v141;
      v8 = v144;
      v9 = v67;
      goto LABEL_75;
    }

    swift_unknownObjectRelease();
  }

  v79 = v69;
  v7 = v137;
  v8 = v68;
  v9 = v67;
LABEL_75:
  v91 = v162;
  v2[2] = v161;
  v2[3] = v91;
  v2[4] = v163;
  v92 = v160;
  *v2 = v159;
  v2[1] = v92;
  *(v2 + 10) = v79;
  *(v2 + 88) = v14;
  v170 = v182;
  v171 = v183;
  v168 = v180;
  v169 = v181;
  v166 = v178;
  v167 = v179;
  v164 = v176;
  v165 = v177;
LABEL_76:
  *&v204[32] = v168;
  *&v204[48] = v169;
  v205 = v170;
  v206 = v171;
  v202 = v164;
  v203 = v165;
  *v204 = v166;
  *&v204[16] = v167;
  if (sub_1C0C7C864(&v202) == 1)
  {
    sub_1C0C7C844(&v185);
  }

  else
  {
    v93 = *(v2 + 2);
    if (v93 >> 14 < v9 >> 14)
    {
      __break(1u);
LABEL_107:
      __break(1u);
      goto LABEL_108;
    }

    *&v188[16] = v168;
    v189 = v169;
    v190 = v170;
    v191 = v171;
    v185 = v164;
    v186 = v165;
    v187 = v166;
    *v188 = v167;
    *&v192 = v9;
    *(&v192 + 1) = v93;
    AST.root.modify();
  }

  v148 = v190;
  v149 = v191;
  v150 = v192;
  *v147 = v187;
  *&v147[16] = *v188;
  *&v147[32] = *&v188[16];
  *&v147[48] = v189;
  v145 = v185;
  v146 = v186;
  if (sub_1C0C7C864(&v145) == 1)
  {
LABEL_81:
    v94 = *&v201[16];
    v95 = v201[24];
    v96 = *(v2 + 10);
    v97 = v2[3];
    *v147 = v2[2];
    *&v147[16] = v97;
    *&v147[32] = v2[4];
    *&v147[41] = *(v2 + 73);
    v98 = v2[1];
    v145 = *v2;
    v146 = v98;

    outlined destroy of Parser(&v145);
    if (v95 == 1)
    {

LABEL_105:
      v120 = v196;
      v2[2] = v195;
      v2[3] = v120;
      v2[4] = v197;
      v121 = v194;
      *v2 = v193;
      v2[1] = v121;
      *(v2 + 10) = v7;
      *(v2 + 88) = v8;
      sub_1C0C7C844(&v185);
      v122 = v191;
      a1[6] = v190;
      a1[7] = v122;
      a1[8] = v192;
      v123 = *v188;
      a1[2] = v187;
      a1[3] = v123;
      v124 = v189;
      a1[4] = *&v188[16];
      a1[5] = v124;
      v125 = v186;
      *a1 = v185;
      a1[1] = v125;
      return;
    }

    v99 = *(v94 + 2);
    v100 = *(v96 + 16);
    if (v100 >= v99)
    {
      v101 = *(v94 + 2);
    }

    else
    {
      v101 = *(v96 + 16);
    }

    if (v99)
    {
      v102 = v101;
    }

    else
    {
      v102 = 0;
    }

    if (v102 == v100)
    {
      swift_unknownObjectRelease();
      goto LABEL_105;
    }

    if (v102 < v100)
    {

      v109 = ~v102 + v100;
      for (i = 80 * v102 + 32; ; i += 80)
      {
        v185 = *(v96 + i);
        v111 = *(v96 + i + 16);
        v112 = *(v96 + i + 32);
        v113 = *(v96 + i + 48);
        *&v188[9] = *(v96 + i + 57);
        v187 = v112;
        *v188 = v113;
        v186 = v111;
        if (!v185)
        {
          outlined init with copy of Diagnostic(&v185, &v202);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v94 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v94 + 2) + 1, 1, v94);
          }

          v115 = *(v94 + 2);
          v114 = *(v94 + 3);
          if (v115 >= v114 >> 1)
          {
            v94 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v114 > 1), v115 + 1, 1, v94);
          }

          *(v94 + 2) = v115 + 1;
          v116 = &v94[80 * v115];
          *(v116 + 2) = v185;
          v117 = v186;
          v118 = v187;
          v119 = *v188;
          *(v116 + 89) = *&v188[9];
          *(v116 + 4) = v118;
          *(v116 + 5) = v119;
          *(v116 + 3) = v117;
          v7 = v94;
        }

        if (!v109)
        {
          break;
        }

        --v109;
      }

      swift_unknownObjectRelease();

      goto LABEL_105;
    }

    goto LABEL_107;
  }

  v103 = v150;
  v155 = *&v147[32];
  v156 = *&v147[48];
  v157 = v148;
  v158 = v149;
  v151 = v145;
  v152 = v146;
  v153 = *v147;
  v154 = *&v147[16];
  v104._countAndFlagsBits = 41;
  v104._object = 0xE100000000000000;
  if (!Parser.tryEat(_:)(v104))
  {
    v207 = xmmword_1C0C7E3A0;
    v208 = 0uLL;
    v209[0] = 3;
    *&v216 = *(v2 + 2);
    *(&v216 + 1) = v216;
    Diagnostics.error(_:at:)(&v207, &v216);
  }

  *v218 = v195;
  *&v218[16] = v196;
  *&v218[32] = v197;
  v216 = v193;
  v217 = v194;
  *&v218[48] = v7;
  LOBYTE(v219) = v8;
  outlined destroy of Parser(&v216);
  v105 = v156;
  a1[4] = v155;
  a1[5] = v105;
  v106 = v158;
  a1[6] = v157;
  a1[7] = v106;
  v107 = v152;
  *a1 = v151;
  a1[1] = v107;
  v108 = v154;
  a1[2] = v153;
  a1[3] = v108;
  a1[8] = v103;
  AST.root.modify();
}

uint64_t Parser.lexGroupConditionalStart()@<X0>(uint64_t a1@<X8>)
{
  *&v104[9] = *(v1 + 73);
  v3 = v1[3];
  v102 = v1[2];
  v103 = v3;
  *v104 = v1[4];
  v4 = v1[1];
  v101[0] = *v1;
  v101[1] = v4;
  v98 = v102;
  v99 = v3;
  v100 = *v104;
  v96 = v101[0];
  v97 = v4;
  v5 = *&v104[16];
  v6 = v104[24];
  outlined init with copy of Parser(v101, &v85);
  if ((specialized Parser.tryEat<A>(sequence:)(16168, 0xE200000000000000) & 1) == 0)
  {
LABEL_27:
    v39 = *&v104[16];
    v40 = v104[24];
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    *v89 = 0u;
    v90 = 0;
    *&v89[16] = 255;
    *&v89[24] = 0;
    outlined destroy of AST.Atom.Callout.OnigurumaTag?(&v85, &unk_1F402C378, &cache variable for noncanonical specialized generic type metadata for Source.Located<AST.Group.Kind>?);
    v41 = *(v1 + 10);
    v42 = v1[3];
    v93 = v1[2];
    v94 = v42;
    *v95 = v1[4];
    *&v95[9] = *(v1 + 73);
    v43 = v1[1];
    v91 = *v1;
    v92 = v43;

    result = outlined destroy of Parser(&v91);
    if (v40 == 1)
    {
    }

    else
    {
      v44 = *(v39 + 2);
      v45 = *(v41 + 16);
      if (v45 >= v44)
      {
        v46 = *(v39 + 2);
      }

      else
      {
        v46 = *(v41 + 16);
      }

      if (v44)
      {
        v47 = v46;
      }

      else
      {
        v47 = 0;
      }

      if (v47 == v45)
      {
        result = swift_unknownObjectRelease();
      }

      else
      {
        v65 = v6;
        if (v47 >= v45)
        {
LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

        v48 = ~v47 + v45;
        for (i = 80 * v47 + 32; ; i += 80)
        {
          v75 = *(v41 + i);
          v50 = *(v41 + i + 16);
          v51 = *(v41 + i + 32);
          v52 = *(v41 + i + 48);
          *&v78[9] = *(v41 + i + 57);
          v77 = v51;
          *v78 = v52;
          v76 = v50;
          if (!v75)
          {
            outlined init with copy of Diagnostic(&v75, v73);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v39 + 2) + 1, 1, v39);
            }

            v54 = *(v39 + 2);
            v53 = *(v39 + 3);
            if (v54 >= v53 >> 1)
            {
              v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v54 + 1, 1, v39);
            }

            *(v39 + 2) = v54 + 1;
            v55 = &v39[80 * v54];
            *(v55 + 2) = v75;
            v56 = v76;
            v57 = v77;
            v58 = *v78;
            *(v55 + 89) = *&v78[9];
            *(v55 + 4) = v57;
            *(v55 + 5) = v58;
            *(v55 + 3) = v56;
            v5 = v39;
          }

          if (!v48)
          {
            break;
          }

          --v48;
        }

        swift_unknownObjectRelease();

        v6 = v65;
      }
    }

    v59 = v99;
    v1[2] = v98;
    v1[3] = v59;
    v1[4] = v100;
    v60 = v97;
    *v1 = v96;
    v1[1] = v60;
    *(v1 + 10) = v5;
    *(v1 + 88) = v6;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
    *(a1 + 80) = 255;
    return result;
  }

  v7 = *(v1 + 2);
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[1];
  v87 = v1[2];
  v88 = v8;
  *v89 = v9;
  *&v89[9] = *(v1 + 73);
  v85 = *v1;
  v86 = v10;
  v82 = v87;
  v83 = v8;
  v84 = v9;
  v80 = v85;
  v81 = v10;
  v11 = *&v89[16];
  v12 = v89[24];
  outlined init with copy of Parser(&v85, &v91);
  closure #1 in closure #1 in Parser.lexGroupStart()(v1, &v75);
  v13 = v79;
  if (v79 != 255)
  {
    v63 = v76;
    v66 = v75;
    v61 = *v78;
    v62 = v77;
    v14 = *&v78[16];
    v93 = v82;
    v94 = v83;
    *v95 = v84;
    v91 = v80;
    v92 = v81;
    *&v95[16] = v11;
    v95[24] = v12;
    result = outlined destroy of Parser(&v91);
    v16 = *(v1 + 2);
    if (v16 >> 14 >= v7 >> 14)
    {
      v87 = v98;
      v88 = v99;
      *v89 = v100;
      v85 = v96;
      v86 = v97;
      *&v89[16] = v5;
      v89[24] = v6;
      result = outlined destroy of Parser(&v85);
      *a1 = v66;
      *(a1 + 16) = v63;
      *(a1 + 32) = v62;
      *(a1 + 48) = v61;
      *(a1 + 64) = v14;
      *(a1 + 80) = v13;
      *(a1 + 88) = v7;
      *(a1 + 96) = v16;
      return result;
    }

    __break(1u);
    goto LABEL_50;
  }

  v67 = v12;
  v17 = *&v89[16];
  v18 = v89[24];
  v73[2] = v77;
  v73[3] = *v78;
  v73[4] = *&v78[16];
  v74 = v79;
  v73[0] = v75;
  v73[1] = v76;
  outlined destroy of AST.Atom.Callout.OnigurumaTag?(v73, &unk_1F402C068, &cache variable for noncanonical specialized generic type metadata for AST.Group.Kind?);
  v19 = *(v1 + 10);
  v20 = v1[3];
  v93 = v1[2];
  v94 = v20;
  *v95 = v1[4];
  *&v95[9] = *(v1 + 73);
  v21 = v1[1];
  v91 = *v1;
  v92 = v21;

  result = outlined destroy of Parser(&v91);
  if (v18 == 1)
  {

LABEL_26:
    v37 = v83;
    v1[2] = v82;
    v1[3] = v37;
    v1[4] = v84;
    v38 = v81;
    *v1 = v80;
    v1[1] = v38;
    *(v1 + 10) = v11;
    *(v1 + 88) = v12;
    goto LABEL_27;
  }

  v22 = *(v17 + 2);
  v23 = *(v19 + 16);
  if (v23 >= v22)
  {
    v24 = *(v17 + 2);
  }

  else
  {
    v24 = *(v19 + 16);
  }

  if (v22)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  if (v25 == v23)
  {
    swift_unknownObjectRelease();
    v12 = v67;
    goto LABEL_26;
  }

  v64 = v6;
  if (v25 < v23)
  {

    v26 = ~v25 + v23;
    v27 = 80 * v25 + 32;
    v12 = v67;
    while (1)
    {
      v69 = *(v19 + v27);
      v28 = *(v19 + v27 + 16);
      v29 = *(v19 + v27 + 32);
      v30 = *(v19 + v27 + 48);
      *(v72 + 9) = *(v19 + v27 + 57);
      v71 = v29;
      v72[0] = v30;
      v70 = v28;
      if (!v69)
      {
        outlined init with copy of Diagnostic(&v69, v68);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 2) + 1, 1, v17);
        }

        v32 = *(v17 + 2);
        v31 = *(v17 + 3);
        if (v32 >= v31 >> 1)
        {
          v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v17);
        }

        *(v17 + 2) = v32 + 1;
        v33 = &v17[80 * v32];
        *(v33 + 2) = v69;
        v34 = v70;
        v35 = v71;
        v36 = v72[0];
        *(v33 + 89) = *(v72 + 9);
        *(v33 + 4) = v35;
        *(v33 + 5) = v36;
        *(v33 + 3) = v34;
        v11 = v17;
        v12 = v67;
      }

      if (!v26)
      {
        break;
      }

      --v26;
      v27 += 80;
    }

    swift_unknownObjectRelease();

    v6 = v64;
    goto LABEL_26;
  }

LABEL_51:
  __break(1u);
  return result;
}

uint64_t Parser.lexCustomCCStart()@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser3ASTV4AtomV17CharacterPropertyVSgMd, &_s12_RegexParser3ASTV4AtomV17CharacterPropertyVSgMR);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v58 - v8;
  v10 = type metadata accessor for AST.Atom.CharacterProperty(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v65 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV17CharacterPropertyVGSgMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV17CharacterPropertyVGSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v67 = &v58 - v14;
  v15 = *(v2 + 16);
  v16 = *(v2 + 16);
  v17 = *(v2 + 48);
  v89 = *(v2 + 32);
  v90 = v17;
  v18 = *(v2 + 48);
  v91[0] = *(v2 + 64);
  v86 = v17;
  v87[0] = v91[0];
  *(v91 + 9) = *(v2 + 73);
  v84 = v16;
  v85 = v89;
  v19 = *(v2 + 16);
  v88[0] = *v2;
  v88[1] = v16;
  v63 = v15;
  v64 = v16;
  *(v87 + 9) = *(v91 + 9);
  *&v93[9] = *(v2 + 73);
  v20 = *(v2 + 64);
  v92[3] = v18;
  *v93 = v20;
  v92[1] = v19;
  v92[2] = v89;
  v92[0] = *v2;
  v82 = v20;
  v83 = v88[0];
  v80 = v89;
  v81 = v18;
  v78 = v92[0];
  v79 = v19;
  v21 = *&v93[16];
  v22 = v93[24];
  outlined init with copy of Parser(v88, &v73);
  outlined init with copy of Parser(v92, &v73);
  closure #1 in closure #1 in Parser.lexPOSIXCharacterProperty()(&v83, v7);
  v66 = *(v11 + 48);
  if (v66(v7, 1, v10) != 1)
  {
    v75 = v80;
    v76 = v81;
    v77[0] = v82;
    v73 = v78;
    v74 = v79;
    *&v77[1] = v21;
    BYTE8(v77[1]) = v22;
    outlined destroy of Parser(&v73);
    outlined init with take of AST.Atom.Kind(v7, v9, type metadata accessor for AST.Atom.CharacterProperty);
    (*(v11 + 56))(v9, 0, 1, v10);
    goto LABEL_25;
  }

  v62 = v22;
  v59 = v10;
  v60 = v9;
  v61 = a1;
  v23 = *&v93[16];
  v24 = v93[24];
  outlined destroy of _ASTParent?(v7, &_s12_RegexParser3ASTV4AtomV17CharacterPropertyVSgMd, &_s12_RegexParser3ASTV4AtomV17CharacterPropertyVSgMR);
  v25 = *&v87[1];
  v75 = v85;
  v76 = v86;
  v77[0] = v87[0];
  *(v77 + 9) = *(v87 + 9);
  v73 = v83;
  v74 = v84;

  result = outlined destroy of Parser(&v73);
  if (v24 == 1)
  {
    goto LABEL_23;
  }

  v27 = *(v23 + 2);
  v28 = *(v25 + 16);
  if (v28 >= v27)
  {
    v29 = *(v23 + 2);
  }

  else
  {
    v29 = *(v25 + 16);
  }

  if (v27)
  {
    v30 = v29;
  }

  else
  {
    v30 = 0;
  }

  v31 = v62;
  if (v30 == v28)
  {
    swift_unknownObjectRelease();
LABEL_24:
    v85 = v80;
    v86 = v81;
    v87[0] = v82;
    v83 = v78;
    v84 = v79;
    *&v87[1] = v21;
    BYTE8(v87[1]) = v31;
    v10 = v59;
    v9 = v60;
    (*(v11 + 56))(v60, 1, 1, v59);
    a1 = v61;
LABEL_25:
    v43 = v66(v9, 1, v10);
    v44 = v67;
    if (v43 == 1)
    {
      outlined destroy of _ASTParent?(v9, &_s12_RegexParser3ASTV4AtomV17CharacterPropertyVSgMd, &_s12_RegexParser3ASTV4AtomV17CharacterPropertyVSgMR);
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV17CharacterPropertyVGMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV17CharacterPropertyVGMR);
      (*(*(v45 - 8) + 56))(v44, 1, 1, v45);
    }

    else
    {
      v46 = v9;
      v47 = v65;
      outlined init with take of AST.Atom.Kind(v46, v65, type metadata accessor for AST.Atom.CharacterProperty);
      result = outlined init with take of AST.Atom.Kind(v47, v44, type metadata accessor for AST.Atom.CharacterProperty);
      v48 = v84;
      v49 = v64;
      if (v84 >> 14 < v64 >> 14)
      {
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV17CharacterPropertyVGMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV17CharacterPropertyVGMR);
      v51 = (v44 + *(v50 + 28));
      *v51 = v49;
      v51[1] = v48;
      (*(*(v50 - 8) + 56))(v44, 0, 1, v50);
    }

    outlined destroy of _ASTParent?(v44, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV17CharacterPropertyVGSgMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV17CharacterPropertyVGSgMR);
    v52 = *&v87[1];
    v53 = BYTE8(v87[1]);
    v75 = v85;
    v76 = v86;
    v77[0] = v87[0];
    *(v77 + 9) = *(v87 + 9);
    v73 = v83;
    v74 = v84;

    outlined destroy of Parser(&v73);
    *&v78 = v52;
    BYTE8(v78) = v53;
    v94.diags._rawValue = &v78;
    Diagnostics.appendNewFatalErrors(from:)(v94);

    if (v43 != 1 || (v54._countAndFlagsBits = 91, v54._object = 0xE100000000000000, result = Parser.tryEat(_:)(v54), (result & 1) == 0))
    {
      a1[1] = 0;
      a1[2] = 0;
      *a1 = 2;
      return result;
    }

    v55._countAndFlagsBits = 94;
    v55._object = 0xE100000000000000;
    result = Parser.tryEat(_:)(v55);
    v56 = *(v2 + 16);
    v57 = v63;
    if (v56 >> 14 >= v63 >> 14)
    {
      *a1 = result & 1;
      a1[1] = v57;
      a1[2] = v56;
      return result;
    }

    goto LABEL_35;
  }

  if (v30 < v28)
  {

    v32 = ~v30 + v28;
    for (i = 80 * v30 + 32; ; i += 80)
    {
      v69 = *(v25 + i);
      v34 = *(v25 + i + 16);
      v35 = *(v25 + i + 32);
      v36 = *(v25 + i + 48);
      *(v72 + 9) = *(v25 + i + 57);
      v71 = v35;
      v72[0] = v36;
      v70 = v34;
      if (!v69)
      {
        outlined init with copy of Diagnostic(&v69, &v68);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v23 + 2) + 1, 1, v23);
        }

        v38 = *(v23 + 2);
        v37 = *(v23 + 3);
        if (v38 >= v37 >> 1)
        {
          v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1, v23);
        }

        *(v23 + 2) = v38 + 1;
        v39 = &v23[80 * v38];
        *(v39 + 2) = v69;
        v40 = v70;
        v41 = v71;
        v42 = v72[0];
        *(v39 + 89) = *(v72 + 9);
        *(v39 + 4) = v41;
        *(v39 + 5) = v42;
        *(v39 + 3) = v40;
        v21 = v23;
      }

      if (!v32)
      {
        break;
      }

      --v32;
    }

    swift_unknownObjectRelease();
LABEL_23:

    v31 = v62;
    goto LABEL_24;
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t Parser.lexCustomCCBinOp()@<X0>(void *a1@<X8>)
{
  v3 = v1[1];
  v32[0] = *v1;
  v32[1] = v3;
  v4 = v1[3];
  v5 = v1[4];
  v32[2] = v1[2];
  v32[3] = v4;
  v6 = *(v1 + 2);
  v33[0] = v5;
  *(v33 + 9) = *(v1 + 73);
  outlined init with copy of Parser(v32, &v28);
  v7 = String.subscript.getter();
  v8 = 11565;
  v12 = specialized Sequence<>.starts<A>(with:)(11565, 0xE200000000000000, v7, v9, v10, v11);

  if (v12)
  {
    v13 = 0;
LABEL_5:
    outlined destroy of Parser(v32);
    goto LABEL_6;
  }

  v14 = String.subscript.getter();
  v8 = 32382;
  v18 = specialized Sequence<>.starts<A>(with:)(32382, 0xE200000000000000, v14, v15, v16, v17);

  if (v18)
  {
    v13 = 2;
    goto LABEL_5;
  }

  v22 = String.subscript.getter();
  v8 = 9766;
  v26 = specialized Sequence<>.starts<A>(with:)(9766, 0xE200000000000000, v22, v23, v24, v25);

  result = outlined destroy of Parser(v32);
  if ((v26 & 1) == 0)
  {
    a1[1] = 0;
    a1[2] = 0;
    *a1 = 3;
    return result;
  }

  v13 = 1;
LABEL_6:
  result = specialized Parser.tryEat<A>(sequence:)(v8, 0xE200000000000000);
  if ((result & 1) == 0)
  {
    *&v28 = v8;
    *(&v28 + 1) = 0xE200000000000000;
    *&v28 = String.init<A>(_:)();
    *(&v28 + 1) = v20;
    v29 = 0;
    v30 = 0;
    v31 = 3;
    *&v27 = *(v1 + 2);
    *(&v27 + 1) = v27;
    Diagnostics.error(_:at:)(&v28, &v27);
  }

  v21 = *(v1 + 2);
  if (v21 >> 14 < v6 >> 14)
  {
    __break(1u);
  }

  else
  {
    *a1 = v13;
    a1[1] = v6;
    a1[2] = v21;
  }

  return result;
}

unint64_t closure #1 in Parser.canLexDotNetCharClassSubtraction()@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v402 = a2;
  v410 = type metadata accessor for Unicode.Scalar.Properties();
  MEMORY[0x1EEE9AC00](v410);
  v409 = &v399 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v403 = "Unhandled termination condition";
  v406 = 0x80000001C0C86FA0;
  v408 = (v4 + 8);
  while (1)
  {
    v5 = *(a1 + 32);
    v407 = a1[2];
    if ((v5 & 1) == 0)
    {
      v6 = String.subscript.getter();
      v10 = specialized Sequence<>.starts<A>(with:)(2309928, 0xE300000000000000, v6, v7, v8, v9);

      if (v10)
      {
        v11 = String.count.getter();
        if (!Source.tryAdvance(_:)(v11))
        {
          v12 = a1[2];
          strcpy(v416, "UNREACHABLE: ");
          *&v416[14] = -4864;
          MEMORY[0x1C68E0BF0](0xD000000000000015, v403 | 0x8000000000000000);
          v418[0] = 0;
          *&v418[8] = *v416;
          *&v418[24] = v12;
          *&v419[0] = v12;
          *(v419 + 8) = 0u;
          *(&v419[1] + 8) = 0u;
          BYTE8(v419[2]) = -1;
          if (*(a1 + 88) == 1)
          {
            outlined destroy of Diagnostic(v418);
          }

          else
          {
            v35 = a1[10];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v35 + 2) + 1, 1, v35);
            }

            v37 = *(v35 + 2);
            v36 = *(v35 + 3);
            if (v37 >= v36 >> 1)
            {
              v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1, v35);
            }

            *(v35 + 2) = v37 + 1;
            v38 = &v35[80 * v37];
            *(v38 + 2) = *v418;
            v39 = *&v418[16];
            v40 = v419[0];
            v41 = v419[1];
            *(v38 + 89) = *(&v419[1] + 9);
            *(v38 + 4) = v40;
            *(v38 + 5) = v41;
            *(v38 + 3) = v39;
            a1[10] = v35;
          }

          String.subscript.getter();
          v42 = Substring.distance(from:to:)();

          Source.tryAdvance(_:)(v42);
        }

        v43 = a1[2];
        *&v411 = 0;
        *(&v411 + 1) = 0xE000000000000000;
        result = specialized Parser.tryEatNonEmpty<A>(sequence:)(41, 0xE100000000000000);
        v405 = v43;
        if (result)
        {
LABEL_57:
          if (v43 >> 14 >= v405 >> 14)
          {
            goto LABEL_96;
          }

          goto LABEL_338;
        }

        while (1)
        {
          v49 = *(a1 + 1);
          *v418 = *a1;
          *&v418[16] = v49;
          v50 = *(a1 + 3);
          v419[0] = *(a1 + 2);
          v419[1] = v50;
          v419[2] = *(a1 + 4);
          *(&v419[2] + 9) = *(a1 + 73);
          v51 = *&v418[16];
          outlined init with copy of Parser(v418, v416);
          v52 = String.subscript.getter();
          if (!((v52 ^ v53) >> 14))
          {

            result = outlined destroy of Parser(v418);
            goto LABEL_57;
          }

          v54 = Substring.subscript.getter();
          v56 = v55;

          outlined destroy of Parser(v418);
          String.subscript.getter();
          v43 = Substring.index(_:offsetBy:limitedBy:)();
          v58 = v57;

          if ((v58 & 1) == 0)
          {
            break;
          }

          v416[0] = 0;
          *&v416[8] = 0xD000000000000022;
          *&v416[16] = v406;
          *&v416[24] = v51;
          *&v417[0] = v51;
          *(v417 + 8) = 0u;
          *(&v417[1] + 8) = 0u;
          BYTE8(v417[2]) = -1;
          if (BYTE8(v419[3]))
          {
            outlined destroy of Diagnostic(v416);
          }

          else
          {
            v59 = a1[10];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v59 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v59 + 2) + 1, 1, v59);
            }

            v61 = *(v59 + 2);
            v60 = *(v59 + 3);
            if (v61 >= v60 >> 1)
            {
              v59 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v60 > 1), v61 + 1, 1, v59);
            }

            *(v59 + 2) = v61 + 1;
            v62 = &v59[80 * v61];
            *(v62 + 2) = *v416;
            v63 = *&v416[16];
            v64 = v417[0];
            v65 = v417[1];
            *(v62 + 89) = *(&v417[1] + 9);
            *(v62 + 4) = v64;
            *(v62 + 5) = v65;
            *(v62 + 3) = v63;
            a1[10] = v59;
          }

          String.subscript.getter();
          v66 = Substring.distance(from:to:)();

          if (v66 >= 1)
          {
            String.subscript.getter();
            v43 = Substring.index(_:offsetBy:limitedBy:)();
            v68 = v67;

            if ((v68 & 1) == 0)
            {
              if (*(&v51 + 1) >> 14 < v43 >> 14)
              {
                goto LABEL_333;
              }

              goto LABEL_47;
            }
          }

          v43 = v51;
LABEL_48:
          MEMORY[0x1C68E0BE0](v54, v56);

          *v416 = 41;
          *&v416[8] = 0xE100000000000000;
          v69 = String.init<A>(_:)();
          v71 = v70;
          v432 = v69;
          v433 = v70;
          v434 = 0;
          v435 = 0;
          v436 = 3;
          v72 = String.subscript.getter();
          v74 = v73;

          if ((v72 ^ v74) >> 14)
          {

            v44 = String.subscript.getter();
            v48 = specialized Sequence<>.starts<A>(with:)(41, 0xE100000000000000, v44, v45, v46, v47);

            if (v48)
            {
              v163 = String.count.getter();
              result = Source.tryAdvance(_:)(v163);
              if ((result & 1) == 0)
              {
                v164 = a1[2];
                strcpy(v425, "UNREACHABLE: ");
                HIWORD(v425[1]) = -4864;
                MEMORY[0x1C68E0BF0](0xD000000000000015, v403 | 0x8000000000000000);
                v416[0] = 0;
                *&v416[8] = v425[0];
                *&v416[16] = v425[1];
                *&v416[24] = v164;
                *&v417[0] = v164;
                *(v417 + 8) = 0u;
                *(&v417[1] + 8) = 0u;
                BYTE8(v417[2]) = -1;
                if (a1[11])
                {
                  outlined destroy of Diagnostic(v416);
                }

                else
                {
                  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                  v201 = *(a1[10] + 16);
                  specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v201);
                  v202 = a1[10];
                  *(v202 + 16) = v201 + 1;
                  v203 = (v202 + 80 * v201);
                  v203[2] = *v416;
                  v204 = *&v416[16];
                  v205 = v417[0];
                  v206 = v417[1];
                  *(v203 + 89) = *(&v417[1] + 9);
                  v203[4] = v205;
                  v203[5] = v206;
                  v203[3] = v204;
                  a1[10] = v202;
                }

                String.subscript.getter();
                v207 = Substring.distance(from:to:)();

                result = Source.tryAdvance(_:)(v207);
              }

              goto LABEL_57;
            }
          }

          else
          {
            v75 = a1[2];
            v76 = ParseError.description.getter();
            v416[0] = 1;
            *&v416[8] = v76;
            *&v416[16] = v77;
            *&v416[24] = v75;
            *&v417[0] = v75;
            *(&v417[0] + 1) = v69;
            v417[1] = v71;
            *&v417[2] = 0;
            BYTE8(v417[2]) = 3;
            if (*(a1 + 88) == 1)
            {
              outlined destroy of Diagnostic(v416);
            }

            else
            {
              v78 = a1[10];

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              a1[10] = v78;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v78 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v78 + 2) + 1, 1, v78);
                a1[10] = v78;
              }

              v81 = *(v78 + 2);
              v80 = *(v78 + 3);
              if (v81 >= v80 >> 1)
              {
                a1[10] = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v80 > 1), v81 + 1, 1, v78);
              }

              v82 = a1[10];
              *(v82 + 16) = v81 + 1;
              v83 = (v82 + 80 * v81);
              v83[2] = *v416;
              v84 = *&v416[16];
              v85 = v417[0];
              v86 = v417[1];
              *(v83 + 89) = *(&v417[1] + 9);
              v83[4] = v85;
              v83[5] = v86;
              v83[3] = v84;
              a1[10] = v82;
            }
          }
        }

        if (*(&v51 + 1) >> 14 < v43 >> 14)
        {
          goto LABEL_324;
        }

LABEL_47:
        a1[2] = v43;
        a1[3] = *(&v51 + 1);
        goto LABEL_48;
      }
    }

    v13 = a1[8];
    if ((v13 & 8) == 0 || (v14 = String.subscript.getter(), v18 = specialized Sequence<>.starts<A>(with:)(10799, 0xE200000000000000, v14, v15, v16, v17), , (v18 & 1) == 0))
    {
      if ((v13 & 2) == 0)
      {
        goto LABEL_99;
      }

      v21 = *(a1 + 1);
      *v418 = *a1;
      *&v418[16] = v21;
      v22 = *(a1 + 3);
      v419[0] = *(a1 + 2);
      v419[1] = v22;
      v419[2] = *(a1 + 4);
      *(&v419[2] + 9) = *(a1 + 73);
      outlined init with copy of Parser(v418, v416);
      v23 = String.subscript.getter();
      if (!((v23 ^ v24) >> 14))
      {

        outlined destroy of Parser(v418);
        goto LABEL_99;
      }

      v25 = Substring.subscript.getter();
      v27 = v26;

      outlined destroy of Parser(v418);
      if (v25 == 35 && v27 == 0xE100000000000000)
      {
      }

      else
      {
        v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v28 & 1) == 0)
        {
          goto LABEL_99;
        }
      }

      v29 = a1[3];
      String.subscript.getter();
      v30 = Substring.index(_:offsetBy:limitedBy:)();
      v32 = v31;

      if (v32)
      {
        v34 = a1[2];
        strcpy(&v411, "UNREACHABLE: ");
        HIWORD(v411) = -4864;
        MEMORY[0x1C68E0BF0](0xD000000000000015, v403 | 0x8000000000000000);
        v416[0] = 0;
        *&v416[8] = v411;
        *&v416[24] = v34;
        *&v417[0] = v34;
        *(v417 + 8) = 0u;
        *(&v417[1] + 8) = 0u;
        BYTE8(v417[2]) = -1;
        if (*(a1 + 88) == 1)
        {
          outlined destroy of Diagnostic(v416);
        }

        else
        {
          v167 = a1[10];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v167 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v167 + 2) + 1, 1, v167);
          }

          v169 = *(v167 + 2);
          v168 = *(v167 + 3);
          if (v169 >= v168 >> 1)
          {
            v167 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v168 > 1), v169 + 1, 1, v167);
          }

          *(v167 + 2) = v169 + 1;
          v170 = &v167[80 * v169];
          *(v170 + 2) = *v416;
          v171 = *&v416[16];
          v172 = v417[0];
          v173 = v417[1];
          *(v170 + 89) = *(&v417[1] + 9);
          *(v170 + 4) = v172;
          *(v170 + 5) = v173;
          *(v170 + 3) = v171;
          a1[10] = v167;
        }

        String.subscript.getter();
        v174 = Substring.distance(from:to:)();

        if (v174 < 1 || (v29 = a1[3], String.subscript.getter(), v30 = Substring.index(_:offsetBy:limitedBy:)(), v176 = v175, result = , (v176 & 1) != 0))
        {
LABEL_142:
          v177 = a1[2];
          v425[0] = 0;
          v425[1] = 0xE000000000000000;
          result = closure #1 in closure #1 in Parser.lexComment()(a1);
          v178 = v177;
          v179 = v177;
          if (result)
          {
            goto LABEL_161;
          }

          while (1)
          {
            v180 = *(a1 + 1);
            *v416 = *a1;
            *&v416[16] = v180;
            v181 = *(a1 + 3);
            v417[0] = *(a1 + 2);
            v417[1] = v181;
            v417[2] = *(a1 + 4);
            *(&v417[2] + 9) = *(a1 + 73);
            v182 = *&v416[24];
            v178 = *&v416[16];
            outlined init with copy of Parser(v416, &v411);
            v183 = String.subscript.getter();
            if (!((v183 ^ v184) >> 14))
            {

              result = outlined destroy of Parser(v416);
              v178 = v179;
LABEL_161:
              if (v178 >> 14 < v177 >> 14)
              {
                goto LABEL_347;
              }

              v139 = v425[1];
              goto LABEL_97;
            }

            v185 = Substring.subscript.getter();
            v187 = v186;

            outlined destroy of Parser(v416);
            String.subscript.getter();
            v188 = Substring.index(_:offsetBy:limitedBy:)();
            v190 = v189;

            if (v190)
            {
              LOBYTE(v411) = 0;
              *(&v411 + 1) = 0xD000000000000022;
              *&v412 = v406;
              *(&v412 + 1) = v178;
              *&v413[0] = v178;
              *(v413 + 8) = 0u;
              *(&v413[1] + 8) = 0u;
              BYTE8(v413[2]) = -1;
              if (BYTE8(v417[3]))
              {
                outlined destroy of Diagnostic(&v411);
              }

              else
              {
                v191 = a1[10];
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v191 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v191 + 2) + 1, 1, v191);
                }

                v193 = *(v191 + 2);
                v192 = *(v191 + 3);
                if (v193 >= v192 >> 1)
                {
                  v191 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v192 > 1), v193 + 1, 1, v191);
                }

                *(v191 + 2) = v193 + 1;
                v194 = &v191[80 * v193];
                *(v194 + 2) = v411;
                v195 = v412;
                v196 = v413[0];
                v197 = v413[1];
                *(v194 + 89) = *(&v413[1] + 9);
                *(v194 + 4) = v196;
                *(v194 + 5) = v197;
                *(v194 + 3) = v195;
                a1[10] = v191;
              }

              String.subscript.getter();
              v198 = Substring.distance(from:to:)();

              if (v198 < 1)
              {
                goto LABEL_146;
              }

              String.subscript.getter();
              v188 = Substring.index(_:offsetBy:limitedBy:)();
              v200 = v199;

              if (v200)
              {
                goto LABEL_146;
              }

              if (v182 >> 14 < v188 >> 14)
              {
                goto LABEL_345;
              }
            }

            else if (v182 >> 14 < v188 >> 14)
            {
              goto LABEL_332;
            }

            a1[2] = v188;
            a1[3] = v182;
            v178 = v188;
LABEL_146:
            MEMORY[0x1C68E0BE0](v185, v187);

            result = closure #1 in closure #1 in Parser.lexComment()(a1);
            v179 = v178;
            if (result)
            {
              goto LABEL_161;
            }
          }
        }

        if (v29 >> 14 < v30 >> 14)
        {
          goto LABEL_355;
        }
      }

      else if (v29 >> 14 < v30 >> 14)
      {
        goto LABEL_351;
      }

      a1[2] = v30;
      a1[3] = v29;
      goto LABEL_142;
    }

    v19 = String.count.getter();
    if (!Source.tryAdvance(_:)(v19))
    {
      v20 = a1[2];
      strcpy(v416, "UNREACHABLE: ");
      *&v416[14] = -4864;
      MEMORY[0x1C68E0BF0](0xD000000000000015, v403 | 0x8000000000000000);
      v418[0] = 0;
      *&v418[8] = *v416;
      *&v418[24] = v20;
      *&v419[0] = v20;
      *(v419 + 8) = 0u;
      *(&v419[1] + 8) = 0u;
      BYTE8(v419[2]) = -1;
      if (*(a1 + 88) == 1)
      {
        outlined destroy of Diagnostic(v418);
      }

      else
      {
        v87 = a1[10];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v87 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v87 + 2) + 1, 1, v87);
        }

        v89 = *(v87 + 2);
        v88 = *(v87 + 3);
        if (v89 >= v88 >> 1)
        {
          v87 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v88 > 1), v89 + 1, 1, v87);
        }

        *(v87 + 2) = v89 + 1;
        v90 = &v87[80 * v89];
        *(v90 + 2) = *v418;
        v91 = *&v418[16];
        v92 = v419[0];
        v93 = v419[1];
        *(v90 + 89) = *(&v419[1] + 9);
        *(v90 + 4) = v92;
        *(v90 + 5) = v93;
        *(v90 + 3) = v91;
        a1[10] = v87;
      }

      String.subscript.getter();
      v94 = Substring.distance(from:to:)();

      Source.tryAdvance(_:)(v94);
    }

    v95 = a1[2];
    *&v411 = 0;
    *(&v411 + 1) = 0xE000000000000000;
    result = specialized Parser.tryEatNonEmpty<A>(sequence:)(12074, 0xE200000000000000);
    v405 = v95;
    if (result)
    {
      goto LABEL_95;
    }

    do
    {
      while (1)
      {
        v101 = *(a1 + 1);
        *v418 = *a1;
        *&v418[16] = v101;
        v102 = *(a1 + 3);
        v419[0] = *(a1 + 2);
        v419[1] = v102;
        v419[2] = *(a1 + 4);
        *(&v419[2] + 9) = *(a1 + 73);
        v103 = *&v418[16];
        outlined init with copy of Parser(v418, v416);
        v104 = String.subscript.getter();
        if (!((v104 ^ v105) >> 14))
        {

          result = outlined destroy of Parser(v418);
          goto LABEL_95;
        }

        v106 = Substring.subscript.getter();
        v108 = v107;

        outlined destroy of Parser(v418);
        String.subscript.getter();
        v95 = Substring.index(_:offsetBy:limitedBy:)();
        v110 = v109;

        if (v110)
        {
          v416[0] = 0;
          *&v416[8] = 0xD000000000000022;
          *&v416[16] = v406;
          *&v416[24] = v103;
          *&v417[0] = v103;
          *(v417 + 8) = 0u;
          *(&v417[1] + 8) = 0u;
          BYTE8(v417[2]) = -1;
          if (BYTE8(v419[3]))
          {
            outlined destroy of Diagnostic(v416);
          }

          else
          {
            v111 = a1[10];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v111 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v111 + 2) + 1, 1, v111);
            }

            v113 = *(v111 + 2);
            v112 = *(v111 + 3);
            if (v113 >= v112 >> 1)
            {
              v111 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v112 > 1), v113 + 1, 1, v111);
            }

            *(v111 + 2) = v113 + 1;
            v114 = &v111[80 * v113];
            *(v114 + 2) = *v416;
            v115 = *&v416[16];
            v116 = v417[0];
            v117 = v417[1];
            *(v114 + 89) = *(&v417[1] + 9);
            *(v114 + 4) = v116;
            *(v114 + 5) = v117;
            *(v114 + 3) = v115;
            a1[10] = v111;
          }

          String.subscript.getter();
          v118 = Substring.distance(from:to:)();

          if (v118 < 1 || (String.subscript.getter(), v95 = Substring.index(_:offsetBy:limitedBy:)(), v120 = v119, result = , (v120 & 1) != 0))
          {
            v95 = v103;
            goto LABEL_86;
          }

          if (*(&v103 + 1) >> 14 < v95 >> 14)
          {
            goto LABEL_334;
          }
        }

        else if (*(&v103 + 1) >> 14 < v95 >> 14)
        {
          goto LABEL_325;
        }

        a1[2] = v95;
        a1[3] = *(&v103 + 1);
LABEL_86:
        MEMORY[0x1C68E0BE0](v106, v108);

        *v416 = 12074;
        *&v416[8] = 0xE200000000000000;
        v121 = String.init<A>(_:)();
        v123 = v122;
        v427 = v121;
        v428 = v122;
        v429 = 0;
        v430 = 0;
        v431 = 3;
        v124 = String.subscript.getter();
        v126 = v125;

        if ((v124 ^ v126) >> 14)
        {
          break;
        }

        v127 = a1[2];
        v128 = ParseError.description.getter();
        v416[0] = 1;
        *&v416[8] = v128;
        *&v416[16] = v129;
        *&v416[24] = v127;
        *&v417[0] = v127;
        *(&v417[0] + 1) = v121;
        v417[1] = v123;
        *&v417[2] = 0;
        BYTE8(v417[2]) = 3;
        if (*(a1 + 88) == 1)
        {
          outlined destroy of Diagnostic(v416);
        }

        else
        {
          v130 = a1[10];

          v131 = swift_isUniquelyReferenced_nonNull_native();
          a1[10] = v130;
          if ((v131 & 1) == 0)
          {
            v130 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v130 + 2) + 1, 1, v130);
            a1[10] = v130;
          }

          v133 = *(v130 + 2);
          v132 = *(v130 + 3);
          if (v133 >= v132 >> 1)
          {
            a1[10] = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v132 > 1), v133 + 1, 1, v130);
          }

          v134 = a1[10];
          *(v134 + 16) = v133 + 1;
          v135 = (v134 + 80 * v133);
          v135[2] = *v416;
          v136 = *&v416[16];
          v137 = v417[0];
          v138 = v417[1];
          *(v135 + 89) = *(&v417[1] + 9);
          v135[4] = v137;
          v135[5] = v138;
          v135[3] = v136;
          a1[10] = v134;
        }
      }

      v96 = String.subscript.getter();
      v100 = specialized Sequence<>.starts<A>(with:)(12074, 0xE200000000000000, v96, v97, v98, v99);
    }

    while ((v100 & 1) == 0);
    v165 = String.count.getter();
    result = Source.tryAdvance(_:)(v165);
    if ((result & 1) == 0)
    {
      v166 = a1[2];
      strcpy(v425, "UNREACHABLE: ");
      HIWORD(v425[1]) = -4864;
      MEMORY[0x1C68E0BF0](0xD000000000000015, v403 | 0x8000000000000000);
      v416[0] = 0;
      *&v416[8] = v425[0];
      *&v416[16] = v425[1];
      *&v416[24] = v166;
      *&v417[0] = v166;
      *(v417 + 8) = 0u;
      *(&v417[1] + 8) = 0u;
      BYTE8(v417[2]) = -1;
      if (a1[11])
      {
        outlined destroy of Diagnostic(v416);
      }

      else
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v208 = *(a1[10] + 16);
        specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v208);
        v209 = a1[10];
        *(v209 + 16) = v208 + 1;
        v210 = (v209 + 80 * v208);
        v210[2] = *v416;
        v211 = *&v416[16];
        v212 = v417[0];
        v213 = v417[1];
        *(v210 + 89) = *(&v417[1] + 9);
        v210[4] = v212;
        v210[5] = v213;
        v210[3] = v211;
        a1[10] = v209;
      }

      String.subscript.getter();
      v214 = Substring.distance(from:to:)();

      result = Source.tryAdvance(_:)(v214);
    }

LABEL_95:
    if (v95 >> 14 < v405 >> 14)
    {
      goto LABEL_342;
    }

LABEL_96:
    v139 = *(&v411 + 1);
LABEL_97:
    if (a1[2] >> 14 < v407 >> 14)
    {
      goto LABEL_330;
    }

    if (v139)
    {
      goto LABEL_2;
    }

LABEL_99:
    if ((a1[8] & 1) == 0)
    {
      goto LABEL_168;
    }

    v140 = a1[2];
    result = String.subscript.getter();
    if (v141 >> 14 < result >> 14)
    {
      goto LABEL_326;
    }

    v405 = v140;
    v142 = Substring.subscript.getter();
    v144 = v143;

    v407 = v144 >> 14;
    if (v142 >> 14 == v144 >> 14)
    {
      goto LABEL_119;
    }

    v404 = v142 >> 14;
    v145 = v142 >> 14;
    while (2)
    {
      result = Substring.subscript.getter();
      if ((v146 & 0x2000000000000000) != 0)
      {
        v147 = HIBYTE(v146) & 0xF;
      }

      else
      {
        v147 = result & 0xFFFFFFFFFFFFLL;
      }

      if (!v147)
      {
        __break(1u);
LABEL_323:
        __break(1u);
LABEL_324:
        __break(1u);
LABEL_325:
        __break(1u);
LABEL_326:
        __break(1u);
LABEL_327:
        __break(1u);
LABEL_328:
        __break(1u);
LABEL_329:
        __break(1u);
LABEL_330:
        __break(1u);
LABEL_331:
        __break(1u);
LABEL_332:
        __break(1u);
LABEL_333:
        __break(1u);
LABEL_334:
        __break(1u);
LABEL_335:
        __break(1u);
LABEL_336:
        __break(1u);
LABEL_337:
        __break(1u);
LABEL_338:
        __break(1u);
LABEL_339:
        __break(1u);
        goto LABEL_340;
      }

      if ((v146 & 0x1000000000000000) != 0)
      {
        _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
      }

      else
      {
        if ((v146 & 0x2000000000000000) != 0)
        {
          *v418 = result;
          *&v418[8] = v146 & 0xFFFFFFFFFFFFFFLL;
        }

        else if ((result & 0x1000000000000000) == 0)
        {
          _StringObject.sharedUTF8.getter();
        }

        _decodeScalar(_:startingAt:)();
      }

      v148 = v409;
      Unicode.Scalar.properties.getter();
      v149 = Unicode.Scalar.Properties.isPatternWhitespace.getter();
      result = (*v408)(v148, v410);
      if ((v149 & 1) == 0)
      {
        goto LABEL_118;
      }

      result = Substring.index(after:)();
      v145 = result >> 14;
      if (result >> 14 != v407)
      {
        continue;
      }

      break;
    }

    v145 = v407;
LABEL_118:
    if (v145 < v404)
    {
      goto LABEL_327;
    }

LABEL_119:
    v150 = Substring.subscript.getter();
    v152 = v151;
    v154 = v153;
    v156 = v155;

    if (!((v150 ^ v152) >> 14))
    {

LABEL_168:
      v215 = a1[2];
      v216._countAndFlagsBits = 45;
      v216._object = 0xE100000000000000;
      result = Parser.tryEat(_:)(v216);
      if ((result & 1) == 0)
      {
        goto LABEL_320;
      }

      if (a1[2] >> 14 < v215 >> 14)
      {
        goto LABEL_353;
      }

      v400 = a1[2];
      v401 = v215;
      while (2)
      {
        v217 = *(a1 + 32);
        v407 = a1[2];
        if ((v217 & 1) == 0)
        {
          v218 = String.subscript.getter();
          v222 = specialized Sequence<>.starts<A>(with:)(2309928, 0xE300000000000000, v218, v219, v220, v221);

          if (v222)
          {
            v223 = String.count.getter();
            if (!Source.tryAdvance(_:)(v223))
            {
              v224 = a1[2];
              strcpy(v416, "UNREACHABLE: ");
              *&v416[14] = -4864;
              MEMORY[0x1C68E0BF0](0xD000000000000015, v403 | 0x8000000000000000);
              v418[0] = 0;
              *&v418[8] = *v416;
              *&v418[24] = v224;
              *&v419[0] = v224;
              *(v419 + 8) = 0u;
              *(&v419[1] + 8) = 0u;
              BYTE8(v419[2]) = -1;
              if (*(a1 + 88) == 1)
              {
                outlined destroy of Diagnostic(v418);
              }

              else
              {
                specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                v246 = *(a1[10] + 16);
                specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v246);
                v247 = a1[10];
                *(v247 + 16) = v246 + 1;
                v248 = (v247 + 80 * v246);
                v248[2] = *v418;
                v249 = *&v418[16];
                v250 = v419[0];
                v251 = v419[1];
                *(v248 + 89) = *(&v419[1] + 9);
                v248[4] = v250;
                v248[5] = v251;
                v248[3] = v249;
                a1[10] = v247;
              }

              String.subscript.getter();
              v252 = Substring.distance(from:to:)();

              Source.tryAdvance(_:)(v252);
            }

            v253 = a1[2];
            *&v411 = 0;
            *(&v411 + 1) = 0xE000000000000000;
            result = specialized Parser.tryEatNonEmpty<A>(sequence:)(41, 0xE100000000000000);
            v405 = v253;
            if (result)
            {
LABEL_222:
              if (v253 >> 14 < v405 >> 14)
              {
                goto LABEL_346;
              }

              goto LABEL_257;
            }

            while (2)
            {
              v254 = *(a1 + 1);
              *v418 = *a1;
              *&v418[16] = v254;
              v255 = *(a1 + 3);
              v419[0] = *(a1 + 2);
              v419[1] = v255;
              v419[2] = *(a1 + 4);
              *(&v419[2] + 9) = *(a1 + 73);
              v256 = *&v418[16];
              outlined init with copy of Parser(v418, v416);
              v257 = String.subscript.getter();
              if (!((v257 ^ v258) >> 14))
              {

                result = outlined destroy of Parser(v418);
                goto LABEL_222;
              }

              v259 = Substring.subscript.getter();
              v261 = v260;

              outlined destroy of Parser(v418);
              String.subscript.getter();
              v253 = Substring.index(_:offsetBy:limitedBy:)();
              v263 = v262;

              if (v263)
              {
                v416[0] = 0;
                *&v416[8] = 0xD000000000000022;
                *&v416[16] = v406;
                *&v416[24] = v256;
                *&v417[0] = v256;
                *(v417 + 8) = 0u;
                *(&v417[1] + 8) = 0u;
                BYTE8(v417[2]) = -1;
                if (BYTE8(v419[3]))
                {
                  outlined destroy of Diagnostic(v416);
                }

                else
                {
                  v264 = a1[10];
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v264 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v264 + 2) + 1, 1, v264);
                  }

                  v266 = *(v264 + 2);
                  v265 = *(v264 + 3);
                  if (v266 >= v265 >> 1)
                  {
                    v264 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v265 > 1), v266 + 1, 1, v264);
                  }

                  *(v264 + 2) = v266 + 1;
                  v267 = &v264[80 * v266];
                  *(v267 + 2) = *v416;
                  v268 = *&v416[16];
                  v269 = v417[0];
                  v270 = v417[1];
                  *(v267 + 89) = *(&v417[1] + 9);
                  *(v267 + 4) = v269;
                  *(v267 + 5) = v270;
                  *(v267 + 3) = v268;
                  a1[10] = v264;
                }

                String.subscript.getter();
                v271 = Substring.distance(from:to:)();

                if (v271 < 1 || (String.subscript.getter(), v253 = Substring.index(_:offsetBy:limitedBy:)(), v273 = v272, result = , (v273 & 1) != 0))
                {
                  v253 = v256;
                  goto LABEL_213;
                }

                if (*(&v256 + 1) >> 14 < v253 >> 14)
                {
                  goto LABEL_343;
                }
              }

              else if (*(&v256 + 1) >> 14 < v253 >> 14)
              {
                goto LABEL_329;
              }

              a1[2] = v253;
              a1[3] = *(&v256 + 1);
LABEL_213:
              MEMORY[0x1C68E0BE0](v259, v261);

              *v416 = 41;
              *&v416[8] = 0xE100000000000000;
              v274 = String.init<A>(_:)();
              v276 = v275;
              v425[0] = v274;
              v425[1] = v275;
              v425[2] = 0;
              v425[3] = 0;
              v426 = 3;
              v277 = String.subscript.getter();
              v279 = v278;

              if ((v277 ^ v279) >> 14)
              {

                result = specialized Parser.tryEat<A>(sequence:)(41, 0xE100000000000000);
                if (result)
                {
                  goto LABEL_222;
                }
              }

              else
              {
                v280 = a1[2];
                v281 = ParseError.description.getter();
                v416[0] = 1;
                *&v416[8] = v281;
                *&v416[16] = v282;
                *&v416[24] = v280;
                *&v417[0] = v280;
                *(&v417[0] + 1) = v274;
                v417[1] = v276;
                *&v417[2] = 0;
                BYTE8(v417[2]) = 3;
                if (*(a1 + 88) == 1)
                {
                  outlined destroy of Diagnostic(v416);
                }

                else
                {
                  v283 = a1[10];

                  v284 = swift_isUniquelyReferenced_nonNull_native();
                  a1[10] = v283;
                  if ((v284 & 1) == 0)
                  {
                    v283 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v283 + 2) + 1, 1, v283);
                    a1[10] = v283;
                  }

                  v286 = *(v283 + 2);
                  v285 = *(v283 + 3);
                  if (v286 >= v285 >> 1)
                  {
                    a1[10] = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v285 > 1), v286 + 1, 1, v283);
                  }

                  v287 = a1[10];
                  *(v287 + 16) = v286 + 1;
                  v288 = (v287 + 80 * v286);
                  v288[2] = *v416;
                  v289 = *&v416[16];
                  v290 = v417[0];
                  v291 = v417[1];
                  *(v288 + 89) = *(&v417[1] + 9);
                  v288[4] = v290;
                  v288[5] = v291;
                  v288[3] = v289;
                  a1[10] = v287;
                }
              }

              continue;
            }
          }
        }

        v225 = a1[8];
        if ((v225 & 8) != 0)
        {
          v226 = String.subscript.getter();
          v230 = specialized Sequence<>.starts<A>(with:)(10799, 0xE200000000000000, v226, v227, v228, v229);

          if (v230)
          {
            v231 = String.count.getter();
            if (!Source.tryAdvance(_:)(v231))
            {
              v232 = a1[2];
              strcpy(v416, "UNREACHABLE: ");
              *&v416[14] = -4864;
              MEMORY[0x1C68E0BF0](0xD000000000000015, v403 | 0x8000000000000000);
              v418[0] = 0;
              *&v418[8] = *v416;
              *&v418[24] = v232;
              *&v419[0] = v232;
              *(v419 + 8) = 0u;
              *(&v419[1] + 8) = 0u;
              BYTE8(v419[2]) = -1;
              if (*(a1 + 88) == 1)
              {
                outlined destroy of Diagnostic(v418);
              }

              else
              {
                specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                v292 = *(a1[10] + 16);
                specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v292);
                v293 = a1[10];
                *(v293 + 16) = v292 + 1;
                v294 = (v293 + 80 * v292);
                v294[2] = *v418;
                v295 = *&v418[16];
                v296 = v419[0];
                v297 = v419[1];
                *(v294 + 89) = *(&v419[1] + 9);
                v294[4] = v296;
                v294[5] = v297;
                v294[3] = v295;
                a1[10] = v293;
              }

              String.subscript.getter();
              v298 = Substring.distance(from:to:)();

              Source.tryAdvance(_:)(v298);
            }

            v299 = a1[2];
            *&v411 = 0;
            *(&v411 + 1) = 0xE000000000000000;
            result = specialized Parser.tryEatNonEmpty<A>(sequence:)(12074, 0xE200000000000000);
            v405 = v299;
            if (result)
            {
LABEL_256:
              if (v299 >> 14 < v405 >> 14)
              {
                goto LABEL_349;
              }

LABEL_257:
              v338 = *(&v411 + 1);
LABEL_258:
              if (a1[2] >> 14 < v407 >> 14)
              {
                goto LABEL_339;
              }

              if (v338)
              {
LABEL_171:

                continue;
              }

LABEL_260:
              if ((a1[8] & 1) == 0)
              {
                goto LABEL_319;
              }

              v339 = a1[2];
              result = String.subscript.getter();
              if (v340 >> 14 < result >> 14)
              {
                goto LABEL_335;
              }

              v405 = v339;
              v341 = Substring.subscript.getter();
              v343 = v342;

              v344 = v341 >> 14;
              v407 = v343 >> 14;
              if (v341 >> 14 != v343 >> 14)
              {
                v404 = v341 >> 14;
                while (1)
                {
                  result = Substring.subscript.getter();
                  if (!((v345 & 0x2000000000000000) != 0 ? HIBYTE(v345) & 0xF : result & 0xFFFFFFFFFFFFLL))
                  {
                    goto LABEL_323;
                  }

                  if ((v345 & 0x1000000000000000) != 0)
                  {
                    _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
                  }

                  else
                  {
                    if ((v345 & 0x2000000000000000) != 0)
                    {
                      *v418 = result;
                      *&v418[8] = v345 & 0xFFFFFFFFFFFFFFLL;
                    }

                    else if ((result & 0x1000000000000000) == 0)
                    {
                      _StringObject.sharedUTF8.getter();
                    }

                    _decodeScalar(_:startingAt:)();
                  }

                  v347 = v409;
                  Unicode.Scalar.properties.getter();
                  v348 = Unicode.Scalar.Properties.isPatternWhitespace.getter();
                  result = (*v408)(v347, v410);
                  if ((v348 & 1) == 0)
                  {
                    goto LABEL_279;
                  }

                  result = Substring.index(after:)();
                  v344 = result >> 14;
                  if (result >> 14 == v407)
                  {
                    v344 = v407;
LABEL_279:
                    if (v344 < v404)
                    {
                      goto LABEL_336;
                    }

                    break;
                  }
                }
              }

              v349 = Substring.subscript.getter();
              v351 = v350;
              v353 = v352;
              v355 = v354;

              if ((v349 ^ v351) >> 14)
              {
                if (Substring.distance(from:to:)() >= 1)
                {
                  v356 = a1[3];
                  String.subscript.getter();
                  v357 = Substring.index(_:offsetBy:limitedBy:)();
                  v359 = v358;

                  if ((v359 & 1) == 0)
                  {
                    if (v356 >> 14 < v357 >> 14)
                    {
                      goto LABEL_348;
                    }

                    a1[2] = v357;
                    a1[3] = v356;
                  }
                }

                MEMORY[0x1C68E0B20](v349, v351, v353, v355);
                v361 = v360;

                if (a1[2] >> 14 < v405 >> 14)
                {
                  goto LABEL_337;
                }

                if (!v361)
                {
                  goto LABEL_319;
                }

                goto LABEL_171;
              }

LABEL_319:
              result = Parser.lexCustomCCStart()(v418);
              if (v418[0] != 2)
              {
                v397 = v402;
                v398 = v400;
                *v402 = v401;
                v397[1] = v398;
                *(v397 + 16) = 0;
                return result;
              }

LABEL_320:
              v396 = v402;
              *v402 = 0;
              v396[1] = 0;
              *(v396 + 16) = 1;
              return result;
            }

            while (2)
            {
              v300 = *(a1 + 1);
              *v418 = *a1;
              *&v418[16] = v300;
              v301 = *(a1 + 3);
              v419[0] = *(a1 + 2);
              v419[1] = v301;
              v419[2] = *(a1 + 4);
              *(&v419[2] + 9) = *(a1 + 73);
              v302 = *&v418[16];
              outlined init with copy of Parser(v418, v416);
              v303 = String.subscript.getter();
              if (!((v303 ^ v304) >> 14))
              {

                result = outlined destroy of Parser(v418);
                goto LABEL_256;
              }

              v305 = Substring.subscript.getter();
              v307 = v306;

              outlined destroy of Parser(v418);
              String.subscript.getter();
              v299 = Substring.index(_:offsetBy:limitedBy:)();
              v309 = v308;

              if (v309)
              {
                v416[0] = 0;
                *&v416[8] = 0xD000000000000022;
                *&v416[16] = v406;
                *&v416[24] = v302;
                *&v417[0] = v302;
                *(v417 + 8) = 0u;
                *(&v417[1] + 8) = 0u;
                BYTE8(v417[2]) = -1;
                if (BYTE8(v419[3]))
                {
                  outlined destroy of Diagnostic(v416);
                }

                else
                {
                  v310 = a1[10];
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v310 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v310 + 2) + 1, 1, v310);
                  }

                  v312 = *(v310 + 2);
                  v311 = *(v310 + 3);
                  if (v312 >= v311 >> 1)
                  {
                    v310 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v311 > 1), v312 + 1, 1, v310);
                  }

                  *(v310 + 2) = v312 + 1;
                  v313 = &v310[80 * v312];
                  *(v313 + 2) = *v416;
                  v314 = *&v416[16];
                  v315 = v417[0];
                  v316 = v417[1];
                  *(v313 + 89) = *(&v417[1] + 9);
                  *(v313 + 4) = v315;
                  *(v313 + 5) = v316;
                  *(v313 + 3) = v314;
                  a1[10] = v310;
                }

                String.subscript.getter();
                v317 = Substring.distance(from:to:)();

                if (v317 < 1 || (String.subscript.getter(), v299 = Substring.index(_:offsetBy:limitedBy:)(), v319 = v318, result = , (v319 & 1) != 0))
                {
                  v299 = v302;
                  goto LABEL_247;
                }

                if (*(&v302 + 1) >> 14 < v299 >> 14)
                {
                  goto LABEL_344;
                }
              }

              else if (*(&v302 + 1) >> 14 < v299 >> 14)
              {
                goto LABEL_331;
              }

              a1[2] = v299;
              a1[3] = *(&v302 + 1);
LABEL_247:
              MEMORY[0x1C68E0BE0](v305, v307);

              *v416 = 12074;
              *&v416[8] = 0xE200000000000000;
              v320 = String.init<A>(_:)();
              v322 = v321;
              v420 = v320;
              v421 = v321;
              v422 = 0;
              v423 = 0;
              v424 = 3;
              v323 = String.subscript.getter();
              v325 = v324;

              if ((v323 ^ v325) >> 14)
              {

                result = specialized Parser.tryEat<A>(sequence:)(12074, 0xE200000000000000);
                if (result)
                {
                  goto LABEL_256;
                }
              }

              else
              {
                v326 = a1[2];
                v327 = ParseError.description.getter();
                v416[0] = 1;
                *&v416[8] = v327;
                *&v416[16] = v328;
                *&v416[24] = v326;
                *&v417[0] = v326;
                *(&v417[0] + 1) = v320;
                v417[1] = v322;
                *&v417[2] = 0;
                BYTE8(v417[2]) = 3;
                if (*(a1 + 88) == 1)
                {
                  outlined destroy of Diagnostic(v416);
                }

                else
                {
                  v329 = a1[10];

                  v330 = swift_isUniquelyReferenced_nonNull_native();
                  a1[10] = v329;
                  if ((v330 & 1) == 0)
                  {
                    v329 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v329 + 2) + 1, 1, v329);
                    a1[10] = v329;
                  }

                  v332 = *(v329 + 2);
                  v331 = *(v329 + 3);
                  if (v332 >= v331 >> 1)
                  {
                    a1[10] = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v331 > 1), v332 + 1, 1, v329);
                  }

                  v333 = a1[10];
                  *(v333 + 16) = v332 + 1;
                  v334 = (v333 + 80 * v332);
                  v334[2] = *v416;
                  v335 = *&v416[16];
                  v336 = v417[0];
                  v337 = v417[1];
                  *(v334 + 89) = *(&v417[1] + 9);
                  v334[4] = v336;
                  v334[5] = v337;
                  v334[3] = v335;
                  a1[10] = v333;
                }
              }

              continue;
            }
          }
        }

        break;
      }

      if ((v225 & 2) == 0)
      {
        goto LABEL_260;
      }

      v233 = *(a1 + 1);
      *v418 = *a1;
      *&v418[16] = v233;
      v234 = *(a1 + 3);
      v419[0] = *(a1 + 2);
      v419[1] = v234;
      v419[2] = *(a1 + 4);
      *(&v419[2] + 9) = *(a1 + 73);
      outlined init with copy of Parser(v418, v416);
      v235 = String.subscript.getter();
      if (!((v235 ^ v236) >> 14))
      {

        outlined destroy of Parser(v418);
        goto LABEL_260;
      }

      v237 = Substring.subscript.getter();
      v239 = v238;

      outlined destroy of Parser(v418);
      if (v237 == 35 && v239 == 0xE100000000000000)
      {
      }

      else
      {
        v240 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v240 & 1) == 0)
        {
          goto LABEL_260;
        }
      }

      v241 = a1[3];
      String.subscript.getter();
      v242 = Substring.index(_:offsetBy:limitedBy:)();
      v244 = v243;

      if ((v244 & 1) == 0)
      {
        if (v241 >> 14 < v242 >> 14)
        {
          goto LABEL_354;
        }

        goto LABEL_296;
      }

      v245 = a1[2];
      strcpy(&v411, "UNREACHABLE: ");
      HIWORD(v411) = -4864;
      MEMORY[0x1C68E0BF0](0xD000000000000015, v403 | 0x8000000000000000);
      v416[0] = 0;
      *&v416[8] = v411;
      *&v416[24] = v245;
      *&v417[0] = v245;
      *(v417 + 8) = 0u;
      *(&v417[1] + 8) = 0u;
      BYTE8(v417[2]) = -1;
      if (*(a1 + 88) == 1)
      {
        outlined destroy of Diagnostic(v416);
      }

      else
      {
        v362 = a1[10];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v362 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v362 + 2) + 1, 1, v362);
        }

        v364 = *(v362 + 2);
        v363 = *(v362 + 3);
        if (v364 >= v363 >> 1)
        {
          v362 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v363 > 1), v364 + 1, 1, v362);
        }

        *(v362 + 2) = v364 + 1;
        v365 = &v362[80 * v364];
        *(v365 + 2) = *v416;
        v366 = *&v416[16];
        v367 = v417[0];
        v368 = v417[1];
        *(v365 + 89) = *(&v417[1] + 9);
        *(v365 + 4) = v367;
        *(v365 + 5) = v368;
        *(v365 + 3) = v366;
        a1[10] = v362;
      }

      String.subscript.getter();
      v369 = Substring.distance(from:to:)();

      if (v369 >= 1)
      {
        v241 = a1[3];
        String.subscript.getter();
        v242 = Substring.index(_:offsetBy:limitedBy:)();
        v371 = v370;

        if ((v371 & 1) == 0)
        {
          if (v241 >> 14 < v242 >> 14)
          {
            goto LABEL_356;
          }

LABEL_296:
          a1[2] = v242;
          a1[3] = v241;
        }
      }

      v372 = a1[2];
      v414 = 0;
      v415 = 0xE000000000000000;
      result = closure #1 in closure #1 in Parser.lexComment()(a1);
      v373 = v372;
      v374 = v372;
      if (result)
      {
LABEL_316:
        if (v373 >> 14 < v372 >> 14)
        {
          goto LABEL_352;
        }

        v338 = v415;
        goto LABEL_258;
      }

      while (2)
      {
        v375 = *(a1 + 1);
        *v416 = *a1;
        *&v416[16] = v375;
        v376 = *(a1 + 3);
        v417[0] = *(a1 + 2);
        v417[1] = v376;
        v417[2] = *(a1 + 4);
        *(&v417[2] + 9) = *(a1 + 73);
        v377 = *&v416[24];
        v373 = *&v416[16];
        outlined init with copy of Parser(v416, &v411);
        v378 = String.subscript.getter();
        if (!((v378 ^ v379) >> 14))
        {

          result = outlined destroy of Parser(v416);
          v373 = v374;
          goto LABEL_316;
        }

        v380 = Substring.subscript.getter();
        v382 = v381;

        outlined destroy of Parser(v416);
        String.subscript.getter();
        v383 = Substring.index(_:offsetBy:limitedBy:)();
        v385 = v384;

        if (v385)
        {
          LOBYTE(v411) = 0;
          *(&v411 + 1) = 0xD000000000000022;
          *&v412 = v406;
          *(&v412 + 1) = v373;
          *&v413[0] = v373;
          *(v413 + 8) = 0u;
          *(&v413[1] + 8) = 0u;
          BYTE8(v413[2]) = -1;
          if (BYTE8(v417[3]))
          {
            outlined destroy of Diagnostic(&v411);
          }

          else
          {
            v386 = a1[10];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v386 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v386 + 2) + 1, 1, v386);
            }

            v388 = *(v386 + 2);
            v387 = *(v386 + 3);
            if (v388 >= v387 >> 1)
            {
              v386 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v387 > 1), v388 + 1, 1, v386);
            }

            *(v386 + 2) = v388 + 1;
            v389 = &v386[80 * v388];
            *(v389 + 2) = v411;
            v390 = v412;
            v391 = v413[0];
            v392 = v413[1];
            *(v389 + 89) = *(&v413[1] + 9);
            *(v389 + 4) = v391;
            *(v389 + 5) = v392;
            *(v389 + 3) = v390;
            a1[10] = v386;
          }

          String.subscript.getter();
          v393 = Substring.distance(from:to:)();

          if (v393 >= 1)
          {
            String.subscript.getter();
            v383 = Substring.index(_:offsetBy:limitedBy:)();
            v395 = v394;

            if ((v395 & 1) == 0)
            {
              if (v377 >> 14 < v383 >> 14)
              {
                goto LABEL_350;
              }

LABEL_300:
              a1[2] = v383;
              a1[3] = v377;
              v373 = v383;
            }
          }

          MEMORY[0x1C68E0BE0](v380, v382);

          result = closure #1 in closure #1 in Parser.lexComment()(a1);
          v374 = v373;
          if (result)
          {
            goto LABEL_316;
          }

          continue;
        }

        break;
      }

      if (v377 >> 14 < v383 >> 14)
      {
        goto LABEL_341;
      }

      goto LABEL_300;
    }

    if (Substring.distance(from:to:)() >= 1)
    {
      v157 = a1[3];
      String.subscript.getter();
      v158 = Substring.index(_:offsetBy:limitedBy:)();
      v160 = v159;

      if ((v160 & 1) == 0)
      {
        break;
      }
    }

LABEL_124:
    MEMORY[0x1C68E0B20](v150, v152, v154, v156);
    v162 = v161;

    if (a1[2] >> 14 < v405 >> 14)
    {
      goto LABEL_328;
    }

    if (!v162)
    {
      goto LABEL_168;
    }

LABEL_2:
  }

  if (v157 >> 14 >= v158 >> 14)
  {
    a1[2] = v158;
    a1[3] = v157;
    goto LABEL_124;
  }

LABEL_340:
  __break(1u);
LABEL_341:
  __break(1u);
LABEL_342:
  __break(1u);
LABEL_343:
  __break(1u);
LABEL_344:
  __break(1u);
LABEL_345:
  __break(1u);
LABEL_346:
  __break(1u);
LABEL_347:
  __break(1u);
LABEL_348:
  __break(1u);
LABEL_349:
  __break(1u);
LABEL_350:
  __break(1u);
LABEL_351:
  __break(1u);
LABEL_352:
  __break(1u);
LABEL_353:
  __break(1u);
LABEL_354:
  __break(1u);
LABEL_355:
  __break(1u);
LABEL_356:
  __break(1u);
  return result;
}

uint64_t Parser.lexPOSIXCharacterProperty()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v57 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser3ASTV4AtomV17CharacterPropertyVSgMd, &_s12_RegexParser3ASTV4AtomV17CharacterPropertyVSgMR);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v50 - v7;
  v9 = type metadata accessor for AST.Atom.CharacterProperty(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 16);
  v14 = *(v2 + 48);
  v15 = *(v2 + 64);
  v16 = *(v2 + 16);
  v74 = *(v2 + 32);
  v75 = v14;
  *v76 = v15;
  *&v76[9] = *(v2 + 73);
  v73[0] = *v2;
  v73[1] = v16;
  v70 = v74;
  v71 = v14;
  v72 = v15;
  v68 = v73[0];
  v69 = v16;
  v17 = *&v76[16];
  v18 = v76[24];
  outlined init with copy of Parser(v73, &v63);
  closure #1 in closure #1 in Parser.lexPOSIXCharacterProperty()(v2, v6);
  v55 = *(v10 + 48);
  v56 = v10 + 48;
  if (v55(v6, 1, v9) == 1)
  {
    v51 = v18;
    v52 = v12;
    v53 = v13;
    v54 = v8;
    v19 = *&v76[16];
    v20 = v76[24];
    outlined destroy of _ASTParent?(v6, &_s12_RegexParser3ASTV4AtomV17CharacterPropertyVSgMd, &_s12_RegexParser3ASTV4AtomV17CharacterPropertyVSgMR);
    v21 = *(v2 + 80);
    v22 = *(v2 + 48);
    v65 = *(v2 + 32);
    v66 = v22;
    v67[0] = *(v2 + 64);
    *(v67 + 9) = *(v2 + 73);
    v23 = *(v2 + 16);
    v63 = *v2;
    v64 = v23;

    result = outlined destroy of Parser(&v63);
    if (v20 == 1)
    {

      v25 = v10;
      v26 = v57;
    }

    else
    {
      v28 = *(v19 + 2);
      v29 = *(v21 + 16);
      if (v29 >= v28)
      {
        v30 = *(v19 + 2);
      }

      else
      {
        v30 = *(v21 + 16);
      }

      if (v28)
      {
        v31 = v30;
      }

      else
      {
        v31 = 0;
      }

      if (v31 == v29)
      {
        swift_unknownObjectRelease();
        v26 = v57;
        v25 = v10;
      }

      else
      {
        v50 = v9;
        if (v31 >= v29)
        {
          goto LABEL_30;
        }

        v32 = ~v31 + v29;
        v33 = 80 * v31 + 32;
        v25 = v10;
        while (1)
        {
          v59 = *(v21 + v33);
          v34 = *(v21 + v33 + 16);
          v35 = *(v21 + v33 + 32);
          v36 = *(v21 + v33 + 48);
          *(v62 + 9) = *(v21 + v33 + 57);
          v61 = v35;
          v62[0] = v36;
          v60 = v34;
          if (!v59)
          {
            outlined init with copy of Diagnostic(&v59, &v58);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 2) + 1, 1, v19);
            }

            v38 = *(v19 + 2);
            v37 = *(v19 + 3);
            if (v38 >= v37 >> 1)
            {
              v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1, v19);
            }

            *(v19 + 2) = v38 + 1;
            v39 = &v19[80 * v38];
            *(v39 + 2) = v59;
            v40 = v60;
            v41 = v61;
            v42 = v62[0];
            *(v39 + 89) = *(v62 + 9);
            *(v39 + 4) = v41;
            *(v39 + 5) = v42;
            *(v39 + 3) = v40;
            v17 = v19;
            v25 = v10;
          }

          if (!v32)
          {
            break;
          }

          --v32;
          v33 += 80;
        }

        swift_unknownObjectRelease();

        v26 = v57;
        v9 = v50;
      }
    }

    v43 = v71;
    *(v2 + 32) = v70;
    *(v2 + 48) = v43;
    *(v2 + 64) = v72;
    v44 = v69;
    *v2 = v68;
    *(v2 + 16) = v44;
    *(v2 + 80) = v17;
    *(v2 + 88) = v51;
    v45 = *(v25 + 56);
    v8 = v54;
    v45(v54, 1, 1, v9);
    v12 = v52;
    v13 = v53;
    v27 = v55(v8, 1, v9);
  }

  else
  {
    v65 = v70;
    v66 = v71;
    v67[0] = v72;
    v63 = v68;
    v64 = v69;
    *&v67[1] = v17;
    BYTE8(v67[1]) = v18;
    outlined destroy of Parser(&v63);
    outlined init with take of AST.Atom.Kind(v6, v8, type metadata accessor for AST.Atom.CharacterProperty);
    (*(v10 + 56))(v8, 0, 1, v9);
    v26 = v57;
    v27 = v55(v8, 1, v9);
  }

  if (v27 == 1)
  {
    outlined destroy of _ASTParent?(v8, &_s12_RegexParser3ASTV4AtomV17CharacterPropertyVSgMd, &_s12_RegexParser3ASTV4AtomV17CharacterPropertyVSgMR);
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV17CharacterPropertyVGMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV17CharacterPropertyVGMR);
    return (*(*(v46 - 8) + 56))(v26, 1, 1, v46);
  }

  outlined init with take of AST.Atom.Kind(v8, v12, type metadata accessor for AST.Atom.CharacterProperty);
  result = outlined init with take of AST.Atom.Kind(v12, v26, type metadata accessor for AST.Atom.CharacterProperty);
  v47 = *(v2 + 16);
  if (v47 >> 14 >= v13 >> 14)
  {
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV17CharacterPropertyVGMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV17CharacterPropertyVGMR);
    v49 = (v26 + *(v48 + 28));
    *v49 = v13;
    v49[1] = v47;
    return (*(*(v48 - 8) + 56))(v26, 0, 1, v48);
  }

  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in Parser.lexPOSIXCharacterProperty()@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AST.Atom.CharacterProperty.Kind(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((specialized Parser.tryEat<A>(sequence:)(14939, 0xE200000000000000) & 1) == 0)
  {
    v35 = type metadata accessor for AST.Atom.CharacterProperty(0);
    v36 = *(*(v35 - 8) + 56);

    return v36(a2, 1, 1, v35);
  }

  v75 = v6;
  v77 = a2;
  v7._countAndFlagsBits = 94;
  v7._object = 0xE100000000000000;
  v74 = Parser.tryEat(_:)(v7);
  v8 = *(a1 + 2);
  v9 = 0xE000000000000000;
  v89 = 0;
  v90 = 0xE000000000000000;
  result = atPossibleEnding #1 (_:) in Parser.lexCharacterPropertyKeyValue()(a1);
  v11 = v8;
  v76 = v8;
  if (result)
  {
LABEL_25:
    if (v11 >> 14 < v8 >> 14)
    {
      goto LABEL_59;
    }

    v37 = v89;
    v38._countAndFlagsBits = 61;
    v38._object = 0xE100000000000000;
    if (Parser.tryEat(_:)(v38))
    {
      *&v72 = v37;
      *(&v72 + 1) = v9;
      v39 = *(a1 + 2);
      v89 = 0;
      v90 = 0xE000000000000000;
      result = atPossibleEnding #1 (_:) in Parser.lexCharacterPropertyKeyValue()(a1);
      v73 = v39;
      if ((result & 1) == 0)
      {
        v78 = "Unhandled termination condition";
        v40 = v73;
        while (1)
        {
          v41 = a1[1];
          v84 = *a1;
          v85 = v41;
          v42 = a1[3];
          v86 = a1[2];
          v87 = v42;
          *v88 = a1[4];
          *&v88[9] = *(a1 + 73);
          v43 = *(&v85 + 1);
          v39 = v85;
          outlined init with copy of Parser(&v84, &v81);
          v44 = String.subscript.getter();
          if (!((v44 ^ v45) >> 14))
          {
            break;
          }

          v79 = Substring.subscript.getter();
          v47 = v46;

          outlined destroy of Parser(&v84);
          String.subscript.getter();
          v48 = Substring.index(_:offsetBy:limitedBy:)();
          v50 = v49;

          if (v50)
          {
            v51 = *&v88[16];
            v52 = v88[24];
            strcpy(v80, "UNREACHABLE: ");
            HIWORD(v80[1]) = -4864;
            MEMORY[0x1C68E0BF0](0xD000000000000015, v78 | 0x8000000000000000);
            LOBYTE(v81) = 0;
            *(&v81 + 1) = v80[0];
            *&v82 = v80[1];
            *(&v82 + 1) = v39;
            *v83 = v39;
            memset(&v83[8], 0, 32);
            v83[40] = -1;
            if (v52)
            {
              outlined destroy of Diagnostic(&v81);
            }

            else
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v51 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v51 + 2) + 1, 1, v51);
              }

              v54 = *(v51 + 2);
              v53 = *(v51 + 3);
              if (v54 >= v53 >> 1)
              {
                v51 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v54 + 1, 1, v51);
              }

              *(v51 + 2) = v54 + 1;
              v55 = &v51[80 * v54];
              *(v55 + 2) = v81;
              v56 = v82;
              v57 = *v83;
              v58 = *&v83[16];
              *(v55 + 89) = *&v83[25];
              *(v55 + 4) = v57;
              *(v55 + 5) = v58;
              *(v55 + 3) = v56;
              *(a1 + 10) = v51;
            }

            String.subscript.getter();
            v59 = Substring.distance(from:to:)();

            if (v59 >= 1)
            {
              String.subscript.getter();
              v60 = Substring.index(_:offsetBy:limitedBy:)();
              v62 = v61;

              if ((v62 & 1) == 0)
              {
                if (v43 >> 14 < v60 >> 14)
                {
                  goto LABEL_60;
                }

                *(a1 + 2) = v60;
                *(a1 + 3) = v43;
                v39 = v60;
              }
            }
          }

          else
          {
            if (v43 >> 14 < v48 >> 14)
            {
              goto LABEL_57;
            }

            *(a1 + 2) = v48;
            *(a1 + 3) = v43;
            v39 = v48;
          }

          MEMORY[0x1C68E0BE0](v79, v47);

          result = atPossibleEnding #1 (_:) in Parser.lexCharacterPropertyKeyValue()(a1);
          v40 = v39;
          if (result)
          {
            goto LABEL_49;
          }
        }

        result = outlined destroy of Parser(&v84);
        v39 = v40;
      }

LABEL_49:
      v65 = v73;
      if (v39 >> 14 < v73 >> 14)
      {
        goto LABEL_61;
      }

      v37 = v89;
      v64 = v90;
      if (specialized Parser.tryEat<A>(sequence:)(23866, 0xE200000000000000))
      {
        if (*(&v72 + 1))
        {
          v84 = v72;
          *&v85 = v76;
          *(&v85 + 1) = v11;
          *&v81 = v37;
          *(&v81 + 1) = v64;
          *&v82 = v65;
          *(&v82 + 1) = v39;
          v66 = v75;
          Parser.classifyCharacterProperty(key:value:)(&v84, &v81, v75);

LABEL_54:

          v67 = v77;
          v68 = v74;
          outlined init with take of AST.Atom.Kind(v66, v77, type metadata accessor for AST.Atom.CharacterProperty.Kind);
          v69 = type metadata accessor for AST.Atom.CharacterProperty(0);
          *(v67 + *(v69 + 20)) = v68;
          *(v67 + *(v69 + 24)) = 1;
          return (*(*(v69 - 8) + 56))(v67, 0, 1, v69);
        }

LABEL_53:
        *&v84 = v37;
        *(&v84 + 1) = v64;
        *&v85 = v65;
        *(&v85 + 1) = v39;
        v66 = v75;
        Parser.classifyCharacterPropertyValueOnly(_:)(&v84, v75);
        goto LABEL_54;
      }
    }

    else if (specialized Parser.tryEat<A>(sequence:)(23866, 0xE200000000000000))
    {
      v63 = v8;
      v64 = v9;
      v65 = v63;
      v39 = v11;
      goto LABEL_53;
    }

    v70 = type metadata accessor for AST.Atom.CharacterProperty(0);
    (*(*(v70 - 8) + 56))(v77, 1, 1, v70);
  }

  v79 = "Unhandled termination condition";
  v12 = v8;
  while (1)
  {
    v13 = a1[1];
    v84 = *a1;
    v85 = v13;
    v14 = a1[3];
    v86 = a1[2];
    v87 = v14;
    *v88 = a1[4];
    *&v88[9] = *(a1 + 73);
    v15 = *(&v85 + 1);
    v11 = v85;
    outlined init with copy of Parser(&v84, &v81);
    v16 = String.subscript.getter();
    if (!((v16 ^ v17) >> 14))
    {

      result = outlined destroy of Parser(&v84);
      v11 = v12;
LABEL_24:
      v9 = v90;
      v8 = v76;
      goto LABEL_25;
    }

    v18 = Substring.subscript.getter();
    v20 = v19;

    outlined destroy of Parser(&v84);
    String.subscript.getter();
    v21 = Substring.index(_:offsetBy:limitedBy:)();
    v23 = v22;

    if ((v23 & 1) == 0)
    {
      break;
    }

    v24 = *&v88[16];
    v25 = v88[24];
    strcpy(v80, "UNREACHABLE: ");
    HIWORD(v80[1]) = -4864;
    MEMORY[0x1C68E0BF0](0xD000000000000015, v79 | 0x8000000000000000);
    LOBYTE(v81) = 0;
    *(&v81 + 1) = v80[0];
    *&v82 = v80[1];
    *(&v82 + 1) = v11;
    *v83 = v11;
    memset(&v83[8], 0, 32);
    v83[40] = -1;
    if (v25)
    {
      outlined destroy of Diagnostic(&v81);
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 2) + 1, 1, v24);
      }

      v27 = *(v24 + 2);
      v26 = *(v24 + 3);
      if (v27 >= v26 >> 1)
      {
        v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v24);
      }

      *(v24 + 2) = v27 + 1;
      v28 = &v24[80 * v27];
      *(v28 + 2) = v81;
      v29 = v82;
      v30 = *v83;
      v31 = *&v83[16];
      *(v28 + 89) = *&v83[25];
      *(v28 + 4) = v30;
      *(v28 + 5) = v31;
      *(v28 + 3) = v29;
      *(a1 + 10) = v24;
    }

    String.subscript.getter();
    v32 = Substring.distance(from:to:)();

    if (v32 < 1)
    {
      goto LABEL_6;
    }

    String.subscript.getter();
    v21 = Substring.index(_:offsetBy:limitedBy:)();
    v34 = v33;

    if (v34)
    {
      goto LABEL_6;
    }

    if (v15 >> 14 < v21 >> 14)
    {
      goto LABEL_58;
    }

LABEL_5:
    *(a1 + 2) = v21;
    *(a1 + 3) = v15;
    v11 = v21;
LABEL_6:
    MEMORY[0x1C68E0BE0](v18, v20);

    result = atPossibleEnding #1 (_:) in Parser.lexCharacterPropertyKeyValue()(a1);
    v12 = v11;
    if (result)
    {
      goto LABEL_24;
    }
  }

  if (v15 >> 14 >= v21 >> 14)
  {
    goto LABEL_5;
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
  return result;
}

uint64_t Parser.lexNamedCharacter()@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser3ASTV4AtomV4KindOSgMd, &_s12_RegexParser3ASTV4AtomV4KindOSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v17 - v4;
  v6 = type metadata accessor for AST.Atom.Kind(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + 16);
  if (specialized Parser.tryEat<A>(sequence:)(31566, 0xE200000000000000))
  {
    if (specialized Parser.tryEat<A>(sequence:)(11093, 0xE200000000000000))
    {
      specialized Parser.lexUntil(_:)(v1, 125, 0xE100000000000000, v20);
      Parser.validateUnicodeScalar(_:_:)(v20, 2, &v18);

      *v5 = v18;
      *(v5 + 8) = v19;
    }

    else
    {
      specialized Parser.lexUntil(_:)(v1, 125, 0xE100000000000000, v20);
      v11 = v20[1];
      *v5 = v20[0];
      *(v5 + 1) = v11;
    }

    swift_storeEnumTagMultiPayload();
    (*(v7 + 56))(v5, 0, 1, v6);
  }

  else
  {
    (*(v7 + 56))(v5, 1, 1, v6);
  }

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    outlined destroy of _ASTParent?(v5, &_s12_RegexParser3ASTV4AtomV4KindOSgMd, &_s12_RegexParser3ASTV4AtomV4KindOSgMR);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV4KindOGMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV4KindOGMR);
    return (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
  }

  else
  {
    outlined init with take of AST.Atom.Kind(v5, v9, type metadata accessor for AST.Atom.Kind);
    result = outlined init with take of AST.Atom.Kind(v9, a1, type metadata accessor for AST.Atom.Kind);
    v14 = *(v1 + 16);
    if (v14 >> 14 < v10 >> 14)
    {
      __break(1u);
    }

    else
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV4KindOGMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV4KindOGMR);
      v16 = (a1 + *(v15 + 28));
      *v16 = v10;
      v16[1] = v14;
      return (*(*(v15 - 8) + 56))(a1, 0, 1, v15);
    }
  }

  return result;
}

uint64_t atPossibleEnding #1 (_:) in Parser.lexCharacterPropertyKeyValue()(uint64_t *a1)
{

  v1 = String.subscript.getter();
  if (!((v1 ^ v2) >> 14))
  {

LABEL_20:

    return 1;
  }

  v3 = Substring.subscript.getter();
  v5 = v4;

  if (v3 == 61 && v5 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v3 == 58 && v5 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v3 == 91 && v5 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v3 == 93 && v5 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v3 == 125 && v5 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v3 == 92 && v5 == 0xE100000000000000)
  {
    goto LABEL_20;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  return v7 & 1;
}

uint64_t Parser.lexCharacterProperty()@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser3ASTV4AtomV17CharacterPropertyVSgMd, &_s12_RegexParser3ASTV4AtomV17CharacterPropertyVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v16 - v4;
  v6 = type metadata accessor for AST.Atom.CharacterProperty(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v1[2];
  closure #1 in Parser.lexCharacterProperty()(v1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    outlined destroy of _ASTParent?(v5, &_s12_RegexParser3ASTV4AtomV17CharacterPropertyVSgMd, &_s12_RegexParser3ASTV4AtomV17CharacterPropertyVSgMR);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV17CharacterPropertyVGMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV17CharacterPropertyVGMR);
    return (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
  }

  else
  {
    outlined init with take of AST.Atom.Kind(v5, v9, type metadata accessor for AST.Atom.CharacterProperty);
    result = outlined init with take of AST.Atom.Kind(v9, a1, type metadata accessor for AST.Atom.CharacterProperty);
    v13 = v1[2];
    if (v13 >> 14 < v10 >> 14)
    {
      __break(1u);
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV17CharacterPropertyVGMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV17CharacterPropertyVGMR);
      v15 = (a1 + *(v14 + 28));
      *v15 = v10;
      v15[1] = v13;
      return (*(*(v14 - 8) + 56))(a1, 0, 1, v14);
    }
  }

  return result;
}

uint64_t closure #1 in Parser.lexCharacterProperty()@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v86 = a2;
  v3 = type metadata accessor for AST.Atom.CharacterProperty.Kind(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v85 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = String.subscript.getter();
  v9 = specialized Sequence<>.starts<A>(with:)(31600, 0xE200000000000000, v5, v6, v7, v8);

  if ((v9 & 1) == 0)
  {
    v10 = String.subscript.getter();
    v14 = specialized Sequence<>.starts<A>(with:)(31568, 0xE200000000000000, v10, v11, v12, v13);

    if ((v14 & 1) == 0)
    {
      v22 = type metadata accessor for AST.Atom.CharacterProperty(0);
      v23 = *(*(v22 - 8) + 56);
      v24 = v22;
      v25 = v86;

      return v23(v25, 1, 1, v24);
    }
  }

  v15 = *(a1 + 1);
  v99[0] = *a1;
  v99[1] = v15;
  v16 = *(a1 + 3);
  v99[2] = *(a1 + 2);
  v99[3] = v16;
  v100[0] = *(a1 + 4);
  *(v100 + 9) = *(a1 + 73);
  outlined init with copy of Parser(v99, &v94);
  v17 = String.subscript.getter();
  if ((v17 ^ v18) >> 14)
  {
    v19 = Substring.subscript.getter();
    v21 = v20;

    outlined destroy of Parser(v99);
    if (v19 == 80 && v21 == 0xE100000000000000)
    {

      v83 = 1;
    }

    else
    {
      v83 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {

    outlined destroy of Parser(v99);
    v83 = 0;
  }

  Parser.advance(_:)(2);
  v27 = a1[2];
  v28 = 0xE000000000000000;
  *&v93 = 0;
  *(&v93 + 1) = 0xE000000000000000;
  result = atPossibleEnding #1 (_:) in Parser.lexCharacterPropertyKeyValue()(a1);
  v29 = v27;
  v82 = v27;
  if (result)
  {
    goto LABEL_32;
  }

  v87 = "Unhandled termination condition";
  v30 = v27;
  while (1)
  {
    v31 = *(a1 + 1);
    v94 = *a1;
    v95 = v31;
    v32 = *(a1 + 3);
    v96 = *(a1 + 2);
    v97 = v32;
    v98[0] = *(a1 + 4);
    *(v98 + 9) = *(a1 + 73);
    v33 = *(&v95 + 1);
    v29 = v95;
    outlined init with copy of Parser(&v94, &v90);
    v34 = String.subscript.getter();
    if (!((v34 ^ v35) >> 14))
    {
      break;
    }

    v88 = Substring.subscript.getter();
    v37 = v36;

    outlined destroy of Parser(&v94);
    String.subscript.getter();
    v38 = Substring.index(_:offsetBy:limitedBy:)();
    v40 = v39;

    if (v40)
    {
      v41 = *&v98[1];
      v42 = BYTE8(v98[1]);
      strcpy(v89, "UNREACHABLE: ");
      HIWORD(v89[1]) = -4864;
      MEMORY[0x1C68E0BF0](0xD000000000000015, v87 | 0x8000000000000000);
      LOBYTE(v90) = 0;
      *(&v90 + 1) = v89[0];
      *&v91 = v89[1];
      *(&v91 + 1) = v29;
      *&v92[0] = v29;
      *(v92 + 8) = 0u;
      *(&v92[1] + 8) = 0u;
      BYTE8(v92[2]) = -1;
      if (v42)
      {
        outlined destroy of Diagnostic(&v90);
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v41 + 2) + 1, 1, v41);
        }

        v44 = *(v41 + 2);
        v43 = *(v41 + 3);
        if (v44 >= v43 >> 1)
        {
          v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1, v41);
        }

        *(v41 + 2) = v44 + 1;
        v45 = &v41[80 * v44];
        *(v45 + 2) = v90;
        v46 = v91;
        v47 = v92[0];
        v48 = v92[1];
        *(v45 + 89) = *(&v92[1] + 9);
        *(v45 + 4) = v47;
        *(v45 + 5) = v48;
        *(v45 + 3) = v46;
        a1[10] = v41;
      }

      String.subscript.getter();
      v49 = Substring.distance(from:to:)();

      if (v49 < 1)
      {
        goto LABEL_16;
      }

      String.subscript.getter();
      v38 = Substring.index(_:offsetBy:limitedBy:)();
      v51 = v50;

      if (v51)
      {
        goto LABEL_16;
      }

      if (v33 >> 14 < v38 >> 14)
      {
        goto LABEL_63;
      }
    }

    else if (v33 >> 14 < v38 >> 14)
    {
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
      return result;
    }

    a1[2] = v38;
    a1[3] = v33;
    v29 = v38;
LABEL_16:
    MEMORY[0x1C68E0BE0](v88, v37);

    result = atPossibleEnding #1 (_:) in Parser.lexCharacterPropertyKeyValue()(a1);
    v30 = v29;
    if (result)
    {
      goto LABEL_31;
    }
  }

  result = outlined destroy of Parser(&v94);
  v29 = v30;
LABEL_31:
  v28 = *(&v93 + 1);
  v27 = v82;
LABEL_32:
  if (v29 >> 14 < v27 >> 14)
  {
    goto LABEL_64;
  }

  v52 = v93;
  v53._countAndFlagsBits = 61;
  v53._object = 0xE100000000000000;
  if (!Parser.tryEat(_:)(v53))
  {
    goto LABEL_57;
  }

  *&v80 = v52;
  *(&v80 + 1) = v28;
  v54 = a1[2];
  *&v93 = 0;
  *(&v93 + 1) = 0xE000000000000000;
  result = atPossibleEnding #1 (_:) in Parser.lexCharacterPropertyKeyValue()(a1);
  v81 = v54;
  if (result)
  {
    goto LABEL_53;
  }

  v84 = "Unhandled termination condition";
  v55 = v81;
  while (2)
  {
    v56 = *(a1 + 1);
    v94 = *a1;
    v95 = v56;
    v57 = *(a1 + 3);
    v96 = *(a1 + 2);
    v97 = v57;
    v98[0] = *(a1 + 4);
    *(v98 + 9) = *(a1 + 73);
    v58 = *(&v95 + 1);
    v54 = v95;
    outlined init with copy of Parser(&v94, &v90);
    v59 = String.subscript.getter();
    if ((v59 ^ v60) >> 14)
    {
      v87 = Substring.subscript.getter();
      v88 = v61;

      outlined destroy of Parser(&v94);
      String.subscript.getter();
      v62 = Substring.index(_:offsetBy:limitedBy:)();
      v64 = v63;

      if (v64)
      {
        v65 = *&v98[1];
        v66 = BYTE8(v98[1]);
        strcpy(v89, "UNREACHABLE: ");
        HIWORD(v89[1]) = -4864;
        MEMORY[0x1C68E0BF0](0xD000000000000015, v84 | 0x8000000000000000);
        LOBYTE(v90) = 0;
        *(&v90 + 1) = v89[0];
        *&v91 = v89[1];
        *(&v91 + 1) = v54;
        *&v92[0] = v54;
        *(v92 + 8) = 0u;
        *(&v92[1] + 8) = 0u;
        BYTE8(v92[2]) = -1;
        if (v66)
        {
          outlined destroy of Diagnostic(&v90);
        }

        else
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v65 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v65 + 2) + 1, 1, v65);
          }

          v68 = *(v65 + 2);
          v67 = *(v65 + 3);
          if (v68 >= v67 >> 1)
          {
            v65 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v67 > 1), v68 + 1, 1, v65);
          }

          *(v65 + 2) = v68 + 1;
          v69 = &v65[80 * v68];
          *(v69 + 2) = v90;
          v70 = v91;
          v71 = v92[0];
          v72 = v92[1];
          *(v69 + 89) = *(&v92[1] + 9);
          *(v69 + 4) = v71;
          *(v69 + 5) = v72;
          *(v69 + 3) = v70;
          a1[10] = v65;
        }

        String.subscript.getter();
        v73 = Substring.distance(from:to:)();

        if (v73 >= 1)
        {
          String.subscript.getter();
          v62 = Substring.index(_:offsetBy:limitedBy:)();
          v75 = v74;

          if ((v75 & 1) == 0)
          {
            if (v58 >> 14 < v62 >> 14)
            {
              goto LABEL_65;
            }

LABEL_37:
            a1[2] = v62;
            a1[3] = v58;
            v54 = v62;
          }
        }

        MEMORY[0x1C68E0BE0](v87, v88);

        result = atPossibleEnding #1 (_:) in Parser.lexCharacterPropertyKeyValue()(a1);
        v55 = v54;
        if (result)
        {
          goto LABEL_53;
        }

        continue;
      }

      if (v58 >> 14 < v62 >> 14)
      {
        goto LABEL_62;
      }

      goto LABEL_37;
    }

    break;
  }

  result = outlined destroy of Parser(&v94);
  v54 = v55;
LABEL_53:
  v27 = v81;
  if (v54 >> 14 < v81 >> 14)
  {
    goto LABEL_66;
  }

  v28 = *(&v93 + 1);
  if (*(&v80 + 1))
  {
    v94 = v80;
    *&v95 = v82;
    *(&v95 + 1) = v29;
    v90 = v93;
    *&v91 = v81;
    *(&v91 + 1) = v54;
    v76 = v85;
    Parser.classifyCharacterProperty(key:value:)(&v94, &v90, v85);

    goto LABEL_58;
  }

  v29 = v54;
  v52 = v93;
LABEL_57:
  *&v94 = v52;
  *(&v94 + 1) = v28;
  *&v95 = v27;
  *(&v95 + 1) = v29;
  v76 = v85;
  Parser.classifyCharacterPropertyValueOnly(_:)(&v94, v85);
LABEL_58:

  v77._countAndFlagsBits = 125;
  v77._object = 0xE100000000000000;
  if (!Parser.tryEat(_:)(v77))
  {
    v94 = xmmword_1C0C7E390;
    v95 = 0uLL;
    LOBYTE(v96) = 3;
    *&v90 = a1[2];
    *(&v90 + 1) = v90;
    Diagnostics.error(_:at:)(&v94, &v90);
  }

  v78 = v86;
  outlined init with take of AST.Atom.Kind(v76, v86, type metadata accessor for AST.Atom.CharacterProperty.Kind);
  v79 = type metadata accessor for AST.Atom.CharacterProperty(0);
  *(v78 + *(v79 + 20)) = v83 & 1;
  *(v78 + *(v79 + 24)) = 0;
  return (*(*(v79 - 8) + 56))(v78, 0, 1, v79);
}

void Parser.lexRecursionLevel()(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4._countAndFlagsBits = 43;
  v4._object = 0xE100000000000000;
  if (Parser.tryEat(_:)(v4))
  {
    Parser.lexNumber(_:)(1, v9);
    if ((v10 & 1) == 0)
    {
      if ((BYTE8(v9[0]) & 1) == 0)
      {
        v5 = *&v9[0];
        goto LABEL_12;
      }

      goto LABEL_8;
    }

LABEL_7:
    v9[0] = xmmword_1C0C7E360;
    v9[1] = xmmword_1C0C7E3C0;
    v10 = 2;
    *&v8 = *(v1 + 16);
    *(&v8 + 1) = v8;
    Diagnostics.error(_:at:)(v9, &v8);
    goto LABEL_8;
  }

  v6._countAndFlagsBits = 45;
  v6._object = 0xE100000000000000;
  if (!Parser.tryEat(_:)(v6))
  {
    goto LABEL_8;
  }

  Parser.lexNumber(_:)(1, v9);
  if (v10)
  {
    goto LABEL_7;
  }

  if ((BYTE8(v9[0]) & 1) == 0)
  {
    v5 = -*&v9[0];
    if (__OFSUB__(0, *&v9[0]))
    {
LABEL_15:
      __break(1u);
      return;
    }

LABEL_12:
    v7 = *(v1 + 16);
    if (v7 >> 14 >= v3 >> 14)
    {
      *a1 = v5;
      *(a1 + 8) = 0;
      *(a1 + 16) = v3;
      *(a1 + 24) = v7;
      *(a1 + 32) = 0;
      return;
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_8:
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
}

void Parser.lexEscapedReference()(uint64_t a1@<X8>)
{
  v2 = v1;
  v150 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser3ASTV4AtomV4KindOSgMd, &_s12_RegexParser3ASTV4AtomV4KindOSgMR);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v134 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v148 = &v134 - v7;
  v8 = type metadata accessor for AST.Atom.Kind(0);
  v9 = *(v8 - 8);
  v147 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v142 = &v134 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v1 + 2);
  v12 = v1[3];
  v13 = v1[4];
  v14 = v1[1];
  v161 = v1[2];
  v162 = v12;
  v163[0] = v13;
  *(v163 + 9) = *(v1 + 73);
  v160[0] = *v1;
  v160[1] = v14;
  v157 = v161;
  v158 = v12;
  v159 = v13;
  v155 = v160[0];
  v156 = v14;
  v149 = *&v163[1];
  v146 = BYTE8(v163[1]);
  outlined init with copy of Parser(v160, &v166);
  v15 = v1[1];
  v170 = *v1;
  v171 = v15;
  v16 = v1[3];
  v172 = v1[2];
  *v173 = v16;
  *&v173[16] = v1[4];
  *&v173[25] = *(v1 + 73);
  outlined init with copy of Parser(&v170, &v166);
  v17 = String.subscript.getter();
  v143 = v11;
  v145 = v8;
  if (!((v17 ^ v18) >> 14))
  {

    outlined destroy of Parser(&v170);
    v19 = *(v9 + 56);
    v19(v6, 1, 1, v8);
    v20 = v8;
    v21 = v9;
    v22 = v150;
    goto LABEL_65;
  }

  v144 = v9;
  v23 = Substring.subscript.getter();
  v25 = v24;

  outlined destroy of Parser(&v170);
  v26._countAndFlagsBits = 103;
  v26._object = 0xE100000000000000;
  if (Parser.tryEat(_:)(v26))
  {

    v27._countAndFlagsBits = 123;
    v27._object = 0xE100000000000000;
    v28 = Parser.tryEat(_:)(v27);
    v22 = v150;
    if (v28)
    {
      Parser.lexNumberedReference(allowWholePatternRef:allowRecursionLevel:)(0, 0, &v166);
      v29 = *(&v166 + 1);
      v30 = *&v168[0];
      v31 = BYTE8(v168[2]);
      LODWORD(v164) = *(&v168[2] + 9);
      *(&v164 + 3) = HIDWORD(v168[2]);
      if (LOBYTE(v168[0]) == 0xFF)
      {
        v32 = *(v1 + 2);
        closure #1 in Parser.expectIdentifier(_:endingWith:eatEnding:)(v1, 125, 0xE100000000000000, 0, &v166);
        v33 = *(v1 + 2);
        if (v33 >> 14 < v32 >> 14)
        {
LABEL_96:
          __break(1u);
          goto LABEL_97;
        }

        v29 = *(&v166 + 1);
        v140 = v166;
        v141 = v33;
        if ((specialized Parser.tryEat<A>(sequence:)(125, 0xE100000000000000) & 1) == 0)
        {
          *&v166 = 125;
          *(&v166 + 1) = 0xE100000000000000;
          *&v166 = String.init<A>(_:)();
          *(&v166 + 1) = v34;
          v167 = 0uLL;
          LOBYTE(v168[0]) = 3;
          *&v151 = *(v1 + 2);
          *(&v151 + 1) = v151;
          Diagnostics.error(_:at:)(&v166, &v151);
        }

        v31 = 1;
        v169 = 1;
        v35 = 0uLL;
        v36 = 2;
        v37 = 0uLL;
        v38 = 0uLL;
        v39 = v140;
      }

      else
      {
        v137 = v167;
        v138 = *(&v168[1] + 8);
        v139 = *(v168 + 8);
        v32 = *&v168[3];
        v140 = v166;
        v141 = *(&v168[3] + 1);
        if ((specialized Parser.tryEat<A>(sequence:)(125, 0xE100000000000000) & 1) == 0)
        {
          *&v166 = 125;
          *(&v166 + 1) = 0xE100000000000000;
          *&v166 = String.init<A>(_:)();
          *(&v166 + 1) = v70;
          v167 = 0uLL;
          LOBYTE(v168[0]) = 3;
          *&v151 = *(v1 + 2);
          *(&v151 + 1) = v151;
          Diagnostics.error(_:at:)(&v166, &v151);
        }

        v169 = v31;
        LODWORD(v151) = v164;
        *(&v151 + 3) = *(&v164 + 3);
        v36 = v30;
        v39 = v140;
        v37 = v138;
        v35 = v139;
        v38 = v137;
      }

      *v6 = v39;
      *(v6 + 1) = v29;
      *(v6 + 1) = v38;
      v6[32] = v36;
      v6[39] = HIBYTE(v30);
      *(v6 + 37) = HIDWORD(v30) >> 8;
      *(v6 + 33) = v30 >> 8;
      *(v6 + 40) = v35;
      *(v6 + 56) = v37;
      v6[72] = v31;
      *(v6 + 73) = v151;
      *(v6 + 19) = *(&v151 + 3);
      *(v6 + 10) = v32;
      v71 = v141;
      goto LABEL_39;
    }

    v56 = specialized Parser.tryEat<A>(anyOf:)(&outlined read-only object #0 of closure #1 in closure #1 in Parser.lexEscapedReference());
    v58 = v57;
    swift_arrayDestroy();
    if (v58)
    {
      v59 = Parser.getClosingDelimiter(for:)(v56, v58);
      v61 = v60;

      Parser.lexNumberedReference(allowWholePatternRef:allowRecursionLevel:)(1, 0, &v166);
      v62 = *&v168[0];
      v63 = BYTE8(v168[2]);
      LODWORD(v164) = *(&v168[2] + 9);
      *(&v164 + 3) = HIDWORD(v168[2]);
      if (LOBYTE(v168[0]) == 0xFF)
      {
        v64 = *(v2 + 2);
        closure #1 in Parser.expectIdentifier(_:endingWith:eatEnding:)(v2, v59, v61, 0, &v166);
        v65 = *(v2 + 2);
        if (v65 >> 14 < v64 >> 14)
        {
LABEL_98:
          __break(1u);
          goto LABEL_99;
        }

        *&v139 = *(&v166 + 1);
        v140 = v166;
        v66 = specialized Parser.tryEat<A>(sequence:)(v59, v61);
        v141 = v65;
        if ((v66 & 1) == 0)
        {
          *&v166 = v59;
          *(&v166 + 1) = v61;
          *&v166 = String.init<A>(_:)();
          *(&v166 + 1) = v98;
          v167 = 0uLL;
          LOBYTE(v168[0]) = 3;
          *&v151 = *(v2 + 2);
          *(&v151 + 1) = v151;
          Diagnostics.error(_:at:)(&v166, &v151);
        }

        v21 = v144;
        v20 = v145;
        v63 = 1;
        v169 = 1;
        v95 = 0uLL;
        v92 = 2;
        v96 = 0uLL;
        v97 = 0uLL;
        v93 = v140;
        v94 = v139;
      }

      else
      {
        v136 = v167;
        v137 = *(&v168[1] + 8);
        v138 = *(v168 + 8);
        *&v139 = *(&v166 + 1);
        v64 = *&v168[3];
        v140 = v166;
        v141 = *(&v168[3] + 1);
        if ((specialized Parser.tryEat<A>(sequence:)(v59, v61) & 1) == 0)
        {
          *&v166 = v59;
          *(&v166 + 1) = v61;
          *&v166 = String.init<A>(_:)();
          *(&v166 + 1) = v91;
          v167 = 0uLL;
          LOBYTE(v168[0]) = 3;
          *&v151 = *(v2 + 2);
          *(&v151 + 1) = v151;
          Diagnostics.error(_:at:)(&v166, &v151);
        }

        v21 = v144;
        v20 = v145;
        v169 = v63;
        LODWORD(v151) = v164;
        *(&v151 + 3) = *(&v164 + 3);
        v92 = v62;
        v93 = v140;
        v94 = v139;
        v96 = v137;
        v95 = v138;
        v97 = v136;
      }

      *v6 = v93;
      *(v6 + 1) = v94;
      *(v6 + 1) = v97;
      v6[32] = v92;
      v6[39] = HIBYTE(v62);
      *(v6 + 37) = HIDWORD(v62) >> 8;
      *(v6 + 33) = v62 >> 8;
      *(v6 + 40) = v95;
      *(v6 + 56) = v96;
      v6[72] = v63;
      *(v6 + 73) = v151;
      *(v6 + 19) = *(&v151 + 3);
      v99 = v141;
      *(v6 + 10) = v64;
      *(v6 + 11) = v99;
      goto LABEL_63;
    }

    Parser.lexNumberedReference(allowWholePatternRef:allowRecursionLevel:)(0, 0, &v166);
    v164 = v166;
    v165 = v167;
    v79 = *&v168[0];
    v151 = *(v168 + 8);
    v152 = *(&v168[1] + 8);
    v153 = *(&v168[2] + 8);
    v154 = *(&v168[3] + 1);
    if (LOBYTE(v168[0]) != 0xFF)
    {
      v81 = v165;
      *v6 = v164;
      *(v6 + 1) = v81;
      *(v6 + 4) = v79;
      v82 = v152;
      *(v6 + 40) = v151;
      *(v6 + 56) = v82;
      *(v6 + 72) = v153;
      v71 = v154;
LABEL_39:
      *(v6 + 11) = v71;
      v20 = v145;
      swift_storeEnumTagMultiPayload();
      v21 = v144;
LABEL_64:
      v19 = *(v21 + 56);
      v19(v6, 0, 1, v20);
      goto LABEL_65;
    }

    goto LABEL_46;
  }

  v40._countAndFlagsBits = 107;
  v40._object = 0xE100000000000000;
  v41 = Parser.tryEat(_:)(v40);
  v22 = v150;
  if (!v41)
  {
    if (v23 != 48 || v25 != 0xE100000000000000)
    {
      v67 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v21 = v144;
      if ((v67 & 1) == 0)
      {
        Parser.lexNumber(_:)(1, &v166);
        if ((v168[0] & 1) == 0)
        {
          v68 = v167;
          v69 = BYTE8(v166) & 1;
          LOBYTE(v151) = 1;
          *v6 = v166;
          *(v6 + 1) = v69;
          *(v6 + 1) = v68;
          v6[32] = 0;
          *(v6 + 40) = 0u;
          *(v6 + 56) = 0u;
          v6[72] = 1;
          *(v6 + 5) = v68;
          v20 = v145;
LABEL_63:
          swift_storeEnumTagMultiPayload();
          goto LABEL_64;
        }
      }

LABEL_47:
      v19 = *(v21 + 56);
      v20 = v145;
      v19(v6, 1, 1, v145);
      goto LABEL_65;
    }

LABEL_46:
    v21 = v144;
    goto LABEL_47;
  }

  v42 = specialized Parser.tryEat<A>(anyOf:)(&outlined read-only object #1 of closure #1 in closure #1 in Parser.lexEscapedReference());
  v44 = v43;
  swift_arrayDestroy();
  if (v44)
  {
    v45 = Parser.getClosingDelimiter(for:)(v42, v44);
    v47 = v46;

    Parser.lexNumberedReference(allowWholePatternRef:allowRecursionLevel:)(0, 1, &v166);
    v48 = *&v168[0];
    v49 = BYTE8(v168[2]);
    LODWORD(v164) = *(&v168[2] + 9);
    *(&v164 + 3) = HIDWORD(v168[2]);
    if (LOBYTE(v168[0]) == 0xFF)
    {
      v50 = *(v2 + 2);
      v135 = v45;
      closure #1 in Parser.expectIdentifier(_:endingWith:eatEnding:)(v2, v45, v47, 0, &v166);
      *&v136 = *(v2 + 2);
      v51 = v136 >> 14;
      if (v136 >> 14 < v50 >> 14)
      {
LABEL_97:
        __break(1u);
        goto LABEL_98;
      }

      v52 = v50;
      v140 = *(&v166 + 1);
      v141 = v166;
      Parser.lexRecursionLevel()(&v166);
      v49 = v168[0];
      *&v139 = v167;
      v138 = v166;
      *&v137 = *(&v167 + 1);
      if ((v168[0] & 1) == 0)
      {
        if (v50 >> 14 >= v167 >> 14)
        {
          v53 = v167;
        }

        else
        {
          v53 = v50;
        }

        v54 = v136;
        if (v51 < *(&v167 + 1) >> 14)
        {
          v54 = *(&v167 + 1);
        }

        if (v54 >> 14 < v53 >> 14)
        {
          goto LABEL_100;
        }

        v52 = v53;
        *&v136 = v54;
      }

      v22 = v150;
      v55 = v135;
      if ((specialized Parser.tryEat<A>(sequence:)(v135, v47) & 1) == 0)
      {
        *&v166 = v55;
        *(&v166 + 1) = v47;
        *&v166 = String.init<A>(_:)();
        *(&v166 + 1) = v100;
        v167 = 0uLL;
        LOBYTE(v168[0]) = 3;
        *&v151 = *(v2 + 2);
        *(&v151 + 1) = v151;
        Diagnostics.error(_:at:)(&v166, &v151);
      }

      v21 = v144;
      v20 = v145;
      v80 = v136;
      v169 = v49;
      v90 = 0uLL;
      v84 = 2;
      v86 = v140;
      v85 = v141;
      v87 = v139;
      v88 = v138;
      v89 = v137;
    }

    else
    {
      v136 = v167;
      *&v137 = *&v168[2];
      v138 = *(v168 + 8);
      *&v139 = *(&v168[1] + 1);
      v140 = *(&v166 + 1);
      v141 = v166;
      v80 = *(&v168[3] + 1);
      v135 = *&v168[3];
      if ((specialized Parser.tryEat<A>(sequence:)(v45, v47) & 1) == 0)
      {
        *&v166 = v45;
        *(&v166 + 1) = v47;
        *&v166 = String.init<A>(_:)();
        *(&v166 + 1) = v83;
        v167 = 0uLL;
        LOBYTE(v168[0]) = 3;
        *&v151 = *(v2 + 2);
        *(&v151 + 1) = v151;
        Diagnostics.error(_:at:)(&v166, &v151);
      }

      v21 = v144;
      v20 = v145;
      v169 = v49;
      LODWORD(v151) = v164;
      *(&v151 + 3) = *(&v164 + 3);
      v84 = v48;
      v86 = v140;
      v85 = v141;
      v87 = v139;
      v88 = v138;
      v89 = v137;
      v90 = v136;
      v52 = v135;
    }

    *v6 = v85;
    *(v6 + 1) = v86;
    *(v6 + 1) = v90;
    v6[32] = v84;
    v6[39] = HIBYTE(v48);
    *(v6 + 37) = HIDWORD(v48) >> 8;
    *(v6 + 33) = v48 >> 8;
    *(v6 + 40) = v88;
    *(v6 + 7) = v87;
    *(v6 + 8) = v89;
    v6[72] = v49;
    *(v6 + 73) = v151;
    *(v6 + 19) = *(&v151 + 3);
    *(v6 + 10) = v52;
    *(v6 + 11) = v80;
    goto LABEL_63;
  }

  v72._countAndFlagsBits = 123;
  v72._object = 0xE100000000000000;
  if (!Parser.tryEat(_:)(v72))
  {
    goto LABEL_46;
  }

  v73 = v22;
  v74 = *(v2 + 2);
  closure #1 in Parser.expectIdentifier(_:endingWith:eatEnding:)(v2, 125, 0xE100000000000000, 0, &v166);
  v75 = *(v2 + 2);
  if (v75 >> 14 >= v74 >> 14)
  {
    v76 = v166;
    if ((specialized Parser.tryEat<A>(sequence:)(125, 0xE100000000000000) & 1) == 0)
    {
      *&v166 = 125;
      *(&v166 + 1) = 0xE100000000000000;
      *&v166 = String.init<A>(_:)();
      *(&v166 + 1) = v77;
      v167 = 0uLL;
      LOBYTE(v168[0]) = 3;
      *&v151 = *(v2 + 2);
      *(&v151 + 1) = v151;
      Diagnostics.error(_:at:)(&v166, &v151);
    }

    LOBYTE(v151) = 1;
    *v6 = v76;
    *(v6 + 2) = 0;
    *(v6 + 3) = 0;
    v6[32] = 2;
    *(v6 + 40) = 0u;
    *(v6 + 56) = 0u;
    v6[72] = 1;
    *(v6 + 10) = v74;
    *(v6 + 11) = v75;
    v20 = v145;
    swift_storeEnumTagMultiPayload();
    v78 = v144;
    v19 = *(v144 + 56);
    v19(v6, 0, 1, v20);
    v22 = v73;
    v21 = v78;
LABEL_65:
    v103 = *(v21 + 48);
    v102 = v21 + 48;
    v101 = v103;
    if (v103(v6, 1, v20) != 1)
    {
      v168[0] = v157;
      v168[1] = v158;
      v168[2] = v159;
      v166 = v155;
      v167 = v156;
      *&v168[3] = v149;
      BYTE8(v168[3]) = v146;
      outlined destroy of Parser(&v166);
      v109 = v148;
      outlined init with take of AST.Atom.Kind(v6, v148, type metadata accessor for AST.Atom.Kind);
      v19(v109, 0, 1, v20);
LABEL_90:
      if (v101(v109, 1, v20) == 1)
      {
        outlined destroy of _ASTParent?(v109, &_s12_RegexParser3ASTV4AtomV4KindOSgMd, &_s12_RegexParser3ASTV4AtomV4KindOSgMR);
        v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV4KindOGMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV4KindOGMR);
        (*(*(v128 - 8) + 56))(v22, 1, 1, v128);
        return;
      }

      v129 = v142;
      outlined init with take of AST.Atom.Kind(v109, v142, type metadata accessor for AST.Atom.Kind);
      outlined init with take of AST.Atom.Kind(v129, v22, type metadata accessor for AST.Atom.Kind);
      v130 = *(v2 + 2);
      v131 = v143;
      if (v130 >> 14 >= v143 >> 14)
      {
        v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV4KindOGMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV4KindOGMR);
        v133 = (v22 + *(v132 + 28));
        *v133 = v131;
        v133[1] = v130;
        (*(*(v132 - 8) + 56))(v22, 0, 1, v132);
        return;
      }

      __break(1u);
      goto LABEL_95;
    }

    v144 = v102;
    v104 = *&v163[1];
    v105 = BYTE8(v163[1]);
    outlined destroy of _ASTParent?(v6, &_s12_RegexParser3ASTV4AtomV4KindOSgMd, &_s12_RegexParser3ASTV4AtomV4KindOSgMR);
    v106 = *(v2 + 10);
    v107 = v2[3];
    v168[0] = v2[2];
    v168[1] = v107;
    v168[2] = v2[4];
    *(&v168[2] + 9) = *(v2 + 73);
    v108 = v2[1];
    v166 = *v2;
    v167 = v108;

    outlined destroy of Parser(&v166);
    if (v105 == 1)
    {
    }

    else
    {
      v110 = *(v104 + 2);
      v111 = *(v106 + 16);
      if (v111 >= v110)
      {
        v112 = *(v104 + 2);
      }

      else
      {
        v112 = *(v106 + 16);
      }

      if (v110)
      {
        v113 = v112;
      }

      else
      {
        v113 = 0;
      }

      v109 = v148;
      if (v113 == v111)
      {
        swift_unknownObjectRelease();
        v22 = v150;
LABEL_89:
        v126 = v158;
        v2[2] = v157;
        v2[3] = v126;
        v2[4] = v159;
        v127 = v156;
        *v2 = v155;
        v2[1] = v127;
        *(v2 + 10) = v149;
        *(v2 + 88) = v146;
        v20 = v145;
        v19(v109, 1, 1, v145);
        goto LABEL_90;
      }

      if (v113 >= v111)
      {
LABEL_95:
        __break(1u);
        goto LABEL_96;
      }

      v114 = ~v113 + v111;
      v115 = 80 * v113 + 32;
      v116 = v149;
      while (1)
      {
        v170 = *(v106 + v115);
        v117 = *(v106 + v115 + 16);
        v118 = *(v106 + v115 + 32);
        v119 = *(v106 + v115 + 48);
        *&v173[9] = *(v106 + v115 + 57);
        v172 = v118;
        *v173 = v119;
        v171 = v117;
        if (!v170)
        {
          outlined init with copy of Diagnostic(&v170, &v151);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v104 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v104 + 2) + 1, 1, v104);
          }

          v121 = *(v104 + 2);
          v120 = *(v104 + 3);
          if (v121 >= v120 >> 1)
          {
            v104 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v120 > 1), v121 + 1, 1, v104);
          }

          *(v104 + 2) = v121 + 1;
          v122 = &v104[80 * v121];
          *(v122 + 2) = v170;
          v123 = v171;
          v124 = v172;
          v125 = *v173;
          *(v122 + 89) = *&v173[9];
          *(v122 + 4) = v124;
          *(v122 + 5) = v125;
          *(v122 + 3) = v123;
          v116 = v104;
        }

        if (!v114)
        {
          break;
        }

        --v114;
        v115 += 80;
      }

      v149 = v116;
      swift_unknownObjectRelease();

      v22 = v150;
    }

    v109 = v148;
    goto LABEL_89;
  }

LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
}

void Parser.lexGroupLikeReference()(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser3ASTV4AtomV4KindOSgMd, &_s12_RegexParser3ASTV4AtomV4KindOSgMR);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v67 - v8;
  v10 = type metadata accessor for AST.Atom.Kind(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v70 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v1 + 16);
  v14 = *(v1 + 48);
  v15 = *(v1 + 64);
  v16 = *(v1 + 16);
  v89 = *(v1 + 32);
  v90 = v14;
  v91[0] = v15;
  *(v91 + 9) = *(v1 + 73);
  v88[0] = *v1;
  v88[1] = v16;
  v85 = v89;
  v86 = v14;
  v87 = v15;
  v83 = v88[0];
  v84 = v16;
  v76 = *&v91[1];
  v74 = BYTE8(v91[1]);
  outlined init with copy of Parser(v88, &v93);
  v17 = specialized Parser.tryEat<A>(sequence:)(16168, 0xE200000000000000);
  v71 = v13;
  v72 = v10;
  v75 = v11;
  if ((v17 & 1) == 0)
  {
    v22 = *(v11 + 56);
    v22(v7, 1, 1, v10);
    v23 = v11;
LABEL_16:
    v28 = *(v23 + 48);
    v26 = v23 + 48;
    v27 = v28;
    if (v28(v7, 1, v10) == 1)
    {
      v73 = v26;
      v68 = v9;
      v29 = *&v91[1];
      v30 = BYTE8(v91[1]);
      outlined destroy of _ASTParent?(v7, &_s12_RegexParser3ASTV4AtomV4KindOSgMd, &_s12_RegexParser3ASTV4AtomV4KindOSgMR);
      v31 = *(v2 + 80);
      v32 = *(v2 + 48);
      *v95 = *(v2 + 32);
      *&v95[16] = v32;
      *&v95[32] = *(v2 + 64);
      *&v95[41] = *(v2 + 73);
      v33 = *(v2 + 16);
      v93 = *v2;
      v94 = v33;

      outlined destroy of Parser(&v93);
      if (v30 == 1)
      {

        v34 = v76;
      }

      else
      {
        v35 = *(v29 + 2);
        v36 = *(v31 + 16);
        if (v36 >= v35)
        {
          v37 = *(v29 + 2);
        }

        else
        {
          v37 = *(v31 + 16);
        }

        if (v35)
        {
          v38 = v37;
        }

        else
        {
          v38 = 0;
        }

        v34 = v76;
        if (v38 == v36)
        {
          swift_unknownObjectRelease();
        }

        else
        {
          v69 = a1;
          if (v38 >= v36)
          {
LABEL_56:
            __break(1u);
            goto LABEL_57;
          }

          v39 = ~v38 + v36;
          for (i = 80 * v38 + 32; ; i += 80)
          {
            v79 = *(v31 + i);
            v41 = *(v31 + i + 16);
            v42 = *(v31 + i + 32);
            v43 = *(v31 + i + 48);
            *(v82 + 9) = *(v31 + i + 57);
            v81 = v42;
            v82[0] = v43;
            v80 = v41;
            if (!v79)
            {
              outlined init with copy of Diagnostic(&v79, &v77);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 2) + 1, 1, v29);
              }

              v45 = *(v29 + 2);
              v44 = *(v29 + 3);
              if (v45 >= v44 >> 1)
              {
                v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1, v29);
              }

              *(v29 + 2) = v45 + 1;
              v46 = &v29[80 * v45];
              *(v46 + 2) = v79;
              v47 = v80;
              v48 = v81;
              v49 = v82[0];
              *(v46 + 89) = *(v82 + 9);
              *(v46 + 4) = v48;
              *(v46 + 5) = v49;
              *(v46 + 3) = v47;
              v34 = v29;
            }

            if (!v39)
            {
              break;
            }

            --v39;
          }

          swift_unknownObjectRelease();

          a1 = v69;
        }
      }

      v50 = v86;
      *(v2 + 32) = v85;
      *(v2 + 48) = v50;
      *(v2 + 64) = v87;
      v51 = v84;
      *v2 = v83;
      *(v2 + 16) = v51;
      *(v2 + 80) = v34;
      *(v2 + 88) = v74;
      v9 = v68;
      v10 = v72;
      v22(v68, 1, 1, v72);
    }

    else
    {
      *v95 = v85;
      *&v95[16] = v86;
      *&v95[32] = v87;
      v93 = v83;
      v94 = v84;
      *&v95[48] = v76;
      v95[56] = v74;
      outlined destroy of Parser(&v93);
      outlined init with take of AST.Atom.Kind(v7, v9, type metadata accessor for AST.Atom.Kind);
      v22(v9, 0, 1, v10);
    }

    if (v27(v9, 1, v10) == 1)
    {
      outlined destroy of _ASTParent?(v9, &_s12_RegexParser3ASTV4AtomV4KindOSgMd, &_s12_RegexParser3ASTV4AtomV4KindOSgMR);
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV4KindOGMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV4KindOGMR);
      (*(*(v52 - 8) + 56))(a1, 1, 1, v52);
      return;
    }

    v53 = v70;
    outlined init with take of AST.Atom.Kind(v9, v70, type metadata accessor for AST.Atom.Kind);
    outlined init with take of AST.Atom.Kind(v53, a1, type metadata accessor for AST.Atom.Kind);
    v54 = *(v2 + 16);
    v55 = v71;
    if (v54 >> 14 >= v71 >> 14)
    {
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV4KindOGMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV4KindOGMR);
      v57 = (a1 + *(v56 + 28));
      *v57 = v55;
      v57[1] = v54;
      (*(*(v56 - 8) + 56))(a1, 0, 1, v56);
      return;
    }

    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v73 = v11;
  if (specialized Parser.tryEat<A>(sequence:)(15696, 0xE200000000000000))
  {
    v18 = *(v1 + 16);
    closure #1 in Parser.expectIdentifier(_:endingWith:eatEnding:)(v1, 41, 0xE100000000000000, 0, &v93);
    v10 = *(v1 + 16);
    if (v10 >> 14 < v18 >> 14)
    {
      goto LABEL_55;
    }

    v69 = a1;
    v20 = *(&v93 + 1);
    v19 = v93;
    if ((specialized Parser.tryEat<A>(sequence:)(41, 0xE100000000000000) & 1) == 0)
    {
      *&v93 = 41;
      *(&v93 + 1) = 0xE100000000000000;
      *&v93 = String.init<A>(_:)();
      *(&v93 + 1) = v21;
      v94 = 0uLL;
      v95[0] = 3;
      *&v79 = *(v1 + 16);
      *(&v79 + 1) = v79;
      Diagnostics.error(_:at:)(&v93, &v79);
    }

    goto LABEL_15;
  }

  if (specialized Parser.tryEat<A>(sequence:)(15952, 0xE200000000000000))
  {
    v69 = a1;
    v18 = *(v1 + 16);
    closure #1 in Parser.expectIdentifier(_:endingWith:eatEnding:)(v1, 41, 0xE100000000000000, 0, &v93);
    v10 = *(v1 + 16);
    if (v10 >> 14 >= v18 >> 14)
    {
LABEL_13:
      v20 = *(&v93 + 1);
      v19 = v93;
      if ((specialized Parser.tryEat<A>(sequence:)(41, 0xE100000000000000) & 1) == 0)
      {
        *&v93 = 41;
        *(&v93 + 1) = 0xE100000000000000;
        *&v93 = String.init<A>(_:)();
        *(&v93 + 1) = v25;
        v94 = 0uLL;
        v95[0] = 3;
        *&v79 = *(v1 + 16);
        *(&v79 + 1) = v79;
        Diagnostics.error(_:at:)(&v93, &v79);
      }

LABEL_15:
      LOBYTE(v79) = 1;
      *v7 = v19;
      *(v7 + 1) = v20;
      *(v7 + 2) = 0;
      *(v7 + 3) = 0;
      v7[32] = 2;
      *(v7 + 40) = 0u;
      *(v7 + 56) = 0u;
      v7[72] = 1;
      *(v7 + 10) = v18;
      *(v7 + 11) = v10;
      v10 = v72;
      swift_storeEnumTagMultiPayload();
      v23 = v73;
      v22 = *(v73 + 56);
      v22(v7, 0, 1, v10);
      a1 = v69;
      goto LABEL_16;
    }

    __break(1u);
  }

  v24._countAndFlagsBits = 38;
  v24._object = 0xE100000000000000;
  if (Parser.tryEat(_:)(v24))
  {
    v69 = a1;
    v18 = *(v1 + 16);
    closure #1 in Parser.expectIdentifier(_:endingWith:eatEnding:)(v1, 41, 0xE100000000000000, 0, &v93);
    v10 = *(v1 + 16);
    if (v10 >> 14 < v18 >> 14)
    {
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    goto LABEL_13;
  }

  v58 = *(v1 + 16);
  v59._countAndFlagsBits = 82;
  v59._object = 0xE100000000000000;
  if (!Parser.tryEat(_:)(v59))
  {
    Parser.lexNumberedReference(allowWholePatternRef:allowRecursionLevel:)(1, 0, &v93);
    v77 = v93;
    v78 = v94;
    v63 = *v95;
    v79 = *&v95[8];
    v80 = *&v95[24];
    v81 = *&v95[40];
    *&v82[0] = *&v95[56];
    if (v95[0] == 0xFF)
    {
      v23 = v73;
      v22 = *(v73 + 56);
      v22(v7, 1, 1, v10);
    }

    else
    {
      v64._countAndFlagsBits = 41;
      v64._object = 0xE100000000000000;
      if (!Parser.tryEat(_:)(v64))
      {
        v93 = xmmword_1C0C7E3A0;
        v94 = 0uLL;
        v95[0] = 3;
        *&v92 = *(v1 + 16);
        *(&v92 + 1) = v92;
        Diagnostics.error(_:at:)(&v93, &v92);
      }

      v65 = v78;
      *v7 = v77;
      *(v7 + 1) = v65;
      *(v7 + 4) = v63;
      v66 = v80;
      *(v7 + 40) = v79;
      *(v7 + 56) = v66;
      *(v7 + 72) = v81;
      *(v7 + 11) = *&v82[0];
      swift_storeEnumTagMultiPayload();
      v23 = v73;
      v22 = *(v73 + 56);
      v22(v7, 0, 1, v10);
    }

    goto LABEL_16;
  }

  v60 = v10;
  v61 = *(v1 + 16);
  if (v61 >> 14 >= v58 >> 14)
  {
    v62._countAndFlagsBits = 41;
    v62._object = 0xE100000000000000;
    if (!Parser.tryEat(_:)(v62))
    {
      v93 = xmmword_1C0C7E3A0;
      v94 = 0uLL;
      v95[0] = 3;
      *&v79 = *(v1 + 16);
      *(&v79 + 1) = v79;
      Diagnostics.error(_:at:)(&v93, &v79);
    }

    LOBYTE(v79) = 1;
    *v7 = 0;
    *(v7 + 1) = 0;
    *(v7 + 2) = v58;
    *(v7 + 3) = v61;
    v7[32] = 0;
    *(v7 + 40) = 0u;
    *(v7 + 56) = 0u;
    v7[72] = 1;
    *(v7 + 10) = v58;
    *(v7 + 11) = v61;
    v10 = v60;
    swift_storeEnumTagMultiPayload();
    v23 = v73;
    v22 = *(v73 + 56);
    v22(v7, 0, 1, v60);
    goto LABEL_16;
  }

LABEL_58:
  __break(1u);
}

uint64_t closure #1 in Parser.shouldLexGroupLikeAtom()@<X0>(_OWORD *a1@<X0>, _BYTE *a2@<X8>)
{
  v4._countAndFlagsBits = 40;
  v4._object = 0xE100000000000000;
  result = Parser.tryEat(_:)(v4);
  if ((result & 1) == 0)
  {
    goto LABEL_7;
  }

  v6._countAndFlagsBits = 63;
  v6._object = 0xE100000000000000;
  if (Parser.tryEat(_:)(v6))
  {
    v7 = a1[3];
    v36 = a1[2];
    v37 = v7;
    v38[0] = a1[4];
    v8 = v38[0];
    *(v38 + 9) = *(a1 + 73);
    v9 = a1[1];
    v35[0] = *a1;
    v35[1] = v9;
    *&v34[9] = *(v38 + 9);
    v32 = v36;
    v33 = v7;
    *v34 = v8;
    v30 = v35[0];
    v31 = v9;
    outlined init with copy of Parser(v35, &v56);
    v10._countAndFlagsBits = 80;
    v10._object = 0xE100000000000000;
    if (Parser.tryEat(_:)(v10))
    {
      specialized Parser.tryEat<A>(anyOf:)(&outlined read-only object #0 of closure #1 in Parser.canLexGroupLikeReference());
      v12 = v11;
      swift_arrayDestroy();
      if (!v12)
      {
        v13 = 0;
        goto LABEL_14;
      }
    }

    else
    {
      specialized Parser.tryEat<A>(anyOf:)(&outlined read-only object #1 of closure #1 in Parser.canLexGroupLikeReference());
      v16 = v15;
      swift_arrayDestroy();
      if (!v16)
      {
        v53 = v32;
        v54 = v33;
        *v55 = *v34;
        *&v55[9] = *&v34[9];
        v51 = v30;
        v52 = v31;
        *&v50[9] = *&v34[9];
        v49 = v33;
        *v50 = *v34;
        v47 = v31;
        v48 = v32;
        v46 = v30;
        outlined init with copy of Parser(&v51, &v56);
        specialized Parser.tryEat<A>(anyOf:)(&outlined read-only object #0 of Parser.canLexNumberedReference());

        swift_arrayDestroy();
        v56 = v46;
        v57 = v47;
        v58 = v48;
        v59 = v49;
        v60[0] = *v50;
        *(v60 + 9) = *&v50[9];
        outlined init with copy of Parser(&v56, &v39);
        v17 = String.subscript.getter();
        if ((v17 ^ v18) >> 14)
        {
          Substring.subscript.getter();

          outlined destroy of Parser(&v56);
          v13 = Character.isNumber.getter();
        }

        else
        {

          outlined destroy of Parser(&v56);
          v13 = 0;
        }

        v19 = *&v50[16];
        v20 = v50[24];
        v41 = v48;
        v42 = v49;
        v43[0] = *v50;
        *(v43 + 9) = *&v50[9];
        v39 = v46;
        v40 = v47;

        outlined destroy of Parser(&v39);
        v61 = v19;
        v62 = v20;
        v64.diags._rawValue = &v61;
        Diagnostics.appendNewFatalErrors(from:)(v64);

LABEL_14:
        v41 = v32;
        v42 = v33;
        v43[0] = *v34;
        *(v43 + 9) = *&v34[9];
        v39 = v30;
        v40 = v31;

        outlined destroy of Parser(&v39);
        *&v56 = *&v34[16];
        BYTE8(v56) = v34[24];
        v65.diags._rawValue = &v56;
        Diagnostics.appendNewFatalErrors(from:)(v65);

        if (v13)
        {
          goto LABEL_21;
        }

        v21._countAndFlagsBits = 67;
        v21._object = 0xE100000000000000;
        result = Parser.tryEat(_:)(v21);
        if (result)
        {
          goto LABEL_21;
        }

        v22._countAndFlagsBits = 123;
        v22._object = 0xE100000000000000;
        result = Parser.tryEat(_:)(v22);
        if (result)
        {
          goto LABEL_21;
        }

        v23 = a1[3];
        v58 = a1[2];
        v59 = v23;
        v60[0] = a1[4];
        v24 = v60[0];
        *(v60 + 9) = *(a1 + 73);
        v25 = a1[1];
        v56 = *a1;
        v57 = v25;
        *&v55[9] = *(v60 + 9);
        v53 = v58;
        v54 = v23;
        *v55 = v24;
        v51 = v56;
        v52 = v25;
        outlined init with copy of Parser(&v56, &v46);
        Parser.lexMatchingOptionSequence()(&v61);
        if (v63)
        {
          outlined destroy of AST.Atom.Callout.OnigurumaTag?(&v61, &unk_1F402C108, &cache variable for noncanonical specialized generic type metadata for AST.MatchingOptionSequence?);
          v26._countAndFlagsBits = 41;
          v26._object = 0xE100000000000000;
          v27 = Parser.tryEat(_:)(v26);
        }

        else
        {
          v27 = 0;
        }

        v28 = *&v55[16];
        v29 = v55[24];
        v48 = v53;
        v49 = v54;
        *v50 = *v55;
        *&v50[9] = *&v55[9];
        v46 = v51;
        v47 = v52;

        outlined destroy of Parser(&v46);
        v44 = v28;
        v45 = v29;
        v66.diags._rawValue = &v44;
        Diagnostics.appendNewFatalErrors(from:)(v66);

        if (v27)
        {
          goto LABEL_21;
        }

LABEL_7:
        *a2 = 0;
        return result;
      }
    }

    v13 = 1;
    goto LABEL_14;
  }

  v14._countAndFlagsBits = 42;
  v14._object = 0xE100000000000000;
  result = Parser.tryEat(_:)(v14);
  if ((result & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_21:
  *a2 = 1;
  return result;
}

void closure #1 in Parser.expectEscaped()(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v60 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser3ASTV4AtomV4KindOSgMd, &_s12_RegexParser3ASTV4AtomV4KindOSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v57 = &v51 - v4;
  v59 = type metadata accessor for AST.Atom.Kind(0);
  v56 = *(v59 - 8);
  v5 = MEMORY[0x1EEE9AC00](v59);
  v55 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v54 = &v51 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v53 = &v51 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV17CharacterPropertyVGSgMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV17CharacterPropertyVGSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v51 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV17CharacterPropertyVGMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV17CharacterPropertyVGMR);
  v58 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v51 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV4KindOGSgMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV4KindOGSgMR);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v51 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV4KindOGMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV4KindOGMR);
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v51 - v24;
  v26 = *(a1 + 32);
  v27._countAndFlagsBits = 99;
  v27._object = 0xE100000000000000;
  if (!Parser.tryEat(_:)(v27) && (specialized Parser.tryEat<A>(sequence:)(11587, 0xE200000000000000) & 1) == 0)
  {
    if (specialized Parser.tryEat<A>(sequence:)(0x2D435C2D4DLL, 0xE500000000000000))
    {
      Parser.expectASCII()(&v66);
      v30 = *(&v66 + 1);
      if (*(&v66 + 1))
      {
        v31 = v60;
        *v60 = v66;
        v31[1] = v30;
      }

      goto LABEL_11;
    }

    if (specialized Parser.tryEat<A>(sequence:)(11597, 0xE200000000000000))
    {
      Parser.expectASCII()(&v66);
      v32 = *(&v66 + 1);
      if (*(&v66 + 1))
      {
        v33 = v60;
        *v60 = v66;
        v33[1] = v32;
      }

      goto LABEL_11;
    }

    Parser.lexNamedCharacter()(v21);
    v52 = *(v23 + 48);
    if (v52(v21, 1, v22) != 1)
    {
      outlined init with take of Source.Located<AST.Atom.Kind>?(v21, v25, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV4KindOGMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV4KindOGMR);
      outlined init with take of AST.Atom.Kind(v25, v60, type metadata accessor for AST.Atom.Kind);
      return;
    }

    outlined destroy of _ASTParent?(v21, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV4KindOGSgMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV4KindOGSgMR);
    Parser.lexCharacterProperty()(v12);
    if ((*(v58 + 48))(v12, 1, v13) != 1)
    {
      outlined init with take of Source.Located<AST.Atom.Kind>?(v12, v15, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV17CharacterPropertyVGMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV17CharacterPropertyVGMR);
      outlined init with take of AST.Atom.Kind(v15, v60, type metadata accessor for AST.Atom.CharacterProperty);
      goto LABEL_37;
    }

    outlined destroy of _ASTParent?(v12, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV17CharacterPropertyVGSgMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV17CharacterPropertyVGSgMR);
    if ((v26 & 1) == 0)
    {
      Parser.lexEscapedReference()(v19);
      if (v52(v19, 1, v22) != 1)
      {
        v44 = v54;
        outlined init with copy of AST.CustomCharacterClass.Member(v19, v54, type metadata accessor for AST.Atom.Kind);
        outlined destroy of _ASTParent?(v19, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV4KindOGMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV4KindOGMR);
        v42 = v44;
        v43 = &v70[16];
        goto LABEL_26;
      }

      outlined destroy of _ASTParent?(v19, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV4KindOGSgMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV4KindOGSgMR);
    }

    v34 = v57;
    Parser.lexUnicodeScalar()(v57);
    if ((*(v56 + 48))(v34, 1, v59) == 1)
    {
      outlined destroy of _ASTParent?(v34, &_s12_RegexParser3ASTV4AtomV4KindOSgMd, &_s12_RegexParser3ASTV4AtomV4KindOSgMR);
      v35 = a1[1];
      v66 = *a1;
      v67 = v35;
      v36 = a1[3];
      v37 = a1[4];
      v68 = a1[2];
      v69 = v36;
      v38 = *(a1 + 2);
      *v70 = v37;
      *&v70[9] = *(a1 + 73);
      v39 = v67;
      outlined init with copy of Parser(&v66, &v62);
      v40 = String.subscript.getter();
      if ((v40 ^ v41) >> 14)
      {
        v46 = Substring.subscript.getter();
        v48 = v47;

        outlined destroy of Parser(&v66);
        Parser.advance(_:)(1);
        v39 = *(a1 + 2);
        if (v39 >> 14 < v38 >> 14)
        {
          __break(1u);
          return;
        }

        if (v48)
        {
          static AST.Atom.EscapedBuiltin.fromCharacter(_:inCustomCharacterClass:)(v46, v48, v26, &v62);
          v49 = v62;
          if (v62 == 31)
          {

            if (Character.asciiValue.getter() & 0x100) == 0 && ((Character.isLetter.getter() & 1) != 0 || (Character.isNumber.getter()) || (Character.asciiValue.getter() & 0x100) != 0 && (Character.isWhitespace.getter() & 1) == 0)
            {
              *&v62 = v46;
              *(&v62 + 1) = v48;
              v64 = 0;
              v63 = 0;
              v65 = 10;
              *&v61 = v38;
              *(&v61 + 1) = v39;

              Diagnostics.error(_:at:)(&v62, &v61);
              swift_bridgeObjectRelease_n();
            }

            else
            {
            }

            v50 = v60;
            *v60 = v46;
            v50[1] = v48;
          }

          else
          {

            *v60 = v49;
          }

          goto LABEL_37;
        }
      }

      else
      {

        outlined destroy of Parser(&v66);
      }

      v62 = 2uLL;
      v64 = 0;
      v63 = 0;
      v65 = 36;
      *&v61 = v39;
      *(&v61 + 1) = v39;
      Diagnostics.error(_:at:)(&v62, &v61);
LABEL_37:
      swift_storeEnumTagMultiPayload();
      return;
    }

    v42 = v34;
    v43 = &v71;
LABEL_26:
    v45 = *(v43 - 32);
    outlined init with take of AST.Atom.Kind(v42, v45, type metadata accessor for AST.Atom.Kind);
    outlined init with take of AST.Atom.Kind(v45, v60, type metadata accessor for AST.Atom.Kind);
    return;
  }

  Parser.expectASCII()(&v66);
  v28 = *(&v66 + 1);
  if (*(&v66 + 1))
  {
    v29 = v60;
    *v60 = v66;
    v29[1] = v28;
  }

LABEL_11:

  swift_storeEnumTagMultiPayload();
}

void Parser.lexPCRECallout()(_OWORD *a1@<X8>)
{
  v2 = v1;
  if ((specialized Parser.tryEat<A>(sequence:)(4407080, 0xE300000000000000) & 1) == 0)
  {
    _s12_RegexParser3ASTV4AtomV7CalloutOSgWOi0_(&v109);
LABEL_34:
    v43 = v115;
    a1[6] = v114;
    a1[7] = v43;
    a1[8] = v116[0];
    *(a1 + 137) = *(v116 + 9);
    v44 = v112;
    a1[2] = v111;
    a1[3] = v44;
    v45 = *&v113[16];
    a1[4] = *v113;
    a1[5] = v45;
    v46 = v110;
    *a1 = v109;
    a1[1] = v46;
    return;
  }

  v4 = v1[2];
  Parser.lexNumber(_:)(1, &v125);
  if ((v128 & 1) == 0)
  {
    v26 = 0;
    v27 = v127;
    v20 = v125;
    v21 = v126 & 1;
LABEL_30:
    v41 = v2[2];
    if (v41 >> 14 >= v4 >> 14)
    {
      v99 = v27;
      v42._countAndFlagsBits = 41;
      v42._object = 0xE100000000000000;
      if (!Parser.tryEat(_:)(v42))
      {
        v118 = xmmword_1C0C7E3A0;
        v119 = 0uLL;
        v120[0] = 3;
        *&v109 = v2[2];
        *(&v109 + 1) = v109;
        Diagnostics.error(_:at:)(&v118, &v109);
      }

      *&v101 = v20;
      *(&v101 + 1) = v21;
      v102 = v99;
      LOBYTE(v103) = v26;
      *(&v103 + 1) = v4;
      *v104 = v41;
      _s12_RegexParser3ASTV4AtomV7CalloutOWOi_(&v101);
      v114 = v106;
      v115 = v107;
      v116[0] = v108[0];
      *(v116 + 9) = *(v108 + 9);
      v111 = v103;
      v112 = *v104;
      *v113 = *&v104[16];
      *&v113[16] = v105;
      v109 = v101;
      v110 = v102;
      AST.root.modify();
      goto LABEL_34;
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v5 = *(v1 + 1);
  v109 = *v1;
  v110 = v5;
  v6 = *(v1 + 3);
  v111 = *(v1 + 2);
  v112 = v6;
  *v113 = *(v1 + 4);
  *&v113[9] = *(v1 + 73);
  v7 = v110.i64[0];
  outlined init with copy of Parser(&v109, &v101);
  v8 = String.subscript.getter();
  if ((v8 ^ v9) < 0x4000)
  {

    outlined destroy of Parser(&v109);
    goto LABEL_5;
  }

  v28 = Substring.subscript.getter();
  v30 = v29;

  outlined destroy of Parser(&v109);
  if (v28 == 41 && v30 == 0xE100000000000000)
  {

LABEL_19:
    v26 = 0;
    v20 = 0;
    v21 = 0;
    v27 = vdupq_n_s64(v7);
    goto LABEL_30;
  }

  v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v31)
  {
    goto LABEL_19;
  }

LABEL_5:
  v10 = specialized Parser.tryEat<A>(anyOf:)(&outlined read-only object #0 of closure #1 in Parser.lexPCRECallout());
  v12 = v11;
  swift_arrayDestroy();
  if (!v12)
  {
    v123 = 0;
    v124 = 0xE000000000000000;
    v32 = v2[2];
    v33 = String.subscript.getter();
    v35 = v34;

    v36 = v32;
    v89 = v32;
    if ((v33 ^ v35) < 0x4000)
    {
LABEL_21:
      if (v36 >> 14 < v89 >> 14)
      {
        goto LABEL_73;
      }

      v20 = v123;
      v21 = v124;
      v37 = String.subscript.getter();
      v39 = v38;

      if ((v37 ^ v39) < 0x4000)
      {
        v40 = HIBYTE(v21) & 0xF;
        if ((v21 & 0x2000000000000000) == 0)
        {
          v40 = v20 & 0xFFFFFFFFFFFFLL;
        }

        if (!v40)
        {
          v101 = xmmword_1C0C7E3A0;
          v102 = 0uLL;
          LOBYTE(v103) = 3;
          *&v118 = v32;
          *(&v118 + 1) = v32;
          Diagnostics.error(_:at:)(&v101, &v118);
          goto LABEL_29;
        }
      }

      *&v101 = 4407080;
      *(&v101 + 1) = 0xE300000000000000;

      MEMORY[0x1C68E0BF0](v20, v21);

      MEMORY[0x1C68E0BF0](41, 0xE100000000000000);
      v102 = 0uLL;
      LOBYTE(v103) = 15;
      *&v118 = v89;
      *(&v118 + 1) = v36;
      v24 = &v101;
      v25 = &v118;
      goto LABEL_27;
    }

    v47 = String.subscript.getter();
    if ((v47 ^ v48) >> 14)
    {
      v85 = Substring.subscript.getter();
      v87 = v86;

      if (v85 == 41 && v87 == 0xE100000000000000)
      {

        v32 = v89;
        v36 = v89;
        goto LABEL_21;
      }

      v88 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v32 = v89;
      v36 = v89;
      if (v88)
      {
        goto LABEL_21;
      }
    }

    else
    {
    }

    v49 = *v2;
    v98 = *v2;
    v100 = v2[1];
    v93 = v2[6];
    v94 = v2[5];
    v92 = *(v2 + 7);
    v91 = *(v2 + 72);
    v36 = v89;
    v95 = *(v2 + 32);
    v96 = *(v2 + 88);
    v90 = v4;
    while (1)
    {
      while (1)
      {
        v32 = v2[2];
        v50 = v2[3];
        v51 = v2[10];
        *&v101 = v49;
        *(&v101 + 1) = v100;
        v102.i64[0] = v32;
        v102.i64[1] = v50;
        LOBYTE(v103) = v95;
        *(&v103 + 1) = v94;
        *v104 = v93;
        *&v104[8] = v92;
        v104[24] = v91;
        *&v105 = v51;
        BYTE8(v105) = v96;
        outlined init with copy of Parser(&v101, &v118);
        v52 = String.subscript.getter();
        if (!((v52 ^ v53) >> 14))
        {

          outlined destroy of Parser(&v101);
          v4 = v90;
          goto LABEL_21;
        }

        v97 = Substring.subscript.getter();
        v55 = v54;

        outlined destroy of Parser(&v101);
        String.subscript.getter();
        v36 = Substring.index(_:offsetBy:limitedBy:)();
        v57 = v56;

        if (v57)
        {
          strcpy(v117, "UNREACHABLE: ");
          HIWORD(v117[1]) = -4864;
          MEMORY[0x1C68E0BF0](0xD000000000000015, 0x80000001C0C86F20);
          LOBYTE(v118) = 0;
          *(&v118 + 1) = v117[0];
          *&v119 = v117[1];
          *(&v119 + 1) = v32;
          *v120 = v32;
          memset(&v120[8], 0, 32);
          v120[40] = -1;
          if (v96)
          {
            outlined destroy of Diagnostic(&v118);
          }

          else
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v51 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v51 + 2) + 1, 1, v51);
            }

            v59 = *(v51 + 2);
            v58 = *(v51 + 3);
            if (v59 >= v58 >> 1)
            {
              v51 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v58 > 1), v59 + 1, 1, v51);
            }

            *(v51 + 2) = v59 + 1;
            v60 = &v51[80 * v59];
            *(v60 + 2) = v118;
            v61 = v119;
            v62 = *v120;
            v63 = *&v120[16];
            *(v60 + 89) = *&v120[25];
            *(v60 + 4) = v62;
            *(v60 + 5) = v63;
            *(v60 + 3) = v61;
            v2[10] = v51;
          }

          String.subscript.getter();
          v64 = Substring.distance(from:to:)();

          if (v64 < 1 || (String.subscript.getter(), v36 = Substring.index(_:offsetBy:limitedBy:)(), v66 = v65, , (v66 & 1) != 0))
          {
            v36 = v32;
          }

          else
          {
            if (v50 >> 14 < v36 >> 14)
            {
              goto LABEL_74;
            }

            v2[2] = v36;
            v2[3] = v50;
          }
        }

        else
        {
          if (v50 >> 14 < v36 >> 14)
          {
            goto LABEL_71;
          }

          v2[2] = v36;
          v2[3] = v50;
        }

        MEMORY[0x1C68E0BE0](v97, v55);

        v67 = String.subscript.getter();
        v69 = v68;

        if ((v67 ^ v69) < 0x4000)
        {
          v32 = v36;
          v4 = v90;
          goto LABEL_21;
        }

        v70 = v2[1];
        v71 = v2[2];
        v72 = v2[3];
        v73 = *(v2 + 32);
        v74 = v2[5];
        v75 = v2[6];
        v76 = *(v2 + 72);
        v77 = v2[10];
        v78 = *(v2 + 88);
        *&v118 = *v2;
        *(&v118 + 1) = v70;
        *&v119 = v71;
        *(&v119 + 1) = v72;
        v120[0] = v73;
        *&v120[8] = v74;
        *&v120[16] = v75;
        *&v120[24] = *(v2 + 7);
        v120[40] = v76;
        v121 = v77;
        v122 = v78;
        outlined init with copy of Parser(&v118, v117);
        v79 = String.subscript.getter();
        v4 = v90;
        if ((v79 ^ v80) >> 14)
        {
          break;
        }

        outlined destroy of Parser(&v118);
        v49 = v98;
      }

      v81 = Substring.subscript.getter();
      v83 = v82;

      outlined destroy of Parser(&v118);
      if (v81 == 41 && v83 == 0xE100000000000000)
      {
        break;
      }

      v84 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v32 = v36;
      v49 = v98;
      if (v84)
      {
        goto LABEL_21;
      }
    }

    v32 = v36;
    goto LABEL_21;
  }

  v13 = Parser.getClosingDelimiter(for:)(v10, v12);
  v15 = v14;

  v16._countAndFlagsBits = v13;
  v16._object = v15;
  v17 = String.init(repeating:count:)(v16, 1);
  v18 = v2[2];

  specialized Parser.lexUntil(_:)(v2, v17._countAndFlagsBits, v17._object, v13, v15, 0, &v101);
  v19 = v2[2];
  if (v19 >> 14 >= v18 >> 14)
  {
    v21 = *(&v101 + 1);
    v20 = v101;
    v22 = HIBYTE(*(&v101 + 1)) & 0xFLL;
    if ((*(&v101 + 1) & 0x2000000000000000) == 0)
    {
      v22 = v101 & 0xFFFFFFFFFFFFLL;
    }

    if (!v22)
    {
      v101 = 1uLL;
      v102 = 0uLL;
      LOBYTE(v103) = 36;
      *&v118 = v18;
      *(&v118 + 1) = v19;
      Diagnostics.error(_:at:)(&v101, &v118);
    }

    if (specialized Parser.tryEat<A>(sequence:)(v17._countAndFlagsBits, v17._object))
    {
      goto LABEL_28;
    }

    v118 = v17;
    *&v118 = String.init<A>(_:)();
    *(&v118 + 1) = v23;
    v119 = 0uLL;
    v120[0] = 3;
    v117[0] = v2[2];
    v117[1] = v117[0];
    v24 = &v118;
    v25 = v117;
LABEL_27:
    Diagnostics.error(_:at:)(v24, v25);
LABEL_28:

LABEL_29:
    v27 = 0uLL;
    v26 = 1;
    goto LABEL_30;
  }

LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
}

void Parser.expectOnigurumaCalloutArgList(leftBrace:)(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v73 = a1[1];
  v74 = *a1;
  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = String.subscript.getter();
  if (v7 >> 14 >= v6 >> 14)
  {
    v76 = MEMORY[0x1E69E7CC0];
    v77 = v3;
    while (1)
    {
      v78 = v5;
      v10 = Substring.subscript.getter();
      v12 = v11;

      if (v10 >> 14 == v12 >> 14)
      {
        v13 = v12 >> 14;
      }

      else
      {
        v13 = v10 >> 14;
        while (1)
        {
          v15 = Substring.subscript.getter();
          v16 = v14;
          if (v15 == 44 && v14 == 0xE100000000000000)
          {
            break;
          }

          if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v15 == 125 && v16 == 0xE100000000000000)
          {
            break;
          }

          v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v17)
          {
            goto LABEL_17;
          }

          v13 = Substring.index(after:)() >> 14;
          if (v13 == v12 >> 14)
          {
            v13 = v12 >> 14;
            goto LABEL_17;
          }
        }

LABEL_17:
        v3 = v77;
      }

      if (v13 < v10 >> 14)
      {
        goto LABEL_65;
      }

      v18 = Substring.subscript.getter();
      v20 = v19;
      v22 = v21;
      v24 = v23;

      if (!((v18 ^ v20) >> 14))
      {
        break;
      }

      v26 = v78;
      if (Substring.distance(from:to:)() >= 1)
      {
        String.subscript.getter();
        v27 = Substring.index(_:offsetBy:limitedBy:)();
        v29 = v28;

        v26 = v78;
        if ((v29 & 1) == 0)
        {
          if (v4 >> 14 < v27 >> 14)
          {
            goto LABEL_68;
          }

          *(v77 + 16) = v27;
          *(v77 + 24) = v4;
          v26 = v27;
        }
      }

      v30 = MEMORY[0x1C68E0B20](v18, v20, v22, v24);
      v32 = v31;

      if (v26 >> 14 < v78 >> 14)
      {
        goto LABEL_66;
      }

      if (!v32)
      {
        v25 = v26;
        v3 = v77;
        goto LABEL_33;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v76 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v76 + 2) + 1, 1, v76, &_ss23_ContiguousArrayStorageCy12_RegexParser6SourceV7LocatedVy_SSGGMd, &_ss23_ContiguousArrayStorageCy12_RegexParser6SourceV7LocatedVy_SSGGMR, &unk_1F402C190);
      }

      v34 = *(v76 + 2);
      v33 = *(v76 + 3);
      if (v34 >= v33 >> 1)
      {
        v76 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v76, &_ss23_ContiguousArrayStorageCy12_RegexParser6SourceV7LocatedVy_SSGGMd, &_ss23_ContiguousArrayStorageCy12_RegexParser6SourceV7LocatedVy_SSGGMR, &unk_1F402C190);
      }

      *(v76 + 2) = v34 + 1;
      v35 = &v76[32 * v34];
      *(v35 + 4) = v30;
      *(v35 + 5) = v32;
      *(v35 + 6) = v78;
      *(v35 + 7) = v26;
      v3 = v77;
LABEL_34:
      v36 = String.subscript.getter();
      v38 = v37;

      if ((v36 ^ v38) < 0x4000)
      {
        goto LABEL_60;
      }

      v39 = *(v3 + 16);
      v87 = *v3;
      v88 = v39;
      v40 = *(v3 + 48);
      v89 = *(v3 + 32);
      v90 = v40;
      v91[0] = *(v3 + 64);
      *(v91 + 9) = *(v3 + 73);
      v26 = v88;
      outlined init with copy of Parser(&v87, &v82);
      v41 = String.subscript.getter();
      if ((v41 ^ v42) >> 14)
      {
        v43 = Substring.subscript.getter();
        v45 = v44;

        outlined destroy of Parser(&v87);
        if (v43 == 125 && v45 == 0xE100000000000000)
        {

LABEL_60:
          v71._countAndFlagsBits = 125;
          v71._object = 0xE100000000000000;
          if (!Parser.tryEat(_:)(v71))
          {
            v87 = xmmword_1C0C7E390;
            v88 = 0uLL;
            LOBYTE(v89) = 3;
            *&v82 = *(v3 + 16);
            *(&v82 + 1) = v82;
            Diagnostics.error(_:at:)(&v87, &v82);
          }

          v72 = *(v3 + 16);
          if (v72 >> 14 >= v26 >> 14)
          {
            *a2 = v74;
            a2[1] = v73;
            a2[2] = v76;
            a2[3] = v26;
            a2[4] = v72;
            return;
          }

          goto LABEL_69;
        }

        v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v46)
        {
          goto LABEL_60;
        }
      }

      else
      {

        outlined destroy of Parser(&v87);
      }

      v47 = *(v3 + 16);
      v82 = *v3;
      v83 = v47;
      v48 = *(v3 + 48);
      v84 = *(v3 + 32);
      v85 = v48;
      *v86 = *(v3 + 64);
      *&v86[9] = *(v3 + 73);
      v49 = v83;
      outlined init with copy of Parser(&v82, &v79);
      v50 = String.subscript.getter();
      if (!((v50 ^ v51) >> 14))
      {

        outlined destroy of Parser(&v82);
LABEL_42:
        v52 = *&v86[16];
        v53 = v86[24];
        MEMORY[0x1C68E0BF0](44, 0xE100000000000000);
        MEMORY[0x1C68E0BF0](39, 0xE100000000000000);
        LOBYTE(v79) = 1;
        *(&v79 + 1) = 0x6465746365707865;
        *&v80 = 0xEA00000000002720;
        *(&v80 + 1) = v49;
        *v81 = v49;
        *&v81[8] = xmmword_1C0C7E3D0;
        *&v81[24] = 0;
        *&v81[32] = 0;
        v81[40] = 3;
        if (v53 == 1)
        {
          outlined destroy of Diagnostic(&v79);
        }

        else
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v52 + 2) + 1, 1, v52);
          }

          v55 = *(v52 + 2);
          v54 = *(v52 + 3);
          if (v55 >= v54 >> 1)
          {
            v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v55 + 1, 1, v52);
          }

          *(v52 + 2) = v55 + 1;
          v56 = &v52[80 * v55];
          *(v56 + 2) = v79;
          v57 = v80;
          v58 = *v81;
          v59 = *&v81[16];
          *(v56 + 89) = *&v81[25];
          *(v56 + 4) = v58;
          *(v56 + 5) = v59;
          *(v56 + 3) = v57;
          *(v3 + 80) = v52;
        }

        goto LABEL_4;
      }

      v60 = Substring.subscript.getter();
      v62 = v61;

      outlined destroy of Parser(&v82);
      if (v60 == 44 && v62 == 0xE100000000000000)
      {
      }

      else
      {
        v63 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v63 & 1) == 0)
        {
          goto LABEL_42;
        }
      }

      String.subscript.getter();
      v64 = Substring.index(_:offsetBy:limitedBy:)();
      v66 = v65;

      if (v66)
      {
        v67._object = 0x80000001C0C86F20;
        v67._countAndFlagsBits = 0xD000000000000015;
        Parser.unreachable(_:)(v67);
        String.subscript.getter();
        v68 = Substring.distance(from:to:)();

        if (v68 < 1)
        {
          goto LABEL_4;
        }

        String.subscript.getter();
        v64 = Substring.index(_:offsetBy:limitedBy:)();
        v70 = v69;

        if (v70)
        {
          goto LABEL_4;
        }

        if (*(&v49 + 1) >> 14 < v64 >> 14)
        {
          goto LABEL_70;
        }
      }

      else if (*(&v49 + 1) >> 14 < v64 >> 14)
      {
        goto LABEL_67;
      }

      *(v3 + 16) = v64;
      *(v3 + 24) = *(&v49 + 1);
LABEL_4:
      v5 = *(v3 + 16);
      v4 = *(v3 + 24);
      v8 = String.subscript.getter();
      if (v9 >> 14 < v8 >> 14)
      {
        goto LABEL_64;
      }
    }

    v25 = v78;
    v26 = v78;
LABEL_33:
    v92 = 0xFuLL;
    v93 = 0;
    v94 = 0;
    v95 = 36;
    *&v87 = v25;
    *(&v87 + 1) = v25;
    Diagnostics.error(_:at:)(&v92, &v87);
    goto LABEL_34;
  }

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
LABEL_70:
  __break(1u);
}