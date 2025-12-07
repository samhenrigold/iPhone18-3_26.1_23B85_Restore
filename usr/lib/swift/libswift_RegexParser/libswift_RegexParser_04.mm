void Parser.lexOnigurumaCalloutTag()(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4._countAndFlagsBits = 91;
  v4._object = 0xE100000000000000;
  if (Parser.tryEat(_:)(v4))
  {
    v5 = v1[2];
    if (v5 >> 14 < v3 >> 14)
    {
      __break(1u);
    }

    else
    {
      closure #1 in Parser.expectIdentifier(_:endingWith:eatEnding:)(v1, 93, 0xE100000000000000, 2u, &v11);
      v6 = v1[2];
      if (v6 >> 14 >= v5 >> 14)
      {
        v7 = v11;
        v8._countAndFlagsBits = 93;
        v8._object = 0xE100000000000000;
        if (!Parser.tryEat(_:)(v8))
        {
          v11 = xmmword_1C0C7E3E0;
          v12 = 0;
          v13 = 0;
          v14 = 3;
          *&v10 = v1[2];
          *(&v10 + 1) = v10;
          Diagnostics.error(_:at:)(&v11, &v10);
        }

        v9 = v1[2];
        if (v6 >> 14 <= v9 >> 14)
        {
          *a1 = v3;
          *(a1 + 8) = v5;
          *(a1 + 16) = v7;
          *(a1 + 32) = v5;
          *(a1 + 40) = v6;
          *(a1 + 48) = v6;
          *(a1 + 56) = v9;
          return;
        }

        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
}

void Parser.lexOnigurumaNamedCallout()(__int128 *a1@<X8>)
{
  v2 = v1;
  *&v92[9] = *(v1 + 73);
  v4 = *(v1 + 48);
  v90 = *(v1 + 32);
  v91 = v4;
  *v92 = *(v1 + 64);
  v5 = *(v1 + 16);
  v89[0] = *v1;
  v89[1] = v5;
  v84 = v89[0];
  v85 = v5;
  v86 = v90;
  v87 = v4;
  v88 = *v92;
  v6 = *&v92[16];
  v7 = v92[24];
  outlined init with copy of Parser(v89, &v102);
  if (specialized Parser.tryEat<A>(sequence:)(10792, 0xE200000000000000))
  {
    v54 = v6;
    v8 = *(v1 + 16);
    closure #1 in Parser.expectIdentifier(_:endingWith:eatEnding:)(v1, 41, 0xE100000000000000, 1u, &v102);
    v9 = *(v1 + 16);
    if (v9 >> 14 < v8 >> 14)
    {
      __break(1u);
    }

    else
    {
      v10 = v102;
      Parser.lexOnigurumaCalloutTag()(&v102);
      v52 = v103;
      v53 = v102;
      v50 = v105;
      v51 = v104;
      v11 = *(v1 + 16);
      v12._countAndFlagsBits = 123;
      v12._object = 0xE100000000000000;
      v55 = v7;
      if (!Parser.tryEat(_:)(v12))
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        goto LABEL_8;
      }

      v13 = *(v1 + 16);
      if (v13 >> 14 >= v11 >> 14)
      {
        *&v93 = v11;
        *(&v93 + 1) = v13;
        Parser.expectOnigurumaCalloutArgList(leftBrace:)(&v93, &v102);
        v15 = *(&v102 + 1);
        v14 = v102;
        v17 = *(&v103 + 1);
        v16 = v103;
        v18 = v104;
LABEL_8:
        v19._countAndFlagsBits = 41;
        v19._object = 0xE100000000000000;
        if (!Parser.tryEat(_:)(v19))
        {
          v70 = xmmword_1C0C7E3A0;
          v71 = 0uLL;
          LOBYTE(v72) = 3;
          *&v102 = *(v1 + 16);
          *(&v102 + 1) = v102;
          Diagnostics.error(_:at:)(&v70, &v102);
        }

        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        outlined destroy of AST.Atom.Callout.OnigurumaTag?(&v61, &unk_1F402B960, &cache variable for noncanonical specialized generic type metadata for AST.Atom.Callout.OnigurumaTag?);

        v93 = v10;
        *&v94 = v8;
        *(&v94 + 1) = v9;
        v95 = v53;
        v96 = v52;
        v97 = v51;
        v98 = v50;
        *&v99 = v14;
        *(&v99 + 1) = v15;
        *&v100 = v16;
        *(&v100 + 1) = v17;
        *&v101[0] = v18;
        _s12_RegexParser3ASTV4AtomV7CalloutOWOi0_(&v93);
        v108 = v99;
        v109 = v100;
        v110[0] = v101[0];
        *(v110 + 9) = *(v101 + 9);
        v104 = v95;
        v105 = v96;
        v106 = v97;
        v107 = v98;
        v102 = v93;
        v103 = v94;
        AST.root.modify();
        v81 = v108;
        v82 = v109;
        v83[0] = v110[0];
        *(v83 + 9) = *(v110 + 9);
        v77 = v104;
        v78 = v105;
        v79 = v106;
        v80 = v107;
        v75 = v102;
        v76 = v103;
        v7 = v55;
        v6 = v54;
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_37;
  }

  _s12_RegexParser3ASTV4AtomV7CalloutOSgWOi0_(&v75);
LABEL_11:
  v99 = v81;
  v100 = v82;
  v101[0] = v83[0];
  *(v101 + 9) = *(v83 + 9);
  v95 = v77;
  v96 = v78;
  v97 = v79;
  v98 = v80;
  v93 = v75;
  v94 = v76;
  v108 = v81;
  v109 = v82;
  v110[0] = v83[0];
  *(v110 + 9) = *(v83 + 9);
  v104 = v77;
  v105 = v78;
  v106 = v79;
  v107 = v80;
  v102 = v75;
  v103 = v76;
  if (_s12_RegexParser3ASTV4AtomV7CalloutOSgWOg(&v102) != 1)
  {
    v63 = v86;
    v64 = v87;
    v65 = v88;
    v61 = v84;
    v62 = v85;
    *&v66 = v6;
    BYTE8(v66) = v7;
    outlined destroy of Parser(&v61);
    v25 = v82;
    a1[6] = v81;
    a1[7] = v25;
    a1[8] = v83[0];
    *(a1 + 137) = *(v83 + 9);
    v26 = v78;
    a1[2] = v77;
    a1[3] = v26;
    v27 = v80;
    a1[4] = v79;
    a1[5] = v27;
    v28 = v76;
    *a1 = v75;
    a1[1] = v28;
    AST.root.modify();
    return;
  }

  v20 = *&v92[16];
  v21 = v92[24];
  v67 = v81;
  v68 = v82;
  v69[0] = v83[0];
  *(v69 + 9) = *(v83 + 9);
  v63 = v77;
  v64 = v78;
  v65 = v79;
  v66 = v80;
  v61 = v75;
  v62 = v76;
  outlined destroy of AST.Atom.Callout.OnigurumaTag?(&v61, &unk_1F402C238, &cache variable for noncanonical specialized generic type metadata for AST.Atom.Callout?);
  v22 = *(v2 + 80);
  v23 = *(v2 + 48);
  v72 = *(v2 + 32);
  v73 = v23;
  v74[0] = *(v2 + 64);
  *(v74 + 9) = *(v2 + 73);
  v24 = *(v2 + 16);
  v70 = *v2;
  v71 = v24;

  outlined destroy of Parser(&v70);
  if (v21 == 1)
  {

LABEL_34:
    v44 = v87;
    *(v2 + 32) = v86;
    *(v2 + 48) = v44;
    *(v2 + 64) = v88;
    v45 = v85;
    *v2 = v84;
    *(v2 + 16) = v45;
    *(v2 + 80) = v6;
    *(v2 + 88) = v7;
    *(a1 + 137) = *(v101 + 9);
    v46 = v101[0];
    a1[7] = v100;
    a1[8] = v46;
    v47 = v99;
    a1[5] = v98;
    a1[6] = v47;
    v48 = v97;
    a1[3] = v96;
    a1[4] = v48;
    v49 = v95;
    a1[1] = v94;
    a1[2] = v49;
    *a1 = v93;
    return;
  }

  v29 = *(v20 + 2);
  v30 = *(v22 + 16);
  if (v30 >= v29)
  {
    v31 = *(v20 + 2);
  }

  else
  {
    v31 = *(v22 + 16);
  }

  if (v29)
  {
    v32 = v31;
  }

  else
  {
    v32 = 0;
  }

  if (v32 == v30)
  {
    swift_unknownObjectRelease();
    goto LABEL_34;
  }

  if (v32 < v30)
  {

    v33 = ~v32 + v30;
    for (i = 80 * v32 + 32; ; i += 80)
    {
      v57 = *(v22 + i);
      v35 = *(v22 + i + 16);
      v36 = *(v22 + i + 32);
      v37 = *(v22 + i + 48);
      *(v60 + 9) = *(v22 + i + 57);
      v59 = v36;
      v60[0] = v37;
      v58 = v35;
      if (!v57)
      {
        outlined init with copy of Diagnostic(&v57, v56);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 2) + 1, 1, v20);
        }

        v39 = *(v20 + 2);
        v38 = *(v20 + 3);
        if (v39 >= v38 >> 1)
        {
          v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1, v20);
        }

        *(v20 + 2) = v39 + 1;
        v40 = &v20[80 * v39];
        *(v40 + 2) = v57;
        v41 = v58;
        v42 = v59;
        v43 = v60[0];
        *(v40 + 89) = *(v60 + 9);
        *(v40 + 4) = v42;
        *(v40 + 5) = v43;
        *(v40 + 3) = v41;
        v6 = v20;
      }

      if (!v33)
      {
        break;
      }

      --v33;
    }

    swift_unknownObjectRelease();

    goto LABEL_34;
  }

LABEL_37:
  __break(1u);
}

void Parser.lexOnigurumaCalloutOfContents()(Swift::String *a1@<X8>)
{
  v2 = v1;
  *&v104[9] = *(v1 + 73);
  v4 = *(v1 + 48);
  v102 = *(v1 + 32);
  v103 = v4;
  *v104 = *(v1 + 64);
  v5 = *(v1 + 16);
  v101[0] = *v1;
  v101[1] = v5;
  v96 = v101[0];
  v97 = v5;
  v98 = v102;
  v99 = v4;
  v100 = *v104;
  v6 = *&v104[16];
  v7 = v104[24];
  outlined init with copy of Parser(v101, &v114);
  if (specialized Parser.tryEat<A>(sequence:)(16168, 0xE200000000000000))
  {
    specialized Parser.tryEatPrefix(maxLength:_:)(0, 1, v1, specialized Source.peekPrefix(maxLength:_:), &v114._countAndFlagsBits);
    if (v114._object)
    {
      v62 = v7;
      object = v115._object;
      countAndFlagsBits = v115._countAndFlagsBits;

      v9 = String.count.getter();

      v10._countAndFlagsBits = 125;
      v10._object = 0xE100000000000000;
      v11 = String.init(repeating:count:)(v10, v9);
      v12 = *(v2 + 16);

      specialized Parser.lexUntil(_:)(v2, v11._countAndFlagsBits, v11._object, 125, 0xE100000000000000, 0, &v114);
      v13 = *(v2 + 16);
      if (v13 >> 14 < v12 >> 14)
      {
        __break(1u);
      }

      else
      {
        v60 = object;
        v14 = v114._object;
        v15 = (v114._object >> 56) & 0xF;
        v59 = v114._countAndFlagsBits;
        if ((v114._object & 0x2000000000000000) == 0)
        {
          v15 = v114._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
        }

        if (!v15)
        {
          v82 = 1uLL;
          v83 = 0uLL;
          LOBYTE(v84) = 36;
          v114._countAndFlagsBits = v12;
          v114._object = v13;
          Diagnostics.error(_:at:)(&v82, &v114._countAndFlagsBits);
        }

        if ((specialized Parser.tryEat<A>(sequence:)(v11._countAndFlagsBits, v11._object) & 1) == 0)
        {
          v114 = v11;
          *&v69 = String.init<A>(_:)();
          *(&v69 + 1) = v16;
          v70 = 0uLL;
          LOBYTE(v71) = 3;
          v114._countAndFlagsBits = *(v2 + 16);
          v114._object = v114._countAndFlagsBits;
          Diagnostics.error(_:at:)(&v69, &v114._countAndFlagsBits);
        }

        v17 = *(v2 + 16);
        if (v13 >> 14 <= v17 >> 14)
        {
          Parser.lexOnigurumaCalloutTag()(&v114);
          v57 = v115;
          v58 = v114;
          v55 = v117;
          v56 = v116;
          v18 = *(v2 + 16);
          v19._countAndFlagsBits = 62;
          v19._object = 0xE100000000000000;
          v63 = v6;
          if (Parser.tryEat(_:)(v19))
          {
            v20 = 0;
          }

          else
          {
            v21._countAndFlagsBits = 60;
            v21._object = 0xE100000000000000;
            if (Parser.tryEat(_:)(v21))
            {
              v20 = 1;
            }

            else
            {
              v22._countAndFlagsBits = 88;
              v22._object = 0xE100000000000000;
              if (Parser.tryEat(_:)(v22))
              {
                v20 = 2;
              }

              else
              {
                v20 = 0;
              }
            }
          }

          v23 = *(v2 + 16);
          if (v23 >> 14 >= v18 >> 14)
          {
            v24._countAndFlagsBits = 41;
            v24._object = 0xE100000000000000;
            if (!Parser.tryEat(_:)(v24))
            {
              v65 = xmmword_1C0C7E3A0;
              v66 = 0;
              v67 = 0;
              v68 = 3;
              v114._countAndFlagsBits = *(v2 + 16);
              v114._object = v114._countAndFlagsBits;
              Diagnostics.error(_:at:)(&v65, &v114._countAndFlagsBits);
            }

            v75 = 0;
            v76 = 0;
            v73 = 0;
            v74 = 0;
            outlined destroy of AST.Atom.Callout.OnigurumaTag?(&v73, &unk_1F402B960, &cache variable for noncanonical specialized generic type metadata for AST.Atom.Callout.OnigurumaTag?);
            v105._countAndFlagsBits = countAndFlagsBits;
            v105._object = v60;
            v106._countAndFlagsBits = v59;
            v106._object = v14;
            v107._countAndFlagsBits = v12;
            v107._object = v13;
            v108._countAndFlagsBits = v13;
            v108._object = v17;
            v109 = v58;
            v110 = v57;
            v111 = v56;
            v112 = v55;
            v113[0] = v20;
            *&v113[8] = v18;
            *&v113[16] = v23;
            _s12_RegexParser3ASTV4AtomV7CalloutOWOi1_(&v105);
            v120 = v111;
            v121 = v112;
            v122[0] = *v113;
            *(v122 + 9) = *&v113[9];
            v116 = v107;
            v117 = v108;
            v118 = v109;
            v119 = v110;
            v114 = v105;
            v115 = v106;
            AST.root.modify();
            v93 = v120;
            v94 = v121;
            v95[0] = v122[0];
            *(v95 + 9) = *(v122 + 9);
            v89 = v116;
            v90 = v117;
            v91 = v118;
            v92 = v119;
            v87 = v114;
            v88 = v115;
            v7 = v62;
            v6 = v63;
            goto LABEL_23;
          }

LABEL_49:
          __break(1u);
          goto LABEL_50;
        }
      }

      __break(1u);
      goto LABEL_49;
    }
  }

  _s12_RegexParser3ASTV4AtomV7CalloutOSgWOi0_(&v87);
LABEL_23:
  v111 = v93;
  v112 = v94;
  *v113 = v95[0];
  *&v113[9] = *(v95 + 9);
  v107 = v89;
  v108 = v90;
  v109 = v91;
  v110 = v92;
  v105 = v87;
  v106 = v88;
  v120 = v93;
  v121 = v94;
  v122[0] = v95[0];
  *(v122 + 9) = *(v95 + 9);
  v116 = v89;
  v117 = v90;
  v118 = v91;
  v119 = v92;
  v114 = v87;
  v115 = v88;
  if (_s12_RegexParser3ASTV4AtomV7CalloutOSgWOg(&v114) != 1)
  {
    v75 = v98;
    v76 = v99;
    v77 = v100;
    v73 = v96;
    v74 = v97;
    v78._countAndFlagsBits = v6;
    LOBYTE(v78._object) = v7;
    outlined destroy of Parser(&v73);
    v30 = v94;
    a1[6] = v93;
    a1[7] = v30;
    a1[8] = v95[0];
    *(a1 + 137) = *(v95 + 9);
    v31 = v90;
    a1[2] = v89;
    a1[3] = v31;
    v32 = v92;
    a1[4] = v91;
    a1[5] = v32;
    v33 = v88;
    *a1 = v87;
    a1[1] = v33;
    AST.root.modify();
    return;
  }

  v25 = *&v104[16];
  v26 = v104[24];
  v79 = v93;
  v80 = v94;
  v81[0] = v95[0];
  *(v81 + 9) = *(v95 + 9);
  v75 = v89;
  v76 = v90;
  v77 = v91;
  v78 = v92;
  v73 = v87;
  v74 = v88;
  outlined destroy of AST.Atom.Callout.OnigurumaTag?(&v73, &unk_1F402C238, &cache variable for noncanonical specialized generic type metadata for AST.Atom.Callout?);
  v27 = *(v2 + 80);
  v28 = *(v2 + 48);
  v84 = *(v2 + 32);
  v85 = v28;
  v86[0] = *(v2 + 64);
  *(v86 + 9) = *(v2 + 73);
  v29 = *(v2 + 16);
  v82 = *v2;
  v83 = v29;

  outlined destroy of Parser(&v82);
  if (v26 == 1)
  {

LABEL_46:
    v49 = v99;
    *(v2 + 32) = v98;
    *(v2 + 48) = v49;
    *(v2 + 64) = v100;
    v50 = v97;
    *v2 = v96;
    *(v2 + 16) = v50;
    *(v2 + 80) = v6;
    *(v2 + 88) = v7;
    *(a1 + 137) = *&v113[9];
    v51 = *v113;
    a1[7] = v112;
    a1[8] = v51;
    v52 = v111;
    a1[5] = v110;
    a1[6] = v52;
    v53 = v109;
    a1[3] = v108;
    a1[4] = v53;
    v54 = v107;
    a1[1] = v106;
    a1[2] = v54;
    *a1 = v105;
    return;
  }

  v64 = v6;
  v34 = *(v25 + 2);
  v35 = *(v27 + 16);
  if (v35 >= v34)
  {
    v36 = *(v25 + 2);
  }

  else
  {
    v36 = *(v27 + 16);
  }

  if (v34)
  {
    v37 = v36;
  }

  else
  {
    v37 = 0;
  }

  if (v37 == v35)
  {
    swift_unknownObjectRelease();
    v6 = v64;
    goto LABEL_46;
  }

  if (v37 < v35)
  {

    v38 = ~v37 + v35;
    v39 = 80 * v37 + 32;
    v6 = v64;
    while (1)
    {
      v69 = *(v27 + v39);
      v40 = *(v27 + v39 + 16);
      v41 = *(v27 + v39 + 32);
      v42 = *(v27 + v39 + 48);
      *(v72 + 9) = *(v27 + v39 + 57);
      v71 = v41;
      v72[0] = v42;
      v70 = v40;
      if (!v69)
      {
        outlined init with copy of Diagnostic(&v69, &v65);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v25 + 2) + 1, 1, v25);
        }

        v44 = *(v25 + 2);
        v43 = *(v25 + 3);
        if (v44 >= v43 >> 1)
        {
          v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1, v25);
        }

        *(v25 + 2) = v44 + 1;
        v45 = &v25[80 * v44];
        *(v45 + 2) = v69;
        v46 = v70;
        v47 = v71;
        v48 = v72[0];
        *(v45 + 89) = *(v72 + 9);
        *(v45 + 4) = v47;
        *(v45 + 5) = v48;
        *(v45 + 3) = v46;
        v6 = v25;
      }

      if (!v38)
      {
        break;
      }

      --v38;
      v39 += 80;
    }

    swift_unknownObjectRelease();

    goto LABEL_46;
  }

LABEL_50:
  __break(1u);
}

uint64_t Parser.lexBacktrackingDirective()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  *&v85[9] = *(v1 + 73);
  v4 = v1[3];
  v83 = v1[2];
  v84 = v4;
  *v85 = v1[4];
  v5 = v1[1];
  v82[0] = *v1;
  v82[1] = v5;
  v79 = v83;
  v80 = v4;
  v81 = *v85;
  v77 = v82[0];
  v78 = v5;
  v6 = *&v85[16];
  v7 = v85[24];
  outlined init with copy of Parser(v82, &v98);
  if (specialized Parser.tryEat<A>(sequence:)(10792, 0xE200000000000000))
  {
    v8 = *(v1 + 2);
    result = specialized Parser.tryEat<A>(sequence:)(0x545045434341, 0xE600000000000000);
    v66 = v7;
    if (result)
    {
      v10 = 0;
      v11 = 0;
      goto LABEL_7;
    }

    result = specialized Parser.tryEat<A>(sequence:)(1279869254, 0xE400000000000000);
    if (result & 1) != 0 || (v12._countAndFlagsBits = 70, v12._object = 0xE100000000000000, result = Parser.tryEat(_:)(v12), (result))
    {
      v10 = 0;
      v11 = 1;
      goto LABEL_7;
    }

    result = specialized Parser.tryEat<A>(sequence:)(1263681869, 0xE400000000000000);
    if (result)
    {
      goto LABEL_26;
    }

    v32 = v1[1];
    v98 = *v1;
    v99 = v32;
    v33 = v1[3];
    v100 = v1[2];
    v101 = v33;
    *v102 = v1[4];
    *&v102[9] = *(v1 + 73);
    outlined init with copy of Parser(&v98, &v94);
    v34 = String.subscript.getter();
    if ((v34 ^ v35) >> 14)
    {
      v36 = Substring.subscript.getter();
      v38 = v37;

      outlined destroy of Parser(&v98);
      if (v36 == 58 && v38 == 0xE100000000000000)
      {

        v10 = 1;
        v11 = 2;
        goto LABEL_7;
      }

      v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v39)
      {
LABEL_26:
        v10 = 1;
        v11 = 2;
        goto LABEL_7;
      }
    }

    else
    {

      outlined destroy of Parser(&v98);
    }

    result = specialized Parser.tryEat<A>(sequence:)(0x54494D4D4F43, 0xE600000000000000);
    if (result)
    {
      v10 = 0;
      v11 = 3;
      goto LABEL_7;
    }

    result = specialized Parser.tryEat<A>(sequence:)(0x454E555250, 0xE500000000000000);
    if (result)
    {
      v10 = 0;
      v11 = 4;
      goto LABEL_7;
    }

    result = specialized Parser.tryEat<A>(sequence:)(1346980691, 0xE400000000000000);
    if (result)
    {
      v10 = 0;
      v11 = 5;
      goto LABEL_7;
    }

    result = specialized Parser.tryEat<A>(sequence:)(1313163348, 0xE400000000000000);
    if (result)
    {
      v10 = 0;
      v11 = 6;
LABEL_7:
      if (*(v2 + 2) >> 14 < v8 >> 14)
      {
        __break(1u);
      }

      else
      {
        v71 = *(v2 + 2);
        v13._countAndFlagsBits = 58;
        v13._object = 0xE100000000000000;
        v64 = v6;
        if (!Parser.tryEat(_:)(v13))
        {
          v68 = 0;
          v70 = 0;
          v18 = 0;
          v20 = 0;
LABEL_16:
          v21._countAndFlagsBits = 41;
          v21._object = 0xE100000000000000;
          if (!Parser.tryEat(_:)(v21))
          {
            v90 = xmmword_1C0C7E3A0;
            v91 = 0;
            v92 = 0;
            v93 = 3;
            *&v98 = *(v2 + 2);
            *(&v98 + 1) = v98;
            Diagnostics.error(_:at:)(&v90, &v98);
          }

          v22 = v10 ^ 1;
          if (v18)
          {
            v22 = 1;
          }

          if ((v22 & 1) == 0)
          {
            v23 = String.subscript.getter();
            v24 = MEMORY[0x1C68E0B20](v23);
            v26 = v25;

            *&v86 = v24;
            *(&v86 + 1) = v26;
            v87 = 0;
            v88 = 0;
            v89 = 13;
            *&v98 = v8;
            *(&v98 + 1) = v71;
            Diagnostics.error(_:at:)(&v86, &v98);

            v27 = v20;
LABEL_24:
            v100 = v79;
            v101 = v80;
            *v102 = v81;
            v98 = v77;
            v99 = v78;
            *&v102[16] = v64;
            v102[24] = v66;
            result = outlined destroy of Parser(&v98);
            *a1 = v11;
            *(a1 + 8) = v8;
            *(a1 + 16) = v71;
            *(a1 + 24) = v68;
            *(a1 + 32) = v18;
            *(a1 + 40) = v27;
LABEL_65:
            *(a1 + 48) = v70;
            return result;
          }

          v27 = v20;
          if (v18 != 1)
          {
            goto LABEL_24;
          }

          v28 = v11;
          v7 = v66;
          v30 = v70;
          v29 = v71;
          v6 = v64;
          v31 = v68;
          goto LABEL_43;
        }

        v14._countAndFlagsBits = 41;
        v14._object = 0xE100000000000000;
        v15 = String.init(repeating:count:)(v14, 1);
        v16 = *(v2 + 2);
        result = specialized Parser.lexUntil(_:)(v2, v15._countAndFlagsBits, v15._object, 41, 0xE100000000000000, 0, &v98);
        v17 = *(v2 + 2);
        if (v17 >> 14 >= v16 >> 14)
        {
          v18 = *(&v98 + 1);
          v19 = HIBYTE(*(&v98 + 1)) & 0xFLL;
          v68 = v98;
          v70 = *(v2 + 2);
          if ((*(&v98 + 1) & 0x2000000000000000) == 0)
          {
            v19 = v98 & 0xFFFFFFFFFFFFLL;
          }

          if (v19)
          {
            v20 = v16;
          }

          else
          {
            v73 = 1uLL;
            v74 = 0;
            v75 = 0;
            v76 = 36;
            v20 = v16;
            *&v98 = v16;
            *(&v98 + 1) = v17;
            Diagnostics.error(_:at:)(&v73, &v98);
          }

          goto LABEL_16;
        }
      }

      __break(1u);
      goto LABEL_68;
    }
  }

  v31 = 0;
  v30 = 0;
  v27 = 0;
  v29 = 0;
  v8 = 0;
  v28 = 0;
LABEL_43:
  v40 = *&v85[16];
  v41 = v85[24];
  v70 = v30;
  v72 = v29;
  v69 = v31;
  v65 = v27;
  outlined consume of AST.Atom.BacktrackingDirective?(v28, v8, v29, v31, 1);
  v42 = *(v2 + 10);
  v43 = v2[3];
  v100 = v2[2];
  v101 = v43;
  *v102 = v2[4];
  *&v102[9] = *(v2 + 73);
  v44 = v2[1];
  v98 = *v2;
  v99 = v44;

  result = outlined destroy of Parser(&v98);
  if (v41 == 1)
  {

LABEL_64:
    v61 = v80;
    v2[2] = v79;
    v2[3] = v61;
    v2[4] = v81;
    v62 = v78;
    *v2 = v77;
    v2[1] = v62;
    *(v2 + 10) = v6;
    *(v2 + 88) = v7;
    *a1 = v28;
    *(a1 + 8) = v8;
    *(a1 + 16) = v72;
    *(a1 + 24) = v69;
    *(a1 + 32) = 1;
    *(a1 + 40) = v65;
    goto LABEL_65;
  }

  v45 = v6;
  v46 = *(v40 + 2);
  v47 = *(v42 + 16);
  if (v47 >= v46)
  {
    v48 = *(v40 + 2);
  }

  else
  {
    v48 = *(v42 + 16);
  }

  if (v46)
  {
    v49 = v48;
  }

  else
  {
    v49 = 0;
  }

  if (v49 == v47)
  {
    result = swift_unknownObjectRelease();
    v6 = v45;
    goto LABEL_64;
  }

  v63 = v28;
  v67 = v7;
  if (v49 < v47)
  {

    v50 = ~v49 + v47;
    v51 = 80 * v49 + 32;
    v6 = v45;
    while (1)
    {
      v94 = *(v42 + v51);
      v52 = *(v42 + v51 + 16);
      v53 = *(v42 + v51 + 32);
      v54 = *(v42 + v51 + 48);
      *(v97 + 9) = *(v42 + v51 + 57);
      v96 = v53;
      v97[0] = v54;
      v95 = v52;
      if (!v94)
      {
        outlined init with copy of Diagnostic(&v94, &v73);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v40 + 2) + 1, 1, v40);
        }

        v56 = *(v40 + 2);
        v55 = *(v40 + 3);
        if (v56 >= v55 >> 1)
        {
          v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), v56 + 1, 1, v40);
        }

        *(v40 + 2) = v56 + 1;
        v57 = &v40[80 * v56];
        *(v57 + 2) = v94;
        v58 = v95;
        v59 = v96;
        v60 = v97[0];
        *(v57 + 89) = *(v97 + 9);
        *(v57 + 4) = v59;
        *(v57 + 5) = v60;
        *(v57 + 3) = v58;
        v6 = v40;
      }

      if (!v50)
      {
        break;
      }

      --v50;
      v51 += 80;
    }

    swift_unknownObjectRelease();

    v7 = v67;
    v28 = v63;
    goto LABEL_64;
  }

LABEL_68:
  __break(1u);
  return result;
}

