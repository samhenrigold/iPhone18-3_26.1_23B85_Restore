uint64_t Event.duration(within:)(uint64_t a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v6 = *(v1 + 25);
  v7 = *(v1 + 28);
  LODWORD(v8) = *(v1 + 32);
  LOBYTE(v28) = *(v1 + 24);
  v5 = v28;
  v9 = v6 == 0;
  v10 = 256;
  if (v9)
  {
    v10 = 0;
  }

  v11 = v10 | (v7 << 32);
  if (_s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v3, v4, v11 | v28, v8, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV5GroupV_Ttg5Tm))
  {
    v3 = 0;
    v12 = 0;
    v4 = *(v1 + 112);
    v8 = *(v1 + 124);
    v5 = 32;
LABEL_6:
    v13 = (v4 + 8 * v12);
    while (v8 != v12)
    {
      if (v12 >= v8)
      {
        goto LABEL_23;
      }

      if (!v4)
      {
        goto LABEL_26;
      }

      v11 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      v14 = *v13;
      v13 += 4;
      ++v12;
      if ((v14 & 0x4020) == 0x20)
      {
        v15 = *(v13 - 1);
        if (v15 >= *(a1 + 44))
        {
          goto LABEL_25;
        }

        v16 = *(a1 + 32);
        if (!v16)
        {
          goto LABEL_27;
        }

        v17 = (v16 + (v15 << 7));
        v18 = v17[5];
        v32 = v17[4];
        v33 = v18;
        v19 = v17[7];
        v34 = v17[6];
        v35 = v19;
        v20 = v17[1];
        v28 = *v17;
        v29 = v20;
        v21 = v17[3];
        v30 = v17[2];
        v31 = v21;
        v22 = Event.duration(within:)(a1);
        v12 = v11;
        v23 = __CFADD__(v3, v22);
        v3 += v22;
        if (!v23)
        {
          goto LABEL_6;
        }

        __break(1u);
        goto LABEL_17;
      }
    }

    return v3;
  }

LABEL_17:
  LOBYTE(v28) = v5;
  v24 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v3, v4, v11 | v5, v8, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV6UpdateV_Ttgq5Tm);
  if (v24)
  {
    v25 = v24[1];
    v3 = v25 - *v24;
    if (v25 >= *v24)
    {
      return v3;
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  else
  {
    LOBYTE(v28) = v5;
    if (_s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v3, v4, v11 | v5, v8, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV12InvalidationV_Ttgq5Tm))
    {
      return 0;
    }
  }

  *&v28 = 0;
  *(&v28 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(51);
  MEMORY[0x26D69CDB0](0xD000000000000031, 0x800000026C33B5C0);
  v28 = xmmword_26C32DAD0;
  LOBYTE(v29) = 1;
  *(&v29 + 1) = 0;
  *&v30 = 0;
  WORD4(v30) = 512;
  v27 = Event.describe(state:)(&v28);
  MEMORY[0x26D69CDB0](v27);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t Event.distance(to:within:)(uint64_t a1, uint64_t a2)
{
_$s21SwiftUITracingSupport5EventV8distance2to6withins6UInt64VAA0D3RefV_AA8SnapshotVtF:
  v3 = a2;
  v4 = a1;
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  v8 = *(v2 + 25);
  v9 = *(v2 + 28);
  v10 = *(v2 + 32);
  LOBYTE(v55) = *(v2 + 24);
  v7 = v55;
  v11 = v8 == 0;
  v12 = 256;
  if (v11)
  {
    v12 = 0;
  }

  v13 = v12 | (v9 << 32);
  if (_s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v5, v6, v13 | v55, v10, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV5GroupV_Ttg5Tm))
  {
    v14 = *(v2 + 124) + 1;
    v15 = *(v2 + 112);
    while (--v14)
    {
      if (!*(v2 + 112))
      {
        goto LABEL_42;
      }

      v16 = v15 + 4;
      v17 = *v15 & 0x8080;
      v15 += 4;
      if (v17 == 128)
      {
        v18 = *(v16 - 1);
        if (v18 >= *(v3 + 44))
        {
          __break(1u);
          goto LABEL_38;
        }

        v19 = *(v3 + 32);
        if (!v19)
        {
          goto LABEL_45;
        }

        v20 = (v19 + (v18 << 7));
        v21 = v20[5];
        v59 = v20[4];
        v60 = v21;
        v22 = v20[7];
        v61 = v20[6];
        v62 = v22;
        v23 = v20[1];
        v55 = *v20;
        v56 = v23;
        v24 = v20[3];
        v57 = v20[2];
        v58 = v24;
        return Event.distance(to:within:)(v4, v3);
      }
    }

    goto LABEL_41;
  }

  if (*(v3 + 44) <= v4)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
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

  v26 = *(v3 + 32);
  if (!v26)
  {
LABEL_46:
    __break(1u);
LABEL_47:
    *&v55 = 0;
    *(&v55 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(51);
    v49 = v55;
    MEMORY[0x26D69CDB0](0xD000000000000031, 0x800000026C33B5C0);
    v55 = xmmword_26C32DAD0;
    LOBYTE(v56) = 1;
    *(&v56 + 1) = 0;
    *&v57 = 0;
    WORD4(v57) = 512;
    v47 = Event.describe(state:)(&v55);
    MEMORY[0x26D69CDB0](v47);

LABEL_49:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v27 = v26 + (v4 << 7);
  v28 = *(v27 + 8);
  v29 = *(v27 + 16);
  v30 = *(v27 + 25);
  v32 = *(v27 + 28);
  v31 = *(v27 + 32);
  LOBYTE(v55) = *(v27 + 24);
  v11 = v30 == 0;
  v33 = 256;
  if (v11)
  {
    v33 = 0;
  }

  if (_s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v28, v29, v33 | (v32 << 32) | v55, v31, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV5GroupV_Ttg5Tm))
  {
    v34 = *(v27 + 124) + 1;
    v35 = *(v27 + 112);
    while (--v34)
    {
      if (!*(v27 + 112))
      {
        goto LABEL_44;
      }

      v36 = v35 + 4;
      v37 = *v35 & 0x8080;
      v35 += 4;
      if (v37 == 128)
      {
        a1 = *(v36 - 1);
        a2 = v3;
        v2 = v63;

        goto _$s21SwiftUITracingSupport5EventV8distance2to6withins6UInt64VAA0D3RefV_AA8SnapshotVtF;
      }
    }

    goto LABEL_43;
  }

  LOBYTE(v55) = v7;
  v38 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v5, v6, v13 | v7, v10, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV6UpdateV_Ttgq5Tm);
  if (!v38)
  {
    LOBYTE(v55) = v7;
    v38 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v5, v6, v13 | v7, v10, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV12InvalidationV_Ttgq5Tm);
    if (!v38)
    {
      goto LABEL_47;
    }
  }

  v39 = *v38;
  if (*v38 < 0)
  {
    goto LABEL_39;
  }

  v40 = *(v27 + 16);
  v55 = *v27;
  v56 = v40;
  v41 = *(v27 + 80);
  v59 = *(v27 + 64);
  v60 = v41;
  v42 = *(v27 + 112);
  v61 = *(v27 + 96);
  v62 = v42;
  v43 = *(v27 + 48);
  v57 = *(v27 + 32);
  v58 = v43;
  LOBYTE(v49) = BYTE8(v56);
  v44 = 256;
  if (!BYTE9(v56))
  {
    v44 = 0;
  }

  v45 = v44 | (HIDWORD(v56) << 32);
  v46 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(*(&v55 + 1), v56, v45 | BYTE8(v56), v57, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV6UpdateV_Ttgq5Tm);
  if (!v46)
  {
    LOBYTE(v49) = BYTE8(v56);
    v46 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(*(&v55 + 1), v56, v45 | BYTE8(v56), v57, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV12InvalidationV_Ttgq5Tm);
    if (!v46)
    {
      *&v49 = 0;
      *(&v49 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(51);
      v54 = v49;
      MEMORY[0x26D69CDB0](0xD000000000000031, 0x800000026C33B5C0);
      v49 = xmmword_26C32DAD0;
      v50 = 1;
      v51 = 0;
      v52 = 0;
      v53 = 512;
      v48 = Event.describe(state:)(&v49);
      MEMORY[0x26D69CDB0](v48);

      goto LABEL_49;
    }
  }

  if ((*v46 & 0x8000000000000000) != 0)
  {
    goto LABEL_40;
  }

  if (v39 - *v46 >= 0)
  {
    return v39 - *v46;
  }

  else
  {
    return *v46 - v39;
  }
}

void Event.hide(_:within:)(__int128 *a1, unsigned __int8 *a2)
{
  Event.relate(_:_:swapping:)(40992, *a1, 1);
  v5 = *v2;
  Event.relate(_:_:swapping:)(24608, *v2, 1);
  v6 = a1[1];
  v29 = *a1;
  v30 = v6;
  v7 = a1[5];
  v33 = a1[4];
  v34 = v7;
  v8 = a1[7];
  v35 = a1[6];
  v36 = v8;
  v9 = a1[3];
  v31 = a1[2];
  v32 = v9;
  LOBYTE(v27) = BYTE8(v30);
  v10 = 256;
  if (!BYTE9(v30))
  {
    v10 = 0;
  }

  v11 = v10 | (HIDWORD(v30) << 32);
  v12 = HeterogeneousBuffer.type(at:)(0, *(&v29 + 1), v30, v10 | BYTE8(v30), v31);
  v13 = swift_conformsToProtocol2();
  if (!v13)
  {
    goto LABEL_18;
  }

  v14 = v13;
  v15 = HeterogeneousBuffer.index(after:)(0, *(&v29 + 1), v30, v11 | BYTE8(v30), v31);
  LOBYTE(v27) = BYTE8(v30);
  v16 = HeterogeneousBuffer.type(at:)(v15, *(&v29 + 1), v30, v11 | BYTE8(v30), v31);
  v17 = swift_conformsToProtocol2();
  if (!v17)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  project #1 <A, B>(_:_:) in Event.id.getter(v16, &v29, v12, v14, v17, &v27);
  if (v27 != &type metadata for Event.AttributeValue && v27 != &type metadata for Event.AttributeStack)
  {
    goto LABEL_14;
  }

  if (a2[48])
  {
    goto LABEL_20;
  }

  v18 = *(a2 + 22);
  v19 = *a2;
  if (v19 >= *(v18 + 116))
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v20 = *(v18 + 104);
  if (!v20)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v21 = *(*(v20 + 8 * v19) + 8);
  if (v28 >= *(v21 + 84))
  {
    goto LABEL_16;
  }

  v22 = *(v21 + 72);
  if (v22)
  {
    v23 = v22 + 312 * v28;
    v24 = *(v23 + 240);
    v25 = __OFADD__(v24, *(&v31 + 1));
    v26 = v24 + *(&v31 + 1);
    if (!v25)
    {
      *(v23 + 240) = v26;
LABEL_14:
      Interpreter.Iterator.addTime(rootedAt:partial:)(v5, v29);
      return;
    }

    goto LABEL_17;
  }

LABEL_22:
  __break(1u);
}

uint64_t closure #1 in Event.related(_:within:limit:collectedInto:clear:includeSelf:)(uint64_t result, uint64_t *a2, uint64_t a3, unsigned __int16 a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *result;
  if (v7 >= *(a3 + 44))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v8 = *(a3 + 32);
  if (!v8)
  {
LABEL_33:
    __break(1u);
    return result;
  }

  v9 = v8 + (v7 << 7);
  v10 = *(v9 + 124);
  if (v10)
  {
    v11 = a2;
    v12 = 0;
    v13 = a4;
    v14 = *(v9 + 112);
    v15 = a4 & 0xC000;
    v16 = a4 & 0x1FFF;
    v17 = (v14 + 4);
    v34 = v16;
    while (1)
    {
      if (!v14)
      {
        goto LABEL_32;
      }

      if (__OFADD__(v12, 1))
      {
        goto LABEL_28;
      }

      v18 = *(v17 - 2);
      if ((!v15 || (v18 & (v15 ^ 0xC000)) == 0) && ((v13 & 0x2000) == 0 || (v18 & 0x2000) != 0))
      {
        if (v16)
        {
          if ((v16 & v18) == 0)
          {
            goto LABEL_24;
          }
        }

        else if (!v13)
        {
          goto LABEL_24;
        }

        v19 = v11[8];
        if (v19 < a5)
        {
          v20 = v19 + 1;
          if ((a7 * (v19 + 1)) >> 64 != (a7 * (v19 + 1)) >> 63)
          {
            goto LABEL_29;
          }

          v32 = *v17;
          result = specialized DepthMap.insert(_:at:)(*v17, a7 * (v19 + 1));
          v16 = v34;
          v11 = a2;
          if (result)
          {
            v21 = a2[10];
            v22 = __OFADD__(v21, 1);
            v23 = v21 + 1;
            if (v22)
            {
              goto LABEL_31;
            }

            a2[10] = v23;
            v24 = *a2;
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 16) + 1, 1, v24);
              v24 = result;
            }

            v26 = *(v24 + 16);
            v25 = *(v24 + 24);
            v27 = v26 + 1;
            if (v26 >= v25 >> 1)
            {
              v31 = v26 + 1;
              v29 = v24;
              v30 = *(v24 + 16);
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v29);
              v27 = v31;
              v26 = v30;
              v24 = result;
            }

            *(v24 + 16) = v27;
            v28 = v24 + 16 * v26;
            *(v28 + 32) = v32;
            *(v28 + 40) = v20;
            v11 = a2;
            *a2 = v24;
            v16 = v34;
          }
        }
      }

LABEL_24:
      if (v12 + 1 == v10)
      {
        return result;
      }

      v17 += 2;
      if (++v12 >= v10)
      {
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }
  }

  return result;
}

uint64_t Event.subscript.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = 256;
  if (!*(v2 + 25))
  {
    v5 = 0;
  }

  v6 = HeterogeneousBuffer.findValuePointerAs<A>(_:)(a1, *(v2 + 8), *(v2 + 16), v5 | (*(v2 + 28) << 32) | *(v2 + 24), *(v2 + 32), a1);
  if (v6)
  {
    v11 = *(a1 - 8);
    (*(v11 + 16))(a2, v6, a1);
    v7 = v11;
    v8 = 0;
  }

  else
  {
    v7 = *(a1 - 8);
    v8 = 1;
  }

  v9 = *(v7 + 56);

  return v9(a2, v8, 1, a1);
}

uint64_t Event.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v39 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v38 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v38 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v41 = v9;
  v42 = a1;
  v20 = *(v9 + 16);
  v45 = v21;
  v43 = v20;
  (v20)(v17, a1);
  v44 = *(v6 + 48);
  if (v44(v17, 1, a3) == 1)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v22 = *(v6 + 32);
  v22(v19, v17, a3);
  (*(v6 + 56))(v19, 0, 1, a3);
  v23 = *(v3 + 8);
  v24 = *(v3 + 16);
  v25 = v3 + 8;
  v26 = *(v25 + 17);
  v28 = *(v25 + 20);
  v27 = *(v25 + 24);
  LOBYTE(v46) = *(v25 + 16);
  v29 = v26 == 0;
  v30 = 256;
  if (v29)
  {
    v30 = 0;
  }

  v31 = HeterogeneousBuffer.findValuePointerAs<A>(_:)(a3, v23, v24, v30 | (v28 << 32) | v46, v27, a3);
  if (v31)
  {
    v17 = v31;
    v32 = v45;
    v43(v14, v19, v45);
    if (v44(v14, 1, a3) != 1)
    {
      (*(v6 + 40))(v17, v14, a3);
      v33 = *(v41 + 8);
      v33(v42, v32);
      return (v33)(v19, v32);
    }

    goto LABEL_12;
  }

  v38 = v22;
  v17 = v39;
  v14 = v45;
  v43(v39, v19, v45);
  if (v44(v17, 1, a3) == 1)
  {
LABEL_13:
    (*(v41 + 8))(v17, v14);
    v46 = 0;
    v47 = 0xE000000000000000;
    _StringGuts.grow(_:)(114);
    MEMORY[0x26D69CDB0](0xD000000000000038, 0x800000026C33C090);
    v37 = _typeName(_:qualified:)();
    MEMORY[0x26D69CDB0](v37);

    MEMORY[0x26D69CDB0](0xD000000000000038, 0x800000026C33C0D0);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v35 = v40;
  v38(v40, v17, a3);
  HeterogeneousBuffer.insert<A>(_:)(v35, a3);
  v36 = *(v41 + 8);
  v36(v42, v14);
  (*(v6 + 8))(v35, a3);
  return (v36)(v19, v14);
}

void (*Event.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, uint64_t a2)
{
  v9 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0xC0uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[18] = a4;
  v10[19] = v4;
  v10[16] = a2;
  v10[17] = a3;
  v12 = type metadata accessor for Optional();
  v11[20] = v12;
  v13 = *(v12 - 8);
  v11[21] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v11[22] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v11[22] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v11[23] = v15;
  v16 = *v4;
  v17 = v4[1];
  v18 = v4[3];
  *(v11 + 2) = v4[2];
  *(v11 + 3) = v18;
  *v11 = v16;
  *(v11 + 1) = v17;
  v19 = v4[4];
  v20 = v4[5];
  v21 = v4[7];
  *(v11 + 6) = v4[6];
  *(v11 + 7) = v21;
  *(v11 + 4) = v19;
  *(v11 + 5) = v20;
  Event.subscript.getter(a3, v15);
  return Event.subscript.modify;
}

void Event.subscript.modify(uint64_t **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = (*a1)[22];
  v4 = (*a1)[23];
  if (a2)
  {
    v5 = v2[20];
    v6 = v2[21];
    v7 = v2[17];
    (*(v6 + 16))((*a1)[22], v4, v5);
    Event.subscript.setter(v3, v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    Event.subscript.setter((*a1)[23], a2, v2[17]);
  }

  free(v4);
  free(v3);

  free(v2);
}

void (*Event.subscript.modify(void *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6))(uint64_t **a1, char a2)
{
  v11 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(0xB0uLL);
  }

  v13 = v12;
  *a1 = v12;
  v12[17] = a6;
  v12[18] = v6;
  v12[16] = a5;
  v14 = *(a5 - 8);
  v12[19] = v14;
  v15 = *(v14 + 64);
  if (v11)
  {
    v12[20] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v12[20] = malloc(*(v14 + 64));
    v16 = malloc(v15);
  }

  v13[21] = v16;
  v17 = *v6;
  v18 = v6[1];
  v19 = v6[3];
  *(v13 + 2) = v6[2];
  *(v13 + 3) = v19;
  *v13 = v17;
  *(v13 + 1) = v18;
  v20 = v6[4];
  v21 = v6[5];
  v22 = v6[7];
  *(v13 + 6) = v6[6];
  *(v13 + 7) = v22;
  *(v13 + 4) = v20;
  *(v13 + 5) = v21;
  Event.subscript.getter(a3, a5, v16);
  return Event.subscript.modify;
}

