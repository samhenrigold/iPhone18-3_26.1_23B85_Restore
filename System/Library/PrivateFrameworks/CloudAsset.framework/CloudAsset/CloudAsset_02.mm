Swift::Int sub_22E6F56F4(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x2318ECB90](0);
  sub_22E6F259C();
  return Hasher._finalize()();
}

uint64_t sub_22E6F5778(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_22E6CF2AC(&qword_27DA6C8B8, &qword_22E728C80);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22E6F57E8()
{
  result = qword_27DA6CDE8;
  if (!qword_27DA6CDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6CDE8);
  }

  return result;
}

unint64_t sub_22E6F5840()
{
  result = qword_27DA6CDF0;
  if (!qword_27DA6CDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6CDF0);
  }

  return result;
}

uint64_t sub_22E6F5894(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_22E6F58D4(uint64_t result, int a2, int a3)
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

_BYTE *sub_22E6F5930(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_22E6F59E0()
{
  result = qword_27DA6CDF8;
  if (!qword_27DA6CDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6CDF8);
  }

  return result;
}

unint64_t sub_22E6F5A38()
{
  result = qword_27DA6CE00;
  if (!qword_27DA6CE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6CE00);
  }

  return result;
}

unint64_t sub_22E6F5A90()
{
  result = qword_27DA6CE08;
  if (!qword_27DA6CE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6CE08);
  }

  return result;
}

unint64_t sub_22E6F5AE8()
{
  result = qword_27DA6CE10;
  if (!qword_27DA6CE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6CE10);
  }

  return result;
}

unint64_t sub_22E6F5B40()
{
  result = qword_27DA6CE18;
  if (!qword_27DA6CE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6CE18);
  }

  return result;
}

unint64_t sub_22E6F5B98()
{
  result = qword_27DA6CE20[0];
  if (!qword_27DA6CE20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA6CE20);
  }

  return result;
}

uint64_t sub_22E6F5C00(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_22E6F5CD0(char a1)
{
  if (a1)
  {
    return 0x6572756C696166;
  }

  else
  {
    return 0x73736563637573;
  }
}

uint64_t sub_22E6F5D0C(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

Swift::Int sub_22E6F5DC8(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_22E6CDF68(v3, *v1);
  return Hasher._finalize()();
}

uint64_t sub_22E6F5E28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22E6F5C00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22E6F5E88@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22E6D5864();
  *a1 = result;
  return result;
}

uint64_t sub_22E6F5EBC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_22E6F5F10(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_22E6F5F74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22E6CDF9C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22E6F5FC4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22E6CFE14();
  *a1 = result & 1;
  return result;
}

uint64_t sub_22E6F5FFC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_22E6F6050(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

Swift::Int sub_22E6F60D0(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_22E6CC6D8();
  return Hasher._finalize()();
}

uint64_t sub_22E6F6128@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22E6F5D0C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22E6F6190(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_22E6F61E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t XPCResult.encode(to:)(void *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  v61 = a2;
  v5 = sub_22E6F79F4();
  v8 = type metadata accessor for XPCResult.FailureCodingKeys(v5, v6, v7, v4);
  sub_22E6F79A4();
  swift_getWitnessTable();
  sub_22E6F7A28();
  v58 = v9;
  v59 = v8;
  type metadata accessor for KeyedEncodingContainer();
  sub_22E6CF988();
  v56 = v11;
  v57 = v10;
  sub_22E6D374C();
  MEMORY[0x28223BE20](v12);
  sub_22E6EB4DC();
  v52 = v13;
  v14 = sub_22E6F79F4();
  v17 = type metadata accessor for XPCResult.SuccessCodingKeys(v14, v15, v16, v4);
  sub_22E6F79BC();
  swift_getWitnessTable();
  sub_22E6F7A28();
  v51 = v17;
  v49[1] = v18;
  type metadata accessor for KeyedEncodingContainer();
  sub_22E6CF988();
  v54 = v20;
  v55 = v19;
  sub_22E6D374C();
  MEMORY[0x28223BE20](v21);
  sub_22E6EB4DC();
  v50 = v22;
  sub_22E6F797C();
  v53 = v23;
  MEMORY[0x28223BE20](v24);
  sub_22E6CF9C8();
  v49[0] = v26 - v25;
  sub_22E6F797C();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  sub_22E6CF9C8();
  v32 = v31 - v30;
  v33 = sub_22E6F79F4();
  v60 = v4;
  type metadata accessor for XPCResult.CodingKeys(v33, v34, v35, v4);
  sub_22E6F798C();
  swift_getWitnessTable();
  type metadata accessor for KeyedEncodingContainer();
  sub_22E6CF988();
  v62 = v37;
  v63 = v36;
  sub_22E6D374C();
  MEMORY[0x28223BE20](v38);
  v40 = v49 - v39;
  sub_22E6CF214(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  (*(v28 + 16))(v32, v64, v61);
  if (sub_22E6CF550(v32, 1, v3) == 1)
  {
    v66 = 1;
    v41 = v52;
    v42 = v63;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v56 + 8))(v41, v57);
    return (*(v62 + 8))(v40, v42);
  }

  else
  {
    v44 = v53;
    v45 = v49[0];
    (*(v53 + 32))(v49[0], v32, v3);
    v65 = 0;
    v46 = v50;
    v47 = v63;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v48 = v55;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v54 + 8))(v46, v48);
    (*(v44 + 8))(v45, v3);
    return (*(v62 + 8))(v40, v47);
  }
}

uint64_t XPCResult.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v82 = a5;
  v9 = type metadata accessor for XPCResult.FailureCodingKeys(255, a2, a3, a4);
  sub_22E6F79A4();
  swift_getWitnessTable();
  sub_22E6F7A28();
  v80 = v10;
  v81 = v9;
  v74 = type metadata accessor for KeyedDecodingContainer();
  sub_22E6CF988();
  v73 = v11;
  sub_22E6D374C();
  MEMORY[0x28223BE20](v12);
  sub_22E6EB4DC();
  v79 = v13;
  v14 = sub_22E6F7A04();
  v18 = type metadata accessor for XPCResult.SuccessCodingKeys(v14, v15, v16, v17);
  sub_22E6F79BC();
  swift_getWitnessTable();
  sub_22E6F7A28();
  v76 = v19;
  v77 = v18;
  v72 = type metadata accessor for KeyedDecodingContainer();
  sub_22E6CF988();
  v71 = v20;
  sub_22E6D374C();
  MEMORY[0x28223BE20](v21);
  sub_22E6EB4DC();
  v78 = v22;
  v23 = sub_22E6F7A04();
  type metadata accessor for XPCResult.CodingKeys(v23, v24, v25, v26);
  sub_22E6F798C();
  swift_getWitnessTable();
  sub_22E6F7A1C();
  v85 = type metadata accessor for KeyedDecodingContainer();
  sub_22E6CF988();
  v87 = v27;
  sub_22E6D374C();
  MEMORY[0x28223BE20](v28);
  v30 = &v67 - v29;
  v86 = a2;
  v75 = a3;
  type metadata accessor for XPCResult(0, a2, a3, a4);
  sub_22E6CF988();
  v83 = v32;
  v84 = v31;
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v67 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v37 = &v67 - v36;
  sub_22E6CF214(a1, a1[3]);
  v38 = v91;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v39 = a1;
  if (!v38)
  {
    v68 = v35;
    v69 = v37;
    v41 = v84;
    v40 = v85;
    v42 = v86;
    v91 = v39;
    v70 = v30;
    *&v88[0] = KeyedDecodingContainer.allKeys.getter();
    sub_22E6F7A1C();
    type metadata accessor for Array();
    swift_getWitnessTable();
    *&v89 = ArraySlice.init<A>(_:)();
    *(&v89 + 1) = v43;
    *&v90 = v44;
    *(&v90 + 1) = v45;
    sub_22E6F7A1C();
    type metadata accessor for ArraySlice();
    swift_getWitnessTable();
    Collection<>.popFirst()();
    v46 = v88[0];
    if (LOBYTE(v88[0]) == 2 || (v67 = v89, v88[0] = v89, v88[1] = v90, (Collection.isEmpty.getter() & 1) == 0))
    {
      v54 = type metadata accessor for DecodingError();
      swift_allocError();
      v56 = v55;
      sub_22E6CF1CC(&qword_27DA6CD20, &qword_22E729070);
      *v56 = v41;
      v57 = v70;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v54 - 8) + 104))(v56, *MEMORY[0x277D84160], v54);
      swift_willThrow();
      (*(v87 + 8))(v57, v40);
      swift_unknownObjectRelease();
    }

    else if (v46)
    {
      LOBYTE(v88[0]) = 1;
      v47 = v79;
      sub_22E6F7A48(v81, v88, v40, v81);
      v48 = v42;
      v49 = v82;
      v50 = v83;
      (*(v73 + 8))(v47, v74);
      v51 = sub_22E6F79E4();
      v52(v51);
      sub_22E6F79D4();
      swift_unknownObjectRelease();
      v53 = v69;
      sub_22E6CF58C(v69, 1, 1, v48);
      (*(v50 + 32))(v49, v53, v41);
    }

    else
    {
      LOBYTE(v88[0]) = 0;
      sub_22E6F7A48(v77, v88, v40, v77);
      v59 = v83;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v60 = sub_22E6F7A34();
      v61(v60);
      v62 = sub_22E6F79E4();
      v63(v62);
      sub_22E6F79D4();
      swift_unknownObjectRelease();
      v64 = v68;
      sub_22E6CF58C(v68, 0, 1, v42);
      v65 = *(v59 + 32);
      v66 = v69;
      v65(v69, v64, v41);
      v65(v82, v66, v41);
    }

    v39 = v91;
  }

  return sub_22E6CF2F4(v39);
}

uint64_t static XPCResult<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v40 = a6;
  sub_22E6F797C();
  v42 = v9;
  v43 = v8;
  MEMORY[0x28223BE20](v10);
  sub_22E6CF9C8();
  v39 = v12 - v11;
  v16 = type metadata accessor for XPCResult(0, v13, v14, v15);
  sub_22E6CF988();
  v18 = v17;
  sub_22E6D374C();
  MEMORY[0x28223BE20](v19);
  v21 = &v38 - v20;
  sub_22E6F7A1C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_22E6CF988();
  v24 = v23;
  sub_22E6D374C();
  v26 = MEMORY[0x28223BE20](v25);
  v28 = &v38 - v27;
  v29 = *(v26 + 48);
  v41 = v18;
  v30 = *(v18 + 16);
  v30(&v38 - v27, a1, v16);
  v30(&v28[v29], v43, v16);
  sub_22E6F7A68(v28);
  if (v32)
  {
    v31 = 1;
    sub_22E6F7A68(&v28[v29]);
    if (v32)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v30(v21, v28, v16);
    sub_22E6F7A68(&v28[v29]);
    if (!v32)
    {
      v33 = v42;
      v34 = &v28[v29];
      v35 = v39;
      (*(v42 + 32))(v39, v34, a3);
      v31 = dispatch thunk of static Equatable.== infix(_:_:)();
      v36 = *(v33 + 8);
      v36(v35, a3);
      v36(v21, a3);
LABEL_10:
      v24 = v41;
      goto LABEL_11;
    }

    (*(v42 + 8))(v21, a3);
  }

  v31 = 0;
  v16 = TupleTypeMetadata2;
LABEL_11:
  (*(v24 + 8))(v28, v16);
  return v31 & 1;
}

uint64_t XPCResult<>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v11);
  if (sub_22E6CF550(v9, 1, v3) == 1)
  {
    return MEMORY[0x2318ECB90](1);
  }

  (*(v4 + 32))(v7, v9, v3);
  MEMORY[0x2318ECB90](0);
  dispatch thunk of Hashable.hash(into:)();
  return (*(v4 + 8))(v7, v3);
}

Swift::Int XPCResult<>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  XPCResult<>.hash(into:)(v5, a1, a2);
  return Hasher._finalize()();
}

Swift::Int sub_22E6F7274(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  Hasher.init(_seed:)();
  XPCResult<>.hash(into:)(v6, a2, v4);
  return Hasher._finalize()();
}

uint64_t sub_22E6F730C(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_22E6F7368(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(v4 - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_23;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_23;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 > 3)
          {
            LODWORD(v7) = 4;
          }

          switch(v7)
          {
            case 2:
              LODWORD(v7) = *a1;
              break;
            case 3:
              LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
              break;
            case 4:
              LODWORD(v7) = *a1;
              break;
            default:
              LODWORD(v7) = *a1;
              break;
          }
        }

        return v6 + (v7 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_23:
  if (v5 < 2)
  {
    return 0;
  }

  v14 = sub_22E6CF550(a1, v5, v4);
  if (v14 >= 2)
  {
    return v14 - 1;
  }

  else
  {
    return 0;
  }
}

void sub_22E6F74E0(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = *(v8 + 64);
  }

  else
  {
    v11 = *(v8 + 64) + 1;
  }

  v12 = 8 * v11;
  v13 = a3 >= v10;
  v14 = a3 - v10;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v15 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v15))
      {
        v6 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v6 = v16;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (v10 >= a2)
  {
    switch(v6)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v9 >= 2)
          {
            v20 = a2 + 1;

            sub_22E6CF58C(a1, v20, v9, v7);
          }
        }

        break;
    }
  }

  else
  {
    v17 = ~v10 + a2;
    if (v11 < 4)
    {
      v18 = (v17 >> v12) + 1;
      if (v11)
      {
        v19 = v17 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v19;
          a1[2] = BYTE2(v19);
        }

        else if (v11 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v17;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v17;
      v18 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v11] = v18;
        break;
      case 2:
        *&a1[v11] = v18;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v18;
        break;
      default:
        return;
    }
  }
}

_BYTE *sub_22E6F7700(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_22E6F77CC(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_22E6F7A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t static Signal.Event.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    if (*(a2 + 8))
    {
      return sub_22E6CFE14();
    }

    return 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t sub_22E6F7ABC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD00000000000001BLL && 0x800000022E72D250 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000022E72D270 == a2)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

unint64_t sub_22E6F7B98(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0xD00000000000001BLL;
  }
}

uint64_t sub_22E6F7BD4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x656E6961746E6F63 && a2 == 0xEE007865646E4972)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22E6F7C7C(uint64_t a1)
{
  v2 = sub_22E6F8150();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E6F7CB8(uint64_t a1)
{
  v2 = sub_22E6F8150();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22E6F7CFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22E6F7ABC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22E6F7D24(uint64_t a1)
{
  v2 = sub_22E6F80FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E6F7D60(uint64_t a1)
{
  v2 = sub_22E6F80FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22E6F7DA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22E6F7BD4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22E6F7DCC(uint64_t a1)
{
  v2 = sub_22E6F81A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E6F7E08(uint64_t a1)
{
  v2 = sub_22E6F81A4();

  return MEMORY[0x2821FE720](a1, v2);
}

void Signal.Event.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_22E6D37D4();
  v50 = v24;
  v26 = v25;
  sub_22E6CF1CC(&qword_27DA6D028, &qword_22E7294B0);
  sub_22E6CF988();
  v48 = v28;
  v49 = v27;
  sub_22E6D374C();
  MEMORY[0x28223BE20](v29);
  v46 = v44 - v30;
  v47 = sub_22E6CF1CC(&qword_27DA6D030, &qword_22E7294B8);
  sub_22E6CF988();
  v45 = v31;
  sub_22E6D374C();
  MEMORY[0x28223BE20](v32);
  v34 = v44 - v33;
  v35 = sub_22E6CF1CC(&qword_27DA6D038, &qword_22E7294C0);
  sub_22E6CF988();
  v37 = v36;
  sub_22E6D374C();
  MEMORY[0x28223BE20](v38);
  v40 = v44 - v39;
  v44[1] = *v23;
  v41 = *(v23 + 8);
  sub_22E6CF214(v26, v26[3]);
  sub_22E6F80FC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v41)
  {
    sub_22E6F8150();
    v42 = v46;
    sub_22E6F9C14();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v48 + 8))(v42, v49);
  }

  else
  {
    sub_22E6F81A4();
    sub_22E6F9C14();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v43 = v47;
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v45 + 8))(v34, v43);
  }

  (*(v37 + 8))(v40, v35);
  sub_22E6D37BC();
}

unint64_t sub_22E6F80FC()
{
  result = qword_27DA6D040;
  if (!qword_27DA6D040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D040);
  }

  return result;
}

unint64_t sub_22E6F8150()
{
  result = qword_27DA6D048;
  if (!qword_27DA6D048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D048);
  }

  return result;
}

unint64_t sub_22E6F81A4()
{
  result = qword_27DA6D050;
  if (!qword_27DA6D050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D050);
  }

  return result;
}

uint64_t Signal.Event.hash(into:)()
{
  if (v0[1])
  {
    return MEMORY[0x2318ECB90](1);
  }

  v2 = *v0;
  MEMORY[0x2318ECB90](0);
  return MEMORY[0x2318ECBB0](v2);
}

Swift::Int Signal.Event.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v2)
  {
    MEMORY[0x2318ECB90](1);
  }

  else
  {
    MEMORY[0x2318ECB90](0);
    MEMORY[0x2318ECBB0](v1);
  }

  return Hasher._finalize()();
}

void Signal.Event.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_22E6D37D4();
  v75 = v24;
  v26 = v25;
  v73 = v27;
  v70 = sub_22E6CF1CC(&qword_27DA6D058, &qword_22E7294C8);
  sub_22E6CF988();
  v72 = v28;
  sub_22E6D374C();
  MEMORY[0x28223BE20](v29);
  v31 = v69 - v30;
  sub_22E6CF1CC(&qword_27DA6D060, &qword_22E7294D0);
  sub_22E6CF988();
  v71 = v32;
  sub_22E6D374C();
  MEMORY[0x28223BE20](v33);
  v35 = v69 - v34;
  v36 = sub_22E6CF1CC(&qword_27DA6D068, &unk_22E7294D8);
  sub_22E6CF988();
  v74 = v37;
  sub_22E6D374C();
  MEMORY[0x28223BE20](v38);
  v40 = v69 - v39;
  sub_22E6CF214(v26, v26[3]);
  sub_22E6F80FC();
  v41 = v75;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v41)
  {
    goto LABEL_9;
  }

  v69[1] = v35;
  v75 = v26;
  KeyedDecodingContainer.allKeys.getter();
  v45 = sub_22E6F376C();
  if (v43 == v44 >> 1)
  {
    goto LABEL_8;
  }

  v69[0] = 0;
  if (v43 < (v44 >> 1))
  {
    v46 = *(v42 + v43);
    v47 = sub_22E6F3764();
    v49 = v48;
    v51 = v50;
    swift_unknownObjectRelease();
    v45 = v47;
    if (v49 == v51 >> 1)
    {
      if (v46)
      {
        sub_22E6F8150();
        sub_22E6F9C14();
        v52 = v69[0];
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v53 = v73;
        if (v52)
        {
          goto LABEL_12;
        }

        swift_unknownObjectRelease();
        (*(v72 + 8))(v31, v70);
        v62 = sub_22E6F9BE8();
        v63(v62, v36);
        v64 = 0;
      }

      else
      {
        sub_22E6F81A4();
        v59 = v69[0];
        sub_22E6F9C14();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v53 = v73;
        if (v59)
        {
LABEL_12:
          v60 = sub_22E6F9BE8();
          v61(v60, v36);
          swift_unknownObjectRelease();
          v26 = v75;
          goto LABEL_9;
        }

        v65 = KeyedDecodingContainer.decode(_:forKey:)();
        v66 = v74;
        v64 = v65;
        swift_unknownObjectRelease();
        v67 = sub_22E6F9C00();
        v68(v67);
        (*(v66 + 8))(v40, v36);
      }

      *v53 = v64;
      *(v53 + 8) = v46;
      sub_22E6CF2F4(v75);
      goto LABEL_10;
    }

LABEL_8:
    v73 = v45;
    v54 = type metadata accessor for DecodingError();
    swift_allocError();
    v56 = v55;
    sub_22E6CF1CC(&qword_27DA6CD20, &qword_22E729070);
    *v56 = &type metadata for Signal.Event;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v54 - 8) + 104))(v56, *MEMORY[0x277D84160], v54);
    swift_willThrow();
    swift_unknownObjectRelease();
    v57 = sub_22E6F9BE8();
    v58(v57, v36);
    v26 = v75;
LABEL_9:
    sub_22E6CF2F4(v26);
LABEL_10:
    sub_22E6D37BC();
    return;
  }

  __break(1u);
}

Swift::Int sub_22E6F87B4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  Hasher.init(_seed:)();
  if (v3)
  {
    MEMORY[0x2318ECB90](1);
  }

  else
  {
    MEMORY[0x2318ECB90](0);
    MEMORY[0x2318ECBB0](v2);
  }

  return Hasher._finalize()();
}

uint64_t sub_22E6F8850(uint64_t a1)
{
  v2 = sub_22E6F93BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E6F888C(uint64_t a1)
{
  v2 = sub_22E6F93BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Signal.events.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_22E6F891C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for CloudAssets_Signal.Event(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v25 - v10;
  v12 = *a1;
  v13 = *(*a1 + 16);
  if (v13)
  {
    v25[0] = a2;
    v25[1] = v2;
    v26 = a1;
    v30 = MEMORY[0x277D84F90];
    result = sub_22E707A34(0, v13, 0);
    v15 = 0;
    v16 = v30;
    v17 = *(v6 + 80);
    v28 = v6;
    v29 = v12 + ((v17 + 32) & ~v17);
    v27 = v11;
    while (v15 < *(v12 + 16))
    {
      sub_22E6F9B00(v29 + *(v6 + 72) * v15, v11);
      sub_22E6F9B00(v11, v9);
      if (v9[8] != 1)
      {
        sub_22E6D0784();
        swift_allocError();
        swift_willThrow();
        sub_22E6F9B64(v9, type metadata accessor for CloudAssets_Signal.Event);
        sub_22E6F9B64(v11, type metadata accessor for CloudAssets_Signal.Event);
        sub_22E6F9B64(v26, type metadata accessor for CloudAssets_Signal);
      }

      v18 = v12;
      v19 = *v9;
      if (*v9)
      {
        sub_22E6F9B64(v9, type metadata accessor for CloudAssets_Signal.Event);
        v20 = 0;
        v21 = v11;
      }

      else
      {
        sub_22E6F9B64(v11, type metadata accessor for CloudAssets_Signal.Event);
        v20 = *(v9 + 2);
        v21 = v9;
      }

      result = sub_22E6F9B64(v21, type metadata accessor for CloudAssets_Signal.Event);
      v30 = v16;
      v23 = *(v16 + 16);
      v22 = *(v16 + 24);
      if (v23 >= v22 >> 1)
      {
        result = sub_22E707A34((v22 > 1), v23 + 1, 1);
        v16 = v30;
      }

      ++v15;
      *(v16 + 16) = v23 + 1;
      v24 = v16 + 16 * v23;
      *(v24 + 32) = v20;
      *(v24 + 40) = v19 != 0;
      v11 = v27;
      v6 = v28;
      v12 = v18;
      if (v13 == v15)
      {
        result = sub_22E6F9B64(v26, type metadata accessor for CloudAssets_Signal);
        a2 = v25[0];
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    result = sub_22E6F9B64(a1, type metadata accessor for CloudAssets_Signal);
    v16 = MEMORY[0x277D84F90];
LABEL_14:
    *a2 = v16;
  }

  return result;
}

void Signal.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22E6D37D4();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v40 = v25;
  v26 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x28223BE20](v26 - 8);
  sub_22E6CF9C8();
  v42 = v28 - v27;
  type metadata accessor for CloudAssets_Signal(0);
  sub_22E6CF978();
  MEMORY[0x28223BE20](v29);
  sub_22E6CF9C8();
  v32 = (v31 - v30);
  v33 = sub_22E6CF1CC(&qword_27DA6D070, &qword_22E7294E8);
  sub_22E6CF988();
  v41 = v34;
  sub_22E6D374C();
  MEMORY[0x28223BE20](v35);
  v37 = &v39 - v36;
  sub_22E6CF214(v24, v24[3]);
  sub_22E6F93BC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v20)
  {
    v38 = v41;
    sub_22E6D0730();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v39 = v33;
    v46 = v47;
    v45 = 0;
    v43 = 0u;
    v44 = 0u;
    BinaryDecodingOptions.init()();
    sub_22E6F9410();
    Message.init<A>(serializedBytes:extensions:partial:options:)();
    sub_22E6F891C(v32, &a10);
    (*(v38 + 8))(v37, v39);
    *v40 = a10;
  }

  sub_22E6CF2F4(v24);
  sub_22E6D37BC();
}

uint64_t sub_22E6F8EC8@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for CloudAssets_Signal.Event(0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = *v1;
  type metadata accessor for CloudAssets_Signal(0);
  result = UnknownStorage.init()();
  v12 = *(v10 + 16);
  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v19 = a1;
    v20 = MEMORY[0x277D84F90];
    sub_22E707A54(0, v12, 0);
    v13 = v20;
    v14 = (v10 + 40);
    do
    {
      v15 = *(v14 - 1);
      v16 = *v14;
      *(v7 + 2) = 0;
      UnknownStorage.init()();
      if (v16)
      {
        *v7 = 1;
        v7[8] = 1;
      }

      else
      {
        *v7 = 0;
        v7[8] = 1;
        *(v7 + 2) = v15;
      }

      sub_22E6F9A9C(v7, v9);
      v20 = v13;
      v18 = *(v13 + 16);
      v17 = *(v13 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_22E707A54((v17 > 1), v18 + 1, 1);
        v13 = v20;
      }

      *(v13 + 16) = v18 + 1;
      result = sub_22E6F9A9C(v9, v13 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v18);
      v14 += 16;
      --v12;
    }

    while (v12);
    a1 = v19;
  }

  *a1 = v13;
  return result;
}

