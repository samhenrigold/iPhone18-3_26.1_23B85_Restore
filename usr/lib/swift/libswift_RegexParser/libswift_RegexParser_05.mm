uint64_t AST.Group._dumpBase.getter()
{
  v0 = AST.Group.Kind._dumpBase.getter();
  MEMORY[0x1C68E0BF0](v0);

  return 0x5F70756F7267;
}

uint64_t protocol witness for _ASTPrintable._dumpBase.getter in conformance AST.Group()
{
  v0 = AST.Group.Kind._dumpBase.getter();
  MEMORY[0x1C68E0BF0](v0);

  return 0x5F70756F7267;
}

uint64_t AST.Quantification.Amount._canonicalBase.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 45) | (*(v0 + 47) << 16);
  v4 = v3 >> 21;
  if (v3 >> 21 <= 1)
  {
    if (v4)
    {
      v30 = 123;
      if (v2)
      {
        v27 = 0x7265626D756E233CLL;
        v28 = 0xEA00000000003E23;
      }

      else
      {
        v27 = dispatch thunk of CustomStringConvertible.description.getter();
        v28 = v29;
      }

      MEMORY[0x1C68E0BF0](v27, v28);

      v15 = 32044;
      v16 = 0xE200000000000000;
      goto LABEL_34;
    }

    v30 = 123;
    if (v2)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (v4 == 2)
  {
    v30 = 11387;
    if (v2)
    {
LABEL_13:
      v13 = 0x7265626D756E233CLL;
      v7 = 0xEA00000000003E23;
      goto LABEL_14;
    }

LABEL_11:
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v7 = v14;
LABEL_14:
    MEMORY[0x1C68E0BF0](v13, v7);

    v15 = 125;
    v16 = 0xE100000000000000;
LABEL_34:
    MEMORY[0x1C68E0BF0](v15, v16);
    return v30;
  }

  v5 = v0[4];
  v6 = *(v0 + 40);
  if (v4 == 3)
  {
    v7 = 0xE90000000000003ELL;
    v8 = 0x64696C61766E693CLL;
    v30 = 123;
    v9 = 0x64696C61766E693CLL;
    v10 = 0xE90000000000003ELL;
    if ((v2 & 1) == 0)
    {
      v9 = dispatch thunk of CustomStringConvertible.description.getter();
      v10 = v11;
    }

    MEMORY[0x1C68E0BF0](v9, v10);

    MEMORY[0x1C68E0BF0](44, 0xE100000000000000);
    if ((v6 & 1) == 0)
    {
      v8 = dispatch thunk of CustomStringConvertible.description.getter();
      v7 = v12;
    }

    v13 = v8;
    goto LABEL_14;
  }

  v17 = *(v0 + 41) | ((*&v3 & 0xFFFFFFLL) << 32);
  v18 = v0[6];
  v19 = v0[7];
  v20 = v6 | (v17 << 8);
  v21 = (*(v0 + 9) << 8) | ((*(v0 + 13) | (*(v0 + 15) << 16)) << 40) | v2;
  v22 = v0[3] | v0[2];
  if (v20 == 0x8000000000000000 && (v22 | v1 | v5 | v18 | v19 | v21) == 0)
  {
    return 42;
  }

  if (v22 | v21 | v5 | v18 | v19)
  {
    v24 = 0;
  }

  else
  {
    v24 = v1 == 1;
  }

  if (v24 && v20 == 0x8000000000000000)
  {
    return 43;
  }

  else
  {
    return 63;
  }
}

