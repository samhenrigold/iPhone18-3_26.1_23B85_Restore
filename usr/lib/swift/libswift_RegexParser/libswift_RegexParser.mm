uint64_t AST.root.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
  return result;
}

uint64_t AST.globalOptions.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 8) = v2;
  return result;
}

uint64_t AST.diags.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
}

uint64_t AST.diags.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);

  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  return result;
}

uint64_t AST.init(_:globalOptions:diags:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a2;
  v6 = *a3;
  v7 = *(a3 + 8);
  *a4 = *a1;

  *(a4 + 8) = v5;
  *(a4 + 16) = v6;
  *(a4 + 24) = v7;
  return result;
}

uint64_t static Diagnostics.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ12_RegexParser10DiagnosticV_Tt1g5(*a1, *a2) & ~(v2 ^ v3) & 1;
}

void AST.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  AST.Node.hash(into:)(a1);
  if (v3)
  {
    Hasher._combine(_:)(1u);
    specialized Array<A>.hash(into:)(a1, v3);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  specialized Array<A>.hash(into:)(a1, v4);
  Hasher._combine(_:)(v5);
}

Swift::Int AST.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  Hasher.init(_seed:)();
  AST.Node.hash(into:)(v5);
  if (v1)
  {
    Hasher._combine(_:)(1u);
    specialized Array<A>.hash(into:)(v5, v1);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  specialized Array<A>.hash(into:)(v5, v2);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance AST(uint64_t a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  AST.Node.hash(into:)(a1);
  if (v3)
  {
    Hasher._combine(_:)(1u);
    specialized Array<A>.hash(into:)(a1, v3);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  specialized Array<A>.hash(into:)(a1, v4);
  Hasher._combine(_:)(v5);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AST(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  Hasher.init(_seed:)();
  AST.Node.hash(into:)(v6);
  if (v2)
  {
    Hasher._combine(_:)(1u);
    specialized Array<A>.hash(into:)(v6, v2);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  specialized Array<A>.hash(into:)(v6, v3);
  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

uint64_t AST.Node.hasCapture.getter()
{
  v1 = *v0;
  if (*v0 >> 60 == 2)
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFFFLL) + 0x60);
    if (v2 < 2)
    {
      return 1;
    }

    if (v2 == 3)
    {
      v3 = vorrq_s8(vorrq_s8(*((v1 & 0xFFFFFFFFFFFFFFFLL) + 0x20), *((v1 & 0xFFFFFFFFFFFFFFFLL) + 0x40)), vorrq_s8(*((v1 & 0xFFFFFFFFFFFFFFFLL) + 0x30), *((v1 & 0xFFFFFFFFFFFFFFFLL) + 0x50)));
      if (!(*&vorr_s8(*v3.i8, *&vextq_s8(v3, v3, 8uLL)) | *((v1 & 0xFFFFFFFFFFFFFFFLL) + 0x18) | *((v1 & 0xFFFFFFFFFFFFFFFLL) + 0x10)))
      {
        return 1;
      }
    }
  }

  v11[5] = *v0;
  AST.Node._associatedValue.getter(v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser8_ASTNode_pMd, &_s12_RegexParser8_ASTNode_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser10_ASTParent_pMd, &_s12_RegexParser10_ASTParent_pMR);
  if (swift_dynamicCast())
  {
    v4 = *(&v13 + 1);
    v5 = v14;
    __swift_project_boxed_opaque_existential_1Tm(&v12, *(&v13 + 1));
    v6 = (*(v5 + 16))(v4, v5);
    result = __swift_destroy_boxed_opaque_existential_1Tm(&v12);
    v8 = 0;
    v9 = *(v6 + 16);
    while (1)
    {
      if (v9 == v8)
      {

        return 0;
      }

      if (v8 >= *(v6 + 16))
      {
        break;
      }

      v10 = v8 + 1;
      *&v12 = *(v6 + 8 * v8 + 32);
      result = AST.Node.hasCapture.getter();
      v8 = v10;
      if (result)
      {

        return 1;
      }
    }

    __break(1u);
  }

  else
  {
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    outlined destroy of _ASTParent?(&v12, &_s12_RegexParser10_ASTParent_pSgMd, &_s12_RegexParser10_ASTParent_pSgMR);
    return 0;
  }

  return result;
}

BOOL AST.isInvalid.getter()
{
  v1 = *(v0 + 16);
  v2 = (v1 + 32);
  v3 = *(v1 + 16) + 1;
  do
  {
    if (!--v3)
    {
      break;
    }

    v4 = *v2;
    v2 += 80;
  }

  while (v4 > 1);
  return v3 != 0;
}

BOOL Diagnostics.hasAnyError.getter()
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

  while (v3 > 1);
  return v2 != 0;
}

uint64_t AST.ensureValid()@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = *(v1 + 24);
  v6 = *(v4 + 16);
  if (v6)
  {
    v7 = (v4 + 32);
    while (1)
    {
      v25 = *v7;
      v8 = v7[1];
      v9 = v7[2];
      v10 = v7[3];
      *(v28 + 9) = *(v7 + 57);
      v27 = v9;
      v28[0] = v10;
      v26 = v8;
      if (v25 != 2)
      {
        break;
      }

      v7 += 5;
      if (!--v6)
      {
        goto LABEL_5;
      }
    }

    v13 = *(&v26 + 1);
    v12 = v27;
    v14 = v7[3];
    v23 = v7[2];
    v24[0] = v14;
    *(v24 + 9) = *(v7 + 57);
    v15 = v7[1];
    v21 = *v7;
    v22 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser6SourceV12LocatedErrorVy_AA11DiagnosticsV08throwAnyE0yyKF0E10DiagnosticL_VGMd, &_s12_RegexParser6SourceV12LocatedErrorVy_AA11DiagnosticsV08throwAnyE0yyKF0E10DiagnosticL_VGMR);
    lazy protocol witness table accessor for type Source.LocatedError<ErrorDiagnostic #1 in Diagnostics.throwAnyError()> and conformance Source.LocatedError<A>(&lazy protocol witness table cache variable for type Source.LocatedError<ErrorDiagnostic #1 in Diagnostics.throwAnyError()> and conformance Source.LocatedError<A>, &_s12_RegexParser6SourceV12LocatedErrorVy_AA11DiagnosticsV08throwAnyE0yyKF0E10DiagnosticL_VGMd, &_s12_RegexParser6SourceV12LocatedErrorVy_AA11DiagnosticsV08throwAnyE0yyKF0E10DiagnosticL_VGMR, &protocol conformance descriptor for Source.LocatedError<A>);
    swift_allocError();
    *v16 = v21;
    v18 = v23;
    v17 = v24[0];
    v19 = v22;
    *(v16 + 57) = *(v24 + 9);
    *(v16 + 32) = v18;
    *(v16 + 48) = v17;
    *(v16 + 16) = v19;
    *(v16 + 80) = v13;
    *(v16 + 88) = v12;
    swift_willThrow();
    return outlined init with copy of Diagnostic(&v25, &v20);
  }

  else
  {
LABEL_5:
    *a1 = v3;
    *(a1 + 8) = v2;
    *(a1 + 16) = v4;
    *(a1 + 24) = v5;
  }
}

uint64_t static AST.Alternation.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ12_RegexParser3ASTV4NodeO_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ12_RegexParser6SourceV8LocationV_Tt1g5(v2, v3);
}

uint64_t static AST.Quote.== infix(_:_:)(int8x16_t *a1, int8x16_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = a1->i64[0] == a2->i64[0] && a1->i64[1] == a2->i64[1];
  if (v4 || (v9 = a2[1], v10 = a1[1], v5 = _stringCompareWithSmolCheck(_:_:expecting:)(), v3 = v9, v2 = v10, v6 = 0, (v5 & 1) != 0))
  {
    v7 = vmovn_s64(vcgtq_u64(vdupq_n_s64(0x4000uLL), veorq_s8(v3, v2)));
    v6 = v7.i8[0] & v7.i8[4];
  }

  return v6 & 1;
}

BOOL static AST.Atom.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (specialized static AST.Atom.Kind.== infix(_:_:)(a1, a2))
  {
    v4 = *(type metadata accessor for AST.Atom(0) + 20);
    v5 = a1 + v4;
    v6 = *(a1 + v4);
    v7 = (a2 + v4);
    if (!((*v7 ^ v6) >> 14) && (*(v5 + 8) ^ v7[1]) < 0x4000)
    {
      return 1;
    }
  }

  return result;
}

uint64_t AST.Node.hash(into:)(uint64_t a1)
{
  v3 = type metadata accessor for AST.CustomCharacterClass.Member(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AST.Atom(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v1;
  v12 = *v1 >> 60;
  if (v12 <= 5)
  {
    if (v12 <= 2)
    {
      if (!v12)
      {
        v39 = *(v11 + 16);
        v40 = *(v11 + 24);
        MEMORY[0x1C68E1190](0);
        MEMORY[0x1C68E1190](*(v39 + 16));
        v41 = *(v39 + 16);
        if (v41)
        {
          v42 = (v39 + 32);

          do
          {
            v43 = *v42++;
            *&v74 = v43;

            AST.Node.hash(into:)(a1);

            --v41;
          }

          while (v41);
        }

        else
        {
        }

        specialized Array<A>.hash(into:)(a1, v40);

        goto LABEL_41;
      }

      v13 = v11 & 0xFFFFFFFFFFFFFFFLL;
      if (v12 == 1)
      {
        v14 = *(v13 + 16);
        v15 = *(v13 + 24);
        v16 = *(v13 + 32);
        MEMORY[0x1C68E1190](1);
        MEMORY[0x1C68E1190](*(v14 + 16));
        v17 = *(v14 + 16);
        if (v17)
        {
          v18 = (v14 + 32);

          do
          {
            v19 = *v18++;
            *&v74 = v19;

            AST.Node.hash(into:)(a1);

            --v17;
          }

          while (v17);
        }

        else
        {
        }

        MEMORY[0x1C68E11C0](v15 >> 14);
        MEMORY[0x1C68E11C0](v16 >> 14);
        goto LABEL_41;
      }

      v59 = *(v13 + 64);
      v76 = *(v13 + 48);
      v77 = v59;
      v78 = *(v13 + 80);
      v60 = *(v13 + 104);
      *&v79 = *(v13 + 96);
      v61 = *(v13 + 32);
      v74 = *(v13 + 16);
      v75 = v61;
      v62 = *(v13 + 112);
      v63 = *(v13 + 120);
      v64 = *(v13 + 128);
      v65 = *(v13 + 136);
      MEMORY[0x1C68E1190](2);
      *(&v79 + 1) = v60;
      *&v80 = v62;
      AST.Group.Kind.hash(into:)(a1);
      MEMORY[0x1C68E11C0](v60 >> 14);
      MEMORY[0x1C68E11C0](v62 >> 14);
      *&v74 = v63;
      AST.Node.hash(into:)(a1);
      MEMORY[0x1C68E11C0](v64 >> 14);
      v66 = v65 >> 14;
      return MEMORY[0x1C68E11C0](v66);
    }

    v24 = v11 & 0xFFFFFFFFFFFFFFFLL;
    if (v12 == 3)
    {
      v45 = *(v24 + 192);
      v84 = *(v24 + 176);
      v85 = v45;
      v86 = *(v24 + 208);
      v46 = *(v24 + 128);
      v80 = *(v24 + 112);
      v81 = v46;
      v47 = *(v24 + 160);
      v82 = *(v24 + 144);
      v83 = v47;
      v48 = *(v24 + 64);
      v76 = *(v24 + 48);
      v77 = v48;
      v49 = *(v24 + 96);
      v78 = *(v24 + 80);
      v79 = v49;
      v50 = *(v24 + 16);
      v75 = *(v24 + 32);
      v74 = v50;
      MEMORY[0x1C68E1190](3);
      return AST.Conditional.hash(into:)(a1);
    }

    if (v12 == 4)
    {
      v25 = *(v24 + 128);
      v80 = *(v24 + 112);
      v81 = v25;
      *&v82 = *(v24 + 144);
      v26 = *(v24 + 64);
      v76 = *(v24 + 48);
      v77 = v26;
      v27 = *(v24 + 96);
      v78 = *(v24 + 80);
      v79 = v27;
      v28 = *(v24 + 16);
      v75 = *(v24 + 32);
      v74 = v28;
      MEMORY[0x1C68E1190](4);
      return AST.Quantification.hash(into:)(a1);
    }

    v21 = *(v24 + 32);
    v22 = *(v24 + 40);
    v23 = 5;
    goto LABEL_34;
  }

  if (v12 <= 8)
  {
    if (v12 == 6)
    {
      v44 = v11 & 0xFFFFFFFFFFFFFFFLL;
      v21 = *(v44 + 32);
      v22 = *(v44 + 40);
      v23 = 6;
    }

    else
    {
      if (v12 != 7)
      {
        v67 = v8;
        v68 = swift_projectBox();
        outlined init with copy of AST.CustomCharacterClass.Member(v68, v10, type metadata accessor for AST.Atom);
        MEMORY[0x1C68E1190](8);
        AST.Atom.Kind.hash(into:)(a1);
        v69 = &v10[*(v67 + 20)];
        v70 = *v69;
        v71 = *(v69 + 1);
        outlined destroy of AST.CustomCharacterClass.Member(v10, type metadata accessor for AST.Atom);
        MEMORY[0x1C68E11C0](v70 >> 14);
        v66 = v71 >> 14;
        return MEMORY[0x1C68E11C0](v66);
      }

      v20 = v11 & 0xFFFFFFFFFFFFFFFLL;
      v21 = *(v20 + 32);
      v22 = *(v20 + 40);
      v23 = 7;
    }

LABEL_34:
    MEMORY[0x1C68E1190](v23);

    String.hash(into:)();
    MEMORY[0x1C68E11C0](v21 >> 14);
    MEMORY[0x1C68E11C0](v22 >> 14);
LABEL_41:
  }

  v30 = (v11 & 0xFFFFFFFFFFFFFFFLL);
  if (v12 == 9)
  {
    v51 = v30[3];
    v52 = v30[4];
    v53 = v30[5];
    v54 = v30[6];
    v55 = v30[7];
    MEMORY[0x1C68E1190](9);

    String.hash(into:)();

    MEMORY[0x1C68E11C0](v51 >> 14);
    MEMORY[0x1C68E11C0](v52 >> 14);
    MEMORY[0x1C68E1190](*(v53 + 16));
    v56 = *(v53 + 16);
    if (v56)
    {
      v57 = v53 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v58 = *(v4 + 72);
      do
      {
        outlined init with copy of AST.CustomCharacterClass.Member(v57, v6, type metadata accessor for AST.CustomCharacterClass.Member);
        AST.CustomCharacterClass.Member.hash(into:)(a1);
        outlined destroy of AST.CustomCharacterClass.Member(v6, type metadata accessor for AST.CustomCharacterClass.Member);
        v57 += v58;
        --v56;
      }

      while (v56);
    }

    MEMORY[0x1C68E11C0](v54 >> 14);
    MEMORY[0x1C68E11C0](v55 >> 14);
  }

  else
  {
    if (v12 != 10)
    {
      v72 = v30[2];
      v73 = v30[3];
      MEMORY[0x1C68E1190](11);
      MEMORY[0x1C68E11C0](v72 >> 14);
      v66 = v73 >> 14;
      return MEMORY[0x1C68E11C0](v66);
    }

    v31 = v30[2];
    v32 = v30[3];
    v33 = v30[4];
    v34 = v30[5];
    v35 = v30[6];
    v36 = v30[7];
    v37 = v30[8];
    v38 = v30[9];
    MEMORY[0x1C68E1190](10);
    MEMORY[0x1C68E11C0](v31 >> 14);
    MEMORY[0x1C68E11C0](v32 >> 14);
    *&v74 = v33;
    *(&v74 + 1) = v34;
    *&v75 = v35;
    *(&v75 + 1) = v36;
    outlined copy of AST.AbsentFunction.Kind(v33, v34, v35, v36);
    AST.AbsentFunction.Kind.hash(into:)(a1);
    MEMORY[0x1C68E11C0](v37 >> 14);
    MEMORY[0x1C68E11C0](v38 >> 14);

    return outlined consume of AST.AbsentFunction.Kind(v33, v34, v35, v36);
  }
}

Swift::Int AST.Node.hashValue.getter()
{
  v2[9] = *v0;
  Hasher.init(_seed:)();
  AST.Node.hash(into:)(v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AST.Node()
{
  v2[9] = *v0;
  Hasher.init(_seed:)();
  AST.Node.hash(into:)(v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AST.Node(uint64_t a1)
{
  v3[9] = *v1;
  Hasher.init(_seed:)();
  AST.Node.hash(into:)(v3);
  return Hasher._finalize()();
}

uint64_t AST.Node.children.getter()
{
  v5[5] = *v0;
  AST.Node._associatedValue.getter(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser8_ASTNode_pMd, &_s12_RegexParser8_ASTNode_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser10_ASTParent_pMd, &_s12_RegexParser10_ASTParent_pMR);
  if (swift_dynamicCast())
  {
    v1 = *(&v7 + 1);
    v2 = v8;
    __swift_project_boxed_opaque_existential_1Tm(&v6, *(&v7 + 1));
    v3 = (*(v2 + 16))(v1, v2);
    __swift_destroy_boxed_opaque_existential_1Tm(&v6);
    return v3;
  }

  else
  {
    v8 = 0;
    v6 = 0u;
    v7 = 0u;
    outlined destroy of _ASTParent?(&v6, &_s12_RegexParser10_ASTParent_pSgMd, &_s12_RegexParser10_ASTParent_pSgMR);
    return 0;
  }
}

unint64_t AST.Node._associatedValue.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *v1 >> 60;
  if (v4 <= 5)
  {
    if (v4 <= 2)
    {
      if (v4)
      {
        if (v4 != 1)
        {
          v42 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x60);
          v59 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
          v60 = v42;
          v43 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x80);
          v61 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x70);
          v62 = v43;
          v44 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          v55 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v56 = v44;
          v45 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
          v57 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
          v58 = v45;
          a1[3] = &type metadata for AST.Group;
          a1[4] = lazy protocol witness table accessor for type AST.Group and conformance AST.Group();
          v46 = swift_allocObject();
          *a1 = v46;
          memmove((v46 + 16), ((v3 & 0xFFFFFFFFFFFFFFFLL) + 16), 0x80uLL);
          return outlined init with copy of AST.Group(&v55, v54);
        }

        v5 = v3 & 0xFFFFFFFFFFFFFFFLL;
        v6 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v7 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v8 = *(v5 + 32);
        a1[3] = &type metadata for AST.Concatenation;
        a1[4] = lazy protocol witness table accessor for type AST.Concatenation and conformance AST.Concatenation();
        *a1 = v6;
        a1[1] = v7;
        a1[2] = v8;
      }

      else
      {
        v25 = *(v3 + 16);
        v26 = *(v3 + 24);
        a1[3] = &type metadata for AST.Alternation;
        a1[4] = lazy protocol witness table accessor for type AST.Alternation and conformance AST.Alternation();
        *a1 = v25;
        a1[1] = v26;
      }

      goto LABEL_24;
    }

    if (v4 == 3)
    {
      v28 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0xB0);
      v64 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0xA0);
      v65 = v28;
      v66 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0xC0);
      v67 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0xD0);
      v29 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x70);
      v60 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x60);
      v61 = v29;
      v30 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x90);
      v62 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x80);
      v63 = v30;
      v31 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      v56 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v57 = v31;
      v32 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
      v58 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
      v59 = v32;
      v55 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      a1[3] = &type metadata for AST.Conditional;
      a1[4] = lazy protocol witness table accessor for type AST.Conditional and conformance AST.Conditional();
      v33 = swift_allocObject();
      *a1 = v33;
      memmove((v33 + 16), ((v3 & 0xFFFFFFFFFFFFFFFLL) + 16), 0xC8uLL);
      return outlined init with copy of AST.Conditional(&v55, v54);
    }

    if (v4 == 4)
    {
      v14 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x70);
      v60 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x60);
      v61 = v14;
      v62 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x80);
      *&v63 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x90);
      v15 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      v56 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v57 = v15;
      v16 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
      v58 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
      v59 = v16;
      v55 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      a1[3] = &type metadata for AST.Quantification;
      a1[4] = lazy protocol witness table accessor for type AST.Quantification and conformance AST.Quantification();
      v17 = swift_allocObject();
      *a1 = v17;
      memmove((v17 + 16), ((v3 & 0xFFFFFFFFFFFFFFFLL) + 16), 0x88uLL);
      return outlined init with copy of AST.Quantification(&v55, v54);
    }

    v50 = (v3 & 0xFFFFFFFFFFFFFFFLL);
    v11 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v10 = v50[3];
    v12 = v50[4];
    v13 = v50[5];
    a1[3] = &type metadata for AST.Quote;
    a1[4] = lazy protocol witness table accessor for type AST.Quote and conformance AST.Quote();
    goto LABEL_23;
  }

  if (v4 <= 8)
  {
    if (v4 == 6)
    {
      v27 = (v3 & 0xFFFFFFFFFFFFFFFLL);
      v11 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v10 = v27[3];
      v12 = v27[4];
      v13 = v27[5];
      a1[3] = &type metadata for AST.Trivia;
      a1[4] = lazy protocol witness table accessor for type AST.Trivia and conformance AST.Trivia();
    }

    else
    {
      if (v4 != 7)
      {
        v47 = type metadata accessor for AST.Atom(0);
        v48 = swift_projectBox();
        a1[3] = v47;
        a1[4] = lazy protocol witness table accessor for type AST.Atom and conformance AST.Atom(&lazy protocol witness table cache variable for type AST.Atom and conformance AST.Atom, type metadata accessor for AST.Atom, &protocol conformance descriptor for AST.Atom);
        boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a1);
        return outlined init with copy of AST.CustomCharacterClass.Member(v48, boxed_opaque_existential_1Tm, type metadata accessor for AST.Atom);
      }

      v9 = (v3 & 0xFFFFFFFFFFFFFFFLL);
      v11 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v10 = v9[3];
      v12 = v9[4];
      v13 = v9[5];
      a1[3] = &type metadata for AST.Interpolation;
      a1[4] = lazy protocol witness table accessor for type AST.Interpolation and conformance AST.Interpolation();
    }

LABEL_23:
    v51 = swift_allocObject();
    *a1 = v51;
    v51[2] = v11;
    v51[3] = v10;
    v51[4] = v12;
    v51[5] = v13;
    goto LABEL_24;
  }

  if (v4 != 9)
  {
    if (v4 == 10)
    {
      v19 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v55 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v56 = v19;
      v20 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
      v57 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      v58 = v20;
      a1[3] = &type metadata for AST.AbsentFunction;
      a1[4] = lazy protocol witness table accessor for type AST.AbsentFunction and conformance AST.AbsentFunction();
      v21 = swift_allocObject();
      *a1 = v21;
      v23 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      v22 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
      v24 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v21[1] = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v21[2] = v24;
      v21[3] = v23;
      v21[4] = v22;
      return outlined init with copy of AST.AbsentFunction(&v55, v54);
    }

    else
    {
      v52 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v53 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      a1[3] = &type metadata for AST.Empty;
      result = lazy protocol witness table accessor for type AST.Empty and conformance AST.Empty();
      a1[4] = result;
      *a1 = v52;
      a1[1] = v53;
    }

    return result;
  }

  v34 = (v3 & 0xFFFFFFFFFFFFFFFLL);
  v35 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  v36 = v34[3];
  v37 = v34[4];
  v38 = v34[5];
  v39 = v34[6];
  v40 = v34[7];
  a1[3] = &type metadata for AST.CustomCharacterClass;
  a1[4] = lazy protocol witness table accessor for type AST.CustomCharacterClass and conformance AST.CustomCharacterClass();
  v41 = swift_allocObject();
  *a1 = v41;
  *(v41 + 16) = v35;
  *(v41 + 24) = v36;
  *(v41 + 32) = v37;
  *(v41 + 40) = v38;
  *(v41 + 48) = v39;
  *(v41 + 56) = v40;
LABEL_24:
}

uint64_t AST.Node.as<A>(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v7[5] = *v2;
  AST.Node._associatedValue.getter(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser8_ASTNode_pMd, &_s12_RegexParser8_ASTNode_pMR);
  v5 = swift_dynamicCast();
  return (*(*(a1 - 8) + 56))(a2, v5 ^ 1u, 1, a1);
}

