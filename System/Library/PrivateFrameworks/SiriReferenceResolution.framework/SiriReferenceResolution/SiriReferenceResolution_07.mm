uint64_t sub_1DD31F678(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DD31F6C4@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1DD334830();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, v2, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7140, &qword_1DD33CC30);
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E6158];
  *(v8 + 16) = xmmword_1DD339380;
  *(v8 + 56) = v9;
  *(v8 + 64) = &protocol witness table for String;
  if (qword_1EE027F28 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v10 = qword_1EE027F30;
  v11 = sub_1DD3347A0();
  v12 = [v10 stringFromDate_];

  v13 = sub_1DD3365D0();
  v15 = v14;

  *(v8 + 32) = v13;
  *(v8 + 40) = v15;
  result = (*(v5 + 8))(v7, v4);
  *a1 = 63;
  a1[1] = 0xE100000000000000;
  a1[2] = v8;
  return result;
}

uint64_t sub_1DD31F8AC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7140, &qword_1DD33CC30);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DD339380;
  *(v4 + 56) = &type metadata for Blob;
  *(v4 + 64) = &protocol witness table for Blob;
  *(v4 + 32) = a1;

  *a2 = 63;
  a2[1] = 0xE100000000000000;
  a2[2] = v4;
  return result;
}

double sub_1DD31F938@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7140, &qword_1DD33CC30);
  v4 = swift_allocObject();
  *&result = 1;
  *(v4 + 16) = xmmword_1DD339380;
  *(v4 + 56) = MEMORY[0x1E69E7360];
  *(v4 + 64) = &protocol witness table for Int64;
  *(v4 + 32) = a1;
  *a2 = 63;
  a2[1] = 0xE100000000000000;
  a2[2] = v4;
  return result;
}

uint64_t Value.expression.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  OUTLINED_FUNCTION_1_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Expression(0, a1, v12, v13);
  (*(v8 + 16))(v11, v3, a1);
  WitnessTable = swift_getWitnessTable();
  ExpressionType<>.init(value:)(v11, v14, WitnessTable, a2);
  v17[0] = v17[3];
  v17[1] = v17[4];
  v17[2] = v17[5];
  ExpressionType.expression.getter(v14, WitnessTable, a3);
}

Swift::String __swiftcall Expressible.asSQL()()
{
  (*(v0 + 8))(&v14);
  v1 = v16;
  v2 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v2 = v14 & 0xFFFFFFFFFFFFLL;
  }

  v17 = v14;
  v18 = v15;
  v19 = 0;
  v20 = v2;

  v3 = 0;
  v4 = 0;
  for (i = 0xE000000000000000; ; i = v15)
  {
    v6 = sub_1DD336720();
    if (!v7)
    {

      v6 = v3;
      v7 = i;
      goto LABEL_18;
    }

    v8 = v6;
    v9 = v7;
    if (v6 != 63 || v7 != 0xE100000000000000)
    {
      v6 = sub_1DD336E00();
      if ((v6 & 1) == 0)
      {

        v12 = v9;
        goto LABEL_14;
      }
    }

    if ((v4 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v4 >= *(v1 + 16))
    {
      goto LABEL_17;
    }

    sub_1DD28D7A0(v1 + 32 + 40 * v4, &v14);
    v8 = sub_1DD32943C(&v14);
    v12 = v11;
    sub_1DD320020(&v14);
    ++v4;
LABEL_14:
    v14 = v3;
    v15 = i;

    MEMORY[0x1E12AC540](v8, v12);

    v3 = v14;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

uint64_t Expression.template.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Expression.bindings.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_1DD31FD80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7058, &qword_1DD33BAA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD3391F0;
  *(inited + 56) = a1;
  *(inited + 64) = *(a2 + 8);
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  OUTLINED_FUNCTION_22();
  (*(v9 + 16))();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
  *(inited + 104) = &protocol witness table for Expression<A>;
  *(inited + 72) = a3;
  *(inited + 80) = a4;
  *(inited + 88) = MEMORY[0x1E69E7CC0];
  *(inited + 96) = v10;
  sub_1DD284AFC(inited, 32, 0xE100000000000000, v11, v12, v13, v14, v15, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34);
  swift_setDeallocating();
  return sub_1DD313330();
}

uint64_t ExpressionType<>.init(value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7140, &qword_1DD33CC30);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1DD339380;
  v9 = *(a4 + 56);
  swift_getAssociatedTypeWitness();
  *(v8 + 56) = swift_getAssociatedTypeWitness();
  *(v8 + 64) = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1((v8 + 32));
  v10 = swift_checkMetadataState();
  v9(v10, a4);
  (*(a3 + 40))(63, 0xE100000000000000, v8, a2, a3);
  OUTLINED_FUNCTION_22();
  v12 = *(v11 + 8);

  return v12(a1, v10);
}

uint64_t sub_1DD320020(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7090, &qword_1DD33CA20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static ExpressionType<>.null.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1DD336AD0();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v14 - v11;
  __swift_storeEnumTagSinglePayload(&v14 - v11, 1, 1, AssociatedTypeWitness);
  return ExpressionType<>.init(value:)(v12, a1, a2, a4, a5);
}

uint64_t rowid.getter@<X0>(void *a1@<X8>)
{
  if (qword_1ECCD7040 != -1)
  {
    swift_once();
  }

  v2 = *algn_1ECCD71B8;
  v3 = qword_1ECCD71C0;
  *a1 = qword_1ECCD71B0;
  a1[1] = v2;
  a1[2] = v3;
}

uint64_t cast<A, B>(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, void *a4@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  OUTLINED_FUNCTION_1_15();

  MEMORY[0x1E12AC540](v7, v8);
  OUTLINED_FUNCTION_3_16();
  v10 = (*(a3 + 40))(a2, a3);
  MEMORY[0x1E12AC540](v10);

  result = MEMORY[0x1E12AC540](41, 0xE100000000000000);
  *a4 = v12;
  a4[1] = v13;
  a4[2] = v9;
  return result;
}

{
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  OUTLINED_FUNCTION_1_15();

  MEMORY[0x1E12AC540](v7, v8);
  OUTLINED_FUNCTION_3_16();
  v10 = (*(a3 + 40))(a2, a3);
  MEMORY[0x1E12AC540](v10);

  MEMORY[0x1E12AC540](41, 0xE100000000000000);
  result = sub_1DD336AD0();
  *a4 = v12;
  a4[1] = v13;
  a4[2] = v9;
  return result;
}

uint64_t sub_1DD32041C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t Connection.prepare(_:_:)()
{
  OUTLINED_FUNCTION_3_17();
  return sub_1DD321AB8(v0, v1, v2, v3);
}

{
  OUTLINED_FUNCTION_2_9();
  return sub_1DD321AB8(v0, v1, v2, v3);
}

uint64_t Connection.scalar(_:_:)()
{
  OUTLINED_FUNCTION_3_17();
  return sub_1DD321B84(v0, v1, v2, v3, v4);
}

{
  return Connection.scalar(_:_:)();
}

{
  OUTLINED_FUNCTION_2_9();
  return sub_1DD321B84(v0, v1, v2, v3, v4);
}

sqlite3_int64 Connection.lastInsertRowid.getter()
{
  v0 = Connection.handle.getter();

  return sqlite3_last_insert_rowid(v0);
}

uint64_t sub_1DD3204D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1DD2846CC();
  if (qword_1EE028938 != -1)
  {
    swift_once();
  }

  sub_1DD3369A0();
  v6 = sub_1DD2885B8();
  if ((v12 & 1) != 0 || v11 != v6)
  {
    v9 = *(a1 + 88);
    sub_1DD3369E0();
    if (v4)
    {

      return v9;
    }

    v9 = v13;
LABEL_11:

    return v9;
  }

  v7 = Connection.handle.getter();
  v8 = sub_1DD336650();
  v9 = sqlite3_exec(v7, (v8 + 32), 0, 0, 0);

  sub_1DD2837A0(v9, 0);
  if (!v4)
  {

    goto LABEL_11;
  }

  return v9;
}

uint64_t sub_1DD3206A8(char a1, char a2)
{
  v2 = 0x53534F5243;
  if (a1)
  {
    OUTLINED_FUNCTION_16_9();
    if (v3)
    {
      v5 = 0x52454E4E49;
    }

    else
    {
      v5 = 0x54554F205446454CLL;
    }

    if (v3)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xEA00000000005245;
    }
  }

  else
  {
    v6 = 0xE500000000000000;
    v5 = 0x53534F5243;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_16_9();
    if (v7)
    {
      v2 = 0x52454E4E49;
    }

    else
    {
      v2 = 0x54554F205446454CLL;
    }

    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0xEA00000000005245;
    }
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  if (v5 == v2 && v6 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DD336E00();
  }

  return v11 & 1;
}

uint64_t sub_1DD320798(unsigned __int8 a1, char a2)
{
  v2 = 0xE90000000000004ELL;
  v3 = 0x4F49544341204F4ELL;
  v4 = a1;
  v5 = 0x4F49544341204F4ELL;
  v6 = 0xE90000000000004ELL;
  switch(v4)
  {
    case 1:
      v6 = 0xE800000000000000;
      v5 = 0x5443495254534552;
      break;
    case 2:
      v6 = 0xE800000000000000;
      v5 = 0x4C4C554E20544553;
      break;
    case 3:
      v5 = 0x4146454420544553;
      v6 = 0xEB00000000544C55;
      break;
    case 4:
      v6 = 0xE700000000000000;
      v5 = 0x45444143534143;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0xE800000000000000;
      v3 = 0x5443495254534552;
      break;
    case 2:
      v2 = 0xE800000000000000;
      v3 = 0x4C4C554E20544553;
      break;
    case 3:
      v3 = 0x4146454420544553;
      v2 = 0xEB00000000544C55;
      break;
    case 4:
      v2 = 0xE700000000000000;
      v3 = 0x45444143534143;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DD336E00();
  }

  return v8 & 1;
}

uint64_t sub_1DD32092C(unsigned __int8 a1, char a2)
{
  v2 = 0x4543414C504552;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x4543414C504552;
  switch(v4)
  {
    case 1:
      v3 = 0xE800000000000000;
      v5 = 0x4B4341424C4C4F52;
      break;
    case 2:
      v3 = 0xE500000000000000;
      v5 = 0x54524F4241;
      break;
    case 3:
      v3 = 0xE400000000000000;
      v5 = 1279869254;
      break;
    case 4:
      v3 = 0xE600000000000000;
      v5 = 0x45524F4E4749;
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE800000000000000;
      v2 = 0x4B4341424C4C4F52;
      break;
    case 2:
      v6 = 0xE500000000000000;
      v2 = 0x54524F4241;
      break;
    case 3:
      v6 = 0xE400000000000000;
      v2 = 1279869254;
      break;
    case 4:
      v6 = 0xE600000000000000;
      v2 = 0x45524F4E4749;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DD336E00();
  }

  return v8 & 1;
}

uint64_t sub_1DD320A88(char a1, char a2)
{
  v2 = 0xE900000000000045;
  v3 = 0x4445525245464544;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x54414944454D4D49;
    }

    else
    {
      v4 = 0x564953554C435845;
    }

    v5 = 0xE900000000000045;
  }

  else
  {
    v5 = 0xE800000000000000;
    v4 = 0x4445525245464544;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x54414944454D4D49;
    }

    else
    {
      v3 = 0x564953554C435845;
    }
  }

  else
  {
    v2 = 0xE800000000000000;
  }

  if (v4 == v3 && v5 == v2)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1DD336E00();
  }

  return v7 & 1;
}

uint64_t sub_1DD320BB8(uint64_t a1, uint64_t (*a2)(_BYTE *, uint64_t))
{
  sub_1DD336EC0();
  a2(v5, a1);
  return sub_1DD336EF0();
}

uint64_t sub_1DD320C14(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_16_9();
  }

  else
  {
    OUTLINED_FUNCTION_15_12();
  }

  sub_1DD3366B0();
}

uint64_t sub_1DD320C8C(uint64_t a1, char a2)
{
  sub_1DD3366B0();
}

uint64_t sub_1DD320D68(uint64_t a1, char a2)
{
  sub_1DD3366B0();
}

uint64_t sub_1DD320E28(uint64_t a1, char a2)
{
  sub_1DD3366B0();
}

uint64_t sub_1DD320EBC(uint64_t a1, char a2)
{
  sub_1DD336EC0();
  sub_1DD3366B0();

  return sub_1DD336EF0();
}

uint64_t sub_1DD320F94(uint64_t a1, uint64_t a2, uint64_t (*a3)(_BYTE *, uint64_t))
{
  sub_1DD336EC0();
  a3(v6, a2);
  return sub_1DD336EF0();
}

