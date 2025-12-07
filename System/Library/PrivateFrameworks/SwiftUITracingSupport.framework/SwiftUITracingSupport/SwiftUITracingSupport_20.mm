void Interpreter.Iterator.modeRemaining.getter()
{
  v1 = *(v0 + 72);
  v20[0] = *(v0 + 56);
  v20[1] = v1;
  v21[0] = *(v0 + 88);
  *(v21 + 9) = *(v0 + 97);
  v2 = *(v0 + 56);
  v3 = *(v0 + 88);
  v4 = *(v0 + 100);
  v5 = *(v0 + 116);
  v6 = 8 * v5;
  v7 = v2;
  v8 = *(v0 + 104);
  v9 = v3;
  v10 = v8;
  v11 = *(v0 + 184);
  if (v5 >= v4)
  {
    goto LABEL_3;
  }

  while (1)
  {
    v12 = (v9 + v6);
    if ((v12[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_3:
      if (!v10)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v5, 0, v20, specialized EvolutionTable.describe(state:));
      }

      v7 = *v10;
      v9 = v10[4];
      v13 = *(v10 + 11);
      v10 = v10[6];
    }

    while (v5 >= v13);
  }

  if (!v7)
  {
    goto LABEL_24;
  }

  v14 = v7 + 24 * *v12;
  v15 = *(*v14 + 136);
  if (v5 >= v4)
  {
    goto LABEL_10;
  }

  while ((*(v3 + v6 + 4) & 1) != 0)
  {
    do
    {
LABEL_10:
      if (!v8)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v5, 0, v20, specialized EvolutionTable.describe(state:));
      }

      v2 = *v8;
      v3 = v8[4];
      v16 = *(v8 + 11);
      v8 = v8[6];
    }

    while (v5 >= v16);
  }

  if (!v2)
  {
    goto LABEL_25;
  }

  v17 = *(*(v2 + 24 * *(v3 + 8 * v5)) + 136);
  if (!v17)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return;
  }

  v18 = *(*v14 + 144) - v15;
  if (!v15)
  {
    v18 = 0;
  }

  v19 = v11 - v17;
  if (v18 < v19)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v19 < 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }
}

uint64_t Interpreter.Iterator.Kind.describe(state:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = a1[3];
  v6 = a1[4];
  v7 = *(a1 + 40);
  v8 = *(a1 + 41);
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[2];
  if (!*(v1 + 48))
  {
    v15 = v2 - 1;
    if (!__OFSUB__(v2, 1))
    {
      v69 = v1[1];
      v16 = v10 >> 8;
      *&v87 = v2 - 1;
      *(&v87 + 1) = v3;
      LOBYTE(v88) = v4;
      *(&v88 + 1) = v5;
      *&v89[0] = v6;
      BYTE8(v89[0]) = v7;
      BYTE9(v89[0]) = v8;
      v64 = v10;
      v17 = v5;
      v18 = v4;
      v19 = specialized InspectionState.wrapDescription<A>(_:)(v16);
      MEMORY[0x26D69CDB0](v19);

      MEMORY[0x26D69CDB0](32, 0xE100000000000000);
      v79 = v15;
      *&v80 = v3;
      BYTE8(v80) = v18;
      v81 = v17;
      v82 = v6;
      LOBYTE(v83) = v7;
      BYTE1(v83) = v8;
      v20 = specialized InspectionState.wrapDescription<A>(_:)(v64);
      MEMORY[0x26D69CDB0](v20);

      MEMORY[0x26D69CDB0](32, 0xE100000000000000);
      v73[0] = v15;
      v73[1] = v3;
      v74 = v18;
      v75 = v17;
      v76 = v6;
      v77 = v7;
      v78 = v8;
      v21 = specialized InspectionState.wrapDescription<A>(_:)(v69, v11 & 1);
      MEMORY[0x26D69CDB0](v21);

      MEMORY[0x26D69CDB0](41, 0xE100000000000000);
      return 40;
    }

    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (*(v1 + 48) != 1)
  {
    return 1701603686;
  }

  v13 = v1[3];
  v12 = v1[4];
  v66 = v1[2];
  if (*(a1 + 41))
  {
    if (v8 != 1)
    {
LABEL_46:
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    v14 = a1[4];
  }

  else
  {
    v14 = *(v6 + 176);
  }

  v23 = *(v14 + 40);
  v24 = HIDWORD(v10);
  v71 = *(v14 + 48);
  v25 = *(v14 + 72);
  v72 = *(v14 + 64);
  v26 = *(v14 + 88);
  v27 = *(v14 + 80);
  v28 = *(v14 + 84);
  v29 = *(v14 + 96);
  v79 = v23;
  v80 = v71;
  v81 = v72;
  v82 = v25;
  v83 = v27;
  v84 = v28;
  v85 = v26;
  v86 = v29;
  v68 = v8;
  v67 = v6;
  v61 = v7;
  v60 = v5;
  v59 = v4;
  v62 = v12;
  v63 = v2;
  v65 = v13;
  if (v9)
  {
    if (__OFSUB__(v2, 1))
    {
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    *&v87 = v2 - 1;
    *(&v87 + 1) = v3;
    LOBYTE(v88) = v4;
    *(&v88 + 1) = v5;
    *&v89[0] = v6;
    BYTE8(v89[0]) = v7;
    BYTE9(v89[0]) = v8;
    LOBYTE(v73[0]) = 1;
    v30 = specialized InspectionState.wrapDescription<A>(_:)(v24 | 0x100000000);
    v32 = v31;
    v33 = v10;
    v34 = 8 * v10;
  }

  else
  {
    v33 = v10;
    v34 = 8 * v10;
    v35 = v23;
    v36 = v25;
    v37 = v26;
    if (v10 >= v28)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v38 = (v36 + v34);
      if ((v38[1] & 1) == 0)
      {
        break;
      }

      do
      {
LABEL_15:
        if (!v37)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(v10, 0, &v79, specialized EvolutionTable.describe(state:));
        }

        v35 = *v37;
        v36 = v37[4];
        v39 = *(v37 + 11);
        v37 = v37[6];
      }

      while (v10 >= v39);
    }

    if (!v35)
    {
      goto LABEL_44;
    }

    v40 = (v35 + 24 * *v38);
    v41 = *v40;
    v42 = (*v40 + 120);
    v43 = *(*v40 + 136);
    v87 = *v42;
    v88 = v43;
    v89[0] = *(v41 + 152);
    *(v89 + 9) = *(v41 + 161);
    v44 = (v41 + 152);
    v45 = (v41 + 164);
    v46 = (v41 + 168);
    while (1)
    {
      v47 = *v46;
      if (v24 < *v45)
      {
        v48 = (*v44 + 8 * v24);
        if ((v48[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v47)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(HIDWORD(v10), 0, &v87, specialized EvolutionTable.describe(state:));
      }

      v44 = (v47 + 32);
      v45 = (v47 + 44);
      v46 = (v47 + 48);
      v42 = v47;
    }

    v49 = *v42;
    if (!v49)
    {
      goto LABEL_45;
    }

    v50 = *(*(v49 + 24 * *v48) + 16);
    v30 = *v50;
    v32 = v50[1];
  }

  v58 = v3;
  if (v33 >= v28)
  {
    goto LABEL_30;
  }

  while ((*(v25 + v34 + 4) & 1) != 0)
  {
    do
    {
LABEL_30:
      if (!v26)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v10, 0, &v79, specialized EvolutionTable.describe(state:));
      }

      v23 = *v26;
      v25 = v26[4];
      v51 = *(v26 + 11);
      v26 = v26[6];
    }

    while (v33 >= v51);
  }

  if (!v23)
  {
    goto LABEL_43;
  }

  v52 = **(v23 + 24 * *(v25 + v34));
  v54 = *v52;
  v53 = v52[1];

  _StringGuts.grow(_:)(20);

  strcpy(v73, "(attachment ");
  BYTE5(v73[1]) = 0;
  HIWORD(v73[1]) = -5120;
  MEMORY[0x26D69CDB0](v30, v32);

  MEMORY[0x26D69CDB0](58, 0xE100000000000000);
  MEMORY[0x26D69CDB0](v54, v53);

  MEMORY[0x26D69CDB0](58, 0xE100000000000000);
  lazy protocol witness table accessor for type UInt32 and conformance UInt32();
  v55 = String.init<A>(_:radix:uppercase:)();
  MEMORY[0x26D69CDB0](v55);

  v70 = v73[0];
  if (v65)
  {
    v73[0] = v62;
    lazy protocol witness table accessor for type Int and conformance Int();
    v56 = String.init<A>(_:radix:uppercase:)();
    MEMORY[0x26D69CDB0](v56);

    MEMORY[0x26D69CDB0](32, 0xE100000000000000);
    if (!__OFSUB__(v63, 1))
    {
      v73[0] = v63 - 1;
      v73[1] = v58;
      v74 = v59;
      v75 = v60;
      v76 = v67;
      v77 = v61;
      v78 = v68;
      v57 = specialized InspectionState.wrapDescription<A>(_:)(v66);
      MEMORY[0x26D69CDB0](v57);

      MEMORY[0x26D69CDB0](41, 0xE100000000000000);
      MEMORY[0x26D69CDB0](0x20747261747328, 0xE700000000000000);

      goto LABEL_38;
    }

    goto LABEL_41;
  }

LABEL_38:
  MEMORY[0x26D69CDB0](41, 0xE100000000000000);
  return v70;
}

uint64_t Interpreter.Iterator.Mode.type.setter(uint64_t result, uint64_t a2)
{
  *v2 = result;
  v2[1] = a2;
  return result;
}

double Interpreter.Iterator.Mode.init(name:version:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = swift_slowAlloc();
  *v6 = a1;
  v6[1] = a2;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 16) = v6;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 64) = 1;
  *(a3 + 68) = 1;
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
  *(a3 + 96) = 2;
  *(a3 + 104) = 0;
  *(a3 + 144) = 0;
  result = 0.0;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  return result;
}

void project #1 <A>(_:) in Interpreter.Iterator.Mode.add(context:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 48))(v7, v6);
  specialized Strong.init(_:)(v5, a2);
  (*(v3 + 8))(v5, a2);
  Strong.opaque.getter();
}

uint64_t Interpreter.Iterator.Mode.describe(state:)(_OWORD *a1)
{
  v2 = a1[1];
  *v20 = *a1;
  *&v20[16] = v2;
  *&v20[26] = *(a1 + 26);
  v3 = v1[7];
  v27 = v1[6];
  v28 = v3;
  v29 = v1[8];
  v30 = *(v1 + 18);
  v4 = v1[3];
  v23 = v1[2];
  v24 = v4;
  v5 = v1[5];
  v25 = v1[4];
  v26 = v5;
  v6 = v1[1];
  v21 = *v1;
  v22 = v6;
  v31 = 0;
  *&v32 = 0xE000000000000000;
  _StringGuts.grow(_:)(22);

  v19[0] = 40;
  v19[1] = 0xE100000000000000;
  if (*(&v28 + 1))
  {
    v31 = *(&v28 + 1);
    swift_getMetatypeMetadata();
    v7 = String.init<A>(describing:)();
    v9 = v8;
  }

  else
  {
    v31 = 126;
    *&v32 = 0xE100000000000000;
    v10 = *v22;
    v11 = *(v22 + 8);

    MEMORY[0x26D69CDB0](v10, v11);

    v7 = 126;
    v9 = 0xE100000000000000;
  }

  MEMORY[0x26D69CDB0](v7, v9);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  v12 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v12);

  MEMORY[0x26D69CDB0](0x20656D69742820, 0xE700000000000000);
  v31 = v23;
  v13 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v13);

  MEMORY[0x26D69CDB0](8233, 0xE200000000000000);
  if (BYTE8(v23))
  {
    v14 = 0x6E69726170657270;
  }

  else
  {
    v14 = 0;
  }

  if (BYTE8(v23))
  {
    v15 = 0xEE00656361725467;
  }

  else
  {
    v15 = 0xE000000000000000;
  }

  MEMORY[0x26D69CDB0](v14, v15);

  result = MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  if (__OFSUB__(*v20, 1))
  {
    __break(1u);
    goto LABEL_23;
  }

  v31 = *v20 - 1;
  v32 = *&v20[8];
  v33 = *&v20[24];
  v34 = *&v20[40];
  v17 = specialized InspectionState.wrapDescription<A>(_:)(*(&v29 + 1), v30);
  MEMORY[0x26D69CDB0](v17);

  if (v27 != 2 && (v27 & 0x100) != 0)
  {
    v18 = v26 - *(&v25 + 1);
    if (!*(&v25 + 1))
    {
      v18 = 0;
    }

    if (!__OFSUB__(v18, *(&v26 + 1)))
    {
      if (v18 != *(&v26 + 1))
      {
        MEMORY[0x26D69CDB0](0x4D48434154544120, 0xEC00000020544E45);
      }

      goto LABEL_18;
    }

LABEL_23:
    __break(1u);
    return result;
  }

LABEL_18:
  if (*(&v28 + 1))
  {
    if (*&v20[8] == 0x7FFFFFFFFFFFFFFFLL)
    {
      describe #1 <A>(type:_:) in Interpreter.Iterator.Mode.describe(state:)(*(&v28 + 1), v19, v20, &v21, *(&v28 + 1));
    }
  }

  MEMORY[0x26D69CDB0](41, 0xE100000000000000);
  return v19[0];
}

uint64_t describe #1 <A>(type:_:) in Interpreter.Iterator.Mode.describe(state:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24[-1] - v10;
  v12 = a3[1];
  v23 = *a3;
  v24[0] = v12;
  *(v24 + 10) = *(a3 + 26);
  v13 = *(a4 + 112);
  if (v13)
  {
    v14 = UnsafeMutableRawPointer.subscript.getter(a5, v13);
    v15 = *(a5 - 8);
    (*(v15 + 16))(v11, v14, a5);
    (*(v15 + 56))(v11, 0, 1, a5);
  }

  else
  {
    (*(*(a5 - 8) + 56))(v11, 1, 1, a5);
  }

  v19 = InspectionState.describe<A>(_:)(v11, v8, &protocol witness table for A?, v16, v17, v18);
  v21 = v20;
  (*(v9 + 8))(v11, v8);
  MEMORY[0x26D69CDB0](v19, v21);
}

uint64_t Interpreter.Iterator.Mode.executionContext.setter(uint64_t result, char a2)
{
  *(v2 + 56) = result;
  *(v2 + 64) = a2 & 1;
  return result;
}

Swift::Void __swiftcall Interpreter.Iterator.Mode.deallocate()()
{
  v1 = v0[2];
  if (v1)
  {
    outlined destroy of String(v0[2]);
    MEMORY[0x26D69EAB0](v1, -1, -1);
    v0[2] = 0;
    v2 = v0[15];
    if (v2)
    {
      v3 = v0[16];
      v4 = v0[15];

      project #1 <A>(_:) in Interpreter.Iterator.Mode.deallocate()(v2, v0, v4, v3);
    }
  }

  else
  {
    _StringGuts.grow(_:)(25);
    MEMORY[0x26D69CDB0](0xD000000000000017, 0x800000026C33B600);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport6UniqueVySSGMd, &_s21SwiftUITracingSupport6UniqueVySSGMR);
    _print_unlocked<A, B>(_:_:)();
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

void project #1 <A>(_:) in Interpreter.Iterator.Mode.deallocate()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + 112);
  if (v5)
  {
    UnsafeMutableRawPointer.subscript.getter(a3, v5);
    (*(*(a4 + 8) + 8))(a3);
    v8 = *(a2 + 112);
    if (v8)
    {
      UnsafeMutableRawPointer.subscript.getter(a3, v8);
      UnsafeMutablePointer.deinitialize(count:)();
      v9 = *(a2 + 112);
      if (v9)
      {
        UnsafeMutableRawPointer.subscript.getter(a3, v9);

LABEL_10:
        JUMPOUT(0x26D69D370);
      }

LABEL_9:
      __break(1u);
      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  goto LABEL_9;
}

uint64_t Interpreter.Iterator.CancelationPolicy.describe(state:)(uint64_t a1)
{
  if (*(v1 + 8))
  {
    return 0;
  }

  if (!*(a1 + 16))
  {
    return 0x6C65636E6163;
  }

  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v3);

  MEMORY[0x26D69CDB0](41, 0xE100000000000000);
  return 2127912;
}

__n128 Interpreter.Iterator.kind.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v3;
  result = *(v1 + 32);
  *(a1 + 32) = result;
  *(a1 + 48) = v2;
  return result;
}

__n128 Interpreter.Iterator.kind.setter(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v3;
  result = *(a1 + 32);
  *(v1 + 32) = result;
  *(v1 + 48) = v2;
  return result;
}

__n128 Interpreter.Iterator.modes.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = *(v1 + 56);
  *(a1 + 16) = v2;
  *(a1 + 32) = *(v1 + 88);
  result = *(v1 + 97);
  *(a1 + 41) = result;
  return result;
}

__n128 Interpreter.Iterator.modes.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 56) = *a1;
  *(v1 + 72) = v2;
  *(v1 + 88) = *(a1 + 32);
  result = *(a1 + 41);
  *(v1 + 97) = result;
  return result;
}

void *Interpreter.Iterator.AttachmentBuffer.append(buffer:)(void *__src, uint64_t a2)
{
  v3 = *v2;
  if (!*v2)
  {
    goto LABEL_21;
  }

  v4 = __src;
  v5 = a2 - __src;
  if (v3 == -1)
  {
    goto LABEL_11;
  }

  if (__src)
  {
    v6 = a2 - __src;
  }

  else
  {
    v6 = 0;
  }

  v7 = v2[2];
  v8 = __OFADD__(v6, v7);
  v9 = v6 + v7;
  if (v8)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v10 = v2[1] - v3;
  if (v10 < v9)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v10 >= v7)
  {
    if (!__src)
    {
LABEL_15:
      v2[2] = v7;
      return __src;
    }

    __src = memmove((v3 + v7), __src, v5);
LABEL_11:
    if (v4)
    {
      v11 = v5;
    }

    else
    {
      v11 = 0;
    }

    v12 = v2[2];
    v8 = __OFADD__(v12, v11);
    v7 = v12 + v11;
    if (!v8)
    {
      goto LABEL_15;
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return __src;
}

Swift::Void __swiftcall Interpreter.Iterator.AttachmentBuffer.deallocate()()
{
  if (specialized static UnsafeMutableRawBufferPointer.== infix(_:_:)(*v0, v0[1], 0, 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v0[2] >= 1)
  {
    v1 = Interpreter.Iterator.AttachmentBuffer.buffer.getter();
    if ((v2 & 1) == 0)
    {
      if (v1)
      {

LABEL_10:
        JUMPOUT(0x26D69EAB0);
      }
    }
  }
}

uint64_t Interpreter.Iterator.AttachmentBuffer.describe(state:)()
{
  v1 = type metadata accessor for String.Encoding();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = 0xE300000000000000;
  result = Interpreter.Iterator.AttachmentBuffer.buffer.getter();
  if (v5)
  {
    v6 = 7104878;
  }

  else
  {
    v7 = v4 - result;
    if (!result)
    {
      v7 = 0;
    }

    if (v7 < 0)
    {
      __break(1u);
      return result;
    }

    static String.Encoding.utf8.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SliceVySWGMd, &_ss5SliceVySWGMR);
    lazy protocol witness table accessor for type Slice<UnsafeRawBufferPointer> and conformance Slice<A>();
    v6 = String.init<A>(bytes:encoding:)();
    if (v8)
    {
      v2 = v8;
    }

    else
    {
      v6 = 0;
      v2 = 0xE000000000000000;
    }
  }

  MEMORY[0x26D69CDB0](v6, v2);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  v9 = *(v0 + 16);
  if (v9 <= 0)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0x646569706F63;
  }

  if (v9 <= 0)
  {
    v11 = 0xE000000000000000;
  }

  else
  {
    v11 = 0xE600000000000000;
  }

  MEMORY[0x26D69CDB0](v10, v11);

  MEMORY[0x26D69CDB0](41, 0xE100000000000000);
  return 2122024;
}

uint64_t protocol witness for Deallocatable.deallocate() in conformance Interpreter.Iterator.AttachmentBuffer()
{
  result = specialized static UnsafeMutableRawBufferPointer.== infix(_:_:)(*v0, v0[1], 0, 0);
  if (result)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v0[2] >= 1)
  {
    result = Interpreter.Iterator.AttachmentBuffer.buffer.getter();
    if ((v2 & 1) == 0)
    {
      if (result)
      {

LABEL_10:
        JUMPOUT(0x26D69EAB0);
      }
    }
  }

  return result;
}

uint64_t Interpreter.Iterator.attachmentRefSearch.getter()
{
  if (v0[48] == 1)
  {
    return *v0;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void Interpreter.Iterator.currentAttachment.getter()
{
  v1 = *(v0 + 72);
  v16[0] = *(v0 + 56);
  v16[1] = v1;
  v17[0] = *(v0 + 88);
  v2 = *(v0 + 97);
  v3 = *(v0 + 56);
  v4 = *(v0 + 88);
  v5 = *(v0 + 100);
  v6 = *(v0 + 116);
  v7 = 8 * v6;
  v8 = *(v0 + 104);
  v9 = v3;
  v10 = v4;
  v11 = v8;
  *(v17 + 9) = v2;
  if (v6 >= v5)
  {
    goto LABEL_3;
  }

  while (1)
  {
    v12 = (v10 + v7);
    if ((v12[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_3:
      if (!v11)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v6, 0, v16, specialized EvolutionTable.describe(state:));
      }

      v9 = *v11;
      v10 = v11[4];
      v13 = *(v11 + 11);
      v11 = v11[6];
    }

    while (v6 >= v13);
  }

  if (!v9)
  {
    goto LABEL_18;
  }

  v14 = v9 + 24 * *v12;
  if (*(*v14 + 96) == 2)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v6 >= v5)
  {
    goto LABEL_11;
  }

  while ((*(v4 + v7 + 4) & 1) != 0)
  {
    do
    {
LABEL_11:
      if (!v8)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v6, 0, v16, specialized EvolutionTable.describe(state:));
      }

      v3 = *v8;
      v4 = v8[4];
      v15 = *(v8 + 11);
      v8 = v8[6];
    }

    while (v6 >= v15);
  }

  if (v3)
  {
    LOBYTE(v16[0]) = *(*v14 + 104) & 1;
    return;
  }

LABEL_19:
  __break(1u);
}

uint64_t Interpreter.Iterator.backtrace.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 160) = result;
  *(v2 + 168) = a2 & 1;
  *(v2 + 172) = HIDWORD(a2);
  return result;
}

uint64_t Interpreter.Iterator.index.getter()
{
  if (!v0[48])
  {
    return *v0;
  }

  __break(1u);
  return result;
}