uint64_t Parser.expectGroupLikeAtom()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV4KindOGSgMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV4KindOGSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v75 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV4KindOGMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV4KindOGMR);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v75 - v9;
  Parser.lexGroupLikeReference()(v6);
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    outlined init with take of Source.Located<AST.Atom.Kind>?(v6, v10, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV4KindOGMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV4KindOGMR);
    return outlined init with take of AST.Atom.Kind(v10, a1, type metadata accessor for AST.Atom.Kind);
  }

  outlined destroy of _ASTParent?(v6, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV4KindOGSgMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV4KindOGSgMR);
  Parser.lexChangeMatchingOptionAtom()(v114);
  v11 = *(&v114[1] + 1);
  v127 = *&v114[1];
  v124 = v115[0];
  v125 = v115[1];
  v126 = v114[0];
  if (*(&v114[1] + 1))
  {
    v12 = v125;
    *a1 = v126;
    *(a1 + 16) = v127;
    *(a1 + 24) = v11;
    *(a1 + 32) = v124;
    *(a1 + 48) = v12;
    type metadata accessor for AST.Atom.Kind(0);
    return swift_storeEnumTagMultiPayload();
  }

  Parser.lexBacktrackingDirective()(v114);
  v14 = *&v115[0];
  if (*&v115[0] != 1)
  {
    v23 = *(&v114[1] + 1);
    v24 = *(v114 + 8);
    v25 = *(v115 + 8);
    *a1 = v114[0];
    *(a1 + 8) = v24;
    *(a1 + 24) = v23;
    *(a1 + 32) = v14;
    *(a1 + 40) = v25;
    type metadata accessor for AST.Atom.Kind(0);
    return swift_storeEnumTagMultiPayload();
  }

  Parser.lexGlobalMatchingOption()(&v121);
  if (v121.i64[1] >> 1 != 0xFFFFFFFF)
  {
    v27 = v122;
    v26 = v123;
    v28 = String.subscript.getter();
    v29 = MEMORY[0x1C68E0B20](v28);
    v31 = v30;

    *&v114[0] = v29;
    *(&v114[0] + 1) = v31;
    v114[1] = 0uLL;
    LOBYTE(v115[0]) = 8;
    *&v112[0] = v27;
    *(&v112[0] + 1) = v26;
    Diagnostics.error(_:at:)(v114, v112);
LABEL_17:

    goto LABEL_18;
  }

  Parser.lexPCRECallout()(v112);
  v118 = v112[6];
  v119 = v112[7];
  v120[0] = v113[0];
  *(v120 + 9) = *(v113 + 9);
  v115[0] = v112[2];
  v115[1] = v112[3];
  v116 = v112[4];
  v117 = v112[5];
  v114[0] = v112[0];
  v114[1] = v112[1];
  if (_s12_RegexParser3ASTV4AtomV7CalloutOSgWOg(v114) != 1)
  {
    v32 = v119;
    *(a1 + 96) = v118;
    *(a1 + 112) = v32;
    *(a1 + 128) = v120[0];
    *(a1 + 137) = *(v120 + 9);
    v33 = v115[1];
    *(a1 + 32) = v115[0];
    *(a1 + 48) = v33;
    v34 = v117;
    *(a1 + 64) = v116;
    *(a1 + 80) = v34;
    v35 = v114[0];
    v36 = v114[1];
LABEL_22:
    *a1 = v35;
    *(a1 + 16) = v36;
    type metadata accessor for AST.Atom.Kind(0);
    return swift_storeEnumTagMultiPayload();
  }

  Parser.lexOnigurumaNamedCallout()(v101);
  v109 = v101[6];
  v110 = v101[7];
  v111[0] = v102[0];
  *(v111 + 9) = *(v102 + 9);
  v105 = v101[2];
  v106 = v101[3];
  v107 = v101[4];
  v108 = v101[5];
  v103 = v101[0];
  v104 = v101[1];
  if (_s12_RegexParser3ASTV4AtomV7CalloutOSgWOg(&v103) != 1)
  {
    v37 = v110;
    *(a1 + 96) = v109;
    *(a1 + 112) = v37;
    *(a1 + 128) = v111[0];
    *(a1 + 137) = *(v111 + 9);
    v38 = v106;
    *(a1 + 32) = v105;
    *(a1 + 48) = v38;
    v39 = v108;
    *(a1 + 64) = v107;
    *(a1 + 80) = v39;
    v35 = v103;
    v36 = v104;
    goto LABEL_22;
  }

  Parser.lexOnigurumaCalloutOfContents()(v90);
  v98 = v90[6];
  v99 = v90[7];
  v100[0] = v91[0];
  *(v100 + 9) = *(v91 + 9);
  v94 = v90[2];
  v95 = v90[3];
  v96 = v90[4];
  v97 = v90[5];
  v92 = v90[0];
  v93 = v90[1];
  if (_s12_RegexParser3ASTV4AtomV7CalloutOSgWOg(&v92) != 1)
  {
    v40 = v99;
    *(a1 + 96) = v98;
    *(a1 + 112) = v40;
    *(a1 + 128) = v100[0];
    *(a1 + 137) = *(v100 + 9);
    v41 = v95;
    *(a1 + 32) = v94;
    *(a1 + 48) = v41;
    v42 = v97;
    *(a1 + 64) = v96;
    *(a1 + 80) = v42;
    v35 = v92;
    v36 = v93;
    goto LABEL_22;
  }

  v15._countAndFlagsBits = 40;
  v15._object = 0xE100000000000000;
  if (!Parser.tryEat(_:)(v15))
  {
    v128 = xmmword_1C0C7E3F0;
    v129 = 0;
    v130 = 0;
    v131 = 3;
    *&v84 = *(v1 + 16);
    *(&v84 + 1) = v84;
    Diagnostics.error(_:at:)(&v128, &v84);
  }

  *&v89 = 0;
  *(&v89 + 1) = 0xE000000000000000;
  v16 = *(v1 + 16);
  v17 = String.subscript.getter();
  v19 = v18;

  v20 = v16;
  if ((v17 ^ v19) < 0x4000)
  {
    goto LABEL_48;
  }

  specialized Parser.tryEat<A>(anyOf:)(&outlined read-only object #0 of closure #1 in Parser.expectGroupLikeAtom());
  v22 = v21;
  swift_arrayDestroy();
  if (v22)
  {

    v20 = v16;
    goto LABEL_48;
  }

  v76 = "Unhandled termination condition";
  v77 = 0;
  v75 = v16;
  v20 = v16;
  while (1)
  {
    while (1)
    {
      v43 = *(v2 + 16);
      v84 = *v2;
      v85 = v43;
      v44 = *(v2 + 48);
      v86 = *(v2 + 32);
      v87 = v44;
      v88[0] = *(v2 + 64);
      *(v88 + 9) = *(v2 + 73);
      v45 = v85;
      outlined init with copy of Parser(&v84, &v81);
      v46 = String.subscript.getter();
      if (!((v46 ^ v47) >> 14))
      {

        result = outlined destroy of Parser(&v84);
        goto LABEL_47;
      }

      v78 = Substring.subscript.getter();
      v79 = v48;

      outlined destroy of Parser(&v84);
      String.subscript.getter();
      v20 = Substring.index(_:offsetBy:limitedBy:)();
      v50 = v49;

      if (v50)
      {
        v51 = *&v88[1];
        v52 = BYTE8(v88[1]);
        strcpy(v80, "UNREACHABLE: ");
        HIWORD(v80[1]) = -4864;
        MEMORY[0x1C68E0BF0](0xD000000000000015, v76 | 0x8000000000000000);
        LOBYTE(v81) = 0;
        *(&v81 + 1) = v80[0];
        *&v82 = v80[1];
        *(&v82 + 1) = v45;
        *&v83[0] = v45;
        *(v83 + 8) = 0u;
        *(&v83[1] + 8) = 0u;
        BYTE8(v83[2]) = -1;
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
          v57 = v83[0];
          v58 = v83[1];
          *(v55 + 89) = *(&v83[1] + 9);
          *(v55 + 4) = v57;
          *(v55 + 5) = v58;
          *(v55 + 3) = v56;
          *(v2 + 80) = v51;
        }

        String.subscript.getter();
        v59 = Substring.distance(from:to:)();

        if (v59 < 1 || (String.subscript.getter(), v20 = Substring.index(_:offsetBy:limitedBy:)(), v61 = v60, result = , (v61 & 1) != 0))
        {
          v20 = v45;
          goto LABEL_42;
        }

        if (*(&v45 + 1) >> 14 < v20 >> 14)
        {
          goto LABEL_56;
        }
      }

      else if (*(&v45 + 1) >> 14 < v20 >> 14)
      {
        __break(1u);
        goto LABEL_55;
      }

      *(v2 + 16) = v20;
      *(v2 + 24) = *(&v45 + 1);
LABEL_42:
      MEMORY[0x1C68E0BE0](v78, v79);

      v62 = String.subscript.getter();
      v64 = v63;

      if ((v62 ^ v64) < 0x4000)
      {
        goto LABEL_47;
      }

      v65 = *(v2 + 16);
      v81 = *v2;
      v82 = v65;
      v66 = *(v2 + 48);
      v83[0] = *(v2 + 32);
      v83[1] = v66;
      v83[2] = *(v2 + 64);
      *(&v83[2] + 9) = *(v2 + 73);
      outlined init with copy of Parser(&v81, v80);
      v67 = String.subscript.getter();
      if ((v67 ^ v68) >> 14)
      {
        break;
      }

      outlined destroy of Parser(&v81);
    }

    v69 = Substring.subscript.getter();
    v71 = v70;

    v72 = outlined destroy of Parser(&v81);
    v80[0] = v69;
    v80[1] = v71;
    MEMORY[0x1EEE9AC00](v72);
    *(&v75 - 2) = v80;
    v73 = v77;
    if (specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, (&v75 - 4), &outlined read-only object #0 of Parser.expectGroupLikeAtom()))
    {
      break;
    }

    v77 = v73;
  }

  Parser.advance(_:)(1);
  swift_arrayDestroy();

LABEL_47:
  v16 = v75;
LABEL_48:
  if (v20 >> 14 < v16 >> 14)
  {
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    return result;
  }

  v74 = HIBYTE(*(&v89 + 1)) & 0xFLL;
  if ((*(&v89 + 1) & 0x2000000000000000) == 0)
  {
    v74 = v89 & 0xFFFFFFFFFFFFLL;
  }

  if (!v74)
  {
    v84 = xmmword_1C0C7E3A0;
    v85 = 0uLL;
    LOBYTE(v86) = 3;
    *&v81 = v16;
    *(&v81 + 1) = v20;
    Diagnostics.error(_:at:)(&v84, &v81);
    goto LABEL_17;
  }

  v84 = v89;
  v85 = 0uLL;
  LOBYTE(v86) = 14;
  *&v81 = v16;
  *(&v81 + 1) = v20;

  Diagnostics.error(_:at:)(&v84, &v81);
  swift_bridgeObjectRelease_n();
LABEL_18:
  type metadata accessor for AST.Atom.Kind(0);
  return swift_storeEnumTagMultiPayload();
}

double Parser.lexGlobalMatchingOption()@<D0>(int64x2_t *a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + 16);
  v5 = v64;
  v6 = *(v1 + 48);
  v7 = *(v1 + 64);
  v8 = *(v1 + 16);
  v65 = *(v1 + 32);
  v66 = v6;
  *v67 = v7;
  *&v67[9] = *(v1 + 73);
  v64[0] = *v1;
  v64[1] = v8;
  v62 = v6;
  v63 = v7;
  v59 = v64[0];
  v60 = v8;
  v61 = v65;
  v9 = *&v67[16];
  v10 = v67[24];
  outlined init with copy of Parser(v64, &v54);
  if (specialized Parser.tryEat<A>(sequence:)(10792, 0xE200000000000000))
  {
    v11 = *(v1 + 16);
    if (specialized Parser.tryEat<A>(sequence:)(0x43594E415F525342, 0xEB00000000464C52))
    {
      LOBYTE(v12) = v10;
      v13 = 0;
      v14 = 0;
      v5 = 0x8000000000000000;
    }

    else if (specialized Parser.tryEat<A>(sequence:)(0x43494E555F525342, 0xEB0000000045444FLL))
    {
      LOBYTE(v12) = v10;
      v13 = 0;
      v5 = 0x8000000000000000;
      v14 = 1;
    }

    else if (specialized Parser.tryEat<A>(sequence:)(1179406915, 0xE400000000000000))
    {
      LOBYTE(v12) = v10;
      v13 = 0;
      v5 = 0x6000000000000000;
      v14 = 2;
    }

    else if (specialized Parser.tryEat<A>(sequence:)(21059, 0xE200000000000000))
    {
      LOBYTE(v12) = v10;
      v13 = 0;
      v14 = 0;
      v5 = 0x6000000000000000;
    }

    else if (specialized Parser.tryEat<A>(sequence:)(0x464C5243594E41, 0xE700000000000000))
    {
      LOBYTE(v12) = v10;
      v13 = 0;
      v5 = 0x6000000000000000;
      v14 = 3;
    }

    else if (specialized Parser.tryEat<A>(sequence:)(5852737, 0xE300000000000000))
    {
      LOBYTE(v12) = v10;
      v13 = 0;
      v5 = 0x6000000000000000;
      v14 = 4;
    }

    else if (specialized Parser.tryEat<A>(sequence:)(17996, 0xE200000000000000))
    {
      LOBYTE(v12) = v10;
      v13 = 0;
      v5 = 0x6000000000000000;
      v14 = 1;
    }

    else
    {
      if ((specialized Parser.tryEat<A>(sequence:)(5002574, 0xE300000000000000) & 1) == 0)
      {
        if (specialized Parser.tryEat<A>(sequence:)(0x45445F54494D494CLL, 0xEB00000000485450))
        {
          v39._countAndFlagsBits = 61;
          v39._object = 0xE100000000000000;
          if (!Parser.tryEat(_:)(v39))
          {
            v72 = xmmword_1C0C7E3B0;
            v73 = 0;
            v74 = 0;
            v75 = 3;
            *&v68[0] = *(v1 + 16);
            *(&v68[0] + 1) = *&v68[0];
            Diagnostics.error(_:at:)(&v72, v68);
          }

          Parser.lexNumber(_:)(1, v68);
          if ((v69 & 1) == 0)
          {
            v15 = v68[1];
            v14 = *&v68[0];
            v5 = BYTE8(v68[0]) & 1;
            goto LABEL_72;
          }

          LOBYTE(v12) = v10;
          v70[0] = xmmword_1C0C7E360;
          v70[1] = xmmword_1C0C7E3C0;
          v71 = 2;
          v13 = *(v1 + 16);
          *&v68[0] = v13;
          *(&v68[0] + 1) = v13;
          Diagnostics.error(_:at:)(v70, v68);
          v14 = 0;
          v5 = 1;
        }

        else if (specialized Parser.tryEat<A>(sequence:)(0x45485F54494D494CLL, 0xEA00000000005041))
        {
          v40._countAndFlagsBits = 61;
          v40._object = 0xE100000000000000;
          if (!Parser.tryEat(_:)(v40))
          {
            v46 = xmmword_1C0C7E3B0;
            v47 = 0;
            v48 = 0;
            v49 = 3;
            *&v68[0] = *(v1 + 16);
            *(&v68[0] + 1) = *&v68[0];
            Diagnostics.error(_:at:)(&v46, v68);
          }

          Parser.lexNumber(_:)(1, v68);
          if ((v69 & 1) == 0)
          {
            goto LABEL_66;
          }

          LOBYTE(v12) = v10;
          v76[0] = xmmword_1C0C7E360;
          v76[1] = xmmword_1C0C7E3C0;
          v77 = 2;
          v13 = *(v1 + 16);
          *&v68[0] = v13;
          *(&v68[0] + 1) = v13;
          Diagnostics.error(_:at:)(v76, v68);
          v14 = 0;
          v5 = 0x2000000000000001;
        }

        else if (specialized Parser.tryEat<A>(sequence:)(0x414D5F54494D494CLL, 0xEB00000000484354))
        {
          v41._countAndFlagsBits = 61;
          v41._object = 0xE100000000000000;
          if (!Parser.tryEat(_:)(v41))
          {
            v54 = xmmword_1C0C7E3B0;
            v55 = 0uLL;
            LOBYTE(v56) = 3;
            *&v68[0] = *(v1 + 16);
            *(&v68[0] + 1) = *&v68[0];
            Diagnostics.error(_:at:)(&v54, v68);
          }

          Parser.lexNumber(_:)(1, v68);
          if ((v69 & 1) == 0)
          {
            goto LABEL_70;
          }

          LOBYTE(v12) = v10;
          v50 = xmmword_1C0C7E360;
          v51 = xmmword_1C0C7E3C0;
          LOBYTE(v52) = 2;
          v13 = *(v1 + 16);
          *&v68[0] = v13;
          *(&v68[0] + 1) = v13;
          Diagnostics.error(_:at:)(&v50, v68);
          v14 = 0;
          v5 = 0x4000000000000001;
        }

        else
        {
          v5 = 0xD000000000000010;
          LOBYTE(v12) = v10;
          if (specialized Parser.tryEat<A>(sequence:)(0xD000000000000010, 0x80000001C0C86C70))
          {
            v13 = 0;
            v5 = 0xA000000000000000;
            v14 = 1;
          }

          else
          {
            if ((specialized Parser.tryEat<A>(sequence:)(0x5954504D45544F4ELL, 0xE800000000000000) & 1) == 0)
            {
              goto LABEL_77;
            }

            v13 = 0;
            v14 = 0;
            v5 = 0xA000000000000000;
          }
        }

        goto LABEL_19;
      }

      LOBYTE(v12) = v10;
      v13 = 0;
      v5 = 0x6000000000000000;
LABEL_18:
      v14 = 5;
    }

LABEL_19:
    v15 = vdupq_n_s64(v13);
    v10 = v12;
    while (1)
    {
      if (*(v2 + 16) >> 14 < v11 >> 14)
      {
        __break(1u);
LABEL_66:
        v15 = *(v5 + 120);
        v14 = *&v68[0];
        v42 = BYTE8(v68[0]);
        v43 = 0x2000000000000000;
      }

      else
      {
        if (v5 >> 1 == 0xFFFFFFFF)
        {
          goto LABEL_22;
        }

        v45 = v15;
        v56 = v61;
        v57 = v62;
        *v58 = v63;
        v54 = v59;
        v55 = v60;
        *&v58[16] = v9;
        v58[24] = v10;
        outlined destroy of Parser(&v54);
        v23._countAndFlagsBits = 41;
        v23._object = 0xE100000000000000;
        if (!Parser.tryEat(_:)(v23))
        {
          v50 = xmmword_1C0C7E3A0;
          v51 = 0uLL;
          LOBYTE(v52) = 3;
          *&v46 = *(v2 + 16);
          *(&v46 + 1) = v46;
          Diagnostics.error(_:at:)(&v50, &v46);
        }

        v24 = *(v2 + 16);
        result = *v45.i64;
        if (v24 >> 14 >= v4 >> 14)
        {
          a1->i64[0] = v14;
          a1->i64[1] = v5;
          a1[1] = v45;
          a1[2].i64[0] = v4;
          a1[2].i64[1] = v24;
          return result;
        }

        __break(1u);
LABEL_70:
        v15 = *(v5 + 120);
        v14 = *&v68[0];
        v42 = BYTE8(v68[0]);
        v43 = 0x4000000000000000;
      }

      v5 = v43 & 0xFFFFFFFFFFFFFFFELL | v42 & 1;
LABEL_72:
      if (v5 >> 1 == 0xFFFFFFFF)
      {
        goto LABEL_22;
      }
    }
  }

  while (1)
  {
LABEL_22:
    v11 = &v50;
    v4 = *&v67[16];
    v16 = v67[24];
    v17 = *(v2 + 80);
    v18 = *(v2 + 48);
    v56 = *(v2 + 32);
    v57 = v18;
    *v58 = *(v2 + 64);
    *&v58[9] = *(v2 + 73);
    v19 = *(v2 + 16);
    v54 = *v2;
    v55 = v19;

    outlined destroy of Parser(&v54);
    if (v16 == 1)
    {

      goto LABEL_48;
    }

    v44 = v10;
    v20 = *(v4 + 16);
    v12 = *(v17 + 16);
    if (v12 >= v20)
    {
      v21 = *(v4 + 16);
    }

    else
    {
      v21 = *(v17 + 16);
    }

    if (v20)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    if (v22 == v12)
    {
      swift_unknownObjectRelease();
      goto LABEL_47;
    }

    if (v22 < v12)
    {
      break;
    }

    __break(1u);
LABEL_77:
    if (specialized Parser.tryEat<A>(sequence:)(0x5F4F5455415F4F4ELL, 0xEF53534553534F50))
    {
      v13 = 0;
      v5 = 0xA000000000000000;
      v14 = 2;
      goto LABEL_19;
    }

    if (specialized Parser.tryEat<A>(sequence:)(v5 + 1, 0x80000001C0C86C50))
    {
      v13 = 0;
      v5 = 0xA000000000000000;
      v14 = 3;
      goto LABEL_19;
    }

    if (specialized Parser.tryEat<A>(sequence:)(0x54494A5F4F4ELL, 0xE600000000000000))
    {
      v13 = 0;
      v5 = 0xA000000000000000;
      v14 = 4;
      goto LABEL_19;
    }

    if (specialized Parser.tryEat<A>(sequence:)(0x54524154535F4F4ELL, 0xEC00000054504F5FLL))
    {
      v13 = 0;
      v5 = 0xA000000000000000;
      goto LABEL_18;
    }

    if (specialized Parser.tryEat<A>(sequence:)(4609109, 0xE300000000000000))
    {
      v13 = 0;
      v5 = 0xA000000000000000;
      v14 = 6;
      goto LABEL_19;
    }

    if (specialized Parser.tryEat<A>(sequence:)(5260117, 0xE300000000000000))
    {
      v13 = 0;
      v5 = 0xA000000000000000;
      v14 = 7;
      goto LABEL_19;
    }

    v10 = v12;
  }

  v26 = ~v22 + v12;
  for (i = 80 * v22 + 32; ; i += 80)
  {
    v50 = *(v17 + i);
    v28 = *(v17 + i + 16);
    v29 = *(v17 + i + 32);
    v30 = *(v17 + i + 48);
    *(v53 + 9) = *(v17 + i + 57);
    v52 = v29;
    v53[0] = v30;
    v51 = v28;
    if (!v50)
    {
      outlined init with copy of Diagnostic(&v50, &v46);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 16) + 1, 1, v4);
      }

      v32 = *(v4 + 16);
      v31 = *(v4 + 24);
      if (v32 >= v31 >> 1)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v4);
      }

      *(v4 + 16) = v32 + 1;
      v33 = (v4 + 80 * v32);
      *(v33 + 2) = v50;
      v34 = v51;
      v35 = v52;
      v36 = v53[0];
      *(v33 + 89) = *(v53 + 9);
      *(v33 + 4) = v35;
      *(v33 + 5) = v36;
      *(v33 + 3) = v34;
      v9 = v4;
    }

    if (!v26)
    {
      break;
    }

    --v26;
  }

  swift_unknownObjectRelease();

LABEL_47:
  v10 = v44;
LABEL_48:
  v37 = v62;
  *(v2 + 32) = v61;
  *(v2 + 48) = v37;
  *(v2 + 64) = v63;
  v38 = v60;
  *v2 = v59;
  *(v2 + 16) = v38;
  *(v2 + 80) = v9;
  *(v2 + 88) = v10;
  result = 0.0;
  *a1 = xmmword_1C0C7E370;
  a1[1] = 0u;
  a1[2] = 0u;
  return result;
}

uint64_t Parser.lexAtom()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v34 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV4KindOGMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV4KindOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v33 = &v33 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser3ASTV4AtomV4KindOSgMd, &_s12_RegexParser3ASTV4AtomV4KindOSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (&v33 - v7);
  v9 = type metadata accessor for AST.Atom.Kind(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV4KindOGSgMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV4KindOGSgMR);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v33 - v17;
  v19 = *(v2 + 16);
  closure #1 in Parser.lexAtom()(v2, *(v2 + 32), v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    outlined destroy of _ASTParent?(v8, &_s12_RegexParser3ASTV4AtomV4KindOSgMd, &_s12_RegexParser3ASTV4AtomV4KindOSgMR);
    v20 = 1;
  }

  else
  {
    outlined init with take of AST.Atom.Kind(v8, v12, type metadata accessor for AST.Atom.Kind);
    result = outlined init with take of AST.Atom.Kind(v12, v18, type metadata accessor for AST.Atom.Kind);
    v22 = *(v2 + 16);
    if (v22 >> 14 < v19 >> 14)
    {
      __break(1u);
      return result;
    }

    v20 = 0;
    v23 = &v18[*(v3 + 28)];
    *v23 = v19;
    *(v23 + 1) = v22;
  }

  (*(v4 + 56))(v18, v20, 1, v3);
  outlined init with take of Source.Located<AST.Atom.Kind>?(v18, v16, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV4KindOGSgMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV4KindOGSgMR);
  if ((*(v4 + 48))(v16, 1, v3) == 1)
  {
    outlined destroy of _ASTParent?(v16, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV4KindOGSgMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV4KindOGSgMR);
    v24 = type metadata accessor for AST.Atom(0);
    return (*(*(v24 - 8) + 56))(v34, 1, 1, v24);
  }

  else
  {
    v25 = v16;
    v26 = v33;
    outlined init with take of Source.Located<AST.Atom.Kind>?(v25, v33, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV4KindOGMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV4KindOGMR);
    v27 = v34;
    outlined init with copy of AST.CustomCharacterClass.Member(v26, v34, type metadata accessor for AST.Atom.Kind);
    v28 = (v26 + *(v3 + 28));
    v29 = *v28;
    v30 = v28[1];
    outlined destroy of _ASTParent?(v26, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV4KindOGMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV4KindOGMR);
    v31 = type metadata accessor for AST.Atom(0);
    v32 = (v27 + *(v31 + 20));
    *v32 = v29;
    v32[1] = v30;
    return (*(*(v31 - 8) + 56))(v27, 0, 1, v31);
  }
}

