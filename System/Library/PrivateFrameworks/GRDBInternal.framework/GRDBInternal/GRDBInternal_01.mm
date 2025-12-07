uint64_t sub_1B212499C()
{
  v1 = sub_1B211B888(&OBJC_IVAR____TtC12GRDBInternal8Database____lazy_storage___authorizer, type metadata accessor for StatementAuthorizer, 66, sub_1B21254D0);

  swift_beginAccess();
  return sqlite3_set_authorizer(*(v0 + 16), sub_1B211BD4C, v1);
}

uint64_t sub_1B2124A30(uint64_t result)
{
  v3 = result;
  v4 = 0;
  v5 = *(v1 + 32);
  v6 = *(v5 + 16);
  v7 = v5 + 40;
  while (v6 != v4)
  {
    if (v4 >= *(v5 + 16))
    {
      __break(1u);
      return result;
    }

    v8 = *(v7 - 8);
    v9 = v3;

    v8(&v9);

    if (v2)
    {
      return result;
    }

    ++v4;
    v7 += 16;
  }

  return result;
}

uint64_t sub_1B2124B1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Configuration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B2124B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);

  return type metadata accessor for QueryInterfaceRequest(0, v6, a3, a4);
}

void *sub_1B2124BD4()
{

  return memcpy((v0 + 3360), (v0 + 3536), 0xA3uLL);
}

uint64_t sub_1B2124BF0()
{
}

uint64_t sub_1B2124C08()
{
}

uint64_t sub_1B2124C20()
{
  v20 = sub_1B2252A10();
  sub_1B211280C();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  sub_1B2111844();
  v6 = v5 - v4;
  sub_1B22529C0();
  sub_1B21118A0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1B2111844();
  v8 = sub_1B2252120();
  sub_1B211280C();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  sub_1B2111844();
  v14 = v13 - v12;
  v15 = type metadata accessor for Configuration(0);
  v16 = *(v0 + *(v15 + 68));
  sub_1B2111770();
  if (v16)
  {
    v17 = v16;

    sub_1B2252100();
    sub_1B2126274();
    sub_1B21619D8(&qword_1EB7A21A0, &unk_1B225E830);
    sub_1B2124EF0();
    sub_1B2115144();
    sub_1B2252BC0();
    (*(v2 + 104))(v6, *MEMORY[0x1E69E8090], v20);
    sub_1B2115798();
    v18 = sub_1B2252A70();
  }

  else
  {
    (*(v10 + 16))(v14, v0 + *(v15 + 64), v8);
    sub_1B2126274();

    sub_1B21619D8(&qword_1EB7A21A0, &unk_1B225E830);
    sub_1B2124EF0();
    sub_1B2115144();
    sub_1B2252BC0();
    (*(v2 + 104))(v6, *MEMORY[0x1E69E8090], v20);
    sub_1B2115798();
    return sub_1B2252A70();
  }

  return v18;
}

unint64_t sub_1B2124EF0()
{
  result = qword_1ED85E788;
  if (!qword_1ED85E788)
  {
    sub_1B2161A20(&qword_1EB7A21A0, &unk_1B225E830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED85E788);
  }

  return result;
}

uint64_t sub_1B2124F54(uint64_t a1)
{
  if (qword_1ED85E6E8 != -1)
  {
    sub_1B211788C(&qword_1ED85E6E8);
  }

  sub_1B22529D0();
  if (v3)
  {

    __break(1u);
  }

  else
  {
    swift_allocObject();
    sub_1B2125020(a1);

    sub_1B22529F0();
  }

  return result;
}

