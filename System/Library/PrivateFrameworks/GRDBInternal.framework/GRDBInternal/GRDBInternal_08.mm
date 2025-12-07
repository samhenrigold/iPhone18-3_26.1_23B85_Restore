uint64_t sub_1B21AAEFC(unsigned __int8 a1, char a2)
{
  v2 = 0xEA00000000006464;
  v3 = 0x2D4D4D2D79797979;
  v4 = a1;
  v5 = "yyyy-MM-dd HH:mm:ss.SSS";
  v6 = "yyyy-MM-dd HH:mm:ss";
  v7 = 0x2D4D4D2D79797979;
  v8 = 0xEA00000000006464;
  v9 = "yyyy-MM-dd HH:mm";
  switch(v4)
  {
    case 1:
      v7 = 0xD000000000000010;
      v8 = 0x80000001B226CC90;
      break;
    case 2:
      v8 = 0x80000001B226CCB0;
      v7 = 0xD000000000000013;
      break;
    case 3:
      v8 = 0x80000001B226CCD0;
      v7 = 0xD000000000000017;
      break;
    case 4:
      v8 = 0xE500000000000000;
      v7 = 0x6D6D3A4848;
      break;
    case 5:
      v8 = 0xE800000000000000;
      v7 = sub_1B212CFE4();
      break;
    case 6:
      v7 = sub_1B212CFE4();
      v8 = 0xEC0000005353532ELL;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0xD000000000000010;
      v2 = (v9 - 32) | 0x8000000000000000;
      break;
    case 2:
      v2 = (v6 - 32) | 0x8000000000000000;
      v3 = 0xD000000000000013;
      break;
    case 3:
      v2 = (v5 - 32) | 0x8000000000000000;
      v3 = 0xD000000000000017;
      break;
    case 4:
      v2 = 0xE500000000000000;
      v3 = 0x6D6D3A4848;
      break;
    case 5:
      v2 = 0xE800000000000000;
      sub_1B212CDF8();
      break;
    case 6:
      sub_1B212CDF8();
      v2 = 0xEC0000005353532ELL;
      break;
    default:
      break;
  }

  if (v7 == v3 && v8 == v2)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B22531F0();
  }

  return v11 & 1;
}

uint64_t sub_1B21AB0C8(char a1, uint64_t a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 1313427274;
  }

  else
  {
    v3 = 0x494F4A205446454CLL;
  }

  if (v2)
  {
    v4 = 0xE90000000000004ELL;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (a2)
  {
    v5 = 1313427274;
  }

  else
  {
    v5 = 0x494F4A205446454CLL;
  }

  if (a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE90000000000004ELL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1B211832C(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_1B21AB158(char a1, uint64_t a2)
{
  v3 = 0xE100000000000000;
  v4 = 61;
  switch(a1)
  {
    case 1:
      v3 = 0xE200000000000000;
      v4 = 15932;
      break;
    case 2:
      v3 = 0xE200000000000000;
      v4 = 21321;
      break;
    case 3:
      v3 = 0xE600000000000000;
      v4 = 0x544F4E205349;
      break;
    default:
      break;
  }

  v5 = 0xE100000000000000;
  v6 = 61;
  switch(a2)
  {
    case 1:
      v5 = 0xE200000000000000;
      v6 = 15932;
      break;
    case 2:
      v5 = 0xE200000000000000;
      v6 = 21321;
      break;
    case 3:
      v5 = 0xE600000000000000;
      v6 = 0x544F4E205349;
      break;
    default:
      break;
  }

  if (v4 == v6 && v3 == v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1B211832C(v4, a2, v6);
  }

  return v8 & 1;
}

BOOL static ResultCode.~= infix(_:_:)(_DWORD *a1, int *a2)
{
  v2 = *a2;
  if (*a1 < 0x100u)
  {
    v2 = *a2;
  }

  return *a1 == v2;
}

uint64_t sub_1B21AB604@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = ResultCode.init(rawValue:)(*a1, &v4);
  *a2 = v4;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_1B21AB644@<X0>(_DWORD *a1@<X8>)
{
  result = ResultCode.rawValue.getter();
  *a1 = result;
  return result;
}

const char *ResultCode.description.getter()
{
  result = sqlite3_errstr(*v0);
  if (result)
  {
    v2 = sub_1B22523F0();
    v4 = v3;
    v5 = sub_1B2252FD0();
    MEMORY[0x1B2741EB0](10272, 0xE200000000000000);
    MEMORY[0x1B2741EB0](v2, v4);

    MEMORY[0x1B2741EB0](41, 0xE100000000000000);
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static ResultCode.~= infix(_:_:)(unsigned int *a1, id a2)
{
  v2 = *a1;
  v3 = a2;
  sub_1B21619D8(qword_1EB7A0F98, &unk_1B22595B0);
  result = swift_dynamicCast();
  if (result)
  {

    sub_1B211A378(v6, v7);
    if (v2 <= 0xFF)
    {
      return v2 == v5;
    }

    else
    {
      return v2 == v5;
    }
  }

  return result;
}

uint64_t DatabaseError.message.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t DatabaseError.sql.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t DatabaseError.arguments.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  *a1 = v2;
  a1[1] = v3;
  return sub_1B211CF8C(v2);
}

void DatabaseError.init(resultCode:message:sql:arguments:publicStatementArguments:)()
{
  sub_1B212DEE8();
  v4 = *v3;
  if (v2)
  {
    goto LABEL_4;
  }

  v5 = *v3;
  if (sqlite3_errstr(*v0))
  {
    v0 = sub_1B22523F0();
    v2 = v1;
    v4 = v5;
LABEL_4:
    sub_1B21147B0(v4, v0, v1, v2);
    return;
  }

  __break(1u);
}

{
  sub_1B212DEE8();
  v4 = *v3;
  if (v2)
  {
    goto LABEL_4;
  }

  v5 = *v3;
  if (sqlite3_errstr(v0))
  {
    v0 = sub_1B22523F0();
    v2 = v1;
    v4 = v5;
LABEL_4:
    sub_1B21147B0(v4, v0, v1, v2);
    return;
  }

  __break(1u);
}

const char *DatabaseError.init(resultCode:message:sql:)@<X0>(const char *result@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = result;
  if (a3)
  {
    goto LABEL_4;
  }

  result = sqlite3_errstr(result);
  if (result)
  {
    result = sub_1B22523F0();
    a2 = result;
    a3 = v11;
LABEL_4:
    *a6 = v9;
    *(a6 + 8) = a2;
    *(a6 + 16) = a3;
    *(a6 + 24) = a4;
    *(a6 + 32) = a5;
    *(a6 + 40) = 0;
    *(a6 + 48) = 0;
    *(a6 + 56) = 0;
    return result;
  }

  __break(1u);
  return result;
}

double sub_1B21AB9A4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1B2252CD0();

  MEMORY[0x1B2741EB0](a1, a2);
  *a3 = 1;
  *(a3 + 8) = 0x2068637573206F6ELL;
  *(a3 + 16) = 0xEF203A656C626174;
  result = 0.0;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0;
  return result;
}

uint64_t sub_1B21ABA4C(uint64_t a1)
{
  v2 = sub_1B21AC434();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1B21ABA88(uint64_t a1)
{
  v2 = sub_1B21AC434();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t DatabaseError.description.getter()
{
  sub_1B211D90C();
  v5 = *(v0 + 56);
  sub_1B2115714();
  v6 = sub_1B2252FD0();
  MEMORY[0x1B2741EB0](v6);

  if (v2)
  {
    sub_1B2117C98();
    MEMORY[0x1B2741EB0]();
  }

  if (v1)
  {
    sub_1B2116138();
    sub_1B2252CD0();

    sub_1B2112060();
    MEMORY[0x1B2741EB0](96, 0xE100000000000000);
    sub_1B21221C4();
  }

  if (v3)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  if (v7 == 1 && (*(v3 + 16) || *(v4 + 16)))
  {
    sub_1B2116138();
    sub_1B2252CD0();

    v15 = sub_1B2115C54(v8, v9, v10, v11, v12, v13, v14);
    MEMORY[0x1B2741EB0](v15);

    sub_1B21221C4();
  }

  return v17;
}

unint64_t DatabaseError.errorUserInfo.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_1B21619D8(&qword_1EB7A1120, &qword_1B2254948);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B22546B0;
  *(inited + 32) = sub_1B22522A0();
  *(inited + 40) = v4;
  *(inited + 48) = DatabaseError.description.getter();
  *(inited + 56) = v5;
  v6 = sub_1B2252190();
  if (v2)
  {
    v7 = sub_1B22522A0();
    v9 = v8;

    swift_isUniquelyReferenced_nonNull_native();
    sub_1B21AC17C(v1, v2, v7, v9);
  }

  v10 = sub_1B2225608(v6);

  return v10;
}

double sub_1B21ABD9C@<D0>(uint64_t a1@<X8>)
{
  *a1 = 21;
  *(a1 + 8) = 0xD000000000000014;
  *(a1 + 16) = 0x80000001B226DEC0;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  return result;
}

uint64_t DatabaseError.expandedDescription.getter()
{
  sub_1B211D90C();
  sub_1B2115714();
  v4 = sub_1B2252FD0();
  MEMORY[0x1B2741EB0](v4);

  if (v1)
  {
    sub_1B2117C98();
    MEMORY[0x1B2741EB0]();
  }

  if (v0)
  {
    sub_1B2116138();
    sub_1B2252CD0();

    sub_1B2112060();
    MEMORY[0x1B2741EB0](96, 0xE100000000000000);
    sub_1B21221C4();
  }

  if (v2 && (*(v2 + 16) || *(v3 + 16)))
  {
    sub_1B2116138();
    sub_1B2252CD0();

    v12 = sub_1B2115C54(v5, v6, v7, v8, v9, v10, v11);
    MEMORY[0x1B2741EB0](v12);

    sub_1B21221C4();
  }

  return v14;
}

uint64_t sub_1B21ABF20()
{
  sub_1B2122548();
  v3 = v2;
  v5 = v4;
  sub_1B211436C(v6, v4, v2);
  sub_1B2190C9C();
  sub_1B211744C();
  if (v9)
  {
    __break(1u);
LABEL_14:
    type metadata accessor for TableAlias();
    result = sub_1B2253390();
    __break(1u);
    return result;
  }

  v10 = v7;
  v11 = v8;
  v12 = sub_1B21619D8(&qword_1EB7A1CF0, &qword_1B225A758);
  if (sub_1B21165F8(v12))
  {
    sub_1B2190C9C();
    sub_1B21150FC();
    if (!v14)
    {
      goto LABEL_14;
    }

    v10 = v13;
  }

  v15 = *v1;
  if (v11)
  {
    v16 = (*(v15 + 56) + 16 * v10);
    *v16 = v0;
    v16[1] = v5;
    sub_1B2115ED4();
  }

  else
  {
    sub_1B21CBF44(v10, v3, v0, v5, v15);
    sub_1B2115ED4();
  }
}

uint64_t sub_1B21AC070()
{
  sub_1B2122548();
  v3 = v2;
  v5 = v4;
  sub_1B211436C(v6, v4, v2);
  sub_1B2190CF8();
  sub_1B211744C();
  if (v9)
  {
    __break(1u);
LABEL_12:
    result = sub_1B2253390();
    __break(1u);
    return result;
  }

  v10 = v7;
  v11 = v8;
  v12 = sub_1B21619D8(&qword_1EB7A1D00, &qword_1B225A768);
  if (sub_1B21165F8(v12))
  {
    sub_1B2190CF8();
    sub_1B21150FC();
    if (!v14)
    {
      goto LABEL_12;
    }

    v10 = v13;
  }

  v15 = *v1;
  if (v11)
  {
    v16 = (*(v15 + 56) + 16 * v10);
    *v16 = v0;
    v16[1] = v5;
  }

  else
  {
    sub_1B21CC018(v10, v3, v0, v5, v15);
    return sub_1B21AC488(v3, v18);
  }
}

uint64_t sub_1B21AC17C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B211436C(a1, a2, a3);
  sub_1B211E590();
  sub_1B211744C();
  if (v11)
  {
    __break(1u);
LABEL_14:
    result = sub_1B2253390();
    __break(1u);
    return result;
  }

  v12 = v9;
  v13 = v10;
  v14 = sub_1B21619D8(&qword_1EB7A1D30, &qword_1B225A790);
  if (sub_1B2121FA4(v14))
  {
    sub_1B211E590();
    sub_1B21150FC();
    if (!v16)
    {
      goto LABEL_14;
    }

    v12 = v15;
  }

  v17 = *v4;
  if (v13)
  {
    v18 = (*(v17 + 56) + 16 * v12);
    *v18 = v5;
    v18[1] = a2;
    sub_1B2111588();
  }

  else
  {
    sub_1B21CC104(v12, a3, a4, v5, a2, v17);
    sub_1B2111588();
  }
}

unint64_t sub_1B21AC298()
{
  result = qword_1ED85D4B8;
  if (!qword_1ED85D4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED85D4B8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ResultCode(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ResultCode(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

__n128 sub_1B21AC350(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1B21AC36C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 57))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B21AC3C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_1B21AC434()
{
  result = qword_1EB7A0C98[0];
  if (!qword_1EB7A0C98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB7A0C98);
  }

  return result;
}

uint64_t sub_1B21AC4E4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1B21424A0(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1B21AC6AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *(v6 + 16);
  v21 = *(v6 + 8);
  v22 = *(v6 + 24);
  v11 = *(v6 + 32);
  v10 = *(v6 + 40);
  v13 = *(v6 + 48);
  v12 = *(v6 + 56);
  v14 = *(v6 + 72);
  v23 = *(v6 + 64);
  v26 = *(v6 + 80);
  v15 = *(v6 + 96);
  v24 = *(v6 + 88);
  v25 = *v6;
  v28 = *(v6 + 104);
  v16 = swift_allocObject();
  v17 = *(a3 + 24);
  v16[2] = *(a3 + 16);
  v16[3] = a4;
  v16[4] = v17;
  v16[5] = a5;
  v16[6] = a1;
  v16[7] = a2;
  v16[8] = v15;
  v16[9] = v28;
  *a6 = v25;
  *(a6 + 8) = v21;
  *(a6 + 16) = v9;
  *(a6 + 24) = v22;
  *(a6 + 32) = v11;
  *(a6 + 40) = v10;
  *(a6 + 48) = v13;
  *(a6 + 56) = v12;
  *(a6 + 64) = v23;
  *(a6 + 72) = v14;
  *(a6 + 80) = v26;
  *(a6 + 88) = v24;
  *(a6 + 96) = sub_1B21B2738;
  *(a6 + 104) = v16;
  sub_1B2112328(v25, v21);
  sub_1B2112328(v9, v22);
  sub_1B2112328(v11, v10);
  sub_1B2112328(v13, v12);
  sub_1B2112328(v23, v14);
  sub_1B2167008(v24);
}

uint64_t sub_1B21AC838(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11(v8);
  a1(v10);
  return (*(v7 + 8))(v10, a5);
}

uint64_t ValueObservation.start(in:scheduling:onError:onChange:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  memcpy(__dst, v8, sizeof(__dst));
  v13 = *(a8 + 16);
  v12 = *(a8 + 24);
  v14 = sub_1B2135E94(sub_1B21ACBB4, a8, __src);
  if (__src[0])
  {
    (__src[0])(v14);
  }

  ObjectType = swift_getObjectType();
  memcpy(__dst, __src, sizeof(__dst));
  (*(a2 + 72))(__dst, a3, a6, a7, v13, v12, ObjectType, a2);
  sub_1B2111808();
  return (*(v16 + 8))(__src, a8);
}

uint64_t sub_1B21ACA70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 48);
  if (v6)
  {
    v7 = *(a1 + 56);
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    *(v8 + 24) = v7;
    v9 = swift_allocObject();
    *(v9 + 16) = a2;
    *(v9 + 24) = a3;
    v10 = swift_allocObject();
    v10[2] = sub_1B21B277C;
    v10[3] = v8;
    v10[4] = sub_1B21B277C;
    v10[5] = v9;
    v11 = sub_1B21B2750;
  }

  else
  {
    v10 = swift_allocObject();
    v10[2] = a2;
    v10[3] = a3;
    v11 = sub_1B21B277C;
  }

  v12 = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v10;
  *(a1 + 48) = sub_1B21B274C;
  *(a1 + 56) = v13;
}

uint64_t ValueObservation.handleEvents(willStart:willFetch:willTrackRegion:databaseDidChange:didReceiveValue:didFail:didCancel:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1B2118030();
  v12 = swift_allocObject();
  v13 = *(a10 + 16);
  v14 = *(a10 + 24);
  v12[2] = v13;
  v12[3] = v14;
  v12[4] = a1;
  v12[5] = a2;
  v12[6] = a4;
  v12[7] = a5;
  sub_1B2112328(a1, a2);
  v15 = sub_1B2111F44();
  sub_1B2112328(v15, v16);
  v18 = type metadata accessor for ValueReducers.Trace(0, v13, v14, v17);
  WitnessTable = swift_getWitnessTable();
  sub_1B21AC6AC(sub_1B21ACFD4, v12, a10, v18, WitnessTable, __src);

  v20 = sub_1B211510C();
  v23 = type metadata accessor for ValueObservation(v20, v21, WitnessTable, v22);
  sub_1B2135E94(sub_1B21AD2F0, v23, a3);
  memcpy(__dst, __src, 0x70uLL);
  sub_1B2111808();
  return (*(v24 + 8))(__dst, v23);
}

uint64_t sub_1B21ACDA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v27 = a8;
  v14 = MEMORY[0x1EEE9AC00](a1);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, v14);
  if (a2)
  {
    v18 = swift_allocObject();
    *(v18 + 16) = a2;
    *(v18 + 24) = a3;
    v19 = sub_1B212D718;
  }

  else
  {
    v19 = nullsub_1;
    v18 = 0;
  }

  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = v18;
  v21 = swift_allocObject();
  v21[2] = a6;
  v21[3] = a7;
  if (a4)
  {
    v21[4] = a4;
    v21[5] = a5;
    v22 = sub_1B21B272C;
  }

  else
  {
    v22 = nullsub_1;
  }

  v23 = v22;
  v24 = swift_allocObject();
  v24[2] = a6;
  v24[3] = a7;
  v24[4] = v23;
  v24[5] = v21;
  sub_1B21E1E64(v16, sub_1B212E030, v20, sub_1B21B2720, v24, a6, a7, v27);
  sub_1B2112328(a2, a3);
  return sub_1B2112328(a4, a5);
}

uint64_t sub_1B21ACFE4(uint64_t (**a1)(), uint64_t (*a2)(), uint64_t (*a3)(), uint64_t (*a4)(), uint64_t (*a5)(), uint64_t (*a6)(), uint64_t (*a7)(), uint64_t a8, uint64_t a9, uint64_t (*a10)(), uint64_t (*a11)())
{
  v18 = *a1;
  v17 = a1[1];
  if (a2)
  {
    v19 = a2;
    v20 = a3;
    if (v18)
    {
      v20 = swift_allocObject();
      *(v20 + 2) = v18;
      *(v20 + 3) = v17;
      *(v20 + 4) = a2;
      *(v20 + 5) = a3;
      v19 = sub_1B21B269C;
    }
  }

  else
  {
    v19 = *a1;
    v20 = a1[1];
  }

  v43 = a3;
  *a1 = v19;
  a1[1] = v20;
  v21 = a1[2];
  v22 = a1[3];
  if (a4)
  {
    v23 = a4;
    v24 = a5;
    if (v21)
    {
      v24 = swift_allocObject();
      *(v24 + 2) = v21;
      *(v24 + 3) = v22;
      *(v24 + 4) = a4;
      *(v24 + 5) = a5;
      v23 = sub_1B21B2714;
    }

    goto LABEL_9;
  }

  v23 = a1[2];
  v24 = a1[3];
  if (v21)
  {
LABEL_9:
    sub_1B2112328(a4, a5);
    goto LABEL_10;
  }

  v24 = 0;
LABEL_10:
  a1[2] = v23;
  a1[3] = v24;
  v26 = a1[4];
  v25 = a1[5];
  if (a6)
  {
    v27 = a6;
    v28 = a7;
    if (v26)
    {
      v28 = swift_allocObject();
      *(v28 + 2) = v26;
      *(v28 + 3) = v25;
      *(v28 + 4) = a6;
      *(v28 + 5) = a7;
      v27 = sub_1B21B2778;
    }
  }

  else
  {
    v27 = a1[4];
    v28 = a1[5];
  }

  a1[4] = v27;
  a1[5] = v28;
  v29 = a1[6];
  if (v29)
  {
    v30 = a1[7];
    v31 = swift_allocObject();
    *(v31 + 16) = v29;
    *(v31 + 24) = v30;
    v32 = sub_1B21B277C;
    if (!a8)
    {
LABEL_21:
      v36 = swift_allocObject();
      *(v36 + 16) = v32;
      *(v36 + 24) = v31;
      v37 = sub_1B21B26A8;
      goto LABEL_22;
    }

LABEL_18:
    v33 = swift_allocObject();
    *(v33 + 16) = a8;
    *(v33 + 24) = a9;
    v34 = sub_1B21B26E0;
    if (v29)
    {
      v35 = swift_allocObject();
      v35[2] = v32;
      v35[3] = v31;
      v35[4] = sub_1B21B26E0;
      v35[5] = v33;
      v34 = sub_1B21B2714;
      v33 = v35;
    }

    v32 = v34;
    sub_1B2112328(a8, a9);
    v31 = v33;
    goto LABEL_21;
  }

  v31 = 0;
  v32 = 0;
  if (a8)
  {
    goto LABEL_18;
  }

  v37 = 0;
  v36 = 0;
LABEL_22:
  a1[6] = v37;
  a1[7] = v36;
  v39 = a1[8];
  v38 = a1[9];
  if (a10)
  {
    v40 = a10;
    v41 = a11;
    if (v39)
    {
      v41 = swift_allocObject();
      *(v41 + 2) = v39;
      *(v41 + 3) = v38;
      *(v41 + 4) = a10;
      *(v41 + 5) = a11;
      v40 = sub_1B21B2778;
    }
  }

  else
  {
    v40 = a1[8];
    v41 = a1[9];
  }

  a1[8] = v40;
  a1[9] = v41;
  sub_1B2112328(a2, v43);
  sub_1B2112328(a6, a7);
  return sub_1B2112328(a10, a11);
}

void ValueObservation.print(_:to:)(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  sub_1B2111A0C();
  v6 = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  v7 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    *&v21 = v4;
    *(&v21 + 1) = v3;

    MEMORY[0x1B2741EB0](8250, 0xE200000000000000);
    v8 = v4;
  }

  else
  {
    v8 = 0;
    v3 = 0xE000000000000000;
  }

  v9 = swift_allocObject();
  sub_1B21B23CC(v2, &v21, &qword_1EB7A1D40, &unk_1B225A7B0);
  if (v22)
  {
    sub_1B21217FC(&v21, v9 + 16);
  }

  else
  {
    *(v9 + 40) = &type metadata for PrintOutputStream;
    *(v9 + 48) = sub_1B21AD640();
  }

  sub_1B2113B74();
  v19 = swift_allocObject();
  sub_1B2118348(v19);
  sub_1B2113B74();
  v10 = swift_allocObject();
  sub_1B2118348(v10);
  sub_1B2113B74();
  v11 = swift_allocObject();
  sub_1B2118348(v11);
  sub_1B2113B74();
  v12 = swift_allocObject();
  sub_1B2118348(v12);
  sub_1B2118030();
  v13 = swift_allocObject();
  *(v13 + 16) = *(a1 + 16);
  *(v13 + 32) = v6;
  *(v13 + 40) = v9;
  *(v13 + 48) = v8;
  *(v13 + 56) = v3;
  sub_1B2113B74();
  v14 = swift_allocObject();
  sub_1B2118348(v14);
  sub_1B2113B74();
  v18 = a1;
  v15 = swift_allocObject();
  sub_1B2118348(v15);
  v16 = v6;
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  v17 = v16;
  ValueObservation.handleEvents(willStart:willFetch:willTrackRegion:databaseDidChange:didReceiveValue:didFail:didCancel:)(sub_1B21AD6C4, v10, a2, sub_1B21ADA64, v13, sub_1B21ADBA0, v14, sub_1B21ADCC4, v15, v18);
}