void Signal.encode(to:)()
{
  sub_22E6D37D4();
  v20 = v1;
  v3 = v2;
  type metadata accessor for CloudAssets_Signal(0);
  sub_22E6CF978();
  MEMORY[0x28223BE20](v4);
  sub_22E6CF9C8();
  v7 = (v6 - v5);
  v23 = sub_22E6CF1CC(&qword_27DA6D080, &qword_22E7294F0);
  sub_22E6CF988();
  v9 = v8;
  sub_22E6D374C();
  MEMORY[0x28223BE20](v10);
  v12 = &v19 - v11;
  v13 = *v0;
  sub_22E6CF214(v3, v3[3]);
  sub_22E6F93BC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v21 = v13;
  sub_22E6F8EC8(v7);
  sub_22E6F9410();
  v14 = v20;
  v15 = Message.serializedData(partial:)();
  if (v14)
  {
    sub_22E6F9BC0();
  }

  else
  {
    v17 = v15;
    v18 = v16;
    sub_22E6F9BC0();
    v21 = v17;
    v22 = v18;
    sub_22E6D0A5C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_22E6CFBBC(v21, v22);
  }

  (*(v9 + 8))(v12, v23);
  sub_22E6D37BC();
}

uint64_t Signal.hash(into:)()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  result = MEMORY[0x2318ECB90](v2);
  if (v2)
  {
    v4 = (v1 + 40);
    do
    {
      if (*v4)
      {
        result = MEMORY[0x2318ECB90](1);
      }

      else
      {
        v5 = *(v4 - 1);
        MEMORY[0x2318ECB90](0);
        result = MEMORY[0x2318ECBB0](v5);
      }

      v4 += 16;
      --v2;
    }

    while (v2);
  }

  return result;
}

Swift::Int Signal.hashValue.getter()
{
  Hasher.init(_seed:)();
  sub_22E6F2538();
  return Hasher._finalize()();
}

Swift::Int sub_22E6F9344(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_22E6F2538();
  return Hasher._finalize()();
}

unint64_t sub_22E6F93BC()
{
  result = qword_27DA6D078;
  if (!qword_27DA6D078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D078);
  }

  return result;
}

unint64_t sub_22E6F9410()
{
  result = qword_27DA6CB78;
  if (!qword_27DA6CB78)
  {
    type metadata accessor for CloudAssets_Signal(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6CB78);
  }

  return result;
}

unint64_t sub_22E6F946C()
{
  result = qword_27DA6D088;
  if (!qword_27DA6D088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D088);
  }

  return result;
}

unint64_t sub_22E6F94C4()
{
  result = qword_27DA6D090;
  if (!qword_27DA6D090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D090);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Signal.Event.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_22E6F9618(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_22E6F96D8()
{
  result = qword_27DA6D098;
  if (!qword_27DA6D098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D098);
  }

  return result;
}

unint64_t sub_22E6F9730()
{
  result = qword_27DA6D0A0;
  if (!qword_27DA6D0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D0A0);
  }

  return result;
}

unint64_t sub_22E6F9788()
{
  result = qword_27DA6D0A8;
  if (!qword_27DA6D0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D0A8);
  }

  return result;
}

unint64_t sub_22E6F97E0()
{
  result = qword_27DA6D0B0;
  if (!qword_27DA6D0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D0B0);
  }

  return result;
}

unint64_t sub_22E6F9838()
{
  result = qword_27DA6D0B8;
  if (!qword_27DA6D0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D0B8);
  }

  return result;
}

unint64_t sub_22E6F9890()
{
  result = qword_27DA6D0C0;
  if (!qword_27DA6D0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D0C0);
  }

  return result;
}

unint64_t sub_22E6F98E8()
{
  result = qword_27DA6D0C8;
  if (!qword_27DA6D0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D0C8);
  }

  return result;
}

unint64_t sub_22E6F9940()
{
  result = qword_27DA6D0D0;
  if (!qword_27DA6D0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D0D0);
  }

  return result;
}

unint64_t sub_22E6F9998()
{
  result = qword_27DA6D0D8;
  if (!qword_27DA6D0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D0D8);
  }

  return result;
}

unint64_t sub_22E6F99F0()
{
  result = qword_27DA6D0E0;
  if (!qword_27DA6D0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D0E0);
  }

  return result;
}

unint64_t sub_22E6F9A48()
{
  result = qword_27DA6D0E8;
  if (!qword_27DA6D0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D0E8);
  }

  return result;
}

