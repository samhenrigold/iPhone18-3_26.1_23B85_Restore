uint64_t sub_26B1AA604@<X0>(Swift::String *a1@<X0>, void *a2@<X8>)
{
  result = SQLColumnName.init(stringLiteral:)(*a1).rawValue._countAndFlagsBits;
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_26B1AA644@<X0>(uint64_t *a1@<X8>)
{
  result = SQLColumnName.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26B1AA678(uint64_t a1, uint64_t a2)
{
  sub_26B212A80();
  sub_26B214030();
  _s15SonicFoundation11UnknownKeysV4hash4intoys6HasherVz_tF_0();
  v2 = sub_26B214070();

  return v2;
}

void sub_26B1AA6F0(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16) && (sub_26B1AAFFC(0), v2 = sub_26B213680(), v3 = v2, (v24 = *(v1 + 16)) != 0))
  {
    v4 = 0;
    v5 = v2 + 56;
    v22 = v1;
    v23 = v1 + 32;
    while (v4 < *(v1 + 16))
    {
      v6 = *(v23 + 8 * v4++);
      sub_26B212A80();
      sub_26B214030();
      v25 = v6;
      _s15SonicFoundation11UnknownKeysV4hash4intoys6HasherVz_tF_0();
      v7 = sub_26B214070();

      v8 = ~(-1 << *(v3 + 32));
      while (1)
      {
        v9 = v7 & v8;
        v10 = (v7 & v8) >> 6;
        v11 = *(v5 + 8 * v10);
        v12 = 1 << (v7 & v8);
        if ((v12 & v11) == 0)
        {
          break;
        }

        v13 = sub_26B212A80();
        v15 = v14;
        if (v13 == sub_26B212A80() && v15 == v16)
        {

          goto LABEL_17;
        }

        v18 = sub_26B213E30();

        if (v18)
        {

          goto LABEL_17;
        }

        v7 = v9 + 1;
      }

      *(v5 + 8 * v10) = v12 | v11;
      *(*(v3 + 48) + 8 * v9) = v25;
      v19 = *(v3 + 16);
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_20;
      }

      *(v3 + 16) = v21;
LABEL_17:
      v1 = v22;
      if (v4 == v24)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:
  }
}

uint64_t sub_26B1AA8E8(uint64_t a1)
{
  if (sub_26B152D14())
  {
    sub_26B1AB090(0);
    v2 = sub_26B213680();
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  result = sub_26B16EAD0();
  if (result)
  {
    v4 = result;
    v5 = 0;
    v6 = v2 + 56;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x26D670B70](v5, a1);
        v7 = result;
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v7 = *(a1 + 32 + 8 * v5);
      }

      v8 = __OFADD__(v5++, 1);
      if (v8)
      {
        break;
      }

      sub_26B214030();
      MEMORY[0x26D671480](v7);
      result = sub_26B214070();
      v9 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v10 = result & v9;
        v11 = (result & v9) >> 6;
        v12 = *(v6 + 8 * v11);
        v13 = 1 << (result & v9);
        if ((v13 & v12) == 0)
        {
          break;
        }

        if (*(*(v2 + 48) + 8 * v10) == v7)
        {

          goto LABEL_18;
        }

        result = v10 + 1;
      }

      *(v6 + 8 * v11) = v13 | v12;
      *(*(v2 + 48) + 8 * v10) = v7;
      v14 = *(v2 + 16);
      v8 = __OFADD__(v14, 1);
      v15 = v14 + 1;
      if (v8)
      {
        goto LABEL_21;
      }

      *(v2 + 16) = v15;
LABEL_18:
      if (v5 == v4)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  else
  {
LABEL_19:

    return v2;
  }

  return result;
}

uint64_t sub_26B1AAA7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26B1AAAE4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_26B1AAB68()
{
  result = qword_2803E7DB0;
  if (!qword_2803E7DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7DB0);
  }

  return result;
}

unint64_t sub_26B1AABC0()
{
  result = qword_2803E7DB8;
  if (!qword_2803E7DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7DB8);
  }

  return result;
}

unint64_t sub_26B1AAC18()
{
  result = qword_2803E7DC0;
  if (!qword_2803E7DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7DC0);
  }

  return result;
}

uint64_t sub_26B1AAC74(uint64_t a1)
{
  result = type metadata accessor for SQLDatabase.Location(319);
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

uint64_t dispatch thunk of SQLDatabase.__allocating_init(location:options:)()
{
  v5 = (*(v0 + 152) + **(v0 + 152));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v3 = OUTLINED_FUNCTION_10_10(v2);

  return v5(v3);
}

uint64_t sub_26B1AAE64()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_6_18();
  v2 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v3 = v2;

  OUTLINED_FUNCTION_9_14();

  return v4(v0);
}

uint64_t sub_26B1AAF50(uint64_t a1)
{
  result = sub_26B1AAFC4();
  if (v2 <= 0x3F)
  {
    result = sub_26B211EF0();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_26B1AAFC4()
{
  result = qword_280D2DB50;
  if (!qword_280D2DB50)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_280D2DB50);
  }

  return result;
}

void sub_26B1AAFFC(uint64_t a1)
{
  if (!qword_2803E7DC8)
  {
    type metadata accessor for URLResourceKey(255);
    sub_26B1AAA7C(&qword_2803E6BA0, type metadata accessor for URLResourceKey, &unk_26B215774);
    v1 = sub_26B213690();
    if (!v2)
    {
      atomic_store(v1, &qword_2803E7DC8);
    }
  }
}

void sub_26B1AB090(uint64_t a1)
{
  if (!qword_2803E7DD0)
  {
    type metadata accessor for SQLDatabase.Transaction();
    sub_26B1AAA7C(&qword_2803E7DD8, type metadata accessor for SQLDatabase.Transaction, &protocol conformance descriptor for SQLDatabase.Transaction);
    v1 = sub_26B213690();
    if (!v2)
    {
      atomic_store(v1, &qword_2803E7DD0);
    }
  }
}

uint64_t sub_26B1AB148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a1 + 16);
  while (v7 != v6)
  {
    v8 = *(type metadata accessor for SQLDatabase.AttachedLocation(0) - 8);
    v9 = (a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v6);
    v10 = *v9 == a2 && v9[1] == a3;
    if (v10 || (sub_26B213E30() & 1) != 0)
    {
      v11 = v6;
      goto LABEL_11;
    }

    ++v6;
  }

  v11 = 0;
LABEL_11:

  return v11;
}

uint64_t SQLDatabase.AttachedLocation.name.getter()
{
  v1 = *v0;
  sub_26B2128F0();
  return v1;
}

uint64_t SQLDatabase.AttachedLocation.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SQLDatabase.AttachedLocation.location.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for SQLDatabase.AttachedLocation(0);
  OUTLINED_FUNCTION_0_33();
  return sub_26B1ABCE0(v1 + v3, a1, v4);
}

uint64_t type metadata accessor for SQLDatabase.AttachedLocation(uint64_t a1)
{
  result = qword_2803E7DE0;
  if (!qword_2803E7DE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SQLDatabase.AttachedLocation.location.setter(uint64_t a1)
{
  type metadata accessor for SQLDatabase.AttachedLocation(0);
  OUTLINED_FUNCTION_0_33();
  return sub_26B1ABD9C(a1, v1 + v3, v4);
}

uint64_t SQLDatabase.attach(name:location:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v5 = type metadata accessor for SQLDatabase.AttachedLocation(0);
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26B1AB49C, v3, 0);
}

uint64_t sub_26B1AB49C()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v4 = v0[6];
  v5 = v0[5];
  OUTLINED_FUNCTION_0_33();
  sub_26B1ABCE0(v7, v1 + v6, v8);
  *v1 = v5;
  v1[1] = v4;
  v9 = OBJC_IVAR____TtC15SonicFoundation11SQLDatabase_attachedLocations;
  swift_beginAccess();
  sub_26B2128F0();
  sub_26B16A530();
  v10 = *(*(v3 + v9) + 16);
  sub_26B16A6EC(v10);
  v11 = *(v3 + v9);
  *(v11 + 16) = v10 + 1;
  sub_26B1AB8AC(v1, v11 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v10);
  *(v3 + v9) = v11;
  swift_endAccess();
  return OUTLINED_FUNCTION_1_25("Fatal error", v12, v13, v14, v15, "SonicFoundation/SQLDatabase+Attach.swift");
}

uint64_t SQLDatabase.detach(name:)(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return MEMORY[0x2822009F8](sub_26B1AB5D0, v2, 0);
}

uint64_t sub_26B1AB5D0()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  v4 = OBJC_IVAR____TtC15SonicFoundation11SQLDatabase_attachedLocations;
  swift_beginAccess();
  sub_26B2128F0();
  result = sub_26B1AB910((v2 + v4), v3, v1);
  v6 = *(*(v2 + v4) + 16);
  if (v6 < result)
  {
    __break(1u);
  }

  else
  {
    sub_26B18E4F4(result, v6);
    swift_endAccess();
    return OUTLINED_FUNCTION_1_25("Fatal error", v7, v8, v9, v10, "SonicFoundation/SQLDatabase+Attach.swift");
  }

  return result;
}

uint64_t sub_26B1AB6D0()
{
  v1 = sub_26B211EF0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SQLDatabase.Location(0);
  OUTLINED_FUNCTION_27();
  MEMORY[0x28223BE20](v5);
  v7 = (&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for SQLDatabase.AttachedLocation(0);
  OUTLINED_FUNCTION_0_33();
  sub_26B1ABCE0(v0 + v8, v7, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v2 + 32))(v4, v7, v1);
    v10 = sub_26B211E30();
    (*(v2 + 8))(v4, v1);
  }

  else
  {
    v11 = *v7;
    v12 = v7[1];
    v14 = 0;
    v15 = 0xE000000000000000;
    sub_26B2136C0();

    v14 = 0x3A656C6966;
    v15 = 0xE500000000000000;
    MEMORY[0x26D670040](v11, v12);

    MEMORY[0x26D670040](0xD000000000000019, 0x800000026B21FEA0);
    return v14;
  }

  return v10;
}