unint64_t sub_1B21AD640()
{
  result = qword_1EB7A1D48[0];
  if (!qword_1EB7A1D48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB7A1D48);
  }

  return result;
}

id sub_1B21AD6F4(uint64_t *a1, id a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  [a2 lock];
  sub_1B2252CD0();

  MEMORY[0x1B2741EB0](0xD000000000000010, 0x80000001B226DFD0);
  v7 = DatabaseRegion.description.getter();
  MEMORY[0x1B2741EB0](v7);

  swift_beginAccess();
  sub_1B21A1628(a3 + 16, *(a3 + 40));
  sub_1B2252E20();
  swift_endAccess();

  return [a2 unlock];
}

id sub_1B21AD828(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  [a1 lock];
  sub_1B2252CD0();

  MEMORY[0x1B2741EB0](0xD000000000000013, 0x80000001B226DFB0);
  swift_beginAccess();
  sub_1B21A1628(a2 + 16, *(a2 + 40));
  sub_1B2252E20();
  swift_endAccess();

  return [a1 unlock];
}

id sub_1B21AD934(uint64_t a1, id a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  [a2 lock];
  MEMORY[0x1B2741EB0](a4, a5);
  MEMORY[0x1B2741EB0](0x203A65756C6176, 0xE700000000000000);
  swift_getAssociatedTypeWitness();
  sub_1B22531C0();
  swift_beginAccess();
  sub_1B21A1628(a3 + 16, *(a3 + 40));
  sub_1B2252E20();
  swift_endAccess();

  return [a2 unlock];
}

id sub_1B21ADA74(uint64_t a1, id a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  [a2 lock];
  MEMORY[0x1B2741EB0](a4, a5);
  MEMORY[0x1B2741EB0](0x3A6572756C696166, 0xE900000000000020);
  sub_1B21619D8(qword_1EB7A0F98, &unk_1B22595B0);
  sub_1B2252E10();
  swift_beginAccess();
  sub_1B21A1628(a3 + 16, *(a3 + 40));
  sub_1B2252E20();
  swift_endAccess();

  return [a2 unlock];
}

id sub_1B21ADBAC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  [a1 lock];

  v6 = sub_1B2111F44();
  MEMORY[0x1B2741EB0](v6);
  swift_beginAccess();
  sub_1B21A1628(a2 + 16, *(a2 + 40));
  sub_1B2252E20();
  swift_endAccess();

  return [a1 unlock];
}

uint64_t sub_1B21ADC80()
{

  sub_1B2113B74();

  return swift_deallocObject();
}

uint64_t sub_1B21ADCF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a3;
  v5 = *(a2 + 16);
  v6 = *(*(a2 + 24) + 8);
  swift_getAssociatedTypeWitness();
  sub_1B211280C();
  v29 = v8;
  v30 = v7;
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = sub_1B2252B00();
  sub_1B211280C();
  v27 = v13;
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26 - v15;
  v17 = *(v5 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 96))(v19);
  v22 = v32;
  (*(v6 + 24))(a1, v5, v6);
  if (v22)
  {
    return (*(v17 + 8))(v21, v5);
  }

  (*(v6 + 32))(v11, v5, v6);
  (*(v29 + 8))(v11, v30);
  v24 = AssociatedTypeWitness;
  if (sub_1B2122A98(v16, 1, AssociatedTypeWitness) == 1)
  {
    (*(v27 + 8))(v16, v12);
    result = sub_1B2252EC0();
    __break(1u);
  }

  else
  {
    (*(v17 + 8))(v21, v5);
    sub_1B2111808();
    return (*(v25 + 32))(v31, v16, v24);
  }

  return result;
}

uint64_t ValueObservation.values(in:scheduling:bufferingPolicy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v24 = a3;
  v23 = a2;
  v25 = a6;
  v12 = *(a5 + 16);
  v11 = *(a5 + 24);
  swift_getAssociatedTypeWitness();
  sub_1B2161A20(qword_1EB7A0F98, &unk_1B22595B0);
  v13 = sub_1B2252730();
  sub_1B211280C();
  v15 = v14;
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v23 - v17;
  memcpy(__dst, v7, 0x70uLL);
  (*(v15 + 16))(v18, a4, v13);
  v19 = swift_allocObject();
  v19[2] = v12;
  v19[3] = v11;
  memcpy(v19 + 4, __dst, 0x70uLL);
  v20 = v23;
  v19[18] = a1;
  v19[19] = v20;
  v19[20] = v24;
  swift_checkMetadataState();
  sub_1B21AE23C();
  sub_1B2111808();
  (*(v21 + 16))(v26, __dst, a5);
  swift_unknownObjectRetain();
}

uint64_t sub_1B21AE23C()
{
  sub_1B211437C();
  sub_1B2161A20(qword_1EB7A0F98, &unk_1B22595B0);
  sub_1B211510C();
  sub_1B2252730();
  sub_1B21118A0();
  (*(v4 + 32))(v3, v2);
  v5 = sub_1B211510C();
  result = type metadata accessor for AsyncValueObservation(v5, v6, v7, v8);
  v10 = (v3 + *(result + 28));
  *v10 = v1;
  v10[1] = v0;
  return result;
}

uint64_t AsyncValueObservation.makeAsyncIterator()(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_1B2161A20(qword_1EB7A0F98, &unk_1B22595B0);
  sub_1B211510C();
  sub_1B2252790();
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v3);
  sub_1B211510C();
  v4 = sub_1B2252730();
  sub_1B211280C();
  v6 = v5;
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19[-v8];
  sub_1B211510C();
  v10 = sub_1B22527A0();
  sub_1B211280C();
  v12 = v11;
  sub_1B21117FC();
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v19[-v15];
  v23 = 0;
  (*(v6 + 16))(v9, v1, v4, v14);
  v20 = v2;
  v21 = &v23;
  v22 = v1;
  sub_1B22527B0();
  sub_1B2252770();
  if (v23)
  {
    v17 = *(v12 + 8);

    v17(v16, v10);
    sub_1B21AEC48();
  }

  else
  {
    result = sub_1B2252EC0();
    __break(1u);
  }

  return result;
}

uint64_t sub_1B21AE55C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v46 = a2;
  sub_1B2161A20(qword_1EB7A0F98, &unk_1B22595B0);
  v7 = sub_1B2252760();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v41 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v38 - v11;
  v45 = type metadata accessor for AnyDatabaseCancellable();
  v13 = a4;
  v39 = a4;
  v16 = (a3 + *(type metadata accessor for AsyncValueObservation(0, a4, v14, v15) + 28));
  v17 = *v16;
  v42 = v16[1];
  v43 = v17;
  v40 = *(v8 + 16);
  v18 = a1;
  v44 = a1;
  v40(v12, a1, v7);
  v19 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v13;
  v38 = *(v8 + 32);
  v38(v20 + v19, v12, v7);
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = v41;
  v40(v41, v18, v7);
  v23 = (v19 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  v25 = v38;
  v26 = v39;
  *(v24 + 16) = v39;
  v25(v24 + v19, v22, v7);
  *(v24 + v23) = v21;

  v43(v47, sub_1B21B24D0, v20, sub_1B21B2574, v24);

  v27 = v48;
  v28 = v49;
  v29 = sub_1B21A1628(v47, v48);
  v30 = MEMORY[0x1EEE9AC00](v29);
  v32 = &v38 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v33 + 16))(v32, v30);
  v34 = sub_1B21E9F54(v32, v45, v27, v28);
  sub_1B2113208(v47);
  *v46 = v34;

  v35 = swift_allocObject();
  swift_weakInit();

  v36 = swift_allocObject();
  *(v36 + 16) = v26;
  *(v36 + 24) = v35;
  return sub_1B2252720();
}

uint64_t sub_1B21AE94C(void *a1)
{
  v1 = a1;
  sub_1B2161A20(qword_1EB7A0F98, &unk_1B22595B0);
  sub_1B2252760();
  return sub_1B2252750();
}

uint64_t sub_1B21AE9B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a3;
  v6 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B2161A20(qword_1EB7A0F98, &unk_1B22595B0);
  v9 = sub_1B2252710();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v15 - v12;
  (*(v6 + 16))(v8, a1, a4, v11);
  sub_1B2252760();
  sub_1B2252740();
  if ((*(v10 + 88))(v13, v9) != *MEMORY[0x1E69E8768])
  {
    return (*(v10 + 8))(v13, v9);
  }

  (*(v10 + 8))(v13, v9);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B21E9EB8();
  }

  return result;
}

uint64_t sub_1B21AEBF0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B21E9EB8();
  }

  return result;
}

uint64_t sub_1B21AEC48()
{
  sub_1B2111A0C();
  v2 = v1;
  sub_1B2161A20(qword_1EB7A0F98, &unk_1B22595B0);
  sub_1B211510C();
  sub_1B2252790();
  sub_1B21118A0();
  v3 = sub_1B2111F44();
  v4(v3);
  v5 = sub_1B211510C();
  result = type metadata accessor for AsyncValueObservation.Iterator(v5, v6, v7, v8);
  *(v2 + *(result + 28)) = v0;
  return result;
}

uint64_t AsyncValueObservation.Iterator.next()(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  sub_1B2161A20(qword_1EB7A0F98, &unk_1B22595B0);
  sub_1B211510C();
  v4 = sub_1B2252790();
  *v3 = v1;
  v3[1] = sub_1B21AEDAC;

  return MEMORY[0x1EEE6DB98](a1, v4);
}

uint64_t sub_1B21AEDAC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1B21AEEA0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B21B2754;

  return AsyncValueObservation.Iterator.next()(a1);
}

uint64_t sub_1B21AEF48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = swift_task_alloc();
  *(v6 + 32) = v12;
  *v12 = v6;
  v12[1] = sub_1B21AF01C;

  return MEMORY[0x1EEE6D8E0](a1, a2, a3, a5, a6, v6 + 16);
}

uint64_t sub_1B21AF01C()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    **(v2 + 24) = *(v2 + 16);
  }

  v4 = *(v3 + 8);

  return v4();
}

uint64_t sub_1B21AF12C(uint64_t a1)
{
  AsyncValueObservation.makeAsyncIterator()(a1);
  v3 = *(*(a1 - 8) + 8);

  return v3(v1, a1);
}

uint64_t ValueObservation.publisher(in:scheduling:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  memcpy(__dst, v5, sizeof(__dst));
  v11 = swift_allocObject();
  *(v11 + 16) = *(a4 + 16);
  memcpy((v11 + 32), v5, 0x70uLL);
  *(v11 + 144) = a1;
  *(v11 + 152) = a2;
  *(v11 + 160) = a3;
  *a5 = sub_1B21B2758;
  a5[1] = v11;
  sub_1B2111808();
  (*(v12 + 16))(&v14, __dst, a4);
  swift_unknownObjectRetain();
}

uint64_t sub_1B21AF278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *__src, int a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  memcpy(v20, __src, sizeof(v20));
  type metadata accessor for ValueObservation(0, a9, a10, v15);
  v16 = sub_1B2111F44();
  return ValueObservation.start(in:scheduling:onError:onChange:)(v16, v17, a8, a1, a2, a3, a4, v18);
}

uint64_t sub_1B21AF328()
{
  if (v0[4])
  {
  }

  if (v0[6])
  {
  }

  if (v0[8])
  {
  }

  if (v0[10])
  {
  }

  if (v0[12])
  {
  }

  if (v0[15] >= 2uLL)
  {
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1B21AF404@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t DatabasePublishers.Value.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v18[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v4;
  v10 = v4[1];
  v14 = _s17ValueSubscriptionCMa(0, v12, v13, v13);
  (*(v7 + 16))(v9, a1, a3);

  v15 = sub_1B21AF570(v11, v10, v9);
  v18[3] = v14;
  v18[4] = swift_getWitnessTable();
  v18[0] = v15;
  sub_1B2251FD0();
  return sub_1B2113208(v18);
}

uint64_t sub_1B21AF5C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  (*(*(a4 - 8) + 32))(a6, a1, a4);
  result = _s17ValueSubscriptionC16WaitingForDemandVMa(0, a4, a5, v11);
  v13 = (a6 + *(result + 36));
  *v13 = a2;
  v13[1] = a3;
  return result;
}

uint64_t sub_1B21AF654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  result = _s17ValueSubscriptionC9ObservingVMa(0, a3, a5, v9);
  *(a4 + *(result + 36)) = a2;
  return result;
}

uint64_t *sub_1B21AF6DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  v9 = *(*v4 + 80);
  v10 = *(*v4 + 88);
  v11 = _s17ValueSubscriptionC5StateOMa(0, v9, v10, a4);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v17 - v13;
  v4[6] = 0;
  *(v4 + 1) = 0u;
  *(v4 + 2) = 0u;
  v15 = *(v8 + 112);
  *(v4 + v15) = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
  sub_1B21AF5C4(a3, a1, a2, v9, v10, v14);
  swift_storeEnumTagMultiPayload();
  (*(v12 + 32))(v4 + *(*v4 + 104), v14, v11);
  return v4;
}

void sub_1B21AF86C(uint64_t a1)
{
  v2 = *(v1 + *(*v1 + 112));
  sub_1B21E8980(sub_1B2193480, 0, sub_1B21B249C);
}

uint64_t sub_1B21AF8F8(char *a1, void (*a2)(char *, char *, uint64_t), uint64_t a3, uint64_t a4)
{
  v69 = a2;
  v5 = *a1;
  v6 = *(*a1 + 80);
  v7 = *(*a1 + 88);
  v67 = _s17ValueSubscriptionC9ObservingVMa(0, v6, v7, a4);
  v66 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v68 = &v64 - v8;
  v65 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v64 = &v64 - v10;
  v71 = _s17ValueSubscriptionC16WaitingForDemandVMa(0, v6, v7, v11);
  v72 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v13 = &v64 - v12;
  v15 = _s17ValueSubscriptionC5StateOMa(0, v6, v7, v14);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v70 = &v64 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v64 - v22;
  v24 = *(v5 + 104);
  swift_beginAccess();
  v73 = v16;
  v74 = a1;
  v26 = *(v16 + 16);
  v25 = v16 + 16;
  v75 = v24;
  v27 = &a1[v24];
  v28 = v26;
  v26(v23, v27, v15);
  v76 = v15;
  result = swift_getEnumCaseMultiPayload();
  if (!result)
  {
    v67 = v25;
    v68 = v18;
    v41 = v72;
    v42 = v71;
    (*(v72 + 32))(v13, v23, v71);
    sub_1B2252030();
    v43 = v69;
    result = sub_1B2252010();
    v44 = v74;
    v45 = v64;
    if ((result & 1) == 0)
    {
      if (v43 < 0)
      {
        __break(1u);
        goto LABEL_24;
      }

      if (!v43)
      {
        return (*(v41 + 8))(v13, v42);
      }
    }

    (*(v65 + 16))(v64, v13, v6);
    v46 = v70;
    sub_1B21AF654(v45, v43, v6, v70, v7);
    v47 = v76;
    swift_storeEnumTagMultiPayload();
    v48 = v75;
    swift_beginAccess();
    v69 = v28;
    v49 = v73;
    (*(v73 + 40))(&v44[v48], v46, v47);
    swift_endAccess();
    v66 = *&v13[*(v42 + 36)];
    v70 = v13;
    v50 = swift_allocObject();
    swift_weakInit();
    v51 = swift_allocObject();
    v51[2] = v6;
    v51[3] = v7;
    v51[4] = v50;
    v52 = swift_allocObject();
    swift_weakInit();
    v53 = swift_allocObject();
    v53[2] = v6;
    v53[3] = v7;
    v53[4] = v52;

    (v66)(v78, sub_1B21B24B8, v51, sub_1B21B24C4, v53);
    v54 = v76;

    v55 = v68;
    v69(v68, &v44[v75], v54);
    result = swift_getEnumCaseMultiPayload();
    if (result == 1)
    {
      sub_1B211EE68(v78, v77);
      swift_beginAccess();
      sub_1B21B2294(v77, (v44 + 16));
      swift_endAccess();
      (*(v72 + 8))(v70, v71);
      (*(v49 + 8))(v55, v54);
    }

    else
    {
      v56 = v70;
      v57 = v71;
      v58 = v72;
      if (result != 2)
      {
LABEL_26:
        __break(1u);
        return result;
      }

      v59 = v79;
      v60 = v80;
      sub_1B21139A0(v78, v79);
      (*(v60 + 8))(v59, v60);
      (*(v58 + 8))(v56, v57);
    }

    return sub_1B2113208(v78);
  }

  if (result != 1)
  {
    return result;
  }

  v30 = *(v66 + 32);
  v31 = v68;
  v32 = v67;
  v30(v68, v23, v67);
  v33 = *(v32 + 36);
  v34 = *&v31[v33];
  sub_1B2252030();
  v35 = sub_1B2252010();
  v37 = v73;
  v36 = v74;
  if ((v35 & 1) == 0)
  {
    sub_1B2252030();
    v38 = sub_1B2252010();
    v39 = sub_1B2252030();
    if (v38)
    {
LABEL_20:
      *&v31[v33] = v39;
      goto LABEL_21;
    }

    v40 = v69;
    result = sub_1B2252010();
    if (result)
    {
LABEL_9:
      v39 = sub_1B2252030();
      v31 = v68;
      goto LABEL_20;
    }

    if (((v34 | v40) & 0x8000000000000000) == 0)
    {
      v39 = v40 + v34;
      if (!__OFADD__(v34, v40))
      {
        v31 = v68;
        if ((v39 & 0x8000000000000000) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_25;
      }

      goto LABEL_9;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

LABEL_21:
  v61 = v70;
  v30(v70, v31, v32);
  v62 = v76;
  swift_storeEnumTagMultiPayload();
  v63 = v75;
  swift_beginAccess();
  (*(v37 + 40))(&v36[v63], v61, v62);
  return swift_endAccess();
}

uint64_t sub_1B21B00E4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B21B0A80(a1);
  }

  return result;
}

uint64_t sub_1B21B0144(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B21B04A8(a1);
  }

  return result;
}

void sub_1B21B01A4()
{
  v1 = *(v0 + *(*v0 + 112));
  sub_1B22189C4(sub_1B2193D34, 0);
}

double sub_1B21B0238(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = _s17ValueSubscriptionC5StateOMa(0, *(*a2 + 80), *(*a2 + 88), a4);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v15 - v8 + 16;
  sub_1B2112F4C(*a1, a1[1]);
  swift_beginAccess();
  sub_1B21B23CC(a2 + 16, v17, &qword_1EB7A2150, &unk_1B225AD60);
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  swift_beginAccess();
  sub_1B21B2294(v15, a2 + 16);
  swift_endAccess();
  swift_storeEnumTagMultiPayload();
  v10 = *(*a2 + 104);
  swift_beginAccess();
  (*(v7 + 40))(a2 + v10, v9, v6);
  swift_endAccess();
  v11 = swift_allocObject();
  result = *v17;
  v13 = v17[1];
  *(v11 + 16) = v17[0];
  *(v11 + 32) = v13;
  *(v11 + 48) = v18;
  *a1 = sub_1B21B242C;
  a1[1] = v11;
  return result;
}

uint64_t sub_1B21B0418(uint64_t a1)
{
  sub_1B21B23CC(a1, v4, &qword_1EB7A2150, &unk_1B225AD60);
  v1 = v5;
  if (!v5)
  {
    return sub_1B21B2434(v4);
  }

  v2 = v6;
  sub_1B21139A0(v4, v5);
  (*(v2 + 8))(v1, v2);
  return sub_1B2113208(v4);
}

void sub_1B21B04A8(uint64_t a1)
{
  v2 = *(v1 + *(*v1 + 112));
  sub_1B21E8980(sub_1B2193F34, 0, sub_1B21B23A8);
}

uint64_t sub_1B21B0534(uint64_t *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v57 = a2;
  v5 = *a1;
  v6 = *(*a1 + 80);
  v7 = *(*a1 + 88);
  v8 = _s17ValueSubscriptionC5StateOMa(0, v6, v7, a4);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v53 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v58 = &v47 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v47 - v14;
  v55 = v7;
  v56 = v6;
  v17 = _s17ValueSubscriptionC9ObservingVMa(0, v6, v7, v16);
  v61 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v54 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v47 - v20;
  v22 = v5;
  v23 = v9;
  v24 = *(v22 + 104);
  swift_beginAccess();
  v25 = *(v9 + 16);
  v59 = a1;
  v60 = v24;
  v25(v15, a1 + v24, v8);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(v23 + 8))(v15, v8);
  }

  v50 = v23;
  v51 = v8;
  v26 = v61;
  v27 = v61 + 32;
  v28 = *(v61 + 32);
  v28(v21, v15, v17);
  v52 = v17;
  v29 = *&v21[*(v17 + 36)];
  v30 = sub_1B2252020();
  sub_1B2252030();
  if (sub_1B2252010())
  {
    sub_1B2252030();
    if (sub_1B2252010())
    {
      return (*(v26 + 8))(v21, v52);
    }
  }

  sub_1B2252030();
  if ((sub_1B2252010() & 1) == 0)
  {
    sub_1B2252030();
    if ((sub_1B2252010() & 1) != 0 || v30 >= v29)
    {
      return (*(v26 + 8))(v21, v52);
    }
  }

  v48 = v28;
  v49 = v27;
  v31 = v21;
  v32 = sub_1B2251FE0();
  v33 = v59;
  v34 = v58;
  v35 = v51;
  v25(v58, v59 + v60, v51);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v26 + 8))(v31, v52);
    return (*(v50 + 8))(v34, v35);
  }

  v57 = v31;
  v36 = v54;
  v37 = v52;
  v48(v54, v34, v52);
  v38 = *(v37 + 36);
  v39 = *&v36[v38];
  sub_1B2252030();
  if ((sub_1B2252010() & 1) == 0)
  {
    sub_1B2252030();
    v40 = sub_1B2252010();
    v41 = sub_1B2252030();
    if ((v40 & 1) == 0)
    {
      result = sub_1B2252010();
      if (result)
      {
        goto LABEL_14;
      }

      if ((v39 | v32) < 0)
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      v41 = v39 + v32;
      if (__OFADD__(v39, v32))
      {
LABEL_14:
        v41 = sub_1B2252030();
      }

      else if (v41 < 0)
      {
LABEL_33:
        __break(1u);
        return result;
      }
    }

    *&v36[v38] = v41;
    v39 = v41;
  }

  v43 = v50;
  sub_1B2252030();
  if ((sub_1B2252010() & 1) == 0)
  {
    sub_1B2252030();
    if (sub_1B2252010())
    {
      v44 = sub_1B2252030();
      (*(v61 + 8))(v57, v37);
LABEL_27:
      *&v36[v38] = v44;
      goto LABEL_28;
    }

    result = (*(v61 + 8))(v57, v37);
    if (v39 < 0)
    {
      __break(1u);
    }

    else if (v39)
    {
      v44 = v39 - 1;
      goto LABEL_27;
    }

    __break(1u);
    goto LABEL_32;
  }

  (*(v61 + 8))(v57, v37);
LABEL_28:
  v45 = v53;
  v48(v53, v36, v37);
  swift_storeEnumTagMultiPayload();
  v46 = v60;
  swift_beginAccess();
  (*(v43 + 40))(v33 + v46, v45, v35);
  return swift_endAccess();
}

void sub_1B21B0A80(uint64_t a1)
{
  v2 = *(v1 + *(*v1 + 112));
  sub_1B22189C4(sub_1B21B0B00, 0);
}

