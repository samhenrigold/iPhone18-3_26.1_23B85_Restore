uint64_t CompilerLexError.message.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t CompilerLexError.message.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t swiftCompilerLexRegexLiteral(start:bufferEnd:mustBeRegex:)@<X0>(unint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  lexRegex(start:end:delimiters:)(v7, a1, a2, &outlined read-only object #0 of swiftCompilerLexRegexLiteral(start:bufferEnd:mustBeRegex:));
  v5 = v4;

  *a3 = v5;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  return result;
}

uint64_t lexRegex(start:end:)(uint64_t a1, unint64_t a2, unsigned __int8 *a3)
{
  result = lexRegex(start:end:delimiters:)(a1, a2, a3, &outlined read-only object #0 of lexRegex(start:end:));
  if (v3)
  {
    return v5;
  }

  return result;
}

uint64_t CompilerParseError.message.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CompilerParseError.message.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t CompilerParseError.location.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t swiftCompilerParseRegexLiteral(_:captureBufferOut:)(uint64_t a1, uint64_t a2, _WORD *a3)
{
  v5 = a1;
  specialized parseWithDelimiters<A>(_:)(a1, a2, &v20);
  if (v3)
  {
    *&v20 = 0;
    *(&v20 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(35);

    *&v20 = 0xD000000000000021;
    *(&v20 + 1) = 0x80000001C0C84B30;
    *&v17 = v3;
    MEMORY[0x1C68E13B0](v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v6 = String.init<A>(describing:)();
    v5 = v7;
    MEMORY[0x1C68E0BF0](v6);

    v8 = v20;
    v23 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser20LocatedErrorProtocol_pMd, &_s12_RegexParser20LocatedErrorProtocol_pMR);
    v9 = swift_dynamicCast();
    if (v9)
    {
      v10 = *(&v21 + 1);
      v5 = v22;
      __swift_project_boxed_opaque_existential_1Tm(&v20, *(&v21 + 1));
      (*(v5 + 16))(&v17, v10, v5);
      v11 = v17;
      __swift_destroy_boxed_opaque_existential_1Tm(&v20);
    }

    else
    {
      v22 = 0;
      v20 = 0u;
      v21 = 0u;
      outlined destroy of _ASTParent?(&v20, &_s12_RegexParser20LocatedErrorProtocol_pSgMd, &_s12_RegexParser20LocatedErrorProtocol_pSgMR);
      v11 = 0;
    }

    lazy protocol witness table accessor for type CompilerParseError and conformance CompilerParseError();
    swift_allocError();
    *v15 = v8;
    *(v15 + 16) = v11;
    *(v15 + 24) = v9 ^ 1;
    swift_willThrow();
  }

  else
  {
    static CaptureList.Builder.build(_:)(&v20, &v17);

    v23 = v17;
    CaptureList._captureStructure.getter(&v20);

    v12 = v20;
    v13 = v21;
    v14 = BYTE8(v21);
    v17 = v20;
    v18 = v21;
    v19 = BYTE8(v21);
    CaptureStructure.encode(to:)(a3);
    outlined consume of CaptureStructure(v12, *(&v12 + 1), v13, v14);
  }

  return v5;
}

uint64_t specialized parseWithDelimiters<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v60 = a1;
  *(&v60 + 1) = a2;

  v4 = String.init<A>(_:)();
  v6 = v5;
  stripDelimiter #1 (_:) in droppingRegexDelimiters(_:)(0, v4, v5, &v60);
  v7 = *(&v60 + 1);
  if (!*(&v60 + 1))
  {
    stripDelimiter #1 (_:) in droppingRegexDelimiters(_:)(1, v4, v6, &v60);
    v7 = *(&v60 + 1);
    if (!*(&v60 + 1))
    {
      goto LABEL_32;
    }
  }

  v8 = *(&v61 + 1);
  v9 = v60;
  v10 = v61;

  count = v8;
  if (v10)
  {
    v11 = 61;
  }

  else if (v8 >= 1 && (specialized StringProtocol.spansMultipleLinesInRegexLiteral.getter(v9, v7) & 1) != 0)
  {
    v11 = 67;
  }

  else
  {
    v11 = 0;
  }

  v67 = v9;
  specialized parseWithRecovery<A>(_:_:)(v9, v7, v11, v64);
  v12 = v64[0];
  v13 = v64[1];
  v14 = v65;
  v15 = v66;
  v16 = *(v65 + 16);
  if (!v16)
  {
LABEL_13:

    *a3 = v12;
    *(a3 + 8) = v13;
    *(a3 + 16) = v14;
    *(a3 + 24) = v15;
    return result;
  }

  v17 = 32;
  while (1)
  {
    v18 = (v65 + v17);
    v60 = *(v65 + v17);
    v19 = *(v65 + v17 + 16);
    v20 = *(v65 + v17 + 32);
    v21 = *(v65 + v17 + 48);
    *(v63 + 9) = *(v65 + v17 + 57);
    v62 = v20;
    v63[0] = v21;
    v61 = v19;
    if (v60 != 2)
    {
      break;
    }

    v17 += 80;
    if (!--v16)
    {
      goto LABEL_13;
    }
  }

  v45 = *(&v61 + 1);
  v46 = v62;
  v23 = v18[3];
  v58 = v18[2];
  v59[0] = v23;
  *(v59 + 9) = *(v18 + 57);
  v24 = v18[1];
  v56 = *v18;
  v57 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser6SourceV12LocatedErrorVy_AA11DiagnosticsV08throwAnyE0yyKF0E10DiagnosticL_VGMd, &_s12_RegexParser6SourceV12LocatedErrorVy_AA11DiagnosticsV08throwAnyE0yyKF0E10DiagnosticL_VGMR);
  lazy protocol witness table accessor for type Source.LocatedError<ErrorDiagnostic #1 in Diagnostics.throwAnyError()> and conformance Source.LocatedError<A>(&lazy protocol witness table cache variable for type Source.LocatedError<ErrorDiagnostic #1 in Diagnostics.throwAnyError()> and conformance Source.LocatedError<A>, &_s12_RegexParser6SourceV12LocatedErrorVy_AA11DiagnosticsV08throwAnyE0yyKF0E10DiagnosticL_VGMd, &_s12_RegexParser6SourceV12LocatedErrorVy_AA11DiagnosticsV08throwAnyE0yyKF0E10DiagnosticL_VGMR, &protocol conformance descriptor for Source.LocatedError<A>);
  v25 = swift_allocError();
  *v26 = v56;
  v28 = v58;
  v27 = v59[0];
  v29 = v57;
  *(v26 + 57) = *(v59 + 9);
  *(v26 + 32) = v28;
  *(v26 + 48) = v27;
  *(v26 + 16) = v29;
  *(v26 + 80) = v45;
  *(v26 + 88) = v46;
  swift_willThrow();
  outlined init with copy of Diagnostic(&v60, v55);

  v54 = v25;
  MEMORY[0x1C68E13B0](v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser20LocatedErrorProtocol_pMd, &_s12_RegexParser20LocatedErrorProtocol_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return MEMORY[0x1C68E13A0](v54);
  }

  MEMORY[0x1C68E13A0](v25);
  sub_1C0C61288(v55, v51);
  v30._countAndFlagsBits = 35;
  v30._object = 0xE100000000000000;
  v31 = String.init(repeating:count:)(v30, count);
  if (v10)
  {
    v32 = 31779;
  }

  else
  {
    v32 = 47;
  }

  if (v10)
  {
    v33 = 0xE200000000000000;
  }

  else
  {
    v33 = 0xE100000000000000;
  }

  v50 = v31;

  MEMORY[0x1C68E0BF0](v32, v33);

  v34 = String.count.getter();

  v35 = v52;
  v36 = v53;
  __swift_project_boxed_opaque_existential_1Tm(v51, v52);
  (*(v36 + 16))(&v50, v35, v36);
  v37 = String.distance(from:to:)();
  v38 = String.distance(from:to:)();

  if (v38 < v37)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (__OFADD__(v34, v37))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v39 = String.index(_:offsetBy:)();
  if (!__OFADD__(v34, v38))
  {
    v40 = v39;
    v41 = String.index(_:offsetBy:)();
    v42 = v52;
    v43 = v53;
    __swift_project_boxed_opaque_existential_1Tm(v51, v52);
    v44 = (*(v43 + 24))(v42, v43);
    swift_getErrorValue();
    if (v41 >> 14 >= v40 >> 14)
    {
      Error.addingLocation(_:)(v40, v41, v48, v49);
      MEMORY[0x1C68E13A0](v44);
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1Tm(v51);
      return MEMORY[0x1C68E13A0](v54);
    }

    goto LABEL_31;
  }

LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t parseWithDelimiters<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  (*(v9 + 16))(&v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  v10 = *(*(a3 + 8) + 8);
  v11 = String.init<A>(_:)();
  v13 = v12;
  stripDelimiter #1 (_:) in droppingRegexDelimiters(_:)(0, v11, v12, &v74);
  v14 = *(&v74 + 1);
  if (!*(&v74 + 1))
  {
    stripDelimiter #1 (_:) in droppingRegexDelimiters(_:)(1, v11, v13, &v74);
    v14 = *(&v74 + 1);
    if (!*(&v74 + 1))
    {
      goto LABEL_32;
    }
  }

  v61 = *(&v75 + 1);
  v15 = v74;
  v16 = v75;

  v59 = v16;
  v57 = a2;
  v58 = a1;
  v56 = v10;
  if (v16)
  {
    v17 = 61;
  }

  else if (v61 >= 1 && (specialized StringProtocol.spansMultipleLinesInRegexLiteral.getter(v15, v14) & 1) != 0)
  {
    v17 = 67;
  }

  else
  {
    v17 = 0;
  }

  v60 = v15;
  specialized parseWithRecovery<A>(_:_:)(v15, v14, v17, v78);
  v19 = v78[0];
  v18 = v78[1];
  v20 = v79;
  v21 = v80;
  v22 = *(v79 + 16);
  if (!v22)
  {
LABEL_13:

    *a4 = v19;
    *(a4 + 8) = v18;
    *(a4 + 16) = v20;
    *(a4 + 24) = v21;
    return result;
  }

  v23 = 32;
  while (1)
  {
    v24 = (v79 + v23);
    v74 = *(v79 + v23);
    v25 = *(v79 + v23 + 16);
    v26 = *(v79 + v23 + 32);
    v27 = *(v79 + v23 + 48);
    *(v77 + 9) = *(v79 + v23 + 57);
    v76 = v26;
    v77[0] = v27;
    v75 = v25;
    if (v74 != 2)
    {
      break;
    }

    v23 += 80;
    if (!--v22)
    {
      goto LABEL_13;
    }
  }

  v81 = v76;
  v55 = *(&v75 + 1);
  v29 = v24[3];
  v72 = v24[2];
  v73[0] = v29;
  *(v73 + 9) = *(v24 + 57);
  v30 = v24[1];
  v70 = *v24;
  v71 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser6SourceV12LocatedErrorVy_AA11DiagnosticsV08throwAnyE0yyKF0E10DiagnosticL_VGMd, &_s12_RegexParser6SourceV12LocatedErrorVy_AA11DiagnosticsV08throwAnyE0yyKF0E10DiagnosticL_VGMR);
  lazy protocol witness table accessor for type Source.LocatedError<ErrorDiagnostic #1 in Diagnostics.throwAnyError()> and conformance Source.LocatedError<A>(&lazy protocol witness table cache variable for type Source.LocatedError<ErrorDiagnostic #1 in Diagnostics.throwAnyError()> and conformance Source.LocatedError<A>, &_s12_RegexParser6SourceV12LocatedErrorVy_AA11DiagnosticsV08throwAnyE0yyKF0E10DiagnosticL_VGMd, &_s12_RegexParser6SourceV12LocatedErrorVy_AA11DiagnosticsV08throwAnyE0yyKF0E10DiagnosticL_VGMR, &protocol conformance descriptor for Source.LocatedError<A>);
  v31 = swift_allocError();
  *v32 = v70;
  v34 = v72;
  v33 = v73[0];
  v35 = v71;
  *(v32 + 57) = *(v73 + 9);
  *(v32 + 32) = v34;
  *(v32 + 48) = v33;
  *(v32 + 16) = v35;
  v36 = v81;
  *(v32 + 80) = v55;
  *(v32 + 88) = v36;
  swift_willThrow();
  outlined init with copy of Diagnostic(&v74, v69);

  v68 = v31;
  MEMORY[0x1C68E13B0](v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser20LocatedErrorProtocol_pMd, &_s12_RegexParser20LocatedErrorProtocol_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return MEMORY[0x1C68E13A0](v68);
  }

  MEMORY[0x1C68E13A0](v31);
  sub_1C0C61288(v69, v65);
  v37._countAndFlagsBits = 35;
  v37._object = 0xE100000000000000;
  v38 = String.init(repeating:count:)(v37, v61);
  if (v59)
  {
    v39 = 31779;
  }

  else
  {
    v39 = 47;
  }

  if (v59)
  {
    v40 = 0xE200000000000000;
  }

  else
  {
    v40 = 0xE100000000000000;
  }

  v64 = v38;

  MEMORY[0x1C68E0BF0](v39, v40);

  v41 = String.count.getter();

  v42 = v66;
  v43 = v67;
  __swift_project_boxed_opaque_existential_1Tm(v65, v66);
  (*(v43 + 16))(&v64, v42, v43);
  v44 = String.distance(from:to:)();
  v45 = String.distance(from:to:)();

  if (v45 < v44)
  {
    __break(1u);
    goto LABEL_29;
  }

  v46 = v57;
  v47 = v56;
  if (__OFADD__(v41, v44))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  Collection.index(atOffset:)(v41 + v44, v57, v56);
  v48 = v41 + v45;
  if (!__OFADD__(v41, v45))
  {
    countAndFlagsBits = v64._countAndFlagsBits;
    Collection.index(atOffset:)(v48, v46, v47);
    v50 = v64._countAndFlagsBits;
    v51 = v66;
    v52 = v67;
    __swift_project_boxed_opaque_existential_1Tm(v65, v66);
    v53 = (*(v52 + 24))(v51, v52);
    swift_getErrorValue();
    if (v50 >> 14 >= countAndFlagsBits >> 14)
    {
      Error.addingLocation(_:)(countAndFlagsBits, v50, v62, v63);
      MEMORY[0x1C68E13A0](v53);
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1Tm(v65);
      return MEMORY[0x1C68E13A0](v68);
    }

    goto LABEL_31;
  }

LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t Delimiter.hash(into:)()
{
  v1 = *(v0 + 1);
  MEMORY[0x1C68E1190](*v0);
  return MEMORY[0x1C68E1190](v1);
}

Swift::Int Delimiter.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  Hasher.init(_seed:)();
  MEMORY[0x1C68E1190](v1);
  MEMORY[0x1C68E1190](v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Delimiter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  Hasher.init(_seed:)();
  MEMORY[0x1C68E1190](v1);
  MEMORY[0x1C68E1190](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Delimiter()
{
  v1 = *(v0 + 1);
  MEMORY[0x1C68E1190](*v0);
  return MEMORY[0x1C68E1190](v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Delimiter(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 1);
  Hasher.init(_seed:)();
  MEMORY[0x1C68E1190](v2);
  MEMORY[0x1C68E1190](v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AST.AbsentFunction.Start(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x1C68E1190](v2);
  return Hasher._finalize()();
}

unint64_t DelimiterLexError.description.getter()
{
  v1 = 0xD00000000000001ALL;
  v2 = *v0;
  v3 = 0xD00000000000001FLL;
  v4 = 0xD000000000000030;
  if (v2 != 3)
  {
    v4 = 0xD000000000000029;
  }

  if (v2 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v1 = 0xD000000000000022;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

unint64_t protocol witness for CustomStringConvertible.description.getter in conformance DelimiterLexError()
{
  v1 = 0xD00000000000001ALL;
  v2 = *v0;
  v3 = 0xD00000000000001FLL;
  v4 = 0xD000000000000030;
  if (v2 != 3)
  {
    v4 = 0xD000000000000029;
  }

  if (v2 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v1 = 0xD000000000000022;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

unint64_t specialized Sequence<>.elementsEqual<A>(_:)(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = 0;
  v6 = *(a3 + 16);
  v7 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v30 = a3 + 32;
  v32 = v7;
  v8 = 4 * v7;
  v9 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v27 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v28 = a2 & 0xFFFFFFFFFFFFFFLL;
  result = 15;
  v29 = 4 << v9;
  while (1)
  {
    if (v5 == v6)
    {
      v12 = 0;
      v13 = v6;
      goto LABEL_11;
    }

    if (v5 >= v6)
    {
      break;
    }

    v13 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_35;
    }

    v12 = *(v30 + v5);
LABEL_11:
    v14 = result >> 14;
    v15 = result >> 14 == v8;
    if (result >> 14 == v8)
    {
      v16 = 0;
      if (v5 == v6)
      {
        return v15;
      }

      goto LABEL_30;
    }

    v17 = result & 0xC;
    v18 = result;
    if (v17 == v10)
    {
      v22 = result;
      v23 = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a1, a2);
      v10 = v29;
      v4 = a1;
      v18 = v23;
      result = v22;
    }

    v19 = v18 >> 16;
    if (v18 >> 16 >= v32)
    {
      goto LABEL_34;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      v26 = result;
      v24 = String.UTF8View._foreignSubscript(position:)();
      v10 = v29;
      v4 = a1;
      v16 = v24;
      result = v26;
      if (v17 == v29)
      {
        goto LABEL_27;
      }
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v33[0] = v4;
        v33[1] = v28;
        v20 = v33;
      }

      else
      {
        v20 = v27;
        if ((v4 & 0x1000000000000000) == 0)
        {
          v25 = result;
          v21 = _StringObject.sharedUTF8.getter();
          v10 = v29;
          v4 = a1;
          v20 = v21;
          result = v25;
        }
      }

      v16 = *(v20 + v19);
      if (v17 == v10)
      {
LABEL_27:
        result = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a1, a2);
        v10 = v29;
        v4 = a1;
        if ((a2 & 0x1000000000000000) == 0)
        {
LABEL_24:
          result = (result & 0xFFFFFFFFFFFF0000) + 65540;
          if (v5 == v6)
          {
            return v15;
          }

          goto LABEL_30;
        }

        goto LABEL_28;
      }
    }

    if ((a2 & 0x1000000000000000) == 0)
    {
      goto LABEL_24;
    }

LABEL_28:
    if (v32 <= result >> 16)
    {
      goto LABEL_36;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v10 = v29;
    v4 = a1;
    if (v5 == v6)
    {
      return v15;
    }

LABEL_30:
    v15 = 0;
    if (v14 != v8)
    {
      v5 = v13;
      if (v12 == v16)
      {
        continue;
      }
    }

    return v15;
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

unint64_t specialized Sequence<>.elementsEqual<A>(_:)(uint64_t a1, char a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  result = a3;
  v10 = 0;
  v11 = a4 >> 14;
  v12 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v12) = 1;
  }

  v13 = 4 << v12;
  v14 = a3 >> 14;
  v29 = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v30 = a6 & 0xFFFFFFFFFFFFFFLL;
  v15 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x2000000000000000) == 0)
  {
    v15 = a5 & 0xFFFFFFFFFFFFLL;
  }

  v31 = v15;
  while (1)
  {
    v16 = result >> 14;
    if (result >> 14 == v11)
    {
      v17 = 0;
      goto LABEL_25;
    }

    v18 = result & 0xC;
    v19 = result >> 14;
    v20 = result;
    if (v18 == v13)
    {
      break;
    }

    if (v16 < v14)
    {
      goto LABEL_34;
    }

LABEL_10:
    if (v19 >= v11)
    {
      goto LABEL_34;
    }

    if ((a6 & 0x1000000000000000) != 0)
    {
      v28 = result;
      v17 = String.UTF8View._foreignSubscript(position:)();
      result = v28;
      if (v18 != v13)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v21 = v20 >> 16;
      if ((a6 & 0x2000000000000000) != 0)
      {
        v33[0] = a5;
        v33[1] = v30;
        v22 = v33;
      }

      else
      {
        v22 = v29;
        if ((a5 & 0x1000000000000000) == 0)
        {
          v27 = result;
          v22 = _StringObject.sharedUTF8.getter();
          result = v27;
        }
      }

      v17 = *(v22 + v21);
      if (v18 != v13)
      {
LABEL_17:
        if ((a6 & 0x1000000000000000) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_23;
      }
    }

    result = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a5, a6);
    if ((a6 & 0x1000000000000000) == 0)
    {
LABEL_18:
      result = (result & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_25;
    }

LABEL_23:
    if (v31 <= result >> 16)
    {
      goto LABEL_36;
    }

    result = String.UTF8View._foreignIndex(after:)();
LABEL_25:
    v24 = v10 == a1;
    if (v10 == a1)
    {
      v25 = 0;
      v26 = a1;
      if (v16 == v11)
      {
        return v24;
      }
    }

    else
    {
      if (v10 < 0 || v10 >= a1)
      {
        goto LABEL_35;
      }

      v26 = v10 + 1;
      v25 = a2;
      if (v16 == v11)
      {
        return v24;
      }
    }

    v24 = 0;
    if (v10 != a1)
    {
      v10 = v26;
      if (v17 == v25)
      {
        continue;
      }
    }

    return v24;
  }

  v23 = result;
  v20 = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a5, a6);
  result = v23;
  v19 = v20 >> 14;
  if (v20 >> 14 >= v14)
  {
    goto LABEL_10;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

unint64_t specialized Sequence<>.elementsEqual<A>(_:)(unint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unsigned __int8 *a5, unsigned __int8 *a6)
{
  v9 = a2 >> 14;
  v10 = (a3 >> 59) & 1;
  if ((a4 & 0x1000000000000000) == 0)
  {
    LOBYTE(v10) = 1;
  }

  v11 = 4 << v10;
  v12 = result >> 14;
  v31 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v32 = a4 & 0xFFFFFFFFFFFFFFLL;
  v13 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v13 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v33 = v13;
  v34 = result >> 14;
  v35 = v11;
  v36 = a3;
  while (1)
  {
    if (a5)
    {
      if (a5 == a6)
      {
        v14 = 0;
        v15 = 1;
        a5 = a6;
      }

      else
      {
        v15 = 0;
        v16 = *a5++;
        v14 = v16;
      }
    }

    else
    {
      v14 = 0;
      v15 = 1;
    }

    v17 = result >> 14;
    v18 = result >> 14 == v9;
    if (result >> 14 == v9)
    {
      v19 = 0;
      if (v15)
      {
        return v18;
      }

      goto LABEL_32;
    }

    v20 = result & 0xC;
    v21 = result >> 14;
    v22 = result;
    if (v20 == v11)
    {
      break;
    }

    if (v17 < v12)
    {
      goto LABEL_35;
    }

LABEL_16:
    if (v21 >= v9)
    {
      goto LABEL_35;
    }

    if ((a4 & 0x1000000000000000) != 0)
    {
      v30 = result;
      v28 = String.UTF8View._foreignSubscript(position:)();
      v12 = v34;
      v11 = v35;
      a3 = v36;
      v19 = v28;
      result = v30;
      if (v20 == v35)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v23 = v22 >> 16;
      if ((a4 & 0x2000000000000000) != 0)
      {
        v37[0] = a3;
        v37[1] = v32;
        v24 = v37;
      }

      else
      {
        v24 = v31;
        if ((a3 & 0x1000000000000000) == 0)
        {
          v29 = result;
          v25 = _StringObject.sharedUTF8.getter();
          v12 = v34;
          v11 = v35;
          a3 = v36;
          v24 = v25;
          result = v29;
        }
      }

      v19 = *(v24 + v23);
      if (v20 == v11)
      {
LABEL_29:
        result = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a3, a4);
        v12 = v34;
        v11 = v35;
        a3 = v36;
        if ((a4 & 0x1000000000000000) == 0)
        {
LABEL_24:
          result = (result & 0xFFFFFFFFFFFF0000) + 65540;
          if (v15)
          {
            return v18;
          }

          goto LABEL_32;
        }

        goto LABEL_30;
      }
    }

    if ((a4 & 0x1000000000000000) == 0)
    {
      goto LABEL_24;
    }

LABEL_30:
    if (v33 <= result >> 16)
    {
      goto LABEL_36;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = v34;
    v11 = v35;
    a3 = v36;
    if (v15)
    {
      return v18;
    }

LABEL_32:
    v18 = 0;
    if (v17 == v9 || v14 != v19)
    {
      return v18;
    }
  }

  v26 = result;
  v27 = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a3, a4);
  v12 = v34;
  v11 = v35;
  a3 = v36;
  v22 = v27;
  result = v26;
  v21 = v22 >> 14;
  if (v22 >> 14 >= v34)
  {
    goto LABEL_16;
  }

LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

unint64_t specialized Sequence<>.elementsEqual<A>(_:)(unint64_t a1, unint64_t a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v7 = a1;
  v8 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v33 = v8;
  v9 = 4 * v8;
  v10 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v10) = 1;
  }

  v11 = 4 << v10;
  v29 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v30 = a2 & 0xFFFFFFFFFFFFFFLL;
  result = 15;
  v31 = 4 << v10;
  while (1)
  {
    if (a3)
    {
      if (a3 == a4)
      {
        v13 = 0;
        v14 = 1;
        a3 = a4;
      }

      else
      {
        v14 = 0;
        v15 = *a3++;
        v13 = v15;
      }
    }

    else
    {
      v13 = 0;
      v14 = 1;
    }

    v16 = result >> 14;
    v17 = result >> 14 == v9;
    if (result >> 14 == v9)
    {
      v18 = 0;
      if (v14)
      {
        return v17;
      }

      goto LABEL_30;
    }

    v19 = result & 0xC;
    v20 = result;
    if (v19 == v11)
    {
      v24 = result;
      v25 = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a1, a2);
      v11 = v31;
      v7 = a1;
      v20 = v25;
      result = v24;
    }

    v21 = v20 >> 16;
    if (v20 >> 16 >= v33)
    {
      break;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      v28 = result;
      v26 = String.UTF8View._foreignSubscript(position:)();
      v11 = v31;
      v7 = a1;
      v18 = v26;
      result = v28;
      if (v19 == v31)
      {
        goto LABEL_27;
      }
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v34[0] = v7;
        v34[1] = v30;
        v22 = v34;
      }

      else
      {
        v22 = v29;
        if ((v7 & 0x1000000000000000) == 0)
        {
          v27 = result;
          v23 = _StringObject.sharedUTF8.getter();
          v11 = v31;
          v7 = a1;
          v22 = v23;
          result = v27;
        }
      }

      v18 = *(v22 + v21);
      if (v19 == v11)
      {
LABEL_27:
        result = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a1, a2);
        v11 = v31;
        v7 = a1;
        if ((a2 & 0x1000000000000000) == 0)
        {
LABEL_24:
          result = (result & 0xFFFFFFFFFFFF0000) + 65540;
          if (v14)
          {
            return v17;
          }

          goto LABEL_30;
        }

        goto LABEL_28;
      }
    }

    if ((a2 & 0x1000000000000000) == 0)
    {
      goto LABEL_24;
    }

LABEL_28:
    if (v33 <= result >> 16)
    {
      goto LABEL_34;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v11 = v31;
    v7 = a1;
    if (v14)
    {
      return v17;
    }

LABEL_30:
    v17 = 0;
    if (v16 == v9 || v13 != v18)
    {
      return v17;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

unint64_t specialized Sequence<>.elementsEqual<A>(_:)(char *a1, char *a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v8 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v9 = 4 * v8;
  v10 = (a3 >> 59) & 1;
  if ((a4 & 0x1000000000000000) == 0)
  {
    LOBYTE(v10) = 1;
  }

  v11 = 4 << v10;
  v25 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v26 = a4 & 0xFFFFFFFFFFFFFFLL;
  result = 15;
  while (1)
  {
    v13 = result >> 14;
    if (result >> 14 == v9)
    {
      v14 = 0;
      if (a1)
      {
        goto LABEL_21;
      }

      goto LABEL_28;
    }

    v15 = result & 0xC;
    v16 = result;
    if (v15 == v11)
    {
      v22 = result;
      v16 = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a3, a4);
      result = v22;
    }

    v17 = v16 >> 16;
    if (v16 >> 16 >= v8)
    {
      break;
    }

    if ((a4 & 0x1000000000000000) != 0)
    {
      v24 = result;
      v14 = String.UTF8View._foreignSubscript(position:)();
      result = v24;
      if (v15 != v11)
      {
        goto LABEL_19;
      }
    }

    else
    {
      if ((a4 & 0x2000000000000000) != 0)
      {
        v27[0] = a3;
        v27[1] = v26;
        v18 = v27;
      }

      else
      {
        v18 = v25;
        if ((a3 & 0x1000000000000000) == 0)
        {
          v23 = result;
          v18 = _StringObject.sharedUTF8.getter();
          result = v23;
        }
      }

      v14 = *(v18 + v17);
      if (v15 != v11)
      {
LABEL_19:
        if ((a4 & 0x1000000000000000) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_26;
      }
    }

    result = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a3, a4);
    if ((a4 & 0x1000000000000000) == 0)
    {
LABEL_20:
      result = (result & 0xFFFFFFFFFFFF0000) + 65540;
      if (a1)
      {
        goto LABEL_21;
      }

      goto LABEL_28;
    }

LABEL_26:
    if (v8 <= result >> 16)
    {
      goto LABEL_36;
    }

    result = String.UTF8View._foreignIndex(after:)();
    if (a1)
    {
LABEL_21:
      if (a1 == a2)
      {
        v19 = 0;
        v20 = 1;
        a1 = a2;
      }

      else
      {
        v20 = 0;
        v21 = *a1++;
        v19 = v21;
      }

      goto LABEL_29;
    }

LABEL_28:
    v19 = 0;
    v20 = 1;
LABEL_29:
    if (v13 == v9)
    {
      return v20;
    }

    if (v14 != v19)
    {
      LODWORD(v20) = 1;
    }

    if (v20 == 1)
    {
      return 0;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

unint64_t specialized Sequence<>.elementsEqual<A>(_:)(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  v10 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x2000000000000000) == 0)
  {
    v10 = a5 & 0xFFFFFFFFFFFFLL;
  }

  v26 = v10;
  v11 = 4 * v10;
  v12 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v12) = 1;
  }

  v30 = 4 << v12;
  v24 = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v25 = a6 & 0xFFFFFFFFFFFFFFLL;
  v13 = (a3 >> 59) & 1;
  if ((a4 & 0x1000000000000000) == 0)
  {
    LOBYTE(v13) = 1;
  }

  v28 = 4 << v13;
  v14 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v14 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v14;

  v15 = 15;
  while (1)
  {
    v16 = v15 >> 14;
    if (v15 >> 14 == v11)
    {
      if ((a1 ^ a2) >= 0x4000)
      {
        v19 = 0;
        goto LABEL_30;
      }

      v20 = 1;
LABEL_41:

      return v20;
    }

    result = v15;
    if ((v15 & 0xC) == v30)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v15, a5, a6);
    }

    v18 = result >> 16;
    if (result >> 16 >= v26)
    {
      break;
    }

    if ((a6 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
    }

    else if ((a6 & 0x2000000000000000) != 0)
    {
      v31[0] = a5;
      v31[1] = v25;
      v19 = *(v31 + v18);
    }

    else
    {
      result = v24;
      if ((a5 & 0x1000000000000000) == 0)
      {
        result = _StringObject.sharedUTF8.getter();
      }

      v19 = *(result + v18);
    }

    if ((v15 & 0xC) == v30)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v15, a5, a6);
      v15 = result;
      if ((a6 & 0x1000000000000000) == 0)
      {
LABEL_24:
        v15 = (v15 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_29;
      }
    }

    else if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_24;
    }

    if (v26 <= v15 >> 16)
    {
      goto LABEL_43;
    }

    v15 = String.UTF8View._foreignIndex(after:)();
LABEL_29:
    if ((a1 ^ a2) < 0x4000)
    {
      v20 = 0;
      goto LABEL_41;
    }

LABEL_30:
    result = Substring.UTF8View.subscript.getter();
    if ((a1 & 0xC) == v28)
    {
      v21 = result;
      a1 = _StringGuts._slowEnsureMatchingEncoding(_:)(a1, a3, a4);
      result = v21;
      if ((a4 & 0x1000000000000000) != 0)
      {
LABEL_37:
        if (v23 <= a1 >> 16)
        {
          goto LABEL_44;
        }

        v22 = result;
        a1 = String.UTF8View._foreignIndex(after:)();
        LOBYTE(result) = v22;
        goto LABEL_33;
      }
    }

    else if ((a4 & 0x1000000000000000) != 0)
    {
      goto LABEL_37;
    }

    a1 = (a1 & 0xFFFFFFFFFFFF0000) + 65540;
LABEL_33:
    v20 = 0;
    if (v16 == v11 || v19 != result)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

unint64_t specialized Sequence<>.elementsEqual<A>(_:)(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6)
{
  v9 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  if ((a6 & 0x2000000000000000) != 0)
  {
    v10 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v10 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v11 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v11 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v12 = 4 << v9;
  v28 = 4 * v11;
  v13 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v13) = 1;
  }

  v14 = 4 << v13;
  v25 = a2 & 0xFFFFFFFFFFFFFFLL;
  v26 = v12;
  v23 = v10;
  v24 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;

  v15 = 15;
  while (1)
  {
    v16 = a3 ^ a4;
    if ((a3 ^ a4) < 0x4000)
    {
      if (v28 != v15 >> 14)
      {
        v17 = 0;
        goto LABEL_19;
      }

      v22 = 1;
LABEL_43:

      return v22;
    }

    result = Substring.UTF8View.subscript.getter();
    v17 = result;
    if ((a3 & 0xC) == v26)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(a3, a5, a6);
      a3 = result;
      if ((a6 & 0x1000000000000000) == 0)
      {
LABEL_17:
        a3 = (a3 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_18;
      }
    }

    else if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_17;
    }

    if (v23 <= a3 >> 16)
    {
      goto LABEL_46;
    }

    a3 = String.UTF8View._foreignIndex(after:)();
LABEL_18:
    if (v28 == v15 >> 14)
    {
      v22 = 0;
      goto LABEL_43;
    }

LABEL_19:
    v19 = v15 & 0xC;
    result = v15;
    if (v19 == v14)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v15, a1, a2);
    }

    v20 = result >> 16;
    if (result >> 16 >= v11)
    {
      break;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v21 = result;
      if (v19 != v14)
      {
        goto LABEL_29;
      }
    }

    else if ((a2 & 0x2000000000000000) != 0)
    {
      v31[0] = a1;
      v31[1] = v25;
      v21 = *(v31 + v20);
      if (v19 != v14)
      {
        goto LABEL_29;
      }
    }

    else
    {
      result = v24;
      if ((a1 & 0x1000000000000000) == 0)
      {
        result = _StringObject.sharedUTF8.getter();
      }

      v21 = *(result + v20);
      if (v19 != v14)
      {
LABEL_29:
        if ((a2 & 0x1000000000000000) != 0)
        {
          goto LABEL_33;
        }

        goto LABEL_30;
      }
    }

    result = _StringGuts._slowEnsureMatchingEncoding(_:)(v15, a1, a2);
    v15 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
LABEL_33:
      if (v11 <= v15 >> 16)
      {
        goto LABEL_45;
      }

      v15 = String.UTF8View._foreignIndex(after:)();
      goto LABEL_35;
    }