uint64_t sub_26B1AB8AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SQLDatabase.AttachedLocation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B1AB910(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for SQLDatabase.AttachedLocation(0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v34 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = (&v34 - v15);
  v17 = *a1;
  sub_26B2128F0();
  result = sub_26B1AB148(v17, a2, a3);
  if (v3)
  {
  }

  v36 = v11;
  v37 = a3;
  v40 = a2;
  if (v19)
  {
    v20 = *(v17 + 16);

    return v20;
  }

  v34 = 0;
  v35 = a1;
  v38 = result;
  v21 = result + 1;
  v22 = v37;
  if (__OFADD__(result, 1))
  {
    goto LABEL_34;
  }

  v39 = v8;
  while (1)
  {
    v23 = *(v17 + 16);
    if (v21 == v23)
    {

      return v38;
    }

    if (v21 >= v23)
    {
      break;
    }

    v24 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v25 = v17 + v24;
    v26 = *(v8 + 72);
    v27 = v26 * v21;
    sub_26B1ABCE0(v17 + v24 + v26 * v21, v16, type metadata accessor for SQLDatabase.AttachedLocation);
    if (*v16 == v40 && v16[1] == v22)
    {
      result = sub_26B1ABD40(v16);
      goto LABEL_16;
    }

    v29 = sub_26B213E30();
    result = sub_26B1ABD40(v16);
    if (v29)
    {
      v22 = v37;
LABEL_16:
      v8 = v39;
      goto LABEL_27;
    }

    v30 = v38;
    if (v21 == v38)
    {
      v22 = v37;
    }

    else
    {
      if ((v38 & 0x8000000000000000) != 0)
      {
        goto LABEL_30;
      }

      v31 = *(v17 + 16);
      if (v38 >= v31)
      {
        goto LABEL_31;
      }

      v32 = v26 * v38;
      result = sub_26B1ABCE0(v25 + v32, v14, type metadata accessor for SQLDatabase.AttachedLocation);
      if (v21 >= v31)
      {
        goto LABEL_32;
      }

      sub_26B1ABCE0(v25 + v27, v36, type metadata accessor for SQLDatabase.AttachedLocation);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_26B16BB38();
        v17 = v33;
      }

      v22 = v37;
      result = sub_26B1ABD9C(v36, v17 + v24 + v32, type metadata accessor for SQLDatabase.AttachedLocation);
      if (v21 >= *(v17 + 16))
      {
        goto LABEL_33;
      }

      result = sub_26B1ABD9C(v14, v17 + v24 + v27, type metadata accessor for SQLDatabase.AttachedLocation);
      *v35 = v17;
      v30 = v38;
    }

    v8 = v39;
    v38 = v30 + 1;
LABEL_27:
    ++v21;
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_26B1ABC64(uint64_t a1)
{
  result = type metadata accessor for SQLDatabase.Location(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26B1ABCE0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_27();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_26B1ABD40(uint64_t a1)
{
  v2 = type metadata accessor for SQLDatabase.AttachedLocation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26B1ABD9C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_27();
  (*(v5 + 40))(a2, a1);
  return a2;
}

void *sub_26B1ABDFC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, void *a5@<X8>)
{
  v9 = MEMORY[0x277D84F90];
  v10 = sub_26B1ABF04(MEMORY[0x277D84F90]);
  v12 = v11;
  v14 = v13;
  sub_26B1ABF04(v9);

  __src[2] = v10;
  __src[3] = v12;
  __src[4] = v14;
  __src[5] = a3;
  LOBYTE(__src[6]) = a4 & 1;
  __src[7] = a1;
  LOBYTE(__src[8]) = a2 & 1;
  __src[0] = 0;
  __src[1] = 0;
  sub_26B1CF4B4();

  return memcpy(a5, __src, 0x41uLL);
}

uint64_t sub_26B1ABF04(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v22 = MEMORY[0x277D84F90];
  v3 = *(a1 + 16);
  sub_26B1AF8F8(v3, 0);
  sub_26B15B3FC(0, v3, 0);
  v4 = 0;
  v5 = v2;
  v20 = *(a1 + 16);
  v21 = a1;
  v19 = a1 + 32;
  while (1)
  {
    if (v4 == v20)
    {

      return 0;
    }

    if (v4 >= *(v21 + 16))
    {
      break;
    }

    v6 = v19 + 40 * v4;
    v8 = *v6;
    v7 = *(v6 + 8);
    v10 = *(v6 + 16);
    v9 = *(v6 + 24);
    v11 = *(v6 + 32);
    v12 = (v22 + 40);
    v13 = *(v22 + 16) + 1;
    while (--v13)
    {
      if (*(v12 - 1) != v8 || *v12 != v7)
      {
        v12 += 2;
        if ((sub_26B213E30() & 1) == 0)
        {
          continue;
        }
      }

      goto LABEL_17;
    }

    sub_26B2128F0();

    sub_26B1D46C0(v8, v7);
    v16 = *(v5 + 16);
    v15 = *(v5 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_26B15B3FC(v15 > 1, v16 + 1, 1);
    }

    ++v4;
    *(v5 + 16) = v16 + 1;
    v17 = v5 + 24 * v16;
    *(v17 + 32) = v10;
    *(v17 + 40) = v9;
    *(v17 + 48) = v11;
  }

  __break(1u);
LABEL_17:
  sub_26B2128F0();

  __break(1u);
  return result;
}

void sub_26B1AC110(uint64_t a1, unint64_t a2, char *a3)
{
  v6 = *a3;
  v39 = 0;
  v7 = sub_26B1AEB1C(&v39, a1, a2, v6, v3);
  v8 = v4;
  if (v4)
  {
LABEL_10:
    v38 = v8;
    v27 = v8;
    sub_26B162128();
    if (swift_dynamicCast() & 1) != 0 && (v28 = v36, v29 = v37, , , LODWORD(v34) = v28, BYTE4(v34) = v29, LODWORD(v33) = 17, BYTE4(v33) = 14, (static SQLError.Code.== infix(_:_:)(&v34, &v33)))
    {
    }

    else
    {

      sqlite3_free(v39);
      swift_willThrow();
    }

    return;
  }

  sub_26B1E26EC(v7, &v35);
  if (v36 != 1 && (v36 != 14 || v35 != 16))
  {
    OUTLINED_FUNCTION_17();
    swift_beginAccess();
    sqlite3_extended_errcode(*(v3 + 136));
    if (OUTLINED_FUNCTION_73())
    {
      sub_26B212C20();
      OUTLINED_FUNCTION_61();
      if (sqlite3_errmsg(*(v3 + 136)))
      {
        v10 = sub_26B212C20();
        v12 = v11;
        sub_26B1AFA88();
        OUTLINED_FUNCTION_30_0();
        v8 = swift_allocError();
        v19 = OUTLINED_FUNCTION_23_5(v8, v13, v14, v15, v16, v17, v18);
        OUTLINED_FUNCTION_8_18(v19, v20, v21, v22, v23, v24, v25, v26, v30, v31, v32, v33, v34, v35, v36);
        *(v5 + 32) = v10;
        *(v5 + 40) = v12;
        swift_willThrow();
        goto LABEL_10;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

const char *sub_26B1AC2C0()
{
  piSize[4] = *MEMORY[0x277D85DE8];
  v2 = sub_26B211F30();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&piSize[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  piSize[0] = 0;
  OUTLINED_FUNCTION_17();
  swift_beginAccess();
  v6 = sqlite3_serialize(*(v0 + 136), "main", piSize, 0);
  if (v6)
  {
    v7 = v6;
    v8 = piSize[0];
    *v5 = j__sqlite3_free;
    v5[1] = 0;
    (*(v3 + 104))(v5, *MEMORY[0x277CC92B8], v2);
    return MEMORY[0x26D66F380](v7, v8, v5);
  }

  else
  {
    result = sub_26B1AECD0(v0, sub_26B1AFADC);
    if (!v1)
    {
      sub_26B1AFAF8();
      OUTLINED_FUNCTION_30_0();
      swift_allocError();
      *v10 = 0;
      v10[1] = 0;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_26B1AC488()
{
  OUTLINED_FUNCTION_25();
  v1[76] = v0;
  v1[75] = v2;
  v1[77] = *(type metadata accessor for SQLDatabase.AttachedLocation(0) - 8);
  v1[78] = swift_task_alloc();
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_26B1AC540()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 608);
  swift_defaultActor_initialize();
  *(v1 + 112) = 0;
  *(v1 + 128) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 136) = 0;
  sub_26B1ABDFC(20, 0, 0, 1, (v1 + 144));
  _s9StatementCMa();
  sub_26B166760();
  *(v1 + 216) = sub_26B2128C0();
  *(v1 + 224) = 0;
  *(v1 + 232) = 0;
  *(v1 + 240) = 0;
  *(v1 + 248) = 1;
  v2 = OUTLINED_FUNCTION_12_12();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

const char *sub_26B1AC614()
{
  v34 = v0;
  v1 = *(v0 + 600);
  sub_26B1AA398();
  v2 = OBJC_IVAR____TtC15SonicFoundation11SQLDatabase_options;
  *(v0 + 632) = OBJC_IVAR____TtC15SonicFoundation11SQLDatabase_options;
  v3 = (v1 + v2);
  v4 = *(v1 + v2);
  v5 = *(v1 + v2 + 4);
  v6 = *(v1 + v2 + 11);
  if ((v4 & 1) == 0)
  {
    v7 = 1;
    if ((v5 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (v3[1])
  {
    v7 = 6;
    v8 = 14;
  }

  else
  {
    v7 = 2;
    v8 = 10;
  }

  if (v3[2])
  {
    v7 = v8;
  }

  if (v5)
  {
LABEL_5:
    v7 |= 0x10u;
  }

LABEL_6:
  v9 = v7 | (v6 << 20);
  v10 = *(v0 + 608);
  v11 = sub_26B212B10();

  swift_beginAccess();
  v12 = sqlite3_open_v2((v11 + 32), (v10 + 136), v9 + 0x100000, 0);
  swift_endAccess();

  v13 = *(v10 + 136);
  if (v12)
  {
    v14 = sqlite3_extended_errcode(v13);
    result = sqlite3_errstr(v12);
    if (result)
    {
      v16 = *(v0 + 608);
      v17 = sub_26B212C20();
      v19 = v18;
      result = sqlite3_errmsg(*(v16 + 136));
      if (result)
      {
        v20 = *(v0 + 608);
        v21 = sub_26B212C20();
        v23 = v22;
        sub_26B1AFA88();
        OUTLINED_FUNCTION_30_0();
        swift_allocError();
        v25 = v24;
        *v24 = v14;
        sub_26B1E26EC(v14, &v32);
        v26 = v33;
        v25[1] = v32;
        *(v25 + 8) = v26;
        *(v25 + 2) = v17;
        *(v25 + 3) = v19;
        *(v25 + 4) = v21;
        *(v25 + 5) = v23;
        swift_willThrow();
        sqlite3_close_v2(*(v20 + 136));

        OUTLINED_FUNCTION_10_0();

        return v27();
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  sqlite3_extended_result_codes(v13, 1);
  *(v0 + 89) = v3[6];
  *(v0 + 90) = v3[7];
  *(v0 + 91) = v3[8];
  OUTLINED_FUNCTION_13(&unk_26B219EE0);
  v31 = v28;
  v29 = v3[9];
  v30 = swift_task_alloc();
  *(v0 + 640) = v30;
  *v30 = v0;
  v30[1] = sub_26B1AC8D4;

  return v31(v29);
}

uint64_t sub_26B1AC8D4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v6 = v5;

  if (v0)
  {
    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_72();
    sub_26B212F70();
    OUTLINED_FUNCTION_1_26();
    v7 = OUTLINED_FUNCTION_11_10();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_13(&unk_26B219EE8);
    v10 = swift_task_alloc();
    *(v3 + 648) = v10;
    *v10 = v5;
    v10[1] = sub_26B1ACA34;
    v11 = OUTLINED_FUNCTION_27_5(*(v3 + 89));

    return v12(v11);
  }
}

uint64_t sub_26B1ACA34()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v6 = v5;

  if (v0)
  {
    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_72();
    sub_26B212F70();
    OUTLINED_FUNCTION_1_26();
    v7 = OUTLINED_FUNCTION_11_10();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_13(&unk_26B219EF0);
    v10 = swift_task_alloc();
    *(v3 + 656) = v10;
    *v10 = v5;
    v10[1] = sub_26B1ACB94;
    v11 = OUTLINED_FUNCTION_27_5(*(v3 + 90));

    return v12(v11);
  }
}

uint64_t sub_26B1ACB94()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v6 = v5;

  if (v0)
  {
    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_72();
    sub_26B212F70();
    OUTLINED_FUNCTION_1_26();
    v7 = OUTLINED_FUNCTION_11_10();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_13(&unk_26B219EF8);
    v10 = swift_task_alloc();
    *(v3 + 664) = v10;
    *v10 = v5;
    v10[1] = sub_26B1ACCF4;
    v11 = OUTLINED_FUNCTION_27_5(*(v3 + 91));

    return v12(v11);
  }
}

uint64_t sub_26B1ACCF4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v6 = v5;

  if (v0)
  {
    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_72();
    sub_26B212F70();
    OUTLINED_FUNCTION_1_26();
  }

  else
  {
    *(v3 + 672) = sub_26B1AFB4C();
    swift_getObjectType();
    sub_26B212F70();
    OUTLINED_FUNCTION_20_6();
    v9 = sub_26B1ACE20;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_26B1ACE20()
{
  OUTLINED_FUNCTION_25();
  v1 = *(*(v0 + 600) + *(v0 + 632));
  *(*(v0 + 608) + 112) = (v1 & 1) == 0;
  if (v1)
  {
    *(v0 + 368) = 0xD00000000000001DLL;
    *(v0 + 376) = 0x800000026B220040;
    *(v0 + 384) = 0;
    *(v0 + 392) = 0;
    *(v0 + 400) = 0;
    v2 = swift_task_alloc();
    *(v0 + 688) = v2;
    *v2 = v0;
    v2[1] = sub_26B1ACFB4;

    return sub_26B1B3E68();
  }

  else
  {
    OUTLINED_FUNCTION_35_2();
    OUTLINED_FUNCTION_26_7();
    *(v0 + 704) = OBJC_IVAR____TtC15SonicFoundation11SQLDatabase_attachedLocations;
    v4 = OUTLINED_FUNCTION_12_12();

    return MEMORY[0x2822009F8](v4, v5, v6);
  }
}

uint64_t sub_26B1ACF44()
{
  OUTLINED_FUNCTION_25();

  OUTLINED_FUNCTION_10_0();

  return v0();
}

uint64_t sub_26B1ACFB4()
{
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v4 = v3;
  *v4 = *v1;
  v3[87] = v0;

  sub_26B1A85A8(v3[46], v2[47], v2[48], v2[49], *(v3 + 400));
  swift_getObjectType();
  sub_26B212F70();
  OUTLINED_FUNCTION_20_6();
  if (v0)
  {
    v7 = sub_26B1ADF58;
  }

  else
  {
    v7 = sub_26B1AD16C;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_26B1AD16C()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_35_2();
  OUTLINED_FUNCTION_26_7();
  *(v0 + 704) = OBJC_IVAR____TtC15SonicFoundation11SQLDatabase_attachedLocations;
  v1 = OUTLINED_FUNCTION_12_12();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_26B1AD1D8()
{
  OUTLINED_FUNCTION_12();
  v2 = *(v0 + 704);
  OUTLINED_FUNCTION_32_3();
  OUTLINED_FUNCTION_17();
  swift_beginAccess();
  *(v0 + 712) = *(v1 + v2);
  sub_26B2128F0();
  swift_getObjectType();
  sub_26B212F70();
  OUTLINED_FUNCTION_20_6();
  v3 = OUTLINED_FUNCTION_11_10();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_26B1AD268()
{
  v6 = *(v1 + 712);
  v7 = *(v6 + 16);
  *(v1 + 720) = v7;
  if (!v7)
  {

    *(v1 + 728) = OBJC_IVAR____TtC15SonicFoundation11SQLDatabase_scalarFunctions;
    OUTLINED_FUNCTION_12_12();
    OUTLINED_FUNCTION_20_0();

    return MEMORY[0x2822009F8](v24, v25, v26);
  }

  v8 = *(v1 + 624);
  v9 = *(*(v1 + 616) + 80);
  *(v1 + 92) = v9;
  *(v1 + 744) = 0;
  if (*(v6 + 16))
  {
    v3 = 0x800000026B220060;
    sub_26B1AFBA0(v6 + ((v9 + 32) & ~v9), v8);
    v0 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_67();
    v11 = v10;
    v4 = *(v10 + 16);
    v2 = v4 + 1;
    if (v4 < *(v10 + 24) >> 1)
    {
      goto LABEL_4;
    }
  }

  else
  {
    __break(1u);
  }

  OUTLINED_FUNCTION_10_11();
  v11 = v37;
LABEL_4:
  OUTLINED_FUNCTION_37_2();
  v13 = v11 + v4 * v12;
  *(v13 + 32) = 0xD000000000000010;
  *(v13 + 40) = v3;
  *(v13 + 104) = 0;
  v14 = sub_26B1AB6D0();
  v16 = v15;
  v17 = MEMORY[0x277D837D0];
  v18 = &protocol witness table for String;
  OUTLINED_FUNCTION_66(v14, v15);
  OUTLINED_FUNCTION_54();
  if (v3 >= v5 >> 1)
  {
    OUTLINED_FUNCTION_10_11();
    v11 = v38;
  }

  OUTLINED_FUNCTION_37_2();
  OUTLINED_FUNCTION_65(v19);
  __swift_destroy_boxed_opaque_existential_1((v1 + 288));

  OUTLINED_FUNCTION_33_3();
  if (v20)
  {
    OUTLINED_FUNCTION_16_7();
    v11 = v39;
  }

  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_53();
  if (v2 > (v17 >> 1))
  {
    OUTLINED_FUNCTION_10_11();
    v11 = v40;
  }

  v21 = *(v1 + 624);
  OUTLINED_FUNCTION_37_2();
  OUTLINED_FUNCTION_69(v22);
  __swift_destroy_boxed_opaque_existential_1((v1 + 328));
  sub_26B1ABD40(v21);
  OUTLINED_FUNCTION_33_3();
  if (v20)
  {
    OUTLINED_FUNCTION_16_7();
    v11 = v41;
  }

  *(v11 + 16) = v16;
  OUTLINED_FUNCTION_3_21();
  OUTLINED_FUNCTION_2_26(v23, *(v1 + 232), *(v1 + 248), *(v1 + 264));
  *(v1 + 448) = v11;
  *(v1 + 456) = 0;
  *(v1 + 464) = 0;
  *(v1 + 472) = v0;
  sub_26B2128F0();
  sub_26B2128F0();
  v24 = sub_26B1A6AB8();
  v27 = *(*(v1 + 472) + 16);
  if (!v27)
  {
    v29 = *(v1 + 464);
    if (v29)
    {
      v32 = *(v1 + 456);
      sub_26B2128F0();

      OUTLINED_FUNCTION_60();
      goto LABEL_19;
    }

    __break(1u);
    return MEMORY[0x2822009F8](v24, v25, v26);
  }

  v28 = *(v1 + 448);
  v29 = *(v1 + 456);
  v31 = *(v1 + 464);
  v30 = *(v1 + 472);
  sub_26B2128F0();
  sub_26B2128F0();
  sub_26B2128F0();
  v32 = v28;
  v18 = v31;
  v5 = v30;
LABEL_19:

  *(v1 + 408) = v32;
  *(v1 + 416) = v29;
  *(v1 + 424) = v18;
  *(v1 + 432) = v5;
  *(v1 + 440) = v27 != 0;
  v34 = swift_task_alloc();
  *(v1 + 752) = v34;
  *v34 = v1;
  OUTLINED_FUNCTION_19_7(v34);
  OUTLINED_FUNCTION_20_0();

  return sub_26B1B3E68();
}

uint64_t sub_26B1AD584()
{
  OUTLINED_FUNCTION_12();
  v2 = *(v0 + 728);
  OUTLINED_FUNCTION_32_3();
  OUTLINED_FUNCTION_17();
  swift_beginAccess();
  *(v0 + 736) = *(v1 + v2);
  sub_26B2128F0();
  swift_getObjectType();
  sub_26B212F70();
  OUTLINED_FUNCTION_20_6();
  v3 = OUTLINED_FUNCTION_11_10();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_26B1AD614()
{
  v36 = v0;
  v4 = 0;
  OUTLINED_FUNCTION_36_1();
  OUTLINED_FUNCTION_57();
  if (!v3)
  {
    while (1)
    {
LABEL_2:
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
        goto LABEL_24;
      }

      if (v8 >= v2)
      {
        break;
      }

      v3 = *(v1 + 8 * v8);
      ++v4;
      if (v3)
      {
        v4 = v8;
        goto LABEL_6;
      }
    }

    v0[96] = OBJC_IVAR____TtC15SonicFoundation11SQLDatabase_tableFunctions;
    OUTLINED_FUNCTION_12_12();
    OUTLINED_FUNCTION_51_1();

    return MEMORY[0x2822009F8](v5, v6, v7);
  }

  while (1)
  {
LABEL_6:
    v9 = *(v0[76] + 136);
    if (!v9)
    {
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_38_3();
    v10 = sub_26B1CD218(v9);
    v11 = v10;
    sub_26B1E26EC(v10, &v34);
    if (v35 != 1 && (v35 != 14 || v34 != 16))
    {
      break;
    }

    v3 &= v3 - 1;
    OUTLINED_FUNCTION_42_0();

    if (!v3)
    {
      goto LABEL_2;
    }
  }

  sqlite3_extended_errcode(*(v0[76] + 136));
  v5 = sqlite3_errstr(v11);
  if (!v5)
  {
    goto LABEL_25;
  }

  v14 = v0[76];
  sub_26B212C20();
  v5 = sqlite3_errmsg(*(v14 + 136));
  if (v5)
  {
    v32 = v0[75];
    v33 = v0[76];
    sub_26B212C20();
    sub_26B1AFA88();
    OUTLINED_FUNCTION_30_0();
    v15 = swift_allocError();
    v20 = OUTLINED_FUNCTION_55(v15, v16, v17, v18, v19);
    OUTLINED_FUNCTION_45_1(v20, v21, v22, v23, v24, v25, v26, v27, v31, v32, v33, v34, v35);
    OUTLINED_FUNCTION_42_0();

    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_51_1();

    __asm { BRAA            X1, X16 }
  }

LABEL_26:
  __break(1u);
  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_26B1AD80C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v6 = v5;
  *(v3 + 760) = v0;

  sub_26B1A85A8(*(v3 + 408), *(v3 + 416), *(v3 + 424), *(v3 + 432), *(v3 + 440));
  if (v0)
  {

    swift_getObjectType();
    sub_26B212F70();
    OUTLINED_FUNCTION_20_6();
    v9 = sub_26B1ADFC8;
  }

  else
  {
    swift_getObjectType();
    sub_26B212F70();
    OUTLINED_FUNCTION_20_6();
    v9 = sub_26B1AD978;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_26B1AD978(uint64_t a1)
{
  v6 = *(v2 + 744) + 1;
  if (v6 == *(v2 + 720))
  {

    *(v2 + 728) = OBJC_IVAR____TtC15SonicFoundation11SQLDatabase_scalarFunctions;
    OUTLINED_FUNCTION_12_12();
    OUTLINED_FUNCTION_20_0();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  *(v2 + 744) = v6;
  v11 = *(v2 + 712);
  if (v6 >= *(v11 + 16))
  {
    __break(1u);
  }

  else
  {
    sub_26B1AFBA0(v11 + ((*(v2 + 92) + 32) & ~*(v2 + 92)) + *(*(v2 + 616) + 72) * v6, *(v2 + 624));
    v1 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_67();
    v13 = v12;
    v4 = *(v12 + 16);
    v3 = v4 + 1;
    if (v4 < *(v12 + 24) >> 1)
    {
      goto LABEL_7;
    }
  }

  OUTLINED_FUNCTION_10_11();
  v13 = v34;
LABEL_7:
  *(v13 + 16) = v3;
  v14 = v13 + 80 * v4;
  *(v14 + 32) = 0xD000000000000010;
  *(v14 + 40) = 0x800000026B220060;
  *(v14 + 104) = 0;
  v15 = sub_26B1AB6D0();
  v17 = v16;
  v18 = MEMORY[0x277D837D0];
  v19 = &protocol witness table for String;
  OUTLINED_FUNCTION_66(v15, v16);
  OUTLINED_FUNCTION_54();
  if (v4 >= v5 >> 1)
  {
    OUTLINED_FUNCTION_10_11();
    v13 = v35;
  }

  OUTLINED_FUNCTION_37_2();
  OUTLINED_FUNCTION_65(v20);
  __swift_destroy_boxed_opaque_existential_1((v2 + 288));

  OUTLINED_FUNCTION_33_3();
  if (v21)
  {
    OUTLINED_FUNCTION_16_7();
    v13 = v36;
  }

  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_53();
  if (v3 > (v18 >> 1))
  {
    OUTLINED_FUNCTION_10_11();
    v13 = v37;
  }

  v22 = *(v2 + 624);
  OUTLINED_FUNCTION_37_2();
  OUTLINED_FUNCTION_69(v23);
  __swift_destroy_boxed_opaque_existential_1((v2 + 328));
  sub_26B1ABD40(v22);
  OUTLINED_FUNCTION_33_3();
  if (v21)
  {
    OUTLINED_FUNCTION_16_7();
    v13 = v38;
  }

  *(v13 + 16) = v17;
  OUTLINED_FUNCTION_3_21();
  OUTLINED_FUNCTION_2_26(v24, *(v2 + 232), *(v2 + 248), *(v2 + 264));
  *(v2 + 448) = v13;
  *(v2 + 456) = 0;
  *(v2 + 464) = 0;
  *(v2 + 472) = v1;
  sub_26B2128F0();
  sub_26B2128F0();
  v7 = sub_26B1A6AB8();
  v25 = *(*(v2 + 472) + 16);
  if (v25)
  {

    v26 = *(v2 + 448);
    v27 = *(v2 + 456);
    v29 = *(v2 + 464);
    v28 = *(v2 + 472);
    sub_26B2128F0();
    sub_26B2128F0();
    sub_26B2128F0();
    v30 = v26;
    v19 = v29;
    v5 = v28;
  }

  else
  {
    v27 = *(v2 + 464);
    if (!v27)
    {
      __break(1u);
      return MEMORY[0x2822009F8](v7, v8, v9);
    }

    v30 = *(v2 + 456);
    sub_26B2128F0();

    OUTLINED_FUNCTION_60();
  }

  *(v2 + 408) = v30;
  *(v2 + 416) = v27;
  *(v2 + 424) = v19;
  *(v2 + 432) = v5;
  *(v2 + 440) = v25 != 0;
  v31 = swift_task_alloc();
  *(v2 + 752) = v31;
  *v31 = v2;
  OUTLINED_FUNCTION_19_7(v31);
  OUTLINED_FUNCTION_20_0();

  return sub_26B1B3E68();
}

uint64_t sub_26B1ADCA8()
{
  OUTLINED_FUNCTION_12();
  v2 = *(v0 + 768);
  OUTLINED_FUNCTION_32_3();
  OUTLINED_FUNCTION_17();
  swift_beginAccess();
  *(v0 + 776) = *(v1 + v2);
  sub_26B2128F0();
  swift_getObjectType();
  sub_26B212F70();
  OUTLINED_FUNCTION_20_6();
  v3 = OUTLINED_FUNCTION_11_10();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

void sub_26B1ADD38()
{
  v34 = v0;
  v4 = 0;
  OUTLINED_FUNCTION_36_1();
  OUTLINED_FUNCTION_57();
  if (v3)
  {
LABEL_6:
    while (1)
    {
      v6 = *(*(v0 + 608) + 136);
      if (!v6)
      {
        break;
      }

      OUTLINED_FUNCTION_38_3();
      v7 = sub_26B1D6D2C(v6);
      v8 = v7;
      sub_26B1E26EC(v7, &v32);
      if (v33 != 1 && (v33 != 14 || v32 != 16))
      {
        sqlite3_extended_errcode(*(*(v0 + 608) + 136));
        if (!sqlite3_errstr(v8))
        {
          goto LABEL_25;
        }

        v13 = *(v0 + 608);
        sub_26B212C20();
        if (sqlite3_errmsg(*(v13 + 136)))
        {
          v30 = *(v0 + 600);
          v31 = *(v0 + 608);
          sub_26B212C20();
          sub_26B1AFA88();
          OUTLINED_FUNCTION_30_0();
          v14 = swift_allocError();
          v19 = OUTLINED_FUNCTION_55(v14, v15, v16, v17, v18);
          OUTLINED_FUNCTION_45_1(v19, v20, v21, v22, v23, v24, v25, v26, v29, v30, v31, v32, v33);
          OUTLINED_FUNCTION_42_0();

          OUTLINED_FUNCTION_10_0();
          OUTLINED_FUNCTION_51_1();

          __asm { BRAA            X1, X16 }
        }

        goto LABEL_26;
      }

      v3 &= v3 - 1;
      OUTLINED_FUNCTION_42_0();

      if (!v3)
      {
        goto LABEL_2;
      }
    }
  }

  else
  {
LABEL_2:
    while (1)
    {
      v5 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v5 >= v2)
      {
        v10 = *(v0 + 608);

        *(v10 + 128) = &off_287BBFB48;
        swift_unknownObjectWeakAssign();

        OUTLINED_FUNCTION_51_1();

        __asm { BRAA            X2, X16 }
      }

      v3 = *(v1 + 8 * v5);
      ++v4;
      if (v3)
      {
        v4 = v5;
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
}

uint64_t sub_26B1ADF58()
{
  OUTLINED_FUNCTION_25();

  OUTLINED_FUNCTION_10_0();

  return v0();
}

uint64_t sub_26B1ADFC8()
{
  OUTLINED_FUNCTION_25();

  OUTLINED_FUNCTION_10_0();

  return v0();
}

const char *sub_26B1AE070(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, const char **a6)
{
  OUTLINED_FUNCTION_17();
  result = swift_beginAccess();
  v13 = *(a1 + 136);
  if (!v13)
  {
    goto LABEL_15;
  }

  if (a4 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (a4 > 0x7FFFFFFF)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  swift_beginAccess();
  v14 = sqlite3_prepare_v3(v13, a2, a4, 1u, (a5 + 48), a6);
  swift_endAccess();
  sub_26B1E26EC(v14, &v30);
  OUTLINED_FUNCTION_56();
  if (v16)
  {
  }

  OUTLINED_FUNCTION_64();
  v16 = v16 && v15 == 16;
  if (v16)
  {
  }

  sqlite3_extended_errcode(*(a1 + 136));
  result = OUTLINED_FUNCTION_74();
  if (!result)
  {
    goto LABEL_16;
  }

  sub_26B212C20();
  OUTLINED_FUNCTION_63();
  result = sqlite3_errmsg(*(a1 + 136));
  if (result)
  {
    v17 = sub_26B212C20();
    v19 = v18;
    sub_26B1AFA88();
    OUTLINED_FUNCTION_30_0();
    v20 = swift_allocError();
    v22 = OUTLINED_FUNCTION_25_5(v20, v21);
    OUTLINED_FUNCTION_9_15(v22, v23, v24, v25, v26, v27, v28, v29, v30, v31);
    *(v6 + 32) = v17;
    *(v6 + 40) = v19;
    swift_willThrow();
  }

LABEL_17:
  __break(1u);
  return result;
}

const char *sub_26B1AE1FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  OUTLINED_FUNCTION_17();
  swift_beginAccess();
  result = *(a1 + 136);
  if (!result)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = a3();
  sub_26B1E26EC(v7, &v23);
  OUTLINED_FUNCTION_56();
  if (v9)
  {
  }

  OUTLINED_FUNCTION_64();
  v9 = v9 && v8 == 16;
  if (v9)
  {
  }

  sqlite3_extended_errcode(*(a1 + 136));
  result = OUTLINED_FUNCTION_74();
  if (!result)
  {
    goto LABEL_12;
  }

  sub_26B212C20();
  OUTLINED_FUNCTION_63();
  result = sqlite3_errmsg(*(a1 + 136));
  if (result)
  {
    v10 = sub_26B212C20();
    v12 = v11;
    sub_26B1AFA88();
    OUTLINED_FUNCTION_30_0();
    v13 = swift_allocError();
    v15 = OUTLINED_FUNCTION_25_5(v13, v14);
    OUTLINED_FUNCTION_9_15(v15, v16, v17, v18, v19, v20, v21, v22, v23, v24);
    *(v3 + 32) = v10;
    *(v3 + 40) = v12;
    swift_willThrow();
  }

LABEL_13:
  __break(1u);
  return result;
}

char *sub_26B1AE300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_17();
  swift_beginAccess();
  result = *(a1 + 136);
  if (!result)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = sub_26B1CEAC0(result, a2, a3, a4);
  if (v4)
  {
  }

  sub_26B1E26EC(v11, &v27);
  OUTLINED_FUNCTION_56();
  if (v13)
  {
  }

  OUTLINED_FUNCTION_64();
  v13 = v13 && v12 == 16;
  if (v13)
  {
  }

  sqlite3_extended_errcode(*(a1 + 136));
  result = OUTLINED_FUNCTION_74();
  if (!result)
  {
    goto LABEL_13;
  }

  sub_26B212C20();
  OUTLINED_FUNCTION_63();
  result = sqlite3_errmsg(*(a1 + 136));
  if (result)
  {
    v14 = sub_26B212C20();
    v16 = v15;
    sub_26B1AFA88();
    OUTLINED_FUNCTION_30_0();
    v17 = swift_allocError();
    v19 = OUTLINED_FUNCTION_25_5(v17, v18);
    OUTLINED_FUNCTION_9_15(v19, v20, v21, v22, v23, v24, v25, v26, v27, v28);
    *(v5 + 32) = v14;
    *(v5 + 40) = v16;
    swift_willThrow();
  }

LABEL_14:
  __break(1u);
  return result;
}

const char *sub_26B1AE448(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  OUTLINED_FUNCTION_17();
  swift_beginAccess();
  result = *(a1 + 136);
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  result = sub_26B1DFB3C(result, v4);
  if (!v2)
  {
    result = sub_26B1E26EC(result, &v31);
    if (v32 != 1 && (v32 != 14 || v31 != 16))
    {
      sqlite3_extended_errcode(*(a1 + 136));
      result = OUTLINED_FUNCTION_73();
      if (result)
      {
        sub_26B212C20();
        OUTLINED_FUNCTION_61();
        result = sqlite3_errmsg(*(a1 + 136));
        if (result)
        {
          v8 = sub_26B212C20();
          v10 = v9;
          sub_26B1AFA88();
          OUTLINED_FUNCTION_30_0();
          v11 = swift_allocError();
          v18 = OUTLINED_FUNCTION_23_5(v11, v12, v13, v14, v15, v16, v17);
          OUTLINED_FUNCTION_8_18(v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32);
          *(v3 + 32) = v8;
          *(v3 + 40) = v10;
          return swift_willThrow();
        }

LABEL_14:
        __break(1u);
        return result;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  return result;
}

const char *sub_26B1AE594(uint64_t a1)
{
  OUTLINED_FUNCTION_17();
  swift_beginAccess();
  result = *(a1 + 136);
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_17();
  v8 = sqlite3_exec(v4, v5, v6, v7, 0);
  result = sub_26B1E26EC(v8, &v33);
  if (v34 != 1 && (v34 != 14 || v33 != 16))
  {
    sqlite3_extended_errcode(*(a1 + 136));
    result = OUTLINED_FUNCTION_73();
    if (result)
    {
      sub_26B212C20();
      OUTLINED_FUNCTION_61();
      result = sqlite3_errmsg(*(a1 + 136));
      if (result)
      {
        v10 = sub_26B212C20();
        v12 = v11;
        sub_26B1AFA88();
        OUTLINED_FUNCTION_30_0();
        v13 = swift_allocError();
        v20 = OUTLINED_FUNCTION_23_5(v13, v14, v15, v16, v17, v18, v19);
        OUTLINED_FUNCTION_8_18(v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34);
        *(v1 + 32) = v10;
        *(v1 + 40) = v12;
        return swift_willThrow();
      }

LABEL_13:
      __break(1u);
      return result;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  return result;
}

const char *sub_26B1AE720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(const char *, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_17();
  swift_beginAccess();
  result = *(a1 + 136);
  if (!result)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = a4(result, a2, a3);
  if (v4)
  {
  }

  sub_26B1E26EC(v11, &v27);
  OUTLINED_FUNCTION_56();
  if (v13)
  {
  }

  OUTLINED_FUNCTION_64();
  v13 = v13 && v12 == 16;
  if (v13)
  {
  }

  sqlite3_extended_errcode(*(a1 + 136));
  result = OUTLINED_FUNCTION_74();
  if (!result)
  {
    goto LABEL_13;
  }

  sub_26B212C20();
  OUTLINED_FUNCTION_63();
  result = sqlite3_errmsg(*(a1 + 136));
  if (result)
  {
    v14 = sub_26B212C20();
    v16 = v15;
    sub_26B1AFA88();
    OUTLINED_FUNCTION_30_0();
    v17 = swift_allocError();
    v19 = OUTLINED_FUNCTION_25_5(v17, v18);
    OUTLINED_FUNCTION_9_15(v19, v20, v21, v22, v23, v24, v25, v26, v27, v28);
    *(v5 + 32) = v14;
    *(v5 + 40) = v16;
    swift_willThrow();
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_26B1AE83C()
{
  OUTLINED_FUNCTION_17();
  swift_beginAccess();
  v1 = *(v0 + 136);
  if (!v1)
  {
LABEL_12:
    sub_26B1AEDF0(v0 + 120);
    sub_26B193F8C(*(v0 + 144), *(v0 + 152));

    swift_defaultActor_destroy();
    return v0;
  }

  OUTLINED_FUNCTION_17();
  swift_beginAccess();
  OUTLINED_FUNCTION_17();
  v2 = swift_beginAccess();
  v3 = *(v0 + 160);
  v4 = *(v0 + 168);
  v5 = *(v0 + 176);
  MEMORY[0x28223BE20](v2);
  _s9StatementCMa();
  v21[0] = v3;
  v21[1] = v4;
  v21[2] = v5;
  v21[3] = sub_26B1AFA80;
  v21[4] = swift_getKeyPath();
  v18 = *(v0 + 112);
  v19 = *(v0 + 113);

  v6 = sub_26B2128F0();
  v20 = sub_26B1F8AD4(v6);

  sub_26B168A44(v21);
  result = sub_26B16EAD0();
  if (!result)
  {
LABEL_9:

    if (!(v18 & 1 | ((v19 & 1) == 0)))
    {
      OUTLINED_FUNCTION_17();
      sqlite3_exec(v10, v11, v12, v13, 0);
      OUTLINED_FUNCTION_17();
      sqlite3_exec(v14, v15, v16, v17, 0);
    }

    sqlite3_close_v2(v1);

    goto LABEL_12;
  }

  v8 = result;
  if (result >= 1)
  {
    for (i = 0; i != v8; ++i)
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D670B70](i, v20);
      }

      else
      {
      }

      sub_26B1CFE9C();
    }

    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_26B1AEABC()
{
  sub_26B1AE83C();

  return MEMORY[0x282200960](v0);
}

sqlite3_uint64 sub_26B1AEB1C(unsigned __int8 **a1, uint64_t a2, unint64_t a3, char a4, uint64_t a5)
{
  result = 0;
  switch(a3 >> 62)
  {
    case 1uLL:
      if (__OFSUB__(HIDWORD(a2), a2))
      {
        goto LABEL_14;
      }

      result = HIDWORD(a2) - a2;
      goto LABEL_6;
    case 2uLL:
      v12 = *(a2 + 16);
      v11 = *(a2 + 24);
      result = v11 - v12;
      if (__OFSUB__(v11, v12))
      {
        goto LABEL_15;
      }

LABEL_6:
      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_14:
        __break(1u);
LABEL_15:
        __break(1u);
      }

      else
      {
LABEL_7:
        v13 = sqlite3_malloc64(result);
        *a1 = v13;
        v14 = 7;
        if (v13)
        {
          v15 = v13;
          MEMORY[0x26D66F450](a2, a3);
          MEMORY[0x26D66F450](a2, a3);
          sub_26B212040();
          *(v15 + 9) = 257;
          swift_beginAccess();
          v16 = *(a5 + 136);
          v17 = MEMORY[0x26D66F450](a2, a3);
          v18 = MEMORY[0x26D66F450](a2, a3);
          if (a4)
          {
            v19 = 3;
          }

          else
          {
            v19 = 7;
          }

          return sqlite3_deserialize(v16, "main", v15, v17, v18, v19);
        }

        return v14;
      }

      return result;
    case 3uLL:
      goto LABEL_7;
    default:
      result = BYTE6(a3);
      goto LABEL_7;
  }
}

const char *sub_26B1AECD0(uint64_t a1, uint64_t (*a2)(void))
{
  result = a2();
  if (!v2)
  {
    result = sub_26B1E26EC(result, v26);
    if (BYTE4(v26[0]) != 1 && (BYTE4(v26[0]) != 14 || LODWORD(v26[0]) != 16))
    {
      OUTLINED_FUNCTION_17();
      swift_beginAccess();
      sqlite3_extended_errcode(*(a1 + 136));
      result = OUTLINED_FUNCTION_73();
      if (result)
      {
        sub_26B212C20();
        OUTLINED_FUNCTION_61();
        result = sqlite3_errmsg(*(a1 + 136));
        if (result)
        {
          v7 = sub_26B212C20();
          v9 = v8;
          sub_26B1AFA88();
          OUTLINED_FUNCTION_30_0();
          v10 = swift_allocError();
          v17 = OUTLINED_FUNCTION_23_5(v10, v11, v12, v13, v14, v15, v16);
          OUTLINED_FUNCTION_8_18(v17, v18, v19, v20, v21, v22, v23, v24, v25, v26[0], v26[1], v26[2], v26[3], v27, v28);
          *(v3 + 32) = v7;
          *(v3 + 40) = v9;
          return swift_willThrow();
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_26B1AEE18(char a1)
{
  *(v2 + 56) = v1;
  *(v2 + 49) = a1;
  return MEMORY[0x2822009F8](sub_26B1AEE3C, 0, 0);
}

uint64_t sub_26B1AF0BC()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v6 = v5;
  *(v3 + 72) = v0;

  OUTLINED_FUNCTION_40_0();
  if (v0)
  {
    OUTLINED_FUNCTION_33();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_10_0();

    return v10();
  }
}

uint64_t sub_26B1AF1F8(char a1)
{
  *(v2 + 56) = v1;
  *(v2 + 49) = a1;
  return MEMORY[0x2822009F8](sub_26B1AF21C, 0, 0);
}

uint64_t sub_26B1AF3F0()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v6 = v5;
  *(v3 + 72) = v0;

  OUTLINED_FUNCTION_40_0();
  if (v0)
  {
    OUTLINED_FUNCTION_33();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_10_0();

    return v10();
  }
}

uint64_t sub_26B1AF508(char a1)
{
  *(v2 + 56) = v1;
  *(v2 + 49) = a1;
  return MEMORY[0x2822009F8](sub_26B1AF52C, 0, 0);
}

uint64_t sub_26B1AF700(char a1)
{
  *(v2 + 56) = v1;
  *(v2 + 49) = a1;
  return MEMORY[0x2822009F8](sub_26B1AF724, 0, 0);
}

uint64_t sub_26B1AF8F8(uint64_t result, char a2)
{
  if (result < 0)
  {
    goto LABEL_25;
  }

  v3 = v2;
  v5 = result;
  sub_26B15F540(result);
  v6 = *v2;
  if (*v2)
  {
    swift_beginAccess();
    v7 = *(v6 + 16) & 0x3FLL;
  }

  else
  {
    v7 = 0;
  }

  v8 = MEMORY[0x26D66F630](v5);
  v9 = v8;
  if (a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  if (v6 && (a2 & 1) == 0)
  {
    swift_beginAccess();
    v10 = *(v6 + 24) & 0x3FLL;
  }

  if (v7 < v9)
  {
    v11 = v9;
    return sub_26B1D48D8(v11, v10);
  }

  if (v10 > v9)
  {
    v9 = v10;
  }

  v11 = MEMORY[0x26D66F630](*(v3[1] + 16));
  if (v11 <= v9)
  {
    v11 = v9;
  }

  if (v11 < v7)
  {
    return sub_26B1D48D8(v11, v10);
  }

  result = sub_26B1D4818();
  v12 = *v3;
  if (!v12)
  {
    if (!v10)
    {
      return result;
    }

    __break(1u);
LABEL_25:
    __break(1u);
    return result;
  }

  result = swift_beginAccess();
  if ((*(v12 + 24) & 0x3FLL) != v10)
  {
    *(v12 + 24) = *(v12 + 24) & 0xFFFFFFFFFFFFFFC0 | v10 & 0x3F;
  }

  return result;
}

uint64_t sub_26B1AFA34@<X0>(void *a3@<X8>)
{
  result = swift_getAtKeyPath();
  *a3 = v5;
  return result;
}

unint64_t sub_26B1AFA88()
{
  result = qword_2803E7DF0;
  if (!qword_2803E7DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7DF0);
  }

  return result;
}

unint64_t sub_26B1AFAF8()
{
  result = qword_2803E7DF8;
  if (!qword_2803E7DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7DF8);
  }

  return result;
}

unint64_t sub_26B1AFB4C()
{
  result = qword_2803E7E00;
  if (!qword_2803E7E00)
  {
    _s10ConnectionCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7E00);
  }

  return result;
}

uint64_t sub_26B1AFBA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SQLDatabase.AttachedLocation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void OUTLINED_FUNCTION_9_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, char a10)
{
  *(v12 + 4) = a9;
  *(v12 + 8) = a10;
  *(v12 + 16) = v10;
  *(v12 + 24) = v11;
}

void OUTLINED_FUNCTION_10_11()
{

  sub_26B16AFCC();
}

uint64_t OUTLINED_FUNCTION_18_6()
{
  v7 = *(v2 + 624);
  *(v0 + 16) = v1;
  v8 = v0 + 80 * v3;
  *(v8 + 32) = 542327072;
  *(v8 + 40) = 0xE400000000000000;
  v9 = *(v2 + 176);
  v10 = *(v2 + 192);
  v11 = *(v2 + 208);
  *(v8 + 96) = *(v2 + 224);
  *(v8 + 64) = v10;
  *(v8 + 80) = v11;
  *(v8 + 48) = v9;
  *(v8 + 104) = 0;
  v12 = *v7;
  v13 = v7[1];
  *(v2 + 352) = v4;
  *(v2 + 360) = v5;
  *(v2 + 328) = v12;
  *(v2 + 336) = v13;

  return sub_26B16BCF8(v2 + 328, v2 + 96);
}

void OUTLINED_FUNCTION_22_7()
{

  sub_26B16AFCC();
}

uint64_t OUTLINED_FUNCTION_23_5(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  *a2 = v7;

  return sub_26B1E26EC(v7, va);
}

uint64_t OUTLINED_FUNCTION_26_7()
{
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  *(v0 + 144) = sub_26B1AE05C;
  *(v0 + 152) = 0;

  return sub_26B193F8C(v2, v3);
}

uint64_t OUTLINED_FUNCTION_35_2()
{
  *(v0[76] + 113) = *(v0[75] + v0[79] + 3);

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_38_3()
{

  return swift_retain_n();
}

uint64_t OUTLINED_FUNCTION_40_0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + 16;
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(v4 + 32);

  return sub_26B1A85A8(v2, v3, v5, v6, v7);
}

uint64_t OUTLINED_FUNCTION_41_1()
{
}

uint64_t OUTLINED_FUNCTION_43_1()
{

  return sub_26B2128F0();
}

uint64_t OUTLINED_FUNCTION_44_1()
{

  return sub_26B2128F0();
}

uint64_t OUTLINED_FUNCTION_45_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13)
{
  *(v15 + 4) = a12;
  *(v15 + 8) = a13;
  *(v15 + 16) = v13;
  *(v15 + 24) = v14;
  *(v15 + 32) = v16;
  *(v15 + 40) = v17;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_53()
{
  *(v0 + 168) = 1;

  return sub_26B2128F0();
}

uint64_t OUTLINED_FUNCTION_54()
{
  *(v0 + 88) = 1;

  return sub_26B2128F0();
}

uint64_t OUTLINED_FUNCTION_55(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  *a2 = v5;

  return sub_26B1E26EC(v5, va);
}

void *OUTLINED_FUNCTION_65@<X0>(uint64_t a1@<X8>)
{

  return memcpy((v1 + v3 * a1 + 32), (v2 + 16), 0x49uLL);
}

uint64_t OUTLINED_FUNCTION_66(uint64_t a1, uint64_t a2)
{
  v2[39] = v3;
  v2[40] = v4;
  v2[36] = a1;
  v2[37] = a2;

  return sub_26B16BCF8((v2 + 36), (v2 + 2));
}

void OUTLINED_FUNCTION_67()
{

  sub_26B16AFCC();
}

void *OUTLINED_FUNCTION_69@<X0>(uint64_t a1@<X8>)
{

  return memcpy((v1 + v2 * a1 + 32), (v3 + 96), 0x49uLL);
}

uint64_t OUTLINED_FUNCTION_70()
{

  return sub_26B2128F0();
}

unint64_t OUTLINED_FUNCTION_71()
{
  *(v0 + 680) = v1;

  return sub_26B1AFB4C();
}

uint64_t OUTLINED_FUNCTION_72()
{

  return swift_getObjectType();
}

const char *OUTLINED_FUNCTION_73()
{

  return sqlite3_errstr(v0);
}

const char *OUTLINED_FUNCTION_74()
{

  return sqlite3_errstr(v0);
}

uint64_t sub_26B1B011C()
{
  OUTLINED_FUNCTION_25();
  v1[4] = v0;
  v2 = MEMORY[0x277D837D0];
  sub_26B1B3BF4(0, &qword_2803E79A0, MEMORY[0x277D837D0], MEMORY[0x277D857B8]);
  v1[5] = v3;
  OUTLINED_FUNCTION_1_7(v3);
  v1[6] = v4;
  v1[7] = OUTLINED_FUNCTION_31();
  sub_26B1B3BF4(0, &qword_2803E79A8, v2, MEMORY[0x277D857A8]);
  v1[8] = v5;
  OUTLINED_FUNCTION_1_7(v5);
  v1[9] = v6;
  v1[10] = OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26B1B0258()
{
  OUTLINED_FUNCTION_12();
  (*(v0[6] + 16))(v0[7], v0[4], v0[5]);
  v1 = sub_26B1B3C44(&qword_2803E7E68, &qword_2803E79A0, MEMORY[0x277D857B8], MEMORY[0x277D857C0]);
  OUTLINED_FUNCTION_31_4(v1);
  v0[11] = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_13_13();
  sub_26B1B3C44(v2, v3, v4, MEMORY[0x277D857B0]);
  swift_task_alloc();
  OUTLINED_FUNCTION_9_2();
  v0[12] = v5;
  *v5 = v6;
  OUTLINED_FUNCTION_6_19(v5);

  return MEMORY[0x282200308](v0 + 2);
}

uint64_t sub_26B1B037C()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v6 = v5;
  v3[13] = v0;

  if (v0)
  {
    (*(v3[9] + 8))(v3[10], v3[8]);
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26B1B0494()
{
  v2 = v0[2];
  v1 = v0[3];
  if (v1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4 = v0[11];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = OUTLINED_FUNCTION_17_7();
      sub_26B16A704(v15);
      v4 = v16;
    }

    v6 = *(v4 + 16);
    v5 = *(v4 + 24);
    if (v6 >= v5 >> 1)
    {
      v17 = OUTLINED_FUNCTION_8_3(v5);
      sub_26B16A704(v17);
      v4 = v18;
    }

    *(v4 + 16) = v6 + 1;
    v7 = v4 + 16 * v6;
    *(v7 + 32) = v2;
    *(v7 + 40) = v1;
    v0[11] = v4;
    OUTLINED_FUNCTION_13_13();
    sub_26B1B3C44(v8, v9, v10, MEMORY[0x277D857B0]);
    swift_task_alloc();
    OUTLINED_FUNCTION_9_2();
    v0[12] = v11;
    *v11 = v12;
    OUTLINED_FUNCTION_6_19(v11);

    return MEMORY[0x282200308](v0 + 2);
  }

  else
  {
    (*(v0[9] + 8))(v0[10], v0[8]);

    OUTLINED_FUNCTION_9_14();
    v14 = v0[11];

    return v13(v14);
  }
}

uint64_t sub_26B1B0620()
{
  OUTLINED_FUNCTION_25();

  OUTLINED_FUNCTION_10_0();

  return v0();
}

uint64_t sub_26B1B0688()
{
  *(v1 + 256) = v0;
  OUTLINED_FUNCTION_33();
  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_26B1B06B4()
{
  OUTLINED_FUNCTION_25();
  v1 = *(v0 + 256);
  v2 = *(v1 + 40);
  v3 = *(v1 + 8);
  v4 = *(v1 + 24);
  *(v0 + 16) = *v1;
  *(v0 + 24) = v3;
  *(v0 + 40) = v4;
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_26B1BC924;
  *(v0 + 72) = 0;
  sub_26B1B384C(v1, v0 + 208);
  *(v0 + 264) = MEMORY[0x277D84F90];
  v5 = OUTLINED_FUNCTION_33_4();
  *(v0 + 272) = v5;
  *v5 = v0;
  OUTLINED_FUNCTION_8_19(v5);

  return v7();
}

uint64_t sub_26B1B0778()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 280) = v5;
  *(v3 + 288) = v0;

  if (v0)
  {
    v6 = *(v3 + 32);
    *(v3 + 80) = *(v3 + 16);
    *(v3 + 96) = v6;
    v7 = *(v3 + 64);
    *(v3 + 112) = *(v3 + 48);
    *(v3 + 128) = v7;
    OUTLINED_FUNCTION_11_11();
    sub_26B1B38A8(v3 + 80, v8);
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26B1B08A0()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 280);
  if (v1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v3 = *(v0 + 264);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_17_7();
      sub_26B16B158();
      v3 = v13;
    }

    v5 = *(v3 + 16);
    v4 = *(v3 + 24);
    if (v5 >= v4 >> 1)
    {
      OUTLINED_FUNCTION_8_3(v4);
      sub_26B16B158();
      v3 = v14;
    }

    *(v3 + 16) = v5 + 1;
    *(v3 + 8 * v5 + 32) = v1;
    *(v0 + 264) = v3;
    v6 = OUTLINED_FUNCTION_33_4();
    *(v0 + 272) = v6;
    *v6 = v0;
    OUTLINED_FUNCTION_8_19(v6);

    return v15();
  }

  else
  {
    v8 = *(v0 + 32);
    *(v0 + 144) = *(v0 + 16);
    *(v0 + 160) = v8;
    v9 = *(v0 + 64);
    *(v0 + 176) = *(v0 + 48);
    *(v0 + 192) = v9;
    OUTLINED_FUNCTION_11_11();
    sub_26B1B38A8(v0 + 144, v10);
    OUTLINED_FUNCTION_9_14();
    v12 = *(v0 + 264);

    return v11(v12);
  }
}

uint64_t sub_26B1B09F8()
{
  OUTLINED_FUNCTION_25();
  v1[8] = v0;
  sub_26B1B3564(0);
  v1[9] = v2;
  OUTLINED_FUNCTION_1_7(v2);
  v1[10] = v3;
  v1[11] = OUTLINED_FUNCTION_31();
  sub_26B1B3640(0);
  v1[12] = v4;
  OUTLINED_FUNCTION_1_7(v4);
  v1[13] = v5;
  v1[14] = OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26B1B0AEC()
{
  OUTLINED_FUNCTION_12();
  (*(v0[10] + 16))(v0[11], v0[8], v0[9]);
  v1 = sub_26B1B37E8(&qword_2803E7E50, sub_26B1B3564, MEMORY[0x277D85990]);
  OUTLINED_FUNCTION_31_4(v1);
  v0[15] = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_12_13();
  sub_26B1B37E8(v2, v3, MEMORY[0x277D85980]);
  swift_task_alloc();
  OUTLINED_FUNCTION_9_2();
  v0[16] = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_4_22(v4);

  return MEMORY[0x282200308](v6);
}

uint64_t sub_26B1B0BF4()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v6 = v5;
  v3[17] = v0;

  if (v0)
  {
    (*(v3[13] + 8))(v3[14], v3[12]);
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26B1B0D0C()
{
  OUTLINED_FUNCTION_30();
  v1 = *(v0 + 24);
  if (!v1)
  {
    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
    sub_26B1B3704(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

    OUTLINED_FUNCTION_9_14();
    OUTLINED_FUNCTION_20_0();

    __asm { BRAA            X2, X16 }
  }

  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v0 + 120);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v20 = OUTLINED_FUNCTION_17_7();
    sub_26B16B258(v20, v21, v22, v23);
    v8 = v24;
  }

  v10 = *(v8 + 16);
  v9 = *(v8 + 24);
  if (v10 >= v9 >> 1)
  {
    v25 = OUTLINED_FUNCTION_8_3(v9);
    sub_26B16B258(v25, v10 + 1, 1, v26);
    v8 = v27;
  }

  *(v8 + 16) = v10 + 1;
  v11 = v8 + 48 * v10;
  *(v11 + 32) = v2;
  *(v11 + 40) = v1;
  *(v11 + 48) = v3;
  *(v11 + 56) = v4;
  *(v11 + 64) = v5;
  *(v11 + 72) = v6;
  *(v0 + 120) = v8;
  OUTLINED_FUNCTION_12_13();
  sub_26B1B37E8(v12, v13, MEMORY[0x277D85980]);
  swift_task_alloc();
  OUTLINED_FUNCTION_9_2();
  *(v0 + 128) = v14;
  *v14 = v15;
  OUTLINED_FUNCTION_4_22(v14);
  OUTLINED_FUNCTION_20_0();

  return MEMORY[0x282200308](v16);
}

uint64_t sub_26B1B0EAC()
{
  OUTLINED_FUNCTION_25();

  OUTLINED_FUNCTION_10_0();

  return v0();
}

uint64_t SQLDatabase._markdown(sql:)()
{
  OUTLINED_FUNCTION_12();
  v3 = *(v2 + 16);
  *(v1 + 232) = *v2;
  *(v1 + 296) = v4;
  *(v1 + 304) = v0;
  v5 = *(v2 + 32);
  *(v1 + 248) = v3;
  *(v1 + 264) = v5;
  v6 = swift_task_alloc();
  *(v1 + 312) = v6;
  *v6 = v1;
  v6[1] = sub_26B1B0FFC;

  return SQLDatabase.results(dynamicValues:)(v1 + 64, v1 + 232);
}

uint64_t sub_26B1B0FFC()
{
  OUTLINED_FUNCTION_12();
  v2 = *(*v1 + 304);
  v3 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v4 = v3;
  *(v5 + 320) = v0;

  if (v0)
  {
    v6 = sub_26B1B1DC0;
  }

  else
  {
    v6 = sub_26B1B114C;
  }

  return MEMORY[0x2822009F8](v6, v2, 0);
}

uint64_t sub_26B1B114C()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 80);
  *(v0 + 16) = *(v0 + 64);
  *(v0 + 32) = v1;
  *(v0 + 41) = *(v0 + 89);
  v2 = *(v0 + 40);
  *(v0 + 192) = *(v0 + 24);
  *(v0 + 208) = v2;
  *(v0 + 224) = *(v0 + 56);
  v3 = swift_task_alloc();
  *(v0 + 328) = v3;
  *v3 = v0;
  v3[1] = sub_26B1B125C;

  return sub_26B1B240C();
}

uint64_t sub_26B1B125C()
{
  OUTLINED_FUNCTION_12();
  v2 = *v1;
  OUTLINED_FUNCTION_6();
  *v3 = v2;
  v4 = *v1;
  *v3 = v4;
  v2[42] = v5;
  v2[43] = v0;

  if (v0)
  {
    v6 = v2[38];

    return MEMORY[0x2822009F8](sub_26B1B1580, v6, 0);
  }

  else
  {
    v7 = swift_task_alloc();
    v2[44] = v7;
    *v7 = v4;
    v7[1] = sub_26B1B1418;

    return sub_26B1B0688();
  }
}

uint64_t sub_26B1B1418()
{
  OUTLINED_FUNCTION_12();
  v2 = *v1;
  OUTLINED_FUNCTION_6();
  *v3 = v2;
  *v3 = *v1;
  v2[45] = v4;
  v2[46] = v0;

  if (v0)
  {
    v5 = v2[38];

    v6 = sub_26B1B1E40;
    v7 = v5;
  }

  else
  {
    v7 = v2[38];
    v6 = sub_26B1B1608;
  }

  return MEMORY[0x2822009F8](v6, v7, 0);
}

uint64_t sub_26B1B1580()
{
  OUTLINED_FUNCTION_25();
  sub_26B1B33AC(v0 + 16);
  OUTLINED_FUNCTION_10_0();

  return v1();
}

uint64_t sub_26B1B1608()
{
  v69 = v0;
  v68 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 336);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    *&v67 = MEMORY[0x277D84F90];
    sub_26B15B518(0, v2, 0);
    v4 = v67;
    v5 = *(v67 + 16);
    v6 = 24 * v5 + 48;
    v7 = (v1 + 40);
    do
    {
      v9 = *(v7 - 1);
      v8 = *v7;
      *&v67 = v4;
      v10 = v5 + 1;
      v11 = *(v4 + 24);
      sub_26B2128F0();
      if (v5 >= v11 >> 1)
      {
        sub_26B15B518(v11 > 1, v10, 1);
        v4 = v67;
      }

      *(v4 + 16) = v10;
      v12 = (v4 + v6);
      *(v12 - 16) = 3;
      *(v12 - 1) = v9;
      *v12 = v8;
      v6 += 24;
      v7 += 2;
      ++v5;
      --v2;
    }

    while (v2);
    v59 = v4;

    v3 = MEMORY[0x277D84F90];
  }

  else
  {

    v59 = MEMORY[0x277D84F90];
  }

  v13 = *(v0 + 360);
  v14 = *(v13 + 16);
  if (v14)
  {
    sub_26B15B4F8(0, v14, 0);
    v15 = 0;
    v16 = v3;
    v62 = v13 + 32;
    v60 = v14;
    v61 = v13;
    do
    {
      if (v15 >= *(v13 + 16))
      {
LABEL_50:
        __break(1u);
      }

      v17 = *(v62 + 8 * v15);
      v18 = *(v17 + 16);
      if (v18)
      {
        v63 = v15;
        v64 = v16;
        sub_26B2128F0();
        sub_26B15B55C(0, v18, 0);
        v19 = v3;
        v20 = 32;
        v66 = v17;
        while (1)
        {
          v21 = *(v17 + v20);
          v22 = *(v21 + 16);

          switch(sqlite3_value_type(v22))
          {
            case 1:
              *(v0 + 176) = MEMORY[0x277D83B88];
              *(v0 + 184) = &protocol witness table for Int;
              *(v0 + 152) = sqlite3_value_int64(*(v21 + 16));
              goto LABEL_35;
            case 2:
              *(v0 + 176) = MEMORY[0x277D839F8];
              *(v0 + 184) = &protocol witness table for Double;
              *(v0 + 152) = sqlite3_value_double(*(v21 + 16));
              goto LABEL_35;
            case 3:
              *(v0 + 176) = MEMORY[0x277D837D0];
              *(v0 + 184) = &protocol witness table for String;
              v23 = *(v21 + 16);
              v24 = sqlite3_value_text(v23);
              sqlite3_value_bytes(v23);
              if (v24)
              {
                v25 = sub_26B212A40();
                if (v26)
                {
                  *(v0 + 152) = v25;
                  *(v0 + 160) = v26;
                  goto LABEL_35;
                }

                *&v67 = 0;
                *(&v67 + 1) = 0xE000000000000000;
                sub_26B2136C0();
                v39 = *(&v67 + 1);
                *(v0 + 272) = v67;
                *(v0 + 280) = v39;
                MEMORY[0x26D670040](0xD00000000000001ALL, 0x800000026B220130);
                *(v0 + 288) = v24;
                sub_26B2138F0();
                v37 = *(v0 + 272);
                v38 = *(v0 + 280);
              }

              else
              {
                v37 = 0xD00000000000002DLL;
                v38 = 0x800000026B220100;
              }

              v40 = sub_26B1B34BC();
              v41 = OUTLINED_FUNCTION_24_4(&type metadata for SQLValueError, v40);
              *v42 = v37;
              v42[1] = v38;
              swift_willThrow();
              __swift_deallocate_boxed_opaque_existential_2(v0 + 152);

              goto LABEL_31;
            case 4:
              *(v0 + 176) = MEMORY[0x277CC9318];
              *(v0 + 184) = sub_26B1B3400();
              v29 = *(v21 + 16);
              v30 = sqlite3_value_blob(v29);
              v31 = sqlite3_value_bytes(v29);
              if (v31 < 1)
              {
                v35 = 0;
                v36 = 0xC000000000000000;
                goto LABEL_34;
              }

              if (v30)
              {
                v32 = v31;
                v33 = v31;
                if (v31 < 0xF)
                {
                  *(&v67 + 6) = 0;
                  *&v67 = 0;
                  BYTE14(v67) = v31;
                  memcpy(&v67, v30, v31);
                  v35 = v67;
                  v36 = v65 & 0xF00000000000000 | DWORD2(v67) | ((WORD6(v67) | (BYTE14(v67) << 16)) << 32);
                  v65 = v36;
                }

                else
                {
                  sub_26B211D50();
                  swift_allocObject();
                  if (v32 == 0x7FFFFFFF)
                  {
                    v34 = sub_26B211D00();
                    sub_26B211F60();
                    v35 = swift_allocObject();
                    *(v35 + 16) = xmmword_26B219F00;
                    v36 = v34 | 0x8000000000000000;
                  }

                  else
                  {
                    v45 = sub_26B211D00();
                    v35 = v33 << 32;
                    v36 = v45 | 0x4000000000000000;
                  }
                }

LABEL_34:
                *(v0 + 152) = v35;
                *(v0 + 160) = v36;
LABEL_35:
                sub_26B150514((v0 + 152), v0 + 112);
                v46 = *(v0 + 136);
                __swift_project_boxed_opaque_existential_1((v0 + 112), v46);
                v47 = *(v46 - 8);
                OUTLINED_FUNCTION_31();
                (*(v47 + 16))();
                v43 = sub_26B212AE0();
                v44 = v48;

                __swift_destroy_boxed_opaque_existential_1((v0 + 112));
                goto LABEL_36;
              }

              __swift_deallocate_boxed_opaque_existential_2(v0 + 152);
LABEL_31:
              *(v0 + 184) = 0;
              *(v0 + 168) = 0u;
              *(v0 + 152) = 0u;
              sub_26B1B38A8(v0 + 152, sub_26B1B3454);

              v43 = 0x6D616E79444C5153;
              v44 = 0xEF65756C61566369;
LABEL_36:
              v50 = *(v19 + 16);
              v49 = *(v19 + 24);
              if (v50 >= v49 >> 1)
              {
                v52 = OUTLINED_FUNCTION_8_3(v49);
                sub_26B15B55C(v52, v50 + 1, 1);
              }

              *(v19 + 16) = v50 + 1;
              v51 = v19 + 16 * v50;
              *(v51 + 32) = v43;
              *(v51 + 40) = v44;
              v20 += 8;
              --v18;
              v17 = v66;
              if (!v18)
              {

                v3 = MEMORY[0x277D84F90];
                v14 = v60;
                v13 = v61;
                v15 = v63;
                v16 = v64;
                goto LABEL_41;
              }

              break;
            case 5:
              *(v0 + 176) = &type metadata for SQLNull;
              *(v0 + 184) = sub_26B1B3510();
              v27 = *(v21 + 16);
              if (sqlite3_value_type(v27) == 5)
              {
                goto LABEL_35;
              }

              *&v67 = 0;
              *(&v67 + 1) = 0xE000000000000000;
              sub_26B2136C0();

              *&v67 = 0xD00000000000001ELL;
              *(&v67 + 1) = 0x800000026B220150;
              *(v0 + 60) = sqlite3_value_type(v27);
              v28 = sub_26B213B90();
              MEMORY[0x26D670040](v28);

              MEMORY[0x26D670040](0x65756C617620, 0xE600000000000000);
              __swift_deallocate_boxed_opaque_existential_2(v0 + 152);

              goto LABEL_31;
            default:
              __break(1u);
              goto LABEL_50;
          }
        }
      }

      v19 = v3;
LABEL_41:
      v54 = *(v16 + 16);
      v53 = *(v16 + 24);
      if (v54 >= v53 >> 1)
      {
        v55 = v15;
        sub_26B15B4F8(v53 > 1, v54 + 1, 1);
        v15 = v55;
      }

      ++v15;
      *(v16 + 16) = v54 + 1;
      *(v16 + 8 * v54 + 32) = v19;
    }

    while (v15 != v14);

    sub_26B1B33AC(v0 + 16);
  }

  else
  {

    sub_26B1B33AC(v0 + 16);
    v16 = MEMORY[0x277D84F90];
  }

  v56 = *(v0 + 296);
  *v56 = 0;
  *(v56 + 8) = v59;
  *(v56 + 16) = v16;
  OUTLINED_FUNCTION_10_0();

  return v57();
}

uint64_t sub_26B1B1DC0()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_0();

  return v0();
}

uint64_t sub_26B1B1E40()
{
  OUTLINED_FUNCTION_25();
  sub_26B1B33AC(v0 + 16);
  OUTLINED_FUNCTION_10_0();

  return v1();
}

uint64_t sub_26B1B1EC8()
{
  OUTLINED_FUNCTION_25();
  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  *(v1 + 72) = v3;
  *(v1 + 80) = v4;
  *(v1 + 64) = v5;
  v6 = *(v3 + 16);
  *(v1 + 16) = *v3;
  *(v1 + 32) = v6;
  *(v1 + 48) = *(v3 + 32);
  swift_task_alloc();
  OUTLINED_FUNCTION_9_2();
  *(v1 + 104) = v7;
  *v7 = v8;
  v7[1] = sub_26B1B1F70;

  return sub_26B1D33E4();
}

uint64_t sub_26B1B1F70()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  *v4 = *v1;
  v3[14] = v5;
  v3[15] = v0;

  v6 = v3[12];
  if (v0)
  {
    v7 = sub_26B1B2330;
  }

  else
  {
    v7 = sub_26B1B2078;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_26B1B2078()
{
  OUTLINED_FUNCTION_30();
  if (qword_2803E6AB0 != -1)
  {
    OUTLINED_FUNCTION_18_7(&qword_2803E6AB0);
  }

  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[9];
  v0[7] = v1;
  v4 = swift_task_alloc();
  OUTLINED_FUNCTION_27_6(v4);
  v5[4] = v2;
  v5[5] = v1;
  v5[6] = v3;
  OUTLINED_FUNCTION_14_11();
  sub_26B1B37E8(v6, v7, &unk_26B219E90);

  swift_task_alloc();
  OUTLINED_FUNCTION_9_2();
  v0[17] = v8;
  *v8 = v9;
  v8[1] = sub_26B1B21F0;
  OUTLINED_FUNCTION_20_0();

  return MEMORY[0x282200908](v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_26B1B21F0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v6 = v5;
  *(v3 + 144) = v0;

  v7 = *(v3 + 96);
  if (v0)
  {
    v8 = sub_26B1B23B0;
  }

  else
  {
    v8 = sub_26B1B2354;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_26B1B2354()
{
  OUTLINED_FUNCTION_25();

  OUTLINED_FUNCTION_10_0();

  return v0();
}

uint64_t sub_26B1B23B0()
{
  OUTLINED_FUNCTION_25();

  OUTLINED_FUNCTION_10_0();

  return v0();
}

uint64_t sub_26B1B240C()
{
  OUTLINED_FUNCTION_25();
  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  *(v1 + 72) = v3;
  *(v1 + 80) = v4;
  v5 = *(v3 + 16);
  *(v1 + 16) = *v3;
  *(v1 + 32) = v5;
  *(v1 + 48) = *(v3 + 32);
  swift_task_alloc();
  OUTLINED_FUNCTION_9_2();
  *(v1 + 104) = v6;
  *v6 = v7;
  v6[1] = sub_26B1B24B0;

  return sub_26B1D33E4();
}

uint64_t sub_26B1B24B0()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  *v4 = *v1;
  v3[14] = v5;
  v3[15] = v0;

  v6 = v3[12];
  if (v0)
  {
    v7 = sub_26B1B2330;
  }

  else
  {
    v7 = sub_26B1B25B8;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_26B1B25B8()
{
  OUTLINED_FUNCTION_30();
  if (qword_2803E6AB0 != -1)
  {
    OUTLINED_FUNCTION_18_7(&qword_2803E6AB0);
  }

  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[9];
  v0[8] = v1;
  v4 = swift_task_alloc();
  OUTLINED_FUNCTION_27_6(v4);
  v5[4] = v2;
  v5[5] = v1;
  v5[6] = v3;
  OUTLINED_FUNCTION_14_11();
  sub_26B1B37E8(v6, v7, &unk_26B219E90);

  v8 = swift_task_alloc();
  v0[17] = v8;
  sub_26B1B3BF4(0, &qword_2803E6D38, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  *v8 = v0;
  v8[1] = sub_26B1B2754;
  OUTLINED_FUNCTION_20_0();

  return MEMORY[0x282200908](v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_26B1B2754()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v6 = v5;
  *(v3 + 144) = v0;

  v7 = *(v3 + 96);
  if (v0)
  {
    v8 = sub_26B1B23B0;
  }

  else
  {
    v8 = sub_26B1B2894;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_26B1B2894()
{
  OUTLINED_FUNCTION_25();

  OUTLINED_FUNCTION_9_14();

  return v0();
}

uint64_t sub_26B1B28F4(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[9] = a4;
  v9 = (a2 + *a2);
  v7 = swift_task_alloc();
  v6[12] = v7;
  *v7 = v6;
  v7[1] = sub_26B1B2A00;

  return v9();
}

uint64_t sub_26B1B2A00()
{
  OUTLINED_FUNCTION_12();
  v2 = *v1;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 104) = v0;

  v5 = *(v2 + 72);
  if (v0)
  {
    v6 = sub_26B1B2CD8;
  }

  else
  {
    v6 = sub_26B1B2B20;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_26B1B2B20()
{
  v22 = v0;
  v1 = *(v0 + 104);
  sub_26B1D416C(*(v0 + 80), *(v0 + 72), *(v0 + 88));
  v2 = v1;
  if (v1)
  {
    *(v0 + 64) = v1;
    v3 = v1;
    sub_26B16C9BC(0, &qword_280D2DA78, MEMORY[0x277D84948]);
    if (swift_dynamicCast())
    {
      v4 = *(v0 + 16);
      v5 = *(v0 + 20);
      v6 = *(v0 + 24);
      v7 = *(v0 + 32);
      v8 = *(v0 + 40);
      v10 = *(v0 + 48);
      v9 = *(v0 + 56);
      v18 = v5;
      v19 = v6;
      v20 = 17;
      v21 = 14;
      if (static SQLError.Code.== infix(_:_:)(&v18, &v20))
      {
        v17 = v7;
        v11 = *(v0 + 88);

        OUTLINED_FUNCTION_34_3();
        if (v11)
        {
        }

        else
        {
          v13 = sub_26B1AFA88();
          OUTLINED_FUNCTION_24_4(&type metadata for SQLError, v13);
          *v14 = v4;
          *(v14 + 4) = v5;
          *(v14 + 8) = v6;
          *(v14 + 16) = v17;
          *(v14 + 24) = v8;
          *(v14 + 32) = v10;
          *(v14 + 40) = v9;
          swift_willThrow();
        }

        goto LABEL_12;
      }
    }

    v12 = *(v0 + 72);

    OUTLINED_FUNCTION_10_12();
    if (v12)
    {
    }

    else
    {
      swift_willThrow();
    }
  }

LABEL_12:
  OUTLINED_FUNCTION_10_0();

  return v15();
}

uint64_t sub_26B1B2E44(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[10] = a3;
  v10 = a1 + *a1;
  v8 = swift_task_alloc();
  v5[13] = v8;
  *v8 = v5;
  v8[1] = sub_26B1B2F58;

  return (v10)(v5 + 8, a3, a4);
}

uint64_t sub_26B1B2F58()
{
  OUTLINED_FUNCTION_12();
  v2 = *v1;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 112) = v0;

  v5 = *(v2 + 80);
  if (v0)
  {
    v6 = sub_26B1B3230;
  }

  else
  {
    v6 = sub_26B1B3078;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_26B1B339C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

unint64_t sub_26B1B3400()
{
  result = qword_2803E7E08;
  if (!qword_2803E7E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7E08);
  }

  return result;
}

void sub_26B1B3454(uint64_t a1)
{
  if (!qword_2803E7E10)
  {
    sub_26B16C9BC(255, &qword_2803E7E18, &protocol descriptor for _SQLNativeValue);
    v1 = sub_26B2133E0();
    if (!v2)
    {
      atomic_store(v1, &qword_2803E7E10);
    }
  }
}

unint64_t sub_26B1B34BC()
{
  result = qword_2803E7E20;
  if (!qword_2803E7E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7E20);
  }

  return result;
}

unint64_t sub_26B1B3510()
{
  result = qword_2803E7E28;
  if (!qword_2803E7E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7E28);
  }

  return result;
}

uint64_t sub_26B1B3584(uint64_t a1)
{
  v3 = qword_2803E7E38;
  if (!qword_2803E7E38)
  {
    v8[7] = v1;
    v8[8] = v2;
    v8[0] = MEMORY[0x277D83B88];
    v8[1] = MEMORY[0x277D837D0];
    v8[2] = MEMORY[0x277D837D0];
    v8[3] = MEMORY[0x277D839B0];
    v8[4] = &type metadata for SQLDynamicValue;
    v8[5] = MEMORY[0x277D83B88];
    v8[6] = MEMORY[0x277D83B88];
    v7[0] = &protocol witness table for Int;
    v7[1] = &protocol witness table for String;
    v7[2] = &protocol witness table for String;
    v7[3] = &protocol witness table for Bool;
    v7[4] = &protocol witness table for SQLDynamicValue;
    v7[5] = &protocol witness table for Int;
    v7[6] = &protocol witness table for Int;
    v4 = type metadata accessor for SQLDatabase.Results(a1, 7, v8, v7);
    v3 = v4;
    if (!v5)
    {
      atomic_store(v4, &qword_2803E7E38);
    }
  }

  return v3;
}

void sub_26B1B3660(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, ValueMetadata *, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_26B1B3584(255);
    v7 = sub_26B1B37E8(&qword_2803E7E40, sub_26B1B3584, &protocol conformance descriptor for SQLDatabase.Results<Pack{repeat A}>);
    v8 = a3(a1, v6, &type metadata for SQLDatabase.TableColumnInfo, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_26B1B3704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t sub_26B1B3748()
{
  OUTLINED_FUNCTION_26_8();
  swift_task_alloc();
  OUTLINED_FUNCTION_9_2();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_26B178E9C;
  v3 = OUTLINED_FUNCTION_20_7();

  return sub_26B1B28F4(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_26B1B37E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26B1B38A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_26B1B3908(uint64_t a1)
{
  if (!qword_2803E7E60)
  {
    sub_26B1B3BF4(255, &qword_2803E7010, &type metadata for SQLDynamicValue, MEMORY[0x277D83940]);
    v5 = type metadata accessor for SQLDatabase.AsyncResultsIterator(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_2803E7E60);
    }
  }
}

uint64_t sub_26B1B3984(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v12 = swift_task_alloc();
  *(v6 + 24) = v12;
  *v12 = v6;
  v12[1] = sub_26B1B3A4C;

  return sub_26B1B2E44(a2, a3, a4, a5, a6);
}

uint64_t sub_26B1B3A4C()
{
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_10_1();
  v5 = v4;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v8 = v7;

  if (!v0)
  {
    **(v5 + 16) = v3;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_26B1B3B44()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_26_8();
  swift_task_alloc();
  OUTLINED_FUNCTION_9_2();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_26B1760A8;
  v3 = OUTLINED_FUNCTION_20_7();

  return v4(v3);
}

void sub_26B1B3BF4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_26B1B3C44(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_26B1B3BF4(255, a2, MEMORY[0x277D837D0], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void OUTLINED_FUNCTION_5_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13)
{
  *a2 = a13;
  *(a2 + 4) = v14;
  *(a2 + 8) = v13;
}

const char *OUTLINED_FUNCTION_9_16()
{

  return sub_26B1AECD0(v0, sub_26B1B3C94);
}

const char *OUTLINED_FUNCTION_10_12()
{

  return sub_26B1AECD0(v0, sub_26B1B3830);
}

uint64_t OUTLINED_FUNCTION_18_7(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_24_4(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

__n128 OUTLINED_FUNCTION_27_6(__n128 *a1)
{
  v1[8].n128_u64[0] = a1;
  result = v1[5];
  a1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_31_4(uint64_t a1)
{

  return sub_26B213150();
}

const char *OUTLINED_FUNCTION_32_4()
{

  return sub_26B1D416C(v1, v2, v0);
}

uint64_t OUTLINED_FUNCTION_33_4()
{

  return swift_task_alloc();
}

const char *OUTLINED_FUNCTION_34_3()
{

  return sub_26B1D416C(v1, v2, v0);
}

uint64_t sub_26B1B3E68()
{
  OUTLINED_FUNCTION_25();
  *(v1 + 56) = v0;
  v3 = *(v2 + 16);
  *(v1 + 16) = *v2;
  *(v1 + 32) = v3;
  *(v1 + 48) = *(v2 + 32);
  OUTLINED_FUNCTION_13(&unk_26B219F30);
  v7 = v4;
  v5 = swift_task_alloc();
  *(v1 + 64) = v5;
  *v5 = v1;
  v5[1] = sub_26B1B3F2C;

  return v7();
}

uint64_t sub_26B1B3F2C()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_17();
  *v3 = v2;
  v5 = *(v4 + 56);
  v6 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v7 = v6;
  *(v8 + 72) = v0;

  if (v0)
  {
    v9 = sub_26B1AF1D4;
  }

  else
  {
    v9 = sub_26B1B403C;
  }

  return MEMORY[0x2822009F8](v9, v5, 0);
}

uint64_t SQLDatabase.results(dynamicValues:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = *(a2 + 16);
  *(v3 + 32) = *a2;
  *(v3 + 48) = v4;
  *(v3 + 64) = *(a2 + 32);
  return OUTLINED_FUNCTION_2_13(sub_26B1B4088, v2);
}

uint64_t sub_26B1B4088()
{
  result = *(*(v0 + 24) + OBJC_IVAR____TtC15SonicFoundation11SQLDatabase_connection);
  if (result)
  {
    OUTLINED_FUNCTION_87();
    OUTLINED_FUNCTION_10_3();
    v2 = *(v0 + 64);
    v4 = *(v0 + 48);
    v3 = *(v0 + 56);
    v6 = *(v0 + 32);
    v5 = *(v0 + 40);
    v7 = *(v0 + 16);
    *v7 = v8;
    *(v7 + 8) = v6;
    *(v7 + 16) = v5;
    *(v7 + 24) = v4;
    *(v7 + 32) = v3;
    *(v7 + 40) = v2;

    v9 = OUTLINED_FUNCTION_4_23();
    sub_26B1A8558(v9, v10, v11, v12, v13);
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_25_2();

    return v15(v14, v15, v16, v17, v18, v19, v20, v21);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26B1B4128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_26B1BD374;

  return SQLExecution.execute(dynamicOnce:)();
}

uint64_t sub_26B1B41D4(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 256) = *a1;
  *(v1 + 272) = v2;
  *(v1 + 288) = *(a1 + 32);
  v3 = swift_task_alloc();
  *(v1 + 304) = v3;
  *v3 = v1;
  v3[1] = sub_26B1B427C;

  return SQLDatabase.Transaction.results(dynamicValues:)(v1 + 208, v1 + 256);
}

uint64_t sub_26B1B427C()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_17();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v5 = v4;
  *(v6 + 312) = v0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26B1B4374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_3_22();
  OUTLINED_FUNCTION_33_5();
  OUTLINED_FUNCTION_13(&qword_26B219F78);
  v22 = v9;
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_103(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_32_5(v11);
  OUTLINED_FUNCTION_111();

  return v13(v13, v14, v15, v16, v17, v18, v19, v20, a9, v22);
}

uint64_t sub_26B1B4410()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_15_7();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_1_12();
  *v7 = v6;
  *(v4 + 368) = v0;

  if (!v0)
  {
    *(v4 + 376) = v1;
  }

  OUTLINED_FUNCTION_12_14();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_26B1B4514()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_74_0();
  swift_willThrowTypedImpl();
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_26B1B4584(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 256) = *a1;
  *(v1 + 272) = v2;
  *(v1 + 288) = *(a1 + 32);
  v3 = swift_task_alloc();
  *(v1 + 304) = v3;
  *v3 = v1;
  v3[1] = sub_26B1B427C;

  return SQLDatabase.results(dynamicValues:)(v1 + 208, v1 + 256);
}

uint64_t sub_26B1B462C(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 256) = *a1;
  *(v1 + 272) = v2;
  *(v1 + 288) = *(a1 + 32);
  v3 = swift_task_alloc();
  *(v1 + 304) = v3;
  *v3 = v1;
  v3[1] = sub_26B1B46D4;

  return sub_26B1B97E4(v1 + 208, v1 + 256);
}

uint64_t sub_26B1B46D4()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_17();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v5 = v4;
  *(v6 + 312) = v0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26B1B47CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_3_22();
  OUTLINED_FUNCTION_33_5();
  OUTLINED_FUNCTION_13(&qword_26B219F78);
  v22 = v9;
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_103(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_32_5(v11);
  OUTLINED_FUNCTION_111();

  return v13(v13, v14, v15, v16, v17, v18, v19, v20, a9, v22);
}

uint64_t sub_26B1B4868()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_15_7();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_1_12();
  *v7 = v6;
  *(v4 + 368) = v0;

  if (!v0)
  {
    *(v4 + 376) = v1;
  }

  OUTLINED_FUNCTION_12_14();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_26B1B4974(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_108();
  v3 = OUTLINED_FUNCTION_4_23();
  sub_26B1A85A8(v3, v4, v5, v6, v7);
  OUTLINED_FUNCTION_98();
  sub_26B1BC950(v2 + 144);
  OUTLINED_FUNCTION_9_14();
  OUTLINED_FUNCTION_25_2();

  return v10(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_26B1B49EC()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_74_0();
  swift_willThrowTypedImpl();
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_26B1B4A5C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_108();
  v3 = OUTLINED_FUNCTION_4_23();
  sub_26B1A85A8(v3, v4, v5, v6, v7);
  OUTLINED_FUNCTION_99();
  sub_26B1BC950(v2 + 80);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_25_2();

  return v9(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t SQLExecution.execute(dynamicOnce:)()
{
  OUTLINED_FUNCTION_10_3();
  v2 = v1;
  v4 = v3;
  v6 = *(v5 + 32);
  v7 = *(v5 + 16);
  *(v0 + 256) = *v5;
  *(v0 + 272) = v7;
  *(v0 + 288) = v6;
  OUTLINED_FUNCTION_17_8();
  v12 = (v8 + *v8);
  swift_task_alloc();
  OUTLINED_FUNCTION_9_2();
  *(v0 + 304) = v9;
  *v9 = v10;
  v9[1] = sub_26B1B427C;

  return v12(v0 + 208, v0 + 256, v4, v2);
}

uint64_t sub_26B1B4BF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_26B1BD374;

  return SQLExecution.execute(dynamicAll:)();
}

uint64_t sub_26B1B4CA0(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 112) = *a1;
  *(v1 + 128) = v2;
  *(v1 + 144) = *(a1 + 32);
  v3 = swift_task_alloc();
  *(v1 + 152) = v3;
  *v3 = v1;
  v3[1] = sub_26B1B4D48;

  return SQLDatabase.Transaction.results(dynamicValues:)(v1 + 64, v1 + 112);
}

uint64_t sub_26B1B4D48()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_17();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v5 = v4;
  *(v6 + 160) = v0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26B1B4E40()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_30_7();
  OUTLINED_FUNCTION_13(&dword_26B219F20);
  v13 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_102(v1);
  *v2 = v3;
  v11 = OUTLINED_FUNCTION_31_5(v2, v4, v5, v6, v7, v8, v9, v10, v13);

  return v11();
}

uint64_t sub_26B1B4ECC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_15_7();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_1_12();
  *v7 = v6;
  *(v4 + 176) = v0;

  if (!v0)
  {
    *(v4 + 184) = v1;
  }

  OUTLINED_FUNCTION_12_14();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_26B1B4FD0(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 112) = *a1;
  *(v1 + 128) = v2;
  *(v1 + 144) = *(a1 + 32);
  v3 = swift_task_alloc();
  *(v1 + 152) = v3;
  *v3 = v1;
  v3[1] = sub_26B1B4D48;

  return SQLDatabase.results(dynamicValues:)(v1 + 64, v1 + 112);
}

uint64_t sub_26B1B5078(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 112) = *a1;
  *(v1 + 128) = v2;
  *(v1 + 144) = *(a1 + 32);
  v3 = swift_task_alloc();
  *(v1 + 152) = v3;
  *v3 = v1;
  v3[1] = sub_26B1B5120;

  return sub_26B1B97E4(v1 + 64, v1 + 112);
}

uint64_t sub_26B1B5120()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_17();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v5 = v4;
  *(v6 + 160) = v0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26B1B5218()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_30_7();
  OUTLINED_FUNCTION_13(&dword_26B219F20);
  v13 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_102(v1);
  *v2 = v3;
  v11 = OUTLINED_FUNCTION_31_5(v2, v4, v5, v6, v7, v8, v9, v10, v13);

  return v11();
}

uint64_t sub_26B1B52A4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_15_7();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_1_12();
  *v7 = v6;
  *(v4 + 176) = v0;

  if (!v0)
  {
    *(v4 + 184) = v1;
  }

  OUTLINED_FUNCTION_12_14();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_26B1B53B0()
{
  OUTLINED_FUNCTION_25();
  sub_26B1B33AC(v0 + 16);
  OUTLINED_FUNCTION_9_14();
  v2 = *(v0 + 184);

  return v1(v2);
}

uint64_t sub_26B1B5410()
{
  OUTLINED_FUNCTION_25();
  sub_26B1B33AC(v0 + 16);
  OUTLINED_FUNCTION_40_1();

  return v1();
}

uint64_t SQLExecution.execute(dynamicAll:)()
{
  OUTLINED_FUNCTION_10_3();
  v2 = *(v1 + 16);
  *(v0 + 112) = *v1;
  v3 = *(v1 + 32);
  *(v0 + 128) = v2;
  *(v0 + 144) = v3;
  OUTLINED_FUNCTION_19_8();
  v8 = (v4 + *v4);
  swift_task_alloc();
  OUTLINED_FUNCTION_9_2();
  *(v0 + 152) = v5;
  *v5 = v6;
  v5[1] = sub_26B1B4D48;
  OUTLINED_FUNCTION_95();

  return v8();
}

uint64_t sub_26B1B5590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v23 = swift_task_alloc();
  *(v14 + 16) = v23;
  *v23 = v14;
  v23[1] = sub_26B178E9C;

  return SQLExecution.execute<A>(once:)(a1, a2, a3, a6, a4, a7, a5, v22, a9, a10, a11, a12, a13, a14);
}

uint64_t SQLExecution.execute<A>(once:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_76();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  *(v14 + 368) = v15;
  *(v14 + 376) = v21;
  *(v14 + 352) = v22;
  *(v14 + 360) = v17;
  if (v17 == 1)
  {
    TupleTypeMetadata = swift_checkMetadataState();
  }

  else
  {
    v24 = OUTLINED_FUNCTION_31();
    for (i = 0; v18 != i; ++i)
    {
      *(v24 + 8 * i) = *((v16 & 0xFFFFFFFFFFFFFFFELL) + 8 * i);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  *(v14 + 384) = TupleTypeMetadata;
  sub_26B2133E0();
  *(v14 + 392) = OUTLINED_FUNCTION_31();
  v26 = *(v20 + 32);
  v27 = *(v20 + 16);
  *(v14 + 304) = *v20;
  *(v14 + 320) = v27;
  *(v14 + 336) = v26;
  OUTLINED_FUNCTION_17_8();
  v41 = v28 + *v28;
  swift_task_alloc();
  OUTLINED_FUNCTION_9_2();
  *(v14 + 400) = v29;
  *v29 = v30;
  v29[1] = sub_26B1B5840;
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_105();

  return v38(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, v41, a12, a13, a14);
}

uint64_t sub_26B1B5840()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_17();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v5 = v4;
  *(v6 + 408) = v0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26B1B5938()
{
  OUTLINED_FUNCTION_64_0();
  OUTLINED_FUNCTION_35_3();
  v2 = *(v0 + 376);
  v1 = *(v0 + 384);
  v4 = *(v0 + 360);
  v3 = *(v0 + 368);
  v5 = *(v0 + 208);
  v6 = *(v0 + 216);
  *(v0 + 416) = v5;
  *(v0 + 424) = v6;
  v7 = *(v0 + 224);
  v8 = *(v0 + 232);
  *(v0 + 432) = v7;
  *(v0 + 440) = v8;
  v9 = *(v0 + 240);
  *(v0 + 448) = v9;
  v10 = *(v0 + 248);
  *(v0 + 249) = v10;
  *(v0 + 256) = v5;
  *(v0 + 264) = v6;
  *(v0 + 272) = v7;
  *(v0 + 280) = v8;
  *(v0 + 288) = v9;
  *(v0 + 296) = v10;

  sub_26B1A8558(v6, v7, v8, v9, v10);
  v11 = type metadata accessor for SQLDatabase.Results(0, v4, v3, v2);
  WitnessTable = swift_getWitnessTable();
  sub_26B1CA00C(v11, WitnessTable, v0 + 16);
  v13 = *(v0 + 264);
  v14 = *(v0 + 272);
  v15 = *(v0 + 280);
  v16 = *(v0 + 288);
  LOBYTE(v7) = *(v0 + 296);

  sub_26B1A85A8(v13, v14, v15, v16, v7);
  v17 = swift_task_alloc();
  *(v0 + 456) = v17;
  *(v0 + 464) = type metadata accessor for SQLDatabase.AsyncResultsIterator(0, v1, v18, v19);
  swift_getWitnessTable();
  *v17 = v0;
  v17[1] = sub_26B1B5ADC;
  OUTLINED_FUNCTION_48_2();
  OUTLINED_FUNCTION_51_2();

  return MEMORY[0x282200320](v20);
}

uint64_t sub_26B1B5ADC()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  v1 = *v0;
  OUTLINED_FUNCTION_1_12();
  *v2 = v1;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_26B1B5BD8()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_82();
  v3 = v1[48];
  v2 = v1[49];

  v4 = OUTLINED_FUNCTION_39_2();
  sub_26B1A85A8(v4, v5, v6, v7, v8);
  v9 = OUTLINED_FUNCTION_98();
  (*(*(v0 - 8) + 8))(v1 + 18, v0, v9);
  v10 = 1;
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) != 1)
  {
    (*(*(v1[48] - 8) + 32))(v1[44], v1[49]);
    v10 = 0;
  }

  __swift_storeEnumTagSinglePayload(v1[44], v10, 1, v1[48]);

  OUTLINED_FUNCTION_20();

  return v11();
}

uint64_t sub_26B1B5CF4()
{
  OUTLINED_FUNCTION_25();

  OUTLINED_FUNCTION_10_0();

  return v0();
}

uint64_t sub_26B1B5D50()
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_82();

  v2 = OUTLINED_FUNCTION_39_2();
  sub_26B1A85A8(v2, v3, v4, v5, v6);
  v7 = OUTLINED_FUNCTION_99();
  (*(*(v0 - 8) + 8))(v1 + 80, v0, v7);

  OUTLINED_FUNCTION_10_0();

  return v8();
}

uint64_t sub_26B1B5E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v19 = swift_task_alloc();
  *(v12 + 16) = v19;
  *v19 = v12;
  v19[1] = sub_26B1BD374;

  return SQLExecution.execute<A>(all:)(a1, a2, a5, a3, a6, a4, v20, v21, a9, a10, a11, a12);
}

uint64_t SQLExecution.execute<A>(all:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_35_3();
  v14 = *(v13 + 16);
  *(v12 + 112) = *v13;
  *(v12 + 160) = v15;
  *(v12 + 168) = v16;
  *(v12 + 152) = v17;
  v18 = *(v13 + 32);
  *(v12 + 128) = v14;
  *(v12 + 144) = v18;
  OUTLINED_FUNCTION_17_8();
  v32 = v19 + *v19;
  swift_task_alloc();
  OUTLINED_FUNCTION_9_2();
  *(v12 + 176) = v20;
  *v20 = v21;
  OUTLINED_FUNCTION_100(v20);
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_91();

  return v29(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, v32, a12);
}

uint64_t sub_26B1B6000()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_17();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v5 = v4;
  *(v6 + 184) = v0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26B1B60F8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_10_3();
  v3 = *(v2 + 160);
  v4 = *(v2 + 168);
  v5 = *(v2 + 152);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  *(v2 + 192) = v6;
  *(v2 + 200) = v7;
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  *(v2 + 208) = v8;
  *(v2 + 216) = v9;
  v10 = *(v2 + 48);
  *(v2 + 224) = v10;
  v11 = *(v2 + 56);
  *(v2 + 57) = v11;
  *(v2 + 64) = v6;
  *(v2 + 72) = v7;
  *(v2 + 80) = v8;
  *(v2 + 88) = v9;
  *(v2 + 96) = v10;
  *(v2 + 104) = v11;
  v12 = swift_task_alloc();
  *(v2 + 232) = v12;
  type metadata accessor for SQLDatabase.Results(0, v5, v3, v4);
  swift_getWitnessTable();
  *v12 = v2;
  v12[1] = sub_26B1B6208;
  OUTLINED_FUNCTION_25_2();

  return AsyncSequence.collect()(v13, v14);
}

uint64_t sub_26B1B6208()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_15_7();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_1_12();
  *v7 = v6;
  *(v4 + 240) = v0;

  if (!v0)
  {
    *(v4 + 248) = v1;
  }

  OUTLINED_FUNCTION_12_14();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_26B1B630C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_107();
  v2 = OUTLINED_FUNCTION_4_23();
  sub_26B1A85A8(v2, v3, v4, v5, v6);
  OUTLINED_FUNCTION_9_14();
  OUTLINED_FUNCTION_25_2();

  return v9(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_26B1B6380(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_107();
  v2 = OUTLINED_FUNCTION_4_23();
  sub_26B1A85A8(v2, v3, v4, v5, v6);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_25_2();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t SQLExecution.execute<A, each B>(once:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_76();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  *(v21 + 88) = v22;
  *(v21 + 96) = v28;
  *(v21 + 72) = v29;
  *(v21 + 80) = v24;
  *(v21 + 56) = v30;
  *(v21 + 64) = v31;
  if (v24 == 1)
  {
    TupleTypeMetadata = *(v22 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v33 = OUTLINED_FUNCTION_31();
    for (i = 0; v25 != i; ++i)
    {
      *(v33 + 8 * i) = *((v23 & 0xFFFFFFFFFFFFFFFELL) + 8 * i);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  *(v21 + 104) = TupleTypeMetadata;
  *(v21 + 112) = *(TupleTypeMetadata - 8);
  *(v21 + 120) = swift_task_alloc();
  *(v21 + 128) = swift_task_alloc();
  *(v21 + 136) = swift_task_alloc();
  v35 = sub_26B2133E0();
  *(v21 + 144) = v35;
  *(v21 + 152) = *(v35 - 8);
  *(v21 + 160) = swift_task_alloc();
  v36 = swift_task_alloc();
  v37 = *(v27 + 16);
  *(v21 + 16) = *v27;
  *(v21 + 168) = v36;
  OUTLINED_FUNCTION_68(*(v27 + 32), v37);
  OUTLINED_FUNCTION_17_8();
  v51 = v38 + *v38;
  swift_task_alloc();
  OUTLINED_FUNCTION_9_2();
  *(v21 + 176) = v39;
  *v39 = v40;
  v39[1] = sub_26B1B6668;
  OUTLINED_FUNCTION_71_0();
  OUTLINED_FUNCTION_105();

  return v48(v41, v42, v43, v44, v45, v46, v47, v48, v51, a10, a11, a12);
}

uint64_t sub_26B1B6668()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_17();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v5 = v4;
  *(v6 + 184) = v0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26B1B6760()
{
  OUTLINED_FUNCTION_84();
  v22 = v1;
  OUTLINED_FUNCTION_30();
  v2 = v0[20];
  v3 = v0[13];
  (*(v0[19] + 16))(v2, v0[21], v0[18]);
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) != 1)
  {
    v11 = v0[10];
    (*(v0[14] + 32))(v0[17], v0[20], v0[13]);
    v0[24] = OUTLINED_FUNCTION_31();
    v12 = OUTLINED_FUNCTION_15();
    v13(v12);
    if (v11)
    {
      v14 = 32;
      do
      {
        v15 = v0[10];
        OUTLINED_FUNCTION_62_0();
        v16 = OUTLINED_FUNCTION_104();
        v17(v16);
        OUTLINED_FUNCTION_96();
        v14 += 16;
      }

      while (v15);
    }

    OUTLINED_FUNCTION_2_28();
    swift_task_alloc();
    OUTLINED_FUNCTION_9_2();
    v0[25] = v18;
    *v18 = v19;
    v18[1] = sub_26B1B69E0;
    OUTLINED_FUNCTION_111();

    __asm { BRAA            X2, X16 }
  }

  v4 = v0[20];
  v5 = v0[18];
  v6 = v0[12];
  v7 = v0[7];
  v8 = *(v0[19] + 8);
  v8(v0[21], v5);
  v8(v4, v5);
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v6);

  OUTLINED_FUNCTION_20();

  return v9();
}

uint64_t sub_26B1B69E0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_10_1();
  v5 = v4;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v7 = *v3;
  OUTLINED_FUNCTION_1_12();
  *v8 = v7;
  v5[26] = v2;

  if (!v2)
  {
    v10 = v5[15];
    v9 = v5[16];
    v11 = v5[13];
    v12 = v5[14];
    v13 = *(v12 + 8);
    v5[27] = v13;
    v5[28] = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v13(v9, v11);
    v13(v10, v11);
  }

  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_25_2();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_26B1B6B1C()
{
  OUTLINED_FUNCTION_10_3();
  v1 = *(v0 + 96);
  v2 = *(v0 + 56);
  (*(v0 + 216))(*(v0 + 136), *(v0 + 104));
  v3 = OUTLINED_FUNCTION_26_0();
  v4(v3);
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v1);

  OUTLINED_FUNCTION_20();

  return v5();
}

uint64_t sub_26B1B6BFC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_10_3();

  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_25_2();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_26B1B6C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_64_0();
  OUTLINED_FUNCTION_35_3();
  v13 = v12[16];
  v14 = v12[15];
  v15 = v12[13];
  v16 = *(v12[14] + 8);
  v16(v12[17], v15);
  v17 = OUTLINED_FUNCTION_26_0();
  v18(v17);
  v16(v13, v15);
  v16(v14, v15);

  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_51_2();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
}

uint64_t SQLExecution.execute<A, each B>(all:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_76();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  *(v12 + 104) = v13;
  *(v12 + 112) = v19;
  *(v12 + 88) = v20;
  *(v12 + 96) = v15;
  *(v12 + 80) = v21;
  *(v12 + 120) = OUTLINED_FUNCTION_31();
  if (v16 == 1)
  {
    TupleTypeMetadata = *(v14 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v23 = OUTLINED_FUNCTION_31();
    for (i = 0; v16 != i; ++i)
    {
      *(v23 + 8 * i) = *((v14 & 0xFFFFFFFFFFFFFFFELL) + 8 * i);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  *(v12 + 128) = TupleTypeMetadata;
  v25 = *(TupleTypeMetadata - 8);
  *(v12 + 136) = v25;
  *(v12 + 144) = *(v25 + 64);
  *(v12 + 152) = swift_task_alloc();
  *(v12 + 160) = swift_task_alloc();
  v26 = swift_task_alloc();
  v27 = *(v18 + 16);
  *(v12 + 16) = *v18;
  *(v12 + 168) = v26;
  OUTLINED_FUNCTION_68(*(v18 + 32), v27);
  OUTLINED_FUNCTION_17_8();
  v40 = v28 + *v28;
  v29 = swift_task_alloc();
  *(v12 + 176) = v29;
  *v29 = v12;
  OUTLINED_FUNCTION_32_5(v29);
  OUTLINED_FUNCTION_105();

  return v36(v30, v31, v32, v33, v34, v35, v36, v37, v40, a10, a11, a12);
}

uint64_t sub_26B1B6FC4()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_17();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 184) = v4;
  *(v2 + 192) = v0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_26B1B70C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_30();
  v10[7] = sub_26B212EC0();
  sub_26B2128F0();
  v13 = sub_26B212E50();

  v10[8] = v13;
  OUTLINED_FUNCTION_16_2();
  if (v13 == sub_26B212EF0())
  {

    OUTLINED_FUNCTION_109();

    OUTLINED_FUNCTION_9_14();
    OUTLINED_FUNCTION_57_0();

    return v16(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
  }

  OUTLINED_FUNCTION_16_2();
  v23 = sub_26B212EE0();
  OUTLINED_FUNCTION_34_0(v23);
  if (v11)
  {
    (*(v10[17] + 16))(v10[21], v10[23] + ((*(v10[17] + 80) + 32) & ~*(v10[17] + 80)) + *(v10[17] + 72) * v13, v10[16]);
LABEL_7:
    OUTLINED_FUNCTION_67_0();
    v10[25] = swift_task_alloc();
    v24 = OUTLINED_FUNCTION_15();
    v25(v24);
    if (v12)
    {
      v26 = 32;
      do
      {
        v27 = v10[12];
        OUTLINED_FUNCTION_62_0();
        v28 = OUTLINED_FUNCTION_104();
        v29(v28);
        OUTLINED_FUNCTION_96();
        v26 += 16;
      }

      while (v27);
    }

    OUTLINED_FUNCTION_2_28();
    a9 = v30;
    swift_task_alloc();
    OUTLINED_FUNCTION_9_2();
    v10[26] = v31;
    *v31 = v32;
    OUTLINED_FUNCTION_36_2(v31);
    OUTLINED_FUNCTION_57_0();

    return v16(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
  }

  v33 = v10[18];
  result = sub_26B213730();
  if (v33 == 8)
  {
    v34 = OUTLINED_FUNCTION_70_0(result);
    v35(v34);
    swift_unknownObjectRelease();
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_26B1B7334()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v6 = v5;
  v3[27] = v0;

  if (v0)
  {
  }

  else
  {
    v8 = v3[19];
    v7 = v3[20];
    v10 = v3 + 16;
    v9 = v3[16];
    v11 = *(v10[1] + 8);
    v11(v7, v9);
    v11(v8, v9);
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_26B1B7478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_30();
  sub_26B212F50();
  sub_26B212F00();
  OUTLINED_FUNCTION_26_0();
  v13 = sub_26B212EF0();
  v14 = v10[8];
  if (v14 == v13)
  {

    OUTLINED_FUNCTION_109();

    OUTLINED_FUNCTION_9_14();
    OUTLINED_FUNCTION_57_0();

    return v17(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
  }

  OUTLINED_FUNCTION_16_2();
  v24 = sub_26B212EE0();
  OUTLINED_FUNCTION_34_0(v24);
  if (v11)
  {
    (*(v10[17] + 16))(v10[21], v10[23] + ((*(v10[17] + 80) + 32) & ~*(v10[17] + 80)) + *(v10[17] + 72) * v14, v10[16]);
LABEL_7:
    OUTLINED_FUNCTION_67_0();
    v10[25] = swift_task_alloc();
    v25 = OUTLINED_FUNCTION_15();
    v26(v25);
    if (v12)
    {
      v27 = 32;
      do
      {
        v28 = v10[12];
        OUTLINED_FUNCTION_62_0();
        v29 = OUTLINED_FUNCTION_104();
        v30(v29);
        OUTLINED_FUNCTION_96();
        v27 += 16;
      }

      while (v28);
    }

    OUTLINED_FUNCTION_2_28();
    a9 = v31;
    swift_task_alloc();
    OUTLINED_FUNCTION_9_2();
    v10[26] = v32;
    *v32 = v33;
    OUTLINED_FUNCTION_36_2(v32);
    OUTLINED_FUNCTION_57_0();

    return v17(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
  }

  v34 = v10[18];
  result = sub_26B213730();
  if (v34 == 8)
  {
    v35 = OUTLINED_FUNCTION_70_0(result);
    v36(v35);
    swift_unknownObjectRelease();
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_26B1B76E4()
{
  OUTLINED_FUNCTION_12();

  OUTLINED_FUNCTION_10_0();

  return v0();
}

uint64_t sub_26B1B7768(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_10_3();
  v3 = *(v2[17] + 8);
  (v3)(v2[20], v2[16]);
  v4 = OUTLINED_FUNCTION_26_0();
  v3(v4);

  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_25_2();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t SQLExecution.results<A, each B>(for:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_35_3();
  v22 = *(v21 + 16);
  *(v20 + 64) = *v21;
  *(v20 + 152) = v23;
  *(v20 + 160) = a19;
  *(v20 + 168) = a20;
  *(v20 + 136) = v24;
  *(v20 + 144) = v25;
  *(v20 + 120) = v26;
  *(v20 + 128) = v27;
  *(v20 + 104) = v28;
  *(v20 + 112) = v29;
  v30 = *(v21 + 32);
  *(v20 + 80) = v22;
  *(v20 + 96) = v30;
  OUTLINED_FUNCTION_17_8();
  v44 = v31 + *v31;
  swift_task_alloc();
  OUTLINED_FUNCTION_9_2();
  *(v20 + 176) = v32;
  *v32 = v33;
  OUTLINED_FUNCTION_100(v32);
  OUTLINED_FUNCTION_71_0();
  OUTLINED_FUNCTION_91();

  return v41(v34, v35, v36, v37, v38, v39, v40, v41, v44, a10);
}

uint64_t sub_26B1B795C()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_17();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v5 = v4;
  *(v6 + 184) = v0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26B1B7A54()
{
  v15 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 120);
  v3 = *(v0 + 128);
  v4 = *(v0 + 104);
  v5 = *(v0 + 112);
  v6 = *(v0 + 56);
  v11 = *(v0 + 16);
  v12 = *(v0 + 24);
  v13 = *(v0 + 40);
  v14 = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = v1;
  v10 = *(v0 + 152);
  OUTLINED_FUNCTION_16_2();
  *(v7 + 32) = swift_allocateMetadataPack();
  *(v7 + 40) = v10;
  *(v7 + 56) = swift_allocateWitnessTablePack();
  *(v7 + 64) = v5;
  *(v7 + 72) = v2;
  sub_26B1C9B7C(&v11, &unk_26B219FB8, v7, v4);

  OUTLINED_FUNCTION_20();

  return v8();
}

uint64_t sub_26B1B7BA8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a5;
  v7[6] = a7;
  v7[3] = a3;
  v7[4] = a4;
  v7[2] = a1;
  if (a5 == 1)
  {
    TupleTypeMetadata = *(a7 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v12 = swift_task_alloc();
    for (i = 0; a5 != i; ++i)
    {
      *(v12 + 8 * i) = *((a7 & 0xFFFFFFFFFFFFFFFELL) + 8 * i);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v7[7] = TupleTypeMetadata;
  v7[8] = *(TupleTypeMetadata - 8);
  v7[9] = swift_task_alloc();
  v7[10] = swift_task_alloc();
  v14 = swift_task_alloc();
  v7[11] = v14;
  if (a5)
  {
    v15 = v14;
    v16 = (a7 & 0xFFFFFFFFFFFFFFFELL);
    v17 = (TupleTypeMetadata + 32);
    v18 = a5;
    do
    {
      if (a5 == 1)
      {
        v19 = 0;
      }

      else
      {
        v19 = *v17;
      }

      v21 = *v16++;
      v20 = v21;
      v22 = *a2++;
      (*(*(v20 - 8) + 16))(v15 + v19, v22);
      v17 += 4;
      --v18;
    }

    while (v18);
  }

  return MEMORY[0x2822009F8](sub_26B1B7D78, 0, 0);
}

uint64_t sub_26B1B7D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_30();
  v10 = v9[5];
  v9[12] = OUTLINED_FUNCTION_31();
  v11 = OUTLINED_FUNCTION_15();
  v12(v11);
  if (v10)
  {
    v13 = 32;
    do
    {
      v14 = v9[5];
      OUTLINED_FUNCTION_62_0();
      v15 = OUTLINED_FUNCTION_104();
      v16(v15);
      OUTLINED_FUNCTION_96();
      v13 += 16;
    }

    while (v14);
  }

  OUTLINED_FUNCTION_2_28();
  v29 = v17;
  swift_task_alloc();
  OUTLINED_FUNCTION_9_2();
  v9[13] = v18;
  *v18 = v19;
  v18[1] = sub_26B1B7EEC;
  OUTLINED_FUNCTION_111();

  return v22(v20, v21, v22, v23, v24, v25, v26, v27, a9, v29);
}

uint64_t sub_26B1B7EEC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_10_1();
  v5 = v4;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v7 = *v3;
  OUTLINED_FUNCTION_1_12();
  *v8 = v7;
  v5[14] = v2;

  if (!v2)
  {
    v10 = v5[9];
    v9 = v5[10];
    v11 = v5[7];
    v12 = v5[8];
    v13 = *(v12 + 8);
    v5[15] = v13;
    v5[16] = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v13(v9, v11);
    v13(v10, v11);
  }

  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_25_2();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_26B1B8028()
{
  OUTLINED_FUNCTION_12();
  (*(v0 + 120))(*(v0 + 88), *(v0 + 56));

  OUTLINED_FUNCTION_20();

  return v1();
}

uint64_t sub_26B1B80B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_30();
  v11 = v10[11];
  v12 = v10[9];
  v13 = v10[7];
  v14 = *(v10[8] + 8);
  v14(v10[10], v13);
  v14(v12, v13);
  v14(v11, v13);

  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_57_0();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t SQLExecution.execute<A>(once:of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_35_3();
  OUTLINED_FUNCTION_50_2(v13, v14, v15, v16, v17, v18);
  OUTLINED_FUNCTION_19_8();
  v32 = v19 + *v19;
  swift_task_alloc();
  OUTLINED_FUNCTION_9_2();
  *(v12 + 56) = v20;
  *v20 = v21;
  OUTLINED_FUNCTION_55_0(v20);
  OUTLINED_FUNCTION_78();

  return v29(v22, v23, v24, v25, v26, v27, v28, v29, a9, v32, a11, a12);
}

uint64_t sub_26B1B8274()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_17();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v5 = v4;
  *(v6 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_33();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_10_0();

    return v10();
  }
}

uint64_t SQLExecution.execute<A>(all:of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_35_3();
  OUTLINED_FUNCTION_83();
  v14 = *(v13 + 16);
  *(v12 + 16) = *v13;
  OUTLINED_FUNCTION_68(*(v13 + 32), v14);
  OUTLINED_FUNCTION_17_8();
  v27 = v15 + *v15;
  v16 = swift_task_alloc();
  *(v12 + 56) = v16;
  *v16 = v12;
  OUTLINED_FUNCTION_32_5(v16);
  OUTLINED_FUNCTION_91();

  return v23(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, v27, a12);
}

uint64_t sub_26B1B84D4()
{
  OUTLINED_FUNCTION_25();
  v3 = v2;
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_17();
  *v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v7 = v6;
  *(v8 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_33();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_9_14();

    return v12(v3);
  }
}

uint64_t SQLExecution.results<A>(for:of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_35_3();
  OUTLINED_FUNCTION_50_2(v13, v14, v15, v16, v17, v18);
  OUTLINED_FUNCTION_19_8();
  v32 = v19 + *v19;
  swift_task_alloc();
  OUTLINED_FUNCTION_9_2();
  *(v12 + 56) = v20;
  *v20 = v21;
  OUTLINED_FUNCTION_55_0(v20);
  OUTLINED_FUNCTION_78();

  return v29(v22, v23, v24, v25, v26, v27, v28, v29, a9, v32, a11, a12);
}

uint64_t sub_26B1B86E4()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_17();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v5 = v4;
  *(v6 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_33();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_10_0();

    return v10();
  }
}

uint64_t SQLDatabase.Transaction.execute(_:)(uint64_t a1)
{
  *(v2 + 56) = v1;
  v3 = *(a1 + 16);
  *(v2 + 64) = *a1;
  *(v2 + 80) = v3;
  *(v2 + 49) = *(a1 + 32);
  return OUTLINED_FUNCTION_2_13(sub_26B1B8824, v1);
}

uint64_t sub_26B1B8824()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 49);
  *(v0 + 96) = *(*(v0 + 56) + 128);
  v2 = *(v0 + 80);
  *(v0 + 16) = *(v0 + 64);
  OUTLINED_FUNCTION_68(v1, v2);

  v3 = swift_task_alloc();
  *(v0 + 104) = v3;
  *v3 = v0;
  OUTLINED_FUNCTION_32_5(v3);

  return sub_26B1B3E68();
}

uint64_t sub_26B1B88E0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v6 = v5;
  *(v3 + 112) = v0;

  if (v0)
  {
    v7 = *(v3 + 56);

    return MEMORY[0x2822009F8](sub_26B1B8A20, v7, 0);
  }

  else
  {
    OUTLINED_FUNCTION_10_0();

    return v8();
  }
}

uint64_t SQLDatabase.Transaction.results(dynamicValues:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = *(a2 + 16);
  *(v3 + 32) = *a2;
  *(v3 + 48) = v4;
  *(v3 + 64) = *(a2 + 32);
  return OUTLINED_FUNCTION_2_13(sub_26B1B8A70, v2);
}

uint64_t sub_26B1B8A70(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_10_3();
  v3 = *(v2 + 64);
  v5 = *(v2 + 48);
  v4 = *(v2 + 56);
  v7 = *(v2 + 32);
  v6 = *(v2 + 40);
  v8 = *(v2 + 16);
  *v8 = *(*(v2 + 24) + 128);
  *(v8 + 8) = v7;
  *(v8 + 16) = v6;
  *(v8 + 24) = v5;
  *(v8 + 32) = v4;
  *(v8 + 40) = v3;

  v9 = OUTLINED_FUNCTION_4_23();
  sub_26B1A8558(v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_25_2();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t sub_26B1B8B24(uint64_t a1)
{
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_89(*(v1 + 16), v9, v10, v11, v12, v13, v14);

  v2 = OUTLINED_FUNCTION_4_23();
  sub_26B1A8558(v2, v3, v4, v5, v6);
  OUTLINED_FUNCTION_20();

  return v7();
}

uint64_t sub_26B1B8BBC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26B178E9C;

  return SQLDatabase.Transaction.execute(_:)(a1);
}

uint64_t sub_26B1B8C54(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v2;
  *(v1 + 48) = *(a1 + 32);
  v3 = swift_task_alloc();
  *(v1 + 56) = v3;
  *v3 = v1;
  v3[1] = sub_26B1BD36C;

  return sub_26B1B41D4(v1 + 16);
}

uint64_t sub_26B1B8D10(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v2;
  *(v1 + 48) = *(a1 + 32);
  v3 = swift_task_alloc();
  *(v1 + 56) = v3;
  *v3 = v1;
  v3[1] = sub_26B1BD36C;

  return sub_26B1B4CA0(v1 + 16);
}

uint64_t sub_26B1B8DCC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26B178E9C;

  return SQLDatabase.Transaction.results(dynamicValues:)(a1, a2);
}

uint64_t sub_26B1B8E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_26B178E9C;

  return SQLDatabase.Transaction.results<each A>(for:)(a1, a2, a3, a4, a5);
}

uint64_t SQLDatabase.execute(_:)(uint64_t a1)
{
  *(v2 + 56) = v1;
  v3 = *(a1 + 16);
  *(v2 + 64) = *a1;
  *(v2 + 80) = v3;
  *(v2 + 49) = *(a1 + 32);
  return OUTLINED_FUNCTION_2_13(sub_26B1B8F70, v1);
}

void sub_26B1B8F70()
{
  v1 = *(*(v0 + 56) + OBJC_IVAR____TtC15SonicFoundation11SQLDatabase_connection);
  *(v0 + 96) = v1;
  if (v1)
  {
    OUTLINED_FUNCTION_12();
    v2 = *(v0 + 49);
    v3 = *(v0 + 80);
    *(v0 + 16) = *(v0 + 64);
    OUTLINED_FUNCTION_68(v2, v3);

    v4 = swift_task_alloc();
    *(v0 + 104) = v4;
    *v4 = v0;
    OUTLINED_FUNCTION_32_5(v4);

    sub_26B1B3E68();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_26B1B9040()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v6 = v5;
  *(v3 + 112) = v0;

  if (v0)
  {
    v7 = *(v3 + 56);

    return MEMORY[0x2822009F8](sub_26B1BD354, v7, 0);
  }

  else
  {
    OUTLINED_FUNCTION_10_0();

    return v8();
  }
}

void sub_26B1B91AC(uint64_t result)
{
  v2 = *(*(v1 + 48) + OBJC_IVAR____TtC15SonicFoundation11SQLDatabase_connection);
  if (v2)
  {
    OUTLINED_FUNCTION_76();
    v16 = v1;
    v3 = *(v1 + 88);
    v5 = *(v1 + 72);
    v4 = *(v1 + 80);
    v6 = *(v1 + 64);
    v7 = *(v1 + 16);
    v14[0] = *(v1 + 56);
    v14[1] = v6;
    v14[2] = v5;
    v14[3] = v4;
    v15 = v3;
    sub_26B1C9BA4(v2, v14, v7);

    v8 = OUTLINED_FUNCTION_39_2();
    sub_26B1A8558(v8, v9, v10, v11, v12);
    OUTLINED_FUNCTION_20();

    v13();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_26B1B926C()
{
  OUTLINED_FUNCTION_25();
  v1 = v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_56_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_32_5(v3);

  return SQLDatabase.execute(_:)(v1);
}

uint64_t sub_26B1B92F8(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v2;
  *(v1 + 48) = *(a1 + 32);
  v3 = swift_task_alloc();
  *(v1 + 56) = v3;
  *v3 = v1;
  v3[1] = sub_26B1BD36C;

  return sub_26B1B4584(v1 + 16);
}

uint64_t sub_26B1B93B4(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v2;
  *(v1 + 48) = *(a1 + 32);
  v3 = swift_task_alloc();
  *(v1 + 56) = v3;
  *v3 = v1;
  v3[1] = sub_26B1BD36C;

  return sub_26B1B4FD0(v1 + 16);
}

uint64_t sub_26B1B9470(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26B178E9C;

  return SQLDatabase.results(dynamicValues:)(a1, a2);
}

uint64_t sub_26B1B951C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_26B178E9C;

  return SQLDatabase.results<each A>(for:)(a1, a2, a3, a4, a5);
}

uint64_t sub_26B1B95E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 96) = a2;
  *(v3 + 104) = a3;
  return MEMORY[0x2822009F8](sub_26B1B9604, a2, 0);
}

const char *sub_26B1B9604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_92();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_35_3();
  a18 = v20;
  do
  {
    do
    {
      v23 = sub_26B1CFF78();
      sub_26B1E26EC(v23, &a10);
    }

    while (BYTE4(a10) == 1);
  }

  while (BYTE4(a10) == 14 && a10 == 16);
  v25 = *(v20 + 96);
  swift_beginAccess();
  v26 = sqlite3_extended_errcode(*(v25 + 136));
  result = sqlite3_errstr(v23);
  if (!result)
  {
    __break(1u);
    goto LABEL_17;
  }

  v28 = sub_26B212C20();
  v30 = v29;
  result = sqlite3_errmsg(*(v25 + 136));
  if (!result)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v31 = sub_26B212C20();
  v33 = v32;
  sub_26B1AFA88();
  v34 = swift_allocError();
  v36 = v35;
  *v35 = v26;
  sub_26B1E26EC(v26, &a10);
  v37 = BYTE4(a10);
  v36[1] = a10;
  *(v36 + 8) = v37;
  *(v36 + 2) = v28;
  *(v36 + 3) = v30;
  *(v36 + 4) = v31;
  *(v36 + 5) = v33;
  swift_willThrow();
  *(v20 + 88) = v34;
  v38 = v34;
  sub_26B162128();
  if (swift_dynamicCast() && (v39 = *(v20 + 20), v40 = *(v20 + 24), , , LODWORD(a9) = v39, BYTE4(a9) = v40, LODWORD(a10) = 17, BYTE4(a10) = 14, (static SQLError.Code.== infix(_:_:)(&a9, &a10) & 1) != 0))
  {

    OUTLINED_FUNCTION_20();
  }

  else
  {

    OUTLINED_FUNCTION_10_0();
  }

  OUTLINED_FUNCTION_91();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12);
}

uint64_t sub_26B1B97E4(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = *(a2 + 16);
  *(v3 + 32) = *a2;
  *(v3 + 48) = v4;
  *(v3 + 64) = *(a2 + 32);
  return OUTLINED_FUNCTION_2_13(sub_26B1B9810, v2);
}

uint64_t sub_26B1B9810()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 16);
  *v6 = *(v0 + 24);
  *(v6 + 8) = v4;
  *(v6 + 16) = v5;
  *(v6 + 24) = v2;
  *(v6 + 32) = v3;
  *(v6 + 40) = v1;
  sub_26B1A8558(v4, v5, v2, v3, v1);
  OUTLINED_FUNCTION_10_0();
  v9 = v7;

  return v9();
}

uint64_t sub_26B1B98C4(uint64_t a1)
{
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_89(*(v1 + 16), v9, v10, v11, v12, v13, v14);

  v2 = OUTLINED_FUNCTION_4_23();
  sub_26B1A8558(v2, v3, v4, v5, v6);
  OUTLINED_FUNCTION_20();

  return v7();
}

uint64_t sub_26B1B9958()
{
  OUTLINED_FUNCTION_25();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_56_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_32_5(v1);

  return sub_26B1B3E68();
}

uint64_t sub_26B1B99E4(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v2;
  *(v1 + 48) = *(a1 + 32);
  v3 = swift_task_alloc();
  *(v1 + 56) = v3;
  *v3 = v1;
  v3[1] = sub_26B1BD36C;

  return sub_26B1B462C(v1 + 16);
}

uint64_t sub_26B1B9AA0(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v2;
  *(v1 + 48) = *(a1 + 32);
  v3 = swift_task_alloc();
  *(v1 + 56) = v3;
  *v3 = v1;
  v3[1] = sub_26B1B9B5C;

  return sub_26B1B5078(v1 + 16);
}

uint64_t sub_26B1B9B5C()
{
  OUTLINED_FUNCTION_25();
  v3 = v2;
  OUTLINED_FUNCTION_10_1();
  v4 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v5 = v4;

  OUTLINED_FUNCTION_9_14();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_26B1B9C48(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26B178E9C;

  return sub_26B1B97E4(a1, a2);
}

uint64_t sub_26B1B9CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v23 = swift_task_alloc();
  *(v14 + 16) = v23;
  *v23 = v14;
  v23[1] = sub_26B1760A8;

  return SQLExecution.execute<A>(once:)(a1, a2, a3, a6, a4, a7, a5, v22, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_26B1B9DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v19 = swift_task_alloc();
  *(v12 + 16) = v19;
  *v19 = v12;
  v19[1] = sub_26B1B9EA8;

  return SQLExecution.execute<A>(all:)(a1, a2, a5, a3, a6, a4, v20, v21, a9, a10, a11, a12);
}

uint64_t sub_26B1B9EA8()
{
  OUTLINED_FUNCTION_25();
  v3 = v2;
  OUTLINED_FUNCTION_10_1();
  v4 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v5 = v4;

  OUTLINED_FUNCTION_9_14();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_26B1B9F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_26B178E9C;

  return sub_26B1B9898(a1, a2, a3, a4, a5);
}

uint64_t sub_26B1BA060@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
  *(a1 + 24) = *(v1 + 24);
  *(a1 + 40) = v2;
  *(a1 + 48) = sub_26B1BC924;
  *(a1 + 56) = 0;
  return sub_26B1B384C(v1, &v4);
}

uint64_t sub_26B1BA0D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_1_27();
  if (v11)
  {
    if (v11 == 1)
    {
      OUTLINED_FUNCTION_26_9();

      v12 = swift_task_alloc();
      v13 = OUTLINED_FUNCTION_80(v12);
      *v13 = v14;
      OUTLINED_FUNCTION_8_20(v13);
      OUTLINED_FUNCTION_57_0();

      return v18(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
    }

    else
    {
      OUTLINED_FUNCTION_9_14();
      OUTLINED_FUNCTION_57_0();

      return v30(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_14(v10);
    OUTLINED_FUNCTION_25_6();
    v24 = swift_task_alloc();
    v25 = OUTLINED_FUNCTION_81(v24);
    *v25 = v26;
    OUTLINED_FUNCTION_32_5(v25);
    OUTLINED_FUNCTION_57_0();

    return sub_26B1D0334();
  }
}

uint64_t sub_26B1BA224()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  *v4 = *v1;
  OUTLINED_FUNCTION_94(v5);
  if (!v0)
  {
    OUTLINED_FUNCTION_46_2();
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26B1BA320()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_15_7();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_1_12();
  *v7 = v6;
  *(v4 + 192) = v0;

  if (!v0)
  {
    *(v4 + 224) = v1;
  }

  OUTLINED_FUNCTION_12_14();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_26B1BA4C8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_15_7();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_1_12();
  *v7 = v6;
  *(v4 + 208) = v0;

  if (!v0)
  {
    *(v4 + 216) = v1;
  }

  OUTLINED_FUNCTION_12_14();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_26B1BA5CC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_53_0();
  v3 = OUTLINED_FUNCTION_22_9();
  sub_26B1A85A8(v3, v4, v5, v2, v6);
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_25_2();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_26B1BA638()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_77();

  OUTLINED_FUNCTION_9_14();

  return v0();
}

uint64_t sub_26B1BA69C()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_77();

  OUTLINED_FUNCTION_60_0();

  return v0();
}

uint64_t sub_26B1BA6F8()
{
  OUTLINED_FUNCTION_25();

  OUTLINED_FUNCTION_9_14();

  return v0();
}

uint64_t sub_26B1BA760()
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_41_2();
  sub_26B162128();
  OUTLINED_FUNCTION_9();
  if (swift_dynamicCast() & 1) != 0 && (OUTLINED_FUNCTION_44_2(), v1 = , (OUTLINED_FUNCTION_10_13(v1, v2, v3, v4, v5, v6, v7, v8, v13, *v14, v14[4], *v15, v15[4])))
  {
    OUTLINED_FUNCTION_93();
    OUTLINED_FUNCTION_42_1();
    sub_26B2128F0();
    v9 = OUTLINED_FUNCTION_9();

    return MEMORY[0x2822009F8](v9, v10, 0);
  }

  else
  {

    OUTLINED_FUNCTION_43_2();

    return v11();
  }
}

uint64_t sub_26B1BA854()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_88();
  *(v1 + 248) = v0;
  if (!v0)
  {
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_26B1BA8D8()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_110();

  OUTLINED_FUNCTION_52_1();
  OUTLINED_FUNCTION_27_7();
  OUTLINED_FUNCTION_9_14();

  return v0(0);
}

uint64_t sub_26B1BA944()
{
  OUTLINED_FUNCTION_25();

  OUTLINED_FUNCTION_10_0();

  return v1();
}

uint64_t sub_26B1BA9D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_1_27();
  if (v11)
  {
    if (v11 == 1)
    {
      OUTLINED_FUNCTION_26_9();

      v12 = swift_task_alloc();
      v13 = OUTLINED_FUNCTION_80(v12);
      *v13 = v14;
      OUTLINED_FUNCTION_8_20(v13);
      OUTLINED_FUNCTION_57_0();

      return v18(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
    }

    else
    {
      OUTLINED_FUNCTION_9_14();
      OUTLINED_FUNCTION_57_0();

      return v30(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_14(v10);
    OUTLINED_FUNCTION_25_6();
    v24 = swift_task_alloc();
    v25 = OUTLINED_FUNCTION_81(v24);
    *v25 = v26;
    OUTLINED_FUNCTION_32_5(v25);
    OUTLINED_FUNCTION_57_0();

    return sub_26B1D0334();
  }
}

uint64_t sub_26B1BAB24()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  *v4 = *v1;
  OUTLINED_FUNCTION_94(v5);
  if (!v0)
  {
    OUTLINED_FUNCTION_46_2();
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26B1BAC20()
{
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_10_1();
  v5 = v4;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v8 = v7;
  *(v5 + 192) = v0;

  if (!v0)
  {
    *(v5 + 99) = v3;
  }

  OUTLINED_FUNCTION_12_14();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26B1BADCC()
{
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_10_1();
  v5 = v4;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v8 = v7;
  *(v5 + 208) = v0;

  if (!v0)
  {
    *(v5 + 98) = v3;
  }

  OUTLINED_FUNCTION_12_14();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26B1BAED4()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_77();

  OUTLINED_FUNCTION_9_14();
  v2 = *(v0 + 98);

  return v1(v2);
}

uint64_t sub_26B1BAF38()
{
  OUTLINED_FUNCTION_25();

  OUTLINED_FUNCTION_9_14();
  v2 = *(v0 + 99);

  return v1(v2);
}

uint64_t sub_26B1BAFA0()
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_41_2();
  sub_26B162128();
  OUTLINED_FUNCTION_9();
  if (swift_dynamicCast() & 1) != 0 && (OUTLINED_FUNCTION_44_2(), v2 = , (OUTLINED_FUNCTION_10_13(v2, v3, v4, v5, v6, v7, v8, v9, v14, *v15, v15[4], *v16, v16[4])))
  {
    OUTLINED_FUNCTION_93();
    *(v1 + 216) = *(v0 + 16);
    *(v1 + 224) = *(v0 + 24);
    sub_26B2128F0();
    v10 = OUTLINED_FUNCTION_9();

    return MEMORY[0x2822009F8](v10, v11, 0);
  }

  else
  {

    OUTLINED_FUNCTION_43_2();

    return v12();
  }
}

uint64_t sub_26B1BB0A4()
{
  OUTLINED_FUNCTION_12();
  sub_26B1D1ADC(v0[27], v0[28]);
  v0[29] = 0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_26B1BB134()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_110();

  OUTLINED_FUNCTION_52_1();
  OUTLINED_FUNCTION_27_7();
  OUTLINED_FUNCTION_9_14();

  return v0(2);
}

uint64_t sub_26B1BB1A0()
{
  OUTLINED_FUNCTION_25();

  OUTLINED_FUNCTION_10_0();

  return v1();
}

uint64_t sub_26B1BB234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_1_27();
  if (v11)
  {
    if (v11 == 1)
    {
      OUTLINED_FUNCTION_26_9();

      v12 = swift_task_alloc();
      v13 = OUTLINED_FUNCTION_80(v12);
      *v13 = v14;
      OUTLINED_FUNCTION_8_20(v13);
      OUTLINED_FUNCTION_57_0();
    }

    else
    {
      OUTLINED_FUNCTION_47_2();
      OUTLINED_FUNCTION_57_0();
    }

    return v18(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
  }

  else
  {
    OUTLINED_FUNCTION_7_14(v10);
    OUTLINED_FUNCTION_25_6();
    v23 = swift_task_alloc();
    v24 = OUTLINED_FUNCTION_81(v23);
    *v24 = v25;
    OUTLINED_FUNCTION_32_5(v24);
    OUTLINED_FUNCTION_57_0();

    return sub_26B1D0334();
  }
}

uint64_t sub_26B1BB378()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  *v4 = *v1;
  OUTLINED_FUNCTION_94(v5);
  if (!v0)
  {
    OUTLINED_FUNCTION_46_2();
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26B1BB474(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_10_3();
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_10_1();
  v9 = v8;
  OUTLINED_FUNCTION_6();
  *v10 = v9;
  v11 = *v3;
  OUTLINED_FUNCTION_1_12();
  *v12 = v11;
  *(v9 + 192) = v2;

  if (!v2)
  {
    *(v9 + 99) = v5;
    *(v9 + 224) = v7;
  }

  OUTLINED_FUNCTION_48_2();
  OUTLINED_FUNCTION_25_2();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_26B1BB628(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_10_3();
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_10_1();
  v9 = v8;
  OUTLINED_FUNCTION_6();
  *v10 = v9;
  v11 = *v3;
  OUTLINED_FUNCTION_1_12();
  *v12 = v11;
  *(v9 + 208) = v2;

  if (!v2)
  {
    *(v9 + 98) = v5;
    *(v9 + 216) = v7;
  }

  OUTLINED_FUNCTION_48_2();
  OUTLINED_FUNCTION_25_2();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_26B1BB738()
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_41_2();
  sub_26B162128();
  OUTLINED_FUNCTION_9();
  if (swift_dynamicCast() & 1) != 0 && (OUTLINED_FUNCTION_44_2(), v1 = , (OUTLINED_FUNCTION_10_13(v1, v2, v3, v4, v5, v6, v7, v8, v13, *v14, v14[4], *v15, v15[4])))
  {
    OUTLINED_FUNCTION_93();
    OUTLINED_FUNCTION_42_1();
    sub_26B2128F0();
    v9 = OUTLINED_FUNCTION_9();

    return MEMORY[0x2822009F8](v9, v10, 0);
  }

  else
  {

    OUTLINED_FUNCTION_43_2();

    return v11();
  }
}

uint64_t sub_26B1BB82C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_88();
  *(v1 + 248) = v0;
  if (!v0)
  {
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_26B1BB8CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_1_27();
  if (v11)
  {
    if (v11 == 1)
    {
      OUTLINED_FUNCTION_26_9();

      v12 = swift_task_alloc();
      v13 = OUTLINED_FUNCTION_80(v12);
      *v13 = v14;
      OUTLINED_FUNCTION_8_20(v13);
      OUTLINED_FUNCTION_57_0();
    }

    else
    {
      OUTLINED_FUNCTION_47_2();
      OUTLINED_FUNCTION_57_0();
    }

    return v18(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
  }

  else
  {
    OUTLINED_FUNCTION_7_14(v10);
    OUTLINED_FUNCTION_25_6();
    v23 = swift_task_alloc();
    v24 = OUTLINED_FUNCTION_81(v23);
    *v24 = v25;
    OUTLINED_FUNCTION_32_5(v24);
    OUTLINED_FUNCTION_57_0();

    return sub_26B1D0334();
  }
}

uint64_t sub_26B1BBA10()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  *v4 = *v1;
  OUTLINED_FUNCTION_94(v5);
  if (!v0)
  {
    OUTLINED_FUNCTION_46_2();
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26B1BBB0C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_10_3();
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_10_1();
  v9 = v8;
  OUTLINED_FUNCTION_6();
  *v10 = v9;
  v11 = *v3;
  OUTLINED_FUNCTION_1_12();
  *v12 = v11;
  *(v9 + 192) = v2;

  if (!v2)
  {
    *(v9 + 99) = v5;
    *(v9 + 224) = v7;
  }

  OUTLINED_FUNCTION_48_2();
  OUTLINED_FUNCTION_25_2();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_26B1BBCC0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_10_3();
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_10_1();
  v9 = v8;
  OUTLINED_FUNCTION_6();
  *v10 = v9;
  v11 = *v3;
  OUTLINED_FUNCTION_1_12();
  *v12 = v11;
  *(v9 + 208) = v2;

  if (!v2)
  {
    *(v9 + 98) = v5;
    *(v9 + 216) = v7;
  }

  OUTLINED_FUNCTION_48_2();
  OUTLINED_FUNCTION_25_2();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_26B1BBDD0()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_77();

  OUTLINED_FUNCTION_101();

  return v0();
}

uint64_t sub_26B1BBE34()
{
  OUTLINED_FUNCTION_25();

  OUTLINED_FUNCTION_101();

  return v0();
}

uint64_t sub_26B1BBE9C()
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_41_2();
  sub_26B162128();
  OUTLINED_FUNCTION_9();
  if (swift_dynamicCast() & 1) != 0 && (OUTLINED_FUNCTION_44_2(), v1 = , (OUTLINED_FUNCTION_10_13(v1, v2, v3, v4, v5, v6, v7, v8, v13, *v14, v14[4], *v15, v15[4])))
  {
    OUTLINED_FUNCTION_93();
    OUTLINED_FUNCTION_42_1();
    sub_26B2128F0();
    v9 = OUTLINED_FUNCTION_9();

    return MEMORY[0x2822009F8](v9, v10, 0);
  }

  else
  {

    OUTLINED_FUNCTION_43_2();

    return v11();
  }
}

uint64_t sub_26B1BBF90()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_88();
  *(v1 + 248) = v0;
  if (!v0)
  {
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_26B1BC014()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_110();

  OUTLINED_FUNCTION_52_1();
  OUTLINED_FUNCTION_27_7();
  v0 = OUTLINED_FUNCTION_47_2();

  return v1(v0);
}

uint64_t sub_26B1BC094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_1_27();
  if (v11)
  {
    if (v11 == 1)
    {
      OUTLINED_FUNCTION_26_9();

      v12 = swift_task_alloc();
      v13 = OUTLINED_FUNCTION_80(v12);
      *v13 = v14;
      OUTLINED_FUNCTION_8_20(v13);
      OUTLINED_FUNCTION_57_0();

      return v18(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
    }

    else
    {
      OUTLINED_FUNCTION_97();
      OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_57_0();

      return v33(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_14(v10);
    OUTLINED_FUNCTION_25_6();
    v24 = swift_task_alloc();
    v25 = OUTLINED_FUNCTION_81(v24);
    *v25 = v26;
    OUTLINED_FUNCTION_32_5(v25);
    OUTLINED_FUNCTION_57_0();

    return sub_26B1D0334();
  }
}

uint64_t sub_26B1BC1E8()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  *v4 = *v1;
  OUTLINED_FUNCTION_94(v5);
  if (!v0)
  {
    OUTLINED_FUNCTION_46_2();
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26B1BC2E4(uint64_t a1)
{
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_30();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  OUTLINED_FUNCTION_10_1();
  v12 = v11;
  OUTLINED_FUNCTION_6();
  *v13 = v12;
  v14 = *v2;
  OUTLINED_FUNCTION_1_12();
  *v15 = v14;
  *(v12 + 192) = v1;

  if (!v1)
  {
    *(v12 + 99) = v4;
    *(v12 + 240) = v6;
    *(v12 + 248) = v8;
    *(v12 + 256) = v10;
  }

  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_57_0();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_26B1BC4A8(uint64_t a1)
{
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_30();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  OUTLINED_FUNCTION_10_1();
  v12 = v11;
  OUTLINED_FUNCTION_6();
  *v13 = v12;
  v14 = *v2;
  OUTLINED_FUNCTION_1_12();
  *v15 = v14;
  *(v12 + 208) = v1;

  if (!v1)
  {
    *(v12 + 98) = v4;
    *(v12 + 216) = v6;
    *(v12 + 224) = v8;
    *(v12 + 232) = v10;
  }

  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_57_0();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_26B1BC5C8()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_77();

  OUTLINED_FUNCTION_97();

  return v0();
}

uint64_t sub_26B1BC634()
{
  OUTLINED_FUNCTION_25();

  OUTLINED_FUNCTION_97();

  return v0();
}

uint64_t sub_26B1BC6A4()
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_41_2();
  sub_26B162128();
  OUTLINED_FUNCTION_9();
  if (swift_dynamicCast() & 1) != 0 && (OUTLINED_FUNCTION_44_2(), v2 = , (OUTLINED_FUNCTION_10_13(v2, v3, v4, v5, v6, v7, v8, v9, v14, *v15, v15[4], *v16, v16[4])))
  {
    OUTLINED_FUNCTION_93();
    *(v1 + 264) = *(v0 + 16);
    *(v1 + 272) = *(v0 + 24);
    sub_26B2128F0();
    v10 = OUTLINED_FUNCTION_9();

    return MEMORY[0x2822009F8](v10, v11, 0);
  }

  else
  {

    OUTLINED_FUNCTION_43_2();

    return v12();
  }
}

uint64_t sub_26B1BC7A8()
{
  OUTLINED_FUNCTION_12();
  sub_26B1D1ADC(v0[33], v0[34]);
  v0[35] = 0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_26B1BC838()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_110();

  OUTLINED_FUNCTION_52_1();
  OUTLINED_FUNCTION_27_7();
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_33();

  return v0();
}

uint64_t sub_26B1BC8AC()
{
  OUTLINED_FUNCTION_25();

  OUTLINED_FUNCTION_10_0();

  return v1();
}

uint64_t sub_26B1BC924@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_26B1FB520(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_26B1BC950(uint64_t a1)
{
  sub_26B1B3908(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26B1BC9AC(uint64_t a1)
{
  OUTLINED_FUNCTION_35_3();
  swift_task_alloc();
  OUTLINED_FUNCTION_9_2();
  *(v1 + 16) = v2;
  *v2 = v3;
  v2[1] = sub_26B178E9C;
  OUTLINED_FUNCTION_51_2();

  return sub_26B1B7BA8(v4, v5, v6, v7, v8, v9, v10);
}

uint64_t dispatch thunk of SQLExecution.execute(_:)()
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_61_0(v0, v1, v2);
  OUTLINED_FUNCTION_19_8();
  v9 = (v3 + *v3);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_56_0(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_32_5(v5);
  v7 = OUTLINED_FUNCTION_22_9();

  return v9(v7);
}

uint64_t dispatch thunk of SQLExecution.execute(dynamicOnce:)()
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_61_0(v0, v1, v2);
  OUTLINED_FUNCTION_19_8();
  v9 = (v3 + *v3);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_56_0(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_32_5(v5);
  v7 = OUTLINED_FUNCTION_22_9();

  return v9(v7);
}

uint64_t dispatch thunk of SQLExecution.execute(dynamicAll:)()
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_61_0(v0, v1, v2);
  OUTLINED_FUNCTION_19_8();
  v9 = (v3 + *v3);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_56_0(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_32_5(v5);
  v7 = OUTLINED_FUNCTION_22_9();

  return v9(v7);
}

uint64_t sub_26B1BCD88()
{
  OUTLINED_FUNCTION_25();
  v2 = v1;
  OUTLINED_FUNCTION_10_1();
  v3 = *v0;
  OUTLINED_FUNCTION_1_12();
  *v4 = v3;

  OUTLINED_FUNCTION_9_14();

  return v5(v2);
}

void dispatch thunk of SQLExecution.results(dynamicValues:)()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_17_8();
  swift_task_alloc();
  OUTLINED_FUNCTION_9_2();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_26B178E9C;
  OUTLINED_FUNCTION_95();
  OUTLINED_FUNCTION_111();

  __asm { BRAA            X4, X16 }
}

uint64_t dispatch thunk of SQLExecution.execute<A>(once:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_35_3();
  OUTLINED_FUNCTION_65_0(v13, v14, v15, v16, v17, v18, v19);
  OUTLINED_FUNCTION_19_8();
  v33 = v20 + *v20;
  swift_task_alloc();
  OUTLINED_FUNCTION_9_2();
  *(v12 + 16) = v21;
  *v21 = v22;
  OUTLINED_FUNCTION_54_0(v21);
  OUTLINED_FUNCTION_78();

  return v30(v23, v24, v25, v26, v27, v28, v29, v30, a9, v33, a11, a12);
}

uint64_t dispatch thunk of SQLExecution.execute<A>(all:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_35_3();
  OUTLINED_FUNCTION_83();
  OUTLINED_FUNCTION_17_8();
  v26 = v12 + *v12;
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_56_0(v13);
  *v14 = v15;
  OUTLINED_FUNCTION_32_5(v14);
  OUTLINED_FUNCTION_91();

  return v22(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, v26, a12);
}

uint64_t dispatch thunk of SQLExecution.results<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_35_3();
  OUTLINED_FUNCTION_65_0(v13, v14, v15, v16, v17, v18, v19);
  OUTLINED_FUNCTION_19_8();
  v33 = v20 + *v20;
  swift_task_alloc();
  OUTLINED_FUNCTION_9_2();
  *(v12 + 16) = v21;
  *v21 = v22;
  OUTLINED_FUNCTION_54_0(v21);
  OUTLINED_FUNCTION_78();

  return v30(v23, v24, v25, v26, v27, v28, v29, v30, a9, v33, a11, a12);
}

void sub_26B1BD280(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 >> 6 == 1)
  {
  }

  else if (!(a6 >> 6))
  {

    sub_26B1A85A8(a2, a3, a4, a5, a6 & 1);
  }
}

uint64_t OUTLINED_FUNCTION_7_14@<X0>(char a1@<W8>)
{
  *&v7 = v1;
  *(&v7 + 1) = v2;
  *&v8 = v4;
  *(&v8 + 1) = v5;
  *(v3 + 80) = v8;
  *(v3 + 64) = v7;
  *(v3 + 96) = a1 & 1;
}

uint64_t OUTLINED_FUNCTION_10_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, int a12, char a13)
{
  a10 = v13;
  a11 = v14;
  a12 = 17;
  a13 = 14;

  return static SQLError.Code.== infix(_:_:)(&a10, &a12);
}

uint64_t OUTLINED_FUNCTION_14_12()
{
}

void OUTLINED_FUNCTION_18_8()
{

  sub_26B1BD280(v0, v1, v2, v3, v4, v5);
}

uint64_t OUTLINED_FUNCTION_26_9()
{
}

void OUTLINED_FUNCTION_27_7()
{
  *(v0 + 32) = 0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 40) = 0x80;
  v3 = *(v1 + 104);
}

__n128 OUTLINED_FUNCTION_30_7()
{
  v1 = *(v0 + 80);
  *(v0 + 16) = *(v0 + 64);
  *(v0 + 32) = v1;
  result = *(v0 + 89);
  *(v0 + 41) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_33_5()
{

  return sub_26B1A8558(v4, v0, v1, v2, v3);
}

id OUTLINED_FUNCTION_41_2()
{
  v2 = *(v0 + 192);
  *(v0 + 104) = v2;

  return v2;
}

uint64_t OUTLINED_FUNCTION_44_2()
{
}

uint64_t OUTLINED_FUNCTION_46_2()
{
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  v4 = *(v0 + 128);
  v5 = *(v0 + 136);
  v6 = *(v0 + 97) & 1;

  return sub_26B1A85A8(v4, v5, v2, v3, v6);
}

void OUTLINED_FUNCTION_52_1()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = *(v0 + 40);

  sub_26B1BD280(v2, v3, v4, v5, v6, v7);
}

uint64_t OUTLINED_FUNCTION_53_0()
{
}

uint64_t OUTLINED_FUNCTION_67_0()
{

  return sub_26B212F30();
}

uint64_t OUTLINED_FUNCTION_70_0(uint64_t a1)
{
  result = *(v1 + 168);
  *(v1 + 72) = a1;
  return result;
}

__n128 OUTLINED_FUNCTION_73_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = *a2;
  v8 = *(a2 + 16);
  *(v6 + 56) = *a2;
  *(v6 + 40) = a5;
  *(v6 + 48) = v5;
  *(v6 + 24) = a3;
  *(v6 + 32) = a4;
  *(v6 + 16) = a1;
  *(v6 + 72) = v8;
  *(v6 + 88) = *(a2 + 32);
  return result;
}

unint64_t OUTLINED_FUNCTION_74_0()
{
  *(v0 + 296) = *(v0 + 368);

  return sub_26B162128();
}

uint64_t OUTLINED_FUNCTION_77()
{
}

uint64_t OUTLINED_FUNCTION_88()
{
  v2 = *(v0 + 232);
  v3 = *(v0 + 240);

  return sub_26B1D1ADC(v2, v3);
}

double OUTLINED_FUNCTION_89@<D0>(uint64_t x8_0@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  a10 = v19;
  a11 = v18;
  a12 = v17;
  a13 = v15;
  a14 = v16;

  *&result = sub_26B1C9BA4(v20, &a10, x8_0).n128_u64[0];
  return result;
}

void OUTLINED_FUNCTION_93()
{
  v2 = *(v0 + 192);
}

uint64_t OUTLINED_FUNCTION_94(uint64_t a1)
{
  *(v1 + 168) = a1;
  *(v1 + 176) = v2;
}

__n128 OUTLINED_FUNCTION_99()
{
  v1 = *(v0 + 32);
  *(v0 + 80) = *(v0 + 16);
  *(v0 + 96) = v1;
  result = *(v0 + 48);
  v3 = *(v0 + 64);
  *(v0 + 112) = result;
  *(v0 + 128) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_107()
{
}

uint64_t OUTLINED_FUNCTION_108()
{
}

uint64_t OUTLINED_FUNCTION_109()
{
}

uint64_t OUTLINED_FUNCTION_110()
{
}

uint64_t sub_26B1BDBE8(uint64_t a1, unsigned __int8 a2)
{
  _s15SonicFoundation11UnknownKeysV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_26B1BDC50(uint64_t a1, char a2)
{
  _s15SonicFoundation11UnknownKeysV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_26B1BDCBC(uint64_t a1, char a2)
{
  _s15SonicFoundation11UnknownKeysV4hash4intoys6HasherVz_tF_0();
}

double SQLDatabase.Options.init()@<D0>(uint64_t a1@<X8>)
{
  *&result = 16777473;
  *a1 = 16777473;
  *(a1 + 7) = 0;
  *(a1 + 11) = 2;
  return result;
}

uint64_t SQLDatabase.Options.ReadWriteMode.hashValue.getter()
{
  v1 = *v0;
  sub_26B214030();
  MEMORY[0x26D671480](v1);
  return sub_26B214070();
}

uint64_t SQLDatabase.Options.JournalMode.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_26B213AA0();

  v6 = 6;
  if (v4 < 6)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

uint64_t SQLDatabase.Options.JournalMode.rawValue.getter()
{
  result = 0x4554454C4544;
  switch(*v0)
  {
    case 1:
      result = 0x455441434E555254;
      break;
    case 2:
      result = 0x54534953524550;
      break;
    case 3:
      result = 0x59524F4D454DLL;
      break;
    case 4:
      result = 4997463;
      break;
    case 5:
      result = 4605519;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26B1BE13C@<X0>(uint64_t *a1@<X8>)
{
  result = SQLDatabase.Options.JournalMode.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t SQLDatabase.Options.LockingMode.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_26B213AA0();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t SQLDatabase.Options.LockingMode.rawValue.getter()
{
  if (*v0)
  {
    return 0x564953554C435845;
  }

  else
  {
    return 0x4C414D524F4ELL;
  }
}

uint64_t sub_26B1BE268@<X0>(uint64_t *a1@<X8>)
{
  result = SQLDatabase.Options.LockingMode.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t SQLDatabase.Options.DataProtectionClass.hashValue.getter()
{
  v1 = *v0;
  sub_26B214030();
  MEMORY[0x26D671480](v1);
  return sub_26B214070();
}

uint64_t static SQLDatabase.Options.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  result = 0;
  if (*a1 == *a2 && ((a1[1] ^ a2[1]) & 1) == 0 && ((a1[2] ^ a2[2]) & 1) == 0 && ((a1[3] ^ a2[3]) & 1) == 0 && ((a1[4] ^ a2[4]) & 1) == 0 && ((a1[5] ^ a2[5]) & 1) == 0 && ((a1[6] ^ a2[6]) & 1) == 0 && ((a1[7] ^ a2[7]) & 1) == 0 && ((a1[8] ^ a2[8]) & 1) == 0)
  {
    v4 = a1[10];
    v5 = a1[11];
    v6 = a2[10];
    v7 = a2[11];
    if (sub_26B195F68(a1[9], a2[9]))
    {
      return sub_26B1960D4(v4, v6) & (v5 == v7);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t SQLDatabase.Options.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v6 = v2[11];
  v4 = v2[9];
  MEMORY[0x26D671480](*v2);
  sub_26B214060();
  sub_26B214060();
  sub_26B214060();
  sub_26B214060();
  sub_26B214060();
  sub_26B214060();
  sub_26B214060();
  sub_26B214060();
  sub_26B1BDCBC(a1, v4);
  _s15SonicFoundation11UnknownKeysV4hash4intoys6HasherVz_tF_0();

  return MEMORY[0x26D671480](v6);
}

uint64_t SQLDatabase.Options.hashValue.getter()
{
  sub_26B214030();
  SQLDatabase.Options.hash(into:)(v1);
  return sub_26B214070();
}

uint64_t sub_26B1BE604(uint64_t a1)
{
  sub_26B214030();
  SQLDatabase.Options.hash(into:)(v2);
  return sub_26B214070();
}

unint64_t sub_26B1BE644()
{
  result = qword_2803E7E78;
  if (!qword_2803E7E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7E78);
  }

  return result;
}

unint64_t sub_26B1BE69C()
{
  result = qword_2803E7E80;
  if (!qword_2803E7E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7E80);
  }

  return result;
}

unint64_t sub_26B1BE6F4()
{
  result = qword_2803E7E88;
  if (!qword_2803E7E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7E88);
  }

  return result;
}

unint64_t sub_26B1BE74C()
{
  result = qword_2803E7E90;
  if (!qword_2803E7E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7E90);
  }

  return result;
}

unint64_t sub_26B1BE7A4()
{
  result = qword_2803E7E98;
  if (!qword_2803E7E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7E98);
  }

  return result;
}

uint64_t __swift_memcpy12_1(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t _s7OptionsVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[12])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = v3 - 2;
      if (!v4)
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

uint64_t _s7OptionsVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 12) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 12) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t _s7OptionsV11JournalModeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s7OptionsV11JournalModeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_26B1BEA04(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *_s7OptionsV19DataProtectionClassOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t SQLExecution.journalMode(_:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 64) = a3;
  *(v4 + 72) = v3;
  *(v4 + 56) = a2;
  *(v4 + 49) = *a1;
  return OUTLINED_FUNCTION_2_29();
}

uint64_t sub_26B1BEEE0()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v6 = v5;
  *(v3 + 88) = v0;

  OUTLINED_FUNCTION_40_0();
  if (v0)
  {
    OUTLINED_FUNCTION_33();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_10_0();

    return v10();
  }
}

uint64_t SQLExecution.foreignKeyConstraintsEnforced(enabled:)(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 64) = a3;
  *(v4 + 72) = v3;
  *(v4 + 56) = a2;
  *(v4 + 49) = a1;
  return OUTLINED_FUNCTION_2_29();
}

uint64_t sub_26B1BF240()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v6 = v5;
  *(v3 + 88) = v0;

  OUTLINED_FUNCTION_40_0();
  if (v0)
  {
    OUTLINED_FUNCTION_33();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_10_0();

    return v10();
  }
}

uint64_t SQLExecution.caseSensitiveLike(enabled:)(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 64) = a3;
  *(v4 + 72) = v3;
  *(v4 + 56) = a2;
  *(v4 + 49) = a1;
  return OUTLINED_FUNCTION_2_29();
}

uint64_t SQLExecution.recursiveTriggers(enabled:)(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 64) = a3;
  *(v4 + 72) = v3;
  *(v4 + 56) = a2;
  *(v4 + 49) = a1;
  return OUTLINED_FUNCTION_2_29();
}

unint64_t SQLDatabase.AutoVacuumMode.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if (result < 3)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t SQLDatabase.IndexInfo.indexName.setter()
{
  OUTLINED_FUNCTION_83_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t SQLDatabase.IndexInfo.IndexType.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_26B213AA0();

  v6 = 3;
  if (v4 < 3)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

uint64_t SQLDatabase.IndexInfo.IndexType.rawValue.getter()
{
  v1 = 117;
  if (*v0 != 1)
  {
    v1 = 27504;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 99;
  }
}

uint64_t sub_26B1BF988@<X0>(uint64_t *a1@<X8>)
{
  result = SQLDatabase.IndexInfo.IndexType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t SQLDatabase.IndexColumnInfo.name.setter()
{
  OUTLINED_FUNCTION_83_0();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t SQLDatabase.IndexColumnInfo.collator.setter()
{
  OUTLINED_FUNCTION_83_0();

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t SQLDatabase.TableColumnInfo.name.setter()
{
  OUTLINED_FUNCTION_83_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t SQLDatabase.TableColumnInfo.defaultValue.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 24) = v2;
  return result;
}

uint64_t SQLDatabase.TableColumnInfo.primaryKeyComponentIndex.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

unint64_t SQLDatabase.TableColumnInfo.ColumnType.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 4;
  if (result < 4)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t SQLExecution.applicationID.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_83_0();
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_3_23(v3, v4);
  swift_task_alloc();
  OUTLINED_FUNCTION_9_2();
  v2[11] = v5;
  v2[9] = MEMORY[0x277D83B88];
  v2[10] = &protocol witness table for Int;
  *v5 = v6;
  v5[1] = sub_26B1BFE94;
  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_115();

  return v14(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_26B1BFE94()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_1_12();
  *v3 = v1;
  *v3 = *v2;
  *(v1 + 96) = v0;

  OUTLINED_FUNCTION_85();
  sub_26B1A85A8(*(v4 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48));
  OUTLINED_FUNCTION_12_14();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t SQLExecution.applicationID(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  return OUTLINED_FUNCTION_2_29();
}

uint64_t sub_26B1C027C()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v6 = v5;
  *(v3 + 104) = v0;

  OUTLINED_FUNCTION_40_0();
  if (v0)
  {
    OUTLINED_FUNCTION_33();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_10_0();

    return v10();
  }
}

uint64_t SQLExecution.autoVacuumMode.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_108_0(v4);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_6_20(v5);
  OUTLINED_FUNCTION_20_8(v6);
  swift_task_alloc();
  OUTLINED_FUNCTION_9_2();
  v3[10] = v7;
  v3[7] = &type metadata for SQLDatabase.AutoVacuumMode;
  v3[8] = &protocol witness table for SQLDatabase.AutoVacuumMode;
  *v7 = v8;
  OUTLINED_FUNCTION_8_21(v7);
  OUTLINED_FUNCTION_115();

  return v16(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_26B1C04BC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_1_12();
  *v3 = v1;
  *v3 = *v2;
  *(v1 + 88) = v0;

  OUTLINED_FUNCTION_85();
  sub_26B1A85A8(*(v4 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48));
  OUTLINED_FUNCTION_12_14();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_26B1C0614()
{
  v1 = *(v0 + 49);
  if (v1 == 3)
  {
    LOBYTE(v1) = 0;
  }

  **(v0 + 72) = v1;
  return OUTLINED_FUNCTION_22_10();
}

uint64_t SQLExecution.autoVacuumMode(_:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 112) = a3;
  *(v4 + 120) = v3;
  *(v4 + 104) = a2;
  *(v4 + 49) = *a1;
  return OUTLINED_FUNCTION_2_29();
}

uint64_t sub_26B1C08A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_116();
  v21 = v5;
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_10_1();
  v7 = v6;
  OUTLINED_FUNCTION_6();
  *v8 = v7;
  v9 = *v4;
  OUTLINED_FUNCTION_1_12();
  *v10 = v9;
  *(v7 + 152) = v3;

  if (v3)
  {
    OUTLINED_FUNCTION_78_0();
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_115();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  else
  {
    v15 = *(v7 + 128);
    OUTLINED_FUNCTION_78_0();
    *(v7 + 56) = xmmword_26B21A6B0;
    *(v7 + 72) = 0;
    *(v7 + 80) = 0;
    *(v7 + 88) = 0;
    v20 = (v15 + *v15);
    v16 = swift_task_alloc();
    *(v7 + 160) = v16;
    *v16 = v9;
    v16[1] = sub_26B1C0A80;
    v17 = *(v7 + 112);
    v18 = *(v7 + 104);

    return v20(v7 + 56, v18, v17);
  }
}

uint64_t sub_26B1C0A80()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v6 = v5;
  *(v3 + 168) = v0;

  OUTLINED_FUNCTION_103_0();
  if (v0)
  {
    OUTLINED_FUNCTION_33();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_10_0();

    return v10();
  }
}

uint64_t SQLExecution.automaticIndexing.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_83_0();
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_3_23(v3, v4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_61_1(v5);
  *(v2 + 56) = MEMORY[0x277D839B0];
  *(v2 + 64) = &protocol witness table for Bool;
  *v6 = v7;
  OUTLINED_FUNCTION_8_21(v6);
  OUTLINED_FUNCTION_115();

  return v15(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_26B1C0CC4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_1_12();
  *v3 = v1;
  *v3 = *v2;
  *(v1 + 80) = v0;

  OUTLINED_FUNCTION_85();
  sub_26B1A85A8(*(v4 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48));
  OUTLINED_FUNCTION_12_14();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t SQLExecution.automaticIndexing(enabled:)(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 64) = a3;
  *(v4 + 72) = v3;
  *(v4 + 56) = a2;
  *(v4 + 49) = a1;
  return OUTLINED_FUNCTION_2_29();
}

uint64_t SQLExecution.busyTimeout.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_83_0();
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_3_23(v3, v4);
  swift_task_alloc();
  OUTLINED_FUNCTION_9_2();
  v2[11] = v5;
  v2[9] = MEMORY[0x277D83B88];
  v2[10] = &protocol witness table for Int;
  *v5 = v6;
  v5[1] = sub_26B1C11A4;
  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_115();

  return v14(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_26B1C11A4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_1_12();
  *v3 = v1;
  *v3 = *v2;
  *(v1 + 96) = v0;

  OUTLINED_FUNCTION_85();
  sub_26B1A85A8(*(v4 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48));
  OUTLINED_FUNCTION_12_14();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_26B1C12FC()
{
  OUTLINED_FUNCTION_25();
  if (*(v0 + 64))
  {
    v1 = 0;
  }

  else
  {
    v1 = *(v0 + 56);
  }

  v2 = sub_26B1BEBC4(v1);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t SQLExecution.busyTimeout(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  return OUTLINED_FUNCTION_2_29();
}

uint64_t sub_26B1C1384()
{
  OUTLINED_FUNCTION_75_0();
  v1 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_29_5();
  sub_26B16AFCC();
  v3 = v2;
  v4 = *(v2 + 16);
  if (v4 >= *(v2 + 24) >> 1)
  {
    OUTLINED_FUNCTION_4_21();
    v3 = v41;
  }

  *(v3 + 16) = v4 + 1;
  v5 = v3 + 80 * v4;
  *(v5 + 32) = 0xD000000000000014;
  *(v5 + 40) = 0x800000026B220280;
  *(v5 + 104) = 0;
  sub_26B214130();
  sub_26B214130();
  sub_26B213180();
  v6 = *(v3 + 16);
  if (v6 >= *(v3 + 24) >> 1)
  {
    OUTLINED_FUNCTION_4_21();
    v3 = v42;
  }

  *(v3 + 16) = v6 + 1;
  OUTLINED_FUNCTION_56_1();
  v15 = OUTLINED_FUNCTION_98_0(v7, v8, v9, v10, v11, v12, v13, v14, v44, v47);
  OUTLINED_FUNCTION_2_26(v16, v15, v17, v18);
  OUTLINED_FUNCTION_55_1();
  if (!(v20 ^ v21 | v19))
  {
    OUTLINED_FUNCTION_32_6();
    v3 = v43;
  }

  OUTLINED_FUNCTION_50_3();
  *(v22 + 32) = 0;
  *(v22 + 40) = 0xE000000000000000;
  v31 = OUTLINED_FUNCTION_98_0(v23, v24, v25, v26, v27, v28, v29, v30, v45, *&v48);
  OUTLINED_FUNCTION_2_26(v32, v31, v33, v34);
  sub_26B2128F0();
  sub_26B2128F0();
  result = sub_26B1A6AB8();
  if (*(v1 + 16))
  {

    sub_26B2128F0();
    sub_26B2128F0();
    sub_26B2128F0();
    OUTLINED_FUNCTION_28_5();
    OUTLINED_FUNCTION_69_1();
    v49 = *(v0 + 80);

    OUTLINED_FUNCTION_7_0();
    v46 = (*(v49 + 8) + **(v49 + 8));
    v36 = swift_task_alloc();
    v37 = OUTLINED_FUNCTION_113(v36);
    *v37 = v38;
    v37[1] = sub_26B1C1690;
    v39 = *(v0 + 80);
    v40 = *(v0 + 72);

    return v46(v3, v40, v39);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26B1C1690()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v6 = v5;
  *(v3 + 104) = v0;

  OUTLINED_FUNCTION_40_0();
  if (v0)
  {
    OUTLINED_FUNCTION_33();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_10_0();

    return v10();
  }
}

uint64_t SQLExecution.cacheSize.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_10_3();
  v3[11] = v4;
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_6_20(v5);
  OUTLINED_FUNCTION_20_8(v6);
  swift_task_alloc();
  OUTLINED_FUNCTION_9_2();
  v3[12] = v7;
  v3[9] = MEMORY[0x277D83B88];
  v3[10] = &protocol witness table for Int;
  *v7 = v8;
  v7[1] = sub_26B1C18E4;
  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_115();

  return v16(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_26B1C18E4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_1_12();
  *v3 = v1;
  *v3 = *v2;
  *(v1 + 104) = v0;

  OUTLINED_FUNCTION_85();
  sub_26B1A85A8(*(v4 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48));
  OUTLINED_FUNCTION_12_14();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_26B1C1A3C()
{
  if (*(v0 + 64))
  {
    v1 = 0;
  }

  else
  {
    v1 = *(v0 + 56);
  }

  v2 = v1;
  if ((v1 & 0x8000000000000000) == 0)
  {
    goto LABEL_7;
  }

  if (v1 != 0x8000000000000000)
  {
    v2 = -v1;
LABEL_7:
    v3 = *(v0 + 88);
    *v3 = v2;
    *(v3 + 8) = v1 < 0;
    return OUTLINED_FUNCTION_22_10();
  }

  __break(1u);
  return result;
}

uint64_t SQLExecution.cacheSize(_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 64) = a2;
  *(v4 + 72) = a3;
  v5 = *a1;
  *(v4 + 80) = v3;
  *(v4 + 88) = v5;
  *(v4 + 49) = *(a1 + 8);
  return OUTLINED_FUNCTION_2_29();
}

uint64_t SQLExecution.cellSizeCheck.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_83_0();
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_3_23(v3, v4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_61_1(v5);
  *(v2 + 56) = MEMORY[0x277D839B0];
  *(v2 + 64) = &protocol witness table for Bool;
  *v6 = v7;
  OUTLINED_FUNCTION_8_21(v6);
  OUTLINED_FUNCTION_115();

  return v15(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_26B1C1E20()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_1_12();
  *v3 = v1;
  *v3 = *v2;
  *(v1 + 80) = v0;

  OUTLINED_FUNCTION_85();
  sub_26B1A85A8(*(v4 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48));
  OUTLINED_FUNCTION_12_14();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t SQLExecution.checkpointUsesFullFsync.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_83_0();
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_3_23(v3, v4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_61_1(v5);
  *(v2 + 56) = MEMORY[0x277D839B0];
  *(v2 + 64) = &protocol witness table for Bool;
  *v6 = v7;
  OUTLINED_FUNCTION_8_21(v6);
  OUTLINED_FUNCTION_115();

  return v15(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_26B1C20C0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_1_12();
  *v3 = v1;
  *v3 = *v2;
  *(v1 + 80) = v0;

  OUTLINED_FUNCTION_85();
  sub_26B1A85A8(*(v4 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48));
  OUTLINED_FUNCTION_12_14();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t SQLExecution.checkpointUsesFullFsync(enabled:)(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 64) = a3;
  *(v4 + 72) = v3;
  *(v4 + 56) = a2;
  *(v4 + 49) = a1;
  return OUTLINED_FUNCTION_2_29();
}

uint64_t SQLExecution.collations.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_83_0();
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_5_18(v3, v4);
  OUTLINED_FUNCTION_19_8();
  v5 = swift_task_alloc();
  v2[9] = v5;
  v2[7] = MEMORY[0x277D837D0];
  v2[8] = &protocol witness table for String;
  *v5 = v2;
  OUTLINED_FUNCTION_60_1(v5);
  OUTLINED_FUNCTION_115();

  return v12(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_26B1C2584()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_15_7();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_78_0();
    OUTLINED_FUNCTION_33();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_78_0();
    v10 = OUTLINED_FUNCTION_62_1();

    return v11(v10);
  }
}

uint64_t SQLExecution.compileOptions.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_83_0();
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_5_18(v3, v4);
  OUTLINED_FUNCTION_19_8();
  v5 = swift_task_alloc();
  v2[9] = v5;
  v2[7] = MEMORY[0x277D837D0];
  v2[8] = &protocol witness table for String;
  *v5 = v2;
  OUTLINED_FUNCTION_60_1(v5);
  OUTLINED_FUNCTION_115();

  return v12(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_26B1C27F8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_15_7();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_78_0();
    OUTLINED_FUNCTION_33();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_78_0();
    v10 = OUTLINED_FUNCTION_62_1();

    return v11(v10);
  }
}

uint64_t SQLExecution.checkForeignKeys(in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[15] = a4;
  v5[16] = v4;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  return OUTLINED_FUNCTION_2_29();
}

uint64_t sub_26B1C2C84()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v6 = v5;
  *(v3 + 144) = v0;

  OUTLINED_FUNCTION_103_0();
  if (v0)
  {
    OUTLINED_FUNCTION_33();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_10_0();

    return v10();
  }
}

uint64_t sub_26B1C2D9C()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v6 = v5;
  *(v3 + 160) = v0;

  OUTLINED_FUNCTION_40_0();
  if (v0)
  {
    OUTLINED_FUNCTION_33();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_10_0();

    return v10();
  }
}

uint64_t SQLExecution.foreignKeyConstraint(in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[12] = a4;
  v5[13] = v4;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  return OUTLINED_FUNCTION_2_29();
}

uint64_t sub_26B1C3100()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_15_7();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v6 = v5;
  *(v3 + 120) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_78_0();
    OUTLINED_FUNCTION_33();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_78_0();
    v10 = OUTLINED_FUNCTION_62_1();

    return v11(v10);
  }
}

uint64_t SQLExecution.foreignKeyConstraintsEnforced.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_83_0();
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_3_23(v3, v4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_61_1(v5);
  *(v2 + 56) = MEMORY[0x277D839B0];
  *(v2 + 64) = &protocol witness table for Bool;
  *v6 = v7;
  OUTLINED_FUNCTION_8_21(v6);
  OUTLINED_FUNCTION_115();

  return v15(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t SQLExecution.unusedPageCount.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_83_0();
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_3_23(v3, v4);
  swift_task_alloc();
  OUTLINED_FUNCTION_9_2();
  v2[11] = v5;
  v2[9] = MEMORY[0x277D83B88];
  v2[10] = &protocol witness table for Int;
  *v5 = v6;
  v5[1] = sub_26B1C346C;
  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_115();

  return v14(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_26B1C346C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_1_12();
  *v3 = v1;
  *v3 = *v2;
  *(v1 + 96) = v0;

  OUTLINED_FUNCTION_85();
  sub_26B1A85A8(*(v4 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48));
  OUTLINED_FUNCTION_12_14();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t SQLExecution.usesFullFSync.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_83_0();
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_3_23(v3, v4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_61_1(v5);
  *(v2 + 56) = MEMORY[0x277D839B0];
  *(v2 + 64) = &protocol witness table for Bool;
  *v6 = v7;
  OUTLINED_FUNCTION_8_21(v6);
  OUTLINED_FUNCTION_115();

  return v15(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t SQLExecution.useFullFSync(enabled:)(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 64) = a3;
  *(v4 + 72) = v3;
  *(v4 + 56) = a2;
  *(v4 + 49) = a1;
  return OUTLINED_FUNCTION_2_29();
}

uint64_t SQLExecution.ignoreCheckConstraints(enabled:)(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 64) = a3;
  *(v4 + 72) = v3;
  *(v4 + 56) = a2;
  *(v4 + 49) = a1;
  return OUTLINED_FUNCTION_2_29();
}

uint64_t SQLExecution.incrementalVacuum(pages:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 120) = a4;
  *(v5 + 128) = v4;
  *(v5 + 49) = a2;
  *(v5 + 104) = a1;
  *(v5 + 112) = a3;
  return OUTLINED_FUNCTION_2_29();
}

uint64_t SQLExecution.keyColumns(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[12] = a4;
  v5[13] = v4;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  return OUTLINED_FUNCTION_2_29();
}

uint64_t sub_26B1C40C8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_15_7();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v6 = v5;
  *(v3 + 120) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_78_0();
    OUTLINED_FUNCTION_33();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_78_0();
    v10 = OUTLINED_FUNCTION_62_1();

    return v11(v10);
  }
}

uint64_t SQLExecution.indexes(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[20] = a4;
  v5[21] = v4;
  v5[18] = a2;
  v5[19] = a3;
  v5[17] = a1;
  return OUTLINED_FUNCTION_2_29();
}

uint64_t sub_26B1C44C8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_1_12();
  *v3 = v1;
  v4 = *v2;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  *(v1 + 184) = v6;
  *(v1 + 192) = v0;

  OUTLINED_FUNCTION_85();
  sub_26B1A85A8(*(v7 + 96), *(v1 + 104), *(v1 + 112), *(v1 + 120), *(v1 + 128));
  OUTLINED_FUNCTION_12_14();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

void sub_26B1C4620()
{
  v1 = *(v0 + 184);
  v2 = *(v1 + 16);
  if (v2)
  {
    v17 = MEMORY[0x277D84F90];
    sub_26B15B57C(0, v2, 0);
    v3 = 0;
    v4 = (v1 + 58);
    v14 = v2;
    v15 = v1;
    while (v3 < *(v1 + 16))
    {
      v5 = *(v4 - 18);
      v6 = *(v4 - 10);
      v7 = *(v4 - 2);
      v16 = *(v4 - 1);
      v8 = *v4;
      v9 = *(v17 + 16);
      v10 = *(v17 + 24);
      sub_26B2128F0();
      if (v9 >= v10 >> 1)
      {
        sub_26B15B57C(v10 > 1, v9 + 1, 1);
      }

      ++v3;
      *(v17 + 16) = v9 + 1;
      v11 = v17 + 24 * v9;
      *(v11 + 32) = v5;
      *(v11 + 40) = v6;
      *(v11 + 48) = v7;
      *(v11 + 49) = v16;
      *(v11 + 50) = v8;
      v4 += 32;
      v1 = v15;
      if (v14 == v3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:

    v12 = OUTLINED_FUNCTION_133();

    v13(v12);
  }
}

uint64_t SQLExecution.columnInfo(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[22] = a4;
  v5[23] = v4;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  return OUTLINED_FUNCTION_2_29();
}

uint64_t sub_26B1C4AD0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_1_12();
  *v3 = v1;
  v4 = *v2;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  *(v1 + 200) = v6;
  *(v1 + 208) = v0;

  OUTLINED_FUNCTION_85();
  sub_26B1A85A8(*(v7 + 112), *(v1 + 120), *(v1 + 128), *(v1 + 136), *(v1 + 144));
  OUTLINED_FUNCTION_12_14();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_26B1C4C28()
{
  v1 = v0[25];
  v2 = *(v1 + 16);
  if (v2)
  {
    v25 = MEMORY[0x277D84F90];
    result = sub_26B15B5C0(0, v2, 0);
    v4 = 0;
    v20 = v1;
    v21 = v2 - 1;
    for (i = (v1 + 88); ; i += 64)
    {
      if (v4 >= *(v1 + 16))
      {
        __break(1u);
        return result;
      }

      v6 = *(i - 24);
      v8 = *(i - 2);
      v7 = *(i - 1);
      v9 = *i;
      v22 = *(i - 40);
      v23 = *(i - 56);
      v10 = *(v25 + 16);
      v11 = *(v25 + 24);
      sub_26B2128F0();
      result = sub_26B2128F0();
      if (v10 >= v11 >> 1)
      {
        result = sub_26B15B5C0((v11 > 1), v10 + 1, 1);
      }

      *(v25 + 16) = v10 + 1;
      v12 = v25 + (v10 << 6);
      *(v12 + 32) = v23;
      *(v12 + 48) = v22;
      *(v12 + 64) = v6;
      *(v12 + 65) = *v24;
      *(v12 + 68) = *&v24[3];
      *(v12 + 72) = v8;
      *(v12 + 80) = v7;
      *(v12 + 88) = v9;
      if (v21 == v4)
      {
        break;
      }

      ++v4;
      v1 = v20;
    }

    v13 = OUTLINED_FUNCTION_133();

    return v14(v13);
  }

  else
  {
    v16 = v0[19];
    v15 = v0[20];

    sub_26B2136C0();

    OUTLINED_FUNCTION_77_0();
    v26 = v17;
    MEMORY[0x26D670040](v16, v15);
    sub_26B1B34BC();
    swift_allocError();
    *v18 = 0xD00000000000001BLL;
    v18[1] = v26;
    swift_willThrow();
    OUTLINED_FUNCTION_10_0();

    return v19();
  }
}