void closure #1 in Parser.lexAtom()(void *a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV4KindOGMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV4KindOGMR);
  MEMORY[0x1EEE9AC00](v6);
  v86 = (&v83 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV17CharacterPropertyVGSgMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV17CharacterPropertyVGSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v83 - v9;
  v11 = type metadata accessor for AST.Atom.CharacterProperty(0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = (&v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v83 - v15;
  v17 = String.subscript.getter();
  v19 = v18;

  if ((v17 ^ v19) >> 14)
  {
    v22 = a2;
    if (a2)
    {
      goto LABEL_11;
    }

    v84 = v6;
    v85 = a3;
    v23 = *(a1 + 1);
    v110 = *a1;
    v111 = v23;
    v24 = *(a1 + 3);
    v112 = *(a1 + 2);
    v113 = v24;
    v114[0] = *(a1 + 4);
    *(v114 + 9) = *(a1 + 73);
    outlined init with copy of Parser(&v110, &v96);
    v25 = String.subscript.getter();
    if ((v25 ^ v26) >> 14)
    {
      v43 = Substring.subscript.getter();
      v45 = v44;

      outlined destroy of Parser(&v110);
      if (v43 == 41 && v45 == 0xE100000000000000)
      {
        goto LABEL_27;
      }

      v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v46)
      {
        goto LABEL_28;
      }
    }

    else
    {

      outlined destroy of Parser(&v110);
    }

    v27 = *(a1 + 1);
    v96 = *a1;
    v97 = v27;
    v28 = *(a1 + 3);
    v98 = *(a1 + 2);
    v99 = v28;
    v100[0] = *(a1 + 4);
    *(v100 + 9) = *(a1 + 73);
    outlined init with copy of Parser(&v96, &v88);
    v29 = String.subscript.getter();
    if (!((v29 ^ v30) >> 14))
    {

      outlined destroy of Parser(&v96);
LABEL_10:
      v6 = v84;
      a3 = v85;
      v22 = a2;
LABEL_11:
      Parser.lexPOSIXCharacterProperty()(v10);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV17CharacterPropertyVGMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV17CharacterPropertyVGMR);
      if ((*(*(v31 - 8) + 48))(v10, 1, v31) != 1)
      {
        outlined init with copy of AST.CustomCharacterClass.Member(v10, v14, type metadata accessor for AST.Atom.CharacterProperty);
        outlined destroy of _ASTParent?(v10, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV17CharacterPropertyVGMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV17CharacterPropertyVGMR);
        outlined init with take of AST.Atom.Kind(v14, v16, type metadata accessor for AST.Atom.CharacterProperty);
        outlined init with take of AST.Atom.Kind(v16, a3, type metadata accessor for AST.Atom.CharacterProperty);
        v38 = type metadata accessor for AST.Atom.Kind(0);
LABEL_16:
        swift_storeEnumTagMultiPayload();
        v39 = *(*(v38 - 8) + 56);
        v40 = a3;
LABEL_17:
        v41 = 0;
        v42 = v38;
LABEL_40:
        v39(v40, v41, 1, v42);
        return;
      }

      outlined destroy of _ASTParent?(v10, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV17CharacterPropertyVGSgMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV17CharacterPropertyVGSgMR);
      v32 = v22;
      if ((v22 & 1) == 0)
      {
        v47 = *(a1 + 3);
        v119 = *(a1 + 2);
        v120 = v47;
        v121[0] = *(a1 + 4);
        v48 = v121[0];
        v49 = &v110;
        *(v121 + 9) = *(a1 + 73);
        v50 = *(a1 + 1);
        v117 = *a1;
        v118 = v50;
        *(v114 + 9) = *(v121 + 9);
        v112 = v119;
        v113 = v47;
        v114[0] = v48;
        v110 = v117;
        v111 = v50;
        outlined init with copy of Parser(&v117, &v96);
        closure #1 in Parser.shouldLexGroupLikeAtom()(&v110, &v88);
        v51 = *&v114[1];
        v52 = BYTE8(v114[1]);
        v122[2] = v112;
        v122[3] = v113;
        v123[0] = v114[0];
        *(v123 + 9) = *(v114 + 9);
        v122[0] = v110;
        v122[1] = v111;

        outlined destroy of Parser(v122);
        *&v96 = v51;
        BYTE8(v96) = v52;
        v129.diags._rawValue = &v96;
        Diagnostics.appendNewFatalErrors(from:)(v129);

        if (v88 == 1)
        {
          Parser.expectGroupLikeAtom()(a3);
          v42 = type metadata accessor for AST.Atom.Kind(0);
          v39 = *(*(v42 - 8) + 56);
          v40 = a3;
LABEL_24:
          v41 = 0;
          goto LABEL_40;
        }

        v63 = v118;
        v58 = a1;
        Parser.lexQuantifier()(&v103);
        if (*(&v103 + 1) >> 1 == 0xFFFFFFFFLL && *(&v105 + 1) < 2uLL)
        {
          v92 = v107;
          v93 = v108;
          v94 = v109;
          v88 = v103;
          v89 = v104;
          v90 = v105;
          v91 = v106;
          outlined destroy of _ASTParent?(&v88, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV14QuantificationV6AmountOG_AEy_AI4KindOGSayAG6TriviaVGtSgMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV14QuantificationV6AmountOG_AEy_AI4KindOGSayAG6TriviaVGtSgMR);
          _s12_RegexParser6SourceV7LocatedVy_AEy_AA3ASTV14QuantificationV6AmountOG_AEy_AI4KindOGSayAG6TriviaVGtGSgWOi0_(&v96);
          v114[0] = v100[0];
          v114[1] = v100[1];
          v115 = v101;
          v116 = v102;
          v110 = v96;
          v111 = v97;
          v112 = v98;
          v113 = v99;
        }

        else
        {
          v65 = a1[2];
          if (v65 >> 14 < v63 >> 14)
          {
            __break(1u);
            goto LABEL_96;
          }

          v114[0] = v107;
          v114[1] = v108;
          v115 = v109;
          v110 = v103;
          v111 = v104;
          v112 = v105;
          v113 = v106;
          *&v116 = v63;
          *(&v116 + 1) = v65;
          AST.root.modify();
        }

        v92 = v114[0];
        v93 = v114[1];
        v94 = v115;
        v95 = v116;
        v88 = v110;
        v89 = v111;
        v90 = v112;
        v91 = v113;
        v98 = v112;
        v99 = v113;
        v96 = v110;
        v97 = v111;
        v101 = v115;
        v102 = v116;
        v100[0] = v114[0];
        v100[1] = v114[1];
        if (_s12_RegexParser6SourceV7LocatedVy_AEy_AA3ASTV14QuantificationV6AmountOG_AEy_AI4KindOGSayAG6TriviaVGtGSgWOg(&v96) != 1)
        {
          v67 = *(&v102 + 1);
          v66 = v102;
          v68 = String.subscript.getter();
          v69 = MEMORY[0x1C68E0B20](v68);
          v70 = a3;
          v72 = v71;
          outlined destroy of _ASTParent?(&v88, &_s12_RegexParser6SourceV7LocatedVy_AEy_AA3ASTV14QuantificationV6AmountOG_AEy_AI4KindOGSayAG6TriviaVGtGSgMd, &_s12_RegexParser6SourceV7LocatedVy_AEy_AA3ASTV14QuantificationV6AmountOG_AEy_AI4KindOGSayAG6TriviaVGtGSgMR);

          *&v124 = v69;
          *(&v124 + 1) = v72;
          v125 = 0;
          v126 = 0;
          v127 = 12;
          v87 = __PAIR128__(v67, v66);
          Diagnostics.error(_:at:)(&v124, &v87);

          v38 = type metadata accessor for AST.Atom.Kind(0);
          swift_storeEnumTagMultiPayload();
          v39 = *(*(v38 - 8) + 56);
          v40 = v70;
          goto LABEL_17;
        }
      }

      v84 = v6;
      v14 = a3;
      v33 = *(a1 + 1);
      v110 = *a1;
      v111 = v33;
      v34 = *(a1 + 3);
      v35 = *(a1 + 4);
      v112 = *(a1 + 2);
      v113 = v34;
      v16 = a1[2];
      v114[0] = v35;
      *(v114 + 9) = *(a1 + 73);
      outlined init with copy of Parser(&v110, &v96);
      v36 = String.subscript.getter();
      if (!((v36 ^ v37) >> 14))
      {

        outlined destroy of Parser(&v110);
LABEL_38:
        v62._object = 0x80000001C0C87020;
        v62._countAndFlagsBits = 0xD000000000000017;
        Parser.unreachable(_:)(v62);
        v42 = type metadata accessor for AST.Atom.Kind(0);
        v39 = *(*(v42 - 8) + 56);
        v40 = a3;
        goto LABEL_39;
      }

      v56 = Substring.subscript.getter();
      v49 = v57;

      outlined destroy of Parser(&v110);
      Parser.advance(_:)(1);
      v58 = a1[2];
      if (v58 >> 14 < v16 >> 14)
      {
        __break(1u);
        goto LABEL_91;
      }

      if (!v49)
      {
        goto LABEL_38;
      }

      if (v56 == 41 && v49 == 0xE100000000000000 || ((v85 = v56, v73 = _stringCompareWithSmolCheck(_:_:expecting:)(), v85 == 124) ? (v74 = v49 == 0xE100000000000000) : (v74 = 0), (v56 = v85, !v74) ? (v75 = 0) : (v75 = 1), (v73 & 1) != 0 || (v75 & 1) != 0 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
        if (v32)
        {
LABEL_36:
          *a3 = v56;
          a3[1] = v49;
LABEL_37:
          v38 = type metadata accessor for AST.Atom.Kind(0);
          goto LABEL_16;
        }

        v59 = "d a group or group-like atom";
        v60 = 0xD00000000000001DLL;
      }

      else
      {
        if (v56 == 40 && v49 == 0xE100000000000000)
        {
          if (v32)
          {
            goto LABEL_68;
          }
        }

        else if (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v32)
        {
          if (v56 == 46 && v49 == 0xE100000000000000)
          {
            goto LABEL_69;
          }

LABEL_68:
          if (_stringCompareWithSmolCheck(_:_:expecting:)())
          {
LABEL_69:

            if ((v32 & 1) == 0)
            {
              goto LABEL_37;
            }

            v76 = 46;
            goto LABEL_76;
          }

          if (v56 == 94 && v49 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            if ((v32 & 1) == 0)
            {
              goto LABEL_37;
            }

            v76 = 94;
            goto LABEL_76;
          }

          if (v56 == 36 && v49 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            if ((v32 & 1) == 0)
            {
              goto LABEL_37;
            }

            v76 = 36;
LABEL_76:
            *a3 = v76;
            a3[1] = 0xE100000000000000;
            goto LABEL_37;
          }

          if (v56 == 92 && v49 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            closure #1 in Parser.expectEscaped()(a1, v86);
            v77 = a1[2];
            if (v58 >> 14 <= v77 >> 14)
            {
              v78 = v86;
              v79 = (v86 + *(v84 + 28));
              *v79 = v58;
              v79[1] = v77;
              outlined init with take of AST.Atom.Kind(v78, a3, type metadata accessor for AST.Atom.Kind);
              v42 = type metadata accessor for AST.Atom.Kind(0);
              v39 = *(*(v42 - 8) + 56);
              v40 = a3;
              goto LABEL_24;
            }

            __break(1u);
LABEL_114:
            __break(1u);
            return;
          }

LABEL_91:
          if (v85 == 93 && v49 == 0xE100000000000000)
          {
            v56 = 93;
LABEL_94:
            a3 = v14;
            goto LABEL_36;
          }

LABEL_96:
          if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            v80 = HIBYTE(v49) & 0xF;
            if ((v49 & 0x2000000000000000) == 0)
            {
              v80 = v85;
            }

            v81 = 7;
            if (((v49 >> 60) & ((v85 & 0x800000000000000) == 0)) != 0)
            {
              v81 = 11;
            }

            if (String.UnicodeScalarView.distance(from:to:)(0xFuLL, v81 | (v80 << 16), v85, v49) >= 2)
            {

              v82 = specialized Collection.first.getter(v85, v49);
              if ((v82 & 0x100000000) != 0)
              {
                goto LABEL_114;
              }

              if ((v82 & 0xFFFFFF80) == 0)
              {
                if (v85 == 2573 && v49 == 0xE200000000000000)
                {

                  v56 = 2573;
                  goto LABEL_94;
                }

                if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (Character.isLetter.getter() & 1) == 0 && (Character.isNumber.getter() & 1) == 0)
                {
                  v56 = v85;
                  *&v96 = v85;
                  *(&v96 + 1) = v49;
                  v97 = 0uLL;
                  LOBYTE(v98) = 11;
                  *&v88 = v16;
                  *(&v88 + 1) = v58;

                  Diagnostics.error(_:at:)(&v96, &v88);
                  swift_bridgeObjectRelease_n();
                  goto LABEL_94;
                }
              }
            }
          }

          a3 = v14;
          v56 = v85;
          goto LABEL_36;
        }

        v59 = "Unexpected end of input";
        v60 = 0xD00000000000002CLL;
      }

      v61 = v59 | 0x8000000000000000;
      Parser.unreachable(_:)(*&v60);
      goto LABEL_36;
    }

    v53 = Substring.subscript.getter();
    v55 = v54;

    outlined destroy of Parser(&v96);
    if (v53 != 124 || v55 != 0xE100000000000000)
    {
      v64 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v64 & 1) == 0)
      {
        goto LABEL_10;
      }

LABEL_28:
      v42 = type metadata accessor for AST.Atom.Kind(0);
      v39 = *(*(v42 - 8) + 56);
      v40 = v85;
LABEL_39:
      v41 = 1;
      goto LABEL_40;
    }

LABEL_27:

    goto LABEL_28;
  }

  v20 = type metadata accessor for AST.Atom.Kind(0);
  v21 = *(*(v20 - 8) + 56);

  v21(a3, 1, 1, v20);
}

unint64_t Character.isConfusable.getter(unint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1;
  }

  v5 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v5 = 11;
  }

  if (String.UnicodeScalarView.distance(from:to:)(0xFuLL, v5 | (v4 << 16), a1, a2) < 2)
  {
    goto LABEL_12;
  }

  result = specialized Collection.first.getter(a1, a2);
  if ((result & 0x100000000) == 0)
  {
    if ((result & 0xFFFFFF80) == 0 && (a1 != 2573 || a2 != 0xE200000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (Character.isLetter.getter() & 1) == 0)
    {
      v7 = Character.isNumber.getter() ^ 1;
      return v7 & 1;
    }

LABEL_12:
    v7 = 0;
    return v7 & 1;
  }

  __break(1u);
  return result;
}

_RegexParser::AST::GlobalMatchingOptionSequence_optional __swiftcall Parser.lexGlobalMatchingOptionSequence()()
{
  v1 = v0;
  Parser.lexGlobalMatchingOption()(&v16);
  v3 = v16.i64[1];
  v4 = MEMORY[0x1E69E7CC0];
  if (v16.i64[1] >> 1 != 0xFFFFFFFF)
  {
    v6 = v17;
    v5 = v18;
    do
    {
      v14 = v6;
      v15 = v5;
      v7 = v16.i64[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
      }

      v9 = *(v4 + 2);
      v8 = *(v4 + 3);
      v11 = v14;
      v10 = v15;
      if (v9 >= v8 >> 1)
      {
        v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v4);
        v11 = v14;
        v10 = v15;
        v4 = v13;
      }

      *(v4 + 2) = v9 + 1;
      v12 = &v4[48 * v9];
      *(v12 + 4) = v7;
      *(v12 + 5) = v3;
      *(v12 + 3) = v11;
      *(v12 + 4) = v10;
      Parser.lexGlobalMatchingOption()(&v16);
      v3 = v16.i64[1];
      v6 = v17;
      v5 = v18;
    }

    while (v16.i64[1] >> 1 != 0xFFFFFFFF);
  }

  if (!*(v4 + 2))
  {

    v4 = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t specialized Set.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t Parser.parse()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  Parser.lexGlobalMatchingOptionSequence()();
  v4 = v22;
  if (v22)
  {
    v5 = *(v22 + 16);
    v6 = v22 + 48 * v5 + 32;
    v7 = v5 + 1;
    while (--v7)
    {
      v8 = (v6 - 48);
      v9 = *(v6 - 40) >> 61;
      v6 -= 48;
      if (v9 == 3)
      {
        *(v1 + 72) = *v8;
        break;
      }
    }
  }

  Parser.parseNode()(&v22);
  v10 = v22;
  v11 = *(v1 + 16);
  v12 = String.subscript.getter();
  v14 = v13;

  if ((v12 ^ v14) < 0x4000)
  {
    goto LABEL_11;
  }

  v15._countAndFlagsBits = 41;
  v15._object = 0xE100000000000000;
  result = Parser.tryEat(_:)(v15);
  if ((result & 1) == 0)
  {
    v18._object = 0x80000001C0C86F00;
    v18._countAndFlagsBits = 0xD00000000000001FLL;
    Parser.unreachable(_:)(v18);
    goto LABEL_11;
  }

  v17 = *(v2 + 16);
  if (v17 >> 14 >= v11 >> 14)
  {
    v22 = 0xAuLL;
    v23 = 0;
    v24 = 0;
    v25 = 36;
    *&v21 = v11;
    *(&v21 + 1) = v17;
    Diagnostics.error(_:at:)(&v22, &v21);
LABEL_11:
    v19 = *(v2 + 80);
    v20 = *(v2 + 88);
    *a1 = v10;

    *(a1 + 8) = v4;
    *(a1 + 16) = v19;
    *(a1 + 24) = v20;
    return result;
  }

  __break(1u);
  return result;
}

void Parser.parseNode()(unint64_t *a1@<X8>)
{
  v3 = *(v1 + 56);
  v4 = v3 + 1;
  if (__OFADD__(v3, 1))
  {
    goto LABEL_29;
  }

  v5 = v1;
  *(v1 + 56) = v4;
  if (v4 > 63)
  {
    goto LABEL_7;
  }

  v6 = *(v1 + 16);
  v7 = String.subscript.getter();
  v9 = v8;

  if (!((v7 ^ v9) >> 14))
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v6;
    *(v10 + 24) = v6;
    *a1 = v10 | 0xB000000000000000;
    v11 = v4 - 1;
    if (!__OFSUB__(v4, 1))
    {
      goto LABEL_8;
    }

    __break(1u);
LABEL_7:
    v33 = 0x10uLL;
    v34 = 0;
    v35 = 0;
    v36 = 36;
    v12 = *(v5 + 16);
    *&v32 = v12;
    *(&v32 + 1) = v12;
    Diagnostics.error(_:at:)(&v33, &v32);
    *(v5 + 88) = 1;
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = v12;
    *a1 = v13 | 0xB000000000000000;
    v11 = v4 - 1;
LABEL_8:
    *(v5 + 56) = v11;
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12_RegexParser3ASTV4NodeOGMd, &_ss23_ContiguousArrayStorageCy12_RegexParser3ASTV4NodeOGMR);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1C0C7E2F0;
  Parser.parseConcatenation()((v14 + 32));
  v15 = *(v5 + 16);
  v16._countAndFlagsBits = 124;
  v16._object = 0xE100000000000000;
  v17 = Parser.tryEat(_:)(v16);
  v18 = MEMORY[0x1E69E7CC0];
  if (v17)
  {
    while (1)
    {
      v19 = *(v5 + 16);
      if (v19 >> 14 < v15 >> 14)
      {
        break;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v18 + 2) + 1, 1, v18);
      }

      v21 = *(v18 + 2);
      v20 = *(v18 + 3);
      if (v21 >= v20 >> 1)
      {
        v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v18);
      }

      *(v18 + 2) = v21 + 1;
      v22 = &v18[16 * v21];
      *(v22 + 4) = v15;
      *(v22 + 5) = v19;
      Parser.parseConcatenation()(&v33);
      v23 = v33;
      v25 = *(v14 + 16);
      v24 = *(v14 + 24);
      if (v25 >= v24 >> 1)
      {
        v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v14);
      }

      *(v14 + 16) = v25 + 1;
      *(v14 + 8 * v25 + 32) = v23;
      v15 = *(v5 + 16);
      v26._countAndFlagsBits = 124;
      v26._object = 0xE100000000000000;
      if (!Parser.tryEat(_:)(v26))
      {
        goto LABEL_18;
      }
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

LABEL_18:
  v27 = *(v14 + 16);
  if (v27 == 1)
  {

    if (!*(v14 + 16))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    *a1 = *(v14 + 32);

    v28 = *(v5 + 56);
    v29 = __OFSUB__(v28, 1);
    v11 = v28 - 1;
    if (!v29)
    {
      goto LABEL_8;
    }

    __break(1u);
  }

  v30 = swift_allocObject();
  if (!v27)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (*(v18 + 2) == v27 - 1)
  {
    *(v30 + 16) = v14;
    *(v30 + 24) = v18;
    *a1 = v30;
    v31 = *(v5 + 56);
    v29 = __OFSUB__(v31, 1);
    v11 = v31 - 1;
    if (!v29)
    {
      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_28;
  }

LABEL_32:
  __break(1u);
}

void Parser.parseConcatenation()(unint64_t *a1@<X8>)
{
  v108 = *(v1 + 16);
  v2 = String.subscript.getter();
  v4 = v3;

  if ((v2 ^ v4) >= 0x4000)
  {
    v5 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v7 = *(v1 + 16);
      v147[0] = *v1;
      v147[1] = v7;
      v8 = *(v1 + 48);
      v147[2] = *(v1 + 32);
      v147[3] = v8;
      v148[0] = *(v1 + 64);
      *(v148 + 9) = *(v1 + 73);
      outlined init with copy of Parser(v147, &v125);
      v9 = String.subscript.getter();
      if ((v9 ^ v10) >> 14)
      {
        v11 = Substring.subscript.getter();
        v13 = v12;

        outlined destroy of Parser(v147);
        if (v11 == 124 && v13 == 0xE100000000000000)
        {
LABEL_82:

LABEL_83:
          v6 = *(v5 + 2);
          if (!v6)
          {
            goto LABEL_89;
          }

LABEL_84:
          if (v6 == 1)
          {
            *a1 = *(v5 + 4);

            return;
          }

          v98 = swift_allocObject();
          v99 = *(v1 + 16);
          if (v99 >> 14 >= v108 >> 14)
          {
            *(v98 + 16) = v5;
            *(v98 + 24) = v108;
            *(v98 + 32) = v99;
            v100 = v98 | 0x1000000000000000;
            goto LABEL_91;
          }

LABEL_96:
          __break(1u);
LABEL_97:
          __break(1u);
LABEL_98:
          __break(1u);
LABEL_99:
          __break(1u);
          return;
        }

        v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v14)
        {
          goto LABEL_83;
        }
      }

      else
      {

        outlined destroy of Parser(v147);
      }

      v15 = *(v1 + 16);
      v142 = *v1;
      v143 = v15;
      v16 = *(v1 + 48);
      v144 = *(v1 + 32);
      v145 = v16;
      v146[0] = *(v1 + 64);
      *(v146 + 9) = *(v1 + 73);
      v17 = v143;
      outlined init with copy of Parser(&v142, &v125);
      v18 = String.subscript.getter();
      if ((v18 ^ v19) >> 14)
      {
        v20 = Substring.subscript.getter();
        v22 = v21;

        outlined destroy of Parser(&v142);
        if (v20 == 41 && v22 == 0xE100000000000000)
        {
          goto LABEL_82;
        }

        v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v23)
        {
          goto LABEL_83;
        }
      }

      else
      {

        outlined destroy of Parser(&v142);
      }

      closure #1 in Parser.lexComment()(v1, &v125);
      v24 = *(&v125 + 1);
      if (*(&v125 + 1))
      {
        break;
      }

      v110 = v5;
      if (*(v1 + 64))
      {
        v32 = *(v1 + 8);
        v33 = *(v1 + 16);
        v34 = *(v1 + 24);
        *&v125 = *v1;
        *(&v125 + 1) = v32;
        *&v126 = v33;
        *(&v126 + 1) = v34;

        v35 = specialized Source.peekPrefix(maxLength:_:)(0, 1, &v125);
        v37 = v36;
        v39 = v38;
        v41 = v40;

        if (v41)
        {
          v105 = v34;
          v107 = v39;
          v25 = v33;
          if (Substring.distance(from:to:)() >= 1)
          {
            String.subscript.getter();
            v42 = Substring.index(_:offsetBy:limitedBy:)();
            v44 = v43;

            v25 = v33;
            if ((v44 & 1) == 0)
            {
              if (v105 >> 14 < v42 >> 14)
              {
                goto LABEL_97;
              }

              *(v1 + 16) = v42;
              *(v1 + 24) = v105;
              v25 = v42;
            }
          }

          v26 = MEMORY[0x1C68E0B20](v35, v37, v107, v41);
          v24 = v45;

          if (v25 >> 14 < v33 >> 14)
          {
            goto LABEL_94;
          }

          if (v24)
          {
            v17 = v33;
            v5 = v110;
LABEL_18:
            v27 = swift_allocObject();
            *(v27 + 16) = v26;
            *(v27 + 24) = v24;
            *(v27 + 32) = v17;
            *(v27 + 40) = v25;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
            }

            v29 = *(v5 + 2);
            v28 = *(v5 + 3);
            v30 = v29 + 1;
            if (v29 >= v28 >> 1)
            {
              v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v5);
            }

            v31 = v27 | 0x6000000000000000;
            goto LABEL_56;
          }
        }
      }

      v46 = *(v1 + 16);
      closure #1 in Parser.lexQuote()(v1, &v125);
      v47 = *(&v125 + 1);
      if (*(&v125 + 1))
      {
        v48 = *(v1 + 16);
        v5 = v110;
        if (v48 >> 14 < v46 >> 14)
        {
          goto LABEL_93;
        }

        v49 = v125;
        v50 = swift_allocObject();
        *(v50 + 16) = v49;
        *(v50 + 24) = v47;
        *(v50 + 32) = v46;
        *(v50 + 40) = v48;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v110 + 2) + 1, 1, v110);
        }

        v29 = *(v5 + 2);
        v51 = *(v5 + 3);
        v30 = v29 + 1;
        if (v29 >= v51 >> 1)
        {
          v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v29 + 1, 1, v5);
        }

        v31 = v50 | 0x5000000000000000;
      }

      else
      {
        Parser.lexInterpolation()(&v125);
        v52 = *(&v125 + 1);
        v5 = v110;
        if (*(&v125 + 1))
        {
          v53 = v126;
          v54 = v125;
          v55 = swift_allocObject();
          *(v55 + 16) = v54;
          *(v55 + 24) = v52;
          *(v55 + 32) = v53;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v110 + 2) + 1, 1, v110);
          }

          v29 = *(v5 + 2);
          v56 = *(v5 + 3);
          v30 = v29 + 1;
          if (v29 >= v56 >> 1)
          {
            v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v56 > 1), v29 + 1, 1, v5);
          }

          v31 = v55 | 0x7000000000000000;
        }

        else
        {
          Parser.parseQuantifierOperand()(&v141);
          v57 = v141;
          if ((~v141 & 0xF000000000000007) == 0)
          {
            v101._object = 0x80000001C0C86F40;
            v101._countAndFlagsBits = 0xD000000000000023;
            Parser.unreachable(_:)(v101);
            v6 = *(v110 + 2);
            if (v6)
            {
              goto LABEL_84;
            }

            goto LABEL_89;
          }

          *&v140[9] = *(v1 + 73);
          v58 = *(v1 + 48);
          v138 = *(v1 + 32);
          v139 = v58;
          *v140 = *(v1 + 64);
          v59 = *(v1 + 16);
          v137[0] = *v1;
          v137[1] = v59;
          v134 = v138;
          v135 = v58;
          v136 = *v140;
          v132 = v137[0];
          v133 = v59;
          v60 = *&v140[16];
          v61 = v140[24];
          outlined init with copy of Parser(v137, &v116);
          closure #1 in Parser.lexQuantifier()(v1, &v125);
          v62 = *(&v125 + 1);
          v63 = *(&v127 + 1);
          if (*(&v125 + 1) >> 1 == 0xFFFFFFFFLL && *(&v127 + 1) <= 1uLL)
          {
            v64 = *&v140[16];
            v65 = v140[24];
            v120 = v129;
            v121 = v130;
            v122 = v131;
            v116 = v125;
            v117 = v126;
            v118 = v127;
            v119 = v128;
            outlined destroy of _ASTParent?(&v116, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV14QuantificationV6AmountOG_AEy_AI4KindOGSayAG6TriviaVGtSgMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV14QuantificationV6AmountOG_AEy_AI4KindOGSayAG6TriviaVGtSgMR);
            v66 = *(v1 + 80);
            v67 = *(v1 + 48);
            v123[2] = *(v1 + 32);
            v123[3] = v67;
            v124[0] = *(v1 + 64);
            *(v124 + 9) = *(v1 + 73);
            v68 = *(v1 + 16);
            v123[0] = *v1;
            v123[1] = v68;

            outlined destroy of Parser(v123);
            if (v65 == 1 || ((v79 = *(v64 + 2), v80 = *(v66 + 16), v80 >= v79) ? (v81 = *(v64 + 2)) : (v81 = *(v66 + 16)), v79 ? (v82 = v81) : (v82 = 0), v82 == v80))
            {
            }

            else
            {
              if (v82 >= v80)
              {
                goto LABEL_99;
              }

              v83 = ~v82 + v80;
              for (i = 80 * v82 + 32; ; i += 80)
              {
                v112 = *(v66 + i);
                v85 = *(v66 + i + 16);
                v86 = *(v66 + i + 32);
                v87 = *(v66 + i + 48);
                *(v115 + 9) = *(v66 + i + 57);
                v114 = v86;
                v115[0] = v87;
                v113 = v85;
                if (!v112)
                {
                  outlined init with copy of Diagnostic(&v112, v111);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v64 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v64 + 2) + 1, 1, v64);
                  }

                  v89 = *(v64 + 2);
                  v88 = *(v64 + 3);
                  if (v89 >= v88 >> 1)
                  {
                    v64 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v88 > 1), v89 + 1, 1, v64);
                  }

                  *(v64 + 2) = v89 + 1;
                  v90 = &v64[80 * v89];
                  *(v90 + 2) = v112;
                  v91 = v113;
                  v92 = v114;
                  v93 = v115[0];
                  *(v90 + 89) = *(v115 + 9);
                  *(v90 + 4) = v92;
                  *(v90 + 5) = v93;
                  *(v90 + 3) = v91;
                  v60 = v64;
                }

                if (!v83)
                {
                  break;
                }

                --v83;
              }

              swift_bridgeObjectRelease_n();
            }

            v94 = v135;
            *(v1 + 32) = v134;
            *(v1 + 48) = v94;
            *(v1 + 64) = v136;
            v95 = v133;
            *v1 = v132;
            *(v1 + 16) = v95;
            *(v1 + 80) = v60;
            *(v1 + 88) = v61;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v110 + 2) + 1, 1, v110);
            }

            v97 = *(v5 + 2);
            v96 = *(v5 + 3);
            if (v97 >= v96 >> 1)
            {
              v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v96 > 1), v97 + 1, 1, v5);
            }

            *(v5 + 2) = v97 + 1;
            *&v5[8 * v97 + 32] = v57;
            goto LABEL_57;
          }

          v118 = v134;
          v119 = v135;
          v120 = v136;
          v116 = v132;
          v117 = v133;
          *&v121 = v60;
          BYTE8(v121) = v61;
          outlined destroy of Parser(&v116);
          v69 = *(v1 + 16);
          if (v69 >> 14 < v17 >> 14)
          {
            goto LABEL_98;
          }

          v70 = *(&v130 + 1);
          v106 = v131;
          v71 = v130;
          v72 = v125;
          v73 = swift_allocObject();
          *(v73 + 16) = v72;
          *(v73 + 24) = v62;
          *(v73 + 32) = v126;
          *(v73 + 48) = v127;
          *(v73 + 56) = v63;
          v74 = v129;
          *(v73 + 64) = v128;
          *(v73 + 80) = v74;
          *(v73 + 96) = v71;
          *(v73 + 104) = v70;
          *(v73 + 112) = v106;
          *(v73 + 120) = v57;
          *(v73 + 128) = v17;
          *(v73 + 136) = v69;
          *(v73 + 144) = *(&v106 + 1);
          v5 = v110;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v110 + 2) + 1, 1, v110);
          }

          v29 = *(v5 + 2);
          v75 = *(v5 + 3);
          v30 = v29 + 1;
          if (v29 >= v75 >> 1)
          {
            v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v75 > 1), v29 + 1, 1, v5);
          }

          v31 = v73 | 0x4000000000000000;
        }
      }

LABEL_56:
      *(v5 + 2) = v30;
      *&v5[8 * v29 + 32] = v31;
LABEL_57:
      v76 = String.subscript.getter();
      v78 = v77;

      if ((v76 ^ v78) < 0x4000)
      {
        goto LABEL_83;
      }
    }

    v25 = *(v1 + 16);
    if (v25 >> 14 < v17 >> 14)
    {
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

    v26 = v125;
    goto LABEL_18;
  }

  v5 = MEMORY[0x1E69E7CC0];
  v6 = *(MEMORY[0x1E69E7CC0] + 16);
  if (v6)
  {
    goto LABEL_84;
  }

LABEL_89:
  v102 = swift_allocObject();
  v103 = *(v1 + 16);
  if (v103 >> 14 < v108 >> 14)
  {
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  v104 = v102;
  *(v102 + 16) = v108;
  *(v102 + 24) = v103;

  v100 = v104 | 0xB000000000000000;
LABEL_91:
  *a1 = v100;
}