LABEL_30:
    v15 = (v15 & 0xFFFFFFFFFFFF0000) + 65540;
LABEL_35:
    v22 = 0;
    if (v16 < 0x4000 || v17 != v21)
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

uint64_t specialized BidirectionalCollection.lastIndex(where:)(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    v3 = a2 - result;
    if (a2 == result)
    {
      return 0;
    }

    else
    {
      result = a2 - result;
      while (!__OFSUB__(result--, 1))
      {
        if (result < 0 || result >= v3)
        {
          goto LABEL_16;
        }

        v5 = *(v2 + result);
        v6 = v5 == 10 || v5 == 13;
        if (v6 || !result)
        {
          return result;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
    }
  }

  return result;
}

uint64_t DelimiterLexer.advance(escaped:)(uint64_t result)
{
  v2 = v1[1];
  if (v2 >= v1[2])
  {
    if (v1[3])
    {
      v2 = v1[3];
    }

    goto LABEL_9;
  }

  if (*v2 < 0)
  {
LABEL_24:
    v1[1] = v2 + 1;
    return result;
  }

  v3 = *v2;
  if (v3 <= 0xC)
  {
    if (!*v2)
    {
      goto LABEL_24;
    }

    if (v3 != 10)
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  if (v3 != 92)
  {
    if (v3 == 13)
    {
LABEL_13:
      if (!v1[3])
      {
LABEL_9:
        lazy protocol witness table accessor for type DelimiterLexError and conformance DelimiterLexError();
        swift_allocError();
        *v4 = 0;
        goto LABEL_10;
      }

      goto LABEL_24;
    }

LABEL_16:
    if (v3 >= 0x20 && v3 != 127)
    {
      goto LABEL_24;
    }

    if (v3 == 9 && v1[3] != 0)
    {
      goto LABEL_24;
    }

    ++v2;
    lazy protocol witness table accessor for type DelimiterLexError and conformance DelimiterLexError();
    swift_allocError();
    *v4 = 3;
LABEL_10:
    *(v4 + 8) = v2;
    return swift_willThrow();
  }

  if (result)
  {
    goto LABEL_16;
  }

  v1[1] = v2 + 1;
  return DelimiterLexer.advance(escaped:)(1);
}

unint64_t stripDelimiter #1 (_:) in droppingRegexDelimiters(_:)@<X0>(char a1@<W0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v5 = a2;
  }

  v6 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v6 = 11;
  }

  result = specialized String.UTF8View.subscript.getter(0xFuLL, v6 | (v5 << 16), a2, a3);
  v11 = result;
  v12 = v8;
  v13 = v9;
  v14 = v10;
  v61 = a1;
  if (a1)
  {

    v15 = 0;
    v16 = 0xE200000000000000;
    v17 = 31779;
    goto LABEL_15;
  }

  v18 = v8 >> 14;
  v19 = result >> 14;
  if (result >> 14 == v8 >> 14)
  {
LABEL_8:
    v20 = v12 >> 14;
LABEL_9:
    if (v20 < v19)
    {
      goto LABEL_65;
    }

    specialized Substring.UTF8View.subscript.getter(v11, result, v11, v12, v13, v14);

    v15 = Substring.UTF8View.distance(from:to:)();

    if (v15 < 0)
    {
      goto LABEL_66;
    }

    result = Substring.UTF8View.index(_:offsetBy:limitedBy:)();
    if (v21)
    {
      result = v12;
    }

    if (v18 < result >> 14)
    {
      goto LABEL_67;
    }

    v11 = specialized Substring.UTF8View.subscript.getter(result, v12, v11, v12, v13, v14);
    v12 = v22;
    v13 = v23;
    v25 = v24;

    v16 = 0xE100000000000000;
    v17 = 47;
    v14 = v25;
    a1 = v61;
LABEL_15:
    v26 = specialized Collection<>.tryDropPrefix<A>(_:)(v17, v16, v11, v12, v13, v14);
    v28 = v27;
    v30 = v29;
    v32 = v31;

    if (!v32)
    {
      *a4 = 0u;
      *(a4 + 16) = 0u;
      return result;
    }

    if ((a1 & 1) != 0 && v15)
    {
      goto LABEL_68;
    }

    v33 = (a1 & 1) == 0;
    if (a1)
    {
      v34 = 9084;
    }

    else
    {
      v34 = 47;
    }

    if (v33)
    {
      v35 = 0xE100000000000000;
    }

    else
    {
      v35 = 0xE200000000000000;
    }

    v36._countAndFlagsBits = 35;
    v36._object = 0xE100000000000000;
    v37 = String.init(repeating:count:)(v36, v15);
    v71 = v34;
    v72 = v35;

    MEMORY[0x1C68E0BF0](v37._countAndFlagsBits, v37._object);

    v38 = specialized Collection<>.tryDropSuffix<A>(_:)(v71, v72, v26, v28, v30, v32);
    v40 = v39;
    v42 = v41;
    v44 = v43;

    if (v44)
    {

      v26 = v38;
      v28 = v40;
      v30 = v42;
      v32 = v44;
    }

    v45 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SS_Tg5063_sSS8decoding2asSSx_q_mtcSlRzs16_UnicodeEncodingR_8CodeUnitQy_7g26Rtzr0_lufcSSSRyAGGXEfU_Ss8jK14V_s0C0O0H0OTG5Tf1cn_n(v26, v28, v30, v32);
    if (!v46)
    {
      v67 = v26;
      v68 = v28;
      v69 = v30;
      v70 = v32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss19_HasContiguousBytes_pMd, &_ss19_HasContiguousBytes_pMR);
      if (swift_dynamicCast())
      {
        sub_1C0C61288(v65, &v71);
        __swift_project_boxed_opaque_existential_1Tm(&v71, v73);
        if (dispatch thunk of _HasContiguousBytes._providesContiguousBytesNoCopy.getter())
        {

          __swift_project_boxed_opaque_existential_1Tm(&v71, v73);
          dispatch thunk of _HasContiguousBytes.withUnsafeBytes<A>(_:)();
          v48 = *(&v65[0] + 1);
          v47 = *&v65[0];
          __swift_destroy_boxed_opaque_existential_1Tm(&v71);
LABEL_60:

          v56 = specialized Sequence<>.elementsEqual<A>(_:)(v26, v28, v30, v32, v47, v48);

          if ((v56 & 1) == 0)
          {
            goto LABEL_64;
          }

          *a4 = v47;
          *(a4 + 8) = v48;
          *(a4 + 16) = v61 & 1;
          *(a4 + 24) = v15;
          return result;
        }

        __swift_destroy_boxed_opaque_existential_1Tm(&v71);
      }

      else
      {
        v66 = 0;
        memset(v65, 0, sizeof(v65));
        outlined destroy of _ASTParent?(v65, &_ss19_HasContiguousBytes_pSgMd, &_ss19_HasContiguousBytes_pSgMR);
      }

      v45 = _sSS44_fromNonContiguousUnsafeBitcastUTF8RepairingySS6result_Sb11repairsMadetxSlRzlFZSs0F4ViewV_Tt0g5(v26, v28, v30, v32);
    }

    v47 = v45;
    v48 = v46;

    goto LABEL_60;
  }

  v49 = (v9 >> 59) & 1;
  if ((v10 & 0x1000000000000000) == 0)
  {
    LOBYTE(v49) = 1;
  }

  v50 = 4 << v49;
  v63 = (v10 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v64 = v10 & 0xFFFFFFFFFFFFFFLL;
  v51 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v51 = v9 & 0xFFFFFFFFFFFFLL;
  }

  v62 = v51;
  v20 = result >> 14;
  while (1)
  {
    v52 = result & 0xC;
    v53 = result;
    if (v52 == v50)
    {
      v57 = result;
      v53 = _StringGuts._slowEnsureMatchingEncoding(_:)(result, v13, v14);
      result = v57;
    }

    if (v53 >> 14 < v19 || v53 >> 14 >= v18)
    {
      break;
    }

    if ((v14 & 0x1000000000000000) != 0)
    {
      v58 = result;
      v55 = String.UTF8View._foreignSubscript(position:)();
      result = v58;
    }

    else if ((v14 & 0x2000000000000000) != 0)
    {
      v71 = v13;
      v72 = v64;
      v55 = *(&v71 + (v53 >> 16));
    }

    else
    {
      v54 = v63;
      if ((v13 & 0x1000000000000000) == 0)
      {
        v59 = result;
        v54 = _StringObject.sharedUTF8.getter();
        result = v59;
      }

      v55 = *(v54 + (v53 >> 16));
    }

    if (v55 != 35)
    {
      goto LABEL_9;
    }

    if (v52 == v50)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(result, v13, v14);
      if ((v14 & 0x1000000000000000) == 0)
      {
LABEL_36:
        result = (result & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_37;
      }
    }

    else if ((v14 & 0x1000000000000000) == 0)
    {
      goto LABEL_36;
    }

    if (v62 <= result >> 16)
    {
      goto LABEL_63;
    }

    result = String.UTF8View._foreignIndex(after:)();
LABEL_37:
    v20 = result >> 14;
    if (result >> 14 == v18)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_63:
  __break(1u);
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
  return result;
}

unint64_t specialized Collection<>.tryDropPrefix<A>(_:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v10 = a2;
  if ((a2 & 0x1000000000000000) == 0 || (String.UTF8View._foreignCount()() & 0x8000000000000000) == 0)
  {
    goto LABEL_2;
  }

  __break(1u);
LABEL_14:
  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_2:
    v12 = Substring.UTF8View.index(_:offsetBy:limitedBy:)();
    if (v13)
    {
      v14 = a4;
    }

    else
    {
      v14 = v12;
    }

    if (v14 >> 14 < a3 >> 14)
    {
      goto LABEL_14;
    }

    v15 = specialized Substring.UTF8View.subscript.getter(a3, v14, a3, a4, a5, a6);
    v17 = v16;
    v19 = v18;
    v21 = v20;

    v10 = specialized Sequence<>.elementsEqual<A>(_:)(a1, v10, v15, v17, v19, v21);

    if ((v10 & 1) == 0)
    {
      return 0;
    }

    v22 = Substring.UTF8View.index(_:offsetBy:limitedBy:)();
    if (v23)
    {
      v22 = a4;
    }

    if (a4 >> 14 >= v22 >> 14)
    {
      v24 = specialized Substring.UTF8View.subscript.getter(v22, a4, a3, a4, a5, a6);

      return v24;
    }
  }
}

unint64_t specialized Collection<>.tryDropSuffix<A>(_:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  v10 = a2;
  if ((a2 & 0x1000000000000000) != 0)
  {
    v13 = String.UTF8View._foreignCount()();
    if ((v13 & 0x8000000000000000) == 0)
    {
      goto LABEL_23;
    }

    __break(1u);
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v12 = a1 & 0xFFFFFFFFFFFFLL;
  }

  while (1)
  {
    v13 = specialized Collection.count.getter(a3, a4, a5, a6);
    if (__OFSUB__(v13, v12))
    {
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v13 = Substring.UTF8View.index(_:offsetBy:limitedBy:)();
    if (v14)
    {
      v13 = a4;
    }

    if (a4 >> 14 < v13 >> 14)
    {
      goto LABEL_20;
    }

    v26 = v12;
    v15 = specialized Substring.UTF8View.subscript.getter(v13, a4, a3, a4, a5, a6);
    v17 = v16;
    v19 = v18;
    v21 = v20;

    v10 = specialized Sequence<>.elementsEqual<A>(_:)(a1, v10, v15, v17, v19, v21);

    if ((v10 & 1) == 0)
    {
      return 0;
    }

    v13 = specialized Collection.count.getter(a3, a4, a5, a6);
    if (__OFSUB__(v13, v26))
    {
      goto LABEL_21;
    }

    v13 = Substring.UTF8View.index(_:offsetBy:limitedBy:)();
    if (v22)
    {
      v23 = a4;
    }

    else
    {
      v23 = v13;
    }

    if (v23 >> 14 >= a3 >> 14)
    {
      v24 = specialized Substring.UTF8View.subscript.getter(a3, v23, a3, a4, a5, a6);

      return v24;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    v12 = v13;
  }
}

uint64_t Collection<>.tryDropPrefix<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a4)(uint64_t, uint64_t, void)@<X3>, uint64_t a6@<X5>, void (*a7)(uint64_t, uint64_t, void)@<X6>, void (*a8)(uint64_t, uint64_t, void)@<X7>, uint64_t a9@<X8>)
{
  v25 = a8;
  v26 = a1;
  v27 = a7;
  v28 = a6;
  v29 = a9;
  v11 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v17 = v24 - v16;
  v18 = dispatch thunk of Collection.count.getter();
  v24[0] = *(v11 + 16);
  v24[1] = v11 + 16;
  (v24[0])(v13, v30, a2);
  v27(v18, a2, a4);
  v27 = a4;
  swift_getAssociatedConformanceWitness();
  v19 = Sequence<>.elementsEqual<A>(_:)();
  (*(v15 + 8))(v17, AssociatedTypeWitness);
  if (v19)
  {
    (v24[0])(v13, v30, a2);
    v20 = v29;
    v25(v18, a2, v27);
    v21 = 0;
    v22 = v20;
  }

  else
  {
    v21 = 1;
    v22 = v29;
  }

  return (*(v15 + 56))(v22, v21, 1, AssociatedTypeWitness);
}