void Event.subscript.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[20];
  v4 = (*a1)[21];
  if (a2)
  {
    v5 = v2[19];
    v6 = v2[16];
    (*(v5 + 16))((*a1)[20], v4, v6);
    specialized Event.subscript.setter(v3, v6);
    (*(v5 + 8))(v4, v6);
  }

  else
  {
    specialized Event.subscript.setter((*a1)[21], v2[16]);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t Event.relatedTo(_:)(uint64_t result)
{
  v2 = *(v1 + 124);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v1 + 112);
  while (*(v1 + 112))
  {
    v4 = *v3;
    if (((result & 0xC000) == 0 || (v4 & (result & 0xC000 ^ 0xC000)) == 0) && ((result & 0x2000) == 0 || (v4 & 0x2000) != 0))
    {
      if ((result & 0x1FFF) != 0)
      {
        if ((result & 0x1FFF & v4) != 0)
        {
          return 1;
        }
      }

      else if (result)
      {
        return 1;
      }
    }

    v3 += 4;
    if (!--v2)
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

{
  v2 = *(v1 + 124);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v1 + 112);
  v4 = (v3 + 4);
  while (v3)
  {
    if (*v4 == HIDWORD(result))
    {
      v5 = *(v4 - 2);
      if (((result & 0xC000) == 0 || (v5 & (result & 0xC000 ^ 0xC000)) == 0) && ((result & 0x2000) == 0 || (v5 & 0x2000) != 0))
      {
        if ((result & 0x1FFF) != 0)
        {
          if ((result & 0x1FFF & v5) != 0)
          {
            return 1;
          }
        }

        else if (result)
        {
          return 1;
        }
      }
    }

    v4 += 2;
    if (!--v2)
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

BOOL Event.contains(event:within:)(_BOOL8 result)
{
  if (*v1 == result)
  {
    return 1;
  }

  v2 = *(v1 + 112);
  v3 = (v2 + 4);
  v4 = *(v1 + 124) + 1;
  while (1)
  {
    if (!--v4)
    {
      return v4 != 0;
    }

    if (!v2)
    {
      break;
    }

    v5 = v3;
    v3 += 2;
    if (*v5 == result && (*(v5 - 1) & 0x4020) == 0x20)
    {
      return v4 != 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t Event.relatedTo(_:_:)(uint64_t result, int a2)
{
  v3 = *(v2 + 124);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v2 + 112);
  v5 = (v4 + 4);
  while (v4)
  {
    if (*v5 == a2)
    {
      v6 = *(v5 - 2);
      if (((result & 0xC000) == 0 || (v6 & (result & 0xC000 ^ 0xC000)) == 0) && ((result & 0x2000) == 0 || (v6 & 0x2000) != 0))
      {
        if ((result & 0x1FFF) != 0)
        {
          if ((result & 0x1FFF & v6) != 0)
          {
            return 1;
          }
        }

        else if (result)
        {
          return 1;
        }
      }
    }

    v5 += 2;
    if (!--v3)
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

ValueMetadata *Event.displayName(within:)(uint64_t a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 25);
  v7 = *(v1 + 28);
  v6 = *(v1 + 32);
  LOBYTE(v32) = *(v1 + 24);
  v8 = v5 == 0;
  v9 = 256;
  if (v8)
  {
    v9 = 0;
  }

  result = specialized HeterogeneousBuffer.valuePointer<A>(for:)(0, v3, v4, v9 | (v7 << 32) | v32, v6);
  v11 = 0;
  Description = result->Description;
  Kind = result[1].Kind;
  v14 = *(v1 + 124);
  v15 = *(v1 + 112);
  do
  {
    if (v14 == v11)
    {
      goto LABEL_21;
    }

    if (!*(v1 + 112))
    {
      goto LABEL_22;
    }

    ++v11;
    v16 = *v15;
    v15 += 4;
  }

  while ((v16 & 0x80808080) != 0x80);
  v17 = *(v15 - 1);
  if (v14 != v11)
  {
    while (v11 < v14)
    {
      if ((*v15 & 0x8080) == 0x80)
      {
        goto LABEL_23;
      }

      ++v11;
      v15 += 4;
      if (v14 == v11)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_12:
  if (v17 >= *(a1 + 44))
  {
    goto LABEL_20;
  }

  v18 = *(a1 + 32);
  if (!v18)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v19 = (v18 + (v17 << 7));
  v20 = v19[1];
  v32 = *v19;
  v33 = v20;
  v21 = v19[5];
  v36 = v19[4];
  v37 = v21;
  v22 = v19[7];
  v38 = v19[6];
  v39 = v22;
  v23 = v19[3];
  v34 = v19[2];
  v35 = v23;
  v31[0] = BYTE8(v33);
  v24 = 256;
  if (!BYTE9(v33))
  {
    v24 = 0;
  }

  v25 = v24 | (HIDWORD(v33) << 32);
  v26 = HeterogeneousBuffer.type(at:)(0, *(&v32 + 1), v33, v24 | BYTE8(v33), v34);
  result = swift_conformsToProtocol2();
  if (!result)
  {
    goto LABEL_25;
  }

  v27 = result;
  v28 = HeterogeneousBuffer.index(after:)(0, *(&v32 + 1), v33, v25 | BYTE8(v33), v34);
  v31[0] = BYTE8(v33);
  v29 = HeterogeneousBuffer.type(at:)(v28, *(&v32 + 1), v33, v25 | BYTE8(v33), v34);
  result = swift_conformsToProtocol2();
  if (result)
  {
    v30 = project #1 <A, B>(_:_:) in Event.id.getter(v29, &v32, v26, v27, result, v31);
    (*(Kind + 24))(&v42, v31, a1, Description, Kind, v30);
    v40 = v42;
    v41 = v43;
    return (*(Kind + 8))(&v40, a1, Description, Kind);
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t static EventAbstraction.displayName(source:within:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 24))(&v10, a1);
  v8 = v10;
  v9 = v11;
  return (*(a4 + 8))(&v8, a2, a3, a4);
}

Swift::Void __swiftcall Event.copy()()
{
  v1 = v0;
  HeterogeneousBuffer.copy()();
  v2 = *(v0 + 112);
  if (v2)
  {
    v3 = *(v1 + 124);
    v4 = swift_slowAlloc();
    *(v1 + 112) = v4;

    memcpy(v4, v2, 8 * v3);
  }
}

uint64_t protocol witness for Deallocatable.deallocate() in conformance Event()
{
  HeterogeneousBuffer.deallocate()();
  result = *(v0 + 112);
  if (result)
  {
    result = MEMORY[0x26D69EAB0](result, -1, -1);
    *(v0 + 112) = 0;
  }

  return result;
}

void protocol witness for Clonable.copy() in conformance Event()
{
  v1 = v0;
  HeterogeneousBuffer.copy()();
  v2 = *(v0 + 112);
  if (v2)
  {
    v3 = *(v1 + 124);
    v4 = swift_slowAlloc();
    *(v1 + 112) = v4;

    memcpy(v4, v2, 8 * v3);
  }
}

uint64_t static EventAbstraction.relationship.getter()
{
  return 3075;
}

{
  return 3075;
}

uint64_t specialized static EventAbstraction.buildCache(update:within:)@<X0>(uint64_t result@<X0>, unsigned __int8 *a2@<X1>, __int128 *a3@<X8>)
{
  if (a2[48])
  {
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

  v6 = *(a2 + 22);
  v7 = *a2;
  if (v7 >= *(v6 + 29))
  {
LABEL_50:
    __break(1u);
LABEL_51:
    v37 = a2;
    result = swift_once();
    a2 = v37;
    goto LABEL_5;
  }

  v8 = *(v6 + 13);
  if (!v8)
  {
    goto LABEL_63;
  }

  v3 = result;
  v4 = *(*(v8 + 8 * v7) + 8);
  if (one-time initialization token for types != -1)
  {
    goto LABEL_51;
  }

LABEL_5:
  v9 = static ViewList.types;
  v10 = *(static ViewList.types + 2);
  if (v10)
  {
    v39 = v6;
    v40 = a3;
    v41 = a2;
    v11 = 0;
    v6 = static ViewList.types + 32;
    while (1)
    {
      if (v11 >= v9[2])
      {
        __break(1u);
LABEL_44:
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
        goto LABEL_50;
      }

      if (*(v4 + 44) <= v3)
      {
        goto LABEL_44;
      }

      v12 = *(v4 + 32);
      if (!v12)
      {
        break;
      }

      v13 = v12 + (v3 << 7);
      v16 = *(v13 + 8);
      v15 = v13 + 8;
      v14 = v16;
      if (!*(v15 + 24))
      {
        goto LABEL_45;
      }

      if (*(v15 + 16))
      {
        goto LABEL_57;
      }

      if (!v14)
      {
        goto LABEL_56;
      }

      if (*v14 == &type metadata for Event.AttributeValue)
      {
        v17 = *(v6 + 3);
        v44 = *(v6 + 2);
        v45[0] = v17;
        *(v45 + 14) = *(v6 + 62);
        v18 = *(v6 + 1);
        v42 = *v6;
        v43 = v18;
        v19 = *(v14 + 8);
        if (v19 >= *(v4 + 84))
        {
          goto LABEL_46;
        }

        v20 = *(v4 + 72);
        if (!v20)
        {
          goto LABEL_58;
        }

        a3 = &v42;
        result = Attribute.Pattern.match(_:within:)(*(v20 + 312 * v19 + 32), v4);
        if (result)
        {
          a2 = v41;
          if (v41[48])
          {
            goto LABEL_65;
          }

          v21 = *v41;
          if (v21 >= *(v39 + 29))
          {
LABEL_53:
            __break(1u);
          }

          else
          {
            v22 = *(v39 + 13);
            if (!v22)
            {
              goto LABEL_66;
            }

            v4 = *(*(v22 + 8 * v21) + 8);
            if (one-time initialization token for types == -1)
            {
LABEL_22:
              v23 = static ViewBodies.types;
              v24 = *(static ViewBodies.types + 2);
              if (!v24)
              {
                v35 = 1;
                a3 = v40;
                goto LABEL_38;
              }

              v6 = 0;
              v25 = static ViewBodies.types + 32;
              while (v6 < v23[2])
              {
                if (*(v4 + 44) <= v3)
                {
                  goto LABEL_48;
                }

                v26 = *(v4 + 32);
                if (!v26)
                {
                  goto LABEL_59;
                }

                v27 = v26 + (v3 << 7);
                v30 = *(v27 + 8);
                v29 = v27 + 8;
                v28 = v30;
                if (!*(v29 + 24))
                {
                  goto LABEL_49;
                }

                if (*(v29 + 16))
                {
                  goto LABEL_61;
                }

                if (!v28)
                {
                  goto LABEL_60;
                }

                if (*v28 == &type metadata for Event.AttributeValue)
                {
                  v31 = *(v25 + 3);
                  v44 = *(v25 + 2);
                  v45[0] = v31;
                  *(v45 + 14) = *(v25 + 62);
                  v32 = *(v25 + 1);
                  v42 = *v25;
                  v43 = v32;
                  v33 = *(v28 + 8);
                  if (v33 >= *(v4 + 84))
                  {
                    __break(1u);
                    goto LABEL_53;
                  }

                  v34 = *(v4 + 72);
                  if (!v34)
                  {
                    goto LABEL_64;
                  }

                  a3 = &v42;
                  result = Attribute.Pattern.match(_:within:)(*(v34 + 312 * v33 + 32), v4);
                  if (result)
                  {
                    goto LABEL_35;
                  }
                }

                ++v6;
                v25 += 72;
                if (v24 == v6)
                {
                  v35 = 1;
                  goto LABEL_36;
                }
              }

              goto LABEL_47;
            }
          }

          v38 = a2;
          result = swift_once();
          a2 = v38;
          goto LABEL_22;
        }
      }

      ++v11;
      v6 += 72;
      if (v10 == v11)
      {
LABEL_35:
        v35 = 0;
LABEL_36:
        a3 = v40;
        a2 = v41;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_56:
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
    goto LABEL_62;
  }

  v35 = 0;
LABEL_38:
  result = _s21SwiftUITracingSupport21TypedEventAbstractionPAAE12hasOwnership3for6withinSbAA0E3RefV_AA11InterpreterC8IteratorVztFZAA10ViewBodiesV_Tt1g5Tm(v3, a2, &one-time initialization token for types, &static ViewList.types, one-time initialization function for types);
  v36 = v35 | 2;
  if ((result & 1) == 0)
  {
    v36 = v35;
  }

  *a3 = v36;
  return result;
}

uint64_t static EventAbstraction.buildCache(update:within:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v10 = (*(a4 + 40))() & 1;
  result = (*(a4 + 72))(a1, a2, a3, a4);
  v12 = v10 | 2;
  if ((result & 1) == 0)
  {
    v12 = v10;
  }

  *a5 = v12;
  return result;
}

BOOL specialized static EventAbstraction.model(update:within:position:)(unint64_t a1, unsigned __int8 *a2, unsigned __int8 a3)
{
  v8 = a1;
  v46 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v45 = 0;
  if (a3)
  {
    a1 = specialized static Allocation.new(from:within:)(a1, a2);
    v45 = (a1 & 0x100000000) == 0;
  }

  if ((v9 & 2) == 0)
  {
    return v45;
  }

  if (a2[48])
  {
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:

    v43 = v5;
    goto LABEL_69;
  }

  v10 = *(a2 + 22);
  v11 = *a2;
  if (v11 >= *(v10 + 116))
  {
    goto LABEL_53;
  }

  v12 = *(v10 + 104);
  if (!v12)
  {
    goto LABEL_66;
  }

  v13 = *(*(v12 + 8 * v11) + 8);
  if (*(v13 + 44) <= v8)
  {
    goto LABEL_54;
  }

  v14 = *(v13 + 32);
  if (!v14)
  {
    goto LABEL_67;
  }

  v9 = 0;
  v5 = v14 + (v8 << 7);
  v4 = *(v5 + 124);
  if (v4 >= 0x101)
  {
    goto LABEL_55;
  }

  do
  {
    isStackAllocationSafe = MEMORY[0x28223BE20](a1);
    v18 = (v44 - v17);
    v19 = 0;
    v20 = 0;
    v21 = *(v5 + 112);
LABEL_11:
    v22 = (v21 + 8 * v20);
    while (v4 != v20)
    {
      if (v20 >= v4)
      {
        goto LABEL_47;
      }

      if (!v21)
      {
        goto LABEL_61;
      }

      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        goto LABEL_48;
      }

      v24 = *v22;
      v22 += 4;
      ++v20;
      if ((v24 & 0x8004) == 4)
      {
        if (__OFADD__(v19, 1))
        {
          goto LABEL_59;
        }

        v18[v19++] = *(v22 - 1);
        v20 = v23;
        goto LABEL_11;
      }
    }

    if (v19 < 0)
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
    }

    v44[0] = v16;
    if (!v19)
    {
      return v45;
    }

    v25 = &v18[v19];
    v6 = 32800;
    while (1)
    {
      if (a2[48])
      {
        goto LABEL_62;
      }

      v26 = *(a2 + 22);
      v27 = *a2;
      if (v27 >= *(v26 + 116))
      {
        goto LABEL_49;
      }

      v28 = *(v26 + 104);
      if (!v28)
      {
        goto LABEL_63;
      }

      v29 = *v18;
      v30 = *(*(v28 + 8 * v27) + 8);
      if (v29 >= *(v30 + 44))
      {
        goto LABEL_50;
      }

      v31 = *(v30 + 32);
      if (!v31)
      {
        goto LABEL_64;
      }

      v4 = *(v31 + (v29 << 7) + 124);
      v5 = 4 * v4;
      if (v4 < 0x101)
      {
        break;
      }

      v41 = v31 + (v29 << 7);
      isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
      if (isStackAllocationSafe)
      {
        break;
      }

      v5 = swift_slowAlloc();
      specialized closure #1 in static Event.each(_:of:do:)(v5, v4, v41, 16416, a2, v3, &v45, v8);
      if (v9)
      {
        goto LABEL_68;
      }

      isStackAllocationSafe = MEMORY[0x26D69EAB0](v5, -1, -1);
LABEL_39:
      if (++v18 == v25)
      {
        return v45;
      }
    }

    MEMORY[0x28223BE20](isStackAllocationSafe);
    v34 = (v44 - v33);
    v35 = 0;
    v36 = 0;
    v37 = *(v32 + 112);
LABEL_29:
    v38 = (v37 + 8 * v36);
    while (1)
    {
      if (v4 == v36)
      {
        if (v35 < 0)
        {
          goto LABEL_51;
        }

        isStackAllocationSafe = specialized closure #1 in closure #1 in static EventAbstraction.model(update:within:position:)(v34, v35, v32, a2, v3, &v45, v8);
        goto LABEL_39;
      }

      if (v36 >= v4)
      {
        break;
      }

      if (!v37)
      {
        goto LABEL_60;
      }

      v39 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        goto LABEL_46;
      }

      v40 = *v38;
      v38 += 4;
      ++v36;
      if ((v40 & 0x8020) == 0x20)
      {
        if (__OFADD__(v35, 1))
        {
          goto LABEL_52;
        }

        v34[v35++] = *(v38 - 1);
        v36 = v39;
        goto LABEL_29;
      }
    }

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
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    a1 = swift_stdlib_isStackAllocationSafe();
  }

  while ((a1 & 1) != 0);
  v6 = swift_slowAlloc();
  specialized closure #1 in static Event.each(_:of:do:)(v6, v4, v5, 16388, a2, v3, &v45, v8);
  if (v9)
  {
    while (1)
    {

      v43 = v6;
LABEL_69:
      MEMORY[0x26D69EAB0](v43, -1, -1);
      __break(1u);
    }
  }

  MEMORY[0x26D69EAB0](v6, -1, -1);
  return v45;
}

uint64_t specialized static EventAbstraction.model(update:within:position:)(uint64_t isStackAllocationSafe, unsigned __int8 *a2, uint64_t a3)
{
  v8 = v3;
  v10 = isStackAllocationSafe;
  v50 = *MEMORY[0x277D85DE8];
  v49 = 0;
  if ((a3 & 1) == 0)
  {
    goto LABEL_9;
  }

  if (one-time initialization token for types != -1)
  {
    goto LABEL_60;
  }

  if (!a2[48])
  {
    goto LABEL_4;
  }

LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
  while (1)
  {
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      break;
    }

    while (2)
    {
      v19 = MEMORY[0x28223BE20](isStackAllocationSafe);
      v22 = (v48 - v21);
      v23 = 0;
      v24 = 0;
      v25 = *(v6 + 112);
LABEL_17:
      v26 = (v25 + 8 * v24);
      while (v5 != v24)
      {
        if (v24 >= v5)
        {
          goto LABEL_54;
        }

        if (!v25)
        {
          goto LABEL_71;
        }

        v27 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_55;
        }

        v29 = *v26;
        v26 += 4;
        v28 = v29;
        ++v24;
        if ((v29 & 0x8000) == 0 && (v28 & 0xC03) != 0)
        {
          if (__OFADD__(v23, 1))
          {
            goto LABEL_69;
          }

          v22[v23++] = *(v26 - 1);
          v24 = v27;
          goto LABEL_17;
        }
      }

      if (v23 < 0)
      {
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
      }

      v48[0] = v20;
      if (!v23)
      {
        return v49;
      }

      v30 = &v22[v23];
      v7 = 32800;
      while (1)
      {
        if (a2[48])
        {
          goto LABEL_72;
        }

        v31 = *(a2 + 22);
        v32 = *a2;
        if (v32 >= *(v31 + 116))
        {
          goto LABEL_56;
        }

        v33 = *(v31 + 104);
        if (!v33)
        {
          goto LABEL_73;
        }

        v34 = *v22;
        v35 = *(*(v33 + 8 * v32) + 8);
        if (v34 >= *(v35 + 44))
        {
          goto LABEL_57;
        }

        v36 = *(v35 + 32);
        if (!v36)
        {
          goto LABEL_74;
        }

        v5 = *(v36 + (v34 << 7) + 124);
        v6 = 4 * v5;
        if (v5 < 0x101)
        {
          break;
        }

        v45 = v36 + (v34 << 7);
        v19 = swift_stdlib_isStackAllocationSafe();
        if (v19)
        {
          break;
        }

        v6 = swift_slowAlloc();
        specialized closure #1 in static Event.each(_:of:do:)(v6, v5, v45, 16416, a2, v8, &v49, v10);
        if (v4)
        {
          goto LABEL_79;
        }

        v19 = MEMORY[0x26D69EAB0](v6, -1, -1);
LABEL_46:
        if (++v22 == v30)
        {
          return v49;
        }
      }

      MEMORY[0x28223BE20](v19);
      v38 = (v48 - v37);
      v39 = 0;
      v40 = 0;
      v41 = *(a3 + 112);
LABEL_36:
      v42 = (v41 + 8 * v40);
      while (1)
      {
        if (v5 == v40)
        {
          if (v39 < 0)
          {
            goto LABEL_58;
          }

          specialized closure #1 in closure #1 in static EventAbstraction.model(update:within:position:)(v38, v39, a3, a2, v8, &v49, v10);
          goto LABEL_46;
        }

        if (v40 >= v5)
        {
          break;
        }

        if (!v41)
        {
          goto LABEL_70;
        }

        v43 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          goto LABEL_53;
        }

        v44 = *v42;
        v42 += 4;
        ++v40;
        if ((v44 & 0x8020) == 0x20)
        {
          if (__OFADD__(v39, 1))
          {
            goto LABEL_59;
          }

          v38[v39++] = *(v42 - 1);
          v40 = v43;
          goto LABEL_36;
        }
      }

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
LABEL_60:
      v4 = a3;
      swift_once();
      a3 = v4;
      if (a2[48])
      {
        goto LABEL_61;
      }

LABEL_4:
      v11 = *(a2 + 22);
      v12 = *a2;
      if (v12 >= *(v11 + 116))
      {
        goto LABEL_62;
      }

      v13 = *(v11 + 104);
      if (!v13)
      {
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:

        v47 = v6;
        goto LABEL_80;
      }

      v5 = a3;
      isStackAllocationSafe = _s21SwiftUITracingSupport16EventAbstractionPAAE6update_31madePendingBySomethingOtherThan6withinSayAA0D3RefVGSgAH_SayAA9AttributeV7PatternVGAA8SnapshotVtFZAA8ViewListV_Tt2g5Tm(v10, static ViewList.types, *(*(v13 + 8 * v12) + 8));
      if (isStackAllocationSafe)
      {
        specialized Interpreter.Iterator.new<A>(abstract:rootedAt:discreet:restriction:)(v8, v10, 0, isStackAllocationSafe, &protocol witness table for ViewList);

        return 1;
      }

      v49 = 0;
      LOBYTE(a3) = v5;
LABEL_9:
      if ((a3 & 2) == 0)
      {
        return v49;
      }

      if (a2[48])
      {
        goto LABEL_76;
      }

      v14 = *(a2 + 22);
      v15 = *a2;
      if (v15 >= *(v14 + 116))
      {
        goto LABEL_63;
      }

      v16 = *(v14 + 104);
      if (!v16)
      {
        goto LABEL_77;
      }

      v17 = *(*(v16 + 8 * v15) + 8);
      if (*(v17 + 44) <= v10)
      {
        goto LABEL_64;
      }

      v18 = *(v17 + 32);
      if (!v18)
      {
        goto LABEL_78;
      }

      v4 = 0;
      v6 = v18 + (v10 << 7);
      v5 = *(v6 + 124);
      v7 = 4 * v5;
      if (v5 < 0x101)
      {
        continue;
      }

      break;
    }
  }

  v7 = swift_slowAlloc();
  specialized closure #1 in static Event.each(_:of:do:)(v7, v5, v6, 19459, a2, v8, &v49, v10);
  if (v4)
  {
    while (1)
    {

      v47 = v7;
LABEL_80:
      MEMORY[0x26D69EAB0](v47, -1, -1);
      __break(1u);
    }
  }

  MEMORY[0x26D69EAB0](v7, -1, -1);
  return v49;
}

{
  v8 = v3;
  v10 = isStackAllocationSafe;
  v50 = *MEMORY[0x277D85DE8];
  v49 = 0;
  if ((a3 & 1) == 0)
  {
    goto LABEL_9;
  }

  if (one-time initialization token for types != -1)
  {
    goto LABEL_60;
  }

  if (!a2[48])
  {
    goto LABEL_4;
  }

LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
  while (1)
  {
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      break;
    }

    while (2)
    {
      v19 = MEMORY[0x28223BE20](isStackAllocationSafe);
      v22 = (v48 - v21);
      v23 = 0;
      v24 = 0;
      v25 = *(v6 + 112);
LABEL_17:
      v26 = (v25 + 8 * v24);
      while (v5 != v24)
      {
        if (v24 >= v5)
        {
          goto LABEL_54;
        }

        if (!v25)
        {
          goto LABEL_71;
        }

        v27 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_55;
        }

        v29 = *v26;
        v26 += 4;
        v28 = v29;
        ++v24;
        if ((v29 & 0x8000) == 0 && (v28 & 0xC03) != 0)
        {
          if (__OFADD__(v23, 1))
          {
            goto LABEL_69;
          }

          v22[v23++] = *(v26 - 1);
          v24 = v27;
          goto LABEL_17;
        }
      }

      if (v23 < 0)
      {
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
      }

      v48[0] = v20;
      if (!v23)
      {
        return v49;
      }

      v30 = &v22[v23];
      v7 = 32800;
      while (1)
      {
        if (a2[48])
        {
          goto LABEL_72;
        }

        v31 = *(a2 + 22);
        v32 = *a2;
        if (v32 >= *(v31 + 116))
        {
          goto LABEL_56;
        }

        v33 = *(v31 + 104);
        if (!v33)
        {
          goto LABEL_73;
        }

        v34 = *v22;
        v35 = *(*(v33 + 8 * v32) + 8);
        if (v34 >= *(v35 + 44))
        {
          goto LABEL_57;
        }

        v36 = *(v35 + 32);
        if (!v36)
        {
          goto LABEL_74;
        }

        v5 = *(v36 + (v34 << 7) + 124);
        v6 = 4 * v5;
        if (v5 < 0x101)
        {
          break;
        }

        v45 = v36 + (v34 << 7);
        v19 = swift_stdlib_isStackAllocationSafe();
        if (v19)
        {
          break;
        }

        v6 = swift_slowAlloc();
        specialized closure #1 in static Event.each(_:of:do:)(v6, v5, v45, 16416, a2, v8, &v49, v10);
        if (v4)
        {
          goto LABEL_79;
        }

        v19 = MEMORY[0x26D69EAB0](v6, -1, -1);
LABEL_46:
        if (++v22 == v30)
        {
          return v49;
        }
      }

      MEMORY[0x28223BE20](v19);
      v38 = (v48 - v37);
      v39 = 0;
      v40 = 0;
      v41 = *(a3 + 112);
LABEL_36:
      v42 = (v41 + 8 * v40);
      while (1)
      {
        if (v5 == v40)
        {
          if (v39 < 0)
          {
            goto LABEL_58;
          }

          specialized closure #1 in closure #1 in static EventAbstraction.model(update:within:position:)(v38, v39, a3, a2, v8, &v49, v10);
          goto LABEL_46;
        }

        if (v40 >= v5)
        {
          break;
        }

        if (!v41)
        {
          goto LABEL_70;
        }

        v43 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          goto LABEL_53;
        }

        v44 = *v42;
        v42 += 4;
        ++v40;
        if ((v44 & 0x8020) == 0x20)
        {
          if (__OFADD__(v39, 1))
          {
            goto LABEL_59;
          }

          v38[v39++] = *(v42 - 1);
          v40 = v43;
          goto LABEL_36;
        }
      }

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
LABEL_60:
      v4 = a3;
      swift_once();
      a3 = v4;
      if (a2[48])
      {
        goto LABEL_61;
      }

LABEL_4:
      v11 = *(a2 + 22);
      v12 = *a2;
      if (v12 >= *(v11 + 116))
      {
        goto LABEL_62;
      }

      v13 = *(v11 + 104);
      if (!v13)
      {
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:

        v47 = v6;
        goto LABEL_80;
      }

      v5 = a3;
      isStackAllocationSafe = _s21SwiftUITracingSupport16EventAbstractionPAAE6update_31madePendingBySomethingOtherThan6withinSayAA0D3RefVGSgAH_SayAA9AttributeV7PatternVGAA8SnapshotVtFZAA8ViewListV_Tt2g5Tm(v10, static Layout.types, *(*(v13 + 8 * v12) + 8));
      if (isStackAllocationSafe)
      {
        specialized Interpreter.Iterator.new<A>(abstract:rootedAt:discreet:restriction:)(v8, v10, 0, isStackAllocationSafe, &protocol witness table for Layout);

        return 1;
      }

      v49 = 0;
      LOBYTE(a3) = v5;
LABEL_9:
      if ((a3 & 2) == 0)
      {
        return v49;
      }

      if (a2[48])
      {
        goto LABEL_76;
      }

      v14 = *(a2 + 22);
      v15 = *a2;
      if (v15 >= *(v14 + 116))
      {
        goto LABEL_63;
      }

      v16 = *(v14 + 104);
      if (!v16)
      {
        goto LABEL_77;
      }

      v17 = *(*(v16 + 8 * v15) + 8);
      if (*(v17 + 44) <= v10)
      {
        goto LABEL_64;
      }

      v18 = *(v17 + 32);
      if (!v18)
      {
        goto LABEL_78;
      }

      v4 = 0;
      v6 = v18 + (v10 << 7);
      v5 = *(v6 + 124);
      v7 = 4 * v5;
      if (v5 < 0x101)
      {
        continue;
      }

      break;
    }
  }

  v7 = swift_slowAlloc();
  specialized closure #1 in static Event.each(_:of:do:)(v7, v5, v6, 19459, a2, v8, &v49, v10);
  if (v4)
  {
    while (1)
    {

      v47 = v7;
LABEL_80:
      MEMORY[0x26D69EAB0](v47, -1, -1);
      __break(1u);
    }
  }

  MEMORY[0x26D69EAB0](v7, -1, -1);
  return v49;
}

{
  v8 = v3;
  v10 = isStackAllocationSafe;
  v50 = *MEMORY[0x277D85DE8];
  v49 = 0;
  if ((a3 & 1) == 0)
  {
    goto LABEL_9;
  }

  if (one-time initialization token for types != -1)
  {
    goto LABEL_60;
  }

  if (!a2[48])
  {
    goto LABEL_4;
  }

LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
  while (1)
  {
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      break;
    }

    while (2)
    {
      v19 = MEMORY[0x28223BE20](isStackAllocationSafe);
      v22 = (v48 - v21);
      v23 = 0;
      v24 = 0;
      v25 = *(v6 + 112);
LABEL_17:
      v26 = (v25 + 8 * v24);
      while (v5 != v24)
      {
        if (v24 >= v5)
        {
          goto LABEL_54;
        }

        if (!v25)
        {
          goto LABEL_71;
        }

        v27 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_55;
        }

        v29 = *v26;
        v26 += 4;
        v28 = v29;
        ++v24;
        if ((v29 & 0x8000) == 0 && (v28 & 0xC03) != 0)
        {
          if (__OFADD__(v23, 1))
          {
            goto LABEL_69;
          }

          v22[v23++] = *(v26 - 1);
          v24 = v27;
          goto LABEL_17;
        }
      }

      if (v23 < 0)
      {
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
      }

      v48[0] = v20;
      if (!v23)
      {
        return v49;
      }

      v30 = &v22[v23];
      v7 = 32800;
      while (1)
      {
        if (a2[48])
        {
          goto LABEL_72;
        }

        v31 = *(a2 + 22);
        v32 = *a2;
        if (v32 >= *(v31 + 116))
        {
          goto LABEL_56;
        }

        v33 = *(v31 + 104);
        if (!v33)
        {
          goto LABEL_73;
        }

        v34 = *v22;
        v35 = *(*(v33 + 8 * v32) + 8);
        if (v34 >= *(v35 + 44))
        {
          goto LABEL_57;
        }

        v36 = *(v35 + 32);
        if (!v36)
        {
          goto LABEL_74;
        }

        v5 = *(v36 + (v34 << 7) + 124);
        v6 = 4 * v5;
        if (v5 < 0x101)
        {
          break;
        }

        v45 = v36 + (v34 << 7);
        v19 = swift_stdlib_isStackAllocationSafe();
        if (v19)
        {
          break;
        }

        v6 = swift_slowAlloc();
        specialized closure #1 in static Event.each(_:of:do:)(v6, v5, v45, 16416, a2, v8, &v49, v10);
        if (v4)
        {
          goto LABEL_79;
        }

        v19 = MEMORY[0x26D69EAB0](v6, -1, -1);
LABEL_46:
        if (++v22 == v30)
        {
          return v49;
        }
      }

      MEMORY[0x28223BE20](v19);
      v38 = (v48 - v37);
      v39 = 0;
      v40 = 0;
      v41 = *(a3 + 112);
LABEL_36:
      v42 = (v41 + 8 * v40);
      while (1)
      {
        if (v5 == v40)
        {
          if (v39 < 0)
          {
            goto LABEL_58;
          }

          specialized closure #1 in closure #1 in static EventAbstraction.model(update:within:position:)(v38, v39, a3, a2, v8, &v49, v10);
          goto LABEL_46;
        }

        if (v40 >= v5)
        {
          break;
        }

        if (!v41)
        {
          goto LABEL_70;
        }

        v43 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          goto LABEL_53;
        }

        v44 = *v42;
        v42 += 4;
        ++v40;
        if ((v44 & 0x8020) == 0x20)
        {
          if (__OFADD__(v39, 1))
          {
            goto LABEL_59;
          }

          v38[v39++] = *(v42 - 1);
          v40 = v43;
          goto LABEL_36;
        }
      }

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
LABEL_60:
      v4 = a3;
      swift_once();
      a3 = v4;
      if (a2[48])
      {
        goto LABEL_61;
      }

LABEL_4:
      v11 = *(a2 + 22);
      v12 = *a2;
      if (v12 >= *(v11 + 116))
      {
        goto LABEL_62;
      }

      v13 = *(v11 + 104);
      if (!v13)
      {
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:

        v47 = v6;
        goto LABEL_80;
      }

      v5 = a3;
      isStackAllocationSafe = _s21SwiftUITracingSupport16EventAbstractionPAAE6update_31madePendingBySomethingOtherThan6withinSayAA0D3RefVGSgAH_SayAA9AttributeV7PatternVGAA8SnapshotVtFZAA8ViewListV_Tt2g5Tm(v10, static AccessibilityNodeList.types, *(*(v13 + 8 * v12) + 8));
      if (isStackAllocationSafe)
      {
        specialized Interpreter.Iterator.new<A>(abstract:rootedAt:discreet:restriction:)(v8, v10, 0, isStackAllocationSafe, &protocol witness table for AccessibilityNodeList);

        return 1;
      }

      v49 = 0;
      LOBYTE(a3) = v5;
LABEL_9:
      if ((a3 & 2) == 0)
      {
        return v49;
      }

      if (a2[48])
      {
        goto LABEL_76;
      }

      v14 = *(a2 + 22);
      v15 = *a2;
      if (v15 >= *(v14 + 116))
      {
        goto LABEL_63;
      }

      v16 = *(v14 + 104);
      if (!v16)
      {
        goto LABEL_77;
      }

      v17 = *(*(v16 + 8 * v15) + 8);
      if (*(v17 + 44) <= v10)
      {
        goto LABEL_64;
      }

      v18 = *(v17 + 32);
      if (!v18)
      {
        goto LABEL_78;
      }

      v4 = 0;
      v6 = v18 + (v10 << 7);
      v5 = *(v6 + 124);
      v7 = 4 * v5;
      if (v5 < 0x101)
      {
        continue;
      }

      break;
    }
  }

  v7 = swift_slowAlloc();
  specialized closure #1 in static Event.each(_:of:do:)(v7, v5, v6, 19459, a2, v8, &v49, v10);
  if (v4)
  {
    while (1)
    {

      v47 = v7;
LABEL_80:
      MEMORY[0x26D69EAB0](v47, -1, -1);
      __break(1u);
    }
  }

  MEMORY[0x26D69EAB0](v7, -1, -1);
  return v49;
}

