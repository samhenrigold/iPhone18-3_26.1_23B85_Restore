void T_NodeMarkValue.updateState(within:)(unsigned __int8 *a1, unint64_t a2)
{
  v3 = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA11AttributeIDV_Tt2g5(a2, a1);
  if (a1[48])
  {
    goto LABEL_26;
  }

  v4 = *(a1 + 22);
  v5 = *a1;
  if (v5 >= *(v4 + 116))
  {
    goto LABEL_21;
  }

  v6 = *(v4 + 104);
  if (!v6)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v7 = v3;
  v8 = *(*(v6 + 8 * v5) + 8);
  if (v3 >= *(v8 + 84))
  {
    goto LABEL_22;
  }

  v9 = *(v8 + 72);
  if (!v9)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v10 = v9 + 312 * v3;
  v11 = *(v10 + 264);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    goto LABEL_23;
  }

  *(v10 + 264) = v13;
  v14 = *a1;
  v15 = 312 * v3;
  v16 = a1[48];
  v17 = a1 + 56;
  v18 = *(a1 + 72);
  v41[0] = *(a1 + 56);
  v41[1] = v18;
  v42[0] = *(a1 + 88);
  *(v42 + 9) = *(a1 + 97);
  v19 = a1 + 88;
  v20 = a1 + 100;
  v21 = a1 + 104;
  v22 = *(a1 + 29);
  while (1)
  {
    v23 = *v21;
    if (v22 < *v20)
    {
      v24 = (*v19 + 8 * v22);
      if ((v24[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v23)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v22, 0, v41);
    }

    v19 = v23 + 32;
    v20 = v23 + 44;
    v21 = v23 + 48;
    v17 = v23;
  }

  v28 = *v17;
  if (!v28)
  {
    goto LABEL_31;
  }

  v29 = v28 + 24 * *v24;
  if (v16)
  {
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v14 >= *(v4 + 116))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v25 = *(v4 + 104);
  if (v25)
  {
    v26 = *(*(v25 + 8 * v14) + 8);
    if (v7 < *(v26 + 84))
    {
      v27 = *(v26 + 72);
      if (v27)
      {
        *(v27 + v15 + 184) = *(*v29 + 32);
        v30 = v7;
        v31 = 0;
        v32 = 0;
        v33 = 1;
        v34 = 0xFFFFFFFFLL;
        v35 = 0;
        v36 = 1;
        v37 = -1;
        v38 = 0;
        v39 = 0;
        v40 = 0;
        specialized Interpreter.Iterator.observe<A>(invalidation:)(&v30);
        return;
      }

      goto LABEL_30;
    }

    goto LABEL_25;
  }

LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

unint64_t T_NodeSetPending.updateState(within:)(unsigned __int8 *a1, unint64_t a2)
{
  result = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA11AttributeIDV_Tt2g5(a2, a1);
  v5 = *(a1 + 22);
  v6 = *(v5 + 104);
  if ((a2 & 0x100000000) == 0)
  {
    if (a1[48])
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v7 = *(v5 + 116);
    v8 = *a1;
    if (v8 < v7)
    {
      if (!v6)
      {
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v9 = *(*(v6 + 8 * v8) + 8);
      if (result < *(v9 + 84))
      {
        v10 = *(v9 + 72);
        if (v10)
        {
          v11 = v10 + 312 * result;
          v12 = *(v11 + 224);
          if ((v12 & 1) == 0)
          {
            return result;
          }

          v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
          goto LABEL_16;
        }

        goto LABEL_26;
      }

      goto LABEL_20;
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (a1[48])
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v14 = *(v5 + 116);
  v15 = *a1;
  if (v15 >= v14)
  {
    goto LABEL_19;
  }

  if (!v6)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v16 = *(*(v6 + 8 * v15) + 8);
  if (result >= *(v16 + 84))
  {
    goto LABEL_21;
  }

  v17 = *(v16 + 72);
  if (!v17)
  {
LABEL_27:
    __break(1u);
    return result;
  }

  v11 = v17 + 312 * result;
  v18 = *(v11 + 224);
  if (v18)
  {
    return result;
  }

  v13 = v18 | 1;
LABEL_16:
  *(v11 + 224) = v13;
  return result;
}

unint64_t ReuseEventItem.describe(withInterpreter:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  switch(*(v1 + 16))
  {
    case 1:
      v22 = HIDWORD(v2);
      v15 = Interpreter.Storage.Types.subscript.getter(v2);
      v17 = v23;
      v18 = Interpreter.Storage.Types.subscript.getter(v22);
      v12 = v24;
      v30 = 0;
      _StringGuts.grow(_:)(67);
      v20 = "Reuse Failed: Incompatible Types: (baseList: ";
      goto LABEL_19;
    case 2:
      _StringGuts.grow(_:)(42);

      v21 = 0xD000000000000027;
      goto LABEL_21;
    case 3:
      _StringGuts.grow(_:)(35);

      v21 = 0xD000000000000020;
      goto LABEL_21;
    case 4:
    case 5:
      _StringGuts.grow(_:)(36);

      v21 = 0xD000000000000021;
LABEL_21:
      v30 = v21;
      goto LABEL_30;
    case 6:
      v30 = 0;
      _StringGuts.grow(_:)(56);
      MEMORY[0x26D69CDB0](0xD000000000000035, 0x800000026C33BE60);
      goto LABEL_30;
    case 7:
      _StringGuts.grow(_:)(46);

      v30 = 0xD00000000000001BLL;
      goto LABEL_29;
    case 8:
      v30 = 0;
      _StringGuts.grow(_:)(63);
      MEMORY[0x26D69CDB0](0xD00000000000002CLL, 0x800000026C33BCC0);
LABEL_29:
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x26D69CDB0](v27);

      MEMORY[0x26D69CDB0](0x617267627573202CLL, 0xEE00203A44496870);
      goto LABEL_30;
    case 9:
      _StringGuts.grow(_:)(45);

      v30 = 0xD00000000000002ALL;
LABEL_30:
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x26D69CDB0](v28);
      goto LABEL_31;
    case 0xA:
      v30 = 0;
      _StringGuts.grow(_:)(50);
      MEMORY[0x26D69CDB0](0xD00000000000002FLL, 0x800000026C33BC60);
      _print_unlocked<A, B>(_:_:)();
      goto LABEL_32;
    case 0xB:
      v10 = Interpreter.Storage.Types.subscript.getter(v2);
      v12 = v11;
      v30 = 0;
      _StringGuts.grow(_:)(55);
      v13 = "Reuse Failed: Unary Element Expected: (elementType: ";
      goto LABEL_24;
    case 0xC:
      v14 = HIDWORD(v2);
      v15 = Interpreter.Storage.Types.subscript.getter(v2);
      v17 = v16;
      v18 = Interpreter.Storage.Types.subscript.getter(v14);
      v12 = v19;
      v30 = 0;
      _StringGuts.grow(_:)(67);
      v20 = "Reuse Failed: Lists Incompatible: (baseList: ";
LABEL_19:
      MEMORY[0x26D69CDB0](0xD00000000000002DLL, (v20 - 32) | 0x8000000000000000);
      MEMORY[0x26D69CDB0](v15, v17);

      MEMORY[0x26D69CDB0](0xD000000000000011, 0x800000026C33BC40);
      v25 = v18;
      goto LABEL_25;
    case 0xD:
      v10 = Interpreter.Storage.Types.subscript.getter(v2);
      v12 = v26;
      v30 = 0;
      _StringGuts.grow(_:)(55);
      v13 = "Reuse Failed: Reuse was prevented: (preventingType: ";
LABEL_24:
      MEMORY[0x26D69CDB0](0xD000000000000034, (v13 - 32) | 0x8000000000000000);
      v25 = v10;
LABEL_25:
      MEMORY[0x26D69CDB0](v25, v12);
LABEL_31:

LABEL_32:
      MEMORY[0x26D69CDB0](41, 0xE100000000000000);
      return v30;
    case 0xE:
      if (v2 <= 2)
      {
        v29 = 0x6146206573756552;
        if (v2 ^ 1 | v3)
        {
          v29 = 0xD000000000000020;
        }

        if (v2 | v3)
        {
          return v29;
        }

        else
        {
          return 0xD000000000000013;
        }
      }

      else
      {
        if (v2 ^ 5 | v3)
        {
          v7 = 0xD00000000000001BLL;
        }

        else
        {
          v7 = 0xD00000000000001ELL;
        }

        v8 = 0xD000000000000025;
        if (v2 ^ 3 | v3)
        {
          v8 = 0xD00000000000001ELL;
        }

        if (v2 <= 4)
        {
          return v8;
        }

        else
        {
          return v7;
        }
      }

    default:
      v4 = Interpreter.Storage.Types.subscript.getter(HIDWORD(v2));
      v6 = v5;
      v30 = 0;
      _StringGuts.grow(_:)(57);
      MEMORY[0x26D69CDB0](0xD000000000000037, 0x800000026C33BB50);
      MEMORY[0x26D69CDB0](v4, v6);

      return v30;
  }
}

double static Event_Noun.id(for:verb:)@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  specialized static Event_Noun.id(for:verb:)(a1, a2, a3, a4, v8);
  result = *v8;
  v7 = v8[1];
  *a5 = v8[0];
  *(a5 + 16) = v7;
  *(a5 + 32) = v9;
  return result;
}

{
  specialized static Event_Noun.id(for:verb:)(a1, a2, a3, a4, v8);
  result = *v8;
  v7 = v8[1];
  *a5 = v8[0];
  *(a5 + 16) = v7;
  *(a5 + 32) = v9;
  return result;
}

void Event.Id.init<A, B>(_:_:)(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a3;
  *(a5 + 16) = a2;
  *(a5 + 24) = a4;
  *(a5 + 32) = 0;
}

uint64_t static Event_ReferenceNoun.ref(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return static Event_ReferenceNoun.ref(_:)(a1, a2, a3);
}

{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(a1 + 32);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 16))(v5, AssociatedTypeWitness, AssociatedConformanceWitness);
}

double static Event_ReferenceNoun.id(for:verb:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v21 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v15 = &v21 - v14;
  v16 = *(a4 - 8);
  MEMORY[0x28223BE20](v13);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v18, a1, a4);
  (*(a5 + 32))(a4, a5);
  (*(v16 + 8))(v18, a4);
  specialized Event.Id.init<A, B>(_:_:_:)(a4, a2, a5, v21, v22);
  (*(v12 + 8))(v15, AssociatedTypeWitness);
  result = *v22;
  v20 = v22[1];
  *a6 = v22[0];
  *(a6 + 16) = v20;
  *(a6 + 32) = v23;
  return result;
}

uint64_t Event.describe(state:)(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v31 = a1[1];
  v4 = *(a1 + 16);
  v6 = a1[3];
  v5 = a1[4];
  v34 = *(a1 + 41);
  v35 = *(a1 + 40);
  v7 = *(v1 + 1);
  v8 = *(v1 + 2);
  v10 = *(v1 + 25);
  v11 = v1[7];
  v12 = v1[8];
  LOBYTE(v42) = *(v1 + 24);
  v9 = v42;
  v13 = v10 == 0;
  v14 = 256;
  if (v13)
  {
    v14 = 0;
  }

  v15 = v14 | (v11 << 32);
  v33 = v7;
  v30 = HeterogeneousBuffer.index(after:)(0, v7, v8, v15 | v42, v12);
  result = MEMORY[0x26D69CDB0](8232, 0xE200000000000000);
  v17 = __OFSUB__(v3, 1);
  v18 = v3 - 1;
  if (v17)
  {
    __break(1u);
    goto LABEL_9;
  }

  v19 = *v1;
  v42 = v18;
  v43 = v31;
  v32 = v4;
  v44 = v4;
  v29 = v6;
  v45 = v6;
  v46 = v5;
  v47 = v35;
  v48 = v34;
  v20 = specialized InspectionState.wrapDescription<A>(_:)(v19);
  MEMORY[0x26D69CDB0](v20);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  LOBYTE(v36[0]) = v9;
  v21 = HeterogeneousBuffer.type(at:)(0, v33, v8, v15 | v9, v12);
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v22 = result;
  v23 = HeterogeneousBuffer.index(after:)(0, v33, v8, v15 | v9, v12);
  LOBYTE(v36[0]) = v9;
  v24 = HeterogeneousBuffer.type(at:)(v23, v33, v8, v15 | v9, v12);
  result = swift_conformsToProtocol2();
  if (result)
  {
    project #1 <A, B>(_:_:) in Event.id.getter(v24, v2, v21, v22, result, v36);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x26D69CDB0](32, 0xE100000000000000);
    LOBYTE(v36[0]) = v9;
    HeterogeneousBuffer.type(at:)(v30, v33, v8, v15 | v9, v12);
    v25 = _typeName(_:qualified:)();
    MEMORY[0x26D69CDB0](v25);

    MEMORY[0x26D69CDB0](32, 0xE100000000000000);
    v26 = *(v2 + 112);
    v27 = *(v2 + 120);
    v36[0] = v18;
    v36[1] = 0x7FFFFFFFFFFFFFFFLL;
    v37 = v32;
    v38 = v29;
    v39 = v5;
    v40 = v35;
    v41 = v34;
    v28 = specialized InspectionState.wrapDescription<A>(_:)(v26, v27);
    MEMORY[0x26D69CDB0](v28);

    MEMORY[0x26D69CDB0](10528, 0xE200000000000000);
    return 0;
  }

LABEL_10:
  __break(1u);
  return result;
}

void specialized closure #1 in static Event.each(_:of:do:)(unsigned int *result, uint64_t a2, uint64_t a3, __int16 a4, unsigned __int8 *a5, uint64_t a6, _BYTE *a7, unsigned int a8)
{
  v8 = *(a3 + 124);
  if (!v8)
  {
    goto LABEL_21;
  }

  v9 = 0;
  v10 = 0;
  v11 = *(a3 + 112);
  while (2)
  {
    v12 = (v11 + 4 + 8 * v9);
    while (1)
    {
      if (v9 >= v8)
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        return;
      }

      if (!v11)
      {
        goto LABEL_26;
      }

      v13 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_24;
      }

      v14 = *(v12 - 2);
      if (((a4 & 0xC000) == 0 || (v14 & (a4 & 0xC000 ^ 0xC000)) == 0) && ((a4 & 0x2000) == 0 || (v14 & 0x2000) != 0))
      {
        if ((a4 & 0x1FFF) == 0)
        {
          if (a4)
          {
            break;
          }

          goto LABEL_5;
        }

        if ((a4 & 0x1FFF & v14) != 0)
        {
          break;
        }
      }

LABEL_5:
      v12 += 2;
      ++v9;
      if (v13 == v8)
      {
        v15 = v10;
        goto LABEL_19;
      }
    }

    v15 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      goto LABEL_25;
    }

    result[v10] = *v12;
    ++v9;
    ++v10;
    if (v13 != v8)
    {
      continue;
    }

    break;
  }

LABEL_19:
  if ((v15 & 0x8000000000000000) == 0)
  {
    goto LABEL_22;
  }

  __break(1u);
LABEL_21:
  v15 = 0;
LABEL_22:
  specialized closure #1 in closure #1 in static EventAbstraction.model(update:within:position:)(result, v15, a3, a5, a6, a7, a8);
}

{
  v42 = a8;
  v43 = *MEMORY[0x277D85DE8];
  v8 = *(a3 + 124);
  if (!v8)
  {
    return;
  }

  v13 = 0;
  v14 = 0;
  v15 = *(a3 + 112);
  do
  {
    v16 = (v15 + 4 + 8 * v13);
    while (1)
    {
      if (v13 >= v8)
      {
        goto LABEL_48;
      }

      if (!v15)
      {
        goto LABEL_57;
      }

      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_49;
      }

      v18 = *(v16 - 2);
      if ((a4 & 0xC000) != 0 && (v18 & (a4 & 0xC000 ^ 0xC000)) != 0 || (a4 & 0x2000) != 0 && (v18 & 0x2000) == 0)
      {
        goto LABEL_5;
      }

      if ((a4 & 0x1FFF) != 0)
      {
        break;
      }

      if (a4)
      {
        goto LABEL_15;
      }

LABEL_5:
      v16 += 2;
      ++v13;
      if (v17 == v8)
      {
        isStackAllocationSafe = v14;
        goto LABEL_19;
      }
    }

    if ((a4 & 0x1FFF & v18) == 0)
    {
      goto LABEL_5;
    }

LABEL_15:
    isStackAllocationSafe = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      goto LABEL_56;
    }

    result[v14] = *v16;
    ++v13;
    ++v14;
  }

  while (v17 != v8);
LABEL_19:
  if (isStackAllocationSafe < 0)
  {
    goto LABEL_54;
  }

  if (result && isStackAllocationSafe)
  {
    v20 = &result[isStackAllocationSafe];
    do
    {
      if (a5[48])
      {
        goto LABEL_58;
      }

      v21 = *(a5 + 22);
      v22 = *a5;
      if (v22 >= *(v21 + 116))
      {
        goto LABEL_50;
      }

      v23 = *(v21 + 104);
      if (!v23)
      {
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
      }

      v24 = *result;
      v25 = *(*(v23 + 8 * v22) + 8);
      if (v24 >= *(v25 + 44))
      {
        goto LABEL_51;
      }

      v26 = *(v25 + 32);
      if (!v26)
      {
        goto LABEL_60;
      }

      v27 = *(v26 + (v24 << 7) + 124);
      if (v27 < 0x101 || (v37 = v26 + (v24 << 7), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
      {
        MEMORY[0x28223BE20](isStackAllocationSafe);
        v30 = (&v40 - v29);
        v31 = 0;
        v32 = 0;
        v33 = *(v28 + 112);
LABEL_30:
        v34 = (v33 + 8 * v32);
        while (v27 != v32)
        {
          if (v32 >= v27)
          {
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
            __break(1u);
LABEL_56:
            __break(1u);
LABEL_57:
            __break(1u);
LABEL_58:
            __break(1u);
            goto LABEL_59;
          }

          if (!v33)
          {
            goto LABEL_55;
          }

          v35 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
            goto LABEL_47;
          }

          v36 = *v34;
          v34 += 4;
          ++v32;
          if ((v36 & 0x8020) == 0x20)
          {
            if (__OFADD__(v31, 1))
            {
              goto LABEL_53;
            }

            v30[v31++] = *(v34 - 1);
            v32 = v35;
            goto LABEL_30;
          }
        }

        if (v31 < 0)
        {
          goto LABEL_52;
        }

        specialized closure #1 in closure #1 in static EventAbstraction.model(update:within:position:)(v30, v31, v28, a5, a6, a7, v42);
      }

      else
      {
        v38 = swift_slowAlloc();
        v39 = v41;
        specialized closure #1 in static Event.each(_:of:do:)(v38, v27, v37, 16416, a5, a6, a7, v42);
        v41 = v39;
        if (v39)
        {

          MEMORY[0x26D69EAB0](v38, -1, -1);
          __break(1u);
          return;
        }

        isStackAllocationSafe = MEMORY[0x26D69EAB0](v38, -1, -1);
      }

      ++result;
    }

    while (result != v20);
  }
}

uint64_t specialized closure #1 in static Event.each(_:of:do:)(uint64_t result, uint64_t a2, uint64_t a3, __int16 a4, unsigned __int8 *a5, uint64_t a6, char *a7, unsigned int a8)
{
  v41 = a8;
  v42 = *MEMORY[0x277D85DE8];
  v8 = *(a3 + 124);
  if (!v8)
  {
    return result;
  }

  v12 = result;
  v13 = 0;
  v14 = 0;
  v15 = *(a3 + 112);
  do
  {
    v16 = (v15 + 4 + 8 * v13);
    while (1)
    {
      if (v13 >= v8)
      {
        goto LABEL_48;
      }

      if (!v15)
      {
        goto LABEL_57;
      }

      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_49;
      }

      v18 = *(v16 - 2);
      if ((a4 & 0xC000) != 0 && (v18 & (a4 & 0xC000 ^ 0xC000)) != 0 || (a4 & 0x2000) != 0 && (v18 & 0x2000) == 0)
      {
        goto LABEL_5;
      }

      if ((a4 & 0x1FFF) != 0)
      {
        break;
      }

      if (a4)
      {
        goto LABEL_15;
      }

LABEL_5:
      v16 += 2;
      ++v13;
      if (v17 == v8)
      {
        result = v14;
        goto LABEL_19;
      }
    }

    if ((a4 & 0x1FFF & v18) == 0)
    {
      goto LABEL_5;
    }

LABEL_15:
    result = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      goto LABEL_56;
    }

    v12[v14] = *v16;
    ++v13;
    ++v14;
  }

  while (v17 != v8);
LABEL_19:
  if (result < 0)
  {
    goto LABEL_54;
  }

  if (v12 && result)
  {
    v19 = &v12[result];
    do
    {
      if (a5[48])
      {
        goto LABEL_58;
      }

      v20 = *(a5 + 22);
      v21 = *a5;
      if (v21 >= *(v20 + 116))
      {
        goto LABEL_50;
      }

      v22 = *(v20 + 104);
      if (!v22)
      {
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
      }

      v23 = *v12;
      v24 = *(*(v22 + 8 * v21) + 8);
      if (v23 >= *(v24 + 44))
      {
        goto LABEL_51;
      }

      v25 = *(v24 + 32);
      if (!v25)
      {
        goto LABEL_60;
      }

      v26 = *(v25 + (v23 << 7) + 124);
      if (v26 < 0x101 || (v36 = v25 + (v23 << 7), result = swift_stdlib_isStackAllocationSafe(), (result & 1) != 0))
      {
        MEMORY[0x28223BE20](result);
        v29 = (&v39 - v28);
        v30 = 0;
        v31 = 0;
        v32 = *(v27 + 112);
LABEL_30:
        v33 = (v32 + 8 * v31);
        while (v26 != v31)
        {
          if (v31 >= v26)
          {
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
            __break(1u);
LABEL_56:
            __break(1u);
LABEL_57:
            __break(1u);
LABEL_58:
            __break(1u);
            goto LABEL_59;
          }

          if (!v32)
          {
            goto LABEL_55;
          }

          v34 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
            goto LABEL_47;
          }

          v35 = *v33;
          v33 += 4;
          ++v31;
          if ((v35 & 0x8020) == 0x20)
          {
            if (__OFADD__(v30, 1))
            {
              goto LABEL_53;
            }

            v29[v30++] = *(v33 - 1);
            v31 = v34;
            goto LABEL_30;
          }
        }

        if (v30 < 0)
        {
          goto LABEL_52;
        }

        result = specialized closure #1 in closure #1 in static EventAbstraction.model(update:within:position:)(v29, v30, v27, a5, a6, a7, v41);
      }

      else
      {
        v37 = swift_slowAlloc();
        v38 = v40;
        specialized closure #1 in static Event.each(_:of:do:)(v37, v26, v36, 16416, a5, a6, a7, v41);
        v40 = v38;
        if (v38)
        {

          result = MEMORY[0x26D69EAB0](v37, -1, -1);
          __break(1u);
          return result;
        }

        result = MEMORY[0x26D69EAB0](v37, -1, -1);
      }

      ++v12;
    }

    while (v12 != v19);
  }

  return result;
}

unsigned int *specialized closure #1 in static Event.each(_:of:do:)(unsigned int *result, uint64_t a2, uint64_t a3, __int16 a4, unsigned __int8 *a5, uint64_t a6, char *a7, uint64_t a8)
{
  v8 = *(a3 + 124);
  if (!v8)
  {
    goto LABEL_21;
  }

  v9 = 0;
  v10 = 0;
  v11 = *(a3 + 112);
  while (2)
  {
    v12 = (v11 + 4 + 8 * v9);
    while (1)
    {
      if (v9 >= v8)
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        return result;
      }

      if (!v11)
      {
        goto LABEL_26;
      }

      v13 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_24;
      }

      v14 = *(v12 - 2);
      if (((a4 & 0xC000) == 0 || (v14 & (a4 & 0xC000 ^ 0xC000)) == 0) && ((a4 & 0x2000) == 0 || (v14 & 0x2000) != 0))
      {
        if ((a4 & 0x1FFF) == 0)
        {
          if (a4)
          {
            break;
          }

          goto LABEL_5;
        }

        if ((a4 & 0x1FFF & v14) != 0)
        {
          break;
        }
      }

LABEL_5:
      v12 += 2;
      ++v9;
      if (v13 == v8)
      {
        v15 = v10;
        goto LABEL_19;
      }
    }

    v15 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      goto LABEL_25;
    }

    result[v10] = *v12;
    ++v9;
    ++v10;
    if (v13 != v8)
    {
      continue;
    }

    break;
  }

LABEL_19:
  if ((v15 & 0x8000000000000000) == 0)
  {
    return specialized closure #1 in closure #1 in static EventAbstraction.model(update:within:position:)(result, v15, a3, a5, a6, a7, a8);
  }

  __break(1u);
LABEL_21:
  v15 = 0;
  return specialized closure #1 in closure #1 in static EventAbstraction.model(update:within:position:)(result, v15, a3, a5, a6, a7, a8);
}