uint64_t sub_1DD320FE0(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  sub_1DD336EC0();
  if (v2)
  {
    OUTLINED_FUNCTION_16_9();
  }

  else
  {
    OUTLINED_FUNCTION_15_12();
  }

  sub_1DD3366B0();

  return sub_1DD336EF0();
}

void Connection.createFunction(_:argumentCount:deterministic:_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  if (a4)
  {
    v14 = -1;
  }

  else
  {
    v14 = a3;
    if (a3 < 0)
    {
LABEL_15:
      __break(1u);
      return;
    }
  }

  OUTLINED_FUNCTION_72_4();
  v15 = swift_allocObject();
  *(v15 + 16) = a6;
  *(v15 + 24) = a7;
  aBlock[4] = sub_1DD32360C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DD322E74;
  aBlock[3] = &block_descriptor_9;
  v16 = _Block_copy(aBlock);
  sub_1DD335860();

  v17 = Connection.handle.getter();
  if (v14 > 0x7FFFFFFF)
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v17;
  if (a5)
  {
    v19 = 2049;
  }

  else
  {
    v19 = 1;
  }

  v20 = sub_1DD336650();
  sqlite3_create_function_v2(v18, (v20 + 32), v14, v19, v16, sub_1DD322F3C, 0, 0, 0);

  swift_beginAccess();
  v21 = sub_1DD2AAF5C(a1, a2, *(v8 + 72));
  swift_endAccess();
  if (v21)
  {
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD71C8, &qword_1DD33C630);
    v22 = sub_1DD336530();
    OUTLINED_FUNCTION_12_12();
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *(v8 + 72);
    sub_1DD323738(v22, a1, a2, isUniquelyReferenced_nonNull_native);
    *(v8 + 72) = v29;
    swift_endAccess();
  }

  OUTLINED_FUNCTION_12_12();
  swift_beginAccess();
  v25 = sub_1DD322F40(aBlock, a1, a2);
  if (*v24)
  {
    v26 = v24;
    _Block_copy(v16);
    v27 = swift_isUniquelyReferenced_nonNull_native();
    v28 = *v26;
    sub_1DD323614(v16, v14, v27);
    *v26 = v28;
  }

  (v25)(aBlock, 0);
  swift_endAccess();
  _Block_release(v16);
}

uint64_t sub_1DD321328@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  switch(result)
  {
    case 9:
      v2 = 2;
      goto LABEL_7;
    case 0x12:
      v2 = 0;
LABEL_7:
      *a2 = v2;
      return result;
    case 0x17:
      v2 = 1;
      goto LABEL_7;
  }

  sub_1DD336C00();

  v3 = sub_1DD336DC0();
  MEMORY[0x1E12AC540](v3);

  result = sub_1DD336D20();
  __break(1u);
  return result;
}

uint64_t Connection.Operation.hashValue.getter()
{
  v1 = *v0;
  sub_1DD336EC0();
  MEMORY[0x1E12ACD20](v1);
  return sub_1DD336EF0();
}

uint64_t Connection.__allocating_init(_:readonly:)(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  OUTLINED_FUNCTION_8_12();
  v4 = swift_allocObject();
  Connection.init(_:readonly:)(a1, v2);
  return v4;
}

uint64_t Connection.init(_:readonly:)(uint64_t *a1, char a2)
{
  v18 = sub_1DD3369C0();
  v16 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_12();
  v5 = v4 - v3;
  v6 = sub_1DD336400();
  MEMORY[0x1EEE9AC00](v6 - 8);
  OUTLINED_FUNCTION_12();
  v7 = sub_1DD336980();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_12();
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  v8 = (v2 + 16);
  *(v2 + 48) = 0u;
  v9 = MEMORY[0x1E69E7CC8];
  *(v2 + 64) = 0;
  *(v2 + 72) = v9;
  *(v2 + 80) = v9;
  sub_1DD2846CC();
  sub_1DD323874();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6708, &qword_1DD339E50);
  sub_1DD3238CC();
  sub_1DD336B10();
  sub_1DD3363E0();
  (*(v16 + 104))(v5, *MEMORY[0x1E69E8090], v18);
  *(v2 + 88) = sub_1DD336A10();
  *(v2 + 96) = 0;
  *(v2 + 104) = 1;
  OUTLINED_FUNCTION_11_7();
  if (a2)
  {
    v10 = 65537;
  }

  else
  {
    v10 = 3211270;
  }

  v11 = sub_1DD336650();

  OUTLINED_FUNCTION_12_12();
  swift_beginAccess();
  v12 = sqlite3_open_v2((v11 + 32), v8, v10, 0);
  swift_endAccess();

  sub_1DD2837A0(v12, 0);
  if (v20)
  {
  }

  else
  {
    v13 = qword_1EE028938;
    v14 = *(v17 + 88);
    if (v13 != -1)
    {
      OUTLINED_FUNCTION_1_16(&qword_1EE028938);
    }

    sub_1DD2885B8();
    sub_1DD3369B0();
  }

  return v17;
}

uint64_t Connection.Location.description.getter()
{
  OUTLINED_FUNCTION_11_7();
  if (v1 == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v0;
  }

  if (v1)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2;
  }

  sub_1DD323930(v0, v1);
  return v4;
}

uint64_t Connection.__allocating_init(_:readonly:)(uint64_t a1, uint64_t a2, char a3)
{
  v6[1] = a2;
  v6[0] = a1;
  OUTLINED_FUNCTION_8_12();
  v4 = swift_allocObject();
  Connection.init(_:readonly:)(v6, a3);
  return v4;
}

uint64_t Connection.deinit()
{
  v1 = Connection.handle.getter();
  sqlite3_close(v1);
  _Block_release(*(v0 + 32));
  _Block_release(*(v0 + 40));
  _Block_release(*(v0 + 48));
  _Block_release(*(v0 + 56));
  _Block_release(*(v0 + 64));

  return v0;
}

uint64_t Connection.__deallocating_deinit()
{
  Connection.deinit();
  v0 = OUTLINED_FUNCTION_8_12();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Connection.execute(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  sub_1DD335860();

  sub_1DD3204D0(v1, v1, countAndFlagsBits, object);
}

const char *sub_1DD321A08@<X0>(_DWORD *a3@<X8>)
{
  v5 = Connection.handle.getter();
  v6 = sub_1DD336650();
  v7 = sqlite3_exec(v5, (v6 + 32), 0, 0, 0);

  result = sub_1DD2837A0(v7, 0);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_1DD321AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = Connection.prepare(_:_:)(a1, a2, MEMORY[0x1E69E7CC0]);
  if (!v4)
  {
    v8 = a4(a3);

    return v8;
  }

  return result;
}

uint64_t sub_1DD321B84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t *a5@<X8>)
{
  result = Connection.prepare(_:_:)(a1, a2, MEMORY[0x1E69E7CC0]);
  if (!v5)
  {
    a4(a3);
    Statement.scalar(_:)(MEMORY[0x1E69E7CC0], a5);
  }

  return result;
}

RRSQLite::Connection::TransactionMode_optional __swiftcall Connection.TransactionMode.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD336D80();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t Connection.TransactionMode.rawValue.getter()
{
  v1 = 0x54414944454D4D49;
  if (*v0 != 1)
  {
    v1 = 0x564953554C435845;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4445525245464544;
  }
}

uint64_t sub_1DD321D04@<X0>(uint64_t *a1@<X8>)
{
  result = Connection.TransactionMode.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

Swift::Void __swiftcall Connection.interrupt()()
{
  v0 = Connection.handle.getter();

  sqlite3_interrupt(v0);
}

double sub_1DD321EA8@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 24);
  *a2 = result;
  return result;
}

uint64_t Connection.busyTimeout.setter(double a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
  return sub_1DD321F34();
}

uint64_t sub_1DD321F34()
{
  v1 = Connection.handle.getter();
  result = swift_beginAccess();
  v3 = *(v0 + 24) * 1000.0;
  if (COERCE__INT64(fabs(v3)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v3 <= -2147483650.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v3 < 2147483650.0)
  {
    return sqlite3_busy_timeout(v1, v3);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t (*Connection.busyTimeout.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_12_12();
  swift_beginAccess();
  return sub_1DD322020;
}

uint64_t sub_1DD322020(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1DD321F34();
  }

  return result;
}

void Connection.busyHandler(_:)(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_71_0();
    OUTLINED_FUNCTION_72_4();
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v1;
    OUTLINED_FUNCTION_0_17();
    OUTLINED_FUNCTION_10_10();
    v17[2] = sub_1DD322150;
    v17[3] = &block_descriptor_6_0;
    _Block_copy(v17);
    OUTLINED_FUNCTION_4_15();

    Connection.handle.getter();
    OUTLINED_FUNCTION_13_11();
    sqlite3_busy_handler(v6, v7, v8);
    v9 = OUTLINED_FUNCTION_19_0();
    sub_1DD27EBC8(v9, v10);
    v11 = *(v2 + 32);
    *(v2 + 32) = v4;
    _Block_release(v11);
    OUTLINED_FUNCTION_21_6();
  }

  else
  {
    Connection.handle.getter();
    OUTLINED_FUNCTION_30_0();
    sqlite3_busy_handler(v12, v13, v14);
    *(v2 + 32) = 0;
    OUTLINED_FUNCTION_21_6();

    _Block_release(v15);
  }
}

uint64_t sub_1DD322150(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  sub_1DD335860();
  v4 = v3(a2);

  return v4;
}

void sub_1DD3221B4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    v11[4] = sub_1DD323E6C;
    v11[5] = v5;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 1107296256;
    v11[2] = sub_1DD32230C;
    v11[3] = &block_descriptor_53;
    v6 = _Block_copy(v11);
    sub_1DD281FE8(a1, a2);
    sub_1DD335860();

    v7 = Connection.handle.getter();
    sqlite3_trace_v2(v7, 1u, sub_1DD323608, v6);
    sub_1DD27EBC8(a1, a2);
    v8 = *(v2 + 40);
    *(v2 + 40) = v6;
    _Block_release(v8);
  }

  else
  {
    v9 = Connection.handle.getter();
    sqlite3_trace_v2(v9, 0, 0, 0);
    v10 = *(v2 + 40);
    *(v2 + 40) = 0;

    _Block_release(v10);
  }
}

uint64_t sub_1DD32230C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  sub_1DD335860();
  v3(a2);
}

void Connection.updateHook(_:)(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_71_0();
    OUTLINED_FUNCTION_72_4();
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v1;
    OUTLINED_FUNCTION_0_17();
    OUTLINED_FUNCTION_10_10();
    v17[2] = sub_1DD322504;
    v17[3] = &block_descriptor_12_0;
    _Block_copy(v17);
    OUTLINED_FUNCTION_4_15();

    Connection.handle.getter();
    OUTLINED_FUNCTION_13_11();
    sqlite3_update_hook(v6, v7, v8);
    v9 = OUTLINED_FUNCTION_19_0();
    sub_1DD27EBC8(v9, v10);
    v11 = *(v2 + 48);
    *(v2 + 48) = v4;
    _Block_release(v11);
    OUTLINED_FUNCTION_21_6();
  }

  else
  {
    Connection.handle.getter();
    OUTLINED_FUNCTION_30_0();
    sqlite3_update_hook(v12, v13, v14);
    *(v2 + 48) = 0;
    OUTLINED_FUNCTION_21_6();

    _Block_release(v15);
  }
}

uint64_t sub_1DD32245C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  sub_1DD321328(a1, &v13);
  v7 = sub_1DD336700();
  v9 = v8;
  v10 = sub_1DD336700();
  a5(&v13, v7, v9, v10, v11, a4);
}

uint64_t sub_1DD322504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  sub_1DD335860();
  v9(a2, a3, a4, a5);
}

uint64_t sub_1DD32257C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    if (a4)
    {
      return (*(result + 16))(result, a2);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void Connection.commitHook(_:)(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_71_0();
    OUTLINED_FUNCTION_72_4();
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v1;
    OUTLINED_FUNCTION_0_17();
    OUTLINED_FUNCTION_10_10();
    v17[2] = sub_1DD3226EC;
    v17[3] = &block_descriptor_18_0;
    _Block_copy(v17);
    OUTLINED_FUNCTION_4_15();

    Connection.handle.getter();
    OUTLINED_FUNCTION_13_11();
    sqlite3_commit_hook(v6, v7, v8);
    v9 = OUTLINED_FUNCTION_19_0();
    sub_1DD27EBC8(v9, v10);
    v11 = *(v2 + 56);
    *(v2 + 56) = v4;
    _Block_release(v11);
    OUTLINED_FUNCTION_21_6();
  }

  else
  {
    Connection.handle.getter();
    OUTLINED_FUNCTION_30_0();
    sqlite3_commit_hook(v12, v13, v14);
    *(v2 + 56) = 0;
    OUTLINED_FUNCTION_21_6();

    _Block_release(v15);
  }
}

