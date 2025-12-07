uint64_t static AccessibilityNodeList.displayName(for:within:)(uint64_t a1)
{
  if (*(a1 + 9) == 1)
  {
    return 0xD000000000000018;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t protocol witness for static EventAbstraction.displayName(for:within:) in conformance AccessibilityNodeList(uint64_t a1)
{
  if (*(a1 + 9) == 1)
  {
    return 0xD000000000000018;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t static PhaseWriting.displayName(for:within:)(uint64_t a1)
{
  if (*(a1 + 9) == 1)
  {
    return 0x6843206573616850;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t protocol witness for static EventAbstraction.displayName(for:within:) in conformance PhaseWriting(uint64_t a1)
{
  if (*(a1 + 9) == 1)
  {
    return 0x6843206573616850;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t static EnvironmentWriting.subtype(source:within:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 84) <= result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = *(a2 + 72);
  if (!v3)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3 + 312 * result;
  if ((*(v4 + 101) & 1) == 0)
  {
    v5 = *(v4 + 100);
    *a3 = *(v4 + 92);
    *(a3 + 8) = v5;
    *(a3 + 9) = 1;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t static EnvironmentWriting.types.getter(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t specialized static DisplayList.displayName(for:within:)(unsigned int *a1)
{
  if (*(a1 + 9) == 1)
  {
    v1 = *a1;
    _StringGuts.grow(_:)(20);

    v2 = Interpreter.Storage.Types.subscript.getter(v1);
    MEMORY[0x26D69CDB0](v2);

    return 0xD000000000000012;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t specialized static PlatformViews.displayName(for:within:)(uint64_t a1)
{
  if (*(a1 + 9) != 3)
  {
    goto LABEL_6;
  }

  if (*a1 == 1)
  {
    return 0x6D726F6674616C50;
  }

  if (*a1 == 2)
  {
    return 0xD000000000000030;
  }

LABEL_6:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t specialized static PreferenceList.displayName(for:within:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 9) == 1)
  {
    v3 = *(a1 + 8);
    v4 = *a1;
    if (one-time initialization token for anchorTransform != -1)
    {
      swift_once();
    }

    v26[2] = xmmword_280495AD8;
    v27[0] = unk_280495AE8;
    *(v27 + 14) = unk_280495AF6;
    v26[0] = static Attribute.Pattern.anchorTransform;
    v26[1] = unk_280495AC8;
    v22 = xmmword_280495AD8;
    *v23 = unk_280495AE8;
    *&v23[14] = unk_280495AF6;
    v20 = static Attribute.Pattern.anchorTransform;
    v21 = unk_280495AC8;
    outlined init with copy of Attribute.Pattern(v26, v17);
    LOBYTE(v17[0]) = 1;
    v5 = Attribute.Pattern.match(_:view:within:)(v4, v3, 0x100000000, a2);
    v28[2] = v22;
    v29[0] = *v23;
    *(v29 + 14) = *&v23[14];
    v28[0] = v20;
    v28[1] = v21;
    outlined destroy of Attribute.Pattern(v28);
    if (v5)
    {
      *&v20 = 0;
      *(&v20 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(19);

      v18 = 0xD000000000000011;
      v19 = 0x800000026C33C870;
      v6 = *(*a2 + 136);
      v8 = v6[1];
      v7 = v6[2];
      v20 = *v6;
      v21 = v8;
      v22 = v7;
      v9 = v6[6];
      v11 = v6[3];
      v10 = v6[4];
      v24 = v6[5];
      v25 = v9;
      *v23 = v11;
      *&v23[16] = v10;
      v17[3] = v6[3];
      v17[4] = v6[4];
      v17[5] = v6[5];
      v17[6] = v6[6];
      v17[0] = *v6;
      v17[1] = v6[1];
      v17[2] = v6[2];
      outlined init with copy of Interpreter.Storage.Types(&v20, v16);
      v12 = Interpreter.Storage.Types.subscript.getter(v4, &outlined read-only object #0 of static PreferenceList.displayName(for:within:));
      v14 = v13;
      outlined destroy of Interpreter.Storage.Types(&v20);
      MEMORY[0x26D69CDB0](v12, v14);

      return v18;
    }

    else
    {
      return 0x6E65726566657250;
    }
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t specialized static ResolvedContent.displayName(for:within:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 9) == 1)
  {
    v3 = *(a1 + 8);
    v4 = *a1;
    if (one-time initialization token for resolvedImage != -1)
    {
      swift_once();
    }

    v11[2] = xmmword_280495BB0;
    v12[0] = unk_280495BC0;
    *(v12 + 14) = unk_280495BCE;
    v11[0] = static Attribute.Pattern.resolvedImage;
    v11[1] = unk_280495BA0;
    v9 = xmmword_280495BB0;
    *v10 = unk_280495BC0;
    *&v10[14] = unk_280495BCE;
    v7 = static Attribute.Pattern.resolvedImage;
    v8 = unk_280495BA0;
    outlined init with copy of Attribute.Pattern(v11, v13);
    LOBYTE(v13[0]) = 1;
    v5 = Attribute.Pattern.match(_:view:within:)(v4, v3, 0x100000000, a2);
    v13[2] = v9;
    v14[0] = *v10;
    *(v14 + 14) = *&v10[14];
    v13[0] = v7;
    v13[1] = v8;
    outlined destroy of Attribute.Pattern(v13);
    if (v5)
    {
      return 0x6F43206567616D49;
    }

    else
    {
      return 0x6E6F432074786554;
    }
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

unint64_t specialized static EnvironmentWriting.displayName(for:within:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 9) != 1)
  {
    goto LABEL_27;
  }

  v3 = *(a1 + 8);
  v4 = *a1;
  if (one-time initialization token for rootEnvironment != -1)
  {
    swift_once();
  }

  v52[2] = xmmword_280495928;
  v53[0] = unk_280495938;
  *(v53 + 14) = unk_280495946;
  v52[0] = static Attribute.Pattern.rootEnvironment;
  v52[1] = unk_280495918;
  v40 = xmmword_280495928;
  *v41 = unk_280495938;
  *&v41[14] = unk_280495946;
  v38 = static Attribute.Pattern.rootEnvironment;
  v39 = unk_280495918;
  outlined init with copy of Attribute.Pattern(v52, &v30);
  LOBYTE(v30) = 1;
  v5 = Attribute.Pattern.match(_:view:within:)(v4, v3, 0x100000000, a2);
  v54[2] = v40;
  v55[0] = *v41;
  *(v55 + 14) = *&v41[14];
  v54[0] = v38;
  v54[1] = v39;
  outlined destroy of Attribute.Pattern(v54);
  if (v5)
  {
    if (one-time initialization token for rootEnvironmentModifierChild != -1)
    {
      swift_once();
    }

    v32 = xmmword_280495D60;
    *v33 = *&dword_280495D70;
    *&v33[14] = *(&qword_280495D78 + 6);
    v30 = static Attribute.Pattern.rootEnvironmentModifierChild;
    v31 = *&dword_280495D50;
    v28 = xmmword_280495D60;
    v29[0] = *&dword_280495D70;
    *(v29 + 14) = *(&qword_280495D78 + 6);
    v26 = static Attribute.Pattern.rootEnvironmentModifierChild;
    v27 = *&dword_280495D50;
    outlined init with copy of Attribute.Pattern(&v30, v50);
    LOBYTE(v50[0]) = 1;
    v6 = Attribute.Pattern.match(_:view:within:)(v4, v3, 0x100000000, a2);
    v40 = v28;
    *v41 = v29[0];
    *&v41[14] = *(v29 + 14);
    v38 = v26;
    v39 = v27;
    outlined destroy of Attribute.Pattern(&v38);
    if (v6)
    {
      return 0xD000000000000010;
    }
  }

  if (one-time initialization token for externalEnvironmentValues != -1)
  {
    swift_once();
  }

  v48[2] = xmmword_280495970;
  v49[0] = unk_280495980;
  *(v49 + 14) = unk_28049598E;
  v48[0] = static Attribute.Pattern.externalEnvironmentValues;
  v48[1] = unk_280495960;
  v40 = xmmword_280495970;
  *v41 = unk_280495980;
  *&v41[14] = unk_28049598E;
  v38 = static Attribute.Pattern.externalEnvironmentValues;
  v39 = unk_280495960;
  outlined init with copy of Attribute.Pattern(v48, &v30);
  LOBYTE(v30) = 1;
  v8 = Attribute.Pattern.match(_:view:within:)(v4, v3, 0x100000000, a2);
  v50[2] = v40;
  v51[0] = *v41;
  *(v51 + 14) = *&v41[14];
  v50[0] = v38;
  v50[1] = v39;
  outlined destroy of Attribute.Pattern(v50);
  if (v8)
  {
    return 0xD000000000000014;
  }

  if (one-time initialization token for someChildEnvironment != -1)
  {
    swift_once();
  }

  v44[2] = xmmword_280495E38;
  v45[0] = *&dword_280495E48;
  *(v45 + 14) = *(&qword_280495E50 + 6);
  v44[0] = static Attribute.Pattern.someChildEnvironment;
  v44[1] = *&dword_280495E28;
  v40 = xmmword_280495E38;
  *v41 = *&dword_280495E48;
  *&v41[14] = *(&qword_280495E50 + 6);
  v38 = static Attribute.Pattern.someChildEnvironment;
  v39 = *&dword_280495E28;
  outlined init with copy of Attribute.Pattern(v44, &v30);
  LOBYTE(v30) = 1;
  v9 = Attribute.Pattern.match(_:view:within:)(v4, v3, 0x100000000, a2);
  v46[2] = v40;
  v47[0] = *v41;
  *(v47 + 14) = *&v41[14];
  v46[0] = v38;
  v46[1] = v39;
  outlined destroy of Attribute.Pattern(v46);
  if (v9)
  {
    *&v38 = 0;
    *(&v38 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(21);

    *&v30 = 0xD000000000000013;
    *(&v30 + 1) = 0x800000026C33CA50;
LABEL_23:
    v24 = *(*a2 + 136);
    *v41 = v24[3];
    *&v41[16] = v24[4];
    v42 = v24[5];
    v43[0] = v24[6];
    v38 = *v24;
    v39 = v24[1];
    v40 = v24[2];
    v25 = Interpreter.Storage.Types.subscript.getter(v4);
    MEMORY[0x26D69CDB0](v25);

    return v30;
  }

  v10 = *(*a2 + 136);
  v11 = v10[4];
  if (v4 >= *(v11 + 16))
  {
    __break(1u);
  }

  else
  {
    v12 = *(v11 + 4 * v4 + 32);
    if (v12 < *(v10 + 3))
    {
      v13 = *v10;
      if (v13)
      {
        v14 = v13 + 120 * v12;
        *&v41[16] = *(v14 + 64);
        v42 = *(v14 + 80);
        v43[0] = *(v14 + 96);
        *(v43 + 14) = *(v14 + 110);
        v38 = *v14;
        v39 = *(v14 + 16);
        v40 = *(v14 + 32);
        *v41 = *(v14 + 48);
        if (PType.genericParamCount.getter() >= 1)
        {
          *&v38 = 0;
          *(&v38 + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(21);

          v36 = 0xD000000000000013;
          v37 = 0x800000026C33CA30;
          v15 = *(*a2 + 136);
          v17 = v15[1];
          v16 = v15[2];
          v38 = *v15;
          v39 = v17;
          v40 = v16;
          v18 = v15[6];
          v20 = v15[3];
          v19 = v15[4];
          v42 = v15[5];
          v43[0] = v18;
          *v41 = v20;
          *&v41[16] = v19;
          *v33 = v15[3];
          *&v33[16] = v15[4];
          v34 = v15[5];
          v35 = v15[6];
          v30 = *v15;
          v31 = v15[1];
          v32 = v15[2];
          outlined init with copy of Interpreter.Storage.Types(&v38, &v26);
          v21 = Interpreter.Storage.Types.subscript.getter(v4, &outlined read-only object #0 of static EnvironmentWriting.displayName(for:within:));
          v23 = v22;
          outlined destroy of Interpreter.Storage.Types(&v38);
          MEMORY[0x26D69CDB0](v21, v23);

          return v36;
        }

        *&v38 = 0;
        *(&v38 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(21);

        *&v30 = 0xD000000000000013;
        *(&v30 + 1) = 0x800000026C33CA30;
        goto LABEL_23;
      }

      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized static Layout.displayName(for:within:)(unsigned int *a1)
{
  if (*(a1 + 9) == 1)
  {
    v1 = Interpreter.Storage.Types.subscript.getter(*a1);
    MEMORY[0x26D69CDB0](v1);

    return 0x203A74756F79614CLL;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t specialized static ViewList.displayName(for:within:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 9) != 1)
  {
    goto LABEL_25;
  }

  v3 = *(a1 + 8);
  v4 = *a1;
  if (one-time initialization token for viewList != -1)
  {
    swift_once();
  }

  v59[2] = xmmword_280495E80;
  v60[0] = unk_280495E90;
  *(v60 + 14) = unk_280495E9E;
  v59[0] = static Attribute.Pattern.viewList;
  v59[1] = *algn_280495E70;
  v47 = xmmword_280495E80;
  *v48 = unk_280495E90;
  *&v48[14] = unk_280495E9E;
  v45 = static Attribute.Pattern.viewList;
  v46 = *algn_280495E70;
  outlined init with copy of Attribute.Pattern(v59, &v37);
  LOBYTE(v37) = 1;
  v5 = Attribute.Pattern.match(_:view:within:)(v4, v3, 0x100000000, a2);
  v61[2] = v47;
  v62[0] = *v48;
  *(v62 + 14) = *&v48[14];
  v61[0] = v45;
  v61[1] = v46;
  outlined destroy of Attribute.Pattern(v61);
  if (v5)
  {
    v6 = 0x73694C2077656956;
    v7 = 0xEA00000000002074;
LABEL_6:
    *&v37 = v6;
    *(&v37 + 1) = v7;
LABEL_7:
    v8 = *(*a2 + 136);
    *v48 = v8[3];
    *&v48[16] = v8[4];
    v49 = v8[5];
    v50[0] = v8[6];
    v45 = *v8;
    v46 = v8[1];
    v47 = v8[2];
    v9 = Interpreter.Storage.Types.subscript.getter(v4);
    MEMORY[0x26D69CDB0](v9);

    return v37;
  }

  if (one-time initialization token for traitWritingModifier != -1)
  {
    swift_once();
  }

  v55[2] = xmmword_280495EC8;
  v56[0] = unk_280495ED8;
  *(v56 + 14) = unk_280495EE6;
  v55[0] = static Attribute.Pattern.traitWritingModifier;
  v55[1] = unk_280495EB8;
  v47 = xmmword_280495EC8;
  *v48 = unk_280495ED8;
  *&v48[14] = unk_280495EE6;
  v45 = static Attribute.Pattern.traitWritingModifier;
  v46 = unk_280495EB8;
  outlined init with copy of Attribute.Pattern(v55, &v37);
  LOBYTE(v37) = 1;
  v11 = Attribute.Pattern.match(_:view:within:)(v4, v3, 0x100000000, a2);
  v57[2] = v47;
  v58[0] = *v48;
  *(v58 + 14) = *&v48[14];
  v57[0] = v45;
  v57[1] = v46;
  outlined destroy of Attribute.Pattern(v57);
  if (v11)
  {
    strcpy(v53, "Trait Writer ");
    HIWORD(v53[0]) = -4864;
    v12 = *(*a2 + 136);
    v14 = v12[1];
    v13 = v12[2];
    v45 = *v12;
    v46 = v14;
    v47 = v13;
    v15 = v12[6];
    v17 = v12[3];
    v16 = v12[4];
    v49 = v12[5];
    v50[0] = v15;
    *v48 = v17;
    *&v48[16] = v16;
    v40 = v12[3];
    v41 = v12[4];
    v42 = v12[5];
    v43 = v12[6];
    v37 = *v12;
    v38 = v12[1];
    v39 = v12[2];
    outlined init with copy of Interpreter.Storage.Types(&v45, v36);
    v18 = Interpreter.Storage.Types.subscript.getter(v4, &outlined read-only object #0 of static ViewList.displayName(for:within:));
    v20 = v19;
    outlined destroy of Interpreter.Storage.Types(&v45);
    MEMORY[0x26D69CDB0](v18, v20);

    return *&v53[0];
  }

  if (one-time initialization token for traitWritingModifierAddTrait != -1)
  {
    swift_once();
  }

  v51[2] = xmmword_280495F10;
  v52[0] = unk_280495F20;
  *(v52 + 14) = unk_280495F2E;
  v51[0] = static Attribute.Pattern.traitWritingModifierAddTrait;
  v51[1] = unk_280495F00;
  v47 = xmmword_280495F10;
  *v48 = unk_280495F20;
  *&v48[14] = unk_280495F2E;
  v45 = static Attribute.Pattern.traitWritingModifierAddTrait;
  v46 = unk_280495F00;
  outlined init with copy of Attribute.Pattern(v51, &v37);
  LOBYTE(v37) = 1;
  v21 = Attribute.Pattern.match(_:view:within:)(v4, v3, 0x100000000, a2);
  v53[2] = v47;
  v54[0] = *v48;
  *(v54 + 14) = *&v48[14];
  v53[0] = v45;
  v53[1] = v46;
  outlined destroy of Attribute.Pattern(v53);
  if (v21)
  {
    v6 = 0x7257207469617254;
    v7 = 0xED00002072657469;
    goto LABEL_6;
  }

  v22 = *(*a2 + 136);
  v23 = v22[4];
  if (v4 >= *(v23 + 16))
  {
    __break(1u);
    goto LABEL_23;
  }

  v24 = *(v23 + 4 * v4 + 32);
  if (v24 >= *(v22 + 3))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v25 = *v22;
  if (!v25)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v26 = v25 + 120 * v24;
  *&v48[16] = *(v26 + 64);
  v49 = *(v26 + 80);
  v50[0] = *(v26 + 96);
  *(v50 + 14) = *(v26 + 110);
  v45 = *v26;
  v46 = *(v26 + 16);
  v47 = *(v26 + 32);
  *v48 = *(v26 + 48);
  if (PType.genericParamCount.getter() < 1)
  {
    *&v45 = 0;
    *(&v45 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(28);

    *&v37 = 0xD00000000000001ALL;
    *(&v37 + 1) = 0x800000026C33C990;
    goto LABEL_7;
  }

  *&v45 = 0;
  *(&v45 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(16);

  strcpy(v44, "Trait Writer: ");
  HIBYTE(v44[1]) = -18;
  v27 = *(*a2 + 136);
  v29 = v27[1];
  v28 = v27[2];
  v45 = *v27;
  v46 = v29;
  v47 = v28;
  v30 = v27[6];
  v32 = v27[3];
  v31 = v27[4];
  v49 = v27[5];
  v50[0] = v30;
  *v48 = v32;
  *&v48[16] = v31;
  v40 = v27[3];
  v41 = v27[4];
  v42 = v27[5];
  v43 = v27[6];
  v37 = *v27;
  v38 = v27[1];
  v39 = v27[2];
  outlined init with copy of Interpreter.Storage.Types(&v45, v36);
  v33 = Interpreter.Storage.Types.subscript.getter(v4, &outlined read-only object #1 of static ViewList.displayName(for:within:));
  v35 = v34;
  outlined destroy of Interpreter.Storage.Types(&v45);
  MEMORY[0x26D69CDB0](v33, v35);

  return v44[0];
}

uint64_t sub_26C257928()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void (*Interpreter.Iterator.reading.read())()
{
  if (v0[48])
  {
    goto LABEL_6;
  }

  v1 = *(v0 + 22);
  if (*v0 >= *(v1 + 116))
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (*(v1 + 104))
  {
    return EventTreeStats.count.modify;
  }

LABEL_7:
  __break(1u);
  return result;
}

void Interpreter.Iterator.subscript.getter(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(v3 + 29);
  v7 = *(v3 + 22);
  v8 = (v7 + 40);
  v9 = *(v7 + 56);
  v99[0] = *(v7 + 40);
  v99[1] = v9;
  v100[0] = *(v7 + 72);
  v10 = (v7 + 72);
  v11 = (v7 + 84);
  v12 = (v7 + 88);
  v13 = 8 * v6;
  *(v100 + 9) = *(v7 + 81);
  v14 = (v7 + 40);
  v15 = (v7 + 72);
  v16 = (v7 + 84);
  v17 = (v7 + 88);
  v66 = v7;
  while (1)
  {
    v18 = *v17;
    if (v6 < *v16)
    {
      v19 = (*v15 + v13);
      if ((v19[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v18)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v6, 0, v99, specialized EvolutionTable.describe(state:));
    }

    v15 = (v18 + 32);
    v16 = (v18 + 44);
    v17 = (v18 + 48);
    v14 = v18;
  }

  if (!*v14)
  {
    goto LABEL_56;
  }

  v20 = *v14 + 24 * *v19;
  v21 = *(*v20 + 184);
  v22 = *(*v20 + 196);
  v64 = *(*v20 + 192);
  AttachmentID.init<A>(_:)();
  v65 = a3;
  if (!v22)
  {
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v25 = 0;
    goto LABEL_40;
  }

  if (!v21)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v25 = v22 - 1;
  if (*(v21 + 32 * (v22 - 1)) >= v23)
  {
    v32 = v22 >> 1;
    v33 = *(v21 + 32 * (v22 >> 1));
    if (v22 != 1 && v33 != v23)
    {
      v63 = v23;
      if (v23 >= v33)
      {
        v35 = v32 + 1;
        v32 = v22;
      }

      else
      {
        v35 = 0;
      }

      v39 = specialized Collection<>.binarySearch(for:)(v23, v35, v32, v21, v64 | (v22 << 32), v24);
      if (v40)
      {
        v32 = v22 - 1;
      }

      else
      {
        v32 = v39;
      }

      LODWORD(v23) = v63;
    }

    v41 = (v21 + 32 * v32);
    v25 = v32;
    while (v32 < v22)
    {
      if (v23 >= *v41)
      {
        goto LABEL_11;
      }

      if (!v25)
      {
        goto LABEL_39;
      }

      --v25;
      v41 -= 8;
      if (v25 > v22)
      {
        __break(1u);
LABEL_39:
        v29 = 0;
        v30 = 0;
        v31 = 0;
        goto LABEL_40;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

LABEL_11:
  v26 = v8[1];
  v97[0] = *v8;
  v97[1] = v26;
  v98[0] = v8[2];
  *(v98 + 9) = *(v8 + 41);
  while (1)
  {
    v27 = *v12;
    if (v6 < *v11)
    {
      v28 = (*v10 + v13);
      if ((v28[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v27)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v6, 0, v97, specialized EvolutionTable.describe(state:));
    }

    v10 = (v27 + 32);
    v11 = (v27 + 44);
    v12 = (v27 + 48);
    v8 = v27;
  }

  if (!*v8)
  {
    goto LABEL_58;
  }

  v36 = *v8 + 24 * *v28;
  if (v25 >= *(*v36 + 196))
  {
    goto LABEL_51;
  }

  v37 = *(*v36 + 184);
  if (v37)
  {
    v38 = (v37 + 32 * v25);
    v29 = *v38;
    v30 = v38[1];
    v31 = v38[2];
    v25 = v38[3];
LABEL_40:
    v42 = (*(*(v65 + 8) + 24))(a2);
    AttachmentID.Typed.rawValue.getter();
    v89 = 0;
    *&v68 = v6 | (v42 << 32);
    *(&v68 + 1) = v43 << 32;
    *&v69 = v29;
    *(&v69 + 1) = v30;
    *&v70 = v31;
    *(&v70 + 1) = v25;
    LOBYTE(v71) = 1;
    Interpreter.Iterator.init(_:kind:onEvent:)(v66, &v68, 0, 0, v84);
    Interpreter.Iterator.read()();
    v95[0] = v85;
    v95[1] = v86;
    v96[0] = *v87;
    *(v96 + 9) = *&v87[9];
    v44 = v85;
    v45 = *v87;
    v46 = *&v87[16];
    if (v88 >= *&v87[12])
    {
      goto LABEL_42;
    }

    while (1)
    {
      v47 = (v45 + 8 * v88);
      if ((v47[1] & 1) == 0)
      {
        break;
      }

      do
      {
LABEL_42:
        if (!v46)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(v88, 0, v95, specialized EvolutionTable.describe(state:));
        }

        v44 = *v46;
        v45 = v46[4];
        v48 = *(v46 + 11);
        v46 = v46[6];
      }

      while (v88 >= v48);
    }

    if (!v44)
    {
      goto LABEL_57;
    }

    v49 = (v44 + 24 * *v47);
    v50 = *v49;
    v51 = *(*v49 + 96);
    if (v51 != 2)
    {
      v52 = *(v50 + 104);
      v53 = *(v50 + 88);
      v90 = *(v50 + 72);
      v91 = v53;
      v92 = v51 & 0x101;
      v93 = HIDWORD(v51);
      v94 = v52 & 1;
      v54 = Interpreter.Iterator.AttachmentBuffer.buffer.getter();
      if ((v55 & 1) == 0)
      {
        v56 = v4[5];
        v72 = v4[4];
        v73 = v56;
        v74 = v4[6];
        v57 = *(v4 + 28);
        v58 = v4[1];
        v68 = *v4;
        v69 = v58;
        v59 = v4[3];
        v70 = v4[2];
        v71 = v59;
        v75 = v57;
        v76 = v6;
        v60 = *(v4 + 120);
        v61 = *(v4 + 136);
        v62 = *(v4 + 21);
        v79 = *(v4 + 152);
        v78 = v61;
        v77 = v60;
        v80 = v62;
        v81 = v66;
        v83 = *(v4 + 192);
        v82 = *(v4 + 23);
        (*(v65 + 16))(v54);
        specialized EvolutionTable.deallocate()();
        return;
      }

      goto LABEL_53;
    }

LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
}

uint64_t specialized EvolutionTable.describe(state:)(uint64_t *a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 48);
  v21 = *(v1 + 56);
  *(&v22[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(37);
  MEMORY[0x26D69CDB0](0x20656C62617428, 0xE700000000000000);
  *&v22[0] = &type metadata for Interpreter.Iterator.Mode;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport11InterpreterC8IteratorV4ModeVmMd, &_s21SwiftUITracingSupport11InterpreterC8IteratorV4ModeVmMR);
  v6 = String.init<A>(describing:)();
  MEMORY[0x26D69CDB0](v6);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  LOBYTE(v22[0]) = v21;
  _print_unlocked<A, B>(_:_:)();
  result = MEMORY[0x26D69CDB0](0x202020200ALL, 0xE500000000000000);
  if (__OFSUB__(*a1, 1))
  {
    __break(1u);
  }

  else
  {
    v8 = *(a1 + 20);
    v9 = *(a1 + 16);
    v30 = *a1 - 1;
    v31 = 0x7FFFFFFFFFFFFFFFLL;
    v32 = v9;
    v33 = *(a1 + 3);
    v34 = v8;
    v10 = specialized InspectionState.wrapDescription<A>(_:)(v3, v4);
    MEMORY[0x26D69CDB0](v10);

    result = MEMORY[0x26D69CDB0](0x617028202020200ALL, 0xED000020746E6572);
    if (!v5)
    {
      v20 = 0xE400000000000000;
      v18 = 1953460082;
      goto LABEL_6;
    }

    v11 = *a1;
    v12 = *(a1 + 16);
    v13 = *(a1 + 3);
    v14 = *(a1 + 40);
    v15 = *(a1 + 41);
    v22[0] = *v5;
    v22[1] = v5[1];
    v23[0] = v5[2];
    *(v23 + 9) = *(v5 + 41);
    v16 = __OFSUB__(v11, 1);
    v17 = v11 - 1;
    if (!v16)
    {
      v24 = v17;
      v25 = 0x7FFFFFFFFFFFFFFFLL;
      v26 = v12;
      v27 = v13;
      v28 = v14;
      v29 = v15;
      v18 = specialized InspectionState.wrapDescription<A>(_:)(v22);
      v20 = v19;
LABEL_6:
      MEMORY[0x26D69CDB0](v18, v20);

      MEMORY[0x26D69CDB0](2689577, 0xE300000000000000);
      return 0;
    }
  }

  __break(1u);
  return result;
}

{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 48);
  v21 = *(v1 + 56);
  *(&v22[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(37);
  MEMORY[0x26D69CDB0](0x20656C62617428, 0xE700000000000000);
  *&v22[0] = &type metadata for Interpreter.Context;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport11InterpreterC7ContextVmMd, &_s21SwiftUITracingSupport11InterpreterC7ContextVmMR);
  v6 = String.init<A>(describing:)();
  MEMORY[0x26D69CDB0](v6);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  LOBYTE(v22[0]) = v21;
  _print_unlocked<A, B>(_:_:)();
  result = MEMORY[0x26D69CDB0](0x202020200ALL, 0xE500000000000000);
  if (__OFSUB__(*a1, 1))
  {
    __break(1u);
  }

  else
  {
    v8 = *(a1 + 20);
    v9 = *(a1 + 16);
    v30 = *a1 - 1;
    v31 = 0x7FFFFFFFFFFFFFFFLL;
    v32 = v9;
    v33 = *(a1 + 3);
    v34 = v8;
    v10 = specialized InspectionState.wrapDescription<A>(_:)(v3, v4);
    MEMORY[0x26D69CDB0](v10);

    result = MEMORY[0x26D69CDB0](0x617028202020200ALL, 0xED000020746E6572);
    if (!v5)
    {
      v20 = 0xE400000000000000;
      v18 = 1953460082;
      goto LABEL_6;
    }

    v11 = *a1;
    v12 = *(a1 + 16);
    v13 = *(a1 + 3);
    v14 = *(a1 + 40);
    v15 = *(a1 + 41);
    v22[0] = *v5;
    v22[1] = v5[1];
    v23[0] = v5[2];
    *(v23 + 9) = *(v5 + 41);
    v16 = __OFSUB__(v11, 1);
    v17 = v11 - 1;
    if (!v16)
    {
      v24 = v17;
      v25 = 0x7FFFFFFFFFFFFFFFLL;
      v26 = v12;
      v27 = v13;
      v28 = v14;
      v29 = v15;
      v18 = specialized InspectionState.wrapDescription<A>(_:)(v22);
      v20 = v19;
LABEL_6:
      MEMORY[0x26D69CDB0](v18, v20);

      MEMORY[0x26D69CDB0](2689577, 0xE300000000000000);
      return 0;
    }
  }

  __break(1u);
  return result;
}

{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 48);
  v21 = *(v1 + 56);
  *(&v22[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(37);
  MEMORY[0x26D69CDB0](0x20656C62617428, 0xE700000000000000);
  *&v22[0] = &type metadata for Attachment_Entry;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport16Attachment_EntryVmMd, &_s21SwiftUITracingSupport16Attachment_EntryVmMR);
  v6 = String.init<A>(describing:)();
  MEMORY[0x26D69CDB0](v6);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  LOBYTE(v22[0]) = v21;
  _print_unlocked<A, B>(_:_:)();
  result = MEMORY[0x26D69CDB0](0x202020200ALL, 0xE500000000000000);
  if (__OFSUB__(*a1, 1))
  {
    __break(1u);
  }

  else
  {
    v8 = *(a1 + 20);
    v9 = *(a1 + 16);
    v30 = *a1 - 1;
    v31 = 0x7FFFFFFFFFFFFFFFLL;
    v32 = v9;
    v33 = *(a1 + 3);
    v34 = v8;
    v10 = specialized InspectionState.wrapDescription<A>(_:)(v3, v4);
    MEMORY[0x26D69CDB0](v10);

    result = MEMORY[0x26D69CDB0](0x617028202020200ALL, 0xED000020746E6572);
    if (!v5)
    {
      v20 = 0xE400000000000000;
      v18 = 1953460082;
      goto LABEL_6;
    }

    v11 = *a1;
    v12 = *(a1 + 16);
    v13 = *(a1 + 3);
    v14 = *(a1 + 40);
    v15 = *(a1 + 41);
    v22[0] = *v5;
    v22[1] = v5[1];
    v23[0] = v5[2];
    *(v23 + 9) = *(v5 + 41);
    v16 = __OFSUB__(v11, 1);
    v17 = v11 - 1;
    if (!v16)
    {
      v24 = v17;
      v25 = 0x7FFFFFFFFFFFFFFFLL;
      v26 = v12;
      v27 = v13;
      v28 = v14;
      v29 = v15;
      v18 = specialized InspectionState.wrapDescription<A>(_:)(v22);
      v20 = v19;
LABEL_6:
      MEMORY[0x26D69CDB0](v18, v20);

      MEMORY[0x26D69CDB0](2689577, 0xE300000000000000);
      return 0;
    }
  }

  __break(1u);
  return result;
}

{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 48);
  v21 = *(v1 + 56);
  *(&v22[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(37);
  MEMORY[0x26D69CDB0](0x20656C62617428, 0xE700000000000000);
  *&v22[0] = &type metadata for Tracepoint_Entry;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport16Tracepoint_EntryVmMd, &_s21SwiftUITracingSupport16Tracepoint_EntryVmMR);
  v6 = String.init<A>(describing:)();
  MEMORY[0x26D69CDB0](v6);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  LOBYTE(v22[0]) = v21;
  _print_unlocked<A, B>(_:_:)();
  result = MEMORY[0x26D69CDB0](0x202020200ALL, 0xE500000000000000);
  if (__OFSUB__(*a1, 1))
  {
    __break(1u);
  }

  else
  {
    v8 = *(a1 + 20);
    v9 = *(a1 + 16);
    v30 = *a1 - 1;
    v31 = 0x7FFFFFFFFFFFFFFFLL;
    v32 = v9;
    v33 = *(a1 + 3);
    v34 = v8;
    v10 = specialized InspectionState.wrapDescription<A>(_:)(v3, v4);
    MEMORY[0x26D69CDB0](v10);

    result = MEMORY[0x26D69CDB0](0x617028202020200ALL, 0xED000020746E6572);
    if (!v5)
    {
      v20 = 0xE400000000000000;
      v18 = 1953460082;
      goto LABEL_6;
    }

    v11 = *a1;
    v12 = *(a1 + 16);
    v13 = *(a1 + 3);
    v14 = *(a1 + 40);
    v15 = *(a1 + 41);
    v22[0] = *v5;
    v22[1] = v5[1];
    v23[0] = v5[2];
    *(v23 + 9) = *(v5 + 41);
    v16 = __OFSUB__(v11, 1);
    v17 = v11 - 1;
    if (!v16)
    {
      v24 = v17;
      v25 = 0x7FFFFFFFFFFFFFFFLL;
      v26 = v12;
      v27 = v13;
      v28 = v14;
      v29 = v15;
      v18 = specialized InspectionState.wrapDescription<A>(_:)(v22);
      v20 = v19;
LABEL_6:
      MEMORY[0x26D69CDB0](v18, v20);

      MEMORY[0x26D69CDB0](2689577, 0xE300000000000000);
      return 0;
    }
  }

  __break(1u);
  return result;
}

void specialized error #1 <A>() in EvolutionTable.address(of:in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  specialized error #1 <A>() in EvolutionTable.address(of:in:)(a1, a2, a3, specialized EvolutionTable.describe(state:));
}

{
  specialized error #1 <A>() in EvolutionTable.address(of:in:)(a1, a2, a3, specialized EvolutionTable.describe(state:));
}

{
  specialized error #1 <A>() in EvolutionTable.address(of:in:)(a1, a2, a3, specialized EvolutionTable.describe(state:));
}

{
  specialized error #1 <A>() in EvolutionTable.address(of:in:)(a1, a2, a3, specialized EvolutionTable.describe(state:));
}

void specialized error #1 <A>() in EvolutionTable.address(of:in:)(unsigned int a1, char a2, uint64_t a3, uint64_t (*a4)(__int128 *))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_26C328DC0;
  *(&v18 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(22);

  strcpy(v17, "cannot find ");
  BYTE5(v17[1]) = 0;
  HIWORD(v17[1]) = -5120;
  *&v18 = a1;
  v8 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v8);

  MEMORY[0x26D69CDB0](2108704, 0xE300000000000000);
  if (a2)
  {
    v9 = 0x6C61636F6C206E69;
  }

  else
  {
    v9 = 0xD000000000000050;
  }

  if (a2)
  {
    v10 = 0xEF2E656C62617420;
  }

  else
  {
    v10 = 0x800000026C33B690;
  }

  MEMORY[0x26D69CDB0](v9, v10);

  MEMORY[0x26D69CDB0](2105376, 0xE300000000000000);
  v12 = v17[0];
  v11 = v17[1];
  v13 = MEMORY[0x277D837D0];
  *(v7 + 56) = MEMORY[0x277D837D0];
  *(v7 + 32) = v12;
  *(v7 + 40) = v11;

  print(_:separator:terminator:)();

  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_26C328DC0;
  v18 = xmmword_26C32DAD0;
  v19 = 1;
  v20 = 0;
  v21 = 0;
  v22 = 512;
  v15 = a4(&v18);
  *(v14 + 56) = v13;
  *(v14 + 32) = v15;
  *(v14 + 40) = v16;
  print(_:separator:terminator:)();

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void (*specialized EvolutionTable.subscript.read(void *a1, unsigned int a2))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x28uLL);
  }

  *a1 = result;
  for (i = v2; *(i + 44) <= a2 || (*(*(i + 32) + 8 * a2 + 4) & 1) != 0; i = *(i + 48))
  {
    if (!*(i + 48))
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(a2, 0, v2, specialized EvolutionTable.describe(state:));
    }
  }

  if (*i)
  {
    *(result + 4) = specialized Strong.subscript.read();
    return UnsafeTree.subjectsMap.readspecialized ;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void (*specialized EvolutionTable.subscript.modify(void (**a1)(uint64_t a1), unsigned int a2))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x68uLL);
  }

  *a1 = result;
  v6 = *v2;
  v7 = v2[1];
  v8 = v2[2];
  *(result + 41) = *(v2 + 41);
  *(result + 1) = v7;
  *(result + 2) = v8;
  *result = v6;
  while (*(v2 + 11) <= a2 || (*(*(v2 + 4) + 8 * a2 + 4) & 1) != 0)
  {
    if (!*(v2 + 6))
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(a2, 0, result, specialized EvolutionTable.describe(state:));
    }

    v2 = *(v2 + 6);
  }

  if (*v2)
  {
    *(result + 12) = specialized Strong.subscript.modify();
    return EvolutionTable.subscript.modifyspecialized ;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void EvolutionTable.subscript.modifyspecialized (uint64_t a1)
{
  v1 = *a1;
  (*(*a1 + 96))();

  free(v1);
}

BOOL specialized EvolutionTable.matches(local:remote:_:)(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (((a1 | a2) & 0x100000000) != 0)
  {
    return (a3 & 1) == 0;
  }

  v9 = *v7;
  v10 = *(v7 + 16);
  v11 = *(v7 + 28);
  v12 = *(v7 + 32);
  v13 = *(v7 + 44);
  v14 = *(v7 + 48);
  if (a1 >= v11)
  {
    v4 = a2;
    if (a2 >= v13)
    {
      return 1;
    }

    if (!v12)
    {
      goto LABEL_12;
    }

LABEL_18:
    v3 = 8 * a1;
    goto LABEL_19;
  }

  if (!v10)
  {
    __break(1u);
    goto LABEL_18;
  }

  v3 = 8 * a1;
  v4 = a2;
  if (a2 >= v13)
  {
    goto LABEL_19;
  }

  if (!v12)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  a3 = (v10 + v3);
  v6 = v12 + 8 * a2;
  v5 = *(v6 + 4);
  if (*(v10 + v3 + 4))
  {
    if (!*(v6 + 4))
    {
      goto LABEL_19;
    }

    return 1;
  }

LABEL_13:
  if (*a3 != *v6)
  {
    v5 = 1;
  }

  if (v5)
  {
LABEL_19:
    v37 = a2;
    v38 = v3;
    v34 = v4;
    v35 = v12;
    v36 = v13;
    v15 = a1;
    v40 = a1;
    v39 = v11;
    v16 = v9;
    v17 = v14;
    _StringGuts.grow(_:)(41);

    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x26D69CDB0](v18);

    MEMORY[0x26D69CDB0](8233, 0xE200000000000000);
    v19 = v16;
    v20 = v17;
    if (v40 >= v39)
    {
      goto LABEL_21;
    }

    while (1)
    {
      if ((*(v10 + v38 + 4) & 1) == 0)
      {
        if (!v19)
        {
          __break(1u);
        }

        v22 = *(*(v19 + 24 * *(v10 + v38)) + 16);
        v23 = *v22;
        v24 = v22[1];

        MEMORY[0x26D69CDB0](v23, v24);

        MEMORY[0x26D69CDB0](0x6920686369687720, 0xEF2820746F6E2073);
        v25 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x26D69CDB0](v25);

        MEMORY[0x26D69CDB0](8233, 0xE200000000000000);
        v26 = v16;
        v27 = v17;
        v28 = v35;
        if (v34 >= v36)
        {
LABEL_29:
          while (v27)
          {
            v26 = *v27;
            v28 = v27[4];
            v30 = *(v27 + 11);
            v27 = v27[6];
            if (v34 < v30)
            {
              goto LABEL_28;
            }
          }
        }

        else
        {
LABEL_28:
          v29 = (v28 + 8 * v34);
          if (v29[1])
          {
            goto LABEL_29;
          }

          if (v26)
          {
            while (1)
            {
              v31 = *(*(v26 + 24 * *v29) + 16);
              v32 = *v31;
              v33 = v31[1];

              MEMORY[0x26D69CDB0](v32, v33);

              _assertionFailure(_:_:file:line:flags:)();
              __break(1u);
            }
          }

          __break(1u);
        }

        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v37, 0, v7, specialized EvolutionTable.describe(state:));
      }

      do
      {
LABEL_21:
        if (!v20)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(v15, 1, v7, specialized EvolutionTable.describe(state:));
        }

        v19 = *v20;
        v10 = v20[2];
        v21 = *(v20 + 7);
        v20 = v20[6];
      }

      while (v40 >= v21);
    }
  }

  return 1;
}

uint64_t *specialized EvolutionTable.deallocate()()
{
  v1 = *(v0 + 3);
  if (v1)
  {
    v2 = *v0;
    v3 = *v0;
    while (v2)
    {
      v4 = *v3;
      v5 = *(*v3 + 40);
      if (!v5)
      {
        goto LABEL_14;
      }

      outlined destroy of String(*(*v3 + 40));
      MEMORY[0x26D69EAB0](v5, -1, -1);
      *(v4 + 40) = 0;
      outlined destroy of Tracepoint_Entry(v4);
      MEMORY[0x26D69EAB0](v4, -1, -1);
      *v3 = 0;
      v3 += 3;
      if (!--v1)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_14:
    _StringGuts.grow(_:)(25);
    MEMORY[0x26D69CDB0](0xD000000000000017, 0x800000026C33B600);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport6UniqueVySSGMd, &_s21SwiftUITracingSupport6UniqueVySSGMR);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_6:
    if (*v0)
    {
      MEMORY[0x26D69EAB0](*v0, -1, -1);
      *v0 = 0;
    }

    v6 = v0[2];
    if (v6)
    {
      MEMORY[0x26D69EAB0](v6, -1, -1);
      v0[2] = 0;
    }

    result = v0[4];
    if (result)
    {
      result = MEMORY[0x26D69EAB0](result, -1, -1);
      v0[4] = 0;
    }
  }

  return result;
}

uint64_t specialized EvolutionTable.deallocate()()
{
  v1 = *(v0 + 3);
  if (v1)
  {
    v2 = *v0;
    v3 = *v0;
    while (v2)
    {
      v4 = *v3;
      v5 = *(*v3 + 16);
      if (!v5)
      {
        goto LABEL_14;
      }

      outlined destroy of String(*(*v3 + 16));
      MEMORY[0x26D69EAB0](v5, -1, -1);
      *(v4 + 16) = 0;
      MEMORY[0x26D69EAB0](v4, -1, -1);
      *v3 = 0;
      v3 += 3;
      if (!--v1)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_14:
    _StringGuts.grow(_:)(25);
    MEMORY[0x26D69CDB0](0xD000000000000017, 0x800000026C33B600);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport6UniqueVySSGMd, &_s21SwiftUITracingSupport6UniqueVySSGMR);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_6:
    if (*v0)
    {
      MEMORY[0x26D69EAB0](*v0, -1, -1);
      *v0 = 0;
    }

    v6 = v0[2];
    if (v6)
    {
      MEMORY[0x26D69EAB0](v6, -1, -1);
      v0[2] = 0;
    }

    result = v0[4];
    if (result)
    {
      result = MEMORY[0x26D69EAB0](result, -1, -1);
      v0[4] = 0;
    }
  }

  return result;
}

{
  v1 = v0;
  v2 = *(v0 + 3);
  if (v2)
  {
    v3 = *v0;
    v4 = *v0;
    while (v3)
    {
      v5 = *v4;
      v6 = **v4;
      if (!v6)
      {
        goto LABEL_18;
      }

      outlined destroy of String(**v4);
      MEMORY[0x26D69EAB0](v6, -1, -1);
      *v5 = 0;
      v7 = v5[4];
      if (v7)
      {
        MEMORY[0x26D69EAB0](v7, -1, -1);
        v5[4] = 0;
      }

      specialized EvolutionTable.deallocate()();
      specialized EvolutionTable.deallocate()();
      v8 = v5[23];
      if (v8)
      {
        MEMORY[0x26D69EAB0](v8, -1, -1);
        v5[23] = 0;
      }

      MEMORY[0x26D69EAB0](v5, -1, -1);
      *v4 = 0;
      v4 += 3;
      if (!--v2)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_18:
    _StringGuts.grow(_:)(25);
    MEMORY[0x26D69CDB0](0xD000000000000017, 0x800000026C33B600);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport6UniqueVySSGMd, &_s21SwiftUITracingSupport6UniqueVySSGMR);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_10:
    if (*v1)
    {
      MEMORY[0x26D69EAB0](*v1, -1, -1);
      *v1 = 0;
    }

    v9 = v1[2];
    if (v9)
    {
      MEMORY[0x26D69EAB0](v9, -1, -1);
      v1[2] = 0;
    }

    result = v1[4];
    if (result)
    {
      result = MEMORY[0x26D69EAB0](result, -1, -1);
      v1[4] = 0;
    }
  }

  return result;
}

{
  v1 = *(v0 + 3);
  if (v1)
  {
    v2 = *v0;
    v3 = *v0;
    while (v2)
    {
      v4 = *v3;
      v5 = *(*v3 + 16);
      if (!v5)
      {
        goto LABEL_16;
      }

      outlined destroy of String(*(*v3 + 16));
      MEMORY[0x26D69EAB0](v5, -1, -1);
      v4[2] = 0;
      v6 = v4[15];
      if (v6)
      {
        project #1 <A>(_:) in Interpreter.Iterator.Mode.deallocate()(v6, v4, v4[15], v4[16]);
      }

      MEMORY[0x26D69EAB0](v4, -1, -1);
      *v3 = 0;
      v3 += 24;
      if (!--v1)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_16:
    _StringGuts.grow(_:)(25);
    MEMORY[0x26D69CDB0](0xD000000000000017, 0x800000026C33B600);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport6UniqueVySSGMd, &_s21SwiftUITracingSupport6UniqueVySSGMR);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_8:
    if (*v0)
    {
      MEMORY[0x26D69EAB0](*v0, -1, -1);
      *v0 = 0;
    }

    v7 = v0[2];
    if (v7)
    {
      MEMORY[0x26D69EAB0](v7, -1, -1);
      v0[2] = 0;
    }

    result = v0[4];
    if (result)
    {
      result = MEMORY[0x26D69EAB0](result, -1, -1);
      v0[4] = 0;
    }
  }

  return result;
}

Swift::Void __swiftcall Interpreter.Iterator.AddressMap.deallocate()()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  swift_getAssociatedConformanceWitness();
  v0 = type metadata accessor for Dictionary();
  type metadata accessor for Strong(0, v0, v1, v2);

  Strong.deallocate()();
}

uint64_t Interpreter.Iterator.AddressMap.init()(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  swift_getAssociatedConformanceWitness();
  v5 = Dictionary.init()();
  v2 = type metadata accessor for Dictionary();
  v3 = specialized Strong.init(_:)(&v5, v2);

  return v3;
}

uint64_t Interpreter.Iterator.init(_:kind:onEvent:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = type metadata accessor for TraceChunk(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v132 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a2;
  v14 = a2[1];
  v15 = a2[3];
  v147 = a2[2];
  v148 = v15;
  v16 = a2[4];
  v145 = a2[5];
  v146 = v16;
  v17 = *(a2 + 48);
  v165 = 1;
  v18 = *(a1 + 8);
  if (*(a1 + 32) == 1 && (*(a1 + 24) & 1) == 0)
  {
    goto LABEL_114;
  }

  if (!v18)
  {
    goto LABEL_104;
  }

  if (v17)
  {
    v19 = 0;
  }

  else
  {
    if (v13 >= *(a1 + 132))
    {
LABEL_100:
      __break(1u);
      goto LABEL_101;
    }

    v20 = *(a1 + 120);
    if (!v20)
    {
LABEL_108:
      __break(1u);
LABEL_109:
      __break(1u);
LABEL_110:
      __break(1u);
LABEL_111:
      __break(1u);
      goto LABEL_112;
    }

    v19 = *(v20 + 8 * v13);
  }

  v21 = *(a1 + 40);
  v22 = *(a1 + 88);
  v135 = (a1 + 88);
  if (v22)
  {
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  v150 = v21;
  *&v136 = v12;
  v142 = v18;
  v143 = v13;
  v137 = v19;
  v138 = v14;
  v144 = v17;
  v139 = a3;
  v140 = a4;
  v141 = a5;
  v23 = *(a1 + 52);
  v24 = *(a1 + 56);
  v25 = *(a1 + 72);
  v133 = (a1 + 72);
  v134 = (a1 + 40);
  v154 = *(a1 + 64);
  v26 = *(a1 + 68);
  v152 = v24;
  v153 = v26;
  v27 = *(a1 + 80);
  v151 = *(a1 + 84);
  v132 = (a1 + 84);
  v149 = a1;
  v28 = *(a1 + 96);
  v29 = MEMORY[0x277D84F90];
  v30 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA14EvolutionTableV5EntryVyAA11InterpreterC8IteratorV4ModeV_G_SayAQGTt0g5Tf4g_n();
  v32 = v31;
  v33 = HIDWORD(v31);
  v34 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCs6UInt32VSg_SayAIGTt0g5Tf4g_n(v29);
  _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCs6UInt32VSg_SayAIGTt0g5Tf4g_n(v29);
  v155 = v30;
  v156 = __PAIR64__(v33, v32);
  v157 = v34;
  v163 = 0;
  v164 = v28;
  if (v25)
  {
    v35 = swift_slowAlloc();
    v36 = v151;
    memcpy(v35, v25, 8 * v151);
    v37 = v36;
  }

  else
  {
    v35 = 0;
    v37 = v151;
  }

  v160 = v35;
  v161 = v27;
  v162 = v37;
  v38 = v149;
  v39 = v152;
  if (v152)
  {
    v40 = v154;
    v41 = swift_slowAlloc();
    v42 = v153;
    memcpy(v41, v39, 8 * v153);
  }

  else
  {
    v41 = 0;
    v42 = v153;
    v40 = v154;
  }

  v157 = v41;
  v158 = v40;
  v159 = v42;
  specialized UnsafeArray.growToCapacity(_:)();
  if (v23)
  {
    if (!v150)
    {
LABEL_106:
      __break(1u);
LABEL_107:
      __break(1u);
      goto LABEL_108;
    }

    v43 = (v150 + 12);
    while (1)
    {
      LODWORD(v153) = *(v43 - 1);
      LODWORD(v152) = *v43;
      LODWORD(v151) = *(v43 + 1);
      LODWORD(v150) = v43[8];
      v44 = *(v43 - 12);
      v46 = *v44;
      v45 = *(v44 + 8);
      v47 = *(v44 + 16);
      LOBYTE(v202) = 1;
      v154 = v23;
      if (v45)
      {
        v48 = swift_conformsToProtocol2();
        if (v48)
        {
          project #1 <A>(_:) in Interpreter.Iterator.Mode.add(context:)(v45, v45);
          v50 = v49;
          v51 = v45;
        }

        else
        {
          v50 = 0;
          v51 = 0;
        }
      }

      else
      {
        v50 = 0;
        v51 = 0;
        v48 = 0;
      }

      v53 = *v46;
      v52 = v46[1];

      v54 = swift_slowAlloc();
      *v54 = v53;
      v54[1] = v52;
      v205[0] = v45;
      v205[1] = v47;
      v205[2] = v54;
      v205[3] = 0;
      v205[4] = 0;
      v206 = 0;
      v207 = 0;
      v208 = 0;
      v209 = v202;
      v210 = 1;
      v212 = 0;
      v213 = 0;
      v211 = 0;
      v214 = 2;
      v215 = 0;
      v216 = v50;
      v217 = v51;
      v218 = v48;
      v219 = 0;
      v220 = 0;
      _s21SwiftUITracingSupport6StrongVyACyxGxcfCAA11InterpreterC8IteratorV4ModeV_Tt0B5(v205);
      v56 = v55;
      if (HIDWORD(v156) == v156)
      {
        specialized UnsafeArray.growToCapacity(_:)();
      }

      v58 = v154;
      v57 = v155;
      if (!v155)
      {
        goto LABEL_102;
      }

      v59 = HIDWORD(v156);
      v60 = v155 + 24 * HIDWORD(v156);
      *v60 = v56;
      *(v60 + 8) = v153;
      *(v60 + 12) = v152;
      *(v60 + 16) = v151;
      *(v60 + 20) = v150;
      v61 = __CFADD__(v59, 1);
      v62 = v59 + 1;
      if (v61)
      {
        __break(1u);
        goto LABEL_99;
      }

      HIDWORD(v156) = v62;
      v43 += 24;
      v23 = (v58 - 1);
      if (!v23)
      {
        v38 = v149;
        goto LABEL_31;
      }
    }
  }

  v57 = v155;
LABEL_31:
  v63 = v156;
  v154 = v157;
  LODWORD(v153) = v158;
  LODWORD(v152) = v159;
  v64 = v160;
  v65 = v162;
  LODWORD(v151) = v161;
  v66 = v163;
  LODWORD(v150) = v164;
  v67 = v144;
  if (v144 != 1 || !v148)
  {
    if (*(v38 + 32))
    {
      v77 = &v169;
      specialized T_Header.init()(&v168);
    }

    else
    {
      v77 = &v167;
      v78 = *(v38 + 24);
      v79 = v156;
      v80 = v144;
      v81 = v163;
      v82 = v160;
      v83 = v162;
      v84 = v136;
      outlined init with copy of TraceChunk(v78, v136);
      v85 = *(*v84 + 32);
      v86 = v84;
      v65 = v83;
      v64 = v82;
      v66 = v81;
      v67 = v80;
      v63 = v79;
      v38 = v149;
      outlined destroy of TraceChunk(v86);
      specialized T_Header.init(loadedFrom:)(v85, &v166);
    }

    v68 = *v77;
    if (v68 == 1)
    {
      goto LABEL_44;
    }

    if (v68 == 2)
    {
      v68 = 0;
LABEL_44:
      v87 = *(v38 + 8);
      if (*(v38 + 32) == 1 && (*(v38 + 24) & 1) == 0)
      {
        goto LABEL_114;
      }

      *&v202 = v57;
      *(&v202 + 1) = v63;
      *&v203 = v154;
      *(&v203 + 1) = __PAIR64__(v152, v153);
      *&v204[0] = v64;
      *(&v204[0] + 1) = __PAIR64__(v65, v151);
      v88 = v57;
      *&v204[1] = v66;
      v89 = v64;
      v90 = v66;
      BYTE8(v204[1]) = v150;
      if (v68 >= v65)
      {
        goto LABEL_48;
      }

      while (1)
      {
        v91 = &v89[8 * v68];
        if ((v91[4] & 1) == 0)
        {
          break;
        }

        do
        {
LABEL_48:
          if (!v90)
          {
            v136 = v87;
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(v68, 0, &v202, specialized EvolutionTable.describe(state:));
          }

          v88 = *v90;
          v89 = v90[4];
          v92 = *(v90 + 11);
          v90 = v90[6];
        }

        while (v68 >= v92);
      }

      if (!v88)
      {
        goto LABEL_109;
      }

      v93 = 0;
      *(*(v88 + 24 * *v91) + 136) = v87;
LABEL_89:
      v170[0] = v57;
      v170[1] = v63;
      v116 = v154;
      v170[2] = v154;
      v171 = v153;
      v172 = v152;
      v173 = v64;
      v174 = v151;
      v175 = v65;
      v117 = v57;
      v176 = v66;
      v118 = v66;
      v177 = v150;
      if (!v152)
      {
        goto LABEL_91;
      }

      while ((v116[1] & 1) != 0)
      {
        do
        {
LABEL_91:
          if (!v118)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v170, specialized EvolutionTable.describe(state:));
          }

          v117 = *v118;
          v116 = v118[2];
          v119 = *(v118 + 7);
          v118 = v118[6];
        }

        while (!v119);
      }

      if (!v117)
      {
        goto LABEL_107;
      }

      v120 = *(*(v117 + 24 * *v116) + 112);
      if (v120)
      {
        v121 = *(v120 + 32);
        v122 = *(v121 + 24);
        v123 = *(v121 + 32);
        v124 = v140;
        *(v121 + 24) = v139;
        *(v121 + 32) = v124;
        result = outlined consume of (@escaping @callee_guaranteed (@in_guaranteed Event, @unowned Snapshot) -> (@unowned UnsafeRawPointer))?(v122, v123);
        v126 = v165;
        v127 = v141;
        v128 = v138;
        *v141 = v143;
        v127[1] = v128;
        v129 = v148;
        v127[2] = v147;
        v127[3] = v129;
        v130 = v145;
        v127[4] = v146;
        v127[5] = v130;
        *(v127 + 48) = v67;
        v127[7] = v57;
        v127[8] = v63;
        v127[9] = v154;
        LODWORD(v130) = v152;
        *(v127 + 20) = v153;
        *(v127 + 21) = v130;
        v127[11] = v64;
        *(v127 + 24) = v151;
        *(v127 + 25) = v65;
        v127[13] = v66;
        *(v127 + 112) = v150;
        *(v127 + 29) = v68;
        v127[15] = 0;
        *(v127 + 64) = 0;
        v127[17] = v93;
        *(v127 + 36) = -1;
        v127[19] = v137;
        v127[20] = 0;
        *(v127 + 168) = v126;
        *(v127 + 43) = -1;
        v131 = v142;
        v127[22] = v38;
        v127[23] = v131;
        *(v127 + 192) = 1;
        return result;
      }

      goto LABEL_105;
    }

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
    goto LABEL_106;
  }

  v142 = v156;
  v68 = v143;
  v69 = v133;
  v70 = v134;
  v71 = v134[1];
  v202 = *v134;
  v203 = v71;
  v204[0] = v134[2];
  *(v204 + 9) = *(v134 + 41);
  v72 = 8 * v143;
  v73 = v135;
  v74 = v132;
  while (1)
  {
    v75 = *v73;
    if (v143 < *v74)
    {
      v76 = (*v69 + v72);
      if ((v76[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v75)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v143, 0, &v202, specialized EvolutionTable.describe(state:));
    }

    v69 = (v75 + 32);
    v74 = (v75 + 44);
    v73 = (v75 + 48);
    v70 = v75;
  }

  if (!*v70)
  {
    goto LABEL_110;
  }

  v94 = *v70 + 24 * *v76;
  v95 = *(*v94 + 44);
  v96 = *(*v94 + 32);
  while (v95)
  {
    if (!*(*v94 + 32))
    {
      goto LABEL_103;
    }

    v97 = *v96++;
    v98 = v97;
    v99 = *(&v97 + 1);
    --v95;
    if (v97 - 1 < v148 && v99 > v148)
    {
      goto LABEL_67;
    }
  }

  v98 = *(v149 + 8);
  if (*(v149 + 32) == 1 && (*(v149 + 24) & 1) == 0)
  {
    goto LABEL_114;
  }

LABEL_67:
  v194[0] = v57;
  v194[1] = v142;
  v194[2] = v154;
  v195 = v153;
  v196 = v152;
  v197 = v160;
  v198 = v151;
  v199 = v162;
  v101 = v163;
  v200 = v163;
  v102 = v160;
  v103 = v57;
  v201 = v150;
  if (v143 >= v162)
  {
    goto LABEL_69;
  }

  while (1)
  {
    v104 = &v102[v72];
    if ((v104[4] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_69:
      if (!v101)
      {
        v136 = v98;
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v143, 0, v194, specialized EvolutionTable.describe(state:));
      }

      v103 = *v101;
      v102 = v101[4];
      v105 = *(v101 + 11);
      v101 = v101[6];
    }

    while (v143 >= v105);
  }

  if (!v103)
  {
    goto LABEL_111;
  }

  *(*(v103 + 24 * *v104) + 136) = v98;
  v186[0] = v57;
  v186[1] = v142;
  v186[2] = v154;
  v187 = v153;
  v188 = v152;
  v189 = v64;
  v190 = v151;
  v191 = v65;
  v106 = v66;
  v192 = v66;
  v107 = v64;
  v108 = v57;
  v193 = v150;
  if (v68 >= v65)
  {
    goto LABEL_76;
  }

  while (1)
  {
    v109 = &v107[v72];
    if ((v109[4] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_76:
      if (!v106)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v68, 0, v186, specialized EvolutionTable.describe(state:));
      }

      v108 = *v106;
      v107 = v106[4];
      v110 = *(v106 + 11);
      v106 = v106[6];
    }

    while (v68 >= v110);
  }

  if (v108)
  {
    *(*(v108 + 24 * *v109) + 68) = v147;
    v178[0] = v57;
    v178[1] = v142;
    v178[2] = v154;
    v179 = v153;
    v180 = v152;
    v181 = v64;
    v182 = v151;
    v183 = v65;
    v111 = v66;
    v184 = v66;
    v112 = v64;
    v113 = v57;
    v185 = v150;
    if (v68 >= v65)
    {
      goto LABEL_83;
    }

    while (1)
    {
      v114 = &v112[v72];
      if ((v114[4] & 1) == 0)
      {
        break;
      }

      do
      {
LABEL_83:
        if (!v111)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(v68, 0, v178, specialized EvolutionTable.describe(state:));
        }

        v113 = *v111;
        v112 = v111[4];
        v115 = *(v111 + 11);
        v111 = v111[6];
      }

      while (v68 >= v115);
    }

    v38 = v149;
    v67 = v144;
    v63 = v142;
    if (v113)
    {
      v93 = v145;
      *(*(v113 + 24 * *v114) + 48) = v146;
      v142 = v148;
      goto LABEL_89;
    }

    goto LABEL_113;
  }

LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

Swift::Bool __swiftcall Interpreter.Iterator.read()()
{
  v3 = v0;
  v4 = *(v0 + 22);
  v5 = *(v4 + 1);
  v6 = *(v4 + 2);
  CFAbsoluteTimeGetCurrent();
  if (v0[48])
  {
    v9 = 0;
    v1 = (v0 + 8);
    v10 = v0 + 16;
  }

  else
  {
    v11 = *v0;
    if (v11 >= *(v4 + 33))
    {
      __break(1u);
      goto LABEL_65;
    }

    add_explicit = *(v4 + 15);
    if (!add_explicit)
    {
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v9 = *(add_explicit + 8 * v11);
    v10 = v0 + 16;
    v1 = (v0 + 8);
    if ((*(v0 + 4) & 1) == 0)
    {
      v12 = *v1;
      add_explicit = atomic_fetch_add_explicit(v9, 0, memory_order_relaxed);
      if (v12 != add_explicit)
      {
        goto LABEL_8;
      }
    }
  }

  if ((v0[129] & 1) == 0)
  {
    v14 = v0[48];
    if (v0[48])
    {
      goto LABEL_14;
    }

    add_explicit = *v0;
    if ((*v0 & 0xFF00) != 0x400)
    {
      goto LABEL_14;
    }

    if (*v0 < *(v4 + 29))
    {
      if (!*(v4 + 13))
      {
LABEL_69:
        __break(1u);
        goto LABEL_70;
      }

      Snapshot.reset()();
      v14 = v0[48];
LABEL_14:
      if (v14)
      {
        goto LABEL_15;
      }

      if ((*v10 & 1) == 0)
      {
        v31 = *v1;
        add_explicit = atomic_fetch_add_explicit(v9, 0, memory_order_relaxed);
        if (v31 != add_explicit)
        {
          goto LABEL_8;
        }

        if (v0[48])
        {
          goto LABEL_15;
        }
      }

      v22 = *v0;
      if (v22 < *(v4 + 29))
      {
        v23 = *(v4 + 13);
        if (!v23)
        {
          goto LABEL_78;
        }

        v24 = *(*(*&v23[8 * v22] + 8) + 8);
        v25 = *(v24 + 16);
        if (*(v24 + 32) != 1 || v25 == 0)
        {
LABEL_15:
          v15 = *(v3 + 184);
          if (v5)
          {
            v16 = v15 >= v5;
          }

          else
          {
            v16 = 0;
          }

          if (v16 && v15 < v6)
          {
            do
            {
              if (!*(v3 + 48) && (*v10 & 1) == 0)
              {
                v21 = *(v3 + 8);
                if (v21 != atomic_fetch_add_explicit(v9, 0, memory_order_relaxed))
                {
                  break;
                }
              }

              if (*(v3 + 129))
              {
                break;
              }

              *(v3 + 120) = v15;
              if (**(v3 + 176))
              {
                v19 = T_TracepointID.model(within:);
                v20 = T_TracepointID.describe(state:);
              }

              else
              {
                v19 = T_TracepointIDV0.model(within:);
                v20 = T_TracepointIDV0.describe(state:);
              }

              _s21SwiftUITracingSupport16TracepointIDLikePAAE5model6withinyAA11InterpreterC8IteratorVz_tFZSo02T_D4IDV0a_Tt0g5Tm(v3, v19, v20);
              v15 = *(v3 + 184);
              if (v15 < v5)
              {
                break;
              }
            }

            while (v15 < v6);
          }

          if (!*(v3 + 48) && (*v10 & 1) == 0 && (v18 = *(v3 + 8), v18 != atomic_fetch_add_explicit(v9, 0, memory_order_relaxed)) || (*(v3 + 129) & 1) != 0)
          {
LABEL_29:
            if (!*(v3 + 48) && (*v10 & 1) == 0)
            {
              atomic_fetch_add_explicit(v9, 0, memory_order_relaxed);
            }

            CFAbsoluteTimeGetCurrent();
            v13 = *(v3 + 48);
            if (*(v3 + 48))
            {
              if (v13 == 1)
              {
                return v13 & 1;
              }
            }

            else
            {
              if (*(v3 + 1) << 8 == 1280)
              {
                LOBYTE(v13) = 1;
                return v13 & 1;
              }

              if ((*v10 & 1) == 0)
              {
                v32 = *v1;
                if (v32 != atomic_fetch_add_explicit(v9, 0, memory_order_relaxed))
                {
                  goto LABEL_8;
                }
              }
            }

            LOBYTE(v13) = *(v3 + 129) ^ 1;
            return v13 & 1;
          }

          if (v5)
          {
            if (v15 == v6)
            {
              goto LABEL_29;
            }

            goto LABEL_71;
          }

LABEL_70:
          __break(1u);
LABEL_71:
          v55 = *v3;
          v34 = *(v1 + 16);
          *&v63[8] = *v1;
          v64 = v34;
          v65 = *(v1 + 32);
          v35 = *(v3 + 48);
          *(&v66 + 1) = *(v3 + 49);
          HIDWORD(v66) = *(v3 + 52);
          v2 = *(v3 + 56);
          v86 = *(v3 + 64);
          v9 = *(v3 + 88);
          v87 = *(v3 + 80);
          LODWORD(v10) = *(v3 + 100);
          LODWORD(v53) = *(v3 + 96);
          v4 = *(v3 + 104);
          LODWORD(v52) = *(v3 + 112);
          v75 = *(v3 + 113);
          v76 = *(v3 + 115);
          v54 = *(v3 + 116);
          v78 = *(v3 + 120);
          v56 = *(v3 + 136);
          *&v57 = 0;
          v36 = *(v3 + 160);
          v80 = *(v3 + 144);
          v81 = v36;
          v37 = *(v3 + 176);
          v51 = *(v3 + 184);
          v38 = *(v3 + 192);
          *(&v57 + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(284);
          v85 = v57;
          MEMORY[0x26D69CDB0](8224, 0xE200000000000000);
          v39 = v55;
          *v63 = v55;
          if (v35)
          {
            v39 = 0;
          }

          LODWORD(v50) = v35;
          LOBYTE(v66) = v35;
          v67 = v2;
          v68 = v86;
          v69 = v87;
          v70 = v9;
          v71 = v53;
          v72 = v10;
          v73 = v4;
          v74 = v52;
          v77 = v54;
          v79 = v56;
          v40 = v51;
          v82 = v37;
          v83 = v51;
          v84 = v38;
          v57 = xmmword_26C32DAD0;
          v58 = 0;
          v59 = 0;
          v60 = v37;
          v49 = v37;
          v61 = v39;
          v62 = 1;
          v41 = Interpreter.Iterator.describe(state:)(&v57);
          MEMORY[0x26D69CDB0](v41);

          MEMORY[0x26D69CDB0](0xD000000000000012, 0x800000026C33CB80);
          *v63 = v40;
          _print_unlocked<A, B>(_:_:)();
          MEMORY[0x26D69CDB0](0x697469736F702820, 0xEE00202D20296E6FLL);
          *v63 = v6;
          _print_unlocked<A, B>(_:_:)();
          v42 = MEMORY[0x26D69CDB0](0x3D2029666F652820, 0xE900000000000020);
          if (__OFSUB__(0, &v6[-v40]))
          {
LABEL_88:
            __break(1u);
            goto LABEL_89;
          }

          *v63 = v40 - v6;
          v43 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x26D69CDB0](v43);

          MEMORY[0x26D69CDB0](0xD0000000000000BBLL, 0x800000026C33CBA0);
          *v63 = v56;
          v44 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x26D69CDB0](v44);

          v3 = 0xD000000000000012;
          v42 = MEMORY[0x26D69CDB0](0xD000000000000015, 0x800000026C33CC60);
          v23 = v50;
          if (v50)
          {
            goto LABEL_79;
          }

          v23 = v55;
          if (v55 >= *(v49 + 116))
          {
LABEL_89:
            __break(1u);
            goto LABEL_90;
          }

          add_explicit = *(v49 + 104);
          if (add_explicit)
          {
            goto LABEL_81;
          }

          __break(1u);
LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
          goto LABEL_80;
        }

        v50 = v1;
        v54 = &v49;
        v56 = *(v25 - 8);
        v27 = *(v56 + 64);
        v55 = v22;
        MEMORY[0x28223BE20](v7);
        v51 = (v27 + 15) & 0xFFFFFFFFFFFFFFF0;
        v52 = v28;
        v2 = &v49 - v51;
        v29 = (*(v28 + 16))(v25);
        v53 = &v49;
        MEMORY[0x28223BE20](v29);
        v30 = &v49 - v51;
        (*(v56 + 16))(&v49 - v51, v2, v25);
        v1 = _s21SwiftUITracingSupport6StrongVyACyxGxcfCAA14EventAggregate_p_Tt0g5Tf4e_n(v30, v25, v52);
        (*(v56 + 8))(v2, v25);
        add_explicit = v55;
        if (v55 < *(v4 + 29))
        {
          v23 = *(v4 + 13);
          if (!v23)
          {
LABEL_80:
            __break(1u);
LABEL_81:
            *v63 = *(*(*(add_explicit + 8 * v23) + 8) + 16);
            _print_unlocked<A, B>(_:_:)();
            MEMORY[0x26D69CDB0](v3 + 1, 0x800000026C33CC80);
            *v63 = v2;
            *&v63[8] = v86;
            *&v64 = v87;
            *(&v64 + 1) = v9;
            v65 = __PAIR64__(v10, v53);
            v66 = v4;
            LOBYTE(v67) = v52;
            v42 = v54;
            v45 = v54;
            if (v54 >= v10)
            {
              goto LABEL_83;
            }

LABEL_82:
            v46 = &v9[v45];
            if ((v9[v45] & 0x100000000) != 0)
            {
LABEL_83:
              while (v4)
              {
                v2 = *v4;
                v9 = *(v4 + 4);
                v47 = *(v4 + 11);
                v4 = *(v4 + 6);
                if (v54 < v47)
                {
                  goto LABEL_82;
                }
              }

LABEL_90:
              specialized error #1 <A>() in EvolutionTable.address(of:in:)(v42, 0, v63, specialized EvolutionTable.describe(state:));
            }

            if (v2)
            {
              while (1)
              {
                *&v57 = *(*&v2[24 * *v46] + 32);
                v48 = dispatch thunk of CustomStringConvertible.description.getter();
                MEMORY[0x26D69CDB0](v48);

                _assertionFailure(_:_:file:line:flags:)();
                __break(1u);
              }
            }

            __break(1u);
            goto LABEL_88;
          }

          *(*(*&v23[8 * v55] + 8) + 216) = v1;
          v1 = v50;
          goto LABEL_15;
        }

        goto LABEL_67;
      }

LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

LABEL_8:
  LOBYTE(v13) = 0;
  return v13 & 1;
}

void (*Interpreter.Iterator.mode.read(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 72);
  *v3 = *(v1 + 56);
  *(v3 + 16) = v4;
  *(v3 + 32) = *(v1 + 88);
  *(v3 + 41) = *(v1 + 97);
  *(v3 + 96) = specialized EvolutionTable.subscript.read((v3 + 64), *(v1 + 116));
  return Interpreter.Iterator.mode.read;
}

void Interpreter.Iterator.mode.read(uint64_t a1)
{
  v1 = *a1;
  (*(*a1 + 96))();

  free(v1);
}

uint64_t Interpreter.Iterator.AttachmentBuffer.buffer.getter()
{
  result = *v0;
  if (*(v0 + 25))
  {
    if (result)
    {
      v2 = *(v0 + 8) - result;
    }

    else
    {
      v2 = 0;
    }

    v3 = *(v0 + 16);
    if (__OFSUB__(v2, v3))
    {
      goto LABEL_10;
    }

    if (v2 != v3)
    {
      __break(1u);
LABEL_10:
      __break(1u);
      return result;
    }
  }

  if (result == -1)
  {
    return 0;
  }

  return result;
}

void (*Interpreter.Iterator.reading.modify())()
{
  if (v0[48])
  {
    goto LABEL_6;
  }

  v1 = *(v0 + 22);
  if (*v0 >= *(v1 + 116))
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (*(v1 + 104))
  {
    return EventTreeStats.count.modify;
  }

LABEL_7:
  __break(1u);
  return result;
}

void (*Interpreter.Iterator.swiftUI.read(void (**a1)(void **a1)))(void **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x39uLL);
  }

  *a1 = result;
  v4 = (v1 + 56);
  v5 = *(v1 + 72);
  *result = *(v1 + 56);
  *(result + 1) = v5;
  *(result + 2) = *(v1 + 88);
  *(result + 41) = *(v1 + 97);
  v6 = (v1 + 72);
  v7 = (v1 + 84);
  v8 = (v1 + 104);
  while (1)
  {
    v9 = *v8;
    if (*v7 > 1u)
    {
      v10 = *v6;
      if ((*(v10 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, result, specialized EvolutionTable.describe(state:));
    }

    v6 = (v9 + 16);
    v7 = (v9 + 28);
    v8 = (v9 + 48);
    v4 = v9;
  }

  v11 = *v4;
  if (v11)
  {
    result = (v11 + 24 * *(v10 + 8));
    if (*(*result + 112))
    {
      return Snapshot.subscript.read;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Interpreter.Iterator.debugMode.getter()
{
  v1 = (v0 + 56);
  v2 = *(v0 + 72);
  v12[0] = *(v0 + 56);
  v12[1] = v2;
  v13[0] = *(v0 + 88);
  *(v13 + 9) = *(v0 + 97);
  v3 = (v0 + 88);
  v4 = (v0 + 100);
  v5 = (v0 + 104);
  result = *(v0 + 116);
  v7 = *(v0 + 176);
  v8 = *(v0 + 192);
  while (1)
  {
    v9 = *v5;
    if (result < *v4)
    {
      v10 = (*v3 + 8 * result);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(result, 0, v12, specialized EvolutionTable.describe(state:));
    }

    v3 = (v9 + 32);
    v4 = (v9 + 44);
    v5 = (v9 + 48);
    v1 = v9;
  }

  v11 = *v1;
  if (v11)
  {
    if (((*(*(v11 + 24 * *v10) + 48) >= 0) & v8) == 1)
    {
      return *(v7 + 160);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t (*Interpreter.Iterator.mode.modify(uint64_t (***a1)()))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = specialized EvolutionTable.subscript.modify(v3, *(v1 + 116));
  return UnsafeTree.storage.modify;
}

void Interpreter.Iterator.Mode.add(context:)(uint64_t result)
{
  v2 = *(result + 8);
  if (v2)
  {
    v3 = swift_conformsToProtocol2();
    if (v3)
    {
      if (!v1[14])
      {
        v4 = v3;
        project #1 <A>(_:) in Interpreter.Iterator.Mode.add(context:)(v2, v2);
        v1[14] = v5;
        v6 = *(v4 + 16);
        *v1 = v2;
        v1[1] = v6;
        v1[15] = v2;
        v1[16] = v4;
      }
    }
  }
}

uint64_t *Interpreter.Iterator.iterate<A>()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  result = (*(*(a2 + 8) + 72))();
  v8 = result;
  v9 = *(v4 + 116);
  v10 = *(v4 + 176);
  v11 = (v10 + 40);
  v12 = *(v10 + 56);
  v80[0] = *(v10 + 40);
  v80[1] = v12;
  v81[0] = *(v10 + 72);
  *(v81 + 9) = *(v10 + 81);
  v13 = (v10 + 72);
  v14 = (v10 + 84);
  v15 = (v10 + 88);
  v16 = 8 * v9;
  while (1)
  {
    v17 = *v15;
    if (v9 < *v14)
    {
      v18 = (*v13 + v16);
      if ((v18[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v17)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v9, 0, v80, specialized EvolutionTable.describe(state:));
    }

    v13 = (v17 + 32);
    v14 = (v17 + 44);
    v15 = (v17 + 48);
    v11 = v17;
  }

  v19 = *v11;
  if (!v19)
  {
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  result = (v19 + 24 * *v18);
  v20 = *result;
  v21 = (*result + 56);
  v22 = *(*result + 72);
  v78[0] = *v21;
  v78[1] = v22;
  v79[0] = *(v20 + 88);
  *(v79 + 9) = *(v20 + 97);
  v23 = (v20 + 72);
  v24 = (v20 + 84);
  v25 = (v20 + 104);
  while (1)
  {
    v26 = *v25;
    if (v8 < *v24)
    {
      v27 = (*v23 + 8 * v8);
      if ((v27[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v26)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v8, 1, v78, specialized EvolutionTable.describe(state:));
    }

    v23 = (v26 + 16);
    v24 = (v26 + 28);
    v25 = (v26 + 48);
    v21 = v26;
  }

  v28 = *v21;
  if (!v28)
  {
    goto LABEL_73;
  }

  result = (v28 + 24 * *v27);
  if (*(*result + 64))
  {
    v68 = a1;
    v69 = *(*result + 64);
    v67 = a3;
    v70 = v4;
    v29 = v4 + 56;
    v31 = *(v4 + 72);
    v76[0] = *(v4 + 56);
    v30 = *&v76[0];
    v76[1] = v31;
    *(v77 + 9) = *(v4 + 97);
    v33 = (v4 + 88);
    v32 = *(v4 + 88);
    v34 = *(v4 + 88);
    v36 = (v4 + 100);
    v35 = *(v4 + 100);
    v38 = (v29 + 48);
    v37 = *(v29 + 48);
    v77[0] = v34;
    v71 = *(v29 + 128);
    v39 = *&v76[0];
    v40 = v32;
    v41 = v37;
    if (v9 >= v35)
    {
      goto LABEL_18;
    }

    while (1)
    {
      v42 = (v40 + v16);
      if ((v42[1] & 1) == 0)
      {
        break;
      }

      do
      {
LABEL_18:
        if (!v41)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(v9, 0, v76, specialized EvolutionTable.describe(state:));
        }

        v39 = *v41;
        v40 = v41[4];
        v43 = *(v41 + 11);
        v41 = v41[6];
      }

      while (v9 >= v43);
    }

    if (!v39)
    {
      goto LABEL_74;
    }

    result = (v39 + 24 * *v42);
    v46 = *(*result + 136);
    v47 = *(*result + 144);
    if (v9 >= v35)
    {
      goto LABEL_29;
    }

    while ((*(v32 + v16 + 4) & 1) != 0)
    {
      do
      {
LABEL_29:
        if (!v37)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(v9, 0, v76, specialized EvolutionTable.describe(state:));
        }

        v30 = *v37;
        v32 = v37[4];
        v48 = *(v37 + 11);
        v37 = v37[6];
      }

      while (v9 >= v48);
    }

    if (!v30)
    {
      goto LABEL_75;
    }

    result = (v30 + 24 * *(v32 + 8 * v9));
    v49 = *(*result + 136);
    if (v49)
    {
      if (v46)
      {
        v50 = v47 - v46;
      }

      else
      {
        v50 = 0;
      }

      v51 = &v71[-v49];
      v52 = __OFSUB__(v50, &v71[-v49]);
      v53 = v50 - &v71[-v49];
      if (v53 < 0 != v52)
      {
        __break(1u);
      }

      else if ((v51 & 0x8000000000000000) == 0)
      {
        if (v53 >= v69)
        {
          v53 = v69;
        }

        v54 = &v71[v53];
        *(v70 + 184) = &v71[v53];
        v55 = *(v29 + 16);
        v74[0] = *v29;
        v74[1] = v55;
        v75[0] = *(v29 + 32);
        *(v75 + 9) = *(v29 + 41);
        v56 = (v29 + 48);
        v57 = v36;
        v58 = v33;
        for (i = v29; ; i = v60)
        {
          v60 = *v56;
          if (v9 < *v57)
          {
            v61 = (*v58 + v16);
            if ((v61[1] & 1) == 0)
            {
              break;
            }
          }

          if (!v60)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(v9, 0, v74, specialized EvolutionTable.describe(state:));
          }

          v58 = (v60 + 32);
          v57 = (v60 + 44);
          v56 = (v60 + 48);
        }

        if (*i)
        {
          result = (*i + 24 * *v61);
          v62 = *(*result + 136);
          if (v62)
          {
            if (v54 >= v62 && v54 < *(*result + 144))
            {
              goto LABEL_63;
            }
          }

          v64 = *(v29 + 16);
          v72[0] = *v29;
          v72[1] = v64;
          v73[0] = *(v29 + 32);
          *(v73 + 9) = *(v29 + 41);
          while (1)
          {
            v65 = *v38;
            if (v9 < *v36)
            {
              v66 = (*v33 + v16);
              if ((v66[1] & 1) == 0)
              {
                break;
              }
            }

            if (!v65)
            {
              specialized error #1 <A>() in EvolutionTable.address(of:in:)(v9, 0, v72, specialized EvolutionTable.describe(state:));
            }

            v33 = (v65 + 32);
            v36 = (v65 + 44);
            v38 = (v65 + 48);
            v29 = v65;
          }

          if (*v29)
          {
            *(*(*v29 + 24 * *v66) + 41) = 1;
LABEL_63:

            return closure #1 in Interpreter.Iterator.iterate<A>()(v71, v54, v68, v67);
          }

LABEL_77:
          __break(1u);
          return result;
        }

LABEL_76:
        __break(1u);
        goto LABEL_77;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_72;
  }

  v44 = *(v4 + 184);
  if (*(*(a1 - 8) + 64) < 1)
  {

    return UnsafeRawPointer.loadUnaligned<A>(fromByteOffset:as:)(0, v44, a1, a3);
  }

  else
  {
    v45 = *(v4 + 184);

    return copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v45, v45, a1, a3);
  }
}

Swift::Void __swiftcall Interpreter.Iterator.model(attachment:size:)(Swift::UInt32_optional attachment, Swift::Int size)
{
  v296 = size;
  v293 = *&attachment.value;
  v3 = type metadata accessor for String.Encoding();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v286 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v2 + 7;
  v7 = *(v2 + 9);
  v363[0] = *(v2 + 7);
  v363[1] = v7;
  v364[0] = *(v2 + 11);
  v8 = (v2 + 11);
  v9 = v2 + 100;
  v10 = v2 + 13;
  v11 = *(v2 + 29);
  v12 = 8 * v11;
  *(v364 + 9) = *(v2 + 97);
  v13 = v2 + 7;
  v14 = v2 + 11;
  v15 = v2 + 25;
  v302 = v2 + 13;
  while (1)
  {
    v16 = *v10;
    if (v11 < *v15)
    {
      v17 = (*v14 + v12);
      if ((v17[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v16)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v11, 0, v363, specialized EvolutionTable.describe(state:));
    }

    v14 = (v16 + 32);
    v15 = (v16 + 44);
    v10 = (v16 + 48);
    v13 = v16;
  }

  v18 = *v13;
  if (!v18)
  {
    goto LABEL_282;
  }

  LODWORD(v292) = *(*(v18 + 24 * *v17) + 68);
  v19 = *(v2 + 9);
  v361[0] = *v6;
  v361[1] = v19;
  v362[0] = *(v2 + 11);
  *(v362 + 9) = *(v2 + 97);
  v20 = v2 + 7;
  v21 = v2 + 11;
  v22 = v2 + 25;
  v23 = v302;
  v301 = v2 + 100;
  while (1)
  {
    v24 = *v23;
    if (v11 < *v22)
    {
      v25 = (*v21 + v12);
      if ((v25[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v24)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v11, 0, v361, specialized EvolutionTable.describe(state:));
    }

    v21 = (v24 + 32);
    v22 = (v24 + 44);
    v23 = (v24 + 48);
    v20 = v24;
  }

  v26 = *v20;
  if (!v26)
  {
    goto LABEL_283;
  }

  v298 = *(*(v26 + 24 * *v25) + 48);
  v300 = v2;
  v27 = (v2 + 15);
  v28 = v2[17];
  v286 = v2[15];
  v287 = v28;
  v29 = *(v2 + 9);
  v359[0] = *v6;
  v359[1] = v29;
  v360[0] = *(v2 + 11);
  *(v360 + 9) = *(v2 + 97);
  v30 = v2[7];
  v31 = v2[11];
  v9 = *(v27 - 5);
  v32 = v27;
  v33 = *(v27 - 2);
  v34 = v30;
  v35 = v31;
  v291 = v27;
  v36 = *(v27 + 7);
  v289 = v5;
  v290 = v36;
  v37 = v33;
  v38 = *(v32 + 8);
  v294 = (v32 + 4);
  v295 = v8;
  v299 = v38;
  if (v11 >= v9)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v39 = (v35 + v12);
    if ((v39[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_17:
      if (!v37)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v11, 0, v359, specialized EvolutionTable.describe(state:));
      }

      v34 = *v37;
      v35 = v37[4];
      v40 = *(v37 + 11);
      v37 = v37[6];
    }

    while (v11 >= v40);
  }

  if (!v34)
  {
    goto LABEL_284;
  }

  v41 = v34 + 24 * *v39;
  v42 = *(*v41 + 136);
  v8 = *(*v41 + 144);
  if (v11 >= v9)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v43 = (v31 + v12);
    if ((*(v31 + v12 + 4) & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_24:
      if (!v33)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v11, 0, v359, specialized EvolutionTable.describe(state:));
      }

      v30 = *v33;
      v31 = v33[4];
      v44 = *(v33 + 11);
      v33 = v33[6];
    }

    while (v11 >= v44);
  }

  v45 = v300;
  v9 = v301;
  v46 = v299;
  if (!v30)
  {
    goto LABEL_285;
  }

  v47 = *(*(v30 + 24 * *v43) + 136);
  v48 = v302;
  if (!v47)
  {
    goto LABEL_277;
  }

  if (v42)
  {
    v49 = v8 - v42;
  }

  else
  {
    v49 = 0;
  }

  v50 = v299 - v47;
  v51 = __OFSUB__(v49, v299 - v47);
  v52 = &v49[-(v299 - v47)];
  if (v52 < 0 != v51)
  {
LABEL_266:
    __break(1u);
    goto LABEL_267;
  }

  if ((v50 & 0x8000000000000000) != 0)
  {
LABEL_267:
    __break(1u);
    goto LABEL_268;
  }

  v8 = v295;
  if (v52 >= v296)
  {
    v53 = v296;
  }

  else
  {
    v53 = v52;
  }

  v297 = &v53[v299];
  *v294 = &v53[v299];
  v54 = v6[1];
  v357[0] = *v6;
  v357[1] = v54;
  v358[0] = v6[2];
  *(v358 + 9) = *(v6 + 41);
  v55 = v6;
  v56 = v8;
  v57 = v9;
  v58 = v48;
  v288 = v53;
  while (1)
  {
    v59 = *v58;
    if (v11 < *v57)
    {
      v60 = (*v56 + v12);
      if ((v60[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v59)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v11, 0, v357, specialized EvolutionTable.describe(state:));
    }

    v56 = (v59 + 32);
    v57 = (v59 + 44);
    v58 = (v59 + 48);
    v55 = v59;
  }

  v61 = *v55;
  if (!v61)
  {
    goto LABEL_286;
  }

  v62 = v61 + 24 * *v60;
  v63 = *(*v62 + 136);
  if (!v63 || (v297 >= v63 ? (v64 = v297 >= *(*v62 + 144)) : (v64 = 1), v64))
  {
    v65 = v6[1];
    v355[0] = *v6;
    v355[1] = v65;
    v356[0] = v6[2];
    *(v356 + 9) = *(v6 + 41);
    v66 = v6;
    v67 = v8;
    v68 = v9;
    v69 = v48;
    while (1)
    {
      v70 = *v69;
      if (v11 < *v68)
      {
        v71 = (*v67 + v12);
        if ((v71[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v70)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v11, 0, v355, specialized EvolutionTable.describe(state:));
      }

      v67 = (v70 + 32);
      v68 = (v70 + 44);
      v69 = (v70 + 48);
      v66 = v70;
    }

    v72 = *v66;
    if (!v72)
    {
      goto LABEL_291;
    }

    *(*(v72 + 24 * *v71) + 41) = 1;
  }

  if (!*(v45 + 48))
  {
    v73 = *v45;
    if ((*v45 & 0xFF00) != 0x100)
    {
      goto LABEL_97;
    }

    goto LABEL_63;
  }

  if (*(v45 + 48) != 1)
  {
LABEL_63:
    v74 = v6[1];
    v353[0] = *v6;
    v353[1] = v74;
    v354[0] = v6[2];
    *(v354 + 9) = *(v6 + 41);
    v75 = v6;
    v76 = v8;
    v77 = v9;
    v78 = v48;
    while (1)
    {
      v79 = *v78;
      if (v11 < *v77)
      {
        v80 = (*v76 + v12);
        if ((v80[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v79)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v11, 0, v353, specialized EvolutionTable.describe(state:));
      }

      v76 = (v79 + 32);
      v77 = (v79 + 44);
      v78 = (v79 + 48);
      v75 = v79;
    }

    v81 = *v75;
    if (!v81)
    {
      goto LABEL_292;
    }

    if (*(*(v81 + 24 * *v80) + 96) == 2 && (v292 < 5 || !(v292 % 5)))
    {
      v82 = (v290 + 40);
      v83 = *(v290 + 56);
      v351[0] = *(v290 + 40);
      v351[1] = v83;
      v352[0] = *(v290 + 72);
      *(v352 + 9) = *(v290 + 81);
      v84 = v290 + 72;
      v85 = v290 + 84;
      v86 = (v290 + 88);
      while (1)
      {
        v87 = *v86;
        if (v11 < *v85)
        {
          v88 = (*v84 + v12);
          if ((v88[1] & 1) == 0)
          {
            break;
          }
        }

        if (!v87)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(v11, 0, v351, specialized EvolutionTable.describe(state:));
        }

        v84 = (v87 + 32);
        v85 = (v87 + 44);
        v86 = (v87 + 48);
        v82 = v87;
      }

      v89 = *v82;
      if (!v89)
      {
        goto LABEL_301;
      }

      v90 = (v89 + 24 * *v88);
      v91 = *v90;
      v92 = *(*v90 + 196);
      if (v92 == *(*v90 + 192))
      {
        specialized UnsafeArray.growToCapacity(_:)(2 * v92);
        v46 = v299;
      }

      v93 = *(v91 + 184);
      if (!v93)
      {
        goto LABEL_296;
      }

      v94 = *(v91 + 196);
      v95 = v93 + 32 * v94;
      *v95 = v292;
      v96 = v298;
      *(v95 + 8) = v286;
      *(v95 + 16) = v96;
      *(v95 + 24) = v287;
      if (v94 == -1)
      {
        goto LABEL_274;
      }

      *(v91 + 196) = v94 + 1;
      v48 = v302;
    }

    v97 = *(v45 + 48);
    if (v97 == 2)
    {
      goto LABEL_98;
    }

    if (v97 == 1)
    {
      goto LABEL_87;
    }

    v73 = *v45;
LABEL_97:
    if ((v73 & 0xFF00) == 0x500)
    {
LABEL_305:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return;
    }

LABEL_98:
    LODWORD(v298) = 0;
    goto LABEL_102;
  }

LABEL_87:
  v98 = *v45;
  if ((v11 & *v45) == 0xFFFFFFFF || (LODWORD(v298) = 0, v11 == v98) && v292 == *(v45 + 3))
  {
    v99 = (v290 + 40);
    v100 = *(v290 + 56);
    v349[0] = *(v290 + 40);
    v349[1] = v100;
    v350[0] = *(v290 + 72);
    *(v350 + 9) = *(v290 + 81);
    v101 = v290 + 72;
    v102 = v290 + 84;
    v103 = (v290 + 88);
    while (1)
    {
      v104 = *v103;
      if (v11 < *v102)
      {
        v105 = (*v101 + v12);
        if ((v105[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v104)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v11, 0, v349, specialized EvolutionTable.describe(state:));
      }

      v101 = (v104 + 32);
      v102 = (v104 + 44);
      v103 = (v104 + 48);
      v99 = v104;
    }

    v106 = *v99;
    if (!v106)
    {
      goto LABEL_298;
    }

    v107 = *(v106 + 24 * *v105);
    v108 = *(v107 + 136);
    v347[2] = *(v107 + 120);
    v347[3] = v108;
    v348[0] = *(v107 + 152);
    *(v348 + 9) = *(v107 + 161);
    *(&v109 + 1) = v45[1] & 1;
    *&v109 = *v45;
    if (!specialized EvolutionTable.matches(local:remote:_:)(v109 >> 32, v293 | ((HIDWORD(v293) & 1) << 32), *v290))
    {
      goto LABEL_270;
    }

    LODWORD(v298) = 1;
    v46 = v299;
  }

LABEL_102:
  v110 = v6[1];
  v346[0] = *v6;
  v346[1] = v110;
  v347[0] = v6[2];
  *(v347 + 9) = *(v6 + 41);
  v111 = v6;
  v112 = v8;
  v113 = v9;
  v114 = v48;
  while (1)
  {
    v115 = *v114;
    if (v11 < *v113)
    {
      v116 = (*v112 + v12);
      if ((v116[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v115)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v11, 0, v346, specialized EvolutionTable.describe(state:));
    }

    v112 = (v115 + 32);
    v113 = (v115 + 44);
    v114 = (v115 + 48);
    v111 = v115;
  }

  v117 = *v111;
  if (!v117)
  {
    goto LABEL_287;
  }

  if (*(*(v117 + 24 * *v116) + 96) == 2)
  {
    specialized Interpreter.Iterator.AttachmentBuffer.init(code:byteCount:buffer:model:)(v293 | ((HIDWORD(v293) & 1) << 32), v296, v46, v297, v298, &v315);
    v118 = v316;
    v119 = v317;
    v120 = v9;
    v9 = v319;
    v121 = v48;
    v122 = v320;
    v123 = v6[2];
    v344 = v6[1];
    v345[0] = v123;
    *(v345 + 9) = *(v6 + 41);
    v124 = v6;
    v125 = v8;
    v343 = *v6;
    while (1)
    {
      v126 = *v121;
      if (v11 < *v120)
      {
        v127 = (*v125 + v12);
        if ((v127[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v126)
      {
        v292 = v315;
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v11, 0, &v343, specialized EvolutionTable.describe(state:));
      }

      v125 = (v126 + 32);
      v120 = (v126 + 44);
      v121 = (v126 + 48);
      v124 = v126;
    }

    v135 = *v124;
    if (!v135)
    {
      goto LABEL_293;
    }

    v136 = (v135 + 24 * *v127);
    v137 = 256;
    if (!v318)
    {
      v137 = 0;
    }

    v138 = *v136;
    *(v138 + 72) = v315;
    *(v138 + 88) = v118;
    *(v138 + 96) = v137 | v119 | (v9 << 32);
    *(v138 + 104) = v122;
    v45 = v300;
    v9 = v301;
  }

  else
  {
    v128 = v6[1];
    v343 = *v6;
    v344 = v128;
    v345[0] = v6[2];
    *(v345 + 9) = *(v6 + 41);
    v129 = v48;
    v130 = v9;
    v131 = v8;
    for (i = v6; ; i = v133)
    {
      v133 = *v129;
      if (v11 < *v130)
      {
        v134 = (*v131 + v12);
        if ((v134[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v133)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v11, 0, &v343, specialized EvolutionTable.describe(state:));
      }

      v131 = (v133 + 32);
      v130 = (v133 + 44);
      v129 = (v133 + 48);
    }

    if (!*i)
    {
      goto LABEL_294;
    }

    if (*(*(*i + 24 * *v134) + 96) == 2)
    {
      goto LABEL_280;
    }

    Interpreter.Iterator.AttachmentBuffer.append(buffer:)(v299, v297);
  }

  rawValue = attachmentAssertion.value._rawValue;
  if (attachmentAssertion.value._rawValue)
  {

    v8 = &v303;
    v141 = Interpreter.Iterator.mode.read(&v303);
    v142 = v140[12];
    if (v142 == 2)
    {
      (v141)(&v303, 0);
LABEL_132:

      v8 = v295;
      goto LABEL_160;
    }

    v143 = v140[9];
    v144 = v140[10];
    v9 = v140[11];
    (v141)(&v303, 0);
    if ((v142 & 0x100) == 0)
    {
      goto LABEL_139;
    }

    v145 = v144 - v143;
    if (!v143)
    {
      v145 = 0;
    }

    if (__OFSUB__(v145, v9))
    {
      goto LABEL_273;
    }

    if (v145 == v9)
    {
LABEL_139:
      v45 = v300;
      v147 = Interpreter.Iterator.mode.read(&v303);
      v148 = *(v146 + 96);
      if (v148 != 2)
      {
        v149 = *(v146 + 104);
        v150 = *(v146 + 88);
        v338[2] = *(v146 + 72);
        v339 = v150;
        v340 = v148 & 0x101;
        v341 = HIDWORD(v148);
        v342 = v149 & 1;
        (v147)(&v303, 0);
        v151 = Interpreter.Iterator.AttachmentBuffer.buffer.getter();
        v9 = v301;
        if ((v153 & 1) == 0)
        {
          v154 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSW_Tt0g5(v151, v152);
          v9 = v154;
          v8 = v155;
          if (!rawValue[2])
          {
            goto LABEL_297;
          }

          v156 = specialized __RawDictionaryStorage.find<A>(_:)(v154, v155);
          if ((v157 & 1) == 0)
          {
            goto LABEL_297;
          }

          v158 = *(rawValue[7] + 8 * v156);

          outlined consume of Data._Representation(v9, v8);

          v159 = 0;
          *&v292 = *(v158 + 16);
          v160 = v158;
          v9 = v158 + 32;
          v8 = v295;
          while (v159 != v292)
          {
            if (v159 >= *(v160 + 16))
            {
              __break(1u);
              goto LABEL_266;
            }

            v162 = (v9 + 8 * v159);
            v163 = *v162;
            v164 = v162[1];
            ++v159;
            v165 = v6[1];
            v337[0] = *v6;
            v337[1] = v165;
            v338[0] = v6[2];
            *(v338 + 9) = *(v6 + 41);
            v166 = v301;
            v167 = v302;
            v168 = v295;
            for (j = v6; ; j = v170)
            {
              v170 = *v167;
              if (v11 < *v166)
              {
                v171 = (*v168 + v12);
                if ((v171[1] & 1) == 0)
                {
                  break;
                }
              }

              if (!v170)
              {
                specialized error #1 <A>() in EvolutionTable.address(of:in:)(v11, 0, v337, specialized EvolutionTable.describe(state:));
              }

              v168 = (v170 + 32);
              v166 = (v170 + 44);
              v167 = (v170 + 48);
            }

            if (!*j)
            {
              goto LABEL_279;
            }

            v161 = v163 == *(*(*j + 24 * *v171) + 68) && v164 == v11;
            v45 = v300;
            if (v161)
            {

              v9 = v301;
              goto LABEL_160;
            }
          }

          goto LABEL_276;
        }

        goto LABEL_132;
      }

      (v147)(&v303, 0);
      v8 = v295;
      v9 = v301;
    }

    else
    {

      v8 = v295;
      v45 = v300;
      v9 = v301;
    }
  }

LABEL_160:
  v172 = v302;
  if (v298)
  {
    v173 = v6[1];
    v335[0] = *v6;
    v335[1] = v173;
    v336[0] = v6[2];
    *(v336 + 9) = *(v6 + 41);
    v174 = v302;
    v175 = v9;
    v176 = v8;
    for (k = v6; ; k = v178)
    {
      v178 = *v174;
      if (v11 < *v175)
      {
        v179 = (*v176 + v12);
        if ((v179[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v178)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v11, 0, v335, specialized EvolutionTable.describe(state:));
      }

      v176 = (v178 + 32);
      v175 = (v178 + 44);
      v174 = (v178 + 48);
    }

    if (!*k)
    {
      goto LABEL_295;
    }

    v180 = *k + 24 * *v179;
    v181 = *v180;
    v182 = *(*v180 + 96);
    if (v182 == 2)
    {
      goto LABEL_281;
    }

    if ((v182 & 0x100) == 0)
    {
      goto LABEL_175;
    }

    v183 = v181[9];
    v184 = v181[10];
    v185 = v181[11];
    v186 = v184 - v183;
    if (v183)
    {
      v187 = v186;
    }

    else
    {
      v187 = 0;
    }

    if (__OFSUB__(v187, v185))
    {
      goto LABEL_271;
    }

    if (v187 == v185)
    {
LABEL_175:
      *(v45 + 129) = 1;
    }
  }

  if (readingDebug)
  {
    v188 = *(v45 + 5);
    v305[2] = *(v45 + 4);
    v305[3] = v188;
    v305[4] = *(v45 + 6);
    v189 = *(v45 + 1);
    v303 = *v45;
    v304 = v189;
    v190 = *(v45 + 3);
    v305[0] = *(v45 + 2);
    v305[1] = v190;
    v191 = *v294;
    v314 = *(v294 + 8);
    v192 = *(v45 + 28);
    v11 = *(v45 + 29);
    v193 = *v291;
    v194 = v291[1];
    v195 = *(v291 + 6);
    v310 = v291[2];
    v309 = v194;
    v308 = v193;
    v196 = v45[22];
    v306 = v192;
    v307 = v11;
    v311 = v195;
    v312 = v196;
    v313 = v191;
    if ((Interpreter.Iterator.debugMode.getter() & 1) == 0)
    {
      v12 = 8 * v11;
      goto LABEL_241;
    }

    v197 = v6[1];
    v303 = *v6;
    v304 = v197;
    v305[0] = v6[2];
    v12 = 8 * v11;
    *(v305 + 9) = *(v6 + 41);
    v198 = v6;
    v199 = v8;
    v200 = v9;
    v201 = v172;
    while (1)
    {
      v202 = *v201;
      if (v11 < *v200)
      {
        v203 = (*v199 + v12);
        if ((v203[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v202)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v11, 0, &v303, specialized EvolutionTable.describe(state:));
      }

      v199 = (v202 + 32);
      v200 = (v202 + 44);
      v201 = (v202 + 48);
      v198 = v202;
    }

    v204 = *v198;
    if (!v204)
    {
      goto LABEL_299;
    }

    v205 = v204 + 24 * *v203;
    v206 = *v205;
    v207 = *(*v205 + 96);
    if (v207 == 2)
    {
      goto LABEL_290;
    }

    if ((v207 & 0x100) == 0)
    {
      goto LABEL_193;
    }

    v208 = v206[9];
    v209 = v206[10];
    v210 = v206[11];
    v211 = v209 - v208;
    if (v208)
    {
      v212 = v211;
    }

    else
    {
      v212 = 0;
    }

    if (__OFSUB__(v212, v210))
    {
      goto LABEL_275;
    }

    if (v212 == v210)
    {
LABEL_193:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
      v301 = swift_allocObject();
      *(v301 + 16) = xmmword_26C328DC0;
      *&v332 = 0;
      *(&v332 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(22);
      v321[0] = v332;
      if (v298)
      {
        *&v330[0] = 543236173;
        *(&v330[0] + 1) = 0xE400000000000000;
        v213 = v6[1];
        v332 = *v6;
        v333 = v213;
        v334[0] = v6[2];
        *(v334 + 9) = *(v6 + 41);
        v214 = v172;
        v215 = v9;
        v216 = v8;
        for (m = v6; ; m = v218)
        {
          v218 = *v214;
          if (v11 < *v215)
          {
            v219 = (*v216 + v12);
            if ((v219[1] & 1) == 0)
            {
              break;
            }
          }

          if (!v218)
          {
            goto LABEL_204;
          }

          v216 = (v218 + 32);
          v215 = (v218 + 44);
          v214 = (v218 + 48);
        }

        v221 = *m;
        if (*m)
        {
LABEL_208:
          *&v328[0] = *(v221[3 * *v219] + 48);
          v226 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x26D69CDB0](v226);

          MEMORY[0x26D69CDB0](2629690, 0xE300000000000000);
          MEMORY[0x26D69CDB0](*&v330[0], *(&v330[0] + 1));

          v227 = v6[1];
          v330[0] = *v6;
          v330[1] = v227;
          v331[0] = v6[2];
          *(v331 + 9) = *(v6 + 41);
          v228 = v6;
          v229 = v8;
          v230 = v9;
          v231 = v302;
          while (1)
          {
            v232 = *v231;
            if (v11 < *v230)
            {
              v233 = (*v229 + v12);
              if ((v233[1] & 1) == 0)
              {
                break;
              }
            }

            if (!v232)
            {
              specialized error #1 <A>() in EvolutionTable.address(of:in:)(v11, 0, v330, specialized EvolutionTable.describe(state:));
            }

            v229 = (v232 + 32);
            v230 = (v232 + 44);
            v231 = (v232 + 48);
            v228 = v232;
          }

          v234 = *v228;
          if (!v234)
          {
            goto LABEL_300;
          }

          LODWORD(v328[0]) = *(*(v234 + 24 * *v233) + 68);
          v235 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x26D69CDB0](v235);

          MEMORY[0x26D69CDB0](8233, 0xE200000000000000);
          if ((v293 & 0x100000000) != 0)
          {
            v236 = 0xE300000000000000;
            v237 = 7104878;
          }

          else
          {
            v238 = (v196 + 40);
            v239 = *(v196 + 56);
            v328[0] = *(v196 + 40);
            v328[1] = v239;
            v329[0] = *(v196 + 72);
            *(v329 + 9) = *(v196 + 81);
            v240 = (v196 + 72);
            v241 = (v196 + 84);
            v242 = (v196 + 88);
            while (1)
            {
              v243 = *v242;
              if (v11 < *v241)
              {
                v244 = (*v240 + v12);
                if ((v244[1] & 1) == 0)
                {
                  break;
                }
              }

              if (!v243)
              {
                specialized error #1 <A>() in EvolutionTable.address(of:in:)(v11, 0, v328, specialized EvolutionTable.describe(state:));
              }

              v240 = (v243 + 32);
              v241 = (v243 + 44);
              v242 = (v243 + 48);
              v238 = v243;
            }

            v245 = *v238;
            if (!v245)
            {
              goto LABEL_303;
            }

            v246 = (v245 + 24 * *v244);
            v247 = *v246;
            v248 = (*v246 + 120);
            v249 = *(*v246 + 136);
            v326[0] = *v248;
            v326[1] = v249;
            v327[0] = *(v247 + 152);
            *(v327 + 9) = *(v247 + 161);
            v250 = (v247 + 152);
            v251 = (v247 + 164);
            v252 = (v247 + 168);
            while (1)
            {
              v253 = *v252;
              if (v293 < *v251)
              {
                v254 = (*v250 + 8 * v293);
                if ((v254[1] & 1) == 0)
                {
                  break;
                }
              }

              if (!v253)
              {
                specialized error #1 <A>() in EvolutionTable.address(of:in:)(v293, 0, v326, specialized EvolutionTable.describe(state:));
              }

              v250 = (v253 + 32);
              v251 = (v253 + 44);
              v252 = (v253 + 48);
              v248 = v253;
            }

            v255 = *v248;
            if (!v255)
            {
              goto LABEL_304;
            }

            v256 = *(*(v255 + 24 * *v254) + 16);
            v237 = *v256;
            v236 = v256[1];
          }

          MEMORY[0x26D69CDB0](v237, v236);

          MEMORY[0x26D69CDB0](32, 0xE100000000000000);
          *&v323 = v296;
          v257 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x26D69CDB0](v257);

          MEMORY[0x26D69CDB0](0x2220736574796220, 0xE800000000000000);
          v258 = v288;
          if (!v299)
          {
            v258 = 0;
          }

          if ((v258 & 0x8000000000000000) != 0)
          {
            goto LABEL_272;
          }

          if (v258 >= 0x28)
          {
            v258 = 40;
          }

          *&v323 = 0;
          *(&v323 + 1) = v258;
          *&v324 = v299;
          *(&v324 + 1) = v297;
          static String.Encoding.utf8.getter();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SliceVySWGMd, &_ss5SliceVySWGMR);
          lazy protocol witness table accessor for type Slice<UnsafeRawBufferPointer> and conformance Slice<A>();
          v259 = String.init<A>(bytes:encoding:)();
          if (v260)
          {
            v261 = v260;
          }

          else
          {
            v259 = 0;
            v261 = 0xE000000000000000;
          }

          MEMORY[0x26D69CDB0](v259, v261);

          MEMORY[0x26D69CDB0](34, 0xE100000000000000);
          v262 = v321[0];
          v263 = v301;
          *(v301 + 56) = MEMORY[0x277D837D0];
          *(v263 + 32) = v262;
          print(_:separator:terminator:)();

          v172 = v302;
          goto LABEL_241;
        }

        __break(1u);
      }

      else
      {
        *&v330[0] = 543236211;
        *(&v330[0] + 1) = 0xE400000000000000;
        v220 = v6[1];
        v332 = *v6;
        v333 = v220;
        v334[0] = v6[2];
        *(v334 + 9) = *(v6 + 41);
        v221 = v6;
        v222 = v8;
        v223 = v9;
        v224 = v172;
        while (1)
        {
          v225 = *v224;
          if (v11 < *v223)
          {
            v219 = (*v222 + v12);
            if ((v219[1] & 1) == 0)
            {
              break;
            }
          }

          if (!v225)
          {
LABEL_204:
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(v11, 0, &v332, specialized EvolutionTable.describe(state:));
          }

          v222 = (v225 + 32);
          v223 = (v225 + 44);
          v224 = (v225 + 48);
          v221 = v225;
        }
      }

      v221 = *v221;
      if (!v221)
      {
LABEL_302:
        __break(1u);
LABEL_303:
        __break(1u);
LABEL_304:
        __break(1u);
        goto LABEL_305;
      }

      goto LABEL_208;
    }
  }

LABEL_241:
  v264 = v6[1];
  v323 = *v6;
  v324 = v264;
  v325[0] = v6[2];
  *(v325 + 9) = *(v6 + 41);
  v265 = v6;
  v266 = v8;
  v267 = v9;
  v268 = v172;
  while (1)
  {
    v269 = *v268;
    if (v11 < *v267)
    {
      v270 = (*v266 + v12);
      if ((v270[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v269)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v11, 0, &v323, specialized EvolutionTable.describe(state:));
    }

    v266 = (v269 + 32);
    v267 = (v269 + 44);
    v268 = (v269 + 48);
    v265 = v269;
  }

  v271 = *v265;
  if (!v271)
  {
    goto LABEL_288;
  }

  v272 = v271 + 24 * *v270;
  v273 = *v272;
  v274 = *(*v272 + 96);
  if (v274 == 2)
  {
    goto LABEL_278;
  }

  if ((v274 & 0x100) != 0)
  {
    v275 = v273[9];
    v276 = v273[10];
    v277 = v273[11];
    v278 = v276 - v275;
    if (v275)
    {
      v279 = v278;
    }

    else
    {
      v279 = 0;
    }

    if (__OFSUB__(v279, v277))
    {
      goto LABEL_269;
    }

    if (v279 != v277)
    {
      return;
    }
  }

  v280 = v6[1];
  v321[0] = *v6;
  v321[1] = v280;
  v322[0] = v6[2];
  *(v322 + 9) = *(v6 + 41);
  while (1)
  {
    v281 = *v172;
    if (v11 < *v9)
    {
      v282 = (*v8 + v12);
      if ((v282[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v281)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v11, 0, v321, specialized EvolutionTable.describe(state:));
    }

    v8 = (v281 + 32);
    v9 = v281 + 44;
    v172 = (v281 + 48);
    v6 = v281;
  }

  if (!*v6)
  {
    goto LABEL_289;
  }

  v283 = *v6 + 24 * *v282;
  v284 = *(*v283 + 68);
  v64 = __CFADD__(v284, 1);
  v285 = v284 + 1;
  if (v64)
  {
LABEL_268:
    __break(1u);
LABEL_269:
    __break(1u);
LABEL_270:
    __break(1u);
LABEL_271:
    __break(1u);
LABEL_272:
    __break(1u);
LABEL_273:
    __break(1u);
LABEL_274:
    __break(1u);
LABEL_275:
    __break(1u);
LABEL_276:

    __break(1u);
LABEL_277:
    __break(1u);
LABEL_278:
    __break(1u);
LABEL_279:
    __break(1u);
LABEL_280:
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
LABEL_286:
    __break(1u);
LABEL_287:
    __break(1u);
LABEL_288:
    __break(1u);
LABEL_289:
    __break(1u);
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
LABEL_295:
    __break(1u);
LABEL_296:
    __break(1u);
LABEL_297:
    outlined consume of Data._Representation(v9, v8);
    __break(1u);
LABEL_298:
    __break(1u);
LABEL_299:
    __break(1u);
LABEL_300:
    __break(1u);
LABEL_301:
    __break(1u);
    goto LABEL_302;
  }

  *(*v283 + 68) = v285;
}

void Interpreter.Iterator.swiftUI.getter(_OWORD *a1@<X8>)
{
  v3 = (v1 + 56);
  v4 = *(v1 + 72);
  v15[0] = *(v1 + 56);
  v15[1] = v4;
  v16[0] = *(v1 + 88);
  *(v16 + 9) = *(v1 + 97);
  v5 = (v1 + 72);
  v6 = (v1 + 84);
  v7 = (v1 + 104);
  while (1)
  {
    v8 = *v7;
    if (*v6 >= 2u)
    {
      v9 = *v5;
      if ((*(v9 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v8)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v15, specialized EvolutionTable.describe(state:));
    }

    v5 = (v8 + 16);
    v6 = (v8 + 28);
    v7 = (v8 + 48);
    v3 = v8;
  }

  v10 = *v3;
  if (v10)
  {
    v11 = *(*(v10 + 24 * *(v9 + 8)) + 112);
    if (v11)
    {
      v12 = v11[5];
      a1[4] = v11[4];
      a1[5] = v12;
      a1[6] = v11[6];
      *(a1 + 109) = *(v11 + 109);
      v13 = v11[1];
      *a1 = *v11;
      a1[1] = v13;
      v14 = v11[3];
      a1[2] = v11[2];
      a1[3] = v14;
      return;
    }

    __break(1u);
  }

  __break(1u);
}

void (*Interpreter.Iterator.swiftUI.modify(void (**a1)(void **a1)))(void **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x39uLL);
  }

  *a1 = result;
  v4 = (v1 + 56);
  v5 = *(v1 + 56);
  v6 = *(v1 + 72);
  v7 = *(v1 + 88);
  *(result + 41) = *(v1 + 97);
  *(result + 1) = v6;
  *(result + 2) = v7;
  *result = v5;
  v8 = (v1 + 72);
  v9 = (v1 + 84);
  v10 = (v1 + 104);
  while (1)
  {
    v11 = *v10;
    if (*v9 > 1u)
    {
      v12 = *v8;
      if ((*(v12 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v11)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, result, specialized EvolutionTable.describe(state:));
    }

    v8 = (v11 + 16);
    v9 = (v11 + 28);
    v10 = (v11 + 48);
    v4 = v11;
  }

  v13 = *v4;
  if (v13)
  {
    result = (v13 + 24 * *(v12 + 8));
    if (*(*result + 112))
    {
      return Snapshot.subscript.read;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void (*Interpreter.Iterator.control.read(void (**a1)(void **a1)))(void **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x79uLL);
  }

  v4 = result;
  *a1 = result;
  v5 = (v1 + 56);
  v6 = *(v1 + 72);
  *(result + 4) = *(v1 + 56);
  *(result + 5) = v6;
  *(result + 6) = *(v1 + 88);
  *(result + 105) = *(v1 + 97);
  v7 = (v1 + 72);
  v8 = (v1 + 84);
  v9 = (v1 + 104);
  while (1)
  {
    v10 = *v9;
    if (*v8)
    {
      v11 = *v7;
      if ((v11[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v10)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, result + 64, specialized EvolutionTable.describe(state:));
    }

    v7 = (v10 + 16);
    v8 = (v10 + 28);
    v9 = (v10 + 48);
    v5 = v10;
  }

  v12 = *v5;
  if (v12)
  {
    result = (v12 + 24 * *v11);
    v13 = *(*result + 112);
    if (v13)
    {
      v14 = *v13;
      v15 = v13[1];
      v16 = v13[3];
      *(v4 + 2) = v13[2];
      *(v4 + 3) = v16;
      *v4 = v14;
      *(v4 + 1) = v15;
      return Snapshot.subscript.read;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void Interpreter.Iterator.method.getter(char *a1@<X8>)
{
  if (*(v1 + 48))
  {
    if (*(v1 + 48) == 1)
    {
      v2 = 5;
    }

    else
    {
      v2 = 1;
    }

    *a1 = v2;
  }

  else
  {
    *a1 = *(v1 + 1);
  }
}

uint64_t Interpreter.Iterator.endInflight(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[48];
  v5 = *(v1 + 72);
  v216[0] = *(v1 + 56);
  v216[1] = v5;
  v217[0] = *(v1 + 88);
  *(v217 + 9) = *(v1 + 97);
  v6 = (v1 + 72);
  v7 = v1 + 84;
  v8 = (v1 + 104);
  v9 = *(v1 + 22);
  for (i = (v1 + 56); ; i = v11)
  {
    v11 = *v8;
    if (*v7)
    {
      v12 = *v6;
      if ((v12[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v11)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v216, specialized EvolutionTable.describe(state:));
    }

    v6 = (v11 + 16);
    v7 = (v11 + 28);
    v8 = (v11 + 48);
  }

  v13 = *i;
  if (!v13)
  {
    goto LABEL_231;
  }

  v14 = *(*(v13 + 24 * *v12) + 112);
  if (!v14)
  {
LABEL_202:
    __break(1u);
LABEL_203:
    __break(1u);
LABEL_204:
    __break(1u);
LABEL_205:
    __break(1u);
LABEL_206:
    __break(1u);
LABEL_207:
    __break(1u);
LABEL_208:
    __break(1u);
LABEL_209:
    __break(1u);
LABEL_210:
    __break(1u);
LABEL_211:
    __break(1u);
LABEL_212:
    __break(1u);
LABEL_213:
    __break(1u);
LABEL_214:
    __break(1u);
LABEL_215:
    __break(1u);
LABEL_216:
    __break(1u);
LABEL_217:
    __break(1u);
LABEL_218:
    __break(1u);
LABEL_219:
    __break(1u);
LABEL_220:
    __break(1u);
LABEL_221:
    __break(1u);
LABEL_222:
    __break(1u);
LABEL_223:
    __break(1u);
LABEL_224:
    __break(1u);
LABEL_225:
    __break(1u);
LABEL_226:
    __break(1u);
LABEL_227:
    __break(1u);
LABEL_228:
    __break(1u);
LABEL_229:
    __break(1u);
LABEL_230:
    __break(1u);
LABEL_231:
    __break(1u);
LABEL_232:
    __break(1u);
LABEL_233:
    __break(1u);
LABEL_234:
    __break(1u);
LABEL_235:
    __break(1u);
LABEL_236:
    __break(1u);
LABEL_237:
    __break(1u);
LABEL_238:
    _StringGuts.grow(_:)(51);
    MEMORY[0x26D69CDB0](0xD000000000000031, 0x800000026C33B5C0);
    v204 = xmmword_26C32DAD0;
    LOBYTE(v205) = 1;
    *(&v205 + 1) = 0;
    *&v206[0] = 0;
    WORD4(v206[0]) = 512;
    v200 = Event.describe(state:)(&v204);
    MEMORY[0x26D69CDB0](v200);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v15 = *(*(v14 + 32) + 8);
  v16 = *(v15 + 16);
  v17 = (v15 + 48 * v16 - 16);
  do
  {
    if (v16 <= 0)
    {
      goto LABEL_193;
    }

    if (v16-- > *(v15 + 16))
    {
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
      goto LABEL_163;
    }

    if (v4)
    {
      goto LABEL_194;
    }

    if (*(v9 + 116) <= v3)
    {
      goto LABEL_157;
    }

    v18 = *(v9 + 104);
    if (!v18)
    {
      goto LABEL_195;
    }

    v19 = *v17;
    v20 = *(*(v18 + 8 * v3) + 8);
    if (v19 >= *(v20 + 44))
    {
      goto LABEL_158;
    }

    v21 = *(v20 + 32);
    if (!v21)
    {
      goto LABEL_196;
    }

    v22 = (v21 + (v19 << 7));
    v23 = v22[5];
    v17 -= 12;
    v215[6] = v22[4];
    v215[7] = v23;
    v24 = v22[7];
    v215[8] = v22[6];
    v215[9] = v24;
    v25 = v22[1];
    v215[2] = *v22;
    v215[3] = v25;
    v26 = v22[3];
    v215[4] = v22[2];
    v215[5] = v26;
  }

  while (!Event.contains<A>(noun:)(a1, a1));
  v27 = *(v1 + 40);
  v28 = *(v1 + 43);
  v29 = *(v9 + 104);
  if (!v27 && v28 == -1)
  {
    v30 = v1 + 56;
    if (v1[48])
    {
      goto LABEL_209;
    }

    goto LABEL_33;
  }

  v30 = v1 + 56;
  if (v1[48])
  {
    goto LABEL_228;
  }

  v31 = *v1;
  if (v31 >= *(v9 + 116))
  {
    goto LABEL_190;
  }

  if (!v29)
  {
    goto LABEL_229;
  }

  v32 = *(*(v29 + 8 * v31) + 8);
  if (v19 >= *(v32 + 44))
  {
LABEL_191:
    __break(1u);
    goto LABEL_192;
  }

  v33 = *(v32 + 32);
  if (!v33)
  {
    goto LABEL_230;
  }

  v34 = v33 + (v19 << 7);
  v36 = *(v34 + 68);
  v35 = v34 + 68;
  if (v36)
  {
    v37 = 0;
  }

  else
  {
    v37 = *(v35 + 12) == -1;
  }

  if (v37)
  {
    v38 = *(v1 + 41);
    v39 = v1[168];
    *v35 = v27;
    *(v35 + 4) = v38;
    *(v35 + 8) = v39;
    *(v35 + 12) = v28;
    v29 = *(v9 + 104);
    if (v1[48])
    {
      goto LABEL_209;
    }
  }

LABEL_33:
  v40 = *(v9 + 116);
  v41 = *v1;
  if (v41 >= v40)
  {
LABEL_163:
    __break(1u);
LABEL_164:
    __break(1u);
LABEL_165:
    __break(1u);
LABEL_166:
    __break(1u);
    goto LABEL_167;
  }

  if (!v29)
  {
    goto LABEL_203;
  }

  v42 = *(*(v29 + 8 * v41) + 8);
  if (v19 >= *(v42 + 44))
  {
    goto LABEL_164;
  }

  v43 = *(v42 + 32);
  if (!v43)
  {
    goto LABEL_204;
  }

  v44 = v43 + (v19 << 7);
  v45 = *(v44 + 8);
  v46 = *(v44 + 16);
  v47 = *(v44 + 24);
  v48 = *(v44 + 25);
  v51 = v44 + 28;
  v50 = *(v44 + 28);
  v49 = *(v51 + 4);
  LOBYTE(v207) = v47;
  v37 = v48 == 0;
  v52 = 256;
  if (v37)
  {
    v52 = 0;
  }

  if (_s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV6UpdateV_Ttgq5(v45, v46, v52 | (v50 << 32) | v47, v49))
  {
    if (v1[48])
    {
      goto LABEL_210;
    }

    v53 = *v1;
    if (v53 < v40)
    {
      v54 = *(*(v29 + 8 * v53) + 8);
      v55 = v30[1];
      v214[0] = *v30;
      v214[1] = v55;
      v215[0] = v30[2];
      *(v215 + 9) = *(v30 + 41);
      v56 = v1 + 100;
      v57 = *(v1 + 29);
      v58 = v30;
      v59 = (v1 + 104);
      v60 = v1 + 88;
      while (1)
      {
        v61 = *v59;
        if (v57 < *v56)
        {
          v62 = (*v60 + 8 * v57);
          if ((v62[1] & 1) == 0)
          {
            break;
          }
        }

        if (!v61)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(v57, 0, v214, specialized EvolutionTable.describe(state:));
        }

        v60 = (v61 + 32);
        v56 = (v61 + 44);
        v59 = (v61 + 48);
        v58 = v61;
      }

      if (!*v58)
      {
        goto LABEL_237;
      }

      if (v19 < *(v54 + 44))
      {
        v63 = *(v54 + 32);
        if (!v63)
        {
          goto LABEL_211;
        }

        v64 = *(*(*v58 + 24 * *v62) + 32);
        v65 = v63 + (v19 << 7);
        v67 = *(v65 + 8);
        v66 = *(v65 + 16);
        v68 = *(v65 + 24);
        v69 = *(v65 + 25);
        v72 = v65 + 28;
        v70 = *(v65 + 28);
        v71 = *(v72 + 4);
        LOBYTE(v207) = v68;
        v37 = v69 == 0;
        v73 = 256;
        if (v37)
        {
          v73 = 0;
        }

        v74 = v73 | (v70 << 32);
        updated = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV6UpdateV_Ttgq5(v67, v66, v74 | v68, v71);
        LOBYTE(v207) = v68;
        v76 = specialized HeterogeneousBuffer.valuePointer<A>(for:)(updated, v67, v66, v74 | v68, v71);
        if (v64 >= v76->Kind)
        {
          v76->Description = v64;
          goto LABEL_57;
        }

LABEL_169:
        __break(1u);
LABEL_170:
        __break(1u);
        goto LABEL_171;
      }

LABEL_168:
      __break(1u);
      goto LABEL_169;
    }

LABEL_167:
    __break(1u);
    goto LABEL_168;
  }

LABEL_57:
  if (v1[48])
  {
    goto LABEL_205;
  }

  v77 = *(v9 + 116);
  v78 = *v1;
  if (v78 >= v77)
  {
    goto LABEL_165;
  }

  v79 = *(v9 + 104);
  if (!v79)
  {
    goto LABEL_206;
  }

  v80 = *(*(v79 + 8 * v78) + 8);
  if (v19 >= *(v80 + 44))
  {
    goto LABEL_166;
  }

  v81 = *(v80 + 32);
  if (!v81)
  {
    goto LABEL_207;
  }

  v82 = v81 + (v19 << 7);
  v83 = *(v82 + 8);
  v84 = *(v82 + 16);
  v85 = *(v82 + 24);
  v86 = *(v82 + 25);
  v89 = v82 + 28;
  v88 = *(v82 + 28);
  v87 = *(v89 + 4);
  LOBYTE(v207) = v85;
  v37 = v86 == 0;
  v90 = 256;
  if (v37)
  {
    v90 = 0;
  }

  if (!specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v83, v84, v90 | (v88 << 32) | v85, v87))
  {
    goto LABEL_145;
  }

  if (v1[48])
  {
    goto LABEL_212;
  }

  v91 = *v1;
  if (v91 >= v77)
  {
    goto LABEL_170;
  }

  v92 = *(*(v79 + 8 * v91) + 8);
  if (v19 >= *(v92 + 44))
  {
LABEL_171:
    __break(1u);
LABEL_172:
    __break(1u);
LABEL_173:
    __break(1u);
    goto LABEL_174;
  }

  v93 = *(v92 + 32);
  if (!v93)
  {
    goto LABEL_213;
  }

  v94 = (v93 + (v19 << 7));
  v95 = v94[1];
  v207 = *v94;
  *v208 = v95;
  v96 = v94[5];
  v210 = v94[4];
  v211 = v96;
  v97 = v94[7];
  v212 = v94[6];
  v213 = v97;
  v98 = v94[3];
  *&v208[16] = v94[2];
  v209 = v98;
  LOBYTE(v204) = v208[8];
  v99 = 256;
  if (!v208[9])
  {
    v99 = 0;
  }

  v100 = v99 | (*&v208[12] << 32);
  v101 = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV6UpdateV_Ttgq5(*(&v207 + 1), *v208, v100 | v208[8], *&v208[16]);
  if (*&v208[12] != v101)
  {
    if (HIDWORD(v101) < *&v208[16])
    {
      if (v208[8])
      {
        goto LABEL_233;
      }

      if (*(&v207 + 1))
      {
        v105 = *(&v207 + 1) + v101;
        v103 = *(v105 + 8);
        v104 = *(v105 + 16);
        goto LABEL_79;
      }

      goto LABEL_234;
    }

LABEL_192:
    __break(1u);
LABEL_193:
    __break(1u);
LABEL_194:
    __break(1u);
LABEL_195:
    __break(1u);
LABEL_196:
    __break(1u);
LABEL_197:
    __break(1u);
LABEL_198:
    __break(1u);
LABEL_199:
    __break(1u);
LABEL_200:
    __break(1u);
LABEL_201:
    __break(1u);
    goto LABEL_202;
  }

  LOBYTE(v204) = v208[8];
  v102 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV12InvalidationV_Ttgq5(*(&v207 + 1), *v208, v100 | v208[8], *&v208[16]);
  if (!v102)
  {
    goto LABEL_238;
  }

  v103 = *v102;
  v104 = *v102;
LABEL_79:
  v106 = Interval.overlappingSelection(within:)(v1, v103, v104);
  if (v1[48])
  {
    goto LABEL_214;
  }

  v107 = *(v9 + 116);
  v108 = *v1;
  if (v108 >= v107)
  {
    goto LABEL_172;
  }

  v109 = *(v9 + 104);
  if (!v109)
  {
    goto LABEL_215;
  }

  if ((v106 & 0x8000000000000000) != 0)
  {
    goto LABEL_173;
  }

  v110 = *(*(v109 + 8 * v108) + 8);
  if (v19 >= *(v110 + 44))
  {
LABEL_174:
    __break(1u);
LABEL_175:
    __break(1u);
LABEL_176:
    __break(1u);
    goto LABEL_177;
  }

  v111 = *(v110 + 32);
  if (!v111)
  {
    goto LABEL_216;
  }

  v112 = v111 + (v19 << 7);
  v114 = *(v112 + 40);
  v113 = (v112 + 40);
  v115 = &v106[v114];
  if (__OFADD__(v114, v106))
  {
    goto LABEL_175;
  }

  *v113 = v115;
  if (v1[48])
  {
    goto LABEL_217;
  }

  v116 = *v1;
  if (v116 >= v107)
  {
    goto LABEL_176;
  }

  v117 = *(*(v109 + 8 * v116) + 8);
  if (v19 >= *(v117 + 44))
  {
LABEL_177:
    __break(1u);
LABEL_178:
    __break(1u);
LABEL_179:
    __break(1u);
LABEL_180:
    __break(1u);
LABEL_181:
    __break(1u);
LABEL_182:
    __break(1u);
LABEL_183:
    __break(1u);
    goto LABEL_184;
  }

  v201 = v106;
  v118 = *(v117 + 32);
  if (!v118)
  {
    goto LABEL_218;
  }

  v119 = v118 + (v19 << 7);
  v120 = *(v119 + 8);
  v121 = *(v119 + 16);
  v122 = *(v119 + 24);
  v123 = *(v119 + 25);
  v126 = v119 + 28;
  v124 = *(v119 + 28);
  v125 = *(v126 + 4);
  LOBYTE(v204) = v122;
  v37 = v123 == 0;
  v127 = 256;
  if (v37)
  {
    v127 = 0;
  }

  v128 = v127 | (v124 << 32);
  v129 = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v120, v121, v128 | v122, v125);
  if (v129)
  {
    v30 = v1 + 56;
    v130 = v201;
    goto LABEL_96;
  }

  LOBYTE(v204) = v122;
  v129 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5(v120, v121, v128 | v122, v125);
  v30 = v1 + 56;
  v130 = v201;
  if (v129)
  {
LABEL_96:
    if (v1[48])
    {
      goto LABEL_224;
    }

    v131 = *v1;
    if (v131 < v107)
    {
      v132 = *v129;
      v133 = *(*(v109 + 8 * v131) + 8);
      if (*v129 < *(v133 + 84))
      {
        v134 = *(v133 + 72);
        if (!v134)
        {
          goto LABEL_225;
        }

        v135 = v134 + 312 * v132;
        v136 = *(v135 + 232);
        v137 = &v130[v136];
        if (!__OFADD__(v136, v130))
        {
          v138 = v130 != 0;
          *(v135 + 232) = v137;
          if (v1[48])
          {
            goto LABEL_226;
          }

          v139 = *v1;
          if (v139 < v107)
          {
            v140 = *(*(v109 + 8 * v139) + 8);
            if (v132 < *(v140 + 84))
            {
              v141 = *(v140 + 72);
              if (!v141)
              {
                goto LABEL_227;
              }

              v142 = v141 + 312 * v132;
              v143 = *(v142 + 248);
              v144 = __OFADD__(v143, v138);
              v145 = v143 + v138;
              if (!v144)
              {
                *(v142 + 248) = v145;
                goto LABEL_107;
              }

LABEL_189:
              __break(1u);
LABEL_190:
              __break(1u);
              goto LABEL_191;
            }

LABEL_188:
            __break(1u);
            goto LABEL_189;
          }

LABEL_187:
          __break(1u);
          goto LABEL_188;
        }

LABEL_186:
        __break(1u);
        goto LABEL_187;
      }

LABEL_185:
      __break(1u);
      goto LABEL_186;
    }

LABEL_184:
    __break(1u);
    goto LABEL_185;
  }

LABEL_107:
  v146 = v30[1];
  v204 = *v30;
  v205 = v146;
  v206[0] = v30[2];
  *(v206 + 9) = *(v30 + 41);
  v147 = v30;
  v149 = v1 + 84;
  v148 = (v1 + 72);
  v150 = (v1 + 104);
  while (1)
  {
    v151 = *v150;
    if (*v149)
    {
      v152 = *v148;
      if ((v152[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v151)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, &v204, specialized EvolutionTable.describe(state:));
    }

    v148 = (v151 + 16);
    v149 = (v151 + 28);
    v150 = (v151 + 48);
    v147 = v151;
  }

  v153 = *v147;
  if (!v153)
  {
    goto LABEL_235;
  }

  v154 = *(*(v153 + 24 * *v152) + 112);
  if (!v154)
  {
    goto LABEL_219;
  }

  v155 = *(*(v154 + 32) + 8);
  v156 = *(v155 + 16);
  v157 = v156 - 1;
  if (!v156)
  {
    v157 = 0;
  }

  v158 = (48 * v156 - 48 * (v156 != 0) + v155 - 16);
  v159 = v157;
  while (v159)
  {
    if (--v159 >= v157)
    {
      goto LABEL_159;
    }

    if (v1[48])
    {
      goto LABEL_197;
    }

    v160 = *(v9 + 116);
    v161 = *v1;
    if (v161 >= v160)
    {
      goto LABEL_160;
    }

    v162 = *(v9 + 104);
    if (!v162)
    {
      goto LABEL_198;
    }

    v163 = *v158;
    v164 = *(*(v162 + 8 * v161) + 8);
    if (v163 >= *(v164 + 44))
    {
      goto LABEL_161;
    }

    v165 = *(v164 + 32);
    if (!v165)
    {
      goto LABEL_199;
    }

    v166 = v165 + (v163 << 7);
    if (!*(v166 + 32))
    {
      goto LABEL_162;
    }

    if (*(v166 + 24))
    {
      goto LABEL_201;
    }

    v167 = *(v166 + 8);
    if (!v167)
    {
      goto LABEL_200;
    }

    v158 -= 12;
    if (*v167 == &type metadata for Event.AttributeValue)
    {
      v168 = *(v166 + 40);
      v144 = __OFSUB__(v168, v130);
      v169 = v168 - v130;
      if (v144)
      {
        goto LABEL_178;
      }

      *(v166 + 40) = v169;
      if (v1[48])
      {
        goto LABEL_220;
      }

      v170 = *v1;
      if (v170 >= v160)
      {
        goto LABEL_179;
      }

      v171 = *(*(v162 + 8 * v170) + 8);
      if (v163 >= *(v171 + 44))
      {
        goto LABEL_180;
      }

      v172 = *(v171 + 32);
      if (!v172)
      {
        goto LABEL_221;
      }

      v173 = v172 + (v163 << 7);
      v174 = *(v173 + 8);
      v175 = *(v173 + 16);
      v176 = *(v173 + 24);
      v177 = *(v173 + 25);
      v180 = v173 + 28;
      v178 = *(v173 + 28);
      v179 = *(v180 + 4);
      LOBYTE(v202[0]) = v176;
      v37 = v177 == 0;
      v181 = 256;
      if (v37)
      {
        v181 = 0;
      }

      v182 = v181 | (v178 << 32);
      v183 = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v174, v175, v182 | v176, v179);
      if (!v183)
      {
        LOBYTE(v202[0]) = v176;
        v183 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5(v174, v175, v182 | v176, v179);
        if (!v183)
        {
          goto LABEL_236;
        }
      }

      if (v1[48])
      {
        goto LABEL_222;
      }

      v184 = *v1;
      if (v184 < v160)
      {
        v185 = *(*(v162 + 8 * v184) + 8);
        if (*v183 >= *(v185 + 84))
        {
          goto LABEL_182;
        }

        v186 = *(v185 + 72);
        if (!v186)
        {
          goto LABEL_223;
        }

        v187 = v186 + 312 * *v183;
        v188 = *(v187 + 232);
        v144 = __OFSUB__(v188, v201);
        v189 = v188 - v201;
        if (v144)
        {
          goto LABEL_183;
        }

        *(v187 + 232) = v189;
        break;
      }

      goto LABEL_181;
    }
  }

LABEL_145:
  v190 = v30[1];
  v202[0] = *v30;
  v202[1] = v190;
  v203[0] = v30[2];
  *(v203 + 9) = *(v30 + 41);
  v191 = v1 + 84;
  v192 = (v1 + 72);
  v193 = (v1 + 104);
  while (1)
  {
    v194 = *v193;
    if (*v191)
    {
      if (((*v192)[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v194)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v202, specialized EvolutionTable.describe(state:));
    }

    v192 = (v194 + 16);
    v191 = (v194 + 28);
    v193 = (v194 + 48);
    v30 = v194;
  }

  if (!*v30)
  {
    goto LABEL_232;
  }

  v195 = *(*(*v30 + 24 * **v192) + 112);
  if (!v195)
  {
    goto LABEL_208;
  }

  v196 = *(v195 + 32);
  v197 = *(v196 + 24);
  v198 = *(v196 + 32);
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed Event, @unowned Snapshot) -> (@unowned UnsafeRawPointer))?(v197, v198);
  Interpreter.Iterator.finalize(update:observer:)(v19, v197, v198);

  return outlined consume of (@escaping @callee_guaranteed (@in_guaranteed Event, @unowned Snapshot) -> (@unowned UnsafeRawPointer))?(v197, v198);
}

void Interpreter.Iterator.updatingValue.getter()
{
  v1 = *v0;
  v50 = v0[48];
  v2 = *(v0 + 72);
  v51[0] = *(v0 + 56);
  v51[1] = v2;
  v52[0] = *(v0 + 88);
  *(v52 + 9) = *(v0 + 97);
  v3 = *(v0 + 7);
  v4 = *(v0 + 13);
  v5 = *(v0 + 9);
  v6 = v4;
  v7 = *(v0 + 22);
  if (!*(v0 + 21))
  {
    goto LABEL_3;
  }

  while ((v5[1] & 1) != 0)
  {
    do
    {
LABEL_3:
      if (!v6)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v51, specialized EvolutionTable.describe(state:));
      }

      v3 = *v6;
      v5 = v6[2];
      v8 = *(v6 + 7);
      v6 = v6[6];
    }

    while (!v8);
  }

  if (!v3)
  {
    goto LABEL_75;
  }

  v9 = *(*(v3 + 24 * *v5) + 112);
  if (!v9)
  {
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  if (*(v9 + 60))
  {
    if (*(v9 + 48))
    {
      return;
    }

    goto LABEL_74;
  }

  v10 = *(v0 + 7);
  v11 = *(v0 + 9);
  v12 = *(v0 + 13);
  if (!*(v0 + 21))
  {
    goto LABEL_14;
  }

  while ((v11[1] & 1) != 0)
  {
    do
    {
LABEL_14:
      if (!v12)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v51, specialized EvolutionTable.describe(state:));
      }

      v10 = *v12;
      v11 = v12[2];
      v13 = *(v12 + 7);
      v12 = v12[6];
    }

    while (!v13);
  }

  if (!v10)
  {
    goto LABEL_78;
  }

  v47 = *(v0 + 21);
  v48 = *(v0 + 9);
  v49 = *(v0 + 7);
  v14 = *(*(v10 + 24 * *v11) + 112);
  if (!v14)
  {
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    return;
  }

  v15 = *(*(v14 + 32) + 8);
  v16 = *(v15 + 16);
  v17 = (v15 + 48 * v16 - 16);
  while (v16-- >= 1)
  {
    if ((v16 + 1) > *(v15 + 16))
    {
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
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
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

    if (v50)
    {
      goto LABEL_65;
    }

    if (*(v7 + 116) <= v1)
    {
      goto LABEL_59;
    }

    v19 = *(v7 + 104);
    if (!v19)
    {
      goto LABEL_66;
    }

    v20 = *v17;
    v21 = *(*(v19 + 8 * v1) + 8);
    if (v20 >= *(v21 + 44))
    {
      goto LABEL_60;
    }

    v22 = *(v21 + 32);
    if (!v22)
    {
      goto LABEL_67;
    }

    v23 = v22 + (v20 << 7);
    v24 = *(v23 + 8);
    v27 = *(v23 + 28);
    v26 = *(v23 + 32);
    v25 = *(v23 + 24);
    v28 = 256;
    if (!*(v23 + 25))
    {
      v28 = 0;
    }

    v29 = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV14AttributeStackV_Ttgq5(v24, *(v23 + 16), v28 | (v27 << 32) | *(v23 + 24), v26);
    if (v27 == v29 && v26 == HIDWORD(v29))
    {
      goto LABEL_38;
    }

    if (HIDWORD(v29) >= v26)
    {
      goto LABEL_61;
    }

    if (v25)
    {
      goto LABEL_68;
    }

    v17 -= 12;
    if (!v24)
    {
      __break(1u);
LABEL_38:
      v31 = v48;
      v32 = v49;
      if (!v47)
      {
        goto LABEL_40;
      }

      while ((v31[1] & 1) != 0)
      {
        do
        {
LABEL_40:
          if (!v4)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v51, specialized EvolutionTable.describe(state:));
          }

          v32 = *v4;
          v31 = v4[2];
          v33 = *(v4 + 7);
          v4 = v4[6];
        }

        while (!v33);
      }

      if (v32)
      {
        v34 = *(*(v32 + 24 * *v31) + 112);
        if (!v34)
        {
          goto LABEL_77;
        }

        v35 = *(*(v34 + 32) + 8);
        v36 = *(v35 + 16);
        v37 = (v35 + 48 * v36 - 16);
        v38 = v36 + 1;
        do
        {
          if (!--v38)
          {
            break;
          }

          if (*(v7 + 116) <= v1)
          {
            goto LABEL_62;
          }

          v39 = *(v7 + 104);
          if (!v39)
          {
            goto LABEL_69;
          }

          v40 = *v37;
          v41 = *(*(v39 + 8 * v1) + 8);
          if (v40 >= *(v41 + 44))
          {
            goto LABEL_63;
          }

          v42 = *(v41 + 32);
          if (!v42)
          {
            goto LABEL_70;
          }

          v43 = v42 + (v40 << 7);
          v46 = *(v43 + 8);
          v45 = v43 + 8;
          v44 = v46;
          if (!*(v45 + 24))
          {
            goto LABEL_64;
          }

          if (*(v45 + 16))
          {
            goto LABEL_72;
          }

          if (!v44)
          {
            goto LABEL_71;
          }

          v37 -= 12;
        }

        while (*v44 != &type metadata for Event.AttributeValue);
        return;
      }

      goto LABEL_79;
    }
  }
}

void Interpreter.Iterator.updateDeallocates(_:)(Swift::Int a1)
{
  v2 = v1;
  v4 = *(v1 + 9);
  v54 = *(v1 + 8);
  v55 = v4;
  v56 = *(v1 + 10);
  v5 = *(v1 + 5);
  v50 = *(v1 + 4);
  v51 = v5;
  v6 = *(v1 + 7);
  v52 = *(v1 + 6);
  v53 = v6;
  v7 = *(v1 + 1);
  v46 = *v1;
  v47 = v7;
  v8 = *(v1 + 3);
  v9 = *(v1 + 23);
  v48 = *(v1 + 2);
  v49 = v8;
  v59 = v1[192];
  v10 = *(v1 + 22);
  v57 = v10;
  v58 = v9;
  Interpreter.Iterator.updatingValue.getter();
  if ((v12 & 1) == 0)
  {
    v13 = v11;
    v14 = (v1 + 56);
    v15 = *(v1 + 72);
    v60[0] = *(v1 + 56);
    v60[1] = v15;
    v61[0] = *(v1 + 88);
    *(v61 + 9) = *(v1 + 97);
    v16 = (v1 + 72);
    v17 = v1 + 84;
    v18 = (v1 + 104);
    while (1)
    {
      v19 = *v18;
      if (*v17)
      {
        v20 = *v16;
        if ((v20[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v19)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v60, specialized EvolutionTable.describe(state:));
      }

      v16 = (v19 + 16);
      v17 = (v19 + 28);
      v18 = (v19 + 48);
      v14 = v19;
    }

    v21 = *v14;
    if (!v21)
    {
      goto LABEL_47;
    }

    v22 = *(*(v21 + 24 * *v20) + 112);
    if (!v22)
    {
      goto LABEL_39;
    }

    if (*(*(*(v22 + 32) + 8) + 16))
    {
      if (v1[48])
      {
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      v23 = *v1;
      if (v23 < *(v10 + 116))
      {
        v24 = *(v10 + 104);
        if (!v24)
        {
LABEL_41:
          __break(1u);
          goto LABEL_42;
        }

        v25 = *(*(v24 + 8 * v23) + 8);
        v26 = *(v1 + 22);
        Interpreter.Iterator.updatingValue.getter();
        if (v28)
        {
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        if (v27 < *(v25 + 44))
        {
          v29 = *(v25 + 32);
          if (!v29)
          {
LABEL_43:
            __break(1u);
LABEL_44:
            __break(1u);
            goto LABEL_45;
          }

          v30 = v29 + (v27 << 7);
          v31 = *(v30 + 8);
          v32 = *(v30 + 16);
          v33 = v30 + 8;
          v34 = 256;
          if (!*(v33 + 17))
          {
            v34 = 0;
          }

          v35 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV10AllocationV_Ttg5(v31, v32, v34 | (*(v33 + 20) << 32) | *(v33 + 16), *(v33 + 24));
          if (v35)
          {
            v37 = *v35;
            v36 = v35[1];
          }

          else
          {
            v36 = MEMORY[0x277D84FA0];
            v37 = MEMORY[0x277D84FA0];
          }

          specialized Set._Variant.insert(_:)(&v45, a1);
          v38 = 256;
          if (!*(v33 + 17))
          {
            v38 = 0;
          }

          v39 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV10AllocationV_Ttg5(*v33, *(v33 + 8), v38 | (*(v33 + 20) << 32) | *(v33 + 16), *(v33 + 24));
          if (v39)
          {
            *v39 = v37;
            v39[1] = v36;
          }

          else
          {
            specialized HeterogeneousBuffer.insert<A>(_:)(v37, v36);
          }

          if (v2[48])
          {
            goto LABEL_44;
          }

          v40 = *v2;
          if (v40 < *(v26 + 116))
          {
            v41 = *(v26 + 104);
            if (!v41)
            {
LABEL_45:
              __break(1u);
LABEL_46:
              __break(1u);
LABEL_47:
              __break(1u);
              return;
            }

            v42 = *(*(v41 + 8 * v40) + 8);
            if (*(v42 + 124) > a1)
            {
              v43 = *(v42 + 112);
              if (v43)
              {
                v44 = v43 + 168 * a1;
                *(v44 + 132) = v13;
                *(v44 + 136) = 0;
                return;
              }

              goto LABEL_46;
            }

            goto LABEL_38;
          }

LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

LABEL_36:
        __break(1u);
        goto LABEL_37;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_36;
  }
}

void Interpreter.Iterator.updatingStack.getter()
{
  v1 = *v0;
  v40 = v0[48];
  v2 = *(v0 + 72);
  v41[0] = *(v0 + 56);
  v41[1] = v2;
  v42[0] = *(v0 + 88);
  *(v42 + 9) = *(v0 + 97);
  v3 = *(v0 + 7);
  v4 = *(v0 + 9);
  v5 = *(v0 + 21);
  v6 = v3;
  v7 = *(v0 + 13);
  v8 = v4;
  v9 = v7;
  v10 = *(v0 + 22);
  if (!v5)
  {
    goto LABEL_3;
  }

  while ((v8[1] & 1) != 0)
  {
    do
    {
LABEL_3:
      if (!v9)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v41, specialized EvolutionTable.describe(state:));
      }

      v6 = *v9;
      v8 = v9[2];
      v11 = *(v9 + 7);
      v9 = v9[6];
    }

    while (!v11);
  }

  if (!v6)
  {
    goto LABEL_61;
  }

  v12 = *(*(v6 + 24 * *v8) + 112);
  if (!v12)
  {
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    return;
  }

  if (*(v12 + 60))
  {
    if (*(v12 + 48))
    {
      return;
    }

    goto LABEL_60;
  }

  while (!v5 || (v4[1] & 1) != 0)
  {
    if (!v7)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v41, specialized EvolutionTable.describe(state:));
    }

    v3 = *v7;
    v4 = v7[2];
    v5 = *(v7 + 7);
    v7 = v7[6];
  }

  if (!v3)
  {
    goto LABEL_65;
  }

  v13 = *(*(v3 + 24 * *v4) + 112);
  if (!v13)
  {
    goto LABEL_62;
  }

  v14 = *(*(v13 + 32) + 8);
  v15 = *(v14 + 16);
  if (!v15)
  {
    return;
  }

  v16 = (v14 + 48 * v15 - 16);
  while (1)
  {
    if (v40)
    {
      goto LABEL_53;
    }

    if (*(v10 + 116) <= v1)
    {
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v17 = *(v10 + 104);
    if (!v17)
    {
      goto LABEL_54;
    }

    v19 = *v16;
    v16 -= 12;
    v18 = v19;
    v20 = *(*(v17 + 8 * v1) + 8);
    if (v19 >= *(v20 + 44))
    {
      goto LABEL_49;
    }

    v21 = *(v20 + 32);
    if (!v21)
    {
      goto LABEL_55;
    }

    v22 = v21 + (v18 << 7);
    v23 = *(v22 + 8);
    v26 = *(v22 + 28);
    v25 = *(v22 + 32);
    v24 = *(v22 + 24);
    v27 = 256;
    if (!*(v22 + 25))
    {
      v27 = 0;
    }

    v28 = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV14AttributeStackV_Ttgq5(v23, *(v22 + 16), v27 | (v26 << 32) | *(v22 + 24), v25);
    if (v26 != v28 || v25 != HIDWORD(v28))
    {
      if (HIDWORD(v28) >= v25)
      {
        goto LABEL_50;
      }

      if (v24)
      {
        goto LABEL_57;
      }

      if (!v23)
      {
        goto LABEL_56;
      }

      v30 = *(*(v17 + 8 * v1) + 8);
      if (v18 >= *(v30 + 44))
      {
        goto LABEL_51;
      }

      v31 = *(v30 + 32);
      if (!v31)
      {
        goto LABEL_58;
      }

      v32 = v31 + (v18 << 7);
      v33 = *(v32 + 8);
      v36 = *(v32 + 28);
      v35 = *(v32 + 32);
      v34 = *(v32 + 24);
      v37 = 256;
      if (!*(v32 + 25))
      {
        v37 = 0;
      }

      updated = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV6UpdateV_Ttgq5(v33, *(v32 + 16), v37 | (v36 << 32) | *(v32 + 24), v35);
      if (v36 != updated || v35 != HIDWORD(updated))
      {
        break;
      }
    }

    if (!--v15)
    {
      return;
    }
  }

  if (HIDWORD(updated) >= v35)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  if (v34)
  {
    goto LABEL_63;
  }

  if (!v33)
  {
    goto LABEL_64;
  }
}

unint64_t Interpreter.Iterator.finalize(update:observer:)(unsigned int a1, unsigned __int8 *a2, uint64_t a3)
{
  while (1)
  {
    v228 = a3;
    if (*(v4 + 48))
    {
      goto LABEL_255;
    }

    v10 = v4;
    v5 = *(v4 + 176);
    v11 = *v4;
    if (v11 >= *(v5 + 29))
    {
      goto LABEL_206;
    }

    v3 = *(v5 + 13);
    if (!v3)
    {
      goto LABEL_256;
    }

    v12 = *(*(v3 + 8 * v11) + 8);
    v3 = *(v12 + 44);
    if (v3 <= a1)
    {
      goto LABEL_207;
    }

    v226 = a2;
    v13 = *(v12 + 32);
    if (!v13)
    {
      goto LABEL_257;
    }

    v235 = a1;
    *&v236 = a1;
    v14 = (v13 + (a1 << 7));
    v15 = v14[1];
    v269 = *v14;
    v270 = v15;
    v16 = v14[5];
    v273 = v14[4];
    v274 = v16;
    v17 = v14[7];
    v275 = v14[6];
    v276 = v17;
    v18 = v14[3];
    v271 = v14[2];
    v272 = v18;
    i = *(&v269 + 1);
    v8 = v270;
    v19 = v271;
    __dst[0] = BYTE8(v270);
    v6 = BYTE8(v270);
    v20 = 256;
    if (!BYTE9(v270))
    {
      v20 = 0;
    }

    v21 = v20 | (HIDWORD(v270) << 32);
    v22 = HeterogeneousBuffer.type(at:)(0, *(&v269 + 1), v270, v20 | __dst[0], v271);
    v23 = swift_conformsToProtocol2();
    if (!v23)
    {
      goto LABEL_258;
    }

    v9 = v23;
    __dst[0] = v6;
    v24 = HeterogeneousBuffer.index(after:)(0, i, v8, v21 | v6, v19);
    __dst[0] = v6;
    i = HeterogeneousBuffer.type(at:)(v24, i, v8, v21 | v6, v19);
    v25 = swift_conformsToProtocol2();
    if (!v25)
    {
      goto LABEL_259;
    }

    project #1 <A, B>(_:_:) in Event.id.getter(i, &v269, v22, v9, v25, v237);
    v26 = v235;
    if (v10[48])
    {
      goto LABEL_260;
    }

    v4 = *(v5 + 29);
    v27 = *v10;
    if (v27 >= v4)
    {
      goto LABEL_208;
    }

    v6 = *(v5 + 13);
    if (!v6)
    {
      goto LABEL_261;
    }

    v28 = *(*(v6 + 8 * v27) + 8);
    v3 = *(v28 + 44);
    if (v3 <= v235)
    {
      goto LABEL_209;
    }

    v29 = *(v28 + 32);
    if (!v29)
    {
      goto LABEL_262;
    }

    i = v255;
    v30 = v29 + (v236 << 7);
    v31 = *(v30 + 8);
    v32 = *(v30 + 16);
    v33 = *(v30 + 24);
    v34 = *(v30 + 25);
    v37 = v30 + 28;
    v36 = *(v30 + 28);
    v35 = *(v37 + 4);
    __dst[0] = v33;
    v38 = v34 == 0;
    v39 = 256;
    if (v38)
    {
      v39 = 0;
    }

    v234 = v10;
    v224 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5(v31, v32, v39 | (v36 << 32) | v33, v35);
    if (!v224)
    {
      if (v10[48])
      {
        goto LABEL_280;
      }

      v54 = *v10;
      if (v54 >= v4)
      {
        goto LABEL_215;
      }

      v55 = *(*(v6 + 8 * v54) + 8);
      if (*(v55 + 44) <= v235)
      {
        goto LABEL_216;
      }

      v56 = *(v55 + 32);
      if (!v56)
      {
        goto LABEL_281;
      }

      v57 = v56 + (v236 << 7);
      v58 = *(v57 + 8);
      v59 = *(v57 + 16);
      v60 = *(v57 + 24);
      v61 = *(v57 + 25);
      v64 = v57 + 28;
      v63 = *(v57 + 28);
      v62 = *(v64 + 4);
      __dst[0] = v60;
      v38 = v61 == 0;
      v65 = 256;
      if (v38)
      {
        v65 = 0;
      }

      if (specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v58, v59, v65 | (v63 << 32) | v60, v62))
      {
        if (v10[48])
        {
          goto LABEL_286;
        }

        v66 = *v10;
        if (v66 >= v4)
        {
          goto LABEL_219;
        }

        v67 = *(*(v6 + 8 * v66) + 8);
        if (*(v67 + 44) <= v235)
        {
          goto LABEL_220;
        }

        v68 = *(v67 + 32);
        if (!v68)
        {
          goto LABEL_287;
        }

        v69 = v68 + (v236 << 7);
        v70 = *(v69 + 8);
        v71 = *(v69 + 16);
        v72 = *(v69 + 24);
        v73 = *(v69 + 25);
        v76 = v69 + 28;
        v75 = *(v69 + 28);
        v74 = *(v76 + 4);
        __dst[0] = v72;
        v38 = v73 == 0;
        v77 = 256;
        if (v38)
        {
          v77 = 0;
        }

        v78 = specialized HeterogeneousBuffer.valuePointer<A>(for:)(0, v70, v71, v77 | (v75 << 32) | v72, v74);
        if (v10[48])
        {
          goto LABEL_288;
        }

        v79 = *v10;
        if (v79 >= v4)
        {
          goto LABEL_221;
        }

        v8 = *(*(v6 + 8 * v79) + 8);
        if (LODWORD(v78->Kind) >= *(v8 + 84))
        {
          goto LABEL_222;
        }

        v80 = *(v8 + 72);
        if (!v80)
        {
          goto LABEL_289;
        }

        memcpy(__dst, (v80 + 312 * LODWORD(v78->Kind)), 0x131uLL);
        v4 = __dst;
        Attribute.pendingThroughResolved(snapshot:ret:)(v8, *(v5 + 22));
        v81 = *(v5 + 22);
        v227 = *(v81 + 3);
        if (v227)
        {
          v82 = 0;
          v83 = *v81;
          v232 = v10 + 72;
          v233 = v10 + 56;
          v230 = v10 + 104;
          v231 = v10 + 84;
          v225 = v83;
          while (1)
          {
            if (!v83)
            {
              goto LABEL_245;
            }

            v84 = *(v83 + 4 * v82);
            v6 = v82 + 1;
            v85 = v232;
            v86 = v233;
            v87 = v233[1];
            v266[0] = *v233;
            v266[1] = v87;
            v267[0] = v233[2];
            *(v267 + 9) = *(v233 + 41);
            v89 = v230;
            v88 = v231;
            while (1)
            {
              v90 = *v89;
              if (*v88)
              {
                v3 = *v85;
                if ((*(v3 + 4) & 1) == 0)
                {
                  break;
                }
              }

              if (!v90)
              {
                specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v266, specialized EvolutionTable.describe(state:));
              }

              v85 = (v90 + 16);
              v88 = (v90 + 28);
              v89 = (v90 + 48);
              v86 = v90;
            }

            v40 = *v86;
            if (!*v86)
            {
              goto LABEL_268;
            }

            v91 = *(*(v40 + 24 * *v3) + 112);
            if (!v91)
            {
              goto LABEL_244;
            }

            v92 = *(*(v91 + 32) + 16);
            if (*(v92 + 16) && (v264[0] = &type metadata for Event.AttributeValue, v264[1] = &protocol witness table for Event.AttributeValue, v264[2] = &type metadata for Event.Update, v264[3] = &protocol witness table for Event.Update, v265 = v84, v93 = specialized __RawDictionaryStorage.find<A>(_:)(v264), (v94 & 1) != 0))
            {
              v9 = *(*(v92 + 56) + 4 * v93);
            }

            else
            {
              v9 = 0;
            }

            v95 = v232;
            v96 = v233;
            v97 = v233[1];
            v262[0] = *v233;
            v262[1] = v97;
            v263[0] = v233[2];
            *(v263 + 9) = *(v233 + 41);
            v99 = v230;
            v98 = v231;
            while (1)
            {
              v100 = *v99;
              if (*v98)
              {
                v3 = *v95;
                if ((*(v3 + 4) & 1) == 0)
                {
                  break;
                }
              }

              if (!v100)
              {
                specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v262, specialized EvolutionTable.describe(state:));
              }

              v95 = (v100 + 16);
              v98 = (v100 + 28);
              v99 = (v100 + 48);
              v96 = v100;
            }

            v40 = *v96;
            if (!*v96)
            {
              goto LABEL_269;
            }

            v3 = *v3;
            v229 = v6;
            v101 = *(*(v40 + 24 * v3) + 112);
            if (!v101)
            {
              __break(1u);
LABEL_244:
              __break(1u);
LABEL_245:
              __break(1u);
LABEL_246:
              specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, &v252, specialized EvolutionTable.describe(state:));
            }

            v4 = *(*(v101 + 32) + 16);
            if (*(v4 + 16))
            {
              v260[0] = &type metadata for Event.AttributeValue;
              v260[1] = &protocol witness table for Event.AttributeValue;
              v260[2] = &type metadata for Event.Invalidation;
              v260[3] = &protocol witness table for Event.Invalidation;
              v261 = v84;
              v102 = specialized __RawDictionaryStorage.find<A>(_:)(v260);
              if (v103)
              {
                v104 = *(*(v4 + 56) + 4 * v102);
                if (v104 <= v9)
                {
                  v9 = v9;
                }

                else
                {
                  v9 = v104;
                }
              }
            }

            if (v9)
            {
              break;
            }

LABEL_57:
            v82 = v229;
            i = v255;
            v83 = v225;
            if (v229 == v227)
            {
              goto LABEL_19;
            }
          }

          if (v10[48])
          {
            __break(1u);
          }

          else
          {
            v105 = *v10;
            if (v105 >= *(v5 + 29))
            {
LABEL_199:
              __break(1u);
              goto LABEL_200;
            }

            v3 = *(v5 + 13);
            if (v3)
            {
              v106 = *(*(v3 + 8 * v105) + 8);
              v3 = *(v106 + 44);
              if (v9 >= v3)
              {
LABEL_200:
                __break(1u);
                goto LABEL_201;
              }

              v107 = *(v106 + 32);
              if (v107)
              {
                if (v3 <= v26)
                {
LABEL_201:
                  __break(1u);
                  goto LABEL_202;
                }

                v6 = v9;
                v108 = (v107 + (v9 << 7));
                i = v107 + (v236 << 7);
                v8 = *i;
                v3 = v108[30];
                if (v108[31] == v3)
                {
                  v4 = (v108 + 28);
                  specialized UnsafeArray.growToCapacity(_:)();
                }

                v109 = *(v108 + 14);
                if (v109)
                {
                  v110 = v108[31];
                  v111 = v109 + 8 * v110;
                  *v111 = -24575;
                  *(v111 + 4) = v8;
                  if (v110 == -1)
                  {
LABEL_202:
                    __break(1u);
                    goto LABEL_203;
                  }

                  v108[31] = v110 + 1;
                  v112 = *v108;
                  v3 = *(i + 120);
                  if (*(i + 124) == v3)
                  {
                    v4 = i + 112;
                    specialized UnsafeArray.growToCapacity(_:)();
                  }

                  v113 = *(i + 112);
                  if (v113)
                  {
                    v3 = *(i + 124);
                    v114 = v113 + 8 * v3;
                    *v114 = 24577;
                    *(v114 + 4) = v112;
                    if (v3 == -1)
                    {
LABEL_203:
                      __break(1u);
                      goto LABEL_204;
                    }

                    *(i + 124) = v3 + 1;
                    if (!v10[48])
                    {
                      v115 = *v10;
                      v26 = v235;
                      if (v115 >= *(v5 + 29))
                      {
LABEL_204:
                        __break(1u);
                        goto LABEL_205;
                      }

                      v3 = *(v5 + 13);
                      if (v3)
                      {
                        v116 = *(v3 + 8 * v115);
                        v117 = *(v116 + 8);
                        v3 = *(v117 + 44);
                        if (v9 >= v3)
                        {
LABEL_205:
                          __break(1u);
LABEL_206:
                          __break(1u);
LABEL_207:
                          __break(1u);
LABEL_208:
                          __break(1u);
LABEL_209:
                          __break(1u);
LABEL_210:
                          __break(1u);
LABEL_211:
                          __break(1u);
LABEL_212:
                          __break(1u);
LABEL_213:
                          __break(1u);
LABEL_214:
                          __break(1u);
LABEL_215:
                          __break(1u);
LABEL_216:
                          __break(1u);
LABEL_217:
                          __break(1u);
LABEL_218:
                          __break(1u);
LABEL_219:
                          __break(1u);
LABEL_220:
                          __break(1u);
LABEL_221:
                          __break(1u);
LABEL_222:
                          __break(1u);
LABEL_223:
                          __break(1u);
LABEL_224:
                          i = 0xD000000000000013;
                          *&v241 = 0;
                          *(&v241 + 1) = 0xE000000000000000;
                          _StringGuts.grow(_:)(49);
                          v238 = v241;
                          MEMORY[0x26D69CDB0](0xD000000000000013, 0x800000026C33CCC0);
                          v121 = v10[48];
                          if (!v10[48])
                          {
                            v121 = *v234;
                            if (v121 >= *(v4 + 116))
                            {
LABEL_295:
                              __break(1u);
                              goto LABEL_296;
                            }

                            v123 = *(v4 + 104);
                            if (v123)
                            {
                              goto LABEL_235;
                            }

                            __break(1u);
LABEL_228:
                            __break(1u);
LABEL_229:
                            __break(1u);
LABEL_230:
                            __break(1u);
LABEL_231:
                            __break(1u);
LABEL_232:
                            __break(1u);
LABEL_233:
                            __break(1u);
                          }

                          __break(1u);
LABEL_235:
                          v202 = *(*(v123 + 8 * v121) + 8);
                          if (*(v202 + 44) <= v235)
                          {
LABEL_296:
                            __break(1u);
LABEL_297:
                            *&v238 = 0;
                            *(&v238 + 1) = 0xE000000000000000;
                            _StringGuts.grow(_:)(51);
                            MEMORY[0x26D69CDB0](0xD000000000000031, 0x800000026C33B5C0);
                            v238 = xmmword_26C32DAD0;
                            LOBYTE(v239) = 1;
                            *(&v239 + 1) = 0;
                            *&v240[0] = 0;
                            WORD4(v240[0]) = 512;
                            v217 = Event.describe(state:)(&v238);
                            MEMORY[0x26D69CDB0](v217);

                            while (1)
                            {
                              _assertionFailure(_:_:file:line:flags:)();
                              __break(1u);
LABEL_299:
                              v218 = *(v216 + 32);
                              v219 = v218[1];
                              v220 = v218[3];
                              v221 = v218[4];
                              *(i + 128) = v236;
                              LOBYTE(v250) = 1;
                              *(&v250 + 1) = 0;
                              *v251 = 0;
                              *&v251[8] = 512;

                              outlined copy of (@escaping @callee_guaranteed (@in_guaranteed Event, @unowned Snapshot) -> (@unowned UnsafeRawPointer))?(v220, v221);
                              v222 = specialized Interpreter.Control.Events.describe(state:)(&v249, v219);
                              i = v223;

                              outlined consume of (@escaping @callee_guaranteed (@in_guaranteed Event, @unowned Snapshot) -> (@unowned UnsafeRawPointer))?(v220, v221);
                              MEMORY[0x26D69CDB0](v222, i);
                            }
                          }

                          v203 = *(v202 + 32);
                          if (!v203)
                          {
                            __break(1u);
                          }

                          v204 = (v203 + (v236 << 7));
                          v205 = v204[4];
                          v206 = v204[6];
                          v207 = v204[7];
                          v246 = v204[5];
                          v247 = v206;
                          v248 = v207;
                          v208 = v204[1];
                          v241 = *v204;
                          v209 = v204[2];
                          v210 = v204[3];
                          v242 = v208;
                          v243 = v209;
                          v244 = v210;
                          v245 = v205;
                          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
                          v211 = swift_allocObject();
                          *(v211 + 16) = xmmword_26C328DC0;
                          v236 = xmmword_26C32DAD0;
                          v252 = xmmword_26C32DAD0;
                          LOBYTE(v253) = 1;
                          *(&v253 + 1) = 0;
                          *v254 = 0;
                          *&v254[8] = 512;
                          v212 = Event.describe(state:)(&v252);
                          *(v211 + 56) = MEMORY[0x277D837D0];
                          *(v211 + 32) = v212;
                          *(v211 + 40) = v213;
                          print(_:separator:terminator:)();

                          _print_unlocked<A, B>(_:_:)();
                          MEMORY[0x26D69CDB0](i + 7, 0x800000026C33CCE0);
                          v214 = *(v5 + 1);
                          v252 = *v5;
                          v253 = v214;
                          *v254 = *(v5 + 2);
                          i = &v241;
                          *&v254[9] = *(v5 + 41);
                          while (1)
                          {
                            v215 = *v6;
                            if (*v8)
                            {
                              v3 = *v9;
                              if ((*(*v9 + 4) & 1) == 0)
                              {
                                goto LABEL_266;
                              }
                            }

                            if (!v215)
                            {
                              goto LABEL_246;
                            }

                            v9 = (v215 + 16);
                            v8 = (v215 + 28);
                            v6 = (v215 + 48);
                            v5 = v215;
                          }
                        }

                        v118 = *(v117 + 32);
                        if (v118)
                        {
                          v9 = 0;
                          v119 = v118 + (v6 << 7);
                          v6 = *(v119 + 112);
                          v120 = *(v119 + 124);
                          for (i = v6 + 4; ; i += 8)
                          {
                            if (v120 == v9)
                            {
                              goto LABEL_57;
                            }

                            if (v9 >= v120)
                            {
                              break;
                            }

                            if (!v6)
                            {
                              goto LABEL_223;
                            }

                            if (__OFADD__(v9, 1))
                            {
                              goto LABEL_193;
                            }

                            if ((*(i - 4) & 0x8020) == 0x20)
                            {
                              v121 = *i;
                              v122 = *(v116 + 8);
                              if (v121 >= *(v122 + 44))
                              {
                                goto LABEL_194;
                              }

                              v123 = *(v122 + 32);
                              if (!v123)
                              {
                                goto LABEL_229;
                              }

                              if (v10[48])
                              {
                                goto LABEL_228;
                              }

                              v124 = *v10;
                              if (v124 >= *(v5 + 29))
                              {
                                goto LABEL_195;
                              }

                              v125 = *(v5 + 13);
                              if (!v125)
                              {
                                goto LABEL_230;
                              }

                              v126 = *(*(v125 + 8 * v124) + 8);
                              if (*(v126 + 44) <= v26)
                              {
                                goto LABEL_196;
                              }

                              v127 = *(v126 + 32);
                              if (!v127)
                              {
                                goto LABEL_231;
                              }

                              v8 = v123 + (v121 << 7);
                              v128 = (v127 + (v236 << 7));
                              v10 = *v128;
                              v123 = *(v8 + 120);
                              if (*(v8 + 124) == v123)
                              {
                                v4 = v8 + 112;
                                specialized UnsafeArray.growToCapacity(_:)();
                              }

                              v121 = *(v8 + 112);
                              if (!v121)
                              {
                                goto LABEL_232;
                              }

                              v129 = *(v8 + 124);
                              v130 = v121 + 8 * v129;
                              *v130 = -32767;
                              *(v130 + 4) = v10;
                              if (v129 == -1)
                              {
                                goto LABEL_197;
                              }

                              *(v8 + 124) = v129 + 1;
                              v10 = *v8;
                              v123 = v128[30];
                              if (v128[31] == v123)
                              {
                                v4 = (v128 + 28);
                                specialized UnsafeArray.growToCapacity(_:)();
                              }

                              v121 = *(v128 + 14);
                              if (!v121)
                              {
                                goto LABEL_233;
                              }

                              v131 = v128[31];
                              v132 = v121 + 8 * v131;
                              *v132 = 16385;
                              *(v132 + 4) = v10;
                              if (v131 == -1)
                              {
                                goto LABEL_198;
                              }

                              v128[31] = v131 + 1;
                              v10 = v234;
                              v26 = v235;
                            }

                            ++v9;
                          }

                          __break(1u);
LABEL_193:
                          __break(1u);
LABEL_194:
                          __break(1u);
LABEL_195:
                          __break(1u);
LABEL_196:
                          __break(1u);
LABEL_197:
                          __break(1u);
LABEL_198:
                          __break(1u);
                          goto LABEL_199;
                        }

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
                        v40 = *v5;
                        if (!*v5)
                        {
                          __break(1u);
LABEL_268:
                          __break(1u);
LABEL_269:
                          __break(1u);
LABEL_270:
                          __break(1u);
LABEL_271:
                          __break(1u);
LABEL_272:
                          __break(1u);
LABEL_273:
                          __break(1u);
LABEL_274:
                          __break(1u);
LABEL_275:
                          __break(1u);
LABEL_276:
                          __break(1u);
LABEL_277:
                          __break(1u);
                        }

                        v216 = *(*(v40 + 24 * *v3) + 112);
                        if (v216)
                        {
                          goto LABEL_299;
                        }

                        __break(1u);
LABEL_280:
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
LABEL_286:
                        __break(1u);
LABEL_287:
                        __break(1u);
LABEL_288:
                        __break(1u);
LABEL_289:
                        __break(1u);
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

LABEL_253:
                      __break(1u);
                      goto LABEL_254;
                    }

LABEL_252:
                    __break(1u);
                    goto LABEL_253;
                  }

LABEL_251:
                  __break(1u);
                  goto LABEL_252;
                }

LABEL_250:
                __break(1u);
                goto LABEL_251;
              }

LABEL_249:
              __break(1u);
              goto LABEL_250;
            }
          }

          __break(1u);
          goto LABEL_249;
        }
      }
    }

LABEL_19:
    v40 = *(v5 + 22);
    v3 = *(v40 + 12);
    if (v3)
    {
      v3 = *v40;
      if (!*v40)
      {
        goto LABEL_270;
      }
    }

    *(v40 + 12) = 0;
    v6 = v226;
    if (v226)
    {
      v40 = v10[48];
      if (v10[48])
      {
        goto LABEL_271;
      }

      v40 = *v10;
      if (v40 >= *(v5 + 29))
      {
        goto LABEL_212;
      }

      v3 = *(v5 + 13);
      if (!v3)
      {
        goto LABEL_272;
      }

      v8 = *(*(v3 + 8 * v40) + 8);
      if (*(v8 + 44) <= v26)
      {
        goto LABEL_213;
      }

      v40 = *(v8 + 32);
      if (!v40)
      {
        goto LABEL_273;
      }

      v41 = (v40 + (v236 << 7));
      v42 = v41[5];
      v259[4] = v41[4];
      v259[5] = v42;
      v43 = v41[7];
      v259[6] = v41[6];
      v259[7] = v43;
      v44 = v41[1];
      v259[0] = *v41;
      v259[1] = v44;
      v45 = v41[3];
      v259[2] = v41[2];
      v259[3] = v45;
      v4 = v228;

      v46 = (v226)(v259, v8);
      if (*(v8 + 44) <= v26)
      {
        goto LABEL_214;
      }

      v40 = *(v8 + 32);
      if (!v40)
      {
        goto LABEL_274;
      }

      *(v40 + (v236 << 7) + 96) = v46;
      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed Event, @unowned Snapshot) -> (@unowned UnsafeRawPointer))?(v226, v228);
    }

    if (!v224)
    {
      v47 = (v10 + 56);
      v48 = *(v10 + 72);
      v257[0] = *(v10 + 56);
      v257[1] = v48;
      v258[0] = *(v10 + 88);
      *(v258 + 9) = *(v10 + 97);
      v49 = (v10 + 72);
      v50 = v10 + 84;
      v51 = (v10 + 104);
      while (1)
      {
        v52 = *v51;
        if (*v50)
        {
          v53 = *v49;
          if ((v53[1] & 1) == 0)
          {
            break;
          }
        }

        if (!v52)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v257, specialized EvolutionTable.describe(state:));
        }

        v49 = (v52 + 16);
        v50 = (v52 + 28);
        v51 = (v52 + 48);
        v47 = v52;
      }

      v133 = *v47;
      if (!v133)
      {
        goto LABEL_293;
      }

      v134 = *(*(v133 + 24 * *v53) + 112);
      if (!v134)
      {
        goto LABEL_285;
      }

      v135 = *(v134 + 32);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v241 = *(v135 + 16);
      *(v135 + 16) = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v26, v237, isUniquelyReferenced_nonNull_native);
      *(v135 + 16) = v241;

      v10 = v234;
    }

    if ((Interpreter.Iterator.dispatchAbstractions(for:)(v26) & 1) == 0)
    {
      Interpreter.Iterator.addTime(rootedAt:partial:)(v26, v26);
    }

    if (v10[48])
    {
      goto LABEL_263;
    }

    v4 = *(v10 + 22);
    v137 = *v10;
    if (v137 >= *(v4 + 116))
    {
      goto LABEL_210;
    }

    v3 = *(v4 + 104);
    if (!v3)
    {
      goto LABEL_264;
    }

    v138 = *(*(v3 + 8 * v137) + 8);
    v3 = *(v138 + 44);
    if (v3 <= v26)
    {
      goto LABEL_211;
    }

    v139 = *(v138 + 32);
    if (!v139)
    {
      goto LABEL_265;
    }

    v140 = v139 + (v236 << 7);
    v141 = *(v140 + 8);
    v142 = *(v140 + 16);
    v143 = *(v140 + 24);
    v144 = *(v140 + 25);
    v147 = v140 + 28;
    v146 = *(v140 + 28);
    v145 = *(v147 + 4);
    LOBYTE(v241) = v143;
    v38 = v144 == 0;
    v148 = 256;
    if (v38)
    {
      v148 = 0;
    }

    result = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV6UpdateV_Ttgq5(v141, v142, v148 | (v146 << 32) | v143, v145);
    if (!result)
    {
      return result;
    }

    v5 = v10 + 56;
    v150 = *(v10 + 72);
    v255[0] = *(v10 + 56);
    v255[1] = v150;
    v256[0] = *(v10 + 88);
    v9 = (v10 + 72);
    v8 = (v10 + 84);
    v151 = v10 + 88;
    v6 = (v10 + 104);
    *(v256 + 9) = *(v10 + 97);
    v152 = (v10 + 56);
    v153 = (v10 + 72);
    v154 = v10 + 84;
    v155 = (v10 + 104);
    while (1)
    {
      v156 = *v155;
      if (*v154)
      {
        v157 = *v153;
        if ((v157[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v156)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v255, specialized EvolutionTable.describe(state:));
      }

      v153 = (v156 + 16);
      v154 = (v156 + 28);
      v155 = (v156 + 48);
      v152 = v156;
    }

    v158 = *v152;
    if (!v158)
    {
      goto LABEL_290;
    }

    v3 = *v157;
    v40 = *(*(v158 + 24 * v3) + 112);
    if (!v40)
    {
      goto LABEL_275;
    }

    v159 = *(*(v40 + 32) + 8);
    i = *(v159 + 16);
    v160 = (v159 + 48 * i - 16);
    do
    {
      if (i-- < 1)
      {
        goto LABEL_224;
      }

      v162 = *v160;
      v160 -= 12;
    }

    while (v162 != v26);
    v163 = *(v10 + 72);
    v252 = *v5;
    v253 = v163;
    *v254 = *(v10 + 88);
    *&v254[9] = *(v10 + 97);
    v164 = (v10 + 56);
    v165 = (v10 + 72);
    v166 = v10 + 84;
    v167 = (v10 + 104);
    while (1)
    {
      v168 = *v167;
      if (*v166)
      {
        v169 = *v165;
        if ((v169[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v168)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, &v252, specialized EvolutionTable.describe(state:));
      }

      v165 = (v168 + 16);
      v166 = (v168 + 28);
      v167 = (v168 + 48);
      v164 = v168;
    }

    v170 = *v164;
    if (!v170)
    {
      goto LABEL_291;
    }

    v3 = *v169;
    v40 = *(*(v170 + 24 * v3) + 112);
    if (!v40)
    {
      goto LABEL_276;
    }

    specialized Array.remove(at:)(i, &v241);
    v171 = *(v10 + 72);
    v249 = *v5;
    v250 = v171;
    *v251 = *(v10 + 88);
    *&v251[9] = *(v10 + 97);
    v172 = (v10 + 56);
    v173 = (v10 + 104);
    while (1)
    {
      v174 = *v173;
      if (*v8)
      {
        if ((*(*v9 + 4) & 1) == 0)
        {
          break;
        }
      }

      if (!v174)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, &v249, specialized EvolutionTable.describe(state:));
      }

      v9 = (v174 + 2);
      v8 = v174 + 28;
      v173 = (v174 + 6);
      v172 = v174;
    }

    v175 = *v172;
    if (!v175)
    {
      goto LABEL_292;
    }

    v3 = **v9;
    result = v175 + 24 * v3;
    v40 = *(*result + 112);
    if (!v40)
    {
      goto LABEL_277;
    }

    v176 = *(*(v40 + 32) + 8);
    if (!*(v176 + 16))
    {
      return result;
    }

    if (v10[48])
    {
      goto LABEL_282;
    }

    v177 = *v10;
    if (v177 >= *(v4 + 116))
    {
      goto LABEL_217;
    }

    v178 = *(v4 + 104);
    if (!v178)
    {
      goto LABEL_283;
    }

    v179 = *(v176 + 32);
    v180 = *(*(v178 + 8 * v177) + 8);
    if (v179 >= *(v180 + 44))
    {
      goto LABEL_218;
    }

    v181 = *(v180 + 32);
    if (!v181)
    {
      goto LABEL_284;
    }

    v182 = (v181 + (v179 << 7));
    v183 = v182[1];
    v241 = *v182;
    v184 = v182[2];
    v185 = v182[3];
    v242 = v183;
    v243 = v184;
    v186 = v182[4];
    v187 = v182[6];
    v188 = v182[7];
    v246 = v182[5];
    v247 = v187;
    v248 = v188;
    v244 = v185;
    v245 = v186;
    v189 = *(&v241 + 1);
    i = v183;
    v190 = BYTE8(v183);
    v191 = v243;
    LOBYTE(v238) = BYTE8(v183);
    v192 = 256;
    if (!BYTE9(v183))
    {
      v192 = 0;
    }

    v193 = v192 | (HIDWORD(v242) << 32);
    updated = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV6UpdateV_Ttgq5(*(&v241 + 1), v242, v193 | BYTE8(v242), v243);
    if (updated)
    {
      v195 = (updated + 8);
    }

    else
    {
      LOBYTE(v238) = v190;
      v195 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV12InvalidationV_Ttgq5(v189, i, v193 | v190, v191);
      if (!v195)
      {
        goto LABEL_297;
      }
    }

    v196 = *v195;
    v197 = *(v5 + 1);
    v238 = *v5;
    v239 = v197;
    v240[0] = *(v5 + 2);
    *(v240 + 9) = *(v5 + 41);
    v198 = v234 + 100;
    v199 = *(v234 + 29);
    while (1)
    {
      v200 = *v6;
      if (v199 < *v198)
      {
        v201 = (*v151 + 8 * v199);
        if ((v201[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v200)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v199, 0, &v238, specialized EvolutionTable.describe(state:));
      }

      v151 = v200 + 32;
      v198 = v200 + 44;
      v6 = (v200 + 48);
      v5 = v200;
    }

    if (!*v5)
    {
      goto LABEL_294;
    }

    v3 = *v201;
    result = *v5 + 24 * v3;
    if (v196 >= *(*result + 32))
    {
      return result;
    }

    a1 = v179;
    a2 = v226;
    a3 = v228;
    v4 = v282;
    v6 = v280;
    v5 = v281;
    i = v279;
    v8 = v278;
    v9 = v277;
  }
}

unsigned __int8 *Interpreter.Iterator.addTime(rootedAt:partial:)(uint64_t a1, uint64_t a2)
{
  if (v2[48])
  {
    goto LABEL_19;
  }

  v3 = v2;
  v4 = *(v2 + 22);
  v5 = *v2;
  if (v5 >= *(v4 + 116))
  {
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v6 = *(v4 + 104);
  if (!v6)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v8 = *(*(v6 + 8 * v5) + 8);
  if (*(v8 + 44) <= a2)
  {
    goto LABEL_18;
  }

  v9 = *(v8 + 32);
  if (!v9)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v11 = (v9 + (a2 << 7));
  v12 = v11[1];
  v56 = *v11;
  v57 = v12;
  v13 = v11[5];
  v60 = v11[4];
  v61 = v13;
  v14 = v11[7];
  v62 = v11[6];
  v63 = v14;
  v15 = v11[3];
  v58 = v11[2];
  v59 = v15;
  LOBYTE(v43) = BYTE8(v57);
  v16 = 256;
  if (!BYTE9(v57))
  {
    v16 = 0;
  }

  v17 = v16 | (HIDWORD(v57) << 32);
  updated = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV6UpdateV_Ttgq5(*(&v56 + 1), v57, v17 | v43, v58);
  if (updated)
  {
    v19 = *updated;
    v20 = updated[1];
    goto LABEL_12;
  }

  LOBYTE(v43) = BYTE8(v57);
  v21 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV12InvalidationV_Ttgq5(*(&v56 + 1), v57, v17 | BYTE8(v57), v58);
  if (!v21)
  {
LABEL_22:
    _StringGuts.grow(_:)(51);
    MEMORY[0x26D69CDB0](0xD000000000000031, 0x800000026C33B5C0);
    v43 = xmmword_26C32DAD0;
    LOBYTE(v44) = 1;
    *(&v44 + 1) = 0;
    *&v45 = 0;
    WORD4(v45) = 512;
    v40 = Event.describe(state:)(&v43);
    MEMORY[0x26D69CDB0](v40);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v19 = *v21;
  v20 = *v21;
LABEL_12:
  result = Interval.overlappingSelection(within:)(v2, v19, v20);
  if (result)
  {
    v23 = *(v2 + 11);
    v53 = *(v2 + 10);
    v54 = v23;
    v55 = v2[192];
    v24 = *(v2 + 7);
    v49 = *(v2 + 6);
    v50 = v24;
    v25 = *(v2 + 9);
    v51 = *(v2 + 8);
    v52 = v25;
    v26 = *(v2 + 3);
    v45 = *(v2 + 2);
    v46 = v26;
    v27 = *(v2 + 5);
    v47 = *(v2 + 4);
    v48 = v27;
    v28 = *(v2 + 1);
    v43 = *v2;
    v44 = v28;
    v29 = Interpreter.Iterator.reading.read();
    v31 = *(v30 + 216);
    if (v31)
    {
      (v29)(v41, 0);
      v32 = *(v3 + 11);
      v41[10] = *(v3 + 10);
      v41[11] = v32;
      v42 = v3[192];
      v33 = *(v3 + 7);
      v41[6] = *(v3 + 6);
      v41[7] = v33;
      v34 = *(v3 + 9);
      v41[8] = *(v3 + 8);
      v41[9] = v34;
      v35 = *(v3 + 3);
      v41[2] = *(v3 + 2);
      v41[3] = v35;
      v36 = *(v3 + 5);
      v41[4] = *(v3 + 4);
      v41[5] = v36;
      v37 = *(v3 + 1);
      v41[0] = *v3;
      v41[1] = v37;
      v38 = *(v31 + 24);
      v39 = *(v31 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(v31, v38);
      return (*(v39 + 24))(a1, a2, v41, v38, v39);
    }

    else
    {
      return (v29)(v41, 0);
    }
  }

  return result;
}

void Interpreter.Iterator.new<A>(abstract:rootedAt:discreet:restriction:)(uint64_t a1, unsigned int a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v189 = a1;
  *(&v189 + 1) = a6;
  if (v6[48])
  {
LABEL_171:
    __break(1u);
    goto LABEL_172;
  }

  v7 = *(v6 + 22);
  v8 = *v6;
  if (v8 >= *(v7 + 116))
  {
LABEL_140:
    __break(1u);
LABEL_141:
    __break(1u);
LABEL_142:
    __break(1u);
LABEL_143:
    __break(1u);
LABEL_144:
    __break(1u);
LABEL_145:
    __break(1u);
    goto LABEL_146;
  }

  v9 = *(v7 + 104);
  if (!v9)
  {
LABEL_172:
    __break(1u);
    goto LABEL_173;
  }

  v10 = *(*(v9 + 8 * v8) + 8);
  if (*(v10 + 44) <= a2)
  {
    goto LABEL_141;
  }

  v11 = *(v10 + 32);
  if (!v11)
  {
LABEL_173:
    __break(1u);
LABEL_174:
    __break(1u);
    goto LABEL_175;
  }

  v187 = a2;
  v14 = (v11 + (a2 << 7));
  v15 = v14[1];
  v219 = *v14;
  v220 = v15;
  v16 = v14[5];
  v223 = v14[4];
  v224 = v16;
  v17 = v14[7];
  v225 = v14[6];
  v226 = v17;
  v18 = v14[3];
  v221 = v14[2];
  v222 = v18;
  LOBYTE(v211) = BYTE8(v220);
  v19 = 256;
  if (!BYTE9(v220))
  {
    v19 = 0;
  }

  v20 = v19 | (HIDWORD(v220) << 32);
  v21 = HeterogeneousBuffer.type(at:)(0, *(&v219 + 1), v220, v19 | v211, v221);
  v22 = swift_conformsToProtocol2();
  if (!v22)
  {
    goto LABEL_174;
  }

  v23 = v22;
  v184 = a3;
  v24 = HeterogeneousBuffer.index(after:)(0, *(&v219 + 1), v220, v20 | BYTE8(v220), v221);
  LOBYTE(v211) = BYTE8(v220);
  v25 = HeterogeneousBuffer.type(at:)(v24, *(&v219 + 1), v220, v20 | BYTE8(v220), v221);
  v26 = swift_conformsToProtocol2();
  if (!v26)
  {
LABEL_175:
    __break(1u);
    goto LABEL_176;
  }

  v27 = project #1 <A, B>(_:_:) in Event.id.getter(v25, &v219, v21, v23, v26, v193);
  if (v188[48])
  {
LABEL_176:
    __break(1u);
    goto LABEL_177;
  }

  v28 = *v188;
  if (v28 >= *(v7 + 116))
  {
    goto LABEL_142;
  }

  v29 = *(v7 + 104);
  if (!v29)
  {
LABEL_177:
    __break(1u);
    goto LABEL_178;
  }

  (*(*(&v189 + 1) + 24))(&v211, v193, *(*(v29 + 8 * v28) + 8), a5, v27);
  if (v188[48])
  {
LABEL_178:
    __break(1u);
    goto LABEL_179;
  }

  v30 = *v188;
  if (v30 >= *(v7 + 116))
  {
    goto LABEL_143;
  }

  v31 = *(v7 + 104);
  if (!v31)
  {
LABEL_179:
    __break(1u);
    goto LABEL_180;
  }

  v32 = *(*(v31 + 8 * v30) + 8);
  if (*(v32 + 44) <= a2)
  {
    goto LABEL_144;
  }

  v33 = *(v32 + 32);
  if (!v33)
  {
LABEL_180:
    __break(1u);
LABEL_181:
    __break(1u);
    goto LABEL_182;
  }

  v34 = v211;
  v35 = BYTE8(v211);
  v185 = BYTE9(v211);
  v36 = (v33 + (v187 << 7));
  v37 = v36[1];
  v211 = *v36;
  v212 = v37;
  v38 = v36[5];
  v215 = v36[4];
  v216 = v38;
  v39 = v36[7];
  v217 = v36[6];
  v218 = v39;
  v40 = v36[3];
  v213 = v36[2];
  v214 = v40;
  v41 = *(&v211 + 1);
  v42 = v212;
  v43 = BYTE8(v212);
  v44 = v213;
  v198[0] = BYTE8(v212);
  v45 = 256;
  if (!BYTE9(v212))
  {
    v45 = 0;
  }

  v46 = v45 | (HIDWORD(v212) << 32);
  v47 = HeterogeneousBuffer.type(at:)(0, *(&v211 + 1), v212, v45 | BYTE8(v212), v213);
  v48 = swift_conformsToProtocol2();
  if (!v48)
  {
    goto LABEL_181;
  }

  v49 = v48;
  v198[0] = v43;
  v50 = HeterogeneousBuffer.index(after:)(0, v41, v42, v46 | v43, v44);
  v198[0] = v43;
  v51 = HeterogeneousBuffer.type(at:)(v50, v41, v42, v46 | v43, v44);
  v52 = swift_conformsToProtocol2();
  if (!v52)
  {
LABEL_182:
    __break(1u);
    goto LABEL_183;
  }

  project #1 <A, B>(_:_:) in Event.id.getter(v51, &v211, v47, v49, v52, v194);
  *&v198[6] = v194[0];
  *&v198[22] = v194[1];
  *&v198[38] = v195;
  *&v205[10] = *v198;
  v204 = v189;
  *v205 = v34;
  v205[8] = v35;
  v205[9] = v185;
  *&v205[26] = *&v198[16];
  *&v205[36] = *&v198[26];
  Hasher.init()();
  MEMORY[0x26D69DBC0](v189);
  v208 = *&v198[32];
  v209 = v199;
  v210 = v200;
  v206 = *v198;
  v207 = *&v198[16];
  v53 = Hasher.finalize()();
  if (v188[48])
  {
LABEL_183:
    __break(1u);
    goto LABEL_184;
  }

  v54 = *v188;
  if (v54 >= *(v7 + 116))
  {
    goto LABEL_145;
  }

  v55 = *(v7 + 104);
  if (!v55)
  {
LABEL_184:
    __break(1u);
    goto LABEL_185;
  }

  v56 = v53;
  v57 = *(*(*(v55 + 8 * v54) + 8) + 192);
  v58 = *v57;
  if ((*v57)[1].Kind)
  {
    v59 = specialized __RawDictionaryStorage.find<A>(_:)(&v204);
    if (v60)
    {
      v61 = *(v58[3].Description + v59);
      v62 = a2;
      goto LABEL_38;
    }

    v54 = *v188;
    v63 = v188[48] == 0;
  }

  else
  {
    v63 = 1;
  }

  v64 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA5EventV2IdV_SayAJGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *&v198[32] = *&v205[16];
  v199 = *&v205[32];
  LODWORD(v200) = *&v205[48];
  *v198 = v204;
  *&v198[16] = *v205;
  if (!v63)
  {
LABEL_201:
    __break(1u);
    goto LABEL_202;
  }

  v62 = a2;
  if (v54 >= *(v7 + 116))
  {
    goto LABEL_158;
  }

  v66 = *(v7 + 104);
  if (v66)
  {
    v67 = v64;
    v68 = v65;
    v69 = *(*(v66 + 8 * v54) + 8);
    v70 = *(v69 + 212);
    if (v70 == *(v69 + 208))
    {
      specialized UnsafeArray.growToCapacity(_:)(2 * v70);
    }

    v71 = *(v69 + 200);
    if (!v71)
    {
      goto LABEL_203;
    }

    v72 = *(v69 + 212);
    v73 = v71 + 120 * v72;
    v74 = v199;
    *(v73 + 32) = *&v198[32];
    *(v73 + 48) = v74;
    v75 = v200;
    v76 = *&v198[16];
    *v73 = *v198;
    *(v73 + 16) = v76;
    *(v73 + 64) = v75;
    *(v73 + 72) = v56;
    *(v73 + 80) = 0;
    *(v73 + 88) = 0;
    *(v73 + 96) = 0;
    *(v73 + 104) = v67;
    *(v73 + 112) = v68;
    if (v72 == -1)
    {
      goto LABEL_159;
    }

    *(v69 + 212) = v72 + 1;
    v61 = v72;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v196 = *v57;
    *v57 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v61, &v204, isUniquelyReferenced_nonNull_native);
    *v57 = v196;

LABEL_38:
    if (v188[48])
    {
LABEL_185:
      __break(1u);
      goto LABEL_186;
    }

    v78 = *v188;
    if (v78 < *(v7 + 116))
    {
      v79 = *(v7 + 104);
      if (!v79)
      {
LABEL_186:
        __break(1u);
        goto LABEL_187;
      }

      v80 = *(*(v79 + 8 * v78) + 8);
      if (*(v80 + 44) > v62)
      {
        v81 = *(v80 + 32);
        if (!v81)
        {
LABEL_187:
          __break(1u);
LABEL_188:
          __break(1u);
          goto LABEL_189;
        }

        v82 = (v81 + (v187 << 7));
        v83 = v82[1];
        *v198 = *v82;
        *&v198[16] = v83;
        v84 = v82[5];
        v200 = v82[4];
        v201 = v84;
        v85 = v82[7];
        v202 = v82[6];
        v203 = v85;
        v86 = v82[3];
        *&v198[32] = v82[2];
        v199 = v86;
        v87 = *&v198[8];
        v88 = *&v198[16];
        v89 = v198[24];
        v90 = *&v198[32];
        LOBYTE(v196) = v198[24];
        v91 = 256;
        if (!v198[25])
        {
          v91 = 0;
        }

        v92 = v91 | (*&v198[28] << 32);
        v93 = HeterogeneousBuffer.type(at:)(0, *&v198[8], *&v198[16], v91 | v198[24], *&v198[32]);
        v94 = swift_conformsToProtocol2();
        if (!v94)
        {
          goto LABEL_188;
        }

        v95 = v94;
        LOBYTE(v196) = v89;
        v96 = HeterogeneousBuffer.index(after:)(0, v87, v88, v92 | v89, v90);
        LOBYTE(v196) = v89;
        v97 = HeterogeneousBuffer.type(at:)(v96, v87, v88, v92 | v89, v90);
        v98 = swift_conformsToProtocol2();
        if (!v98)
        {
LABEL_189:
          __break(1u);
LABEL_190:
          __break(1u);
          goto LABEL_191;
        }

        project #1 <A, B>(_:_:) in Event.id.getter(v97, v198, v93, v95, v98, &v196);
        if (v196 == &type metadata for Event.AttributeStack || v196 == &type metadata for Event.AttributeValue)
        {
          v100 = v197;
        }

        else
        {
          v100 = 0xFFFFFFFFLL;
        }

        v101 = *&v61 | 0xFFFFFFFF00000000;
        v102 = v188;
        specialized Interpreter.Iterator.new<A, B>(event:_:discreet:)(v100, v189, *(&v189 + 1), v101, 4, v184 & 1);
        if (v188[48])
        {
          goto LABEL_190;
        }

        v104 = *v188;
        if (v104 < *(v7 + 116))
        {
          v105 = *(v7 + 104);
          if (!v105)
          {
LABEL_191:
            __break(1u);
            goto LABEL_192;
          }

          v106 = *(*(v105 + 8 * v104) + 8);
          v107 = *(v106 + 44);
          if (v107 > a2)
          {
            v108 = *(v106 + 32);
            if (!v108)
            {
LABEL_192:
              __break(1u);
LABEL_193:
              __break(1u);
LABEL_194:
              __break(1u);
              goto LABEL_195;
            }

            v109 = v103;
            if (v103 < v107)
            {
              v110 = (v108 + (v187 << 7));
              v192 = v103;
              v111 = (v108 + (v103 << 7));
              v112 = *v111;
              if (v110[31] == v110[30])
              {
                specialized UnsafeArray.growToCapacity(_:)();
              }

              v113 = *(v110 + 14);
              if (!v113)
              {
                goto LABEL_193;
              }

              v114 = v110[31];
              v115 = v113 + 8 * v114;
              *v115 = -24448;
              *(v115 + 4) = v112;
              if (v114 != -1)
              {
                v110[31] = v114 + 1;
                v116 = *v110;
                if (v111[31] == v111[30])
                {
                  specialized UnsafeArray.growToCapacity(_:)();
                }

                v117 = *(v111 + 14);
                if (!v117)
                {
                  goto LABEL_194;
                }

                v118 = v111[31];
                v119 = v117 + 8 * v118;
                *v119 = 24704;
                *(v119 + 4) = v116;
                if (v118 != -1)
                {
                  v111[31] = v118 + 1;
                  if (v188[48])
                  {
LABEL_195:
                    __break(1u);
                    goto LABEL_196;
                  }

                  v120 = *v188;
                  if (v120 < *(v7 + 116))
                  {
                    v121 = *(v7 + 104);
                    if (!v121)
                    {
LABEL_196:
                      __break(1u);
LABEL_197:
                      __break(1u);
LABEL_198:
                      __break(1u);
LABEL_199:
                      __break(1u);
LABEL_200:
                      __break(1u);
                      goto LABEL_201;
                    }

                    v122 = *(*(v121 + 8 * v120) + 8);
                    if (*(v122 + 44) > a2)
                    {
                      v123 = *(v122 + 32);
                      if (!v123)
                      {
                        goto LABEL_197;
                      }

                      v124 = 0;
                      v125 = v123 + (v187 << 7);
                      v126 = *(v125 + 112);
                      v127 = *(v125 + 124);
                      v128 = MEMORY[0x277D84F90];
LABEL_73:
                      v129 = (v126 + 8 * v124);
                      while (v127 != v124)
                      {
                        if (v124 >= v127)
                        {
                          __break(1u);
LABEL_128:
                          __break(1u);
LABEL_129:
                          __break(1u);
LABEL_130:
                          __break(1u);
LABEL_131:
                          __break(1u);
LABEL_132:
                          __break(1u);
LABEL_133:
                          __break(1u);
LABEL_134:
                          __break(1u);
LABEL_135:
                          __break(1u);
LABEL_136:
                          __break(1u);
LABEL_137:
                          __break(1u);
LABEL_138:
                          __break(1u);
LABEL_139:
                          __break(1u);
                          goto LABEL_140;
                        }

                        if (!v126)
                        {
                          goto LABEL_160;
                        }

                        v130 = v124 + 1;
                        if (__OFADD__(v124, 1))
                        {
                          goto LABEL_128;
                        }

                        v132 = *v129;
                        v129 += 4;
                        v131 = v132;
                        ++v124;
                        if ((v132 & 0x80000000) == 0 && (v131 & 0xC03) != 0)
                        {
                          v190 = *(v129 - 1);
                          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                          {
                            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v128 + 16) + 1, 1);
                          }

                          v134 = *(v128 + 16);
                          v133 = *(v128 + 24);
                          v135 = v134 + 1;
                          if (v134 >= v133 >> 1)
                          {
                            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v133 > 1), v134 + 1, 1);
                            v135 = v134 + 1;
                          }

                          *(v128 + 16) = v135;
                          v136 = v128 + 8 * v134;
                          *(v136 + 32) = v131;
                          *(v136 + 36) = v190;
                          v124 = v130;
                          goto LABEL_73;
                        }
                      }

                      v191 = v109;
                      v137 = *(v128 + 16);
                      v138 = v7;
                      if (v137)
                      {
                        v139 = 0;
                        v140 = (v128 + 36);
                        while (v139 < *(v128 + 16))
                        {
                          if (v102[48])
                          {
                            goto LABEL_161;
                          }

                          v141 = *v102;
                          if (v141 >= *(v7 + 116))
                          {
                            goto LABEL_130;
                          }

                          v142 = *(v7 + 104);
                          if (!v142)
                          {
                            goto LABEL_162;
                          }

                          v143 = *v140;
                          v144 = *(*(v142 + 8 * v141) + 8);
                          v145 = *(v144 + 44);
                          if (v143 >= v145)
                          {
                            goto LABEL_131;
                          }

                          v146 = *(v144 + 32);
                          if (!v146)
                          {
                            goto LABEL_163;
                          }

                          if (v191 >= v145)
                          {
                            goto LABEL_132;
                          }

                          v147 = *(v140 - 2);
                          v148 = (v146 + (v143 << 7));
                          v149 = (v146 + (v192 << 7));
                          v150 = *v149;
                          if (v148[31] == v148[30])
                          {
                            specialized UnsafeArray.growToCapacity(_:)();
                          }

                          v151 = *(v148 + 14);
                          if (!v151)
                          {
                            goto LABEL_164;
                          }

                          v152 = v147 & 0x1FFF;
                          v153 = v148[31];
                          v154 = v151 + 8 * v153;
                          *v154 = v152 | 0xA000;
                          *(v154 + 4) = v150;
                          if (v153 == -1)
                          {
                            goto LABEL_133;
                          }

                          v148[31] = v153 + 1;
                          v155 = *v148;
                          if (v149[31] == v149[30])
                          {
                            specialized UnsafeArray.growToCapacity(_:)();
                          }

                          v156 = *(v149 + 14);
                          if (!v156)
                          {
                            goto LABEL_165;
                          }

                          v157 = v149[31];
                          v158 = v156 + 8 * v157;
                          *v158 = v152 | 0x6000;
                          *(v158 + 4) = v155;
                          if (v157 == -1)
                          {
                            goto LABEL_134;
                          }

                          v7 = v138;
                          ++v139;
                          v149[31] = v157 + 1;
                          v140 += 2;
                          v102 = v188;
                          if (v137 == v139)
                          {
                            goto LABEL_103;
                          }
                        }

                        goto LABEL_129;
                      }

LABEL_103:

                      v159 = *(a4 + 16);
                      if (v159)
                      {
                        v160 = (a4 + 32);
                        while (!v102[48])
                        {
                          v161 = *v102;
                          if (v161 >= *(v7 + 116))
                          {
                            goto LABEL_135;
                          }

                          v162 = *(v7 + 104);
                          if (!v162)
                          {
                            goto LABEL_167;
                          }

                          v164 = *v160++;
                          v163 = v164;
                          v165 = *(*(v162 + 8 * v161) + 8);
                          v166 = *(v165 + 44);
                          if (v164 >= v166)
                          {
                            goto LABEL_136;
                          }

                          v167 = *(v165 + 32);
                          if (!v167)
                          {
                            goto LABEL_168;
                          }

                          if (v191 >= v166)
                          {
                            goto LABEL_137;
                          }

                          v168 = (v167 + (v163 << 7));
                          v169 = (v167 + (v192 << 7));
                          v170 = *v169;
                          if (v168[31] == v168[30])
                          {
                            specialized UnsafeArray.growToCapacity(_:)();
                          }

                          v171 = *(v168 + 14);
                          if (!v171)
                          {
                            goto LABEL_169;
                          }

                          v172 = v168[31];
                          v173 = v171 + 8 * v172;
                          *v173 = -24512;
                          *(v173 + 4) = v170;
                          if (v172 == -1)
                          {
                            goto LABEL_138;
                          }

                          v168[31] = v172 + 1;
                          v174 = *v168;
                          if (v169[31] == v169[30])
                          {
                            specialized UnsafeArray.growToCapacity(_:)();
                          }

                          v175 = *(v169 + 14);
                          if (!v175)
                          {
                            goto LABEL_170;
                          }

                          v176 = v169[31];
                          v177 = v175 + 8 * v176;
                          *v177 = 24640;
                          *(v177 + 4) = v174;
                          if (v176 == -1)
                          {
                            goto LABEL_139;
                          }

                          v7 = v138;
                          v169[31] = v176 + 1;
                          if (!--v159)
                          {
                            goto LABEL_120;
                          }
                        }

                        goto LABEL_166;
                      }

LABEL_120:
                      if (v102[48])
                      {
                        goto LABEL_198;
                      }

                      v178 = *v102;
                      if (v178 < *(v7 + 116))
                      {
                        v179 = *(v7 + 104);
                        if (!v179)
                        {
                          goto LABEL_199;
                        }

                        v180 = *(*(v179 + 8 * v178) + 8);
                        v181 = *(v180 + 44);
                        if (v191 < v181)
                        {
                          v182 = *(v180 + 32);
                          if (!v182)
                          {
                            goto LABEL_200;
                          }

                          if (v181 > a2)
                          {
                            Event.hide(_:within:)((v182 + (v187 << 7)), v102);
                            return;
                          }

                          goto LABEL_157;
                        }

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
                        __break(1u);
                        goto LABEL_171;
                      }

LABEL_155:
                      __break(1u);
                      goto LABEL_156;
                    }

LABEL_154:
                    __break(1u);
                    goto LABEL_155;
                  }

LABEL_153:
                  __break(1u);
                  goto LABEL_154;
                }

LABEL_152:
                __break(1u);
                goto LABEL_153;
              }

LABEL_151:
              __break(1u);
              goto LABEL_152;
            }

LABEL_150:
            __break(1u);
            goto LABEL_151;
          }

LABEL_149:
          __break(1u);
          goto LABEL_150;
        }

LABEL_148:
        __break(1u);
        goto LABEL_149;
      }

LABEL_147:
      __break(1u);
      goto LABEL_148;
    }

LABEL_146:
    __break(1u);
    goto LABEL_147;
  }

LABEL_202:
  __break(1u);
LABEL_203:
  __break(1u);
}

uint64_t Interpreter.Iterator.projectVersion.getter()
{
  v1 = type metadata accessor for TraceChunk(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v0 + 176);
  if (*(v4 + 32))
  {
    specialized T_Header.init()(&v8);
  }

  else
  {
    outlined init with copy of TraceChunk(*(v4 + 24), v3);
    v5 = *(*v3 + 32);
    outlined destroy of TraceChunk(v3);
    specialized T_Header.init(loadedFrom:)(v5, &v8);
  }

  return v9;
}

NSUInteger Interpreter.Iterator.describe(state:)(uint64_t *a1)
{
  v46 = *a1;
  v2 = *(a1 + 16);
  v51 = a1[3];
  v52 = a1[1];
  v50 = a1[4];
  v48 = *(a1 + 41);
  v49 = *(a1 + 40);
  v3 = *(v1 + 16);
  v64[0] = *v1;
  v64[1] = v3;
  v64[2] = *(v1 + 32);
  v65 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 72);
  v6 = *(v1 + 88);
  *&v54[9] = *(v1 + 97);
  v53[1] = v5;
  *v54 = v6;
  v53[0] = v4;
  v7 = *(v1 + 56);
  v8 = *(v1 + 88);
  v9 = *(v1 + 100);
  v10 = *(v1 + 104);
  v11 = *(v1 + 116);
  v12 = *(v1 + 176);
  v45 = *(v1 + 184);
  if (v2)
  {
    v13 = 0xD000000000000014;
  }

  else
  {
    v13 = 73;
  }

  if (v2)
  {
    v14 = 0x800000026C33CCA0;
  }

  else
  {
    v14 = 0xE100000000000000;
  }

  *&v73 = 0;
  *(&v73 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(23);
  MEMORY[0x26D69CDB0](40, 0xE100000000000000);
  MEMORY[0x26D69CDB0](v13, v14);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  LOBYTE(v73) = *v12;
  _print_unlocked<A, B>(_:_:)();
  result = MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  v81 = v12[8];
  v82 = v12[9];
  v83 = v12[10];
  v84 = v12[11];
  v77 = v12[4];
  v78 = v12[5];
  v79 = v12[6];
  v80 = v12[7];
  v73 = *v12;
  v74 = v12[1];
  v75 = v12[2];
  v76 = v12[3];
  if (__OFSUB__(v46, 1))
  {
    __break(1u);
    goto LABEL_38;
  }

  v85 = v46 - 1;
  v86 = v52;
  v87 = 0;
  v88 = v51;
  v89 = v50;
  v90 = v49;
  v91 = v48;
  v47 = v46 - 1;
  v16 = specialized InspectionState.wrapDescription<A>(_:)();
  MEMORY[0x26D69CDB0](v16);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  v66 = v47;
  v67 = v52;
  v68 = 0;
  v69 = v51;
  v70 = v50;
  v71 = v49;
  v72 = v48;
  v17 = specialized InspectionState.wrapDescription<A>(_:)(v64);
  MEMORY[0x26D69CDB0](v17);

  result = MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  v18 = 8 * v11;
  v19 = v7;
  v20 = v8;
  v21 = v10;
  if (v11 >= v9)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v22 = (v20 + v18);
    if ((v22[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_10:
      if (!v21)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v11, 0, v53, specialized EvolutionTable.describe(state:));
      }

      v19 = *v21;
      v20 = v21[4];
      v23 = *(v21 + 11);
      v21 = v21[6];
    }

    while (v11 >= v23);
  }

  if (!v19)
  {
    goto LABEL_43;
  }

  v24 = (v19 + 24 * *v22);
  v25 = *v24;
  v26 = *(*v24 + 96);
  v27 = *(*v24 + 128);
  v55[7] = *(*v24 + 112);
  v55[8] = v27;
  v28 = *(v25 + 32);
  v29 = *(v25 + 64);
  v30 = *(v25 + 80);
  v55[3] = *(v25 + 48);
  v55[4] = v29;
  v56 = *(v25 + 144);
  v55[5] = v30;
  v55[6] = v26;
  v31 = *(v25 + 16);
  v55[0] = *v25;
  v55[1] = v31;
  v55[2] = v28;
  v57 = v47;
  v58 = v52;
  v59 = 0;
  v60 = v51;
  v61 = v50;
  v62 = v49;
  v63 = v48;
  v32 = specialized InspectionState.wrapDescription<A>(_:)(v55);
  MEMORY[0x26D69CDB0](v32);

  result = MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  v33 = v7;
  v34 = v8;
  v35 = v10;
  if (v11 >= v9)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v36 = (v34 + v18);
    if ((v36[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_17:
      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v11, 0, v53, specialized EvolutionTable.describe(state:));
      }

      v33 = *v35;
      v34 = v35[4];
      v37 = *(v35 + 11);
      v35 = v35[6];
    }

    while (v11 >= v37);
  }

  if (!v33)
  {
    goto LABEL_44;
  }

  result = v33 + 24 * *v36;
  v38 = *(*result + 136);
  v39 = *(*result + 144);
  if (v11 >= v9)
  {
    goto LABEL_24;
  }

  while ((*(v8 + v18 + 4) & 1) != 0)
  {
    do
    {
LABEL_24:
      if (!v10)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v11, 0, v53, specialized EvolutionTable.describe(state:));
      }

      v7 = *v10;
      v8 = v10[4];
      v40 = *(v10 + 11);
      v10 = v10[6];
    }

    while (v11 >= v40);
  }

  if (!v7)
  {
    goto LABEL_45;
  }

  result = v7 + 24 * *(v8 + 8 * v11);
  v41 = *(*result + 136);
  if (v41)
  {
    v42 = v39 - v38;
    if (!v38)
    {
      v42 = 0;
    }

    v43 = v45 - v41;
    if (v42 >= v43)
    {
      if ((v43 & 0x8000000000000000) == 0)
      {
        result = NSPageSize();
        if ((result - 0x1000000000000000) >> 61 == 7)
        {
          if (8 * result)
          {
            v44 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x26D69CDB0](v44);

            MEMORY[0x26D69CDB0](32, 0xE100000000000000);
            MEMORY[0x26D69CDB0](0, 0xE000000000000000);

            MEMORY[0x26D69CDB0](10528, 0xE200000000000000);
            return 0;
          }

          goto LABEL_41;
        }

LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}