uint64_t closure #1 in static Event.each(_:of:do:)(uint64_t result, uint64_t a2, uint64_t a3, __int16 a4, uint64_t (*a5)(void))
{
  v5 = *(a3 + 124);
  if (!v5)
  {
    return a5();
  }

  v6 = 0;
  v7 = 0;
  v8 = *(a3 + 112);
  while (2)
  {
    v9 = (v8 + 4 + 8 * v6);
    while (1)
    {
      if (v6 >= v5)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        return result;
      }

      if (!v8)
      {
        goto LABEL_25;
      }

      v10 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_23;
      }

      v11 = *(v9 - 2);
      if (((a4 & 0xC000) == 0 || (v11 & (a4 & 0xC000 ^ 0xC000)) == 0) && ((a4 & 0x2000) == 0 || (v11 & 0x2000) != 0))
      {
        if ((a4 & 0x1FFF) == 0)
        {
          if (a4)
          {
            break;
          }

          goto LABEL_5;
        }

        if ((a4 & 0x1FFF & v11) != 0)
        {
          break;
        }
      }

LABEL_5:
      v9 += 2;
      ++v6;
      if (v10 == v5)
      {
        v12 = v7;
        goto LABEL_19;
      }
    }

    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_24;
    }

    *(result + 4 * v7) = *v9;
    ++v6;
    ++v7;
    if (v10 != v5)
    {
      continue;
    }

    break;
  }

LABEL_19:
  if (v12 < 0)
  {
    __break(1u);
  }

  return a5();
}

Swift::Int Event.Position.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x26D69DBC0](a1);
  return Hasher._finalize()();
}

BOOL static Event.Relative.~= infix(_:_:)(unint64_t a1, uint64_t a2)
{
  if ((a2 ^ a1) >> 32 || (a2 & 0xC000) != 0 && ((a2 & 0xC000 ^ 0xC000) & a1) != 0 || (a1 & 0x2000) == 0 && (a2 & 0x2000) != 0)
  {
    return 0;
  }

  v3 = (a2 & 0x1FFF & a1) != 0 || (a2 & 0x1FFF) == 0;
  return a2 && v3;
}

BOOL static Event.Relationship.~= infix(_:_:)(unsigned __int16 a1, unsigned __int16 a2)
{
  if ((a2 & 0xC000) != 0 && ((a2 & 0xC000 ^ 0xC000) & a1) != 0)
  {
    return 0;
  }

  if ((a2 & 0x2000) != 0 && (a1 & 0x2000) == 0)
  {
    return 0;
  }

  v3 = a2 & 0x1FFF & a1;
  if ((a2 & 0x1FFF) == 0)
  {
    v3 = a2;
  }

  return v3 != 0;
}

void *Event.Relative.describe(state:)(void *result, unint64_t a2)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = specialized InspectionState.wrapDescription<A>(_:)(HIDWORD(a2));
    MEMORY[0x26D69CDB0](58, 0xE100000000000000);
    v3 = specialized InspectionState.wrapDescription<A>(_:)(v2);
    MEMORY[0x26D69CDB0](v3);

    return v4;
  }

  return result;
}

uint64_t Event.Relationship.name.getter(int a1)
{
  v1 = a1 & 0x1FFF;
  if (v1 == 3075)
  {
    return 0x646574616C6552;
  }

  if (a1 == 16385)
  {
    return 0x6D61657274737055;
  }

  if (a1 == 32769)
  {
    return 0x657274736E776F44;
  }

  if ((a1 & 0x1FFFu) > 0x7F)
  {
    if ((a1 & 0x1FFFu) > 0x3FF)
    {
      switch(v1)
      {
        case 1024:
          return 0x746361736E617254;
        case 4096:
          return 0x6E6F69746341;
        case 2048:
          return 1802658125;
      }
    }

    else
    {
      switch(v1)
      {
        case 128:
          return 0x656372756F53;
        case 256:
          return 1718379859;
        case 512:
          return 0x747865746E6F43;
      }
    }
  }

  else if ((a1 & 0x1FFFu) > 0xF)
  {
    switch(v1)
    {
      case 16:
        return 0x626176726573624FLL;
      case 32:
        return 0x70756F7247;
      case 64:
        return 0x6F20736573756143;
    }
  }

  else
  {
    switch(v1)
    {
      case 2:
        return 0x6870617247;
      case 4:
        return 0x697461636F6C6C41;
      case 8:
        return 0x61636F6C6C616544;
    }
  }

  if ((a1 & 0x2000) != 0)
  {
    v3 = Event.Relationship.name.getter(a1 & 0xFFFFDFFF);
    MEMORY[0x26D69CDB0](v3);

    return 544694610;
  }

  else
  {
    dispatch thunk of CustomStringConvertible.description.getter();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t Event.Relationship.label.getter(__int16 a1)
{
  if ((a1 & 0x1FFF) == 0x40)
  {
    return 0x736573756143;
  }

  else
  {
    return Event.Relationship.name.getter(a1);
  }
}

uint64_t Event.Relationship.directionDescription.getter(uint64_t result)
{
  if ((result & 0xC000) == 0x4000)
  {
    return 0x6D61657274737055;
  }

  if ((result & 0xC000) == 0x8000)
  {
    return 0x657274736E776F44;
  }

  if (result >= 0xC000u)
  {
    return 7105601;
  }

  __break(1u);
  return result;
}

uint64_t Event.Relationship.describe(state:)(uint64_t a1, int a2)
{
  if ((a2 & 0x2000) != 0)
  {
    v3 = 82;
  }

  else
  {
    v3 = 0;
  }

  if ((a2 & 0x2000) != 0)
  {
    v4 = 0xE100000000000000;
  }

  else
  {
    v4 = 0xE000000000000000;
  }

  MEMORY[0x26D69CDB0](v3, v4);

  if ((a2 & 0xC000) == 0x8000)
  {
    v6 = 0xEA00000000006D61;
    v7 = 0x657274736E776F44;
    goto LABEL_13;
  }

  if ((a2 & 0xC000) == 0x4000)
  {
    v6 = 0xE800000000000000;
    v7 = 0x6D61657274737055;
LABEL_13:
    MEMORY[0x26D69CDB0](v7, v6);

    MEMORY[0x26D69CDB0](58, 0xE100000000000000);
    v8 = Event.Relationship.name.getter(a2 & 0xFFFFDFFF);
    MEMORY[0x26D69CDB0](v8);

    return 0;
  }

  if ((a2 >> 14) > 2u)
  {
    v6 = 0xE300000000000000;
    v7 = 7105601;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t Event.Relationship.help.getter(uint64_t result)
{
  switch(result)
  {
    case 0xCC03u:
      return 0xD000000000000051;
    case 0x8001u:
      return 0xD000000000000076;
    case 0x4001u:
      return 0xD000000000000051;
  }

  v1 = result & 0x1FFF;
  if (v1 <= 0x1F)
  {
    switch(v1)
    {
      case 2u:
        return 0;
      case 4u:
        return 0xD00000000000002ALL;
      case 0x10u:
        return 0xD000000000000010;
    }
  }

  else if ((result & 0x1FFFu) > 0x7F)
  {
    if (v1 == 128)
    {
      return 0x656372756F73;
    }

    if (v1 == 256)
    {
      return 0x2073657461647055;
    }
  }

  else
  {
    if (v1 == 32)
    {
      return 0x70756F7247;
    }

    if (v1 == 64)
    {
      return 0x6F20736573756143;
    }
  }

  __break(1u);
  return result;
}

BOOL protocol witness for SetAlgebra.insert(_:) in conformance Event.Relationship(_WORD *a1, unsigned __int16 *a2)
{
  v3 = *a2;
  v4 = *v2;
  if ((v4 & v3) != v3)
  {
    *v2 = v4 | v3;
  }

  *a1 = v3;
  return (v4 & v3) != v3;
}

unsigned __int16 *protocol witness for SetAlgebra.remove(_:) in conformance Event.Relationship@<X0>(unsigned __int16 *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  v5 = v4 & v3;
  if ((v4 & v3) != 0)
  {
    *v2 = v4 & ~v3;
  }

  *a2 = v5;
  *(a2 + 2) = v5 == 0;
  return result;
}

unsigned __int16 *protocol witness for SetAlgebra.update(with:) in conformance Event.Relationship@<X0>(unsigned __int16 *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 = v4 | v3;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 2) = v5 == 0;
  return result;
}

_WORD *protocol witness for RawRepresentable.init(rawValue:) in conformance Event.Relationship@<X0>(_WORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 2) = 0;
  return result;
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance Event.Relationship@<X0>(uint64_t a1@<X0>, _WORD *a2@<X8>)
{
  v3 = specialized SetAlgebra<>.init(arrayLiteral:)(a1);

  *a2 = v3;
  return result;
}

uint64_t Event.RelativesSequnece.count.getter()
{
  result = v0[3];
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v2 = 0;
    result = 0;
    v3 = *v0;
    v4 = *(v0 + 3);
    v5 = *(v0 + 8);
LABEL_3:
    if (v2 != v4)
    {
      v6 = (v3 + 8 * v2);
      do
      {
        if (v2 >= v4)
        {
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
          return result;
        }

        if (!v3)
        {
          goto LABEL_23;
        }

        v7 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
          goto LABEL_22;
        }

        v8 = *v6;
        if (((v0[2] & 0xC000) == 0 || (v8 & (v5 & 0xC000 ^ 0xC000)) == 0) && ((v0[2] & 0x2000) == 0 || (v8 & 0x2000) != 0))
        {
          if ((v5 & 0x1FFF) != 0)
          {
            if ((v0[2] & 0x1FFF & v8) != 0)
            {
LABEL_16:
              ++v2;
              if (!__OFADD__(result++, 1))
              {
                goto LABEL_3;
              }

              __break(1u);
              break;
            }
          }

          else if (*(v0 + 8))
          {
            goto LABEL_16;
          }
        }

        ++v2;
        v6 += 4;
      }

      while (v7 != v4);
    }

    v0[3] = result;
  }

  return result;
}

uint64_t Event.RelativesSequnece.Iterator.relatives.setter(uint64_t result, uint64_t a2, uint64_t a3)
{
  *v3 = result;
  v3[1] = a2;
  v3[2] = a3;
  return result;
}

unint64_t protocol witness for IteratorProtocol.next() in conformance Event.RelativesSequnece.Iterator@<X0>(uint64_t a1@<X8>)
{
  result = Event.RelativesSequnece.Iterator.next()();
  *a1 = result;
  *(a1 + 4) = BYTE4(result) & 1;
  return result;
}

double protocol witness for Sequence.makeIterator() in conformance Event.RelativesSequnece@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  result = *(v1 + 8);
  *(a1 + 8) = result;
  *(a1 + 16) = 0;
  *(a1 + 24) = v2;
  return result;
}

uint64_t Event.Abstract.type.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2;
  return result;
}

uint64_t Event.Abstract.displayName(within:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v5 = *(a1 + 200) + 120 * a5;
  v6 = *(v5 + 8);
  v7 = *(v5 + 16);
  LOWORD(v5) = *(v5 + 24);
  v9 = v7;
  v10 = v5;
  return (*(v6 + 8))(&v9, a1);
}

double protocol witness for static Event_Noun.id(for:verb:) in conformance Event.Abstract@<D0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  specialized Event.Id.init<A, B>(_:_:_:)(a4, a2, &protocol witness table for Event.Abstract, a3, v8);
  result = *v8;
  v7 = v8[1];
  *a5 = v8[0];
  *(a5 + 16) = v7;
  *(a5 + 32) = v9;
  return result;
}

double _s21SwiftUITracingSupport5EventV9IgnorableVAA0D5_NounA2aFP2id3for4verbAC2IdVSPyxG_AA0D5_Verb_pXptFZTW_0@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  Event.Id.init<A, B>(_:_:)(a3, a1, a4, a2, v8);
  result = *v8;
  v7 = v8[1];
  *a5 = v8[0];
  *(a5 + 16) = v7;
  *(a5 + 32) = v9;
  return result;
}

uint64_t Event.Update.interval.setter(uint64_t result, uint64_t a2)
{
  *v2 = result;
  v2[1] = a2;
  return result;
}

void Event.Id.hash(into:)(uint64_t a1)
{
  Hasher.init()();
  MEMORY[0x26D69DBC0](*v1);
  MEMORY[0x26D69DBC0](*(v1 + 16));
  v2 = Hasher.finalize()();
  MEMORY[0x26D69DBC0](v2);
  Hasher._combine(_:)(*(v1 + 32));
}

unint64_t Event.Id.hasAttribute.getter()
{
  v1 = *v0 == &type metadata for Event.AttributeValue || *v0 == &type metadata for Event.AttributeStack;
  v2 = !v1;
  if (v1)
  {
    v3 = *(v0 + 32);
  }

  else
  {
    v3 = 0;
  }

  return v3 | (v2 << 32);
}

double static Event.Id.value(_:verb:)@<D0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  specialized Event.Id.init<A, B>(_:_:_:)(&type metadata for Event.AttributeValue, a2, &protocol witness table for Event.AttributeValue, a3, v7);
  result = *v7;
  v6 = v7[1];
  *a4 = v7[0];
  *(a4 + 16) = v6;
  *(a4 + 32) = v8;
  return result;
}

uint64_t static Event.Id.Spec.value(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = &type metadata for Event.AttributeValue;
  *(a2 + 8) = &protocol witness table for Event.AttributeValue;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = result;
  *(a2 + 36) = 0;
  return result;
}

uint64_t static Event.Id.Spec.~= infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (*a2)
  {
    v3 = *a1 == *a2;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a2 + 36);
  v5 = v2 == 0;
  if (v2)
  {
    v6 = !v3;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v8 = *(a1 + 16) == v2;
    if (v4 & 1 | ((v8 & 1) == 0))
    {
      return v4 & v8;
    }

    return *(a2 + 32) == *(a1 + 32);
  }

  v8 = v5 && v3;
  if (!(v4 & 1 | (!v5 || !v3)))
  {
    return *(a2 + 32) == *(a1 + 32);
  }

  return v4 & v8;
}

Swift::Int Event.Id.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher.init()();
  MEMORY[0x26D69DBC0](*v0);
  MEMORY[0x26D69DBC0](*(v0 + 16));
  v1 = Hasher.finalize()();
  MEMORY[0x26D69DBC0](v1);
  Hasher._combine(_:)(*(v0 + 32));
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance Event.Id(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[2];
  v4 = *(v1 + 8);
  Hasher.init()();
  MEMORY[0x26D69DBC0](v2);
  MEMORY[0x26D69DBC0](v3);
  v5 = Hasher.finalize()();
  MEMORY[0x26D69DBC0](v5);
  Hasher._combine(_:)(v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Event.Id(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[2];
  v4 = *(v1 + 8);
  Hasher.init(_seed:)();
  Hasher.init()();
  MEMORY[0x26D69DBC0](v2);
  MEMORY[0x26D69DBC0](v3);
  v5 = Hasher.finalize()();
  MEMORY[0x26D69DBC0](v5);
  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

double protocol witness for static Event_Noun.id(for:verb:) in conformance Event.AttributeStack@<D0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  specialized Event.Id.init<A, B>(_:_:_:)(a4, a2, &protocol witness table for Event.AttributeStack, a3, v8);
  result = *v8;
  v7 = v8[1];
  *a5 = v8[0];
  *(a5 + 16) = v7;
  *(a5 + 32) = v9;
  return result;
}

uint64_t Event.AttributeValue.oldValue.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  *(v2 + 20) = HIDWORD(a2);
  return result;
}

uint64_t Event.AttributeValue.newValue.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  *(v2 + 36) = HIDWORD(a2);
  return result;
}

double Event.AttributeValue.compareFailed.getter@<D0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 40);
  if (v2)
  {
    v10[0] = *v2;
    v3 = v2[1];
    v4 = v2[2];
    v5 = v2[3];
    *&v11[12] = *(v2 + 60);
    v10[2] = v4;
    *v11 = v5;
    v10[1] = v3;
    v6 = v2[3];
    a1[2] = v2[2];
    a1[3] = v6;
    *(a1 + 60) = *(v2 + 60);
    v7 = v2[1];
    *a1 = *v2;
    a1[1] = v7;
    outlined init with copy of Event.AttributeValue.ChangedField(v10, &v9);
  }

  else
  {
    result = 0.0;
    *(a1 + 60) = 0u;
    a1[2] = 0u;
    a1[3] = 0u;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

uint64_t Event.AttributeValue.ChangedField.estimatedField.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v7[0] = *(v1 + 24);
  v7[1] = v2;
  v8 = *(v1 + 56);
  v3 = v8;
  v9 = *(v1 + 72);
  v4 = v9;
  *a1 = v7[0];
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  return outlined init with copy of Attribute.EstimatedField(v7, v6);
}

void Event.AttributeValue.ChangedField.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v8 = *(v2 + 40);
  v9 = *(v2 + 48);
  v10 = *(v2 + 56);
  v11 = *(v2 + 60);
  v12 = *(v2 + 64);
  v13 = *(v2 + 52);
  v14 = *(v2 + 72);
  MEMORY[0x26D69DBC0](*v2);
  MEMORY[0x26D69DBC0](v4);
  Hasher._combine(_:)(v5);
  MEMORY[0x26D69DBC0](v6);
  MEMORY[0x26D69DBC0](v7);
  specialized Array<A>.hash(into:)(a1, v8);
  Hasher._combine(_:)(v9);
  if (v10 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v13);
  }

  Hasher._combine(_:)(v11);
  MEMORY[0x26D69DBC0](v12);
  Hasher._combine(_:)(v14);
}

Swift::Int Event.AttributeValue.ChangedField.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 4);
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = *(v0 + 12);
  v11 = *(v0 + 13);
  v8 = *(v0 + 56);
  v9 = *(v0 + 15);
  v12 = v0[8];
  v13 = *(v0 + 18);
  Hasher.init(_seed:)();
  MEMORY[0x26D69DBC0](v1);
  MEMORY[0x26D69DBC0](v2);
  Hasher._combine(_:)(v3);
  MEMORY[0x26D69DBC0](v4);
  MEMORY[0x26D69DBC0](v5);
  specialized Array<A>.hash(into:)(v14, v6);
  Hasher._combine(_:)(v7);
  if (v8 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v11);
  }

  Hasher._combine(_:)(v9);
  MEMORY[0x26D69DBC0](v12);
  Hasher._combine(_:)(v13);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance Event.AttributeValue.ChangedField(uint64_t a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  MEMORY[0x26D69DBC0](*v1);
  MEMORY[0x26D69DBC0](v3);
  Hasher._combine(_:)(v4);
  Attribute.EstimatedField.hash(into:)(a1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Event.AttributeValue.ChangedField(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 4);
  Hasher.init(_seed:)();
  MEMORY[0x26D69DBC0](v2);
  MEMORY[0x26D69DBC0](v3);
  Hasher._combine(_:)(v4);
  Attribute.EstimatedField.hash(into:)(v6);
  return Hasher._finalize()();
}

uint64_t Event.AttributeValue.changedField.setter(uint64_t result)
{
  *(v1 + 48) = result;
  *(v1 + 52) = BYTE4(result) & 1;
  return result;
}

Swift::Void __swiftcall Event.AttributeValue.deallocate()()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    outlined destroy of Event.AttributeValue.ChangedField(*(v0 + 40));
    MEMORY[0x26D69EAB0](v1, -1, -1);
    *(v0 + 40) = 0;
  }
}

Swift::Void __swiftcall Event.AttributeValue.copy()()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v7[0] = *v1;
    v2 = v1[1];
    v3 = v1[2];
    v4 = v1[3];
    *&v8[12] = *(v1 + 60);
    v7[2] = v3;
    *v8 = v4;
    v7[1] = v2;
    outlined init with copy of Event.AttributeValue.ChangedField(v7, &v6);
    _s21SwiftUITracingSupport6StrongVyACyxGxcfCAA5EventV14AttributeValueV12ChangedFieldV_Tt0B5(v7);
    *(v0 + 40) = v5;
  }
}