uint64_t sub_1DD3226EC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_1DD335860();
  v3 = v1(v2);

  return v3;
}

void Connection.rollbackHook(_:)(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_71_0();
    OUTLINED_FUNCTION_72_4();
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v1;
    OUTLINED_FUNCTION_0_17();
    OUTLINED_FUNCTION_10_10();
    v17[2] = sub_1DD2811BC;
    v17[3] = &block_descriptor_24_0;
    _Block_copy(v17);
    OUTLINED_FUNCTION_4_15();

    Connection.handle.getter();
    OUTLINED_FUNCTION_13_11();
    sqlite3_rollback_hook(v6, v7, v8);
    v9 = OUTLINED_FUNCTION_19_0();
    sub_1DD27EBC8(v9, v10);
    v11 = *(v2 + 64);
    *(v2 + 64) = v4;
    _Block_release(v11);
    OUTLINED_FUNCTION_21_6();
  }

  else
  {
    Connection.handle.getter();
    OUTLINED_FUNCTION_30_0();
    sqlite3_rollback_hook(v12, v13, v14);
    *(v2 + 64) = 0;
    OUTLINED_FUNCTION_21_6();

    _Block_release(v15);
  }
}

uint64_t sub_1DD32283C(uint64_t a1, int a2, uint64_t a3, void (*a4)(void *__return_ptr, void), int a5)
{
  if (a2 < 0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v5 = a1;
  v8 = MEMORY[0x1E69E7CC0];
  if (a2)
  {
    v23 = a4;
    v10 = a2;
    v26[0] = MEMORY[0x1E69E7CC0];
    v6 = v26;
    sub_1DD313B38(0, a2, 0);
    v11 = 0;
    v8 = v26[0];
    v5 = 40;
    while (v10 != v11)
    {
      v25[0] = v11;
      sub_1DD322C8C(v25, a3, &v28);
      v26[0] = v8;
      v13 = *(v8 + 16);
      v12 = *(v8 + 24);
      if (v13 >= v12 >> 1)
      {
        v6 = v26;
        sub_1DD313B38((v12 > 1), v13 + 1, 1);
        v8 = v26[0];
      }

      ++v11;
      *(v8 + 16) = v13 + 1;
      v14 = v8 + 40 * v13;
      v15 = v28;
      v16 = v29;
      *(v14 + 64) = v30;
      *(v14 + 32) = v15;
      *(v14 + 48) = v16;
      if (v10 == v11)
      {
        a4 = v23;
        v5 = a1;
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_33;
  }

LABEL_9:
  LODWORD(v6) = a5;
  a4(&v28, v8);
  sub_1DD28D7A0(&v28, v26);
  if (v27)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6680, &qword_1DD339370);
    if (swift_dynamicCast())
    {

      LODWORD(v6) = v25[0];
      v17 = *(v25[0] + 16);
      if (v17 >> 31)
      {
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      sqlite3_result_blob(v5, (v25[0] + 32), v17, 0);

      return sub_1DD320020(&v28);
    }
  }

  else
  {
    sub_1DD320020(v26);
  }

  sub_1DD28D7A0(&v28, v26);
  if (v27)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6680, &qword_1DD339370);
    if (swift_dynamicCast())
    {

      sqlite3_result_double(v5, *v25);
      return sub_1DD320020(&v28);
    }
  }

  else
  {
    sub_1DD320020(v26);
  }

  sub_1DD28D7A0(&v28, v26);
  if (v27)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6680, &qword_1DD339370);
    if (swift_dynamicCast())
    {

      sqlite3_result_int64(v5, v25[0]);
      return sub_1DD320020(&v28);
    }
  }

  else
  {
    sub_1DD320020(v26);
  }

  sub_1DD28D7A0(&v28, v26);
  if (v27)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6680, &qword_1DD339370);
    if (swift_dynamicCast())
    {

      v18 = sub_1DD3366C0();
      if (v18 >= 0xFFFFFFFF80000000)
      {
        LODWORD(v6) = v18;
        if (v18 <= 0x7FFFFFFF)
        {
          if (qword_1EE0275C8 == -1)
          {
LABEL_27:
            v19 = qword_1EE02A1A0;
            v20 = sub_1DD336650();

            sqlite3_result_text(v5, (v20 + 32), v6, v19);

            return sub_1DD320020(&v28);
          }

LABEL_37:
          swift_once();
          goto LABEL_27;
        }

LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

LABEL_35:
      __break(1u);
      goto LABEL_36;
    }
  }

  else
  {
    sub_1DD320020(v26);
  }

  if (!*(&v29 + 1))
  {

    sqlite3_result_null(v5);
    return sub_1DD320020(&v28);
  }

  v26[0] = 0;
  v26[1] = 0xE000000000000000;
  sub_1DD336C00();

  v25[0] = 0xD000000000000019;
  v25[1] = 0x80000001DD33EC20;
  sub_1DD28D7A0(&v28, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7090, &qword_1DD33CA20);
  v22 = sub_1DD336630();
  MEMORY[0x1E12AC540](v22);

  result = sub_1DD336D20();
  __break(1u);
  return result;
}

void sub_1DD322C8C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v4 = *(a2 + 8 * *a1);
    switch(sqlite3_value_type(v4))
    {
      case 1:
        v5 = sqlite3_value_int64(v4);
        *(a3 + 24) = MEMORY[0x1E69E7360];
        *(a3 + 32) = &protocol witness table for Int64;
        *a3 = v5;
        break;
      case 2:
        v11 = sqlite3_value_double(v4);
        *(a3 + 24) = MEMORY[0x1E69E63B0];
        *(a3 + 32) = &protocol witness table for Double;
        *a3 = v11;
        break;
      case 3:
        if (!sqlite3_value_text(v4))
        {
          goto LABEL_12;
        }

        v6 = sub_1DD336710();
        *(a3 + 24) = MEMORY[0x1E69E6158];
        *(a3 + 32) = &protocol witness table for String;
        *a3 = v6;
        *(a3 + 8) = v7;
        break;
      case 4:
        v8 = sqlite3_value_blob(v4);
        if (!v8)
        {
          goto LABEL_13;
        }

        v9 = v8;
        v10 = sqlite3_value_bytes(v4);
        *(a3 + 24) = &type metadata for Blob;
        *(a3 + 32) = &protocol witness table for Blob;
        Blob.init(bytes:length:)(v9, v10, a3);
        break;
      case 5:
        *(a3 + 32) = 0;
        *a3 = 0u;
        *(a3 + 16) = 0u;
        break;
      default:
        goto LABEL_14;
    }
  }

  else
  {
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    sub_1DD336C00();

    v12 = sub_1DD336DC0();
    MEMORY[0x1E12AC540](v12);

    sub_1DD336D20();
    __break(1u);
  }
}

uint64_t sub_1DD322E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  sub_1DD335860();
  v7(a2, a3, a4);
}

uint64_t sub_1DD322EE4(sqlite3_context *a1)
{
  v1 = *(sqlite3_user_data(a1) + 2);

  return v1();
}

uint64_t (*sub_1DD322F40(void *a1, uint64_t a2, uint64_t a3))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  v6[4] = sub_1DD323EE8(v6, a2, a3);
  return sub_1DD322FB4;
}

void sub_1DD322FB4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

void Connection.createCollation(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  OUTLINED_FUNCTION_72_4();
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  OUTLINED_FUNCTION_0_17();
  OUTLINED_FUNCTION_10_10();
  v17[2] = sub_1DD323228;
  v17[3] = &block_descriptor_30;
  v12 = _Block_copy(v17);
  sub_1DD335860();

  v13 = Connection.handle.getter();
  v14 = sub_1DD336650();
  collation_v2 = sqlite3_create_collation_v2(v13, (v14 + 32), 1, v12, sub_1DD323308, 0);

  sub_1DD2837A0(collation_v2, 0);
  if (!v5)
  {
    OUTLINED_FUNCTION_12_12();
    swift_beginAccess();
    _Block_copy(v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v6 + 80);
    sub_1DD32398C(v12, a1, a2, isUniquelyReferenced_nonNull_native);
    *(v6 + 80) = v18;
    swift_endAccess();
  }

  _Block_release(v12);
}

uint64_t sub_1DD323188(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = sub_1DD336710();
  v6 = v5;
  v7 = sub_1DD336710();
  v9 = a3(v4, v6, v7, v8);

  if (v9 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v9 <= 0x7FFFFFFF)
  {
    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD323228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  sub_1DD335860();
  v6 = v5(a2, a3);

  return v6;
}

uint64_t sub_1DD323284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 && a5)
  {
    v6 = *(a1 + 16);

    return v6();
  }

  else
  {
    result = sub_1DD336D20();
    __break(1u);
  }

  return result;
}

uint64_t sub_1DD32330C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD71E8, &qword_1DD33C948);
  swift_allocObject();
  result = sub_1DD336390();
  qword_1EE028940 = result;
  return result;
}