uint64_t AST.Node.location.getter()
{
  v7 = *v0;
  AST.Node._associatedValue.getter(v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1Tm(v4, v5);
  (*(v2 + 16))(v1, v2);
  return __swift_destroy_boxed_opaque_existential_1Tm(v4);
}

BOOL AST.Group.Kind.isCapturing.getter()
{
  v1 = v0[5].u8[0];
  result = 1;
  if (v1 >= 2)
  {
    if (v1 != 3)
    {
      return 0;
    }

    v3 = vorrq_s8(vorrq_s8(v0[1], v0[3]), vorrq_s8(v0[2], v0[4]));
    if (*&vorr_s8(*v3.i8, *&vextq_s8(v3, v3, 8uLL)) | v0->i64[1] | v0->i64[0])
    {
      return 0;
    }
  }

  return result;
}

uint64_t AST.Node.isQuantifiable.getter()
{
  v1 = type metadata accessor for AST.Atom.Kind(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AST.Atom(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v0 >> 60;
  if (v7 > 0xB)
  {
    goto LABEL_10;
  }

  LOBYTE(v8) = 1;
  if (((1 << v7) & 0x8F0) != 0)
  {
LABEL_11:
    LOBYTE(v8) = 0;
    return v8 & 1;
  }

  if (((1 << v7) & 0x608) == 0)
  {
    if (v7 == 8)
    {
      v9 = swift_projectBox();
      outlined init with copy of AST.CustomCharacterClass.Member(v9, v6, type metadata accessor for AST.Atom);
      outlined init with take of AST.Atom.Kind(v6, v3, type metadata accessor for AST.Atom.Kind);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 14)
      {
        if ((EnumCaseMultiPayload - 15) < 2)
        {
          goto LABEL_11;
        }
      }

      else
      {
        switch(EnumCaseMultiPayload)
        {
          case 4:
            v19 = *v3;
            if (v19 < 0x1D)
            {
              v8 = 0x101FFFFFu >> v19;
              return v8 & 1;
            }

            goto LABEL_11;
          case 12:
            v20 = *v3;

            LOBYTE(v8) = v20 == 0;
            return v8 & 1;
          case 13:
            outlined destroy of AST.CustomCharacterClass.Member(v3, type metadata accessor for AST.Atom.Kind);
            goto LABEL_11;
        }
      }

      outlined destroy of AST.CustomCharacterClass.Member(v3, type metadata accessor for AST.Atom.Kind);
      LOBYTE(v8) = 1;
      return v8 & 1;
    }

LABEL_10:
    if (v7 >= 2)
    {
      v12 = *((*v0 & 0xFFFFFFFFFFFFFFFLL) + 0x60);
      if (v12 < 3 || v12 == 3 && ((v13 = *((*v0 & 0xFFFFFFFFFFFFFFFLL) + 0x48), v14 = *((*v0 & 0xFFFFFFFFFFFFFFFLL) + 0x10), v15 = *((*v0 & 0xFFFFFFFFFFFFFFFLL) + 0x50) | *((*v0 & 0xFFFFFFFFFFFFFFFLL) + 0x58), v16 = *((*v0 & 0xFFFFFFFFFFFFFFFLL) + 0x40) | *((*v0 & 0xFFFFFFFFFFFFFFFLL) + 0x38) | *((*v0 & 0xFFFFFFFFFFFFFFFLL) + 0x30), v17 = *((*v0 & 0xFFFFFFFFFFFFFFFLL) + 0x28) | *((*v0 & 0xFFFFFFFFFFFFFFFLL) + 0x20) | *((*v0 & 0xFFFFFFFFFFFFFFFLL) + 0x18), !(v15 | v14 | v13 | v16 | v17)) || ((v14 & 0xFFFFFFFFFFFFFFFELL) != 0xA ? (v18 = (v14 - 1) > 2) : (v18 = 0), !v18 && !(v15 | v13 | v16 | v17))))
      {
        LOBYTE(v8) = 1;
        return v8 & 1;
      }
    }

    goto LABEL_11;
  }

  return v8 & 1;
}

uint64_t AST.Atom.isQuantifiable.getter()
{
  v1 = type metadata accessor for AST.Atom.Kind(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AST.CustomCharacterClass.Member(v0, v3, type metadata accessor for AST.Atom.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 14)
  {
    if ((EnumCaseMultiPayload - 15) < 2)
    {
      goto LABEL_7;
    }

    goto LABEL_11;
  }

  if (EnumCaseMultiPayload != 4)
  {
    if (EnumCaseMultiPayload == 12)
    {
      v7 = *v3;

      LOBYTE(v5) = v7 == 0;
      return v5 & 1;
    }

    if (EnumCaseMultiPayload == 13)
    {
      outlined destroy of AST.CustomCharacterClass.Member(v3, type metadata accessor for AST.Atom.Kind);
      goto LABEL_7;
    }

LABEL_11:
    outlined destroy of AST.CustomCharacterClass.Member(v3, type metadata accessor for AST.Atom.Kind);
    LOBYTE(v5) = 1;
    return v5 & 1;
  }

  v6 = *v3;
  if (v6 < 0x1D)
  {
    v5 = 0x101FFFFFu >> v6;
    return v5 & 1;
  }

LABEL_7:
  LOBYTE(v5) = 0;
  return v5 & 1;
}

_RegexParser::AST::Alternation __swiftcall AST.Alternation.init(_:pipes:)(Swift::OpaquePointer _, Swift::OpaquePointer pipes)
{
  v3 = *(_._rawValue + 2);
  if (v3 < 2)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (*(pipes._rawValue + 2) != v3 - 1)
  {
LABEL_5:
    __break(1u);
    goto LABEL_6;
  }

  v2->_rawValue = _._rawValue;
  v2[1]._rawValue = pipes._rawValue;
LABEL_6:
  result.pipes = pipes;
  result.children = _;
  return result;
}

uint64_t AST.Alternation.location.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  if (!v3)
  {
    __break(1u);
    goto LABEL_6;
  }

  v12 = *(v2 + 32);
  AST.Node._associatedValue.getter(v14);
  v5 = v15;
  v6 = v16;
  __swift_project_boxed_opaque_existential_1Tm(v14, v15);
  (*(v6 + 16))(&v17, v5, v6);
  result = __swift_destroy_boxed_opaque_existential_1Tm(v14);
  if (v3 > *(v2 + 16))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v8 = v17;
  AST.Node._associatedValue.getter(v14);
  v9 = v15;
  v10 = v16;
  __swift_project_boxed_opaque_existential_1Tm(v14, v15);
  (*(v10 + 16))(&v12, v9, v10);
  result = __swift_destroy_boxed_opaque_existential_1Tm(v14);
  v11 = v13;
  if (v13 >> 14 >= v8 >> 14)
  {
    *a1 = v8;
    a1[1] = v11;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

unint64_t specialized Collection.first.getter(unint64_t a1, unint64_t a2)
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
    _StringGuts.validateScalarIndex(_:)(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v5 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    }

    else
    {
      if ((a2 & 0x2000000000000000) == 0 && (a1 & 0x1000000000000000) == 0)
      {
        _StringObject.sharedUTF8.getter();
      }

      v5 = _decodeScalar(_:startingAt:)();
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 | ((v2 == 0) << 32);
}

uint64_t Source.Location.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ12_RegexParser3ASTV4AtomV6ScalarV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    v4 = (a2 + 40);
    v5 = vdupq_n_s64(0x4000uLL);
    while (v3[-1].i32[2] == v4[-1].i32[2])
    {
      v6 = vmovn_s64(vcgtq_u64(v5, veorq_s8(*v4, *v3)));
      if ((v6.i32[0] & v6.i32[1] & 1) == 0)
      {
        break;
      }

      v3 = (v3 + 24);
      v4 = (v4 + 24);
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ12_RegexParser3ASTV20GlobalMatchingOptionV_Tt1g5(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (a2 + 48);
  v4 = (result + 72);
  while (v2)
  {
    v6 = *(v4 - 1);
    v5 = *v4;
    v7 = *(v3 + 2);
    v8 = *(v3 + 3);
    v9 = *(v4 - 3);
    v14[0] = *(v4 - 5);
    v14[1] = v9;
    v10 = *v3;
    v13[0] = *(v3 - 1);
    v13[1] = v10;
    v11 = specialized static AST.GlobalMatchingOption.Kind.== infix(_:_:)(v14, v13) && (v7 ^ v6) < 0x4000;
    result = (v8 ^ v5) < 0x4000 && v11;
    v12 = result != 1 || v2-- == 1;
    v3 += 3;
    v4 += 6;
    if (v12)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ12_RegexParser3ASTV20CustomCharacterClassV6MemberO_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AST.CustomCharacterClass.Member(0) - 8;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        outlined init with copy of AST.CustomCharacterClass.Member(v13, v10, type metadata accessor for AST.CustomCharacterClass.Member);
        outlined init with copy of AST.CustomCharacterClass.Member(v14, v7, type metadata accessor for AST.CustomCharacterClass.Member);
        v16 = specialized static AST.CustomCharacterClass.Member.== infix(_:_:)(v10, v7);
        outlined destroy of AST.CustomCharacterClass.Member(v7, type metadata accessor for AST.CustomCharacterClass.Member);
        outlined destroy of AST.CustomCharacterClass.Member(v10, type metadata accessor for AST.CustomCharacterClass.Member);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ12_RegexParser3ASTV14MatchingOptionV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    v4 = (a2 + 40);
    v5 = vdupq_n_s64(0x4000uLL);
    while (v3[-1].u8[8] == v4[-1].u8[8])
    {
      v6 = vmovn_s64(vcgtq_u64(v5, veorq_s8(*v4, *v3)));
      if ((v6.i32[0] & v6.i32[1] & 1) == 0)
      {
        break;
      }

      v3 = (v3 + 24);
      v4 = (v4 + 24);
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ12_RegexParser3ASTV6TriviaV_Tt1g5Tm(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 56);
    v4 = (a1 + 56);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v8 = *(v3 - 1);
      v7 = *v3;
      if (*(v4 - 3) == *(v3 - 3) && *(v4 - 2) == *(v3 - 2))
      {
        if ((v8 ^ v6) >> 14)
        {
          return 0;
        }
      }

      else
      {
        v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
        result = 0;
        if ((v10 & 1) == 0 || (v8 ^ v6) >= 0x4000)
        {
          return result;
        }
      }

      if ((v7 ^ v5) >> 14)
      {
        return 0;
      }

      v3 += 4;
      v4 += 4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ12_RegexParser3ASTV4NodeO_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v7 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v5 = *v3++;
        v10 = v5;
        v6 = *v4++;
        v9 = v6;

        v7 = specialized static AST.Node.== infix(_:_:)(&v10, &v9);

        --v2;
      }

      while ((v7 & 1) != 0 && v2);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ12_RegexParser6SourceV8LocationV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); !((*(i - 1) ^ *(v3 - 1)) >> 14); i += 2)
    {
      v5 = *v3;
      v3 += 2;
      if ((*i ^ v5) >> 14)
      {
        break;
      }

      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ12_RegexParser16CaptureStructureO_Tt1g5(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    v13 = 0;
    return v13 & 1;
  }

  if (!v2 || result == a2)
  {
    v13 = 1;
    return v13 & 1;
  }

  v3 = (result + 56);
  v4 = (a2 + 56);
  while (1)
  {
    v5 = *(v3 - 3);
    v6 = *(v3 - 2);
    v7 = *(v3 - 1);
    v8 = *v3;
    v18[0] = v5;
    v18[1] = v6;
    v18[2] = v7;
    v19 = v8;
    if (!v2)
    {
      break;
    }

    v14 = v2;
    v10 = *(v4 - 2);
    v11 = *(v4 - 1);
    v16[0] = *(v4 - 3);
    v9 = v16[0];
    v16[1] = v10;
    v16[2] = v11;
    v17 = *v4;
    v12 = v17;
    outlined copy of CaptureStructure(v5, v6, v7, v8);
    outlined copy of CaptureStructure(v9, v10, v11, v12);
    v15 = static CaptureStructure.== infix(_:_:)(v18, v16);
    outlined consume of CaptureStructure(v9, v10, v11, v12);
    result = outlined consume of CaptureStructure(v5, v6, v7, v8);
    v13 = v15;
    if (v15)
    {
      v3 += 32;
      v4 += 32;
      v2 = v14 - 1;
      if (v14 != 1)
      {
        continue;
      }
    }

    return v13 & 1;
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ12_RegexParser10DiagnosticV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a2 + 56);
    for (i = (a1 + 56); *(i - 24) == *(v3 - 24); i += 10)
    {
      v6 = *i;
      v5 = i[1];
      v8 = i[2];
      v7 = i[3];
      v10 = i[4];
      v9 = i[5];
      v11 = *(i + 48);
      v13 = *v3;
      v12 = v3[1];
      v15 = v3[2];
      v14 = v3[3];
      v17 = v3[4];
      v16 = v3[5];
      v18 = *(v3 + 48);
      if (*(i - 2) == *(v3 - 2) && *(i - 1) == *(v3 - 1))
      {
        if ((v13 ^ v6) >> 14)
        {
          return 0;
        }
      }

      else
      {
        v31 = v3[5];
        v32 = v3[1];
        v34 = i[1];
        v35 = v3[2];
        v36 = v3[3];
        v37 = v3[4];
        v33 = *(v3 + 48);
        v19 = i[2];
        v20 = i[3];
        v21 = *(i + 48);
        v22 = i[4];
        v23 = i[5];
        v24 = _stringCompareWithSmolCheck(_:_:expecting:)();
        result = 0;
        if ((v24 & 1) == 0)
        {
          return result;
        }

        v9 = v23;
        v10 = v22;
        v11 = v21;
        v7 = v20;
        v8 = v19;
        v16 = v31;
        v12 = v32;
        v18 = v33;
        v14 = v36;
        v17 = v37;
        v5 = v34;
        v15 = v35;
        if ((v13 ^ v6) >= 0x4000)
        {
          return result;
        }
      }

      if ((v12 ^ v5) >> 14)
      {
        return 0;
      }

      if (v11 == 255)
      {
        if (v18 != 255)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v18 == 255)
        {
LABEL_20:
          v26 = v7;
          v27 = v10;
          v28 = v9;
          v29 = v14;
          v30 = v15;
          outlined copy of ParseError?(v8, v7, v10, v9, v11);
          outlined copy of ParseError?(v30, v29, v17, v16, v18);
          outlined consume of ParseError?(v8, v26, v27, v28, v11);
          outlined consume of ParseError?(v30, v29, v17, v16, v18);
          return 0;
        }

        v40.i64[0] = v15;
        v40.i64[1] = v14;
        v41 = v17;
        v42 = v16;
        v43 = v18;
        v38[0] = v8;
        v38[1] = v7;
        v38[2] = v10;
        v38[3] = v9;
        v39 = v11;
        if ((specialized static ParseError.== infix(_:_:)(v38, &v40) & 1) == 0)
        {
          return 0;
        }
      }

      v3 += 10;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ12_RegexParser11CaptureListV0D0V_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 64);
    v4 = (a1 + 64);
    v5 = vdupq_n_s64(0x4000uLL);
    v19 = v5;
    while (1)
    {
      v6 = *(v4 - 3);
      v7 = *(v4 - 2);
      v8 = *(v4 - 1);
      v9 = *v4;
      v10 = *(v3 - 3);
      v11 = *(v3 - 2);
      v12 = *(v3 - 1);
      v13 = *v3;
      if (!v6)
      {
        break;
      }

      if (!v10)
      {
        return 0;
      }

      if (*(v4 - 4) == *(v3 - 4) && v6 == v10)
      {
        goto LABEL_16;
      }

      v20 = *v3;
      v21 = *v4;
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
      result = 0;
      if ((v15 & 1) == 0)
      {
        return result;
      }

      v5 = v19;
      v13 = v20;
      v9 = v21;
      if (v8 != v12 || v7 != v11)
      {
        return result;
      }

LABEL_21:
      v18 = vmovn_s64(vcgtq_u64(v5, veorq_s8(v13, v9)));
      if ((v18.i32[0] & v18.i32[1] & 1) == 0)
      {
        return 0;
      }

      v4 = (v4 + 56);
      v3 = (v3 + 56);
      if (!--v2)
      {
        return 1;
      }
    }

    if (v10)
    {
      return 0;
    }

LABEL_16:
    if (v8 != v12 || v7 != v11)
    {
      return 0;
    }

    goto LABEL_21;
  }

  return 1;
}

uint64_t AST.Alternation.hash(into:)(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  MEMORY[0x1C68E1190](*(*v1 + 16));
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 32;
    do
    {
      v6 += 8;

      AST.Node.hash(into:)(a1);

      --v5;
    }

    while (v5);
  }

  return specialized Array<A>.hash(into:)(a1, v3);
}

Swift::Int AST.Alternation.hashValue.getter()
{
  v3 = *v0;
  Hasher.init(_seed:)();
  AST.Alternation.hash(into:)(v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AST.Alternation()
{
  v3 = *v0;
  Hasher.init(_seed:)();
  AST.Alternation.hash(into:)(v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AST.Alternation(uint64_t a1)
{
  v4 = *v1;
  Hasher.init(_seed:)();
  AST.Alternation.hash(into:)(v3);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AST.Alternation(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ12_RegexParser3ASTV4NodeO_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ12_RegexParser6SourceV8LocationV_Tt1g5(v2, v3);
}

uint64_t protocol witness for _ASTPrintable._dumpBase.getter in conformance AST.Alternation()
{
  strcpy(v2, "alternation<");
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1C68E0BF0](v0);

  MEMORY[0x1C68E0BF0](62, 0xE100000000000000);
  return v2[0];
}

uint64_t AST.Alternation._dumpBase.getter()
{
  strcpy(v2, "alternation<");
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1C68E0BF0](v0);

  MEMORY[0x1C68E0BF0](62, 0xE100000000000000);
  return v2[0];
}

unint64_t specialized _ASTPrintable.description.getter(uint64_t a1)
{
  _StringGuts.grow(_:)(32);

  v2 = MEMORY[0x1C68E0D70](a1, &type metadata for AST.GlobalMatchingOption);
  MEMORY[0x1C68E0BF0](v2);

  MEMORY[0x1C68E0BF0](62, 0xE100000000000000);
  return 0xD00000000000001DLL;
}

__n128 AST.Concatenation.location.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + 8);
  *a1 = result;
  return result;
}

__n128 AST.Concatenation.init(_:_:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  result = *a2;
  *(a3 + 8) = *a2;
  return result;
}

uint64_t AST.Concatenation.hash(into:)(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  MEMORY[0x1C68E1190](*(*v1 + 16));
  v6 = *(v4 + 16);
  if (v6)
  {
    v7 = v4 + 32;
    do
    {
      v7 += 8;

      AST.Node.hash(into:)(a1);

      --v6;
    }

    while (v6);
  }

  MEMORY[0x1C68E11C0](v3 >> 14);
  return MEMORY[0x1C68E11C0](v5 >> 14);
}

Swift::Int AST.Concatenation.hashValue.getter()
{
  v2[9] = *v0;
  v3 = *(v0 + 8);
  Hasher.init(_seed:)();
  AST.Concatenation.hash(into:)(v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AST.Concatenation()
{
  v2[9] = *v0;
  v3 = *(v0 + 8);
  Hasher.init(_seed:)();
  AST.Concatenation.hash(into:)(v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AST.Concatenation(uint64_t a1)
{
  v3[9] = *v1;
  v4 = *(v1 + 8);
  Hasher.init(_seed:)();
  AST.Concatenation.hash(into:)(v3);
  return Hasher._finalize()();
}

__n128 protocol witness for _ASTNode.location.getter in conformance AST.Concatenation@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + 8);
  *a1 = result;
  return result;
}

uint64_t AST.Quote._dumpBase.getter()
{
  MEMORY[0x1C68E0BF0](*v0, v0[1]);
  MEMORY[0x1C68E0BF0](34, 0xE100000000000000);
  return 0x222065746F7571;
}

uint64_t protocol witness for _ASTPrintable._dumpBase.getter in conformance AST.Quote()
{
  MEMORY[0x1C68E0BF0](*v0, v0[1]);
  MEMORY[0x1C68E0BF0](34, 0xE100000000000000);
  return 0x222065746F7571;
}

uint64_t AST.Interpolation.contents.getter()
{
  v1 = *v0;

  return v1;
}

__n128 AST.Interpolation.location.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[1];
  *a1 = result;
  return result;
}

__n128 AST.Interpolation.init(_:_:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X2>, __n128 *a4@<X8>)
{
  a4->n128_u64[0] = a1;
  a4->n128_u64[1] = a2;
  result = *a3;
  a4[1] = *a3;
  return result;
}

uint64_t AST.Quote.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  String.hash(into:)();
  MEMORY[0x1C68E11C0](v2 >> 14);
  return MEMORY[0x1C68E11C0](v3 >> 14);
}

Swift::Int AST.Quote.hashValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  Hasher.init(_seed:)();
  String.hash(into:)();
  MEMORY[0x1C68E11C0](v1 >> 14);
  MEMORY[0x1C68E11C0](v2 >> 14);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AST.Quote(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  Hasher.init(_seed:)();
  String.hash(into:)();
  MEMORY[0x1C68E11C0](v2 >> 14);
  MEMORY[0x1C68E11C0](v3 >> 14);
  return Hasher._finalize()();
}

__n128 protocol witness for _ASTNode.location.getter in conformance AST.Interpolation@<Q0>(__n128 *a1@<X8>)
{
  result = v1[1];
  *a1 = result;
  return result;
}

uint64_t AST.Interpolation._dumpBase.getter()
{
  v1 = *v0;
  v2 = v0[1];
  _StringGuts.grow(_:)(18);

  MEMORY[0x1C68E0BF0](v1, v2);
  MEMORY[0x1C68E0BF0](62, 0xE100000000000000);
  return 0x6C6F707265746E69;
}

uint64_t protocol witness for _ASTPrintable._dumpBase.getter in conformance AST.Interpolation()
{
  v1 = *v0;
  v2 = v0[1];
  _StringGuts.grow(_:)(18);

  MEMORY[0x1C68E0BF0](v1, v2);
  MEMORY[0x1C68E0BF0](62, 0xE100000000000000);
  return 0x6C6F707265746E69;
}

__n128 AST.Empty.location.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

__n128 AST.Empty.init(_:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

__n128 protocol witness for _ASTNode.location.getter in conformance AST.Empty@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t AST.AbsentFunction.Kind.hash(into:)(uint64_t a1)
{
  v3 = (v1[3] >> 1) & 3;
  if (v3 <= 1)
  {
    if (v3)
    {
      v6 = v1[1];
      v5 = v1[2];
      MEMORY[0x1C68E1190](1);
      AST.Node.hash(into:)(a1);
      MEMORY[0x1C68E11C0](v6 >> 14);
      MEMORY[0x1C68E11C0](v5 >> 14);
      return AST.Node.hash(into:)(a1);
    }

    v4 = 0;
LABEL_6:
    MEMORY[0x1C68E1190](v4);
    return AST.Node.hash(into:)(a1);
  }

  if (v3 == 2)
  {
    v4 = 2;
    goto LABEL_6;
  }

  return MEMORY[0x1C68E1190](3);
}

__n128 AST.AbsentFunction.start.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

__n128 AST.AbsentFunction.start.setter(__n128 *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

uint64_t AST.AbsentFunction.kind.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return outlined copy of AST.AbsentFunction.Kind(v2, v3, v4, v5);
}

__n128 AST.AbsentFunction.kind.setter(uint64_t a1)
{
  outlined consume of AST.AbsentFunction.Kind(v1[2], v1[3], v1[4], v1[5]);
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 1) = *a1;
  *(v1 + 2) = v4;
  return result;
}

__n128 AST.AbsentFunction.location.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[3];
  *a1 = result;
  return result;
}

__n128 AST.AbsentFunction.location.setter(__n128 *a1)
{
  result = *a1;
  v1[3] = *a1;
  return result;
}

__n128 AST.AbsentFunction.init(_:start:location:)@<Q0>(__int128 *a1@<X0>, _OWORD *a2@<X1>, __n128 *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  *a4 = *a2;
  *(a4 + 16) = v4;
  result = *a3;
  *(a4 + 32) = v5;
  *(a4 + 48) = result;
  return result;
}

uint64_t AST.AbsentFunction.hash(into:)(uint64_t a1)
{
  v3 = v1[1];
  v4 = v1[6];
  v5 = v1[7];
  MEMORY[0x1C68E11C0](*v1 >> 14);
  MEMORY[0x1C68E11C0](v3 >> 14);
  AST.AbsentFunction.Kind.hash(into:)(a1);
  MEMORY[0x1C68E11C0](v4 >> 14);
  return MEMORY[0x1C68E11C0](v5 >> 14);
}

Swift::Int AST.AbsentFunction.hashValue.getter()
{
  v1 = v0;
  v2 = *v0;
  v3 = v1[1];
  v4 = v1[6];
  v5 = v1[7];
  Hasher.init(_seed:)();
  MEMORY[0x1C68E11C0](v2 >> 14);
  MEMORY[0x1C68E11C0](v3 >> 14);
  AST.AbsentFunction.Kind.hash(into:)(v7);
  MEMORY[0x1C68E11C0](v4 >> 14);
  MEMORY[0x1C68E11C0](v5 >> 14);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AST.AbsentFunction(uint64_t a1)
{
  v3 = v1[1];
  v4 = v1[6];
  v5 = v1[7];
  MEMORY[0x1C68E11C0](*v1 >> 14);
  MEMORY[0x1C68E11C0](v3 >> 14);
  AST.AbsentFunction.Kind.hash(into:)(a1);
  MEMORY[0x1C68E11C0](v4 >> 14);
  return MEMORY[0x1C68E11C0](v5 >> 14);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AST.AbsentFunction(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = v2[1];
  v5 = v2[6];
  v6 = v2[7];
  Hasher.init(_seed:)();
  MEMORY[0x1C68E11C0](v3 >> 14);
  MEMORY[0x1C68E11C0](v4 >> 14);
  AST.AbsentFunction.Kind.hash(into:)(v8);
  MEMORY[0x1C68E11C0](v5 >> 14);
  MEMORY[0x1C68E11C0](v6 >> 14);
  return Hasher._finalize()();
}

__n128 protocol witness for _ASTNode.location.getter in conformance AST.AbsentFunction@<Q0>(__n128 *a1@<X8>)
{
  result = v1[3];
  *a1 = result;
  return result;
}

unint64_t AST.AbsentFunction._dumpBase.getter()
{
  v1 = *(v0 + 40);
  _StringGuts.grow(_:)(18);

  v2 = (v1 >> 1) & 3;
  v3 = 0xE800000000000000;
  v4 = 0x7265746165706572;
  v5 = 0x726570706F7473;
  if (v2 != 2)
  {
    v5 = 0x72657261656C63;
  }

  if (v2)
  {
    v4 = 0x6973736572707865;
    v3 = 0xEA00000000006E6FLL;
  }

  if (((v1 >> 1) & 3) <= 1)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  if (((v1 >> 1) & 3) <= 1)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  MEMORY[0x1C68E0BF0](v6, v7);

  return 0xD000000000000010;
}

__n128 AST.Atom.Number.init(_:at:)@<Q0>(unint64_t a1@<X0>, char a2@<W1>, __n128 *a3@<X2>, __n128 *a4@<X8>)
{
  a4->n128_u64[0] = a1;
  a4->n128_u8[8] = a2 & 1;
  result = *a3;
  a4[1] = *a3;
  return result;
}

uint64_t AST.Reference.Kind.recursesWholePattern.getter()
{
  if (*(v0 + 32))
  {
    return 0;
  }

  else
  {
    return (*v0 == 0) & ~*(v0 + 8);
  }
}

uint64_t AST.Reference.Kind.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  if (!*(v1 + 32))
  {
    MEMORY[0x1C68E1190](0);
    if (v3)
    {
      goto LABEL_4;
    }

    goto LABEL_6;
  }

  if (*(v1 + 32) == 1)
  {
    MEMORY[0x1C68E1190](1);
    if (v3)
    {
LABEL_4:
      Hasher._combine(_:)(0);
LABEL_7:
      MEMORY[0x1C68E11C0](v5 >> 14);
      return MEMORY[0x1C68E11C0](v4 >> 14);
    }

LABEL_6:
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68E1190](v2);
    goto LABEL_7;
  }

  MEMORY[0x1C68E1190](2);

  return String.hash(into:)();
}

Swift::Int AST.Reference.Kind.hashValue.getter()
{
  v1 = *(v0 + 32);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  Hasher.init(_seed:)();
  AST.Reference.Kind.hash(into:)(v4);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AST.Reference.Kind()
{
  v1 = *(v0 + 32);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  Hasher.init(_seed:)();
  AST.Reference.Kind.hash(into:)(v4);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AST.Reference.Kind(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = v1[1];
  v6 = *v1;
  v7 = v3;
  v8 = v2;
  Hasher.init(_seed:)();
  AST.Reference.Kind.hash(into:)(v5);
  return Hasher._finalize()();
}

uint64_t AST.Reference.kind.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 32);
  *(a1 + 32) = v6;
  return outlined copy of AST.Reference.Kind(v2, v3, v4, v5, v6);
}

__n128 AST.Reference.kind.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  outlined consume of AST.Reference.Kind(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32));
  result = *a1;
  v5 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v5;
  *(v1 + 32) = v3;
  return result;
}

__n128 AST.Reference.recursionLevel.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  result = *(v1 + 40);
  v4 = *(v1 + 56);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 AST.Reference.recursionLevel.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 40) = *a1;
  *(v1 + 56) = v4;
  *(v1 + 72) = v2;
  return result;
}

__n128 AST.Reference.innerLoc.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[5];
  *a1 = result;
  return result;
}

__n128 AST.Reference.innerLoc.setter(__n128 *a1)
{
  result = *a1;
  v1[5] = *a1;
  return result;
}

__n128 AST.Reference.init(_:recursionLevel:innerLoc:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v4;
  v5 = *(a2 + 16);
  *(a4 + 40) = *a2;
  v6 = *(a2 + 32);
  *(a4 + 32) = *(a1 + 32);
  *(a4 + 56) = v5;
  *(a4 + 72) = v6;
  result = *a3;
  *(a4 + 80) = *a3;
  return result;
}

uint64_t AST.Reference.recursesWholePattern.getter()
{
  if (*(v0 + 32))
  {
    return 0;
  }

  else
  {
    return (*v0 == 0) & ~*(v0 + 8);
  }
}

uint64_t AST.Reference.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v5 = *(v1 + 56);
  v4 = *(v1 + 64);
  v6 = *(v1 + 72);
  v8 = *(v1 + 80);
  v7 = *(v1 + 88);
  AST.Reference.Kind.hash(into:)(a1);
  if (v6 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
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

  MEMORY[0x1C68E11C0](v8 >> 14);
  return MEMORY[0x1C68E11C0](v7 >> 14);
}