uint64_t lexRegex(start:end:delimiters:)(uint64_t result, unint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  if (a3 < a2)
  {
    goto LABEL_99;
  }

  v7 = a2;
  v57 = a2;
  v59 = a3;
  v60 = 0;
  v61 = a4;
  v53 = result;
  v8 = 0;
  if (a2 < a3)
  {
    while (*v7 == 35)
    {
      if (++v7 > a3)
      {
        goto LABEL_95;
      }

      if (__OFADD__(v8, 1))
      {
        goto LABEL_96;
      }

      ++v8;
      if (v7 == a3)
      {
        v7 = a3;
        v8 = &a3[-a2];
        break;
      }
    }
  }

  v9 = *(a4 + 16);

  if (!v9)
  {
LABEL_33:

    lazy protocol witness table accessor for type DelimiterLexError and conformance DelimiterLexError();
    swift_allocError();
    *v25 = 2;
    *(v25 + 8) = v7 + 1;
    swift_willThrow();
    return v7;
  }

  v10 = 0;
  v64 = a4 + 32;
  while (1)
  {
    if (v10 >= *(a4 + 16))
    {
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
      goto LABEL_97;
    }

    v11 = *(v64 + v10);
    if (*(v64 + v10))
    {
      result = 31779;
    }

    else
    {
      result = 47;
    }

    if (*(v64 + v10))
    {
      v12 = 0xE200000000000000;
    }

    else
    {
      v12 = 0xE100000000000000;
    }

    if (v11 == 1 && v8 != 0)
    {
      if (v8 <= 1)
      {
        v15 = specialized Collection.prefix(_:)(v8, 0x7C23uLL, 0xE200000000000000);
        result = specialized Sequence<>.elementsEqual<A>(_:)(v8, 35, v15, v16, v17, v18);
        if (result)
        {
          v19 = specialized Collection.dropFirst(_:)(v8, 0x7C23uLL, 0xE200000000000000);
          v21 = v20;
          v23 = v22;
          v56 = v24;
          result = specialized Collection.count.getter(v19, v20, v22, v24);
          if (v7 + result <= a3)
          {
            result = specialized Sequence<>.elementsEqual<A>(_:)(v19, v21, v23, v56, v7, (v7 + result));
            if (result)
            {
              result = specialized Collection.count.getter(v19, v21, v23, v56);
              v58 = (v7 + result);
              if (v7 + result > a3)
              {
                goto LABEL_104;
              }

              v55 = v7 + result;
              v8 = 0;
              v11 = 1;
              goto LABEL_51;
            }
          }
        }
      }

      goto LABEL_11;
    }

    v14 = HIBYTE(v12) & 3;
    if (v7 + v14 <= a3)
    {
      v55 = v7 + v14;
      if (specialized Sequence<>.elementsEqual<A>(_:)(result, v12, v7, (v7 + v14)))
      {
        break;
      }
    }

    result = swift_bridgeObjectRelease_n();
LABEL_11:
    if (v9 == ++v10)
    {
      goto LABEL_33;
    }
  }

  swift_bridgeObjectRelease_n();
  v26 = (v7 + v14);
  v58 = (v7 + v14);
  if (v11)
  {
    result = HIBYTE(v12) & 3;
    goto LABEL_51;
  }

  result = HIBYTE(v12) & 3;
  if (v8 >= 1 && v55 < a3)
  {
    v27 = v7 + v14;
    while (1)
    {
      v28 = *v26;
      if (v28 > 0xC)
      {
        if (v28 != 32)
        {
          if (v28 == 13)
          {
LABEL_47:
            v58 = v26;
            v60 = v27;
            break;
          }

LABEL_49:
          v58 = v26;
          break;
        }
      }

      else if (v28 != 9)
      {
        if (v28 == 10)
        {
          goto LABEL_47;
        }

        goto LABEL_49;
      }

      if (++v26 > a3)
      {
        goto LABEL_100;
      }

      ++v27;
      if (v26 >= a3)
      {
        v26 = a3;
        goto LABEL_49;
      }
    }
  }

LABEL_51:
  v29 = v11;
  v30 = 47;
  if (v11)
  {
    v30 = 9084;
  }

  v64 = v30;
  v31 = 0xE100000000000000;
  if (v11)
  {
    v31 = 0xE200000000000000;
  }

  v54 = v31;
  v52 = v7 + result;
  while (2)
  {
    v32 = v58;
    v33._countAndFlagsBits = 35;
    v33._object = 0xE100000000000000;
    v34 = String.init(repeating:count:)(v33, v8);
    v62 = v64;
    v63 = v54;

    MEMORY[0x1C68E0BF0](v34._countAndFlagsBits, v34._object);

    v36 = v62;
    v35 = v63;
    v38 = v58;
    v37 = v59;
    v39 = HIBYTE(v63) & 0xF;
    if ((v63 & 0x1000000000000000) != 0)
    {
      v40 = String.UTF8View._foreignCount()();
    }

    else if ((v63 & 0x2000000000000000) != 0)
    {
      v40 = HIBYTE(v63) & 0xF;
    }

    else
    {
      v40 = v62 & 0xFFFFFFFFFFFFLL;
    }

    if (v37 < &v38[v40] || (result = specialized Sequence<>.elementsEqual<A>(_:)(v36, v35, v38, &v38[v40]), (result & 1) == 0))
    {

      v7 = 0;
      v38 = 0;
      goto LABEL_66;
    }

    if ((v35 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignCount()();
      v39 = result;
    }

    else if ((v35 & 0x2000000000000000) == 0)
    {
      v39 = v36 & 0xFFFFFFFFFFFFLL;
    }

    v58 = &v38[v39];
    if (v37 < &v38[v39])
    {
      goto LABEL_101;
    }

    result = v55;
    v41 = &v32[-v55];
    if (!v60)
    {
LABEL_87:
      v47 = result;
      v7 = static String._fromUTF8Repairing(_:)();
      v38 = v48;
      if ((specialized Sequence<>.elementsEqual<A>(_:)(v47, v32, v7, v48) & 1) == 0)
      {

        v7 = 1;
LABEL_89:
        v49 = v58;
        lazy protocol witness table accessor for type DelimiterLexError and conformance DelimiterLexError();
        v50 = swift_allocError();
        *v51 = v7;
        *(v51 + 8) = v49;
        swift_willThrow();
        v4 = v50;
        if (v50)
        {
LABEL_92:

          return v7;
        }

        goto LABEL_67;
      }

LABEL_66:
      if (v4)
      {
        goto LABEL_92;
      }

LABEL_67:
      if (v38)
      {

        *v53 = v29;
        *(v53 + 8) = v8;
        return v7;
      }

      v7 = &v57;
      DelimiterLexer.advance(escaped:)(0);
      if (v4)
      {
        goto LABEL_92;
      }

      continue;
    }

    break;
  }

  result = specialized BidirectionalCollection.lastIndex(where:)(v55, v32);
  if (v42)
  {
    goto LABEL_105;
  }

  v43 = (result + 1);
  if (__OFADD__(result, 1))
  {
    goto LABEL_102;
  }

  if (v41 < v43)
  {
    goto LABEL_103;
  }

  if (v43 == v41)
  {
    result = v55;
    goto LABEL_87;
  }

  v44 = result + 1;
  result = v55;
  while (v44 < v41)
  {
    if ((v43 & 0x8000000000000000) != 0)
    {
      goto LABEL_98;
    }

    v45 = *(v52 + v44);
    if (v45 != 32 && v45 != 9)
    {
      v7 = 4;
      goto LABEL_89;
    }

    if (v41 == ++v44)
    {
      goto LABEL_87;
    }
  }

LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
  return result;
}

uint64_t ParseError.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  switch(*(v1 + 32))
  {
    case 1:
      MEMORY[0x1C68E1190](1);
      String.hash(into:)();
      v11 = v4;
      goto LABEL_71;
    case 2:
      MEMORY[0x1C68E1190](2);
      String.hash(into:)();
      v11 = v4;
      goto LABEL_71;
    case 3:
      v6 = 3;
      goto LABEL_59;
    case 4:
      v6 = 5;
      goto LABEL_59;
    case 5:
      v14 = 6;
      goto LABEL_40;
    case 6:
      v6 = 7;
      goto LABEL_59;
    case 7:
      v14 = 8;
      goto LABEL_40;
    case 8:
      v6 = 9;
      goto LABEL_59;
    case 9:
      v13 = 10;
      goto LABEL_47;
    case 0xA:
      v13 = 13;
      goto LABEL_47;
    case 0xB:
      v13 = 14;
      goto LABEL_47;
    case 0xC:
      v6 = 18;
      goto LABEL_59;
    case 0xD:
      v6 = 19;
      goto LABEL_59;
    case 0xE:
      v6 = 20;
      goto LABEL_59;
    case 0xF:
      v6 = 21;
      goto LABEL_59;
    case 0x10:
      v13 = 22;
      goto LABEL_47;
    case 0x11:
      v13 = 23;
LABEL_47:
      MEMORY[0x1C68E1190](v13);
      goto LABEL_48;
    case 0x12:
      MEMORY[0x1C68E1190](27);
      if (v3)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      goto LABEL_60;
    case 0x13:
      v6 = 28;
      goto LABEL_59;
    case 0x14:
      v6 = 29;
      goto LABEL_59;
    case 0x15:
      v6 = 30;
      goto LABEL_59;
    case 0x16:
      v6 = 31;
      goto LABEL_59;
    case 0x17:
      v6 = 32;
      goto LABEL_59;
    case 0x18:
      v6 = 33;
      goto LABEL_59;
    case 0x19:
      v6 = 34;
      goto LABEL_59;
    case 0x1A:
      v12 = 37;
      goto LABEL_64;
    case 0x1B:
      v12 = 38;
      goto LABEL_64;
    case 0x1C:
      v12 = 39;
LABEL_64:
      MEMORY[0x1C68E1190](v12);
      v11 = v2;
      goto LABEL_71;
    case 0x1D:
      v6 = 46;
      goto LABEL_59;
    case 0x1E:
      v6 = 47;
      goto LABEL_59;
    case 0x1F:
      v14 = 48;
LABEL_40:
      MEMORY[0x1C68E1190](v14);
      v11 = v2;
      goto LABEL_71;
    case 0x20:
      v6 = 49;
      goto LABEL_59;
    case 0x21:
      v6 = 50;
      goto LABEL_59;
    case 0x22:
      MEMORY[0x1C68E1190](53);
      MEMORY[0x1C68E1190](v2);
      v11 = v3;
      goto LABEL_71;
    case 0x23:
      MEMORY[0x1C68E1190](54);
      String.hash(into:)();
LABEL_48:

      goto LABEL_50;
    case 0x24:
      if (v4 | v3 | v2 | v5)
      {
        v7 = v4 | v3 | v5;
        if (v2 == 1 && v7 == 0)
        {
          v11 = 11;
        }

        else if (v2 == 2 && v7 == 0)
        {
          v11 = 12;
        }

        else if (v2 == 3 && v7 == 0)
        {
          v11 = 15;
        }

        else if (v2 != 4 || v7)
        {
          if (v2 != 5 || v7)
          {
            if (v2 != 6 || v7)
            {
              if (v2 != 7 || v7)
              {
                if (v2 != 8 || v7)
                {
                  if (v2 != 9 || v7)
                  {
                    if (v2 != 10 || v7)
                    {
                      if (v2 != 11 || v7)
                      {
                        if (v2 != 12 || v7)
                        {
                          if (v2 != 13 || v7)
                          {
                            if (v2 != 14 || v7)
                            {
                              if (v2 != 15 || v7)
                              {
                                if (v2 != 16 || v7)
                                {
                                  if (v2 != 17 || v7)
                                  {
                                    if (v2 != 18 || v7)
                                    {
                                      v11 = 55;
                                    }

                                    else
                                    {
                                      v11 = 52;
                                    }
                                  }

                                  else
                                  {
                                    v11 = 51;
                                  }
                                }

                                else
                                {
                                  v11 = 45;
                                }
                              }

                              else
                              {
                                v11 = 44;
                              }
                            }

                            else
                            {
                              v11 = 43;
                            }
                          }

                          else
                          {
                            v11 = 42;
                          }
                        }

                        else
                        {
                          v11 = 41;
                        }
                      }

                      else
                      {
                        v11 = 40;
                      }
                    }

                    else
                    {
                      v11 = 36;
                    }
                  }

                  else
                  {
                    v11 = 35;
                  }
                }

                else
                {
                  v11 = 26;
                }
              }

              else
              {
                v11 = 25;
              }
            }

            else
            {
              v11 = 24;
            }
          }

          else
          {
            v11 = 17;
          }
        }

        else
        {
          v11 = 16;
        }
      }

      else
      {
        v11 = 4;
      }

LABEL_71:
      result = MEMORY[0x1C68E1190](v11);
      break;
    default:
      v6 = 0;
LABEL_59:
      MEMORY[0x1C68E1190](v6);
LABEL_60:

LABEL_50:
      result = String.hash(into:)();
      break;
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ParseError()
{
  Hasher.init(_seed:)();
  ParseError.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ParseError(uint64_t a1)
{
  Hasher.init(_seed:)();
  ParseError.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ParseError(uint64_t a1, int8x16_t *a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8 = a2[2].i8[0];
  return specialized static ParseError.== infix(_:_:)(v5, v7) & 1;
}

unint64_t ParseError.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  switch(*(v0 + 32))
  {
    case 1:
      _StringGuts.grow(_:)(26);

      strcpy(v39, "expected ");
      WORD1(v39[1]) = 0;
      HIDWORD(v39[1]) = -385875968;
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1C68E0BF0](v24);

      MEMORY[0x1C68E0BF0](0x2073746967696420, 0xEC00000027206E69);
      goto LABEL_68;
    case 2:
      v21 = *(v0 + 16);
      if (*(v0 + 16))
      {
        if (v21 == 1)
        {
          v22 = 0x7265626D756ELL;
        }

        else
        {
          v22 = 0xD000000000000012;
        }

        if (v21 == 1)
        {
          v23 = 0xE600000000000000;
        }

        else
        {
          v23 = 0x80000001C0C86B60;
        }
      }

      else
      {
        v23 = 0xEC0000007265626DLL;
        v22 = 0x756E206C6174636FLL;
      }

      v37 = HIBYTE(v2) & 0xF;
      if ((v2 & 0x2000000000000000) == 0)
      {
        v37 = v1 & 0xFFFFFFFFFFFFLL;
      }

      if (v37)
      {
        MEMORY[0x1C68E0BF0](v1, v2);
        MEMORY[0x1C68E0BF0](39, 0xE100000000000000);
        v38 = 0x27206E6920;
        v35 = 0xE500000000000000;
      }

      else
      {
        v38 = 0;
        v35 = 0xE000000000000000;
      }

      strcpy(v39, "expected ");
      WORD1(v39[1]) = 0;
      HIDWORD(v39[1]) = -385875968;
      MEMORY[0x1C68E0BF0](v22, v23);

      v28 = v38;
      goto LABEL_100;
    case 3:
      strcpy(v39, "expected '");
      BYTE3(v39[1]) = 0;
      HIDWORD(v39[1]) = -369098752;
      goto LABEL_68;
    case 4:

      return v1;
    case 5:
      v39[0] = 0;
      v39[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(43);

      v25 = 0x80000001C0C86930;
      v26 = 0xD000000000000029;
      goto LABEL_49;
    case 6:
      _StringGuts.grow(_:)(30);

      v39[0] = v1;
      v39[1] = v2;
      v15 = " expression, have ";
      v5 = 0xD00000000000001CLL;
      goto LABEL_85;
    case 7:
      v39[0] = 0;
      v39[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(52);
      MEMORY[0x1C68E0BF0](0xD000000000000032, 0x80000001C0C868D0);
      goto LABEL_50;
    case 8:
      v39[0] = 0;
      v39[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(62);
      MEMORY[0x1C68E0BF0](0xD000000000000011, 0x80000001C0C86880);
      MEMORY[0x1C68E0BF0](v1, v2);
      v15 = "matching option '";
      v5 = 0xD00000000000002BLL;
      goto LABEL_85;
    case 9:
      v39[0] = 0;
      v39[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(23);
      v17 = "character class members";
      v18 = 0xD000000000000014;
      goto LABEL_57;
    case 0xA:
      v39[0] = 0;
      v39[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(29);
      v17 = "ter; use '\\u{...}' instead";
      v18 = 0xD00000000000001ALL;
      goto LABEL_57;
    case 0xB:
      v39[0] = 0;
      v39[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(61);
      MEMORY[0x1C68E0BF0](39, 0xE100000000000000);
      Character.write<A>(to:)();
      v15 = "ulti-line literal";
      v5 = 0xD00000000000003ALL;
      goto LABEL_85;
    case 0xC:
      _StringGuts.grow(_:)(44);

      strcpy(v39, "quantifier '");
      BYTE5(v39[1]) = 0;
      HIWORD(v39[1]) = -5120;
      MEMORY[0x1C68E0BF0](v1, v2);
      v15 = "' must include name";
      v5 = 0xD00000000000001ELL;
      goto LABEL_85;
    case 0xD:
      _StringGuts.grow(_:)(45);

      v39[0] = 0xD000000000000018;
      v39[1] = 0x80000001C0C86960;
      MEMORY[0x1C68E0BF0](v1, v2);
      v15 = "backtracking directive '";
      v5 = 0xD000000000000013;
      goto LABEL_85;
    case 0xE:
      v39[0] = 0;
      v39[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(24);

      v16 = "unknown group kind '(";
      goto LABEL_64;
    case 0xF:
      v39[0] = 0;
      v39[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(25);

      v19 = 0x80000001C0C86840;
      v20 = 0xD000000000000016;
      goto LABEL_67;
    case 0x10:
      v39[0] = 0;
      v39[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(51);
      MEMORY[0x1C68E0BF0](0xD00000000000001BLL, 0x80000001C0C86800);
      Character.write<A>(to:)();
      v15 = "unknown text segment mode '";
      v5 = 0xD000000000000016;
      goto LABEL_85;
    case 0x11:
      v39[0] = 0;
      v39[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(28);
      v17 = "ith '^' specifier";
      v18 = 0xD000000000000019;
LABEL_57:
      MEMORY[0x1C68E0BF0](v18, v17 | 0x8000000000000000);
      goto LABEL_58;
    case 0x12:
      if (v2)
      {
        _StringGuts.grow(_:)(34);

        v39[0] = 0xD00000000000001CLL;
        v39[1] = 0x80000001C0C866A0;
        MEMORY[0x1C68E0BF0](v1, v2);
        MEMORY[0x1C68E0BF0](61, 0xE100000000000000);
      }

      else
      {
        _StringGuts.grow(_:)(31);

        v39[0] = 0xD00000000000001CLL;
        v39[1] = 0x80000001C0C866A0;
      }

      v30 = v3;
      v31 = v4;
      goto LABEL_69;
    case 0x13:
      v39[0] = 0;
      v39[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(24);

      v16 = "unrecognized script '";
LABEL_64:
      v19 = (v16 - 32) | 0x8000000000000000;
      v20 = 0xD000000000000015;
      goto LABEL_67;
    case 0x14:
      v39[0] = 0;
      v39[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(26);

      v27 = "unrecognized category '";
      goto LABEL_66;
    case 0x15:
      v39[0] = 0;
      v39[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(23);

      v19 = 0x80000001C0C86480;
      v20 = 0xD000000000000014;
      goto LABEL_67;
    case 0x16:
      v39[0] = 0;
      v39[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(57);
      MEMORY[0x1C68E0BF0](0xD000000000000018, 0x80000001C0C86420);
      MEMORY[0x1C68E0BF0](v1, v2);
      v15 = "invalid age format for '";
      v5 = 0xD00000000000001FLL;
      goto LABEL_85;
    case 0x17:
      v39[0] = 0;
      v39[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(26);

      v27 = "invalid numeric value '";
LABEL_66:
      v19 = (v27 - 32) | 0x8000000000000000;
      v20 = 0xD000000000000017;
      goto LABEL_67;
    case 0x18:
      v39[0] = 0;
      v39[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(30);

      v19 = 0x80000001C0C86460;
      v20 = 0xD00000000000001BLL;
      goto LABEL_67;
    case 0x19:
      v39[0] = 0;
      v39[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(38);

      v19 = 0x80000001C0C863D0;
      v20 = 0xD000000000000023;
      goto LABEL_67;
    case 0x1A:
      strcpy(v39, "expected ");
      WORD1(v39[1]) = 0;
      HIDWORD(v39[1]) = -385875968;
      if (v1)
      {
        v28 = 0x2074756F6C6C6163;
        if (v1 == 1)
        {
          v35 = 0xEC000000656D616ELL;
        }

        else
        {
          v35 = 0xEB00000000676174;
        }
      }

      else
      {
        v28 = 0x616E2070756F7267;
        v35 = 0xEA0000000000656DLL;
      }

LABEL_100:
      v29 = v35;
      goto LABEL_101;
    case 0x1B:
      v39[0] = 0;
      v39[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(44);
      if (v1)
      {
        v11 = 0x2074756F6C6C6163;
        if (v1 == 1)
        {
          v12 = 0xEC000000656D616ELL;
        }

        else
        {
          v12 = 0xEB00000000676174;
        }
      }

      else
      {
        v11 = 0x616E2070756F7267;
        v12 = 0xEA0000000000656DLL;
      }

      MEMORY[0x1C68E0BF0](v11, v12);

      v15 = " must not start with number";
      v5 = 0xD00000000000002ALL;
      goto LABEL_85;
    case 0x1C:
      v39[0] = 0;
      v39[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(29);
      if (v1)
      {
        v32 = 0x2074756F6C6C6163;
        if (v1 == 1)
        {
          v33 = 0xEC000000656D616ELL;
        }

        else
        {
          v33 = 0xEB00000000676174;
        }
      }

      else
      {
        v32 = 0x616E2070756F7267;
        v33 = 0xEA0000000000656DLL;
      }

      MEMORY[0x1C68E0BF0](v32, v33);

      v34 = " must not start with number";
      goto LABEL_98;
    case 0x1D:
      _StringGuts.grow(_:)(29);

      v39[0] = v1;
      v39[1] = v2;
      v34 = " is not currently supported";
LABEL_98:
      v6 = (v34 - 32) | 0x8000000000000000;
      v5 = 0xD00000000000001BLL;
      goto LABEL_86;
    case 0x1E:
      v39[0] = 0;
      v39[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(57);
      MEMORY[0x1C68E0BF0](v1, v2);
      v15 = "no capture numbered ";
      v5 = 0xD000000000000037;
      goto LABEL_85;
    case 0x1F:
      v39[0] = 0;
      v39[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(22);

      v25 = 0x80000001C0C86350;
      v26 = 0xD000000000000014;
LABEL_49:
      v39[0] = v26;
      v39[1] = v25;
LABEL_50:
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
LABEL_101:
      MEMORY[0x1C68E0BF0](v28, v29);

      return v39[0];
    case 0x20:
      v39[0] = 0;
      v39[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(21);

      v19 = 0x80000001C0C86330;
      v20 = 0xD000000000000012;
LABEL_67:
      v39[0] = v20;
      v39[1] = v19;
LABEL_68:
      v30 = v1;
      v31 = v2;
LABEL_69:
      MEMORY[0x1C68E0BF0](v30, v31);
      goto LABEL_70;
    case 0x21:
      _StringGuts.grow(_:)(31);

      strcpy(v39, "group named '");
      HIWORD(v39[1]) = -4864;
      MEMORY[0x1C68E0BF0](v1, v2);
      v15 = "han or equal to upper bound '";
      v5 = 0xD000000000000010;
LABEL_85:
      v6 = v15 | 0x8000000000000000;
      goto LABEL_86;
    case 0x22:
      v39[0] = 0;
      v39[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(69);
      MEMORY[0x1C68E0BF0](0xD000000000000013, 0x80000001C0C862C0);
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1C68E0BF0](v13);

      MEMORY[0x1C68E0BF0](0xD00000000000002DLL, 0x80000001C0C862E0);
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1C68E0BF0](v14);

      goto LABEL_70;
    case 0x23:
      v39[0] = 0;
      v39[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(54);
      MEMORY[0x1C68E0BF0](0x6574636172616863, 0xEB00000000272072);
      Character.write<A>(to:)();
      MEMORY[0x1C68E0BF0](0xD000000000000026, 0x80000001C0C86290);
LABEL_58:
      Character.write<A>(to:)();
LABEL_70:
      v5 = 39;
      v6 = 0xE100000000000000;
      goto LABEL_86;
    case 0x24:
      if (!(v3 | v2 | v1 | v4))
      {
        return 0xD000000000000017;
      }

      v7 = v3 | v2 | v4;
      if (v1 == 1 && v7 == 0)
      {
        return 0xD00000000000001BLL;
      }

      if (v1 == 2 && v7 == 0)
      {
        return 0xD000000000000018;
      }

      if (v1 == 3 && v7 == 0)
      {
        return 0xD000000000000041;
      }

      if (v1 == 4 && !v7)
      {
        return 0xD000000000000053;
      }

      if (v1 == 5 && !v7)
      {
        return 0xD000000000000022;
      }

      if (v1 == 6 && !v7)
      {
        return 0xD000000000000031;
      }

      if (v1 == 7 && !v7)
      {
        return 0xD000000000000027;
      }

      if (v1 == 8 && !v7)
      {
        return 0xD000000000000016;
      }

      if (v1 == 9 && !v7)
      {
        return 0xD000000000000018;
      }

      if (v1 == 10 && !v7)
      {
        return 0xD000000000000030;
      }

      if (v1 == 11 && !v7)
      {
        return 0xD00000000000002FLL;
      }

      if (v1 == 12 && !v7)
      {
        return 0xD00000000000002CLL;
      }

      if (v1 == 13 && !v7)
      {
        return 0xD000000000000036;
      }

      if (v1 == 14 && !v7)
      {
        return 0xD00000000000004BLL;
      }

      if (v1 == 15 && !v7)
      {
        return 0xD00000000000001CLL;
      }

      if (v1 == 16 && !v7)
      {
        return 0xD00000000000001ALL;
      }

      if (v1 == 17 && !v7)
      {
        return 0xD000000000000027;
      }

      if (v1 != 18 || v7)
      {
        return 0xD00000000000001ELL;
      }

      return 0xD000000000000035;
    default:
      _StringGuts.grow(_:)(19);

      v39[0] = 0xD000000000000011;
      v39[1] = 0x80000001C0C86B80;
      v5 = v1;
      v6 = v2;
LABEL_86:
      MEMORY[0x1C68E0BF0](v5, v6);
      return v39[0];
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance FatalParseError()
{
  Hasher.init(_seed:)();
  MEMORY[0x1C68E1190](0);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance FatalParseError(uint64_t a1)
{
  MEMORY[0x1C68E1190](0);

  return String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance FatalParseError(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1C68E1190](0);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance FatalParseError(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance FatalParseError()
{
  v1 = *v0;
  v2 = v0[1];
  strcpy(v4, "UNREACHABLE: ");
  MEMORY[0x1C68E0BF0](v1, v2);
  return v4[0];
}

uint64_t Diagnostic.message.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

__n128 Diagnostic.location.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + 24);
  *a1 = result;
  return result;
}

void Diagnostic.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 3);
  v4 = *(v1 + 4);
  v5 = v1[72];
  MEMORY[0x1C68E1190](*v1);
  String.hash(into:)();
  MEMORY[0x1C68E11C0](v3 >> 14);
  MEMORY[0x1C68E11C0](v4 >> 14);
  if (v5 == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    ParseError.hash(into:)(a1);
  }
}

Swift::Int Diagnostic.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 3);
  v3 = *(v0 + 4);
  v6 = *(v0 + 40);
  v7 = *(v0 + 56);
  v4 = v0[72];
  Hasher.init(_seed:)();
  MEMORY[0x1C68E1190](v1);
  String.hash(into:)();
  MEMORY[0x1C68E11C0](v2 >> 14);
  MEMORY[0x1C68E11C0](v3 >> 14);
  if (v4 == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v9 = v6;
    v10 = v7;
    v11 = v4;
    Hasher._combine(_:)(1u);
    ParseError.hash(into:)(v8);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Diagnostic(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 3);
  v4 = *(v1 + 4);
  v7 = *(v1 + 40);
  v8 = *(v1 + 56);
  v5 = v1[72];
  Hasher.init(_seed:)();
  MEMORY[0x1C68E1190](v2);
  String.hash(into:)();
  MEMORY[0x1C68E11C0](v3 >> 14);
  MEMORY[0x1C68E11C0](v4 >> 14);
  if (v5 == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v10 = v7;
    v11 = v8;
    v12 = v5;
    Hasher._combine(_:)(1u);
    ParseError.hash(into:)(v9);
  }

  return Hasher._finalize()();
}

_RegexParser::Diagnostics __swiftcall Diagnostics.init()()
{
  *v0 = MEMORY[0x1E69E7CC0];
  *(v0 + 8) = 0;
  return result;
}

_RegexParser::Diagnostics __swiftcall Diagnostics.init(_:)(Swift::OpaquePointer a1)
{
  *(v1 + 8) = 0;
  *v1 = a1;
  result.diags = a1;
  return result;
}

__n128 Diagnostics.append(_:)(__int128 *a1)
{
  v2 = a1[3];
  v13 = a1[2];
  v14[0] = v2;
  *(v14 + 9) = *(a1 + 57);
  result = a1[1];
  v11 = *a1;
  v12 = result;
  if ((*(v1 + 8) & 1) == 0)
  {
    v4 = *v1;
    outlined init with copy of Diagnostic(&v11, &v10);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
    }

    v6 = *(v4 + 2);
    v5 = *(v4 + 3);
    if (v6 >= v5 >> 1)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1, v4);
    }

    *(v4 + 2) = v6 + 1;
    v7 = &v4[80 * v6];
    *(v7 + 2) = v11;
    result = v12;
    v8 = v13;
    v9 = v14[0];
    *(v7 + 89) = *(v14 + 9);
    *(v7 + 4) = v8;
    *(v7 + 5) = v9;
    *(v7 + 3) = result;
    *v1 = v4;
  }

  return result;
}

Swift::Void __swiftcall Diagnostics.append(contentsOf:)(_RegexParser::Diagnostics contentsOf)
{
  if ((*(v1 + 8) & 1) == 0)
  {

    specialized Array.append<A>(contentsOf:)(v2);
  }
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

Swift::Void __swiftcall Diagnostics.appendNewFatalErrors(from:)(_RegexParser::Diagnostics from)
{
  if ((v1[8] & 1) == 0)
  {
    v2 = *from.diags._rawValue;
    v3 = *v1;
    v4 = *(*v1 + 16);
    v5 = *(*from.diags._rawValue + 16);
    v6 = v5 >= v4 ? *(*v1 + 16) : *(*from.diags._rawValue + 16);
    v7 = v4 ? v6 : 0;
    if (v7 != v5)
    {
      if (v7 >= v5)
      {
        __break(1u);
      }

      else
      {

        v8 = ~v7 + v5;
        for (i = 80 * v7 + 32; ; i += 80)
        {
          v20 = *(v2 + i);
          v10 = *(v2 + i + 16);
          v11 = *(v2 + i + 32);
          v12 = *(v2 + i + 48);
          *(v23 + 9) = *(v2 + i + 57);
          v22 = v11;
          v23[0] = v12;
          v21 = v10;
          if (!v20)
          {
            outlined init with copy of Diagnostic(&v20, &v19);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
            }

            v14 = *(v3 + 2);
            v13 = *(v3 + 3);
            if (v14 >= v13 >> 1)
            {
              v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v3);
            }

            *(v3 + 2) = v14 + 1;
            v15 = &v3[80 * v14];
            *(v15 + 2) = v20;
            v16 = v21;
            v17 = v22;
            v18 = v23[0];
            *(v15 + 89) = *(v23 + 9);
            *(v15 + 4) = v17;
            *(v15 + 5) = v18;
            *(v15 + 3) = v16;
            *v1 = v3;
          }

          if (!v8)
          {
            break;
          }

          --v8;
        }

        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(_BYTE *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = v6;
      v10[0] = *(v7 - 8);
      v11 = *v7;
      LOBYTE(v4) = (v3 != 0) | (a1)(v10, a2);
      if (v4)
      {
        break;
      }

      v6 = v8 - 1;
      v7 = (v7 + 24);
    }

    while (v8);
  }

  return v4 & 1;
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

BOOL Diagnostics.hasFatalError.getter()
{
  v1 = (*v0 + 32);
  v2 = *(*v0 + 16) + 1;
  do
  {
    if (!--v2)
    {
      break;
    }

    v3 = *v1;
    v1 += 80;
  }

  while (v3);
  return v2 != 0;
}

void Diagnostics.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  specialized Array<A>.hash(into:)(a1, v2);
  Hasher._combine(_:)(v3);
}

Swift::Int Diagnostics.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v4, v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Diagnostics()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v4, v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance Diagnostics(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  specialized Array<A>.hash(into:)(a1, v2);
  Hasher._combine(_:)(v3);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Diagnostics(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v5, v2);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Diagnostics(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ12_RegexParser10DiagnosticV_Tt1g5(*a1, *a2) & ~(v2 ^ v3) & 1;
}

__n128 Diagnostics.error(_:at:)(__int128 *a1, __int128 *a2)
{
  v3 = v2;
  v5 = *(a1 + 2);
  v6 = *(a1 + 3);
  v7 = *(a1 + 32);
  v16 = *a2;
  v17 = *a1;
  LOBYTE(v19) = 1;
  *(&v19 + 1) = ParseError.description.getter();
  *v20 = v8;
  *&v20[24] = v17;
  *&v20[8] = v16;
  *&v20[40] = v5;
  *&v20[48] = v6;
  v20[56] = v7;
  if (*(v2 + 8) == 1)
  {
    outlined init with copy of ParseError(a1, v18);
    outlined destroy of Diagnostic(&v19);
  }

  else
  {
    v10 = *v2;
    outlined init with copy of ParseError(a1, v18);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
    }

    v12 = *(v10 + 2);
    v11 = *(v10 + 3);
    if (v12 >= v11 >> 1)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v10);
    }

    *(v10 + 2) = v12 + 1;
    v13 = &v10[80 * v12];
    *(v13 + 2) = v19;
    result = *v20;
    v14 = *&v20[16];
    v15 = *&v20[32];
    *(v13 + 89) = *&v20[41];
    *(v13 + 4) = v14;
    *(v13 + 5) = v15;
    *(v13 + 3) = result;
    *v3 = v10;
  }

  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ErrorDiagnostic #1 in Diagnostics.throwAnyError()()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t Source.Located.init(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v7 = a2[1];
  (*(*(a3 - 8) + 32))(a4, a1);
  result = type metadata accessor for Source.Located(0, a3, v8, v9);
  v11 = (a4 + *(result + 28));
  *v11 = v6;
  v11[1] = v7;
  return result;
}

void *specialized Parser.tryEating<A>(_:)@<X0>(__int128 *a1@<X0>, char **a2@<X1>, void *a3@<X8>)
{
  *&v67[9] = *(a1 + 73);
  v6 = a1[3];
  v65 = a1[2];
  v66 = v6;
  *v67 = a1[4];
  v7 = a1[1];
  v64[0] = *a1;
  v64[1] = v7;
  v61 = v65;
  v62 = v6;
  v63 = *v67;
  v59 = v64[0];
  v60 = v7;
  v8 = *&v67[16];
  v9 = v67[24];
  outlined init with copy of Parser(v64, &v54);
  v10._countAndFlagsBits = 123;
  v10._object = 0xE100000000000000;
  if (!Parser.tryEat(_:)(v10))
  {
    goto LABEL_10;
  }

  v11 = *(a1 + 2);
  result = specialized Parser.tryEating<A>(_:)(a1, a2, &v54);
  v13 = *(&v54 + 1);
  v14 = *(&v56 + 1);
  if (*(&v54 + 1) >> 1 == 0xFFFFFFFFLL && *(&v56 + 1) < 2uLL)
  {
    v47 = 0;
    v48 = 0;
    v15 = 0;
    v16 = 0;
    v14 = 0;
    v17 = 0;
    v18 = 0;
    v13 = 0x1FFFFFFFELL;
  }

  else
  {
    if (*(a1 + 2) >> 14 < v11 >> 14)
    {
      __break(1u);
      goto LABEL_37;
    }

    v18 = *(&v57 + 1);
    v17 = v57;
    v15 = *(&v55 + 1);
    v16 = v56;
    v47 = v54;
    v48 = v55;
  }

  if (v13 >> 1 == 0xFFFFFFFF && v14 < 2 || (v19._countAndFlagsBits = 125, v19._object = 0xE100000000000000, !Parser.tryEat(_:)(v19)))
  {
LABEL_10:
    v47 = 0;
    v48 = 0;
    v15 = 0;
    v16 = 0;
    v14 = 0;
    v17 = 0;
    v18 = 0;
    v13 = 0x1FFFFFFFELL;
  }

  if (v14 > 1 || (v13 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFELL)
  {
    v56 = v61;
    v57 = v62;
    *v58 = v63;
    v54 = v59;
    v55 = v60;
    *&v58[16] = v8;
    v58[24] = v9;
    result = outlined destroy of Parser(&v54);
    *a3 = v47;
    a3[1] = v13;
    a3[2] = v48;
    a3[3] = v15;
    a3[4] = v16;
    a3[5] = v14;
    a3[6] = v17;
    a3[7] = v18;
    return result;
  }

  v43 = v16;
  v44 = v17;
  v45 = v18;
  v46 = v14;
  v20 = *&v67[16];
  v21 = v67[24];
  v22 = *(a1 + 10);
  v23 = a1[3];
  v56 = a1[2];
  v57 = v23;
  *v58 = a1[4];
  *&v58[9] = *(a1 + 73);
  v24 = a1[1];
  v54 = *a1;
  v55 = v24;

  result = outlined destroy of Parser(&v54);
  if (v21)
  {

LABEL_35:
    v40 = v62;
    a1[2] = v61;
    a1[3] = v40;
    a1[4] = v63;
    v41 = v60;
    *a1 = v59;
    a1[1] = v41;
    *(a1 + 10) = v8;
    *(a1 + 88) = v9;
    *a3 = v47;
    a3[1] = v13;
    a3[2] = v48;
    a3[3] = v15;
    a3[4] = v43;
    a3[5] = v46;
    a3[6] = v44;
    a3[7] = v45;
    return result;
  }

  v25 = *(v20 + 2);
  v26 = *(v22 + 16);
  if (v26 >= v25)
  {
    v27 = *(v20 + 2);
  }

  else
  {
    v27 = *(v22 + 16);
  }

  if (v25)
  {
    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  if (v28 == v26)
  {
    result = swift_unknownObjectRelease();
    goto LABEL_35;
  }

  v42 = v9;
  if (v28 < v26)
  {

    v29 = ~v28 + v26;
    for (i = 80 * v28 + 32; ; i += 80)
    {
      v50 = *(v22 + i);
      v31 = *(v22 + i + 16);
      v32 = *(v22 + i + 32);
      v33 = *(v22 + i + 48);
      *(v53 + 9) = *(v22 + i + 57);
      v52 = v32;
      v53[0] = v33;
      v51 = v31;
      if (!v50)
      {
        outlined init with copy of Diagnostic(&v50, v49);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 2) + 1, 1, v20);
        }

        v35 = *(v20 + 2);
        v34 = *(v20 + 3);
        if (v35 >= v34 >> 1)
        {
          v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v20);
        }

        *(v20 + 2) = v35 + 1;
        v36 = &v20[80 * v35];
        *(v36 + 2) = v50;
        v37 = v51;
        v38 = v52;
        v39 = v53[0];
        *(v36 + 89) = *(v53 + 9);
        *(v36 + 4) = v38;
        *(v36 + 5) = v39;
        *(v36 + 3) = v37;
        v8 = v20;
      }

      if (!v29)
      {
        break;
      }

      --v29;
    }

    swift_unknownObjectRelease();

    v9 = v42;
    goto LABEL_35;
  }

LABEL_37:
  __break(1u);
  return result;
}

void *specialized Parser.tryEating<A>(_:)@<X0>(uint64_t a1@<X0>, char **a2@<X1>, void *a3@<X8>)
{
  *&v109[9] = *(a1 + 73);
  v6 = *(a1 + 48);
  v107 = *(a1 + 32);
  v108 = v6;
  *v109 = *(a1 + 64);
  v7 = *(a1 + 16);
  v106[0] = *a1;
  v106[1] = v7;
  v103 = v107;
  v104 = v6;
  v105 = *v109;
  v101 = v106[0];
  v102 = v7;
  v83 = *&v109[16];
  v81 = v109[24];
  outlined init with copy of Parser(v106, &v96);
  specialized Parser.tryEatPrefix(maxLength:_:)(0, 1, a1, specialized Source.peekPrefix(maxLength:_:), &v89);
  v8 = *(&v89 + 1);
  if (*(&v89 + 1))
  {
    v9 = v89;
    v87 = v90;
    v10 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10, &_ss23_ContiguousArrayStorageCy12_RegexParser3ASTV6TriviaVGMd, &_ss23_ContiguousArrayStorageCy12_RegexParser3ASTV6TriviaVGMR, &type metadata for AST.Trivia);
      *a2 = v10;
    }

    v13 = *(v10 + 2);
    v12 = *(v10 + 3);
    if (v13 >= v12 >> 1)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v10, &_ss23_ContiguousArrayStorageCy12_RegexParser3ASTV6TriviaVGMd, &_ss23_ContiguousArrayStorageCy12_RegexParser3ASTV6TriviaVGMR, &type metadata for AST.Trivia);
      *a2 = v10;
    }

    *(v10 + 2) = v13 + 1;
    v14 = &v10[32 * v13];
    *(v14 + 4) = v9;
    *(v14 + 5) = v8;
    *(v14 + 3) = v87;
  }

  Parser.lexQuantBound()(&v89);
  v80 = BYTE8(v89);
  v84 = v90;
  v86 = v89;
  v88 = *(&v90 + 1);
  v82 = v91;
  specialized Parser.tryEatPrefix(maxLength:_:)(0, 1, a1, specialized Source.peekPrefix(maxLength:_:), &v89);
  v15 = *(&v89 + 1);
  if (*(&v89 + 1))
  {
    v16 = v89;
    v77 = v90;
    v17 = *a2;
    v18 = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v17;
    if ((v18 & 1) == 0)
    {
      v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 2) + 1, 1, v17, &_ss23_ContiguousArrayStorageCy12_RegexParser3ASTV6TriviaVGMd, &_ss23_ContiguousArrayStorageCy12_RegexParser3ASTV6TriviaVGMR, &type metadata for AST.Trivia);
      *a2 = v17;
    }

    v20 = *(v17 + 2);
    v19 = *(v17 + 3);
    if (v20 >= v19 >> 1)
    {
      v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v17, &_ss23_ContiguousArrayStorageCy12_RegexParser3ASTV6TriviaVGMd, &_ss23_ContiguousArrayStorageCy12_RegexParser3ASTV6TriviaVGMR, &type metadata for AST.Trivia);
      *a2 = v17;
    }

    *(v17 + 2) = v20 + 1;
    v21 = &v17[32 * v20];
    *(v21 + 4) = v16;
    *(v21 + 5) = v15;
    *(v21 + 3) = v77;
  }

  v22._countAndFlagsBits = 44;
  v22._object = 0xE100000000000000;
  if (Parser.tryEat(_:)(v22))
  {
    goto LABEL_14;
  }

  if ((*(a1 + 64) & 0x10) != 0 && (v25._countAndFlagsBits = 46, v25._object = 0xE100000000000000, Parser.tryEat(_:)(v25)))
  {
    v26._countAndFlagsBits = 46;
    v26._object = 0xE100000000000000;
    if (!Parser.tryEat(_:)(v26))
    {
      v96 = xmmword_1C0C7E330;
      v97 = 0uLL;
      LOBYTE(v98) = 3;
      *&v89 = *(a1 + 16);
      *(&v89 + 1) = v89;
      Diagnostics.error(_:at:)(&v96, &v89);
    }

    v27._countAndFlagsBits = 46;
    v27._object = 0xE100000000000000;
    if (Parser.tryEat(_:)(v27))
    {
LABEL_14:
      v23 = 0;
      v24 = 1;
      goto LABEL_24;
    }

    v28._countAndFlagsBits = 60;
    v28._object = 0xE100000000000000;
    if (!Parser.tryEat(_:)(v28))
    {
      v92 = xmmword_1C0C7E340;
      v93 = 0uLL;
      LOBYTE(v94) = 3;
      *&v89 = *(a1 + 16);
      *(&v89 + 1) = v89;
      Diagnostics.error(_:at:)(&v92, &v89);
    }

    v23 = 0;
    v24 = 0;
  }

  else
  {
    v24 = 0;
    v23 = 1;
  }

LABEL_24:
  specialized Parser.tryEatPrefix(maxLength:_:)(0, 1, a1, specialized Source.peekPrefix(maxLength:_:), &v89);
  v29 = *(&v89 + 1);
  if (*(&v89 + 1))
  {
    v30 = v89;
    v78 = v90;
    v31 = *a2;
    v32 = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v31;
    if ((v32 & 1) == 0)
    {
      v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v31 + 2) + 1, 1, v31, &_ss23_ContiguousArrayStorageCy12_RegexParser3ASTV6TriviaVGMd, &_ss23_ContiguousArrayStorageCy12_RegexParser3ASTV6TriviaVGMR, &type metadata for AST.Trivia);
      *a2 = v31;
    }

    v34 = *(v31 + 2);
    v33 = *(v31 + 3);
    if (v34 >= v33 >> 1)
    {
      v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v31, &_ss23_ContiguousArrayStorageCy12_RegexParser3ASTV6TriviaVGMd, &_ss23_ContiguousArrayStorageCy12_RegexParser3ASTV6TriviaVGMR, &type metadata for AST.Trivia);
      *a2 = v31;
    }

    *(v31 + 2) = v34 + 1;
    v35 = &v31[32 * v34];
    *(v35 + 4) = v30;
    *(v35 + 5) = v29;
    *(v35 + 3) = v78;
  }

  result = Parser.lexQuantBound()(&v89);
  if (((v23 | v24) & 1) == 0 && (v91 & 1) == 0 && (BYTE8(v89) & 1) == 0)
  {
    if (__OFSUB__(v89, 1))
    {
      __break(1u);
      goto LABEL_83;
    }

    *&v89 = v89 - 1;
  }

  specialized Parser.tryEatPrefix(maxLength:_:)(0, 1, a1, specialized Source.peekPrefix(maxLength:_:), &v111);
  v37 = v112;
  if (v112)
  {
    v38 = v111;
    v79 = v113;
    v39 = *a2;
    v40 = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v39;
    if ((v40 & 1) == 0)
    {
      v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v39 + 2) + 1, 1, v39, &_ss23_ContiguousArrayStorageCy12_RegexParser3ASTV6TriviaVGMd, &_ss23_ContiguousArrayStorageCy12_RegexParser3ASTV6TriviaVGMR, &type metadata for AST.Trivia);
      *a2 = v39;
    }

    v42 = *(v39 + 2);
    v41 = *(v39 + 3);
    if (v42 >= v41 >> 1)
    {
      v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1, v39, &_ss23_ContiguousArrayStorageCy12_RegexParser3ASTV6TriviaVGMd, &_ss23_ContiguousArrayStorageCy12_RegexParser3ASTV6TriviaVGMR, &type metadata for AST.Trivia);
      *a2 = v39;
    }

    *(v39 + 2) = v42 + 1;
    v43 = &v39[32 * v42];
    *(v43 + 4) = v38;
    *(v43 + 5) = v37;
    *(v43 + 3) = v79;
  }

  v44 = v89;
  v46 = *(&v90 + 1);
  v45 = v90;
  v47 = v84;
  if (v82)
  {
    if (v23)
    {
      if ((v91 & 1) == 0)
      {
        v48._object = 0x80000001C0C86F70;
        v48._countAndFlagsBits = 0xD00000000000002ELL;
        Parser.unreachable(_:)(v48);
      }

      goto LABEL_53;
    }

    if ((v91 & 1) == 0)
    {
      LOBYTE(v111) = BYTE8(v89) & 1;
      v51 = BYTE8(v89) & 1;
      v52 = 0x4000000000000000;
      v47 = v90;
      v86 = v89;
      v88 = *(&v90 + 1);
LABEL_67:
      v53 = v51 & 1;
      goto LABEL_68;
    }
  }

  else if (v23)
  {
    if (v91)
    {
      v49 = 0;
      LOBYTE(v111) = v80 & 1;
      v50 = v80 & 1;
      goto LABEL_54;
    }
  }

  else
  {
    if ((v91 & 1) == 0)
    {
      v51 = v80 & 1;
      LOBYTE(v111) = v80 & 1;
      v110 = BYTE8(v89) & 1;
      v52 = BYTE8(v89) & 1 | 0x6000000000000000;
      goto LABEL_67;
    }

    if (v24)
    {
      v51 = v80 & 1;
      v52 = 0x2000000000000000;
      goto LABEL_67;
    }
  }

LABEL_53:
  v47 = 0;
  v86 = 0;
  v88 = 0;
  v49 = 0x1FFFFFF00;
  v50 = 254;
LABEL_54:
  v53 = v50 | v49;
  if ((~(v50 | v49) & 0x1FFFFFFFELL) != 0)
  {
    v46 = 0;
    v45 = 0;
    v52 = 0;
    v44 = 0;
LABEL_68:
    v98 = v103;
    v99 = v104;
    *v100 = v105;
    v96 = v101;
    v97 = v102;
    *&v100[16] = v83;
    v100[24] = v81;
    result = outlined destroy of Parser(&v96);
    *a3 = v86;
    a3[1] = v53;
    a3[2] = v47;
    a3[3] = v88;
    a3[4] = v44;
    a3[5] = v52;
    a3[6] = v45;
    a3[7] = v46;
    return result;
  }

  v54 = *&v109[16];
  v55 = v109[24];
  v56 = *(a1 + 80);
  v57 = *(a1 + 48);
  v98 = *(a1 + 32);
  v99 = v57;
  *v100 = *(a1 + 64);
  *&v100[9] = *(a1 + 73);
  v58 = *(a1 + 16);
  v96 = *a1;
  v97 = v58;

  result = outlined destroy of Parser(&v96);
  if (v55)
  {

LABEL_81:
    v75 = v104;
    *(a1 + 32) = v103;
    *(a1 + 48) = v75;
    *(a1 + 64) = v105;
    v76 = v102;
    *a1 = v101;
    *(a1 + 16) = v76;
    *(a1 + 80) = v83;
    *(a1 + 88) = v81;
    *a3 = v86;
    a3[1] = v53;
    a3[2] = v47;
    a3[3] = v88;
    *(a3 + 2) = 0u;
    *(a3 + 3) = 0u;
    return result;
  }

  v85 = v47;
  v59 = *(v54 + 2);
  v60 = *(v56 + 16);
  if (v60 >= v59)
  {
    v61 = *(v54 + 2);
  }

  else
  {
    v61 = *(v56 + 16);
  }

  if (v59)
  {
    v62 = v61;
  }

  else
  {
    v62 = 0;
  }

  if (v62 == v60)
  {
    result = swift_unknownObjectRelease();
LABEL_80:
    v47 = v85;
    goto LABEL_81;
  }

  if (v62 < v60)
  {

    v63 = ~v62 + v60;
    v64 = 80 * v62 + 32;
    v65 = v83;
    while (1)
    {
      v92 = *(v56 + v64);
      v66 = *(v56 + v64 + 16);
      v67 = *(v56 + v64 + 32);
      v68 = *(v56 + v64 + 48);
      *(v95 + 9) = *(v56 + v64 + 57);
      v94 = v67;
      v95[0] = v68;
      v93 = v66;
      if (!v92)
      {
        outlined init with copy of Diagnostic(&v92, &v89);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v54 + 2) + 1, 1, v54);
        }

        v70 = *(v54 + 2);
        v69 = *(v54 + 3);
        if (v70 >= v69 >> 1)
        {
          v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v69 > 1), v70 + 1, 1, v54);
        }

        *(v54 + 2) = v70 + 1;
        v71 = &v54[80 * v70];
        *(v71 + 2) = v92;
        v72 = v93;
        v73 = v94;
        v74 = v95[0];
        *(v71 + 89) = *(v95 + 9);
        *(v71 + 4) = v73;
        *(v71 + 5) = v74;
        *(v71 + 3) = v72;
        v65 = v54;
      }

      if (!v63)
      {
        break;
      }

      --v63;
      v64 += 80;
    }

    v83 = v65;
    swift_unknownObjectRelease();

    goto LABEL_80;
  }

LABEL_83:
  __break(1u);
  return result;
}