void Parser.parseQuantifierOperand()(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for AST.Atom.Kind(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser3ASTV4AtomVSgMd, &_s12_RegexParser3ASTV4AtomVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v40 - v7;
  v9 = type metadata accessor for AST.Atom(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v1 + 16);
  Parser.lexKnownConditionalStart()(v72);
  v79 = v72[6];
  v80 = v72[7];
  v81 = v72[8];
  v75 = v72[2];
  v76 = v72[3];
  v77 = v72[4];
  v78 = v72[5];
  v73 = v72[0];
  v74 = v72[1];
  if (sub_1C0C7C864(&v73) != 1)
  {
    v65[1] = v79;
    v66 = v80;
    v67 = v81;
    v62 = v75;
    v63 = v76;
    v64 = v77;
    v65[0] = v78;
    v60 = v73;
    v61 = v74;
    Parser.parseConditionalBranches(start:_:)(v13, &v60, &v44);
    outlined destroy of AST.Atom.Callout.OnigurumaTag?(v72, &unk_1F402C2D8, &cache variable for noncanonical specialized generic type metadata for AST.Conditional.Condition?);
    v20 = v44;
LABEL_11:
    *a1 = v20;
    return;
  }

  v43 = v12;
  Parser.lexGroupConditionalStart()(v69);
  if (v70 != 0xFF)
  {
    v46 = v69[2];
    v47 = v69[3];
    v48 = v69[4];
    v44 = v69[0];
    v45 = v69[1];
    *(v49 + 8) = v71;
    *&v49[0] = v70;
    Parser.parseGroupBody(start:_:)(v71, &v44, &v60);
    outlined destroy of AST.Atom.Callout.OnigurumaTag?(v69, &unk_1F402C378, &cache variable for noncanonical specialized generic type metadata for Source.Located<AST.Group.Kind>?);
    v56 = v64;
    v57 = v65[0];
    v58 = v65[1];
    v52 = v60;
    v53 = v61;
    v54 = v62;
    v55 = v63;
    v21 = v66;
    v59 = v66;
    _s12_RegexParser3ASTV11ConditionalV9ConditionV4KindOWOi2_(&v52);
    v48 = v56;
    v49[0] = v57;
    v49[1] = v58;
    v50 = v59;
    v44 = v52;
    v45 = v53;
    v46 = v54;
    v47 = v55;
    v51 = v21;
    Parser.parseConditionalBranches(start:_:)(v13, &v44, &v68);
    v65[1] = v49[1];
    v66 = v50;
    v67 = v51;
    v62 = v46;
    v63 = v47;
    v64 = v48;
    v65[0] = v49[0];
    v60 = v44;
    v61 = v45;
    sub_1C0C61070(&v60);
    v20 = v68;
    goto LABEL_11;
  }

  v41 = v9;
  v42 = a1;
  v14 = *(v1 + 16);
  v15 = specialized Parser.tryEat<A>(sequence:)(2088648488, 0xE400000000000000);
  if (v15 & 1) != 0 || (specialized Parser.tryEat<A>(sequence:)(8273704, 0xE300000000000000))
  {
    v16 = *(v1 + 16);
    if (v16 >> 14 >= v14 >> 14)
    {
      v17 = swift_allocObject();
      LOBYTE(v60) = (v15 & 1) == 0;
      *(&v60 + 1) = v14;
      *&v61 = v16;
      Parser.parseAbsentFunctionBody(_:)(&v60, v17 + 16);
      v18 = 0xA000000000000000;
LABEL_7:
      v19 = v17 | v18;
LABEL_8:
      *v42 = v19;
      return;
    }

    __break(1u);
  }

  else
  {
    Parser.lexGroupStart()(&v60);
    v22 = *&v65[0];
    v23 = v41;
    if (LOBYTE(v65[0]) != 0xFF)
    {
      v25 = swift_allocObject();
      v46 = v62;
      v47 = v63;
      v48 = v64;
      v44 = v60;
      v45 = v61;
      *&v49[0] = v22;
      *(v49 + 8) = *(v65 + 8);
      Parser.parseGroupBody(start:_:)(v13, &v44, v25 + 16);
      outlined destroy of AST.Atom.Callout.OnigurumaTag?(&v60, &unk_1F402C378, &cache variable for noncanonical specialized generic type metadata for Source.Located<AST.Group.Kind>?);
      v19 = v25 | 0x2000000000000000;
      goto LABEL_8;
    }

    Parser.lexCustomCCStart()(&v44);
    v24 = v44;
    if (v44 != 2)
    {
      v27 = *(&v44 + 1);
      v26 = v45;
      v17 = swift_allocObject();
      LOBYTE(v44) = v24 & 1;
      *(&v44 + 1) = v27;
      *&v45 = v26;
      Parser.parseCustomCharacterClass(_:)(&v44, (v17 + 16));
      v18 = 0x9000000000000000;
      goto LABEL_7;
    }

    Parser.lexAtom()(v8);
    if ((*(v10 + 48))(v8, 1, v23) == 1)
    {
      outlined destroy of _ASTParent?(v8, &_s12_RegexParser3ASTV4AtomVSgMd, &_s12_RegexParser3ASTV4AtomVSgMR);
      v19 = 0xF000000000000007;
      goto LABEL_8;
    }

    v28 = v43;
    outlined init with take of AST.Atom.Kind(v8, v43, type metadata accessor for AST.Atom);
    outlined init with copy of AST.CustomCharacterClass.Member(v28, v5, type metadata accessor for AST.Atom.Kind);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v30 = v42;
    if (EnumCaseMultiPayload == 13)
    {
      v31 = v5[1];
      v44 = *v5;
      v45 = v31;
      v32 = v5[3];
      v46 = v5[2];
      v47 = v32;
      *&v52 = 128;
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
      *(&v40 - 16) = 3;
      mapOption #1 (_:_:) in Parser.applySyntaxOptions(of:isScoped:)(&v52, partial apply for closure #1 in mapOption #2 (_:_:) in Parser.applySyntaxOptions(of:isScoped:), (&v40 - 4), &v44, v1);
      if ((*(v1 + 64) & 0x40) != 0)
      {
        v33 = (*(&v47 + 1) + 32);
        v34 = *(*(&v47 + 1) + 16) + 1;
        while (--v34)
        {
          v35 = v33 + 24;
          v36 = *v33 & 0xFE;
          v33 += 24;
          if (v36 == 6)
          {
            v52 = 0xDuLL;
            v53 = 0uLL;
            LOBYTE(v54) = 36;
            v37 = *(v35 - 1);
            goto LABEL_29;
          }
        }

        if (v45)
        {
          goto LABEL_30;
        }

        v52 = 0xEuLL;
        v53 = 0uLL;
        LOBYTE(v54) = 36;
        v37 = v44;
LABEL_29:
        v68 = v37;
        Diagnostics.error(_:at:)(&v52, &v68);
      }

      else
      {
        *&v52 = 3;
        mapOption #1 (_:_:) in Parser.applySyntaxOptions(of:isScoped:)(&v52, specialized implicit closure #3 in Parser.applySyntaxOptions(of:isScoped:), 0, &v44, v1);
      }

LABEL_30:
      outlined destroy of AST.MatchingOptionSequence(&v44);
    }

    else
    {
      outlined destroy of AST.CustomCharacterClass.Member(v5, type metadata accessor for AST.Atom.Kind);
    }

    v38 = swift_allocBox();
    outlined init with take of AST.Atom.Kind(v43, v39, type metadata accessor for AST.Atom);
    *v30 = v38 | 0x8000000000000000;
  }
}

void Parser.parseConditionalBranches(start:_:)(unint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = a2[7];
  v52 = a2[6];
  v53 = v6;
  v54 = a2[8];
  v7 = a2[3];
  v48 = a2[2];
  v49 = v7;
  v8 = a2[5];
  v50 = a2[4];
  v51 = v8;
  v9 = a2[1];
  v46 = *a2;
  v47 = v9;
  Parser.parseNode()(&v35);
  v10 = v35;
  v11 = v35 >> 60;
  if (v35 >> 60)
  {
    v12 = swift_allocObject();
    v13 = 0;
    v14 = *(v3 + 16);
    *(v12 + 16) = v14;
    *(v12 + 24) = v14;
    v33 = v12 | 0xB000000000000000;
    v34 = 0;
    v15 = v10;
LABEL_10:
    v23._countAndFlagsBits = 41;
    v23._object = 0xE100000000000000;
    if (!Parser.tryEat(_:)(v23))
    {
      v38 = xmmword_1C0C7E3A0;
      v39 = 0;
      v40 = 0;
      v41 = 3;
      *&v35 = *(v3 + 16);
      *(&v35 + 1) = v35;
      Diagnostics.error(_:at:)(&v38, &v35);
    }

    v24 = swift_allocObject();
    v25 = *(v3 + 16);
    if (v25 >> 14 >= a1 >> 14)
    {
      *(v24 + 16) = a1;
      *(v24 + 24) = v25;
      v26 = v53;
      *(v24 + 128) = v52;
      *(v24 + 144) = v26;
      *(v24 + 160) = v54;
      v27 = v49;
      *(v24 + 64) = v48;
      *(v24 + 80) = v27;
      v28 = v51;
      *(v24 + 96) = v50;
      *(v24 + 112) = v28;
      v29 = v47;
      *(v24 + 32) = v46;
      *(v24 + 48) = v29;
      *(v24 + 176) = v15;
      *(v24 + 184) = v13;
      *(v24 + 192) = v34;
      *(v24 + 200) = v11 != 0;
      *(v24 + 208) = v33;
      *a3 = v24 | 0x3000000000000000;
      outlined init with copy of AST.Conditional.Condition(&v46, &v35);
      return;
    }

    __break(1u);
    goto LABEL_15;
  }

  v16 = *(v35 + 24);
  if (!v16[2])
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = *(v35 + 16);
  v18 = v17[2];
  if (!v18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v18 != 1)
  {
    v13 = v16[4];
    v15 = v17[4];
    v33 = v17[5];
    v34 = v16[5];
    if (v18 == 2)
    {
    }

    else
    {
      v42 = v17[2];
      v43 = 0;
      v44 = 0;
      v45 = 5;
      AST.Node._associatedValue.getter(&v35);
      v31 = a1;
      v32 = a3;
      v20 = v36;
      v19 = v37;
      __swift_project_boxed_opaque_existential_1Tm(&v35, v36);
      v30 = *(v19 + 16);

      v21 = v20;
      v22 = v19;
      a1 = v31;
      a3 = v32;
      v30(&v38, v21, v22);
      __swift_destroy_boxed_opaque_existential_1Tm(&v35);
      v35 = v38;
      Diagnostics.error(_:at:)(&v42, &v35);
    }

    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
}

uint64_t mapOption #1 (_:_:) in Parser.applySyntaxOptions(of:isScoped:)(uint64_t *a1, uint64_t (*a2)(_BYTE *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a1;
  if ((*(a4 + 16) & 1) == 0)
  {
    v10 = *(a5 + 64);
    if ((v10 & v9) != 0)
    {
      *(a5 + 64) = v10 & ~v9;
    }
  }

  if (specialized Sequence.contains(where:)(a2, a3, *(a4 + 24)))
  {
    v11 = *(a5 + 64);
    if ((v9 & ~v11) != 0)
    {
      *(a5 + 64) = v11 | v9;
    }
  }

  result = specialized Sequence.contains(where:)(a2, a3, *(a4 + 56));
  if (result)
  {
    v13 = *(a5 + 64);
    if ((v13 & v9) != 0)
    {
      *(a5 + 64) = v13 & ~v9;
    }
  }

  return result;
}

void Parser.parseGroupBody(start:_:)(unint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2[5];
  v55 = a2[4];
  v56 = v5;
  v57 = *(a2 + 12);
  v6 = a2[1];
  v51 = *a2;
  v52 = v6;
  v7 = a2[3];
  v53 = a2[2];
  v54 = v7;
  v8 = v3[5];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  v11 = a1;
  v3[5] = v10;
  v12 = v51;
  v13 = v56;
  if (v56 == 1)
  {
    if (!*(&v51 + 1))
    {
      v14 = v3[8];
      goto LABEL_11;
    }
  }

  else
  {
    if (v56)
    {
      goto LABEL_8;
    }

    outlined init with copy of Source.Located<AST.Group.Kind>(&v51, &v39);
  }

  specialized Set._Variant.insert(_:)(&v39, v12, *(&v12 + 1));

  v13 = v56;
LABEL_8:
  v14 = v3[8];
  if (v13 == 2)
  {
    v50[0] = v51;
    v50[1] = v52;
    v50[2] = v53;
    v50[3] = v54;
    *&v39 = 128;
    MEMORY[0x1EEE9AC00](a1);
    v34[16] = 3;
    mapOption #1 (_:_:) in Parser.applySyntaxOptions(of:isScoped:)(&v39, closure #1 in mapOption #2 (_:_:) in Parser.applySyntaxOptions(of:isScoped:)partial apply, v34, v50, v3);
    *&v39 = 3;
    mapOption #1 (_:_:) in Parser.applySyntaxOptions(of:isScoped:)(&v39, specialized implicit closure #3 in Parser.applySyntaxOptions(of:isScoped:), 0, v50, v3);
  }

LABEL_11:
  v15 = (~v14 & 3) == 0 && (~*(v3 + 16) & 3) != 0;
  Parser.parseNode()(&v39);
  v16 = v39;
  v17._countAndFlagsBits = 41;
  v17._object = 0xE100000000000000;
  if (!Parser.tryEat(_:)(v17))
  {
    v46 = xmmword_1C0C7E3A0;
    v47 = 0;
    v48 = 0;
    v49 = 3;
    *&v39 = v3[2];
    *(&v39 + 1) = v39;
    Diagnostics.error(_:at:)(&v46, &v39);
  }

  v18 = v3[2];
  if (v18 >> 14 < v11 >> 14)
  {
    goto LABEL_23;
  }

  if (v15 && (v3[8] & 0x40) != 0)
  {
    v19 = *v3;
    v35 = v3[1];
    v36 = v19;
    v38 = v16;
    AST.Node._associatedValue.getter(&v39);
    v20 = v11;
    v37 = v14;
    v21 = v40;
    v22 = v41;
    __swift_project_boxed_opaque_existential_1Tm(&v39, v40);
    v23 = *(v22 + 16);
    v24 = v21;
    v11 = v20;
    v25 = v22;
    v14 = v37;
    v23(&v42, v24, v25);
    __swift_destroy_boxed_opaque_existential_1Tm(&v39);
    v26 = String.subscript.getter();
    LOBYTE(v20) = specialized StringProtocol.spansMultipleLinesInRegexLiteral.getter(v26, v27, v28, v29);

    if (v20)
    {
      v42 = 4uLL;
      v43 = 0;
      v44 = 0;
      v45 = 36;
      *&v39 = v11;
      *(&v39 + 1) = v18;
      Diagnostics.error(_:at:)(&v42, &v39);
    }
  }

  v30 = v56;
  *(a3 + 64) = v55;
  *(a3 + 80) = v30;
  v31 = v57;
  v32 = v52;
  *a3 = v51;
  *(a3 + 16) = v32;
  v33 = v54;
  *(a3 + 32) = v53;
  *(a3 + 48) = v33;
  *(a3 + 96) = v31;
  *(a3 + 104) = v16;
  *(a3 + 112) = v11;
  *(a3 + 120) = v18;
  v3[8] = v14;
  outlined init with copy of Source.Located<AST.Group.Kind>(&v51, &v39);
}

void Parser.parseAbsentFunctionBody(_:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v28 = *(a1 + 8);
  if (*a1 == 1)
  {
    Parser.parseNode()(&v33);
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = v33;
LABEL_19:
    v24._countAndFlagsBits = 41;
    v24._object = 0xE100000000000000;
    if (!Parser.tryEat(_:)(v24))
    {
      v33 = xmmword_1C0C7E3A0;
      v34 = 0uLL;
      LOBYTE(v35) = 3;
      *&v30 = *(v3 + 2);
      *(&v30 + 1) = v30;
      Diagnostics.error(_:at:)(&v33, &v30);
    }

    v25 = *(v3 + 2);
    if (v25 >> 14 >= v28 >> 14)
    {
      *(a2 + 16) = v8;
      *(a2 + 24) = v5;
      *(a2 + 32) = v6;
      *(a2 + 40) = v7;
      *a2 = v28;
      *(a2 + 48) = v28;
      *(a2 + 56) = v25;
      return;
    }

    __break(1u);
    goto LABEL_24;
  }

  v9 = v2[1];
  v33 = *v2;
  v10 = v2[2];
  v11 = v2[3];
  v34 = v9;
  v35 = v10;
  v12 = v2[4];
  v36 = v11;
  v37[0] = v12;
  *(v37 + 9) = *(v2 + 73);
  outlined init with copy of Parser(&v33, &v30);
  v13 = String.subscript.getter();
  if (!((v13 ^ v14) >> 14))
  {

    outlined destroy of Parser(&v33);
    goto LABEL_5;
  }

  v19 = Substring.subscript.getter();
  v21 = v20;

  outlined destroy of Parser(&v33);
  if (v19 == 41 && v21 == 0xE100000000000000)
  {

LABEL_16:
    v8 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 6;
    goto LABEL_19;
  }

  v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v22)
  {
    goto LABEL_16;
  }

LABEL_5:
  Parser.parseNode()(&v30);
  if (v30 >> 60)
  {
    v5 = 0;
    v6 = 0;
    v7 = 4;
    v8 = v30;
    goto LABEL_19;
  }

  v15 = *(v30 + 16);
  v16 = v15[2];
  if (!v16)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v17 = *(v30 + 24);
  if (!v17[2])
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v16 != 1)
  {
    v5 = v17[4];
    v6 = v17[5];
    v8 = v15[4];
    v18 = v15[5];
    if (v16 == 2)
    {
    }

    else
    {
      v38 = v15[2];
      v39 = 0;
      v40 = 0;
      v41 = 7;
      AST.Node._associatedValue.getter(&v30);
      v23 = v32;
      v27 = v31;
      __swift_project_boxed_opaque_existential_1Tm(&v30, v31);
      v26 = *(v23 + 16);

      v26(&v29, v27, v23);
      __swift_destroy_boxed_opaque_existential_1Tm(&v30);
      v30 = v29;
      Diagnostics.error(_:at:)(&v38, &v30);
    }

    v7 = v18 | 2;
    goto LABEL_19;
  }

LABEL_26:
  __break(1u);
}

void Parser.parseCustomCharacterClass(_:)(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = v2;
  v69 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser3ASTV20CustomCharacterClassV6MemberOSgMd, &_s12_RegexParser3ASTV20CustomCharacterClassV6MemberOSgMR);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = (&v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v10 = (&v66 - v9);
  v11 = type metadata accessor for AST.CustomCharacterClass.Member(0);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v80 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v79 = &v66 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v70 = &v66 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v66 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v66 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v77 = &v66 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = &v66 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v78 = &v66 - v30;
  v67 = *a1;
  v31 = *(a1 + 2);
  v72 = *(a1 + 1);
  v71 = v31;
  v68 = *(v3 + 32);
  *(v3 + 32) = 1;
  v32 = MEMORY[0x1E69E7CC0];
  into._rawValue = MEMORY[0x1E69E7CC0];
  Parser.parseCCCMember()(v10);
  v82 = *(v12 + 48);
  v83 = v12 + 48;
  if (v82(v10, 1, v11) != 1)
  {
    v76 = v24;
    v33 = v29;
    do
    {
      v34 = v78;
      outlined init with take of AST.Atom.Kind(v10, v78, type metadata accessor for AST.CustomCharacterClass.Member);
      outlined init with take of AST.Atom.Kind(v34, v29, type metadata accessor for AST.CustomCharacterClass.Member);
      rawValue = into._rawValue;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, rawValue[2] + 1, 1, rawValue);
      }

      v37 = rawValue[2];
      v36 = rawValue[3];
      if (v37 >= v36 >> 1)
      {
        rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1, rawValue);
      }

      rawValue[2] = v37 + 1;
      v29 = v33;
      outlined init with take of AST.Atom.Kind(v33, rawValue + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v37, type metadata accessor for AST.CustomCharacterClass.Member);
      into._rawValue = rawValue;
      Parser.parsePotentialCCRange(into:)(&into);
      Parser.parseCCCMember()(v10);
    }

    while (v82(v10, 1, v11) != 1);
    v32 = into._rawValue;
    v24 = v76;
  }

  outlined destroy of _ASTParent?(v10, &_s12_RegexParser3ASTV20CustomCharacterClassV6MemberOSgMd, &_s12_RegexParser3ASTV20CustomCharacterClassV6MemberOSgMR);
  v38 = *(v32 + 2);
  if (v38)
  {
    v39 = 0;
    while (v39 < *(v32 + 2))
    {
      v40 = v77;
      outlined init with copy of AST.CustomCharacterClass.Member(&v32[((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v39], v77, type metadata accessor for AST.CustomCharacterClass.Member);
      outlined init with take of AST.Atom.Kind(v40, v24, type metadata accessor for AST.CustomCharacterClass.Member);
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        outlined destroy of AST.CustomCharacterClass.Member(v24, type metadata accessor for AST.CustomCharacterClass.Member);
        goto LABEL_16;
      }

      ++v39;
      outlined destroy of AST.CustomCharacterClass.Member(v24, type metadata accessor for AST.CustomCharacterClass.Member);
      if (v38 == v39)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_41;
  }

LABEL_14:
  v94 = 7uLL;
  v95 = 0;
  v96 = 0;
  v97 = 36;
  *&v90 = v72;
  *(&v90 + 1) = v71;
  Diagnostics.error(_:at:)(&v94, &v90);
LABEL_16:
  Parser.lexCustomCCBinOp()(&v90);
  v41 = v90;
  if (v90 != 3)
  {
    v49 = *(&v90 + 1);
    v48 = v91;
    v73 = xmmword_1C0C7E2F0;
    v74 = v3;
    v81 = v11;
    while (1)
    {
      v75 = v49;
      v76 = v48;
      v77 = v41;
      v78 = v32;
      v53 = MEMORY[0x1E69E7CC0];
      *&v84 = MEMORY[0x1E69E7CC0];
      Parser.parseCCCMember()(v8);
      v54 = v82(v8, 1, v11);
      v55 = v53;
      if (v54 != 1)
      {
        v56 = v81;
        v57 = v70;
        do
        {
          outlined init with take of AST.Atom.Kind(v8, v21, type metadata accessor for AST.CustomCharacterClass.Member);
          outlined init with take of AST.Atom.Kind(v21, v57, type metadata accessor for AST.CustomCharacterClass.Member);
          v58 = v84;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v58 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v58[2] + 1, 1, v58);
          }

          v60 = v58[2];
          v59 = v58[3];
          if (v60 >= v59 >> 1)
          {
            v58 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v60 + 1, 1, v58);
          }

          v58[2] = v60 + 1;
          outlined init with take of AST.Atom.Kind(v57, v58 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v60, type metadata accessor for AST.CustomCharacterClass.Member);
          *&v84 = v58;
          Parser.parsePotentialCCRange(into:)(&v84);
          Parser.parseCCCMember()(v8);
        }

        while (v82(v8, 1, v56) != 1);
        v55 = v84;
      }

      outlined destroy of _ASTParent?(v8, &_s12_RegexParser3ASTV20CustomCharacterClassV6MemberOSgMd, &_s12_RegexParser3ASTV20CustomCharacterClassV6MemberOSgMR);
      v61 = *(v55 + 16);
      if (v61)
      {
        break;
      }

LABEL_23:
      v86 = 7uLL;
      v87 = 0;
      v88 = 0;
      v89 = 36;
      *&v90 = v72;
      *(&v90 + 1) = v71;
      v3 = v74;
      Diagnostics.error(_:at:)(&v86, &v90);
      v50 = (*(v12 + 80) + 32) & ~*(v12 + 80);
LABEL_24:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12_RegexParser3ASTV20CustomCharacterClassV6MemberOGMd, &_ss23_ContiguousArrayStorageCy12_RegexParser3ASTV20CustomCharacterClassV6MemberOGMR);
      v42 = swift_allocObject();
      *(v42 + 16) = v73;
      v51 = v42 + v50;
      *v51 = v78;
      *(v51 + 8) = v77;
      v52 = v76;
      *(v51 + 16) = v75;
      *(v51 + 24) = v52;
      *(v51 + 32) = v55;
      v11 = v81;
      swift_storeEnumTagMultiPayload();
      Parser.lexCustomCCBinOp()(&v90);
      v41 = v90;
      v49 = *(&v90 + 1);
      v48 = v91;
      v32 = v42;
      if (v90 == 3)
      {
        goto LABEL_18;
      }
    }

    v62 = 0;
    while (v62 < *(v55 + 16))
    {
      v50 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v63 = v79;
      outlined init with copy of AST.CustomCharacterClass.Member(v55 + v50 + *(v12 + 72) * v62, v79, type metadata accessor for AST.CustomCharacterClass.Member);
      v64 = v63;
      v65 = v80;
      outlined init with take of AST.Atom.Kind(v64, v80, type metadata accessor for AST.CustomCharacterClass.Member);
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        outlined destroy of AST.CustomCharacterClass.Member(v65, type metadata accessor for AST.CustomCharacterClass.Member);
        v3 = v74;
        goto LABEL_24;
      }

      ++v62;
      outlined destroy of AST.CustomCharacterClass.Member(v65, type metadata accessor for AST.CustomCharacterClass.Member);
      if (v61 == v62)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v42 = v32;
LABEL_18:
  v43._countAndFlagsBits = 93;
  v43._object = 0xE100000000000000;
  if (!Parser.tryEat(_:)(v43))
  {
    v90 = xmmword_1C0C7E3E0;
    v91 = 0;
    v92 = 0;
    v93 = 3;
    *&v84 = *(v3 + 16);
    *(&v84 + 1) = v84;
    Diagnostics.error(_:at:)(&v90, &v84);
  }

  v44 = *(v3 + 16);
  v45 = v72;
  v46 = v69;
  if (v44 >> 14 >= v72 >> 14)
  {
    *v69 = v67;
    v47 = v71;
    v46[1] = v45;
    v46[2] = v47;
    v46[3] = v42;
    v46[4] = v45;
    v46[5] = v44;
    *(v3 + 32) = v68;
    return;
  }

LABEL_42:
  __break(1u);
}

uint64_t Parser.parseCCCMember()@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser3ASTV4AtomVSgMd, &_s12_RegexParser3ASTV4AtomVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v52 - v4;
  v6 = type metadata accessor for AST.Atom(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = String.subscript.getter();
  v12 = v11;

  if ((v10 ^ v12) < 0x4000)
  {
    goto LABEL_12;
  }

  v52 = v7;
  v53 = v5;
  v13 = v1[1];
  v61[0] = *v1;
  v61[1] = v13;
  v14 = v1[3];
  v61[2] = v1[2];
  v61[3] = v14;
  v62[0] = v1[4];
  *(v62 + 9) = *(v1 + 73);
  outlined init with copy of Parser(v61, v59);
  v15 = String.subscript.getter();
  if ((v15 ^ v16) >> 14)
  {
    v31 = Substring.subscript.getter();
    v33 = v32;

    outlined destroy of Parser(v61);
    if (v31 == 93 && v33 == 0xE100000000000000)
    {

      goto LABEL_12;
    }

    v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v34)
    {
      goto LABEL_12;
    }
  }

  else
  {

    outlined destroy of Parser(v61);
  }

  v54 = a1;
  v17 = v1[1];
  v59[0] = *v1;
  v18 = v1[2];
  v19 = v1[3];
  v59[1] = v17;
  v59[2] = v18;
  v20 = v1[4];
  v59[3] = v19;
  v60[0] = v20;
  *(v60 + 9) = *(v1 + 73);
  outlined init with copy of Parser(v59, &v57);
  v21 = String.subscript.getter();
  v25 = specialized Sequence<>.starts<A>(with:)(11565, 0xE200000000000000, v21, v22, v23, v24);

  if (v25 & 1) != 0 || (v26 = String.subscript.getter(), v30 = specialized Sequence<>.starts<A>(with:)(32382, 0xE200000000000000, v26, v27, v28, v29), , (v30))
  {
    outlined destroy of Parser(v59);
  }

  else
  {
    v39 = String.subscript.getter();
    v43 = specialized Sequence<>.starts<A>(with:)(9766, 0xE200000000000000, v39, v40, v41, v42);

    outlined destroy of Parser(v59);
    if ((v43 & 1) == 0)
    {
      Parser.lexCustomCCStart()(&v57);
      if (v57 == 2)
      {
        Parser.lexQuote()(closure #1 in Parser.lexQuote(), &v57);
        v44 = *&v58[0];
        v45 = v54;
        if (*&v58[0])
        {
          v46 = *(v58 + 8);
          *v54 = v57;
          *(v45 + 8) = v44;
          *(v45 + 16) = v46;
          v47 = type metadata accessor for AST.CustomCharacterClass.Member(0);
        }

        else
        {
          Parser.lexTrivia()(&v57);
          v49 = *&v58[0];
          if (*&v58[0])
          {
            v50 = *(v58 + 8);
            *v45 = v57;
            *(v45 + 8) = v49;
            *(v45 + 16) = v50;
            v47 = type metadata accessor for AST.CustomCharacterClass.Member(0);
          }

          else
          {
            v51 = v53;
            Parser.lexAtom()(v53);
            if ((*(v52 + 48))(v51, 1, v6) == 1)
            {
              outlined destroy of _ASTParent?(v51, &_s12_RegexParser3ASTV4AtomVSgMd, &_s12_RegexParser3ASTV4AtomVSgMR);
              v35 = type metadata accessor for AST.CustomCharacterClass.Member(0);
              v36 = *(*(v35 - 8) + 56);
              v37 = v45;
              return v36(v37, 1, 1, v35);
            }

            outlined init with take of AST.Atom.Kind(v51, v9, type metadata accessor for AST.Atom);
            outlined init with take of AST.Atom.Kind(v9, v45, type metadata accessor for AST.Atom);
            v47 = type metadata accessor for AST.CustomCharacterClass.Member(0);
          }
        }
      }

      else
      {
        v55[0] = v57 & 1;
        v56 = v58[0];
        Parser.parseCustomCharacterClass(_:)(v55, &v57);
        v48 = *&v58[1];
        v45 = v54;
        *v54 = v57;
        *(v45 + 8) = v58[0];
        *(v45 + 24) = v48;
        *(v45 + 32) = *(&v58[1] + 8);
        v47 = type metadata accessor for AST.CustomCharacterClass.Member(0);
      }

      swift_storeEnumTagMultiPayload();
      return (*(*(v47 - 8) + 56))(v45, 0, 1, v47);
    }
  }

  a1 = v54;
LABEL_12:
  v35 = type metadata accessor for AST.CustomCharacterClass.Member(0);
  v36 = *(*(v35 - 8) + 56);
  v37 = a1;
  return v36(v37, 1, 1, v35);
}