uint64_t Event.AttributeValue.changeDescription(_:within:)(uint64_t a1, unsigned __int8 *a2, uint64_t *a3)
{
  if (*v3 >= *(a3 + 21))
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = a3[9];
  if (!v5)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v6 = v5 + 312 * *v3;
  if (*(v6 + 101))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = v3;
  if ((v3[13] & 1) == 0)
  {
    v8 = HIDWORD(*(v6 + 92));
    v9 = *(*a3 + 136);
    v10 = *(v9 + 4);
    if (v8 < *(v10 + 16))
    {
      v11 = *(v10 + 4 * v8 + 32);
      if (v11 < *(v9 + 3))
      {
        if (*v9)
        {
          v13 = *a2;
          v14 = v3[12];
          v15 = *v9 + 120 * v11;
          v16 = *v15;
          v17 = *(v15 + 16);
          v18 = *(v15 + 48);
          v51[2] = *(v15 + 32);
          v51[3] = v18;
          v51[0] = v16;
          v51[1] = v17;
          v19 = *(v15 + 64);
          v20 = *(v15 + 80);
          v21 = *(v15 + 96);
          *(v52 + 14) = *(v15 + 110);
          v51[5] = v20;
          v52[0] = v21;
          v51[4] = v19;
          v22 = *(v15 + 80);
          v48 = *(v15 + 64);
          v49 = v22;
          v50[0] = *(v15 + 96);
          *(v50 + 14) = *(v15 + 110);
          v23 = *(v15 + 16);
          v44 = *v15;
          v45 = v23;
          v24 = *(v15 + 48);
          v46 = *(v15 + 32);
          v47 = v24;
          v25 = v9[2];
          v26 = *v9;
          v53[1] = v9[1];
          v53[2] = v25;
          v27 = v9[6];
          v29 = v9[3];
          v28 = v9[4];
          v53[5] = v9[5];
          v53[6] = v27;
          v53[3] = v29;
          v53[4] = v28;
          v53[0] = v26;
          v30 = v9[5];
          v41 = v9[4];
          v42 = v30;
          v43 = v9[6];
          v31 = v9[1];
          v37 = *v9;
          v38 = v31;
          v32 = v9[3];
          v39 = v9[2];
          v40 = v32;
          outlined init with copy of PType(v51, v55);
          outlined init with copy of Interpreter.Storage.Types(v53, v55);
          PType.linearizedField(at:within:)(v14, &v37);
          v34 = v33;
          v54[4] = v41;
          v54[5] = v42;
          v54[6] = v43;
          v54[0] = v37;
          v54[1] = v38;
          v54[2] = v39;
          v54[3] = v40;
          outlined destroy of Interpreter.Storage.Types(v54);
          v55[4] = v48;
          v55[5] = v49;
          v56[0] = v50[0];
          *(v56 + 14) = *(v50 + 14);
          v55[0] = v44;
          v55[1] = v45;
          v55[2] = v46;
          v55[3] = v47;
          outlined destroy of PType(v55);
          specialized Event.AttributeValue.with<A>(byteString:within:_:)(v13, a3, v7, a3, v7, v14, &v44);
          if (v46 != 255)
          {
            v35 = v45;
            *a1 = v44;
            *(a1 + 16) = v35;
            *(a1 + 32) = v46;
            return v34;
          }

          goto LABEL_16;
        }

LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      goto LABEL_12;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

LABEL_17:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized Event.AttributeValue.with<A>(byteString:within:_:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X3>, _DWORD *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  if (*a3 >= *(a2 + 21))
  {
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v7 = a2[9];
  if (!v7)
  {
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  if (!*(v7 + 312 * *a3 + 212))
  {
    goto LABEL_14;
  }

  v8 = 2;
  if (result)
  {
    v8 = 6;
  }

  v9 = 3;
  if (result)
  {
    v9 = 7;
  }

  v10 = 4;
  if (result)
  {
    v10 = 8;
  }

  v11 = 5;
  if (result)
  {
    v11 = 9;
  }

  v12 = a3[v10];
  v13 = a3[v9];
  v14 = a3[v8];
  v15 = a3[v11];
  if (!v14 && v15 == -1)
  {
LABEL_14:
    *a7 = 0u;
    *(a7 + 16) = 0u;
    *(a7 + 32) = -1;
    return result;
  }

  v16 = *a2;
  v17 = (*a2 + 40);
  v18 = *(*a2 + 56);
  v108[0] = *v17;
  v108[1] = v18;
  v109[0] = *(v16 + 72);
  v19 = (v16 + 72);
  v20 = (v16 + 84);
  v21 = (v16 + 88);
  v22 = 8 * v14;
  *(v109 + 9) = *(v16 + 81);
  v23 = (v16 + 40);
  v24 = (v16 + 72);
  v25 = (v16 + 84);
  v26 = (v16 + 88);
  v77 = v13;
  v76 = v12;
  while (1)
  {
    v27 = *v26;
    if (v14 < *v25)
    {
      v28 = (*v24 + v22);
      if ((v28[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v27)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v14, 0, v108);
    }

    v24 = (v27 + 32);
    v25 = (v27 + 44);
    v26 = (v27 + 48);
    v23 = v27;
  }

  if (!*v23)
  {
    goto LABEL_79;
  }

  v29 = *v23 + 24 * *v28;
  v30 = *v29;
  v31 = *(*v29 + 196);
  v32 = 0uLL;
  if (!v31)
  {
    v38 = 0;
    v39 = 0;
    goto LABEL_54;
  }

  v33 = *(v30 + 184);
  if (!v33)
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v34 = v31 - 1;
  if (*(v33 + 32 * (v31 - 1)) >= v15)
  {
    v40 = v31 >> 1;
    v41 = *(v33 + 32 * (v31 >> 1));
    if (v31 != 1 && v41 != v15)
    {
      v71 = *(v30 + 184);
      if (v15 >= v41)
      {
        v44 = v40 + 1;
        v43 = v15;
        v40 = v31;
      }

      else
      {
        v43 = v15;
        v44 = 0;
      }

      v48 = specialized Collection<>.binarySearch(for:)(v43, v44, v40, v33, *(v30 + 192) | (v31 << 32), 0);
      if (v49)
      {
        v40 = v31 - 1;
      }

      else
      {
        v40 = v48;
      }

      v32 = 0uLL;
      v33 = v71;
    }

    v50 = (v33 + 32 * v40);
    v34 = v40;
    while (v40 < v31)
    {
      if (v15 >= *v50)
      {
        goto LABEL_25;
      }

      if (!v34)
      {
        goto LABEL_53;
      }

      --v34;
      v50 -= 8;
      if (v34 > v31)
      {
        __break(1u);
LABEL_53:
        v38 = 0;
        v39 = 0;
        goto LABEL_54;
      }
    }

    __break(1u);
    goto LABEL_69;
  }

LABEL_25:
  v35 = v17[1];
  v106[0] = *v17;
  v106[1] = v35;
  v107[0] = v17[2];
  *(v107 + 9) = *(v17 + 41);
  while (1)
  {
    v36 = *v21;
    if (v14 < *v20)
    {
      v37 = (*v19 + v22);
      if ((v37[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v36)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v14, 0, v106);
    }

    v19 = (v36 + 32);
    v20 = (v36 + 44);
    v21 = (v36 + 48);
    v17 = v36;
  }

  if (!*v17)
  {
    goto LABEL_81;
  }

  v45 = *v17 + 24 * *v37;
  if (v34 >= *(*v45 + 196))
  {
    goto LABEL_71;
  }

  v46 = *(*v45 + 184);
  if (!v46)
  {
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v47 = (v46 + 32 * v34);
  v38 = *v47;
  v39 = *(v47 + 1);
  v32 = *(v47 + 1);
LABEL_54:
  v98 = v76 & 1;
  *&v78 = v14 | (v77 << 32);
  *(&v78 + 1) = v76 & 1 | (v15 << 32);
  *&v79 = v38;
  *(&v79 + 1) = v39;
  v80 = v32;
  LOBYTE(v81) = 1;
  Interpreter.Iterator.init(_:kind:onEvent:)(v16, &v78, 0, 0, v91);
  if (Interpreter.Iterator.read()())
  {
    v104[0] = *&v92[8];
    v104[1] = *&v92[24];
    v105[0] = *&v92[40];
    *(v105 + 9) = *&v92[49];
    v51 = *&v92[8];
    v52 = *&v92[40];
    v53 = *&v92[56];
    if (*&v92[68] >= *&v92[52])
    {
      goto LABEL_57;
    }

    while (1)
    {
      v54 = (v52 + 8 * *&v92[68]);
      if ((v54[1] & 1) == 0)
      {
        break;
      }

      do
      {
LABEL_57:
        if (!v53)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(*&v92[68], 0, v104);
        }

        v51 = *v53;
        v52 = v53[4];
        v55 = *(v53 + 11);
        v53 = v53[6];
      }

      while (*&v92[68] >= v55);
    }

    if (!v51)
    {
      goto LABEL_80;
    }

    v56 = (v51 + 24 * *v54);
    v57 = *v56;
    v58 = *(*v56 + 96);
    if (v58 == 2)
    {
      goto LABEL_73;
    }

    v59 = *(v57 + 104);
    v60 = *(v57 + 88);
    v99 = *(v57 + 72);
    v100 = v60;
    v101 = v58 & 0x101;
    v102 = HIDWORD(v58);
    v103 = v59 & 1;
    v61 = Interpreter.Iterator.AttachmentBuffer.buffer.getter();
    if (v63)
    {
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    v88 = v95;
    v89 = v96;
    v90 = v97;
    v84 = *&v92[48];
    v85 = *&v92[64];
    v86 = v93;
    v87 = v94;
    v80 = v91[2];
    v81 = *v92;
    v82 = *&v92[16];
    v83 = *&v92[32];
    v78 = v91[0];
    v79 = v91[1];
    v64 = specialized static ByteString.construct(attachment:from:)(v61, v62);
    v66 = v65;
    v68 = v67;
    specialized EvolutionTable.deallocate()();
    if (*a5 < *(a4 + 84))
    {
      v69 = *(a4 + 72);
      if (v69)
      {
        v70 = v69 + 312 * *a5;
        if ((*(v70 + 101) & 1) == 0)
        {
          ByteString.description(ofType:field:within:)(*(v70 + 96), a6, *a4, v64, v66, v68 & 1, a7);
          return outlined consume of ByteString.Storage(v64, v66, v68 & 1);
        }

        goto LABEL_76;
      }

LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    goto LABEL_70;
  }

LABEL_82:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized Event.AttributeValue.with<A>(byteString:within:_:)@<X0>(char a1@<W0>, uint64_t *a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X3>, _DWORD *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  if (*a3 >= *(a2 + 21))
  {
    goto LABEL_72;
  }

  v8 = a2[9];
  if (!v8)
  {
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  if (*(v8 + 312 * *a3 + 212))
  {
    v9 = 2;
    if (a1)
    {
      v9 = 6;
    }

    v10 = 3;
    if (a1)
    {
      v10 = 7;
    }

    v11 = 4;
    if (a1)
    {
      v11 = 8;
    }

    v12 = 5;
    if (a1)
    {
      v12 = 9;
    }

    v13 = a3[v11];
    v14 = a3[v10];
    v15 = a3[v9];
    v16 = a3[v12];
    if (v15 || v16 != -1)
    {
      v17 = *a2;
      v18 = (*a2 + 40);
      v19 = *(*a2 + 56);
      v111[0] = *v18;
      v111[1] = v19;
      v112[0] = *(v17 + 72);
      v20 = (v17 + 72);
      v21 = (v17 + 84);
      v22 = (v17 + 88);
      v23 = 8 * v15;
      *(v112 + 9) = *(v17 + 81);
      v24 = (v17 + 40);
      v25 = (v17 + 72);
      v26 = (v17 + 84);
      v27 = (v17 + 88);
      v80 = v14;
      v79 = v13;
      while (1)
      {
        v28 = *v27;
        if (v15 < *v26)
        {
          v29 = (*v25 + v23);
          if ((v29[1] & 1) == 0)
          {
            break;
          }
        }

        if (!v28)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(v15, 0, v111);
        }

        v25 = (v28 + 32);
        v26 = (v28 + 44);
        v27 = (v28 + 48);
        v24 = v28;
      }

      if (!*v24)
      {
        goto LABEL_82;
      }

      v30 = *v24 + 24 * *v29;
      v31 = *v30;
      v32 = *(*v30 + 196);
      v33 = 0uLL;
      if (!v32)
      {
        v39 = 0;
        v40 = 0;
LABEL_54:
        v101 = v79 & 1;
        *&v81 = v15 | (v80 << 32);
        *(&v81 + 1) = v79 & 1 | (v16 << 32);
        *&v82 = v39;
        *(&v82 + 1) = v40;
        v83 = v33;
        LOBYTE(v84) = 1;
        Interpreter.Iterator.init(_:kind:onEvent:)(v17, &v81, 0, 0, v94);
        if (!Interpreter.Iterator.read()())
        {
LABEL_85:

          result = _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
          return result;
        }

        v107[0] = *&v95[8];
        v107[1] = *&v95[24];
        v108[0] = *&v95[40];
        *(v108 + 9) = *&v95[49];
        v52 = *&v95[8];
        v53 = *&v95[40];
        v54 = *&v95[56];
        if (*&v95[68] >= *&v95[52])
        {
          goto LABEL_57;
        }

        while (1)
        {
          v55 = (v53 + 8 * *&v95[68]);
          if ((v55[1] & 1) == 0)
          {
            break;
          }

          do
          {
LABEL_57:
            if (!v54)
            {
              specialized error #1 <A>() in EvolutionTable.address(of:in:)(*&v95[68], 0, v107);
            }

            v52 = *v54;
            v53 = v54[4];
            v56 = *(v54 + 11);
            v54 = v54[6];
          }

          while (*&v95[68] >= v56);
        }

        if (!v52)
        {
          goto LABEL_83;
        }

        v57 = (v52 + 24 * *v55);
        v58 = *v57;
        v59 = *(*v57 + 96);
        if (v59 == 2)
        {
          goto LABEL_76;
        }

        v60 = *(v58 + 104);
        v61 = *(v58 + 88);
        v102 = *(v58 + 72);
        v103 = v61;
        v104 = v59 & 0x101;
        v105 = HIDWORD(v59);
        v106 = v60 & 1;
        v62 = Interpreter.Iterator.AttachmentBuffer.buffer.getter();
        if (v64)
        {
LABEL_77:
          __break(1u);
          goto LABEL_78;
        }

        v91 = v98;
        v92 = v99;
        v93 = v100;
        v87 = *&v95[48];
        v88 = *&v95[64];
        v89 = v96;
        v90 = v97;
        v83 = v94[2];
        v84 = *v95;
        v85 = *&v95[16];
        v86 = *&v95[32];
        v81 = v94[0];
        v82 = v94[1];
        v65 = specialized static ByteString.construct(attachment:from:)(v62, v63);
        v67 = v66;
        v69 = v68;
        specialized EvolutionTable.deallocate()();
        if (*a5 < *(a4 + 84))
        {
          v70 = *(a4 + 72);
          if (v70)
          {
            v71 = v70 + 312 * *a5;
            if ((*(v71 + 101) & 1) == 0)
            {
              ByteString.description(ofType:field:within:)(*(v71 + 96), a6, a7, *a4, v65, v67, v69 & 1, a8);
              outlined consume of ByteString.Storage(v65, v67, v69 & 1);
              goto LABEL_68;
            }

            goto LABEL_79;
          }

LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
          goto LABEL_80;
        }

        goto LABEL_73;
      }

      v34 = *(v31 + 184);
      if (!v34)
      {
LABEL_80:
        __break(1u);
        goto LABEL_81;
      }

      v35 = v32 - 1;
      if (*(v34 + 32 * (v32 - 1)) < v16)
      {
LABEL_25:
        v36 = v18[1];
        v109[0] = *v18;
        v109[1] = v36;
        v110[0] = v18[2];
        *(v110 + 9) = *(v18 + 41);
        while (1)
        {
          v37 = *v22;
          if (v15 < *v21)
          {
            v38 = (*v20 + v23);
            if ((v38[1] & 1) == 0)
            {
              break;
            }
          }

          if (!v37)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(v15, 0, v109);
          }

          v20 = (v37 + 32);
          v21 = (v37 + 44);
          v22 = (v37 + 48);
          v18 = v37;
        }

        if (!*v18)
        {
          goto LABEL_84;
        }

        v46 = *v18 + 24 * *v38;
        if (v35 >= *(*v46 + 196))
        {
          goto LABEL_74;
        }

        v47 = *(*v46 + 184);
        if (!v47)
        {
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
          goto LABEL_85;
        }

        v48 = (v47 + 32 * v35);
        v39 = *v48;
        v40 = *(v48 + 1);
        v33 = *(v48 + 1);
        goto LABEL_54;
      }

      v41 = v32 >> 1;
      v42 = *(v34 + 32 * (v32 >> 1));
      if (v32 != 1 && v42 != v16)
      {
        v73 = *(v31 + 184);
        if (v16 >= v42)
        {
          v45 = v41 + 1;
          v44 = v16;
          v41 = v32;
        }

        else
        {
          v44 = v16;
          v45 = 0;
        }

        v49 = specialized Collection<>.binarySearch(for:)(v44, v45, v41, v34, *(v31 + 192) | (v32 << 32), 0);
        if (v50)
        {
          v41 = v32 - 1;
        }

        else
        {
          v41 = v49;
        }

        v33 = 0uLL;
        v34 = v73;
      }

      v51 = (v34 + 32 * v41);
      v35 = v41;
      while (v41 < v32)
      {
        if (v16 >= *v51)
        {
          goto LABEL_25;
        }

        if (!v35)
        {
          goto LABEL_53;
        }

        --v35;
        v51 -= 8;
        if (v35 > v32)
        {
          __break(1u);
LABEL_53:
          v39 = 0;
          v40 = 0;
          goto LABEL_54;
        }
      }

      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }
  }

  *a8 = 0u;
  *(a8 + 16) = 0u;
  *(a8 + 32) = -1;
LABEL_68:
}

uint64_t Event.AttributeValue.description(_:fieldNamed:within:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *a1;

  return specialized Event.AttributeValue.with<A>(byteString:within:_:)(v10, a4, v5, a4, v5, a2, a3, a5);
}

double protocol witness for static Event_Noun.id(for:verb:) in conformance Event.AttributeValue@<D0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  specialized Event.Id.init<A, B>(_:_:_:)(a4, a2, &protocol witness table for Event.AttributeValue, a3, v8);
  result = *v8;
  v7 = v8[1];
  *a5 = v8[0];
  *(a5 + 16) = v7;
  *(a5 + 32) = v9;
  return result;
}

uint64_t protocol witness for Deallocatable.deallocate() in conformance Event.AttributeValue()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    outlined destroy of Event.AttributeValue.ChangedField(*(v0 + 40));
    result = MEMORY[0x26D69EAB0](v1, -1, -1);
    *(v0 + 40) = 0;
  }

  return result;
}

void protocol witness for Clonable.copy() in conformance Event.AttributeValue()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v7[0] = *v1;
    v2 = v1[1];
    v3 = v1[2];
    v4 = v1[3];
    *&v8[12] = *(v1 + 60);
    v7[2] = v3;
    *v8 = v4;
    v7[1] = v2;
    outlined init with copy of Event.AttributeValue.ChangedField(v7, &v6);
    _s21SwiftUITracingSupport6StrongVyACyxGxcfCAA5EventV14AttributeValueV12ChangedFieldV_Tt0B5(v7);
    *(v0 + 40) = v5;
  }
}

uint64_t static Event.Transaction.displayName(for:within:)(uint64_t a1)
{
  if (swift_dynamicCastMetatype())
  {
    return 0xD00000000000001ALL;
  }

  if (swift_dynamicCastMetatype())
  {
    return 0x746361736E617254;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t protocol witness for static Event_Noun.displayName(for:within:) in conformance Event.Transaction(uint64_t a1)
{
  if (swift_dynamicCastMetatype())
  {
    return 0xD00000000000001ALL;
  }

  if (swift_dynamicCastMetatype())
  {
    return 0x746361736E617254;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t Event.Action.Kind.description.getter()
{
  v1 = *v0;
  v2 = 0x7261657070416E6FLL;
  v3 = 0x7070617369446E6FLL;
  v4 = 0x65727574736547;
  if (v1 != 4)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0x65676E6168436E6FLL;
  }

  if (!*v0)
  {
    v2 = 0x656E696665646E75;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

SwiftUITracingSupport::Event::Action::Kind_optional __swiftcall Event.Action.Kind.init(rawValue:)(Swift::UInt32 rawValue)
{
  if (rawValue > 67)
  {
    switch(rawValue)
    {
      case 'D':
        *v1 = 3;
        return rawValue;
      case 'G':
        *v1 = 4;
        return rawValue;
      case 'R':
        *v1 = 5;
        return rawValue;
    }

LABEL_12:
    *v1 = 6;
    return rawValue;
  }

  if (!rawValue)
  {
    *v1 = 0;
    return rawValue;
  }

  if (rawValue == 65)
  {
    *v1 = 1;
    return rawValue;
  }

  if (rawValue != 67)
  {
    goto LABEL_12;
  }

  *v1 = 2;
  return rawValue;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Event.Action.Kind()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(dword_26C3349E4[v1]);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Event.Action.Kind(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(dword_26C3349E4[v2]);
  return Hasher._finalize()();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Event.Action.Kind()
{
  v1 = *v0;
  v2 = 0x7261657070416E6FLL;
  v3 = 0x7070617369446E6FLL;
  v4 = 0x65727574736547;
  if (v1 != 4)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0x65676E6168436E6FLL;
  }

  if (!*v0)
  {
    v2 = 0x656E696665646E75;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t Event.DynamicProperties.offsets.setter(uint64_t result, uint64_t a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  *(v2 + 12) = HIDWORD(a2);
  return result;
}

void Event.DynamicProperties.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 12) = -1;
  *(a1 + 16) = 0;
}

uint64_t Event.DynamicProperties.init(offsets:flags:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  *a4 = result;
  *(a4 + 8) = a2 & 1;
  *(a4 + 12) = HIDWORD(a2);
  *(a4 + 16) = v4;
  return result;
}

char *Event.DynamicProperties.offsetNames(for:within:)(unsigned int a1, unint64_t *a2)
{
  v5 = type metadata accessor for String.Encoding();
  MEMORY[0x28223BE20](v5 - 8);
  v182 = &v179 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = a2;
  v8 = *v2;
  v7 = v2[1];
  v9 = *(v2 + 8);
  v10 = v2[3];
  v191 = *a2;
  v11 = *(v191 + 136);
  v12 = *v11;
  v13 = v11[2];
  v227[1] = v11[1];
  v228 = v13;
  v14 = v11[3];
  v15 = v11[4];
  v16 = v11[6];
  v231 = v11[5];
  v232 = v16;
  v229 = v14;
  v230 = v15;
  v227[0] = v12;
  if (*(v228 + 16) <= a1)
  {
    goto LABEL_144;
  }

  v17 = *(v228 + 4 * a1 + 32);
  if (v17 >= HIDWORD(v227[0]))
  {
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    __break(1u);
LABEL_151:
    __break(1u);
LABEL_152:
    __break(1u);
LABEL_153:
    __break(1u);
LABEL_154:
    __break(1u);
LABEL_155:
    __break(1u);
    goto LABEL_156;
  }

  v188 = v9;
  v189 = v7;
  if (!*&v227[0])
  {
LABEL_156:
    __break(1u);
LABEL_157:
    __break(1u);
    goto LABEL_158;
  }

  v18 = *&v227[0] + 120 * v17;
  v19 = *v18;
  v20 = *(v18 + 16);
  v21 = *(v18 + 48);
  v215[2] = *(v18 + 32);
  v215[3] = v21;
  v22 = *(v18 + 64);
  v23 = *(v18 + 80);
  v24 = *(v18 + 96);
  *(v216 + 14) = *(v18 + 110);
  v215[5] = v23;
  v216[0] = v24;
  v215[4] = v22;
  v215[0] = v19;
  v215[1] = v20;
  v25 = (v191 + 40);
  v26 = *(v191 + 40);
  v27 = *(v191 + 56);
  v28 = *(v191 + 72);
  *(v246 + 9) = *(v191 + 81);
  v245[1] = v27;
  v246[0] = v28;
  v29 = (v191 + 72);
  v30 = (v191 + 84);
  v31 = (v191 + 88);
  v32 = 8 * v8;
  v245[0] = v26;
  v33 = (v191 + 40);
  v34 = (v191 + 72);
  v35 = (v191 + 84);
  v36 = (v191 + 88);
  v190 = v10;
  while (1)
  {
    v37 = *v36;
    if (v8 < *v35)
    {
      v38 = (*v34 + v32);
      if ((v38[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v37)
    {
      outlined init with copy of Interpreter.Storage.Types(v227, v208);
      outlined init with copy of PType(v215, v208);
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v8, 0, v245);
    }

    v34 = (v37 + 32);
    v35 = (v37 + 44);
    v36 = (v37 + 48);
    v33 = v37;
  }

  v39 = *v33;
  if (!v39)
  {
    goto LABEL_161;
  }

  v40 = (v39 + 24 * *v38);
  outlined init with copy of Interpreter.Storage.Types(v227, v208);
  outlined init with copy of PType(v215, v208);
  v41 = *v40;
  v42 = *(*v40 + 196);
  v43 = 0uLL;
  v44 = v190;
  if (!v42)
  {
LABEL_41:
    v58 = 0;
    v59 = 0;
    goto LABEL_42;
  }

  v45 = *(v41 + 184);
  if (!v45)
  {
LABEL_159:
    __break(1u);
    goto LABEL_160;
  }

  v46 = v42 - 1;
  if (*(v45 + 32 * (v42 - 1)) >= v190)
  {
    v50 = v42 >> 1;
    v51 = *(v45 + 32 * (v42 >> 1));
    if (v42 != 1 && v51 != v190)
    {
      if (v190 >= v51)
      {
        v54 = v50 + 1;
        v53 = v190;
        v50 = v42;
      }

      else
      {
        v53 = v190;
        v54 = 0;
      }

      v60 = specialized Collection<>.binarySearch(for:)(v53, v54, v50, v45, *(v41 + 192) | (v42 << 32), 0);
      if (v61)
      {
        v50 = v42 - 1;
      }

      else
      {
        v50 = v60;
      }

      v44 = v190;
      v43 = 0uLL;
    }

    v62 = (v45 + 32 * v50);
    v46 = v50;
    do
    {
      if (v50 >= v42)
      {
        goto LABEL_142;
      }

      if (v44 >= *v62)
      {
        goto LABEL_14;
      }

      if (!v46)
      {
        goto LABEL_41;
      }

      --v46;
      v62 -= 8;
    }

    while (v46 <= v42);
    __break(1u);
    goto LABEL_41;
  }

LABEL_14:
  v47 = v25[1];
  v243[0] = *v25;
  v243[1] = v47;
  v244[0] = v25[2];
  *(v244 + 9) = *(v25 + 41);
  while (1)
  {
    v48 = *v31;
    if (v8 < *v30)
    {
      v49 = (*v29 + v32);
      if ((v49[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v48)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v8, 0, v243);
    }

    v29 = (v48 + 32);
    v30 = (v48 + 44);
    v31 = (v48 + 48);
    v25 = v48;
  }

  if (!*v25)
  {
    goto LABEL_165;
  }

  v55 = *v25 + 24 * *v49;
  if (v46 >= *(*v55 + 196))
  {
    goto LABEL_146;
  }

  v56 = *(*v55 + 184);
  if (!v56)
  {
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
    goto LABEL_166;
  }

  v57 = (v56 + 32 * v46);
  v58 = *v57;
  v59 = *(v57 + 1);
  v43 = *(v57 + 1);
LABEL_42:
  v214 = v188;
  *&v198 = v8 | (v189 << 32);
  *(&v198 + 1) = v188 | (v44 << 32);
  *&v199 = v58;
  *(&v199 + 1) = v59;
  v200 = v43;
  v201 = 1;
  Interpreter.Iterator.init(_:kind:onEvent:)(v191, &v198, 0, 0, v208);
  if (!Interpreter.Iterator.read()())
  {
LABEL_166:
    LODWORD(v178) = 0;
    v177 = 518;
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v241[0] = v209;
  v241[1] = v210;
  v242[0] = *v211;
  *(v242 + 9) = *&v211[9];
  v63 = v209;
  v64 = *v211;
  v65 = v212;
  v66 = 8 * v212;
  v67 = *&v211[16];
  if (v212 >= *&v211[12])
  {
    goto LABEL_45;
  }

  while (1)
  {
    v68 = (v64 + v66);
    if ((v68[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_45:
      if (!v67)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v212, 0, v241);
      }

      v63 = *v67;
      v64 = v67[4];
      v69 = *(v67 + 11);
      v67 = v67[6];
    }

    while (v212 >= v69);
  }

  if (!v63)
  {
    goto LABEL_162;
  }

  v70 = (v63 + 24 * *v68);
  v71 = *v70;
  v72 = *(*v70 + 96);
  if (v72 == 2)
  {
    goto LABEL_157;
  }

  v73 = *(v71 + 104);
  v74 = *(v71 + 88);
  v236[2] = *(v71 + 72);
  v237 = v74;
  v238 = v72 & 0x101;
  v239 = HIDWORD(v72);
  v240 = v73 & 1;
  v75 = Interpreter.Iterator.AttachmentBuffer.buffer.getter();
  if (v77)
  {
LABEL_158:
    __break(1u);
    goto LABEL_159;
  }

  v78 = v75;
  v79 = (v213 + 40);
  v80 = *(v213 + 56);
  v235[0] = *(v213 + 40);
  v235[1] = v80;
  v236[0] = *(v213 + 72);
  *(v236 + 9) = *(v213 + 81);
  v81 = (v213 + 72);
  v82 = (v213 + 84);
  v83 = (v213 + 88);
  while (1)
  {
    v84 = *v83;
    if (v65 < *v82)
    {
      v85 = (*v81 + v66);
      if ((v85[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v84)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v65, 0, v235);
    }

    v81 = (v84 + 32);
    v82 = (v84 + 44);
    v83 = (v84 + 48);
    v79 = v84;
  }

  v86 = *v79;
  if (!v86)
  {
    goto LABEL_163;
  }

  v87 = (v86 + 24 * *v85);
  v88 = *v87;
  v89 = (*v87 + 120);
  v90 = *(*v87 + 136);
  v233[0] = *v89;
  v233[1] = v90;
  v234[0] = *(v88 + 152);
  *(v234 + 9) = *(v88 + 161);
  v91 = v88 + 152;
  v92 = (v88 + 164);
  v93 = (v88 + 168);
  while (1)
  {
    v94 = *v93;
    if (*v92 >= 0x17u && (*(*v91 + 180) & 1) == 0)
    {
      break;
    }

    if (!v94)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(22, 0, v233);
    }

    v91 = v94 + 32;
    v92 = (v94 + 44);
    v93 = (v94 + 48);
    v89 = v94;
  }

  if (!*v89)
  {
    goto LABEL_164;
  }

  v95 = _s21SwiftUITracingSupport16BufferAttachmentV7pointer8fileSizeACyxGSW_SitcfCSo23T_DynamicPropertyChangea_Tt1g5Tf4nd_n(v78, v76);
  v97 = v96;
  v99 = v98;
  isUniquelyReferenced_nonNull_native = specialized EvolutionTable.deallocate()();
  if (v97)
  {
    v101 = 0;
    v190 = MEMORY[0x277D84F90];
    v188 = v216[1];
    LODWORD(v189) = BYTE4(v216[1]);
    v180 = v97;
    v181 = v95;
    v187 = v99;
    while (1)
    {
      if ((v101 * v99) >> 64 != (v101 * v99) >> 63)
      {
        goto LABEL_138;
      }

      v102 = __OFADD__(v101, 1);
      v103 = v101 + 1;
      if (v102)
      {
        goto LABEL_139;
      }

      v191 = v103;
      v192 = 0;
      *&v200 = 0;
      v198 = 0u;
      v199 = 0u;
      BYTE8(v200) = 1;
      v104 = MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
      v105 = MEMORY[0x28223BE20](v104);
      v207 = 0;
      MEMORY[0x28223BE20](v105);
      v106 = swift_allocObject();
      v107 = MEMORY[0x28223BE20](v106);
      *(v107 + 16) = 0;
      *(v107 + 24) = 0;
      v176[0] = closure #1 in PType.forEachLinearizedField<A>(within:userData:_:revisitor:)specialized partial apply;
      v176[1] = &v179 - 6;
      v108 = MEMORY[0x28223BE20](v107);
      v177 = closure #2 in PType.forEachLinearizedField<A>(within:userData:_:revisitor:)specialized partial apply;
      v178 = v108;
      if (v189)
      {
        goto LABEL_147;
      }

      v109 = swift_allocObject();
      *(v109 + 16) = closure #1 in PType.forEachField<A>(within:userData:_:revisitor:)specialized partial apply;
      *(v109 + 24) = &v179 - 6;
      v110 = swift_allocObject();
      *(v110 + 16) = closure #2 in PType.forEachField<A>(within:userData:_:revisitor:)specialized partial apply;
      *(v110 + 24) = v176;
      v206 = 1;
      specialized closure #1 in closure #1 in static IterativeTreeTraversal.run(visitor:revisitor:start:_:revisitLeaf:backtraceCallback:)(thunk for @callee_guaranteed (@in_guaranteed A, @in_guaranteed B, @guaranteed IterativeTreeTraversal<A, B>) -> ()specialized partial apply, v110, thunk for @callee_guaranteed (@in_guaranteed A, @inout B, @inout IterativeTreeTraversal<A, B>) -> ()specialized partial apply, v109, 0, 0, 0, 0, 1, -1, 0, v188, 0);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        goto LABEL_140;
      }

      v112 = swift_isEscapingClosureAtFileLocation();

      if (v112)
      {
        goto LABEL_141;
      }

      if (BYTE8(v200))
      {
        v99 = v187;
      }

      else
      {
        v113 = v198;
        v114 = HIDWORD(*(&v198 + 1));
        v115 = *v183;
        v116 = (*v183 + 40);
        v117 = *(*v183 + 56);
        v225[0] = *v116;
        v225[1] = v117;
        v226[0] = *(v115 + 72);
        v118 = (v115 + 72);
        v119 = (v115 + 84);
        v120 = (v115 + 88);
        v121 = v198;
        v122 = 8 * v198;
        *(v226 + 9) = *(v115 + 81);
        v123 = (v115 + 40);
        v124 = (v115 + 72);
        v125 = (v115 + 84);
        v126 = (v115 + 88);
        v186 = *(&v198 + 1);
        while (1)
        {
          v127 = *v126;
          if (v198 < *v125)
          {
            v128 = (*v124 + v122);
            if ((v128[1] & 1) == 0)
            {
              break;
            }
          }

          if (!v127)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(v198, 0, v225);
          }

          v124 = (v127 + 32);
          v125 = (v127 + 44);
          v126 = (v127 + 48);
          v123 = v127;
        }

        v129 = *v123;
        if (!v129)
        {
          goto LABEL_153;
        }

        v130 = (v129 + 24 * *v128);
        v131 = *v130;
        v132 = *(*v130 + 196);
        v133 = 0uLL;
        if (v132)
        {
          v184 = v115;
          v185 = v198;
          v134 = *(v131 + 184);
          if (!v134)
          {
            goto LABEL_151;
          }

          v135 = v132 - 1;
          if (v114 <= *(v134 + 32 * (v132 - 1)))
          {
            v141 = v132 >> 1;
            v142 = *(v134 + 32 * (v132 >> 1));
            if (v132 != 1 && v142 != HIDWORD(v198))
            {
              v144 = *(v131 + 192) | (v132 << 32);
              v179 = HIDWORD(*(&v198 + 1));
              if (v114 >= v142)
              {
                v146 = v141 + 1;
                v145 = HIDWORD(*(&v198 + 1));
                v141 = v132;
              }

              else
              {
                v145 = HIDWORD(*(&v198 + 1));
                v146 = 0;
              }

              v150 = specialized Collection<>.binarySearch(for:)(v145, v146, v141, v134, v144, 0);
              if (v151)
              {
                v141 = v132 - 1;
              }

              else
              {
                v141 = v150;
              }

              LODWORD(v114) = v179;
              v133 = 0uLL;
            }

            v152 = (v134 + 32 * v141);
            v135 = v141;
            v113 = v185;
            while (1)
            {
              if (v141 >= v132)
              {
                __break(1u);
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
LABEL_142:
                __break(1u);
LABEL_143:
                __break(1u);
LABEL_144:
                __break(1u);
                goto LABEL_145;
              }

              if (*v152 <= v114)
              {
                goto LABEL_86;
              }

              if (!v135)
              {
                break;
              }

              --v135;
              v152 -= 8;
              if (v135 > v132)
              {
                goto LABEL_137;
              }
            }

            v139 = 0;
            v140 = 0;
            v97 = v180;
            v99 = v187;
          }

          else
          {
LABEL_86:
            v136 = v116[1];
            v223[0] = *v116;
            v223[1] = v136;
            v224[0] = v116[2];
            *(v224 + 9) = *(v116 + 41);
            v113 = v185;
            while (1)
            {
              v137 = *v120;
              if (v121 < *v119)
              {
                v138 = (*v118 + v122);
                if ((v138[1] & 1) == 0)
                {
                  break;
                }
              }

              if (!v137)
              {
                specialized error #1 <A>() in EvolutionTable.address(of:in:)(v185, 0, v223);
              }

              v118 = (v137 + 32);
              v119 = (v137 + 44);
              v120 = (v137 + 48);
              v116 = v137;
            }

            v99 = v187;
            if (!*v116)
            {
              goto LABEL_155;
            }

            v147 = *v116 + 24 * *v138;
            v97 = v180;
            if (v135 >= *(*v147 + 196))
            {
              goto LABEL_143;
            }

            v148 = *(*v147 + 184);
            if (!v148)
            {
              goto LABEL_152;
            }

            v149 = (v148 + 32 * v135);
            v139 = *v149;
            v140 = *(v149 + 1);
            v133 = *(v149 + 1);
          }

          v115 = v184;
        }

        else
        {
          v139 = 0;
          v140 = 0;
          v97 = v180;
          v99 = v187;
        }

        LOBYTE(v207) = v186 & 1;
        v192 = v113;
        v193 = v186 & 0xFFFFFFFF00000001;
        v194 = v139;
        v195 = v140;
        v196 = v133;
        v197 = 1;
        Interpreter.Iterator.init(_:kind:onEvent:)(v115, &v192, 0, 0, &v198);
        if (!Interpreter.Iterator.read()())
        {
          goto LABEL_166;
        }

        v221[0] = v202;
        v221[1] = v203;
        v222[0] = *v204;
        *(v222 + 9) = *&v204[9];
        v153 = v202;
        v154 = *v204;
        v155 = *&v204[16];
        if (v205 >= *&v204[12])
        {
          do
          {
LABEL_119:
            if (!v155)
            {
              specialized error #1 <A>() in EvolutionTable.address(of:in:)(v205, 0, v221);
            }

            v153 = *v155;
            v154 = v155[4];
            v157 = *(v155 + 11);
            v155 = v155[6];
          }

          while (v205 >= v157);
        }

        v156 = (v154 + 8 * v205);
        if (v156[1])
        {
          goto LABEL_119;
        }

        if (!v153)
        {
          goto LABEL_154;
        }

        v158 = (v153 + 24 * *v156);
        v159 = *v158;
        v160 = *(*v158 + 96);
        if (v160 == 2)
        {
          goto LABEL_148;
        }

        v161 = *(v159 + 104);
        v162 = *(v159 + 88);
        v216[2] = *(v159 + 72);
        v217 = v162;
        v218 = v160 & 0x101;
        v219 = HIDWORD(v160);
        v220 = v161 & 1;
        v163 = Interpreter.Iterator.AttachmentBuffer.buffer.getter();
        if (v165)
        {
          goto LABEL_150;
        }

        v166 = v164 - v163;
        if (!v163)
        {
          v166 = 0;
        }

        v192 = v163;
        v193 = v166;
        static String.Encoding.utf8.getter();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSRys5UInt8VGMd, &_sSRys5UInt8VGMR);
        lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type UnsafeBufferPointer<UInt8> and conformance UnsafeBufferPointer<A>, &_sSRys5UInt8VGMd, &_sSRys5UInt8VGMR, MEMORY[0x277D836F8]);
        v167 = String.init<A>(bytes:encoding:)();
        if (!v168)
        {
          goto LABEL_149;
        }

        v169 = v167;
        v170 = v168;
        specialized EvolutionTable.deallocate()();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v190 + 2) + 1, 1, v190);
          v190 = isUniquelyReferenced_nonNull_native;
        }

        v172 = *(v190 + 2);
        v171 = *(v190 + 3);
        if (v172 >= v171 >> 1)
        {
          isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v171 > 1), v172 + 1, 1, v190);
          v190 = isUniquelyReferenced_nonNull_native;
        }

        v173 = v190;
        *(v190 + 2) = v172 + 1;
        v174 = &v173[16 * v172];
        *(v174 + 4) = v169;
        *(v174 + 5) = v170;
      }

      v101 = v191;
      if (v191 >= v97)
      {
        goto LABEL_135;
      }
    }
  }

  v190 = MEMORY[0x277D84F90];
LABEL_135:
  outlined destroy of PType(v215);
  outlined destroy of Interpreter.Storage.Types(v227);
  return v190;
}

uint64_t Event.storage.setter(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  *(v4 + 8) = result;
  *(v4 + 16) = a2;
  *(v4 + 24) = a3 & 1;
  *(v4 + 25) = BYTE1(a3) & 1;
  *(v4 + 28) = HIDWORD(a3);
  *(v4 + 32) = a4;
  return result;
}

void Event._indices.getter()
{
  v1 = 0;
  v2 = 0;
  v3 = *(v0 + 8);
  v13 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 16) - v3;
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    v7 = v2;
    if (v2 >= v4)
    {
      break;
    }

    if (v13)
    {
      goto LABEL_19;
    }

    if (!v3)
    {
      goto LABEL_20;
    }

    if (v5 < v1)
    {
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return;
    }

    v8 = *(v3 + v1);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
    }

    v10 = *(v6 + 2);
    v9 = *(v6 + 3);
    if (v10 >= v9 >> 1)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v6);
    }

    *(v6 + 2) = v10 + 1;
    *&v6[8 * v10 + 32] = v8;
    v11 = specialized HeterogeneousBuffer.stride<A>(of:)(*(v3 + v1));
    v12 = __OFADD__(v11, v1);
    v1 += v11;
    if (v12)
    {
      goto LABEL_16;
    }

    if (v1 > 0xFFFFFFFFLL)
    {
      goto LABEL_17;
    }

    v2 = v7 + 1;
    if (v1 < 0)
    {
      goto LABEL_18;
    }
  }
}

unint64_t Event.hasInvalidation.getter()
{
  v2 = *(v0 + 8);
  v1 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 28);
  v4 = *(v0 + 32);
  result = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV12InvalidationV_Ttgq5Tm(v2, v1, v3, v4);
  v7 = 0;
  if (v5 == result && v4 == HIDWORD(result))
  {
    return v7;
  }

  if (HIDWORD(result) >= v4)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v2)
  {
    return *(v2 + result + 8);
  }

