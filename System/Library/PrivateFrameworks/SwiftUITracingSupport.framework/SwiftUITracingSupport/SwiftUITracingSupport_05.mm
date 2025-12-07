uint64_t specialized InspectionState.wrapDescription<A>(_:)(uint64_t a1, unint64_t a2)
{
  lazy protocol witness table accessor for type String and conformance String();
  v4 = StringProtocol.components<A>(separatedBy:)();
  if (*(v4 + 16) == 1 && (v2[3] & 2) == 0)
  {

    return a1;
  }

  if ((v2[3] & 2) != 0)
  {
    v6 = *v2;
  }

  else
  {
    v6 = 1;
  }

  v7._countAndFlagsBits = 8224;
  v7._object = 0xE200000000000000;
  v9 = String.init(repeating:count:)(v7, v6);
  result = v9._countAndFlagsBits;
  v10 = *(v4 + 16);
  if (!v10)
  {
LABEL_15:

    return 0;
  }

  v11 = 0;
  v12 = (v4 + 40);
  while (v11 < *(v4 + 16))
  {
    v14 = *(v12 - 1);
    v13 = *v12;

    MEMORY[0x26D69CDB0](v14, v13);

    MEMORY[0x26D69CDB0](v9._countAndFlagsBits, v9._object);

    if (v10 != 1)
    {
      result = MEMORY[0x26D69CDB0](10, 0xE100000000000000);
    }

    v12 += 2;
    ++v11;
    if (!--v10)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

char *specialized InspectionState.wrapDescription<A>(_:)(unint64_t a1, unint64_t a2)
{
  return specialized InspectionState.wrapDescription<A>(_:)(a1, a2, specialized EvolutionTable.Entry.describe(state:));
}

{
  return specialized InspectionState.wrapDescription<A>(_:)(a1, a2, specialized EvolutionTable.Entry.describe(state:));
}

{
  return specialized InspectionState.wrapDescription<A>(_:)(a1, a2, specialized EvolutionTable.Entry.describe(state:));
}

{
  return specialized InspectionState.wrapDescription<A>(_:)(a1, a2, specialized EvolutionTable.Entry.describe(state:));
}

uint64_t specialized InspectionState.wrapDescription<A>(_:)()
{
  v1 = v0;
  v2 = Interpreter.Context.describe(state:)(v0);
  lazy protocol witness table accessor for type String and conformance String();
  v3 = StringProtocol.components<A>(separatedBy:)();
  v4 = v0[3];
  if (*(v3 + 16) == 1)
  {
    if ((v4 & 2) == 0)
    {

      return v2;
    }
  }

  else
  {

    if ((v4 & 2) == 0)
    {
      v6 = 1;
      goto LABEL_8;
    }
  }

  v6 = *v1;
LABEL_8:
  v7._countAndFlagsBits = 8224;
  v7._object = 0xE200000000000000;
  v8 = String.init(repeating:count:)(v7, v6);
  result = v8._countAndFlagsBits;
  v9 = *(v3 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = (v3 + 40);
    while (v10 < *(v3 + 16))
    {
      v13 = *(v11 - 1);
      v12 = *v11;

      MEMORY[0x26D69CDB0](v13, v12);

      MEMORY[0x26D69CDB0](v8._countAndFlagsBits, v8._object);

      if (v9 != 1)
      {
        result = MEMORY[0x26D69CDB0](10, 0xE100000000000000);
      }

      v11 += 2;
      ++v10;
      if (!--v9)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    return 0;
  }

  return result;
}

{
  v1 = v0;
  v2 = *(v0 + 16);
  v16 = *v0;
  v17[0] = v2;
  *(v17 + 10) = *(v0 + 26);
  v3 = Subgraph.describe(state:)(&v16);
  *&v16 = v3;
  *(&v16 + 1) = v4;
  lazy protocol witness table accessor for type String and conformance String();
  v5 = StringProtocol.components<A>(separatedBy:)();
  v6 = *(v0 + 24);
  if (*(v5 + 16) == 1)
  {
    if ((v6 & 2) == 0)
    {

      return v3;
    }

    *&v16 = 0;
    *(&v16 + 1) = 0xE000000000000000;
  }

  else
  {

    *&v16 = 0;
    *(&v16 + 1) = 0xE000000000000000;
    if ((v6 & 2) == 0)
    {
      v8 = 1;
      goto LABEL_8;
    }
  }

  v8 = *v1;
LABEL_8:
  v9._countAndFlagsBits = 8224;
  v9._object = 0xE200000000000000;
  v10 = String.init(repeating:count:)(v9, v8);
  result = v10._countAndFlagsBits;
  v11 = *(v5 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = (v5 + 40);
    while (v12 < *(v5 + 16))
    {
      v15 = *(v13 - 1);
      v14 = *v13;

      MEMORY[0x26D69CDB0](v15, v14);

      MEMORY[0x26D69CDB0](v10._countAndFlagsBits, v10._object);

      if (v11 != 1)
      {
        result = MEMORY[0x26D69CDB0](10, 0xE100000000000000);
      }

      v13 += 2;
      ++v12;
      if (!--v11)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    return v16;
  }

  return result;
}

{
  v1 = v0;
  v2 = specialized Optional.describe(state:)(v0);
  lazy protocol witness table accessor for type String and conformance String();
  v3 = StringProtocol.components<A>(separatedBy:)();
  v4 = *(v0 + 24);
  if (*(v3 + 16) == 1)
  {
    if ((v4 & 2) == 0)
    {

      return v2;
    }
  }

  else
  {

    if ((v4 & 2) == 0)
    {
      v6 = 1;
      goto LABEL_8;
    }
  }

  v6 = *v1;
LABEL_8:
  v7._countAndFlagsBits = 8224;
  v7._object = 0xE200000000000000;
  v8 = String.init(repeating:count:)(v7, v6);
  result = v8._countAndFlagsBits;
  v9 = *(v3 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = (v3 + 40);
    while (v10 < *(v3 + 16))
    {
      v13 = *(v11 - 1);
      v12 = *v11;

      MEMORY[0x26D69CDB0](v13, v12);

      MEMORY[0x26D69CDB0](v8._countAndFlagsBits, v8._object);

      if (v9 != 1)
      {
        result = MEMORY[0x26D69CDB0](10, 0xE100000000000000);
      }

      v11 += 2;
      ++v10;
      if (!--v9)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    return 0;
  }

  return result;
}

{
  v1 = v0;
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v2);

  MEMORY[0x26D69CDB0](46, 0xE100000000000000);
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v3);

  v4 = 64;
  lazy protocol witness table accessor for type String and conformance String();
  v5 = StringProtocol.components<A>(separatedBy:)();
  v6 = v0[3];
  if (*(v5 + 16) == 1)
  {
    if ((v6 & 2) == 0)
    {

      return v4;
    }
  }

  else
  {

    if ((v6 & 2) == 0)
    {
      v7 = 1;
      goto LABEL_8;
    }
  }

  v7 = *v1;
LABEL_8:
  v8._countAndFlagsBits = 8224;
  v8._object = 0xE200000000000000;
  v10 = String.init(repeating:count:)(v8, v7);
  result = v10._countAndFlagsBits;
  v11 = *(v5 + 16);
  if (!v11)
  {
LABEL_14:

    return 0;
  }

  v12 = 0;
  v13 = (v5 + 40);
  while (v12 < *(v5 + 16))
  {
    v15 = *(v13 - 1);
    v14 = *v13;

    MEMORY[0x26D69CDB0](v15, v14);

    MEMORY[0x26D69CDB0](v10._countAndFlagsBits, v10._object);

    if (v11 != 1)
    {
      result = MEMORY[0x26D69CDB0](10, 0xE100000000000000);
    }

    v13 += 2;
    ++v12;
    if (!--v11)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

{
  v1 = v0;
  v2 = Interpreter.Storage.debugName.getter();
  lazy protocol witness table accessor for type String and conformance String();
  v3 = StringProtocol.components<A>(separatedBy:)();
  v4 = v0[3];
  if (*(v3 + 16) == 1)
  {
    if ((v4 & 2) == 0)
    {

      return v2;
    }
  }

  else
  {

    if ((v4 & 2) == 0)
    {
      v6 = 1;
      goto LABEL_8;
    }
  }

  v6 = *v1;
LABEL_8:
  v7._countAndFlagsBits = 8224;
  v7._object = 0xE200000000000000;
  v8 = String.init(repeating:count:)(v7, v6);
  result = v8._countAndFlagsBits;
  v9 = *(v3 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = (v3 + 40);
    while (v10 < *(v3 + 16))
    {
      v13 = *(v11 - 1);
      v12 = *v11;

      MEMORY[0x26D69CDB0](v13, v12);

      MEMORY[0x26D69CDB0](v8._countAndFlagsBits, v8._object);

      if (v9 != 1)
      {
        result = MEMORY[0x26D69CDB0](10, 0xE100000000000000);
      }

      v11 += 2;
      ++v10;
      if (!--v9)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    return 0;
  }

  return result;
}

{
  v1 = v0;
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  lazy protocol witness table accessor for type String and conformance String();
  v3 = StringProtocol.components<A>(separatedBy:)();
  v4 = v0[3];
  if (*(v3 + 16) == 1)
  {
    if ((v4 & 2) == 0)
    {

      return v2;
    }
  }

  else
  {

    if ((v4 & 2) == 0)
    {
      v6 = 1;
      goto LABEL_8;
    }
  }

  v6 = *v1;
LABEL_8:
  v7._countAndFlagsBits = 8224;
  v7._object = 0xE200000000000000;
  v8 = String.init(repeating:count:)(v7, v6);
  result = v8._countAndFlagsBits;
  v9 = *(v3 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = (v3 + 40);
    while (v10 < *(v3 + 16))
    {
      v13 = *(v11 - 1);
      v12 = *v11;

      MEMORY[0x26D69CDB0](v13, v12);

      MEMORY[0x26D69CDB0](v8._countAndFlagsBits, v8._object);

      if (v9 != 1)
      {
        result = MEMORY[0x26D69CDB0](10, 0xE100000000000000);
      }

      v11 += 2;
      ++v10;
      if (!--v9)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    return 0;
  }

  return result;
}

{
  v1 = v0;
  v2 = T_Header.describe(state:)();
  lazy protocol witness table accessor for type String and conformance String();
  v3 = StringProtocol.components<A>(separatedBy:)();
  v4 = v0[3];
  if (*(v3 + 16) == 1)
  {
    if ((v4 & 2) == 0)
    {

      return v2;
    }
  }

  else
  {

    if ((v4 & 2) == 0)
    {
      v6 = 1;
      goto LABEL_8;
    }
  }

  v6 = *v1;
LABEL_8:
  v7._countAndFlagsBits = 8224;
  v7._object = 0xE200000000000000;
  v8 = String.init(repeating:count:)(v7, v6);
  result = v8._countAndFlagsBits;
  v9 = *(v3 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = (v3 + 40);
    while (v10 < *(v3 + 16))
    {
      v13 = *(v11 - 1);
      v12 = *v11;

      MEMORY[0x26D69CDB0](v13, v12);

      MEMORY[0x26D69CDB0](v8._countAndFlagsBits, v8._object);

      if (v9 != 1)
      {
        result = MEMORY[0x26D69CDB0](10, 0xE100000000000000);
      }

      v11 += 2;
      ++v10;
      if (!--v9)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    return 0;
  }

  return result;
}

{
  v1 = v0;
  v2 = specialized UnsafeTree.Node.describe(state:)();
  lazy protocol witness table accessor for type String and conformance String();
  v3 = StringProtocol.components<A>(separatedBy:)();
  v4 = v0[3];
  if (*(v3 + 16) == 1)
  {
    if ((v4 & 2) == 0)
    {

      return v2;
    }
  }

  else
  {

    if ((v4 & 2) == 0)
    {
      v6 = 1;
      goto LABEL_8;
    }
  }

  v6 = *v1;
LABEL_8:
  v7._countAndFlagsBits = 8224;
  v7._object = 0xE200000000000000;
  v8 = String.init(repeating:count:)(v7, v6);
  result = v8._countAndFlagsBits;
  v9 = *(v3 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = (v3 + 40);
    while (v10 < *(v3 + 16))
    {
      v13 = *(v11 - 1);
      v12 = *v11;

      MEMORY[0x26D69CDB0](v13, v12);

      MEMORY[0x26D69CDB0](v8._countAndFlagsBits, v8._object);

      if (v9 != 1)
      {
        result = MEMORY[0x26D69CDB0](10, 0xE100000000000000);
      }

      v11 += 2;
      ++v10;
      if (!--v9)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    return 0;
  }

  return result;
}

uint64_t *specialized InspectionState.wrapDescription<A>(_:)(uint64_t a1, char a2)
{
  v3 = v2;
  if (a2)
  {
    v4 = 0xE300000000000000;
    v5 = 7104878;
  }

  else
  {
    v21 = &type metadata for TreeRef;
    v22 = &protocol witness table for TreeRef;
    v19 = a1;
    result = __swift_project_boxed_opaque_existential_1(&v19, &type metadata for TreeRef);
    if (__OFSUB__(*v2, 1))
    {
      goto LABEL_21;
    }

    v7 = *result;
    v24 = *v2 - 1;
    v25 = *(v2 + 1);
    v26 = *(v2 + 3);
    v27 = *(v2 + 20);
    v5 = specialized InspectionState.wrapDescription<A>(_:)(v7);
    v4 = v8;
    __swift_destroy_boxed_opaque_existential_1(&v19);
  }

  v19 = v5;
  v20 = v4;
  v23._countAndFlagsBits = 10;
  v23._object = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  v9 = StringProtocol.components<A>(separatedBy:)();
  v10 = v2[3];
  if (*(v9 + 16) == 1)
  {
    if ((v10 & 2) == 0)
    {

      return v5;
    }

    v19 = 0;
    v20 = 0xE000000000000000;
    goto LABEL_11;
  }

  v19 = 0;
  v20 = 0xE000000000000000;
  if ((v10 & 2) != 0)
  {
LABEL_11:
    v11 = *v3;
    goto LABEL_12;
  }

  v11 = 1;
LABEL_12:
  v12._countAndFlagsBits = 8224;
  v12._object = 0xE200000000000000;
  v13 = String.init(repeating:count:)(v12, v11);
  result = v13._countAndFlagsBits;
  v14 = *(v9 + 16);
  if (!v14)
  {
LABEL_18:

    return v19;
  }

  v15 = 0;
  v16 = (v9 + 40);
  while (v15 < *(v9 + 16))
  {
    v18 = *(v16 - 1);
    v17 = *v16;
    v23 = v13;

    MEMORY[0x26D69CDB0](v18, v17);

    MEMORY[0x26D69CDB0](v23._countAndFlagsBits, v23._object);

    if (v14 != 1)
    {
      result = MEMORY[0x26D69CDB0](10, 0xE100000000000000);
    }

    v16 += 2;
    ++v15;
    if (!--v14)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t specialized InspectionState.wrapDescription<A>(_:)(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2[1];
  v18 = *v2;
  v19[0] = v4;
  *(v19 + 10) = *(v2 + 26);
  v5 = Attribute.AttributeType.describe(state:)(&v18, a1);
  *&v18 = v5;
  *(&v18 + 1) = v6;
  lazy protocol witness table accessor for type String and conformance String();
  v7 = StringProtocol.components<A>(separatedBy:)();
  v8 = *(v2 + 3);
  if (*(v7 + 16) == 1)
  {
    if ((v8 & 2) == 0)
    {

      return v5;
    }

    *&v18 = 0;
    *(&v18 + 1) = 0xE000000000000000;
  }

  else
  {

    *&v18 = 0;
    *(&v18 + 1) = 0xE000000000000000;
    if ((v8 & 2) == 0)
    {
      v10 = 1;
      goto LABEL_8;
    }
  }

  v10 = *v3;
LABEL_8:
  v11._countAndFlagsBits = 8224;
  v11._object = 0xE200000000000000;
  v12 = String.init(repeating:count:)(v11, v10);
  result = v12._countAndFlagsBits;
  v13 = *(v7 + 16);
  if (v13)
  {
    v14 = 0;
    v15 = (v7 + 40);
    while (v14 < *(v7 + 16))
    {
      v17 = *(v15 - 1);
      v16 = *v15;

      MEMORY[0x26D69CDB0](v17, v16);

      MEMORY[0x26D69CDB0](v12._countAndFlagsBits, v12._object);

      if (v13 != 1)
      {
        result = MEMORY[0x26D69CDB0](10, 0xE100000000000000);
      }

      v15 += 2;
      ++v14;
      if (!--v13)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    return v18;
  }

  return result;
}

unsigned int *specialized InspectionState.wrapDescription<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if ((a1 & 0x100000000) != 0)
  {
    v8 = 0xE300000000000000;
    v6 = 7104878;
  }

  else
  {
    v21 = a2;
    v22 = a3;
    LODWORD(v19) = a1;
    result = __swift_project_boxed_opaque_existential_1(&v19, a2);
    if (__OFSUB__(*v3, 1))
    {
      goto LABEL_21;
    }

    v24 = *v3 - 1;
    v25 = *(v3 + 1);
    v26 = *(v3 + 3);
    v27 = *(v3 + 20);
    v6 = specialized InspectionState.wrapDescription<A>(_:)();
    v8 = v7;
    __swift_destroy_boxed_opaque_existential_1(&v19);
  }

  v19 = v6;
  v20 = v8;
  v23._countAndFlagsBits = 10;
  v23._object = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  v9 = StringProtocol.components<A>(separatedBy:)();
  v10 = v3[3];
  if (*(v9 + 16) == 1)
  {
    if ((v10 & 2) == 0)
    {

      return v6;
    }

    v19 = 0;
    v20 = 0xE000000000000000;
    goto LABEL_11;
  }

  v19 = 0;
  v20 = 0xE000000000000000;
  if ((v10 & 2) != 0)
  {
LABEL_11:
    v11 = *v4;
    goto LABEL_12;
  }

  v11 = 1;
LABEL_12:
  v12._countAndFlagsBits = 8224;
  v12._object = 0xE200000000000000;
  v13 = String.init(repeating:count:)(v12, v11);
  result = v13._countAndFlagsBits;
  v14 = *(v9 + 16);
  if (!v14)
  {
LABEL_18:

    return v19;
  }

  v15 = 0;
  v16 = (v9 + 40);
  while (v15 < *(v9 + 16))
  {
    v18 = *(v16 - 1);
    v17 = *v16;
    v23 = v13;

    MEMORY[0x26D69CDB0](v18, v17);

    MEMORY[0x26D69CDB0](v23._countAndFlagsBits, v23._object);

    if (v14 != 1)
    {
      result = MEMORY[0x26D69CDB0](10, 0xE100000000000000);
    }

    v16 += 2;
    ++v15;
    if (!--v14)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t specialized InspectionState.wrapDescription<A>(_:)(uint64_t result)
{
  v2 = *v1;
  if (!__OFSUB__(*v1, 1))
  {
    v3 = specialized InspectionState.wrapDescription<A>(_:)(result, specialized ArrayLike.describe(state:));
    lazy protocol witness table accessor for type String and conformance String();
    v4 = StringProtocol.components<A>(separatedBy:)();
    v5 = v1[3];
    if (*(v4 + 16) == 1 && (v5 & 2) == 0)
    {
    }

    else
    {

      if ((v5 & 2) != 0)
      {
        v7 = v2;
      }

      else
      {
        v7 = 1;
      }

      v8._countAndFlagsBits = 8224;
      v8._object = 0xE200000000000000;
      v9 = String.init(repeating:count:)(v8, v7);
      result = v9._countAndFlagsBits;
      v10 = *(v4 + 16);
      if (v10)
      {
        v11 = 0;
        v12 = (v4 + 40);
        while (v11 < *(v4 + 16))
        {
          v14 = *(v12 - 1);
          v13 = *v12;

          MEMORY[0x26D69CDB0](v14, v13);

          MEMORY[0x26D69CDB0](v9._countAndFlagsBits, v9._object);

          if (v10 != 1)
          {
            result = MEMORY[0x26D69CDB0](10, 0xE100000000000000);
          }

          v12 += 2;
          ++v11;
          if (!--v10)
          {
            goto LABEL_16;
          }
        }

        __break(1u);
        goto LABEL_19;
      }

LABEL_16:

      return 0;
    }

    return v3;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t specialized InspectionState.wrapDescription<A>(_:)(_OWORD *a1)
{
  v2 = v1;
  v3 = a1[11];
  v24[12] = a1[10];
  v24[13] = v3;
  v24[14] = a1[12];
  v4 = a1[7];
  v24[8] = a1[6];
  v24[9] = v4;
  v5 = a1[9];
  v24[10] = a1[8];
  v24[11] = v5;
  v6 = a1[3];
  v24[4] = a1[2];
  v24[5] = v6;
  v7 = a1[5];
  v24[6] = a1[4];
  v24[7] = v7;
  v8 = a1[1];
  v24[2] = *a1;
  v24[3] = v8;
  v9 = v1[1];
  v23 = *v1;
  v24[0] = v9;
  *(v24 + 10) = *(v1 + 26);
  v10 = Tree.describe(state:)(&v23);
  *&v23 = v10;
  *(&v23 + 1) = v11;
  lazy protocol witness table accessor for type String and conformance String();
  v12 = StringProtocol.components<A>(separatedBy:)();
  v13 = *(v1 + 3);
  if (*(v12 + 16) == 1)
  {
    if ((v13 & 2) == 0)
    {

      return v10;
    }

    *&v23 = 0;
    *(&v23 + 1) = 0xE000000000000000;
  }

  else
  {

    *&v23 = 0;
    *(&v23 + 1) = 0xE000000000000000;
    if ((v13 & 2) == 0)
    {
      v15 = 1;
      goto LABEL_8;
    }
  }

  v15 = *v2;
LABEL_8:
  v16._countAndFlagsBits = 8224;
  v16._object = 0xE200000000000000;
  v17 = String.init(repeating:count:)(v16, v15);
  result = v17._countAndFlagsBits;
  v18 = *(v12 + 16);
  if (v18)
  {
    v19 = 0;
    v20 = (v12 + 40);
    while (v19 < *(v12 + 16))
    {
      v22 = *(v20 - 1);
      v21 = *v20;

      MEMORY[0x26D69CDB0](v22, v21);

      MEMORY[0x26D69CDB0](v17._countAndFlagsBits, v17._object);

      if (v18 != 1)
      {
        result = MEMORY[0x26D69CDB0](10, 0xE100000000000000);
      }

      v20 += 2;
      ++v19;
      if (!--v18)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    return v23;
  }

  return result;
}

{
  v2 = v1;
  v3 = BufferCompressor.describe(state:)();
  lazy protocol witness table accessor for type String and conformance String();
  v4 = StringProtocol.components<A>(separatedBy:)();
  v5 = v1[3];
  if (*(v4 + 16) == 1)
  {
    if ((v5 & 2) == 0)
    {

      return v3;
    }
  }

  else
  {

    if ((v5 & 2) == 0)
    {
      v7 = 1;
      goto LABEL_8;
    }
  }

  v7 = *v2;
LABEL_8:
  v8._countAndFlagsBits = 8224;
  v8._object = 0xE200000000000000;
  v9 = String.init(repeating:count:)(v8, v7);
  result = v9._countAndFlagsBits;
  v10 = *(v4 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = (v4 + 40);
    while (v11 < *(v4 + 16))
    {
      v14 = *(v12 - 1);
      v13 = *v12;

      MEMORY[0x26D69CDB0](v14, v13);

      MEMORY[0x26D69CDB0](v9._countAndFlagsBits, v9._object);

      if (v10 != 1)
      {
        result = MEMORY[0x26D69CDB0](10, 0xE100000000000000);
      }

      v12 += 2;
      ++v11;
      if (!--v10)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    return 0;
  }

  return result;
}

uint64_t specialized InspectionState.wrapDescription<A>(_:)(uint64_t a1, uint64_t (*a2)(Swift::Int *, uint64_t))
{
  v3 = v2;
  v4 = a2(v2, a1);
  lazy protocol witness table accessor for type String and conformance String();
  v5 = StringProtocol.components<A>(separatedBy:)();
  v6 = v2[3];
  if (*(v5 + 16) == 1)
  {
    if ((v6 & 2) == 0)
    {

      return v4;
    }
  }

  else
  {

    if ((v6 & 2) == 0)
    {
      v8 = 1;
      goto LABEL_8;
    }
  }

  v8 = *v3;
LABEL_8:
  v9._countAndFlagsBits = 8224;
  v9._object = 0xE200000000000000;
  v10 = String.init(repeating:count:)(v9, v8);
  result = v10._countAndFlagsBits;
  v11 = *(v5 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = (v5 + 40);
    while (v12 < *(v5 + 16))
    {
      v15 = *(v13 - 1);
      v14 = *v13;

      MEMORY[0x26D69CDB0](v15, v14);

      MEMORY[0x26D69CDB0](v10._countAndFlagsBits, v10._object);

      if (v11 != 1)
      {
        result = MEMORY[0x26D69CDB0](10, 0xE100000000000000);
      }

      v13 += 2;
      ++v12;
      if (!--v11)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    return 0;
  }

  return result;
}

{
  v3 = v2;
  v4 = a2(v2, a1);
  lazy protocol witness table accessor for type String and conformance String();
  v5 = StringProtocol.components<A>(separatedBy:)();
  v6 = v2[3];
  if (*(v5 + 16) == 1)
  {
    if ((v6 & 2) == 0)
    {

      return v4;
    }
  }

  else
  {

    if ((v6 & 2) == 0)
    {
      v8 = 1;
      goto LABEL_8;
    }
  }

  v8 = *v3;
LABEL_8:
  v9._countAndFlagsBits = 8224;
  v9._object = 0xE200000000000000;
  v10 = String.init(repeating:count:)(v9, v8);
  result = v10._countAndFlagsBits;
  v11 = *(v5 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = (v5 + 40);
    while (v12 < *(v5 + 16))
    {
      v15 = *(v13 - 1);
      v14 = *v13;

      MEMORY[0x26D69CDB0](v15, v14);

      MEMORY[0x26D69CDB0](v10._countAndFlagsBits, v10._object);

      if (v11 != 1)
      {
        result = MEMORY[0x26D69CDB0](10, 0xE100000000000000);
      }

      v13 += 2;
      ++v12;
      if (!--v11)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    return 0;
  }

  return result;
}

uint64_t specialized InspectionState.wrapDescription<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if ((a4 & 0xFF00000000) == 0x200000000)
  {
    v6 = 0xE300000000000000;
    v7 = 7104878;
  }

  else
  {
    v33 = &type metadata for CircularBuffer.Buffer;
    v34 = &protocol witness table for CircularBuffer.Buffer;
    v12 = swift_allocObject();
    v31 = v12;
    *(v12 + 16) = a1;
    *(v12 + 24) = a2;
    *(v12 + 32) = a3;
    *(v12 + 40) = a4;
    *(v12 + 44) = BYTE4(a4) & 1;
    result = __swift_project_boxed_opaque_existential_1(&v31, &type metadata for CircularBuffer.Buffer);
    if (__OFSUB__(*v5, 1))
    {
      goto LABEL_23;
    }

    v14 = *(result + 28);
    v15 = *(result + 24);
    v16 = *(result + 8);
    v17 = *(result + 16);
    v18 = *result;
    v36 = *v5 - 1;
    v37 = *(v5 + 1);
    v38 = *(v5 + 3);
    v39 = *(v5 + 20);
    v19 = 0x100000000;
    if (!v14)
    {
      v19 = 0;
    }

    v7 = specialized InspectionState.wrapDescription<A>(_:)(v18, v16, v17, v19 | v15);
    v6 = v20;
    __swift_destroy_boxed_opaque_existential_1(&v31);
  }

  v31 = v7;
  v32 = v6;
  v35._countAndFlagsBits = 10;
  v35._object = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  v21 = StringProtocol.components<A>(separatedBy:)();
  v22 = v5[3];
  if (*(v21 + 16) == 1)
  {
    if ((v22 & 2) == 0)
    {

      return v7;
    }

    v31 = 0;
    v32 = 0xE000000000000000;
    goto LABEL_13;
  }

  v31 = 0;
  v32 = 0xE000000000000000;
  if ((v22 & 2) != 0)
  {
LABEL_13:
    v23 = *v5;
    goto LABEL_14;
  }

  v23 = 1;
LABEL_14:
  v24._countAndFlagsBits = 8224;
  v24._object = 0xE200000000000000;
  v25 = String.init(repeating:count:)(v24, v23);
  result = v25._countAndFlagsBits;
  v26 = *(v21 + 16);
  if (!v26)
  {
LABEL_20:

    return v31;
  }

  v27 = 0;
  v28 = (v21 + 40);
  while (v27 < *(v21 + 16))
  {
    v30 = *(v28 - 1);
    v29 = *v28;
    v35 = v25;

    MEMORY[0x26D69CDB0](v30, v29);

    MEMORY[0x26D69CDB0](v35._countAndFlagsBits, v35._object);

    if (v26 != 1)
    {
      result = MEMORY[0x26D69CDB0](10, 0xE100000000000000);
    }

    v28 += 2;
    ++v27;
    if (!--v26)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

{
  v5 = v4;
  v6 = v4[1];
  v20 = *v4;
  v21[0] = v6;
  *(v21 + 10) = *(v4 + 26);
  v7 = CircularBuffer.Buffer.describe(state:)(&v20, a1, a2, a3, a4);
  *&v20 = v7;
  *(&v20 + 1) = v8;
  lazy protocol witness table accessor for type String and conformance String();
  v9 = StringProtocol.components<A>(separatedBy:)();
  v10 = *(v4 + 3);
  if (*(v9 + 16) == 1)
  {
    if ((v10 & 2) == 0)
    {

      return v7;
    }

    *&v20 = 0;
    *(&v20 + 1) = 0xE000000000000000;
  }

  else
  {

    *&v20 = 0;
    *(&v20 + 1) = 0xE000000000000000;
    if ((v10 & 2) == 0)
    {
      v12 = 1;
      goto LABEL_8;
    }
  }

  v12 = *v5;
LABEL_8:
  v13._countAndFlagsBits = 8224;
  v13._object = 0xE200000000000000;
  v14 = String.init(repeating:count:)(v13, v12);
  result = v14._countAndFlagsBits;
  v15 = *(v9 + 16);
  if (v15)
  {
    v16 = 0;
    v17 = (v9 + 40);
    while (v16 < *(v9 + 16))
    {
      v19 = *(v17 - 1);
      v18 = *v17;

      MEMORY[0x26D69CDB0](v19, v18);

      MEMORY[0x26D69CDB0](v14._countAndFlagsBits, v14._object);

      if (v15 != 1)
      {
        result = MEMORY[0x26D69CDB0](10, 0xE100000000000000);
      }

      v17 += 2;
      ++v16;
      if (!--v15)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    return v20;
  }

  return result;
}

uint64_t specialized InspectionState.wrapDescription<A>(_:)(uint64_t *a1, uint64_t (*a2)(void *))
{
  v3 = v2;
  v4 = specialized ArrayLike.describe(state:)(v2, a1, a2);
  lazy protocol witness table accessor for type String and conformance String();
  v5 = StringProtocol.components<A>(separatedBy:)();
  v6 = v2[3];
  if (*(v5 + 16) == 1)
  {
    if ((v6 & 2) == 0)
    {

      return v4;
    }
  }

  else
  {

    if ((v6 & 2) == 0)
    {
      v8 = 1;
      goto LABEL_8;
    }
  }

  v8 = *v3;
LABEL_8:
  v9._countAndFlagsBits = 8224;
  v9._object = 0xE200000000000000;
  v10 = String.init(repeating:count:)(v9, v8);
  result = v10._countAndFlagsBits;
  v11 = *(v5 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = (v5 + 40);
    while (v12 < *(v5 + 16))
    {
      v15 = *(v13 - 1);
      v14 = *v13;

      MEMORY[0x26D69CDB0](v15, v14);

      MEMORY[0x26D69CDB0](v10._countAndFlagsBits, v10._object);

      if (v11 != 1)
      {
        result = MEMORY[0x26D69CDB0](10, 0xE100000000000000);
      }

      v13 += 2;
      ++v12;
      if (!--v11)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    return 0;
  }

  return result;
}

uint64_t specialized InspectionState.wrapDescription<A>(_:)(uint64_t a1, uint64_t a2, uint64_t *a3, __int16 a4)
{
  v5 = v4;
  v6 = v4[1];
  v20 = *v4;
  v21[0] = v6;
  *(v21 + 10) = *(v4 + 26);
  v7 = Attachment_Entry.describe(state:)(&v20, a1, a2, a3, a4);
  *&v20 = v7;
  *(&v20 + 1) = v8;
  lazy protocol witness table accessor for type String and conformance String();
  v9 = StringProtocol.components<A>(separatedBy:)();
  v10 = *(v4 + 3);
  if (*(v9 + 16) == 1)
  {
    if ((v10 & 2) == 0)
    {

      return v7;
    }

    *&v20 = 0;
    *(&v20 + 1) = 0xE000000000000000;
  }

  else
  {

    *&v20 = 0;
    *(&v20 + 1) = 0xE000000000000000;
    if ((v10 & 2) == 0)
    {
      v12 = 1;
      goto LABEL_8;
    }
  }

  v12 = *v5;
LABEL_8:
  v13._countAndFlagsBits = 8224;
  v13._object = 0xE200000000000000;
  v14 = String.init(repeating:count:)(v13, v12);
  result = v14._countAndFlagsBits;
  v15 = *(v9 + 16);
  if (v15)
  {
    v16 = 0;
    v17 = (v9 + 40);
    while (v16 < *(v9 + 16))
    {
      v19 = *(v17 - 1);
      v18 = *v17;

      MEMORY[0x26D69CDB0](v19, v18);

      MEMORY[0x26D69CDB0](v14._countAndFlagsBits, v14._object);

      if (v15 != 1)
      {
        result = MEMORY[0x26D69CDB0](10, 0xE100000000000000);
      }

      v17 += 2;
      ++v16;
      if (!--v15)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    return v20;
  }

  return result;
}

uint64_t specialized InspectionState.wrapDescription<A>(_:)(uint64_t a1, uint64_t (*a2)(Swift::Int *))
{
  v3 = v2;
  v4 = a2(v2);
  lazy protocol witness table accessor for type String and conformance String();
  v5 = StringProtocol.components<A>(separatedBy:)();
  v6 = v2[3];
  if (*(v5 + 16) == 1)
  {
    if ((v6 & 2) == 0)
    {

      return v4;
    }
  }

  else
  {

    if ((v6 & 2) == 0)
    {
      v8 = 1;
      goto LABEL_8;
    }
  }

  v8 = *v3;
LABEL_8:
  v9._countAndFlagsBits = 8224;
  v9._object = 0xE200000000000000;
  v10 = String.init(repeating:count:)(v9, v8);
  result = v10._countAndFlagsBits;
  v11 = *(v5 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = (v5 + 40);
    while (v12 < *(v5 + 16))
    {
      v15 = *(v13 - 1);
      v14 = *v13;

      MEMORY[0x26D69CDB0](v15, v14);

      MEMORY[0x26D69CDB0](v10._countAndFlagsBits, v10._object);

      if (v11 != 1)
      {
        result = MEMORY[0x26D69CDB0](10, 0xE100000000000000);
      }

      v13 += 2;
      ++v12;
      if (!--v11)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    return 0;
  }

  return result;
}

char *specialized InspectionState.wrapDescription<A>(_:)(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = specialized ArrayLike.describe(state:)(v3, a1, a2, a3);
  lazy protocol witness table accessor for type String and conformance String();
  v6 = StringProtocol.components<A>(separatedBy:)();
  v7 = v3[3];
  if (*(v6 + 16) == 1)
  {
    if ((v7 & 2) == 0)
    {

      return v5;
    }
  }

  else
  {

    if ((v7 & 2) == 0)
    {
      v9 = 1;
      goto LABEL_8;
    }
  }

  v9 = *v4;
LABEL_8:
  v10._countAndFlagsBits = 8224;
  v10._object = 0xE200000000000000;
  v11 = String.init(repeating:count:)(v10, v9);
  result = v11._countAndFlagsBits;
  v12 = *(v6 + 16);
  if (v12)
  {
    v13 = 0;
    v14 = (v6 + 40);
    while (v13 < *(v6 + 16))
    {
      v16 = *(v14 - 1);
      v15 = *v14;

      MEMORY[0x26D69CDB0](v16, v15);

      MEMORY[0x26D69CDB0](v11._countAndFlagsBits, v11._object);

      if (v12 != 1)
      {
        result = MEMORY[0x26D69CDB0](10, 0xE100000000000000);
      }

      v14 += 2;
      ++v13;
      if (!--v12)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    return 0;
  }

  return result;
}

unint64_t specialized InspectionState.wrapDescription<A>(_:)()
{
  v1 = v0;
  v2 = Tracepoint_Entry.describe(state:)();
  lazy protocol witness table accessor for type String and conformance String();
  v3 = StringProtocol.components<A>(separatedBy:)();
  v4 = v0[3];
  if (*(v3 + 16) == 1)
  {
    if ((v4 & 2) == 0)
    {

      return v2;
    }
  }

  else
  {

    if ((v4 & 2) == 0)
    {
      v6 = 1;
      goto LABEL_8;
    }
  }

  v6 = *v1;
LABEL_8:
  v7._countAndFlagsBits = 8224;
  v7._object = 0xE200000000000000;
  v8 = String.init(repeating:count:)(v7, v6);
  result = v8._countAndFlagsBits;
  v9 = *(v3 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = (v3 + 40);
    while (v10 < *(v3 + 16))
    {
      v13 = *(v11 - 1);
      v12 = *v11;

      MEMORY[0x26D69CDB0](v13, v12);

      MEMORY[0x26D69CDB0](v8._countAndFlagsBits, v8._object);

      if (v9 != 1)
      {
        result = MEMORY[0x26D69CDB0](10, 0xE100000000000000);
      }

      v11 += 2;
      ++v10;
      if (!--v9)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    return 0;
  }

  return result;
}

NSUInteger specialized InspectionState.wrapDescription<A>(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = Interpreter.Range.describe(state:)(a1, a1, a2);
  lazy protocol witness table accessor for type String and conformance String();
  v5 = StringProtocol.components<A>(separatedBy:)();
  v6 = v2[3];
  if (*(v5 + 16) == 1)
  {
    if ((v6 & 2) == 0)
    {

      return v4;
    }
  }

  else
  {

    if ((v6 & 2) == 0)
    {
      v8 = 1;
      goto LABEL_8;
    }
  }

  v8 = *v3;
LABEL_8:
  v9._countAndFlagsBits = 8224;
  v9._object = 0xE200000000000000;
  v10 = String.init(repeating:count:)(v9, v8);
  result = v10._countAndFlagsBits;
  v11 = *(v5 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = (v5 + 40);
    while (v12 < *(v5 + 16))
    {
      v15 = *(v13 - 1);
      v14 = *v13;

      MEMORY[0x26D69CDB0](v15, v14);

      MEMORY[0x26D69CDB0](v10._countAndFlagsBits, v10._object);

      if (v11 != 1)
      {
        result = MEMORY[0x26D69CDB0](10, 0xE100000000000000);
      }

      v13 += 2;
      ++v12;
      if (!--v11)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    return 0;
  }

  return result;
}

uint64_t specialized InspectionState.wrapDescription<A>(_:)(uint64_t a1, char a2)
{
  v3 = v2;
  if (a2)
  {
    v4 = 0;
  }

  else if (*(v2 + 16))
  {
    v5 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x26D69CDB0](v5);

    MEMORY[0x26D69CDB0](41, 0xE100000000000000);
    v4 = 2127912;
  }

  else
  {
    v4 = 0x6C65636E6163;
  }

  lazy protocol witness table accessor for type String and conformance String();
  v6 = StringProtocol.components<A>(separatedBy:)();
  v7 = *(v2 + 24);
  if (*(v6 + 16) == 1)
  {
    if ((v7 & 2) == 0)
    {

      return v4;
    }
  }

  else
  {

    if ((v7 & 2) == 0)
    {
      v8 = 1;
      goto LABEL_13;
    }
  }

  v8 = *v3;
LABEL_13:
  v9._countAndFlagsBits = 8224;
  v9._object = 0xE200000000000000;
  v11 = String.init(repeating:count:)(v9, v8);
  result = v11._countAndFlagsBits;
  v12 = *(v6 + 16);
  if (!v12)
  {
LABEL_19:

    return 0;
  }

  v13 = 0;
  v14 = (v6 + 40);
  while (v13 < *(v6 + 16))
  {
    v16 = *(v14 - 1);
    v15 = *v14;

    MEMORY[0x26D69CDB0](v16, v15);

    MEMORY[0x26D69CDB0](v11._countAndFlagsBits, v11._object);

    if (v12 != 1)
    {
      result = MEMORY[0x26D69CDB0](10, 0xE100000000000000);
    }

    v14 += 2;
    ++v13;
    if (!--v12)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized InspectionState.wrapDescription<A>(_:)(char a1)
{
  v2 = v1;
  if (a1 == 2)
  {
    v3 = 0x6C6961746564;
  }

  else if (a1 == 1)
  {
    v3 = 0x7972616D6D7573;
  }

  else
  {
    if (a1)
    {
      goto LABEL_23;
    }

    v3 = 0x656E696C656D6974;
  }

  lazy protocol witness table accessor for type String and conformance String();
  v4 = StringProtocol.components<A>(separatedBy:)();
  v5 = v1[3];
  if (*(v4 + 16) == 1)
  {
    if ((v5 & 2) == 0)
    {

      return v3;
    }

    goto LABEL_13;
  }

  if ((v5 & 2) != 0)
  {
LABEL_13:
    v6 = *v2;
    goto LABEL_14;
  }

  v6 = 1;
LABEL_14:
  v7._countAndFlagsBits = 8224;
  v7._object = 0xE200000000000000;
  v8 = String.init(repeating:count:)(v7, v6);
  v9 = *(v4 + 16);
  if (!v9)
  {
LABEL_20:

    return 0;
  }

  v10 = 0;
  v11 = (v4 + 40);
  while (v10 < *(v4 + 16))
  {
    v13 = *(v11 - 1);
    v12 = *v11;

    MEMORY[0x26D69CDB0](v13, v12);

    MEMORY[0x26D69CDB0](v8._countAndFlagsBits, v8._object);

    if (v9 != 1)
    {
      MEMORY[0x26D69CDB0](10, 0xE100000000000000);
    }

    v11 += 2;
    ++v10;
    if (!--v9)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_23:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized InspectionState.wrapDescription<A>(_:)(unsigned __int8 a1)
{
  v2 = v1;
  if (a1 <= 2u)
  {
    v6 = 1701603654;
    if (a1 != 1)
    {
      v6 = 0x7275746375727473;
    }

    if (a1)
    {
      v5 = v6;
    }

    else
    {
      v5 = 0x737961776C61;
    }
  }

  else
  {
    v3 = 0x656D686361747461;
    if (a1 != 5)
    {
      v3 = 1885956979;
    }

    v4 = 0xD000000000000011;
    if (a1 != 3)
    {
      v4 = 0x73657461647075;
    }

    if (a1 <= 4u)
    {
      v5 = v4;
    }

    else
    {
      v5 = v3;
    }
  }

  lazy protocol witness table accessor for type String and conformance String();
  v7 = StringProtocol.components<A>(separatedBy:)();
  v8 = v1[3];
  if (*(v7 + 16) == 1)
  {
    if ((v8 & 2) == 0)
    {

      return v5;
    }
  }

  else
  {

    if ((v8 & 2) == 0)
    {
      v9 = 1;
      goto LABEL_21;
    }
  }

  v9 = *v2;
LABEL_21:
  v10._countAndFlagsBits = 8224;
  v10._object = 0xE200000000000000;
  v12 = String.init(repeating:count:)(v10, v9);
  result = v12._countAndFlagsBits;
  v13 = *(v7 + 16);
  if (!v13)
  {
LABEL_27:

    return 0;
  }

  v14 = 0;
  v15 = (v7 + 40);
  while (v14 < *(v7 + 16))
  {
    v17 = *(v15 - 1);
    v16 = *v15;

    MEMORY[0x26D69CDB0](v17, v16);

    MEMORY[0x26D69CDB0](v12._countAndFlagsBits, v12._object);

    if (v13 != 1)
    {
      result = MEMORY[0x26D69CDB0](10, 0xE100000000000000);
    }

    v15 += 2;
    ++v14;
    if (!--v13)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized InspectionState.wrapDescription<A>(_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(Swift::Int *, uint64_t, uint64_t))
{
  v4 = v3;
  v5 = a3(v3, a1, a2);
  lazy protocol witness table accessor for type String and conformance String();
  v6 = StringProtocol.components<A>(separatedBy:)();
  v7 = v3[3];
  if (*(v6 + 16) == 1)
  {
    if ((v7 & 2) == 0)
    {

      return v5;
    }
  }

  else
  {

    if ((v7 & 2) == 0)
    {
      v9 = 1;
      goto LABEL_8;
    }
  }

  v9 = *v4;
LABEL_8:
  v10._countAndFlagsBits = 8224;
  v10._object = 0xE200000000000000;
  v11 = String.init(repeating:count:)(v10, v9);
  result = v11._countAndFlagsBits;
  v12 = *(v6 + 16);
  if (v12)
  {
    v13 = 0;
    v14 = (v6 + 40);
    while (v13 < *(v6 + 16))
    {
      v16 = *(v14 - 1);
      v15 = *v14;

      MEMORY[0x26D69CDB0](v16, v15);

      MEMORY[0x26D69CDB0](v11._countAndFlagsBits, v11._object);

      if (v12 != 1)
      {
        result = MEMORY[0x26D69CDB0](10, 0xE100000000000000);
      }

      v14 += 2;
      ++v13;
      if (!--v12)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    return 0;
  }

  return result;
}

uint64_t specialized InspectionState.wrapDescription<A>(_:)(__int16 a1)
{
  v2 = v1;
  v3 = _s21SwiftUITracingSupport9DefaultedO8describe5stateSSAA15InspectionStateV_tFSb_Ttg5(a1 & 0x1FF);
  lazy protocol witness table accessor for type String and conformance String();
  v4 = StringProtocol.components<A>(separatedBy:)();
  v5 = v1[3];
  if (*(v4 + 16) == 1)
  {
    if ((v5 & 2) == 0)
    {

      return v3;
    }
  }

  else
  {

    if ((v5 & 2) == 0)
    {
      v7 = 1;
      goto LABEL_8;
    }
  }

  v7 = *v2;
LABEL_8:
  v8._countAndFlagsBits = 8224;
  v8._object = 0xE200000000000000;
  v9 = String.init(repeating:count:)(v8, v7);
  result = v9._countAndFlagsBits;
  v10 = *(v4 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = (v4 + 40);
    while (v11 < *(v4 + 16))
    {
      v14 = *(v12 - 1);
      v13 = *v12;

      MEMORY[0x26D69CDB0](v14, v13);

      MEMORY[0x26D69CDB0](v9._countAndFlagsBits, v9._object);

      if (v10 != 1)
      {
        result = MEMORY[0x26D69CDB0](10, 0xE100000000000000);
      }

      v12 += 2;
      ++v11;
      if (!--v10)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    return 0;
  }

  return result;
}

uint64_t specialized Optional.describe(state:)(uint64_t a1)
{
  if (*(v1 + 8) == 1)
  {
    return 7104878;
  }

  v16[3] = &type metadata for BufferCompressor;
  v16[4] = &protocol witness table for BufferCompressor;
  v4 = swift_allocObject();
  v16[0] = v4;
  v5 = v1[3];
  v4[3] = v1[2];
  v4[4] = v5;
  v4[5] = v1[4];
  v6 = v1[1];
  v4[1] = *v1;
  v4[2] = v6;
  result = __swift_project_boxed_opaque_existential_1(v16, &type metadata for BufferCompressor);
  v7 = *(result + 48);
  v18[2] = *(result + 32);
  v18[3] = v7;
  v18[4] = *(result + 64);
  v8 = *(result + 16);
  v18[0] = *result;
  v18[1] = v8;
  v9 = *a1 - 1;
  if (__OFSUB__(*a1, 1))
  {
    __break(1u);
  }

  else
  {
    v20 = *(a1 + 8);
    v21 = *(a1 + 24);
    v10 = v1[2];
    v11 = v1[3];
    v12 = *v1;
    v17[1] = v1[1];
    v17[2] = v10;
    v13 = v1[4];
    v17[3] = v11;
    v17[4] = v13;
    v19 = v9;
    v22 = *(a1 + 40);
    v17[0] = v12;
    outlined init with copy of BufferCompressor(v17, v15);
    v14 = specialized InspectionState.wrapDescription<A>(_:)(v18);
    __swift_destroy_boxed_opaque_existential_1(v16);
    return v14;
  }

  return result;
}

uint64_t specialized Optional.describe(state:)(_OWORD *a1, uint64_t a2)
{
  if ((a2 & 0x100000000) != 0)
  {
    return 7104878;
  }

  v2 = a2;
  v14 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport11Inspectable_pMd, &_s21SwiftUITracingSupport11Inspectable_pMR);
  if (swift_dynamicCast())
  {
    outlined init with take of Inspectable(v13, v15);
    v4 = v16;
    v5 = v17;
    v6 = __swift_project_boxed_opaque_existential_1(v15, v16);
    v7 = a1[1];
    *v13 = *a1;
    *&v13[16] = v7;
    *&v13[26] = *(a1 + 26);
    v11 = InspectionState.describe<A>(_:)(v6, v4, v5, v8, v9, v10);
    __swift_destroy_boxed_opaque_existential_1(v15);
    return v11;
  }

  else
  {
    memset(v13, 0, 40);
    outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v13, &_s21SwiftUITracingSupport11Inspectable_pSgMd, &_s21SwiftUITracingSupport11Inspectable_pSgMR);
    *v13 = v2;
    return String.init<A>(describing:)();
  }
}

uint64_t specialized AttachmentID.Typed<>.describe(state:)(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for String.Encoding();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    return 7104878;
  }

  if (!*(a1 + 16))
  {
    LODWORD(v74) = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport12AttachmentIDV5TypedVy_SSGMd, &_s21SwiftUITracingSupport12AttachmentIDV5TypedVy_SSGMR);
    v74 = String.init<A>(describing:)();
    *&v75 = v23;
    MEMORY[0x26D69CDB0](8992, 0xE200000000000000);
    LODWORD(v93[0]) = a2;
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x26D69CDB0](v24);

    return v74;
  }

  if (*(a1 + 41))
  {
    goto LABEL_70;
  }

  v7 = *(a1 + 32);
  v8 = *(v7 + 116);
  v9 = *(v7 + 176);
  v10 = (v9 + 40);
  v11 = *(v9 + 56);
  v93[0] = *(v9 + 40);
  v93[1] = v11;
  v94[0] = *(v9 + 72);
  v12 = (v9 + 72);
  v13 = (v9 + 84);
  v14 = (v9 + 88);
  v15 = 8 * v8;
  *(v94 + 9) = *(v9 + 81);
  v16 = (v9 + 40);
  v17 = (v9 + 72);
  v18 = (v9 + 84);
  v19 = (v9 + 88);
  v70 = v6;
  v71 = v9;
  while (1)
  {
    v20 = *v19;
    if (v8 < *v18)
    {
      v21 = (*v17 + v15);
      if ((v21[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v20)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v8, 0, v93);
    }

    v17 = (v20 + 32);
    v18 = (v20 + 44);
    v19 = (v20 + 48);
    v16 = v20;
  }

  v25 = *v16;
  if (!v25)
  {
    goto LABEL_67;
  }

  v26 = (v25 + 24 * *v21);
  v27 = *v26;
  v28 = *(*v26 + 196);
  v29 = 0uLL;
  v69 = a1;
  if (v28)
  {
    v30 = *(v27 + 184);
    if (!v30)
    {
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    v31 = v28 - 1;
    if (*(v30 + 32 * (v28 - 1)) >= a2)
    {
      v35 = v28 >> 1;
      v36 = *(v30 + 32 * (v28 >> 1));
      if (v28 != 1 && v36 != a2)
      {
        v38 = *(v27 + 192) | (v28 << 32);
        v68 = *(v27 + 184);
        if (v36 <= a2)
        {
          v40 = v35 + 1;
          v39 = a2;
          v35 = v28;
        }

        else
        {
          v39 = a2;
          v40 = 0;
        }

        v46 = specialized Collection<>.binarySearch(for:)(v39, v40, v35, v30, v38, 0);
        if (v47)
        {
          v35 = v28 - 1;
        }

        else
        {
          v35 = v46;
        }

        v29 = 0uLL;
        v30 = v68;
      }

      v48 = (v30 + 32 * v35);
      v31 = v35;
      while (v35 < v28)
      {
        if (*v48 <= a2)
        {
          goto LABEL_16;
        }

        if (!v31)
        {
          goto LABEL_43;
        }

        --v31;
        v48 -= 8;
        if (v31 > v28)
        {
          __break(1u);
          goto LABEL_43;
        }
      }

      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

LABEL_16:
    v32 = v10[1];
    v91[0] = *v10;
    v91[1] = v32;
    v92[0] = v10[2];
    *(v92 + 9) = *(v10 + 41);
    while (1)
    {
      v33 = *v14;
      if (v8 < *v13)
      {
        v34 = (*v12 + v15);
        if ((v34[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v33)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v8, 0, v91);
      }

      v12 = (v33 + 32);
      v13 = (v33 + 44);
      v14 = (v33 + 48);
      v10 = v33;
    }

    if (!*v10)
    {
      goto LABEL_69;
    }

    v41 = *v10 + 24 * *v34;
    if (v31 >= *(*v41 + 196))
    {
      goto LABEL_61;
    }

    v42 = *(*v41 + 184);
    if (!v42)
    {
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    v43 = (v42 + 32 * v31);
    v44 = *v43;
    v45 = *(v43 + 1);
    v29 = *(v43 + 1);
  }

  else
  {
LABEL_43:
    v44 = 0;
    v45 = 0;
  }

  v82 = 0;
  *&v88 = v8 | 0x200000000;
  *(&v88 + 1) = a2 << 32;
  *&v89 = v44;
  *(&v89 + 1) = v45;
  v90[0] = v29;
  LOBYTE(v90[1]) = 1;
  Interpreter.Iterator.init(_:kind:onEvent:)(v71, &v88, 0, 0, &v74);
  Interpreter.Iterator.read()();
  v88 = v78;
  v89 = v79;
  v90[0] = *v80;
  *(v90 + 9) = *&v80[9];
  v49 = v78;
  v50 = *v80;
  v51 = *&v80[16];
  if (v81 >= *&v80[12])
  {
    goto LABEL_46;
  }

  while (1)
  {
    v52 = (v50 + 8 * v81);
    if ((v52[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_46:
      if (!v51)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v81, 0, &v88);
      }

      v49 = *v51;
      v50 = v51[4];
      v53 = *(v51 + 11);
      v51 = v51[6];
    }

    while (v81 >= v53);
  }

  if (!v49)
  {
    goto LABEL_68;
  }

  v54 = (v49 + 24 * *v52);
  v55 = *v54;
  v56 = *(*v54 + 96);
  if (v56 == 2)
  {
    goto LABEL_62;
  }

  v57 = *(v55 + 104);
  v58 = *(v55 + 88);
  v83 = *(v55 + 72);
  v84 = v58;
  v85 = v56 & 0x101;
  v86 = HIDWORD(v56);
  v87 = v57 & 1;
  v59 = Interpreter.Iterator.AttachmentBuffer.buffer.getter();
  if (v61)
  {
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v62 = v60 - v59;
  if (!v59)
  {
    v62 = 0;
  }

  v72 = v59;
  v73 = v62;
  static String.Encoding.utf8.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSRys5UInt8VGMd, &_sSRys5UInt8VGMR);
  lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type UnsafeBufferPointer<UInt8> and conformance UnsafeBufferPointer<A>, &_sSRys5UInt8VGMd, &_sSRys5UInt8VGMR, MEMORY[0x277D836F8]);
  v63 = String.init<A>(bytes:encoding:)();
  if (!v64)
  {
    goto LABEL_64;
  }

  v65 = v63;
  v66 = v64;
  specialized EvolutionTable.deallocate()();
  if (__OFSUB__(*v69, 1))
  {
    goto LABEL_60;
  }

  v74 = *v69 - 1;
  v75 = *(v69 + 8);
  v76 = *(v69 + 24);
  v77 = *(v69 + 40);
  v67 = specialized InspectionState.wrapDescription<A>(_:)(v65, v66);

  return v67;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 25;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 3);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC21SwiftUITracingSupport8IntervalV_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 17;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 4);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AF10ChangelistC2IdOAF10Subforest2V4ItemVG_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 29;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 2);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_21SwiftUITracingSupport10ChangelistC2IdOt_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21SwiftUITracingSupport10ChangelistC2IdOtGMd, &_ss23_ContiguousArrayStorageCySi_21SwiftUITracingSupport10ChangelistC2IdOtGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC21SwiftUITracingSupport5PTypeV5FieldV_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 1;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 5);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC21SwiftUITracingSupport4HostC16ClientConnectionV_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport4HostC16ClientConnectionVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport4HostC16ClientConnectionVGMR);
  v4 = *(type metadata accessor for Host.ClientConnection(0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, uint64_t a2, uint64_t a3, char *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AC10ChangelistC2IdOAC10Subforest2V4ItemVGGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AC10ChangelistC2IdOAC10Subforest2V4ItemVGGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport8EventRefVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport8EventRefVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport5PTypeV5FieldVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport5PTypeV5FieldVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport11SubgraphRefVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport11SubgraphRefVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySnySiGGMd, &_ss23_ContiguousArrayStorageCySnySiGGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport12AttributeRefVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport12AttributeRefVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport16EventAbstraction_pXp_AC0H8PositionVtGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport16EventAbstraction_pXp_AC0H8PositionVtGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AC09AggregateH7ElementOyAC5EventV2IdVGAC9MergeOnceVyAC0nH5StatsVGGGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AC09AggregateH7ElementOyAC5EventV2IdVGAC9MergeOnceVyAC0nH5StatsVGGGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AC09AggregateH7ElementOyAC04ViewH0V8TElementOGAC9MergeOnceVyAC05EventH5StatsVGGGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AC09AggregateH7ElementOyAC04ViewH0V8TElementOGAC9MergeOnceVyAC05EventH5StatsVGGGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport10Tracepoint_pXpGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport10Tracepoint_pXpGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport10Attachment_pXpGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport10Attachment_pXpGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AC10ChangelistC2IdOAC10Subforest2V4ItemVG5index_ytSi11returnAfterSi5depthtGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AC10ChangelistC2IdOAC10Subforest2V4ItemVG5index_ytSi11returnAfterSi5depthtGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport8EventRefV5index_ytSi11returnAfterSi5depthtGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport8EventRefV5index_ytSi11returnAfterSi5depthtGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySi_21SwiftUITracingSupport10ChangelistC2IdOtGMd, &_ss23_ContiguousArrayStorageCySi_21SwiftUITracingSupport10ChangelistC2IdOtGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport14CircularBufferV0H0VGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport14CircularBufferV0H0VGMR);
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
      v14 = v13 - 29;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 2);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
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
    v12 = MEMORY[0x277D84F90];
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
    v12 = MEMORY[0x277D84F90];
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
    *(v12 + 3) = 2 * ((v13 - 32) / 24);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[24 * v10])
    {
      memmove(v14, v15, 24 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 24 * v10);
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
    *(v12 + 3) = 2 * ((v13 - 32) / 24);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  v16 = 24 * v10;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v16])
    {
      memmove(v14, v15, v16);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v16);
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
      v14 = v13 - 1;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 5);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  v17 = 32 * v10;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[v17])
    {
      memmove(v15, v16, v17);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, v17);
  }

  return v12;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3, char *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AC10ChangelistC2IdOAC10Subforest2V4ItemVG5index_ytSi5depthtGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AC10ChangelistC2IdOAC10Subforest2V4ItemVG5index_ytSi5depthtGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport8EventRefV5index_ytSi5depthtGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport8EventRefV5index_ytSi5depthtGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport9ARTraceV3V9TraceinfoV17NetworkTimeDomainV9SyncPointVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport9ARTraceV3V9TraceinfoV17NetworkTimeDomainV9SyncPointVGMR);
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport10TraceChunkVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport10TraceChunkVGMR, type metadata accessor for TraceChunk);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport4HostC16ClientConnectionVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport4HostC16ClientConnectionVGMR, type metadata accessor for Host.ClientConnection);
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyy21SwiftUITracingSupport5TraceVzcGMd, &_ss23_ContiguousArrayStorageCyy21SwiftUITracingSupport5TraceVzcGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_syycMd, &_syycMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5Int32V_s5Int64V16uncompressedSizeSiSg010compressedG0SStGMd, &_ss23_ContiguousArrayStorageCys5Int32V_s5Int64V16uncompressedSizeSiSg010compressedG0SStGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Int32V_s5Int64V16uncompressedSizeSiSg010compressedD0SStMd, &_ss5Int32V_s5Int64V16uncompressedSizeSiSg010compressedD0SStMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo13AGTreeElementa5index_21SwiftUITracingSupport14writeTreeState8subgraph6handleySo13AGSubgraphRefa_AF5TraceV0G2UIVztF7ContextL_VSi11returnAfterSi5depthtGMd, &_ss23_ContiguousArrayStorageCySo13AGTreeElementa5index_21SwiftUITracingSupport14writeTreeState8subgraph6handleySo13AGSubgraphRefa_AF5TraceV0G2UIVztF7ContextL_VSi11returnAfterSi5depthtGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13AGTreeElementa5index_21SwiftUITracingSupport14writeTreeState8subgraph6handleySo13AGSubgraphRefa_AD5TraceV0D2UIVztF7ContextL_VSi11returnAfterSi5depthtMd, &_sSo13AGTreeElementa5index_21SwiftUITracingSupport14writeTreeState8subgraph6handleySo13AGSubgraphRefa_AD5TraceV0D2UIVztF7ContextL_VSi11returnAfterSi5depthtMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo13AGTreeElementa5index_21SwiftUITracingSupport14writeTreeState8subgraph6handleySo13AGSubgraphRefa_AF5TraceV0G2UIVztF7ContextL_VSi5depthtGMd, &_ss23_ContiguousArrayStorageCySo13AGTreeElementa5index_21SwiftUITracingSupport14writeTreeState8subgraph6handleySo13AGSubgraphRefa_AF5TraceV0G2UIVztF7ContextL_VSi5depthtGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13AGTreeElementa5index_21SwiftUITracingSupport14writeTreeState8subgraph6handleySo13AGSubgraphRefa_AD5TraceV0D2UIVztF7ContextL_VSi5depthtMd, &_sSo13AGTreeElementa5index_21SwiftUITracingSupport14writeTreeState8subgraph6handleySo13AGSubgraphRefa_AD5TraceV0D2UIVztF7ContextL_VSi5depthtMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *specialized _ArrayBuffer._consumeAndCreateNew()(void *a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport4HostC16ClientConnectionVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport4HostC16ClientConnectionVGMR, type metadata accessor for Host.ClientConnection);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

uint64_t specialized closure #1 in implicit closure #1 in IterativeTreeTraversal.backtrace()(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_26C328DC0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport7TreeRefVSgMd, &_s21SwiftUITracingSupport7TreeRefVSgMR);
  v3 = String.init<A>(describing:)();
  *(v2 + 56) = MEMORY[0x277D837D0];
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  print(_:separator:terminator:)();
}

uint64_t specialized static IntervalSet.== infix(_:_:)(int64x2_t *a1, int64x2_t *a2)
{
  v2 = a1[1].i64[0];
  if (v2 != a2[1].i64[0])
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = a1 + 2;
  v4 = a2 + 2;
  do
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    v8 = vmovn_s64(vceqq_s64(v6, v7));
    if ((v8.i8[0] & v8.i8[4] & 1) == 0)
    {
      break;
    }

    --v2;
  }

  while (v2);
  return v8.i8[0] & v8.i8[4] & 1;
}

uint64_t specialized Interpreter.Control.Events.describe(state:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v13 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v3 = v13;
    v5 = a2 + 40;
    do
    {
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x26D69CDB0](538979616, 0xE400000000000000);
      _print_unlocked<A, B>(_:_:)();
      v7 = *(v13 + 16);
      v6 = *(v13 + 24);
      if (v7 >= v6 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
      }

      v5 += 48;
      *(v13 + 16) = v7 + 1;
      v8 = v13 + 16 * v7;
      *(v8 + 32) = 0;
      *(v8 + 40) = 0xE000000000000000;
      --v2;
    }

    while (v2);
  }

  v9 = MEMORY[0x26D69CFC0](v3, MEMORY[0x277D837D0]);
  v11 = v10;

  MEMORY[0x26D69CDB0](v9, v11);

  MEMORY[0x26D69CDB0](41, 0xE100000000000000);
  return 0x206B6361747328;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 16 * result + 16 * a3;
  v10 = (v6 + 32 + 16 * a2);
  if (result != v10 || result >= v10 + 16 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 16 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 24 * result + 24 * a3;
  v10 = (v6 + 32 + 24 * a2);
  v11 = 24 * v9;
  if (result != v10 || result >= v10 + v11)
  {
    v13 = a3;
    result = memmove(result, v10, v11);
    a3 = v13;
  }

  v14 = *(v6 + 16);
  v8 = __OFADD__(v14, v5);
  v15 = v14 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v15;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 32 * result + 32 * a3;
  v10 = (v6 + 32 + 32 * a2);
  v11 = 32 * v9;
  if (result != v10 || result >= v10 + v11)
  {
    v13 = a3;
    result = memmove(result, v10, v11);
    a3 = v13;
  }

  v14 = *(v6 + 16);
  v8 = __OFADD__(v14, v5);
  v15 = v14 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v15;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC21SwiftUITracingSupport19ViewGraphRootValuesV_AC12AttributeRefVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy21SwiftUITracingSupport19ViewGraphRootValuesVAC12AttributeRefVGMd, &_ss18_DictionaryStorageCy21SwiftUITracingSupport19ViewGraphRootValuesVAC12AttributeRefVGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 36); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 2 * result) = v5;
      *(v3[7] + 4 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_21SwiftUITracingSupport9TreeValueV8PositionVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS21SwiftUITracingSupport9TreeValueV8PositionVGMd, &_ss18_DictionaryStorageCySS21SwiftUITracingSupport9TreeValueV8PositionVGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 6)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 4 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So14T_TracepointIDa21SwiftUITracingSupportE5FlagsVTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 24)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of ResourceSet<Interpreter, ()>(v4, &v13, &_sSS_yptMd, &_sSS_yptMR);
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void specialized ResourceSet.data.setter(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 24) - 8) + 24))(v2 + *(a2 + 40), a1);

  ResourceSet.post()();
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t outlined assign with take of ResourceSet<Interpreter, ()>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport11ResourceSetVyAA11InterpreterCytGMd, &_s21SwiftUITracingSupport11ResourceSetVyAA11InterpreterCytGMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of TraceChunk(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TraceChunk(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of TraceChunk(uint64_t a1)
{
  v2 = type metadata accessor for TraceChunk(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void partial apply for specialized closure #1 in Atomic.subscript.modify()
{
  v1 = *(v0 + 16);
  *(v1 + 4) = 0;
  os_unfair_lock_unlock(v1);
}

void partial apply for closure #1 in Interpreter.updateSnapshot(for:kind:generation:onEvent:)(_BYTE *a1@<X8>)
{
  partial apply for closure #1 in Interpreter.updateSnapshot(for:kind:generation:onEvent:)(a1);
}

{
  Interpreter._updateSnapshot(_:_:_:onEvent:)(*(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64));
  *a1 = v3 & 1;
}

unint64_t lazy protocol witness table accessor for type Trace.SwiftUI and conformance Trace.SwiftUI()
{
  result = lazy protocol witness table cache variable for type Trace.SwiftUI and conformance Trace.SwiftUI;
  if (!lazy protocol witness table cache variable for type Trace.SwiftUI and conformance Trace.SwiftUI)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Trace.SwiftUI and conformance Trace.SwiftUI);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Interpreter.Storage.Types.Iterator and conformance Interpreter.Storage.Types.Iterator()
{
  result = lazy protocol witness table cache variable for type Interpreter.Storage.Types.Iterator and conformance Interpreter.Storage.Types.Iterator;
  if (!lazy protocol witness table cache variable for type Interpreter.Storage.Types.Iterator and conformance Interpreter.Storage.Types.Iterator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Interpreter.Storage.Types.Iterator and conformance Interpreter.Storage.Types.Iterator);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttachmentID and conformance AttachmentID()
{
  result = lazy protocol witness table cache variable for type AttachmentID and conformance AttachmentID;
  if (!lazy protocol witness table cache variable for type AttachmentID and conformance AttachmentID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttachmentID and conformance AttachmentID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttachmentID and conformance AttachmentID;
  if (!lazy protocol witness table cache variable for type AttachmentID and conformance AttachmentID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttachmentID and conformance AttachmentID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttachmentID and conformance AttachmentID;
  if (!lazy protocol witness table cache variable for type AttachmentID and conformance AttachmentID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttachmentID and conformance AttachmentID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttachmentID and conformance AttachmentID;
  if (!lazy protocol witness table cache variable for type AttachmentID and conformance AttachmentID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttachmentID and conformance AttachmentID);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Interpreter.Request and conformance Interpreter.Request()
{
  result = lazy protocol witness table cache variable for type Interpreter.Request and conformance Interpreter.Request;
  if (!lazy protocol witness table cache variable for type Interpreter.Request and conformance Interpreter.Request)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Interpreter.Request and conformance Interpreter.Request);
  }

  return result;
}

void *sub_26C1B411C(void *result, void *a2)
{
  if (a2[1] < *result)
  {
    __break(1u);
  }

  else
  {
    *a2 = *result;
  }

  return result;
}

void *sub_26C1B4144(void *result, void *a2)
{
  if (*result < *a2)
  {
    __break(1u);
  }

  else
  {
    a2[1] = *result;
  }

  return result;
}

uint64_t sub_26C1B4160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *(a2 + a3 - 8);
  v8 = type metadata accessor for ResourceSet(0, *(a2 + a3 - 16), v7, a4);
  v9 = *(*(v7 - 8) + 16);
  v10 = a1 + *(v8 + 40);

  return v9(a5, v10, v7);
}

__n128 sub_26C1B4230(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_26C1B426C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(a1 + 136);
  v4 = v2[1];
  v3 = v2[2];
  v15[0] = *v2;
  v15[1] = v4;
  v15[2] = v3;
  v5 = v2[6];
  v7 = v2[3];
  v6 = v2[4];
  v15[5] = v2[5];
  v15[6] = v5;
  v15[3] = v7;
  v15[4] = v6;
  v8 = v2[1];
  *a2 = *v2;
  a2[1] = v8;
  v9 = v2[2];
  v10 = v2[3];
  v11 = v2[6];
  a2[5] = v2[5];
  a2[6] = v11;
  v12 = v2[4];
  a2[3] = v10;
  a2[4] = v12;
  a2[2] = v9;
  return outlined init with copy of Interpreter.Storage.Types(v15, &v14);
}

uint64_t sub_26C1B42D8(_OWORD *a1, uint64_t a2)
{
  v2 = a1[1];
  v20[0] = *a1;
  v20[1] = v2;
  v4 = a1[6];
  v6 = a1[3];
  v5 = a1[4];
  v7 = v5;
  v24 = a1[5];
  v3 = v24;
  v25 = v4;
  v23 = v5;
  v8 = a1[3];
  v9 = *a1;
  v10 = a1[1];
  v21 = a1[2];
  v11 = v21;
  v22 = v8;
  v12 = *(a2 + 136);
  v13 = *v12;
  v14 = v12[2];
  v26[1] = v12[1];
  v26[2] = v14;
  v26[0] = v13;
  v15 = v12[3];
  v16 = v12[4];
  v17 = v12[6];
  v26[5] = v12[5];
  v26[6] = v17;
  v26[3] = v15;
  v26[4] = v16;
  v12[4] = v7;
  v12[5] = v3;
  v12[6] = a1[6];
  *v12 = v9;
  v12[1] = v10;
  v12[2] = v11;
  v12[3] = v6;
  outlined init with copy of Interpreter.Storage.Types(v20, &v19);
  return outlined destroy of Interpreter.Storage.Types(v26);
}

uint64_t sub_26C1B43A4@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectUnownedLoadStrong();
  *a2 = result;
  return result;
}

__n128 sub_26C1B443C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
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

__n128 sub_26C1B4474(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
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

uint64_t sub_26C1B44AC@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(unsigned int *a1@<X0>, uint64_t *a2@<X8>)@<X8>)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@unowned UInt32) -> (@owned String);
  a2[1] = v5;
}

uint64_t sub_26C1B451C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = thunk for @escaping @callee_guaranteed (@unowned UInt32, @unowned UInt64) -> (@owned String)partial apply;
  a2[1] = v5;
}

uint64_t sub_26C1B458C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@unowned UInt32, @unowned UInt64) -> (@owned String);
  a2[1] = v5;
}

uint64_t type metadata completion function for ResourceSet(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Unowned(255, *(a1 + 16), a3, a4);
  v4 = type metadata accessor for Array();
  result = type metadata accessor for Unique(319, v4, v5, v6);
  if (v8 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v9 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ResourceSet(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 40) & ~v6) + *(*(*(a3 + 24) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      v15 = (a1 + 15) & 0xFFFFFFFFFFFFFFF8;
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((v15 + v6 + 32) & ~v6);
      }

      v16 = *(v15 + 24);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void storeEnumTagSinglePayload for ResourceSet(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 40) & ~v9) + *(*(*(a4 + 24) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  v19 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v7 & 0x80000000) != 0)
  {
    v20 = *(v6 + 56);

    v20((v19 + v9 + 32) & ~v9);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    v19[2] = 0;
    v19[3] = 0;
    *v19 = a2 & 0x7FFFFFFF;
    v19[1] = 0;
  }

  else
  {
    v19[3] = a2 - 1;
  }
}

__n128 __swift_memcpy125_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 109) = *(a2 + 109);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Interpreter.SwiftUI(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 125))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 104);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for Interpreter.SwiftUI(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 124) = 0;
    *(result + 120) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 125) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 125) = 0;
    }

    if (a2)
    {
      *(result + 104) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy192_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = result;
  *(a1 + 144) = v9;
  return result;
}

uint64_t getEnumTagSinglePayload for Interpreter.Storage(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[192])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for Interpreter.Storage(uint64_t result, unsigned int a2, unsigned int a3)
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
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 192) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 192) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Interpreter.Storage.Mode(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for Interpreter.Storage.Mode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t getEnumTagSinglePayload for Interpreter.Storage.Types(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Interpreter.Storage.Types(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy24_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Interpreter.Storage.Types.Iterator(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Interpreter.Storage.Types.Iterator(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy201_8(uint64_t a1, uint64_t a2)
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
  *(a1 + 185) = *(a2 + 185);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Interpreter.Context(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 201))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for Interpreter.Context(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 184) = 0u;
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
    *(result + 200) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 201) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 201) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Interpreter.Context.AttachmentIndex(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 32))
  {
    return (*a1 + 2);
  }

  if (*(a1 + 8))
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for Interpreter.Context.AttachmentIndex(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Interpreter.Symbols(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Interpreter.Symbols(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Interpreter.Request(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for Interpreter.Request(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for Interpreter.Control(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Interpreter.Control(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Interpreter.TreeAbstractionCache(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
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

uint64_t storeEnumTagSinglePayload for Interpreter.TreeAbstractionCache(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Interpreter.Storage.Types.TypeMatchKey and conformance Interpreter.Storage.Types.TypeMatchKey()
{
  result = lazy protocol witness table cache variable for type Interpreter.Storage.Types.TypeMatchKey and conformance Interpreter.Storage.Types.TypeMatchKey;
  if (!lazy protocol witness table cache variable for type Interpreter.Storage.Types.TypeMatchKey and conformance Interpreter.Storage.Types.TypeMatchKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Interpreter.Storage.Types.TypeMatchKey and conformance Interpreter.Storage.Types.TypeMatchKey);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Trace.Control and conformance Trace.Control()
{
  result = lazy protocol witness table cache variable for type Trace.Control and conformance Trace.Control;
  if (!lazy protocol witness table cache variable for type Trace.Control and conformance Trace.Control)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Trace.Control and conformance Trace.Control);
  }

  return result;
}

uint64_t sub_26C1B5560()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed UInt32, @in_guaranteed UInt64) -> (@out String)(int a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v7 = a1;
  v6 = a2;
  v3(&v5, &v7, &v6);
  return v5;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@unowned UInt32, @unowned UInt64) -> (@owned String)@<X0>(unsigned int *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  result = (*(v3 + 16))(*a1, *a2);
  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed UInt32) -> (@out String)(int a1)
{
  v2 = *(v1 + 16);
  v5 = a1;
  v2(&v4, &v5);
  return v4;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@unowned UInt32) -> (@owned String)@<X0>(unsigned int *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t outlined assign with copy of ResourceSet<Interpreter, ()>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport11ResourceSetVyAA11InterpreterCytGMd, &_s21SwiftUITracingSupport11ResourceSetVyAA11InterpreterCytGMR);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void *specialized Interpreter.init(chunk:symbols:owner:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v107 = a1;
  v106 = a3;
  v4 = type metadata accessor for TraceChunk(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v104 = *(v7 - 8);
  v105 = v7;
  MEMORY[0x28223BE20](v7);
  v103 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v9);
  v10 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v10 - 8);
  LODWORD(v98) = *a2;
  v11 = *(a2 + 8);
  v100 = *(a2 + 24);
  v101 = v11;
  v99 = *(a2 + 40);
  v102 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  static DispatchQoS.unspecified.getter();
  v126[0] = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR, MEMORY[0x277D83970]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v104 + 104))(v103, *MEMORY[0x277D85260], v105);
  v13 = v107;
  v12 = v108;
  *(v12 + 32) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  swift_beginAccess();
  swift_unknownObjectUnownedInit();
  v14 = TraceChunk.dataBufferPointer.getter();
  v16 = v15;
  outlined init with copy of TraceChunk(v13, v6);
  v17 = _s21SwiftUITracingSupport6StrongVyACyxGxcfCAA10TraceChunkV_Tt0g5(v6);
  outlined init with copy of TraceChunk(v17, v6);
  v18 = *(*v6 + 32);
  v86 = v6;
  outlined destroy of TraceChunk(v6);
  result = specialized T_Header.init(loadedFrom:)(v18, &v112);
  v20 = v113;
  if (v113 - 3 < 0xFFFFFFFE)
  {
    __break(1u);
    goto LABEL_36;
  }

  v106 = *v13;
  result = specialized T_Header.init(loadedFrom:)(*(v106 + 32), &v114);
  v21 = v115;
  if (v115 - 3 < 0xFFFFFFFE)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v103 = v17;
  v104 = v16;
  v105 = v14;
  v22 = MEMORY[0x277D84F90];
  v102 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA14EvolutionTableV5EntryVyAA11InterpreterC8IteratorV4ModeV_G_SayAQGTt0g5Tf4g_n();
  v97 = v23;
  v24 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCs6UInt32VSg_SayAIGTt0g5Tf4g_n(v22);
  v95 = v25;
  v96 = v24;
  v94 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCs6UInt32VSg_SayAIGTt0g5Tf4g_n(v22);
  v27 = v26;
  v28 = swift_slowAlloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport11InterpreterC0C0V5TypesV7KeypathVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport11InterpreterC0C0V5TypesV7KeypathVGMR);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_26C328DC0;
  *(v29 + 32) = xmmword_26C32E070;
  v30 = 1;
  *(v29 + 48) = 1;
  *(v29 + 52) = -1;
  v31 = swift_slowAlloc();
  *v31 = 0;
  *(v31 + 4) = 0;
  os_unfair_lock_lock_with_options();
  os_unfair_lock_assert_owner(v31);
  if (*(v31 + 5))
  {
    __break(1u);
    goto LABEL_34;
  }

  v93 = v21 != 1;
  v32 = MEMORY[0x277D84F98];
  v88 = v20 != 1;
  v91 = v27;
  v92 = HIDWORD(v27);
  v33 = v95;
  v34 = v97;
  v89 = HIDWORD(v97);
  v90 = HIDWORD(v95);
  *(v31 + 8) = MEMORY[0x277D84F98];
  *(v31 + 5) = 1;
  os_unfair_lock_unlock(v31);
  v152[0] = v28;
  v152[1] = 1000;
  v152[2] = v29;
  v152[3] = v32;
  v152[4] = v22;
  v153 = v98;
  v154 = v101;
  v155 = v100;
  v156 = v99;
  v157 = 0;
  v158 = v31;
  _s21SwiftUITracingSupport6StrongVyACyxGxcfCAA11InterpreterC7StorageV5TypesV_Tt0B5(v152);
  *&v101 = v35;
  *&v99 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA7TreeRefV_SayAHGTt0g5Tf4g_n();
  v37 = v36;
  *&v100 = HIDWORD(v36);
  v87 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA7TreeRefV_SayAHGTt0g5Tf4g_n();
  v39 = v38;
  v98 = HIDWORD(v38);
  v40 = _s21SwiftUITracingSupport6StrongVyACyxGxcfCSDySiAA17UnsafeTreeNodeRefV5TypedVy_AA09AggregateF7ElementOyAA5EventV2IdVGAA9MergeOnceVyAA0lF5StatsVGGG_Tt0g5_0(v22);
  v41 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA12AttributeRefV_SayAHGTt0g5Tf4g_n(v22);
  v43 = v42;
  v44 = HIDWORD(v42);
  v45 = swift_slowAlloc();
  *v45 = v41;
  *(v45 + 8) = v43;
  *(v45 + 12) = v44;
  v46 = _s21SwiftUITracingSupport6StrongVyACyxGxcfCSDySiAA17UnsafeTreeNodeRefV5TypedVy_AA09AggregateF7ElementOyAA5EventV2IdVGAA9MergeOnceVyAA0lF5StatsVGGG_Tt0g5_0(MEMORY[0x277D84F98]);
  v111 = 0;
  LOBYTE(v126[0]) = v88;
  v126[1] = v105;
  v126[2] = v104;
  v126[3] = v103;
  v127 = 0;
  v128 = v102;
  v129 = v34;
  v130 = v89;
  v131 = v96;
  v132 = v33;
  v133 = v90;
  v134 = v94;
  v135 = v91;
  v136 = v92;
  v137 = 0;
  v138 = v93;
  v139 = v99;
  v140 = v37;
  v141 = v100;
  v142 = v87;
  v143 = v39;
  v30 = v108;
  v144 = v98;
  v145 = v101;
  v146 = v40;
  v147 = 0;
  v148 = 1;
  v149 = 0;
  v150 = v45;
  v151 = v46;
  _s21SwiftUITracingSupport6StrongVyACyxGxcfCAA11InterpreterC7StorageV_Tt0B5(v126);
  v48 = v47;
  *(v30 + 24) = v47;
  specialized T_Header.init(loadedFrom:)(*(v106 + 32), &v116);
  *(*(v48 + 136) + 40) = v117;
  v49 = lazy protocol witness table accessor for type Interpreter.Control and conformance Interpreter.Control();
  v50 = *(v30 + 24);
  v51 = *(v49 + 16);

  specialized EvolutionTable.add(_:impl:)(0x8000000287CD69E8, v51, 0, v50 + 40, v30);

  v52 = *(v30 + 24);
  if (*(v52 + 32))
  {
    v53 = &v121;
    specialized T_Header.init()(&v120);
  }

  else
  {
    v53 = &v119;
    v54 = v86;
    outlined init with copy of TraceChunk(*(v52 + 24), v86);
    v55 = *(*v54 + 32);
    outlined destroy of TraceChunk(v54);
    specialized T_Header.init(loadedFrom:)(v55, &v118);
  }

  v56 = *v53;
  if (v56 == 1)
  {
    v57 = lazy protocol witness table accessor for type Interpreter.SwiftUI and conformance Interpreter.SwiftUI();
    v58 = *(v30 + 24);
    v59 = *(v57 + 16);
    v60 = (v58 + 40);

    specialized EvolutionTable.add(_:impl:)(0x8000000287CD6370, v59, 0, v58 + 40, v30);

    v61 = *(v58 + 56);
    v124[0] = *(v58 + 40);
    v124[1] = v61;
    v125[0] = *(v58 + 72);
    v62 = v58 + 56;
    v63 = (v58 + 68);
    v64 = (v58 + 88);
    *(v125 + 9) = *(v58 + 81);
    v65 = (v58 + 40);
    v66 = (v58 + 56);
    v67 = (v58 + 68);
    v68 = (v58 + 88);
    while (1)
    {
      v69 = *v68;
      if (*v67)
      {
        v70 = *v66;
        if ((v70[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v69)
      {
        goto LABEL_15;
      }

      v66 = (v69 + 16);
      v67 = (v69 + 28);
      v68 = (v69 + 48);
      v65 = v69;
    }

    v71 = *v65;
    if (v71)
    {
      v72 = (v71 + 24 * *v70);
      v73 = v60[1];
      v122[0] = *v60;
      v122[1] = v73;
      v123[0] = v60[2];
      *(v123 + 9) = *(v60 + 41);
      while (1)
      {
        v74 = *v64;
        if (*v63 > 1u && (*(*v62 + 12) & 1) == 0)
        {
          break;
        }

        if (!v74)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(1, 1, v122);
        }

        v62 = v74 + 16;
        v63 = (v74 + 28);
        v64 = (v74 + 48);
        v60 = v74;
      }

      if (*v60)
      {
        v27 = v107;
        v75 = *(*v60 + 24 * *(*v62 + 8));
        *(v75 + 104) = *v72 + 56;
        *(v75 + 168) = *v72 + 120;
        goto LABEL_25;
      }

LABEL_38:
      __break(1u);
      return result;
    }

LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v27 = v107;
  if (v56 != 2)
  {
    __break(1u);
LABEL_15:
    specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v124);
  }

LABEL_25:
  if (one-time initialization token for shared != -1)
  {
LABEL_34:
    swift_once();
  }

  v76 = static Interpreters.shared;
  os_unfair_lock_lock_with_options();
  outlined init with copy of ResourceSet<Interpreter, ()>(&v76[2], v110, &_s21SwiftUITracingSupport11ResourceSetVyAA11InterpreterCytGMd, &_s21SwiftUITracingSupport11ResourceSetVyAA11InterpreterCytGMR);
  os_unfair_lock_unlock(v76);
  v77 = v110[0];
  v78 = *v110[0];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v77 = v78;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v78 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v78 + 2) + 1, 1, v78, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport7UnownedVyAC11InterpreterCGGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport7UnownedVyAC11InterpreterCGGMR);
    *v77 = v78;
  }

  v81 = *(v78 + 2);
  v80 = *(v78 + 3);
  if (v81 >= v80 >> 1)
  {
    v78 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v80 > 1), v81 + 1, 1, v78, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport7UnownedVyAC11InterpreterCGGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport7UnownedVyAC11InterpreterCGGMR);
    *v77 = v78;
  }

  *(v78 + 2) = v81 + 1;
  *&v78[8 * v81 + 32] = v30;
  v82 = [objc_opt_self() defaultCenter];
  if (one-time initialization token for resourceSetDidChange != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v83 = static NSNotificationName.resourceSetDidChange;
  outlined init with copy of ResourceSet<Interpreter, ()>(v110, &v109, &_s21SwiftUITracingSupport11ResourceSetVyAA11InterpreterCytGMd, &_s21SwiftUITracingSupport11ResourceSetVyAA11InterpreterCytGMR);
  v84 = v83;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport11ResourceSetVyAA11InterpreterCytGMd, &_s21SwiftUITracingSupport11ResourceSetVyAA11InterpreterCytGMR);
  [v82 postNotificationName:v84 object:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

  swift_unknownObjectRelease();
  outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v110, &_s21SwiftUITracingSupport11ResourceSetVyAA11InterpreterCytGMd, &_s21SwiftUITracingSupport11ResourceSetVyAA11InterpreterCytGMR);
  outlined destroy of TraceChunk(v27);
  return v30;
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2)
{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, &_ss23_ContiguousArrayStorageCySi_21SwiftUITracingSupport10ChangelistC2IdOtGMd, &_ss23_ContiguousArrayStorageCySi_21SwiftUITracingSupport10ChangelistC2IdOtGMR, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport14CircularBufferV0H0VGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport14CircularBufferV0H0VGMR, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = *v6;
  v9 = *(*v6 + 16);
  if (v9 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v10 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v11 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v12 = v9 + v11;
  if (__OFADD__(v9, v11))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if (!isUniquelyReferenced_nonNull_native || v12 > *(v8 + 24) >> 1)
  {
    v8 = a5();
    *v6 = v8;
  }

  result = a6(v10, a2, 0);
  *v6 = v8;
  return result;
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

uint64_t outlined init with copy of ResourceSet<Interpreter, ()>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for Host.ClientConnection(0);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t specialized Array.replaceSubrange<A>(_:with:)(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v10, 1, v4, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport4HostC16ClientConnectionVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport4HostC16ClientConnectionVGMR, type metadata accessor for Host.ClientConnection);
    *v2 = v4;
  }

  result = specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_26C1B688C()
{
  if (*(v0 + 80))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

unint64_t lazy protocol witness table accessor for type Interpreter.Control and conformance Interpreter.Control()
{
  result = lazy protocol witness table cache variable for type Interpreter.Control and conformance Interpreter.Control;
  if (!lazy protocol witness table cache variable for type Interpreter.Control and conformance Interpreter.Control)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Interpreter.Control and conformance Interpreter.Control);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Interpreter.SwiftUI and conformance Interpreter.SwiftUI()
{
  result = lazy protocol witness table cache variable for type Interpreter.SwiftUI and conformance Interpreter.SwiftUI;
  if (!lazy protocol witness table cache variable for type Interpreter.SwiftUI and conformance Interpreter.SwiftUI)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Interpreter.SwiftUI and conformance Interpreter.SwiftUI);
  }

  return result;
}

uint64_t outlined init with take of TraceChunk(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TraceChunk(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for specialized thunk for @callee_guaranteed (@in_guaranteed A, @inout B, @inout IterativeTreeTraversal<A, B>) -> ()(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 8);
  v5 = *a1;
  v6 = v3;
  return v2(&v5);
}

{
  v2 = *(v1 + 16);
  v3 = *(a1 + 8);
  v4 = *(a1 + 3);
  v5 = a1[2];
  v6 = *(a1 + 6);
  v8 = *a1;
  v9 = v3;
  v10 = v4;
  v11 = v5;
  v12 = v6;
  return v2(&v8);
}

{
  v2 = *(v1 + 16);
  v4 = *a1;
  return v2(&v4);
}

uint64_t outlined copy of (@escaping @callee_guaranteed (@unowned Double) -> ())?(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t partial apply for specialized thunk for @escaping @callee_guaranteed (@guaranteed IterativeTreeTraversal<A, B>, @in_guaranteed A, @in_guaranteed B, @unowned Int, @unowned Int) -> ()(uint64_t a1, uint64_t *a2)
{
  v3 = *(v2 + 16);
  v4 = *(a1 + 48);
  v16[2] = *(a1 + 32);
  v16[3] = v4;
  v16[4] = *(a1 + 64);
  v17 = *(a1 + 80);
  v5 = *(a1 + 16);
  v16[0] = *a1;
  v16[1] = v5;
  v6 = *(a2 + 8);
  v7 = a2[2];
  v8 = *(a2 + 24);
  v9 = a2[4];
  v10 = a2[5];
  v14 = *a2;
  v15 = v6;
  v12 = v7;
  v13 = v8;
  return v3(v16, &v14, &v12, v9, v10);
}

uint64_t type metadata accessor for OS_dispatch_queue(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IteratorData #1 in Interpreter.Storage.abstractViewTree(within:)(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 25))
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

uint64_t storeEnumTagSinglePayload for IteratorData #1 in Interpreter.Storage.abstractViewTree(within:)(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_21SwiftUITracingSupport5EventVAA8SnapshotVSVIegyyd_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for Interpreter.Control.Events(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Interpreter.Control.Events(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t specialized Interpreter.Iterator.subscript.getter(uint64_t result)
{
  v2 = result;
  v3 = *(v1 + 116);
  v4 = *(v1 + 176);
  v5 = (v4 + 40);
  v6 = *(v4 + 56);
  v85[0] = *(v4 + 40);
  v85[1] = v6;
  v86[0] = *(v4 + 72);
  v7 = (v4 + 72);
  v8 = (v4 + 84);
  v9 = (v4 + 88);
  v10 = 8 * v3;
  *(v86 + 9) = *(v4 + 81);
  v11 = (v4 + 40);
  v12 = (v4 + 72);
  v13 = (v4 + 84);
  v14 = (v4 + 88);
  v65 = result;
  while (1)
  {
    v15 = *v14;
    if (v3 < *v13)
    {
      v16 = (*v12 + v10);
      if ((v16[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v15)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v3, 0, v85);
    }

    v12 = (v15 + 32);
    v13 = (v15 + 44);
    v14 = (v15 + 48);
    v11 = v15;
  }

  v17 = *v11;
  if (!v17)
  {
    goto LABEL_69;
  }

  result = v17 + 24 * *v16;
  v18 = *result;
  v19 = *(*result + 196);
  v20 = 0uLL;
  if (!v19)
  {
LABEL_38:
    v38 = 0;
    v39 = 0;
    goto LABEL_39;
  }

  v21 = *(v18 + 184);
  if (!v21)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v22 = v19 - 1;
  if (*(v21 + 32 * (v19 - 1)) >= v2)
  {
    v30 = v19 >> 1;
    v31 = *(v21 + 32 * (v19 >> 1));
    if (v19 != 1 && v31 != v2)
    {
      if (v31 <= v2)
      {
        v34 = v30 + 1;
        v33 = v2;
        v30 = v19;
      }

      else
      {
        v33 = v2;
        v34 = 0;
      }

      result = specialized Collection<>.binarySearch(for:)(v33, v34, v30, v21, *(v18 + 192) | (v19 << 32), 0);
      if (v40)
      {
        v30 = v19 - 1;
      }

      else
      {
        v30 = result;
      }

      v2 = v65;
      v20 = 0uLL;
    }

    v41 = (v21 + 32 * v30);
    v22 = v30;
    while (v30 < v19)
    {
      if (*v41 <= v2)
      {
        goto LABEL_11;
      }

      if (!v22)
      {
        goto LABEL_38;
      }

      --v22;
      v41 -= 8;
      if (v22 > v19)
      {
        __break(1u);
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

LABEL_11:
  v23 = *(v4 + 56);
  v83[0] = *v5;
  v83[1] = v23;
  v84[0] = *(v4 + 72);
  *(v84 + 9) = *(v4 + 81);
  v24 = (v4 + 40);
  v25 = (v4 + 72);
  v26 = (v4 + 84);
  v27 = (v4 + 88);
  while (1)
  {
    v28 = *v27;
    if (v3 < *v26)
    {
      v29 = (*v25 + v10);
      if ((v29[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v28)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v3, 0, v83);
    }

    v25 = (v28 + 32);
    v26 = (v28 + 44);
    v27 = (v28 + 48);
    v24 = v28;
  }

  v35 = *v24;
  if (!v35)
  {
    goto LABEL_73;
  }

  result = v35 + 24 * *v29;
  if (v22 >= *(*result + 196))
  {
    goto LABEL_64;
  }

  v36 = *(*result + 184);
  if (!v36)
  {
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v37 = (v36 + 32 * v22);
  v38 = *v37;
  v39 = *(v37 + 1);
  v20 = *(v37 + 1);
LABEL_39:
  v71 = 0;
  *&v80 = v3 | 0x1400000000;
  *(&v80 + 1) = v2 << 32;
  *&v81 = v38;
  *(&v81 + 1) = v39;
  *v82 = v20;
  v82[16] = 1;
  Interpreter.Iterator.init(_:kind:onEvent:)(v4, &v80, 0, 0, v66);
  Interpreter.Iterator.read()();
  v80 = v67;
  v81 = v68;
  *v82 = *v69;
  *&v82[9] = *&v69[9];
  v42 = v67;
  v43 = *v69;
  result = v70;
  v44 = *&v69[16];
  if (v70 >= *&v69[12])
  {
    goto LABEL_41;
  }

  while (1)
  {
    v45 = (v43 + 8 * v70);
    if ((v45[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_41:
      if (!v44)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v70, 0, &v80);
      }

      v42 = *v44;
      v43 = v44[4];
      v46 = *(v44 + 11);
      v44 = v44[6];
    }

    while (v70 >= v46);
  }

  if (!v42)
  {
    goto LABEL_70;
  }

  result = v42 + 24 * *v45;
  v47 = *result;
  v48 = *(*result + 96);
  if (v48 == 2)
  {
    goto LABEL_65;
  }

  v49 = *(v47 + 104);
  v50 = *(v47 + 88);
  v75[2] = *(v47 + 72);
  v76 = v50;
  v77 = v48 & 0x101;
  v78 = HIDWORD(v48);
  v79 = v49 & 1;
  result = Interpreter.Iterator.AttachmentBuffer.buffer.getter();
  if (v52)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v53 = result;
  v54 = v5[1];
  v74[0] = *v5;
  v74[1] = v54;
  v75[0] = v5[2];
  *(v75 + 9) = *(v5 + 41);
  while (1)
  {
    v55 = *v9;
    if (v3 < *v8)
    {
      v56 = (*v7 + v10);
      if ((v56[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v55)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v3, 0, v74);
    }

    v7 = (v55 + 32);
    v8 = (v55 + 44);
    v9 = (v55 + 48);
    v5 = v55;
  }

  if (*v5)
  {
    result = *v5 + 24 * *v56;
    v57 = *result;
    v58 = (*result + 120);
    v59 = *(*result + 136);
    v72[0] = *v58;
    v72[1] = v59;
    v73[0] = *(v57 + 152);
    *(v73 + 9) = *(v57 + 161);
    v60 = v57 + 152;
    v61 = (v57 + 164);
    v62 = (v57 + 168);
    while (1)
    {
      v63 = *v62;
      if (*v61 >= 0x15u && (*(*v60 + 164) & 1) == 0)
      {
        break;
      }

      if (!v63)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(20, 0, v72);
      }

      v60 = v63 + 32;
      v61 = (v63 + 44);
      v62 = (v63 + 48);
      v58 = v63;
    }

    if (*v58)
    {
      v64 = _s21SwiftUITracingSupport16BufferAttachmentV7pointer8fileSizeACyxGSW_SitcfCSo13T_RawTreeNodea_Tt1g5Tf4nd_n(v53, v51);
      specialized EvolutionTable.deallocate()();
      return v64;
    }

    goto LABEL_72;
  }

LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
  return result;
}

{
  v2 = result;
  v3 = *(v1 + 116);
  v4 = *(v1 + 176);
  v5 = (v4 + 40);
  v6 = *(v4 + 56);
  v85[0] = *(v4 + 40);
  v85[1] = v6;
  v86[0] = *(v4 + 72);
  v7 = (v4 + 72);
  v8 = (v4 + 84);
  v9 = (v4 + 88);
  v10 = 8 * v3;
  *(v86 + 9) = *(v4 + 81);
  v11 = (v4 + 40);
  v12 = (v4 + 72);
  v13 = (v4 + 84);
  v14 = (v4 + 88);
  v65 = result;
  while (1)
  {
    v15 = *v14;
    if (v3 < *v13)
    {
      v16 = (*v12 + v10);
      if ((v16[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v15)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v3, 0, v85);
    }

    v12 = (v15 + 32);
    v13 = (v15 + 44);
    v14 = (v15 + 48);
    v11 = v15;
  }

  v17 = *v11;
  if (!v17)
  {
    goto LABEL_69;
  }

  result = v17 + 24 * *v16;
  v18 = *result;
  v19 = *(*result + 196);
  v20 = 0uLL;
  if (!v19)
  {
LABEL_38:
    v38 = 0;
    v39 = 0;
    goto LABEL_39;
  }

  v21 = *(v18 + 184);
  if (!v21)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v22 = v19 - 1;
  if (*(v21 + 32 * (v19 - 1)) >= v2)
  {
    v30 = v19 >> 1;
    v31 = *(v21 + 32 * (v19 >> 1));
    if (v19 != 1 && v31 != v2)
    {
      if (v31 <= v2)
      {
        v34 = v30 + 1;
        v33 = v2;
        v30 = v19;
      }

      else
      {
        v33 = v2;
        v34 = 0;
      }

      result = specialized Collection<>.binarySearch(for:)(v33, v34, v30, v21, *(v18 + 192) | (v19 << 32), 0);
      if (v40)
      {
        v30 = v19 - 1;
      }

      else
      {
        v30 = result;
      }

      v2 = v65;
      v20 = 0uLL;
    }

    v41 = (v21 + 32 * v30);
    v22 = v30;
    while (v30 < v19)
    {
      if (*v41 <= v2)
      {
        goto LABEL_11;
      }

      if (!v22)
      {
        goto LABEL_38;
      }

      --v22;
      v41 -= 8;
      if (v22 > v19)
      {
        __break(1u);
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

LABEL_11:
  v23 = *(v4 + 56);
  v83[0] = *v5;
  v83[1] = v23;
  v84[0] = *(v4 + 72);
  *(v84 + 9) = *(v4 + 81);
  v24 = (v4 + 40);
  v25 = (v4 + 72);
  v26 = (v4 + 84);
  v27 = (v4 + 88);
  while (1)
  {
    v28 = *v27;
    if (v3 < *v26)
    {
      v29 = (*v25 + v10);
      if ((v29[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v28)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v3, 0, v83);
    }

    v25 = (v28 + 32);
    v26 = (v28 + 44);
    v27 = (v28 + 48);
    v24 = v28;
  }

  v35 = *v24;
  if (!v35)
  {
    goto LABEL_73;
  }

  result = v35 + 24 * *v29;
  if (v22 >= *(*result + 196))
  {
    goto LABEL_64;
  }

  v36 = *(*result + 184);
  if (!v36)
  {
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v37 = (v36 + 32 * v22);
  v38 = *v37;
  v39 = *(v37 + 1);
  v20 = *(v37 + 1);
LABEL_39:
  v71 = 0;
  *&v80 = v3 | 0x1500000000;
  *(&v80 + 1) = v2 << 32;
  *&v81 = v38;
  *(&v81 + 1) = v39;
  *v82 = v20;
  v82[16] = 1;
  Interpreter.Iterator.init(_:kind:onEvent:)(v4, &v80, 0, 0, v66);
  Interpreter.Iterator.read()();
  v80 = v67;
  v81 = v68;
  *v82 = *v69;
  *&v82[9] = *&v69[9];
  v42 = v67;
  v43 = *v69;
  result = v70;
  v44 = *&v69[16];
  if (v70 >= *&v69[12])
  {
    goto LABEL_41;
  }

  while (1)
  {
    v45 = (v43 + 8 * v70);
    if ((v45[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_41:
      if (!v44)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v70, 0, &v80);
      }

      v42 = *v44;
      v43 = v44[4];
      v46 = *(v44 + 11);
      v44 = v44[6];
    }

    while (v70 >= v46);
  }

  if (!v42)
  {
    goto LABEL_70;
  }

  result = v42 + 24 * *v45;
  v47 = *result;
  v48 = *(*result + 96);
  if (v48 == 2)
  {
    goto LABEL_65;
  }

  v49 = *(v47 + 104);
  v50 = *(v47 + 88);
  v75[2] = *(v47 + 72);
  v76 = v50;
  v77 = v48 & 0x101;
  v78 = HIDWORD(v48);
  v79 = v49 & 1;
  result = Interpreter.Iterator.AttachmentBuffer.buffer.getter();
  if (v52)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v53 = result;
  v54 = v5[1];
  v74[0] = *v5;
  v74[1] = v54;
  v75[0] = v5[2];
  *(v75 + 9) = *(v5 + 41);
  while (1)
  {
    v55 = *v9;
    if (v3 < *v8)
    {
      v56 = (*v7 + v10);
      if ((v56[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v55)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v3, 0, v74);
    }

    v7 = (v55 + 32);
    v8 = (v55 + 44);
    v9 = (v55 + 48);
    v5 = v55;
  }

  if (*v5)
  {
    result = *v5 + 24 * *v56;
    v57 = *result;
    v58 = (*result + 120);
    v59 = *(*result + 136);
    v72[0] = *v58;
    v72[1] = v59;
    v73[0] = *(v57 + 152);
    *(v73 + 9) = *(v57 + 161);
    v60 = v57 + 152;
    v61 = (v57 + 164);
    v62 = (v57 + 168);
    while (1)
    {
      v63 = *v62;
      if (*v61 >= 0x16u && (*(*v60 + 172) & 1) == 0)
      {
        break;
      }

      if (!v63)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(21, 0, v72);
      }

      v60 = v63 + 32;
      v61 = (v63 + 44);
      v62 = (v63 + 48);
      v58 = v63;
    }

    if (*v58)
    {
      v64 = _s21SwiftUITracingSupport16BufferAttachmentV7pointer8fileSizeACyxGSW_SitcfCSo15T_TreeValueNodea_Tt1g5Tf4nd_n(v53, v51);
      specialized EvolutionTable.deallocate()();
      return v64;
    }

    goto LABEL_72;
  }

LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
  return result;
}

{
  v2 = result;
  v3 = *(v1 + 116);
  v4 = *(v1 + 176);
  v5 = (v4 + 40);
  v6 = *(v4 + 56);
  v85[0] = *(v4 + 40);
  v85[1] = v6;
  v86[0] = *(v4 + 72);
  v7 = (v4 + 72);
  v8 = (v4 + 84);
  v9 = (v4 + 88);
  v10 = 8 * v3;
  *(v86 + 9) = *(v4 + 81);
  v11 = (v4 + 40);
  v12 = (v4 + 72);
  v13 = (v4 + 84);
  v14 = (v4 + 88);
  v65 = result;
  while (1)
  {
    v15 = *v14;
    if (v3 < *v13)
    {
      v16 = (*v12 + v10);
      if ((v16[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v15)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v3, 0, v85);
    }

    v12 = (v15 + 32);
    v13 = (v15 + 44);
    v14 = (v15 + 48);
    v11 = v15;
  }

  v17 = *v11;
  if (!v17)
  {
    goto LABEL_69;
  }

  result = v17 + 24 * *v16;
  v18 = *result;
  v19 = *(*result + 196);
  v20 = 0uLL;
  if (!v19)
  {
LABEL_38:
    v38 = 0;
    v39 = 0;
    goto LABEL_39;
  }

  v21 = *(v18 + 184);
  if (!v21)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v22 = v19 - 1;
  if (*(v21 + 32 * (v19 - 1)) >= v2)
  {
    v30 = v19 >> 1;
    v31 = *(v21 + 32 * (v19 >> 1));
    if (v19 != 1 && v31 != v2)
    {
      if (v31 <= v2)
      {
        v34 = v30 + 1;
        v33 = v2;
        v30 = v19;
      }

      else
      {
        v33 = v2;
        v34 = 0;
      }

      result = specialized Collection<>.binarySearch(for:)(v33, v34, v30, v21, *(v18 + 192) | (v19 << 32), 0);
      if (v40)
      {
        v30 = v19 - 1;
      }

      else
      {
        v30 = result;
      }

      v2 = v65;
      v20 = 0uLL;
    }

    v41 = (v21 + 32 * v30);
    v22 = v30;
    while (v30 < v19)
    {
      if (*v41 <= v2)
      {
        goto LABEL_11;
      }

      if (!v22)
      {
        goto LABEL_38;
      }

      --v22;
      v41 -= 8;
      if (v22 > v19)
      {
        __break(1u);
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

LABEL_11:
  v23 = *(v4 + 56);
  v83[0] = *v5;
  v83[1] = v23;
  v84[0] = *(v4 + 72);
  *(v84 + 9) = *(v4 + 81);
  v24 = (v4 + 40);
  v25 = (v4 + 72);
  v26 = (v4 + 84);
  v27 = (v4 + 88);
  while (1)
  {
    v28 = *v27;
    if (v3 < *v26)
    {
      v29 = (*v25 + v10);
      if ((v29[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v28)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v3, 0, v83);
    }

    v25 = (v28 + 32);
    v26 = (v28 + 44);
    v27 = (v28 + 48);
    v24 = v28;
  }

  v35 = *v24;
  if (!v35)
  {
    goto LABEL_73;
  }

  result = v35 + 24 * *v29;
  if (v22 >= *(*result + 196))
  {
    goto LABEL_64;
  }

  v36 = *(*result + 184);
  if (!v36)
  {
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v37 = (v36 + 32 * v22);
  v38 = *v37;
  v39 = *(v37 + 1);
  v20 = *(v37 + 1);
LABEL_39:
  v71 = 0;
  *&v80 = v3 | 0x500000000;
  *(&v80 + 1) = v2 << 32;
  *&v81 = v38;
  *(&v81 + 1) = v39;
  *v82 = v20;
  v82[16] = 1;
  Interpreter.Iterator.init(_:kind:onEvent:)(v4, &v80, 0, 0, v66);
  Interpreter.Iterator.read()();
  v80 = v67;
  v81 = v68;
  *v82 = *v69;
  *&v82[9] = *&v69[9];
  v42 = v67;
  v43 = *v69;
  result = v70;
  v44 = *&v69[16];
  if (v70 >= *&v69[12])
  {
    goto LABEL_41;
  }

  while (1)
  {
    v45 = (v43 + 8 * v70);
    if ((v45[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_41:
      if (!v44)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v70, 0, &v80);
      }

      v42 = *v44;
      v43 = v44[4];
      v46 = *(v44 + 11);
      v44 = v44[6];
    }

    while (v70 >= v46);
  }

  if (!v42)
  {
    goto LABEL_70;
  }

  result = v42 + 24 * *v45;
  v47 = *result;
  v48 = *(*result + 96);
  if (v48 == 2)
  {
    goto LABEL_65;
  }

  v49 = *(v47 + 104);
  v50 = *(v47 + 88);
  v75[2] = *(v47 + 72);
  v76 = v50;
  v77 = v48 & 0x101;
  v78 = HIDWORD(v48);
  v79 = v49 & 1;
  result = Interpreter.Iterator.AttachmentBuffer.buffer.getter();
  if (v52)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v53 = result;
  v54 = v5[1];
  v74[0] = *v5;
  v74[1] = v54;
  v75[0] = v5[2];
  *(v75 + 9) = *(v5 + 41);
  while (1)
  {
    v55 = *v9;
    if (v3 < *v8)
    {
      v56 = (*v7 + v10);
      if ((v56[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v55)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v3, 0, v74);
    }

    v7 = (v55 + 32);
    v8 = (v55 + 44);
    v9 = (v55 + 48);
    v5 = v55;
  }

  if (*v5)
  {
    result = *v5 + 24 * *v56;
    v57 = *result;
    v58 = (*result + 120);
    v59 = *(*result + 136);
    v72[0] = *v58;
    v72[1] = v59;
    v73[0] = *(v57 + 152);
    *(v73 + 9) = *(v57 + 161);
    v60 = v57 + 152;
    v61 = (v57 + 164);
    v62 = (v57 + 168);
    while (1)
    {
      v63 = *v62;
      if (*v61 >= 6u && (*(*v60 + 44) & 1) == 0)
      {
        break;
      }

      if (!v63)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(5, 0, v72);
      }

      v60 = v63 + 32;
      v61 = (v63 + 44);
      v62 = (v63 + 48);
      v58 = v63;
    }

    if (*v58)
    {
      v64 = _s21SwiftUITracingSupport16BufferAttachmentV7pointer8fileSizeACyxGSW_SitcfCSo11T_TypeFielda_Tt1g5Tf4nd_n(v53, v51);
      specialized EvolutionTable.deallocate()();
      return v64;
    }

    goto LABEL_72;
  }

LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
  return result;
}

{
  v2 = result;
  v3 = *(v1 + 116);
  v4 = *(v1 + 176);
  v5 = (v4 + 40);
  v6 = *(v4 + 56);
  v85[0] = *(v4 + 40);
  v85[1] = v6;
  v86[0] = *(v4 + 72);
  v7 = (v4 + 72);
  v8 = (v4 + 84);
  v9 = (v4 + 88);
  v10 = 8 * v3;
  *(v86 + 9) = *(v4 + 81);
  v11 = (v4 + 40);
  v12 = (v4 + 72);
  v13 = (v4 + 84);
  v14 = (v4 + 88);
  v65 = result;
  while (1)
  {
    v15 = *v14;
    if (v3 < *v13)
    {
      v16 = (*v12 + v10);
      if ((v16[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v15)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v3, 0, v85);
    }

    v12 = (v15 + 32);
    v13 = (v15 + 44);
    v14 = (v15 + 48);
    v11 = v15;
  }

  v17 = *v11;
  if (!v17)
  {
    goto LABEL_69;
  }

  result = v17 + 24 * *v16;
  v18 = *result;
  v19 = *(*result + 196);
  v20 = 0uLL;
  if (!v19)
  {
LABEL_38:
    v38 = 0;
    v39 = 0;
    goto LABEL_39;
  }

  v21 = *(v18 + 184);
  if (!v21)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v22 = v19 - 1;
  if (*(v21 + 32 * (v19 - 1)) >= v2)
  {
    v30 = v19 >> 1;
    v31 = *(v21 + 32 * (v19 >> 1));
    if (v19 != 1 && v31 != v2)
    {
      if (v31 <= v2)
      {
        v34 = v30 + 1;
        v33 = v2;
        v30 = v19;
      }

      else
      {
        v33 = v2;
        v34 = 0;
      }

      result = specialized Collection<>.binarySearch(for:)(v33, v34, v30, v21, *(v18 + 192) | (v19 << 32), 0);
      if (v40)
      {
        v30 = v19 - 1;
      }

      else
      {
        v30 = result;
      }

      v2 = v65;
      v20 = 0uLL;
    }

    v41 = (v21 + 32 * v30);
    v22 = v30;
    while (v30 < v19)
    {
      if (*v41 <= v2)
      {
        goto LABEL_11;
      }

      if (!v22)
      {
        goto LABEL_38;
      }

      --v22;
      v41 -= 8;
      if (v22 > v19)
      {
        __break(1u);
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

LABEL_11:
  v23 = *(v4 + 56);
  v83[0] = *v5;
  v83[1] = v23;
  v84[0] = *(v4 + 72);
  *(v84 + 9) = *(v4 + 81);
  v24 = (v4 + 40);
  v25 = (v4 + 72);
  v26 = (v4 + 84);
  v27 = (v4 + 88);
  while (1)
  {
    v28 = *v27;
    if (v3 < *v26)
    {
      v29 = (*v25 + v10);
      if ((v29[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v28)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v3, 0, v83);
    }

    v25 = (v28 + 32);
    v26 = (v28 + 44);
    v27 = (v28 + 48);
    v24 = v28;
  }

  v35 = *v24;
  if (!v35)
  {
    goto LABEL_73;
  }

  result = v35 + 24 * *v29;
  if (v22 >= *(*result + 196))
  {
    goto LABEL_64;
  }

  v36 = *(*result + 184);
  if (!v36)
  {
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v37 = (v36 + 32 * v22);
  v38 = *v37;
  v39 = *(v37 + 1);
  v20 = *(v37 + 1);
LABEL_39:
  v71 = 0;
  *&v80 = v3 | 0x400000000;
  *(&v80 + 1) = v2 << 32;
  *&v81 = v38;
  *(&v81 + 1) = v39;
  *v82 = v20;
  v82[16] = 1;
  Interpreter.Iterator.init(_:kind:onEvent:)(v4, &v80, 0, 0, v66);
  Interpreter.Iterator.read()();
  v80 = v67;
  v81 = v68;
  *v82 = *v69;
  *&v82[9] = *&v69[9];
  v42 = v67;
  v43 = *v69;
  result = v70;
  v44 = *&v69[16];
  if (v70 >= *&v69[12])
  {
    goto LABEL_41;
  }

  while (1)
  {
    v45 = (v43 + 8 * v70);
    if ((v45[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_41:
      if (!v44)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v70, 0, &v80);
      }

      v42 = *v44;
      v43 = v44[4];
      v46 = *(v44 + 11);
      v44 = v44[6];
    }

    while (v70 >= v46);
  }

  if (!v42)
  {
    goto LABEL_70;
  }

  result = v42 + 24 * *v45;
  v47 = *result;
  v48 = *(*result + 96);
  if (v48 == 2)
  {
    goto LABEL_65;
  }

  v49 = *(v47 + 104);
  v50 = *(v47 + 88);
  v75[2] = *(v47 + 72);
  v76 = v50;
  v77 = v48 & 0x101;
  v78 = HIDWORD(v48);
  v79 = v49 & 1;
  result = Interpreter.Iterator.AttachmentBuffer.buffer.getter();
  if (v52)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v53 = result;
  v54 = v5[1];
  v74[0] = *v5;
  v74[1] = v54;
  v75[0] = v5[2];
  *(v75 + 9) = *(v5 + 41);
  while (1)
  {
    v55 = *v9;
    if (v3 < *v8)
    {
      v56 = (*v7 + v10);
      if ((v56[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v55)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v3, 0, v74);
    }

    v7 = (v55 + 32);
    v8 = (v55 + 44);
    v9 = (v55 + 48);
    v5 = v55;
  }

  if (*v5)
  {
    result = *v5 + 24 * *v56;
    v57 = *result;
    v58 = (*result + 120);
    v59 = *(*result + 136);
    v72[0] = *v58;
    v72[1] = v59;
    v73[0] = *(v57 + 152);
    *(v73 + 9) = *(v57 + 161);
    v60 = v57 + 152;
    v61 = (v57 + 164);
    v62 = (v57 + 168);
    while (1)
    {
      v63 = *v62;
      if (*v61 >= 5u && (*(*v60 + 36) & 1) == 0)
      {
        break;
      }

      if (!v63)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(4, 0, v72);
      }

      v60 = v63 + 32;
      v61 = (v63 + 44);
      v62 = (v63 + 48);
      v58 = v63;
    }

    if (*v58)
    {
      v64 = _s21SwiftUITracingSupport16BufferAttachmentV7pointer8fileSizeACyxGSW_SitcfCSo17T_ValueDefinitiona_Tt1g5Tf4nd_n(v53, v51);
      specialized EvolutionTable.deallocate()();
      return v64;
    }

    goto LABEL_72;
  }

LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
  return result;
}

void specialized closure #2 in implicit closure #1 in EvolutionTable.add(_:impl:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  Interpreter.Iterator.Mode.init(name:version:)(a2, a3, v10);
  _s21SwiftUITracingSupport6StrongVyACyxGxcfCAA11InterpreterC8IteratorV4ModeV_Tt0B5(v10);
  v7 = v6;
  if (*(a1 + 12) == *(a1 + 8))
  {
    specialized UnsafeArray.growToCapacity(_:)();
  }

  if (*a1)
  {
    v8 = *(a1 + 12);
    v9 = *a1 + 24 * v8;
    *v9 = v7;
    *(v9 + 8) = 0;
    *(v9 + 12) = 1;
    *(v9 + 16) = 0;
    *(v9 + 20) = 1;
    if (v8 != -1)
    {
      *(a1 + 12) = v8 + 1;
      return;
    }

    __break(1u);
  }

  __break(1u);
}

{
  v10 = *(a1 + 56);

  Interpreter.Context.init(name:version:)(a2, a3, &v10, v11);
  _s21SwiftUITracingSupport6StrongVyACyxGxcfCAA11InterpreterC7ContextV_Tt0B5(v11);
  v7 = v6;
  if (*(a1 + 12) == *(a1 + 8))
  {
    specialized UnsafeArray.growToCapacity(_:)();
  }

  if (*a1)
  {
    v8 = *(a1 + 12);
    v9 = *a1 + 24 * v8;
    *v9 = v7;
    *(v9 + 8) = 0;
    *(v9 + 12) = 1;
    *(v9 + 16) = 0;
    *(v9 + 20) = 1;
    if (v8 != -1)
    {
      *(a1 + 12) = v8 + 1;
      return;
    }

    __break(1u);
  }

  __break(1u);
}

{
  v6 = swift_slowAlloc();
  *v6 = a2;
  v6[1] = a3;
  memset(v11, 0, sizeof(v11));
  v12 = 256;
  v13 = v6;
  v14 = 0;
  v15 = 0xE000000000000000;
  v16 = -1;

  _s21SwiftUITracingSupport6StrongVyACyxGxcfCAA16Tracepoint_EntryV_Tt0g5(v11);
  v8 = v7;
  if (*(a1 + 12) == *(a1 + 8))
  {
    specialized UnsafeArray.growToCapacity(_:)();
  }

  if (*a1)
  {
    v9 = *(a1 + 12);
    v10 = *a1 + 24 * v9;
    *v10 = v8;
    *(v10 + 8) = 0;
    *(v10 + 12) = 1;
    *(v10 + 16) = 0;
    *(v10 + 20) = 1;
    if (v9 != -1)
    {
      *(a1 + 12) = v9 + 1;
      return;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t specialized closure #2 in implicit closure #1 in EvolutionTable.add(_:impl:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_slowAlloc();
  *v6 = a2;
  v6[1] = a3;

  result = _s21SwiftUITracingSupport6StrongVyACyxGxcfCAA16Attachment_EntryV_Tt0g5(0, 0, v6, 0xFFFF);
  v8 = result;
  if (*(a1 + 12) == *(a1 + 8))
  {
    result = specialized UnsafeArray.growToCapacity(_:)();
  }

  if (*a1)
  {
    v9 = *(a1 + 12);
    v10 = *a1 + 24 * v9;
    *v10 = v8;
    *(v10 + 8) = 0;
    *(v10 + 12) = 1;
    *(v10 + 16) = 0;
    *(v10 + 20) = 1;
    v11 = v9 + 1;
    if (v9 != -1)
    {
      *(a1 + 12) = v11;
      return v11 - 1;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t T_TimeSync.model(within:)(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 116);
  v4 = (a1 + 56);
  v5 = *(a1 + 72);
  v11[0] = *(a1 + 56);
  v11[1] = v5;
  v12[0] = *(a1 + 88);
  *(v12 + 9) = *(a1 + 97);
  v6 = (a1 + 88);
  v7 = (a1 + 100);
  v8 = (a1 + 104);
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
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(result, 0, v11);
    }

    v6 = (v9 + 32);
    v7 = (v9 + 44);
    v8 = (v9 + 48);
    v4 = v9;
  }

  if (*v4)
  {
    result = *v4 + 24 * *v10;
    *(*result + 32) = a2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t T_ExecutionContext.model(within:)(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 116);
  v4 = (a1 + 56);
  v5 = *(a1 + 72);
  v12[0] = *(a1 + 56);
  v12[1] = v5;
  v13[0] = *(a1 + 88);
  *(v13 + 9) = *(a1 + 97);
  v6 = (a1 + 88);
  v7 = (a1 + 100);
  v8 = (a1 + 104);
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
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(result, 0, v12);
    }

    v6 = (v9 + 32);
    v7 = (v9 + 44);
    v8 = (v9 + 48);
    v4 = v9;
  }

  if (*v4)
  {
    result = *v4 + 24 * *v10;
    v11 = *result;
    *(v11 + 56) = a2;
    *(v11 + 64) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t T_ModeDecl.model(within:)(__int128 *a1, unint64_t a2, unint64_t a3, int a4)
{
  v8 = type metadata accessor for String.Encoding();
  result = MEMORY[0x28223BE20](v8 - 8);
  v192 = &v183 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 22);
  if (*v11 != 1)
  {
    goto LABEL_157;
  }

  v193 = a1;
  v194 = a2;
  v12 = HIDWORD(a2);
  v13 = HIDWORD(a3);
  v14 = *(a1 + 29);
  v15 = *(v11 + 56);
  v243[0] = *(v11 + 40);
  v243[1] = v15;
  v244[0] = *(v11 + 72);
  v16 = (v11 + 72);
  v17 = (v11 + 84);
  v18 = (v11 + 88);
  v19 = 8 * v14;
  *(v244 + 9) = *(v11 + 81);
  v20 = (v11 + 40);
  v190 = (v11 + 72);
  v191 = v12;
  v21 = (v11 + 84);
  v22 = (v11 + 88);
  LODWORD(v189) = a4;
  while (1)
  {
    v23 = *v22;
    if (v14 < *v21)
    {
      v24 = (*v16 + v19);
      if ((v24[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v23)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v14, 0, v243);
    }

    v16 = (v23 + 32);
    v21 = (v23 + 44);
    v22 = (v23 + 48);
    v20 = v23;
  }

  v25 = *v20;
  if (!v25)
  {
    goto LABEL_177;
  }

  result = v25 + 24 * *v24;
  v26 = *result;
  v27 = *(*result + 196);
  v28 = 0uLL;
  v188 = v13;
  if (v27)
  {
    v29 = *(v26 + 184);
    if (!v29)
    {
LABEL_173:
      __break(1u);
      goto LABEL_174;
    }

    v30 = v27 - 1;
    result = v191;
    if (v191 <= *(v29 + 32 * (v27 - 1)))
    {
      v36 = v27 >> 1;
      v37 = *(v29 + 32 * (v27 >> 1));
      if (v27 != 1 && v37 != v191)
      {
        if (v191 >= v37)
        {
          v39 = v36 + 1;
          v36 = v27;
        }

        else
        {
          v39 = 0;
        }

        v46 = specialized Collection<>.binarySearch(for:)(v191, v39, v36, v29, *(v26 + 192) | (v27 << 32), 0);
        if (v47)
        {
          v36 = v27 - 1;
        }

        else
        {
          v36 = v46;
        }

        result = v191;
        v28 = 0uLL;
      }

      v48 = (v29 + 32 * v36);
      v30 = v36;
      while (v36 < v27)
      {
        if (*v48 <= result)
        {
          goto LABEL_12;
        }

        if (!v30)
        {
          goto LABEL_39;
        }

        --v30;
        v48 -= 8;
        if (v30 > v27)
        {
          __break(1u);
          goto LABEL_39;
        }
      }

      __break(1u);
      goto LABEL_156;
    }

LABEL_12:
    v31 = *(v11 + 56);
    v241[0] = *(v11 + 40);
    v241[1] = v31;
    v242[0] = *(v11 + 72);
    *(v242 + 9) = *(v11 + 81);
    v32 = (v11 + 40);
    v33 = v190;
    while (1)
    {
      v34 = *v18;
      if (v14 < *v17)
      {
        v35 = (*v33 + v19);
        if ((v35[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v34)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v14, 0, v241);
      }

      v33 = (v34 + 32);
      v17 = (v34 + 44);
      v18 = (v34 + 48);
      v32 = v34;
    }

    v40 = *v32;
    if (!v40)
    {
      goto LABEL_184;
    }

    result = v40 + 24 * *v35;
    v41 = v193;
    if (v30 >= *(*result + 196))
    {
      goto LABEL_161;
    }

    v42 = *(*result + 184);
    if (!v42)
    {
LABEL_175:
      __break(1u);
      goto LABEL_176;
    }

    v43 = (v42 + 32 * v30);
    v44 = *v43;
    v45 = *(v43 + 1);
    v28 = *(v43 + 1);
  }

  else
  {
LABEL_39:
    v44 = 0;
    v45 = 0;
    v41 = v193;
  }

  v202 = 0;
  v49 = v194 & 0xFFFFFFFF00000000;
  *&v218 = v14 | 0x200000000;
  *(&v218 + 1) = v194 & 0xFFFFFFFF00000000;
  *&v219 = v44;
  *(&v219 + 1) = v45;
  v220 = v28;
  LOBYTE(v221) = 1;
  Interpreter.Iterator.init(_:kind:onEvent:)(v11, &v218, 0, 0, v231);
  Interpreter.Iterator.read()();
  v239[0] = *(v232 + 8);
  v239[1] = *(&v232[1] + 8);
  v240[0] = *(&v232[2] + 8);
  *(v240 + 9) = *(&v232[3] + 1);
  v50 = *(&v232[0] + 1);
  v51 = *(&v232[2] + 1);
  result = DWORD1(v232[4]);
  v52 = *(&v232[3] + 1);
  if (DWORD1(v232[4]) >= DWORD1(v232[3]))
  {
    goto LABEL_42;
  }

  while (1)
  {
    v53 = (v51 + 8 * DWORD1(v232[4]));
    if ((v53[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_42:
      if (!v52)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(DWORD1(v232[4]), 0, v239);
      }

      v50 = *v52;
      v51 = v52[4];
      v54 = *(v52 + 11);
      v52 = v52[6];
    }

    while (DWORD1(v232[4]) >= v54);
  }

  if (!v50)
  {
    goto LABEL_178;
  }

  result = v50 + 24 * *v53;
  v55 = *result;
  v56 = *(*result + 96);
  if (v56 == 2)
  {
    goto LABEL_165;
  }

  v57 = *(v55 + 104);
  v58 = *(v55 + 88);
  v234 = *(v55 + 72);
  v235 = v58;
  v236 = v56 & 0x101;
  v237 = HIDWORD(v56);
  v238 = v57 & 1;
  result = Interpreter.Iterator.AttachmentBuffer.buffer.getter();
  if (v60)
  {
LABEL_166:
    __break(1u);
LABEL_167:
    __break(1u);
    goto LABEL_168;
  }

  v187 = v49;
  v61 = v59 - result;
  if (!result)
  {
    v61 = 0;
  }

  *&v218 = result;
  *(&v218 + 1) = v61;
  static String.Encoding.utf8.getter();
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSRys5UInt8VGMd, &_sSRys5UInt8VGMR);
  v185 = lazy protocol witness table accessor for type UnsafeBufferPointer<UInt8> and conformance UnsafeBufferPointer<A>();
  v186 = v62;
  result = String.init<A>(bytes:encoding:)();
  if (!v63)
  {
    goto LABEL_167;
  }

  v64 = result;
  v65 = v63;
  result = specialized EvolutionTable.deallocate()();
  v66 = *(v11 + 52);
  if (v66)
  {
    v67 = 0;
    v68 = *(v11 + 40);
    v69 = v68;
    while (v68)
    {
      v70 = **v69;
      if (*v70 == v64 && v65 == v70[1])
      {
        goto LABEL_62;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_62;
      }

      ++v67;
      v69 += 3;
      if (v66 == v67)
      {
        goto LABEL_61;
      }
    }

    goto LABEL_163;
  }

LABEL_61:

  specialized closure #2 in implicit closure #1 in EvolutionTable.add(_:impl:)(v11 + 40, v64, v65);
  v67 = v72;

LABEL_62:
  v73 = v194;
  result = mutMap #1 <A>(map:_:_:) in EvolutionTable.add(_:impl:)(v190, v194, v67);
  if (v67 >= *(v11 + 52))
  {
    goto LABEL_158;
  }

  v74 = *(v11 + 40);
  if (!v74)
  {
LABEL_168:
    __break(1u);
LABEL_169:
    __break(1u);
    goto LABEL_170;
  }

  v75 = v74 + 24 * v67;
  *(v75 + 16) = v73;
  *(v75 + 20) = 0;
  v76 = *v75;
  v77 = *(v41 + 176);
  v232[7] = *(v41 + 160);
  v232[8] = v77;
  v233 = *(v41 + 192);
  v78 = *(v41 + 112);
  v232[3] = *(v41 + 96);
  v232[4] = v78;
  v79 = *(v41 + 128);
  v232[6] = *(v41 + 144);
  v232[5] = v79;
  v80 = *(v41 + 48);
  v231[2] = *(v41 + 32);
  v232[0] = v80;
  v81 = *(v41 + 80);
  v232[1] = *(v41 + 64);
  v232[2] = v81;
  v82 = *(v41 + 16);
  v231[0] = *v41;
  v231[1] = v82;
  v83 = specialized Interpreter.Iterator.subscript.getter(v188);
  specialized add #1 <A>(definitions:to:_:) in closure #1 in T_ModeDecl.model(within:)(v83, v84, v85, v76 + 7, v41, v41);
  v86 = *(v41 + 176);
  v228 = *(v41 + 160);
  v229 = v86;
  v230 = *(v41 + 192);
  v87 = *(v41 + 112);
  v224 = *(v41 + 96);
  v225 = v87;
  v88 = *(v41 + 144);
  v226 = *(v41 + 128);
  v227 = v88;
  v89 = *(v41 + 48);
  v220 = *(v41 + 32);
  v221 = v89;
  v90 = *(v41 + 80);
  v222 = *(v41 + 64);
  v223 = v90;
  v91 = *(v41 + 16);
  v218 = *v41;
  v219 = v91;
  v92 = v229;
  v93 = specialized Interpreter.Iterator.subscript.getter(v189);
  result = specialized add #1 <A>(definitions:to:_:) in closure #1 in T_ModeDecl.model(within:)(v93, v94, v95, (v76 + 15), v41, v41);
  if (v73)
  {
    v96 = (v92 + 40);
    v97 = *(v92 + 56);
    v216[0] = *(v92 + 40);
    v216[1] = v97;
    v217[0] = *(v92 + 72);
    *(v217 + 9) = *(v92 + 81);
    v98 = (v92 + 56);
    v99 = (v92 + 68);
    v100 = (v92 + 88);
    while (1)
    {
      v101 = *v100;
      if (*v99)
      {
        v102 = *v98;
        if ((v102[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v101)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v216);
      }

      v98 = (v101 + 16);
      v99 = (v101 + 28);
      v100 = (v101 + 48);
      v96 = v101;
    }

    v103 = *v96;
    if (!v103)
    {
      goto LABEL_183;
    }

    v104 = (v103 + 24 * *v102);
    v105 = *v104;
    v76[13] = *v104 + 56;
    v76[21] = v105 + 120;
  }

  v189 = v92;
  v108 = *(v92 + 88);
  v107 = (v92 + 88);
  v106 = v108;
  v110 = v107 - 6;
  v109 = *(v107 - 6);
  v111 = DWORD1(v225);
  v112 = *(v107 - 2);
  *(v204 + 9) = *(v107 - 7);
  v113 = *(v204 + 9);
  v203[0] = *(v107 - 3);
  v203[1] = v112;
  v114 = v107 - 2;
  v204[0] = *(v107 - 1);
  v116 = v107 - 1;
  v115 = *(v107 - 1);
  *(v215 + 9) = v113;
  v214[1] = v112;
  v215[0] = v204[0];
  v214[0] = v203[0];
  v117 = v107 - 6;
  v118 = v107 - 2;
  v119 = v108;
  v190 = (8 * DWORD1(v225));
  v188 = v109;
  v184 = *&v204[0];
  HIDWORD(v183) = v115;
  if (DWORD1(v225) >= v115)
  {
    goto LABEL_75;
  }

  while (1)
  {
    v120 = (*v118 + 8 * DWORD1(v225));
    if ((v120[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_75:
      if (!v119)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(DWORD1(v225), 0, v214);
      }

      v118 = (v119 + 32);
      v121 = *(v119 + 44);
      v117 = v119;
      v119 = *(v119 + 48);
    }

    while (DWORD1(v225) >= v121);
  }

  if (!*v117)
  {
    goto LABEL_179;
  }

  result = *v117 + 24 * *v120;
  v122 = *result;
  v123 = *(*result + 196);
  v124 = 0uLL;
  if (!v123)
  {
LABEL_110:
    v136 = 0;
    v137 = 0;
    goto LABEL_111;
  }

  v125 = *(v122 + 184);
  if (!v125)
  {
LABEL_174:
    __break(1u);
    goto LABEL_175;
  }

  v126 = v123 - 1;
  result = v191;
  if (v191 <= *(v125 + 32 * (v123 - 1)))
  {
    v130 = v123 >> 1;
    v131 = *(v125 + 32 * (v123 >> 1));
    if (v123 != 1 && v131 != v191)
    {
      if (v191 >= v131)
      {
        v133 = v130 + 1;
        v130 = v123;
      }

      else
      {
        v133 = 0;
      }

      v138 = *(v122 + 184);
      v139 = specialized Collection<>.binarySearch(for:)(v191, v133, v130, v125, *(v122 + 192) | (v123 << 32), 0);
      if (v140)
      {
        v130 = v123 - 1;
      }

      else
      {
        v130 = v139;
      }

      result = v191;
      v124 = 0uLL;
      v125 = v138;
    }

    v141 = (v125 + 32 * v130);
    v126 = v130;
    while (v130 < v123)
    {
      if (*v141 <= result)
      {
        goto LABEL_83;
      }

      if (!v126)
      {
        goto LABEL_110;
      }

      --v126;
      v141 -= 8;
      if (v126 > v123)
      {
        __break(1u);
        goto LABEL_110;
      }
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
    goto LABEL_166;
  }

LABEL_83:
  v127 = *(v107 - 2);
  v212[0] = *v110;
  v212[1] = v127;
  v213[0] = *(v107 - 1);
  *(v213 + 9) = *(v107 - 7);
  while (1)
  {
    v128 = *v107;
    if (v111 < *v116)
    {
      v129 = (v190 + *v114);
      if ((v129[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v128)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v111, 0, v212);
    }

    v114 = (v128 + 32);
    v116 = (v128 + 44);
    v107 = (v128 + 48);
    v110 = v128;
  }

  if (!*v110)
  {
    goto LABEL_185;
  }

  result = *v110 + 24 * *v129;
  if (v126 >= *(*result + 196))
  {
    goto LABEL_162;
  }

  v134 = *(*result + 184);
  if (!v134)
  {
LABEL_176:
    __break(1u);
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
LABEL_184:
    __break(1u);
LABEL_185:
    __break(1u);
    return result;
  }

  v135 = (v134 + 32 * v126);
  v136 = *v135;
  v137 = *(v135 + 1);
  v124 = *(v135 + 1);
LABEL_111:
  v201 = 0;
  *&v209 = v111 | 0x200000000;
  *(&v209 + 1) = v187;
  *&v210 = v136;
  *(&v210 + 1) = v137;
  v211[0] = v124;
  LOBYTE(v211[1]) = 1;
  Interpreter.Iterator.init(_:kind:onEvent:)(v189, &v209, 0, 0, v197);
  Interpreter.Iterator.read()();
  v209 = *&v198[3];
  v210 = *&v198[5];
  v211[0] = *v199;
  *(v211 + 9) = *&v199[9];
  v142 = v198[3];
  v143 = *v199;
  result = v200;
  v144 = *&v199[16];
  if (v200 >= *&v199[12])
  {
    goto LABEL_113;
  }

  while (1)
  {
    v145 = (v143 + 8 * v200);
    if ((v145[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_113:
      if (!v144)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v200, 0, &v209);
      }

      v142 = *v144;
      v143 = v144[4];
      v146 = *(v144 + 11);
      v144 = v144[6];
    }

    while (v200 >= v146);
  }

  if (!v142)
  {
    goto LABEL_180;
  }

  result = v142 + 24 * *v145;
  v147 = *result;
  v148 = *(*result + 96);
  if (v148 == 2)
  {
    goto LABEL_169;
  }

  v149 = *(v147 + 104);
  v150 = *(v147 + 88);
  v204[2] = *(v147 + 72);
  v205 = v150;
  v206 = v148 & 0x101;
  v207 = HIDWORD(v148);
  v208 = v149 & 1;
  result = Interpreter.Iterator.AttachmentBuffer.buffer.getter();
  if (v152)
  {
LABEL_170:
    __break(1u);
LABEL_171:
    __break(1u);
    goto LABEL_172;
  }

  v153 = v151 - result;
  if (!result)
  {
    v153 = 0;
  }

  v195 = result;
  v196 = v153;
  static String.Encoding.utf8.getter();
  result = String.init<A>(bytes:encoding:)();
  if (!v154)
  {
    goto LABEL_171;
  }

  v155 = result;
  v156 = v154;
  v157 = *(&v221 + 1);
  v158 = DWORD1(v222);
  result = specialized EvolutionTable.deallocate()();
  v159 = (v193 + 56);
  if (v158)
  {
    v160 = 0;
    v161 = v157;
    while (v157)
    {
      v162 = *(*v161 + 16);
      if (*v162 == v155 && v156 == v162[1])
      {
        goto LABEL_133;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_133;
      }

      ++v160;
      v161 += 24;
      if (v158 == v160)
      {
        goto LABEL_132;
      }
    }

    goto LABEL_164;
  }

LABEL_132:

  specialized closure #2 in implicit closure #1 in EvolutionTable.add(_:impl:)(v159, v155, v156);
  v160 = v164;

LABEL_133:
  v165 = v193;
  v166 = v193 + 11;
  result = mutMap #1 <A>(map:_:_:) in EvolutionTable.add(_:impl:)(v193 + 22, v194, v160);
  if (v160 >= *(v165 + 17))
  {
    goto LABEL_159;
  }

  v167 = *(v165 + 7);
  if (!v167)
  {
LABEL_172:
    __break(1u);
    goto LABEL_173;
  }

  v168 = v167 + 24 * v160;
  result = v194;
  *(v168 + 16) = v194;
  *(v168 + 20) = 0;
  v169 = *v168;
  v170 = v188;
  v171 = v184;
  if (result >= HIDWORD(v183))
  {
    goto LABEL_137;
  }

  while (1)
  {
    v172 = (v171 + 8 * result);
    if ((v172[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_137:
      if (!v106)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(result, 0, v203);
      }

      v170 = *v106;
      v171 = *(v106 + 32);
      v173 = *(v106 + 44);
      v106 = *(v106 + 48);
    }

    while (result >= v173);
  }

  if (!v170)
  {
    goto LABEL_181;
  }

  v174 = *(*(v170 + 24 * *v172) + 8);
  if (v174)
  {
    v175 = swift_conformsToProtocol2();
    if (v175)
    {
      if (!v169[14])
      {
        v176 = v175;
        v169[14] = project #1 <A>(_:) in Interpreter.Iterator.Mode.add(context:)(v174, v174, v175);
        v177 = *(v176 + 16);
        *v169 = v174;
        v169[1] = v177;
        v169[15] = v174;
        v169[16] = v176;
      }
    }
  }

  v178 = v159[1];
  v197[0] = *v159;
  v197[1] = v178;
  *v198 = v159[2];
  *(&v198[1] + 1) = *(v159 + 41);
  v179 = v165 + 25;
  v180 = v165 + 13;
  while (1)
  {
    v181 = *v180;
    if (v111 < *v179)
    {
      v182 = (v190 + *v166);
      if ((v182[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v181)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v111, 0, v197);
    }

    v166 = (v181 + 32);
    v179 = (v181 + 44);
    v180 = (v181 + 48);
    v159 = v181;
  }

  if (!*v159)
  {
    goto LABEL_182;
  }

  result = *v159 + 24 * *v182;
  if (!*(*result + 136))
  {
    goto LABEL_160;
  }

  return result;
}

char *T_TypeDecl.model(within:)(uint64_t a1)
{
  v3 = specialized static PType.Parser.parseType(record:within:)(v1, a1);
  v4 = *v1;
  v5 = *(a1 + 176);
  v6 = *(v5 + 136);
  for (i = *(v6 + 32); *(i + 2) <= v4; i = *(v6 + 32))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v6 + 32) = i;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      i = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(i + 2) + 1, 1, i);
      *(v6 + 32) = i;
    }

    v12 = *(i + 2);
    v11 = *(i + 3);
    if (v12 >= v11 >> 1)
    {
      i = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, i);
      *(v6 + 32) = i;
    }

    *(i + 2) = v12 + 1;
    *&i[4 * v12 + 32] = -1;
    v6 = *(v5 + 136);
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  *(v6 + 32) = i;
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(i);
    i = result;
    *(v6 + 32) = result;
  }

  if (*(i + 2) <= v4)
  {
    __break(1u);
    goto LABEL_15;
  }

  *&i[4 * v4 + 32] = v3;
  v9 = *(v5 + 136);
  if (v3 >= *(v9 + 12))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!*v9)
  {
LABEL_16:
    __break(1u);
  }

  return result;
}

uint64_t T_KeypathDecl.model(within:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = HIDWORD(a3);
  if (HIDWORD(a3))
  {
    v3 = a3;
    HIDWORD(v4) = HIDWORD(a2);
    v5 = *(a1 + 116);
    v6 = *(*(a1 + 176) + 136);
    v8 = *(v6 + 16);
    result = swift_isUniquelyReferenced_nonNull_native();
    *(v6 + 16) = v8;
    if (result)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  v8 = result;
  *(v6 + 16) = result;
LABEL_3:
  v10 = *(v8 + 16);
  if (v10 >= *(v8 + 24) >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v8 = result;
    *(v6 + 16) = result;
  }

  *(v8 + 16) = v10 + 1;
  v11 = v8 + 24 * v10;
  *(v11 + 32) = HIDWORD(v4);
  *(v11 + 36) = v3;
  *(v11 + 40) = v5;
  *(v11 + 44) = 2;
  *(v11 + 48) = 0;
  *(v11 + 52) = v7;
  return result;
}

uint64_t TypeID.describe(state:)(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 32);
  if (!*(a1 + 41))
  {
    v2 = *(v2 + 176);
    goto LABEL_4;
  }

  if (*(a1 + 41) == 1)
  {
LABEL_4:
    v3 = *(v2 + 136);
    v4 = *v3;
    v5 = *(v3 + 2);
    v6 = *(v3 + 3);
    v46 = *(v3 + 1);
    v7 = v3[4];
    v8 = *(v3 + 7);
    v9 = *(v3 + 11);
    v43 = *(v3 + 9);
    v44 = v9;
    v45 = v3[13];
    v41 = *(v3 + 5);
    v42 = v8;
    if (a2 == -1)
    {
      return 0x206E776F6E6B6E55;
    }

    if (*(v7 + 16) <= a2)
    {
      __break(1u);
    }

    else
    {
      v10 = *(v7 + 4 * a2 + 32);
      if (v10 < v6)
      {
        if (v4)
        {
          v11 = (v4 + 120 * v10);
          v12 = *v11;
          v13 = v11[1];
          v14 = v11[3];
          v37[2] = v11[2];
          v37[3] = v14;
          v37[0] = v12;
          v37[1] = v13;
          v15 = v11[4];
          v16 = v11[5];
          v17 = v11[6];
          *(v38 + 14) = *(v11 + 110);
          v37[5] = v16;
          v38[0] = v17;
          v37[4] = v15;
          v18 = v11[5];
          v34 = v11[4];
          v35 = v18;
          v36[0] = v11[6];
          *(v36 + 14) = *(v11 + 110);
          v19 = v11[1];
          v30 = *v11;
          v31 = v19;
          v20 = v11[3];
          v32 = v11[2];
          v33 = v20;
          *&v23[0] = v4;
          *(&v23[0] + 1) = __PAIR64__(v6, v5);
          v23[1] = v46;
          v24 = v7;
          v26 = v42;
          v27 = v43;
          v28 = v44;
          v29 = v45;
          v25 = v41;
          outlined init with copy of PType(v37, v39);
          v21 = PType.limitedName(within:limit:module:)(v23, 2, 0);
          v39[4] = v34;
          v39[5] = v35;
          v40[0] = v36[0];
          *(v40 + 14) = *(v36 + 14);
          v39[0] = v30;
          v39[1] = v31;
          v39[2] = v32;
          v39[3] = v33;
          outlined destroy of PType(v39);
          return v21;
        }

        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

Swift::Int KeypathID.hashValue.getter(Swift::UInt32 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

uint64_t static String.construct(attachment:from:)(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for String.Encoding();
  MEMORY[0x28223BE20](v2 - 8);
  static String.Encoding.utf8.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSRys5UInt8VGMd, &_sSRys5UInt8VGMR);
  lazy protocol witness table accessor for type UnsafeBufferPointer<UInt8> and conformance UnsafeBufferPointer<A>();
  result = String.init<A>(bytes:encoding:)();
  if (!v4)
  {
    __break(1u);
  }

  return result;
}

char *static String.serialize(value:to:)(uint64_t a1, unint64_t a2, void (*a3)(char *, char *))
{

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    v10[0] = a1;
    v10[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    a3(v10, v10 + (HIBYTE(a2) & 0xF));
  }

  a1 = static String._copying(_:)(a1, a2);
  v9 = v8;

  a2 = v9;
  if ((v9 & 0x2000000000000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((a1 & 0x1000000000000000) != 0)
  {
    result = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    result = _StringObject.sharedUTF8.getter();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  a3(result, &result[v7]);
}

uint64_t protocol witness for static Attachment.construct(attachment:from:) in conformance String@<X0>(uint64_t *a3@<X8>)
{
  v4 = type metadata accessor for String.Encoding();
  MEMORY[0x28223BE20](v4 - 8);
  static String.Encoding.utf8.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSRys5UInt8VGMd, &_sSRys5UInt8VGMR);
  lazy protocol witness table accessor for type UnsafeBufferPointer<UInt8> and conformance UnsafeBufferPointer<A>();
  result = String.init<A>(bytes:encoding:)();
  if (v6)
  {
    *a3 = result;
    a3[1] = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *protocol witness for static Attachment.serialize(value:to:) in conformance String(uint64_t *a1, void (*a2)(char *, char *))
{
  v4 = *a1;
  v3 = a1[1];

  if ((v3 & 0x1000000000000000) == 0)
  {
    if ((v3 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    v9[0] = v4;
    v9[1] = v3 & 0xFFFFFFFFFFFFFFLL;
    a2(v9, v9 + (HIBYTE(v3) & 0xF));
  }

  v4 = static String._copying(_:)(v4, v3);
  v8 = v7;

  v3 = v8;
  if ((v8 & 0x2000000000000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((v4 & 0x1000000000000000) != 0)
  {
    result = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v6 = v4 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    result = _StringObject.sharedUTF8.getter();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  a2(result, &result[v6]);
}