uint64_t sub_22E6F9A9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudAssets_Signal.Event(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22E6F9B00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudAssets_Signal.Event(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22E6F9B64(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22E6CF978();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_22E6F9BC0()
{

  return sub_22E6F9B64(v0, type metadata accessor for CloudAssets_Signal);
}

_BYTE *storeEnumTagSinglePayload for LoggerSubsystem(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t AssetManager.__allocating_init(serviceName:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_22E709E30();
  AssetManager.init(serviceName:)(v4, a2);
  return v2;
}

uint64_t AssetManager.process(request:)()
{
  sub_22E6E3BDC();
  v1[5] = v2;
  v1[6] = v0;
  v1[4] = v3;
  v4 = sub_22E6CF1CC(&qword_27DA6D118, &qword_22E729B10);
  v1[7] = v4;
  sub_22E6D376C(v4);
  v1[8] = sub_22E6E3EA4();
  v5 = sub_22E6CF1CC(&qword_27DA6D120, &qword_22E729B18);
  sub_22E6D376C(v5);
  v1[9] = sub_22E6E3EA4();
  v6 = sub_22E6CF1CC(&qword_27DA6D128, &qword_22E729B20);
  v1[10] = v6;
  sub_22E6E3A38(v6);
  v1[11] = v7;
  v1[12] = sub_22E6E3EA4();
  v8 = sub_22E6CF1CC(&qword_27DA6D130, &qword_22E729B28);
  v1[13] = v8;
  sub_22E6E3A38(v8);
  v1[14] = v9;
  v1[15] = sub_22E6E3EA4();
  v10 = sub_22E6E3C64();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  sub_22E6E3BDC();
  v1[4] = v2;
  v1[5] = v0;
  v1[3] = v3;
  v4 = sub_22E6CF1CC(&qword_27DA6C7C8, &unk_22E727340);
  v1[6] = v4;
  sub_22E6D376C(v4);
  v1[7] = sub_22E6E3EA4();
  v5 = sub_22E6CF1CC(&qword_27DA6CD88, &unk_22E728BE0);
  sub_22E6D376C(v5);
  v1[8] = sub_22E6E3EA4();
  v6 = sub_22E6CF1CC(&qword_27DA6CD90, qword_22E72CA80);
  v1[9] = v6;
  sub_22E6E3A38(v6);
  v1[10] = v7;
  v1[11] = sub_22E6E3EA4();
  v8 = sub_22E6CF1CC(&qword_27DA6C7B8, &unk_22E727290);
  v1[12] = v8;
  sub_22E6E3A38(v8);
  v1[13] = v9;
  v1[14] = sub_22E6E3EA4();
  v10 = sub_22E6E3C64();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  sub_22E6E3BDC();
  v1[4] = v2;
  v1[5] = v0;
  v1[3] = v3;
  v4 = sub_22E6CF1CC(&qword_27DA6C7C8, &unk_22E727340);
  v1[6] = v4;
  sub_22E6D376C(v4);
  v1[7] = sub_22E6E3EA4();
  v5 = sub_22E6CF1CC(&qword_27DA6CD88, &unk_22E728BE0);
  sub_22E6D376C(v5);
  v1[8] = sub_22E6E3EA4();
  v6 = sub_22E6CF1CC(&qword_27DA6CD90, qword_22E72CA80);
  v1[9] = v6;
  sub_22E6E3A38(v6);
  v1[10] = v7;
  v1[11] = sub_22E6E3EA4();
  v8 = sub_22E6CF1CC(&qword_27DA6C7B8, &unk_22E727290);
  v1[12] = v8;
  sub_22E6E3A38(v8);
  v1[13] = v9;
  v1[14] = sub_22E6E3EA4();
  v10 = sub_22E6E3C64();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_22E6F9EAC()
{
  sub_22E6E3D08();
  v2 = v1[5];
  sub_22E6CF1CC(&qword_27DA6D138, &qword_22E729B30);
  v3 = sub_22E6D3848();
  v4 = type metadata accessor for AssetDownloadRequest(v3);
  sub_22E6E3A38(v4);
  v5 = sub_22E709900();
  v1[16] = v5;
  *(v5 + 16) = xmmword_22E726B10;
  sub_22E7097C4();
  sub_22E7079E0(v2, v6 + v0);
  swift_task_alloc();
  sub_22E6ECB74();
  v1[17] = v7;
  *v7 = v8;
  v7[1] = sub_22E6F9FC4;
  sub_22E709F30();

  return AssetManager.process(requests:)();
}

uint64_t sub_22E6F9FC4()
{
  sub_22E6E3BDC();
  sub_22E6E3E08();
  v3 = v2;
  sub_22E6ECB14();
  *v4 = v3;
  v5 = *v1;
  sub_22E6E3C94();
  *v6 = v5;
  *(v3 + 144) = v0;

  if (!v0)
  {
  }

  sub_22E6ECBB8();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22E6FA0C8()
{
  sub_22E6E3BDC();
  MEMORY[0x2318EC7E0](*(v0 + 104));
  swift_task_alloc();
  sub_22E6ECB74();
  *(v0 + 152) = v1;
  *v1 = v2;
  v1[1] = sub_22E6FA168;
  sub_22E7097F4();

  return MEMORY[0x2822005A8](v3, v4, v5, v6, v7);
}

uint64_t sub_22E6FA168()
{
  sub_22E6E3BDC();
  sub_22E6E3E08();
  v1 = *v0;
  sub_22E6E3C94();
  *v2 = v1;

  sub_22E6ECBB8();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_22E6FA264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22E709A70();
  sub_22E709B3C();
  sub_22E709940();
  if (v13)
  {
    (*(*(v12 + 88) + 8))(*(v12 + 96), *(v12 + 80));
    if (qword_27DA6C450 != -1)
    {
      sub_22E70976C(&qword_27DA6C450);
    }

    v14 = type metadata accessor for Logger();
    sub_22E709E64(v14, qword_27DA6D0F0);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (sub_22E70A028(v16))
    {
      *sub_22E70A64C() = 0;
      sub_22E70997C();
      _os_log_impl(v17, v18, v19, v20, v21, 2u);
      sub_22E709A54();
    }

    v22 = sub_22E6D0784();
    sub_22E709EB4(&type metadata for AssetManager.AssetError, v22);
    swift_willThrow();
    v23 = sub_22E6D9164();
    v24(v23);
    goto LABEL_10;
  }

  v25 = sub_22E709B30();
  sub_22E707944(v25, v26, v27, v28);
  sub_22E709E24();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v30 = *(v12 + 96);
  v31 = *(v12 + 80);
  v32 = *(v12 + 88);
  if (EnumCaseMultiPayload == 1)
  {
    *(v12 + 24) = **(v12 + 64);
    sub_22E6CF1CC(&qword_27DA6C7C0, qword_22E726DC0);
    swift_willThrowTypedImpl();
    (*(v32 + 8))(v30, v31);
    v33 = sub_22E6D9164();
    v34(v33);
LABEL_10:
    sub_22E70A378();

    sub_22E6E3AD8();
    goto LABEL_12;
  }

  (*(v32 + 8))(*(v12 + 96), *(v12 + 80));
  v35 = sub_22E6D9164();
  v36(v35);
  sub_22E709888();
  v37 = sub_22E709FE8();
  sub_22E708A80(v37, v38);

  sub_22E709850();
LABEL_12:
  sub_22E709A28();

  return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12);
}

uint64_t sub_22E6FA4B8()
{
  sub_22E6E3D08();

  sub_22E70A378();

  sub_22E6E3AD8();

  return v0();
}

uint64_t sub_22E6FA538()
{
  sub_22E6E3D08();
  (*(v0[11] + 8))(v0[12], v0[10]);
  v1 = sub_22E6F3AB0();
  v2(v1);
  sub_22E70A378();

  sub_22E6E3AD8();

  return v3();
}

void sub_22E6FA5FC()
{
  sub_22E6EB570();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_22E6D3824();
  v8 = sub_22E6CF1CC(v6, v7);
  v9 = sub_22E6D376C(v8);
  MEMORY[0x28223BE20](v9);
  v11 = v20 - v10;
  sub_22E708A38(v3, v20 - v10, &qword_27DA6C9A8, &qword_22E72C030);
  v12 = type metadata accessor for TaskPriority();
  v13 = sub_22E6CF550(v11, 1, v12);

  if (v13 == 1)
  {
    sub_22E70798C(v11, &qword_27DA6C9A8, &qword_22E72C030);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(v1 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (v5)
    {
LABEL_6:
      v20[0] = v5;
      v18 = String.utf8CString.getter() + 32;

      if (v17 | v15)
      {
        v21[0] = 0;
        v21[1] = 0;
        v19 = v21;
        v21[2] = v15;
        v21[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v20[1] = 7;
      v20[2] = v19;
      v20[3] = v18;
      swift_task_create();

      sub_22E70798C(v3, &qword_27DA6C9A8, &qword_22E72C030);

      goto LABEL_14;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (v5)
    {
      goto LABEL_6;
    }
  }

  sub_22E70798C(v3, &qword_27DA6C9A8, &qword_22E72C030);
  if (v17 | v15)
  {
    v21[4] = 0;
    v21[5] = 0;
    v21[6] = v15;
    v21[7] = v17;
  }

  swift_task_create();
LABEL_14:
  sub_22E6EB538();
}

uint64_t sub_22E6FA874()
{
  v0 = type metadata accessor for Logger();
  sub_22E6E3658(v0, qword_27DA6D0F0);
  sub_22E6E3578(v0, qword_27DA6D0F0);
  type metadata accessor for AssetManager();
  sub_22E6CF1CC(&qword_27DA6D2C0, &qword_22E729E28);
  String.init<A>(describing:)();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_22E6FA914(uint64_t a1)
{
  type metadata accessor for AssetManager();
  v1 = swift_allocObject();
  result = AssetManager.init(serviceName:)(0xD00000000000001BLL, 0x800000022E72CD10);
  qword_27DA6D108 = v1;
  return result;
}

uint64_t sub_22E6FA98C()
{
  v0 = sub_22E6DAD10(0x67756265642ELL, 0xE600000000000000, 0xD000000000000022, 0x800000022E72CD60);
  v2 = v1;
  type metadata accessor for AssetManager();
  v3 = swift_allocObject();
  result = AssetManager.init(serviceName:)(v0, v2);
  qword_27DA6D110 = v3;
  return result;
}

uint64_t sub_22E6FAA34(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }
}

uint64_t AssetManager.init(serviceName:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_22E6D3778();
  v5 = type metadata accessor for XPCMessageSender();
  swift_allocObject();

  v6 = XPCMessageSender.init(machServiceName:)(v2, a2);

  v9 = v5;
  v10 = &off_284338900;
  *&v8 = v6;
  sub_22E7069EC(&v8, v3 + 16);
  return v3;
}

uint64_t sub_22E6FAB78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[7] = sub_22E6CF1CC(&qword_27DA6C7C8, &unk_22E727340);
  v5[8] = swift_task_alloc();
  v6 = sub_22E6CF1CC(&qword_27DA6D1B8, &qword_22E729CF8);
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();
  v5[12] = type metadata accessor for Asset(0);
  v5[13] = swift_task_alloc();
  v5[14] = sub_22E6CF1CC(&qword_27DA6D190, &qword_22E729E30);
  v5[15] = swift_task_alloc();
  sub_22E6CF1CC(&qword_27DA6D1C0, &qword_22E729D00);
  v5[16] = swift_task_alloc();
  v7 = sub_22E6CF1CC(&qword_27DA6D1C8, &qword_22E729D08);
  v5[17] = v7;
  v5[18] = *(v7 - 8);
  v5[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22E6FAD8C, 0, 0);
}

uint64_t sub_22E6FAD8C()
{
  sub_22E6E3BDC();
  v1 = sub_22E6CF1CC(&qword_27DA6D188, &qword_22E729BC0);
  MEMORY[0x2318EC7E0](v1);
  swift_task_alloc();
  sub_22E6ECB74();
  *(v0 + 160) = v2;
  *v2 = v3;
  v2[1] = sub_22E6FAE44;
  sub_22E7097F4();

  return MEMORY[0x2822005A8](v4, v5, v6, v7, v8);
}

uint64_t sub_22E6FAE44()
{
  sub_22E6E3BDC();
  sub_22E6E3E08();
  v1 = *v0;
  sub_22E6E3C94();
  *v2 = v1;

  sub_22E6ECBB8();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_22E6FAF40()
{
  if (sub_22E6CF550(v0[16], 1, v0[14]) == 1)
  {
    (*(v0[18] + 8))(v0[19], v0[17]);
    v0[4] = 0;
    sub_22E6CF1CC(&qword_27DA6D1B0, &qword_22E729CE0);
    sub_22E70A200();
    AsyncThrowingStream.Continuation.finish(throwing:)();

    sub_22E6E3AD8();

    return v1();
  }

  else
  {
    v3 = v0[15];
    v4 = v0[12];
    v5 = sub_22E6F3AB0();
    sub_22E707944(v5, v6, v7, v8);
    if (sub_22E6CF550(v3, 1, v4) == 1)
    {
      v9 = v0[8];
      v10 = sub_22E6D0784();
      *v9 = sub_22E709EB4(&type metadata for AssetManager.AssetError, v10);
      sub_22E6F3808();
      swift_storeEnumTagMultiPayload();
      v11 = sub_22E6CF1CC(&qword_27DA6D1B0, &qword_22E729CE0);
      sub_22E70A2CC(v11);
      v12 = sub_22E709B30();
      v13(v12);
    }

    else
    {
      v14 = v0[13];
      v15 = v0[8];
      sub_22E709820();
      sub_22E708A80(v16, v14);
      sub_22E7097AC();
      sub_22E7079E0(v14, v15);
      swift_storeEnumTagMultiPayload();
      sub_22E6CF1CC(&qword_27DA6D1B0, &qword_22E729CE0);
      sub_22E70A1F4();
      AsyncThrowingStream.Continuation.yield(_:)();
      v17 = sub_22E709D48();
      v18(v17);
      sub_22E709808();
      sub_22E708D18();
    }

    swift_task_alloc();
    sub_22E6ECB74();
    v0[20] = v19;
    *v19 = v20;
    v19[1] = sub_22E6FAE44;
    sub_22E7097F4();

    return MEMORY[0x2822005A8](v21, v22, v23, v24, v25);
  }
}

uint64_t sub_22E6FB1E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22E709A70();
  sub_22E709B3C();
  (*(v12[18] + 8))(v12[19], v12[17]);
  v12[3] = v12[2];
  sub_22E6CF1CC(&qword_27DA6D1B0, &qword_22E729CE0);
  AsyncThrowingStream.Continuation.finish(throwing:)();
  v12[4] = 0;
  sub_22E6CF1CC(&qword_27DA6D1B0, &qword_22E729CE0);
  sub_22E70A40C();
  AsyncThrowingStream.Continuation.finish(throwing:)();

  sub_22E6E3AD8();
  sub_22E709A28();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10, a11, a12);
}

uint64_t sub_22E6FB454()
{
  sub_22E6E3D08();
  sub_22E6CF1CC(&qword_27DA6D140, &qword_22E729B48);
  v1 = sub_22E6D3848();
  v2 = type metadata accessor for AssetUploadRequest(v1);
  sub_22E6E3A38(v2);
  v3 = sub_22E709900();
  *(v0 + 120) = v3;
  sub_22E709B78(v3, xmmword_22E726B10);
  swift_task_alloc();
  sub_22E6ECB74();
  *(v0 + 128) = v4;
  *v4 = v5;
  v4[1] = sub_22E6FB55C;
  sub_22E709F30();

  return AssetManager.process(requests:)();
}

uint64_t sub_22E6FB55C()
{
  sub_22E6E3BDC();
  sub_22E6E3E08();
  v3 = v2;
  sub_22E6ECB14();
  *v4 = v3;
  v5 = *v1;
  sub_22E6E3C94();
  *v6 = v5;
  *(v3 + 136) = v0;

  if (!v0)
  {
  }

  sub_22E6ECBB8();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22E6FB660()
{
  sub_22E6E3BDC();
  MEMORY[0x2318EC7E0](*(v0 + 96));
  swift_task_alloc();
  sub_22E6ECB74();
  *(v0 + 144) = v1;
  *v1 = v2;
  v1[1] = sub_22E6FB700;
  sub_22E7097F4();

  return MEMORY[0x2822005A8](v3, v4, v5, v6, v7);
}

uint64_t sub_22E6FB700()
{
  sub_22E6E3BDC();
  sub_22E6E3E08();
  v1 = *v0;
  sub_22E6E3C94();
  *v2 = v1;

  sub_22E6ECBB8();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_22E6FB7FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22E709A70();
  sub_22E709B3C();
  sub_22E709940();
  if (v28)
  {
    (*(v12[10] + 8))(v12[11], v12[9]);
    if (qword_27DA6C450 != -1)
    {
      sub_22E70976C(&qword_27DA6C450);
    }

    v13 = type metadata accessor for Logger();
    sub_22E709E64(v13, qword_27DA6D0F0);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (sub_22E70A028(v15))
    {
      *sub_22E70A64C() = 0;
      sub_22E70997C();
      _os_log_impl(v16, v17, v18, v19, v20, 2u);
      sub_22E709A54();
    }

    v21 = sub_22E6D0784();
    sub_22E709EB4(&type metadata for AssetManager.AssetError, v21);
    swift_willThrow();
    v22 = sub_22E6D9164();
    v23(v22);
  }

  else
  {
    v24 = sub_22E709B30();
    sub_22E707944(v24, v25, v26, v27);
    sub_22E709E24();
    swift_getEnumCaseMultiPayload();
    sub_22E70A3E4();
    if (!v28)
    {
      v33 = v12[7];
      v34 = v12[3];
      v35 = sub_22E709C5C();
      v36(v35);
      v37 = sub_22E709C4C();
      v38(v37);
      sub_22E709820();
      sub_22E708A80(v33, v34);

      sub_22E709850();
      goto LABEL_12;
    }

    swift_willThrow();
    v29 = sub_22E709C5C();
    v30(v29);
    v31 = sub_22E709C4C();
    v32(v31);
  }

  sub_22E709FCC();

  sub_22E6E3AD8();
LABEL_12:
  sub_22E709A28();

  return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12);
}

uint64_t sub_22E6FBA0C()
{
  sub_22E6E3D08();

  sub_22E709FCC();

  sub_22E6E3AD8();

  return v0();
}

uint64_t sub_22E6FBA8C()
{
  sub_22E6E3D08();
  (*(v0[10] + 8))(v0[11], v0[9]);
  v1 = sub_22E6F3AB0();
  v2(v1);
  sub_22E709FCC();

  sub_22E6E3AD8();

  return v3();
}

uint64_t AssetManager.process(requests:)()
{
  sub_22E6E3BDC();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v1[5] = *v0;
  v4 = sub_22E6CF1CC(&qword_27DA6D148, &qword_22E729B58);
  v1[6] = v4;
  sub_22E6E3A38(v4);
  v1[7] = v5;
  v1[8] = sub_22E6E3EA4();
  v6 = sub_22E6CF1CC(&qword_27DA6D150, &qword_22E729B60);
  v1[9] = v6;
  sub_22E6E3A38(v6);
  v1[10] = v7;
  v1[11] = sub_22E6E3EA4();
  v8 = type metadata accessor for TaskPriority();
  v1[12] = v8;
  sub_22E6E3A38(v8);
  v1[13] = v9;
  v1[14] = sub_22E6E3EA4();
  v10 = sub_22E6E3C64();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  sub_22E6E3D08();
  v0[2] = v1;
  v2 = sub_22E6CF1CC(&qword_27DA6D148, &qword_22E729B58);
  v0[3] = v2;
  sub_22E6E3A38(v2);
  v0[4] = v3;
  v0[5] = sub_22E6E3EA4();
  v4 = sub_22E6CF1CC(&qword_27DA6D130, &qword_22E729B28);
  v0[6] = v4;
  sub_22E6E3A38(v4);
  v0[7] = v5;
  v0[8] = sub_22E6E3EA4();
  swift_task_alloc();
  sub_22E6ECB74();
  v0[9] = v6;
  *v6 = v7;
  v6[1] = sub_22E6FC98C;
  sub_22E709F30();

  return AssetManager.process(requests:)();
}

{
  sub_22E6E3BDC();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v1[5] = *v0;
  v4 = sub_22E6CF1CC(&qword_27DA6D160, &qword_22E729B80);
  v1[6] = v4;
  sub_22E6E3A38(v4);
  v1[7] = v5;
  v1[8] = sub_22E6E3EA4();
  v6 = sub_22E6CF1CC(&qword_27DA6D168, &qword_22E729B88);
  v1[9] = v6;
  sub_22E6E3A38(v6);
  v1[10] = v7;
  v1[11] = sub_22E6E3EA4();
  v8 = sub_22E6CF1CC(&qword_27DA6D170, &qword_22E729B90);
  v1[12] = v8;
  sub_22E6E3A38(v8);
  v1[13] = v9;
  v1[14] = sub_22E6E3EA4();
  v10 = type metadata accessor for TaskPriority();
  v1[15] = v10;
  sub_22E6E3A38(v10);
  v1[16] = v11;
  v1[17] = sub_22E6E3EA4();
  v12 = sub_22E6E3C64();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

{
  sub_22E6E3BDC();
  v1[3] = v2;
  v1[4] = v0;
  v1[5] = *v0;
  v3 = sub_22E6CF1CC(&qword_27DA6D148, &qword_22E729B58);
  v1[6] = v3;
  sub_22E6E3A38(v3);
  v1[7] = v4;
  v1[8] = sub_22E6E3EA4();
  v5 = sub_22E6CF1CC(&qword_27DA6C7B8, &unk_22E727290);
  sub_22E6D376C(v5);
  v1[9] = sub_22E6E3EA4();
  v6 = sub_22E6CF1CC(&qword_27DA6D178, &qword_22E729BB0);
  v1[10] = v6;
  sub_22E6E3A38(v6);
  v1[11] = v7;
  v1[12] = sub_22E6E3EA4();
  v8 = sub_22E6CF1CC(&qword_27DA6D180, &qword_22E729BB8);
  v1[13] = v8;
  sub_22E6E3A38(v8);
  v1[14] = v9;
  v1[15] = sub_22E6E3EA4();
  v10 = sub_22E6CF1CC(&qword_27DA6D188, &qword_22E729BC0);
  v1[16] = v10;
  sub_22E6E3A38(v10);
  v1[17] = v11;
  v1[18] = sub_22E6E3EA4();
  v12 = sub_22E6CF1CC(&qword_27DA6C898, &qword_22E727350);
  v1[19] = v12;
  sub_22E6E3A38(v12);
  v1[20] = v13;
  v1[21] = sub_22E6E3EA4();
  v14 = sub_22E6CF1CC(&qword_27DA6C890, &qword_22E7272B0);
  v1[22] = v14;
  sub_22E6E3A38(v14);
  v1[23] = v15;
  v1[24] = sub_22E6E3EA4();
  v16 = sub_22E6CF1CC(&qword_27DA6C7B0, &unk_22E726D30);
  v1[25] = v16;
  sub_22E6E3A38(v16);
  v1[26] = v17;
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v18 = sub_22E6CF1CC(&qword_27DA6D150, &qword_22E729B60);
  v1[29] = v18;
  sub_22E6E3A38(v18);
  v1[30] = v19;
  v1[31] = sub_22E6E3EA4();
  v20 = type metadata accessor for TaskPriority();
  v1[32] = v20;
  sub_22E6E3A38(v20);
  v1[33] = v21;
  v1[34] = sub_22E6E3EA4();
  v22 = sub_22E6E3C64();

  return MEMORY[0x2822009F8](v22, v23, v24);
}

{
  sub_22E6E3BDC();
  v1[2] = v2;
  v1[3] = v0;
  v1[4] = *v0;
  v3 = sub_22E6CF1CC(&qword_27DA6C9A8, &qword_22E72C030);
  sub_22E6D376C(v3);
  v1[5] = sub_22E6E3EA4();
  v4 = sub_22E6CF1CC(&qword_27DA6C7B8, &unk_22E727290);
  v1[6] = v4;
  sub_22E6E3A38(v4);
  v1[7] = v5;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v6 = type metadata accessor for TaskPriority();
  v1[10] = v6;
  sub_22E6E3A38(v6);
  v1[11] = v7;
  v1[12] = sub_22E6E3EA4();
  v8 = sub_22E6E3C64();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22E6FBCB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  sub_22E709D1C();
  a21 = v23;
  a22 = v24;
  sub_22E709ECC();
  a20 = v22;
  if (qword_27DA6C450 != -1)
  {
    sub_22E70976C(&qword_27DA6C450);
  }

  v25 = v22[3];
  v26 = type metadata accessor for Logger();
  sub_22E709E64(v26, qword_27DA6D0F0);

  v27 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_22E70A604();
  if (sub_22E70A290())
  {
    v28 = v22[14];
    sub_22E709F90();
    sub_22E70A060();
    sub_22E70A284();
    v29 = sub_22E70A278(4.8151e-34);
    type metadata accessor for AssetUploadRequest(v29);
    v30 = sub_22E709F04();
    v31 = MEMORY[0x2318EC680](v30);
    sub_22E706BF8(v31, v32, &a11);
    v33 = sub_22E70A3B8();
    sub_22E709C2C(v33);
    sub_22E7097DC();
    sub_22E7096D0(v34, v35, MEMORY[0x277D85730]);
    sub_22E709DE8();
    dispatch thunk of CustomStringConvertible.description.getter();
    v36 = sub_22E709964();
    v37(v36);
    v38 = sub_22E6D3824();
    sub_22E706BF8(v38, v39, v40);
    sub_22E70A0B0();
    *(v25 + 14) = v28;
    sub_22E70999C();
    _os_log_impl(v41, v42, v43, v44, v45, 0x16u);
    sub_22E70A07C();
    sub_22E6E3CC8();
    sub_22E7099AC();
  }

  sub_22E70A0C8(v22[4]);
  sub_22E709F54();
  sub_22E6ECB74();
  v22[15] = v46;
  *v46 = v47;
  v46[1] = sub_22E6FBE7C;
  sub_22E709F30();
  sub_22E709BF0();

  return v51(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_22E6FBE7C()
{
  sub_22E6E3BDC();
  sub_22E6E3E08();
  sub_22E6ECB14();
  *v3 = v2;
  v4 = *v1;
  sub_22E6E3C94();
  *v5 = v4;
  *(v6 + 128) = v0;

  sub_22E6ECBB8();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22E6FBF78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22E709A70();
  sub_22E709B3C();
  v30 = v12[14];
  v13 = v12[11];
  v14 = v12[8];
  v16 = v12[6];
  v15 = v12[7];
  v17 = v12[5];
  v18 = swift_task_alloc();
  *(v18 + 16) = v13;
  *(v18 + 24) = v17;
  sub_22E6CF1CC(&qword_27DA6C7C8, &unk_22E727340);
  (*(v15 + 104))(v14, *MEMORY[0x277D858A0], v16);
  AsyncThrowingStream.init<>(_:bufferingPolicy:_:)();

  v19 = sub_22E6D9164();
  v20(v19);

  sub_22E709850();
  sub_22E709A28();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, v30, a10, a11, a12);
}

uint64_t sub_22E6FC098()
{
  sub_22E6E3BDC();

  sub_22E6E3AD8();

  return v0();
}

uint64_t sub_22E6FC274()
{
  sub_22E6E3D08();
  v2 = v1[4];
  sub_22E6CF1CC(&qword_27DA6D138, &qword_22E729B30);
  v3 = sub_22E6D3848();
  v4 = type metadata accessor for AssetDownloadRequest(v3);
  sub_22E6E3A38(v4);
  v5 = sub_22E709900();
  v1[15] = v5;
  *(v5 + 16) = xmmword_22E726B10;
  sub_22E7097C4();
  sub_22E7079E0(v2, v6 + v0);
  swift_task_alloc();
  sub_22E6ECB74();
  v1[16] = v7;
  *v7 = v8;
  v7[1] = sub_22E6FC38C;
  sub_22E709F30();

  return AssetManager.process(requests:)();
}

uint64_t sub_22E6FC38C()
{
  sub_22E6E3BDC();
  sub_22E6E3E08();
  v3 = v2;
  sub_22E6ECB14();
  *v4 = v3;
  v5 = *v1;
  sub_22E6E3C94();
  *v6 = v5;
  *(v3 + 136) = v0;

  if (!v0)
  {
  }

  sub_22E6ECBB8();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22E6FC490()
{
  sub_22E6E3BDC();
  MEMORY[0x2318EC7E0](*(v0 + 96));
  swift_task_alloc();
  sub_22E6ECB74();
  *(v0 + 144) = v1;
  *v1 = v2;
  v1[1] = sub_22E6FC530;
  sub_22E7097F4();

  return MEMORY[0x2822005A8](v3, v4, v5, v6, v7);
}

uint64_t sub_22E6FC530()
{
  sub_22E6E3BDC();
  sub_22E6E3E08();
  v1 = *v0;
  sub_22E6E3C94();
  *v2 = v1;

  sub_22E6ECBB8();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_22E6FC62C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22E709A70();
  sub_22E709B3C();
  sub_22E709940();
  if (v28)
  {
    (*(v12[10] + 8))(v12[11], v12[9]);
    if (qword_27DA6C450 != -1)
    {
      sub_22E70976C(&qword_27DA6C450);
    }

    v13 = type metadata accessor for Logger();
    sub_22E709E64(v13, qword_27DA6D0F0);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (sub_22E70A028(v15))
    {
      *sub_22E70A64C() = 0;
      sub_22E70997C();
      _os_log_impl(v16, v17, v18, v19, v20, 2u);
      sub_22E709A54();
    }

    v21 = sub_22E6D0784();
    sub_22E709EB4(&type metadata for AssetManager.AssetError, v21);
    swift_willThrow();
    v22 = sub_22E6D9164();
    v23(v22);
  }

  else
  {
    v24 = sub_22E709B30();
    sub_22E707944(v24, v25, v26, v27);
    sub_22E709E24();
    swift_getEnumCaseMultiPayload();
    sub_22E70A3E4();
    if (!v28)
    {
      v33 = v12[7];
      v34 = v12[3];
      v35 = sub_22E709C5C();
      v36(v35);
      v37 = sub_22E709C4C();
      v38(v37);
      sub_22E709820();
      sub_22E708A80(v33, v34);

      sub_22E709850();
      goto LABEL_12;
    }

    swift_willThrow();
    v29 = sub_22E709C5C();
    v30(v29);
    v31 = sub_22E709C4C();
    v32(v31);
  }

  sub_22E709FCC();

  sub_22E6E3AD8();
LABEL_12:
  sub_22E709A28();

  return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12);
}

uint64_t sub_22E6FC98C()
{
  sub_22E6E3BDC();
  sub_22E6E3E08();
  sub_22E6ECB14();
  *v3 = v2;
  v4 = *v1;
  sub_22E6E3C94();
  *v5 = v4;
  *(v6 + 80) = v0;

  sub_22E6ECBB8();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22E6FCA88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22E709A70();
  sub_22E709B3C();
  v13 = v12[8];
  v14 = v12[5];
  v15 = v12[3];
  v16 = v12[4];
  *(swift_task_alloc() + 16) = v13;
  sub_22E6CF1CC(&qword_27DA6C7C8, &unk_22E727340);
  (*(v16 + 104))(v14, *MEMORY[0x277D858A0], v15);
  AsyncThrowingStream.init<>(_:bufferingPolicy:_:)();

  v17 = sub_22E6F3AB0();
  v18(v17);

  sub_22E709850();
  sub_22E709A28();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
}

uint64_t sub_22E6FCB94()
{
  sub_22E6E3BDC();

  sub_22E6E3AD8();

  return v0();
}

uint64_t sub_22E6FCDD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  sub_22E709D1C();
  a21 = v23;
  a22 = v24;
  sub_22E709ECC();
  a20 = v22;
  if (qword_27DA6C450 != -1)
  {
    sub_22E70976C(&qword_27DA6C450);
  }

  v25 = v22[3];
  v26 = type metadata accessor for Logger();
  sub_22E709E64(v26, qword_27DA6D0F0);

  v27 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_22E70A604();
  if (sub_22E70A290())
  {
    v28 = v22[17];
    sub_22E709F90();
    sub_22E70A060();
    sub_22E70A284();
    v29 = sub_22E70A278(4.8151e-34);
    type metadata accessor for AssetDownloadRequest(v29);
    v30 = sub_22E709F04();
    v31 = MEMORY[0x2318EC680](v30);
    sub_22E706BF8(v31, v32, &a11);
    v33 = sub_22E70A3B8();
    sub_22E709C2C(v33);
    sub_22E7097DC();
    sub_22E7096D0(v34, v35, MEMORY[0x277D85730]);
    sub_22E709DE8();
    dispatch thunk of CustomStringConvertible.description.getter();
    v36 = sub_22E709964();
    v37(v36);
    v38 = sub_22E6D3824();
    sub_22E706BF8(v38, v39, v40);
    sub_22E70A0B0();
    *(v25 + 14) = v28;
    sub_22E70999C();
    _os_log_impl(v41, v42, v43, v44, v45, 0x16u);
    sub_22E70A07C();
    sub_22E6E3CC8();
    sub_22E7099AC();
  }

  sub_22E70A0C8(v22[4]);
  sub_22E709F54();
  sub_22E6ECB74();
  v22[18] = v46;
  *v46 = v47;
  v46[1] = sub_22E6FCF9C;
  sub_22E709F30();
  sub_22E709BF0();

  return v51(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_22E6FCF9C()
{
  sub_22E6E3BDC();
  sub_22E6E3E08();
  sub_22E6ECB14();
  *v3 = v2;
  v4 = *v1;
  sub_22E6E3C94();
  *v5 = v4;
  *(v6 + 152) = v0;

  sub_22E6ECBB8();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22E6FD098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_22E709F74();
  sub_22E70A224();
  v17 = v16[3];
  v18 = *(v17 + 16);
  v19 = MEMORY[0x277D84F90];
  if (v18)
  {
    v21 = v16[6];
    v20 = v16[7];
    v54 = MEMORY[0x277D84F90];
    sub_22E7071CC(0, v18, 0);
    v19 = v54;
    v22 = type metadata accessor for AssetDownloadRequest(0);
    sub_22E6E3A38(v22);
    v24 = v17 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
    v26 = *(v25 + 72);
    do
    {
      v27 = v16[8];
      v28 = *(v21 + 48);
      sub_22E7097C4();
      sub_22E7079E0(v24, v27 + v28);
      type metadata accessor for UUID();
      sub_22E6D901C();
      (*(v29 + 16))(v27, v27 + v28);
      a13 = v19;
      v31 = *(v19 + 16);
      v30 = *(v19 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_22E7071CC((v30 > 1), v31 + 1, 1);
      }

      v32 = v16[8];
      *(v19 + 16) = v31 + 1;
      sub_22E707944(v32, v19 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v31, &qword_27DA6D160, &qword_22E729B80);
      v24 += v26;
      --v18;
    }

    while (v18);
    v17 = v16[3];
  }

  v34 = v16[13];
  v33 = v16[14];
  v35 = v16[11];
  v51 = v16[12];
  v52 = v16[17];
  v36 = v16[9];
  v37 = v16[10];
  v53 = v16[8];
  v38 = v16[5];
  v50 = v16[2];
  v39 = sub_22E6FDFA4(v19);
  v40 = swift_task_alloc();
  v40[2] = v33;
  v40[3] = v39;
  v40[4] = v17;
  v40[5] = v38;
  sub_22E6CF1CC(&qword_27DA6D118, &qword_22E729B10);
  (*(v37 + 104))(v35, *MEMORY[0x277D858A0], v36);
  sub_22E709B30();
  AsyncThrowingStream.init<>(_:bufferingPolicy:_:)();

  (*(v34 + 8))(v33, v51);

  sub_22E709850();
  sub_22E6E3F68();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, v50, v51, v52, v53, a13, a14, a15, a16);
}

uint64_t sub_22E6FD330()
{
  sub_22E6E3D08();

  sub_22E6E3AD8();

  return v0();
}

uint64_t sub_22E6FD3B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a1;
  v27 = a3;
  v4 = sub_22E6CF1CC(&qword_27DA6D1B0, &qword_22E729CE0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - v7;
  v25 = &v24 - v7;
  v9 = sub_22E6CF1CC(&qword_27DA6D150, &qword_22E729B60);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v24 - v12;
  v14 = sub_22E6CF1CC(&qword_27DA6C9A8, &qword_22E72C030);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v24 - v15;
  v17 = type metadata accessor for TaskPriority();
  sub_22E6CF58C(v16, 1, 1, v17);
  (*(v10 + 16))(v13, a2, v9);
  v18 = v8;
  v19 = v4;
  (*(v5 + 16))(v18, v26, v4);
  v20 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v21 = (v11 + *(v5 + 80) + v20) & ~*(v5 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  (*(v10 + 32))(v22 + v20, v13, v9);
  (*(v5 + 32))(v22 + v21, v25, v19);
  *(v22 + ((v6 + v21 + 7) & 0xFFFFFFFFFFFFFFF8)) = v27;
  sub_22E6FA5FC();
}

uint64_t sub_22E6FD67C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[5] = sub_22E6CF1CC(&qword_27DA6C7C8, &unk_22E727340);
  v5[6] = swift_task_alloc();
  v6 = sub_22E6CF1CC(&qword_27DA6D1B8, &qword_22E729CF8);
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v5[10] = type metadata accessor for Asset(0);
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  sub_22E6CF1CC(&qword_27DA6D190, &qword_22E729E30);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = type metadata accessor for UploadResponseMessage(0);
  v5[17] = swift_task_alloc();
  sub_22E6CF1CC(&qword_27DA6D1E0, &qword_22E729D30);
  v5[18] = swift_task_alloc();
  v7 = sub_22E6CF1CC(&qword_27DA6D1E8, &qword_22E729D38);
  v5[19] = v7;
  v5[20] = *(v7 - 8);
  v5[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22E6FD8E0, 0, 0);
}

uint64_t sub_22E6FD8E0()
{
  sub_22E6E3BDC();
  v1 = sub_22E6CF1CC(&qword_27DA6D150, &qword_22E729B60);
  MEMORY[0x2318EC7E0](v1);
  swift_task_alloc();
  sub_22E6ECB74();
  *(v0 + 176) = v2;
  *v2 = v3;
  v2[1] = sub_22E6FD998;
  sub_22E7097F4();

  return MEMORY[0x2822005A8](v4, v5, v6, v7, v8);
}

uint64_t sub_22E6FD998()
{
  sub_22E6E3BDC();
  sub_22E6E3E08();
  v1 = *v0;
  sub_22E6E3C94();
  *v2 = v1;

  sub_22E6ECBB8();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

void sub_22E6FDA94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_22E709F74();
  sub_22E70A224();
  if (sub_22E6CF550(v16[18], 1, v16[16]) == 1)
  {
    v17 = v16[21];
    sub_22E70A000();
    v70 = v18;
    (*(v19 + 8))(v17);

    sub_22E709850();
    sub_22E6E3F68();

    v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, v70, a13, a14, a15, a16);
  }

  else
  {
    sub_22E709BA8();
    v28 = sub_22E6E3EEC();
    sub_22E708A80(v28, v29);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v30 = v16[14];
      v31 = v16[10];
      sub_22E707944(v16[17], v16[15], &qword_27DA6D190, &qword_22E729E30);
      v32 = sub_22E6F3AB0();
      sub_22E708A38(v32, v33, &qword_27DA6D190, &qword_22E729E30);
      if (sub_22E6CF550(v30, 1, v31) == 1)
      {
        v34 = v16[6];
        v35 = sub_22E6D0784();
        *v34 = sub_22E709EB4(&type metadata for AssetManager.AssetError, v35);
        sub_22E6F3808();
        swift_storeEnumTagMultiPayload();
        v36 = sub_22E6CF1CC(&qword_27DA6D1B0, &qword_22E729CE0);
        sub_22E70A2CC(v36);
        v37 = sub_22E709B30();
        v38(v37);
      }

      else
      {
        sub_22E709820();
        sub_22E708A80(v39, v40);
        if (qword_27DA6C450 != -1)
        {
          sub_22E70976C(&qword_27DA6C450);
        }

        v41 = type metadata accessor for Logger();
        sub_22E6E3578(v41, qword_27DA6D0F0);
        sub_22E7097AC();
        v42 = sub_22E6F3AB0();
        sub_22E7079E0(v42, v43);
        v44 = Logger.logObject.getter();
        v45 = static os_log_type_t.default.getter();
        if (sub_22E70A028(v45))
        {
          v46 = sub_22E709FA8();
          v71 = sub_22E709F3C();
          *v46 = 136315138;
          sub_22E7097AC();
          v47 = sub_22E6D3888();
          sub_22E7079E0(v47, v48);
          sub_22E709FE8();
          String.init<A>(describing:)();
          sub_22E709808();
          sub_22E708D18();
          v49 = sub_22E709FE8();
          v52 = sub_22E706BF8(v49, v50, v51);

          *(v46 + 4) = v52;
          sub_22E70997C();
          _os_log_impl(v53, v54, v55, v56, v57, 0xCu);
          sub_22E6CF2F4(v71);
          sub_22E7099AC();
          sub_22E709A54();
        }

        else
        {

          sub_22E709808();
          sub_22E708D18();
        }

        v58 = v16[13];
        v59 = v16[6];
        sub_22E7097AC();
        sub_22E7079E0(v58, v59);
        swift_storeEnumTagMultiPayload();
        sub_22E6CF1CC(&qword_27DA6D1B0, &qword_22E729CE0);
        sub_22E70A1F4();
        AsyncThrowingStream.Continuation.yield(_:)();
        v60 = sub_22E709D48();
        v61(v60);
        sub_22E709808();
        sub_22E708D18();
      }

      sub_22E70798C(v16[15], &qword_27DA6D190, &qword_22E729E30);
      swift_task_alloc();
      sub_22E6ECB74();
      v16[22] = v62;
      *v62 = v63;
      v62[1] = sub_22E6FD998;
      sub_22E7097F4();
      sub_22E6E3F68();

      MEMORY[0x2822005A8](v64, v65, v66, v67, v68);
    }

    else
    {
      _assertionFailure(_:_:file:line:flags:)();
      sub_22E6E3F68();
    }
  }
}

uint64_t sub_22E6FDECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_22E709D1C();
  sub_22E709ECC();
  v15 = *(v14 + 168);
  sub_22E70A000();
  v28 = v16;
  (*(v17 + 8))(v15);
  v27 = *(v14 + 16);

  sub_22E6E3AD8();
  sub_22E709BF0();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27, v28, a12, a13, a14);
}

uint64_t sub_22E6FDFA4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_22E6CF1CC(&qword_27DA6D220, &qword_22E729D70);
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v4 = v1;

  sub_22E7084F8(v2, 1, &v4);

  return v4;
}

uint64_t sub_22E6FE058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33 = a4;
  v34 = a5;
  v31 = a1;
  v32 = a3;
  v6 = sub_22E6CF1CC(&qword_27DA6D1F0, &qword_22E729D40);
  v29 = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - v9;
  v30 = &v27 - v9;
  v11 = sub_22E6CF1CC(&qword_27DA6D170, &qword_22E729B90);
  v28 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v27 - v14;
  v16 = sub_22E6CF1CC(&qword_27DA6C9A8, &qword_22E72C030);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v27 - v17;
  v19 = type metadata accessor for TaskPriority();
  sub_22E6CF58C(v18, 1, 1, v19);
  (*(v12 + 16))(v15, a2, v11);
  (*(v7 + 16))(v10, v31, v6);
  v20 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v21 = (v13 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (*(v7 + 80) + v21 + 8) & ~*(v7 + 80);
  v23 = (v8 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  (*(v12 + 32))(v24 + v20, v15, v28);
  *(v24 + v21) = v32;
  (*(v7 + 32))(v24 + v22, v30, v29);
  v25 = v34;
  *(v24 + v23) = v33;
  *(v24 + ((v23 + 15) & 0xFFFFFFFFFFFFFFF8)) = v25;

  sub_22E6E1B80(0, 0, v18, &unk_22E729D50, v24);
}

uint64_t sub_22E6FE344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[9] = sub_22E6CF1CC(&qword_27DA6D118, &qword_22E729B10);
  v7[10] = swift_task_alloc();
  v8 = sub_22E6CF1CC(&qword_27DA6D1F8, &qword_22E729D58);
  v7[11] = v8;
  v7[12] = *(v8 - 8);
  v7[13] = swift_task_alloc();
  v9 = type metadata accessor for AssetDownloadRequest(0);
  v7[14] = v9;
  v7[15] = *(v9 - 8);
  v7[16] = swift_task_alloc();
  v10 = type metadata accessor for URL();
  v7[17] = v10;
  v7[18] = *(v10 - 8);
  v7[19] = swift_task_alloc();
  v7[20] = swift_task_alloc();
  v7[21] = swift_task_alloc();
  v11 = type metadata accessor for TaskPriority();
  v7[22] = v11;
  v7[23] = *(v11 - 8);
  v7[24] = swift_task_alloc();
  v7[25] = type metadata accessor for AssetDownloadResponse(0);
  v7[26] = swift_task_alloc();
  v7[27] = swift_task_alloc();
  v7[28] = swift_task_alloc();
  sub_22E6CF1CC(&qword_27DA6D200, &qword_22E72A550);
  v7[29] = swift_task_alloc();
  v7[30] = swift_task_alloc();
  v7[31] = type metadata accessor for DownloadResponseMessage(0);
  v7[32] = swift_task_alloc();
  sub_22E6CF1CC(&qword_27DA6D208, &qword_22E729D60);
  v7[33] = swift_task_alloc();
  v12 = sub_22E6CF1CC(&qword_27DA6D210, &qword_22E729D68);
  v7[34] = v12;
  v7[35] = *(v12 - 8);
  v7[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22E6FE704, 0, 0);
}

uint64_t sub_22E6FE704()
{
  sub_22E6E3D08();
  v1 = sub_22E6CF1CC(&qword_27DA6D170, &qword_22E729B90);
  MEMORY[0x2318EC7E0](v1);
  swift_task_alloc();
  sub_22E6ECB74();
  *(v0 + 296) = v2;
  *v2 = v3;
  sub_22E709AE0(v2);
  sub_22E7097F4();

  return MEMORY[0x2822005A8](v4, v5, v6, v7, v8);
}

uint64_t sub_22E6FE7D0()
{
  sub_22E6E3BDC();
  v1 = *v0;
  sub_22E6E3C94();
  *v2 = v1;

  sub_22E6ECBB8();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_22E6FE8FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28)
{
  sub_22E709E48();
  a27 = v29;
  a28 = v30;
  sub_22E709FC0();
  a26 = v28;
  a17 = *MEMORY[0x277D85DE8];
  sub_22E709940();
  if (v31)
  {
    v32 = (v28[35] + 8);
LABEL_4:
    v33 = v28 + 36;
    v34 = v28 + 34;
    goto LABEL_5;
  }

  v44 = sub_22E709B30();
  sub_22E708A80(v44, v45);
  sub_22E709E24();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v47 = v28[32];
  if (EnumCaseMultiPayload == 1)
  {
    v48 = *v47;
    if (qword_27DA6C450 != -1)
    {
      sub_22E70976C(&qword_27DA6C450);
    }

    v49 = type metadata accessor for Logger();
    sub_22E709E64(v49, qword_27DA6D0F0);

    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = sub_22E709FA8();
      v53 = sub_22E70A098();
      *v52 = 138412290;
      v54 = sub_22E6F57E8();
      sub_22E709EB4(&type metadata for SimultaneousTransferError, v54);
      *v55 = v48;

      v56 = _swift_stdlib_bridgeErrorToNSError();
      *(v52 + 4) = v56;
      *v53 = v56;
      _os_log_impl(&dword_22E6C9000, v50, v51, "requests failed due to server blocking %@", v52, 0xCu);
      sub_22E70798C(v53, &qword_27DA6CA08, &qword_22E727840);
      sub_22E6E3CC8();
      sub_22E709A54();
    }

    v57 = sub_22E6F57E8();
    v58 = sub_22E709EB4(&type metadata for SimultaneousTransferError, v57);
    *v59 = v48;
    v28[3] = v58;
    sub_22E6CF1CC(&qword_27DA6D1F0, &qword_22E729D40);
    AsyncThrowingStream.Continuation.finish(throwing:)();
    goto LABEL_21;
  }

  v60 = v28[29];
  v61 = v28[25];
  v62 = (v47 + *(sub_22E6CF1CC(&qword_27DA6D218, &qword_22E72B1F0) + 48));
  v63 = *v62;
  v64 = v62[1];
  sub_22E6F3AB0();
  sub_22E70A49C();
  sub_22E707944(v65, v66, v67, v68);
  sub_22E6D9164();
  sub_22E70A49C();
  sub_22E708A38(v69, v70, v71, v72);
  if (sub_22E6CF550(v60, 1, v61) == 1)
  {

    if (qword_27DA6C450 != -1)
    {
      sub_22E70976C(&qword_27DA6C450);
    }

    v73 = type metadata accessor for Logger();
    sub_22E6E3578(v73, qword_27DA6D0F0);
    sub_22E709E30();

    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = sub_22E709FA8();
      v77 = sub_22E709F3C();
      a16 = v77;
      *v76 = 136315138;
      v78 = sub_22E6F3808();
      v79 = MEMORY[0x2318EC680](v78);
      v81 = sub_22E706BF8(v79, v80, &a16);

      *(v76 + 4) = v81;
      sub_22E70997C();
      _os_log_impl(v82, v83, v84, v85, v86, 0xCu);
      sub_22E6CF2F4(v77);
      sub_22E6E3CE4();
      sub_22E709A54();
    }

    v87 = v28[30];
    v88 = v28[10];
    v89 = sub_22E6D0784();
    *v88 = sub_22E709EB4(&type metadata for AssetManager.AssetError, v89);
    swift_storeEnumTagMultiPayload();
    sub_22E6CF1CC(&qword_27DA6D1F0, &qword_22E729D40);
    sub_22E70A1F4();
    AsyncThrowingStream.Continuation.yield(_:)();
    v90 = sub_22E709D48();
    v91(v90);
    v92 = v87;
    goto LABEL_20;
  }

  sub_22E709888();
  sub_22E708A80(v101, v102);
  if (qword_27DA6C450 != -1)
  {
    sub_22E70976C(&qword_27DA6C450);
  }

  v217 = type metadata accessor for Logger();
  sub_22E6E3578(v217, qword_27DA6D0F0);
  sub_22E7098A0();
  v103 = sub_22E6F3AB0();
  sub_22E7079E0(v103, v104);
  v105 = Logger.logObject.getter();
  v106 = static os_log_type_t.default.getter();
  v220 = v63;
  if (os_log_type_enabled(v105, v106))
  {
    v213 = v106;
    v107 = v28[24];
    v108 = v28[23];
    v210 = v28[22];
    v223 = v64;
    v109 = sub_22E709F90();
    a16 = swift_slowAlloc();
    *v109 = 136315394;
    sub_22E709BD8();
    sub_22E7096D0(v110, v111, MEMORY[0x277CC9290]);
    v112 = dispatch thunk of CustomStringConvertible.description.getter();
    sub_22E709754();
    sub_22E708D18();
    v113 = sub_22E6E3EEC();
    sub_22E706BF8(v113, v114, v115);
    sub_22E709E30();

    *(v109 + 4) = v112;
    *(v109 + 12) = 2080;
    static Task<>.currentPriority.getter();
    sub_22E7097DC();
    sub_22E7096D0(v116, v117, MEMORY[0x277D85730]);
    v118 = dispatch thunk of CustomStringConvertible.description.getter();
    (*(v108 + 8))(v107, v210);
    v119 = sub_22E6E3EEC();
    sub_22E706BF8(v119, v120, v121);
    sub_22E709E30();

    *(v109 + 14) = v118;
    _os_log_impl(&dword_22E6C9000, v105, v213, "successfully downloaded asset at %s with priority %s", v109, 0x16u);
    swift_arrayDestroy();
    sub_22E6E3CE4();
    v64 = v223;
    sub_22E6E3CE4();
  }

  else
  {

    sub_22E709754();
    sub_22E708D18();
  }

  if (!*(v28[6] + 16) || (sub_22E714B78(v28[28]), (v122 & 1) == 0))
  {
    v150 = v28[10];

    v151 = sub_22E6D0784();
    *v150 = sub_22E709EB4(&type metadata for AssetManager.AssetError, v151);
    sub_22E6F3808();
    swift_storeEnumTagMultiPayload();
    v152 = sub_22E6CF1CC(&qword_27DA6D1F0, &qword_22E729D40);
    sub_22E70A2CC(v152);
    v153 = sub_22E709B30();
    v154(v153);
    v155 = Logger.logObject.getter();
    v156 = static os_log_type_t.error.getter();
    v157 = os_log_type_enabled(v155, v156);
    v158 = v28[35];
    v159 = v28[30];
    if (v157)
    {
      v160 = sub_22E70A64C();
      *v160 = 0;
      _os_log_impl(&dword_22E6C9000, v155, v156, "invalid request id", v160, 2u);
      sub_22E6E3CC8();
    }

    sub_22E709754();
    sub_22E708D18();
    sub_22E70798C(v159, &qword_27DA6D200, &qword_22E72A550);
    v32 = (v158 + 8);
    goto LABEL_4;
  }

  v224 = v64;
  v123 = v28[26];
  v125 = v28[20];
  v124 = v28[21];
  v126 = v28[18];
  v211 = v28[28];
  v214 = v28[19];
  v128 = v28[16];
  v127 = v28[17];
  v129 = v28[14];
  sub_22E7097C4();
  sub_22E7079E0(v130, v128);
  v228 = v28;
  v131 = *(v126 + 16);
  v131(v125, v128 + *(v129 + 36), v127);
  sub_22E708D18();
  v132 = sub_22E709D48();
  v133(v132);
  sub_22E7098A0();
  sub_22E7079E0(v211, v123);
  v131(v214, v124, v127);
  v134 = v28;
  v135 = Logger.logObject.getter();
  v136 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v135, v136))
  {
    v137 = sub_22E709F90();
    a16 = swift_slowAlloc();
    *v137 = 136315394;
    sub_22E709BD8();
    sub_22E7096D0(v138, v139, MEMORY[0x277CC9290]);
    v140 = dispatch thunk of CustomStringConvertible.description.getter();
    v142 = v141;
    sub_22E709754();
    sub_22E708D18();
    v143 = sub_22E706BF8(v140, v142, &a16);

    *(v137 + 4) = v143;
    *(v137 + 12) = 2080;
    dispatch thunk of CustomStringConvertible.description.getter();
    v144 = sub_22E6F3808();
    v215 = v145;
    v145(v144);
    v146 = sub_22E6F3AB0();
    v149 = sub_22E706BF8(v146, v147, v148);

    *(v137 + 14) = v149;
    _os_log_impl(&dword_22E6C9000, v135, v136, "moving file from %s to %s", v137, 0x16u);
    swift_arrayDestroy();
    v134 = v28;
    sub_22E6E3CE4();
    sub_22E6E3CE4();
  }

  else
  {

    v161 = sub_22E6E3EEC();
    v215 = v162;
    v162(v161);
    sub_22E709754();
    sub_22E708D18();
  }

  String.utf8CString.getter();
  v163 = sandbox_extension_consume();

  if (v163 < 0)
  {

    v178 = Logger.logObject.getter();
    v179 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v178, v179))
    {
      v180 = sub_22E709FA8();
      v181 = sub_22E709F3C();
      a16 = v181;
      *v180 = 136315138;
      v182 = sub_22E706BF8(v220, v224, &a16);

      *(v180 + 4) = v182;
      sub_22E70997C();
      _os_log_impl(v183, v184, v185, v186, v187, 0xCu);
      sub_22E6CF2F4(v181);
      sub_22E7099AC();
      sub_22E709A54();
    }

    else
    {
    }

    v195 = v134[30];
    v196 = sub_22E6D0784();
    v193 = sub_22E709EB4(&type metadata for AssetManager.AssetError, v196);
    swift_willThrow();
    v197 = sub_22E6D3824();
    v215(v197);
    sub_22E709754();
    sub_22E708D18();
    sub_22E70798C(v195, &qword_27DA6D200, &qword_22E72A550);
    v198 = sub_22E6F3AB0();
    v199(v198);
  }

  else
  {
    v164 = v134[25];

    v165 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(*(v164 + 24));
    v167 = v166;
    URL._bridgeToObjectiveC()(v168);
    v170 = v169;
    v134[4] = 0;
    v171 = [v165 moveItemAtURL:v167 toURL:v169 error:v134 + 4];

    v172 = v134[4];
    if (v171)
    {
      v173 = v134[28];
      v221 = v134[21];
      v225 = v134[30];
      v218 = v134[17];
      v174 = v228[10];
      sub_22E7098A0();
      sub_22E7079E0(v173, v174);
      swift_storeEnumTagMultiPayload();
      v175 = v172;
      sub_22E6CF1CC(&qword_27DA6D1F0, &qword_22E729D40);
      v28 = v228;
      AsyncThrowingStream.Continuation.yield(_:)();
      v176 = sub_22E6D3824();
      v177(v176);
      sandbox_extension_release();
      (v215)(v221, v218);
      sub_22E709754();
      sub_22E708D18();
      v92 = v225;
LABEL_20:
      sub_22E70798C(v92, &qword_27DA6D200, &qword_22E72A550);
LABEL_21:
      swift_task_alloc();
      sub_22E6ECB74();
      v28[37] = v93;
      *v93 = v94;
      sub_22E709AE0(v93);
      sub_22E7097F4();
      sub_22E709A8C();

      return MEMORY[0x2822005A8](v95, v96, v97, v98, v99);
    }

    v226 = v134[36];
    v188 = v134;
    v189 = v134[35];
    v190 = v188[34];
    v191 = v188[30];
    v192 = v172;
    v193 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v194 = sub_22E6D3824();
    v215(v194);
    sub_22E709754();
    sub_22E708D18();
    sub_22E70798C(v191, &qword_27DA6D200, &qword_22E72A550);
    (*(v189 + 8))(v226, v190);
  }

  if (qword_27DA6C450 != -1)
  {
    sub_22E70976C(&qword_27DA6C450);
  }

  sub_22E709E64(v217, qword_27DA6D0F0);
  v200 = v193;
  v201 = Logger.logObject.getter();
  v202 = static os_log_type_t.error.getter();

  v28 = v228;
  if (os_log_type_enabled(v201, v202))
  {
    v203 = sub_22E709FA8();
    v204 = sub_22E70A098();
    *v203 = 138412290;
    v205 = v193;
    v206 = _swift_stdlib_bridgeErrorToNSError();
    *(v203 + 4) = v206;
    *v204 = v206;
    _os_log_impl(&dword_22E6C9000, v201, v202, "failed to process requests due to error %@", v203, 0xCu);
    sub_22E70798C(v204, &qword_27DA6CA08, &qword_22E727840);
    sub_22E709A54();
    sub_22E6E3B00();
  }

  v33 = v228 + 13;
  v207 = v228[10];

  v208 = sub_22E6D0784();
  *v207 = sub_22E709EB4(&type metadata for AssetManager.AssetError, v208);
  sub_22E709B30();
  swift_storeEnumTagMultiPayload();
  sub_22E6CF1CC(&qword_27DA6D1F0, &qword_22E729D40);
  AsyncThrowingStream.Continuation.yield(_:)();

  v34 = v228 + 11;
  v32 = (v228[12] + 8);