LABEL_12:
  __break(1u);
  return result;
}

double project #1 <A, B>(_:_:) in Event.id.getter@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v11 = *(a2 + 8);
  v12 = *(a2 + 16);
  v13 = *(a2 + 32);
  LOBYTE(v17[0]) = *(a2 + 24);
  v14 = HeterogeneousBuffer.valuePointer<A>(for:)(0, v11, v12, v17[0], v13, a3);
  (*(a4 + 16))(v17, v14, a1, a5, a3, a4);
  result = *v17;
  v16 = v17[1];
  *a6 = v17[0];
  *(a6 + 16) = v16;
  *(a6 + 32) = v18;
  return result;
}

ValueMetadata *specialized HeterogeneousBuffer.valuePointer<A>(for:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v6 = a4;
  result = HeterogeneousBuffer.type(at:)(a1, a2, a3, a4 & 1, a5);
  if (v5 <= HIDWORD(a1) || result != &type metadata for Event.AttributeValue)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v6)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (a2)
  {
    return (a2 + a1 + 8);
  }

LABEL_8:
  __break(1u);
  return result;
}

{
  v5 = a5;
  v6 = a4;
  result = HeterogeneousBuffer.type(at:)(a1, a2, a3, a4 & 1, a5);
  if (v5 <= HIDWORD(a1) || result != &type metadata for Event.Update)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v6)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (a2)
  {
    return (a2 + a1 + 8);
  }

LABEL_8:
  __break(1u);
  return result;
}

{
  v5 = a5;
  v6 = a4;
  result = HeterogeneousBuffer.type(at:)(a1, a2, a3, a4 & 1, a5);
  if (v5 <= HIDWORD(a1) || result != &type metadata for Event.Prefetch)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v6)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (a2)
  {
    return (a2 + a1 + 8);
  }

LABEL_8:
  __break(1u);
  return result;
}

{
  v5 = a5;
  v6 = a4;
  result = HeterogeneousBuffer.type(at:)(a1, a2, a3, a4 & 1, a5);
  if (v5 <= HIDWORD(a1) || result != &type metadata for Event.Animation)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v6)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (a2)
  {
    return (a2 + a1 + 8);
  }

LABEL_8:
  __break(1u);
  return result;
}

{
  v5 = a5;
  v6 = a4;
  result = HeterogeneousBuffer.type(at:)(a1, a2, a3, a4 & 1, a5);
  if (v5 <= HIDWORD(a1) || result != &type metadata for Event.Transaction)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v6)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (a2)
  {
    return (a2 + a1 + 8);
  }

LABEL_8:
  __break(1u);
  return result;
}

{
  v5 = a5;
  v6 = a4;
  result = HeterogeneousBuffer.type(at:)(a1, a2, a3, a4 & 1, a5);
  if (v5 <= HIDWORD(a1) || result != &type metadata for Event.Action)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v6)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (a2)
  {
    return (a2 + a1 + 8);
  }

LABEL_8:
  __break(1u);
  return result;
}

{
  v5 = a5;
  v6 = a4;
  result = HeterogeneousBuffer.type(at:)(a1, a2, a3, a4 & 1, a5);
  if (v5 <= HIDWORD(a1) || result != &type metadata for Event.AttributeStack)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v6)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (a2)
  {
    return (a2 + a1 + 8);
  }

LABEL_8:
  __break(1u);
  return result;
}

{
  v5 = a5;
  v6 = a4;
  result = HeterogeneousBuffer.type(at:)(a1, a2, a3, a4 & 1, a5);
  if (v5 <= HIDWORD(a1) || result != &type metadata for GraphRef)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v6)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (a2)
  {
    return (a2 + a1 + 8);
  }

LABEL_8:
  __break(1u);
  return result;
}

{
  v5 = a5;
  v6 = a4;
  result = HeterogeneousBuffer.type(at:)(a1, a2, a3, a4 & 1, a5);
  if (v5 <= HIDWORD(a1) || result != &type metadata for Event.Abstract)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v6)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (a2)
  {
    return (a2 + a1 + 8);
  }

LABEL_8:
  __break(1u);
  return result;
}

{
  v5 = a5;
  v6 = a4;
  result = HeterogeneousBuffer.type(at:)(a1, a2, a3, a4 & 1, a5);
  if (v5 <= HIDWORD(a1) || result != &type metadata for Event.RenderTick)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v6)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (a2)
  {
    return (a2 + a1 + 8);
  }

LABEL_8:
  __break(1u);
  return result;
}

{
  v5 = a5;
  v6 = a4;
  result = HeterogeneousBuffer.type(at:)(a1, a2, a3, a4 & 1, a5);
  if (v5 <= HIDWORD(a1) || result != &type metadata for Event.GraphRootValueUpdate)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v6)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (a2)
  {
    return (a2 + a1 + 8);
  }

LABEL_8:
  __break(1u);
  return result;
}

{
  v5 = a5;
  v6 = a4;
  result = HeterogeneousBuffer.type(at:)(a1, a2, a3, a4 & 1, a5);
  if (v5 <= HIDWORD(a1) || result != &type metadata for Event.Invalidation)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v6)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (a2)
  {
    return (a2 + a1 + 8);
  }

LABEL_8:
  __break(1u);
  return result;
}

unint64_t Event.noun.getter()
{
  v1 = HeterogeneousBuffer.type(at:)(0, *(v0 + 8), *(v0 + 16), *(v0 + 24), *(v0 + 32));
  result = swift_conformsToProtocol2();
  if (result)
  {
    return v1;
  }

  __break(1u);
  return result;
}

unint64_t Event.verb.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v9 = *(v0 + 24);
  v4 = 256;
  if (!*(v0 + 25))
  {
    v4 = 0;
  }

  v5 = v4 | (*(v0 + 28) << 32);
  v6 = HeterogeneousBuffer.index(after:)(0, v1, v2, v5 | v9, v3);
  v7 = HeterogeneousBuffer.type(at:)(v6, v1, v2, v5 | v9, v3);
  result = swift_conformsToProtocol2();
  if (result)
  {
    return v7;
  }

  __break(1u);
  return result;
}

unint64_t Event.prev.getter()
{
  v1 = *(v0 + 124) + 1;
  for (i = *(v0 + 112); ; i += 4)
  {
    if (!--v1)
    {
      v5 = 0;
      return v5 | ((v1 == 0) << 32);
    }

    if (!*(v0 + 112))
    {
      break;
    }

    v3 = i + 4;
    v4 = *i & 0x8100;
    if (v4 == 256)
    {
      v5 = *(v3 - 1);
      return v5 | ((v1 == 0) << 32);
    }
  }

  __break(1u);
  return result;
}

unint64_t Event.next.getter()
{
  v1 = *(v0 + 124) + 1;
  for (i = *(v0 + 112); ; i += 4)
  {
    if (!--v1)
    {
      v5 = 0;
      return v5 | ((v1 == 0) << 32);
    }

    if (!*(v0 + 112))
    {
      break;
    }

    v3 = i + 4;
    v4 = *i & 0x4100;
    if (v4 == 256)
    {
      v5 = *(v3 - 1);
      return v5 | ((v1 == 0) << 32);
    }
  }

  __break(1u);
  return result;
}

uint64_t Event.backtrace(within:)(uint64_t *a1)
{
  v2 = *(v1 + 68);
  v3 = *(v1 + 80);
  if (v2)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3 == -1;
  }

  if (v4)
  {
    return 0;
  }

  v5 = *(v1 + 72);
  v87 = *(v1 + 76);
  v6 = *a1;
  v7 = (*a1 + 40);
  v8 = *(*a1 + 56);
  v110[0] = *v7;
  v110[1] = v8;
  v111[0] = *(v6 + 72);
  v9 = (v6 + 72);
  v10 = (v6 + 84);
  v11 = (v6 + 88);
  v12 = 8 * v2;
  *(v111 + 9) = *(v6 + 81);
  v13 = (v6 + 40);
  v14 = (v6 + 72);
  v15 = (v6 + 84);
  v16 = (v6 + 88);
  while (1)
  {
    v17 = *v16;
    if (v2 < *v15)
    {
      v18 = (*v14 + v12);
      if ((v18[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v17)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v2, 0, v110);
    }

    v14 = (v17 + 32);
    v15 = (v17 + 44);
    v16 = (v17 + 48);
    v13 = v17;
  }

  v20 = *v13;
  if (!v20)
  {
    goto LABEL_86;
  }

  v21 = (v20 + 24 * *v18);
  v22 = *v21;
  v23 = *(*v21 + 196);
  v24 = 0uLL;
  if (v23)
  {
    v86 = v5;
    v25 = *(v22 + 184);
    if (!v25)
    {
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    v26 = v23 - 1;
    if (*(v25 + 32 * (v23 - 1)) >= v3)
    {
      v32 = v23 >> 1;
      v33 = *(v25 + 32 * (v23 >> 1));
      if (v23 != 1 && v33 != v3)
      {
        v85 = *(v22 + 184);
        if (v3 >= v33)
        {
          v36 = v32 + 1;
          v35 = v3;
          v32 = v23;
        }

        else
        {
          v35 = v3;
          v36 = 0;
        }

        v40 = specialized Collection<>.binarySearch(for:)(v35, v36, v32, v25, *(v22 + 192) | (v23 << 32), 0);
        if (v41)
        {
          v32 = v23 - 1;
        }

        else
        {
          v32 = v40;
        }

        v24 = 0uLL;
        v25 = v85;
      }

      v42 = (v25 + 32 * v32);
      v26 = v32;
      while (v32 < v23)
      {
        if (v3 >= *v42)
        {
          goto LABEL_16;
        }

        if (!v26)
        {
          goto LABEL_44;
        }

        --v26;
        v42 -= 8;
        if (v26 > v23)
        {
          __break(1u);
LABEL_44:
          v30 = 0;
          v31 = 0;
          goto LABEL_45;
        }
      }

      goto LABEL_80;
    }

LABEL_16:
    v27 = v7[1];
    v108[0] = *v7;
    v108[1] = v27;
    v109[0] = v7[2];
    *(v109 + 9) = *(v7 + 41);
    while (1)
    {
      v28 = *v11;
      if (v2 < *v10)
      {
        v29 = (*v9 + v12);
        if ((v29[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v28)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v2, 0, v108);
      }

      v9 = (v28 + 32);
      v10 = (v28 + 44);
      v11 = (v28 + 48);
      v7 = v28;
    }

    if (!*v7)
    {
      goto LABEL_90;
    }

    v37 = *v7 + 24 * *v29;
    if (v26 >= *(*v37 + 196))
    {
      goto LABEL_81;
    }

    v38 = *(*v37 + 184);
    if (!v38)
    {
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
      goto LABEL_91;
    }

    v39 = (v38 + 32 * v26);
    v30 = *v39;
    v31 = *(v39 + 1);
    v24 = *(v39 + 1);
LABEL_45:
    v5 = v86;
  }

  else
  {
    v30 = 0;
    v31 = 0;
  }

  v96 = v87 & 1;
  *&v105 = v2 | (v5 << 32);
  *(&v105 + 1) = v87 & 1 | (v3 << 32);
  *&v106 = v30;
  *(&v106 + 1) = v31;
  *v107 = v24;
  v107[16] = 1;
  Interpreter.Iterator.init(_:kind:onEvent:)(v6, &v105, 0, 0, v90);
  if (!Interpreter.Iterator.read()())
  {
LABEL_91:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v105 = v91;
  v106 = v92;
  *v107 = *v93;
  *&v107[9] = *&v93[9];
  v43 = v91;
  v44 = *v93;
  v45 = v94;
  v46 = 8 * v94;
  v47 = *&v93[16];
  if (v94 >= *&v93[12])
  {
    goto LABEL_49;
  }

  while (1)
  {
    v48 = (v44 + v46);
    if ((v48[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_49:
      if (!v47)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v94, 0, &v105);
      }

      v43 = *v47;
      v44 = v47[4];
      v49 = *(v47 + 11);
      v47 = v47[6];
    }

    while (v94 >= v49);
  }

  if (!v43)
  {
    goto LABEL_87;
  }

  v50 = (v43 + 24 * *v48);
  v51 = *v50;
  v52 = *(*v50 + 96);
  if (v52 == 2)
  {
    goto LABEL_82;
  }

  v53 = *(v51 + 104);
  v54 = *(v51 + 88);
  v100[2] = *(v51 + 72);
  v101 = v54;
  v102 = v52 & 0x101;
  v103 = HIDWORD(v52);
  v104 = v53 & 1;
  v55 = Interpreter.Iterator.AttachmentBuffer.buffer.getter();
  if (v57)
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v58 = v55;
  v59 = (v95 + 40);
  v60 = *(v95 + 56);
  v99[0] = *(v95 + 40);
  v99[1] = v60;
  v100[0] = *(v95 + 72);
  *(v100 + 9) = *(v95 + 81);
  v61 = (v95 + 72);
  v62 = (v95 + 84);
  v63 = (v95 + 88);
  while (1)
  {
    v64 = *v63;
    if (v45 < *v62)
    {
      v65 = (*v61 + v46);
      if ((v65[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v64)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v45, 0, v99);
    }

    v61 = (v64 + 32);
    v62 = (v64 + 44);
    v63 = (v64 + 48);
    v59 = v64;
  }

  v66 = *v59;
  if (!v66)
  {
    goto LABEL_88;
  }

  v67 = (v66 + 24 * *v65);
  v68 = *v67;
  v69 = (*v67 + 120);
  v70 = *(*v67 + 136);
  v97[0] = *v69;
  v97[1] = v70;
  v98[0] = *(v68 + 152);
  *(v98 + 9) = *(v68 + 161);
  v71 = v68 + 152;
  v72 = (v68 + 164);
  v73 = (v68 + 168);
  while (1)
  {
    v74 = *v73;
    if (*v72 >= 2u && (*(*v71 + 12) & 1) == 0)
    {
      break;
    }

    if (!v74)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1, 0, v97);
    }

    v71 = v74 + 32;
    v72 = (v74 + 44);
    v73 = (v74 + 48);
    v69 = v74;
  }

  if (!*v69)
  {
    goto LABEL_89;
  }

  v75 = _s21SwiftUITracingSupport16BufferAttachmentV7pointer8fileSizeACyxGSW_SitcfCAA7AddressV_Tt1g5Tf4nd_n(v58, v56);
  v77 = v76;
  v79 = v78;
  specialized EvolutionTable.deallocate()();
  v88 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 0, 0);
  result = v88;
  if (v77)
  {
    for (i = 0; (i * v79) >> 64 == (i * v79) >> 63; ++i)
    {
      v81 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_79;
      }

      v82 = *(v75 + i * v79);
      v89 = result;
      v84 = *(result + 16);
      v83 = *(result + 24);
      if (v84 >= v83 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v83 > 1), v84 + 1, 1);
        result = v89;
      }

      *(result + 16) = v84 + 1;
      *(result + 8 * v84 + 32) = v82;
      if (v81 >= v77)
      {
        return result;
      }
    }

    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  return result;
}