id sub_1B21B0B1C(uint64_t *a1, char *a2, void *a3, uint64_t a4)
{
  v37 = a1;
  v38 = a3;
  v5 = *a2;
  v6 = *(*a2 + 80);
  v7 = *(*a2 + 88);
  v8 = _s17ValueSubscriptionC5StateOMa(0, v6, v7, a4);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v34 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - v12;
  v36 = v7;
  v15 = _s17ValueSubscriptionC9ObservingVMa(0, v6, v7, v14);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v35 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v32 - v19;
  v21 = *(v5 + 104);
  swift_beginAccess();
  (*(v9 + 16))(v13, &a2[v21], v8);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(v9 + 8))(v13, v8);
  }

  v33 = v6;
  v22 = v37;
  sub_1B2112F4C(*v37, v37[1]);
  v32 = v15;
  v23 = *(v16 + 32);
  v23(v20, v13, v15);
  v40 = 0;
  memset(v39, 0, sizeof(v39));
  swift_beginAccess();
  sub_1B21B2294(v39, (a2 + 16));
  swift_endAccess();
  v24 = v34;
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  (*(v9 + 40))(&a2[v21], v24, v8);
  swift_endAccess();
  v25 = v35;
  v26 = v32;
  v23(v35, v20, v32);
  v27 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v28 = swift_allocObject();
  v29 = v36;
  *(v28 + 16) = v33;
  *(v28 + 24) = v29;
  v23((v28 + v27), v25, v26);
  v30 = v38;
  *(v28 + ((v17 + v27 + 7) & 0xFFFFFFFFFFFFFFF8)) = v38;
  *v22 = sub_1B21B2304;
  v22[1] = v28;
  return v30;
}

uint64_t *sub_1B21B0ED8()
{
  v1 = *v0;
  sub_1B21B2434((v0 + 2));
  v2 = *(*v0 + 104);
  v4 = _s17ValueSubscriptionC5StateOMa(0, *(v1 + 80), *(v1 + 88), v3);
  (*(*(v4 - 8) + 8))(v0 + v2, v4);

  return v0;
}