const char *Connection.description.getter()
{
  v0 = Connection.handle.getter();
  result = sqlite3_db_filename(v0, 0);
  if (result)
  {

    return sub_1DD336700();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DD3233B8()
{
  result = sub_1DD324230(&unk_1F589CD80);
  qword_1EE028740 = result;
  return result;
}

uint64_t Result.description.getter()
{
  v1 = *v0;
  if (v0[3])
  {
    sub_1DD335860();
    sub_1DD336C00();

    v6 = v1;
    MEMORY[0x1E12AC540](10272, 0xE200000000000000);
    v2 = Statement.description.getter();
    MEMORY[0x1E12AC540](v2);

    MEMORY[0x1E12AC540](0x3A65646F63282029, 0xE900000000000020);
    v3 = sub_1DD336DC0();
    MEMORY[0x1E12AC540](v3);

    MEMORY[0x1E12AC540](41, 0xE100000000000000);
  }

  else
  {
    v6 = *v0;

    MEMORY[0x1E12AC540](0x203A65646F632820, 0xE800000000000000);
    v4 = sub_1DD336DC0();
    MEMORY[0x1E12AC540](v4);

    MEMORY[0x1E12AC540](41, 0xE100000000000000);
  }

  return v6;
}

uint64_t sub_1DD323560(uint64_t a1, void (*a2)(uint64_t))
{
  v3 = sub_1DD336710();
  a2(v3);
}

uint64_t sub_1DD3235B0(int a1, uint64_t a2, sqlite3_stmt *pStmt)
{
  if (pStmt)
  {
    v4 = sqlite3_expanded_sql(pStmt);
    if (v4)
    {
      v5 = v4;
      (*(a2 + 16))(a2, v4);
      sqlite3_free(v5);
    }
  }

  return 0;
}

void sub_1DD323614(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1DD2B3048(a2);
  if (__OFADD__(v7[2], (v9 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = v8;
  v11 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7200, &qword_1DD33C958);
  if ((sub_1DD336CC0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v12 = sub_1DD2B3048(a2);
  if ((v11 & 1) != (v13 & 1))
  {
LABEL_13:
    sub_1DD336E30();
    __break(1u);
    return;
  }

  v10 = v12;
LABEL_5:
  v14 = *v4;
  if (v11)
  {
    v15 = v14[7];
    v16 = *(v15 + 8 * v10);
    *(v15 + 8 * v10) = a1;

    _Block_release(v16);
  }

  else
  {

    sub_1DD323E28(v10, a2, a1, v14);
  }
}

uint64_t sub_1DD323738(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_1DD28EFFC();
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7208, &qword_1DD33C960);
  if ((sub_1DD336CC0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_1DD28EFFC();
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_1DD336E30();
    __break(1u);
    return result;
  }

  v12 = v14;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    *(v16[7] + 8 * v12) = a1;
  }

  else
  {
    sub_1DD2B3A70(v12, a2, a3, a1, v16);
  }
}

unint64_t sub_1DD323874()
{
  result = qword_1EE0285A0;
  if (!qword_1EE0285A0)
  {
    sub_1DD336980();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0285A0);
  }

  return result;
}

unint64_t sub_1DD3238CC()
{
  result = qword_1EE0285E8;
  if (!qword_1EE0285E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCD6708, &qword_1DD339E50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0285E8);
  }

  return result;
}

uint64_t sub_1DD323930(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

void sub_1DD32398C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_1DD28EFFC();
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD71E0, "|E");
  if ((sub_1DD336CC0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_1DD28EFFC();
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    sub_1DD336E30();
    __break(1u);
    return;
  }

  v12 = v14;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    v17 = v16[7];
    v18 = *(v17 + 8 * v12);
    *(v17 + 8 * v12) = a1;

    _Block_release(v18);
  }

  else
  {
    sub_1DD2B3A70(v12, a2, a3, a1, v16);
  }
}

unint64_t sub_1DD323ACC()
{
  result = qword_1ECCD71D0;
  if (!qword_1ECCD71D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCD71D0);
  }

  return result;
}

unint64_t sub_1DD323B24()
{
  result = qword_1ECCD71D8;
  if (!qword_1ECCD71D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCD71D8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8RRSQLite10ConnectionC8LocationO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1DD323BF4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DD323C48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_1DD323CA4(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

_BYTE *sub_1DD323CDC(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1DD323DA8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DD323DE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DD323E28(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_1DD323E94()
{
  result = qword_1ECCD71F0;
  if (!qword_1ECCD71F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCD71F0);
  }

  return result;
}

void (*sub_1DD323EE8(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v6 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[8] = sub_1DD3241FC(v6);
  v6[9] = sub_1DD323FE0(v6 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1DD323F80;
}

void sub_1DD323F80(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_1DD323FE0(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1)
{
  v5 = v4;
  v9 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v9;
  v9[2] = a3;
  v9[3] = v4;
  v9[1] = a2;
  v10 = *v4;
  v11 = sub_1DD28EFFC();
  *(v9 + 40) = v12 & 1;
  if (__OFADD__(*(v10 + 16), (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v13 = v11;
  v14 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7208, &qword_1DD33C960);
  if (sub_1DD336CC0())
  {
    v15 = sub_1DD28EFFC();
    if ((v14 & 1) == (v16 & 1))
    {
      v13 = v15;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_1DD336E30();
    __break(1u);
    return result;
  }

LABEL_5:
  v9[4] = v13;
  if (v14)
  {
    v17 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v17 = 0;
  }

  *v9 = v17;
  return sub_1DD324120;
}

void sub_1DD324120(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 40);
  if (v2)
  {
    v4 = v1[4];
    v5 = *v1[3];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      sub_1DD2B3A70(v4, v1[1], v1[2], v2, v5);
    }
  }

  else if ((*a1)[5])
  {
    sub_1DD324374(*(*v1[3] + 48) + 16 * v1[4]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7210, &qword_1DD33C968);
    sub_1DD336CE0();
  }

  free(v1);
}

uint64_t (*sub_1DD3241FC(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1DD324224;
}

uint64_t sub_1DD324230(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x1E69E7CD0];
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD71F8, &qword_1DD33C950);
  result = sub_1DD336BE0();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_14:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  v7 = a1 + 32;
  v8 = *(result + 40);
  v9 = ~(-1 << *(result + 32));
  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    v11 = *(v7 + 4 * v5++);
    for (result = MEMORY[0x1E12ACCF0](v8, v11, 4); ; result = v12 + 1)
    {
      v12 = result & v9;
      v13 = (result & v9) >> 6;
      v14 = *(v6 + 8 * v13);
      v15 = 1 << (result & v9);
      if ((v15 & v14) == 0)
      {
        break;
      }

      if (*(*(v3 + 48) + 4 * v12) == v11)
      {
        goto LABEL_11;
      }
    }

    *(v6 + 8 * v13) = v15 | v14;
    *(*(v3 + 48) + 4 * v12) = v11;
    v16 = *(v3 + 16);
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (v17)
    {
      goto LABEL_16;
    }

    *(v3 + 16) = v18;
LABEL_11:
    if (v10 == v4)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t + infix(_:_:)()
{
  OUTLINED_FUNCTION_69_8();
  return sub_1DD3246CC(v0);
}

{
  OUTLINED_FUNCTION_69_8();
  return sub_1DD325550(v0, v1, v2, v3, &qword_1DD339260, v4);
}

uint64_t + infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_74_4();
  return sub_1DD3246CC(v3);
}

{
  OUTLINED_FUNCTION_74_4();
  return sub_1DD325550(v3, v4, v5, v6, &qword_1DD339278, v7);
}

uint64_t + infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return sub_1DD324808(a1, a2, a3, a4, a5, 0);
}

{
  return sub_1DD324898(a1, a2, a3, a4, a5, 0);
}

{
  return sub_1DD3249E8(a1, a2, a3, a4, a5, 0);
}

{
  return sub_1DD324A74(a1, a2, a3, a4, a5, 0);
}

{
  return sub_1DD325658(a1, a2, a3, a4, a5, 0);
}

{
  return sub_1DD3256F4(a1, a2, a3, a4, a5, 0);
}

{
  return sub_1DD3257AC(a1, a2, a3, a4, a5, 0);
}

uint64_t - infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return sub_1DD324808(a1, a2, a3, a4, a5, 1);
}

{
  return sub_1DD324898(a1, a2, a3, a4, a5, 1);
}

{
  return sub_1DD3249E8(a1, a2, a3, a4, a5, 1);
}

{
  return sub_1DD324A74(a1, a2, a3, a4, a5, 1);
}

{
  return sub_1DD325658(a1, a2, a3, a4, a5, 1);
}

{
  return sub_1DD3256F4(a1, a2, a3, a4, a5, 1);
}

{
  return sub_1DD3257AC(a1, a2, a3, a4, a5, 1);
}

uint64_t * infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return sub_1DD324808(a1, a2, a3, a4, a5, 5);
}

{
  return sub_1DD324898(a1, a2, a3, a4, a5, 5);
}

{
  return sub_1DD3249E8(a1, a2, a3, a4, a5, 5);
}

{
  return sub_1DD324A74(a1, a2, a3, a4, a5, 5);
}

{
  return sub_1DD325658(a1, a2, a3, a4, a5, 5);
}

{
  return sub_1DD3256F4(a1, a2, a3, a4, a5, 5);
}

{
  return sub_1DD3257AC(a1, a2, a3, a4, a5, 5);
}

uint64_t / infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return sub_1DD324808(a1, a2, a3, a4, a5, 6);
}

{
  return sub_1DD324898(a1, a2, a3, a4, a5, 6);
}

{
  return sub_1DD3249E8(a1, a2, a3, a4, a5, 6);
}

{
  return sub_1DD324A74(a1, a2, a3, a4, a5, 6);
}

{
  return sub_1DD325658(a1, a2, a3, a4, a5, 6);
}

{
  return sub_1DD3256F4(a1, a2, a3, a4, a5, 6);
}

{
  return sub_1DD3257AC(a1, a2, a3, a4, a5, 6);
}

void sub_1DD32495C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, _UNKNOWN **a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_52_6();
  a31 = v35;
  a32 = v36;
  v40 = OUTLINED_FUNCTION_48_5(v37, v38, v39);
  a19 = OUTLINED_FUNCTION_54_8(v40, v41, v42, v43);
  a20 = &protocol witness table for Expression<A>;
  a16 = v34;
  a17 = v32;
  a18 = v33;
  v44 = OUTLINED_FUNCTION_38_10();
  type metadata accessor for Expression(v44, v45, v46, v47);
  OUTLINED_FUNCTION_80_5();

  OUTLINED_FUNCTION_62_6(v48, v49, v50, v51, v52, v53);
  __swift_destroy_boxed_opaque_existential_1(&a11);
  __swift_destroy_boxed_opaque_existential_1(&a16);
  OUTLINED_FUNCTION_50_7();
}

uint64_t % infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_1DD324BB4(a1, a2, a3, a4, 7);
}

{
  return sub_1DD324C44(a1, a2, a3, a4, 7);
}

{
  return sub_1DD324D94(a1, a2, a3, a4, 7);
}

{
  return sub_1DD324E20(a1, a2, a3, a4, 7);
}

{
  return sub_1DD3259B0(a1, a2, a3, a4, 7);
}

{
  return sub_1DD325A4C(a1, a2, a3, a4, 7);
}

{
  return sub_1DD325B04(a1, a2, a3, a4, 7);
}

uint64_t << infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_1DD324BB4(a1, a2, a3, a4, 8);
}

{
  return sub_1DD324C44(a1, a2, a3, a4, 8);
}

{
  return sub_1DD324D94(a1, a2, a3, a4, 8);
}

{
  return sub_1DD324E20(a1, a2, a3, a4, 8);
}

{
  return sub_1DD3259B0(a1, a2, a3, a4, 8);
}

{
  return sub_1DD325A4C(a1, a2, a3, a4, 8);
}

{
  return sub_1DD325B04(a1, a2, a3, a4, 8);
}

uint64_t >> infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_1DD324BB4(a1, a2, a3, a4, 9);
}

{
  return sub_1DD324C44(a1, a2, a3, a4, 9);
}

{
  return sub_1DD324D94(a1, a2, a3, a4, 9);
}

{
  return sub_1DD324E20(a1, a2, a3, a4, 9);
}

{
  return sub_1DD3259B0(a1, a2, a3, a4, 9);
}

{
  return sub_1DD325A4C(a1, a2, a3, a4, 9);
}

{
  return sub_1DD325B04(a1, a2, a3, a4, 9);
}

uint64_t & infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_1DD324BB4(a1, a2, a3, a4, 10);
}

{
  return sub_1DD324C44(a1, a2, a3, a4, 10);
}

{
  return sub_1DD324D94(a1, a2, a3, a4, 10);
}

{
  return sub_1DD324E20(a1, a2, a3, a4, 10);
}

{
  return sub_1DD3259B0(a1, a2, a3, a4, 10);
}

{
  return sub_1DD325A4C(a1, a2, a3, a4, 10);
}

{
  return sub_1DD325B04(a1, a2, a3, a4, 10);
}

uint64_t | infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_1DD324BB4(a1, a2, a3, a4, 11);
}

{
  return sub_1DD324C44(a1, a2, a3, a4, 11);
}

{
  return sub_1DD324D94(a1, a2, a3, a4, 11);
}

{
  return sub_1DD324E20(a1, a2, a3, a4, 11);
}

{
  return sub_1DD3259B0(a1, a2, a3, a4, 11);
}

{
  return sub_1DD325A4C(a1, a2, a3, a4, 11);
}

{
  return sub_1DD325B04(a1, a2, a3, a4, 11);
}

void sub_1DD324D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, _UNKNOWN **a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_52_6();
  a31 = v35;
  a32 = v36;
  v40 = OUTLINED_FUNCTION_48_5(v37, v38, v39);
  a19 = OUTLINED_FUNCTION_54_8(v40, v41, v42, v43);
  a20 = &protocol witness table for Expression<A>;
  a16 = v34;
  a17 = v32;
  a18 = v33;
  v44 = OUTLINED_FUNCTION_38_10();
  type metadata accessor for Expression(v44, v45, v46, v47);
  OUTLINED_FUNCTION_80_5();

  OUTLINED_FUNCTION_62_6(v48, v49, v50, v51, v52, v53);
  __swift_destroy_boxed_opaque_existential_1(&a11);
  __swift_destroy_boxed_opaque_existential_1(&a16);
  OUTLINED_FUNCTION_50_7();
}

uint64_t ^ infix<A>(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  return sub_1DD324FB4(a1, a2, a3, a4, & infix<A>(_:_:), ~ prefix<A>(_:), | infix<A>(_:_:), & infix<A>(_:_:));
}

{
  return sub_1DD324FB4(a1, a2, a3, a4, & infix<A>(_:_:), ~ prefix<A>(_:), | infix<A>(_:_:), & infix<A>(_:_:));
}

{
  return sub_1DD324FB4(a1, a2, a3, a4, & infix<A>(_:_:), ~ prefix<A>(_:), | infix<A>(_:_:), & infix<A>(_:_:));
}

{
  return sub_1DD324FB4(a1, a2, a3, a4, & infix<A>(_:_:), ~ prefix<A>(_:), | infix<A>(_:_:), & infix<A>(_:_:));
}

uint64_t ^ infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_1DD3251A8();
}

{
  return sub_1DD3251A8();
}

{
  return sub_1DD325D9C();
}

{
  return sub_1DD325D9C();
}

uint64_t sub_1DD324FB4(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t *, uint64_t *, uint64_t, uint64_t), void (*a6)(uint64_t *__return_ptr, uint64_t *, uint64_t), void (*a7)(uint64_t *__return_ptr, uint64_t *, void *, uint64_t), void (*a8)(uint64_t *, uint64_t *, uint64_t))
{
  v11 = a1[1];
  v12 = a1[2];
  v13 = *a2;
  v14 = a2[1];
  v15 = a2[2];
  v29 = *a1;
  v10 = v29;
  v30 = v11;
  v31 = v12;
  v23 = v13;
  v24 = v14;
  v25 = v15;
  a5(&v26, &v29, &v23, a3, a4);
  v23 = v26;
  v24 = v27;
  v25 = v28;
  a6(&v29, &v23, a3);

  v26 = v29;
  v27 = v30;
  v28 = v31;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v19[0] = v13;
  v19[1] = v14;
  v19[2] = v15;
  a7(&v23, &v20, v19, a3);
  v20 = v23;
  v21 = v24;
  v22 = v25;
  a8(&v26, &v20, a3);
}