LABEL_5:
  v209 = v28[21];
  v212 = v28[20];
  v216 = v28[19];
  v219 = v28[16];
  v222 = v28[13];
  v227 = v28[10];
  (*v32)(*v33, *v34);

  sub_22E6E3AD8();
  sub_22E709A8C();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, v209, v212, v216, v219, v222, v227, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_22E6FF8A0()
{
  (*(v0[35] + 8))(v0[36], v0[34]);
  v2 = v0[2];
  if (qword_27DA6C450 != -1)
  {
    sub_22E70976C(&qword_27DA6C450);
  }

  v3 = type metadata accessor for Logger();
  sub_22E709E64(v3, qword_27DA6D0F0);
  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    sub_22E709FA8();
    v7 = sub_22E709E98();
    *v1 = 138412290;
    v8 = v2;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_22E6C9000, v5, v6, "failed to process requests due to error %@", v1, 0xCu);
    sub_22E70798C(v7, &qword_27DA6CA08, &qword_22E727840);
    sub_22E6E3CC8();
    sub_22E7099AC();
  }

  v10 = v0[10];

  v11 = sub_22E6D0784();
  *v10 = sub_22E709EB4(&type metadata for AssetManager.AssetError, v11);
  sub_22E709EF8();
  swift_storeEnumTagMultiPayload();
  sub_22E6CF1CC(&qword_27DA6D1F0, &qword_22E729D40);
  sub_22E70A1F4();
  AsyncThrowingStream.Continuation.yield(_:)();

  (*(v0[12] + 8))(v0[13], v0[11]);

  sub_22E6E3AD8();

  return v12();
}

void sub_22E6FFB58()
{
  sub_22E6EB570();
  v38 = v0;
  v39 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v37 = v8;
  v9 = sub_22E6CF1CC(&qword_27DA6D1B0, &qword_22E729CE0);
  sub_22E6CF988();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v36 - v13;
  v36 = &v36 - v13;
  v15 = sub_22E6CF1CC(v5, v3);
  sub_22E6CF988();
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v20);
  v22 = &v36 - v21;
  v23 = sub_22E6CF1CC(&qword_27DA6C9A8, &qword_22E72C030);
  v24 = sub_22E6D376C(v23);
  MEMORY[0x28223BE20](v24);
  v26 = &v36 - v25;
  type metadata accessor for TaskPriority();
  sub_22E6E3D34();
  sub_22E6CF58C(v27, v28, v29, v30);
  (*(v17 + 16))(v22, v7, v15);
  v31 = v14;
  v32 = v9;
  (*(v11 + 16))(v31, v37, v9);
  v33 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v34 = (v19 + *(v11 + 80) + v33) & ~*(v11 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  (*(v17 + 32))(v35 + v33, v22, v15);
  (*(v11 + 32))(v35 + v34, v36, v32);
  sub_22E6E1B80(0, 0, v26, v39, v35);

  sub_22E6EB538();
}

uint64_t sub_22E6FFDBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[6] = type metadata accessor for AssetDownloadResponse(0);
  v5[7] = swift_task_alloc();
  v5[8] = sub_22E6CF1CC(&qword_27DA6D118, &qword_22E729B10);
  v5[9] = swift_task_alloc();
  v5[10] = sub_22E6CF1CC(&qword_27DA6C7C8, &unk_22E727340);
  v5[11] = swift_task_alloc();
  v6 = sub_22E6CF1CC(&qword_27DA6D1B8, &qword_22E729CF8);
  v5[12] = v6;
  v5[13] = *(v6 - 8);
  v5[14] = swift_task_alloc();
  sub_22E6CF1CC(&qword_27DA6D120, &qword_22E729B18);
  v5[15] = swift_task_alloc();
  v7 = sub_22E6CF1CC(&qword_27DA6D128, &qword_22E729B20);
  v5[16] = v7;
  v5[17] = *(v7 - 8);
  v5[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22E6FFFD0, 0, 0);
}

uint64_t sub_22E6FFFD0()
{
  sub_22E6E3BDC();
  v1 = sub_22E6CF1CC(&qword_27DA6D130, &qword_22E729B28);
  MEMORY[0x2318EC7E0](v1);
  swift_task_alloc();
  sub_22E6ECB74();
  *(v0 + 152) = v2;
  *v2 = v3;
  v2[1] = sub_22E700088;
  sub_22E7097F4();

  return MEMORY[0x2822005A8](v4, v5, v6, v7, v8);
}