uint64_t Interpreter.Iterator.mode.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + 56);
  v4 = *(v1 + 72);
  v17[0] = *(v1 + 56);
  v17[1] = v4;
  v18[0] = *(v1 + 88);
  *(v18 + 9) = *(v1 + 97);
  v5 = (v1 + 88);
  v6 = (v1 + 100);
  v7 = (v1 + 104);
  result = *(v1 + 116);
  while (1)
  {
    v9 = *v7;
    if (result < *v6)
    {
      v10 = (*v5 + 8 * result);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(result, 0, v17, specialized EvolutionTable.describe(state:));
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (v11)
  {
    result = v11 + 24 * *v10;
    v12 = *result;
    v13 = *(*result + 112);
    *(a1 + 96) = *(*result + 96);
    *(a1 + 112) = v13;
    *(a1 + 128) = *(v12 + 128);
    *(a1 + 144) = *(v12 + 144);
    v14 = *(v12 + 48);
    *(a1 + 32) = *(v12 + 32);
    *(a1 + 48) = v14;
    v15 = *(v12 + 80);
    *(a1 + 64) = *(v12 + 64);
    *(a1 + 80) = v15;
    v16 = *(v12 + 16);
    *a1 = *v12;
    *(a1 + 16) = v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t key path getter for Interpreter.Iterator.mode : Interpreter.Iterator@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + 56);
  v4 = *(a1 + 72);
  v17[0] = *(a1 + 56);
  v17[1] = v4;
  v18[0] = *(a1 + 88);
  *(v18 + 9) = *(a1 + 97);
  v5 = (a1 + 88);
  v6 = (a1 + 100);
  v7 = (a1 + 104);
  result = *(a1 + 116);
  while (1)
  {
    v9 = *v7;
    if (result < *v6)
    {
      v10 = (*v5 + 8 * result);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(result, 0, v17, specialized EvolutionTable.describe(state:));
    }

    v5 = (v9 + 32);
    v6 = (v9 + 44);
    v7 = (v9 + 48);
    v3 = v9;
  }

  v11 = *v3;
  if (v11)
  {
    result = v11 + 24 * *v10;
    v12 = *result;
    v13 = *(*result + 112);
    *(a2 + 96) = *(*result + 96);
    *(a2 + 112) = v13;
    *(a2 + 128) = *(v12 + 128);
    *(a2 + 144) = *(v12 + 144);
    v14 = *(v12 + 48);
    *(a2 + 32) = *(v12 + 32);
    *(a2 + 48) = v14;
    v15 = *(v12 + 80);
    *(a2 + 64) = *(v12 + 64);
    *(a2 + 80) = v15;
    v16 = *(v12 + 16);
    *a2 = *v12;
    *(a2 + 16) = v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *key path setter for Interpreter.Iterator.mode : Interpreter.Iterator(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 116);
  v4 = (a2 + 56);
  v5 = *(a2 + 72);
  v17[0] = *(a2 + 56);
  v17[1] = v5;
  v18[0] = *(a2 + 88);
  *(v18 + 9) = *(a2 + 97);
  v6 = (a2 + 88);
  v7 = (a2 + 100);
  v8 = (a2 + 104);
  while (1)
  {
    v9 = *v8;
    if (result < *v7)
    {
      v10 = (*v6 + 8 * result);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(result, 0, v17, specialized EvolutionTable.describe(state:));
    }

    v6 = (v9 + 32);
    v7 = (v9 + 44);
    v8 = (v9 + 48);
    v4 = v9;
  }

  v11 = *v4;
  if (v11)
  {
    result = (v11 + 24 * *v10);
    v12 = *result;
    v13 = *(a1 + 112);
    *(v12 + 96) = *(a1 + 96);
    *(v12 + 112) = v13;
    *(v12 + 128) = *(a1 + 128);
    *(v12 + 144) = *(a1 + 144);
    v14 = *(a1 + 48);
    *(v12 + 32) = *(a1 + 32);
    *(v12 + 48) = v14;
    v15 = *(a1 + 80);
    *(v12 + 64) = *(a1 + 64);
    *(v12 + 80) = v15;
    v16 = *(a1 + 16);
    *v12 = *a1;
    *(v12 + 16) = v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *Interpreter.Iterator.mode.setter(uint64_t a1)
{
  result = *(v1 + 116);
  v4 = (v1 + 56);
  v5 = *(v1 + 72);
  v17[0] = *(v1 + 56);
  v17[1] = v5;
  v18[0] = *(v1 + 88);
  *(v18 + 9) = *(v1 + 97);
  v6 = (v1 + 88);
  v7 = (v1 + 100);
  v8 = (v1 + 104);
  while (1)
  {
    v9 = *v8;
    if (result < *v7)
    {
      v10 = (*v6 + 8 * result);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(result, 0, v17, specialized EvolutionTable.describe(state:));
    }

    v6 = (v9 + 32);
    v7 = (v9 + 44);
    v8 = (v9 + 48);
    v4 = v9;
  }

  v11 = *v4;
  if (v11)
  {
    result = (v11 + 24 * *v10);
    v12 = *result;
    v13 = *(a1 + 112);
    *(v12 + 96) = *(a1 + 96);
    *(v12 + 112) = v13;
    *(v12 + 128) = *(a1 + 128);
    *(v12 + 144) = *(a1 + 144);
    v14 = *(a1 + 48);
    *(v12 + 32) = *(a1 + 32);
    *(v12 + 48) = v14;
    v15 = *(a1 + 80);
    *(v12 + 64) = *(a1 + 64);
    *(v12 + 80) = v15;
    v16 = *(a1 + 16);
    *v12 = *a1;
    *(v12 + 16) = v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

_OWORD *Interpreter.Iterator.swiftUI.setter(_OWORD *result)
{
  v2 = result;
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
    result = (v10 + 24 * *(v9 + 8));
    v11 = *(*result + 112);
    if (v11)
    {
      v12 = v2[5];
      v11[4] = v2[4];
      v11[5] = v12;
      v11[6] = v2[6];
      *(v11 + 109) = *(v2 + 109);
      v13 = v2[1];
      *v11 = *v2;
      v11[1] = v13;
      v14 = v2[3];
      v11[2] = v2[2];
      v11[3] = v14;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

__n128 Interpreter.Iterator.interpreter.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 176);
  v3 = *(v2 + 144);
  *(a1 + 128) = *(v2 + 128);
  *(a1 + 144) = v3;
  v4 = *(v2 + 176);
  *(a1 + 160) = *(v2 + 160);
  *(a1 + 176) = v4;
  v5 = *(v2 + 80);
  *(a1 + 64) = *(v2 + 64);
  *(a1 + 80) = v5;
  v6 = *(v2 + 112);
  *(a1 + 96) = *(v2 + 96);
  *(a1 + 112) = v6;
  v7 = *(v2 + 16);
  *a1 = *v2;
  *(a1 + 16) = v7;
  result = *(v2 + 32);
  v9 = *(v2 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v9;
  return result;
}

__n128 Interpreter.Iterator.interpreter.setter(uint64_t a1)
{
  v2 = *(v1 + 176);
  v3 = *(a1 + 144);
  *(v2 + 128) = *(a1 + 128);
  *(v2 + 144) = v3;
  v4 = *(a1 + 176);
  *(v2 + 160) = *(a1 + 160);
  *(v2 + 176) = v4;
  v5 = *(a1 + 80);
  *(v2 + 64) = *(a1 + 64);
  *(v2 + 80) = v5;
  v6 = *(a1 + 112);
  *(v2 + 96) = *(a1 + 96);
  *(v2 + 112) = v6;
  v7 = *(a1 + 16);
  *v2 = *a1;
  *(v2 + 16) = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  *(v2 + 32) = result;
  *(v2 + 48) = v9;
  return result;
}

uint64_t (*Interpreter.Iterator.pendingThroughRet.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = Interpreter.Iterator.interpreter.modify();
  return UnsafeTree.subjectsMap.modify;
}

uint64_t Interpreter.Iterator.reading.getter()
{
  if (v0[48])
  {
    goto LABEL_6;
  }

  v1 = *(v0 + 22);
  v2 = *v0;
  if (v2 >= *(v1 + 116))
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v3 = *(v1 + 104);
  if (v3)
  {
    return *(*(v3 + 8 * v2) + 8);
  }

LABEL_7:
  __break(1u);
  return result;
}

unsigned __int8 *key path getter for Interpreter.Iterator.reading : Interpreter.Iterator@<X0>(unsigned __int8 *result@<X0>, void *a2@<X8>)
{
  if (result[48])
  {
    goto LABEL_6;
  }

  v2 = *(result + 22);
  v3 = *result;
  if (v3 >= *(v2 + 116))
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = *(v2 + 104);
  if (v4)
  {
    *a2 = *(*(v4 + 8 * v3) + 8);
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *key path setter for Interpreter.Iterator.reading : Interpreter.Iterator(void *result, unsigned __int8 *a2)
{
  if (a2[48])
  {
    goto LABEL_6;
  }

  v2 = *(a2 + 22);
  v3 = *a2;
  if (v3 >= *(v2 + 116))
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = *(v2 + 104);
  if (v4)
  {
    *(*(v4 + 8 * v3) + 8) = *result;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t Interpreter.Iterator.reading.setter(uint64_t result)
{
  if (v1[48])
  {
    goto LABEL_6;
  }

  v2 = *(v1 + 22);
  v3 = *v1;
  if (v3 >= *(v2 + 116))
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = *(v2 + 104);
  if (v4)
  {
    *(*(v4 + 8 * v3) + 8) = result;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t _s21SwiftUITracingSupport16TracepointIDLikePAAE5model6withinyAA11InterpreterC8IteratorVz_tFZSo02T_D4IDV0a_Tt0g5Tm(uint64_t a1, unsigned int *a2, uint64_t (*a3)(__int128 *, unsigned int *))
{
  LODWORD(v3) = a3;
  v4 = a2;
  v5 = a1;
  v6 = v161;
  v7 = a1 + 56;
  v8 = *(a1 + 72);
  v169[0] = *(a1 + 56);
  v169[1] = v8;
  v170[0] = *(a1 + 88);
  v9 = (a1 + 88);
  v10 = (a1 + 100);
  v11 = (a1 + 104);
  v12 = *(a1 + 116);
  v13 = 8 * v12;
  *(v170 + 9) = *(a1 + 97);
  v14 = (a1 + 56);
  v111 = (a1 + 88);
  v15 = (a1 + 100);
  v16 = (a1 + 104);
  while (1)
  {
    v17 = *v16;
    if (v12 < *v15)
    {
      v18 = (*v9 + v13);
      if ((v18[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v17)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v12, 0, v169, specialized EvolutionTable.describe(state:));
    }

    v9 = (v17 + 32);
    v15 = (v17 + 44);
    v16 = (v17 + 48);
    v14 = v17;
  }

  v19 = *v14;
  if (!v19)
  {
    goto LABEL_110;
  }

  if (*(*(v19 + 24 * *v18) + 41) == 1)
  {
    v20 = *(a1 + 72);
    v167[0] = *v7;
    v167[1] = v20;
    v168[0] = *(a1 + 88);
    *(v168 + 9) = *(a1 + 97);
    v21 = (a1 + 104);
    v22 = (a1 + 100);
    v23 = (a1 + 88);
    for (i = (a1 + 56); ; i = v25)
    {
      v25 = *v21;
      if (v12 < *v22)
      {
        v26 = (*v23 + v13);
        if ((v26[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v25)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v12, 0, v167, specialized EvolutionTable.describe(state:));
      }

      v23 = (v25 + 32);
      v22 = (v25 + 44);
      v21 = (v25 + 48);
    }

    v27 = a1 + 88;
    if (!*i)
    {
      goto LABEL_117;
    }

    *(*(*i + 24 * *v26) + 41) = 0;
    v28 = *(a1 + 176);
    v29 = *(v28 + 8);
    if (*(v28 + 32) == 1 && (*(v28 + 24) & 1) == 0)
    {
      goto LABEL_120;
    }

    *(a1 + 116) = 0;
    v30 = *(a1 + 72);
    v165[0] = *v7;
    v165[1] = v30;
    v166[0] = *(a1 + 88);
    *(v166 + 9) = *(a1 + 97);
    v31 = (a1 + 104);
    v32 = (a1 + 100);
    v33 = (a1 + 88);
    for (j = (a1 + 56); ; j = v35)
    {
      v35 = *v31;
      if (*v32)
      {
        v36 = *v33;
        if ((v36[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 0, v165, specialized EvolutionTable.describe(state:));
      }

      v33 = (v35 + 32);
      v32 = (v35 + 44);
      v31 = (v35 + 48);
    }

    if (!*j)
    {
LABEL_116:
      __break(1u);
LABEL_117:
      __break(1u);
      goto LABEL_118;
    }

    LODWORD(v12) = 0;
    *(*(*j + 24 * *v36) + 136) = v29;
  }

  else
  {
    v27 = a1 + 88;
  }

  v37 = *(a1 + 72);
  v163[0] = *v7;
  v163[1] = v37;
  v164[0] = *(a1 + 88);
  v38 = 8 * v12;
  *(v164 + 9) = *(a1 + 97);
  v39 = (a1 + 56);
  v40 = v27;
  v41 = (a1 + 100);
  v42 = (a1 + 104);
  while (1)
  {
    v43 = *v42;
    if (v12 < *v41)
    {
      v44 = (*v40 + v38);
      if ((v44[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v43)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v12, 0, v163, specialized EvolutionTable.describe(state:));
    }

    v40 = (v43 + 32);
    v41 = (v43 + 44);
    v42 = (v43 + 48);
    v39 = v43;
  }

  v45 = *v39;
  if (!v45)
  {
    goto LABEL_111;
  }

  if (!*(*(v45 + 24 * *v44) + 136))
  {
    __break(1u);
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  v106 = a2;
  v107 = a1;
  v46 = *(a1 + 72);
  v161[0] = *v7;
  v161[1] = v46;
  v162[0] = *(a1 + 88);
  *(v162 + 9) = *(a1 + 97);
  v108 = *(a1 + 184);
  log = (a1 + 184);
  v27 = *(a1 + 56);
  v47 = *(a1 + 88);
  LODWORD(v6) = *(a1 + 100);
  v48 = *(a1 + 104);
  v102 = a3;
  v103 = *(a1 + 176);
  v49 = v27;
  v50 = v47;
  v51 = v48;
  v104 = *(a1 + 192);
  if (v12 >= v6)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v52 = (v50 + v38);
    if ((v52[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_37:
      if (!v51)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v12, 0, v161, specialized EvolutionTable.describe(state:));
      }

      v49 = *v51;
      v50 = *(v51 + 32);
      v53 = *(v51 + 44);
      v51 = *(v51 + 48);
    }

    while (v12 >= v53);
  }

  if (!v49)
  {
    goto LABEL_112;
  }

  v54 = v49 + 24 * *v52;
  v3 = *(*v54 + 136);
  if (v12 >= v6)
  {
    goto LABEL_44;
  }

  while (1)
  {
    v55 = (v47 + v38);
    if ((*(v47 + v38 + 4) & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_44:
      if (!v48)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v12, 0, v161, specialized EvolutionTable.describe(state:));
      }

      v27 = *v48;
      v47 = *(v48 + 32);
      LODWORD(v6) = *(v48 + 44);
      v48 = *(v48 + 48);
    }

    while (v12 >= v6);
  }

  v4 = v108;
  if (!v27)
  {
    goto LABEL_113;
  }

  v5 = v107;
  v56 = *(*(v27 + 24 * *v55) + 136);
  if (!v56)
  {
    __break(1u);
LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  if (v3)
  {
    v57 = *(*v54 + 144) - v3;
  }

  else
  {
    v57 = 0;
  }

  v58 = v108 - v56;
  v59 = __OFSUB__(v57, v108 - v56);
  v60 = v57 - (v108 - v56);
  if (v60 < 0 != v59)
  {
    goto LABEL_105;
  }

  if ((v58 & 0x8000000000000000) != 0)
  {
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  if (v60 >= 4)
  {
    v27 = 4;
  }

  else
  {
    v27 = v60;
  }

  v6 = (v108 + v27);
  *log = v108 + v27;
  v61 = *(v7 + 16);
  v159[0] = *v7;
  v159[1] = v61;
  v160[0] = *(v7 + 32);
  v3 = v151;
  *(v160 + 9) = *(v7 + 41);
  v62 = v7;
  v63 = v111;
  v64 = v10;
  v65 = v11;
  while (1)
  {
    v66 = *v65;
    if (v12 < *v64)
    {
      v67 = (*v63 + v38);
      if ((v67[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v66)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v12, 0, v159, specialized EvolutionTable.describe(state:));
    }

    v63 = (v66 + 32);
    v64 = (v66 + 44);
    v65 = (v66 + 48);
    v62 = v66;
  }

  v68 = *v62;
  if (!v68)
  {
    goto LABEL_114;
  }

  v69 = v68 + 24 * *v67;
  v70 = *(*v69 + 136);
  if (!v70 || (v6 >= v70 ? (v71 = v6 >= *(*v69 + 144)) : (v71 = 1), v71))
  {
    v72 = *(v7 + 16);
    v157[0] = *v7;
    v157[1] = v72;
    v158[0] = *(v7 + 32);
    *(v158 + 9) = *(v7 + 41);
    v73 = v7;
    v74 = v111;
    v75 = v10;
    v76 = v11;
    while (1)
    {
      v77 = *v76;
      if (v12 < *v75)
      {
        v78 = (*v74 + v38);
        if ((v78[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v77)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v12, 0, v157, specialized EvolutionTable.describe(state:));
      }

      v74 = (v77 + 32);
      v75 = (v77 + 44);
      v76 = (v77 + 48);
      v73 = v77;
    }

    v79 = *v73;
    if (v79)
    {
      *(*(v79 + 24 * *v78) + 41) = 1;
      goto LABEL_79;
    }

    goto LABEL_115;
  }

LABEL_79:
  if ((v27 + 3) < 7)
  {
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  v4 = *v108;
  if (!readingDebug)
  {
    goto LABEL_103;
  }

  v80 = *(v7 + 16);
  v155[0] = *v7;
  v155[1] = v80;
  v156[0] = *(v7 + 32);
  *(v156 + 9) = *(v7 + 41);
  v81 = v111;
  while (1)
  {
    v82 = *v11;
    if (v12 < *v10)
    {
      v83 = (*v81 + v38);
      if ((v83[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v82)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v12, 0, v155, specialized EvolutionTable.describe(state:));
    }

    v81 = (v82 + 32);
    v10 = (v82 + 44);
    v11 = (v82 + 48);
    v7 = v82;
  }

  if (*v7)
  {
    if (((*(*(*v7 + 24 * *v83) + 48) >= 0) & v104) == 0 || *(v103 + 160) != 1)
    {
      goto LABEL_103;
    }

    v107 = *v107;
    v84 = *(v5 + 24);
    v152 = *(v5 + 8);
    v153 = v84;
    v154 = *(v5 + 40);
    LODWORD(v12) = *(v5 + 48);
    v151[0] = *(v5 + 49);
    *(v151 + 3) = *(v5 + 52);
    v11 = *(v5 + 56);
    v85 = *(v5 + 64);
    v10 = *(v5 + 88);
    v150 = *(v5 + 80);
    v149 = v85;
    LODWORD(v3) = *(v5 + 100);
    LODWORD(v108) = *(v5 + 96);
    v7 = *(v5 + 104);
    LOBYTE(v111) = *(v5 + 112);
    v86 = *(v5 + 113);
    v148 = *(v5 + 115);
    v147 = v86;
    v38 = *(v5 + 116);
    v87 = *(v5 + 120);
    v88 = *(v5 + 136);
    v89 = *(v5 + 152);
    v27 = *(v5 + 176);
    v146 = *(v5 + 168);
    v144 = v88;
    v145 = v89;
    v143 = v87;
    v90 = *log;
    v142 = *(log + 8);
    v141 = v90;
    LOBYTE(v6) = static os_log_type_t.default.getter();
    if (one-time initialization token for readingDebugLog == -1)
    {
LABEL_91:
      loga = readingDebugLog;
      if (os_log_type_enabled(readingDebugLog, v6))
      {
        v105 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        *v105 = 136446722;
        v118 = v152;
        v119 = v153;
        v123 = v149;
        v133 = v143;
        v101 = v91;
        v140 = v91;
        if (v12)
        {
          v92 = 0;
        }

        else
        {
          v92 = v107;
        }

        v117 = v107;
        v120 = v154;
        LOBYTE(v121) = v12;
        *(&v121 + 1) = v151[0];
        HIDWORD(v121) = *(v151 + 3);
        v122 = v11;
        v124 = v150;
        v125 = v10;
        v126 = v108;
        v127 = v3;
        v128 = v7;
        v129 = v111;
        v130 = v147;
        v131 = v148;
        v132 = v38;
        v134 = v144;
        v135 = v145;
        v136 = v146;
        v137 = v27;
        v138 = v141;
        v139 = v142;
        v112 = xmmword_26C32DAD0;
        v113 = 0;
        v114 = 0;
        v115 = v27;
        LOBYTE(v116) = v92;
        HIBYTE(v116) = 1;
        v93 = Interpreter.Iterator.describe(state:)(&v112);
        v95 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v93, v94, &v140);

        *(v105 + 4) = v95;
        *(v105 + 12) = 2050;
        v117 = v11;
        v118 = v149;
        *&v119 = v150;
        *(&v119 + 1) = v10;
        v120 = __PAIR64__(v3, v108);
        v121 = v7;
        LOBYTE(v122) = v111;
        if (v38 >= v3)
        {
          goto LABEL_97;
        }

        while ((v10[2 * v38 + 1] & 1) != 0)
        {
          do
          {
LABEL_97:
            if (!v7)
            {
              specialized error #1 <A>() in EvolutionTable.address(of:in:)(v38, 0, &v117, specialized EvolutionTable.describe(state:));
            }

            v11 = *v7;
            v10 = *(v7 + 32);
            v96 = *(v7 + 44);
            v7 = *(v7 + 48);
          }

          while (v38 >= v96);
        }

        if (v11)
        {
          *(v105 + 14) = *(v11[3 * v10[2 * v38]] + 48);
          *(v105 + 22) = 2082;
          v112 = xmmword_26C32DAD0;
          v113 = 1;
          v114 = 0;
          v115 = 0;
          v116 = 512;
          v97 = v102(&v112, v4);
          v99 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v97, v98, &v140);

          *(v105 + 24) = v99;
          _os_log_impl(&dword_26C161000, loga, v6, "%{public}s\n m %{public}ld: %{public}s", v105, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x26D69EAB0](v101, -1, -1);
          MEMORY[0x26D69EAB0](v105, -1, -1);
          goto LABEL_103;
        }

        goto LABEL_119;
      }

LABEL_103:
      result = (v106)(v5, v4);
      *(v5 + 160) = 0;
      *(v5 + 168) = 1;
      *(v5 + 172) = -1;
      return result;
    }

LABEL_108:
    swift_once();
    goto LABEL_91;
  }

LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

Swift::Void __swiftcall Interpreter.Iterator.replayTracepoint()()
{
  *(v0 + 184) = *(v0 + 120);
  v1 = *(v0 + 136);
  v2 = __OFSUB__(v1, 1);
  v3 = v1 - 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 136) = v3;
    if (**(v0 + 176))
    {
      v4 = T_TracepointID.model(within:);
      v5 = T_TracepointID.describe(state:);
    }

    else
    {
      v4 = T_TracepointIDV0.model(within:);
      v5 = T_TracepointIDV0.describe(state:);
    }

    _s21SwiftUITracingSupport16TracepointIDLikePAAE5model6withinyAA11InterpreterC8IteratorVz_tFZSo02T_D4IDV0a_Tt0g5Tm(v0, v4, v5);
  }
}

const void *closure #1 in Interpreter.Iterator.iterate<A>()@<X0>(const void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(*(a3 - 8) + 64);
  if (result)
  {
    if (a2 - result >= v4)
    {
      return UnsafeRawPointer.loadUnaligned<A>(fromByteOffset:as:)(0, result, a3, a4);
    }

    return copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(result, a2, a3, a4);
  }

  if (v4 >= 1)
  {
    return copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(result, a2, a3, a4);
  }

  __break(1u);
  return result;
}

uint64_t Interpreter.Iterator.iterate(size:)(uint64_t result)
{
  if ((~result & 6) == 0)
  {
    v4 = *(v1 + 72);
    v161 = *(v1 + 56);
    v3 = v161;
    v162 = v4;
    *(v163 + 9) = *(v1 + 97);
    v2 = (v1 + 56);
    v7 = *(v1 + 88);
    v5 = (v1 + 88);
    v6 = v7;
    v163[0] = *v5;
    v9 = v2 + 11;
    v8 = *(v2 + 11);
    v11 = (v2 + 3);
    v10 = *(v2 + 6);
    v12 = *(v2 + 15);
    v13 = 8 * v12;
    v150 = *(v2 + 16);
    v14 = v10;
    v15 = v7;
    v16 = v161;
    if (v12 >= v8)
    {
      goto LABEL_4;
    }

    while (1)
    {
      v17 = (v15 + v13);
      if ((v17[1] & 1) == 0)
      {
        break;
      }

      do
      {
LABEL_4:
        if (!v14)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(v12, 0, &v161, specialized EvolutionTable.describe(state:));
        }

        v16 = *v14;
        v15 = v14[4];
        v18 = *(v14 + 11);
        v14 = v14[6];
      }

      while (v12 >= v18);
    }

    if (!v16)
    {
      goto LABEL_202;
    }

    result = v16 + 24 * *v17;
    v51 = *(*result + 136);
    v52 = *(*result + 144);
    if (v12 >= v8)
    {
      goto LABEL_23;
    }

    while ((*(v6 + v13 + 4) & 1) != 0)
    {
      do
      {
LABEL_23:
        if (!v10)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(v12, 0, &v161, specialized EvolutionTable.describe(state:));
        }

        v3 = *v10;
        v6 = v10[4];
        v53 = *(v10 + 11);
        v10 = v10[6];
      }

      while (v12 >= v53);
    }

    if (!v3)
    {
      goto LABEL_203;
    }

    result = v3 + 24 * *(v6 + 8 * v12);
    v54 = *(*result + 136);
    if (!v54)
    {
      goto LABEL_200;
    }

    if (v51)
    {
      v55 = v52 - v51;
    }

    else
    {
      v55 = 0;
    }

    v56 = v150 - v54;
    v57 = __OFSUB__(v55, v150 - v54);
    v58 = v55 - (v150 - v54);
    if (v58 < 0 != v57)
    {
      __break(1u);
    }

    else if ((v56 & 0x8000000000000000) == 0)
    {
      if (v58 >= 8)
      {
        v59 = 8;
      }

      else
      {
        v59 = v58;
      }

      v60 = v150 + v59;
      *(v154 + 184) = v150 + v59;
      v61 = v2[1];
      v158 = *v2;
      v159 = v61;
      v160[0] = v2[2];
      *(v160 + 9) = *(v2 + 41);
      v62 = (v2 + 3);
      v63 = v2 + 11;
      v64 = v5;
      for (i = v2; ; i = v66)
      {
        v66 = *v62;
        if (v12 < *v63)
        {
          v67 = (*v64 + v13);
          if ((v67[1] & 1) == 0)
          {
            break;
          }
        }

        if (!v66)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(v12, 0, &v158, specialized EvolutionTable.describe(state:));
        }

        v64 = (v66 + 32);
        v63 = (v66 + 44);
        v62 = (v66 + 48);
      }

      if (!*i)
      {
        goto LABEL_204;
      }

      result = *i + 24 * *v67;
      v68 = *(*result + 136);
      if (!v68 || (v60 >= v68 ? (v69 = v60 >= *(*result + 144)) : (v69 = 1), v69))
      {
        v70 = v2[1];
        v155 = *v2;
        v156 = v70;
        v157[0] = v2[2];
        *(v157 + 9) = *(v2 + 41);
        while (1)
        {
          v71 = *v11;
          if (v12 < *v9)
          {
            v72 = (*v5 + v13);
            if ((v72[1] & 1) == 0)
            {
              break;
            }
          }

          if (!v71)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(v12, 0, &v155, specialized EvolutionTable.describe(state:));
          }

          v5 = v71 + 2;
          v9 = v71 + 11;
          v11 = (v71 + 3);
          v2 = v71;
        }

        if (!*v2)
        {
          goto LABEL_207;
        }

        result = *v2 + 24 * *v72;
        *(*result + 41) = 1;
      }

      if ((v59 + 7) >= 0xF)
      {
        return *v150;
      }

      goto LABEL_190;
    }

    __break(1u);
LABEL_190:
    __break(1u);
    goto LABEL_191;
  }

  v19 = (v1 + 88);
  if ((result & 2) != 0)
  {
    v36 = (v1 + 56);
    v38 = *(v1 + 72);
    v161 = *(v1 + 56);
    v37 = v161;
    v162 = v38;
    v163[0] = *(v1 + 88);
    *(v163 + 9) = *(v1 + 97);
    v39 = *(v1 + 88);
    v41 = (v1 + 100);
    v40 = *(v1 + 100);
    v42 = (v36 + 3);
    v43 = *(v36 + 6);
    v44 = *(v36 + 15);
    v45 = 8 * v44;
    v152 = *(v36 + 16);
    v46 = v161;
    v47 = v39;
    v48 = v43;
    if (v44 >= v40)
    {
      goto LABEL_17;
    }

    while (1)
    {
      v49 = (v47 + v45);
      if ((v49[1] & 1) == 0)
      {
        break;
      }

      do
      {
LABEL_17:
        if (!v48)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(v44, 0, &v161, specialized EvolutionTable.describe(state:));
        }

        v46 = *v48;
        v47 = v48[4];
        v50 = *(v48 + 11);
        v48 = v48[6];
      }

      while (v44 >= v50);
    }

    if (!v46)
    {
      goto LABEL_208;
    }

    result = v46 + 24 * *v49;
    v86 = *(*result + 136);
    v87 = *(*result + 144);
    if (v44 >= v40)
    {
      goto LABEL_69;
    }

    while ((*(v39 + v45 + 4) & 1) != 0)
    {
      do
      {
LABEL_69:
        if (!v43)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(v44, 0, &v161, specialized EvolutionTable.describe(state:));
        }

        v37 = *v43;
        v39 = v43[4];
        v88 = *(v43 + 11);
        v43 = v43[6];
      }

      while (v44 >= v88);
    }

    if (!v37)
    {
      goto LABEL_209;
    }

    result = v37 + 24 * *(v39 + 8 * v44);
    v89 = *(*result + 136);
    if (!v89)
    {
      goto LABEL_201;
    }

    if (v86)
    {
      v90 = v87 - v86;
    }

    else
    {
      v90 = 0;
    }

    v91 = v152 - v89;
    v57 = __OFSUB__(v90, v152 - v89);
    v92 = v90 - (v152 - v89);
    if (v92 < 0 == v57)
    {
      if ((v91 & 0x8000000000000000) == 0)
      {
        if (v92 >= 2)
        {
          v93 = 2;
        }

        else
        {
          v93 = v92;
        }

        v94 = v152 + v93;
        *(v154 + 184) = v152 + v93;
        v95 = v36[1];
        v158 = *v36;
        v159 = v95;
        v160[0] = v36[2];
        *(v160 + 9) = *(v36 + 41);
        v96 = (v36 + 3);
        v97 = v41;
        v98 = v19;
        for (j = v36; ; j = v100)
        {
          v100 = *v96;
          if (v44 < *v97)
          {
            v101 = (*v98 + v45);
            if ((v101[1] & 1) == 0)
            {
              break;
            }
          }

          if (!v100)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(v44, 0, &v158, specialized EvolutionTable.describe(state:));
          }

          v98 = (v100 + 32);
          v97 = (v100 + 44);
          v96 = (v100 + 48);
        }

        if (!*j)
        {
          goto LABEL_210;
        }

        result = *j + 24 * *v101;
        v102 = *(*result + 136);
        if (!v102 || (v94 >= v102 ? (v103 = v94 >= *(*result + 144)) : (v103 = 1), v103))
        {
          v104 = v36[1];
          v155 = *v36;
          v156 = v104;
          v157[0] = v36[2];
          *(v157 + 9) = *(v36 + 41);
          while (1)
          {
            v105 = *v42;
            if (v44 < *v41)
            {
              v106 = (*v19 + v45);
              if ((v106[1] & 1) == 0)
              {
                break;
              }
            }

            if (!v105)
            {
              specialized error #1 <A>() in EvolutionTable.address(of:in:)(v44, 0, &v155, specialized EvolutionTable.describe(state:));
            }

            v19 = v105 + 2;
            v41 = v105 + 11;
            v42 = (v105 + 3);
            v36 = v105;
          }

          if (!*v36)
          {
            goto LABEL_211;
          }

          result = *v36 + 24 * *v106;
          *(*result + 41) = 1;
        }

        if ((v93 + 1) >= 3)
        {
          return *v152;
        }

        goto LABEL_193;
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
      goto LABEL_197;
    }

LABEL_191:
    __break(1u);
    goto LABEL_192;
  }

  v20 = (v1 + 56);
  v21 = (v1 + 100);
  v22 = (v1 + 104);
  if ((result & 4) == 0)
  {
    v23 = *(v1 + 72);
    v161 = *v20;
    v162 = v23;
    v163[0] = *(v1 + 88);
    *(v163 + 9) = *(v1 + 97);
    v24 = *(v1 + 56);
    v25 = *(v1 + 88);
    v26 = v1;
    v27 = *(v1 + 100);
    v28 = *(v26 + 116);
    v29 = 8 * v28;
    v30 = v24;
    v31 = *(v26 + 104);
    v32 = v25;
    v33 = v31;
    v151 = *(v26 + 184);
    if (v28 >= v27)
    {
      goto LABEL_11;
    }

    while (1)
    {
      v34 = (v32 + v29);
      if ((v34[1] & 1) == 0)
      {
        break;
      }

      do
      {
LABEL_11:
        if (!v33)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(v28, 0, &v161, specialized EvolutionTable.describe(state:));
        }

        v30 = *v33;
        v32 = v33[4];
        v35 = *(v33 + 11);
        v33 = v33[6];
      }

      while (v28 >= v35);
    }

    if (!v30)
    {
      goto LABEL_212;
    }

    result = v30 + 24 * *v34;
    v107 = *(*result + 136);
    v108 = *(*result + 144);
    if (v28 >= v27)
    {
      goto LABEL_111;
    }

    while ((*(v25 + v29 + 4) & 1) != 0)
    {
      do
      {
LABEL_111:
        if (!v31)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(v28, 0, &v161, specialized EvolutionTable.describe(state:));
        }

        v24 = *v31;
        v25 = v31[4];
        v109 = *(v31 + 11);
        v31 = v31[6];
      }

      while (v28 >= v109);
    }

    if (!v24)
    {
      goto LABEL_214;
    }

    result = v24 + 24 * *(v25 + 8 * v28);
    v113 = *(*result + 136);
    if (!v113)
    {
      goto LABEL_205;
    }

    if (v107)
    {
      v114 = (v108 - v107);
    }

    else
    {
      v114 = 0;
    }

    v115 = &v151[-v113];
    v57 = __OFSUB__(v114, &v151[-v113]);
    v116 = v114 - &v151[-v113];
    if (v116 < 0 == v57)
    {
      if ((v115 & 0x8000000000000000) == 0)
      {
        if (v116 >= 1)
        {
          v116 = 1;
        }

        v117 = &v151[v116];
        *(v154 + 184) = &v151[v116];
        v118 = v20[1];
        v158 = *v20;
        v159 = v118;
        v160[0] = v20[2];
        *(v160 + 9) = *(v20 + 41);
        v119 = v20;
        v120 = v19;
        v121 = v21;
        v122 = v22;
        while (1)
        {
          v123 = *v122;
          if (v28 < *v121)
          {
            v124 = (*v120 + v29);
            if ((v124[1] & 1) == 0)
            {
              break;
            }
          }

          if (!v123)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(v28, 0, &v158, specialized EvolutionTable.describe(state:));
          }

          v120 = (v123 + 32);
          v121 = (v123 + 44);
          v122 = (v123 + 48);
          v119 = v123;
        }

        v138 = *v119;
        if (!v138)
        {
          goto LABEL_216;
        }

        result = v138 + 24 * *v124;
        v139 = *(*result + 136);
        if (!v139 || (v117 >= v139 ? (v140 = v117 >= *(*result + 144)) : (v140 = 1), v140))
        {
          v141 = v20[1];
          v155 = *v20;
          v156 = v141;
          v157[0] = v20[2];
          *(v157 + 9) = *(v20 + 41);
          while (1)
          {
            v142 = *v22;
            if (v28 < *v21)
            {
              v143 = (*v19 + v29);
              if ((v143[1] & 1) == 0)
              {
                break;
              }
            }

            if (!v142)
            {
              specialized error #1 <A>() in EvolutionTable.address(of:in:)(v28, 0, &v155, specialized EvolutionTable.describe(state:));
            }

            v19 = (v142 + 32);
            v21 = (v142 + 44);
            v22 = (v142 + 48);
            v20 = v142;
          }

          if (!*v20)
          {
            goto LABEL_218;
          }

          result = *v20 + 24 * *v143;
          *(*result + 41) = 1;
        }

        if (v114 != v115)
        {
          return *v151;
        }

        goto LABEL_198;
      }

      goto LABEL_196;
    }

    goto LABEL_194;
  }

  v73 = *(v1 + 72);
  v161 = *v20;
  v162 = v73;
  v163[0] = *(v1 + 88);
  *(v163 + 9) = *(v1 + 97);
  v74 = *(v1 + 56);
  v75 = *(v1 + 88);
  v76 = v1;
  v77 = *(v1 + 100);
  v78 = *(v76 + 116);
  v79 = 8 * v78;
  v80 = v74;
  v81 = *(v76 + 104);
  v82 = v75;
  v83 = v81;
  v153 = *(v76 + 184);
  if (v78 >= v77)
  {
    goto LABEL_59;
  }

  while (1)
  {
    v84 = (v82 + v79);
    if ((v84[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_59:
      if (!v83)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v78, 0, &v161, specialized EvolutionTable.describe(state:));
      }

      v80 = *v83;
      v82 = v83[4];
      v85 = *(v83 + 11);
      v83 = v83[6];
    }

    while (v78 >= v85);
  }

  if (!v80)
  {
    goto LABEL_213;
  }

  result = v80 + 24 * *v84;
  v110 = *(*result + 136);
  v111 = *(*result + 144);
  if (v78 >= v77)
  {
    goto LABEL_118;
  }

  while ((*(v75 + v79 + 4) & 1) != 0)
  {
    do
    {
LABEL_118:
      if (!v81)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v78, 0, &v161, specialized EvolutionTable.describe(state:));
      }

      v74 = *v81;
      v75 = v81[4];
      v112 = *(v81 + 11);
      v81 = v81[6];
    }

    while (v78 >= v112);
  }

  if (!v74)
  {
    goto LABEL_215;
  }

  result = v74 + 24 * *(v75 + 8 * v78);
  v125 = *(*result + 136);
  if (!v125)
  {
    goto LABEL_206;
  }

  if (v110)
  {
    v126 = v111 - v110;
  }

  else
  {
    v126 = 0;
  }

  v127 = v153 - v125;
  v57 = __OFSUB__(v126, v153 - v125);
  v128 = v126 - (v153 - v125);
  if (v128 < 0 != v57)
  {
    goto LABEL_195;
  }

  if ((v127 & 0x8000000000000000) != 0)
  {
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
    return result;
  }

  if (v128 >= 4)
  {
    v129 = 4;
  }

  else
  {
    v129 = v128;
  }

  v130 = v153 + v129;
  *(v154 + 184) = v153 + v129;
  v131 = v20[1];
  v158 = *v20;
  v159 = v131;
  v160[0] = v20[2];
  *(v160 + 9) = *(v20 + 41);
  v132 = v20;
  v133 = v19;
  v134 = v21;
  v135 = v22;
  while (1)
  {
    v136 = *v135;
    if (v78 < *v134)
    {
      v137 = (*v133 + v79);
      if ((v137[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v136)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v78, 0, &v158, specialized EvolutionTable.describe(state:));
    }

    v133 = (v136 + 32);
    v134 = (v136 + 44);
    v135 = (v136 + 48);
    v132 = v136;
  }

  v144 = *v132;
  if (!v144)
  {
    goto LABEL_217;
  }

  result = v144 + 24 * *v137;
  v145 = *(*result + 136);
  if (!v145 || (v130 >= v145 ? (v146 = v130 >= *(*result + 144)) : (v146 = 1), v146))
  {
    v147 = v20[1];
    v155 = *v20;
    v156 = v147;
    v157[0] = v20[2];
    *(v157 + 9) = *(v20 + 41);
    while (1)
    {
      v148 = *v22;
      if (v78 < *v21)
      {
        v149 = (*v19 + v79);
        if ((v149[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v148)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v78, 0, &v155, specialized EvolutionTable.describe(state:));
      }

      v19 = (v148 + 32);
      v21 = (v148 + 44);
      v22 = (v148 + 48);
      v20 = v148;
    }

    if (!*v20)
    {
      goto LABEL_219;
    }

    result = *v20 + 24 * *v149;
    *(*result + 41) = 1;
  }

  if ((v129 + 3) < 7)
  {
    goto LABEL_199;
  }

  return *v153;
}

Swift::Void __swiftcall Interpreter.Iterator.model(mode:size:)(Swift::UInt32 mode, Swift::Int size)
{
  v4 = *(v2 + 120);
  v5 = v4 + size;
  *(v2 + 116) = mode;
  v6 = (v2 + 56);
  v7 = *(v2 + 72);
  v117[0] = *(v2 + 56);
  v117[1] = v7;
  v118[0] = *(v2 + 88);
  v8 = (v2 + 88);
  v9 = (v2 + 100);
  v10 = (v2 + 104);
  v11 = 8 * mode;
  *(v118 + 9) = *(v2 + 97);
  v12 = (v2 + 56);
  v13 = (v2 + 88);
  v14 = (v2 + 100);
  v15 = (v2 + 104);
  while (1)
  {
    v16 = *v15;
    if (*v14 > mode)
    {
      v17 = (*v13 + v11);
      if ((v17[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v16)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(mode, 0, v117, specialized EvolutionTable.describe(state:));
    }

    v13 = (v16 + 32);
    v14 = (v16 + 44);
    v15 = (v16 + 48);
    v12 = v16;
  }

  v18 = *v12;
  if (!v18)
  {
    goto LABEL_115;
  }

  v19 = *(v18 + 24 * *v17);
  *(v19 + 136) = v4;
  *(v19 + 144) = v5;
  if (*(v105 + 48))
  {
    if (*(v105 + 48) == 1)
    {
      if (*v105 != mode)
      {
        v20 = *(v2 + 72);
        v114 = *v6;
        v115 = v20;
        v116[0] = *(v2 + 88);
        *(v116 + 9) = *(v2 + 97);
        v21 = *(v105 + 56);
        v22 = *(v105 + 88);
        v23 = v21;
        v24 = *(v105 + 104);
        v25 = v22;
        v26 = v24;
        v104 = *(v105 + 184);
        if (*(v105 + 100) <= mode)
        {
          goto LABEL_13;
        }

LABEL_12:
        v27 = (v25 + v11);
        if (v27[1])
        {
LABEL_13:
          while (v26)
          {
            v23 = *v26;
            v25 = v26[4];
            v28 = *(v26 + 11);
            v26 = v26[6];
            if (v28 > mode)
            {
              goto LABEL_12;
            }
          }

LABEL_31:
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(mode, 0, &v114, specialized EvolutionTable.describe(state:));
        }

        if (!v23)
        {
          goto LABEL_120;
        }

        v45 = v23 + 24 * *v27;
        v46 = *(*v45 + 136);
        if (*(v105 + 100) <= mode)
        {
          goto LABEL_35;
        }

        while ((*(v22 + v11 + 4) & 1) != 0)
        {
          do
          {
LABEL_35:
            if (!v24)
            {
              specialized error #1 <A>() in EvolutionTable.address(of:in:)(mode, 0, &v114, specialized EvolutionTable.describe(state:));
            }

            v21 = *v24;
            v22 = v24[4];
            v47 = *(v24 + 11);
            v24 = v24[6];
          }

          while (v47 <= mode);
        }

        if (!v21)
        {
          goto LABEL_121;
        }

        v48 = *(*(v21 + 24 * *(v22 + v11)) + 136);
        if (!v48)
        {
          goto LABEL_118;
        }

        v49 = *(*v45 + 144) - v46;
        if (!v46)
        {
          v49 = 0;
        }

        v50 = v104 - v48;
        v51 = v49 < v50;
        v52 = v49 - v50;
        if (v51)
        {
          goto LABEL_109;
        }

        v103 = v52;
        if (v50 < 0)
        {
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
          goto LABEL_112;
        }

        v53 = v6[1];
        v54 = v6[2];
        v112[0] = *v6;
        v112[1] = v53;
        v113[0] = v54;
        v55 = *v6;
        v56 = *v8;
        v57 = *v10;
        v58 = *v10;
        v59 = *v9;
        v60 = *v9;
        v61 = *v8;
        v62 = *v6;
        *(v113 + 9) = *(v6 + 41);
        if (v60 <= mode)
        {
          goto LABEL_47;
        }

        while (1)
        {
          v63 = (v61 + v11);
          if ((v63[1] & 1) == 0)
          {
            break;
          }

          do
          {
LABEL_47:
            if (!v58)
            {
              specialized error #1 <A>() in EvolutionTable.address(of:in:)(mode, 0, v112, specialized EvolutionTable.describe(state:));
            }

            v62 = *v58;
            v61 = v58[4];
            v64 = *(v58 + 11);
            v58 = v58[6];
          }

          while (v64 <= mode);
        }

        if (!v62)
        {
          goto LABEL_122;
        }

        v65 = v62 + 24 * *v63;
        v66 = *(*v65 + 136);
        if (v59 <= mode)
        {
          goto LABEL_54;
        }

        while ((*(v56 + v11 + 4) & 1) != 0)
        {
          do
          {
LABEL_54:
            if (!v57)
            {
              specialized error #1 <A>() in EvolutionTable.address(of:in:)(mode, 0, v112, specialized EvolutionTable.describe(state:));
            }

            v55 = *v57;
            v56 = v57[4];
            v67 = *(v57 + 11);
            v57 = v57[6];
          }

          while (v67 <= mode);
        }

        if (!v55)
        {
          goto LABEL_123;
        }

        v68 = *(*(v55 + 24 * *(v56 + v11)) + 136);
        if (!v68)
        {
          goto LABEL_119;
        }

        v69 = *(*v65 + 144) - v66;
        if (!v66)
        {
          v69 = 0;
        }

        v70 = v104 - v68;
        v71 = v69 - v70;
        if (v69 < v70)
        {
          goto LABEL_111;
        }

        if (v70 < 0)
        {
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
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
          return;
        }

        if (v103 >= v71)
        {
          v72 = v69 - v70;
        }

        else
        {
          v72 = v103;
        }

        v73 = v104 + v72;
        *(v105 + 184) = v104 + v72;
        v74 = v6[1];
        v110[0] = *v6;
        v110[1] = v74;
        v111[0] = v6[2];
        *(v111 + 9) = *(v6 + 41);
        v75 = v10;
        v76 = v9;
        v77 = v8;
        for (i = v6; ; i = v79)
        {
          v79 = *v75;
          if (*v76 > mode)
          {
            v80 = (*v77 + v11);
            if ((v80[1] & 1) == 0)
            {
              break;
            }
          }

          if (!v79)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(mode, 0, v110, specialized EvolutionTable.describe(state:));
          }

          v77 = (v79 + 32);
          v76 = (v79 + 44);
          v75 = (v79 + 48);
        }

        if (!*i)
        {
          goto LABEL_124;
        }

        v81 = *i + 24 * *v80;
        v82 = *(*v81 + 136);
        if (!v82 || (v73 >= v82 ? (v83 = v73 >= *(*v81 + 144)) : (v83 = 1), v83))
        {
          v84 = v6[1];
          v108[0] = *v6;
          v108[1] = v84;
          v109[0] = v6[2];
          *(v109 + 9) = *(v6 + 41);
          v85 = v10;
          v86 = v9;
          v87 = v8;
          for (j = v6; ; j = v89)
          {
            v89 = *v85;
            if (*v86 > mode)
            {
              v90 = (*v87 + v11);
              if ((v90[1] & 1) == 0)
              {
                break;
              }
            }

            if (!v89)
            {
              specialized error #1 <A>() in EvolutionTable.address(of:in:)(mode, 0, v108, specialized EvolutionTable.describe(state:));
            }

            v87 = (v89 + 32);
            v86 = (v89 + 44);
            v85 = (v89 + 48);
          }

          if (!*j)
          {
            goto LABEL_125;
          }

          *(*(*j + 24 * *v90) + 41) = 1;
        }

        if (v103 > v71)
        {
          goto LABEL_113;
        }
      }

      goto LABEL_89;
    }
  }

  else
  {
    v29 = *(v105 + 1);
    if (v29 != 1)
    {
      if (v29 == 5)
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        goto LABEL_31;
      }

      goto LABEL_89;
    }
  }

  v30 = *(v105 + 176);
  v31 = (v30 + 40);
  v32 = *(v30 + 56);
  v114 = *(v30 + 40);
  v115 = v32;
  v116[0] = *(v30 + 72);
  *(v116 + 9) = *(v30 + 81);
  v33 = (v30 + 72);
  v34 = (v30 + 84);
  v35 = (v30 + 88);
  while (1)
  {
    v36 = *v35;
    if (*v34 > mode)
    {
      v37 = (*v33 + v11);
      if ((v37[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v36)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(mode, 0, &v114, specialized EvolutionTable.describe(state:));
    }

    v33 = (v36 + 32);
    v34 = (v36 + 44);
    v35 = (v36 + 48);
    v31 = v36;
  }

  v38 = *v31;
  if (!v38)
  {
    goto LABEL_117;
  }

  v39 = (v38 + 24 * *v37);
  v40 = *v39;
  v41 = *(*v39 + 44);
  if (v41 == *(*v39 + 40))
  {
    specialized UnsafeArray.growToCapacity(_:)(2 * v41);
  }

  v42 = *(v40 + 32);
  if (!v42)
  {
    goto LABEL_114;
  }

  v43 = *(v40 + 44);
  v44 = (v42 + 16 * v43);
  *v44 = v4;
  v44[1] = v5;
  if (v43 == -1)
  {
    __break(1u);
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  *(v40 + 44) = v43 + 1;
LABEL_89:
  v91 = v6[1];
  v106[0] = *v6;
  v106[1] = v91;
  v107[0] = v6[2];
  *(v107 + 9) = *(v6 + 41);
  while (1)
  {
    v92 = *v10;
    if (*v9 > mode)
    {
      v93 = (*v8 + v11);
      if ((v93[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v92)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(mode, 0, v106, specialized EvolutionTable.describe(state:));
    }

    v8 = (v92 + 32);
    v9 = (v92 + 44);
    v10 = (v92 + 48);
    v6 = v92;
  }

  if (!*v6)
  {
    goto LABEL_116;
  }

  v94 = *v6 + 24 * *v93;
  v95 = *v94;
  v96 = *(*v94 + 96);
  if (v96 == 2 || (v96 & 0x100) == 0)
  {
    return;
  }

  v97 = *(v95 + 72);
  v98 = *(v95 + 88);
  if (v97)
  {
    v99 = *(v95 + 80) - v97;
  }

  else
  {
    v99 = 0;
  }

  v100 = v99 - v98;
  if (__OFSUB__(v99, v98))
  {
    goto LABEL_108;
  }

  if (v100 >= 1)
  {
    *(&v102 + 1) = *(v95 + 104) & 1;
    *&v102 = *(*v94 + 96);
    v101 = v102 >> 32;

    Interpreter.Iterator.model(attachment:size:)(v101, v100);
  }
}

uint64_t Interpreter.Iterator.dispatch(_:context:flags:)(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = a3;
  v7 = (a2 + 56);
  v8 = *(a2 + 72);
  v165[0] = *(a2 + 56);
  v165[1] = v8;
  v166[0] = *(a2 + 88);
  *(v166 + 9) = *(a2 + 97);
  v9 = (a2 + 88);
  v10 = (a2 + 100);
  v11 = (a2 + 104);
  while (1)
  {
    v12 = *v11;
    if (*v10 > a1)
    {
      v13 = (*v9 + 8 * a1);
      if ((v13[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v12)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(a1, 0, v165, specialized EvolutionTable.describe(state:));
    }

    v9 = (v12 + 32);
    v10 = (v12 + 44);
    v11 = (v12 + 48);
    v7 = v12;
  }

  v14 = *v7;
  if (!v14)
  {
    goto LABEL_168;
  }

  v15 = v14 + 24 * *v13;
  v4 = *(*v15 + 24);
  v142 = *(*v15 + 16);
  v16 = *(*v15 + 33);
  v17 = *(*v15 + 64);
  if (*(*v15 + 32))
  {
    v18 = Interpreter.Iterator.iterate(size:)(a3);
    v19 = *(v5 + 29);
    v20 = v5 + 7;
    v21 = *(v5 + 9);
    v163[0] = *(v5 + 7);
    v163[1] = v21;
    v164[0] = *(v5 + 11);
    *(v164 + 9) = *(v5 + 97);
    v22 = v5 + 11;
    v23 = v5 + 25;
    v24 = v5 + 13;
    while (1)
    {
      v25 = *v24;
      if (v19 < *v23)
      {
        v26 = (*v22 + 8 * v19);
        if ((v26[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v25)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v19, 0, v163, specialized EvolutionTable.describe(state:));
      }

      v22 = (v25 + 32);
      v23 = (v25 + 44);
      v24 = (v25 + 48);
      v20 = v25;
    }

    v27 = *v20;
    if (!v27)
    {
      goto LABEL_174;
    }

    v28 = v27 + 24 * *v26;
    v29 = *(*v28 + 32);
    v64 = __CFADD__(v29, v18);
    v30 = v29 + v18;
    if (v64)
    {
      goto LABEL_159;
    }

    *(*v28 + 32) = v30;
  }

  v139 = v16;
  v140 = v17;
  v141 = v5;
  if (v6)
  {
    v137 = v4;
    v31 = v5 + 7;
    v33 = *(v5 + 29);
    v34 = *(v5 + 9);
    v161[0] = *(v5 + 7);
    v32 = *&v161[0];
    v161[1] = v34;
    *(v162 + 9) = *(v5 + 97);
    v35 = v5 + 11;
    v5 = v5[11];
    v162[0] = *v35;
    v36 = v31 + 11;
    v4 = *(v31 + 11);
    v38 = (v31 + 6);
    v37 = v31[6];
    v39 = v33;
    v138 = v31[16];
    v40 = *&v161[0];
    v41 = v5;
    v42 = v37;
    if (v33 >= v4)
    {
      goto LABEL_21;
    }

    while (1)
    {
      v43 = &v41[v39];
      if ((v43[1] & 1) == 0)
      {
        break;
      }

      do
      {
LABEL_21:
        if (!v42)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(v33, 0, v161, specialized EvolutionTable.describe(state:));
        }

        v40 = *v42;
        v41 = v42[4];
        v44 = *(v42 + 11);
        v42 = v42[6];
      }

      while (v33 >= v44);
    }

    if (!v40)
    {
      goto LABEL_175;
    }

    v45 = v40 + 24 * *v43;
    v46 = *(*v45 + 136);
    if (v33 >= v4)
    {
      goto LABEL_28;
    }

    while (1)
    {
      v47 = &v5[v39];
      if ((v5[v39] & 0x100000000) == 0)
      {
        break;
      }

      do
      {
LABEL_28:
        if (!v37)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(v33, 0, v161, specialized EvolutionTable.describe(state:));
        }

        v32 = *v37;
        v5 = v37[4];
        v4 = *(v37 + 11);
        v37 = v37[6];
      }

      while (v33 >= v4);
    }

    if (!v32)
    {
      goto LABEL_176;
    }

    v5 = v141;
    v4 = v137;
    v48 = *(*(v32 + 24 * *v47) + 136);
    if (!v48)
    {
      goto LABEL_167;
    }

    if (v46)
    {
      v49 = *(*v45 + 144) - v46;
    }

    else
    {
      v49 = 0;
    }

    v50 = v138 - v48;
    v51 = __OFSUB__(v49, v138 - v48);
    v52 = v49 - (v138 - v48);
    if (v52 < 0 != v51)
    {
      goto LABEL_160;
    }

    if ((v50 & 0x8000000000000000) != 0)
    {
LABEL_161:
      __break(1u);
LABEL_162:
      __break(1u);
LABEL_163:
      __break(1u);
LABEL_164:
      if (a2)
      {
        goto LABEL_183;
      }

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
LABEL_171:
      __break(1u);
LABEL_172:
      __break(1u);
LABEL_173:
      __break(1u);
LABEL_174:
      __break(1u);
LABEL_175:
      __break(1u);
LABEL_176:
      __break(1u);
LABEL_177:
      __break(1u);
LABEL_178:
      __break(1u);
LABEL_179:
      __break(1u);
      goto LABEL_180;
    }

    if (v52 >= 4)
    {
      v53 = 4;
    }

    else
    {
      v53 = v52;
    }

    v54 = v138 + v53;
    v141[23] = v138 + v53;
    v55 = *(v31 + 1);
    v159[0] = *v31;
    v159[1] = v55;
    v160[0] = *(v31 + 2);
    *(v160 + 9) = *(v31 + 41);
    v56 = v31 + 6;
    v57 = v31 + 11;
    v58 = v35;
    for (i = v31; ; i = v60)
    {
      v60 = *v56;
      if (v33 < *v57)
      {
        v61 = (*v58 + v39 * 8);
        if ((v61[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v60)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v33, 0, v159, specialized EvolutionTable.describe(state:));
      }

      v58 = (v60 + 32);
      v57 = (v60 + 44);
      v56 = (v60 + 48);
    }

    if (!*i)
    {
      goto LABEL_177;
    }

    v62 = *i + 24 * *v61;
    v63 = *(*v62 + 136);
    if (!v63 || (v54 >= v63 ? (v64 = v54 >= *(*v62 + 144)) : (v64 = 1), v64))
    {
      v65 = *(v31 + 1);
      v157[0] = *v31;
      v157[1] = v65;
      v158[0] = *(v31 + 2);
      *(v158 + 9) = *(v31 + 41);
      v66 = v31 + 6;
      v67 = v31 + 11;
      v68 = v35;
      for (j = v31; ; j = v70)
      {
        v70 = *v66;
        if (v33 < *v67)
        {
          v71 = (*v68 + v39 * 8);
          if ((v71[1] & 1) == 0)
          {
            break;
          }
        }

        if (!v70)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(v33, 0, v157, specialized EvolutionTable.describe(state:));
        }

        v68 = (v70 + 32);
        v67 = (v70 + 44);
        v66 = (v70 + 48);
      }

      if (!*j)
      {
        goto LABEL_181;
      }

      *(*(*j + 24 * *v71) + 41) = 1;
    }

    if ((v53 + 3) < 7)
    {
      goto LABEL_162;
    }

    v72 = *v138;
    *(v141 + 40) = v33;
    *(v141 + 41) = 1;
    *(v141 + 168) = 0;
    *(v141 + 43) = v72;
    v73 = *(v31 + 1);
    v155[0] = *v31;
    v155[1] = v73;
    v156[0] = *(v31 + 2);
    *(v156 + 9) = *(v31 + 41);
    while (1)
    {
      v74 = *v38;
      if (v33 < *v36)
      {
        v75 = (*v35 + v39 * 8);
        if ((v75[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v74)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v33, 0, v155, specialized EvolutionTable.describe(state:));
      }

      v35 = v74 + 4;
      v36 = v74 + 11;
      v38 = (v74 + 6);
      v31 = v74;
    }

    v76 = *v31;
    if (!*v31)
    {
      goto LABEL_178;
    }

    LODWORD(v17) = v140;
    if (*(*(v76 + 24 * *v75) + 68) < v72)
    {
      goto LABEL_163;
    }
  }

  v77 = v5 + 7;
  v78 = *(v5 + 9);
  v153[0] = *(v5 + 7);
  v153[1] = v78;
  v154[0] = *(v5 + 11);
  v79 = v5 + 11;
  v80 = v5 + 25;
  v81 = v5 + 13;
  v82 = *(v5 + 29);
  v83 = 8 * v82;
  *(v154 + 9) = *(v5 + 97);
  v84 = v5 + 7;
  v85 = v5 + 11;
  v86 = v5 + 25;
  v87 = v5 + 13;
  while (1)
  {
    v88 = *v87;
    if (v82 < *v86)
    {
      v89 = (*v85 + v83);
      if ((v89[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v88)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v82, 0, v153, specialized EvolutionTable.describe(state:));
    }

    v85 = (v88 + 32);
    v86 = (v88 + 44);
    v87 = (v88 + 48);
    v84 = v88;
  }

  v90 = *v84;
  if (!v90)
  {
    goto LABEL_169;
  }

  v91 = *(*(v90 + 24 * *v89) + 41) != 1 || v17 == 0;
  a2 = v142;
  if (!v91)
  {
    goto LABEL_164;
  }

  v92 = v139;
  if (v17 != 0xFFFF)
  {
    v92 = 0;
  }

  if (v92)
  {
    while (1)
    {
LABEL_182:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
LABEL_183:
      (*(v4 + 48))(v5);
    }
  }

  if (!*(v5 + 48))
  {
    if (!v142)
    {
      goto LABEL_94;
    }

    if (*(v5 + 1) << 8 != 1280)
    {
      goto LABEL_101;
    }

    goto LABEL_93;
  }

  if (*(v5 + 48) != 1)
  {
    if (!v142)
    {
      goto LABEL_94;
    }

LABEL_101:
    LODWORD(v82) = a2;
    (*(v4 + 40))(v5);
    v103 = *(v5 + 9);
    v150 = *v77;
    v151 = v103;
    v152[0] = *(v5 + 11);
    *(v152 + 9) = *(v5 + 97);
    v104 = *(v5 + 29);
    while (1)
    {
      v105 = *v81;
      if (v104 < *v80)
      {
        v106 = (*v79 + 8 * v104);
        if ((v106[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v105)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v104, 0, &v150, specialized EvolutionTable.describe(state:));
      }

      v79 = (v105 + 32);
      v80 = (v105 + 44);
      v81 = (v105 + 48);
      v77 = v105;
    }

    if (!*v77)
    {
      goto LABEL_179;
    }

    v131 = *v106;
    v126 = *(*(*v77 + 24 * v131) + 136);
    if (v126)
    {
      return 1;
    }

    __break(1u);
    goto LABEL_145;
  }

  if (v142)
  {
LABEL_93:
    type metadata accessor for T_AnyAttachmentV0(0);
    a2 = v142;
    if (v142 != v93)
    {
      goto LABEL_94;
    }

    goto LABEL_101;
  }

LABEL_94:
  v94 = *(v5 + 9);
  v150 = *v77;
  v151 = v94;
  v152[0] = *(v5 + 11);
  *(v152 + 9) = *(v5 + 97);
  v95 = v5[7];
  v96 = v5[11];
  v97 = v5;
  v4 = *(v5 + 25);
  v98 = v95;
  v5 = v5[13];
  v99 = v96;
  v100 = v5;
  v143 = v97[23];
  if (v82 >= v4)
  {
    goto LABEL_96;
  }

  while (1)
  {
    v101 = (v99 + v83);
    if ((v101[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_96:
      if (!v100)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v82, 0, &v150, specialized EvolutionTable.describe(state:));
      }

      v98 = *v100;
      v99 = v100[4];
      v102 = *(v100 + 11);
      v100 = v100[6];
    }

    while (v82 >= v102);
  }

  if (!v98)
  {
    goto LABEL_170;
  }

  v107 = v98 + 24 * *v101;
  v108 = *(*v107 + 136);
  if (v82 >= v4)
  {
    goto LABEL_110;
  }

  while ((*(v96 + v83 + 4) & 1) != 0)
  {
    do
    {
LABEL_110:
      if (!v5)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v82, 0, &v150, specialized EvolutionTable.describe(state:));
      }

      v95 = *v5;
      v96 = v5[4];
      v4 = *(v5 + 11);
      v5 = v5[6];
    }

    while (v82 >= v4);
  }

  if (!v95)
  {
    goto LABEL_171;
  }

  v109 = *(*(v95 + 24 * *(v96 + 8 * v82)) + 136);
  if (!v109)
  {
    goto LABEL_166;
  }

  if (v108)
  {
    v110 = *(*v107 + 144) - v108;
  }

  else
  {
    v110 = 0;
  }

  v111 = v143 - v109;
  v51 = __OFSUB__(v110, v143 - v109);
  v112 = v110 - (v143 - v109);
  if (v112 < 0 != v51)
  {
    __break(1u);
    goto LABEL_157;
  }

  if (v111 < 0)
  {
LABEL_157:
    __break(1u);
LABEL_158:
    __break(1u);
LABEL_159:
    __break(1u);
LABEL_160:
    __break(1u);
    goto LABEL_161;
  }

  if (v112 >= v140)
  {
    v112 = v140;
  }

  v113 = v143 + v112;
  v141[23] = v143 + v112;
  v114 = v77[1];
  v148[0] = *v77;
  v148[1] = v114;
  v149[0] = v77[2];
  *(v149 + 9) = *(v77 + 41);
  v115 = v77;
  v116 = v79;
  v117 = v80;
  v118 = v81;
  while (1)
  {
    v119 = *v118;
    if (v82 < *v117)
    {
      v120 = (*v116 + v83);
      if ((v120[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v119)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v82, 0, v148, specialized EvolutionTable.describe(state:));
    }

    v116 = (v119 + 32);
    v117 = (v119 + 44);
    v118 = (v119 + 48);
    v115 = v119;
  }

  v121 = *v115;
  if (!v121)
  {
    goto LABEL_172;
  }

  v122 = v121 + 24 * *v120;
  v123 = *(*v122 + 136);
  if (!v123 || (v113 >= v123 ? (v124 = v113 >= *(*v122 + 144)) : (v124 = 1), v124))
  {
    v125 = v77[1];
    v146[0] = *v77;
    v146[1] = v125;
    v147[0] = v77[2];
    *(v147 + 9) = *(v77 + 41);
    v126 = v77;
    v127 = v79;
    v128 = v80;
    v129 = v81;
    while (1)
    {
      v130 = *v129;
      if (v82 < *v128)
      {
        v131 = (*v127 + v83);
        if ((v131[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v130)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v82, 0, v146, specialized EvolutionTable.describe(state:));
      }

      v127 = (v130 + 32);
      v128 = (v130 + 44);
      v129 = (v130 + 48);
      v126 = v130;
    }

LABEL_145:
    v132 = *v126;
    if (!v132)
    {
LABEL_180:
      __break(1u);
LABEL_181:
      __break(1u);
      goto LABEL_182;
    }

    *(*(v132 + 24 * *v131) + 41) = 1;
  }

  v133 = v77[1];
  v144[0] = *v77;
  v144[1] = v133;
  v145[0] = v77[2];
  *(v145 + 9) = *(v77 + 41);
  while (1)
  {
    v134 = *v81;
    if (v82 < *v80)
    {
      v135 = (*v79 + v83);
      if ((v135[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v134)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v82, 0, v144, specialized EvolutionTable.describe(state:));
    }

    v79 = (v134 + 32);
    v80 = (v134 + 44);
    v81 = (v134 + 48);
    v77 = v134;
  }

  if (!*v77)
  {
    goto LABEL_173;
  }

  if (!*(*(*v77 + 24 * *v135) + 136))
  {
    goto LABEL_158;
  }

  return 1;
}

uint64_t Interpreter.Iterator.dispatchAbstractions(for:)(_DWORD *a1)
{
  if (v1[48])
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v6 = *(v1 + 22);
  v7 = *v1;
  if (v7 >= *(v6 + 116))
  {
    goto LABEL_57;
  }

  v8 = *(v6 + 104);
  if (!v8)
  {
    goto LABEL_61;
  }

  v4 = a1;
  v9 = *(*(v8 + 8 * v7) + 8);
  if (*(v9 + 44) <= a1)
  {
    goto LABEL_58;
  }

  v10 = *(v9 + 32);
  if (!v10)
  {
    goto LABEL_62;
  }

  v11 = (v10 + (a1 << 7));
  v12 = v11[1];
  v82 = *v11;
  v83 = v12;
  v13 = v11[5];
  v86 = v11[4];
  v87 = v13;
  v14 = v11[7];
  v88 = v11[6];
  v89 = v14;
  v15 = v11[3];
  v84 = v11[2];
  v85 = v15;
  LOBYTE(v80[0]) = BYTE8(v83);
  v16 = 256;
  if (!BYTE9(v83))
  {
    v16 = 0;
  }

  v17 = v16 | (HIDWORD(v83) << 32);
  v18 = HeterogeneousBuffer.type(at:)(0, *(&v82 + 1), v83, v16 | LOBYTE(v80[0]), v84);
  v19 = swift_conformsToProtocol2();
  if (!v19)
  {
    goto LABEL_63;
  }

  v20 = v19;
  v72 = v4;
  v21 = HeterogeneousBuffer.index(after:)(0, *(&v82 + 1), v83, v17 | BYTE8(v83), v84);
  LOBYTE(v80[0]) = BYTE8(v83);
  v22 = HeterogeneousBuffer.type(at:)(v21, *(&v82 + 1), v83, v17 | BYTE8(v83), v84);
  v23 = swift_conformsToProtocol2();
  if (!v23)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  project #1 <A, B>(_:_:) in Event.id.getter(v22, &v82, v18, v20, v23, v75);
  v2 = (v1 + 56);
  v24 = *(v1 + 72);
  v80[0] = *(v1 + 56);
  v80[1] = v24;
  v81[0] = *(v1 + 88);
  v3 = v1 + 72;
  v4 = v1 + 84;
  v5 = (v1 + 104);
  v71 = v1;
  *(v81 + 9) = *(v1 + 97);
  v25 = (v1 + 56);
  v26 = (v1 + 72);
  v27 = v1 + 84;
  v28 = (v1 + 104);
  while (1)
  {
    v29 = *v28;
    if (*v27 > 1u)
    {
      v30 = *v26;
      if ((*(v30 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v29)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v80, specialized EvolutionTable.describe(state:));
    }

    v26 = (v29 + 16);
    v27 = (v29 + 28);
    v28 = (v29 + 48);
    v25 = v29;
  }

  v31 = *v25;
  if (!v31)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v32 = *(*(v31 + 24 * *(v30 + 8)) + 112);
  if (!v32)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v33 = **(v32 + 88);
  if (!*(v33 + 16) || (v34 = specialized __RawDictionaryStorage.find<A>(_:)(v75), (v35 & 1) == 0))
  {
    if (one-time initialization token for eventAbstractions == -1)
    {
      goto LABEL_22;
    }

    goto LABEL_59;
  }

  v3 = v71;
  v36 = v72;
  while (1)
  {
    v61 = *(*(v33 + 56) + 8 * v34);
    v62 = *(v61 + 16);

    v63 = (v61 + 48);
    v2 = -v62;
    v64 = -1;
    while (1)
    {
      v65 = (v2 + v64);
      if (v2 + v64 == -1)
      {
LABEL_55:

        return v65 != -1;
      }

      if (++v64 >= *(v61 + 16))
      {
        break;
      }

      v66 = v63 + 24;
      v67 = *(v63 - 1);
      v74 = *v63;
      v68 = (*(v67 + 64))(v36, v3, &v74);
      v63 = v66;
      if (v68)
      {
        goto LABEL_55;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    swift_once();
LABEL_22:
    swift_beginAccess();
    v37 = static Interpreter.eventAbstractions;
    v38 = *(static Interpreter.eventAbstractions + 2);
    if (v38)
    {
      v70 = v2;

      v39 = MEMORY[0x277D84F90];
      v40 = 32;
      do
      {
        v73 = *&v37[v40];
        (*(*&v37[v40 + 8] + 48))(v78, v72, v71);
        v42 = v78[0];
        if (LOBYTE(v78[0]))
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v39 + 2) + 1, 1, v39);
          }

          v44 = *(v39 + 2);
          v43 = *(v39 + 3);
          if (v44 >= v43 >> 1)
          {
            v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1, v39);
          }

          *(v39 + 2) = v44 + 1;
          v41 = &v39[24 * v44];
          *(v41 + 2) = v73;
          v41[48] = v42;
        }

        v40 += 16;
        --v38;
      }

      while (v38);

      v2 = v70;
    }

    else
    {
      v39 = MEMORY[0x277D84F90];
    }

    v45 = *(v2 + 16);
    v78[0] = *v2;
    v78[1] = v45;
    v79[0] = *(v2 + 32);
    *(v79 + 9) = *(v2 + 41);
    v46 = v2;
    v47 = v3;
    v48 = v4;
    v49 = v5;
    while (1)
    {
      v50 = *v49;
      if (*v48 > 1u)
      {
        v51 = *v47;
        if ((*(v51 + 12) & 1) == 0)
        {
          break;
        }
      }

      if (!v50)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v78, specialized EvolutionTable.describe(state:));
      }

      v47 = (v50 + 16);
      v48 = (v50 + 28);
      v49 = (v50 + 48);
      v46 = v50;
    }

    v52 = *v46;
    if (!v52)
    {
      break;
    }

    v53 = *(*(v52 + 24 * *(v51 + 8)) + 112);
    if (!v53)
    {
      goto LABEL_66;
    }

    v54 = *(v53 + 88);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v76[0] = *v54;
    *v54 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v39, v75, isUniquelyReferenced_nonNull_native);
    *v54 = *&v76[0];
    v56 = *(v2 + 16);
    v76[0] = *v2;
    v76[1] = v56;
    v77[0] = *(v2 + 32);
    *(v77 + 9) = *(v2 + 41);
    while (1)
    {
      v57 = *v5;
      if (*v4 > 1u && (*(*v3 + 12) & 1) == 0)
      {
        break;
      }

      if (!v57)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v76, specialized EvolutionTable.describe(state:));
      }

      v3 = (v57 + 16);
      v4 = (v57 + 28);
      v5 = (v57 + 48);
      v2 = v57;
    }

    if (!*v2)
    {
      goto LABEL_70;
    }

    v58 = *(*v3 + 8);
    v3 = v71;
    v36 = v72;
    v59 = *(*(*v2 + 24 * v58) + 112);
    if (!v59)
    {
      goto LABEL_67;
    }

    v33 = **(v59 + 88);
    if (*(v33 + 16))
    {
      v34 = specialized __RawDictionaryStorage.find<A>(_:)(v75);
      if (v60)
      {
        continue;
      }
    }

    goto LABEL_71;
  }

LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t Interpreter.Iterator.relate(prior:)(uint64_t result)
{
  if (v1[48])
  {
    goto LABEL_55;
  }

  v2 = v1;
  v3 = *(v1 + 22);
  v4 = *v1;
  if (v4 >= *(v3 + 116))
  {
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v5 = *(v3 + 104);
  if (!v5)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v6 = *(*(v5 + 8 * v4) + 8);
  if (*(v6 + 44) <= result)
  {
    goto LABEL_45;
  }

  v7 = *(v6 + 32);
  if (!v7)
  {
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v68 = result;
  v67 = result;
  v8 = (v7 + (result << 7));
  v9 = v8[1];
  v77 = *v8;
  v78 = v9;
  v10 = v8[5];
  v81 = v8[4];
  v82 = v10;
  v11 = v8[7];
  v83 = v8[6];
  v84 = v11;
  v12 = v8[2];
  v13 = v8[3];
  v79 = v12;
  v80 = v13;
  v14 = v12;
  LOBYTE(v73) = BYTE8(v78);
  v15 = 256;
  if (!BYTE9(v78))
  {
    v15 = 0;
  }

  v16 = v15 | (HIDWORD(v78) << 32);
  v17 = HeterogeneousBuffer.type(at:)(0, *(&v77 + 1), v78, v15 | BYTE8(v78), v12);
  result = swift_conformsToProtocol2();
  if (!result)
  {
    goto LABEL_58;
  }

  v18 = result;
  v19 = HeterogeneousBuffer.index(after:)(0, *(&v77 + 1), v78, v16 | BYTE8(v78), v14);
  LOBYTE(v73) = BYTE8(v78);
  v20 = HeterogeneousBuffer.type(at:)(v19, *(&v77 + 1), v78, v16 | BYTE8(v78), v14);
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  project #1 <A, B>(_:_:) in Event.id.getter(v20, &v77, v17, v18, result, v70);
  v21 = Interpreter.Iterator.control.read(v71);
  v23 = v22[3];
  v25 = *v22;
  v24 = v22[1];
  v75 = v22[2];
  v76 = v23;
  v73 = v25;
  v74 = v24;
  v26 = Interpreter.Control.events.read(v69);
  v28 = *(v27 + 16);
  if (!*(v28 + 16) || (v29 = specialized __RawDictionaryStorage.find<A>(_:)(v70), (v30 & 1) == 0))
  {
    (v26)(v69, 0);
    result = (v21)(v71, 0);
    v32 = v68;
LABEL_35:
    v56 = (v2 + 56);
    v57 = *(v2 + 72);
    v71[0] = *(v2 + 56);
    v71[1] = v57;
    v72[0] = *(v2 + 88);
    *(v72 + 9) = *(v2 + 97);
    v58 = (v2 + 72);
    v59 = v2 + 84;
    v60 = (v2 + 104);
    while (1)
    {
      v61 = *v60;
      if (*v59)
      {
        v62 = *v58;
        if ((v62[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v61)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v71, specialized EvolutionTable.describe(state:));
      }

      v58 = (v61 + 16);
      v59 = (v61 + 28);
      v60 = (v61 + 48);
      v56 = v61;
    }

    v63 = *v56;
    if (!v63)
    {
      goto LABEL_61;
    }

    result = v63 + 24 * *v62;
    v64 = *(*result + 112);
    if (v64)
    {
      v65 = *(v64 + 32);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v69[0] = *(v65 + 16);
      *(v65 + 16) = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v32, v70, isUniquelyReferenced_nonNull_native);
      *(v65 + 16) = v69[0];
    }

LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v31 = *(*(v28 + 56) + 4 * v29);
  (v26)(v69, 0);
  result = (v21)(v71, 0);
  v32 = v68;
  if (v2[48])
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v33 = *v2;
  if (v33 >= *(v3 + 116))
  {
    goto LABEL_46;
  }

  v34 = *(v3 + 104);
  if (!v34)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v35 = *(*(v34 + 8 * v33) + 8);
  v36 = *(v35 + 44);
  if (v31 >= v36)
  {
    goto LABEL_47;
  }

  v37 = *(v35 + 32);
  if (!v37)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  if (v36 <= v68)
  {
    goto LABEL_48;
  }

  v38 = (v37 + (v31 << 7));
  v39 = (v37 + (v67 << 7));
  v40 = *v39;
  if (v38[31] == v38[30])
  {
    result = specialized UnsafeArray.growToCapacity(_:)();
  }

  v41 = *(v38 + 14);
  if (!v41)
  {
    goto LABEL_65;
  }

  v42 = v38[31];
  v43 = v41 + 8 * v42;
  *v43 = -24320;
  *(v43 + 4) = v40;
  if (v42 == -1)
  {
    goto LABEL_49;
  }

  v38[31] = v42 + 1;
  v44 = *v38;
  if (v39[31] == v39[30])
  {
    result = specialized UnsafeArray.growToCapacity(_:)();
  }

  v45 = *(v39 + 14);
  if (!v45)
  {
    goto LABEL_66;
  }

  v46 = v39[31];
  v47 = v45 + 8 * v46;
  *v47 = 24832;
  *(v47 + 4) = v44;
  if (v46 == -1)
  {
    goto LABEL_50;
  }

  v39[31] = v46 + 1;
  if (v2[48])
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v48 = *v2;
  if (v48 >= *(v3 + 116))
  {
    goto LABEL_51;
  }

  v49 = *(v3 + 104);
  if (!v49)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v50 = *(*(v49 + 8 * v48) + 8);
  v51 = *(v50 + 44);
  if (v31 >= v51)
  {
    goto LABEL_52;
  }

  v52 = *(v50 + 32);
  if (v52)
  {
    v53 = *(v52 + (v31 << 7) + 104);
    v54 = __CFADD__(v53, 1);
    v55 = v53 + 1;
    if (!v54)
    {
      if (v51 > v68)
      {
        *(v52 + (v67 << 7) + 104) = v55;
        goto LABEL_35;
      }

      goto LABEL_54;
    }

LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

LABEL_69:
  __break(1u);
  return result;
}

uint64_t specialized Array.remove(at:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 48 * a1;
    v10 = *(v9 + 32);
    v9 += 32;
    v11 = *(v9 + 40);
    v12 = *(v9 + 24);
    v13 = *(v9 + 8);
    result = memmove(v9, (v9 + 48), 48 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
    *a2 = v10;
    *(a2 + 8) = v13;
    *(a2 + 24) = v12;
    *(a2 + 40) = v11;
  }

  return result;
}

uint64_t specialized Collection.prefix(_:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3 - a2;
    if (!a2)
    {
      v3 = 0;
    }

    if ((v3 & 0x8000000000000000) == 0)
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized Collection.prefix(_:)(uint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) == 0)
  {
    return a2;
  }

  __break(1u);
  return result;
}

unint64_t specialized Collection<>.binarySearch(for:)(unint64_t result, unint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, __n128 a6)
{
  v6 = a3 - a2;
  if (__OFSUB__(a3, a2))
  {
    __break(1u);
    goto LABEL_21;
  }

  v7 = result;
  result = a2 + v6 / 2;
  if (__OFADD__(a2, v6 / 2))
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v8 = HIDWORD(a5);
  if (HIDWORD(a5) < a2 || v8 < a3 || result > v8)
  {
    goto LABEL_22;
  }

  if (result >= a3)
  {
    return 0;
  }

  if (result < a2)
  {
    goto LABEL_23;
  }

  if (!a4)
  {
LABEL_24:
    __break(1u);
    return result;
  }

  v9 = *(a4 + 32 * result);
  if (v9 != v7 && v6 != 1)
  {
    if (v9 <= v7)
    {
      a2 = result + 1;
    }

    else
    {
      a3 = a2 + v6 / 2;
    }

    return specialized Collection<>.binarySearch(for:)(v7, a2, a3, a4, a5, a6);
  }

  return result;
}

uint64_t specialized RandomAccessCollection<>.distance(from:to:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - a3;
  if (!a3)
  {
    v4 = 0;
  }

  if (result < 0 || v4 < result)
  {
    __break(1u);
  }

  else if ((a2 & 0x8000000000000000) == 0 && v4 >= a2)
  {
    return a2 - result;
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type Slice<UnsafeRawBufferPointer> and conformance Slice<A>()
{
  result = lazy protocol witness table cache variable for type Slice<UnsafeRawBufferPointer> and conformance Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<UnsafeRawBufferPointer> and conformance Slice<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVySWGMd, &_ss5SliceVySWGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<UnsafeRawBufferPointer> and conformance Slice<A>);
  }

  return result;
}

__n128 sub_26C266E44@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 176);
  v3 = *(v2 + 144);
  *(a2 + 128) = *(v2 + 128);
  *(a2 + 144) = v3;
  v4 = *(v2 + 176);
  *(a2 + 160) = *(v2 + 160);
  *(a2 + 176) = v4;
  v5 = *(v2 + 80);
  *(a2 + 64) = *(v2 + 64);
  *(a2 + 80) = v5;
  v6 = *(v2 + 112);
  *(a2 + 96) = *(v2 + 96);
  *(a2 + 112) = v6;
  v7 = *(v2 + 16);
  *a2 = *v2;
  *(a2 + 16) = v7;
  result = *(v2 + 32);
  v9 = *(v2 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v9;
  return result;
}

__n128 sub_26C266E7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 176);
  v3 = *(a1 + 144);
  *(v2 + 128) = *(a1 + 128);
  *(v2 + 144) = v3;
  v4 = *(a1 + 176);
  *(v2 + 160) = *(a1 + 160);
  *(v2 + 176) = v4;
  v5 = *(a1 + 80);
  *(v2 + 64) = *(a1 + 64);
  *(v2 + 80) = v5;
  v6 = *(a1 + 112);
  *(v2 + 96) = *(a1 + 96);
  *(v2 + 112) = v6;
  v7 = *(a1 + 16);
  *v2 = *a1;
  *(v2 + 16) = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  *(v2 + 32) = result;
  *(v2 + 48) = v9;
  return result;
}

__n128 __swift_memcpy193_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Interpreter.Iterator(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 193))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 112);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for Interpreter.Iterator(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 184) = 0;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 192) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 193) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 193) = 0;
    }

    if (a2)
    {
      *(result + 112) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Interpreter.Iterator.Kind(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 49))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 48);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for Interpreter.Iterator.Kind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTag for Interpreter.Iterator.Kind(uint64_t a1)
{
  if (*(a1 + 48) <= 1u)
  {
    return *(a1 + 48);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t destructiveInjectEnumTag for Interpreter.Iterator.Kind(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 48) = a2;
  return result;
}

__n128 __swift_memcpy152_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Interpreter.Iterator.Mode(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 152))
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

uint64_t storeEnumTagSinglePayload for Interpreter.Iterator.Mode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 152) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 152) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Interpreter.Iterator.AttachmentBuffer(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for Interpreter.Iterator.AttachmentBuffer(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

uint64_t type metadata instantiation function for Interpreter.Iterator.AddressMap(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t specialized Interpreter.Iterator.AttachmentBuffer.init(code:byteCount:buffer:model:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v7 = result;
  if (!a3)
  {
    if (a2 >= 1)
    {
      result = swift_slowAlloc();
      a3 = result;
      v9 = 0;
      a4 = &a2[result];
LABEL_10:
      v13 = 1;
      goto LABEL_11;
    }

    v9 = 0;
    if (!a2)
    {
      v13 = 0;
      a3 = 0;
      a4 = 0;
      goto LABEL_11;
    }

LABEL_9:
    a4 = a2 - 1;
    a3 = -1;
    goto LABEL_10;
  }

  v9 = &a4[-a3];
  if (&a4[-a3] >= a2)
  {
    if (v9 == a2)
    {
      v13 = 0;
      v9 = 0;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v11 = a3;
  v12 = swift_slowAlloc();
  result = memmove(v12, v11, v9);
  a4 = &a2[v12];
  v13 = 1;
  a3 = v12;
LABEL_11:
  *a6 = a3;
  *(a6 + 8) = a4;
  *(a6 + 16) = v9;
  *(a6 + 24) = a5 & 1;
  *(a6 + 25) = v13;
  *(a6 + 28) = v7;
  *(a6 + 32) = BYTE4(v7) & 1;
  return result;
}

uint64_t KTraceFile_Chunk.pointer.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _Chunk_Fields(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(a2 + 8))(a1, a2);
  v7 = *v6;

  outlined destroy of _Chunk_Fields(v6, type metadata accessor for _Chunk_Fields);
  v8 = *(v7 + 32);

  return v8;
}

uint64_t TraceChunk.dataBufferPointer.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  if (!v2)
  {
    goto LABEL_12;
  }

  v3 = *(v2 + 8);
  if (v3 == 1)
  {
    if (*(v1 + 40) - v2 >= 14)
    {
      v4 = 14;
      return v2 + v4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      if (*(v1 + 40) - v2 >= 56)
      {
        v4 = 56;
        return v2 + v4;
      }

      goto LABEL_11;
    }

    __break(1u);
  }

  __break(1u);
LABEL_11:
  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

double TraceChunk.header.getter@<D0>(uint64_t a1@<X8>)
{
  specialized T_Header.init(loadedFrom:)(*(*v1 + 32), v5);
  v3 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  result = *&v6;
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  return result;
}

uint64_t specialized Data.withUnsafeBytes<A>(_:)(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      if (*(a3 + 16))
      {
        goto LABEL_10;
      }

      __break(1u);
      goto LABEL_14;
    }

    v5 = result;
    v6 = result >> 32;
    if (result >> 32 < result)
    {
      __break(1u);
    }

LABEL_8:
    appended = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);

    return appended;
  }

  if (v4 == 2)
  {
    v5 = *(result + 16);
    v6 = *(result + 24);
    goto LABEL_8;
  }

  if (*(a3 + 16))
  {
LABEL_10:
    appended = ktrace_file_append_chunk();

    return appended;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t KtraceFile.ChunkIterator.warnings.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t KtraceFile.ChunkIterator.next()@<X0>(uint64_t a1@<X8>)
{
  v3 = swift_allocObject();
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  result = swift_allocObject();
  *(result + 16) = partial apply for closure #1 in KtraceFile.ChunkIterator.next();
  *(result + 24) = v4;
  if (*(*v1 + 16))
  {
    v8[4] = _ss13OpaquePointerVSbIegyd_ABSbIegyd_TRTA_0;
    v8[5] = result;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 1107296256;
    v8[2] = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@unowned Bool);
    v8[3] = &block_descriptor_3;
    v6 = _Block_copy(v8);

    ktrace_file_iterate();
    _Block_release(v6);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      swift_beginAccess();
      outlined init with copy of ResourceSet<Interpreter, ()>(v3 + 16, a1, &_s21SwiftUITracingSupport16KTraceFile_Chunk_pSgMd, &_s21SwiftUITracingSupport16KTraceFile_Chunk_pSgMR);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in KtraceFile.ChunkIterator.next()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = v5 == a1;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    return 1;
  }

  v17 = v3;
  v18 = v4;
  KtraceFile.ChunkIterator.map(chunk:typed:)(a1, 1, &v12);
  if (v13)
  {
    outlined init with take of KTraceFile_Chunk(&v12, v14);
    outlined init with copy of Aggregate_AccessorProtocol(v14, &v12);
    swift_beginAccess();
    outlined assign with take of URL?(&v12, a3 + 16, &_s21SwiftUITracingSupport16KTraceFile_Chunk_pSgMd, &_s21SwiftUITracingSupport16KTraceFile_Chunk_pSgMR);
    v9 = v15;
    v10 = v16;
    __swift_project_boxed_opaque_existential_1(v14, v15);
    *(a2 + 8) = (*(v10 + 80))(v9, v10);
    __swift_destroy_boxed_opaque_existential_1(v14);
    return 0;
  }

  else
  {
    outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](&v12, &_s21SwiftUITracingSupport16KTraceFile_Chunk_pSgMd, &_s21SwiftUITracingSupport16KTraceFile_Chunk_pSgMR);
    return 1;
  }
}

uint64_t KtraceFile.ChunkIterator.map(chunk:typed:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for _Chunk_Fields(0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = (&v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v12 = (&v33 - v11);
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  v13 = ktrace_chunk_tag();
  if ((a2 & 1) == 0)
  {
    goto LABEL_6;
  }

  if (v13 == 53918430)
  {
    v29 = *v3;
    *(&v36 + 1) = type metadata accessor for TraceChunk(0);
    v37 = &protocol witness table for TraceChunk;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v35);

    TraceChunk.init(chunk:file:)(a1, v29, boxed_opaque_existential_1Tm);
    goto LABEL_9;
  }

  if (v13 != 53918432)
  {
LABEL_6:
    v21 = *v3;
    *(&v36 + 1) = type metadata accessor for Miscellaneous(0);
    v37 = &protocol witness table for Miscellaneous;
    result = __swift_allocate_boxed_opaque_existential_1Tm(&v35);
    v22 = *(v21 + 16);
    if (v22)
    {
      v23 = result;
      type metadata accessor for _Chunk_Storage();
      v24 = swift_allocObject();

      _Chunk_Storage.init(chunk:storage:)(a1, v22);
      swift_beginAccess();
      swift_unknownObjectUnownedLoadStrong();
      v34 = v23;
      v25 = a1;
      v26 = a2;
      v27 = OBJC_IVAR____TtC21SwiftUITracingSupport10KtraceFile_url;
      swift_beginAccess();
      v28 = v21 + v27;
      a2 = v26;
      a1 = v25;
      outlined init with copy of ResourceSet<Interpreter, ()>(v28, v10 + *(v7 + 24), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      *v10 = v24;
      swift_unknownObjectUnownedInit();
      swift_unknownObjectRelease();
      v20 = v10;
      goto LABEL_8;
    }

    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  v14 = *v3;
  *(&v36 + 1) = type metadata accessor for CompressedChunk(0);
  v37 = &protocol witness table for CompressedChunk;
  result = __swift_allocate_boxed_opaque_existential_1Tm(&v35);
  v16 = *(v14 + 16);
  if (!v16)
  {
    goto LABEL_17;
  }

  v17 = result;
  type metadata accessor for _Chunk_Storage();
  v18 = swift_allocObject();

  _Chunk_Storage.init(chunk:storage:)(a1, v16);
  swift_beginAccess();
  swift_unknownObjectUnownedLoadStrong();
  v34 = v17;
  v19 = OBJC_IVAR____TtC21SwiftUITracingSupport10KtraceFile_url;
  swift_beginAccess();
  outlined init with copy of ResourceSet<Interpreter, ()>(v14 + v19, v12 + *(v7 + 24), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  *v12 = v18;
  swift_unknownObjectUnownedInit();
  swift_unknownObjectRelease();
  v20 = v12;
LABEL_8:
  outlined init with take of TraceChunk(v20, v34, type metadata accessor for _Chunk_Fields);
LABEL_9:
  result = outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](&v38, &_s21SwiftUITracingSupport16KTraceFile_Chunk_pSgMd, &_s21SwiftUITracingSupport16KTraceFile_Chunk_pSgMR);
  v38 = v35;
  v39 = v36;
  v40 = v37;
  if ((a2 & 1) != 0 && (outlined init with copy of ResourceSet<Interpreter, ()>(&v38, &v35, &_s21SwiftUITracingSupport16KTraceFile_Chunk_pSgMd, &_s21SwiftUITracingSupport16KTraceFile_Chunk_pSgMR), v31 = *(&v36 + 1), result = outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](&v35, &_s21SwiftUITracingSupport16KTraceFile_Chunk_pSgMd, &_s21SwiftUITracingSupport16KTraceFile_Chunk_pSgMR), !v31))
  {
    KtraceFile.ChunkIterator.map(chunk:typed:)(a1, 0, a3);
    return outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](&v38, &_s21SwiftUITracingSupport16KTraceFile_Chunk_pSgMd, &_s21SwiftUITracingSupport16KTraceFile_Chunk_pSgMR);
  }

  else
  {
    v32 = v39;
    *a3 = v38;
    *(a3 + 16) = v32;
    *(a3 + 32) = v40;
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@unowned Bool)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  LOBYTE(a2) = v3(a2);

  return a2 & 1;
}

void *TraceChunk.init(chunk:file:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for _Chunk_Fields(0);
  result = MEMORY[0x28223BE20](v7);
  v10 = (v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0) + 40);
  v11 = *(a2 + 16);
  if (v11)
  {
    type metadata accessor for _Chunk_Storage();
    v12 = swift_allocObject();

    _Chunk_Storage.init(chunk:storage:)(a1, v11);
    if (v3)
    {
    }

    swift_beginAccess();
    swift_unknownObjectUnownedLoadStrong();
    v13 = OBJC_IVAR____TtC21SwiftUITracingSupport10KtraceFile_url;
    swift_beginAccess();
    outlined init with copy of ResourceSet<Interpreter, ()>(a2 + v13, v10 + *(v7 + 24), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    *v10 = v12;
    swift_unknownObjectUnownedInit();
    swift_unknownObjectRelease();
    outlined init with take of TraceChunk(v10, a3, type metadata accessor for _Chunk_Fields);
    v14 = *(*a3 + 32);
    result = specialized T_Header.init(loadedFrom:)(v14, v18);
    if (v18[0] != 123123123)
    {
      v15 = 1;
LABEL_9:
      lazy protocol witness table accessor for type Chunk_Error and conformance Chunk_Error();
      swift_allocError();
      *v16 = v15;
      swift_willThrow();

      return outlined destroy of _Chunk_Fields(a3, type metadata accessor for _Chunk_Fields);
    }

    if (v14)
    {
      if (*(v14 + 8) - 1 < 2)
      {
      }

      v15 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t KtraceFile.Storage.__deallocating_deinit()
{
  if (*(v0 + 24) == 1)
  {
    ktrace_file_close();
  }

  return swift_deallocClassInstance();
}

uint64_t KtraceFile.file.getter()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return *(v1 + 16);
  }

  __break(1u);
  return result;
}

uint64_t key path getter for KtraceFile.symbols : KtraceFile@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 32);
  v5 = *(v3 + 72);
  *a2 = *(v3 + 24);
  *(a2 + 8) = v4;
  v6 = *(v3 + 56);
  *(a2 + 16) = *(v3 + 40);
  *(a2 + 32) = v6;
  *(a2 + 48) = v5;
}

uint64_t key path setter for KtraceFile.symbols : KtraceFile(int *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *(a1 + 1);
  v5 = *(a1 + 6);
  v6 = *a2;
  swift_beginAccess();
  *(v6 + 24) = v3;
  *(v6 + 32) = v4;
  v7 = *(a1 + 2);
  *(v6 + 40) = *(a1 + 1);
  *(v6 + 56) = v7;
  *(v6 + 72) = v5;
}

uint64_t KtraceFile.symbols.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  v4 = *(v1 + 72);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v3;
  v5 = *(v1 + 56);
  *(a1 + 16) = *(v1 + 40);
  *(a1 + 32) = v5;
  *(a1 + 48) = v4;
}

uint64_t KtraceFile.symbols.setter(int *a1)
{
  v3 = *a1;
  swift_beginAccess();
  *(v1 + 24) = v3;
  v4 = *(a1 + 6);
  *(v1 + 32) = *(a1 + 2);
  *(v1 + 48) = v4;
  *(v1 + 64) = *(a1 + 10);
}

uint64_t KtraceFile.owner.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectUnownedAssign();
  return swift_unknownObjectRelease();
}

void (*KtraceFile.owner.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectUnownedLoadStrong();
  return KtraceFile.owner.modify;
}

void KtraceFile.owner.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectUnownedAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t KtraceFile.chunks.getter()
{
  v0 = type metadata accessor for TraceChunk(0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = KtraceFile.traceChunks.getter();
  v5 = v4[2];
  if (v5)
  {
    v11 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v6 = v4 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v7 = *(v1 + 72);
    do
    {
      outlined init with copy of TraceChunk(v6, v3, type metadata accessor for TraceChunk);
      type metadata accessor for Chunk(0);
      v8 = swift_allocObject();
      outlined init with take of TraceChunk(v3, v8 + OBJC_IVAR____TtC21SwiftUITracingSupport5Chunk_chunk, type metadata accessor for TraceChunk);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v6 += v7;
      --v5;
    }

    while (v5);

    return v11;
  }

  else
  {

    return MEMORY[0x277D84F90];
  }
}

void *KtraceFile.traceChunks.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport10TraceChunkVSgMd, &_s21SwiftUITracingSupport10TraceChunkVSgMR);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v25 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v25 - v9;
  v11 = type metadata accessor for TraceChunk(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v28 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = specialized _copySequenceToContiguousArray<A>(_:)(v1);
  v15 = *(v14 + 16);
  if (v15)
  {
    v25 = v14;
    v26 = v12;
    v16 = v14 + 32;
    v17 = (v12 + 56);
    v27 = (v12 + 48);
    v18 = MEMORY[0x277D84F90];
    do
    {
      outlined init with copy of Aggregate_AccessorProtocol(v16, v30);
      outlined init with take of KTraceFile_Chunk(v30, v29);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport16KTraceFile_Chunk_pMd, &_s21SwiftUITracingSupport16KTraceFile_Chunk_pMR);
      v19 = swift_dynamicCast();
      v20 = *v17;
      if (v19)
      {
        v20(v5, 0, 1, v11);
        outlined init with take of TraceChunk(v5, v8, type metadata accessor for TraceChunk);
        v21 = 0;
      }

      else
      {
        v21 = 1;
        v20(v5, 1, 1, v11);
        outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v5, &_s21SwiftUITracingSupport10TraceChunkVSgMd, &_s21SwiftUITracingSupport10TraceChunkVSgMR);
      }

      v20(v8, v21, 1, v11);
      outlined init with take of TraceChunk?(v8, v10);
      if ((*v27)(v10, 1, v11) == 1)
      {
        outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v10, &_s21SwiftUITracingSupport10TraceChunkVSgMd, &_s21SwiftUITracingSupport10TraceChunkVSgMR);
      }

      else
      {
        outlined init with take of TraceChunk(v10, v28, type metadata accessor for TraceChunk);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18[2] + 1, 1, v18);
        }

        v23 = v18[2];
        v22 = v18[3];
        if (v23 >= v22 >> 1)
        {
          v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v18);
        }

        v18[2] = v23 + 1;
        outlined init with take of TraceChunk(v28, v18 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v23, type metadata accessor for TraceChunk);
      }

      v16 += 40;
      --v15;
    }

    while (v15);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v18;
}