uint64_t AST.Quantification.Amount._dumpBase.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 45) | (*(v0 + 47) << 16);
  v4 = v3 >> 21;
  if (v3 >> 21 <= 1)
  {
    if (v4)
    {
      v14 = 0x3C65726F4D724F6ELL;
    }

    else
    {
      v14 = 0x3C796C7463617865;
    }

    v26 = v14;
    if ((v2 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

  if (v4 == 2)
  {
    v26 = 0x3C4E6F747075;
    if ((v2 & 1) == 0)
    {
LABEL_12:
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      v7 = v15;
LABEL_30:
      MEMORY[0x1C68E0BF0](v13, v7);

      MEMORY[0x1C68E0BF0](62, 0xE100000000000000);
      return v26;
    }

LABEL_29:
    v13 = 0x64696C61766E693CLL;
    v7 = 0xE90000000000003ELL;
    goto LABEL_30;
  }

  v5 = v0[4];
  v6 = *(v0 + 40);
  if (v4 == 3)
  {
    v7 = 0xE90000000000003ELL;
    v8 = 0x64696C61766E693CLL;
    v26 = 0x3C65676E61722ELL;
    v9 = 0x64696C61766E693CLL;
    v10 = 0xE90000000000003ELL;
    if ((v2 & 1) == 0)
    {
      v9 = dispatch thunk of CustomStringConvertible.description.getter();
      v10 = v11;
    }

    MEMORY[0x1C68E0BF0](v9, v10);

    MEMORY[0x1C68E0BF0](3026478, 0xE300000000000000);
    if ((v6 & 1) == 0)
    {
      v8 = dispatch thunk of CustomStringConvertible.description.getter();
      v7 = v12;
    }

    v13 = v8;
    goto LABEL_30;
  }

  v16 = *(v0 + 41) | ((*&v3 & 0xFFFFFFLL) << 32);
  v17 = v0[6];
  v18 = v0[7];
  v19 = v6 | (v16 << 8);
  v20 = (*(v0 + 9) << 8) | ((*(v0 + 13) | (*(v0 + 15) << 16)) << 40) | v2;
  v21 = v0[3] | v0[2];
  if (v19 == 0x8000000000000000 && (v21 | v1 | v5 | v17 | v18 | v20) == 0)
  {
    return 0x6F4D724F6F72657ALL;
  }

  if (v21 | v20 | v5 | v17 | v18)
  {
    v23 = 0;
  }

  else
  {
    v23 = v1 == 1;
  }

  if (v23 && v19 == 0x8000000000000000)
  {
    return 0x726F4D724F656E6FLL;
  }

  else
  {
    return 0x6E4F724F6F72657ALL;
  }
}

uint64_t AST.Quantification.Kind._printBase.getter()
{
  v1 = 63;
  if (*v0 != 1)
  {
    v1 = 43;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return *v0;
  }
}

uint64_t AST.Quantification.Kind._dumpBase.getter()
{
  v1 = 0x6E617463756C6572;
  if (*v0 != 1)
  {
    v1 = 0x6973736573736F70;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7265676165;
  }
}

uint64_t protocol witness for _ASTPrintable._dumpBase.getter in conformance AST.Quantification.Kind()
{
  v1 = 0x6E617463756C6572;
  if (*v0 != 1)
  {
    v1 = 0x6973736573736F70;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7265676165;
  }
}

uint64_t AST.Quantification._printBase.getter()
{
  v1 = *(v0 + 80);
  v2 = AST.Quantification.Amount._canonicalBase.getter();
  MEMORY[0x1C68E0BF0](v2);

  v3 = 63;
  if (v1 != 1)
  {
    v3 = 43;
  }

  if (v1)
  {
    v4 = v3;
  }

  else
  {
    v4 = v1;
  }

  if (v1)
  {
    v5 = 0xE100000000000000;
  }

  else
  {
    v5 = 0xE000000000000000;
  }

  MEMORY[0x1C68E0BF0](v4, v5);

  return 0x5F746E617571;
}

uint64_t AST.Quantification._dumpBase.getter()
{
  v1 = *(v0 + 80);
  v2 = AST.Quantification.Amount._dumpBase.getter();
  MEMORY[0x1C68E0BF0](v2);

  MEMORY[0x1C68E0BF0](95, 0xE100000000000000);
  v3 = 0xE900000000000074;
  v4 = 0x6E617463756C6572;
  if (v1 != 1)
  {
    v4 = 0x6973736573736F70;
    v3 = 0xEA00000000006576;
  }

  if (v1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x7265676165;
  }

  if (v1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x1C68E0BF0](v5, v6);

  return 0x5F746E617571;
}

unint64_t AST.CustomCharacterClass._dumpBase.getter()
{
  v1 = 1702195828;
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v18 = 0;
  v19 = 0xE000000000000000;
  _StringGuts.grow(_:)(38);

  v24 = 0xD00000000000001FLL;
  v25 = 0x80000001C0C84CB0;
  if (v2 == 1)
  {

    v8 = 0xE400000000000000;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v1 = 0x65736C6166;
      v8 = 0xE500000000000000;
    }
  }

  MEMORY[0x1C68E0BF0](v1, v8);

  MEMORY[0x1C68E0BF0](8236, 0xE200000000000000);
  LOBYTE(v18) = v2;
  v19 = v3;
  v20 = v4;
  v21 = v5;
  v22 = v6;
  v23 = v7;
  AST.CustomCharacterClass.strippingTriviaShallow.getter(v16);
  v10 = v17;
  v11 = type metadata accessor for AST.CustomCharacterClass.Member(0);
  v12 = MEMORY[0x1C68E0D70](v10, v11);
  v14 = v13;

  MEMORY[0x1C68E0BF0](v12, v14);

  MEMORY[0x1C68E0BF0](41, 0xE100000000000000);
  return v24;
}

__n128 protocol witness for _ASTNode.location.getter in conformance AST.CustomCharacterClass@<Q0>(__n128 *a1@<X8>)
{
  result = v1[2];
  *a1 = result;
  return result;
}

uint64_t AST.CustomCharacterClass.Member._dumpBase.getter()
{
  v1 = v0;
  v2 = type metadata accessor for AST.CustomCharacterClass.Range(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v64[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for AST.Atom(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v64[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for AST.CustomCharacterClass.Member(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v67 = &v64[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x1EEE9AC00](v10);
  v66 = &v64[-v13];
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v64[-v15];
  v17 = MEMORY[0x1EEE9AC00](v14);
  v72 = &v64[-v18];
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v64[-v20];
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v64[-v23];
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v64[-v25];
  outlined init with copy of AST.CustomCharacterClass.Member(v1, &v64[-v25], type metadata accessor for AST.CustomCharacterClass.Member);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        outlined init with take of AST.Atom.Kind(v26, v4, type metadata accessor for AST.CustomCharacterClass.Range);
        v73 = AST.Atom._dumpBase.getter();
        *&v74 = v28;
        MEMORY[0x1C68E0BF0](45, 0xE100000000000000);
        v29 = AST.Atom._dumpBase.getter();
        MEMORY[0x1C68E0BF0](v29);

        v30 = v73;
        outlined destroy of AST.CustomCharacterClass.Member(v4, type metadata accessor for AST.CustomCharacterClass.Range);
      }

      else
      {
        outlined init with take of AST.Atom.Kind(v26, v7, type metadata accessor for AST.Atom);
        v30 = AST.Atom._dumpBase.getter();
        outlined destroy of AST.CustomCharacterClass.Member(v7, type metadata accessor for AST.Atom);
      }
    }

    else
    {
      v31 = *(v26 + 3);
      LOBYTE(v73) = *v26;
      v74 = *(v26 + 8);
      v75 = v31;
      v76 = *(v26 + 2);
      v30 = AST.CustomCharacterClass._dumpBase.getter();
    }

    return v30;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v32 = *v26;
    v33 = *(v26 + 1);
    v73 = 0x222065746F7571;
    *&v74 = 0xE700000000000000;
    MEMORY[0x1C68E0BF0](v32, v33);
    MEMORY[0x1C68E0BF0](34, 0xE100000000000000);
LABEL_36:

    return v73;
  }

  if (EnumCaseMultiPayload == 4)
  {
    outlined destroy of AST.CustomCharacterClass.Member(v26, type metadata accessor for AST.CustomCharacterClass.Member);
    return 0;
  }

  v68 = v16;
  v34 = *v26;
  v65 = v26[8];
  v71 = *(v26 + 4);
  v73 = 0;
  *&v74 = 0xE000000000000000;
  result = MEMORY[0x1C68E0BF0](2125935, 0xE300000000000000);
  v36 = *(v34 + 16);
  v69 = v8;
  v70 = v36;
  if (v36)
  {
    v37 = 0;
    v38 = MEMORY[0x1E69E7CC0];
    while (v37 < *(v34 + 16))
    {
      v39 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v40 = *(v9 + 72);
      outlined init with copy of AST.CustomCharacterClass.Member(v34 + v39 + v40 * v37, v24, type metadata accessor for AST.CustomCharacterClass.Member);
      outlined init with copy of AST.CustomCharacterClass.Member(v24, v21, type metadata accessor for AST.CustomCharacterClass.Member);
      v41 = swift_getEnumCaseMultiPayload();
      outlined destroy of AST.CustomCharacterClass.Member(v21, type metadata accessor for AST.CustomCharacterClass.Member);
      if (v41 == 4)
      {
        result = outlined destroy of AST.CustomCharacterClass.Member(v24, type metadata accessor for AST.CustomCharacterClass.Member);
      }

      else
      {
        outlined init with take of AST.Atom.Kind(v24, v72, type metadata accessor for AST.CustomCharacterClass.Member);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v77 = v38;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v38 + 16) + 1, 1);
          v38 = v77;
        }

        v44 = *(v38 + 16);
        v43 = *(v38 + 24);
        if (v44 >= v43 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1);
          v38 = v77;
        }

        *(v38 + 16) = v44 + 1;
        result = outlined init with take of AST.Atom.Kind(v72, v38 + v39 + v44 * v40, type metadata accessor for AST.CustomCharacterClass.Member);
        v8 = v69;
      }

      if (v70 == ++v37)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
    goto LABEL_39;
  }

  v38 = MEMORY[0x1E69E7CC0];
LABEL_23:

  v45 = MEMORY[0x1C68E0D70](v38, v8);
  v47 = v46;

  MEMORY[0x1C68E0BF0](v45, v47);

  MEMORY[0x1C68E0BF0](32, 0xE100000000000000);
  LOBYTE(v77) = v65;
  _print_unlocked<A, B>(_:_:)();
  result = MEMORY[0x1C68E0BF0](32, 0xE100000000000000);
  v48 = v71;
  v72 = *(v71 + 16);
  if (!v72)
  {
    v50 = MEMORY[0x1E69E7CC0];
LABEL_35:

    v61 = MEMORY[0x1C68E0D70](v50, v8);
    v63 = v62;

    MEMORY[0x1C68E0BF0](v61, v63);
    goto LABEL_36;
  }

  v49 = 0;
  v50 = MEMORY[0x1E69E7CC0];
  v52 = v66;
  v51 = v67;
  while (v49 < *(v48 + 16))
  {
    v53 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v54 = *(v9 + 72);
    v55 = v48 + v53 + v54 * v49;
    v56 = v68;
    outlined init with copy of AST.CustomCharacterClass.Member(v55, v68, type metadata accessor for AST.CustomCharacterClass.Member);
    outlined init with copy of AST.CustomCharacterClass.Member(v56, v52, type metadata accessor for AST.CustomCharacterClass.Member);
    v57 = swift_getEnumCaseMultiPayload();
    outlined destroy of AST.CustomCharacterClass.Member(v52, type metadata accessor for AST.CustomCharacterClass.Member);
    if (v57 == 4)
    {
      result = outlined destroy of AST.CustomCharacterClass.Member(v56, type metadata accessor for AST.CustomCharacterClass.Member);
      v48 = v71;
    }

    else
    {
      outlined init with take of AST.Atom.Kind(v56, v51, type metadata accessor for AST.CustomCharacterClass.Member);
      v58 = swift_isUniquelyReferenced_nonNull_native();
      v77 = v50;
      if ((v58 & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v50 + 16) + 1, 1);
        v50 = v77;
      }

      v48 = v71;
      v60 = *(v50 + 16);
      v59 = *(v50 + 24);
      if (v60 >= v59 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v60 + 1, 1);
        v50 = v77;
      }

      *(v50 + 16) = v60 + 1;
      result = outlined init with take of AST.Atom.Kind(v51, v50 + v53 + v60 * v54, type metadata accessor for AST.CustomCharacterClass.Member);
      v8 = v69;
    }

    if (v72 == ++v49)
    {
      goto LABEL_35;
    }
  }