Swift::Void __swiftcall Parser.parsePotentialCCRange(into:)(Swift::OpaquePointer *into)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser3ASTV4AtomVSgMd, &_s12_RegexParser3ASTV4AtomVSgMR);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v179 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v179 - v8;
  v195 = type metadata accessor for AST.Atom(0);
  v193 = *(v195 - 8);
  v10 = MEMORY[0x1EEE9AC00](v195);
  v12 = &v179 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v192 = &v179 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser3ASTV20CustomCharacterClassV6MemberOSgMd, &_s12_RegexParser3ASTV20CustomCharacterClassV6MemberOSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v194 = (&v179 - v15);
  v16 = type metadata accessor for Unicode.Scalar.Properties();
  v17 = *(v16 - 8);
  v211 = v16;
  v212 = v17;
  MEMORY[0x1EEE9AC00](v16);
  v210 = &v179 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for AST.CustomCharacterClass.Member(0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v23 = MEMORY[0x1EEE9AC00](v22);
  MEMORY[0x1EEE9AC00](v23);
  v25 = MEMORY[0x1EEE9AC00](&v179 - v24);
  v196 = (&v179 - v26);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v207 = (&v179 - v29);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v32 = &v179 - v31;
  v33 = MEMORY[0x1EEE9AC00](v30);
  v41 = &v179 - v37;
  v42 = into;
  rawValue = into->_rawValue;
  v44 = rawValue[2];
  if (v44)
  {
    v190 = v39;
    v191 = v36;
    v187 = v33;
    v188 = v34;
    v183 = v7;
    v184 = v9;
    v189 = v40;
    v182 = v38;
    v185 = v12;
    v186 = v35;
    v45 = (*(v35 + 80) + 32) & ~*(v35 + 80);
    v46 = *(v35 + 72);
    outlined init with copy of AST.CustomCharacterClass.Member(rawValue + v45 + v46 * (v44 - 1), &v179 - v37, type metadata accessor for AST.CustomCharacterClass.Member);
    outlined init with copy of AST.CustomCharacterClass.Member(v41, v32, type metadata accessor for AST.CustomCharacterClass.Member);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      outlined destroy of AST.CustomCharacterClass.Member(v41, type metadata accessor for AST.CustomCharacterClass.Member);
      v47 = v32;
    }

    else
    {
      v181 = v41;
      outlined destroy of AST.CustomCharacterClass.Member(v32, type metadata accessor for AST.CustomCharacterClass.Member);
      v180 = rawValue[2];
      v209 = (v212 + 8);
      v48 = v2;
      v206 = v2;
      v49 = v42;
      v200 = v42;
      v201 = v19;
      v198 = v45;
      v199 = v46;
      while (1)
      {
        v208 = rawValue;
        v50 = *(v48 + 16);
        closure #1 in Parser.lexComment()(v48, &v227);
        v51 = *(&v227 + 1);
        if (!*(&v227 + 1))
        {
          break;
        }

        v52 = *(v48 + 16);
        if (v52 >> 14 < v50 >> 14)
        {
          __break(1u);
LABEL_99:
          outlined init with take of AST.Atom.Kind(v45, v50, type metadata accessor for AST.Atom);
          v149 = v208[2] - v180;
          v150 = specialized BidirectionalCollection.suffix(_:)(v149 + 1, v208);
          v19 = (v151 >> 1) - v59;
          v60 = (v151 >> 1) <= v59;
          v211 = v150;
          v212 = v149;
          if (v151 >> 1 == v59)
          {

            v152 = MEMORY[0x1E69E7CC0];
            v153 = v197;
LABEL_101:
            swift_unknownObjectRelease();
            v154 = v200;
            specialized RangeReplaceableCollection<>.removeLast(_:)(v212 + 1);
            v155 = v182;
            outlined init with take of AST.Atom.Kind(v192, v182, type metadata accessor for AST.Atom);
            v156 = type metadata accessor for AST.CustomCharacterClass.Range(0);
            outlined init with take of AST.Atom.Kind(v185, v155 + v156[6], type metadata accessor for AST.Atom);
            v157 = (v155 + v156[5]);
            v158 = v179;
            *v157 = v153;
            v157[1] = v158;
            *(v155 + v156[7]) = v152;
            swift_storeEnumTagMultiPayload();
            v159 = v154->_rawValue;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v159 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v159[2] + 1, 1, v159);
            }

            v161 = v159[2];
            v160 = v159[3];
            if (v161 >= v160 >> 1)
            {
              v159 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v160 > 1), v161 + 1, 1, v159);
            }

            v159[2] = v161 + 1;
            outlined init with take of AST.Atom.Kind(v182, v159 + v198 + v161 * v199, type metadata accessor for AST.CustomCharacterClass.Member);
            v154->_rawValue = v159;
            v162 = v206[3];
            v222 = v206[2];
            v223 = v162;
            v224[0] = v206[4];
            v163 = v224[0];
            *(v224 + 9) = *(v206 + 73);
            v164 = v206[1];
            v221[0] = *v206;
            v221[1] = v164;
            *(v218 + 9) = *(v224 + 9);
            v216 = v222;
            v217 = v162;
            v218[0] = v163;
            v214 = v221[0];
            v215 = v164;
            outlined init with copy of Parser(v221, v213);
            closure #1 in Parser.canLexDotNetCharClassSubtraction()(&v214, &v219);
            v165 = *&v218[1];
            v166 = BYTE8(v218[1]);
            v225[2] = v216;
            v225[3] = v217;
            v226[0] = v218[0];
            *(v226 + 9) = *(v218 + 9);
            v225[0] = v214;
            v225[1] = v215;

            outlined destroy of Parser(v225);
            *&v213[0] = v165;
            BYTE8(v213[0]) = v166;
            v232.diags._rawValue = v213;
            Diagnostics.appendNewFatalErrors(from:)(v232);

            if ((v220 & 1) == 0)
            {
              v214 = 0x12uLL;
              v215 = 0uLL;
              LOBYTE(v216) = 36;
              v213[0] = v219;
              Diagnostics.error(_:at:)(&v214, v213);
            }

            return;
          }

LABEL_110:
          v153 = v197;
          if (v60)
          {
            __break(1u);
            return;
          }

          v167 = v58;
          v168 = v59;

          v169 = v167 + v168 * v46;
          v152 = MEMORY[0x1E69E7CC0];
          v171 = v189;
          v170 = v190;
          do
          {
            outlined init with copy of AST.CustomCharacterClass.Member(v169, v171, type metadata accessor for AST.CustomCharacterClass.Member);
            outlined init with take of AST.Atom.Kind(v171, v170, type metadata accessor for AST.CustomCharacterClass.Member);
            if (swift_getEnumCaseMultiPayload() == 4)
            {
              v172 = *v170;
              v173 = v170[1];
              v175 = v170[2];
              v174 = v170[3];
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v152 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v152 + 2) + 1, 1, v152, &_ss23_ContiguousArrayStorageCy12_RegexParser3ASTV6TriviaVGMd, &_ss23_ContiguousArrayStorageCy12_RegexParser3ASTV6TriviaVGMR, &type metadata for AST.Trivia);
              }

              v177 = *(v152 + 2);
              v176 = *(v152 + 3);
              if (v177 >= v176 >> 1)
              {
                v152 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v176 > 1), v177 + 1, 1, v152, &_ss23_ContiguousArrayStorageCy12_RegexParser3ASTV6TriviaVGMd, &_ss23_ContiguousArrayStorageCy12_RegexParser3ASTV6TriviaVGMR, &type metadata for AST.Trivia);
              }

              *(v152 + 2) = v177 + 1;
              v178 = &v152[32 * v177];
              *(v178 + 4) = v172;
              *(v178 + 5) = v173;
              *(v178 + 6) = v175;
              *(v178 + 7) = v174;
              v46 = v199;
              v171 = v189;
              v170 = v190;
              v153 = v197;
            }

            else
            {
              outlined destroy of AST.CustomCharacterClass.Member(v170, type metadata accessor for AST.CustomCharacterClass.Member);
            }

            v169 += v46;
            --v19;
          }

          while (v19);
          goto LABEL_101;
        }

        v53 = v227;
LABEL_35:
        v82 = v207;
        *v207 = v53;
        v82[1] = v51;
        v82[2] = v50;
        v82[3] = v52;
        swift_storeEnumTagMultiPayload();
        rawValue = v208;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, rawValue[2] + 1, 1, rawValue);
        }

        v48 = v206;
        v84 = rawValue[2];
        v83 = rawValue[3];
        if (v84 >= v83 >> 1)
        {
          rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v83 > 1), v84 + 1, 1, rawValue);
        }

        rawValue[2] = v84 + 1;
        outlined init with take of AST.Atom.Kind(v207, rawValue + v45 + v84 * v46, type metadata accessor for AST.CustomCharacterClass.Member);
        *v49 = rawValue;
      }

      if (*(v48 + 64))
      {
        v54 = *v206;
        v55 = *(v206 + 1);
        v56 = *(v206 + 3);
        v205 = *(v206 + 2);
        v57 = String.subscript.getter();
        v60 = (v58 >> 14) <= (v57 >> 14);
        if (v58 >> 14 < v57 >> 14)
        {
          __break(1u);
LABEL_108:
          __break(1u);
        }

        else
        {
          v202 = v55;
          v203 = v54;
          v204 = v56;
          v61 = Substring.subscript.getter();
          v46 = v62;

          v63 = v61 >> 14;
          v212 = v46 >> 14;
          if (v61 >> 14 == v46 >> 14)
          {
            goto LABEL_28;
          }

          v19 = v61;
          v197 = v61 >> 14;
          do
          {
            v64 = Substring.subscript.getter();
            if ((v65 & 0x2000000000000000) != 0)
            {
              v66 = HIBYTE(v65) & 0xF;
            }

            else
            {
              v66 = v64 & 0xFFFFFFFFFFFFLL;
            }

            if (!v66)
            {
              __break(1u);
LABEL_88:

              v49 = v200;
              v19 = v201;
              v71 = v198;
              v46 = v199;
LABEL_89:
              v135 = v194;
              Parser.parseCCCMember()(v194);
              if ((*(v186 + 48))(v135, 1, v19) == 1)
              {
                outlined destroy of AST.CustomCharacterClass.Member(v181, type metadata accessor for AST.CustomCharacterClass.Member);
                outlined destroy of _ASTParent?(v135, &_s12_RegexParser3ASTV20CustomCharacterClassV6MemberOSgMd, &_s12_RegexParser3ASTV20CustomCharacterClassV6MemberOSgMR);
                return;
              }

              v136 = v187;
              outlined init with take of AST.Atom.Kind(v135, v187, type metadata accessor for AST.CustomCharacterClass.Member);
              outlined init with copy of AST.CustomCharacterClass.Member(v136, v188, type metadata accessor for AST.CustomCharacterClass.Member);
              v138 = v208[2];
              v137 = v208[3];
              if (v138 >= v137 >> 1)
              {
                v208 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v137 > 1), v138 + 1, 1, v208);
              }

              v50 = v185;
              v139 = v195;
              v140 = v193;
              v141 = v208;
              v208[2] = v138 + 1;
              outlined init with take of AST.Atom.Kind(v188, v141 + v71 + v138 * v46, type metadata accessor for AST.CustomCharacterClass.Member);
              *v49 = v141;
              v142 = v184;
              v143 = v181;
              makeOperand #1 (_:isLHS:) in Parser.parsePotentialCCRange(into:)(v181, 1, v184);
              outlined destroy of AST.CustomCharacterClass.Member(v143, type metadata accessor for AST.CustomCharacterClass.Member);
              v144 = *(v140 + 48);
              if (v144(v142, 1, v139) == 1)
              {
                outlined destroy of AST.CustomCharacterClass.Member(v187, type metadata accessor for AST.CustomCharacterClass.Member);
                v145 = v142;
              }

              else
              {
                v146 = v142;
                v147 = v192;
                outlined init with take of AST.Atom.Kind(v146, v192, type metadata accessor for AST.Atom);
                v45 = v183;
                v148 = v187;
                makeOperand #1 (_:isLHS:) in Parser.parsePotentialCCRange(into:)(v187, 0, v183);
                outlined destroy of AST.CustomCharacterClass.Member(v148, type metadata accessor for AST.CustomCharacterClass.Member);
                if (v144(v45, 1, v139) != 1)
                {
                  goto LABEL_99;
                }

                outlined destroy of AST.CustomCharacterClass.Member(v147, type metadata accessor for AST.Atom);
                v145 = v45;
              }

              outlined destroy of _ASTParent?(v145, &_s12_RegexParser3ASTV4AtomVSgMd, &_s12_RegexParser3ASTV4AtomVSgMR);
              return;
            }

            if ((v65 & 0x1000000000000000) != 0)
            {
              _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
            }

            else
            {
              if ((v65 & 0x2000000000000000) != 0)
              {
                *&v227 = v64;
                *(&v227 + 1) = v65 & 0xFFFFFFFFFFFFFFLL;
              }

              else if ((v64 & 0x1000000000000000) == 0)
              {
                _StringObject.sharedUTF8.getter();
              }

              _decodeScalar(_:startingAt:)();
            }

            v67 = v210;
            Unicode.Scalar.properties.getter();
            v68 = Unicode.Scalar.Properties.isPatternWhitespace.getter();

            (*v209)(v67, v211);
            if ((v68 & 1) == 0)
            {
              goto LABEL_27;
            }

            v19 = Substring.index(after:)();
            v63 = v19 >> 14;
          }

          while (v19 >> 14 != v212);
          v63 = v212;
LABEL_27:
          v60 = v63 <= v197;
          if (v63 < v197)
          {
            goto LABEL_108;
          }

LABEL_28:
          v69 = Substring.subscript.getter();
          v71 = v70;
          v46 = v72;
          v74 = v73;

          if ((v69 ^ v71) < 0x4000)
          {

            v49 = v200;
            v19 = v201;
            goto LABEL_41;
          }

          v75 = Substring.distance(from:to:)();
          v50 = v205;
          v52 = v205;
          if (v75 >= 1)
          {
            String.subscript.getter();
            v49 = v76;
            v77 = Substring.index(_:offsetBy:limitedBy:)();
            v19 = v78;

            v52 = v50;
            if ((v19 & 1) == 0)
            {
              v79 = v204;
              if (v204 >> 14 >= v77 >> 14)
              {
                v50 = v205;
                v80 = v206;
                *(v206 + 2) = v77;
                *(v80 + 24) = v79;
                v52 = v77;
                goto LABEL_33;
              }

LABEL_121:
              __break(1u);
LABEL_122:
              __break(1u);
LABEL_123:
              __break(1u);
LABEL_124:
              __break(1u);
LABEL_125:
              __break(1u);
LABEL_126:
              __break(1u);
LABEL_127:
              __break(1u);
              goto LABEL_128;
            }
          }

LABEL_33:
          v53 = MEMORY[0x1C68E0B20](v69, v71, v46, v74);
          v51 = v81;

          v60 = (v52 >> 14) <= (v50 >> 14);
          v49 = v200;
          v19 = v201;
          if (v52 >> 14 >= v50 >> 14)
          {
            v45 = v198;
            v46 = v199;
            if (!v51)
            {
              goto LABEL_41;
            }

            goto LABEL_35;
          }
        }

        __break(1u);
        goto LABEL_110;
      }

LABEL_41:
      v85 = v206[1];
      v227 = *v206;
      v228 = v85;
      v86 = v206[3];
      v229 = v206[2];
      v230 = v86;
      v231[0] = v206[4];
      *(v231 + 9) = *(v206 + 73);
      v69 = *(&v228 + 1);
      v52 = v228;
      outlined init with copy of Parser(&v227, v225);
      v87 = String.subscript.getter();
      v91 = specialized Sequence<>.starts<A>(with:)(11565, 0xE200000000000000, v87, v88, v89, v90);

      if (v91 & 1) != 0 || (v92 = String.subscript.getter(), v71 = v93, v46 = specialized Sequence<>.starts<A>(with:)(32382, 0xE200000000000000, v92, v94, v95, v93), , (v46))
      {
        outlined destroy of Parser(&v227);
      }

      else
      {
        v96 = String.subscript.getter();
        v100 = specialized Sequence<>.starts<A>(with:)(9766, 0xE200000000000000, v96, v97, v98, v99);

        outlined destroy of Parser(&v227);
        if ((v100 & 1) == 0)
        {
          v101._countAndFlagsBits = 45;
          v101._object = 0xE100000000000000;
          v102 = v206;
          if (Parser.tryEat(_:)(v101))
          {
            v103 = *(v102 + 16);
            if (v103 >> 14 < v52 >> 14)
            {
              goto LABEL_127;
            }

            v104 = v191;
            *v191 = 45;
            v104[1] = 0xE100000000000000;
            type metadata accessor for AST.Atom.Kind(0);
            swift_storeEnumTagMultiPayload();
            v105 = (v104 + *(v195 + 20));
            *v105 = v52;
            v105[1] = v103;
            swift_storeEnumTagMultiPayload();
            v69 = v208;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v71 = v198;
            v46 = v199;
            v179 = v103;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
LABEL_128:
              v69 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v69 + 16) + 1, 1, v69);
            }

            v108 = *(v69 + 16);
            v107 = *(v69 + 24);
            v109 = v191;
            if (v108 >= v107 >> 1)
            {
              v69 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v107 > 1), v108 + 1, 1, v69);
              v109 = v191;
            }

            *(v69 + 16) = v108 + 1;
            outlined init with take of AST.Atom.Kind(v109, v69 + v71 + v108 * v46, type metadata accessor for AST.CustomCharacterClass.Member);
            v197 = v52;
            while (1)
            {
              v208 = v69;
              *v49 = v69;
              v110 = v206;
              v111 = *(v206 + 2);
              closure #1 in Parser.lexComment()(v206, v225);
              v112 = *(&v225[0] + 1);
              if (*(&v225[0] + 1))
              {
                v52 = *(v110 + 16);
                if (v52 >> 14 < v111 >> 14)
                {
                  goto LABEL_122;
                }

                v69 = *&v225[0];
              }

              else
              {
                if ((*(v110 + 64) & 1) == 0)
                {
                  goto LABEL_89;
                }

                v113 = *v206;
                v69 = *(v206 + 1);
                v114 = *(v206 + 3);
                v207 = *(v206 + 2);
                v205 = v114;
                v115 = String.subscript.getter();
                if (v116 >> 14 < v115 >> 14)
                {
                  goto LABEL_123;
                }

                v203 = v69;
                v204 = v113;
                v49 = Substring.subscript.getter();
                v19 = v117;
                v46 = v118;

                v69 = v49 >> 14;
                v212 = v19 >> 14;
                if (v49 >> 14 != v19 >> 14)
                {
                  v202 = v49 >> 14;
                  while (1)
                  {
                    v119 = Substring.subscript.getter();
                    v71 = v120;
                    if ((v120 & 0x2000000000000000) != 0)
                    {
                      v121 = HIBYTE(v120) & 0xF;
                    }

                    else
                    {
                      v121 = v119 & 0xFFFFFFFFFFFFLL;
                    }

                    if (!v121)
                    {
                      __break(1u);
                      goto LABEL_121;
                    }

                    if ((v120 & 0x1000000000000000) != 0)
                    {
                      _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
                    }

                    else
                    {
                      if ((v120 & 0x2000000000000000) != 0)
                      {
                        *&v225[0] = v119;
                        *(&v225[0] + 1) = v120 & 0xFFFFFFFFFFFFFFLL;
                      }

                      else if ((v119 & 0x1000000000000000) == 0)
                      {
                        _StringObject.sharedUTF8.getter();
                      }

                      _decodeScalar(_:startingAt:)();
                    }

                    v122 = v210;
                    Unicode.Scalar.properties.getter();
                    v52 = Unicode.Scalar.Properties.isPatternWhitespace.getter();

                    (*v209)(v122, v211);
                    if ((v52 & 1) == 0)
                    {
                      break;
                    }

                    v69 = Substring.index(after:)() >> 14;
                    if (v69 == v212)
                    {
                      v69 = v212;
                      break;
                    }
                  }

                  if (v69 < v202)
                  {
                    goto LABEL_124;
                  }
                }

                v71 = Substring.subscript.getter();
                v46 = v123;
                v49 = v124;
                v126 = v125;

                if ((v71 ^ v46) < 0x4000)
                {
                  goto LABEL_88;
                }

                v127 = Substring.distance(from:to:)();
                v111 = v207;
                v52 = v207;
                if (v127 >= 1)
                {
                  String.subscript.getter();
                  v128 = Substring.index(_:offsetBy:limitedBy:)();
                  v19 = v129;
                  v69 = v206;
                  v111 = v207;

                  v52 = v111;
                  if ((v19 & 1) == 0)
                  {
                    v130 = v205;
                    if (v205 >> 14 < v128 >> 14)
                    {
                      goto LABEL_126;
                    }

                    *(v69 + 16) = v128;
                    *(v69 + 24) = v130;
                    v52 = v128;
                  }
                }

                v69 = MEMORY[0x1C68E0B20](v71, v46, v49, v126);
                v112 = v131;

                v19 = v201;
                if (v52 >> 14 < v111 >> 14)
                {
                  goto LABEL_125;
                }

                v46 = v199;
                v49 = v200;
                v71 = v198;
                if (!v112)
                {
                  goto LABEL_89;
                }
              }

              v132 = v196;
              *v196 = v69;
              v132[1] = v112;
              v132[2] = v111;
              v132[3] = v52;
              swift_storeEnumTagMultiPayload();
              v69 = v208;
              v134 = v208[2];
              v133 = v208[3];
              if (v134 >= v133 >> 1)
              {
                v69 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v133 > 1), v134 + 1, 1, v208);
              }

              *(v69 + 16) = v134 + 1;
              outlined init with take of AST.Atom.Kind(v196, v69 + v71 + v134 * v46, type metadata accessor for AST.CustomCharacterClass.Member);
            }
          }
        }
      }

      v47 = v181;
    }

    outlined destroy of AST.CustomCharacterClass.Member(v47, type metadata accessor for AST.CustomCharacterClass.Member);
  }
}

uint64_t makeOperand #1 (_:isLHS:) in Parser.parsePotentialCCRange(into:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for AST.CustomCharacterClass.Member(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AST.CustomCharacterClass.Member(a1, v8, type metadata accessor for AST.CustomCharacterClass.Member);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload == 4)
      {
        outlined destroy of AST.CustomCharacterClass.Member(v8, type metadata accessor for AST.CustomCharacterClass.Member);
        v11 = 0xD000000000000021;
        v12 = 0x80000001C0C86FD0;
LABEL_9:
        Parser.unreachable(_:)(*&v11);
LABEL_16:
        v10 = 1;
        goto LABEL_17;
      }

LABEL_8:
      outlined destroy of AST.CustomCharacterClass.Member(v8, type metadata accessor for AST.CustomCharacterClass.Member);
      v11 = 0x6C20646573726150;
      v12 = 0xEC00000072657461;
      goto LABEL_9;
    }

    outlined destroy of AST.CustomCharacterClass.Member(v8, type metadata accessor for AST.CustomCharacterClass.Member);
    *&v19 = 0xD00000000000001ALL;
    *(&v19 + 1) = 0x80000001C0C87000;
    v20 = 0;
    v21 = 0;
    v14 = 29;
LABEL_15:
    v22 = v14;
    AST.CustomCharacterClass.Member.location.getter(&v18);
    v17 = v18;
    Diagnostics.error(_:at:)(&v19, &v17);
    goto LABEL_16;
  }

  if (!EnumCaseMultiPayload)
  {
    outlined destroy of AST.CustomCharacterClass.Member(v8, type metadata accessor for AST.CustomCharacterClass.Member);
    if (a2)
    {
      v13 = 17;
    }

    else
    {
      v13 = 18;
    }

    v19 = v13;
    v20 = 0;
    v21 = 0;
    v14 = 36;
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload == 1)
  {
    goto LABEL_8;
  }

  outlined init with take of AST.Atom.Kind(v8, a3, type metadata accessor for AST.Atom);
  v10 = 0;
LABEL_17:
  v15 = type metadata accessor for AST.Atom(0);
  return (*(*(v15 - 8) + 56))(a3, v10, 1, v15);
}

uint64_t specialized BidirectionalCollection.suffix(_:)(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for AST.CustomCharacterClass.Member(0);
    return a2;
  }

  return result;
}

unint64_t specialized RangeReplaceableCollection<>.removeLast(_:)(unint64_t result)
{
  if (result)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v2 = *(*v1 + 16);
      v3 = v2 >= result;
      result = v2 - result;
      if (v3)
      {
        return specialized Array.replaceSubrange<A>(_:with:)(result, v2);
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized parseWithRecovery<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *&v29[0] = a1;
  *(&v29[0] + 1) = a2;

  v6 = String.init<A>(_:)();
  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v6;
  }

  v9 = MEMORY[0x1E69E7CC0];
  v10 = 7;
  if (((v7 >> 60) & ((v6 & 0x800000000000000) == 0)) != 0)
  {
    v10 = 11;
  }

  *&v28[16] = MEMORY[0x1E69E7CC0];
  v28[24] = 0;
  *&v24 = v6;
  *(&v24 + 1) = v7;
  *&v25 = 15;
  *(&v25 + 1) = v10 | (v8 << 16);
  LOBYTE(v26) = 0;
  *(&v26 + 1) = 0;
  v27 = MEMORY[0x1E69E7CD0];
  *v28 = a3;
  v28[8] = 3;
  Parser.parse()(&v20);
  v29[2] = v26;
  v29[3] = v27;
  v30[0] = *v28;
  *(v30 + 9) = *&v28[9];
  v29[0] = v24;
  v29[1] = v25;
  outlined destroy of Parser(v29);
  v18[1] = v9;
  v19 = 0;
  v14 = v20;
  v15 = v21;
  v16 = v22;
  v17 = v23;
  v12[0] = v20;
  v12[1] = v21;
  v12[2] = v22;
  v13 = v23;
  static CaptureList.Builder.build(_:)(v12, v18);
  RegexValidator.validate()(a4);
}

uint64_t parseWithRecovery<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t x8_0@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v8 = *v7;
  (*(v9 + 16))(&v18[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  v11 = String.init<A>(_:)();
  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = v11;
  }

  v14 = MEMORY[0x1E69E7CC0];
  v15 = 7;
  if (((v12 >> 60) & ((v11 & 0x800000000000000) == 0)) != 0)
  {
    v15 = 11;
  }

  *&v34[1] = MEMORY[0x1E69E7CC0];
  BYTE8(v34[1]) = 0;
  *&v30 = v11;
  *(&v30 + 1) = v12;
  *&v31 = 15;
  *(&v31 + 1) = v15 | (v13 << 16);
  LOBYTE(v32) = 0;
  *(&v32 + 1) = 0;
  v33 = MEMORY[0x1E69E7CD0];
  *&v34[0] = v8;
  BYTE8(v34[0]) = 3;
  Parser.parse()(&v26);
  v35[2] = v32;
  v35[3] = v33;
  v36[0] = v34[0];
  *(v36 + 9) = *(v34 + 9);
  v35[0] = v30;
  v35[1] = v31;
  outlined destroy of Parser(v35);
  v24[1] = v14;
  v25 = 0;
  v20 = v26;
  v21 = v27;
  v22 = v28;
  v23 = v29;
  v18[0] = v26;
  v18[1] = v27;
  v18[2] = v28;
  v19 = v29;
  static CaptureList.Builder.build(_:)(v18, v24);
  RegexValidator.validate()(x8_0);
}

uint64_t validate(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v14[1] = MEMORY[0x1E69E7CC0];
  v15 = 0;
  v10 = v3;
  v11 = v4;
  v12 = v5;
  v13 = v6;
  v8[0] = v3;
  v8[1] = v4;
  v8[2] = v5;
  v9 = v6;

  static CaptureList.Builder.build(_:)(v8, v14);
  RegexValidator.validate()(a2);
}