Swift::Int AST.Reference.hashValue.getter()
{
  Hasher.init(_seed:)();
  AST.Reference.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AST.Reference()
{
  Hasher.init(_seed:)();
  AST.Reference.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AST.Reference(uint64_t a1)
{
  Hasher.init(_seed:)();
  AST.Reference.hash(into:)(v2);
  return Hasher._finalize()();
}

_RegexParser::AST::GlobalMatchingOptionSequence_optional __swiftcall AST.GlobalMatchingOptionSequence.init(_:)(_RegexParser::AST::GlobalMatchingOptionSequence_optional result)
{
  v2 = v1;
  if (!*(result.value.options._rawValue + 2))
  {

    result.value.options._rawValue = 0;
  }

  v2->value.options._rawValue = result.value.options._rawValue;
  return result;
}

void AST.GlobalMatchingOptionSequence.location.getter(uint64x2_t *a1@<X8>)
{
  v2 = *v1;
  v3 = (*v1)[1].i64[0];
  if (v3)
  {
    v4 = &v2[3 * v3];
    v5 = v2[4];
    v6 = vcgtq_u64(vshrq_n_u64(v5, 0xEuLL), vshrq_n_u64(v4[1], 0xEuLL));
    v7.i64[0] = v4[1].i64[0];
    v7.i64[1] = v2[4].i64[1];
    v5.i64[1] = v4[1].i64[1];
    v8 = vbslq_s8(v6, v7, v5);
    v9 = vshrq_n_u64(v8, 0xEuLL);
    if ((vmovn_s64(vcgtq_u64(v9, vdupq_laneq_s64(v9, 1))).u8[0] & 1) == 0)
    {
      *a1 = v8;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64x2_t *Source.Location.union(with:)@<X0>(uint64x2_t *result@<X0>, uint64x2_t *a2@<X8>)
{
  v3 = *v2;
  v4.i64[0] = result->i64[0];
  v4.i64[1] = v2->i64[1];
  v3.i64[1] = result->i64[1];
  v5 = vbslq_s8(vcgtq_u64(vshrq_n_u64(*v2, 0xEuLL), vshrq_n_u64(*result, 0xEuLL)), v4, v3);
  v6 = vshrq_n_u64(v5, 0xEuLL);
  if (vmovn_s64(vcgtq_u64(v6, vdupq_laneq_s64(v6, 1))).u8[0])
  {
    __break(1u);
  }

  else
  {
    *a2 = v5;
  }

  return result;
}

Swift::Int AST.GlobalMatchingOptionSequence.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AST.GlobalMatchingOptionSequence()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AST.GlobalMatchingOptionSequence(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for _ASTParent.children.getter in conformance AST.Group()
{
  v1 = *(v0 + 104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12_RegexParser3ASTV4NodeOGMd, &_ss23_ContiguousArrayStorageCy12_RegexParser3ASTV4NodeOGMR);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C0C7E2F0;
  *(v2 + 32) = v1;

  return v2;
}

__n128 protocol witness for _ASTNode.location.getter in conformance AST.Group@<Q0>(__n128 *a1@<X8>)
{
  result = v1[7];
  *a1 = result;
  return result;
}

__n128 AST.Group.location.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[7];
  *a1 = result;
  return result;
}

__n128 AST.Quantification.location.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[7];
  *a1 = result;
  return result;
}

uint64_t AST.AbsentFunction.children.getter()
{
  v1 = v0[2];
  v2 = v0[5];
  v3 = (v2 >> 1) & 3;
  if (v3 > 1)
  {
    if (v3 != 2)
    {
      return MEMORY[0x1E69E7CC0];
    }

    goto LABEL_5;
  }

  if (!v3)
  {
LABEL_5:
    v7 = v0 + 3;
    v5 = v0[3];
    v6 = v7[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12_RegexParser3ASTV4NodeOGMd, &_ss23_ContiguousArrayStorageCy12_RegexParser3ASTV4NodeOGMR);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1C0C7E2F0;
    *(v4 + 32) = v1;
    outlined copy of AST.AbsentFunction.Kind(v1, v5, v6, v2);
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12_RegexParser3ASTV4NodeOGMd, &_ss23_ContiguousArrayStorageCy12_RegexParser3ASTV4NodeOGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C0C7E300;
  *(v4 + 32) = v1;
  *(v4 + 40) = v2 & 0xFFFFFFFFFFFFFFF9;

  return v4;
}

uint64_t protocol witness for _ASTParent.children.getter in conformance AST.AbsentFunction()
{
  v1 = v0[2];
  v2 = v0[5];
  v3 = (v2 >> 1) & 3;
  if (v3 > 1)
  {
    if (v3 != 2)
    {
      return MEMORY[0x1E69E7CC0];
    }

    goto LABEL_5;
  }

  if (!v3)
  {
LABEL_5:
    v7 = v0 + 3;
    v5 = v0[3];
    v6 = v7[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12_RegexParser3ASTV4NodeOGMd, &_ss23_ContiguousArrayStorageCy12_RegexParser3ASTV4NodeOGMR);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1C0C7E2F0;
    *(v4 + 32) = v1;
    outlined copy of AST.AbsentFunction.Kind(v1, v5, v6, v2);
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12_RegexParser3ASTV4NodeOGMd, &_ss23_ContiguousArrayStorageCy12_RegexParser3ASTV4NodeOGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C0C7E300;
  *(v4 + 32) = v1;
  *(v4 + 40) = v2 & 0xFFFFFFFFFFFFFFF9;

  return v4;
}

__n128 AST.Atom.location.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + *(type metadata accessor for AST.Atom(0) + 20));
  *a1 = result;
  return result;
}

uint64_t AST.Atom.init(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v5 = a2[1];
  outlined init with take of AST.Atom.Kind(a1, a3, type metadata accessor for AST.Atom.Kind);
  result = type metadata accessor for AST.Atom(0);
  v7 = (a3 + *(result + 20));
  *v7 = v4;
  v7[1] = v5;
  return result;
}

uint64_t static AST.Atom.Scalar.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = vmovn_s64(vcgtq_u64(vdupq_n_s64(0x4000uLL), veorq_s8(*(a1 + 8), *(a2 + 8))));
  return v2.i32[0] & v2.i32[1] & 1;
}

uint64_t static AST.Atom.ScalarSequence.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ12_RegexParser3ASTV4AtomV6ScalarV_Tt1g5(*a1, *a2))
  {
    v4 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ12_RegexParser3ASTV6TriviaV_Tt1g5Tm(v2, v3);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t static AST.Atom.CharacterProperty.== infix(_:_:)(uint64_t a1, char *a2)
{
  if ((specialized static AST.Atom.CharacterProperty.Kind.== infix(_:_:)(a1, a2) & 1) != 0 && (v4 = type metadata accessor for AST.Atom.CharacterProperty(0), *(a1 + *(v4 + 20)) == a2[*(v4 + 20)]))
  {
    v5 = *(a1 + *(v4 + 24)) ^ a2[*(v4 + 24)] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

void AST.Atom.Kind.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for AST.Atom.CharacterProperty(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AST.Atom.Kind(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AST.CustomCharacterClass.Member(v2, v9, type metadata accessor for AST.Atom.Kind);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v31 = *v9;
      v32 = *(v9 + 1);
      v33 = *(v9 + 2);
      MEMORY[0x1C68E1190](1);
      Hasher._combine(_:)(v31);
      MEMORY[0x1C68E11C0](v32 >> 14);
      MEMORY[0x1C68E11C0](v33 >> 14);
      return;
    case 2u:
      v28 = *v9;
      v29 = *(v9 + 1);
      MEMORY[0x1C68E1190](2);
      specialized Array<A>.hash(into:)(a1, v28);
      specialized Array<A>.hash(into:)(a1, v29);

      goto LABEL_11;
    case 3u:
      outlined init with take of AST.Atom.Kind(v9, v6, type metadata accessor for AST.Atom.CharacterProperty);
      MEMORY[0x1C68E1190](3);
      AST.Atom.CharacterProperty.Kind.hash(into:)(a1);
      Hasher._combine(_:)(v6[*(v4 + 20)]);
      v30 = v6[*(v4 + 24)];
      outlined destroy of AST.CustomCharacterClass.Member(v6, type metadata accessor for AST.Atom.CharacterProperty);
      Hasher._combine(_:)(v30);
      return;
    case 4u:
      v17 = *v9;
      MEMORY[0x1C68E1190](4);
      v11 = v17;
      goto LABEL_17;
    case 5u:
      v10 = 5;
      goto LABEL_21;
    case 6u:
      v10 = 6;
      goto LABEL_21;
    case 7u:
      v10 = 7;
      goto LABEL_21;
    case 8u:
      MEMORY[0x1C68E1190](8);
      String.hash(into:)();
      goto LABEL_11;
    case 9u:
      v24 = *(v9 + 3);
      v50 = *(v9 + 2);
      v51 = v24;
      v25 = *(v9 + 5);
      v52 = *(v9 + 4);
      v53 = v25;
      v26 = *(v9 + 1);
      v48 = *v9;
      v49 = v26;
      v27 = 12;
      goto LABEL_24;
    case 0xAu:
      v36 = *(v9 + 3);
      v50 = *(v9 + 2);
      v51 = v36;
      v37 = *(v9 + 5);
      v52 = *(v9 + 4);
      v53 = v37;
      v38 = *(v9 + 1);
      v48 = *v9;
      v49 = v38;
      v27 = 13;
LABEL_24:
      MEMORY[0x1C68E1190](v27);
      v41 = v50;
      v42 = v51;
      v43 = v52;
      v44 = v53;
      v39 = v48;
      v40 = v49;
      AST.Reference.hash(into:)(a1);
      outlined destroy of AST.Reference(&v48, outlined consume of AST.Reference.Kind);
      return;
    case 0xBu:
      v12 = *(v9 + 7);
      v54 = *(v9 + 6);
      v55 = v12;
      v56[0] = *(v9 + 8);
      *(v56 + 9) = *(v9 + 137);
      v13 = *(v9 + 3);
      v50 = *(v9 + 2);
      v51 = v13;
      v14 = *(v9 + 5);
      v52 = *(v9 + 4);
      v53 = v14;
      v15 = *(v9 + 1);
      v48 = *v9;
      v49 = v15;
      MEMORY[0x1C68E1190](14);
      v45 = v54;
      v46 = v55;
      v47[0] = v56[0];
      *(v47 + 9) = *(v56 + 9);
      v41 = v50;
      v42 = v51;
      v43 = v52;
      v44 = v53;
      v39 = v48;
      v40 = v49;
      AST.Atom.Callout.hash(into:)(a1, v16);
      outlined destroy of AST.Atom.Callout(&v48);
      return;
    case 0xCu:
      v18 = *v9;
      v19 = *(v9 + 1);
      v20 = *(v9 + 2);
      v21 = *(v9 + 4);
      v23 = *(v9 + 5);
      v22 = *(v9 + 6);
      MEMORY[0x1C68E1190](15);
      MEMORY[0x1C68E1190](v18);
      MEMORY[0x1C68E11C0](v19 >> 14);
      MEMORY[0x1C68E11C0](v20 >> 14);
      if (v21)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
        MEMORY[0x1C68E11C0](v23 >> 14);
        MEMORY[0x1C68E11C0](v22 >> 14);
LABEL_11:
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      return;
    case 0xDu:
      v34 = *(v9 + 1);
      v48 = *v9;
      v49 = v34;
      v35 = *(v9 + 3);
      v50 = *(v9 + 2);
      v51 = v35;
      MEMORY[0x1C68E1190](16);
      v39 = v48;
      v40 = v49;
      v41 = v50;
      v42 = v51;
      AST.MatchingOptionSequence.hash(into:)(a1);
      outlined destroy of AST.MatchingOptionSequence(&v48);
      return;
    case 0xEu:
      v11 = 9;
      goto LABEL_17;
    case 0xFu:
      v11 = 10;
      goto LABEL_17;
    case 0x10u:
      v11 = 11;
      goto LABEL_17;
    case 0x11u:
      v11 = 17;
LABEL_17:
      MEMORY[0x1C68E1190](v11);
      return;
    default:
      v10 = 0;
LABEL_21:
      MEMORY[0x1C68E1190](v10);
      String.hash(into:)();
      goto LABEL_11;
  }
}

uint64_t AST.Atom.hash(into:)(uint64_t a1)
{
  AST.Atom.Kind.hash(into:)(a1);
  v2 = (v1 + *(type metadata accessor for AST.Atom(0) + 20));
  v3 = v2[1];
  MEMORY[0x1C68E11C0](*v2 >> 14);
  return MEMORY[0x1C68E11C0](v3 >> 14);
}

Swift::Int AST.Atom.hashValue.getter()
{
  Hasher.init(_seed:)();
  AST.Atom.Kind.hash(into:)(v4);
  v1 = (v0 + *(type metadata accessor for AST.Atom(0) + 20));
  v2 = v1[1];
  MEMORY[0x1C68E11C0](*v1 >> 14);
  MEMORY[0x1C68E11C0](v2 >> 14);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AST.Atom(uint64_t a1)
{
  Hasher.init(_seed:)();
  AST.Atom.Kind.hash(into:)(v6);
  v3 = (v1 + *(a1 + 20));
  v4 = v3[1];
  MEMORY[0x1C68E11C0](*v3 >> 14);
  MEMORY[0x1C68E11C0](v4 >> 14);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AST.Atom(uint64_t a1, uint64_t a2)
{
  AST.Atom.Kind.hash(into:)(a1);
  v4 = (v2 + *(a2 + 20));
  v5 = v4[1];
  MEMORY[0x1C68E11C0](*v4 >> 14);
  return MEMORY[0x1C68E11C0](v5 >> 14);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AST.Atom(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  AST.Atom.Kind.hash(into:)(v7);
  v4 = (v2 + *(a2 + 20));
  v5 = v4[1];
  MEMORY[0x1C68E11C0](*v4 >> 14);
  MEMORY[0x1C68E11C0](v5 >> 14);
  return Hasher._finalize()();
}

__n128 protocol witness for _ASTNode.location.getter in conformance AST.Atom@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  result = *(v2 + *(a1 + 20));
  *a2 = result;
  return result;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance AST.Atom(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 0;
  if (specialized static AST.Atom.Kind.== infix(_:_:)(a1, a2))
  {
    v6 = *(a3 + 20);
    v7 = a1 + v6;
    v8 = *(a1 + v6);
    v9 = (a2 + v6);
    if (!((*v9 ^ v8) >> 14) && (*(v7 + 8) ^ v9[1]) < 0x4000)
    {
      return 1;
    }
  }

  return result;
}

unint64_t AST.Atom._dumpBase.getter()
{
  v1 = type metadata accessor for AST.Atom.CharacterProperty(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = v75 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AST.Atom.Kind(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = AST.Atom.literalStringValue.getter();
  if (v8)
  {
    *&v94 = 10665455;
    *(&v94 + 1) = 0xA300000000000000;
    MEMORY[0x1C68E0BF0](v7);

    v9 = 10730991;
    v10 = 0xA300000000000000;
LABEL_3:
    MEMORY[0x1C68E0BF0](v9, v10);
    return v94;
  }

  else
  {
    outlined init with copy of AST.CustomCharacterClass.Member(v0, v6, type metadata accessor for AST.Atom.Kind);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = 46;
    switch(EnumCaseMultiPayload)
    {
      case 1:
        goto LABEL_57;
      case 2:
        v26 = *v6;
        v27 = *(*v6 + 16);
        if (v27)
        {
          v75[1] = *(v6 + 1);
          *&v85 = MEMORY[0x1E69E7CC0];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27, 0);
          v28 = 32;
          v29 = v85;
          do
          {
            v30 = *(v26 + v28);
            *&v94 = 10665455;
            *(&v94 + 1) = 0xA300000000000000;
            if (v30 >= 0x80)
            {
              v36 = (v30 & 0x3F) << 8;
              if (v30 >= 0x800)
              {
                v37 = v30 >> 12;
                v38 = (v36 | (v30 >> 6) & 0x3F) << 8;
                v39 = HIWORD(v30);
                v31 = (((v38 | (v30 >> 12) & 0x3F) << 8) | (v30 >> 18)) - 2122219023;
                v40 = v37 + v38 + 8487393;
                if (!v39)
                {
                  v31 = v40;
                }
              }

              else
              {
                v31 = (v30 >> 6) + v36 + 33217;
              }
            }

            else
            {
              v31 = v30 + 1;
            }

            *&v76 = (v31 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v31) >> 3))));
            v32 = static String._uncheckedFromUTF8(_:)();
            MEMORY[0x1C68E0BF0](v32);

            MEMORY[0x1C68E0BF0](10730991, 0xA300000000000000);
            v33 = v94;
            *&v85 = v29;
            v35 = *(v29 + 16);
            v34 = *(v29 + 24);
            if (v35 >= v34 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1);
              v29 = v85;
            }

            *(v29 + 16) = v35 + 1;
            *(v29 + 16 * v35 + 32) = v33;
            v28 += 24;
            --v27;
          }

          while (v27);
        }

        else
        {

          v29 = MEMORY[0x1E69E7CC0];
        }

        *&v94 = v29;
        swift_getCanonicalSpecializedMetadata();
        lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &unk_1F402B990, &cache variable for noncanonical specialized generic type metadata for [String], MEMORY[0x1E69E6310]);
        v67 = BidirectionalCollection<>.joined(separator:)();

        return v67;
      case 3:
        outlined init with take of AST.Atom.Kind(v6, v3, type metadata accessor for AST.Atom.CharacterProperty);
        *&v94 = 0;
        *(&v94 + 1) = 0xE000000000000000;
        type metadata accessor for AST.Atom.CharacterProperty.Kind(0);
        _print_unlocked<A, B>(_:_:)();
        if (v3[*(v1 + 20)])
        {
          v41 = 1702195828;
        }

        else
        {
          v41 = 0x65736C6166;
        }

        if (v3[*(v1 + 20)])
        {
          v42 = 0xE400000000000000;
        }

        else
        {
          v42 = 0xE500000000000000;
        }

        MEMORY[0x1C68E0BF0](v41, v42);

        if (v3[*(v1 + 24)])
        {
          v43 = 1702195828;
        }

        else
        {
          v43 = 0x65736C6166;
        }

        if (v3[*(v1 + 24)])
        {
          v44 = 0xE400000000000000;
        }

        else
        {
          v44 = 0xE500000000000000;
        }

        MEMORY[0x1C68E0BF0](v43, v44);

        v22 = v94;
        outlined destroy of AST.CustomCharacterClass.Member(v3, type metadata accessor for AST.Atom.CharacterProperty);
        goto LABEL_50;
      case 4:
        v49 = *v6;
        *&v94 = 0;
        *(&v94 + 1) = 0xE000000000000000;
        MEMORY[0x1C68E0BF0](92, 0xE100000000000000);
        LOBYTE(v85) = v49;
        AST.Atom.EscapedBuiltin.character.getter();
        Character.write<A>(to:)();

        return v94;
      case 8:
        v47 = *v6;
        v48 = *(v6 + 1);
        *&v94 = 8080988;
        *(&v94 + 1) = 0xE300000000000000;
        MEMORY[0x1C68E0BF0](v47, v48);

        v9 = 125;
        v10 = 0xE100000000000000;
        goto LABEL_3;
      case 9:
      case 10:
        v13 = v6[72];
        v14 = *(v6 + 5);
        v15 = *(v6 + 6);
        v16 = v6[32];
        v18 = *(v6 + 2);
        v17 = *(v6 + 3);
        v21 = v6;
        v19 = *v6;
        v20 = *(v21 + 1);
        *&v76 = 0;
        *(&v76 + 1) = 0xE000000000000000;
        *&v94 = v19;
        *(&v94 + 1) = v20;
        *&v95 = v18;
        *(&v95 + 1) = v17;
        LOBYTE(v96) = v16;
        _print_unlocked<A, B>(_:_:)();
        v85 = v76;
        if (v13)
        {
          v22 = v76;
          outlined consume of AST.Reference.Kind(v19, v20, v18, v17, v16);
          goto LABEL_50;
        }

        if (v15)
        {
          v45 = 0x64696C61766E693CLL;
          v46 = 0xE90000000000003ELL;
        }

        else
        {
          *&v94 = v14;
          v45 = dispatch thunk of CustomStringConvertible.description.getter();
          v46 = v66;
        }

        MEMORY[0x1C68E0BF0](v45, v46);

        outlined consume of AST.Reference.Kind(v19, v20, v18, v17, v16);
        return v85;
      case 11:
        v50 = *(v6 + 7);
        v51 = *(v6 + 5);
        v91 = *(v6 + 6);
        v92 = v50;
        v52 = *(v6 + 7);
        v93[0] = *(v6 + 8);
        *(v93 + 9) = *(v6 + 137);
        v53 = *(v6 + 3);
        v54 = *(v6 + 1);
        v87 = *(v6 + 2);
        v88 = v53;
        v55 = *(v6 + 3);
        v56 = *(v6 + 5);
        v89 = *(v6 + 4);
        v90 = v56;
        v57 = *(v6 + 1);
        v85 = *v6;
        v86 = v57;
        v100 = v91;
        v101 = v52;
        v102[0] = *(v6 + 8);
        *(v102 + 9) = *(v6 + 137);
        v96 = v87;
        v97 = v55;
        v98 = v89;
        v99 = v51;
        v94 = v85;
        v95 = v54;
        v58 = _s12_RegexParser3ASTV4AtomV7CalloutOWOg(&v94);
        if (v58)
        {
          if (v58 == 1)
          {
            AST.root.modify();
            v80 = v59[5];
            v81 = v59[6];
            v82 = v59[7];
            *&v83 = *(v59 + 16);
            v77 = v59[1];
            v78[0] = v59[2];
            v78[1] = v59[3];
            v79 = v59[4];
            v76 = *v59;
            v60 = AST.Atom.Callout.OnigurumaNamed._dumpBase.getter();
          }

          else
          {
            AST.root.modify();
            v81 = v73[6];
            v82 = v73[7];
            v83 = v73[8];
            v84 = *(v73 + 18);
            v78[0] = v73[2];
            v78[1] = v73[3];
            v79 = v73[4];
            v80 = v73[5];
            v76 = *v73;
            v77 = v73[1];
            v60 = AST.Atom.Callout.OnigurumaOfContents._dumpBase.getter();
          }
        }

        else
        {
          AST.root.modify();
          v69 = *(v68 + 32);
          v70 = *(v68 + 40);
          v71 = v68[1];
          v76 = *v68;
          v77 = v71;
          LOBYTE(v78[0]) = v69;
          *(v78 + 8) = v70;
          v72 = lazy protocol witness table accessor for type AST.Atom.Callout.PCRE and conformance AST.Atom.Callout.PCRE();
          v60 = (*(v72 + 24))(&type metadata for AST.Atom.Callout.PCRE, v72);
        }

        v74 = v60;
        outlined destroy of AST.Atom.Callout(&v85);
        return v74;
      case 12:
        v23 = *v6;
        v25 = *(v6 + 3);
        v24 = *(v6 + 4);
        *&v85 = 0;
        *(&v85 + 1) = 0xE000000000000000;
        LOBYTE(v76) = v23;
        _print_unlocked<A, B>(_:_:)();
        v94 = v85;
        if (v24)
        {
          *&v85 = 8250;
          *(&v85 + 1) = 0xE200000000000000;
          MEMORY[0x1C68E0BF0](v25, v24);
          MEMORY[0x1C68E0BF0](v85, *(&v85 + 1));

          return v94;
        }

        v22 = v85;

LABEL_50:
        result = v22;
        break;
      case 13:
        v61 = *(v6 + 1);
        v94 = *v6;
        v95 = v61;
        v62 = *(v6 + 3);
        v96 = *(v6 + 2);
        v97 = v62;
        *&v85 = 0;
        *(&v85 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(25);

        *&v76 = 0xD000000000000016;
        *(&v76 + 1) = 0x80000001C0C849C0;
        v85 = v94;
        v86 = v95;
        v87 = v96;
        v88 = v97;
        v63 = AST.MatchingOptionSequence._dumpBase.getter();
        v65 = v64;
        outlined destroy of AST.MatchingOptionSequence(&v94);
        MEMORY[0x1C68E0BF0](v63, v65);

        MEMORY[0x1C68E0BF0](62, 0xE100000000000000);
        return v76;
      case 14:
        return result;
      case 15:
        return 94;
      case 16:
        return 36;
      case 17:
        return 0x64696C61766E693CLL;
      default:
        outlined destroy of AST.CustomCharacterClass.Member(v6, type metadata accessor for AST.Atom.Kind);
LABEL_57:
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        JUMPOUT(0x1C0BFBDA0);
    }
  }

  return result;
}

uint64_t AST.Atom.Number.value.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

__n128 AST.Atom.Number.location.setter(__n128 *a1)
{
  result = *a1;
  v1[1] = *a1;
  return result;
}

uint64_t AST.Atom.Number.hash(into:)()
{
  v2 = v0[2];
  v1 = v0[3];
  if (*(v0 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v3 = *v0;
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68E1190](v3);
  }

  MEMORY[0x1C68E11C0](v2 >> 14);
  return MEMORY[0x1C68E11C0](v1 >> 14);
}

Swift::Int AST.Atom.Number.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v4 = v0[2];
  v3 = v0[3];
  Hasher.init(_seed:)();
  if (v2 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68E1190](v1);
  }

  MEMORY[0x1C68E11C0](v4 >> 14);
  MEMORY[0x1C68E11C0](v3 >> 14);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AST.Atom.Number()
{
  v2 = v0[2];
  v1 = v0[3];
  if (*(v0 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v3 = *v0;
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68E1190](v3);
  }

  MEMORY[0x1C68E11C0](v2 >> 14);
  return MEMORY[0x1C68E11C0](v1 >> 14);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AST.Atom.Number(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v5 = v1[2];
  v4 = v1[3];
  Hasher.init(_seed:)();
  if (v3 == 1)
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
  return Hasher._finalize()();
}

__n128 AST.Atom.Scalar.init(_:_:)@<Q0>(int a1@<W0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  result = *a2;
  *(a3 + 8) = *a2;
  return result;
}

uint64_t AST.Atom.Scalar.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  Hasher._combine(_:)(*v0);
  MEMORY[0x1C68E11C0](v1 >> 14);
  return MEMORY[0x1C68E11C0](v2 >> 14);
}

Swift::Int AST.Atom.Scalar.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  MEMORY[0x1C68E11C0](v2 >> 14);
  MEMORY[0x1C68E11C0](v3 >> 14);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AST.Atom.Scalar()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  MEMORY[0x1C68E11C0](v2 >> 14);
  MEMORY[0x1C68E11C0](v3 >> 14);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AST.Atom.Scalar()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  Hasher._combine(_:)(*v0);
  MEMORY[0x1C68E11C0](v1 >> 14);
  return MEMORY[0x1C68E11C0](v2 >> 14);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AST.Atom.Scalar(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  MEMORY[0x1C68E11C0](v3 >> 14);
  MEMORY[0x1C68E11C0](v4 >> 14);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AST.Atom.Scalar(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = vmovn_s64(vcgtq_u64(vdupq_n_s64(0x4000uLL), veorq_s8(*(a1 + 8), *(a2 + 8))));
  return v2.i32[0] & v2.i32[1] & 1;
}

uint64_t AST.Atom.ScalarSequence.scalars.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t AST.Atom.ScalarSequence.trivia.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

_RegexParser::AST::Atom::ScalarSequence __swiftcall AST.Atom.ScalarSequence.init(_:trivia:)(Swift::OpaquePointer _, Swift::OpaquePointer trivia)
{
  if (*(_._rawValue + 2) < 2uLL)
  {
    __break(1u);
  }

  else
  {
    v2->_rawValue = _._rawValue;
    v2[1]._rawValue = trivia._rawValue;
  }

  result.trivia = trivia;
  result.scalars = _;
  return result;
}

uint64_t AST.Atom.ScalarSequence.scalarValues.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v9 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    result = v9;
    v4 = (v1 + 32);
    v5 = *(v9 + 16);
    do
    {
      v7 = *v4;
      v4 += 6;
      v6 = v7;
      v10 = result;
      v8 = *(result + 24);
      if (v5 >= v8 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v5 + 1, 1);
        result = v10;
      }

      *(result + 16) = v5 + 1;
      *(result + 4 * v5++ + 32) = v6;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v19 = dispatch thunk of Collection.count.getter();
  if (!v19)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v41 = v19;
  v45 = ContiguousArray.init()();
  v32 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v41);
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = dispatch thunk of Collection.subscript.read();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      ContiguousArray.append(_:)();
      result = dispatch thunk of Collection.formIndex(after:)();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t AST.Atom.ScalarSequence.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  specialized Array<A>.hash(into:)(a1, v3);
  return specialized Array<A>.hash(into:)(a1, v4);
}

Swift::Int AST.Atom.ScalarSequence.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v4, v1);
  specialized Array<A>.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AST.Atom.ScalarSequence()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v4, v1);
  specialized Array<A>.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AST.Atom.ScalarSequence(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  specialized Array<A>.hash(into:)(a1, v3);
  return specialized Array<A>.hash(into:)(a1, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AST.Atom.ScalarSequence(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v5, v2);
  specialized Array<A>.hash(into:)(v5, v3);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AST.Atom.ScalarSequence(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ12_RegexParser3ASTV4AtomV6ScalarV_Tt1g5(*a1, *a2))
  {
    v4 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ12_RegexParser3ASTV6TriviaV_Tt1g5Tm(v2, v3);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t static AST.Atom.EscapedBuiltin.fromCharacter(_:inCustomCharacterClass:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, char *a4@<X8>)
{
  v5 = result;
  if (result == 97 && a2 == 0xE100000000000000 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {
    v8 = 0;
  }

  else if (v5 == 101 && a2 == 0xE100000000000000 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {
    v8 = 1;
  }

  else if (v5 == 102 && a2 == 0xE100000000000000 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {
    v8 = 2;
  }

  else if (v5 == 110 && a2 == 0xE100000000000000 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {
    v8 = 3;
  }

  else if (v5 == 114 && a2 == 0xE100000000000000 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {
    v8 = 4;
  }

  else if (v5 == 116 && a2 == 0xE100000000000000 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {
    v8 = 5;
  }

  else if (v5 == 100 && a2 == 0xE100000000000000 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {
    v8 = 7;
  }

  else if (v5 == 68 && a2 == 0xE100000000000000 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {
    v8 = 8;
  }

  else if (v5 == 104 && a2 == 0xE100000000000000 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {
    v8 = 9;
  }

  else if (v5 == 72 && a2 == 0xE100000000000000 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {
    v8 = 10;
  }

  else if (v5 == 115 && a2 == 0xE100000000000000 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {
    v8 = 13;
  }

  else if (v5 == 83 && a2 == 0xE100000000000000 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {
    v8 = 14;
  }

  else if (v5 == 118 && a2 == 0xE100000000000000 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {
    v8 = 15;
  }

  else if (v5 == 86 && a2 == 0xE100000000000000 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {
    v8 = 16;
  }

  else if (v5 == 119 && a2 == 0xE100000000000000 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {
    v8 = 17;
  }

  else if (v5 == 87 && a2 == 0xE100000000000000 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {
    v8 = 18;
  }

  else if (v5 == 98 && a2 == 0xE100000000000000 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {
    if (a3)
    {
      v8 = 19;
    }

    else
    {
      v8 = 21;
    }
  }

  else if (a3)
  {
    v8 = 31;
  }

  else if (v5 == 67 && a2 == 0xE100000000000000 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {
    v8 = 6;
  }

  else if (v5 == 78 && a2 == 0xE100000000000000 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {
    v8 = 11;
  }

  else if (v5 == 82 && a2 == 0xE100000000000000 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {
    v8 = 12;
  }

  else if (v5 == 88 && a2 == 0xE100000000000000 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {
    v8 = 20;
  }

  else if (v5 == 66 && a2 == 0xE100000000000000 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {
    v8 = 22;
  }

  else if (v5 == 65 && a2 == 0xE100000000000000 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {
    v8 = 23;
  }

  else if (v5 == 90 && a2 == 0xE100000000000000 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {
    v8 = 24;
  }

  else if (v5 == 122 && a2 == 0xE100000000000000 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {
    v8 = 25;
  }

  else if (v5 == 71 && a2 == 0xE100000000000000 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {
    v8 = 26;
  }

  else if (v5 == 75 && a2 == 0xE100000000000000 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {
    v8 = 27;
  }

  else if (v5 == 79 && a2 == 0xE100000000000000 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {
    v8 = 28;
  }

  else if (v5 == 121 && a2 == 0xE100000000000000 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {
    v8 = 29;
  }

  else
  {
    v8 = 30;
    if (v5 != 89 || a2 != 0xE100000000000000)
    {
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        v8 = 30;
      }

      else
      {
        v8 = 31;
      }
    }
  }

  *a4 = v8;
  return result;
}

_RegexParser::AST::Atom::EscapedBuiltin_optional __swiftcall AST.Atom.EscapedBuiltin.init(_:inCustomCharacterClass:)(Swift::String _, Swift::Bool inCustomCharacterClass)
{
  v3 = v2;
  static AST.Atom.EscapedBuiltin.fromCharacter(_:inCustomCharacterClass:)(_._countAndFlagsBits, _._object, inCustomCharacterClass, &v5);

  *v3 = v5;
  return result;
}

uint64_t AST.Atom.CharacterProperty.isInverted.setter(char a1)
{
  result = type metadata accessor for AST.Atom.CharacterProperty(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t AST.Atom.CharacterProperty.isPOSIX.setter(char a1)
{
  result = type metadata accessor for AST.Atom.CharacterProperty(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t AST.Atom.CharacterProperty.init(_:isInverted:isPOSIX:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  outlined init with take of AST.Atom.Kind(a1, a4, type metadata accessor for AST.Atom.CharacterProperty.Kind);
  result = type metadata accessor for AST.Atom.CharacterProperty(0);
  *(a4 + *(result + 20)) = a2;
  *(a4 + *(result + 24)) = a3;
  return result;
}

uint64_t AST.Atom.CharacterProperty._dumpBase.getter()
{
  type metadata accessor for AST.Atom.CharacterProperty.Kind(0);
  _print_unlocked<A, B>(_:_:)();
  v1 = type metadata accessor for AST.Atom.CharacterProperty(0);
  if (*(v0 + *(v1 + 20)))
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (*(v0 + *(v1 + 20)))
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x1C68E0BF0](v2, v3);

  if (*(v0 + *(v1 + 24)))
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (*(v0 + *(v1 + 24)))
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x1C68E0BF0](v4, v5);

  return 0;
}

uint64_t specialized DefaultStringInterpolation.appendInterpolation<A>(_:)(uint64_t a1)
{
  _StringGuts.grow(_:)(32);

  v2 = MEMORY[0x1C68E0D70](a1, &type metadata for AST.GlobalMatchingOption);
  MEMORY[0x1C68E0BF0](v2);

  MEMORY[0x1C68E0BF0](62, 0xE100000000000000);
  MEMORY[0x1C68E0BF0](0xD00000000000001DLL, 0x80000001C0C84CD0);
}

void AST.Atom.CharacterProperty.hash(into:)(uint64_t a1)
{
  AST.Atom.CharacterProperty.Kind.hash(into:)(a1);
  v2 = type metadata accessor for AST.Atom.CharacterProperty(0);
  Hasher._combine(_:)(*(v1 + *(v2 + 20)));
  Hasher._combine(_:)(*(v1 + *(v2 + 24)));
}

Swift::Int AST.Atom.CharacterProperty.hashValue.getter()
{
  Hasher.init(_seed:)();
  AST.Atom.CharacterProperty.Kind.hash(into:)(v3);
  v1 = type metadata accessor for AST.Atom.CharacterProperty(0);
  Hasher._combine(_:)(*(v0 + *(v1 + 20)));
  Hasher._combine(_:)(*(v0 + *(v1 + 24)));
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AST.Atom.CharacterProperty(uint64_t a1)
{
  Hasher.init(_seed:)();
  AST.Atom.CharacterProperty.Kind.hash(into:)(v4);
  Hasher._combine(_:)(*(v1 + *(a1 + 20)));
  Hasher._combine(_:)(*(v1 + *(a1 + 24)));
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance AST.Atom.CharacterProperty(uint64_t a1, uint64_t a2)
{
  AST.Atom.CharacterProperty.Kind.hash(into:)(a1);
  Hasher._combine(_:)(*(v2 + *(a2 + 20)));
  Hasher._combine(_:)(*(v2 + *(a2 + 24)));
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AST.Atom.CharacterProperty(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  AST.Atom.CharacterProperty.Kind.hash(into:)(v5);
  Hasher._combine(_:)(*(v2 + *(a2 + 20)));
  Hasher._combine(_:)(*(v2 + *(a2 + 24)));
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AST.Atom.CharacterProperty(uint64_t a1, char *a2, uint64_t a3)
{
  if ((specialized static AST.Atom.CharacterProperty.Kind.== infix(_:_:)(a1, a2) & 1) != 0 && *(a1 + *(a3 + 20)) == a2[*(a3 + 20)])
  {
    v6 = *(a1 + *(a3 + 24)) ^ a2[*(a3 + 24)] ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6D756E6C61;
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v5 = 0xE500000000000000;
      v4 = 0x746E697270;
    }

    else if (a1 == 4)
    {
      v5 = 0xE400000000000000;
      v4 = 1685221239;
    }

    else
    {
      v5 = 0xE600000000000000;
      v4 = 0x746967696478;
    }
  }

  else
  {
    v3 = 0x6B6E616C62;
    if (a1 != 1)
    {
      v3 = 0x6870617267;
    }

    if (a1)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0x6D756E6C61;
    }

    v5 = 0xE500000000000000;
  }

  v6 = 0xE500000000000000;
  v7 = 0x746E697270;
  v8 = 0xE400000000000000;
  v9 = 1685221239;
  if (a2 != 4)
  {
    v9 = 0x746967696478;
    v8 = 0xE600000000000000;
  }

  if (a2 != 3)
  {
    v7 = v9;
    v6 = v8;
  }

  v10 = 0x6B6E616C62;
  if (a2 != 1)
  {
    v10 = 0x6870617267;
  }

  if (a2)
  {
    v2 = v10;
  }

  if (a2 <= 2u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v7;
  }

  if (a2 <= 2u)
  {
    v12 = 0xE500000000000000;
  }

  else
  {
    v12 = v6;
  }

  if (v4 == v11 && v5 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v13 & 1;
}

uint64_t specialized == infix<A>(_:_:)(char a1, char a2)
{
  if (qword_1C0C83B08[a1] == qword_1C0C83B08[a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

void AST.Atom.CharacterProperty.Kind.hash(into:)(uint64_t a1)
{
  v2 = type metadata accessor for Unicode.CanonicalCombiningClass();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v27[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for Unicode.NumericType();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for AST.Atom.CharacterProperty.Kind(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of AST.CustomCharacterClass.Member(v1, v12, type metadata accessor for AST.Atom.CharacterProperty.Kind);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v21 = *v12;
      v22 = v12[1];
      MEMORY[0x1C68E1190](4);
      v27[9] = v21;
      Unicode.BinaryProperty.rawValue.getter();
      String.hash(into:)();

      Hasher._combine(_:)(v22);
      return;
    case 2u:
      v18 = *v12;
      MEMORY[0x1C68E1190](5);
      v27[10] = v18;
      goto LABEL_13;
    case 3u:
      v19 = *v12;
      MEMORY[0x1C68E1190](6);
      v27[11] = v19;
LABEL_13:
      Unicode.Script.rawValue.getter();
      goto LABEL_24;
    case 4u:
      MEMORY[0x1C68E1190](7);
      String.hash(into:)();
      goto LABEL_25;
    case 5u:
      (*(v7 + 32))(v9, v12, v6);
      MEMORY[0x1C68E1190](8);
      dispatch thunk of Hashable.hash(into:)();
      (*(v7 + 8))(v9, v6);
      return;
    case 6u:
      v24 = *v12;
      MEMORY[0x1C68E1190](9);
      v25 = 0.0;
      if (v24 != 0.0)
      {
        v25 = v24;
      }

      MEMORY[0x1C68E11C0](*&v25);
      return;
    case 7u:
      v20 = *v12;
      MEMORY[0x1C68E1190](10);
      MEMORY[0x1C68E1190](v20);
      String.hash(into:)();
      goto LABEL_25;
    case 8u:
      (*(v3 + 32))(v5, v12, v2);
      MEMORY[0x1C68E1190](11);
      dispatch thunk of Hashable.hash(into:)();
      (*(v3 + 8))(v5, v2);
      return;
    case 9u:
      v16 = *v12;
      v17 = *(v12 + 1);
      MEMORY[0x1C68E1190](12);
      MEMORY[0x1C68E1190](*&v16);
      MEMORY[0x1C68E1190](v17);
      return;
    case 0xAu:
      v26 = *v12;
      MEMORY[0x1C68E1190](13);
      v28 = v26;
      Unicode.Block.rawValue.getter();
      goto LABEL_24;
    case 0xBu:
      MEMORY[0x1C68E1190](14);
      goto LABEL_24;
    case 0xCu:
      MEMORY[0x1C68E1190](15);
      String.hash(into:)();
      goto LABEL_25;
    case 0xDu:
      v23 = *v12;
      MEMORY[0x1C68E1190](16);
      v29 = v23;
      AST.Atom.CharacterProperty.JavaSpecial.rawValue.getter();
      goto LABEL_24;
    case 0xEu:
      v15 = *(v12 + 1);
      MEMORY[0x1C68E1190](17);
      if (v15)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      goto LABEL_24;
    case 0xFu:
      v14 = 0;
      goto LABEL_17;
    case 0x10u:
      v14 = 1;
      goto LABEL_17;
    case 0x11u:
      v14 = 2;
LABEL_17:
      MEMORY[0x1C68E1190](v14);
      break;
    default:
      v13 = *v12;
      MEMORY[0x1C68E1190](3);
      v27[8] = v13;
      Unicode.ExtendedGeneralCategory.rawValue.getter();
LABEL_24:
      String.hash(into:)();
LABEL_25:

      break;
  }
}

_RegexParser::AST::Atom::CharacterProperty::PCRESpecialCategory_optional __swiftcall AST.Atom.CharacterProperty.PCRESpecialCategory.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AST.Atom.CharacterProperty.PCRESpecialCategory.init(rawValue:), v3);

  v7 = 5;
  if (v5 < 5)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AST.Atom.CharacterProperty.PCRESpecialCategory()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AST.Atom.CharacterProperty.PCRESpecialCategory(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AST.Atom.CharacterProperty.PCRESpecialCategory(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

_RegexParser::AST::Atom::CharacterProperty::JavaSpecial_optional __swiftcall AST.Atom.CharacterProperty.JavaSpecial.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  v5 = 18;
  if (v3 < 0x12)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t AST.Atom.CharacterProperty.JavaSpecial.rawValue.getter()
{
  result = 0x68706C416176616ALL;
  switch(*v0)
  {
    case 1:
      result = 0x696665446176616ALL;
      break;
    case 2:
      result = 0x696769446176616ALL;
      break;
    case 3:
      result = 0xD000000000000017;
      break;
    case 4:
      result = 0x6F6564496176616ALL;
      break;
    case 5:
      result = 0x434F53496176616ALL;
      break;
    case 6:
      result = 0xD000000000000016;
      break;
    case 7:
      result = 0xD000000000000017;
      break;
    case 8:
      result = 0x7474654C6176616ALL;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    case 0xA:
      result = 0x65776F4C6176616ALL;
      break;
    case 0xB:
      result = 0x7272694D6176616ALL;
      break;
    case 0xC:
      result = 0x636170536176616ALL;
      break;
    case 0xD:
      result = 0x6C7469546176616ALL;
      break;
    case 0xE:
      result = 0xD000000000000019;
      break;
    case 0xF:
      result = 0xD00000000000001ALL;
      break;
    case 0x10:
      result = 0x657070556176616ALL;
      break;
    case 0x11:
      result = 0x746968576176616ALL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AST.Atom.CharacterProperty.JavaSpecial@<X0>(unint64_t *a1@<X8>)
{
  result = AST.Atom.CharacterProperty.JavaSpecial.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t AST.Atom.Callout.PCRE.Argument.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  if (v1[4])
  {
    MEMORY[0x1C68E1190](1);

    return String.hash(into:)();
  }

  else
  {
    v6 = v1[2];
    v5 = v1[3];
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

    MEMORY[0x1C68E11C0](v6 >> 14);
    return MEMORY[0x1C68E11C0](v5 >> 14);
  }
}

Swift::Int AST.Atom.Callout.PCRE.Argument.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = *(v0 + 32);
  Hasher.init(_seed:)();
  if (v5)
  {
    MEMORY[0x1C68E1190](1);
    String.hash(into:)();
  }

  else
  {
    MEMORY[0x1C68E1190](0);
    if (v2)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      Hasher._combine(_:)(1u);
      MEMORY[0x1C68E1190](v1);
    }

    MEMORY[0x1C68E11C0](v4 >> 14);
    MEMORY[0x1C68E11C0](v3 >> 14);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AST.Atom.Callout.PCRE.Argument(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  if (v1[4])
  {
    MEMORY[0x1C68E1190](1);

    return String.hash(into:)();
  }

  else
  {
    v6 = v1[2];
    v5 = v1[3];
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

    MEMORY[0x1C68E11C0](v6 >> 14);
    return MEMORY[0x1C68E11C0](v5 >> 14);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AST.Atom.Callout.PCRE.Argument(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  v6 = *(v1 + 32);
  Hasher.init(_seed:)();
  if (v6)
  {
    MEMORY[0x1C68E1190](1);
    String.hash(into:)();
  }

  else
  {
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

  return Hasher._finalize()();
}

uint64_t AST.Atom.Callout.PCRE.arg.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = *(v1 + 40);
  return outlined copy of AST.Atom.Callout.PCRE.Argument(v2, v3, v4, v5, v6);
}

__n128 AST.Atom.Callout.PCRE.arg.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  outlined consume of AST.Atom.Callout.PCRE.Argument(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32));
  result = *a1;
  v7 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v7;
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  *(v1 + 48) = v5;
  return result;
}

__n128 AST.Atom.Callout.PCRE.init(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  *(a2 + 32) = v2;
  result = *(a1 + 40);
  *(a2 + 40) = result;
  return result;
}

BOOL static AST.Atom.Callout.PCRE.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return _s12_RegexParser6SourceV7LocatedVAASQRzlE2eeoiySbAEy_xG_AGtFZAA3ASTV4AtomV7CalloutO4PCREV8ArgumentO_Tt1B5(v5, v7);
}

BOOL _s12_RegexParser6SourceV7LocatedVAASQRzlE2eeoiySbAEy_xG_AGtFZAA3ASTV4AtomV7CalloutO4PCREV8ArgumentO_Tt1B5(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  v6 = a1[3];
  v9 = *a2;
  v8 = a2[1];
  v11 = a2[2];
  v10 = a2[3];
  if (a1[4])
  {
    if (a2[4])
    {
      if (v4 != v9 || v5 != v8)
      {
        v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
        outlined init with copy of Source.Located<AST.Atom.Callout.PCRE.Argument>(a2, v20);
        outlined init with copy of Source.Located<AST.Atom.Callout.PCRE.Argument>(a1, v20);
        outlined consume of AST.Atom.Callout.PCRE.Argument(v4, v5, v7, v6, 1);
        outlined consume of AST.Atom.Callout.PCRE.Argument(v9, v8, v11, v10, 1);
        if (v19)
        {
          return !((a2[5] ^ a1[5]) >> 14) && (a1[6] ^ a2[6]) < 0x4000;
        }

        return 0;
      }

      outlined init with copy of Source.Located<AST.Atom.Callout.PCRE.Argument>(a2, v20);
      outlined init with copy of Source.Located<AST.Atom.Callout.PCRE.Argument>(a1, v20);
      outlined consume of AST.Atom.Callout.PCRE.Argument(v4, v5, v7, v6, 1);
      outlined consume of AST.Atom.Callout.PCRE.Argument(v4, v5, v11, v10, 1);
      return !((a2[5] ^ a1[5]) >> 14) && (a1[6] ^ a2[6]) < 0x4000;
    }

    outlined init with copy of Source.Located<AST.Atom.Callout.PCRE.Argument>(a2, v20);
    outlined init with copy of Source.Located<AST.Atom.Callout.PCRE.Argument>(a1, v20);
    outlined consume of AST.Atom.Callout.PCRE.Argument(v4, v5, v7, v6, 1);
    v13 = v9;
    v14 = v8;
    v15 = v11;
    v16 = v10;
    v17 = 0;
LABEL_12:
    outlined consume of AST.Atom.Callout.PCRE.Argument(v13, v14, v15, v16, v17);
    return 0;
  }

  if (a2[4])
  {
    outlined init with copy of Source.Located<AST.Atom.Callout.PCRE.Argument>(a2, v20);
    outlined consume of AST.Atom.Callout.PCRE.Argument(v4, v5, v7, v6, 0);
    v13 = v9;
    v14 = v8;
    v15 = v11;
    v16 = v10;
    v17 = 1;
    goto LABEL_12;
  }

  outlined init with copy of Source.Located<AST.Atom.Callout.PCRE.Argument>(a2, v20);
  outlined consume of AST.Atom.Callout.PCRE.Argument(v4, v5, v7, v6, 0);
  outlined consume of AST.Atom.Callout.PCRE.Argument(v9, v8, v11, v10, 0);
  if (v5)
  {
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8 & 1 | (v4 != v9))
  {
    return 0;
  }

  result = 0;
  if (!((v11 ^ v7) >> 14) && (v10 ^ v6) < 0x4000)
  {
    return !((a2[5] ^ a1[5]) >> 14) && (a1[6] ^ a2[6]) < 0x4000;
  }

  return result;
}

BOOL _s12_RegexParser6SourceV7LocatedVAASQRzlE2eeoiySbAEy_xG_AGtFZAA3ASTV20CustomCharacterClassV5StartO_Tt1B5(char a1, unint64_t a2, unint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v10 = (a1 & 1) == 0;
  if (a1)
  {
    v11 = 24155;
  }

  else
  {
    v11 = 91;
  }

  if (v10)
  {
    v12 = 0xE100000000000000;
  }

  else
  {
    v12 = 0xE200000000000000;
  }

  if (a4)
  {
    v13 = 24155;
  }

  else
  {
    v13 = 91;
  }

  if (a4)
  {
    v14 = 0xE200000000000000;
  }

  else
  {
    v14 = 0xE100000000000000;
  }

  if (v11 == v13 && v12 == v14)
  {
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    result = 0;
    if ((v15 & 1) == 0)
    {
      return result;
    }
  }

  return (a5 ^ a2) < 0x4000 && (a6 ^ a3) < 0x4000;
}

BOOL _s12_RegexParser6SourceV7LocatedVAASQRzlE2eeoiySbAEy_xG_AGtFZAA3ASTV20CustomCharacterClassV5SetOpO_Tt1B5(char a1, unint64_t a2, unint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  if (qword_1C0C83B30[a1] == qword_1C0C83B30[a4])
  {
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    swift_bridgeObjectRelease_n();
    result = 0;
    if ((v10 & 1) == 0)
    {
      return result;
    }
  }

  return (a5 ^ a2) < 0x4000 && (a6 ^ a3) < 0x4000;
}

BOOL _s12_RegexParser6SourceV7LocatedVAASQRzlE2eeoiySbAEy_xG_AGtFZAA3ASTV14QuantificationV4KindO_Tt1B5(uint64_t a1, unint64_t a2, unint64_t a3, unsigned __int8 a4, uint64_t a5, uint64_t a6)
{
  if (!a1)
  {
    a1 = a1;
    v10 = 0xE000000000000000;
    v11 = a4;
    if (a4)
    {
      goto LABEL_6;
    }

LABEL_12:
    v13 = 0xE000000000000000;
    if (a1 != a4)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (a1 == 1)
  {
    a1 = 63;
  }

  else
  {
    a1 = 43;
  }

  v10 = 0xE100000000000000;
  v11 = a4;
  if (!a4)
  {
    goto LABEL_12;
  }

LABEL_6:
  if (v11 == 1)
  {
    v12 = 63;
  }

  else
  {
    v12 = 43;
  }

  v13 = 0xE100000000000000;
  if (a1 != v12)
  {
LABEL_15:
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    result = 0;
    if ((v14 & 1) == 0)
    {
      return result;
    }

    return (a5 ^ a2) < 0x4000 && (a6 ^ a3) < 0x4000;
  }

LABEL_13:
  if (v10 != v13)
  {
    goto LABEL_15;
  }

  return (a5 ^ a2) < 0x4000 && (a6 ^ a3) < 0x4000;
}

BOOL static Source.Located<A>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 0;
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v8 = *(type metadata accessor for Source.Located(0, a3, v6, v7) + 28);
    v9 = a1 + v8;
    v10 = *(a1 + v8);
    v11 = (a2 + v8);
    if (!((*v11 ^ v10) >> 14) && (*(v9 + 8) ^ v11[1]) < 0x4000)
    {
      return 1;
    }
  }

  return result;
}

Swift::Int AST.Atom.Callout.PCRE.hashValue.getter()
{
  v1 = v0[1];
  v4 = *v0;
  v5 = v1;
  v6 = v0[2];
  v7 = *(v0 + 6);
  Hasher.init(_seed:)();
  specialized Source.Located<A>.hash(into:)(v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AST.Atom.Callout.PCRE()
{
  v1 = v0[1];
  v4 = *v0;
  v5 = v1;
  v6 = v0[2];
  v7 = *(v0 + 6);
  Hasher.init(_seed:)();
  specialized Source.Located<A>.hash(into:)(v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AST.Atom.Callout.PCRE(uint64_t a1)
{
  v2 = v1[1];
  v5 = *v1;
  v6 = v2;
  v7 = v1[2];
  v8 = *(v1 + 6);
  Hasher.init(_seed:)();
  specialized Source.Located<A>.hash(into:)(v4);
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance AST.Atom.Callout.PCRE(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return _s12_RegexParser6SourceV7LocatedVAASQRzlE2eeoiySbAEy_xG_AGtFZAA3ASTV4AtomV7CalloutO4PCREV8ArgumentO_Tt1B5(v5, v7);
}

__n128 AST.Atom.Callout.OnigurumaNamed.ArgList.leftBrace.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

__n128 AST.Atom.Callout.OnigurumaNamed.ArgList.leftBrace.setter(__n128 *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

uint64_t AST.Atom.Callout.OnigurumaNamed.ArgList.args.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

__n128 AST.Atom.Callout.OnigurumaNamed.ArgList.rightBrace.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + 24);
  *a1 = result;
  return result;
}

__n128 AST.Atom.Callout.OnigurumaNamed.ArgList.rightBrace.setter(__n128 *a1)
{
  result = *a1;
  *(v1 + 24) = *a1;
  return result;
}

__n128 AST.Atom.Callout.OnigurumaNamed.ArgList.init(_:_:_:)@<Q0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = *a1;
  *(a4 + 16) = a2;
  result = *a3;
  *(a4 + 24) = *a3;
  return result;
}

uint64_t AST.Atom.Callout.OnigurumaNamed.ArgList.hash(into:)(uint64_t a1)
{
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  MEMORY[0x1C68E11C0](*v1 >> 14);
  MEMORY[0x1C68E11C0](v3 >> 14);
  specialized Array<A>.hash(into:)(a1, v4);
  MEMORY[0x1C68E11C0](v5 >> 14);
  return MEMORY[0x1C68E11C0](v6 >> 14);
}

Swift::Int AST.Atom.Callout.OnigurumaNamed.ArgList.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  Hasher.init(_seed:)();
  MEMORY[0x1C68E11C0](v1 >> 14);
  MEMORY[0x1C68E11C0](v2 >> 14);
  specialized Array<A>.hash(into:)(v7, v3);
  MEMORY[0x1C68E11C0](v4 >> 14);
  MEMORY[0x1C68E11C0](v5 >> 14);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AST.Atom.Callout.OnigurumaNamed.ArgList(uint64_t a1)
{
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  MEMORY[0x1C68E11C0](*v1 >> 14);
  MEMORY[0x1C68E11C0](v3 >> 14);
  specialized Array<A>.hash(into:)(a1, v4);
  MEMORY[0x1C68E11C0](v5 >> 14);
  return MEMORY[0x1C68E11C0](v6 >> 14);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AST.Atom.Callout.OnigurumaNamed.ArgList(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  Hasher.init(_seed:)();
  MEMORY[0x1C68E11C0](v2 >> 14);
  MEMORY[0x1C68E11C0](v3 >> 14);
  specialized Array<A>.hash(into:)(v8, v4);
  MEMORY[0x1C68E11C0](v5 >> 14);
  MEMORY[0x1C68E11C0](v6 >> 14);
  return Hasher._finalize()();
}

uint64_t AST.Atom.Callout.OnigurumaNamed.name.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + 16);
}

__n128 AST.Atom.Callout.OnigurumaNamed.name.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];

  result = v5;
  *v1 = v5;
  v1[1].n128_u64[0] = v2;
  v1[1].n128_u64[1] = v3;
  return result;
}

uint64_t AST.Atom.Callout.OnigurumaNamed.tag.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[3];
  v7[0] = v1[2];
  v7[1] = v2;
  v4 = v1[5];
  v8 = v1[4];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return outlined init with copy of AST.Atom.Callout.OnigurumaTag?(v7, &v6);
}

__n128 AST.Atom.Callout.OnigurumaNamed.tag.setter(uint64_t a1)
{
  v3 = v1[3];
  v8[0] = v1[2];
  v8[1] = v3;
  v4 = v1[5];
  v8[2] = v1[4];
  v8[3] = v4;
  outlined destroy of AST.Atom.Callout.OnigurumaTag?(v8, &unk_1F402B960, &cache variable for noncanonical specialized generic type metadata for AST.Atom.Callout.OnigurumaTag?);
  v5 = *(a1 + 16);
  v1[2] = *a1;
  v1[3] = v5;
  result = *(a1 + 32);
  v7 = *(a1 + 48);
  v1[4] = result;
  v1[5] = v7;
  return result;
}

uint64_t AST.Atom.Callout.OnigurumaNamed.args.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 128);
  v3 = *(v1 + 112);
  *a1 = *(v1 + 96);
  *(a1 + 16) = v3;
  *(a1 + 32) = v2;
}

__n128 AST.Atom.Callout.OnigurumaNamed.args.setter(uint64_t a1)
{
  v3 = *(a1 + 32);

  result = *a1;
  v5 = *(a1 + 16);
  *(v1 + 96) = *a1;
  *(v1 + 112) = v5;
  *(v1 + 128) = v3;
  return result;
}

__n128 AST.Atom.Callout.OnigurumaNamed.init(_:tag:args:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 8);
  v8 = *(a3 + 32);
  *a4 = *a1;
  *(a4 + 8) = v7;
  *(a4 + 16) = *(a1 + 16);
  memset(v13, 0, sizeof(v13));
  outlined destroy of AST.Atom.Callout.OnigurumaTag?(v13, &unk_1F402B960, &cache variable for noncanonical specialized generic type metadata for AST.Atom.Callout.OnigurumaTag?);
  v9 = a2[1];
  *(a4 + 32) = *a2;
  *(a4 + 48) = v9;
  v10 = a2[3];
  *(a4 + 64) = a2[2];
  *(a4 + 80) = v10;

  result = *a3;
  v12 = *(a3 + 16);
  *(a4 + 96) = *a3;
  *(a4 + 112) = v12;
  *(a4 + 128) = v8;
  return result;
}

void AST.Atom.Callout.OnigurumaNamed.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = v2[2];
  v5 = v2[3];
  v7 = v2[4];
  v6 = v2[5];
  v8 = v2[7];
  v10 = v2[8];
  v9 = v2[9];
  v12 = v2[10];
  v13 = v2[11];
  v14 = v2[12];
  v15 = v2[13];
  v11 = v2[14];
  v16 = v2[15];
  v17 = v2[16];
  String.hash(into:)();
  MEMORY[0x1C68E11C0](v4 >> 14);
  MEMORY[0x1C68E11C0](v5 >> 14);
  if (v8)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68E11C0](v7 >> 14);
    MEMORY[0x1C68E11C0](v6 >> 14);
    String.hash(into:)();
    MEMORY[0x1C68E11C0](v10 >> 14);
    MEMORY[0x1C68E11C0](v9 >> 14);
    MEMORY[0x1C68E11C0](v12 >> 14);
    MEMORY[0x1C68E11C0](v13 >> 14);
    if (v11)
    {
LABEL_3:
      Hasher._combine(_:)(1u);
      MEMORY[0x1C68E11C0](v14 >> 14);
      MEMORY[0x1C68E11C0](v15 >> 14);
      specialized Array<A>.hash(into:)(a1, v11);
      MEMORY[0x1C68E11C0](v16 >> 14);
      MEMORY[0x1C68E11C0](v17 >> 14);
      return;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v11)
    {
      goto LABEL_3;
    }
  }

  Hasher._combine(_:)(0);
}

__n128 AST.Atom.Callout.OnigurumaOfContents.openBraces.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

__n128 AST.Atom.Callout.OnigurumaOfContents.openBraces.setter(__n128 *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

uint64_t AST.Atom.Callout.OnigurumaOfContents.contents.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + 32);
}

__n128 AST.Atom.Callout.OnigurumaOfContents.contents.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];

  result = v5;
  v1[1] = v5;
  v1[2].n128_u64[0] = v2;
  v1[2].n128_u64[1] = v3;
  return result;
}

__n128 AST.Atom.Callout.OnigurumaOfContents.closeBraces.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[3];
  *a1 = result;
  return result;
}

__n128 AST.Atom.Callout.OnigurumaOfContents.closeBraces.setter(__n128 *a1)
{
  result = *a1;
  v1[3] = *a1;
  return result;
}

uint64_t AST.Atom.Callout.OnigurumaOfContents.tag.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[5];
  v7[0] = v1[4];
  v7[1] = v2;
  v4 = v1[7];
  v8 = v1[6];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return outlined init with copy of AST.Atom.Callout.OnigurumaTag?(v7, &v6);
}

__n128 AST.Atom.Callout.OnigurumaOfContents.tag.setter(uint64_t a1)
{
  v3 = v1[5];
  v8[0] = v1[4];
  v8[1] = v3;
  v4 = v1[7];
  v8[2] = v1[6];
  v8[3] = v4;
  outlined destroy of AST.Atom.Callout.OnigurumaTag?(v8, &unk_1F402B960, &cache variable for noncanonical specialized generic type metadata for AST.Atom.Callout.OnigurumaTag?);
  v5 = *(a1 + 16);
  v1[4] = *a1;
  v1[5] = v5;
  result = *(a1 + 32);
  v7 = *(a1 + 48);
  v1[6] = result;
  v1[7] = v7;
  return result;
}

__n128 AST.Atom.Callout.OnigurumaOfContents.direction.getter@<Q0>(uint64_t a1@<X8>)
{
  *a1 = *(v1 + 128);
  result = *(v1 + 136);
  *(a1 + 8) = result;
  return result;
}

__n128 AST.Atom.Callout.OnigurumaOfContents.direction.setter(uint64_t a1)
{
  *(v1 + 128) = *a1;
  result = *(a1 + 8);
  *(v1 + 136) = result;
  return result;
}

__n128 AST.Atom.Callout.OnigurumaOfContents.init(_:_:_:tag:direction:)@<Q0>(_OWORD *a1@<X0>, uint64_t *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v8 = *a2;
  v9 = a2[1];
  v10 = *a5;
  v11 = *(a5 + 1);
  v12 = *(a5 + 2);
  *a6 = *a1;
  *(a6 + 16) = v8;
  *(a6 + 24) = v9;
  v13 = *a3;
  *(a6 + 32) = *(a2 + 1);
  *(a6 + 48) = v13;
  memset(v17, 0, sizeof(v17));
  outlined destroy of AST.Atom.Callout.OnigurumaTag?(v17, &unk_1F402B960, &cache variable for noncanonical specialized generic type metadata for AST.Atom.Callout.OnigurumaTag?);
  v14 = *(a4 + 16);
  *(a6 + 64) = *a4;
  *(a6 + 80) = v14;
  result = *(a4 + 32);
  v16 = *(a4 + 48);
  *(a6 + 96) = result;
  *(a6 + 112) = v16;
  *(a6 + 128) = v10;
  *(a6 + 136) = v11;
  *(a6 + 144) = v12;
  return result;
}

uint64_t AST.Atom.Callout.OnigurumaOfContents.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = *(v1 + 88);
  v10 = *(v1 + 72);
  v11 = *(v1 + 96);
  v12 = *(v1 + 104);
  v13 = *(v1 + 112);
  v14 = *(v1 + 120);
  v15 = *(v1 + 136);
  v16 = *(v1 + 128);
  v17 = *(v1 + 144);
  MEMORY[0x1C68E11C0](*v1 >> 14);
  MEMORY[0x1C68E11C0](v2 >> 14);
  String.hash(into:)();
  MEMORY[0x1C68E11C0](v3 >> 14);
  MEMORY[0x1C68E11C0](v4 >> 14);
  MEMORY[0x1C68E11C0](v5 >> 14);
  MEMORY[0x1C68E11C0](v6 >> 14);
  if (v8)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68E11C0](v7 >> 14);
    MEMORY[0x1C68E11C0](v10 >> 14);
    String.hash(into:)();
    MEMORY[0x1C68E11C0](v11 >> 14);
    MEMORY[0x1C68E11C0](v12 >> 14);
    MEMORY[0x1C68E11C0](v13 >> 14);
    MEMORY[0x1C68E11C0](v14 >> 14);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  MEMORY[0x1C68E1190](v16);
  MEMORY[0x1C68E11C0](v15 >> 14);
  return MEMORY[0x1C68E11C0](v17 >> 14);
}

Swift::Int AST.Atom.Callout.OnigurumaOfContents.hashValue.getter()
{
  Hasher.init(_seed:)();
  AST.Atom.Callout.OnigurumaOfContents.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AST.Atom.Callout.OnigurumaOfContents()
{
  Hasher.init(_seed:)();
  AST.Atom.Callout.OnigurumaOfContents.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AST.Atom.Callout.OnigurumaOfContents(uint64_t a1)
{
  Hasher.init(_seed:)();
  AST.Atom.Callout.OnigurumaOfContents.hash(into:)(v2);
  return Hasher._finalize()();
}

void AST.Atom.Callout.hash(into:)(uint64_t a1, uint64_t a2)
{
  v4 = v2[7];
  v25[6] = v2[6];
  v25[7] = v4;
  v26[0] = v2[8];
  *(v26 + 9) = *(v2 + 137);
  v5 = v2[3];
  v25[2] = v2[2];
  v25[3] = v5;
  v6 = v2[5];
  v25[4] = v2[4];
  v25[5] = v6;
  v7 = v2[1];
  v25[0] = *v2;
  v25[1] = v7;
  v8 = _s12_RegexParser3ASTV4AtomV7CalloutOWOg(v25);
  if (v8)
  {
    if (v8 == 1)
    {
      AST.root.modify();
      v10 = v9;
      MEMORY[0x1C68E1190](1);
      v11 = v10[2];
      v12 = v10[3];
      String.hash(into:)();
      MEMORY[0x1C68E11C0](v11 >> 14);
      MEMORY[0x1C68E11C0](v12 >> 14);
      if (v10[7])
      {
        v13 = v10[4];
        v14 = v10[5];
        v15 = v10[8];
        v16 = v10[9];
        v17 = v10[10];
        v24 = v10[11];
        Hasher._combine(_:)(1u);
        MEMORY[0x1C68E11C0](v13 >> 14);
        MEMORY[0x1C68E11C0](v14 >> 14);
        String.hash(into:)();
        MEMORY[0x1C68E11C0](v15 >> 14);
        MEMORY[0x1C68E11C0](v16 >> 14);
        MEMORY[0x1C68E11C0](v17 >> 14);
        MEMORY[0x1C68E11C0](v24 >> 14);
        v18 = v10[14];
        if (v18)
        {
LABEL_5:
          v20 = v10[15];
          v19 = v10[16];
          v23 = v10 + 12;
          v21 = v10[12];
          v22 = v23[1];
          Hasher._combine(_:)(1u);
          MEMORY[0x1C68E11C0](v21 >> 14);
          MEMORY[0x1C68E11C0](v22 >> 14);
          specialized Array<A>.hash(into:)(a1, v18);
          MEMORY[0x1C68E11C0](v20 >> 14);
          MEMORY[0x1C68E11C0](v19 >> 14);
          return;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        v18 = v10[14];
        if (v18)
        {
          goto LABEL_5;
        }
      }

      Hasher._combine(_:)(0);
    }

    else
    {
      AST.root.modify();
      MEMORY[0x1C68E1190](2);
      AST.Atom.Callout.OnigurumaOfContents.hash(into:)(a1);
    }
  }

  else
  {
    AST.root.modify();
    MEMORY[0x1C68E1190](0);
    specialized Source.Located<A>.hash(into:)(a1);
  }
}

Swift::Int AST.Atom.Callout.hashValue.getter()
{
  Hasher.init(_seed:)();
  AST.Atom.Callout.hash(into:)(v2, v0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AST.Atom.Callout()
{
  Hasher.init(_seed:)();
  AST.Atom.Callout.hash(into:)(v2, v0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AST.Atom.Callout(uint64_t a1)
{
  Hasher.init(_seed:)();
  AST.Atom.Callout.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

uint64_t AST.Atom.Callout.OnigurumaTag.name.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + 32);
}

__n128 AST.Atom.Callout.OnigurumaTag.name.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];

  result = v5;
  v1[1] = v5;
  v1[2].n128_u64[0] = v2;
  v1[2].n128_u64[1] = v3;
  return result;
}

__n128 AST.Atom.Callout.OnigurumaTag.init(_:_:_:)@<Q0>(_OWORD *a1@<X0>, __n128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a2->n128_u64[0];
  v5 = a2->n128_u64[1];
  *a4 = *a1;
  *(a4 + 16) = v4;
  *(a4 + 24) = v5;
  result = a2[1];
  v7 = *a3;
  *(a4 + 32) = result;
  *(a4 + 48) = v7;
  return result;
}

uint64_t AST.Atom.Callout.OnigurumaTag.hash(into:)(uint64_t a1)
{
  v2 = v1[1];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  MEMORY[0x1C68E11C0](*v1 >> 14);
  MEMORY[0x1C68E11C0](v2 >> 14);
  String.hash(into:)();
  MEMORY[0x1C68E11C0](v3 >> 14);
  MEMORY[0x1C68E11C0](v4 >> 14);
  MEMORY[0x1C68E11C0](v5 >> 14);
  return MEMORY[0x1C68E11C0](v6 >> 14);
}

Swift::Int AST.Atom.Callout.OnigurumaTag.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  Hasher.init(_seed:)();
  MEMORY[0x1C68E11C0](v1 >> 14);
  MEMORY[0x1C68E11C0](v2 >> 14);
  String.hash(into:)();
  MEMORY[0x1C68E11C0](v3 >> 14);
  MEMORY[0x1C68E11C0](v4 >> 14);
  MEMORY[0x1C68E11C0](v5 >> 14);
  MEMORY[0x1C68E11C0](v6 >> 14);
  return Hasher._finalize()();
}

__n128 AST.Atom.BacktrackingDirective.kind.getter@<Q0>(uint64_t a1@<X8>)
{
  *a1 = *v1;
  result = *(v1 + 8);
  *(a1 + 8) = result;
  return result;
}

__n128 AST.Atom.BacktrackingDirective.kind.setter(uint64_t a1)
{
  *v1 = *a1;
  result = *(a1 + 8);
  *(v1 + 8) = result;
  return result;
}

uint64_t AST.Atom.BacktrackingDirective.name.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 24);
  *(a1 + 8) = *(v1 + 32);
  *(a1 + 24) = v2;
}

__n128 AST.Atom.BacktrackingDirective.name.setter(uint64_t a1)
{

  result = *a1;
  *(v1 + 40) = *(a1 + 16);
  *(v1 + 24) = result;
  return result;
}

__n128 AST.Atom.BacktrackingDirective.init(_:name:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *a1;
  *(a3 + 8) = *(a1 + 8);

  result = *a2;
  *(a3 + 40) = *(a2 + 16);
  *(a3 + 24) = result;
  return result;
}

void AST.Atom.BacktrackingDirective.hash(into:)(uint64_t a1)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[4];
  v6 = v1[5];
  v5 = v1[6];
  MEMORY[0x1C68E1190](*v1);
  MEMORY[0x1C68E11C0](v2 >> 14);
  MEMORY[0x1C68E11C0](v3 >> 14);
  if (v4)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    MEMORY[0x1C68E11C0](v6 >> 14);
    MEMORY[0x1C68E11C0](v5 >> 14);
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int AST.Atom.BacktrackingDirective.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[4];
  v6 = v0[5];
  v5 = v0[6];
  Hasher.init(_seed:)();
  MEMORY[0x1C68E1190](v1);
  MEMORY[0x1C68E11C0](v2 >> 14);
  MEMORY[0x1C68E11C0](v3 >> 14);
  if (v4)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    MEMORY[0x1C68E11C0](v6 >> 14);
    MEMORY[0x1C68E11C0](v5 >> 14);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AST.Atom.BacktrackingDirective()
{
  v3[72] = *v0;
  v1 = *(v0 + 24);
  v4 = *(v0 + 8);
  v5 = v1;
  v6 = *(v0 + 40);
  Hasher.init(_seed:)();
  AST.Atom.BacktrackingDirective.hash(into:)(v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AST.Atom.BacktrackingDirective(uint64_t a1)
{
  v4[72] = *v1;
  v2 = *(v1 + 24);
  v5 = *(v1 + 8);
  v6 = v2;
  v7 = *(v1 + 40);
  Hasher.init(_seed:)();
  AST.Atom.BacktrackingDirective.hash(into:)(v4);
  return Hasher._finalize()();
}

unint64_t AST.Atom.EscapedBuiltin.scalarValue.getter()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 27;
    if (v1 != 1)
    {
      v5 = 12;
    }

    if (*v0)
    {
      v2 = v5;
    }

    else
    {
      v2 = 7;
    }

    v3 = 0;
  }

  else
  {
    if (v1 <= 0x1E)
    {
      if (((1 << v1) & 0x7FF7FFC0) != 0)
      {
        v2 = 0;
        v3 = 1;
        return v2 | (v3 << 32);
      }

      if (v1 == 5)
      {
        v3 = 0;
        v2 = 9;
        return v2 | (v3 << 32);
      }

      if (v1 == 19)
      {
        v3 = 0;
        v2 = 8;
        return v2 | (v3 << 32);
      }
    }

    v6 = v1 == 3;
    v2 = 10;
    if (!v6)
    {
      v2 = 13;
    }

    v3 = 0;
  }

  return v2 | (v3 << 32);
}

uint64_t AST.Atom.literalCharacterValue.getter()
{
  v1 = type metadata accessor for AST.Atom.Kind(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AST.CustomCharacterClass.Member(v0, v3, type metadata accessor for AST.Atom.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v6 = *v3;
      if (*v3 > 0x7Fu)
      {
        v10 = (*v3 & 0x3F) << 8;
        if (v6 >= 0x800)
        {
          v11 = v6 >> 12;
          v12 = (v10 | (v6 >> 6) & 0x3F) << 8;
          v13 = HIWORD(v6);
          v7 = (((v12 | (v6 >> 12) & 0x3F) << 8) | (v6 >> 18)) - 2122219023;
          v14 = v11 + v12 + 8487393;
          if (!v13)
          {
            v7 = v14;
          }
        }

        else
        {
          v7 = (v6 >> 6) + v10 + 33217;
        }
      }

      else
      {
        v7 = v6 + 1;
      }

      v16 = (v7 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v7) >> 3))));
      return static String._uncheckedFromUTF8(_:)();
    case 2:
    case 3:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
      outlined destroy of AST.CustomCharacterClass.Member(v3, type metadata accessor for AST.Atom.Kind);
      return 0;
    case 4:
      v8 = *v3;
      if (v8 <= 2)
      {
        if (*v3)
        {
          if (v8 == 1)
          {
            v9 = 27;
          }

          else
          {
            v9 = 12;
          }
        }

        else
        {
          v9 = 7;
        }
      }

      else
      {
        if (v8 > 0x1E)
        {
          goto LABEL_21;
        }

        if (((1 << v8) & 0x7FF7FFC0) != 0)
        {
          return 0;
        }

        if (v8 == 5)
        {
          v9 = 9;
          goto LABEL_24;
        }

        if (v8 == 19)
        {
          v9 = 8;
        }

        else
        {
LABEL_21:
          if (v8 == 3)
          {
            v9 = 10;
          }

          else
          {
            v9 = 13;
          }
        }
      }

LABEL_24:
      v16 = v9;
      return static String._uncheckedFromUTF8(_:)();
    case 14:
    case 15:
    case 16:
    case 17:
      return result;
    default:
      return *v3;
  }
}

uint64_t AST.Atom.isValidCharacterClassRangeBound.getter()
{
  v1 = type metadata accessor for AST.Atom.Kind(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = AST.Atom.literalCharacterValue.getter();
  if (!v5)
  {
    outlined init with copy of AST.CustomCharacterClass.Member(v0, v3, type metadata accessor for AST.Atom.Kind);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if ((EnumCaseMultiPayload - 5) < 4 || EnumCaseMultiPayload == 2)
    {
      outlined destroy of AST.CustomCharacterClass.Member(v3, type metadata accessor for AST.Atom.Kind);
      return 1;
    }

    outlined destroy of AST.CustomCharacterClass.Member(v3, type metadata accessor for AST.Atom.Kind);
    return 0;
  }

  v6 = v4;
  v7 = v5;
  if (!Character.hasExactlyOneScalar.getter(v4, v5))
  {

    return 0;
  }

  if ((Character.asciiValue.getter() & 0x100) != 0)
  {
    v10 = String._nfcCodeUnits.getter();
    v11 = specialized Sequence<>.elementsEqual<A>(_:)(v6, v7, v10);

    return v11 & 1;
  }

  else
  {

    return 1;
  }
}

BOOL Character.hasExactlyOneScalar.getter(unint64_t a1, unint64_t a2)
{
  v4 = _StringGuts.validateScalarIndex(_:)(0xFuLL, a1, a2);
  if ((a2 & 0x1000000000000000) != 0)
  {
    v10 = String.UnicodeScalarView._foreignIndex(after:)();
  }

  else
  {
    v5 = v4 >> 16;
    if ((a2 & 0x2000000000000000) != 0)
    {
      v13[0] = a1;
      v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      v7 = *(v13 + v5);
    }

    else
    {
      if ((a1 & 0x1000000000000000) != 0)
      {
        v6 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        v6 = _StringObject.sharedUTF8.getter();
      }

      v7 = *(v6 + v5);
    }

    v8 = v7;
    v9 = __clz(v7 ^ 0xFF) - 24;
    if (v8 >= 0)
    {
      LOBYTE(v9) = 1;
    }

    v10 = (v5 + v9) << 16;
  }

  v11 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v11 = a1 & 0xFFFFFFFFFFFFLL;
  }

  return v10 >> 14 == 4 * v11;
}

uint64_t AST.Atom.literalStringValue.getter()
{
  v1 = type metadata accessor for AST.Atom.Kind(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AST.CustomCharacterClass.Member(v0, v3, type metadata accessor for AST.Atom.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v11 = *v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7UnicodeO6ScalarVGMd, &_ss23_ContiguousArrayStorageCys7UnicodeO6ScalarVGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C0C7E2F0;
      *(inited + 32) = v11;
      v13 = scalarLiteral #1 (_:) in AST.Atom.literalStringValue.getter(inited);
      swift_setDeallocating();
      return v13;
    case 2:
      v8 = *v3;
      v7 = *(v3 + 1);
      v16 = v8;
      v17 = v7;
      v9 = AST.Atom.ScalarSequence.scalarValues.getter();

      v10 = scalarLiteral #1 (_:) in AST.Atom.literalStringValue.getter(v9);

      return v10;
    case 3:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
      outlined destroy of AST.CustomCharacterClass.Member(v3, type metadata accessor for AST.Atom.Kind);
      return 0;
    case 4:
    case 14:
    case 15:
    case 16:
    case 17:
      return result;
    case 5:
      v16 = 0;
      v17 = 0xE000000000000000;
      v6 = 2966364;
      goto LABEL_9;
    case 6:
      v16 = 0;
      v17 = 0xE000000000000000;
      v6 = 2968924;
LABEL_9:
      v14 = 0xE300000000000000;
      goto LABEL_10;
    case 7:
      v16 = 0;
      v17 = 0xE000000000000000;
      v6 = 0x2D435C2D4D5CLL;
      v14 = 0xE600000000000000;
LABEL_10:
      MEMORY[0x1C68E0BF0](v6, v14);
      Character.write<A>(to:)();

      result = v16;
      break;
    default:
      result = *v3;
      break;
  }

  return result;
}

uint64_t scalarLiteral #1 (_:) in AST.Atom.literalStringValue.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v16 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v3 = v16;
    v4 = a1 + 32;
    lazy protocol witness table accessor for type UInt32 and conformance UInt32();
    do
    {
      v4 += 4;
      v5 = String.init<A>(_:radix:uppercase:)();
      v17 = v3;
      v8 = *(v3 + 16);
      v7 = *(v3 + 24);
      if (v8 >= v7 >> 1)
      {
        v10 = v5;
        v11 = v6;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1);
        v6 = v11;
        v5 = v10;
        v3 = v17;
      }

      *(v3 + 16) = v8 + 1;
      v9 = v3 + 16 * v8;
      *(v9 + 32) = v5;
      *(v9 + 40) = v6;
      --v1;
    }

    while (v1);
  }

  swift_getCanonicalSpecializedMetadata();
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &unk_1F402B990, &cache variable for noncanonical specialized generic type metadata for [String], MEMORY[0x1E69E6310]);
  v12 = BidirectionalCollection<>.joined(separator:)();
  v14 = v13;

  MEMORY[0x1C68E0BF0](v12, v14);

  MEMORY[0x1C68E0BF0](125, 0xE100000000000000);
  return 8090972;
}

uint64_t AST.Node.literalStringValue.getter()
{
  v1 = type metadata accessor for AST.Atom(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = 0;
  if (*v0 >> 60 == 8)
  {
    v5 = swift_projectBox();
    outlined init with copy of AST.CustomCharacterClass.Member(v5, v3, type metadata accessor for AST.Atom);
    v6 = AST.Atom.literalStringValue.getter();
    outlined destroy of AST.CustomCharacterClass.Member(v3, type metadata accessor for AST.Atom);
    return v6;
  }

  return result;
}

__n128 AST.Conditional.location.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

__n128 AST.Conditional.location.setter(__n128 *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

uint64_t AST.Conditional.condition.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[6];
  v3 = v1[8];
  v20 = v1[7];
  v21 = v3;
  v4 = v1[8];
  v22 = v1[9];
  v5 = v1[2];
  v6 = v1[4];
  v16 = v1[3];
  v7 = v16;
  v17 = v6;
  v8 = v1[4];
  v9 = v1[6];
  v18 = v1[5];
  v10 = v18;
  v19 = v9;
  v11 = v1[2];
  v15[0] = v1[1];
  v12 = v15[0];
  v15[1] = v11;
  a1[6] = v20;
  a1[7] = v4;
  a1[8] = v1[9];
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v10;
  a1[5] = v2;
  *a1 = v12;
  a1[1] = v5;
  return outlined init with copy of AST.Conditional.Condition(v15, &v14);
}

__n128 AST.Conditional.condition.setter(uint64_t a1)
{
  v3 = v1[8];
  v11[6] = v1[7];
  v11[7] = v3;
  v11[8] = v1[9];
  v4 = v1[4];
  v11[2] = v1[3];
  v11[3] = v4;
  v5 = v1[6];
  v11[4] = v1[5];
  v11[5] = v5;
  v6 = v1[2];
  v11[0] = v1[1];
  v11[1] = v6;
  sub_1C0C61070(v11);
  v7 = *(a1 + 112);
  v1[7] = *(a1 + 96);
  v1[8] = v7;
  v1[9] = *(a1 + 128);
  v8 = *(a1 + 48);
  v1[3] = *(a1 + 32);
  v1[4] = v8;
  v9 = *(a1 + 80);
  v1[5] = *(a1 + 64);
  v1[6] = v9;
  result = *(a1 + 16);
  v1[1] = *a1;
  v1[2] = result;
  return result;
}

uint64_t AST.Conditional.trueBranch.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 160) = v2;
  return result;
}

__n128 AST.Conditional.pipe.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 184);
  result = *(v1 + 168);
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 AST.Conditional.pipe.setter(__n128 *a1)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  *(v1 + 168) = *a1;
  *(v1 + 184) = v2;
  return result;
}

uint64_t AST.Conditional.falseBranch.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 192) = v2;
  return result;
}

__n128 AST.Conditional.init(_:trueBranch:pipe:falseBranch:_:)@<Q0>(__int128 *a1@<X0>, uint64_t *a2@<X1>, __n128 *a3@<X2>, uint64_t *a4@<X3>, _OWORD *a5@<X4>, uint64_t a6@<X8>)
{
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[4];
  *(a6 + 96) = a1[5];
  *(a6 + 112) = v6;
  v9 = a1[8];
  *(a6 + 128) = v7;
  *(a6 + 144) = v9;
  v10 = a1[2];
  v11 = a1[3];
  v12 = *a1;
  *(a6 + 32) = a1[1];
  *(a6 + 48) = v10;
  v13 = *a2;
  v14 = a3[1].n128_u8[0];
  v15 = *a4;
  *(a6 + 64) = v11;
  *(a6 + 80) = v8;
  *a6 = *a5;
  *(a6 + 16) = v12;
  *(a6 + 160) = v13;
  result = *a3;
  *(a6 + 168) = *a3;
  *(a6 + 184) = v14;
  *(a6 + 192) = v15;
  return result;
}

uint64_t AST.Conditional.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 144);
  v5 = *(v1 + 152);
  v6 = *(v1 + 168);
  v9 = *(v1 + 176);
  v7 = *(v1 + 184);
  MEMORY[0x1C68E11C0](*v1 >> 14);
  MEMORY[0x1C68E11C0](v3 >> 14);
  AST.Conditional.Condition.Kind.hash(into:)(a1);
  MEMORY[0x1C68E11C0](v4 >> 14);
  MEMORY[0x1C68E11C0](v5 >> 14);
  AST.Node.hash(into:)(a1);
  if (v7 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68E11C0](v6 >> 14);
    MEMORY[0x1C68E11C0](v9 >> 14);
  }

  return AST.Node.hash(into:)(a1);
}

Swift::Int AST.Conditional.hashValue.getter()
{
  Hasher.init(_seed:)();
  AST.Conditional.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AST.Conditional()
{
  Hasher.init(_seed:)();
  AST.Conditional.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AST.Conditional(uint64_t a1)
{
  Hasher.init(_seed:)();
  AST.Conditional.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t AST.Conditional._dumpBase.getter()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 192);
  _StringGuts.grow(_:)(21);

  v3 = lazy protocol witness table accessor for type AST.Conditional.Condition and conformance AST.Conditional.Condition();
  v4 = (*(v3 + 24))(&type metadata for AST.Conditional.Condition, v3);
  MEMORY[0x1C68E0BF0](v4);

  MEMORY[0x1C68E0BF0](0x206E65687420, 0xE600000000000000);
  v5 = specialized _ASTPrintable._dump()(v1);
  MEMORY[0x1C68E0BF0](v5);

  MEMORY[0x1C68E0BF0](0x2065736C6520, 0xE600000000000000);
  v6 = specialized _ASTPrintable._dump()(v2);
  MEMORY[0x1C68E0BF0](v6);

  return 2123369;
}

uint64_t AST.Conditional.Condition.Kind.hash(into:)(uint64_t a1)
{
  v3 = v1[5];
  v33[4] = v1[4];
  v33[5] = v3;
  v4 = v1[7];
  v33[6] = v1[6];
  v33[7] = v4;
  v5 = v1[1];
  v33[0] = *v1;
  v33[1] = v5;
  v6 = v1[3];
  v33[2] = v1[2];
  v33[3] = v6;
  v7 = _s12_RegexParser3ASTV11ConditionalV9ConditionV4KindOWOg(v33);
  if (v7 <= 2)
  {
    if (!v7)
    {
      _s12_RegexParser3ASTV11ConditionalV9ConditionV4KindOWOi_(v33);
      v8 = 0;
      goto LABEL_9;
    }

    if (v7 == 1)
    {
      _s12_RegexParser3ASTV11ConditionalV9ConditionV4KindOWOi_(v33);
      v8 = 2;
LABEL_9:
      MEMORY[0x1C68E1190](v8);
      return AST.Reference.hash(into:)(a1);
    }

    v17 = _s12_RegexParser3ASTV11ConditionalV9ConditionV4KindOWOi_(v33);
    MEMORY[0x1C68E1190](4);
    v18 = *v17;
    v19 = *(v17 + 1);
    v20 = *(v17 + 2);
    v21 = *(v17 + 3);
    v22 = v17[32];
    v23 = *(v17 + 5);
    v24 = *(v17 + 6);
    v25 = v17[64];
    v26 = *(v17 + 10);
    v29 = *(v17 + 7);
    v30 = *(v17 + 9);
    v27 = *(v17 + 11);
    v28 = *(v17 + 12);
    v31 = v26;
    v32 = v27;
    MEMORY[0x1C68E1190](v18);
    MEMORY[0x1C68E11C0](v19 >> 14);
    MEMORY[0x1C68E11C0](v20 >> 14);
    if (v22 == 1)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      Hasher._combine(_:)(1u);
      MEMORY[0x1C68E1190](v21);
    }

    MEMORY[0x1C68E11C0](v23 >> 14);
    MEMORY[0x1C68E11C0](v24 >> 14);
    if (v25)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      Hasher._combine(_:)(1u);
      MEMORY[0x1C68E1190](v29);
    }

    MEMORY[0x1C68E11C0](v30 >> 14);
    MEMORY[0x1C68E11C0](v31 >> 14);
    MEMORY[0x1C68E11C0](v32 >> 14);
    v16 = v28 >> 14;
    return MEMORY[0x1C68E11C0](v16);
  }

  if (v7 == 3)
  {
    v11 = _s12_RegexParser3ASTV11ConditionalV9ConditionV4KindOWOi_(v33);
    MEMORY[0x1C68E1190](5);
    v12 = v11[14];
    v13 = v11[15];
    v14 = v11[11];
    v15 = v11[12];
    AST.Group.Kind.hash(into:)(a1);
    MEMORY[0x1C68E11C0](v14 >> 14);
    MEMORY[0x1C68E11C0](v15 >> 14);
    AST.Node.hash(into:)(a1);
    MEMORY[0x1C68E11C0](v12 >> 14);
    v16 = v13 >> 14;
    return MEMORY[0x1C68E11C0](v16);
  }

  if (v7 == 4)
  {
    v9 = 1;
  }

  else
  {
    v9 = 3;
  }

  return MEMORY[0x1C68E1190](v9);
}

Swift::Int AST.Conditional.Condition.Kind.hashValue.getter()
{
  Hasher.init(_seed:)();
  AST.Conditional.Condition.Kind.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t *AST.Conditional.Condition.kind.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[5];
  v14 = v1[4];
  v2 = v14;
  v15 = v3;
  v5 = v1[7];
  v16 = v1[6];
  v4 = v16;
  v17 = v5;
  v6 = v1[1];
  v11[0] = *v1;
  v11[1] = v6;
  v8 = v1[3];
  v12 = v1[2];
  v7 = v12;
  v13 = v8;
  *a1 = v11[0];
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  a1[7] = v5;
  return outlined init with copy of AST.Conditional.Condition.Kind(v11, v10);
}

__n128 AST.Conditional.Condition.kind.setter(uint64_t a1)
{
  v3 = v1[5];
  v12[4] = v1[4];
  v12[5] = v3;
  v4 = v1[7];
  v12[6] = v1[6];
  v12[7] = v4;
  v5 = v1[1];
  v12[0] = *v1;
  v12[1] = v5;
  v6 = v1[3];
  v12[2] = v1[2];
  v12[3] = v6;
  sub_1C0C61070(v12);
  v7 = *(a1 + 80);
  v1[4] = *(a1 + 64);
  v1[5] = v7;
  v8 = *(a1 + 112);
  v1[6] = *(a1 + 96);
  v1[7] = v8;
  v9 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v9;
  result = *(a1 + 32);
  v11 = *(a1 + 48);
  v1[2] = result;
  v1[3] = v11;
  return result;
}

__n128 AST.Conditional.Condition.location.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[8];
  *a1 = result;
  return result;
}

__n128 AST.Conditional.Condition.location.setter(__n128 *a1)
{
  result = *a1;
  v1[8] = *a1;
  return result;
}

__n128 AST.Conditional.Condition.init(_:_:)@<Q0>(_OWORD *a1@<X0>, __n128 *a2@<X1>, _OWORD *a3@<X8>)
{
  v3 = a1[5];
  a3[4] = a1[4];
  a3[5] = v3;
  v4 = a1[7];
  a3[6] = a1[6];
  a3[7] = v4;
  v5 = a1[1];
  *a3 = *a1;
  a3[1] = v5;
  v6 = a1[3];
  a3[2] = a1[2];
  a3[3] = v6;
  result = *a2;
  a3[8] = *a2;
  return result;
}

uint64_t AST.Conditional.Condition.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 128);
  v3 = *(v1 + 136);
  AST.Conditional.Condition.Kind.hash(into:)(a1);
  MEMORY[0x1C68E11C0](v2 >> 14);
  return MEMORY[0x1C68E11C0](v3 >> 14);
}

Swift::Int AST.Conditional.Condition.hashValue.getter()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  Hasher.init(_seed:)();
  AST.Conditional.Condition.Kind.hash(into:)(v4);
  MEMORY[0x1C68E11C0](v1 >> 14);
  MEMORY[0x1C68E11C0](v2 >> 14);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AST.Conditional.Condition()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  Hasher.init(_seed:)();
  AST.Conditional.Condition.Kind.hash(into:)(v4);
  MEMORY[0x1C68E11C0](v1 >> 14);
  MEMORY[0x1C68E11C0](v2 >> 14);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AST.Conditional.Condition(uint64_t a1)
{
  v2 = *(v1 + 128);
  v3 = *(v1 + 136);
  AST.Conditional.Condition.Kind.hash(into:)(a1);
  MEMORY[0x1C68E11C0](v2 >> 14);
  return MEMORY[0x1C68E11C0](v3 >> 14);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AST.Conditional.Condition(uint64_t a1)
{
  v2 = *(v1 + 128);
  v3 = *(v1 + 136);
  Hasher.init(_seed:)();
  AST.Conditional.Condition.Kind.hash(into:)(v5);
  MEMORY[0x1C68E11C0](v2 >> 14);
  MEMORY[0x1C68E11C0](v3 >> 14);
  return Hasher._finalize()();
}

__n128 AST.Conditional.Condition.PCREVersionNumber.major.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1->n128_u8[8];
  a1->n128_u64[0] = v1->n128_u64[0];
  a1->n128_u8[8] = v2;
  result = v1[1];
  a1[1] = result;
  return result;
}

__n128 AST.Conditional.Condition.PCREVersionNumber.major.setter(__n128 *a1)
{
  v2 = a1->n128_u8[8];
  v1->n128_u64[0] = a1->n128_u64[0];
  v1->n128_u8[8] = v2;
  result = a1[1];
  v1[1] = result;
  return result;
}

__n128 AST.Conditional.Condition.PCREVersionNumber.minor.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[2].n128_u8[8];
  a1->n128_u64[0] = v1[2].n128_u64[0];
  a1->n128_u8[8] = v2;
  result = v1[3];
  a1[1] = result;
  return result;
}

__n128 AST.Conditional.Condition.PCREVersionNumber.minor.setter(__n128 *a1)
{
  v2 = a1->n128_u8[8];
  v1[2].n128_u64[0] = a1->n128_u64[0];
  v1[2].n128_u8[8] = v2;
  result = a1[1];
  v1[3] = result;
  return result;
}

__n128 AST.Conditional.Condition.PCREVersionNumber.location.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[4];
  *a1 = result;
  return result;
}

__n128 AST.Conditional.Condition.PCREVersionNumber.location.setter(__n128 *a1)
{
  result = *a1;
  v1[4] = *a1;
  return result;
}

__n128 AST.Conditional.Condition.PCREVersionNumber.init(major:minor:_:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a2->n128_u64[0];
  v4 = *(a1 + 8);
  v8 = a2->n128_u8[8];
  *a4 = *a1;
  *(a4 + 8) = v4;
  *(a4 + 16) = *(a1 + 16);
  *(a4 + 32) = v5;
  *(a4 + 40) = v8;
  result = a2[1];
  v7 = *a3;
  *(a4 + 48) = result;
  *(a4 + 64) = v7;
  return result;
}

uint64_t AST.Conditional.Condition.PCREVersionNumber.hash(into:)()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = *(v0 + 40);
  v6 = v0[6];
  v5 = v0[7];
  v8 = v0[8];
  v7 = v0[9];
  if (*(v0 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v9 = *v0;
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68E1190](v9);
  }

  MEMORY[0x1C68E11C0](v2 >> 14);
  MEMORY[0x1C68E11C0](v1 >> 14);
  if (v4)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68E1190](v3);
  }

  MEMORY[0x1C68E11C0](v6 >> 14);
  MEMORY[0x1C68E11C0](v5 >> 14);
  MEMORY[0x1C68E11C0](v8 >> 14);
  return MEMORY[0x1C68E11C0](v7 >> 14);
}

__n128 AST.Conditional.Condition.PCREVersionCheck.kind.getter@<Q0>(uint64_t a1@<X8>)
{
  *a1 = *v1;
  result = *(v1 + 8);
  *(a1 + 8) = result;
  return result;
}

__n128 AST.Conditional.Condition.PCREVersionCheck.kind.setter(uint64_t a1)
{
  *v1 = *a1;
  result = *(a1 + 8);
  *(v1 + 8) = result;
  return result;
}

__n128 AST.Conditional.Condition.PCREVersionCheck.num.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 40);
  v3 = *(v1 + 72);
  *(a1 + 32) = *(v1 + 56);
  *(a1 + 48) = v3;
  *(a1 + 64) = *(v1 + 88);
  *a1 = *(v1 + 24);
  *(a1 + 16) = result;
  return result;
}

__n128 AST.Conditional.Condition.PCREVersionCheck.num.setter(__int128 *a1)
{
  v2 = *a1;
  *(v1 + 40) = a1[1];
  v3 = a1[3];
  *(v1 + 56) = a1[2];
  *(v1 + 72) = v3;
  result = a1[4];
  *(v1 + 88) = result;
  *(v1 + 24) = v2;
  return result;
}

__n128 AST.Conditional.Condition.PCREVersionCheck.init(_:_:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 8) = *(a1 + 8);
  v3 = *a2;
  *(a3 + 40) = a2[1];
  v4 = a2[3];
  *(a3 + 56) = a2[2];
  *(a3 + 72) = v4;
  result = a2[4];
  *(a3 + 88) = result;
  *a3 = *a1;
  *(a3 + 24) = v3;
  return result;
}

uint64_t AST.Conditional.Condition.PCREVersionCheck.hash(into:)()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = v0[32];
  v6 = *(v0 + 5);
  v5 = *(v0 + 6);
  v7 = v0[64];
  v9 = *(v0 + 9);
  v8 = *(v0 + 10);
  v11 = *(v0 + 7);
  v12 = *(v0 + 11);
  v13 = *(v0 + 12);
  MEMORY[0x1C68E1190](*v0);
  MEMORY[0x1C68E11C0](v1 >> 14);
  MEMORY[0x1C68E11C0](v2 >> 14);
  if (v4 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68E1190](v3);
  }

  MEMORY[0x1C68E11C0](v6 >> 14);
  MEMORY[0x1C68E11C0](v5 >> 14);
  if (v7)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68E1190](v11);
  }

  MEMORY[0x1C68E11C0](v9 >> 14);
  MEMORY[0x1C68E11C0](v8 >> 14);
  MEMORY[0x1C68E11C0](v12 >> 14);
  return MEMORY[0x1C68E11C0](v13 >> 14);
}