LABEL_39:
  __break(1u);
  return result;
}

unint64_t AST.CustomCharacterClass.Range._dumpBase.getter()
{
  v2 = AST.Atom._dumpBase.getter();
  MEMORY[0x1C68E0BF0](45, 0xE100000000000000);
  type metadata accessor for AST.CustomCharacterClass.Range(0);
  v0 = AST.Atom._dumpBase.getter();
  MEMORY[0x1C68E0BF0](v0);

  return v2;
}

unint64_t protocol witness for _ASTPrintable._dumpBase.getter in conformance AST.CustomCharacterClass.Range()
{
  v2 = AST.Atom._dumpBase.getter();
  MEMORY[0x1C68E0BF0](45, 0xE100000000000000);
  v0 = AST.Atom._dumpBase.getter();
  MEMORY[0x1C68E0BF0](v0);

  return v2;
}

uint64_t AST.Atom.BacktrackingDirective._dumpBase.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  _print_unlocked<A, B>(_:_:)();
  result = 0;
  if (v2)
  {
    MEMORY[0x1C68E0BF0](v1, v2);
    MEMORY[0x1C68E0BF0](8250, 0xE200000000000000);

    return 0;
  }

  return result;
}

uint64_t AST.Group.BalancedCapture._dumpBase.getter()
{
  v1 = v0[1];
  v2 = v0[6];
  v3 = v0[7];
  if (v1)
  {
    v4 = *v0;
  }

  else
  {
    v4 = 0;
  }

  if (v1)
  {
    v5 = v0[1];
  }

  else
  {
    v5 = 0xE000000000000000;
  }

  MEMORY[0x1C68E0BF0](v4, v5);

  MEMORY[0x1C68E0BF0](45, 0xE100000000000000);
  MEMORY[0x1C68E0BF0](v2, v3);
  return 0;
}

uint64_t protocol witness for _ASTPrintable._dumpBase.getter in conformance AST.Group.BalancedCapture()
{
  v1 = v0[1];
  v2 = v0[6];
  v3 = v0[7];
  if (v1)
  {
    v4 = *v0;
  }

  else
  {
    v4 = 0;
  }

  if (v1)
  {
    v5 = v0[1];
  }

  else
  {
    v5 = 0xE000000000000000;
  }

  MEMORY[0x1C68E0BF0](v4, v5);

  MEMORY[0x1C68E0BF0](45, 0xE100000000000000);
  MEMORY[0x1C68E0BF0](v2, v3);
  return 0;
}