{
  v8 = v3;
  v10 = isStackAllocationSafe;
  v50 = *MEMORY[0x277D85DE8];
  v49 = 0;
  if ((a3 & 1) == 0)
  {
    goto LABEL_9;
  }

  if (one-time initialization token for types != -1)
  {
    goto LABEL_60;
  }

  if (!a2[48])
  {
    goto LABEL_4;
  }

LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
  while (1)
  {
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      break;
    }

    while (2)
    {
      v19 = MEMORY[0x28223BE20](isStackAllocationSafe);
      v22 = (v48 - v21);
      v23 = 0;
      v24 = 0;
      v25 = *(v6 + 112);
LABEL_17:
      v26 = (v25 + 8 * v24);
      while (v5 != v24)
      {
        if (v24 >= v5)
        {
          goto LABEL_54;
        }

        if (!v25)
        {
          goto LABEL_71;
        }

        v27 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_55;
        }

        v29 = *v26;
        v26 += 4;
        v28 = v29;
        ++v24;
        if ((v29 & 0x8000) == 0 && (v28 & 0xC03) != 0)
        {
          if (__OFADD__(v23, 1))
          {
            goto LABEL_69;
          }

          v22[v23++] = *(v26 - 1);
          v24 = v27;
          goto LABEL_17;
        }
      }

      if (v23 < 0)
      {
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
      }

      v48[0] = v20;
      if (!v23)
      {
        return v49;
      }

      v30 = &v22[v23];
      v7 = 32800;
      while (1)
      {
        if (a2[48])
        {
          goto LABEL_72;
        }

        v31 = *(a2 + 22);
        v32 = *a2;
        if (v32 >= *(v31 + 116))
        {
          goto LABEL_56;
        }

        v33 = *(v31 + 104);
        if (!v33)
        {
          goto LABEL_73;
        }

        v34 = *v22;
        v35 = *(*(v33 + 8 * v32) + 8);
        if (v34 >= *(v35 + 44))
        {
          goto LABEL_57;
        }

        v36 = *(v35 + 32);
        if (!v36)
        {
          goto LABEL_74;
        }

        v5 = *(v36 + (v34 << 7) + 124);
        v6 = 4 * v5;
        if (v5 < 0x101)
        {
          break;
        }

        v45 = v36 + (v34 << 7);
        v19 = swift_stdlib_isStackAllocationSafe();
        if (v19)
        {
          break;
        }

        v6 = swift_slowAlloc();
        specialized closure #1 in static Event.each(_:of:do:)(v6, v5, v45, 16416, a2, v8, &v49, v10);
        if (v4)
        {
          goto LABEL_79;
        }

        v19 = MEMORY[0x26D69EAB0](v6, -1, -1);
LABEL_46:
        if (++v22 == v30)
        {
          return v49;
        }
      }

      MEMORY[0x28223BE20](v19);
      v38 = (v48 - v37);
      v39 = 0;
      v40 = 0;
      v41 = *(a3 + 112);
LABEL_36:
      v42 = (v41 + 8 * v40);
      while (1)
      {
        if (v5 == v40)
        {
          if (v39 < 0)
          {
            goto LABEL_58;
          }

          specialized closure #1 in closure #1 in static EventAbstraction.model(update:within:position:)(v38, v39, a3, a2, v8, &v49, v10);
          goto LABEL_46;
        }

        if (v40 >= v5)
        {
          break;
        }

        if (!v41)
        {
          goto LABEL_70;
        }

        v43 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          goto LABEL_53;
        }

        v44 = *v42;
        v42 += 4;
        ++v40;
        if ((v44 & 0x8020) == 0x20)
        {
          if (__OFADD__(v39, 1))
          {
            goto LABEL_59;
          }

          v38[v39++] = *(v42 - 1);
          v40 = v43;
          goto LABEL_36;
        }
      }

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
LABEL_60:
      v4 = a3;
      swift_once();
      a3 = v4;
      if (a2[48])
      {
        goto LABEL_61;
      }

LABEL_4:
      v11 = *(a2 + 22);
      v12 = *a2;
      if (v12 >= *(v11 + 116))
      {
        goto LABEL_62;
      }

      v13 = *(v11 + 104);
      if (!v13)
      {
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:

        v47 = v6;
        goto LABEL_80;
      }

      v5 = a3;
      isStackAllocationSafe = _s21SwiftUITracingSupport16EventAbstractionPAAE6update_31madePendingBySomethingOtherThan6withinSayAA0D3RefVGSgAH_SayAA9AttributeV7PatternVGAA8SnapshotVtFZAA8ViewListV_Tt2g5Tm(v10, static EnvironmentWriting.types, *(*(v13 + 8 * v12) + 8));
      if (isStackAllocationSafe)
      {
        specialized Interpreter.Iterator.new<A>(abstract:rootedAt:discreet:restriction:)(v8, v10, 0, isStackAllocationSafe, &protocol witness table for EnvironmentWriting);

        return 1;
      }

      v49 = 0;
      LOBYTE(a3) = v5;
LABEL_9:
      if ((a3 & 2) == 0)
      {
        return v49;
      }

      if (a2[48])
      {
        goto LABEL_76;
      }

      v14 = *(a2 + 22);
      v15 = *a2;
      if (v15 >= *(v14 + 116))
      {
        goto LABEL_63;
      }

      v16 = *(v14 + 104);
      if (!v16)
      {
        goto LABEL_77;
      }

      v17 = *(*(v16 + 8 * v15) + 8);
      if (*(v17 + 44) <= v10)
      {
        goto LABEL_64;
      }

      v18 = *(v17 + 32);
      if (!v18)
      {
        goto LABEL_78;
      }

      v4 = 0;
      v6 = v18 + (v10 << 7);
      v5 = *(v6 + 124);
      v7 = 4 * v5;
      if (v5 < 0x101)
      {
        continue;
      }

      break;
    }
  }

  v7 = swift_slowAlloc();
  specialized closure #1 in static Event.each(_:of:do:)(v7, v5, v6, 19459, a2, v8, &v49, v10);
  if (v4)
  {
    while (1)
    {

      v47 = v7;
LABEL_80:
      MEMORY[0x26D69EAB0](v47, -1, -1);
      __break(1u);
    }
  }

  MEMORY[0x26D69EAB0](v7, -1, -1);
  return v49;
}

{
  v8 = v3;
  v10 = isStackAllocationSafe;
  v50 = *MEMORY[0x277D85DE8];
  v49 = 0;
  if ((a3 & 1) == 0)
  {
    goto LABEL_9;
  }

  if (one-time initialization token for types != -1)
  {
    goto LABEL_60;
  }

  if (!a2[48])
  {
    goto LABEL_4;
  }

LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
  while (1)
  {
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      break;
    }

    while (2)
    {
      v19 = MEMORY[0x28223BE20](isStackAllocationSafe);
      v22 = (v48 - v21);
      v23 = 0;
      v24 = 0;
      v25 = *(v6 + 112);
LABEL_17:
      v26 = (v25 + 8 * v24);
      while (v5 != v24)
      {
        if (v24 >= v5)
        {
          goto LABEL_54;
        }

        if (!v25)
        {
          goto LABEL_71;
        }

        v27 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_55;
        }

        v29 = *v26;
        v26 += 4;
        v28 = v29;
        ++v24;
        if ((v29 & 0x8000) == 0 && (v28 & 0xC03) != 0)
        {
          if (__OFADD__(v23, 1))
          {
            goto LABEL_69;
          }

          v22[v23++] = *(v26 - 1);
          v24 = v27;
          goto LABEL_17;
        }
      }

      if (v23 < 0)
      {
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
      }

      v48[0] = v20;
      if (!v23)
      {
        return v49;
      }

      v30 = &v22[v23];
      v7 = 32800;
      while (1)
      {
        if (a2[48])
        {
          goto LABEL_72;
        }

        v31 = *(a2 + 22);
        v32 = *a2;
        if (v32 >= *(v31 + 116))
        {
          goto LABEL_56;
        }

        v33 = *(v31 + 104);
        if (!v33)
        {
          goto LABEL_73;
        }

        v34 = *v22;
        v35 = *(*(v33 + 8 * v32) + 8);
        if (v34 >= *(v35 + 44))
        {
          goto LABEL_57;
        }

        v36 = *(v35 + 32);
        if (!v36)
        {
          goto LABEL_74;
        }

        v5 = *(v36 + (v34 << 7) + 124);
        v6 = 4 * v5;
        if (v5 < 0x101)
        {
          break;
        }

        v45 = v36 + (v34 << 7);
        v19 = swift_stdlib_isStackAllocationSafe();
        if (v19)
        {
          break;
        }

        v6 = swift_slowAlloc();
        specialized closure #1 in static Event.each(_:of:do:)(v6, v5, v45, 16416, a2, v8, &v49, v10);
        if (v4)
        {
          goto LABEL_79;
        }

        v19 = MEMORY[0x26D69EAB0](v6, -1, -1);
LABEL_46:
        if (++v22 == v30)
        {
          return v49;
        }
      }

      MEMORY[0x28223BE20](v19);
      v38 = (v48 - v37);
      v39 = 0;
      v40 = 0;
      v41 = *(a3 + 112);
LABEL_36:
      v42 = (v41 + 8 * v40);
      while (1)
      {
        if (v5 == v40)
        {
          if (v39 < 0)
          {
            goto LABEL_58;
          }

          specialized closure #1 in closure #1 in static EventAbstraction.model(update:within:position:)(v38, v39, a3, a2, v8, &v49, v10);
          goto LABEL_46;
        }

        if (v40 >= v5)
        {
          break;
        }

        if (!v41)
        {
          goto LABEL_70;
        }

        v43 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          goto LABEL_53;
        }

        v44 = *v42;
        v42 += 4;
        ++v40;
        if ((v44 & 0x8020) == 0x20)
        {
          if (__OFADD__(v39, 1))
          {
            goto LABEL_59;
          }

          v38[v39++] = *(v42 - 1);
          v40 = v43;
          goto LABEL_36;
        }
      }

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
LABEL_60:
      v4 = a3;
      swift_once();
      a3 = v4;
      if (a2[48])
      {
        goto LABEL_61;
      }

LABEL_4:
      v11 = *(a2 + 22);
      v12 = *a2;
      if (v12 >= *(v11 + 116))
      {
        goto LABEL_62;
      }

      v13 = *(v11 + 104);
      if (!v13)
      {
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:

        v47 = v6;
        goto LABEL_80;
      }

      v5 = a3;
      isStackAllocationSafe = _s21SwiftUITracingSupport16EventAbstractionPAAE6update_31madePendingBySomethingOtherThan6withinSayAA0D3RefVGSgAH_SayAA9AttributeV7PatternVGAA8SnapshotVtFZAA8ViewListV_Tt2g5Tm(v10, static ConditionalContent.types, *(*(v13 + 8 * v12) + 8));
      if (isStackAllocationSafe)
      {
        specialized Interpreter.Iterator.new<A>(abstract:rootedAt:discreet:restriction:)(v8, v10, 0, isStackAllocationSafe, &protocol witness table for ConditionalContent);

        return 1;
      }

      v49 = 0;
      LOBYTE(a3) = v5;
LABEL_9:
      if ((a3 & 2) == 0)
      {
        return v49;
      }

      if (a2[48])
      {
        goto LABEL_76;
      }

      v14 = *(a2 + 22);
      v15 = *a2;
      if (v15 >= *(v14 + 116))
      {
        goto LABEL_63;
      }

      v16 = *(v14 + 104);
      if (!v16)
      {
        goto LABEL_77;
      }

      v17 = *(*(v16 + 8 * v15) + 8);
      if (*(v17 + 44) <= v10)
      {
        goto LABEL_64;
      }

      v18 = *(v17 + 32);
      if (!v18)
      {
        goto LABEL_78;
      }

      v4 = 0;
      v6 = v18 + (v10 << 7);
      v5 = *(v6 + 124);
      v7 = 4 * v5;
      if (v5 < 0x101)
      {
        continue;
      }

      break;
    }
  }

  v7 = swift_slowAlloc();
  specialized closure #1 in static Event.each(_:of:do:)(v7, v5, v6, 19459, a2, v8, &v49, v10);
  if (v4)
  {
    while (1)
    {

      v47 = v7;
LABEL_80:
      MEMORY[0x26D69EAB0](v47, -1, -1);
      __break(1u);
    }
  }

  MEMORY[0x26D69EAB0](v7, -1, -1);
  return v49;
}

{
  v8 = v3;
  v10 = isStackAllocationSafe;
  v50 = *MEMORY[0x277D85DE8];
  v49 = 0;
  if ((a3 & 1) == 0)
  {
    goto LABEL_9;
  }

  if (one-time initialization token for types != -1)
  {
    goto LABEL_60;
  }

  if (!a2[48])
  {
    goto LABEL_4;
  }

LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
  while (1)
  {
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      break;
    }

    while (2)
    {
      v19 = MEMORY[0x28223BE20](isStackAllocationSafe);
      v22 = (v48 - v21);
      v23 = 0;
      v24 = 0;
      v25 = *(v6 + 112);
LABEL_17:
      v26 = (v25 + 8 * v24);
      while (v5 != v24)
      {
        if (v24 >= v5)
        {
          goto LABEL_54;
        }

        if (!v25)
        {
          goto LABEL_71;
        }

        v27 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_55;
        }

        v29 = *v26;
        v26 += 4;
        v28 = v29;
        ++v24;
        if ((v29 & 0x8000) == 0 && (v28 & 0xC03) != 0)
        {
          if (__OFADD__(v23, 1))
          {
            goto LABEL_69;
          }

          v22[v23++] = *(v26 - 1);
          v24 = v27;
          goto LABEL_17;
        }
      }

      if (v23 < 0)
      {
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
      }

      v48[0] = v20;
      if (!v23)
      {
        return v49;
      }

      v30 = &v22[v23];
      v7 = 32800;
      while (1)
      {
        if (a2[48])
        {
          goto LABEL_72;
        }

        v31 = *(a2 + 22);
        v32 = *a2;
        if (v32 >= *(v31 + 116))
        {
          goto LABEL_56;
        }

        v33 = *(v31 + 104);
        if (!v33)
        {
          goto LABEL_73;
        }

        v34 = *v22;
        v35 = *(*(v33 + 8 * v32) + 8);
        if (v34 >= *(v35 + 44))
        {
          goto LABEL_57;
        }

        v36 = *(v35 + 32);
        if (!v36)
        {
          goto LABEL_74;
        }

        v5 = *(v36 + (v34 << 7) + 124);
        v6 = 4 * v5;
        if (v5 < 0x101)
        {
          break;
        }

        v45 = v36 + (v34 << 7);
        v19 = swift_stdlib_isStackAllocationSafe();
        if (v19)
        {
          break;
        }

        v6 = swift_slowAlloc();
        specialized closure #1 in static Event.each(_:of:do:)(v6, v5, v45, 16416, a2, v8, &v49, v10);
        if (v4)
        {
          goto LABEL_79;
        }

        v19 = MEMORY[0x26D69EAB0](v6, -1, -1);
LABEL_46:
        if (++v22 == v30)
        {
          return v49;
        }
      }

      MEMORY[0x28223BE20](v19);
      v38 = (v48 - v37);
      v39 = 0;
      v40 = 0;
      v41 = *(a3 + 112);
LABEL_36:
      v42 = (v41 + 8 * v40);
      while (1)
      {
        if (v5 == v40)
        {
          if (v39 < 0)
          {
            goto LABEL_58;
          }

          specialized closure #1 in closure #1 in static EventAbstraction.model(update:within:position:)(v38, v39, a3, a2, v8, &v49, v10);
          goto LABEL_46;
        }

        if (v40 >= v5)
        {
          break;
        }

        if (!v41)
        {
          goto LABEL_70;
        }

        v43 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          goto LABEL_53;
        }

        v44 = *v42;
        v42 += 4;
        ++v40;
        if ((v44 & 0x8020) == 0x20)
        {
          if (__OFADD__(v39, 1))
          {
            goto LABEL_59;
          }

          v38[v39++] = *(v42 - 1);
          v40 = v43;
          goto LABEL_36;
        }
      }

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
LABEL_60:
      v4 = a3;
      swift_once();
      a3 = v4;
      if (a2[48])
      {
        goto LABEL_61;
      }

LABEL_4:
      v11 = *(a2 + 22);
      v12 = *a2;
      if (v12 >= *(v11 + 116))
      {
        goto LABEL_62;
      }

      v13 = *(v11 + 104);
      if (!v13)
      {
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:

        v47 = v6;
        goto LABEL_80;
      }

      v5 = a3;
      isStackAllocationSafe = _s21SwiftUITracingSupport16EventAbstractionPAAE6update_31madePendingBySomethingOtherThan6withinSayAA0D3RefVGSgAH_SayAA9AttributeV7PatternVGAA8SnapshotVtFZAA8ViewListV_Tt2g5Tm(v10, static PlatformItemList.types, *(*(v13 + 8 * v12) + 8));
      if (isStackAllocationSafe)
      {
        specialized Interpreter.Iterator.new<A>(abstract:rootedAt:discreet:restriction:)(v8, v10, 0, isStackAllocationSafe, &protocol witness table for PlatformItemList);

        return 1;
      }

      v49 = 0;
      LOBYTE(a3) = v5;
LABEL_9:
      if ((a3 & 2) == 0)
      {
        return v49;
      }

      if (a2[48])
      {
        goto LABEL_76;
      }

      v14 = *(a2 + 22);
      v15 = *a2;
      if (v15 >= *(v14 + 116))
      {
        goto LABEL_63;
      }

      v16 = *(v14 + 104);
      if (!v16)
      {
        goto LABEL_77;
      }

      v17 = *(*(v16 + 8 * v15) + 8);
      if (*(v17 + 44) <= v10)
      {
        goto LABEL_64;
      }

      v18 = *(v17 + 32);
      if (!v18)
      {
        goto LABEL_78;
      }

      v4 = 0;
      v6 = v18 + (v10 << 7);
      v5 = *(v6 + 124);
      v7 = 4 * v5;
      if (v5 < 0x101)
      {
        continue;
      }

      break;
    }
  }

  v7 = swift_slowAlloc();
  specialized closure #1 in static Event.each(_:of:do:)(v7, v5, v6, 19459, a2, v8, &v49, v10);
  if (v4)
  {
    while (1)
    {

      v47 = v7;
LABEL_80:
      MEMORY[0x26D69EAB0](v47, -1, -1);
      __break(1u);
    }
  }

  MEMORY[0x26D69EAB0](v7, -1, -1);
  return v49;
}

{
  v8 = v3;
  v10 = isStackAllocationSafe;
  v50 = *MEMORY[0x277D85DE8];
  v49 = 0;
  if ((a3 & 1) == 0)
  {
    goto LABEL_9;
  }

  if (one-time initialization token for types != -1)
  {
    goto LABEL_60;
  }

  if (!a2[48])
  {
    goto LABEL_4;
  }

LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
  while (1)
  {
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      break;
    }

    while (2)
    {
      v19 = MEMORY[0x28223BE20](isStackAllocationSafe);
      v22 = (v48 - v21);
      v23 = 0;
      v24 = 0;
      v25 = *(v6 + 112);
LABEL_17:
      v26 = (v25 + 8 * v24);
      while (v5 != v24)
      {
        if (v24 >= v5)
        {
          goto LABEL_54;
        }

        if (!v25)
        {
          goto LABEL_71;
        }

        v27 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_55;
        }

        v29 = *v26;
        v26 += 4;
        v28 = v29;
        ++v24;
        if ((v29 & 0x8000) == 0 && (v28 & 0xC03) != 0)
        {
          if (__OFADD__(v23, 1))
          {
            goto LABEL_69;
          }

          v22[v23++] = *(v26 - 1);
          v24 = v27;
          goto LABEL_17;
        }
      }

      if (v23 < 0)
      {
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
      }

      v48[0] = v20;
      if (!v23)
      {
        return v49;
      }

      v30 = &v22[v23];
      v7 = 32800;
      while (1)
      {
        if (a2[48])
        {
          goto LABEL_72;
        }

        v31 = *(a2 + 22);
        v32 = *a2;
        if (v32 >= *(v31 + 116))
        {
          goto LABEL_56;
        }

        v33 = *(v31 + 104);
        if (!v33)
        {
          goto LABEL_73;
        }

        v34 = *v22;
        v35 = *(*(v33 + 8 * v32) + 8);
        if (v34 >= *(v35 + 44))
        {
          goto LABEL_57;
        }

        v36 = *(v35 + 32);
        if (!v36)
        {
          goto LABEL_74;
        }

        v5 = *(v36 + (v34 << 7) + 124);
        v6 = 4 * v5;
        if (v5 < 0x101)
        {
          break;
        }

        v45 = v36 + (v34 << 7);
        v19 = swift_stdlib_isStackAllocationSafe();
        if (v19)
        {
          break;
        }

        v6 = swift_slowAlloc();
        specialized closure #1 in static Event.each(_:of:do:)(v6, v5, v45, 16416, a2, v8, &v49, v10);
        if (v4)
        {
          goto LABEL_79;
        }

        v19 = MEMORY[0x26D69EAB0](v6, -1, -1);
LABEL_46:
        if (++v22 == v30)
        {
          return v49;
        }
      }

      MEMORY[0x28223BE20](v19);
      v38 = (v48 - v37);
      v39 = 0;
      v40 = 0;
      v41 = *(a3 + 112);
LABEL_36:
      v42 = (v41 + 8 * v40);
      while (1)
      {
        if (v5 == v40)
        {
          if (v39 < 0)
          {
            goto LABEL_58;
          }

          specialized closure #1 in closure #1 in static EventAbstraction.model(update:within:position:)(v38, v39, a3, a2, v8, &v49, v10);
          goto LABEL_46;
        }

        if (v40 >= v5)
        {
          break;
        }

        if (!v41)
        {
          goto LABEL_70;
        }

        v43 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          goto LABEL_53;
        }

        v44 = *v42;
        v42 += 4;
        ++v40;
        if ((v44 & 0x8020) == 0x20)
        {
          if (__OFADD__(v39, 1))
          {
            goto LABEL_59;
          }

          v38[v39++] = *(v42 - 1);
          v40 = v43;
          goto LABEL_36;
        }
      }

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
LABEL_60:
      v4 = a3;
      swift_once();
      a3 = v4;
      if (a2[48])
      {
        goto LABEL_61;
      }