Swift::Bool __swiftcall Parser.tryEat(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = v1[1];
  v15[0] = *v1;
  v15[1] = v4;
  v5 = v1[3];
  v15[2] = v1[2];
  v15[3] = v5;
  v16[0] = v1[4];
  *(v16 + 9) = *(v1 + 73);
  outlined init with copy of Parser(v15, &v14);
  v6 = String.subscript.getter();
  if ((v6 ^ v7) >> 14)
  {
    v9 = Substring.subscript.getter();
    v11 = v10;

    outlined destroy of Parser(v15);
    if (v9 == countAndFlagsBits && v11 == object)
    {
    }

    else
    {
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v8 = 0;
      if ((v12 & 1) == 0)
      {
        return v8;
      }
    }

    v8 = 1;
    Parser.advance(_:)(1);
    return v8;
  }

  outlined destroy of Parser(v15);
  return 0;
}

uint64_t specialized Parser.tryEat<A>(sequence:)(uint64_t a1, void *a2)
{
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  v7 = String.subscript.getter();
  v11 = specialized Sequence<>.starts<A>(with:)(a1, a2, v7, v8, v9, v10);

  if ((v11 & 1) == 0)
  {
    return v11 & 1;
  }

  if (String.count.getter() < 1 || (String.subscript.getter(), v12 = Substring.index(_:offsetBy:limitedBy:)(), v14 = v13, result = , (v14 & 1) != 0))
  {
    strcpy(v28, "UNREACHABLE: ");
    HIWORD(v28[1]) = -4864;
    v16 = v2;
    MEMORY[0x1C68E0BF0](0xD000000000000015, 0x80000001C0C86F20);
    LOBYTE(v29) = 0;
    *(&v29 + 1) = v28[0];
    *&v30 = v28[1];
    *(&v30 + 1) = v6;
    *v31 = v6;
    memset(&v31[8], 0, 32);
    v31[40] = -1;
    if (*(v2 + 88) == 1)
    {
      outlined destroy of Diagnostic(&v29);
    }

    else
    {
      v17 = *(v2 + 80);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 2) + 1, 1, v17);
      }

      v19 = *(v17 + 2);
      v18 = *(v17 + 3);
      if (v19 >= v18 >> 1)
      {
        v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v17);
      }

      *(v17 + 2) = v19 + 1;
      v20 = &v17[80 * v19];
      *(v20 + 2) = v29;
      v21 = v30;
      v22 = *v31;
      v23 = *&v31[16];
      *(v20 + 89) = *&v31[25];
      *(v20 + 4) = v22;
      *(v20 + 5) = v23;
      *(v20 + 3) = v21;
      v16[10] = v17;
    }

    String.subscript.getter();
    v24 = Substring.distance(from:to:)();

    if (v24 < 1)
    {
      return v11 & 1;
    }

    String.subscript.getter();
    v25 = Substring.index(_:offsetBy:limitedBy:)();
    v27 = v26;

    if (v27)
    {
      return v11 & 1;
    }

    if (v5 >> 14 >= v25 >> 14)
    {
      v16[2] = v25;
      v16[3] = v5;
      return v11 & 1;
    }
  }

  else
  {
    if (v5 >> 14 >= v12 >> 14)
    {
      *(v2 + 16) = v12;
      *(v2 + 24) = v5;
      return v11 & 1;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized Parser.tryEatNonEmpty<A>(sequence:)(uint64_t a1, void *a2)
{

  *&v13 = String.init<A>(_:)();
  *(&v13 + 1) = v5;
  v14 = 0;
  v15 = 0;
  v16 = 3;
  v6 = *(v2 + 16);
  v7 = String.subscript.getter();
  v9 = v8;

  if ((v7 ^ v9) >> 14)
  {

    v10 = specialized Parser.tryEat<A>(sequence:)(a1, a2);
  }

  else
  {
    *&v12 = v6;
    *(&v12 + 1) = v6;
    Diagnostics.error(_:at:)(&v13, &v12);

    v10 = 0;
  }

  return v10 & 1;
}

Swift::Void __swiftcall Parser.advance(_:)(Swift::Int a1)
{
  if (a1 >= 1)
  {
    v2 = *(v1 + 24);
    String.subscript.getter();
    v3 = Substring.index(_:offsetBy:limitedBy:)();
    v5 = v4;

    if ((v5 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v6._object = 0x80000001C0C86F20;
  v6._countAndFlagsBits = 0xD000000000000015;
  Parser.unreachable(_:)(v6);
  v2 = *(v1 + 24);
  String.subscript.getter();
  v7 = Substring.distance(from:to:)();

  if (v7 >= 1)
  {
    String.subscript.getter();
    v3 = Substring.index(_:offsetBy:limitedBy:)();
    v9 = v8;

    if ((v9 & 1) == 0)
    {
      if (v2 >> 14 >= v3 >> 14)
      {
LABEL_8:
        *(v1 + 16) = v3;
        *(v1 + 24) = v2;
        return;
      }

      __break(1u);
LABEL_7:
      if (v2 >> 14 < v3 >> 14)
      {
        __break(1u);
        return;
      }

      goto LABEL_8;
    }
  }
}

Swift::Void __swiftcall Parser.unreachable(_:)(Swift::String a1)
{
  v2 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v5 = *(v1 + 16);
  strcpy(v14, "UNREACHABLE: ");
  *&v14[14] = -4864;

  MEMORY[0x1C68E0BF0](countAndFlagsBits, object);

  v6 = *v14;
  v14[0] = 0;
  *&v14[8] = v6;
  *&v14[24] = v5;
  *v15 = v5;
  memset(&v15[8], 0, 32);
  v15[40] = -1;
  if (*(v1 + 88) == 1)
  {
    outlined destroy of Diagnostic(v14);
  }

  else
  {
    v7 = *(v1 + 80);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
    }

    v9 = *(v7 + 2);
    v8 = *(v7 + 3);
    if (v9 >= v8 >> 1)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v7);
    }

    *(v7 + 2) = v9 + 1;
    v10 = &v7[80 * v9];
    *(v10 + 2) = *v14;
    v11 = *&v14[16];
    v12 = *v15;
    v13 = *&v15[16];
    *(v10 + 89) = *&v15[25];
    *(v10 + 4) = v12;
    *(v10 + 5) = v13;
    *(v10 + 3) = v11;
    *(v2 + 80) = v7;
  }
}

Swift::Bool __swiftcall Source.tryAdvance(_:)(Swift::Int a1)
{
  if (a1 < 1)
  {
    return 0;
  }

  v2 = *(v1 + 24);
  String.subscript.getter();
  v3 = Substring.index(_:offsetBy:limitedBy:)();
  v5 = v4;

  if (v5)
  {
    return 0;
  }

  if (v2 >> 14 < v3 >> 14)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 16) = v3;
    *(v1 + 24) = v2;
    return 1;
  }

  return result;
}