Swift::Int AST.Conditional.Condition.PCREVersionCheck.hashValue.getter()
{
  Hasher.init(_seed:)();
  AST.Conditional.Condition.PCREVersionCheck.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AST.Conditional.Condition.PCREVersionCheck()
{
  Hasher.init(_seed:)();
  AST.Conditional.Condition.PCREVersionCheck.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AST.Conditional.Condition.PCREVersionCheck(uint64_t a1)
{
  Hasher.init(_seed:)();
  AST.Conditional.Condition.PCREVersionCheck.hash(into:)();
  return Hasher._finalize()();
}

__n128 AST.CustomCharacterClass.start.getter@<Q0>(uint64_t a1@<X8>)
{
  *a1 = *v1;
  result = *(v1 + 8);
  *(a1 + 8) = result;
  return result;
}

__n128 AST.CustomCharacterClass.start.setter(uint64_t a1)
{
  *v1 = *a1;
  result = *(a1 + 8);
  *(v1 + 8) = result;
  return result;
}

uint64_t AST.CustomCharacterClass.members.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

__n128 AST.CustomCharacterClass.location.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[2];
  *a1 = result;
  return result;
}

__n128 AST.CustomCharacterClass.init(_:_:_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = *a1;
  *(a4 + 8) = *(a1 + 8);
  *(a4 + 24) = a2;
  result = *a3;
  *(a4 + 32) = *a3;
  return result;
}

uint64_t AST.CustomCharacterClass.Member.hash(into:)(uint64_t a1)
{
  v56 = type metadata accessor for AST.Atom(0);
  MEMORY[0x1EEE9AC00](v56);
  v4 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AST.CustomCharacterClass.Range(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AST.CustomCharacterClass.Member(0);
  v55 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v53 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v53 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = (&v53 - v18);
  outlined init with copy of AST.CustomCharacterClass.Member(v1, &v53 - v18, type metadata accessor for AST.CustomCharacterClass.Member);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v31 = v19[2];
      v30 = v19[3];
      v32 = 3;
    }

    else
    {
      if (EnumCaseMultiPayload != 4)
      {
        v44 = *v19;
        v45 = v19[3];
        v56 = v19[2];
        v46 = v19[4];
        MEMORY[0x1C68E1190](5);
        MEMORY[0x1C68E1190](*(v44 + 16));
        v47 = *(v44 + 16);
        if (v47)
        {
          v54 = v45;
          v48 = v44 + ((*(v55 + 80) + 32) & ~*(v55 + 80));
          v49 = *(v55 + 72);
          do
          {
            outlined init with copy of AST.CustomCharacterClass.Member(v48, v14, type metadata accessor for AST.CustomCharacterClass.Member);
            AST.CustomCharacterClass.Member.hash(into:)(a1);
            outlined destroy of AST.CustomCharacterClass.Member(v14, type metadata accessor for AST.CustomCharacterClass.Member);
            v48 += v49;
            --v47;
          }

          while (v47);

          v45 = v54;
        }

        else
        {
        }

        String.hash(into:)();

        MEMORY[0x1C68E11C0](v56 >> 14);
        MEMORY[0x1C68E11C0](v45 >> 14);
        MEMORY[0x1C68E1190](*(v46 + 16));
        v50 = *(v46 + 16);
        if (v50)
        {
          v51 = v46 + ((*(v55 + 80) + 32) & ~*(v55 + 80));
          v52 = *(v55 + 72);
          do
          {
            outlined init with copy of AST.CustomCharacterClass.Member(v51, v11, type metadata accessor for AST.CustomCharacterClass.Member);
            AST.CustomCharacterClass.Member.hash(into:)(a1);
            outlined destroy of AST.CustomCharacterClass.Member(v11, type metadata accessor for AST.CustomCharacterClass.Member);
            v51 += v52;
            --v50;
          }

          while (v50);
        }
      }

      v31 = v19[2];
      v30 = v19[3];
      v32 = 4;
    }

    MEMORY[0x1C68E1190](v32);
    String.hash(into:)();
    MEMORY[0x1C68E11C0](v31 >> 14);
    MEMORY[0x1C68E11C0](v30 >> 14);
  }

  if (!EnumCaseMultiPayload)
  {
    v33 = v19[1];
    v34 = v19[2];
    v35 = v19[3];
    v36 = v19[4];
    v37 = v19[5];
    MEMORY[0x1C68E1190](0);
    String.hash(into:)();

    MEMORY[0x1C68E11C0](v33 >> 14);
    MEMORY[0x1C68E11C0](v34 >> 14);
    MEMORY[0x1C68E1190](*(v35 + 16));
    v38 = *(v35 + 16);
    if (v38)
    {
      v39 = v35 + ((*(v55 + 80) + 32) & ~*(v55 + 80));
      v40 = *(v55 + 72);
      do
      {
        outlined init with copy of AST.CustomCharacterClass.Member(v39, v17, type metadata accessor for AST.CustomCharacterClass.Member);
        AST.CustomCharacterClass.Member.hash(into:)(a1);
        outlined destroy of AST.CustomCharacterClass.Member(v17, type metadata accessor for AST.CustomCharacterClass.Member);
        v39 += v40;
        --v38;
      }

      while (v38);
    }

    MEMORY[0x1C68E11C0](v36 >> 14);
    MEMORY[0x1C68E11C0](v37 >> 14);
  }

  if (EnumCaseMultiPayload == 1)
  {
    outlined init with take of AST.Atom.Kind(v19, v7, type metadata accessor for AST.CustomCharacterClass.Range);
    MEMORY[0x1C68E1190](1);
    AST.Atom.Kind.hash(into:)(a1);
    v21 = v56;
    v22 = &v7[*(v56 + 20)];
    v23 = *(v22 + 1);
    MEMORY[0x1C68E11C0](*v22 >> 14);
    MEMORY[0x1C68E11C0](v23 >> 14);
    v24 = &v7[v5[5]];
    v25 = *(v24 + 1);
    MEMORY[0x1C68E11C0](*v24 >> 14);
    MEMORY[0x1C68E11C0](v25 >> 14);
    v26 = &v7[v5[6]];
    AST.Atom.Kind.hash(into:)(a1);
    v27 = &v26[*(v21 + 20)];
    v28 = *(v27 + 1);
    MEMORY[0x1C68E11C0](*v27 >> 14);
    MEMORY[0x1C68E11C0](v28 >> 14);
    specialized Array<A>.hash(into:)(a1, *&v7[v5[7]]);
    return outlined destroy of AST.CustomCharacterClass.Member(v7, type metadata accessor for AST.CustomCharacterClass.Range);
  }

  else
  {
    outlined init with take of AST.Atom.Kind(v19, v4, type metadata accessor for AST.Atom);
    MEMORY[0x1C68E1190](2);
    AST.Atom.Kind.hash(into:)(a1);
    v41 = &v4[*(v56 + 20)];
    v42 = *v41;
    v43 = *(v41 + 1);
    outlined destroy of AST.CustomCharacterClass.Member(v4, type metadata accessor for AST.Atom);
    MEMORY[0x1C68E11C0](v42 >> 14);
    return MEMORY[0x1C68E11C0](v43 >> 14);
  }
}