LABEL_4:
      v11 = *(a2 + 22);
      v12 = *a2;
      if (v12 >= *(v11 + 116))
      {
        goto LABEL_62;
      }

      v13 = *(v11 + 104);
      if (!v13)
      {
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:

        v47 = v6;
        goto LABEL_80;
      }

      v5 = a3;
      isStackAllocationSafe = _s21SwiftUITracingSupport16EventAbstractionPAAE6update_31madePendingBySomethingOtherThan6withinSayAA0D3RefVGSgAH_SayAA9AttributeV7PatternVGAA8SnapshotVtFZAA8ViewListV_Tt2g5Tm(v10, static ResolvedContent.types, *(*(v13 + 8 * v12) + 8));
      if (isStackAllocationSafe)
      {
        specialized Interpreter.Iterator.new<A>(abstract:rootedAt:discreet:restriction:)(v8, v10, 0, isStackAllocationSafe, &protocol witness table for ResolvedContent);

        return 1;
      }

      v49 = 0;
      LOBYTE(a3) = v5;
LABEL_9:
      if ((a3 & 2) == 0)
      {
        return v49;
      }

      if (a2[48])
      {
        goto LABEL_76;
      }

      v14 = *(a2 + 22);
      v15 = *a2;
      if (v15 >= *(v14 + 116))
      {
        goto LABEL_63;
      }

      v16 = *(v14 + 104);
      if (!v16)
      {
        goto LABEL_77;
      }

      v17 = *(*(v16 + 8 * v15) + 8);
      if (*(v17 + 44) <= v10)
      {
        goto LABEL_64;
      }

      v18 = *(v17 + 32);
      if (!v18)
      {
        goto LABEL_78;
      }

      v4 = 0;
      v6 = v18 + (v10 << 7);
      v5 = *(v6 + 124);
      v7 = 4 * v5;
      if (v5 < 0x101)
      {
        continue;
      }

      break;
    }
  }

  v7 = swift_slowAlloc();
  specialized closure #1 in static Event.each(_:of:do:)(v7, v5, v6, 19459, a2, v8, &v49, v10);
  if (v4)
  {
    while (1)
    {

      v47 = v7;
LABEL_80:
      MEMORY[0x26D69EAB0](v47, -1, -1);
      __break(1u);
    }
  }

  MEMORY[0x26D69EAB0](v7, -1, -1);
  return v49;
}

{
  v8 = v3;
  v10 = isStackAllocationSafe;
  v50 = *MEMORY[0x277D85DE8];
  v49 = 0;
  if ((a3 & 1) == 0)
  {
    goto LABEL_9;
  }

  if (one-time initialization token for hiddenTypes != -1)
  {
    goto LABEL_60;
  }

  if (!a2[48])
  {
    goto LABEL_4;
  }

LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
  while (1)
  {
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      break;
    }

    while (2)
    {
      v19 = MEMORY[0x28223BE20](isStackAllocationSafe);
      v22 = (v48 - v21);
      v23 = 0;
      v24 = 0;
      v25 = *(v6 + 112);
LABEL_17:
      v26 = (v25 + 8 * v24);
      while (v5 != v24)
      {
        if (v24 >= v5)
        {
          goto LABEL_54;
        }

        if (!v25)
        {
          goto LABEL_71;
        }

        v27 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_55;
        }

        v29 = *v26;
        v26 += 4;
        v28 = v29;
        ++v24;
        if ((v29 & 0x8000) == 0 && (v28 & 0xC03) != 0)
        {
          if (__OFADD__(v23, 1))
          {
            goto LABEL_69;
          }

          v22[v23++] = *(v26 - 1);
          v24 = v27;
          goto LABEL_17;
        }
      }

      if (v23 < 0)
      {
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
      }

      v48[0] = v20;
      if (!v23)
      {
        return v49;
      }

      v30 = &v22[v23];
      v7 = 32800;
      while (1)
      {
        if (a2[48])
        {
          goto LABEL_72;
        }

        v31 = *(a2 + 22);
        v32 = *a2;
        if (v32 >= *(v31 + 116))
        {
          goto LABEL_56;
        }

        v33 = *(v31 + 104);
        if (!v33)
        {
          goto LABEL_73;
        }

        v34 = *v22;
        v35 = *(*(v33 + 8 * v32) + 8);
        if (v34 >= *(v35 + 44))
        {
          goto LABEL_57;
        }

        v36 = *(v35 + 32);
        if (!v36)
        {
          goto LABEL_74;
        }

        v5 = *(v36 + (v34 << 7) + 124);
        v6 = 4 * v5;
        if (v5 < 0x101)
        {
          break;
        }

        v45 = v36 + (v34 << 7);
        v19 = swift_stdlib_isStackAllocationSafe();
        if (v19)
        {
          break;
        }

        v6 = swift_slowAlloc();
        specialized closure #1 in static Event.each(_:of:do:)(v6, v5, v45, 16416, a2, v8, &v49, v10);
        if (v4)
        {
          goto LABEL_79;
        }

        v19 = MEMORY[0x26D69EAB0](v6, -1, -1);
LABEL_46:
        if (++v22 == v30)
        {
          return v49;
        }
      }

      MEMORY[0x28223BE20](v19);
      v38 = (v48 - v37);
      v39 = 0;
      v40 = 0;
      v41 = *(a3 + 112);
LABEL_36:
      v42 = (v41 + 8 * v40);
      while (1)
      {
        if (v5 == v40)
        {
          if (v39 < 0)
          {
            goto LABEL_58;
          }

          specialized closure #1 in closure #1 in static EventAbstraction.model(update:within:position:)(v38, v39, a3, a2, v8, &v49, v10);
          goto LABEL_46;
        }

        if (v40 >= v5)
        {
          break;
        }

        if (!v41)
        {
          goto LABEL_70;
        }

        v43 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          goto LABEL_53;
        }

        v44 = *v42;
        v42 += 4;
        ++v40;
        if ((v44 & 0x8020) == 0x20)
        {
          if (__OFADD__(v39, 1))
          {
            goto LABEL_59;
          }

          v38[v39++] = *(v42 - 1);
          v40 = v43;
          goto LABEL_36;
        }
      }

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
LABEL_60:
      v4 = a3;
      swift_once();
      a3 = v4;
      if (a2[48])
      {
        goto LABEL_61;
      }

LABEL_4:
      v11 = *(a2 + 22);
      v12 = *a2;
      if (v12 >= *(v11 + 116))
      {
        goto LABEL_62;
      }

      v13 = *(v11 + 104);
      if (!v13)
      {
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:

        v47 = v6;
        goto LABEL_80;
      }

      v5 = a3;
      isStackAllocationSafe = _s21SwiftUITracingSupport16EventAbstractionPAAE6update_31madePendingBySomethingOtherThan6withinSayAA0D3RefVGSgAH_SayAA9AttributeV7PatternVGAA8SnapshotVtFZAA8ViewListV_Tt2g5Tm(v10, static PreferenceList.hiddenTypes, *(*(v13 + 8 * v12) + 8));
      if (isStackAllocationSafe)
      {
        specialized Interpreter.Iterator.new<A>(abstract:rootedAt:discreet:restriction:)(v8, v10, 0, isStackAllocationSafe, &protocol witness table for PreferenceList);

        return 1;
      }

      v49 = 0;
      LOBYTE(a3) = v5;
LABEL_9:
      if ((a3 & 2) == 0)
      {
        return v49;
      }

      if (a2[48])
      {
        goto LABEL_76;
      }

      v14 = *(a2 + 22);
      v15 = *a2;
      if (v15 >= *(v14 + 116))
      {
        goto LABEL_63;
      }

      v16 = *(v14 + 104);
      if (!v16)
      {
        goto LABEL_77;
      }

      v17 = *(*(v16 + 8 * v15) + 8);
      if (*(v17 + 44) <= v10)
      {
        goto LABEL_64;
      }

      v18 = *(v17 + 32);
      if (!v18)
      {
        goto LABEL_78;
      }

      v4 = 0;
      v6 = v18 + (v10 << 7);
      v5 = *(v6 + 124);
      v7 = 4 * v5;
      if (v5 < 0x101)
      {
        continue;
      }

      break;
    }
  }

  v7 = swift_slowAlloc();
  specialized closure #1 in static Event.each(_:of:do:)(v7, v5, v6, 19459, a2, v8, &v49, v10);
  if (v4)
  {
    while (1)
    {

      v47 = v7;
LABEL_80:
      MEMORY[0x26D69EAB0](v47, -1, -1);
      __break(1u);
    }
  }

  MEMORY[0x26D69EAB0](v7, -1, -1);
  return v49;
}

{
  v8 = v3;
  v10 = isStackAllocationSafe;
  v50 = *MEMORY[0x277D85DE8];
  v49 = 0;
  if ((a3 & 1) == 0)
  {
    goto LABEL_9;
  }

  if (one-time initialization token for types != -1)
  {
    goto LABEL_60;
  }

  if (!a2[48])
  {
    goto LABEL_4;
  }

LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
  while (1)
  {
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      break;
    }

    while (2)
    {
      v19 = MEMORY[0x28223BE20](isStackAllocationSafe);
      v22 = (v48 - v21);
      v23 = 0;
      v24 = 0;
      v25 = *(v6 + 112);
LABEL_17:
      v26 = (v25 + 8 * v24);
      while (v5 != v24)
      {
        if (v24 >= v5)
        {
          goto LABEL_54;
        }

        if (!v25)
        {
          goto LABEL_71;
        }

        v27 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_55;
        }

        v29 = *v26;
        v26 += 4;
        v28 = v29;
        ++v24;
        if ((v29 & 0x8000) == 0 && (v28 & 0xC03) != 0)
        {
          if (__OFADD__(v23, 1))
          {
            goto LABEL_69;
          }

          v22[v23++] = *(v26 - 1);
          v24 = v27;
          goto LABEL_17;
        }
      }

      if (v23 < 0)
      {
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
      }

      v48[0] = v20;
      if (!v23)
      {
        return v49;
      }

      v30 = &v22[v23];
      v7 = 32800;
      while (1)
      {
        if (a2[48])
        {
          goto LABEL_72;
        }

        v31 = *(a2 + 22);
        v32 = *a2;
        if (v32 >= *(v31 + 116))
        {
          goto LABEL_56;
        }

        v33 = *(v31 + 104);
        if (!v33)
        {
          goto LABEL_73;
        }

        v34 = *v22;
        v35 = *(*(v33 + 8 * v32) + 8);
        if (v34 >= *(v35 + 44))
        {
          goto LABEL_57;
        }

        v36 = *(v35 + 32);
        if (!v36)
        {
          goto LABEL_74;
        }

        v5 = *(v36 + (v34 << 7) + 124);
        v6 = 4 * v5;
        if (v5 < 0x101)
        {
          break;
        }

        v45 = v36 + (v34 << 7);
        v19 = swift_stdlib_isStackAllocationSafe();
        if (v19)
        {
          break;
        }

        v6 = swift_slowAlloc();
        specialized closure #1 in static Event.each(_:of:do:)(v6, v5, v45, 16416, a2, v8, &v49, v10);
        if (v4)
        {
          goto LABEL_79;
        }

        v19 = MEMORY[0x26D69EAB0](v6, -1, -1);
LABEL_46:
        if (++v22 == v30)
        {
          return v49;
        }
      }

      MEMORY[0x28223BE20](v19);
      v38 = (v48 - v37);
      v39 = 0;
      v40 = 0;
      v41 = *(a3 + 112);
LABEL_36:
      v42 = (v41 + 8 * v40);
      while (1)
      {
        if (v5 == v40)
        {
          if (v39 < 0)
          {
            goto LABEL_58;
          }

          specialized closure #1 in closure #1 in static EventAbstraction.model(update:within:position:)(v38, v39, a3, a2, v8, &v49, v10);
          goto LABEL_46;
        }

        if (v40 >= v5)
        {
          break;
        }

        if (!v41)
        {
          goto LABEL_70;
        }

        v43 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          goto LABEL_53;
        }

        v44 = *v42;
        v42 += 4;
        ++v40;
        if ((v44 & 0x8020) == 0x20)
        {
          if (__OFADD__(v39, 1))
          {
            goto LABEL_59;
          }

          v38[v39++] = *(v42 - 1);
          v40 = v43;
          goto LABEL_36;
        }
      }

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
LABEL_60:
      v4 = a3;
      swift_once();
      a3 = v4;
      if (a2[48])
      {
        goto LABEL_61;
      }

LABEL_4:
      v11 = *(a2 + 22);
      v12 = *a2;
      if (v12 >= *(v11 + 116))
      {
        goto LABEL_62;
      }

      v13 = *(v11 + 104);
      if (!v13)
      {
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:

        v47 = v6;
        goto LABEL_80;
      }

      v5 = a3;
      isStackAllocationSafe = _s21SwiftUITracingSupport16EventAbstractionPAAE6update_31madePendingBySomethingOtherThan6withinSayAA0D3RefVGSgAH_SayAA9AttributeV7PatternVGAA8SnapshotVtFZAA8ViewListV_Tt2g5Tm(v10, static ViewTransform.types, *(*(v13 + 8 * v12) + 8));
      if (isStackAllocationSafe)
      {
        specialized Interpreter.Iterator.new<A>(abstract:rootedAt:discreet:restriction:)(v8, v10, 0, isStackAllocationSafe, &protocol witness table for ViewTransform);

        return 1;
      }

      v49 = 0;
      LOBYTE(a3) = v5;
LABEL_9:
      if ((a3 & 2) == 0)
      {
        return v49;
      }

      if (a2[48])
      {
        goto LABEL_76;
      }

      v14 = *(a2 + 22);
      v15 = *a2;
      if (v15 >= *(v14 + 116))
      {
        goto LABEL_63;
      }

      v16 = *(v14 + 104);
      if (!v16)
      {
        goto LABEL_77;
      }

      v17 = *(*(v16 + 8 * v15) + 8);
      if (*(v17 + 44) <= v10)
      {
        goto LABEL_64;
      }

      v18 = *(v17 + 32);
      if (!v18)
      {
        goto LABEL_78;
      }

      v4 = 0;
      v6 = v18 + (v10 << 7);
      v5 = *(v6 + 124);
      v7 = 4 * v5;
      if (v5 < 0x101)
      {
        continue;
      }

      break;
    }
  }

  v7 = swift_slowAlloc();
  specialized closure #1 in static Event.each(_:of:do:)(v7, v5, v6, 19459, a2, v8, &v49, v10);
  if (v4)
  {
    while (1)
    {

      v47 = v7;
LABEL_80:
      MEMORY[0x26D69EAB0](v47, -1, -1);
      __break(1u);
    }
  }

  MEMORY[0x26D69EAB0](v7, -1, -1);
  return v49;
}

{
  v8 = v3;
  v10 = isStackAllocationSafe;
  v50 = *MEMORY[0x277D85DE8];
  v49 = 0;
  if ((a3 & 1) == 0)
  {
    goto LABEL_9;
  }

  if (one-time initialization token for types != -1)
  {
    goto LABEL_60;
  }

  if (!a2[48])
  {
    goto LABEL_4;
  }

LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
  while (1)
  {
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      break;
    }

    while (2)
    {
      v19 = MEMORY[0x28223BE20](isStackAllocationSafe);
      v22 = (v48 - v21);
      v23 = 0;
      v24 = 0;
      v25 = *(v6 + 112);
LABEL_17:
      v26 = (v25 + 8 * v24);
      while (v5 != v24)
      {
        if (v24 >= v5)
        {
          goto LABEL_54;
        }

        if (!v25)
        {
          goto LABEL_71;
        }

        v27 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_55;
        }

        v29 = *v26;
        v26 += 4;
        v28 = v29;
        ++v24;
        if ((v29 & 0x8000) == 0 && (v28 & 0xC03) != 0)
        {
          if (__OFADD__(v23, 1))
          {
            goto LABEL_69;
          }

          v22[v23++] = *(v26 - 1);
          v24 = v27;
          goto LABEL_17;
        }
      }

      if (v23 < 0)
      {
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
      }

      v48[0] = v20;
      if (!v23)
      {
        return v49;
      }

      v30 = &v22[v23];
      v7 = 32800;
      while (1)
      {
        if (a2[48])
        {
          goto LABEL_72;
        }

        v31 = *(a2 + 22);
        v32 = *a2;
        if (v32 >= *(v31 + 116))
        {
          goto LABEL_56;
        }

        v33 = *(v31 + 104);
        if (!v33)
        {
          goto LABEL_73;
        }

        v34 = *v22;
        v35 = *(*(v33 + 8 * v32) + 8);
        if (v34 >= *(v35 + 44))
        {
          goto LABEL_57;
        }

        v36 = *(v35 + 32);
        if (!v36)
        {
          goto LABEL_74;
        }

        v5 = *(v36 + (v34 << 7) + 124);
        v6 = 4 * v5;
        if (v5 < 0x101)
        {
          break;
        }

        v45 = v36 + (v34 << 7);
        v19 = swift_stdlib_isStackAllocationSafe();
        if (v19)
        {
          break;
        }

        v6 = swift_slowAlloc();
        specialized closure #1 in static Event.each(_:of:do:)(v6, v5, v45, 16416, a2, v8, &v49, v10);
        if (v4)
        {
          goto LABEL_79;
        }

        v19 = MEMORY[0x26D69EAB0](v6, -1, -1);
LABEL_46:
        if (++v22 == v30)
        {
          return v49;
        }
      }

      MEMORY[0x28223BE20](v19);
      v38 = (v48 - v37);
      v39 = 0;
      v40 = 0;
      v41 = *(a3 + 112);
LABEL_36:
      v42 = (v41 + 8 * v40);
      while (1)
      {
        if (v5 == v40)
        {
          if (v39 < 0)
          {
            goto LABEL_58;
          }

          specialized closure #1 in closure #1 in static EventAbstraction.model(update:within:position:)(v38, v39, a3, a2, v8, &v49, v10);
          goto LABEL_46;
        }

        if (v40 >= v5)
        {
          break;
        }

        if (!v41)
        {
          goto LABEL_70;
        }

        v43 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          goto LABEL_53;
        }

        v44 = *v42;
        v42 += 4;
        ++v40;
        if ((v44 & 0x8020) == 0x20)
        {
          if (__OFADD__(v39, 1))
          {
            goto LABEL_59;
          }

          v38[v39++] = *(v42 - 1);
          v40 = v43;
          goto LABEL_36;
        }
      }

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
LABEL_60:
      v4 = a3;
      swift_once();
      a3 = v4;
      if (a2[48])
      {
        goto LABEL_61;
      }

LABEL_4:
      v11 = *(a2 + 22);
      v12 = *a2;
      if (v12 >= *(v11 + 116))
      {
        goto LABEL_62;
      }

      v13 = *(v11 + 104);
      if (!v13)
      {
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:

        v47 = v6;
        goto LABEL_80;
      }

      v5 = a3;
      isStackAllocationSafe = _s21SwiftUITracingSupport16EventAbstractionPAAE6update_31madePendingBySomethingOtherThan6withinSayAA0D3RefVGSgAH_SayAA9AttributeV7PatternVGAA8SnapshotVtFZAA8ViewListV_Tt2g5Tm(v10, static ViewResponder.types, *(*(v13 + 8 * v12) + 8));
      if (isStackAllocationSafe)
      {
        specialized Interpreter.Iterator.new<A>(abstract:rootedAt:discreet:restriction:)(v8, v10, 0, isStackAllocationSafe, &protocol witness table for ViewResponder);

        return 1;
      }

      v49 = 0;
      LOBYTE(a3) = v5;
LABEL_9:
      if ((a3 & 2) == 0)
      {
        return v49;
      }

      if (a2[48])
      {
        goto LABEL_76;
      }

      v14 = *(a2 + 22);
      v15 = *a2;
      if (v15 >= *(v14 + 116))
      {
        goto LABEL_63;
      }

      v16 = *(v14 + 104);
      if (!v16)
      {
        goto LABEL_77;
      }

      v17 = *(*(v16 + 8 * v15) + 8);
      if (*(v17 + 44) <= v10)
      {
        goto LABEL_64;
      }

      v18 = *(v17 + 32);
      if (!v18)
      {
        goto LABEL_78;
      }

      v4 = 0;
      v6 = v18 + (v10 << 7);
      v5 = *(v6 + 124);
      v7 = 4 * v5;
      if (v5 < 0x101)
      {
        continue;
      }

      break;
    }
  }

  v7 = swift_slowAlloc();
  specialized closure #1 in static Event.each(_:of:do:)(v7, v5, v6, 19459, a2, v8, &v49, v10);
  if (v4)
  {
    while (1)
    {

      v47 = v7;
LABEL_80:
      MEMORY[0x26D69EAB0](v47, -1, -1);
      __break(1u);
    }
  }

  MEMORY[0x26D69EAB0](v7, -1, -1);
  return v49;
}

{
  v8 = v3;
  v10 = isStackAllocationSafe;
  v50 = *MEMORY[0x277D85DE8];
  v49 = 0;
  if ((a3 & 1) == 0)
  {
    goto LABEL_9;
  }

  if (one-time initialization token for types != -1)
  {
    goto LABEL_60;
  }

  if (!a2[48])
  {
    goto LABEL_4;
  }

LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
  while (1)
  {
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      break;
    }

    while (2)
    {
      v19 = MEMORY[0x28223BE20](isStackAllocationSafe);
      v22 = (v48 - v21);
      v23 = 0;
      v24 = 0;
      v25 = *(v6 + 112);
LABEL_17:
      v26 = (v25 + 8 * v24);
      while (v5 != v24)
      {
        if (v24 >= v5)
        {
          goto LABEL_54;
        }

        if (!v25)
        {
          goto LABEL_71;
        }

        v27 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_55;
        }

        v29 = *v26;
        v26 += 4;
        v28 = v29;
        ++v24;
        if ((v29 & 0x8000) == 0 && (v28 & 0xC03) != 0)
        {
          if (__OFADD__(v23, 1))
          {
            goto LABEL_69;
          }

          v22[v23++] = *(v26 - 1);
          v24 = v27;
          goto LABEL_17;
        }
      }

      if (v23 < 0)
      {
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
      }

      v48[0] = v20;
      if (!v23)
      {
        return v49;
      }

      v30 = &v22[v23];
      v7 = 32800;
      while (1)
      {
        if (a2[48])
        {
          goto LABEL_72;
        }

        v31 = *(a2 + 22);
        v32 = *a2;
        if (v32 >= *(v31 + 116))
        {
          goto LABEL_56;
        }

        v33 = *(v31 + 104);
        if (!v33)
        {
          goto LABEL_73;
        }

        v34 = *v22;
        v35 = *(*(v33 + 8 * v32) + 8);
        if (v34 >= *(v35 + 44))
        {
          goto LABEL_57;
        }

        v36 = *(v35 + 32);
        if (!v36)
        {
          goto LABEL_74;
        }

        v5 = *(v36 + (v34 << 7) + 124);
        v6 = 4 * v5;
        if (v5 < 0x101)
        {
          break;
        }

        v45 = v36 + (v34 << 7);
        v19 = swift_stdlib_isStackAllocationSafe();
        if (v19)
        {
          break;
        }

        v6 = swift_slowAlloc();
        specialized closure #1 in static Event.each(_:of:do:)(v6, v5, v45, 16416, a2, v8, &v49, v10);
        if (v4)
        {
          goto LABEL_79;
        }

        v19 = MEMORY[0x26D69EAB0](v6, -1, -1);
LABEL_46:
        if (++v22 == v30)
        {
          return v49;
        }
      }

      MEMORY[0x28223BE20](v19);
      v38 = (v48 - v37);
      v39 = 0;
      v40 = 0;
      v41 = *(a3 + 112);
LABEL_36:
      v42 = (v41 + 8 * v40);
      while (1)
      {
        if (v5 == v40)
        {
          if (v39 < 0)
          {
            goto LABEL_58;
          }

          specialized closure #1 in closure #1 in static EventAbstraction.model(update:within:position:)(v38, v39, a3, a2, v8, &v49, v10);
          goto LABEL_46;
        }

        if (v40 >= v5)
        {
          break;
        }

        if (!v41)
        {
          goto LABEL_70;
        }

        v43 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          goto LABEL_53;
        }

        v44 = *v42;
        v42 += 4;
        ++v40;
        if ((v44 & 0x8020) == 0x20)
        {
          if (__OFADD__(v39, 1))
          {
            goto LABEL_59;
          }

          v38[v39++] = *(v42 - 1);
          v40 = v43;
          goto LABEL_36;
        }
      }

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
LABEL_60:
      v4 = a3;
      swift_once();
      a3 = v4;
      if (a2[48])
      {
        goto LABEL_61;
      }

LABEL_4:
      v11 = *(a2 + 22);
      v12 = *a2;
      if (v12 >= *(v11 + 116))
      {
        goto LABEL_62;
      }

      v13 = *(v11 + 104);
      if (!v13)
      {
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:

        v47 = v6;
        goto LABEL_80;
      }

      v5 = a3;
      isStackAllocationSafe = _s21SwiftUITracingSupport16EventAbstractionPAAE6update_31madePendingBySomethingOtherThan6withinSayAA0D3RefVGSgAH_SayAA9AttributeV7PatternVGAA8SnapshotVtFZAA8ViewListV_Tt2g5Tm(v10, static PlatformViews.types, *(*(v13 + 8 * v12) + 8));
      if (isStackAllocationSafe)
      {
        specialized Interpreter.Iterator.new<A>(abstract:rootedAt:discreet:restriction:)(v8, v10, 0, isStackAllocationSafe);

        return 1;
      }

      v49 = 0;
      LOBYTE(a3) = v5;
LABEL_9:
      if ((a3 & 2) == 0)
      {
        return v49;
      }

      if (a2[48])
      {
        goto LABEL_76;
      }

      v14 = *(a2 + 22);
      v15 = *a2;
      if (v15 >= *(v14 + 116))
      {
        goto LABEL_63;
      }

      v16 = *(v14 + 104);
      if (!v16)
      {
        goto LABEL_77;
      }

      v17 = *(*(v16 + 8 * v15) + 8);
      if (*(v17 + 44) <= v10)
      {
        goto LABEL_64;
      }

      v18 = *(v17 + 32);
      if (!v18)
      {
        goto LABEL_78;
      }

      v4 = 0;
      v6 = v18 + (v10 << 7);
      v5 = *(v6 + 124);
      v7 = 4 * v5;
      if (v5 < 0x101)
      {
        continue;
      }

      break;
    }
  }

  v7 = swift_slowAlloc();
  specialized closure #1 in static Event.each(_:of:do:)(v7, v5, v6, 19459, a2, v8, &v49, v10);
  if (v4)
  {
    while (1)
    {

      v47 = v7;
LABEL_80:
      MEMORY[0x26D69EAB0](v47, -1, -1);
      __break(1u);
    }
  }

  MEMORY[0x26D69EAB0](v7, -1, -1);
  return v49;
}