uint64_t Event.threadId(within:)()
{
  if (*(v0 + 88) == -1)
  {
    return 0;
  }

  else
  {
    return *(v0 + 88);
  }
}

uint64_t Event.relatives.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 112) = result;
  *(v2 + 120) = a2;
  return result;
}

unint64_t Event.relative(forward:)(unint64_t result)
{
  v2 = *(v1 + 112);
  v3 = *(v1 + 124);
  v4 = 1;
  if (result)
  {
    v5 = *(v1 + 112);
    while (v3 + v4 != 1)
    {
      if (!v2)
      {
        __break(1u);
        goto LABEL_15;
      }

      v6 = *v5;
      v5 += 4;
      --v4;
      if ((v6 & 0x4100) == 0x100)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
    v7 = *(v1 + 112);
    while (v3 + v4 != 1)
    {
      if (!v2)
      {
LABEL_15:
        __break(1u);
        return result;
      }

      v8 = *v7;
      v7 += 4;
      --v4;
      if ((v8 & 0x8100) == 0x100)
      {
LABEL_11:
        v9 = 0;
        v10 = *(v2 - 8 * v4 + 4);
        return v10 | (v9 << 32);
      }
    }
  }

  v10 = 0;
  v9 = 1;
  return v10 | (v9 << 32);
}

uint64_t Event.relate(_:_:swapping:)(uint64_t result, int a2, int a3)
{
  v5 = result;
  if ((a3 & 0x10000) != 0)
  {
    v6 = *(v3 + 124);
  }

  else
  {
    v6 = *(v3 + 124);
    if (v6)
    {
      v7 = *(v3 + 112);
      v8 = (v7 + 4);
      v9 = *(v3 + 124);
      while (v7)
      {
        if (*v8 == a2)
        {
          v13 = *(v8 - 2);
          if (((a3 & 0xC000) == 0 || (v13 & (a3 & 0xC000 ^ 0xC000)) == 0) && ((a3 & 0x2000) == 0 || (v13 & 0x2000) != 0))
          {
            if ((a3 & 0x1FFF) != 0)
            {
              if ((a3 & 0x1FFF & v13) != 0)
              {
LABEL_20:
                *(v8 - 2) = result;
                *v8 = a2;
                return result;
              }
            }

            else if (a3)
            {
              goto LABEL_20;
            }
          }
        }

        v8 += 2;
        if (!--v9)
        {
          goto LABEL_5;
        }
      }

      goto LABEL_22;
    }
  }

LABEL_5:
  if (v6 == *(v3 + 120))
  {
    result = specialized UnsafeArray.growToCapacity(_:)();
  }

  v10 = *(v3 + 112);
  if (!v10)
  {
    goto LABEL_23;
  }

  v11 = *(v3 + 124);
  v12 = v10 + 8 * v11;
  *v12 = v5;
  *(v12 + 4) = a2;
  if (v11 != -1)
  {
    *(v3 + 124) = v11 + 1;
    return result;
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

double Event.init<A, B>(ref:_:_:updateSeed:backtrace:discreet:executionContext:)@<D0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, unint64_t a5@<X4>, unint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, _OWORD *a9@<X8>, char a10, uint64_t a11, uint64_t a12)
{
  v12 = a6;
  v13 = a5;
  v23 = HIDWORD(a6);
  v18 = HIDWORD(a5);
  *(&v25 + 1) = 0;
  *&v26 = 0;
  WORD4(v26) = 257;
  HIDWORD(v26) = 0;
  LODWORD(v27) = 0;
  *(&v27 + 1) = 0;
  LOWORD(v28) = 0;
  *(&v28 + 1) = -1;
  *&v30[8] = xmmword_26C32E070;
  *&v30[24] = 0;
  *&v31 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA5EventV8RelativeV_SayAJGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(&v31 + 1) = v19;
  LODWORD(v25) = a1;
  HeterogeneousBuffer.insert<A>(_:)(a2, a11);
  HeterogeneousBuffer.insert<A>(_:)(a3, a12);
  (*(*(a12 - 8) + 8))(a3, a12);
  (*(*(a11 - 8) + 8))(a2, a11);
  DWORD1(v27) = a4;
  DWORD1(v29) = v13;
  DWORD2(v29) = v18;
  *v30 = v23;
  LOBYTE(v29) = a7;
  if ((a10 & 1) == 0)
  {
    *&v30[8] = a8;
  }

  BYTE12(v29) = v12 & 1;
  a9[4] = v29;
  a9[5] = *v30;
  a9[6] = *&v30[16];
  a9[7] = v31;
  *a9 = v25;
  a9[1] = v26;
  result = *&v27;
  a9[2] = v27;
  a9[3] = v28;
  return result;
}

uint64_t specialized HeterogeneousBuffer.insert<A>(_:)(__int16 a1, uint64_t a2)
{
  if (*(v2 + 16))
  {
    v5 = 0;
    goto LABEL_8;
  }

  v6 = *v2;
  v7 = *(v2 + 8);
  v8 = *(v2 + 20);
  v5 = v7 - *v2;
  if (!*v2)
  {
    v5 = 0;
  }

  if (__OFSUB__(v5, v8))
  {
    goto LABEL_35;
  }

  if (v5 - v8 > 23)
  {
    v11 = 0;
    goto LABEL_13;
  }

  if (v5 + 0x4000000000000000 >= 0)
  {
LABEL_8:
    v9 = 2 * v5;
    if (v9 <= 64)
    {
      v10 = 64;
    }

    else
    {
      v10 = v9;
    }

    HeterogeneousBuffer.reserveCapacity(bytes:)(v10);
    v6 = *v2;
    v7 = *(v2 + 8);
    v11 = *(v2 + 16);
    v8 = *(v2 + 20);
LABEL_13:
    v12 = *(v2 + 24);
    result = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV20GraphRootValueUpdateV_Ttg5Tm(v6, v7, v11, v12);
    if (v8 != result || v12 != HIDWORD(result))
    {
      goto LABEL_38;
    }

    if (v11)
    {
      goto LABEL_36;
    }

    if (v6)
    {
      v15 = v7 - v6;
    }

    else
    {
      v15 = 0;
    }

    if (v15 < v8)
    {
      __break(1u);
    }

    else
    {
      v16 = (v6 + v8);
      if (!v6)
      {
        v16 = 0;
      }

      *v16 = &type metadata for Event.GraphRootValueUpdate;
      if (!v6)
      {
        goto LABEL_37;
      }

      if (v7 - v6 >= v8 + 8)
      {
        v17 = v6 + v8 + 8;
        *v17 = a1;
        *(v17 + 8) = a2;
        if (v8 <= 0xFFFFFFE7)
        {
          if (v12 != -1)
          {
            *(v2 + 20) = v8 + 24;
            *(v2 + 24) = v12 + 1;
            return result;
          }

          goto LABEL_33;
        }

LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }
    }

    __break(1u);
    goto LABEL_32;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  _StringGuts.grow(_:)(19);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport5EventV20GraphRootValueUpdateVmMd, &_s21SwiftUITracingSupport5EventV20GraphRootValueUpdateVmMR);
  v18 = String.init<A>(describing:)();
  MEMORY[0x26D69CDB0](v18);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized HeterogeneousBuffer.insert<A>(_:)(uint64_t a1)
{
  if (*(v1 + 16))
  {
    v3 = 0;
    goto LABEL_8;
  }

  v4 = *v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 20);
  v3 = v5 - *v1;
  if (!*v1)
  {
    v3 = 0;
  }

  if (__OFSUB__(v3, v6))
  {
    goto LABEL_35;
  }

  if (v3 - v6 > 15)
  {
    v9 = 0;
    goto LABEL_13;
  }

  if (v3 + 0x4000000000000000 >= 0)
  {
LABEL_8:
    v7 = 2 * v3;
    if (v7 <= 64)
    {
      v8 = 64;
    }

    else
    {
      v8 = v7;
    }

    HeterogeneousBuffer.reserveCapacity(bytes:)(v8);
    v4 = *v1;
    v5 = *(v1 + 8);
    v9 = *(v1 + 16);
    v6 = *(v1 + 20);
LABEL_13:
    v10 = *(v1 + 24);
    result = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV12InvalidationV_Ttgq5Tm(v4, v5, v9, v10);
    if (v6 != result || v10 != HIDWORD(result))
    {
      goto LABEL_38;
    }

    if (v9)
    {
      goto LABEL_36;
    }

    if (v4)
    {
      v13 = v5 - v4;
    }

    else
    {
      v13 = 0;
    }

    if (v13 < v6)
    {
      __break(1u);
    }

    else
    {
      v14 = (v4 + v6);
      if (!v4)
      {
        v14 = 0;
      }

      *v14 = &type metadata for Event.Invalidation;
      if (!v4)
      {
        goto LABEL_37;
      }

      if (v5 - v4 >= v6 + 8)
      {
        *(v4 + v6 + 8) = a1;
        if (v6 <= 0xFFFFFFEF)
        {
          if (v10 != -1)
          {
            *(v1 + 20) = v6 + 16;
            *(v1 + 24) = v10 + 1;
            return result;
          }

          goto LABEL_33;
        }

LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }
    }

    __break(1u);
    goto LABEL_32;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  _StringGuts.grow(_:)(19);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport5EventV12InvalidationVmMd, &_s21SwiftUITracingSupport5EventV12InvalidationVmMR);
  v15 = String.init<A>(describing:)();
  MEMORY[0x26D69CDB0](v15);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  *(v1 + 17) = 0;
  if (*(v1 + 16))
  {
    v3 = 112;
LABEL_13:
    HeterogeneousBuffer.reserveCapacity(bytes:)(v3);
    v4 = *v1;
    v5 = *(v1 + 8);
    v9 = *(v1 + 16);
    v6 = *(v1 + 20);
    goto LABEL_15;
  }

  v4 = *v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 20);
  v7 = v5 - *v1;
  if (!*v1)
  {
    v7 = 0;
  }

  if (__OFSUB__(v7, v6))
  {
    goto LABEL_37;
  }

  if (v7 - v6 > 55)
  {
    v9 = 0;
LABEL_15:
    v10 = *(v1 + 24);
    v11 = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV11TransactionV_Ttgq5Tm(v4, v5, v9, v10);
    if (v6 != v11 || v10 != HIDWORD(v11))
    {
      goto LABEL_40;
    }

    if (v9)
    {
      goto LABEL_38;
    }

    if (v4)
    {
      v13 = v5 - v4;
    }

    else
    {
      v13 = 0;
    }

    if (v13 < v6)
    {
      __break(1u);
    }

    else
    {
      v14 = (v4 + v6);
      if (!v4)
      {
        v14 = 0;
      }

      *v14 = &type metadata for Event.Transaction;
      if (!v4)
      {
        goto LABEL_39;
      }

      if (v5 - v4 >= v6 + 8)
      {
        result = outlined init with copy of Event.Transaction(a1, v4 + v6 + 8);
        if (v6 <= 0xFFFFFFC7)
        {
          if (v10 != -1)
          {
            *(v1 + 20) = v6 + 56;
            *(v1 + 24) = v10 + 1;
            return result;
          }

          goto LABEL_35;
        }

LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }
    }

    __break(1u);
    goto LABEL_34;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v8 = 2 * v7;
    if (2 * v7 <= 112)
    {
      v8 = 112;
    }

    if (v7 <= 32)
    {
      v3 = 112;
    }

    else
    {
      v3 = v8;
    }

    goto LABEL_13;
  }

LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  _StringGuts.grow(_:)(19);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport5EventV11TransactionVmMd, &_s21SwiftUITracingSupport5EventV11TransactionVmMR);
  v16 = String.init<A>(describing:)();
  MEMORY[0x26D69CDB0](v16);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  *(v1 + 17) = 0;
  if (*(v1 + 16))
  {
    v3 = 112;
LABEL_13:
    HeterogeneousBuffer.reserveCapacity(bytes:)(v3);
    v4 = *v1;
    v5 = *(v1 + 8);
    v9 = *(v1 + 16);
    v6 = *(v1 + 20);
    goto LABEL_15;
  }

  v4 = *v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 20);
  v7 = v5 - *v1;
  if (!*v1)
  {
    v7 = 0;
  }

  if (__OFSUB__(v7, v6))
  {
    goto LABEL_37;
  }

  if (v7 - v6 > 55)
  {
    v9 = 0;
LABEL_15:
    v10 = *(v1 + 24);
    v11 = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV6ActionV_Ttgq5Tm(v4, v5, v9, v10);
    if (v6 != v11 || v10 != HIDWORD(v11))
    {
      goto LABEL_40;
    }

    if (v9)
    {
      goto LABEL_38;
    }

    if (v4)
    {
      v13 = v5 - v4;
    }

    else
    {
      v13 = 0;
    }

    if (v13 < v6)
    {
      __break(1u);
    }

    else
    {
      v14 = (v4 + v6);
      if (!v4)
      {
        v14 = 0;
      }

      *v14 = &type metadata for Event.Action;
      if (!v4)
      {
        goto LABEL_39;
      }

      if (v5 - v4 >= v6 + 8)
      {
        result = outlined init with copy of Event.Action(a1, v4 + v6 + 8);
        if (v6 <= 0xFFFFFFC7)
        {
          if (v10 != -1)
          {
            *(v1 + 20) = v6 + 56;
            *(v1 + 24) = v10 + 1;
            return result;
          }

          goto LABEL_35;
        }

LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }
    }

    __break(1u);
    goto LABEL_34;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v8 = 2 * v7;
    if (2 * v7 <= 112)
    {
      v8 = 112;
    }

    if (v7 <= 32)
    {
      v3 = 112;
    }

    else
    {
      v3 = v8;
    }

    goto LABEL_13;
  }

LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  _StringGuts.grow(_:)(19);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport5EventV6ActionVmMd, &_s21SwiftUITracingSupport5EventV6ActionVmMR);
  v16 = String.init<A>(describing:)();
  MEMORY[0x26D69CDB0](v16);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  if (*(v1 + 16))
  {
    v3 = 128;
LABEL_13:
    HeterogeneousBuffer.reserveCapacity(bytes:)(v3);
    v4 = *v1;
    v5 = *(v1 + 8);
    v9 = *(v1 + 16);
    v6 = *(v1 + 20);
    goto LABEL_15;
  }

  v4 = *v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 20);
  v7 = v5 - *v1;
  if (!*v1)
  {
    v7 = 0;
  }

  if (__OFSUB__(v7, v6))
  {
    goto LABEL_37;
  }

  if (v7 - v6 > 63)
  {
    v9 = 0;
LABEL_15:
    v10 = *(v1 + 24);
    result = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV14AttributeValueV_Ttg5(v4, v5, v9, v10);
    if (v6 != result || v10 != HIDWORD(result))
    {
      goto LABEL_40;
    }

    if (v9)
    {
      goto LABEL_38;
    }

    if (v4)
    {
      v13 = v5 - v4;
    }

    else
    {
      v13 = 0;
    }

    if (v13 < v6)
    {
      __break(1u);
    }

    else
    {
      v14 = (v4 + v6);
      if (!v4)
      {
        v14 = 0;
      }

      *v14 = &type metadata for Event.AttributeValue;
      if (!v4)
      {
        goto LABEL_39;
      }

      if (v5 - v4 >= v6 + 8)
      {
        v15 = v4 + v6 + 8;
        v16 = *(a1 + 16);
        *v15 = *a1;
        *(v15 + 16) = v16;
        *(v15 + 32) = *(a1 + 32);
        *(v15 + 45) = *(a1 + 45);
        if (v6 <= 0xFFFFFFBF)
        {
          if (v10 != -1)
          {
            *(v1 + 20) = v6 + 64;
            *(v1 + 24) = v10 + 1;
            return result;
          }

          goto LABEL_35;
        }

LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }
    }

    __break(1u);
    goto LABEL_34;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v8 = 2 * v7;
    if (2 * v7 <= 128)
    {
      v8 = 128;
    }

    if (v7 <= 32)
    {
      v3 = 128;
    }

    else
    {
      v3 = v8;
    }

    goto LABEL_13;
  }

LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  _StringGuts.grow(_:)(19);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport5EventV14AttributeValueVmMd, &_s21SwiftUITracingSupport5EventV14AttributeValueVmMR);
  v17 = String.init<A>(describing:)();
  MEMORY[0x26D69CDB0](v17);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized HeterogeneousBuffer.insert<A>(_:)(uint64_t a1, uint64_t a2, char a3)
{
  if (*(v3 + 16))
  {
    v7 = 0;
    goto LABEL_8;
  }

  v8 = *v3;
  v9 = *(v3 + 8);
  v10 = *(v3 + 20);
  v7 = v9 - *v3;
  if (!*v3)
  {
    v7 = 0;
  }

  if (__OFSUB__(v7, v10))
  {
    goto LABEL_35;
  }

  if (v7 - v10 > 27)
  {
    v13 = 0;
    goto LABEL_13;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
LABEL_8:
    v11 = 2 * v7;
    if (v11 <= 64)
    {
      v12 = 64;
    }

    else
    {
      v12 = v11;
    }

    HeterogeneousBuffer.reserveCapacity(bytes:)(v12);
    v8 = *v3;
    v9 = *(v3 + 8);
    v13 = *(v3 + 16);
    v10 = *(v3 + 20);
LABEL_13:
    v14 = *(v3 + 24);
    result = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV17DynamicPropertiesV_Ttg5(v8, v9, v13, v14);
    if (v10 != result || v14 != HIDWORD(result))
    {
      goto LABEL_38;
    }

    if (v13)
    {
      goto LABEL_36;
    }

    if (v8)
    {
      v17 = v9 - v8;
    }

    else
    {
      v17 = 0;
    }

    if (v17 < v10)
    {
      __break(1u);
    }

    else
    {
      v18 = (v8 + v10);
      if (!v8)
      {
        v18 = 0;
      }

      *v18 = &type metadata for Event.DynamicProperties;
      if (!v8)
      {
        goto LABEL_37;
      }

      if (v9 - v8 >= v10 + 8)
      {
        v19 = v8 + v10 + 8;
        *v19 = a1;
        *(v19 + 8) = a2 & 1;
        *(v19 + 12) = HIDWORD(a2);
        *(v19 + 16) = a3;
        if (v10 <= 0xFFFFFFE3)
        {
          if (v14 != -1)
          {
            *(v3 + 20) = v10 + 28;
            *(v3 + 24) = v14 + 1;
            return result;
          }

          goto LABEL_33;
        }

LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }
    }

    __break(1u);
    goto LABEL_32;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  _StringGuts.grow(_:)(19);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport5EventV17DynamicPropertiesVmMd, &_s21SwiftUITracingSupport5EventV17DynamicPropertiesVmMR);
  v20 = String.init<A>(describing:)();
  MEMORY[0x26D69CDB0](v20);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized HeterogeneousBuffer.insert<A>(_:)(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 16))
  {
    v5 = 0;
    goto LABEL_8;
  }

  v6 = *v2;
  v7 = *(v2 + 8);
  v8 = *(v2 + 20);
  v5 = v7 - *v2;
  if (!*v2)
  {
    v5 = 0;
  }

  if (__OFSUB__(v5, v8))
  {
    goto LABEL_35;
  }

  if (v5 - v8 > 23)
  {
    v11 = 0;
    goto LABEL_13;
  }

  if (v5 + 0x4000000000000000 >= 0)
  {
LABEL_8:
    v9 = 2 * v5;
    if (v9 <= 64)
    {
      v10 = 64;
    }

    else
    {
      v10 = v9;
    }

    HeterogeneousBuffer.reserveCapacity(bytes:)(v10);
    v6 = *v2;
    v7 = *(v2 + 8);
    v11 = *(v2 + 16);
    v8 = *(v2 + 20);
LABEL_13:
    v12 = *(v2 + 24);
    result = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV6UpdateV_Ttgq5Tm(v6, v7, v11, v12);
    if (v8 != result || v12 != HIDWORD(result))
    {
      goto LABEL_38;
    }

    if (v11)
    {
      goto LABEL_36;
    }

    if (v6)
    {
      v15 = v7 - v6;
    }

    else
    {
      v15 = 0;
    }

    if (v15 < v8)
    {
      __break(1u);
    }

    else
    {
      v16 = (v6 + v8);
      if (!v6)
      {
        v16 = 0;
      }

      *v16 = &type metadata for Event.Update;
      if (!v6)
      {
        goto LABEL_37;
      }

      if (v7 - v6 >= v8 + 8)
      {
        v17 = (v6 + v8 + 8);
        *v17 = a1;
        v17[1] = a2;
        if (v8 <= 0xFFFFFFE7)
        {
          if (v12 != -1)
          {
            *(v2 + 20) = v8 + 24;
            *(v2 + 24) = v12 + 1;
            return result;
          }

          goto LABEL_33;
        }

LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }
    }

    __break(1u);
    goto LABEL_32;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  _StringGuts.grow(_:)(19);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport5EventV6UpdateVmMd, &_s21SwiftUITracingSupport5EventV6UpdateVmMR);
  v18 = String.init<A>(describing:)();
  MEMORY[0x26D69CDB0](v18);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  *(v2 + 17) = 0;
  if (*(v2 + 16))
  {
    v5 = 0;
  }

  else
  {
    v6 = *v2;
    v7 = *(v2 + 8);
    v8 = *(v2 + 20);
    v5 = v7 - *v2;
    if (!*v2)
    {
      v5 = 0;
    }

    if (__OFSUB__(v5, v8))
    {
      goto LABEL_37;
    }

    if (v5 - v8 > 23)
    {
      v11 = 0;
      goto LABEL_13;
    }

    if (v5 + 0x4000000000000000 < 0)
    {
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      _StringGuts.grow(_:)(19);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport5EventV10AllocationVmMd, &_s21SwiftUITracingSupport5EventV10AllocationVmMR);
      v19 = String.init<A>(describing:)();
      MEMORY[0x26D69CDB0](v19);

      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }
  }

  v9 = 2 * v5;
  if (v9 <= 64)
  {
    v10 = 64;
  }

  else
  {
    v10 = v9;
  }

  HeterogeneousBuffer.reserveCapacity(bytes:)(v10);
  v6 = *v2;
  v7 = *(v2 + 8);
  v11 = *(v2 + 16);
  v8 = *(v2 + 20);