uint64_t specialized Parser.tryEat<A>(anyOf:)(uint64_t a1)
{
  v3 = v1[1];
  v14[0] = *v1;
  v14[1] = v3;
  v4 = v1[3];
  v14[2] = v1[2];
  v14[3] = v4;
  v15[0] = v1[4];
  *(v15 + 9) = *(v1 + 73);
  outlined init with copy of Parser(v14, v13);
  v5 = String.subscript.getter();
  if ((v5 ^ v6) >> 14)
  {
    v7 = Substring.subscript.getter();
    v9 = v8;

    v10 = outlined destroy of Parser(v14);
    v13[0] = v7;
    v13[1] = v9;
    MEMORY[0x1EEE9AC00](v10);
    v12[2] = v13;
    if (specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v12, a1))
    {
      Parser.advance(_:)(1);
      return v7;
    }
  }

  else
  {

    outlined destroy of Parser(v14);
  }

  return 0;
}

unint64_t Parser.eat(upToCount:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  result = String.subscript.getter();
  if (a1 < 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = result;
  v10 = v8;
  result = Substring.index(_:offsetBy:limitedBy:)();
  if (v11)
  {
    v12 = v10;
  }

  else
  {
    v12 = result;
  }

  if (v12 >> 14 < v9 >> 14)
  {
    goto LABEL_13;
  }

  v27 = v6;
  v28 = a2;
  v13 = Substring.subscript.getter();
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = v5;
  if (Substring.distance(from:to:)() < 1 || (String.subscript.getter(), v21 = Substring.index(_:offsetBy:limitedBy:)(), v23 = v22, result = , v20 = v5, (v23 & 1) != 0))
  {
LABEL_10:
    v24 = MEMORY[0x1C68E0B20](v13, v15, v17, v19);
    v26 = v25;

    if (v20 >> 14 >= v5 >> 14)
    {
      *v28 = v24;
      v28[1] = v26;
      v28[2] = v5;
      v28[3] = v20;
      return result;
    }

    goto LABEL_14;
  }

  if (v27 >> 14 >= v21 >> 14)
  {
    *(v2 + 16) = v21;
    *(v2 + 24) = v27;
    v20 = v21;
    goto LABEL_10;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t specialized Parser.tryEatPrefix(maxLength:_:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X2>, uint64_t (*a4)(uint64_t, void, uint64_t *)@<X3>, uint64_t *a5@<X8>)
{
  v10 = a3[1];
  v11 = a3[2];
  v12 = a3[3];
  v30[0] = *a3;
  v30[1] = v10;
  v30[2] = v11;
  v30[3] = v12;

  v13 = a4(a1, a2 & 1, v30);
  v15 = v14;
  v17 = v16;
  v19 = v18;

  if (v19)
  {
    v28 = a5;
    v29 = v17;
    v21 = v11;
    if (Substring.distance(from:to:)() > 0)
    {
      String.subscript.getter();
      v22 = Substring.index(_:offsetBy:limitedBy:)();
      v24 = v23;

      v21 = v11;
      if ((v24 & 1) == 0)
      {
        if (v12 >> 14 < v22 >> 14)
        {
LABEL_11:
          __break(1u);
          return result;
        }

        a3[2] = v22;
        a3[3] = v12;
        v21 = v22;
      }
    }

    v25 = MEMORY[0x1C68E0B20](v13, v15, v29, v19);
    v27 = v26;

    if (v21 >> 14 >= v11 >> 14)
    {
      *v28 = v25;
      v28[1] = v27;
      v28[2] = v11;
      v28[3] = v21;
      return result;
    }

    __break(1u);
    goto LABEL_11;
  }

  *a5 = 0u;
  *(a5 + 1) = 0u;
  return result;
}

uint64_t Parser.tryEatPrefix(maxLength:_:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t *a5@<X8>)
{
  v6 = v5;
  v11 = *(v6 + 16);
  v12 = *(v6 + 24);

  v13 = Source.peekPrefix(maxLength:_:)(a1, a2 & 1, a3);
  v15 = v14;
  v17 = v16;
  v19 = v18;

  if (v19)
  {
    v28 = a5;
    v29 = v17;
    v21 = v11;
    if (Substring.distance(from:to:)() >= 1)
    {
      String.subscript.getter();
      v22 = Substring.index(_:offsetBy:limitedBy:)();
      v24 = v23;

      v21 = v11;
      if ((v24 & 1) == 0)
      {
        if (v12 >> 14 < v22 >> 14)
        {
LABEL_11:
          __break(1u);
          return result;
        }

        *(v6 + 16) = v22;
        *(v6 + 24) = v12;
        v21 = v22;
      }
    }

    v25 = MEMORY[0x1C68E0B20](v13, v15, v29, v19);
    v27 = v26;

    if (v21 >> 14 >= v11 >> 14)
    {
      *v28 = v25;
      v28[1] = v27;
      v28[2] = v11;
      v28[3] = v21;
      return result;
    }

    __break(1u);
    goto LABEL_11;
  }

  *a5 = 0u;
  *(a5 + 1) = 0u;
  return result;
}

void Parser.expectASCII()(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v18 = *v1;
  v19 = v3;
  v4 = v1[3];
  v5 = v1[4];
  v20 = v1[2];
  v21 = v4;
  v6 = *(v1 + 2);
  v22[0] = v5;
  *(v22 + 9) = *(v1 + 73);
  v7 = v19;
  outlined init with copy of Parser(&v18, &v15);
  v8 = String.subscript.getter();
  if ((v8 ^ v9) < 0x4000)
  {

    outlined destroy of Parser(&v18);
    v15 = 0u;
    v16 = 0u;
    v17 = 36;
    *&v14 = v7;
    *(&v14 + 1) = v7;
    Diagnostics.error(_:at:)(&v15, &v14);
LABEL_7:
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return;
  }

  v10 = Substring.subscript.getter();
  v12 = v11;

  outlined destroy of Parser(&v18);
  Parser.advance(_:)(1);
  if ((Character.asciiValue.getter() & 0x100) != 0)
  {
    *&v15 = v10;
    *(&v15 + 1) = v12;
    v16 = 0uLL;
    v17 = 9;
    *&v14 = *(v1 + 2);
    *(&v14 + 1) = v14;
    Diagnostics.error(_:at:)(&v15, &v14);

    goto LABEL_7;
  }

  v13 = *(v1 + 2);
  if (v13 >> 14 < v6 >> 14)
  {
    __break(1u);
  }

  else
  {
    *a1 = v10;
    *(a1 + 8) = v12;
    *(a1 + 16) = v6;
    *(a1 + 24) = v13;
  }
}

uint64_t Character.isOctalDigit.getter(uint64_t a1, uint64_t a2)
{
  result = _stringCompareWithSmolCheck(_:_:expecting:)();
  if ((result & 1) == 0)
  {
    if (a1 != 48 || a2 != 0xE100000000000000)
    {
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        v5 = 0;
        return v5 & 1;
      }

      if (a1 == 55 && a2 == 0xE100000000000000)
      {
        v5 = 1;
        return v5 & 1;
      }
    }

    v5 = _stringCompareWithSmolCheck(_:_:expecting:)() ^ 1;
    return v5 & 1;
  }

  __break(1u);
  return result;
}

unsigned __int8 *_s12_RegexParser0B0V14validateNumber33_E16AF135E664C72DDA9A5705859E2720LLyxSgAA6SourceV7LocatedVy_SSG_xmAA9RadixKindOts17FixedWidthIntegerRzlFs6UInt32V_Tt1B5(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = HIBYTE(a2) & 0xF;
  v11 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v12 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v12)
  {
LABEL_9:
    *&v91 = a1;
    *(&v91 + 1) = a2;
    v92 = a5;
    v93 = 0;
    v94 = 2;
    *&v90 = a3;
    *(&v90 + 1) = a4;
LABEL_10:
    Diagnostics.error(_:at:)(&v91, &v90);
    v16 = 0;
    v17 = 1;
LABEL_11:
    LOBYTE(v91) = v17;
    return (v16 | (v17 << 32));
  }

  v13 = *(&off_1F402C470 + a5);
  *&v91 = a1;
  *(&v91 + 1) = a2;
  v92 = 0;
  v93 = v12;

  while (1)
  {
    v14 = String.Iterator.next()();
    if (!v14.value._object)
    {
      break;
    }

    v15 = v13(v14.value._countAndFlagsBits);

    if ((v15 & 1) == 0)
    {

      goto LABEL_9;
    }
  }

  if (a5)
  {
    if (a5 == 2)
    {
      v19 = 1;
      v20 = 16;
    }

    else
    {
      v19 = 0;
      v20 = 10;
    }
  }

  else
  {
    v19 = 0;
    v20 = 8;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {

    v88 = specialized _parseInteger<A, B>(ascii:radix:)(a1, a2, v20);

    if ((v88 & 0x100000000) == 0)
    {
      v16 = v88;
      v17 = 0;
      goto LABEL_11;
    }

LABEL_182:
    *&v91 = a1;
    *(&v91 + 1) = a2;
    v92 = 0;
    v93 = 0;
    v94 = 0;
    *&v90 = a3;
    *(&v90 + 1) = a4;
    goto LABEL_10;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      result = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v11 = v89;
    }

    v21 = *result;
    if (v21 == 43)
    {
      if (v11 < 1)
      {
LABEL_189:
        __break(1u);
        goto LABEL_190;
      }

      v22 = v11 - 1;
      if (v11 == 1)
      {
        goto LABEL_180;
      }

      v45 = v20 + 55;
      v46 = v20 + 87;
      if (v19)
      {
        v47 = 58;
      }

      else
      {
        v46 = 97;
        v45 = 65;
        v47 = v20 + 48;
      }

      if (result)
      {
        v16 = 0;
        v48 = result + 1;
        while (1)
        {
          v49 = *v48;
          if (v49 < 0x30 || v49 >= v47)
          {
            if (v49 < 0x41 || v49 >= v45)
            {
              if (v49 < 0x61 || v49 >= v46)
              {
                goto LABEL_180;
              }

              v53 = -87;
            }

            else
            {
              v53 = -55;
            }
          }

          else
          {
            v53 = -48;
          }

          v54 = v16 * v20;
          if ((v54 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_180;
          }

          v55 = v49 + v53;
          v28 = __CFADD__(v54, v55);
          v16 = v54 + v55;
          if (v28)
          {
            goto LABEL_180;
          }

          ++v48;
          if (!--v22)
          {
            goto LABEL_181;
          }
        }
      }
    }

    else
    {
      if (v21 == 45)
      {
        if (v11 >= 1)
        {
          v22 = v11 - 1;
          if (v11 != 1)
          {
            v23 = v20 + 55;
            v24 = v20 + 87;
            if (v19)
            {
              v25 = 58;
            }

            else
            {
              v24 = 97;
              v23 = 65;
              v25 = v20 + 48;
            }

            if (result)
            {
              v16 = 0;
              v26 = result + 1;
              while (1)
              {
                v27 = *v26;
                v28 = v27 < 0x30 || v27 >= v25;
                if (v28)
                {
                  if (v27 < 0x41 || v27 >= v23)
                  {
                    if (v27 < 0x61 || v27 >= v24)
                    {
                      goto LABEL_180;
                    }

                    v31 = -87;
                  }

                  else
                  {
                    v31 = -55;
                  }
                }

                else
                {
                  v31 = -48;
                }

                v32 = v16 * v20;
                if ((v32 & 0xFFFFFFFF00000000) != 0)
                {
                  goto LABEL_180;
                }

                v33 = v27 + v31;
                v28 = v32 >= v33;
                v16 = v32 - v33;
                if (!v28)
                {
                  goto LABEL_180;
                }

                ++v26;
                if (!--v22)
                {
                  goto LABEL_181;
                }
              }
            }

            goto LABEL_154;
          }

LABEL_180:
          v16 = 0;
          LOBYTE(v22) = 1;
          goto LABEL_181;
        }

        __break(1u);
        goto LABEL_188;
      }

      if (!v11)
      {
        goto LABEL_180;
      }

      v67 = v20 + 55;
      v68 = v20 + 87;
      if (v19)
      {
        v69 = 58;
      }

      else
      {
        v68 = 97;
        v67 = 65;
        v69 = v20 + 48;
      }

      if (result)
      {
        v16 = 0;
        while (1)
        {
          v70 = *result;
          if (v70 < 0x30 || v70 >= v69)
          {
            if (v70 < 0x41 || v70 >= v67)
            {
              if (v70 < 0x61 || v70 >= v68)
              {
                goto LABEL_180;
              }

              v74 = -87;
            }

            else
            {
              v74 = -55;
            }
          }

          else
          {
            v74 = -48;
          }

          v75 = v16 * v20;
          if ((v75 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_180;
          }

          v76 = v70 + v74;
          v28 = __CFADD__(v75, v76);
          v16 = v75 + v76;
          if (v28)
          {
            goto LABEL_180;
          }

          ++result;
          if (!--v11)
          {
            goto LABEL_155;
          }
        }
      }
    }

LABEL_154:
    v16 = 0;
LABEL_155:
    LOBYTE(v22) = 0;
LABEL_181:
    LOBYTE(v90) = v22;
    if ((v22 & 1) == 0)
    {
      v17 = 0;
      goto LABEL_11;
    }

    goto LABEL_182;
  }

  *&v91 = a1;
  *(&v91 + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
  if (a1 != 43)
  {
    if (a1 != 45)
    {
      if (v10)
      {
        v16 = 0;
        v77 = v20 + 48;
        v78 = v20 + 55;
        v79 = v20 + 87;
        if (v19)
        {
          v77 = 58;
        }

        else
        {
          v79 = 97;
          v78 = 65;
        }

        v80 = &v91;
        while (1)
        {
          v81 = *v80;
          if (v81 < 0x30 || v81 >= v77)
          {
            if (v81 < 0x41 || v81 >= v78)
            {
              if (v81 < 0x61 || v81 >= v79)
              {
                goto LABEL_180;
              }

              v85 = -87;
            }

            else
            {
              v85 = -55;
            }
          }

          else
          {
            v85 = -48;
          }

          v86 = v16 * v20;
          if ((v86 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_180;
          }

          v87 = v81 + v85;
          v28 = __CFADD__(v86, v87);
          v16 = v86 + v87;
          if (v28)
          {
            goto LABEL_180;
          }

          v80 = (v80 + 1);
          if (!--v10)
          {
            goto LABEL_155;
          }
        }
      }

      goto LABEL_180;
    }

    if (v10)
    {
      v22 = v10 - 1;
      if (v10 != 1)
      {
        v16 = 0;
        v34 = v20 + 48;
        v35 = v20 + 55;
        v36 = v20 + 87;
        if (v19)
        {
          v34 = 58;
        }

        else
        {
          v36 = 97;
          v35 = 65;
        }

        v37 = &v91 + 1;
        while (1)
        {
          v38 = *v37;
          if (v38 < 0x30 || v38 >= v34)
          {
            if (v38 < 0x41 || v38 >= v35)
            {
              if (v38 < 0x61 || v38 >= v36)
              {
                goto LABEL_180;
              }

              v42 = -87;
            }

            else
            {
              v42 = -55;
            }
          }

          else
          {
            v42 = -48;
          }

          v43 = v16 * v20;
          if ((v43 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_180;
          }

          v44 = v38 + v42;
          v28 = v43 >= v44;
          v16 = v43 - v44;
          if (!v28)
          {
            goto LABEL_180;
          }

          ++v37;
          if (!--v22)
          {
            goto LABEL_181;
          }
        }
      }

      goto LABEL_180;
    }

LABEL_188:
    __break(1u);
    goto LABEL_189;
  }

  if (v10)
  {
    v22 = v10 - 1;
    if (v10 != 1)
    {
      v16 = 0;
      v56 = v20 + 48;
      v57 = v20 + 55;
      v58 = v20 + 87;
      if (v19)
      {
        v56 = 58;
      }

      else
      {
        v58 = 97;
        v57 = 65;
      }

      v59 = &v91 + 1;
      while (1)
      {
        v60 = *v59;
        if (v60 < 0x30 || v60 >= v56)
        {
          if (v60 < 0x41 || v60 >= v57)
          {
            if (v60 < 0x61 || v60 >= v58)
            {
              goto LABEL_180;
            }

            v64 = -87;
          }

          else
          {
            v64 = -55;
          }
        }

        else
        {
          v64 = -48;
        }

        v65 = v16 * v20;
        if ((v65 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_180;
        }

        v66 = v60 + v64;
        v28 = __CFADD__(v65, v66);
        v16 = v65 + v66;
        if (v28)
        {
          goto LABEL_180;
        }

        ++v59;
        if (!--v22)
        {
          goto LABEL_181;
        }
      }
    }

    goto LABEL_180;
  }

LABEL_190:
  __break(1u);
  return result;
}

unsigned __int8 *Parser.validateUnicodeScalar(_:_:)@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = a1[2];
  v5 = a1[3];
  result = _s12_RegexParser0B0V14validateNumber33_E16AF135E664C72DDA9A5705859E2720LLyxSgAA6SourceV7LocatedVy_SSG_xmAA9RadixKindOts17FixedWidthIntegerRzlFs6UInt32V_Tt1B5(*a1, a1[1], v4, v5, a2);
  if ((result & 0x100000000) != 0)
  {
    goto LABEL_8;
  }

  if (result >> 16 > 0x10 || (result & 0xFFFFF800) == 55296)
  {
    _StringGuts.grow(_:)(25);

    *&v10 = 0xD000000000000017;
    *(&v10 + 1) = 0x80000001C0C87090;
    lazy protocol witness table accessor for type UInt32 and conformance UInt32();
    v8 = String.init<A>(_:radix:uppercase:)();
    MEMORY[0x1C68E0BF0](v8);

    v11 = 0;
    v12 = 0;
    v13 = 4;
    *&v9 = v4;
    *(&v9 + 1) = v5;
    Diagnostics.error(_:at:)(&v10, &v9);

LABEL_8:
    result = 0;
  }

  *a3 = result;
  *(a3 + 8) = v4;
  *(a3 + 16) = v5;
  return result;
}

uint64_t Parser.lexNumber(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  Parser.tryEatPrefix(maxLength:_:)(0, 1, *(&off_1F402C470 + a1), &v87);
  result = *(&v87 + 1);
  if (!*(&v87 + 1))
  {
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 1;
    return result;
  }

  v5 = v87;
  if (a1)
  {
    if (a1 == 1)
    {
      v6 = 0;
      v7 = 10;
    }

    else
    {
      v6 = 1;
      v7 = 16;
    }
  }

  else
  {
    v6 = 0;
    v7 = 8;
  }

  v9 = v88;
  v8 = v89;
  v10 = HIBYTE(*(&v87 + 1)) & 0xFLL;
  v11 = v87 & 0xFFFFFFFFFFFFLL;
  if ((*(&v87 + 1) & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(*(&v87 + 1)) & 0xFLL;
  }

  else
  {
    v12 = v87 & 0xFFFFFFFFFFFFLL;
  }

  if (!v12)
  {
    goto LABEL_174;
  }

  if ((*(&v87 + 1) & 0x1000000000000000) != 0)
  {
    v82 = *(&v87 + 1);

    v18 = specialized _parseInteger<A, B>(ascii:radix:)(v5, v82, v7);
    v84 = v83;

    result = v82;
    if (v84)
    {
      goto LABEL_174;
    }

    goto LABEL_176;
  }

  if ((*(&v87 + 1) & 0x2000000000000000) == 0)
  {
    if ((v87 & 0x1000000000000000) != 0)
    {
      v10 = (*(&v87 + 1) & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      v85 = *(&v87 + 1);
      v10 = _StringObject.sharedUTF8.getter();
      result = v85;
    }

    v13 = *v10;
    if (v13 == 43)
    {
      if (v11 < 1)
      {
LABEL_181:
        __break(1u);
        goto LABEL_182;
      }

      v38 = v11 - 1;
      if (v11 != 1)
      {
        v39 = v7 + 48;
        v40 = v7 + 55;
        v41 = v7 + 87;
        if (v6)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (!v10)
        {
LABEL_147:
          v18 = 0;
          goto LABEL_173;
        }

        v18 = 0;
        v42 = (v10 + 1);
        do
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_172;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          v48 = v18 * v7;
          if ((v18 * v7) >> 64 != (v18 * v7) >> 63)
          {
            goto LABEL_172;
          }

          v49 = v43 + v47;
          v18 = v48 + v49;
          if (__OFADD__(v48, v49))
          {
            goto LABEL_172;
          }

          ++v42;
          --v38;
        }

        while (v38);
LABEL_146:
        LOBYTE(v10) = 0;
LABEL_173:
        LOBYTE(v86) = v10;
        if (v10)
        {
LABEL_174:
          *&v87 = v5;
          *(&v87 + 1) = result;
          v88 = 0;
          v89 = 0;
          v90 = 0;
          *&v86 = v9;
          *(&v86 + 1) = v8;

          Diagnostics.error(_:at:)(&v87, &v86);
          result = swift_bridgeObjectRelease_n();
          *a2 = xmmword_1C0C7E350;
LABEL_177:
          *(a2 + 16) = v9;
          *(a2 + 24) = v8;
          *(a2 + 32) = 0;
          return result;
        }

LABEL_176:

        *a2 = v18;
        *(a2 + 8) = 0;
        goto LABEL_177;
      }
    }

    else
    {
      if (v13 == 45)
      {
        if (v11 >= 1)
        {
          v14 = v11 - 1;
          if (v11 != 1)
          {
            v15 = v7 + 48;
            v16 = v7 + 55;
            v17 = v7 + 87;
            if (v6)
            {
              v15 = 58;
            }

            else
            {
              v17 = 97;
              v16 = 65;
            }

            if (v10)
            {
              v18 = 0;
              v19 = (v10 + 1);
              while (1)
              {
                v20 = *v19;
                if (v20 < 0x30 || v20 >= v15)
                {
                  if (v20 < 0x41 || v20 >= v16)
                  {
                    if (v20 < 0x61 || v20 >= v17)
                    {
                      goto LABEL_172;
                    }

                    v24 = -87;
                  }

                  else
                  {
                    v24 = -55;
                  }
                }

                else
                {
                  v24 = -48;
                }

                v25 = v18 * v7;
                if ((v18 * v7) >> 64 != (v18 * v7) >> 63)
                {
                  goto LABEL_172;
                }

                v26 = v20 + v24;
                v18 = v25 - v26;
                if (__OFSUB__(v25, v26))
                {
                  goto LABEL_172;
                }

                ++v19;
                if (!--v14)
                {
                  goto LABEL_146;
                }
              }
            }

            goto LABEL_147;
          }

          goto LABEL_172;
        }

        __break(1u);
        goto LABEL_180;
      }

      if (v11)
      {
        v61 = v7 + 48;
        v62 = v7 + 55;
        v63 = v7 + 87;
        if (v6)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        if (v10)
        {
          v18 = 0;
          while (1)
          {
            v64 = *v10;
            if (v64 < 0x30 || v64 >= v61)
            {
              if (v64 < 0x41 || v64 >= v62)
              {
                if (v64 < 0x61 || v64 >= v63)
                {
                  goto LABEL_172;
                }

                v68 = -87;
              }

              else
              {
                v68 = -55;
              }
            }

            else
            {
              v68 = -48;
            }

            v69 = v18 * v7;
            if ((v18 * v7) >> 64 != (v18 * v7) >> 63)
            {
              goto LABEL_172;
            }

            v70 = v64 + v68;
            v18 = v69 + v70;
            if (__OFADD__(v69, v70))
            {
              goto LABEL_172;
            }

            ++v10;
            if (!--v11)
            {
              goto LABEL_146;
            }
          }
        }

        goto LABEL_147;
      }
    }

    goto LABEL_172;
  }

  *(&v87 + 1) &= 0xFFFFFFFFFFFFFFuLL;
  if (v87 != 43)
  {
    if (v87 == 45)
    {
      if (!v10)
      {
LABEL_180:
        __break(1u);
        goto LABEL_181;
      }

      if (--v10)
      {
        v18 = 0;
        v27 = v7 + 48;
        v28 = v7 + 55;
        v29 = v7 + 87;
        if (v6)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        v30 = &v87 + 1;
        while (1)
        {
          v31 = *v30;
          if (v31 < 0x30 || v31 >= v27)
          {
            if (v31 < 0x41 || v31 >= v28)
            {
              if (v31 < 0x61 || v31 >= v29)
              {
                break;
              }

              v35 = -87;
            }

            else
            {
              v35 = -55;
            }
          }

          else
          {
            v35 = -48;
          }

          v36 = v18 * v7;
          if ((v18 * v7) >> 64 != (v18 * v7) >> 63)
          {
            break;
          }

          v37 = v31 + v35;
          v18 = v36 - v37;
          if (__OFSUB__(v36, v37))
          {
            break;
          }

          ++v30;
          if (!--v10)
          {
            goto LABEL_173;
          }
        }
      }
    }

    else if (v10)
    {
      v18 = 0;
      v71 = v7 + 48;
      v72 = v7 + 55;
      v73 = v7 + 87;
      if (v6)
      {
        v71 = 58;
      }

      else
      {
        v73 = 97;
        v72 = 65;
      }

      v74 = &v87;
      while (1)
      {
        v75 = *v74;
        if (v75 < 0x30 || v75 >= v71)
        {
          if (v75 < 0x41 || v75 >= v72)
          {
            if (v75 < 0x61 || v75 >= v73)
            {
              break;
            }

            v79 = -87;
          }

          else
          {
            v79 = -55;
          }
        }

        else
        {
          v79 = -48;
        }

        v80 = v18 * v7;
        if ((v18 * v7) >> 64 != (v18 * v7) >> 63)
        {
          break;
        }

        v81 = v75 + v79;
        v18 = v80 + v81;
        if (__OFADD__(v80, v81))
        {
          break;
        }

        v74 = (v74 + 1);
        if (!--v10)
        {
          goto LABEL_173;
        }
      }
    }

LABEL_172:
    v18 = 0;
    LOBYTE(v10) = 1;
    goto LABEL_173;
  }

  if (v10)
  {
    if (--v10)
    {
      v18 = 0;
      v50 = v7 + 48;
      v51 = v7 + 55;
      v52 = v7 + 87;
      if (v6)
      {
        v50 = 58;
      }

      else
      {
        v52 = 97;
        v51 = 65;
      }

      v53 = &v87 + 1;
      while (1)
      {
        v54 = *v53;
        if (v54 < 0x30 || v54 >= v50)
        {
          if (v54 < 0x41 || v54 >= v51)
          {
            if (v54 < 0x61 || v54 >= v52)
            {
              goto LABEL_172;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        v59 = v18 * v7;
        if ((v18 * v7) >> 64 != (v18 * v7) >> 63)
        {
          goto LABEL_172;
        }

        v60 = v54 + v58;
        v18 = v59 + v60;
        if (__OFADD__(v59, v60))
        {
          goto LABEL_172;
        }

        ++v53;
        if (!--v10)
        {
          goto LABEL_173;
        }
      }
    }

    goto LABEL_172;
  }

LABEL_182:
  __break(1u);
  return result;
}

uint64_t Parser.lexQuantBound()@<X0>(uint64_t a1@<X8>)
{
  specialized Parser.tryEatPrefix(maxLength:_:)(0, 1, v1, specialized Source.peekPrefix(maxLength:_:), &v33);
  result = *(&v33 + 1);
  if (!*(&v33 + 1))
  {
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 1;
    return result;
  }

  v4 = v33;
  v6 = v34;
  v5 = v35;
  v7 = HIBYTE(*(&v33 + 1)) & 0xFLL;
  v8 = v33 & 0xFFFFFFFFFFFFLL;
  if ((*(&v33 + 1) & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(*(&v33 + 1)) & 0xFLL;
  }

  else
  {
    v9 = v33 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    goto LABEL_70;
  }

  if ((*(&v33 + 1) & 0x1000000000000000) != 0)
  {
    v30 = *(&v33 + 1);

    v13 = specialized _parseInteger<A, B>(ascii:radix:)(v4, v30, 10);

    result = v30;
    if ((v13 & 0x10000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_70;
  }

  if ((*(&v33 + 1) & 0x2000000000000000) == 0)
  {
    if ((v33 & 0x1000000000000000) != 0)
    {
      v10 = ((*(&v33 + 1) & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v31 = *(&v33 + 1);
      v10 = _StringObject.sharedUTF8.getter();
      result = v31;
    }

    v11 = *v10;
    if (v11 == 43)
    {
      if (v8 >= 1)
      {
        v21 = v8 - 1;
        if (v8 != 1)
        {
          if (v10)
          {
            LOWORD(v13) = 0;
            v22 = v10 + 1;
            while (1)
            {
              v23 = *v22 - 48;
              if (v23 > 9)
              {
                goto LABEL_57;
              }

              if (((10 * v13) & 0xF0000) != 0)
              {
                goto LABEL_57;
              }

              v13 = (10 * v13) + v23;
              if ((v13 & 0x10000) != 0)
              {
                goto LABEL_57;
              }

              v16 = 0;
              ++v22;
              if (!--v21)
              {
                goto LABEL_59;
              }
            }
          }

          goto LABEL_58;
        }

        goto LABEL_57;
      }

      goto LABEL_77;
    }

    if (v11 != 45)
    {
      if (v8)
      {
        if (v10)
        {
          LOWORD(v13) = 0;
          while (1)
          {
            v27 = *v10 - 48;
            if (v27 > 9)
            {
              goto LABEL_57;
            }

            if (((10 * v13) & 0xF0000) != 0)
            {
              goto LABEL_57;
            }

            v13 = (10 * v13) + v27;
            if ((v13 & 0x10000) != 0)
            {
              goto LABEL_57;
            }

            v16 = 0;
            ++v10;
            if (!--v8)
            {
              goto LABEL_59;
            }
          }
        }

        goto LABEL_58;
      }

LABEL_57:
      LOWORD(v13) = 0;
      v16 = 1;
      goto LABEL_59;
    }

    if (v8 >= 1)
    {
      v12 = v8 - 1;
      if (v8 != 1)
      {
        if (v10)
        {
          LOWORD(v13) = 0;
          v14 = v10 + 1;
          while (1)
          {
            v15 = *v14 - 48;
            if (v15 > 9)
            {
              goto LABEL_57;
            }

            if (((10 * v13) & 0xF0000) != 0)
            {
              goto LABEL_57;
            }

            v13 = (10 * v13) - v15;
            if ((v13 & 0xFFFF0000) != 0)
            {
              goto LABEL_57;
            }

            v16 = 0;
            ++v14;
            if (!--v12)
            {
              goto LABEL_59;
            }
          }
        }

LABEL_58:
        LOWORD(v13) = 0;
        v16 = 0;
LABEL_59:
        LOBYTE(v32) = v16;
        if ((v16 & 1) == 0)
        {
LABEL_60:

          *a1 = v13;
          *(a1 + 8) = 0;
LABEL_71:
          *(a1 + 16) = v6;
          *(a1 + 24) = v5;
          *(a1 + 32) = 0;
          return result;
        }

LABEL_70:
        *&v33 = v4;
        *(&v33 + 1) = result;
        v34 = 0;
        v35 = 0;
        v36 = 0;
        *&v32 = v6;
        *(&v32 + 1) = v5;

        Diagnostics.error(_:at:)(&v33, &v32);
        result = swift_bridgeObjectRelease_n();
        *a1 = xmmword_1C0C7E350;
        goto LABEL_71;
      }

      goto LABEL_57;
    }

    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  *(&v33 + 1) &= 0xFFFFFFFFFFFFFFuLL;
  if (v33 != 43)
  {
    if (v33 == 45)
    {
      if (!v7)
      {
        goto LABEL_76;
      }

      v17 = v7 - 1;
      if (v17)
      {
        LOWORD(v13) = 0;
        v18 = &v33 + 1;
        while (1)
        {
          v19 = *v18 - 48;
          if (v19 > 9)
          {
            break;
          }

          if (((10 * v13) & 0xF0000) != 0)
          {
            break;
          }

          v13 = (10 * v13) - v19;
          if ((v13 & 0xFFFF0000) != 0)
          {
            break;
          }

          v20 = 0;
          ++v18;
          if (!--v17)
          {
            goto LABEL_69;
          }
        }
      }
    }

    else if (v7)
    {
      LOWORD(v13) = 0;
      v28 = &v33;
      while (1)
      {
        v29 = *v28 - 48;
        if (v29 > 9)
        {
          break;
        }

        if (((10 * v13) & 0xF0000) != 0)
        {
          break;
        }

        v13 = (10 * v13) + v29;
        if ((v13 & 0x10000) != 0)
        {
          break;
        }

        v20 = 0;
        v28 = (v28 + 1);
        if (!--v7)
        {
          goto LABEL_69;
        }
      }
    }

LABEL_68:
    LOWORD(v13) = 0;
    v20 = 1;
LABEL_69:
    LOBYTE(v32) = v20;
    if ((v20 & 1) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_70;
  }

  if (v7)
  {
    v24 = v7 - 1;
    if (v24)
    {
      LOWORD(v13) = 0;
      v25 = &v33 + 1;
      while (1)
      {
        v26 = *v25 - 48;
        if (v26 > 9)
        {
          break;
        }

        if (((10 * v13) & 0xF0000) != 0)
        {
          break;
        }

        v13 = (10 * v13) + v26;
        if ((v13 & 0x10000) != 0)
        {
          break;
        }

        v20 = 0;
        ++v25;
        if (!--v24)
        {
          goto LABEL_69;
        }
      }
    }

    goto LABEL_68;
  }

LABEL_78:
  __break(1u);
  return result;
}

uint64_t Parser.expectUnicodeScalar(numDigits:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(v2 + 16);
  Parser.eat(upToCount:)(a1, &v16);
  v7 = v16;
  v8 = v17;
  v9 = v18;

  v10 = String.count.getter();

  if (v10 != a1)
  {
    v16 = v7;
    v17 = a1;
    v18 = 0;
    v19 = 1;
    *&v13 = v8;
    *(&v13 + 1) = v9;

    Diagnostics.error(_:at:)(&v16, &v13);
  }

  v12 = *(v3 + 16);
  if (v12 >> 14 < v6 >> 14)
  {
    __break(1u);
  }

  else
  {
    v13 = v7;
    v14 = v6;
    v15 = v12;
    Parser.validateUnicodeScalar(_:_:)(&v13, 2, a2);
  }

  return result;
}

uint64_t Parser.expectUnicodeScalarSequence(eating:)@<X0>(unint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = v4;
  v9 = v69;
  v64 = MEMORY[0x1E69E7CC0];
  specialized Parser.tryEatPrefix(maxLength:_:)(0, 1, v4, specialized Source.peekPrefix(maxLength:_:), v69);
  v10 = *&v69[8];
  v63 = a1;
  if (*&v69[8])
  {
    v5 = *v69;
    v61 = *&v69[16];
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0], &_ss23_ContiguousArrayStorageCy12_RegexParser3ASTV6TriviaVGMd, &_ss23_ContiguousArrayStorageCy12_RegexParser3ASTV6TriviaVGMR, &type metadata for AST.Trivia);
    a1 = *(v11 + 2);
    v12 = *(v11 + 3);
    v3 = a1 + 1;
    if (a1 >= v12 >> 1)
    {
      goto LABEL_62;
    }

    goto LABEL_3;
  }

LABEL_4:
  *&v61 = "Unhandled termination condition";
  v59 = MEMORY[0x1E69E7CC0];
  v62 = a2;
  while (1)
  {

    v14 = v6[2];
    *&v77[0] = 0;
    *(&v77[0] + 1) = 0xE000000000000000;
    v60 = v14;
    if ((closure #1 in Parser.expectUnicodeScalarSequence(eating:)(v6, a1, a2, &v64) & 1) == 0)
    {
      while (1)
      {
        v16 = *(v6 + 1);
        *v69 = *v6;
        v17 = *(v6 + 2);
        v18 = *(v6 + 3);
        v9[1] = v16;
        v9[2] = v17;
        v19 = *(v6 + 4);
        v9[3] = v18;
        v9[4] = v19;
        *(v9 + 73) = *(v6 + 73);
        v3 = *v69;
        v9 = *&v69[16];
        v20 = *&v69[24];
        outlined init with copy of Parser(v69, &v66);
        v21 = String.subscript.getter();
        v10 = v22;
        if (!((v21 ^ v23) >> 14))
        {

          outlined destroy of Parser(v69);

          v9 = v69;
LABEL_27:
          v15 = v60;
          goto LABEL_28;
        }

        v5 = Substring.subscript.getter();
        a2 = v24;

        outlined destroy of Parser(v69);
        String.subscript.getter();
        v10 = v25;
        v14 = Substring.index(_:offsetBy:limitedBy:)();
        v27 = v26;

        if ((v27 & 1) == 0)
        {
          break;
        }

        v28 = v75;
        v29 = v76;
        strcpy(v65, "UNREACHABLE: ");
        HIWORD(v65[1]) = -4864;
        MEMORY[0x1C68E0BF0](0xD000000000000015, 0x80000001C0C86F20);
        LOBYTE(v66) = 0;
        *(&v66 + 1) = v65[0];
        *&v67 = v65[1];
        *(&v67 + 1) = v9;
        *v68 = v9;
        memset(&v68[8], 0, 32);
        v68[40] = -1;
        if (v29)
        {
          outlined destroy of Diagnostic(&v66);
        }

        else
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v28 + 2) + 1, 1, v28);
          }

          v31 = *(v28 + 2);
          v30 = *(v28 + 3);
          if (v31 >= v30 >> 1)
          {
            v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v28);
          }

          *(v28 + 2) = v31 + 1;
          v32 = &v28[80 * v31];
          *(v32 + 2) = v66;
          v33 = v67;
          v34 = *v68;
          v35 = *&v68[16];
          *(v32 + 89) = *&v68[25];
          *(v32 + 4) = v34;
          *(v32 + 5) = v35;
          *(v32 + 3) = v33;
          v6[10] = v28;
        }

        String.subscript.getter();
        v36 = Substring.distance(from:to:)();

        if (v36 < 1)
        {
          v14 = v9;
          a1 = v63;
        }

        else
        {
          String.subscript.getter();
          v3 = v37;
          v14 = Substring.index(_:offsetBy:limitedBy:)();
          v10 = v38;

          a1 = v63;
          if ((v10 & 1) == 0)
          {
            v12 = v20 >> 14;
            if (v20 >> 14 < v14 >> 14)
            {
              goto LABEL_60;
            }

LABEL_24:
            v6[2] = v14;
            v6[3] = v20;
            goto LABEL_8;
          }

          v14 = v9;
        }

LABEL_8:
        v10 = v77;
        MEMORY[0x1C68E0BE0](v5, a2);

        a2 = v62;
        v9 = v69;
        if (closure #1 in Parser.expectUnicodeScalarSequence(eating:)(v6, a1, v62, &v64))
        {

          goto LABEL_27;
        }
      }

      v12 = v20 >> 14;
      a1 = v63;
      if (v20 >> 14 < v14 >> 14)
      {
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v3, 1, v11, &_ss23_ContiguousArrayStorageCy12_RegexParser3ASTV6TriviaVGMd, &_ss23_ContiguousArrayStorageCy12_RegexParser3ASTV6TriviaVGMR, &type metadata for AST.Trivia);
LABEL_3:
        *(v11 + 2) = v3;
        v13 = &v11[32 * a1];
        *(v13 + 4) = v5;
        *(v13 + 5) = v10;
        *(v13 + 3) = v61;
        v64 = v11;
        a1 = v63;
        goto LABEL_4;
      }

      goto LABEL_24;
    }

    v15 = v14;
LABEL_28:
    v12 = v14 >> 14;
    if (v14 >> 14 < v15 >> 14)
    {
      goto LABEL_61;
    }

    v39 = HIBYTE(*(&v77[0] + 1)) & 0xFLL;
    if ((*(&v77[0] + 1) & 0x2000000000000000) == 0)
    {
      v39 = *&v77[0] & 0xFFFFFFFFFFFFLL;
    }

    if (!v39)
    {
      break;
    }

    v40 = _s12_RegexParser0B0V14validateNumber33_E16AF135E664C72DDA9A5705859E2720LLyxSgAA6SourceV7LocatedVy_SSG_xmAA9RadixKindOts17FixedWidthIntegerRzlFs6UInt32V_Tt1B5(*&v77[0], *(&v77[0] + 1), v15, v14, 2);
    if ((v40 & 0x100000000) == 0)
    {
      v5 = v40;
      if (WORD1(v40) <= 0x10u && (v40 & 0xFFFFF800) != 0xD800)
      {

        goto LABEL_40;
      }

      *&v66 = 0;
      *(&v66 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(25);

      *&v66 = 0xD000000000000017;
      *(&v66 + 1) = 0x80000001C0C87090;
      LODWORD(v77[0]) = v5;
      lazy protocol witness table accessor for type UInt32 and conformance UInt32();
      v41 = String.init<A>(_:radix:uppercase:)();
      MEMORY[0x1C68E0BF0](v41);

      v69[0] = 1;
      *&v69[8] = v66;
      *&v69[24] = v60;
      v70 = v14;
      v71 = v66;
      v72 = 0;
      v73 = 0;
      v74 = 4;
      if (*(v6 + 88) != 1)
      {
        v45 = v6[10];
        swift_bridgeObjectRetain_n();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v45 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v45 + 2) + 1, 1, v45);
        }

        v47 = *(v45 + 2);
        v46 = *(v45 + 3);
        if (v47 >= v46 >> 1)
        {
          v45 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1, v45);
        }

        *(v45 + 2) = v47 + 1;
        v48 = &v45[80 * v47];
        *(v48 + 2) = *v69;
        v49 = v9[1];
        v50 = v9[2];
        v51 = v9[3];
        *(v48 + 89) = *(v9 + 57);
        *(v48 + 4) = v50;
        *(v48 + 5) = v51;
        *(v48 + 3) = v49;

        v6[10] = v45;
        a1 = v63;
        goto LABEL_39;
      }

      outlined destroy of Diagnostic(v69);
    }

LABEL_39:
    v5 = 0;
LABEL_40:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v42 = v59;
    }

    else
    {
      v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v59 + 2) + 1, 1, v59);
    }

    v10 = *(v42 + 2);
    v43 = *(v42 + 3);
    v3 = v10 + 1;
    if (v10 >= v43 >> 1)
    {
      v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v10 + 1, 1, v42);
    }

    *(v42 + 2) = v3;
    v59 = v42;
    v44 = &v42[24 * v10];
    *(v44 + 8) = v5;
    *(v44 + 5) = v60;
    *(v44 + 6) = v14;
  }

  v52._countAndFlagsBits = a1;
  v52._object = a2;
  if (!Parser.tryEat(_:)(v52))
  {
    *v69 = a1;
    *&v69[8] = a2;
    *&v69[16] = 0;
    *&v69[24] = 0;
    LOBYTE(v70) = 3;
    *&v66 = v6[2];
    *(&v66 + 1) = v66;
    Diagnostics.error(_:at:)(v69, &v66);
  }

  v53 = *(v59 + 2);
  if (v53 == 1)
  {
    v55 = *(v59 + 40);
    *a3 = *(v59 + 8);
    *(a3 + 8) = v55;
    type metadata accessor for AST.Atom.Kind(0);
  }

  else
  {
    if (v53)
    {
      v56 = v64;
      *a3 = v59;
      *(a3 + 8) = v56;
      type metadata accessor for AST.Atom.Kind(0);
      swift_storeEnumTagMultiPayload();

      goto LABEL_59;
    }

    v66 = xmmword_1C0C7E360;
    v67 = xmmword_1C0C7E320;
    v68[0] = 2;
    v54 = v6[2];
    *&v77[0] = v54;
    *(&v77[0] + 1) = v54;
    Diagnostics.error(_:at:)(&v66, v77);
    *a3 = 0;
    *(a3 + 8) = v54;
    *(a3 + 16) = v54;
    type metadata accessor for AST.Atom.Kind(0);
  }

  swift_storeEnumTagMultiPayload();
LABEL_59:
}

uint64_t closure #1 in Parser.expectUnicodeScalarSequence(eating:)(uint64_t *a1, uint64_t a2, uint64_t a3, char **a4)
{
  v8 = String.subscript.getter();
  v10 = v9;

  if ((v8 ^ v10) < 0x4000)
  {
    return 1;
  }

  v11 = *(a1 + 1);
  v31[0] = *a1;
  v31[1] = v11;
  v12 = *(a1 + 3);
  v31[2] = *(a1 + 2);
  v31[3] = v12;
  v32[0] = *(a1 + 4);
  *(v32 + 9) = *(a1 + 73);
  outlined init with copy of Parser(v31, &v28);
  v13 = String.subscript.getter();
  if (!((v13 ^ v14) >> 14))
  {

    outlined destroy of Parser(v31);
    goto LABEL_4;
  }

  v22 = Substring.subscript.getter();
  v24 = v23;

  outlined destroy of Parser(v31);
  if (v22 == a2 && v24 == a3)
  {

    return 1;
  }

  v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v25)
  {
    return 1;
  }

LABEL_4:
  specialized Parser.tryEatPrefix(maxLength:_:)(0, 1, a1, specialized Source.peekPrefix(maxLength:_:), &v28);
  v15 = v29;
  if (v29)
  {
    v16 = v28;
    v27 = v30;
    v17 = *a4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a4 = v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 2) + 1, 1, v17, &_ss23_ContiguousArrayStorageCy12_RegexParser3ASTV6TriviaVGMd, &_ss23_ContiguousArrayStorageCy12_RegexParser3ASTV6TriviaVGMR, &type metadata for AST.Trivia);
      *a4 = v17;
    }

    v20 = *(v17 + 2);
    v19 = *(v17 + 3);
    if (v20 >= v19 >> 1)
    {
      v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v17, &_ss23_ContiguousArrayStorageCy12_RegexParser3ASTV6TriviaVGMd, &_ss23_ContiguousArrayStorageCy12_RegexParser3ASTV6TriviaVGMR, &type metadata for AST.Trivia);
      *a4 = v17;
    }

    *(v17 + 2) = v20 + 1;
    v21 = &v17[32 * v20];
    *(v21 + 4) = v16;
    *(v21 + 5) = v15;
    *(v21 + 3) = v27;
    return 1;
  }

  return 0;
}