__n128 AST.CustomCharacterClass.Range.dashLoc.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + *(type metadata accessor for AST.CustomCharacterClass.Range(0) + 20));
  *a1 = result;
  return result;
}

uint64_t AST.CustomCharacterClass.Range.dashLoc.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = type metadata accessor for AST.CustomCharacterClass.Range(0);
  v5 = (v1 + *(result + 20));
  *v5 = v2;
  v5[1] = v3;
  return result;
}

uint64_t AST.CustomCharacterClass.Range.trivia.getter()
{
  type metadata accessor for AST.CustomCharacterClass.Range(0);
}

uint64_t AST.CustomCharacterClass.Range.trivia.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AST.CustomCharacterClass.Range(0) + 28);

  *(v1 + v3) = a1;
  return result;
}

uint64_t AST.CustomCharacterClass.Range.init(_:_:_:trivia:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a2;
  v9 = a2[1];
  outlined init with take of AST.Atom.Kind(a1, a5, type metadata accessor for AST.Atom);
  v10 = type metadata accessor for AST.CustomCharacterClass.Range(0);
  v11 = (a5 + v10[5]);
  *v11 = v8;
  v11[1] = v9;
  result = outlined init with take of AST.Atom.Kind(a3, a5 + v10[6], type metadata accessor for AST.Atom);
  *(a5 + v10[7]) = a4;
  return result;
}