uint64_t sub_1B21B0F9C()
{
  v0 = sub_1B21B0ED8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t static ValueObservation<>.trackingConstantRegion<A>(_:)()
{
  sub_1B2111A0C();
  v4 = v3;
  sub_1B2117C44();
  v5 = swift_allocObject();
  v5[2] = v0;
  v5[3] = v2;
  v5[4] = v1;
  v6 = sub_1B211510C();
  v10 = type metadata accessor for ValueReducers.Fetch(v6, v7, v8, v9);
  sub_1B2117460(v10);
  sub_1B21221E0();
  v4[11] = 0;
  v4[12] = sub_1B21B10C4;
  v4[13] = v5;
}

uint64_t static ValueObservation<>.tracking<A>(regions:fetch:)()
{
  sub_1B211437C();
  sub_1B2117C44();
  v5 = swift_allocObject();
  v5[2] = v0;
  v5[3] = v2;
  v5[4] = v1;
  v6 = sub_1B211510C();
  v10 = type metadata accessor for ValueReducers.Fetch(v6, v7, v8, v9);
  sub_1B2117460(v10);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0;
  *(v4 + 88) = v3;
  *(v4 + 96) = sub_1B21B275C;
  *(v4 + 104) = v5;
}

uint64_t static ValueObservation<>.tracking<A>(_:)()
{
  sub_1B2111A0C();
  v4 = v3;
  sub_1B2117C44();
  v5 = swift_allocObject();
  v5[2] = v0;
  v5[3] = v2;
  v5[4] = v1;
  v6 = sub_1B211510C();
  v10 = type metadata accessor for ValueReducers.Fetch(v6, v7, v8, v9);
  sub_1B2117460(v10);
  sub_1B21221E0();
  v4[11] = 1;
  v4[12] = sub_1B21B275C;
  v4[13] = v5;
}

uint64_t sub_1B21B1224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B21B1268(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 96);
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

uint64_t sub_1B21B12A8(uint64_t result, int a2, int a3)
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
      *(result + 96) = (a2 - 1);
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

uint64_t sub_1B21B139C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, void), uint64_t (*a5)(uint64_t))
{
  v7 = *(a1 + 16);
  v8 = sub_1B2161A20(qword_1EB7A0F98, &unk_1B22595B0);
  result = a4(319, v7, v8, MEMORY[0x1E69E7288]);
  if (v10 <= 0x3F)
  {
    result = a5(319);
    if (v11 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B21B1474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, uint64_t, void))
{
  v8 = *(a3 + 16);
  v9 = sub_1B2161A20(qword_1EB7A0F98, &unk_1B22595B0);
  v10 = a4(0, v8, v9, MEMORY[0x1E69E7288]);
  if (*(*(v10 - 8) + 84) == a2)
  {

    return sub_1B2122A98(a1, a2, v10);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1B21B1570(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t, void))
{
  v10 = *(a4 + 16);
  v11 = sub_1B2161A20(qword_1EB7A0F98, &unk_1B22595B0);
  result = a5(0, v10, v11, MEMORY[0x1E69E7288]);
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1B21117B4(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B21B166C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B21B16C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = _s17ValueSubscriptionC5StateOMa(319, *(a1 + 80), *(a1 + 88), a4);
  if (v5 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B21B1784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  result = _s17ValueSubscriptionC16WaitingForDemandVMa(319, v4, v5, a4);
  if (v8 <= 0x3F)
  {
    result = _s17ValueSubscriptionC9ObservingVMa(319, v4, v5, v7);
    if (v9 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1B21B1814(unint64_t result, unsigned int a2, uint64_t a3)
{
  v3 = (*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v3 + 16;
  v5 = v3 + 8;
  if (v5 <= v4)
  {
    v5 = v4;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
LABEL_25:
    v13 = *(result + v5);
    if (v13 >= 3)
    {
      return (v13 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v6 = v5 | 1;
    if ((v5 | 1) <= 3)
    {
      v7 = ((a2 + 2) >> 8) + 1;
    }

    else
    {
      v7 = 2;
    }

    if (v7 >= 0x10000)
    {
      v8 = 4;
    }

    else
    {
      v8 = 2;
    }

    if (v7 < 0x100)
    {
      v8 = 1;
    }

    if (v7 >= 2)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    switch(v9)
    {
      case 1:
        v10 = *(result + v6);
        if (!*(result + v6))
        {
          goto LABEL_25;
        }

        goto LABEL_21;
      case 2:
        v10 = *(result + v6);
        if (!*(result + v6))
        {
          goto LABEL_25;
        }

        goto LABEL_21;
      case 3:
        __break(1u);
        return result;
      case 4:
        v10 = *(result + v6);
        if (!v10)
        {
          goto LABEL_25;
        }

LABEL_21:
        v11 = (v10 - 1) << (8 * v6);
        if (v6 <= 3)
        {
          v12 = *result;
        }

        else
        {
          v11 = 0;
          v12 = *result;
        }

        result = (v12 | v11) + 254;
        break;
      default:
        goto LABEL_25;
    }
  }

  return result;
}

void sub_1B21B1910(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = (*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v5 + 16;
  v7 = v5 + 8;
  if (v7 <= v6)
  {
    v7 = v6;
  }

  v8 = v7 | 1;
  if (a3 < 0xFE)
  {
    v11 = 0;
  }

  else
  {
    if (v8 <= 3)
    {
      v9 = ((a3 + 2) >> 8) + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  if (a2 > 0xFD)
  {
    v12 = a2 - 254;
    v13 = (a2 - 254) >> 8;
    bzero(a1, v7 | 1);
    if (v8 <= 3)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 1;
    }

    if (v8 > 3)
    {
      *a1 = v12;
    }

    else
    {
      *a1 = v12;
    }

    switch(v11)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
LABEL_36:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v11)
    {
      case 1:
        a1[v8] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_30;
      case 2:
        *&a1[v8] = 0;
        goto LABEL_29;
      case 3:
        goto LABEL_36;
      case 4:
        *&a1[v8] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_30;
      default:
LABEL_29:
        if (a2)
        {
LABEL_30:
          a1[v7] = -a2;
        }

        break;
    }
  }
}

uint64_t sub_1B21B1AA8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_DWORD *sub_1B21B1B20(_DWORD *result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 < a2)
  {
    v6 = ((*(*(v4 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v7 = a2 - v5;
    v8 = v6 & 0xFFFFFFF8;
    if ((v6 & 0xFFFFFFF8) != 0)
    {
      v9 = 2;
    }

    else
    {
      v9 = v7 + 1;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    switch(v11)
    {
      case 1:
        v12 = *(result + v6);
        if (v12)
        {
          goto LABEL_18;
        }

        goto LABEL_22;
      case 2:
        v12 = *(result + v6);
        if (v12)
        {
          goto LABEL_18;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v12 = *(result + v6);
        if (!v12)
        {
          goto LABEL_22;
        }

LABEL_18:
        v13 = v12 - 1;
        if (v8)
        {
          v13 = 0;
          LODWORD(v8) = *result;
        }

        return (v5 + (v8 | v13) + 1);
      default:
LABEL_22:
        if (v5)
        {
          return sub_1B2122A98(result, v5, v4);
        }

        return 0;
    }
  }

  return sub_1B2122A98(result, v5, v4);
}

void sub_1B21B1C24(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = ((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v12 = 0;
  }

  else
  {
    v9 = a3 - v7;
    if (((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  if (a2 <= v7)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 3:
LABEL_34:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_28;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:

          sub_1B21117B4(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    if (((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v13 = a2 - v7;
    }

    else
    {
      v13 = 1;
    }

    if (((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v14 = ~v7 + a2;
      bzero(a1, v8);
      *a1 = v14;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v13;
        break;
      case 2:
        *&a1[v8] = v13;
        break;
      case 3:
        goto LABEL_34;
      case 4:
        *&a1[v8] = v13;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1B21B1DBC(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return sub_1B2122A98(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1B21B1EF8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
              v17[1] = 0;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            sub_1B21117B4(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1B21B20C8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1B21B211C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1B21B2188(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 80))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B21B21DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1B21B2294(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B21619D8(&qword_1EB7A2150, &unk_1B225AD60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B21B2304()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = sub_1B211510C();
  v6 = _s17ValueSubscriptionC9ObservingVMa(v3, v4, v2, v5);
  sub_1B211208C(v6);
  v8 = v7;
  v10 = v9;
  v11 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v12 = *(v0 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1B21B0E9C(v0 + v11, v12, v1, v2);
}

uint64_t sub_1B21B23CC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1B21619D8(a3, a4);
  sub_1B21118A0();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1B21B2434(uint64_t a1)
{
  v2 = sub_1B21619D8(&qword_1EB7A2150, &unk_1B225AD60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B21B24D0(void *a1)
{
  sub_1B2161A20(qword_1EB7A0F98, &unk_1B22595B0);
  sub_1B2252760();

  return sub_1B21AE94C(a1);
}

uint64_t sub_1B21B2574(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_1B2161A20(qword_1EB7A0F98, &unk_1B22595B0);
  v4 = sub_1B2252760();
  sub_1B211208C(v4);
  v6 = v5;
  v8 = v7;
  v9 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v10 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1B21AE9B8(a1, v1 + v9, v10, v3);
}

uint64_t sub_1B21B263C(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t (*a4)(uint64_t *))
{
  v6 = a1;
  a2(&v6);
  return a4(&v6);
}

uint64_t sub_1B21B26A8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_1B21B2780(void *a1)
{
  v1 = a1[3];
  v2 = a1[4] >> 1;
  v3 = v2 - v1;
  if (__OFSUB__(v2, v1))
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v30 = a1[4] >> 1;
  v31 = a1[3];
  v4 = *a1;
  v28 = *(*a1 + 16);
  v29 = a1[2];
  if (v3 >= v28)
  {
    v5 = *(*a1 + 16);
  }

  else
  {
    v5 = v2 - v1;
  }

  v33 = MEMORY[0x1E69E7CC0];
  sub_1B216EF50(0, v5 & ~(v5 >> 63), 0);
  if (v3 < 0)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    result = sub_1B2252EC0();
    __break(1u);
    return result;
  }

  v6 = v5;
  v32 = v4;
  if (v5)
  {
    v7 = (v4 + 32);

    swift_unknownObjectRetain();
    v9 = v28;
    v8 = v29;
    v10 = v28;
    v11 = v5;
    v13 = v30;
    v12 = v31;
    v14 = v31;
    while (v10)
    {
      if (v13 == v14)
      {
        goto LABEL_35;
      }

      if (v14 >= v13)
      {
        goto LABEL_36;
      }

      v15 = *v7;
      v16 = *(v8 + 8 * v14);
      if (v16 < *v7)
      {
        goto LABEL_37;
      }

      if (v15 < 0)
      {
        goto LABEL_44;
      }

      v18 = *(v33 + 16);
      v17 = *(v33 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1B216EF50(v17 > 1, v18 + 1, 1);
        v9 = v28;
        v8 = v29;
        v13 = v30;
        v12 = v31;
      }

      *(v33 + 16) = v18 + 1;
      v19 = v33 + 16 * v18;
      *(v19 + 32) = v15;
      *(v19 + 40) = v16;
      ++v7;
      --v10;
      ++v14;
      if (!--v11)
      {
        goto LABEL_18;
      }
    }

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
    goto LABEL_42;
  }

  swift_unknownObjectRetain();
  v13 = v30;
  v12 = v31;
  v14 = v31;
  v9 = v28;
  v8 = v29;
LABEL_18:
  for (i = v14; v9 != v6; ++i)
  {
    if (v6 >= v9)
    {
      goto LABEL_38;
    }

    if (__OFADD__(v6, 1))
    {
      goto LABEL_39;
    }

    if (v13 == i)
    {
      break;
    }

    if (v14 < v12 || i >= v13)
    {
      goto LABEL_40;
    }

    v22 = *(v32 + 32 + 8 * v6);
    v23 = *(v8 + 8 * i);
    if (v23 < v22)
    {
      goto LABEL_41;
    }

    if (v22 < 0)
    {
      goto LABEL_44;
    }

    v25 = *(v33 + 16);
    v24 = *(v33 + 24);
    if (v25 >= v24 >> 1)
    {
      sub_1B216EF50(v24 > 1, v25 + 1, 1);
      v9 = v28;
      v8 = v29;
      v13 = v30;
      v12 = v31;
    }

    *(v33 + 16) = v25 + 1;
    v26 = v33 + 16 * v25;
    *(v26 + 32) = v22;
    *(v26 + 40) = v23;
    ++v6;
  }

  swift_unknownObjectRelease();

  return v33;
}

uint64_t sub_1B21B2A34(uint64_t a1)
{
  if (*(a1 + 16))
  {
  }

  return sub_1B2112FD0();
}

double sub_1B21B2A90@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_1B214D38C(a1 + 40 * v2 - 8, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

unint64_t sub_1B21B2AD0(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1B21B2B3C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(*(a4 + 8) + 8))(v11, a2, a3);
  if (v5)
  {
    return v4;
  }

  sub_1B21139A0(v11, v11[3]);
  v7 = sub_1B211209C();
  result = v8(v7);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v10 + 16) > a1)
  {
    v4 = *(v10 + 24 * a1 + 32);

    sub_1B2113208(v11);
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t splittingRowAdapters(columnCounts:)(uint64_t a1)
{
  v20[19] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1B21619D8(&qword_1EB7A0F48, &unk_1B2254660);
    inited = swift_initStackObject();
    v4 = 0;
    *(inited + 16) = xmmword_1B22546B0;
    *(inited + 32) = 0;
    while (1)
    {
      v5 = v4 + 1;
      if (v1 == v4)
      {
        break;
      }

      v6 = *(a1 + 32 + 8 * v4);
      v7 = *(inited + 8 * v4 + 32);
      v8 = v7 + v6;
      if (__OFADD__(v7, v6))
      {
        __break(1u);
      }

      v9 = *(inited + 24);
      if (v5 >= v9 >> 1)
      {
        sub_1B21628F8(v9 > 1, v4 + 2, 1, inited);
        inited = v10;
      }

      *(inited + 16) = v4 + 2;
      *(inited + 8 * v4++ + 40) = v8;
    }

    v20[0] = inited;
    v20[1] = sub_1B21B2AD0(1uLL, v5, inited);
    v20[2] = v11;
    v20[3] = v12;
    v20[4] = v13;

    v14 = sub_1B21B2780(v20);
    swift_unknownObjectRelease();

    v15 = *(inited + 16);
    if (v15)
    {
      v16 = *(inited + 8 * v15 + 24);

      if ((v16 & 0x8000000000000000) == 0)
      {
        v17 = sub_1B21B317C(v14);

        sub_1B21619D8(&qword_1EB7A0F38, &unk_1B2254650);
        v18 = swift_initStackObject();
        *(v18 + 16) = xmmword_1B22546B0;
        *(v18 + 56) = &type metadata for SuffixRowAdapter;
        *(v18 + 64) = &protocol witness table for SuffixRowAdapter;
        *(v18 + 32) = v16;
        sub_1B216CF8C(v18);
        return v17;
      }
    }

    else
    {
      __break(1u);
    }

    sub_1B2111608();
    result = sub_1B2117488("Fatal error");
    __break(1u);
  }

  else
  {
    sub_1B21619D8(&qword_1EB7A0F38, &unk_1B2254650);
    result = swift_allocObject();
    *(result + 16) = xmmword_1B22546B0;
    *(result + 56) = &type metadata for SuffixRowAdapter;
    *(result + 64) = &protocol witness table for SuffixRowAdapter;
    *(result + 32) = 0;
  }

  return result;
}

GRDBInternal::SuffixRowAdapter __swiftcall SuffixRowAdapter.init(fromIndex:)(GRDBInternal::SuffixRowAdapter fromIndex)
{
  if (fromIndex.index < 0)
  {
    sub_1B2111608();
    fromIndex.index = sub_1B2117488("Fatal error");
    __break(1u);
  }

  else
  {
    v1->index = fromIndex.index;
  }

  return fromIndex;
}

uint64_t RangeRowAdapter.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (result < 0)
  {
    sub_1B2111608();
    result = sub_1B2117488("Fatal error");
    __break(1u);
  }

  else
  {
    *a3 = result;
    a3[1] = a2;
  }

  return result;
}

{
  if ((result & 0x8000000000000000) == 0)
  {
    v3 = a2 + 1;
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else if (v3 >= result)
    {
      *a3 = result;
      a3[1] = v3;
      return result;
    }

    __break(1u);
  }

  sub_1B2111608();
  result = sub_1B2117488("Fatal error");
  __break(1u);
  return result;
}

uint64_t sub_1B21B2EFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v12 = MEMORY[0x1E69E7CC0];
    sub_1B216EC58(0, v1, 0);
    v2 = v12;
    v4 = a1 + 48;
    do
    {

      sub_1B21619D8(&qword_1EB7A2178, &qword_1B225B0C8);
      sub_1B21619D8(&qword_1EB7A11B0, &qword_1B22549C0);
      swift_dynamicCast();
      v5 = v10;
      v7 = *(v12 + 16);
      v6 = *(v12 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1B216EC58(v6 > 1, v7 + 1, 1);
        v5 = v10;
      }

      *(v12 + 16) = v7 + 1;
      v8 = v12 + 24 * v7;
      *(v8 + 32) = v5;
      *(v8 + 48) = v11;
      v4 += 24;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1B21B3044(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v12 = MEMORY[0x1E69E7CC0];
    sub_1B216EEF0(0, v1, 0);
    v2 = v12;
    v4 = a1 + 48;
    do
    {

      sub_1B21619D8(&qword_1EB7A0F60, &qword_1B2254678);
      sub_1B21619D8(&qword_1EB7A11E0, qword_1B225B0E0);
      swift_dynamicCast();
      v6 = *(v12 + 16);
      v5 = *(v12 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1B216EEF0((v5 > 1), v6 + 1, 1);
      }

      v4 += 24;
      *(v12 + 16) = v6 + 1;
      v7 = v12 + 24 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      *(v7 + 48) = v11;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1B21B317C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1B216EF30(0, v1, 0);
    v2 = v13;
    v4 = (a1 + 32);
    do
    {
      v5 = *v4;
      v13 = v2;
      v7 = *(v2 + 16);
      v6 = *(v2 + 24);
      if (v7 >= v6 >> 1)
      {
        v9 = v5;
        sub_1B216EF30((v6 > 1), v7 + 1, 1);
        v5 = v9;
        v2 = v13;
      }

      v11 = &type metadata for RangeRowAdapter;
      v12 = &protocol witness table for RangeRowAdapter;
      v10 = v5;
      *(v2 + 16) = v7 + 1;
      sub_1B21217FC(&v10, v2 + 40 * v7 + 32);
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1B21B3278@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v14 = MEMORY[0x1E69E7CC0];

  result = sub_1B211E89C(0, 0, 0);
  v4 = 0;
  v5 = *(a1 + 16);
  for (i = a1 + 48; ; i += 24)
  {
    if (v5 == v4)
    {

      result = sub_1B211E40C(v14);
      *a2 = a1;
      a2[1] = result;
      return result;
    }

    if (v4 >= *(a1 + 16))
    {
      break;
    }

    result = sub_1B2252220();
    v7 = result;
    v9 = v8;
    v11 = *(v14 + 16);
    v10 = *(v14 + 24);
    if (v11 >= v10 >> 1)
    {
      result = sub_1B211E89C(v10 > 1, v11 + 1, 1);
    }

    *(v14 + 16) = v11 + 1;
    v12 = (v14 + 24 * v11);
    v12[4] = v7;
    v12[5] = v9;
    v12[6] = v4++;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B21B3390@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  if ((a4 & 1) == 0)
  {
    v8 = a4 >> 1;
LABEL_3:
    sub_1B216E5EC();
    goto LABEL_9;
  }

  sub_1B2253280();
  swift_unknownObjectRetain_n();
  v10 = swift_dynamicCastClass();
  if (!v10)
  {
    swift_unknownObjectRelease();
    v10 = MEMORY[0x1E69E7CC0];
  }

  v11 = *(v10 + 16);

  v8 = a4 >> 1;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11 != (a4 >> 1) - a3)
  {
LABEL_22:
    swift_unknownObjectRelease();
    goto LABEL_3;
  }

  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v22 = MEMORY[0x1E69E7CC0];
    goto LABEL_10;
  }

LABEL_9:
  v22 = v9;
LABEL_10:
  v24 = MEMORY[0x1E69E7CC0];
  sub_1B211E89C(0, 0, 0);
  v12 = 0;
  v13 = a2 + 24 * a3 + 16;
  v14 = a3 - v8;
  while (v14 + v12)
  {
    if (a3 + v12 >= v8)
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    if (__OFADD__(v12, 1))
    {
      goto LABEL_20;
    }

    v15 = a3;
    a2 = sub_1B2252220();
    v17 = v16;
    v19 = *(v24 + 16);
    v18 = *(v24 + 24);
    if (v19 >= v18 >> 1)
    {
      sub_1B211E89C(v18 > 1, v19 + 1, 1);
    }

    *(v24 + 16) = v19 + 1;
    v20 = (v24 + 24 * v19);
    v20[4] = a2;
    v20[5] = v17;
    v20[6] = v12++;
    v13 += 24;
    a3 = v15;
  }

  swift_unknownObjectRelease();
  result = sub_1B211E40C(v24);
  *a5 = v22;
  a5[1] = result;
  return result;
}

uint64_t _LayoutedColumnMapping._mapping.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t _LayoutedColumnMapping._scopes.getter()
{
  sub_1B21619D8(&qword_1EB7A2158, &qword_1B225AD70);

  return sub_1B2252190();
}

Swift::Int_optional __swiftcall _LayoutedColumnMapping._layoutIndex(ofColumn:)(Swift::String ofColumn)
{
  v2 = *(v1 + 8);
  if (*(v2 + 16) && (sub_1B2115C78(), v3 = sub_1B211E590(), (v4 & 1) != 0))
  {
    v5 = 0;
    v6 = *(*(v2 + 56) + 8 * v3);
  }

  else
  {
    sub_1B2115C78();
    v7 = sub_1B2252220();
    v6 = sub_1B212F2CC(v7, v8, v2);
    v5 = v9;
  }

  v10 = v5 & 1;
  v11 = v6;
  result.value = v11;
  result.is_nil = v10;
  return result;
}

uint64_t Statement._layoutColumns.getter()
{
  v0 = Statement.columnNames.getter();
  v1 = sub_1B21B5F04(v0);

  v2 = sub_1B21B2EFC(v1);

  return v2;
}

Swift::Int_optional __swiftcall Statement._layoutIndex(ofColumn:)(Swift::String ofColumn)
{
  sub_1B2252220();
  v1 = sub_1B222F74C();
  v2 = sub_1B211187C();
  v4 = sub_1B212F2CC(v2, v3, v1);
  v6 = v5;

  v7 = v6 & 1;
  v8 = v4;
  result.value = v8;
  result.is_nil = v7;
  return result;
}

uint64_t RowAdapter.addingScopes(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (*(a1 + 16))
  {
    a4[3] = &type metadata for ScopeAdapter;
    a4[4] = &protocol witness table for ScopeAdapter;
    v8 = swift_allocObject();
    *a4 = v8;
    v8[5] = a2;
    v8[6] = a3;
    sub_1B212FF14(v8 + 2);
    sub_1B2111808();
    (*(v9 + 16))();
    v8[7] = a1;
  }

  else
  {
    a4[3] = a2;
    a4[4] = a3;
    sub_1B212FF14(a4);
    sub_1B2111808();
    v12 = *(v11 + 16);

    return v12();
  }
}

uint64_t ScopeAdapter.init(base:scopes:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1B21217FC(a1, a3);
  *(a3 + 40) = a2;
  return result;
}

uint64_t EmptyRowAdapter._layoutedAdapter(from:)@<X0>(void *a1@<X8>)
{
  a1[3] = &type metadata for _LayoutedColumnMapping;
  a1[4] = &protocol witness table for _LayoutedColumnMapping;
  return sub_1B21B3278(MEMORY[0x1E69E7CC0], a1);
}

uint64_t ColumnMapping._layoutedAdapter(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = v3;
  v5 = a2;
  v6 = *v2;
  v7 = *(*v2 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v48 = MEMORY[0x1E69E7CC0];
    sub_1B216EC58(0, v7, 0);
    v8 = v48;
    v10 = sub_1B2131DCC();
    v11 = 0;
    v12 = v6 + 64;
    v41 = v6 + 72;
    v42 = v7;
    v44 = v6 + 64;
    v45 = v6;
    v43 = v9;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(v6 + 32))
    {
      v13 = v10 >> 6;
      if ((*(v12 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_25;
      }

      if (*(v6 + 36) != v9)
      {
        goto LABEL_26;
      }

      v47 = v11;
      v14 = (*(v6 + 48) + 16 * v10);
      v15 = *v14;
      v16 = v14[1];
      v17 = (*(v6 + 56) + 16 * v10);
      v18 = *v17;
      v19 = v17[1];

      v20 = sub_1B21B3C60(v15, v16, v18, v19, a1);
      if (v4)
      {
      }

      v23 = v20;
      v24 = v21;
      v25 = v22;

      v48 = v8;
      v27 = *(v8 + 16);
      v26 = *(v8 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_1B216EC58(v26 > 1, v27 + 1, 1);
        v8 = v48;
      }

      *(v8 + 16) = v27 + 1;
      v28 = (v8 + 24 * v27);
      v28[4] = v23;
      v28[5] = v24;
      v28[6] = v25;
      v6 = v45;
      v29 = 1 << *(v45 + 32);
      if (v10 >= v29)
      {
        goto LABEL_27;
      }

      v12 = v44;
      v30 = *(v44 + 8 * v13);
      if ((v30 & (1 << v10)) == 0)
      {
        goto LABEL_28;
      }

      v9 = v43;
      if (*(v45 + 36) != v43)
      {
        goto LABEL_29;
      }

      v31 = v30 & (-2 << (v10 & 0x3F));
      if (v31)
      {
        v29 = __clz(__rbit64(v31)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v4 = 0;
        v32 = v42;
      }

      else
      {
        v33 = v13 << 6;
        v34 = v13 + 1;
        v32 = v42;
        v35 = (v41 + 8 * v13);
        v4 = 0;
        while (v34 < (v29 + 63) >> 6)
        {
          v37 = *v35++;
          v36 = v37;
          v33 += 64;
          ++v34;
          if (v37)
          {
            v29 = __clz(__rbit64(v36)) + v33;
            break;
          }
        }
      }

      v11 = v47 + 1;
      v10 = v29;
      if (v47 + 1 == v32)
      {
        v5 = a2;
        goto LABEL_22;
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
LABEL_29:
    __break(1u);
  }

  else
  {
LABEL_22:
    v48 = v8;

    sub_1B21B5520(&v48);
    v6 = v4;
    if (!v4)
    {

      v39 = v48;
      v5[3] = &type metadata for _LayoutedColumnMapping;
      v5[4] = &protocol witness table for _LayoutedColumnMapping;
      return sub_1B21B3278(v39, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B21B3C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = a5[3];
  v9 = a5[4];
  sub_1B21139A0(a5, v8);
  v36 = a3;
  v37 = a4;
  v10 = (*(v9 + 16))(a3, a4, v8, v9);
  LOBYTE(v9) = v11;
  v12 = a5[3];
  v13 = a5[4];
  sub_1B21139A0(a5, v12);
  result = (*(v13 + 8))(v12, v13);
  v19 = result;
  if (v9)
  {
    v20 = *(result + 16);
    if (v20)
    {
      v38 = MEMORY[0x1E69E7CC0];
      sub_1B2116B10(0, v20, 0, v15, v16, v17, v18);
      v21 = (v19 + 48);
      do
      {
        v22 = *(v21 - 1);
        v23 = *v21;
        v25 = *(v38 + 16);
        v24 = *(v38 + 24);

        if (v25 >= v24 >> 1)
        {
          sub_1B2116B10(v24 > 1, v25 + 1, 1, v26, v27, v28, v29);
        }

        *(v38 + 16) = v25 + 1;
        v30 = v38 + 16 * v25;
        *(v30 + 32) = v22;
        *(v30 + 40) = v23;
        v21 += 3;
        --v20;
      }

      while (v20);
    }

    sub_1B2252CD0();
    MEMORY[0x1B2741EB0](0xD000000000000022, 0x80000001B226E070);
    MEMORY[0x1B2741EB0](v36, v37);
    MEMORY[0x1B2741EB0](0xD00000000000001ALL, 0x80000001B226E0A0);
    sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
    sub_1B215175C();
    v32 = sub_1B2252250();
    v34 = v33;

    MEMORY[0x1B2741EB0](v32, v34);

    MEMORY[0x1B2741EB0](46, 0xE100000000000000);
    v31 = 0;
    sub_1B21AC298();
    swift_allocError();
    *v35 = 21;
    *(v35 + 8) = 0;
    *(v35 + 16) = 0xE000000000000000;
    *(v35 + 24) = 0u;
    *(v35 + 40) = 0u;
    *(v35 + 56) = 0;
    swift_willThrow();
    return v31;
  }

  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v10 < *(result + 16))
  {
    v31 = *(result + 24 * v10 + 32);

    return v31;
  }

  __break(1u);
  return result;
}

uint64_t SuffixRowAdapter._layoutedAdapter(from:)(void *a1)
{
  v2 = *v1;
  v3 = a1[3];
  v4 = a1[4];
  sub_1B21139A0(a1, v3);
  result = (*(v4 + 8))(v3, v4);
  v6 = *(result + 16);
  if (v6 < v2)
  {
    __break(1u);
  }

  else
  {
    sub_1B21B2AD0(v2, v6, result);
    sub_1B211803C();
    return sub_1B21221F8(&type metadata for _LayoutedColumnMapping);
  }

  return result;
}

uint64_t RangeRowAdapter._layoutedAdapter(from:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = sub_1B21139A0(a1, v1);
  (*(v2 + 8))(v1, v2);
  v4 = sub_1B211209C();
  sub_1B21B2AD0(v4, v5, v3);
  sub_1B211803C();
  return sub_1B21221F8(&type metadata for _LayoutedColumnMapping);
}

uint64_t ScopeAdapter.init(_:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  a2[3] = &type metadata for SuffixRowAdapter;
  a2[4] = &protocol witness table for SuffixRowAdapter;
  *a2 = 0;
  a2[5] = result;
  return result;
}

uint64_t ScopeAdapter._layoutedAdapter(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B212CE0C(v2);
  sub_1B2111A1C();
  sub_1B2117CC0();
  result = v6();
  v8 = v3;
  if (v3)
  {
    return result;
  }

  v48 = a1;
  v44 = a2;
  sub_1B21139A0(v58, v59);
  v9 = sub_1B211209C();
  v11 = v10(v9);
  v12 = v2[5];
  v15 = *(v12 + 64);
  v14 = v12 + 64;
  v13 = v15;
  v16 = 1 << *(v2[5] + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v45 = v2[5];

  v20 = 0;
  v46 = v19;
  v47 = v14;
  if (!v18)
  {
LABEL_6:
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v21 >= v19)
      {
        v18 = 0;
        v54 = 0;
        v52 = 0u;
        v53 = 0u;
        v51 = 0u;
        goto LABEL_11;
      }

      v18 = *(v14 + 8 * v21);
      ++v20;
      if (v18)
      {
        v20 = v21;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    result = sub_1B2253390();
    __break(1u);
    return result;
  }

  while (1)
  {
    v21 = v20;
LABEL_10:
    v22 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v23 = v22 | (v21 << 6);
    v24 = (*(v45 + 48) + 16 * v23);
    v26 = *v24;
    v25 = v24[1];
    sub_1B214D38C(*(v45 + 56) + 40 * v23, v50);
    *&v51 = v26;
    *(&v51 + 1) = v25;
    sub_1B21217FC(v50, &v52);

LABEL_11:
    v55 = v51;
    v56[0] = v52;
    v56[1] = v53;
    v57 = v54;
    v27 = *(&v51 + 1);
    if (!*(&v51 + 1))
    {

      v42 = v59;
      v43 = v60;
      sub_1B21139A0(v58, v59);
      (*(v43 + 8))(&v55, v42, v43);
      *v44 = v55;
      *(v44 + 24) = &unk_1F296EDA0;
      *(v44 + 32) = &off_1F296EE48;
      *(v44 + 16) = v11;
      return sub_1B2113208(v58);
    }

    v28 = v55;
    sub_1B21217FC(v56, &v51);
    v29 = *(&v52 + 1);
    sub_1B212CE0C(&v51);
    sub_1B2111A1C();
    v30(v50, v48, v29);
    if (v8)
    {
      break;
    }

    v61 = 0;
    sub_1B21217FC(v50, v49);
    swift_isUniquelyReferenced_nonNull_native();
    v31 = sub_1B211E590();
    if (__OFADD__(v11[2], (v32 & 1) == 0))
    {
      goto LABEL_29;
    }

    v33 = v31;
    v34 = v32;
    sub_1B21619D8(&qword_1EB7A2160, &qword_1B225AD78);
    if (sub_1B2252E70())
    {
      v35 = sub_1B211E590();
      v14 = v47;
      if ((v34 & 1) != (v36 & 1))
      {
        goto LABEL_31;
      }

      v33 = v35;
      if (v34)
      {
LABEL_20:

        v41 = (v11[7] + 40 * v33);
        sub_1B2113208(v41);
        sub_1B21217FC(v49, v41);
        goto LABEL_21;
      }
    }

    else
    {
      v14 = v47;
      if (v34)
      {
        goto LABEL_20;
      }
    }

    v11[(v33 >> 6) + 8] |= 1 << v33;
    v37 = (v11[6] + 16 * v33);
    *v37 = v28;
    v37[1] = v27;
    sub_1B21217FC(v49, v11[7] + 40 * v33);
    v38 = v11[2];
    v39 = __OFADD__(v38, 1);
    v40 = v38 + 1;
    if (v39)
    {
      goto LABEL_30;
    }

    v11[2] = v40;
LABEL_21:
    sub_1B2113208(&v51);
    v8 = v61;
    v19 = v46;
    if (!v18)
    {
      goto LABEL_6;
    }
  }

  sub_1B2113208(&v51);
  return sub_1B2113208(v58);
}

uint64_t sub_1B21B455C@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_1B21B4598(uint64_t a1)
{
  sub_1B214D38C((v1 + 5), v15);
  sub_1B21139A0(v15, v15[3]);
  v4 = v1[3];
  sub_1B21139A0(v1, v4);
  sub_1B2111A1C();
  v5(v11, a1, v4);
  if (!v2)
  {
    v6 = v12;
    v7 = v13;
    sub_1B21139A0(v11, v12);
    v8 = *(v7 + 8);
    v14[3] = &type metadata for _LayoutedColumnMapping;
    v14[4] = &protocol witness table for _LayoutedColumnMapping;
    v8(v14, v6, v7);
    sub_1B2111A1C();
    sub_1B2117CC0();
    v9();
    sub_1B2113208(v14);
    sub_1B2113208(v11);
  }

  return sub_1B2113208(v15);
}

uint64_t RenameColumnAdapter.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

void RenameColumnAdapter._layoutedAdapter(from:)(void *a1@<X0>, void *a2@<X8>)
{
  v22 = *v2;
  v4 = a1[3];
  v5 = a1[4];
  sub_1B21139A0(a1, v4);
  v6 = (*(v5 + 8))(v4, v5);
  v7 = *(v6 + 16);
  if (v7)
  {
    v19 = a2;
    v23 = MEMORY[0x1E69E7CC0];
    sub_1B216EC58(0, v7, 0);
    v8 = 0;
    v9 = v23;
    v10 = v6 + 48;
    v20 = v7;
    v21 = v6;
    while (v8 < *(v6 + 16))
    {
      v11 = *(v10 - 16);

      v12 = sub_1B2115C78();
      v13 = v22(v12);
      v15 = v14;

      v17 = *(v23 + 16);
      v16 = *(v23 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1B216EC58(v16 > 1, v17 + 1, 1);
      }

      ++v8;
      *(v23 + 16) = v17 + 1;
      v18 = (v23 + 24 * v17);
      v18[4] = v11;
      v18[5] = v13;
      v18[6] = v15;
      v10 += 24;
      v6 = v21;
      if (v20 == v8)
      {

        a2 = v19;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

    v9 = MEMORY[0x1E69E7CC0];
LABEL_9:
    a2[3] = &type metadata for _LayoutedColumnMapping;
    a2[4] = &protocol witness table for _LayoutedColumnMapping;
    sub_1B21B3278(v9, a2);
  }
}

uint64_t sub_1B21B48C0()
{
  sub_1B21139A0((*v0 + 16), *(*v0 + 40));
  v1 = sub_1B211187C();
  return v2(v1) & 1;
}

uint64_t sub_1B21B4918@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *v2;
  v7 = v2[4];
  v8 = v2[5];
  sub_1B21139A0(v2 + 1, v7);
  v9 = *(v8 + 16);

  v10 = v9(v7, v8);
  *a2 = v6;
  a2[1] = v10;
  a2[2] = v4;
  a2[3] = v5;
}

void sub_1B21B49BC(uint64_t a1)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1B21129F8();
    if (!v2 & v1)
    {
      sub_1B211D640();
      v3 = sub_1B2115740();
      sub_1B214D38C(v3, v4);
      sub_1B21139A0(v7, v7[3]);
      v5 = sub_1B211187C();
      v6(v5);
      sub_1B2113208(v7);
      return;
    }
  }

  __break(1u);
}

void sub_1B21B4A4C(uint64_t a1)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1B21129F8();
    if (!v2 & v1)
    {
      sub_1B211D640();
      v4 = *(v3 + 32);
      v5 = sub_1B2115740();
      sub_1B214D38C(v5, v6);
      v7 = v10;
      v8 = v11;
      sub_1B21139A0(v9, v10);
      (*(v8 + 48))(v4, v7, v8);
      sub_1B2113208(v9);
      return;
    }
  }

  __break(1u);
}

void sub_1B21B4AE8(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v25 = a4;
  v11 = sub_1B2252B00();
  sub_1B21115E0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - v13;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (*(*(v5 + 48) + 16) <= a1)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v24 = a5;
  sub_1B2114394();
  if (!v6)
  {
    sub_1B2122554();
    Row.fastDecode<A>(_:atUncheckedIndex:)();
    return;
  }

  if (a1 < 0xFFFFFFFF80000000)
  {
    goto LABEL_14;
  }

  if (a1 > 0x7FFFFFFF)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v22 = v16;
  v23 = a3;
  MEMORY[0x1EEE9AC00](v15);
  *(&v21 - 2) = v5;
  *(&v21 - 1) = a1;
  v17 = sqlite3_column_type(v6, a1);
  if (v17 == 5)
  {
LABEL_9:
    MEMORY[0x1EEE9AC00](v17);
    *(&v21 - 2) = sub_1B21B6634;
    *(&v21 - 1) = (&v21 - 4);
    static DatabaseValueConvertible<>._valueMismatch(fromStatement:atUncheckedIndex:context:)(v6, a1, sub_1B21B663C, (&v21 - 4), a2);
    return;
  }

  v18 = sub_1B2116148();
  v19(v18);
  if (sub_1B2122A98(v14, 1, a2) == 1)
  {
    v17 = (*(v22 + 8))(v14, v11);
    goto LABEL_9;
  }

  sub_1B2111808();
  (*(v20 + 32))(v24, v14, a2);
}

void sub_1B21B4D4C(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v10 = sub_1B2252B00();
  sub_1B21115E0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - v12;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (*(*(v4 + 48) + 16) <= a1)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v27 = v5;
  sub_1B2114394();
  if (!v5)
  {
    sub_1B2122554();
    Row.fastDecodeIfPresent<A>(_:atUncheckedIndex:)();
    return;
  }

  if (a1 < 0xFFFFFFFF80000000)
  {
    goto LABEL_16;
  }

  if (a1 > 0x7FFFFFFF)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v25 = v15;
  v26 = a3;
  MEMORY[0x1EEE9AC00](v14);
  v24 = &v23 - 4;
  *(&v23 - 2) = v4;
  *(&v23 - 1) = a1;
  if (sqlite3_column_type(v5, a1) == 5)
  {
    v16 = a4;
    v17 = 1;
  }

  else
  {
    v23 = &v23;
    v18 = sub_1B2116148();
    v19(v18);
    if (sub_1B2122A98(v13, 1, a2) == 1)
    {
      v20 = (*(v25 + 8))(v13, v10);
      MEMORY[0x1EEE9AC00](v20);
      v21 = v24;
      *(&v23 - 2) = sub_1B21B6634;
      *(&v23 - 1) = v21;
      static DatabaseValueConvertible<>._valueMismatch(fromStatement:atUncheckedIndex:context:)(v5, a1, sub_1B21B663C, (&v23 - 4), a2);
      return;
    }

    sub_1B2111808();
    (*(v22 + 32))(a4, v13, a2);
    v16 = a4;
    v17 = 0;
  }

  sub_1B21117B4(v16, v17, 1, a2);
}

void sub_1B21B4FE8(uint64_t a1)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1B21129F8();
    if (!v2 & v1)
    {
      sub_1B211D640();
      v3 = sub_1B2115740();
      sub_1B214D38C(v3, v4);
      sub_1B212CE0C(v6);
      sub_1B2117CC0();
      v5();
      sub_1B2113208(v6);
      sub_1B2112FD0();
      return;
    }
  }

  __break(1u);
}

void sub_1B21B508C(uint64_t a1)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1B21129F8();
    if (!v2 & v1)
    {
      sub_1B211D640();
      v3 = sub_1B2115740();
      sub_1B214D38C(v3, v4);
      sub_1B212CE0C(v6);
      sub_1B2117CC0();
      v5();
      sub_1B2113208(v6);
      sub_1B2112FD0();
      return;
    }
  }

  __break(1u);
}

void sub_1B21B5130(uint64_t a1)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1B21129F8();
    if (!v2 & v1)
    {
      sub_1B211D640();

      sub_1B2112FD0();
      return;
    }
  }

  __break(1u);
}

uint64_t sub_1B21B5174(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 56);
  v4 = *(v3 + 16);

  if (v4 && (v5 = sub_1B211E590(), (v6 & 1) != 0))
  {
    v7 = *(*(v3 + 56) + 8 * v5);
  }

  else
  {
    v8 = sub_1B2252220();
    v7 = sub_1B212F2CC(v8, v9, v3);
  }

  return v7;
}

uint64_t sub_1B21B5234()
{
  v1 = v0;
  v2 = type metadata accessor for Row();
  v3 = *v0;
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 48);
  sub_1B21139A0((*v1 + 16), v4);
  v6 = (*(v5 + 112))(v3, v4, v5);
  sub_1B214D38C((v1 + 1), v17);
  v7 = v18;
  v8 = v19;
  sub_1B21A1628(v17, v18);
  sub_1B21115E0();
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v17[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  v14 = sub_1B21B64A0(v6, v12, v2, v7, v8);
  sub_1B2113208(v17);
  return v14;
}

uint64_t sub_1B21B537C()
{
  v1 = v0[4];
  v2 = v0[5];
  sub_1B21139A0(v0 + 1, v1);
  v3 = *(v2 + 8);

  v3(v9, v1, v2);
  v4 = v9[1];

  v5 = sub_1B2112FD0();
  v7 = sub_1B21B63E4(v5, v6, v4);

  return v7;
}

uint64_t sub_1B21B5428()
{
  sub_1B21139A0((*v0 + 16), *(*v0 + 40));
  v1 = sub_1B211187C();
  return v2(v1);
}

uint64_t sub_1B21B5520(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1B21A1544();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1B21B558C(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_1B21B558C(uint64_t *a1)
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
        sub_1B21619D8(&qword_1EB7A11B0, &qword_1B22549C0);
        v6 = sub_1B2252610();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1B21B5714(v7, v8, a1, v4);
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
    return sub_1B21B5690(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1B21B5690(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 24 * a3 - 24;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 24 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        if (v7 >= *v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *(v9 + 32);
        v11 = *(v9 + 40);
        *(v9 + 24) = *v9;
        result = *(v9 + 16);
        *(v9 + 40) = result;
        *v9 = v7;
        *(v9 + 8) = v10;
        *(v9 + 16) = v11;
        v9 -= 24;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 24;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1B21B5714(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v90 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v85 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 24 * v9);
        v11 = (*a3 + 24 * v7);
        v12 = 24 * v7;
        v15 = *v11;
        v14 = v11 + 6;
        v13 = v15;
        v16 = v7 + 2;
        v17 = v10;
        while (1)
        {
          v18 = v16;
          if (++v9 >= v6)
          {
            break;
          }

          v19 = *v14;
          v14 += 3;
          v20 = (v10 < v13) ^ (v19 >= v17);
          ++v16;
          v17 = v19;
          if ((v20 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v10 < v13)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v18)
            {
              v6 = v18;
            }

            v21 = 24 * v6;
            v22 = v9;
            v23 = v7;
            do
            {
              if (v23 != --v22)
              {
                v24 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v25 = (v24 + v12);
                v26 = v24 + v21;
                v27 = *(v25 + 2);
                v28 = *v25;
                v29 = *(v26 - 8);
                *v25 = *(v26 - 24);
                *(v25 + 2) = v29;
                *(v26 - 24) = v28;
                *(v26 - 8) = v27;
              }

              ++v23;
              v21 -= 24;
              v12 += 24;
            }

            while (v23 < v22);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
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
            return;
          }

          if (v9 != v6)
          {
            v30 = *a3;
            v31 = *a3 + 24 * v9 - 24;
            v32 = v7 - v9;
            do
            {
              v33 = *(v30 + 24 * v9);
              v34 = v32;
              v35 = v31;
              do
              {
                if (v33 >= *v35)
                {
                  break;
                }

                if (!v30)
                {
                  goto LABEL_111;
                }

                v36 = *(v35 + 32);
                v37 = *(v35 + 40);
                *(v35 + 24) = *v35;
                *(v35 + 40) = *(v35 + 16);
                *v35 = v33;
                *(v35 + 8) = v36;
                *(v35 + 16) = v37;
                v35 -= 24;
              }

              while (!__CFADD__(v34++, 1));
              ++v9;
              v31 += 24;
              --v32;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v87 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B2161EC4(0, v8[2] + 1, 1, v8);
        v8 = v83;
      }

      v40 = v8[2];
      v39 = v8[3];
      v41 = v40 + 1;
      if (v40 >= v39 >> 1)
      {
        sub_1B2161EC4(v39 > 1, v40 + 1, 1, v8);
        v8 = v84;
      }

      v8[2] = v41;
      v42 = v8 + 4;
      v43 = &v8[2 * v40 + 4];
      *v43 = v7;
      v43[1] = v87;
      v88 = *result;
      if (!*result)
      {
        goto LABEL_114;
      }

      if (v40)
      {
        while (1)
        {
          v44 = v41 - 1;
          v45 = &v42[2 * v41 - 2];
          v46 = &v8[2 * v41];
          if (v41 >= 4)
          {
            break;
          }

          if (v41 == 3)
          {
            v47 = v8[4];
            v48 = v8[5];
            v57 = __OFSUB__(v48, v47);
            v49 = v48 - v47;
            v50 = v57;
LABEL_56:
            if (v50)
            {
              goto LABEL_96;
            }

            v62 = *v46;
            v61 = v46[1];
            v63 = __OFSUB__(v61, v62);
            v64 = v61 - v62;
            v65 = v63;
            if (v63)
            {
              goto LABEL_99;
            }

            v66 = v45[1];
            v67 = v66 - *v45;
            if (__OFSUB__(v66, *v45))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v64, v67))
            {
              goto LABEL_104;
            }

            if (v64 + v67 >= v49)
            {
              if (v49 < v67)
              {
                v44 = v41 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v41 < 2)
          {
            goto LABEL_98;
          }

          v69 = *v46;
          v68 = v46[1];
          v57 = __OFSUB__(v68, v69);
          v64 = v68 - v69;
          v65 = v57;
LABEL_71:
          if (v65)
          {
            goto LABEL_101;
          }

          v71 = *v45;
          v70 = v45[1];
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_103;
          }

          if (v72 < v64)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v44 - 1 >= v41)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
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
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v76 = &v42[2 * v44 - 2];
          v77 = *v76;
          v78 = &v42[2 * v44];
          v79 = v78[1];
          sub_1B21B5D5C((*a3 + 24 * *v76), (*a3 + 24 * *v78), *a3 + 24 * v79, v88);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v79 < v77)
          {
            goto LABEL_91;
          }

          v80 = v8;
          v81 = v8[2];
          if (v44 > v81)
          {
            goto LABEL_92;
          }

          *v76 = v77;
          v76[1] = v79;
          if (v44 >= v81)
          {
            goto LABEL_93;
          }

          v41 = v81 - 1;
          memmove(&v42[2 * v44], v78 + 2, 16 * (v81 - 1 - v44));
          v80[2] = v81 - 1;
          v82 = v81 > 2;
          v8 = v80;
          v5 = 0;
          if (!v82)
          {
            goto LABEL_85;
          }
        }

        v51 = &v42[2 * v41];
        v52 = *(v51 - 8);
        v53 = *(v51 - 7);
        v57 = __OFSUB__(v53, v52);
        v54 = v53 - v52;
        if (v57)
        {
          goto LABEL_94;
        }

        v56 = *(v51 - 6);
        v55 = *(v51 - 5);
        v57 = __OFSUB__(v55, v56);
        v49 = v55 - v56;
        v50 = v57;
        if (v57)
        {
          goto LABEL_95;
        }

        v58 = v46[1];
        v59 = v58 - *v46;
        if (__OFSUB__(v58, *v46))
        {
          goto LABEL_97;
        }

        v57 = __OFADD__(v49, v59);
        v60 = v49 + v59;
        if (v57)
        {
          goto LABEL_100;
        }

        if (v60 >= v54)
        {
          v74 = *v45;
          v73 = v45[1];
          v57 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v57)
          {
            goto LABEL_105;
          }

          if (v49 < v75)
          {
            v44 = v41 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v87;
      a4 = v85;
      if (v87 >= v6)
      {
        v90 = v8;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_115;
  }

  sub_1B21B5C24(&v90, *result, a3);
LABEL_89:
}

uint64_t sub_1B21B5C24(uint64_t *a1, char *a2, void *a3)
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
    sub_1B21B5D5C((*a3 + 24 * *v4), (*a3 + 24 * *v9), *a3 + 24 * v10, a2);
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

uint64_t sub_1B21B5D5C(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 24;
  v9 = (a3 - a2) / 24;
  if (v8 < v9)
  {
    sub_1B2160924(a1, (a2 - a1) / 24, a4);
    v10 = &v4[24 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (*v6 >= *v4)
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 24;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 24;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 24;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    v14 = *v12;
    *(v7 + 2) = *(v12 + 2);
    *v7 = v14;
    goto LABEL_13;
  }

  sub_1B2160924(a2, (a3 - a2) / 24, a4);
  v10 = &v4[24 * v9];
LABEL_15:
  v15 = v6 - 24;
  for (v5 -= 24; v10 > v4 && v6 > v7; v5 -= 24)
  {
    if (*(v10 - 3) < *v15)
    {
      v13 = v5 + 24 == v6;
      v6 -= 24;
      if (!v13)
      {
        v18 = *v15;
        *(v5 + 16) = *(v15 + 2);
        *v5 = v18;
        v6 = v15;
      }

      goto LABEL_15;
    }

    if (v10 != (v5 + 24))
    {
      v17 = *(v10 - 24);
      *(v5 + 16) = *(v10 - 1);
      *v5 = v17;
    }

    v10 -= 24;
  }

LABEL_28:
  v19 = (v10 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v19])
  {
    memmove(v6, v4, 24 * v19);
  }

  return 1;
}

void *sub_1B21B5F04(void *result)
{
  v1 = 0;
  v2 = 0;
  v3 = MEMORY[0x1E69E7CC0];
  v4 = result[2];
  v5 = (MEMORY[0x1E69E7CC0] + 32);
  for (i = result + 5; ; i += 2)
  {
    if (v4 == v2)
    {
      v18 = v3[3];
      if (v18 >= 2)
      {
        v19 = v18 >> 1;
        v17 = __OFSUB__(v19, v1);
        v20 = v19 - v1;
        if (v17)
        {
          goto LABEL_27;
        }

        v3[2] = v20;
      }

      return v3;
    }

    v7 = *(i - 1);
    v8 = *i;
    if (v1)
    {

      v9 = v3;
    }

    else
    {
      v10 = v3[3];
      if (((v10 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_26;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      v12 = v11 <= 1 ? 1 : v11;
      sub_1B21619D8(&qword_1EB7A2180, &unk_1B225B0D0);
      v9 = swift_allocObject();
      v13 = (j__malloc_size(v9) - 32) / 24;
      v9[2] = v12;
      v9[3] = 2 * v13;
      v14 = v9 + 4;
      v15 = v3[3] >> 1;
      v5 = &v9[3 * v15 + 4];
      v1 = (v13 & 0x7FFFFFFFFFFFFFFFLL) - v15;
      if (v3[2])
      {
        if (v9 != v3 || v14 >= &v3[3 * v15 + 4])
        {
          memmove(v14, v3 + 4, 24 * v15);
        }

        v3[2] = 0;
      }

      else
      {
      }
    }

    v17 = __OFSUB__(v1--, 1);
    if (v17)
    {
      break;
    }

    *v5 = v2;
    v5[1] = v7;
    v5[2] = v8;
    v5 += 3;
    ++v2;
    v3 = v9;
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

_BYTE *storeEnumTagSinglePayload for EmptyRowAdapter(_BYTE *result, int a2, int a3)
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

__n128 sub_1B21B6200(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1B21B6214(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_1B21B6254(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B21B62B8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1B21B62F8(uint64_t result, int a2, int a3)
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

uint64_t sub_1B21B6344(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_1B21B6384(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B21B63E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = &type metadata for _LayoutedColumnMapping;
  v13 = &protocol witness table for _LayoutedColumnMapping;
  v10 = a2;
  v11 = a3;
  sub_1B214D38C(&v10, v9);
  v8 = a1;
  v9[5] = v10;
  v9[6] = v11;
  type metadata accessor for Row();
  v4 = swift_allocObject();
  sub_1B21B65C0(&v8, v7);

  v5 = sub_1B2184130(v7, v4);
  sub_1B21B65F8(&v8);
  sub_1B2113208(&v10);
  return v5;
}

uint64_t sub_1B21B64A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15[3] = a4;
  v15[4] = a5;
  sub_1B212FF14(v15);
  sub_1B2111808();
  (*(v6 + 32))();
  sub_1B214D38C(v15, v12);
  v13 = a1;
  sub_1B214D38C(v12, v14);
  v7 = sub_1B2115C78();
  v8(v7);
  *&v14[40] = v12[4];
  sub_1B2113208(v12);
  v9 = swift_allocObject();
  sub_1B21B65C0(&v13, v12);
  v10 = sub_1B2184130(v12, v9);
  sub_1B21B65F8(&v13);
  sub_1B2113208(v15);
  return v10;
}

uint64_t count(_:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1B21139A0(a1, v3);
  (*(v4 + 8))(__src, v3, v4);
  memcpy(v6, __src, sizeof(v6));
  sub_1B2178B94(a2);
  return sub_1B213A5CC(__src);
}

void *sub_1B21B670C@<X0>(void *a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v5 = a1[3];
  sub_1B21139A0(a1, v5);
  sub_1B2115750();
  v6(v9, v5);
  sub_1B21619D8(&qword_1EB7A0E70, &unk_1B225D330);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B22546B0;
  memcpy((v7 + 32), v9, 0xA3uLL);
  __src[0] = 0x544E554F43;
  __src[1] = 0xE500000000000000;
  LOBYTE(__src[2]) = 1;
  BYTE1(__src[2]) = a2;
  __src[3] = v7;
  sub_1B2179374(__src);
  return memcpy(a3, __src, 0xA3uLL);
}

void *?? infix(_:_:)@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  sub_1B21619D8(&qword_1EB7A0E70, &unk_1B225D330);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1B225B140;
  v7 = a1[3];
  sub_1B21139A0(a1, v7);
  sub_1B2115750();
  v8(v7);
  v9 = a2[3];
  v10 = a2[4];
  sub_1B21139A0(a2, v9);
  (*(v10 + 8))(v9, v10);
  __src[0] = 0x4C4C554E4649;
  __src[1] = 0xE600000000000000;
  LOWORD(__src[2]) = 0;
  __src[3] = v6;
  sub_1B2179374(__src);
  return memcpy(a3, __src, 0xA3uLL);
}

void *sub_1B21B6950@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 a4@<W3>, void *a5@<X8>)
{
  sub_1B21619D8(&qword_1EB7A0E70, &unk_1B225D330);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1B22546B0;
  v11 = a1[3];
  sub_1B21139A0(a1, v11);
  sub_1B2115750();
  v12(v11);
  __src[0] = a2;
  __src[1] = a3;
  LOWORD(__src[2]) = a4;
  __src[3] = v10;
  sub_1B2179374(__src);
  return memcpy(a5, __src, 0xA3uLL);
}

uint64_t sub_1B21B6A78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *x8_0@<X8>)
{
  if (*a3 != -1)
  {
    swift_once();
  }

  sub_1B21619D8(&qword_1EB7A1168, qword_1B225ECD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B22546B0;
  v10 = *(a2 + 8);
  v11 = *(v10 + 8);
  *(inited + 56) = &type metadata for SQLExpression;
  *(inited + 64) = &protocol witness table for SQLExpression;
  *(inited + 32) = swift_allocObject();
  v11(a1, v10);
  DatabaseFunction.callAsFunction(_:)(inited, x8_0);
  swift_setDeallocating();
  return sub_1B21389D4(&qword_1EB7A1170, &qword_1B2254990);
}

void *SQLDateModifier.sqlExpression.getter@<X0>(void *a1@<X8>)
{
  __src[0] = sub_1B21B6C84();
  __src[1] = v2;
  LOBYTE(__src[2]) = 2;
  sub_1B2127D7C(__src);
  return memcpy(a1, __src, 0xA3uLL);
}

uint64_t sub_1B21B6C84()
{
  switch(*(v0 + 8))
  {
    case 1:
      v6 = sub_1B2252FD0();
      v1 = 0x736574756E696D20;
      goto LABEL_8;
    case 2:
      v6 = sub_1B2252FD0();
      v3 = 1970235424;
      goto LABEL_10;
    case 3:
      v6 = sub_1B2252FD0();
      v1 = 0x7379616420;
      v2 = 0xE500000000000000;
      goto LABEL_11;
    case 4:
      v6 = sub_1B2252FD0();
      v1 = 0x7368746E6F6D20;
      v2 = 0xE700000000000000;
      goto LABEL_11;
    case 5:
      v6 = sub_1B2252FD0();
      v3 = 1634040096;
LABEL_10:
      v1 = v3 & 0xFFFF0000FFFFFFFFLL | 0x737200000000;
      v2 = 0xE600000000000000;
      goto LABEL_11;
    case 6:
      v6 = 0x207961646B656577;
      v5 = sub_1B2252FD0();
      MEMORY[0x1B2741EB0](v5);

      return v6;
    case 7:
      result = 0x666F207472617473;
      switch(*v0)
      {
        case 3:
          result = 0x636F706578696E75;
          break;
        case 4:
          result = 0x6D69746C61636F6CLL;
          break;
        case 5:
          result = 6517877;
          break;
        default:
          return result;
      }

      return result;
    default:
      v6 = 0;
      sub_1B22527D0();
      v1 = 0x73646E6F63657320;
LABEL_8:
      v2 = 0xE800000000000000;
LABEL_11:
      MEMORY[0x1B2741EB0](v1, v2);
      return v6;
  }
}

void *sub_1B21B6F58@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  sub_1B21619D8(&qword_1EB7A0E70, &unk_1B225D330);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1B22546B0;
  v11 = a1[3];
  sub_1B21139A0(a1, v11);
  sub_1B2115750();
  v12(v11);
  v13 = *(a2 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  if (v13)
  {
    v23 = v10;
    v24 = a3;
    v27 = MEMORY[0x1E69E7CC0];
    sub_1B213CA68();
    v14 = v27;
    v15 = (a2 + 40);
    do
    {
      v16 = *v15;
      __dst[0] = *(v15 - 1);
      LOBYTE(__dst[1]) = v16;
      v17 = sub_1B21B6C84();
      v19 = v18;
      v27 = v14;
      v20 = *(v14 + 16);
      if (v20 >= *(v14 + 24) >> 1)
      {
        sub_1B213CA68();
        v14 = v27;
      }

      v15 += 16;
      __src[0] = v17;
      __src[1] = v19;
      LOBYTE(__src[2]) = 2;
      sub_1B2127D7C(__src);
      memcpy(__dst, __src, 0xA3uLL);
      *(v14 + 16) = v20 + 1;
      memcpy((v14 + 168 * v20 + 32), __dst, 0xA3uLL);
      --v13;
    }

    while (v13);
    v10 = v23;
    a3 = v24;
  }

  __dst[0] = v10;
  sub_1B216CB88(v14);
  v21 = __dst[0];
  __dst[0] = a3;
  __dst[1] = a4;
  LOWORD(__dst[2]) = 0;
  __dst[3] = v21;
  sub_1B2179374(__dst);
  return memcpy(a5, __dst, 0xA3uLL);
}

uint64_t sub_1B21B7140()
{
  swift_arrayDestroy();
  v0 = sub_1B2112820();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1B21B717C()
{
  swift_arrayDestroy();
  v0 = sub_1B2112820();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1B21B71B8()
{
  swift_arrayDestroy();
  v0 = sub_1B2112820();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t initializeBufferWithCopyOfBuffer for SQLDateModifier(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SQLDateModifier(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF9 && *(a1 + 9))
    {
      v2 = *a1 + 248;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 7)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SQLDateModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 8) = 0;
    *result = a2 - 249;
    if (a3 >= 0xF9)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
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

uint64_t sub_1B21B728C(uint64_t a1)
{
  if (*(a1 + 8) <= 6u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 7);
  }
}

uint64_t sub_1B21B72A4(uint64_t result, unsigned int a2)
{
  if (a2 >= 7)
  {
    *result = a2 - 7;
    LOBYTE(a2) = 7;
  }

  *(result + 8) = a2;
  return result;
}

void sub_1B21B72D8(void *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v2;
  sub_1B21B7FBC();
  a1[2] = sub_1B2252190();
  v3._countAndFlagsBits = 36;
  v3._object = 0xE100000000000000;
  v4._countAndFlagsBits = 115;
  v4._object = 0xE100000000000000;
  Inflections.plural(_:options:_:)(v3, 1uLL, v4);
  v5._countAndFlagsBits = 9331;
  v5._object = 0xE200000000000000;
  v6._countAndFlagsBits = 115;
  v6._object = 0xE100000000000000;
  Inflections.plural(_:options:_:)(v5, 1uLL, v6);
  v7._countAndFlagsBits = 0x7365747C7861285ELL;
  v7._object = 0xED00002473692974;
  v8._countAndFlagsBits = 1936011556;
  v8._object = 0xE400000000000000;
  Inflections.plural(_:options:_:)(v7, 1uLL, v8);
  v9._object = 0xEE00247375297269;
  v10._countAndFlagsBits = 6893860;
  v9._countAndFlagsBits = 0x767C706F74636F28;
  v10._object = 0xE300000000000000;
  Inflections.plural(_:options:_:)(v9, 1uLL, v10);
  v11._object = 0xED00002469297269;
  v12._countAndFlagsBits = 6893860;
  v11._countAndFlagsBits = 0x767C706F74636F28;
  v12._object = 0xE300000000000000;
  Inflections.plural(_:options:_:)(v11, 1uLL, v12);
  v13._countAndFlagsBits = 0x737C7361696C6128;
  v13._object = 0xEF24297375746174;
  v14._countAndFlagsBits = 1936011556;
  v14._object = 0xE400000000000000;
  Inflections.plural(_:options:_:)(v13, 1uLL, v14);
  v15._countAndFlagsBits = 0x247329756228;
  v15._object = 0xE600000000000000;
  v16._countAndFlagsBits = 0x7365733124;
  v16._object = 0xE500000000000000;
  Inflections.plural(_:options:_:)(v15, 1uLL, v16);
  v17._countAndFlagsBits = 0x73656F3124;
  v18._countAndFlagsBits = 0xD000000000000014;
  v18._object = 0x80000001B226E1F0;
  v17._object = 0xE500000000000000;
  Inflections.plural(_:options:_:)(v18, 1uLL, v17);
  v19._countAndFlagsBits = 0x6D75295D69745B28;
  v19._object = 0xE900000000000024;
  v20._countAndFlagsBits = 6369572;
  v20._object = 0xE300000000000000;
  Inflections.plural(_:options:_:)(v19, 1uLL, v20);
  v21._countAndFlagsBits = 0x2461295D69745B28;
  v21._object = 0xE800000000000000;
  v22._countAndFlagsBits = 6369572;
  v22._object = 0xE300000000000000;
  Inflections.plural(_:options:_:)(v21, 1uLL, v22);
  v23._countAndFlagsBits = 611543411;
  v23._object = 0xE400000000000000;
  v24._countAndFlagsBits = 7562611;
  v24._object = 0xE300000000000000;
  Inflections.plural(_:options:_:)(v23, 1uLL, v24);
  v25._countAndFlagsBits = 0x73657632243124;
  v26._countAndFlagsBits = 0xD000000000000015;
  v26._object = 0x80000001B226E210;
  v25._object = 0xE700000000000000;
  Inflections.plural(_:options:_:)(v26, 1uLL, v25);
  v27._countAndFlagsBits = 0x24296576696828;
  v27._object = 0xE700000000000000;
  v28._countAndFlagsBits = 7549220;
  v28._object = 0xE300000000000000;
  Inflections.plural(_:options:_:)(v27, 1uLL, v28);
  v29._countAndFlagsBits = 0x7365693124;
  v30._countAndFlagsBits = 0xD000000000000010;
  v30._object = 0x80000001B226E230;
  v29._object = 0xE500000000000000;
  Inflections.plural(_:options:_:)(v30, 1uLL, v29);
  v31._object = 0xED0000242968737CLL;
  v31._countAndFlagsBits = 0x73737C68637C7828;
  v32._countAndFlagsBits = 1936011556;
  v32._object = 0xE400000000000000;
  Inflections.plural(_:options:_:)(v31, 1uLL, v32);
  v33._countAndFlagsBits = 0x736563693124;
  v34._countAndFlagsBits = 0xD000000000000019;
  v34._object = 0x80000001B226E250;
  v33._object = 0xE600000000000000;
  Inflections.plural(_:options:_:)(v34, 1uLL, v33);
  v35._countAndFlagsBits = 0x756F296C7C6D285ELL;
  v35._object = 0xEB00000000246573;
  v36._countAndFlagsBits = 0x6563693124;
  v36._object = 0xE500000000000000;
  Inflections.plural(_:options:_:)(v35, 1uLL, v36);
  v37._countAndFlagsBits = 0x6369296C7C6D285ELL;
  v37._object = 0xEA00000000002465;
  v38._countAndFlagsBits = 0x6563693124;
  v38._object = 0xE500000000000000;
  Inflections.plural(_:options:_:)(v37, 1uLL, v38);
  v39._countAndFlagsBits = 0x2429786F285ELL;
  v40._countAndFlagsBits = 1852125476;
  v39._object = 0xE600000000000000;
  v40._object = 0xE400000000000000;
  Inflections.plural(_:options:_:)(v39, 1uLL, v40);
  v41._countAndFlagsBits = 0x24296E65786F285ELL;
  v41._object = 0xE800000000000000;
  v42._countAndFlagsBits = 12580;
  v42._object = 0xE200000000000000;
  Inflections.plural(_:options:_:)(v41, 1uLL, v42);
  v43._countAndFlagsBits = 0x24297A69757128;
  v44._countAndFlagsBits = 0x73657A3124;
  v43._object = 0xE700000000000000;
  v44._object = 0xE500000000000000;
  Inflections.plural(_:options:_:)(v43, 1uLL, v44);
  v45._countAndFlagsBits = 0x732961766E616328;
  v45._object = 0xE900000000000024;
  v46._countAndFlagsBits = 0x7365733124;
  v46._object = 0xE500000000000000;
  Inflections.plural(_:options:_:)(v45, 1uLL, v46);
  v47._countAndFlagsBits = 9331;
  v47._object = 0xE200000000000000;
  v48._countAndFlagsBits = 0;
  v48._object = 0xE000000000000000;
  Inflections.singular(_:options:_:)(v47, 1uLL, v48);
  v49._countAndFlagsBits = 0x2429737328;
  v49._object = 0xE500000000000000;
  v50._countAndFlagsBits = 12580;
  v50._object = 0xE200000000000000;
  Inflections.singular(_:options:_:)(v49, 1uLL, v50);
  v51._countAndFlagsBits = 0x24737765296E28;
  v52._countAndFlagsBits = 0x7377653124;
  v51._object = 0xE700000000000000;
  v52._object = 0xE500000000000000;
  Inflections.singular(_:options:_:)(v51, 1uLL, v52);
  v53._countAndFlagsBits = 0x2461295D69745B28;
  v53._object = 0xE800000000000000;
  v54._countAndFlagsBits = 1836396836;
  v54._object = 0xE400000000000000;
  Inflections.singular(_:options:_:)(v53, 1uLL, v54);
  v55._countAndFlagsBits = 0xD000000000000043;
  v55._object = 0x80000001B226E270;
  v56._countAndFlagsBits = 0x7369733124;
  v56._object = 0xE500000000000000;
  Inflections.singular(_:options:_:)(v55, 1uLL, v56);
  v57._object = 0x80000001B226E2C0;
  v57._countAndFlagsBits = 0xD000000000000012;
  v58._countAndFlagsBits = 0x7369733124;
  v58._object = 0xE500000000000000;
  Inflections.singular(_:options:_:)(v57, 1uLL, v58);
  v59._countAndFlagsBits = 0x6576295D665E5B28;
  v59._object = 0xEA00000000002473;
  v60._countAndFlagsBits = 1701196068;
  v60._object = 0xE400000000000000;
  Inflections.singular(_:options:_:)(v59, 1uLL, v60);
  v61._countAndFlagsBits = 0x2473296576696828;
  v61._object = 0xE800000000000000;
  v62._countAndFlagsBits = 12580;
  v62._object = 0xE200000000000000;
  Inflections.singular(_:options:_:)(v61, 1uLL, v62);
  v63._countAndFlagsBits = 0x2473296576697428;
  v63._object = 0xE800000000000000;
  v64._countAndFlagsBits = 12580;
  v64._object = 0xE200000000000000;
  Inflections.singular(_:options:_:)(v63, 1uLL, v64);
  v65._countAndFlagsBits = 0x6576295D726C5B28;
  v66._countAndFlagsBits = 6697252;
  v65._object = 0xEA00000000002473;
  v66._object = 0xE300000000000000;
  Inflections.singular(_:options:_:)(v65, 1uLL, v66);
  v67._object = 0x80000001B226E2E0;
  v67._countAndFlagsBits = 0xD000000000000012;
  v68._countAndFlagsBits = 7942436;
  v68._object = 0xE300000000000000;
  Inflections.singular(_:options:_:)(v67, 1uLL, v68);
  v69._countAndFlagsBits = 0x7365697265297328;
  v70._countAndFlagsBits = 0x73656972653124;
  v69._object = 0xE900000000000024;
  v70._object = 0xE700000000000000;
  Inflections.singular(_:options:_:)(v69, 1uLL, v70);
  v71._countAndFlagsBits = 0x736569766F296D28;
  v72._countAndFlagsBits = 0x6569766F3124;
  v71._object = 0xE900000000000024;
  v72._object = 0xE600000000000000;
  Inflections.singular(_:options:_:)(v71, 1uLL, v72);
  v73._object = 0xEF2473652968737CLL;
  v73._countAndFlagsBits = 0x73737C68637C7828;
  v74._countAndFlagsBits = 12580;
  v74._object = 0xE200000000000000;
  Inflections.singular(_:options:_:)(v73, 1uLL, v74);
  v75._countAndFlagsBits = 0x6573756F3124;
  v76._countAndFlagsBits = 0x6369296C7C6D285ELL;
  v76._object = 0xEA00000000002465;
  v75._object = 0xE600000000000000;
  Inflections.singular(_:options:_:)(v76, 1uLL, v75);
  v77._countAndFlagsBits = 0x7365282973756228;
  v77._object = 0xEB00000000243F29;
  v78._countAndFlagsBits = 12580;
  v78._object = 0xE200000000000000;
  Inflections.singular(_:options:_:)(v77, 1uLL, v78);
  v79._countAndFlagsBits = 0x247365296F28;
  v79._object = 0xE600000000000000;
  v80._countAndFlagsBits = 12580;
  v80._object = 0xE200000000000000;
  Inflections.singular(_:options:_:)(v79, 1uLL, v80);
  v81._countAndFlagsBits = 0x247329656F687328;
  v81._object = 0xE800000000000000;
  v82._countAndFlagsBits = 12580;
  v82._object = 0xE200000000000000;
  Inflections.singular(_:options:_:)(v81, 1uLL, v82);
  v83._countAndFlagsBits = 0xD000000000000013;
  v83._object = 0x80000001B226E300;
  v84._countAndFlagsBits = 1936273700;
  v84._object = 0xE400000000000000;
  Inflections.singular(_:options:_:)(v83, 1uLL, v84);
  v85._countAndFlagsBits = 0x65695B782961285ELL;
  v85._object = 0xEB0000000024735DLL;
  v86._countAndFlagsBits = 0x7369783124;
  v86._object = 0xE500000000000000;
  Inflections.singular(_:options:_:)(v85, 1uLL, v86);
  v87._object = 0x80000001B226E320;
  v88._countAndFlagsBits = 1937060132;
  v87._countAndFlagsBits = 0xD000000000000012;
  v88._object = 0xE400000000000000;
  Inflections.singular(_:options:_:)(v87, 1uLL, v88);
  v89._countAndFlagsBits = 0xD000000000000014;
  v89._object = 0x80000001B226E340;
  v90._countAndFlagsBits = 12580;
  v90._object = 0xE200000000000000;
  Inflections.singular(_:options:_:)(v89, 1uLL, v90);
  v91._countAndFlagsBits = 0x246E6529786F285ELL;
  v91._object = 0xE800000000000000;
  v92._countAndFlagsBits = 12580;
  v92._object = 0xE200000000000000;
  Inflections.singular(_:options:_:)(v91, 1uLL, v92);
  v93._countAndFlagsBits = 0x6E697C7472657628;
  v93._object = 0xEF24736563692964;
  v94._countAndFlagsBits = 2019897636;
  v94._object = 0xE400000000000000;
  Inflections.singular(_:options:_:)(v93, 1uLL, v94);
  v95._countAndFlagsBits = 0x6369297274616D28;
  v95._object = 0xEB00000000247365;
  v96._countAndFlagsBits = 2020159780;
  v96._object = 0xE400000000000000;
  Inflections.singular(_:options:_:)(v95, 1uLL, v96);
  v97._countAndFlagsBits = 0x657A297A69757128;
  v97._object = 0xEA00000000002473;
  v98._countAndFlagsBits = 12580;
  v98._object = 0xE200000000000000;
  Inflections.singular(_:options:_:)(v97, 1uLL, v98);
  v99._countAndFlagsBits = 0x7361626174616428;
  v99._object = 0xEC00000024732965;
  v100._countAndFlagsBits = 12580;
  v100._object = 0xE200000000000000;
  Inflections.singular(_:options:_:)(v99, 1uLL, v100);
  v101._countAndFlagsBits = 0x297361766E616328;
  v101._object = 0xEE00243F29736528;
  v102._countAndFlagsBits = 12580;
  v102._object = 0xE200000000000000;
  Inflections.singular(_:options:_:)(v101, 1uLL, v102);
  sub_1B21619D8(&qword_1EB7A0F88, &unk_1B22546A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B225B260;
  *(inited + 32) = 0x656369766461;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = 0x7370726F63;
  *(inited + 56) = 0xE500000000000000;
  *(inited + 64) = 1701013860;
  *(inited + 72) = 0xE400000000000000;
  *(inited + 80) = 0x6E656D7069757165;
  *(inited + 88) = 0xE900000000000074;
  *(inited + 96) = 1752394086;
  *(inited + 104) = 0xE400000000000000;
  *(inited + 112) = 0x74616D726F666E69;
  *(inited + 120) = 0xEB000000006E6F69;
  *(inited + 128) = 0x736E61656ALL;
  *(inited + 136) = 0xE500000000000000;
  *(inited + 144) = 0x736F64756BLL;
  *(inited + 152) = 0xE500000000000000;
  *(inited + 160) = 0x79656E6F6DLL;
  *(inited + 168) = 0xE500000000000000;
  *(inited + 176) = 0x6E6972707366666FLL;
  *(inited + 184) = 0xE900000000000067;
  *(inited + 192) = 0x6563696C6F70;
  *(inited + 200) = 0xE600000000000000;
  *(inited + 208) = 1701013874;
  *(inited + 216) = 0xE400000000000000;
  *(inited + 224) = 0x7065656873;
  *(inited + 232) = 0xE500000000000000;
  *(inited + 240) = 0x73656963657073;
  *(inited + 248) = 0xE700000000000000;
  Inflections.uncountableWords(_:)(inited);
  swift_setDeallocating();
  sub_1B21B7140();
  v104._countAndFlagsBits = 0x646C696863;
  v105._countAndFlagsBits = 0x6E6572646C696863;
  v104._object = 0xE500000000000000;
  v105._object = 0xE800000000000000;
  Inflections.irregularSuffix(_:_:)(v104, v105);
  v106._countAndFlagsBits = 1953460070;
  v106._object = 0xE400000000000000;
  v107._countAndFlagsBits = 1952802150;
  v107._object = 0xE400000000000000;
  Inflections.irregularSuffix(_:_:)(v106, v107);
  v108._countAndFlagsBits = 0x73657661656CLL;
  v109._countAndFlagsBits = 1717658988;
  v109._object = 0xE400000000000000;
  v108._object = 0xE600000000000000;
  Inflections.irregularSuffix(_:_:)(v109, v108);
  v110._countAndFlagsBits = 7234925;
  v111._countAndFlagsBits = 7233901;
  v111._object = 0xE300000000000000;
  v110._object = 0xE300000000000000;
  Inflections.irregularSuffix(_:_:)(v111, v110);
  v112._countAndFlagsBits = 0x7365766F6DLL;
  v113._countAndFlagsBits = 1702260589;
  v113._object = 0xE400000000000000;
  v112._object = 0xE500000000000000;
  Inflections.irregularSuffix(_:_:)(v113, v112);
  v114._countAndFlagsBits = 0x6E6F73726570;
  v115._countAndFlagsBits = 0x656C706F6570;
  v114._object = 0xE600000000000000;
  v115._object = 0xE600000000000000;
  Inflections.irregularSuffix(_:_:)(v114, v115);
  v116._countAndFlagsBits = 0x7365786573;
  v117._countAndFlagsBits = 7890291;
  v117._object = 0xE300000000000000;
  v116._object = 0xE500000000000000;
  Inflections.irregularSuffix(_:_:)(v117, v116);
  v118._countAndFlagsBits = 0x6E656D6963657073;
  v119._object = 0xE900000000000073;
  v118._object = 0xE800000000000000;
  v119._countAndFlagsBits = 0x6E656D6963657073;
  Inflections.irregularSuffix(_:_:)(v118, v119);
  v120._countAndFlagsBits = 0x6569626D6F7ALL;
  v121._countAndFlagsBits = 0x736569626D6F7ALL;
  v120._object = 0xE600000000000000;
  v121._object = 0xE700000000000000;
  Inflections.irregularSuffix(_:_:)(v120, v121);
}

uint64_t static Inflections.default.getter@<X0>(void *a1@<X8>)
{
  if (qword_1ED85D818 != -1)
  {
    sub_1B2112A24(&qword_1ED85D818);
  }

  swift_beginAccess();
  v2 = *(&xmmword_1ED85D820 + 1);
  v3 = off_1ED85D830;
  *a1 = xmmword_1ED85D820;
  a1[1] = v2;
  a1[2] = v3;
}

uint64_t static Inflections.default.setter(uint64_t a1)
{
  v3 = *a1;
  v1 = *(a1 + 16);
  if (qword_1ED85D818 != -1)
  {
    sub_1B2112A24(&qword_1ED85D818);
  }

  swift_beginAccess();
  xmmword_1ED85D820 = v3;
  off_1ED85D830 = v1;
}

uint64_t (*static Inflections.default.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1ED85D818 != -1)
  {
    sub_1B2112A24(&qword_1ED85D818);
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

unint64_t sub_1B21B7FBC()
{
  result = qword_1ED85D6F0;
  if (!qword_1ED85D6F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED85D6F0);
  }

  return result;
}

uint64_t sub_1B21B8000(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1B22531F0() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1B21B808C(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_35;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (a2 >> 62)
  {
    result = sub_1B2252C20();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5 != result)
  {
    v26 = 0;
    return v26 & 1;
  }

  if (!v5)
  {
    goto LABEL_30;
  }

  v7 = v3 & 0xFFFFFFFFFFFFFF8;
  v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
  v29 = v3 & 0xFFFFFFFFFFFFFF8;
  if (v3 < 0)
  {
    v7 = v3;
  }

  if (v4)
  {
    v8 = v7;
  }

  v9 = a2 & 0xFFFFFFFFFFFFFF8;
  v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  v28 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((a2 & 0x8000000000000000) != 0)
  {
    v9 = a2;
  }

  if (a2 >> 62)
  {
    v10 = v9;
  }

  if (v8 == v10)
  {
LABEL_30:
    v26 = 1;
    return v26 & 1;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v4 = type metadata accessor for Row();
    v30 = v3;
    v11 = v3 & 0xC000000000000001;
    v12 = a2 & 0xC000000000000001;
    v13 = 4;
    v3 = v5;
    v14 = a2;
    while (1)
    {
      v15 = v13 - 4;
      v16 = v13 - 3;
      if (__OFADD__(v13 - 4, 1))
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        v5 = sub_1B2252C20();
        goto LABEL_3;
      }

      if (v11)
      {
        v17 = MEMORY[0x1B27427E0](v13 - 4, v30);
        if (v12)
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v15 >= *(v29 + 16))
        {
          goto LABEL_33;
        }

        v17 = *(v30 + 8 * v13);

        if (v12)
        {
LABEL_21:
          v24 = MEMORY[0x1B27427E0](v13 - 4, a2);
          goto LABEL_26;
        }
      }

      if (v15 >= *(v28 + 16))
      {
        goto LABEL_34;
      }

      v24 = *(a2 + 8 * v13);

LABEL_26:
      static Row.== infix(_:_:)(v17, v24, v18, v19, v20, v21, v22, v23, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38);
      v26 = v25;

      if (v26)
      {
        ++v13;
        a2 = v14;
        if (v16 != v3)
        {
          continue;
        }
      }

      return v26 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B21B8260(uint64_t a1, uint64_t a2)
{
  __s1[3] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a2 + 48);
  v4 = (a1 + 48);
  while (2)
  {
    v5 = *(v4 - 2);
    v6 = *(v4 - 1);
    v7 = *v4;
    v8 = *(v3 - 2);
    v9 = *(v3 - 1);
    v10 = *v3;
    switch(*v4)
    {
      case 1:
        if (*v3)
        {
          if (v10 != 1)
          {
            goto LABEL_101;
          }

          v60 = sub_1B2116164();
          v62 = sub_1B2116638(v60, v61, 1);
          sub_1B2113A44(v62, v63, 1);
          v64 = sub_1B2116164();
          sub_1B2113A44(v64, v65, 1);
          if (*&v5 != *&v8)
          {
            return 0;
          }
        }

        else
        {
          v72 = sub_1B2116164();
          v74 = sub_1B2116638(v72, v73, 1);
          sub_1B2113A44(v74, v75, 0);
          v76 = sub_1B2116164();
          sub_1B2113A44(v76, v77, 1);
          v80 = sub_1B21147CC();
          if (v21 ^ v20 | v22)
          {
            v81 = 0;
          }

          else
          {
            v81 = *&v5 < v79;
          }

          if (!v81 || v80 != *&v5 || v8 != v78)
          {
            return 0;
          }
        }

        goto LABEL_97;
      case 2:
        if (v10 != 2)
        {
          v152 = sub_1B2116164();
          sub_1B2113A20(v152, v153, 2);

          goto LABEL_101;
        }

        if (v5 != v8 || v6 != v9)
        {
          v31 = sub_1B22531F0();
          v32 = sub_1B2116164();
          sub_1B2113A20(v32, v33, 2);
          v34 = sub_1B211577C(v8, v9, 2);
          v36 = sub_1B2116638(v34, v35, 2);
          v38 = 2;
          goto LABEL_96;
        }

        v84 = sub_1B211577C(*(v4 - 2), *(v4 - 1), 2);
        v27 = sub_1B211577C(v84, v85, 2);
        v29 = 2;
LABEL_81:
        sub_1B2113A44(v27, v28, v29);
        v104 = sub_1B2116164();
        sub_1B2113A44(v104, v105, v7);
LABEL_97:
        v3 += 3;
        v4 += 24;
        if (!--v2)
        {
          return 1;
        }

        continue;
      case 3:
        v39 = v10 == 3;
        if (v10 != 3)
        {
          v147 = sub_1B2115134();
          v150 = sub_1B211577C(v147, v148, v149);
          sub_1B2126638(v150, v151);
LABEL_101:
          v154 = sub_1B211577C(v8, v9, v10);
          sub_1B2113A44(v154, v155, v7);
          goto LABEL_102;
        }

        v40 = v6 >> 62;
        if (v39)
        {
          v86 = 0;
          if (*&v5 == 0.0 && v6 == 0xC000000000000000 && v9 >> 62 == 3)
          {
            v86 = 0;
            if (*&v8 == 0.0 && v9 == 0xC000000000000000)
            {
              v42 = sub_1B2111A28();
              sub_1B2113A20(v42, v43, v44);
              v45 = sub_1B2111A28();
              sub_1B2113A20(v45, v46, v47);
              v48 = sub_1B2111A28();
              sub_1B2113A20(v48, v49, v50);
              v51 = sub_1B2111A28();
              sub_1B2113A20(v51, v52, v53);
              v54 = sub_1B2111A28();
              sub_1B2113A44(v54, v55, v56);
              v57 = sub_1B2111A28();
              sub_1B2113A44(v57, v58, v59);
              v27 = 0;
              v28 = 0xC000000000000000;
LABEL_80:
              v29 = 3;
              goto LABEL_81;
            }
          }
        }

        else
        {
          v86 = 0;
          switch(v40)
          {
            case 0uLL:
              v86 = BYTE6(v6);
              break;
            case 1uLL:
              LODWORD(v86) = HIDWORD(v5) - v5;
              if (__OFSUB__(HIDWORD(v5), v5))
              {
                goto LABEL_108;
              }

              v86 = v86;
              break;
            case 2uLL:
              v88 = *(v5 + 16);
              v87 = *(v5 + 24);
              v20 = __OFSUB__(v87, v88);
              v86 = v87 - v88;
              if (!v20)
              {
                break;
              }

              goto LABEL_107;
            case 3uLL:
              break;
            default:
              JUMPOUT(0);
          }
        }

        switch(v9 >> 62)
        {
          case 1uLL:
            LODWORD(v89) = HIDWORD(v8) - v8;
            if (__OFSUB__(HIDWORD(v8), v8))
            {
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
            }

            v89 = v89;
LABEL_75:
            if (v86 == v89)
            {
              if (v86 >= 1)
              {
                v92 = sub_1B2112A44();
                sub_1B2113A20(v92, v93, v94);
                switch(v40)
                {
                  case 1:
                    if (v5 >> 32 < v5)
                    {
                      goto LABEL_109;
                    }

                    v127 = sub_1B2112A44();
                    sub_1B2113A20(v127, v128, v129);
                    sub_1B21174CC();
                    v110 = sub_1B2251BC0();
                    if (!v110)
                    {
                      goto LABEL_94;
                    }

                    v130 = sub_1B2251BE0();
                    if (__OFSUB__(v5, v130))
                    {
                      goto LABEL_112;
                    }

                    v110 += v5 - v130;
LABEL_94:
                    sub_1B2251BD0();
                    sub_1B21B8BE4(__s1, v110, v8, v9);
                    v131 = sub_1B2112A44();
                    sub_1B2113A44(v131, v132, v133);
                    v134 = sub_1B2112A44();
                    sub_1B2113A44(v134, v135, v136);
                    v137 = sub_1B2115134();
                    sub_1B2113A44(v137, v138, v139);
                    v140 = sub_1B2112A44();
                    sub_1B2113A44(v140, v141, v142);
                    v31 = __s1[0];
LABEL_95:
                    v143 = sub_1B2112A44();
                    sub_1B2113A44(v143, v144, v145);
                    v36 = sub_1B2115134();
                    break;
                  case 2:
                    v106 = *(v5 + 16);
                    v164 = *(v5 + 24);
                    v107 = sub_1B2112A44();
                    sub_1B2113A20(v107, v108, v109);
                    sub_1B21174CC();
                    v110 = sub_1B2251BC0();
                    if (!v110)
                    {
                      goto LABEL_85;
                    }

                    v111 = sub_1B2251BE0();
                    if (__OFSUB__(v106, v111))
                    {
                      goto LABEL_111;
                    }

                    v110 += v106 - v111;
LABEL_85:
                    if (!__OFSUB__(v164, v106))
                    {
                      goto LABEL_94;
                    }

                    goto LABEL_110;
                  case 3:
                    v112 = sub_1B2112A44();
                    sub_1B2113A20(v112, v113, v114);
                    memset(__s1, 0, 14);
                    sub_1B21174CC();
                    goto LABEL_89;
                  default:
                    v95 = sub_1B2112A44();
                    sub_1B2113A20(v95, v96, v97);
                    __s1[0] = v5;
                    LOWORD(__s1[1]) = v6;
                    BYTE2(__s1[1]) = BYTE2(v6);
                    BYTE3(__s1[1]) = BYTE3(v6);
                    BYTE4(__s1[1]) = BYTE4(v6);
                    BYTE5(__s1[1]) = BYTE5(v6);
                    sub_1B21174CC();
LABEL_89:
                    sub_1B21B8BE4(&v165, __s1, v8, v9);
                    v115 = sub_1B2112A44();
                    sub_1B2113A44(v115, v116, v117);
                    v118 = sub_1B2112A44();
                    sub_1B2113A44(v118, v119, v120);
                    v121 = sub_1B2115134();
                    sub_1B2113A44(v121, v122, v123);
                    v124 = sub_1B2112A44();
                    sub_1B2113A44(v124, v125, v126);
                    v31 = v165;
                    goto LABEL_95;
                }

LABEL_96:
                sub_1B2113A44(v36, v37, v38);
                if ((v31 & 1) == 0)
                {
                  return 0;
                }

                goto LABEL_97;
              }

LABEL_79:
              sub_1B21174CC();
              v98 = sub_1B2115134();
              sub_1B2113A44(v98, v99, v100);
              v101 = sub_1B2112A44();
              v27 = sub_1B2116638(v101, v102, v103);
              goto LABEL_80;
            }

LABEL_104:
            LOBYTE(v10) = 3;
            sub_1B21174CC();
            v158 = sub_1B2115134();
            sub_1B2113A44(v158, v159, v160);
            v161 = sub_1B2112A44();
            sub_1B2113A44(v161, v162, v163);
            v7 = 3;
LABEL_102:
            sub_1B2113A44(v8, v9, v10);
            v156 = sub_1B2116164();
            sub_1B2113A44(v156, v157, v7);
            return 0;
          case 2uLL:
            v91 = *(v8 + 16);
            v90 = *(v8 + 24);
            v20 = __OFSUB__(v90, v91);
            v89 = v90 - v91;
            if (!v20)
            {
              goto LABEL_75;
            }

            goto LABEL_106;
          case 3uLL:
            if (v86)
            {
              goto LABEL_104;
            }

            goto LABEL_79;
          default:
            v89 = BYTE6(v9);
            goto LABEL_75;
        }

      case 4:
        if (v10 != 4 || (v9 | v8) != 0)
        {
          goto LABEL_101;
        }

        v25 = sub_1B2116164();
        sub_1B2113A44(v25, v26, 4);
        v27 = 0;
        v28 = 0;
        v29 = 4;
        goto LABEL_81;
      default:
        if (*v3)
        {
          if (v10 != 1)
          {
            goto LABEL_101;
          }

          v11 = sub_1B2116164();
          v13 = sub_1B2116638(v11, v12, 0);
          sub_1B2113A44(v13, v14, 1);
          v15 = sub_1B2116164();
          sub_1B2113A44(v15, v16, 0);
          v19 = sub_1B21147CC();
          if (v21 ^ v20 | v22)
          {
            v21 = 0;
          }

          else
          {
            v21 = *&v8 < v18;
          }

          v22 = v21 && v19 == *&v8;
          if (!v22 || v5 != v17)
          {
            return 0;
          }
        }

        else
        {
          v66 = sub_1B2116164();
          v68 = sub_1B2116638(v66, v67, 0);
          sub_1B2113A44(v68, v69, 0);
          v70 = sub_1B2116164();
          sub_1B2113A44(v70, v71, 0);
          if (v5 != v8)
          {
            return 0;
          }
        }

        goto LABEL_97;
    }
  }
}

GRDBInternal::ForeignKey __swiftcall ForeignKey.init(_:to:)(Swift::OpaquePointer _, Swift::OpaquePointer_optional to)
{
  v2->_rawValue = _._rawValue;
  v2[1]._rawValue = to.value;
  result.destinationColumns = to;
  result.originColumns = _;
  return result;
}

{
  rawValue = to.value._rawValue;
  v47 = v6;
  v9 = *(_._rawValue + 2);
  v10 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v51 = MEMORY[0x1E69E7CC0];
    sub_1B2116B10(0, v9, 0, v2, v3, v4, v5);
    v11 = v51;
    v12 = _._rawValue + 32;
    do
    {
      sub_1B211EE68(v12, v48);
      v13 = v49;
      v14 = v50;
      sub_1B21139A0(v48, v49);
      v15 = (*(v14 + 16))(v13, v14);
      v17 = v16;
      sub_1B2113208(v48);
      v51 = v11;
      v23 = *(v11 + 16);
      v22 = *(v11 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1B2116B10(v22 > 1, v23 + 1, 1, v18, v19, v20, v21);
        v11 = v51;
      }

      *(v11 + 16) = v23 + 1;
      v24 = v11 + 16 * v23;
      *(v24 + 32) = v15;
      *(v24 + 40) = v17;
      v12 += 40;
      --v9;
    }

    while (v9);

    v10 = MEMORY[0x1E69E7CC0];
    if (rawValue)
    {
      goto LABEL_7;
    }

LABEL_14:
    v33 = 0;
    goto LABEL_16;
  }

  v11 = MEMORY[0x1E69E7CC0];
  if (!rawValue)
  {
    goto LABEL_14;
  }

LABEL_7:
  v32 = rawValue[2];
  if (v32)
  {
    v51 = v10;
    sub_1B2116B10(0, v32, 0, v28, v29, v30, v31);
    v33 = v51;
    v34 = (rawValue + 4);
    do
    {
      sub_1B211EE68(v34, v48);
      v35 = v49;
      v36 = v50;
      sub_1B21139A0(v48, v49);
      v37 = (*(v36 + 16))(v35, v36);
      v39 = v38;
      sub_1B2113208(v48);
      v51 = v33;
      v45 = *(v33 + 16);
      v44 = *(v33 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_1B2116B10(v44 > 1, v45 + 1, 1, v40, v41, v42, v43);
        v33 = v51;
      }

      *(v33 + 16) = v45 + 1;
      v46 = v33 + 16 * v45;
      *(v46 + 32) = v37;
      *(v46 + 40) = v39;
      v34 += 40;
      --v32;
    }

    while (v32);
  }

  else
  {

    v33 = MEMORY[0x1E69E7CC0];
  }

LABEL_16:
  *v47 = v11;
  v47[1] = v33;
  result.destinationColumns.value._rawValue = v26;
  result.originColumns._rawValue = v25;
  result.destinationColumns.is_nil = v27;
  return result;
}

uint64_t static ForeignKey.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (sub_1B21B8000(*a1, *a2))
  {
    if (v2)
    {
      if (v3)
      {
        v4 = sub_1B2115C84();
        if (sub_1B21B8000(v4, v5))
        {
          return 1;
        }
      }
    }

    else if (!v3)
    {
      return 1;
    }
  }

  return 0;
}

void sub_1B21B8BE4(uint64_t *__return_ptr a1@<X8>, void *__s1@<X0>, uint64_t a4@<X2>, unint64_t a5@<X3>)
{
  v14 = *MEMORY[0x1E69E9840];
  switch(a5 >> 62)
  {
    case 1uLL:
      if (a4 >> 32 < a4)
      {
        __break(1u);
      }

      goto LABEL_7;
    case 2uLL:
LABEL_7:
      v7 = sub_1B21B8D50();
      if (!v5)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    case 3uLL:
      if (__s1)
      {
        v7 = 1;
LABEL_8:
        *a1 = v7 & 1;
      }

      else
      {
        __break(1u);
LABEL_11:
        __break(1u);
LABEL_12:

        __break(1u);
      }

      return;
    default:
      __s2 = a4;
      v9 = a5;
      v10 = BYTE2(a5);
      v11 = BYTE3(a5);
      v12 = BYTE4(a5);
      v13 = BYTE5(a5);
      if (!__s1)
      {
        goto LABEL_11;
      }

      v7 = memcmp(__s1, &__s2, BYTE6(a5)) == 0;
      goto LABEL_8;
  }
}

int64_t sub_1B21B8D50()
{
  result = sub_1B21120AC();
  v4 = result;
  if (result)
  {
    result = sub_1B2251BE0();
    if (__OFSUB__(v2, result))
    {
LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v4 += v2 - result;
  }

  v5 = __OFSUB__(v1, v2);
  v6 = v1 - v2;
  if (v5)
  {
    __break(1u);
    goto LABEL_14;
  }

  result = sub_1B2251BD0();
  if (result >= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = result;
  }

  if (!v0)
  {
    goto LABEL_15;
  }

  if (!v4)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  return v4 == v0 || memcmp(v0, v4, v7) == 0;
}

uint64_t Configuration.label.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t Configuration.label.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t Configuration.busyMode.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 64);
  *(a1 + 16) = v4;
  return sub_1B212535C(v2, v3, v4);
}

uint64_t Configuration.qos.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Configuration(0) + 64);
  sub_1B2252120();
  sub_1B21118A0();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

void *Configuration.targetQueue.getter()
{
  v1 = *(v0 + *(type metadata accessor for Configuration(0) + 68));
  v2 = v1;
  return v1;
}

void *Configuration.writeTargetQueue.getter()
{
  v1 = *(v0 + *(type metadata accessor for Configuration(0) + 72));
  v2 = v1;
  return v1;
}

void Configuration.writeTargetQueue.setter()
{
  v2 = *(sub_1B2116170() + 72);

  *(v1 + v2) = v0;
}

uint64_t Configuration.automaticMemoryManagement.setter(char a1)
{
  result = type metadata accessor for Configuration(0);
  *(v1 + *(result + 76)) = a1;
  return result;
}

void sub_1B21B92BC(uint64_t a1)
{
  sub_1B21B9464(319, &qword_1ED85E668, MEMORY[0x1E69E6158]);
  if (v1 <= 0x3F)
  {
    sub_1B21B9508(319, &qword_1ED85E4F8, &qword_1EB7A2198, &unk_1B225B330, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1B21B9464(319, &unk_1ED85E500, &type metadata for Database.BusyMode);
      if (v3 <= 0x3F)
      {
        sub_1B2252120();
        if (v4 <= 0x3F)
        {
          sub_1B21B94B0(319);
          if (v5 <= 0x3F)
          {
            sub_1B21B9508(319, &qword_1ED85E4E8, &qword_1EB7A0F20, qword_1B2262540, MEMORY[0x1E69E6720]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1B21B9464(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1B2252B00();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B21B94B0(uint64_t a1)
{
  if (!qword_1ED85E4F0)
  {
    sub_1B2111770();
    v1 = sub_1B2252B00();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED85E4F0);
    }
  }
}

void sub_1B21B9508(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1B2161A20(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t PrimaryKeyInfo.rowIDColumn.getter()
{
  if (*(v0 + 16))
  {
    return 0;
  }

  v1 = *v0;

  return v1;
}

uint64_t sub_1B21B95B0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v34 = MEMORY[0x1E69E7CC0];
  result = sub_1B216ECE4(0, v6, 0);
  v27 = v5;
  v28 = v4;
  v29 = v6;
  v25 = a2;
  v26 = a1;
  if (v6)
  {
    v8 = (a2 + 40);
    v9 = (a1 + 40);
    while (v4)
    {
      if (!v5)
      {
        goto LABEL_22;
      }

      v10 = *v9;
      v11 = *v8;
      v31 = *(v8 - 1);
      v32 = *(v9 - 1);
      v13 = *(v34 + 16);
      v12 = *(v34 + 24);
      v33 = v13 + 1;

      if (v13 >= v12 >> 1)
      {
        result = sub_1B216ECE4(v12 > 1, v33, 1);
      }

      *(v34 + 16) = v33;
      v14 = (v34 + 32 * v13);
      v14[4] = v31;
      v14[5] = v11;
      --v5;
      v14[6] = v32;
      v14[7] = v10;
      --v4;
      v8 += 4;
      v9 += 2;
      if (!--v6)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  else
  {
LABEL_11:
    v15 = v29;
    v16 = (v25 + 32 * v29 + 40);
    for (i = (v26 + 16 * v29 + 40); v28 != v15; i += 2)
    {
      if (v15 >= v28)
      {
        goto LABEL_23;
      }

      if (__OFADD__(v15, 1))
      {
        goto LABEL_24;
      }

      if (v27 == v15)
      {
        break;
      }

      if (v15 >= v27)
      {
        goto LABEL_25;
      }

      v30 = v15;
      v18 = *(i - 1);
      v19 = *i;
      v20 = *(v16 - 1);
      v21 = *v16;
      v23 = *(v34 + 16);
      v22 = *(v34 + 24);

      if (v23 >= v22 >> 1)
      {
        result = sub_1B216ECE4(v22 > 1, v23 + 1, 1);
      }

      *(v34 + 16) = v23 + 1;
      v24 = (v34 + 32 * v23);
      v24[4] = v20;
      v24[5] = v21;
      v24[6] = v18;
      v24[7] = v19;
      v15 = v30 + 1;
      v16 += 4;
    }

    return v34;
  }

  return result;
}

void sub_1B21B97B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(a1 + 16);
  v39 = MEMORY[0x1E69E7CC0];
  sub_1B2116B10(0, v8, 0, a4, a5, a6, a7);
  v9 = a1 + 64;
  v10 = -1;
  v11 = -1 << *(a1 + 32);
  if (-v11 < 64)
  {
    v10 = ~(-1 << -v11);
  }

  v12 = v10 & *(a1 + 64);
  v13 = (63 - v11) >> 6;
  v38 = v8;
  if (v8)
  {

    v14 = 0;
    v8 = 0;
    while (v12)
    {
LABEL_10:
      v16 = sub_1B2252220();
      v22 = v21;
      v24 = *(v39 + 16);
      v23 = *(v39 + 24);
      if (v24 >= v23 >> 1)
      {
        v37 = v16;
        sub_1B2116B10(v23 > 1, v24 + 1, 1, v17, v18, v19, v20);
        v16 = v37;
      }

      ++v14;
      v12 &= v12 - 1;
      *(v39 + 16) = v24 + 1;
      v25 = v39 + 16 * v24;
      *(v25 + 32) = v16;
      *(v25 + 40) = v22;
      if (v14 == v38)
      {
        goto LABEL_15;
      }
    }

    while (1)
    {
      v15 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v15 >= v13)
      {
        goto LABEL_26;
      }

      v12 = *(v9 + 8 * v15);
      ++v8;
      if (v12)
      {
        v8 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {

LABEL_15:
    if (v12)
    {
      goto LABEL_20;
    }

    while (1)
    {
      v26 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v26 >= v13)
      {

        return;
      }

      v12 = *(v9 + 8 * v26);
      ++v8;
      if (v12)
      {
        v8 = v26;
        do
        {
LABEL_20:
          v31 = sub_1B2252220();
          v33 = v32;
          v35 = *(v39 + 16);
          v34 = *(v39 + 24);
          if (v35 >= v34 >> 1)
          {
            sub_1B2116B10(v34 > 1, v35 + 1, 1, v27, v28, v29, v30);
          }

          v12 &= v12 - 1;
          *(v39 + 16) = v35 + 1;
          v36 = v39 + 16 * v35;
          *(v36 + 32) = v31;
          *(v36 + 40) = v33;
        }

        while (v12);
      }
    }
  }

  __break(1u);
}

_OWORD *PrimaryKeyInfo.columns.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  if (*(v0 + 16))
  {
    if (v3 == 1)
    {
      v4 = *v0;
    }

    else
    {
      v4 = &unk_1F2969308;
    }
  }

  else
  {
    sub_1B21619D8(&qword_1EB7A0F88, &unk_1B22546A0);
    sub_1B2113B74();
    v4 = swift_allocObject();
    v4[1] = xmmword_1B22546B0;
    *(v4 + 4) = v2;
    *(v4 + 5) = v1;
  }

  sub_1B21414CC(v2, v1, v3);
  return v4;
}

uint64_t sub_1B21B9AA0()
{
  sub_1B211D64C();
  sub_1B2118060();
  v1();
  if (!v0)
  {
    v2 = v4;
  }

  return v2 & 1;
}

void sub_1B21B9C2C()
{
  sub_1B211F378();
  sub_1B21147E0();
  v0 = sub_1B2111A44();
  v1(v0);
  sub_1B212609C();
}

void sub_1B21B9CB0()
{
  sub_1B211F378();
  sub_1B21147E0();
  v0 = sub_1B2111A44();
  v1(v0);
  sub_1B212609C();
}

void sub_1B21B9D34()
{
  sub_1B211F378();
  sub_1B21147E0();
  v0 = sub_1B2111A44();
  v1(v0);
  sub_1B212609C();
}

void sub_1B21B9DB8()
{
  sub_1B211F378();
  sub_1B21147E0();
  v0 = sub_1B2111A44();
  v1(v0);
  sub_1B212609C();
}

float sub_1B21B9E0C()
{
  sub_1B211D64C();
  sub_1B2118060();
  v1();
  if (!v0)
  {
    return v3;
  }

  return result;
}

double sub_1B21B9E74()
{
  sub_1B211D64C();
  sub_1B2118060();
  v1();
  if (!v0)
  {
    return v3;
  }

  return result;
}

void *sub_1B21B9EDC(uint64_t a1)
{
  v4 = v1[5];
  v5 = v1[6];
  sub_1B21139A0(v1 + 2, v4);
  result = (*(v5 + 64))(&v7, MEMORY[0x1E69E6158], a1, MEMORY[0x1E69E6158], &protocol witness table for String, &protocol witness table for String, v4, v5);
  if (!v2)
  {
    return v7;
  }

  return result;
}

void sub_1B21B9F7C()
{
  sub_1B211F378();
  sub_1B21147E0();
  v0 = sub_1B2111A44();
  v1(v0);
  sub_1B212609C();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Database.checkForeignKeys()()
{
  Database.foreignKeyViolations()();
  if (!v0)
  {
    sub_1B21BCE80();
  }
}

uint64_t sub_1B21BA018(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!a2)
  {
    return !a4;
  }

  if (a2 == 1)
  {
    return a4 == 1;
  }

  if (a4 < 2)
  {
    return 0;
  }

  if (a1 != a3 || a2 != a4)
  {
    return sub_1B22531F0();
  }

  return 1;
}

uint64_t sub_1B21BA064(uint64_t a1, uint64_t a2)
{
  sub_1B2253420();
  if (a2)
  {
    if (a2 != 1)
    {
      MEMORY[0x1B2742F10](2);
      sub_1B2252370();
      return sub_1B2253470();
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x1B2742F10](v3);
  return sub_1B2253470();
}

uint64_t static Database.isSQLiteInternalTable(_:)()
{
  sub_1B211D964();
  sub_1B2124BC0(0x6574696C7173);
  if (sub_1B21BA174())
  {
    return 1;
  }

  sub_1B2124BC0(0x616D67617270);

  return sub_1B21BA174();
}

uint64_t sub_1B21BA174()
{

  do
  {
    while (1)
    {
      v0 = sub_1B2252410();
      if (!v1)
      {

        sub_1B2252410();
        v9 = v8;

        if (v9)
        {
          goto LABEL_15;
        }

        return 1;
      }

      v2 = v0;
      v3 = v1;
      v4 = sub_1B2252410();
      if (!v5)
      {

        return 1;
      }

      if (v2 != v4 || v3 != v5)
      {
        break;
      }
    }

    v7 = sub_1B22531F0();
  }

  while ((v7 & 1) != 0);

LABEL_15:

  return 0;
}

uint64_t sub_1B21BA35C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v11 = v4 + OBJC_IVAR____TtC12GRDBInternal8Database_schemaCache;
  swift_beginAccess();
  v12 = *(v11 + 8);
  sub_1B213E100(a1, a2);
  sub_1B213E100(a1, a2);
  sub_1B213E2CC(v12, v58);
  swift_endAccess();
  v13 = sub_1B21EF0F0();
  v71[0] = v58[0];
  sub_1B212AC5C(v71, &qword_1EB7A21D0, &qword_1B225B6B0);
  v70 = v58[1];
  sub_1B212AC5C(&v70, &qword_1EB7A21B0, &qword_1B225B690);
  v69 = v58[2];
  sub_1B212AC5C(&v69, &qword_1EB7A21B8, &qword_1B225B698);
  v68 = v58[3];
  sub_1B212AC5C(&v68, &qword_1EB7A21C0, &qword_1B225B6A0);
  v67 = v58[4];
  sub_1B212AC5C(&v67, &qword_1EB7A21C8, &qword_1B225B6A8);
  if (v13 != 1)
  {
    sub_1B213EA54(a1, a2);
    sub_1B213EA54(a1, a2);
    return v13;
  }

  sub_1B2252CD0();

  *&v54 = 0x20414D47415250;
  *(&v54 + 1) = 0xE700000000000000;
  v14 = 0xE400000000000000;
  v15 = 1886217588;
  if (a2 != 1)
  {
    v15 = a1;
    v14 = a2;
  }

  v53 = a4;
  v16 = a3;
  if (a2)
  {
    v17 = v15;
  }

  else
  {
    v17 = 1852399981;
  }

  if (a2)
  {
    v18 = v14;
  }

  else
  {
    v18 = 0xE400000000000000;
  }

  v79 = type metadata accessor for Row();
  sub_1B213E100(a1, a2);
  MEMORY[0x1B2741EB0](v17, v18);

  MEMORY[0x1B2741EB0](0x6C5F7865646E692ELL, 0xEC00000028747369);
  v48 = v16;
  MEMORY[0x1B2741EB0](v16, v53);
  MEMORY[0x1B2741EB0](34, 0xE100000000000000);
  MEMORY[0x1B2741EB0](34, 0xE100000000000000);

  MEMORY[0x1B2741EB0](41, 0xE100000000000000);
  v19 = v54;
  v56 = 0;
  v54 = 0u;
  v55 = 0u;
  v57[0] = MEMORY[0x1E69E7CC0];
  v57[1] = MEMORY[0x1E69E7CC8];
  v20 = static Row.fetchAll(_:sql:arguments:adapter:)(v6, v19, *(&v19 + 1), v57, &v54);
  if (v5)
  {
    sub_1B213EA54(a1, a2);
    sub_1B213EA54(a1, a2);

    sub_1B212AC5C(&v54, &qword_1EB7A1370, &unk_1B2257580);
    return v16;
  }

  v21 = v20;
  v52 = v6;
  v47 = v11;

  sub_1B212AC5C(&v54, &qword_1EB7A1370, &unk_1B2257580);
  v22 = 0;
  v50 = v21 & 0xC000000000000001;
  v51 = sub_1B2116B08();
  v79 = MEMORY[0x1E69E7CC0];
  v23 = v48;
  for (i = v21; ; v21 = i)
  {
    if (v51 == v22)
    {

      if (*(v79 + 16))
      {
        sub_1B213EA54(a1, a2);
        v38 = v11;
      }

      else
      {
        v38 = v11;
        v43 = sub_1B213E114(1, v23, v53);
        sub_1B213EA54(a1, a2);
        if ((v43 & 1) == 0)
        {

          swift_beginAccess();
          sub_1B213E2CC(*(v11 + 8), &v59);
          v44 = v59;
          v45 = v61;
          v46 = v62;
          swift_isUniquelyReferenced_nonNull_native();
          v57[0] = v45;
          sub_1B21AC048();
          v76 = v60;
          v75 = v44;
          v77 = v57[0];
          v78 = v46;
          swift_isUniquelyReferenced_nonNull_native();
          v57[0] = *(v47 + 8);
          sub_1B2148D50();
          *(v47 + 8) = v57[0];
          sub_1B213EA54(a1, a2);
          swift_endAccess();
          return 0;
        }
      }

      swift_beginAccess();
      v39 = *(v38 + 8);
      v16 = v79;

      sub_1B213E2CC(v39, &v63);
      v40 = v63;
      v41 = v65;
      v42 = v66;
      swift_isUniquelyReferenced_nonNull_native();
      v57[0] = v41;
      sub_1B21AC048();
      v72 = v64;
      v71[1] = v40;
      v73 = v57[0];
      v74 = v42;
      swift_isUniquelyReferenced_nonNull_native();
      v57[0] = *(v38 + 8);
      sub_1B2148D50();
      *(v38 + 8) = v57[0];
      sub_1B213EA54(a1, a2);
      swift_endAccess();
      return v16;
    }

    sub_1B21BF944(v22, v50 == 0, v21);
    if (v50)
    {
      result = MEMORY[0x1B27427E0](v22, v21);
      v24 = result;
    }

    else
    {
      v24 = *(v21 + 8 * v22 + 32);
    }

    if (__OFADD__(v22, 1))
    {
      break;
    }

    v57[0] = v24;
    sub_1B21BAABC(v57, v52, a1, a2, &v54);
    v26 = a1;
    v27 = a2;

    v28 = v54;
    v29 = v55;
    v30 = BYTE8(v55);
    if (*(&v54 + 1))
    {
      v31 = v79;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B216227C();
        v31 = v36;
      }

      v33 = *(v31 + 16);
      v32 = *(v31 + 24);
      v79 = v31;
      if (v33 >= v32 >> 1)
      {
        sub_1B216227C();
        v79 = v37;
      }

      v34 = v79;
      *(v79 + 16) = v33 + 1;
      v35 = v34 + 32 * v33;
      *(v35 + 32) = v28;
      *(v35 + 48) = v29;
      *(v35 + 56) = v30 & 1;
      v23 = v48;
    }

    else
    {
      sub_1B21C2654(v54, 0);
    }

    ++v22;
    a2 = v27;
    a1 = v26;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B21BAABC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a1;
  if (*(*a1 + 72) <= 1)
  {
    goto LABEL_48;
  }

  v9 = v6;
  v5 = *(v8 + 64);
  if (v5)
  {
    LOBYTE(v7) = 1;
    if (sqlite3_column_type(*(v8 + 64), 1) == 5)
    {
LABEL_49:
      v50 = xmmword_1B2259350;
      LOBYTE(v51) = v7;

      RowDecodingContext.init(row:key:)(v36, &v50, &v54);
      sub_1B21A2FC0();
      v9 = swift_allocError();
      v38 = v37;
      v50 = v54;
      v51 = v55;
      v52 = v56;
      v53 = v57;
      sub_1B21320F0(v5, 1, &v48);
      v46 = v48;
      v47 = v49;
      v39 = MEMORY[0x1E69E6158];
LABEL_51:
      sub_1B2183238(v39, &v50, &v46, v38);
      sub_1B2113A44(v46, *(&v46 + 1), v47);
      sub_1B218450C(&v54);
      swift_willThrow();
      goto LABEL_52;
    }

    if (!sqlite3_column_text(v5, 1))
    {
      goto LABEL_47;
    }

    v44 = sub_1B2252400();
    v45 = v13;
  }

  else
  {
    v44 = sub_1B212614C();
    v45 = v14;
    if (v6)
    {
      goto LABEL_52;
    }
  }

  if (*(v8 + 72) <= 2)
  {
LABEL_48:
    sub_1B2252EC0();
    __break(1u);
    goto LABEL_49;
  }

  v15 = *(v8 + 64);
  if (v15)
  {
    if (sqlite3_column_type(*(v8 + 64), 2) == 5)
    {
      v50 = xmmword_1B225B1F0;
      LOBYTE(v51) = 1;

      RowDecodingContext.init(row:key:)(v40, &v50, &v54);
      sub_1B21A2FC0();
      v9 = swift_allocError();
      v38 = v41;
      v50 = v54;
      v51 = v55;
      v52 = v56;
      v53 = v57;
      sub_1B21320F0(v15, 2, &v48);
      v46 = v48;
      v47 = v49;
      v39 = MEMORY[0x1E69E6370];
      goto LABEL_51;
    }

    v42 = sqlite3_column_int64(v15, 2) != 0;
    goto LABEL_13;
  }

  v16 = sub_1B21B9AA0();
  if (!v6)
  {
    v42 = v16;
LABEL_13:
    sub_1B2252CD0();

    *&v54 = 0x20414D47415250;
    *(&v54 + 1) = 0xE700000000000000;
    v17 = 0xE400000000000000;
    v18 = 1886217588;
    if (a4 != 1)
    {
      v18 = a3;
      v17 = a4;
    }

    if (a4)
    {
      v7 = v18;
    }

    else
    {
      v7 = 1852399981;
    }

    if (a4)
    {
      v19 = v17;
    }

    else
    {
      v19 = 0xE400000000000000;
    }

    type metadata accessor for Row();
    sub_1B213E100(a3, a4);
    MEMORY[0x1B2741EB0](v7, v19);

    MEMORY[0x1B2741EB0](0x695F7865646E692ELL, 0xEC000000286F666ELL);
    LOBYTE(v7) = v45;
    MEMORY[0x1B2741EB0](v44, v45);
    MEMORY[0x1B2741EB0](34, 0xE100000000000000);
    MEMORY[0x1B2741EB0](34, 0xE100000000000000);

    MEMORY[0x1B2741EB0](41, 0xE100000000000000);
    v20 = v54;
    *&v56 = 0;
    v54 = 0u;
    v55 = 0u;
    v50 = MEMORY[0x1E69E7CC0];
    v21 = static Row.fetchAll(_:sql:arguments:adapter:)(a2, v20, *(&v20 + 1), &v50, &v54);
    if (v6)
    {

      return sub_1B212AC5C(&v54, &qword_1EB7A1370, &unk_1B2257580);
    }

    v5 = v21;

    sub_1B212AC5C(&v54, &qword_1EB7A1370, &unk_1B2257580);

    *&v54 = sub_1B21C2494(v23);
    sub_1B21BF9E4(&v54);

    v24 = v54;
    v58 = sub_1B2116B08();
    v25 = 0;
    v26 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v58 == v25)
      {

        *a5 = v44;
        *(a5 + 8) = v45;
        *(a5 + 16) = v26;
        *(a5 + 24) = v42;
        return result;
      }

      if ((v24 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x1B27427E0](v25, v24);
      }

      else
      {
        if (v25 >= *(v24 + 16))
        {
          goto LABEL_45;
        }

        v27 = *(v24 + 8 * v25 + 32);
      }

      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (*(v27 + 72) <= 2)
      {
        goto LABEL_48;
      }

      v5 = *(v27 + 64);
      if (v5)
      {
        if (sqlite3_column_type(*(v27 + 64), 2) == 5)
        {
          goto LABEL_43;
        }

        if (!sqlite3_column_text(v5, 2))
        {
          goto LABEL_46;
        }

        v5 = sub_1B2252400();
        v29 = v28;
      }

      else
      {
        v30 = sub_1B21B9EDC(2);
        v29 = v31;
        if (!v31)
        {
LABEL_43:

          *a5 = 0;
          *(a5 + 8) = 0;
          *(a5 + 24) = 0;
          *(a5 + 16) = 0;
          return result;
        }

        v5 = v30;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B214400C();
        v26 = v34;
      }

      v32 = *(v26 + 16);
      v7 = v32 + 1;
      if (v32 >= *(v26 + 24) >> 1)
      {
        sub_1B214400C();
        v26 = v35;
      }

      *(v26 + 16) = v7;
      v33 = v26 + 16 * v32;
      *(v33 + 32) = v5;
      *(v33 + 40) = v29;
      ++v25;
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

LABEL_52:
  swift_unexpectedError();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1B21BB15C(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  if (*(*a1 + 72) <= 0)
  {
    goto LABEL_12;
  }

  v5 = *a2;
  v3 = *(v4 + 64);
  if (v3)
  {
    if (sqlite3_column_type(*(v4 + 64), 0) == 5)
    {
LABEL_13:
      v22 = 0uLL;
      LOBYTE(v23) = 1;

      RowDecodingContext.init(row:key:)(v10, &v22, &v26);
      sub_1B21A2FC0();
      swift_allocError();
      v12 = v11;
      v22 = v26;
      v23 = v27;
      v24 = v28;
      v25 = v29;
      sub_1B21320F0(v3, 0, &v20);
      v18 = v20;
      v19 = v21;
      v13 = MEMORY[0x1E69E6530];
      v14 = v12;
LABEL_15:
      sub_1B2183238(v13, &v22, &v18, v14);
      sub_1B2113A44(v18, *(&v18 + 1), v19);
      sub_1B218450C(&v26);
      swift_willThrow();
      goto LABEL_16;
    }

    v6 = sqlite3_column_int64(v3, 0);
  }

  else
  {
    sub_1B21B9DB8();
    if (v2)
    {
      goto LABEL_16;
    }
  }

  v3 = v6;
  if (*(v5 + 72) <= 0)
  {
LABEL_12:
    sub_1B2252EC0();
    __break(1u);
    goto LABEL_13;
  }

  v7 = *(v5 + 64);
  if (v7)
  {
    if (sqlite3_column_type(*(v5 + 64), 0) != 5)
    {
      v8 = sqlite3_column_int64(v7, 0);
      return v3 < v8;
    }

    v22 = 0uLL;
    LOBYTE(v23) = 1;

    RowDecodingContext.init(row:key:)(v15, &v22, &v26);
    sub_1B21A2FC0();
    swift_allocError();
    v17 = v16;
    v22 = v26;
    v23 = v27;
    v24 = v28;
    v25 = v29;
    sub_1B21320F0(v7, 0, &v20);
    v18 = v20;
    v19 = v21;
    v13 = MEMORY[0x1E69E6530];
    v14 = v17;
    goto LABEL_15;
  }

  sub_1B21B9DB8();
  if (!v2)
  {
    return v3 < v8;
  }

LABEL_16:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

BOOL Database.table<A>(_:hasUniqueKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = MEMORY[0x1EEE9AC00](a1);
  (*(v10 + 16))(&v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v11, v12, v8);
  v13 = sub_1B22526C0();
  v14 = v13;
  sub_1B21401E4(v13, a1, a2, v15, v16, v17, v18);
  v20 = v19;

  if (!v5)
  {
    v14 = v20 != 0;
    if (v20)
    {
    }
  }

  return v14;
}

void sub_1B21BB544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a2;
  sub_1B21B97B4(a1, a2, a3, a4, a5, a6, a7);
  if (!*(sub_1B2140648(v10) + 16) || (sub_1B213285C(&unk_1F29696E0), v11 = sub_1B211F670(), sub_1B2140704(v11, v12, v13, v14, v15, v16, v17, v18, v70, v71, v72, v74, v75, v78, v81, v82, v84, v86, v88, v89, v91, v92, v93, v94, v95, v96, v97, v98, vars0, vars8), sub_1B212601C(), (v8 & 1) != 0) || (sub_1B21229C4(), Database.primaryKey(_:)(), v7))
  {
LABEL_37:
  }

  else
  {
    v19 = v83;
    if (v87)
    {
      if (v87 == 1)
      {
        v20 = v83;
      }

      else
      {
        v20 = &unk_1F2969740;
      }
    }

    else
    {
      sub_1B21619D8(&qword_1EB7A0F88, &unk_1B22546A0);
      sub_1B2113B74();
      v20 = swift_allocObject();
      v20[1] = xmmword_1B22546B0;
      *(v20 + 4) = v83;
      *(v20 + 5) = v85;
    }

    v21 = *(v20 + 2);
    sub_1B212D6C4();
    if (v21)
    {
      v22 = sub_1B2113978();
      v25 = sub_1B21414CC(v22, v23, v24);
      sub_1B2117238(v25, v26, v27, v28, v29, v30, v31);
      v32 = v83;
      do
      {
        sub_1B2252220();
        sub_1B212D574();
        if (v34)
        {
          v36 = sub_1B2121FC4(v33);
          sub_1B2116B10(v36, swift_getObjectType, 1, v37, v38, v39, v40);
          v32 = v83;
        }

        sub_1B2135314();
      }

      while (!v35);
    }

    else
    {
      v41 = sub_1B2113978();
      sub_1B21414CC(v41, v42, v43);

      v32 = MEMORY[0x1E69E7CC0];
    }

    sub_1B2140648(v32);
    v44 = sub_1B211F670();
    sub_1B21414EC(v44, v45);
    sub_1B212601C();
    if (swift_getObjectType)
    {

      if (!v76)
      {
        sub_1B21619D8(&qword_1EB7A0F88, &unk_1B22546A0);
        sub_1B2113B74();
        v69 = swift_allocObject();
        *(v69 + 16) = xmmword_1B22546B0;
        *(v69 + 32) = v90;
        *(v69 + 40) = v79;
      }
    }

    else
    {
      sub_1B21424A0(v90, v79, v76);
      v46 = sub_1B21229C4();
      Database.indexes(on:)(v46, v47);
      sub_1B213CD20();
      v50 = MEMORY[0x1E69E7CC0];
      v73 = v51;
      v80 = v48;
      v77 = v49;
      while (1)
      {
        if (v32 == v48)
        {

          goto LABEL_37;
        }

        if (v32 >= *(v9 + 16))
        {
          break;
        }

        v52 = v49 + 32 * v32++;
        if (*(v52 + 24))
        {
          if (*(*(v52 + 16) + 16))
          {

            sub_1B214CB88(v53, v54, v55, v56, v57, v58, v59);
            v60 = v50;
            do
            {
              sub_1B2252220();
              sub_1B213CB78();
              if (v34)
              {
                v62 = sub_1B2121FC4(v61);
                sub_1B2116B10(v62, v19, 1, v63, v64, v65, v66);
                v60 = v50;
              }

              sub_1B214CBF8();
            }

            while (!v35);
            v9 = v73;
            v50 = MEMORY[0x1E69E7CC0];
          }

          else
          {

            v60 = v50;
          }

          sub_1B2140648(v60);
          v67 = sub_1B2112FD0();
          v19 = sub_1B21414EC(v67, v68);

          if (v19)
          {

            return;
          }

          v49 = v77;
          v48 = v80;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_1B21BB8F8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v7 = v4;
  v12 = v4 + OBJC_IVAR____TtC12GRDBInternal8Database_schemaCache;
  swift_beginAccess();
  v92 = v12;
  v13 = *(v12 + 8);
  sub_1B213E100(a1, a2);
  sub_1B213E100(a1, a2);
  sub_1B213E2CC(v13, v122);
  swift_endAccess();
  v14 = sub_1B21EF134();
  v135[0] = v122[0];
  sub_1B212AC5C(v135, &qword_1EB7A21D0, &qword_1B225B6B0);
  v134 = v122[1];
  sub_1B212AC5C(&v134, &qword_1EB7A21B0, &qword_1B225B690);
  v133 = v122[2];
  sub_1B212AC5C(&v133, &qword_1EB7A21B8, &qword_1B225B698);
  v132 = v122[3];
  sub_1B212AC5C(&v132, &qword_1EB7A21C0, &qword_1B225B6A0);
  v131 = v122[4];
  sub_1B212AC5C(&v131, &qword_1EB7A21C8, &qword_1B225B6A8);
  if (v14 != 1)
  {
    sub_1B213EA54(a1, a2);
    sub_1B213EA54(a1, a2);
    return v14;
  }

  sub_1B2252CD0();

  *&v118 = 0x20414D47415250;
  *(&v118 + 1) = 0xE700000000000000;
  v15 = 0xE400000000000000;
  v16 = 1886217588;
  if (a2 != 1)
  {
    v16 = a1;
    v15 = a2;
  }

  v103 = v7;
  if (a2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 1852399981;
  }

  if (a2)
  {
    v14 = v15;
  }

  else
  {
    v14 = 0xE400000000000000;
  }

  v143 = type metadata accessor for Row();
  sub_1B213E100(a1, a2);
  MEMORY[0x1B2741EB0](v17, v14);

  MEMORY[0x1B2741EB0](0xD000000000000012, 0x80000001B226E500);
  MEMORY[0x1B2741EB0](a3, a4);
  MEMORY[0x1B2741EB0](34, 0xE100000000000000);
  MEMORY[0x1B2741EB0](34, 0xE100000000000000);

  MEMORY[0x1B2741EB0](41, 0xE100000000000000);
  v18 = v118;
  *&v120 = 0;
  v118 = 0u;
  v119 = 0u;
  v114 = MEMORY[0x1E69E7CC0];
  v19 = static Row.fetchAll(_:sql:arguments:adapter:)(v103, v18, *(&v18 + 1), &v114, &v118);
  if (v5)
  {
    sub_1B213EA54(a1, a2);
    sub_1B213EA54(a1, a2);

    sub_1B212AC5C(&v118, &qword_1EB7A1370, &unk_1B2257580);
    return v14;
  }

  v20 = v19;
  v21 = a3;

  v102 = v20;

  sub_1B212AC5C(&v118, &qword_1EB7A1370, &unk_1B2257580);
  v101 = sub_1B2116B08();
  v99 = 0;
  v22 = 0;
  v94 = v20 & 0xFFFFFFFFFFFFFF8;
  v95 = v20 & 0xC000000000000001;
  v100 = 1;
  v143 = MEMORY[0x1E69E7CC0];
  v96 = a2;
  v97 = a3;
  v93 = a1;
  v98 = a4;
  while (v101 != v22)
  {
    if (v95)
    {
      v24 = MEMORY[0x1B27427E0](v22, v20);
      v23 = v143;
    }

    else
    {
      v23 = v143;
      if (v22 >= *(v94 + 16))
      {
        goto LABEL_82;
      }

      v24 = *(v20 + 8 * v22 + 32);
    }

    if (__OFADD__(v22, 1))
    {
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      sub_1B2252EC0();
      __break(1u);
LABEL_90:
      v114 = 0uLL;
      LOBYTE(v115) = 1;

      RowDecodingContext.init(row:key:)(v77, &v114, &v118);
      sub_1B21A2FC0();
      swift_allocError();
      v79 = v78;
      v114 = v118;
      v115 = v119;
      v116 = v120;
      v117 = v121;
      v80 = v20;
      v81 = 0;
LABEL_92:
      sub_1B21320F0(v80, v81, &v112);
      v110 = v112;
      v111 = v113;
      v84 = MEMORY[0x1E69E6530];
LABEL_96:
      sub_1B2183238(v84, &v114, &v110, v79);
      sub_1B2113A44(v110, *(&v110 + 1), v111);
      sub_1B218450C(&v118);
      swift_willThrow();
      while (1)
      {
        swift_unexpectedError();
        __break(1u);
      }
    }

    if (*(v24 + 72) <= 0)
    {
      goto LABEL_89;
    }

    v20 = *(v24 + 64);
    if (v20)
    {
      if (sqlite3_column_type(*(v24 + 64), 0) == 5)
      {
        goto LABEL_90;
      }

      v25 = sqlite3_column_int64(v20, 0);
    }

    else
    {
      sub_1B21B9DB8();
    }

    if (*(v24 + 72) <= 1)
    {
      goto LABEL_89;
    }

    v108 = v25;
    v20 = *(v24 + 64);
    if (v20)
    {
      if (sqlite3_column_type(*(v24 + 64), 1) == 5)
      {
        v114 = xmmword_1B2259350;
        LOBYTE(v115) = 1;

        RowDecodingContext.init(row:key:)(v82, &v114, &v118);
        sub_1B21A2FC0();
        swift_allocError();
        v79 = v83;
        v114 = v118;
        v115 = v119;
        v116 = v120;
        v117 = v121;
        v80 = v20;
        v81 = 1;
        goto LABEL_92;
      }

      v26 = sqlite3_column_int64(v20, 1);
    }

    else
    {
      sub_1B21B9DB8();
    }

    if (*(v24 + 72) <= 2)
    {
      goto LABEL_89;
    }

    v106 = v26;
    v20 = *(v24 + 64);
    if (v20)
    {
      if (sqlite3_column_type(*(v24 + 64), 2) == 5)
      {
        v114 = xmmword_1B225B1F0;
        LOBYTE(v115) = 1;

        RowDecodingContext.init(row:key:)(v85, &v114, &v118);
        sub_1B21A2FC0();
        swift_allocError();
        v79 = v86;
        v114 = v118;
        v115 = v119;
        v116 = v120;
        v117 = v121;
        v87 = v20;
        v88 = 2;
LABEL_95:
        sub_1B21320F0(v87, v88, &v112);
        v110 = v112;
        v111 = v113;
        v84 = MEMORY[0x1E69E6158];
        goto LABEL_96;
      }

      v27 = v22;
      if (!sqlite3_column_text(v20, 2))
      {
        goto LABEL_86;
      }

      v28 = sub_1B2252400();
    }

    else
    {
      v27 = v22;
      v28 = sub_1B212614C();
    }

    v30 = v28;
    v31 = v29;
    if (*(v24 + 72) <= 3)
    {
      goto LABEL_89;
    }

    v20 = *(v24 + 64);
    if (v20)
    {
      if (sqlite3_column_type(*(v24 + 64), 3) == 5)
      {
        v114 = xmmword_1B225B340;
        LOBYTE(v115) = 1;

        RowDecodingContext.init(row:key:)(v89, &v114, &v118);
        sub_1B21A2FC0();
        swift_allocError();
        v79 = v90;
        v114 = v118;
        v115 = v119;
        v116 = v120;
        v117 = v121;
        v87 = v20;
        v88 = 3;
        goto LABEL_95;
      }

      if (!sqlite3_column_text(v20, 3))
      {
        goto LABEL_87;
      }

      v32 = sub_1B2252400();
    }

    else
    {
      v32 = sub_1B212614C();
    }

    if (*(v24 + 72) <= 4)
    {
      goto LABEL_89;
    }

    v104 = v32;
    v105 = v33;
    v20 = *(v24 + 64);
    if (!v20)
    {
      ++v22;
      v35 = sub_1B21B9EDC(4);
LABEL_48:
      v34 = v35;
      v20 = v36;
      goto LABEL_49;
    }

    ++v22;
    if (sqlite3_column_type(*(v24 + 64), 4) != 5)
    {
      if (!sqlite3_column_text(v20, 4))
      {
        goto LABEL_88;
      }

      v35 = sub_1B2252400();
      goto LABEL_48;
    }

    v34 = 0;
    v20 = 0;
LABEL_49:
    if (v100 & 1 | (v99 != v108))
    {
      v91 = v6;
      sub_1B21619D8(&qword_1EB7A0EF0, &unk_1B225B6E0);
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_1B22546B0;
      *(v50 + 32) = v104;
      *(v50 + 40) = v105;
      *(v50 + 48) = v34;
      *(v50 + 56) = v20;
      *(v50 + 64) = v106;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B21622AC();
        v23 = v55;
      }

      a1 = v93;
      a4 = v98;
      v51 = v23;
      v52 = *(v23 + 16);
      v143 = v51;
      if (v52 >= *(v51 + 24) >> 1)
      {
        sub_1B21622AC();
        v143 = v56;
      }

      v100 = 0;
      v53 = v143;
      *(v143 + 16) = v52 + 1;
      v54 = (v53 + 32 * v52);
      v54[4] = v108;
      v54[5] = v30;
      v54[6] = v31;
      v54[7] = v50;
      v99 = v108;
      v6 = v91;
      a2 = v96;
      v21 = v97;
      v20 = v102;
    }

    else
    {

      v37 = *(v23 + 16);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if (!v37)
        {
          goto LABEL_83;
        }
      }

      else
      {
        sub_1B21956B4();
        v23 = v47;
        if (!v37)
        {
          goto LABEL_83;
        }
      }

      if (v37 > *(v23 + 16))
      {
        goto LABEL_84;
      }

      v143 = v23;
      v38 = v23 + 32 * v37;
      v41 = *(v38 + 24);
      v40 = (v38 + 24);
      v39 = v41;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v40 = v41;
      v43 = v6;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1B2162374();
        v39 = v48;
        *v40 = v48;
      }

      v44 = *(v39 + 16);
      if (v44 >= *(v39 + 24) >> 1)
      {
        sub_1B2162374();
        *v40 = v49;
      }

      v45 = *v40;
      *(v45 + 16) = v44 + 1;
      v46 = (v45 + 40 * v44);
      v46[4] = v104;
      v46[5] = v105;
      v46[6] = v34;
      v46[7] = v20;
      v46[8] = v106;
      v22 = v27 + 1;
      v6 = v43;
      a2 = v96;
      v21 = v97;
      a1 = v93;
      a4 = v98;
      v20 = v102;
    }
  }

  if (*(v143 + 16))
  {
    sub_1B213EA54(a1, a2);
    goto LABEL_68;
  }

  v68 = sub_1B213E114(1, v21, a4);
  v74 = v68;
  sub_1B213EA54(a1, a2);
  if (v74)
  {
LABEL_68:
    v57 = v143;
    v20 = *(v143 + 16);
    if (v20)
    {
      *&v114 = MEMORY[0x1E69E7CC0];
      sub_1B216EC98();
      v58 = 0;
      v14 = v114;
      v59 = (v57 + 56);
      do
      {
        if (v58 >= *(v143 + 16))
        {
          goto LABEL_85;
        }

        v60 = *(v59 - 3);
        v61 = *(v59 - 2);
        v62 = *(v59 - 1);
        v63 = *v59;

        sub_1B21BC734(v60, v61, v62, v63, v103, &v118);

        v64 = v118;
        v65 = v119;
        *&v114 = v14;
        v66 = *(v14 + 16);
        if (v66 >= *(v14 + 24) >> 1)
        {
          v107 = v119;
          v109 = v118;
          sub_1B216EC98();
          v65 = v107;
          v64 = v109;
          v14 = v114;
        }

        v58 = (v58 + 1);
        *(v14 + 16) = v66 + 1;
        v67 = v14 + 32 * v66;
        *(v67 + 32) = v64;
        *(v67 + 48) = v65;
        v59 += 4;
      }

      while (v20 != v58);

      a2 = v96;
    }

    else
    {

      v14 = MEMORY[0x1E69E7CC0];
    }

    swift_beginAccess();
    v70 = *(v92 + 8);

    sub_1B213E2CC(v70, &v127);
    v71 = v127;
    v73 = v129;
    v72 = v130;
    swift_isUniquelyReferenced_nonNull_native();
    *&v114 = v72;
    sub_1B21AC020();
    v136 = v128;
    v135[1] = v71;
    v137 = v73;
    v138 = v114;
    swift_isUniquelyReferenced_nonNull_native();
    *&v114 = *(v92 + 8);
    sub_1B2148D50();
    *(v92 + 8) = v114;
    sub_1B213EA54(a1, a2);
    swift_endAccess();
  }

  else
  {

    swift_beginAccess();
    sub_1B213E2CC(*(v92 + 8), &v123);
    v75 = v123;
    v76 = v126;
    v143 = v125;
    swift_isUniquelyReferenced_nonNull_native();
    *&v114 = v76;
    sub_1B21AC020();
    v140 = v124;
    v139 = v75;
    v141 = v143;
    v142 = v114;
    swift_isUniquelyReferenced_nonNull_native();
    *&v114 = *(v92 + 8);
    sub_1B2148D50();
    *(v92 + 8) = v114;
    sub_1B213EA54(a1, a2);
    swift_endAccess();
    return 0;
  }

  return v14;
}