uint64_t KtraceFile.makeIterator()@<X0>(void *a1@<X8>)
{
  *a1 = v1;
  a1[1] = 0;
  a1[2] = MEMORY[0x277D84F90];
}

uint64_t KtraceFile.init(ktrace_fd:owner:path:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = 0;
  result = getpid();
  if ((result & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 24) = result;
    *(v3 + 32) = closure #1 in static Interpreter.Symbols.inProcessProvider.getter;
    *(v3 + 40) = 0;
    *(v3 + 48) = closure #2 in static Interpreter.Symbols.inProcessProvider.getter;
    *(v3 + 56) = 0;
    *(v3 + 64) = closure #3 in static Interpreter.Symbols.inProcessProvider.getter;
    *(v3 + 72) = 0;
    *(v3 + 88) = 0;
    v6 = OBJC_IVAR____TtC21SwiftUITracingSupport10KtraceFile_url;
    v7 = type metadata accessor for URL();
    (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
    result = ktrace_file_open_fd();
    if (result)
    {
      v8 = result;
      type metadata accessor for KtraceFile.Storage();
      v9 = swift_allocObject();
      *(v9 + 24) = 1;
      *(v9 + 16) = v8;
      *(v3 + 16) = v9;

      swift_beginAccess();
      swift_unknownObjectUnownedInit();
      swift_unknownObjectRelease();
      swift_beginAccess();
      outlined assign with take of URL?(a3, v3 + v6, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      swift_endAccess();
      return v3;
    }
  }

  __break(1u);
  return result;
}

uint64_t KtraceFile.__allocating_init(file:owner:path:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  KtraceFile.init(file:owner:path:)(a1, a2, a3);
  return v6;
}

uint64_t KtraceFile.init(file:owner:path:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = 0;
  result = getpid();
  if ((result & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 24) = result;
    *(v3 + 32) = closure #1 in static Interpreter.Symbols.inProcessProvider.getter;
    *(v3 + 40) = 0;
    *(v3 + 48) = closure #2 in static Interpreter.Symbols.inProcessProvider.getter;
    *(v3 + 56) = 0;
    *(v3 + 64) = closure #3 in static Interpreter.Symbols.inProcessProvider.getter;
    *(v3 + 72) = 0;
    *(v3 + 88) = 0;
    v7 = OBJC_IVAR____TtC21SwiftUITracingSupport10KtraceFile_url;
    v8 = type metadata accessor for URL();
    (*(*(v8 - 8) + 56))(v3 + v7, 1, 1, v8);
    type metadata accessor for KtraceFile.Storage();
    v9 = swift_allocObject();
    *(v9 + 24) = 1;
    *(v9 + 16) = a1;
    *(v3 + 16) = v9;

    *(v9 + 24) = 0;

    swift_beginAccess();
    swift_unknownObjectUnownedInit();
    swift_unknownObjectRelease();
    swift_beginAccess();
    outlined assign with take of URL?(a3, v3 + v7, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    swift_endAccess();
    return v3;
  }

  return result;
}

uint64_t KtraceFile.__allocating_init(ktrace_fd:owner:path:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  v8 = swift_allocObject();
  a4(a1, a2, a3);
  return v8;
}

uint64_t KtraceFile.init(create:owner:path:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = 0;
  result = getpid();
  if ((result & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 24) = result;
    *(v3 + 32) = closure #1 in static Interpreter.Symbols.inProcessProvider.getter;
    *(v3 + 40) = 0;
    *(v3 + 48) = closure #2 in static Interpreter.Symbols.inProcessProvider.getter;
    *(v3 + 56) = 0;
    *(v3 + 64) = closure #3 in static Interpreter.Symbols.inProcessProvider.getter;
    *(v3 + 72) = 0;
    *(v3 + 88) = 0;
    v6 = OBJC_IVAR____TtC21SwiftUITracingSupport10KtraceFile_url;
    v7 = type metadata accessor for URL();
    (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
    result = ktrace_file_create_fd();
    if (result)
    {
      v8 = result;
      type metadata accessor for KtraceFile.Storage();
      v9 = swift_allocObject();
      *(v9 + 24) = 1;
      *(v9 + 16) = v8;
      *(v3 + 16) = v9;

      swift_beginAccess();
      swift_unknownObjectUnownedInit();
      swift_unknownObjectRelease();
      swift_beginAccess();
      outlined assign with take of URL?(a3, v3 + v6, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      swift_endAccess();
      return v3;
    }
  }

  __break(1u);
  return result;
}

uint64_t KtraceFile.append(_:expected:)(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *(specialized _copySequenceToContiguousArray<A>(_:)(v4) + 16);

  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  (*(v10 + 32))(v15, v4, v9, v10);
  if ((a3 & 1) != 0 || (v11 = v16, v12 = v17, __swift_project_boxed_opaque_existential_1(v15, v16), (*(v12 + 40))(v11, v12), ktrace_chunk_size() == a2))
  {
    v13 = *(specialized _copySequenceToContiguousArray<A>(_:)(v4) + 16);

    if (v8 < v13)
    {
      return __swift_destroy_boxed_opaque_existential_1(v15);
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t KtraceFile.init(url:symbols:owner:)(uint64_t a1, int *a2, uint64_t a3)
{
  v4 = v3;
  v6 = *a2;
  v14 = *(a2 + 6);
  v15 = *(a2 + 2);
  v13 = *(a2 + 10);
  *(v4 + 16) = 0;
  result = getpid();
  if ((result & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 24) = result;
    *(v4 + 32) = closure #1 in static Interpreter.Symbols.inProcessProvider.getter;
    *(v4 + 40) = 0;
    *(v4 + 48) = closure #2 in static Interpreter.Symbols.inProcessProvider.getter;
    *(v4 + 56) = 0;
    *(v4 + 64) = closure #3 in static Interpreter.Symbols.inProcessProvider.getter;
    *(v4 + 72) = 0;
    *(v4 + 88) = 0;
    v8 = OBJC_IVAR____TtC21SwiftUITracingSupport10KtraceFile_url;
    v9 = type metadata accessor for URL();
    v10 = *(v9 - 8);
    (*(v10 + 56))(v4 + v8, 1, 1, v9);
    swift_beginAccess();
    *(v4 + 24) = v6;
    *(v4 + 32) = v15;
    *(v4 + 48) = v14;
    *(v4 + 64) = v13;

    URL.path.getter();
    String.utf8CString.getter();

    v11 = ktrace_file_open();
    (*(v10 + 8))(a1, v9);

    if (v11)
    {
      type metadata accessor for KtraceFile.Storage();
      v12 = swift_allocObject();
      *(v12 + 24) = 1;
      *(v12 + 16) = v11;
      *(v4 + 16) = v12;

      swift_beginAccess();
      swift_unknownObjectUnownedInit();
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();

      outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v4 + v8, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      type metadata accessor for KtraceFile(0);
      swift_deallocPartialClassInstance();
      return 0;
    }

    return v4;
  }

  return result;
}

uint64_t KtraceFile.scenario<A>(_:)@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = v3;
  v32 = a3;
  v33 = a2;
  v31 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport9ARTraceV3V10ProcessMapV0I0VGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport9ARTraceV3V10ProcessMapV0I0VGMR);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_26C328DC0;
  v9 = [objc_opt_self() processInfo];
  v10 = [v9 processIdentifier];

  *(v8 + 32) = v10;
  *(v8 + 40) = xmmword_26C335300;
  *(v8 + 56) = 0;
  *(v8 + 64) = 0;
  v11 = MEMORY[0x277D84F90];
  *(v8 + 72) = MEMORY[0x277D84F90];
  *(v8 + 80) = v11;
  v12 = mach_absolute_time();
  a1();
  v13 = mach_absolute_time();
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
  }

  v15 = *(v11 + 2);
  v14 = *(v11 + 3);
  if (v15 >= v14 >> 1)
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v11);
  }

  *(v11 + 2) = v15 + 1;
  v16 = &v11[16 * v15];
  type metadata accessor for PropertyListEncoder();
  *(v16 + 4) = 0;
  *(v16 + 5) = 0;
  swift_allocObject();
  PropertyListEncoder.init()();
  dispatch thunk of PropertyListEncoder.outputFormat.setter();
  v29 = v13;
  v30 = v12;
  *&v69 = v12;
  *(&v69 + 1) = v13;
  v27 = xmmword_26C335310;
  *&v70[8] = xmmword_26C335310;
  *v70 = 0x3E665E9F80F29212;
  *&v70[24] = 0xE000000000000000;
  *&v71 = 0;
  *(&v71 + 1) = 0xE000000000000000;
  v72 = 0uLL;
  LOBYTE(v73) = 1;
  *(&v73 + 1) = 0x3FF0000000000000;
  *&v74 = v11;
  WORD4(v74) = 513;
  v75 = xmmword_26C335320;
  v76 = xmmword_26C335320;
  v28 = xmmword_26C335320;
  v66 = v74;
  v67 = xmmword_26C335320;
  v68 = xmmword_26C335320;
  v62 = *&v70[16];
  v63 = v71;
  v64 = 0uLL;
  v65 = v73;
  v60 = v69;
  v61 = *v70;
  outlined init with copy of ARTraceV3.Traceinfo(&v69, &v51);
  lazy protocol witness table accessor for type ARTraceV3.Traceinfo and conformance ARTraceV3.Traceinfo();
  v17 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v19 = v18;
  v57 = v66;
  v58 = v67;
  v59 = v68;
  v53 = v62;
  v54 = v63;
  v55 = v64;
  v56 = v65;
  v51 = v60;
  v52 = v61;
  outlined destroy of ARTraceV3.Traceinfo(&v51);

  specialized Data.withUnsafeBytes<A>(_:)(v17, v19, v4, 20483);
  v20 = outlined consume of Data._Representation(v17, v19);
  if (MEMORY[0x26D69C8C0](v20))
  {
    __break(1u);
  }

  else
  {
    v50 = v8;
    lazy protocol witness table accessor for type ARTraceV3.ProcessMap and conformance ARTraceV3.ProcessMap();

    v21 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v23 = v22;
    swift_bridgeObjectRelease_n();

    specialized Data.withUnsafeBytes<A>(_:)(v21, v23, v4, 20534);
    v24 = outlined consume of Data._Representation(v21, v23);
    v25 = MEMORY[0x26D69C8C0](v24);

    if (!v25)
    {
      (*(v31 + 32))(v32, v7, v33);
      v34[0] = v30;
      v34[1] = v29;
      v34[2] = 0x3E665E9F80F29212;
      v35 = v27;
      v36 = 0xE000000000000000;
      v37 = 0;
      v39 = 0;
      v40 = 0;
      v38 = 0xE000000000000000;
      v41 = 1;
      *v42 = v79[0];
      *&v42[3] = *(v79 + 3);
      v43 = 0x3FF0000000000000;
      v44 = v11;
      v45 = 513;
      v47 = v78;
      v46 = v77;
      v48 = v28;
      v49 = v28;
      return outlined destroy of ARTraceV3.Traceinfo(v34);
    }
  }

  __break(1u);
  v57 = v66;
  v58 = v67;
  v59 = v68;
  v53 = v62;
  v54 = v63;
  v55 = v64;
  v56 = v65;
  v51 = v60;
  v52 = v61;
  outlined destroy of ARTraceV3.Traceinfo(&v51);
  swift_unexpectedError();
  __break(1u);

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

Swift::Void __swiftcall KtraceFile.close()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  if (!*(v0 + 16))
  {
    __break(1u);
    goto LABEL_6;
  }

  ktrace_file_close();
  v4 = OBJC_IVAR____TtC21SwiftUITracingSupport10KtraceFile_url;
  swift_beginAccess();
  outlined init with copy of ResourceSet<Interpreter, ()>(v0 + v4, v3, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v3, 1, v5) == 1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  URL.path(percentEncoded:)(1);
  (*(v6 + 8))(v3, v5);
  String.utf8CString.getter();

  v7 = ktrace_file_open();

  if (v7)
  {
    ktrace_file_close();
    return;
  }

LABEL_7:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void *KtraceFile.deinit()
{
  *(v0 + 88) = MEMORY[0x277D84F90];

  *(v0 + 16) = 0;

  outlined destroy of unowned Swift.AnyObject(v0 + 80);

  outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v0 + OBJC_IVAR____TtC21SwiftUITracingSupport10KtraceFile_url, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return v0;
}

uint64_t KtraceFile.__deallocating_deinit()
{
  KtraceFile.deinit();

  return swift_deallocClassInstance();
}

void protocol witness for Sequence.makeIterator() in conformance KtraceFile(void *a1@<X8>)
{
  *a1 = *v1;
  a1[1] = 0;
  a1[2] = MEMORY[0x277D84F90];
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance KtraceFile()
{
  v1 = specialized _copySequenceToContiguousArray<A>(_:)(*v0);

  return v1;
}

void *Chunk.describe(state:)(__int128 *a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 20);
  v4 = *a1;
  v5 = v1;
  v6 = *(a1 + 24);
  v7 = v2;
  return TraceChunk.describe(state:)(&v4);
}

void *TraceChunk.describe(state:)(uint64_t *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v34[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v34[-v8];
  v10 = *(a1 + 16);
  if (v10)
  {
    v12 = *a1;
    v11 = a1[1];
    v36 = *(a1 + 3);
    v35 = *(a1 + 40);
    v13 = *(a1 + 41);
    *&v40 = 0;
    *(&v40 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(29);
    v37 = v40;
    MEMORY[0x26D69CDB0](0x206B6E75684328, 0xE700000000000000);
    v14 = *v2;
    v40 = *(*v2 + 32);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x26D69CDB0](32, 0xE100000000000000);
    v15 = type metadata accessor for _Chunk_Fields(0);
    outlined init with copy of ResourceSet<Interpreter, ()>(v2 + *(v15 + 24), v7, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v16 = type metadata accessor for URL();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v7, 1, v16) == 1)
    {
      outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v7, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v18 = 0;
      v19 = 0xE000000000000000;
    }

    else
    {
      v26 = URL.description.getter();
      v19 = v27;
      (*(v17 + 8))(v7, v16);
      v18 = v26;
    }

    MEMORY[0x26D69CDB0](v18, v19);

    MEMORY[0x26D69CDB0](32, 0xE100000000000000);
    specialized T_Header.init(loadedFrom:)(*(v14 + 32), &v38);
    LODWORD(v40) = v39;
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x26D69CDB0](v28);

    MEMORY[0x26D69CDB0](0x656461656820200ALL, 0xEA00000000002072);
    result = specialized T_Header.init(loadedFrom:)(*(v14 + 32), &v40);
    if (__OFSUB__(v12, 1))
    {
      __break(1u);
    }

    else
    {
      v42 = v12 - 1;
      v43 = v11;
      v44 = v10;
      v45 = v36;
      v46 = v35;
      v47 = v13;
      v30 = specialized InspectionState.wrapDescription<A>(_:)();
      MEMORY[0x26D69CDB0](v30);

      MEMORY[0x26D69CDB0](10506, 0xE200000000000000);
      return v37;
    }
  }

  else
  {
    *&v40 = 0;
    *(&v40 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(16);
    v38 = v40;
    MEMORY[0x26D69CDB0](0x206B6E75684328, 0xE700000000000000);
    v20 = *v2;
    v40 = *(*v2 + 32);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x26D69CDB0](32, 0xE100000000000000);
    v21 = type metadata accessor for _Chunk_Fields(0);
    outlined init with copy of ResourceSet<Interpreter, ()>(v2 + *(v21 + 24), v9, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v22 = type metadata accessor for URL();
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(v9, 1, v22) == 1)
    {
      outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v9, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v24 = 0;
      v25 = 0xE000000000000000;
    }

    else
    {
      v31 = URL.description.getter();
      v25 = v32;
      (*(v23 + 8))(v9, v22);
      v24 = v31;
    }

    MEMORY[0x26D69CDB0](v24, v25);

    MEMORY[0x26D69CDB0](32, 0xE100000000000000);
    specialized T_Header.init(loadedFrom:)(*(v20 + 32), &v40);
    LODWORD(v42) = v41;
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x26D69CDB0](v33);

    MEMORY[0x26D69CDB0](41, 0xE100000000000000);
    return v38;
  }

  return result;
}

void *Chunk.interpreterForInstruments(symbols:)(int *a1)
{
  v3 = type metadata accessor for _Chunk_Fields(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TraceChunk(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *a1;
  v10 = *(a1 + 1);
  v11 = *(a1 + 6);
  v12 = OBJC_IVAR____TtC21SwiftUITracingSupport5Chunk_chunk;
  v13 = lazy protocol witness table accessor for type Interpreter.SwiftUI and conformance Interpreter.SwiftUI();
  outlined init with copy of TraceChunk(v1 + v12, v8, type metadata accessor for TraceChunk);
  LODWORD(v40) = v9;
  *(&v40 + 1) = v10;
  v14 = *(a1 + 2);
  v37[0] = *(a1 + 1);
  v37[1] = v14;
  v41 = v37[0];
  *v42 = v14;
  *&v42[16] = v11;
  outlined init with copy of TraceChunk(v1 + v12, v5, type metadata accessor for _Chunk_Fields);
  Strong = swift_unknownObjectUnownedLoadStrong();

  outlined destroy of _Chunk_Fields(v5, type metadata accessor for _Chunk_Fields);
  type metadata accessor for Interpreter();
  swift_allocObject();
  v16 = specialized Interpreter.init(chunk:symbols:owner:)(v8, &v40, Strong);
  swift_unknownObjectRelease();
  v17 = v16[3];
  v18 = *(v13 + 16);
  v19 = (v17 + 40);

  specialized EvolutionTable.add(_:impl:)(0x8000000287CD6370, v18, 0, v17 + 40, v16);

  result = (*(v18 + 24))(&type metadata for Interpreter.SwiftUI, v18);
  v21 = *(v17 + 56);
  v40 = *(v17 + 40);
  v41 = v21;
  *v42 = *(v17 + 72);
  v22 = (v17 + 56);
  v23 = (v17 + 68);
  v24 = (v17 + 88);
  *&v42[9] = *(v17 + 81);
  v25 = (v17 + 40);
  v26 = (v17 + 56);
  v27 = (v17 + 68);
  v28 = (v17 + 88);
  while (1)
  {
    v29 = *v28;
    if (*v27)
    {
      v30 = *v26;
      if ((v30[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v29)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, &v40);
    }

    v26 = (v29 + 16);
    v27 = (v29 + 28);
    v28 = (v29 + 48);
    v25 = v29;
  }

  v31 = *v25;
  if (v31)
  {
    v32 = (v31 + 24 * *v30);
    v33 = *(v17 + 56);
    v38[0] = *v19;
    v38[1] = v33;
    v39[0] = *(v17 + 72);
    *(v39 + 9) = *(v17 + 81);
    while (1)
    {
      v34 = *v24;
      if (result < *v23)
      {
        v35 = (*v22 + 8 * result);
        if ((v35[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v34)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(result, 1, v38);
      }

      v22 = (v34 + 16);
      v23 = (v34 + 28);
      v24 = (v34 + 48);
      v19 = v34;
    }

    if (*v19)
    {
      v36 = *(*v19 + 24 * *v35);
      *(v36 + 104) = *v32 + 56;
      *(v36 + 168) = *v32 + 120;
      return v16;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t TraceChunk.interpreter(symbols:handles:)(int *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for _Chunk_Fields(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TraceChunk(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = (v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *a1;
  v13 = *(a1 + 1);
  v14 = *(a1 + 6);
  outlined init with copy of TraceChunk(v3, v11, type metadata accessor for TraceChunk);
  LODWORD(v46) = v12;
  *(&v46 + 1) = v13;
  v15 = *(a1 + 2);
  v43[0] = *(a1 + 1);
  v43[1] = v15;
  v47 = v43[0];
  *v48 = v15;
  *&v48[16] = v14;
  outlined init with copy of TraceChunk(v3, v8, type metadata accessor for _Chunk_Fields);
  Strong = swift_unknownObjectUnownedLoadStrong();

  outlined destroy of _Chunk_Fields(v8, type metadata accessor for _Chunk_Fields);
  type metadata accessor for Interpreter();
  swift_allocObject();
  v17 = specialized Interpreter.init(chunk:symbols:owner:)(v11, &v46, Strong);
  swift_unknownObjectRelease();
  v18 = *(a2 + 16);
  if (!v18)
  {
    return v17;
  }

  v19 = 0;
  v20 = a2 + 32;
  while (1)
  {
    v22 = v20 + 16 * v19;
    v23 = *v22;
    v24 = v17[3];
    v25 = *(*(v22 + 8) + 16);
    v26 = (v24 + 40);

    specialized EvolutionTable.add(_:impl:)(v23 | 0x8000000000000000, v25, 0, v24 + 40, v17);

    if (v23 == &type metadata for Interpreter.Control)
    {
      goto LABEL_4;
    }

    result = (*(v25 + 24))(v23, v25);
    v28 = *(v24 + 56);
    v46 = *v26;
    v47 = v28;
    *v48 = *(v24 + 72);
    v29 = (v24 + 56);
    v30 = (v24 + 68);
    v31 = (v24 + 88);
    *&v48[9] = *(v26 + 41);
    v32 = v26;
    v33 = v29;
    v34 = v30;
    v35 = v31;
    while (1)
    {
      v36 = *v35;
      if (*v34)
      {
        v37 = *v33;
        if ((v37[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v36)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, &v46);
      }

      v33 = (v36 + 16);
      v34 = (v36 + 28);
      v35 = (v36 + 48);
      v32 = v36;
    }

    v38 = *v32;
    if (!v38)
    {
      break;
    }

    v39 = (v38 + 24 * *v37);
    v40 = v26[1];
    v44[0] = *v26;
    v44[1] = v40;
    v45[0] = v26[2];
    *(v45 + 9) = *(v26 + 41);
    while (1)
    {
      v41 = *v31;
      if (result < *v30)
      {
        v42 = &(*v29)[2 * result];
        if ((v42[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v41)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(result, 1, v44);
      }

      v29 = (v41 + 16);
      v30 = (v41 + 28);
      v31 = (v41 + 48);
      v26 = v41;
    }

    if (!*v26)
    {
      goto LABEL_22;
    }

    v21 = *(*v26 + 24 * *v42);
    *(v21 + 104) = *v39 + 56;
    *(v21 + 168) = *v39 + 120;
LABEL_4:
    if (++v19 == v18)
    {
      return v17;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t Chunk.__deallocating_deinit()
{
  outlined destroy of _Chunk_Fields(v0 + OBJC_IVAR____TtC21SwiftUITracingSupport5Chunk_chunk, type metadata accessor for TraceChunk);

  return swift_deallocClassInstance();
}

void *protocol witness for Inspectable.describe(state:) in conformance Chunk(__int128 *a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 20);
  v4 = *a1;
  v5 = v1;
  v6 = *(a1 + 24);
  v7 = v2;
  return TraceChunk.describe(state:)(&v4);
}

Swift::Int Chunk_Error.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x26D69DBC0](v1);
  return Hasher._finalize()();
}

uint64_t _Chunk_Storage.init(chunk:storage:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = a1;

  result = ktrace_chunk_size();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    v5 = ktrace_chunk_map_data();
    if (v5)
    {
      v6 = v5;

      v2[4] = v6;
      v2[5] = v6 + v4;
    }

    else
    {
      lazy protocol witness table accessor for type Chunk_Error and conformance Chunk_Error();
      swift_allocError();
      *v7 = 2;
      swift_willThrow();

      swift_deallocPartialClassInstance();
    }

    return v2;
  }

  return result;
}

void *_Chunk_Storage.deinit()
{
  if (*(v0 + 32))
  {
    ktrace_chunk_unmap_data();

    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void _Chunk_Storage.__deallocating_deinit()
{
  if (*(v0 + 32))
  {
    ktrace_chunk_unmap_data();

    swift_deallocClassInstance();
  }

  else
  {
    __break(1u);
  }
}

uint64_t specialized KTraceFile_Chunk.append(to:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for _Chunk_Fields(0);
  MEMORY[0x28223BE20](v5);
  v7 = (&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!*(a1 + 16))
  {
    __break(1u);
    goto LABEL_7;
  }

  v8 = *v2;
  ktrace_chunk_tag();
  ktrace_chunk_version_major();
  ktrace_chunk_version_minor();
  if (!*(v8 + 32))
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  appended = ktrace_file_append_chunk();
  if (!appended)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v10 = appended;
  a2[3] = type metadata accessor for Miscellaneous(0);
  a2[4] = &protocol witness table for Miscellaneous;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a2);
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = boxed_opaque_existential_1Tm;
    type metadata accessor for _Chunk_Storage();
    v14 = swift_allocObject();

    _Chunk_Storage.init(chunk:storage:)(v10, v12);
    swift_beginAccess();
    swift_unknownObjectUnownedLoadStrong();
    v15 = OBJC_IVAR____TtC21SwiftUITracingSupport10KtraceFile_url;
    swift_beginAccess();
    outlined init with copy of ResourceSet<Interpreter, ()>(a1 + v15, v7 + *(v5 + 24), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    *v7 = v14;
    swift_unknownObjectUnownedInit();
    swift_unknownObjectRelease();
    return outlined init with take of TraceChunk(v7, v13, type metadata accessor for _Chunk_Fields);
  }

LABEL_9:
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t KTraceFile_Chunk.append(to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)(uint64_t, uint64_t)@<X2>, uint64_t *a4@<X8>)
{
  v22 = type metadata accessor for _Chunk_Fields(0);
  MEMORY[0x28223BE20](v22);
  v23 = (&v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(a1 + 16);
  if (!v9)
  {
    __break(1u);
    goto LABEL_7;
  }

  v25 = *(v9 + 16);
  a3[10](a2, a3);
  v24 = ktrace_chunk_tag();
  a3[11](a2, a3);
  a3[12](a2, a3);
  v10 = a3[7];
  if (!v10(a2, a3))
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v10(a2, a3);
  appended = ktrace_file_append_chunk();
  if (!appended)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v12 = appended;
  a4[3] = type metadata accessor for Miscellaneous(0);
  a4[4] = &protocol witness table for Miscellaneous;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a4);
  v14 = *(a1 + 16);
  if (v14)
  {
    v15 = boxed_opaque_existential_1Tm;
    type metadata accessor for _Chunk_Storage();
    v16 = swift_allocObject();

    _Chunk_Storage.init(chunk:storage:)(v12, v14);
    swift_beginAccess();
    swift_unknownObjectUnownedLoadStrong();
    v17 = OBJC_IVAR____TtC21SwiftUITracingSupport10KtraceFile_url;
    swift_beginAccess();
    v18 = a1 + v17;
    v19 = v23;
    outlined init with copy of ResourceSet<Interpreter, ()>(v18, v23 + *(v22 + 24), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    *v19 = v16;
    swift_unknownObjectUnownedInit();
    swift_unknownObjectRelease();
    return outlined init with take of TraceChunk(v19, v15, type metadata accessor for _Chunk_Fields);
  }

LABEL_9:
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t KTraceFile_Chunk.owner.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _Chunk_Fields(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 8))(a1, a2);
  Strong = swift_unknownObjectUnownedLoadStrong();
  outlined destroy of _Chunk_Fields(v6, type metadata accessor for _Chunk_Fields);
  return Strong;
}

uint64_t KTraceFile_Chunk.url.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for _Chunk_Fields(0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 8))(a1, a2);
  outlined init with copy of ResourceSet<Interpreter, ()>(&v9[*(v7 + 32)], a3, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return outlined destroy of _Chunk_Fields(v9, type metadata accessor for _Chunk_Fields);
}

uint64_t KTraceFile_Chunk.size.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 56))(a1);
  if (v2)
  {
    return v3 - v2;
  }

  else
  {
    return 0;
  }
}

uint64_t KTraceFile_Chunk.storage.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _Chunk_Fields(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(a2 + 8))(a1, a2);
  v7 = *v6;

  outlined destroy of _Chunk_Fields(v6, type metadata accessor for _Chunk_Fields);
  v8 = *(v7 + 24);

  return v8;
}

uint64_t KTraceFile_Chunk.tag.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 80))(a1);

  return ktrace_chunk_tag();
}

uint64_t _s21SwiftUITracingSupport15CompressedChunkVAA011KTraceFile_E0A2aDP4sizeSivgTW_0()
{
  v1 = *(*v0 + 32);
  if (v1)
  {
    return *(*v0 + 40) - v1;
  }

  else
  {
    return 0;
  }
}

uint64_t CompressedChunk.append(to:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  appended = NSPageSize();
  if ((appended - 0x1000000000000000) >> 61 != 7)
  {
    goto LABEL_56;
  }

  v7 = 8 * appended;
  v8 = swift_slowAlloc();
  v9 = swift_slowAlloc();
  v3 = 256;
  v10 = compression_stream_init(v9, COMPRESSION_STREAM_DECODE, COMPRESSION_LZ4);
  v9->dst_ptr = v8;
  v9->dst_size = v7;
  if (v10)
  {
    goto LABEL_66;
  }

  v11 = v8 + v7;
  LODWORD(v55) = 1;
  *(&v55 + 1) = v7;
  LODWORD(v56) = 256;
  *(&v56 + 1) = v9;
  v57 = 0;
  v58 = v8;
  v59 = v8 + v7;
  v61 = 0;
  v62 = 0;
  v60 = 0;
  v63 = v55;
  v64 = v56;
  appended = swift_allocObject();
  *(appended + 16) = 1;
  if (!*(a1 + 16))
  {
    goto LABEL_59;
  }

  v3 = appended;
  v12 = *v2;
  ktrace_chunk_version_major();
  ktrace_chunk_version_minor();
  appended = ktrace_file_append_start();
  if (!appended)
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    if (appended == -1)
    {
      lazy protocol witness table accessor for type BufferCompressor.CompressorError and conformance BufferCompressor.CompressorError();
      v14 = swift_allocError();
      *v37 = 0xD000000000000024;
      v37[1] = 0x800000026C33CDD0;
      swift_willThrow();
      LODWORD(appended) = swift_unexpectedError();
      __break(1u);
LABEL_64:
      if (appended == -1)
      {
        lazy protocol witness table accessor for type BufferCompressor.CompressorError and conformance BufferCompressor.CompressorError();
        swift_allocError();
        *v38 = 0xD000000000000024;
        v38[1] = 0x800000026C33CDD0;
        swift_willThrow();
        v53 = 0;
        v54 = 0xE000000000000000;
        swift_getErrorValue();
        DefaultStringInterpolation.appendInterpolation<A>(_:)();
        MEMORY[0x26D69CDB0](32, 0xE100000000000000);
        v45 = v63;
        v46 = v64;
        v47 = v44;
        v48 = v41;
        v49 = v40;
        v50 = v3;
        v51 = partial apply for closure #1 in CompressedChunk.append(to:);
        v52 = v14;
        v39 = BufferCompressor.describe(state:)();
        MEMORY[0x26D69CDB0](v39);
      }
    }

    while (1)
    {
LABEL_66:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  v13 = appended;
  v14 = swift_allocObject();
  v14[2] = v3;
  v14[3] = a1;
  v43 = v13;
  v14[4] = v13;

  outlined destroy of BufferCompressor(&v55);
  v15 = *(v12 + 32);
  v40 = v11;
  v41 = v8;
  if (v15)
  {
    v16 = *(v12 + 40) - v15;
  }

  else
  {
    v16 = 0;
  }

  v44 = 0;
  v3 = 0;
  v9->src_ptr = v15;
  v9->src_size = v16;
  v17 = v57;
  v18 = v58;
  v42 = v59;
  v19 = v59 - v58;
  if (v58)
  {
    v20 = v59 - v58;
  }

  else
  {
    v20 = 0;
  }

  while (1)
  {
    LODWORD(appended) = compression_stream_process(v9, 0);
    if (!appended)
    {
      break;
    }

LABEL_18:
    if (appended != 1)
    {
      goto LABEL_64;
    }

    dst_size = v9->dst_size;
    v44 = 1;
    v17 = 1;
    v24 = v20 - dst_size;
    if (__OFSUB__(v20, dst_size))
    {
      goto LABEL_54;
    }

LABEL_24:
    if ((v24 & 0x8000000000000000) != 0)
    {
      goto LABEL_55;
    }

    if (v18)
    {
      v25 = &v18[v24];
    }

    else
    {
      v25 = 0;
    }

    LODWORD(appended) = closure #1 in CompressedChunk.append(to:)(v18, v25, v14[2], v14[3], v14[4]);
    if (!v18)
    {
      goto LABEL_58;
    }

    v9->dst_ptr = v18;
    v9->dst_size = v19;
    v3 += v24;
    if (!v9->src_size)
    {
      goto LABEL_32;
    }
  }

  v21 = v9->dst_size;
  v22 = v21 == 0;
  if (v22 | v17 & 1)
  {
LABEL_23:
    v17 |= !v22;
    v24 = v20 - v21;
    if (__OFSUB__(v20, v21))
    {
      goto LABEL_54;
    }

    goto LABEL_24;
  }

  if (v9->src_size)
  {
    while (1)
    {
      LODWORD(appended) = compression_stream_process(v9, 0);
      if (appended)
      {
        goto LABEL_18;
      }

      v21 = v9->dst_size;
      if (!v21)
      {
        break;
      }

      if (!v9->src_size)
      {
        goto LABEL_31;
      }
    }

    v17 = 0;
    v22 = 1;
    goto LABEL_23;
  }

LABEL_31:
  v17 = 0;
LABEL_32:
  a2[3] = type metadata accessor for TraceChunk(0);
  a2[4] = &protocol witness table for TraceChunk;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a2);

  TraceChunk.init(chunk:file:)(v43, a1, boxed_opaque_existential_1Tm);
  LODWORD(appended) = 0;
  v27 = v44;
  if (!*(a1 + 16))
  {
    goto LABEL_61;
  }

  v41 = 0;
  ktrace_file_append_finish();

  if (specialized static UnsafeMutableRawBufferPointer.== infix(_:_:)(v18, v42, 0, 0))
  {
    goto LABEL_66;
  }

  v9->src_ptr = 0;
  v9->src_size = 0;
  v28 = v17;
  do
  {
    LODWORD(appended) = compression_stream_process(v9, 1);
    if (appended)
    {
LABEL_41:
      if (appended != 1)
      {
        goto LABEL_62;
      }

      v29 = v9->dst_size;
      v27 = 1;
      v32 = 1;
      v28 = 1;
    }

    else
    {
      v29 = v9->dst_size;
      v30 = v29 == 0;
      if (!(v30 | v28 & 1))
      {
        do
        {
          LODWORD(appended) = compression_stream_process(v9, 1);
          if (appended)
          {
            goto LABEL_41;
          }

          v29 = v9->dst_size;
        }

        while (v29);
        v17 = 0;
        v28 = 0;
        v30 = 1;
      }

      v31 = !v30;
      v32 = v31 | v17;
      v28 |= v31;
    }

    v33 = v20 - v29;
    if (__OFSUB__(v20, v29))
    {
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
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    if ((v33 & 0x8000000000000000) != 0)
    {
      goto LABEL_53;
    }

    if (v18)
    {
      v34 = &v18[v33];
    }

    else
    {
      v34 = 0;
    }

    LODWORD(appended) = closure #1 in CompressedChunk.append(to:)(v18, v34, v14[2], v14[3], v14[4]);
    if (!v18)
    {
      goto LABEL_57;
    }

    v9->dst_ptr = v18;
    v9->dst_size = v19;
    v3 += v33;
    src_size = v9->src_size;
    v17 = (src_size != 0) & v32;
  }

  while (src_size || ((v32 ^ 1) & 1) != 0);
  compression_stream_destroy(v9);
  MEMORY[0x26D69EAB0](v9, -1, -1);
  MEMORY[0x26D69EAB0](v18, -1, -1);
  v45 = v63;
  v46 = v64;
  v47 = v27;
  v48 = 0;
  v49 = 0;
  v50 = v3;
  v51 = partial apply for closure #1 in CompressedChunk.append(to:);
  v52 = v14;
  return outlined destroy of BufferCompressor(&v45);
}

void *closure #1 in CompressedChunk.append(to:)(void *result, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
    v5 = result;
    if (a2 != result)
    {
      swift_beginAccess();
      if (*(a3 + 16) == 1)
      {
        if (*v5 != 123123123)
        {
          __break(1u);
          goto LABEL_10;
        }

        swift_beginAccess();
        *(a3 + 16) = 0;
      }

      if (*(a4 + 16))
      {
        result = ktrace_file_append_data();
        if (!result)
        {
          return result;
        }

LABEL_11:
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

LABEL_10:
      __break(1u);
      goto LABEL_11;
    }
  }

  return result;
}

void *TraceChunk.interpreterForInstruments(symbols:)(int *a1)
{
  v2 = v1;
  v4 = type metadata accessor for _Chunk_Fields(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TraceChunk(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *a1;
  v11 = *(a1 + 1);
  v12 = *(a1 + 6);
  v13 = lazy protocol witness table accessor for type Interpreter.SwiftUI and conformance Interpreter.SwiftUI();
  outlined init with copy of TraceChunk(v2, v9, type metadata accessor for TraceChunk);
  LODWORD(v40) = v10;
  *(&v40 + 1) = v11;
  v14 = *(a1 + 2);
  v37[0] = *(a1 + 1);
  v37[1] = v14;
  v41 = v37[0];
  *v42 = v14;
  *&v42[16] = v12;
  outlined init with copy of TraceChunk(v2, v6, type metadata accessor for _Chunk_Fields);
  Strong = swift_unknownObjectUnownedLoadStrong();

  outlined destroy of _Chunk_Fields(v6, type metadata accessor for _Chunk_Fields);
  type metadata accessor for Interpreter();
  swift_allocObject();
  v16 = specialized Interpreter.init(chunk:symbols:owner:)(v9, &v40, Strong);
  swift_unknownObjectRelease();
  v17 = v16[3];
  v18 = *(v13 + 16);
  v19 = (v17 + 40);

  specialized EvolutionTable.add(_:impl:)(0x8000000287CD6370, v18, 0, v17 + 40, v16);

  result = (*(v18 + 24))(&type metadata for Interpreter.SwiftUI, v18);
  v21 = *(v17 + 56);
  v40 = *(v17 + 40);
  v41 = v21;
  *v42 = *(v17 + 72);
  v22 = (v17 + 56);
  v23 = (v17 + 68);
  v24 = (v17 + 88);
  *&v42[9] = *(v17 + 81);
  v25 = (v17 + 40);
  v26 = (v17 + 56);
  v27 = (v17 + 68);
  v28 = (v17 + 88);
  while (1)
  {
    v29 = *v28;
    if (*v27)
    {
      v30 = *v26;
      if ((v30[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v29)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, &v40);
    }

    v26 = (v29 + 16);
    v27 = (v29 + 28);
    v28 = (v29 + 48);
    v25 = v29;
  }

  v31 = *v25;
  if (v31)
  {
    v32 = (v31 + 24 * *v30);
    v33 = *(v17 + 56);
    v38[0] = *v19;
    v38[1] = v33;
    v39[0] = *(v17 + 72);
    *(v39 + 9) = *(v17 + 81);
    while (1)
    {
      v34 = *v24;
      if (result < *v23)
      {
        v35 = (*v22 + 8 * result);
        if ((v35[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v34)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(result, 1, v38);
      }

      v22 = (v34 + 16);
      v23 = (v34 + 28);
      v24 = (v34 + 48);
      v19 = v34;
    }

    if (*v19)
    {
      v36 = *(*v19 + 24 * *v35);
      *(v36 + 104) = *v32 + 56;
      *(v36 + 168) = *v32 + 120;
      return v16;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for KTraceFile_Chunk.owner.getter in conformance Miscellaneous()
{
  v1 = type metadata accessor for _Chunk_Fields(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of TraceChunk(v0, v3, type metadata accessor for _Chunk_Fields);
  Strong = swift_unknownObjectUnownedLoadStrong();
  outlined destroy of _Chunk_Fields(v3, type metadata accessor for _Chunk_Fields);
  return Strong;
}

uint64_t specialized _copySequenceToContiguousArray<A>(_:)(uint64_t a1)
{
  v1 = a1;
  v27[0] = a1;
  v27[1] = 0;
  v2 = MEMORY[0x277D84F90];
  v27[2] = MEMORY[0x277D84F90];

  v3 = 0;
  v22 = v2;
  for (i = v2 + 32; ; i += 40)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = 0u;
    *(v5 + 32) = 0u;
    *(v5 + 48) = 0;
    v6 = swift_allocObject();
    *(v6 + 16) = v27;
    *(v6 + 24) = v5;
    result = swift_allocObject();
    *(result + 16) = closure #1 in KtraceFile.ChunkIterator.next()partial apply;
    *(result + 24) = v6;
    if (!*(v1 + 16))
    {
      break;
    }

    aBlock[4] = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@unowned Bool)partial apply;
    aBlock[5] = result;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@unowned Bool);
    aBlock[3] = &block_descriptor_100;
    v8 = _Block_copy(aBlock);

    ktrace_file_iterate();
    _Block_release(v8);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      break;
    }

    swift_beginAccess();
    outlined init with copy of ResourceSet<Interpreter, ()>(v5 + 16, &v24, &_s21SwiftUITracingSupport16KTraceFile_Chunk_pSgMd, &_s21SwiftUITracingSupport16KTraceFile_Chunk_pSgMR);

    if (!v25)
    {

      outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](&v24, &_s21SwiftUITracingSupport16KTraceFile_Chunk_pSgMd, &_s21SwiftUITracingSupport16KTraceFile_Chunk_pSgMR);
      result = v22;
      v19 = *(v22 + 24);
      if (v19 < 2)
      {
        return result;
      }

      v20 = v19 >> 1;
      v18 = __OFSUB__(v20, v3);
      v21 = v20 - v3;
      if (!v18)
      {
        *(v22 + 16) = v21;
        return result;
      }

      goto LABEL_25;
    }

    result = outlined init with take of KTraceFile_Chunk(&v24, v26);
    if (!v3)
    {
      v10 = *(v22 + 24);
      if (((v10 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_24;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if (v11 <= 1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport16KTraceFile_Chunk_pGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport16KTraceFile_Chunk_pGMR);
      v13 = swift_allocObject();
      v14 = (_swift_stdlib_malloc_size(v13) - 32) / 40;
      v13[2] = v12;
      v13[3] = 2 * v14;
      v15 = (v13 + 4);
      v16 = *(v22 + 24) >> 1;
      if (*(v22 + 16))
      {
        v17 = (v22 + 32);
        if (v13 != v22 || v15 >= v17 + 40 * v16)
        {
          memmove(v13 + 4, v17, 40 * v16);
        }

        *(v22 + 16) = 0;
      }

      i = v15 + 40 * v16;
      v3 = (v14 & 0x7FFFFFFFFFFFFFFFLL) - v16;

      v22 = v13;
    }

    v18 = __OFSUB__(v3--, 1);
    if (v18)
    {
      goto LABEL_23;
    }

    outlined init with take of KTraceFile_Chunk(v26, i);
    v1 = v27[0];
  }

  __break(1u);
  return result;
}

void *specialized _copySequenceToContiguousArray<A>(_:)(__int128 *a1)
{
  v1 = a1[5];
  v38 = a1[4];
  v39 = v1;
  v40 = a1[6];
  v2 = a1[1];
  v34 = *a1;
  v35 = v2;
  v3 = a1[3];
  v36 = a1[2];
  v37 = v3;
  v41 = -1;
  outlined init with copy of Interpreter.Storage.Types(a1, v23);
  result = Interpreter.Storage.Types.Iterator.next()(&v27);
  v5 = MEMORY[0x277D84F90];
  if (v29 == 0xFF)
  {
    v6 = 0;
LABEL_20:
    v23[4] = v38;
    v23[5] = v39;
    v23[6] = v40;
    v24 = v41;
    v23[0] = v34;
    v23[1] = v35;
    v23[2] = v36;
    v23[3] = v37;
    outlined destroy of Interpreter.Storage.Types.Iterator(v23);
    v25[4] = v31;
    v25[5] = v32;
    *v26 = *v33;
    *&v26[14] = *&v33[14];
    v25[0] = v27;
    v25[1] = v28;
    v25[2] = v29;
    v25[3] = v30;
    result = outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v25, &_s21SwiftUITracingSupport5PTypeVSgMd, &_s21SwiftUITracingSupport5PTypeVSgMR);
    v18 = v5[3];
    if (v18 < 2)
    {
      return v5;
    }

    v19 = v18 >> 1;
    v17 = __OFSUB__(v19, v6);
    v20 = v19 - v6;
    if (!v17)
    {
      v5[2] = v20;
      return v5;
    }
  }

  else
  {
    v6 = 0;
    v7 = (MEMORY[0x277D84F90] + 32);
    while (1)
    {
      v21[4] = v31;
      v21[5] = v32;
      v22[0] = *v33;
      *(v22 + 14) = *&v33[14];
      v21[0] = v27;
      v21[1] = v28;
      v21[2] = v29;
      v21[3] = v30;
      if (!v6)
      {
        v8 = v5[3];
        if (((v8 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_25;
        }

        v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
        if (v9 <= 1)
        {
          v10 = 1;
        }

        else
        {
          v10 = v9;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport5PTypeVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport5PTypeVGMR);
        v11 = swift_allocObject();
        v12 = (_swift_stdlib_malloc_size(v11) - 32) / 120;
        v11[2] = v10;
        v11[3] = 2 * v12;
        v13 = (v11 + 4);
        v14 = v5[3] >> 1;
        v15 = 15 * v14;
        if (v5[2])
        {
          if (v11 != v5 || v13 >= &v5[v15 + 4])
          {
            memmove(v11 + 4, v5 + 4, 120 * v14);
          }

          v5[2] = 0;
        }

        v7 = (v13 + v15 * 8);
        v6 = (v12 & 0x7FFFFFFFFFFFFFFFLL) - v14;

        v5 = v11;
      }

      v17 = __OFSUB__(v6--, 1);
      if (v17)
      {
        break;
      }

      memmove(v7, v21, 0x76uLL);
      v7 += 120;
      result = Interpreter.Storage.Types.Iterator.next()(&v27);
      if (v29 == 0xFF)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26C26CB70()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_26C26CBB0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t outlined init with take of TraceChunk?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport10TraceChunkVSgMd, &_s21SwiftUITracingSupport10TraceChunkVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ARTraceV3.Traceinfo and conformance ARTraceV3.Traceinfo()
{
  result = lazy protocol witness table cache variable for type ARTraceV3.Traceinfo and conformance ARTraceV3.Traceinfo;
  if (!lazy protocol witness table cache variable for type ARTraceV3.Traceinfo and conformance ARTraceV3.Traceinfo)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.Traceinfo and conformance ARTraceV3.Traceinfo);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ARTraceV3.ProcessMap and conformance ARTraceV3.ProcessMap()
{
  result = lazy protocol witness table cache variable for type ARTraceV3.ProcessMap and conformance ARTraceV3.ProcessMap;
  if (!lazy protocol witness table cache variable for type ARTraceV3.ProcessMap and conformance ARTraceV3.ProcessMap)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.ProcessMap and conformance ARTraceV3.ProcessMap);
  }

  return result;
}

uint64_t outlined init with copy of TraceChunk(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *specialized _copySequenceToContiguousArray<A>(_:)(uint64_t a1, unsigned int a2, unsigned __int16 a3)
{
  result = MEMORY[0x277D84F90];
  if (!a2)
  {
    v6 = 0;
    goto LABEL_32;
  }

  v5 = 0;
  v6 = 0;
  v7 = a3;
  v8 = a2;
  v9 = a3 & 0xC000;
  v10 = a3 & 0x1FFF;
  v11 = (MEMORY[0x277D84F90] + 32);
  v12 = a1 + 4;
  while (2)
  {
    v13 = (v12 + 8 * v5);
    while (1)
    {
      if (v5 >= v8)
      {
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      if (!a1)
      {
        goto LABEL_41;
      }

      v14 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_37;
      }

      v15 = *(v13 - 2);
      if ((!v9 || (v15 & (v9 ^ 0xC000)) == 0) && ((v7 & 0x2000) == 0 || (v15 & 0x2000) != 0))
      {
        break;
      }

LABEL_5:
      v13 += 2;
      ++v5;
      if (v14 == v8)
      {
        goto LABEL_32;
      }
    }

    if (!v10)
    {
      if (v7)
      {
        goto LABEL_15;
      }

      goto LABEL_5;
    }

    if ((v10 & v15) == 0)
    {
      goto LABEL_5;
    }

LABEL_15:
    v16 = *v13;
    if (!v6)
    {
      v34 = *v13;
      v35 = a1;
      v17 = result[3];
      if (((v17 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_40;
      }

      v18 = result;
      v19 = v17 & 0xFFFFFFFFFFFFFFFELL;
      if (v19 <= 1)
      {
        v20 = 1;
      }

      else
      {
        v20 = v19;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport8EventRefVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport8EventRefVGMR);
      v21 = swift_allocObject();
      v22 = _swift_stdlib_malloc_size(v21);
      v23 = v22 - 32;
      if (v22 < 32)
      {
        v23 = v22 - 29;
      }

      v24 = v23 >> 2;
      v21[2] = v20;
      v21[3] = 2 * (v23 >> 2);
      v25 = (v21 + 4);
      v26 = v18;
      v27 = v18[3] >> 1;
      if (v18[2])
      {
        v28 = v18 + 4;
        if (v21 != v18 || v25 >= v28 + 4 * v27)
        {
          v33 = v23 >> 2;
          memmove(v21 + 4, v28, 4 * v27);
          v25 = (v21 + 4);
          v24 = v33;
          v26 = v18;
        }

        v26[2] = 0;
      }

      v11 = (v25 + 4 * v27);
      v6 = (v24 & 0x7FFFFFFFFFFFFFFFLL) - v27;

      result = v21;
      a1 = v35;
      v16 = v34;
    }

    v29 = __OFSUB__(v6--, 1);
    if (v29)
    {
      goto LABEL_39;
    }

    *v11++ = v16;
    v5 = v14;
    if (v14 != v8)
    {
      continue;
    }

    break;
  }

LABEL_32:
  v30 = result[3];
  if (v30 >= 2)
  {
    v31 = v30 >> 1;
    v29 = __OFSUB__(v31, v6);
    v32 = v31 - v6;
    if (!v29)
    {
      result[2] = v32;
      return result;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }

  return result;
}

uint64_t outlined destroy of _Chunk_Fields(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of TraceChunk(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined assign with take of _Chunk_Fields(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _Chunk_Fields(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26C26D1C0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t lazy protocol witness table accessor for type BufferCompressor.CompressorError and conformance BufferCompressor.CompressorError()
{
  result = lazy protocol witness table cache variable for type BufferCompressor.CompressorError and conformance BufferCompressor.CompressorError;
  if (!lazy protocol witness table cache variable for type BufferCompressor.CompressorError and conformance BufferCompressor.CompressorError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BufferCompressor.CompressorError and conformance BufferCompressor.CompressorError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KtraceFile.ChunkIterator and conformance KtraceFile.ChunkIterator()
{
  result = lazy protocol witness table cache variable for type KtraceFile.ChunkIterator and conformance KtraceFile.ChunkIterator;
  if (!lazy protocol witness table cache variable for type KtraceFile.ChunkIterator and conformance KtraceFile.ChunkIterator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KtraceFile.ChunkIterator and conformance KtraceFile.ChunkIterator);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Chunk_Error and conformance Chunk_Error()
{
  result = lazy protocol witness table cache variable for type Chunk_Error and conformance Chunk_Error;
  if (!lazy protocol witness table cache variable for type Chunk_Error and conformance Chunk_Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Chunk_Error and conformance Chunk_Error);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Chunk_Error and conformance Chunk_Error;
  if (!lazy protocol witness table cache variable for type Chunk_Error and conformance Chunk_Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Chunk_Error and conformance Chunk_Error);
  }

  return result;
}

uint64_t sub_26C26D36C@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectUnownedLoadStrong();
  *a2 = result;
  return result;
}

void type metadata completion function for KtraceFile(uint64_t a1)
{
  type metadata accessor for URL?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for URL?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for URL?)
  {
    type metadata accessor for URL();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for URL?);
    }
  }
}

uint64_t getEnumTagSinglePayload for KtraceFile.ChunkIterator(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for KtraceFile.ChunkIterator(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata completion function for Chunk(uint64_t a1)
{
  result = type metadata accessor for _Chunk_Fields(319);
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_26C26D96C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_26C26DA3C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for _Chunk_Fields(uint64_t a1)
{
  type metadata accessor for _Chunk_Storage();
  type metadata accessor for URL?(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t __swift_get_extra_inhabitant_index_68Tm(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _Chunk_Fields(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_index_69Tm(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _Chunk_Fields(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for _Chunk_Fields(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for Miscellaneous(uint64_t a1)
{
  result = type metadata accessor for _Chunk_Fields(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v9 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      goto LABEL_10;
    }

    v9 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  result = MEMORY[0x26D69C520]();
  if (!*(a4 + 16))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v9)
  {
    return ktrace_file_append_chunk();
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t outlined assign with take of URL?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x26D69EAB0);
  }

  return result;
}

uint64_t BufferCompressor.stream(src:finalize:)(const uint8_t *a1, uint64_t a2, char a3)
{
  v5 = *(v3 + 24);
  v6 = a2 - a1;
  if (!a1)
  {
    v6 = 0;
  }

  v5->src_ptr = a1;
  v5->src_size = v6;
  while (1)
  {
    result = compression_stream_process(v5, a3 & 1);
    if (result)
    {
      break;
    }

LABEL_7:
    dst_size = v5->dst_size;
    if (!dst_size || *(v3 + 32) == 1)
    {
      v10 = *(v3 + 40);
      v9 = *(v3 + 48);
      v11 = v9 - v10;
      if (v10)
      {
        v12 = v9 - v10;
      }

      else
      {
        v12 = 0;
      }

      v13 = v12 - dst_size;
      if (__OFSUB__(v12, dst_size))
      {
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        v14 = *(v3 + 64);
        if (!v14)
        {
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
        }

        v14(v10, 0);
        __break(1u);
        goto LABEL_33;
      }

      if ((v13 & 0x8000000000000000) != 0)
      {
        goto LABEL_28;
      }

      if (!v10)
      {
        goto LABEL_29;
      }

      v14 = *(v3 + 64);
      if (v13)
      {
        if (!v14)
        {
          goto LABEL_31;
        }
      }

      else if (!v14)
      {
        goto LABEL_30;
      }

      result = (v14)(*(v3 + 40), &v10[v13]);
      v5->dst_ptr = v10;
      v5->dst_size = v11;
      *(v3 + 56) += v13;
    }

    if (!v5->src_size && ((a3 & 1) == 0 || *(v3 + 32) == 1))
    {
      return result;
    }
  }

  if (result == 1)
  {
    *(v3 + 32) = 1;
    goto LABEL_7;
  }

  if (result == -1)
  {
    lazy protocol witness table accessor for type BufferCompressor.CompressorError and conformance BufferCompressor.CompressorError();
    swift_allocError();
    *v15 = 0xD000000000000024;
    v15[1] = 0x800000026C33CDD0;
    return swift_willThrow();
  }

LABEL_33:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

Swift::Void __swiftcall BufferCompressor.deallocate()()
{
  v1 = v0;
  v2 = v0;
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = (v2 + 40);
  if (specialized static UnsafeMutableRawBufferPointer.== infix(_:_:)(v3, v4, 0, 0))
  {
    goto LABEL_32;
  }

  v6 = *(v1 + 24);
  if (v3)
  {
    v7 = v4 - v3;
  }

  else
  {
    v7 = 0;
  }

  v6->src_ptr = 0;
  v6->src_size = 0;
  do
  {
    v8 = compression_stream_process(v6, 1);
    if (v8)
    {
      if (v8 != COMPRESSION_STATUS_END)
      {
        goto LABEL_30;
      }

      *(v1 + 32) = 1;
    }

    dst_size = v6->dst_size;
    if (dst_size && *(v1 + 32) != 1)
    {
      continue;
    }

    v10 = v7 - dst_size;
    if (__OFSUB__(v7, dst_size))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      v11 = *(v1 + 64);
      if (!v11)
      {
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
      }

      v8 = v11(v3, 0);
      __break(1u);
LABEL_30:
      if (v8 == COMPRESSION_STATUS_ERROR)
      {
        lazy protocol witness table accessor for type BufferCompressor.CompressorError and conformance BufferCompressor.CompressorError();
        swift_allocError();
        *v12 = 0xD000000000000024;
        v12[1] = 0x800000026C33CDD0;
        swift_willThrow();
        swift_unexpectedError();
        __break(1u);
      }

      while (1)
      {
LABEL_32:
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }
    }

    if ((v10 & 0x8000000000000000) != 0)
    {
      goto LABEL_25;
    }

    if (!v3)
    {
      goto LABEL_26;
    }

    v11 = *(v1 + 64);
    if (v10)
    {
      if (!v11)
      {
        goto LABEL_28;
      }
    }

    else if (!v11)
    {
      goto LABEL_27;
    }

    v11(v3, v10 + v3);
    v6->dst_ptr = v3;
    v6->dst_size = v4 - v3;
    *(v1 + 56) += v10;
  }

  while (v6->src_size || *(v1 + 32) != 1);
  compression_stream_destroy(v6);
  MEMORY[0x26D69EAB0](v6, -1, -1);
  if (v3)
  {
    MEMORY[0x26D69EAB0](v3, -1, -1);
  }

  *v5 = 0;
  v5[1] = 0;
}

uint64_t BufferCompressor.describe(state:)()
{
  v1 = *v0;
  v2 = v0[4];
  _StringGuts.grow(_:)(57);
  MEMORY[0x26D69CDB0](0x736572706D6F6328, 0xEC00000020726F73);
  if (v2 == 2049)
  {
    v3 = 0xE500000000000000;
    v4 = 0x6573667A6CLL;
  }

  else
  {
    if (v2 != 256)
    {
      goto LABEL_9;
    }

    v3 = 0xE300000000000000;
    v4 = 3439212;
  }

  v5 = 0x65646F636564;
  MEMORY[0x26D69CDB0](v4, v3);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  if (!v1)
  {
    v5 = 0x65646F636E65;
LABEL_8:
    MEMORY[0x26D69CDB0](v5, 0xE600000000000000);

    MEMORY[0x26D69CDB0](0xD000000000000010, 0x800000026C33CF90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSPys5UInt8VGMd, &_sSPys5UInt8VGMR);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x26D69CDB0](32, 0xE100000000000000);
    v6 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x26D69CDB0](v6);

    MEMORY[0x26D69CDB0](0x28202020200A29, 0xE700000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSpys5UInt8VGMd, &_sSpys5UInt8VGMR);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x26D69CDB0](32, 0xE100000000000000);
    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x26D69CDB0](v7);

    MEMORY[0x26D69CDB0](0x290A2920200A29, 0xE700000000000000);
    return 0;
  }

  if (v1 == 1)
  {
    goto LABEL_8;
  }

LABEL_9:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t FileCompressor.describe(state:)(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v24 = a1[1];
  v4 = a1[3];
  v5 = a1[4];
  v6 = *(a1 + 40);
  v22 = *(a1 + 41);
  v23 = *(a1 + 16);
  *&v27[0] = 0;
  *(&v27[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(41);
  v26 = v27[0];
  MEMORY[0x26D69CDB0](0xD000000000000011, 0x800000026C33CFB0);
  v7 = *(v1 + OBJC_IVAR____TtC21SwiftUITracingSupport14FileCompressor_cb);
  v8 = *(v1 + OBJC_IVAR____TtC21SwiftUITracingSupport14FileCompressor_cb + 8);
  if (v7)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    *(v9 + 24) = v8;
    v10 = partial apply for thunk for @escaping @callee_guaranteed (@unowned Double) -> ();
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  *&v27[0] = v10;
  *(&v27[0] + 1) = v9;
  outlined copy of (@escaping @callee_guaranteed (@unowned Double) -> ())?(v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySdcSgMd, &_sySdcSgMR);
  _print_unlocked<A, B>(_:_:)();
  outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v10, v9);
  MEMORY[0x26D69CDB0](0x202020200A29, 0xE600000000000000);
  type metadata accessor for URL();
  lazy protocol witness table accessor for type URL and conformance URL();
  v11 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v11);

  MEMORY[0x26D69CDB0](0x202020200ALL, 0xE500000000000000);
  v12 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v12);

  MEMORY[0x26D69CDB0](0x202020200ALL, 0xE500000000000000);
  v13 = (v2 + OBJC_IVAR____TtC21SwiftUITracingSupport14FileCompressor_compressor);
  result = swift_beginAccess();
  v15 = v13[2];
  v16 = v13[3];
  v17 = *v13;
  v27[1] = v13[1];
  v27[2] = v15;
  v18 = v13[4];
  v27[3] = v16;
  v27[4] = v18;
  v27[0] = v17;
  if (__OFSUB__(v3, 1))
  {
    __break(1u);
  }

  else
  {
    v28 = v3 - 1;
    v29 = v24;
    v30 = v23;
    v31 = v4;
    v32 = v5;
    v33 = v6;
    v34 = v22;
    outlined init with copy of BufferCompressor?(v27, v25);
    v19 = specialized InspectionState.wrapDescription<A>(_:)();
    v21 = v20;
    outlined destroy of BufferCompressor?(v27);
    MEMORY[0x26D69CDB0](v19, v21);

    return v26;
  }

  return result;
}

uint64_t FileCompressor.__allocating_init(src:dst:bufferSize:operation:progress:)(uint64_t a1, uint64_t a2, size_t a3, compression_stream_operation a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_allocObject();
  v10 = (v9 + OBJC_IVAR____TtC21SwiftUITracingSupport14FileCompressor_cb);
  *v10 = 0;
  v10[1] = 0;
  v11 = (v9 + OBJC_IVAR____TtC21SwiftUITracingSupport14FileCompressor_compressor);
  *v11 = 0u;
  v11[1] = 0u;
  v11[2] = 0u;
  v11[3] = 0u;
  v11[4] = xmmword_26C32F2B0;
  *(v9 + OBJC_IVAR____TtC21SwiftUITracingSupport14FileCompressor_total) = 0;
  *(v9 + OBJC_IVAR____TtC21SwiftUITracingSupport14FileCompressor_progress) = 0;
  v12 = OBJC_IVAR____TtC21SwiftUITracingSupport14FileCompressor_algorithm;
  v13 = *MEMORY[0x277D832D0];
  v14 = type metadata accessor for Algorithm();
  (*(*(v14 - 8) + 104))(v9 + v12, v13, v14);
  v15 = OBJC_IVAR____TtC21SwiftUITracingSupport14FileCompressor_src;
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  v18 = *(v17 + 16);
  v18(v9 + v15, a1, v16);
  v18(v9 + OBJC_IVAR____TtC21SwiftUITracingSupport14FileCompressor_dest, a2, v16);
  v19 = Algorithm.rawValue.getter();
  v20 = swift_slowAlloc();
  v21 = swift_slowAlloc();
  v22 = compression_stream_init(v21, a4, v19);
  v21->dst_ptr = v20;
  v21->dst_size = a3;
  if (v22)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v23 = *(v17 + 8);
    v23(a2, v16);
    v23(a1, v16);
    v24 = v9 + OBJC_IVAR____TtC21SwiftUITracingSupport14FileCompressor_compressor;
    swift_beginAccess();
    v25 = *(v24 + 48);
    v32[2] = *(v24 + 32);
    v32[3] = v25;
    v32[4] = *(v24 + 64);
    v26 = *(v24 + 16);
    v32[0] = *v24;
    v32[1] = v26;
    *v24 = a4;
    *(v24 + 8) = a3;
    *(v24 + 16) = v19;
    *(v24 + 24) = v21;
    *(v24 + 32) = 0;
    *(v24 + 40) = v20;
    *(v24 + 48) = v20 + a3;
    *(v24 + 64) = 0;
    *(v24 + 72) = 0;
    *(v24 + 56) = 0;
    outlined destroy of BufferCompressor?(v32);
    v27 = (v9 + OBJC_IVAR____TtC21SwiftUITracingSupport14FileCompressor_cb);
    *v27 = a5;
    v27[1] = a6;
    return v9;
  }

  return result;
}

uint64_t FileCompressor.init(src:dst:bufferSize:operation:progress:)(uint64_t a1, uint64_t a2, size_t a3, compression_stream_operation a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v12 = (v6 + OBJC_IVAR____TtC21SwiftUITracingSupport14FileCompressor_cb);
  *v12 = 0;
  v12[1] = 0;
  v13 = (v6 + OBJC_IVAR____TtC21SwiftUITracingSupport14FileCompressor_compressor);
  *v13 = 0u;
  v13[1] = 0u;
  v13[2] = 0u;
  v13[3] = 0u;
  v13[4] = xmmword_26C32F2B0;
  *(v6 + OBJC_IVAR____TtC21SwiftUITracingSupport14FileCompressor_total) = 0;
  *(v6 + OBJC_IVAR____TtC21SwiftUITracingSupport14FileCompressor_progress) = 0;
  v14 = OBJC_IVAR____TtC21SwiftUITracingSupport14FileCompressor_algorithm;
  v15 = *MEMORY[0x277D832D0];
  v16 = type metadata accessor for Algorithm();
  (*(*(v16 - 8) + 104))(v7 + v14, v15, v16);
  v17 = OBJC_IVAR____TtC21SwiftUITracingSupport14FileCompressor_src;
  v18 = type metadata accessor for URL();
  v19 = *(v18 - 8);
  v20 = *(v19 + 16);
  v35 = a1;
  v20(v7 + v17, a1, v18);
  v21 = a2;
  v20(v7 + OBJC_IVAR____TtC21SwiftUITracingSupport14FileCompressor_dest, a2, v18);
  v22 = Algorithm.rawValue.getter();
  v23 = swift_slowAlloc();
  v24 = swift_slowAlloc();
  v34 = a4;
  v25 = compression_stream_init(v24, a4, v22);
  v24->dst_ptr = v23;
  v24->dst_size = a3;
  if (v25)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v26 = *(v19 + 8);
    v26(v21, v18);
    v26(v35, v18);
    v27 = v7 + OBJC_IVAR____TtC21SwiftUITracingSupport14FileCompressor_compressor;
    swift_beginAccess();
    v28 = *(v27 + 48);
    v38[2] = *(v27 + 32);
    v38[3] = v28;
    v38[4] = *(v27 + 64);
    v29 = *(v27 + 16);
    v38[0] = *v27;
    v38[1] = v29;
    *v27 = v34;
    *(v27 + 8) = a3;
    *(v27 + 16) = v22;
    *(v27 + 24) = v24;
    *(v27 + 32) = 0;
    *(v27 + 40) = v23;
    *(v27 + 48) = v23 + a3;
    *(v27 + 64) = 0;
    *(v27 + 72) = 0;
    *(v27 + 56) = 0;
    outlined destroy of BufferCompressor?(v38);
    v30 = (v7 + OBJC_IVAR____TtC21SwiftUITracingSupport14FileCompressor_cb);
    v31 = *(v7 + OBJC_IVAR____TtC21SwiftUITracingSupport14FileCompressor_cb);
    v32 = *(v7 + OBJC_IVAR____TtC21SwiftUITracingSupport14FileCompressor_cb + 8);
    *v30 = a5;
    v30[1] = a6;
    outlined copy of (@escaping @callee_guaranteed (@unowned Double) -> ())?(a5, a6);
    outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v31, v32);
    outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(a5, a6);
    return v7;
  }

  return result;
}

uint64_t FileCompressor.deinit()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC21SwiftUITracingSupport14FileCompressor_compressor;
  swift_beginAccess();
  if (*(v2 + 64) != 1)
  {
    BufferCompressor.deallocate()();
  }

  swift_endAccess();
  v3 = OBJC_IVAR____TtC21SwiftUITracingSupport14FileCompressor_src;
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 8);
  v5(v1 + v3, v4);
  v5(v1 + OBJC_IVAR____TtC21SwiftUITracingSupport14FileCompressor_dest, v4);
  outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(*(v1 + OBJC_IVAR____TtC21SwiftUITracingSupport14FileCompressor_cb), *(v1 + OBJC_IVAR____TtC21SwiftUITracingSupport14FileCompressor_cb + 8));
  v6 = *(v2 + 48);
  v11[2] = *(v2 + 32);
  v11[3] = v6;
  v11[4] = *(v2 + 64);
  v7 = *(v2 + 16);
  v11[0] = *v2;
  v11[1] = v7;
  outlined destroy of BufferCompressor?(v11);
  v8 = OBJC_IVAR____TtC21SwiftUITracingSupport14FileCompressor_algorithm;
  v9 = type metadata accessor for Algorithm();
  (*(*(v9 - 8) + 8))(v1 + v8, v9);
  return v1;
}

uint64_t FileCompressor.__deallocating_deinit()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC21SwiftUITracingSupport14FileCompressor_compressor;
  swift_beginAccess();
  if (*(v2 + 64) != 1)
  {
    BufferCompressor.deallocate()();
  }

  swift_endAccess();
  v3 = OBJC_IVAR____TtC21SwiftUITracingSupport14FileCompressor_src;
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 8);
  v5(v1 + v3, v4);
  v5(v1 + OBJC_IVAR____TtC21SwiftUITracingSupport14FileCompressor_dest, v4);
  outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(*(v1 + OBJC_IVAR____TtC21SwiftUITracingSupport14FileCompressor_cb), *(v1 + OBJC_IVAR____TtC21SwiftUITracingSupport14FileCompressor_cb + 8));
  v6 = *(v2 + 48);
  v11[2] = *(v2 + 32);
  v11[3] = v6;
  v11[4] = *(v2 + 64);
  v7 = *(v2 + 16);
  v11[0] = *v2;
  v11[1] = v7;
  outlined destroy of BufferCompressor?(v11);
  v8 = OBJC_IVAR____TtC21SwiftUITracingSupport14FileCompressor_algorithm;
  v9 = type metadata accessor for Algorithm();
  (*(*(v9 - 8) + 8))(v1 + v8, v9);
  return swift_deallocClassInstance();
}

Swift::Void __swiftcall FileCompressor.run()()
{
  v1 = v0;
  v87 = *MEMORY[0x277D85DE8];
  v2 = type metadata accessor for URL();
  v77 = *(v2 - 8);
  v78 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v71 - v6;
  v76 = OBJC_IVAR____TtC21SwiftUITracingSupport14FileCompressor_src;
  if ((URL.regularFileExists.getter() & 1) == 0)
  {
    goto LABEL_50;
  }

  v8 = OBJC_IVAR____TtC21SwiftUITracingSupport14FileCompressor_dest;
  v9 = objc_opt_self();
  v10 = [v9 defaultManager];
  v11 = URL.path.getter();
  v12 = MEMORY[0x26D69CC20](v11);

  v13 = [v10 fileExistsAtPath_];

  if (v13)
  {
    *&v81 = 0;
    *(&v81 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(23);
    v86 = v1;
    type metadata accessor for FileCompressor(0);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x26D69CDB0](0xD000000000000015, 0x800000026C33CFF0);
    goto LABEL_49;
  }

  v75 = v8;
  URL.appendingPathExtension(_:)();
  v14 = [v9 defaultManager];
  v15 = URL.path.getter();
  v16 = MEMORY[0x26D69CC20](v15);

  v17 = [v14 fileExistsAtPath_];

  if (v17)
  {
    v18 = [v9 defaultManager];
    URL._bridgeToObjectiveC()(v19);
    v21 = v20;
    *&v81 = 0;
    v22 = [v18 removeItemAtURL:v20 error:&v81];

    v23 = v81;
    if (!v22)
    {
      goto LABEL_55;
    }

    v24 = v81;
  }

  v74 = v9;
  v25 = [v9 defaultManager];
  countAndFlagsBits = URL.path(percentEncoded:)(1)._countAndFlagsBits;
  v27 = MEMORY[0x26D69CC20](countAndFlagsBits);

  [v25 createFileAtPath:v27 contents:0 attributes:0];

  type metadata accessor for NSFileHandle();
  (*(v77 + 16))(v5, v7, v78);
  v28 = @nonobjc NSFileHandle.__allocating_init(forWritingTo:)(v5);
  v29 = URL.fileSize.getter();
  v30 = URL.openFd(mode:)(0);
  if ((v29 & 0x8000000000000000) != 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v31 = v30;
  v32 = mmap(0, v29, 1, 1, v30, 0);
  if (!v32)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v33 = v32;
  if (MEMORY[0x26D69C8C0]())
  {
    *&v81 = 0x203A292870616D6DLL;
    *(&v81 + 1) = 0xE800000000000000;
    LODWORD(v86) = MEMORY[0x26D69C8C0]();
    v68 = dispatch thunk of CustomStringConvertible.description.getter();
    v1 = v69;
    MEMORY[0x26D69CDB0](v68);

    goto LABEL_49;
  }

  v34 = swift_allocObject();
  *(v34 + 16) = v28;
  v76 = v1;
  v35 = v1 + OBJC_IVAR____TtC21SwiftUITracingSupport14FileCompressor_compressor;
  swift_beginAccess();
  v36 = *(v35 + 8);
  if (v36 == 1)
  {
    goto LABEL_44;
  }

  if (*(v35 + 7))
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v73 = v31;
  v37 = *(v35 + 9);
  *(v35 + 8) = partial apply for closure #1 in FileCompressor.run();
  *(v35 + 9) = v34;
  v72 = v28;
  outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v36, v37);
  swift_beginAccess();
  if (*(v35 + 8) == 1)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v38 = *(v35 + 3);
  v38->src_ptr = v33;
  v38->src_size = v29;
  v71 = v33;
  while (1)
  {
    v39 = compression_stream_process(v38, 0);
    if (v39)
    {
      if (v39 != COMPRESSION_STATUS_END)
      {
        if (v39 == COMPRESSION_STATUS_ERROR)
        {
          swift_endAccess();
          v81 = xmmword_26C32DAD0;
          LOBYTE(v82) = 1;
          *(&v82 + 1) = 0;
          *&v83 = 0;
          WORD4(v83) = 512;
          FileCompressor.describe(state:)(&v81);
        }

        while (1)
        {
LABEL_49:
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
LABEL_50:
          *&v81 = 0;
          *(&v81 + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(32);
          v86 = v1;
          type metadata accessor for FileCompressor(0);
          _print_unlocked<A, B>(_:_:)();
          MEMORY[0x26D69CDB0](0xD00000000000001ELL, 0x800000026C33CFD0);
        }
      }

      v35[32] = 1;
    }

    if (v38->dst_size && v35[32] != 1)
    {
      goto LABEL_14;
    }

    v41 = *(v35 + 5);
    v40 = *(v35 + 6);
    v42 = v40 - v41;
    if (v41)
    {
      v43 = v40 - v41;
    }

    else
    {
      v43 = 0;
    }

    v1 = *(v35 + 3);
    v44 = v1[1];
    v45 = __OFSUB__(v43, v44);
    v46 = v43 - v44;
    if (v45)
    {
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    if (v46 < 0)
    {
      goto LABEL_38;
    }

    if (!v41)
    {
      break;
    }

    v47 = v46 + v41;
    if (!v46)
    {
      goto LABEL_30;
    }

    v48 = *(v35 + 8);
    if (!v48)
    {
      goto LABEL_42;
    }

    v48(*(v35 + 5), v47);
LABEL_13:
    *v1 = v41;
    v1[1] = v42;
    *(v35 + 7) += v47 - v41;
LABEL_14:
    if (!v38->src_size)
    {
      goto LABEL_33;
    }
  }

  v47 = 0;
LABEL_30:
  v49 = *(v35 + 8);
  if (!v49)
  {
    goto LABEL_41;
  }

  v49(*(v35 + 5), v47);
  if (v41)
  {
    goto LABEL_13;
  }

  __break(1u);
LABEL_33:
  swift_endAccess();
  swift_beginAccess();
  if (*(v35 + 8) == 1)
  {
LABEL_46:
    __break(1u);
  }

  BufferCompressor.deallocate()();
  swift_endAccess();
  v50 = *(v35 + 3);
  v83 = *(v35 + 2);
  v84 = v50;
  v85 = *(v35 + 4);
  v51 = *(v35 + 1);
  v81 = *v35;
  v82 = v51;
  *v35 = 0u;
  *(v35 + 1) = 0u;
  *(v35 + 2) = 0u;
  *(v35 + 3) = 0u;
  *(v35 + 4) = xmmword_26C32F2B0;
  outlined destroy of BufferCompressor?(&v81);
  v52 = v74;
  v53 = [v74 defaultManager];
  v1 = v76;
  v54 = URL.path.getter();
  v55 = MEMORY[0x26D69CC20](v54);

  v56 = [v53 fileExistsAtPath_];

  if (v56)
  {
    v80[0] = 0;
    v80[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(23);
    v79 = v1;
    type metadata accessor for FileCompressor(0);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x26D69CDB0](0xD000000000000015, 0x800000026C33CFF0);
    goto LABEL_49;
  }

  v57 = [v52 defaultManager];
  URL._bridgeToObjectiveC()(v58);
  v60 = v59;
  URL._bridgeToObjectiveC()(v61);
  v63 = v62;
  v80[0] = 0;
  v64 = [v57 moveItemAtURL:v60 toURL:v62 error:v80];

  v66 = v77;
  v65 = v78;
  if (v64)
  {
    v67 = v80[0];
    munmap(v71, v29);
    close(v73);

    (*(v66 + 8))(v7, v65);
    return;
  }

  v23 = v80[0];
  _convertNSErrorToError(_:)();

  swift_willThrow();
  swift_unexpectedError();
  __break(1u);
LABEL_55:
  v70 = v23;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  swift_unexpectedError();
  __break(1u);
}