uint64_t AST.CustomCharacterClass.Range.location.getter@<X0>(uint64x2_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AST.Atom(0) + 20));
  result = type metadata accessor for AST.CustomCharacterClass.Range(0);
  v5 = *v3;
  v6.i64[0] = *(v3->i64 + *(result + 24));
  v6.i64[1] = v3->i64[1];
  v5.i64[1] = *(&v3->i64[1] + *(result + 24));
  v7 = vbslq_s8(vcgtq_u64(vshrq_n_u64(*v3, 0xEuLL), vshrq_n_u64(*(v3 + *(result + 24)), 0xEuLL)), v6, v5);
  v8 = vshrq_n_u64(v7, 0xEuLL);
  if (vmovn_s64(vcgtq_u64(v8, vdupq_laneq_s64(v8, 1))).u8[0])
  {
    __break(1u);
  }

  else
  {
    *a1 = v7;
  }

  return result;
}

uint64_t AST.CustomCharacterClass.Range.hash(into:)(uint64_t a1)
{
  v2 = v1;
  AST.Atom.Kind.hash(into:)(a1);
  v4 = type metadata accessor for AST.Atom(0);
  v5 = (v1 + *(v4 + 20));
  v6 = v5[1];
  MEMORY[0x1C68E11C0](*v5 >> 14);
  MEMORY[0x1C68E11C0](v6 >> 14);
  v7 = type metadata accessor for AST.CustomCharacterClass.Range(0);
  v8 = (v1 + v7[5]);
  v9 = v8[1];
  MEMORY[0x1C68E11C0](*v8 >> 14);
  MEMORY[0x1C68E11C0](v9 >> 14);
  v10 = v1 + v7[6];
  AST.Atom.Kind.hash(into:)(a1);
  v11 = (v10 + *(v4 + 20));
  v12 = v11[1];
  MEMORY[0x1C68E11C0](*v11 >> 14);
  MEMORY[0x1C68E11C0](v12 >> 14);
  return specialized Array<A>.hash(into:)(a1, *(v2 + v7[7]));
}