{
  v8 = v3;
  v10 = isStackAllocationSafe;
  v50 = *MEMORY[0x277D85DE8];
  v49 = 0;
  if ((a3 & 1) == 0)
  {
    goto LABEL_9;
  }

  if (one-time initialization token for types != -1)
  {
    goto LABEL_60;
  }

  if (!a2[48])
  {
    goto LABEL_4;
  }

LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
  while (1)
  {
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      break;
    }

    while (2)
    {
      v19 = MEMORY[0x28223BE20](isStackAllocationSafe);
      v22 = (v48 - v21);
      v23 = 0;
      v24 = 0;
      v25 = *(v6 + 112);
LABEL_17:
      v26 = (v25 + 8 * v24);
      while (v5 != v24)
      {
        if (v24 >= v5)
        {
          goto LABEL_54;
        }

        if (!v25)
        {
          goto LABEL_71;
        }

        v27 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_55;
        }

        v29 = *v26;
        v26 += 4;
        v28 = v29;
        ++v24;
        if ((v29 & 0x8000) == 0 && (v28 & 0xC03) != 0)
        {
          if (__OFADD__(v23, 1))
          {
            goto LABEL_69;
          }

          v22[v23++] = *(v26 - 1);
          v24 = v27;
          goto LABEL_17;
        }
      }

      if (v23 < 0)
      {
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
      }

      v48[0] = v20;
      if (!v23)
      {
        return v49;
      }

      v30 = &v22[v23];
      v7 = 32800;
      while (1)
      {
        if (a2[48])
        {
          goto LABEL_72;
        }

        v31 = *(a2 + 22);
        v32 = *a2;
        if (v32 >= *(v31 + 116))
        {
          goto LABEL_56;
        }

        v33 = *(v31 + 104);
        if (!v33)
        {
          goto LABEL_73;
        }

        v34 = *v22;
        v35 = *(*(v33 + 8 * v32) + 8);
        if (v34 >= *(v35 + 44))
        {
          goto LABEL_57;
        }

        v36 = *(v35 + 32);
        if (!v36)
        {
          goto LABEL_74;
        }

        v5 = *(v36 + (v34 << 7) + 124);
        v6 = 4 * v5;
        if (v5 < 0x101)
        {
          break;
        }

        v45 = v36 + (v34 << 7);
        v19 = swift_stdlib_isStackAllocationSafe();
        if (v19)
        {
          break;
        }

        v6 = swift_slowAlloc();
        specialized closure #1 in static Event.each(_:of:do:)(v6, v5, v45, 16416, a2, v8, &v49, v10);
        if (v4)
        {
          goto LABEL_79;
        }

        v19 = MEMORY[0x26D69EAB0](v6, -1, -1);
LABEL_46:
        if (++v22 == v30)
        {
          return v49;
        }
      }

      MEMORY[0x28223BE20](v19);
      v38 = (v48 - v37);
      v39 = 0;
      v40 = 0;
      v41 = *(a3 + 112);
LABEL_36:
      v42 = (v41 + 8 * v40);
      while (1)
      {
        if (v5 == v40)
        {
          if (v39 < 0)
          {
            goto LABEL_58;
          }

          specialized closure #1 in closure #1 in static EventAbstraction.model(update:within:position:)(v38, v39, a3, a2, v8, &v49, v10);
          goto LABEL_46;
        }

        if (v40 >= v5)
        {
          break;
        }

        if (!v41)
        {
          goto LABEL_70;
        }

        v43 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          goto LABEL_53;
        }

        v44 = *v42;
        v42 += 4;
        ++v40;
        if ((v44 & 0x8020) == 0x20)
        {
          if (__OFADD__(v39, 1))
          {
            goto LABEL_59;
          }

          v38[v39++] = *(v42 - 1);
          v40 = v43;
          goto LABEL_36;
        }
      }

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
LABEL_60:
      v4 = a3;
      swift_once();
      a3 = v4;
      if (a2[48])
      {
        goto LABEL_61;
      }

LABEL_4:
      v11 = *(a2 + 22);
      v12 = *a2;
      if (v12 >= *(v11 + 116))
      {
        goto LABEL_62;
      }

      v13 = *(v11 + 104);
      if (!v13)
      {
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:

        v47 = v6;
        goto LABEL_80;
      }

      v5 = a3;
      isStackAllocationSafe = _s21SwiftUITracingSupport16EventAbstractionPAAE6update_31madePendingBySomethingOtherThan6withinSayAA0D3RefVGSgAH_SayAA9AttributeV7PatternVGAA8SnapshotVtFZAA8ViewListV_Tt2g5Tm(v10, static ViewCreation.types, *(*(v13 + 8 * v12) + 8));
      if (isStackAllocationSafe)
      {
        specialized Interpreter.Iterator.new<A>(abstract:rootedAt:discreet:restriction:)(v8, v10, 0, isStackAllocationSafe, &protocol witness table for ViewCreation);

        return 1;
      }

      v49 = 0;
      LOBYTE(a3) = v5;
LABEL_9:
      if ((a3 & 2) == 0)
      {
        return v49;
      }

      if (a2[48])
      {
        goto LABEL_76;
      }

      v14 = *(a2 + 22);
      v15 = *a2;
      if (v15 >= *(v14 + 116))
      {
        goto LABEL_63;
      }

      v16 = *(v14 + 104);
      if (!v16)
      {
        goto LABEL_77;
      }

      v17 = *(*(v16 + 8 * v15) + 8);
      if (*(v17 + 44) <= v10)
      {
        goto LABEL_64;
      }

      v18 = *(v17 + 32);
      if (!v18)
      {
        goto LABEL_78;
      }

      v4 = 0;
      v6 = v18 + (v10 << 7);
      v5 = *(v6 + 124);
      v7 = 4 * v5;
      if (v5 < 0x101)
      {
        continue;
      }

      break;
    }
  }

  v7 = swift_slowAlloc();
  specialized closure #1 in static Event.each(_:of:do:)(v7, v5, v6, 19459, a2, v8, &v49, v10);
  if (v4)
  {
    while (1)
    {

      v47 = v7;
LABEL_80:
      MEMORY[0x26D69EAB0](v47, -1, -1);
      __break(1u);
    }
  }

  MEMORY[0x26D69EAB0](v7, -1, -1);
  return v49;
}

{
  v8 = v3;
  v10 = isStackAllocationSafe;
  v50 = *MEMORY[0x277D85DE8];
  v49 = 0;
  if ((a3 & 1) == 0)
  {
    goto LABEL_9;
  }

  if (one-time initialization token for types != -1)
  {
    goto LABEL_60;
  }

  if (!a2[48])
  {
    goto LABEL_4;
  }

LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
  while (1)
  {
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      break;
    }

    while (2)
    {
      v19 = MEMORY[0x28223BE20](isStackAllocationSafe);
      v22 = (v48 - v21);
      v23 = 0;
      v24 = 0;
      v25 = *(v6 + 112);
LABEL_17:
      v26 = (v25 + 8 * v24);
      while (v5 != v24)
      {
        if (v24 >= v5)
        {
          goto LABEL_54;
        }

        if (!v25)
        {
          goto LABEL_71;
        }

        v27 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_55;
        }

        v29 = *v26;
        v26 += 4;
        v28 = v29;
        ++v24;
        if ((v29 & 0x8000) == 0 && (v28 & 0xC03) != 0)
        {
          if (__OFADD__(v23, 1))
          {
            goto LABEL_69;
          }

          v22[v23++] = *(v26 - 1);
          v24 = v27;
          goto LABEL_17;
        }
      }

      if (v23 < 0)
      {
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
      }

      v48[0] = v20;
      if (!v23)
      {
        return v49;
      }

      v30 = &v22[v23];
      v7 = 32800;
      while (1)
      {
        if (a2[48])
        {
          goto LABEL_72;
        }

        v31 = *(a2 + 22);
        v32 = *a2;
        if (v32 >= *(v31 + 116))
        {
          goto LABEL_56;
        }

        v33 = *(v31 + 104);
        if (!v33)
        {
          goto LABEL_73;
        }

        v34 = *v22;
        v35 = *(*(v33 + 8 * v32) + 8);
        if (v34 >= *(v35 + 44))
        {
          goto LABEL_57;
        }

        v36 = *(v35 + 32);
        if (!v36)
        {
          goto LABEL_74;
        }

        v5 = *(v36 + (v34 << 7) + 124);
        v6 = 4 * v5;
        if (v5 < 0x101)
        {
          break;
        }

        v45 = v36 + (v34 << 7);
        v19 = swift_stdlib_isStackAllocationSafe();
        if (v19)
        {
          break;
        }

        v6 = swift_slowAlloc();
        specialized closure #1 in static Event.each(_:of:do:)(v6, v5, v45, 16416, a2, v8, &v49, v10);
        if (v4)
        {
          goto LABEL_79;
        }

        v19 = MEMORY[0x26D69EAB0](v6, -1, -1);
LABEL_46:
        if (++v22 == v30)
        {
          return v49;
        }
      }

      MEMORY[0x28223BE20](v19);
      v38 = (v48 - v37);
      v39 = 0;
      v40 = 0;
      v41 = *(a3 + 112);
LABEL_36:
      v42 = (v41 + 8 * v40);
      while (1)
      {
        if (v5 == v40)
        {
          if (v39 < 0)
          {
            goto LABEL_58;
          }

          specialized closure #1 in closure #1 in static EventAbstraction.model(update:within:position:)(v38, v39, a3, a2, v8, &v49, v10);
          goto LABEL_46;
        }

        if (v40 >= v5)
        {
          break;
        }

        if (!v41)
        {
          goto LABEL_70;
        }

        v43 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          goto LABEL_53;
        }

        v44 = *v42;
        v42 += 4;
        ++v40;
        if ((v44 & 0x8020) == 0x20)
        {
          if (__OFADD__(v39, 1))
          {
            goto LABEL_59;
          }

          v38[v39++] = *(v42 - 1);
          v40 = v43;
          goto LABEL_36;
        }
      }

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
LABEL_60:
      v4 = a3;
      swift_once();
      a3 = v4;
      if (a2[48])
      {
        goto LABEL_61;
      }

LABEL_4:
      v11 = *(a2 + 22);
      v12 = *a2;
      if (v12 >= *(v11 + 116))
      {
        goto LABEL_62;
      }

      v13 = *(v11 + 104);
      if (!v13)
      {
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:

        v47 = v6;
        goto LABEL_80;
      }

      v5 = a3;
      isStackAllocationSafe = _s21SwiftUITracingSupport16EventAbstractionPAAE6update_31madePendingBySomethingOtherThan6withinSayAA0D3RefVGSgAH_SayAA9AttributeV7PatternVGAA8SnapshotVtFZAA8ViewListV_Tt2g5Tm(v10, static Transactions.types, *(*(v13 + 8 * v12) + 8));
      if (isStackAllocationSafe)
      {
        specialized Interpreter.Iterator.new<A>(abstract:rootedAt:discreet:restriction:)(v8, v10, 0, isStackAllocationSafe, &protocol witness table for Transactions);

        return 1;
      }

      v49 = 0;
      LOBYTE(a3) = v5;
LABEL_9:
      if ((a3 & 2) == 0)
      {
        return v49;
      }

      if (a2[48])
      {
        goto LABEL_76;
      }

      v14 = *(a2 + 22);
      v15 = *a2;
      if (v15 >= *(v14 + 116))
      {
        goto LABEL_63;
      }

      v16 = *(v14 + 104);
      if (!v16)
      {
        goto LABEL_77;
      }

      v17 = *(*(v16 + 8 * v15) + 8);
      if (*(v17 + 44) <= v10)
      {
        goto LABEL_64;
      }

      v18 = *(v17 + 32);
      if (!v18)
      {
        goto LABEL_78;
      }

      v4 = 0;
      v6 = v18 + (v10 << 7);
      v5 = *(v6 + 124);
      v7 = 4 * v5;
      if (v5 < 0x101)
      {
        continue;
      }

      break;
    }
  }

  v7 = swift_slowAlloc();
  specialized closure #1 in static Event.each(_:of:do:)(v7, v5, v6, 19459, a2, v8, &v49, v10);
  if (v4)
  {
    while (1)
    {

      v47 = v7;
LABEL_80:
      MEMORY[0x26D69EAB0](v47, -1, -1);
      __break(1u);
    }
  }

  MEMORY[0x26D69EAB0](v7, -1, -1);
  return v49;
}

{
  v8 = v3;
  v10 = isStackAllocationSafe;
  v50 = *MEMORY[0x277D85DE8];
  v49 = 0;
  if ((a3 & 1) == 0)
  {
    goto LABEL_9;
  }

  if (one-time initialization token for types != -1)
  {
    goto LABEL_60;
  }

  if (!a2[48])
  {
    goto LABEL_4;
  }

LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
  while (1)
  {
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      break;
    }

    while (2)
    {
      v19 = MEMORY[0x28223BE20](isStackAllocationSafe);
      v22 = (v48 - v21);
      v23 = 0;
      v24 = 0;
      v25 = *(v6 + 112);
LABEL_17:
      v26 = (v25 + 8 * v24);
      while (v5 != v24)
      {
        if (v24 >= v5)
        {
          goto LABEL_54;
        }

        if (!v25)
        {
          goto LABEL_71;
        }

        v27 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_55;
        }

        v29 = *v26;
        v26 += 4;
        v28 = v29;
        ++v24;
        if ((v29 & 0x8000) == 0 && (v28 & 0xC03) != 0)
        {
          if (__OFADD__(v23, 1))
          {
            goto LABEL_69;
          }

          v22[v23++] = *(v26 - 1);
          v24 = v27;
          goto LABEL_17;
        }
      }

      if (v23 < 0)
      {
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
      }

      v48[0] = v20;
      if (!v23)
      {
        return v49;
      }

      v30 = &v22[v23];
      v7 = 32800;
      while (1)
      {
        if (a2[48])
        {
          goto LABEL_72;
        }

        v31 = *(a2 + 22);
        v32 = *a2;
        if (v32 >= *(v31 + 116))
        {
          goto LABEL_56;
        }

        v33 = *(v31 + 104);
        if (!v33)
        {
          goto LABEL_73;
        }

        v34 = *v22;
        v35 = *(*(v33 + 8 * v32) + 8);
        if (v34 >= *(v35 + 44))
        {
          goto LABEL_57;
        }

        v36 = *(v35 + 32);
        if (!v36)
        {
          goto LABEL_74;
        }

        v5 = *(v36 + (v34 << 7) + 124);
        v6 = 4 * v5;
        if (v5 < 0x101)
        {
          break;
        }

        v45 = v36 + (v34 << 7);
        v19 = swift_stdlib_isStackAllocationSafe();
        if (v19)
        {
          break;
        }

        v6 = swift_slowAlloc();
        specialized closure #1 in static Event.each(_:of:do:)(v6, v5, v45, 16416, a2, v8, &v49, v10);
        if (v4)
        {
          goto LABEL_79;
        }

        v19 = MEMORY[0x26D69EAB0](v6, -1, -1);
LABEL_46:
        if (++v22 == v30)
        {
          return v49;
        }
      }

      MEMORY[0x28223BE20](v19);
      v38 = (v48 - v37);
      v39 = 0;
      v40 = 0;
      v41 = *(a3 + 112);
LABEL_36:
      v42 = (v41 + 8 * v40);
      while (1)
      {
        if (v5 == v40)
        {
          if (v39 < 0)
          {
            goto LABEL_58;
          }

          specialized closure #1 in closure #1 in static EventAbstraction.model(update:within:position:)(v38, v39, a3, a2, v8, &v49, v10);
          goto LABEL_46;
        }

        if (v40 >= v5)
        {
          break;
        }

        if (!v41)
        {
          goto LABEL_70;
        }

        v43 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          goto LABEL_53;
        }

        v44 = *v42;
        v42 += 4;
        ++v40;
        if ((v44 & 0x8020) == 0x20)
        {
          if (__OFADD__(v39, 1))
          {
            goto LABEL_59;
          }

          v38[v39++] = *(v42 - 1);
          v40 = v43;
          goto LABEL_36;
        }
      }

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
LABEL_60:
      v4 = a3;
      swift_once();
      a3 = v4;
      if (a2[48])
      {
        goto LABEL_61;
      }

LABEL_4:
      v11 = *(a2 + 22);
      v12 = *a2;
      if (v12 >= *(v11 + 116))
      {
        goto LABEL_62;
      }

      v13 = *(v11 + 104);
      if (!v13)
      {
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:

        v47 = v6;
        goto LABEL_80;
      }

      v5 = a3;
      isStackAllocationSafe = _s21SwiftUITracingSupport16EventAbstractionPAAE6update_31madePendingBySomethingOtherThan6withinSayAA0D3RefVGSgAH_SayAA9AttributeV7PatternVGAA8SnapshotVtFZAA8ViewListV_Tt2g5Tm(v10, static PhaseWriting.types, *(*(v13 + 8 * v12) + 8));
      if (isStackAllocationSafe)
      {
        specialized Interpreter.Iterator.new<A>(abstract:rootedAt:discreet:restriction:)(v8, v10, 0, isStackAllocationSafe, &protocol witness table for PhaseWriting);

        return 1;
      }

      v49 = 0;
      LOBYTE(a3) = v5;
LABEL_9:
      if ((a3 & 2) == 0)
      {
        return v49;
      }

      if (a2[48])
      {
        goto LABEL_76;
      }

      v14 = *(a2 + 22);
      v15 = *a2;
      if (v15 >= *(v14 + 116))
      {
        goto LABEL_63;
      }

      v16 = *(v14 + 104);
      if (!v16)
      {
        goto LABEL_77;
      }

      v17 = *(*(v16 + 8 * v15) + 8);
      if (*(v17 + 44) <= v10)
      {
        goto LABEL_64;
      }

      v18 = *(v17 + 32);
      if (!v18)
      {
        goto LABEL_78;
      }

      v4 = 0;
      v6 = v18 + (v10 << 7);
      v5 = *(v6 + 124);
      v7 = 4 * v5;
      if (v5 < 0x101)
      {
        continue;
      }

      break;
    }
  }

  v7 = swift_slowAlloc();
  specialized closure #1 in static Event.each(_:of:do:)(v7, v5, v6, 19459, a2, v8, &v49, v10);
  if (v4)
  {
    while (1)
    {

      v47 = v7;
LABEL_80:
      MEMORY[0x26D69EAB0](v47, -1, -1);
      __break(1u);
    }
  }

  MEMORY[0x26D69EAB0](v7, -1, -1);
  return v49;
}

{
  v8 = v3;
  v10 = isStackAllocationSafe;
  v50 = *MEMORY[0x277D85DE8];
  v49 = 0;
  if ((a3 & 1) == 0)
  {
    goto LABEL_9;
  }

  if (one-time initialization token for types != -1)
  {
    goto LABEL_60;
  }

  if (!a2[48])
  {
    goto LABEL_4;
  }

LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
  while (1)
  {
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      break;
    }

    while (2)
    {
      v19 = MEMORY[0x28223BE20](isStackAllocationSafe);
      v22 = (v48 - v21);
      v23 = 0;
      v24 = 0;
      v25 = *(v6 + 112);
LABEL_17:
      v26 = (v25 + 8 * v24);
      while (v5 != v24)
      {
        if (v24 >= v5)
        {
          goto LABEL_54;
        }

        if (!v25)
        {
          goto LABEL_71;
        }

        v27 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_55;
        }

        v29 = *v26;
        v26 += 4;
        v28 = v29;
        ++v24;
        if ((v29 & 0x8000) == 0 && (v28 & 0xC03) != 0)
        {
          if (__OFADD__(v23, 1))
          {
            goto LABEL_69;
          }

          v22[v23++] = *(v26 - 1);
          v24 = v27;
          goto LABEL_17;
        }
      }

      if (v23 < 0)
      {
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
      }

      v48[0] = v20;
      if (!v23)
      {
        return v49;
      }

      v30 = &v22[v23];
      v7 = 32800;
      while (1)
      {
        if (a2[48])
        {
          goto LABEL_72;
        }

        v31 = *(a2 + 22);
        v32 = *a2;
        if (v32 >= *(v31 + 116))
        {
          goto LABEL_56;
        }

        v33 = *(v31 + 104);
        if (!v33)
        {
          goto LABEL_73;
        }

        v34 = *v22;
        v35 = *(*(v33 + 8 * v32) + 8);
        if (v34 >= *(v35 + 44))
        {
          goto LABEL_57;
        }

        v36 = *(v35 + 32);
        if (!v36)
        {
          goto LABEL_74;
        }

        v5 = *(v36 + (v34 << 7) + 124);
        v6 = 4 * v5;
        if (v5 < 0x101)
        {
          break;
        }

        v45 = v36 + (v34 << 7);
        v19 = swift_stdlib_isStackAllocationSafe();
        if (v19)
        {
          break;
        }

        v6 = swift_slowAlloc();
        specialized closure #1 in static Event.each(_:of:do:)(v6, v5, v45, 16416, a2, v8, &v49, v10);
        if (v4)
        {
          goto LABEL_79;
        }

        v19 = MEMORY[0x26D69EAB0](v6, -1, -1);
LABEL_46:
        if (++v22 == v30)
        {
          return v49;
        }
      }

      MEMORY[0x28223BE20](v19);
      v38 = (v48 - v37);
      v39 = 0;
      v40 = 0;
      v41 = *(a3 + 112);
LABEL_36:
      v42 = (v41 + 8 * v40);
      while (1)
      {
        if (v5 == v40)
        {
          if (v39 < 0)
          {
            goto LABEL_58;
          }

          specialized closure #1 in closure #1 in static EventAbstraction.model(update:within:position:)(v38, v39, a3, a2, v8, &v49, v10);
          goto LABEL_46;
        }

        if (v40 >= v5)
        {
          break;
        }

        if (!v41)
        {
          goto LABEL_70;
        }

        v43 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          goto LABEL_53;
        }

        v44 = *v42;
        v42 += 4;
        ++v40;
        if ((v44 & 0x8020) == 0x20)
        {
          if (__OFADD__(v39, 1))
          {
            goto LABEL_59;
          }

          v38[v39++] = *(v42 - 1);
          v40 = v43;
          goto LABEL_36;
        }
      }

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
LABEL_60:
      v4 = a3;
      swift_once();
      a3 = v4;
      if (a2[48])
      {
        goto LABEL_61;
      }

LABEL_4:
      v11 = *(a2 + 22);
      v12 = *a2;
      if (v12 >= *(v11 + 116))
      {
        goto LABEL_62;
      }

      v13 = *(v11 + 104);
      if (!v13)
      {
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:

        v47 = v6;
        goto LABEL_80;
      }

      v5 = a3;
      isStackAllocationSafe = _s21SwiftUITracingSupport16EventAbstractionPAAE6update_31madePendingBySomethingOtherThan6withinSayAA0D3RefVGSgAH_SayAA9AttributeV7PatternVGAA8SnapshotVtFZAA8ViewListV_Tt2g5Tm(v10, static DisplayList.types, *(*(v13 + 8 * v12) + 8));
      if (isStackAllocationSafe)
      {
        specialized Interpreter.Iterator.new<A>(abstract:rootedAt:discreet:restriction:)(v8, v10, 0, isStackAllocationSafe, &protocol witness table for DisplayList);

        return 1;
      }

      v49 = 0;
      LOBYTE(a3) = v5;
LABEL_9:
      if ((a3 & 2) == 0)
      {
        return v49;
      }

      if (a2[48])
      {
        goto LABEL_76;
      }

      v14 = *(a2 + 22);
      v15 = *a2;
      if (v15 >= *(v14 + 116))
      {
        goto LABEL_63;
      }

      v16 = *(v14 + 104);
      if (!v16)
      {
        goto LABEL_77;
      }

      v17 = *(*(v16 + 8 * v15) + 8);
      if (*(v17 + 44) <= v10)
      {
        goto LABEL_64;
      }

      v18 = *(v17 + 32);
      if (!v18)
      {
        goto LABEL_78;
      }

      v4 = 0;
      v6 = v18 + (v10 << 7);
      v5 = *(v6 + 124);
      v7 = 4 * v5;
      if (v5 < 0x101)
      {
        continue;
      }

      break;
    }
  }

  v7 = swift_slowAlloc();
  specialized closure #1 in static Event.each(_:of:do:)(v7, v5, v6, 19459, a2, v8, &v49, v10);
  if (v4)
  {
    while (1)
    {

      v47 = v7;
LABEL_80:
      MEMORY[0x26D69EAB0](v47, -1, -1);
      __break(1u);
    }
  }

  MEMORY[0x26D69EAB0](v7, -1, -1);
  return v49;
}