uint64_t sub_22E700088()
{
  sub_22E6E3BDC();
  sub_22E6E3E08();
  v1 = *v0;
  sub_22E6E3C94();
  *v2 = v1;

  sub_22E6ECBB8();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_22E700184()
{
  sub_22E6E3F34();
  sub_22E709940();
  if (v1)
  {
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
    sub_22E70A394();

    sub_22E6E3AD8();

    return v2();
  }

  else
  {
    v4 = sub_22E709B30();
    sub_22E707944(v4, v5, v6, v7);
    sub_22E709E24();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v9 = *(v0 + 88);
    if (EnumCaseMultiPayload == 1)
    {
      *v9 = **(v0 + 72);
    }

    else
    {
      v10 = *(v0 + 56);
      sub_22E709888();
      sub_22E708A80(v11, v10);
      sub_22E7097AC();
      sub_22E7079E0(v10 + v12, v9);
      sub_22E709754();
      sub_22E708D18();
    }

    sub_22E6F3AB0();
    swift_storeEnumTagMultiPayload();
    sub_22E6CF1CC(&qword_27DA6D1B0, &qword_22E729CE0);
    AsyncThrowingStream.Continuation.yield(_:)();
    v13 = sub_22E709B30();
    v14(v13);
    swift_task_alloc();
    sub_22E6ECB74();
    *(v0 + 152) = v15;
    *v15 = v16;
    v15[1] = sub_22E700088;
    sub_22E7097F4();

    return MEMORY[0x2822005A8](v17, v18, v19, v20, v21);
  }
}

uint64_t sub_22E70037C()
{
  sub_22E6E3F34();
  (*(v0[17] + 8))(v0[18], v0[16]);
  v0[3] = v0[2];
  sub_22E6CF1CC(&qword_27DA6D1B0, &qword_22E729CE0);
  AsyncThrowingStream.Continuation.finish(throwing:)();
  sub_22E70A394();

  sub_22E6E3AD8();

  return v1();
}

uint64_t AssetManager.process(request:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  v3 = sub_22E6E3C64();
  return MEMORY[0x2822009F8](v3, v4, v5);
}

{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  v3 = sub_22E6E3C64();
  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_22E700478()
{
  sub_22E6E3D08();
  sub_22E6CF1CC(&qword_27DA6D140, &qword_22E729B48);
  v1 = sub_22E6D3848();
  v2 = type metadata accessor for AssetUploadRequest(v1);
  sub_22E6E3A38(v2);
  v3 = sub_22E709900();
  *(v0 + 32) = v3;
  sub_22E709B78(v3, xmmword_22E726B10);
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  *v4 = v0;
  sub_22E70A44C(v4);

  return AssetManager.process(requests:)();
}

uint64_t sub_22E700574()
{
  sub_22E6E3D08();
  v3 = v2;
  sub_22E6E3E08();
  v5 = v4;
  sub_22E6ECB14();
  *v6 = v5;
  v7 = *v1;
  sub_22E6E3C94();
  *v8 = v7;
  *(v5 + 48) = v0;

  if (!v0)
  {

    *(v5 + 56) = v3;
  }

  sub_22E6ECBB8();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22E70068C()
{
  sub_22E6E3BDC();
  v1 = *(v0 + 56);
  type metadata accessor for AssetUploadCoordinator();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v2 + 112) = v1;
  v3 = sub_22E709CF4();

  return v4(v3);
}

uint64_t sub_22E700700()
{
  sub_22E6E3BDC();

  sub_22E6E3AD8();

  return v0();
}

uint64_t sub_22E700B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  sub_22E709D1C();
  a21 = v23;
  a22 = v24;
  sub_22E709ECC();
  a20 = v22;
  if (qword_27DA6C450 != -1)
  {
    sub_22E70976C(&qword_27DA6C450);
  }

  v25 = v22[3];
  v26 = type metadata accessor for Logger();
  v22[35] = sub_22E709E64(v26, qword_27DA6D0F0);

  v27 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_22E70A604();
  if (sub_22E70A290())
  {
    v28 = v22[34];
    sub_22E709F90();
    sub_22E70A060();
    sub_22E70A284();
    v29 = sub_22E70A278(4.8151e-34);
    type metadata accessor for AssetUploadRequest(v29);
    v30 = sub_22E709F04();
    v31 = MEMORY[0x2318EC680](v30);
    sub_22E706BF8(v31, v32, &a11);
    v33 = sub_22E70A3B8();
    sub_22E709C2C(v33);
    sub_22E7097DC();
    sub_22E7096D0(v34, v35, MEMORY[0x277D85730]);
    sub_22E709DE8();
    dispatch thunk of CustomStringConvertible.description.getter();
    v36 = sub_22E709964();
    v37(v36);
    v38 = sub_22E6D3824();
    sub_22E706BF8(v38, v39, v40);
    sub_22E70A0B0();
    *(v25 + 14) = v28;
    sub_22E70999C();
    _os_log_impl(v41, v42, v43, v44, v45, 0x16u);
    sub_22E70A07C();
    sub_22E6E3CC8();
    sub_22E7099AC();
  }

  sub_22E70A0C8(v22[4]);
  sub_22E709F54();
  sub_22E6ECB74();
  v22[36] = v46;
  *v46 = v47;
  v46[1] = sub_22E700CF4;
  sub_22E709F30();
  sub_22E709BF0();

  return v51(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_22E700CF4()
{
  sub_22E6E3BDC();
  sub_22E6E3E08();
  sub_22E6ECB14();
  *v3 = v2;
  v4 = *v1;
  sub_22E6E3C94();
  *v5 = v4;
  *(v6 + 296) = v0;

  sub_22E6ECBB8();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22E700DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_22E709F74();
  sub_22E70A224();
  v17 = *(v16 + 192);
  v18 = *(v16 + 160);
  v19 = *(v16 + 168);
  v20 = *(v16 + 152);
  v41 = *(v16 + 120);
  v42 = *(v16 + 144);
  v22 = *(v16 + 88);
  v21 = *(v16 + 96);
  v23 = *(v16 + 80);
  v44 = *(v16 + 40);
  v45 = *(v16 + 248);
  v43 = *(v16 + 24);
  v24 = *MEMORY[0x277D858A0];
  *(v16 + 328) = v24;
  (*(v18 + 104))(v19, v24, v20);
  static AsyncThrowingStream.makeStream<>(of:throwing:bufferingPolicy:)();
  v25 = sub_22E709FE8();
  v26(v25);
  sub_22E6CF1CC(&qword_27DA6D190, &qword_22E729E30);
  (*(v22 + 104))(v21, v24, v23);
  static AsyncThrowingStream.makeStream<>(of:throwing:bufferingPolicy:)();
  v27 = sub_22E709D48();
  v28(v27);
  v29 = swift_task_alloc();
  *(v16 + 304) = v29;
  v29[2] = v45;
  v29[3] = v41;
  v29[4] = v17;
  v29[5] = v43;
  v29[6] = v44;
  v30 = swift_task_alloc();
  *(v16 + 312) = v30;
  sub_22E6CF1CC(&qword_27DA6D198, &qword_22E729BC8);
  *v30 = v16;
  v30[1] = sub_22E700FF4;
  sub_22E6ECBB8();
  sub_22E6E3F68();

  return MEMORY[0x2822008A0](v31, v32, v33, v34, v35, v36, v37, v38, v41, v42, v43, v44, v45, a14, a15, a16);
}

uint64_t sub_22E700FF4()
{
  sub_22E6E3BDC();
  sub_22E6E3E08();
  sub_22E6ECB14();
  *v3 = v2;
  v4 = *v1;
  sub_22E6E3C94();
  *v5 = v4;
  *(v6 + 320) = v0;

  sub_22E6ECBB8();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22E70110C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_22E709D1C();
  sub_22E709ECC();
  sub_22E709D8C();

  sub_22E6E3AD8();
  sub_22E709BF0();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_22E7011C0()
{
  v41 = v0;
  v2 = *(v0 + 16);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    sub_22E709FA8();
    v40 = sub_22E709E7C();
    v5 = sub_22E70A278(4.8149e-34);
    v6 = type metadata accessor for AssetSkeleton(v5);
    v7 = MEMORY[0x2318EC680](v2, v6);
    v9 = sub_22E706BF8(v7, v8, &v40);

    *(v1 + 4) = v9;
    sub_22E70A01C();
    _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
    sub_22E7098CC();
    sub_22E7099AC();
  }

  v26 = *(v0 + 328);
  v39 = *(v0 + 248);
  v37 = *(v0 + 240);
  v38 = *(v0 + 232);
  v15 = *(v0 + 208);
  v27 = *(v0 + 216);
  v28 = *(v0 + 224);
  v29 = *(v0 + 200);
  v34 = *(v0 + 184);
  v35 = *(v0 + 176);
  v36 = *(v0 + 192);
  v17 = *(v0 + 136);
  v16 = *(v0 + 144);
  v33 = *(v0 + 120);
  v18 = *(v0 + 112);
  v31 = *(v0 + 128);
  v32 = *(v0 + 104);
  v19 = *(v0 + 64);
  v20 = *(v0 + 72);
  v22 = *(v0 + 48);
  v21 = *(v0 + 56);
  (*(v15 + 16))();
  *(swift_task_alloc() + 16) = v16;
  sub_22E6CF1CC(&qword_27DA6C7C8, &unk_22E727340);
  (*(v21 + 104))(v19, v26, v22);
  AsyncThrowingStream.init<>(_:bufferingPolicy:_:)();

  v23 = type metadata accessor for AssetsUploadCoordinator(0);
  sub_22E70A61C(v23);
  v30 = sub_22E6D5218(v2, v27, v20);
  (*(v15 + 8))(v28, v29);
  (*(v17 + 8))(v16, v31);
  (*(v18 + 8))(v33, v32);
  (*(v34 + 8))(v36, v35);
  (*(v37 + 8))(v39, v38);

  v24 = *(v0 + 8);

  return v24(v30);
}

uint64_t sub_22E7014F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_22E709D1C();
  sub_22E709ECC();
  v15 = v14[30];
  v32 = v14[29];
  v33 = v14[31];
  v16 = v14[23];
  v31 = v14[24];
  v17 = v14[22];
  (*(v14[26] + 8))(v14[28], v14[25]);
  v18 = sub_22E6D3888();
  v19(v18);
  v20 = sub_22E6D3824();
  v21(v20);
  (*(v16 + 8))(v31, v17);
  (*(v15 + 8))(v33, v32);
  sub_22E709D8C();

  sub_22E6E3AD8();
  sub_22E709BF0();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, v31, v32, v33, a12, a13, a14);
}

uint64_t sub_22E701658()
{
  sub_22E6E3D08();
  v2 = v1[2];
  sub_22E6CF1CC(&qword_27DA6D138, &qword_22E729B30);
  v3 = sub_22E6D3848();
  v4 = type metadata accessor for AssetDownloadRequest(v3);
  sub_22E6E3A38(v4);
  v5 = sub_22E709900();
  v1[4] = v5;
  *(v5 + 16) = xmmword_22E726B10;
  sub_22E7097C4();
  sub_22E7079E0(v2, v6 + v0);
  v7 = swift_task_alloc();
  v1[5] = v7;
  *v7 = v1;
  sub_22E70A44C(v7);

  return AssetManager.process(requests:)();
}

uint64_t sub_22E701764()
{
  sub_22E6E3D08();
  v3 = v2;
  sub_22E6E3E08();
  v5 = v4;
  sub_22E6ECB14();
  *v6 = v5;
  v7 = *v1;
  sub_22E6E3C94();
  *v8 = v7;
  *(v5 + 48) = v0;

  if (!v0)
  {

    *(v5 + 56) = v3;
  }

  sub_22E6ECBB8();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22E70187C()
{
  sub_22E6E3BDC();
  v1 = *(v0 + 56);
  type metadata accessor for AssetDownloadCoordinator();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v2 + 112) = v1;
  v3 = sub_22E709CF4();

  return v4(v3);
}

uint64_t sub_22E701A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  sub_22E709A70();
  a19 = v21;
  a20 = v22;
  sub_22E709B3C();
  a18 = v20;
  if (qword_27DA6C450 != -1)
  {
    sub_22E70976C(&qword_27DA6C450);
  }

  v23 = v20[2];
  v24 = type metadata accessor for Logger();
  sub_22E709E64(v24, qword_27DA6D0F0);

  v25 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_22E70A604();
  if (sub_22E70A290())
  {
    v26 = v20[12];
    sub_22E709F90();
    a9 = sub_22E70A060();
    v27 = sub_22E70A278(4.8151e-34);
    type metadata accessor for AssetDownloadRequest(v27);
    v28 = sub_22E709F04();
    v29 = MEMORY[0x2318EC680](v28);
    sub_22E706BF8(v29, v30, &a9);
    v31 = sub_22E70A3B8();
    sub_22E709C2C(v31);
    sub_22E7097DC();
    sub_22E7096D0(v32, v33, MEMORY[0x277D85730]);
    sub_22E709DE8();
    dispatch thunk of CustomStringConvertible.description.getter();
    v34 = sub_22E709964();
    v35(v34);
    v36 = sub_22E6D3824();
    sub_22E706BF8(v36, v37, v38);
    sub_22E70A0B0();
    *(v23 + 14) = v26;
    sub_22E70999C();
    _os_log_impl(v39, v40, v41, v42, v43, 0x16u);
    sub_22E70A07C();
    sub_22E6E3CC8();
    sub_22E7099AC();
  }

  swift_task_alloc();
  sub_22E6ECB74();
  v20[13] = v44;
  *v44 = v45;
  v44[1] = sub_22E701C10;
  sub_22E709A28();

  return AssetManager.process(requests:)();
}

uint64_t sub_22E701C10()
{
  sub_22E6E3BDC();
  sub_22E6E3E08();
  sub_22E6ECB14();
  *v3 = v2;
  v4 = *v1;
  sub_22E6E3C94();
  *v5 = v4;
  *(v6 + 112) = v0;

  sub_22E6ECBB8();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22E701D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22E709A70();
  sub_22E709B3C();
  v13 = v12[9];
  v14 = v12[10];
  v15 = v12[7];
  v16 = v12[6];
  v17 = v12[4];
  v18 = sub_22E709D48();
  v19(v18);
  v20 = type metadata accessor for AssetsDownloadCoordinator(0);
  sub_22E70A61C(v20);
  v21 = sub_22E709E30();
  v22 = sub_22E6D9454(v21);
  sub_22E6E3D34();
  sub_22E6CF58C(v23, v24, v25, v14);
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v26[4] = v22;
  v26[5] = v17;

  sub_22E709D08();
  sub_22E6FA5FC();

  (*(v15 + 8))(v13, v16);

  sub_22E709CF4();
  sub_22E709A28();

  return v29(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
}

uint64_t sub_22E701E48()
{
  sub_22E6E3D08();

  sub_22E6E3AD8();

  return v0();
}

uint64_t sub_22E701ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v43 = a5;
  v44 = a6;
  v39 = a3;
  v40 = a4;
  v38 = a2;
  v41 = a1;
  v49 = sub_22E6CF1CC(&qword_27DA6D1D0, &qword_22E729D10);
  v47 = *(v49 - 8);
  v42 = *(v47 + 64);
  MEMORY[0x28223BE20](v49);
  v48 = &v32 - v6;
  v46 = sub_22E6CF1CC(&qword_27DA6C890, &qword_22E7272B0);
  v7 = *(v46 - 8);
  v37 = *(v7 + 64);
  MEMORY[0x28223BE20](v46);
  v45 = &v32 - v8;
  v9 = sub_22E6CF1CC(&qword_27DA6D180, &qword_22E729BB8);
  v34 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v32 - v12;
  v35 = &v32 - v12;
  v14 = sub_22E6CF1CC(&qword_27DA6D150, &qword_22E729B60);
  v33 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v32 - v17;
  v19 = sub_22E6CF1CC(&qword_27DA6C9A8, &qword_22E72C030);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v32 - v20;
  v36 = &v32 - v20;
  v22 = type metadata accessor for TaskPriority();
  sub_22E6CF58C(v21, 1, 1, v22);
  (*(v15 + 16))(v18, v38, v14);
  (*(v10 + 16))(v13, v39, v9);
  v32 = v7;
  (*(v7 + 16))(v45, v40, v46);
  v23 = v47;
  (*(v47 + 16))(v48, v41, v49);
  v24 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v25 = (v16 + *(v10 + 80) + v24) & ~*(v10 + 80);
  v26 = (v11 + *(v7 + 80) + v25) & ~*(v7 + 80);
  v27 = (v37 + *(v23 + 80) + v26) & ~*(v23 + 80);
  v28 = (v42 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  (*(v15 + 32))(v29 + v24, v18, v33);
  (*(v10 + 32))(v29 + v25, v35, v34);
  (*(v32 + 32))(v29 + v26, v45, v46);
  (*(v47 + 32))(v29 + v27, v48, v49);
  v30 = v44;
  *(v29 + v28) = v43;
  *(v29 + ((v28 + 15) & 0xFFFFFFFFFFFFFFF8)) = v30;

  sub_22E6E1B80(0, 0, v36, &unk_22E729D20, v29);
}

uint64_t sub_22E702358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[16] = a7;
  v8[17] = a8;
  v8[14] = a5;
  v8[15] = a6;
  v8[13] = a4;
  v9 = sub_22E6CF1CC(&qword_27DA6C888, &qword_22E7272A8);
  v8[18] = v9;
  v8[19] = *(v9 - 8);
  v8[20] = swift_task_alloc();
  v10 = sub_22E6CF1CC(&qword_27DA6D1D8, &qword_22E729D28);
  v8[21] = v10;
  v8[22] = *(v10 - 8);
  v8[23] = swift_task_alloc();
  v8[24] = sub_22E6CF1CC(&qword_27DA6D190, &qword_22E729E30);
  v8[25] = swift_task_alloc();
  v8[26] = swift_task_alloc();
  v8[27] = swift_task_alloc();
  v8[28] = type metadata accessor for UploadResponseMessage(0);
  v8[29] = swift_task_alloc();
  sub_22E6CF1CC(&qword_27DA6D1E0, &qword_22E729D30);
  v8[30] = swift_task_alloc();
  v11 = sub_22E6CF1CC(&qword_27DA6D1E8, &qword_22E729D38);
  v8[31] = v11;
  v8[32] = *(v11 - 8);
  v8[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22E7025BC, 0, 0);
}

uint64_t sub_22E7025BC()
{
  sub_22E6E3BDC();
  v1 = sub_22E6CF1CC(&qword_27DA6D150, &qword_22E729B60);
  MEMORY[0x2318EC7E0](v1);
  *(v0 + 280) = 0;
  swift_task_alloc();
  sub_22E6ECB74();
  *(v0 + 272) = v2;
  *v2 = v3;
  v2[1] = sub_22E702678;
  sub_22E7097F4();

  return MEMORY[0x2822005A8](v4, v5, v6, v7, v8);
}

uint64_t sub_22E702678()
{
  sub_22E6E3BDC();
  sub_22E6E3E08();
  v1 = *v0;
  sub_22E6E3C94();
  *v2 = v1;

  sub_22E6ECBB8();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_22E702774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_22E709D1C();
  a21 = v23;
  a22 = v24;
  sub_22E709ECC();
  a20 = v22;
  v25 = *(v22 + 224);
  sub_22E709940();
  if (v26)
  {
    v27 = sub_22E70A474();
    v28(v27);
    if ((v25 & 1) == 0)
    {
      if (qword_27DA6C450 != -1)
      {
        sub_22E70976C(&qword_27DA6C450);
      }

      v29 = type metadata accessor for Logger();
      sub_22E6E3578(v29, qword_27DA6D0F0);
      sub_22E709E30();

      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = sub_22E709FA8();
        sub_22E709F3C();
        sub_22E70A284();
        *v32 = 136315138;
        type metadata accessor for AssetUploadRequest(0);
        v33 = sub_22E70A418();
        v34 = MEMORY[0x2318EC680](v33);
        v36 = sub_22E706BF8(v34, v35, &a11);

        *(v32 + 4) = v36;
        sub_22E70997C();
        _os_log_impl(v37, v38, v39, v40, v41, 0xCu);
        sub_22E7098CC();
        sub_22E709A54();
      }

      v42 = sub_22E6D0784();
      *(v22 + 48) = sub_22E709EB4(&type metadata for AssetManager.AssetError, v42);
      sub_22E6CF1CC(&qword_27DA6D1D0, &qword_22E729D10);
      CheckedContinuation.resume(throwing:)();
    }

    *(v22 + 56) = 0;
    sub_22E6CF1CC(&qword_27DA6C890, &qword_22E7272B0);
    sub_22E70A40C();
    AsyncThrowingStream.Continuation.finish(throwing:)();
    *(v22 + 64) = 0;
    sub_22E6CF1CC(&qword_27DA6D180, &qword_22E729BB8);
    AsyncThrowingStream.Continuation.finish(throwing:)();
    sub_22E70A1A8();

    sub_22E6E3AD8();
    sub_22E709BF0();

    return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    sub_22E709BA8();
    v52 = sub_22E709B30();
    sub_22E708A80(v52, v53);
    sub_22E709E24();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v55 = *(v22 + 232);
    switch(EnumCaseMultiPayload)
    {
      case 1:
        v75 = *(v22 + 168);
        sub_22E70A49C();
        sub_22E707944(v76, v77, v78, v79);
        sub_22E70A49C();
        sub_22E708A38(v80, v81, v82, v83);
        sub_22E6CF1CC(&qword_27DA6D180, &qword_22E729BB8);
        sub_22E70A1F4();
        AsyncThrowingStream.Continuation.yield(_:)();
        v84 = sub_22E709D48();
        v85(v84);
        if (qword_27DA6C450 != -1)
        {
          sub_22E70976C(&qword_27DA6C450);
        }

        v86 = type metadata accessor for Logger();
        sub_22E6E3578(v86, qword_27DA6D0F0);
        v87 = sub_22E6F3AB0();
        sub_22E708A38(v87, v88, v89, v90);
        v91 = Logger.logObject.getter();
        static os_log_type_t.default.getter();
        sub_22E70A1E8();
        v93 = os_log_type_enabled(v91, v92);
        v94 = *(v22 + 216);
        if (v93)
        {
          v96 = *(v22 + 200);
          v95 = *(v22 + 208);
          sub_22E709FA8();
          v97 = sub_22E709E7C();
          a11 = v97;
          *v75 = 136315138;
          sub_22E708A38(v96, v95, &qword_27DA6D190, &qword_22E729E30);
          v98 = String.init<A>(describing:)();
          v100 = v99;
          sub_22E70798C(v96, &qword_27DA6D190, &qword_22E729E30);
          v101 = sub_22E706BF8(v98, v100, &a11);

          *(v75 + 4) = v101;
          sub_22E70999C();
          _os_log_impl(v102, v103, v104, v105, v106, 0xCu);
          sub_22E6CF2F4(v97);
          sub_22E6E3CE4();
          sub_22E7099AC();

          v107 = v94;
          v108 = &qword_27DA6D190;
        }

        else
        {
          v109 = *(v22 + 200);

          sub_22E70798C(v109, &qword_27DA6D190, &qword_22E729E30);
          v107 = sub_22E6F3AB0();
        }

        sub_22E70798C(v107, v108, &qword_22E729E30);
        break;
      case 2:
        v56 = *(v22 + 144);
        v57 = *v55;
        *(v22 + 88) = *v55;

        sub_22E6CF1CC(&qword_27DA6C890, &qword_22E7272B0);
        AsyncThrowingStream.Continuation.yield(_:)();
        v58 = sub_22E709D48();
        v59(v58);
        if (qword_27DA6C450 != -1)
        {
          sub_22E70976C(&qword_27DA6C450);
        }

        v60 = type metadata accessor for Logger();
        sub_22E709E64(v60, qword_27DA6D0F0);

        v61 = Logger.logObject.getter();
        v62 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v61, v62))
        {
          sub_22E709FA8();
          sub_22E709E7C();
          sub_22E70A284();
          *v56 = 136315138;
          *(v22 + 96) = v57;
          v63 = String.init<A>(describing:)();
          v65 = sub_22E706BF8(v63, v64, &a11);

          *(v56 + 4) = v65;
          sub_22E70A01C();
          _os_log_impl(v66, v67, v68, v69, v70, 0xCu);
          sub_22E7098CC();
          sub_22E7099AC();
        }

        else
        {
        }

        break;
      case 3:
        v71 = *v55;
        v72 = sub_22E6F57E8();
        v73 = sub_22E709EB4(&type metadata for SimultaneousTransferError, v72);
        *v74 = v71;
        *(v22 + 72) = v73;
        sub_22E6CF1CC(&qword_27DA6D180, &qword_22E729BB8);
        AsyncThrowingStream.Continuation.finish(throwing:)();
        break;
      default:
        *(v22 + 80) = *v55;
        sub_22E6CF1CC(&qword_27DA6D1D0, &qword_22E729D10);
        CheckedContinuation.resume(returning:)();
        *(v22 + 280) = 1;
        break;
    }

    swift_task_alloc();
    sub_22E6ECB74();
    *(v22 + 272) = v110;
    *v110 = v111;
    v110[1] = sub_22E702678;
    sub_22E7097F4();
    sub_22E709BF0();

    return MEMORY[0x2822005A8](v112, v113, v114, v115, v116);
  }
}

uint64_t sub_22E702DFC()
{
  sub_22E709B3C();
  v23 = v1;
  v3 = sub_22E70A474();
  v4(v3);
  v5 = v1[2];
  if ((v0 & 1) == 0)
  {
    if (qword_27DA6C450 != -1)
    {
      sub_22E70976C(&qword_27DA6C450);
    }

    v6 = type metadata accessor for Logger();
    sub_22E6E3578(v6, qword_27DA6D0F0);
    sub_22E709E30();

    v7 = v5;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = sub_22E709F90();
      v11 = sub_22E70A098();
      v22 = sub_22E709F3C();
      *v10 = 138412546;
      v12 = v5;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v13;
      *v11 = v13;
      *(v10 + 12) = 2080;
      type metadata accessor for AssetUploadRequest(0);
      v14 = sub_22E709F04();
      v15 = MEMORY[0x2318EC680](v14);
      sub_22E706BF8(v15, v16, &v22);
      sub_22E70A3B8();
      *(v10 + 14) = v2;
      _os_log_impl(&dword_22E6C9000, v8, v9, "ephemeral asset not received due to error %@ for request %s", v10, 0x16u);
      sub_22E70798C(v11, &qword_27DA6CA08, &qword_22E727840);
      sub_22E6E3CE4();
      sub_22E7098CC();
      sub_22E709A54();
    }

    v1[3] = v5;
    v17 = v5;
    sub_22E6CF1CC(&qword_27DA6D1D0, &qword_22E729D10);
    CheckedContinuation.resume(throwing:)();
  }

  v1[4] = v5;
  v18 = v5;
  v19 = v5;
  sub_22E6CF1CC(&qword_27DA6C890, &qword_22E7272B0);
  sub_22E70A418();
  AsyncThrowingStream.Continuation.finish(throwing:)();
  v1[5] = v5;
  sub_22E6CF1CC(&qword_27DA6D180, &qword_22E729BB8);
  AsyncThrowingStream.Continuation.finish(throwing:)();

  sub_22E70A1A8();

  sub_22E6E3AD8();

  return v20();
}

uint64_t sub_22E703094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = sub_22E6CF1CC(&qword_27DA6D1A8, &qword_22E729CD8);
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v6 = swift_task_alloc();
  v7 = OBJC_IVAR____TtC10CloudAsset25AssetsDownloadCoordinator__signals;
  v4[8] = v6;
  v4[9] = v7;

  return MEMORY[0x2822009F8](sub_22E703168, 0, 0);
}