Swift::Int AST.Atom.Kind.hashValue.getter(void (*a1)(void *))
{
  Hasher.init(_seed:)();
  a1(v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AST.Atom.Kind(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  Hasher.init(_seed:)();
  a3(v5);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AST.Atom.Kind(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

_RegexParser::AST::CustomCharacterClass::SetOp_optional __swiftcall AST.CustomCharacterClass.SetOp.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AST.CustomCharacterClass.SetOp.init(rawValue:), v3);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AST.CustomCharacterClass.SetOp(char *a1, char *a2)
{
  if (qword_1C0C83B30[*a1] == qword_1C0C83B30[*a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AST.CustomCharacterClass.SetOp()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AST.CustomCharacterClass.SetOp(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AST.CustomCharacterClass.SetOp(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

_RegexParser::AST::CustomCharacterClass::Start_optional __swiftcall AST.CustomCharacterClass.Start.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AST.CustomCharacterClass.Start.init(rawValue:), v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *v4 = v7;
  return result;
}

uint64_t AST.CustomCharacterClass.Start.rawValue.getter()
{
  if (*v0)
  {
    return 24155;
  }

  else
  {
    return 91;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AST.CustomCharacterClass.Start(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 24155;
  }

  else
  {
    v3 = 91;
  }

  if (v2)
  {
    v4 = 0xE100000000000000;
  }

  else
  {
    v4 = 0xE200000000000000;
  }

  if (*a2)
  {
    v5 = 24155;
  }

  else
  {
    v5 = 91;
  }

  if (*a2)
  {
    v6 = 0xE200000000000000;
  }

  else
  {
    v6 = 0xE100000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance AST.CustomCharacterClass.Start@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AST.CustomCharacterClass.Start.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance AST.CustomCharacterClass.Start(uint64_t *a1@<X8>)
{
  v2 = 91;
  if (*v1)
  {
    v2 = 24155;
  }

  v3 = 0xE100000000000000;
  if (*v1)
  {
    v3 = 0xE200000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AST.CustomCharacterClass.Start()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AST.CustomCharacterClass.Start(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AST.CustomCharacterClass.Start(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t AST.CustomCharacterClass.hash(into:)(uint64_t a1)
{
  v3 = type metadata accessor for AST.CustomCharacterClass.Member(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1[1];
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = v1[5];
  String.hash(into:)();

  MEMORY[0x1C68E11C0](v7 >> 14);
  MEMORY[0x1C68E11C0](v8 >> 14);
  MEMORY[0x1C68E1190](*(v9 + 16));
  v12 = *(v9 + 16);
  if (v12)
  {
    v13 = v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v14 = *(v4 + 72);
    do
    {
      outlined init with copy of AST.CustomCharacterClass.Member(v13, v6, type metadata accessor for AST.CustomCharacterClass.Member);
      AST.CustomCharacterClass.Member.hash(into:)(a1);
      outlined destroy of AST.CustomCharacterClass.Member(v6, type metadata accessor for AST.CustomCharacterClass.Member);
      v13 += v14;
      --v12;
    }

    while (v12);
  }

  MEMORY[0x1C68E11C0](v10 >> 14);
  return MEMORY[0x1C68E11C0](v11 >> 14);
}

Swift::Int AST.CustomCharacterClass.hashValue.getter()
{
  v1 = *(v0 + 3);
  v4 = *v0;
  v5 = *(v0 + 8);
  v6 = v1;
  v7 = *(v0 + 2);
  Hasher.init(_seed:)();
  AST.CustomCharacterClass.hash(into:)(v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AST.CustomCharacterClass()
{
  v1 = *(v0 + 3);
  v4 = *v0;
  v5 = *(v0 + 8);
  v6 = v1;
  v7 = *(v0 + 2);
  Hasher.init(_seed:)();
  AST.CustomCharacterClass.hash(into:)(v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AST.CustomCharacterClass(uint64_t a1)
{
  v2 = *(v1 + 3);
  v5 = *v1;
  v6 = *(v1 + 8);
  v7 = v2;
  v8 = *(v1 + 2);
  Hasher.init(_seed:)();
  AST.CustomCharacterClass.hash(into:)(v4);
  return Hasher._finalize()();
}

uint64_t AST.CustomCharacterClass.isInverted.getter()
{
  if (*v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v1 & 1;
}

BOOL AST.CustomCharacterClass.Member.isTrivia.getter()
{
  v1 = type metadata accessor for AST.CustomCharacterClass.Member(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AST.CustomCharacterClass.Member(v0, v3, type metadata accessor for AST.CustomCharacterClass.Member);
  v4 = swift_getEnumCaseMultiPayload() == 4;
  outlined destroy of AST.CustomCharacterClass.Member(v3, type metadata accessor for AST.CustomCharacterClass.Member);
  return v4;
}

uint64_t AST.CustomCharacterClass.Member.asTrivia.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for AST.CustomCharacterClass.Member(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AST.CustomCharacterClass.Member(v2, v6, type metadata accessor for AST.CustomCharacterClass.Member);
  result = swift_getEnumCaseMultiPayload();
  if (result == 4)
  {
    v8 = *v6;
    v9 = *(v6 + 1);
    v10 = *(v6 + 1);
  }

  else
  {
    result = outlined destroy of AST.CustomCharacterClass.Member(v6, type metadata accessor for AST.CustomCharacterClass.Member);
    v8 = 0;
    v9 = 0;
    v10 = 0uLL;
  }

  *a1 = v8;
  *(a1 + 8) = v9;
  *(a1 + 16) = v10;
  return result;
}

BOOL AST.CustomCharacterClass.Member.isSemantic.getter()
{
  v1 = type metadata accessor for AST.CustomCharacterClass.Member(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AST.CustomCharacterClass.Member(v0, v3, type metadata accessor for AST.CustomCharacterClass.Member);
  v4 = swift_getEnumCaseMultiPayload() != 4;
  outlined destroy of AST.CustomCharacterClass.Member(v3, type metadata accessor for AST.CustomCharacterClass.Member);
  return v4;
}

uint64_t AST.CustomCharacterClass.Member.location.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = v1;
  v38 = a1;
  v3 = type metadata accessor for AST.Atom(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AST.CustomCharacterClass.Range(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AST.CustomCharacterClass.Member(0);
  v37 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v36 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v35 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v35 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v35 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v35 - v21;
  outlined init with copy of AST.CustomCharacterClass.Member(v2, &v35 - v21, type metadata accessor for AST.CustomCharacterClass.Member);
  LODWORD(result) = swift_getEnumCaseMultiPayload();
  if (result <= 2)
  {
    if (!result)
    {
      v27 = *(v22 + 32);
      v28 = *(v22 + 40);
      goto LABEL_31;
    }

    if (result != 1)
    {
      outlined init with take of AST.Atom.Kind(v22, v5, type metadata accessor for AST.Atom);
      v29 = &v5[*(v3 + 20)];
      v27 = *v29;
      v28 = v29[1];
      result = outlined destroy of AST.CustomCharacterClass.Member(v5, type metadata accessor for AST.Atom);
LABEL_32:
      v34 = v38;
      *v38 = v27;
      v34[1] = v28;
      return result;
    }

    outlined init with take of AST.Atom.Kind(v22, v8, type metadata accessor for AST.CustomCharacterClass.Range);
    v24 = &v8[*(v3 + 20)];
    v22 = *v24;
    v25 = v24[1];
    v26 = (v24 + *(v6 + 24));
    v14 = *v26;
    v17 = v26[1];
    result = outlined destroy of AST.CustomCharacterClass.Member(v8, type metadata accessor for AST.CustomCharacterClass.Range);
    if (v14 >> 14 >= v22 >> 14)
    {
      v27 = v22;
    }

    else
    {
      v27 = v14;
    }

    if (v17 >> 14 >= v25 >> 14)
    {
      v28 = v17;
    }

    else
    {
      v28 = v25;
    }

    if (v28 >> 14 >= v27 >> 14)
    {
      goto LABEL_32;
    }

    __break(1u);
  }

  if (result == 3 || result == 4)
  {
    v27 = *(v22 + 16);
    v28 = *(v22 + 24);
LABEL_31:

    goto LABEL_32;
  }

  v27 = *(v22 + 16);
  v28 = *(v22 + 24);
  v30 = *(v22 + 32);
  if (!*(*v22 + 16))
  {
    goto LABEL_30;
  }

  v31 = v37;
  outlined init with copy of AST.CustomCharacterClass.Member(*v22 + ((*(v37 + 80) + 32) & ~*(v37 + 80)), v17, type metadata accessor for AST.CustomCharacterClass.Member);

  outlined init with take of AST.Atom.Kind(v17, v20, type metadata accessor for AST.CustomCharacterClass.Member);
  AST.CustomCharacterClass.Member.location.getter(&v39);
  result = outlined destroy of AST.CustomCharacterClass.Member(v20, type metadata accessor for AST.CustomCharacterClass.Member);
  if (v39 >> 14 < v27 >> 14)
  {
    v27 = v39;
  }

  if (v40 >> 14 >= v28 >> 14)
  {
    v28 = v40;
  }

  if (v28 >> 14 >= v27 >> 14)
  {
    v32 = *(v30 + 16);
    if (v32)
    {
      while (1)
      {
        v33 = v36;
        outlined init with copy of AST.CustomCharacterClass.Member(v30 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * (v32 - 1), v36, type metadata accessor for AST.CustomCharacterClass.Member);

        outlined init with take of AST.Atom.Kind(v33, v14, type metadata accessor for AST.CustomCharacterClass.Member);
        AST.CustomCharacterClass.Member.location.getter(&v39);
        result = outlined destroy of AST.CustomCharacterClass.Member(v14, type metadata accessor for AST.CustomCharacterClass.Member);
        if (v39 >> 14 < v27 >> 14)
        {
          v27 = v39;
        }

        if (v40 >> 14 >= v28 >> 14)
        {
          v28 = v40;
        }

        if (v28 >> 14 >= v27 >> 14)
        {
          goto LABEL_32;
        }

        __break(1u);
LABEL_30:

        v31 = v37;
        v32 = *(v30 + 16);
        if (!v32)
        {
          goto LABEL_31;
        }
      }
    }

    goto LABEL_31;
  }

  __break(1u);
  return result;
}

uint64_t AST.CustomCharacterClass.strippingTriviaShallow.getter@<X0>(_BYTE *a1@<X8>)
{
  v33 = a1;
  v2 = type metadata accessor for AST.CustomCharacterClass.Member(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v36 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v29 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - v9;
  v11 = *v1;
  v12 = *(v1 + 1);
  v31 = *(v1 + 2);
  v32 = v12;
  v14 = *(v1 + 3);
  v13 = *(v1 + 4);
  v29 = *(v1 + 5);
  v30 = v13;
  v38 = v11;
  v15 = *(v14 + 16);

  v35 = v15;
  if (v15)
  {
    v17 = 0;
    v18 = MEMORY[0x1E69E7CC0];
    v34 = v2;
    while (v17 < *(v14 + 16))
    {
      v19 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v20 = *(v3 + 72);
      outlined init with copy of AST.CustomCharacterClass.Member(v14 + v19 + v20 * v17, v10, type metadata accessor for AST.CustomCharacterClass.Member);
      outlined init with copy of AST.CustomCharacterClass.Member(v10, v8, type metadata accessor for AST.CustomCharacterClass.Member);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      outlined destroy of AST.CustomCharacterClass.Member(v8, type metadata accessor for AST.CustomCharacterClass.Member);
      if (EnumCaseMultiPayload == 4)
      {
        result = outlined destroy of AST.CustomCharacterClass.Member(v10, type metadata accessor for AST.CustomCharacterClass.Member);
      }

      else
      {
        outlined init with take of AST.Atom.Kind(v10, v36, type metadata accessor for AST.CustomCharacterClass.Member);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v37 = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v18 + 16) + 1, 1);
          v18 = v37;
        }

        v24 = *(v18 + 16);
        v23 = *(v18 + 24);
        if (v24 >= v23 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
          v18 = v37;
        }

        *(v18 + 16) = v24 + 1;
        result = outlined init with take of AST.Atom.Kind(v36, v18 + v19 + v24 * v20, type metadata accessor for AST.CustomCharacterClass.Member);
      }

      if (v35 == ++v17)
      {
        v11 = v38;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v18 = MEMORY[0x1E69E7CC0];
LABEL_14:

    v26 = v32;
    v25 = v33;
    *v33 = v11;
    v27 = v30;
    v28 = v31;
    v25[1] = v26;
    v25[2] = v28;
    v25[3] = v18;
    v25[4] = v27;
    v25[5] = v29;
  }

  return result;
}

uint64_t AST.Group.kind.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 80);
  v13 = *(v1 + 64);
  v2 = v13;
  v14 = v3;
  v15 = *(v1 + 96);
  v4 = v15;
  v5 = *(v1 + 16);
  v10[0] = *v1;
  v10[1] = v5;
  v6 = *(v1 + 48);
  v11 = *(v1 + 32);
  v7 = v11;
  v12 = v6;
  *a1 = v10[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v7;
  *(a1 + 48) = v6;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  return outlined init with copy of Source.Located<AST.Group.Kind>(v10, v9);
}

__n128 AST.Group.init(_:_:_:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, __n128 *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a2;
  v5 = *(a1 + 80);
  *(a4 + 64) = *(a1 + 64);
  *(a4 + 80) = v5;
  v6 = *(a1 + 96);
  v7 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v7;
  v8 = *(a1 + 48);
  *(a4 + 32) = *(a1 + 32);
  *(a4 + 48) = v8;
  *(a4 + 96) = v6;
  *(a4 + 104) = v4;
  result = *a3;
  *(a4 + 112) = *a3;
  return result;
}

uint64_t AST.Group.Kind.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v8 = v1[4];
  v7 = v1[5];
  if (*(v1 + 80) > 1u)
  {
    if (*(v1 + 80) == 2)
    {
      MEMORY[0x1C68E1190](14);
      return AST.MatchingOptionSequence.hash(into:)(a1);
    }

    else
    {
      v11 = v8 | v7 | v1[6];
      v12 = v1[7] | v1[8] | v1[9];
      if (v6 | v4 | v3 | v5 | v11 | v12)
      {
        v13 = v6 | v4 | v5 | v11 | v12;
        if (v3 != 1 || v13)
        {
          if (v3 != 2 || v13)
          {
            if (v3 != 3 || v13)
            {
              if (v3 != 4 || v13)
              {
                if (v3 != 5 || v13)
                {
                  if (v3 != 6 || v13)
                  {
                    if (v3 != 7 || v13)
                    {
                      if (v3 != 8 || v13)
                      {
                        if (v3 != 9 || v13)
                        {
                          if (v3 != 10 || v13)
                          {
                            v14 = 13;
                          }

                          else
                          {
                            v14 = 12;
                          }
                        }

                        else
                        {
                          v14 = 11;
                        }
                      }

                      else
                      {
                        v14 = 10;
                      }
                    }

                    else
                    {
                      v14 = 9;
                    }
                  }

                  else
                  {
                    v14 = 8;
                  }
                }

                else
                {
                  v14 = 7;
                }
              }

              else
              {
                v14 = 6;
              }
            }

            else
            {
              v14 = 5;
            }
          }

          else
          {
            v14 = 4;
          }
        }

        else
        {
          v14 = 3;
        }
      }

      else
      {
        v14 = 0;
      }

      return MEMORY[0x1C68E1190](v14);
    }
  }

  else
  {
    if (*(v1 + 80))
    {
      v15 = v1[8];
      v16 = v1[9];
      MEMORY[0x1C68E1190](2);
      if (v4)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
        MEMORY[0x1C68E11C0](v6 >> 14);
        MEMORY[0x1C68E11C0](v5 >> 14);
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      MEMORY[0x1C68E11C0](v8 >> 14);
      MEMORY[0x1C68E11C0](v7 >> 14);
      String.hash(into:)();
      MEMORY[0x1C68E11C0](v15 >> 14);
      v9 = v16 >> 14;
    }

    else
    {
      MEMORY[0x1C68E1190](1);
      String.hash(into:)();
      MEMORY[0x1C68E11C0](v6 >> 14);
      v9 = v5 >> 14;
    }

    return MEMORY[0x1C68E11C0](v9);
  }
}

Swift::Int AST.Group.Kind.hashValue.getter()
{
  Hasher.init(_seed:)();
  AST.Group.Kind.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AST.Group.Kind()
{
  Hasher.init(_seed:)();
  AST.Group.Kind.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AST.Group.Kind(uint64_t a1)
{
  Hasher.init(_seed:)();
  AST.Group.Kind.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t AST.Group.hash(into:)(uint64_t a1)
{
  v3 = v1[11];
  v4 = v1[12];
  v5 = v1[14];
  v6 = v1[15];
  AST.Group.Kind.hash(into:)(a1);
  MEMORY[0x1C68E11C0](v3 >> 14);
  MEMORY[0x1C68E11C0](v4 >> 14);
  AST.Node.hash(into:)(a1);
  MEMORY[0x1C68E11C0](v5 >> 14);
  return MEMORY[0x1C68E11C0](v6 >> 14);
}

Swift::Int AST.Group.hashValue.getter()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[14];
  v4 = v0[15];
  Hasher.init(_seed:)();
  AST.Group.Kind.hash(into:)(v6);
  MEMORY[0x1C68E11C0](v1 >> 14);
  MEMORY[0x1C68E11C0](v2 >> 14);
  AST.Node.hash(into:)(v6);
  MEMORY[0x1C68E11C0](v3 >> 14);
  MEMORY[0x1C68E11C0](v4 >> 14);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AST.Conditional.Condition.Kind(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  Hasher.init(_seed:)();
  a3(v5);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AST.Conditional.Condition.Kind(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

uint64_t AST.Group.Kind.name.getter()
{
  v1 = *v0;
  if (*(v0 + 80) == 1)
  {
    if (!v0[1])
    {
      return 0;
    }

    goto LABEL_5;
  }

  if (!*(v0 + 80))
  {
LABEL_5:

    return v1;
  }

  return 0;
}

uint64_t AST.Group.Kind.lookaroundKind.getter()
{
  if (v0[5].i8[0] != 3)
  {
    return 2;
  }

  v1 = v0->i64[0];
  v2 = vorrq_s8(vorrq_s8(v0[1], v0[3]), vorrq_s8(v0[2], v0[4]));
  v3 = *&vorr_s8(*v2.i8, *&vextq_s8(v2, v2, 8uLL)) | v0->i64[1];
  if (v0->i64[0] == 4 && v3 == 0)
  {
    return 257;
  }

  if (v1 == 5 && v3 == 0)
  {
    return 1;
  }

  if (v1 != 7 || v3 != 0)
  {
    if (v1 == 8 && !v3)
    {
      return 0;
    }

    return 2;
  }

  return 256;
}

uint64_t AST.Group.BalancedCapture.name.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
  *(a1 + 24) = v2;
}

__n128 AST.Group.BalancedCapture.name.setter(uint64_t a1)
{

  result = *a1;
  v4 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v4;
  return result;
}

__n128 AST.Group.BalancedCapture.dash.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[2];
  *a1 = result;
  return result;
}

__n128 AST.Group.BalancedCapture.dash.setter(__n128 *a1)
{
  result = *a1;
  v1[2] = *a1;
  return result;
}

uint64_t AST.Group.BalancedCapture.priorName.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + 64);
}

__n128 AST.Group.BalancedCapture.priorName.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];

  result = v5;
  v1[3] = v5;
  v1[4].n128_u64[0] = v2;
  v1[4].n128_u64[1] = v3;
  return result;
}

__n128 AST.Group.BalancedCapture.init(name:dash:priorName:)@<Q0>(_OWORD *a1@<X0>, uint64_t *a2@<X1>, __n128 *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v7 = a2[1];
  v12 = *a3;
  v8 = a3[1].n128_u64[0];
  v9 = a3[1].n128_u64[1];

  v10 = a1[1];
  *a4 = *a1;
  *(a4 + 16) = v10;
  *(a4 + 32) = v6;
  *(a4 + 40) = v7;
  result = v12;
  *(a4 + 48) = v12;
  *(a4 + 64) = v8;
  *(a4 + 72) = v9;
  return result;
}

uint64_t AST.Group.BalancedCapture.hash(into:)(uint64_t a1)
{
  v3 = v1[4];
  v2 = v1[5];
  v4 = v1[8];
  v5 = v1[9];
  if (v1[1])
  {
    v10 = v1[3];
    v6 = v1[8];
    v7 = v1[2];
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    v8 = v7 >> 14;
    v4 = v6;
    MEMORY[0x1C68E11C0](v8);
    MEMORY[0x1C68E11C0](v10 >> 14);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  MEMORY[0x1C68E11C0](v3 >> 14);
  MEMORY[0x1C68E11C0](v2 >> 14);
  String.hash(into:)();
  MEMORY[0x1C68E11C0](v4 >> 14);
  return MEMORY[0x1C68E11C0](v5 >> 14);
}

Swift::Int AST.Conditional.Condition.PCREVersionNumber.hashValue.getter(void (*a1)(void *))
{
  Hasher.init(_seed:)();
  a1(v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AST.Conditional.Condition.PCREVersionNumber(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  Hasher.init(_seed:)();
  a3(v5);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AST.Conditional.Condition.PCREVersionNumber(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

__n128 AST.MatchingOption.location.setter(__n128 *a1)
{
  result = *a1;
  *(v1 + 8) = *a1;
  return result;
}

__n128 AST.MatchingOption.init(_:location:)@<Q0>(_BYTE *a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *a1;
  result = *a2;
  *(a3 + 8) = *a2;
  return result;
}

uint64_t AST.MatchingOption.hash(into:)()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  MEMORY[0x1C68E1190](*v0);
  MEMORY[0x1C68E11C0](v1 >> 14);
  return MEMORY[0x1C68E11C0](v2 >> 14);
}

Swift::Int AST.MatchingOption.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  Hasher.init(_seed:)();
  MEMORY[0x1C68E1190](v1);
  MEMORY[0x1C68E11C0](v2 >> 14);
  MEMORY[0x1C68E11C0](v3 >> 14);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AST.MatchingOption()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  Hasher.init(_seed:)();
  MEMORY[0x1C68E1190](v1);
  MEMORY[0x1C68E11C0](v2 >> 14);
  MEMORY[0x1C68E11C0](v3 >> 14);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AST.MatchingOption()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  MEMORY[0x1C68E1190](*v0);
  MEMORY[0x1C68E11C0](v1 >> 14);
  return MEMORY[0x1C68E11C0](v2 >> 14);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AST.MatchingOption(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 1);
  v4 = *(v1 + 2);
  Hasher.init(_seed:)();
  MEMORY[0x1C68E1190](v2);
  MEMORY[0x1C68E11C0](v3 >> 14);
  MEMORY[0x1C68E11C0](v4 >> 14);
  return Hasher._finalize()();
}

__n128 AST.MatchingOptionSequence.caretLoc.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u8[0];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 AST.MatchingOptionSequence.caretLoc.setter(__n128 *a1)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u8[0] = v2;
  return result;
}

uint64_t AST.MatchingOptionSequence.adding.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

__n128 AST.MatchingOptionSequence.minusLoc.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[3].n128_u8[0];
  result = v1[2];
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 AST.MatchingOptionSequence.minusLoc.setter(__n128 *a1)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  v1[2] = *a1;
  v1[3].n128_u8[0] = v2;
  return result;
}

uint64_t AST.MatchingOptionSequence.removing.setter(uint64_t a1)
{

  *(v1 + 56) = a1;
  return result;
}

__n128 AST.MatchingOptionSequence.init(caretLoc:adding:minusLoc:removing:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *(a1 + 16);
  v6 = a3[1].n128_u8[0];
  *a5 = *a1;
  *(a5 + 16) = v5;
  *(a5 + 24) = a2;
  result = *a3;
  *(a5 + 32) = *a3;
  *(a5 + 48) = v6;
  *(a5 + 56) = a4;
  return result;
}

uint64_t AST.MatchingOptionSequence.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  v7 = *(v2 + 48);
  v8 = v2[7];
  if (*(v2 + 16) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v10 = *v2;
    v9 = v2[1];
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68E11C0](v10 >> 14);
    MEMORY[0x1C68E11C0](v9 >> 14);
  }

  specialized Array<A>.hash(into:)(a1, v4);
  if (v7)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68E11C0](v5 >> 14);
    MEMORY[0x1C68E11C0](v6 >> 14);
  }

  return specialized Array<A>.hash(into:)(a1, v8);
}

uint64_t AST.MatchingOptionSequence.init(adding:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 24) = result;
  *(a2 + 48) = 1;
  *(a2 + 56) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t AST.MatchingOptionSequence.init(removing:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  v2 = MEMORY[0x1E69E7CC0];
  *(a2 + 16) = 1;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 24) = v2;
  *(a2 + 48) = 1;
  *(a2 + 56) = result;
  return result;
}

uint64_t AST.MatchingOption._dumpBase.getter()
{
  BYTE8(v2) = 0;
  *&v2 = *v0;
  _print_unlocked<A, B>(_:_:)();
  return *(&v2 + 1);
}

uint64_t protocol witness for _ASTPrintable._dumpBase.getter in conformance AST.MatchingOption()
{
  BYTE8(v2) = 0;
  *&v2 = *v0;
  _print_unlocked<A, B>(_:_:)();
  return *(&v2 + 1);
}

uint64_t AST.MatchingOptionSequence._dumpBase.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 56);
  _StringGuts.grow(_:)(50);

  v4 = MEMORY[0x1C68E0D70](v2, &type metadata for AST.MatchingOption);
  MEMORY[0x1C68E0BF0](v4);

  MEMORY[0x1C68E0BF0](0x69766F6D6572202CLL, 0xEC000000203A676ELL);
  v5 = MEMORY[0x1C68E0D70](v3, &type metadata for AST.MatchingOption);
  MEMORY[0x1C68E0BF0](v5);

  MEMORY[0x1C68E0BF0](0xD000000000000018, 0x80000001C0C849E0);
  if (v1)
  {
    v6 = 0x65736C6166;
  }

  else
  {
    v6 = 1702195828;
  }

  if (v1)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  MEMORY[0x1C68E0BF0](v6, v7);

  return 0x203A676E69646461;
}

Swift::Int AST.AbsentFunction.Start.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68E1190](v1);
  return Hasher._finalize()();
}

uint64_t AST.GlobalMatchingOption.Kind.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v2 >> 61;
  if ((v2 >> 61) <= 2)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        MEMORY[0x1C68E1190](1);
        if ((v2 & 1) == 0)
        {
          goto LABEL_13;
        }

LABEL_10:
        Hasher._combine(_:)(0);
LABEL_14:
        MEMORY[0x1C68E11C0](v4 >> 14);
        return MEMORY[0x1C68E11C0](v3 >> 14);
      }

      MEMORY[0x1C68E1190](2);
      if (v2)
      {
        goto LABEL_10;
      }
    }

    else
    {
      MEMORY[0x1C68E1190](0);
      if (v2)
      {
        goto LABEL_10;
      }
    }

LABEL_13:
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68E1190](v1);
    goto LABEL_14;
  }

  if (v5 == 3)
  {
    MEMORY[0x1C68E1190](11);
    v6 = v1;
  }

  else if (v5 == 4)
  {
    MEMORY[0x1C68E1190](12);
    v6 = v1 & 1;
  }

  else
  {
    v8 = v3 | v4;
    if (v2 == 0xA000000000000000 && (v3 | v4 | v1) == 0)
    {
      v6 = 3;
    }

    else if (v2 == 0xA000000000000000 && v1 == 1 && !v8)
    {
      v6 = 4;
    }

    else if (v2 == 0xA000000000000000 && v1 == 2 && !v8)
    {
      v6 = 5;
    }

    else if (v2 == 0xA000000000000000 && v1 == 3 && !v8)
    {
      v6 = 6;
    }

    else if (v2 == 0xA000000000000000 && v1 == 4 && !v8)
    {
      v6 = 7;
    }

    else if (v2 == 0xA000000000000000 && v1 == 5 && !v8)
    {
      v6 = 8;
    }

    else if (v2 == 0xA000000000000000 && v1 == 6 && !v8)
    {
      v6 = 9;
    }

    else
    {
      v6 = 10;
    }
  }

  return MEMORY[0x1C68E1190](v6);
}

Swift::Int AST.AbsentFunction.Kind.hashValue.getter(void (*a1)(void *))
{
  v3 = v1[1];
  v6 = *v1;
  v7 = v3;
  Hasher.init(_seed:)();
  a1(v5);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AST.AbsentFunction.Kind(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  v5 = v3[1];
  v8 = *v3;
  v9 = v5;
  Hasher.init(_seed:)();
  a3(v7);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AST.AbsentFunction.Kind(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  v6 = v4[1];
  v9 = *v4;
  v10 = v6;
  Hasher.init(_seed:)();
  a4(v8);
  return Hasher._finalize()();
}

__n128 AST.GlobalMatchingOption.kind.getter@<Q0>(_OWORD *a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v3;
  return result;
}

__n128 AST.GlobalMatchingOption.kind.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v3;
  return result;
}

__n128 AST.GlobalMatchingOption.location.setter(__n128 *a1)
{
  result = *a1;
  v1[2] = *a1;
  return result;
}

__n128 AST.GlobalMatchingOption.init(_:_:)@<Q0>(_OWORD *a1@<X0>, __n128 *a2@<X1>, _OWORD *a3@<X8>)
{
  v3 = a1[1];
  *a3 = *a1;
  a3[1] = v3;
  result = *a2;
  a3[2] = *a2;
  return result;
}

uint64_t AST.GlobalMatchingOption.hash(into:)()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  AST.GlobalMatchingOption.Kind.hash(into:)();
  MEMORY[0x1C68E11C0](v1 >> 14);
  return MEMORY[0x1C68E11C0](v2 >> 14);
}

Swift::Int AST.GlobalMatchingOption.hashValue.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  Hasher.init(_seed:)();
  AST.GlobalMatchingOption.Kind.hash(into:)();
  MEMORY[0x1C68E11C0](v1 >> 14);
  MEMORY[0x1C68E11C0](v2 >> 14);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AST.GlobalMatchingOption()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  Hasher.init(_seed:)();
  AST.GlobalMatchingOption.Kind.hash(into:)();
  MEMORY[0x1C68E11C0](v1 >> 14);
  MEMORY[0x1C68E11C0](v2 >> 14);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AST.GlobalMatchingOption()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  AST.GlobalMatchingOption.Kind.hash(into:)();
  MEMORY[0x1C68E11C0](v1 >> 14);
  return MEMORY[0x1C68E11C0](v2 >> 14);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AST.GlobalMatchingOption(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  AST.GlobalMatchingOption.Kind.hash(into:)();
  MEMORY[0x1C68E11C0](v2 >> 14);
  MEMORY[0x1C68E11C0](v3 >> 14);
  return Hasher._finalize()();
}

__n128 AST.Quantification.amount.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 64);
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

__n128 AST.Quantification.kind.getter@<Q0>(uint64_t a1@<X8>)
{
  *a1 = *(v1 + 80);
  result = *(v1 + 88);
  *(a1 + 8) = result;
  return result;
}

__n128 AST.Quantification.init(_:_:_:_:trivia:)@<Q0>(_OWORD *a1@<X0>, char *a2@<X1>, uint64_t *a3@<X2>, __n128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a2;
  v7 = *a3;
  v8 = a1[3];
  *(a6 + 32) = a1[2];
  *(a6 + 48) = v8;
  *(a6 + 64) = a1[4];
  v9 = a1[1];
  *a6 = *a1;
  *(a6 + 16) = v9;
  *(a6 + 80) = v6;
  *(a6 + 88) = *(a2 + 8);
  *(a6 + 104) = v7;
  result = *a4;
  *(a6 + 112) = *a4;
  *(a6 + 128) = a5;
  return result;
}

uint64_t AST.Quantification.Amount.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v4 = v0[2];
  v3 = v0[3];
  v5 = *(v0 + 45) | (*(v0 + 47) << 16);
  v6 = v5 >> 21;
  if (v5 >> 21 <= 1)
  {
    if (v6)
    {
      MEMORY[0x1C68E1190](4);
      if (v2)
      {
        goto LABEL_10;
      }
    }

    else
    {
      MEMORY[0x1C68E1190](3);
      if (v2)
      {
LABEL_10:
        Hasher._combine(_:)(0);
LABEL_21:
        MEMORY[0x1C68E11C0](v4 >> 14);
        return MEMORY[0x1C68E11C0](v3 >> 14);
      }
    }

LABEL_20:
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68E1190](v1);
    goto LABEL_21;
  }

  if (v6 == 2)
  {
    MEMORY[0x1C68E1190](5);
    if (v2)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

  v7 = v0[4];
  v8 = *(v0 + 40);
  v10 = v0[6];
  v9 = v0[7];
  if (v6 == 3)
  {
    MEMORY[0x1C68E1190](6);
    if (v2)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      Hasher._combine(_:)(1u);
      MEMORY[0x1C68E1190](v1);
    }

    MEMORY[0x1C68E11C0](v4 >> 14);
    MEMORY[0x1C68E11C0](v3 >> 14);
    if (v8)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      Hasher._combine(_:)(1u);
      MEMORY[0x1C68E1190](v7);
    }

    MEMORY[0x1C68E11C0](v10 >> 14);
    return MEMORY[0x1C68E11C0](v9 >> 14);
  }

  else
  {
    v11 = v8 | ((*(v0 + 41) | ((*&v5 & 0xFFFFFFLL) << 32)) << 8);
    v12 = (*(v0 + 9) << 8) | ((*(v0 + 13) | (*(v0 + 15) << 16)) << 40) | v2;
    if (v11 == 0x8000000000000000 && (v3 | v4 | v1 | v7 | v10 | v9 | v12) == 0)
    {
      v14 = 0;
    }

    else if (v11 == 0x8000000000000000 && v1 == 1 && !(v3 | v4 | v12 | v7 | v10 | v9))
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    return MEMORY[0x1C68E1190](v14);
  }
}

Swift::Int AST.MatchingOptionSequence.hashValue.getter(void (*a1)(void *))
{
  Hasher.init(_seed:)();
  a1(v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AST.Atom.Callout.OnigurumaTag(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  Hasher.init(_seed:)();
  a3(v5);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AST.Atom.Callout.OnigurumaTag(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

_RegexParser::AST::Quantification::Kind_optional __swiftcall AST.Quantification.Kind.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AST.Quantification.Kind.init(rawValue:), v3);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AST.Quantification.Kind(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 63;
  if (v2 != 1)
  {
    v3 = 43;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = *a1;
  }

  if (v2)
  {
    v5 = 0xE100000000000000;
  }

  else
  {
    v5 = 0xE000000000000000;
  }

  v6 = 63;
  if (*a2 != 1)
  {
    v6 = 43;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = *a2;
  }

  if (*a2)
  {
    v8 = 0xE100000000000000;
  }

  else
  {
    v8 = 0xE000000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance AST.Quantification.Kind(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE000000000000000;
  v4 = 63;
  if (v2 != 1)
  {
    v4 = 43;
  }

  if (*v1)
  {
    v2 = v4;
    v3 = 0xE100000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AST.Quantification.Kind()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AST.Quantification.Kind(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AST.Quantification.Kind(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t AST.Quantification.hash(into:)(uint64_t a1)
{
  v3 = v1[8];
  v4 = v1[9];
  v6 = v1[11];
  v5 = v1[12];
  v7 = v1[14];
  v8 = v1[15];
  v10 = v1[16];
  AST.Quantification.Amount.hash(into:)();
  MEMORY[0x1C68E11C0](v3 >> 14);
  MEMORY[0x1C68E11C0](v4 >> 14);
  String.hash(into:)();

  MEMORY[0x1C68E11C0](v6 >> 14);
  MEMORY[0x1C68E11C0](v5 >> 14);
  AST.Node.hash(into:)(a1);
  MEMORY[0x1C68E11C0](v7 >> 14);
  MEMORY[0x1C68E11C0](v8 >> 14);
  return specialized Array<A>.hash(into:)(a1, v10);
}

Swift::Int AST.Atom.Callout.OnigurumaNamed.hashValue.getter(void (*a1)(void *))
{
  Hasher.init(_seed:)();
  a1(v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AST.Atom.Callout.OnigurumaNamed(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  Hasher.init(_seed:)();
  a3(v5);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AST.Atom.Callout.OnigurumaNamed(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

uint64_t AST.Quantification.Amount.bounds.getter()
{
  v1 = *v0;
  v2 = *(v0 + 45) | (*(v0 + 47) << 16);
  v3 = v2 >> 21;
  if (v2 >> 21 <= 1)
  {
    return *v0;
  }

  if (v3 == 2)
  {
    return 0;
  }

  v4 = v0[4];
  if (v3 == 3)
  {
    return *v0;
  }

  v6 = *(v0 + 41) | ((*&v2 & 0xFFFFFFLL) << 32);
  v7 = v0[6];
  v8 = v0[7];
  v9 = *(v0 + 40) | (v6 << 8);
  v10 = (*(v0 + 9) << 8) | ((*(v0 + 13) | (*(v0 + 15) << 16)) << 40) | *(v0 + 8);
  v11 = v0[3] | v0[2];
  if (v9 == 0x8000000000000000 && (v11 | v1 | v4 | v7 | v8 | v10) == 0)
  {
    return 0;
  }

  return v9 == 0x8000000000000000 && v1 == 1 && !(v11 | v10 | v4 | v7 | v8);
}

uint64_t CaptureList.captures.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t CaptureList.init<A>(_:)@<X0>(uint64_t *a4@<X8>)
{
  result = Array.init<A>(_:)();
  *a4 = result;
  return result;
}

uint64_t CaptureList.append(_:)(uint64_t *a1)
{
  v2 = a1[1];
  v13 = *a1;
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = *(a1 + 48);
  v8 = *v1;

  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v8;
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1, v8);
    v8 = result;
    *v1 = result;
  }

  v11 = *(v8 + 16);
  v10 = *(v8 + 24);
  if (v11 >= v10 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v8);
    v8 = result;
  }

  *(v8 + 16) = v11 + 1;
  v12 = v8 + 56 * v11;
  *(v12 + 32) = v13;
  *(v12 + 40) = v2;
  *(v12 + 48) = v3;
  *(v12 + 56) = v4;
  *(v12 + 64) = v5;
  *(v12 + 72) = v6;
  *(v12 + 80) = v7;
  *v1 = v8;
  return result;
}

uint64_t CaptureList.Capture.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CaptureList.Capture.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

__n128 CaptureList.Capture.location.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[2];
  *a1 = result;
  return result;
}

__n128 CaptureList.Capture.location.setter(__n128 *a1)
{
  result = *a1;
  v1[2] = *a1;
  return result;
}

__n128 CaptureList.Capture.init(name:type:optionalDepth:visibleInTypedOutput:_:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unsigned __int8 a5@<W4>, __n128 *a6@<X5>, __n128 *a7@<X8>)
{
  a7->n128_u64[0] = a1;
  a7->n128_u64[1] = a2;
  a7[1].n128_u64[0] = a3;
  a7[1].n128_u64[1] = a4;
  a7[3].n128_u8[0] = a5;
  result = *a6;
  a7[2] = *a6;
  return result;
}

Swift::Int_optional __swiftcall CaptureList.indexOfCapture(named:)(Swift::String named)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  if (v3)
  {
    object = named._object;
    countAndFlagsBits = named._countAndFlagsBits;
    v6 = 0;
    v7 = (v2 + 40);
    while (1)
    {
      if (*v7)
      {
        v8 = *(v7 - 1) == countAndFlagsBits && *v7 == object;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }
      }

      ++v6;
      v7 += 7;
      if (v3 == v6)
      {
        goto LABEL_11;
      }
    }

    v9 = 0;
  }

  else
  {
LABEL_11:
    v6 = 0;
    v9 = 1;
  }

  v10 = v6;
  result.value = v10;
  result.is_nil = v9;
  return result;
}

Swift::Bool __swiftcall CaptureList.hasCapture(named:)(Swift::String named)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  if (!v3)
  {
    return 0;
  }

  object = named._object;
  countAndFlagsBits = named._countAndFlagsBits;
  for (i = (v2 + 40); ; i += 7)
  {
    if (*i)
    {
      v7 = *(i - 1) == countAndFlagsBits && *i == object;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }
    }

    if (!--v3)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t CaptureList.Builder.captures.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
  return result;
}

_RegexParser::CaptureList::Builder::OptionalNesting __swiftcall CaptureList.Builder.OptionalNesting.init(canNest:)(_RegexParser::CaptureList::Builder::OptionalNesting canNest)
{
  *v1 = 0;
  *(v1 + 8) = canNest.outerDepth;
  *(v1 + 16) = 0;
  return canNest;
}

uint64_t CaptureList.Builder.OptionalNesting.depth.getter()
{
  v1 = v0[2];
  result = *v0 + v1;
  if (__OFADD__(*v0, v1))
  {
    __break(1u);
  }

  return result;
}

void CaptureList.Builder.OptionalNesting.disablingNesting.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[2];
  if (*(v1 + 8) != 1)
  {
    goto LABEL_4;
  }

  v4 = __OFADD__(v2, v3);
  v2 += v3;
  if (!v4)
  {
    v3 = 0;
LABEL_4:
    *a1 = v2;
    *(a1 + 8) = 0;
    *(a1 + 16) = v3;
    return;
  }

  __break(1u);
}

void CaptureList.Builder.OptionalNesting.addingOptional.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  if (v3 == 1)
  {
    v4 = v1[2];
    v5 = __OFADD__(v4, 1);
    v6 = v4 + 1;
    if (!v5)
    {
      goto LABEL_6;
    }

    __break(1u);
  }

  v6 = 1;
LABEL_6:
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v6;
}

unint64_t *CaptureList.Builder.addCaptures(of:optionalNesting:visibleInTypedOutput:)(unint64_t *result, uint64_t a2, char a3)
{
  v6 = *result;
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = v9;
  v11 = *result >> 60;
  if (v11 <= 4)
  {
    if (v11 <= 1)
    {
      if (v11)
      {
        v58 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v59 = *(v58 + 16);
        if (v59)
        {

          v60 = 32;
          do
          {
            v96 = *(v58 + v60);
            *&v103 = v7;
            BYTE8(v103) = v8;
            v104.i64[0] = v10;
            CaptureList.Builder.addCaptures(of:optionalNesting:visibleInTypedOutput:)(&v96, &v103, a3 & 1);
            v60 += 8;
            --v59;
          }

          while (v59);
LABEL_40:
        }

        return result;
      }

      v39 = *(v6 + 16);
      v4 = *(v39 + 16);
      if (!v4)
      {
        return result;
      }

      v40 = v9 + 1;
      v41 = __OFADD__(v9, 1);
      v9 = (v8 & v41);
      if (*(a2 + 8))
      {
        v42 = v40;
      }

      else
      {
        v42 = 1;
      }

      v10 = 32;
      while (1)
      {
        v96 = *(v39 + v10);
        if (v9)
        {
          break;
        }

        *&v103 = v7;
        BYTE8(v103) = v8;
        v104.i64[0] = v42;
        CaptureList.Builder.addCaptures(of:optionalNesting:visibleInTypedOutput:)(&v96, &v103, a3 & 1);
        v10 += 8;
        if (!--v4)
        {
          goto LABEL_40;
        }
      }

      __break(1u);
LABEL_96:
      __break(1u);
      goto LABEL_97;
    }

    if (v11 != 2)
    {
      if (v11 == 3)
      {
        v15 = v6 & 0xFFFFFFFFFFFFFFFLL;
        v16 = *(v15 + 48);
        v18 = *(v15 + 80);
        v17 = *(v15 + 96);
        v105 = *(v15 + 64);
        v106 = v18;
        v19 = *(v15 + 112);
        v20 = *(v15 + 128);
        v21 = *(v15 + 144);
        v111 = *(v15 + 160);
        v23 = *(v15 + 128);
        v22 = *(v15 + 144);
        v109 = v20;
        v110 = v22;
        v107 = v17;
        v108 = v19;
        v103 = *(v15 + 32);
        v104 = v16;
        v24 = *(v15 + 176);
        v25 = *(v15 + 208);
        v26 = *(v15 + 96);
        v27 = *(v15 + 112);
        v112[6] = v23;
        v112[7] = v21;
        v112[4] = v26;
        v112[5] = v27;
        v29 = *(v15 + 32);
        v28 = *(v15 + 48);
        v30 = *(v15 + 80);
        v112[2] = *(v15 + 64);
        v112[3] = v30;
        v112[0] = v29;
        v112[1] = v28;
        if (_s12_RegexParser3ASTV11ConditionalV9ConditionV4KindOWOg(v112) == 3)
        {
          v31 = _s12_RegexParser3ASTV11ConditionalV9ConditionV4KindOWOi_(v112);
          v4 = swift_allocObject();
          v32 = v31[3];
          v34 = *v31;
          v33 = v31[1];
          *(v4 + 48) = v31[2];
          *(v4 + 64) = v32;
          *(v4 + 16) = v34;
          *(v4 + 32) = v33;
          v35 = v31[7];
          v37 = v31[4];
          v36 = v31[5];
          *(v4 + 112) = v31[6];
          *(v4 + 128) = v35;
          *(v4 + 80) = v37;
          *(v4 + 96) = v36;
          v101 = v9;
          v102 = v4 | 0x2000000000000000;
          v99 = v7;
          v100 = v8;
          outlined init with copy of AST.Conditional.Condition(&v103, &v96);

          CaptureList.Builder.addCaptures(of:optionalNesting:visibleInTypedOutput:)(&v102, &v99, a3 & 1);

          v99 = v24;
          if (!v8)
          {
LABEL_14:
            v38 = 1;
            goto LABEL_45;
          }
        }

        else
        {

          v99 = v24;
          if (!v8)
          {
            goto LABEL_14;
          }
        }

        v38 = (v9 + 1);
        if (!__OFADD__(v9, 1))
        {
LABEL_45:
          v96 = v7;
          v97 = v8;
          v98 = v38;
          CaptureList.Builder.addCaptures(of:optionalNesting:visibleInTypedOutput:)(&v99, &v96, a3 & 1);

          v99 = v25;
          if (v8)
          {
            v61 = (v9 + 1);
            if (!__OFADD__(v9, 1))
            {
              goto LABEL_50;
            }

            __break(1u);
          }

          v61 = 1;
LABEL_50:
          v96 = v7;
          v97 = v8;
          v98 = v61;
          CaptureList.Builder.addCaptures(of:optionalNesting:visibleInTypedOutput:)(&v99, &v96, a3 & 1);
        }

        goto LABEL_96;
      }

      v52 = v6 & 0xFFFFFFFFFFFFFFFLL;
      v53 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v54 = *(v52 + 24);
      v55 = *(v52 + 56);
      v56 = *(v52 + 120);
      v57 = v55 >> 61;
      if ((v55 >> 61) > 1)
      {
        if (v57 != 2)
        {
          if (v57 == 3)
          {
            goto LABEL_35;
          }

          v73 = *(v52 + 40);
          v72 = *(v52 + 48);
          v74 = *(v52 + 64);
          v75 = *(v52 + 72);
          v76 = *(v52 + 32);
          v77 = (*(v52 + 25) << 8) | ((*(v52 + 29) | (*(v52 + 31) << 16)) << 40) | v54;
          v78 = v73 | v76;
          if (v55 != 0x8000000000000000 || v78 | v53 | v72 | v74 | v75 | v77)
          {
            v53 = v53 == 1 && (v78 | v77 | v72 | v74 | v75) == 0 && v55 == 0x8000000000000000;
LABEL_81:
            if (v53)
            {
              v10 = *(a2 + 16);
            }

            else
            {
              v10 = 1;
            }

            if (v53 || (v8 & 1) == 0)
            {
              goto LABEL_87;
            }

            goto LABEL_86;
          }
        }

        if (!*(a2 + 8))
        {
          v10 = 1;
          goto LABEL_87;
        }

LABEL_86:
        v10 = (v9 + 1);
        if (__OFADD__(v9, 1))
        {
LABEL_97:
          __break(1u);
LABEL_98:
          __break(1u);
LABEL_99:
          __break(1u);
          goto LABEL_100;
        }

LABEL_87:
        v96 = v56;
        *&v103 = v7;
        BYTE8(v103) = v8;
        v104.i64[0] = v10;

        CaptureList.Builder.addCaptures(of:optionalNesting:visibleInTypedOutput:)(&v96, &v103, a3 & 1);
      }

LABEL_35:
      if (v54)
      {
        goto LABEL_87;
      }

      goto LABEL_81;
    }

    v43 = v6 & 0xFFFFFFFFFFFFFFFLL;
    v44 = *(v43 + 16);
    v45 = *(v43 + 64);
    v46 = *(v43 + 96);
    v107 = *(v43 + 80);
    v108 = v46;
    v106 = v45;
    v47 = *(v43 + 120);
    *&v109 = *(v43 + 112);
    v48 = *(v43 + 32);
    v49 = *(v43 + 48);
    v103 = v44;
    v104 = v48;
    v105 = v49;
    v4 = *(&v44 + 1);
    v50 = v44;
    if (!v46)
    {
      v92 = *(v43 + 128);
      v94 = *(v43 + 136);
      v90 = &v9[v7];
      if (!__OFADD__(v7, v9))
      {
        v89 = a3 & 1;
        v9 = *v3;
        outlined init with copy of Source.Located<AST.Group.Kind>(&v103, &v96);
        outlined init with copy of Source.Located<AST.Group.Kind>(&v103, &v96);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v3 = v9;
        v91 = v47;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
          *v3 = v9;
        }

        v71 = *(v9 + 2);
        v70 = *(v9 + 3);
        if (v71 >= v70 >> 1)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v70 > 1), v71 + 1, 1, v9);
        }

        sub_1C0C7CB20(&v103);
        *(v9 + 2) = v71 + 1;
        v67 = &v9[56 * v71];
        *(v67 + 4) = v50;
        *(v67 + 5) = v4;
        *(v67 + 6) = MEMORY[0x1E69E67B0];
        *(v67 + 7) = v90;
        *(v67 + 8) = v92;
        *(v67 + 9) = v94;
        v68 = v89;
        goto LABEL_65;
      }

      goto LABEL_99;
    }

    if (v46 == 1)
    {
      v92 = *(v43 + 128);
      v94 = *(v43 + 136);
      if (*(&v44 + 1))
      {
        v62 = v44;
      }

      else
      {
        v62 = 0;
      }

      v90 = v62;
      v63 = &v9[v7];
      if (!__OFADD__(v7, v9))
      {
        v87 = a3 & 1;
        v9 = *v3;
        outlined init with copy of Source.Located<AST.Group.Kind>(&v103, &v96);

        v64 = swift_isUniquelyReferenced_nonNull_native();
        *v3 = v9;
        v91 = v47;
        v88 = v63;
        if (v64)
        {
LABEL_56:
          v66 = *(v9 + 2);
          v65 = *(v9 + 3);
          if (v66 >= v65 >> 1)
          {
            v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v65 > 1), v66 + 1, 1, v9);
          }

          sub_1C0C7CB20(&v103);
          *(v9 + 2) = v66 + 1;
          v67 = &v9[56 * v66];
          *(v67 + 4) = v90;
          *(v67 + 5) = v4;
          *(v67 + 6) = MEMORY[0x1E69E67B0];
          *(v67 + 7) = v88;
          *(v67 + 8) = v92;
          *(v67 + 9) = v94;
          v68 = v87;
LABEL_65:
          v67[80] = v68;
          *v3 = v9;
LABEL_66:
          v47 = v91;
          goto LABEL_67;
        }

LABEL_100:
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
        *v3 = v9;
        goto LABEL_56;
      }

      goto LABEL_98;
    }

    if (v46 != 3 || (v51 = vorrq_s8(vorrq_s8(v104, v106), vorrq_s8(v105, v107)), *&vorr_s8(*v51.i8, *&vextq_s8(v51, v51, 8uLL)) | v4 | v50))
    {

LABEL_67:
      *&v112[0] = v47;
      v96 = v7;
      v97 = v8;
      v98 = v10;
      CaptureList.Builder.addCaptures(of:optionalNesting:visibleInTypedOutput:)(v112, &v96, a3 & 1);
    }

    v93 = *(v43 + 128);
    v95 = *(v43 + 136);
    v81 = &v9[v7];
    if (__OFADD__(v7, v9))
    {
      __break(1u);
    }

    else
    {
      v82 = a3 & 1;
      v4 = *v3;
      outlined init with copy of Source.Located<AST.Group.Kind>(&v103, &v96);

      v83 = swift_isUniquelyReferenced_nonNull_native();
      *v3 = v4;
      v91 = v47;
      LOBYTE(v90) = v82;
      if (v83)
      {
LABEL_92:
        v85 = *(v4 + 16);
        v84 = *(v4 + 24);
        if (v85 >= v84 >> 1)
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v84 > 1), v85 + 1, 1, v4);
        }

        *(v4 + 16) = v85 + 1;
        v86 = v4 + 56 * v85;
        *(v86 + 32) = 0;
        *(v86 + 40) = 0;
        *(v86 + 48) = MEMORY[0x1E69E67B0];
        *(v86 + 56) = v81;
        *(v86 + 64) = v93;
        *(v86 + 72) = v95;
        *(v86 + 80) = v90;
        *v3 = v4;
        goto LABEL_66;
      }
    }

    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 16) + 1, 1, v4);
    *v3 = v4;
    goto LABEL_92;
  }

  if ((v11 - 5) >= 5 && v11 == 10)
  {
    v13 = (v6 & 0xFFFFFFFFFFFFFFFLL);
    v14 = v13[7];
    if ((v14 & 6) == 2)
    {
      outlined copy of AST.AbsentFunction.Kind(v13[4], v13[5], v13[6], v13[7]);

      v96 = v14 & 0xFFFFFFFFFFFFFFF9;
      *&v103 = v7;
      BYTE8(v103) = v8;
      v104.i64[0] = v9;
      CaptureList.Builder.addCaptures(of:optionalNesting:visibleInTypedOutput:)(&v96, &v103, a3 & 1);
    }
  }

  return result;
}