LABEL_13:
  v12 = *(v2 + 24);
  v13 = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV10AllocationV_Ttg5(v6, v7, v11, v12);
  if (v8 != v13 || v12 != HIDWORD(v13))
  {
    goto LABEL_40;
  }

  if (v11)
  {
    goto LABEL_38;
  }

  if (v6)
  {
    v15 = v7 - v6;
  }

  else
  {
    v15 = 0;
  }

  if (v15 < v8)
  {
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v16 = (v6 + v8);
  if (!v6)
  {
    v16 = 0;
  }

  *v16 = &type metadata for Event.Allocation;
  if (!v6)
  {
    goto LABEL_39;
  }

  if (v7 - v6 < v8 + 8)
  {
    goto LABEL_33;
  }

  v17 = (v6 + v8 + 8);
  *v17 = a1;
  v17[1] = a2;
  if (v8 > 0xFFFFFFE7)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v12 == -1)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  *(v2 + 20) = v8 + 24;
  *(v2 + 24) = v12 + 1;
}

uint64_t specialized HeterogeneousBuffer.insert<A>(_:)(_OWORD *a1)
{
  if (*(v1 + 16))
  {
    v3 = 112;
LABEL_13:
    HeterogeneousBuffer.reserveCapacity(bytes:)(v3);
    v4 = *v1;
    v5 = *(v1 + 8);
    v9 = *(v1 + 16);
    v6 = *(v1 + 20);
    goto LABEL_15;
  }

  v4 = *v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 20);
  v7 = v5 - *v1;
  if (!*v1)
  {
    v7 = 0;
  }

  if (__OFSUB__(v7, v6))
  {
    goto LABEL_37;
  }

  if (v7 - v6 > 55)
  {
    v9 = 0;
LABEL_15:
    v10 = *(v1 + 24);
    result = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV9AnimationV_Ttg5Tm(v4, v5, v9, v10);
    if (v6 != result || v10 != HIDWORD(result))
    {
      goto LABEL_40;
    }

    if (v9)
    {
      goto LABEL_38;
    }

    if (v4)
    {
      v13 = v5 - v4;
    }

    else
    {
      v13 = 0;
    }

    if (v13 < v6)
    {
      __break(1u);
    }

    else
    {
      v14 = (v4 + v6);
      if (!v4)
      {
        v14 = 0;
      }

      *v14 = &type metadata for Event.Animation;
      if (!v4)
      {
        goto LABEL_39;
      }

      if (v5 - v4 >= v6 + 8)
      {
        v15 = (v4 + v6 + 8);
        v16 = a1[1];
        *v15 = *a1;
        v15[1] = v16;
        v15[2] = a1[2];
        if (v6 <= 0xFFFFFFC7)
        {
          if (v10 != -1)
          {
            *(v1 + 20) = v6 + 56;
            *(v1 + 24) = v10 + 1;
            return result;
          }

          goto LABEL_35;
        }

LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }
    }

    __break(1u);
    goto LABEL_34;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v8 = 2 * v7;
    if (2 * v7 <= 112)
    {
      v8 = 112;
    }

    if (v7 <= 32)
    {
      v3 = 112;
    }

    else
    {
      v3 = v8;
    }

    goto LABEL_13;
  }

LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  _StringGuts.grow(_:)(19);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport5EventV9AnimationVmMd, &_s21SwiftUITracingSupport5EventV9AnimationVmMR);
  v17 = String.init<A>(describing:)();
  MEMORY[0x26D69CDB0](v17);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized HeterogeneousBuffer.insert<A>(_:)(int a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (*(v5 + 16))
  {
    v10 = 0;
    goto LABEL_8;
  }

  v11 = *v5;
  v12 = *(v5 + 8);
  v13 = *(v5 + 20);
  v10 = v12 - *v5;
  if (!*v5)
  {
    v10 = 0;
  }

  if (__OFSUB__(v10, v13))
  {
    goto LABEL_37;
  }

  if (v10 - v13 > 15)
  {
    v6 = a4;
    v16 = 0;
    goto LABEL_13;
  }

  if (v10 + 0x4000000000000000 >= 0)
  {
LABEL_8:
    v6 = a4;
    v14 = 2 * v10;
    if (v14 <= 64)
    {
      v15 = 64;
    }

    else
    {
      v15 = v14;
    }

    HeterogeneousBuffer.reserveCapacity(bytes:)(v15);
    v11 = *v5;
    v12 = *(v5 + 8);
    v16 = *(v5 + 16);
    v13 = *(v5 + 20);
LABEL_13:
    v17 = *(v5 + 24);
    v18 = 256;
    if (!*(v5 + 17))
    {
      v18 = 0;
    }

    result = a2(v11, v12, v18 | (v13 << 32) | v16, v17);
    if (v13 != result || v17 != HIDWORD(result))
    {
      goto LABEL_40;
    }

    if (v16)
    {
      goto LABEL_38;
    }

    if (v11)
    {
      v21 = v12 - v11;
    }

    else
    {
      v21 = 0;
    }

    if (v21 < v13)
    {
      __break(1u);
    }

    else
    {
      v22 = (v11 + v13);
      if (!v11)
      {
        v22 = 0;
      }

      *v22 = a3;
      if (!v11)
      {
        goto LABEL_39;
      }

      if (v12 - v11 >= v13 + 8)
      {
        *(v11 + v13 + 8) = a1;
        if (v13 <= 0xFFFFFFEF)
        {
          if (v17 != -1)
          {
            *(v5 + 20) = v13 + 16;
            *(v5 + 24) = v17 + 1;
            return result;
          }

          goto LABEL_35;
        }

LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }
    }

    __break(1u);
    goto LABEL_34;
  }

LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  _StringGuts.grow(_:)(19);

  __swift_instantiateConcreteTypeFromMangledNameV2(v6, a5);
  v23 = String.init<A>(describing:)();
  MEMORY[0x26D69CDB0](v23);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized HeterogeneousBuffer.insert<A>(_:)()
{
  if (*(v0 + 16))
  {
    v1 = 0;
    goto LABEL_8;
  }

  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = *(v0 + 20);
  v1 = v3 - *v0;
  if (!*v0)
  {
    v1 = 0;
  }

  if (__OFSUB__(v1, v4))
  {
    goto LABEL_35;
  }

  if (v1 - v4 > 15)
  {
    v7 = 0;
    goto LABEL_13;
  }

  if (v1 + 0x4000000000000000 >= 0)
  {
LABEL_8:
    v5 = 2 * v1;
    if (v5 <= 64)
    {
      v6 = 64;
    }

    else
    {
      v6 = v5;
    }

    HeterogeneousBuffer.reserveCapacity(bytes:)(v6);
    v2 = *v0;
    v3 = *(v0 + 8);
    v7 = *(v0 + 16);
    v4 = *(v0 + 20);
LABEL_13:
    v8 = *(v0 + 24);
    result = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV9IgnorableV_Ttg5Tm(v2, v3, v7, v8);
    if (v4 != result || v8 != HIDWORD(result))
    {
      goto LABEL_38;
    }

    if (v7)
    {
      goto LABEL_36;
    }

    if (v2)
    {
      v11 = v3 - v2;
    }

    else
    {
      v11 = 0;
    }

    if (v11 < v4)
    {
      __break(1u);
    }

    else
    {
      v12 = (v2 + v4);
      if (!v2)
      {
        v12 = 0;
      }

      *v12 = &type metadata for Event.Ignorable;
      if (!v2)
      {
        goto LABEL_37;
      }

      if (v3 - v2 >= v4 + 8)
      {
        if (v4 <= 0xFFFFFFEF)
        {
          if (v8 != -1)
          {
            *(v0 + 20) = v4 + 16;
            *(v0 + 24) = v8 + 1;
            return result;
          }

          goto LABEL_33;
        }

LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }
    }

    __break(1u);
    goto LABEL_32;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  _StringGuts.grow(_:)(19);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport5EventV9IgnorableVmMd, &_s21SwiftUITracingSupport5EventV9IgnorableVmMR);
  v13 = String.init<A>(describing:)();
  MEMORY[0x26D69CDB0](v13);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  if (*(v0 + 16))
  {
    v1 = 0;
    goto LABEL_8;
  }

  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = *(v0 + 20);
  v1 = v3 - *v0;
  if (!*v0)
  {
    v1 = 0;
  }

  if (__OFSUB__(v1, v4))
  {
    goto LABEL_35;
  }

  if (v1 - v4 > 15)
  {
    v7 = 0;
    goto LABEL_13;
  }

  if (v1 + 0x4000000000000000 >= 0)
  {
LABEL_8:
    v5 = 2 * v1;
    if (v5 <= 64)
    {
      v6 = 64;
    }

    else
    {
      v6 = v5;
    }

    HeterogeneousBuffer.reserveCapacity(bytes:)(v6);
    v2 = *v0;
    v3 = *(v0 + 8);
    v7 = *(v0 + 16);
    v4 = *(v0 + 20);
LABEL_13:
    v8 = *(v0 + 24);
    result = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA07TestingC0O19TestEventWBacktraceV_Ttg5(v2, v3, v7, v8);
    if (v4 != result || v8 != HIDWORD(result))
    {
      goto LABEL_38;
    }

    if (v7)
    {
      goto LABEL_36;
    }

    if (v2)
    {
      v11 = v3 - v2;
    }

    else
    {
      v11 = 0;
    }

    if (v11 < v4)
    {
      __break(1u);
    }

    else
    {
      v12 = (v2 + v4);
      if (!v2)
      {
        v12 = 0;
      }

      *v12 = &type metadata for TestingSupport.TestEventWBacktrace;
      if (!v2)
      {
        goto LABEL_37;
      }

      if (v3 - v2 >= v4 + 8)
      {
        if (v4 <= 0xFFFFFFEF)
        {
          if (v8 != -1)
          {
            *(v0 + 20) = v4 + 16;
            *(v0 + 24) = v8 + 1;
            return result;
          }

          goto LABEL_33;
        }

LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }
    }

    __break(1u);
    goto LABEL_32;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  _StringGuts.grow(_:)(19);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport07TestingC0O19TestEventWBacktraceVmMd, &_s21SwiftUITracingSupport07TestingC0O19TestEventWBacktraceVmMR);
  v13 = String.init<A>(describing:)();
  MEMORY[0x26D69CDB0](v13);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized HeterogeneousBuffer.insert<A>(_:)(char a1, double a2)
{
  if (*(v2 + 16))
  {
    v5 = 0;
    goto LABEL_8;
  }

  v6 = *v2;
  v7 = *(v2 + 8);
  v8 = *(v2 + 20);
  v5 = v7 - *v2;
  if (!*v2)
  {
    v5 = 0;
  }

  if (__OFSUB__(v5, v8))
  {
    goto LABEL_35;
  }

  if (v5 - v8 > 23)
  {
    v11 = 0;
    goto LABEL_13;
  }

  if (v5 + 0x4000000000000000 >= 0)
  {
LABEL_8:
    v9 = 2 * v5;
    if (v9 <= 64)
    {
      v10 = 64;
    }

    else
    {
      v10 = v9;
    }

    HeterogeneousBuffer.reserveCapacity(bytes:)(v10);
    v6 = *v2;
    v7 = *(v2 + 8);
    v11 = *(v2 + 16);
    v8 = *(v2 + 20);
LABEL_13:
    v12 = *(v2 + 24);
    result = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV10RenderTickV_Ttg5Tm(v6, v7, v11, v12);
    if (v8 != result || v12 != HIDWORD(result))
    {
      goto LABEL_38;
    }

    if (v11)
    {
      goto LABEL_36;
    }

    if (v6)
    {
      v15 = v7 - v6;
    }

    else
    {
      v15 = 0;
    }

    if (v15 < v8)
    {
      __break(1u);
    }

    else
    {
      v16 = (v6 + v8);
      if (!v6)
      {
        v16 = 0;
      }

      *v16 = &type metadata for Event.RenderTick;
      if (!v6)
      {
        goto LABEL_37;
      }

      if (v7 - v6 >= v8 + 8)
      {
        v17 = v6 + v8 + 8;
        *v17 = a1 & 1;
        *(v17 + 8) = a2;
        if (v8 <= 0xFFFFFFE7)
        {
          if (v12 != -1)
          {
            *(v2 + 20) = v8 + 24;
            *(v2 + 24) = v12 + 1;
            return result;
          }

          goto LABEL_33;
        }

LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }
    }

    __break(1u);
    goto LABEL_32;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  _StringGuts.grow(_:)(19);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport5EventV10RenderTickVmMd, &_s21SwiftUITracingSupport5EventV10RenderTickVmMR);
  v18 = String.init<A>(describing:)();
  MEMORY[0x26D69CDB0](v18);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized HeterogeneousBuffer.insert<A>(_:)(uint64_t a1, __int16 a2)
{
  if (*(v2 + 16))
  {
    v5 = 0;
    goto LABEL_8;
  }

  v6 = *v2;
  v7 = *(v2 + 8);
  v8 = *(v2 + 20);
  v5 = v7 - *v2;
  if (!*v2)
  {
    v5 = 0;
  }

  if (__OFSUB__(v5, v8))
  {
    goto LABEL_35;
  }

  if (v5 - v8 > 23)
  {
    v11 = 0;
    goto LABEL_13;
  }

  if (v5 + 0x4000000000000000 >= 0)
  {
LABEL_8:
    v9 = 2 * v5;
    if (v9 <= 64)
    {
      v10 = 64;
    }

    else
    {
      v10 = v9;
    }

    HeterogeneousBuffer.reserveCapacity(bytes:)(v10);
    v6 = *v2;
    v7 = *(v2 + 8);
    v11 = *(v2 + 16);
    v8 = *(v2 + 20);
LABEL_13:
    v12 = *(v2 + 24);
    result = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV8PrefetchV_Ttgq5Tm(v6, v7, v11, v12);
    if (v8 != result || v12 != HIDWORD(result))
    {
      goto LABEL_38;
    }

    if (v11)
    {
      goto LABEL_36;
    }

    if (v6)
    {
      v15 = v7 - v6;
    }

    else
    {
      v15 = 0;
    }

    if (v15 < v8)
    {
      __break(1u);
    }

    else
    {
      v16 = (v6 + v8);
      if (!v6)
      {
        v16 = 0;
      }

      *v16 = &type metadata for Event.Prefetch;
      if (!v6)
      {
        goto LABEL_37;
      }

      if (v7 - v6 >= v8 + 8)
      {
        v17 = v6 + v8 + 8;
        *v17 = a1;
        *(v17 + 8) = a2 & 1;
        *(v17 + 9) = HIBYTE(a2) & 1;
        if (v8 <= 0xFFFFFFE7)
        {
          if (v12 != -1)
          {
            *(v2 + 20) = v8 + 24;
            *(v2 + 24) = v12 + 1;
            return result;
          }

          goto LABEL_33;
        }

LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }
    }

    __break(1u);
    goto LABEL_32;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  _StringGuts.grow(_:)(19);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport5EventV8PrefetchVmMd, &_s21SwiftUITracingSupport5EventV8PrefetchVmMR);
  v18 = String.init<A>(describing:)();
  MEMORY[0x26D69CDB0](v18);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized HeterogeneousBuffer.insert<A>(_:)(int a1)
{
  if (*(v1 + 16))
  {
    v3 = 0;
    goto LABEL_8;
  }

  v4 = *v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 20);
  v3 = v5 - *v1;
  if (!*v1)
  {
    v3 = 0;
  }

  if (__OFSUB__(v3, v6))
  {
    goto LABEL_35;
  }

  if (v3 - v6 > 15)
  {
    v9 = 0;
    goto LABEL_13;
  }

  if (v3 + 0x4000000000000000 >= 0)
  {
LABEL_8:
    v7 = 2 * v3;
    if (v7 <= 64)
    {
      v8 = 64;
    }

    else
    {
      v8 = v7;
    }

    HeterogeneousBuffer.reserveCapacity(bytes:)(v8);
    v4 = *v1;
    v5 = *(v1 + 8);
    v9 = *(v1 + 16);
    v6 = *(v1 + 20);
LABEL_13:
    v10 = *(v1 + 24);
    result = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v4, v5, v9, v10);
    if (v6 != result || v10 != HIDWORD(result))
    {
      goto LABEL_38;
    }

    if (v9)
    {
      goto LABEL_36;
    }

    if (v4)
    {
      v13 = v5 - v4;
    }

    else
    {
      v13 = 0;
    }

    if (v13 < v6)
    {
      __break(1u);
    }

    else
    {
      v14 = (v4 + v6);
      if (!v4)
      {
        v14 = 0;
      }

      *v14 = &type metadata for Event.AttributeStack;
      if (!v4)
      {
        goto LABEL_37;
      }

      if (v5 - v4 >= v6 + 8)
      {
        *(v4 + v6 + 8) = a1;
        if (v6 <= 0xFFFFFFEF)
        {
          if (v10 != -1)
          {
            *(v1 + 20) = v6 + 16;
            *(v1 + 24) = v10 + 1;
            return result;
          }

          goto LABEL_33;
        }

LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }
    }

    __break(1u);
    goto LABEL_32;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  _StringGuts.grow(_:)(19);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport5EventV14AttributeStackVmMd, &_s21SwiftUITracingSupport5EventV14AttributeStackVmMR);
  v15 = String.init<A>(describing:)();
  MEMORY[0x26D69CDB0](v15);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized HeterogeneousBuffer.insert<A>(_:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + 16))
  {
    v9 = 80;
LABEL_13:
    HeterogeneousBuffer.reserveCapacity(bytes:)(v9);
    v10 = *v4;
    v11 = *(v4 + 8);
    v15 = *(v4 + 16);
    v12 = *(v4 + 20);
    goto LABEL_15;
  }

  v10 = *v4;
  v11 = *(v4 + 8);
  v12 = *(v4 + 20);
  v13 = v11 - *v4;
  if (!*v4)
  {
    v13 = 0;
  }

  if (__OFSUB__(v13, v12))
  {
    goto LABEL_37;
  }

  if (v13 - v12 > 39)
  {
    v15 = 0;
LABEL_15:
    v16 = *(v4 + 24);
    result = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV8AbstractV_Ttg5(v10, v11, v15, v16);
    if (v12 != result || v16 != HIDWORD(result))
    {
      goto LABEL_40;
    }

    if (v15)
    {
      goto LABEL_38;
    }

    if (v10)
    {
      v19 = v11 - v10;
    }

    else
    {
      v19 = 0;
    }

    if (v19 < v12)
    {
      __break(1u);
    }

    else
    {
      v20 = (v10 + v12);
      if (!v10)
      {
        v20 = 0;
      }

      *v20 = &type metadata for Event.Abstract;
      if (!v10)
      {
        goto LABEL_39;
      }

      if (v11 - v10 >= v12 + 8)
      {
        v21 = v10 + v12 + 8;
        *v21 = a1;
        *(v21 + 8) = a2;
        *(v21 + 16) = a3;
        *(v21 + 24) = a4;
        if (v12 <= 0xFFFFFFD7)
        {
          if (v16 != -1)
          {
            *(v4 + 20) = v12 + 40;
            *(v4 + 24) = v16 + 1;
            return result;
          }

          goto LABEL_35;
        }

LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }
    }

    __break(1u);
    goto LABEL_34;
  }

  if (v13 + 0x4000000000000000 >= 0)
  {
    v14 = 2 * v13;
    if (2 * v13 <= 80)
    {
      v14 = 80;
    }

    if (v13 <= 32)
    {
      v9 = 80;
    }

    else
    {
      v9 = v14;
    }

    goto LABEL_13;
  }

LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  _StringGuts.grow(_:)(19);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport5EventV8AbstractVmMd, &_s21SwiftUITracingSupport5EventV8AbstractVmMR);
  v22 = String.init<A>(describing:)();
  MEMORY[0x26D69CDB0](v22);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized HeterogeneousBuffer.insert<A>(_:)(__int16 a1)
{
  if (*(v1 + 16))
  {
    v3 = 0;
    goto LABEL_8;
  }

  v4 = *v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 20);
  v3 = v5 - *v1;
  if (!*v1)
  {
    v3 = 0;
  }

  if (__OFSUB__(v3, v6))
  {
    goto LABEL_35;
  }

  if (v3 - v6 > 15)
  {
    v9 = 0;
    goto LABEL_13;
  }

  if (v3 + 0x4000000000000000 >= 0)
  {
LABEL_8:
    v7 = 2 * v3;
    if (v7 <= 64)
    {
      v8 = 64;
    }

    else
    {
      v8 = v7;
    }

    HeterogeneousBuffer.reserveCapacity(bytes:)(v8);
    v4 = *v1;
    v5 = *(v1 + 8);
    v9 = *(v1 + 16);
    v6 = *(v1 + 20);
LABEL_13:
    v10 = *(v1 + 24);
    result = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV5GroupV_Ttg5Tm(v4, v5, v9, v10);
    if (v6 != result || v10 != HIDWORD(result))
    {
      goto LABEL_38;
    }

    if (v9)
    {
      goto LABEL_36;
    }

    if (v4)
    {
      v13 = v5 - v4;
    }

    else
    {
      v13 = 0;
    }

    if (v13 < v6)
    {
      __break(1u);
    }

    else
    {
      v14 = (v4 + v6);
      if (!v4)
      {
        v14 = 0;
      }

      *v14 = &type metadata for Event.Group;
      if (!v4)
      {
        goto LABEL_37;
      }

      if (v5 - v4 >= v6 + 8)
      {
        *(v4 + v6 + 8) = a1;
        if (v6 <= 0xFFFFFFEF)
        {
          if (v10 != -1)
          {
            *(v1 + 20) = v6 + 16;
            *(v1 + 24) = v10 + 1;
            return result;
          }

          goto LABEL_33;
        }

LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }
    }

    __break(1u);
    goto LABEL_32;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  _StringGuts.grow(_:)(19);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport5EventV5GroupVmMd, &_s21SwiftUITracingSupport5EventV5GroupVmMR);
  v15 = String.init<A>(describing:)();
  MEMORY[0x26D69CDB0](v15);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

BOOL Event.has(verb:)(uint64_t a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 32);
  v10 = *(v1 + 24);
  v6 = 256;
  if (!*(v1 + 25))
  {
    v6 = 0;
  }

  v7 = v6 | (*(v1 + 28) << 32);
  v8 = HeterogeneousBuffer.index(after:)(0, v3, v4, v7 | v10, v5);
  return HeterogeneousBuffer.type(at:)(v8, v3, v4, v7 | v10, v5) == a1;
}

__n128 Event.value.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = 256;
  if (!*(v1 + 25))
  {
    v3 = 0;
  }

  v4 = specialized HeterogeneousBuffer.valuePointer<A>(for:)(0, *(v1 + 8), *(v1 + 16), v3 | (*(v1 + 28) << 32) | *(v1 + 24), *(v1 + 32));
  v5 = v4[1];
  *a1 = *v4;
  *(a1 + 16) = v5;
  result = v4[2];
  *(a1 + 32) = result;
  *(a1 + 45) = *(&v4[2].Description + 5);
  return result;
}

__n128 key path getter for Event.value : Event@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = 256;
  if (!*(a1 + 25))
  {
    v3 = 0;
  }

  v4 = specialized HeterogeneousBuffer.valuePointer<A>(for:)(0, *(a1 + 8), *(a1 + 16), v3 | (*(a1 + 28) << 32) | *(a1 + 24), *(a1 + 32));
  v5 = v4[1];
  *a2 = *v4;
  *(a2 + 16) = v5;
  result = v4[2];
  *(a2 + 32) = result;
  *(a2 + 45) = *(&v4[2].Description + 5);
  return result;
}

void (*Event.value.read(char **a1))(void **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x35uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = 256;
  if (!*(v1 + 25))
  {
    v5 = 0;
  }

  v6 = specialized HeterogeneousBuffer.valuePointer<A>(for:)(0, *(v1 + 8), *(v1 + 16), v5 | (*(v1 + 28) << 32) | *(v1 + 24), *(v1 + 32));
  v8 = v6[1];
  v7 = v6[2];
  v9 = *v6;
  *(v4 + 45) = *(&v6[2].Description + 5);
  *(v4 + 1) = v8;
  *(v4 + 2) = v7;
  *v4 = v9;
  return Snapshot.subscript.read;
}

__n128 key path setter for Event.value : Event(uint64_t a1, uint64_t a2)
{
  v3 = 256;
  if (!*(a2 + 25))
  {
    v3 = 0;
  }

  v4 = specialized HeterogeneousBuffer.valuePointer<A>(for:)(0, *(a2 + 8), *(a2 + 16), v3 | (*(a2 + 28) << 32) | *(a2 + 24), *(a2 + 32));
  v5 = *(a1 + 16);
  *v4 = *a1;
  v4[1] = v5;
  result = *(a1 + 32);
  v4[2] = result;
  *(&v4[2].Description + 5) = *(a1 + 45);
  return result;
}