uint64_t sub_22E703168()
{
  sub_22E6E3D08();
  v1 = sub_22E6CF1CC(&qword_27DA6C7B0, &unk_22E726D30);
  MEMORY[0x2318EC7E0](v1);
  swift_task_alloc();
  sub_22E6ECB74();
  *(v0 + 80) = v2;
  *v2 = v3;
  sub_22E709B08(v2);
  sub_22E6ECBB8();

  return MEMORY[0x2822005A8](v4, v5, v6, v7, v8);
}

uint64_t sub_22E703218()
{
  sub_22E6E3BDC();
  sub_22E6E3E08();
  v1 = *v0;
  sub_22E6E3C94();
  *v2 = v1;

  sub_22E6ECBB8();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_22E703314()
{
  v20 = v0;
  v1 = v0[2];
  if (v1)
  {
    if (qword_27DA6C450 != -1)
    {
      sub_22E70976C(&qword_27DA6C450);
    }

    v2 = type metadata accessor for Logger();
    sub_22E6E3578(v2, qword_27DA6D0F0);
    sub_22E709E30();

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = sub_22E709FA8();
      v6 = sub_22E709F3C();
      v19 = v6;
      *v5 = 136315138;
      v0[4] = v1;
      v7 = String.init<A>(describing:)();
      v9 = sub_22E706BF8(v7, v8, &v19);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_22E6C9000, v3, v4, "received signal %s", v5, 0xCu);
      sub_22E6CF2F4(v6);
      sub_22E6E3CE4();
      sub_22E6E3CC8();
    }

    else
    {
    }

    swift_task_alloc();
    sub_22E6ECB74();
    v0[10] = v12;
    *v12 = v13;
    sub_22E709B08(v12);
    sub_22E6ECBB8();

    return MEMORY[0x2822005A8](v14, v15, v16, v17, v18);
  }

  else
  {
    (*(v0[7] + 8))(v0[8], v0[6]);

    sub_22E709850();

    return v10();
  }
}

uint64_t sub_22E703518()
{
  sub_22E6E3BDC();
  (*(v0[7] + 8))(v0[8], v0[6]);

  sub_22E6E3AD8();

  return v1();
}

uint64_t AssetManager.__deallocating_deinit()
{
  sub_22E6CF2F4((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

void sub_22E7035E8()
{
  sub_22E6EB570();
  v30 = v1;
  v31 = v2;
  v4 = v3;
  v6 = v5;
  v7 = v0;
  v28 = v8;
  v29 = v9;
  v26 = type metadata accessor for UUID();
  v10 = *(v26 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v26);
  v27 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22E6CF1CC(v6, v4);
  sub_22E6CF988();
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v17);
  v19 = &v26 - v18;
  (*(v14 + 16))(&v26 - v18, v28, v12);
  v20 = sub_22E709A44();
  v21(v20);
  v22 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v23 = (v16 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (*(v10 + 80) + v23 + 8) & ~*(v10 + 80);
  v25 = swift_allocObject();
  (*(v14 + 32))(v25 + v22, v19, v12);
  *(v25 + v23) = v7;
  (*(v10 + 32))(v25 + v24, v27, v26);
  swift_beginAccess();

  swift_isUniquelyReferenced_nonNull_native();
  v32 = *(v7 + 112);
  sub_22E7152B0();
  *(v7 + 112) = v32;
  swift_endAccess();
  sub_22E6EB538();
}

uint64_t sub_22E703828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for DownloadResponseMessage(0);
  MEMORY[0x28223BE20](v6);
  v7 = sub_22E6CF1CC(&qword_27DA6D260, &qword_22E729DB0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v20 - v9;
  v11 = (a1 + *(type metadata accessor for XPCAsyncSequenceResponse(0) + 20));
  v12 = v11[1];
  if (v12 >> 60 == 11)
  {
    sub_22E708D90();
    v13 = swift_allocError();
    *v14 = 1;
    v21 = v13;
    goto LABEL_5;
  }

  if (v12 >> 60 == 15)
  {
    v21 = 0;
LABEL_5:
    sub_22E6CF1CC(&qword_27DA6D240, &qword_22E729D90);
    AsyncThrowingStream.Continuation.finish(throwing:)();
    swift_beginAccess();
    v15 = sub_22E715168(a4);
    v17 = v16;
    swift_endAccess();
    return sub_22E708DE4(v15, v17);
  }

  v20[1] = a4;
  v19 = *v11;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  sub_22E6CFB64(v19, v12);
  JSONDecoder.init()();
  sub_22E7096D0(&qword_27DA6D270, type metadata accessor for DownloadResponseMessage, &protocol conformance descriptor for DownloadResponseMessage);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  sub_22E6CF1CC(&qword_27DA6D240, &qword_22E729D90);
  AsyncThrowingStream.Continuation.yield(_:)();
  sub_22E708DF4(v19, v12);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_22E703B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for UploadResponseMessage(0);
  MEMORY[0x28223BE20](v6);
  v7 = sub_22E6CF1CC(&qword_27DA6D298, &qword_22E729E08);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v20 - v9;
  v11 = (a1 + *(type metadata accessor for XPCAsyncSequenceResponse(0) + 20));
  v12 = v11[1];
  if (v12 >> 60 == 11)
  {
    sub_22E708D90();
    v13 = swift_allocError();
    *v14 = 1;
    v21 = v13;
    goto LABEL_5;
  }

  if (v12 >> 60 == 15)
  {
    v21 = 0;
LABEL_5:
    sub_22E6CF1CC(&qword_27DA6D288, &qword_22E729DE8);
    AsyncThrowingStream.Continuation.finish(throwing:)();
    swift_beginAccess();
    v15 = sub_22E715168(a4);
    v17 = v16;
    swift_endAccess();
    return sub_22E708DE4(v15, v17);
  }

  v20[1] = a4;
  v19 = *v11;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  sub_22E6CFB64(v19, v12);
  JSONDecoder.init()();
  sub_22E7096D0(&qword_27DA6D2A0, type metadata accessor for UploadResponseMessage, &protocol conformance descriptor for UploadResponseMessage);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  sub_22E6CF1CC(&qword_27DA6D288, &qword_22E729DE8);
  AsyncThrowingStream.Continuation.yield(_:)();
  sub_22E708DF4(v19, v12);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_22E703EB8(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 120) = a3;
  *(v4 + 16) = a1;
  *(v4 + 40) = *v3;
  sub_22E6CF1CC(&qword_27DA6C9A8, &qword_22E72C030);
  *(v4 + 48) = swift_task_alloc();
  v5 = sub_22E6CF1CC(&qword_27DA6D238, &qword_22E729D88);
  *(v4 + 56) = v5;
  *(v4 + 64) = *(v5 - 8);
  *(v4 + 72) = swift_task_alloc();
  v6 = sub_22E6CF1CC(&qword_27DA6D240, &qword_22E729D90);
  *(v4 + 80) = v6;
  v7 = *(v6 - 8);
  *(v4 + 88) = v7;
  *(v4 + 96) = *(v7 + 64);
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 112) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22E704068, 0, 0);
}

uint64_t sub_22E704068()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 88);
  v21 = *(v0 + 104);
  v22 = *(v0 + 96);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  v6 = *(v0 + 56);
  v5 = *(v0 + 64);
  v25 = *(v0 + 40);
  v23 = *(v0 + 32);
  v24 = *(v0 + 24);
  v20 = *(v0 + 120);
  type metadata accessor for DownloadResponseMessage(0);
  (*(v5 + 104))(v4, *MEMORY[0x277D858A0], v6);
  static AsyncThrowingStream.makeStream<>(of:throwing:bufferingPolicy:)();
  v7 = sub_22E6D3824();
  v8(v7);
  type metadata accessor for TaskPriority();
  sub_22E6E3D34();
  sub_22E6CF58C(v9, v10, v11, v12);
  (*(v2 + 16))(v21, v1, v3);
  v13 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *(v14 + 4) = v23;
  (*(v2 + 32))(&v14[v13], v21, v3);
  v15 = &v14[(v13 + v22 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v15 = v24;
  v15[8] = v20 & 1;
  *&v14[(v13 + v22 + 23) & 0xFFFFFFFFFFFFFFF8] = v25;

  j__swift_bridgeObjectRetain(v24);
  sub_22E709D08();
  sub_22E6FA5FC();

  v16 = sub_22E709D48();
  v17(v16);

  sub_22E709850();

  return v18();
}

uint64_t sub_22E7042BC(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 120) = a3;
  *(v4 + 16) = a1;
  *(v4 + 40) = *v3;
  sub_22E6CF1CC(&qword_27DA6C9A8, &qword_22E72C030);
  *(v4 + 48) = swift_task_alloc();
  v5 = sub_22E6CF1CC(&qword_27DA6D280, &qword_22E729DE0);
  *(v4 + 56) = v5;
  *(v4 + 64) = *(v5 - 8);
  *(v4 + 72) = swift_task_alloc();
  v6 = sub_22E6CF1CC(&qword_27DA6D288, &qword_22E729DE8);
  *(v4 + 80) = v6;
  v7 = *(v6 - 8);
  *(v4 + 88) = v7;
  *(v4 + 96) = *(v7 + 64);
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 112) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22E70446C, 0, 0);
}

uint64_t sub_22E70446C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22E709E48();
  sub_22E709FC0();
  v21 = *(v20 + 112);
  v22 = *(v20 + 88);
  v43 = *(v20 + 104);
  v44 = *(v20 + 96);
  v23 = *(v20 + 72);
  v24 = *(v20 + 80);
  v26 = *(v20 + 56);
  v25 = *(v20 + 64);
  v48 = *(v20 + 40);
  v45 = *(v20 + 48);
  v46 = *(v20 + 32);
  HIDWORD(a9) = *(v20 + 120);
  v47 = *(v20 + 24);
  type metadata accessor for UploadResponseMessage(0);
  (*(v25 + 104))(v23, *MEMORY[0x277D858A0], v26);
  static AsyncThrowingStream.makeStream<>(of:throwing:bufferingPolicy:)();
  (*(v25 + 8))(v23, v26);
  type metadata accessor for TaskPriority();
  sub_22E6E3D34();
  sub_22E6CF58C(v27, v28, v29, v30);
  (*(v22 + 16))(v43, v21, v24);
  v31 = (*(v22 + 80) + 40) & ~*(v22 + 80);
  v32 = swift_allocObject();
  *(v32 + 2) = 0;
  *(v32 + 3) = 0;
  *(v32 + 4) = v46;
  (*(v22 + 32))(&v32[v31], v43, v24);
  v33 = &v32[(v31 + v44 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v33 = v47;
  v33[8] = BYTE4(a9) & 1;
  *&v32[(v31 + v44 + 23) & 0xFFFFFFFFFFFFFFF8] = v48;

  sub_22E709D08();
  sub_22E6FA5FC();

  (*(v22 + 8))(v21, v24);

  sub_22E709850();
  sub_22E709A8C();

  LOBYTE(a17) = BYTE4(a9) & 1;
  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, v43, v44, v45, v46, v47, v48, v23, a17, a18, a19, a20);
}

uint64_t sub_22E7046A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 56) = a4;
  *(v7 + 64) = a5;
  v10 = type metadata accessor for XPCRichError();
  *(v7 + 72) = v10;
  *(v7 + 80) = *(v10 - 8);
  *(v7 + 88) = swift_task_alloc();
  *(v7 + 96) = swift_task_alloc();
  *(v7 + 104) = swift_task_alloc();
  *(v7 + 112) = type metadata accessor for XPCAsyncSequenceRequest(0);
  *(v7 + 120) = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  *(v7 + 128) = v11;
  *(v7 + 136) = *(v11 - 8);
  *(v7 + 144) = swift_task_alloc();
  *(v7 + 152) = swift_task_alloc();
  *(v7 + 160) = swift_task_alloc();
  *(v7 + 168) = swift_task_alloc();
  *(v7 + 176) = swift_task_alloc();
  *(v7 + 16) = a6;
  *(v7 + 24) = a7 & 1;

  return MEMORY[0x2822009F8](sub_22E704854, 0, 0);
}