uint64_t AST.AbsentFunction.Kind._dumpBase.getter()
{
  v1 = (*(v0 + 24) >> 1) & 3;
  v2 = 0x7265746165706572;
  v3 = 0x726570706F7473;
  if (v1 != 2)
  {
    v3 = 0x72657261656C63;
  }

  if (v1)
  {
    v2 = 0x6973736572707865;
  }

  if (((*(v0 + 24) >> 1) & 3u) <= 1)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t AST.GlobalMatchingOption.Kind._canonicalBase.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v2 >> 61;
  if ((v2 >> 61) <= 2)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        v17 = 0x45485F54494D494CLL;
        if ((v2 & 1) == 0)
        {
LABEL_5:
          v4 = dispatch thunk of CustomStringConvertible.description.getter();
          v6 = v5;
LABEL_26:
          MEMORY[0x1C68E0BF0](v4, v6);

          return v17;
        }

LABEL_25:
        v4 = 0x7265626D756E233CLL;
        v6 = 0xEA00000000003E23;
        goto LABEL_26;
      }

      v8 = 0x414D5F54494D494CLL;
    }

    else
    {
      v8 = 0x45445F54494D494CLL;
    }

    v17 = v8;
    if ((v2 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

  if (v3 == 3)
  {
    v9 = *v0;
    v10 = 21059;
    v11 = 0x464C5243594E41;
    v12 = 5852737;
    if (v9 != 4)
    {
      v12 = 5002574;
    }

    if (v9 != 3)
    {
      v11 = v12;
    }

    v13 = 17996;
    if (v9 != 1)
    {
      v13 = 1179406915;
    }

    if (*v0)
    {
      v10 = v13;
    }

    if (*v0 <= 2u)
    {
      return v10;
    }

    else
    {
      return v11;
    }
  }

  else if (v3 == 4)
  {
    if (v1)
    {
      return 0x43494E555F525342;
    }

    else
    {
      return 0x43594E415F525342;
    }
  }

  else if (v2 == 0xA000000000000000 && (v0[2] | v0[3] | v1) == 0)
  {
    return 0x5954504D45544F4ELL;
  }

  else if (v2 == 0xA000000000000000 && v1 == 1 && *(v0 + 1) == 0)
  {
    return 0xD000000000000010;
  }

  else if (v2 == 0xA000000000000000 && v1 == 2 && *(v0 + 1) == 0)
  {
    return 0x5F4F5455415F4F4ELL;
  }

  else if (v2 == 0xA000000000000000 && v1 == 3 && *(v0 + 1) == 0)
  {
    return 0xD000000000000011;
  }

  else if (v2 == 0xA000000000000000 && v1 == 4 && *(v0 + 1) == 0)
  {
    return 0x54494A5F4F4ELL;
  }

  else if (v2 == 0xA000000000000000 && v1 == 5 && *(v0 + 1) == 0)
  {
    return 0x54524154535F4F4ELL;
  }

  else if (*(v0 + 1) == 0 && v1 == 6 && v2 == 0xA000000000000000)
  {
    return 4609109;
  }

  else
  {
    return 5260117;
  }
}

unint64_t AST.GlobalMatchingOptionSequence._dumpBase.getter()
{
  v1 = *v0;
  _StringGuts.grow(_:)(32);

  v2 = MEMORY[0x1C68E0D70](v1, &type metadata for AST.GlobalMatchingOption);
  MEMORY[0x1C68E0BF0](v2);

  MEMORY[0x1C68E0BF0](62, 0xE100000000000000);
  return 0xD00000000000001DLL;
}

unint64_t protocol witness for _ASTPrintable._dumpBase.getter in conformance AST.GlobalMatchingOptionSequence()
{
  v1 = *v0;
  _StringGuts.grow(_:)(32);

  v2 = MEMORY[0x1C68E0D70](v1, &type metadata for AST.GlobalMatchingOption);
  MEMORY[0x1C68E0BF0](v2);

  MEMORY[0x1C68E0BF0](62, 0xE100000000000000);
  return 0xD00000000000001DLL;
}

uint64_t PrettyPrinter.maxTopDownLevels.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t PrettyPrinter.minBottomUpLevels.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t PrettyPrinter.inlineMatchingOptions.setter(uint64_t a1)
{

  *(v1 + 80) = a1;
  return result;
}

void __swiftcall PrettyPrinter.init(maxTopDownLevels:minBottomUpLevels:)(_RegexParser::PrettyPrinter *__return_ptr retstr, Swift::Int_optional maxTopDownLevels, Swift::Int_optional minBottomUpLevels)
{
  *&retstr->indentWidth = xmmword_1C0C7E320;
  retstr->result._object = 0xE000000000000000;
  retstr->startOfLine = 1;
  retstr->indentLevel = 0;
  retstr->quantificationBehavior = _RegexParser_AST_Quantification_Kind_eager;
  retstr->inlineMatchingOptions._rawValue = MEMORY[0x1E69E7CC0];
  retstr->maxTopDownLevels.value = maxTopDownLevels.value;
  retstr->maxTopDownLevels.is_nil = maxTopDownLevels.is_nil;
  retstr->minBottomUpLevels.value = minBottomUpLevels.value;
  retstr->minBottomUpLevels.is_nil = minBottomUpLevels.is_nil;
}

Swift::Void __swiftcall PrettyPrinter.indent()()
{
  if (*(v0 + 56) == 1)
  {
    v1 = *(v0 + 64);
    v2 = *(v0 + 32);
    if ((v1 * v2) >> 64 == (v1 * v2) >> 63)
    {
      v3._countAndFlagsBits = 32;
      v3._object = 0xE100000000000000;
      countAndFlagsBits = String.init(repeating:count:)(v3, v1 * v2)._countAndFlagsBits;
      MEMORY[0x1C68E0BF0](countAndFlagsBits);

      *(v0 + 56) = 0;
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t (*PrettyPrinter.printLine(_:)(uint64_t (*result)(uint64_t)))(uint64_t)
{
  v2 = result;
  if (*(v1 + 56) == 1)
  {
    v3 = *(v1 + 64);
    v4 = *(v1 + 32);
    if ((v3 * v4) >> 64 != (v3 * v4) >> 63)
    {
      __break(1u);
      return result;
    }

    v5._countAndFlagsBits = 32;
    v5._object = 0xE100000000000000;
    countAndFlagsBits = String.init(repeating:count:)(v5, v3 * v4)._countAndFlagsBits;
    MEMORY[0x1C68E0BF0](countAndFlagsBits);

    *(v1 + 56) = 0;
  }

  v7 = v2(result);
  if (v8)
  {
    v9 = v8;
    do
    {
      MEMORY[0x1C68E0BF0](v7, v9);

      v7 = v2(v10);
      v9 = v11;
    }

    while (v11);
  }

  result = MEMORY[0x1C68E0BF0](10, 0xE100000000000000);
  *(v1 + 56) = 1;
  return result;
}

uint64_t (*PrettyPrinter.printIndented(_:)(uint64_t (*result)(uint64_t)))(uint64_t)
{
  v2 = *(v1 + 64);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 64) = v4;
    result = result(v1);
    v5 = *(v1 + 64);
    v3 = __OFSUB__(v5, 1);
    v6 = v5 - 1;
    if (!v3)
    {
      *(v1 + 64) = v6;
      return result;
    }
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall PrettyPrinter.pushMatchingOptions(_:isAdded:)(Swift::OpaquePointer _, Swift::Bool isAdded)
{
  v6 = *(v3 + 64);
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    v2 = isAdded;
    rawValue = _._rawValue;
    *(v3 + 64) = v8;
    v5 = *(v3 + 80);

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_3;
    }
  }

  v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5[2] + 1, 1, v5);
LABEL_3:
  v10 = v5[2];
  v9 = v5[3];
  if (v10 >= v9 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v5);
  }

  v5[2] = v10 + 1;
  v11 = &v5[2 * v10];
  v11[4] = rawValue;
  *(v11 + 40) = v2;
  *(v3 + 80) = v5;
}