uint64_t parse<A>(_:_:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a5@<X8>)
{
  *&v29 = *a2;
  result = parseWithRecovery<A>(_:_:)(a1, v33);
  v7 = v33[1];
  v8 = v34;
  v9 = v35;
  v10 = *(v34 + 16);
  if (v10)
  {
    v11 = 32;
    while (1)
    {
      v12 = (v34 + v11);
      v29 = *(v34 + v11);
      v13 = *(v34 + v11 + 16);
      v14 = *(v34 + v11 + 32);
      v15 = *(v34 + v11 + 48);
      *(v32 + 9) = *(v34 + v11 + 57);
      v31 = v14;
      v32[0] = v15;
      v30 = v13;
      if (v29 != 2)
      {
        break;
      }

      v11 += 80;
      if (!--v10)
      {
        goto LABEL_5;
      }
    }

    v17 = *(&v30 + 1);
    v16 = v31;
    v18 = v12[3];
    v27 = v12[2];
    v28[0] = v18;
    *(v28 + 9) = *(v12 + 57);
    v19 = v12[1];
    v25 = *v12;
    v26 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser6SourceV12LocatedErrorVy_AA11DiagnosticsV08throwAnyE0yyKF0E10DiagnosticL_VGMd, &_s12_RegexParser6SourceV12LocatedErrorVy_AA11DiagnosticsV08throwAnyE0yyKF0E10DiagnosticL_VGMR);
    lazy protocol witness table accessor for type Source.LocatedError<ErrorDiagnostic #1 in Diagnostics.throwAnyError()> and conformance Source.LocatedError<A>(&lazy protocol witness table cache variable for type Source.LocatedError<ErrorDiagnostic #1 in Diagnostics.throwAnyError()> and conformance Source.LocatedError<A>, &_s12_RegexParser6SourceV12LocatedErrorVy_AA11DiagnosticsV08throwAnyE0yyKF0E10DiagnosticL_VGMd, &_s12_RegexParser6SourceV12LocatedErrorVy_AA11DiagnosticsV08throwAnyE0yyKF0E10DiagnosticL_VGMR, &protocol conformance descriptor for Source.LocatedError<A>);
    swift_allocError();
    *v20 = v25;
    v22 = v27;
    v21 = v28[0];
    v23 = v26;
    *(v20 + 57) = *(v28 + 9);
    *(v20 + 32) = v22;
    *(v20 + 48) = v21;
    *(v20 + 16) = v23;
    *(v20 + 80) = v17;
    *(v20 + 88) = v16;
    swift_willThrow();
    outlined init with copy of Diagnostic(&v29, &v24);
  }

  else
  {
LABEL_5:
    *a5 = v33[0];
    *(a5 + 8) = v7;
    *(a5 + 16) = v8;
    *(a5 + 24) = v9;
  }

  return result;
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t parseWithDelimitersWithRecovery<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t x8_0@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  (*(v6 + 16))(&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = String.init<A>(_:)();
  v9 = v8;
  stripDelimiter #1 (_:) in droppingRegexDelimiters(_:)(0, v7, v8, &v16);
  v10 = v17;
  if (v17 || (stripDelimiter #1 (_:) in droppingRegexDelimiters(_:)(1, v7, v9, &v16), (v10 = v17) != 0))
  {
    v11 = v19;
    v12 = v16;
    v13 = v18;

    if (v13)
    {
      v14 = 61;
    }

    else if (v11 >= 1 && (specialized StringProtocol.spansMultipleLinesInRegexLiteral.getter(v12, v10) & 1) != 0)
    {
      v14 = 67;
    }

    else
    {
      v14 = 0;
    }

    specialized parseWithRecovery<A>(_:_:)(v12, v10, v14, x8_0);
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t Collection.offsets(of:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = Collection.offset(of:)(a1, a2, a3);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for Range();
  result = Collection.offset(of:)(a1 + *(v7 + 36), a2, a3);
  if (result >= v6)
  {
    return v6;
  }

  __break(1u);
  return result;
}

uint64_t Collection.index(atOffset:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = &v8 - v5;
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.index(_:offsetBy:)();
  return (*(v4 + 8))(v6, AssociatedTypeWitness);
}

uint64_t Error.addingLocation(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *(a3 - 8);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v25[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = *(v10 + 16);
  v14(&v25[-1] - v15, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser20LocatedErrorProtocol_pMd, &_s12_RegexParser20LocatedErrorProtocol_pMR);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    v16 = swift_allocError();
    (v14)(v17, v5, a3);
  }

  else
  {
    (v14)(v13, v5, a3);
    v19 = type metadata accessor for Source.LocatedError(0, a3, a4, v18);
    swift_getWitnessTable();
    v16 = swift_allocError();
    v21 = v20;
    (*(v10 + 32))(v20, v13, a3);
    v22 = (v21 + *(v19 + 36));
    *v22 = a1;
    v22[1] = a2;
  }

  return v16;
}

uint64_t RegexValidator.validate()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  if (*(v1 + 8))
  {
    v4 = *(v1 + 8);
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v5 = *(v4 + 16);
  if (v5)
  {

    v6 = (v4 + 40);
    while (1)
    {
      v7 = v6[3];
      v8 = v6[4];
      v9 = *v6 >> 61;
      if (v9 <= 2)
      {
        goto LABEL_9;
      }

      if (v9 == 3)
      {
        *&v33 = 0;
        *(&v33 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(29);

        *&v33 = 0xD000000000000015;
        *(&v33 + 1) = 0x80000001C0C86CB0;
        MEMORY[0x1C68E0BF0](0xD00000000000001BLL, 0x80000001C0C863B0);
        v30[0] = 1;
        *&v30[8] = v33;
        *&v30[24] = v7;
        *&v31 = v8;
        *(&v31 + 1) = 0xD000000000000015;
        *v32 = 0x80000001C0C86CB0;
        *&v32[16] = 0;
        v32[24] = 29;
        if (*(v2 + 48) != 1)
        {
          v10 = *(v2 + 40);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            goto LABEL_20;
          }

          goto LABEL_21;
        }

        goto LABEL_6;
      }

      if (v9 == 4)
      {
        *&v33 = 0;
        *(&v33 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(29);

        *&v33 = 0xD00000000000001ELL;
        *(&v33 + 1) = 0x80000001C0C86C90;
        MEMORY[0x1C68E0BF0](0xD00000000000001BLL, 0x80000001C0C863B0);
        v30[0] = 1;
        *&v30[8] = v33;
        *&v30[24] = v7;
        *&v31 = v8;
        *(&v31 + 1) = 0xD00000000000001ELL;
        *v32 = 0x80000001C0C86C90;
        *&v32[16] = 0;
        v32[24] = 29;
        if (*(v2 + 48) != 1)
        {
          v10 = *(v2 + 40);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
          }

          v12 = *(v10 + 2);
          v11 = *(v10 + 3);
          v13 = v12 + 1;
          if (v12 >= v11 >> 1)
          {
            goto LABEL_26;
          }

          goto LABEL_22;
        }
      }

      else
      {
LABEL_9:
        *&v33 = 0;
        *(&v33 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(29);

        *&v33 = 0xD000000000000016;
        *(&v33 + 1) = 0x80000001C0C86CD0;
        MEMORY[0x1C68E0BF0](0xD00000000000001BLL, 0x80000001C0C863B0);
        v30[0] = 1;
        *&v30[8] = v33;
        *&v30[24] = v7;
        *&v31 = v8;
        *(&v31 + 1) = 0xD000000000000016;
        *v32 = 0x80000001C0C86CD0;
        *&v32[16] = 0;
        v32[24] = 29;
        if (*(v2 + 48) != 1)
        {
          v10 = *(v2 + 40);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
LABEL_20:
            v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
          }

LABEL_21:
          v12 = *(v10 + 2);
          v11 = *(v10 + 3);
          v13 = v12 + 1;
          if (v12 >= v11 >> 1)
          {
LABEL_26:
            v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v13, 1, v10);
          }

LABEL_22:
          *(v10 + 2) = v13;
          v14 = &v10[80 * v12];
          *(v14 + 2) = *v30;
          v15 = *&v30[16];
          v16 = v31;
          v17 = *v32;
          *(v14 + 89) = *&v32[9];
          *(v14 + 4) = v16;
          *(v14 + 5) = v17;
          *(v14 + 3) = v15;
          *(v2 + 40) = v10;
          goto LABEL_7;
        }
      }

LABEL_6:
      outlined destroy of Diagnostic(v30);
LABEL_7:
      v6 += 6;
      if (!--v5)
      {

        goto LABEL_29;
      }
    }
  }

LABEL_29:
  v34 = MEMORY[0x1E69E7CD0];
  v18 = *(v2 + 32);
  v19 = *(v18 + 16);
  if (v19)
  {
    v20 = (v18 + 64);
    do
    {
      v21 = *(v20 - 3);
      if (v21)
      {
        v22 = *(v20 - 4);
        v29 = *v20;
        swift_bridgeObjectRetain_n();
        v23 = specialized Set._Variant.insert(_:)(&v33, v22, v21);

        if ((v23 & 1) == 0)
        {
          *v30 = v22;
          *&v30[8] = v21;
          *&v30[16] = 0uLL;
          LOBYTE(v31) = 33;
          v33 = v29;
          Diagnostics.error(_:at:)(v30, &v33);
        }

        swift_bridgeObjectRelease_n();
      }

      else
      {
      }

      v20 = (v20 + 56);
      --v19;
    }

    while (v19);
  }

  *v30 = *v2;

  RegexValidator.validateNode(_:)(v30);

  v24 = *(v2 + 8);
  v25 = *(v2 + 16);
  v26 = *(v2 + 24);
  *a1 = *v2;
  *(a1 + 8) = v24;
  *(a1 + 16) = v25;
  *(a1 + 24) = v26;
  if (v26 == 1)
  {
  }

  else
  {
    v28 = *(v2 + 40);

    return specialized Array.append<A>(contentsOf:)(v28);
  }
}

void RegexValidator.validateNode(_:)(unint64_t *a1)
{
  v2 = type metadata accessor for AST.CustomCharacterClass.Member(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AST.Atom(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = *a1 >> 60;
  if (v10 > 4)
  {
    if (v10 <= 8)
    {
      if ((v10 - 5) >= 2)
      {
        if (v10 == 7)
        {
          v67 = xmmword_1C0C7E410;
          v68 = 0uLL;
          LOBYTE(v69) = 29;
          v11 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
LABEL_13:
          v62 = v11;
          v13 = &v62;
LABEL_14:
          Diagnostics.error(_:at:)(&v67, v13);
          return;
        }

        v27 = swift_projectBox();
        outlined init with copy of AST.CustomCharacterClass.Member(v27, v8, type metadata accessor for AST.Atom);
        RegexValidator.validateAtom(_:inCustomCharacterClass:)(v8, 0);
        outlined destroy of AST.CustomCharacterClass.Member(v8, type metadata accessor for AST.Atom);
      }

      return;
    }

    if (v10 != 9)
    {
      if (v10 == 10)
      {
        v67 = xmmword_1C0C7E400;
        v68 = 0uLL;
        LOBYTE(v69) = 29;
        v11 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
        goto LABEL_13;
      }

      return;
    }

    v17 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
    v18 = *(v17 + 16);
    if (!v18)
    {
      return;
    }

    v19 = v17 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v20 = *(v3 + 72);

    do
    {
      outlined init with copy of AST.CustomCharacterClass.Member(v19, v5, type metadata accessor for AST.CustomCharacterClass.Member);
      RegexValidator.validateCharacterClassMember(_:)(v5);
      outlined destroy of AST.CustomCharacterClass.Member(v5, type metadata accessor for AST.CustomCharacterClass.Member);
      v19 += v20;
      --v18;
    }

    while (v18);
LABEL_23:

    return;
  }

  if (v10 <= 1)
  {
    if (v10)
    {
      v44 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v45 = *(v44 + 16);
      if (!v45)
      {
        return;
      }

      v46 = 32;
      do
      {
        *&v67 = *(v44 + v46);
        RegexValidator.validateNode(_:)(&v67);
        v46 += 8;
        --v45;
      }

      while (v45);
    }

    else
    {
      v14 = *(v9 + 16);
      v15 = *(v14 + 16);
      if (!v15)
      {
        return;
      }

      v16 = 32;
      do
      {
        *&v67 = *(v14 + v16);
        RegexValidator.validateNode(_:)(&v67);
        v16 += 8;
        --v15;
      }

      while (v15);
    }

    goto LABEL_23;
  }

  if (v10 == 2)
  {
    v21 = v9 & 0xFFFFFFFFFFFFFFFLL;
    v22 = *(v21 + 96);
    v59 = *(v21 + 80);
    v60 = v22;
    v23 = *(v21 + 120);
    v61 = *(v21 + 112);
    v24 = *(v21 + 32);
    v56[0] = *(v21 + 16);
    v56[1] = v24;
    v25 = *(v21 + 64);
    v57 = *(v21 + 48);
    v58 = v25;
    v71 = v59;
    *v72 = v60;
    *&v72[16] = v61;
    v67 = v56[0];
    v68 = v24;
    v69 = v57;
    v70 = v25;
    v26 = v56[0];
    if (v60 == 1)
    {
      if (!*(&v56[0] + 1))
      {
        goto LABEL_48;
      }
    }

    else
    {
      if (v60)
      {
LABEL_46:
        if (v72[0] > 1u)
        {
          if (v72[0] == 2)
          {
            v62 = v67;
            v63 = v68;
            v64 = v69;
            v65 = v70;
            RegexValidator.validateMatchingOptions(_:)(&v62);
            goto LABEL_56;
          }

          v50 = v69 | *(&v69 + 1) | v70;
          v51 = *(&v70 + 1) | *(&v71 + 1) | v71;
          if (!(v68 | *(&v67 + 1) | v67 | *(&v68 + 1) | v50 | v51))
          {
            goto LABEL_56;
          }

          v52 = v68 | *(&v67 + 1) | *(&v68 + 1) | v50 | v51;
          if (v67 == 1 && !v52)
          {
            goto LABEL_56;
          }

          if (v67 != 2 || v52)
          {
            if ((v67 - 3) <= 2 && !v52)
            {
              goto LABEL_56;
            }

            if (v67 != 6 || v52)
            {
              if ((v67 - 7) > 2 || v52)
              {
                v53 = xmmword_1C0C7E430;
              }

              else
              {
                v53 = xmmword_1C0C7E440;
              }

              v62 = v53;
              goto LABEL_50;
            }

            v48 = 0x80000001C0C86CF0;
            v49 = 0xD000000000000014;
          }

          else
          {
            v48 = 0x80000001C0C86D10;
            v49 = 0xD000000000000012;
          }

LABEL_49:
          *&v62 = v49;
          *(&v62 + 1) = v48;
LABEL_50:
          v63 = 0uLL;
          LOBYTE(v64) = 29;
          v66 = *&v72[8];
          Diagnostics.error(_:at:)(&v62, &v66);
          goto LABEL_56;
        }

        if (!v72[0])
        {
LABEL_56:
          *&v66 = v23;

          RegexValidator.validateNode(_:)(&v66);

          return;
        }

LABEL_48:
        v48 = 0x80000001C0C86D30;
        v49 = 0xD000000000000010;
        goto LABEL_49;
      }

      outlined init with copy of Source.Located<AST.Group.Kind>(&v67, &v62);
    }

    v47 = HIBYTE(*(&v26 + 1)) & 0xFLL;
    if ((*(&v26 + 1) & 0x2000000000000000) == 0)
    {
      v47 = v26 & 0xFFFFFFFFFFFFLL;
    }

    if (!v47)
    {
      v62 = *&v72[8];
      RegexValidator.expectInvalid(at:)(&v62);
    }

    goto LABEL_46;
  }

  v12 = v9 & 0xFFFFFFFFFFFFFFFLL;
  if (v10 == 3)
  {
    v67 = xmmword_1C0C7E420;
    v68 = 0uLL;
    LOBYTE(v69) = 29;
    v11 = *(v12 + 16);
    goto LABEL_13;
  }

  v28 = *(v12 + 16);
  v29 = *(v12 + 24);
  v30 = *(v12 + 48);
  v31 = *(v12 + 56);
  v55 = *(v12 + 57) | ((*(v12 + 61) | (*(v12 + 63) << 16)) << 32);
  v33 = *(v12 + 128);
  v34 = *(v12 + 136);
  *&v67 = *(v12 + 120);
  v32 = v67;

  RegexValidator.validateNode(_:)(&v67);

  *&v67 = v32;
  if ((AST.Node.isQuantifiable.getter() & 1) == 0)
  {
    v62 = 0x13uLL;
    v63 = 0uLL;
    LOBYTE(v64) = 36;
    *&v66 = v32;
    AST.Node._associatedValue.getter(&v67);
    v54 = v29;
    v35 = v31;
    v36 = v33;
    v37 = v34;
    v38 = v30;
    v39 = v28;
    v40 = *(&v68 + 1);
    v41 = v69;
    __swift_project_boxed_opaque_existential_1Tm(&v67, *(&v68 + 1));
    v42 = *(v41 + 16);
    v43 = v41;
    v28 = v39;
    v30 = v38;
    v34 = v37;
    v33 = v36;
    v31 = v35;
    LOBYTE(v29) = v54;
    v42(v56, v40, v43);
    __swift_destroy_boxed_opaque_existential_1Tm(&v67);
    v67 = v56[0];
    Diagnostics.error(_:at:)(&v62, &v67);
  }

  if (((v55 >> 53) & 7) == 3)
  {
    if (v29 & 1) != 0 || (v31)
    {
      *&v67 = v33;
      *(&v67 + 1) = v34;
      RegexValidator.expectInvalid(at:)(&v67);
    }

    else if (v30 < v28)
    {
      *&v67 = v28;
      *(&v67 + 1) = v30;
      v68 = 0uLL;
      LOBYTE(v69) = 34;
      *&v56[0] = v33;
      *(&v56[0] + 1) = v34;
      v13 = v56;
      goto LABEL_14;
    }
  }
}

__n128 RegexValidator.expectInvalid(at:)(unint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = a1[1];
  v5 = *(v1 + 16);
  v6 = (v5 + 32);
  v7 = *(v5 + 16) + 1;
  while (--v7)
  {
    v8 = *v6;
    v6 += 80;
    if (v8 < 2)
    {
      return result;
    }
  }

  strcpy(v18, "UNREACHABLE: ");
  HIWORD(v18[1]) = -4864;
  MEMORY[0x1C68E0BF0](0xD00000000000001ELL, 0x80000001C0C86D50);
  LOBYTE(v19) = 0;
  *(&v19 + 1) = v18[0];
  v20.n128_u64[0] = v18[1];
  v20.n128_u64[1] = v3;
  *v21 = v4;
  memset(&v21[8], 0, 32);
  v21[40] = -1;
  if (*(v1 + 48) == 1)
  {
    outlined destroy of Diagnostic(&v19);
  }

  else
  {
    v10 = *(v1 + 40);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
    }

    v12 = *(v10 + 2);
    v11 = *(v10 + 3);
    v13 = v12 + 1;
    if (v12 >= v11 >> 1)
    {
      v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v10);
      v13 = v12 + 1;
      v10 = v17;
    }

    *(v10 + 2) = v13;
    v14 = &v10[80 * v12];
    *(v14 + 2) = v19;
    result = v20;
    v15 = *v21;
    v16 = *&v21[16];
    *(v14 + 89) = *&v21[25];
    *(v14 + 4) = v15;
    *(v14 + 5) = v16;
    *(v14 + 3) = result;
    *(v2 + 40) = v10;
  }

  return result;
}

uint64_t RegexValidator.validateMatchingOptions(_:)(uint64_t result)
{
  v2 = v1;
  v3 = *(result + 24);
  v32 = *(result + 56);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = (v3 + 48);
    do
    {
      v6 = *(v5 - 16);
      v8 = *(v5 - 1);
      v7 = *v5;
      if (v6 <= 8)
      {
        if (*(v5 - 16) <= 1u)
        {
          if (*(v5 - 16))
          {
            _StringGuts.grow(_:)(29);

            v9 = 0xD000000000000016;
            v33 = 0xD000000000000016;
            v10 = 0x80000001C0C86E10;
            goto LABEL_20;
          }
        }

        else if (v6 - 2 >= 6)
        {
          _StringGuts.grow(_:)(29);

          v9 = 0xD00000000000001ALL;
          v33 = 0xD00000000000001ALL;
          v10 = 0x80000001C0C86DF0;
          goto LABEL_20;
        }
      }

      else if (*(v5 - 16) > 0xEu)
      {
        if (*(v5 - 16) <= 0x11u)
        {
          if (v6 == 15)
          {
            _StringGuts.grow(_:)(29);

            MEMORY[0x1C68E0BF0](0xD00000000000001BLL, 0x80000001C0C863B0);
            LOBYTE(v35) = 1;
            *(&v35 + 1) = 0xD000000000000016;
            *&v36 = 0x80000001C0C86D70;
            *(&v36 + 1) = v8;
            *&v37 = v7;
            *(&v37 + 1) = 0xD000000000000016;
            *v38 = 0x80000001C0C86D70;
          }

          else
          {
            if (v6 == 16)
            {
              _StringGuts.grow(_:)(29);

              v9 = 0xD00000000000001CLL;
              v33 = 0xD00000000000001CLL;
              v10 = 0x80000001C0C86D90;
            }

            else
            {
              _StringGuts.grow(_:)(29);

              v9 = 0xD000000000000012;
              v33 = 0xD000000000000012;
              v10 = 0x80000001C0C86DB0;
            }

LABEL_20:
            MEMORY[0x1C68E0BF0](0xD00000000000001BLL, 0x80000001C0C863B0);
            LOBYTE(v35) = 1;
            *(&v35 + 1) = v33;
            *&v36 = v10;
            *(&v36 + 1) = v8;
            *&v37 = v7;
            *(&v37 + 1) = v9;
            *v38 = v10;
          }

          *&v38[8] = 0;
          *&v38[16] = 0;
          v38[24] = 29;
          if (*(v2 + 48) == 1)
          {
            result = outlined destroy of Diagnostic(&v35);
          }

          else
          {
            v11 = *(v2 + 40);
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 16) + 1, 1, v11);
              v11 = result;
            }

            v13 = *(v11 + 16);
            v12 = *(v11 + 24);
            if (v13 >= v12 >> 1)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v11);
              v11 = result;
            }

            *(v11 + 16) = v13 + 1;
            v14 = (v11 + 80 * v13);
            v14[2] = v35;
            v15 = v36;
            v16 = v37;
            v17 = *v38;
            *(v14 + 89) = *&v38[9];
            v14[4] = v16;
            v14[5] = v17;
            v14[3] = v15;
            *(v2 + 40) = v11;
          }
        }
      }

      else if (v6 - 9 >= 4)
      {
        _StringGuts.grow(_:)(29);

        v9 = 0xD000000000000011;
        v33 = 0xD000000000000011;
        v10 = 0x80000001C0C86DD0;
        goto LABEL_20;
      }

      v5 += 3;
      --v4;
    }

    while (v4);
  }

  v18 = *(v32 + 16);
  if (v18)
  {
    v19 = (v32 + 48);
    do
    {
      v20 = *(v19 - 16);
      v22 = *(v19 - 1);
      v21 = *v19;
      if (v20 <= 8)
      {
        if (*(v19 - 16) <= 1u)
        {
          if (*(v19 - 16))
          {
            _StringGuts.grow(_:)(29);

            v23 = 0xD000000000000016;
            v34 = 0xD000000000000016;
            v24 = 0x80000001C0C86E10;
            goto LABEL_46;
          }
        }

        else if (v20 - 2 >= 6)
        {
          _StringGuts.grow(_:)(29);

          v23 = 0xD00000000000001ALL;
          v34 = 0xD00000000000001ALL;
          v24 = 0x80000001C0C86DF0;
          goto LABEL_46;
        }
      }

      else if (*(v19 - 16) > 0xEu)
      {
        if (*(v19 - 16) <= 0x11u)
        {
          if (v20 == 15)
          {
            _StringGuts.grow(_:)(29);

            MEMORY[0x1C68E0BF0](0xD00000000000001BLL, 0x80000001C0C863B0);
            LOBYTE(v35) = 1;
            *(&v35 + 1) = 0xD000000000000016;
            *&v36 = 0x80000001C0C86D70;
            *(&v36 + 1) = v22;
            *&v37 = v21;
            *(&v37 + 1) = 0xD000000000000016;
            *v38 = 0x80000001C0C86D70;
          }

          else
          {
            if (v20 == 16)
            {
              _StringGuts.grow(_:)(29);

              v23 = 0xD00000000000001CLL;
              v34 = 0xD00000000000001CLL;
              v24 = 0x80000001C0C86D90;
            }

            else
            {
              _StringGuts.grow(_:)(29);

              v23 = 0xD000000000000012;
              v34 = 0xD000000000000012;
              v24 = 0x80000001C0C86DB0;
            }

LABEL_46:
            MEMORY[0x1C68E0BF0](0xD00000000000001BLL, 0x80000001C0C863B0);
            LOBYTE(v35) = 1;
            *(&v35 + 1) = v34;
            *&v36 = v24;
            *(&v36 + 1) = v22;
            *&v37 = v21;
            *(&v37 + 1) = v23;
            *v38 = v24;
          }

          *&v38[8] = 0;
          *&v38[16] = 0;
          v38[24] = 29;
          if (*(v2 + 48) == 1)
          {
            result = outlined destroy of Diagnostic(&v35);
          }

          else
          {
            v25 = *(v2 + 40);
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v25 + 16) + 1, 1, v25);
              v25 = result;
            }

            v27 = *(v25 + 16);
            v26 = *(v25 + 24);
            if (v27 >= v26 >> 1)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v25);
              v25 = result;
            }

            *(v25 + 16) = v27 + 1;
            v28 = (v25 + 80 * v27);
            v28[2] = v35;
            v29 = v36;
            v30 = v37;
            v31 = *v38;
            *(v28 + 89) = *&v38[9];
            v28[4] = v30;
            v28[5] = v31;
            v28[3] = v29;
            *(v2 + 40) = v25;
          }
        }
      }

      else if (v20 - 9 >= 4)
      {
        _StringGuts.grow(_:)(29);

        v23 = 0xD000000000000011;
        v34 = 0xD000000000000011;
        v24 = 0x80000001C0C86DD0;
        goto LABEL_46;
      }

      v19 += 3;
      --v18;
    }

    while (v18);
  }

  return result;
}

uint64_t Unicode.BinaryProperty.rawValue.getter()
{
  result = 0x65485F4949435341;
  switch(*v0)
  {
    case 1:
      return 0x7465626168706C41;
    case 2:
      v3 = 1768188226;
      return v3 | 0x6E6F435F00000000;
    case 3:
      return 0x72694D5F69646942;
    case 4:
      return 0x6465736143;
    case 5:
    case 0x17:
    case 0x2A:
      return 0xD000000000000015;
    case 6:
      return 0x6E67495F65736143;
    case 7:
      return 0xD000000000000017;
    case 8:
      return 0xD000000000000017;
    case 9:
    case 0xF:
    case 0x32:
      return 0xD00000000000001CLL;
    case 0xA:
      return 0xD000000000000017;
    case 0xB:
      return 0xD000000000000017;
    case 0xC:
      return 0xD000000000000017;
    case 0xD:
      return 1752392004;
    case 0xE:
      return 0x7461636572706544;
    case 0x10:
      return 0x6974697263616944;
    case 0x11:
    case 0x21:
    case 0x31:
      return 0xD000000000000013;
    case 0x12:
      return 0x6F435F696A6F6D45;
    case 0x13:
      return 0x6F4D5F696A6F6D45;
    case 0x14:
      return 0x696A6F6D45;
    case 0x15:
    case 0x35:
    case 0x3B:
      return 0xD000000000000012;
    case 0x16:
      return 0x7265646E65747845;
    case 0x18:
      return 0xD00000000000001ALL;
    case 0x19:
    case 0x1A:
    case 0x1B:
      return 0x656D656870617247;
    case 0x1C:
      return 0x696769445F786548;
    case 0x1D:
      return 0x6E6568707948;
    case 0x1E:
      return 0x69746E6F435F4449;
    case 0x1F:
      return 0x706172676F656449;
    case 0x20:
      return 0x74726174535F4449;
    case 0x22:
    case 0x38:
      return 0xD000000000000014;
    case 0x23:
      v3 = 1852403530;
      return v3 | 0x6E6F435F00000000;
    case 0x24:
      return 0xD000000000000017;
    case 0x25:
      v2 = 1702326092;
      goto LABEL_13;
    case 0x26:
      return 1752457549;
    case 0x27:
      return 0xD000000000000017;
    case 0x28:
      return 0xD000000000000010;
    case 0x29:
      return 0xD000000000000022;
    case 0x2B:
    case 0x37:
    case 0x39:
      return 0xD000000000000011;
    case 0x2C:
      return 0x44495F726568744FLL;
    case 0x2D:
      return 0x6F4C5F726568744FLL;
    case 0x2E:
      return 0x614D5F726568744FLL;
    case 0x2F:
      return 0x70555F726568744FLL;
    case 0x30:
      return 0x5F6E726574746150;
    case 0x33:
      return 0x6F697461746F7551;
    case 0x34:
      return 0x6C616369646152;
    case 0x36:
      return 0x746F445F74666F53;
    case 0x3A:
      v2 = 1701867605;
LABEL_13:
      result = v2 | 0x7361637200000000;
      break;
    case 0x3C:
      result = 0x70535F6574696857;
      break;
    case 0x3D:
      result = 0x746E6F435F444958;
      break;
    case 0x3E:
      result = 0x726174535F444958;
      break;
    case 0x3F:
    case 0x40:
    case 0x41:
    case 0x42:
      result = 0x5F73646E61707845;
      break;
    default:
      return result;
  }

  return result;
}

void RegexValidator.validateCharacterProperty(_:at:)(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for AST.Atom.CharacterProperty.Kind(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a2;
  v7 = a2[1];
  outlined init with copy of AST.CustomCharacterClass.Member(a1, v6, type metadata accessor for AST.Atom.CharacterProperty.Kind);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      switch(*v6)
      {
        case 5:
        case 18:
        case 23:
        case 27:
        case 29:
        case 40:
        case 41:
        case 42:
        case 43:
        case 44:
        case 45:
        case 46:
        case 47:
        case 50:
          v14 = *v6;
          v9 = Unicode.BinaryProperty.rawValue.getter();
          *&v16 = 39;
          *(&v16 + 1) = 0xE100000000000000;
          MEMORY[0x1C68E0BF0](v9);

          MEMORY[0x1C68E0BF0](39, 0xE100000000000000);
          v17 = 0;
          v18 = 0;
          v10 = 29;
          goto LABEL_13;
        case 63:
        case 64:
        case 65:
        case 66:
          v14 = *v6;
          v12 = Unicode.BinaryProperty.rawValue.getter();
          *&v16 = 39;
          *(&v16 + 1) = 0xE100000000000000;
          MEMORY[0x1C68E0BF0](v12);

          MEMORY[0x1C68E0BF0](39, 0xE100000000000000);
          v17 = 0;
          v18 = 0;
          v10 = 30;
LABEL_13:
          v19 = v10;
          *&v15 = v8;
          *(&v15 + 1) = v7;
          Diagnostics.error(_:at:)(&v16, &v15);

          break;
        default:
          return;
      }

      return;
    case 4u:
    case 5u:
    case 7u:
    case 8u:
      outlined destroy of AST.CustomCharacterClass.Member(v6, type metadata accessor for AST.Atom.CharacterProperty.Kind);
      return;
    case 0xAu:
      *&v16 = 0xD000000000000016;
      *(&v16 + 1) = 0x80000001C0C86EA0;
      goto LABEL_10;
    case 0xCu:
      v11 = xmmword_1C0C7E460;
      goto LABEL_9;
    case 0xDu:
      v11 = xmmword_1C0C7E450;
LABEL_9:
      v16 = v11;
LABEL_10:
      v17 = 0;
      v18 = 0;
      v19 = 29;
      *&v15 = v8;
      *(&v15 + 1) = v7;
      Diagnostics.error(_:at:)(&v16, &v15);
      break;
    case 0xEu:
      outlined destroy of AST.CustomCharacterClass.Member(v6, type metadata accessor for AST.Atom.CharacterProperty.Kind);
      *&v16 = v8;
      *(&v16 + 1) = v7;
      RegexValidator.expectInvalid(at:)(&v16);
      break;
    default:
      return;
  }
}