uint64_t specialized Parser.lexUntil(_:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v8 = *(a1 + 2);
  v60 = 0;
  v61 = 0xE000000000000000;
  if (specialized Parser.tryEatNonEmpty<A>(sequence:)(a2, a3))
  {

    v10 = v8;
LABEL_31:
    if (v10 >> 14 < v8 >> 14)
    {
      goto LABEL_35;
    }

    v43 = v61;
    *a4 = v60;
    a4[1] = v43;
    a4[2] = v8;
    a4[3] = v10;
    return result;
  }

  *&v46 = a2;
  *(&v46 + 1) = a3;
  v45 = a4;
  v44 = v8;
  v10 = v8;
  while (1)
  {
    v11 = a1[1];
    v55 = *a1;
    v56 = v11;
    v12 = a1[3];
    v57 = a1[2];
    v58 = v12;
    *v59 = a1[4];
    *&v59[9] = *(a1 + 73);
    v13 = v56;
    outlined init with copy of Parser(&v55, &v52);
    v14 = String.subscript.getter();
    if (!((v14 ^ v15) >> 14))
    {

      outlined destroy of Parser(&v55);
LABEL_30:

      v8 = v44;
      a4 = v45;
      goto LABEL_31;
    }

    v16 = *&v59[16];
    v17 = v59[24];
    v49 = Substring.subscript.getter();
    v50 = v18;

    outlined destroy of Parser(&v55);
    String.subscript.getter();
    v10 = Substring.index(_:offsetBy:limitedBy:)();
    v20 = v19;

    v48 = v17;
    if ((v20 & 1) == 0)
    {
      break;
    }

    strcpy(v51, "UNREACHABLE: ");
    HIWORD(v51[1]) = -4864;
    MEMORY[0x1C68E0BF0](0xD000000000000015, 0x80000001C0C86F20);
    LOBYTE(v52) = 0;
    *(&v52 + 1) = v51[0];
    *&v53 = v51[1];
    *(&v53 + 1) = v13;
    *v54 = v13;
    memset(&v54[8], 0, 32);
    v54[40] = -1;
    if (v17)
    {
      outlined destroy of Diagnostic(&v52);
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
      }

      v22 = *(v16 + 2);
      v21 = *(v16 + 3);
      if (v22 >= v21 >> 1)
      {
        v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v16);
      }

      *(v16 + 2) = v22 + 1;
      v23 = &v16[80 * v22];
      *(v23 + 2) = v52;
      v24 = v53;
      v25 = *v54;
      v26 = *&v54[16];
      *(v23 + 89) = *&v54[25];
      *(v23 + 4) = v25;
      *(v23 + 5) = v26;
      *(v23 + 3) = v24;
      *(a1 + 10) = v16;
    }

    String.subscript.getter();
    v27 = Substring.distance(from:to:)();

    v47 = v16;
    if (v27 >= 1)
    {
      String.subscript.getter();
      v10 = Substring.index(_:offsetBy:limitedBy:)();
      v29 = v28;

      if ((v29 & 1) == 0)
      {
        if (*(&v13 + 1) >> 14 < v10 >> 14)
        {
          goto LABEL_34;
        }

        goto LABEL_20;
      }
    }

    v10 = v13;