uint64_t sub_1B2125020(uint64_t a1)
{
  *(v1 + 24) = 0;
  sub_1B21619D8(qword_1EB7A13D0, qword_1B2257E80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B2257570;
  *(v3 + 32) = a1;
  *(v1 + 16) = v3;
  return v1;
}

uint64_t sub_1B212507C()
{
  sub_1B212425C();
  sub_1B21251D8();
  v2 = sub_1B2125374();
  result = sub_1B2125420(v2, v3, v4, v5);
  if (!v0)
  {
    sub_1B2125680();
    sub_1B2124438();
    sub_1B212499C();
    v7 = v1 + OBJC_IVAR____TtC12GRDBInternal8Database_configuration;
    if ((*(v1 + OBJC_IVAR____TtC12GRDBInternal8Database_configuration + 1) & 1) == 0)
    {
      sub_1B211E54C();
      sub_1B211B888(v8, v9, 57, sub_1B212556C);
      sub_1B21574A4();
    }

    sub_1B2111BFC();
    sub_1B21261BC();
    sub_1B2124A30(v1);
    sub_1B2111BFC();
    sub_1B2126334();
    result = type metadata accessor for Configuration(0);
    v10 = (v7 + *(result + 84));
    if (*v10)
    {
      return (*v10)();
    }
  }

  return result;
}

uint64_t sub_1B212517C()
{
  result = sub_1B212507C();
  if (v0)
  {
    sub_1B213410C();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1B21251D8()
{
  v1 = v0 + OBJC_IVAR____TtC12GRDBInternal8Database_configuration;
  if (*(v0 + OBJC_IVAR____TtC12GRDBInternal8Database_configuration + 1) != 1 || (v2 = v1[88], v2 == 255))
  {
    v3 = *(v1 + 6);
    v4 = *(v1 + 7);
    v2 = v1[64];
  }

  else
  {
    v3 = *(v1 + 9);
    v4 = *(v1 + 10);
  }

  result = sub_1B212535C(*&v3, v4, v2);
  if (!v2)
  {
    v9 = v3 * 1000.0;
    if (COERCE__INT64(fabs(v3 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v9 > -2147483650.0)
    {
      if (v9 < 2147483650.0)
      {
        v10 = v9;
        swift_beginAccess();
        return sqlite3_busy_timeout(v0[2], v10);
      }

LABEL_15:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_15;
  }

  if (v2 == 1)
  {
    v6 = v0 + OBJC_IVAR____TtC12GRDBInternal8Database_busyCallback;
    v7 = *(v0 + OBJC_IVAR____TtC12GRDBInternal8Database_busyCallback);
    v8 = *(v0 + OBJC_IVAR____TtC12GRDBInternal8Database_busyCallback + 8);
    *v6 = v3;
    *(v6 + 1) = v4;
    sub_1B212535C(*&v3, v4, 1);

    sub_1B2112F4C(v7, v8);
    swift_beginAccess();
    sqlite3_busy_handler(v0[2], sub_1B223853C, v0);
    sub_1B2151FF0(*&v3, v4, 1);
    return sub_1B2151FF0(*&v3, v4, 1);
  }

  return result;
}

uint64_t sub_1B212535C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

uint64_t sub_1B2125374()
{
  if (*(v0 + OBJC_IVAR____TtC12GRDBInternal8Database_configuration + 24) == 1)
  {
    swift_beginAccess();
    return sub_1B223C0F8(*(v0 + 16));
  }

  else
  {
    swift_beginAccess();
    return sub_1B21253DC(*(v0 + 16));
  }
}

uint64_t sub_1B2125420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + OBJC_IVAR____TtC12GRDBInternal8Database_configuration) == 1)
  {
    v8[0] = MEMORY[0x1E69E7CC0];
    v8[1] = MEMORY[0x1E69E7CC8];
    v5._object = 0x80000001B226DCE0;
    v6 = v8;
    v5._countAndFlagsBits = 0xD000000000000018;
    Database.execute(sql:arguments:)(v5, *(&a4 - 1));
  }

  return result;
}

uint64_t sub_1B21254D0(uint64_t a1)
{
  sub_1B211B358();
  v3 = MEMORY[0x1E69E7CC0];
  *(v1 + 24) = sub_1B2252190();
  *(v1 + 32) = v3;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = 255;
  *(v1 + 16) = a1;
  swift_unownedRetain();

  return v1;
}

uint64_t sub_1B212556C(uint64_t a1)
{
  type metadata accessor for SavepointStack();
  v3 = swift_allocObject();
  v4 = MEMORY[0x1E69E7CC0];
  *(v3 + 16) = MEMORY[0x1E69E7CC0];
  *(v3 + 24) = v4;
  *(v1 + 32) = 0;
  *(v1 + 40) = v4;
  *(v1 + 48) = v4;
  *(v1 + 56) = 0;
  *(v1 + 16) = a1;
  *(v1 + 24) = v3;
  swift_unownedRetain();

  return v1;
}

uint64_t Database.add(function:)()
{
  sub_1B213CF68();
  sub_1B211A33C(v1);

  sub_1B2125808(v2, sub_1B21258C0, sub_1B2247318);
  swift_endAccess();

  return sub_1B2125CDC(v0);
}

uint64_t sub_1B2125680()
{
  if (qword_1ED85E8C0 != -1)
  {
    swift_once();
  }

  Database.add(function:)();
  if (qword_1ED85E738 != -1)
  {
    swift_once();
  }

  Database.add(function:)();
  if (qword_1ED85E728 != -1)
  {
    swift_once();
  }

  Database.add(function:)();
  if (qword_1ED85E740 != -1)
  {
    swift_once();
  }

  Database.add(function:)();
  if (qword_1ED85E760 != -1)
  {
    swift_once();
  }

  Database.add(function:)();
  if (qword_1ED85E750 != -1)
  {
    swift_once();
  }

  return Database.add(function:)();
}

uint64_t sub_1B2125808(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = v3;
  v7 = *v3;
  if ((*v3 & 0xC000000000000001) == 0)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v3;
    v11 = a1;
    goto LABEL_8;
  }

  if (v7 < 0)
  {
    v9 = *v3;
  }

  else
  {
    v9 = v7 & 0xFFFFFFFFFFFFFF8;
  }

  result = sub_1B2252C20();
  if (!__OFADD__(result, 1))
  {
    v13 = a3(v9, result + 1);
    v11 = a1;
    isUniquelyReferenced_nonNull_native = 1;
LABEL_8:
    result = a2(v11, isUniquelyReferenced_nonNull_native);
    *v5 = v13;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B21258C0(uint64_t a1, int a2)
{
  HIDWORD(v33) = a2;
  v4 = *v2;
  sub_1B2253420();
  sub_1B2252370();
  sub_1B2253450();
  v5 = sub_1B2253470();
  v13 = ~(-1 << *(v4 + 32));
  v14 = 1;
  while (1)
  {
    v15 = v5 & v13;
    v16 = (v5 & v13) >> 6;
    v17 = 1 << (v5 & v13);
    v18 = v17 & *(v4 + 56 + 8 * v16);
    if (!v18)
    {
      break;
    }

    type metadata accessor for DatabaseFunction();
    if (static DatabaseFunction.== infix(_:_:)(*(*(v4 + 48) + 8 * v15), a1))
    {
      v14 = 0;
      break;
    }

    v5 = v15 + 1;
  }

  v19 = *(v4 + 16);
  v20 = v19 + v14;
  if (__OFADD__(v19, v14))
  {
    __break(1u);
  }

  else
  {
    v21 = *(v4 + 24);
    v22 = v34;
    if (v21 < v20 || (v33 & 0x100000000) == 0)
    {
      if ((v33 & 0x100000000) != 0)
      {
        sub_1B2125E6C(v20, v6, v7, v8, v9, v10, v11, v12, v32, v33, v34, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54);
        goto LABEL_16;
      }

      if (v21 < v20)
      {
        sub_1B2125AE0(v20, v6, v7, v8, v9, v10, v11, v12, v32, v33, v34, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, vars0, vars8);
LABEL_16:
        v23 = *v22;
        sub_1B2253420();
        sub_1B2252370();
        sub_1B2253450();
        v24 = sub_1B2253470();
        v25 = ~(-1 << *(v23 + 32));
        while (1)
        {
          v15 = v24 & v25;
          v16 = (v24 & v25) >> 6;
          v17 = 1 << (v24 & v25);
          if ((v17 & *(v23 + 56 + 8 * v16)) == 0)
          {
            v22 = v35;
            if (v18)
            {
              goto LABEL_27;
            }

            goto LABEL_21;
          }

          type metadata accessor for DatabaseFunction();
          if (static DatabaseFunction.== infix(_:_:)(*(*(v23 + 48) + 8 * v15), a1))
          {
            break;
          }

          v24 = v15 + 1;
        }

        v22 = v35;
        if (!v18)
        {
          goto LABEL_27;
        }

        goto LABEL_24;
      }

      sub_1B22492CC();
    }

    if (v18)
    {
LABEL_24:
      v31 = *(*v22 + 48);
      result = *(v31 + 8 * v15);
      *(v31 + 8 * v15) = a1;
      return result;
    }

LABEL_21:
    v26 = *v22;
    *(*v22 + 8 * v16 + 56) |= v17;
    *(*(v26 + 48) + 8 * v15) = a1;
    v27 = *(v26 + 16);
    v28 = __OFADD__(v27, 1);
    v29 = v27 + 1;
    if (!v28)
    {
      result = 0;
      *(v26 + 16) = v29;
      return result;
    }
  }

  __break(1u);
LABEL_27:
  type metadata accessor for DatabaseFunction();
  result = sub_1B2253380();
  __break(1u);
  return result;
}

void sub_1B2125AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_1B2122614();
  v34 = v32;
  v35 = *v32;
  sub_1B21619D8(&qword_1EB7A34B0, &qword_1B226C258);
  v36 = sub_1B2252C70();
  if (*(v35 + 16))
  {
    v50 = v35;
    v37 = 0;
    v38 = v35 + 56;
    sub_1B21154D4();
    sub_1B2125FE8();
    v40 = v39 >> 6;
    if (v33)
    {
      while (1)
      {
        sub_1B2149880();
LABEL_9:
        v45 = *(*(v35 + 48) + 8 * (v41 | (v37 << 6)));
        sub_1B224B4B4();

        sub_1B2252370();
        sub_1B2253450();
        sub_1B2253470();
        sub_1B211647C();
        sub_1B213CF74();
        if (v46)
        {
          break;
        }

        sub_1B2112110();
LABEL_17:
        sub_1B2111AE8();
        sub_1B213CBD0();
        *(v49 + 8 * v48) = v45;
        sub_1B212D15C();
        v35 = v50;
        if (!v33)
        {
          goto LABEL_4;
        }
      }

      sub_1B2114850();
      while (1)
      {
        sub_1B211FE98();
        if (v46)
        {
          if (v47)
          {
            break;
          }
        }

        sub_1B224B4EC();
        sub_1B212E31C();
        if (!v46)
        {
          sub_1B2118398();
          goto LABEL_17;
        }
      }
    }

    else
    {
LABEL_4:
      v42 = v37;
      while (1)
      {
        v37 = v42 + 1;
        if (__OFADD__(v42, 1))
        {
          break;
        }

        if (v37 >= v40)
        {

          v34 = v32;
          goto LABEL_21;
        }

        ++v42;
        if (*(v38 + 8 * v37))
        {
          sub_1B211667C();
          v33 = v44 & v43;
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v34 = v36;
    sub_1B2115CEC();
  }
}

uint64_t sub_1B2125C70(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    type metadata accessor for DatabaseFunction.AggregateDefinition();
  }

  else
  {
    type metadata accessor for DatabaseFunction.FunctionDefinition();
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_1B2125E64(a1, a2);
  return v5;
}

uint64_t sub_1B2125CDC(uint64_t a1)
{
  v3 = *(v1 + 56);
  v4 = sub_1B2125C70(*(v1 + 40), *(v1 + 48), *(v1 + 56));
  swift_beginAccess();
  v5 = *(a1 + 16);
  v6 = *(v1 + 32);
  if (*(v1 + 36))
  {
    v7 = 2049;
  }

  else
  {
    v7 = 1;
  }

  v8 = sub_1B2252350();
  v9 = v3 == 0;
  if (v3)
  {
    v10 = 0;
  }

  else
  {
    v10 = sub_1B224DD98;
  }

  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = sub_1B224E294;
  }

  if (v9)
  {
    v12 = 0;
  }

  else
  {
    v12 = sub_1B224E3D8;
  }

  swift_unknownObjectRetain();
  function_v2 = sqlite3_create_function_v2(v5, (v8 + 32), v6, v7, v4, v10, v11, v12, sub_1B2134398);

  if (!function_v2)
  {
    return swift_unknownObjectRelease();
  }

  v15 = Database.lastErrorMessage.getter();
  if (!v16)
  {
    if (!sqlite3_errstr(function_v2))
    {
      __break(1u);
    }

    v15 = sub_1B22523F0();
  }

  LODWORD(v29) = function_v2;
  sub_1B2112F20(v15, v16, v17, v18, v19, v20, v21, v22, xDestroy, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void sub_1B2125E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_1B212D010();
  v34 = v30;
  sub_1B21181AC();
  sub_1B21619D8(&qword_1EB7A34B0, &qword_1B226C258);
  sub_1B2115F64();
  sub_1B2252C70();
  sub_1B224B1C8();
  if (!v35)
  {
LABEL_23:

    *v34 = v32;
    sub_1B212CE34();
    return;
  }

  v36 = 0;
  v37 = v31 + 7;
  sub_1B21154D4();
  sub_1B224B578();
  if (!v30)
  {
LABEL_4:
    v39 = v36;
    while (1)
    {
      v36 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v36 >= v33)
      {
        break;
      }

      ++v39;
      if (v37[v36])
      {
        sub_1B211667C();
        v34 = (v41 & v40);
        goto LABEL_9;
      }
    }

    sub_1B211DAB8();
    if (v47 != v48)
    {
      sub_1B2113B98();
      *v37 = v49;
    }

    else
    {
      v50 = sub_1B2122A88();
      sub_1B2148CEC(v50, v51, (v31 + 7));
    }

    v34 = v30;
    v31[2] = 0;
    goto LABEL_23;
  }

  while (1)
  {
    sub_1B2125FF4();
LABEL_9:
    v42 = *(v31[6] + 8 * (v38 | (v36 << 6)));
    sub_1B2253420();
    sub_1B2252370();
    sub_1B2253450();
    sub_1B2253470();
    sub_1B211647C();
    sub_1B213CF74();
    if (v43)
    {
      break;
    }

    sub_1B2112110();
LABEL_17:
    sub_1B2111AE8();
    sub_1B212D8C4();
    *(v46 + 8 * v45) = v42;
    sub_1B212D15C();
    if (!v34)
    {
      goto LABEL_4;
    }
  }

  sub_1B2114850();
  while (1)
  {
    sub_1B211FE98();
    if (v43)
    {
      if (v44)
      {
        break;
      }
    }

    sub_1B224B4EC();
    sub_1B2134C2C();
    if (!v43)
    {
      sub_1B2118398();
      goto LABEL_17;
    }
  }

LABEL_25:
  __break(1u);
}

uint64_t sub_1B212601C()
{
}

void *sub_1B2126034(void *a1)
{

  return memcpy(a1, &STACK[0x3F8], 0xA3uLL);
}

BOOL static DatabaseFunction.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a2 + 32);
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return v2 == v3;
  }

  v5 = sub_1B22531F0();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t sub_1B212614C()
{
  sub_1B211D64C();
  sub_1B2118060();
  result = v1();
  if (!v0)
  {
    return v3;
  }

  return result;
}

const char *sub_1B21261BC()
{
  swift_beginAccess();
  result = sqlite3_extended_result_codes(*(v0 + 16), 1);
  if (result)
  {
    v2 = result;
    result = sqlite3_errmsg(*(v0 + 16));
    if (result)
    {
      v3 = sub_1B22523F0();
      v5 = v4;
      sub_1B21AC298();
      swift_allocError();
      *v6 = v2;
      *(v6 + 8) = v3;
      *(v6 + 16) = v5;
      *(v6 + 24) = 0u;
      *(v6 + 40) = 0u;
      *(v6 + 56) = 0;
      return swift_willThrow();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

unint64_t sub_1B2126274()
{
  result = qword_1ED85E780;
  if (!qword_1ED85E780)
  {
    sub_1B22529C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED85E780);
  }

  return result;
}

uint64_t sub_1B21262E4()
{
}

uint64_t sub_1B2126304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{

  return sub_1B22524A0();
}

uint64_t sub_1B2126334()
{
  result = sub_1B212641C(0xD000000000000023, 0x80000001B2270FB0, 0);
  if (!v0)
  {
    v2[0] = 0;
    v2[1] = 0;
    sub_1B2133AC8(v2);

    sub_1B2133BF0();
  }

  return result;
}

uint64_t sub_1B21263D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = (v2 + a2);
  v7 = *(v2 + a2);
  v6 = v5[1];
  *v5 = v3;
  v5[1] = a1;

  return sub_1B2120024(v7, v6);
}

uint64_t sub_1B21263F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, ...)
{
  va_start(va, a49);

  return sub_1B2127DC0(va, &a29);
}

uint64_t sub_1B212641C(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  type metadata accessor for SQLStatementCursor();
  v24[0] = 0;
  v24[1] = 0;
  swift_initStackObject();

  sub_1B211B748(v8, a1, a2, v24, a3);
  v9 = sub_1B211B804();
  if (!v3)
  {
    v4 = v9;
    if (v9)
    {
      if (sub_1B211B804())
      {

        v13 = sub_1B21AC298();
        v14 = sub_1B21152FC(&type metadata for DatabaseError, v13);
        sub_1B2112244(v14, v15);
        *(v16 + 8) = 0xD00000000000007ELL;
        *(v16 + 16) = 0x80000001B22701A0;
        sub_1B2112DE8(v17, v16);

        v18 = sub_1B21AC298();
        v19 = sub_1B21152FC(&type metadata for DatabaseError, v18);
        sub_1B2112244(v19, v20);
        *(v21 + 8) = 0xD00000000000007ELL;
        *(v21 + 16) = 0x80000001B22701A0;
        sub_1B2112DE8(v22, v21);
      }
    }

    else
    {
      v10 = sub_1B21AC298();
      v11 = sub_1B21152FC(&type metadata for DatabaseError, v10);
      *v12 = 1;
      *(v12 + 8) = xmmword_1B2265CF0;
      sub_1B2112DE8(v11, v12);
    }
  }

  return v4;
}

uint64_t RowCursor._isDone.setter(char a1)
{
  sub_1B2116AD0();
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

uint64_t Data.databaseValue.getter@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 3;
  return sub_1B2126638(a1, a2);
}

uint64_t sub_1B2126638(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_1B2126690(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1B21266AC(uint64_t a1, uint64_t a2, int a3, sqlite3_stmt *a4, int a5)
{
  LODWORD(v7) = a3;
  v10 = sub_1B2251BC0();
  if (!v10)
  {
LABEL_4:
    v12 = __OFSUB__(a2, a1);
    v13 = a2 - a1;
    if (v12)
    {
      __break(1u);
    }

    else
    {
      v14 = sub_1B2251BD0();
      if (v14 >= v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = v14;
      }

      if (v10)
      {
        v7 = v15;
      }

      else
      {
        v7 = 0;
      }

      if (v7 >= 0xFFFFFFFF80000000)
      {
        if (v7 <= 0x7FFFFFFF)
        {
          if (qword_1ED85E010 == -1)
          {
            return sqlite3_bind_blob(a4, a5, v10, v7, qword_1ED861908);
          }

LABEL_18:
          swift_once();
          return sqlite3_bind_blob(a4, a5, v10, v7, qword_1ED861908);
        }

LABEL_17:
        __break(1u);
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  result = sub_1B2251BE0();
  if (!__OFSUB__(a1, result))
  {
    v10 += a1 - result;
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B21267A8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

unint64_t sub_1B2126864@<X0>(uint64_t a1@<X8>, sqlite3_stmt *a2@<X0>)
{
  result = sub_1B2126824(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 4) = BYTE4(result) & 1;
  }

  return result;
}

unint64_t sub_1B21268B4(unint64_t result, uint64_t a2)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_1B21268C8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

int64_t sub_1B21268D4(int64_t result, uint64_t a2, char a3, int64_t a4, unsigned int a5, char a6, uint64_t a7, uint64_t a8)
{
  if (a6 & 1) != 0 || (a3)
  {
    goto LABEL_30;
  }

  if (a4 < result)
  {
    goto LABEL_28;
  }

  if (a5 != a2)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    return result;
  }

  if (result != a4)
  {
    v10 = 0;
    v12 = a8 + 64;
    v23 = a8 + 72;
    while (!__OFADD__(v10++, 1))
    {
      if (result < 0)
      {
        goto LABEL_24;
      }

      v14 = 1 << *(a8 + 32);
      if (result >= v14)
      {
        goto LABEL_24;
      }

      v15 = result >> 6;
      v16 = *(v12 + 8 * (result >> 6));
      if (((v16 >> result) & 1) == 0)
      {
        goto LABEL_25;
      }

      if (*(a8 + 36) != a2)
      {
        goto LABEL_26;
      }

      v17 = v16 & (-2 << (result & 0x3F));
      if (v17)
      {
        result = __clz(__rbit64(v17)) | result & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v18 = v15 << 6;
        v19 = v15 + 1;
        v20 = (v23 + 8 * v15);
        while (v19 < (v14 + 63) >> 6)
        {
          v22 = *v20++;
          v21 = v22;
          v18 += 64;
          ++v19;
          if (v22)
          {
            sub_1B21268C8(result, a2, 0);
            result = __clz(__rbit64(v21)) + v18;
            goto LABEL_20;
          }
        }

        sub_1B21268C8(result, a2, 0);
        result = v14;
      }

LABEL_20:
      if (*(a8 + 36) != a5)
      {
        goto LABEL_27;
      }

      a2 = a5;
      if (result == a4)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  return 0;
}

double sub_1B2126A58(uint64_t a1)
{
  v3 = sub_1B212EBC0(a1);
  if (!v1)
  {
    sub_1B212D2E0(v3);
    v2 = v5;
  }

  return v2;
}

uint64_t DatabaseValueConvertible<>.databaseValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v11 - v8;
  sub_1B2252560();
  (*(a5 + 24))(AssociatedTypeWitness, a5);
  return (*(v7 + 8))(v9, AssociatedTypeWitness);
}

uint64_t RowCursor._isDone.getter()
{
  sub_1B21115FC();
  swift_beginAccess();
  return *(v0 + 24);
}

uint64_t sub_1B2126C7C@<X0>(uint64_t *a1@<X8>)
{
  result = RowCursor._element(sqliteStatement:)();
  *a1 = result;
  return result;
}

Swift::Int32 __swiftcall Data.bind(to:at:)(Swift::OpaquePointer to, Swift::Int32 at)
{
  v15[3] = *MEMORY[0x1E69E9840];
  switch(v3 >> 62)
  {
    case 1uLL:
      v11 = v2 >> 32;
      if (v2 >> 32 < v2)
      {
        __break(1u);
      }

      v10 = v2;
      return sub_1B21266AC(v10, v11, v3, to._rawValue, at);
    case 2uLL:
      v10 = *(v2 + 16);
      v11 = *(v2 + 24);
      return sub_1B21266AC(v10, v11, v3, to._rawValue, at);
    case 3uLL:
      memset(v15, 0, 14);
      if (qword_1ED85E010 != -1)
      {
        sub_1B2117640();
        swift_once();
      }

      v7 = qword_1ED861908;
      rawValue = to._rawValue;
      v9 = at;
      v6 = 0;
      return sqlite3_bind_blob(rawValue, v9, v15, v6, v7);
    default:
      v15[0] = v2;
      LOWORD(v15[1]) = v3;
      BYTE2(v15[1]) = BYTE2(v3);
      BYTE3(v15[1]) = BYTE3(v3);
      BYTE4(v15[1]) = BYTE4(v3);
      BYTE5(v15[1]) = BYTE5(v3);
      v6 = BYTE6(v3);
      if (qword_1ED85E010 != -1)
      {
        sub_1B2117640();
        v14 = v13;
        swift_once();
        v6 = v14;
      }

      v7 = qword_1ED861908;
      rawValue = to._rawValue;
      v9 = at;
      return sqlite3_bind_blob(rawValue, v9, v15, v6, v7);
  }
}

void Row.fastDecodeIfPresent<A>(_:atUncheckedIndex:)()
{
  sub_1B2111640();
  sub_1B224B23C();
  sub_1B2117214();
  sub_1B214EC88();
  v0();
  sub_1B2112FDC();
}

void sub_1B2126F30()
{
  sub_1B2111640();
  v31 = v0;
  v2 = v1;
  v4 = v3;
  v30[0] = v5;
  v30[1] = v6;
  v8 = v7;
  v38 = v9;
  v10 = sub_1B2252B00();
  sub_1B211280C();
  v12 = v11;
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v30 - v14;
  v17 = *v8;
  v16 = v8[1];
  v18 = *(v8 + 16);
  v35 = v17;
  v36 = v16;
  v37 = v18;
  v19 = sub_1B211A314();
  v20(v19, v4, v2);
  if (sub_1B2122A98(v15, 1, v4) == 1)
  {
    (*(v12 + 8))(v15, v10);
    if (v18 != 4 || v16 | v17)
    {
      sub_1B211DA70();
      v26(v24, v25);
      v32 = v17;
      v33 = v16;
      v34 = v18;
      sub_1B21A2FC0();
      swift_allocError();
      sub_1B211D7D8();
      sub_1B2183238(v4, v27, v28, v29);
      sub_1B2111C54();
      swift_willThrow();
      goto LABEL_8;
    }

    v21 = 1;
    v22 = v38;
  }

  else
  {
    sub_1B2111808();
    (*(v23 + 32))(v38, v15, v4);
    v21 = 0;
    v22 = v38;
  }

  sub_1B21117B4(v22, v21, 1, v4);
LABEL_8:
  sub_1B2112FDC();
}

uint64_t DatabaseValue.Storage.value.getter@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  switch(a3)
  {
    case 1:
      v4 = MEMORY[0x1E69E63B0];
      v5 = &protocol witness table for Double;
      goto LABEL_7;
    case 2:
      *(a4 + 24) = MEMORY[0x1E69E6158];
      *(a4 + 32) = &protocol witness table for String;
      *a4 = result;
      *(a4 + 8) = a2;

      break;
    case 3:
      *(a4 + 24) = MEMORY[0x1E6969080];
      *(a4 + 32) = &protocol witness table for Data;
      *a4 = result;
      *(a4 + 8) = a2;
      result = sub_1B2126638(result, a2);
      break;
    case 4:
      *(a4 + 32) = 0;
      *a4 = 0u;
      *(a4 + 16) = 0u;
      break;
    default:
      v4 = MEMORY[0x1E69E7360];
      v5 = &protocol witness table for Int64;
LABEL_7:
      *(a4 + 24) = v4;
      *(a4 + 32) = v5;
      *a4 = result;
      break;
  }

  return result;
}

uint64_t Row.scopes.getter()
{
  v1 = v0[6];
  sub_1B21139A0(v0 + 2, v0[5]);
  sub_1B21115FC();
  swift_beginAccess();
  v2 = *(v1 + 24);

  sub_1B224B54C();
  v2();
}

void *sub_1B212728C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  sub_1B21268B4(v1, v2);
  sub_1B212AC5C(v0 + 48, &qword_1EB7A3258, &qword_1B226A770);

  return v0;
}

uint64_t sub_1B21272FC(void (*a1)(void), uint64_t a2)
{
  a1(*(v2 + 16));
  a1(*(v2 + 24));

  return swift_deallocObject();
}

uint64_t sub_1B212735C()
{
  sub_1B2113A44(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  sub_1B2113B74();

  return swift_deallocObject();
}

uint64_t sub_1B212739C(uint64_t a1)
{
  sub_1B213B9FC(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80), *(v1 + 88), *(v1 + 96), *(v1 + 104), *(v1 + 112), *(v1 + 120), *(v1 + 128), *(v1 + 136), *(v1 + 144), *(v1 + 152), *(v1 + 160), *(v1 + 168), *(v1 + 176) | (*(v1 + 178) << 16));

  return swift_deallocObject();
}

uint64_t sub_1B2127424()
{
  sub_1B2114864();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1B211280C();
  v3 = v2;
  v4 = (*(v2 + 80) + 56) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1B21274EC()
{

  sub_1B2113B74();

  return swift_deallocObject();
}

uint64_t sub_1B2127528(void (*a1)(void))
{

  a1(*(v1 + 24));
  sub_1B2111904();

  return swift_deallocObject();
}

uint64_t sub_1B2127574()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1B21275B4()
{

  if (*(v0 + 32) >= 2uLL)
  {
  }

  return swift_deallocObject();
}

_OWORD *sub_1B2127608(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_1B2127620(uint64_t a1)
{
  v3 = sub_1B212EBC0(a1);
  if (!v2)
  {
    v1 = sub_1B21322A0(v3);
  }

  return v1 & 1;
}

uint64_t static FetchableRecord.fetchAll(_:arguments:adapter:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = sub_1B2115D98(a1, a2, a3, a4, a5, a6, a7, a8, v14);
  if (!v8)
  {
    v12 = sub_1B22526A0();
    type metadata accessor for RecordCursor(0, a4, a5, v13);
    swift_getWitnessTable();
    sub_1B2111C38();
    swift_getWitnessTable();
    RangeReplaceableCollection.init<A>(_:)(v12, &v15);
    return v15;
  }

  return result;
}

uint64_t RecordCursor._isDone.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

void sub_1B21277F4()
{
  sub_1B2114EB4();
  if (!(v2 ^ v3 | v1))
  {
    sub_1B211D518();
    sub_1B2127B64();
    *v0 = v4;
  }
}

void *SQLInterpolation.appendInterpolation<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x1EEE9AC00](a1);
  (*(v6 + 16))(v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v11[0] = sub_1B2252490();
  v11[1] = v7;
  LOBYTE(v11[2]) = 2;
  sub_1B2127D7C(v11);
  memcpy(v12, v11, 0xA3uLL);
  sub_1B2127AE0(v12);
  sub_1B2127D18();
  v8 = *(*v3 + 16);
  sub_1B21277F4();
  v9 = *v3;
  *(v9 + 16) = v8 + 1;
  result = memcpy((v9 + 184 * v8 + 32), v12, 0xB8uLL);
  *v3 = v9;
  return result;
}

void Database.cachedStatement(literal:)()
{
  sub_1B2118164();
  swift_allocObject();
  sub_1B2114D98(0, v2, v3, v4, v5, v6, v7);
  sub_1B2116B4C();
  sub_1B21159FC();
  type metadata accessor for SQLGenerationContext();
  v8 = swift_allocObject();

  v10 = sub_1B2117868(v9);
  v17 = sub_1B211D790(v10, v11, v12, v13, v14, v15, v16);
  if (v8)
  {
    goto LABEL_2;
  }

  sub_1B21144D4(v17, v18, v19, v20, v21, v22, v23, v24, v28[0]);

  Database.cachedStatement(sql:)(v1, v0);

  if (!*(v28[0] + 16) && !*(v28[1] + 16))
  {

    goto LABEL_4;
  }

  v26 = v28;
  Statement.setArguments(_:)(*(&v25 - 1));

  if (v27)
  {
LABEL_2:
  }

LABEL_4:
  sub_1B2117E1C();
}

void *sub_1B2127AE0(void *result)
{
  v1 = result[13] & 1;
  v2 = result[20] & 0xE000000000FFC1FFLL | 0x800000000000000;
  result[8] &= 1uLL;
  result[13] = v1;
  result[20] = v2;
  return result;
}

void sub_1B2127B64()
{
  sub_1B2114660();
  if ((v4 & 1) == 0 || (sub_1B2115F84(), v5 == v6))
  {
LABEL_6:
    sub_1B2111EF8();
    if (v3)
    {
      v13 = sub_1B2113B10(v7, v8, v9, v10, v11, v12);
      v14 = sub_1B21169D8(v13);
      v15 = j__malloc_size(v14);
      sub_1B2117B94(v15);
      if (v2)
      {
LABEL_8:
        v16 = sub_1B2117B84();
        v1(v16);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    sub_1B2115B30();
    goto LABEL_11;
  }

  sub_1B212CD14();
  if (!v5)
  {
    sub_1B2115544();
    goto LABEL_6;
  }

  __break(1u);
}

GRDBInternal::SQLInterpolation __swiftcall SQLInterpolation.init(literalCapacity:interpolationCount:)(GRDBInternal::SQLInterpolation literalCapacity, Swift::Int interpolationCount)
{
  v3 = v2;
  if (__OFADD__(interpolationCount, 1))
  {
    __break(1u);
  }

  else
  {
    v2->elements._rawValue = MEMORY[0x1E69E7CC0];
    sub_1B2127C14();
    v3->elements._rawValue = literalCapacity.elements._rawValue;
  }

  return literalCapacity;
}

Swift::Void __swiftcall SQLInterpolation.appendLiteral(_:)(Swift::String a1)
{
  v3 = HIBYTE(a1._object) & 0xF;
  if ((a1._object & 0x2000000000000000) == 0)
  {
    v3 = a1._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    __src = a1;
    v14 = MEMORY[0x1E69E7CC0];
    v15 = MEMORY[0x1E69E7CC8];
    sub_1B2114CC4(&__src);

    sub_1B2127D18();
    sub_1B21277F4();
    sub_1B2115E28(v4, v5, v6, v7, v8, v9, v10, v11, v12);
    *v1 = v2;
  }
}

void sub_1B2127D18()
{
  v2 = sub_1B2115E10();
  *v1 = v0;
  if (!v2)
  {
    sub_1B2115530();
    sub_1B2127B64();
    *v1 = v3;
  }
}

uint64_t sub_1B2127D7C(uint64_t a1)
{
  v2 = *(a1 + 160);
  result = a1 + 160;
  v3 = v2 | (*(result + 2) << 16);
  v4 = *(result - 56) & 1;
  *(result - 96) &= 1uLL;
  *(result - 56) = v4;
  *result = v3 & 0x81FF;
  *(result + 2) = (v3 & 0x1FFFF | 0x100000u) >> 16;
  return result;
}

uint64_t sub_1B2127E1C(uint64_t a1)
{
  if ((*(a1 + 162) >> 3) <= 0x14u)
  {
    return *(a1 + 162) >> 3;
  }

  else
  {
    return (*a1 + 21);
  }
}

uint64_t sub_1B2127E38(uint64_t result)
{
  v1 = *(result + 160);
  *(result + 162) &= 7u;
  *(result + 160) = v1;
  return result;
}

__n128 sub_1B212A004(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t DatabaseValue.databaseValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_1B2113A20(v2, v3, v4);
}

uint64_t static StatementArguments.+= infix(_:_:)(uint64_t a1, __int128 *a2)
{
  v5 = *a2;
  if (*(StatementArguments.append(contentsOf:)(&v5) + 16))
  {
    *&v5 = 0;
    *(&v5 + 1) = 0xE000000000000000;
    sub_1B2252CD0();

    *&v5 = 0xD000000000000024;
    *(&v5 + 1) = 0x80000001B2270A30;

    v3 = sub_1B21619D8(&qword_1EB7A3310, &unk_1B226A9D0);
    v4 = sub_1B211AB74(&qword_1EB7A3318, &qword_1EB7A3310, &unk_1B226A9D0, MEMORY[0x1E69E5D90]);
    sub_1B2156990();
    sub_1B211A328();
    sub_1B2252550();
    sub_1B21140B8();

    MEMORY[0x1B2741EB0](v4, v3);

    result = sub_1B2252EC0();
    __break(1u);
  }

  else
  {
  }

  return result;
}

uint64_t StatementArguments.append(contentsOf:)(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = a1[1];

  v80 = sub_1B2252190();
  sub_1B212A518(v3);
  v5 = 0;
  v84 = v4 + 64;
  v85 = v4;
  sub_1B21115A0();
  v9 = v8 & v7;
  v11 = (v10 + 63) >> 6;
  v83 = v11;
LABEL_2:
  v12 = v5;
  if (!v9)
  {
    goto LABEL_4;
  }

  while (1)
  {
    v5 = v12;
LABEL_7:
    v13 = __clz(__rbit64(v9)) | (v5 << 6);
    v14 = *(*(v85 + 48) + 16 * v13);
    v15 = *(v85 + 56) + 24 * v13;
    v17 = *v15;
    v16 = *(v15 + 8);
    v18 = *(v15 + 16);
    sub_1B2113A20(*v15, v16, *(v15 + 16));
    v86 = v16;
    HIDWORD(v89) = v18;
    sub_1B2113A20(v17, v16, v18);

    swift_isUniquelyReferenced_nonNull_native();
    v90 = v14;
    v91 = *(v2 + 8);
    sub_1B211E590();
    sub_1B2118304();
    if (__OFADD__(v21, v22))
    {
      break;
    }

    v23 = v19;
    v24 = v20;
    v25 = &v91;
    v82 = sub_1B21619D8(&qword_1EB7A1918, &qword_1B226A9E0);
    v26 = sub_1B2252E70();
    if (v26)
    {
      v25 = v91;
      v26 = sub_1B211E590();
      if ((v24 & 1) != (v27 & 1))
      {
        goto LABEL_30;
      }

      v23 = v26;
    }

    v9 &= v9 - 1;
    v34 = v91;
    if (v24)
    {
      v39 = v91[7] + 24 * v23;
      v40 = *v39;
      v41 = *(v39 + 8);
      v42 = *(v39 + 16);
      *v39 = v17;
      *(v39 + 8) = v86;
      *(v39 + 16) = BYTE4(v89);
      *(v2 + 8) = v34;
      v76 = v40;
      v78 = v41;
      HIDWORD(v79) = v42;
      v43 = sub_1B2113A20(v40, v41, v42);
      sub_1B21130F0(v43, v44, v45, v46, v47, v48, v49, v50, v76, v78, v79, v80);
      swift_isUniquelyReferenced_nonNull_native();
      v91 = v25;
      sub_1B211E590();
      v52 = v51;
      sub_1B2118304();
      if (__OFADD__(v54, v55))
      {
        goto LABEL_28;
      }

      v56 = v53;
      v57 = sub_1B2252E70();
      if (v57)
      {
        v57 = sub_1B211E590();
        if ((v52 & 1) != (v58 & 1))
        {
          goto LABEL_30;
        }

        v56 = v57;
      }

      v65 = BYTE4(v79);
      if (v52)
      {

        v80 = v91;
        v66 = v91[7] + 24 * v56;
        v67 = *v66;
        v68 = *(v66 + 8);
        *v66 = v75;
        *(v66 + 8) = v77;
        v69 = *(v66 + 16);
        *(v66 + 16) = BYTE4(v79);
        sub_1B2113A44(v67, v68, v69);
        sub_1B2113A44(v75, v77, SBYTE4(v79));
        sub_1B2113A44(v17, v86, SBYTE4(v89));
      }

      else
      {
        v70 = v91;
        sub_1B21185BC(v57, v58, v59, v60, v61, v62, v63, v64, v75, v77, v79, v81, v82, v83, v84, v85, v86, v89, v90);
        *v71 = v75;
        *(v71 + 8) = v77;
        *(v71 + 16) = v65;
        sub_1B2113A44(v75, v77, v65);
        sub_1B2113A44(v17, v88, SBYTE4(v89));
        v72 = *(v70 + 16);
        v37 = __OFADD__(v72, 1);
        v73 = v72 + 1;
        if (v37)
        {
          goto LABEL_29;
        }

        v80 = v70;
        *(v70 + 16) = v73;
      }

      v11 = v83;
      v6 = v84;
      goto LABEL_2;
    }

    sub_1B21185BC(v26, v27, v28, v29, v30, v31, v32, v33, v75, v77, v79, v80, v82, v83, v84, v85, v86, v89, v90);
    *v35 = v17;
    *(v35 + 8) = v87;
    *(v35 + 16) = BYTE4(v89);
    sub_1B2113A44(v17, v87, SBYTE4(v89));
    v36 = v34[2];
    v37 = __OFADD__(v36, 1);
    v38 = v36 + 1;
    if (v37)
    {
      goto LABEL_27;
    }

    v34[2] = v38;
    *(v2 + 8) = v34;
    v12 = v5;
    v11 = v83;
    v6 = v84;
    if (!v9)
    {
LABEL_4:
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v11)
        {

          return v80;
        }

        v9 = *(v6 + 8 * v5);
        ++v12;
        if (v9)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
      break;
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
  result = sub_1B2253390();
  __break(1u);
  return result;
}

void sub_1B212A518(uint64_t a1)
{
  v4 = sub_1B211284C(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1B212A69C(v4, 1);
  sub_1B21169F4();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1B2114EF8();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1B211ACDC();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_1B211F610();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1B212A5EC()
{
  sub_1B2114660();
  if ((v4 & 1) == 0 || (sub_1B2115F84(), v5 == v6))
  {
LABEL_6:
    sub_1B2111EF8();
    if (v3)
    {
      v13 = sub_1B2113B10(v7, v8, v9, v10, v11, v12);
      v14 = sub_1B21169D8(v13);
      v15 = j__malloc_size(v14);
      sub_1B2117B94(v15);
      if (v2)
      {
LABEL_8:
        v16 = sub_1B2117B84();
        v1(v16);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    sub_1B2115B30();
    goto LABEL_11;
  }

  sub_1B212CD14();
  if (!v5)
  {
    sub_1B2115544();
    goto LABEL_6;
  }

  __break(1u);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Statement.setArguments(_:)(GRDBInternal::StatementArguments a1)
{
  v4 = *a1.values._rawValue;
  v3 = *(a1.values._rawValue + 1);

  v5 = sub_1B211BF3C(v1, 0);

  if (!v2)
  {
    *(v1 + 104) = v4;
    *(v1 + 112) = v3;

    *(v1 + 96) = 0;
    sub_1B211A000();
    sub_1B212357C();
    v6 = 0;
    v7 = *(v5 + 16);
    v8 = v5 + 48;
    while (v6 != 2147483646)
    {
      if (v7 == v6)
      {

        return;
      }

      if (v6 >= *(v5 + 16))
      {
        goto LABEL_10;
      }

      ++v6;
      v8 += 24;
      v9 = sub_1B2116444();
      sub_1B2113A20(v9, v10, v11);
      v12 = sub_1B2116444();
      sub_1B2123648(v12, v13, v14, v6);
      v15 = sub_1B2116444();
      sub_1B2113A44(v15, v16, v17);
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }
}

uint64_t sub_1B212A8DC(uint64_t a1)
{
  if (!sub_1B2115AA0(a1))
  {
    sub_1B2118184();
    v10 = sub_1B211497C();
    Database.statementWillExecute(_:)(v10);
    v1 = v2;
    if (v2)
    {
      goto LABEL_12;
    }
  }

  if (sqlite3_step(v3) != 100)
  {
    sub_1B21122DC();
    if (!v4)
    {
      sub_1B2118184();
      sub_1B2122398();
LABEL_12:
    }

    sub_1B2118184();
    v5 = sub_1B211497C();
    Database.statementDidExecute(_:)(v5, v6);
    sub_1B211DA88();

    if (v1)
    {
      return result;
    }

    v8 = 0;
    v9 = 1;
    return v8 | (v9 << 40);
  }

  v11 = sub_1B2115468();
  sub_1B2126898(v12, v11);
  if (!v2)
  {

    v9 = 0;
    v8 = v13 | (v14 << 32);
    return v8 | (v9 << 40);
  }
}

unint64_t sub_1B212A9D0(sqlite3_stmt *a1)
{
  v3 = *(v1 + 28);
  v4 = sqlite3_column_type(a1, v3);
  if (v4 == 5)
  {
    v5 = 0;
LABEL_5:
    LOBYTE(v44) = v4 == 5;
    return v5 | ((v4 == 5) << 32);
  }

  v6 = sqlite3_column_int64(a1, v3);
  if (v6 == v6)
  {
    v5 = v6;
    goto LABEL_5;
  }

  v8 = *(v1 + 16);
  v9 = v8[2];
  v10 = Statement.columnNames.getter();
  sub_1B2113624(v9, v10, v11, v12, v13, v14, v15, v16, v33, v34, v35, v36, v37, v38, SDWORD2(v38), SHIDWORD(v38), v39, v40, *(&v40 + 1), v41, *(&v41 + 1), v42, *(&v42 + 1), v43, *(&v43 + 1), v44, *(&v44 + 1), v45, *(&v45 + 1), v46, *(&v46 + 1));
  v18 = v17;
  v20 = v19;
  type metadata accessor for Row();
  v21 = swift_allocObject();
  v26 = sub_1B211EF2C(v18, v20, v21, v22, v23, v24, v25);
  v27 = Statement.sql.getter();
  v28 = v8[13];
  v29 = v8[14];
  *&v44 = v26;
  *(&v44 + 1) = v3;
  *&v45 = 0;
  BYTE8(v45) = 1;
  *&v46 = v27;
  *(&v46 + 1) = v30;
  *&v47 = v28;
  *(&v47 + 1) = v29;
  sub_1B21A2FC0();
  swift_allocError();
  v32 = v31;
  v40 = v44;
  v41 = v45;
  v42 = v46;
  v43 = v47;

  sub_1B21320F0(a1, v3, &v38);
  v35 = v38;
  LOBYTE(v36) = v39;
  sub_1B2183238(MEMORY[0x1E69E72F0], &v40, &v35, v32);
  sub_1B2113A44(v35, *(&v35 + 1), v36);
  sub_1B218450C(&v44);
  swift_willThrow();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void sub_1B212AB84()
{
  sub_1B212D858();
  sub_1B212DAFC(0xD000000000000015, v2);
  if (!v1)
  {
    sub_1B2113180();
    v3 = sub_1B212D8D8();

    sub_1B212AC5C(&v5, &qword_1EB7A1370, &unk_1B2257580);
    v4 = v0 + OBJC_IVAR____TtC12GRDBInternal8Database__lastSchemaVersion;
    if (*(v0 + OBJC_IVAR____TtC12GRDBInternal8Database__lastSchemaVersion + 4))
    {
      if ((v3 & 0x100000000) != 0)
      {
        return;
      }

LABEL_7:
      *v4 = v3;
      *(v4 + 4) = BYTE4(v3) & 1;
      Database.clearSchemaCache()();
      return;
    }

    if ((v3 & 0x100000000) != 0 || *v4 != v3)
    {
      goto LABEL_7;
    }
  }
}

uint64_t sub_1B212AC5C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1B21619D8(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1B212ACBC(uint64_t a1, uint64_t x1_0)
{
  v4 = sub_1B212CFD8(a1, x1_0);
  sub_1B21619D8(v4, v5);
  sub_1B2111808();
  (*(v6 + 8))(a1);
  return a1;
}

void sub_1B212AD14(uint64_t a1, void (*a2)(uint64_t))
{
  sub_1B212AB84();
  if (!v2)
  {
    a2(a1);
  }
}

uint64_t sub_1B212AD64(uint64_t a1, void (*a2)(__n128), uint64_t a3, uint64_t a4)
{
  v8 = sub_1B2252B00();
  sub_1B211280C();
  v10 = v9;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v16 - v13;
  a2(v12);
  if (!v4)
  {
    sub_1B21117B4(v14, 0, 1, a4);
    (*(v10 + 40))(a1, v14, v8);
  }

  return 0;
}

void sub_1B212AE6C(char *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v11 = *a1;
  Database.beginTransaction(_:)(&v11);
  if (!v5)
  {
    v6 = OBJC_IVAR____TtC12GRDBInternal8Database_isInsideTransactionBlock;
    v7 = *(a2 + OBJC_IVAR____TtC12GRDBInternal8Database_isInsideTransactionBlock);
    *(a2 + OBJC_IVAR____TtC12GRDBInternal8Database_isInsideTransactionBlock) = 1;
    if (a3())
    {
      v8 = 0;
    }

    else
    {
      sub_1B2119EFC(sub_1B2153AF4);
      *(a2 + v6) = v7;
      Database.commit()();
      if (!v10)
      {
        goto LABEL_9;
      }

      v8 = v10;
    }

    Database.rollback()();
    if (v9)
    {
      if (v8)
      {
      }
    }

    else if (!v8)
    {
LABEL_9:
      *(a2 + v6) = v7;
      return;
    }

    swift_willThrow();
    goto LABEL_9;
  }
}

void sub_1B212AFBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = a2;
  v4[4] = a3;
  sub_1B2111304(sub_1B212D4D4, v4, a4);
}

uint64_t sub_1B212B00C@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v24 = a5;
  v26 = sub_1B2252B00();
  sub_1B211280C();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v24 - v16;
  v18 = sub_1B21117B4(&v24 - v16, 1, 1, a4);
  MEMORY[0x1EEE9AC00](v18);
  if (a1)
  {
    *(&v24 - 6) = a4;
    *(&v24 - 5) = v5;
    *(&v24 - 4) = v17;
    *(&v24 - 3) = a2;
    *(&v24 - 2) = a3;
    v19 = v25;
    sub_1B215256C(sub_1B2152704);
  }

  else
  {
    *(&v24 - 4) = a4;
    *(&v24 - 3) = v17;
    *(&v24 - 2) = a2;
    *(&v24 - 1) = a3;
    v19 = v25;
    Database.inSavepoint(_:)(sub_1B212D9A4, (&v24 - 6));
  }

  if (v19)
  {
    return (*(v11 + 8))(v17, v26);
  }

  v21 = sub_1B2115B7C();
  v22 = v26;
  v23(v21);
  result = sub_1B2122A98(v14, 1, a4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(a4 - 8) + 32))(v24, v14, a4);
    return (*(v11 + 8))(v17, v22);
  }

  return result;
}

void Database.inSavepoint(_:)(uint64_t a1, uint64_t a2)
{
  sub_1B21325E0();
  v5 = v3;
  v7 = v6;
  if (Database.isInsideTransaction.getter())
  {
    sub_1B211453C();
    sub_1B2116AE4();
    Database.execute(sql:arguments:)(v8, v9);
    sub_1B2124C08();

    if (!v5)
    {
      v11 = OBJC_IVAR____TtC12GRDBInternal8Database_isInsideTransactionBlock;
      sub_1B2113BE8();
      v12 = v7();
      if (v10)
      {
        v13 = v10;
      }

      else if (v12)
      {
        v13 = 0;
      }

      else
      {
        sub_1B2115ADC();
        sub_1B21130FC();
        sub_1B2119EFC(v21);
        *(v2 + v11) = v4;
        sub_1B21122F8();
        sub_1B213CEB0();
        Database.execute(sql:arguments:)(v22, v23);
        v5 = v24;
        if (!v24)
        {

          goto LABEL_13;
        }

        v13 = v24;
      }

      v17._countAndFlagsBits = sub_1B212CF30();
      Database.execute(sql:arguments:)(v17, v18);
      sub_1B2124C08();

      if (v5)
      {
        if (v13)
        {
        }
      }

      else
      {
        sub_1B21122F8();
        sub_1B2116AE4();
        Database.execute(sql:arguments:)(v19, v20);
        sub_1B2124C08();

        if (!v13)
        {
          goto LABEL_13;
        }
      }

      swift_willThrow();
LABEL_13:
      *(v2 + v11) = v4;
    }
  }

  else
  {
    sub_1B223C224();
    sub_1B212AE6C(v14, v15, v16);
  }

  sub_1B213CD90();
}

uint64_t sub_1B212B3F8()
{
  type metadata accessor for SchedulingWatchdog();
  result = sub_1B21114CC();
  if (result)
  {
    v2 = sub_1B211A144(*(v0 + 16));

    return v2 & 1;
  }

  return result;
}

uint64_t sub_1B212B464(void *a1, void *a2)
{

  MEMORY[0x1B2742060](v3);
  sub_1B212B4C4(*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
  return sub_1B2252630();
}

void *sub_1B212B4CC(void *a1)
{

  return memcpy(a1, &STACK[0x350], 0xA3uLL);
}

uint64_t sub_1B212B500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  if (sub_1B212B634(a1))
  {

    sub_1B2116728();
    sub_1B2112A88();
    sub_1B21144F4();
    result = sub_1B2252EC0();
    __break(1u);
  }

  else if (*(v4 + 24))
  {
    MEMORY[0x1EEE9AC00](0);
    v11[2] = a3;
    v11[3] = a1;
    v11[4] = a2;

    sub_1B212B78C(a4, v11);
  }

  else
  {
    sub_1B21AC298();
    sub_1B2118078();
    swift_allocError();
    sub_1B21ABD9C(v10);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1B212B634(uint64_t a1)
{
  if (*(v1 + 24))
  {
    v8 = MEMORY[0x1E69E7CC0];
    MEMORY[0x1EEE9AC00](a1);
    v7[2] = &v8;

    sub_1B212BA0C(sub_1B212B448, v7);
    v2 = v8;
    result = sub_1B2116B08();
    v4 = result;
    for (i = 0; ; ++i)
    {
      if (v4 == i)
      {

        return 0;
      }

      if ((v2 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x1B27427E0](i, v2);
        v6 = result;
      }

      else
      {
        if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v6 = *(v2 + 8 * i + 32);
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      if (sub_1B212B3F8())
      {

        return v6;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t (*sub_1B212B78C(uint64_t (*a1)(char *), uint64_t a2))()
{
  v14[1] = a2;
  v15 = a1;
  v4 = *(*v2 + 80);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v14 - v9;
  result = sub_1B212BE94(v7);
  if (!v3)
  {
    v12 = result;
    (*(v5 + 32))(v10, v7, v4);
    v13 = v15(v10);
    (v12)(v13);

    return (*(v5 + 8))(v10, v4);
  }

  return result;
}

uint64_t sub_1B212B904(uint64_t a1, void (*a2)(uint64_t))
{
  result = sub_1B2116B08();
  v6 = result;
  for (i = 0; v6 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1B27427E0](i, a1);
      v8 = result;
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v8 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return result;
    }

    a2(v8 + 16);

    if (v2)
    {
      return result;
    }
  }

  return result;
}

uint64_t sub_1B212BA0C(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;

  sub_1B212BB58(sub_1B212BB3C, v3);
}

uint64_t sub_1B212BA8C(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a3 + 16);

  a1(&v6);
}

void sub_1B212BB58(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  sub_1B2252A50();
}

uint64_t sub_1B212BBDC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v21 = a3;
  v5 = *(*a2 + 80);
  v19[0] = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v19[1] = v9;
  v20 = v19 - v10;
  v11 = *v9;
  v22 = v5;
  v23 = v11;
  swift_getKeyPath();
  type metadata accessor for Pool.Item(255, v5, v12, v13);
  sub_1B22526A0();

  swift_getWitnessTable();
  sub_1B2252510();

  v15 = v24;
  if (v24)
  {
    *(v24 + *(*v24 + 96)) = 0;
LABEL_3:
    *v21 = v15;
    return result;
  }

  v16 = v19[0];
  v17 = a2[2];
  v18 = v20;
  result = v17(result);
  if (!v3)
  {
    (*(v16 + 16))(v7, v18, v5);
    v15 = sub_1B2133DCC(v7, 0);
    v24 = v15;

    sub_1B2252660();
    result = (*(v16 + 8))(v18, v5);
    goto LABEL_3;
  }

  return result;
}

uint64_t (*sub_1B212BE94(char *a1))()
{
  v4 = *(*v1 + 80);
  sub_1B2161A20(&qword_1EB7A0F20, qword_1B2262540);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v14 - v9;
  result = sub_1B2252A50();
  if (!v2)
  {
    v12 = *(TupleTypeMetadata2 + 48);
    v13 = *(*(v4 - 8) + 32);
    v13(v7, v10, v4);
    *(swift_allocObject() + 16) = *&v10[v12];
    v13(a1, v7, v4);
    return sub_1B212E030;
  }

  return result;
}

uint64_t sub_1B212C04C()
{

  return swift_deallocObject();
}

unint64_t sub_1B212C084()
{
  result = qword_1ED85E0C0[0];
  if (!qword_1ED85E0C0[0])
  {
    sub_1B22520F0();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED85E0C0);
  }

  return result;
}

unint64_t sub_1B212C0DC()
{
  result = qword_1ED85E0B8;
  if (!qword_1ED85E0B8)
  {
    sub_1B2161A20(&qword_1EB7A27A8, &qword_1B225E820);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED85E0B8);
  }

  return result;
}

uint64_t sub_1B212C140@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(*a1 + 80);
  sub_1B2161A20(&qword_1EB7A0F20, qword_1B2262540);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v8 = &v20 - v7;
  sub_1B2252A90();
  v9 = a1[6];
  dispatch_group_enter(v9);
  sub_1B2117794();
  v12 = type metadata accessor for Pool.Item(0, v5, v10, v11);
  sub_1B212C3F4(sub_1B212C6AC, a1, v12, &v22);

  if (v2)
  {
    sub_1B2252AA0();
    dispatch_group_leave(v9);
    return swift_willThrow();
  }

  else
  {
    v14 = v22;
    v21 = *(*v22 + 88);
    v15 = swift_allocObject();
    *(v15 + 16) = a1;
    *(v15 + 24) = v14;
    v16 = a2;
    v17 = *(v5 - 8);
    (*(v17 + 16))(v8, v14 + v21, v5);
    (*(v17 + 32))(v16, v8, v5);
    v18 = (v16 + *(TupleTypeMetadata2 + 48));
    v19 = swift_allocObject();
    *(v19 + 16) = sub_1B212E060;
    *(v19 + 24) = v15;
    *v18 = sub_1B212D718;
    v18[1] = v19;
  }
}

uint64_t sub_1B212C394()
{

  return swift_deallocObject();
}

void sub_1B212C3F4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v16 = a4;
  v5 = v4;
  v14 = a1;
  v15 = a2;
  v7 = sub_1B22520F0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v5 + *(*v5 + 96));
  sub_1B21619D8(&qword_1EB7A2B88, &unk_1B2260248);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1B22546B0;
  v13 = v11;
  sub_1B22520E0();
  v21 = v12;
  sub_1B212C084();
  sub_1B21619D8(&qword_1EB7A27A8, &qword_1B225E820);
  sub_1B212C0DC();
  sub_1B2252BC0();
  v17 = a3;
  v18 = v14;
  v19 = v15;
  v20 = v5;
  sub_1B2252A40();
  (*(v8 + 8))(v10, v7);
}

uint64_t sub_1B212C5FC(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = *(*a3 + 88);
  swift_beginAccess();
  a1(a3 + v5);
  return swift_endAccess();
}

uint64_t sub_1B212C6C8@<X0>(void (*a1)(uint64_t, uint64_t)@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  sub_1B21115E0();
  v29 = v9;
  MEMORY[0x1EEE9AC00](v10);
  sub_1B2111844();
  v13 = v12 - v11;
  v15 = *(v14 + 16);
  sub_1B21115E0();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  sub_1B2111844();
  v21 = v20 - v19;
  sub_1B21115E0();
  MEMORY[0x1EEE9AC00](v22);
  sub_1B2111844();
  v25 = v24 - v23;
  (*(v26 + 16))(v24 - v23, v27);
  if (sub_1B2122A98(v25, 1, v15) == 1)
  {
    return sub_1B21117B4(a5, 1, 1, a3);
  }

  (*(v17 + 32))(v21, v25, v15);
  a1(v21, v13);
  result = (*(v17 + 8))(v21, v15);
  if (v5)
  {
    return (*(v29 + 32))(a4, v13, a2);
  }

  return result;
}

uint64_t static DatabaseValueConvertible<>.fromDatabaseValue(_:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v23 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = sub_1B2252B00();
  sub_1B211280C();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v22 - v18;
  LOBYTE(v18) = *(a1 + 16);
  v30 = *a1;
  v31 = v18;
  (*(a6 + 32))(&v30, AssociatedTypeWitness, a6);
  v24 = a2;
  v25 = a3;
  v26 = a4;
  v27 = a5;
  v28 = a6;
  v29 = v22;
  sub_1B212C6C8(sub_1B212CCEC, MEMORY[0x1E69E73E0], a2, v20, v23);
  return (*(v16 + 8))(v19, v14);
}

uint64_t sub_1B212CB00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  (*(v10 + 16))(&v12 - v9, a1, v8);
  return sub_1B2252570();
}

uint64_t sub_1B212CC08@<X0>(uint64_t *a1@<X8>, uint64_t *a2@<X0>)
{
  result = static String.fromDatabaseValue(_:)(a2);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t static String.fromDatabaseValue(_:)(uint64_t *a1)
{
  v2 = sub_1B22522F0();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = *a1;
  v4 = *(a1 + 16);
  if (v4 == 3)
  {
    sub_1B22522E0();
    return sub_1B22522C0();
  }

  else
  {
    result = 0;
    if (v4 == 2)
    {

      return v3;
    }
  }

  return result;
}

uint64_t sub_1B212CD20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_1B212CD80()
{

  return swift_getWitnessTable();
}

uint64_t sub_1B212CDCC(uint64_t a1)
{

  return sub_1B212AC5C(a1, v1, v2);
}

uint64_t sub_1B212CEAC()
{

  return swift_getAssociatedConformanceWitness();
}

void sub_1B212CECC()
{

  JUMPOUT(0x1B2741EB0);
}

uint64_t sub_1B212CEE8()
{
}

void sub_1B212CF04(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5)
{
  a4 = v6;
  a5 = a3;
  v8 = &a4;

  Database.execute(sql:arguments:)(*&a1, *(&a2 - 1));
}

void sub_1B212CF64()
{

  sub_1B21277F4();
}

uint64_t sub_1B212CFA0(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_1B212D05C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{

  return sub_1B21FDE44(v20, a20);
}

uint64_t sub_1B212D0A4()
{

  return swift_getAssociatedConformanceWitness();
}

void sub_1B212D0C4()
{

  JUMPOUT(0x1B2741EB0);
}

void sub_1B212D0E0()
{
  v2 = *(v0 + 16) + 1;

  sub_1B2162630(0, v2, 1, v0);
}

void sub_1B212D104()
{

  sub_1B21616FC();
}

void sub_1B212D140(uint64_t a1@<X2>, uint64_t a2@<X3>, unint64_t a3@<X8>)
{

  sub_1B22341D4(v3, a1, a2, a3);
}

uint64_t sub_1B212D42C(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_1B22525E0();
  }

  return result;
}

uint64_t sub_1B212D478(uint64_t *a1, uint64_t a2)
{

  swift_getAtKeyPath();

  return v3;
}

uint64_t sub_1B212D4F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6[5] = a3;
  v6[2] = a4;
  v6[3] = a1;
  v6[4] = a2;
  return sub_1B212B00C(0, sub_1B212D9C4, v6, a4, a5);
}

void sub_1B212D54C()
{

  JUMPOUT(0x1B2741EB0);
}

unint64_t sub_1B212D590()
{
  *(v1 - 96) = *v0;

  return sub_1B211E590();
}

void sub_1B212D5B4()
{

  JUMPOUT(0x1B2741EB0);
}

uint64_t sub_1B212D5D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{

  return sub_1B213A774(&STACK[0x2D0], &a53);
}

uint64_t sub_1B212D5F0(uint64_t a1)
{

  return swift_allocObject();
}

void *sub_1B212D660(void *a1)
{

  return memcpy(a1, &STACK[0x4C0], 0xA3uLL);
}

void *sub_1B212D6D8(void *a1)
{

  return memcpy(a1, &STACK[0x560], 0xA3uLL);
}

void *sub_1B212D6F0(void *a1)
{

  return memcpy(a1, v1, 0xA3uLL);
}

void sub_1B212D770(uint64_t a1)
{
  sub_1B2117794();
  sub_1B212C3F4(sub_1B212D800, a1, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7CA8]);

  sub_1B2252AA0();
  v3 = *(v1 + 48);

  dispatch_group_leave(v3);
}

void sub_1B212D820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v9 - 96) = v7;

  sub_1B2116B10(0, v8, 0, a4, a5, a6, a7);
}

uint64_t sub_1B212D870(uint64_t a1, uint64_t a2)
{

  return swift_getDynamicType();
}

uint64_t sub_1B212D890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{

  return sub_1B211EE68(v32, &a32);
}

uint64_t *sub_1B212D8D8()
{
  sub_1B2117340();
  sub_1B2117F74(&qword_1EB7A1370, &unk_1B2257580, v1, v8);
  sub_1B21619D8(&qword_1EB7A1380, &qword_1B2257E18);
  sub_1B2111904();
  swift_allocObject();
  sub_1B21118E8();

  result = sub_1B2112894(v2, v3, v4);
  if (!v0)
  {
    sub_1B212216C();
    v6 = sub_1B212DD5C();

    v7 = v6;
    if ((v6 & 0x10000000000) != 0)
    {
      v7 = 0;
    }

    return (v7 | (((v6 & 0x10100000000) != 0) << 32));
  }

  return result;
}

uint64_t sub_1B212D9E4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  sub_1B21159FC();
  if (*(v8 + 16))
  {
    v9 = sub_1B211E590();
    if (v10)
    {
      v5 = *(*(v4 + 56) + 8 * v9);

LABEL_7:
      sub_1B2122344();
      return v5;
    }
  }

  swift_unownedRetainStrong();
  v11 = sub_1B212641C(a1, a2, 1);
  if (!v3)
  {
    v5 = v11;

    swift_isUniquelyReferenced_nonNull_native();
    sub_1B2133EB0();
    goto LABEL_7;
  }

  sub_1B2122344();
  return v5;
}

uint64_t *sub_1B212DB30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v11 = *v4;
  *(v4 + 24) = 0;
  v4[2] = a1;
  v12 = v11;
  sub_1B211E17C(a4, &v20, &qword_1EB7A1370, &unk_1B2257580);
  if (!v21)
  {

    sub_1B2122400(&v20, &qword_1EB7A1370, &unk_1B2257580);
    *(v6 + 7) = 0;
    goto LABEL_8;
  }

  v26 = v12;
  sub_1B21217FC(&v20, v23);
  v13 = v24;
  v14 = v25;
  sub_1B21139A0(v23, v24);
  v21 = type metadata accessor for Statement();
  v22 = &protocol witness table for Statement;
  *&v20 = a1;
  swift_retain_n();
  v15 = sub_1B21B2B3C(0, &v20, v13, v14);
  if (v5)
  {
    sub_1B211A378(a2, a3);

    sub_1B2122400(a4, &qword_1EB7A1370, &unk_1B2257580);
    sub_1B2113208(&v20);
    sub_1B2113208(v23);

    swift_deallocPartialClassInstance();
    return v6;
  }

  v16 = v15;
  result = sub_1B2113208(&v20);
  if (v16 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v16 <= 0x7FFFFFFF)
  {
    *(v6 + 7) = v16;
    sub_1B2113208(v23);
LABEL_8:
    v23[0] = a2;
    v23[1] = a3;
    sub_1B2114290();
    sub_1B2119E50(v18, v19);
    sub_1B2122400(a4, &qword_1EB7A1370, &unk_1B2257580);

    sub_1B211A378(a2, a3);
    if (v5)
    {
    }

    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B212DD5C()
{
  v2 = 1;
  sub_1B2116AD0();
  swift_beginAccess();
  if (*(v0 + 24))
  {
    result = 0;
    return result & 0xFFFFFFFFFFLL | (v2 << 40);
  }

  sub_1B2131988();
  v4 = sub_1B2122D50();
  result = sub_1B212A8DC(v4);
  if (!v1)
  {
    if ((result & 0x10000000000) != 0)
    {
      v2 = 1;
      *(v0 + 24) = 1;
    }

    else
    {
      v2 = 0;
    }

    return result & 0xFFFFFFFFFFLL | (v2 << 40);
  }

  return result;
}

uint64_t sub_1B212DDF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return type metadata accessor for QueryInterfaceRequest(0, v4, a3, a4);
}

uint64_t sub_1B212DE24@<X0>(uint64_t a1@<X8>)
{
  *(v3 - 136) = a1;
  *(v3 - 96) = v1;
  *(v3 - 88) = v2;
  return v1;
}

void sub_1B212DE50()
{
  v2 = *(v0 + 16) + 1;

  sub_1B216270C(0, v2, 1, v0);
}

uint64_t sub_1B212DE74()
{

  return sub_1B2252250();
}

uint64_t sub_1B212DEB4@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 16) = a1;
  *(v2 + 8) = v1;
}

uint64_t sub_1B212DF3C()
{

  return swift_getAssociatedTypeWitness();
}

void sub_1B212DF68()
{

  JUMPOUT(0x1B2741EB0);
}

id sub_1B212DF90()
{

  return sub_1B21FE21C(v2, v1, v0);
}

void sub_1B212DFC0()
{

  sub_1B21616FC();
}

uint64_t sub_1B212DFE0()
{

  return sub_1B2252F00();
}

uint64_t sub_1B212E088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a4 + 40);

  v8(v15, a3, a4);
  v9 = v15[0];
  v10 = v15[1];
  v15[3] = type metadata accessor for _RowDecoder(0, a3, a4, v11);
  v15[4] = swift_getWitnessTable();
  v12 = swift_allocObject();
  v15[0] = v12;
  v13 = MEMORY[0x1E69E7CC0];
  v12[2] = a2;
  v12[3] = v13;
  v12[4] = v9;
  v12[5] = v10;
  return sub_1B22527E0();
}

uint64_t sub_1B212E184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = v4[1];
  v8 = v4[2];
  v7 = v4[3];
  v9 = *(a2 + 24);
  v11 = *(a2 + 16);
  v12 = a3;
  v13 = v9;
  v14 = a4;
  type metadata accessor for _RowDecoder.KeyedContainer(0, &v11);
  v11 = v5;
  v12 = v6;
  v13 = v8;
  v14 = v7;

  sub_1B212E5CC(v8, v7);
  v11 = sub_1B212E590(&v11);
  swift_getWitnessTable();
  return sub_1B2252F70();
}

uint64_t sub_1B212E25C(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_1B212E2C8()
{

  return sub_1B2127DC0(&STACK[0x608], &STACK[0x4B8]);
}

void *sub_1B212E2E0(void *a1)
{

  return memcpy(a1, v1, 0xA3uLL);
}

uint64_t sub_1B212E32C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_1B21619D8(a2, a3);
  sub_1B21118A0();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t RecordCursor._element(sqliteStatement:)()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  v3 = *(v2 + 8);

  return v3(v4, v1, v2);
}

uint64_t FetchableRecord<>.init(row:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for RowDecoder();
  inited = swift_initStackObject();
  sub_1B212E088(inited, a1, a2, a3, a4);
}

unint64_t sub_1B212E5CC(unint64_t result, uint64_t a2)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t *sub_1B212E5E0(uint64_t *a1)
{
  v58 = *v1;
  v3 = *(v58 + 88);
  v56 = sub_1B2252B00();
  v4 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v6 = &v46 - v5;
  v59 = v3;
  v7 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v53 = &v46 - v9;
  v11 = *a1;
  v10 = a1[1];
  v13 = a1[2];
  v12 = a1[3];
  v1[12] = 0;
  *(v1 + 3) = 0u;
  *(v1 + 4) = 0u;
  v1[10] = 0;
  v1[2] = v11;
  v1[3] = v10;
  v1[4] = v13;
  v1[5] = v12;
  if (!v13)
  {
    v44 = 0;
LABEL_16:
    v1[11] = v44;
    return v1;
  }

  v52 = v1;
  v14 = v10;

  v51 = v14;

  sub_1B212E5CC(v13, v12);
  v15 = sub_1B2252190();
  v64 = v11;
  v65[0] = 0;
  v65[1] = sub_1B2240670;
  v65[2] = 0;
  v54 = v15;
  v55 = (v4 + 8);
  v49 = (v7 + 8);
  v50 = (v7 + 32);

  v57 = v6;
  while (1)
  {
    while (1)
    {
      if (v65[0] == *(v11 + 72))
      {

        sub_1B21268B4(v13, v12);

        v1 = v52;
        v44 = v54;
        goto LABEL_16;
      }

      Row.subscript.getter(v62, v65);
      v17 = v16;
      v19 = v18;
      v60 = v16;
      v61 = v18;
      v20 = v13;
      v21 = v12;
      v22 = v62[0];
      v23 = v62[1];
      v24 = v63;

      sub_1B2113A20(v22, v23, v24);

      sub_1B2113A44(v22, v23, v24);
      sub_1B2151DE0(v65, v65[0]);
      v25 = v23;
      v12 = v21;
      v13 = v20;
      sub_1B2113A44(v22, v25, v24);
      v60 = v20;
      v61 = v12;
      sub_1B212E5CC(v20, v12);
      v26 = v57;
      v27 = v59;
      sub_1B22262BC();
      sub_1B21268B4(v60, v61);
      if (sub_1B2122A98(v26, 1, v27) != 1)
      {
        break;
      }

      (*v55)(v26, v56);
    }

    (*v50)(v53, v26, v59);
    v28 = sub_1B22534D0();
    v30 = v29;
    v31 = v54;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v60 = v31;
    v47 = v28;
    v32 = sub_1B211E590();
    if (__OFADD__(*(v31 + 16), (v33 & 1) == 0))
    {
      break;
    }

    v34 = v32;
    LODWORD(v54) = v33;
    sub_1B21619D8(&qword_1EB7A1D30, &qword_1B225A790);
    if (sub_1B2252E70())
    {
      v35 = sub_1B211E590();
      if ((v54 & 1) != (v36 & 1))
      {
        goto LABEL_19;
      }

      v34 = v35;
      if (v54)
      {
        goto LABEL_13;
      }

LABEL_10:
      v37 = v60;
      v60[(v34 >> 6) + 8] |= 1 << v34;
      v38 = (v37[6] + 16 * v34);
      *v38 = v47;
      v38[1] = v30;
      v39 = (v37[7] + 16 * v34);
      *v39 = v17;
      v39[1] = v19;
      (*v49)(v53, v59);
      v40 = v37[2];
      v41 = __OFADD__(v40, 1);
      v42 = v40 + 1;
      if (v41)
      {
        goto LABEL_18;
      }

      v54 = v37;
      v37[2] = v42;
    }

    else
    {
      if ((v54 & 1) == 0)
      {
        goto LABEL_10;
      }

LABEL_13:

      v54 = v60;
      v43 = (v60[7] + 16 * v34);
      *v43 = v17;
      v43[1] = v19;

      (*v49)(v53, v59);
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_1B2253390();
  __break(1u);
  return result;
}

uint64_t sub_1B212EB04(uint64_t a1)
{
  sub_1B211D7E8(a1);
  if (!v2)
  {
    sub_1B211689C();
    v1 = v3();
  }

  return v1;
}

uint64_t sub_1B212EBC0(uint64_t a1)
{
  v2 = *(v1 + 88);
  if (!v2)
  {
    return sub_1B22534D0();
  }

  v3 = v1;
  v4 = sub_1B22534D0();
  v6 = sub_1B21C9090(v4, v5, v2);
  v8 = v7;

  if (!v8)
  {
    if (*(v3 + 32) == 1)
    {
      v9 = sub_1B22534D0();
      v11 = v10;
      v12 = sub_1B2190834(v9, v10);
      v14 = v13;
      sub_1B2226394();
      v17 = v14;
      if (v12 != v9 || v14 != v11)
      {
        v19 = v15;
        v20 = v16;
        v51 = v17;
        if ((sub_1B22531F0() & 1) == 0)
        {
          v35 = v19 == v9 && v20 == v11;
          if (v35 || (sub_1B22531F0() & 1) != 0)
          {

            v43 = 0;
            v44 = 0xE000000000000000;
            sub_1B2252CD0();
            sub_1B22531D0();
            MEMORY[0x1B2741EB0](2238496, 0xE300000000000000);
            MEMORY[0x1B2741EB0](v9, v11);

            v36 = 0x80000001B2270920;
            v37 = 0xD000000000000011;
          }

          else
          {
            v43 = 0;
            v44 = 0xE000000000000000;
            sub_1B2252CD0();
            sub_1B22531D0();
            MEMORY[0x1B2741EB0](2238496, 0xE300000000000000);
            MEMORY[0x1B2741EB0](v9, v11);

            MEMORY[0x1B2741EB0](0xD000000000000022, 0x80000001B22708F0);
            MEMORY[0x1B2741EB0](v19, v20);

            v37 = 0x7265766E6F63202CLL;
            v36 = 0xEF206F7420646574;
          }

          MEMORY[0x1B2741EB0](v37, v36);
          MEMORY[0x1B2741EB0](v12, v51);

          goto LABEL_13;
        }
      }

      v43 = 0;
      v44 = 0xE000000000000000;
      sub_1B22531D0();
      MEMORY[0x1B2741EB0](2238496, 0xE300000000000000);
      MEMORY[0x1B2741EB0](v9, v11);
    }

    else
    {
      v43 = 0;
      v44 = 0xE000000000000000;
      sub_1B22531D0();
      MEMORY[0x1B2741EB0](2238496, 0xE300000000000000);
      v21 = sub_1B22534D0();
      MEMORY[0x1B2741EB0](v21);
    }

    MEMORY[0x1B2741EB0](10530, 0xE200000000000000);
LABEL_13:
    v22 = v43;
    v23 = v44;
    v51 = sub_1B22534D0();
    v40 = v24;
    v41 = 0uLL;
    v42 = -1;

    RowDecodingContext.init(row:key:)(v25, &v41, &v43);
    *&v41 = 0;
    *(&v41 + 1) = 0xE000000000000000;
    sub_1B2252CD0();

    *&v41 = 0x20746F6E2079656BLL;
    *(&v41 + 1) = 0xEF203A646E756F66;
    MEMORY[0x1B2741EB0](v22, v23);

    v38 = *(&v41 + 1);
    v39 = v41;

    v26 = sub_1B2183FE0();
    v6 = v44;
    v27 = v45;
    v28 = v47;
    v29 = v48;
    v30 = v49;
    v31 = v50;
    v32 = v46;
    sub_1B21841CC(v44, v45, v46);

    sub_1B211CF8C(v30);
    sub_1B218450C(&v43);
    LOBYTE(v41) = 0;
    sub_1B21A2FC0();
    swift_allocError();
    *v33 = v51;
    *(v33 + 8) = v40;
    *(v33 + 16) = 0;
    *(v33 + 24) = v39;
    *(v33 + 32) = v38;
    *(v33 + 40) = v26;
    *(v33 + 48) = v6;
    *(v33 + 56) = v27;
    *(v33 + 64) = v32;
    *(v33 + 72) = v28;
    *(v33 + 80) = v29;
    *(v33 + 88) = v30;
    *(v33 + 96) = v31;
    *(v33 + 104) = v41;
    swift_willThrow();
  }

  return v6;
}

uint64_t sub_1B212F244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a5 + 16))
  {
    v6 = sub_1B211E590();
    if (v7)
    {
      return *(*(a5 + 56) + 8 * v6);
    }
  }

  v9 = sub_1B2252220();
  v8 = sub_1B212F2CC(v9, v10, a5);

  return v8;
}

uint64_t sub_1B212F2CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1B211E590();
  if (v5)
  {
    return *(*(a3 + 56) + 8 * v4);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B212F324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_conformsToProtocol2();
  if (result)
  {
    if (swift_conformsToProtocol2())
    {
      return a1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_1B212F3AC(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v84 = a4;
  v86 = a5;
  v9 = *v5;
  v88 = a3;
  v89 = v9;
  v10 = sub_1B2251E90();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v5[2];
  v90 = a2;
  v87 = v5;
  v14 = sub_1B212EBC0(a2);
  v82 = v13;
  if (v6)
  {
    v81 = a1;

    v85 = 0;
    goto LABEL_5;
  }

  v16 = v14;
  v17 = v15;
  v18 = v13;
  v19 = *(v13 + 40);
  v20 = *(v13 + 48);
  sub_1B21139A0((v18 + 16), v19);
  v21 = (*(v20 + 88))(v16, v17, v19, v20);
  LOBYTE(v16) = v22;

  if (v16)
  {
    v81 = a1;
    v85 = 0;
LABEL_5:
    Row.scopes.getter();
    v23 = v91;
    v25 = v92;
    v24 = v93;
    v26 = *(v89 + 88);
    v83 = *(v89 + 104);
    sub_1B22534D0();
    v91 = v23;
    v92 = v25;
    v93 = v24;
    v27 = Row.ScopesTreeView.subscript.getter();

    if (v27)
    {
      v28 = sub_1B211FEA4();
      sub_1B21619D8(&qword_1EB7A0DD0, &unk_1B226A780);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1B22546B0;
      v30 = v83;
      *(inited + 56) = v26;
      *(inited + 64) = v30;
      v31 = sub_1B212FF14((inited + 32));
      (*(*(v26 - 8) + 16))(v31, v90, v26);
      *&v91 = v28;
      sub_1B2130EC8(inited);
      sub_1B222A2B8(v81, v27, v91, v88);

LABEL_7:

      return;
    }

    v32 = v82;
    swift_beginAccess();
    v33 = *(v32 + 80);
    v34 = *(v32 + 88);

    v35 = v90;
    sub_1B22534D0();
    *&v91 = v33;
    *(&v91 + 1) = v34;
    v36 = Row.PrefetchedRowsView.subscript.getter();

    if (v36)
    {
      v37 = sub_1B211FEA4();
      v93 = type metadata accessor for PrefetchedRowsDecoder(0, *(v89 + 80), *(v89 + 96), v38);
      WitnessTable = swift_getWitnessTable();
      *&v91 = v36;
      *(&v91 + 1) = v37;
      v94 = WitnessTable;
      v92 = 0;
      sub_1B22527E0();
      return;
    }

    v57 = v87;
    swift_beginAccess();
    sub_1B222ED34((v57 + 6), &v96);
    if (!v98)
    {
      sub_1B212AC5C(&v96, &qword_1EB7A3258, &qword_1B226A770);
      v75 = v83;
      v93 = v26;
      v94 = v83;
      v76 = sub_1B212FF14(&v91);
      v89 = *(*(v26 - 8) + 16);
      (v89)(v76, v35, v26);
      swift_beginAccess();
      sub_1B222EDA4(&v91, (v57 + 6));
      swift_endAccess();
      v77 = sub_1B211FEA4();
      sub_1B21619D8(&qword_1EB7A0DD0, &unk_1B226A780);
      v78 = swift_initStackObject();
      *(v78 + 16) = xmmword_1B22546B0;
      *(v78 + 56) = v26;
      *(v78 + 64) = v75;
      v79 = sub_1B212FF14((v78 + 32));
      (v89)(v79, v35, v26);
      *&v91 = v77;
      sub_1B2130EC8(v78);
      sub_1B222A2B8(v81, v32, v91, v88);
      goto LABEL_7;
    }

    sub_1B21217FC(&v96, &v91);
    sub_1B21619D8(&qword_1EB7A0F88, &unk_1B22546A0);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_1B225B140;
    sub_1B21139A0(&v91, v93);
    *(v58 + 32) = sub_1B22534D0();
    *(v58 + 40) = v59;
    v60 = v26;
    v61 = v83;
    *(v58 + 48) = sub_1B22534D0();
    *(v58 + 56) = v62;
    *&v96 = v58;

    v6 = v85;
    sub_1B222EB88(&v96);
    if (!v6)
    {

      v63 = v96;
      v64 = sub_1B2252D40();
      swift_allocError();
      v66 = v65;
      v89 = *(sub_1B21619D8(&qword_1EB7A3260, &qword_1B226A778) + 48);
      v66[3] = v60;
      v66[4] = v61;
      v67 = sub_1B212FF14(v66);
      (*(*(v60 - 8) + 16))(v67, v35, v60);
      sub_1B211FEA4();
      strcpy(&v96, "No such key: ");
      HIWORD(v96) = -4864;
      v99 = v63;
      sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
      sub_1B211AB74(qword_1ED85E790, &qword_1EB7A0DA0, &qword_1B2254340, MEMORY[0x1E69E6310]);
      v68 = sub_1B2252250();
      v70 = v69;

      MEMORY[0x1B2741EB0](v68, v70);

      sub_1B2252D30();
      (*(*(v64 - 8) + 104))(v66, *MEMORY[0x1E69E6AF0], v64);
      swift_willThrow();
      sub_1B2113208(&v91);
      return;
    }

    goto LABEL_35;
  }

  v40 = v88;
  if (v10 == a1)
  {
    (*(*(v89 + 96) + 32))(&v91);
    v96 = v91;
    v97 = v92;
    sub_1B2229E00(v82, v21, v12);
    sub_1B2187B6C(v96, *(&v96 + 1), v97);
LABEL_32:
    swift_dynamicCast();
    return;
  }

  v41 = sub_1B212F324(v88, v88, &protocol descriptor for DatabaseValueConvertible, &protocol descriptor for StatementColumnConvertible);
  v44 = v82;
  if (!v41)
  {
    v71 = sub_1B212FED0(v40, v40, &protocol descriptor for DatabaseValueConvertible);
    if (!v71)
    {
      sub_1B2130C20(a1, v44, v21, v90, v40, v84);
      return;
    }

    v93 = v71;
    v94 = v72;
    sub_1B212FF14(&v91);
    static DatabaseValueConvertible.decode(fromRow:atUncheckedIndex:)();
    v73 = &qword_1EB7A1290;
    v74 = &qword_1B226A750;
    goto LABEL_31;
  }

  v45 = v41;
  v46 = v43;
  v90 = v21;
  v85 = 0;
  v93 = v41;
  v94 = v42;
  v95 = v43;
  v47 = sub_1B212FF14(&v91);
  v48 = v44[8];
  if (!v48)
  {
    v80 = v85;
    Row.fastDecode<A>(_:atUncheckedIndex:)();
    if (v80)
    {
      goto LABEL_27;
    }

LABEL_30:
    v73 = &unk_1EB7A3250;
    v74 = &unk_1B226A758;
LABEL_31:
    sub_1B21619D8(v73, v74);
    goto LABEL_32;
  }

  v49 = v90;
  if (v90 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else
  {
    v89 = v47;
    if (v90 <= 0x7FFFFFFF)
    {
      MEMORY[0x1EEE9AC00](v47);
      v50 = &v81 - 4;
      *(&v81 - 2) = v44;
      *(&v81 - 1) = v49;
      v51 = sqlite3_column_type(v48, v49);
      if (v51 == 5)
      {
LABEL_18:
        MEMORY[0x1EEE9AC00](v51);
        *(&v81 - 2) = sub_1B222EEE8;
        *(&v81 - 1) = v50;
        static DatabaseValueConvertible<>._valueMismatch(fromStatement:atUncheckedIndex:context:)(v48, v49, sub_1B222EEEC, (&v81 - 4), v45);
LABEL_27:
        sub_1B21C80D0(&v91);
        return;
      }

      v84 = &v81 - 4;
      v87 = &v81;
      v52 = sub_1B2252B00();
      v83 = &v81;
      v53 = *(v52 - 8);
      v54 = MEMORY[0x1EEE9AC00](v52);
      v56 = &v81 - v55;
      (*(v46 + 8))(v48, v49, v45, v46, v54);
      if (sub_1B2122A98(v56, 1, v45) == 1)
      {
        v51 = (*(v53 + 8))(v56, v52);
        v50 = v84;
        LODWORD(v49) = v90;
        goto LABEL_18;
      }

      (*(*(v45 - 8) + 32))(v89, v56, v45);
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_35:

  __break(1u);
}

uint64_t sub_1B212FED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1B212FF14(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

void sub_1B212FF74(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v93 = a4;
  v97 = a3;
  v91 = a1;
  v96 = a5;
  v98 = *v5;
  v8 = sub_1B21619D8(&qword_1EB7A1330, &unk_1B226A760);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v91 - v9;
  v11 = sub_1B2251E90();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v5[2];
  v108 = a2;
  v92 = v5;
  v16 = sub_1B212EBC0(a2);
  v95 = v15;
  if (v6)
  {

    v94 = 0;
    goto LABEL_5;
  }

  v18 = v16;
  v19 = v17;
  v20 = v15;
  v22 = *(v15 + 40);
  v21 = *(v15 + 48);
  sub_1B21139A0((v20 + 16), v22);
  v23 = (*(v21 + 88))(v18, v19, v22, v21);
  LOBYTE(v18) = v24;

  if ((v18 & 1) == 0)
  {
    v51 = v91;
    if (v11 == v91)
    {
      (*(*(v98 + 96) + 32))(&v104);
      v99 = v104;
      v100 = v105;
      sub_1B2229AB0(v95, v23, v10);
      sub_1B2187B6C(v99, *(&v99 + 1), v100);
      if (sub_1B2122A98(v10, 1, v11) != 1)
      {
        (*(v12 + 32))(v14, v10, v11);
        v85 = v96;
        v86 = v97;
        swift_dynamicCast();
        v48 = v85;
        v49 = 0;
        v50 = v86;
        goto LABEL_14;
      }

      sub_1B212AC5C(v10, &qword_1EB7A1330, &unk_1B226A760);
      goto LABEL_13;
    }

    v52 = v23;
    v53 = v97;
    v54 = sub_1B212F324(v97, v97, &protocol descriptor for DatabaseValueConvertible, &protocol descriptor for StatementColumnConvertible);
    if (!v54)
    {
      v67 = sub_1B212FED0(v53, v53, &protocol descriptor for DatabaseValueConvertible);
      if (!v67)
      {
        v80 = v95;
        v82 = v95[5];
        v81 = v95[6];
        sub_1B21139A0(v95 + 2, v82);
        v83 = v52;
        if ((*(v81 + 40))(v52, v82, v81))
        {
          goto LABEL_40;
        }

        v84 = v96;
        sub_1B2130C20(v51, v80, v83, v108, v53, v93);
LABEL_43:
        v48 = v84;
        v49 = 0;
        goto LABEL_44;
      }

      v69 = v67;
      v70 = v68;
      v71 = sub_1B2252B00();
      v72 = *(v71 - 8);
      MEMORY[0x1EEE9AC00](v71);
      v74 = &v91 - v73;
      static DatabaseValueConvertible.decodeIfPresent(fromRow:atUncheckedIndex:)();
      if (sub_1B2122A98(v74, 1, v69) == 1)
      {
        (*(v72 + 8))(v74, v71);
        goto LABEL_40;
      }

      v101 = v69;
      v102 = v70;
      v90 = sub_1B212FF14(&v99);
      (*(*(v69 - 8) + 32))(v90, v74, v69);
      sub_1B21217FC(&v99, &v104);
      v88 = &qword_1EB7A1290;
      v89 = &qword_1B226A750;
LABEL_42:
      sub_1B21619D8(v88, v89);
      v84 = v96;
      swift_dynamicCast();
      goto LABEL_43;
    }

    v57 = v54;
    v93 = v55;
    v98 = v56;
    v58 = sub_1B2252B00();
    v59 = *(v58 - 8);
    v60 = *(v59 + 64);
    MEMORY[0x1EEE9AC00](v58);
    v63 = &v91 - v62;
    v64 = v95[8];
    v108 = v65;
    v92 = v61;
    if (v64)
    {
      if (v52 < 0xFFFFFFFF80000000)
      {
        __break(1u);
      }

      else if (v52 <= 0x7FFFFFFF)
      {
        MEMORY[0x1EEE9AC00](v61);
        *(&v91 - 2) = v95;
        *(&v91 - 1) = v52;
        v66 = sqlite3_column_type(v64, v52);
        if (v66 == 5)
        {
          sub_1B21117B4(v63, 1, 1, v57);
          v53 = v97;
LABEL_23:
          (*(v59 + 8))(v63, v92);
LABEL_40:
          v48 = v96;
          v49 = 1;
LABEL_44:
          v50 = v53;
          goto LABEL_14;
        }

        v95 = &v91;
        v94 = 0;
        v91 = &v91;
        v77 = MEMORY[0x1EEE9AC00](v66);
        v78 = &v91 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
        v76 = v98;
        (*(v98 + 8))(v64, v52, v57, v98, v77);
        if (sub_1B2122A98(v78, 1, v57) == 1)
        {
          v79 = (*(v59 + 8))(v78, v92);
          MEMORY[0x1EEE9AC00](v79);
          *(&v91 - 2) = sub_1B21B6634;
          *(&v91 - 1) = (&v91 - 4);
          static DatabaseValueConvertible<>._valueMismatch(fromStatement:atUncheckedIndex:context:)(v64, v52, sub_1B21B663C, (&v91 - 4), v57);
          return;
        }

        (*(*(v57 - 8) + 32))(v63, v78, v57);
        sub_1B21117B4(v63, 0, 1, v57);
        v53 = v97;
        v75 = v93;
        goto LABEL_37;
      }

      __break(1u);
      return;
    }

    v75 = v93;
    v76 = v98;
    Row.fastDecodeIfPresent<A>(_:atUncheckedIndex:)();
    if (sub_1B2122A98(v63, 1, v57) == 1)
    {
      goto LABEL_23;
    }

LABEL_37:
    v101 = v57;
    v102 = v75;
    v103 = v76;
    v87 = sub_1B212FF14(&v99);
    (*(*(v57 - 8) + 32))(v87, v63, v57);
    sub_1B2127608(&v99, &v104);
    v88 = &unk_1EB7A3250;
    v89 = &unk_1B226A758;
    goto LABEL_42;
  }

  v94 = 0;
LABEL_5:
  Row.scopes.getter();
  v25 = v104;
  v27 = v105;
  v26 = v106;
  v28 = *(v98 + 88);
  v29 = *(v98 + 104);
  sub_1B22534D0();
  v104 = v25;
  v105 = v27;
  v106 = v26;
  v30 = Row.ScopesTreeView.subscript.getter();

  if (v30)
  {
    Row.containsNonNullValue.getter();
    v31 = v94;
    if (v32)
    {
      v33 = sub_1B211FEA4();
      sub_1B21619D8(&qword_1EB7A0DD0, &unk_1B226A780);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1B22546B0;
      *(inited + 56) = v28;
      *(inited + 64) = v29;
      v35 = sub_1B212FF14((inited + 32));
      (*(*(v28 - 8) + 16))(v35, v108, v28);
      *&v104 = v33;
      sub_1B2130EC8(inited);
      v36 = v96;
      v37 = v97;
      sub_1B222A2B8(v91, v30, v104, v97);
      if (v31)
      {

        return;
      }

      v48 = v36;
      v49 = 0;
      v50 = v37;
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v38 = v95;
  swift_beginAccess();
  v39 = *(v38 + 80);
  v40 = *(v38 + 88);

  sub_1B22534D0();
  *&v104 = v39;
  *(&v104 + 1) = v40;
  v41 = Row.PrefetchedRowsView.subscript.getter();

  v42 = v94;
  if (!v41)
  {
LABEL_13:
    v48 = v96;
    v49 = 1;
    v50 = v97;
    goto LABEL_14;
  }

  v43 = sub_1B211FEA4();
  v106 = type metadata accessor for PrefetchedRowsDecoder(0, *(v98 + 80), *(v98 + 96), v44);
  WitnessTable = swift_getWitnessTable();
  *&v104 = v41;
  *(&v104 + 1) = v43;
  v107 = WitnessTable;
  v105 = 0;
  v46 = v96;
  v47 = v97;
  sub_1B22527E0();
  if (v42)
  {
    return;
  }

  v48 = v46;
  v49 = 0;
  v50 = v47;
LABEL_14:
  sub_1B21117B4(v48, v49, 1, v50);
}

const void *sub_1B2130BA0@<X0>(uint64_t *a1@<X8>, sqlite3_stmt *a2@<X0>, int a3@<W1>)
{
  result = Data.init(sqliteStatement:index:)(a2, a3);
  *a1 = result;
  a1[1] = v5;
  return result;
}

const void *Data.init(sqliteStatement:index:)(sqlite3_stmt *a1, int a2)
{
  result = sqlite3_column_blob(a1, a2);
  if (result)
  {
    v5 = result;
    v6 = sqlite3_column_bytes(a1, a2);
    return MEMORY[0x1B27418E0](v5, v6);
  }

  return result;
}

void sub_1B2130C20(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v9 = *v6;
  sub_1B211FEA4();
  sub_1B21619D8(&qword_1EB7A0DD0, &unk_1B226A780);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B22546B0;
  v11 = v9[11];
  *(inited + 56) = v11;
  *(inited + 64) = v9[13];
  v12 = sub_1B212FF14((inited + 32));
  (*(*(v11 - 8) + 16))(v12, a4, v11);

  sub_1B2130EC8(inited);
  v13 = v9[12];
  type metadata accessor for ColumnDecoder(0, v9[10], v13, v14);
  swift_getWitnessTable();
  sub_1B22527E0();
  if (v21)
  {
    v15 = v21;
    sub_1B21619D8(qword_1EB7A0F98, &unk_1B22595B0);
    if (swift_dynamicCast())
    {

      v16 = sub_1B223EBCC(a3);
      v18 = v17;
      v20 = v16;
      v19 = sub_1B22534D0();
      (*(v13 + 24))(v19);

      sub_1B2251A20();

      sub_1B21267A8(v20, v18);
    }
  }
}

uint64_t sub_1B2130F08(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t *a3, uint64_t *a4)
{
  v6 = *(a1 + 16);
  v7 = *(*v4 + 16);
  result = v7 + v6;
  if (__OFADD__(v7, v6))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = a2(result, 1);
  v11 = *v4;
  if (!*(a1 + 16))
  {

    if (!v6)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v11 + 24) >> 1) - *(v11 + 16) < v6)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1B21619D8(a3, a4);
  swift_arrayInitWithCopy();

  if (!v6)
  {
LABEL_8:
    *v4 = v11;
    return result;
  }

  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, v6);
  v14 = v12 + v6;
  if (!v13)
  {
    *(v11 + 16) = v14;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1B2130FF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

void sub_1B213106C()
{
  sub_1B211ACC4();
  if ((v3 & 1) == 0 || (sub_1B2115F84(), v4 == v5))
  {
LABEL_6:
    sub_1B2118200();
    if (v2)
    {
      v6 = sub_1B21619D8(&qword_1EB7A0DD0, &unk_1B226A780);
      v7 = sub_1B2112F5C(v6);
      sub_1B21127CC(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_1B21117DC();
        sub_1B224B154(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = sub_1B21619D8(&qword_1EB7A0DD8, &qword_1B22544F0);
    sub_1B2111ED8(v11);
    goto LABEL_11;
  }

  sub_1B212CD14();
  if (!v4)
  {
    sub_1B2115544();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_1B2131144@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  a6[3] = type metadata accessor for ColumnDecoder(0, a4, a5, a4);
  a6[4] = swift_getWitnessTable();
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
}

sqlite3_int64 sub_1B21312A4(uint64_t a1, int64_t iCol, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(unint64_t), uint64_t a7)
{
  if (iCol < 0 || *(a1 + 72) <= iCol)
  {
    goto LABEL_10;
  }

  v8 = *(a1 + 64);
  if (!v8)
  {
    return a6(iCol);
  }

  if (iCol >> 31)
  {
    __break(1u);
LABEL_10:
    sub_1B2122384();
    result = sub_1B2115A74("Fatal error");
    __break(1u);
    return result;
  }

  if (sqlite3_column_type(*(a1 + 64), iCol) != 5)
  {
    return sqlite3_column_int64(v8, iCol);
  }

  v35 = iCol;
  v36 = 1;

  RowDecodingContext.init(row:key:)(v10, &v35, v37);
  sub_1B21A2FC0();
  swift_allocError();
  v11 = sub_1B2111C78();
  sub_1B21320F0(v11, iCol, v12);
  sub_1B2116424(v13, v14, v15, v16, v17, v18, v19, v20, v25, v26, v27, v29, v31, v33, v34);
  sub_1B2183238(a7, v21, v22, v23);
  sub_1B2113A44(v28, v30, v32);
  sub_1B218450C(v37);
  return swift_willThrow();
}

uint64_t sub_1B21313F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 96);
  v5[0] = *(a2 + 80);
  v5[1] = v3;
  type metadata accessor for _RowDecoder.KeyedContainer(0, v5);
  return sub_1B2253290();
}

uint64_t sub_1B2131478()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 88);
  if (v2)
  {
    v3 = sub_1B22534D0();
    sub_1B21C9090(v3, v4, v2);
    v6 = v5;

    if (v6)
    {
LABEL_8:

      return 1;
    }
  }

  else
  {
    v7 = sub_1B22534D0();
    v9 = v8;
    v10 = v1[5];
    v11 = v1[6];
    sub_1B21139A0(v1 + 2, v10);
    (*(v11 + 88))(v7, v9, v10, v11);
    LOBYTE(v7) = v12;

    if ((v7 & 1) == 0)
    {
      return 1;
    }
  }

  Row.scopes.getter();
  sub_1B22534D0();
  v13 = Row.ScopesTreeView.subscript.getter();

  if (!v13)
  {
    swift_beginAccess();

    sub_1B22534D0();
    v14 = Row.PrefetchedRowsView.subscript.getter();

    if (!v14)
    {
      return 0;
    }

    goto LABEL_8;
  }

  return 1;
}

uint64_t sub_1B2131688(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[2];
  sub_1B212EBC0(a1);
  if (v2)
  {
  }

  else
  {
    Row.subscript.getter(&v15);

    v10 = v18;
    sub_1B212AC5C(&v15, &qword_1EB7A0E30, &unk_1B2259360);
    if (v10)
    {
      return 0;
    }
  }

  Row.scopes.getter();
  v5 = v15;
  v6 = v16;
  v8 = v17;
  v7 = v18;
  v21 = *(v3 + 88);
  sub_1B22534D0();
  v15 = v5;
  v16 = v6;
  v17 = v8;
  v18 = v7;
  v9 = Row.ScopesTreeView.subscript.getter();

  if (v9)
  {

    return 0;
  }

  swift_beginAccess();
  v11 = *(v4 + 80);
  v12 = *(v4 + 88);

  sub_1B22534D0();
  v19 = v11;
  v20 = v12;
  v13 = Row.PrefetchedRowsView.subscript.getter();

  if (v13)
  {

    return 0;
  }

  return 1;
}

uint64_t Row.subscript.getter@<X0>(uint64_t a2@<X8>)
{
  sub_1B21139A0(v2 + 2, v2[5]);
  sub_1B2138D84();
  result = v4();
  if (v6)
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    v7 = v2[5];
    v8 = v2[6];
    sub_1B21139A0(v2 + 2, v7);
    v9 = sub_1B224B2B4();
    v10(v9, v7, v8);
    v11 = sub_1B2114748();
    DatabaseValue.Storage.value.getter(v11, v12, v13, v14);
    v15 = sub_1B2114748();

    return sub_1B2113A44(v15, v16, v17);
  }

  return result;
}

uint64_t sub_1B2131988()
{
}

uint64_t sub_1B21319A0@<X0>(uint64_t result@<X0>, sqlite3_stmt *a2@<X2>, void *a3@<X8>)
{
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (result <= 0x7FFFFFFF)
  {
    return sub_1B21320F0(a2, result, a3);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B21319D8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Row();
  v2 = swift_allocObject();
  v9 = sub_1B2131A6C(v2, v3, v4, v5, v6, v7, v8);
  sub_1B21619D8(&qword_1EB7A2158, &qword_1B225AD70);
  v10 = MEMORY[0x1E69E7CC0];
  v11 = sub_1B2252190();
  result = sub_1B211DF80(v10, v12, v13, v14, v15, v16, v17);
  *a1 = v9;
  a1[1] = v11;
  a1[2] = result;
  a1[3] = v19;
  return result;
}

uint64_t sub_1B2131A6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13[3] = &type metadata for EmptyRowImpl;
  v13[4] = &off_1F2977698;
  v8 = sub_1B211DF80(MEMORY[0x1E69E7CC0], a2, a3, a4, a5, a6, a7);
  sub_1B2111910(v8, v9, v10, v11);
  *(a1 + 72) = 0;
  sub_1B2113208(v13);
  return a1;
}

uint64_t Row.ScopesTreeView.subscript.getter()
{
  sub_1B211D530();
  v3 = sub_1B2131C40(*v1, v1[1], v1[2], v1[3]);
  v4 = v3[2];
  if (v4)
  {
    while (1)
    {
      v6 = v3[4];
      v5 = v3[5];
      v7 = v3[6];

      if (!swift_isUniquelyReferenced_nonNull_native() || (v4 - 1) > v3[3] >> 1)
      {
        sub_1B2126410();
        sub_1B2162F80();
        v3 = v8;
      }

      sub_1B212ACBC((v3 + 4), &qword_1EB7A0E40);
      v9 = v3[2];
      memmove(v3 + 4, v3 + 7, 24 * v9 - 24);
      v3[2] = v9 - 1;
      if (v6 == v2 && v5 == v0)
      {
        break;
      }

      v11 = sub_1B2117214();
      if (sub_1B224B474(v11, v12))
      {
        break;
      }

      Row.scopes.getter();

      sub_1B216D2EC(v14, v15, v16, v17);

      v4 = v3[2];
      if (!v4)
      {

        return 0;
      }
    }
  }

  else
  {

    return 0;
  }

  return v7;
}

const void *sub_1B2131C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1B2131DCC();
  v8 = v7;
  v10 = v9;
  v11 = sub_1B21268D4(v6, v7, v9 & 1, 1 << *(a2 + 32), *(a2 + 36), 0, a1, a2);
  sub_1B21268C8(v6, v8, v10 & 1);
  if (!v11)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v12 = sub_1B219DF88(v11, 0);

  sub_1B21A0210();
  v14 = v13;

  sub_1B21268C8(v16, v17, v18);
  if (v14 != v11)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v12;
}

uint64_t Row.PrefetchedRowsView.subscript.getter()
{
  sub_1B211D530();
  v3 = sub_1B2131F80(*v1, v1[1]);
  v4 = v3[2];
  if (v4)
  {
    while (1)
    {
      v6 = v3[4];
      v5 = v3[5];
      v7 = v3[6];

      if (!swift_isUniquelyReferenced_nonNull_native() || (v4 - 1) > v3[3] >> 1)
      {
        sub_1B2162EC0();
        v3 = v8;
      }

      sub_1B212ACBC((v3 + 4), &qword_1EB7A0E50);
      v9 = v3[2];
      memmove(v3 + 4, v3 + 9, 40 * v9 - 40);
      v3[2] = v9 - 1;
      if (v6 == v2 && v5 == v0)
      {

        goto LABEL_16;
      }

      v11 = sub_1B2111658();
      v13 = sub_1B224B474(v11, v12);

      if (v13)
      {
        break;
      }

      v14 = sub_1B2117214();
      sub_1B216D048(v14, v15);

      v4 = v3[2];
      if (!v4)
      {

        return 0;
      }
    }

LABEL_16:
  }

  else
  {

    return 0;
  }

  return v7;
}

void *sub_1B2131F80(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = sub_1B219E21C(*(a1 + 16), 0);

  v6 = sub_1B21A13E4(&v8, v5 + 4, v2, a1, a2);

  if (v6 != v2)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v5;
}

uint64_t RecordCursor.deinit()
{

  sub_1B211A000();

  return v0;
}

uint64_t RecordCursor.__deallocating_deinit()
{
  RecordCursor.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t sub_1B21320C0()
{
  v0 = sub_1B212728C();

  return MEMORY[0x1EEE6BDC0](v0, 104, 7);
}

uint64_t sub_1B21320F0@<X0>(sqlite3_stmt *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = sqlite3_column_type(a1, a2) - 1;
  result = 0;
  v6 = 0;
  v7 = 4;
  switch(v4)
  {
    case 0:
      v8 = sub_1B2112864();
      result = sqlite3_column_int64(v8, v9);
      v6 = 0;
      v7 = 0;
      goto LABEL_9;
    case 1:
      v16 = sub_1B2112864();
      v18 = sqlite3_column_double(v16, v17);
      v6 = 0;
      result = *&v18;
      v7 = 1;
      goto LABEL_9;
    case 2:
      v19 = sub_1B2112864();
      if (!sqlite3_column_text(v19, v20))
      {
        __break(1u);
LABEL_11:
        sub_1B2252CD0();

        v21 = sub_1B2252FD0();
        MEMORY[0x1B2741EB0](v21);

        sub_1B2252EC0();
        __break(1u);
        JUMPOUT(0x1B213228CLL);
      }

      result = sub_1B2252400();
      v7 = 2;
LABEL_9:
      *a3 = result;
      *(a3 + 8) = v6;
      *(a3 + 16) = v7;
      return result;
    case 3:
      v10 = sub_1B2112864();
      result = sqlite3_column_blob(v10, v11);
      if (result)
      {
        v12 = result;
        v13 = sub_1B2112864();
        v15 = sqlite3_column_bytes(v13, v14);
        result = MEMORY[0x1B27418E0](v12, v15);
        v7 = 3;
      }

      else
      {
        v7 = 3;
        v6 = 0xC000000000000000;
      }

      goto LABEL_9;
    case 4:
      goto LABEL_9;
    default:
      goto LABEL_11;
  }
}

uint64_t sub_1B21323E0()
{
  sub_1B2114774();
  sub_1B21320F0(v0, v1, v6);
  v2 = v6[0];
  v3 = v6[1];
  v4 = v7;
  sub_1B2113284();
  return sub_1B2113A44(v2, v3, v4);
}

uint64_t sub_1B2132494(uint64_t a1)
{
  v3 = sub_1B212EBC0(a1);
  if (!v2)
  {
    v1 = sub_1B212D190(v3);
  }

  return v1;
}

uint64_t sub_1B2132550(uint64_t a1)
{

  return sub_1B2252B00();
}

uint64_t sub_1B2132598()
{

  return sub_1B2127B14(v0 + 3536, v0 + 2088);
}

uint64_t sub_1B21325B0()
{
}

uint64_t sub_1B21325C8(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_1B2132630(uint64_t a1, char a2)
{
  v3 = *v2;
  sub_1B2253420();
  MEMORY[0x1B2742F10](0);
  v4 = sub_1B2253470();
  v5 = ~(-1 << *(v3 + 32));
  v6 = 1;
  while (1)
  {
    v7 = v4 & v5;
    v8 = (v4 & v5) >> 6;
    v9 = 1 << (v4 & v5);
    v10 = v9 & *(v3 + 56 + 8 * v8);
    if (!v10)
    {
      break;
    }

    type metadata accessor for DatabaseCollation();

    v12 = static DatabaseCollation.== infix(_:_:)(v11, a1);

    if (v12)
    {
      v6 = 0;
      break;
    }

    v4 = v7 + 1;
  }

  v13 = *(v3 + 16);
  v14 = v13 + v6;
  if (__OFADD__(v13, v6))
  {
    __break(1u);
  }

  else
  {
    v15 = *(v3 + 24);
    v16 = v29;
    if (v15 < v14 || (a2 & 1) == 0)
    {
      if (a2)
      {
        sub_1B2124804(v14);
        goto LABEL_16;
      }

      if (v15 < v14)
      {
        sub_1B2124614(v14);
LABEL_16:
        v17 = *v29;
        sub_1B2253420();
        MEMORY[0x1B2742F10](0);
        v18 = sub_1B2253470();
        v19 = ~(-1 << *(v17 + 32));
        while (1)
        {
          v7 = v18 & v19;
          v8 = (v18 & v19) >> 6;
          v9 = 1 << (v18 & v19);
          if ((v9 & *(v17 + 56 + 8 * v8)) == 0)
          {
            v16 = v29;
            if (v10)
            {
              goto LABEL_27;
            }

            goto LABEL_21;
          }

          type metadata accessor for DatabaseCollation();

          v21 = static DatabaseCollation.== infix(_:_:)(v20, a1);

          if (v21)
          {
            break;
          }

          v18 = v7 + 1;
        }

        v16 = v29;
        if (!v10)
        {
          goto LABEL_27;
        }

        goto LABEL_24;
      }

      sub_1B22492E0();
    }

    if (v10)
    {
LABEL_24:
      v27 = *(*v16 + 48);
      result = *(v27 + 8 * v7);
      *(v27 + 8 * v7) = a1;
      return result;
    }

LABEL_21:
    v22 = *v16;
    *(*v16 + 8 * v8 + 56) |= v9;
    *(*(v22 + 48) + 8 * v7) = a1;
    v23 = *(v22 + 16);
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (!v24)
    {
      result = 0;
      *(v22 + 16) = v25;
      return result;
    }
  }

  __break(1u);
LABEL_27:
  type metadata accessor for DatabaseCollation();
  result = sub_1B2253380();
  __break(1u);
  return result;
}

uint64_t sub_1B213285C(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x1E69E7CD0];
    goto LABEL_19;
  }

  sub_1B21619D8(&qword_1EB7A22C0, &unk_1B225D990);
  result = sub_1B2252C90();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_19:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = (a1 + 32 + 16 * v5);
    v9 = *v7;
    v8 = v7[1];
    ++v5;
    sub_1B2253420();

    sub_1B2252370();
    result = sub_1B2253470();
    v10 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v11 = result & v10;
      v12 = (result & v10) >> 6;
      v13 = *(v6 + 8 * v12);
      v14 = 1 << (result & v10);
      if ((v14 & v13) == 0)
      {
        break;
      }

      v15 = (*(v3 + 48) + 16 * v11);
      v16 = *v15 == v9 && v15[1] == v8;
      if (v16 || (sub_1B22531F0() & 1) != 0)
      {

        goto LABEL_16;
      }

      result = v11 + 1;
    }

    *(v6 + 8 * v12) = v14 | v13;
    v17 = (*(v3 + 48) + 16 * v11);
    *v17 = v9;
    v17[1] = v8;
    v18 = *(v3 + 16);
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      goto LABEL_21;
    }

    *(v3 + 16) = v20;
LABEL_16:
    if (v5 == v4)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void sub_1B21329EC()
{
  sub_1B2111830();
  if ((v5 & 1) == 0 || (sub_1B2115F84(), v6 == v7))
  {
LABEL_6:
    sub_1B2111EF8();
    if (v4)
    {
      sub_1B2113B10(v8, v9, v10, v11, v12, v13);
      v14 = sub_1B211A23C();
      j__malloc_size(v14);
      sub_1B211F5F8();
      v14[2] = v3;
      v14[3] = v15;
      if (v2)
      {
LABEL_8:
        v16 = sub_1B2117B84();
        v1(v16);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    sub_1B2115B30();
    goto LABEL_11;
  }

  sub_1B212CD14();
  if (!v6)
  {
    sub_1B2115544();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1B2132C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_1B2122614();
  v57 = v33;
  v58 = v34;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v41 = *v32;
  sub_1B2253420();
  sub_1B2252370();
  sub_1B2253470();
  sub_1B2113B98();
  v44 = ~v43;
  while (1)
  {
    v45 = v42 & v44;
    if (((1 << (v42 & v44)) & *(v41 + 56 + (((v42 & v44) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      break;
    }

    v46 = (*(v41 + 48) + 32 * v45);
    v47 = *v46 == v38 && v46[1] == v36;
    if (v47 || (sub_1B22531F0() & 1) != 0)
    {

      v48 = (*(v41 + 48) + 32 * v45);
      v49 = v48[1];
      v50 = v48[2];
      v51 = v48[3];
      *v40 = *v48;
      v40[1] = v49;
      v40[2] = v50;
      v40[3] = v51;

      goto LABEL_11;
    }

    v42 = v45 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v59 = *v32;

  sub_1B211F200();
  sub_1B2132D80(v53, v54, v55, v56, v45, isUniquelyReferenced_nonNull_native);
  *v32 = v59;
  *v40 = v38;
  v40[1] = v36;
  v40[2] = v57;
  v40[3] = v58;
LABEL_11:
  sub_1B2115CEC();
}

unint64_t sub_1B2132D80(unint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, char a6)
{
  v11 = result;
  v12 = *(*v6 + 16);
  v13 = *(*v6 + 24);
  if (v13 <= v12 || (a6 & 1) == 0)
  {
    if (a6)
    {
      sub_1B224767C();
      goto LABEL_10;
    }

    if (v13 <= v12)
    {
      sub_1B21335E8();
LABEL_10:
      v19 = *v6;
      sub_1B2253420();
      sub_1B2252370();
      result = sub_1B2253470();
      v20 = ~(-1 << *(v19 + 32));
      while (1)
      {
        a5 = result & v20;
        if (((*(v19 + 56 + (((result & v20) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v20)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v21 = (*(v19 + 48) + 32 * a5);
        v22 = *v21 == v11 && v21[1] == a2;
        if (v22 || (sub_1B22531F0() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a5 + 1;
      }
    }

    result = sub_1B2133960();
  }

LABEL_7:
  v14 = *v6;
  *(*v6 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v15 = (*(v14 + 48) + 32 * a5);
  *v15 = v11;
  v15[1] = a2;
  v15[2] = a3;
  v15[3] = a4;
  v16 = *(v14 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
LABEL_19:
    result = sub_1B2253380();
    __break(1u);
  }

  else
  {
    *(v14 + 16) = v18;
  }

  return result;
}

__n128 sub_1B2132EFC(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 initializeBufferWithCopyOfBuffer for MetalDatabaseEventImpl(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1B2132F14(uint64_t a1)
{
  sub_1B2253420();
  sub_1B2252370();
  return sub_1B2253470();
}

GRDBInternal::DatabaseRegion __swiftcall DatabaseRegion.union(_:)(GRDBInternal::DatabaseRegion a1)
{
  sub_1B212D010();
  v4 = *v1;
  if (!v4 || (v5 = *v2) == 0)
  {
    v6 = 0;
LABEL_45:
    *v3 = v6;
    sub_1B212CE34();
    goto LABEL_51;
  }

  v47 = v3;
  sub_1B211B358();
  v6 = sub_1B2252190();

  v8 = sub_1B2133390(v7);

  v10 = sub_1B2133390(v9);
  v11 = sub_1B21334C0(v10, v8) + 56;
  sub_1B21115A0();
  v14 = v13 & v12;
  v16 = (v15 + 63) >> 6;
  v51 = v17;

  v18 = 0;
  v49 = v4;
  v50 = v5;
  v48 = v16;
  if (!v14)
  {
    goto LABEL_5;
  }

  do
  {
    v19 = v18;
LABEL_8:
    v20 = (*(v51 + 48) + ((v19 << 11) | (32 * __clz(__rbit64(v14)))));
    v53 = v20[2];
    v54 = v20[3];
    v55 = v20[1];
    v52 = *v20;
    if (*(v4 + 16))
    {

      sub_1B2113060();
      v21 = sub_1B2133834();
      if ((v22 & 1) == 0)
      {
        v25 = 0;
        v24 = 1;
        goto LABEL_14;
      }

      v23 = (*(v4 + 56) + 16 * v21);
      v24 = *v23;
      v25 = v23[1];
    }

    else
    {
      v25 = 0;
      v24 = 1;
    }

LABEL_14:
    if (*(v5 + 16) && (v26 = sub_1B2133834(), (v27 & 1) != 0))
    {
      v28 = (*(v5 + 56) + 16 * v26);
      v29 = *v28;
      v30 = v28[1];
    }

    else
    {
      v30 = 0;
      v29 = 1;
    }

    if (v24 == 1)
    {
      if (v29 == 1)
      {
        goto LABEL_49;
      }
    }

    else
    {
      if (v29 == 1)
      {
        v29 = v24;
        v30 = v25;
        goto LABEL_32;
      }

      v31 = 0;
      if (v24 && v29)
      {

        v31 = sub_1B21334C0(v29, v24);
      }

      if (v25)
      {
        if (v30)
        {

          v32 = sub_1B21C9C40(v30, v25);

          v29 = v31;
          v30 = v32;
          goto LABEL_32;
        }
      }

      else
      {

        v30 = 0;
      }

      v29 = v31;
    }

LABEL_32:
    swift_isUniquelyReferenced_nonNull_native();
    v33 = sub_1B2133834();
    if (__OFADD__(v6[2], (v34 & 1) == 0))
    {
      goto LABEL_47;
    }

    v35 = v33;
    v36 = v34;
    sub_1B21619D8(&qword_1EB7A1D10, &unk_1B225BB40);
    if (sub_1B2252E70())
    {
      v37 = sub_1B2133834();
      v5 = v50;
      if ((v36 & 1) != (v38 & 1))
      {
        goto LABEL_50;
      }

      v35 = v37;
    }

    else
    {
      v5 = v50;
    }

    v14 &= v14 - 1;
    if (v36)
    {

      v39 = (v6[7] + 16 * v35);
      *v39 = v29;
      v39[1] = v30;
    }

    else
    {
      v6[(v35 >> 6) + 8] |= 1 << v35;
      v40 = (v6[6] + 32 * v35);
      *v40 = v52;
      v40[1] = v55;
      v40[2] = v53;
      v40[3] = v54;
      v41 = (v6[7] + 16 * v35);
      *v41 = v29;
      v41[1] = v30;
      v42 = v6[2];
      v43 = __OFADD__(v42, 1);
      v44 = v42 + 1;
      if (v43)
      {
        goto LABEL_48;
      }

      v6[2] = v44;
    }

    v18 = v19;
    v16 = v48;
    v4 = v49;
  }

  while (v14);
LABEL_5:
  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v19 >= v16)
    {

      v3 = v47;
      goto LABEL_45;
    }

    v14 = *(v11 + 8 * v19);
    ++v18;
    if (v14)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  v45 = sub_1B2253390();
  __break(1u);
LABEL_51:
  result.tableRegions.value._rawValue = v45;
  result.tableRegions.is_nil = v46;
  return result;
}

uint64_t sub_1B21335E8()
{
  v1 = v0;
  v2 = *v0;
  sub_1B21619D8(&qword_1EB7A2340, qword_1B225D9B0);
  result = sub_1B2252C70();
  v4 = result;
  if (*(v2 + 16))
  {
    v28 = v2;
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
        v15 = (*(v2 + 48) + 32 * (v12 | (v5 << 6)));
        v16 = *v15;
        v17 = v15[1];
        v18 = v15[3];
        v29 = v15[2];
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
        v2 = v28;
        v27[2] = v29;
        v27[3] = v18;
        ++*(v4 + 16);
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
          goto LABEL_25;
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

LABEL_25:
    *v1 = v4;
  }

  return result;
}

unint64_t sub_1B2133834()
{
  sub_1B2111FC0();
  sub_1B21224DC();
  sub_1B212CF80();
  sub_1B2252370();
  sub_1B2253470();
  sub_1B211314C();

  return sub_1B21338AC(v1, v2, v3, v0, v4);
}

unint64_t sub_1B21338AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = ~(-1 << *(v5 + 32));
  for (i = a5 & v8; ((1 << i) & *(v5 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v8)
  {
    v10 = (*(v5 + 48) + 32 * i);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1B22531F0() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

void *sub_1B2133960()
{
  v1 = v0;
  sub_1B21619D8(&qword_1EB7A2340, qword_1B225D9B0);
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
        v18 = (*(v2 + 48) + 32 * v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = v18[3];
        v22 = (*(v4 + 48) + 32 * v17);
        *v22 = *v18;
        v22[1] = v19;
        v22[2] = v20;
        v22[3] = v21;
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

uint64_t sub_1B2133AC8(uint64_t *a1)
{
  v4 = *a1;
  type metadata accessor for StatementCursor();
  v1 = swift_allocObject();
  sub_1B211CF8C(v4);

  sub_1B2133B68(v2, &v4);
  return v1;
}

uint64_t sub_1B2133B68(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  *(v2 + 24) = 0;
  *(v2 + 16) = a1;
  v8[0] = v4;
  v8[1] = v5;

  sub_1B2119E50(v8, v6);

  if (v3)
  {
  }

  sub_1B211A378(v4, v5);
  return v2;
}

uint64_t sub_1B2133BF0()
{
  v2 = 1;
  sub_1B2116AD0();
  swift_beginAccess();
  if ((*(v0 + 24) & 1) == 0)
  {
    sub_1B2131988();
    v3 = sub_1B2122D50();
    v4 = sub_1B2133C60(v3);
    if (!v1)
    {
      if (v4)
      {
        v2 = 1;
        *(v0 + 24) = 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return v2;
}

uint64_t sub_1B2133C60(uint64_t a1)
{
  if (!sub_1B2115AA0(a1))
  {
    sub_1B2118184();
    v8 = sub_1B211497C();
    Database.statementWillExecute(_:)(v8);
    v1 = v2;
    if (v2)
    {
      goto LABEL_11;
    }
  }

  if (sqlite3_step(v3) == 100)
  {
    sub_1B2115468();
    nullsub_1();
    if (!v2)
    {

      return 0;
    }
  }

  sub_1B21122DC();
  if (!v4)
  {
    sub_1B2118184();
    sub_1B2122398();
LABEL_11:
  }

  sub_1B2118184();
  v5 = sub_1B211497C();
  Database.statementDidExecute(_:)(v5, v6);
  sub_1B211DA88();

  if (!v1)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1B2133D38()
{
  _s12GRDBInternal23FastDatabaseValueCursorCfd_0();

  return MEMORY[0x1EEE6BDC0](v0, 25, 7);
}

uint64_t sub_1B2133D70(uint64_t a1)
{
  v2 = type metadata accessor for Configuration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B2133DCC(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  swift_allocObject();
  return sub_1B2133E18(a1, v2);
}

uint64_t sub_1B2133E18(uint64_t a1, char a2)
{
  (*(*(*(*v2 + 80) - 8) + 32))(v2 + *(*v2 + 88), a1);
  *(v2 + *(*v2 + 96)) = a2;
  return v2;
}

uint64_t sub_1B2133EB0()
{
  sub_1B2122548();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  sub_1B211D630(v5, v3);
  sub_1B211E590();
  sub_1B211744C();
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = v7;
  v11 = v8;
  v12 = sub_1B21619D8(&qword_1EB7A1CF8, &qword_1B225A760);
  if ((sub_1B21165F8(v12) & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = sub_1B211E590();
  if ((v11 & 1) != (v14 & 1))
  {
LABEL_13:
    result = sub_1B2253390();
    __break(1u);
    return result;
  }

  v10 = v13;
LABEL_5:
  v15 = *v0;
  if (v11)
  {
    *(*(v15 + 56) + 8 * v10) = v6;
    sub_1B2115ED4();
  }

  else
  {
    sub_1B2133FBC(v10, v4, v2, v6, v15);
    sub_1B2115ED4();
  }
}

void sub_1B2133FBC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_1B2117584(a1, a2, a3, a4, a5);
  *(v8 + 8 * v5) = v7;
  v9 = *(v6 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    sub_1B2111AD4(v6, v11);
  }
}

uint64_t sub_1B2133FE8()
{
  v0 = sub_1B2134848();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1B213403C()
{
  sub_1B21348B8(v0);

  return v0;
}

void sub_1B2134088()
{
  sub_1B2111640();
  sub_1B2115410(v3);
  v4 = sub_1B2115A24();
  v1(v4);
  if ((v2 & 1) == 0)
  {
    v5 = sub_1B211790C();
    sub_1B21343E4(v5, v6, v7, v8, v9, v0);
  }

  sub_1B2112FDC();
}

uint64_t sub_1B213410C()
{
  sub_1B21233F8();
  type metadata accessor for SchedulingWatchdog();
  v1 = sub_1B2113B28();
  if ((sub_1B2117B40(v1) & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_1B21118B8();
  result = swift_beginAccess();
  v3 = *(v0 + 16);
  if (!v3)
  {
    return result;
  }

  v4 = v0 + OBJC_IVAR____TtC12GRDBInternal8Database_configuration;
  v5 = type metadata accessor for Configuration(0);
  v6 = *(v4 + *(v5 + 88));
  if (v6)
  {
    v6(v3);
  }

  v7 = sub_1B211FF34(&OBJC_IVAR____TtC12GRDBInternal8Database____lazy_storage___internalStatementCache);
  sub_1B21140E4(v7, v8);

  type metadata accessor for Statement();
  v9 = sub_1B213CCC8();
  v10 = sub_1B211499C(v9, OBJC_IVAR____TtC12GRDBInternal8Database____lazy_storage___internalStatementCache);
  sub_1B2120024(v10, v11);
  v12 = sub_1B211FF34(&OBJC_IVAR____TtC12GRDBInternal8Database____lazy_storage___publicStatementCache);
  sub_1B21140E4(v12, v13);

  v14 = sub_1B213CCC8();
  v15 = sub_1B211499C(v14, OBJC_IVAR____TtC12GRDBInternal8Database____lazy_storage___publicStatementCache);
  sub_1B2120024(v15, v16);
  result = sqlite3_close_v2(v3);
  if (result)
  {
    v17 = result;
    sub_1B21115FC();
    result = swift_beginAccess();
    v18 = off_1EB7A3328;
    if (off_1EB7A3328)
    {

      if (sqlite3_errmsg(v3))
      {
        v19 = sub_1B22523F0();
        v21 = v20;
        v25 = v17;
        sub_1B2252CD0();

        MEMORY[0x1B2741EB0](v19, v21);

        v18(&v25, 0xD00000000000001ALL, 0x80000001B2270ED0);
        v22 = sub_1B2112F9C();
        sub_1B2112F4C(v22, v23);

        goto LABEL_9;
      }

      __break(1u);
LABEL_13:
      sub_1B2112A88();
      result = sub_1B2252EC0();
      __break(1u);
      return result;
    }
  }

LABEL_9:
  *(v0 + 16) = 0;
  v24 = (v4 + *(v5 + 92));
  if (*v24)
  {
    return (*v24)(result);
  }

  return result;
}

uint64_t sub_1B213439C(uint64_t result)
{
  if (result)
  {
    return swift_unknownObjectRelease();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B21343AC()
{

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

void sub_1B21343E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(*(a6 + 16) + OBJC_IVAR____TtC12GRDBInternal8Database_configuration + 41) & 1) == 0 && (Database.isInsideTransaction.getter())
  {
    sub_1B2112A88();
    sub_1B211492C(v6);
    __break(1u);
  }
}

uint64_t sub_1B213447C()
{
  sub_1B21344B0();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1B21344B0()
{

  return v0;
}

uint64_t Database.deinit()
{
  sub_1B2133D70(v0 + OBJC_IVAR____TtC12GRDBInternal8Database_configuration);

  v1 = sub_1B2121264(OBJC_IVAR____TtC12GRDBInternal8Database____lazy_storage___internalStatementCache);
  sub_1B2120024(v1, v2);
  v3 = sub_1B2121264(OBJC_IVAR____TtC12GRDBInternal8Database____lazy_storage___publicStatementCache);
  sub_1B2120024(v3, v4);

  v5 = sub_1B2121264(OBJC_IVAR____TtC12GRDBInternal8Database_busyCallback);
  sub_1B2112F4C(v5, v6);
  v7 = sub_1B2121264(OBJC_IVAR____TtC12GRDBInternal8Database_trace);
  sub_1B2112F4C(v7, v8);

  return v0;
}

uint64_t sub_1B21345EC()
{
  swift_unownedRelease();

  sub_1B211BD38(*(v0 + 48), *(v0 + 56), *(v0 + 64));
  return v0;
}

uint64_t sub_1B2134628()
{

  return v0;
}

uint64_t sub_1B2134650()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));

  return v0;
}

Swift::Void __swiftcall Database.clearSchemaCache()()
{
  type metadata accessor for SchedulingWatchdog();
  if (sub_1B2117B40(v0))
  {
    v1 = (v0 + OBJC_IVAR____TtC12GRDBInternal8Database_schemaCache);
    swift_beginAccess();
    *v1 = 0;

    sub_1B21619D8(&qword_1EB7A21A8, &unk_1B226AE60);
    sub_1B22521C0();
    swift_endAccess();
    sub_1B212DAF0();

    type metadata accessor for Statement();
    sub_1B2113B50();
    v2 = sub_1B2252190();
    sub_1B21263D8(v2, OBJC_IVAR____TtC12GRDBInternal8Database____lazy_storage___internalStatementCache);
    sub_1B212A5AC();

    sub_1B2113B50();
    v3 = sub_1B2252190();
    sub_1B21263D8(v3, OBJC_IVAR____TtC12GRDBInternal8Database____lazy_storage___publicStatementCache);
  }

  else
  {
    sub_1B2111608();
    sub_1B2112A88();
    sub_1B2252EC0();
    __break(1u);
  }
}

uint64_t sub_1B21348B8(uint64_t a1)
{
  type metadata accessor for SchedulingWatchdog();
  if (sub_1B21114CC())
  {
    v2 = *(a1 + 16);
    v3 = sub_1B211A144(v2);
    if (v3)
    {
      v4 = Database.isInsideTransaction.getter();
      sub_1B213410C();
      if ((v4 & 1) == 0)
      {
        sub_1B21343E4(v2, "/Library/Caches/com.apple.xbs/Sources/GRDB/GRDB/Core/SerializedDatabase.swift", 77, 2, 172, a1);
      }
    }

    else
    {
      MEMORY[0x1EEE9AC00](v3);
      sub_1B2252A50();
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](0);
    return sub_1B2252A50();
  }
}

uint64_t sub_1B2134A58()
{
  sub_1B213403C();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t Database.__deallocating_deinit()
{
  Database.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1B2134AE4()
{
  sub_1B21345EC();

  return MEMORY[0x1EEE6BDC0](v0, 66, 7);
}

uint64_t sub_1B2134B18()
{
  sub_1B2134B4C();

  return MEMORY[0x1EEE6BDC0](v0, 57, 7);
}

uint64_t sub_1B2134B4C()
{
  swift_unownedRelease();

  sub_1B211C6D8(*(v0 + 32));

  return v0;
}

uint64_t sub_1B2134B8C()
{
  sub_1B2134628();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1B2134BC0()
{
  sub_1B2134650();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t FilteredRequest.filter(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return sub_1B2134CAC(a1, a2, a3, &unk_1F2972590, sub_1B2134D5C, sub_1B213B33C);
}

{
  return sub_1B2134CAC(a1, a2, a3, &unk_1F29726F8, sub_1B2134D5C, sub_1B21EDB7C);
}

uint64_t sub_1B2134C70()
{
  sub_1B2113208((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1B2134CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(_BYTE *, uint64_t), uint64_t a6)
{
  sub_1B211EE68(a1, v12);
  v10 = swift_allocObject();
  a5(v12, v10 + 16);
  (*(a3 + 8))(a6, v10, a2, a3);
}

uint64_t sub_1B2134D64@<X0>(uint64_t x8_0@<X8>)
{
  sub_1B2114F78();
  memcpy(v5, v6, v7);
  return sub_1B2111F70(x8_0);
}

uint64_t == infix(_:_:)()
{
  sub_1B21131D0();
  sub_1B211592C(v2, v2[3]);
  v3 = sub_1B212DFB4();
  v4(v3);
  sub_1B2134FB0(v1, v19);
  if (v19[3])
  {
    v5 = v19[4];
    sub_1B211FE78(v19);
    v6 = sub_1B2116AC4();
    v7(v6, v5);
    sub_1B2113208(v19);
  }

  else
  {
    sub_1B214BF9C(v19);
    *v18 = 0;
    *&v18[8] = 0;
    v18[16] = 4;
    sub_1B2127D7C(v18);
    sub_1B2124244(__src, v8, v9, v10, v11, v12, v13, v14, v16, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], __dst[14], __dst[15], __dst[16], __dst[17], __dst[18], __dst[19], __dst[20]);
  }

  sub_1B2135088(v0);
  memcpy(__dst, __src, 0xA3uLL);
  sub_1B21356F8(__dst);
  memcpy(v18, v20, 0xA3uLL);
  return sub_1B21356F8(v18);
}

{
  sub_1B21131D0();
  sub_1B2134FB0(v2, v21);
  if (v22)
  {
    v3 = v23;
    sub_1B21139A0(v21, v22);
    v4 = sub_1B212DFB4();
    v5(v4, v3);
    sub_1B2113208(v21);
  }

  else
  {
    v6 = sub_1B214BF9C(v21);
    sub_1B2121244(v6, v7, v8, v9, v10, v11, v12, v13, v17, v18[0], v18[1], v18[2], v18[3], v18[4], v18[5], v18[6], v18[7], v18[8], v18[9], v18[10], v18[11], v18[12], v18[13], v18[14], v18[15], v18[16], v18[17], v18[18], v18[19], v18[20], v19[0], v19[1], v19[2], v19[3], v19[4], v19[5], v19[6], v19[7], v19[8], v19[9], v19[10], v19[11], v19[12], v19[13], v19[14], v19[15], v19[16], v19[17], v19[18], v19[19], v19[20], __src[0], __src[1], __src[2]);
    memcpy(__dst, __src, sizeof(__dst));
  }

  sub_1B211592C(v1, v1[3]);
  v14 = sub_1B212DFB4();
  v15(v14);
  sub_1B2135088(v0);
  memcpy(v19, v18, 0xA3uLL);
  sub_1B21356F8(v19);
  memcpy(__src, __dst, 0xA3uLL);
  return sub_1B21356F8(__src);
}

uint64_t sub_1B2134F14(uint64_t a1, uint64_t a2)
{
  v4[0] = a1;
  v4[1] = a2;
  v2 = sub_1B2134F5C(v4);
  sub_1B21D0A74(v2, v4);
}

uint64_t sub_1B2134F5C(uint64_t a1)
{
  v2 = *(a1 + 160);
  result = a1 + 160;
  v3 = v2 | (*(result + 2) << 16);
  v4 = *(result - 56) & 1;
  *(result - 96) &= 1uLL;
  *(result - 56) = v4;
  *result = v3 & 0x81FF;
  *(result + 2) = BYTE2(v3) & 1;
  return result;
}

uint64_t sub_1B2134F98()
{

  return swift_bridgeObjectRetain_n();
}

uint64_t sub_1B2134FB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B21619D8(&qword_1EB7A10F0, &qword_1B225D320);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B2135030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  __src[0] = a1;
  __src[1] = a2;
  LOBYTE(__src[2]) = 2;
  sub_1B2127D7C(__src);
  memcpy(a3, __src, 0xA3uLL);
}

uint64_t sub_1B2135088@<X0>(uint64_t a1@<X8>)
{
  sub_1B212E2E0(__src);
  sub_1B2111ADC();
  memcpy(v2, v3, v4);
  sub_1B212E2E0(v66);
  sub_1B2111ADC();
  memcpy(v5, v6, v7);
  sub_1B2111ADC();
  memcpy(v8, v9, v10);
  if (sub_1B2127E1C(v67) == 2)
  {
    v11 = sub_1B2127E38(v67);
    if (*(v11 + 16) == 4 && *v11 == 0)
    {
      v37 = sub_1B21262D8();
      sub_1B2127DC0(v37, v38);
      v39 = sub_1B212D864();
      sub_1B2127DC0(v39, v40);
      v41 = sub_1B2111670();
      sub_1B2113A44(v41, v42, v43);
      v44 = sub_1B2111670();
      sub_1B2113A44(v44, v45, v46);
      v36 = __src;
      goto LABEL_13;
    }

    v13 = sub_1B212D864();
    sub_1B2127DC0(v13, v14);
    v15 = sub_1B21262D8();
    sub_1B2127DC0(v15, v16);
    v17 = sub_1B212D864();
    sub_1B2127DC0(v17, v18);
    v19 = sub_1B2111670();
    sub_1B2113A44(v19, v20, v21);
    v22 = sub_1B2114748();
    sub_1B2113A44(v22, v23, v24);
  }

  else
  {
    v25 = sub_1B21262D8();
    sub_1B2127DC0(v25, v26);
    v27 = sub_1B212D864();
    sub_1B2127DC0(v27, v28);
  }

  sub_1B2126034(v62);
  if (sub_1B2127E1C(v62) == 2)
  {
    v29 = sub_1B2127E38(v62);
    if (*(v29 + 16) == 4 && *v29 == 0)
    {
      v30 = sub_1B2111670();
      sub_1B2113A44(v30, v31, v32);
      v33 = sub_1B2111670();
      sub_1B2113A44(v33, v34, v35);
      v36 = &v65;
LABEL_13:
      memcpy(__dst, v36, 0xA3uLL);
      sub_1B2127B14(__dst, v62);
      sub_1B212AC5C(v66, &qword_1EB7A1CE0, &qword_1B225BAB0);
      sub_1B212B4CC(v59);
      v60[0] = 0;
      v60[1] = 0;
      LOBYTE(v60[2]) = 4;
      sub_1B2127D7C(v60);
      memcpy(v58, v60, sizeof(v58));
      sub_1B21353B0(2, v59, a1);
      memcpy(v61, v58, 0xA3uLL);
      sub_1B21356F8(v61);
      memcpy(v62, v59, 0xA3uLL);
      return sub_1B21356F8(v62);
    }

    v48 = sub_1B2114748();
    sub_1B2113A20(v48, v49, v50);
    v51 = sub_1B2111670();
    sub_1B2113A44(v51, v52, v53);
    v54 = sub_1B2114748();
    sub_1B2113A44(v54, v55, v56);
  }

  sub_1B212AC5C(v66, &qword_1EB7A1CE0, &qword_1B225BAB0);
  sub_1B2126034(__dst);
  v57 = sub_1B213532C(v61);
  return sub_1B21352D4(v57, __dst, v61);
}

uint64_t sub_1B21352D4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1B21353B0(0, a2, v3);
}

void sub_1B21352FC()
{

  JUMPOUT(0x1B2741EB0);
}

void sub_1B2135314()
{
  *(v2 + 16) = v0;
  v5 = v2 + 16 * v1;
  *(v5 + 32) = v4;
  *(v5 + 40) = v3;
}

void *sub_1B213532C(void *a1)
{

  return memcpy(a1, &STACK[0x4A0], 0xA3uLL);
}

void *sub_1B2135370(uint64_t *a1)
{
  v2 = *a1;

  return memcpy(&STACK[0x2B8], (v2 + 16), 0xB8uLL);
}

uint64_t sub_1B21353B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  memcpy(__dst, a2, 0xA3uLL);
  sub_1B212E2E0(v89);
  sub_1B212D6F0(v90);
  if (sub_1B2127E1C(v90) == 16)
  {
    v6 = sub_1B2127E38(v90);
    sub_1B21D0A24(v6);
    v7 = v85;
    v8 = v86;
    memcpy(v87, (a2 + 16), 0xA3uLL);
    v9 = sub_1B212D660(v83);
    sub_1B215433C(v9, v10, &qword_1EB7A22B8, &qword_1B225D308, v11, v12, v13, v14, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81[0]);
    sub_1B21353B0(a1, v87);
    v87[0] = v7;
    v87[1] = v8;
    sub_1B21CF728(v87, a3);
    sub_1B21356F8(v84);
    v15 = v81;
    v16 = v82;
LABEL_5:
    memcpy(v15, v16, 0xA3uLL);
    sub_1B21356F8(v81);
  }

  sub_1B212D660(v87);
  if (sub_1B2127E1C(v87) == 16)
  {
    v17 = sub_1B2127E38(v87);
    sub_1B21D0A24(v17);
    v18 = v85;
    v19 = v86;
    sub_1B2146FF4(v83);
    v20 = memcpy(v82, (a2 + 16), 0xA3uLL);
    sub_1B215433C(v20, v21, &qword_1EB7A22B8, &qword_1B225D308, v22, v23, v24, v25, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81[0]);
    sub_1B21353B0(a1, v83);
    v83[0] = v18;
    v83[1] = v19;
    sub_1B21CF728(v83, a3);
    v26 = sub_1B21356F8(v84);
    v15 = sub_1B21D09F8(v26, v27, v28, v29, v30, v31, v32, v33, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v81[0]);
    goto LABEL_5;
  }

  v35 = swift_allocObject();
  v35[16] = a1;
  sub_1B2146FF4(v35 + 24);
  sub_1B212D660(v35 + 192);
  v84[0] = v35;
  v36 = sub_1B21356B4(v84);
  sub_1B211A2B4(v36, v84);
  sub_1B2127DC0(__dst, v81);
  return sub_1B2127DC0(v89, v81);
}

uint64_t sub_1B21355A4()
{
  sub_1B211668C(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 104), *(v0 + 120), *(v0 + 136), *(v0 + 152), *(v0 + 184) | (*(v0 + 186) << 16));
  sub_1B211668C(*(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224), *(v0 + 232), *(v0 + 240), *(v0 + 248), *(v0 + 256), *(v0 + 272), *(v0 + 288), *(v0 + 304), *(v0 + 320), *(v0 + 352) | (*(v0 + 354) << 16));

  return swift_deallocObject();
}

void *sub_1B2135658(void *a1)
{

  return memcpy(a1, v1, 0xB8uLL);
}

uint64_t sub_1B2135670(uint64_t a1)
{

  return sub_1B22531F0();
}

uint64_t sub_1B2135690()
{
  *(v0 + 2096) = 0;
  *(v0 + 2088) = 0;
  *(v0 + 2104) = 4;

  return sub_1B2127D7C(v0 + 2088);
}

uint64_t sub_1B21356B4(uint64_t a1)
{
  v2 = *(a1 + 160);
  result = a1 + 160;
  v3 = v2 | (*(result + 2) << 16);
  v4 = *(result - 56) & 1;
  *(result - 96) &= 1uLL;
  *(result - 56) = v4;
  *result = v3 & 0x81FF;
  *(result + 2) = (v3 & 0x1FFFF | 0x680000u) >> 16;
  return result;
}

double sub_1B213574C()
{
  sub_1B212CF58();
  v4 = v3;
  v6 = (*(v5 + 8))();
  v8 = v7;
  v9 = swift_allocObject();
  v9[2] = v2;
  v9[3] = v1;
  v9[4] = v0;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1B213A0B8;
  *(v10 + 24) = v9;

  v11 = MEMORY[0x1E69E7CC0];
  sub_1B2116B4C();
  v13 = v12;
  v15 = v14;
  sub_1B21359AC();
  v17 = v16;
  v19 = v18;

  *v4 = v6;
  *(v4 + 8) = v8;
  *(v4 + 16) = 0;
  *(v4 + 24) = sub_1B2139E34;
  *(v4 + 32) = v10;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  *(v4 + 56) = v11;
  *(v4 + 64) = 0;
  *(v4 + 72) = v13;
  *(v4 + 80) = v15;
  *(v4 + 88) = v17;
  *(v4 + 96) = v19;
  *(v4 + 104) = 0;
  result = 0.0;
  *(v4 + 112) = 0u;
  *(v4 + 128) = 0u;
  *(v4 + 144) = 0u;
  *(v4 + 160) = 0;
  *(v4 + 161) = 1;
  return result;
}

uint64_t sub_1B21358A4()
{

  return swift_deallocObject();
}

uint64_t static TableRecord.filter(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1B2111814(a1, a2, a3);
  sub_1B211D53C(v3, v4, v5, v6);
  v7 = sub_1B21115BC();
  v10 = FilteredRequest.filter(_:)(v7, v8, v9);
  sub_1B2116508(v10, v11, v12, v13, v14, v15, v16, v17, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69);
  sub_1B211283C();
  v26 = sub_1B2118220(v18, v19, v20, v21, v22, v23, v24, v25, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v71);
  return v27(v26);
}

void sub_1B21359AC()
{
  sub_1B2111F14();
  v8 = v1;
  v9 = *(v1 + 16);
  if (v9)
  {
    sub_1B212D820(v1, v2, v3, v4, v5, v6, v7);
    v10 = v24;
    v11 = (v8 + 48);
    do
    {
      memcpy(__dst, v11 - 16, 0xE2uLL);
      v13 = __dst[0];
      v12 = __dst[1];
      memcpy(v23, v11, 0xD2uLL);
      sub_1B211E17C(__dst, v21, &qword_1EB7A1BE0, &qword_1B2259960);
      sub_1B2181728(&__dst[2], v21);
      sub_1B218179C(v23);

      sub_1B2122400(__dst, &qword_1EB7A1BE0, &qword_1B2259960);
      sub_1B212D630();
      if (v19)
      {
        sub_1B211F354(v14, v15, v16, v17, v18);
        v10 = v24;
      }

      *(v10 + 16) = v0;
      v20 = v10 + 16 * v8;
      *(v20 + 32) = v13;
      *(v20 + 40) = v12;
      v11 += 232;
      --v9;
    }

    while (v9);
  }

  sub_1B2116938(v8, &qword_1EB7A1BE8, &qword_1B226C280, sub_1B2135AE0);
  sub_1B2117220();
  sub_1B2111588();
}

void sub_1B2135AE0(uint64_t a1, char a2, void *a3)
{
  v5 = 0;
  v6 = *(a1 + 16);
  v24 = a1 + 32;
  while (1)
  {
    if (v5 == v6)
    {
      sub_1B2135E64(__src);
      memcpy(__dst, __src, 0xE2uLL);
      v5 = v6;
    }

    else
    {
      if ((v5 & 0x8000000000000000) != 0)
      {
        goto LABEL_24;
      }

      if (v5 >= *(a1 + 16))
      {
        goto LABEL_25;
      }

      memcpy(__src, (v24 + 232 * v5), 0xE2uLL);
      memcpy(__dst, (v24 + 232 * v5++), 0xE2uLL);
      nullsub_1();
      sub_1B211E17C(__src, v26, &qword_1EB7A1BE0, &qword_1B2259960);
    }

    memcpy(__src, __dst, 0xE2uLL);
    if (sub_1B2117000(__src) == 1)
    {

      return;
    }

    v7 = __dst[0];
    v8 = __dst[1];
    memcpy(v26, &__dst[2], 0xD2uLL);
    v9 = *a3;
    v11 = sub_1B211E590();
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    if (__OFADD__(v12, v13))
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      sub_1B2253390();
      __break(1u);
      goto LABEL_27;
    }

    v14 = v10;
    if (v9[3] < v12 + v13)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_18;
      }
    }

    else
    {
      sub_1B21619D8(&qword_1EB7A13C0, &qword_1B2257E60);
      sub_1B2252E80();
      if (v14)
      {
        goto LABEL_18;
      }
    }

LABEL_15:
    v17 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v18 = (v17[6] + 16 * v11);
    *v18 = v7;
    v18[1] = v8;
    memcpy((v17[7] + 216 * v11), v26, 0xD2uLL);
    v19 = v17[2];
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      goto LABEL_23;
    }

    v17[2] = v21;
    a2 = 1;
  }

  sub_1B2245EB4();
  v15 = sub_1B211E590();
  if ((v14 & 1) != (v16 & 1))
  {
    goto LABEL_26;
  }

  v11 = v15;
  if ((v14 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_18:
  v22 = swift_allocError();
  swift_willThrow();
  v29 = v22;
  v23 = v22;
  sub_1B21619D8(qword_1EB7A0F98, &unk_1B22595B0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_1B218179C(v26);

    return;
  }

LABEL_27:
  sub_1B2252CD0();
  MEMORY[0x1B2741EB0](0xD00000000000001BLL, 0x80000001B226CFA0);
  sub_1B2252E10();
  MEMORY[0x1B2741EB0](39, 0xE100000000000000);
  sub_1B2252EC0();
  __break(1u);
}

uint64_t sub_1B2135E94@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v8 = *(a2 - 8);
  (*(v8 + 16))(a3, v3);
  result = a1(a3);
  if (v4)
  {
    return (*(v8 + 8))(a3, a2);
  }

  return result;
}

uint64_t sub_1B2135F74(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1B2135F8C(char *__src, uint64_t a2, uint64_t a3, uint64_t a4)
{
  memcpy(__dst, __src, 0xA2uLL);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v9 = __dst[5];
  if (__dst[5])
  {
    v10 = __dst[6];
    v11 = swift_allocObject();
    v11[2] = v9;
    v11[3] = v10;
    v11[4] = sub_1B213B0F4;
    v11[5] = v8;
    v12 = sub_1B213B044;
    v8 = v11;
  }

  else
  {
    v12 = sub_1B213B0F4;
  }

  v13 = *(__src + 1);
  v21 = *__src;
  v22 = v13;
  v23 = *(__src + 4);
  memcpy(__srca, __src + 56, sizeof(__srca));
  memcpy(v24, __src, 0xA2uLL);

  sub_1B2136148(__dst, v19);
  InterfaceRequest = type metadata accessor for QueryInterfaceRequest(0, a4, v14, v15);
  (*(*(InterfaceRequest - 8) + 8))(v24, InterfaceRequest);
  v17 = v22;
  *__src = v21;
  *(__src + 1) = v17;
  *(__src + 4) = v23;
  *(__src + 5) = v12;
  *(__src + 6) = v8;
  return memcpy(__src + 56, __srca, 0x6AuLL);
}

void *FetchRequest<>.fetchOne(_:)()
{
  sub_1B211543C();
  sub_1B21130B8(v0, v1, v2);
  v3 = sub_1B2115A3C();
  return static FetchableRecord.fetchOne<A>(_:_:)(v3, v4, v5, v6, v7, v8);
}

uint64_t QueryInterfaceRequest.makePreparedRequest(_:forSingleResult:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_1B2114F78();
  memcpy(v7, v8, v9);
  sub_1B2136148(v28, __src);
  sub_1B21366E4(v28, __src);
  sub_1B2137278();
  v11 = v10;
  memcpy(__dst, __src, sizeof(__dst));
  v30 = a2;
  v31 = v11;
  v12 = sub_1B2137488(a1);
  if (v3)
  {
    return sub_1B2142BCC(__dst);
  }

  v14 = v12;
  type metadata accessor for StatementArgumentsSink();
  swift_allocObject();

  v21 = sub_1B2114D98(0, v15, v16, v17, v18, v19, v20);
  type metadata accessor for SQLGenerationContext();
  swift_initStackObject();

  v23 = sub_1B2117164(v22, v21, MEMORY[0x1E69E7CC0]);
  sub_1B21425A4(v23, __src);

  *(a3 + 40) = 0;
  *(a3 + 24) = 0u;
  *(a3 + 8) = 0u;
  *a3 = v14;
  sub_1B2142B5C(__src, a3 + 8);
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  sub_1B2137278();
  v25 = v24;
  sub_1B2142BCC(__dst);
  if (!*(v25 + 16))
  {
  }

  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  memcpy((v26 + 24), v28, 0xA2uLL);
  *(a3 + 48) = sub_1B2181204;
  *(a3 + 56) = v26;
  return sub_1B2136148(v28, __src);
}

uint64_t sub_1B2136440()
{

  if (v0[8])
  {
  }

  if (v0[17])
  {
  }

  if (v0[19])
  {
  }

  return swift_deallocObject();
}

void *static FetchableRecord.fetchOne<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  result = (*(a5 + 32))(&v33, a1, 1, a3, a5);
  if (!v6)
  {
    v19 = v35;
    if (v35)
    {
      v20 = v36;
      type metadata accessor for Row();
      v21 = v33;
      v32 = 0uLL;

      v22 = static Row.fetchOne(_:arguments:adapter:)(v21, &v32, &v34);
      v29 = v22;
      if (v22)
      {
        sub_1B21619D8(qword_1EB7A13D0, qword_1B2257E80);
        v30 = swift_allocObject();
        *(v30 + 16) = xmmword_1B2257570;
        *(v30 + 32) = v29;

        v19(a1, v30);

        (*(a4 + 8))(v29, a2, a4);
        v31 = 0;
      }

      else
      {
        v31 = 1;
      }

      sub_1B2112F4C(v19, v20);
      sub_1B2142D18(&v33);
      return sub_1B21117B4(a6, v31, 1, a2);
    }

    else
    {
      v23 = sub_1B2117FCC(result, v12, v13, v14, v15, v16, v17, v18, v32, *(&v32 + 1), v33);
      static FetchableRecord.fetchOne(_:arguments:adapter:)(v23, v24, v25, a2, a4, v26, v27, v28, a6);
      return sub_1B2142D18(&v33);
    }
  }

  return result;
}

__n128 sub_1B21366E4@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v4 = a1->n128_u64[0];
  v5 = a1->n128_u64[1];
  v37 = a1->n128_u64[0];
  v38 = v5;
  if (a1[1].n128_u64[0])
  {
    v6 = a1[1].n128_i64[0];
  }

  else
  {
    type metadata accessor for TableAlias();
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    *(v6 + 32) = 0;
    *(v6 + 40) = 0;
    *(v6 + 48) = 1;
  }

  v8 = a1[1].n128_u64[1];
  v7 = a1[2].n128_u64[0];
  sub_1B2113B74();
  v9 = swift_allocObject();
  v9[2] = sub_1B213A564;
  v9[3] = v6;
  v9[4] = v8;
  v9[5] = v7;
  v36 = v9;
  v10 = a1[2].n128_i64[1];
  v11 = a1[3].n128_i64[0];
  if (v10)
  {
    sub_1B2113B74();
    v12 = swift_allocObject();
    v12[2] = sub_1B213C95C;
    v12[3] = v6;
    v12[4] = v10;
    v12[5] = v11;
    v35 = v12;

    v34 = sub_1B213AF30;
  }

  else
  {
    v34 = 0;
    v35 = a1[3].n128_u64[0];
  }

  swift_retain_n();

  sub_1B2112328(v10, v11);
  sub_1B21369F0();
  v33 = v13;
  v15 = v14;
  v16 = a1[7].n128_i64[0];
  v17 = a1[7].n128_u64[1];
  v31 = v17;
  if (v16)
  {
    sub_1B2113B74();
    v18 = swift_allocObject();
    v18[2] = sub_1B215677C;
    v18[3] = v6;
    v18[4] = v16;
    v18[5] = v17;

    v32 = sub_1B2139E14;
  }

  else
  {
    v32 = 0;
    v18 = a1[7].n128_u64[1];
  }

  v20 = a1[8].n128_i64[0];
  v19 = a1[8].n128_i64[1];
  if (v20)
  {
    sub_1B2113B74();
    v21 = swift_allocObject();
    v21[2] = sub_1B2251998;
    v21[3] = v6;
    v21[4] = v20;
    v21[5] = v19;

    v30 = sub_1B213AF48;
  }

  else
  {
    v30 = 0;
    v21 = a1[8].n128_u64[1];
  }

  v29 = v15 & 1;
  v22 = a1[5].n128_u64[1];
  sub_1B2112328(v16, v31);
  sub_1B2112328(v20, v19);
  sub_1B2136B54();
  v24 = v23;
  v26 = v25;
  v39 = a1[9];
  v40 = a1[10].n128_u16[0];
  v27 = a1[6].n128_u8[8];
  sub_1B2136FBC();
  sub_1B21159FC();

  sub_1B2137224(a1);
  a2->n128_u64[0] = v37;
  a2->n128_u64[1] = v38;
  a2[1].n128_u64[0] = v6;
  a2[1].n128_u64[1] = sub_1B2139E14;
  a2[2].n128_u64[0] = v36;
  a2[2].n128_u8[8] = v27;
  a2[3].n128_u64[0] = v34;
  a2[3].n128_u64[1] = v35;
  a2[4].n128_u64[0] = v33;
  a2[4].n128_u8[8] = v29;
  a2[5].n128_u64[0] = v24;
  a2[5].n128_u64[1] = v26;
  a2[6].n128_u64[0] = v32;
  a2[6].n128_u64[1] = v18;
  a2[7].n128_u64[0] = v30;
  a2[7].n128_u64[1] = v21;
  result = v39;
  a2[9].n128_u16[0] = v40;
  a2[8] = v39;
  a2[9].n128_u64[1] = v22;
  a2[10].n128_u64[0] = v20;
  return result;
}

void sub_1B21369F0()
{
  sub_1B211AD88();
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1;
    v4 = v0;
    v21 = MEMORY[0x1E69E7CC0];
    sub_1B214C924();
    v5 = (v3 + 48);
    do
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      if (*v5)
      {

        sub_1B21369F0();
        v10 = v9;
        v12 = v11;
        v13 = sub_1B212D004();
        sub_1B214DCD8(v13, v14, 1);
        v15 = v12 & 1;
      }

      else
      {
        sub_1B2113B74();
        v15 = swift_allocObject();
        *(v15 + 16) = sub_1B214D93C;
        *(v15 + 24) = v4;
        *(v15 + 32) = v7;
        *(v15 + 40) = v6;
        v16 = sub_1B212D004();
        sub_1B214C970(v16, v17, 0);

        v10 = sub_1B214D6E8;
      }

      v19 = *(v21 + 16);
      v18 = *(v21 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1B211156C(v18);
        sub_1B214C924();
      }

      *(v21 + 16) = v19 + 1;
      v20 = v21 + 24 * v19;
      *(v20 + 32) = v10;
      *(v20 + 40) = v15;
      *(v20 + 48) = v8;
      v5 += 24;
      --v2;
    }

    while (v2);
  }

  sub_1B21119F0();
}

void sub_1B2136B54()
{
  sub_1B2111640();
  v1 = v0;
  v3 = v2;
  v49 = MEMORY[0x1E69E7CC0];
  v4 = sub_1B2252190();
  v5 = 0;
  v6 = *(v3 + 16);
  v7 = v3 + 40;
  for (i = v3 + 40; ; v7 = i)
  {
    for (j = v7 + 16 * v5; ; j += 16)
    {
      if (v6 == v5)
      {
        sub_1B2112FDC();
        return;
      }

      if (v5 >= v6)
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      if (!*(v1 + 16))
      {
        goto LABEL_24;
      }

      v9 = *(j - 8);
      v10 = *j;

      sub_1B2111664();
      sub_1B211E590();
      if ((v11 & 1) == 0)
      {
        goto LABEL_25;
      }

      v12 = v1;
      sub_1B21165CC();
      memcpy(v13, v14, v15);
      sub_1B21165CC();
      memcpy(v16, v17, v18);
      sub_1B21165CC();
      memmove(v19, v20, v21);
      v55[0] = v9;
      v55[1] = v10;
      memcpy(v56, __src, sizeof(v56));

      sub_1B2181728(v53, __dst);
      sub_1B2181728(v54, __dst);
      sub_1B212AC5C(v55, &qword_1EB7A13A8, &qword_1B2257E40);
      memcpy(v58, v54, 0xD2uLL);
      v57[0] = v9;
      v57[1] = v10;
      v22 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_26;
      }

      if (LOBYTE(v58[0]) - 2 >= 2)
      {
        break;
      }

      sub_1B212AC5C(v57, &qword_1EB7A13A8, &qword_1B2257E40);
      ++v5;
    }

    v46 = LOBYTE(v58[0]) != 0;
    v48 = v58[1];
    v23 = v58[2];
    j = v58[3];
    v45 = v58[4];
    memcpy(v60, &v54[48], 0xA2uLL);
    v24 = v58[5];
    sub_1B2181640(v58[1], v58[2], v58[3], v58[4], v58[5]);
    sub_1B2136148(&v58[6], __dst);
    sub_1B21366E4(v60, v59);
    memcpy(&v52[7], v59, 0xA8uLL);
    LOBYTE(__src[0]) = v46;
    __src[1] = v48;
    __src[2] = v23;
    __src[3] = j;
    __src[4] = v45;
    LOBYTE(__src[5]) = v24;
    memcpy(&__src[5] + 1, v52, 0xAFuLL);
    sub_1B21A63AC(__src, __dst);
    swift_isUniquelyReferenced_nonNull_native();
    v61 = v4;
    sub_1B2111664();
    sub_1B211E590();
    sub_1B2118304();
    if (__OFADD__(v27, v28))
    {
      goto LABEL_27;
    }

    j = v25;
    v29 = v26;
    sub_1B21619D8(&qword_1EB7A1CC0, &qword_1B225A4C8);
    if (sub_1B2252E70())
    {
      sub_1B2111664();
      v30 = sub_1B211E590();
      v32 = v49;
      if ((v29 & 1) != (v31 & 1))
      {
        goto LABEL_29;
      }

      j = v30;
    }

    else
    {
      v32 = v49;
    }

    if (v29)
    {
      goto LABEL_30;
    }

    v4 = v61;
    sub_1B21129C8(&v61[j >> 6]);
    v33 = (v61[6] + 16 * j);
    *v33 = v9;
    v33[1] = v10;
    memcpy((v61[7] + 216 * j), __src, 0xD8uLL);
    v34 = v61[2];
    v35 = __OFADD__(v34, 1);
    v36 = v34 + 1;
    if (v35)
    {
      break;
    }

    v61[2] = v36;
    swift_bridgeObjectRetain_n();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1B21150D0();
      sub_1B214400C();
      v32 = v40;
    }

    v38 = *(v32 + 16);
    v37 = *(v32 + 24);
    if (v38 >= v37 >> 1)
    {
      sub_1B211156C(v37);
      sub_1B214400C();
      v32 = v41;
    }

    *(v32 + 16) = v38 + 1;
    v49 = v32;
    v39 = v32 + 16 * v38;
    *(v39 + 32) = v9;
    *(v39 + 40) = v10;
    sub_1B21A6464(__src);
    sub_1B212AC5C(v57, &qword_1EB7A13A8, &qword_1B2257E40);
    v5 = v22;
    v1 = v12;
  }

LABEL_28:
  __break(1u);
LABEL_29:
  sub_1B2253390();
  __break(1u);
LABEL_30:
  sub_1B2115C3C();
  v44 = (v42 + j * v43);
  memcpy(__dst, v44, sizeof(__dst));
  memcpy(v44, __src, 0xD8uLL);
  sub_1B21A6464(__dst);
  sub_1B2115700();
  sub_1B2117408("Fatal error");
  __break(1u);
}

uint64_t sub_1B2136FBC()
{
  sub_1B21370F0(v0[11], v0[12]);
  v2 = v1;
  v3 = v0[9];
  v12 = v0[10];
  v13 = v3;
  v10 = v3;
  v11 = v12;
  v4 = *(v1 + 16);
  sub_1B2122B00(&v13, __dst, &qword_1EB7A0DA0, &qword_1B2254340);
  result = sub_1B2122B00(&v12, __dst, &qword_1EB7A2220, &qword_1B225BB08);
  v6 = 0;
  for (i = (v2 + 80); ; i += 216)
  {
    if (v4 == v6)
    {

      return v10;
    }

    if (v6 >= *(v2 + 16))
    {
      break;
    }

    result = memcpy(__dst, i - 48, 0xD2uLL);
    if (__dst[0] < 2u)
    {
      memcpy(v14, i, sizeof(v14));
      sub_1B2181728(__dst, v8);
      sub_1B2136FBC();
      sub_1B21A6528();

      result = sub_1B218179C(__dst);
    }

    ++v6;
  }

  __break(1u);
  return result;
}

void sub_1B21370F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1B216EBEC(0, v2, 0);
    v5 = v14;
    v6 = a1 + 40;
    while (*(a2 + 16))
    {

      v7 = sub_1B211E590();
      if ((v8 & 1) == 0)
      {
        goto LABEL_10;
      }

      memcpy(__dst, (*(a2 + 56) + 216 * v7), 0xD2uLL);
      sub_1B2181728(__dst, v12);

      v14 = v5;
      v10 = *(v5 + 16);
      v9 = *(v5 + 24);
      if (v10 >= v9 >> 1)
      {
        v11 = sub_1B211156C(v9);
        sub_1B216EBEC(v11, v10 + 1, 1);
        v5 = v14;
      }

      *(v5 + 16) = v10 + 1;
      memcpy((v5 + 216 * v10 + 32), __dst, 0xD2uLL);
      v6 += 16;
      if (!--v2)
      {
        return;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }
}

void sub_1B2137278()
{
  sub_1B2111F14();
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v1 + 16);
  v4 = (v1 + 40);
  v5 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    while (*(v2 + 16))
    {
      v6 = *(v4 - 1);
      v7 = *v4;

      v8 = sub_1B211E590();
      if ((v9 & 1) == 0)
      {
        goto LABEL_20;
      }

      v10 = (*(v2 + 56) + 216 * v8);
      memcpy(__dst, v10, 0xD2uLL);
      memcpy(__src, v10, 0xD2uLL);
      memmove(v32, v10, 0xD2uLL);
      v33[0] = v6;
      v33[1] = v7;
      memcpy(v34, __src, sizeof(v34));

      sub_1B2181728(__dst, v30);
      sub_1B2181728(v32, v30);
      sub_1B212AC5C(v33, &qword_1EB7A13A8, &qword_1B2257E40);
      sub_1B213CB94(&v30[16], v11, v12, v13, v14, v15, v16, v17, *v30, *&v30[8], *&v30[16], *&v30[24], *&v30[32], *&v30[40], *&v30[48], *&v30[56], *&v30[64], *&v30[72], *&v30[80], *&v30[88], *&v30[96], *&v30[104], *&v30[112], *&v30[120], *&v30[128], *&v30[136], *&v30[144], *&v30[152], *&v30[160], *&v30[168], *&v30[176], *&v30[184], *&v30[192], *&v30[200], *&v30[208], *&v30[216], *&v30[224], __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], __dst[14], __dst[15], __dst[16], __dst[17], __dst[18], __dst[19], __dst[20], __dst[21], __dst[22], __dst[23], __dst[24], __dst[25]);
      *v30 = v6;
      *&v30[8] = v7;
      sub_1B21C3FEC();
      v19 = v18;
      memcpy(__src, v30, 0xE2uLL);
      sub_1B212AC5C(__src, &qword_1EB7A13A8, &qword_1B2257E40);
      v20 = *(v19 + 16);
      v21 = *(v5 + 16);
      v22 = v21 + v20;
      if (__OFADD__(v21, v20))
      {
        goto LABEL_21;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v22 > *(v5 + 24) >> 1)
      {
        if (v21 <= v22)
        {
          v24 = v21 + v20;
        }

        else
        {
          v24 = v21;
        }

        sub_1B2161FB4(isUniquelyReferenced_nonNull_native, v24, 1, v5);
        v5 = v25;
      }

      if (*(v19 + 16))
      {
        sub_1B2116A58();
        if (v26 != v27)
        {
          goto LABEL_23;
        }

        swift_arrayInitWithCopy();

        if (v20)
        {
          v28 = *(v5 + 16);
          v27 = __OFADD__(v28, v20);
          v29 = v28 + v20;
          if (v27)
          {
            goto LABEL_24;
          }

          *(v5 + 16) = v29;
        }
      }

      else
      {

        if (v20)
        {
          goto LABEL_22;
        }
      }

      v4 += 2;
      if (!--v3)
      {
        goto LABEL_18;
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
LABEL_24:
    __break(1u);
  }

  else
  {
LABEL_18:
    sub_1B2111588();
  }
}

uint64_t sub_1B2137488(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for StatementArgumentsSink();
  sub_1B2111758(v4);
  v11 = sub_1B2114D98(0, v5, v6, v7, v8, v9, v10);
  v12 = MEMORY[0x1E69E7CC0];
  sub_1B2116B4C();
  v14 = v13;
  v15 = type metadata accessor for SQLGenerationContext();
  v16 = sub_1B211AD64(v15);

  sub_1B2117164(v17, v11, v12);
  sub_1B21225BC();
  sub_1B21376C4();
  if (v16 || (v14 = sub_1B212641C(v18, v19, 0), , sub_1B211B048(&v30), *v29 = v30, Statement.arguments.setter(v29, v20), swift_beginAccess(), v31 = *(v14 + 32), , sub_1B21225BC(), sub_1B214179C(v21, v22, v23), , *(v14 + 32) = v29[0], , (v25 = *(v14 + 32)) != 0 && !*(v25 + 16)))
  {
  }

  else
  {
    sub_1B21424C0(a1, v2[22], *v2, v2[1], v29);
    v26 = v29[0];
    swift_beginAccess();
    v27 = *(v14 + 32);
    v28[0] = v26;
    v28[1] = v27;
    v32.tableRegions.value._rawValue = v28;
    DatabaseRegion.union(_:)(v32);

    *(v14 + 32) = v31;
    swift_endAccess();
  }

  return v14;
}

void sub_1B21376C4()
{
  sub_1B2111640();
  v3 = v1;
  v4 = v0;
  memcpy(v152, v0, 0xA8uLL);
  v5 = sub_1B2138500();
  v6 = type metadata accessor for SQLGenerationContext();
  sub_1B211AD64(v6);

  v8 = sub_1B2138A30(v7, v5);
  sub_1B21397D0(v8);
  v11 = v1;
  if (v1)
  {

LABEL_14:
    sub_1B2112FDC();
    return;
  }

  v151[27] = v9;
  v151[28] = v10;
  MEMORY[0x1B2741EB0](0x5443454C4553, 0xE600000000000000);
  if (v152[5])
  {
    MEMORY[0x1B2741EB0](0x434E495453494420, 0xE900000000000054);
  }

  v12 = sub_1B2139B70();
  sub_1B2139BC4(v12, v152, __dst);
  v142 = v4;

  v13 = *__dst;
  if (*(*__dst + 16))
  {
    MEMORY[0x1B2741EB0](32, 0xE100000000000000);
    v14 = *(v13 + 16);
    v15 = MEMORY[0x1E69E7CC0];
    if (v14)
    {
      v144 = v8;
      v148[0] = MEMORY[0x1E69E7CC0];
      sub_1B2111CD4();
      sub_1B2116B10(v16, v17, v18, v19, v20, v21, v22);
      v24 = 0;
      v25 = 32;
      v15 = v148[0];
      while (v24 < *(v13 + 16))
      {
        v26 = v15;
        memcpy(__dst, (v13 + v25), 0xB8uLL);
        v27 = v13;
        memcpy(v151, (v13 + v25), 0xB8uLL);
        sub_1B213A774(__dst, v149);
        v28 = sub_1B213A7D0(v144);
        v2 = v29;
        v23 = sub_1B213A5CC(__dst);
        v15 = v26;
        v148[0] = v26;
        v3 = *(v26 + 16);
        v30 = *(v15 + 24);
        if (v3 >= v30 >> 1)
        {
          sub_1B211156C(v30);
          sub_1B212E024();
          sub_1B2116B10(v32, v33, v34, v35, v36, v37, v38);
          v15 = v148[0];
        }

        ++v24;
        *(v15 + 16) = v3 + 1;
        v31 = v15 + 16 * v3;
        *(v31 + 32) = v28;
        *(v31 + 40) = v2;
        v25 += 184;
        v11 = 0;
        v13 = v27;
        if (v14 == v24)
        {
          v8 = v144;
          goto LABEL_13;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_13:
      *__dst = v15;
      v39 = sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
      v40 = sub_1B21179D8(qword_1ED85E790);
      sub_1B21164C8();
      sub_1B2252250();
      sub_1B21159FC();

      sub_1B2115DF4();

      MEMORY[0x1B2741EB0](0x204D4F524620, 0xE600000000000000);
      v41 = v152[2];
      v136 = v40;
      v137 = v39;
      v140 = v13;
      v42 = sub_1B213ACD0(v8, v152[0], v152[1], v152[2]);
      MEMORY[0x1B2741EB0](v42);

      v44 = *(v152[10] + 16);
      if (v44)
      {
        v45 = v152[11];
        v46 = (v152[10] + 40);
        while (*(v45 + 16))
        {
          v47 = v41;
          v48 = *(v46 - 1);
          v49 = *v46;

          v43 = sub_1B211E590();
          if ((v50 & 1) == 0)
          {
            goto LABEL_64;
          }

          v51 = (*(v45 + 56) + 216 * v43);
          memcpy(v148, v51, sizeof(v148));
          memcpy(__src, v51, sizeof(__src));
          memmove(v149, v51, 0xD8uLL);
          *__dst = v48;
          *&__dst[8] = v49;
          memcpy(&__dst[16], __src, 0xD8uLL);
          sub_1B21A63AC(v148, v146);
          sub_1B21A63AC(v149, v146);
          sub_1B212AC5C(__dst, &qword_1EB7A1CB8, &qword_1B225A4C0);
          memcpy(v151, v149, 0xD8uLL);
          MEMORY[0x1B2741EB0](32, 0xE100000000000000);
          memcpy(__src, v151, sizeof(__src));
          v41 = v47;
          sub_1B212E024();
          v55 = sub_1B2250D84(v52, v53, v54);
          MEMORY[0x1B2741EB0](v55);

          LOBYTE(v43) = sub_1B21A6464(v151);
          v46 += 2;
          if (!--v44)
          {
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

LABEL_20:
      v144 = v8;
      v56 = v152[6];
      if (v152[6])
      {
        sub_1B2139B70();
        v56(v151);
        v57 = v140;

        memcpy(v148, v151, 0xA3uLL);
        memcpy(v149, v151, 0xA3uLL);
        nullsub_1();
        sub_1B2127DC0(v148, __src);
        v60 = sub_1B2115828();
        MEMORY[0x1B2741EB0](v60, 0xE700000000000000);
        memcpy(__src, v148, 0xA3uLL);
        v61 = sub_1B2127E58(0, 0);
        MEMORY[0x1B2741EB0](v61);

        sub_1B21356F8(v148);
        memcpy(__dst, v149, 0xA3uLL);
      }

      else
      {
        sub_1B2179418(__dst);
        v57 = v140;
      }

      v58 = v152[12];
      v59 = MEMORY[0x1E69E7CC0];
      if (v152[12])
      {
        sub_1B2139B70();
        sub_1B211DACC();
        v58();
        v62 = v57;
        v63 = v59;

        v11 = v151[0];
      }

      else
      {
        v62 = v57;
        v63 = MEMORY[0x1E69E7CC0];
        v11 = MEMORY[0x1E69E7CC0];
      }

      v64 = v8;
      if (*(v11 + 16))
      {
        sub_1B2113134();
        v69 = *(v11 + 16);
        v70 = MEMORY[0x1E69E7CC0];
        if (v69)
        {
          __src[0] = MEMORY[0x1E69E7CC0];
          sub_1B2116B10(0, v69, 0, v65, v66, v67, v68);
          v71 = 0;
          v72 = 32;
          v70 = __src[0];
          v138 = v69;
          while (v71 < *(v11 + 16))
          {
            memcpy(v151, (v11 + v72), 0xA3uLL);
            v73 = v11;
            memcpy(v149, (v11 + v72), 0xA3uLL);
            sub_1B2127DC0(v151, v148);
            v74 = sub_1B2127E58(v64, 0);
            v76 = v75;
            sub_1B21356F8(v151);
            __src[0] = v70;
            v78 = *(v70 + 16);
            v77 = *(v70 + 24);
            v79 = v70;
            if (v78 >= v77 >> 1)
            {
              sub_1B211156C(v77);
              sub_1B212E024();
              sub_1B2116B10(v81, v82, v83, v84, v85, v86, v87);
              v79 = __src[0];
            }

            ++v71;
            *(v79 + 16) = v78 + 1;
            v80 = v79 + 16 * v78;
            *(v80 + 32) = v74;
            *(v80 + 40) = v76;
            v72 += 168;
            v64 = v144;
            v11 = v73;
            v70 = v79;
            if (v69 == v71)
            {
              v13 = MEMORY[0x1E69E7CC0];
              goto LABEL_36;
            }
          }

          __break(1u);
          goto LABEL_69;
        }

        v13 = v63;
LABEL_36:
        v151[0] = v70;
        sub_1B21164C8();
        sub_1B2252250();
        sub_1B21159FC();

        sub_1B2115DF4();

        v2 = v140;
      }

      else
      {
        v13 = v63;
        v2 = v62;
      }

      v88 = v152[14];
      if (!v152[14])
      {
        v3 = 0;
LABEL_40:
        sub_1B213D4F4();
        v90 = v89;
        v92 = v91;
        v93 = sub_1B2139B70();
        sub_1B213CF80(v93, v90, v92 & 1, v94, v95, v96, v97, v98, v132, v133, v134, v135, v136, v137, v138, v140, v142, v144, v146[0], v146[1]);
        if (v3)
        {

          sub_1B212AC5C(__dst, &qword_1EB7A1CD0, &unk_1B225D310);

          goto LABEL_14;
        }

        v100 = v99;

        if (*(v100 + 16))
        {
          sub_1B211551C();
          sub_1B2113134();
          v153 = v100;
          v101 = *(v100 + 16);
          if (v101)
          {
            __src[0] = v13;
            sub_1B2111CD4();
            sub_1B2116B10(v102, v103, v104, v105, v106, v107, v108);
            v109 = 0;
            v110 = __src[0];
            v139 = v101 - 1;
            v111 = 32;
            for (i = v153; v109 < *(i + 16); i = v153)
            {
              memcpy(v151, (i + v111), 0xA3uLL);
              memcpy(v149, (i + v111), 0xA3uLL);
              sub_1B214D958(v151, v148);
              v113 = sub_1B214DCE8(v145);
              v115 = v114;
              sub_1B214DC54(v151);
              __src[0] = v110;
              v117 = *(v110 + 16);
              v116 = *(v110 + 24);
              if (v117 >= v116 >> 1)
              {
                sub_1B211156C(v116);
                sub_1B212E024();
                sub_1B2116B10(v119, v120, v121, v122, v123, v124, v125);
                v110 = __src[0];
              }

              *(v110 + 16) = v117 + 1;
              v118 = v110 + 16 * v117;
              *(v118 + 32) = v113;
              *(v118 + 40) = v115;
              if (v139 == v109)
              {

                goto LABEL_55;
              }

              v111 += 168;
              ++v109;
            }

LABEL_69:
            __break(1u);
            goto LABEL_70;
          }

          v110 = MEMORY[0x1E69E7CC0];
LABEL_55:
          v151[0] = v110;
          sub_1B21164C8();
          sub_1B2252250();
          sub_1B21159FC();

          sub_1B2115DF4();

          v2 = v141;
        }

        else
        {
        }

        if (BYTE1(v152[18]) != 1)
        {
          v128 = v152[16];
          v127 = v152[17];
          v129 = v152[18];

          goto LABEL_60;
        }

        if ((*(v143 + 168) & 1) == 0)
        {

LABEL_62:
          sub_1B212AC5C(__dst, &qword_1EB7A1CD0, &unk_1B225D310);
          goto LABEL_14;
        }

        v126 = sub_1B2139B70();
        memcpy(v151, __dst, 0xA3uLL);
        LOBYTE(v43) = sub_1B213D76C(v126, v2, v151, v11);
LABEL_65:
        v131 = v43;

        if (v131)
        {

          goto LABEL_62;
        }

        v127 = 0;
        v128 = 1;
        v129 = 1;
LABEL_60:
        MEMORY[0x1B2741EB0](0x2054494D494C20, 0xE700000000000000);
        v130 = sub_1B2154370(v128, v127, v129 & 1);
        MEMORY[0x1B2741EB0](v130);

        sub_1B212AC5C(__dst, &qword_1EB7A1CD0, &unk_1B225D310);

        goto LABEL_14;
      }

      sub_1B2139B70();
      sub_1B211DACC();
      v88();

      memcpy(v149, v151, 0xA3uLL);
      MEMORY[0x1B2741EB0](0x20474E4956414820, 0xE800000000000000);
      memcpy(v148, v149, 0xA3uLL);
      v23 = sub_1B21181C0();
      v3 = 0;
    }

    MEMORY[0x1B2741EB0](v23);

    sub_1B21356F8(v149);
    goto LABEL_40;
  }

LABEL_70:
  sub_1B2252EC0();
  __break(1u);
}

uint64_t sub_1B2138500()
{
  sub_1B21619D8(&qword_1EB7A34F0, &unk_1B226C7C8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1B22546B0;
  *(v1 + 32) = v0[2];
  v2 = MEMORY[0x1E69E7CC0];
  v48[0] = MEMORY[0x1E69E7CC0];

  if (*(v1 + 32))
  {

    MEMORY[0x1B2742060](v3);
    if (*((v48[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1B22525E0();
    }

    sub_1B2252630();
    v2 = v48[0];
  }

  v5 = v0[10];
  v4 = v0[11];
  swift_setDeallocating();
  result = sub_1B2138A1C();
  v7 = 0;
  v37 = v5 + 32;
  v38 = *(v5 + 16);
  v8 = &qword_1EB7A0EC8;
  for (i = v4; ; v4 = i)
  {
    if (v7 == v38)
    {
      return v2;
    }

    if (!*(v4 + 16))
    {
      break;
    }

    v9 = v8;
    v10 = (v37 + 16 * v7);
    v11 = *v10;
    v12 = v10[1];

    result = sub_1B211E590();
    if ((v13 & 1) == 0)
    {
      goto LABEL_40;
    }

    v14 = (*(v4 + 56) + 216 * result);
    memcpy(__dst, v14, sizeof(__dst));
    memcpy(__src, v14, sizeof(__src));
    memmove(v45, v14, 0xD8uLL);
    v46[0] = v11;
    v46[1] = v12;
    memcpy(v47, __src, sizeof(v47));

    sub_1B21A63AC(__dst, v42);
    sub_1B21A63AC(v45, v42);
    sub_1B212AC5C(v46, &qword_1EB7A1CB8, &qword_1B225A4C0);
    memcpy(v49, v45, sizeof(v49));
    v48[0] = v11;
    v48[1] = v12;
    memcpy(v50, &v45[48], sizeof(v50));
    v15 = sub_1B2138500();
    v16 = v15;
    v17 = v15 >> 62;
    if (v15 >> 62)
    {
      v18 = sub_1B2252C20();
    }

    else
    {
      v18 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = v9;
    v19 = v2 >> 62;
    if (v2 >> 62)
    {
      result = sub_1B2252C20();
    }

    else
    {
      result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v20 = result + v18;
    if (__OFADD__(result, v18))
    {
      goto LABEL_41;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v40 = v7;
    if (result)
    {
      if (!v19)
      {
        v21 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v20 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }

LABEL_19:
      sub_1B2252C20();
      goto LABEL_20;
    }

    if (v19)
    {
      goto LABEL_19;
    }

LABEL_20:
    result = sub_1B2252D10();
    v2 = result;
    v21 = result & 0xFFFFFFFFFFFFFF8;
LABEL_21:
    v41 = v18;
    v22 = *(v21 + 16);
    v23 = (*(v21 + 24) >> 1) - v22;
    v24 = v21 + 8 * v22;
    v39 = v21;
    if (v17)
    {
      v26 = sub_1B2252C20();
      if (v26)
      {
        v27 = v26;
        result = sub_1B2252C20();
        if (v23 < result)
        {
          goto LABEL_44;
        }

        if (v27 < 1)
        {
          goto LABEL_46;
        }

        v25 = result;
        v28 = v24 + 32;
        sub_1B211AB74(&qword_1EB7A34F8, v9, &unk_1B22545E0, MEMORY[0x1E69E6340]);
        for (j = 0; j != v27; ++j)
        {
          sub_1B21619D8(v8, &unk_1B22545E0);
          v30 = sub_1B21C2590(__src, j, v16);
          v32 = *v31;

          (v30)(__src, 0);
          *(v28 + 8 * j) = v32;
          v8 = v9;
        }

        goto LABEL_30;
      }
    }

    else
    {
      v25 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v25)
      {
        if (v23 < v25)
        {
          goto LABEL_45;
        }

        type metadata accessor for TableAlias();
        swift_arrayInitWithCopy();
LABEL_30:

        if (v25 < v41)
        {
          goto LABEL_42;
        }

        if (v25 > 0)
        {
          v33 = *(v39 + 16);
          v34 = __OFADD__(v33, v25);
          v35 = v33 + v25;
          if (v34)
          {
            goto LABEL_43;
          }

          *(v39 + 16) = v35;
        }

        goto LABEL_35;
      }
    }

    if (v18 > 0)
    {
      goto LABEL_42;
    }

LABEL_35:
    v7 = v40 + 1;
    result = sub_1B212AC5C(v48, &qword_1EB7A1CB8, &qword_1B225A4C0);
  }

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
LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_1B21389D4(uint64_t *a1, uint64_t *a2)
{
  sub_1B21619D8(a1, a2);
  swift_arrayDestroy();
  v2 = sub_1B2112820();

  return MEMORY[0x1EEE6BDC0](v2, v3, v4);
}

void *sub_1B2138A30(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = 0x8000000000000000;

  v2[4] = sub_1B2118664();
  sub_1B2117044(a2);
  v2[5] = v4;
  v5 = sub_1B2115C78();
  v8 = sub_1B211903C(v5, v6, v7, 0);

  v2[6] = v8;
  return v2;
}

uint64_t sub_1B2138CB8()
{
  v0 = sub_1B2138CF0();

  return MEMORY[0x1B2742F10](v0);
}

uint64_t sub_1B2138CF0()
{
  if (*(v0 + 48) == 2)
  {
    v2 = *(v0 + 32);
    v1 = *(v0 + 40);
    v5 = v0 + 16;
    v3 = *(v0 + 16);
    v4 = *(v5 + 8);

    v6 = sub_1B2138CF0();
    sub_1B2142C9C(v3, v4, v2, v1, 2);
    return v6;
  }

  else
  {
  }
}

uint64_t sub_1B2138D90()
{
}

uint64_t sub_1B2138F70(uint64_t a1)
{
  result = sub_1B2139070();
  if (!v2)
  {
    return sub_1B2138F90();
  }

  return result;
}

uint64_t sub_1B2138F90()
{
  v1 = *(v0 + 48);
  if (v1 == 1)
  {

    return sub_1B2115C78();
  }

  if (v1 == 2)
  {
    v3 = *(v0 + 32);
    v2 = *(v0 + 40);

    sub_1B2138F90();
    v4 = sub_1B2115C78();
    sub_1B2142C9C(v4, v5, v3, v2, 2);
    return sub_1B2115C78();
  }

  result = sub_1B2252EC0();
  __break(1u);
  return result;
}

uint64_t sub_1B2139070()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  if (*(v0 + 48))
  {
    v3 = *(v0 + 32);
    v4 = *(v0 + 40);
    if (*(v0 + 48) == 1)
    {
    }

    else
    {

      v5 = sub_1B2139070();
      sub_1B2142C9C(v2, v1, v3, v4, 2);
      return v5;
    }
  }

  else
  {

    return v2;
  }

  return v3;
}

void sub_1B2139114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_1B2122614();
  v33 = v32;
  v35 = v34;
  v36 = *v32;
  v66 = v34;
  sub_1B21619D8(&qword_1EB7A34C0, &unk_1B226C268);
  v37 = sub_1B2252EF0();
  if (!v36[2])
  {
LABEL_29:

LABEL_30:
    *v33 = v37;
    sub_1B2115CEC();
    return;
  }

  v65 = v36;
  v38 = 0;
  v39 = (v36 + 8);
  sub_1B21154D4();
  sub_1B2125FE8();
  v41 = v40 >> 6;
  v42 = v37 + 64;
  if (!v35)
  {
LABEL_4:
    v44 = v38;
    while (1)
    {
      v38 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v38 >= v41)
      {
        break;
      }

      ++v44;
      if (*(v39 + 8 * v38))
      {
        sub_1B211667C();
        v35 = v46 & v45;
        goto LABEL_9;
      }
    }

    if ((v66 & 1) == 0)
    {

      v33 = v32;
      goto LABEL_30;
    }

    sub_1B2113108();
    v33 = v32;
    if (v61 != v62)
    {
      sub_1B211E564(v60);
    }

    else
    {
      v63 = sub_1B2122A88();
      sub_1B2148CEC(v63, v64, v39);
    }

    v36[2] = 0;
    goto LABEL_29;
  }

  while (1)
  {
    sub_1B2149880();
LABEL_9:
    v47 = v43 | (v38 << 6);
    v48 = (v36[6] + 16 * v47);
    v49 = *v48;
    v50 = v48[1];
    v51 = *(v36[7] + 8 * v47);
    if ((v66 & 1) == 0)
    {
    }

    sub_1B224B4B4();
    sub_1B2252370();
    sub_1B2253470();
    sub_1B211647C();
    sub_1B213CF74();
    if (v52)
    {
      break;
    }

    sub_1B2112110();
LABEL_21:
    sub_1B2111AE8();
    *(v42 + v56) |= v57;
    v59 = (*(v37 + 48) + 16 * v58);
    *v59 = v49;
    v59[1] = v50;
    *(*(v37 + 56) + 8 * v58) = v51;
    sub_1B212D15C();
    v36 = v65;
    if (!v35)
    {
      goto LABEL_4;
    }
  }

  sub_1B2114850();
  while (1)
  {
    sub_1B211FE98();
    if (v52)
    {
      if (v54)
      {
        break;
      }
    }

    if (v53 == v55)
    {
      v53 = 0;
    }

    if (*(v42 + 8 * v53) != -1)
    {
      sub_1B2118398();
      goto LABEL_21;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_1B2139304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_1B212D010();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = *v30;
  sub_1B2253420();
  sub_1B2252370();
  sub_1B2253470();
  sub_1B2113B98();
  v40 = ~v39;
  while (1)
  {
    v41 = v38 & v40;
    if (((1 << (v38 & v40)) & *(v37 + 56 + (((v38 & v40) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      break;
    }

    v42 = (*(v37 + 48) + 16 * v41);
    v43 = *v42 == v34 && v42[1] == v32;
    if (v43 || (sub_1B22531F0() & 1) != 0)
    {

      v44 = (*(v37 + 48) + 16 * v41);
      v45 = v44[1];
      *v36 = *v44;
      v36[1] = v45;

      goto LABEL_11;
    }

    v38 = v41 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v47 = *v30;

  sub_1B2139668(v34, v32, v41, isUniquelyReferenced_nonNull_native);
  *v30 = v47;
  *v36 = v34;
  v36[1] = v32;
LABEL_11:
  sub_1B212CE34();
}

uint64_t sub_1B2139434()
{
  v1 = v0;
  v2 = *v0;
  sub_1B21619D8(&qword_1EB7A22C0, &unk_1B225D990);
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
        v14 = (*(v2 + 48) + 16 * (v11 | (v5 << 6)));
        v15 = *v14;
        v16 = v14[1];
        sub_1B2253420();

        sub_1B2252370();
        result = sub_1B2253470();
        v17 = -1 << *(v4 + 32);
        v18 = result & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v10 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v10 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        v25 = (*(v4 + 48) + 16 * v20);
        *v25 = v15;
        v25[1] = v16;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v10 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
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

          v1 = v0;
          goto LABEL_25;
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

LABEL_25:
    *v1 = v4;
  }

  return result;
}

unint64_t sub_1B2139668(unint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1B213E7F8();
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_1B2139434();
LABEL_10:
      v15 = *v4;
      sub_1B2253420();
      sub_1B2252370();
      result = sub_1B2253470();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (sub_1B22531F0() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_1B2248DB0();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_1B2253380();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

void sub_1B21397D0(uint64_t *a1)
{
  v3 = v2;
  v4 = *(v1 + 152);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = *(v1 + 160);
    v50 = 0x2048544957;
    v51 = 0xE500000000000000;
    v7 = sub_1B224F344(v4, v6);
    v8 = *(v7 + 16) + 1;
    v9 = 202;
    while (--v8)
    {
      v10 = *(v7 + v9);
      v9 += 176;
      if (v10)
      {

        MEMORY[0x1B2741EB0](0x5649535255434552, 0xEA00000000002045);
        goto LABEL_8;
      }
    }

LABEL_8:
    v11 = sub_1B216B140(v4);
    v16 = MEMORY[0x1E69E7CC0];
    if (v11)
    {
      v17 = v11;
      v52 = MEMORY[0x1E69E7CC0];
      sub_1B2116B10(0, v11 & ~(v11 >> 63), 0, v12, v13, v14, v15);
      if ((v17 & 0x8000000000000000) == 0)
      {
        v16 = v52;
        v18 = (v4 + 40);
        v39 = v6;
        while (v5)
        {
          if (!*(v6 + 16))
          {
            goto LABEL_21;
          }

          v41 = v17;
          v42 = v5;
          v19 = v16;
          v21 = *(v18 - 1);
          v20 = *v18;

          v22 = sub_1B211E590();
          if ((v23 & 1) == 0)
          {
            goto LABEL_22;
          }

          v24 = (*(v6 + 56) + 176 * v22);
          memcpy(__dst, v24, 0xABuLL);
          memcpy(__src, v24, sizeof(__src));
          memmove(v47, v24, 0xABuLL);
          v48[0] = v21;
          v48[1] = v20;
          memcpy(v49, __src, sizeof(v49));

          sub_1B21818BC(__dst, v44);
          sub_1B21818BC(v47, v44);
          sub_1B212AC5C(v48, &qword_1EB7A1BD0, &qword_1B226C7C0);
          memcpy(&v44[2], v47, 0xABuLL);
          v44[0] = v21;
          v44[1] = v20;
          v25 = sub_1B22508F4(v21, v20, &v44[2], a1);
          if (v3)
          {
            memcpy(v43, v44, 0xBBuLL);
            sub_1B212AC5C(v43, &qword_1EB7A1BD0, &qword_1B226C7C0);

            return;
          }

          v27 = v25;
          v28 = v26;
          memcpy(v43, v44, 0xBBuLL);
          sub_1B212AC5C(v43, &qword_1EB7A1BD0, &qword_1B226C7C0);
          v16 = v19;
          v52 = v19;
          v34 = *(v19 + 16);
          v33 = *(v19 + 24);
          if (v34 >= v33 >> 1)
          {
            sub_1B2116B10(v33 > 1, v34 + 1, 1, v29, v30, v31, v32);
            v16 = v52;
          }

          *(v16 + 16) = v34 + 1;
          v35 = v16 + 16 * v34;
          *(v35 + 32) = v27;
          *(v35 + 40) = v28;
          v5 = v42 - 1;
          v18 += 2;
          --v17;
          v3 = 0;
          v6 = v39;
          if (v41 == 1)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
      }

      __break(1u);
    }

    else
    {
LABEL_18:
      v48[0] = v16;
      sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
      sub_1B211AB74(qword_1ED85E790, &qword_1EB7A0DA0, &qword_1B2254340, MEMORY[0x1E69E6310]);
      v36 = sub_1B2252250();
      v38 = v37;

      MEMORY[0x1B2741EB0](v36, v38);

      MEMORY[0x1B2741EB0](32, 0xE100000000000000);
    }
  }
}

uint64_t sub_1B2139B70()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  if ((v1 & 0x8000000000000000) == 0)
  {
    return v2;
  }

  v4 = sub_1B2139B70();
  v5 = sub_1B2115C78();
  sub_1B211B418(v5, v6);
  return v4;
}

void sub_1B2139BC4(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  (*(a2 + 24))(__dst);
  if (!v3)
  {
    v19 = a3;
    v7 = __dst[0];
    sub_1B213A63C(*(a2 + 80), *(a2 + 88));
    v8 = 0;
    v20 = *(v9 + 16);
    v21 = v9;
    for (i = (v9 + 80); ; i += 216)
    {
      if (v20 == v8)
      {

        *v19 = v7;
        return;
      }

      if (v8 >= *(v21 + 16))
      {
        break;
      }

      memcpy(__dst, i - 48, sizeof(__dst));
      memcpy(v24, i, 0xA8uLL);
      sub_1B21A63AC(__dst, v22);
      sub_1B22515A0(&__dst[6], v22);
      sub_1B2139BC4(a1, v24, &v25);
      sub_1B22515D8(&__dst[6]);
      v11 = v25;
      v12 = *(v25 + 16);
      v13 = *(v7 + 16);
      if (__OFADD__(v13, v12))
      {
        goto LABEL_19;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || (v14 = *(v7 + 24) >> 1, v14 < v13 + v12))
      {
        sub_1B2156430();
        v7 = v15;
        v14 = *(v15 + 24) >> 1;
      }

      if (*(v11 + 16))
      {
        if (v14 - *(v7 + 16) < v12)
        {
          goto LABEL_21;
        }

        swift_arrayInitWithCopy();

        if (v12)
        {
          v16 = *(v7 + 16);
          v17 = __OFADD__(v16, v12);
          v18 = v16 + v12;
          if (v17)
          {
            goto LABEL_22;
          }

          *(v7 + 16) = v18;
        }
      }

      else
      {

        if (v12)
        {
          goto LABEL_20;
        }
      }

      sub_1B21A6464(__dst);
      ++v8;
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }
}

void *sub_1B2139DE8@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, void (*a3)(uint64_t *__return_ptr, uint64_t *)@<X1>, uint64_t a4@<X2>, void *(*a5)(uint64_t *__return_ptr)@<X3>)
{
  result = sub_1B2139EF0(a2, a3, a4, a5);
  if (!v5)
  {
    *a1 = result;
  }

  return result;
}

void *sub_1B2139E68(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *), uint64_t a3, void *(*a4)(uint64_t *__return_ptr))
{
  result = (a4)(&v7, a1);
  if (!v4)
  {
    a2(&v8, &v7);

    return v8;
  }

  return result;
}

uint64_t sub_1B2139F20@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1B2139F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = (*(a4 + 16))(a3, a4);
  v5 = *(v4 + 16);
  if (v5)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_1B213A1C8();
    v6 = v17;
    v7 = v4 + 32;
    for (i = v5 - 1; ; --i)
    {
      sub_1B211EE68(v7, v13);
      v9 = v14;
      v10 = v15;
      sub_1B21139A0(v13, v14);
      (*(v10 + 8))(__src, v9, v10);
      sub_1B2113208(v13);
      v17 = v6;
      v11 = *(v6 + 16);
      if (v11 >= *(v6 + 24) >> 1)
      {
        sub_1B213A1C8();
        v6 = v17;
      }

      *(v6 + 16) = v11 + 1;
      memcpy((v6 + 184 * v11 + 32), __src, 0xB8uLL);
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

  return v6;
}

double static TableRecord.databaseSelection.getter()
{
  sub_1B21619D8(&qword_1EB7A10A8, &unk_1B225ECC0);
  v0 = swift_allocObject();
  *&result = 1;
  *(v0 + 16) = xmmword_1B22546B0;
  *(v0 + 56) = &type metadata for AllColumns;
  *(v0 + 64) = &protocol witness table for AllColumns;
  return result;
}

void sub_1B213A118()
{
  sub_1B2111830();
  if ((v4 & 1) == 0 || (sub_1B2115F84(), v5 == v6))
  {
LABEL_6:
    sub_1B2111EF8();
    if (v3)
    {
      v13 = sub_1B2113B10(v7, v8, v9, v10, v11, v12);
      v14 = sub_1B21169D8(v13);
      v15 = j__malloc_size(v14);
      sub_1B2117B94(v15);
      if (v2)
      {
LABEL_8:
        v16 = sub_1B2117B84();
        v1(v16);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    sub_1B2115B30();
    goto LABEL_11;
  }

  sub_1B212CD14();
  if (!v5)
  {
    sub_1B2115544();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1B213A264(void *a1)
{
  bzero(a1, 0xA0uLL);
  a1[21] = 0;
  a1[22] = 0;
  a1[20] = 0x8000000000000000;
}

uint64_t *sub_1B213A298@<X0>(uint64_t *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v3 = *result;
  v4 = *(*result + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v13 = a3;
    v19 = MEMORY[0x1E69E7CC0];
    sub_1B213A1C8();
    v5 = v19;
    v7 = (v3 + 32);
    do
    {
      memcpy(__dst, v7, sizeof(__dst));
      memmove(v18, v7, 0xB8uLL);
      switch(sub_1B213A580(v18))
      {
        case 1u:
          v11 = sub_1B213AA9C(v18);
          memcpy(v15, v11, 0xA3uLL);
          sub_1B213A774(__dst, v16);
          sub_1B213BBD8(a2, __src);
          sub_1B213A5CC(__dst);
          memcpy(v15, __src, 0xA3uLL);
          sub_1B214D464(v15);
          goto LABEL_9;
        case 2u:
          v8 = sub_1B213AA9C(v18);
          v9 = v8[21];
          v10 = v8[22];
          memcpy(v15, v8, 0xA3uLL);
          sub_1B213A774(__dst, v16);
          sub_1B213A774(__dst, v16);
          sub_1B213BBD8(a2, __src);
          sub_1B21356F8(v8);
          sub_1B213A5CC(__dst);
          memcpy(v15, __src, 0xA8uLL);
          v15[21] = v9;
          v15[22] = v10;
          sub_1B2155A5C(v15);
          goto LABEL_9;
        case 3u:
          v15[0] = *sub_1B213AA9C(v18);
          sub_1B213A774(__dst, v16);
          sub_1B2153E58(a2, __src);
          sub_1B213A5CC(__dst);
          v15[0] = __src[0];
          sub_1B216ED24(v15);
          goto LABEL_9;
        case 4u:
          v15[0] = a2;
          sub_1B213A59C(v15);

          sub_1B213A5CC(__dst);
LABEL_9:
          memcpy(v16, v15, sizeof(v16));
          break;
        default:
          sub_1B213AA9C(v18);
          memcpy(v15, __dst, sizeof(v15));
          sub_1B213AA9C(v15);
          memcpy(v16, __dst, sizeof(v16));

          break;
      }

      v19 = v5;
      v12 = *(v5 + 16);
      if (v12 >= *(v5 + 24) >> 1)
      {
        sub_1B213A1C8();
        v5 = v19;
      }

      *(v5 + 16) = v12 + 1;
      result = memcpy((v5 + 184 * v12 + 32), v16, 0xB8uLL);
      v7 += 184;
      --v4;
    }

    while (v4);
    a3 = v13;
  }

  *a3 = v5;
  return result;
}