void RegexValidator.validateAtom(_:inCustomCharacterClass:)(uint64_t a1, char a2)
{
  v5 = type metadata accessor for AST.Atom.CharacterProperty(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AST.Atom.Kind(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AST.CustomCharacterClass.Member(a1, v10, type metadata accessor for AST.Atom.Kind);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 0xEu:
    case 0xFu:
    case 0x10u:
      return;
    case 2u:
      outlined destroy of AST.CustomCharacterClass.Member(v10, type metadata accessor for AST.Atom.Kind);
      if (a2)
      {
        v11 = 0x80000001C0C86E30;
        v12 = 0xD000000000000029;
        goto LABEL_15;
      }

      return;
    case 3u:
      outlined init with take of AST.Atom.Kind(v10, v7, type metadata accessor for AST.Atom.CharacterProperty);
      v32 = *(a1 + *(type metadata accessor for AST.Atom(0) + 20));
      RegexValidator.validateCharacterProperty(_:at:)(v7, &v32);
      outlined destroy of AST.CustomCharacterClass.Member(v7, type metadata accessor for AST.Atom.CharacterProperty);
      return;
    case 4u:
      v26 = *v10;
      v27 = type metadata accessor for AST.Atom(0);
      if (((1 << v26) & 0x67FFF7BF) == 0)
      {
        v28 = (a1 + *(v27 + 20));
        v30 = *v28;
        v29 = v28[1];
        *&v32 = 0;
        *(&v32 + 1) = 0xE000000000000000;
        MEMORY[0x1C68E0BF0](23591, 0xE200000000000000);
        LOBYTE(v37) = v26;
        AST.Atom.EscapedBuiltin.character.getter();
        Character.write<A>(to:)();

        MEMORY[0x1C68E0BF0](39, 0xE100000000000000);
        v33 = 0uLL;
        LOBYTE(v34) = 29;
        *&v37 = v30;
        *(&v37 + 1) = v29;
        Diagnostics.error(_:at:)(&v32, &v37);
      }

      return;
    case 5u:
    case 6u:
    case 7u:
      outlined destroy of AST.CustomCharacterClass.Member(v10, type metadata accessor for AST.Atom.Kind);
      v11 = 0x80000001C0C86E80;
      v12 = 0xD000000000000010;
      goto LABEL_15;
    case 9u:
      v19 = *(v10 + 3);
      v34 = *(v10 + 2);
      *v35 = v19;
      v20 = *(v10 + 5);
      *&v35[16] = *(v10 + 4);
      v36 = v20;
      v21 = *(v10 + 1);
      v32 = *v10;
      v33 = v21;
      v22 = v32;
      v23 = v34;
      v24 = v36;
      if ((v35[24] & 1) == 0)
      {
        v37 = xmmword_1C0C7E490;
        v38 = 0uLL;
        LOBYTE(v39) = 29;
        countAndFlagsBits = *&v35[8];
        Diagnostics.error(_:at:)(&v37, &countAndFlagsBits);
      }

      if (v23)
      {
        if (v23 != 1)
        {
          v31 = (v22._object >> 56) & 0xF;
          if ((v22._object & 0x2000000000000000) == 0)
          {
            v31 = v22._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
          }

          if (!v31)
          {
            goto LABEL_35;
          }

          *&countAndFlagsBits = *(v2 + 32);
          v46 = CaptureList.indexOfCapture(named:)(v22);
          if (!v46.is_nil)
          {
            goto LABEL_35;
          }

          countAndFlagsBits = v22;
          v43 = 0;
          v44 = 0;
          v45 = 32;
          v41 = v24;
          goto LABEL_34;
        }

        if ((v22._object & 1) == 0)
        {
          *&countAndFlagsBits = 0xD00000000000001ALL;
          *(&countAndFlagsBits + 1) = 0x80000001C0C86EC0;
          v43 = 0;
          v44 = 0;
          v25 = 29;
LABEL_33:
          v45 = v25;
          v41 = v24;
LABEL_34:
          Diagnostics.error(_:at:)(&countAndFlagsBits, &v41);
          goto LABEL_35;
        }

LABEL_25:
        countAndFlagsBits = v24;
        RegexValidator.expectInvalid(at:)(&countAndFlagsBits);
        goto LABEL_35;
      }

      if (v22._object)
      {
        goto LABEL_25;
      }

      if (v22._countAndFlagsBits >= *(*(v2 + 32) + 16))
      {
        countAndFlagsBits = v22._countAndFlagsBits;
        v43 = 0;
        v44 = 0;
        v25 = 31;
        goto LABEL_33;
      }

LABEL_35:
      outlined destroy of AST.Reference(&v32, outlined consume of AST.Reference.Kind);
      return;
    case 0xAu:
      outlined destroy of AST.CustomCharacterClass.Member(v10, type metadata accessor for AST.Atom.Kind);
      v18 = xmmword_1C0C7E480;
      goto LABEL_21;
    case 0xBu:
      outlined destroy of AST.CustomCharacterClass.Member(v10, type metadata accessor for AST.Atom.Kind);
      v18 = xmmword_1C0C7E470;
LABEL_21:
      v32 = v18;
      goto LABEL_22;
    case 0xCu:
      outlined destroy of AST.CustomCharacterClass.Member(v10, type metadata accessor for AST.Atom.Kind);
      v11 = 0x80000001C0C86E60;
      v12 = 0xD000000000000016;
LABEL_15:
      *&v32 = v12;
      *(&v32 + 1) = v11;
LABEL_22:
      v33 = 0uLL;
      LOBYTE(v34) = 29;
      v37 = *(a1 + *(type metadata accessor for AST.Atom(0) + 20));
      Diagnostics.error(_:at:)(&v32, &v37);
      return;
    case 0xDu:
      v13 = *(v10 + 1);
      v32 = *v10;
      v33 = v13;
      v14 = *(v10 + 3);
      v16 = *v10;
      v15 = *(v10 + 1);
      v34 = *(v10 + 2);
      *v35 = v14;
      v37 = v16;
      v38 = v15;
      v17 = *(v10 + 3);
      v39 = *(v10 + 2);
      v40 = v17;
      RegexValidator.validateMatchingOptions(_:)(&v37);
      outlined destroy of AST.MatchingOptionSequence(&v32);
      return;
    case 0x11u:
      v32 = *(a1 + *(type metadata accessor for AST.Atom(0) + 20));
      RegexValidator.expectInvalid(at:)(&v32);
      return;
    default:
      outlined destroy of AST.CustomCharacterClass.Member(v10, type metadata accessor for AST.Atom.Kind);
      return;
  }
}

uint64_t RegexValidator.validateCharacterClassMember(_:)(uint64_t a1)
{
  v2 = type metadata accessor for AST.Atom(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AST.CustomCharacterClass.Range(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AST.CustomCharacterClass.Member(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v36 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v36 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = (&v36 - v19);
  outlined init with copy of AST.CustomCharacterClass.Member(a1, &v36 - v19, type metadata accessor for AST.CustomCharacterClass.Member);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3 || EnumCaseMultiPayload == 4)
    {
      v22 = type metadata accessor for AST.CustomCharacterClass.Member;
      v23 = v20;
      return outlined destroy of AST.CustomCharacterClass.Member(v23, v22);
    }

    v29 = v20[4];
    v30 = *(*v20 + 16);
    if (v30)
    {
      v31 = *v20 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
      v32 = *(v9 + 72);
      do
      {
        outlined init with copy of AST.CustomCharacterClass.Member(v31, v15, type metadata accessor for AST.CustomCharacterClass.Member);
        RegexValidator.validateCharacterClassMember(_:)(v15);
        outlined destroy of AST.CustomCharacterClass.Member(v15, type metadata accessor for AST.CustomCharacterClass.Member);
        v31 += v32;
        --v30;
      }

      while (v30);
    }

    v33 = *(v29 + 16);
    if (v33)
    {
      v34 = v29 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
      v35 = *(v9 + 72);
      do
      {
        outlined init with copy of AST.CustomCharacterClass.Member(v34, v12, type metadata accessor for AST.CustomCharacterClass.Member);
        RegexValidator.validateCharacterClassMember(_:)(v12);
        outlined destroy of AST.CustomCharacterClass.Member(v12, type metadata accessor for AST.CustomCharacterClass.Member);
        v34 += v35;
        --v33;
      }

      while (v33);
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        outlined init with take of AST.Atom.Kind(v20, v7, type metadata accessor for AST.CustomCharacterClass.Range);
        RegexValidator.validateCharacterClassRange(_:)(v7);
        v22 = type metadata accessor for AST.CustomCharacterClass.Range;
        v23 = v7;
      }

      else
      {
        outlined init with take of AST.Atom.Kind(v20, v4, type metadata accessor for AST.Atom);
        RegexValidator.validateAtom(_:inCustomCharacterClass:)(v4, 1);
        v22 = type metadata accessor for AST.Atom;
        v23 = v4;
      }

      return outlined destroy of AST.CustomCharacterClass.Member(v23, v22);
    }

    v24 = v20[3];
    v25 = *(v24 + 16);
    if (v25)
    {
      v26 = v24 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
      v27 = *(v9 + 72);
      do
      {
        outlined init with copy of AST.CustomCharacterClass.Member(v26, v18, type metadata accessor for AST.CustomCharacterClass.Member);
        RegexValidator.validateCharacterClassMember(_:)(v18);
        outlined destroy of AST.CustomCharacterClass.Member(v18, type metadata accessor for AST.CustomCharacterClass.Member);
        v26 += v27;
        --v25;
      }

      while (v25);
    }
  }
}

double RegexValidator.validateCharacterClassRange(_:)(uint64_t a1)
{
  v2 = type metadata accessor for AST.Atom(0);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v29 - v6;
  outlined init with copy of AST.CustomCharacterClass.Member(a1, &v29 - v6, type metadata accessor for AST.Atom);
  v8 = type metadata accessor for AST.CustomCharacterClass.Range(0);
  outlined init with copy of AST.CustomCharacterClass.Member(a1 + *(v8 + 24), v5, type metadata accessor for AST.Atom);
  RegexValidator.validateAtom(_:inCustomCharacterClass:)(v7, 1);
  RegexValidator.validateAtom(_:inCustomCharacterClass:)(v5, 1);
  if ((AST.Atom.isValidCharacterClassRangeBound.getter() & 1) == 0)
  {
    outlined destroy of AST.CustomCharacterClass.Member(v5, type metadata accessor for AST.Atom);
    v31 = 0;
    v32 = 0;
    v30 = 0x11uLL;
    v19 = 36;
LABEL_13:
    v33 = v19;
    v20 = &v7[*(v2 + 20)];
    v21 = *v20;
    v22 = *(v20 + 1);
    outlined destroy of AST.CustomCharacterClass.Member(v7, type metadata accessor for AST.Atom);
    *&v29 = v21;
    *(&v29 + 1) = v22;
LABEL_15:
    *&result = Diagnostics.error(_:at:)(&v30, &v29).n128_u64[0];
    return result;
  }

  if ((AST.Atom.isValidCharacterClassRangeBound.getter() & 1) == 0)
  {
    outlined destroy of AST.CustomCharacterClass.Member(v7, type metadata accessor for AST.Atom);
    v31 = 0;
    v32 = 0;
    v30 = 0x11uLL;
    v33 = 36;
    v23 = &v5[*(v2 + 20)];
    v24 = *v23;
    v25 = *(v23 + 1);
    outlined destroy of AST.CustomCharacterClass.Member(v5, type metadata accessor for AST.Atom);
    *&v29 = v24;
    *(&v29 + 1) = v25;
    goto LABEL_15;
  }

  v9 = AST.Atom.literalCharacterValue.getter();
  if (!v10)
  {
    outlined destroy of AST.CustomCharacterClass.Member(v5, type metadata accessor for AST.Atom);
    *&v30 = 0xD00000000000001DLL;
    *(&v30 + 1) = 0x80000001C0C86EE0;
    v31 = 0;
    v32 = 0;
    v19 = 29;
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  outlined destroy of AST.CustomCharacterClass.Member(v7, type metadata accessor for AST.Atom);
  v13 = AST.Atom.literalCharacterValue.getter();
  if (!v14)
  {

    *&v30 = 0xD00000000000001DLL;
    *(&v30 + 1) = 0x80000001C0C86EE0;
    v31 = 0;
    v32 = 0;
    v33 = 29;
    v26 = &v5[*(v2 + 20)];
    v27 = *v26;
    v28 = *(v26 + 1);
    outlined destroy of AST.CustomCharacterClass.Member(v5, type metadata accessor for AST.Atom);
    *&v29 = v27;
    *(&v29 + 1) = v28;
    goto LABEL_15;
  }

  v15 = v13;
  v16 = v14;
  outlined destroy of AST.CustomCharacterClass.Member(v5, type metadata accessor for AST.Atom);
  v17 = v15 == v11 && v16 == v12;
  if (!v17 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    *&v30 = v11;
    *(&v30 + 1) = v12;
    v31 = v15;
    v32 = v16;
    v33 = 35;
    v29 = *(a1 + *(v8 + 20));
    Diagnostics.error(_:at:)(&v30, &v29);
  }

  return result;
}

unint64_t specialized Source.peekPrefix(maxLength:_:)(uint64_t a1, char a2, void *a3)
{
  result = String.subscript.getter();
  v7 = result;
  v8 = v6;
  if (a2)
  {
    if (v6 >> 14 < result >> 14)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }
  }

  else
  {
    if (a1 < 0)
    {
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      return result;
    }

    result = Substring.index(_:offsetBy:limitedBy:)();
    if (v9)
    {
      v10 = v8;
    }

    else
    {
      v10 = result;
    }

    if (v10 >> 14 < v7 >> 14)
    {
      goto LABEL_27;
    }
  }

  v11 = Substring.subscript.getter();
  v13 = v12;

  if (v11 >> 14 != v13 >> 14)
  {
    v14 = v11 >> 14;
    do
    {
      v18 = Substring.subscript.getter();
      v20 = v19;
      if ((Character.isLetter.getter() & 1) != 0 || (Character.isNumber.getter() & 1) != 0 || v18 == 95 && v20 == 0xE100000000000000)
      {
      }

      else
      {
        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v21 & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      result = Substring.index(after:)();
      v14 = result >> 14;
    }

    while (result >> 14 != v13 >> 14);
  }

  v14 = v13 >> 14;
LABEL_11:
  if (v14 < v11 >> 14)
  {
    __break(1u);
    goto LABEL_25;
  }

  v15 = Substring.subscript.getter();
  v17 = v16;

  if (!((v15 ^ v17) >> 14))
  {

    return 0;
  }

  return v15;
}

{
  v28 = type metadata accessor for Unicode.Scalar.Properties();
  v5 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = String.subscript.getter();
  v10 = result;
  v11 = v9;
  if (a2)
  {
    if (v9 >> 14 < result >> 14)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }
  }

  else
  {
    if (a1 < 0)
    {
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      return result;
    }

    result = Substring.index(_:offsetBy:limitedBy:)();
    if (v12)
    {
      v13 = v11;
    }

    else
    {
      v13 = result;
    }

    if (v13 >> 14 < v10 >> 14)
    {
      goto LABEL_36;
    }
  }

  v14 = Substring.subscript.getter();
  v16 = v15;

  v17 = v14 >> 14;
  if (v14 >> 14 != v16 >> 14)
  {
    v26 = v14 >> 14;
    v27 = v16 >> 14;
    v18 = v14 >> 14;
    while (1)
    {
      result = Substring.subscript.getter();
      if (!((v19 & 0x2000000000000000) != 0 ? HIBYTE(v19) & 0xF : result & 0xFFFFFFFFFFFFLL))
      {
        break;
      }

      if ((v19 & 0x1000000000000000) != 0)
      {
        _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
      }

      else
      {
        if ((v19 & 0x2000000000000000) != 0)
        {
          v29 = result;
          v30 = v19 & 0xFFFFFFFFFFFFFFLL;
        }

        else if ((result & 0x1000000000000000) == 0)
        {
          _StringObject.sharedUTF8.getter();
        }

        _decodeScalar(_:startingAt:)();
      }

      Unicode.Scalar.properties.getter();
      v21 = Unicode.Scalar.Properties.isPatternWhitespace.getter();
      (*(v5 + 8))(v7, v28);

      if ((v21 & 1) == 0)
      {
        goto LABEL_27;
      }

      result = Substring.index(after:)();
      v18 = result >> 14;
      if (result >> 14 == v27)
      {
        v18 = v27;
LABEL_27:
        v17 = v26;
        goto LABEL_28;
      }
    }

    __break(1u);
    goto LABEL_33;
  }

  v18 = v16 >> 14;
LABEL_28:
  if (v18 < v17)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v22 = Substring.subscript.getter();
  v24 = v23;

  if (!((v22 ^ v24) >> 14))
  {

    return 0;
  }

  return v22;
}

{
  result = String.subscript.getter();
  v7 = result;
  v8 = v6;
  if (a2)
  {
    if (v6 >> 14 < result >> 14)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }
  }

  else
  {
    if (a1 < 0)
    {
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

    result = Substring.index(_:offsetBy:limitedBy:)();
    if (v9)
    {
      v10 = v8;
    }

    else
    {
      v10 = result;
    }

    if (v10 >> 14 < v7 >> 14)
    {
      goto LABEL_26;
    }
  }

  v11 = Substring.subscript.getter();
  v13 = v12;

  v14 = v11 >> 14;
  if (v11 >> 14 == v13 >> 14)
  {
    v15 = v13 >> 14;
  }

  else
  {
    v15 = v11 >> 14;
    do
    {
      if (Substring.subscript.getter() == 123 && v17 == 0xE100000000000000)
      {
      }

      else
      {
        v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v16 & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      result = Substring.index(after:)();
      v15 = result >> 14;
    }

    while (result >> 14 != v13 >> 14);
    v15 = v13 >> 14;
LABEL_18:
    v14 = v11 >> 14;
  }

  if (v15 < v14)
  {
    __break(1u);
    goto LABEL_24;
  }

  v18 = Substring.subscript.getter();
  v20 = v19;

  if (!((v18 ^ v20) >> 14))
  {

    return 0;
  }

  return v18;
}

{
  result = String.subscript.getter();
  v7 = result;
  v8 = v6;
  if (a2)
  {
    if (v6 >> 14 < result >> 14)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }
  }

  else
  {
    if (a1 < 0)
    {
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      return result;
    }

    result = Substring.index(_:offsetBy:limitedBy:)();
    if (v9)
    {
      v10 = v8;
    }

    else
    {
      v10 = result;
    }

    if (v10 >> 14 < v7 >> 14)
    {
      goto LABEL_32;
    }
  }

  v11 = Substring.subscript.getter();
  v13 = v12;

  v14 = v11 >> 14;
  if (v11 >> 14 != v13 >> 14)
  {
    v15 = v11 >> 14;
    while (1)
    {
      v17 = Substring.subscript.getter();
      v19 = v18;
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        break;
      }

      if (v17 == 48 && v19 == 0xE100000000000000)
      {
        goto LABEL_12;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {

        goto LABEL_23;
      }

      if (v17 != 55 || v19 != 0xE100000000000000)
      {
LABEL_12:
        v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v16)
        {
          goto LABEL_23;
        }
      }

      else
      {
      }

      result = Substring.index(after:)();
      v15 = result >> 14;
      if (result >> 14 == v13 >> 14)
      {
        v15 = v13 >> 14;
LABEL_23:
        v14 = v11 >> 14;
        goto LABEL_24;
      }
    }

    __break(1u);
    goto LABEL_29;
  }

  v15 = v13 >> 14;
LABEL_24:
  if (v15 < v14)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v20 = Substring.subscript.getter();
  v22 = v21;

  if (!((v20 ^ v22) >> 14))
  {

    return 0;
  }

  return v20;
}

{
  result = String.subscript.getter();
  v7 = result;
  v8 = v6;
  if (a2)
  {
    if (v6 >> 14 < result >> 14)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }
  }

  else
  {
    if (a1 < 0)
    {
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      return result;
    }

    result = Substring.index(_:offsetBy:limitedBy:)();
    if (v9)
    {
      v10 = v8;
    }

    else
    {
      v10 = result;
    }

    if (v10 >> 14 < v7 >> 14)
    {
      goto LABEL_21;
    }
  }

  v11 = Substring.subscript.getter();
  v13 = v12;

  if (v11 >> 14 == v13 >> 14)
  {
    goto LABEL_10;
  }

  Substring.subscript.getter();
  Character.hexDigitValue.getter();
  v16 = v15;

  v14 = v11 >> 14;
  if ((v16 & 1) == 0)
  {
    while (1)
    {
      result = Substring.index(after:)();
      v14 = result >> 14;
      if (result >> 14 == v13 >> 14)
      {
        break;
      }

      Substring.subscript.getter();
      Character.hexDigitValue.getter();
      v18 = v17;

      if (v18)
      {
        goto LABEL_14;
      }
    }

LABEL_10:
    v14 = v13 >> 14;
  }

LABEL_14:
  if (v14 < v11 >> 14)
  {
    __break(1u);
    goto LABEL_19;
  }

  v19 = Substring.subscript.getter();
  v21 = v20;

  if (!((v19 ^ v21) >> 14))
  {

    return 0;
  }

  return v19;
}

{
  result = String.subscript.getter();
  v7 = result;
  v8 = v6;
  if (a2)
  {
    if (v6 >> 14 < result >> 14)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }
  }

  else
  {
    if (a1 < 0)
    {
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      return result;
    }

    result = Substring.index(_:offsetBy:limitedBy:)();
    if (v9)
    {
      v10 = v8;
    }

    else
    {
      v10 = result;
    }

    if (v10 >> 14 < v7 >> 14)
    {
      goto LABEL_21;
    }
  }

  v11 = Substring.subscript.getter();
  v13 = v12;

  if (v11 >> 14 == v13 >> 14)
  {
    goto LABEL_10;
  }

  Substring.subscript.getter();
  v15 = Character.isNumber.getter();

  v14 = v11 >> 14;
  if (v15)
  {
    while (1)
    {
      result = Substring.index(after:)();
      v14 = result >> 14;
      if (result >> 14 == v13 >> 14)
      {
        break;
      }

      Substring.subscript.getter();
      v16 = Character.isNumber.getter();

      if ((v16 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

LABEL_10:
    v14 = v13 >> 14;
  }

LABEL_14:
  if (v14 < v11 >> 14)
  {
    __break(1u);
    goto LABEL_19;
  }

  v17 = Substring.subscript.getter();
  v19 = v18;

  if (!((v17 ^ v19) >> 14))
  {

    return 0;
  }

  return v17;
}

unint64_t Source.peekPrefix(maxLength:_:)(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = String.subscript.getter();
  v7 = result;
  v8 = v6;
  if (a2)
  {
    if (v6 >> 14 < result >> 14)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }
  }

  else
  {
    if (a1 < 0)
    {
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      return result;
    }

    result = Substring.index(_:offsetBy:limitedBy:)();
    if (v9)
    {
      v10 = v8;
    }

    else
    {
      v10 = result;
    }

    if (v10 >> 14 < v7 >> 14)
    {
      goto LABEL_24;
    }
  }

  v11 = Substring.subscript.getter();
  v13 = v12;

  v14 = v11 >> 14;
  if (v11 >> 14 == v13 >> 14)
  {
    v15 = v13 >> 14;
  }

  else
  {
    v16 = Substring.subscript.getter();
    v17 = a3(v16);

    v15 = v11 >> 14;
    if (v17)
    {
      while (1)
      {
        result = Substring.index(after:)();
        v15 = result >> 14;
        if (result >> 14 == v13 >> 14)
        {
          break;
        }

        v18 = Substring.subscript.getter();
        v19 = a3(v18);

        if ((v19 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      v15 = v13 >> 14;
LABEL_16:
      v14 = v11 >> 14;
    }
  }

  if (v15 < v14)
  {
    __break(1u);
    goto LABEL_22;
  }

  v20 = Substring.subscript.getter();
  v22 = v21;

  if ((v20 ^ v22) < 0x4000)
  {

    return 0;
  }

  return v20;
}

uint64_t specialized Sequence<>.starts<A>(with:)(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a3 ^ a4;

  if (v7 >= 0x4000)
  {
    while (1)
    {
      v11 = Substring.subscript.getter();
      v13 = v12;
      v14 = Substring.index(after:)();
      v15 = String.Iterator.next()();
      if (!v15.value._object)
      {
        break;
      }

      if (v11 == v15.value._countAndFlagsBits && v15.value._object == v13)
      {
      }

      else
      {
        v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v10 & 1) == 0)
        {
          goto LABEL_3;
        }
      }

      if ((v14 ^ a4) < 0x4000)
      {
        goto LABEL_2;
      }
    }
  }

  else
  {
LABEL_2:
    object = String.Iterator.next()().value._object;

    if (object)
    {
LABEL_3:

      return 0;
    }
  }

  return 1;
}

uint64_t Source.Location.range.setter(uint64_t result, uint64_t a2)
{
  *v2 = result;
  v2[1] = a2;
  return result;
}

double Source.Location.init<A>(_:in:)@<D0>(uint64_t a1@<X0>, uint64_t a3@<X2>, _OWORD *a5@<X8>)
{
  lazy protocol witness table accessor for type String and conformance String();
  dispatch thunk of RangeExpression.relative<A>(to:)();
  (*(*(a3 - 8) + 8))(a1, a3);

  result = *&v9;
  *a5 = v9;
  return result;
}

uint64_t Source.Location.init(from:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t *a4@<X8>)
{

  if (a2 >> 14 < a1 >> 14)
  {
    __break(1u);
  }

  else
  {
    *a4 = a1;
    a4[1] = a2;
  }

  return result;
}

uint64_t AST.Empty.hash(into:)()
{
  v1 = v0[1];
  MEMORY[0x1C68E11C0](*v0 >> 14);
  return MEMORY[0x1C68E11C0](v1 >> 14);
}

Swift::Int AST.Empty.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  MEMORY[0x1C68E11C0](v1 >> 14);
  MEMORY[0x1C68E11C0](v2 >> 14);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AST.Empty(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  Hasher.init(_seed:)();
  MEMORY[0x1C68E11C0](v2 >> 14);
  MEMORY[0x1C68E11C0](v3 >> 14);
  return Hasher._finalize()();
}

__n128 Source.LocatedError.location.getter@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  result = *(v2 + *(a1 + 36));
  *a2 = result;
  return result;
}

uint64_t Source.LocatedError.init(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  (*(*(a4 - 8) + 32))(a6, a1, a4);
  result = type metadata accessor for Source.LocatedError(0, a4, a5, v11);
  v13 = (a6 + *(result + 36));
  *v13 = a2;
  v13[1] = a3;
  return result;
}

uint64_t Source.LocatedError._typeErasedError.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = swift_allocError();
  (*(*(v2 - 8) + 16))(v4, v1, v2);
  return v3;
}

__n128 Source.Located.location.getter@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  result = *(v2 + *(a1 + 28));
  *a2 = result;
  return result;
}

__n128 Source.Located.location.setter(__n128 *a1, uint64_t a2)
{
  result = *a1;
  *(v2 + *(a2 + 28)) = *a1;
  return result;
}

int64x2_t Source.Located.init(faking:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 32))(a3, a1, a2);
  v7 = type metadata accessor for Source.Located(0, a2, v5, v6);
  result = vdupq_n_s64(0xFuLL);
  *(a3 + *(v7 + 28)) = result;
  return result;
}

uint64_t Source.Located.map<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v9 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v12(v4);
  if (!v5)
  {
    v14 = (v4 + *(a2 + 28));
    v15 = *v14;
    v16 = v14[1];
    (*(v9 + 32))(a4, v11, a3);
    result = type metadata accessor for Source.Located(0, a3, v17, v18);
    v19 = (a4 + *(result + 28));
    *v19 = v15;
    v19[1] = v16;
  }

  return result;
}

uint64_t specialized Source.Located<A>.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  if (v1[4])
  {
    MEMORY[0x1C68E1190](1);
    String.hash(into:)();
  }

  else
  {
    v5 = v1[2];
    v4 = v1[3];
    MEMORY[0x1C68E1190](0);
    if (v3)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      Hasher._combine(_:)(1u);
      MEMORY[0x1C68E1190](v2);
    }

    MEMORY[0x1C68E11C0](v5 >> 14);
    MEMORY[0x1C68E11C0](v4 >> 14);
  }

  v6 = v1[6];
  MEMORY[0x1C68E11C0](v1[5] >> 14);
  return MEMORY[0x1C68E11C0](v6 >> 14);
}

uint64_t Source.Located<A>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  dispatch thunk of Hashable.hash(into:)();
  v5 = (v3 + *(a2 + 28));
  v6 = v5[1];
  MEMORY[0x1C68E11C0](*v5 >> 14);
  return MEMORY[0x1C68E11C0](v6 >> 14);
}

Swift::Int Source.Located<A>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  Source.Located<A>.hash(into:)(v5, a1, a2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance <A> Source.Located<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  Hasher.init(_seed:)();
  Source.Located<A>.hash(into:)(v6, a2, v4);
  return Hasher._finalize()();
}

BOOL protocol witness for SetAlgebra.insert(_:) in conformance SyntaxOptions(void *a1, uint64_t *a2)
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

void *protocol witness for SetAlgebra.remove(_:) in conformance SyntaxOptions@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *protocol witness for SetAlgebra.update(with:) in conformance SyntaxOptions@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance SyntaxOptions@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t specialized _ASTPrintable._dump()()
{
  v1 = *(v0 + 104);
  v20 = v1;
  v21 = v1;
  outlined init with copy of AST.Node(&v21, &v18);
  if (v1 >> 60 == 6)
  {
    goto LABEL_11;
  }

  v2 = specialized _ASTPrintable._dump()(v1);
  v4 = v3;

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {

LABEL_11:
    v6 = MEMORY[0x1E69E7CC0];
    goto LABEL_12;
  }

  v6 = MEMORY[0x1E69E7CC0];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
  }

  v8 = *(v6 + 2);
  v7 = *(v6 + 3);
  if (v8 >= v7 >> 1)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1, v6);
  }

  *(v6 + 2) = v8 + 1;
  v9 = &v6[16 * v8];
  *(v9 + 4) = v2;
  *(v9 + 5) = v4;
LABEL_12:
  outlined destroy of AST.Node(&v20);
  v18 = 0x5F70756F7267;
  v19 = 0xE600000000000000;
  v10 = AST.Group.Kind._dumpBase.getter();
  MEMORY[0x1C68E0BF0](v10);

  v11 = v18;
  v12 = *(v6 + 2);
  if (!v12)
  {
LABEL_20:

    return v11;
  }

  if (v12 != 1)
  {
    goto LABEL_17;
  }

  v13 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v13 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
LABEL_17:
    MEMORY[0x1C68E0BF0](40, 0xE100000000000000);
    swift_getCanonicalSpecializedMetadata();
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &unk_1F402B990, &cache variable for noncanonical specialized generic type metadata for [String], MEMORY[0x1E69E6310]);
    v14 = BidirectionalCollection<>.joined(separator:)();
    v16 = v15;

    MEMORY[0x1C68E0BF0](v14, v16);

    MEMORY[0x1C68E0BF0](41, 0xE100000000000000);
    return v18;
  }

  if (*(v6 + 2))
  {
    v11 = *(v6 + 4);

    goto LABEL_20;
  }

  __break(1u);
  return result;
}

{
  v1 = *(v0 + 104);
  v25 = v1;
  v26 = v1;
  outlined init with copy of AST.Node(&v26, &v23);
  if (v1 >> 60 == 6)
  {
    goto LABEL_11;
  }

  v2 = specialized _ASTPrintable._dump()(v1);
  v4 = v3;

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {

LABEL_11:
    v6 = MEMORY[0x1E69E7CC0];
    goto LABEL_12;
  }

  v6 = MEMORY[0x1E69E7CC0];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
  }

  v8 = *(v6 + 2);
  v7 = *(v6 + 3);
  if (v8 >= v7 >> 1)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1, v6);
  }

  *(v6 + 2) = v8 + 1;
  v9 = &v6[16 * v8];
  *(v9 + 4) = v2;
  *(v9 + 5) = v4;
LABEL_12:
  outlined destroy of AST.Node(&v25);
  v10 = *(v0 + 80);
  v23 = 0x5F746E617571;
  v24 = 0xE600000000000000;
  v11 = AST.Quantification.Amount._dumpBase.getter();
  MEMORY[0x1C68E0BF0](v11);

  MEMORY[0x1C68E0BF0](95, 0xE100000000000000);
  v12 = 0xE900000000000074;
  v13 = 0x6E617463756C6572;
  if (v10 != 1)
  {
    v13 = 0x6973736573736F70;
    v12 = 0xEA00000000006576;
  }

  if (v10)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0x7265676165;
  }

  if (v10)
  {
    v15 = v12;
  }

  else
  {
    v15 = 0xE500000000000000;
  }

  MEMORY[0x1C68E0BF0](v14, v15);

  v16 = v23;
  v17 = *(v6 + 2);
  if (!v17)
  {
    goto LABEL_28;
  }

  if (v17 != 1)
  {
    goto LABEL_25;
  }

  v18 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v18 = v23 & 0xFFFFFFFFFFFFLL;
  }

  if (v18)
  {
LABEL_25:
    MEMORY[0x1C68E0BF0](40, 0xE100000000000000);
    swift_getCanonicalSpecializedMetadata();
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &unk_1F402B990, &cache variable for noncanonical specialized generic type metadata for [String], MEMORY[0x1E69E6310]);
    v19 = BidirectionalCollection<>.joined(separator:)();
    v21 = v20;

    MEMORY[0x1C68E0BF0](v19, v21);

    MEMORY[0x1C68E0BF0](41, 0xE100000000000000);
    return v23;
  }

  if (*(v6 + 2))
  {
    v16 = *(v6 + 4);

LABEL_28:

    return v16;
  }

  __break(1u);
  return result;
}