uint64_t specialized static EventAbstraction.model(update:within:position:)(uint64_t a1, unsigned __int8 *a2, unint64_t a3)
{
  v8 = v3;
  v10 = a1;
  v51 = *MEMORY[0x277D85DE8];
  v50 = 0;
  if ((a3 & 1) == 0)
  {
    goto LABEL_8;
  }

  if (a2[48])
  {
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:

    v48 = v6;
    goto LABEL_78;
  }

  v11 = *(a2 + 22);
  v12 = *a2;
  if (v12 >= *(v11 + 116))
  {
    goto LABEL_59;
  }

  v13 = *(v11 + 104);
  if (!v13)
  {
    goto LABEL_73;
  }

  v5 = a3;
  a1 = _s21SwiftUITracingSupport16EventAbstractionPAAE6update_31madePendingBySomethingOtherThan6withinSayAA0D3RefVGSgAH_SayAA9AttributeV7PatternVGAA8SnapshotVtFZAA8ViewListV_Tt2g5Tm(a1, MEMORY[0x277D84F90], *(*(v13 + 8 * v12) + 8));
  if (a1)
  {
    specialized Interpreter.Iterator.new<A>(abstract:rootedAt:discreet:restriction:)(v8, v10, 0, a1, &protocol witness table for ViewBodies);

    return 1;
  }

  v50 = 0;
  LOBYTE(a3) = v5;
LABEL_8:
  if ((a3 & 2) == 0)
  {
    return v50;
  }

  if (a2[48])
  {
    goto LABEL_74;
  }

  v14 = *(a2 + 22);
  v15 = *a2;
  if (v15 >= *(v14 + 116))
  {
    goto LABEL_60;
  }

  v16 = *(v14 + 104);
  if (!v16)
  {
    goto LABEL_75;
  }

  v17 = *(*(v16 + 8 * v15) + 8);
  if (*(v17 + 44) <= v10)
  {
    goto LABEL_61;
  }

  v18 = *(v17 + 32);
  if (!v18)
  {
    goto LABEL_76;
  }

  v4 = 0;
  v6 = v18 + (v10 << 7);
  v5 = *(v6 + 124);
  if (v5 >= 0x101)
  {
    goto LABEL_62;
  }

  do
  {
    isStackAllocationSafe = MEMORY[0x28223BE20](a1);
    v22 = (v49 - v21);
    v23 = 0;
    v24 = 0;
    v25 = *(v6 + 112);
LABEL_16:
    v26 = (v25 + 8 * v24);
    while (v5 != v24)
    {
      if (v24 >= v5)
      {
        goto LABEL_53;
      }

      if (!v25)
      {
        goto LABEL_68;
      }

      v27 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        goto LABEL_54;
      }

      v29 = *v26;
      v26 += 4;
      v28 = v29;
      ++v24;
      if ((v29 & 0x8000) == 0 && (v28 & 0xC03) != 0)
      {
        if (__OFADD__(v23, 1))
        {
          goto LABEL_66;
        }

        v22[v23++] = *(v26 - 1);
        v24 = v27;
        goto LABEL_16;
      }
    }

    if (v23 < 0)
    {
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
    }

    v49[0] = v20;
    if (!v23)
    {
      return v50;
    }

    v30 = &v22[v23];
    v7 = 32800;
    while (1)
    {
      if (a2[48])
      {
        goto LABEL_69;
      }

      v31 = *(a2 + 22);
      v32 = *a2;
      if (v32 >= *(v31 + 116))
      {
        goto LABEL_55;
      }

      v33 = *(v31 + 104);
      if (!v33)
      {
        goto LABEL_70;
      }

      v34 = *v22;
      v35 = *(*(v33 + 8 * v32) + 8);
      if (v34 >= *(v35 + 44))
      {
        goto LABEL_56;
      }

      v36 = *(v35 + 32);
      if (!v36)
      {
        goto LABEL_71;
      }

      v5 = *(v36 + (v34 << 7) + 124);
      v6 = 4 * v5;
      if (v5 < 0x101)
      {
        break;
      }

      v46 = v36 + (v34 << 7);
      isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
      if (isStackAllocationSafe)
      {
        break;
      }

      v6 = swift_slowAlloc();
      specialized closure #1 in static Event.each(_:of:do:)(v6, v5, v46, 16416, a2, v8, &v50, v10);
      if (v4)
      {
        goto LABEL_77;
      }

      isStackAllocationSafe = MEMORY[0x26D69EAB0](v6, -1, -1);
LABEL_45:
      if (++v22 == v30)
      {
        return v50;
      }
    }

    MEMORY[0x28223BE20](isStackAllocationSafe);
    v39 = (v49 - v38);
    v40 = 0;
    v41 = 0;
    v42 = *(v37 + 112);
LABEL_35:
    v43 = (v42 + 8 * v41);
    while (1)
    {
      if (v5 == v41)
      {
        if (v40 < 0)
        {
          goto LABEL_57;
        }

        specialized closure #1 in closure #1 in static EventAbstraction.model(update:within:position:)(v39, v40, v37, a2, v8, &v50, v10);
        goto LABEL_45;
      }

      if (v41 >= v5)
      {
        break;
      }

      if (!v42)
      {
        goto LABEL_67;
      }

      v44 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        goto LABEL_52;
      }

      v45 = *v43;
      v43 += 4;
      ++v41;
      if ((v45 & 0x8020) == 0x20)
      {
        if (__OFADD__(v40, 1))
        {
          goto LABEL_58;
        }

        v39[v40++] = *(v43 - 1);
        v41 = v44;
        goto LABEL_35;
      }
    }

    __break(1u);
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
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    a1 = swift_stdlib_isStackAllocationSafe();
  }

  while ((a1 & 1) != 0);
  v7 = swift_slowAlloc();
  specialized closure #1 in static Event.each(_:of:do:)(v7, v5, v6, 19459, a2, v8, &v50, v10);
  if (v4)
  {
    while (1)
    {

      v48 = v7;
LABEL_78:
      MEMORY[0x26D69EAB0](v48, -1, -1);
      __break(1u);
    }
  }

  MEMORY[0x26D69EAB0](v7, -1, -1);
  return v50;
}

uint64_t static EventAbstraction.model(update:within:position:)(uint64_t a1, unsigned __int8 *a2, char *a3, uint64_t a4, uint64_t a5)
{
  v8 = a1;
  v9 = *a3;
  v18 = 0;
  if (*a3)
  {
    v12 = (*(a5 + 56))(a1, a2, a4, a5);
    v11 = (v12 & 0x100000000uLL) >> 32;
    v10 = (v12 & 0x100000000) == 0;
    v18 = (v12 & 0x100000000) == 0;
  }

  else
  {
    v10 = 0;
    LODWORD(v11) = 1;
  }

  v13 = (*(a5 + 16))(a4, a5);
  if ((v9 & 2) == 0 || ((v13 ^ 1 | v11) & 1) == 0)
  {
    return v10;
  }

  result = (*(a5 + 32))(a4, a5);
  if (a2[48])
  {
    goto LABEL_15;
  }

  v15 = *(a2 + 22);
  if (*a2 >= *(v15 + 116))
  {
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!*(v15 + 104))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  result = MEMORY[0x28223BE20](result);
  if (*(v16 + 44) <= v8)
  {
    goto LABEL_14;
  }

  v17 = *(v16 + 32);
  if (v17)
  {
    specialized static Event.each(_:of:do:)(result | 0x4000, v17 + (v8 << 7), partial apply for closure #1 in static EventAbstraction.model(update:within:position:));
    return v18;
  }

LABEL_17:
  __break(1u);
  return result;
}

void AbstractionSubtype.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 9);
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      MEMORY[0x26D69DBC0](2);
      Hasher._combine(_:)(v1);
      return;
    }

    v3 = 3;
  }

  else
  {
    if (*(v0 + 9))
    {
      v4 = *(v0 + 8);
      MEMORY[0x26D69DBC0](1);
      Hasher._combine(_:)(v1);
      Hasher._combine(_:)(HIDWORD(v1));
      Hasher._combine(_:)(v4);
      return;
    }

    v3 = 0;
  }

  MEMORY[0x26D69DBC0](v3);
  MEMORY[0x26D69DBC0](v1);
}

Swift::Int AbstractionSubtype.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  Hasher.init(_seed:)();
  if (v3 > 1)
  {
    if (v3 != 2)
    {
      v4 = 3;
      goto LABEL_8;
    }

    MEMORY[0x26D69DBC0](2);
    Hasher._combine(_:)(v1);
  }

  else
  {
    if (!v3)
    {
      v4 = 0;
LABEL_8:
      MEMORY[0x26D69DBC0](v4);
      MEMORY[0x26D69DBC0](v1);
      return Hasher._finalize()();
    }

    MEMORY[0x26D69DBC0](1);
    Hasher._combine(_:)(v1);
    Hasher._combine(_:)(HIDWORD(v1));
    Hasher._combine(_:)(v2);
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance AbstractionSubtype()
{
  v1 = *v0;
  v2 = *(v0 + 9);
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      MEMORY[0x26D69DBC0](2);
      Hasher._combine(_:)(v1);
      return;
    }

    v3 = 3;
  }

  else
  {
    if (*(v0 + 9))
    {
      v4 = *(v0 + 8);
      MEMORY[0x26D69DBC0](1);
      Hasher._combine(_:)(v1);
      Hasher._combine(_:)(HIDWORD(v1));
      Hasher._combine(_:)(v4);
      return;
    }

    v3 = 0;
  }

  MEMORY[0x26D69DBC0](v3);
  MEMORY[0x26D69DBC0](v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AbstractionSubtype(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 9);
  Hasher.init(_seed:)();
  if (v4 > 1)
  {
    if (v4 != 2)
    {
      v5 = 3;
      goto LABEL_8;
    }

    MEMORY[0x26D69DBC0](2);
    Hasher._combine(_:)(v2);
  }

  else
  {
    if (!v4)
    {
      v5 = 0;
LABEL_8:
      MEMORY[0x26D69DBC0](v5);
      MEMORY[0x26D69DBC0](v2);
      return Hasher._finalize()();
    }

    MEMORY[0x26D69DBC0](1);
    Hasher._combine(_:)(v2);
    Hasher._combine(_:)(HIDWORD(v2));
    Hasher._combine(_:)(v3);
  }

  return Hasher._finalize()();
}

uint64_t closure #1 in static EventAbstraction.model(update:within:position:)(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v46 = *MEMORY[0x277D85DE8];
  if (result && a2)
  {
    v9 = result;
    v42 = result + 4 * a2;
    v43 = a5;
    v44 = a9;
    v45 = a4;
    do
    {
      if (a4[48])
      {
        goto LABEL_33;
      }

      v10 = *(a4 + 22);
      if (*a4 >= *(v10 + 116))
      {
        goto LABEL_28;
      }

      if (!*(v10 + 104))
      {
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
      }

      isStackAllocationSafe = MEMORY[0x28223BE20](result);
      *(&v40 - 6) = v14;
      *(&v40 - 5) = v15;
      *(&v40 - 4) = v16;
      *(&v40 - 3) = v17;
      v38 = v18;
      v39 = v19;
      if (v12 >= *(v13 + 44))
      {
        goto LABEL_29;
      }

      v20 = *(v13 + 32);
      if (!v20)
      {
        goto LABEL_35;
      }

      v21 = *(v20 + (v12 << 7) + 124);
      if (v21 < 0x101 || (v41 = v20 + (v12 << 7), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
      {
        MEMORY[0x28223BE20](isStackAllocationSafe);
        v30 = &v40 - v29;
        v31 = 0;
        v32 = 0;
        v33 = *(v22 + 112);
LABEL_11:
        v34 = (v33 + 8 * v32);
        while (v21 != v32)
        {
          if (v32 >= v21)
          {
            __break(1u);
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
LABEL_32:
            __break(1u);
LABEL_33:
            __break(1u);
            goto LABEL_34;
          }

          if (!v33)
          {
            goto LABEL_32;
          }

          v35 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
            goto LABEL_27;
          }

          v36 = *v34;
          v34 += 4;
          ++v32;
          if ((v36 & 0x8020) == 0x20)
          {
            if (__OFADD__(v31, 1))
            {
              goto LABEL_31;
            }

            *&v30[4 * v31++] = *(v34 - 1);
            v32 = v35;
            goto LABEL_11;
          }
        }

        if (v31 < 0)
        {
          goto LABEL_30;
        }

        result = closure #1 in closure #1 in static EventAbstraction.model(update:within:position:)(v30, v31, v22, v23, v24, v25, v26, v27, v28);
      }

      else
      {
        v37 = swift_slowAlloc();
        closure #1 in static Event.each(_:of:do:)(v37, v21, v41, 16416, partial apply for closure #1 in closure #1 in static EventAbstraction.model(update:within:position:));
        result = MEMORY[0x26D69EAB0](v37, -1, -1);
      }

      v9 += 4;
      a4 = v45;
    }

    while (v9 != v42);
  }

  return result;
}