void (*specialized HeterogeneousBuffer.subscript.read(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))()
{
  specialized HeterogeneousBuffer.valuePointer<A>(for:)(a2, a3, a4, a5 & 0xFFFFFFFF00000101, a6);
  return EventTreeStats.count.modify;
}

{
  specialized HeterogeneousBuffer.valuePointer<A>(for:)(a2, a3, a4, a5 & 0xFFFFFFFF00000101, a6);
  return EventTreeStats.count.modify;
}

{
  specialized HeterogeneousBuffer.valuePointer<A>(for:)(a2, a3, a4, a5 & 0xFFFFFFFF00000101, a6);
  return EventTreeStats.count.modify;
}

void (*specialized HeterogeneousBuffer.subscript.modify(uint64_t a1, unint64_t a2))()
{
  v3 = 256;
  if (!*(v2 + 17))
  {
    v3 = 0;
  }

  specialized HeterogeneousBuffer.valuePointer<A>(for:)(a2, *v2, *(v2 + 8), v3 | (*(v2 + 20) << 32) | *(v2 + 16), *(v2 + 24));
  return EventTreeStats.count.modify;
}

{
  v3 = 256;
  if (!*(v2 + 17))
  {
    v3 = 0;
  }

  specialized HeterogeneousBuffer.valuePointer<A>(for:)(a2, *v2, *(v2 + 8), v3 | (*(v2 + 20) << 32) | *(v2 + 16), *(v2 + 24));
  return EventTreeStats.count.modify;
}

{
  v3 = 256;
  if (!*(v2 + 17))
  {
    v3 = 0;
  }

  specialized HeterogeneousBuffer.valuePointer<A>(for:)(a2, *v2, *(v2 + 8), v3 | (*(v2 + 20) << 32) | *(v2 + 16), *(v2 + 24));
  return EventTreeStats.count.modify;
}

{
  v3 = 256;
  if (!*(v2 + 17))
  {
    v3 = 0;
  }

  specialized HeterogeneousBuffer.valuePointer<A>(for:)(a2, *v2, *(v2 + 8), v3 | (*(v2 + 20) << 32) | *(v2 + 16), *(v2 + 24));
  return EventTreeStats.count.modify;
}

{
  v3 = 256;
  if (!*(v2 + 17))
  {
    v3 = 0;
  }

  specialized HeterogeneousBuffer.valuePointer<A>(for:)(a2, *v2, *(v2 + 8), v3 | (*(v2 + 20) << 32) | *(v2 + 16), *(v2 + 24));
  return EventTreeStats.count.modify;
}

{
  v3 = 256;
  if (!*(v2 + 17))
  {
    v3 = 0;
  }

  specialized HeterogeneousBuffer.valuePointer<A>(for:)(a2, *v2, *(v2 + 8), v3 | (*(v2 + 20) << 32) | *(v2 + 16), *(v2 + 24));
  return EventTreeStats.count.modify;
}

{
  v3 = 256;
  if (!*(v2 + 17))
  {
    v3 = 0;
  }

  specialized HeterogeneousBuffer.valuePointer<A>(for:)(a2, *v2, *(v2 + 8), v3 | (*(v2 + 20) << 32) | *(v2 + 16), *(v2 + 24));
  return EventTreeStats.count.modify;
}

{
  v3 = 256;
  if (!*(v2 + 17))
  {
    v3 = 0;
  }

  specialized HeterogeneousBuffer.valuePointer<A>(for:)(a2, *v2, *(v2 + 8), v3 | (*(v2 + 20) << 32) | *(v2 + 16), *(v2 + 24));
  return EventTreeStats.count.modify;
}

{
  v3 = 256;
  if (!*(v2 + 17))
  {
    v3 = 0;
  }

  specialized HeterogeneousBuffer.valuePointer<A>(for:)(a2, *v2, *(v2 + 8), v3 | (*(v2 + 20) << 32) | *(v2 + 16), *(v2 + 24));
  return EventTreeStats.count.modify;
}

__n128 Event.value.setter(uint64_t a1)
{
  v3 = 256;
  if (!*(v1 + 25))
  {
    v3 = 0;
  }

  v4 = specialized HeterogeneousBuffer.valuePointer<A>(for:)(0, *(v1 + 8), *(v1 + 16), v3 | (*(v1 + 28) << 32) | *(v1 + 24), *(v1 + 32));
  v5 = *(a1 + 16);
  *v4 = *a1;
  v4[1] = v5;
  result = *(a1 + 32);
  v4[2] = result;
  *(&v4[2].Description + 5) = *(a1 + 45);
  return result;
}

ValueMetadata *Event.hasWeight.getter()
{
  v1 = 256;
  if (!*(v0 + 25))
  {
    v1 = 0;
  }

  result = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, *(v0 + 8), *(v0 + 16), v1 | (*(v0 + 28) << 32) | *(v0 + 24), *(v0 + 32));
  if (result)
  {
    return (BYTE4(result->Kind) << 32 != 0x200000000);
  }

  return result;
}

unint64_t Event.hasStack.getter()
{
  v2 = *(v0 + 8);
  v1 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 28);
  v4 = *(v0 + 32);
  result = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v2, v1, v3, v4);
  v7 = 0;
  v8 = v5 == result && v4 == HIDWORD(result);
  v9 = v8;
  if (v8)
  {
    return v7 | (v9 << 32);
  }

  if (HIDWORD(result) >= v4)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v2)
  {
    v7 = *(v2 + result + 8);
    return v7 | (v9 << 32);
  }

LABEL_15:
  __break(1u);
  return result;
}

ValueMetadata *key path getter for Event.stack : Event@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = 256;
  if (!*(a1 + 25))
  {
    v3 = 0;
  }

  result = specialized HeterogeneousBuffer.valuePointer<A>(for:)(0, *(a1 + 8), *(a1 + 16), v3 | (*(a1 + 28) << 32) | *(a1 + 24), *(a1 + 32));
  *a2 = result->Kind;
  return result;
}

void (*Event.stack.read())()
{
  v1 = 256;
  if (!*(v0 + 25))
  {
    v1 = 0;
  }

  specialized HeterogeneousBuffer.valuePointer<A>(for:)(0, *(v0 + 8), *(v0 + 16), v1 | (*(v0 + 28) << 32) | *(v0 + 24), *(v0 + 32));
  return EventTreeStats.count.modify;
}

uint64_t (*Event.stack.modify(uint64_t *a1))()
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
  *(v2 + 32) = specialized HeterogeneousBuffer.subscript.modify(v2, 0);
  return UnsafeTree.storage.modify;
}

uint64_t Event.stack.getter(uint64_t (*a1)(void, void, void, unint64_t, void))
{
  v2 = 256;
  if (!*(v1 + 25))
  {
    v2 = 0;
  }

  return *a1(0, *(v1 + 8), *(v1 + 16), v2 | (*(v1 + 28) << 32) | *(v1 + 24), *(v1 + 32));
}

ValueMetadata *key path getter for Event.graph : Event@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = 256;
  if (!*(a1 + 25))
  {
    v3 = 0;
  }

  result = specialized HeterogeneousBuffer.valuePointer<A>(for:)(0, *(a1 + 8), *(a1 + 16), v3 | (*(a1 + 28) << 32) | *(a1 + 24), *(a1 + 32));
  *a2 = result->Kind;
  return result;
}

void (*Event.graph.read())()
{
  v1 = 256;
  if (!*(v0 + 25))
  {
    v1 = 0;
  }

  specialized HeterogeneousBuffer.valuePointer<A>(for:)(0, *(v0 + 8), *(v0 + 16), v1 | (*(v0 + 28) << 32) | *(v0 + 24), *(v0 + 32));
  return EventTreeStats.count.modify;
}

_DWORD *key path setter for Event.stack : Event(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void, void, unint64_t, void))
{
  v5 = *a1;
  v6 = 256;
  if (!*(a2 + 25))
  {
    v6 = 0;
  }

  result = a5(0, *(a2 + 8), *(a2 + 16), v6 | (*(a2 + 28) << 32) | *(a2 + 24), *(a2 + 32));
  *result = v5;
  return result;
}

uint64_t (*Event.graph.modify(uint64_t *a1))()
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
  *(v2 + 32) = specialized HeterogeneousBuffer.subscript.modify(v2, 0);
  return UnsafeTree.storage.modify;
}

_DWORD *Event.stack.setter(int a1, uint64_t (*a2)(void, void, void, unint64_t, void))
{
  v4 = 256;
  if (!*(v2 + 25))
  {
    v4 = 0;
  }

  result = a2(0, *(v2 + 8), *(v2 + 16), v4 | (*(v2 + 28) << 32) | *(v2 + 24), *(v2 + 32));
  *result = a1;
  return result;
}

unint64_t Event.hasGraph.getter(uint64_t (*a1)(void, void, void, unint64_t, void))
{
  v2 = 256;
  if (!*(v1 + 25))
  {
    v2 = 0;
  }

  v3 = a1(0, *(v1 + 8), *(v1 + 16), v2 | (*(v1 + 28) << 32) | *(v1 + 24), *(v1 + 32));
  if (v3)
  {
    v4 = *v3;
  }

  else
  {
    v4 = 0;
  }

  return v4 | ((v3 == 0) << 32);
}

unint64_t Event.hasGroup.getter()
{
  v2 = *(v0 + 8);
  v1 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 28);
  v4 = *(v0 + 32);
  result = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV5GroupV_Ttg5Tm(v2, v1, v3, v4);
  v7 = v5 == result && v4 == HIDWORD(result);
  v8 = v7;
  if (v7)
  {
    v9 = 0;
    return v9 | (v8 << 16);
  }

  if (HIDWORD(result) >= v4)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v2)
  {
    v9 = *(v2 + result + 8);
    return v9 | (v8 << 16);
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t Event.abstract.getter()
{
  v1 = 256;
  if (!*(v0 + 25))
  {
    v1 = 0;
  }

  return LODWORD(specialized HeterogeneousBuffer.valuePointer<A>(for:)(0, *(v0 + 8), *(v0 + 16), v1 | (*(v0 + 28) << 32) | *(v0 + 24), *(v0 + 32))->Kind);
}

double key path getter for Event.abstract : Event@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = 256;
  if (!*(a1 + 25))
  {
    v3 = 0;
  }

  v4 = specialized HeterogeneousBuffer.valuePointer<A>(for:)(0, *(a1 + 8), *(a1 + 16), v3 | (*(a1 + 28) << 32) | *(a1 + 24), *(a1 + 32));
  *a2 = v4->Kind;
  *(a2 + 8) = *&v4->Description;
  result = *&v4[1].Description;
  *(a2 + 24) = result;
  return result;
}

void (*Event.abstract.read(uint64_t *a1))()
{
  v3 = 256;
  if (!*(v1 + 25))
  {
    v3 = 0;
  }

  v4 = specialized HeterogeneousBuffer.valuePointer<A>(for:)(0, *(v1 + 8), *(v1 + 16), v3 | (*(v1 + 28) << 32) | *(v1 + 24), *(v1 + 32));
  Description = v4[1].Description;
  *a1 = v4[1].Kind;
  a1[1] = Description;
  return EventTreeStats.count.modify;
}

double key path setter for Event.abstract : Event(int *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = 256;
  if (!*(a2 + 25))
  {
    v4 = 0;
  }

  v5 = specialized HeterogeneousBuffer.valuePointer<A>(for:)(0, *(a2 + 8), *(a2 + 16), v4 | (*(a2 + 28) << 32) | *(a2 + 24), *(a2 + 32));
  LODWORD(v5->Kind) = v3;
  *&v5->Description = *(a1 + 2);
  result = *(a1 + 3);
  *&v5[1].Description = result;
  return result;
}

uint64_t (*Event.abstract.modify(uint64_t *a1))()
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
  *(v2 + 32) = specialized HeterogeneousBuffer.subscript.modify(v2, 0);
  return UnsafeTree.storage.modify;
}

ValueMetadata *Event.abstract.setter(int a1, void *a2, uint64_t a3, unint64_t a4)
{
  v5 = a4;
  v9 = HIDWORD(a4);
  v10 = 256;
  if (!*(v4 + 25))
  {
    v10 = 0;
  }

  result = specialized HeterogeneousBuffer.valuePointer<A>(for:)(0, *(v4 + 8), *(v4 + 16), v10 | (*(v4 + 28) << 32) | *(v4 + 24), *(v4 + 32));
  LODWORD(result->Kind) = a1;
  result->Description = a2;
  result[1].Kind = a3;
  LODWORD(result[1].Description) = v5;
  HIDWORD(result[1].Description) = v9;
  return result;
}

ValueMetadata *Event.hasAbstract.getter()
{
  v1 = 256;
  if (!*(v0 + 25))
  {
    v1 = 0;
  }

  result = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, *(v0 + 8), *(v0 + 16), v1 | (*(v0 + 28) << 32) | *(v0 + 24), *(v0 + 32));
  if (result)
  {
    return LODWORD(result->Kind);
  }

  return result;
}

BOOL Event.hasIgnorable.getter()
{
  v2 = *(v0 + 8);
  v1 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 28);
  v4 = *(v0 + 32);
  v6 = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV9IgnorableV_Ttg5Tm(v2, v1, v3, v4);
  v7 = HIDWORD(v6);
  v8 = v5 == v6 && v4 == HIDWORD(v6);
  result = v8;
  if (!v8)
  {
    if (v7 >= v4)
    {
      __break(1u);
    }

    else if ((v3 & 1) == 0)
    {
      if (v2)
      {
        return result;
      }

LABEL_14:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_14;
  }

  return result;
}

unint64_t Event.hasPrefetch.getter()
{
  v2 = *(v0 + 8);
  v1 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 28);
  v4 = *(v0 + 32);
  result = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV8PrefetchV_Ttgq5Tm(v2, v1, v3, v4);
  if (v5 == result && v4 == HIDWORD(result))
  {
    return 0;
  }

  if (HIDWORD(result) >= v4)
  {
    __break(1u);
  }

  else if ((v3 & 1) == 0)
  {
    if (v2)
    {
      return *(v2 + result + 8);
    }

    goto LABEL_12;
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t Event.prefetch.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v4 = *(v0 + 32);
  v3 = *(v0 + 24);
  if (*(v0 + 25))
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5 | (*(v0 + 28) << 32);
  v7 = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV8PrefetchV_Ttgq5Tm(v1, v2, v5 | *(v0 + 24), v4);
  return specialized HeterogeneousBuffer.valuePointer<A>(for:)(v7, v1, v2, v6 | v3, v4)->Kind;
}

ValueMetadata *key path getter for Event.prefetch : Event@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *(a1 + 32);
  v5 = *(a1 + 24);
  v7 = 256;
  if (!*(a1 + 25))
  {
    v7 = 0;
  }

  v8 = v7 | (*(a1 + 28) << 32);
  v9 = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV8PrefetchV_Ttgq5Tm(v3, v4, v7 | *(a1 + 24), v6);
  result = specialized HeterogeneousBuffer.valuePointer<A>(for:)(v9, v3, v4, v8 | v5, v6);
  Description = result->Description;
  v12 = BYTE1(result->Description);
  *a2 = result->Kind;
  *(a2 + 8) = Description;
  *(a2 + 9) = v12;
  return result;
}

void (*Event.prefetch.read())()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v4 = *(v0 + 32);
  v3 = *(v0 + 24);
  if (*(v0 + 25))
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5 | (*(v0 + 28) << 32);
  v7 = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV8PrefetchV_Ttgq5Tm(v1, v2, v5 | *(v0 + 24), v4);
  specialized HeterogeneousBuffer.valuePointer<A>(for:)(v7, v1, v2, v6 | v3, v4);
  return EventTreeStats.count.modify;
}

ValueMetadata *key path setter for Event.prefetch : Event(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v8 = *(a2 + 32);
  v7 = *(a2 + 24);
  v9 = 256;
  if (!*(a2 + 25))
  {
    v9 = 0;
  }

  v10 = v9 | (*(a2 + 28) << 32);
  v11 = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV8PrefetchV_Ttgq5Tm(v5, v6, v9 | *(a2 + 24), v8);
  result = specialized HeterogeneousBuffer.valuePointer<A>(for:)(v11, v5, v6, v10 | v7, v8);
  result->Kind = v2;
  LOBYTE(result->Description) = v3;
  BYTE1(result->Description) = v4;
  return result;
}

uint64_t (*Event.prefetch.modify(uint64_t *a1))()
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
  *(v2 + 32) = specialized HeterogeneousBuffer.subscript.modify();
  return UnsafeTree.storage.modify;
}

void (*specialized HeterogeneousBuffer.subscript.modify())()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 24);
  v8 = *(v0 + 16);
  v4 = 256;
  if (!*(v0 + 17))
  {
    v4 = 0;
  }

  v5 = v4 | (*(v0 + 20) << 32);
  updated = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV6UpdateV_Ttgq5Tm(v1, v2, v4 | v8, v3);
  specialized HeterogeneousBuffer.valuePointer<A>(for:)(updated, v1, v2, v5 | v8, v3);
  return EventTreeStats.count.modify;
}

{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 24);
  v8 = *(v0 + 16);
  v4 = 256;
  if (!*(v0 + 17))
  {
    v4 = 0;
  }

  v5 = v4 | (*(v0 + 20) << 32);
  v6 = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV8PrefetchV_Ttgq5Tm(v1, v2, v4 | v8, v3);
  specialized HeterogeneousBuffer.valuePointer<A>(for:)(v6, v1, v2, v5 | v8, v3);
  return EventTreeStats.count.modify;
}

{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 24);
  v8 = *(v0 + 16);
  v4 = 256;
  if (!*(v0 + 17))
  {
    v4 = 0;
  }

  v5 = v4 | (*(v0 + 20) << 32);
  v6 = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV12InvalidationV_Ttgq5Tm(v1, v2, v4 | v8, v3);
  specialized HeterogeneousBuffer.valuePointer<A>(for:)(v6, v1, v2, v5 | v8, v3);
  return EventTreeStats.count.modify;
}

ValueMetadata *Event.prefetch.setter(uint64_t a1, __int16 a2)
{
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 32);
  v12 = *(v2 + 24);
  v8 = 256;
  if (!*(v2 + 25))
  {
    v8 = 0;
  }

  v9 = v8 | (*(v2 + 28) << 32);
  v10 = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV8PrefetchV_Ttgq5Tm(v5, v6, v8 | v12, v7);
  result = specialized HeterogeneousBuffer.valuePointer<A>(for:)(v10, v5, v6, v9 | v12, v7);
  result->Kind = a1;
  LOBYTE(result->Description) = a2 & 1;
  BYTE1(result->Description) = HIBYTE(a2) & 1;
  return result;
}

uint64_t Event.transaction.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = 256;
  if (!*(v1 + 25))
  {
    v3 = 0;
  }

  v4 = specialized HeterogeneousBuffer.valuePointer<A>(for:)(0, *(v1 + 8), *(v1 + 16), v3 | (*(v1 + 28) << 32) | *(v1 + 24), *(v1 + 32));

  return outlined init with copy of Event.Transaction(v4, a1);
}

uint64_t key path getter for Event.transaction : Event@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = 256;
  if (!*(a1 + 25))
  {
    v3 = 0;
  }

  v4 = specialized HeterogeneousBuffer.valuePointer<A>(for:)(0, *(a1 + 8), *(a1 + 16), v3 | (*(a1 + 28) << 32) | *(a1 + 24), *(a1 + 32));

  return outlined init with copy of Event.Transaction(v4, a2);
}

uint64_t (*Event.transaction.read(uint64_t *a1))()
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
  v4 = 256;
  if (!*(v1 + 25))
  {
    v4 = 0;
  }

  *(v3 + 32) = specialized HeterogeneousBuffer.subscript.read(v3, 0, *(v1 + 8), *(v1 + 16), v4 | (*(v1 + 28) << 32) | *(v1 + 24), *(v1 + 32));
  return UnsafeTree.subjectsMap.read;
}

uint64_t (*Event.transaction.modify(uint64_t *a1))()
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
  *(v2 + 32) = specialized HeterogeneousBuffer.subscript.modify(v2, 0);
  return UnsafeTree.storage.modify;
}

unint64_t Event.hasObservable.getter()
{
  v2 = *(v0 + 8);
  v1 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 28);
  v4 = *(v0 + 32);
  result = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV10ObservableV_Ttgq5(v2, v1, v3, v4);
  v7 = 0;
  if (v5 == result && v4 == HIDWORD(result))
  {
    return v7;
  }

  if (HIDWORD(result) >= v4)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v2)
  {
    return *(v2 + result + 8);
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t Event.action.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = 256;
  if (!*(v1 + 25))
  {
    v3 = 0;
  }

  v4 = specialized HeterogeneousBuffer.valuePointer<A>(for:)(0, *(v1 + 8), *(v1 + 16), v3 | (*(v1 + 28) << 32) | *(v1 + 24), *(v1 + 32));

  return outlined init with copy of Event.Action(v4, a1);
}

uint64_t key path getter for Event.action : Event@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = 256;
  if (!*(a1 + 25))
  {
    v3 = 0;
  }

  v4 = specialized HeterogeneousBuffer.valuePointer<A>(for:)(0, *(a1 + 8), *(a1 + 16), v3 | (*(a1 + 28) << 32) | *(a1 + 24), *(a1 + 32));

  return outlined init with copy of Event.Action(v4, a2);
}

uint64_t (*Event.action.read(uint64_t *a1))()
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
  v4 = 256;
  if (!*(v1 + 25))
  {
    v4 = 0;
  }

  *(v3 + 32) = specialized HeterogeneousBuffer.subscript.read(v3, 0, *(v1 + 8), *(v1 + 16), v4 | (*(v1 + 28) << 32) | *(v1 + 24), *(v1 + 32));
  return UnsafeTree.subjectsMap.readspecialized ;
}

uint64_t key path setter for Event.transaction : Event(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void, void, unint64_t, void), uint64_t (*a6)(uint64_t, uint64_t))
{
  v7 = 256;
  if (!*(a2 + 25))
  {
    v7 = 0;
  }

  v8 = a5(0, *(a2 + 8), *(a2 + 16), v7 | (*(a2 + 28) << 32) | *(a2 + 24), *(a2 + 32));

  return a6(a1, v8);
}

uint64_t (*Event.action.modify(uint64_t *a1))()
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
  *(v2 + 32) = specialized HeterogeneousBuffer.subscript.modify(v2, 0);
  return UnsafeTree.storage.modify;
}

uint64_t Event.transaction.setter(uint64_t a1, uint64_t (*a2)(void, void, void, unint64_t, void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = 256;
  if (!*(v3 + 25))
  {
    v5 = 0;
  }

  v6 = a2(0, *(v3 + 8), *(v3 + 16), v5 | (*(v3 + 28) << 32) | *(v3 + 24), *(v3 + 32));

  return a3(a1, v6);
}

unint64_t Event.hasTransaction.getter@<X0>(uint64_t (*a1)(uint64_t, void, uint64_t, unint64_t)@<X0>, uint64_t (*a2)(uint64_t, _OWORD *)@<X1>, _OWORD *a3@<X8>)
{
  v5 = *(v3 + 8);
  v8 = *(v3 + 28);
  v7 = *(v3 + 32);
  v6 = *(v3 + 24);
  v9 = 256;
  if (!*(v3 + 25))
  {
    v9 = 0;
  }

  result = a1(v5, *(v3 + 16), v9 | (v8 << 32) | *(v3 + 24), v7);
  if (v8 == result && v7 == HIDWORD(result))
  {
    *a3 = 0u;
    a3[1] = 0u;
    a3[2] = xmmword_26C32F2B0;
    return result;
  }

  if (HIDWORD(result) >= v7)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v6)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v5)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v12 = v5 + result + 8;

  return a2(v12, a3);
}

double Event.animation.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = 256;
  if (!*(v1 + 25))
  {
    v3 = 0;
  }

  v4 = specialized HeterogeneousBuffer.valuePointer<A>(for:)(0, *(v1 + 8), *(v1 + 16), v3 | (*(v1 + 28) << 32) | *(v1 + 24), *(v1 + 32));
  result = *&v4[2].Description;
  *a1 = v4->Kind;
  *(a1 + 8) = *&v4->Description;
  *(a1 + 24) = *(v4 + 24);
  *(a1 + 40) = result;
  return result;
}

double key path getter for Event.animation : Event@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = 256;
  if (!*(a1 + 25))
  {
    v3 = 0;
  }

  v4 = specialized HeterogeneousBuffer.valuePointer<A>(for:)(0, *(a1 + 8), *(a1 + 16), v3 | (*(a1 + 28) << 32) | *(a1 + 24), *(a1 + 32));
  result = *&v4[2].Description;
  *a2 = v4->Kind;
  *(a2 + 8) = *&v4->Description;
  *(a2 + 24) = *(v4 + 24);
  *(a2 + 40) = result;
  return result;
}