uint64_t sub_1DD3251A8()
{
  OUTLINED_FUNCTION_66_7();
  v5 = v4;
  v7 = v6[1];
  v8 = v6[2];
  v14[0] = *v6;
  v14[1] = v7;
  v14[2] = v8;
  v9(v13, v14);
  OUTLINED_FUNCTION_46_9();
  v3();

  OUTLINED_FUNCTION_45_7();
  v1(v12, v5, v0, v2);
  OUTLINED_FUNCTION_40_10();
  v10();
}

uint64_t sub_1DD325284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v11 = sub_1DD325304(a4);
  sub_1DD328FA4(a1, a2, a3, v11, v12, a5, a6);
}

uint64_t sub_1DD325304(char a1)
{
  result = 43;
  switch(a1)
  {
    case 1:
      result = 45;
      break;
    case 2:
      result = 21071;
      break;
    case 3:
      result = 4476481;
      break;
    case 4:
      result = 542396238;
      break;
    case 5:
      result = 42;
      break;
    case 6:
      result = 47;
      break;
    case 7:
      result = 37;
      break;
    case 8:
      result = 15420;
      break;
    case 9:
      result = 15934;
      break;
    case 10:
      result = 38;
      break;
    case 11:
      result = 124;
      break;
    case 12:
      result = 126;
      break;
    case 13:
      result = 61;
      break;
    case 14:
      result = 15649;
      break;
    case 15:
      result = 62;
      break;
    case 16:
      result = 60;
      break;
    case 17:
      result = 15678;
      break;
    case 18:
      result = 15676;
      break;
    case 19:
      result = 31868;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD325550(char a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v8 = *a3;
  v7 = a3[1];
  v9 = a3[2];
  v21[3] = MEMORY[0x1E69E6158];
  v21[4] = &protocol witness table for String;
  LOBYTE(v21[0]) = a1;
  v21[1] = a2;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);

  OUTLINED_FUNCTION_4_16(v10, v11, v12, v13, v14, v15, v16, v17, v8, v7, v9, v20, &protocol witness table for Expression<A>, v21[0]);
  OUTLINED_FUNCTION_53_7();
  a6();
  __swift_destroy_boxed_opaque_existential_1(&v19);
  return __swift_destroy_boxed_opaque_existential_1(v21);
}

uint64_t - prefix<A>(_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_61_7();
  type metadata accessor for Expression(0, v3, v4, v5);
  OUTLINED_FUNCTION_51_9();

  sub_1DD3253F8(v7, 1, a2);
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

{
  v2 = OUTLINED_FUNCTION_85_3(a1, a2);
  v3 = OUTLINED_FUNCTION_83_0();
  type metadata accessor for Expression(v3, v4, v5, v6);
  OUTLINED_FUNCTION_82_4();

  sub_1DD3253F8(v8, 1, v2);
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t ~ prefix<A>(_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_61_7();
  type metadata accessor for Expression(0, v3, v4, v5);
  OUTLINED_FUNCTION_51_9();

  sub_1DD3253F8(v7, 12, a2);
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

{
  v2 = OUTLINED_FUNCTION_85_3(a1, a2);
  v3 = OUTLINED_FUNCTION_83_0();
  type metadata accessor for Expression(v3, v4, v5, v6);
  OUTLINED_FUNCTION_82_4();

  sub_1DD3253F8(v8, 12, v2);
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t sub_1DD325D9C()
{
  OUTLINED_FUNCTION_66_7();
  v5 = v4;
  v7 = v6[1];
  v8 = v6[2];
  v13[3] = *v6;
  v13[4] = v7;
  v13[5] = v8;
  v9(v13);
  OUTLINED_FUNCTION_46_9();
  v3();

  OUTLINED_FUNCTION_45_7();
  v1(v5, v12, v0, v2);
  OUTLINED_FUNCTION_40_10();
  v10();
}

uint64_t == infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return OUTLINED_FUNCTION_8_13(a1, a2, a3, a4, a5, 61);
}

{
  return OUTLINED_FUNCTION_10_11(a1, a2, a3, a4, a5, 61);
}

{
  return OUTLINED_FUNCTION_9_15(a1, a2, a3, a4, a5, 61);
}

void == infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, _UNKNOWN **a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_11_8(a1, a2, a3, a4, a5, 61, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

{
  OUTLINED_FUNCTION_13_12(a1, a2, a3, a4, a5, 61, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t == infix<A>(_:_:)()
{
  OUTLINED_FUNCTION_68_6();
  return sub_1DD325F34(v0, v1, v2, v3, v4, v5, v6, v7, v9);
}

{
  OUTLINED_FUNCTION_68_6();
  return sub_1DD326244(v0, v1, v2, v3, v4, v5, v6, v7, v9);
}

uint64_t != infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return OUTLINED_FUNCTION_14_14(a1, a2, a3, a4, a5, 15649);
}

{
  return OUTLINED_FUNCTION_16_10(a1, a2, a3, a4, a5, 15649);
}

{
  return OUTLINED_FUNCTION_15_13(a1, a2, a3, a4, a5, 15649);
}

void != infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, _UNKNOWN **a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_17_12(a1, a2, a3, a4, a5, 15649, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

{
  OUTLINED_FUNCTION_19_8(a1, a2, a3, a4, a5, 15649, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t != infix<A>(_:_:)()
{
  OUTLINED_FUNCTION_47_6();
  return sub_1DD325F34(v0, v1, v2, v3, v4, v5, v6, v7, v9);
}

{
  OUTLINED_FUNCTION_47_6();
  return sub_1DD326244(v0, v1, v2, v3, v4, v5, v6, v7, v9);
}

uint64_t sub_1DD325F34@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v51 = a6;
  v52 = a7;
  v50 = a5;
  v53 = a4;
  v54 = a8;
  OUTLINED_FUNCTION_31_9();
  v12 = sub_1DD336AD0();
  OUTLINED_FUNCTION_8_9();
  v14 = v13;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v49 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v49 - v18;
  OUTLINED_FUNCTION_8_9();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *a1;
  v26 = a1[1];
  v27 = a1[2];
  (*(v14 + 16))(v19, a2, v12);
  if (__swift_getEnumTagSinglePayload(v19, 1, a3) == 1)
  {
    (*(v14 + 8))(v19, v12);
    v30 = type metadata accessor for Expression(0, v12, v28, v29);
    v61 = v30;
    v62 = &protocol witness table for Expression<A>;
    v58 = v25;
    v59 = v26;
    v60 = v27;
    v31 = v49;
    OUTLINED_FUNCTION_32_10();
    __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
    v56 = v30;
    v57 = &protocol witness table for Expression<A>;

    OUTLINED_FUNCTION_34_9();
    OUTLINED_FUNCTION_30_6();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_79_6(v31, v55);
    v36 = OUTLINED_FUNCTION_23_9();
    sub_1DD312FE4(v36, v37, v38, v52, a9, v39);
  }

  else
  {
    (*(v21 + 32))(v24, v19, a3);
    v61 = type metadata accessor for Expression(0, v12, v40, v41);
    v62 = &protocol witness table for Expression<A>;
    v58 = v25;
    v59 = v26;
    v60 = v27;
    v42 = *(v53 + 8);
    v56 = a3;
    v57 = v42;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v55);
    (*(v21 + 16))(boxed_opaque_existential_1, v24, a3);

    v44 = OUTLINED_FUNCTION_23_9();
    sub_1DD312FE4(v44, v45, v46, v50, v51, v47);
    (*(v21 + 8))(v24, a3);
  }

  __swift_destroy_boxed_opaque_existential_1(v55);
  return __swift_destroy_boxed_opaque_existential_1(&v58);
}

uint64_t sub_1DD326244@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v47 = a6;
  v48 = a7;
  v46 = a5;
  v50 = a4;
  v51 = a8;
  OUTLINED_FUNCTION_31_9();
  v12 = sub_1DD336AD0();
  OUTLINED_FUNCTION_8_9();
  v14 = v13;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v46 - v19;
  OUTLINED_FUNCTION_8_9();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v46 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = *a2;
  (*(v14 + 16))(v20, a1, v12);
  if (__swift_getEnumTagSinglePayload(v20, 1, a3) == 1)
  {
    (*(v14 + 8))(v20, v12);
    v28 = type metadata accessor for Expression(0, v12, v26, v27);
    OUTLINED_FUNCTION_32_10();
    __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
    v56 = v28;
    v57 = &protocol witness table for Expression<A>;
    OUTLINED_FUNCTION_34_9();
    OUTLINED_FUNCTION_30_6();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_79_6(v18, v55);
    v53 = v28;
    v54 = &protocol witness table for Expression<A>;
    OUTLINED_FUNCTION_87_3();

    v33 = OUTLINED_FUNCTION_23_9();
    sub_1DD312FE4(v33, v34, v35, v48, a9, v36);
  }

  else
  {
    (*(v22 + 32))(v25, v20, a3);
    v37 = *(v50 + 8);
    v56 = a3;
    v57 = v37;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v55);
    (*(v22 + 16))(boxed_opaque_existential_1, v25, a3);
    v53 = type metadata accessor for Expression(0, v12, v39, v40);
    v54 = &protocol witness table for Expression<A>;
    OUTLINED_FUNCTION_87_3();

    v41 = OUTLINED_FUNCTION_23_9();
    sub_1DD312FE4(v41, v42, v43, v46, v47, v44);
    (*(v22 + 8))(v25, a3);
  }

  __swift_destroy_boxed_opaque_existential_1(v52);
  return __swift_destroy_boxed_opaque_existential_1(v55);
}

uint64_t > infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return OUTLINED_FUNCTION_8_13(a1, a2, a3, a4, a5, 62);
}

{
  return OUTLINED_FUNCTION_10_11(a1, a2, a3, a4, a5, 62);
}

{
  return OUTLINED_FUNCTION_42_8(a1, a2, a3, a4, a5, 62);
}

{
  return OUTLINED_FUNCTION_9_15(a1, a2, a3, a4, a5, 62);
}

{
  return OUTLINED_FUNCTION_41_9(a1, a2, a3, a4, a5, 62);
}

void > infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, _UNKNOWN **a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_11_8(a1, a2, a3, a4, a5, 62, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

{
  OUTLINED_FUNCTION_13_12(a1, a2, a3, a4, a5, 62, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t >= infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return OUTLINED_FUNCTION_14_14(a1, a2, a3, a4, a5, 15678);
}

{
  return OUTLINED_FUNCTION_16_10(a1, a2, a3, a4, a5, 15678);
}

{
  return OUTLINED_FUNCTION_44_6(a1, a2, a3, a4, a5, 15678);
}

{
  return OUTLINED_FUNCTION_15_13(a1, a2, a3, a4, a5, 15678);
}

{
  return OUTLINED_FUNCTION_43_7(a1, a2, a3, a4, a5, 15678);
}

void >= infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, _UNKNOWN **a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_17_12(a1, a2, a3, a4, a5, 15678, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

{
  OUTLINED_FUNCTION_19_8(a1, a2, a3, a4, a5, 15678, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t < infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return OUTLINED_FUNCTION_8_13(a1, a2, a3, a4, a5, 60);
}

{
  return OUTLINED_FUNCTION_10_11(a1, a2, a3, a4, a5, 60);
}

{
  return OUTLINED_FUNCTION_42_8(a1, a2, a3, a4, a5, 60);
}

{
  return OUTLINED_FUNCTION_9_15(a1, a2, a3, a4, a5, 60);
}

{
  return OUTLINED_FUNCTION_41_9(a1, a2, a3, a4, a5, 60);
}

void < infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, _UNKNOWN **a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_11_8(a1, a2, a3, a4, a5, 60, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

{
  OUTLINED_FUNCTION_13_12(a1, a2, a3, a4, a5, 60, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t <= infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return OUTLINED_FUNCTION_14_14(a1, a2, a3, a4, a5, 15676);
}

{
  return OUTLINED_FUNCTION_16_10(a1, a2, a3, a4, a5, 15676);
}

{
  return OUTLINED_FUNCTION_44_6(a1, a2, a3, a4, a5, 15676);
}

{
  return OUTLINED_FUNCTION_15_13(a1, a2, a3, a4, a5, 15676);
}

{
  return OUTLINED_FUNCTION_43_7(a1, a2, a3, a4, a5, 15676);
}

void <= infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, _UNKNOWN **a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_17_12(a1, a2, a3, a4, a5, 15676, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

{
  OUTLINED_FUNCTION_19_8(a1, a2, a3, a4, a5, 15676, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

void sub_1DD32665C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, _UNKNOWN **a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_52_6();
  a31 = v35;
  a32 = v36;
  OUTLINED_FUNCTION_39_10();
  v37 = OUTLINED_FUNCTION_31_9();
  a19 = type metadata accessor for Expression(v37, v38, v39, v40);
  a20 = &protocol witness table for Expression<A>;
  a16 = v34;
  a17 = v32;
  a18 = v33;
  v41 = sub_1DD336AD0();
  OUTLINED_FUNCTION_65_5(v41, v42, v43, v44);
  OUTLINED_FUNCTION_81_5();

  OUTLINED_FUNCTION_32_10();
  sub_1DD312FE4(v45, v46, v47, v48, a10, v49);
  __swift_destroy_boxed_opaque_existential_1(&a11);
  __swift_destroy_boxed_opaque_existential_1(&a16);
  OUTLINED_FUNCTION_50_7();
}

void sub_1DD326704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, _UNKNOWN **a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_52_6();
  a31 = v35;
  a32 = v36;
  OUTLINED_FUNCTION_39_10();
  v37 = sub_1DD336AD0();
  a19 = OUTLINED_FUNCTION_65_5(v37, v38, v39, v40);
  a20 = &protocol witness table for Expression<A>;
  a16 = v34;
  a17 = v32;
  a18 = v33;
  v41 = OUTLINED_FUNCTION_83_0();
  type metadata accessor for Expression(v41, v42, v43, v44);
  OUTLINED_FUNCTION_81_5();

  OUTLINED_FUNCTION_32_10();
  sub_1DD312FE4(v45, v46, v47, v48, a10, v49);
  __swift_destroy_boxed_opaque_existential_1(&a11);
  __swift_destroy_boxed_opaque_existential_1(&a16);
  OUTLINED_FUNCTION_50_7();
}

void sub_1DD326A80(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  v14 = a1[2];

  sub_1DD336C00();

  MEMORY[0x1E12AC540](0xD000000000000010, 0x80000001DD33EC60);
  v13 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7140, &qword_1DD33CC30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD3391F0;
  v10 = *(a3 + 56);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(inited + 56) = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(inited + 64) = AssociatedConformanceWitness;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  v10(a2, a3);
  OUTLINED_FUNCTION_83_0();
  sub_1DD336580();
  *(inited + 96) = AssociatedTypeWitness;
  *(inited + 104) = AssociatedConformanceWitness;
  __swift_allocate_boxed_opaque_existential_1((inited + 72));
  v10(a2, a3);
  sub_1DD31304C(inited);
  *a4 = v7;
  a4[1] = v13;
  a4[2] = v14;
}

void sub_1DD326C40(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  sub_1DD336C00();

  MEMORY[0x1E12AC540](0x4E41203F203D3E20, 0xEA00000000002044);
  MEMORY[0x1E12AC540](v6, v7);
  MEMORY[0x1E12AC540](1059077152, 0xE400000000000000);
  v15 = v7;
  v16 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7140, &qword_1DD33CC30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD339380;
  v10 = *(a3 + 56);
  OUTLINED_FUNCTION_3_10();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(inited + 56) = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(inited + 64) = AssociatedConformanceWitness;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  v10(a2, a3);
  v18 = v8;

  sub_1DD31304C(inited);

  sub_1DD31304C(v13);
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_1DD339380;
  OUTLINED_FUNCTION_83_0();
  sub_1DD336920();
  *(v14 + 56) = AssociatedTypeWitness;
  *(v14 + 64) = AssociatedConformanceWitness;
  __swift_allocate_boxed_opaque_existential_1((v14 + 32));
  v10(a2, a3);
  sub_1DD31304C(v14);
  *a4 = v16;
  a4[1] = v15;
  a4[2] = v18;
}

void sub_1DD326EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  OUTLINED_FUNCTION_52_6();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41[2];
  v45 = *v41;
  v46 = v41[1];

  MEMORY[0x1E12AC540](v34, a33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7140, &qword_1DD33CC30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD339380;
  v44 = *(v36 + 56);
  OUTLINED_FUNCTION_38_10();
  *(inited + 56) = swift_getAssociatedTypeWitness();
  *(inited + 64) = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  v44(v38, v36);
  sub_1DD31304C(inited);
  *v40 = v45;
  v40[1] = v46;
  v40[2] = v42;
  OUTLINED_FUNCTION_50_7();
}

uint64_t && infix(_:_:)()
{
  OUTLINED_FUNCTION_73_5();
  return sub_1DD28CB30(v0, v1, v2, v3);
}

{
  OUTLINED_FUNCTION_72_6();
  return sub_1DD28CB30(v0, v1, v2, v3);
}

{
  OUTLINED_FUNCTION_73_5();
  return sub_1DD3271EC(v0, v1, v2, v3, v4);
}

{
  OUTLINED_FUNCTION_72_6();
  return sub_1DD3271EC(v0, v1, v2, v3, v4);
}

uint64_t sub_1DD3271EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(void))
{
  OUTLINED_FUNCTION_78_5(a1, a2, a3, a4);
  OUTLINED_FUNCTION_84_7();

  OUTLINED_FUNCTION_3_18(v6, v7, v8, v9, v10, v11, v12, v13, v15[0], v15[1], v15[2], v15[3], v15[4], v16[0]);
  OUTLINED_FUNCTION_22_11();
  a5();
  __swift_destroy_boxed_opaque_existential_1(v15);
  return __swift_destroy_boxed_opaque_existential_1(v16);
}

uint64_t sub_1DD327434(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v24 = &protocol witness table for Expression<A>;
  v21 = v6;
  v22 = v7;
  v23 = OUTLINED_FUNCTION_59_6(a1, a2, a3, a4);
  v19 = MEMORY[0x1E69E6370];
  LOBYTE(v18[0]) = v5;

  OUTLINED_FUNCTION_4_16(v9, v10, v11, v12, v13, v14, v15, v16, v18[0], v18[1], v18[2], v19, &protocol witness table for Bool, v8);
  OUTLINED_FUNCTION_56_9();
  v4();
  __swift_destroy_boxed_opaque_existential_1(v18);
  return __swift_destroy_boxed_opaque_existential_1(&v20);
}

uint64_t || infix(_:_:)()
{
  OUTLINED_FUNCTION_70_7();
  return sub_1DD327434(v0, v1, v2, v3);
}

{
  OUTLINED_FUNCTION_70_7();
  return sub_1DD327518(v0, v1, v2, v3, v4);
}

uint64_t sub_1DD327518(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(void))
{
  OUTLINED_FUNCTION_78_5(a1, a2, a3, a4);
  OUTLINED_FUNCTION_84_7();

  OUTLINED_FUNCTION_3_18(v6, v7, v8, v9, v10, v11, v12, v13, v15[0], v15[1], v15[2], v15[3], v15[4], v16[0]);
  OUTLINED_FUNCTION_56_9();
  a5();
  __swift_destroy_boxed_opaque_existential_1(v15);
  return __swift_destroy_boxed_opaque_existential_1(v16);
}

uint64_t ! prefix(_:)(uint64_t a1)
{
  return sub_1DD32761C(a1, &qword_1ECCD6588, &qword_1DD339240, sub_1DD314890);
}

{
  return sub_1DD32761C(a1, &qword_1ECCD7068, &qword_1DD33BAB0, sub_1DD314890);
}

uint64_t sub_1DD32761C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t, unint64_t))
{
  OUTLINED_FUNCTION_61_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_51_9();

  a4(v8, 542396238, 0xE400000000000000);
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t get_enum_tag_for_layout_string_8RRSQLite9CollationO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1DD3277D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DD32782C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_1DD32788C()
{
  result = Statement.failableNext()();
  if (v1)
  {

    return 0;
  }

  return result;
}

uint64_t Statement.scalar(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  Statement.bind(_:)(a1);
  Statement.scalar(_:)(MEMORY[0x1E69E7CC0], a2);
}

{
  Statement.bind(_:)(a1);
  Statement.scalar(_:)(MEMORY[0x1E69E7CC0], a2);
}

uint64_t Statement.columnCount.setter(uint64_t result)
{
  *(v1 + 32) = result;
  *(v1 + 40) = 0;
  return result;
}

uint64_t (*Statement.columnCount.modify(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = Statement.columnCount.getter();
  return sub_1DD327D00;
}

void *sub_1DD327D00(void *result)
{
  v1 = result[1];
  *(v1 + 32) = *result;
  *(v1 + 40) = 0;
  return result;
}

uint64_t (*Statement.columnNames.modify(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = Statement.columnNames.getter();
  return sub_1DD327D94;
}

uint64_t sub_1DD327DA4@<X0>(void *a1@<X8>)
{
  result = Statement.row.getter(v4);
  v3 = v4[1];
  *a1 = v4[0];
  a1[1] = v3;
  return result;
}

void *sub_1DD327DE0(void *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  return Statement.row.setter(v3);
}

void *Statement.row.setter(void *result)
{
  v2 = result[1];
  *(v1 + 56) = *result;
  *(v1 + 64) = v2;
  return result;
}

uint64_t (*Statement.row.modify(void *a1))()
{
  a1[2] = v1;
  Statement.row.getter(a1);
  return sub_1DD327E6C;
}

void *sub_1DD327E6C(void *result)
{
  v2 = result[1];
  v1 = result[2];
  *(v1 + 56) = *result;
  *(v1 + 64) = v2;
  return result;
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Statement.step()()
{
  v1 = *(v0 + 24);
  sub_1DD335860();
  return sub_1DD28F184(v1, v0);
}

void Statement.scalar(_:)(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v3;
  if (*(a1 + 16))
  {
    Statement.bind(_:)(a1);
    Statement.scalar(_:)(MEMORY[0x1E69E7CC0], a2);
    OUTLINED_FUNCTION_5_12();
  }

  else
  {
    sub_1DD28BA1C(0);
    v6 = *(v2 + 24);
    sub_1DD335860();
    sub_1DD28F184(v6, v2);
    if (!v4)
    {
      Statement.row.getter(&v7);
      Cursor.subscript.getter(a2, 0);
    }
  }
}

const char *sub_1DD327F64@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  OUTLINED_FUNCTION_0_20();
  swift_beginAccess();
  v5 = sqlite3_step(*(a1 + 16));
  result = sub_1DD2837A0(v5, 0);
  if (!v2)
  {
    *a2 = result == 100;
  }

  return result;
}

uint64_t Statement.makeIterator()()
{
  sub_1DD28BA1C(0);

  return sub_1DD335860();
}

uint64_t sub_1DD328000@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  Statement.makeIterator()();

  *a1 = v3;
  return result;
}

uint64_t sub_1DD328084()
{
  sub_1DD328788();
  v1 = v0;

  return v1;
}

uint64_t Array.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a1;
  v29 = a3;
  v7 = sub_1DD336AD0();
  v23 = *(v7 - 8);
  v24 = v7;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - v9;
  v11 = *(a2 - 8);
  v12 = MEMORY[0x1EEE9AC00](v8);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v22 - v15;
  v30 = sub_1DD3364F0();
  v27 = a4;
  v25 = *(a4 + 16);
  v26 = a4 + 16;
  while (1)
  {
    v25(v29, v27);
    if (v4)
    {
      v17 = OUTLINED_FUNCTION_4_17();
      (*(v18 + 8))(v17);
    }

    if (__swift_getEnumTagSinglePayload(v10, 1, a2) == 1)
    {
      break;
    }

    (*(v11 + 32))(v16, v10, a2);
    (*(v11 + 16))(v14, v16, a2);
    sub_1DD336880();
    sub_1DD336870();
    (*(v11 + 8))(v16, a2);
  }

  v20 = OUTLINED_FUNCTION_4_17();
  (*(v21 + 8))(v20);
  (*(v23 + 8))(v10, v24);
  return v30;
}

unint64_t sub_1DD32839C@<X0>(unint64_t *a1@<X8>)
{
  result = Statement.failableNext()();
  if (!v3)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_1DD3283CC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1DD32788C();
  *a1 = result;
  return result;
}

const char *Statement.description.getter()
{
  OUTLINED_FUNCTION_0_20();
  swift_beginAccess();
  result = sqlite3_sql(*(v0 + 16));
  if (result)
  {
    return sub_1DD336700();
  }

  __break(1u);
  return result;
}

double Cursor.subscript.getter(uint64_t iCol)
{
  if (iCol < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (iCol <= 0x7FFFFFFF)
  {
    return sqlite3_column_double(*v1, iCol);
  }

  __break(1u);
  return result;
}

uint64_t Cursor.subscript.getter(uint64_t iCol)
{
  if (iCol < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (iCol > 0x7FFFFFFF)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  iCol = sqlite3_column_text(*v1, iCol);
  if (!iCol)
  {
LABEL_9:
    __break(1u);
    return iCol;
  }

  return sub_1DD336710();
}

uint64_t Cursor.subscript.getter@<X0>(uint64_t iCol@<X0>, void *a2@<X8>)
{
  if (iCol < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (iCol > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    return iCol;
  }

  iCol = sqlite3_column_blob(*v2, iCol);
  if (iCol)
  {
    v4 = iCol;
    v5 = OUTLINED_FUNCTION_3_19();
    v7 = sqlite3_column_bytes(v5, v6);

    return Blob.init(bytes:length:)(v4, v7, a2);
  }

  else
  {
    *a2 = MEMORY[0x1E69E7CC0];
  }

  return iCol;
}

BOOL Cursor.subscript.getter(_BOOL8 iCol)
{
  if (iCol < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (iCol <= 0x7FFFFFFF)
  {
    return sqlite3_column_int64(*v1, iCol) != 0;
  }

  __break(1u);
  return iCol;
}

sqlite3_int64 sub_1DD3285D8(sqlite3_int64 iCol)
{
  if (iCol < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (iCol <= 0x7FFFFFFF)
  {
    return sqlite3_column_int64(*v1, iCol);
  }

  __break(1u);
  return iCol;
}

uint64_t Cursor.makeIterator()()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = swift_allocObject();
  v4[2] = v3;
  v4[3] = v1;
  v4[4] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7218, &qword_1DD33CA28);
  result = swift_allocObject();
  *(result + 16) = sub_1DD3288EC;
  *(result + 24) = v4;
  return result;
}

double sub_1DD32869C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  v6 = *(a1 + 16);
  if (v6 >= a2)
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *&result = 1;
    *(a3 + 24) = xmmword_1DD33CA10;
  }

  else
  {
    swift_beginAccess();
    *(a1 + 16) = v6 + 1;
    Cursor.subscript.getter(a3, v6);
  }

  return result;
}

uint64_t sub_1DD328748@<X0>(uint64_t *a1@<X8>)
{
  result = Cursor.makeIterator()();
  *a1 = result;
  return result;
}

void sub_1DD328788()
{
  sub_1DD28BA1C(0);
  v0 = 0;
  v1 = MEMORY[0x1E69E7CC0];
  for (i = (MEMORY[0x1E69E7CC0] + 32); ; ++i)
  {
    v3 = Statement.failableNext()();
    if (v4)
    {
      break;
    }

    v5 = v3;
    if (!v3)
    {
      goto LABEL_21;
    }

    if (!v0)
    {
      v6 = v1[3];
      if (((v6 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_26;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if (v7 <= 1)
      {
        v8 = 1;
      }

      else
      {
        v8 = v7;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7240, &unk_1DD33CC20);
      v9 = swift_allocObject();
      v10 = (_swift_stdlib_malloc_size(v9) - 32) / 8;
      v9[2] = v8;
      v9[3] = 2 * v10;
      v11 = (v9 + 4);
      v12 = v1[3];
      v13 = v12 >> 1;
      if (v1[2])
      {
        if (v9 != v1 || v11 >= &v1[v13 + 4])
        {
          memmove(v9 + 4, v1 + 4, 8 * v13);
        }

        v1[2] = 0;
      }

      i = (v11 + 8 * v13);
      v0 = (v10 & 0x7FFFFFFFFFFFFFFFLL) - (v12 >> 1);

      v1 = v9;
    }

    v15 = __OFSUB__(v0--, 1);
    if (v15)
    {
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    *i = v5;
  }

LABEL_21:
  v16 = v1[3];
  if (v16 < 2)
  {
    return;
  }

  v17 = v16 >> 1;
  v15 = __OFSUB__(v17, v0);
  v18 = v17 - v0;
  if (!v15)
  {
    v1[2] = v18;
    return;
  }

LABEL_27:
  __break(1u);
}

unint64_t sub_1DD3288FC()
{
  result = qword_1ECCD7220;
  if (!qword_1ECCD7220)
  {
    type metadata accessor for Statement();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCD7220);
  }

  return result;
}

unint64_t sub_1DD328950(uint64_t a1)
{
  result = sub_1DD3288FC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DD32897C()
{
  result = qword_1ECCD7228;
  if (!qword_1ECCD7228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCD7230, &qword_1DD33CB10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCD7228);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Cursor(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 == 1 || !*(a1 + 16))
    {
      if (*a1)
      {
        v2 = -1;
      }

      else
      {
        v2 = 0;
      }
    }

    else
    {
      v2 = *a1 + 1;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Cursor(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

void *sub_1DD328AA8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = a4;
  v11[4] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7218, &qword_1DD33CA28);
  result = swift_allocObject();
  v13 = result;
  result[2] = sub_1DD328E0C;
  result[3] = v11;
  if (!a2)
  {
    v14 = 0;
    goto LABEL_11;
  }

  if (!a3)
  {
LABEL_8:
    v14 = a3;
LABEL_11:
    *a1 = v13;
    return v14;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v14 = 0;
    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      result = (v13[2])(&v18);
      if (*(&v19 + 1) == 1)
      {
        sub_1DD2825F0(&v18, &qword_1ECCD7238, &qword_1DD33CC18);
        goto LABEL_11;
      }

      v16 = v19;
      v21 = v18;
      v22 = v19;
      v17 = v20;
      v23 = v20;
      *a2 = v18;
      *(a2 + 16) = v16;
      *(a2 + 32) = v17;
      a2 += 40;
      ++v14;
      if (v15 == a3)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1DD328C04(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DD28BA1C(0);
  v8 = 0;
  if (a2 && a3)
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      v8 = 0;
      while (1)
      {
        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        result = Statement.failableNext()();
        if (v10)
        {

          goto LABEL_11;
        }

        if (!result)
        {
          goto LABEL_11;
        }

        *(a2 + 8 * v8++) = result;
        if (v9 == a3)
        {
          v8 = a3;
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_11:
    *a1 = v3;
    return v8;
  }

  return result;
}

void *sub_1DD328CB0(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

void * infix(_:_:)(void *a1@<X8>)
{
  *a1 = 42;
  a1[1] = 0xE100000000000000;
  a1[2] = MEMORY[0x1E69E7CC0];
}

uint64_t sub_1DD328E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_2_13();
  a25 = v26;
  a26 = v27;
  v29 = v28;
  a13 = v30;
  a14 = v31;

  MEMORY[0x1E12AC540](40, 0xE100000000000000);
  v32 = v29[3];
  v33 = v29[4];
  __swift_project_boxed_opaque_existential_1(v29, v32);
  v34 = *(v33 + 8);
  v34(&a10, v32, v33);
  v35 = a10;
  v36 = a11;

  MEMORY[0x1E12AC540](v35, v36);

  MEMORY[0x1E12AC540](41, 0xE100000000000000);
  v34(&a10, v32, v33);

  OUTLINED_FUNCTION_1_19();

  return Expression.init(_:_:)(v37, v38, v39, v40);
}

uint64_t sub_1DD328F3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DD28D7A0(a1, v6);
  if (v6[3])
  {
    sub_1DD3291C4(v6, a2, a3);
    return __swift_destroy_boxed_opaque_existential_1(v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DD328FA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v10 = a3;
  v14 = type metadata accessor for Expression(0, a6, a3, a4);
  v49 = 32;
  v50 = 0xE100000000000000;
  MEMORY[0x1E12AC540](a4, a5);
  MEMORY[0x1E12AC540](32, 0xE100000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7058, &qword_1DD33BAA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD3391F0;
  sub_1DD28191C(a1, inited + 32);
  sub_1DD28191C(a2, inited + 72);
  sub_1DD284AFC(inited, 32, 0xE100000000000000, v16, v17, v18, v19, v20, v33, v34, *(&v34 + 1), v35, v36, *(&v36 + 1), v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48);

  swift_setDeallocating();
  sub_1DD313330();
  v21 = v52;
  v22 = v53;
  __swift_project_boxed_opaque_existential_1(&v49, v52);
  (v22[1])(&v35, v21, v22);
  v33 = v35;
  v34 = v36;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
  WitnessTable = swift_getWitnessTable();
  v25 = sub_1DD288794(&qword_1ECCD7080, &qword_1ECCD7060, &qword_1DD33BAA8, &protocol conformance descriptor for Expression<A>);
  ExpressionType.init<A>(_:)(&v33, v14, v23, WitnessTable, v25);
  result = __swift_destroy_boxed_opaque_existential_1(&v49);
  v31 = v55;
  v32 = v56;
  if (v10)
  {
    v52 = v14;
    v53 = &protocol witness table for Expression<A>;
    v49 = v54;
    v50 = v55;
    v51 = v56;
    sub_1DD328E30(&v49, 0, 0xE000000000000000, a6, v27, v28, v29, v30, v33, v34, *(&v34 + 1), v35, v36, *(&v36 + 1), v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48);
    return __swift_destroy_boxed_opaque_existential_1(&v49);
  }

  else
  {
    *a7 = v54;
    a7[1] = v31;
    a7[2] = v32;
  }

  return result;
}

uint64_t sub_1DD3291C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v14[-v9 - 8];
  v11 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v11);
  sub_1DD28191C(a1, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6680, &qword_1DD339370);
  swift_dynamicCast();
  (*(a3 + 48))(v10, a2, a3);
  (*(v8 + 8))(v10, AssociatedTypeWitness);
  return swift_dynamicCast();
}

uint64_t sub_1DD32943C(uint64_t a1)
{
  sub_1DD28D7A0(a1, &v18);
  if (v20)
  {
    sub_1DD289CE4(&v18, v22);
    sub_1DD28191C(v22, &v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6680, &qword_1DD339370);
    if (swift_dynamicCast())
    {
      v13 = 10104;
      v14 = 0xE200000000000000;
      countAndFlagsBits = Blob.toHex()()._countAndFlagsBits;
      MEMORY[0x1E12AC540](countAndFlagsBits);

      MEMORY[0x1E12AC540](39, 0xE100000000000000);
      v2 = 10104;
      __swift_destroy_boxed_opaque_existential_1(v22);
    }

    else
    {
      if (!swift_dynamicCast())
      {
        sub_1DD289CE4(&v18, &v13);
        sub_1DD336CB0();
        v2 = 0;
        __swift_destroy_boxed_opaque_existential_1(&v13);
        v8 = v22;
        goto LABEL_9;
      }

      sub_1DD289A78(39, 0xE100000000000000, v13, v14, v3, v4, v5, v6, v10, v11, v12, v13, v14, v15, v16, v17, v18, *(&v18 + 1), v19, v20, v21, v22[0], v22[1], v22[2], v22[3], v22[4]);
      v2 = v7;

      __swift_destroy_boxed_opaque_existential_1(v22);
    }

    v8 = &v18;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v8);
    return v2;
  }

  sub_1DD320020(&v18);
  return 1280070990;
}

double sub_1DD32962C@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t (*static Bool.declaredDatatype.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_43();
  swift_beginAccess();
  return j__swift_endAccess;
}

BOOL sub_1DD329710@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = static Bool.fromDatatypeValue(_:)(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1DD329740@<X0>(uint64_t *a1@<X8>)
{
  result = Bool.datatypeValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1DD329778(uint64_t a1)
{
  swift_beginAccess();

  return OUTLINED_FUNCTION_43();
}

uint64_t sub_1DD3297D4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  swift_beginAccess();
  *a3 = a1;
  *a4 = a2;
}

uint64_t (*static Int.declaredDatatype.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_43();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t RRSchemaProvisionalPullerStartedReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v16 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v16 & 0x7F) << v6;
      if ((v16 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      if (v7++ >= 9)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    if ((v13 >> 3) == 1)
    {
      v14 = PBReaderReadString();
      [a1 setName:v14];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t RRSchemaProvisionalPullerEndedReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v23 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v23 & 0x7F) << v6;
      if ((v23 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    if ((v13 >> 3) == 1)
    {
      v21 = PBReaderReadString();
      [a1 setName:v21];
    }

    else if ((v13 >> 3) == 2)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v24 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v24 & 0x7F) << v14;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v12 = v15++ >= 9;
        if (v12)
        {
          v20 = 0;
          goto LABEL_35;
        }
      }

      if ([a2 hasError])
      {
        v20 = 0;
      }

      else
      {
        v20 = v16;
      }

LABEL_35:
      [a1 setEntityCount:v20];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t RRSchemaProvisionalPullerFailedReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v23 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v23 & 0x7F) << v6;
      if ((v23 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    if ((v13 >> 3) == 1)
    {
      v21 = PBReaderReadString();
      [a1 setName:v21];
    }

    else if ((v13 >> 3) == 2)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v24 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v24 & 0x7F) << v14;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v12 = v15++ >= 9;
        if (v12)
        {
          v20 = 0;
          goto LABEL_33;
        }
      }

      v20 = (v16 != 0) & ~[a2 hasError];
LABEL_33:
      [a1 setTimeout:v20];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t RRSchemaProvisionalPullerContextReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v17) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 103)
      {
        v14 = objc_alloc_init(RRSchemaProvisionalPullerFailed);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !RRSchemaProvisionalPullerFailedReadFrom(v14, a2))
        {
LABEL_34:

          return 0;
        }

        PBReaderRecallMark();
        [a1 setFailed:v14];
        goto LABEL_29;
      }

      if (v13 == 102)
      {
        break;
      }

      if (v13 == 101)
      {
        v14 = objc_alloc_init(RRSchemaProvisionalPullerStarted);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !RRSchemaProvisionalPullerStartedReadFrom(v14, a2))
        {
          goto LABEL_34;
        }

        PBReaderRecallMark();
        [a1 setStarted:v14];
LABEL_29:

        goto LABEL_31;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_31:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(RRSchemaProvisionalPullerEnded);
    v17 = 0;
    v18 = 0;
    if (!PBReaderPlaceMark() || !RRSchemaProvisionalPullerEndedReadFrom(v14, a2))
    {
      goto LABEL_34;
    }

    PBReaderRecallMark();
    [a1 setEnded:v14];
    goto LABEL_29;
  }

  return [a2 hasError] ^ 1;
}

uint64_t RRSchemaProvisionalRRGroupIdentifierReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v23 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v23 & 0x7F) << v6;
      if ((v23 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    if ((v13 >> 3) == 1)
    {
      v21 = PBReaderReadString();
      [a1 setGroupId:v21];
    }

    else if ((v13 >> 3) == 2)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v24 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v24 & 0x7F) << v14;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v12 = v15++ >= 9;
        if (v12)
        {
          v20 = 0;
          goto LABEL_35;
        }
      }

      if ([a2 hasError])
      {
        v20 = 0;
      }

      else
      {
        v20 = v16;
      }

LABEL_35:
      [a1 setSeq:v20];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t RRSchemaProvisionalRRAnnotationReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v29 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v29 & 0x7F) << v6;
      if ((v29 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    if ((v13 >> 3) == 1)
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
      while (1)
      {
        v30 = 0;
        v24 = [a2 position] + 1;
        if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
        {
          v26 = [a2 data];
          [v26 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v23 |= (v30 & 0x7F) << v21;
        if ((v30 & 0x80) == 0)
        {
          break;
        }

        v21 += 7;
        v12 = v22++ >= 9;
        if (v12)
        {
          v27 = 0;
          goto LABEL_47;
        }
      }

      if ([a2 hasError])
      {
        v27 = 0;
      }

      else
      {
        v27 = v23;
      }

LABEL_47:
      [a1 setName:v27];
    }

    else if ((v13 >> 3) == 2)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v31 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v31 & 0x7F) << v14;
        if ((v31 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v12 = v15++ >= 9;
        if (v12)
        {
          v20 = 0;
          goto LABEL_43;
        }
      }

      if ([a2 hasError])
      {
        v20 = 0;
      }

      else
      {
        v20 = v16;
      }

LABEL_43:
      [a1 setAnnotationAddedTimestampInSeconds:v20];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t RRSchemaProvisionalRRAnnotatedEntityReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v35) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v35 & 0x7F) << v5;
        if ((v35 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 3)
      {
        switch(v13)
        {
          case 1:
            v17 = objc_alloc_init(MEMORY[0x1E69CF840]);
            v35 = 0;
            v36 = 0;
            if (!PBReaderPlaceMark() || !USOSchemaUSOGraphReadFrom())
            {
LABEL_72:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setUsoGraph:v17];
            goto LABEL_60;
          case 2:
            v17 = PBReaderReadString();
            [a1 setSwiftClassName:v17];
LABEL_60:

            goto LABEL_69;
          case 3:
            v17 = objc_alloc_init(RRSchemaProvisionalRRGroupIdentifier);
            v35 = 0;
            v36 = 0;
            if (!PBReaderPlaceMark() || !RRSchemaProvisionalRRGroupIdentifierReadFrom(v17, a2))
            {
              goto LABEL_72;
            }

            PBReaderRecallMark();
            [a1 setGroup:v17];
            goto LABEL_60;
        }
      }

      else if (v13 > 5)
      {
        if (v13 == 6)
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          while (1)
          {
            LOBYTE(v35) = 0;
            v28 = [a2 position] + 1;
            if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
            {
              v30 = [a2 data];
              [v30 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v27 |= (v35 & 0x7F) << v25;
            if ((v35 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            v11 = v26++ >= 9;
            if (v11)
            {
              v31 = 0;
              goto LABEL_64;
            }
          }

          if ([a2 hasError])
          {
            v31 = 0;
          }

          else
          {
            v31 = v27;
          }

LABEL_64:
          [a1 setSaliencyComputedAtTimestampInSeconds:v31];
          goto LABEL_69;
        }

        if (v13 == 7)
        {
          v18 = 0;
          v19 = 0;
          v20 = 0;
          while (1)
          {
            LOBYTE(v35) = 0;
            v21 = [a2 position] + 1;
            if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
            {
              v23 = [a2 data];
              [v23 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v20 |= (v35 & 0x7F) << v18;
            if ((v35 & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            v11 = v19++ >= 9;
            if (v11)
            {
              v24 = 0;
              goto LABEL_66;
            }
          }

          v24 = (v20 != 0) & ~[a2 hasError];
LABEL_66:
          [a1 setHasReference:v24];
          goto LABEL_69;
        }
      }

      else
      {
        if (v13 == 4)
        {
          v17 = objc_alloc_init(RRSchemaProvisionalRRAnnotation);
          v35 = 0;
          v36 = 0;
          if (!PBReaderPlaceMark() || !RRSchemaProvisionalRRAnnotationReadFrom(v17, a2))
          {
            goto LABEL_72;
          }

          PBReaderRecallMark();
          if (v17)
          {
            [a1 addAnnotations:v17];
          }

          goto LABEL_60;
        }

        if (v13 == 5)
        {
          LODWORD(v35) = 0;
          v14 = [a2 position] + 4;
          if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 4, v15 <= objc_msgSend(a2, "length")))
          {
            v32 = [a2 data];
            [v32 getBytes:&v35 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          LODWORD(v16) = v35;
          [a1 setSaliencyScore:v16];
          goto LABEL_69;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_69:
      v33 = [a2 position];
    }

    while (v33 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t RRSchemaProvisionalRRUsoGraphTier1ReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 101)
      {
        v13 = objc_alloc_init(MEMORY[0x1E69CF850]);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !USOSchemaUSOGraphTier1ReadFrom())
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setUsoGraphTier1:v13];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t RRSchemaProvisionalRREntityPoolResolveFailedReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v22 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v22 & 0x7F) << v6;
      if ((v22 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    if ((v13 >> 3) == 1)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v23 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v23 & 0x7F) << v14;
        if ((v23 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v12 = v15++ >= 9;
        if (v12)
        {
          v20 = 0;
          goto LABEL_33;
        }
      }

      if ([a2 hasError])
      {
        v20 = 0;
      }

      else
      {
        v20 = v16;
      }

LABEL_33:
      [a1 setReason:v20];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t RRSchemaProvisionalRREntityPoolResolveEndedReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v23[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23[0] & 0x7F) << v5;
        if ((v23[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v20 = objc_alloc_init(RRSchemaProvisionalRRAnnotatedEntity);
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !RRSchemaProvisionalRRAnnotatedEntityReadFrom(v20, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        if (v20)
        {
          [a1 addQueryResults:v20];
        }
      }

      else if ((v12 >> 3) == 2)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        while (1)
        {
          LOBYTE(v23[0]) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23[0] & 0x7F) << v13;
          if ((v23[0] & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_38;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v15;
        }

LABEL_38:
        [a1 setOutcome:v19];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t RRSchemaProvisionalRREntityPoolResolveStartedReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(MEMORY[0x1E69CF840]);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !USOSchemaUSOGraphReadFrom())
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setUsoQuery:v13];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t RRSchemaProvisionalRREntityPoolResolveContextReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v17) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 103)
      {
        v14 = objc_alloc_init(RRSchemaProvisionalRREntityPoolResolveFailed);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !RRSchemaProvisionalRREntityPoolResolveFailedReadFrom(v14, a2))
        {
LABEL_34:

          return 0;
        }

        PBReaderRecallMark();
        [a1 setFailed:v14];
        goto LABEL_29;
      }

      if (v13 == 102)
      {
        break;
      }

      if (v13 == 101)
      {
        v14 = objc_alloc_init(RRSchemaProvisionalRREntityPoolResolveStarted);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !RRSchemaProvisionalRREntityPoolResolveStartedReadFrom(v14, a2))
        {
          goto LABEL_34;
        }

        PBReaderRecallMark();
        [a1 setStartedOrChanged:v14];
LABEL_29:

        goto LABEL_31;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_31:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(RRSchemaProvisionalRREntityPoolResolveEnded);
    v17 = 0;
    v18 = 0;
    if (!PBReaderPlaceMark() || !RRSchemaProvisionalRREntityPoolResolveEndedReadFrom(v14, a2))
    {
      goto LABEL_34;
    }

    PBReaderRecallMark();
    [a1 setEnded:v14];
    goto LABEL_29;
  }

  return [a2 hasError] ^ 1;
}

uint64_t RRSchemaProvisionalRREntityPoolReturnedReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v23[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23[0] & 0x7F) << v5;
        if ((v23[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 101)
      {
        v20 = objc_alloc_init(RRSchemaProvisionalRRAnnotatedEntity);
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !RRSchemaProvisionalRRAnnotatedEntityReadFrom(v20, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        if (v20)
        {
          [a1 addCandidateEntities:v20];
        }
      }

      else if ((v12 >> 3) == 102)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        while (1)
        {
          LOBYTE(v23[0]) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23[0] & 0x7F) << v13;
          if ((v23[0] & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_38;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v15;
        }

LABEL_38:
        [a1 setEntityCount:v19];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t RRSchemaProvisionalRRClientEventMetadataReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(MEMORY[0x1E69CF640]);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom())
        {
          goto LABEL_30;
        }

        PBReaderRecallMark();
        [a1 setRrID:v13];
LABEL_25:

        goto LABEL_27;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_27:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(MEMORY[0x1E69CF640]);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom())
    {
LABEL_30:

      return 0;
    }

    PBReaderRecallMark();
    [a1 setRequestId:v13];
    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

uint64_t RRSchemaProvisionalRRClientEventReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v17) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 101)
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(RRSchemaProvisionalRRClientEventMetadata);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !RRSchemaProvisionalRRClientEventMetadataReadFrom(v14, a2))
          {
LABEL_45:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setEventMetadata:v14];
          goto LABEL_38;
        }

        if (v13 == 101)
        {
          v14 = objc_alloc_init(RRSchemaProvisionalPullerContext);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !RRSchemaProvisionalPullerContextReadFrom(v14, a2))
          {
            goto LABEL_45;
          }

          PBReaderRecallMark();
          [a1 setPullerContext:v14];
          goto LABEL_38;
        }
      }

      else
      {
        switch(v13)
        {
          case 'f':
            v14 = objc_alloc_init(RRSchemaProvisionalRREntityPoolReturned);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !RRSchemaProvisionalRREntityPoolReturnedReadFrom(v14, a2))
            {
              goto LABEL_45;
            }

            PBReaderRecallMark();
            [a1 setEntityPoolReturned:v14];
            goto LABEL_38;
          case 'g':
            v14 = objc_alloc_init(RRSchemaProvisionalRREntityPoolResolveContext);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !RRSchemaProvisionalRREntityPoolResolveContextReadFrom(v14, a2))
            {
              goto LABEL_45;
            }

            PBReaderRecallMark();
            [a1 setEntityPoolResolveContext:v14];
            goto LABEL_38;
          case 'h':
            v14 = objc_alloc_init(RRSchemaProvisionalRRUsoGraphTier1);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !RRSchemaProvisionalRRUsoGraphTier1ReadFrom(v14, a2))
            {
              goto LABEL_45;
            }

            PBReaderRecallMark();
            [a1 setRrUsoGraphTier1:v14];
LABEL_38:

            goto LABEL_39;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_39:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}