Swift::tuple_OpaquePointer_Bool __swiftcall PrettyPrinter.popMatchingOptions()()
{
  v2 = *(v1 + 64);
  v3 = __OFSUB__(v2, 1);
  v4 = v2 - 1;
  if (v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  *(v1 + 64) = v4;
  v0 = *(v1 + 80);
  if (!v0[2])
  {
LABEL_7:
    __break(1u);
LABEL_8:
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew()(v0);
    v0 = isUniquelyReferenced_nonNull_native;
    v7 = *(isUniquelyReferenced_nonNull_native + 16);
    if (v7)
    {
      goto LABEL_5;
    }

LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_8;
  }

  v7 = v0[2];
  if (!v7)
  {
    goto LABEL_9;
  }

LABEL_5:
  v8 = v7 - 1;
  v9 = &v0[2 * v8];
  isUniquelyReferenced_nonNull_native = v9[4];
  v6 = *(v9 + 40);
  v0[2] = v8;
  *(v1 + 80) = v0;
LABEL_10:
  result._0._rawValue = isUniquelyReferenced_nonNull_native;
  result._1 = v6;
  return result;
}

Swift::String __swiftcall AST.renderAsCanonical(showDelimiters:terminateLine:)(Swift::Bool showDelimiters, Swift::Bool terminateLine)
{
  v3 = *(v2 + 2);
  v4 = *(v2 + 24);
  *&v8 = 0;
  BYTE8(v8) = 1;
  *&v9 = 0;
  BYTE8(v9) = 1;
  BYTE8(v10) = 1;
  *&v11 = 0;
  BYTE8(v11) = 0;
  v12 = MEMORY[0x1E69E7CC0];
  v13 = *v2;
  *&v14 = v3;
  BYTE8(v14) = v4;
  PrettyPrinter.printAsCanonical(_:delimiters:terminateLine:)(&v13, showDelimiters, terminateLine);
  *&v10 = 0xE000000000000000;
  v18 = v12;
  v13 = v8;
  v14 = v9;
  v15 = 2uLL;
  v16 = v10;
  v17 = v11;
  outlined destroy of PrettyPrinter(&v13);
  v5 = 0;
  v6 = 0xE000000000000000;
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

unint64_t *PrettyPrinter.printAsCanonical(_:delimiters:terminateLine:)(unint64_t *result, char a2, char a3)
{
  v6 = *result;
  v7 = result[1];
  if (*(v3 + 56) == 1)
  {
    v8 = *(v3 + 64);
    v9 = *(v3 + 32);
    if ((v8 * v9) >> 64 != (v8 * v9) >> 63)
    {
      __break(1u);
      return result;
    }

    v10._countAndFlagsBits = 32;
    v10._object = 0xE100000000000000;
    countAndFlagsBits = String.init(repeating:count:)(v10, v8 * v9)._countAndFlagsBits;
    MEMORY[0x1C68E0BF0](countAndFlagsBits);

    *(v3 + 56) = 0;
  }

  if (a2)
  {
    MEMORY[0x1C68E0BF0](12071, 0xE200000000000000);
  }

  if (v7)
  {
    v12 = v7;
    PrettyPrinter.outputAsCanonical(_:)(&v12);
  }

  v12 = v6;

  PrettyPrinter.outputAsCanonical(_:)(&v12);

  if (a2)
  {
    result = MEMORY[0x1C68E0BF0](10031, 0xE200000000000000);
  }

  if (a3)
  {
    result = MEMORY[0x1C68E0BF0](10, 0xE100000000000000);
    *(v3 + 56) = 1;
  }

  return result;
}

Swift::String __swiftcall AST.Node.renderAsCanonical(showDelimiters:terminateLine:)(Swift::Bool showDelimiters, Swift::Bool terminateLine)
{
  v5 = *v2;

  *&v9 = 0;
  BYTE8(v9) = 1;
  *&v10 = 0;
  BYTE8(v10) = 1;
  BYTE8(v11) = 1;
  *&v12 = 0;
  BYTE8(v12) = 0;
  v13 = MEMORY[0x1E69E7CC0];
  v14 = v5;
  *&v15 = MEMORY[0x1E69E7CC0];
  BYTE8(v15) = 0;
  PrettyPrinter.printAsCanonical(_:delimiters:terminateLine:)(&v14, showDelimiters, terminateLine);
  *&v11 = 0xE000000000000000;
  v19 = v13;
  v14 = v9;
  v15 = v10;
  v16 = 2uLL;
  v17 = v11;
  v18 = v12;
  outlined destroy of PrettyPrinter(&v14);

  v6 = 0;
  v7 = 0xE000000000000000;
  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

Swift::Void __swiftcall PrettyPrinter.outputAsCanonical(_:)(_RegexParser::AST::GlobalMatchingOptionSequence a1)
{
  v1 = *(*a1.options._rawValue + 16);
  if (v1)
  {
    v2 = *a1.options._rawValue + 48;
    do
    {
      v3 = AST.GlobalMatchingOption.Kind._canonicalBase.getter();
      MEMORY[0x1C68E0BF0](v3);

      MEMORY[0x1C68E0BF0](41, 0xE100000000000000);
      MEMORY[0x1C68E0BF0](10792, 0xE200000000000000);

      v2 += 48;
      --v1;
    }

    while (v1);
  }
}

uint64_t PrettyPrinter.outputAsCanonical(_:)(unint64_t *a1)
{
  v2 = type metadata accessor for AST.Atom(0);
  result = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  v7 = *a1 >> 60;
  if (v7 <= 5)
  {
    if (v7 <= 2)
    {
      if (v7)
      {
        v8 = v6 & 0xFFFFFFFFFFFFFFFLL;
        if (v7 != 1)
        {
          v37 = *(v8 + 64);
          v38 = *(v8 + 80);
          v39 = *(v8 + 96);
          v40 = *(v8 + 120);
          *&v75 = *(v8 + 112);
          v72 = v37;
          v73 = v38;
          v74 = v39;
          v41 = *(v8 + 32);
          *v70 = *(v8 + 16);
          *&v70[16] = v41;
          v42 = *(v8 + 64);
          v71 = *(v8 + 48);
          v54 = *(v8 + 48);
          v55 = v42;
          v56 = *(v8 + 80);
          LOBYTE(v57) = *(v8 + 96);
          v43 = *(v8 + 32);
          v52 = *(v8 + 16);
          v53 = v43;
          outlined init with copy of Source.Located<AST.Group.Kind>(v70, &v61);

          v44 = AST.Group.Kind._canonicalBase.getter();
          MEMORY[0x1C68E0BF0](v44);
          sub_1C0C7CB20(v70);

          *&v61 = v40;
          PrettyPrinter.outputAsCanonical(_:)(&v61);

          return MEMORY[0x1C68E0BF0](41, 0xE100000000000000);
        }

        specialized Sequence.forEach(_:)(v9);
      }

      else
      {
        v23 = *(v6 + 16);
        v24 = v23[2];
        if (!v24)
        {
          return result;
        }

        *v70 = v23[4];

        PrettyPrinter.outputAsCanonical(_:)(v70);

        v25 = v24 - 1;
        if (v25)
        {
          v26 = v23 + 5;
          do
          {
            MEMORY[0x1C68E0BF0](124, 0xE100000000000000);
            v27 = *v26++;
            *v70 = v27;

            PrettyPrinter.outputAsCanonical(_:)(v70);

            --v25;
          }

          while (v25);
        }
      }

      goto LABEL_34;
    }

    v14 = v6 & 0xFFFFFFFFFFFFFFFLL;
    if (v7 == 3)
    {
      v28 = *(v14 + 128);
      v66 = *(v14 + 112);
      v67 = v28;
      v29 = *(v14 + 160);
      v68 = *(v14 + 144);
      v69 = v29;
      v30 = *(v14 + 48);
      v31 = *(v14 + 80);
      v32 = *(v14 + 96);
      v63 = *(v14 + 64);
      v64 = v31;
      v65 = v32;
      v61 = *(v14 + 32);
      v62 = v30;
      v33 = *(v14 + 176);
      v34 = *(v14 + 208);
      outlined init with copy of AST.Conditional.Condition(&v61, v70);

      MEMORY[0x1C68E0BF0](40, 0xE100000000000000);
      v58 = v67;
      v59 = v68;
      v60 = v69;
      v54 = v63;
      v55 = v64;
      v56 = v65;
      v57 = v66;
      v52 = v61;
      v53 = v62;
      PrettyPrinter.outputAsCanonical(_:)();
      v75 = v58;
      v76 = v59;
      v77 = v60;
      v71 = v54;
      v72 = v55;
      v73 = v56;
      v74 = v57;
      *v70 = v52;
      *&v70[16] = v53;
      sub_1C0C61070(v70);
      *&v52 = v33;
      PrettyPrinter.outputAsCanonical(_:)(&v52);

      MEMORY[0x1C68E0BF0](124, 0xE100000000000000);
      *&v52 = v34;
      PrettyPrinter.outputAsCanonical(_:)(&v52);
    }

    if (v7 == 4)
    {
      v15 = *(v14 + 32);
      *v70 = *(v14 + 16);
      *&v70[16] = v15;
      v16 = *(v14 + 64);
      v71 = *(v14 + 48);
      v72 = v16;
      v17 = *(v14 + 96);
      *&v61 = *(v14 + 120);

      PrettyPrinter.outputAsCanonical(_:)(&v61);

      v18 = AST.Quantification.Amount._canonicalBase.getter();
      MEMORY[0x1C68E0BF0](v18);

      if (v17)
      {
        v19 = 0xE100000000000000;
        if (v17 == 1)
        {
          v17 = 63;
        }

        else
        {
          v17 = 43;
        }
      }

      else
      {
        v19 = 0xE000000000000000;
      }

      MEMORY[0x1C68E0BF0](v17, v19);
      goto LABEL_34;
    }

    v49 = *(v14 + 16);
    v50 = *(v14 + 24);
    *v70 = 20828;
    *&v70[8] = 0xE200000000000000;

    MEMORY[0x1C68E0BF0](v49, v50);
    v13 = 17756;
LABEL_29:
    MEMORY[0x1C68E0BF0](v13, 0xE200000000000000);

    MEMORY[0x1C68E0BF0](*v70, *&v70[8]);
LABEL_34:
  }

  if (v7 <= 8)
  {
    if (v7 == 6)
    {
      return result;
    }

    if (v7 != 7)
    {
      v45 = swift_projectBox();
      outlined init with copy of AST.CustomCharacterClass.Member(v45, v5, type metadata accessor for AST.Atom);
      v46 = AST.Atom._canonicalBase.getter();
      v48 = v47;
      outlined destroy of AST.CustomCharacterClass.Member(v5, type metadata accessor for AST.Atom);
      MEMORY[0x1C68E0BF0](v46, v48);
    }

    v10 = v6 & 0xFFFFFFFFFFFFFFFLL;
    v11 = *(v10 + 16);
    v12 = *(v10 + 24);
    *v70 = 31548;
    *&v70[8] = 0xE200000000000000;

    MEMORY[0x1C68E0BF0](v11, v12);
    v13 = 15997;
    goto LABEL_29;
  }

  if (v7 == 9)
  {
    v35 = v6 & 0xFFFFFFFFFFFFFFFLL;
    v36 = *(v35 + 40);
    v70[0] = *(v35 + 16);
    *&v70[8] = *(v35 + 24);
    *&v70[24] = v36;
    v71 = *(v35 + 48);
    return PrettyPrinter.outputAsCanonical(_:)(v70);
  }

  else if (v7 == 10)
  {
    v20 = (v6 & 0xFFFFFFFFFFFFFFFLL);
    v21 = v20[2];
    *v70 = v20[1];
    *&v70[16] = v21;
    v22 = v20[4];
    v71 = v20[3];
    v72 = v22;
    return PrettyPrinter.outputAsCanonical(_:)(v70);
  }

  return result;
}

uint64_t specialized Sequence.forEach(_:)(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 32);
    do
    {
      v3 = *v2++;
      v4 = v3;
      result = PrettyPrinter.outputAsCanonical(_:)(&v4);
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t specialized Sequence.forEach(_:)(uint64_t result, uint64_t *a2)
{
  v3 = v2;
  v4 = *(result + 16);
  if (v4)
  {
    v5 = a2;
    v6 = (result + 32);
    do
    {
      v7 = *v6;
      v87 = v6 + 1;
      v8 = v7 >> 60;
      if ((v7 >> 60) > 5)
      {
        if (v8 > 8)
        {
          if (v8 == 9)
          {
            v35 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
            v36 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
            v37 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
            v63 = v3;
            v38 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
            v39 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
            v40 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x38);
            v82 = &type metadata for AST.CustomCharacterClass;
            v83 = lazy protocol witness table accessor for type AST.CustomCharacterClass and conformance AST.CustomCharacterClass();
            v41 = swift_allocObject();
            v79 = v41;
            *(v41 + 16) = v35;
            *(v41 + 24) = v36;
            *(v41 + 32) = v37;
            *(v41 + 40) = v38;
            *(v41 + 48) = v39;
            *(v41 + 56) = v40;
            v3 = v63;
            v5 = a2;
            goto LABEL_26;
          }

          if (v8 == 10)
          {
            v21 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
            v66 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
            v67 = v21;
            v22 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
            v68 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
            v69 = v22;
            v82 = &type metadata for AST.AbsentFunction;
            v83 = lazy protocol witness table accessor for type AST.AbsentFunction and conformance AST.AbsentFunction();
            v23 = swift_allocObject();
            v79 = v23;
            v24 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
            v26 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
            v25 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
            v23[3] = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
            v23[4] = v24;
            v23[1] = v26;
            v23[2] = v25;
            outlined init with copy of AST.AbsentFunction(&v66, v65);
          }

          else
          {
            v61 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
            v62 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
            v82 = &type metadata for AST.Empty;
            v83 = lazy protocol witness table accessor for type AST.Empty and conformance AST.Empty();
            v79 = v61;
            v80 = v62;
            v5 = a2;
          }
        }

        else
        {
          if (v8 == 6)
          {
            v14 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
            v13 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
            v15 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
            v16 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
            v82 = &type metadata for AST.Trivia;
            v83 = lazy protocol witness table accessor for type AST.Trivia and conformance AST.Trivia();
LABEL_20:
            v29 = swift_allocObject();
            v79 = v29;
            v29[2] = v14;
            v29[3] = v13;
            v29[4] = v15;
            v29[5] = v16;
LABEL_26:

            goto LABEL_27;
          }

          if (v8 == 7)
          {
            v14 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
            v13 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
            v15 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
            v16 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
            v82 = &type metadata for AST.Interpolation;
            v83 = lazy protocol witness table accessor for type AST.Interpolation and conformance AST.Interpolation();
            goto LABEL_20;
          }

          v46 = type metadata accessor for AST.Atom(0);
          v47 = swift_projectBox();
          v82 = v46;
          v83 = lazy protocol witness table accessor for type AST.Atom and conformance AST.Atom(&lazy protocol witness table cache variable for type AST.Atom and conformance AST.Atom, type metadata accessor for AST.Atom, &protocol conformance descriptor for AST.Atom);
          boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v79);
          outlined init with copy of AST.CustomCharacterClass.Member(v47, boxed_opaque_existential_1Tm, type metadata accessor for AST.Atom);
        }
      }

      else if (v8 > 2)
      {
        v17 = v7 & 0xFFFFFFFFFFFFFFFLL;
        if (v8 == 3)
        {
          v30 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0xB0);
          v75 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0xA0);
          v76 = v30;
          v77 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0xC0);
          v78 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0xD0);
          v31 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x70);
          v71 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x60);
          v72 = v31;
          v32 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x90);
          v73 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x80);
          v74 = v32;
          v33 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
          v67 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          v68 = v33;
          v34 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
          v69 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
          v70 = v34;
          v66 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v82 = &type metadata for AST.Conditional;
          v83 = lazy protocol witness table accessor for type AST.Conditional and conformance AST.Conditional();
          v79 = swift_allocObject();
          memmove(v79 + 2, (v17 + 16), 0xC8uLL);
          outlined init with copy of AST.Conditional(&v66, v65);
        }

        else
        {
          if (v8 != 4)
          {
            v50 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
            v49 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
            v52 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
            v51 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
            v82 = &type metadata for AST.Quote;
            v83 = lazy protocol witness table accessor for type AST.Quote and conformance AST.Quote();
            v53 = swift_allocObject();
            v79 = v53;
            v53[2] = v50;
            v53[3] = v49;
            v53[4] = v52;
            v53[5] = v51;
            goto LABEL_26;
          }

          v18 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x70);
          v71 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x60);
          v72 = v18;
          v73 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x80);
          *&v74 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x90);
          v19 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
          v67 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          v68 = v19;
          v20 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
          v69 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
          v70 = v20;
          v66 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v82 = &type metadata for AST.Quantification;
          v83 = lazy protocol witness table accessor for type AST.Quantification and conformance AST.Quantification();
          v79 = swift_allocObject();
          memmove(v79 + 2, (v17 + 16), 0x88uLL);
          outlined init with copy of AST.Quantification(&v66, v65);
        }
      }

      else
      {
        if (!v8)
        {
          v27 = *(v7 + 16);
          v28 = *(v7 + 24);
          v82 = &type metadata for AST.Alternation;
          v83 = lazy protocol witness table accessor for type AST.Alternation and conformance AST.Alternation();
          v79 = v27;
          v80 = v28;

          goto LABEL_26;
        }

        if (v8 == 1)
        {
          v9 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v10 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          v11 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          v82 = &type metadata for AST.Concatenation;
          v12 = lazy protocol witness table accessor for type AST.Concatenation and conformance AST.Concatenation();
          v79 = v9;
          v80 = v10;
          v83 = v12;
          v81 = v11;
          goto LABEL_26;
        }

        v42 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x60);
        v70 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
        v71 = v42;
        v43 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x80);
        v72 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x70);
        v73 = v43;
        v44 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v66 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v67 = v44;
        v45 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
        v68 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        v69 = v45;
        v82 = &type metadata for AST.Group;
        v83 = lazy protocol witness table accessor for type AST.Group and conformance AST.Group();
        v79 = swift_allocObject();
        memmove(v79 + 2, ((v7 & 0xFFFFFFFFFFFFFFFLL) + 16), 0x80uLL);
        outlined init with copy of AST.Group(&v66, v65);
      }

