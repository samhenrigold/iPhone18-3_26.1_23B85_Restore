uint64_t StatementArguments.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a4@<X8>)
{
  v50 = a4;
  sub_1B21115E0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1B21115E0();
  v46 = v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v45 - v14;
  v16 = sub_1B22524C0();
  v17 = MEMORY[0x1B2741C60](v16, MEMORY[0x1E69E6158], &type metadata for DatabaseValue, MEMORY[0x1E69E6168]);
  v47 = v7;
  v18 = *(v7 + 16);
  v48 = a1;
  v18(v10, a1, a2);
  v52 = v15;
  sub_1B22524B0();
  v49 = a2;
  v53 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  while (1)
  {
    sub_1B2252B50();
    v19 = v60;
    if (!v60)
    {
      (*(v47 + 8))(v48, v49);
      result = (*(v46 + 8))(v52, v53);
      v44 = v50;
      *v50 = MEMORY[0x1E69E7CC0];
      v44[1] = v17;
      return result;
    }

    v20 = v59;
    v56 = v61;
    v57 = v62;
    v58 = v63;
    v21 = *(&v62 + 1);
    if (*(&v62 + 1))
    {
      v22 = v58;
      sub_1B21139A0(&v56, *(&v57 + 1));
      (*(v22 + 24))(v54, v21, v22);
      v23 = v54[0];
      v24 = v54[1];
      v25 = v55;
      sub_1B2113208(&v56);
    }

    else
    {
      sub_1B2122B98(&v56);
      v23 = 0;
      v24 = 0;
      v25 = 4;
    }

    swift_isUniquelyReferenced_nonNull_native();
    *&v56 = v17;
    sub_1B211E590();
    sub_1B2118304();
    if (__OFADD__(v28, v29))
    {
      break;
    }

    v30 = v26;
    v31 = v27;
    sub_1B21619D8(&qword_1EB7A1918, &qword_1B226A9E0);
    if (sub_1B2252E70())
    {
      v32 = sub_1B211E590();
      if ((v31 & 1) != (v33 & 1))
      {
        goto LABEL_17;
      }

      v30 = v32;
    }

    if (v31)
    {

      v17 = v56;
      v34 = *(v56 + 56) + 24 * v30;
      v35 = *v34;
      v36 = *(v34 + 8);
      *v34 = v23;
      *(v34 + 8) = v24;
      v37 = *(v34 + 16);
      *(v34 + 16) = v25;
      sub_1B2113A44(v35, v36, v37);
    }

    else
    {
      v17 = v56;
      *(v56 + 8 * (v30 >> 6) + 64) |= 1 << v30;
      v38 = (v17[6] + 16 * v30);
      *v38 = v20;
      v38[1] = v19;
      v39 = v17[7] + 24 * v30;
      *v39 = v23;
      *(v39 + 8) = v24;
      *(v39 + 16) = v25;
      v40 = v17[2];
      v41 = __OFADD__(v40, 1);
      v42 = v40 + 1;
      if (v41)
      {
        goto LABEL_16;
      }

      v17[2] = v42;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  result = sub_1B2253390();
  __break(1u);
  return result;
}

uint64_t static StatementArguments.+ infix(_:_:)@<X0>(void *a1@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  v4 = a1[1];
  *a3 = *a1;
  a3[1] = v4;
  v6 = *a2;

  return static StatementArguments.+= infix(_:_:)(a3, &v6);
}

uint64_t static StatementArguments.&+ infix(_:_:)@<X0>(void *a1@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  v3 = a1[1];
  *a3 = *a1;
  a3[1] = v3;
  v5 = *a2;

  StatementArguments.append(contentsOf:)(&v5);
}

BOOL static StatementArguments.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_1B21B8260(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_1B21D37A8(v2, v3);
}

double StatementArguments.init(dictionaryLiteral:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1B2230BAC(a1, &v4);
  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1B22317D4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B211EB44();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1B2231888(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B21619D8(&qword_1EB7A0E30, &unk_1B2259360);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B2231948(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1B2231964(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

sqlite3_int64 sub_1B223198C@<X0>(sqlite3_stmt *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1B223048C(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
  }

  return result;
}

uint64_t sub_1B22319C0@<X0>(sqlite3_stmt *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B22304BC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1B2231A40()
{
  sub_1B2112174();
  sub_1B211DAA0(v0, v1, v2);
  sub_1B2111C98();

  return AssociationToMany.forKey(_:)(v3, v4);
}

void sub_1B2231AB4()
{
  sub_1B2115DE8();
  sub_1B2117958();
  swift_getWitnessTable();
  v0 = sub_1B211819C();

  Association.distinct()(v0, v1, v2);
}

void sub_1B2231B3C()
{
  sub_1B211D80C();
  sub_1B2117958();
  swift_getWitnessTable();
  sub_1B21223B4();

  Association.limit(_:offset:)(v0, v1, v2);
}

void sub_1B2231BE4()
{
  sub_1B2112174();
  sub_1B2117958();
  swift_getWitnessTable();
  sub_1B21122E8();
  sub_1B212CF24();

  Association.with<A>(_:)(v0, v1, v2, v3);
}

void sub_1B2231CC4()
{
  sub_1B2112174();
  sub_1B2117958();
  swift_getWitnessTable();
  sub_1B2111C98();

  Association.group(_:)(v0, v1, v2);
}

void sub_1B2231D50()
{
  sub_1B2112174();
  sub_1B2117958();
  swift_getWitnessTable();
  sub_1B2111C98();

  Association.having(_:)(v0, v1, v2);
}

void sub_1B2231DDC()
{
  sub_1B2112174();
  sub_1B2117958();
  swift_getWitnessTable();
  sub_1B2111C98();

  Association.filter(_:)(v0, v1, v2);
}

void sub_1B2231E68()
{
  sub_1B2112174();
  sub_1B2117958();
  swift_getWitnessTable();
  sub_1B2111C98();

  Association.order(_:)(v0, v1, v2);
}

void sub_1B2231EF4()
{
  sub_1B2115DE8();
  sub_1B2117958();
  swift_getWitnessTable();
  v0 = sub_1B211819C();

  Association.reversed()(v0, v1, v2);
}

void sub_1B2231F7C()
{
  sub_1B2115DE8();
  sub_1B2117958();
  swift_getWitnessTable();
  v0 = sub_1B211819C();

  Association.unordered()(v0, v1, v2);
}

void sub_1B2232004()
{
  sub_1B2112174();
  sub_1B2117958();
  swift_getWitnessTable();
  sub_1B2111C98();

  Association.select(_:)(v0, v1, v2);
}

void sub_1B2232090()
{
  sub_1B2112174();
  sub_1B2117958();
  swift_getWitnessTable();
  sub_1B2111C98();

  Association.annotated(with:)(v0, v1, v2);
}

uint64_t sub_1B223211C(uint64_t a1)
{
  sub_1B2117958();
  swift_getWitnessTable();
  sub_1B212DFFC();

  return Association.databaseTableName.getter();
}

uint64_t Association.databaseTableName.getter()
{
  sub_1B211AEA8();
  result = v0();
  v2 = *(v5 + 16);
  if (v2)
  {
    memcpy(__dst, (v5 + 232 * v2 - 200), 0xE3uLL);
    sub_1B21819B8(__dst, v4);

    v3 = __dst[8];
    sub_1B2136148(&__dst[8], v4);
    sub_1B2181A14(__dst);

    sub_1B2137224(&__dst[8]);
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1B2232208()
{
  sub_1B211452C();
  sub_1B2117958();
  swift_getWitnessTable();
  sub_1B2114988();

  Association.aliased(_:)(v0, v1, v2);
}

void sub_1B2232298()
{
  sub_1B211452C();
  sub_1B2117958();
  swift_getWitnessTable();
  sub_1B2114988();

  Association._including(all:)();
}

void sub_1B2232318()
{
  sub_1B211452C();
  sub_1B2117958();
  swift_getWitnessTable();
  sub_1B2114988();

  Association._including(optional:)();
}

void sub_1B2232398()
{
  sub_1B211452C();
  sub_1B2117958();
  swift_getWitnessTable();
  sub_1B2114988();

  Association._including(required:)();
}

void sub_1B2232418()
{
  sub_1B211452C();
  sub_1B2117958();
  swift_getWitnessTable();
  sub_1B2114988();

  Association._joining(optional:)();
}

void sub_1B2232498()
{
  sub_1B211452C();
  sub_1B2117958();
  swift_getWitnessTable();
  sub_1B2114988();

  Association._joining(required:)();
}

uint64_t sub_1B2232574()
{
  sub_1B2112174();
  sub_1B211DAA0(v0, v1, v2);
  sub_1B2111C98();

  return AssociationToOne.forKey(_:)(v3, v4);
}

void sub_1B22325CC()
{
  sub_1B2115DE8();
  sub_1B2116454();
  swift_getWitnessTable();
  v0 = sub_1B211819C();

  Association.distinct()(v0, v1, v2);
}

void sub_1B2232614()
{
  sub_1B211D80C();
  sub_1B2116454();
  swift_getWitnessTable();
  sub_1B21223B4();

  Association.limit(_:offset:)(v0, v1, v2);
}

void sub_1B2232664()
{
  sub_1B2112174();
  sub_1B2116454();
  swift_getWitnessTable();
  sub_1B21122E8();
  sub_1B212CF24();

  Association.with<A>(_:)(v0, v1, v2, v3);
}

void sub_1B22326B8()
{
  sub_1B2112174();
  sub_1B2116454();
  swift_getWitnessTable();
  sub_1B2111C98();

  Association.group(_:)(v0, v1, v2);
}

void sub_1B2232708()
{
  sub_1B2112174();
  sub_1B2116454();
  swift_getWitnessTable();
  sub_1B2111C98();

  Association.having(_:)(v0, v1, v2);
}

void sub_1B2232758()
{
  sub_1B2112174();
  sub_1B2116454();
  swift_getWitnessTable();
  sub_1B2111C98();

  Association.filter(_:)(v0, v1, v2);
}

void sub_1B22327A8()
{
  sub_1B2112174();
  sub_1B2116454();
  swift_getWitnessTable();
  sub_1B2111C98();

  Association.order(_:)(v0, v1, v2);
}

void sub_1B22327F8()
{
  sub_1B2115DE8();
  sub_1B2116454();
  swift_getWitnessTable();
  v0 = sub_1B211819C();

  Association.reversed()(v0, v1, v2);
}

void sub_1B2232840()
{
  sub_1B2115DE8();
  sub_1B2116454();
  swift_getWitnessTable();
  v0 = sub_1B211819C();

  Association.unordered()(v0, v1, v2);
}

void sub_1B2232888()
{
  sub_1B2112174();
  sub_1B2116454();
  swift_getWitnessTable();
  sub_1B2111C98();

  Association.select(_:)(v0, v1, v2);
}

void sub_1B22328D8()
{
  sub_1B2112174();
  sub_1B2116454();
  swift_getWitnessTable();
  sub_1B2111C98();

  Association.annotated(with:)(v0, v1, v2);
}

uint64_t sub_1B2232928(uint64_t a1)
{
  sub_1B2116454();
  swift_getWitnessTable();
  sub_1B212DFFC();

  return Association.databaseTableName.getter();
}

void sub_1B2232968()
{
  sub_1B211452C();
  sub_1B2116454();
  swift_getWitnessTable();
  sub_1B2114988();

  Association.aliased(_:)(v0, v1, v2);
}

void sub_1B22329AC()
{
  sub_1B211452C();
  sub_1B2116454();
  swift_getWitnessTable();
  sub_1B2114988();

  Association._including(all:)();
}

void sub_1B22329F0()
{
  sub_1B211452C();
  sub_1B2116454();
  swift_getWitnessTable();
  sub_1B2114988();

  Association._including(optional:)();
}

void sub_1B2232A34()
{
  sub_1B211452C();
  sub_1B2116454();
  swift_getWitnessTable();
  sub_1B2114988();

  Association._including(required:)();
}

void sub_1B2232A78()
{
  sub_1B211452C();
  sub_1B2116454();
  swift_getWitnessTable();
  sub_1B2114988();

  Association._joining(optional:)();
}

void sub_1B2232ABC()
{
  sub_1B211452C();
  sub_1B2116454();
  swift_getWitnessTable();
  sub_1B2114988();

  Association._joining(required:)();
}

uint64_t sub_1B2232B00()
{
  sub_1B211AEA8();
  result = v0();
  v2 = *(v5 + 16);
  if (v2)
  {
    memcpy(__dst, (v5 + 232 * v2 - 200), 0xE3uLL);
    sub_1B21819B8(__dst, v4);

    v3 = __dst[0];
    sub_1B21C8064(__dst[0], __dst[1], __dst[2]);
    sub_1B2181A14(__dst);
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B2232BA4()
{
  sub_1B2112174();
  sub_1B211DAA0(v0, v1, v2);
  sub_1B2111C98();

  return AssociationToOne.forKey(_:)(v3, v4);
}

void sub_1B2232BFC()
{
  sub_1B2115DE8();
  sub_1B21168AC();
  swift_getWitnessTable();
  v0 = sub_1B211819C();

  Association.distinct()(v0, v1, v2);
}

void sub_1B2232C44()
{
  sub_1B211D80C();
  sub_1B21168AC();
  swift_getWitnessTable();
  sub_1B21223B4();

  Association.limit(_:offset:)(v0, v1, v2);
}

void sub_1B2232C94()
{
  sub_1B2112174();
  sub_1B21168AC();
  swift_getWitnessTable();
  sub_1B21122E8();
  sub_1B212CF24();

  Association.with<A>(_:)(v0, v1, v2, v3);
}

void sub_1B2232CE8()
{
  sub_1B2112174();
  sub_1B21168AC();
  swift_getWitnessTable();
  sub_1B2111C98();

  Association.group(_:)(v0, v1, v2);
}

void sub_1B2232D38()
{
  sub_1B2112174();
  sub_1B21168AC();
  swift_getWitnessTable();
  sub_1B2111C98();

  Association.having(_:)(v0, v1, v2);
}

void sub_1B2232D88()
{
  sub_1B2112174();
  sub_1B21168AC();
  swift_getWitnessTable();
  sub_1B2111C98();

  Association.filter(_:)(v0, v1, v2);
}

void sub_1B2232DD8()
{
  sub_1B2112174();
  sub_1B21168AC();
  swift_getWitnessTable();
  sub_1B2111C98();

  Association.order(_:)(v0, v1, v2);
}

void sub_1B2232E28()
{
  sub_1B2115DE8();
  sub_1B21168AC();
  swift_getWitnessTable();
  v0 = sub_1B211819C();

  Association.reversed()(v0, v1, v2);
}

void sub_1B2232E70()
{
  sub_1B2115DE8();
  sub_1B21168AC();
  swift_getWitnessTable();
  v0 = sub_1B211819C();

  Association.unordered()(v0, v1, v2);
}

void sub_1B2232EB8()
{
  sub_1B2112174();
  sub_1B21168AC();
  swift_getWitnessTable();
  sub_1B2111C98();

  Association.select(_:)(v0, v1, v2);
}

void sub_1B2232F08()
{
  sub_1B2112174();
  sub_1B21168AC();
  swift_getWitnessTable();
  sub_1B2111C98();

  Association.annotated(with:)(v0, v1, v2);
}

uint64_t sub_1B2232F58(uint64_t a1)
{
  sub_1B21168AC();
  swift_getWitnessTable();
  sub_1B212DFFC();

  return Association.databaseTableName.getter();
}

void sub_1B2232F98()
{
  sub_1B211452C();
  sub_1B21168AC();
  swift_getWitnessTable();
  sub_1B2114988();

  Association.aliased(_:)(v0, v1, v2);
}

void sub_1B2232FDC()
{
  sub_1B211452C();
  sub_1B21168AC();
  swift_getWitnessTable();
  sub_1B2114988();

  Association._including(all:)();
}

void sub_1B2233020()
{
  sub_1B211452C();
  sub_1B21168AC();
  swift_getWitnessTable();
  sub_1B2114988();

  Association._including(optional:)();
}

void sub_1B2233064()
{
  sub_1B211452C();
  sub_1B21168AC();
  swift_getWitnessTable();
  sub_1B2114988();

  Association._including(required:)();
}

void sub_1B22330A8()
{
  sub_1B211452C();
  sub_1B21168AC();
  swift_getWitnessTable();
  sub_1B2114988();

  Association._joining(optional:)();
}

void sub_1B22330EC()
{
  sub_1B211452C();
  sub_1B21168AC();
  swift_getWitnessTable();
  sub_1B2114988();

  Association._joining(required:)();
}

uint64_t sub_1B2233130()
{
  sub_1B2112174();
  sub_1B211DAA0(v0, v1, v2);
  sub_1B2111C98();

  return AssociationToMany.forKey(_:)(v3, v4);
}

void sub_1B2233188()
{
  sub_1B2115DE8();
  sub_1B2115AC4();
  swift_getWitnessTable();
  v0 = sub_1B211819C();

  Association.distinct()(v0, v1, v2);
}

void sub_1B22331D0()
{
  sub_1B211D80C();
  sub_1B2115AC4();
  swift_getWitnessTable();
  sub_1B21223B4();

  Association.limit(_:offset:)(v0, v1, v2);
}

void sub_1B2233220()
{
  sub_1B2112174();
  sub_1B2115AC4();
  swift_getWitnessTable();
  sub_1B21122E8();
  sub_1B212CF24();

  Association.with<A>(_:)(v0, v1, v2, v3);
}

void sub_1B2233274()
{
  sub_1B2112174();
  sub_1B2115AC4();
  swift_getWitnessTable();
  sub_1B2111C98();

  Association.group(_:)(v0, v1, v2);
}

void sub_1B22332C4()
{
  sub_1B2112174();
  sub_1B2115AC4();
  swift_getWitnessTable();
  sub_1B2111C98();

  Association.having(_:)(v0, v1, v2);
}

void sub_1B2233314()
{
  sub_1B2112174();
  sub_1B2115AC4();
  swift_getWitnessTable();
  sub_1B2111C98();

  Association.filter(_:)(v0, v1, v2);
}

void sub_1B2233364()
{
  sub_1B2112174();
  sub_1B2115AC4();
  swift_getWitnessTable();
  sub_1B2111C98();

  Association.order(_:)(v0, v1, v2);
}

void sub_1B22333B4()
{
  sub_1B2115DE8();
  sub_1B2115AC4();
  swift_getWitnessTable();
  v0 = sub_1B211819C();

  Association.reversed()(v0, v1, v2);
}

void sub_1B22333FC()
{
  sub_1B2115DE8();
  sub_1B2115AC4();
  swift_getWitnessTable();
  v0 = sub_1B211819C();

  Association.unordered()(v0, v1, v2);
}

void sub_1B2233444()
{
  sub_1B2112174();
  sub_1B2115AC4();
  swift_getWitnessTable();
  sub_1B2111C98();

  Association.select(_:)(v0, v1, v2);
}

void sub_1B2233494()
{
  sub_1B2112174();
  sub_1B2115AC4();
  swift_getWitnessTable();
  sub_1B2111C98();

  Association.annotated(with:)(v0, v1, v2);
}

uint64_t sub_1B22334E4(uint64_t a1)
{
  sub_1B2115AC4();
  swift_getWitnessTable();
  sub_1B212DFFC();

  return Association.databaseTableName.getter();
}

void sub_1B2233524()
{
  sub_1B211452C();
  sub_1B2115AC4();
  swift_getWitnessTable();
  sub_1B2114988();

  Association.aliased(_:)(v0, v1, v2);
}

void sub_1B2233568()
{
  sub_1B211452C();
  sub_1B2115AC4();
  swift_getWitnessTable();
  sub_1B2114988();

  Association._including(all:)();
}

void sub_1B22335AC()
{
  sub_1B211452C();
  sub_1B2115AC4();
  swift_getWitnessTable();
  sub_1B2114988();

  Association._including(optional:)();
}

void sub_1B22335F0()
{
  sub_1B211452C();
  sub_1B2115AC4();
  swift_getWitnessTable();
  sub_1B2114988();

  Association._including(required:)();
}

void sub_1B2233634()
{
  sub_1B211452C();
  sub_1B2115AC4();
  swift_getWitnessTable();
  sub_1B2114988();

  Association._joining(optional:)();
}

void sub_1B2233678()
{
  sub_1B211452C();
  sub_1B2115AC4();
  swift_getWitnessTable();
  sub_1B2114988();

  Association._joining(required:)();
}

uint64_t sub_1B22336BC()
{
  sub_1B2112174();
  sub_1B211DAA0(v0, v1, v2);
  sub_1B2111C98();

  return AssociationToOne.forKey(_:)(v3, v4);
}

void sub_1B2233714()
{
  sub_1B2115DE8();
  sub_1B2115478();
  swift_getWitnessTable();
  v0 = sub_1B211819C();

  Association.distinct()(v0, v1, v2);
}

void sub_1B223375C()
{
  sub_1B211D80C();
  sub_1B2115478();
  swift_getWitnessTable();
  sub_1B21223B4();

  Association.limit(_:offset:)(v0, v1, v2);
}

void sub_1B22337AC()
{
  sub_1B2112174();
  sub_1B2115478();
  swift_getWitnessTable();
  sub_1B21122E8();
  sub_1B212CF24();

  Association.with<A>(_:)(v0, v1, v2, v3);
}

void sub_1B2233800()
{
  sub_1B2112174();
  sub_1B2115478();
  swift_getWitnessTable();
  sub_1B2111C98();

  Association.group(_:)(v0, v1, v2);
}

void sub_1B2233850()
{
  sub_1B2112174();
  sub_1B2115478();
  swift_getWitnessTable();
  sub_1B2111C98();

  Association.having(_:)(v0, v1, v2);
}

void sub_1B22338A0()
{
  sub_1B2112174();
  sub_1B2115478();
  swift_getWitnessTable();
  sub_1B2111C98();

  Association.filter(_:)(v0, v1, v2);
}

void sub_1B22338F0()
{
  sub_1B2112174();
  sub_1B2115478();
  swift_getWitnessTable();
  sub_1B2111C98();

  Association.order(_:)(v0, v1, v2);
}

void sub_1B2233940()
{
  sub_1B2115DE8();
  sub_1B2115478();
  swift_getWitnessTable();
  v0 = sub_1B211819C();

  Association.reversed()(v0, v1, v2);
}

void sub_1B2233988()
{
  sub_1B2115DE8();
  sub_1B2115478();
  swift_getWitnessTable();
  v0 = sub_1B211819C();

  Association.unordered()(v0, v1, v2);
}

void sub_1B22339D0()
{
  sub_1B2112174();
  sub_1B2115478();
  swift_getWitnessTable();
  sub_1B2111C98();

  Association.select(_:)(v0, v1, v2);
}

void sub_1B2233A20()
{
  sub_1B2112174();
  sub_1B2115478();
  swift_getWitnessTable();
  sub_1B2111C98();

  Association.annotated(with:)(v0, v1, v2);
}

uint64_t sub_1B2233A70(uint64_t a1)
{
  sub_1B2115478();
  swift_getWitnessTable();
  sub_1B212DFFC();

  return Association.databaseTableName.getter();
}

void sub_1B2233AB0()
{
  sub_1B211452C();
  sub_1B2115478();
  swift_getWitnessTable();
  sub_1B2114988();

  Association.aliased(_:)(v0, v1, v2);
}

void sub_1B2233AF4()
{
  sub_1B211452C();
  sub_1B2115478();
  swift_getWitnessTable();
  sub_1B2114988();

  Association._including(all:)();
}

void sub_1B2233B38()
{
  sub_1B211452C();
  sub_1B2115478();
  swift_getWitnessTable();
  sub_1B2114988();

  Association._including(optional:)();
}

void sub_1B2233B7C()
{
  sub_1B211452C();
  sub_1B2115478();
  swift_getWitnessTable();
  sub_1B2114988();

  Association._including(required:)();
}

void sub_1B2233BC0()
{
  sub_1B211452C();
  sub_1B2115478();
  swift_getWitnessTable();
  sub_1B2114988();

  Association._joining(optional:)();
}

void sub_1B2233C04()
{
  sub_1B211452C();
  sub_1B2115478();
  swift_getWitnessTable();
  sub_1B2114988();

  Association._joining(required:)();
}

uint64_t sub_1B2233C48()
{
  sub_1B2112174();
  sub_1B211DAA0(v0, v1, v2);
  sub_1B2111C98();

  return AssociationToOne.forKey(_:)(v3, v4);
}

void sub_1B2233CA0()
{
  sub_1B2115DE8();
  sub_1B2112EB4();
  swift_getWitnessTable();
  v0 = sub_1B211819C();

  Association.distinct()(v0, v1, v2);
}

void sub_1B2233CE8()
{
  sub_1B211D80C();
  sub_1B2112EB4();
  swift_getWitnessTable();
  sub_1B21223B4();

  Association.limit(_:offset:)(v0, v1, v2);
}

void sub_1B2233D38()
{
  sub_1B2112174();
  sub_1B2112EB4();
  swift_getWitnessTable();
  sub_1B21122E8();
  sub_1B212CF24();

  Association.with<A>(_:)(v0, v1, v2, v3);
}

void sub_1B2233D8C()
{
  sub_1B2112174();
  sub_1B2112EB4();
  swift_getWitnessTable();
  sub_1B2111C98();

  Association.group(_:)(v0, v1, v2);
}

void sub_1B2233DDC()
{
  sub_1B2112174();
  sub_1B2112EB4();
  swift_getWitnessTable();
  sub_1B2111C98();

  Association.having(_:)(v0, v1, v2);
}

void sub_1B2233E2C()
{
  sub_1B2112174();
  sub_1B2112EB4();
  swift_getWitnessTable();
  sub_1B2111C98();

  Association.filter(_:)(v0, v1, v2);
}

void sub_1B2233E7C()
{
  sub_1B2112174();
  sub_1B2112EB4();
  swift_getWitnessTable();
  sub_1B2111C98();

  Association.order(_:)(v0, v1, v2);
}

void sub_1B2233ECC()
{
  sub_1B2115DE8();
  sub_1B2112EB4();
  swift_getWitnessTable();
  v0 = sub_1B211819C();

  Association.reversed()(v0, v1, v2);
}

void sub_1B2233F14()
{
  sub_1B2115DE8();
  sub_1B2112EB4();
  swift_getWitnessTable();
  v0 = sub_1B211819C();

  Association.unordered()(v0, v1, v2);
}

void sub_1B2233F5C()
{
  sub_1B2112174();
  sub_1B2112EB4();
  swift_getWitnessTable();
  sub_1B2111C98();

  Association.select(_:)(v0, v1, v2);
}

void sub_1B2233FAC()
{
  sub_1B2112174();
  sub_1B2112EB4();
  swift_getWitnessTable();
  sub_1B2111C98();

  Association.annotated(with:)(v0, v1, v2);
}

uint64_t sub_1B2233FFC(uint64_t a1)
{
  sub_1B2112EB4();
  swift_getWitnessTable();
  sub_1B212DFFC();

  return Association.databaseTableName.getter();
}

void sub_1B223403C()
{
  sub_1B211452C();
  sub_1B2112EB4();
  swift_getWitnessTable();
  sub_1B2114988();

  Association.aliased(_:)(v0, v1, v2);
}

void sub_1B2234080()
{
  sub_1B211452C();
  sub_1B2112EB4();
  swift_getWitnessTable();
  sub_1B2114988();

  Association._including(all:)();
}

void sub_1B22340C4()
{
  sub_1B211452C();
  sub_1B2112EB4();
  swift_getWitnessTable();
  sub_1B2114988();

  Association._including(optional:)();
}

void sub_1B2234108()
{
  sub_1B211452C();
  sub_1B2112EB4();
  swift_getWitnessTable();
  sub_1B2114988();

  Association._including(required:)();
}

void sub_1B223414C()
{
  sub_1B211452C();
  sub_1B2112EB4();
  swift_getWitnessTable();
  sub_1B2114988();

  Association._joining(optional:)();
}

void sub_1B2234190()
{
  sub_1B211452C();
  sub_1B2112EB4();
  swift_getWitnessTable();
  sub_1B2114988();

  Association._joining(required:)();
}

void sub_1B22341D4(unint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, unint64_t a4@<X8>)
{
  v10 = a4;
  v11 = *(a2 - 8);
  (*(v11 + 16))(a4, v4);
  v12 = (*(*(a3 + 16) + 24))(v27, a2);
  v14 = *v13;
  v15 = *(*v13 + 16);
  if (!v15)
  {
    __break(1u);
    goto LABEL_12;
  }

  v6 = v13;
  v29 = v12;
  v16 = (v14 + 232 * v15 - 200);
  memcpy(__dst, v16, 0xE3uLL);
  memcpy(__src, v16, 0xE3uLL);
  sub_1B21819B8(__dst, v25);
  (a1)(&__src[64]);
  if (v5)
  {
    memcpy(v25, __src, 0xE3uLL);
    v17 = *v6;
    a1 = *(*v6 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v6 = v17;
    if (isUniquelyReferenced_nonNull_native)
    {
      if (a1)
      {
        goto LABEL_5;
      }

      goto LABEL_13;
    }

LABEL_12:
    sub_1B21956E4();
    v17 = v22;
    *v6 = v22;
    if (a1)
    {
LABEL_5:
      if (a1 <= *(v17 + 16))
      {
        memcpy(v24, (v17 + 232 * a1 - 200), 0xE3uLL);
        memcpy((v17 + 232 * a1 - 200), v25, 0xE3uLL);
        sub_1B2181A14(v24);
        v29(v27, 1);
        (*(v11 + 8))(v10, a2);
        return;
      }

      goto LABEL_14;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_1B21956E4();
    v19 = v23;
    *v6 = v23;
    if (!v10)
    {
      goto LABEL_16;
    }

    goto LABEL_9;
  }

  memcpy(v25, __src, 0xE3uLL);
  v19 = *v6;
  v10 = *(*v6 + 16);
  v20 = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v19;
  if ((v20 & 1) == 0)
  {
    goto LABEL_15;
  }

  if (!v10)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_9:
  if (v10 <= *(v19 + 16))
  {
    v21 = (v19 + 232 * v10 - 200);
    memcpy(v24, v21, 0xE3uLL);
    memcpy(v21, v25, 0xE3uLL);
    sub_1B2181A14(v24);
    v29(v27, 0);
    return;
  }

LABEL_17:
  __break(1u);
}

void *sub_1B223447C(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, 0xA2uLL);
  v7 = a2;
  sub_1B21C4698();
  sub_1B2137224(__dst);
  return memcpy(__src, v5, 0xA2uLL);
}

void *sub_1B2234504(void *__src, uint64_t a2, void (*a3)(void *))
{
  memcpy(__dst, __src, 0xA2uLL);
  __srca[0] = a2;

  a3(__srca);
  if (v3)
  {

    __break(1u);
  }

  else
  {
    sub_1B21C4698();

    sub_1B2137224(__dst);
    return memcpy(__src, __srca, 0xA2uLL);
  }

  return result;
}

uint64_t Association.forKey(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1B21139A0(a1, a1[3]);
  v4 = sub_1B22534D0();
  (*(a3 + 32))(v4);
}

void *sub_1B2234670(char *__src, uint64_t a2)
{
  memcpy(__dst, __src, 0xA2uLL);
  v4 = __dst[0];
  v5 = __dst[1];
  v6 = __dst[2];
  memcpy(__srca, __src + 24, sizeof(__srca));
  if (__dst[2])
  {
    sub_1B2136148(__dst, v9);

    sub_1B21DA240(v7);

    a2 = v6;
  }

  else
  {
    sub_1B2136148(__dst, v9);

    sub_1B21DA6C0(v4, v5);
  }

  sub_1B2137224(__dst);

  *__src = v4;
  *(__src + 1) = v5;
  *(__src + 2) = a2;
  return memcpy(__src + 24, __srca, 0x8AuLL);
}

void *sub_1B2234760(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v10 = *a1;
  v11 = *(a1 + 2);
  memcpy(v9, a1 + 40, sizeof(v9));
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1B2235504;
  *(v7 + 24) = v6;

  *a1 = v10;
  *(a1 + 2) = v11;
  *(a1 + 3) = sub_1B2139E34;
  *(a1 + 4) = v7;
  return memcpy(a1 + 40, v9, 0x7AuLL);
}

uint64_t sub_1B2234858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = swift_allocObject();
  *(v7 + 16) = *(a1 + 24);
  *(v7 + 32) = sub_1B2235558;
  *(v7 + 40) = v6;
  *(a1 + 24) = sub_1B2155E14;
  *(a1 + 32) = v7;
}

uint64_t sub_1B2234900(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = a2(a1);
  if (!v2)
  {
    v5 = v4;
    v6 = *(v4 + 16);
    if (v6)
    {
      v17 = MEMORY[0x1E69E7CC0];
      sub_1B213A1C8();
      v3 = v17;
      v7 = v5 + 32;
      for (i = v6 - 1; ; --i)
      {
        sub_1B211EE68(v7, v13);
        v9 = v14;
        v10 = v15;
        sub_1B21139A0(v13, v14);
        (*(v10 + 8))(__src, v9, v10);
        sub_1B2113208(v13);
        v17 = v3;
        v11 = *(v3 + 16);
        if (v11 >= *(v3 + 24) >> 1)
        {
          sub_1B213A1C8();
          v3 = v17;
        }

        *(v3 + 16) = v11 + 1;
        memcpy((v3 + 184 * v11 + 32), __src, 0xB8uLL);
        if (!i)
        {
          break;
        }

        v7 += 40;
      }
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }
  }

  return v3;
}

uint64_t sub_1B2234A5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v9 = sub_1B213B0F4;
  if (v6)
  {
    v10 = swift_allocObject();
    v10[2] = v6;
    v10[3] = v7;
    v10[4] = sub_1B213B0F4;
    v10[5] = v8;
    v9 = sub_1B213B044;
    v8 = v10;
  }

  *(a1 + 40) = v9;
  *(a1 + 48) = v8;
}

void *sub_1B2234B24(void *__src, uint64_t a2, uint64_t a3)
{
  memcpy(__dst, __src, 0xA2uLL);
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;

  sub_1B214C6B4(sub_1B2235520, v6, v8);

  sub_1B2137224(__dst);
  return memcpy(__src, v8, 0xA2uLL);
}

uint64_t sub_1B2234BE4(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = a2(a1);
  if (!v2)
  {
    v5 = v4;
    v6 = *(v4 + 16);
    if (v6)
    {
      v17 = MEMORY[0x1E69E7CC0];
      sub_1B214D708();
      v3 = v17;
      v7 = v5 + 32;
      for (i = v6 - 1; ; --i)
      {
        sub_1B211EE68(v7, v13);
        v9 = v14;
        v10 = v15;
        sub_1B21139A0(v13, v14);
        (*(v10 + 8))(__src, v9, v10);
        sub_1B2113208(v13);
        v17 = v3;
        v11 = *(v3 + 16);
        if (v11 >= *(v3 + 24) >> 1)
        {
          sub_1B214D708();
          v3 = v17;
        }

        *(v3 + 16) = v11 + 1;
        memcpy((v3 + 168 * v11 + 32), __src, 0xA3uLL);
        if (!i)
        {
          break;
        }

        v7 += 40;
      }
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }
  }

  return v3;
}

__n128 sub_1B2234D54(char *__src)
{
  memcpy(__dst, __src, 0xA2uLL);
  v2 = *(__src + 1);
  v21 = *__src;
  v22 = v2;
  v23 = *(__src + 2);
  v24 = *(__src + 6);
  v20[0] = *(__src + 65);
  *(v20 + 15) = *(__src + 10);
  v3 = *(__src + 104);
  v4 = *(__src + 120);
  v5 = *(__src + 136);
  *(v19 + 10) = *(__src + 146);
  v18 = v4;
  v19[0] = v5;
  v17 = v3;
  sub_1B2136148(__dst, &v15);

  sub_1B21A3F40();
  v7 = v6;
  v9 = v8;
  sub_1B2137224(__dst);

  v10 = v22;
  *__src = v21;
  *(__src + 1) = v10;
  *(__src + 2) = v23;
  v11 = MEMORY[0x1E69E7CC0];
  *(__src + 6) = v24;
  *(__src + 7) = v11;
  __src[64] = 0;
  *(__src + 65) = v20[0];
  *(__src + 10) = *(v20 + 15);
  *(__src + 11) = v7;
  *(__src + 12) = v9;
  result = v17;
  v13 = v18;
  v14 = v19[0];
  *(__src + 146) = *(v19 + 10);
  *(__src + 136) = v14;
  *(__src + 120) = v13;
  *(__src + 104) = result;
  return result;
}

__n128 sub_1B2234E98(__n128 *__src, uint64_t a2, uint64_t a3)
{
  memcpy(__dst, __src, sizeof(__dst));
  v6 = __src[7].n128_i64[0];
  v7 = __src[7].n128_i64[1];
  v11 = __src[8];
  v12 = __src[9];
  v13 = __src[10].n128_u16[0];
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1B223553C;
  *(v9 + 24) = v8;

  sub_1B216C5B4(v6, v7);
  memcpy(__src, __dst, 0x70uLL);
  __src[7].n128_u64[0] = sub_1B2139E34;
  __src[7].n128_u64[1] = v9;
  result = v11;
  __src[8] = v11;
  __src[9] = v12;
  __src[10].n128_u16[0] = v13;
  return result;
}

uint64_t sub_1B2234F9C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = a2(a1);
  if (!v2)
  {
    v5 = v4;
    v6 = *(v4 + 16);
    if (v6)
    {
      v17 = MEMORY[0x1E69E7CC0];
      sub_1B213CA68();
      v3 = v17;
      v7 = v5 + 32;
      for (i = v6 - 1; ; --i)
      {
        sub_1B211EE68(v7, v13);
        v9 = v14;
        v10 = v15;
        sub_1B21139A0(v13, v14);
        (*(v10 + 8))(__src, v9, v10);
        sub_1B2113208(v13);
        v17 = v3;
        v11 = *(v3 + 16);
        if (v11 >= *(v3 + 24) >> 1)
        {
          sub_1B213CA68();
          v3 = v17;
        }

        *(v3 + 16) = v11 + 1;
        memcpy((v3 + 168 * v11 + 32), __src, 0xA3uLL);
        if (!i)
        {
          break;
        }

        v7 += 40;
      }
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }
  }

  return v3;
}

uint64_t sub_1B22350F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 128);
  v7 = *(a1 + 136);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v9 = sub_1B2181AEC;
  if (v6)
  {
    v10 = swift_allocObject();
    v10[2] = v6;
    v10[3] = v7;
    v10[4] = sub_1B2181AEC;
    v10[5] = v8;
    v9 = sub_1B213B044;
    v8 = v10;
  }

  *(a1 + 128) = v9;
  *(a1 + 136) = v8;
}

uint64_t sub_1B22351C0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5, uint64_t a6)
{
  v11 = *(*(a6 + 8) + 16);
  (*(v11 + 8))(&v14, a5, v11);
  v13 = v14;

  sub_1B220A2E8(&v13, a2, a3, a4);
  if (v6)
  {

    __break(1u);
  }

  else
  {

    v14 = v13;
    return (*(v11 + 16))(&v14, a5, v11);
  }

  return result;
}

__n128 sub_1B22352B4(__n128 *a1)
{
  v2 = v1[2].n128_u8[0];
  result = v1[1];
  a1[9] = result;
  a1[10].n128_u16[0] = v2;
  return result;
}

uint64_t NSString.databaseValue.getter@<X0>(uint64_t a1@<X8>)
{
  result = sub_1B22522A0();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = 2;
  return result;
}

id static NSString.fromDatabaseValue(_:)(uint64_t a1)
{
  v2 = sub_1B22522F0();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v5 == 3)
  {
    sub_1B22522E0();
    v6 = sub_1B22522C0();
    if (v7)
    {
      v3 = v6;
      v4 = v7;
      return sub_1B21FE00C(v3, v4);
    }
  }

  else if (v5 == 2)
  {

    return sub_1B21FE00C(v3, v4);
  }

  return 0;
}

id sub_1B22356B4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = static NSString.fromDatabaseValue(_:)(a1);
  *a2 = result;
  return result;
}

void *DatabaseCollation.__allocating_init(_:function:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  v8[4] = sub_1B2235BAC;
  v8[5] = v9;
  return v8;
}

uint64_t DatabaseCollation.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void *DatabaseCollation.init(_:function:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;
  v4[4] = sub_1B2235D54;
  v4[5] = v7;
  return v4;
}

uint64_t sub_1B22357F0(int a1, uint64_t a2, int a3, uint64_t a4)
{
  v4 = sub_1B22522F0();
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1B22522E0();
  result = sub_1B2252280();
  if (v6)
  {
    v7 = result;
    v8 = v6;
    sub_1B22522E0();
    result = sub_1B2252280();
    if (v9)
    {
      v10 = sub_1B218578C(v7, v8, result, v9);

      return v10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B223595C(int a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void *, void, void, unint64_t, unint64_t))
{
  v6 = sub_1B22522F0();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1B22522E0();
  result = sub_1B2252280();
  if (v8)
  {
    v9 = result;
    v10 = v8;
    sub_1B22522E0();
    result = sub_1B2252280();
    if (v11)
    {
      v14[2] = v9;
      v14[3] = v10;
      v14[0] = result;
      v14[1] = v11;
      v12 = sub_1B2156990();
      v13 = a5(v14, MEMORY[0x1E69E6158], MEMORY[0x1E69E6158], v12, v12);

      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B2235A8C(int a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = sub_1B22522F0();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1B22522E0();
  result = sub_1B2252280();
  if (v8)
  {
    v9 = result;
    v10 = v8;
    sub_1B22522E0();
    result = sub_1B2252280();
    if (v11)
    {
      v12 = a5(v9, v10, result, v11);

      return v12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t DatabaseCollation.deinit()
{

  return v0;
}

uint64_t DatabaseCollation.__deallocating_deinit()
{
  DatabaseCollation.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t DatabaseCollation.hashValue.getter()
{
  sub_1B2253420();
  MEMORY[0x1B2742F10](0);
  return sub_1B2253470();
}

unint64_t sub_1B2235CB0()
{
  result = qword_1ED85E828;
  if (!qword_1ED85E828)
  {
    type metadata accessor for DatabaseCollation();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED85E828);
  }

  return result;
}

uint64_t sub_1B2235D58(uint64_t a1, _BYTE *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4, uint64_t a5)
{
  swift_retain_n();
  if (Database.isInsideTransaction.getter())
  {
    v11 = MEMORY[0x1E69E7CC0];
    v12 = MEMORY[0x1E69E7CC8];
    v32 = MEMORY[0x1E69E7CC0];
    v33 = MEMORY[0x1E69E7CC8];
    v13._countAndFlagsBits = 0x4E494F5045564153;
    v13._object = 0xEE00626472672054;
    v14 = &v32;
    Database.execute(sql:arguments:)(v13, *(&v10 - 1));

    if (!v15)
    {
      v16 = OBJC_IVAR____TtC12GRDBInternal8Database_isInsideTransactionBlock;
      v34 = *(a1 + OBJC_IVAR____TtC12GRDBInternal8Database_isInsideTransactionBlock);
      *(a1 + OBJC_IVAR____TtC12GRDBInternal8Database_isInsideTransactionBlock) = 1;

      v17 = sub_1B2238F64(a2, a3, a4, a5);
      if (v17)
      {
        v19 = 0;
      }

      else
      {
        sub_1B2119EFC(sub_1B2153AF4);
        *(a1 + v16) = v34;
        v32 = v11;
        v33 = v12;
        v29._object = 0x80000001B2270C20;
        v30.values._rawValue = &v32;
        v29._countAndFlagsBits = 0xD000000000000016;
        Database.execute(sql:arguments:)(v29, v30);
        if (!v31)
        {

          goto LABEL_12;
        }

        v19 = v31;
      }

      v32 = v11;
      v33 = v12;
      v20._countAndFlagsBits = 0xD000000000000026;
      v20._object = 0x80000001B2270BF0;
      v21 = &v32;
      Database.execute(sql:arguments:)(v20, *(&v18 - 1));
      v23 = v22;

      if (v22 || (v32 = v11, v33 = v12, v25._object = 0x80000001B2270C20, v26 = &v32, v25._countAndFlagsBits = 0xD000000000000016, Database.execute(sql:arguments:)(v25, *(&v24 - 1)), v23 = v27, , , v27))
      {
        if (v19)
        {
        }
      }

      else if (!v19)
      {
        goto LABEL_12;
      }

      swift_willThrow();
LABEL_12:
      *(a1 + v16) = v34;
    }
  }

  else
  {
    LOBYTE(v32) = 3;

    sub_1B2236404(&v32, a1, a2, a3, a4, a5);
  }
}

void sub_1B2235FFC()
{
  sub_1B21325E0();
  v2 = v1;
  sub_1B21140E4(v3, v1);

  if ((Database.isInsideTransaction.getter() & 1) == 0)
  {

    sub_1B21184CC();
    sub_1B223655C(v7, v8, v9);
LABEL_12:

    goto LABEL_13;
  }

  v4._countAndFlagsBits = sub_1B211453C();
  Database.execute(sql:arguments:)(v4, v5);
  if (!v6)
  {

    v10 = OBJC_IVAR____TtC12GRDBInternal8Database_isInsideTransactionBlock;
    v11 = *(v0 + OBJC_IVAR____TtC12GRDBInternal8Database_isInsideTransactionBlock);
    *(v0 + OBJC_IVAR____TtC12GRDBInternal8Database_isInsideTransactionBlock) = 1;
    v15 = sub_1B221EAA4(v2, v12, v13, v14);
    if (v15)
    {
      v23 = 0;
    }

    else
    {
      sub_1B2115ADC();
      sub_1B21130FC();
      sub_1B2119EFC(v24);
      *(v0 + v10) = v11;
      v25._countAndFlagsBits = sub_1B21122F8();
      Database.execute(sql:arguments:)(v25, v26);
      if (!v27)
      {

        goto LABEL_11;
      }

      v23 = v27;
    }

    v16._countAndFlagsBits = sub_1B212CF30();
    Database.execute(sql:arguments:)(v16, v17);
    v19 = v18;

    if (v18 || (v20._countAndFlagsBits = sub_1B21122F8(), Database.execute(sql:arguments:)(v20, v21), v19 = v22, , , v22))
    {
      if (v23)
      {
      }
    }

    else if (!v23)
    {
      goto LABEL_11;
    }

    swift_willThrow();
LABEL_11:
    *(v0 + v10) = v11;
    goto LABEL_12;
  }

LABEL_13:
  sub_1B213CD90();
}

void sub_1B2236220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1B21325E0();
  a21 = v23;
  a22 = v24;
  v25 = v22;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  if (Database.isInsideTransaction.getter())
  {
    v32 = MEMORY[0x1E69E7CC8];
    a9 = MEMORY[0x1E69E7CC0];
    a10 = MEMORY[0x1E69E7CC8];
    sub_1B211453C();
    sub_1B2116AE4();
    Database.execute(sql:arguments:)(v33, v34);
    sub_1B2124C08();

    if (!v25)
    {
      v36 = OBJC_IVAR____TtC12GRDBInternal8Database_isInsideTransactionBlock;
      v37 = *(v31 + OBJC_IVAR____TtC12GRDBInternal8Database_isInsideTransactionBlock);
      *(v31 + OBJC_IVAR____TtC12GRDBInternal8Database_isInsideTransactionBlock) = 1;
      v27(&a9, v35);
      *v29 = 0;
      sub_1B2115ADC();
      sub_1B21130FC();
      sub_1B2116AE4();
      sub_1B2119EFC(v38);
      v50 = v37;
      *(v31 + v36) = v37;
      v51 = MEMORY[0x1E69E7CC0];
      a9 = MEMORY[0x1E69E7CC0];
      a10 = v32;
      sub_1B21122F8();
      sub_1B2116AE4();
      Database.execute(sql:arguments:)(v52, v53);
      if (!v54)
      {

        goto LABEL_11;
      }

      a9 = v51;
      a10 = v32;
      v39._countAndFlagsBits = sub_1B212CF30();
      Database.execute(sql:arguments:)(v39, v40);

      if (v41)
      {
        v42 = v41;
      }

      else
      {
        a9 = v51;
        a10 = v32;
        sub_1B21122F8();
        sub_1B213CEB0();
        Database.execute(sql:arguments:)(v47, v48);

        if (!v49)
        {
LABEL_10:
          swift_willThrow();
LABEL_11:
          *(v31 + v36) = v50;
          goto LABEL_12;
        }

        v42 = v49;
      }

      goto LABEL_10;
    }
  }

  else
  {
    sub_1B223C224();
    sub_1B22366B0(v43, v44, v45, v46);
  }

LABEL_12:
  sub_1B213CD90();
}

uint64_t sub_1B2236404(char *a1, uint64_t a2, _BYTE *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5, uint64_t a6)
{
  v18 = *a1;

  Database.beginTransaction(_:)(&v18);
  if (!v11)
  {
    v12 = OBJC_IVAR____TtC12GRDBInternal8Database_isInsideTransactionBlock;
    v13 = *(a2 + OBJC_IVAR____TtC12GRDBInternal8Database_isInsideTransactionBlock);
    *(a2 + OBJC_IVAR____TtC12GRDBInternal8Database_isInsideTransactionBlock) = 1;

    if (sub_1B2238FC0(a3, a4, a5, a6))
    {
      v14 = 0;
    }

    else
    {
      sub_1B2119EFC(sub_1B2153AF4);
      *(a2 + v12) = v13;
      Database.commit()();
      if (!v17)
      {
        goto LABEL_9;
      }

      v14 = v17;
    }

    Database.rollback()();
    if (v15)
    {
      if (v14)
      {
      }
    }

    else if (!v14)
    {
LABEL_9:
      *(a2 + v12) = v13;
    }

    swift_willThrow();
    goto LABEL_9;
  }
}

uint64_t sub_1B223655C(char *a1, uint64_t a2, uint64_t a3)
{
  v16 = *a1;

  Database.beginTransaction(_:)(&v16);
  if (!v4)
  {
    v5 = OBJC_IVAR____TtC12GRDBInternal8Database_isInsideTransactionBlock;
    v6 = *(a2 + OBJC_IVAR____TtC12GRDBInternal8Database_isInsideTransactionBlock);
    *(a2 + OBJC_IVAR____TtC12GRDBInternal8Database_isInsideTransactionBlock) = 1;

    v11 = sub_1B221EAA4(v7, v8, v9, v10);

    if (v11)
    {
      v12 = 0;
    }

    else
    {
      sub_1B2119EFC(sub_1B2153AF4);
      *(a2 + v5) = v6;
      Database.commit()();
      if (!v15)
      {
        goto LABEL_9;
      }

      v12 = v15;
    }

    Database.rollback()();
    if (v13)
    {
      if (v12)
      {
      }
    }

    else if (!v12)
    {
LABEL_9:
      *(a2 + v5) = v6;
    }

    swift_willThrow();
    goto LABEL_9;
  }
}

void sub_1B22366B0(char *a1, uint64_t a2, _BYTE *a3, void (*a4)(uint64_t *__return_ptr))
{
  v13 = *a1;
  Database.beginTransaction(_:)(&v13);
  if (!v7)
  {
    v8 = OBJC_IVAR____TtC12GRDBInternal8Database_isInsideTransactionBlock;
    v9 = *(a2 + OBJC_IVAR____TtC12GRDBInternal8Database_isInsideTransactionBlock);
    *(a2 + OBJC_IVAR____TtC12GRDBInternal8Database_isInsideTransactionBlock) = 1;
    a4(&v14);
    *a3 = 0;
    sub_1B2115ADC();
    sub_1B21130FC();
    sub_1B2116AE4();
    sub_1B2119EFC(v10);
    *(a2 + v8) = v9;
    sub_1B2116AE4();
    Database.commit()();
    if (v11)
    {
      Database.rollback()();
      if (v12)
      {
      }

      swift_willThrow();
    }

    *(a2 + v8) = v9;
  }
}

void sub_1B22367B4(char *a1, uint64_t a2, void (**a3)(uint64_t), uint64_t a4)
{
  v15 = *a1;
  Database.beginTransaction(_:)(&v15);
  if (!v7)
  {
    v8 = OBJC_IVAR____TtC12GRDBInternal8Database_isInsideTransactionBlock;
    v9 = *(a2 + OBJC_IVAR____TtC12GRDBInternal8Database_isInsideTransactionBlock);
    *(a2 + OBJC_IVAR____TtC12GRDBInternal8Database_isInsideTransactionBlock) = 1;
    a3[3](a4);
    sub_1B21A37E4();
    sub_1B213CEB0();
    Database.foreignKeyViolations()();
    sub_1B213CEB0();
    sub_1B21BCE80();

    sub_1B2115ADC();
    sub_1B21130FC();
    sub_1B2119EFC(v10);
    *(a2 + v8) = v9;
    Database.commit()();
    if (!v11)
    {
      *(a2 + v8) = v9;
      v13 = *a3;
      sub_1B2158CA0(&v13);

      goto LABEL_8;
    }

    Database.rollback()();
    if (v12)
    {
    }

    swift_willThrow();
    *(a2 + v8) = v9;
  }

  v14 = *a3;
  sub_1B2158CA0(&v14);

LABEL_8:

  sub_1B2149864();
}

uint64_t sub_1B223694C(uint64_t a1, uint64_t a2, void (**a3)(uint64_t), uint64_t a4)
{
  sub_1B2111748();
  Database.beginTransaction(_:)(v7);
  if (!v8)
  {
    v9 = OBJC_IVAR____TtC12GRDBInternal8Database_isInsideTransactionBlock;
    v10 = *(a2 + OBJC_IVAR____TtC12GRDBInternal8Database_isInsideTransactionBlock);
    *(a2 + OBJC_IVAR____TtC12GRDBInternal8Database_isInsideTransactionBlock) = 1;
    a3[3](a4);
    sub_1B21A37E4();
    sub_1B21130FC();
    sub_1B2119EFC(v11);
    *(a2 + v9) = v10;
    Database.commit()();
    if (!v12)
    {
      *(a2 + v9) = v10;
      v15 = *a3;
      sub_1B2158CA0(&v15);
    }

    Database.rollback()();
    if (v13)
    {
    }

    swift_willThrow();
    *(a2 + v9) = v10;
  }

  v16 = *a3;
  sub_1B2158CA0(&v16);
}

uint64_t sub_1B2236ABC(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  sub_1B2111748();
  Database.beginTransaction(_:)(v11);
  if (!v12)
  {
    v13 = OBJC_IVAR____TtC12GRDBInternal8Database_isInsideTransactionBlock;
    v14 = *(a2 + OBJC_IVAR____TtC12GRDBInternal8Database_isInsideTransactionBlock);
    *(a2 + OBJC_IVAR____TtC12GRDBInternal8Database_isInsideTransactionBlock) = 1;
    if (sub_1B2204220(a3 & 0x101, a4, a5, a6))
    {
      v15 = 0;
    }

    else
    {
      sub_1B2115ADC();
      sub_1B21130FC();
      sub_1B2119EFC(v18);
      *(a2 + v13) = v14;
      Database.commit()();
      if (!v19)
      {
        goto LABEL_9;
      }

      v15 = v19;
    }

    Database.rollback()();
    if (v16)
    {
      if (v15)
      {
      }
    }

    else if (!v15)
    {
LABEL_9:
      *(a2 + v13) = v14;
      goto LABEL_10;
    }

    swift_willThrow();
    goto LABEL_9;
  }

LABEL_10:
}

uint64_t sub_1B2236BF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  sub_1B2111748();
  Database.beginTransaction(_:)(v8);
  if (!v9)
  {
    v10 = OBJC_IVAR____TtC12GRDBInternal8Database_isInsideTransactionBlock;
    v11 = *(a2 + OBJC_IVAR____TtC12GRDBInternal8Database_isInsideTransactionBlock);
    *(a2 + OBJC_IVAR____TtC12GRDBInternal8Database_isInsideTransactionBlock) = 1;
    if (a3(a5))
    {
      v12 = 0;
    }

    else
    {
      sub_1B21130FC();
      sub_1B2119EFC(v15);
      *(a2 + v10) = v11;
      Database.commit()();
      if (!v16)
      {
        goto LABEL_9;
      }

      v12 = v16;
    }

    Database.rollback()();
    if (v13)
    {
      if (v12)
      {
      }
    }

    else if (!v12)
    {
LABEL_9:
      *(a2 + v10) = v11;
    }

    swift_willThrow();
    goto LABEL_9;
  }
}

uint64_t sub_1B2236D30()
{
  sub_1B212425C();
  v0 = type metadata accessor for Configuration(0);
  v1 = (v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v3 = 1;
  *(v3 + 1) = 0;
  *(v3 + 2) = 0;
  *(v3 + 23) = 0;
  *(v3 + 4) = MEMORY[0x1E69E7CC0];
  *(v3 + 20) = 0;
  *(v3 + 6) = 0;
  *(v3 + 7) = 0;
  v3[64] = 2;
  *(v3 + 9) = 0;
  *(v3 + 10) = 0;
  v3[88] = -1;
  *(v3 + 12) = 5;
  sub_1B2252110();
  *&v3[v1[19]] = 0;
  *&v3[v1[20]] = 0;
  v3[v1[21]] = 1;
  v3[v1[22]] = 0;
  v4 = &v3[v1[23]];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v3[v1[24]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v3[v1[25]];
  type metadata accessor for DatabaseQueue();
  *v6 = 0;
  *(v6 + 1) = 0;
  swift_allocObject();
  DatabaseQueue.init(configuration:)(v3);
  sub_1B21115FC();
  sub_1B2237BD0(v7, v8, v9, v10, 0, 0);
}

id sub_1B2236EE0(void (*a1)(uint64_t))
{
  [*(v1 + 24) lock];
  swift_beginAccess();
  a1(v1 + 16);
  swift_endAccess();
  return [*(v1 + 24) unlock];
}

uint64_t sub_1B2236F80()
{
  sub_1B2146B30();
  sub_1B2253450();
  return sub_1B2253470();
}

uint64_t sub_1B2236FF8(unsigned __int8 a1)
{
  sub_1B2253420();
  sub_1B2253450();
  return sub_1B2253470();
}

uint64_t sub_1B2237040()
{
  sub_1B2253420();
  sub_1B21184CC();
  sub_1B2252370();
  return sub_1B2253470();
}

uint64_t sub_1B223708C(uint64_t a1, uint64_t (*a2)(_BYTE *, uint64_t))
{
  sub_1B2253420();
  a2(v5, a1);
  return sub_1B2253470();
}

uint64_t sub_1B22370F4(uint64_t a1, char a2)
{
  sub_1B2252370();
}

uint64_t sub_1B22371B4(uint64_t a1, char a2)
{
  sub_1B2252370();
}

uint64_t sub_1B2237270(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
    case 3:
      sub_1B212D8B0();
      break;
    default:
      break;
  }

  sub_1B2252370();
}

uint64_t sub_1B2237364(uint64_t a1, char a2)
{
  sub_1B2252370();
}

uint64_t sub_1B22373CC(uint64_t a1, char a2)
{
  sub_1B2252370();
}

uint64_t sub_1B2237490(uint64_t a1, char a2)
{
  sub_1B2253420();
  sub_1B2252370();

  return sub_1B2253470();
}

uint64_t sub_1B2237538(uint64_t a1, unsigned __int8 a2)
{
  sub_1B2253420();
  sub_1B2253450();
  return sub_1B2253470();
}

uint64_t sub_1B223757C(uint64_t a1)
{
  sub_1B2253420();
  sub_1B21184CC();
  sub_1B2252370();
  return sub_1B2253470();
}

uint64_t sub_1B22375DC(uint64_t a1, char a2)
{
  sub_1B2253420();
  sub_1B2252370();

  return sub_1B2253470();
}

uint64_t sub_1B2237670(uint64_t a1, uint64_t a2, uint64_t (*a3)(_BYTE *, uint64_t))
{
  sub_1B2253420();
  a3(v6, a2);
  return sub_1B2253470();
}

uint64_t sub_1B22376BC(uint64_t a1, char a2)
{
  sub_1B2253420();
  sub_1B2253450();
  return sub_1B2253470();
}

uint64_t sub_1B223770C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_1B2237764@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t Database.ConflictResolution.rawValue.getter()
{
  result = 0x4B4341424C4C4F52;
  switch(*v0)
  {
    case 1:
      result = 0x54524F4241;
      break;
    case 2:
      result = 1279869254;
      break;
    case 3:
      result = 0x45524F4E4749;
      break;
    case 4:
      result = 0x4543414C504552;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1B2237844(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4, uint64_t a5)
{
  v8 = a3;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  HIBYTE(_38[0]) = 1;

  if ((a1 & 1) == 0)
  {

    sub_1B2235D58(a2, _38 + 7, v8, a4, a5);

    if (!v5)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  sub_1B2152610();
  if (v5)
  {
LABEL_9:

LABEL_10:

    return;
  }

  sub_1B2236220(a2, _38 + 7, sub_1B223C0C8, v15, v11, v12, v13, v14, v15[0], v15[1], v16, v17, v18, v19, v20, _38[0], _38[1], _38[2], _38[3], _38[4], _38[5], _38[6]);
  v8 = 0;
  a1 = 0;
  sub_1B215476C();
  while (1)
  {
    if (a1)
    {
      swift_willThrow();
      goto LABEL_9;
    }

    if (v8)
    {
      break;
    }

LABEL_5:
    if ((_38[0] & 0x100000000000000) == 0)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1B2237994(uint64_t *a1, void (*a2)(uint64_t))
{
  if (*a1)
  {
    v5 = OBJC_IVAR____TtC12GRDBInternal8Database_isRecordingSelectedRegion;
    v9 = *(v2 + OBJC_IVAR____TtC12GRDBInternal8Database_isRecordingSelectedRegion);
    v6 = OBJC_IVAR____TtC12GRDBInternal8Database_selectedRegion;
    sub_1B21118B8();
    swift_beginAccess();
    v7 = *(v2 + v6);
    *(v2 + v5) = 1;
    sub_1B211B358();

    *(v2 + v6) = sub_1B2252190();

    a2(v8);
    sub_1B2238724(a1, v2, v9, v7);
  }

  else
  {
    (a2)();
  }

  sub_1B2149864();
}

uint64_t sub_1B2237AAC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[2] = a1;
  return sub_1B2113C20(sub_1B223C0AC, v3);
}

uint64_t Database.ForeignKeyAction.rawValue.getter()
{
  result = 0x45444143534143;
  switch(*v0)
  {
    case 1:
      result = 0x5443495254534552;
      break;
    case 2:
      result = 0x4C4C554E20544553;
      break;
    case 3:
      result = 0x4146454420544553;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B2237BD0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[2] = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  return sub_1B2237AAC(sub_1B223C084, v7);
}

void sub_1B2237C18(uint64_t a1, int a2, void (*a3)(void), uint64_t a4, void (*a5)(uint64_t *))
{
  sub_1B21115FC();
  swift_beginAccess();
  v11 = *(a1 + 16);
  sub_1B21115FC();
  swift_beginAccess();
  v12 = sqlite3_backup_init(v11, "main", *(v5 + 16), "main");
  if (v12)
  {
    v13 = v12;
    if (v12 == 1)
    {
      v14 = sub_1B21AC298();
      sub_1B21152FC(&type metadata for DatabaseError, v14);
      sub_1B2144148();
      if (sqlite3_errstr(1))
      {
        v15 = sub_1B22523F0();
        *v5 = 1;
        *(v5 + 8) = v15;
        *(v5 + 16) = v16;
        goto LABEL_21;
      }

      goto LABEL_31;
    }

    if (a3)
    {
      a3();
    }

    while (1)
    {
      v20 = sqlite3_backup_step(v13, a2);
      v21 = sqlite3_backup_pagecount(v13);
      v22 = sqlite3_backup_remaining(v13);
      if (v20)
      {
        break;
      }

      if (a5)
      {
        v26 = v22;
        v27 = v21;
        v28 = 0;
        a5(&v26);
        if (v6)
        {
          goto LABEL_26;
        }
      }
    }

    if (v20 != 101)
    {
      Database.lastErrorMessage.getter();
      sub_1B212E310();
      v25 = sub_1B21AC298();
      sub_1B21152FC(&type metadata for DatabaseError, v25);
      sub_1B2144148();
      if (!a5)
      {
        if (!sqlite3_errstr(v20))
        {
          goto LABEL_33;
        }

        sub_1B22523F0();
        sub_1B212E310();
      }

      *a1 = v20;
      *(a1 + 8) = a1;
      *(a1 + 16) = a5;
      sub_1B211AEBC();
      swift_willThrow();
LABEL_26:
      sqlite3_backup_finish(v13);
      goto LABEL_27;
    }

    if (a5)
    {
      v26 = v22;
      v27 = v21;
      v28 = 1;
      a5(&v26);
      if (v6)
      {
      }
    }

    v23 = sqlite3_backup_finish(v13);
    if (!v23)
    {
      Database.clearSchemaCache()();
      return;
    }

    v18 = v23;
    v17 = a1;
    Database.lastErrorMessage.getter();
    sub_1B212E310();
    v24 = sub_1B21AC298();
    sub_1B21152FC(&type metadata for DatabaseError, v24);
    sub_1B2144148();
    if (a5)
    {
      goto LABEL_20;
    }

    if (!sqlite3_errstr(v18))
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      return;
    }

    goto LABEL_7;
  }

  v17 = a1;
  Database.lastErrorCode.getter(&v26);
  v18 = v26;
  Database.lastErrorMessage.getter();
  sub_1B212E310();
  v19 = sub_1B21AC298();
  sub_1B21152FC(&type metadata for DatabaseError, v19);
  sub_1B2144148();
  if (!a5)
  {
    if (!sqlite3_errstr(v18))
    {
      goto LABEL_32;
    }

LABEL_7:
    sub_1B22523F0();
    sub_1B212E310();
  }

LABEL_20:
  *v17 = v18;
  *(v17 + 8) = a1;
  *(v17 + 16) = a5;
LABEL_21:
  sub_1B211AEBC();
LABEL_27:
  swift_willThrow();
}

uint64_t sub_1B2237EC0()
{

  sub_1B217146C(v1, v0);
}

uint64_t Database.sqliteConnection.setter(uint64_t a1)
{
  sub_1B21118B8();
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_1B2237FBC()
{
  swift_beginAccess();
  if (off_1EB7A3328)
  {
    v0 = sub_1B22380D4;
  }

  else
  {
    v0 = 0;
  }

  return sub_1B223C05C(v0);
}

uint64_t sub_1B2238020(uint64_t a1, int a2, uint64_t a3)
{
  result = swift_beginAccess();
  v6 = off_1EB7A3328;
  if (off_1EB7A3328)
  {
    if (a3)
    {
      v7 = qword_1EB7A3330;

      v8 = sub_1B22523F0();
      v10 = a2;
      v6(&v10, v8, v9);
      sub_1B2112F4C(v6, v7);
    }
  }

  return result;
}

void *static Database.logError.getter()
{
  sub_1B21115FC();
  swift_beginAccess();
  v0 = off_1EB7A3328;
  sub_1B2112328(off_1EB7A3328, qword_1EB7A3330);
  return v0;
}

uint64_t static Database.logError.setter(void *a1, uint64_t a2)
{
  sub_1B21118B8();
  swift_beginAccess();
  off_1EB7A3328 = a1;
  qword_1EB7A3330 = a2;
  sub_1B2112328(a1, a2);
  v4 = sub_1B2112F9C();
  sub_1B2112F4C(v4, v5);
  sub_1B2237FBC();
  return sub_1B2112F4C(a1, a2);
}

uint64_t (*static Database.logError.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  sub_1B2117F5C(&off_1EB7A3328, a1);
  return sub_1B2238200;
}

uint64_t sub_1B2238200(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1B2237FBC();
  }

  return result;
}

uint64_t sub_1B2238234@<X0>(uint64_t (**a1)()@<X8>)
{
  swift_beginAccess();
  v2 = off_1EB7A3328;
  v3 = qword_1EB7A3330;
  if (off_1EB7A3328)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_1B223C018;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  *a1 = v5;
  a1[1] = v4;
  return sub_1B2112328(v2, v3);
}

uint64_t sub_1B22382CC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1B223BFE0;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1B2112328(v1, v2);
  return static Database.logError.setter(v4, v3);
}

uint64_t Database.description.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GRDBInternal8Database_description);

  return v1;
}

uint64_t Database.debugDescription.getter()
{
  v0 = sub_1B2121264(OBJC_IVAR____TtC12GRDBInternal8Database_description);
  MEMORY[0x1B2741EB0](v0);
  MEMORY[0x1B2741EB0](62, 0xE100000000000000);
  return 0x736162617461443CLL;
}

uint64_t Database.lastErrorCode.getter@<X0>(_DWORD *a1@<X8>)
{
  sub_1B2117330();
  swift_beginAccess();
  result = sqlite3_errcode(*(v1 + 16));
  *a1 = result;
  return result;
}

uint64_t sub_1B2238460(char a1)
{

  sub_1B2236E90(a1);
}

uint64_t sub_1B22384B0(uint64_t result, int a2)
{
  if (result)
  {
    v3 = result + OBJC_IVAR____TtC12GRDBInternal8Database_busyCallback;
    v4 = *(result + OBJC_IVAR____TtC12GRDBInternal8Database_busyCallback);

    if (v4)
    {
      v5 = *(v3 + 8);

      v6 = v4(a2);

      sub_1B2112F4C(v4, v5);
      return v6 & 1;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Database.maximumStatementArgumentCount.getter()
{
  sub_1B2117330();
  swift_beginAccess();
  return sqlite3_limit(*(v0 + 16), 9, -1);
}

uint64_t Database.remove(function:)()
{
  sub_1B213CF68();
  sub_1B211A33C(v2);
  sub_1B223A83C(v1);
  swift_endAccess();

  return sub_1B224D078(v0);
}

uint64_t sub_1B22385E4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
    v9 = *(result + 32);

    v10 = v9(a2, a3, a4, a5);

    if (v10 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v10 <= 0x7FFFFFFF)
    {
      return v10;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Database.remove(collation:)()
{
  sub_1B213CF68();
  sub_1B211A33C(v2);
  sub_1B223A9BC(v1);
  swift_endAccess();

  sub_1B2117330();
  swift_beginAccess();
  v3 = *(v0 + 16);
  v4 = sub_1B2252350();
  sqlite3_create_collation_v2(v3, (v4 + 32), 1, 0, 0, 0);
}

uint64_t sub_1B2238724(uint64_t *a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = OBJC_IVAR____TtC12GRDBInternal8Database_selectedRegion;
  swift_beginAccess();
  v9 = *a1;
  v11 = *(a2 + v8);
  v12 = v9;

  v14.tableRegions.value._rawValue = &v11;
  DatabaseRegion.union(_:)(v14);

  *a1 = v13;

  *(a2 + OBJC_IVAR____TtC12GRDBInternal8Database_isRecordingSelectedRegion) = a3;
  if (a3)
  {
    v11 = *(a2 + v8);
    v12 = a4;

    v15.tableRegions.value._rawValue = &v11;
    DatabaseRegion.union(_:)(v15);

    *(a2 + v8) = v13;
  }

  else
  {
    *(a2 + v8) = a4;
  }
}

uint64_t Database.trace(options:_:)(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *a1;
  type metadata accessor for SchedulingWatchdog();
  v8 = sub_1B2113B28();
  if (sub_1B2117B40(v8))
  {
    v9 = (v3 + OBJC_IVAR____TtC12GRDBInternal8Database_trace);
    v10 = *(v3 + OBJC_IVAR____TtC12GRDBInternal8Database_trace);
    v11 = *(v4 + OBJC_IVAR____TtC12GRDBInternal8Database_trace + 8);
    *v9 = a2;
    v9[1] = a3;
    sub_1B2112328(a2, a3);
    sub_1B2112F4C(v10, v11);
    if (v7 && a2)
    {
      sub_1B2122734();
      swift_beginAccess();
      v12 = v4[2];
      v13 = sub_1B2238A98;
      v14 = v7;
      v15 = v4;
    }

    else
    {
      sub_1B2122734();
      swift_beginAccess();
      sub_1B21115FC();
    }

    return sqlite3_trace_v2(v12, v14, v13, v15);
  }

  else
  {
    sub_1B2111608();
    sub_1B2112ECC();
    result = sub_1B2252EC0();
    __break(1u);
  }

  return result;
}

uint64_t sub_1B2238930(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a2)
  {
    v6 = result;

    sub_1B22389A0(v6, a3, a4, MEMORY[0x1E69E5998]);

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B22389A0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *(v4 + OBJC_IVAR____TtC12GRDBInternal8Database_trace);
  if (v5)
  {
    v6 = *(v4 + OBJC_IVAR____TtC12GRDBInternal8Database_trace + 8);
    if (result == 2)
    {
      if (a2 && a3)
      {
        v8 = *(v4 + OBJC_IVAR____TtC12GRDBInternal8Database_configuration + 26);
        v9 = *a3 / 1000000000.0;
        v10 = a2;
        v11 = 0;
        v12 = a4;
        v13 = v8 | 0x8000000000000080;
        v14 = *&v9;
        goto LABEL_10;
      }
    }

    else if (result == 1 && a2 && a3)
    {
      v7 = *(v4 + OBJC_IVAR____TtC12GRDBInternal8Database_configuration + 26) | 0x80;
      v10 = a2;
      v11 = a3;
      v12 = a4;
      v13 = v7;
      v14 = 0;
LABEL_10:

      v5(&v10);
      sub_1B2112F4C(v5, v6);
      return sub_1B223C048(v10, v11, v12, v13, v14);
    }
  }

  return result;
}

Swift::tuple_walFrameCount_Int_checkpointedFrameCount_Int __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Database.checkpoint(_:on:)(GRDBInternal::Database::CheckpointMode _, Swift::String_optional on)
{
  sub_1B212425C();
  v4 = v3;
  v21 = *MEMORY[0x1E69E9840];
  v6 = *v5;
  type metadata accessor for SchedulingWatchdog();
  if ((sub_1B2117B40(v2) & 1) == 0)
  {
    goto LABEL_15;
  }

  pnCkpt = -1;
  pnLog = -1;
  sub_1B21115FC();
  swift_beginAccess();
  v7 = *(v2 + 16);
  if (v4)
  {
    sub_1B2115B7C();
    v8 = (sub_1B2252350() + 32);
  }

  else
  {
    v8 = 0;
  }

  v9 = sqlite3_wal_checkpoint_v2(v7, v8, v6, &pnLog, &pnCkpt);
  swift_unknownObjectRelease();
  if (!v9)
  {
    goto LABEL_9;
  }

  if (v9 != 21)
  {
    v7 = v2;
    v13 = Database.lastErrorMessage.getter();
    v15 = v14;
    v16 = sub_1B21AC298();
    sub_1B21152FC(&type metadata for DatabaseError, v16);
    sub_1B2144148();
    if (v15)
    {
LABEL_13:
      *v7 = v9;
      *(v7 + 1) = v13;
      *(v7 + 2) = v15;
      sub_1B211AEBC();
      v11 = swift_willThrow();
      goto LABEL_16;
    }

    if (sqlite3_errstr(v9))
    {
LABEL_12:
      v13 = sub_1B22523F0();
      v15 = v17;
      goto LABEL_13;
    }

    __break(1u);
LABEL_15:
    sub_1B2111608();
    sub_1B2112ECC();
    v11 = sub_1B2252EC0();
    __break(1u);
    goto LABEL_16;
  }

  v10 = sub_1B21AC298();
  sub_1B21152FC(&type metadata for DatabaseError, v10);
  sub_1B2144148();
  if (sqlite3_errstr(21))
  {
    goto LABEL_12;
  }

  __break(1u);
LABEL_9:
  v12 = pnCkpt;
  v11 = pnLog;
LABEL_16:
  result.checkpointedFrameCount = v12;
  result.walFrameCount = v11;
  return result;
}

uint64_t sub_1B2238C50()
{
  sub_1B2122088();
  result = sub_1B2252290();
  qword_1EB7A3338 = result;
  return result;
}

uint64_t sub_1B2238CA0()
{
  result = sub_1B2252290();
  qword_1EB7A3340 = result;
  return result;
}

id sub_1B2238CFC(void *a1, void **a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = *a2;

  return v4;
}

const char *sub_1B2238D48()
{
  ppStmt[1] = *MEMORY[0x1E69E9840];
  v1 = (v0 + OBJC_IVAR____TtC12GRDBInternal8Database_journalModeCache);
  if (*(v0 + OBJC_IVAR____TtC12GRDBInternal8Database_journalModeCache + 8))
  {
    v2 = *v1;
LABEL_5:

    return v2;
  }

  ppStmt[0] = 0;
  swift_beginAccess();
  sqlite3_prepare_v2(*(v0 + 16), "PRAGMA journal_mode", -1, ppStmt, 0);
  sqlite3_step(ppStmt[0]);
  if (sqlite3_column_text(ppStmt[0], 0))
  {
    v2 = sub_1B2252400();
    *v1 = v2;
    v1[1] = v3;

    sqlite3_finalize(ppStmt[0]);
    goto LABEL_5;
  }

  Database.lastErrorCode.getter(&v11);
  v5 = v11;
  v6 = Database.lastErrorMessage.getter();
  v8 = v7;
  sub_1B21AC298();
  swift_allocError();
  v2 = v9;
  if (v8)
  {
LABEL_10:
    *v2 = v5;
    *(v2 + 8) = v6;
    *(v2 + 16) = v8;
    *(v2 + 24) = 0xD000000000000013;
    *(v2 + 32) = 0x80000001B226F510;
    *(v2 + 40) = 0;
    *(v2 + 48) = 0;
    *(v2 + 56) = 0;
    swift_willThrow();
    sqlite3_finalize(ppStmt[0]);
    return v2;
  }

  result = sqlite3_errstr(v5);
  if (result)
  {
    v6 = sub_1B22523F0();
    v8 = v10;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Database.rollback()()
{
  if (Database.isInsideTransaction.getter())
  {
    sub_1B21173F4();
    v0._countAndFlagsBits = 0xD000000000000014;
    Database.execute(sql:arguments:)(v0, v1);
  }
}

uint64_t sub_1B2238F64(_BYTE *a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3, uint64_t a4)
{
  a2(&v7, a4);
  if (!v4)
  {
    *a1 = 0;
  }

  return 0;
}

uint64_t sub_1B2238FC0(_BYTE *a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3, uint64_t a4)
{

  LOBYTE(a3) = sub_1B2238F64(a1, a2, a3, a4);

  return a3 & 1;
}

uint64_t Database.TransactionKind.rawValue.getter()
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

GRDBInternal::Database::CheckpointMode_optional __swiftcall Database.CheckpointMode.init(rawValue:)(Swift::Int32 rawValue)
{
  if (rawValue >= 4)
  {
    v2 = 4;
  }

  else
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1B223912C@<X0>(_DWORD *a1@<X8>)
{
  result = Database.CheckpointMode.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t Database.ColumnType.rawValue.getter()
{
  v1 = *v0;

  return v1;
}

void *sub_1B223927C@<X0>(void *a1@<X0>, void *(*a2)(void *__return_ptr, void, void)@<X3>, void *a3@<X8>)
{
  result = a2(v6, *a1, a1[1]);
  v5 = v6[1];
  *a3 = v6[0];
  a3[1] = v5;
  return result;
}

GRDBInternal::Database::ConflictResolution_optional __swiftcall Database.ConflictResolution.init(rawValue:)(Swift::String rawValue)
{
  sub_1B212D608();
  v2 = sub_1B2252F40();

  v4 = 5;
  if (v2 < 5)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1B2239394@<X0>(uint64_t *a1@<X8>)
{
  result = Database.ConflictResolution.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

GRDBInternal::Database::ForeignKeyAction_optional __swiftcall Database.ForeignKeyAction.init(rawValue:)(Swift::String rawValue)
{
  sub_1B212D608();
  v2 = sub_1B2252F40();

  v4 = 4;
  if (v2 < 4)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1B2239490@<X0>(uint64_t *a1@<X8>)
{
  result = Database.ForeignKeyAction.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B223953C@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = Database.TracingOptions.init(rawValue:)(*a1, &v4);
  *a2 = v4;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_1B223957C@<X0>(_DWORD *a1@<X8>)
{
  result = Database.TracingOptions.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B2239600()
{
  if ((*(v0 + 24) & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  if (!*(v0 + 8) && !sqlite3_sql(*v0))
  {
    __break(1u);
LABEL_8:
    sub_1B2111608();
    sub_1B2112A88();
    result = sub_1B2252EC0();
    __break(1u);
    return result;
  }

  sub_1B22523F0();
  if (qword_1ED85D650 != -1)
  {
    sub_1B2117970(&qword_1ED85D650);
  }

  v1 = sub_1B2251B80();
  sub_1B2156958(v1, qword_1ED8618E8);
  sub_1B2156990();
  v2 = sub_1B2252B80();

  return v2;
}

uint64_t Database.TraceEvent.Statement.expandedSQL.getter()
{
  v1 = *v0;
  if (v0[3] < 0)
  {
    v2 = (v0[2])(*v0);
    if (v2)
    {
      v3 = v2;
      sub_1B22523F0();
      if (qword_1ED85D650 != -1)
      {
        sub_1B2117970(&qword_1ED85D650);
      }

      v4 = sub_1B2251B80();
      sub_1B2156958(v4, qword_1ED8618E8);
      sub_1B2156990();
      v1 = sub_1B2252B80();

      sqlite3_free(v3);
    }

    else
    {
      return 0;
    }
  }

  else
  {
  }

  return v1;
}

uint64_t Database.TraceEvent.Statement.description.getter()
{
  v1 = *v0;
  v2 = v0[2];
  v3 = *(v0 + 24);
  if (v3 < 0)
  {
    if (v3)
    {
      v4 = v2(*v0);
      if (v4)
      {
        v5 = v4;
        sub_1B22523F0();
        if (qword_1ED85D650 != -1)
        {
          sub_1B2117970(&qword_1ED85D650);
        }

        v6 = sub_1B2251B80();
        sub_1B2156958(v6, qword_1ED8618E8);
        sub_1B2156990();
        v1 = sub_1B2252B80();

        sqlite3_free(v5);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return sub_1B2239600();
    }
  }

  else
  {
    sub_1B223B3DC(*v0, v0[1], v2, v3);
  }

  return v1;
}

uint64_t Database.TraceEvent.description.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[2];
  v5 = v3[3];
  if (v5 < 0)
  {
    sub_1B21619D8(&qword_1EB7A2BC8, &qword_1B2260538);
    v9 = swift_allocObject();
    v10 = MEMORY[0x1E69E63B0];
    *(v9 + 16) = xmmword_1B22546B0;
    sub_1B211463C(v9, v10);
    MEMORY[0x1B2741EB0](8307, 0xE200000000000000);
    v11 = Database.TraceEvent.Statement.description.getter();
    MEMORY[0x1B2741EB0](v11);
  }

  else if ((v5 & 0x80) != 0)
  {
    if (v5)
    {
      v12 = v4(*v3, a2, a3, v5);
      if (v12)
      {
        v13 = v12;
        sub_1B22523F0();
        if (qword_1ED85D650 != -1)
        {
          sub_1B2117970(&qword_1ED85D650);
        }

        v14 = sub_1B2251B80();
        sub_1B2156958(v14, qword_1ED8618E8);
        sub_1B2156990();
        sub_1B2252B80();
        sub_1B214CC54();
        sqlite3_free(v13);
      }
    }

    else
    {
      sub_1B2239600();
    }
  }

  else
  {
    v6 = sub_1B211187C();
    sub_1B223B3DC(v6, v7, v4, v8);
  }

  return sub_1B211187C();
}

uint64_t Database.TraceEvent.expandedDescription.getter()
{
  v1 = *v0;
  v2 = v0[2];
  v3 = v0[3];
  if (v3 < 0)
  {
    sub_1B21619D8(&qword_1EB7A2BC8, &qword_1B2260538);
    v7 = swift_allocObject();
    v8 = MEMORY[0x1E69E63B0];
    *(v7 + 16) = xmmword_1B22546B0;
    sub_1B211463C(v7, v8);
    MEMORY[0x1B2741EB0](8307, 0xE200000000000000);
    if ((v3 & 0x80) != 0)
    {
      v12 = v2(v1);
      if (v12)
      {
        v13 = v12;
        sub_1B22523F0();
        if (qword_1ED85D650 != -1)
        {
          sub_1B2117970(&qword_1ED85D650);
        }

        v14 = sub_1B2251B80();
        sub_1B2156958(v14, qword_1ED8618E8);
        sub_1B2156990();
        sub_1B2252B80();
        sub_1B214CC54();
        sqlite3_free(v13);
      }
    }

    else
    {
    }

    v15 = sub_1B211187C();
    MEMORY[0x1B2741EB0](v15);
  }

  else if ((v3 & 0x80) != 0)
  {
    v9 = v2(*v0);
    if (v9)
    {
      v10 = v9;
      sub_1B22523F0();
      if (qword_1ED85D650 != -1)
      {
        sub_1B2117970(&qword_1ED85D650);
      }

      v11 = sub_1B2251B80();
      sub_1B2156958(v11, qword_1ED8618E8);
      sub_1B2156990();
      sub_1B2252B80();
      sub_1B214CC54();
      sqlite3_free(v10);
    }
  }

  else
  {
    v4 = sub_1B211187C();
    sub_1B223B3DC(v4, v5, v2, v6);
  }

  return sub_1B211187C();
}

uint64_t Database.TransactionCompletion.hashValue.getter()
{
  sub_1B2146B30();
  MEMORY[0x1B2742F10](v0 & 1);
  return sub_1B2253470();
}

uint64_t sub_1B2239D38(uint64_t a1)
{
  v2 = *v1;
  sub_1B2253420();
  Database.TransactionCompletion.hash(into:)(v4, v2);
  return sub_1B2253470();
}

GRDBInternal::Database::TransactionKind_optional __swiftcall Database.TransactionKind.init(rawValue:)(Swift::String rawValue)
{
  sub_1B212D608();
  v2 = sub_1B2252F40();

  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1B2239DD0()
{
  sub_1B2146B30();
  MEMORY[0x1B2742F10](v0);
  return sub_1B2253470();
}

uint64_t sub_1B2239E3C@<X0>(uint64_t *a1@<X8>)
{
  result = Database.TransactionKind.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B223A83C(uint64_t a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    type metadata accessor for DatabaseFunction();
    sub_1B2253420();
    sub_1B2252370();
    sub_1B2253450();
    v7 = sub_1B2253470();
    v8 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v9 = v7 & v8;
      if (((*(v3 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v7 & v8)) & 1) == 0)
      {
        break;
      }

      if (static DatabaseFunction.== infix(_:_:)(*(*(v3 + 48) + 8 * v9), a1))
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v11 = *v1;
        v13 = *v1;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1B22492CC();
          v11 = v13;
        }

        v6 = *(*(v11 + 48) + 8 * v9);
        sub_1B223B074(v9);
        *v1 = v13;
        return v6;
      }

      v7 = v9 + 1;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = sub_1B2252C50();

  if ((v5 & 1) == 0)
  {

    return 0;
  }

  v6 = sub_1B223AB48(v4, a1);

  return v6;
}

uint64_t sub_1B223A9BC(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    type metadata accessor for DatabaseCollation();
    sub_1B2253420();
    MEMORY[0x1B2742F10](0);
    v8 = sub_1B2253470();
    v9 = ~(-1 << *(v4 + 32));
    while (1)
    {
      v10 = v8 & v9;
      if (((*(v4 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v8 & v9)) & 1) == 0)
      {
        break;
      }

      v12 = static DatabaseCollation.== infix(_:_:)(v11, a1);

      if (v12)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v14 = *v2;
        v16 = *v2;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1B22492E0();
          v14 = v16;
        }

        v7 = *(*(v14 + 48) + 8 * v10);
        sub_1B223B244(v10);
        *v2 = v16;
        return v7;
      }

      v8 = v10 + 1;
    }

    return 0;
  }

  if (v4 < 0)
  {
    v5 = *v1;
  }

  else
  {
    v5 = v4 & 0xFFFFFFFFFFFFFF8;
  }

  v6 = sub_1B2252C50();

  if ((v6 & 1) == 0)
  {

    return 0;
  }

  v7 = sub_1B223ACA0(v5, a1);

  return v7;
}

uint64_t sub_1B223ACA0(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v5 = sub_1B2252C20();
  v6 = swift_unknownObjectRetain();
  v7 = sub_1B22474C8(v6, v5);
  v15 = v7;
  sub_1B2253420();
  MEMORY[0x1B2742F10](0);
  v8 = sub_1B2253470();
  v9 = ~(-1 << *(v7 + 32));

  while (1)
  {
    v10 = v8 & v9;
    if (((*(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v8 & v9)) & 1) == 0)
    {
      break;
    }

    type metadata accessor for DatabaseCollation();

    v12 = static DatabaseCollation.== infix(_:_:)(v11, a2);

    if (v12)
    {

      v13 = *(*(v7 + 48) + 8 * v10);
      sub_1B223B244(v10);
      if (static DatabaseCollation.== infix(_:_:)(a2, v13))
      {
        *v3 = v15;
        return v13;
      }

      __break(1u);
      break;
    }

    v8 = v10 + 1;
  }

  __break(1u);
  return result;
}

unint64_t sub_1B223AE00(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1B2252BE0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v28 = 24 * v6;
        v10 = v3;
        v11 = *(v3 + 48) + 24 * v6;
        v13 = *v11;
        v12 = *(v11 + 8);
        v14 = *(v11 + 16);
        sub_1B2253420();
        switch(v14)
        {
          case 1:
            if ((v13 & 0x7FFFFFFFFFFFFFFFLL) != 0)
            {
              v15 = *&v13;
            }

            else
            {
              v15 = 0.0;
            }

            goto LABEL_12;
          case 2:
            sub_1B2113A20(v13, v12, 2);
            sub_1B2252370();
            break;
          case 3:
            sub_1B2113A20(v13, v12, 3);
            sub_1B2251DF0();
            break;
          case 4:
            MEMORY[0x1B2742F10](0);
            break;
          default:
            v15 = v13;
LABEL_12:
            MEMORY[0x1B2742F40](*&v15);
            break;
        }

        v16 = sub_1B2253470();
        sub_1B2113A44(v13, v12, v14);
        v17 = v16 & v7;
        if (v2 >= v9)
        {
          v18 = v17 < v9 || v2 < v17;
        }

        else
        {
          v18 = v17 < v9 && v2 < v17;
        }

        v3 = v10;
        if (!v18)
        {
          v19 = *(v10 + 48);
          v20 = v19 + 24 * v2;
          v21 = (v19 + v28);
          v22 = 24 * v2 < v28 || v20 >= v21 + 24;
          if (v22 || v2 != v6)
          {
            v24 = *v21;
            *(v20 + 16) = *(v21 + 2);
            *v20 = v24;
            v2 = v6;
          }
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v25 = *(v3 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v27;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1B223B074(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1B2252BE0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1B2253420();

        sub_1B2252370();
        sub_1B2253450();
        v10 = sub_1B2253470();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 >= v9 && v2 >= v11)
          {
LABEL_15:
            v14 = *(v3 + 48);
            v15 = (v14 + 8 * v2);
            v16 = (v14 + 8 * v6);
            if (v2 != v6 || v15 >= v16 + 1)
            {
              *v15 = *v16;
              v2 = v6;
            }
          }
        }

        else if (v11 >= v9 || v2 >= v11)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1B223B244(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1B2252BE0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1B2253420();
        MEMORY[0x1B2742F10](0);
        v10 = sub_1B2253470() & v7;
        if (v2 >= v9)
        {
          if (v10 >= v9 && v2 >= v10)
          {
LABEL_15:
            v13 = *(v3 + 48);
            v14 = (v13 + 8 * v2);
            v15 = (v13 + 8 * v6);
            if (v2 != v6 || v14 >= v15 + 1)
            {
              *v14 = *v15;
              v2 = v6;
            }
          }
        }

        else if (v10 >= v9 || v2 >= v10)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v17 = *(v3 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v19;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1B223B3DC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 0x80) == 0)
  {
  }

  return result;
}

unint64_t sub_1B223B3F0()
{
  result = qword_1EB7A3348;
  if (!qword_1EB7A3348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A3348);
  }

  return result;
}

unint64_t sub_1B223B448()
{
  result = qword_1EB7A3350;
  if (!qword_1EB7A3350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A3350);
  }

  return result;
}

unint64_t sub_1B223B4A0()
{
  result = qword_1EB7A3358;
  if (!qword_1EB7A3358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A3358);
  }

  return result;
}

unint64_t sub_1B223B4F8()
{
  result = qword_1EB7A3360;
  if (!qword_1EB7A3360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A3360);
  }

  return result;
}

unint64_t sub_1B223B550()
{
  result = qword_1EB7A3368;
  if (!qword_1EB7A3368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A3368);
  }

  return result;
}

unint64_t sub_1B223B5A8()
{
  result = qword_1EB7A3370;
  if (!qword_1EB7A3370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A3370);
  }

  return result;
}

unint64_t sub_1B223B600()
{
  result = qword_1EB7A3378;
  if (!qword_1EB7A3378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A3378);
  }

  return result;
}

unint64_t sub_1B223B658()
{
  result = qword_1EB7A3380;
  if (!qword_1EB7A3380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A3380);
  }

  return result;
}

unint64_t sub_1B223B6B0()
{
  result = qword_1EB7A3388;
  if (!qword_1EB7A3388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A3388);
  }

  return result;
}

unint64_t sub_1B223B708()
{
  result = qword_1EB7A3390;
  if (!qword_1EB7A3390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A3390);
  }

  return result;
}

unint64_t sub_1B223B760()
{
  result = qword_1EB7A3398;
  if (!qword_1EB7A3398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A3398);
  }

  return result;
}

uint64_t sub_1B223B7BC(uint64_t a1)
{
  result = type metadata accessor for Configuration(319);
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Database.ConflictResolution(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1B223B9A8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_1B211727C(-1);
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return sub_1B211727C((*a1 | (v4 << 8)) - 4);
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return sub_1B211727C((*a1 | (v4 << 8)) - 4);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_1B211727C((*a1 | (v4 << 8)) - 4);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_1B211727C(v8);
}

_BYTE *sub_1B223BA2C(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1B223BB30(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = (*(a1 + 24) >> 2) & 0xFFFFFFC0 | (*(a1 + 24) >> 1) & 0x3F;
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1B223BB7C(uint64_t result, int a2, int a3)
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = (4 * -a2) & 0x3FFFFFF00 | (2 * (-a2 & 0x3FLL));
      *(result + 32) = 0;
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

_BYTE *storeEnumTagSinglePayload for Database.TransactionCompletion(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1B223BD0C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7F && *(a1 + 25))
    {
      return sub_1B211727C(*a1 + 126);
    }

    v3 = (*(a1 + 24) & 0x7E | (*(a1 + 24) >> 7)) ^ 0x7F;
    if (v3 >= 0x7E)
    {
      return sub_1B211727C(-1);
    }
  }

  else
  {
    v3 = -1;
  }

  return sub_1B211727C(v3);
}

uint64_t sub_1B223BD50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

uint64_t sub_1B223BDF0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_1B211727C(-1);
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return sub_1B211727C((*a1 | (v4 << 8)) - 3);
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return sub_1B211727C((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_1B211727C((*a1 | (v4 << 8)) - 3);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_1B211727C(v8);
}

_BYTE *sub_1B223BE74(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B223BF54()
{
  result = qword_1EB7A33A0;
  if (!qword_1EB7A33A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A33A0);
  }

  return result;
}

uint64_t sub_1B223BFE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v6[0] = a2;
  v6[1] = a3;
  return v4(a1, v6);
}

uint64_t sub_1B223C04C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 0x80) == 0)
  {
  }

  return result;
}

uint64_t sub_1B223C24C()
{

  return sub_1B2252190();
}

uint64_t sub_1B223C26C(uint64_t a1, uint64_t a2)
{
  result = sub_1B2131D90();
  if ((v5 & 1) == 0)
  {
    if (*(a2 + 36) == v4)
    {
      return result == 1 << *(a2 + 32);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Row.copy()()
{
  v1 = v0[5];
  v2 = v0[6];
  sub_1B21139A0(v0 + 2, v1);
  v3 = sub_1B224B2B4();
  return v4(v3, v1, v2);
}

uint64_t Row.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_1B2241810();
}

{
  return sub_1B2241810();
}

{
  return sub_1B2241810();
}

void sub_1B223C344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a1 + 72);
  if (v7)
  {
    v35 = MEMORY[0x1E69E7CC0];
    sub_1B2116B10(0, v7 & ~(v7 >> 63), 0, a4, a5, a6, a7);
    v9 = v35;
    v34 = 0;
    if ((v7 & 0x8000000000000000) == 0)
    {
      v30 = v7;
      v10 = 0;
      v31 = a1;
      while (2)
      {
        v11 = v10 + 1;
        if (!__OFADD__(v10, 1))
        {
          Row.subscript.getter(v32, &v34);
          v13 = v12;
          v15 = v14;
          v16 = v32[0];
          v17 = v32[1];
          v18 = v33;

          sub_1B2113A20(v16, v17, v18);

          sub_1B2113A44(v16, v17, v18);

          MEMORY[0x1B2741EB0](58, 0xE100000000000000);
          v19 = 0xE400000000000000;
          v20 = 1280070990;
          switch(v18)
          {
            case 1:
              v20 = sub_1B22527C0();
              goto LABEL_10;
            case 2:

              v20 = sub_1B2252330();
              goto LABEL_10;
            case 3:
              sub_1B2126638(v16, v17);
              v22 = sub_1B2251DA0();
              MEMORY[0x1B2741EB0](v22);

              MEMORY[0x1B2741EB0](41, 0xE100000000000000);
              sub_1B2113A44(v16, v17, 3);
              v20 = 0x2861746144;
              v19 = 0xE500000000000000;
              goto LABEL_11;
            case 4:
              goto LABEL_11;
            default:
              v20 = sub_1B2252FD0();
LABEL_10:
              v19 = v21;
LABEL_11:
              MEMORY[0x1B2741EB0](v20, v19);

              sub_1B2113A44(v16, v17, v18);
              v35 = v9;
              v28 = *(v9 + 16);
              v27 = *(v9 + 24);
              if (v28 >= v27 >> 1)
              {
                sub_1B2116B10(v27 > 1, v28 + 1, 1, v23, v24, v25, v26);
                v9 = v35;
              }

              *(v9 + 16) = v28 + 1;
              v29 = v9 + 16 * v28;
              *(v29 + 32) = v13;
              *(v29 + 40) = v15;
              if (v34 < 0 || *(v31 + 72) <= v34)
              {
                goto LABEL_18;
              }

              ++v34;
              ++v10;
              if (v11 == v30)
              {
                return;
              }

              continue;
          }
        }

        break;
      }

      __break(1u);
LABEL_18:
      __break(1u);
    }

    __break(1u);
  }
}

Swift::Int_optional __swiftcall Row.index(forColumn:)(Swift::String forColumn)
{
  sub_1B211D530();
  sub_1B21139A0((v1 + 16), *(v1 + 40));
  v2 = sub_1B224B1FC();
  v4 = v3(v2);
  v6 = v5 & 1;
  result.value = v4;
  result.is_nil = v6;
  return result;
}

uint64_t Row.description.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1B223C344(v7, a2, a3, a4, a5, a6, a7);
  sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
  sub_1B211ABBC(qword_1ED85E790);
  sub_1B2252250();

  v8 = sub_1B2115FBC();
  MEMORY[0x1B2741EB0](v8);

  MEMORY[0x1B2741EB0](93, 0xE100000000000000);

  return 91;
}

uint64_t sub_1B223C788(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7CD0];
  v8 = MEMORY[0x1E69E7CD0];
  v5 = *(a1 + 16);
  swift_beginAccess();
  if (*(v5 + 24))
  {
    goto LABEL_5;
  }

  v6 = *(v5 + 16);
  swift_retain_n();

  sub_1B222FA58(v6, v5, a1);
  if (!v2)
  {
    *(v5 + 24) = 1;

    v4 = v8;
LABEL_5:

    return v4;
  }

  return v4;
}

uint64_t Row.__allocating_init(_:)(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_1B224B3C8(MEMORY[0x1E69E7CC0]);
    v47 = v58;
    result = sub_1B2131D90();
    v6 = result;
    v7 = 0;
    v8 = v1 + 64;
    v39 = v4;
    v40 = v2;
    v38 = v1 + 72;
    v41 = v1 + 64;
    v42 = v1;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v1 + 32))
    {
      v9 = v6 >> 6;
      if ((*(v8 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_27;
      }

      if (*(v1 + 36) != v4)
      {
        goto LABEL_28;
      }

      v44 = v7;
      v45 = v4;
      v43 = v5;
      v10 = (*(v1 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_1B211E1E0(*(v1 + 56) + 40 * v6, v56, &qword_1EB7A0E30, &unk_1B2259360);
      v46 = v11;
      v53[0] = v11;
      v53[1] = v12;
      v54[0] = v56[0];
      v54[1] = v56[1];
      v55 = v57;
      sub_1B211E1E0(v54, v50, &qword_1EB7A0E30, &unk_1B2259360);
      v13 = v51;
      if (v51)
      {
        v14 = v52;
        sub_1B21139A0(v50, v51);
        v15 = *(v14 + 24);

        v15(v48, v13, v14);
        v16 = v48[0];
        v17 = v48[1];
        v18 = v49;
        sub_1B2113208(v50);
      }

      else
      {

        sub_1B212ACBC(v50, &qword_1EB7A0E30);
        v16 = 0;
        v17 = 0;
        v18 = 4;
      }

      result = sub_1B212ACBC(v53, &qword_1EB7A1270);
      v19 = v47;
      v58 = v47;
      v21 = *(v47 + 16);
      v20 = *(v47 + 24);
      if (v21 >= v20 >> 1)
      {
        result = sub_1B216EB80(v20 > 1, v21 + 1, 1);
        v19 = v58;
      }

      *(v19 + 16) = v21 + 1;
      v22 = v19 + 40 * v21;
      *(v22 + 32) = v46;
      *(v22 + 40) = v12;
      *(v22 + 48) = v16;
      *(v22 + 56) = v17;
      *(v22 + 64) = v18;
      v1 = v42;
      v23 = 1 << *(v42 + 32);
      if (v6 >= v23)
      {
        goto LABEL_29;
      }

      v8 = v41;
      v24 = *(v41 + 8 * v9);
      if ((v24 & (1 << v6)) == 0)
      {
        goto LABEL_30;
      }

      v47 = v19;
      if (*(v42 + 36) != v45)
      {
        goto LABEL_31;
      }

      v25 = v24 & (-2 << (v6 & 0x3F));
      if (v25)
      {
        v23 = __clz(__rbit64(v25)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v26 = v9 << 6;
        v27 = v9 + 1;
        v28 = (v38 + 8 * v9);
        while (v27 < (v23 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            result = sub_1B21268C8(v6, v45, v43 & 1);
            v23 = __clz(__rbit64(v29)) + v26;
            goto LABEL_22;
          }
        }

        result = sub_1B21268C8(v6, v45, v43 & 1);
      }

LABEL_22:
      v5 = 0;
      v7 = v44 + 1;
      v6 = v23;
      v4 = v39;
      if (v44 + 1 == v40)
      {

        v31 = v47;
        goto LABEL_25;
      }
    }

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
  }

  else
  {

    v31 = MEMORY[0x1E69E7CC0];
LABEL_25:
    sub_1B212D678();
    v32 = swift_allocObject();
    return sub_1B21840C8(v31, v32, v33, v34, v35, v36, v37);
  }

  return result;
}

{
  v2 = 0;
  v3 = a1 + 64;
  sub_1B21115A0();
  sub_1B2125FE8();
  v5 = v4 >> 6;
  v6 = MEMORY[0x1E69E7CC8];
  v29 = v4 >> 6;
  v30 = v3;
  if (v1)
  {
    while (1)
    {
      v7 = v2;
LABEL_7:
      v8 = __clz(__rbit64(v1));
      v1 &= v1 - 1;
      v9 = v8 | (v7 << 6);
      sub_1B223182C(*(a1 + 48) + 40 * v9, &v34);
      sub_1B21721B4(*(a1 + 56) + 32 * v9, v33);
      *__src = v34;
      *&__src[16] = v35;
      *&__src[32] = v36;
      sub_1B2226E2C(v33, &__src[40]);
LABEL_8:
      memcpy(__dst, __src, 0x48uLL);
      if (!*(&__dst[1] + 1))
      {

        return Row.__allocating_init(_:)(v6);
      }

      sub_1B2226E2C((&__dst[2] + 8), v33);
      *__src = __dst[0];
      *&__src[16] = __dst[1];
      *&__src[32] = *&__dst[2];
      if ((swift_dynamicCast() & 1) == 0)
      {
        sub_1B2113208(v33);

        return 0;
      }

      v10 = v34;
      sub_1B21721B4(v33, v32);
      sub_1B21721B4(v32, v31);
      sub_1B21619D8(&qword_1EB7A1290, &qword_1B226A750);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      sub_1B21217FC(&v34, __src);
      sub_1B21139A0(__src, *&__src[24]);
      v11 = sub_1B2116164();
      v12(v11);
      sub_1B2113208(v32);
      v13 = v34;
      v14 = v35;
      sub_1B2113208(__src);
      *__src = v13;
      __src[16] = v14;
      *&__src[24] = &type metadata for DatabaseValue;
      *&__src[32] = &protocol witness table for DatabaseValue;
      sub_1B2113A20(v13, *(&v13 + 1), v14);
      swift_isUniquelyReferenced_nonNull_native();
      *&v34 = v6;
      v15 = sub_1B211E590();
      if (__OFADD__(v6[2], (v16 & 1) == 0))
      {
        goto LABEL_27;
      }

      v17 = v15;
      v18 = v16;
      sub_1B21619D8(&qword_1EB7A2238, &qword_1B226BA40);
      if (sub_1B2252E70())
      {
        v19 = sub_1B211E590();
        if ((v18 & 1) != (v20 & 1))
        {
          goto LABEL_29;
        }

        v17 = v19;
      }

      if (v18)
      {

        v6 = v34;
        sub_1B214670C(__src, *(v34 + 56) + 40 * v17, &qword_1EB7A0E30, &unk_1B2259360);
        sub_1B2113A44(v13, *(&v13 + 1), v14);
        sub_1B2113208(v33);
      }

      else
      {
        v6 = v34;
        *(v34 + 8 * (v17 >> 6) + 64) |= 1 << v17;
        *(v6[6] + 16 * v17) = v10;
        v21 = v6[7] + 40 * v17;
        v22 = *&__src[32];
        v23 = *&__src[16];
        *v21 = *__src;
        *(v21 + 16) = v23;
        *(v21 + 32) = v22;
        sub_1B2113A44(v13, *(&v13 + 1), v14);
        sub_1B2113208(v33);
        v24 = v6[2];
        v25 = __OFADD__(v24, 1);
        v26 = v24 + 1;
        if (v25)
        {
          goto LABEL_28;
        }

        v6[2] = v26;
      }

      v5 = v29;
      v3 = v30;
      if (!v1)
      {
        goto LABEL_3;
      }
    }

    sub_1B2113208(v32);
    sub_1B2113208(v33);
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
    sub_1B212ACBC(&v34, &qword_1EB7A0E30);

    return 0;
  }

  else
  {
LABEL_3:
    while (1)
    {
      v7 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if (v7 >= v5)
      {
        v1 = 0;
        memset(__src, 0, sizeof(__src));
        goto LABEL_8;
      }

      v1 = *(v3 + 8 * v7);
      ++v2;
      if (v1)
      {
        v2 = v7;
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    result = sub_1B2253390();
    __break(1u);
  }

  return result;
}

uint64_t sub_1B223CC34()
{
  sub_1B2116AD0();
  swift_beginAccess();
  if (*(v0 + 24))
  {
    return 0;
  }

  sub_1B2131988();
  v3 = sub_1B2122D50();
  result = sub_1B22301D0(v3);
  if (!v1 && (v4 & 0x100) != 0)
  {
    *(v0 + 24) = 1;
  }

  return result;
}

uint64_t sub_1B223CCB4()
{
  sub_1B2116AD0();
  swift_beginAccess();
  if (*(v0 + 24))
  {
    return 3;
  }

  sub_1B2131988();
  v3 = sub_1B2122D50();
  result = sub_1B22302C0(v3);
  if (!v1 && result == 3)
  {
    *(v0 + 24) = 1;
    return 3;
  }

  return result;
}

uint64_t sub_1B223CD28@<X0>(uint64_t a1@<X8>)
{
  sub_1B21118B8();
  result = swift_beginAccess();
  if (*(v1 + 24) == 1)
  {
    *(a1 + 48) = 0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
  }

  else
  {
    sub_1B2131988();
    v5 = sub_1B2122D50();
    result = sub_1B2230398(v5, v6);
    if (!v2)
    {
      if (v8)
      {
        *a1 = v7;
        *(a1 + 8) = v8;
        *(a1 + 16) = v9;
        *(a1 + 24) = v10 & 1;
      }

      else
      {
        result = sub_1B21C2698(v7, 0);
        *(v1 + 24) = 1;
        *a1 = v7;
        *(a1 + 8) = 0;
        *(a1 + 16) = v9;
        *(a1 + 24) = v10;
      }

      *(a1 + 32) = v11;
      *(a1 + 40) = v12;
      *(a1 + 48) = v13;
    }
  }

  return result;
}

uint64_t sub_1B223CE18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (*(a7 + 16))
  {
    v9 = sub_1B211E590();
    if (v10)
    {
      a3 = *(*(a7 + 56) + 24 * v9);
    }
  }

  return a3;
}

uint64_t sub_1B223CE94@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  result = sub_1B2131D90();
  if (v14)
  {
    goto LABEL_19;
  }

  v15 = *(a3 + 36);
  if (v15 != v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v16 = 1 << *(a3 + 32);
  if (v16 < result)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = *(a1 + 16);
  if (v17)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (*(a1 + 2) != v15)
  {
    goto LABEL_15;
  }

  v18 = *a1;
  if (*a1 < result)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19 = *(a1 + 40);
  if (v19)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  if (v15 != *(a1 + 8))
  {
    goto LABEL_17;
  }

  v20 = a1[3];
  if (v16 < v20)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v21 = *(a1 + 3);
  v22 = *(a1 + 9);
  *(a6 + 48) = a2;
  *(a6 + 56) = a3;
  *(a6 + 64) = a4;
  *(a6 + 72) = a5;
  *a6 = v18;
  *(a6 + 8) = v15;
  *(a6 + 12) = v21;
  *(a6 + 16) = v17;
  *(a6 + 24) = v20;
  *(a6 + 32) = v15;
  *(a6 + 36) = v22;
  *(a6 + 40) = v19;
}

uint64_t sub_1B223CFBC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(v3 + 72);
  if (v4 < 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (result < 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v4 >= a2)
  {
    a3[1] = a2;
    a3[2] = v3;
    *a3 = result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1B223CFEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;

  result = sub_1B2131D90();
  *(a5 + 32) = result;
  *(a5 + 40) = v8;
  *(a5 + 48) = v9 & 1;
  v10 = *(a2 + 36);
  *(a5 + 56) = 1 << *(a2 + 32);
  *(a5 + 64) = v10;
  *(a5 + 72) = 0;
  return result;
}

uint64_t sub_1B223D070(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a4 < 0)
  {
LABEL_22:
    __break(1u);
    return result;
  }

  v7 = a3;
  v8 = a2;
  v9 = result;
  if (a4)
  {
    v11 = a6 + 64;
    result = sub_1B224B040(result, a2, a3 & 1);
    v12 = 0;
    while ((v9 & 0x8000000000000000) == 0)
    {
      v13 = 1 << *(a6 + 32);
      if (v9 >= v13)
      {
        break;
      }

      v14 = v9 >> 6;
      v15 = *(v11 + 8 * (v9 >> 6));
      if (((v15 >> v9) & 1) == 0)
      {
        goto LABEL_20;
      }

      if (*(a6 + 36) != v8)
      {
        goto LABEL_21;
      }

      v16 = v15 & (-2 << (v9 & 0x3F));
      if (v16)
      {
        v13 = __clz(__rbit64(v16)) | v9 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v17 = v14 << 6;
        v18 = v14 + 1;
        v19 = (a6 + 72 + 8 * v14);
        while (v18 < (v13 + 63) >> 6)
        {
          v21 = *v19++;
          v20 = v21;
          v17 += 64;
          ++v18;
          if (v21)
          {
            result = sub_1B21268C8(v9, v8, v7 & 1);
            v13 = __clz(__rbit64(v20)) + v17;
            goto LABEL_15;
          }
        }

        result = sub_1B21268C8(v9, v8, v7 & 1);
      }

LABEL_15:
      v7 = 0;
      ++v12;
      v8 = *(a6 + 36);
      v9 = v13;
      if (v12 >= a4)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_1B224B040(result, a2, a3 & 1);
  return v9;
}

uint64_t sub_1B223D208(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, int a6, char a7, uint64_t a8, uint64_t a9)
{
  if (a4 < 0)
  {
LABEL_27:
    __break(1u);
  }

  else
  {
    v12 = a4;
    v14 = a2;
    v15 = result;
    result = sub_1B224B040(result, a2, a3 & 1);
    if (!v12)
    {
      return v15;
    }

    v16 = 0;
    v17 = a9 + 64;
    v18 = a3 | a7;
    v29 = v12;
    while ((v18 & 1) == 0)
    {
      if (v14 != a6)
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      if (v15 == a5)
      {
        return 0;
      }

      if ((v15 & 0x8000000000000000) != 0)
      {
        goto LABEL_24;
      }

      v19 = 1 << *(a9 + 32);
      if (v15 >= v19)
      {
        goto LABEL_24;
      }

      v20 = v15 >> 6;
      v21 = *(v17 + 8 * (v15 >> 6));
      if (((v21 >> v15) & 1) == 0)
      {
        goto LABEL_25;
      }

      if (*(a9 + 36) != a6)
      {
        goto LABEL_26;
      }

      v22 = v21 & (-2 << (v15 & 0x3F));
      if (v22)
      {
        v15 = __clz(__rbit64(v22)) | v15 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v23 = a5;
        v24 = v20 << 6;
        v25 = v20 + 1;
        v26 = (a9 + 72 + 8 * v20);
        while (v25 < (v19 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_1B21268C8(v15, v14, 0);
            v17 = a9 + 64;
            v15 = __clz(__rbit64(v27)) + v24;
            goto LABEL_18;
          }
        }

        result = sub_1B21268C8(v15, v14, 0);
        v17 = a9 + 64;
        v15 = v19;
LABEL_18:
        a5 = v23;
        v12 = v29;
      }

      ++v16;
      v14 = *(a9 + 36);
      v18 = a7;
      if (v16 >= v12)
      {
        return v15;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B223D3D8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result >= a2)
  {
    v4 = __OFSUB__(result, a3);
    v3 = result - a3 < 0;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  if (v3 == v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B223D3EC(uint64_t result, int a2, char a3, uint64_t a4)
{
  if (a3 & 1) != 0 || (*(a4 + 16))
  {
    goto LABEL_13;
  }

  if (*(a4 + 8) != a2)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*a4 > result)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (*(a4 + 40))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  if (*(a4 + 32) != a2)
  {
    goto LABEL_11;
  }

  if (*(a4 + 24) <= result)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_1B223D44C(uint64_t result, int a2, char a3, uint64_t a4)
{
  if (a3 & 1) != 0 || (*(a4 + 16))
  {
    goto LABEL_13;
  }

  if (*(a4 + 8) != a2)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*a4 > result)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (*(a4 + 40))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  if (*(a4 + 32) != a2)
  {
    goto LABEL_11;
  }

  if (*(a4 + 24) < result)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_1B223D4AC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < a2 || a3 < result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B223D4C0(uint64_t result, uint64_t a2)
{
  if (*(result + 16) & 1) != 0 || (*(a2 + 16))
  {
    goto LABEL_14;
  }

  if (*(result + 8) != *(a2 + 8))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*result < *a2)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (*(a2 + 40) & 1) != 0 || (*(result + 40))
  {
    goto LABEL_15;
  }

  if (*(a2 + 32) != *(result + 32))
  {
    goto LABEL_12;
  }

  if (*(a2 + 24) < *(result + 24))
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B223D53C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result < a3 || a4 < a2)
  {
    __break(1u);
  }

  return result;
}

uint64_t Row.unadapted.getter()
{
  v1 = v0[5];
  v2 = v0[6];
  sub_1B21139A0(v0 + 2, v1);
  v3 = sub_1B224B2B4();
  return v4(v3, v1, v2);
}

void Row.subscript.getter()
{
  sub_1B2111F14();
  v8 = sub_1B224B318(v6, v7);
  sub_1B211280C();
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v9);
  v13 = v21 - v12;
  if ((v2 & 0x8000000000000000) != 0 || *(v0 + 72) <= v2)
  {
    goto LABEL_11;
  }

  v4 = *(v0 + 64);
  if (v4)
  {
    if (!(v2 >> 31))
    {
      v21[1] = v11;
      v21[2] = v1;
      MEMORY[0x1EEE9AC00](v10);
      sub_1B2127274();
      v14 = sqlite3_column_type(v4, v2);
      if (v14 == 5)
      {
LABEL_13:
        MEMORY[0x1EEE9AC00](v14);
        sub_1B21156F0();
        *(v18 - 16) = sub_1B21B6634;
        *(v18 - 8) = v1;
        sub_1B224B2F0(v4, v19, sub_1B21B663C, v20);
        goto LABEL_14;
      }

      sub_1B224B50C();
      v15();
      if (sub_1B2122A98(v13, 1, v5) != 1)
      {
        sub_1B2111808();
        (*(v16 + 32))(v3, v13, v5);
LABEL_9:
        sub_1B2111588();
        return;
      }

LABEL_12:
      sub_1B21265E0();
      v14 = v17(v13, v8);
      goto LABEL_13;
    }

    __break(1u);
LABEL_11:
    sub_1B2116728();
    v21[0] = 825;
    sub_1B2112EEC();
    sub_1B2252EC0();
    __break(1u);
    goto LABEL_12;
  }

  sub_1B224B1DC();
  Row.fastDecode<A>(_:atUncheckedIndex:)();
  if (!v1)
  {
    goto LABEL_9;
  }

LABEL_14:
  sub_1B212CF48();
  swift_unexpectedError();
  __break(1u);
}

{
  sub_1B2111F14();
  v7 = sub_1B224B318(v5, v6);
  sub_1B211280C();
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v8);
  v12 = v31 - v11;
  if ((v2 & 0x8000000000000000) != 0 || *(v0 + 72) <= v2)
  {
    goto LABEL_15;
  }

  v3 = *(v0 + 64);
  if (!v3)
  {
    sub_1B224B1DC();
    Row.fastDecodeIfPresent<A>(_:atUncheckedIndex:)();
    if (!v1)
    {
LABEL_13:
      sub_1B2111588();
      return;
    }

LABEL_17:
    sub_1B212CF48();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  if (v2 >> 31)
  {
    __break(1u);
LABEL_15:
    sub_1B2116728();
    v31[0] = 803;
    sub_1B2112EEC();
    sub_1B2252EC0();
    __break(1u);
LABEL_16:
    sub_1B21265E0();
    v27 = v26(v12, v7);
    MEMORY[0x1EEE9AC00](v27);
    sub_1B21156F0();
    *(v28 - 16) = sub_1B21B6634;
    *(v28 - 8) = v1;
    sub_1B224B2F0(v3, v29, sub_1B21B663C, v30);
    goto LABEL_17;
  }

  v31[1] = v10;
  v31[2] = v1;
  MEMORY[0x1EEE9AC00](v9);
  sub_1B2127274();
  if (sqlite3_column_type(v3, v2) != 5)
  {
    sub_1B224B50C();
    v18();
    v19 = sub_1B224B520();
    if (sub_1B2122A98(v19, v20, v4) != 1)
    {
      sub_1B2111808();
      v21 = sub_1B211F390();
      v22(v21);
      v23 = sub_1B224B2D0();
      sub_1B21117B4(v23, v24, v25, v4);
      goto LABEL_13;
    }

    goto LABEL_16;
  }

  sub_1B224B2C0();
  sub_1B2111588();

  sub_1B21117B4(v13, v14, v15, v16);
}

{
  sub_1B2111F14();
  v2 = v1;
  v33[2] = v3;
  v5 = v4;
  v6 = sub_1B2252B00();
  sub_1B211280C();
  v33[1] = v7;
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v33 - v9;
  v11 = v0[6];
  sub_1B21139A0(v0 + 2, v0[5]);
  sub_1B2138D84();
  v13 = v12();
  if ((v14 & 1) == 0)
  {
    v15 = v13;
    v16 = v0[8];
    if (!v16)
    {
      sub_1B224B450();
      if (!v2)
      {
LABEL_13:
        sub_1B2111588();
        return;
      }

LABEL_17:
      sub_1B212CF48();
      swift_unexpectedError();
      __break(1u);
      return;
    }

    if (v13 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v13 <= 0x7FFFFFFF)
    {
      MEMORY[0x1EEE9AC00](v13);
      v11 = &v33[-4];
      v33[-2] = v0;
      v33[-1] = v15;
      if (sqlite3_column_type(v16, v15) == 5)
      {
        goto LABEL_6;
      }

      (*(v2 + 8))(v16, v15, v5, v2);
      v22 = sub_1B224B520();
      if (sub_1B2122A98(v22, v23, v5) != 1)
      {
        sub_1B2111808();
        v24 = sub_1B211F390();
        v25(v24);
        v26 = sub_1B224B2D0();
        sub_1B21117B4(v26, v27, v28, v5);
        goto LABEL_13;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_16:
    sub_1B21265E0();
    v30 = v29(v10, v6);
    MEMORY[0x1EEE9AC00](v30);
    sub_1B21156F0();
    *(v31 - 16) = sub_1B222EEE8;
    *(v31 - 8) = v11;
    sub_1B224B398(v16, v15, sub_1B222EEEC, v32);
    goto LABEL_17;
  }

LABEL_6:
  sub_1B224B2C0();
  sub_1B2111588();

  sub_1B21117B4(v17, v18, v19, v20);
}

{
  sub_1B2111F14();
  v2 = v1;
  v4 = v3;
  v38[2] = v5;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  sub_1B2252B00();
  sub_1B211280C();
  v38[1] = v12;
  sub_1B21117FC();
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = v38 - v15;
  (*(v2 + 16))(v7, v2, v14);
  sub_1B21139A0(v0 + 2, v0[5]);
  v17 = sub_1B2117C38();
  v19 = v18(v17);
  if ((v20 & 1) == 0)
  {
    v21 = v19;
    v22 = v0[8];
    if (!v22)
    {

      sub_1B224B450();
      if (!v4)
      {
LABEL_13:
        sub_1B2111588();
        return;
      }

LABEL_17:
      sub_1B212CF48();
      swift_unexpectedError();
      __break(1u);
      return;
    }

    if (v19 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v19 <= 0x7FFFFFFF)
    {
      MEMORY[0x1EEE9AC00](v19);
      v38[0] = &v38[-4];
      v38[-2] = v0;
      v38[-1] = v21;
      if (sqlite3_column_type(v22, v21) == 5)
      {
        goto LABEL_6;
      }

      (*(v4 + 8))(v22, v21, v9, v4);
      if (sub_1B2122A98(v16, 1, v9) != 1)
      {

        sub_1B2111808();
        (*(v28 + 32))(v11, v16, v9);
        v29 = sub_1B224B2D0();
        sub_1B21117B4(v29, v30, v31, v9);
        goto LABEL_13;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_16:
    sub_1B21265E0();
    v32 = sub_1B2117214();
    v34 = v33(v32);
    MEMORY[0x1EEE9AC00](v34);
    sub_1B21156F0();
    v35 = v38[0];
    *(v36 - 16) = sub_1B222EEE8;
    *(v36 - 8) = v35;
    sub_1B224B398(v22, v21, sub_1B222EEEC, v37);

    goto LABEL_17;
  }

LABEL_6:

  sub_1B224B2C0();
  sub_1B2111588();

  sub_1B21117B4(v23, v24, v25, v26);
}

{
  sub_1B22422E0();
}

uint64_t Row.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return sub_1B2241E3C();
}

{
  return sub_1B2241E3C();
}

uint64_t Row.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return sub_1B22407B8();
}

{
  return sub_1B22407B8();
}

void sub_1B223DD24(uint64_t a1)
{
  v1 = 0;
  v2 = a1 + 56;
  sub_1B21115A0();
  v5 = v4 & v3;
  v7 = (v6 + 63) >> 6;
  if ((v4 & v3) != 0)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v8 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      return;
    }

    if (v8 >= v7)
    {
      break;
    }

    v5 = *(v2 + 8 * v8);
    ++v1;
    if (v5)
    {
      v1 = v8;
      do
      {
LABEL_7:
        v5 &= v5 - 1;
        sub_1B22463C0();
      }

      while (v5);
      continue;
    }
  }
}

void sub_1B223DDFC(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, void (*a4)(_OWORD *__return_ptr, __n128)@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v26 = a5;
  v11 = sub_1B22522F0();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 == 4)
  {
    if (!(a2 | a1))
    {
      a1 = 0;
      a2 = 0xF000000000000000;
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (a3 == 3)
  {
    sub_1B2113A20(a1, a2, 3);
    goto LABEL_10;
  }

  v21 = a6;
  if (a3 != 2 || (sub_1B22522E0(), v20 = sub_1B22522B0(), v17 = v16, (*(v12 + 8))(v15, v11), v17 >> 60 == 15))
  {
LABEL_8:
    a4(v24, v13);
    v22[0] = a1;
    v22[1] = a2;
    v23 = a3;
    sub_1B21A2FC0();
    swift_allocError();
    sub_1B2183238(MEMORY[0x1E6969080], v24, v22, v18);
    v25[0] = v24[0];
    v25[1] = v24[1];
    v25[2] = v24[2];
    v25[3] = v24[3];
    sub_1B218450C(v25);
    swift_willThrow();
    return;
  }

  a1 = v20;
  a2 = v17;
  a6 = v21;
LABEL_10:
  *a6 = a1;
  a6[1] = a2;
}

double Row.scopesTree.getter@<D0>(_OWORD *a1@<X8>)
{
  Row.scopes.getter();
  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

Swift::Bool __swiftcall Row.hasColumn(_:)(Swift::String a1)
{
  sub_1B211D530();
  sub_1B21139A0((v1 + 16), *(v1 + 40));
  v2 = sub_1B224B1FC();
  v3(v2);
  return (v4 & 1) == 0;
}

void Row.decode<A>(_:forKey:)()
{
  sub_1B2111640();
  v29 = v1;
  v30 = v2;
  v4 = v3;
  v28 = v5;
  v6 = sub_1B2252B00();
  sub_1B211280C();
  v27 = v7;
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - v9;
  sub_1B21139A0(v0 + 2, v0[5]);
  v11 = sub_1B211F390();
  v13 = v12(v11);
  if (v14)
  {
    v32 = 0uLL;
    LOBYTE(v33) = -1;

    RowDecodingContext.init(row:key:)(v15, &v32, v31);
    v16 = sub_1B21A2FC0();
    sub_1B21152FC(&type metadata for RowDecodingError, v16);
    v17 = sub_1B211F390();
    static RowDecodingError.columnNotFound(_:context:)(v17, v18, v19, v20);
    v32 = v31[0];
    v33 = v31[1];
    v34 = v31[2];
    v35 = v31[3];
    sub_1B218450C(&v32);
    swift_willThrow();
    goto LABEL_12;
  }

  v21 = v13;
  v22 = v0[8];
  if (!v22)
  {
    Row.fastDecode<A>(_:atUncheckedIndex:)();
    goto LABEL_12;
  }

  if (v13 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v13 <= 0x7FFFFFFF)
  {
    MEMORY[0x1EEE9AC00](v13);
    *(&v27 - 2) = v0;
    *(&v27 - 1) = v21;
    v23 = sqlite3_column_type(v22, v21);
    if (v23 != 5)
    {
      (*(v30 + 8))(v22, v21, v4, v30);
      if (sub_1B2122A98(v10, 1, v4) != 1)
      {
        sub_1B2111808();
        (*(v26 + 32))(v28, v10, v4);
        goto LABEL_12;
      }

      v23 = (*(v27 + 8))(v10, v6);
    }

    MEMORY[0x1EEE9AC00](v23);
    sub_1B21156F0();
    *(v24 - 16) = sub_1B222EEE8;
    *(v24 - 8) = &v27 - 4;
    static DatabaseValueConvertible<>._valueMismatch(fromStatement:atUncheckedIndex:context:)(v22, v21, sub_1B222EEEC, v25, v4);
LABEL_12:
    sub_1B2112FDC();
    return;
  }

  __break(1u);
}

void Row.containsNonNullValue.getter()
{
  sub_1B2111F14();
  v31 = *v0;
  v1 = v0[9];
  if (v1 < 0)
  {
    goto LABEL_30;
  }

  v2 = 0;
  while (1)
  {
    if (v1 == v2)
    {
      Row.scopes.getter();
      v5 = v36;
      v6 = v37;

      v7 = sub_1B2131D90();
      v9 = v8;
      v11 = v10;

      if (v11)
      {
        goto LABEL_31;
      }

      v30 = v36 + 64;
      while (1)
      {
        if (v9 != *(v5 + 36))
        {
          goto LABEL_26;
        }

        if (v7 == 1 << *(v5 + 32))
        {

          sub_1B21268C8(v7, v9, 0);
          goto LABEL_24;
        }

        sub_1B2243724(&v35, v7, v9, 0, v5);
        sub_1B214D38C(&v35, v32);
        v13 = v33;
        v12 = v34;
        sub_1B21A1628(v32, v33);
        sub_1B21115E0();
        MEMORY[0x1EEE9AC00](v14);
        sub_1B2111844();
        v17 = v16 - v15;
        (*(v18 + 16))(v16 - v15);

        v20 = sub_1B21B64A0(v19, v17, v31, v13, v12);
        sub_1B2113208(v32);
        if (*(v6 + 16))
        {
          v21 = sub_1B211E590();
          v23 = v22;

          if (v23)
          {
            v24 = *(v6 + 56) + 24 * v21;
            v25 = *(v24 + 8);
            v26 = *(v24 + 16);

            sub_1B2113208(&v35);
            sub_1B21118B8();
            swift_beginAccess();
            *(v20 + 80) = v25;
            *(v20 + 88) = v26;

            goto LABEL_16;
          }
        }

        else
        {
        }

        sub_1B2113208(&v35);
LABEL_16:
        if (v7 < 0)
        {
          goto LABEL_27;
        }

        sub_1B2113B98();
        if (v7 >= -v27)
        {
          goto LABEL_27;
        }

        if (((*(v30 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
        {
          goto LABEL_28;
        }

        if (*(v5 + 36) != v9)
        {
          goto LABEL_29;
        }

        v7 = sub_1B2252BF0();
        v9 = *(v5 + 36);
        Row.containsNonNullValue.getter();
        v29 = v28;

        if (v29)
        {

          sub_1B21268C8(v7, v9, 0);
          goto LABEL_24;
        }
      }
    }

    if (__OFADD__(v2, 1))
    {
      break;
    }

    sub_1B21139A0(v0 + 2, v0[5]);
    sub_1B224B38C();
    v3 = sub_1B2113B50();
    ++v2;
    if ((v4(v3) & 1) == 0)
    {
LABEL_24:
      sub_1B2111588();
      return;
    }
  }

  __break(1u);
LABEL_26:
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
}

uint64_t sub_1B223EBCC(uint64_t a1)
{
  if (a1 < 0 || (sub_1B224B374(), v2 ^ v3 | v1))
  {
    sub_1B2111608();
    sub_1B2112EEC();
    result = sub_1B2252EC0();
    __break(1u);
  }

  else
  {
    sub_1B211E6C0();
    sub_1B224B38C();
    sub_1B21223F4();
    sub_1B2127108();
    return v4();
  }

  return result;
}

Swift::Bool __swiftcall Row.hasNull(atIndex:)(Swift::Int atIndex)
{
  if (atIndex < 0 || (sub_1B224B374(), v3 ^ v4 | v2))
  {
    sub_1B2111608();
    sub_1B2112EEC();
    result = sub_1B2252EC0();
    __break(1u);
  }

  else
  {
    sub_1B21139A0((v1 + 16), *(v1 + 40));
    sub_1B224B54C();
    return v5() & 1;
  }

  return result;
}

void Row.decode<A>(_:atIndex:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1B2111640();
  v16 = sub_1B211EFF8(v15);
  sub_1B211280C();
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v17);
  v21 = v28 - v20;
  if ((v13 & 0x8000000000000000) == 0 && *(v10 + 72) > v13)
  {
    v22 = *(v10 + 64);
    if (!v22)
    {
      sub_1B224B21C();
      Row.fastDecode<A>(_:atUncheckedIndex:)();
      goto LABEL_11;
    }

    if (!(v13 >> 31))
    {
      v28[1] = v19;
      v28[2] = v14;
      v29 = v11;
      MEMORY[0x1EEE9AC00](v18);
      v23 = sub_1B224B340();
      if (v23 != 5)
      {
        (*(v29 + 8))(v22, v13, v12);
        if (sub_1B2122A98(v21, 1, v12) != 1)
        {
          sub_1B2111808();
          (*(v27 + 32))(a10, v21, v12);
          goto LABEL_11;
        }

        sub_1B21265E0();
        v23 = v24(v21, v16);
      }

      MEMORY[0x1EEE9AC00](v23);
      sub_1B21156F0();
      *(v25 - 16) = sub_1B222EEE8;
      *(v25 - 8) = v14;
      static DatabaseValueConvertible<>._valueMismatch(fromStatement:atUncheckedIndex:context:)(v22, v13, sub_1B222EEEC, v26, v12);
LABEL_11:
      sub_1B2112FDC();
      return;
    }

    __break(1u);
  }

  sub_1B2116728();
  v28[0] = 825;
  sub_1B2112EEC();
  sub_1B2252EC0();
  __break(1u);
}

uint64_t Row.prefetchedRows.getter@<X0>(void *a1@<X8>)
{
  sub_1B21115FC();
  swift_beginAccess();
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  *a1 = v3;
  a1[1] = v4;
}

uint64_t Row.__allocating_init()()
{
  sub_1B212D678();
  v0 = swift_allocObject();

  return sub_1B2131A6C(v0, v1, v2, v3, v4, v5, v6);
}

uint64_t Row.__allocating_init(dictionaryLiteral:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = sub_1B224B3C8(MEMORY[0x1E69E7CC0]);
    v4 = 0;
    v5 = a1 + 32;
    v6 = v36;
    v7 = a1;
    v27 = v2;
    while (v4 < *(v7 + 16))
    {
      sub_1B211E1E0(v5, v34, &qword_1EB7A3320, &qword_1B226ACC8);
      v8 = v34[1];
      v28 = v34[0];
      sub_1B211E1E0(&v35, v31, &qword_1EB7A0E30, &unk_1B2259360);
      v9 = v32;
      if (v32)
      {
        v10 = v33;
        sub_1B21139A0(v31, v32);
        (*(v10 + 24))(v29, v9, v10);
        v12 = v29[0];
        v11 = v29[1];
        v13 = v30;
        sub_1B2113208(v31);
      }

      else
      {
        sub_1B224B2A8();
        sub_1B212ACBC(v14, v15);
        v12 = 0;
        v11 = 0;
        v13 = 4;
      }

      result = sub_1B212ACBC(v34, &qword_1EB7A3320);
      v36 = v6;
      v16 = *(v6 + 16);
      if (v16 >= *(v6 + 24) >> 1)
      {
        sub_1B2126410();
        result = sub_1B216EB80(v18, v19, v20);
        v6 = v36;
      }

      ++v4;
      *(v6 + 16) = v16 + 1;
      v17 = v6 + 40 * v16;
      *(v17 + 32) = v28;
      *(v17 + 40) = v8;
      *(v17 + 48) = v12;
      *(v17 + 56) = v11;
      *(v17 + 64) = v13;
      v5 += 56;
      if (v27 == v4)
      {

        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {

    v6 = MEMORY[0x1E69E7CC0];
LABEL_12:
    sub_1B212D678();
    v21 = swift_allocObject();
    return sub_1B21840C8(v6, v21, v22, v23, v24, v25, v26);
  }

  return result;
}

uint64_t Row.hashValue.getter()
{
  sub_1B2253420();
  Row.hash(into:)(v1);
  return sub_1B2253470();
}

void static Row.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1B2111F14();
  a19 = v21;
  a20 = v24;
  if (v22 == v23)
  {
    goto LABEL_59;
  }

  v25 = v20;
  v26 = v23;
  v27 = v22;
  v28 = *(v22 + 72);
  if (v28 != *(v23 + 72))
  {
    goto LABEL_59;
  }

  v135 = v25;
  v150 = v22;
  v151[0] = 0;
  v151[1] = v23;
  v152 = 0;

  v29 = 0;
  v30 = v28;
  v137 = v27;
  v138 = v26;
  v136 = v28;
  while (1)
  {
    if (!v30)
    {
      goto LABEL_20;
    }

    v139 = v30;
    Row.subscript.getter(&v147, v151);
    v32 = v31;
    v140 = v33;
    v145 = v33;
    v146 = v31;
    v35 = v147;
    v34 = v148;
    v36 = v149;

    sub_1B2113A20(v35, v34, v36);

    v143 = v35;
    sub_1B2113A44(v35, v34, v36);
    if (*(v27 + 72) <= v29)
    {
      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    v141 = v34;
    LODWORD(v142) = v36;
    v37 = v29 + 1;
    v151[0] = v29 + 1;
    if (v29 == v28)
    {
      break;
    }

    Row.subscript.getter(&v147, &v152);
    v39 = v38;
    v41 = v40;
    v145 = v38;
    v146 = v40;
    v43 = v147;
    v42 = v148;
    v44 = v149;

    v45 = sub_1B211F3C4();
    sub_1B2113A20(v45, v46, v47);

    v48 = sub_1B211F3C4();
    sub_1B2113A44(v48, v49, v50);
    if (*(v26 + 72) <= v29)
    {
      goto LABEL_62;
    }

    ++v29;
    v152 = v37;
    v51 = sub_1B224B380();
    if (v51 == v39 && v32 == v41)
    {

      sub_1B224B538();
    }

    else
    {
      v53 = sub_1B224B474(v51, v32);

      sub_1B224B538();
      if ((v53 & 1) == 0)
      {

        v130 = sub_1B211F3C4();
        sub_1B2113A44(v130, v131, v132);
        sub_1B2113A44(v143, v37, &v150);
LABEL_59:
        sub_1B2111588();
        return;
      }
    }

    v145 = v143;
    v146 = v37;
    LOBYTE(v147) = &v150;
    v153 = v43;
    v154 = v42;
    v155 = v44;
    v54 = static DatabaseValue.== infix(_:_:)(&v145, &v153);
    v55 = sub_1B211F3C4();
    sub_1B2113A44(v55, v56, v57);
    v58 = sub_1B224B29C();
    sub_1B2113A44(v58, v59, &v150);
    v30 = v139 - 1;
    v26 = v138;
    v27 = v137;
    v28 = v136;
    if (!v54)
    {

LABEL_17:

      goto LABEL_59;
    }
  }

  sub_1B2113A44(v143, v141, v142);
LABEL_20:

  Row.scopes.getter();
  v60 = v151[0];

  Row.scopes.getter();
  v61 = v151[0];

  if ((sub_1B2242B58(v60, v61) & 1) == 0)
  {

LABEL_58:

    goto LABEL_59;
  }

  v134 = v61;
  v62 = v60 + 64;
  sub_1B21115A0();
  v65 = v64 & v63;
  v67 = (v66 + 63) >> 6;

  v68 = 0;
  v142 = v60;
  while (v65)
  {
LABEL_27:
    v70 = *(*(v60 + 48) + ((v68 << 10) | (16 * __clz(__rbit64(v65)))));

    Row.scopes.getter();
    v72 = v153;
    v71 = v154;
    v73 = v156;
    if (!*(v154 + 16))
    {

LABEL_34:

      v143 = 0;
      goto LABEL_38;
    }

    v74 = sub_1B224B3EC();
    if ((v75 & 1) == 0)
    {

      sub_1B213B3D8();
      goto LABEL_34;
    }

    v139 = v70;
    v76 = sub_1B2243724(&v150, v74, *(v71 + 36), 0, v71);
    sub_1B224B410(v76, v77, &a9);
    v78 = v148;
    v143 = v149;
    sub_1B21A1628(&v145, v148);
    v136 = &v133;
    sub_1B21115E0();
    MEMORY[0x1EEE9AC00](v79);
    sub_1B2111844();
    v80 = v72;
    v83 = v82 - v81;
    (*(v84 + 16))(v82 - v81);

    v143 = sub_1B21B64A0(v85, v83, v135, v78, v143);
    sub_1B2113208(&v145);
    if (*(v73 + 16))
    {
      v136 = v80;
      v86 = sub_1B211E590();
      v88 = v87;

      if (v88)
      {
        v89 = *(v73 + 56) + 24 * v86;
        v90 = *(v89 + 8);
        v91 = *(v89 + 16);

        sub_1B2113208(&v150);
        v92 = v143;
        sub_1B21118B8();
        swift_beginAccess();
        v93 = *(v92 + 88);
        v140 = *(v92 + 80);
        v133 = v93;
        *(v92 + 80) = v90;
        *(v92 + 88) = v91;

        sub_1B213B3D8();

        sub_1B224B380();

        goto LABEL_38;
      }

      sub_1B2113208(&v150);

      sub_1B213B3D8();
    }

    else
    {
      sub_1B224B380();

      sub_1B2113208(&v150);

      sub_1B213B3D8();
    }

LABEL_38:
    Row.scopes.getter();
    v94 = v154;
    v95 = v156;
    if (!*(v154 + 16))
    {

LABEL_45:
      v109 = 0;
      goto LABEL_48;
    }

    v96 = sub_1B224B3EC();
    v98 = v97;

    if ((v98 & 1) == 0)
    {

      sub_1B213B3D8();

      goto LABEL_45;
    }

    v99 = sub_1B2243724(&v150, v96, *(v94 + 36), 0, v94);
    sub_1B224B410(v99, v100, &a12);
    v101 = v148;
    v102 = v149;
    sub_1B21A1628(&v145, v148);
    v139 = &v133;
    sub_1B21115E0();
    MEMORY[0x1EEE9AC00](v103);
    sub_1B2111844();
    v106 = v105 - v104;
    (*(v107 + 16))(v105 - v104);

    v109 = sub_1B21B64A0(v108, v106, v135, v101, v102);
    sub_1B2113208(&v145);
    if (!*(v95 + 16))
    {
      sub_1B224B380();

LABEL_47:
      sub_1B2113208(&v150);

      sub_1B213B3D8();

      goto LABEL_48;
    }

    v139 = sub_1B211E590();
    v111 = v110;

    if ((v111 & 1) == 0)
    {
      goto LABEL_47;
    }

    v112 = *(v95 + 56) + 24 * v139;
    v113 = *(v112 + 8);
    v114 = *(v112 + 16);

    sub_1B2113208(&v150);
    sub_1B21118B8();
    swift_beginAccess();
    v115 = *(v109 + 88);
    v140 = *(v109 + 80);
    v139 = v115;
    *(v109 + 80) = v113;
    *(v109 + 88) = v114;

    sub_1B213B3D8();

    sub_1B224B380();

LABEL_48:
    v60 = v142;
    v116 = v143;
    v65 &= v65 - 1;
    if (v143)
    {
      if (!v109)
      {
        goto LABEL_53;
      }

      static Row.== infix(_:_:)(v116, v109, v117, v118, v119, v120, v121, v122, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144);
      v124 = v123;

      if ((v124 & 1) == 0)
      {
        sub_1B224B368();

        goto LABEL_17;
      }
    }

    else if (v109)
    {
LABEL_53:
      sub_1B224B368();

      goto LABEL_17;
    }
  }

  while (1)
  {
    v69 = v68 + 1;
    if (__OFADD__(v68, 1))
    {
      break;
    }

    if (v69 >= v67)
    {

      v125 = v137;
      sub_1B21115FC();
      swift_beginAccess();
      v127 = *(v125 + 80);
      v126 = *(v125 + 88);
      v128 = v138;
      sub_1B21115FC();
      swift_beginAccess();
      v129 = *(v128 + 88);
      LOBYTE(v128) = sub_1B21B8000(v127, *(v128 + 80));

      if (v128)
      {

        sub_1B21D34AC(v126, v129);

        sub_1B224B368();

        goto LABEL_59;
      }

      sub_1B224B368();
      goto LABEL_58;
    }

    v65 = *(v62 + 8 * v69);
    ++v68;
    if (v65)
    {
      v68 = v69;
      goto LABEL_27;
    }
  }

LABEL_63:
  __break(1u);
}

uint64_t Row.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 72);
  MEMORY[0x1B2742F10](v2);
  v23 = v1;
  v24 = 0;
  if (v2)
  {

    v3 = 0;
    while (1)
    {
      Row.subscript.getter(&v21, &v24);
      v4 = v21;
      v5 = v22;

      v6 = sub_1B21146D8();
      sub_1B2113A20(v6, v7, v5);

      v8 = sub_1B21146D8();
      result = sub_1B2113A44(v8, v9, v5);
      if (*(v1 + 72) <= v3)
      {
        break;
      }

      v24 = ++v3;
      sub_1B2252370();

      switch(v5)
      {
        case 1:
          if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
          {
            v11 = *&v4;
          }

          else
          {
            v11 = 0.0;
          }

          goto LABEL_13;
        case 2:
          v12 = sub_1B21146D8();
          sub_1B2113A20(v12, v13, 2);
          sub_1B224B29C();
          sub_1B2252370();
          v14 = sub_1B21146D8();
          v16 = 2;
          goto LABEL_9;
        case 3:
          v17 = sub_1B21146D8();
          sub_1B2113A20(v17, v18, 3);
          sub_1B224B29C();
          sub_1B2251DF0();
          v14 = sub_1B21146D8();
          v16 = 3;
LABEL_9:
          sub_1B2113A44(v14, v15, v16);
          break;
        case 4:
          MEMORY[0x1B2742F10](0);
          break;
        default:
          v11 = v4;
LABEL_13:
          MEMORY[0x1B2742F40](*&v11);
          break;
      }

      v19 = sub_1B21146D8();
      sub_1B2113A44(v19, v20, v5);
      if (v2 == v3)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_17:
  }

  return result;
}

uint64_t sub_1B22402B0(uint64_t a1)
{
  sub_1B2253420();
  Row.hash(into:)(v2);
  return sub_1B2253470();
}

uint64_t sub_1B22402F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1B224036C(a1, a3);
  if (a2 < 1)
  {
    if (result <= 0 && result > a2)
    {
      goto LABEL_4;
    }

LABEL_10:
    result = sub_1B2183FB4(a1, a2, a4);
    v8 = 0;
    goto LABEL_11;
  }

  if (result < 0 || result >= a2)
  {
    goto LABEL_10;
  }

LABEL_4:
  *a4 = 0;
  v8 = 1;
LABEL_11:
  *(a4 + 8) = v8;
  return result;
}

uint64_t sub_1B224036C(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 72);
  if (v3 >= a2 && ((a2 | result) & 0x8000000000000000) == 0 && v3 >= result)
  {
    return a2 - result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B2240394@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = Row.__allocating_init(dictionaryLiteral:)(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B2240434@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
LABEL_6:
    __break(1u);
    return result;
  }

  *a2 = v3;
  if (v3 < 0 || v3 >= *(v2 + 72))
  {
    goto LABEL_6;
  }

  return result;
}

void sub_1B22404DC(void *a1@<X8>)
{
  v2 = *(v1 + 72);
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    *a1 = 0;
    a1[1] = v2;
  }
}

uint64_t sub_1B2240670@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];

  v5 = sub_1B213CEBC();
  sub_1B2113A20(v5, v6, v7);
  v8 = sub_1B213CEBC();
  result = sub_1B2113A44(v8, v9, v10);
  *a2 = v4;
  a2[1] = v3;
  return result;
}

uint64_t Row.subscript.getter(uint64_t a1)
{
  if (a1 < 0 || (sub_1B224B374(), v3 ^ v4 | v2))
  {
    sub_1B2111608();
    sub_1B2112EEC();
    result = sub_1B2252EC0();
    __break(1u);
  }

  else
  {
    sub_1B21139A0((v1 + 16), *(v1 + 40));
    v5 = sub_1B2115FBC();
    v6(v5);
    v7 = sub_1B2114748();
    DatabaseValue.Storage.value.getter(v7, v8, v9, v10);
    v11 = sub_1B2114748();

    return sub_1B2113A44(v11, v12, v13);
  }

  return result;
}

void Row.decodeIfPresent<A>(_:atIndex:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1B2111640();
  v16 = sub_1B211EFF8(v15);
  sub_1B211280C();
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v17);
  v21 = v31 - v20;
  if ((v13 & 0x8000000000000000) == 0 && *(v11 + 72) > v13)
  {
    v22 = *(v11 + 64);
    if (!v22)
    {
      sub_1B224B21C();
      Row.fastDecodeIfPresent<A>(_:atUncheckedIndex:)();
      goto LABEL_12;
    }

    if (!(v13 >> 31))
    {
      v31[1] = v19;
      v31[2] = v14;
      v31[3] = v10;
      MEMORY[0x1EEE9AC00](v18);
      if (sub_1B224B340() == 5)
      {
        v23 = a10;
        v24 = 1;
LABEL_11:
        sub_1B21117B4(v23, v24, 1, v12);
        goto LABEL_12;
      }

      v31[0] = v31;
      sub_1B211F200();
      v25();
      if (sub_1B2122A98(v21, 1, v12) != 1)
      {
        sub_1B2111808();
        (*(v30 + 32))(a10, v21, v12);
        sub_1B224B52C();
        v23 = a10;
        v24 = 0;
        goto LABEL_11;
      }

      sub_1B21265E0();
      v27 = v26(v21, v16);
      MEMORY[0x1EEE9AC00](v27);
      sub_1B21156F0();
      *(v28 - 16) = sub_1B222EEE8;
      *(v28 - 8) = v14;
      static DatabaseValueConvertible<>._valueMismatch(fromStatement:atUncheckedIndex:context:)(v22, v13, sub_1B222EEEC, v29, v12);
      sub_1B224B52C();
LABEL_12:
      sub_1B2112FDC();
      return;
    }

    __break(1u);
  }

  sub_1B2116728();
  v31[0] = 803;
  sub_1B2112EEC();
  sub_1B2252EC0();
  __break(1u);
}

uint64_t sub_1B2240ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t))
{
  if ((a2 & 0x8000000000000000) == 0 && *(v6 + 72) > a2)
  {
    return a6(v6);
  }

  sub_1B2111608();
  sub_1B2112EEC();
  result = sub_1B2252EC0();
  __break(1u);
  return result;
}

void Row.decodeIfPresent<A>(_:forKey:)()
{
  sub_1B2111640();
  v2 = v1;
  sub_1B21139A0((v0 + 16), *(v0 + 40));
  sub_1B2138D84();
  v3();
  if (v4)
  {
    v5 = sub_1B224B520();
    sub_1B21117B4(v5, v6, 1, v2);
  }

  else
  {
    static DatabaseValueConvertible.decodeIfPresent(fromRow:atUncheckedIndex:)();
  }

  sub_1B2112FDC();
}

{
  sub_1B2111640();
  v24[2] = v1;
  v25 = v2;
  v4 = v3;
  v6 = v5;
  v7 = sub_1B2252B00();
  sub_1B211280C();
  v24[1] = v8;
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v24 - v10;
  sub_1B21139A0(v0 + 2, v0[5]);
  sub_1B2138D84();
  v13 = v12();
  if (v14)
  {
    goto LABEL_6;
  }

  v15 = v13;
  v16 = v0[8];
  if (!v16)
  {
    Row.fastDecodeIfPresent<A>(_:atUncheckedIndex:)();
    goto LABEL_11;
  }

  if (v13 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v13 <= 0x7FFFFFFF)
  {
    MEMORY[0x1EEE9AC00](v13);
    v24[-2] = v0;
    v24[-1] = v15;
    if (sqlite3_column_type(v16, v15) != 5)
    {
      v24[0] = v24;
      (*(v25 + 8))(v16, v15, v4, v25);
      if (sub_1B2122A98(v11, 1, v4) == 1)
      {
        sub_1B21265E0();
        v20 = v19(v11, v7);
        MEMORY[0x1EEE9AC00](v20);
        sub_1B21156F0();
        *(v21 - 16) = sub_1B222EEE8;
        *(v21 - 8) = &v24[-4];
        static DatabaseValueConvertible<>._valueMismatch(fromStatement:atUncheckedIndex:context:)(v16, v15, sub_1B222EEEC, v22, v4);
        sub_1B224B52C();
        goto LABEL_11;
      }

      sub_1B2111808();
      (*(v23 + 32))(v6, v11, v4);
      sub_1B224B52C();
      v17 = v6;
      v18 = 0;
      goto LABEL_7;
    }

LABEL_6:
    v17 = sub_1B224B520();
LABEL_7:
    sub_1B21117B4(v17, v18, 1, v4);
LABEL_11:
    sub_1B2112FDC();
    return;
  }

  __break(1u);
}

void Row.decode<A>(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[5];
  v6 = v3[6];
  sub_1B21139A0(v3 + 2, v7);
  sub_1B224B38C();
  (*(v8 + 88))(a2, a3, v7, v6);
  if (v9)
  {
    v14 = 0uLL;
    LOBYTE(v15) = -1;

    RowDecodingContext.init(row:key:)(v10, &v14, v13);
    v11 = sub_1B21A2FC0();
    sub_1B21152FC(&type metadata for RowDecodingError, v11);
    static RowDecodingError.columnNotFound(_:context:)(a2, a3, v13, v12);
    v14 = v13[0];
    v15 = v13[1];
    v16 = v13[2];
    v17 = v13[3];
    sub_1B218450C(&v14);
    swift_willThrow();
  }

  else
  {
    static DatabaseValueConvertible.decode(fromRow:atUncheckedIndex:)();
  }
}

uint64_t Row.subscript.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1B2151D4C();
  v4 = sub_1B212CFD8(v2, v3);
  v5(v4);
  Row.subscript.getter(a1);
}

void Row.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1B2241384(a1, a2);
}

{
  sub_1B2241384(a1, a2);
}

void sub_1B2241384(uint64_t a1, uint64_t a2)
{
  sub_1B224B638();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  sub_1B2151D4C();
  v11 = v10(v8, v9);
  v3(v11, v11, v12, v7, v5);

  sub_1B224B5E0();
}

uint64_t sub_1B2241520(uint64_t a1)
{
  if (a1 < 0 || (sub_1B224B374(), v2 ^ v3 | v1))
  {
    sub_1B2111608();
    sub_1B2112EEC();
    result = sub_1B2252EC0();
    __break(1u);
  }

  else
  {
    sub_1B211E6C0();
    sub_1B224B38C();
    sub_1B21223F4();
    sub_1B2127108();
    return v4();
  }

  return result;
}

uint64_t sub_1B2241600()
{
  sub_1B21139A0((v0 + 16), *(v0 + 40));
  sub_1B2138D84();
  v1();
  if (v2)
  {
    return 0;
  }

  sub_1B21139A0((v0 + 16), *(v0 + 40));
  sub_1B224B2B4();
  sub_1B2127108();
  return v4();
}

uint64_t Row.dataNoCopy<A>(_:)()
{
  sub_1B2151D4C();
  v2 = sub_1B212CFD8(v0, v1);
  v3(v2);
  sub_1B2241600();

  return sub_1B2112FD0();
}

uint64_t sub_1B2241790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);

  sub_1B2113A20(v3, v4, v5);

  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_1B2241874@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  Row.scopes.getter();
  v69 = a1;
  v57 = a2;
  v9 = Row.ScopesTreeView.subscript.getter();

  if (v9)
  {
    Row.containsNonNullValue.getter();
    if (v10)
    {
      return (*(a4 + 8))(v9);
    }

    else
    {
      *&v59 = v69;
      *(&v59 + 1) = v57;
      v60 = 2;

      RowDecodingContext.init(row:key:)(v5, &v59, &v61);
      sub_1B224B2E0();
      sub_1B2252CD0();

      *&v59 = 0x2065706F6373;
      *(&v59 + 1) = 0xE600000000000000;

      v25 = sub_1B2252330();
      MEMORY[0x1B2741EB0](v25);

      MEMORY[0x1B2741EB0](0xD00000000000001ALL, 0x80000001B22710F0);
      v58 = *(&v59 + 1);
      v69 = v59;

      v26 = sub_1B2183FE0();
      v27 = v62;
      v28 = v63;
      v29 = v66;
      v53 = v65;
      v30 = v67;
      v31 = v68;
      v32 = v64;
      v33 = sub_1B2113B50();
      sub_1B21841CC(v33, v34, v32);

      sub_1B211CF8C(v30);
      sub_1B218450C(&v61);
      v35 = sub_1B21A2FC0();
      sub_1B21152FC(&type metadata for RowDecodingError, v35);
      v36 = v69;
      *v37 = a3;
      *(v37 + 8) = v36;
      *(v37 + 16) = v58;
      *(v37 + 24) = v26;
      *(v37 + 32) = v27;
      *(v37 + 40) = v28;
      *(v37 + 48) = v32;
      *(v37 + 56) = v53;
      *(v37 + 64) = v29;
      *(v37 + 72) = v30;
      *(v37 + 80) = v31;
      *(v37 + 88) = v59;
      *(v37 + 104) = 1;
      swift_willThrow();
    }
  }

  else
  {
    v12 = Row.scopes.getter();
    v13 = Row.ScopesTreeView.names.getter(v12);

    if (*(v13 + 16))
    {
      v14 = sub_1B2138D90();
      RowDecodingContext.init(row:key:)(v14, &v59, &v61);
      sub_1B224B2E0();
      sub_1B2252CD0();

      sub_1B214700C();
      v15 = sub_1B2252330();
      MEMORY[0x1B2741EB0](v15);

      MEMORY[0x1B2741EB0](0xD000000000000015, 0x80000001B22710D0);
      sub_1B219C744(v13, v16, v17, v18, v19, v20, v21, v22, v50, a5);

      v23 = sub_1B2115C84();
      MEMORY[0x1B2742080](v23);
      sub_1B224B434();
      v24 = sub_1B2116164();
    }

    else
    {

      v38 = sub_1B2138D90();
      RowDecodingContext.init(row:key:)(v38, &v59, &v61);
      sub_1B224B2E0();
      sub_1B2252CD0();

      sub_1B214700C();
      v24 = sub_1B2252330();
    }

    MEMORY[0x1B2741EB0](v24);

    v54 = *(&v59 + 1);
    v56 = v59;

    v39 = sub_1B2183FE0();
    v40 = v62;
    v41 = v63;
    v42 = v66;
    v52 = v65;
    v43 = v67;
    v44 = v68;
    v45 = v64;
    v46 = sub_1B2113B50();
    sub_1B21841CC(v46, v47, v45);

    sub_1B211CF8C(v43);
    sub_1B218450C(&v61);
    LOBYTE(v59) = 0;
    v48 = sub_1B21A2FC0();
    sub_1B21152FC(&type metadata for RowDecodingError, v48);
    *v49 = v69;
    *(v49 + 8) = a1;
    *(v49 + 16) = 2;
    *(v49 + 24) = v56;
    *(v49 + 32) = v54;
    *(v49 + 40) = v39;
    *(v49 + 48) = v40;
    *(v49 + 56) = v41;
    *(v49 + 64) = v45;
    *(v49 + 72) = v52;
    *(v49 + 80) = v42;
    *(v49 + 88) = v43;
    *(v49 + 96) = v44;
    *(v49 + 104) = v59;
    swift_willThrow();
  }
}

uint64_t sub_1B2241D28@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  Row.scopes.getter();
  sub_1B2117214();
  v5 = Row.ScopesTreeView.subscript.getter();

  if (!v5)
  {
    goto LABEL_5;
  }

  Row.containsNonNullValue.getter();
  if ((v6 & 1) == 0)
  {

LABEL_5:
    v7 = 1;
    return sub_1B21117B4(a3, v7, 1, a1);
  }

  (*(a2 + 8))(v5, a1);
  v7 = 0;
  return sub_1B21117B4(a3, v7, 1, a1);
}

void sub_1B2241EA4()
{
  sub_1B2111640();
  v48 = v2;
  v50 = v3;
  v5 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1B2111808();
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v7);
  sub_1B21115FC();
  swift_beginAccess();
  v8 = *(v0 + 80);
  v9 = *(v0 + 88);
  v51[0] = v8;
  v51[1] = v9;

  v10 = Row.PrefetchedRowsView.subscript.getter();

  if (!v10)
  {
    v17 = sub_1B2157184(v11);
    if (*(v17 + 16))
    {
      v18 = sub_1B224B1A8();
      sub_1B213FF28(v18);
      sub_1B21325FC();
      sub_1B2252CD0();
      sub_1B224B5A0();

      v19 = sub_1B2252330();
      MEMORY[0x1B2741EB0](v19);

      MEMORY[0x1B2741EB0](v8 - 16, 0x80000001B2271090);
      sub_1B219C744(v17, v20, v21, v22, v23, v24, v25, v26, v1, v46);

      v27 = sub_1B2115C84();
      MEMORY[0x1B2742080](v27);
      sub_1B224B434();
      v28 = sub_1B2116164();
      MEMORY[0x1B2741EB0](v28);

      sub_1B224B188();
      sub_1B2183FE0();
      sub_1B224B558();
      v29 = v52;
      sub_1B2121270();
      v30 = sub_1B2113978();
      sub_1B211CF8C(v30);
      sub_1B218450C(v51);
      v31 = sub_1B21A2FC0();
      v32 = sub_1B21152FC(&type metadata for RowDecodingError, v31);
      *v33 = v5;
      v33[1] = v48;
      sub_1B211AED0(v32, v33);
      sub_1B224B4E0(v34, v35);
      *(v37 + 72) = v29;
    }

    else
    {

      v38 = sub_1B224B1A8();
      sub_1B213FF28(v38);
      sub_1B21325FC();
      sub_1B2252CD0();

      v39 = sub_1B2252330();
      MEMORY[0x1B2741EB0](v39);

      sub_1B224B188();
      sub_1B2183FE0();
      sub_1B224B558();
      v47 = v52;
      sub_1B2121270();
      v40 = sub_1B2113978();
      sub_1B211CF8C(v40);
      sub_1B218450C(v51);
      v41 = sub_1B21A2FC0();
      v42 = sub_1B21152FC(&type metadata for RowDecodingError, v41);
      *v43 = v5;
      v43[1] = v48;
      sub_1B211AED0(v42, v43);
      sub_1B224B4E0(v44, v45);
      *(v37 + 72) = v47;
    }

    sub_1B224B490(v36, v37);

    goto LABEL_14;
  }

  sub_1B2117214();
  sub_1B2252980();
  sub_1B2116B08();
  sub_1B2252950();
  v49 = sub_1B2116B08();
  if (!v49)
  {
LABEL_9:

LABEL_14:
    sub_1B2112FDC();
    return;
  }

  if (v49 >= 1)
  {
    v12 = 0;
    v13 = *(v50 + 8);
    v14 = v10 & 0xC000000000000001;
    v15 = v10;
    do
    {
      if (v14)
      {
        MEMORY[0x1B27427E0](v12, v10);
      }

      else
      {
      }

      ++v12;

      v13(v16, AssociatedTypeWitness, v50);
      sub_1B2252960();

      v10 = v15;
    }

    while (v49 != v12);
    goto LABEL_9;
  }

  __break(1u);
}

void sub_1B22422E0()
{
  sub_1B2111640();
  v57 = v1;
  v68 = v2;
  v61 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  sub_1B21115E0();
  v56 = v10;
  MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v55 - v13;
  sub_1B21115FC();
  swift_beginAccess();
  v15 = *(v0 + 88);
  v66[0] = *(v0 + 80);
  v66[1] = v15;

  v16 = Row.PrefetchedRowsView.subscript.getter();

  if (!v16)
  {
    v25 = v7;
    v26 = sub_1B2157184(v17);
    if (*(v26 + 16))
    {
      v27 = sub_1B224B1A8();
      sub_1B213FF28(v27);
      sub_1B21325FC();
      sub_1B2252CD0();
      sub_1B224B5A0();
      v60 = v9;
      v62 = v9;
      v63 = v25;

      v28 = sub_1B2252330();
      MEMORY[0x1B2741EB0](v28);

      MEMORY[0x1B2741EB0](v9 - 16, 0x80000001B2271090);
      sub_1B219C744(v26, v29, v30, v31, v32, v33, v34, v35, v55, v56);

      v36 = sub_1B2115C84();
      MEMORY[0x1B2742080](v36);
      sub_1B224B434();
      v37 = sub_1B2116164();
      MEMORY[0x1B2741EB0](v37);

      sub_1B224B188();
      sub_1B2183FE0();
      sub_1B224B558();
      v38 = v67;
      sub_1B2121270();
      v39 = sub_1B2113978();
      sub_1B211CF8C(v39);
      sub_1B218450C(v66);
      LOBYTE(v64) = 0;
      v40 = sub_1B21A2FC0();
      v41 = sub_1B21152FC(&type metadata for RowDecodingError, v40);
      *v42 = v60;
      v42[1] = v25;
      sub_1B211AED0(v41, v42);
      sub_1B224B4E0(v43, v44);
      *(v46 + 72) = v38;
    }

    else
    {

      v47 = sub_1B224B1A8();
      sub_1B213FF28(v47);
      sub_1B21325FC();
      sub_1B2252CD0();

      v64 = v9;
      v65 = 0x80000001B2271060;
      v62 = v9;
      v63 = v25;

      v48 = sub_1B2252330();
      MEMORY[0x1B2741EB0](v48);

      sub_1B224B188();
      sub_1B2183FE0();
      sub_1B224B558();
      v59 = v67;
      sub_1B2121270();
      v49 = sub_1B2113978();
      sub_1B211CF8C(v49);
      sub_1B218450C(v66);
      LOBYTE(v64) = 0;
      v50 = sub_1B21A2FC0();
      v51 = sub_1B21152FC(&type metadata for RowDecodingError, v50);
      *v52 = v9;
      v52[1] = v25;
      sub_1B211AED0(v51, v52);
      sub_1B224B4E0(v53, v54);
      *(v46 + 72) = v59;
    }

    sub_1B224B490(v45, v46);

    goto LABEL_15;
  }

  v18 = sub_1B2116B08();
  v66[0] = MEMORY[0x1B27422D0](v18, v5, v68);
  v19 = sub_1B2116B08();
  if (!v19)
  {
LABEL_9:

LABEL_15:
    sub_1B2122C74();
    sub_1B2112FDC();
    return;
  }

  v20 = v19;
  if (v19 >= 1)
  {
    v21 = 0;
    v59 = *(v61 + 8);
    v60 = v61 + 8;
    v58 = v16 & 0xC000000000000001;
    v22 = (v56 + 8);
    do
    {
      if (v58)
      {
        v23 = sub_1B211F390();
        MEMORY[0x1B27427E0](v23);
      }

      else
      {
      }

      ++v21;

      v59(v24, v5, v61);
      sub_1B2252810();
      sub_1B2111658();
      sub_1B2252800();

      (*v22)(v14, v5);
    }

    while (v20 != v21);
    goto LABEL_9;
  }

  __break(1u);
}

void *Row.unscoped.getter()
{
  sub_1B21139A0((v0 + 16), *(v0 + 40));
  sub_1B224B2B4();
  sub_1B224B54C();
  v2 = v1();
  sub_1B21115FC();
  swift_beginAccess();
  if (*(v2[10] + 16))
  {
    sub_1B21139A0(v2 + 2, v2[5]);
    v3 = sub_1B2115FBC();
    v5 = v4(v3);
    sub_1B214D38C(v5 + 16, v16);

    v6 = v17;
    v7 = v18;
    sub_1B21A1628(v16, v17);
    sub_1B21115E0();
    MEMORY[0x1EEE9AC00](v8);
    sub_1B2111844();
    (*(v11 + 16))(v10 - v9);
    v12 = sub_1B2138CAC();
    v14 = sub_1B224A5B4(v12, v13, v6, v7);

    sub_1B2113208(v16);
    return v14;
  }

  return v2;
}

uint64_t static Row.fetchSet<A>(_:_:)()
{
  sub_1B211E230();
  v2 = v1();
  if (!v0)
  {
    v11 = v22;
    if (v22)
    {
      v19 = 0uLL;

      v15 = static Row.fetchAll(_:arguments:adapter:)(v20, &v19, &v21);
      v16 = sub_1B2113978();
      v11(v16);
      sub_1B2168FE4(v15);
      v17 = sub_1B2113B50();
      sub_1B2112F4C(v17, v18);
      sub_1B2142D18(&v20);
    }

    else
    {
      v12 = sub_1B224B280(v2, v3, v4, v5, v6, v7, v8, v9, v19, *(&v19 + 1), v20);
      static Row.fetchSet(_:arguments:adapter:)(v12, v13, v14);
      sub_1B2142D18(&v20);
    }
  }

  return sub_1B2122C74();
}

uint64_t sub_1B2242B58(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (1)
  {
    v10 = v9;
    if (!v6)
    {
      break;
    }

LABEL_10:
    if (*(a2 + 16))
    {
      v6 &= v6 - 1;

      sub_1B211E590();
      v12 = v11;

      if (v12)
      {
        continue;
      }
    }

    return 0;
  }

  while (1)
  {
    v9 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      return 1;
    }

    v6 = *(a1 + 64 + 8 * v9);
    ++v10;
    if (v6)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t Row.ScopesView.subscript.getter()
{
  if (!*(*(v0 + 8) + 16))
  {
    return 0;
  }

  sub_1B211E590();
  if ((v1 & 1) == 0)
  {
    return 0;
  }

  Row.ScopesView.subscript.getter();
  v3 = v2;

  return v3;
}

BOOL static Row.PrefetchedRowsView.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  result = 0;
  if (sub_1B21B8000(*a1, *a2))
  {
    v2 = sub_1B2112FD0();
    sub_1B21D34AC(v2, v3);
    if (v4)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1B2242D54(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  if (!a1)
  {
    v5 = v1[5];
    v6 = v1[6];
    sub_1B21139A0(v1 + 2, v5);
    v7 = (*(v6 + 104))(v1, v5, v6);
    static Row.== infix(_:_:)(v1, v7, v8, v9, v10, v11, v12, v13, v90, v92, v94, v97, v99, v100, v101, v102, v103, *(&v103 + 1), v104, v105);
    v15 = v14;

    if (v15)
    {
      v16 = swift_beginAccess();
      if (!*(v2[10] + 16))
      {
        return Row.description.getter(v16, v17, v18, v19, v20, v21, v22);
      }
    }
  }

  v23 = a1 + 1;
  if (!__OFADD__(a1, 1))
  {
    if (v23 < 0)
    {
      goto LABEL_31;
    }

    v106 = a1 + 1;
    v107 = 8224;
    v108 = 0xE200000000000000;
    sub_1B21619D8(&qword_1EB7A2330, &qword_1B225EC10);
    sub_1B211ABBC(&qword_1ED85DA30);
    v24 = sub_1B2252250();
    v26 = v25;

    v34 = Row.description.getter(v27, v28, v29, v30, v31, v32, v33);
    v98 = v2;
    if (a1)
    {
      v110 = v34;
      v111 = v35;
    }

    else
    {
      v106 = 549426914;
      v107 = 0xA400000000000000;
      MEMORY[0x1B2741EB0](v34, v35);

      v110 = 549426914;
      v111 = 0xA400000000000000;
      v36 = v2[5];
      v37 = v2[6];
      sub_1B21139A0(v2 + 2, v36);
      v38 = (*(v37 + 104))(v2, v36, v37);
      static Row.== infix(_:_:)(v2, v38, v39, v40, v41, v42, v43, v44, v90, v92, v94, v2, v99, v100, v101, v102, v103, *(&v103 + 1), v104, v105);
      if ((v45 & 1) == 0)
      {
        MEMORY[0x1B2741EB0](v24, v26);

        MEMORY[0x1B2741EB0](0x6574706164616E75, 0xEB00000000203A64);

        v53 = Row.description.getter(v46, v47, v48, v49, v50, v51, v52);
        v55 = v54;
        v106 = 10;
        v107 = 0xE100000000000000;

        MEMORY[0x1B2741EB0](v53, v55);

        MEMORY[0x1B2741EB0](10, 0xE100000000000000);
      }
    }

    Row.scopes.getter();
    *&v103 = sub_1B2131C40(v106, v107, v108, v109);
    sub_1B2249A6C(&v103);

    v91 = v103;
    v56 = *(v103 + 16);
    v57 = v24;
    v95 = v23;
    if (v56)
    {
      v58 = v103 + 48;
      do
      {
        v60 = *(v58 - 16);
        v59 = *(v58 - 8);
        v58 += 24;
        v106 = 10;
        v107 = 0xE100000000000000;

        MEMORY[0x1B2741EB0](v57, v26);

        MEMORY[0x1B2741EB0](8237, 0xE200000000000000);

        MEMORY[0x1B2741EB0](v60, v59);

        MEMORY[0x1B2741EB0](8250, 0xE200000000000000);

        v61 = v106;
        v62 = v107;
        v63 = sub_1B2242D54(v95);
        v65 = v64;
        v106 = v61;
        v107 = v62;

        MEMORY[0x1B2741EB0](v63, v65);

        MEMORY[0x1B2741EB0](v106, v107);

        --v56;
      }

      while (v56);
    }

    v96 = v26;

    v66 = swift_beginAccess();
    v103 = *(v98 + 5);
    v67 = Row.PrefetchedRowsView.keys.getter(v66);
    sub_1B219C744(v67, v68, v69, v70, v71, v72, v73, v74, v91, v57);
    v4 = v75;

    v76 = 0;
    v77 = v4[2];
    for (i = v4 + 5; ; i += 2)
    {
      if (v77 == v76)
      {

        return v110;
      }

      if (v76 >= v4[2])
      {
        break;
      }

      v80 = *(i - 1);
      v79 = *i;
      v81 = v98[11];
      *&v103 = v98[10];
      *(&v103 + 1) = v81;

      v82 = Row.PrefetchedRowsView.subscript.getter();

      if (!v82)
      {
        goto LABEL_32;
      }

      if (v82 >> 62)
      {
        v83 = sub_1B2252C20();
      }

      else
      {
        v83 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v83)
      {
        if (v83 == 1)
        {
          v84 = 0x776F722031;
          v85 = 0xE500000000000000;
        }

        else
        {
          *&v103 = sub_1B2252FD0();
          *(&v103 + 1) = v86;
          MEMORY[0x1B2741EB0](0x73776F7220, 0xE500000000000000);
          v85 = *(&v103 + 1);
          v84 = v103;
        }
      }

      else
      {
        v85 = 0xE500000000000000;
        v84 = 0x776F722030;
      }

      *&v103 = 10;
      *(&v103 + 1) = 0xE100000000000000;
      MEMORY[0x1B2741EB0](v93, v96);

      MEMORY[0x1B2741EB0](8235, 0xE200000000000000);

      MEMORY[0x1B2741EB0](v80, v79);

      v87 = v103;
      *&v103 = 8250;
      *(&v103 + 1) = 0xE200000000000000;
      MEMORY[0x1B2741EB0](v84, v85);

      v88 = v103;
      v103 = v87;

      MEMORY[0x1B2741EB0](v88, *(&v88 + 1));

      MEMORY[0x1B2741EB0](v103, *(&v103 + 1));

      ++v76;
    }

    __break(1u);
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);

  __break(1u);
  return result;
}

Swift::Int sub_1B22434A4@<X0>(GRDBInternal::RowIndex a1@<X0>, Swift::Int *a2@<X8>)
{
  result = RowIndex.distance(to:)(a1);
  *a2 = result;
  return result;
}

Swift::Int __swiftcall RowIndex.distance(to:)(GRDBInternal::RowIndex to)
{
  v2 = __OFSUB__(*to.index, *v1);
  result = *to.index - *v1;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

GRDBInternal::RowIndex __swiftcall RowIndex.advanced(by:)(GRDBInternal::RowIndex by)
{
  if (__OFADD__(*v2, by.index))
  {
    __break(1u);
  }

  else
  {
    sub_1B211815C(v1);
  }

  return by;
}

void *sub_1B224352C(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (__OFADD__(a4, a6))
  {
    __break(1u);
  }

  else
  {
    *result = a4 + a6;
    return 0;
  }

  return result;
}

void Row.ScopesView.subscript.getter()
{
  sub_1B2111F14();
  v1 = v0[2];
  v2 = v0[3];
  sub_1B2243724(v25, v4, v5, v3 & 1, v0[1]);
  v6 = type metadata accessor for Row();
  sub_1B214D38C(v25, v22);
  v7 = v23;
  v8 = v24;
  sub_1B21A1628(v22, v23);
  sub_1B21115E0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1B2111844();
  v12 = v11 - v10;
  (*(v13 + 16))(v11 - v10);

  v15 = sub_1B21B64A0(v14, v12, v6, v7, v8);
  sub_1B2113208(v22);
  v16 = sub_1B2112FD0();
  sub_1B218F9CC(v16, v17, v1, v2);
  v19 = v18;
  v21 = v20;
  sub_1B2113208(v25);
  if (v19)
  {

    sub_1B21118B8();
    swift_beginAccess();
    *(v15 + 80) = v19;
    *(v15 + 88) = v21;
  }

  sub_1B2112FD0();
  sub_1B2111588();
}

uint64_t sub_1B2243724(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    sub_1B214D38C(*(a5 + 56) + 40 * a2, result);

    return sub_1B2112FD0();
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1B22437B0@<X0>(uint64_t a1@<X8>)
{
  result = Row.ScopesView.startIndex.getter();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  return result;
}

uint64_t sub_1B22437E0@<X0>(uint64_t a1@<X8>)
{
  result = Row.ScopesView.endIndex.getter();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  return result;
}

uint64_t (*sub_1B224380C(void *a1))()
{
  Row.ScopesView.subscript.getter();
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return sub_1B2243860;
}

uint64_t sub_1B2243860()
{
}

uint64_t sub_1B224389C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v5 = *a1;
  v6[0] = v3;
  *(v6 + 9) = *(a1 + 25);
  return sub_1B223CE94(&v5, *v2, v2[1], v2[2], v2[3], a2);
}

uint64_t sub_1B22438FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1B223D070(*a1, *(a1 + 8), *(a1 + 16), a2, *v3, v3[1]);
  *a3 = result;
  *(a3 + 8) = v6;
  *(a3 + 16) = v7 & 1;
  return result;
}

uint64_t sub_1B2243944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1B223D208(*a1, *(a1 + 8), *(a1 + 16), a2, *a3, *(a3 + 8), *(a3 + 16), *v4, v4[1]);
  *a4 = result;
  *(a4 + 8) = v7;
  *(a4 + 16) = v8;
  return result;
}

uint64_t sub_1B2243A1C(uint64_t *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, __int128 *, void, void, void, void))
{
  v6 = *a1;
  v7 = a1[1];
  v8 = *(a1 + 16);
  v9 = a2[1];
  v11 = *a2;
  v12[0] = v9;
  *(v12 + 9) = *(a2 + 25);
  return a5(v6, v7, v8, &v11, *v5, v5[1], v5[2], v5[3]);
}

uint64_t sub_1B2243A70(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 9) = *(a1 + 25);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 9) = *(a2 + 25);
  return sub_1B223D4C0(&v5, &v7);
}

uint64_t sub_1B2243AC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = Row.ScopesView.index(after:)(*a1, *(a1 + 8), *(a1 + 16));
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  return result;
}

void sub_1B2243AFC()
{
  sub_1B2123510();
  v1 = v0;
  v2 = sub_1B2114748();
  v6 = sub_1B224A534(v2, v3, v4, v5);
  v8 = v7;
  v10 = v9;
  v11 = sub_1B2114748();
  sub_1B21268C8(v11, v12, v13);
  *v1 = v6;
  *(v1 + 8) = v8;
  *(v1 + 16) = v10 & 1;
  sub_1B2115ED4();
}

void sub_1B2243B60()
{
  sub_1B2123510();
  v2 = v1;
  v3 = *v0;
  v4 = v0[1];
  v6 = v0[2];
  v5 = v0[3];
  *v1 = v3;
  v1[1] = v4;
  v1[2] = v6;
  v1[3] = v5;

  v7 = sub_1B2131D90();
  v9 = v8;
  v11 = v10;

  v2[4] = v7;
  v2[5] = v9;
  *(v2 + 48) = v11 & 1;
  sub_1B2115ED4();
}

uint64_t sub_1B2243C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    if (!a4)
    {
      return 0;
    }

    v7 = sub_1B21146D8();
    v9 = sub_1B21B808C(v7, v8);

    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a4)
  {
    return 0;
  }

  if (sub_1B21B8000(a2, a5))
  {
    v10 = sub_1B2115C84();
    sub_1B21D34AC(v10, v11);
    if (v12)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1B2243CD0(uint64_t result, void *a2)
{
  if (a2[2])
  {
    v2 = result;
    v4 = a2[4];
    v3 = a2[5];

    sub_1B21777AC(0, 1);
    if (a2[2])
    {
      v11 = sub_1B211DF80(MEMORY[0x1E69E7CC0], v5, v6, v7, v8, v9, v10);
      v13 = v12;
      v14 = sub_1B2138CAC();
      v18 = sub_1B223CE18(v14, v15, 0, v11, v13, v16, v17);
      v20 = v19;
      v22 = v21;

      v23 = sub_1B224B29C();
      sub_1B2243CD0(v23, v24);

      v25 = sub_1B218FABC(v18, v20, v22, v4, v3);
    }

    else
    {

      v33 = sub_1B211DF80(MEMORY[0x1E69E7CC0], v27, v28, v29, v30, v31, v32);
      v35 = v34;
      v36 = sub_1B2138CAC();
      sub_1B223CE18(v36, v37, 0, v33, v35, v38, v39);
      v41 = v40;
      v43 = v42;

      v25 = sub_1B218FABC(v2, v41, v43, v4, v3);
    }

    sub_1B224B04C(v25, v26);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1B2243EB0(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*(a2 + 16) <= result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v2 = a2 + 40 * result;
  v3 = *(v2 + 48);
  v4 = *(v2 + 56);
  v5 = *(v2 + 64);

  sub_1B2113A20(v3, v4, v5);

  v7 = v5 == 4 && (v4 | v3) == 0;
  sub_1B2113A44(v3, v4, v5);
  return v7;
}

BOOL sub_1B2243FA0(_BOOL8 result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(a2 + 16) <= result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v2 = a2 + 24 * result;
  v4 = *(v2 + 48) == 4;
  v3 = *(v2 + 40) | *(v2 + 32);
  return v4 && v3 == 0;
}

void sub_1B2243FDC()
{
  sub_1B2123510();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  sub_1B21115E0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  sub_1B2111844();
  v15 = v14 - v13;
  type metadata accessor for Row();
  (*(v11 + 16))(v15, v7, v3);
  v16 = sub_1B2113978();
  v18 = sub_1B224A5B4(v16, v17, v3, v1);
  v19 = v5;
  v20 = 1;
  RowDecodingContext.init(row:key:)(v18, &v19, v9);
  sub_1B2115ED4();
}

void sub_1B22440CC(unint64_t a1, uint64_t a2)
{
  v5 = sub_1B22522F0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(a2 + 16) <= a1)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v32 = v2;
  v9 = a2 + 40 * a1;
  v10 = *(v9 + 48);
  v11 = *(v9 + 56);
  v12 = *(v9 + 64);

  sub_1B2113A20(v10, v11, v12);

  if (v12 != 3)
  {
    if (v12 == 2 && (sub_1B22522E0(), v24 = sub_1B22522B0(), v14 = v13, (*(v6 + 8))(v8, v5), v14 >> 60 != 15))
    {
      sub_1B2113A44(v10, v11, 2);
    }

    else
    {
      type metadata accessor for Row();
      v15 = swift_allocObject();

      v22 = sub_1B21840C8(v16, v15, v17, v18, v19, v20, v21);
      v28 = a1;
      LOBYTE(v29) = 1;
      RowDecodingContext.init(row:key:)(v22, &v28, v27);
      v25[0] = v10;
      v25[1] = v11;
      v26 = v12;
      sub_1B21A2FC0();
      swift_allocError();
      sub_1B2183238(MEMORY[0x1E6969080], v27, v25, v23);
      v28 = v27[0];
      v29 = v27[1];
      v30 = v27[2];
      v31 = v27[3];
      sub_1B218450C(&v28);
      swift_willThrow();
      sub_1B2113A44(v10, v11, v12);
    }
  }
}

void sub_1B2244314(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1B22522F0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*(a2 + 16) <= a1)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v33 = a3;
  v11 = a2 + 24 * a1;
  v12 = *(v11 + 32);
  v13 = *(v11 + 40);
  v14 = *(v11 + 48);
  if (v14 == 3)
  {
    sub_1B2113A20(*(v11 + 32), *(v11 + 40), 3);
  }

  else
  {
    if (v14 == 2)
    {
      v25[2] = v3;
      sub_1B2113A20(v12, v13, 2);
      sub_1B22522E0();
      v25[1] = sub_1B22522B0();
      v16 = v15;
      (*(v8 + 8))(v10, v7);
      if (v16 >> 60 != 15)
      {
        sub_1B2113A44(v12, v13, 2);
        return;
      }
    }

    else
    {
      sub_1B2113A20(*(v11 + 32), *(v11 + 40), *(v11 + 48));
    }

    type metadata accessor for Row();
    v17 = swift_allocObject();

    v18 = v33;

    v23 = sub_1B211EF2C(a2, v18, v17, v19, v20, v21, v22);
    v29 = a1;
    LOBYTE(v30) = 1;
    RowDecodingContext.init(row:key:)(v23, &v29, v28);
    v26[0] = v12;
    v26[1] = v13;
    v27 = v14;
    sub_1B21A2FC0();
    swift_allocError();
    sub_1B2183238(MEMORY[0x1E6969080], v28, v26, v24);
    v29 = v28[0];
    v30 = v28[1];
    v31 = v28[2];
    v32 = v28[3];
    sub_1B218450C(&v29);
    swift_willThrow();
    sub_1B2113A44(v12, v13, v14);
  }
}

unint64_t sub_1B2244590(unint64_t result, uint64_t a2)
{
  v11 = a2;
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  if (*(a2 + 16) <= result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v4 = a2 + 40 * result;
  v5 = *(v4 + 48);
  v6 = *(v4 + 56);
  v7 = *(v4 + 64);

  sub_1B2113A20(v5, v6, v7);

  MEMORY[0x1EEE9AC00](v8);
  v9[2] = &v11;
  v9[3] = v3;
  sub_1B223DDFC(v5, v6, v7, sub_1B224B00C, v9, &v10);
  result = sub_1B2113A44(v5, v6, v7);
  if (!v2)
  {
    return v10;
  }

  return result;
}

unint64_t sub_1B224469C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v11[0] = a2;
  v11[1] = a3;
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (*(a2 + 16) <= result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v4 = a2 + 24 * result;
  v5 = *(v4 + 32);
  v6 = *(v4 + 40);
  v7 = *(v4 + 48);
  MEMORY[0x1EEE9AC00](result);
  v9[2] = v11;
  v9[3] = v8;
  sub_1B2113A20(v5, v6, v7);
  sub_1B223DDFC(v5, v6, v7, sub_1B224B120, v9, &v10);
  result = sub_1B2113A44(v5, v6, v7);
  if (!v3)
  {
    return v10;
  }

  return result;
}

unint64_t sub_1B2244794@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a2 + 16) > result)
  {
    v4 = a2 + 40 * result;
    v5 = *(v4 + 48);
    v6 = *(v4 + 56);
    v7 = *(v4 + 64);

    v8 = sub_1B213CEBC();
    sub_1B2113A20(v8, v9, v10);

    *a3 = v5;
    *(a3 + 8) = v6;
    *(a3 + 16) = v7;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_1B2244810(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a2 + 16) > result)
  {

    v2 = sub_1B213CEBC();
    sub_1B2113A20(v2, v3, v4);
    v5 = sub_1B213CEBC();
    sub_1B2113A44(v5, v6, v7);
    return sub_1B2112FD0();
  }

  __break(1u);
  return result;
}

void sub_1B2244884()
{
  sub_1B2123510();
  v1 = v0;
  v2 = sub_1B2252220();
  v4 = v3;
  v5 = 0;
  v6 = *(v1 + 16);
  v7 = v1 + 40;
  while (v6 != v5)
  {
    if (sub_1B2252220() == v2 && v8 == v4)
    {

      break;
    }

    v10 = sub_1B22531F0();

    if (v10)
    {
      break;
    }

    ++v5;
    v7 += 40;
  }

  sub_1B2115ED4();
}

uint64_t sub_1B22449CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1B2252220();
  v7 = v6;
  v8 = 0;
  v9 = *(a4 + 16);
  for (i = a4 + 40; ; i += 16)
  {
    if (v9 == v8)
    {
      v14 = 0;
      goto LABEL_12;
    }

    if (sub_1B2252220() == v5 && v11 == v7)
    {
      break;
    }

    v13 = sub_1B22531F0();

    if (v13)
    {
      goto LABEL_11;
    }

    ++v8;
  }

LABEL_11:
  v14 = v8;
LABEL_12:

  return v14;
}

void sub_1B2244B34(uint64_t a1@<X1>, uint64_t a2@<X2>, sqlite3_stmt *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v24 = a6;
  v15 = sub_1B2252B00();
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v21 - v18;
  if (a1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (a1 > 0x7FFFFFFF)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v21 = v17;
  v22 = v16;
  v23 = a8;
  MEMORY[0x1EEE9AC00](v16);
  *(&v21 - 4) = a2;
  *(&v21 - 3) = a3;
  *(&v21 - 2) = a4;
  *(&v21 - 1) = a1;
  v20 = sqlite3_column_type(a3, a1);
  if (v20 == 5)
  {
LABEL_6:
    MEMORY[0x1EEE9AC00](v20);
    *(&v21 - 2) = sub_1B224B100;
    *(&v21 - 1) = (&v21 - 6);
    static DatabaseValueConvertible<>._valueMismatch(fromStatement:atUncheckedIndex:context:)(a3, a1, sub_1B222EEEC, (&v21 - 4), a5);
    return;
  }

  (*(a7 + 8))(a3, a1, a5, a7);
  if (sub_1B2122A98(v19, 1, a5) == 1)
  {
    v20 = (*(v21 + 8))(v19, v22);
    goto LABEL_6;
  }

  (*(*(a5 - 8) + 32))(v23, v19, a5);
}

void sub_1B2244D7C(uint64_t a1@<X1>, uint64_t a2@<X2>, sqlite3_stmt *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v22[1] = a6;
  v23 = a7;
  v24 = a8;
  v13 = sub_1B2252B00();
  MEMORY[0x1EEE9AC00](v13);
  v17 = v22 - v16;
  if (a1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (a1 > 0x7FFFFFFF)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v22[0] = v15;
  MEMORY[0x1EEE9AC00](v14);
  v22[-4] = a2;
  v22[-3] = a3;
  v22[-2] = a4;
  v22[-1] = a1;
  if (sqlite3_column_type(a3, a1) == 5)
  {
    v18 = v24;
    v19 = 1;
  }

  else
  {
    (*(v23 + 8))(a3, a1, a5, v23);
    if (sub_1B2122A98(v17, 1, a5) == 1)
    {
      v20 = (*(v22[0] + 8))(v17, v13);
      MEMORY[0x1EEE9AC00](v20);
      v22[-2] = sub_1B224B128;
      v22[-1] = &v22[-6];
      static DatabaseValueConvertible<>._valueMismatch(fromStatement:atUncheckedIndex:context:)(a3, a1, sub_1B222EEEC, &v22[-4], a5);
      return;
    }

    v21 = v24;
    (*(*(a5 - 8) + 32))(v24, v17, a5);
    v18 = v21;
    v19 = 0;
  }

  sub_1B21117B4(v18, v19, 1, a5);
}

void sub_1B224508C(uint64_t a1, void *a2, sqlite3_stmt *a3)
{
  v6 = sub_1B2251D80();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (a1 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (sqlite3_column_type(a3, a1) == 5)
  {
    sub_1B21A2FC0();
    swift_allocError();
    sub_1B2183444(MEMORY[0x1E6969080], a2, a1, v10);
    swift_willThrow();
  }

  else
  {
    v11 = sqlite3_column_blob(a3, a1);
    if (v11)
    {
      v12 = v11;
      v13 = sqlite3_column_bytes(a3, a1);
      (*(v7 + 104))(v9, *MEMORY[0x1E6969010], v6);
      MEMORY[0x1B2741870](v12, v13, v9);
    }
  }
}

void sub_1B2245228(uint64_t a1, uint64_t a2, sqlite3_stmt *a3)
{
  v5 = sub_1B2251D80();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 > 0x7FFFFFFF)
  {
LABEL_8:
    __break(1u);
    return;
  }

  if (sqlite3_column_type(a3, a1) != 5)
  {
    v9 = sqlite3_column_blob(a3, a1);
    if (v9)
    {
      v10 = v9;
      v11 = sqlite3_column_bytes(a3, a1);
      (*(v6 + 104))(v8, *MEMORY[0x1E6969010], v5);
      MEMORY[0x1B2741870](v10, v11, v8);
    }
  }
}

uint64_t sub_1B2245388(unint64_t a1)
{
  result = Statement.columnNames.getter();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(result + 16) > a1)
  {
    v3 = *(result + 16 * a1 + 32);

    return v3;
  }

  __break(1u);
  return result;
}

char *sub_1B2245534(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return sub_1B2117990(a3, result);
  }

  return result;
}

char *sub_1B224555C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[176 * a2] <= a3)
  {
    return sub_1B2116900(result, a3, 176 * a2);
  }

  return result;
}

char *sub_1B224557C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[232 * a2] <= a3)
  {
    return sub_1B2116900(result, a3, 232 * a2);
  }

  return result;
}

char *sub_1B224559C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[208 * a2] <= a3)
  {
    return sub_1B2116900(result, a3, 208 * a2);
  }

  return result;
}

char *sub_1B22455BC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[56 * a2] <= a3)
  {
    return sub_1B2117990(a3, result);
  }

  return result;
}

char *sub_1B22455E4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[216 * a2] <= a3)
  {
    return sub_1B2117990(a3, result);
  }

  return result;
}

void sub_1B224560C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1B21619D8(&qword_1EB7A1BB8, &unk_1B226C230);
  v38 = v4;
  v6 = sub_1B2252EF0();
  if (!*(v5 + 16))
  {
LABEL_29:

LABEL_30:
    *v3 = v6;
    return;
  }

  v36 = v2;
  v37 = v5;
  v7 = 0;
  v8 = v5 + 64;
  sub_1B21154D4();
  v12 = (v11 + 63) >> 6;
  v13 = v6 + 64;
  if ((v10 & v9) == 0)
  {
LABEL_4:
    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      ++v17;
      if (*(v8 + 8 * v7))
      {
        sub_1B211667C();
        v39 = v19 & v18;
        goto LABEL_9;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_30;
    }

    sub_1B2113108();
    v3 = v36;
    if (v32 != v33)
    {
      sub_1B211E564(v31);
    }

    else
    {
      v34 = sub_1B2122A88();
      sub_1B2148CEC(v34, v35, v8);
    }

    *(v5 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    sub_1B2135344();
    v39 = v16;
LABEL_9:
    v20 = (*(v5 + 56) + (v14 | (v7 << 6)) * v15);
    v21 = *v20;
    v22 = v20[1];
    v23 = v20[2];
    if ((v38 & 1) == 0)
    {
    }

    sub_1B2253420();
    sub_1B2252370();
    sub_1B2253470();
    sub_1B211647C();
    sub_1B213CF74();
    if (v24)
    {
      break;
    }

    sub_1B2112110();
LABEL_21:
    sub_1B2111AE8();
    *(v13 + v28) |= v29;
    sub_1B224B58C();
    *v30 = v21;
    v30[1] = v22;
    v30[2] = v23;
    sub_1B212D15C();
    v5 = v37;
    if (!v39)
    {
      goto LABEL_4;
    }
  }

  sub_1B2114850();
  while (1)
  {
    sub_1B211FE98();
    if (v24)
    {
      if (v26)
      {
        break;
      }
    }

    if (v25 == v27)
    {
      v25 = 0;
    }

    if (*(v13 + 8 * v25) != -1)
    {
      sub_1B2118398();
      goto LABEL_21;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_1B2245854()
{
  sub_1B2111F14();
  v3 = v0;
  v5 = v4;
  sub_1B21181AC();
  sub_1B21619D8(&qword_1EB7A1BC8, &qword_1B2259958);
  sub_1B2115F64();
  sub_1B2252EF0();
  sub_1B224B1C8();
  if (!v6)
  {
LABEL_28:

    *v3 = v5;
    sub_1B2111588();
    return;
  }

  v29 = v1;
  v7 = 0;
  v8 = v1 + 64;
  sub_1B21154D4();
  sub_1B212D708();
  if (!v2)
  {
LABEL_4:
    v9 = v7;
    while (1)
    {
      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v3)
      {
        break;
      }

      ++v9;
      if (*(v8 + 8 * v7))
      {
        sub_1B211667C();
        v2 = v11 & v10;
        goto LABEL_9;
      }
    }

    if (v5)
    {
      sub_1B211DAB8();
      if (v25 != v26)
      {
        sub_1B211E564(v24);
      }

      else
      {
        v27 = sub_1B2122A88();
        sub_1B2148CEC(v27, v28, v8);
      }

      *(v1 + 16) = 0;
    }

    goto LABEL_28;
  }

  while (1)
  {
    sub_1B21140F0();
LABEL_9:
    sub_1B21131E8();
    if (v5)
    {
      v14 = (v13 + 176 * v12);
      v15 = *v14;
      memcpy(v33, v14 + 1, sizeof(v33));
      v30 = *(v14 + 170);
    }

    else
    {
      memcpy(__dst, (v13 + 176 * v12), 0xABuLL);
      v30 = BYTE2(__dst[21]);
      v15 = __dst[0];

      sub_1B21818BC(__dst, v31);
      memcpy(v33, &__dst[1], sizeof(v33));
    }

    sub_1B2253420();
    sub_1B224B2A8();
    sub_1B2252370();
    sub_1B2253470();
    sub_1B211647C();
    sub_1B213CF74();
    if (v16)
    {
      break;
    }

    sub_1B2112110();
LABEL_20:
    sub_1B2111AE8();
    *(v5 + 64 + v18) |= v19;
    sub_1B211EB30(v20);
    v23 = v22 + 176 * v21;
    *v23 = v15;
    memcpy((v23 + 8), v33, 0xA2uLL);
    *(v23 + 170) = v30;
    sub_1B212D15C();
    v1 = v29;
    if (!v2)
    {
      goto LABEL_4;
    }
  }

  sub_1B2114850();
  while (1)
  {
    sub_1B211FE98();
    if (v16)
    {
      if (v17)
      {
        break;
      }
    }

    sub_1B212E31C();
    if (!v16)
    {
      sub_1B2118398();
      goto LABEL_20;
    }
  }

LABEL_30:
  __break(1u);
}

void sub_1B2245A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, __int16 a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  sub_1B2122614();
  v39 = v34;
  v41 = v40;
  sub_1B21181AC();
  sub_1B21619D8(&qword_1EB7A2168, &unk_1B226ACD0);
  v42 = sub_1B2115F64();
  sub_1B2146FA8(v42, v43);
  sub_1B224B1C8();
  if (!v44)
  {
LABEL_27:

LABEL_28:
    *v39 = v41;
    sub_1B2115CEC();
    return;
  }

  v63 = v35;
  v45 = 0;
  v46 = v35 + 64;
  sub_1B21154D4();
  sub_1B212D708();
  if (!v36)
  {
LABEL_4:
    v47 = v45;
    while (1)
    {
      v45 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v45 >= v34)
      {
        break;
      }

      ++v47;
      if (*(v46 + 8 * v45))
      {
        sub_1B211667C();
        v36 = v49 & v48;
        goto LABEL_9;
      }
    }

    if ((a12 & 1) == 0)
    {

      v39 = v34;
      goto LABEL_28;
    }

    sub_1B211DAB8();
    v39 = v34;
    if (v59 != v60)
    {
      sub_1B211E564(v58);
    }

    else
    {
      v61 = sub_1B2122A88();
      sub_1B2148CEC(v61, v62, v46);
    }

    *(v35 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    sub_1B21140F0();
LABEL_9:
    sub_1B21131E8();
    v52 = *(v51 + 8 * v50);
    if ((a12 & 1) == 0)
    {
    }

    sub_1B224B4B4();
    sub_1B224B2A8();
    sub_1B2252370();
    sub_1B2253470();
    sub_1B211647C();
    sub_1B213CF74();
    if (v53)
    {
      break;
    }

    sub_1B2112110();
LABEL_19:
    sub_1B2111AE8();
    sub_1B213CBD0();
    v57 = (v56 + 16 * v55);
    *v57 = v37;
    v57[1] = v38;
    *(*(v41 + 56) + 8 * v55) = v52;
    sub_1B212D15C();
    v35 = v63;
    if (!v36)
    {
      goto LABEL_4;
    }
  }

  sub_1B2114850();
  while (1)
  {
    sub_1B211FE98();
    if (v53)
    {
      if (v54)
      {
        break;
      }
    }

    sub_1B212E31C();
    if (!v53)
    {
      sub_1B2118398();
      goto LABEL_19;
    }
  }

LABEL_30:
  __break(1u);
}

void sub_1B2245C80(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  v6 = v5;
  v7 = a2;
  v8 = *v5;
  sub_1B21619D8(a3, a4);
  sub_1B2138CAC();
  v37 = v7;
  v9 = sub_1B2252EF0();
  if (!v8[2])
  {
LABEL_27:

LABEL_28:
    *v6 = v9;
    return;
  }

  v34 = v5;
  v10 = 0;
  v11 = v8 + 8;
  sub_1B21154D4();
  v15 = (v14 + 63) >> 6;
  v36 = v8;
  if ((v13 & v12) == 0)
  {
LABEL_4:
    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v10 >= v15)
      {
        break;
      }

      ++v19;
      if (v11[v10])
      {
        sub_1B211667C();
        v38 = v21 & v20;
        goto LABEL_9;
      }
    }

    if ((v37 & 1) == 0)
    {

      v6 = v34;
      goto LABEL_28;
    }

    sub_1B2113108();
    v6 = v34;
    if (v29 != v30)
    {
      sub_1B2113B98();
      *v11 = v31;
    }

    else
    {
      v32 = sub_1B2122A88();
      sub_1B2148CEC(v32, v33, v11);
    }

    v8[2] = 0;
    goto LABEL_27;
  }

  while (1)
  {
    sub_1B2135344();
    v38 = v18;
LABEL_9:
    v22 = v8[7] + (v16 | (v10 << 6)) * v17;
    v23 = *v22;
    v24 = *(v22 + 8);
    v25 = *(v22 + 16);
    if ((v37 & 1) == 0)
    {

      a5(v23, v24, v25);
    }

    sub_1B2253420();
    sub_1B2252370();
    sub_1B2253470();
    sub_1B211647C();
    sub_1B213CF74();
    if (v26)
    {
      break;
    }

    sub_1B2112110();
LABEL_19:
    sub_1B2111AE8();
    sub_1B212D8C4();
    sub_1B224B58C();
    *v28 = v23;
    *(v28 + 8) = v24;
    *(v28 + 16) = v25;
    sub_1B212D15C();
    v8 = v36;
    if (!v38)
    {
      goto LABEL_4;
    }
  }

  sub_1B2114850();
  while (1)
  {
    sub_1B211FE98();
    if (v26)
    {
      if (v27)
      {
        break;
      }
    }

    sub_1B2134C2C();
    if (!v26)
    {
      sub_1B2118398();
      goto LABEL_19;
    }
  }

LABEL_30:
  __break(1u);
}

void sub_1B2245EB4()
{
  sub_1B2111F14();
  v3 = v0;
  v5 = v4;
  sub_1B21181AC();
  sub_1B21619D8(&qword_1EB7A1BE8, &qword_1B226C280);
  v6 = sub_1B2115F64();
  sub_1B2146FA8(v6, v7);
  sub_1B224B1C8();
  if (!v8)
  {
LABEL_30:

LABEL_31:
    *v3 = v5;
    sub_1B2111588();
    return;
  }

  v35 = v1;
  v9 = 0;
  v10 = v1 + 64;
  sub_1B21154D4();
  sub_1B212D708();
  v11 = v5 + 64;
  if (!v2)
  {
LABEL_4:
    v12 = v9;
    while (1)
    {
      v9 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v9 >= v0)
      {
        break;
      }

      ++v12;
      if (*(v10 + 8 * v9))
      {
        sub_1B211667C();
        v2 = v14 & v13;
        goto LABEL_9;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v0;
      goto LABEL_31;
    }

    sub_1B211DAB8();
    v3 = v0;
    if (v31 != v32)
    {
      sub_1B211E564(v30);
    }

    else
    {
      v33 = sub_1B2122A88();
      sub_1B2148CEC(v33, v34, v10);
    }

    *(v1 + 16) = 0;
    goto LABEL_30;
  }

  while (1)
  {
    sub_1B21140F0();
LABEL_9:
    sub_1B21131E8();
    if (v36)
    {
      v18 = (v16 + v15 * v17);
      v55 = *(v18 + 8);
      v56 = *(v18 + 24);
      v53 = *v18;
      v54 = v18[40];
      v37 = *(v18 + 8);
      v40 = *(v18 + 72);
      v38 = *(v18 + 11);
      v39 = *(v18 + 7);
      v41 = *(v18 + 12);
      v42 = *(v18 + 6);
      v44 = *(v18 + 13);
      v43 = v18[112];
      v45 = *(v18 + 120);
      v46 = *(v18 + 136);
      v48 = v18[152];
      v49 = *(v18 + 11);
      v47 = *(v18 + 10);
      v51 = *(v18 + 25);
      v52 = *(v18 + 24);
      v50 = v18[208];
      v19 = v18[209];
    }

    else
    {
      memcpy(__dst, (v16 + v15 * v17), 0xD2uLL);
      v55 = *(__dst + 8);
      v56 = *(&__dst[1] + 8);
      v53 = __dst[0];
      v54 = BYTE8(__dst[2]);
      v51 = *(&__dst[12] + 1);
      v52 = *&__dst[12];
      v50 = __dst[13];
      v19 = BYTE1(__dst[13]);
      v49 = __dst[11];
      v48 = BYTE8(__dst[9]);
      v46 = *(&__dst[8] + 8);
      v47 = __dst[10];
      v45 = *(&__dst[7] + 8);
      v43 = __dst[7];
      v44 = *(&__dst[6] + 1);
      v40 = *(&__dst[4] + 8);
      v41 = *&__dst[6];
      v42 = *&__dst[3];
      v38 = *(&__dst[5] + 1);
      v39 = *(&__dst[3] + 1);
      v37 = *&__dst[4];

      sub_1B2181728(__dst, v57);
    }

    sub_1B2253420();
    sub_1B224B2A8();
    sub_1B2252370();
    sub_1B2253470();
    sub_1B211647C();
    sub_1B213CF74();
    if (v20)
    {
      break;
    }

    sub_1B2112110();
LABEL_22:
    LOBYTE(__dst[0]) = v19;
    sub_1B2111AE8();
    *(v11 + v24) |= v25;
    sub_1B211EB30(v26);
    v29 = v28 + 216 * v27;
    *v29 = v53;
    *(v29 + 24) = v56;
    *(v29 + 8) = v55;
    *(v29 + 40) = v54;
    *(v29 + 48) = v42;
    *(v29 + 56) = v39;
    *(v29 + 64) = v37;
    *(v29 + 72) = v40;
    *(v29 + 88) = v38;
    *(v29 + 96) = v41;
    *(v29 + 104) = v44;
    *(v29 + 112) = v43;
    *(v29 + 120) = v45;
    *(v29 + 136) = v46;
    *(v29 + 152) = v48;
    *(v29 + 160) = v47;
    *(v29 + 176) = v49;
    *(v29 + 192) = v52;
    *(v29 + 200) = v51;
    *(v29 + 208) = v50;
    *(v29 + 209) = v19;
    sub_1B212D15C();
    v1 = v35;
    if (!v2)
    {
      goto LABEL_4;
    }
  }

  sub_1B2114850();
  while (1)
  {
    sub_1B211FE98();
    if (v20)
    {
      if (v22)
      {
        break;
      }
    }

    if (v21 == v23)
    {
      v21 = 0;
    }

    if (*(v11 + 8 * v21) != -1)
    {
      sub_1B2118398();
      goto LABEL_22;
    }
  }

LABEL_33:
  __break(1u);
}

void sub_1B2246220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12)
{
  sub_1B2122614();
  v15 = v12;
  v17 = v16;
  sub_1B21181AC();
  sub_1B21619D8(&qword_1EB7A34D0, &qword_1B226C288);
  v18 = sub_1B2115F64();
  sub_1B2146FA8(v18, v19);
  sub_1B224B1C8();
  if (!v20)
  {
LABEL_27:

LABEL_28:
    *v15 = v17;
    sub_1B2115CEC();
    return;
  }

  v21 = 0;
  sub_1B21154D4();
  sub_1B212D708();
  if (!v14)
  {
LABEL_4:
    v23 = v21;
    while (1)
    {
      v21 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v21 >= v12)
      {
        break;
      }

      ++v23;
      if (v13[v21 + 8])
      {
        sub_1B211667C();
        v14 = v25 & v24;
        goto LABEL_9;
      }
    }

    if ((a12 & 1) == 0)
    {

      v15 = v12;
      goto LABEL_28;
    }

    sub_1B211DAB8();
    v15 = v12;
    if (v34 != v35)
    {
      sub_1B211E564(v33);
    }

    else
    {
      v36 = sub_1B2122A88();
      sub_1B2148CEC(v36, v37, (v13 + 8));
    }

    v13[2] = 0;
    goto LABEL_27;
  }

  while (1)
  {
    sub_1B21140F0();
LABEL_9:
    v26 = v22 | (v21 << 6);
    v27 = *(v13[6] + 8 * v26);
    v28 = *(v13[7] + 8 * v26);
    if ((a12 & 1) == 0)
    {
    }

    sub_1B224B4B4();
    sub_1B2192880();
    sub_1B2253470();
    sub_1B211647C();
    sub_1B213CF74();
    if (v29)
    {
      break;
    }

    sub_1B2112110();
LABEL_19:
    sub_1B2111AE8();
    sub_1B213CBD0();
    *(v32 + 8 * v31) = v27;
    *(*(v17 + 56) + 8 * v31) = v28;
    sub_1B212D15C();
    if (!v14)
    {
      goto LABEL_4;
    }
  }

  sub_1B2114850();
  while (1)
  {
    sub_1B211FE98();
    if (v29)
    {
      if (v30)
      {
        break;
      }
    }

    sub_1B212E31C();
    if (!v29)
    {
      sub_1B2118398();
      goto LABEL_19;
    }
  }

LABEL_30:
  __break(1u);
}

BOOL sub_1B22463C0()
{
  v3 = v1;
  sub_1B211D530();
  v4 = *v1;
  v5 = sub_1B2253410();
  v6 = ~(-1 << *(v4 + 32));
  while (1)
  {
    v7 = v5 & v6;
    v8 = (1 << (v5 & v6)) & *(v4 + 56 + (((v5 & v6) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v8)
    {
      break;
    }

    if (*(*(v4 + 48) + 8 * v7) == v0)
    {
      goto LABEL_6;
    }

    v5 = v7 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v3;
  sub_1B224805C(v0, v7, isUniquelyReferenced_nonNull_native);
  *v3 = v11;
LABEL_6:
  result = v8 == 0;
  *v2 = v0;
  return result;
}

BOOL sub_1B224648C(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v158 = *MEMORY[0x1E69E9840];
  v9 = *v4;
  v10 = a4;
  v156[9] = a2;
  v156[10] = a3;
  v157 = a4;
  sub_1B2253420();
  DatabaseValue.hash(into:)(v156);
  sub_1B2253470();
  v153 = v9;
  sub_1B2113B98();
  v154 = ~v12;
  v155 = v13;
  v15 = v10 == 4 && (a3 | a2) == 0;
  v151 = v15;
  v17 = *&a2 != 0.0 || a3 != 0xC000000000000000;
  v149 = v17;
  v18 = __OFSUB__(HIDWORD(a2), a2);
  v147 = v18;
  v19 = *&a2 > -9.22337204e18;
  if (*&a2 >= 9.22337204e18)
  {
    v19 = 0;
  }

  if (trunc(*&a2) != *&a2)
  {
    v19 = 0;
  }

  v150 = v19;
  while (2)
  {
    v20 = v11 & v154;
    v21 = (1 << (v11 & v154)) & *(v155 + (((v11 & v154) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v21)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v156[0] = *v148;
      v97 = sub_1B2122C80();
      sub_1B2113A20(v97, v98, a4);
      v99 = sub_1B2122C80();
      sub_1B2248160(v99, v100, a4, v20, isUniquelyReferenced_nonNull_native);
      *v148 = v156[0];
      *a1 = *&a2;
      *(a1 + 8) = a3;
      *(a1 + 16) = a4;
      return v21 == 0;
    }

    v22 = *(v153 + 48) + 24 * v20;
    v24 = *v22;
    v23 = *(v22 + 8);
    v25 = *(v22 + 16);
    switch(v25)
    {
      case 1:
        if (a4)
        {
          if (a4 != 1)
          {
            goto LABEL_56;
          }

          v152 = 24 * v20;
          v46 = sub_1B2111658();
          v48 = sub_1B2117AFC(v46, v47, 1);
          sub_1B2113A44(v48, v49, 1);
          v50 = sub_1B2111658();
          sub_1B2113A44(v50, v51, 1);
          if (v24 == *&a2)
          {
            goto LABEL_84;
          }
        }

        else
        {
          v152 = 24 * v20;
          v74 = sub_1B2111658();
          v76 = sub_1B2117AFC(v74, v75, 1);
          sub_1B2113A44(v76, v77, 0);
          v78 = sub_1B2111658();
          sub_1B2113A44(v78, v79, 1);
          v80 = trunc(v24);
          if (v24 > -9.22337204e18 && v24 < 9.22337204e18 && v80 == v24 && v24 == a2)
          {
            goto LABEL_84;
          }
        }

        goto LABEL_58;
      case 2:
        if (a4 != 2)
        {
          v52 = sub_1B2111658();
          sub_1B2113A20(v52, v53, 2);

          goto LABEL_56;
        }

        v152 = 24 * v20;
        if (*&v24 == a2 && v23 == a3)
        {
          v108 = sub_1B2122C80();
          sub_1B2113A20(v108, v109, 2);
          v110 = sub_1B2122C80();
          v105 = sub_1B2117AFC(v110, v111, 2);
          v107 = 2;
          goto LABEL_85;
        }

        sub_1B2111658();
        sub_1B211F200();
        v34 = sub_1B22531F0();
        v35 = sub_1B2122C80();
        v37 = sub_1B211F774(v35, v36, 2);
        v39 = sub_1B211F774(v37, v38, 2);
        v41 = sub_1B2117AFC(v39, v40, 2);
        sub_1B2113A44(v41, v42, 2);
        if (v34)
        {
          goto LABEL_84;
        }

        goto LABEL_58;
      case 3:
        if (a4 != 3)
        {
          v54 = sub_1B2117E98();
          v57 = sub_1B211F774(v54, v55, v56);
          sub_1B2126638(v57, v58);
LABEL_56:
          v59 = sub_1B2122C80();
          sub_1B2113A20(v59, v60, a4);
          v61 = a4;
          goto LABEL_57;
        }

        v45 = v24 != 0.0 || v23 != 0xC000000000000000 || a3 >> 62 != 3;
        if (!v45 && !v149)
        {
          v152 = 24 * v20;
          v127 = sub_1B2111A28();
          sub_1B2113A20(v127, v128, v129);
          v130 = sub_1B2111A28();
          sub_1B2113A20(v130, v131, v132);
          v133 = sub_1B2111A28();
          sub_1B2113A20(v133, v134, v135);
          v136 = sub_1B2111A28();
          sub_1B2113A44(v136, v137, v138);
          v139 = sub_1B2111A28();
          sub_1B2113A44(v139, v140, v141);
          v125 = 0;
          v126 = 0xC000000000000000;
          goto LABEL_83;
        }

        break;
      case 4:
        if (!v151)
        {
          goto LABEL_56;
        }

        v152 = 24 * v20;
        v101 = sub_1B2111658();
        sub_1B2113A44(v101, v102, 4);
        sub_1B2113A44(0, 0, 4);
        v103 = sub_1B2111658();
        sub_1B2113A44(v103, v104, 4);
        v105 = 0;
        v106 = 0;
        v107 = 4;
        goto LABEL_85;
      default:
        if (a4)
        {
          if (a4 != 1)
          {
            goto LABEL_56;
          }

          v152 = 24 * v20;
          v26 = sub_1B2111658();
          v28 = sub_1B2117AFC(v26, v27, 0);
          sub_1B2113A44(v28, v29, 1);
          v30 = sub_1B2111658();
          sub_1B2113A44(v30, v31, 0);
          v32 = v150;
          if (*&v24 != *&a2)
          {
            v32 = 0;
          }

          if (v32)
          {
            goto LABEL_84;
          }
        }

        else
        {
          v152 = 24 * v20;
          v68 = sub_1B2111658();
          v70 = sub_1B2117AFC(v68, v69, 0);
          sub_1B2113A44(v70, v71, 0);
          v72 = sub_1B2111658();
          sub_1B2113A44(v72, v73, 0);
          if (*&v24 == a2)
          {
            goto LABEL_84;
          }
        }

        goto LABEL_58;
    }

    v84 = BYTE6(a3);
    switch(a3 >> 62)
    {
      case 1uLL:
        v84 = HIDWORD(a2) - a2;
        if (v147)
        {
          goto LABEL_88;
        }

        goto LABEL_77;
      case 2uLL:
        v86 = *(a2 + 16);
        v85 = *(a2 + 24);
        v87 = __OFSUB__(v85, v86);
        v84 = v85 - v86;
        if (!v87)
        {
          goto LABEL_77;
        }

        __break(1u);
LABEL_88:
        __break(1u);
        __break(1u);
        __break(1u);
        __break(1u);
        __break(1u);
        __break(1u);
        __break(1u);
        return result;
      case 3uLL:
        goto LABEL_81;
      default:
LABEL_77:
        if (v84)
        {
          v25 = 3;
          v88 = sub_1B2122C80();
          v90 = sub_1B21223D0(v88, v89);
          sub_1B2113A20(v90, v91, v92);
          v93 = sub_1B2117E98();
          sub_1B2113A20(v93, v94, v95);
          v61 = 3;
LABEL_57:
          v62 = sub_1B2111658();
          v64 = sub_1B2117AFC(v62, v63, v25);
          sub_1B2113A44(v64, v65, v61);
          v66 = sub_1B2111658();
          sub_1B2113A44(v66, v67, v25);
LABEL_58:
          v11 = v20 + 1;
          continue;
        }

LABEL_81:
        v152 = 24 * v20;
        v112 = sub_1B2122C80();
        v114 = sub_1B21223D0(v112, v113);
        v117 = sub_1B211F774(v114, v115, v116);
        v119 = sub_1B21223D0(v117, v118);
        sub_1B2113A44(v119, v120, v121);
        v122 = sub_1B2114564();
        sub_1B2113A44(v122, v123, v124);
        v125 = sub_1B2111658();
LABEL_83:
        sub_1B2113A44(v125, v126, 3);
LABEL_84:
        v105 = sub_1B2122C80();
        v107 = a4;
LABEL_85:
        sub_1B2113A44(v105, v106, v107);
        v142 = *(v153 + 48) + v152;
        v143 = *v142;
        v144 = *(v142 + 8);
        *a1 = *v142;
        *(a1 + 8) = v144;
        v145 = *(v142 + 16);
        *(a1 + 16) = v145;
        sub_1B2113A20(v143, v144, v145);
        return v21 == 0;
    }
  }
}

uint64_t sub_1B2246F14(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1B21619D8(&qword_1EB7A34B8, &qword_1B226C260);
    v2 = sub_1B2252C80();
    v30 = v2;
    sub_1B2252C10();
    while (1)
    {
      v3 = sub_1B2252C40();
      if (!v3)
      {

        return v2;
      }

      v20 = v3;
      type metadata accessor for TableAlias();
      swift_dynamicCast();
      v8 = *(v2 + 16);
      if (*(v2 + 24) <= v8)
      {
        sub_1B2247E24(v8 + 1, &qword_1EB7A34B8, &qword_1B226C260, sub_1B2138CB8, v4, v5, v6, v7, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, vars0, vars8);
      }

      v2 = v30;
      sub_1B2253420();
      sub_1B2138CB8();
      result = sub_1B2253470();
      v10 = v30 + 56;
      v11 = -1 << *(v30 + 32);
      v12 = result & ~v11;
      v13 = v12 >> 6;
      if (((-1 << v12) & ~*(v30 + 56 + 8 * (v12 >> 6))) == 0)
      {
        break;
      }

      v14 = __clz(__rbit64((-1 << v12) & ~*(v30 + 56 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v30 + 48) + 8 * v14) = v29;
      ++*(v30 + 16);
    }

    v15 = 0;
    v16 = (63 - v11) >> 6;
    while (++v13 != v16 || (v15 & 1) == 0)
    {
      v17 = v13 == v16;
      if (v13 == v16)
      {
        v13 = 0;
      }

      v15 |= v17;
      v18 = *(v10 + 8 * v13);
      if (v18 != -1)
      {
        v14 = __clz(__rbit64(~v18)) + (v13 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1B2247118(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1B21619D8(&qword_1EB7A34A0, &unk_1B226C240);
    v2 = sub_1B2252C80();
    v23 = v2;
    sub_1B2252C10();
    while (1)
    {
      v3 = sub_1B2252C40();
      if (!v3)
      {

        return v2;
      }

      v21[0] = v3;
      type metadata accessor for Row();
      swift_dynamicCast();
      v8 = *(v2 + 16);
      if (*(v2 + 24) <= v8)
      {
        sub_1B2247E24(v8 + 1, &qword_1EB7A34A0, &unk_1B226C240, Row.hash(into:), v4, v5, v6, v7, v20, v21[0], v21[1], v21[2], v21[3], v21[4], v21[5], v21[6], v21[7], v21[8], v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, vars0, vars8);
      }

      v9 = v22;
      v2 = v23;
      sub_1B2253420();
      Row.hash(into:)(v21);
      result = sub_1B2253470();
      v11 = v2 + 56;
      v12 = -1 << *(v2 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      if (((-1 << v13) & ~*(v2 + 56 + 8 * (v13 >> 6))) == 0)
      {
        break;
      }

      v15 = __clz(__rbit64((-1 << v13) & ~*(v2 + 56 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v2 + 48) + 8 * v15) = v9;
      ++*(v2 + 16);
    }

    v16 = 0;
    v17 = (63 - v12) >> 6;
    while (++v14 != v17 || (v16 & 1) == 0)
    {
      v18 = v14 == v17;
      if (v14 == v17)
      {
        v14 = 0;
      }

      v16 |= v18;
      v19 = *(v11 + 8 * v14);
      if (v19 != -1)
      {
        v15 = __clz(__rbit64(~v19)) + (v14 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1B22474C8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1B21619D8(&qword_1EB7A34A8, &qword_1B226C250);
    v2 = sub_1B2252C80();
    v15 = v2;
    sub_1B2252C10();
    while (1)
    {
      if (!sub_1B2252C40())
      {

        return v2;
      }

      type metadata accessor for DatabaseCollation();
      swift_dynamicCast();
      v3 = *(v2 + 16);
      if (*(v2 + 24) <= v3)
      {
        sub_1B2124804(v3 + 1);
      }

      v2 = v15;
      sub_1B2253420();
      MEMORY[0x1B2742F10](0);
      result = sub_1B2253470();
      v5 = -1 << *(v15 + 32);
      v6 = result & ~v5;
      v7 = v6 >> 6;
      if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) == 0)
      {
        break;
      }

      sub_1B224B4F8();
LABEL_15:
      sub_1B2134C18(v8);
      *(v12 + 8 * v13) = v14;
      ++*(v15 + 16);
    }

    v9 = 0;
    v10 = (63 - v5) >> 6;
    while (++v7 != v10 || (v9 & 1) == 0)
    {
      v11 = v7 == v10;
      if (v7 == v10)
      {
        v7 = 0;
      }

      v9 |= v11;
      if (*(v15 + 56 + 8 * v7) != -1)
      {
        sub_1B224B4CC();
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1B224767C()
{
  v1 = v0;
  v2 = *v0;
  sub_1B21619D8(&qword_1EB7A2340, qword_1B225D9B0);
  result = sub_1B2252C70();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

  v29 = v2;
  v5 = 0;
  v6 = (v2 + 56);
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = result + 56;
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v2 + 32);
    if (v28 >= 64)
    {
      sub_1B2148CEC(0, (v28 + 63) >> 6, v6);
    }

    else
    {
      *v6 = -1 << v28;
    }

    v1 = v0;
    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = (*(v2 + 48) + 32 * (v12 | (v5 << 6)));
    v16 = *v15;
    v17 = v15[1];
    v18 = v15[2];
    v30 = v15[3];
    sub_1B2253420();
    sub_1B2252370();
    result = sub_1B2253470();
    v19 = -1 << *(v4 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v4 + 48) + 32 * v22);
    *v27 = v16;
    v27[1] = v17;
    v27[2] = v18;
    v27[3] = v30;
    ++*(v4 + 16);
    v2 = v29;
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v11 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1B22478EC()
{
  v1 = v0;
  v2 = *v0;
  sub_1B21619D8(&qword_1EB7A22D0, &unk_1B225D340);
  result = sub_1B2252C70();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

  v5 = 0;
  v7 = (v2 + 56);
  v6 = *(v2 + 56);
  v8 = 1 << *(v2 + 32);
  v24 = v1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & v6;
  v11 = result + 56;
  if ((v9 & v6) == 0)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= ((v8 + 63) >> 6))
      {
        break;
      }

      v14 = v7[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    if (v8 >= 64)
    {
      sub_1B2148CEC(0, (v8 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v1 = v24;
    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
    result = sub_1B2253410();
    v16 = -1 << *(v4 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
    {
      break;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    *(*(v4 + 48) + 8 * v19) = v15;
    ++*(v4 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v20 = 0;
  v21 = (63 - v16) >> 6;
  while (++v18 != v21 || (v20 & 1) == 0)
  {
    v22 = v18 == v21;
    if (v18 == v21)
    {
      v18 = 0;
    }

    v20 |= v22;
    v23 = *(v11 + 8 * v18);
    if (v23 != -1)
    {
      v19 = __clz(__rbit64(~v23)) + (v18 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1B2247B10()
{
  v1 = v0;
  v2 = *v0;
  sub_1B21619D8(&qword_1EB7A34C8, &qword_1B226C278);
  result = sub_1B2252C70();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_37:

    *v1 = v4;
    return result;
  }

  v33 = v2;
  v5 = 0;
  v6 = (v2 + 56);
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = result + 56;
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v32 = 1 << *(v2 + 32);
    if (v32 >= 64)
    {
      sub_1B2148CEC(0, (v32 + 63) >> 6, v6);
    }

    else
    {
      *v6 = -1 << v32;
    }

    v1 = v0;
    *(v2 + 16) = 0;
    goto LABEL_37;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = *(v2 + 48) + 24 * (v12 | (v5 << 6));
    v16 = *v15;
    v17 = *(v15 + 8);
    v18 = *(v15 + 16);
    sub_1B2253420();
    switch(v18)
    {
      case 1:
        if ((v16 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v19 = *&v16;
        }

        else
        {
          v19 = 0.0;
        }

        goto LABEL_21;
      case 2:
        sub_1B2113A20(v16, v17, 2);
        sub_1B2252370();
        v20 = v16;
        v21 = v17;
        v22 = 2;
        goto LABEL_17;
      case 3:
        sub_1B2113A20(v16, v17, 3);
        sub_1B2251DF0();
        v20 = v16;
        v21 = v17;
        v22 = 3;
LABEL_17:
        sub_1B2113A44(v20, v21, v22);
        break;
      case 4:
        MEMORY[0x1B2742F10](0);
        break;
      default:
        v19 = v16;
LABEL_21:
        MEMORY[0x1B2742F40](*&v19);
        break;
    }

    result = sub_1B2253470();
    v23 = -1 << *(v4 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v11 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v11 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_31:
    *(v11 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = *(v4 + 48) + 24 * v26;
    *v31 = v16;
    *(v31 + 8) = v17;
    *(v31 + 16) = v18;
    ++*(v4 + 16);
    v2 = v33;
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  v27 = 0;
  v28 = (63 - v23) >> 6;
  while (++v25 != v28 || (v27 & 1) == 0)
  {
    v29 = v25 == v28;
    if (v25 == v28)
    {
      v25 = 0;
    }

    v27 |= v29;
    v30 = *(v11 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_31;
    }
  }

LABEL_39:
  __break(1u);
  return result;
}

void sub_1B2247E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_1B2122614();
  a31 = v36;
  a32 = v37;
  v71 = v38;
  v39 = v32;
  sub_1B21181AC();
  v42 = sub_1B212CFD8(v40, v41);
  sub_1B21619D8(v42, v43);
  sub_1B2115F64();
  sub_1B2252C70();
  sub_1B224B1C8();
  if (!v44)
  {
LABEL_25:

    *v39 = v34;
    sub_1B2115CEC();
    return;
  }

  v45 = 0;
  sub_1B212B4E4();
  v48 = v47 & v46;
  v50 = (v49 + 63) >> 6;
  v51 = v34 + 56;
  if ((v47 & v46) == 0)
  {
LABEL_4:
    v53 = v45;
    while (1)
    {
      v45 = v53 + 1;
      if (__OFADD__(v53, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v45 >= v50)
      {
        break;
      }

      ++v53;
      if (*(v33 + 56 + 8 * v45))
      {
        sub_1B211667C();
        v48 = v55 & v54;
        goto LABEL_9;
      }
    }

    sub_1B211DAB8();
    if (v67 != v68)
    {
      sub_1B211E564(v66);
    }

    else
    {
      v69 = sub_1B2122A88();
      sub_1B2148CEC(v69, v70, v33 + 56);
    }

    v39 = v32;
    *(v33 + 16) = 0;
    goto LABEL_25;
  }

  while (1)
  {
    sub_1B21140F0();
LABEL_9:
    v56 = *(*(v33 + 48) + 8 * (v52 | (v45 << 6)));
    sub_1B224B4B4();
    v71(&a12);
    sub_1B2253470();
    sub_1B2124268();
    if (((v35 << v58) & ~*(v51 + 8 * v57)) == 0)
    {
      break;
    }

    sub_1B2112110();
LABEL_19:
    sub_1B2111AE8();
    *(v51 + v63) |= v64;
    *(*(v34 + 48) + 8 * v65) = v56;
    sub_1B212D15C();
    if (!v48)
    {
      goto LABEL_4;
    }
  }

  sub_1B2114850();
  while (1)
  {
    sub_1B211FE98();
    if (v62)
    {
      if (v60)
      {
        break;
      }
    }

    if (v59 == v61)
    {
      v59 = 0;
    }

    if (*(v51 + 8 * v59) != -1)
    {
      sub_1B2118398();
      goto LABEL_19;
    }
  }

LABEL_27:
  __break(1u);
}

unint64_t sub_1B2247FB4(uint64_t a1, void *a2, uint64_t (*a3)(_BYTE *))
{
  sub_1B2253420();
  a3(v7);
  sub_1B2253470();
  sub_1B2113B98();
  result = sub_1B2252C00();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

unint64_t sub_1B224805C(unint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1B22478EC();
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_1B22493D4();
LABEL_10:
      v12 = *v3;
      result = sub_1B2253410();
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + 8 * a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_1B2248F08();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_1B2253380();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

void sub_1B2248160(uint64_t result, unint64_t a2, char a3, unint64_t a4, char a5)
{
  v52 = *MEMORY[0x1E69E9840];
  v10 = *(*v5 + 16);
  v11 = *(*v5 + 24);
  if (v11 <= v10 || (a5 & 1) == 0)
  {
    if (a5)
    {
      sub_1B2247B10();
    }

    else
    {
      if (v11 > v10)
      {
        sub_1B22491C8();
        goto LABEL_86;
      }

      sub_1B22495C0();
    }

    v45 = v5;
    v12 = *v5;
    __s1[9] = result;
    __s1[10] = a2;
    v51 = a3;
    sub_1B2253420();
    DatabaseValue.hash(into:)(__s1);
    v13 = sub_1B2253470();
    v49 = ~(-1 << *(v12 + 32));
    v14 = v12 + 56;
    v16 = a3 == 4 && (a2 | result) == 0;
    v48 = v16;
    v18 = *&result != 0.0 || a2 != 0xC000000000000000;
    v46 = v18;
    v19 = __OFSUB__(HIDWORD(result), result);
    v44 = v19;
    v20 = *&result > -9.22337204e18;
    if (*&result >= 9.22337204e18)
    {
      v20 = 0;
    }

    if (trunc(*&result) != *&result)
    {
      v20 = 0;
    }

    v47 = v20;
    while (1)
    {
      a4 = v13 & v49;
      if (((*(v14 + (((v13 & v49) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v49)) & 1) == 0)
      {
        break;
      }

      v21 = *(v12 + 48) + 24 * a4;
      v22 = *v21;
      v23 = *(v21 + 8);
      v24 = *(v21 + 16);
      switch(v24)
      {
        case 1:
          if (a3)
          {
            if (a3 != 1)
            {
              goto LABEL_65;
            }

            sub_1B2113A44(v22, v23, 1);
            sub_1B2113A44(result, a2, 1);
            sub_1B2113A44(v22, v23, 1);
            if (*&v22 == *&result)
            {
              goto LABEL_95;
            }
          }

          else
          {
            sub_1B2113A44(v22, v23, 1);
            sub_1B2113A44(result, a2, 0);
            sub_1B2113A44(v22, v23, 1);
            v33 = trunc(*&v22);
            if (*&v22 > -9.22337204e18 && *&v22 < 9.22337204e18 && v33 == *&v22 && *&v22 == result)
            {
              goto LABEL_95;
            }
          }

          break;
        case 2:
          if (a3 != 2)
          {
            sub_1B2113A20(v22, v23, 2);

            goto LABEL_65;
          }

          if (v22 == result && v23 == a2)
          {
            sub_1B2113A20(result, a2, 2);
            sub_1B2113A20(result, a2, 2);
            v23 = a2;
            v22 = result;
LABEL_94:
            sub_1B2113A44(result, a2, v24);
            sub_1B2113A44(v22, v23, v24);
LABEL_95:
            sub_1B2253380();
            __break(1u);
            JUMPOUT(0);
          }

          v27 = sub_1B22531F0();
          sub_1B2113A20(result, a2, 2);
          sub_1B2113A20(v22, v23, 2);
          sub_1B2113A44(v22, v23, 2);
          sub_1B2113A44(result, a2, 2);
          if (v27)
          {
            goto LABEL_95;
          }

          break;
        case 3:
          if (a3 == 3)
          {
            v30 = *&v22 != 0.0 || v23 != 0xC000000000000000 || a2 >> 62 != 3;
            if (!v30 && !v46)
            {
              a2 = 0xC000000000000000;
              sub_1B2113A20(0, 0xC000000000000000, 3);
              sub_1B2113A20(0, 0xC000000000000000, 3);
              sub_1B2113A20(0, 0xC000000000000000, 3);
              sub_1B2113A44(0, 0xC000000000000000, 3);
              *&result = 0.0;
              *&v22 = 0.0;
              v23 = 0xC000000000000000;
              goto LABEL_94;
            }

            v31 = BYTE6(a2);
            switch(a2 >> 62)
            {
              case 1uLL:
                v31 = HIDWORD(result) - result;
                if (v44)
                {
                  goto LABEL_90;
                }

                goto LABEL_83;
              case 2uLL:
                v38 = *(result + 16);
                v37 = *(result + 24);
                v39 = __OFSUB__(v37, v38);
                v31 = v37 - v38;
                if (!v39)
                {
                  goto LABEL_83;
                }

                goto LABEL_89;
              case 3uLL:
                goto LABEL_93;
              default:
LABEL_83:
                if (!v31)
                {
LABEL_93:
                  sub_1B2113A20(v22, v23, 3);
                  sub_1B2113A20(result, a2, 3);
                  sub_1B2113A20(v22, v23, 3);
                  sub_1B2113A44(v22, v23, 3);
                  goto LABEL_94;
                }

                v24 = 3;
                sub_1B2113A20(v22, v23, 3);
                sub_1B2113A20(result, a2, 3);
                sub_1B2113A20(v22, v23, 3);
                v32 = 3;
                v14 = v12 + 56;
                break;
            }
          }

          else
          {
            sub_1B2113A20(v22, v23, 3);
            sub_1B2126638(v22, v23);
LABEL_65:
            sub_1B2113A20(result, a2, a3);
            v32 = a3;
          }

          sub_1B2113A44(v22, v23, v24);
          sub_1B2113A44(result, a2, v32);
          sub_1B2113A44(v22, v23, v24);
          break;
        case 4:
          if (!v48)
          {
            goto LABEL_65;
          }

          sub_1B2113A44(v22, v23, 4);
          a2 = 0;
          *&result = 0.0;
          goto LABEL_94;
        default:
          if (a3)
          {
            if (a3 != 1)
            {
              goto LABEL_65;
            }

            sub_1B2113A44(v22, v23, 0);
            sub_1B2113A44(result, a2, 1);
            sub_1B2113A44(v22, v23, 0);
            v25 = v47;
            if (v22 != *&result)
            {
              v25 = 0;
            }

            if (v25)
            {
              goto LABEL_95;
            }
          }

          else
          {
            sub_1B2113A44(v22, v23, 0);
            sub_1B2113A44(result, a2, 0);
            sub_1B2113A44(v22, v23, 0);
            if (v22 == result)
            {
              goto LABEL_95;
            }
          }

          break;
      }

      v13 = a4 + 1;
    }

    v5 = v45;
  }

LABEL_86:
  v40 = *v5;
  *(*v5 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v41 = *(v40 + 48) + 24 * a4;
  *v41 = *&result;
  *(v41 + 8) = a2;
  *(v41 + 16) = a3;
  v42 = *(v40 + 16);
  v39 = __OFADD__(v42, 1);
  v43 = v42 + 1;
  if (v39)
  {
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
    __break(1u);
    __break(1u);
    __break(1u);
    __break(1u);
    __break(1u);
    __break(1u);
  }

  *(v40 + 16) = v43;
}

void *sub_1B2248DB0()
{
  v1 = v0;
  sub_1B21619D8(&qword_1EB7A22C0, &unk_1B225D990);
  v2 = *v0;
  v3 = sub_1B2252C60();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1B2248F08()
{
  v1 = v0;
  sub_1B21619D8(&qword_1EB7A22D0, &unk_1B225D340);
  v2 = *v0;
  v3 = sub_1B2252C60();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1B2249048()
{
  v1 = v0;
  sub_1B21619D8(&qword_1EB7A3498, &qword_1B226C228);
  v2 = *v0;
  v3 = sub_1B2252C60();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + (v17 << 6));
        v20 = *v18;
        v19 = v18[1];
        v21 = v18[3];
        v27[2] = v18[2];
        v27[3] = v21;
        v27[0] = v20;
        v27[1] = v19;
        v22 = (*(v4 + 48) + (v17 << 6));
        v23 = *v18;
        v24 = v18[1];
        v25 = v18[3];
        v22[2] = v18[2];
        v22[3] = v25;
        *v22 = v23;
        v22[1] = v24;
        result = sub_1B2148158(v27, &v26);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void sub_1B22491C8()
{
  sub_1B2123510();
  v4 = v0;
  sub_1B21619D8(&qword_1EB7A34C8, &qword_1B226C278);
  v5 = *v0;
  v6 = sub_1B2252C60();
  if (*(v5 + 16))
  {
    v7 = sub_1B213CDAC();
    if (v10)
    {
      v11 = v7 >= v9;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      memmove(v7, v1, 8 * v8);
    }

    v12 = 0;
    *(v6 + 16) = *(v5 + 16);
    sub_1B212209C();
    sub_1B212604C();
    while (v3)
    {
      sub_1B213CCE8();
LABEL_15:
      v17 = 3 * (v13 | (v12 << 6));
      v18 = *(v5 + 48) + 8 * v17;
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      v22 = *(v6 + 48) + 8 * v17;
      *v22 = *v18;
      *(v22 + 8) = v20;
      *(v22 + 16) = v21;
      sub_1B2113A20(v19, v20, v21);
    }

    v14 = v12;
    while (1)
    {
      v12 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v12 >= v2)
      {
        goto LABEL_17;
      }

      ++v14;
      if (*(v1 + v12))
      {
        sub_1B211667C();
        v3 = v16 & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v4 = v6;
    sub_1B2115ED4();
  }
}

void sub_1B22492F4()
{
  sub_1B2123510();
  v4 = v0;
  sub_1B21619D8(v5, v6);
  v7 = *v0;
  v8 = sub_1B2252C60();
  if (*(v7 + 16))
  {
    v9 = sub_1B213CDAC();
    if (v12)
    {
      v13 = v9 >= v11;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      memmove(v9, v1, 8 * v10);
    }

    v14 = 0;
    *(v8 + 16) = *(v7 + 16);
    sub_1B212209C();
    sub_1B212604C();
    while (v3)
    {
      sub_1B213CCE8();
LABEL_15:
      *(*(v8 + 48) + 8 * (v15 | (v14 << 6))) = *(*(v7 + 48) + 8 * (v15 | (v14 << 6)));
    }

    v16 = v14;
    while (1)
    {
      v14 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v14 >= v2)
      {
        goto LABEL_17;
      }

      ++v16;
      if (*(v1 + v14))
      {
        sub_1B211667C();
        v3 = v18 & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v4 = v8;
    sub_1B2115ED4();
  }
}

uint64_t sub_1B22493D4()
{
  v1 = v0;
  v2 = *v0;
  sub_1B21619D8(&qword_1EB7A22D0, &unk_1B225D340);
  result = sub_1B2252C70();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v14 = *(*(v2 + 48) + 8 * (v11 | (v5 << 6)));
        result = sub_1B2253410();
        v15 = -1 << *(v4 + 32);
        v16 = result & ~v15;
        v17 = v16 >> 6;
        if (((-1 << v16) & ~*(v10 + 8 * (v16 >> 6))) == 0)
        {
          break;
        }

        v18 = __clz(__rbit64((-1 << v16) & ~*(v10 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        *(*(v4 + 48) + 8 * v18) = v14;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v10 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v5;
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v9)
        {
          goto LABEL_23;
        }

        v13 = *(v2 + 56 + 8 * v5);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v8 = (v13 - 1) & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_23:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1B22495C0()
{
  v1 = v0;
  v2 = *v0;
  sub_1B21619D8(&qword_1EB7A34C8, &qword_1B226C278);
  result = sub_1B2252C70();
  v4 = result;
  if (*(v2 + 16))
  {
    v32 = v2;
    v5 = 0;
    v6 = v2 + 56;
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(v2 + 48) + 24 * (v12 | (v5 << 6));
        v16 = *v15;
        v17 = *(v15 + 8);
        v18 = *(v15 + 16);
        sub_1B2253420();
        switch(v18)
        {
          case 1:
            if ((v16 & 0x7FFFFFFFFFFFFFFFLL) != 0)
            {
              v19 = *&v16;
            }

            else
            {
              v19 = 0.0;
            }

            goto LABEL_21;
          case 2:
            sub_1B2113A20(v16, v17, 2);
            sub_1B2113A20(v16, v17, 2);
            sub_1B2252370();
            v20 = v16;
            v21 = v17;
            v22 = 2;
            goto LABEL_17;
          case 3:
            sub_1B2113A20(v16, v17, 3);
            sub_1B2113A20(v16, v17, 3);
            sub_1B2251DF0();
            v20 = v16;
            v21 = v17;
            v22 = 3;
LABEL_17:
            sub_1B2113A44(v20, v21, v22);
            break;
          case 4:
            MEMORY[0x1B2742F10](0);
            break;
          default:
            v19 = v16;
LABEL_21:
            MEMORY[0x1B2742F40](*&v19);
            break;
        }

        result = sub_1B2253470();
        v23 = -1 << *(v4 + 32);
        v24 = result & ~v23;
        v25 = v24 >> 6;
        if (((-1 << v24) & ~*(v11 + 8 * (v24 >> 6))) == 0)
        {
          break;
        }

        v26 = __clz(__rbit64((-1 << v24) & ~*(v11 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_31:
        *(v11 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
        v31 = *(v4 + 48) + 24 * v26;
        *v31 = v16;
        *(v31 + 8) = v17;
        *(v31 + 16) = v18;
        ++*(v4 + 16);
        v2 = v32;
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v11 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_31;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v5;
      while (1)
      {
        v5 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v5 >= v10)
        {

          v1 = v0;
          goto LABEL_35;
        }

        v14 = *(v6 + 8 * v5);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_35:
    *v1 = v4;
  }

  return result;
}

void sub_1B22498C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_1B2122614();
  a31 = v35;
  a32 = v36;
  v63 = v37;
  v38 = v32;
  v39 = *v32;
  v42 = sub_1B212CFD8(v40, v41);
  sub_1B21619D8(v42, v43);
  v44 = sub_1B2252C70();
  if (*(v39 + 16))
  {
    v45 = 0;
    sub_1B212B4E4();
    sub_1B2125FE8();
    v47 = v46 >> 6;
    v48 = v44 + 56;
    if (v33)
    {
      while (1)
      {
        sub_1B2149880();
LABEL_9:
        v53 = *(*(v39 + 48) + 8 * (v49 | (v45 << 6)));
        sub_1B2253420();

        v63(&a12);
        sub_1B2253470();
        sub_1B2124268();
        if (((v34 << v55) & ~*(v48 + 8 * v54)) == 0)
        {
          break;
        }

        sub_1B2112110();
LABEL_19:
        sub_1B2111AE8();
        *(v48 + v60) |= v61;
        *(*(v44 + 48) + 8 * v62) = v53;
        ++*(v44 + 16);
        if (!v33)
        {
          goto LABEL_4;
        }
      }

      sub_1B2114850();
      while (1)
      {
        sub_1B211FE98();
        if (v59)
        {
          if (v57)
          {
            break;
          }
        }

        if (v56 == v58)
        {
          v56 = 0;
        }

        if (*(v48 + 8 * v56) != -1)
        {
          sub_1B2118398();
          goto LABEL_19;
        }
      }
    }

    else
    {
LABEL_4:
      v50 = v45;
      while (1)
      {
        v45 = v50 + 1;
        if (__OFADD__(v50, 1))
        {
          break;
        }

        if (v45 >= v47)
        {

          v38 = v32;
          goto LABEL_23;
        }

        ++v50;
        if (*(v39 + 56 + 8 * v45))
        {
          sub_1B211667C();
          v33 = v52 & v51;
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_23:
    *v38 = v44;
    sub_1B2115CEC();
  }
}

uint64_t sub_1B2249A6C(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1B21A1610();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1B2249AD8(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_1B2249AD8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1B2252FC0();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1B21619D8(&qword_1EB7A0E40, &unk_1B226BA30);
        v6 = sub_1B2252610();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1B2249CB8(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1B2249BDC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1B2249BDC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 24 * a3 - 24;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 24 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *v12 && v10 == *(v12 + 8))
        {
          break;
        }

        result = sub_1B22531F0();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        v14 = *(v12 + 32);
        v15 = *(v12 + 16);
        result = *(v12 + 24);
        *(v12 + 24) = *v12;
        *(v12 + 40) = v15;
        *v12 = result;
        *(v12 + 8) = v14;
        v10 = v14;
        v12 -= 24;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 24;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1B2249CB8(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v97 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = v7++;
      if (v7 < v6)
      {
        v10 = *a3;
        v11 = (*a3 + 24 * v7);
        v12 = *v11;
        v13 = v11[1];
        v14 = (*a3 + 24 * v9);
        if (v12 == *v14 && v13 == v14[1])
        {
          v16 = 0;
        }

        else
        {
          v16 = sub_1B22531F0();
        }

        v7 = v9 + 2;
        v17 = v10 + 24 * v9;
        v18 = 24 * v9;
        v19 = (v17 + 56);
        while (v7 < v6)
        {
          if (*(v19 - 1) == *(v19 - 4) && *v19 == *(v19 - 3))
          {
            if (v16)
            {
              goto LABEL_21;
            }
          }

          else if ((v16 ^ sub_1B22531F0()))
          {
            break;
          }

          ++v7;
          v19 += 3;
        }

        if ((v16 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v7 < v9)
        {
          goto LABEL_122;
        }

        if (v9 < v7)
        {
          v21 = 24 * v7;
          v22 = v7;
          v23 = v9;
          do
          {
            if (v23 != --v22)
            {
              v24 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v25 = (v24 + v18);
              v26 = v24 + v21;
              v27 = *v25;
              v28 = *(v25 + 1);
              v29 = *(v26 - 24);
              v25[2] = *(v26 - 8);
              *v25 = v29;
              *(v26 - 24) = v27;
              *(v26 - 16) = v28;
            }

            ++v23;
            v21 -= 24;
            v18 += 24;
          }

          while (v23 < v22);
        }
      }

LABEL_28:
      v30 = a3[1];
      if (v7 < v30)
      {
        if (__OFSUB__(v7, v9))
        {
          goto LABEL_121;
        }

        if (v7 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_123;
          }

          if (v9 + a4 >= v30)
          {
            v31 = a3[1];
          }

          else
          {
            v31 = v9 + a4;
          }

          if (v31 < v9)
          {
LABEL_124:
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
            return;
          }

          if (v7 != v31)
          {
            v32 = *a3;
            v33 = *a3 + 24 * v7 - 24;
            v94 = v9;
            v34 = v9 - v7;
            do
            {
              v35 = (v32 + 24 * v7);
              v36 = *v35;
              v37 = v35[1];
              v38 = v34;
              v39 = v33;
              do
              {
                v40 = v36 == *v39 && v37 == *(v39 + 8);
                if (v40 || (sub_1B22531F0() & 1) == 0)
                {
                  break;
                }

                if (!v32)
                {
                  goto LABEL_125;
                }

                v41 = *(v39 + 32);
                v42 = *(v39 + 16);
                v36 = *(v39 + 24);
                *(v39 + 24) = *v39;
                *(v39 + 40) = v42;
                *v39 = v36;
                *(v39 + 8) = v41;
                v37 = v41;
                v39 -= 24;
              }

              while (!__CFADD__(v38++, 1));
              ++v7;
              v33 += 24;
              --v34;
            }

            while (v7 != v31);
            v7 = v31;
            v9 = v94;
          }
        }
      }

      if (v7 < v9)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B2161EC4(0, v8[2] + 1, 1, v8);
        v8 = v89;
      }

      v45 = v8[2];
      v44 = v8[3];
      v46 = v45 + 1;
      if (v45 >= v44 >> 1)
      {
        sub_1B2161EC4(v44 > 1, v45 + 1, 1, v8);
        v8 = v90;
      }

      v8[2] = v46;
      v47 = v8 + 4;
      v48 = &v8[2 * v45 + 4];
      *v48 = v9;
      v48[1] = v7;
      v95 = *result;
      if (!*result)
      {
        goto LABEL_128;
      }

      if (v45)
      {
        v93 = v8 + 4;
        while (1)
        {
          v49 = v46 - 1;
          v50 = &v47[2 * v46 - 2];
          v51 = &v8[2 * v46];
          if (v46 >= 4)
          {
            break;
          }

          if (v46 == 3)
          {
            v52 = v8[4];
            v53 = v8[5];
            v62 = __OFSUB__(v53, v52);
            v54 = v53 - v52;
            v55 = v62;
LABEL_70:
            if (v55)
            {
              goto LABEL_110;
            }

            v67 = *v51;
            v66 = v51[1];
            v68 = __OFSUB__(v66, v67);
            v69 = v66 - v67;
            v70 = v68;
            if (v68)
            {
              goto LABEL_113;
            }

            v71 = v50[1];
            v72 = v71 - *v50;
            if (__OFSUB__(v71, *v50))
            {
              goto LABEL_116;
            }

            if (__OFADD__(v69, v72))
            {
              goto LABEL_118;
            }

            if (v69 + v72 >= v54)
            {
              if (v54 < v72)
              {
                v49 = v46 - 2;
              }

              goto LABEL_92;
            }

            goto LABEL_85;
          }

          if (v46 < 2)
          {
            goto LABEL_112;
          }

          v74 = *v51;
          v73 = v51[1];
          v62 = __OFSUB__(v73, v74);
          v69 = v73 - v74;
          v70 = v62;
LABEL_85:
          if (v70)
          {
            goto LABEL_115;
          }

          v76 = *v50;
          v75 = v50[1];
          v62 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v62)
          {
            goto LABEL_117;
          }

          if (v77 < v69)
          {
            goto LABEL_99;
          }

LABEL_92:
          if (v49 - 1 >= v46)
          {
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
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
            goto LABEL_124;
          }

          if (!*a3)
          {
            goto LABEL_126;
          }

          v81 = &v47[2 * v49 - 2];
          v82 = *v81;
          v83 = v49;
          v84 = &v47[2 * v49];
          v85 = v84[1];
          sub_1B224A340((*a3 + 24 * *v81), (*a3 + 24 * *v84), *a3 + 24 * v85, v95);
          if (v5)
          {
            goto LABEL_103;
          }

          if (v85 < v82)
          {
            goto LABEL_105;
          }

          v86 = v8;
          v87 = v8[2];
          if (v83 > v87)
          {
            goto LABEL_106;
          }

          *v81 = v82;
          v81[1] = v85;
          if (v83 >= v87)
          {
            goto LABEL_107;
          }

          v46 = v87 - 1;
          memmove(v84, v84 + 2, 16 * (v87 - 1 - v83));
          v86[2] = v87 - 1;
          v88 = v87 > 2;
          v8 = v86;
          v5 = 0;
          v47 = v93;
          if (!v88)
          {
            goto LABEL_99;
          }
        }

        v56 = &v47[2 * v46];
        v57 = *(v56 - 8);
        v58 = *(v56 - 7);
        v62 = __OFSUB__(v58, v57);
        v59 = v58 - v57;
        if (v62)
        {
          goto LABEL_108;
        }

        v61 = *(v56 - 6);
        v60 = *(v56 - 5);
        v62 = __OFSUB__(v60, v61);
        v54 = v60 - v61;
        v55 = v62;
        if (v62)
        {
          goto LABEL_109;
        }

        v63 = v51[1];
        v64 = v63 - *v51;
        if (__OFSUB__(v63, *v51))
        {
          goto LABEL_111;
        }

        v62 = __OFADD__(v54, v64);
        v65 = v54 + v64;
        if (v62)
        {
          goto LABEL_114;
        }

        if (v65 >= v59)
        {
          v79 = *v50;
          v78 = v50[1];
          v62 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v62)
          {
            goto LABEL_119;
          }

          if (v54 < v80)
          {
            v49 = v46 - 2;
          }

          goto LABEL_92;
        }

        goto LABEL_70;
      }

LABEL_99:
      v6 = a3[1];
      if (v7 >= v6)
      {
        v97 = v8;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_129;
  }

  sub_1B224A208(&v97, *result, a3);
LABEL_103:
}

uint64_t sub_1B224A208(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1B21A00CC();
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_1B224A340((*a3 + 24 * *v4), (*a3 + 24 * *v9), *a3 + 24 * v10, a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_1B224A340(char *__src, char *__dst, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = (__dst - __src) / 24;
  v9 = (a3 - __dst) / 24;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[24 * v8] <= a4)
    {
      memmove(a4, __src, 24 * v8);
    }

    v11 = &v4[24 * v8];
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_46;
      }

      v13 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v13 || (sub_1B22531F0() & 1) == 0)
      {
        break;
      }

      v14 = v6;
      v13 = v7 == v6;
      v6 += 24;
      if (!v13)
      {
        goto LABEL_21;
      }

LABEL_22:
      v7 += 24;
    }

    v14 = v4;
    v13 = v7 == v4;
    v4 += 24;
    if (v13)
    {
      goto LABEL_22;
    }

LABEL_21:
    v15 = *v14;
    *(v7 + 2) = *(v14 + 2);
    *v7 = v15;
    goto LABEL_22;
  }

  if (a4 != __dst || &__dst[24 * v9] <= a4)
  {
    memmove(a4, __dst, 24 * v9);
  }

  v11 = &v4[24 * v9];
LABEL_29:
  v17 = v6 - 24;
  for (v5 -= 24; v11 > v4 && v6 > v7; v5 -= 24)
  {
    v19 = *(v11 - 3) == *(v6 - 3) && *(v11 - 2) == *(v6 - 2);
    if (!v19 && (sub_1B22531F0() & 1) != 0)
    {
      v13 = v5 + 24 == v6;
      v6 -= 24;
      if (!v13)
      {
        v21 = *v17;
        *(v5 + 16) = *(v17 + 2);
        *v5 = v21;
        v6 = v17;
      }

      goto LABEL_29;
    }

    if (v11 != (v5 + 24))
    {
      v20 = *(v11 - 24);
      *(v5 + 16) = *(v11 - 1);
      *v5 = v20;
    }

    v11 -= 24;
  }

LABEL_46:
  v22 = (v11 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v22])
  {
    memmove(v6, v4, 24 * v22);
  }

  return 1;
}

uint64_t sub_1B224A534(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || -(-1 << *(a4 + 32)) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return sub_1B2252BF0();
  }

LABEL_8:
  __break(1u);
  return result;
}

void *sub_1B224A5B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - v11;
  (*(v6 + 32))(&v16 - v11, v10);
  v13 = swift_allocObject();
  (*(v6 + 16))(v8, v12, a3);
  v14 = sub_1B224A700(v8, v13, a3, a4);
  (*(v6 + 8))(v12, a3);
  return v14;
}

void *sub_1B224A700(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a3;
  v17[4] = a4;
  v8 = sub_1B212FF14(v17);
  (*(*(a3 - 8) + 32))(v8, a1, a3);
  a2[10] = sub_1B211DF80(MEMORY[0x1E69E7CC0], v9, v10, v11, v12, v13, v14);
  a2[11] = v15;
  a2[7] = 0;
  a2[8] = 0;
  sub_1B214D38C(v17, (a2 + 2));
  a2[9] = (*(a4 + 8))(a3, a4);
  sub_1B2113208(v17);
  return a2;
}

const char *sub_1B224A7D4@<X0>(unint64_t a1@<X1>, uint64_t a2@<X8>)
{
  type metadata accessor for Row();
  v4 = swift_allocObject();

  v11 = sub_1B21840C8(v5, v4, v6, v7, v8, v9, v10);
  v13 = a1;
  v14 = 1;
  return RowDecodingContext.init(row:key:)(v11, &v13, a2);
}

const char *sub_1B224A848@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  type metadata accessor for Row();
  v7 = swift_allocObject();

  v12 = sub_1B211EF2C(v5, v6, v7, v8, v9, v10, v11);
  v14 = a2;
  v15 = 1;
  return RowDecodingContext.init(row:key:)(v12, &v14, a3);
}

unint64_t sub_1B224A970()
{
  result = qword_1EB7A33F8;
  if (!qword_1EB7A33F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A33F8);
  }

  return result;
}

unint64_t sub_1B224A9C4()
{
  result = qword_1EB7A3400;
  if (!qword_1EB7A3400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A3400);
  }

  return result;
}

unint64_t sub_1B224AB20(uint64_t a1)
{
  result = sub_1B214BDD4(a1);
  if (!result)
  {
    v4 = v3;
    sub_1B2161A20(&qword_1EB7A3410, &qword_1B226BAB8);
    sub_1B224ABD8(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1B224ABD8(uint64_t a1)
{
  result = sub_1B214BDD4(a1);
  if (!result)
  {
    type metadata accessor for Row();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1B224AC14()
{
  result = qword_1EB7A0B20;
  if (!qword_1EB7A0B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A0B20);
  }

  return result;
}

unint64_t sub_1B224AC9C(uint64_t a1)
{
  result = sub_1B214BDD4(a1);
  if (!result)
  {
    sub_1B2161A20(&qword_1EB7A33F0, &qword_1B226BAB0);
    sub_1B224A970();
    sub_1B224A9C4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1B224AD9C()
{
  result = qword_1EB7A0B18;
  if (!qword_1EB7A0B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A0B18);
  }

  return result;
}

unint64_t sub_1B224AE00()
{
  result = qword_1EB7A3450;
  if (!qword_1EB7A3450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A3450);
  }

  return result;
}

void *sub_1B224AFA0(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
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

      return sub_1B224B3BC(result, a2);
    }

    *(result + 32) = 0;
    if (a2)
    {
      return sub_1B224B3BC(result, a2);
    }
  }

  return result;
}

uint64_t sub_1B224B040(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1B224B04C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void *sub_1B224B09C(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

      return sub_1B224B3BC(result, a2);
    }

    *(result + 16) = 0;
    if (a2)
    {
      return sub_1B224B3BC(result, a2);
    }
  }

  return result;
}

uint64_t sub_1B224B188()
{
  v2 = *(v0 - 192);
  *(v0 - 72) = *(v0 - 200);
  *(v0 - 224) = v2;
}

uint64_t sub_1B224B1A8()
{
  *(v0 - 200) = 0;
  *(v0 - 192) = 0;
  *(v0 - 184) = -1;
}

uint64_t sub_1B224B2F0(sqlite3_stmt *a1, uint64_t a2, void *(*a3)(_OWORD *__return_ptr), uint64_t a4)
{

  return static DatabaseValueConvertible<>._valueMismatch(fromStatement:atUncheckedIndex:context:)(a1, v4, a3, a4, v5);
}

uint64_t sub_1B224B318(uint64_t a1, uint64_t a2)
{

  return sub_1B2252B00();
}

uint64_t sub_1B224B340()
{

  return sqlite3_column_type(v1, v0);
}

uint64_t sub_1B224B398(sqlite3_stmt *a1, int a2, void *(*a3)(_OWORD *__return_ptr), uint64_t a4)
{

  return static DatabaseValueConvertible<>._valueMismatch(fromStatement:atUncheckedIndex:context:)(a1, a2, a3, a4, v4);
}

uint64_t sub_1B224B3C8@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 96) = a1;

  return sub_1B216EB80(0, v1, 0);
}

unint64_t sub_1B224B3EC()
{
  *(v1 - 272) = v0;

  return sub_1B211E590();
}

uint64_t sub_1B224B410@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 - 256) = a1;
  *(v3 - 280) = a2;

  return sub_1B214D38C(v3 - 160, v3 - 200);
}

uint64_t sub_1B224B434()
{
}

void sub_1B224B450()
{

  Row.fastDecodeIfPresent<A>(_:atUncheckedIndex:)();
}

uint64_t sub_1B224B474(uint64_t a1, uint64_t a2)
{

  return sub_1B22531F0();
}

uint64_t sub_1B224B490(uint64_t a1, uint64_t a2)
{
  *(a2 + 80) = v2;
  *(a2 + 88) = v3;
  *(a2 + 96) = v4;
  *(a2 + 104) = *(v5 - 200);

  return swift_willThrow();
}

uint64_t sub_1B224B4B4()
{

  return sub_1B2253420();
}

void sub_1B224B5A0()
{

  JUMPOUT(0x1B2741EB0);
}

uint64_t sub_1B224B5C0(void x0_0, void x1_0, void x2_0, uint64_t a1, void x4_0, void x5_0, void x6_0, void x7_0, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{

  return swift_dynamicCast();
}

uint64_t sub_1B224B5F8()
{
}

uint64_t sub_1B224B618()
{
}

uint64_t sub_1B224B650(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1B21619D8(a3, a4);
}

uint64_t static FetchableRecord<>.fetchCursor<A>(_:keys:)()
{
  sub_1B2115F74();
  sub_1B2116494(v0, v1);
  v2 = static TableRecord.filter<A>(keys:)();
  sub_1B211D53C(v2, v3, v4, v5);
  sub_1B21179A0();
  swift_getWitnessTable();
  sub_1B2114310();
  sub_1B2112F0C();
  v6 = FetchRequest<>.fetchCursor(_:)();
  sub_1B21142EC(v6, v7, v8, v9, v10, v11, v12, v13, v25, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46);
  sub_1B211283C();
  v22 = sub_1B2114028(v14, v15, v16, v17, v18, v19, v20, v21, v26);
  v23(v22);
  return sub_1B212CDA8();
}

uint64_t static FetchableRecord<>.fetchAll<A>(_:keys:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  __src[23] = a5;
  sub_1B21115E0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1B21149B0();
  (*(v9 + 16))(v7);
  swift_getAssociatedTypeWitness();
  sub_1B2114104();
  __src[0] = sub_1B22526C0();
  sub_1B22526A0();
  sub_1B2111968();
  swift_getWitnessTable();
  if (sub_1B2252900())
  {

    sub_1B2115EC8();
    sub_1B2252600();
  }

  else
  {
    sub_1B2111B28();
    swift_getWitnessTable();
    sub_1B2144174();
    static TableRecord.filter<A>(keys:)();

    memcpy(v17, __src, sizeof(v17));
    v10 = sub_1B2115EC8();
    type metadata accessor for QueryInterfaceRequest(v10, v11, v12, v13);
    sub_1B21179A0();
    swift_getWitnessTable();
    sub_1B2122D60();
    FetchRequest<>.fetchAll(_:)();
    sub_1B2113118();
    sub_1B2111808();
    v14 = sub_1B2123554();
    v15(v14);
  }

  return sub_1B212CDA8();
}

uint64_t static FetchableRecord<>.fetchOne<A>(_:key:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v33 = a7;
  v32 = a6;
  v35 = a5;
  v36 = a3;
  v34 = a1;
  v37 = a8;
  v11 = sub_1B2252B00();
  sub_1B21115E0();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v31 - v18;
  sub_1B21115E0();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  sub_1B21149B0();
  (*(v13 + 16))(v19, a2, v11);
  if (sub_1B2122A98(v19, 1, a4) == 1)
  {
    (*(v13 + 8))(v19, v11);
    return sub_1B21117B4(v37, 1, 1, v36);
  }

  else
  {
    v24 = sub_1B2114104();
    v25(v24);
    (*(v21 + 16))(v16, v8, a4);
    sub_1B21117B4(v16, 0, 1, a4);
    v26 = v36;
    static TableRecord.filter<A>(key:)(__src, v16, v36, a4, v32, v33);
    (*(v13 + 8))(v16, v11);
    memcpy(v39, __src, sizeof(v39));
    InterfaceRequest = type metadata accessor for QueryInterfaceRequest(0, v26, v27, v28);
    sub_1B21179A0();
    swift_getWitnessTable();
    FetchRequest<>.fetchOne(_:)();
    memcpy(v38, v39, 0xA2uLL);
    sub_1B2111808();
    (*(v30 + 8))(v38, InterfaceRequest);
    return (*(v21 + 8))(v8, a4);
  }
}

uint64_t static FetchableRecord<>.fetchCursor<A>(_:ids:)()
{
  sub_1B2115F74();
  v2 = sub_1B2116494(v0, v1);
  v9 = static TableRecord<>.filter<A>(ids:)(v2, v3, v4, v5, v8, v7, v6);
  sub_1B211D53C(v9, v10, v11, v12);
  sub_1B21179A0();
  swift_getWitnessTable();
  sub_1B2114310();
  sub_1B2112F0C();
  v13 = FetchRequest<>.fetchCursor(_:)();
  sub_1B21142EC(v13, v14, v15, v16, v17, v18, v19, v20, v32, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53);
  sub_1B211283C();
  v29 = sub_1B2114028(v21, v22, v23, v24, v25, v26, v27, v28, v33);
  v30(v29);
  return sub_1B212CDA8();
}

{
  sub_1B2115F74();
  v2 = sub_1B2116494(v0, v1);
  v10 = static TableRecord<>.filter<A>(ids:)(v2, v3, v4, v5, v8, v9, v6, v7);
  sub_1B211D53C(v10, v11, v12, v13);
  sub_1B21179A0();
  swift_getWitnessTable();
  sub_1B2114310();
  sub_1B2112F0C();
  v14 = FetchRequest<>.fetchCursor(_:)();
  sub_1B21142EC(v14, v15, v16, v17, v18, v19, v20, v21, v33, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54);
  sub_1B211283C();
  v30 = sub_1B2114028(v22, v23, v24, v25, v26, v27, v28, v29, v34);
  v31(v30);
  return sub_1B212CDA8();
}

uint64_t static FetchableRecord<>.fetchSet<A>(_:keys:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  __src[23] = a5;
  sub_1B21115E0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1B21149B0();
  (*(v12 + 16))(v8);
  swift_getAssociatedTypeWitness();
  sub_1B2114104();
  __src[0] = sub_1B22526C0();
  sub_1B22526A0();
  sub_1B2111968();
  swift_getWitnessTable();
  if (sub_1B2252900())
  {

    sub_1B2115EC8();
    v13 = sub_1B2252600();
    if (sub_1B2252640())
    {
      sub_1B224CAAC(v13, a3, a7);
    }

    else
    {
    }
  }

  else
  {
    sub_1B2111B28();
    swift_getWitnessTable();
    sub_1B2144174();
    static TableRecord.filter<A>(keys:)();

    memcpy(v25, __src, sizeof(v25));
    v14 = sub_1B2115EC8();
    type metadata accessor for QueryInterfaceRequest(v14, v15, v16, v17);
    sub_1B21179A0();
    swift_getWitnessTable();
    v18 = sub_1B2122D60();
    FetchRequest<>.fetchSet(_:)(v18, v19, v20, v21, a7);
    sub_1B2113118();
    sub_1B2111808();
    v22 = sub_1B2123554();
    v23(v22);
  }

  return sub_1B212CDA8();
}

uint64_t static FetchableRecord<>.fetchCursor(_:keys:)()
{
  sub_1B212E010();
  v2 = sub_1B2116494(v0, v1);
  v5 = static TableRecord.filter(keys:)(v2, v3, v4);
  sub_1B211D53C(v5, v6, v7, v8);
  sub_1B21179A0();
  swift_getWitnessTable();
  sub_1B2114310();
  sub_1B2112F0C();
  v9 = FetchRequest<>.fetchCursor(_:)();
  sub_1B21142EC(v9, v10, v11, v12, v13, v14, v15, v16, v28, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49);
  sub_1B211283C();
  v25 = sub_1B2114028(v17, v18, v19, v20, v21, v22, v23, v24, v29);
  v26(v25);
  return sub_1B212CDA8();
}

__int128 *static FetchableRecord<>.fetchAll(_:keys:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 16))
  {
    v6 = sub_1B211230C(a1, a2);
    static TableRecord.filter(keys:)(v6, a3, v7);
    v8 = sub_1B2111634();
    type metadata accessor for QueryInterfaceRequest(v8, v9, v10, v11);
    sub_1B21179A0();
    swift_getWitnessTable();
    sub_1B2114310();
    v12 = FetchRequest<>.fetchAll(_:)();
    if (!v4)
    {
      v3 = v12;
    }

    sub_1B211608C(v12, v13, v14, v15, v16, v17, v18, v19, v31, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52);
    sub_1B21142DC();
    v28 = sub_1B2112FF4(v20, v21, v22, v23, v24, v25, v26, v27, v32);
    v29(v28);
  }

  else
  {
    sub_1B2111634();
    return sub_1B2252600();
  }

  return v3;
}

uint64_t sub_1B224CAAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v43 = &v33 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v33 - v12;
  if (sub_1B2252640())
  {
    sub_1B2252CA0();
    v14 = sub_1B2252C90();
  }

  else
  {
    v14 = MEMORY[0x1E69E7CD0];
  }

  v36 = sub_1B2252640();
  if (v36)
  {
    v33 = v7;
    v34 = v5;
    v15 = 0;
    v41 = (v6 + 16);
    v42 = v14 + 56;
    v38 = (v6 + 32);
    v40 = v6 + 8;
    v35 = v13;
    while (1)
    {
      v16 = sub_1B2252620();
      sub_1B22525C0();
      if (v16)
      {
        v17 = *(v6 + 16);
        result = (v17)(v13, v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15, a2);
      }

      else
      {
        v39 = v15;
        result = sub_1B2252CF0();
        if (v33 != 8)
        {
          goto LABEL_23;
        }

        v44 = result;
        v17 = *v41;
        (*v41)(v13, &v44, a2);
        result = swift_unknownObjectRelease();
        v15 = v39;
      }

      v39 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      v37 = *v38;
      v37(v43, v13, a2);
      v19 = sub_1B2252210();
      v20 = ~(-1 << *(v14 + 32));
      while (1)
      {
        v21 = v19 & v20;
        v22 = (v19 & v20) >> 6;
        v23 = *(v42 + 8 * v22);
        v24 = 1 << (v19 & v20);
        if ((v24 & v23) == 0)
        {
          break;
        }

        v25 = v14;
        v17(v8, (*(v14 + 48) + *(v6 + 72) * v21), a2);
        v26 = a3;
        v27 = sub_1B2252270();
        v28 = *(v6 + 8);
        v28(v8, a2);
        if (v27)
        {
          v28(v43, a2);
          a3 = v26;
          v13 = v35;
          v14 = v25;
          v15 = v39;
          goto LABEL_16;
        }

        v19 = v21 + 1;
        a3 = v26;
        v14 = v25;
      }

      v29 = v43;
      *(v42 + 8 * v22) = v24 | v23;
      result = (v37)(*(v14 + 48) + *(v6 + 72) * v21, v29, a2);
      v30 = *(v14 + 16);
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      v13 = v35;
      v15 = v39;
      if (v31)
      {
        goto LABEL_22;
      }

      *(v14 + 16) = v32;
LABEL_16:
      v5 = v34;
      if (v15 == v36)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  else
  {
LABEL_20:

    return v14;
  }

  return result;
}

uint64_t DatabaseFunction.__allocating_init(_:argumentCount:pure:function:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1B21154F0();
  v9 = sub_1B21179B8();
  DatabaseFunction.init(_:argumentCount:pure:function:)(v9, v10, v11, v12, a5, a6);
  return v6;
}

void *DatabaseFunction.callAsFunction(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  v7 = *(a1 + 16);
  if (*(v2 + 56) == 1)
  {
    if (v7)
    {
      v39 = MEMORY[0x1E69E7CC0];

      sub_1B21185F4();
      v8 = v39;
      v9 = a1 + 32;
      do
      {
        sub_1B211EE68(v9, &v33);
        sub_1B21139A0(&v33, v36);
        v10 = sub_1B2115B0C();
        v11(v10);
        sub_1B2113208(&v33);
        sub_1B2111CC0();
        if (v20)
        {
          sub_1B2116914();
          v8 = v39;
        }

        sub_1B21164A4(v12, v13, v14, v15, v16, v17, v18, v19, v33, v34, v35, v36, v37);
        v9 += 40;
        --v7;
      }

      while (v7);
    }

    else
    {

      v8 = MEMORY[0x1E69E7CC0];
    }

    __src[0] = v6;
    __src[1] = v5;
    LOWORD(__src[2]) = 0;
  }

  else
  {
    if (v7)
    {
      v39 = MEMORY[0x1E69E7CC0];

      sub_1B21185F4();
      v8 = v39;
      v21 = a1 + 32;
      do
      {
        sub_1B211EE68(v21, &v33);
        sub_1B21139A0(&v33, v36);
        v22 = sub_1B2115B0C();
        v23(v22);
        sub_1B2113208(&v33);
        sub_1B2111CC0();
        if (v20)
        {
          sub_1B2116914();
          v8 = v39;
        }

        sub_1B21164A4(v24, v25, v26, v27, v28, v29, v30, v31, v33, v34, v35, v36, v37);
        v21 += 40;
        --v7;
      }

      while (v7);
    }

    else
    {

      v8 = MEMORY[0x1E69E7CC0];
    }

    __src[0] = v6;
    __src[1] = v5;
    LOWORD(__src[2]) = 1;
  }

  __src[3] = v8;
  sub_1B2179374(__src);
  return memcpy(a2, __src, 0xA3uLL);
}

uint64_t sub_1B224D078(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 16);
  v4 = *(v1 + 32);
  if (*(v1 + 36))
  {
    v5 = 2049;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1B2252350();
  function_v2 = sqlite3_create_function_v2(v3, (v6 + 32), v4, v5, 0, 0, 0, 0, 0);

  if (function_v2)
  {
    v9 = Database.lastErrorMessage.getter();
    if (!v10)
    {
      if (!sqlite3_errstr(function_v2))
      {
        __break(1u);
      }

      v9 = sub_1B22523F0();
    }

    LODWORD(v23) = function_v2;
    sub_1B2112F20(v9, v10, v11, v12, v13, v14, v15, v16, xDestroy, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

BOOL sub_1B224D168(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  if (a1 == a4 && a2 == a5)
  {
    return a3 == a6;
  }

  v9 = sub_1B22531F0();
  result = 0;
  if (v9)
  {
    return a3 == a6;
  }

  return result;
}

uint64_t sub_1B224D1EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B2253420();
  sub_1B2252370();
  sub_1B2253450();
  return sub_1B2253470();
}

uint64_t sub_1B224D26C(uint64_t a1)
{
  sub_1B2253420();
  sub_1B2252370();
  sub_1B2253450();
  return sub_1B2253470();
}

uint64_t DatabaseFunction.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t DatabaseFunction.init(_:argumentCount:pure:function:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  if ((a3 & 0x100000000) != 0)
  {
    v9 = -1;
  }

  else
  {
    v9 = a3;
  }

  *(v6 + 32) = v9;
  *(v6 + 36) = a4;
  v10 = swift_allocObject();
  *(v10 + 16) = a5;
  *(v10 + 24) = a6;
  *(v6 + 40) = sub_1B224E61C;
  *(v6 + 48) = v10;
  *(v6 + 56) = 0;
  return v6;
}

uint64_t sub_1B224D38C(int a1, sqlite3_value **a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v32 = *MEMORY[0x1E69E9840];
  if (a1 < 0)
  {
    goto LABEL_26;
  }

  v7 = MEMORY[0x1E69E7CC0];
  if (!a1)
  {
    goto LABEL_24;
  }

  v8 = a2;
  v28 = a3;
  v9 = a1;
  v31 = MEMORY[0x1E69E7CC0];
  sub_1B2114114(0, a1, 0, a4, a5, a6, a7);
  v7 = v31;
  while (2)
  {
    if (!v9)
    {
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v10 = *v8;
    if (!*v8)
    {
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
    }

    v15 = 0.0;
    v16 = 0;
    v17 = 4;
    switch(sqlite3_value_type(*v8))
    {
      case 1:
        v15 = COERCE_DOUBLE(sqlite3_value_int64(v10));
        v16 = 0;
        v17 = 0;
        goto LABEL_20;
      case 2:
        v16 = 0;
        v15 = sqlite3_value_double(v10);
        v17 = 1;
        goto LABEL_20;
      case 3:
        if (!sqlite3_value_text(v10))
        {
          goto LABEL_28;
        }

        v15 = COERCE_DOUBLE(sub_1B2252400());
        v16 = a2;
        v17 = 2;
LABEL_20:
        v31 = v7;
        v24 = *(v7 + 16);
        v23 = *(v7 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_1B2114114(v23 > 1, v24 + 1, 1, v11, v12, v13, v14);
          v7 = v31;
        }

        *(v7 + 16) = v24 + 1;
        v25 = v7 + 24 * v24;
        *(v25 + 32) = v15;
        *(v25 + 40) = v16;
        *(v25 + 48) = v17;
        ++v8;
        if (--v9)
        {
          continue;
        }

        a3 = v28;
        break;
      case 4:
        v18 = sqlite3_value_blob(v10);
        if (v18 && (v19 = v18, (v20 = sqlite3_value_bytes(v10)) != 0))
        {
          v21 = v20;
          if (v20 < 15)
          {
            *(&__dst + 6) = 0;
            *&__dst = 0;
            BYTE14(__dst) = v20;
            memcpy(&__dst, v19, v20);
            v15 = *&__dst;
            v16 = (v29 & 0xF00000000000000 | DWORD2(__dst) | ((WORD6(__dst) | (BYTE14(__dst) << 16)) << 32));
            v17 = 3;
            v29 = v16;
          }

          else
          {
            sub_1B2251BF0();
            swift_allocObject();
            if (v21 == 0x7FFFFFFF)
            {
              v22 = sub_1B2251BB0();
              sub_1B2251DB0();
              v15 = COERCE_DOUBLE(swift_allocObject());
              *(*&v15 + 16) = xmmword_1B226BA10;
              v16 = (v22 | 0x8000000000000000);
            }

            else
            {
              *&v15 = v21 << 32;
              v16 = (sub_1B2251BB0() | 0x4000000000000000);
            }

            v17 = 3;
          }
        }

        else
        {
          v15 = 0.0;
          v17 = 3;
          v16 = 0xC000000000000000;
        }

        goto LABEL_20;
      case 5:
        goto LABEL_20;
      default:
        *&__dst = 0;
        *(&__dst + 1) = 0xE000000000000000;
        sub_1B2252CD0();

        *&__dst = 0xD00000000000001ELL;
        *(&__dst + 1) = 0x80000001B22712B0;
        v27 = sub_1B2252FD0();
        MEMORY[0x1B2741EB0](v27);

        result = sub_1B2252EC0();
        __break(1u);
        return result;
    }

    break;
  }

LABEL_24:
  (a3)(v7, a2);
}

uint64_t DatabaseFunction.__allocating_init<A>(_:argumentCount:pure:aggregate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1B21154F0();
  v10 = sub_1B21179B8();
  DatabaseFunction.init<A>(_:argumentCount:pure:aggregate:)(v10, v11, v12, v13, v14, a6, a7);
  return v7;
}

uint64_t DatabaseFunction.init<A>(_:argumentCount:pure:aggregate:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  if ((a3 & 0x100000000) != 0)
  {
    v10 = -1;
  }

  else
  {
    v10 = a3;
  }

  *(v7 + 32) = v10;
  *(v7 + 36) = a4;
  v11 = swift_allocObject();
  *(v11 + 16) = a6;
  *(v11 + 24) = a7;
  *(v7 + 40) = sub_1B224E638;
  *(v7 + 48) = v11;
  *(v7 + 56) = 1;
  return v7;
}

uint64_t sub_1B224D7DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(a2 + 8);
  a3[3] = a1;
  a3[4] = a2;
  sub_1B212FF14(a3);
  return v5(a1, a2);
}

uint64_t sub_1B224D834()
{
  sub_1B2113208((v0 + 16));

  return MEMORY[0x1EEE6BDC0](v0, 57, 7);
}

void *sub_1B224D86C(sqlite3_context *a1, uint64_t a2, uint64_t a3)
{
  result = sqlite3_user_data(a1);
  if (result)
  {
    v7 = result;
    type metadata accessor for DatabaseFunction();
    v8 = v7[2];

    v8(v9, a2, a3);
    sub_1B224D95C(v9, a1);

    return sub_1B2122B98(v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1B224D95C(uint64_t a1, sqlite3_context *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  sub_1B21446E0(a1, v17);
  v3 = v18;
  if (v18)
  {
    v4 = v19;
    sub_1B21139A0(v17, v18);
    (*(v4 + 24))(v15, v3, v4);
    v5 = v15[0];
    v6 = v15[1];
    v7 = v16;
    sub_1B2113208(v17);
    switch(v7)
    {
      case 1:
        sqlite3_result_double(a2, *&v5);
        break;
      case 2:
        if (qword_1ED85E010 != -1)
        {
          swift_once();
        }

        v11 = qword_1ED861908;
        v12 = sub_1B2252350();
        sub_1B2113A44(v5, v6, 2);
        sqlite3_result_text(a2, (v12 + 32), -1, v11);

        break;
      case 3:
        switch(v6 >> 62)
        {
          case 1uLL:
            v14 = v5 >> 32;
            if (v5 >> 32 < v5)
            {
              __break(1u);
            }

            v13 = v5;
            goto LABEL_22;
          case 2uLL:
            v13 = *(v5 + 16);
            v14 = *(v5 + 24);
LABEL_22:
            sub_1B224E8CC(v13, v14, v6 & 0x3FFFFFFFFFFFFFFFLL, a2);
            goto LABEL_23;
          case 3uLL:
            memset(v17, 0, 14);
            if (qword_1ED85E010 != -1)
            {
              swift_once();
            }

            v9 = qword_1ED861908;
            v10 = a2;
            v8 = 0;
            goto LABEL_19;
          default:
            v17[0] = v5;
            LOWORD(v17[1]) = v6;
            BYTE2(v17[1]) = BYTE2(v6);
            BYTE3(v17[1]) = BYTE3(v6);
            BYTE4(v17[1]) = BYTE4(v6);
            BYTE5(v17[1]) = BYTE5(v6);
            v8 = BYTE6(v6);
            if (qword_1ED85E010 != -1)
            {
              swift_once();
              v8 = BYTE6(v6);
            }

            v9 = qword_1ED861908;
            v10 = a2;
LABEL_19:
            sqlite3_result_blob(v10, v17, v8, v9);
LABEL_23:
            sub_1B2113A44(v5, v6, 3);
            break;
        }

        break;
      case 4:
        goto LABEL_5;
      default:
        sqlite3_result_int64(a2, v5);
        break;
    }
  }

  else
  {
    sub_1B2122B98(v17);
LABEL_5:
    sqlite3_result_null(a2);
  }
}

uint64_t sub_1B224DC50(void *a1, sqlite3_context *a2)
{
  v3 = a1;
  sub_1B21619D8(qword_1EB7A0F98, &unk_1B22595B0);
  if (swift_dynamicCast())
  {
    if (v8)
    {
      v4 = sub_1B2252350();
      sqlite3_result_error(a2, (v4 + 32), -1);
    }

    sqlite3_result_error_code(a2, v7);

    return sub_1B211A378(v9, v10);
  }

  else
  {
    sub_1B2252E10();
    v6 = sub_1B2252350();

    sqlite3_result_error(a2, (v6 + 32), -1);
  }
}

uint64_t sub_1B224DD9C(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  LODWORD(v4) = a2;
  v37 = *MEMORY[0x1E69E9840];
  type metadata accessor for DatabaseFunction();
  v6 = sub_1B224E1BC(a1);

  if ((v4 & 0x80000000) != 0)
  {
    goto LABEL_26;
  }

  v11 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    goto LABEL_24;
  }

  v33 = v6;
  v4 = v4;
  v35 = MEMORY[0x1E69E7CC0];
  sub_1B2114114(0, v4, 0, v7, v8, v9, v10);
  v11 = v35;
  while (2)
  {
    if (!v4)
    {
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v12 = *a3;
    if (!*a3)
    {
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
    }

    v17 = 0.0;
    v18 = 0;
    v19 = 4;
    switch(sqlite3_value_type(*a3))
    {
      case 1:
        v17 = COERCE_DOUBLE(sqlite3_value_int64(v12));
        v18 = 0;
        v19 = 0;
        goto LABEL_20;
      case 2:
        v18 = 0;
        v17 = sqlite3_value_double(v12);
        v19 = 1;
        goto LABEL_20;
      case 3:
        if (!sqlite3_value_text(v12))
        {
          goto LABEL_28;
        }

        v17 = COERCE_DOUBLE(sub_1B2252400());
        v18 = v25;
        v19 = 2;
LABEL_20:
        v27 = *(v35 + 16);
        v26 = *(v35 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_1B2114114(v26 > 1, v27 + 1, 1, v13, v14, v15, v16);
        }

        *(v35 + 16) = v27 + 1;
        v28 = v35 + 24 * v27;
        *(v28 + 32) = v17;
        *(v28 + 40) = v18;
        *(v28 + 48) = v19;
        ++a3;
        if (--v4)
        {
          continue;
        }

        v6 = v33;
        break;
      case 4:
        v20 = sqlite3_value_blob(v12);
        if (v20 && (v21 = v20, (v22 = sqlite3_value_bytes(v12)) != 0))
        {
          v23 = v22;
          if (v22 < 15)
          {
            *(&__dst + 6) = 0;
            *&__dst = 0;
            BYTE14(__dst) = v22;
            memcpy(&__dst, v21, v22);
            v17 = *&__dst;
            v18 = v34 & 0xF00000000000000 | DWORD2(__dst) | ((WORD6(__dst) | (BYTE14(__dst) << 16)) << 32);
            v19 = 3;
            v34 = v18;
          }

          else
          {
            sub_1B2251BF0();
            swift_allocObject();
            if (v23 == 0x7FFFFFFF)
            {
              v24 = sub_1B2251BB0();
              sub_1B2251DB0();
              v17 = COERCE_DOUBLE(swift_allocObject());
              *(*&v17 + 16) = xmmword_1B226BA10;
              v18 = v24 | 0x8000000000000000;
            }

            else
            {
              *&v17 = v23 << 32;
              v18 = sub_1B2251BB0() | 0x4000000000000000;
            }

            v19 = 3;
          }
        }

        else
        {
          v17 = 0.0;
          v19 = 3;
          v18 = 0xC000000000000000;
        }

        goto LABEL_20;
      case 5:
        goto LABEL_20;
      default:
        *&__dst = 0;
        *(&__dst + 1) = 0xE000000000000000;
        sub_1B2252CD0();

        *&__dst = 0xD00000000000001ELL;
        *(&__dst + 1) = 0x80000001B22712B0;
        v32 = sub_1B2252FD0();
        MEMORY[0x1B2741EB0](v32);

        result = sub_1B2252EC0();
        __break(1u);
        return result;
    }

    break;
  }

LABEL_24:
  swift_beginAccess();
  v29 = v6[5];
  v30 = v6[6];
  sub_1B21A1628((v6 + 2), v29);
  (*(v30 + 16))(v11, v29, v30);
  swift_endAccess();
}

uint64_t *sub_1B224E1BC(sqlite3_context *a1)
{
  result = sqlite3_aggregate_context(a1, 8);
  if (result)
  {
    v3 = result;
    v4 = 0;
    while (v4 != 8)
    {
      if (*(result + v4++))
      {
        return *result;
      }
    }

    result = sqlite3_user_data(a1);
    if (!result)
    {
      goto LABEL_10;
    }

    v7 = result[2];

    v7(v10, v8);

    sub_1B211EE68(v10, v9);
    type metadata accessor for DatabaseFunction.AggregateContext();
    v6 = swift_allocObject();
    *(v6 + 56) = 0;
    sub_1B21217FC(v9, v6 + 16);
    *v3 = v6;
    sub_1B2113208(v10);
    return v6;
  }

  else
  {
    __break(1u);
LABEL_10:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B224E298(sqlite3_context *a1)
{
  type metadata accessor for DatabaseFunction();
  v2 = sub_1B224E1BC(a1);
  if (v2[7])
  {
  }

  else
  {
    swift_beginAccess();
    sub_1B211EE68((v2 + 2), v7);
    v4 = v8;
    v5 = v9;
    sub_1B21139A0(v7, v8);
    (*(v5 + 24))(v6, v4, v5);
    sub_1B224D95C(v6, a1);

    sub_1B2122B98(v6);
    return sub_1B2113208(v7);
  }
}

void sub_1B224E3DC(void *a1, uint64_t a2, sqlite3_context *a3)
{
  if (a1)
  {
    v5 = a2 - a1;
  }

  else
  {
    v5 = 0;
  }

  if (v5 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v5 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = a3;
  v4 = a1;
  if (qword_1ED85E010 != -1)
  {
LABEL_10:
    swift_once();
  }

  sqlite3_result_blob(v3, v4, v5, qword_1ED861908);
}

uint64_t DatabaseFunction.deinit()
{

  sub_1B224E640();
  return v0;
}

uint64_t DatabaseFunction.__deallocating_deinit()
{
  DatabaseFunction.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 57, 7);
}

uint64_t DatabaseFunction.hashValue.getter()
{
  sub_1B2253420();
  sub_1B2252370();
  sub_1B2253450();
  return sub_1B2253470();
}

uint64_t sub_1B224E5B8(uint64_t a1)
{
  sub_1B2253420();
  DatabaseFunction.hash(into:)(v2);
  return sub_1B2253470();
}

unint64_t sub_1B224E64C()
{
  result = qword_1ED85E830;
  if (!qword_1ED85E830)
  {
    type metadata accessor for DatabaseFunction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED85E830);
  }

  return result;
}

__n128 sub_1B224E7D0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_1B224E7E4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 20))
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

uint64_t sub_1B224E824(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 20) = 1;
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

    *(result + 20) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B224E878()
{
  result = qword_1EB7A34E0;
  if (!qword_1EB7A34E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A34E0);
  }

  return result;
}

void sub_1B224E8CC(uint64_t a1, uint64_t a2, uint64_t a3, sqlite3_context *a4)
{
  v7 = sub_1B2251BC0();
  if (v7)
  {
    v8 = sub_1B2251BE0();
    if (__OFSUB__(a1, v8))
    {
LABEL_13:
      __break(1u);
      return;
    }

    v7 += a1 - v8;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = sub_1B2251BD0();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = &v7[v12];
  if (v7)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  sub_1B224E3DC(v7, v14, a4);
}

uint64_t static ValueObservationScheduler.async(onQueue:)(void *a1)
{
  v6 = sub_1B2111770();
  v7 = &off_1F29778E8;
  *&v5 = a1;
  type metadata accessor for ValueObservationScheduler();
  v2 = swift_allocObject();
  sub_1B21217FC(&v5, v2 + 16);
  v3 = a1;
  return v2;
}

uint64_t sub_1B224E9FC()
{
  v3 = &type metadata for ImmediateImpl;
  v4 = &off_1F2977948;
  type metadata accessor for ValueObservationScheduler();
  v0 = swift_allocObject();
  result = sub_1B21217FC(&v2, v0 + 16);
  qword_1EB7A34E8 = v0;
  return result;
}

uint64_t static ValueObservationScheduler.immediate.getter()
{
  if (qword_1EB7A0D98 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1B224EAB8(uint64_t (*a1)(void), uint64_t a2)
{
  v5 = v2[5];
  v6 = v2[6];
  sub_1B21139A0(v2 + 2, v5);
  if ((*(v6 + 16))(v5, v6))
  {
    return a1();
  }

  v8 = v2[5];
  v9 = v2[6];
  sub_1B21139A0(v2 + 2, v8);
  return (*(v9 + 8))(a1, a2, v8, v9);
}

uint64_t ValueObservationScheduler.__deallocating_deinit()
{
  sub_1B2113208((v0 + 16));

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

uint64_t sub_1B224EBC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B22520F0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B2252120();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B2111770();
  v12 = sub_1B2252A30();
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B21E5730;
  aBlock[3] = &unk_1F2977960;
  v13 = _Block_copy(aBlock);

  sub_1B2252100();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B212C084();
  sub_1B21619D8(&qword_1EB7A27A8, &qword_1B225E820);
  sub_1B212C0DC();
  sub_1B2252BC0();
  MEMORY[0x1B2742540](0, v11, v7, v13);
  _Block_release(v13);

  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1B224EE28()
{
  if ([objc_opt_self() isMainThread])
  {
    return 1;
  }

  result = sub_1B2252EC0();
  __break(1u);
  return result;
}

uint64_t sub_1B224EEB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B22520F0();
  sub_1B211280C();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B2252120();
  sub_1B211280C();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B21E5730;
  aBlock[3] = &unk_1F2977900;
  v16 = _Block_copy(aBlock);

  sub_1B2252100();
  v18[1] = MEMORY[0x1E69E7CC0];
  sub_1B212C084();
  sub_1B21619D8(&qword_1EB7A27A8, &qword_1B225E820);
  sub_1B212C0DC();
  sub_1B2252BC0();
  MEMORY[0x1B2742540](0, v15, v9, v16);
  _Block_release(v16);
  (*(v6 + 8))(v9, v4);
  (*(v12 + 8))(v15, v10);
}

uint64_t sub_1B224F128(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B224F158(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 184))
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

uint64_t sub_1B224F198(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 184) = 1;
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

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1B224F214()
{
  sub_1B2111640();
  v1 = v0;
  v2 = *(v0 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  sub_1B213CA68();
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      memcpy(__dst, v3, 0xA3uLL);
      memcpy(v7, v3, sizeof(v7));
      sub_1B2127DC0(__dst, __src);
      swift_getAtKeyPath();
      sub_1B21356F8(__dst);
      memcpy(v7, __src, sizeof(v7));
      v4 = *(v8 + 16);
      if (v4 >= *(v8 + 24) >> 1)
      {
        sub_1B2114574();
        sub_1B213CA68();
      }

      *(v8 + 16) = v4 + 1;
      memcpy((v8 + 168 * v4 + 32), v7, 0xA3uLL);
      v3 += 168;
      --v2;
    }

    while (v2);
  }

  sub_1B2112FDC();
}

uint64_t sub_1B224F344(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x1E69E7CC0];
  result = sub_1B216EC38(0, v2, 0);
  v3 = v13;
  v7 = a1 + 40;
  while (*(a2 + 16))
  {

    result = sub_1B211E590();
    if ((v8 & 1) == 0)
    {
      goto LABEL_10;
    }

    memcpy(__dst, (*(a2 + 56) + 176 * result), 0xABuLL);
    sub_1B21818BC(__dst, v11);

    v13 = v3;
    v10 = *(v3 + 16);
    v9 = *(v3 + 24);
    if (v10 >= v9 >> 1)
    {
      sub_1B216EC38((v9 > 1), v10 + 1, 1);
      v3 = v13;
    }

    *(v3 + 16) = v10 + 1;
    result = memcpy((v3 + 176 * v10 + 32), __dst, 0xABuLL);
    v7 += 16;
    if (!--v2)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1B224F47C@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (*(result + 16))
  {
    v7 = result;
    v8 = swift_allocObject();
    v8[5] = &type metadata for RangeRowAdapter;
    v8[6] = &protocol witness table for RangeRowAdapter;
    v8[2] = a2;
    v8[3] = a3;
    v8[7] = v7;

    v9 = &protocol witness table for ScopeAdapter;
    v10 = &type metadata for ScopeAdapter;
    a2 = v8;
  }

  else
  {
    a4[1] = a3;
    v9 = &protocol witness table for RangeRowAdapter;
    v10 = &type metadata for RangeRowAdapter;
  }

  a4[3] = v10;
  a4[4] = v9;
  *a4 = a2;
  return result;
}

const void *sub_1B224F530()
{
  memcpy(__dst, v0, 0xA8uLL);
  v2 = sub_1B21223F4();
  sub_1B2139BC4(v2, v3, v4);
  if (!v1)
  {
    v5 = __dst[22];
    v6 = type metadata accessor for StatementArgumentsSink();
    sub_1B2111758(v6);

    v13 = sub_1B2114D98(0, v7, v8, v9, v10, v11, v12);
    type metadata accessor for SQLGenerationContext();
    swift_initStackObject();

    v15 = sub_1B2117164(v14, v13, MEMORY[0x1E69E7CC0]);
    v0 = sub_1B2178F60(v15, v5);
  }

  return v0;
}

uint64_t sub_1B224F63C()
{
  v1 = v0;
  memcpy(__dst, v0, sizeof(__dst));
  v2 = __dst[0];
  v26 = __dst[0];
  v3 = __dst[1];
  type metadata accessor for TableAlias();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  *(v4 + 48) = 1;
  sub_1B21619D8(qword_1EB7A13D0, qword_1B2257E80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B2257570;
  *(v5 + 32) = v4;
  type metadata accessor for StatementArgumentsSink();
  swift_allocObject();

  v12 = sub_1B2114D98(0, v6, v7, v8, v9, v10, v11);
  sub_1B2116B4C();
  type metadata accessor for SQLGenerationContext();
  swift_allocObject();

  v14 = sub_1B2117164(v13, v12, v5);
  v15 = sub_1B2138500();
  swift_allocObject();

  sub_1B2138A30(v16, v15);
  sub_1B2251608(__src);
  memcpy(v39, __src, sizeof(v39));
  memcpy(v33, v1, sizeof(v33));
  memcpy(v37, v1, sizeof(v37));
  sub_1B21619D8(&qword_1EB7A0EB8, &qword_1B22545D0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1B22546B0;
  memcpy(v40, __src, 0xA3uLL);
  sub_1B214D464(v40);
  memcpy((v17 + 32), v40, 0xB8uLL);
  sub_1B2251644(v1, v32);
  sub_1B224FB7C(v17, v34);
  swift_setDeallocating();
  sub_1B21B717C();
  sub_1B21A6408(v34, v33);
  memcpy(v36, v33, sizeof(v36));
  v33[0] = 0;
  v33[1] = 0xE000000000000000;
  sub_1B2252CD0();

  strcpy(v33, "DELETE FROM ");
  BYTE5(v33[1]) = 0;
  HIWORD(v33[1]) = -5120;
  v32[0] = 34;
  v32[1] = 0xE100000000000000;
  MEMORY[0x1B2741EB0](v26, v3);
  MEMORY[0x1B2741EB0](34, 0xE100000000000000);
  v18 = v32[1];
  MEMORY[0x1B2741EB0](v32[0], v32[1]);

  MEMORY[0x1B2741EB0](0x20455245485720, 0xE700000000000000);
  v30 = v33[0];
  v31 = v33[1];
  v29[3] = &type metadata for SQLExpression;
  v29[4] = &protocol witness table for SQLExpression;
  v29[0] = swift_allocObject();
  memcpy((v29[0] + 16), v39, 0xA3uLL);
  sub_1B21DA908(v29);
  v19 = v40[25];
  v20 = sub_1B2127E58(v14, 0);
  if (v19)
  {
    sub_1B2142BCC(v36);

    memcpy(v32, v33, 0xA3uLL);
    sub_1B21356F8(v32);

    sub_1B2113208(v29);
  }

  else
  {
    v22 = v20;
    v23 = v21;
    memcpy(v32, v33, 0xA3uLL);
    sub_1B21356F8(v32);
    sub_1B2113208(v29);
    MEMORY[0x1B2741EB0](v22, v23);

    MEMORY[0x1B2741EB0](0x28204E4920, 0xE500000000000000);
    sub_1B21376C4();
    MEMORY[0x1B2741EB0]();

    MEMORY[0x1B2741EB0](41, 0xE100000000000000);
    v18 = sub_1B212641C(v30, v31, 0);

    sub_1B211B048(&v28);
    v27 = v28;
    Statement.arguments.setter(&v27, v25);
    sub_1B2142BCC(v36);
  }

  return v18;
}

void *sub_1B224FB7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a2;
  v4 = *(a1 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v64 = a2;
    v73 = MEMORY[0x1E69E7CC0];
    sub_1B213A1C8();
    v5 = v73;
    v7 = *(v2 + 16);
    v8 = (a1 + 32);
    do
    {
      memcpy(__dst, v8, sizeof(__dst));
      memcpy(v72, v8, sizeof(v72));
      switch(sub_1B213A580(v72))
      {
        case 1u:
          v40 = sub_1B213AA9C(v72);
          v41 = memcpy(v68, v40, 0xA3uLL);
          sub_1B21220D8(v41, v42, v43, v44, v45, v46, v47, v48, v62, v64, *__src, *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], *&__src[72], *&__src[80], *&__src[88], *&__src[96], *&__src[104], *&__src[112], *&__src[120], *&__src[128], *&__src[136], *&__src[144], *&__src[152], *&__src[160], v67, *v68, *&v68[8], *&v68[16], *&v68[24], *&v68[32], *&v68[40], *&v68[48], *&v68[56], *&v68[64], *&v68[72], *&v68[80], *&v68[88], *&v68[96], *&v68[104], *&v68[112], *&v68[120], *&v68[128], *&v68[136], *&v68[144], *&v68[152], *&v68[160], *&v68[168], *&v68[176], v69, v70[0]);
          v49 = sub_1B2112318();
          sub_1B213BBD8(v49, v50);
          sub_1B213A5CC(__dst);
          memcpy(v68, __src, 0xA3uLL);
          sub_1B214D464(v68);
          goto LABEL_9;
        case 2u:
          v9 = sub_1B213AA9C(v72);
          v11 = v9[21];
          v10 = v9[22];
          v12 = memcpy(v68, v9, 0xA3uLL);
          v20 = sub_1B21220D8(v12, v13, v14, v15, v16, v17, v18, v19, v62, v64, *__src, *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], *&__src[72], *&__src[80], *&__src[88], *&__src[96], *&__src[104], *&__src[112], *&__src[120], *&__src[128], *&__src[136], *&__src[144], *&__src[152], *&__src[160], v67, *v68, *&v68[8], *&v68[16], *&v68[24], *&v68[32], *&v68[40], *&v68[48], *&v68[56], *&v68[64], *&v68[72], *&v68[80], *&v68[88], *&v68[96], *&v68[104], *&v68[112], *&v68[120], *&v68[128], *&v68[136], *&v68[144], *&v68[152], *&v68[160], *&v68[168], *&v68[176], v69, v70[0]);
          sub_1B21220D8(v20, v21, v22, v23, v24, v25, v26, v27, v63, v65, *__src, *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], *&__src[72], *&__src[80], *&__src[88], *&__src[96], *&__src[104], *&__src[112], *&__src[120], *&__src[128], *&__src[136], *&__src[144], *&__src[152], *&__src[160], v67, *v68, *&v68[8], *&v68[16], *&v68[24], *&v68[32], *&v68[40], *&v68[48], *&v68[56], *&v68[64], *&v68[72], *&v68[80], *&v68[88], *&v68[96], *&v68[104], *&v68[112], *&v68[120], *&v68[128], *&v68[136], *&v68[144], *&v68[152], *&v68[160], *&v68[168], *&v68[176], v69, v70[0]);
          v28 = sub_1B2112318();
          sub_1B213BBD8(v28, v29);
          sub_1B21356F8(v9);
          sub_1B213A5CC(__dst);
          memcpy(v68, __src, 0xA8uLL);
          *&v68[168] = v11;
          *&v68[176] = v10;
          sub_1B2155A5C(v68);
          goto LABEL_9;
        case 3u:
          v30 = sub_1B213AA9C(v72);
          sub_1B21220D8(v30, v31, v32, v33, v34, v35, v36, v37, v62, v64, *__src, *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], *&__src[72], *&__src[80], *&__src[88], *&__src[96], *&__src[104], *&__src[112], *&__src[120], *&__src[128], *&__src[136], *&__src[144], *&__src[152], *&__src[160], v67, *v30, *&v68[8], *&v68[16], *&v68[24], *&v68[32], *&v68[40], *&v68[48], *&v68[56], *&v68[64], *&v68[72], *&v68[80], *&v68[88], *&v68[96], *&v68[104], *&v68[112], *&v68[120], *&v68[128], *&v68[136], *&v68[144], *&v68[152], *&v68[160], *&v68[168], *&v68[176], v69, v70[0]);
          v38 = sub_1B2112318();
          sub_1B2153E58(v38, v39);
          sub_1B213A5CC(__dst);
          *v68 = *__src;
          sub_1B216ED24(v68);
          goto LABEL_9;
        case 4u:
          *v68 = v7;
          sub_1B213A59C(v68);

          sub_1B213A5CC(__dst);
LABEL_9:
          memcpy(v70, v68, sizeof(v70));
          break;
        default:
          sub_1B213AA9C(v72);
          memcpy(v68, __dst, sizeof(v68));
          sub_1B213AA9C(v68);
          memcpy(v70, __dst, sizeof(v70));

          break;
      }

      v73 = v5;
      v52 = *(v5 + 16);
      v51 = *(v5 + 24);
      if (v52 >= v51 >> 1)
      {
        sub_1B211156C(v51);
        sub_1B2114574();
        sub_1B213A1C8();
        v5 = v73;
      }

      *(v5 + 16) = v52 + 1;
      memcpy((v5 + 184 * v52 + 32), v70, 0xB8uLL);
      v8 += 184;
      --v4;
    }

    while (v4);
    v3 = v64;
  }

  *__src = *(v2 + 24);
  *v68 = *v2;
  *&v68[16] = *(v2 + 16);
  v53 = *(v2 + 57);
  *v70 = *(v2 + 41);
  *&v70[16] = v53;
  *&v70[31] = *(v2 + 72);
  memcpy(__dst, (v2 + 96), 0x48uLL);
  v54 = swift_allocObject();
  *(v54 + 16) = v5;
  sub_1B22515A0(v2, v72);
  sub_1B212AC5C(__src, &qword_1EB7A2230, &unk_1B225BB20);
  sub_1B21A4AD0();
  v56 = v55;
  v58 = v57;

  *v3 = *v68;
  v59 = *&v68[16];
  v60 = *&v70[16];
  *(v3 + 41) = *v70;
  *(v3 + 16) = v59;
  *(v3 + 24) = sub_1B22516AC;
  *(v3 + 32) = v54;
  *(v3 + 40) = 0;
  *(v3 + 57) = v60;
  *(v3 + 72) = *&v70[31];
  *(v3 + 80) = v56;
  *(v3 + 88) = v58;
  return memcpy((v3 + 96), __dst, 0x48uLL);
}

uint64_t sub_1B224FEF8(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v5 = v3;
  v63 = *(a3 + 16);
  v6 = *a2;
  memcpy(__dst, v3, sizeof(__dst));
  v7 = __dst[0];
  v8 = __dst[1];
  type metadata accessor for TableAlias();
  v9 = swift_allocObject();
  v62 = v7;
  *(v9 + 16) = v7;
  *(v9 + 24) = v8;
  *(v9 + 32) = 0;
  *(v9 + 40) = 0;
  *(v9 + 48) = 1;
  sub_1B21619D8(qword_1EB7A13D0, qword_1B2257E80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1B2257570;
  *(v10 + 32) = v9;
  type metadata accessor for StatementArgumentsSink();
  swift_allocObject();
  v61 = v8;

  v17 = sub_1B2114D98(0, v11, v12, v13, v14, v15, v16);
  sub_1B2116B4C();
  type metadata accessor for SQLGenerationContext();
  swift_allocObject();

  v19 = sub_1B2117164(v18, v17, v10);
  v20 = sub_1B2138500();
  swift_allocObject();

  sub_1B2138A30(v21, v20);
  sub_1B2251608(__src);
  memcpy(v80, __src, sizeof(v80));
  memcpy(v75, v5, 0xB8uLL);
  memcpy(v85, v5, sizeof(v85));
  sub_1B21619D8(&qword_1EB7A0EB8, &qword_1B22545D0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1B22546B0;
  memcpy(v81, __src, 0xA3uLL);
  sub_1B214D464(v81);
  memcpy((v22 + 32), v81, 0xB8uLL);
  sub_1B2251644(v5, v78);
  sub_1B224FB7C(v22, v82);
  swift_setDeallocating();
  sub_1B21B717C();
  sub_1B21A6408(v82, v75);
  memcpy(v84, v75, sizeof(v84));
  v76 = 0x20455441445055;
  v77 = 0xE700000000000000;
  switch(v6)
  {
    case 1:
      goto LABEL_11;
    default:
      v24 = 0x54524F4241;
      v25 = sub_1B22531F0();

      v26 = v4;
      if ((v25 & 1) == 0)
      {
        v75[0] = 2118223;
        v75[1] = 0xE300000000000000;
        v27 = 0xE500000000000000;
        switch(v6)
        {
          case 0:
            v27 = 0xE800000000000000;
            v24 = 0x4B4341424C4C4F52;
            break;
          case 1:
            break;
          case 2:
            v27 = 0xE400000000000000;
            v24 = 1279869254;
            break;
          case 3:
            v27 = 0xE600000000000000;
            v24 = 0x45524F4E4749;
            break;
          case 4:
            v27 = 0xE700000000000000;
            v24 = 0x4543414C504552;
            break;
          default:
            JUMPOUT(0);
        }

        MEMORY[0x1B2741EB0](v24, v27);

        MEMORY[0x1B2741EB0](32, 0xE100000000000000);
        MEMORY[0x1B2741EB0](v75[0], v75[1]);
LABEL_11:

        v26 = v4;
      }

      v75[0] = 34;
      v75[1] = 0xE100000000000000;
      MEMORY[0x1B2741EB0](v62, v61);
      MEMORY[0x1B2741EB0](34, 0xE100000000000000);
      MEMORY[0x1B2741EB0](v75[0], v75[1]);

      MEMORY[0x1B2741EB0](0x2054455320, 0xE500000000000000);
      v86 = MEMORY[0x1E69E7CC0];
      sub_1B2116B10(0, v63, 0, v28, v29, v30, v31);
      v65 = v86;
      v32 = a3 + 32;
      v23 = v63 - 1;
      break;
  }

  while (1)
  {
    sub_1B214FAC0(v32, v75);
    v33 = v75[3];
    v34 = v75[4];
    sub_1B21139A0(v75, v75[3]);
    (*(*(*(v34 + 8) + 8) + 8))(v78, v33);
    v35 = sub_1B2127E58(v19, 0);
    if (v26)
    {
      sub_1B2142BCC(v84);

      memcpy(v74, v78, 0xA3uLL);
      sub_1B21356F8(v74);

      sub_1B214FAF8(v75);

      return v23;
    }

    v37 = v35;
    v38 = v36;
    memcpy(v73, v78, 0xA3uLL);
    sub_1B21356F8(v73);
    v72[0] = v37;
    v72[1] = v38;

    MEMORY[0x1B2741EB0](2112800, 0xE300000000000000);

    v39 = v72[0];
    v40 = v72[1];
    memcpy(v74, &v75[5], 0xA3uLL);
    memcpy(v72, &v75[5], 0xA3uLL);
    sub_1B2127DC0(v74, v71);
    v41 = v19;
    v26 = 0;
    v42 = sub_1B2127E58(v19, 0);
    v44 = v43;
    memcpy(v71, v72, 0xA3uLL);
    sub_1B21356F8(v71);
    v69[0] = v39;
    v69[1] = v40;

    MEMORY[0x1B2741EB0](v42, v44);

    sub_1B214FAF8(v75);
    v49 = v65;
    v86 = v65;
    v51 = *(v65 + 16);
    v50 = *(v65 + 24);
    if (v51 >= v50 >> 1)
    {
      sub_1B2116B10(v50 > 1, v51 + 1, 1, v45, v46, v47, v48);
      v49 = v86;
    }

    *(v49 + 16) = v51 + 1;
    v52 = v49 + 16 * v51;
    *(v52 + 32) = v39;
    *(v52 + 40) = v40;
    if (!v23)
    {
      break;
    }

    v65 = v49;
    --v23;
    v32 += 208;
    v19 = v41;
  }

  v69[0] = v49;
  sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
  sub_1B211AB74(qword_1ED85E790, &qword_1EB7A0DA0, &qword_1B2254340, MEMORY[0x1E69E6310]);
  v53 = sub_1B2252250();
  v55 = v54;

  MEMORY[0x1B2741EB0](v53, v55);

  MEMORY[0x1B2741EB0](0x20455245485720, 0xE700000000000000);
  v70[3] = &type metadata for SQLExpression;
  v70[4] = &protocol witness table for SQLExpression;
  v70[0] = swift_allocObject();
  memcpy((v70[0] + 16), v80, 0xA3uLL);
  sub_1B21DA908(v70);
  v56 = sub_1B2127E58(v41, 0);
  v58 = v57;
  memcpy(v68, v69, 0xA3uLL);
  sub_1B21356F8(v68);
  sub_1B2113208(v70);
  MEMORY[0x1B2741EB0](v56, v58);

  MEMORY[0x1B2741EB0](0x28204E4920, 0xE500000000000000);
  sub_1B21376C4();
  MEMORY[0x1B2741EB0]();

  MEMORY[0x1B2741EB0](41, 0xE100000000000000);
  v23 = sub_1B212641C(v76, v77, 0);

  sub_1B211B048(&v67);
  v66 = v67;
  Statement.arguments.setter(&v66, v60);

  sub_1B2142BCC(v84);

  return v23;
}

uint64_t sub_1B22508F4(uint64_t a1, uint64_t a2, uint64_t *__src, uint64_t *a4)
{
  v5 = v4;
  v8 = *__src;
  memcpy(__dst, __src + 1, 0xA2uLL);
  v40 = 0;
  v41 = 0xE000000000000000;
  if (v8)
  {
    v13 = *(v8 + 16);
    if (v13)
    {
      v36 = v4;
      v37 = a1;
      v43 = a2;
      v40 = 40;
      v41 = 0xE100000000000000;
      v38[0] = MEMORY[0x1E69E7CC0];
      sub_1B2116B10(0, v13, 0, v9, v10, v11, v12);
      v14 = v38[0];
      v15 = (v8 + 40);
      do
      {
        v16 = *(v15 - 1);
        v17 = *v15;
        __srca[0] = 34;
        __srca[1] = 0xE100000000000000;

        MEMORY[0x1B2741EB0](v16, v17);
        MEMORY[0x1B2741EB0](34, 0xE100000000000000);

        v38[0] = v14;
        v23 = *(v14 + 16);
        v22 = *(v14 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_1B2116B10(v22 > 1, v23 + 1, 1, v18, v19, v20, v21);
          v14 = v38[0];
        }

        *(v14 + 16) = v23 + 1;
        v24 = v14 + 16 * v23;
        *(v24 + 32) = 34;
        *(v24 + 40) = 0xE100000000000000;
        v15 += 2;
        --v13;
      }

      while (v13);
      __srca[0] = v14;
      sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
      sub_1B211AB74(qword_1ED85E790, &qword_1EB7A0DA0, &qword_1B2254340, MEMORY[0x1E69E6310]);
      v25 = sub_1B2252250();
      v27 = v26;

      MEMORY[0x1B2741EB0](v25, v27);

      MEMORY[0x1B2741EB0](41, 0xE100000000000000);
      a2 = v43;
      v5 = v36;
      a1 = v37;
    }
  }

  v28 = MEMORY[0x1E69E7CC0];
  sub_1B2116B4C();
  swift_allocObject();

  v30 = sub_1B2138A30(v29, v28);
  memcpy(__srca, __dst, 0xA2uLL);
  sub_1B214CFE0(__dst, v38);
  v31 = sub_1B214D03C(v30);
  if (v5)
  {

    memcpy(v38, __srca, 0xA2uLL);
    sub_1B21DAF74(v38);
  }

  else
  {
    v34 = v31;
    v35 = v32;
    memcpy(v38, __srca, 0xA2uLL);
    sub_1B21DAF74(v38);
    MEMORY[0x1B2741EB0](a1, a2);
    MEMORY[0x1B2741EB0](34, 0xE100000000000000);
    MEMORY[0x1B2741EB0](v40, v41);

    MEMORY[0x1B2741EB0](0x2820534120, 0xE500000000000000);
    MEMORY[0x1B2741EB0](v34, v35);

    MEMORY[0x1B2741EB0](41, 0xE100000000000000);

    return 34;
  }
}

uint64_t sub_1B2250C7C(uint64_t a1)
{
  v1 = sub_1B2252F40();

  if (v1 == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B2250CD0(char a1)
{
  if (a1)
  {
    return 1313427274;
  }

  else
  {
    return 0x494F4A205446454CLL;
  }
}

uint64_t sub_1B2250D28@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B2250C7C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B2250D58@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B2250CD0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1B2250D84(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v66 = a1;
  v5 = *v3;
  v7 = *(v3 + 1);
  v6 = *(v3 + 2);
  v50 = v3[40];
  v55 = *(v3 + 8);
  v48 = *(v3 + 12);
  v49 = *(v3 + 3);
  v46 = *(v3 + 4);
  v52 = *(v3 + 17);
  v53 = *(v3 + 16);
  if (v5 == 1 && (a3 & 1) == 0)
  {
    result = sub_1B2252EC0();
    __break(1u);
  }

  else
  {
    v9 = *(v3 + 6);
    v8 = *(v3 + 7);
    v61[0] = 0;
    v61[1] = 0xE000000000000000;
    if (v5)
    {
      v10 = 1313427274;
    }

    else
    {
      v10 = 0x494F4A205446454CLL;
    }

    if (v5)
    {
      v11 = 0xE400000000000000;
    }

    else
    {
      v11 = 0xE90000000000004ELL;
    }

    MEMORY[0x1B2741EB0](v10, v11);

    MEMORY[0x1B2741EB0](32, 0xE100000000000000);
    v12 = v9;
    v13 = v55;
    v14 = sub_1B213ACD0(v66, v12, v8, v55);
    if (v4)
    {
    }

    else
    {
      v47 = v5;
      MEMORY[0x1B2741EB0](v14);

      v65[0] = v61[0];
      v65[1] = v61[1];
      v16 = sub_1B2139B70();
      if (v50 < 0)
      {
        v24 = v6;
        v7(v64, a2, v55);
      }

      else
      {
        v17 = sub_1B2138F90();
        if (v50)
        {
          v19 = v17;
        }

        else
        {
          v19 = v7;
        }

        if (v50)
        {
          v20 = v18;
        }

        else
        {
          v20 = v6;
        }

        if (v50)
        {
          v21 = v7;
        }

        else
        {
          v21 = v17;
        }

        if (v50)
        {
          v22 = v6;
        }

        else
        {
          v22 = v18;
        }

        if (v49)
        {
          v23 = v46;
        }

        else
        {
          v23 = 0;
        }

        v65[2] = v19;
        v65[3] = v20;
        v65[4] = v21;
        v65[5] = v22;
        v65[6] = v49;
        v65[7] = v23;

        v24 = sub_1B21D9790(v16);

        sub_1B21D9D18(v50 & 1, v24);

        v13 = v55;
        sub_1B21C5B9C();

        memcpy(v61, v62, 0xA3uLL);
        nullsub_1();
        memcpy(v64, v61, 0xA3uLL);
      }

      memcpy(v63, v64, 0xA3uLL);
      v25 = v48;
      if (sub_1B213EA68(v63) != 1)
      {
        sub_1B213B944();
        v26 = v27;
        v28 = *(v27 + 16);
        v24 = (v28 + 1);
        if (v28 < *(v27 + 24) >> 1)
        {
          goto LABEL_33;
        }

        goto LABEL_54;
      }

      v26 = MEMORY[0x1E69E7CC0];
      if (v48)
      {
        goto LABEL_34;
      }

      while (1)
      {
        if (*(v26 + 16))
        {
          v30 = MEMORY[0x1B2741EB0](542002976, 0xE400000000000000);
          if (qword_1ED85DC80 != -1)
          {
            v30 = swift_once();
          }

          *v62 = xmmword_1ED85DC88;
          *&v62[16] = xmmword_1ED85DC98;
          *&v62[32] = word_1ED85DCA8;
          v62[34] = byte_1ED85DCAA;
          MEMORY[0x1EEE9AC00](v30);
          sub_1B21619D8(&qword_1EB7A1CD8, &unk_1B225EDE0);
          sub_1B211AB74(&qword_1ED85D868, &qword_1EB7A1CD8, &unk_1B225EDE0, MEMORY[0x1E69E6328]);
          swift_getKeyPath();

          sub_1B224F214();
          v32 = v31;

          sub_1B213B4BC(v62, v32, v61);

          v25 = sub_1B2127E58(v66, 0);
          v34 = v33;
          memcpy(v62, v61, 0xA3uLL);
          sub_1B21356F8(v62);
          v24 = v65;
          MEMORY[0x1B2741EB0](v25, v34);
        }

        v35 = v52;
        v36 = *(v53 + 16);
        if (!v36)
        {
          return v65[0];
        }

        v13 = 0;
        v37 = v36 - 1;
        v28 = v53 + 40;
        while (v13 < v36)
        {
          if (!v35[2])
          {
            goto LABEL_52;
          }

          v25 = *(v28 - 8);
          v38 = *v28;

          v24 = v35;
          v39 = sub_1B211E590();
          if ((v40 & 1) == 0)
          {
            goto LABEL_53;
          }

          v41 = (v35[7] + 216 * v39);
          memcpy(v59, v41, sizeof(v59));
          memcpy(v58, v41, sizeof(v58));
          memmove(v60, v41, 0xD8uLL);
          v61[0] = v25;
          v61[1] = v38;
          memcpy(&v61[2], v58, 0xD8uLL);
          sub_1B21A63AC(v59, &v56);
          sub_1B21A63AC(v60, &v56);
          sub_1B212AC5C(v61, &qword_1EB7A1CB8, &qword_1B225A4C0);
          memcpy(v62, v60, sizeof(v62));
          v56 = 32;
          v57 = 0xE100000000000000;
          memcpy(v58, v60, sizeof(v58));
          v42 = sub_1B2250D84(v66, v55, v47 & a3);
          MEMORY[0x1B2741EB0](v42);

          v25 = v57;
          v24 = v65;
          MEMORY[0x1B2741EB0](v56, v57);

          sub_1B21A6464(v62);
          if (v37 == v13)
          {
            return v65[0];
          }

          v35 = v52;
          v36 = *(v53 + 16);
          v28 += 16;
          ++v13;
        }

        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        sub_1B213B944();
        v26 = v43;
LABEL_33:
        *(v26 + 16) = v24;
        memcpy((v26 + 168 * v28 + 32), v63, 0xA3uLL);
        if (v25)
        {
LABEL_34:
          sub_1B2139B70();
          v25(v61);

          memcpy(v60, v61, 0xA3uLL);
          memcpy(v59, v61, 0xA3uLL);
          sub_1B213BBD8(v13, v62);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1B213B944();
            v26 = v44;
          }

          v29 = *(v26 + 16);
          v24 = (v29 + 1);
          if (v29 >= *(v26 + 24) >> 1)
          {
            sub_1B213B944();
            v26 = v45;
          }

          sub_1B21356F8(v60);
          *(v26 + 16) = v24;
          memcpy((v26 + 168 * v29 + 32), v62, 0xA3uLL);
        }
      }
    }
  }

  return result;
}

void sub_1B2251608(uint64_t a1)
{
  *a1 = 1;
  bzero((a1 + 8), 0x98uLL);
  *(a1 + 162) = -88;
  *(a1 + 160) = 0;
}

uint64_t sub_1B225167C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B213AFF8();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1B22516D0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 216))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 56);
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

uint64_t sub_1B2251710(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 216) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B225179C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 168))
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

uint64_t sub_1B22517DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
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
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SQLQualifiedJoin.Kind(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B2251944()
{
  result = qword_1EB7A3510;
  if (!qword_1EB7A3510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A3510);
  }

  return result;
}