uint64_t sub_22E704854()
{
  sub_22E6E3BDC();
  v1 = *(v0 + 56);
  UUID.init()();
  *(v0 + 184) = *(v1 + 56);
  v2 = sub_22E709E18();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_22E7048BC()
{
  sub_22E6E3BDC();
  sub_22E7035E8();
  v0 = sub_22E6E3C64();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_22E704948()
{
  sub_22E6E3BDC();
  *(v0 + 192) = sub_22E70A0C8(*(v0 + 56));
  v1 = sub_22E709E18();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_22E7049AC()
{
  sub_22E6E3D08();
  *(v0 + 200) = sub_22E71A648();
  *(v0 + 208) = 0;
  sub_22E6ECBB8();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_22E7055D4()
{
  sub_22E6E3BDC();
  sub_22E71A578();
  v0 = sub_22E6E3C64();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_22E705634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t), uint64_t a11, void (*a12)(uint64_t, uint64_t), uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_22E709F74();
  sub_22E70A224();
  v18 = sub_22E70A1D0();
  v19(v18);
  v20 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_22E70A1E8();
  v22 = os_log_type_enabled(v20, v21);
  v23 = *(v17 + 264);
  v24 = *(v17 + 144);
  v25 = *(v17 + 128);
  if (v22)
  {
    sub_22E709FA8();
    a12 = v23;
    a13 = sub_22E709E7C();
    *v23 = 136315138;
    sub_22E70973C();
    sub_22E7096D0(v26, v27, MEMORY[0x277CC9628]);
    sub_22E709DE8();
    dispatch thunk of CustomStringConvertible.description.getter();
    sub_22E709E3C();
    v28 = sub_22E709D7C();
    (v23)(v28);
    v29 = sub_22E6D3824();
    sub_22E706BF8(v29, v30, v31);
    sub_22E70A0B0();
    *(v23 + 4) = v24;
    sub_22E70999C();
    _os_log_impl(v32, v33, v34, v35, v36, 0xCu);
    sub_22E7098CC();
    sub_22E7099AC();
  }

  else
  {

    v37 = sub_22E709D7C();
    (v23)(v37);
  }

  sub_22E709CBC();
  sub_22E709724();
  v40 = sub_22E7096D0(v38, v39, MEMORY[0x277D855F0]);
  v41 = sub_22E709C0C(v40);
  v43 = sub_22E7099D8(v41, v42);
  (v20)(v43);
  *(v17 + 48) = v25;
  sub_22E6CF1CC(&qword_27DA6D240, &qword_22E729D90);
  sub_22E709F04();
  AsyncThrowingStream.Continuation.finish(throwing:)();
  v44 = sub_22E709EF8();
  a10(v44);
  a12(a11, v16);

  sub_22E709860();

  sub_22E709850();
  sub_22E6E3F68();

  return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_22E705848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 56) = a4;
  *(v7 + 64) = a5;
  v10 = type metadata accessor for XPCRichError();
  *(v7 + 72) = v10;
  *(v7 + 80) = *(v10 - 8);
  *(v7 + 88) = swift_task_alloc();
  *(v7 + 96) = swift_task_alloc();
  *(v7 + 104) = swift_task_alloc();
  *(v7 + 112) = type metadata accessor for XPCAsyncSequenceRequest(0);
  *(v7 + 120) = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  *(v7 + 128) = v11;
  *(v7 + 136) = *(v11 - 8);
  *(v7 + 144) = swift_task_alloc();
  *(v7 + 152) = swift_task_alloc();
  *(v7 + 160) = swift_task_alloc();
  *(v7 + 168) = swift_task_alloc();
  *(v7 + 176) = swift_task_alloc();
  *(v7 + 16) = a6;
  *(v7 + 24) = a7 & 1;

  return MEMORY[0x2822009F8](sub_22E7059F8, 0, 0);
}

uint64_t sub_22E7059F8()
{
  sub_22E6E3BDC();
  v1 = *(v0 + 56);
  UUID.init()();
  *(v0 + 184) = *(v1 + 56);
  v2 = sub_22E709E18();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_22E705A60()
{
  sub_22E6E3BDC();
  sub_22E7035E8();
  v0 = sub_22E6E3C64();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_22E705AEC()
{
  sub_22E6E3BDC();
  *(v0 + 192) = sub_22E70A0C8(*(v0 + 56));
  v1 = sub_22E709E18();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_22E705B50()
{
  sub_22E6E3D08();
  *(v0 + 200) = sub_22E71A648();
  *(v0 + 208) = 0;
  sub_22E6ECBB8();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_22E706778()
{
  sub_22E6E3BDC();
  sub_22E71A578();
  v0 = sub_22E6E3C64();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_22E7067D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t), uint64_t a11, void (*a12)(uint64_t, uint64_t), uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_22E709F74();
  sub_22E70A224();
  v18 = sub_22E70A1D0();
  v19(v18);
  v20 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_22E70A1E8();
  v22 = os_log_type_enabled(v20, v21);
  v23 = *(v17 + 264);
  v24 = *(v17 + 144);
  v25 = *(v17 + 128);
  if (v22)
  {
    sub_22E709FA8();
    a12 = v23;
    a13 = sub_22E709E7C();
    *v23 = 136315138;
    sub_22E70973C();
    sub_22E7096D0(v26, v27, MEMORY[0x277CC9628]);
    sub_22E709DE8();
    dispatch thunk of CustomStringConvertible.description.getter();
    sub_22E709E3C();
    v28 = sub_22E709D7C();
    (v23)(v28);
    v29 = sub_22E6D3824();
    sub_22E706BF8(v29, v30, v31);
    sub_22E70A0B0();
    *(v23 + 4) = v24;
    sub_22E70999C();
    _os_log_impl(v32, v33, v34, v35, v36, 0xCu);
    sub_22E7098CC();
    sub_22E7099AC();
  }

  else
  {

    v37 = sub_22E709D7C();
    (v23)(v37);
  }

  sub_22E709CBC();
  sub_22E709724();
  v40 = sub_22E7096D0(v38, v39, MEMORY[0x277D855F0]);
  v41 = sub_22E709C0C(v40);
  v43 = sub_22E7099D8(v41, v42);
  (v20)(v43);
  *(v17 + 48) = v25;
  sub_22E6CF1CC(&qword_27DA6D288, &qword_22E729DE8);
  sub_22E709F04();
  AsyncThrowingStream.Continuation.finish(throwing:)();
  v44 = sub_22E709EF8();
  a10(v44);
  a12(a11, v16);

  sub_22E709860();

  sub_22E709850();
  sub_22E6E3F68();

  return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_22E7069EC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_22E706A04(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_22E6CF1CC(&qword_27DA6D160, &qword_22E729B80), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    v7 = sub_22E6CF1CC(&qword_27DA6D160, &qword_22E729B80);

    return MEMORY[0x2821FE828](a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {

    return MEMORY[0x2821FE820](a3, a1, a2, result);
  }

  return result;
}

char *sub_22E706AF0(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

uint64_t sub_22E706B1C(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = type metadata accessor for CloudAssets_Signal.Event(0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    v7 = type metadata accessor for CloudAssets_Signal.Event(0);

    return MEMORY[0x2821FE828](a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {

    return MEMORY[0x2821FE820](a3, a1, a2, result);
  }

  return result;
}

uint64_t sub_22E706BF8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  sub_22E6ECBB8();
  v9 = sub_22E706CB8(v6, v7, v8, 1, a1, a2);
  v10 = v14[0];
  if (v9)
  {
    v11 = v9;

    ObjectType = swift_getObjectType();
    v14[0] = v11;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v14[0] = a1;
    v14[1] = a2;
  }

  v12 = *a3;
  if (*a3)
  {
    sub_22E709068(v14, *a3);
    *a3 = v12 + 32;
  }

  sub_22E6CF2F4(v14);
  return v10;
}

unint64_t sub_22E706CB8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_22E706DB8(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
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

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_22E706DB8(uint64_t a1, unint64_t a2)
{
  v3 = sub_22E706E04(a1, a2);
  sub_22E706F1C(&unk_284338ED8);
  return v3;
}

uint64_t sub_22E706E04(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = String.UTF8View._foreignCount()())
  {
    result = sub_22E707000(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = _StringGuts._foreignCopyUTF8(into:)();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = _StringObject.sharedUTF8.getter();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_22E706F1C(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_22E707070(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_22E707000(uint64_t a1, uint64_t a2)
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

  sub_22E6CF1CC(&qword_27DA6D278, &qword_22E729DC8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_22E707070(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_22E6CF1CC(&qword_27DA6D278, &qword_22E729DC8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_22E7071AC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22E707A74(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22E7071CC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22E707B7C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_22E707250()
{
  sub_22E6E3F34();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  swift_task_alloc();
  sub_22E6ECB74();
  *(v1 + 16) = v7;
  *v7 = v8;
  v7[1] = sub_22E6E1F30;

  return sub_22E703094(v3, v4, v5, v6);
}

_BYTE *storeEnumTagSinglePayload for AssetManager.AssetError(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_22E707408()
{
  result = qword_27DA6D1A0;
  if (!qword_27DA6D1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D1A0);
  }

  return result;
}

uint64_t sub_22E70745C()
{
  sub_22E6E3F34();
  sub_22E709FF4();
  v0 = sub_22E6CF1CC(&qword_27DA6D188, &qword_22E729BC0);
  sub_22E6E3A38(v0);
  v1 = sub_22E6CF1CC(&qword_27DA6D1B0, &qword_22E729CE0);
  sub_22E6D376C(v1);
  sub_22E70A438();
  v2 = swift_task_alloc();
  v3 = sub_22E70998C(v2);
  *v3 = v4;
  v3[1] = sub_22E6E1F30;
  v5 = sub_22E7098B8();

  return sub_22E6FAB78(v5, v6, v7, v8, v9);
}

uint64_t sub_22E707590()
{
  sub_22E709B3C();
  v0 = sub_22E6CF1CC(&qword_27DA6D150, &qword_22E729B60);
  sub_22E6E3A38(v0);
  v1 = sub_22E6CF1CC(&qword_27DA6D180, &qword_22E729BB8);
  sub_22E6E3A38(v1);
  v2 = sub_22E6CF1CC(&qword_27DA6C890, &qword_22E7272B0);
  sub_22E6E3A38(v2);
  v3 = sub_22E6CF1CC(&qword_27DA6D1D0, &qword_22E729D10);
  sub_22E6E3A38(v3);
  sub_22E70A044();
  v4 = swift_task_alloc();
  v5 = sub_22E70998C(v4);
  *v5 = v6;
  v5[1] = sub_22E6E3984;
  sub_22E709A28();

  return sub_22E702358(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_22E7077D0(uint64_t a1)
{
  sub_22E709A70();
  sub_22E709B3C();
  sub_22E709FF4();
  v1 = sub_22E6CF1CC(&qword_27DA6D170, &qword_22E729B90);
  sub_22E6E3A38(v1);
  v2 = sub_22E6CF1CC(&qword_27DA6D1F0, &qword_22E729D40);
  sub_22E6E3A38(v2);
  sub_22E70A044();
  v3 = swift_task_alloc();
  v4 = sub_22E70998C(v3);
  *v4 = v5;
  v4[1] = sub_22E6E3984;
  sub_22E7098B8();
  sub_22E709A28();

  return sub_22E6FE344(v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_22E707944(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_22E70A5E4(a1, a2, a3, a4);
  sub_22E6D901C();
  v5 = sub_22E6D368C();
  v6(v5);
  return v4;
}

uint64_t sub_22E70798C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_22E6CF1CC(a2, a3);
  sub_22E6D9EDC();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_22E7079E0(uint64_t a1, uint64_t a2)
{
  v3 = sub_22E6D3778();
  v4(v3);
  sub_22E6D901C();
  v5 = sub_22E6D368C();
  v6(v5);
  return a2;
}

char *sub_22E707A34(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22E707D48(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22E707A54(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22E707E44(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22E707A74(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_22E6CF1CC(&qword_27DA6D2B8, &qword_22E729E20);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22E707B7C(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_22E6CF1CC(&qword_27DA6D230, &qword_22E729D80);
  v10 = *(sub_22E6CF1CC(&qword_27DA6D160, &qword_22E729B80) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_22E6CF1CC(&qword_27DA6D160, &qword_22E729B80) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_22E706A04(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_22E707D48(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_22E6CF1CC(&qword_27DA6D2B0, &qword_22E729E18);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || &v13[v14] <= v12)
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

void *sub_22E707E44(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_22E6CF1CC(&qword_27DA6D2A8, &qword_22E729E10);
  v10 = *(type metadata accessor for CloudAssets_Signal.Event(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for CloudAssets_Signal.Event(0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_22E706B1C(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_22E707FF8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for AssetDownloadRequest(0);
  v42 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_22E6CF1CC(&qword_27DA6D220, &qword_22E729D70);
  v43 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (!*(v10 + 16))
  {
LABEL_32:

LABEL_33:
    *v3 = v12;
    return result;
  }

  v38 = v2;
  v13 = 0;
  v14 = (v10 + 64);
  v15 = 1 << *(v10 + 32);
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(v10 + 64);
  v18 = (v15 + 63) >> 6;
  v39 = (v8 + 16);
  v40 = v8;
  v44 = (v8 + 32);
  v19 = result + 64;
  v41 = v10;
  if (!v17)
  {
LABEL_7:
    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v13 >= v18)
      {
        break;
      }

      v22 = v14[v13];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_12;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_33;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      sub_22E708494(0, (v37 + 63) >> 6, v14);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v20 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
LABEL_12:
    v23 = v20 | (v13 << 6);
    v24 = *(v10 + 48);
    v45 = *(v8 + 72);
    v25 = v24 + v45 * v23;
    if (v43)
    {
      (*v44)(v46, v25, v7);
      v26 = *(v10 + 56);
      v27 = *(v42 + 72);
      sub_22E708A80(v26 + v27 * v23, v47);
    }

    else
    {
      (*v39)(v46, v25, v7);
      v28 = *(v10 + 56);
      v27 = *(v42 + 72);
      sub_22E7079E0(v28 + v27 * v23, v47);
    }

    sub_22E7096D0(&qword_27DA6C5F0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v29 = -1 << *(v12 + 32);
    v30 = result & ~v29;
    v31 = v30 >> 6;
    if (((-1 << v30) & ~*(v19 + 8 * (v30 >> 6))) == 0)
    {
      break;
    }

    v32 = __clz(__rbit64((-1 << v30) & ~*(v19 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v19 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
    (*v44)((*(v12 + 48) + v45 * v32), v46, v7);
    result = sub_22E708A80(v47, *(v12 + 56) + v27 * v32);
    ++*(v12 + 16);
    v8 = v40;
    v10 = v41;
    if (!v17)
    {
      goto LABEL_7;
    }
  }

  v33 = 0;
  v34 = (63 - v29) >> 6;
  while (++v31 != v34 || (v33 & 1) == 0)
  {
    v35 = v31 == v34;
    if (v31 == v34)
    {
      v31 = 0;
    }

    v33 |= v35;
    v36 = *(v19 + 8 * v31);
    if (v36 != -1)
    {
      v32 = __clz(__rbit64(~v36)) + (v31 << 6);
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_22E708494(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_22E729AE0;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void sub_22E7084F8(uint64_t a1, char a2, uint64_t *a3)
{
  v46 = a3;
  v6 = type metadata accessor for AssetDownloadRequest(0);
  v42 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v45 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v47 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22E6CF1CC(&qword_27DA6D160, &qword_22E729B80);
  v12 = MEMORY[0x28223BE20](v11);
  v43 = v37 - v14;
  v41 = *(a1 + 16);
  if (!v41)
  {
LABEL_13:

    return;
  }

  v37[1] = v3;
  v38 = v9;
  v15 = 0;
  v40 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v39 = *(v12 + 48);
  v44 = (v9 + 32);
  while (1)
  {
    if (v15 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_22;
    }

    v16 = v13;
    v17 = v43;
    sub_22E708A38(v40 + *(v13 + 72) * v15, v43, &qword_27DA6D160, &qword_22E729B80);
    v18 = *v44;
    v19 = v47;
    v20 = v8;
    (*v44)(v47, v17, v8);
    sub_22E708A80(v17 + v39, v45);
    v21 = *v46;
    v23 = sub_22E714B78(v19);
    v24 = *(v21 + 16);
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      goto LABEL_19;
    }

    v27 = v22;
    if (*(v21 + 24) < v26)
    {
      break;
    }

    if (a2)
    {
      if (v22)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_22E6CF1CC(&qword_27DA6D228, &qword_22E729D78);
      _NativeDictionary.copy()();
      if (v27)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v30 = v47;
    v31 = *v46;
    *(*v46 + 8 * (v23 >> 6) + 64) |= 1 << v23;
    v8 = v20;
    v18(v31[6] + *(v38 + 72) * v23, v30, v20);
    sub_22E708A80(v45, v31[7] + *(v42 + 72) * v23);
    v32 = v31[2];
    v33 = __OFADD__(v32, 1);
    v34 = v32 + 1;
    if (v33)
    {
      goto LABEL_20;
    }

    ++v15;
    v31[2] = v34;
    a2 = 1;
    v13 = v16;
    if (v41 == v15)
    {
      goto LABEL_13;
    }
  }

  sub_22E707FF8(v26, a2 & 1);
  v28 = sub_22E714B78(v47);
  if ((v27 & 1) != (v29 & 1))
  {
    goto LABEL_21;
  }

  v23 = v28;
  if ((v27 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v35 = swift_allocError();
  swift_willThrow();
  v50 = v35;
  v36 = v35;
  sub_22E6CF1CC(&qword_27DA6C7C0, qword_22E726DC0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_22E708D18();
    (*(v38 + 8))(v47, v20);

    return;
  }

LABEL_22:
  v48 = 0;
  v49 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  MEMORY[0x2318EC630](0xD00000000000001BLL, 0x800000022E72D3B0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x2318EC630](39, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_22E708A38(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_22E70A5E4(a1, a2, a3, a4);
  sub_22E6D901C();
  v5 = sub_22E6D368C();
  v6(v5);
  return v4;
}

uint64_t sub_22E708A80(uint64_t a1, uint64_t a2)
{
  v3 = sub_22E6D3778();
  v4(v3);
  sub_22E6D901C();
  v5 = sub_22E6D368C();
  v6(v5);
  return a2;
}

uint64_t sub_22E708AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *a6;
  v13 = *(a6 + 8);
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_22E6E3984;

  return sub_22E7046A4(a1, a2, a3, a4, a5, v12, v13);
}

uint64_t sub_22E708BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22E709A70();
  sub_22E709B3C();
  sub_22E709FF4();
  v12 = sub_22E6CF1CC(&qword_27DA6D240, &qword_22E729D90);
  sub_22E6E3A38(v12);
  sub_22E709DC4();
  v13 = swift_task_alloc();
  v14 = sub_22E70998C(v13);
  *v14 = v15;
  v14[1] = sub_22E6E3984;
  sub_22E7098B8();
  sub_22E709A28();

  return v23(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

unint64_t sub_22E708CC4()
{
  result = qword_27DA6D250;
  if (!qword_27DA6D250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D250);
  }

  return result;
}

uint64_t sub_22E708D18()
{
  v1 = sub_22E6D3848();
  v2(v1);
  sub_22E6D9EDC();
  (*(v3 + 8))(v0);
  return v0;
}

unint64_t sub_22E708D90()
{
  result = qword_27DA6D268;
  if (!qword_27DA6D268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D268);
  }

  return result;
}

uint64_t sub_22E708DE4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_22E708DF4(uint64_t result, unint64_t a2)
{
  if (((a2 >> 60) | 4) != 0xF)
  {
    return sub_22E6CFBBC(result, a2);
  }

  return result;
}

uint64_t sub_22E708E0C()
{
  sub_22E6EB570();
  sub_22E6CF1CC(v1, v2);
  sub_22E6CF988();
  v5 = ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v4 + 64);
  v6 = sub_22E6CF1CC(&qword_27DA6D1B0, &qword_22E729CE0);
  sub_22E6CF988();
  v8 = v7;
  v9 = (v5 + *(v7 + 80)) & ~*(v7 + 80);
  swift_unknownObjectRelease();
  v10 = sub_22E709CE4();
  v11(v10);
  (*(v8 + 8))(v0 + v9, v6);
  sub_22E6EB538();

  return MEMORY[0x2821FE8E8](v12, v13, v14);
}

uint64_t sub_22E708F34()
{
  sub_22E6E3F34();
  sub_22E709FF4();
  v0 = sub_22E6CF1CC(&qword_27DA6D130, &qword_22E729B28);
  sub_22E6E3A38(v0);
  v1 = sub_22E6CF1CC(&qword_27DA6D1B0, &qword_22E729CE0);
  sub_22E6D376C(v1);
  sub_22E70A438();
  v2 = swift_task_alloc();
  v3 = sub_22E70998C(v2);
  *v3 = v4;
  v3[1] = sub_22E6E3984;
  v5 = sub_22E7098B8();

  return sub_22E6FFDBC(v5, v6, v7, v8, v9);
}

uint64_t sub_22E709068(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_22E7090C4(uint64_t a1)
{
  sub_22E709FF4();
  v1 = sub_22E6CF1CC(&qword_27DA6D150, &qword_22E729B60);
  sub_22E6E3A38(v1);
  v2 = sub_22E6CF1CC(&qword_27DA6D1B0, &qword_22E729CE0);
  sub_22E6E3A38(v2);
  v3 = swift_task_alloc();
  v4 = sub_22E70998C(v3);
  *v4 = v5;
  v4[1] = sub_22E6E3984;
  v6 = sub_22E7098B8();

  return sub_22E6FD67C(v6, v7, v8, v9, v10);
}

uint64_t sub_22E70923C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *a6;
  v13 = *(a6 + 8);
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_22E6E1F30;

  return sub_22E705848(a1, a2, a3, a4, a5, v12, v13);
}

uint64_t sub_22E709324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22E709A70();
  sub_22E709B3C();
  sub_22E709FF4();
  v12 = sub_22E6CF1CC(&qword_27DA6D288, &qword_22E729DE8);
  sub_22E6E3A38(v12);
  sub_22E709DC4();
  v13 = swift_task_alloc();
  v14 = sub_22E70998C(v13);
  *v14 = v15;
  v14[1] = sub_22E6E3984;
  sub_22E7098B8();
  sub_22E709A28();

  return v23(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

unint64_t sub_22E70942C()
{
  result = qword_27DA6D290;
  if (!qword_27DA6D290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D290);
  }

  return result;
}

uint64_t sub_22E709480()
{
  sub_22E6EB570();
  sub_22E6CF1CC(v1, v2);
  sub_22E6CF988();
  v5 = (*(v4 + 64) + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for UUID();
  sub_22E6CF988();
  v8 = v7;
  v9 = (v5 + *(v7 + 80) + 8) & ~*(v7 + 80);
  v10 = sub_22E709CE4();
  v11(v10);

  (*(v8 + 8))(v0 + v9, v6);
  sub_22E6EB538();

  return MEMORY[0x2821FE8E8](v12, v13, v14);
}

uint64_t sub_22E7095D0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, unint64_t, uint64_t, uint64_t))
{
  v6 = sub_22E6CF1CC(a2, a3);
  sub_22E6E3A38(v6);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v10 = (*(v9 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = type metadata accessor for UUID();
  sub_22E6D376C(v11);
  v13 = *(v4 + v10);
  v14 = v4 + ((v10 + *(v12 + 80) + 8) & ~*(v12 + 80));

  return a4(a1, v4 + v8, v13, v14);
}

uint64_t sub_22E7096D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22E70976C(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_22E70978C(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_22E709860()
{
}

void sub_22E7098CC()
{
  sub_22E6CF2F4(v0);

  JUMPOUT(0x2318ED210);
}

uint64_t sub_22E709900()
{

  return swift_allocObject();
}

void sub_22E7099AC()
{

  JUMPOUT(0x2318ED210);
}

void *sub_22E709A00()
{
  result = sub_22E6CF214((*(v0 + 56) + 16), *(*(v0 + 56) + 40));
  *(v0 + 272) = result;
  return result;
}

void sub_22E709A54()
{

  JUMPOUT(0x2318ED210);
}

void sub_22E709AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  sub_22E6CF2F4(a15);

  JUMPOUT(0x2318ED210);
}

uint64_t sub_22E709B78(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return sub_22E7079E0(v2, a1 + v3);
}

uint64_t sub_22E709C0C(uint64_t a1)
{

  return swift_allocError();
}

uint64_t sub_22E709C2C(uint64_t a1)
{
  *(v1 + 4) = v2;
  *(v1 + 12) = 2080;

  return static Task<>.currentPriority.getter();
}

uint64_t sub_22E709D54(uint64_t a1)
{
  v2[27] = a1;
  v2[28] = *(v3 + 16);
  v2[29] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  return v1;
}

uint64_t sub_22E709D8C()
{
}

uint64_t sub_22E709E7C()
{

  return swift_slowAlloc();
}

uint64_t sub_22E709E98()
{

  return swift_slowAlloc();
}

uint64_t sub_22E709EB4(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

uint64_t sub_22E709F10()
{
  *(v1 + 240) = *(v0 + 16);
  *(v1 + 248) = (v0 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  return v2;
}

uint64_t sub_22E709F3C()
{

  return swift_slowAlloc();
}

uint64_t sub_22E709F54()
{

  return swift_task_alloc();
}

uint64_t sub_22E709F90()
{

  return swift_slowAlloc();
}

uint64_t sub_22E709FA8()
{

  return swift_slowAlloc();
}

uint64_t sub_22E709FCC()
{
}

BOOL sub_22E70A028(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_22E70A060()
{

  return swift_slowAlloc();
}

uint64_t sub_22E70A07C()
{

  return swift_arrayDestroy();
}

uint64_t sub_22E70A098()
{

  return swift_slowAlloc();
}

uint64_t sub_22E70A0B0()
{
}

void *sub_22E70A0C8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 40);

  return sub_22E6CF214((a1 + 16), v2);
}

id sub_22E70A0E0()
{
  v2 = *(v0 + 208);
  *(v0 + 32) = v2;

  return v2;
}

uint64_t sub_22E70A108()
{

  return swift_unknownObjectRelease();
}

void sub_22E70A130(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, os_log_t log, os_log_type_t a13)
{

  _os_log_impl(a1, log, a13, a4, v13, 0x16u);
}

uint64_t sub_22E70A158()
{

  return type metadata accessor for Logger();
}

uint64_t sub_22E70A180()
{

  return type metadata accessor for Logger();
}

uint64_t sub_22E70A1A8()
{
}

BOOL sub_22E70A290()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_22E70A2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  return sub_22E706BF8(v16, v17, va);
}

uint64_t sub_22E70A2CC(uint64_t a1)
{

  return AsyncThrowingStream.Continuation.yield(_:)();
}

void sub_22E70A2E8(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, os_log_type_t a12)
{

  _os_log_impl(a1, v12, a12, a4, v13, 0x16u);
}

uint64_t sub_22E70A30C(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t sub_22E70A330(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t sub_22E70A354()
{
}

uint64_t sub_22E70A378()
{
}

uint64_t sub_22E70A394()
{
}

uint64_t sub_22E70A3B8()
{
}

id sub_22E70A4E4()
{
  *(v2 + 4) = v0;
  *(v2 + 12) = 2112;

  return v1;
}

void sub_22E70A504(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
}

uint64_t sub_22E70A524()
{
}

uint64_t sub_22E70A544(uint64_t a1)
{

  return dispatch thunk of XPCSession.send<A>(_:)();
}

uint64_t sub_22E70A564()
{

  return type metadata accessor for Logger();
}

uint64_t sub_22E70A584()
{

  return type metadata accessor for Logger();
}

id sub_22E70A5A4()
{
  *(v0 + 32) = v1;

  return v1;
}

uint64_t sub_22E70A5C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);

  return sub_22E706BF8(v15, v14, va);
}

uint64_t sub_22E70A5E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_22E6CF1CC(a3, a4);
}

uint64_t sub_22E70A604()
{
}

uint64_t sub_22E70A61C(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_22E70A634()
{
  *(v2 + 256) = v0;
  *(v2 + 264) = v1;

  return XPCRichError.canRetry.getter();
}

uint64_t sub_22E70A64C()
{

  return swift_slowAlloc();
}

uint64_t sub_22E70A664(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for AssetDownloadResponse(0);
  sub_22E6CF978();
  MEMORY[0x28223BE20](v6);
  sub_22E6CF9C8();
  v9 = v8 - v7;
  v10 = sub_22E6CF1CC(&qword_27DA6D200, &qword_22E72A550);
  sub_22E6D376C(v10);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v11);
  v13 = &v34 - v12;
  v14 = sub_22E6CF1CC(&qword_27DA6D440, &qword_22E72A558);
  sub_22E6D376C(v14);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v15);
  sub_22E70D6D8();
  v17 = *(v16 + 56);
  sub_22E70D4E8(a1, v2, &qword_27DA6D200, &qword_22E72A550);
  sub_22E70D4E8(a2, v2 + v17, &qword_27DA6D200, &qword_22E72A550);
  sub_22E70D69C(v2);
  if (v23)
  {
    sub_22E70D69C(v2 + v17);
    if (v23)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v19 = sub_22E709B30();
    sub_22E70D4E8(v19, v20, v21, v22);
    sub_22E70D69C(v2 + v17);
    if (!v23)
    {
      sub_22E70D5A0(v2 + v17, v9, type metadata accessor for AssetDownloadResponse);
      v26 = static UUID.== infix(_:_:)();
      if ((v26 & 1) == 0 || !static Asset.== infix(_:_:)(&v13[*(v5 + 20)], v9 + *(v5 + 20)) || (static URL.== infix(_:_:)() & 1) == 0)
      {
        goto LABEL_23;
      }

      v27 = *(v5 + 28);
      v28 = &v13[v27];
      v29 = v13[v27 + 16];
      v30 = v9 + v27;
      if (v29)
      {
        if ((*(v30 + 16) & 1) == 0)
        {
LABEL_23:
          sub_22E70D644();
          sub_22E70D548(v9, v33);
          sub_22E70D548(v13, v5);
          v24 = &qword_27DA6D200;
          v25 = &qword_22E72A550;
          goto LABEL_24;
        }
      }

      else
      {
        if (*(v30 + 16))
        {
          goto LABEL_23;
        }

        if (*v28 != *v30 || *(v28 + 1) != *(v30 + 8))
        {
          goto LABEL_23;
        }
      }

      sub_22E70D644();
      sub_22E70D548(v9, v32);
      sub_22E70D548(v13, v5);
LABEL_5:
      sub_22E6D3510(v2, &qword_27DA6D200, &qword_22E72A550);
      return 1;
    }

    sub_22E70D548(v13, type metadata accessor for AssetDownloadResponse);
  }

  v24 = &qword_27DA6D440;
  v25 = &qword_22E72A558;
LABEL_24:
  sub_22E6D3510(v2, v24, v25);
  return 0;
}

BOOL sub_22E70A910(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Asset(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22E6CF1CC(&qword_27DA6D190, &qword_22E729E30);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = sub_22E6CF1CC(&qword_27DA6D448, &unk_22E72A560);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v17 - v12;
  v14 = *(v11 + 56);
  sub_22E70D4E8(a1, &v17 - v12, &qword_27DA6D190, &qword_22E729E30);
  sub_22E70D4E8(a2, &v13[v14], &qword_27DA6D190, &qword_22E729E30);
  if (sub_22E6CF550(v13, 1, v4) != 1)
  {
    sub_22E70D4E8(v13, v9, &qword_27DA6D190, &qword_22E729E30);
    if (sub_22E6CF550(&v13[v14], 1, v4) != 1)
    {
      sub_22E70D5A0(&v13[v14], v6, type metadata accessor for Asset);
      v15 = static Asset.== infix(_:_:)(v9, v6);
      sub_22E70D548(v6, type metadata accessor for Asset);
      sub_22E70D548(v9, type metadata accessor for Asset);
      sub_22E6D3510(v13, &qword_27DA6D190, &qword_22E729E30);
      return v15;
    }

    sub_22E70D548(v9, type metadata accessor for Asset);
    goto LABEL_6;
  }

  if (sub_22E6CF550(&v13[v14], 1, v4) != 1)
  {
LABEL_6:
    sub_22E6D3510(v13, &qword_27DA6D448, &unk_22E72A560);
    return 0;
  }

  sub_22E6D3510(v13, &qword_27DA6D190, &qword_22E729E30);
  return 1;
}

BOOL static UploadResponseMessage.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v7 = sub_22E6CF1CC(&qword_27DA6D190, &qword_22E729E30);
  sub_22E6D376C(v7);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - v9;
  type metadata accessor for UploadResponseMessage(0);
  sub_22E6CF978();
  MEMORY[0x28223BE20](v11);
  sub_22E70D6BC();
  MEMORY[0x28223BE20](v12);
  sub_22E70D718();
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v31 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = sub_22E6CF1CC(&qword_27DA6D2C8, &qword_22E729E38);
  sub_22E6D376C(v19);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v20);
  sub_22E70D6D8();
  v22 = *(v21 + 56);
  sub_22E70AEE8(a1, v2);
  sub_22E70AEE8(a2, v2 + v22);
  sub_22E709B30();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22E70AEE8(v2, v16);
      if (sub_22E70D780() == 1)
      {
        sub_22E70AF4C(v2 + v22, v10);
        v24 = sub_22E70A910(v16, v10);
        sub_22E6D3510(v10, &qword_27DA6D190, &qword_22E729E30);
        sub_22E6D3510(v16, &qword_27DA6D190, &qword_22E729E30);
        goto LABEL_13;
      }

      sub_22E6D3510(v16, &qword_27DA6D190, &qword_22E729E30);
      goto LABEL_15;
    case 2u:
      sub_22E70AEE8(v2, v4);
      if (sub_22E70D780() != 2)
      {
        goto LABEL_10;
      }

      v25 = sub_22E70D708();
      v27 = sub_22E6ECCD8(v25, v26);
      goto LABEL_8;
    case 3u:
      sub_22E70AEE8(v2, v3);
      if (sub_22E70D780() != 3)
      {
        goto LABEL_10;
      }

      v28 = sub_22E70D708();
      v27 = sub_22E6ECD4C(v28, v29);
LABEL_8:
      v24 = v27;

      goto LABEL_9;
    default:
      sub_22E70AEE8(v2, v18);
      if (sub_22E70D780())
      {
LABEL_10:

LABEL_15:
        sub_22E6D3510(v2, &qword_27DA6D2C8, &qword_22E729E38);
        return 0;
      }

      else
      {
        sub_22E70D708();
        sub_22E6EE424();
        v24 = v23;

LABEL_9:

LABEL_13:
        sub_22E70D548(v2, type metadata accessor for UploadResponseMessage);
      }

      return v24;
  }
}

uint64_t type metadata accessor for UploadResponseMessage(uint64_t a1)
{
  result = qword_27DA6D3A0;
  if (!qword_27DA6D3A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22E70AEE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UploadResponseMessage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22E70AF4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22E6CF1CC(&qword_27DA6D190, &qword_22E729E30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22E70AFBC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6172656D65687065 && a2 == 0xEE0074657373416CLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6574736973726570 && a2 == 0xEE00746573734164;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C616E676973 && a2 == 0xE600000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000019 && 0x800000022E72D400 == a2)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_22E70B12C(char a1)
{
  result = 0x6172656D65687065;
  switch(a1)
  {
    case 1:
      result = 0x6574736973726570;
      break;
    case 2:
      result = 0x6C616E676973;
      break;
    case 3:
      result = 0xD000000000000019;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22E70B1C0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22E70B250@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22E70AFBC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22E70B278(uint64_t a1)
{
  v2 = sub_22E70BAC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E70B2B4(uint64_t a1)
{
  v2 = sub_22E70BAC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22E70B2F4(uint64_t a1)
{
  v2 = sub_22E70BCB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E70B330(uint64_t a1)
{
  v2 = sub_22E70BCB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22E70B36C(uint64_t a1)
{
  v2 = sub_22E70BC64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E70B3A8(uint64_t a1)
{
  v2 = sub_22E70BC64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22E70B3E4(uint64_t a1)
{
  v2 = sub_22E70BBBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E70B420(uint64_t a1)
{
  v2 = sub_22E70BBBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22E70B460@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22E70B1C0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22E70B48C(uint64_t a1)
{
  v2 = sub_22E70BB14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E70B4C8(uint64_t a1)
{
  v2 = sub_22E70BB14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UploadResponseMessage.encode(to:)(void *a1)
{
  sub_22E6CF1CC(&qword_27DA6D2D0, &qword_22E729E40);
  sub_22E6CF988();
  v44 = v5;
  v45 = v4;
  sub_22E6D374C();
  MEMORY[0x28223BE20](v6);
  sub_22E6EB4DC();
  v43 = v7;
  sub_22E6CF1CC(&qword_27DA6D2D8, &qword_22E729E48);
  sub_22E6CF988();
  v41 = v9;
  v42 = v8;
  sub_22E6D374C();
  MEMORY[0x28223BE20](v10);
  sub_22E6EB4DC();
  v40 = v11;
  sub_22E6CF1CC(&qword_27DA6D2E0, &qword_22E729E50);
  sub_22E6CF988();
  v38 = v13;
  v39 = v12;
  sub_22E6D374C();
  MEMORY[0x28223BE20](v14);
  sub_22E6EB4DC();
  v37 = v15;
  sub_22E6CF1CC(&qword_27DA6D190, &qword_22E729E30);
  sub_22E6CF978();
  sub_22E6D374C();
  MEMORY[0x28223BE20](v16);
  sub_22E70D6D8();
  v36 = sub_22E6CF1CC(&qword_27DA6D2E8, &qword_22E729E58);
  sub_22E6CF988();
  v35 = v17;
  sub_22E6D374C();
  MEMORY[0x28223BE20](v18);
  sub_22E70D760();
  sub_22E6CF978();
  MEMORY[0x28223BE20](v19);
  sub_22E6CF9C8();
  v22 = (v21 - v20);
  sub_22E6CF1CC(&qword_27DA6D2F0, &unk_22E729E60);
  sub_22E6CF988();
  sub_22E6D374C();
  MEMORY[0x28223BE20](v23);
  sub_22E6CF214(a1, a1[3]);
  sub_22E70BAC0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_22E70AEE8(v46, v22);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22E70AF4C(v22, v1);
      LOBYTE(v47) = 1;
      sub_22E70BC64();
      sub_22E70D67C(&type metadata for UploadResponseMessage.PersistedAssetCodingKeys, &v47);
      sub_22E70CAA8(&qword_27DA6D328, &protocol conformance descriptor for XPCResult<A>);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v38 + 8))(v37, v39);
      sub_22E6D3510(v1, &qword_27DA6D190, &qword_22E729E30);
      v33 = sub_22E70D72C();
      return v34(v33);
    case 2u:
      v25 = *v22;
      LOBYTE(v47) = 2;
      sub_22E70BBBC();
      v26 = v40;
      sub_22E70D67C(&type metadata for UploadResponseMessage.SignalCodingKeys, &v47);
      v47 = v25;
      sub_22E70BC10();
      v27 = v42;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v28 = v41;
      goto LABEL_5;
    case 3u:
      v29 = *v22;
      LOBYTE(v47) = 3;
      sub_22E70BB14();
      v26 = v43;
      sub_22E70D67C(&type metadata for UploadResponseMessage.SimultaneousTransferErrorCodingKeys, &v47);
      v47 = v29;
      sub_22E70BB68();
      v27 = v45;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v28 = v44;
LABEL_5:
      (*(v28 + 8))(v26, v27);
      goto LABEL_6;
    default:
      v24 = *v22;
      sub_22E70BCB8();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v47 = v24;
      sub_22E6CF1CC(&qword_27DA6D198, &qword_22E729BC8);
      sub_22E70CAF8(&qword_27DA6D338, &qword_27DA6D340, &protocol conformance descriptor for AssetSkeleton, MEMORY[0x277D83948]);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v35 + 8))(v2, v36);
LABEL_6:
      v30 = sub_22E70D72C();
      v31(v30);
  }
}

unint64_t sub_22E70BAC0()
{
  result = qword_27DA6D2F8;
  if (!qword_27DA6D2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D2F8);
  }

  return result;
}

unint64_t sub_22E70BB14()
{
  result = qword_27DA6D300;
  if (!qword_27DA6D300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D300);
  }

  return result;
}

unint64_t sub_22E70BB68()
{
  result = qword_27DA6D308;
  if (!qword_27DA6D308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D308);
  }

  return result;
}

unint64_t sub_22E70BBBC()
{
  result = qword_27DA6D310;
  if (!qword_27DA6D310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D310);
  }

  return result;
}

unint64_t sub_22E70BC10()
{
  result = qword_27DA6D318;
  if (!qword_27DA6D318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D318);
  }

  return result;
}

unint64_t sub_22E70BC64()
{
  result = qword_27DA6D320;
  if (!qword_27DA6D320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D320);
  }

  return result;
}

unint64_t sub_22E70BCB8()
{
  result = qword_27DA6D330;
  if (!qword_27DA6D330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D330);
  }

  return result;
}

uint64_t UploadResponseMessage.hash(into:)(uint64_t a1)
{
  v2 = type metadata accessor for Asset(0);
  sub_22E6CF978();
  MEMORY[0x28223BE20](v3);
  sub_22E6CF9C8();
  v6 = v5 - v4;
  v7 = sub_22E6CF1CC(&qword_27DA6D190, &qword_22E729E30);
  v8 = sub_22E6D376C(v7);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - v12;
  type metadata accessor for UploadResponseMessage(0);
  sub_22E6CF978();
  MEMORY[0x28223BE20](v14);
  sub_22E6CF9C8();
  v17 = v16 - v15;
  sub_22E70AEE8(v1, v16 - v15);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22E70AF4C(v17, v13);
      MEMORY[0x2318ECB90](1);
      sub_22E70D4E8(v13, v11, &qword_27DA6D190, &qword_22E729E30);
      sub_22E70D69C(v11);
      if (v19)
      {
        MEMORY[0x2318ECB90](1);
        return sub_22E6D3510(v13, &qword_27DA6D190, &qword_22E729E30);
      }

      else
      {
        sub_22E70D5A0(v11, v6, type metadata accessor for Asset);
        MEMORY[0x2318ECB90](0);
        type metadata accessor for URL();
        sub_22E70CD98(&qword_27DA6C5F8, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
        dispatch thunk of Hashable.hash(into:)();
        type metadata accessor for Asset.ID(0);
        sub_22E6D50F8();
        String.hash(into:)();
        sub_22E6D50F8();
        Data.hash(into:)();
        sub_22E6D50F8();
        Data.hash(into:)();
        Data.hash(into:)();
        Data.hash(into:)();
        MEMORY[0x2318ECB90](*(v6 + *(v2 + 24)));
        sub_22E6D3510(v13, &qword_27DA6D190, &qword_22E729E30);
        return sub_22E70D548(v6, type metadata accessor for Asset);
      }

    case 2u:
      MEMORY[0x2318ECB90](2);
      sub_22E709B30();
      sub_22E6F2538();

    case 3u:
      MEMORY[0x2318ECB90](3);
      MEMORY[0x2318ECB90](0);
      sub_22E709B30();
      sub_22E6F259C();

    default:
      MEMORY[0x2318ECB90](0);
      sub_22E709B30();
      sub_22E6F2A6C();
  }
}

Swift::Int UploadResponseMessage.hashValue.getter()
{
  Hasher.init(_seed:)();
  UploadResponseMessage.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t UploadResponseMessage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v100 = a2;
  v99 = sub_22E6CF1CC(&qword_27DA6D348, &qword_22E729E70);
  sub_22E6CF988();
  v94 = v6;
  sub_22E6D374C();
  MEMORY[0x28223BE20](v7);
  sub_22E6EB4DC();
  v98 = v8;
  sub_22E6CF1CC(&qword_27DA6D350, &qword_22E729E78);
  sub_22E6CF988();
  v92 = v10;
  v93 = v9;
  sub_22E6D374C();
  MEMORY[0x28223BE20](v11);
  sub_22E6EB4DC();
  v97 = v12;
  sub_22E6CF1CC(&qword_27DA6D358, &qword_22E729E80);
  sub_22E6CF988();
  v90 = v14;
  v91 = v13;
  sub_22E6D374C();
  MEMORY[0x28223BE20](v15);
  sub_22E6EB4DC();
  v96 = v16;
  sub_22E6CF1CC(&qword_27DA6D360, &qword_22E729E88);
  sub_22E6CF988();
  v88 = v18;
  v89 = v17;
  sub_22E6D374C();
  MEMORY[0x28223BE20](v19);
  sub_22E6EB4DC();
  v95 = v20;
  v103 = sub_22E6CF1CC(&qword_27DA6D368, &unk_22E729E90);
  sub_22E6CF988();
  v101 = v21;
  sub_22E6D374C();
  MEMORY[0x28223BE20](v22);
  v102 = sub_22E70D760();
  sub_22E6CF978();
  MEMORY[0x28223BE20](v23);
  sub_22E70D6BC();
  MEMORY[0x28223BE20](v24);
  sub_22E70D718();
  v26 = MEMORY[0x28223BE20](v25);
  v28 = &v83 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v83 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v83 - v32;
  v34 = a1[3];
  v104 = a1;
  sub_22E6CF214(a1, v34);
  sub_22E70BAC0();
  v35 = v105;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v35)
  {
    return sub_22E6CF2F4(v104);
  }

  v84 = v3;
  v86 = v2;
  v87 = v28;
  v85 = v31;
  v105 = v33;
  v37 = v102;
  v36 = v103;
  KeyedDecodingContainer.allKeys.getter();
  result = sub_22E6F376C();
  if (v40 == v41 >> 1)
  {
    goto LABEL_7;
  }

  v83 = 0;
  if (v40 >= (v41 >> 1))
  {
    __break(1u);
    return result;
  }

  v42 = *(v39 + v40);
  sub_22E6F3764();
  v44 = v43;
  v46 = v45;
  swift_unknownObjectRelease();
  if (v44 != v46 >> 1)
  {
LABEL_7:
    v48 = v36;
    v49 = type metadata accessor for DecodingError();
    swift_allocError();
    v51 = v50;
    sub_22E6CF1CC(&qword_27DA6CD20, &qword_22E729070);
    *v51 = v37;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v49 - 8) + 104))(v51, *MEMORY[0x277D84160], v49);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v101 + 8))(v4, v48);
    return sub_22E6CF2F4(v104);
  }

  v47 = v100;
  switch(v42)
  {
    case 1:
      LOBYTE(v106) = 1;
      sub_22E70BC64();
      sub_22E70D65C(&type metadata for UploadResponseMessage.PersistedAssetCodingKeys, &v106);
      sub_22E6CF1CC(&qword_27DA6D190, &qword_22E729E30);
      sub_22E70CAA8(&qword_27DA6D380, &protocol conformance descriptor for XPCResult<A>);
      v60 = v87;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      swift_unknownObjectRelease();
      v75 = sub_22E70D634();
      v76(v75);
      v77 = sub_22E70D620();
      v78(v77);
      swift_storeEnumTagMultiPayload();
      sub_22E70D608();
      v79 = v105;
      sub_22E70D5A0(v60, v105, v80);
      v81 = v104;
      v47 = v100;
      goto LABEL_13;
    case 2:
      LOBYTE(v106) = 2;
      sub_22E70BBBC();
      sub_22E70D65C(&type metadata for UploadResponseMessage.SignalCodingKeys, &v106);
      v52 = sub_22E70CA54();
      sub_22E70D740(&type metadata for Signal, v53, v54, v55, v52);
      swift_unknownObjectRelease();
      v61 = sub_22E70D634();
      v62(v61);
      v63 = sub_22E70D6F8();
      v64(v63);
      v73 = v84;
      sub_22E70D6E8(v106);
      goto LABEL_12;
    case 3:
      LOBYTE(v106) = 3;
      sub_22E70BB14();
      sub_22E70D65C(&type metadata for UploadResponseMessage.SimultaneousTransferErrorCodingKeys, &v106);
      v56 = sub_22E70CA00();
      sub_22E70D740(&type metadata for SimultaneousTransferError, v57, v58, v59, v56);
      swift_unknownObjectRelease();
      v65 = sub_22E70D634();
      v66(v65);
      v67 = sub_22E70D6F8();
      v68(v67);
      v73 = v86;
      sub_22E70D6E8(v106);
      goto LABEL_12;
    default:
      LOBYTE(v106) = 0;
      sub_22E70BCB8();
      sub_22E70D65C(&type metadata for UploadResponseMessage.EphemeralAssetCodingKeys, &v106);
      sub_22E6CF1CC(&qword_27DA6D198, &qword_22E729BC8);
      sub_22E70CAF8(&qword_27DA6D388, &qword_27DA6D390, &protocol conformance descriptor for AssetSkeleton, MEMORY[0x277D83978]);
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      swift_unknownObjectRelease();
      v69 = sub_22E70D634();
      v70(v69);
      v71 = sub_22E70D620();
      v72(v71);
      v73 = v85;
      sub_22E70D6E8(v106);
LABEL_12:
      swift_storeEnumTagMultiPayload();
      sub_22E70D608();
      v79 = v105;
      sub_22E70D5A0(v73, v105, v74);
      v81 = v104;
LABEL_13:
      sub_22E70D608();
      sub_22E70D5A0(v79, v47, v82);
      result = sub_22E6CF2F4(v81);
      break;
  }

  return result;
}

Swift::Int sub_22E70C990(uint64_t a1)
{
  Hasher.init(_seed:)();
  UploadResponseMessage.hash(into:)(v2);
  return Hasher._finalize()();
}

unint64_t sub_22E70CA00()
{
  result = qword_27DA6D370;
  if (!qword_27DA6D370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D370);
  }

  return result;
}

unint64_t sub_22E70CA54()
{
  result = qword_27DA6D378;
  if (!qword_27DA6D378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D378);
  }

  return result;
}

uint64_t sub_22E70CAA8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_22E6CF2AC(&qword_27DA6D190, &qword_22E729E30);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22E70CAF8(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_22E6CF2AC(&qword_27DA6D198, &qword_22E729BC8);
    sub_22E70CD98(a2, type metadata accessor for AssetSkeleton, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_22E70CBE4(uint64_t a1)
{
  sub_22E70CC74(319);
  if (v1 <= 0x3F)
  {
    sub_22E70CCCC(319);
    if (v2 <= 0x3F)
    {
      sub_22E70CDE0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_22E70CC74(uint64_t a1)
{
  if (!qword_27DA6D3B0)
  {
    type metadata accessor for AssetSkeleton(255);
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &qword_27DA6D3B0);
    }
  }
}

void sub_22E70CCCC(uint64_t a1)
{
  if (!qword_27DA6D3B8)
  {
    v2 = type metadata accessor for Asset(255);
    v3 = sub_22E70CD98(&qword_27DA6C610, type metadata accessor for Asset, &protocol conformance descriptor for Asset);
    v4 = sub_22E70CD98(&unk_27DA6C980, type metadata accessor for Asset, &protocol conformance descriptor for Asset);
    v5 = type metadata accessor for XPCResult(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_27DA6D3B8);
    }
  }
}

uint64_t sub_22E70CD98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

ValueMetadata *sub_22E70CDE0()
{
  result = qword_27DA6D3C0;
  if (!qword_27DA6D3C0)
  {
    result = &type metadata for SimultaneousTransferError;
    atomic_store(&type metadata for SimultaneousTransferError, &qword_27DA6D3C0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for UploadResponseMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_22E70CF14(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_22E70CFC4()
{
  result = qword_27DA6D3C8;
  if (!qword_27DA6D3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D3C8);
  }

  return result;
}

unint64_t sub_22E70D01C()
{
  result = qword_27DA6D3D0;
  if (!qword_27DA6D3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D3D0);
  }

  return result;
}

unint64_t sub_22E70D074()
{
  result = qword_27DA6D3D8;
  if (!qword_27DA6D3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D3D8);
  }

  return result;
}

unint64_t sub_22E70D0CC()
{
  result = qword_27DA6D3E0;
  if (!qword_27DA6D3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D3E0);
  }

  return result;
}

unint64_t sub_22E70D124()
{
  result = qword_27DA6D3E8;
  if (!qword_27DA6D3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D3E8);
  }

  return result;
}

unint64_t sub_22E70D17C()
{
  result = qword_27DA6D3F0;
  if (!qword_27DA6D3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D3F0);
  }

  return result;
}

unint64_t sub_22E70D1D4()
{
  result = qword_27DA6D3F8;
  if (!qword_27DA6D3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D3F8);
  }

  return result;
}

unint64_t sub_22E70D22C()
{
  result = qword_27DA6D400;
  if (!qword_27DA6D400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D400);
  }

  return result;
}

unint64_t sub_22E70D284()
{
  result = qword_27DA6D408;
  if (!qword_27DA6D408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D408);
  }

  return result;
}

unint64_t sub_22E70D2DC()
{
  result = qword_27DA6D410;
  if (!qword_27DA6D410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D410);
  }

  return result;
}

unint64_t sub_22E70D334()
{
  result = qword_27DA6D418;
  if (!qword_27DA6D418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D418);
  }

  return result;
}

unint64_t sub_22E70D38C()
{
  result = qword_27DA6D420;
  if (!qword_27DA6D420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D420);
  }

  return result;
}

unint64_t sub_22E70D3E4()
{
  result = qword_27DA6D428;
  if (!qword_27DA6D428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D428);
  }

  return result;
}

unint64_t sub_22E70D43C()
{
  result = qword_27DA6D430;
  if (!qword_27DA6D430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D430);
  }

  return result;
}

unint64_t sub_22E70D494()
{
  result = qword_27DA6D438;
  if (!qword_27DA6D438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D438);
  }

  return result;
}

uint64_t sub_22E70D4E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_22E6CF1CC(a3, a4);
  sub_22E6CF978();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_22E70D548(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22E6CF978();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_22E70D5A0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_22E6CF978();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_22E70D65C(uint64_t a1, uint64_t a2)
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_22E70D67C(uint64_t a1, uint64_t a2)
{

  return KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_22E70D740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t sub_22E70D760()
{

  return type metadata accessor for UploadResponseMessage(0);
}

uint64_t sub_22E70D780()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t static UploadRequestMessage.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if (a1[1])
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else if (a2[1])
  {
    return 0;
  }

  sub_22E6EFD24();
  v4 = v3;

  return v4 & 1;
}

uint64_t sub_22E70D810(uint64_t a1)
{
  v2 = sub_22E70DD70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E70D84C(uint64_t a1)
{
  v2 = sub_22E70DD70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22E70D888(uint64_t a1)
{
  v2 = sub_22E70DCC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E70D8C4(uint64_t a1)
{
  v2 = sub_22E70DCC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22E70D900(uint64_t a1)
{
  v2 = sub_22E70DD1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E70D93C(uint64_t a1)
{
  v2 = sub_22E70DD1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UploadRequestMessage.encode(to:)(void *a1)
{
  sub_22E6CF1CC(&qword_27DA6D450, &qword_22E72A570);
  sub_22E6CF988();
  v31 = v4;
  v32 = v3;
  sub_22E6D374C();
  MEMORY[0x28223BE20](v5);
  v7 = &v28 - v6;
  sub_22E6CF1CC(&qword_27DA6D458, &qword_22E72A578);
  sub_22E6CF988();
  v29 = v9;
  v30 = v8;
  sub_22E6D374C();
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  v34 = sub_22E6CF1CC(&qword_27DA6D460, &qword_22E72A580);
  sub_22E6CF988();
  v14 = v13;
  sub_22E6D374C();
  MEMORY[0x28223BE20](v15);
  v17 = &v28 - v16;
  v33 = *v1;
  v18 = *(v1 + 8);
  sub_22E6CF214(a1, a1[3]);
  sub_22E70DCC8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v18)
  {
    LOBYTE(v35) = 1;
    sub_22E70DD1C();
    sub_22E6F3B1C(&type metadata for UploadRequestMessage.StreamRequestsCodingKeys, &v35);
    v35 = v33;
    sub_22E6CF1CC(&qword_27DA6D478, &qword_22E72A588);
    sub_22E70EAA4();
    sub_22E70E498(v19, v20, v21, MEMORY[0x277D83948]);
    v22 = v32;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v31 + 8))(v7, v22);
  }

  else
  {
    LOBYTE(v35) = 0;
    sub_22E70DD70();
    sub_22E6F3B1C(&type metadata for UploadRequestMessage.BatchRequestsCodingKeys, &v35);
    v35 = v33;
    sub_22E6CF1CC(&qword_27DA6D478, &qword_22E72A588);
    sub_22E70EAA4();
    sub_22E70E498(v23, v24, v25, MEMORY[0x277D83948]);
    v26 = v30;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v29 + 8))(v12, v26);
  }

  return (*(v14 + 8))(v17, v18);
}

unint64_t sub_22E70DCC8()
{
  result = qword_27DA6D468;
  if (!qword_27DA6D468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D468);
  }

  return result;
}

unint64_t sub_22E70DD1C()
{
  result = qword_27DA6D470;
  if (!qword_27DA6D470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D470);
  }

  return result;
}

unint64_t sub_22E70DD70()
{
  result = qword_27DA6D490;
  if (!qword_27DA6D490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D490);
  }

  return result;
}

void UploadRequestMessage.hash(into:)()
{
  MEMORY[0x2318ECB90](*(v0 + 8));

  sub_22E6F2CF8();
}

Swift::Int UploadRequestMessage.hashValue.getter()
{
  v1 = *(v0 + 8);
  Hasher.init(_seed:)();
  MEMORY[0x2318ECB90](v1);
  sub_22E6F2CF8();
  return Hasher._finalize()();
}

uint64_t UploadRequestMessage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  sub_22E6CF1CC(&qword_27DA6D498, &qword_22E72A590);
  sub_22E6CF988();
  v49 = v3;
  v50 = v4;
  sub_22E6D374C();
  MEMORY[0x28223BE20](v5);
  v6 = sub_22E6CF1CC(&qword_27DA6D4A0, &qword_22E72A598);
  sub_22E6CF988();
  v48 = v7;
  sub_22E6D374C();
  MEMORY[0x28223BE20](v8);
  v10 = v47 - v9;
  v11 = sub_22E6CF1CC(&qword_27DA6D4A8, &unk_22E72A5A0);
  sub_22E6CF988();
  v51 = v12;
  sub_22E6D374C();
  MEMORY[0x28223BE20](v13);
  v15 = v47 - v14;
  sub_22E6CF214(a1, a1[3]);
  sub_22E70DCC8();
  v16 = v53;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v16)
  {
    return sub_22E6CF2F4(a1);
  }

  v47[2] = v6;
  v47[3] = v10;
  v53 = a1;
  v17 = v52;
  KeyedDecodingContainer.allKeys.getter();
  result = sub_22E6F376C();
  if (v20 == v21 >> 1)
  {
    v22 = v15;
LABEL_9:
    v32 = type metadata accessor for DecodingError();
    swift_allocError();
    v34 = v33;
    sub_22E6CF1CC(&qword_27DA6CD20, &qword_22E729070);
    *v34 = &type metadata for UploadRequestMessage;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x277D84160], v32);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v51 + 8))(v22, v11);
    a1 = v53;
    return sub_22E6CF2F4(a1);
  }

  v47[1] = 0;
  if (v20 >= (v21 >> 1))
  {
    __break(1u);
  }

  else
  {
    v23 = *(v19 + v20);
    sub_22E6F3764();
    v25 = v24;
    v27 = v26;
    swift_unknownObjectRelease();
    if (v25 != v27 >> 1)
    {
      v22 = v15;
      goto LABEL_9;
    }

    v28 = v23;
    if (v23)
    {
      LODWORD(v48) = v23;
      LOBYTE(v54) = 1;
      sub_22E70DD1C();
      sub_22E6F3B3C(&type metadata for UploadRequestMessage.StreamRequestsCodingKeys, &v54);
      sub_22E6CF1CC(&qword_27DA6D478, &qword_22E72A588);
      sub_22E70EA8C();
      sub_22E70E498(v29, v30, v31, MEMORY[0x277D83978]);
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      swift_unknownObjectRelease();
      v38 = sub_22E70EABC();
      v39(v38);
      v40 = sub_22E6F3918();
      v41(v40);
      v42 = v54;
      v28 = v48;
    }

    else
    {
      LOBYTE(v54) = 0;
      sub_22E70DD70();
      sub_22E6F3B3C(&type metadata for UploadRequestMessage.BatchRequestsCodingKeys, &v54);
      sub_22E6CF1CC(&qword_27DA6D478, &qword_22E72A588);
      sub_22E70EA8C();
      sub_22E70E498(v35, v36, v37, MEMORY[0x277D83978]);
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      swift_unknownObjectRelease();
      v43 = sub_22E6F3A70();
      v44(v43);
      v45 = sub_22E6F3918();
      v46(v45);
      v42 = v54;
      v17 = v52;
    }

    *v17 = v42;
    *(v17 + 8) = v28;
    return sub_22E6CF2F4(v53);
  }

  return result;
}