LABEL_27:

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser8_ASTNode_pMd, &_s12_RegexParser8_ASTNode_pMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser10_ASTParent_pMd, &_s12_RegexParser10_ASTParent_pMR);
      if (swift_dynamicCast())
      {
        v54 = *(&v85 + 1);
        v55 = v86;
        __swift_project_boxed_opaque_existential_1Tm(&v84, *(&v85 + 1));
        v56 = (*(v55 + 16))(v54, v55);
        __swift_destroy_boxed_opaque_existential_1Tm(&v84);
        specialized Sequence.forEach(_:)(v56, v5);
      }

      else
      {
        v86 = 0;
        v84 = 0u;
        v85 = 0u;
        outlined destroy of _ASTParent?(&v84, &_s12_RegexParser10_ASTParent_pSgMd, &_s12_RegexParser10_ASTParent_pSgMR);
      }

      v57 = *v5;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v5 = v57;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v57 + 16) + 1, 1, v57);
        *v5 = v57;
      }

      v60 = *(v57 + 16);
      v59 = *(v57 + 24);
      if (v60 >= v59 >> 1)
      {
        v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v60 + 1, 1, v57);
        *v5 = v57;
      }

      *(v57 + 16) = v60 + 1;
      *(v57 + 8 * v60 + 32) = v7;

      --v4;
      v6 = v87;
    }

    while (v4);
  }

  return result;
}