void (*Event.animation.read(ValueMetadata **a1))(void **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = 256;
  if (!*(v1 + 25))
  {
    v5 = 0;
  }

  v6 = specialized HeterogeneousBuffer.valuePointer<A>(for:)(0, *(v1 + 8), *(v1 + 16), v5 | (*(v1 + 28) << 32) | *(v1 + 24), *(v1 + 32));
  v8 = v6[1];
  v7 = v6[2];
  *v4 = *v6;
  v4[1] = v8;
  v4[2] = v7;
  return Snapshot.subscript.read;
}

__n128 key path setter for Event.animation : Event(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  v4 = 256;
  if (!*(a2 + 25))
  {
    v4 = 0;
  }

  v5 = specialized HeterogeneousBuffer.valuePointer<A>(for:)(0, *(a2 + 8), *(a2 + 16), v4 | (*(a2 + 28) << 32) | *(a2 + 24), *(a2 + 32));
  v5->Kind = *a1;
  result = *(a1 + 8);
  *(v5 + 24) = *(a1 + 24);
  *&v5->Description = result;
  v5[2].Description = v3;
  return result;
}

uint64_t (*Event.animation.modify(uint64_t *a1))()
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
  *(v2 + 32) = specialized HeterogeneousBuffer.subscript.modify(v2, 0);
  return UnsafeTree.storage.modify;
}

__n128 Event.animation.setter(uint64_t a1)
{
  v3 = 256;
  if (!*(v1 + 25))
  {
    v3 = 0;
  }

  v4 = specialized HeterogeneousBuffer.valuePointer<A>(for:)(0, *(v1 + 8), *(v1 + 16), v3 | (*(v1 + 28) << 32) | *(v1 + 24), *(v1 + 32));
  v5 = *(a1 + 16);
  *v4 = *a1;
  v4[1] = v5;
  result = *(a1 + 32);
  v4[2] = result;
  return result;
}

unint64_t Event.hasAnimation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v6 = *(v1 + 28);
  v5 = *(v1 + 32);
  v4 = *(v1 + 24);
  result = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV9AnimationV_Ttg5Tm(v3, *(v1 + 16), v4, v5);
  v8 = v6 == result && v5 == HIDWORD(result);
  v9 = v8;
  v10 = 0uLL;
  v11 = 0uLL;
  v12 = 0uLL;
  if (v8)
  {
    goto LABEL_12;
  }

  if (HIDWORD(result) >= v5)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v3)
  {
    v13 = v3 + result;
    v10 = *(v13 + 8);
    v11 = *(v13 + 24);
    v12 = *(v13 + 40);
LABEL_12:
    *a1 = v10;
    *(a1 + 16) = v11;
    *(a1 + 32) = v12;
    *(a1 + 48) = v9;
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t Event.renderTick.getter()
{
  v1 = 256;
  if (!*(v0 + 25))
  {
    v1 = 0;
  }

  return LOBYTE(specialized HeterogeneousBuffer.valuePointer<A>(for:)(0, *(v0 + 8), *(v0 + 16), v1 | (*(v0 + 28) << 32) | *(v0 + 24), *(v0 + 32))->Kind);
}

double key path getter for Event.renderTick : Event@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = 256;
  if (!*(a1 + 25))
  {
    v3 = 0;
  }

  v4 = specialized HeterogeneousBuffer.valuePointer<A>(for:)(0, *(a1 + 8), *(a1 + 16), v3 | (*(a1 + 28) << 32) | *(a1 + 24), *(a1 + 32));
  result = *&v4->Description;
  *a2 = v4->Kind;
  *(a2 + 8) = result;
  return result;
}

void (*Event.renderTick.read())()
{
  v1 = 256;
  if (!*(v0 + 25))
  {
    v1 = 0;
  }

  specialized HeterogeneousBuffer.valuePointer<A>(for:)(0, *(v0 + 8), *(v0 + 16), v1 | (*(v0 + 28) << 32) | *(v0 + 24), *(v0 + 32));
  return EventTreeStats.count.modify;
}

ValueMetadata *key path setter for Event.renderTick : Event(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = 256;
  if (!*(a2 + 25))
  {
    v4 = 0;
  }

  result = specialized HeterogeneousBuffer.valuePointer<A>(for:)(0, *(a2 + 8), *(a2 + 16), v4 | (*(a2 + 28) << 32) | *(a2 + 24), *(a2 + 32));
  LOBYTE(result->Kind) = v2;
  result->Description = v3;
  return result;
}

uint64_t (*Event.renderTick.modify(uint64_t *a1))()
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
  *(v2 + 32) = specialized HeterogeneousBuffer.subscript.modify(v2, 0);
  return UnsafeTree.subjectsMap.modify;
}

ValueMetadata *Event.renderTick.setter(char a1, double a2)
{
  v5 = 256;
  if (!*(v2 + 25))
  {
    v5 = 0;
  }

  result = specialized HeterogeneousBuffer.valuePointer<A>(for:)(0, *(v2 + 8), *(v2 + 16), v5 | (*(v2 + 28) << 32) | *(v2 + 24), *(v2 + 32));
  LOBYTE(result->Kind) = a1;
  *&result->Description = a2;
  return result;
}

unint64_t Event.hasRenderTick.getter()
{
  v2 = *(v0 + 8);
  v1 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 28);
  v4 = *(v0 + 32);
  result = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV10RenderTickV_Ttg5Tm(v2, v1, v3, v4);
  if (v5 == result && v4 == HIDWORD(result))
  {
    return 2;
  }

  if (HIDWORD(result) >= v4)
  {
    __break(1u);
  }

  else if ((v3 & 1) == 0)
  {
    if (v2)
    {
      return *(v2 + result + 8);
    }

    goto LABEL_12;
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

ValueMetadata *Event.graphRootValueUpdate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = 256;
  if (!*(v1 + 25))
  {
    v3 = 0;
  }

  result = specialized HeterogeneousBuffer.valuePointer<A>(for:)(0, *(v1 + 8), *(v1 + 16), v3 | (*(v1 + 28) << 32) | *(v1 + 24), *(v1 + 32));
  Description = result->Description;
  *a1 = result->Kind;
  *(a1 + 8) = Description;
  return result;
}

ValueMetadata *key path getter for Event.graphRootValueUpdate : Event@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = 256;
  if (!*(a1 + 25))
  {
    v3 = 0;
  }

  result = specialized HeterogeneousBuffer.valuePointer<A>(for:)(0, *(a1 + 8), *(a1 + 16), v3 | (*(a1 + 28) << 32) | *(a1 + 24), *(a1 + 32));
  Description = result->Description;
  *a2 = result->Kind;
  *(a2 + 8) = Description;
  return result;
}

uint64_t (*Event.graphRootValueUpdate.read(uint64_t *a1))()
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
  v4 = 256;
  if (!*(v1 + 25))
  {
    v4 = 0;
  }

  *(v3 + 32) = specialized HeterogeneousBuffer.subscript.read(v3, 0, *(v1 + 8), *(v1 + 16), v4 | (*(v1 + 28) << 32) | *(v1 + 24), *(v1 + 32));
  return UnsafeTree.subjectsMap.readspecialized ;
}

ValueMetadata *key path setter for Event.graphRootValueUpdate : Event(__int16 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = 256;
  if (!*(a2 + 25))
  {
    v4 = 0;
  }

  result = specialized HeterogeneousBuffer.valuePointer<A>(for:)(0, *(a2 + 8), *(a2 + 16), v4 | (*(a2 + 28) << 32) | *(a2 + 24), *(a2 + 32));
  LOWORD(result->Kind) = v2;
  result->Description = v3;
  return result;
}

uint64_t (*Event.graphRootValueUpdate.modify(uint64_t *a1))()
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
  *(v2 + 32) = specialized HeterogeneousBuffer.subscript.modify(v2, 0);
  return UnsafeTree.storage.modify;
}

ValueMetadata *Event.graphRootValueUpdate.setter(uint64_t a1)
{
  v3 = 256;
  if (!*(v1 + 25))
  {
    v3 = 0;
  }

  result = specialized HeterogeneousBuffer.valuePointer<A>(for:)(0, *(v1 + 8), *(v1 + 16), v3 | (*(v1 + 28) << 32) | *(v1 + 24), *(v1 + 32));
  v5 = *(a1 + 8);
  LOWORD(result->Kind) = *a1;
  result->Description = v5;
  return result;
}

unint64_t Event.hasGraphRootValueUpdate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = 256;
  if (!*(v1 + 25))
  {
    v3 = 0;
  }

  result = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(*(v1 + 8), *(v1 + 16), v3 | (*(v1 + 28) << 32) | *(v1 + 24), *(v1 + 32), _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV20GraphRootValueUpdateV_Ttg5Tm);
  if (result)
  {
    v5 = *(result + 8);
    *a1 = *result;
  }

  else
  {
    v5 = 0;
    *a1 = 0;
  }

  *(a1 + 8) = v5;
  *(a1 + 16) = result == 0;
  return result;
}

uint64_t Event.subscript.getter(uint64_t result)
{
  v2 = *(v1 + 124);
  if (v2)
  {
    v3 = 0;
    v4 = result;
    v5 = *(v1 + 112);
    v6 = result & 0xC000;
    v7 = v6 ^ 0xC000;
    v8 = result & 0x1FFF;
    v9 = v2 - 1;
    v10 = 8 * v2;
    while (v5)
    {
      v11 = *(v5 + v3);
      if (((result & 0xC000) == 0 || (v11 & v7) == 0) && ((result & 0x2000) == 0 || (v11 & 0x2000) != 0))
      {
        if ((result & 0x1FFF) != 0)
        {
          if ((v8 & v11) != 0)
          {
LABEL_12:
            v12 = v5 + v3;
            result = *(v12 + 4);
            if (v10 - 8 == v3)
            {
              return result;
            }

            v13 = (v12 + 8);
            while (v9)
            {
              v14 = *v13;
              if ((!v6 || (v14 & v7) == 0) && ((v4 & 0x2000) == 0 || (v14 & 0x2000) != 0) && (!v8 || (v8 & v14) != 0))
              {
                __break(1u);
                break;
              }

              v13 += 4;
              if (!--v9)
              {
                return result;
              }
            }

            __break(1u);
            goto LABEL_25;
          }
        }

        else if (result)
        {
          goto LABEL_12;
        }
      }

      --v9;
      v3 += 8;
      if (v10 == v3)
      {
        goto LABEL_25;
      }
    }
  }

  else
  {
LABEL_25:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Event.update.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v8 = *(v0 + 24);
  v4 = 256;
  if (!*(v0 + 25))
  {
    v4 = 0;
  }

  v5 = v4 | (*(v0 + 28) << 32);
  updated = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV6UpdateV_Ttgq5Tm(v1, v2, v4 | v8, v3);
  return specialized HeterogeneousBuffer.valuePointer<A>(for:)(updated, v1, v2, v5 | v8, v3)->Kind;
}

__n128 key path getter for Event.update : Event@<Q0>(uint64_t a1@<X0>, ValueMetadata *a2@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *(a1 + 32);
  v5 = *(a1 + 24);
  v7 = 256;
  if (!*(a1 + 25))
  {
    v7 = 0;
  }

  v8 = v7 | (*(a1 + 28) << 32);
  updated = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV6UpdateV_Ttgq5Tm(v3, v4, v7 | *(a1 + 24), v6);
  v10 = specialized HeterogeneousBuffer.valuePointer<A>(for:)(updated, v3, v4, v8 | v5, v6);
  result = *v10;
  *a2 = *v10;
  return result;
}

void (*Event.update.read())()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v8 = *(v0 + 24);
  v4 = 256;
  if (!*(v0 + 25))
  {
    v4 = 0;
  }

  v5 = v4 | (*(v0 + 28) << 32);
  updated = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV6UpdateV_Ttgq5Tm(v1, v2, v4 | v8, v3);
  specialized HeterogeneousBuffer.valuePointer<A>(for:)(updated, v1, v2, v5 | v8, v3);
  return EventTreeStats.count.modify;
}

ValueMetadata *key path setter for Event.update : Event(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v7 = *(a2 + 32);
  v6 = *(a2 + 24);
  v8 = 256;
  if (!*(a2 + 25))
  {
    v8 = 0;
  }

  v9 = v8 | (*(a2 + 28) << 32);
  updated = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV6UpdateV_Ttgq5Tm(v4, v5, v8 | *(a2 + 24), v7);
  result = specialized HeterogeneousBuffer.valuePointer<A>(for:)(updated, v4, v5, v9 | v6, v7);
  result->Kind = v2;
  result->Description = v3;
  return result;
}

ValueMetadata *Event.update.setter(uint64_t a1, void *a2)
{
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 32);
  v12 = *(v2 + 24);
  v8 = 256;
  if (!*(v2 + 25))
  {
    v8 = 0;
  }

  v9 = v8 | (*(v2 + 28) << 32);
  updated = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV6UpdateV_Ttgq5Tm(v5, v6, v8 | v12, v7);
  result = specialized HeterogeneousBuffer.valuePointer<A>(for:)(updated, v5, v6, v9 | v12, v7);
  result->Kind = a1;
  result->Description = a2;
  return result;
}

uint64_t Event.invalidation.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v8 = *(v0 + 24);
  v4 = 256;
  if (!*(v0 + 25))
  {
    v4 = 0;
  }

  v5 = v4 | (*(v0 + 28) << 32);
  v6 = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV12InvalidationV_Ttgq5Tm(v1, v2, v4 | v8, v3);
  return specialized HeterogeneousBuffer.valuePointer<A>(for:)(v6, v1, v2, v5 | v8, v3)->Kind;
}

ValueMetadata *key path getter for Event.invalidation : Event@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *(a1 + 32);
  v5 = *(a1 + 24);
  v7 = 256;
  if (!*(a1 + 25))
  {
    v7 = 0;
  }

  v8 = v7 | (*(a1 + 28) << 32);
  v9 = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV12InvalidationV_Ttgq5Tm(v3, v4, v7 | *(a1 + 24), v6);
  result = specialized HeterogeneousBuffer.valuePointer<A>(for:)(v9, v3, v4, v8 | v5, v6);
  *a2 = result->Kind;
  return result;
}

void (*Event.invalidation.read())()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v8 = *(v0 + 24);
  v4 = 256;
  if (!*(v0 + 25))
  {
    v4 = 0;
  }

  v5 = v4 | (*(v0 + 28) << 32);
  v6 = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV12InvalidationV_Ttgq5Tm(v1, v2, v4 | v8, v3);
  specialized HeterogeneousBuffer.valuePointer<A>(for:)(v6, v1, v2, v5 | v8, v3);
  return EventTreeStats.count.modify;
}

ValueMetadata *key path setter for Event.invalidation : Event(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v6 = *(a2 + 32);
  v5 = *(a2 + 24);
  v7 = 256;
  if (!*(a2 + 25))
  {
    v7 = 0;
  }

  v8 = v7 | (*(a2 + 28) << 32);
  v9 = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV12InvalidationV_Ttgq5Tm(v3, v4, v7 | *(a2 + 24), v6);
  result = specialized HeterogeneousBuffer.valuePointer<A>(for:)(v9, v3, v4, v8 | v5, v6);
  result->Kind = v2;
  return result;
}

uint64_t (*Event.invalidation.modify(uint64_t *a1))()
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
  *(v2 + 32) = specialized HeterogeneousBuffer.subscript.modify();
  return UnsafeTree.storage.modify;
}

ValueMetadata *Event.invalidation.setter(uint64_t a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 32);
  v10 = *(v1 + 24);
  v6 = 256;
  if (!*(v1 + 25))
  {
    v6 = 0;
  }

  v7 = v6 | (*(v1 + 28) << 32);
  v8 = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV12InvalidationV_Ttgq5Tm(v3, v4, v6 | v10, v5);
  result = specialized HeterogeneousBuffer.valuePointer<A>(for:)(v8, v3, v4, v7 | v10, v5);
  result->Kind = a1;
  return result;
}

BOOL Event.contains(_:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 32);
    if (*(v1 + 25))
    {
      v4 = 256;
    }

    else
    {
      v4 = 0;
    }

    v5 = 1;
    do
    {
      v5 = v5 && HeterogeneousBuffer.contains<A>(_:)(*v3, *(v1 + 8), *(v1 + 16), v4 | (*(v1 + 28) << 32) | *(v1 + 24), *(v1 + 32));
      v3 += 2;
      --v2;
    }

    while (v2);
  }

  else
  {
    return 1;
  }

  return v5;
}

BOOL Event.has(_:)(uint64_t a1)
{
  v2 = 256;
  if (!*(v1 + 25))
  {
    v2 = 0;
  }

  return HeterogeneousBuffer.contains<A>(_:)(a1, *(v1 + 8), *(v1 + 16), v2 | (*(v1 + 28) << 32) | *(v1 + 24), *(v1 + 32));
}

uint64_t Event.visiblePosition.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 25);
  v4 = *(v0 + 28);
  v5 = *(v0 + 32);
  LOBYTE(v11) = *(v0 + 24);
  v6 = v3 == 0;
  v7 = 256;
  if (v6)
  {
    v7 = 0;
  }

  v8 = v7 | (v4 << 32);
  if (specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v1, v2, v8 | v11, v5))
  {
    return 0;
  }

  if (_s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v1, v2, v8 | v11, v5, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV8PrefetchV_Ttgq5Tm) || _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v1, v2, v8 | v11, v5, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV9IgnorableV_Ttg5Tm))
  {
    return 2;
  }

  if (_s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v1, v2, v8 | v11, v5, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV6UpdateV_Ttgq5Tm))
  {
    return 0;
  }

  if (_s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v1, v2, v8 | v11, v5, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV14AttributeStackV_Ttgq5Tm))
  {
    return 3;
  }

  v10 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v1, v2, v8 | v11, v5, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV12InvalidationV_Ttgq5Tm);
  result = 1;
  if (!v10)
  {
    v11 = xmmword_26C32DAD0;
    v12 = 1;
    v13 = 0;
    v14 = 0;
    v15 = 512;
    Event.describe(state:)(&v11);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t Event.position.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 25);
  v4 = *(v0 + 28);
  v5 = *(v0 + 32);
  LOBYTE(v11) = *(v0 + 24);
  v6 = v3 == 0;
  v7 = 256;
  if (v6)
  {
    v7 = 0;
  }

  v8 = v7 | (v4 << 32);
  if (specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v1, v2, v8 | v11, v5))
  {
    return 0;
  }

  if (_s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v1, v2, v8 | v11, v5, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV8PrefetchV_Ttgq5Tm) || _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v1, v2, v8 | v11, v5, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV9IgnorableV_Ttg5Tm))
  {
    return 2;
  }

  if (_s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v1, v2, v8 | v11, v5, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV6UpdateV_Ttgq5Tm))
  {
    return 0;
  }

  result = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v1, v2, v8 | v11, v5, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV14AttributeStackV_Ttgq5Tm);
  if (result)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v10 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v1, v2, v8 | v11, v5, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV12InvalidationV_Ttgq5Tm);
  result = 1;
  if (!v10)
  {
    v11 = xmmword_26C32DAD0;
    v12 = 1;
    v13 = 0;
    v14 = 0;
    v15 = 512;
    Event.describe(state:)(&v11);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_14;
  }

  return result;
}

unint64_t Event.metric(_:within:)(unsigned __int8 *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  v8 = *(v2 + 25);
  v10 = *(v2 + 28);
  v9 = *(v2 + 32);
  LOBYTE(v35) = *(v2 + 24);
  v7 = v35;
  v14 = v8 == 0;
  v11 = 256;
  if (v14)
  {
    v11 = 0;
  }

  v12 = v11 | (v10 << 32);
  result = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV9IgnorableV_Ttg5Tm(v5, v6, v11 | v35, v9);
  v14 = v10 == result && v9 == HIDWORD(result);
  if (!v14)
  {
    if (HIDWORD(result) >= v9)
    {
      goto LABEL_65;
    }

    if (v35)
    {
      goto LABEL_70;
    }

    if (v5)
    {
      return 0;
    }

    __break(1u);
  }

  if (specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v5, v6, v12 | v35, v9))
  {
    return 0;
  }

  if (v4 >= 2)
  {
    if (v4 == 2)
    {
      return *(v2 + 40);
    }

    v5 = 1;
    Event.related(_:within:limit:collectedInto:clear:includeSelf:)(35843, a2, 0x7FFFFFFFFFFFFFFFLL, *(*a2 + 184), 1, 1);
    v17 = 0;
    result = 0;
    v18 = **(*a2 + 184);
    v19 = 1 << *(v18 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v18 + 64);
    v22 = (v19 + 63) >> 6;
    while (v21)
    {
LABEL_31:
      v24 = *(*(v18 + 48) + ((v17 << 8) | (4 * __clz(__rbit64(v21)))));
      if (v24 >= *(a2 + 44))
      {
        goto LABEL_66;
      }

      v25 = *(a2 + 32);
      if (!v25)
      {
        goto LABEL_71;
      }

      v21 &= v21 - 1;
      v26 = *(v25 + (v24 << 7) + 40);
      v27 = __OFADD__(result, v26);
      result += v26;
      if (v27)
      {
        __break(1u);
        goto LABEL_36;
      }
    }

    while (1)
    {
      v23 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v23 >= v22)
      {
        return result;
      }

      v21 = *(v18 + 64 + 8 * v23);
      ++v17;
      if (v21)
      {
        v17 = v23;
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_48:
    v35 = 0u;
    v36 = 0u;
    v37 = xmmword_26C32F2B0;
    outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](&v35, &_s21SwiftUITracingSupport5EventV11TransactionVSgMd, &_s21SwiftUITracingSupport5EventV11TransactionVSgMR);
    v33 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v5, v6, v12 | v7, v9, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV6ActionV_Ttgq5Tm);
    if (v33)
    {
      outlined init with copy of Event.Action(v33, &v35);
      v31 = &_s21SwiftUITracingSupport5EventV6ActionVSgMd;
      v32 = &_s21SwiftUITracingSupport5EventV6ActionVSgMR;
      goto LABEL_50;
    }

    v35 = 0u;
    v36 = 0u;
    v37 = xmmword_26C32F2B0;
    outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](&v35, &_s21SwiftUITracingSupport5EventV6ActionVSgMd, &_s21SwiftUITracingSupport5EventV6ActionVSgMR);
    LOBYTE(v35) = v7;
    if (_s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v5, v6, v12 | v7, v9, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV9AnimationV_Ttg5Tm))
    {
      goto LABEL_51;
    }

    LOBYTE(v35) = v7;
    if (_s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v5, v6, v12 | v7, v9, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV10RenderTickV_Ttg5Tm))
    {
      goto LABEL_51;
    }

    LOBYTE(v35) = v7;
    if (specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v5, v6, v12 | v7, v9))
    {
      goto LABEL_51;
    }

    LOBYTE(v35) = v7;
    if (specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v5, v6, v12 | v7, v9))
    {
      goto LABEL_51;
    }

    v35 = xmmword_26C32DAD0;
    LOBYTE(v36) = 1;
    *(&v36 + 1) = 0;
    *&v37 = 0;
    WORD4(v37) = 512;
    Event.describe(state:)(&v35);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  result = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v5, v6, v12 | v35, v9);
  if (result)
  {
    if (*result < *(a2 + 84))
    {
      v15 = *(a2 + 72);
      if (v15)
      {
        v16 = *(v15 + 312 * *result + 248);
        goto LABEL_52;
      }

      goto LABEL_72;
    }

    goto LABEL_67;
  }

LABEL_36:
  result = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v5, v6, v12 | v35, v9, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV14AttributeStackV_Ttgq5Tm);
  if (!result)
  {
    result = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v5, v6, v12 | v35, v9);
    if (result)
    {
      if (*result >= *(a2 + 148))
      {
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

      v29 = *(a2 + 136);
      if (!v29)
      {
LABEL_74:
        __break(1u);
        return result;
      }

      v16 = *(v29 + 80 * *result + 72);
      goto LABEL_52;
    }

    if (_s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v5, v6, v12 | v35, v9, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV8PrefetchV_Ttgq5Tm))
    {
LABEL_51:
      v16 = 0;
      goto LABEL_52;
    }

    v30 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v5, v6, v12 | v35, v9, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV11TransactionV_Ttgq5Tm);
    if (v30)
    {
      outlined init with copy of Event.Transaction(v30, &v35);
      v31 = &_s21SwiftUITracingSupport5EventV11TransactionVSgMd;
      v32 = &_s21SwiftUITracingSupport5EventV11TransactionVSgMR;
LABEL_50:
      outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](&v35, v31, v32);
      goto LABEL_51;
    }

    goto LABEL_48;
  }

  if (*result >= *(a2 + 84))
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v28 = *(a2 + 72);
  if (!v28)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v16 = *(v28 + 312 * *result + 256);
LABEL_52:
  v34 = *(v2 + 104);
  if (!v4)
  {
    goto LABEL_57;
  }

  result = v16 - v34;
  if (v16 != v34 && __OFSUB__(v16, v34))
  {
    __break(1u);
LABEL_57:
    if (v34)
    {
      return v34 - 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}