unsigned int *specialized closure #1 in closure #1 in static EventAbstraction.model(update:within:position:)(unsigned int *result, uint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5, char *a6, uint64_t a7)
{
  if (result && a2)
  {
    v7 = &result[a2];
    v8 = a7;
    while (!a4[48])
    {
      v15 = *(a4 + 22);
      v16 = *a4;
      if (v16 >= *(v15 + 116))
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        break;
      }

      v17 = *(v15 + 104);
      if (!v17)
      {
        goto LABEL_41;
      }

      v18 = *result;
      v19 = *(*(v17 + 8 * v16) + 8);
      v20 = *(v19 + 44);
      if (v18 >= v20)
      {
        goto LABEL_33;
      }

      v21 = *(v19 + 32);
      if (!v21)
      {
        goto LABEL_42;
      }

      v22 = v21 + (v18 << 7);
      if (!*(v22 + 32))
      {
        goto LABEL_34;
      }

      if (*(v22 + 24))
      {
        goto LABEL_43;
      }

      v23 = *(v22 + 8);
      if (!v23)
      {
        goto LABEL_44;
      }

      if (*v23 != &type metadata for Event.Abstract)
      {
        goto LABEL_35;
      }

      if (*(v23 + 16) == a5)
      {
        if (*a6)
        {
LABEL_5:
          v14 = 1;
        }

        else
        {
          if (v20 <= a7)
          {
            goto LABEL_36;
          }

          v24 = v21 + (v8 << 7);
          if (*(v24 + 48) == 1)
          {
            v25 = *(v22 + 124) + 1;
            v26 = *(v22 + 112);
            while (--v25)
            {
              if (!*(v22 + 112))
              {
                goto LABEL_37;
              }

              v27 = v26 + 4;
              v28 = *v26 & 0x8080;
              v26 += 4;
              if (v28 == 128)
              {
                v29 = *(v27 - 1);
                v30 = *(v24 + 124) + 1;
                v31 = *(v24 + 112);
                while (--v30)
                {
                  if (!*(v24 + 112))
                  {
                    goto LABEL_38;
                  }

                  v32 = v31 + 4;
                  v33 = *v31 & 0x8004;
                  v31 += 4;
                  if (v33 == 4)
                  {
                    if (*(v32 - 1) == v29)
                    {
                      v9 = result;
                      v10 = a7;
                      v11 = a6;
                      v12 = a5;
                      v13 = a4;
                      Event.hide(_:within:)(v24, a4);
                      result = v9;
                      a4 = v13;
                      a5 = v12;
                      a6 = v11;
                      a7 = v10;
                      goto LABEL_5;
                    }

                    goto LABEL_30;
                  }
                }

                goto LABEL_39;
              }
            }
          }

LABEL_30:
          v14 = 0;
        }

        *a6 = v14;
      }

      if (++result == v7)
      {
        return result;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
  }

  return result;
}

void specialized closure #1 in closure #1 in static EventAbstraction.model(update:within:position:)(unsigned int *a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5, _BYTE *a6, unsigned int a7)
{
  if (a1 && a2)
  {
    v11 = a1;
    v12 = &a1[a2];
    v13 = a7;
    while (!a4[48])
    {
      v14 = *(a4 + 22);
      v15 = *a4;
      if (v15 >= *(v14 + 116))
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
        break;
      }

      v16 = *(v14 + 104);
      if (!v16)
      {
        goto LABEL_43;
      }

      v17 = *v11;
      v18 = *(*(v16 + 8 * v15) + 8);
      v19 = *(v18 + 44);
      if (v17 >= v19)
      {
        goto LABEL_35;
      }

      v20 = *(v18 + 32);
      if (!v20)
      {
        goto LABEL_44;
      }

      v21 = v20 + (v17 << 7);
      if (!*(v21 + 32))
      {
        goto LABEL_36;
      }

      if (*(v21 + 24))
      {
        goto LABEL_45;
      }

      v22 = *(v21 + 8);
      if (!v22)
      {
        goto LABEL_46;
      }

      if (*v22 != &type metadata for Event.Abstract)
      {
        goto LABEL_37;
      }

      if (*(v22 + 16) == a5)
      {
        if (*a6 != 1 && *(v22 + 36) != a7)
        {
          v23 = *(v21 + 112);
          v24 = (v23 + 4);
          v25 = *(v21 + 124) + 1;
          while (--v25)
          {
            if (!v23)
            {
              goto LABEL_41;
            }

            v26 = *(v24 - 2);
            v27 = *v24;
            v24 += 2;
            v28 = v26 & 0x4000;
            if (v27 == a7 && v28 == 0)
            {
              if (v19 <= a7)
              {
                goto LABEL_40;
              }

              Event.hide(_:within:)((v20 + (v13 << 7)), a4);
              if (!*(v21 + 32))
              {
                goto LABEL_38;
              }

              v22 = *(v21 + 8);
              break;
            }
          }

          if (*(v21 + 24))
          {
            goto LABEL_47;
          }

          if (!v22)
          {
            goto LABEL_48;
          }

          if (*v22 != &type metadata for Event.Abstract)
          {
            goto LABEL_39;
          }

          *(v22 + 36) = a7;
        }

        *a6 = 1;
      }

      if (++v11 == v12)
      {
        return;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
  }
}

uint64_t closure #1 in closure #1 in static EventAbstraction.model(update:within:position:)(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5, _BYTE *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (result && a2)
  {
    v12 = result;
    v13 = 4 * a2;
    while (!a4[48])
    {
      v14 = *(a4 + 22);
      v15 = *a4;
      if (v15 >= *(v14 + 116))
      {
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
        break;
      }

      v16 = *(v14 + 104);
      if (!v16)
      {
        goto LABEL_25;
      }

      v17 = *v12;
      v18 = *(*(v16 + 8 * v15) + 8);
      if (v17 >= *(v18 + 44))
      {
        goto LABEL_21;
      }

      v19 = *(v18 + 32);
      if (!v19)
      {
        goto LABEL_26;
      }

      result = v19 + (v17 << 7);
      if (!*(result + 32))
      {
        goto LABEL_22;
      }

      if (*(result + 24))
      {
        goto LABEL_27;
      }

      v20 = *(result + 8);
      if (!v20)
      {
        goto LABEL_28;
      }

      if (*v20 != &type metadata for Event.Abstract)
      {
        goto LABEL_23;
      }

      if (*(v20 + 16) == a5)
      {
        if (*a6)
        {
          result = 1;
        }

        else
        {
          result = (*(a9 + 80))();
        }

        *a6 = result & 1;
      }

      ++v12;
      v13 -= 4;
      if (!v13)
      {
        return result;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  return result;
}

void static Allocation.subtype(source:within:)(uint64_t a1@<X8>)
{
  *a1 = &type metadata for AttributeRef;
  *(a1 + 8) = 0;
}

{
  *a1 = &type metadata for Allocation;
  *(a1 + 8) = 0;
}

void _s21SwiftUITracingSupport11InterpreterC8IteratorV3new8abstract8rootedAt8discreet11restrictionAA8EventRefVxm_ALSbSayALGtAA0L11AbstractionRzlFAA10AllocationV_Ttg5(unsigned int a1, char a2, uint64_t a3)
{
  if (v3[48])
  {
LABEL_167:
    __break(1u);
    goto LABEL_168;
  }

  v4 = *(v3 + 22);
  v5 = *v3;
  if (v5 >= *(v4 + 116))
  {
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
LABEL_139:
    __break(1u);
LABEL_140:
    __break(1u);
LABEL_141:
    __break(1u);
    goto LABEL_142;
  }

  v6 = *(v4 + 104);
  if (!v6)
  {
LABEL_168:
    __break(1u);
    goto LABEL_169;
  }

  v7 = a1;
  v8 = *(*(v6 + 8 * v5) + 8);
  if (*(v8 + 44) <= a1)
  {
    goto LABEL_138;
  }

  v177 = v3;
  v9 = *(v8 + 32);
  if (!v9)
  {
LABEL_169:
    __break(1u);
LABEL_170:
    __break(1u);
    goto LABEL_171;
  }

  v176 = a1;
  v11 = (v9 + (a1 << 7));
  v12 = v11[1];
  v207 = *v11;
  v208 = v12;
  v13 = v11[5];
  v211 = v11[4];
  v212 = v13;
  v14 = v11[7];
  v213 = v11[6];
  v214 = v14;
  v15 = v11[3];
  v209 = v11[2];
  v210 = v15;
  LOBYTE(v199) = BYTE8(v208);
  v16 = 256;
  if (!BYTE9(v208))
  {
    v16 = 0;
  }

  v17 = v16 | (HIDWORD(v208) << 32);
  v18 = HeterogeneousBuffer.type(at:)(0, *(&v207 + 1), v208, v16 | v199, v209);
  v19 = swift_conformsToProtocol2();
  if (!v19)
  {
    goto LABEL_170;
  }

  v20 = v19;
  v21 = HeterogeneousBuffer.index(after:)(0, *(&v207 + 1), v208, v17 | BYTE8(v208), v209);
  LOBYTE(v199) = BYTE8(v208);
  v22 = HeterogeneousBuffer.type(at:)(v21, *(&v207 + 1), v208, v17 | BYTE8(v208), v209);
  v23 = swift_conformsToProtocol2();
  if (!v23)
  {
LABEL_171:
    __break(1u);
    goto LABEL_172;
  }

  project #1 <A, B>(_:_:) in Event.id.getter(v22, &v207, v18, v20, v23, v181);
  if (v177[48])
  {
LABEL_172:
    __break(1u);
    goto LABEL_173;
  }

  v24 = *v177;
  if (v24 >= *(v4 + 116))
  {
    goto LABEL_139;
  }

  v25 = *(v4 + 104);
  if (!v25)
  {
LABEL_173:
    __break(1u);
    goto LABEL_174;
  }

  v26 = *(*(v25 + 8 * v24) + 8);
  if (*(v26 + 44) <= v7)
  {
    goto LABEL_140;
  }

  v174 = a3;
  v175 = v7;
  v27 = *(v26 + 32);
  if (!v27)
  {
LABEL_174:
    __break(1u);
LABEL_175:
    __break(1u);
    goto LABEL_176;
  }

  v28 = (v27 + (v176 << 7));
  v29 = v28[1];
  v199 = *v28;
  v200 = v29;
  v30 = v28[5];
  v203 = v28[4];
  v204 = v30;
  v31 = v28[7];
  v205 = v28[6];
  v206 = v31;
  v32 = v28[3];
  v201 = v28[2];
  v202 = v32;
  v33 = *(&v199 + 1);
  v34 = v200;
  v35 = BYTE8(v200);
  v36 = v201;
  v186[0] = BYTE8(v200);
  v37 = 256;
  if (!BYTE9(v200))
  {
    v37 = 0;
  }

  v38 = v37 | (HIDWORD(v200) << 32);
  v39 = HeterogeneousBuffer.type(at:)(0, *(&v199 + 1), v200, v37 | BYTE8(v200), v201);
  v40 = swift_conformsToProtocol2();
  if (!v40)
  {
    goto LABEL_175;
  }

  v41 = v40;
  v186[0] = v35;
  v42 = HeterogeneousBuffer.index(after:)(0, v33, v34, v38 | v35, v36);
  v186[0] = v35;
  v43 = HeterogeneousBuffer.type(at:)(v42, v33, v34, v38 | v35, v36);
  v44 = swift_conformsToProtocol2();
  if (!v44)
  {
LABEL_176:
    __break(1u);
    goto LABEL_177;
  }

  project #1 <A, B>(_:_:) in Event.id.getter(v43, &v199, v39, v41, v44, v182);
  *&v186[6] = v182[0];
  *&v186[22] = v182[1];
  *&v186[38] = v183;
  *&v193[10] = *v186;
  *&v192 = &type metadata for Allocation;
  *(&v192 + 1) = &protocol witness table for Allocation;
  *v193 = &type metadata for Allocation;
  *&v193[8] = 0;
  *&v193[26] = *&v186[16];
  *&v193[36] = *&v186[26];
  Hasher.init()();
  MEMORY[0x26D69DBC0](&type metadata for Allocation);
  v196 = *&v186[32];
  v197 = v187;
  v198 = v188;
  v194 = *v186;
  v195 = *&v186[16];
  v45 = Hasher.finalize()();
  if (v177[48])
  {
LABEL_177:
    __break(1u);
    goto LABEL_178;
  }

  v46 = *v177;
  if (v46 >= *(v4 + 116))
  {
    goto LABEL_141;
  }

  v47 = *(v4 + 104);
  if (!v47)
  {
LABEL_178:
    __break(1u);
    goto LABEL_179;
  }

  v48 = v45;
  v49 = *(*(*(v47 + 8 * v46) + 8) + 192);
  v50 = *v49;
  if ((*v49)[1].Kind)
  {
    v51 = specialized __RawDictionaryStorage.find<A>(_:)(&v192);
    if (v52)
    {
      v53 = *(v50[3].Description + v51);
      goto LABEL_35;
    }

    v46 = *v177;
    v54 = v177[48] == 0;
  }

  else
  {
    v54 = 1;
  }

  v55 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA5EventV2IdV_SayAJGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *&v186[32] = *&v193[16];
  v187 = *&v193[32];
  LODWORD(v188) = *&v193[48];
  *v186 = v192;
  *&v186[16] = *v193;
  if (!v54)
  {
LABEL_195:
    __break(1u);
    goto LABEL_196;
  }

  if (v46 >= *(v4 + 116))
  {
    goto LABEL_154;
  }

  v57 = *(v4 + 104);
  if (v57)
  {
    v58 = v55;
    v59 = v56;
    v60 = *(*(v57 + 8 * v46) + 8);
    v61 = *(v60 + 212);
    if (v61 == *(v60 + 208))
    {
      specialized UnsafeArray.growToCapacity(_:)(2 * v61);
    }

    v62 = *(v60 + 200);
    v7 = v175;
    if (!v62)
    {
      goto LABEL_197;
    }

    v63 = *(v60 + 212);
    v64 = v62 + 120 * v63;
    v65 = v187;
    *(v64 + 32) = *&v186[32];
    *(v64 + 48) = v65;
    v66 = v188;
    v67 = *&v186[16];
    *v64 = *v186;
    *(v64 + 16) = v67;
    *(v64 + 64) = v66;
    *(v64 + 72) = v48;
    *(v64 + 80) = 0;
    *(v64 + 88) = 0;
    *(v64 + 96) = 0;
    *(v64 + 104) = v58;
    *(v64 + 112) = v59;
    if (v63 == -1)
    {
      goto LABEL_155;
    }

    *(v60 + 212) = v63 + 1;
    v53 = v63;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v184 = *v49;
    *v49 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v53, &v192, isUniquelyReferenced_nonNull_native);
    *v49 = v184;

LABEL_35:
    if (v177[48])
    {
LABEL_179:
      __break(1u);
      goto LABEL_180;
    }

    v69 = *v177;
    if (v69 < *(v4 + 116))
    {
      v70 = *(v4 + 104);
      if (!v70)
      {
LABEL_180:
        __break(1u);
        goto LABEL_181;
      }

      v71 = *(*(v70 + 8 * v69) + 8);
      if (*(v71 + 44) > v7)
      {
        v72 = *(v71 + 32);
        if (!v72)
        {
LABEL_181:
          __break(1u);
LABEL_182:
          __break(1u);
          goto LABEL_183;
        }

        v73 = (v72 + (v176 << 7));
        v74 = v73[1];
        *v186 = *v73;
        *&v186[16] = v74;
        v75 = v73[5];
        v188 = v73[4];
        v189 = v75;
        v76 = v73[7];
        v190 = v73[6];
        v191 = v76;
        v77 = v73[3];
        *&v186[32] = v73[2];
        v187 = v77;
        v78 = *&v186[8];
        v79 = *&v186[16];
        v80 = v186[24];
        v81 = *&v186[32];
        LOBYTE(v184) = v186[24];
        v82 = 256;
        if (!v186[25])
        {
          v82 = 0;
        }

        v83 = v82 | (*&v186[28] << 32);
        v84 = HeterogeneousBuffer.type(at:)(0, *&v186[8], *&v186[16], v82 | v186[24], *&v186[32]);
        v85 = swift_conformsToProtocol2();
        if (!v85)
        {
          goto LABEL_182;
        }

        v86 = v85;
        LOBYTE(v184) = v80;
        v87 = HeterogeneousBuffer.index(after:)(0, v78, v79, v83 | v80, v81);
        LOBYTE(v184) = v80;
        v88 = HeterogeneousBuffer.type(at:)(v87, v78, v79, v83 | v80, v81);
        v89 = swift_conformsToProtocol2();
        if (!v89)
        {
LABEL_183:
          __break(1u);
LABEL_184:
          __break(1u);
          goto LABEL_185;
        }

        project #1 <A, B>(_:_:) in Event.id.getter(v88, v186, v84, v86, v89, &v184);
        if (v184 == &type metadata for Event.AttributeStack || v184 == &type metadata for Event.AttributeValue)
        {
          v91 = v185;
        }

        else
        {
          v91 = 0xFFFFFFFFLL;
        }

        v92 = v177;
        specialized Interpreter.Iterator.new<A, B>(event:_:discreet:)(v91, &type metadata for Allocation, &protocol witness table for Allocation, *&v53 | 0xFFFFFFFF00000000, 4, a2 & 1);
        if (v177[48])
        {
          goto LABEL_184;
        }

        v94 = *v177;
        if (v94 < *(v4 + 116))
        {
          v95 = *(v4 + 104);
          if (!v95)
          {
LABEL_185:
            __break(1u);
            goto LABEL_186;
          }

          v96 = *(*(v95 + 8 * v94) + 8);
          v97 = *(v96 + 44);
          if (v97 > v175)
          {
            v98 = *(v96 + 32);
            if (!v98)
            {
LABEL_186:
              __break(1u);
LABEL_187:
              __break(1u);
LABEL_188:
              __break(1u);
              goto LABEL_189;
            }

            v99 = v93;
            if (v93 < v97)
            {
              v180 = v4;
              v100 = (v98 + (v176 << 7));
              v179 = v93;
              v101 = (v98 + (v93 << 7));
              v102 = *v101;
              if (v100[31] == v100[30])
              {
                specialized UnsafeArray.growToCapacity(_:)();
              }

              v103 = *(v100 + 14);
              if (!v103)
              {
                goto LABEL_187;
              }

              v104 = v100[31];
              v105 = v103 + 8 * v104;
              *v105 = -24448;
              *(v105 + 4) = v102;
              if (v104 != -1)
              {
                v100[31] = v104 + 1;
                v106 = *v100;
                if (v101[31] == v101[30])
                {
                  specialized UnsafeArray.growToCapacity(_:)();
                }

                v107 = *(v101 + 14);
                v108 = v180;
                if (!v107)
                {
                  goto LABEL_188;
                }

                v109 = v101[31];
                v110 = v107 + 8 * v109;
                *v110 = 24704;
                *(v110 + 4) = v106;
                if (v109 != -1)
                {
                  v101[31] = v109 + 1;
                  if (v177[48])
                  {
LABEL_189:
                    __break(1u);
                    goto LABEL_190;
                  }

                  v111 = *v177;
                  if (v111 < *(v180 + 116))
                  {
                    v112 = *(v180 + 104);
                    if (!v112)
                    {
LABEL_190:
                      __break(1u);
LABEL_191:
                      __break(1u);
LABEL_192:
                      __break(1u);
LABEL_193:
                      __break(1u);
LABEL_194:
                      __break(1u);
                      goto LABEL_195;
                    }

                    v113 = *(*(v112 + 8 * v111) + 8);
                    if (*(v113 + 44) > v175)
                    {
                      v114 = *(v113 + 32);
                      if (!v114)
                      {
                        goto LABEL_191;
                      }

                      v115 = 0;
                      v116 = v114 + (v176 << 7);
                      v117 = *(v116 + 112);
                      v118 = *(v116 + 124);
                      v119 = MEMORY[0x277D84F90];
LABEL_70:
                      v120 = (v117 + 8 * v115);
                      while (v118 != v115)
                      {
                        if (v115 >= v118)
                        {
                          __break(1u);
LABEL_125:
                          __break(1u);
LABEL_126:
                          __break(1u);
LABEL_127:
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
                          goto LABEL_137;
                        }

                        if (!v117)
                        {
                          goto LABEL_156;
                        }

                        v121 = v115 + 1;
                        if (__OFADD__(v115, 1))
                        {
                          goto LABEL_125;
                        }

                        v123 = *v120;
                        v120 += 4;
                        v122 = v123;
                        ++v115;
                        if ((v123 & 0x80000000) == 0 && (v122 & 0xC03) != 0)
                        {
                          v173 = *(v120 - 1);
                          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                          {
                            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v119 + 16) + 1, 1);
                          }

                          v125 = *(v119 + 16);
                          v124 = *(v119 + 24);
                          v126 = v125 + 1;
                          if (v125 >= v124 >> 1)
                          {
                            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v124 > 1), v125 + 1, 1);
                            v126 = v125 + 1;
                          }

                          *(v119 + 16) = v126;
                          v127 = v119 + 8 * v125;
                          *(v127 + 32) = v122;
                          *(v127 + 36) = v173;
                          v115 = v121;
                          goto LABEL_70;
                        }
                      }

                      v128 = *(v119 + 16);
                      if (v128)
                      {
                        v129 = 0;
                        v130 = (v119 + 36);
                        while (v129 < *(v119 + 16))
                        {
                          if (v92[48])
                          {
                            goto LABEL_157;
                          }

                          v131 = *v92;
                          if (v131 >= *(v108 + 116))
                          {
                            goto LABEL_127;
                          }

                          v132 = *(v108 + 104);
                          if (!v132)
                          {
                            goto LABEL_158;
                          }

                          v133 = *v130;
                          v134 = *(*(v132 + 8 * v131) + 8);
                          v135 = *(v134 + 44);
                          if (v133 >= v135)
                          {
                            goto LABEL_128;
                          }

                          v136 = *(v134 + 32);
                          if (!v136)
                          {
                            goto LABEL_159;
                          }

                          if (v99 >= v135)
                          {
                            goto LABEL_129;
                          }

                          v137 = *(v130 - 2);
                          v138 = (v136 + (v133 << 7));
                          v139 = (v136 + (v179 << 7));
                          v140 = *v139;
                          if (v138[31] == v138[30])
                          {
                            specialized UnsafeArray.growToCapacity(_:)();
                          }

                          v141 = *(v138 + 14);
                          if (!v141)
                          {
                            goto LABEL_160;
                          }

                          v142 = v137 & 0x1FFF;
                          v143 = v138[31];
                          v144 = v141 + 8 * v143;
                          *v144 = v142 | 0xA000;
                          *(v144 + 4) = v140;
                          if (v143 == -1)
                          {
                            goto LABEL_130;
                          }

                          v138[31] = v143 + 1;
                          v145 = *v138;
                          if (v139[31] == v139[30])
                          {
                            specialized UnsafeArray.growToCapacity(_:)();
                          }

                          v146 = *(v139 + 14);
                          v92 = v177;
                          if (!v146)
                          {
                            goto LABEL_161;
                          }

                          v147 = v139[31];
                          v148 = v146 + 8 * v147;
                          *v148 = v142 | 0x6000;
                          *(v148 + 4) = v145;
                          if (v147 == -1)
                          {
                            goto LABEL_131;
                          }

                          ++v129;
                          v139[31] = v147 + 1;
                          v130 += 2;
                          v108 = v180;
                          if (v128 == v129)
                          {
                            goto LABEL_100;
                          }
                        }

                        goto LABEL_126;
                      }

LABEL_100:

                      v149 = *(v174 + 16);
                      if (v149)
                      {
                        v150 = (v174 + 32);
                        while (!v92[48])
                        {
                          v151 = *v92;
                          if (v151 >= *(v108 + 116))
                          {
                            goto LABEL_132;
                          }

                          v152 = *(v108 + 104);
                          if (!v152)
                          {
                            goto LABEL_163;
                          }

                          v154 = *v150++;
                          v153 = v154;
                          v155 = *(*(v152 + 8 * v151) + 8);
                          v156 = *(v155 + 44);
                          if (v154 >= v156)
                          {
                            goto LABEL_133;
                          }

                          v157 = *(v155 + 32);
                          if (!v157)
                          {
                            goto LABEL_164;
                          }

                          if (v99 >= v156)
                          {
                            goto LABEL_134;
                          }

                          v158 = (v157 + (v153 << 7));
                          v159 = (v157 + (v179 << 7));
                          v160 = *v159;
                          if (v158[31] == v158[30])
                          {
                            specialized UnsafeArray.growToCapacity(_:)();
                          }

                          v161 = *(v158 + 14);
                          if (!v161)
                          {
                            goto LABEL_165;
                          }

                          v162 = v158[31];
                          v163 = v161 + 8 * v162;
                          *v163 = -24512;
                          *(v163 + 4) = v160;
                          if (v162 == -1)
                          {
                            goto LABEL_135;
                          }

                          v158[31] = v162 + 1;
                          v164 = *v158;
                          if (v159[31] == v159[30])
                          {
                            specialized UnsafeArray.growToCapacity(_:)();
                          }

                          v165 = *(v159 + 14);
                          v108 = v180;
                          if (!v165)
                          {
                            goto LABEL_166;
                          }

                          v166 = v159[31];
                          v167 = v165 + 8 * v166;
                          *v167 = 24640;
                          *(v167 + 4) = v164;
                          if (v166 == -1)
                          {
                            goto LABEL_136;
                          }

                          v159[31] = v166 + 1;
                          if (!--v149)
                          {
                            goto LABEL_117;
                          }
                        }

                        goto LABEL_162;
                      }

LABEL_117:
                      if (v92[48])
                      {
                        goto LABEL_192;
                      }

                      v168 = *v92;
                      if (v168 < *(v108 + 116))
                      {
                        v169 = *(v108 + 104);
                        if (!v169)
                        {
                          goto LABEL_193;
                        }

                        v170 = *(*(v169 + 8 * v168) + 8);
                        v171 = *(v170 + 44);
                        if (v99 < v171)
                        {
                          v172 = *(v170 + 32);
                          if (!v172)
                          {
                            goto LABEL_194;
                          }

                          if (v171 > v175)
                          {
                            Event.hide(_:within:)((v172 + (v176 << 7)), v92);
                            return;
                          }

                          goto LABEL_153;
                        }

LABEL_152:
                        __break(1u);
LABEL_153:
                        __break(1u);
LABEL_154:
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
LABEL_164:
                        __break(1u);
LABEL_165:
                        __break(1u);
LABEL_166:
                        __break(1u);
                        goto LABEL_167;
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

LABEL_145:
          __break(1u);
          goto LABEL_146;
        }

LABEL_144:
        __break(1u);
        goto LABEL_145;
      }

LABEL_143:
      __break(1u);
      goto LABEL_144;
    }

LABEL_142:
    __break(1u);
    goto LABEL_143;
  }

LABEL_196:
  __break(1u);
LABEL_197:
  __break(1u);
}

void specialized Interpreter.Iterator.new<A>(abstract:rootedAt:discreet:restriction:)(uint64_t a1, unsigned int a2, char a3, uint64_t a4, uint64_t a5)
{
  if (v5[48])
  {
LABEL_171:
    __break(1u);
    goto LABEL_172;
  }

  v6 = *(v5 + 22);
  v7 = *v5;
  if (v7 >= *(v6 + 116))
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

  v8 = *(v6 + 104);
  if (!v8)
  {
LABEL_172:
    __break(1u);
    goto LABEL_173;
  }

  v10 = *(*(v8 + 8 * v7) + 8);
  if (*(v10 + 44) <= a2)
  {
    goto LABEL_141;
  }

  v186 = v5;
  v11 = *(v10 + 32);
  if (!v11)
  {
LABEL_173:
    __break(1u);
LABEL_174:
    __break(1u);
    goto LABEL_175;
  }

  v185 = a2;
  v13 = (v11 + (a2 << 7));
  v14 = v13[1];
  v216 = *v13;
  v217 = v14;
  v15 = v13[5];
  v220 = v13[4];
  v221 = v15;
  v16 = v13[7];
  v222 = v13[6];
  v223 = v16;
  v17 = v13[3];
  v218 = v13[2];
  v219 = v17;
  LOBYTE(v208) = BYTE8(v217);
  v18 = 256;
  if (!BYTE9(v217))
  {
    v18 = 0;
  }

  v19 = v18 | (HIDWORD(v217) << 32);
  v20 = HeterogeneousBuffer.type(at:)(0, *(&v216 + 1), v217, v18 | v208, v218);
  v21 = swift_conformsToProtocol2();
  if (!v21)
  {
    goto LABEL_174;
  }

  v22 = v21;
  v189 = v6;
  v23 = HeterogeneousBuffer.index(after:)(0, *(&v216 + 1), v217, v19 | BYTE8(v217), v218);
  LOBYTE(v208) = BYTE8(v217);
  v24 = HeterogeneousBuffer.type(at:)(v23, *(&v216 + 1), v217, v19 | BYTE8(v217), v218);
  v25 = swift_conformsToProtocol2();
  if (!v25)
  {
LABEL_175:
    __break(1u);
    goto LABEL_176;
  }

  project #1 <A, B>(_:_:) in Event.id.getter(v24, &v216, v20, v22, v25, v190);
  if (v186[48])
  {
LABEL_176:
    __break(1u);
    goto LABEL_177;
  }

  v26 = *v186;
  if (v26 >= *(v6 + 116))
  {
    goto LABEL_142;
  }

  v27 = *(v6 + 104);
  if (!v27)
  {
LABEL_177:
    __break(1u);
    goto LABEL_178;
  }

  specialized static TypedEventAbstraction.subtype(source:within:)(v190, *(*(v27 + 8 * v26) + 8), &v208);
  if (v186[48])
  {
LABEL_178:
    __break(1u);
    goto LABEL_179;
  }

  v28 = *v186;
  if (v28 >= *(v6 + 116))
  {
    goto LABEL_143;
  }

  v29 = *(v6 + 104);
  if (!v29)
  {
LABEL_179:
    __break(1u);
    goto LABEL_180;
  }

  v30 = *(*(v29 + 8 * v28) + 8);
  if (*(v30 + 44) <= a2)
  {
    goto LABEL_144;
  }

  v179 = a4;
  v184 = a2;
  v31 = *(v30 + 32);
  if (!v31)
  {
LABEL_180:
    __break(1u);
LABEL_181:
    __break(1u);
    goto LABEL_182;
  }

  v182 = v208;
  v181 = BYTE8(v208);
  v32 = BYTE9(v208);
  v33 = (v31 + (v185 << 7));
  v34 = v33[1];
  v208 = *v33;
  v209 = v34;
  v35 = v33[5];
  v212 = v33[4];
  v213 = v35;
  v36 = v33[7];
  v214 = v33[6];
  v215 = v36;
  v37 = v33[3];
  v210 = v33[2];
  v211 = v37;
  v38 = *(&v208 + 1);
  v39 = v209;
  v40 = BYTE8(v209);
  v41 = v210;
  v195[0] = BYTE8(v209);
  v42 = 256;
  if (!BYTE9(v209))
  {
    v42 = 0;
  }

  v43 = v42 | (HIDWORD(v209) << 32);
  v44 = HeterogeneousBuffer.type(at:)(0, *(&v208 + 1), v209, v42 | BYTE8(v209), v210);
  v45 = swift_conformsToProtocol2();
  if (!v45)
  {
    goto LABEL_181;
  }

  v46 = v45;
  v195[0] = v40;
  v47 = HeterogeneousBuffer.index(after:)(0, v38, v39, v43 | v40, v41);
  v195[0] = v40;
  v48 = HeterogeneousBuffer.type(at:)(v47, v38, v39, v43 | v40, v41);
  v49 = swift_conformsToProtocol2();
  if (!v49)
  {
LABEL_182:
    __break(1u);
    goto LABEL_183;
  }

  project #1 <A, B>(_:_:) in Event.id.getter(v48, &v208, v44, v46, v49, v191);
  *&v195[6] = v191[0];
  *&v195[22] = v191[1];
  *&v195[38] = v192;
  *&v202[10] = *v195;
  *&v201 = a1;
  *(&v201 + 1) = a5;
  *v202 = v182;
  v202[8] = v181;
  v202[9] = v32;
  *&v202[26] = *&v195[16];
  *&v202[36] = *&v195[26];
  Hasher.init()();
  MEMORY[0x26D69DBC0](a1);
  v205 = *&v195[32];
  v206 = v196;
  v207 = v197;
  v203 = *v195;
  v204 = *&v195[16];
  v50 = Hasher.finalize()();
  if (v186[48])
  {
LABEL_183:
    __break(1u);
    goto LABEL_184;
  }

  v51 = *v186;
  if (v51 >= *(v6 + 116))
  {
    goto LABEL_145;
  }

  v52 = *(v6 + 104);
  if (!v52)
  {
LABEL_184:
    __break(1u);
    goto LABEL_185;
  }

  v53 = v50;
  v54 = *(*(*(v52 + 8 * v51) + 8) + 192);
  v55 = *v54;
  if ((*v54)[1].Kind)
  {
    v56 = specialized __RawDictionaryStorage.find<A>(_:)(&v201);
    if (v57)
    {
      v58 = *(v55[3].Description + v56);
      goto LABEL_38;
    }

    v51 = *v186;
    v59 = v186[48] == 0;
  }

  else
  {
    v59 = 1;
  }

  v60 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA5EventV2IdV_SayAJGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *&v195[32] = *&v202[16];
  v196 = *&v202[32];
  LODWORD(v197) = *&v202[48];
  *v195 = v201;
  *&v195[16] = *v202;
  if (!v59)
  {
LABEL_201:
    __break(1u);
    goto LABEL_202;
  }

  v6 = v189;
  if (v51 >= *(v189 + 116))
  {
    goto LABEL_158;
  }

  v62 = *(v189 + 104);
  if (v62)
  {
    v63 = v60;
    v64 = v61;
    v65 = *(*(v62 + 8 * v51) + 8);
    v66 = *(v65 + 212);
    if (v66 == *(v65 + 208))
    {
      specialized UnsafeArray.growToCapacity(_:)(2 * v66);
    }

    v67 = *(v65 + 200);
    if (!v67)
    {
      goto LABEL_203;
    }

    v68 = *(v65 + 212);
    v69 = v67 + 120 * v68;
    v70 = v196;
    *(v69 + 32) = *&v195[32];
    *(v69 + 48) = v70;
    v71 = v197;
    v72 = *&v195[16];
    *v69 = *v195;
    *(v69 + 16) = v72;
    *(v69 + 64) = v71;
    *(v69 + 72) = v53;
    *(v69 + 80) = 0;
    *(v69 + 88) = 0;
    *(v69 + 96) = 0;
    *(v69 + 104) = v63;
    *(v69 + 112) = v64;
    if (v68 == -1)
    {
      goto LABEL_159;
    }

    *(v65 + 212) = v68 + 1;
    v58 = v68;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v193 = *v54;
    *v54 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v58, &v201, isUniquelyReferenced_nonNull_native);
    *v54 = v193;

LABEL_38:
    if (v186[48])
    {
LABEL_185:
      __break(1u);
      goto LABEL_186;
    }

    v74 = *v186;
    if (v74 < *(v6 + 116))
    {
      v75 = *(v6 + 104);
      if (!v75)
      {
LABEL_186:
        __break(1u);
        goto LABEL_187;
      }

      v76 = *(*(v75 + 8 * v74) + 8);
      if (*(v76 + 44) > a2)
      {
        v77 = *(v76 + 32);
        if (!v77)
        {
LABEL_187:
          __break(1u);
LABEL_188:
          __break(1u);
          goto LABEL_189;
        }

        v78 = (v77 + (v185 << 7));
        v79 = v78[1];
        *v195 = *v78;
        *&v195[16] = v79;
        v80 = v78[5];
        v197 = v78[4];
        v198 = v80;
        v81 = v78[7];
        v199 = v78[6];
        v200 = v81;
        v82 = v78[3];
        *&v195[32] = v78[2];
        v196 = v82;
        v83 = *&v195[8];
        v84 = *&v195[16];
        v85 = v195[24];
        v86 = *&v195[32];
        LOBYTE(v193) = v195[24];
        v87 = 256;
        if (!v195[25])
        {
          v87 = 0;
        }

        v88 = v87 | (*&v195[28] << 32);
        v89 = HeterogeneousBuffer.type(at:)(0, *&v195[8], *&v195[16], v87 | v195[24], *&v195[32]);
        v90 = swift_conformsToProtocol2();
        if (!v90)
        {
          goto LABEL_188;
        }

        v91 = v90;
        LOBYTE(v193) = v85;
        v92 = HeterogeneousBuffer.index(after:)(0, v83, v84, v88 | v85, v86);
        LOBYTE(v193) = v85;
        v93 = HeterogeneousBuffer.type(at:)(v92, v83, v84, v88 | v85, v86);
        v94 = swift_conformsToProtocol2();
        if (!v94)
        {
LABEL_189:
          __break(1u);
LABEL_190:
          __break(1u);
          goto LABEL_191;
        }

        project #1 <A, B>(_:_:) in Event.id.getter(v93, v195, v89, v91, v94, &v193);
        if (v193 == &type metadata for Event.AttributeStack || v193 == &type metadata for Event.AttributeValue)
        {
          v96 = v194;
        }

        else
        {
          v96 = 0xFFFFFFFFLL;
        }

        v97 = v186;
        specialized Interpreter.Iterator.new<A, B>(event:_:discreet:)(v96, a1, a5, *&v58 | 0xFFFFFFFF00000000, 4, a3 & 1);
        if (v186[48])
        {
          goto LABEL_190;
        }

        v99 = *v186;
        if (v99 < *(v6 + 116))
        {
          v100 = *(v6 + 104);
          if (!v100)
          {
LABEL_191:
            __break(1u);
            goto LABEL_192;
          }

          v101 = *(*(v100 + 8 * v99) + 8);
          v102 = *(v101 + 44);
          if (v102 > a2)
          {
            v103 = *(v101 + 32);
            if (!v103)
            {
LABEL_192:
              __break(1u);
LABEL_193:
              __break(1u);
LABEL_194:
              __break(1u);
              goto LABEL_195;
            }

            v104 = v98;
            if (v98 < v102)
            {
              v105 = (v103 + (v185 << 7));
              v188 = v98;
              v106 = (v103 + (v98 << 7));
              v107 = *v106;
              if (v105[31] == v105[30])
              {
                specialized UnsafeArray.growToCapacity(_:)();
              }

              v108 = *(v105 + 14);
              if (!v108)
              {
                goto LABEL_193;
              }

              v109 = v105[31];
              v110 = v108 + 8 * v109;
              *v110 = -24448;
              *(v110 + 4) = v107;
              if (v109 != -1)
              {
                v105[31] = v109 + 1;
                v111 = *v105;
                if (v106[31] == v106[30])
                {
                  specialized UnsafeArray.growToCapacity(_:)();
                }

                v112 = *(v106 + 14);
                if (!v112)
                {
                  goto LABEL_194;
                }

                v113 = v106[31];
                v114 = v112 + 8 * v113;
                *v114 = 24704;
                *(v114 + 4) = v111;
                if (v113 != -1)
                {
                  v106[31] = v113 + 1;
                  if (v186[48])
                  {
LABEL_195:
                    __break(1u);
                    goto LABEL_196;
                  }

                  v115 = v189;
                  v116 = *v186;
                  if (v116 < *(v189 + 116))
                  {
                    v117 = *(v189 + 104);
                    if (!v117)
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

                    v118 = *(*(v117 + 8 * v116) + 8);
                    if (*(v118 + 44) > v184)
                    {
                      v119 = *(v118 + 32);
                      if (!v119)
                      {
                        goto LABEL_197;
                      }

                      v120 = 0;
                      v121 = v119 + (v185 << 7);
                      v122 = *(v121 + 112);
                      v123 = *(v121 + 124);
                      v124 = MEMORY[0x277D84F90];
LABEL_73:
                      v125 = (v122 + 8 * v120);
                      while (v123 != v120)
                      {
                        if (v120 >= v123)
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

                        if (!v122)
                        {
                          goto LABEL_160;
                        }

                        v126 = v120 + 1;
                        if (__OFADD__(v120, 1))
                        {
                          goto LABEL_128;
                        }

                        v128 = *v125;
                        v125 += 4;
                        v127 = v128;
                        ++v120;
                        if ((v128 & 0x80000000) == 0 && (v127 & 0xC03) != 0)
                        {
                          v129 = *(v125 - 1);
                          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                          {
                            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v124 + 16) + 1, 1);
                          }

                          v131 = *(v124 + 16);
                          v130 = *(v124 + 24);
                          v132 = v131 + 1;
                          if (v131 >= v130 >> 1)
                          {
                            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v130 > 1), v131 + 1, 1);
                            v132 = v131 + 1;
                          }

                          *(v124 + 16) = v132;
                          v133 = v124 + 8 * v131;
                          *(v133 + 32) = v127;
                          *(v133 + 36) = v129;
                          v120 = v126;
                          v115 = v189;
                          goto LABEL_73;
                        }
                      }

                      v134 = *(v124 + 16);
                      if (v134)
                      {
                        v135 = 0;
                        v136 = (v124 + 36);
                        while (v135 < *(v124 + 16))
                        {
                          if (v97[48])
                          {
                            goto LABEL_161;
                          }

                          v137 = *v97;
                          if (v137 >= *(v115 + 116))
                          {
                            goto LABEL_130;
                          }

                          v138 = *(v115 + 104);
                          if (!v138)
                          {
                            goto LABEL_162;
                          }

                          v139 = *v136;
                          v140 = *(*(v138 + 8 * v137) + 8);
                          v141 = *(v140 + 44);
                          if (v139 >= v141)
                          {
                            goto LABEL_131;
                          }

                          v142 = *(v140 + 32);
                          if (!v142)
                          {
                            goto LABEL_163;
                          }

                          if (v104 >= v141)
                          {
                            goto LABEL_132;
                          }

                          v143 = *(v136 - 2);
                          v144 = (v142 + (v139 << 7));
                          v145 = (v142 + (v188 << 7));
                          v146 = *v145;
                          if (v144[31] == v144[30])
                          {
                            specialized UnsafeArray.growToCapacity(_:)();
                          }

                          v147 = *(v144 + 14);
                          if (!v147)
                          {
                            goto LABEL_164;
                          }

                          v148 = v143 & 0x1FFF;
                          v149 = v144[31];
                          v150 = v147 + 8 * v149;
                          *v150 = v148 | 0xA000;
                          *(v150 + 4) = v146;
                          if (v149 == -1)
                          {
                            goto LABEL_133;
                          }

                          v144[31] = v149 + 1;
                          v151 = *v144;
                          if (v145[31] == v145[30])
                          {
                            specialized UnsafeArray.growToCapacity(_:)();
                          }

                          v152 = *(v145 + 14);
                          v97 = v186;
                          if (!v152)
                          {
                            goto LABEL_165;
                          }

                          v153 = v145[31];
                          v154 = v152 + 8 * v153;
                          *v154 = v148 | 0x6000;
                          *(v154 + 4) = v151;
                          if (v153 == -1)
                          {
                            goto LABEL_134;
                          }

                          ++v135;
                          v145[31] = v153 + 1;
                          v136 += 2;
                          v115 = v189;
                          if (v134 == v135)
                          {
                            goto LABEL_103;
                          }
                        }

                        goto LABEL_129;
                      }

LABEL_103:

                      v155 = *(v179 + 16);
                      if (v155)
                      {
                        v156 = (v179 + 32);
                        while (!v97[48])
                        {
                          v157 = *v97;
                          if (v157 >= *(v115 + 116))
                          {
                            goto LABEL_135;
                          }

                          v158 = *(v115 + 104);
                          if (!v158)
                          {
                            goto LABEL_167;
                          }

                          v160 = *v156++;
                          v159 = v160;
                          v161 = *(*(v158 + 8 * v157) + 8);
                          v162 = *(v161 + 44);
                          if (v160 >= v162)
                          {
                            goto LABEL_136;
                          }

                          v163 = *(v161 + 32);
                          if (!v163)
                          {
                            goto LABEL_168;
                          }

                          if (v104 >= v162)
                          {
                            goto LABEL_137;
                          }

                          v164 = (v163 + (v159 << 7));
                          v165 = (v163 + (v188 << 7));
                          v166 = *v165;
                          if (v164[31] == v164[30])
                          {
                            specialized UnsafeArray.growToCapacity(_:)();
                          }

                          v167 = *(v164 + 14);
                          if (!v167)
                          {
                            goto LABEL_169;
                          }

                          v168 = v164[31];
                          v169 = v167 + 8 * v168;
                          *v169 = -24512;
                          *(v169 + 4) = v166;
                          if (v168 == -1)
                          {
                            goto LABEL_138;
                          }

                          v164[31] = v168 + 1;
                          v170 = *v164;
                          if (v165[31] == v165[30])
                          {
                            specialized UnsafeArray.growToCapacity(_:)();
                          }

                          v171 = *(v165 + 14);
                          if (!v171)
                          {
                            goto LABEL_170;
                          }

                          v172 = v165[31];
                          v173 = v171 + 8 * v172;
                          *v173 = 24640;
                          *(v173 + 4) = v170;
                          if (v172 == -1)
                          {
                            goto LABEL_139;
                          }

                          v165[31] = v172 + 1;
                          --v155;
                          v115 = v189;
                          if (!v155)
                          {
                            goto LABEL_120;
                          }
                        }

                        goto LABEL_166;
                      }

LABEL_120:
                      if (v97[48])
                      {
                        goto LABEL_198;
                      }

                      v174 = *v97;
                      if (v174 < *(v115 + 116))
                      {
                        v175 = *(v115 + 104);
                        if (!v175)
                        {
                          goto LABEL_199;
                        }

                        v176 = *(*(v175 + 8 * v174) + 8);
                        v177 = *(v176 + 44);
                        if (v104 < v177)
                        {
                          v178 = *(v176 + 32);
                          if (!v178)
                          {
                            goto LABEL_200;
                          }

                          if (v177 > v184)
                          {
                            Event.hide(_:within:)((v178 + (v185 << 7)), v97);
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

{
  *&v181 = a1;
  *(&v181 + 1) = a5;
  if (v5[48])
  {
LABEL_170:
    __break(1u);
    goto LABEL_171;
  }

  v6 = *(v5 + 22);
  v7 = *v5;
  if (v7 >= *(v6 + 116))
  {
LABEL_139:
    __break(1u);
LABEL_140:
    __break(1u);
LABEL_141:
    __break(1u);
LABEL_142:
    __break(1u);
LABEL_143:
    __break(1u);
    goto LABEL_144;
  }

  v8 = *(v6 + 104);
  if (!v8)
  {
LABEL_171:
    __break(1u);
    goto LABEL_172;
  }

  v9 = a2;
  v10 = *(*(v8 + 8 * v7) + 8);
  if (*(v10 + 44) <= a2)
  {
    goto LABEL_140;
  }

  v180 = v5;
  v11 = *(v10 + 32);
  if (!v11)
  {
LABEL_172:
    __break(1u);
LABEL_173:
    __break(1u);
    goto LABEL_174;
  }

  v179 = a2;
  v13 = (v11 + (a2 << 7));
  v14 = v13[1];
  v210 = *v13;
  v211 = v14;
  v15 = v13[5];
  v214 = v13[4];
  v215 = v15;
  v16 = v13[7];
  v216 = v13[6];
  v217 = v16;
  v17 = v13[3];
  v212 = v13[2];
  v213 = v17;
  LOBYTE(v202) = BYTE8(v211);
  v18 = 256;
  if (!BYTE9(v211))
  {
    v18 = 0;
  }

  v19 = v18 | (HIDWORD(v211) << 32);
  v20 = HeterogeneousBuffer.type(at:)(0, *(&v210 + 1), v211, v18 | v202, v212);
  v21 = swift_conformsToProtocol2();
  if (!v21)
  {
    goto LABEL_173;
  }

  v22 = v21;
  v23 = HeterogeneousBuffer.index(after:)(0, *(&v210 + 1), v211, v19 | BYTE8(v211), v212);
  LOBYTE(v202) = BYTE8(v211);
  v24 = HeterogeneousBuffer.type(at:)(v23, *(&v210 + 1), v211, v19 | BYTE8(v211), v212);
  v25 = swift_conformsToProtocol2();
  if (!v25)
  {
LABEL_174:
    __break(1u);
    goto LABEL_175;
  }

  project #1 <A, B>(_:_:) in Event.id.getter(v24, &v210, v20, v22, v25, &v184);
  if (v180[48])
  {
LABEL_175:
    __break(1u);
    goto LABEL_176;
  }

  v26 = *v180;
  if (v26 >= *(v6 + 116))
  {
    goto LABEL_141;
  }

  v27 = *(v6 + 104);
  if (!v27)
  {
LABEL_176:
    __break(1u);
    goto LABEL_177;
  }

  if (v184 != &type metadata for Event.AttributeValue && v184 != &type metadata for Event.AttributeStack)
  {
    goto LABEL_158;
  }

  v28 = *(*(v27 + 8 * v26) + 8);
  if (*(v28 + 44) <= v9)
  {
    goto LABEL_142;
  }

  v175 = a4;
  v178 = v9;
  v29 = *(v28 + 32);
  if (!v29)
  {
LABEL_177:
    __break(1u);
LABEL_178:
    __break(1u);
    goto LABEL_179;
  }

  v30 = (v29 + (v179 << 7));
  v31 = v30[1];
  v202 = *v30;
  v203 = v31;
  v32 = v30[5];
  v206 = v30[4];
  v207 = v32;
  v33 = v30[7];
  v208 = v30[6];
  v209 = v33;
  v34 = v30[3];
  v204 = v30[2];
  v205 = v34;
  v35 = *(&v202 + 1);
  v36 = v203;
  v37 = BYTE8(v203);
  v38 = v204;
  v189[0] = BYTE8(v203);
  v39 = 256;
  if (!BYTE9(v203))
  {
    v39 = 0;
  }

  v40 = v39 | (HIDWORD(v203) << 32);
  v41 = HeterogeneousBuffer.type(at:)(0, *(&v202 + 1), v203, v39 | BYTE8(v203), v204);
  v42 = swift_conformsToProtocol2();
  if (!v42)
  {
    goto LABEL_178;
  }

  v43 = v42;
  v189[0] = v37;
  v44 = HeterogeneousBuffer.index(after:)(0, v35, v36, v40 | v37, v38);
  v189[0] = v37;
  v45 = HeterogeneousBuffer.type(at:)(v44, v35, v36, v40 | v37, v38);
  v46 = swift_conformsToProtocol2();
  if (!v46)
  {
LABEL_179:
    __break(1u);
    goto LABEL_180;
  }

  project #1 <A, B>(_:_:) in Event.id.getter(v45, &v202, v41, v43, v46, v185);
  *&v189[6] = v185[0];
  *&v189[22] = v185[1];
  *&v189[38] = v186;
  *&v196[10] = *v189;
  v195 = v181;
  *v196 = v181;
  *&v196[8] = 0;
  *&v196[26] = *&v189[16];
  *&v196[36] = *&v189[26];
  Hasher.init()();
  MEMORY[0x26D69DBC0](v181);
  v199 = *&v189[32];
  v200 = v190;
  v201 = v191;
  v197 = *v189;
  v198 = *&v189[16];
  v47 = Hasher.finalize()();
  if (v180[48])
  {
LABEL_180:
    __break(1u);
    goto LABEL_181;
  }

  v48 = *v180;
  if (v48 >= *(v6 + 116))
  {
    goto LABEL_143;
  }

  v49 = *(v6 + 104);
  if (!v49)
  {
LABEL_181:
    __break(1u);
    goto LABEL_182;
  }

  v50 = v47;
  v51 = *(*(*(v49 + 8 * v48) + 8) + 192);
  v52 = *v51;
  if ((*v51)[1].Kind)
  {
    v53 = specialized __RawDictionaryStorage.find<A>(_:)(&v195);
    if (v54)
    {
      v55 = *(v52[3].Description + v53);
      goto LABEL_37;
    }

    v48 = *v180;
    v56 = v180[48] == 0;
  }

  else
  {
    v56 = 1;
  }

  v57 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA5EventV2IdV_SayAJGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *&v189[32] = *&v196[16];
  v190 = *&v196[32];
  LODWORD(v191) = *&v196[48];
  *v189 = v195;
  *&v189[16] = *v196;
  if (!v56)
  {
LABEL_198:
    __break(1u);
    goto LABEL_199;
  }

  if (v48 >= *(v6 + 116))
  {
    goto LABEL_156;
  }

  v59 = *(v6 + 104);
  if (v59)
  {
    v60 = v57;
    v61 = v58;
    v62 = *(*(v59 + 8 * v48) + 8);
    v63 = *(v62 + 212);
    if (v63 == *(v62 + 208))
    {
      specialized UnsafeArray.growToCapacity(_:)(2 * v63);
    }

    v64 = *(v62 + 200);
    v9 = v178;
    if (!v64)
    {
      goto LABEL_200;
    }

    v65 = *(v62 + 212);
    v66 = v64 + 120 * v65;
    v67 = v190;
    *(v66 + 32) = *&v189[32];
    *(v66 + 48) = v67;
    v68 = v191;
    v69 = *&v189[16];
    *v66 = *v189;
    *(v66 + 16) = v69;
    *(v66 + 64) = v68;
    *(v66 + 72) = v50;
    *(v66 + 80) = 0;
    *(v66 + 88) = 0;
    *(v66 + 96) = 0;
    *(v66 + 104) = v60;
    *(v66 + 112) = v61;
    if (v65 == -1)
    {
      goto LABEL_157;
    }

    *(v62 + 212) = v65 + 1;
    v55 = v65;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v187 = *v51;
    *v51 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v55, &v195, isUniquelyReferenced_nonNull_native);
    *v51 = v187;

LABEL_37:
    if (v180[48])
    {
LABEL_182:
      __break(1u);
      goto LABEL_183;
    }

    v71 = *v180;
    if (v71 < *(v6 + 116))
    {
      v72 = *(v6 + 104);
      if (!v72)
      {
LABEL_183:
        __break(1u);
        goto LABEL_184;
      }

      v73 = *(*(v72 + 8 * v71) + 8);
      if (*(v73 + 44) > v9)
      {
        v74 = *(v73 + 32);
        if (!v74)
        {
LABEL_184:
          __break(1u);
LABEL_185:
          __break(1u);
          goto LABEL_186;
        }

        v75 = (v74 + (v179 << 7));
        v76 = v75[1];
        *v189 = *v75;
        *&v189[16] = v76;
        v77 = v75[5];
        v191 = v75[4];
        v192 = v77;
        v78 = v75[7];
        v193 = v75[6];
        v194 = v78;
        v79 = v75[3];
        *&v189[32] = v75[2];
        v190 = v79;
        v80 = *&v189[8];
        v81 = *&v189[16];
        v82 = v189[24];
        v83 = *&v189[32];
        LOBYTE(v187) = v189[24];
        v84 = 256;
        if (!v189[25])
        {
          v84 = 0;
        }

        v85 = v84 | (*&v189[28] << 32);
        v86 = HeterogeneousBuffer.type(at:)(0, *&v189[8], *&v189[16], v84 | v189[24], *&v189[32]);
        v87 = swift_conformsToProtocol2();
        if (!v87)
        {
          goto LABEL_185;
        }

        v88 = v87;
        LOBYTE(v187) = v82;
        v89 = HeterogeneousBuffer.index(after:)(0, v80, v81, v85 | v82, v83);
        LOBYTE(v187) = v82;
        v90 = HeterogeneousBuffer.type(at:)(v89, v80, v81, v85 | v82, v83);
        v91 = swift_conformsToProtocol2();
        if (!v91)
        {
LABEL_186:
          __break(1u);
LABEL_187:
          __break(1u);
          goto LABEL_188;
        }

        project #1 <A, B>(_:_:) in Event.id.getter(v90, v189, v86, v88, v91, &v187);
        if (v187 == &type metadata for Event.AttributeStack || v187 == &type metadata for Event.AttributeValue)
        {
          v93 = v188;
        }

        else
        {
          v93 = 0xFFFFFFFFLL;
        }

        v94 = v180;
        specialized Interpreter.Iterator.new<A, B>(event:_:discreet:)(v93, v181, *(&v181 + 1), *&v55 | 0xFFFFFFFF00000000, 4, a3 & 1);
        if (v180[48])
        {
          goto LABEL_187;
        }

        v96 = *v180;
        if (v96 < *(v6 + 116))
        {
          v97 = *(v6 + 104);
          if (!v97)
          {
LABEL_188:
            __break(1u);
            goto LABEL_189;
          }

          v98 = *(*(v97 + 8 * v96) + 8);
          v99 = *(v98 + 44);
          if (v99 > v178)
          {
            v100 = *(v98 + 32);
            if (!v100)
            {
LABEL_189:
              __break(1u);
LABEL_190:
              __break(1u);
LABEL_191:
              __break(1u);
              goto LABEL_192;
            }

            v101 = v95;
            if (v95 < v99)
            {
              v183 = v6;
              v102 = (v100 + (v179 << 7));
              v182 = v95;
              v103 = (v100 + (v95 << 7));
              v104 = *v103;
              if (v102[31] == v102[30])
              {
                specialized UnsafeArray.growToCapacity(_:)();
              }

              v105 = *(v102 + 14);
              if (!v105)
              {
                goto LABEL_190;
              }

              v106 = v102[31];
              v107 = v105 + 8 * v106;
              *v107 = -24448;
              *(v107 + 4) = v104;
              if (v106 != -1)
              {
                v102[31] = v106 + 1;
                v108 = *v102;
                if (v103[31] == v103[30])
                {
                  specialized UnsafeArray.growToCapacity(_:)();
                }

                v109 = *(v103 + 14);
                v110 = v183;
                if (!v109)
                {
                  goto LABEL_191;
                }

                v111 = v103[31];
                v112 = v109 + 8 * v111;
                *v112 = 24704;
                *(v112 + 4) = v108;
                if (v111 != -1)
                {
                  v103[31] = v111 + 1;
                  if (v180[48])
                  {
LABEL_192:
                    __break(1u);
                    goto LABEL_193;
                  }

                  v113 = *v180;
                  if (v113 < *(v183 + 116))
                  {
                    v114 = *(v183 + 104);
                    if (!v114)
                    {
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
                      goto LABEL_198;
                    }

                    v115 = *(*(v114 + 8 * v113) + 8);
                    if (*(v115 + 44) > v178)
                    {
                      v116 = *(v115 + 32);
                      if (!v116)
                      {
                        goto LABEL_194;
                      }

                      v117 = 0;
                      v118 = v116 + (v179 << 7);
                      v119 = *(v118 + 112);
                      v120 = *(v118 + 124);
                      v121 = MEMORY[0x277D84F90];
LABEL_72:
                      v122 = (v119 + 8 * v117);
                      while (v120 != v117)
                      {
                        if (v117 >= v120)
                        {
                          __break(1u);
LABEL_127:
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
                          goto LABEL_139;
                        }

                        if (!v119)
                        {
                          goto LABEL_159;
                        }

                        v123 = v117 + 1;
                        if (__OFADD__(v117, 1))
                        {
                          goto LABEL_127;
                        }

                        v125 = *v122;
                        v122 += 4;
                        v124 = v125;
                        ++v117;
                        if ((v125 & 0x80000000) == 0 && (v124 & 0xC03) != 0)
                        {
                          v177 = *(v122 - 1);
                          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                          {
                            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v121 + 16) + 1, 1);
                          }

                          v127 = *(v121 + 16);
                          v126 = *(v121 + 24);
                          v128 = v127 + 1;
                          if (v127 >= v126 >> 1)
                          {
                            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v126 > 1), v127 + 1, 1);
                            v128 = v127 + 1;
                          }

                          *(v121 + 16) = v128;
                          v129 = v121 + 8 * v127;
                          *(v129 + 32) = v124;
                          *(v129 + 36) = v177;
                          v117 = v123;
                          goto LABEL_72;
                        }
                      }

                      v130 = *(v121 + 16);
                      if (v130)
                      {
                        v131 = 0;
                        v132 = (v121 + 36);
                        while (v131 < *(v121 + 16))
                        {
                          if (v94[48])
                          {
                            goto LABEL_160;
                          }

                          v133 = *v94;
                          if (v133 >= *(v110 + 116))
                          {
                            goto LABEL_129;
                          }

                          v134 = *(v110 + 104);
                          if (!v134)
                          {
                            goto LABEL_161;
                          }

                          v135 = *v132;
                          v136 = *(*(v134 + 8 * v133) + 8);
                          v137 = *(v136 + 44);
                          if (v135 >= v137)
                          {
                            goto LABEL_130;
                          }

                          v138 = *(v136 + 32);
                          if (!v138)
                          {
                            goto LABEL_162;
                          }

                          if (v101 >= v137)
                          {
                            goto LABEL_131;
                          }

                          v139 = *(v132 - 2);
                          v140 = (v138 + (v135 << 7));
                          v141 = (v138 + (v182 << 7));
                          v142 = *v141;
                          if (v140[31] == v140[30])
                          {
                            specialized UnsafeArray.growToCapacity(_:)();
                          }

                          v143 = *(v140 + 14);
                          if (!v143)
                          {
                            goto LABEL_163;
                          }

                          v144 = v139 & 0x1FFF;
                          v145 = v140[31];
                          v146 = v143 + 8 * v145;
                          *v146 = v144 | 0xA000;
                          *(v146 + 4) = v142;
                          if (v145 == -1)
                          {
                            goto LABEL_132;
                          }

                          v140[31] = v145 + 1;
                          v147 = *v140;
                          if (v141[31] == v141[30])
                          {
                            specialized UnsafeArray.growToCapacity(_:)();
                          }

                          v148 = *(v141 + 14);
                          v94 = v180;
                          if (!v148)
                          {
                            goto LABEL_164;
                          }

                          v149 = v141[31];
                          v150 = v148 + 8 * v149;
                          *v150 = v144 | 0x6000;
                          *(v150 + 4) = v147;
                          if (v149 == -1)
                          {
                            goto LABEL_133;
                          }

                          ++v131;
                          v141[31] = v149 + 1;
                          v132 += 2;
                          v110 = v183;
                          if (v130 == v131)
                          {
                            goto LABEL_102;
                          }
                        }

                        goto LABEL_128;
                      }

LABEL_102:

                      v151 = *(v175 + 16);
                      if (v151)
                      {
                        v152 = (v175 + 32);
                        while (!v94[48])
                        {
                          v153 = *v94;
                          if (v153 >= *(v110 + 116))
                          {
                            goto LABEL_134;
                          }

                          v154 = *(v110 + 104);
                          if (!v154)
                          {
                            goto LABEL_166;
                          }

                          v156 = *v152++;
                          v155 = v156;
                          v157 = *(*(v154 + 8 * v153) + 8);
                          v158 = *(v157 + 44);
                          if (v156 >= v158)
                          {
                            goto LABEL_135;
                          }

                          v159 = *(v157 + 32);
                          if (!v159)
                          {
                            goto LABEL_167;
                          }

                          if (v101 >= v158)
                          {
                            goto LABEL_136;
                          }

                          v160 = (v159 + (v155 << 7));
                          v161 = (v159 + (v182 << 7));
                          v162 = *v161;
                          if (v160[31] == v160[30])
                          {
                            specialized UnsafeArray.growToCapacity(_:)();
                          }

                          v163 = *(v160 + 14);
                          if (!v163)
                          {
                            goto LABEL_168;
                          }

                          v164 = v160[31];
                          v165 = v163 + 8 * v164;
                          *v165 = -24512;
                          *(v165 + 4) = v162;
                          if (v164 == -1)
                          {
                            goto LABEL_137;
                          }

                          v160[31] = v164 + 1;
                          v166 = *v160;
                          if (v161[31] == v161[30])
                          {
                            specialized UnsafeArray.growToCapacity(_:)();
                          }

                          v167 = *(v161 + 14);
                          v110 = v183;
                          if (!v167)
                          {
                            goto LABEL_169;
                          }

                          v168 = v161[31];
                          v169 = v167 + 8 * v168;
                          *v169 = 24640;
                          *(v169 + 4) = v166;
                          if (v168 == -1)
                          {
                            goto LABEL_138;
                          }

                          v161[31] = v168 + 1;
                          if (!--v151)
                          {
                            goto LABEL_119;
                          }
                        }

                        goto LABEL_165;
                      }

LABEL_119:
                      if (v94[48])
                      {
                        goto LABEL_195;
                      }

                      v170 = *v94;
                      if (v170 < *(v110 + 116))
                      {
                        v171 = *(v110 + 104);
                        if (!v171)
                        {
                          goto LABEL_196;
                        }

                        v172 = *(*(v171 + 8 * v170) + 8);
                        v173 = *(v172 + 44);
                        if (v101 < v173)
                        {
                          v174 = *(v172 + 32);
                          if (!v174)
                          {
                            goto LABEL_197;
                          }

                          if (v173 > v178)
                          {
                            Event.hide(_:within:)((v174 + (v179 << 7)), v94);
                            return;
                          }

                          goto LABEL_155;
                        }

LABEL_154:
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
                        goto LABEL_170;
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

LABEL_145:
      __break(1u);
      goto LABEL_146;
    }

LABEL_144:
    __break(1u);
    goto LABEL_145;
  }

LABEL_199:
  __break(1u);
LABEL_200:
  __break(1u);
}