uint64_t AST.Group.Kind._canonicalBase.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[6];
  v3 = v0[7];
  if (*(v0 + 80) > 1u)
  {
    if (*(v0 + 80) == 2)
    {
      return 0xD00000000000002FLL;
    }

    else
    {
      v8 = v0[9] | v0[8] | v0[5];
      v9 = v0[4] | v0[3] | v0[2];
      if (v4 | v2 | v1 | v3 | v8 | v9)
      {
        v10 = v4 | v2 | v3 | v8 | v9;
        if (v1 != 1 || v10)
        {
          if (v1 != 2 || v10)
          {
            if (v1 != 3 || v10)
            {
              if (v1 != 4 || v10)
              {
                if (v1 != 5 || v10)
                {
                  if (v1 != 6 || v10)
                  {
                    if (v1 != 7 || v10)
                    {
                      if (v1 != 8 || v10)
                      {
                        if (v1 != 9 || v10)
                        {
                          if (v1 == 10 && v10 == 0)
                          {
                            return 0x3A72732A28;
                          }

                          else
                          {
                            return 0x3A7273612A28;
                          }
                        }

                        else
                        {
                          return 708591400;
                        }
                      }

                      else
                      {
                        return 557596456;
                      }
                    }

                    else
                    {
                      return 1027358504;
                    }
                  }

                  else
                  {
                    return 2768680;
                  }
                }

                else
                {
                  return 2178856;
                }
              }

              else
              {
                return 4013864;
              }
            }

            else
            {
              return 4079400;
            }
          }

          else
          {
            return 8142632;
          }
        }

        else
        {
          return 3817256;
        }
      }

      else
      {
        return 40;
      }
    }
  }

  else
  {
    if (*(v0 + 80))
    {
      if (v2)
      {
        v6 = *v0;
      }

      else
      {
        v6 = 0;
      }

      if (v2)
      {
        v7 = v0[1];
      }

      else
      {
        v7 = 0xE000000000000000;
      }

      MEMORY[0x1C68E0BF0](v6, v7);

      MEMORY[0x1C68E0BF0](45, 0xE100000000000000);
      MEMORY[0x1C68E0BF0](v4, v3);
      MEMORY[0x1C68E0BF0](0, 0xE000000000000000);
    }

    else
    {
      MEMORY[0x1C68E0BF0](v1, v2);
    }

    MEMORY[0x1C68E0BF0](62, 0xE100000000000000);
    return 3948328;
  }
}