LABEL_21:
    MEMORY[0x1C68E0BE0](v49, v50);

    v52 = v46;

    v30 = String.init<A>(_:)();
    v32 = v31;
    v33 = String.subscript.getter();
    v35 = v34;

    if ((v33 ^ v35) >> 14)
    {

      if (specialized Parser.tryEat<A>(sequence:)(v46, *(&v46 + 1)))
      {
        goto LABEL_30;
      }
    }

    else
    {
      strcpy(v51, "expected '");
      BYTE3(v51[1]) = 0;
      HIDWORD(v51[1]) = -369098752;
      MEMORY[0x1C68E0BF0](v30, v32);
      MEMORY[0x1C68E0BF0](39, 0xE100000000000000);
      LOBYTE(v52) = 1;
      *(&v52 + 1) = v51[0];
      DWORD1(v52) = *(v51 + 3);
      *(&v52 + 1) = v51[0];
      *&v53 = v51[1];
      *(&v53 + 1) = v10;
      *v54 = v10;
      *&v54[8] = v30;
      *&v54[16] = v32;
      *&v54[32] = 0;
      v54[40] = 3;
      if (v48)
      {
        outlined destroy of Diagnostic(&v52);
      }

      else
      {

        v36 = v47;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v47 + 2) + 1, 1, v47);
        }

        v38 = *(v36 + 2);
        v37 = *(v36 + 3);
        if (v38 >= v37 >> 1)
        {
          v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1, v36);
        }

        *(v36 + 2) = v38 + 1;
        v39 = &v36[80 * v38];
        *(v39 + 2) = v52;
        v40 = v53;
        v41 = *v54;
        v42 = *&v54[16];
        *(v39 + 89) = *&v54[25];
        *(v39 + 4) = v41;
        *(v39 + 5) = v42;
        *(v39 + 3) = v40;

        *(a1 + 10) = v36;
      }
    }
  }

  if (*(&v13 + 1) >> 14 >= v10 >> 14)
  {
    v47 = v16;
LABEL_20:
    *(a1 + 2) = v10;
    *(a1 + 3) = *(&v13 + 1);
    goto LABEL_21;
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t specialized Parser.lexUntil(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, void *a7@<X8>)
{
  v76 = 0;
  v77 = 0xE000000000000000;
  v12 = a1[2];
  v13 = String.subscript.getter();
  v64 = a2;
  LOBYTE(a2) = specialized Sequence<>.starts<A>(with:)(a2, a3, v13, v14, v15, v16);

  if ((a2 & 1) == 0)
  {
    *&v68 = a4;
    *(&v68 + 1) = a5;
    v69 = 0uLL;
    v70[0] = 3;
    v17 = String.subscript.getter();
    v19 = v18;

    if ((v17 ^ v19) >> 14)
    {
      if ((a6 & 1) == 0 || (v22._countAndFlagsBits = 92, v22._object = 0xE100000000000000, !Parser.tryEat(_:)(v22)) || (v71 = 2uLL, v72 = 0uLL, LOBYTE(v73) = 36, v23 = a1[2], v24 = String.subscript.getter(), v26 = v25, , (v24 ^ v26) >> 14))
      {
        v21 = v12;
        while (1)
        {
          v27 = *(a1 + 1);
          v71 = *a1;
          v72 = v27;
          v28 = *(a1 + 3);
          v73 = *(a1 + 2);
          v74 = v28;
          *v75 = *(a1 + 4);
          *&v75[9] = *(a1 + 73);
          v29 = v72;
          outlined init with copy of Parser(&v71, &v68);
          v30 = String.subscript.getter();
          if (!((v30 ^ v31) >> 14))
          {

            outlined destroy of Parser(&v71);
            goto LABEL_36;
          }

          v32 = a5;
          v66 = Substring.subscript.getter();
          v34 = v33;

          outlined destroy of Parser(&v71);
          String.subscript.getter();
          v21 = Substring.index(_:offsetBy:limitedBy:)();
          v36 = v35;

          if (v36)
          {
            v37 = *&v75[16];
            v38 = v75[24];
            strcpy(v67, "UNREACHABLE: ");
            HIWORD(v67[1]) = -4864;
            MEMORY[0x1C68E0BF0](0xD000000000000015, 0x80000001C0C86F20);
            LOBYTE(v68) = 0;
            *(&v68 + 1) = v67[0];
            *&v69 = v67[1];
            *(&v69 + 1) = v29;
            *v70 = v29;
            memset(&v70[8], 0, 32);
            v70[40] = -1;
            if (v38)
            {
              outlined destroy of Diagnostic(&v68);
            }

            else
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v37 + 2) + 1, 1, v37);
              }

              v40 = *(v37 + 2);
              v39 = *(v37 + 3);
              if (v40 >= v39 >> 1)
              {
                v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v37);
              }

              *(v37 + 2) = v40 + 1;
              v41 = &v37[80 * v40];
              *(v41 + 2) = v68;
              v42 = v69;
              v43 = *v70;
              v44 = *&v70[16];
              *(v41 + 89) = *&v70[25];
              *(v41 + 4) = v43;
              *(v41 + 5) = v44;
              *(v41 + 3) = v42;
              a1[10] = v37;
            }

            String.subscript.getter();
            v45 = Substring.distance(from:to:)();

            if (v45 < 1 || (String.subscript.getter(), v21 = Substring.index(_:offsetBy:limitedBy:)(), v47 = v46, result = , (v47 & 1) != 0))
            {
              v21 = v29;
            }

            else
            {
              if (*(&v29 + 1) >> 14 < v21 >> 14)
              {
                goto LABEL_41;
              }

              a1[2] = v21;
              a1[3] = *(&v29 + 1);
            }

            a5 = v32;
          }

          else
          {
            if (*(&v29 + 1) >> 14 < v21 >> 14)
            {
              __break(1u);
              goto LABEL_40;
            }

            a5 = v32;
            a1[2] = v21;
            a1[3] = *(&v29 + 1);
          }

          MEMORY[0x1C68E0BE0](v66, v34);

          v48 = String.subscript.getter();
          v52 = specialized Sequence<>.starts<A>(with:)(v64, a3, v48, v49, v50, v51);

          if (v52)
          {
            goto LABEL_36;
          }

          v78[0] = a4;
          v78[1] = a5;
          v78[2] = 0;
          v78[3] = 0;
          v79 = 3;
          v53 = String.subscript.getter();
          v55 = v54;

          if (!((v53 ^ v55) >> 14))
          {
            *&v68 = v21;
            *(&v68 + 1) = v21;
            v62 = v78;
LABEL_35:
            Diagnostics.error(_:at:)(v62, &v68);
LABEL_36:

            goto LABEL_37;
          }

          if (a6)
          {
            v56._countAndFlagsBits = 92;
            v56._object = 0xE100000000000000;
            if (Parser.tryEat(_:)(v56))
            {
              v80 = 2uLL;
              v81 = 0;
              v82 = 0;
              v83 = 36;
              v57 = a1[2];
              v58 = String.subscript.getter();
              v60 = v59;

              if (!((v58 ^ v60) >> 14))
              {
                *&v68 = v57;
                *(&v68 + 1) = v57;
                v62 = &v80;
                goto LABEL_35;
              }
            }
          }
        }
      }

      *&v80 = v23;
      *(&v80 + 1) = v23;
      Diagnostics.error(_:at:)(&v71, &v80);
    }

    else
    {
      *&v80 = v12;
      *(&v80 + 1) = v12;
      Diagnostics.error(_:at:)(&v68, &v80);
    }
  }

  v21 = v12;
LABEL_37:
  if (v21 >> 14 < v12 >> 14)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }

  else
  {
    v61 = v77;
    *a7 = v76;
    a7[1] = v61;
    a7[2] = v12;
    a7[3] = v21;
  }

  return result;
}

void *Parser.lexUnicodeScalar()@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser3ASTV4AtomV4KindOSgMd, &_s12_RegexParser3ASTV4AtomV4KindOSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v55 - v4;
  *(v69 + 9) = *(v1 + 73);
  v6 = *(v1 + 48);
  v67 = *(v1 + 32);
  v68 = v6;
  v69[0] = *(v1 + 64);
  v7 = *(v1 + 16);
  v66[0] = *v1;
  v66[1] = v7;
  v64 = v6;
  v65 = v69[0];
  v62 = v7;
  v63 = v67;
  v61 = v66[0];
  v58 = *&v69[1];
  v8 = BYTE8(v69[1]);
  outlined init with copy of Parser(v66, &v73);
  v9 = *(v1 + 16);
  v73 = *v1;
  v74 = v9;
  v10 = *(v1 + 48);
  v75 = *(v1 + 32);
  v76 = v10;
  *v77 = *(v1 + 64);
  *&v77[9] = *(v1 + 73);
  outlined init with copy of Parser(&v73, v70);
  v11 = String.subscript.getter();
  if ((v11 ^ v12) < 0x4000)
  {

    outlined destroy of Parser(&v73);
LABEL_3:
    v13 = type metadata accessor for AST.Atom.Kind(0);
    (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
    goto LABEL_25;
  }

  v14 = Substring.subscript.getter();
  v16 = v15;

  outlined destroy of Parser(&v73);
  Parser.advance(_:)(1);
  if ((v14 != 117 || v16 != 0xE100000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v17._countAndFlagsBits = 123, v17._object = 0xE100000000000000, !Parser.tryEat(_:)(v17)))
  {
    if (v14 == 120 && v16 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v19._countAndFlagsBits = 123;
      v19._object = 0xE100000000000000;
      if (Parser.tryEat(_:)(v19))
      {

        specialized Parser.lexUntil(_:)(v1, 125, 0xE100000000000000, v70);
        v21 = *(&v70[0] + 1);
        v20 = *&v70[0];
LABEL_20:
        *&v70[0] = v20;
        *(&v70[0] + 1) = v21;
        v22 = 2;
LABEL_21:
        Parser.validateUnicodeScalar(_:_:)(v70, v22, &v59);

        *v5 = v59;
        v23 = v60;
LABEL_22:
        *(v5 + 8) = v23;
LABEL_23:
        v13 = type metadata accessor for AST.Atom.Kind(0);
        swift_storeEnumTagMultiPayload();
        v18 = v13;
        goto LABEL_24;
      }
    }

    if (!v16)
    {
      goto LABEL_3;
    }

    if (v14 == 120 && v16 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      specialized Parser.tryEatPrefix(maxLength:_:)(2, 0, v1, specialized Source.peekPrefix(maxLength:_:), v70);
      v21 = *(&v70[0] + 1);
      if (*(&v70[0] + 1))
      {
        v20 = *&v70[0];
        goto LABEL_20;
      }

LABEL_70:
      v54 = *(v1 + 16);
      *v5 = 0;
      *(v5 + 1) = v54;
      *(v5 + 2) = v54;
      goto LABEL_23;
    }

    if (v14 == 117 && v16 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v49 = 4;
    }

    else
    {
      if ((v14 != 85 || v16 != 0xE100000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        if (v14 == 111 && v16 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (v50._countAndFlagsBits = 123, v50._object = 0xE100000000000000, Parser.tryEat(_:)(v50)))
        {

          specialized Parser.lexUntil(_:)(v1, 125, 0xE100000000000000, v70);
          v52 = *(&v70[0] + 1);
          v51 = *&v70[0];
        }

        else
        {
          if (v14 == 48 && v16 == 0xE100000000000000)
          {
          }

          else
          {
            v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v53 & 1) == 0)
            {
              goto LABEL_3;
            }
          }

          specialized Parser.tryEatPrefix(maxLength:_:)(3, 0, v1, specialized Source.peekPrefix(maxLength:_:), v70);
          v52 = *(&v70[0] + 1);
          if (!*(&v70[0] + 1))
          {
            goto LABEL_70;
          }

          v51 = *&v70[0];
        }

        *&v70[0] = v51;
        *(&v70[0] + 1) = v52;
        v22 = 0;
        goto LABEL_21;
      }

      v49 = 8;
    }

    Parser.expectUnicodeScalar(numDigits:)(v49, v70);
    *v5 = v70[0];
    v23 = *(v70 + 8);
    goto LABEL_22;
  }

  Parser.expectUnicodeScalarSequence(eating:)(0x7DuLL, 0xE100000000000000, v5);
  v13 = type metadata accessor for AST.Atom.Kind(0);
  v18 = v13;
LABEL_24:
  (*(*(v18 - 8) + 56))(v5, 0, 1, v13);
LABEL_25:
  type metadata accessor for AST.Atom.Kind(0);
  v24 = *(v13 - 8);
  if ((*(v24 + 48))(v5, 1, v13) != 1)
  {
    v75 = v63;
    v76 = v64;
    *v77 = v65;
    v73 = v61;
    v74 = v62;
    *&v77[16] = v58;
    v77[24] = v8;
    outlined destroy of Parser(&v73);
    outlined init with take of AST.Atom.Kind(v5, a1, type metadata accessor for AST.Atom.Kind);
    return (*(v24 + 56))(a1, 0, 1, v13);
  }

  v25 = *&v69[1];
  v26 = BYTE8(v69[1]);
  outlined destroy of _ASTParent?(v5, &_s12_RegexParser3ASTV4AtomV4KindOSgMd, &_s12_RegexParser3ASTV4AtomV4KindOSgMR);
  v27 = *(v1 + 80);
  v28 = *(v1 + 48);
  v75 = *(v1 + 32);
  v76 = v28;
  *v77 = *(v1 + 64);
  *&v77[9] = *(v1 + 73);
  v29 = *(v1 + 16);
  v73 = *v1;
  v74 = v29;

  result = outlined destroy of Parser(&v73);
  if (v26 == 1)
  {

LABEL_48:
    v47 = v64;
    *(v1 + 32) = v63;
    *(v1 + 48) = v47;
    *(v1 + 64) = v65;
    v48 = v62;
    *v1 = v61;
    *(v1 + 16) = v48;
    *(v1 + 80) = v58;
    *(v1 + 88) = v8;
    return (*(v24 + 56))(a1, 1, 1, v13);
  }

  v31 = *(v25 + 2);
  v32 = *(v27 + 16);
  if (v32 >= v31)
  {
    v33 = *(v25 + 2);
  }

  else
  {
    v33 = *(v27 + 16);
  }

  if (v31)
  {
    v34 = v33;
  }

  else
  {
    v34 = 0;
  }

  if (v34 == v32)
  {
    swift_unknownObjectRelease();
    goto LABEL_48;
  }

  v56 = v8;
  v57 = a1;
  if (v34 < v32)
  {

    v35 = ~v34 + v32;
    v36 = 80 * v34 + 32;
    v37 = v58;
    while (1)
    {
      v70[0] = *(v27 + v36);
      v38 = *(v27 + v36 + 16);
      v39 = *(v27 + v36 + 32);
      v40 = *(v27 + v36 + 48);
      *(v72 + 9) = *(v27 + v36 + 57);
      v71 = v39;
      v72[0] = v40;
      v70[1] = v38;
      if (!LOBYTE(v70[0]))
      {
        outlined init with copy of Diagnostic(v70, &v59);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v25 + 2) + 1, 1, v25);
        }

        v42 = *(v25 + 2);
        v41 = *(v25 + 3);
        if (v42 >= v41 >> 1)
        {
          v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1, v25);
        }

        *(v25 + 2) = v42 + 1;
        v43 = &v25[80 * v42];
        *(v43 + 2) = v70[0];
        v44 = v70[1];
        v45 = v71;
        v46 = v72[0];
        *(v43 + 89) = *(v72 + 9);
        *(v43 + 4) = v45;
        *(v43 + 5) = v46;
        *(v43 + 3) = v44;
        v37 = v25;
      }

      if (!v35)
      {
        break;
      }

      --v35;
      v36 += 80;
    }

    v58 = v37;
    swift_unknownObjectRelease();

    a1 = v57;
    LOBYTE(v8) = v56;
    goto LABEL_48;
  }

  __break(1u);
  return result;
}

uint64_t Parser.lexQuantifier()@<X0>(uint64_t a1@<X8>)
{
  *&v69[9] = *(v1 + 73);
  v3 = *(v1 + 48);
  v67 = *(v1 + 32);
  v68 = v3;
  *v69 = *(v1 + 64);
  v4 = *(v1 + 16);
  v66[0] = *v1;
  v66[1] = v4;
  v61 = v66[0];
  v62 = v4;
  v63 = v67;
  v64 = v3;
  v65 = *v69;
  v5 = *&v69[16];
  v6 = v69[24];
  outlined init with copy of Parser(v66, &v45);
  closure #1 in Parser.lexQuantifier()(v1, &v54);
  v7 = *(&v54 + 1);
  v8 = *(&v56 + 1);
  v75 = v56;
  v70 = v57;
  v71 = v58;
  v72 = v59;
  v73 = v60;
  v74 = v55;
  if (*(&v54 + 1) >> 1 != 0xFFFFFFFFLL || *(&v56 + 1) >= 2uLL)
  {
    v47 = v63;
    v48 = v64;
    v49 = v65;
    v45 = v61;
    v46 = v62;
    *&v50 = v5;
    BYTE8(v50) = v6;
    result = outlined destroy of Parser(&v45);
    v15 = v59;
    *(a1 + 64) = v58;
    *(a1 + 80) = v15;
    *(a1 + 96) = v60;
    v16 = v55;
    *a1 = v54;
    *(a1 + 16) = v16;
    v17 = v57;
    *(a1 + 32) = v56;
    *(a1 + 48) = v17;
    return result;
  }

  v39 = v54;
  v9 = *&v69[16];
  v10 = v69[24];
  v49 = v58;
  v50 = v59;
  v51 = v60;
  v45 = v54;
  v46 = v55;
  v47 = v56;
  v48 = v57;
  outlined destroy of _ASTParent?(&v45, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV14QuantificationV6AmountOG_AEy_AI4KindOGSayAG6TriviaVGtSgMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV14QuantificationV6AmountOG_AEy_AI4KindOGSayAG6TriviaVGtSgMR);
  v11 = *(v1 + 80);
  v12 = *(v1 + 48);
  v52[2] = *(v1 + 32);
  v52[3] = v12;
  v53[0] = *(v1 + 64);
  *(v53 + 9) = *(v1 + 73);
  v13 = *(v1 + 16);
  v52[0] = *v1;
  v52[1] = v13;

  result = outlined destroy of Parser(v52);
  if (v10 == 1)
  {

LABEL_25:
    v33 = v64;
    *(v1 + 32) = v63;
    *(v1 + 48) = v33;
    *(v1 + 64) = v65;
    v34 = v62;
    *v1 = v61;
    *(v1 + 16) = v34;
    *(v1 + 80) = v5;
    *(v1 + 88) = v6;
    *a1 = v39;
    *(a1 + 8) = v7;
    v35 = v75;
    v36 = v73;
    *(a1 + 16) = v74;
    *(a1 + 32) = v35;
    *(a1 + 40) = v8;
    *(a1 + 80) = v72;
    *(a1 + 96) = v36;
    v37 = v71;
    *(a1 + 48) = v70;
    *(a1 + 64) = v37;
    return result;
  }

  v18 = *(v9 + 2);
  v19 = *(v11 + 16);
  if (v19 >= v18)
  {
    v20 = *(v9 + 2);
  }

  else
  {
    v20 = *(v11 + 16);
  }

  if (v18)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  if (v21 == v19)
  {
    result = swift_unknownObjectRelease();
    goto LABEL_25;
  }

  v38 = v6;
  if (v21 < v19)
  {

    v22 = ~v21 + v19;
    for (i = 80 * v21 + 32; ; i += 80)
    {
      v41 = *(v11 + i);
      v24 = *(v11 + i + 16);
      v25 = *(v11 + i + 32);
      v26 = *(v11 + i + 48);
      *(v44 + 9) = *(v11 + i + 57);
      v43 = v25;
      v44[0] = v26;
      v42 = v24;
      if (!v41)
      {
        outlined init with copy of Diagnostic(&v41, v40);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
        }

        v28 = *(v9 + 2);
        v27 = *(v9 + 3);
        if (v28 >= v27 >> 1)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v9);
        }

        *(v9 + 2) = v28 + 1;
        v29 = &v9[80 * v28];
        *(v29 + 2) = v41;
        v30 = v42;
        v31 = v43;
        v32 = v44[0];
        *(v29 + 89) = *(v44 + 9);
        *(v29 + 4) = v31;
        *(v29 + 5) = v32;
        *(v29 + 3) = v30;
        v5 = v9;
      }

      if (!v22)
      {
        break;
      }

      --v22;
    }

    swift_unknownObjectRelease();

    v6 = v38;
    goto LABEL_25;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in Parser.lexQuantifier()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = MEMORY[0x1E69E7CC0];
  if ((*(a1 + 64) & 1) == 0)
  {
    goto LABEL_5;
  }

  specialized Parser.tryEatPrefix(maxLength:_:)(0, 1, a1, specialized Source.peekPrefix(maxLength:_:), v39);
  v5 = *&v39[8];
  if (!*&v39[8])
  {
    goto LABEL_5;
  }

  v6 = *v39;
  v35 = *&v39[16];
  v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0], &_ss23_ContiguousArrayStorageCy12_RegexParser3ASTV6TriviaVGMd, &_ss23_ContiguousArrayStorageCy12_RegexParser3ASTV6TriviaVGMR, &type metadata for AST.Trivia);
  v9 = *(v7 + 2);
  v8 = *(v7 + 3);
  v2 = v9 + 1;
  if (v9 >= v8 >> 1)
  {
    goto LABEL_40;
  }

  while (1)
  {
    *(v7 + 2) = v2;
    v10 = &v7[32 * v9];
    *(v10 + 4) = v6;
    *(v10 + 5) = v5;
    *(v10 + 3) = v35;
    v42 = v7;
LABEL_5:
    v5 = *(a1 + 16);
    v11._countAndFlagsBits = 42;
    v11._object = 0xE100000000000000;
    if (Parser.tryEat(_:)(v11))
    {
      memset(v39, 0, sizeof(v39));
LABEL_12:
      v9 = 0;
      v41 = 0uLL;
      v6 = 0x8000000000000000;
      goto LABEL_13;
    }

    v12._countAndFlagsBits = 43;
    v12._object = 0xE100000000000000;
    v2 = v39;
    if (Parser.tryEat(_:)(v12))
    {
      v13 = 1;
LABEL_11:
      *v39 = v13;
      memset(&v39[8], 0, 32);
      goto LABEL_12;
    }

    v14._countAndFlagsBits = 63;
    v14._object = 0xE100000000000000;
    if (Parser.tryEat(_:)(v14))
    {
      v13 = 2;
      goto LABEL_11;
    }

    specialized Parser.tryEating<A>(_:)(a1, &v42, v39);
    v9 = *&v39[8];
    v6 = v40;
    if (*&v39[8] >> 1 == 0xFFFFFFFFLL && v40 < 2)
    {
      v19 = 0;
      v17 = 0;
      v6 = 0;
      v5 = 0;
      v15 = 0;
      v18 = 0uLL;
      v16 = 0uLL;
      v9 = 0x1FFFFFFFELL;
      goto LABEL_15;
    }

LABEL_13:
    v15 = *(a1 + 16);
    v8 = v15 >> 14;
    if (v15 >> 14 < v5 >> 14)
    {
      __break(1u);
      goto LABEL_39;
    }

    v16 = v41;
    v17 = *&v39[32];
    v18 = *&v39[16];
    v19 = *v39;
LABEL_15:
    if (v9 >> 1 == 0xFFFFFFFF && v6 <= 1)
    {
      *a2 = xmmword_1C0C7E370;
      *(a2 + 16) = 0u;
      *(a2 + 32) = 0u;
      *(a2 + 48) = 0u;
      *(a2 + 64) = 0u;
      *(a2 + 80) = 0u;
      *(a2 + 96) = 0u;
      goto LABEL_32;
    }

    v34 = v16;
    v35 = v18;
    if (*(a1 + 64))
    {
      specialized Parser.tryEatPrefix(maxLength:_:)(0, 1, a1, specialized Source.peekPrefix(maxLength:_:), &v36);
      if (v37)
      {
        v33 = v37;
        v31 = v36;
        v32 = v38;
        v20 = v42;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 2) + 1, 1, v20, &_ss23_ContiguousArrayStorageCy12_RegexParser3ASTV6TriviaVGMd, &_ss23_ContiguousArrayStorageCy12_RegexParser3ASTV6TriviaVGMR, &type metadata for AST.Trivia);
        }

        v22 = *(v20 + 2);
        v21 = *(v20 + 3);
        v23 = v22 + 1;
        if (v22 >= v21 >> 1)
        {
          v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v20, &_ss23_ContiguousArrayStorageCy12_RegexParser3ASTV6TriviaVGMd, &_ss23_ContiguousArrayStorageCy12_RegexParser3ASTV6TriviaVGMR, &type metadata for AST.Trivia);
          v23 = v22 + 1;
          v20 = v30;
        }

        *(v20 + 2) = v23;
        v24 = &v20[32 * v22];
        *(v24 + 4) = v31;
        *(v24 + 5) = v33;
        *(v24 + 3) = v32;
        v42 = v20;
      }
    }

    v2 = *(a1 + 16);
    v25._countAndFlagsBits = 63;
    v25._object = 0xE100000000000000;
    if (Parser.tryEat(_:)(v25))
    {
      v8 = 1;
    }

    else
    {
      v26._countAndFlagsBits = 43;
      v26._object = 0xE100000000000000;
      v8 = Parser.tryEat(_:)(v26) ? 2 : 0;
    }

    v27 = *(a1 + 16);
    if (v27 >> 14 >= v2 >> 14)
    {
      break;
    }