{
  v1 = 0xE90000000000003ELL;
  v2 = 0x64696C61766E693CLL;
  v3 = 0x64696C61766E693CLL;
  if ((*(v0 + 8) & 1) == 0)
  {
    v3 = dispatch thunk of CustomStringConvertible.description.getter();
  }

  v4 = *(v0 + 40);
  v7 = v3;
  MEMORY[0x1C68E0BF0](46, 0xE100000000000000);
  if ((v4 & 1) == 0)
  {
    v2 = dispatch thunk of CustomStringConvertible.description.getter();
    v1 = v5;
  }

  MEMORY[0x1C68E0BF0](v2, v1);

  return v7;
}

uint64_t specialized _ASTPrintable._dump()(uint64_t a1)
{
  v31[5] = a1;
  AST.Node._associatedValue.getter(v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser8_ASTNode_pMd, &_s12_RegexParser8_ASTNode_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser10_ASTParent_pMd, &_s12_RegexParser10_ASTParent_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v34 = 0;
    v32 = 0u;
    v33 = 0u;
    outlined destroy of _ASTParent?(&v32, &_s12_RegexParser10_ASTParent_pSgMd, &_s12_RegexParser10_ASTParent_pSgMR);
    v31[0] = a1;
    AST.Node._associatedValue.getter(&v32);
    v19 = *(&v33 + 1);
    v20 = v34;
    __swift_project_boxed_opaque_existential_1Tm(&v32, *(&v33 + 1));
    v21 = (*(*(v20 + 8) + 24))(v19);
    __swift_destroy_boxed_opaque_existential_1Tm(&v32);
    return v21;
  }

  v2 = *(&v33 + 1);
  v3 = v34;
  __swift_project_boxed_opaque_existential_1Tm(&v32, *(&v33 + 1));
  v4 = (*(v3 + 16))(v2, v3);
  result = __swift_destroy_boxed_opaque_existential_1Tm(&v32);
  v6 = *(v4 + 16);
  if (!v6)
  {
    v8 = MEMORY[0x1E69E7CC0];
    goto LABEL_20;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  do
  {
    v9 = v7;
    while (1)
    {
      if (v9 >= *(v4 + 16))
      {
        __break(1u);
        goto LABEL_31;
      }

      v10 = *(v4 + 32 + 8 * v9);
      if (v10 >> 60 != 6)
      {
        break;
      }

LABEL_5:
      if (v6 == ++v9)
      {
        goto LABEL_20;
      }
    }

    v11 = specialized _ASTPrintable._dump()(v10);
    v13 = v12;

    v14 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v14 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (!v14)
    {

      goto LABEL_5;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v16 = *(v8 + 16);
    v15 = *(v8 + 24);
    v17 = v16 + 1;
    if (v16 >= v15 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v8);
      v17 = v16 + 1;
      v8 = result;
    }

    v7 = v9 + 1;
    *(v8 + 16) = v17;
    v18 = v8 + 16 * v16;
    *(v18 + 32) = v11;
    *(v18 + 40) = v13;
  }

  while (v6 - 1 != v9);
LABEL_20:

  v31[0] = a1;
  AST.Node._associatedValue.getter(&v32);
  v23 = *(&v33 + 1);
  v22 = v34;
  __swift_project_boxed_opaque_existential_1Tm(&v32, *(&v33 + 1));
  v21 = (*(*(v22 + 8) + 24))(v23);
  v25 = v24;
  __swift_destroy_boxed_opaque_existential_1Tm(&v32);
  v26 = *(v8 + 16);
  if (v26)
  {
    if (v26 != 1)
    {
      goto LABEL_25;
    }

    v27 = HIBYTE(v25) & 0xF;
    if ((v25 & 0x2000000000000000) == 0)
    {
      v27 = v21 & 0xFFFFFFFFFFFFLL;
    }

    if (v27)
    {
LABEL_25:
      *&v32 = v21;
      *(&v32 + 1) = v25;
      MEMORY[0x1C68E0BF0](40, 0xE100000000000000);
      v31[0] = v8;
      swift_getCanonicalSpecializedMetadata();
      lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &unk_1F402B990, &cache variable for noncanonical specialized generic type metadata for [String], MEMORY[0x1E69E6310]);
      v28 = BidirectionalCollection<>.joined(separator:)();
      v30 = v29;

      MEMORY[0x1C68E0BF0](v28, v30);

      MEMORY[0x1C68E0BF0](41, 0xE100000000000000);
      return v32;
    }

    if (*(v8 + 16))
    {
      v21 = *(v8 + 32);

      goto LABEL_28;
    }

LABEL_31:
    __break(1u);
  }

  else
  {
LABEL_28:

    return v21;
  }

  return result;
}

{
  v2 = *(a1 + 16);

  if (v2)
  {
    v4 = 0;
    v5 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v6 = v4;
      while (1)
      {
        if (v6 >= v2)
        {
          __break(1u);
LABEL_25:
          __break(1u);
          return result;
        }

        v4 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_25;
        }

        v7 = *(a1 + 32 + 8 * v6);
        if (v7 >> 60 != 6)
        {
          break;
        }

LABEL_5:
        ++v6;
        if (v4 == v2)
        {
          goto LABEL_19;
        }
      }

      v8 = specialized _ASTPrintable._dump()(v7);
      v10 = v9;

      v11 = HIBYTE(v10) & 0xF;
      if ((v10 & 0x2000000000000000) == 0)
      {
        v11 = v8 & 0xFFFFFFFFFFFFLL;
      }

      if (!v11)
      {
        break;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 16) + 1, 1, v5);
        v5 = result;
      }

      v13 = *(v5 + 16);
      v12 = *(v5 + 24);
      if (v13 >= v12 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v5);
        v5 = result;
      }

      *(v5 + 16) = v13 + 1;
      v14 = v5 + 16 * v13;
      *(v14 + 32) = v8;
      *(v14 + 40) = v10;
      if (v4 == v2)
      {
        goto LABEL_19;
      }
    }

    goto LABEL_5;
  }

  v5 = MEMORY[0x1E69E7CC0];
LABEL_19:

  v15 = *(v5 + 16);
  if (v15)
  {
    if (v15 == 1)
    {
      v16 = *(v5 + 32);

      return v16;
    }

    else
    {
      MEMORY[0x1C68E0BF0](40, 0xE100000000000000);
      swift_getCanonicalSpecializedMetadata();
      lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &unk_1F402B990, &cache variable for noncanonical specialized generic type metadata for [String], MEMORY[0x1E69E6310]);
      v17 = BidirectionalCollection<>.joined(separator:)();
      v19 = v18;

      MEMORY[0x1C68E0BF0](v17, v19);

      MEMORY[0x1C68E0BF0](41, 0xE100000000000000);
      return 0;
    }
  }

  else
  {

    return 0;
  }
}

void specialized _ASTPrintable._dump()()
{
  v1 = v0[1];
  v27 = *v0;
  v28 = v1;
  v2 = v0[3];
  v29 = v0[2];
  v30 = v2;
  v31[0] = v27;
  v31[1] = v1;
  v31[2] = v29;
  v31[3] = v2;
  v3 = v1;
  v4 = (DWORD2(v29) >> 1) & 3;
  if (v4 > 1)
  {
    if (v4 != 2)
    {
      v6 = MEMORY[0x1E69E7CC0];
      v7 = *(MEMORY[0x1E69E7CC0] + 16);
      v8 = MEMORY[0x1E69E7CC0];
      if (!v7)
      {
        goto LABEL_21;
      }

      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (!v4)
  {
LABEL_5:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12_RegexParser3ASTV4NodeOGMd, &_ss23_ContiguousArrayStorageCy12_RegexParser3ASTV4NodeOGMR);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1C0C7E2F0;
    *(v6 + 32) = v3;
    outlined init with copy of AST.AbsentFunction(v31, v26);
    v7 = 1;
    goto LABEL_7;
  }

  v5 = *(&v29 + 1) & 0xFFFFFFFFFFFFFFF9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12_RegexParser3ASTV4NodeOGMd, &_ss23_ContiguousArrayStorageCy12_RegexParser3ASTV4NodeOGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C0C7E300;
  *(v6 + 32) = v3;
  *(v6 + 40) = v5;
  outlined init with copy of AST.AbsentFunction(v31, v26);
  v7 = 2;
LABEL_7:
  v9 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  do
  {
    v10 = v9;
    while (1)
    {
      if (v10 >= *(v6 + 16))
      {
        __break(1u);
        goto LABEL_31;
      }

      v11 = *(v6 + 32 + 8 * v10);
      if (v11 >> 60 != 6)
      {
        break;
      }

LABEL_9:
      if (v7 == ++v10)
      {
        goto LABEL_21;
      }
    }

    v12 = specialized _ASTPrintable._dump()(v11);
    v14 = v13;

    v15 = HIBYTE(v14) & 0xF;
    if ((v14 & 0x2000000000000000) == 0)
    {
      v15 = v12 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15)
    {

      goto LABEL_9;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
    }

    v17 = *(v8 + 2);
    v16 = *(v8 + 3);
    if (v17 >= v16 >> 1)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v8);
    }

    v9 = v10 + 1;
    *(v8 + 2) = v17 + 1;
    v18 = &v8[16 * v17];
    *(v18 + 4) = v12;
    *(v18 + 5) = v14;
  }

  while (v7 - 1 != v10);
LABEL_21:

  v19 = AST.AbsentFunction._dumpBase.getter();
  v21 = *(v8 + 2);
  if (v21)
  {
    if (v21 != 1)
    {
      goto LABEL_26;
    }

    v22 = HIBYTE(v20) & 0xF;
    if ((v20 & 0x2000000000000000) == 0)
    {
      v22 = v19 & 0xFFFFFFFFFFFFLL;
    }

    if (!v22)
    {

      if (*(v8 + 2))
      {
      }

      else
      {
LABEL_31:
        __break(1u);
      }
    }

    else
    {
LABEL_26:
      v26[0] = v19;
      v26[1] = v20;
      MEMORY[0x1C68E0BF0](40, 0xE100000000000000);
      v26[8] = v8;
      swift_getCanonicalSpecializedMetadata();
      lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &unk_1F402B990, &cache variable for noncanonical specialized generic type metadata for [String], MEMORY[0x1E69E6310]);
      v23 = BidirectionalCollection<>.joined(separator:)();
      v25 = v24;

      MEMORY[0x1C68E0BF0](v23, v25);

      MEMORY[0x1C68E0BF0](41, 0xE100000000000000);
    }
  }

  else
  {
  }
}

uint64_t specialized _ASTPrintable._dump()(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    v4 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  v2 = 0;
  v3 = result + 32;
  v4 = MEMORY[0x1E69E7CC0];
  do
  {
    v5 = v2;
    while (1)
    {
      if (v5 >= v1)
      {
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v2 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_30;
      }

      v6 = *(v3 + 8 * v5);
      if (v6 >> 60 != 6)
      {
        break;
      }

LABEL_5:
      ++v5;
      if (v2 == v1)
      {
        goto LABEL_19;
      }
    }

    v7 = specialized _ASTPrintable._dump()(v6);
    v9 = v8;

    v10 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v10 = v7 & 0xFFFFFFFFFFFFLL;
    }

    if (!v10)
    {

      goto LABEL_5;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 16) + 1, 1, v4);
      v4 = result;
    }

    v12 = *(v4 + 16);
    v11 = *(v4 + 24);
    if (v12 >= v11 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v4);
      v4 = result;
    }

    *(v4 + 16) = v12 + 1;
    v13 = v4 + 16 * v12;
    *(v13 + 32) = v7;
    *(v13 + 40) = v9;
  }

  while (v2 != v1);
LABEL_19:
  strcpy(v21, "alternation<");
  BYTE5(v21[1]) = 0;
  HIWORD(v21[1]) = -5120;
  v14 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1C68E0BF0](v14);

  MEMORY[0x1C68E0BF0](62, 0xE100000000000000);
  v15 = v21[0];
  v16 = *(v4 + 16);
  if (v16)
  {
    if (v16 != 1)
    {
      goto LABEL_24;
    }

    v17 = HIBYTE(v21[1]) & 0xF;
    if ((v21[1] & 0x2000000000000000) == 0)
    {
      v17 = v21[0] & 0xFFFFFFFFFFFFLL;
    }

    if (v17)
    {
LABEL_24:
      MEMORY[0x1C68E0BF0](40, 0xE100000000000000);
      swift_getCanonicalSpecializedMetadata();
      lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &unk_1F402B990, &cache variable for noncanonical specialized generic type metadata for [String], MEMORY[0x1E69E6310]);
      v18 = BidirectionalCollection<>.joined(separator:)();
      v20 = v19;

      MEMORY[0x1C68E0BF0](v18, v20);

      MEMORY[0x1C68E0BF0](41, 0xE100000000000000);
      return v21[0];
    }

    if (*(v4 + 16))
    {
      v15 = *(v4 + 32);

      goto LABEL_27;
    }

LABEL_31:
    __break(1u);
  }

  else
  {
LABEL_27:

    return v15;
  }

  return result;
}

Swift::String __swiftcall _ASTPrintable._dump()()
{
  v2 = v1;
  v3 = v0;
  isUniquelyReferenced_nonNull_native = _ASTPrintable._children.getter(v0);
  if (isUniquelyReferenced_nonNull_native)
  {
    v6 = isUniquelyReferenced_nonNull_native;
    v7 = *(isUniquelyReferenced_nonNull_native + 16);
    if (!v7)
    {
      v29 = MEMORY[0x1E69E7CC0];
      goto LABEL_20;
    }

    v8 = 0;
    v29 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = v8;
      while (1)
      {
        if (v9 >= *(v6 + 16))
        {
          __break(1u);
          goto LABEL_31;
        }

        v10 = *(v6 + 32 + 8 * v9);
        if (v10 >> 60 != 6)
        {
          break;
        }

LABEL_5:
        if (v7 == ++v9)
        {
          goto LABEL_20;
        }
      }

      v11 = specialized _ASTPrintable._dump()(v10);
      v13 = v12;

      v14 = HIBYTE(v13) & 0xF;
      if ((v13 & 0x2000000000000000) == 0)
      {
        v14 = v11 & 0xFFFFFFFFFFFFLL;
      }

      if (!v14)
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 16) + 1, 1, v29);
        v29 = isUniquelyReferenced_nonNull_native;
      }

      v16 = *(v29 + 16);
      v15 = *(v29 + 24);
      v17 = v16 + 1;
      if (v16 >= v15 >> 1)
      {
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v29);
        v17 = v16 + 1;
        v29 = isUniquelyReferenced_nonNull_native;
      }

      v8 = v9 + 1;
      *(v29 + 16) = v17;
      v18 = v29 + 16 * v16;
      *(v18 + 32) = v11;
      *(v18 + 40) = v13;
      if (v7 - 1 == v9)
      {
LABEL_20:

        v19 = (*(v2 + 24))(v3, v2);
        v21 = *(v29 + 16);
        if (v21)
        {
          if (v21 != 1)
          {
            goto LABEL_25;
          }

          v22 = HIBYTE(v20) & 0xF;
          if ((v20 & 0x2000000000000000) == 0)
          {
            v22 = v19 & 0xFFFFFFFFFFFFLL;
          }

          if (v22)
          {
LABEL_25:
            v30 = v19;
            v31 = v20;
            MEMORY[0x1C68E0BF0](40, 0xE100000000000000);
            swift_getCanonicalSpecializedMetadata();
            lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &unk_1F402B990, &cache variable for noncanonical specialized generic type metadata for [String], MEMORY[0x1E69E6310]);
            v23 = BidirectionalCollection<>.joined(separator:)();
            v25 = v24;

            MEMORY[0x1C68E0BF0](v23, v25);

            MEMORY[0x1C68E0BF0](41, 0xE100000000000000);
            isUniquelyReferenced_nonNull_native = v30;
            v5 = v31;
            goto LABEL_32;
          }

          if (!*(v29 + 16))
          {
LABEL_31:
            __break(1u);
            goto LABEL_32;
          }

          v26 = *(v29 + 32);
          v27 = *(v29 + 40);
        }

        else
        {
          v26 = v19;
          v27 = v20;
        }

        v5 = v27;
        isUniquelyReferenced_nonNull_native = v26;
        goto LABEL_32;
      }
    }

    goto LABEL_5;
  }

  isUniquelyReferenced_nonNull_native = (*(v2 + 24))(v3, v2);
LABEL_32:
  result._object = v5;
  result._countAndFlagsBits = isUniquelyReferenced_nonNull_native;
  return result;
}

uint64_t _ASTPrintable._children.getter(uint64_t a1)
{
  v3 = *(a1 - 8);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = *(v3 + 16);
  v7(v15 - v8, v1, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser10_ASTParent_pMd, &_s12_RegexParser10_ASTParent_pMR);
  if (!swift_dynamicCast())
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    outlined destroy of _ASTParent?(&v16, &_s12_RegexParser10_ASTParent_pSgMd, &_s12_RegexParser10_ASTParent_pSgMR);
    v7(v6, v1, a1);
    if (swift_dynamicCast())
    {
      v15[5] = v16;
      AST.Node._associatedValue.getter(v15);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser8_ASTNode_pMd, &_s12_RegexParser8_ASTNode_pMR);
      if (swift_dynamicCast())
      {
        v12 = *(&v17 + 1);
        v13 = v18;
        __swift_project_boxed_opaque_existential_1Tm(&v16, *(&v17 + 1));
        v11 = (*(v13 + 16))(v12, v13);
        __swift_destroy_boxed_opaque_existential_1Tm(&v16);

        return v11;
      }

      v18 = 0;
      v16 = 0u;
      v17 = 0u;
      outlined destroy of _ASTParent?(&v16, &_s12_RegexParser10_ASTParent_pSgMd, &_s12_RegexParser10_ASTParent_pSgMR);
    }

    return 0;
  }

  v9 = *(&v17 + 1);
  v10 = v18;
  __swift_project_boxed_opaque_existential_1Tm(&v16, *(&v17 + 1));
  v11 = (*(v10 + 16))(v9, v10);
  __swift_destroy_boxed_opaque_existential_1Tm(&v16);
  return v11;
}

uint64_t AST._dumpBase.getter()
{
  v2 = *v0;
  v1 = v0[1];
  if (v1)
  {
    specialized DefaultStringInterpolation.appendInterpolation<A>(_:)(v1);
    MEMORY[0x1C68E0BF0](32, 0xE100000000000000);
    MEMORY[0x1C68E0BF0](0, 0xE000000000000000);
  }

  v3 = specialized _ASTPrintable._dump()(v2);
  MEMORY[0x1C68E0BF0](v3);

  return 0;
}

uint64_t AST.Node._dumpBase.getter()
{
  v8 = *v0;
  AST.Node._associatedValue.getter(v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1Tm(v5, v6);
  v3 = (*(*(v2 + 8) + 24))(v1);
  __swift_destroy_boxed_opaque_existential_1Tm(v5);
  return v3;
}

uint64_t protocol witness for _ASTPrintable._dumpBase.getter in conformance AST.Node()
{
  v8 = *v0;
  AST.Node._associatedValue.getter(v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1Tm(v5, v6);
  v3 = (*(*(v2 + 8) + 24))(v1);
  __swift_destroy_boxed_opaque_existential_1Tm(v5);
  return v3;
}

uint64_t AST.Conditional.Condition.PCREVersionCheck.Kind._dumpBase.getter()
{
  if (*v0)
  {
    return 15678;
  }

  else
  {
    return 61;
  }
}

uint64_t protocol witness for _ASTPrintable._dumpBase.getter in conformance AST.Conditional.Condition.PCREVersionCheck.Kind()
{
  if (*v0)
  {
    return 15678;
  }

  else
  {
    return 61;
  }
}

uint64_t AST.Conditional.Condition.PCREVersionNumber._dumpBase.getter()
{
  v1 = 0xE90000000000003ELL;
  v2 = 0x64696C61766E693CLL;
  v3 = *(v0 + 40);
  v4 = 0x64696C61766E693CLL;
  if ((*(v0 + 8) & 1) == 0)
  {
    v4 = dispatch thunk of CustomStringConvertible.description.getter();
  }

  v7 = v4;
  MEMORY[0x1C68E0BF0](46, 0xE100000000000000);
  if ((v3 & 1) == 0)
  {
    v2 = dispatch thunk of CustomStringConvertible.description.getter();
    v1 = v5;
  }

  MEMORY[0x1C68E0BF0](v2, v1);

  return v7;
}

uint64_t AST.Conditional.Condition.PCREVersionCheck._dumpBase.getter()
{
  if (*v0)
  {
    v1 = 15678;
  }

  else
  {
    v1 = 61;
  }

  if (*v0)
  {
    v2 = 0xE200000000000000;
  }

  else
  {
    v2 = 0xE100000000000000;
  }

  MEMORY[0x1C68E0BF0](v1, v2);

  v3 = specialized _ASTPrintable._dump()();
  MEMORY[0x1C68E0BF0](v3);

  return 0x4E4F4953524556;
}

uint64_t protocol witness for _ASTPrintable._dumpBase.getter in conformance AST.Conditional.Condition.PCREVersionCheck()
{
  if (*v0)
  {
    v1 = 15678;
  }

  else
  {
    v1 = 61;
  }

  if (*v0)
  {
    v2 = 0xE200000000000000;
  }

  else
  {
    v2 = 0xE100000000000000;
  }

  MEMORY[0x1C68E0BF0](v1, v2);

  v3 = specialized _ASTPrintable._dump()();
  MEMORY[0x1C68E0BF0](v3);

  return 0x4E4F4953524556;
}

uint64_t AST.Reference._dumpBase.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 72);
  _print_unlocked<A, B>(_:_:)();
  result = 0;
  if ((v2 & 1) == 0)
  {
    if (v1)
    {
      v4 = 0xE90000000000003ELL;
      v5 = 0x64696C61766E693CLL;
    }

    else
    {
      v5 = dispatch thunk of CustomStringConvertible.description.getter();
      v4 = v6;
    }

    MEMORY[0x1C68E0BF0](v5, v4);

    return 0;
  }

  return result;
}

uint64_t AST.Atom.Number._dumpBase.getter()
{
  if (*(v0 + 8))
  {
    return 0x64696C61766E693CLL;
  }

  else
  {
    return dispatch thunk of CustomStringConvertible.description.getter();
  }
}

uint64_t protocol witness for _ASTPrintable._dumpBase.getter in conformance AST.Atom.Number()
{
  if (*(v0 + 8))
  {
    return 0x64696C61766E693CLL;
  }

  else
  {
    return dispatch thunk of CustomStringConvertible.description.getter();
  }
}

uint64_t AST.Atom.Callout._dumpBase.getter(uint64_t a1, uint64_t a2)
{
  v3 = v2[7];
  v10[6] = v2[6];
  v10[7] = v3;
  v11[0] = v2[8];
  *(v11 + 9) = *(v2 + 137);
  v4 = v2[3];
  v10[2] = v2[2];
  v10[3] = v4;
  v5 = v2[5];
  v10[4] = v2[4];
  v10[5] = v5;
  v6 = v2[1];
  v10[0] = *v2;
  v10[1] = v6;
  v7 = _s12_RegexParser3ASTV4AtomV7CalloutOWOg(v10);
  if (v7)
  {
    if (v7 == 1)
    {
      AST.root.modify();
      return AST.Atom.Callout.OnigurumaNamed._dumpBase.getter();
    }

    else
    {
      AST.root.modify();
      return AST.Atom.Callout.OnigurumaOfContents._dumpBase.getter();
    }
  }

  else
  {
    AST.root.modify();
    v9 = lazy protocol witness table accessor for type AST.Atom.Callout.PCRE and conformance AST.Atom.Callout.PCRE();
    return (*(v9 + 24))(&type metadata for AST.Atom.Callout.PCRE, v9);
  }
}

uint64_t protocol witness for _ASTPrintable._dumpBase.getter in conformance AST.Atom.Callout(uint64_t a1, uint64_t a2)
{
  v3 = v2[7];
  v10[6] = v2[6];
  v10[7] = v3;
  v11[0] = v2[8];
  *(v11 + 9) = *(v2 + 137);
  v4 = v2[3];
  v10[2] = v2[2];
  v10[3] = v4;
  v5 = v2[5];
  v10[4] = v2[4];
  v10[5] = v5;
  v6 = v2[1];
  v10[0] = *v2;
  v10[1] = v6;
  v7 = _s12_RegexParser3ASTV4AtomV7CalloutOWOg(v10);
  if (v7)
  {
    if (v7 == 1)
    {
      AST.root.modify();
      return AST.Atom.Callout.OnigurumaNamed._dumpBase.getter();
    }

    else
    {
      AST.root.modify();
      return AST.Atom.Callout.OnigurumaOfContents._dumpBase.getter();
    }
  }

  else
  {
    AST.root.modify();
    v9 = lazy protocol witness table accessor for type AST.Atom.Callout.PCRE and conformance AST.Atom.Callout.PCRE();
    return (*(v9 + 24))(&type metadata for AST.Atom.Callout.PCRE, v9);
  }
}

uint64_t AST.Atom.Callout.PCRE._dumpBase.getter()
{
  MEMORY[0x1C68E0BF0](0x6C61632045524350, 0xED00002074756F6CLL);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

uint64_t protocol witness for _ASTPrintable._dumpBase.getter in conformance AST.Atom.Callout.PCRE()
{
  MEMORY[0x1C68E0BF0](0x6C61632045524350, 0xED00002074756F6CLL);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

uint64_t AST.Atom.Callout.OnigurumaTag._dumpBase.getter()
{
  MEMORY[0x1C68E0BF0](*(v0 + 16), *(v0 + 24));
  MEMORY[0x1C68E0BF0](93, 0xE100000000000000);
  return 91;
}

uint64_t protocol witness for _ASTPrintable._dumpBase.getter in conformance AST.Atom.Callout.OnigurumaTag()
{
  MEMORY[0x1C68E0BF0](*(v0 + 16), *(v0 + 24));
  MEMORY[0x1C68E0BF0](93, 0xE100000000000000);
  return 91;
}

uint64_t AST.Atom.Callout.OnigurumaNamed.ArgList._dumpBase.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v13 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v3 = (v1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;
      v7 = *(v13 + 16);
      v6 = *(v13 + 24);

      if (v7 >= v6 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
      }

      *(v13 + 16) = v7 + 1;
      v8 = v13 + 16 * v7;
      *(v8 + 32) = v5;
      *(v8 + 40) = v4;
      v3 += 4;
      --v2;
    }

    while (v2);
  }

  swift_getCanonicalSpecializedMetadata();
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &unk_1F402B990, &cache variable for noncanonical specialized generic type metadata for [String], MEMORY[0x1E69E6310]);
  v9 = BidirectionalCollection<>.joined(separator:)();
  v11 = v10;

  MEMORY[0x1C68E0BF0](v9, v11);

  MEMORY[0x1C68E0BF0](125, 0xE100000000000000);
  return 123;
}

unint64_t AST.Atom.Callout.OnigurumaNamed._dumpBase.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[14];
  _StringGuts.grow(_:)(26);

  MEMORY[0x1C68E0BF0](v1, v2);
  if (v4)
  {
    MEMORY[0x1C68E0BF0](v3, v4);
    MEMORY[0x1C68E0BF0](93, 0xE100000000000000);
    MEMORY[0x1C68E0BF0](91, 0xE100000000000000);
  }

  if (v5)
  {
    v6 = AST.Atom.Callout.OnigurumaNamed.ArgList._dumpBase.getter();
    MEMORY[0x1C68E0BF0](v6);
  }

  return 0xD000000000000018;
}

unint64_t AST.Atom.Callout.OnigurumaOfContents._dumpBase.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[10];
  v4 = v0[11];
  _StringGuts.grow(_:)(34);

  MEMORY[0x1C68E0BF0](v1, v2);
  MEMORY[0x1C68E0BF0](125, 0xE100000000000000);
  if (v4)
  {
    MEMORY[0x1C68E0BF0](v3, v4);
    MEMORY[0x1C68E0BF0](93, 0xE100000000000000);
    MEMORY[0x1C68E0BF0](91, 0xE100000000000000);
  }

  MEMORY[0x1C68E0BF0](32, 0xE100000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68E0BF0](0, 0xE000000000000000);

  return 0xD00000000000001FLL;
}

unint64_t AST.Group.Kind._dumpBase.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[6];
  v3 = v0[7];
  if (*(v0 + 80) > 1u)
  {
    v6 = v0[2];
    v5 = v0[3];
    if (*(v0 + 80) == 2)
    {
      _StringGuts.grow(_:)(25);

      v7 = AST.MatchingOptionSequence._dumpBase.getter();
      MEMORY[0x1C68E0BF0](v7);

      MEMORY[0x1C68E0BF0](62, 0xE100000000000000);
      return 0xD000000000000016;
    }

    else
    {
      v10 = v0[4] | v0[5] | v4;
      v11 = v3 | v0[9] | v0[8];
      if (v6 | v2 | v1 | v5 | v10 | v11)
      {
        result = 0x75747061436E6F6ELL;
        v12 = v6 | v2 | v5 | v10 | v11;
        if ((v1 != 1 || v12) && (v1 != 2 || v12))
        {
          if (v1 != 3 || v12)
          {
            if (v1 != 4 || v12)
            {
              if (v1 != 5 || v12)
              {
                if (v1 != 6 || v12)
                {
                  if (v1 != 7 || v12)
                  {
                    if (v1 != 8 || v12)
                    {
                      if (v1 != 9 || v12)
                      {
                        if (v1 == 10 && v12 == 0)
                        {
                          return 0x7552747069726373;
                        }

                        else
                        {
                          return 0x635363696D6F7461;
                        }
                      }

                      else
                      {
                        return 0xD000000000000013;
                      }
                    }

                    else
                    {
                      return 0xD000000000000012;
                    }
                  }

                  else
                  {
                    return 0x696865626B6F6F6CLL;
                  }
                }

                else
                {
                  return 0xD000000000000012;
                }
              }

              else
              {
                return 0xD000000000000011;
              }
            }

            else
            {
              return 0x616568616B6F6F6CLL;
            }
          }

          else
          {
            return 0xD000000000000012;
          }
        }
      }

      else
      {
        return 0x65727574706163;
      }
    }
  }

  else
  {
    if (*(v0 + 80))
    {
      v9 = 0xE000000000000000;
      _StringGuts.grow(_:)(19);

      v13 = 0xD000000000000011;
      if (v2)
      {
        v9 = v2;
      }

      else
      {
        v1 = 0;
      }

      MEMORY[0x1C68E0BF0](v1, v9);

      MEMORY[0x1C68E0BF0](45, 0xE100000000000000);
      MEMORY[0x1C68E0BF0](v4, v3);
      MEMORY[0x1C68E0BF0](0, 0xE000000000000000);
    }

    else
    {
      v13 = 0x3C65727574706163;
      MEMORY[0x1C68E0BF0](v1, v2);
      MEMORY[0x1C68E0BF0](62, 0xE100000000000000);
    }

    return v13;
  }

  return result;
}