uint64_t PrettyPrinter.outputAsCanonical(_:)()
{
  _StringGuts.grow(_:)(27);

  v0 = lazy protocol witness table accessor for type AST.Conditional.Condition and conformance AST.Conditional.Condition();
  v1 = (*(v0 + 24))(&type metadata for AST.Conditional.Condition, v0);
  MEMORY[0x1C68E0BF0](v1);

  MEMORY[0x1C68E0BF0](690956832, 0xE400000000000000);
  MEMORY[0x1C68E0BF0](0xD000000000000015, 0x80000001C0C86BD0);
}

unint64_t AST.Atom._canonicalBase.getter()
{
  v1 = type metadata accessor for AST.Atom.Kind(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = AST.Atom.literalStringValue.getter();
  if (!v5)
  {
    outlined init with copy of AST.CustomCharacterClass.Member(v0, v3, type metadata accessor for AST.Atom.Kind);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 14)
    {
      if (EnumCaseMultiPayload == 15)
      {
        return 94;
      }

      if (EnumCaseMultiPayload == 16)
      {
        return 36;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        v19 = *v3;
        *&v21[0] = 0;
        *(&v21[0] + 1) = 0xE000000000000000;
        MEMORY[0x1C68E0BF0](92, 0xE100000000000000);
        LOBYTE(v20[0]) = v19;
        AST.Atom.EscapedBuiltin.character.getter();
        Character.write<A>(to:)();

        return *&v21[0];
      }

      if (EnumCaseMultiPayload == 9)
      {
        v10 = *(v3 + 3);
        v11 = *(v3 + 1);
        v22 = *(v3 + 2);
        v23 = v10;
        v12 = *(v3 + 3);
        v13 = *(v3 + 5);
        v24 = *(v3 + 4);
        v25 = v13;
        v14 = *(v3 + 1);
        v21[0] = *v3;
        v21[1] = v14;
        v20[2] = v22;
        v20[3] = v12;
        v15 = *(v3 + 5);
        v20[4] = v24;
        v20[5] = v15;
        v20[0] = v21[0];
        v20[1] = v11;
        v16 = AST.Reference._canonicalBase.getter();
        outlined destroy of AST.Reference(v21, outlined consume of AST.Reference.Kind);
        return v16;
      }
    }

    *&v21[0] = 0;
    *(&v21[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(19);