LABEL_39:
    __break(1u);
LABEL_40:
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v2, 1, v7, &_ss23_ContiguousArrayStorageCy12_RegexParser3ASTV6TriviaVGMd, &_ss23_ContiguousArrayStorageCy12_RegexParser3ASTV6TriviaVGMR, &type metadata for AST.Trivia);
  }

  v28 = v42;
  *a2 = v19;
  *(a2 + 8) = v9;
  *(a2 + 16) = v35;
  *(a2 + 32) = v17;
  *(a2 + 40) = v6;
  *(a2 + 48) = v34;
  *(a2 + 64) = v5;
  *(a2 + 72) = v15;
  *(a2 + 80) = v8;
  *(a2 + 88) = v2;
  *(a2 + 96) = v27;
  *(a2 + 104) = v28;

LABEL_32:
}

uint64_t Source.Located.init(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  result = type metadata accessor for Source.Located(0, a4, v9, v10);
  v12 = (a5 + *(result + 28));
  *v12 = a2;
  v12[1] = a3;
  return result;
}

void closure #1 in Parser.lexQuote()(void *a1@<X0>, void *a2@<X8>)
{
  if (specialized Parser.tryEat<A>(sequence:)(20828, 0xE200000000000000))
  {
    *&v55 = 0;
    *(&v55 + 1) = 0xE000000000000000;
    v4 = a1[2];
    v5 = String.subscript.getter();
    v7 = v6;

    v8 = v5 ^ v7;
    v45 = v4;
    v9 = v4;
    if (v8 >= 0x4000)
    {
      v9 = v4;
      if ((specialized Parser.tryEat<A>(sequence:)(17756, 0xE200000000000000) & 1) == 0)
      {
        v9 = v4;
        do
        {
          v10 = *(a1 + 1);
          v50 = *a1;
          v51 = v10;
          v11 = *(a1 + 3);
          v52 = *(a1 + 2);
          v53 = v11;
          *v54 = *(a1 + 4);
          *&v54[9] = *(a1 + 73);
          v12 = v51;
          outlined init with copy of Parser(&v50, &v47);
          v13 = String.subscript.getter();
          if (!((v13 ^ v14) >> 14))
          {

            outlined destroy of Parser(&v50);
            break;
          }

          v15 = Substring.subscript.getter();
          v17 = v16;

          outlined destroy of Parser(&v50);
          String.subscript.getter();
          v9 = Substring.index(_:offsetBy:limitedBy:)();
          v19 = v18;

          if (v19)
          {
            v20 = *&v54[16];
            v21 = v54[24];
            strcpy(v46, "UNREACHABLE: ");
            HIWORD(v46[1]) = -4864;
            MEMORY[0x1C68E0BF0](0xD000000000000015, 0x80000001C0C86F20);
            LOBYTE(v47._countAndFlagsBits) = 0;
            v47._object = v46[0];
            *&v48 = v46[1];
            *(&v48 + 1) = v12;
            *v49 = v12;
            memset(&v49[8], 0, 32);
            v49[40] = -1;
            if (v21)
            {
              outlined destroy of Diagnostic(&v47);
            }

            else
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 2) + 1, 1, v20);
              }

              v23 = *(v20 + 2);
              v22 = *(v20 + 3);
              if (v23 >= v22 >> 1)
              {
                v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v20);
              }

              *(v20 + 2) = v23 + 1;
              v24 = &v20[80 * v23];
              *(v24 + 2) = v47;
              v25 = v48;
              v26 = *v49;
              v27 = *&v49[16];
              *(v24 + 89) = *&v49[25];
              *(v24 + 4) = v26;
              *(v24 + 5) = v27;
              *(v24 + 3) = v25;
              a1[10] = v20;
            }

            String.subscript.getter();
            v28 = Substring.distance(from:to:)();

            if (v28 < 1 || (String.subscript.getter(), v9 = Substring.index(_:offsetBy:limitedBy:)(), v30 = v29, , (v30 & 1) != 0))
            {
              v9 = v12;
              goto LABEL_21;
            }

            if (*(&v12 + 1) >> 14 < v9 >> 14)
            {
              goto LABEL_47;
            }
          }

          else if (*(&v12 + 1) >> 14 < v9 >> 14)
          {
            __break(1u);
            goto LABEL_46;
          }

          a1[2] = v9;
          a1[3] = *(&v12 + 1);
LABEL_21:
          MEMORY[0x1C68E0BE0](v15, v17);

          v31 = String.subscript.getter();
          v33 = v32;
        }

        while ((v31 ^ v33) >= 0x4000 && (specialized Parser.tryEat<A>(sequence:)(17756, 0xE200000000000000) & 1) == 0);
      }
    }

    if (v9 >> 14 >= v45 >> 14)
    {
      v43 = *(&v55 + 1);
      v42 = v55;
      if (a1[8] & 0x40) != 0 && (specialized StringProtocol.spansMultipleLinesInRegexLiteral.getter(v55, *(&v55 + 1)))
      {
        v50 = 3uLL;
        v51 = 0uLL;
        LOBYTE(v52) = 36;
        v47._countAndFlagsBits = v45;
        v47._object = v9;
        Diagnostics.error(_:at:)(&v50, &v47._countAndFlagsBits);
      }

      if (*(a1 + 32) == 1)
      {
        v44 = HIBYTE(v43) & 0xF;
        if ((v43 & 0x2000000000000000) == 0)
        {
          v44 = v42 & 0xFFFFFFFFFFFFLL;
        }

        if (!v44)
        {
          v47 = 1uLL;
          v48 = 0uLL;
          v49[0] = 36;
          *&v55 = v45;
          *(&v55 + 1) = v9;
          Diagnostics.error(_:at:)(&v47._countAndFlagsBits, &v55);
        }
      }

      *a2 = v42;
      a2[1] = v43;
      return;
    }

LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    return;
  }

  if ((a1[8] & 4) == 0 || (v34._countAndFlagsBits = 34, v34._object = 0xE100000000000000, !Parser.tryEat(_:)(v34)))
  {
    *a2 = 0;
    a2[1] = 0;
    return;
  }

  v35._countAndFlagsBits = 34;
  v35._object = 0xE100000000000000;
  v36 = String.init(repeating:count:)(v35, 1);
  v37 = a1[2];

  specialized Parser.lexUntil(_:)(a1, v36._countAndFlagsBits, v36._object, 34, 0xE100000000000000, 1, &v50);
  v38 = a1[2];
  if (v38 >> 14 < v37 >> 14)
  {
    goto LABEL_48;
  }

  v39 = v50;
  v40 = HIBYTE(*(&v50 + 1)) & 0xFLL;
  if ((*(&v50 + 1) & 0x2000000000000000) == 0)
  {
    v40 = v50 & 0xFFFFFFFFFFFFLL;
  }

  if (!v40)
  {
    v50 = 1uLL;
    v51 = 0uLL;
    LOBYTE(v52) = 36;
    v47._countAndFlagsBits = v37;
    v47._object = v38;
    Diagnostics.error(_:at:)(&v50, &v47._countAndFlagsBits);
  }

  if ((specialized Parser.tryEat<A>(sequence:)(v36._countAndFlagsBits, v36._object) & 1) == 0)
  {
    v47 = v36;
    v47._countAndFlagsBits = String.init<A>(_:)();
    v47._object = v41;
    v48 = 0uLL;
    v49[0] = 3;
    *&v55 = a1[2];
    *(&v55 + 1) = v55;
    Diagnostics.error(_:at:)(&v47._countAndFlagsBits, &v55);
  }

  *a2 = v39;
}

uint64_t specialized StringProtocol.spansMultipleLinesInRegexLiteral.getter(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = 0;
    v6 = a2 & 0xFFFFFFFFFFFFFFLL;
    v7 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    do
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        v10 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v15[0] = a1;
          v15[1] = v6;
          v9 = v15 + v5;
        }

        else
        {
          v8 = v7;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v8 = _StringObject.sharedUTF8.getter();
          }

          v9 = (v8 + v5);
        }

        v10 = *v9;
        if ((*v9 & 0x80000000) == 0)
        {
          goto LABEL_14;
        }

        v13 = (__clz(v10 ^ 0xFF) - 24);
        if (v13 <= 2)
        {
          if (v13 != 1)
          {
            v10 = v9[1] & 0x3F | ((v10 & 0x1F) << 6);
            v11 = 2;
            goto LABEL_15;
          }

LABEL_14:
          v11 = 1;
          goto LABEL_15;
        }

        if (v13 == 3)
        {
          v10 = ((v10 & 0xF) << 12) | ((v9[1] & 0x3F) << 6) | v9[2] & 0x3F;
          v11 = 3;
        }

        else
        {
          v10 = ((v10 & 0xF) << 18) | ((v9[1] & 0x3F) << 12) | ((v9[2] & 0x3F) << 6) | v9[3] & 0x3F;
          v11 = 4;
        }
      }

LABEL_15:
      v12 = 1;
      if (v10 == 10 || v10 == 13)
      {
        return v12;
      }

      v5 += v11;
    }

    while (v5 < v2);
  }

  return 0;
}

unint64_t specialized StringProtocol.spansMultipleLinesInRegexLiteral.getter(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = a2 >> 14;
  if (a2 >> 14 == a1 >> 14)
  {
    return 0;
  }

  v21 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a4 & 0xFFFFFFFFFFFFFFLL;
  v10 = (a3 >> 59) & 1;
  if ((a4 & 0x1000000000000000) == 0)
  {
    LOBYTE(v10) = 1;
  }

  v11 = 4 << v10;
  if ((a4 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v12 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v13 = a1;
  v5 = 1;
  while (1)
  {
    _StringGuts.validateScalarIndex(_:in:)(v13, a1, a2, a3, a4);
    if ((a4 & 0x1000000000000000) != 0)
    {
      result = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    }

    else
    {
      if ((a4 & 0x2000000000000000) != 0)
      {
        v23 = a3;
        v24 = v22;
      }

      else if ((a3 & 0x1000000000000000) == 0)
      {
        _StringObject.sharedUTF8.getter();
      }

      result = _decodeScalar(_:startingAt:)();
    }

    v15 = result;
    if (v13 & 0xC) != v11 && (v13)
    {
      if (v12 <= v13 >> 16)
      {
        goto LABEL_43;
      }

LABEL_23:
      if ((a4 & 0x1000000000000000) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_36;
    }

    if ((v13 & 0xC) == v11)
    {
      break;
    }

    if (v12 <= v13 >> 16)
    {
      goto LABEL_42;
    }

LABEL_22:
    if (v13)
    {
      goto LABEL_23;
    }

    v13 = v13 & 0xC | _StringGuts.scalarAlignSlow(_:)(v13, a3, a4) & 0xFFFFFFFFFFFFFFF3 | 1;
    if ((a4 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v16 = v13 >> 16;
      if ((a4 & 0x2000000000000000) != 0)
      {
        v23 = a3;
        v24 = v22;
        v18 = *(&v23 + v16);
      }

      else
      {
        v17 = v21;
        if ((a3 & 0x1000000000000000) == 0)
        {
          v17 = _StringObject.sharedUTF8.getter();
        }

        v18 = *(v17 + v16);
      }

      v19 = v18;
      v20 = __clz(v18 ^ 0xFF) - 24;
      if (v19 >= 0)
      {
        LOBYTE(v20) = 1;
      }

      v13 = ((v16 + v20) << 16) | 5;
      if (v15 == 10)
      {
        goto LABEL_40;
      }

      goto LABEL_37;
    }

LABEL_36:
    v13 = String.UnicodeScalarView._foreignIndex(after:)();
    if (v15 == 10)
    {
      goto LABEL_40;
    }

LABEL_37:
    if (v15 == 13)
    {
      goto LABEL_40;
    }

    if (v4 == v13 >> 14)
    {
      v5 = 0;
LABEL_40:

      return v5;
    }
  }

  result = _StringGuts._slowEnsureMatchingEncoding(_:)(v13, a3, a4);
  v13 = result;
  if (v12 > result >> 16)
  {
    goto LABEL_22;
  }

LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

uint64_t Parser.lexInterpolation()@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + 2);
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[1];
  v97 = v1[2];
  v98 = v5;
  *v99 = v6;
  *&v99[9] = *(v1 + 73);
  v96[0] = *v1;
  v96[1] = v7;
  v93 = v97;
  v94 = v5;
  v95 = v6;
  v91 = v96[0];
  v92 = v7;
  v78 = *&v99[16];
  v8 = v99[24];
  outlined init with copy of Parser(v96, &v87);
  if ((specialized Parser.tryEat<A>(sequence:)(31548, 0xE200000000000000) & 1) == 0)
  {
    goto LABEL_29;
  }

  v75 = v4;
  v76 = v8;
  v77 = a1;
  v85 = 0;
  v86 = 0xE000000000000000;
  v9 = *v1;
  v10 = *(v1 + 1);
  v12 = *(v1 + 2);
  v11 = *(v1 + 3);
  v13 = String.subscript.getter();
  v15 = v14;

  if ((v13 ^ v15) >= 0x4000)
  {
    v17 = v12;
    v79 = v12;
    while (1)
    {
      v22 = String.subscript.getter();
      v26 = specialized Sequence<>.starts<A>(with:)(15997, 0xE200000000000000, v22, v23, v24, v25);

      if (v26)
      {
        goto LABEL_23;
      }

      v27 = *(v2 + 32);
      v28 = *(v2 + 5);
      v29 = *(v2 + 6);
      v30 = *(v2 + 72);
      v31 = *(v2 + 10);
      v32 = *(v2 + 88);
      *&v87 = v9;
      *(&v87 + 1) = v10;
      *&v88 = v17;
      *(&v88 + 1) = v11;
      LOBYTE(v89) = v27;
      *(&v89 + 1) = v28;
      *v90 = v29;
      *&v90[8] = *(v2 + 56);
      v90[24] = v30;
      *&v90[32] = v31;
      v90[40] = v32;
      outlined init with copy of Parser(&v87, &v82);
      v33 = String.subscript.getter();
      if (!((v33 ^ v34) >> 14))
      {

        result = outlined destroy of Parser(&v87);
        goto LABEL_23;
      }

      v80 = Substring.subscript.getter();
      v81 = v35;

      outlined destroy of Parser(&v87);
      String.subscript.getter();
      v36 = Substring.index(_:offsetBy:limitedBy:)();
      v38 = v37;

      if (v38)
      {
        LOBYTE(v82) = 0;
        *(&v82 + 1) = 0xD000000000000022;
        *&v83 = 0x80000001C0C86FA0;
        *(&v83 + 1) = v17;
        *v84 = v17;
        memset(&v84[8], 0, 32);
        v84[40] = -1;
        if (v32)
        {
          outlined destroy of Diagnostic(&v82);
        }

        else
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v31 + 2) + 1, 1, v31);
          }

          v40 = *(v31 + 2);
          v39 = *(v31 + 3);
          if (v40 >= v39 >> 1)
          {
            v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v31);
          }

          *(v31 + 2) = v40 + 1;
          v41 = &v31[80 * v40];
          *(v41 + 2) = v82;
          v42 = v83;
          v43 = *v84;
          v44 = *&v84[16];
          *(v41 + 89) = *&v84[25];
          *(v41 + 4) = v43;
          *(v41 + 5) = v44;
          *(v41 + 3) = v42;
          *(v2 + 10) = v31;
        }

        String.subscript.getter();
        v45 = Substring.distance(from:to:)();

        if (v45 < 1)
        {
          goto LABEL_7;
        }

        String.subscript.getter();
        v36 = Substring.index(_:offsetBy:limitedBy:)();
        v47 = v46;

        if (v47)
        {
          goto LABEL_7;
        }

        if (v11 >> 14 < v36 >> 14)
        {
          goto LABEL_54;
        }
      }

      else if (v11 >> 14 < v36 >> 14)
      {
        __break(1u);
        goto LABEL_53;
      }

      *(v2 + 2) = v36;
      *(v2 + 3) = v11;
      v17 = v36;
LABEL_7:
      MEMORY[0x1C68E0BE0](v80, v81);

      v11 = *(v2 + 3);
      v18 = String.subscript.getter();
      v20 = v19;

      v21 = (v18 ^ v20) >> 14;
      v12 = v79;
      if (!v21)
      {
        goto LABEL_23;
      }
    }
  }

  v17 = v12;
LABEL_23:
  if (v17 >> 14 < v12 >> 14)
  {
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v48 = v85;
  v49 = v86;
  if (specialized Parser.tryEat<A>(sequence:)(15997, 0xE200000000000000))
  {
    v89 = v93;
    *v90 = v94;
    *&v90[16] = v95;
    v87 = v91;
    v88 = v92;
    *&v90[32] = v78;
    v90[40] = v76;
    result = outlined destroy of Parser(&v87);
    v50 = *(v2 + 2);
    a1 = v77;
    if (v50 >> 14 >= v75 >> 14)
    {
      if (v49)
      {
        *v77 = v48;
        *(v77 + 1) = v49;
        *(v77 + 2) = v75;
        *(v77 + 3) = v50;
        return result;
      }

      goto LABEL_51;
    }

    goto LABEL_55;
  }

  a1 = v77;
  v8 = v76;
LABEL_29:
  v51 = *&v99[16];
  v52 = v99[24];
  v53 = *(v2 + 10);
  v54 = v2[3];
  v89 = v2[2];
  *v90 = v54;
  *&v90[16] = v2[4];
  *&v90[25] = *(v2 + 73);
  v55 = v2[1];
  v87 = *v2;
  v88 = v55;

  result = outlined destroy of Parser(&v87);
  if (v52 == 1)
  {

    v56 = v78;
LABEL_50:
    v73 = v94;
    v2[2] = v93;
    v2[3] = v73;
    v2[4] = v95;
    v74 = v92;
    *v2 = v91;
    v2[1] = v74;
    *(v2 + 10) = v56;
    *(v2 + 88) = v8;
LABEL_51:
    *a1 = 0u;
    a1[1] = 0u;
    return result;
  }

  v57 = *(v51 + 2);
  v58 = *(v53 + 16);
  if (v58 >= v57)
  {
    v59 = *(v51 + 2);
  }

  else
  {
    v59 = *(v53 + 16);
  }

  if (v57)
  {
    v60 = v59;
  }

  else
  {
    v60 = 0;
  }

  if (v60 == v58)
  {
    result = swift_unknownObjectRelease();
    v56 = v78;
    goto LABEL_50;
  }

  if (v60 < v58)
  {
    v61 = a1;

    v62 = ~v60 + v58;
    v63 = 80 * v60 + 32;
    v56 = v78;
    while (1)
    {
      v82 = *(v53 + v63);
      v64 = *(v53 + v63 + 16);
      v65 = *(v53 + v63 + 32);
      v66 = *(v53 + v63 + 48);
      *&v84[25] = *(v53 + v63 + 57);
      *v84 = v65;
      *&v84[16] = v66;
      v83 = v64;
      if (!v82)
      {
        outlined init with copy of Diagnostic(&v82, &v85);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v51 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v51 + 2) + 1, 1, v51);
        }

        v68 = *(v51 + 2);
        v67 = *(v51 + 3);
        if (v68 >= v67 >> 1)
        {
          v51 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v67 > 1), v68 + 1, 1, v51);
        }

        *(v51 + 2) = v68 + 1;
        v69 = &v51[80 * v68];
        *(v69 + 2) = v82;
        v70 = v83;
        v71 = *v84;
        v72 = *&v84[16];
        *(v69 + 89) = *&v84[25];
        *(v69 + 4) = v71;
        *(v69 + 5) = v72;
        *(v69 + 3) = v70;
        v56 = v51;
      }

      if (!v62)
      {
        break;
      }

      --v62;
      v63 += 80;
    }

    swift_unknownObjectRelease();

    a1 = v61;
    goto LABEL_50;
  }

LABEL_56:
  __break(1u);
  return result;
}

void *Parser.lexQuote()@<X0>(void *(*a1)(uint64_t *__return_ptr, uint64_t)@<X0>, void *a2@<X8>)
{
  v4 = *(v2 + 16);
  result = a1(&v8, v2);
  v6 = v9;
  if (v9)
  {
    v7 = *(v2 + 16);
    if (v7 >> 14 < v4 >> 14)
    {
      __break(1u);
    }

    else
    {
      *a2 = v8;
      a2[1] = v6;
      a2[2] = v4;
      a2[3] = v7;
    }
  }

  else
  {
    *a2 = 0u;
    *(a2 + 1) = 0u;
  }

  return result;
}

uint64_t closure #1 in Parser.lexComment()@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = result;
  if ((*(result + 32) & 1) == 0)
  {
    result = specialized Parser.tryEat<A>(sequence:)(2309928, 0xE300000000000000);
    if (result)
    {
      v4 = v2;
      v5 = 41;
      v6 = 0xE100000000000000;
LABEL_7:
      result = specialized Parser.lexUntil(_:)(v4, v5, v6, &v41);
      v8 = *(&v41 + 1);
      *a2 = v41;
      a2[1] = v8;
      return result;
    }
  }

  v7 = *(v2 + 64);
  if ((v7 & 8) != 0)
  {
    result = specialized Parser.tryEat<A>(sequence:)(10799, 0xE200000000000000);
    if (result)
    {
      v4 = v2;
      v5 = 12074;
      v6 = 0xE200000000000000;
      goto LABEL_7;
    }

    v7 = *(v2 + 64);
  }

  if ((v7 & 2) == 0 || (v9._countAndFlagsBits = 35, v9._object = 0xE100000000000000, result = Parser.tryEat(_:)(v9), (result & 1) == 0))
  {
    *a2 = 0;
    a2[1] = 0;
    return result;
  }

  v35 = a2;
  v10 = *(v2 + 16);
  v46 = 0;
  v47 = 0xE000000000000000;
  result = closure #1 in closure #1 in Parser.lexComment()(v2);
  v36 = v10;
  if ((result & 1) == 0)
  {
    v11 = v10;
    do
    {
      v12 = *(v2 + 16);
      v41 = *v2;
      v42 = v12;
      v13 = *(v2 + 48);
      v43 = *(v2 + 32);
      v44 = v13;
      *v45 = *(v2 + 64);
      *&v45[9] = *(v2 + 73);
      v14 = *(&v42 + 1);
      v10 = v42;
      outlined init with copy of Parser(&v41, &v38);
      v15 = String.subscript.getter();
      if (!((v15 ^ v16) >> 14))
      {

        result = outlined destroy of Parser(&v41);
        v10 = v11;
        break;
      }

      v17 = Substring.subscript.getter();
      v19 = v18;

      outlined destroy of Parser(&v41);
      String.subscript.getter();
      v20 = Substring.index(_:offsetBy:limitedBy:)();
      v22 = v21;

      if (v22)
      {
        v23 = *&v45[16];
        v24 = v45[24];
        strcpy(v37, "UNREACHABLE: ");
        HIWORD(v37[1]) = -4864;
        MEMORY[0x1C68E0BF0](0xD000000000000015, 0x80000001C0C86F20);
        LOBYTE(v38) = 0;
        *(&v38 + 1) = v37[0];
        *&v39 = v37[1];
        *(&v39 + 1) = v10;
        *v40 = v10;
        memset(&v40[8], 0, 32);
        v40[40] = -1;
        if (v24)
        {
          outlined destroy of Diagnostic(&v38);
        }

        else
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v23 + 2) + 1, 1, v23);
          }

          v26 = *(v23 + 2);
          v25 = *(v23 + 3);
          if (v26 >= v25 >> 1)
          {
            v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v23);
          }

          *(v23 + 2) = v26 + 1;
          v27 = &v23[80 * v26];
          *(v27 + 2) = v38;
          v28 = v39;
          v29 = *v40;
          v30 = *&v40[16];
          *(v27 + 89) = *&v40[25];
          *(v27 + 4) = v29;
          *(v27 + 5) = v30;
          *(v27 + 3) = v28;
          *(v2 + 80) = v23;
        }

        String.subscript.getter();
        v31 = Substring.distance(from:to:)();

        if (v31 < 1)
        {
          goto LABEL_15;
        }

        String.subscript.getter();
        v20 = Substring.index(_:offsetBy:limitedBy:)();
        v33 = v32;

        if (v33)
        {
          goto LABEL_15;
        }

        if (v14 >> 14 < v20 >> 14)
        {
          goto LABEL_34;
        }
      }

      else if (v14 >> 14 < v20 >> 14)
      {
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        return result;
      }

      *(v2 + 16) = v20;
      *(v2 + 24) = v14;
      v10 = v20;
LABEL_15:
      MEMORY[0x1C68E0BE0](v17, v19);

      result = closure #1 in closure #1 in Parser.lexComment()(v2);
      v11 = v10;
    }

    while ((result & 1) == 0);
  }

  if (v10 >> 14 < v36 >> 14)
  {
    goto LABEL_35;
  }

  v34 = v47;
  *v35 = v46;
  v35[1] = v34;
  return result;
}