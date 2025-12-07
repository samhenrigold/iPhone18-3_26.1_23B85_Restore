uint64_t sub_21B1B60BC()
{
  v0 = type metadata accessor for DatasetColumnType(0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21B20CCC8();
  v6 = *(v5 + 16);
  if (v6)
  {
    v18 = MEMORY[0x277D84F90];
    sub_21B190028(0, v6, 0);
    v7 = v18;
    v17 = sub_21B20CCE8();
    v8 = *(v17 - 8);
    v9 = *(v8 + 16);
    v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v16[1] = v5;
    v11 = v5 + v10;
    v12 = *(v8 + 72);
    do
    {
      v9(v4, v11, v17);
      v18 = v7;
      v14 = *(v7 + 16);
      v13 = *(v7 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_21B190028((v13 > 1), v14 + 1, 1);
        v7 = v18;
      }

      *(v7 + 16) = v14 + 1;
      sub_21B1B6CF0(v4, v7 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v14);
      v11 += v12;
      --v6;
    }

    while (v6);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v7;
}

uint64_t static DatasetColumnType.allCases.getter()
{
  if (qword_27CD6E948 != -1)
  {
    swift_once();
  }
}

uint64_t static DatasetColumnType.== infix(_:_:)()
{
  sub_21B20CCE8();
  sub_21B1B6A6C(&qword_27CD6EC08, MEMORY[0x277D3E200], MEMORY[0x277D3E210]);
  sub_21B20D3F8();
  sub_21B20D3F8();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_21B20DB28();
  }

  return v1 & 1;
}

uint64_t DatasetColumnType.hash(into:)(uint64_t a1)
{
  sub_21B20CCE8();
  sub_21B1B6A6C(&qword_27CD6F648, MEMORY[0x277D3E200], MEMORY[0x277D3E208]);

  return sub_21B20D288();
}

uint64_t DatasetColumnType.hashValue.getter()
{
  sub_21B20DC88();
  sub_21B20CCE8();
  sub_21B1B6A6C(&qword_27CD6F648, MEMORY[0x277D3E200], MEMORY[0x277D3E208]);
  sub_21B20D288();
  return sub_21B20DCA8();
}

uint64_t sub_21B1B64CC()
{
  sub_21B20DC88();
  sub_21B20CCE8();
  sub_21B1B6A6C(&qword_27CD6F648, MEMORY[0x277D3E200], MEMORY[0x277D3E208]);
  sub_21B20D288();
  return sub_21B20DCA8();
}

uint64_t sub_21B1B6554(uint64_t a1)
{
  sub_21B20CCE8();
  sub_21B1B6A6C(&qword_27CD6F648, MEMORY[0x277D3E200], MEMORY[0x277D3E208]);

  return sub_21B20D288();
}

uint64_t sub_21B1B65D8(uint64_t a1)
{
  sub_21B20DC88();
  sub_21B20CCE8();
  sub_21B1B6A6C(&qword_27CD6F648, MEMORY[0x277D3E200], MEMORY[0x277D3E208]);
  sub_21B20D288();
  return sub_21B20DCA8();
}

uint64_t sub_21B1B665C@<X0>(void *a1@<X8>)
{
  if (qword_27CD6E948 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_27CD6F640;
}

uint64_t sub_21B1B66D0()
{
  sub_21B20CCE8();
  sub_21B1B6A6C(&qword_27CD6EC08, MEMORY[0x277D3E200], MEMORY[0x277D3E210]);
  sub_21B20D3F8();
  sub_21B20D3F8();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_21B20DB28();
  }

  return v1 & 1;
}

uint64_t DatasetColumnType.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_21B20CCE8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v12[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B20DCC8();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v12, v12[3]);
    sub_21B1B6A6C(&qword_27CD6F650, MEMORY[0x277D3E200], &protocol conformance descriptor for SQLiteColumnType);
    sub_21B20DB68();
    (*(v6 + 32))(a2, v9, v5);
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t DatasetColumnType.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B20DCF8();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_21B20CCE8();
  sub_21B1B6A6C(&qword_27CD6F658, MEMORY[0x277D3E200], &protocol conformance descriptor for SQLiteColumnType);
  sub_21B20DBB8();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t sub_21B1B6A6C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for DatasetColumnType(uint64_t a1)
{
  result = qword_27CD6F678;
  if (!qword_27CD6F678)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21B1B6B04()
{
  result = qword_27CD6F668;
  if (!qword_27CD6F668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD6F670, &qword_21B215498);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F668);
  }

  return result;
}

uint64_t sub_21B1B6B80(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B20DCF8();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_21B20CCE8();
  sub_21B1B6A6C(&qword_27CD6F658, MEMORY[0x277D3E200], &protocol conformance descriptor for SQLiteColumnType);
  sub_21B20DBB8();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t sub_21B1B6C84(uint64_t a1)
{
  result = sub_21B20CCE8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21B1B6CF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DatasetColumnType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B1B6D54(uint64_t a1)
{
  result = MEMORY[0x21CEEBD20](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_21B1B9C24(v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall DatasetDescription.add(_:)(PoirotBlocks::DatasetColumnLayout a1)
{
  v2 = *a1.name._countAndFlagsBits;
  v3 = *(a1.name._countAndFlagsBits + 8);
  v4 = *(a1.name._countAndFlagsBits + 16);
  swift_bridgeObjectRetain_n();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *v1;
  *v1 = 0x8000000000000000;
  sub_21B1BB4EC(v2, v3, v4, v2, v3, isUniquelyReferenced_nonNull_native);

  *v1 = v6;
}

unint64_t DatasetDescription.subscript.getter@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *v3;
  if (*(v5 + 16) && (result = sub_21B1B9778(result, a2), (v6 & 1) != 0))
  {
    v7 = (*(v5 + 56) + 24 * result);
    v8 = v7[1];
    v9 = v7[2];
    *a3 = *v7;
    a3[1] = v8;
    a3[2] = v9;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  return result;
}

PoirotBlocks::DatasetDescription __swiftcall DatasetDescription.init()()
{
  v1 = v0;
  result.layouts._rawValue = sub_21B197C00(MEMORY[0x277D84F90]);
  v1->layouts._rawValue = result.layouts._rawValue;
  return result;
}

uint64_t DatasetDescription.forEach(_:)(void (*a1)(uint64_t, uint64_t, void *))
{
  v3 = v2;
  v4 = *v1 + 64;
  v5 = 1 << *(*v1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(*v1 + 64);
  v8 = (v5 + 63) >> 6;
  v21 = *v1;

  v10 = 0;
  if (v7)
  {
    while (1)
    {
      v11 = v10;
LABEL_8:
      v12 = __clz(__rbit64(v7)) | (v11 << 6);
      v13 = (*(v21 + 48) + 16 * v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = (*(v21 + 56) + 24 * v12);
      v17 = v16[1];
      v18 = v16[2];
      v20[0] = *v16;
      v20[1] = v17;
      v20[2] = v18;

      a1(v14, v15, v20);
      if (v3)
      {
        break;
      }

      v7 &= v7 - 1;

      v10 = v11;
      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v8)
      {
      }

      v7 = *(v4 + 8 * v11);
      ++v10;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21B1B717C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DatasetColumnDescription(0);
  v5 = *(v4 - 8);
  v55 = v4;
  v56 = v5;
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v7, v10);
  v13 = &v47 - v12;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v14 = 0;
  v15 = *(a1 + 64);
  v50 = a1 + 64;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v51 = v19;
  v52 = a2;
  if (v18)
  {
    do
    {
      v20 = __clz(__rbit64(v18));
      v53 = (v18 - 1) & v18;
LABEL_12:
      v23 = v20 | (v14 << 6);
      v24 = (*(a1 + 48) + 16 * v23);
      v26 = *v24;
      v25 = v24[1];
      v27 = (*(a1 + 56) + 24 * v23);
      v28 = *v27;
      v29 = v27[1];
      v30 = v27[2];

      v54 = v29;

      if (!v25)
      {
        return 1;
      }

      v31 = v52;
      v32 = sub_21B1B9778(v26, v25);
      v34 = v33;

      if ((v34 & 1) == 0 || ((v35 = (*(v31 + 56) + 24 * v32), v36 = v35[1], v37 = v35[2], *v35 == v28) ? (v38 = v54 == v36) : (v38 = 0), !v38 && (sub_21B20DB28() & 1) == 0 || (v39 = *(v37 + 16), v39 != *(v30 + 16))))
      {

LABEL_32:

        return 0;
      }

      if (v39 && v37 != v30)
      {
        v48 = a1;
        v40 = (*(v56 + 80) + 32) & ~*(v56 + 80);
        v41 = v36;
        v42 = v37 + v40;
        v43 = v30 + v40;
        v49 = v41;

        v44 = 0;
        while (v44 < *(v37 + 16))
        {
          v45 = *(v56 + 72) * v44;
          result = sub_21B17FCC8(v42 + v45, v13);
          if (v44 >= *(v30 + 16))
          {
            goto LABEL_37;
          }

          sub_21B17FCC8(v43 + v45, v9);
          sub_21B1BC1A4();
          v46 = sub_21B20D2A8();
          sub_21B17FDE8(v9);
          result = sub_21B17FDE8(v13);
          if ((v46 & 1) == 0)
          {

            goto LABEL_32;
          }

          if (v39 == ++v44)
          {

            a1 = v48;
            goto LABEL_28;
          }
        }

        goto LABEL_36;
      }

LABEL_28:

      v19 = v51;
      v18 = v53;
    }

    while (v53);
  }

  v21 = v14;
  while (1)
  {
    v14 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v14 >= v19)
    {
      return 1;
    }

    v22 = *(v50 + 8 * v14);
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v53 = (v22 - 1) & v22;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_21B1B7508(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_21B1B9778(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_21B20DB28();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21B1B76AC(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
LABEL_192:
    *&v4 = 1;
    return *&v4;
  }

  v6 = a2;
  v7 = a1;
  if (*(a1 + 16) != *(a2 + 16))
  {
    goto LABEL_245;
  }

  v8 = 0;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 64);
  v12 = (v9 + 63) >> 6;
  v267 = a2;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        if (v11)
        {
          v13 = __clz(__rbit64(v11));
          v268 = (v11 - 1) & v11;
        }

        else
        {
          v14 = v8;
          do
          {
            v8 = v14 + 1;
            if (__OFADD__(v14, 1))
            {
              __break(1u);
LABEL_197:
              sub_21B1A7C74(a1, a2, v5);
              sub_21B1A7C74(*&v4, v6, 0);
              sub_21B1A7C90(*&v4, v6, 0);
              sub_21B1A7C90(v3, *&v2, v5);
              v5 = v270;
              LOBYTE(v3) = v263;
              goto LABEL_241;
            }

            if (v8 >= v12)
            {
              goto LABEL_192;
            }

            v15 = *(v7 + 64 + 8 * v8);
            ++v14;
          }

          while (!v15);
          v13 = __clz(__rbit64(v15));
          v268 = (v15 - 1) & v15;
        }

        v16 = v13 | (v8 << 6);
        v17 = (*(v7 + 48) + 16 * v16);
        v18 = *v17;
        v19 = v17[1];
        v20 = *(v7 + 56) + 24 * v16;
        v22 = *v20;
        v21 = *(v20 + 8);
        v23 = *(v20 + 16);

        v269 = v21;
        sub_21B1A7C74(v22, v21, v23);
        *&v4 = v19 == 0;
        if (!v19)
        {
          return *&v4;
        }

        v270 = v22;
        v2 = COERCE_DOUBLE(sub_21B1B9778(v18, v19));
        v25 = v24;

        if ((v25 & 1) == 0)
        {
          v5 = v270;
          goto LABEL_244;
        }

        v26 = *(v6 + 56) + 24 * *&v2;
        v27 = *(v26 + 8);
        v271 = *v26;
        v3 = *(v26 + 16);
        if (*(v26 + 16) <= 2u)
        {
          break;
        }

        v5 = v270;
        if (v3 == 3)
        {
          sub_21B1A7C90(v271, v27, 3u);
          if (v23 != 3)
          {
            goto LABEL_244;
          }

          a1 = sub_21B1A7C90(v270, v269, 3u);
          v32 = v271 == v270;
          goto LABEL_32;
        }

        if (v3 == 4)
        {
          if (v23 != 4)
          {
            goto LABEL_243;
          }

          sub_21B1A7C90(v271, v27, 4u);
          a1 = sub_21B1A7C90(v270, v269, 4u);
          v32 = *&v271 == *&v270;
LABEL_32:
          v11 = v268;
          if (!v32)
          {
            return *&v4;
          }
        }

        else
        {
          sub_21B1A7C90(v271, v27, 5u);
          if (v23 != 5)
          {
            goto LABEL_244;
          }

          a1 = sub_21B1A7C90(v270, v269, 5u);
          v11 = v268;
          if ((v271 ^ v270))
          {
            return *&v4;
          }
        }
      }

      v5 = v270;
      if (!*(v26 + 16))
      {
        if (v23)
        {
          goto LABEL_194;
        }

        v2 = *v26;
        v3 = *(v26 + 8);
        sub_21B1A7C74(v271, v27, 0);
        sub_21B1A7C74(v271, v3, 0);
        sub_21B1A7C74(v270, v269, 0);
        v33 = sub_21B1B76AC(v271, v270);
        sub_21B1A7C90(v270, v269, 0);
        sub_21B1A7C90(v271, v3, 0);
        sub_21B1A7C90(v271, v3, 0);
        v34 = v270;
        v35 = v269;
        v6 = v267;
        v36 = 0;
        goto LABEL_40;
      }

      if (v3 == 1)
      {
        break;
      }

      if (v23 != 2)
      {
LABEL_194:
        v161 = *(v26 + 8);

        v27 = v161;
        goto LABEL_243;
      }

      v29 = v269;
      if (v271 == v270 && v27 == v269)
      {

        sub_21B1A7C90(v270, v269, 2u);
        goto LABEL_47;
      }

      v3 = *(v26 + 8);
      v2 = *&v269;
      LOBYTE(v33) = sub_21B20DB28();

      v6 = v267;
      sub_21B1A7C90(v271, v3, 2u);
      v34 = v270;
      v35 = v269;
      v36 = 2;
LABEL_40:
      a1 = sub_21B1A7C90(v34, v35, v36);
      v11 = v268;
      if ((v33 & 1) == 0)
      {
        return *&v4;
      }
    }

    if (v23 != 1)
    {
      goto LABEL_194;
    }

    v28 = *(v271 + 16);
    if (v28 != *(v270 + 16))
    {
      LOBYTE(v23) = 1;
      v162 = *(v26 + 8);
      sub_21B1A7C74(v271, v27, 1u);
      goto LABEL_242;
    }

    if (v28)
    {
      break;
    }

    v2 = *v26;
    v4 = *(v26 + 8);
    sub_21B1A7C74(v271, v27, 1u);
    sub_21B1A7C90(v271, *&v4, 1u);
    v29 = v269;
LABEL_47:
    a1 = sub_21B1A7C90(v5, v29, v3);
    v11 = v268;
  }

  v266 = *(v271 + 16);
  v29 = v269;
  if (v271 == v270)
  {
    v2 = *(v26 + 8);
    sub_21B1A7C74(v270, v27, 1u);
    v30 = v270;
    v31 = *&v2;
LABEL_23:
    sub_21B1A7C90(v30, v31, 1u);
    goto LABEL_47;
  }

  v38 = *(v26 + 8);
  sub_21B1A7C74(v271, v27, 1u);
  sub_21B1A7C74(v271, v38, 1u);
  sub_21B1A7C74(v270, v269, 1u);
  v250 = v38;
  sub_21B1A7C74(v271, v38, 1u);
  v39 = sub_21B1A7C74(v270, v269, 1u);
  v43 = 0;
  v263 = 1;
LABEL_52:
  v44 = *(v271 + 16);
  if (v43 >= v44)
  {
    __break(1u);
LABEL_225:
    __break(1u);
LABEL_226:
    v217 = v39;
    v218 = v40;
    v189 = v44;
    v190 = v42;
    v191 = v41;
    sub_21B1A7C74(v44, v41, v42);
    v192 = v217;
    v193 = v218;
    v194 = 3;
LABEL_230:
    sub_21B1A7C90(v192, v193, v194);
    sub_21B1A7C90(v189, v191, v190);
LABEL_231:
    v215 = v239;
    v214 = v240;
    sub_21B1A7C90(v239, v240, 1u);
    v213 = v252;
LABEL_232:
    v216 = v241;
    sub_21B1A7C90(v213, v241, 1u);
LABEL_233:
    sub_21B1A7C90(v213, v216, 1u);
    sub_21B1A7C90(v215, v214, 1u);
    sub_21B1A7C90(v215, v214, 1u);
    v205 = v213;
    v206 = v216;
    v210 = 1;
    goto LABEL_234;
  }

  v44 = *(v5 + 16);
  if (v43 >= v44)
  {
    goto LABEL_225;
  }

  v45 = v271 + 32 + 24 * v43;
  v4 = *v45;
  v46 = *(v45 + 8);
  v47 = *(v45 + 16);
  v48 = v270 + 32 + 24 * v43;
  v49 = *v48;
  v50 = *(v48 + 8);
  LODWORD(v5) = *(v48 + 16);
  if (v47 > 2)
  {
    if (v47 == 3)
    {
      if (v5 == 3)
      {
        sub_21B1A7C90(*v45, v46, 3u);
        v39 = sub_21B1A7C90(v49, v50, 3u);
        v5 = v270;
        if (*&v4 != v49)
        {
          goto LABEL_241;
        }

        goto LABEL_83;
      }

      v169 = *(v45 + 8);
      sub_21B1A7C74(*v48, *(v48 + 8), *(v48 + 16));
      v164 = *&v4;
      v165 = v169;
      v166 = 3;
    }

    else if (v47 == 4)
    {
      if (v5 == 4)
      {
        sub_21B1A7C90(*v45, v46, 4u);
        v39 = sub_21B1A7C90(v49, v50, 4u);
        v5 = v270;
        if (v4 != *&v49)
        {
          goto LABEL_241;
        }

        goto LABEL_83;
      }

      v168 = *(v45 + 8);
      sub_21B1A7C74(*v48, *(v48 + 8), *(v48 + 16));
      v164 = *&v4;
      v165 = v168;
      v166 = 4;
    }

    else
    {
      if (v5 == 5)
      {
        sub_21B1A7C90(*v45, v46, 5u);
        v39 = sub_21B1A7C90(v49, v50, 5u);
        v5 = v270;
        if ((v49 ^ LODWORD(v4)))
        {
          goto LABEL_241;
        }

        goto LABEL_83;
      }

      v167 = *(v45 + 8);
      sub_21B1A7C74(*v48, *(v48 + 8), *(v48 + 16));
      v164 = *&v4;
      v165 = v167;
      v166 = 5;
    }

LABEL_203:
    sub_21B1A7C90(v164, v165, v166);
    sub_21B1A7C90(v49, v50, v5);
    v5 = v270;
    goto LABEL_241;
  }

  if (!*(v45 + 16))
  {
    v3 = *v48;
    v2 = *(v48 + 8);
    v6 = *(v45 + 8);
    a1 = *v48;
    a2 = *&v2;
    if (*(v48 + 16))
    {
      goto LABEL_197;
    }

    sub_21B1A7C74(a1, *&v2, 0);
    sub_21B1A7C74(*&v4, v6, 0);
    sub_21B1A7C74(v3, *&v2, 0);
    sub_21B1A7C74(*&v4, v6, 0);
    v55 = *&v4;
    v56 = sub_21B1B76AC(*&v4, v3);
    sub_21B1A7C90(v55, v6, 0);
    sub_21B1A7C90(v3, *&v2, 0);
    sub_21B1A7C90(v3, *&v2, 0);
    v39 = sub_21B1A7C90(v55, v6, 0);
    v5 = v270;
    v3 = 1;
    if ((v56 & 1) == 0)
    {
      goto LABEL_241;
    }

    goto LABEL_83;
  }

  if (v47 != 1)
  {
    if (v5 == 2)
    {
      if (*&v4 == v49 && v46 == v50)
      {
        v259 = v47;
        v64 = *(v45 + 8);
        sub_21B1A7C74(*&v4, v46, 2u);
        sub_21B1A7C74(*&v4, v64, 2u);
        sub_21B1A7C90(*&v4, v64, 2u);
        v5 = v270;
        v39 = sub_21B1A7C90(*&v4, v64, v259);
      }

      else
      {
        v58 = *v48;
        v59 = *(v48 + 8);
        v60 = *(v45 + 8);
        v61 = *v45;
        v62 = sub_21B20DB28();
        sub_21B1A7C74(v58, v59, 2u);
        sub_21B1A7C74(v61, v60, 2u);
        sub_21B1A7C90(v61, v60, 2u);
        v63 = v58;
        v3 = 1;
        v39 = sub_21B1A7C90(v63, v59, 2u);
        v5 = v270;
        if ((v62 & 1) == 0)
        {
          goto LABEL_241;
        }
      }

      goto LABEL_83;
    }

    v170 = *(v45 + 8);
    sub_21B1A7C74(*v48, *(v48 + 8), *(v48 + 16));
    sub_21B1A7C74(*&v4, v170, 2u);
    v164 = *&v4;
    v165 = v170;
    v166 = 2;
    goto LABEL_203;
  }

  if (v5 != 1)
  {
    v163 = *(v45 + 8);
    sub_21B1A7C74(*v48, *(v48 + 8), *(v48 + 16));
    sub_21B1A7C74(*&v4, v163, 1u);
    v164 = *&v4;
    v165 = v163;
    v166 = 1;
    goto LABEL_203;
  }

  v51 = *(*&v4 + 16);
  if (v51 != *(v49 + 16))
  {
    v171 = v46;
    sub_21B1A7C74(v49, v50, 1u);
    sub_21B1A7C74(*&v4, v171, 1u);
    sub_21B1A7C74(v49, v50, 1u);
    sub_21B1A7C74(*&v4, v171, 1u);
    goto LABEL_240;
  }

  v258 = *(v48 + 8);
  v5 = v270;
  v264 = *(*&v4 + 16);
  if (!v51)
  {
    v53 = v46;
    v54 = *v48;
    v52 = *(v48 + 8);
    sub_21B1A7C74(*v48, v258, 1u);
    sub_21B1A7C74(*&v4, v53, 1u);
    sub_21B1A7C74(v54, v258, 1u);
    sub_21B1A7C74(*&v4, v53, 1u);
    goto LABEL_82;
  }

  v249 = v46;
  if (*&v4 == v49)
  {
    v52 = *(v48 + 8);
    sub_21B1A7C74(*&v4, v50, 1u);
    v53 = v249;
    sub_21B1A7C74(*&v4, v249, 1u);
    sub_21B1A7C74(*&v4, v258, 1u);
    sub_21B1A7C74(*&v4, v249, 1u);
    v54 = *&v4;
    goto LABEL_82;
  }

  v261 = *&v4 + 32;
  v260 = v49 + 32;
  v265 = *v48;
  sub_21B1A7C74(v49, v50, 1u);
  sub_21B1A7C74(*&v4, v249, 1u);
  sub_21B1A7C74(v49, v50, 1u);
  sub_21B1A7C74(*&v4, v249, 1u);
  sub_21B1A7C74(v49, v50, 1u);
  *&v262 = v4;
  result = sub_21B1A7C74(*&v4, v249, 1u);
  v66 = 0;
LABEL_89:
  if (v66 >= *(v262 + 16))
  {
    __break(1u);
LABEL_248:
    __break(1u);
LABEL_249:
    __break(1u);
LABEL_250:
    __break(1u);
LABEL_251:
    __break(1u);
LABEL_252:
    __break(1u);
    return result;
  }

  if (v66 >= *(v265 + 16))
  {
    goto LABEL_248;
  }

  v68 = v261 + 24 * v66;
  v70 = *v68;
  v69 = *(v68 + 8);
  LODWORD(v71) = *(v68 + 16);
  v72 = v260 + 24 * v66;
  v74 = *v72;
  v73 = *(v72 + 8);
  v75 = *(v72 + 16);
  if (v71 > 2)
  {
    if (v71 == 3)
    {
      if (v75 == 3)
      {
        v89 = *v72;
        v90 = v66;
        v91 = *(v72 + 8);
        sub_21B1A7C90(v70, v69, 3u);
        v92 = v91;
        v66 = v90;
        result = sub_21B1A7C90(v89, v92, 3u);
        if (v70 != v89)
        {
          goto LABEL_239;
        }

        goto LABEL_88;
      }

      v183 = v69;
      v173 = *v72;
      v174 = *(v72 + 8);
      sub_21B1A7C74(*v72, v174, *(v72 + 16));
      v175 = v70;
      v176 = v183;
      v177 = 3;
    }

    else if (v71 == 4)
    {
      if (v75 == 4)
      {
        v79 = *&v70;
        v80 = *v72;
        v81 = v70;
        v82 = *v72;
        v83 = v66;
        v84 = *(v72 + 8);
        sub_21B1A7C90(v81, v69, 4u);
        v85 = v84;
        v66 = v83;
        result = sub_21B1A7C90(v82, v85, 4u);
        if (v79 != v80)
        {
          goto LABEL_239;
        }

        goto LABEL_88;
      }

      v172 = v69;
      v173 = *v72;
      v174 = *(v72 + 8);
      sub_21B1A7C74(*v72, v174, *(v72 + 16));
      v175 = v70;
      v176 = v172;
      v177 = 4;
    }

    else
    {
      if (v75 == 5)
      {
        v99 = *v72;
        v100 = v66;
        v101 = *(v72 + 8);
        sub_21B1A7C90(v70, v69, 5u);
        v102 = v101;
        v66 = v100;
        result = sub_21B1A7C90(v99, v102, 5u);
        if ((v99 ^ v70))
        {
          goto LABEL_239;
        }

        goto LABEL_88;
      }

      v180 = v69;
      v173 = *v72;
      v174 = *(v72 + 8);
      sub_21B1A7C74(*v72, v174, *(v72 + 16));
      v175 = v70;
      v176 = v180;
      v177 = 5;
    }

    goto LABEL_211;
  }

  if (!v71)
  {
    v254 = v66;
    v86 = v69;
    if (*(v72 + 16))
    {
      v181 = *v72;
      v174 = *(v72 + 8);
      sub_21B1A7C74(v74, v73, v75);
      sub_21B1A7C74(v70, v86, 0);
      sub_21B1A7C90(v70, v86, 0);
      v182 = v181;
LABEL_212:
      v184 = v174;
      v185 = v75;
      goto LABEL_238;
    }

    v87 = *v72;
    v88 = *(v72 + 8);
    sub_21B1A7C74(v74, v73, 0);
    sub_21B1A7C74(v70, v86, 0);
    sub_21B1A7C74(v87, v88, 0);
    sub_21B1A7C74(v70, v86, 0);
    v256 = sub_21B1B76AC(v70, v87);
    sub_21B1A7C90(v70, v86, 0);
    sub_21B1A7C90(v87, v88, 0);
    sub_21B1A7C90(v87, v88, 0);
    result = sub_21B1A7C90(v70, v86, 0);
    v66 = v254;
    goto LABEL_115;
  }

  if (v71 != 1)
  {
    if (v75 != 2)
    {
      v178 = v69;
      v173 = *v72;
      v174 = *(v72 + 8);
      sub_21B1A7C74(*v72, v174, *(v72 + 16));
      sub_21B1A7C74(v70, v178, 2u);
      v175 = v70;
      v176 = v178;
      v177 = 2;
LABEL_211:
      sub_21B1A7C90(v175, v176, v177);
      v182 = v173;
      goto LABEL_212;
    }

    if (v70 == v74 && v69 == v73)
    {
      v67 = v69;
      sub_21B1A7C74(v70, v69, 2u);
      sub_21B1A7C74(v70, v67, 2u);
      sub_21B1A7C90(v70, v67, 2u);
      goto LABEL_87;
    }

    v255 = v66;
    v94 = v69;
    v95 = *v72;
    v96 = v70;
    v97 = *(v72 + 8);
    v256 = sub_21B20DB28();
    sub_21B1A7C74(v95, v97, 2u);
    sub_21B1A7C74(v96, v94, 2u);
    v98 = v94;
    v66 = v255;
    sub_21B1A7C90(v96, v98, 2u);
    result = sub_21B1A7C90(v95, v97, 2u);
LABEL_115:
    if ((v256 & 1) == 0)
    {
      goto LABEL_239;
    }

    goto LABEL_88;
  }

  if (v75 != 1)
  {
    v179 = v69;
    v173 = *v72;
    v174 = *(v72 + 8);
    sub_21B1A7C74(*v72, v174, *(v72 + 16));
    sub_21B1A7C74(v70, v179, 1u);
    v175 = v70;
    v176 = v179;
    v177 = 1;
    goto LABEL_211;
  }

  v76 = *(v70 + 16);
  if (v76 != *(v74 + 16))
  {
    v186 = v69;
    v187 = *v72;
    v188 = *(v72 + 8);
    sub_21B1A7C74(v74, v73, 1u);
    sub_21B1A7C74(v70, v186, 1u);
    sub_21B1A7C74(v187, v188, 1u);
    sub_21B1A7C74(v70, v186, 1u);
    goto LABEL_237;
  }

  v238 = *(v72 + 8);
  v253 = v66;
  if (!v76)
  {
    v67 = v69;
    v78 = *v72;
    sub_21B1A7C74(v74, v73, 1u);
    sub_21B1A7C74(v70, v67, 1u);
    sub_21B1A7C74(v78, v238, 1u);
    sub_21B1A7C74(v70, v67, 1u);
    goto LABEL_121;
  }

  v237 = v69;
  if (v70 == v74)
  {
    v77 = *(v72 + 8);
    sub_21B1A7C74(v70, v73, 1u);
    v67 = v237;
    sub_21B1A7C74(v70, v237, 1u);
    sub_21B1A7C74(v70, v77, 1u);
    sub_21B1A7C74(v70, v237, 1u);
    v78 = v70;
    goto LABEL_121;
  }

  v247 = v70 + 32;
  v245 = *(v70 + 16);
  v246 = v74 + 32;
  v103 = *v72;
  v104 = *(v72 + 8);
  sub_21B1A7C74(v74, v73, 1u);
  sub_21B1A7C74(v70, v237, 1u);
  sub_21B1A7C74(v103, v104, 1u);
  sub_21B1A7C74(v70, v237, 1u);
  v251 = v103;
  sub_21B1A7C74(v103, v104, 1u);
  v248 = v70;
  v105 = v245;
  result = sub_21B1A7C74(v70, v237, 1u);
  v106 = 0;
  while (2)
  {
    if (v106 >= *(v248 + 16))
    {
      goto LABEL_249;
    }

    if (v106 >= *(v251 + 16))
    {
      goto LABEL_250;
    }

    v108 = v247 + 24 * v106;
    v109 = *v108;
    v110 = *(v108 + 8);
    v111 = *(v108 + 16);
    v112 = v246 + 24 * v106;
    v113 = *v112;
    v114 = *(v112 + 8);
    v115 = *(v112 + 16);
    v257 = v106;
    if (v111 <= 2)
    {
      v240 = *(v112 + 8);
      v241 = v110;
      v252 = v109;
      if (v111)
      {
        if (v111 == 1)
        {
          if (v115 != 1)
          {
            v207 = v109;
            v208 = *v112;
            sub_21B1A7C74(v113, v114, v115);
            sub_21B1A7C74(v207, v241, 1u);
            sub_21B1A7C90(v207, v241, 1u);
            v205 = v208;
            v206 = v114;
            goto LABEL_221;
          }

          v116 = *(v109 + 16);
          if (v116 != *(v113 + 16))
          {
            v213 = v109;
            v214 = *(v112 + 8);
            v215 = *v112;
            sub_21B1A7C74(v113, v240, 1u);
            v216 = v241;
            sub_21B1A7C74(v213, v241, 1u);
            sub_21B1A7C74(v215, v240, 1u);
            sub_21B1A7C74(v213, v241, 1u);
            goto LABEL_233;
          }

          v233 = 1;
          if (v116)
          {
            if (v109 == v113)
            {
              v117 = *(v112 + 8);
              sub_21B1A7C74(v109, v114, 1u);
              v71 = v241;
              sub_21B1A7C74(v252, v241, 1u);
              sub_21B1A7C74(v252, v114, 1u);
              sub_21B1A7C74(v252, v241, 1u);
              v107 = v252;
              v239 = v252;
              goto LABEL_189;
            }

            v234 = *(v109 + 16);
            v239 = *v112;
            sub_21B1A7C74(v113, v114, 1u);
            sub_21B1A7C74(v252, v241, 1u);
            sub_21B1A7C74(v239, v114, 1u);
            sub_21B1A7C74(v252, v241, 1u);
            sub_21B1A7C74(v239, v114, 1u);
            result = sub_21B1A7C74(v252, v241, 1u);
            v134 = v239;
            v135 = v252;
            v136 = 0;
            v137 = (v239 + 48);
            v138 = (v252 + 48);
            while (2)
            {
              if (v136 >= *(v135 + 16))
              {
                goto LABEL_251;
              }

              if (v136 >= *(v134 + 16))
              {
                goto LABEL_252;
              }

              v39 = *(v138 - 2);
              v40 = *(v138 - 1);
              v144 = *v138;
              v44 = *(v137 - 2);
              v41 = *(v137 - 1);
              v42 = *v137;
              v242 = v137;
              v244 = v138;
              if (v144 > 2)
              {
                if (v144 == 3)
                {
                  if (v42 != 3)
                  {
                    goto LABEL_226;
                  }

                  v152 = *(v138 - 2);
                  v153 = v44;
                  v154 = v41;
                  sub_21B1A7C90(v39, v40, 3u);
                  result = sub_21B1A7C90(v153, v154, 3u);
                  if (v152 != v153)
                  {
                    goto LABEL_231;
                  }
                }

                else if (v144 == 4)
                {
                  if (v42 != 4)
                  {
                    v219 = *(v138 - 2);
                    v220 = *(v138 - 1);
                    v189 = *(v137 - 2);
                    v190 = *v137;
                    v191 = *(v137 - 1);
                    sub_21B1A7C74(v44, v41, v42);
                    v192 = v219;
                    v193 = v220;
                    v194 = 4;
                    goto LABEL_230;
                  }

                  v147 = *(v138 - 2);
                  v148 = *(v137 - 2);
                  v149 = *(v137 - 1);
                  sub_21B1A7C90(v39, v40, 4u);
                  result = sub_21B1A7C90(v148, v149, 4u);
                  if (v147 != *&v148)
                  {
                    goto LABEL_231;
                  }
                }

                else
                {
                  if (v42 != 5)
                  {
                    v226 = *(v138 - 2);
                    v227 = *(v138 - 1);
                    v189 = *(v137 - 2);
                    v190 = *v137;
                    v191 = *(v137 - 1);
                    sub_21B1A7C74(v44, v41, v42);
                    v192 = v226;
                    v193 = v227;
                    v194 = 5;
                    goto LABEL_230;
                  }

                  v155 = *(v138 - 2);
                  v156 = v44;
                  v157 = v41;
                  sub_21B1A7C90(v39, v40, 5u);
                  result = sub_21B1A7C90(v156, v157, 5u);
                  if ((v156 ^ v155))
                  {
                    goto LABEL_231;
                  }
                }

                goto LABEL_162;
              }

              if (*v138)
              {
                if (v144 != 1)
                {
                  if (v42 != 2)
                  {
                    v213 = v135;
                    v221 = v39;
                    v222 = v40;
                    v215 = v134;
                    v223 = *(v137 - 2);
                    v224 = *v137;
                    v225 = *(v137 - 1);
                    sub_21B1A7C74(v44, v41, v42);
                    sub_21B1A7C74(v221, v222, 2u);
                    sub_21B1A7C90(v221, v222, 2u);
                    sub_21B1A7C90(v223, v225, v224);
                    v214 = v240;
                    sub_21B1A7C90(v215, v240, 1u);
                    goto LABEL_232;
                  }

                  if (v39 == v44 && v40 == v41)
                  {
                    v145 = *(v138 - 2);
                    v146 = *(v138 - 1);
                    sub_21B1A7C74(v39, v40, 2u);
                    sub_21B1A7C74(v145, v146, 2u);
                    sub_21B1A7C90(v145, v146, 2u);
                    result = sub_21B1A7C90(v145, v146, 2u);
                  }

                  else
                  {
                    v158 = *(v138 - 2);
                    v236 = *(v138 - 1);
                    v159 = *(v137 - 2);
                    v228 = v44;
                    v160 = v41;
                    v232 = sub_21B20DB28();
                    sub_21B1A7C74(v159, v160, 2u);
                    sub_21B1A7C74(v158, v236, 2u);
                    sub_21B1A7C90(v158, v236, 2u);
                    result = sub_21B1A7C90(v228, v160, 2u);
                    if ((v232 & 1) == 0)
                    {
                      goto LABEL_231;
                    }
                  }

                  goto LABEL_162;
                }

                v235 = *(v138 - 1);
                v231 = *(v138 - 2);
                if (v42 != 1)
                {
                  goto LABEL_214;
                }

                v139 = *(v137 - 2);
                v140 = *(v137 - 1);
                sub_21B1A7C74(v44, v41, 1u);
                sub_21B1A7C74(v231, v235, 1u);
                sub_21B1A7C74(v139, v140, 1u);
                sub_21B1A7C74(v231, v235, 1u);
                v229 = sub_21B1A6CB8(v231, v139);
                sub_21B1A7C90(v231, v235, 1u);
                sub_21B1A7C90(v139, v140, 1u);
                sub_21B1A7C90(v139, v140, 1u);
                v141 = v231;
                v142 = v235;
                v143 = 1;
              }

              else
              {
                v235 = *(v138 - 1);
                v231 = *(v138 - 2);
                if (*v137)
                {
LABEL_214:
                  v189 = *(v137 - 2);
                  v190 = *v137;
                  v191 = *(v137 - 1);
                  sub_21B1A7C74(v44, v41, v42);
                  sub_21B1A7C74(v231, v235, v144);
                  v192 = v231;
                  v193 = v235;
                  v194 = v144;
                  goto LABEL_230;
                }

                v150 = *(v137 - 2);
                v151 = v41;
                v230 = v41;
                sub_21B1A7C74(v44, v41, 0);
                sub_21B1A7C74(v231, v235, 0);
                sub_21B1A7C74(v150, v151, 0);
                sub_21B1A7C74(v231, v235, 0);
                v229 = sub_21B1B76AC(v231, v150);
                sub_21B1A7C90(v231, v235, 0);
                sub_21B1A7C90(v150, v230, 0);
                sub_21B1A7C90(v150, v230, 0);
                v141 = v231;
                v142 = v235;
                v143 = 0;
              }

              result = sub_21B1A7C90(v141, v142, v143);
              if ((v229 & 1) == 0)
              {
                goto LABEL_231;
              }

LABEL_162:
              ++v136;
              v137 = v242 + 24;
              v138 = v244 + 24;
              v135 = v252;
              v134 = v239;
              if (v234 == v136)
              {
                v117 = v240;
                sub_21B1A7C90(v239, v240, 1u);
                v71 = v241;
                sub_21B1A7C90(v252, v241, 1u);
                goto LABEL_188;
              }

              continue;
            }
          }

          v117 = *(v112 + 8);
          v133 = *v112;
          sub_21B1A7C74(v113, v114, 1u);
          v71 = v241;
          sub_21B1A7C74(v252, v241, 1u);
          v239 = v133;
          sub_21B1A7C74(v133, v114, 1u);
          sub_21B1A7C74(v252, v241, 1u);
LABEL_188:
          v107 = v252;
LABEL_189:
          sub_21B1A7C90(v107, v71, 1u);
          sub_21B1A7C90(v239, v117, 1u);
          sub_21B1A7C90(v239, v117, 1u);
          v105 = v245;
LABEL_124:
          result = sub_21B1A7C90(v107, v71, v233);
          LOBYTE(v71) = 1;
        }

        else
        {
          if (v115 != 2)
          {
            v211 = v109;
            v187 = v251;
            v212 = *v112;
            sub_21B1A7C74(v113, v114, v115);
            sub_21B1A7C74(v211, v241, 2u);
            sub_21B1A7C90(v211, v241, 2u);
            sub_21B1A7C90(v212, v114, v115);
            goto LABEL_236;
          }

          v71 = v110;
          if (v109 == v113 && v110 == v114)
          {
            v233 = v111;
            v107 = v109;
            sub_21B1A7C74(v109, v110, 2u);
            sub_21B1A7C74(v107, v241, 2u);
            sub_21B1A7C90(v107, v241, 2u);
            goto LABEL_124;
          }

          v127 = v109;
          v128 = *v112;
          LODWORD(v252) = sub_21B20DB28();
          sub_21B1A7C74(v128, v240, 2u);
          sub_21B1A7C74(v127, v241, 2u);
          sub_21B1A7C90(v127, v241, 2u);
          v129 = v128;
          v105 = v245;
          result = sub_21B1A7C90(v129, v240, 2u);
          LOBYTE(v71) = 1;
          if ((v252 & 1) == 0)
          {
            goto LABEL_235;
          }
        }
      }

      else
      {
        if (*(v112 + 16))
        {
          v209 = *v112;
          sub_21B1A7C74(v113, v114, v115);
          sub_21B1A7C74(v252, v241, 0);
          sub_21B1A7C90(v252, v241, 0);
          v205 = v209;
          v206 = v114;
          goto LABEL_221;
        }

        v122 = *v112;
        sub_21B1A7C74(v113, v114, 0);
        sub_21B1A7C74(v252, v241, 0);
        sub_21B1A7C74(v122, v114, 0);
        sub_21B1A7C74(v252, v241, 0);
        v243 = sub_21B1B76AC(v252, v122);
        sub_21B1A7C90(v252, v241, 0);
        sub_21B1A7C90(v122, v114, 0);
        v123 = v122;
        v105 = v245;
        sub_21B1A7C90(v123, v114, 0);
        LOBYTE(v71) = 1;
        result = sub_21B1A7C90(v252, v241, 0);
        if ((v243 & 1) == 0)
        {
          goto LABEL_235;
        }
      }

LABEL_125:
      v106 = v257 + 1;
      if (v257 + 1 != v105)
      {
        continue;
      }

      v78 = v251;
      sub_21B1A7C90(v251, v238, 1u);
      v70 = v248;
      v67 = v237;
      sub_21B1A7C90(v248, v237, 1u);
LABEL_121:
      v251 = v78;
      sub_21B1A7C90(v70, v67, 1u);
      sub_21B1A7C90(v78, v238, 1u);
      sub_21B1A7C90(v78, v238, 1u);
      v66 = v253;
LABEL_87:
      result = sub_21B1A7C90(v70, v67, v71);
LABEL_88:
      if (++v66 != v264)
      {
        goto LABEL_89;
      }

      v54 = v265;
      v52 = v258;
      sub_21B1A7C90(v265, v258, 1u);
      v4 = *&v262;
      v53 = v249;
      sub_21B1A7C90(v262, v249, 1u);
      v5 = v270;
LABEL_82:
      sub_21B1A7C90(*&v4, v53, 1u);
      sub_21B1A7C90(v54, v52, 1u);
      sub_21B1A7C90(v54, v52, 1u);
      v3 = 1;
      v39 = sub_21B1A7C90(*&v4, v53, 1u);
LABEL_83:
      ++v43;
      v6 = v267;
      if (v43 == v266)
      {
        v29 = v269;
        sub_21B1A7C90(v5, v269, 1u);
        v2 = *&v271;
        v4 = *&v250;
        sub_21B1A7C90(v271, v250, 1u);
        sub_21B1A7C90(v5, v269, 1u);
        sub_21B1A7C90(v271, v250, 1u);
        v30 = v271;
        v31 = v250;
        goto LABEL_23;
      }

      goto LABEL_52;
    }

    break;
  }

  if (v111 == 3)
  {
    if (v115 != 3)
    {
      v201 = v109;
      v202 = v110;
      v197 = *v112;
      sub_21B1A7C74(v113, v114, v115);
      v198 = v201;
      v199 = v202;
      v200 = 3;
      goto LABEL_218;
    }

    v124 = v109;
    v125 = *v112;
    sub_21B1A7C90(v109, v110, 3u);
    result = sub_21B1A7C90(v125, v114, 3u);
    v32 = v124 == v125;
    v105 = v245;
    if (!v32)
    {
      goto LABEL_235;
    }

    goto LABEL_125;
  }

  if (v111 != 4)
  {
    if (v115 != 5)
    {
      v195 = v109;
      v196 = v110;
      v197 = *v112;
      sub_21B1A7C74(v113, v114, v115);
      v198 = v195;
      v199 = v196;
      v200 = 5;
      goto LABEL_218;
    }

    v130 = v109;
    v131 = *v112;
    sub_21B1A7C90(v109, v110, 5u);
    result = sub_21B1A7C90(v131, v114, 5u);
    v132 = v131 ^ v130;
    v105 = v245;
    if (v132)
    {
      goto LABEL_235;
    }

    goto LABEL_125;
  }

  if (v115 == 4)
  {
    v118 = *&v109;
    v119 = *v112;
    v120 = *v112;
    sub_21B1A7C90(v109, v110, 4u);
    v121 = v120;
    v105 = v245;
    result = sub_21B1A7C90(v121, v114, 4u);
    if (v118 != v119)
    {
      goto LABEL_235;
    }

    goto LABEL_125;
  }

  v203 = v109;
  v204 = v110;
  v197 = *v112;
  sub_21B1A7C74(v113, v114, v115);
  v198 = v203;
  v199 = v204;
  v200 = 4;
LABEL_218:
  sub_21B1A7C90(v198, v199, v200);
  v205 = v197;
  v206 = v114;
LABEL_221:
  v210 = v115;
LABEL_234:
  sub_21B1A7C90(v205, v206, v210);
LABEL_235:
  v187 = v251;
LABEL_236:
  v188 = v238;
  sub_21B1A7C90(v187, v238, 1u);
  v70 = v248;
  v186 = v237;
  sub_21B1A7C90(v248, v237, 1u);
LABEL_237:
  sub_21B1A7C90(v70, v186, 1u);
  sub_21B1A7C90(v187, v188, 1u);
  sub_21B1A7C90(v187, v188, 1u);
  v182 = v70;
  v184 = v186;
  v185 = 1;
LABEL_238:
  sub_21B1A7C90(v182, v184, v185);
LABEL_239:
  v50 = v258;
  sub_21B1A7C90(v265, v258, 1u);
  v4 = *&v262;
  v171 = v249;
  v49 = v265;
  sub_21B1A7C90(v262, v249, 1u);
LABEL_240:
  v5 = v270;
  sub_21B1A7C90(*&v4, v171, 1u);
  sub_21B1A7C90(v49, v50, 1u);
  sub_21B1A7C90(v49, v50, 1u);
  sub_21B1A7C90(*&v4, v171, 1u);
LABEL_241:
  LOBYTE(v23) = 1;
  sub_21B1A7C90(v5, v269, 1u);
  v162 = v250;
  sub_21B1A7C90(v271, v250, 1u);
  sub_21B1A7C90(v5, v269, 1u);
  sub_21B1A7C90(v271, v250, 1u);
LABEL_242:
  v27 = v162;
LABEL_243:
  sub_21B1A7C90(v271, v27, v3);
LABEL_244:
  sub_21B1A7C90(v5, v269, v23);
LABEL_245:
  v4 = 0.0;
  return *&v4;
}

uint64_t sub_21B1B94D4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = result + 64;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(result + 64);
  v9 = (v6 + 63) >> 6;
  v29 = result;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v30 = (v8 - 1) & v8;
LABEL_13:
    v13 = v10 | (v4 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    v17 = *(*(v3 + 56) + 8 * v13);
    v18 = v15 == 0;

    if (!v15)
    {
      return v18;
    }

    v19 = sub_21B1B9778(v16, v15);
    v21 = v20;

    if ((v21 & 1) == 0 || *(*(*(a2 + 56) + 8 * v19) + 16) != *(v17 + 16))
    {

      return 0;
    }

    MEMORY[0x28223BE20](v22, v23);

    v25 = sub_21B1BBDC0(v24, sub_21B1BC110);
    v27 = ~v26;
    sub_21B1BC124(v25, v28, v26);

    v3 = v29;
    v8 = v30;
    if (v27)
    {
      return v18;
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v30 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21B1B96CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(a4 + 16))
  {
    return 1;
  }

  v5 = sub_21B1B9778(a1, a2);
  if (v6)
  {
    sub_21B17FB4C(*(a4 + 56) + 40 * v5, v10);
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    v7 = sub_21B20CE18();
    __swift_destroy_boxed_opaque_existential_1(v10);
    v8 = v7 ^ 1;
  }

  else
  {
    v8 = 1;
  }

  return v8 & 1;
}

unint64_t sub_21B1B9778(uint64_t a1, uint64_t a2)
{
  sub_21B20DC88();
  sub_21B20D388();
  v4 = sub_21B20DCA8();

  return sub_21B1B98E0(a1, a2, v4);
}

unint64_t sub_21B1B97F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[9] = a1;
  v8[10] = a2;
  v8[11] = a3;
  sub_21B20DC88();
  DatasetRow.hash(into:)(v8);
  v6 = sub_21B20DCA8();

  return sub_21B1B9998(a1, a2, a3, v6);
}

unint64_t sub_21B1B987C(uint64_t a1)
{
  sub_21B20D7B8();
  v2 = sub_21B20D278();

  return sub_21B1B9A8C(a1, v2);
}

unint64_t sub_21B1B98E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_21B20DB28())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_21B1B9998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a4 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v10 = ~v5;
    do
    {
      v11 = (*(v4 + 48) + 24 * v6);
      v12 = v11[2];
      if (*(v12 + 16) == *(a3 + 16))
      {
        v13 = v11[1];
        v15[3] = *v11;
        v15[4] = v13;
        v15[5] = v12;
        v15[0] = a1;
        v15[1] = a2;
        v15[2] = a3;
        if (sub_21B1DB110(v15))
        {
          break;
        }
      }

      v6 = (v6 + 1) & v10;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_21B1B9A8C(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v4 = sub_21B20D7B8();
  MEMORY[0x28223BE20](v4, v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v21 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v6 + 16);
    v12 = v6 + 16;
    v13 = v14;
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    do
    {
      v17 = v12;
      v13(v8, *(v23 + 48) + v15 * v10, v4);
      v18 = sub_21B20D2A8();
      (*v16)(v8, v4);
      if (v18)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      v12 = v17;
    }

    while (((*(v21 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

uint64_t sub_21B1B9C24(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_21B20DC88();
  sub_21B20D388();
  v8 = sub_21B20DCA8();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_21B20DB28() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_21B1B9FD4(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_21B1B9D74(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC68, &qword_21B211CA8);
  result = sub_21B20D678();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_21B20DC88();
      sub_21B20D388();
      result = sub_21B20DCA8();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_21B1B9FD4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_21B1B9D74(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_21B18AFEC();
      goto LABEL_16;
    }

    sub_21B1BA154(v8 + 1);
  }

  v10 = *v4;
  sub_21B20DC88();
  sub_21B20D388();
  result = sub_21B20DCA8();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_21B20DB28();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_21B20DBE8();
  __break(1u);
  return result;
}

uint64_t sub_21B1BA154(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC68, &qword_21B211CA8);
  result = sub_21B20D678();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_21B20DC88();

      sub_21B20D388();
      result = sub_21B20DCA8();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_21B1BA38C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_21B1B9778(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_21B203648();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_21B1BA8B0(v6, v8);
  *v3 = v8;
  return v9;
}

void *_s12PoirotBlocks18DatasetDescriptionV12removeLayout8withNameAA0c6ColumnF0VSgSS_tF_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  result = sub_21B1B9778(a1, a2);
  if (v7)
  {
    v8 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_21B2037CC();
      v10 = v12;
    }

    v11 = *(v10 + 56) + 24 * v8;
    *a3 = *v11;
    *(a3 + 8) = *(v11 + 8);
    result = sub_21B1BAA60(v8, v10);
    *v4 = v10;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  return result;
}

double sub_21B1BA4D4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_21B1B9778(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_21B203964();
      v10 = v12;
    }

    sub_21B17C284((*(v10 + 56) + 40 * v8), a3);
    sub_21B1BAC1C(v8, v10);
    *v4 = v10;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

double sub_21B1BA5C0@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_21B1B987C(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_21B2040D8();
      v9 = v13;
    }

    v10 = *(v9 + 48);
    v11 = sub_21B20D7B8();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    sub_21B17C304((*(v9 + 56) + 32 * v7), a2);
    sub_21B1BAE04(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_21B1BA6DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v10 = v6;
  v12 = sub_21B1B9778(a1, a2);
  if (v13)
  {
    v14 = v12;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v6;
    v26 = *v10;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a5();
      v16 = v26;
    }

    v17 = *(v16 + 56);
    v18 = a3(0);
    v25 = *(v18 - 8);
    (*(v25 + 32))(a6, v17 + *(v25 + 72) * v14, v18);
    sub_21B1BB0E8(v14, v16, a4);
    *v10 = v16;
    v19 = *(v25 + 56);
    v20 = a6;
    v21 = 0;
    v22 = v18;
  }

  else
  {
    v23 = a3(0);
    v19 = *(*(v23 - 8) + 56);
    v22 = v23;
    v20 = a6;
    v21 = 1;
  }

  return v19(v20, v21, 1, v22);
}

uint64_t sub_21B1BA8B0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21B20D658() + 1) & ~v5;
    do
    {
      sub_21B20DC88();

      sub_21B20D388();
      v9 = sub_21B20DCA8();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_21B1BAA60(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21B20D658() + 1) & ~v5;
    do
    {
      sub_21B20DC88();

      sub_21B20D388();
      v10 = sub_21B20DCA8();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = v15 + 24 * v3;
        v17 = (v15 + 24 * v6);
        if (v3 != v6 || v16 >= v17 + 24)
        {
          v9 = *v17;
          *(v16 + 16) = *(v17 + 2);
          *v16 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_21B1BAC1C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21B20D658() + 1) & ~v5;
    do
    {
      sub_21B20DC88();

      sub_21B20D388();
      v11 = sub_21B20DCA8();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 40 * v3;
        v18 = (v16 + 40 * v6);
        if (v3 != v6 || v17 >= v18 + 40)
        {
          v9 = *v18;
          v10 = v18[1];
          *(v17 + 32) = *(v18 + 4);
          *v17 = v9;
          *(v17 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_21B1BAE04(int64_t a1, uint64_t a2)
{
  v4 = sub_21B20D7B8();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4, v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = sub_21B20D658();
    v15 = v13;
    v39 = (v14 + 1) & v13;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v40 = *(v16 + 56);
    v37 = (v16 - 8);
    v38 = v17;
    do
    {
      v18 = v10;
      v19 = v40 * v12;
      v20 = v15;
      v21 = v16;
      v38(v9, *(a2 + 48) + v40 * v12, v4);
      v22 = sub_21B20D278();
      result = (*v37)(v9, v4);
      v15 = v20;
      v23 = v22 & v20;
      if (a1 >= v39)
      {
        if (v23 >= v39 && a1 >= v23)
        {
LABEL_15:
          v26 = *(a2 + 48);
          result = v26 + v40 * a1;
          v27 = v26 + v19 + v40;
          v28 = v40 * a1 < v19 || result >= v27;
          v16 = v21;
          if (v28)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v15 = v20;
            v10 = v18;
          }

          else
          {
            v29 = v40 * a1 == v19;
            v10 = v18;
            if (!v29)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v20;
            }
          }

          v30 = *(a2 + 56);
          v31 = (v30 + 32 * a1);
          v32 = (v30 + 32 * v12);
          if (a1 != v12 || v31 >= v32 + 2)
          {
            v33 = v32[1];
            *v31 = *v32;
            v31[1] = v33;
            a1 = v12;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v39 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v16 = v21;
      v10 = v18;
LABEL_4:
      v12 = (v12 + 1) & v15;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(a2 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v36;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_21B1BB0E8(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (sub_21B20D658() + 1) & ~v6;
    while (1)
    {
      sub_21B20DC88();

      sub_21B20D388();
      v11 = sub_21B20DCA8();

      v12 = v11 & v9;
      if (v4 >= v10)
      {
        break;
      }

      if (v12 < v10)
      {
        goto LABEL_10;
      }

LABEL_11:
      v13 = *(a2 + 48);
      v14 = (v13 + 16 * v4);
      v15 = (v13 + 16 * v7);
      if (v4 != v7 || v14 >= v15 + 1)
      {
        *v14 = *v15;
      }

      v16 = *(a2 + 56);
      v17 = *(*(a3(0) - 8) + 72);
      v18 = v17 * v4;
      result = v16 + v17 * v4;
      v19 = v17 * v7;
      v20 = v16 + v17 * v7 + v17;
      if (v18 < v19 || result >= v20)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v18 == v19)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v12 < v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v12)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_21B1BB2F0(unint64_t result, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = result;
  v6 = a2 + 64;
  v7 = -1 << *(a2 + 32);
  v8 = (result + 1) & ~v7;
  if ((*(a2 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v11 = ~v7;
    v12 = (sub_21B20D658() + 1) & ~v7;
    while (1)
    {
      sub_21B20DC88();

      sub_21B20D388();
      v13 = sub_21B20DCA8();

      v14 = v13 & v11;
      if (v5 >= v12)
      {
        break;
      }

      if (v14 < v12)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v5);
      v17 = (v15 + 16 * v8);
      if (v5 != v8 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8) + 72);
      v20 = v19 * v5;
      result = v18 + v19 * v5;
      v21 = v19 * v8;
      v22 = v18 + v19 * v8 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v5 = v8;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v5 = v8;
LABEL_5:
      v8 = (v8 + 1) & v11;
      if (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v12)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v5 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v6 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v5) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_21B1BB4EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_21B1B9778(a4, a5);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = v14[3];
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 >= v20 && (a6 & 1) == 0)
    {
      v23 = v15;
      sub_21B2037CC();
      v15 = v23;
      goto LABEL_8;
    }

    sub_21B200DD8(v20, a6 & 1);
    v15 = sub_21B1B9778(a4, a5);
    if ((v21 & 1) != (v24 & 1))
    {
LABEL_16:
      result = sub_21B20DBF8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v25 = *v7;
  if (v21)
  {
    v26 = (v25[7] + 24 * v15);
    *v26 = a1;
    v26[1] = a2;
    v26[2] = a3;
  }

  else
  {
    sub_21B204FA8(v15, a4, a5, a1, a2, a3, v25);
  }
}

uint64_t sub_21B1BB660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v16 = *v7;
  v17 = sub_21B1B97F0(a4, a5, a6);
  v19 = v16[2];
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = v16[3];
  if (v24 < v22 || (a7 & 1) == 0)
  {
    if (v24 >= v22 && (a7 & 1) == 0)
    {
      v25 = v17;
      sub_21B203D84();
      v17 = v25;
      goto LABEL_8;
    }

    sub_21B2016F0(v22, a7 & 1);
    v17 = sub_21B1B97F0(a4, a5, a6);
    if ((v23 & 1) != (v26 & 1))
    {
LABEL_16:
      result = sub_21B20DBF8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v27 = *v8;
  if (v23)
  {
    v28 = (v27[7] + 24 * v17);
    *v28 = a1;
    v28[1] = a2;
    v28[2] = a3;
  }

  else
  {
    sub_21B2050A8(v17, a4, a5, a6, a1, a2, a3, v27);
  }
}

_OWORD *sub_21B1BB840(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_21B20D7B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_21B1B987C(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_21B2040D8();
      goto LABEL_7;
    }

    sub_21B201FBC(v18, a3 & 1);
    v24 = sub_21B1B987C(a2);
    if ((v19 & 1) == (v25 & 1))
    {
      v15 = v24;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_21B20511C(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_21B20DBF8();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = (v21[7] + 32 * v15);
  __swift_destroy_boxed_opaque_existential_1(v22);

  return sub_21B17C304(a1, v22);
}

uint64_t sub_21B1BBAC0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(void), uint64_t (*a7)(void), void (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v8;
  v16 = *v8;
  v18 = sub_21B1B9778(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_17;
  }

  v22 = v17;
  v23 = *(v16 + 24);
  if (v23 < v21 || (a4 & 1) == 0)
  {
    if (v23 >= v21 && (a4 & 1) == 0)
    {
      a5();
      goto LABEL_7;
    }

    a6();
    v32 = sub_21B1B9778(a2, a3);
    if ((v22 & 1) == (v33 & 1))
    {
      v18 = v32;
      v24 = *v11;
      if (v22)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_21B20DBF8();
    __break(1u);
    return result;
  }

LABEL_7:
  v24 = *v11;
  if (v22)
  {
LABEL_8:
    v25 = *(v24 + 56);
    v26 = a7(0);
    v27 = *(v26 - 8);
    v28 = *(v27 + 40);
    v29 = v26;
    v30 = v25 + *(v27 + 72) * v18;

    return v28(v30, a1, v29);
  }

LABEL_13:
  a8(v18, a2, a3, a1, v24);
}

uint64_t sub_21B1BBC7C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_21B1B9778(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = result;
      sub_21B20498C();
      result = v19;
      goto LABEL_8;
    }

    sub_21B202D08(v16, a4 & 1);
    result = sub_21B1B9778(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      result = sub_21B20DBF8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * result) = a1;
  }

  else
  {
    sub_21B204F60(result, a2, a3, a1, v21);
  }

  return result;
}

uint64_t sub_21B1BBDC0(uint64_t a1, uint64_t (*a2)(void *, _BYTE *))
{
  v25 = a2;
  v2 = a1;
  v3 = a1 + 64;
  result = sub_21B20D648();
  v5 = 1 << *(v2 + 32);
  if (result == v5)
  {
    return 0;
  }

  else
  {
    v6 = result;
    v20 = v2;
    v21 = v2 + 72;
    while ((v6 & 0x8000000000000000) == 0 && v6 < v5)
    {
      v8 = v6 >> 6;
      if ((*(v3 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_21;
      }

      v9 = *(v2 + 36);
      v10 = (*(v2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_21B17FB4C(*(v2 + 56) + 40 * v6, v24);
      v22[0] = v11;
      v22[1] = v12;
      sub_21B17C284(v24, v23);

      LOBYTE(v12) = v25(v22, v23);
      result = sub_21B1BC13C(v22);
      if (v12)
      {
        return v6;
      }

      v7 = 1 << *(v2 + 32);
      if (v6 >= v7)
      {
        goto LABEL_22;
      }

      v13 = *(v3 + 8 * v8);
      if ((v13 & (1 << v6)) == 0)
      {
        goto LABEL_23;
      }

      if (v9 != *(v2 + 36))
      {
        goto LABEL_24;
      }

      v14 = v13 & (-2 << (v6 & 0x3F));
      if (v14)
      {
        v7 = __clz(__rbit64(v14)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v8 << 6;
        v16 = v8 + 1;
        v17 = (v21 + 8 * v8);
        while (v16 < (v7 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            result = sub_21B17C2EC(v6, v9, 0);
            v2 = v20;
            v7 = __clz(__rbit64(v18)) + v15;
            goto LABEL_5;
          }
        }

        result = sub_21B17C2EC(v6, v9, 0);
        v2 = v20;
      }

LABEL_5:
      v5 = 1 << *(v2 + 32);
      v6 = v7;
      if (v7 == v5)
      {
        return 0;
      }
    }

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

  return result;
}

uint64_t sub_21B1BBFE4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x21CEEBD20](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_21B1B9C24(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_21B1BC07C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_21B1BC0C4(uint64_t result, int a2, int a3)
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

uint64_t sub_21B1BC124(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_21B17C2EC(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_21B1BC13C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EBA8, &qword_21B2115C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21B1BC1A4()
{
  result = qword_27CD6F210;
  if (!qword_27CD6F210)
  {
    type metadata accessor for DatasetColumnDescription(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F210);
  }

  return result;
}

uint64_t sub_21B1BC200(uint64_t a1, unsigned __int8 a2)
{
  sub_21B20D388();
}

unint64_t BlockType.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v5 = 0x646E6957656D6974;
    v6 = 0x6C656E69746E6573;
    if (v1 != 8)
    {
      v6 = 0x6574656D61726170;
    }

    if (v1 != 7)
    {
      v5 = v6;
    }

    v7 = 1852403562;
    if (v1 != 5)
    {
      v7 = 0x6966654472657375;
    }

    if (*v0 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x7461676572676761;
    v3 = 0x6974636172747865;
    if (v1 != 2)
    {
      v3 = 0x6574616C706D6574;
    }

    if (!*v0)
    {
      v2 = 0xD000000000000010;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

PoirotBlocks::BlockType_optional __swiftcall BlockType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21B20D828();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_21B1BC550()
{
  result = qword_27CD6F698;
  if (!qword_27CD6F698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F698);
  }

  return result;
}

uint64_t sub_21B1BC5A4()
{
  v1 = *v0;
  sub_21B20DC88();
  sub_21B1BC200(v3, v1);
  return sub_21B20DCA8();
}

uint64_t sub_21B1BC5F4(uint64_t a1)
{
  v2 = *v1;
  sub_21B20DC88();
  sub_21B1BC200(v4, v2);
  return sub_21B20DCA8();
}

unint64_t sub_21B1BC644@<X0>(unint64_t *a1@<X8>)
{
  result = BlockType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for BlockType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BlockType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_21B1BC86C()
{
  result = qword_27CD6F6A0;
  if (!qword_27CD6F6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F6A0);
  }

  return result;
}

void __swiftcall RecipeMetadata.init(name:version:endToEndTelemetryEventName:)(PoirotBlocks::RecipeMetadata *__return_ptr retstr, Swift::String name, Swift::UInt version, Swift::String_optional endToEndTelemetryEventName)
{
  retstr->name = name;
  retstr->version = version;
  retstr->endToEndTelemetryEventName = endToEndTelemetryEventName;
}

uint64_t RecipeMetadata.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F6A8, &qword_21B215750);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v22 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B1BCB10();
  sub_21B20DCD8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = 0;
  v10 = sub_21B20D8C8();
  v13 = v12;
  v14 = v10;
  v25 = 1;
  v15 = sub_21B20D8A8();
  LODWORD(v22) = v16;
  v23 = v15;
  v24 = 2;
  v17 = sub_21B20D868();
  v19 = v18;
  v20 = v23;
  if (v22)
  {
    v20 = 0;
  }

  v22 = v17;
  v23 = v20;
  (*(v6 + 8))(v9, v5);
  *a2 = v14;
  a2[1] = v13;
  v21 = v22;
  a2[2] = v23;
  a2[3] = v21;
  a2[4] = v19;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_21B1BCB10()
{
  result = qword_27CD6F6B0;
  if (!qword_27CD6F6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F6B0);
  }

  return result;
}

uint64_t RecipeMetadata.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F6B8, &qword_21B215758);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v11 - v6;
  v8 = v1[2];
  v11[1] = v1[3];
  v12 = v8;
  v11[0] = v1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B1BCB10();
  sub_21B20DD08();
  v16 = 0;
  v9 = v13;
  sub_21B20D9E8();
  if (v9)
  {
    return (*(v4 + 8))(v7, v3);
  }

  if (v12)
  {
    v15 = 1;
    sub_21B20DA38();
  }

  v14 = 2;
  sub_21B20D998();
  return (*(v4 + 8))(v7, v3);
}

uint64_t RecipeMetadata.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t RecipeMetadata.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t RecipeMetadata.endToEndTelemetryEventName.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t RecipeMetadata.endToEndTelemetryEventName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

void __swiftcall RecipeMetadata.init(name:version:)(PoirotBlocks::RecipeMetadata *__return_ptr retstr, Swift::String name, Swift::UInt version)
{
  retstr->endToEndTelemetryEventName.value._countAndFlagsBits = 0;
  retstr->endToEndTelemetryEventName.value._object = 0;
  retstr->name = name;
  retstr->version = version;
}

uint64_t sub_21B1BCE7C(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xED00006E6F697372;
  v3 = 0x6556657069636572;
  v4 = *a1;
  if (v4 == 1)
  {
    v5 = 0x6556657069636572;
  }

  else
  {
    v5 = 0xD00000000000001ALL;
  }

  if (v4 == 1)
  {
    v6 = 0xED00006E6F697372;
  }

  else
  {
    v6 = 0x800000021B20E820;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000010;
  }

  if (v4)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x800000021B20E800;
  }

  if (*a2 != 1)
  {
    v3 = 0xD00000000000001ALL;
    v2 = 0x800000021B20E820;
  }

  if (*a2)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0xD000000000000010;
  }

  if (*a2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0x800000021B20E800;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_21B20DB28();
  }

  return v11 & 1;
}

uint64_t sub_21B1BCF64()
{
  sub_21B20DC88();
  sub_21B20D388();

  return sub_21B20DCA8();
}

uint64_t sub_21B1BD01C(uint64_t a1)
{
  sub_21B20D388();
}

uint64_t sub_21B1BD0C0(uint64_t a1)
{
  sub_21B20DC88();
  sub_21B20D388();

  return sub_21B20DCA8();
}

unint64_t sub_21B1BD174@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21B1BD810(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_21B1BD1A4(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00006E6F697372;
  v4 = 0x6556657069636572;
  if (v2 != 1)
  {
    v4 = 0xD00000000000001ALL;
    v3 = 0x800000021B20E820;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000010;
  }

  if (v5)
  {
    v3 = 0x800000021B20E800;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_21B1BD218()
{
  v1 = 0x6556657069636572;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001ALL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

unint64_t sub_21B1BD288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21B1BD810(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21B1BD2B0(uint64_t a1)
{
  v2 = sub_21B1BCB10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B1BD2EC(uint64_t a1)
{
  v2 = sub_21B1BCB10();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 RecipeMetadata.init(recipeURL:)@<Q0>(char *a1@<X0>, __n128 *a2@<X8>)
{
  v24[0] = a2;
  v3 = sub_21B20C548();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21B20C678();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B20C338();
  swift_allocObject();
  sub_21B20C328();
  v24[1] = 0x6A2E657069636572;
  v24[2] = 0xEB000000006E6F73;
  (*(v4 + 104))(v7, *MEMORY[0x277CC91D8], v3);
  sub_21B17FBB0();
  sub_21B20C658();
  (*(v4 + 8))(v7, v3);
  v13 = v27;
  v14 = sub_21B20C688();
  if (v13)
  {

    v16 = *(v9 + 8);
    v16(a1, v8);
    v16(v12, v8);
  }

  else
  {
    v18 = v14;
    v19 = v15;
    v27 = a1;
    v20 = *(v9 + 8);
    v20(v12, v8);
    sub_21B198044();
    sub_21B20C308();
    v20(v27, v8);
    sub_21B17DAF8(v18, v19);

    v21 = v24[4];
    v22 = v26;
    result = v25;
    v23 = v24[0];
    *v24[0] = v24[3];
    v23->n128_u64[1] = v21;
    v23[1] = result;
    v23[2].n128_u64[0] = v22;
  }

  return result;
}

uint64_t sub_21B1BD658(uint64_t a1, int a2)
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

uint64_t sub_21B1BD6A0(uint64_t result, int a2, int a3)
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

unint64_t sub_21B1BD70C()
{
  result = qword_27CD6F6C0;
  if (!qword_27CD6F6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F6C0);
  }

  return result;
}

unint64_t sub_21B1BD764()
{
  result = qword_27CD6F6C8;
  if (!qword_27CD6F6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F6C8);
  }

  return result;
}

unint64_t sub_21B1BD7BC()
{
  result = qword_27CD6F6D0;
  if (!qword_27CD6F6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F6D0);
  }

  return result;
}

unint64_t sub_21B1BD810(uint64_t a1, uint64_t a2)
{
  v2 = sub_21B20D828();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

id sub_21B1BD85C(uint64_t a1, uint64_t a2)
{
  (*(a2 + 24))(&v34);
  v5 = v34;
  v4 = v35;
  v7 = v36;
  v6 = v37;
  v8 = v38;
  v9 = v39;
  if (v36 < 0)
  {
    v27 = v39;
    v17 = *(a2 + 16);
    if (v36)
    {
      sub_21B1BDBF0(v34, v35);
      v18 = v17(a1, a2);
      v19 = swift_allocObject();
      *(v19 + 16) = v5;
      *(v19 + 24) = v4;
      v20 = objc_allocWithZone(MEMORY[0x277CF1B50]);
      v32 = sub_21B1BDE4C;
      v33 = v19;
      aBlock = MEMORY[0x277D85DD0];
      v29 = 1107296256;
      v30 = sub_21B1BDD28;
      v31 = &block_descriptor_6;
      v21 = _Block_copy(&aBlock);
      v22 = [v20 initWithSchema:v18 publisherBlockWithOptions:v21 acceptPublisherOptions:1];
    }

    else
    {
      sub_21B1BDBF0(v34, v35);
      v18 = v17(a1, a2);
      v25 = swift_allocObject();
      *(v25 + 16) = v5;
      *(v25 + 24) = v4;
      v26 = objc_allocWithZone(MEMORY[0x277CF1B50]);
      v32 = sub_21B1BDCE0;
      v33 = v25;
      aBlock = MEMORY[0x277D85DD0];
      v29 = 1107296256;
      v30 = sub_21B1BDD28;
      v31 = &block_descriptor;
      v21 = _Block_copy(&aBlock);
      v22 = [v26 initWithSchema:v18 publisherBlockWithOptions:v21 acceptPublisherOptions:0];
    }

    v15 = v22;
    sub_21B1BDDA8(v5, v4, v7, v6, v8, v27);

    v16 = v21;
  }

  else
  {
    if ((v36 & 1) == 0)
    {
      v23 = [objc_allocWithZone(MEMORY[0x277CF1B50]) initWithStream_];
      sub_21B1BDDA8(v5, v4, v7, v6, v8, v9);
      return v23;
    }

    v10 = v36 & 1;
    v11 = (*(a2 + 16))(a1, a2);
    v12 = swift_allocObject();
    *(v12 + 16) = v5;
    *(v12 + 24) = v4;
    *(v12 + 32) = v10;
    *(v12 + 40) = v6;
    *(v12 + 48) = v8;
    *(v12 + 56) = v9;
    v13 = objc_allocWithZone(MEMORY[0x277CF1B50]);
    v32 = sub_21B1BDE9C;
    v33 = v12;
    aBlock = MEMORY[0x277D85DD0];
    v29 = 1107296256;
    v30 = sub_21B1BDD28;
    v31 = &block_descriptor_12;
    v14 = _Block_copy(&aBlock);
    v15 = [v13 initWithSchema:v11 publisherBlockWithOptions:v14 acceptPublisherOptions:1];

    v16 = v14;
  }

  _Block_release(v16);

  return v15;
}

id sub_21B1BDBF8(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x21CEEC5F0]();
  v5 = *(a2 + 40);
  if (v5 == 255)
  {
    v9 = *a2;
    v10 = *(a2 + 8);
    if (v10)
    {
      v11 = [v9 publisherWithUseCase:v10 options:a1];
    }

    else
    {
      v11 = [v9 publisherWithOptions_];
    }

    v13 = v11;
  }

  else
  {
    v6 = *(a2 + 24);
    v7 = *(a2 + 32);
    if (v5)
    {
      sub_21B1BDBF0(v6, v7);
      v8 = v6(a1);
    }

    else
    {
      v12 = sub_21B1BDBF0(v6, v7);
      v8 = v6(v12);
    }

    v13 = v8;
    sub_21B1BDE2C(v6, v7, v5);
  }

  objc_autoreleasePoolPop(v4);
  return v13;
}

uint64_t sub_21B1BDCE0()
{
  v1 = *(v0 + 16);
  v2 = MEMORY[0x21CEEC5F0]();
  v3 = v1();
  objc_autoreleasePoolPop(v2);
  return v3;
}

id sub_21B1BDD28(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21B1BDDA8(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3 < 0)
  {

    return sub_21B1BDE44(a1, a2);
  }

  else
  {
    v7 = a6;

    return sub_21B1BDE2C(a4, a5, v7);
  }
}

uint64_t sub_21B1BDE2C(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_21B1BDE44(result, a2);
  }

  return result;
}

uint64_t sub_21B1BDE4C(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = MEMORY[0x21CEEC5F0]();
  v5 = v3(a1);
  objc_autoreleasePoolPop(v4);
  return v5;
}

uint64_t sub_21B1BDEB4()
{
  v44 = sub_21B20C828();
  v1 = *(v44 - 8);
  v3 = MEMORY[0x28223BE20](v44, v2);
  v43 = &v27[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3, v5);
  v42 = &v27[-v6];
  v41 = sub_21B20CA68();
  v7 = *(v41 - 8);
  MEMORY[0x28223BE20](v41, v8);
  v10 = &v27[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = [v0 columns];
  sub_21B1BE468();
  v12 = sub_21B20D448();

  if (v12 >> 62)
  {
    goto LABEL_26;
  }

  v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v13)
  {
    while (1)
    {
      v45 = MEMORY[0x277D84F90];
      sub_21B18FFC4(0, v13 & ~(v13 >> 63), 0);
      if (v13 < 0)
      {
        break;
      }

      v14 = 0;
      v15 = v45;
      v16 = v12;
      v40 = v12 & 0xC000000000000001;
      v31 = v12 & 0xFFFFFFFFFFFFFF8;
      v30 = *MEMORY[0x277D3E5B8];
      v36 = (v1 + 104);
      v32 = *MEMORY[0x277D3E5C8];
      v29 = *MEMORY[0x277D3E608];
      v28 = *MEMORY[0x277D3E5E8];
      v33 = *MEMORY[0x277D3E5E0];
      v34 = v7 + 32;
      v35 = (v1 + 32);
      v38 = v12;
      v39 = v10;
      v37 = v13;
      while (1)
      {
        v17 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v40)
        {
          v18 = MEMORY[0x21CEEBED0](v14, v16);
        }

        else
        {
          if (v14 >= *(v31 + 16))
          {
            goto LABEL_25;
          }

          v18 = *(v16 + 8 * v14 + 32);
        }

        v19 = v18;
        v20 = [v18 name];
        sub_21B20D2F8();

        v21 = [v19 dataType];
        if (v21 <= 2)
        {
          v22 = v33;
          if (v21)
          {
            v22 = v28;
            if (v21 != 1)
            {
              v22 = v32;
              if (v21 != 2)
              {
                goto LABEL_30;
              }
            }
          }
        }

        else if (v21 > 4)
        {
          v22 = v32;
          if (v21 != 5)
          {
            v22 = v30;
            if (v21 != 6)
            {
              goto LABEL_30;
            }
          }
        }

        else
        {
          v22 = v29;
          if (v21 != 3)
          {
            v22 = v30;
          }
        }

        v24 = v43;
        v23 = v44;
        (*v36)(v43, v22, v44);
        (*v35)(v42, v24, v23);
        [v19 requestOnly];
        v12 = v39;
        sub_21B20CA28();

        v45 = v15;
        v10 = *(v15 + 16);
        v25 = *(v15 + 24);
        v1 = (v10 + 1);
        if (v10 >= v25 >> 1)
        {
          sub_21B18FFC4((v25 > 1), v10 + 1, 1);
          v15 = v45;
        }

        *(v15 + 16) = v1;
        (*(v7 + 32))(v15 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v10, v12, v41);
        ++v14;
        v16 = v38;
        if (v17 == v37)
        {

          return v15;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      v13 = sub_21B20D7D8();
      if (!v13)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_30:
    result = sub_21B20D7C8();
    __break(1u);
  }

  else
  {
LABEL_27:

    return MEMORY[0x277D84F90];
  }

  return result;
}

void (*sub_21B1BE360(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x21CEEBED0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_21B1BE4B4;
  }

  __break(1u);
  return result;
}

void (*sub_21B1BE3E0(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x21CEEBED0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_21B1BE460;
  }

  __break(1u);
  return result;
}

unint64_t sub_21B1BE468()
{
  result = qword_27CD6F6D8[0];
  if (!qword_27CD6F6D8[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_27CD6F6D8);
  }

  return result;
}

uint64_t sub_21B1BE4B8@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = [a1 schema];
  v7 = [v6 tableName];

  v8 = sub_21B20D2F8();
  v10 = v9;

  sub_21B20D6A8();

  if (a2)
  {
    v33[0] = 0xD000000000000016;
    v33[1] = 0x800000021B20F810;
    v11 = [a1 schema];
    v12 = [v11 tableName];

    v13 = sub_21B20D2F8();
    v15 = v14;

    MEMORY[0x21CEEBBB0](v13, v15);

    MEMORY[0x21CEEBBB0](0x20726F662027, 0xE600000000000000);
    v16 = [a1 configuration];
    [v16 eventClass];

    swift_getObjCClassMetadata();
    v17 = sub_21B20DD38();
    MEMORY[0x21CEEBBB0](v17);

    MEMORY[0x21CEEBBB0](0x73746E65766520, 0xE700000000000000);
    v18 = 0xD000000000000016;
    v19 = 0x800000021B20F810;
    v20 = 2;
  }

  else
  {
    strcpy(v33, "Biome stream '");
    HIBYTE(v33[1]) = -18;
    v21 = [a1 schema];
    v22 = [v21 tableName];

    v23 = sub_21B20D2F8();
    v25 = v24;

    MEMORY[0x21CEEBBB0](v23, v25);

    MEMORY[0x21CEEBBB0](0x20726F662027, 0xE600000000000000);
    v26 = [a1 configuration];
    [v26 eventClass];

    swift_getObjCClassMetadata();
    v27 = sub_21B20DD38();
    MEMORY[0x21CEEBBB0](v27);

    MEMORY[0x21CEEBBB0](0x73746E65766520, 0xE700000000000000);
    v20 = 0;
    v18 = v33[0];
    v19 = v33[1];
  }

  v28 = [a1 schema];
  v29 = sub_21B1BDEB4();

  v30 = *(type metadata accessor for DataSourceModel(0) + 32);
  v31 = sub_21B20D0C8();
  result = (*(*(v31 - 8) + 56))(a3 + v30, 1, 1, v31);
  *a3 = v8;
  *(a3 + 8) = v10;
  *(a3 + 16) = v18;
  *(a3 + 24) = v19;
  *(a3 + 32) = v20;
  *(a3 + 40) = v29;
  return result;
}

uint64_t sub_21B1BE888(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, uint64_t, uint64_t))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC78, &unk_21B215AD0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v12 - v8;
  a3(0, a1, a2);
  v10 = sub_21B20D0C8();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  swift_allocObject();
  return sub_21B1BEC08(MEMORY[0x277D84F90], v9);
}

uint64_t sub_21B1BEAF4(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, void))
{
  v9 = *v4;
  sub_21B20C988();
  v10 = sub_21B20C998();
  result = v10(a1);
  if (!v5)
  {
    v12 = *(sub_21B20C948() + 16);

    if (!v12)
    {
      WitnessTable = swift_getWitnessTable();
      a4(a1, v9, WitnessTable, *(v9 + *a3 + 8));
      return sub_21B20C958();
    }
  }

  return result;
}

uint64_t sub_21B1BEC08(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC78, &unk_21B215AD0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  sub_21B18C904(a2, &v8 - v5);
  v6 = sub_21B20C938();
  sub_21B192958(a2);
  return v6;
}

uint64_t sub_21B1BECC4()
{
  v0 = sub_21B20C9A8();

  return MEMORY[0x2821FE8D8](v0, 16, 7);
}

uint64_t sub_21B1BED64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a1 + 16) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_21B1BEE18(uint64_t a1)
{
  v4 = *v1;
  sub_21B20C988();
  v5 = sub_21B20C998();
  result = v5(a1);
  if (!v2)
  {
    v7 = *(sub_21B20C948() + 16);

    if (!v7)
    {
      WitnessTable = swift_getWitnessTable();
      static MessageToColumnMapping<>.makeDefaultColumns(with:)(a1, v4, WitnessTable);
      return sub_21B20C958();
    }
  }

  return result;
}

uint64_t sub_21B1BEF7C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC78, &unk_21B215AD0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  sub_21B18C904(a2, &v8 - v5);
  v6 = sub_21B20C938();
  sub_21B192958(a2);
  return v6;
}

uint64_t sub_21B1BF050(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 24) = result;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> BiomePublisherSchemaProviding.configureManifest()()
{
  v3 = v1;
  v4 = v0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC78, &unk_21B215AD0);
  v7 = MEMORY[0x28223BE20](v5 - 8, v6);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v41 = &v37 - v11;
  v13 = MEMORY[0x28223BE20](v10, v12);
  v15 = &v37 - v14;
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v37 - v17;
  v19 = sub_21B20D0C8();
  v20 = *(v19 - 8);
  v22 = MEMORY[0x28223BE20](v19, v21);
  v40 = &v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v24);
  v26 = &v37 - v25;
  (*(*(v3 + 16) + 16))(v4);
  v27 = *(v20 + 48);
  if (v27(v18, 1, v19) == 1)
  {
    sub_21B186488(v18, &qword_27CD6EC78, &unk_21B215AD0);
  }

  else
  {
    v39 = v2;
    v28 = v26;
    v29 = *(v20 + 32);
    v38 = v28;
    v29();
    sub_21B20C918();
    if (v27(v15, 1, v19) == 1)
    {
      sub_21B186488(v15, &qword_27CD6EC78, &unk_21B215AD0);
      v30 = v42;
      v31 = v38;
      (*(v20 + 16))(v42, v38, v19);
      (*(v20 + 56))(v30, 0, 1, v19);
      sub_21B20C928();
      (*(v20 + 8))(v31, v19);
    }

    else
    {
      v32 = v40;
      (v29)(v40, v15, v19);
      v33 = v41;
      v35 = v38;
      v34 = v39;
      sub_21B20D0A8();
      if (!v34)
      {
        (*(v20 + 56))(v33, 0, 1, v19);
        sub_21B20C928();
      }

      v36 = *(v20 + 8);
      v36(v32, v19);
      v36(v35, v19);
    }
  }
}

void BiomePublisherSchemaProviding.makeBiomeSchema(forTable:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(sub_21B20C948() + 16);

  v16 = MEMORY[0x277D84F90];
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      v15 = i;
      v9 = sub_21B1BF7D0(&v15, v4, a3, a4, &v14);
      if (v14)
      {
        MEMORY[0x21CEEBC40](v9);
        if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21B20D478();
        }

        sub_21B20D498();
      }
    }
  }

  v10 = objc_allocWithZone(MEMORY[0x277CF1AA0]);
  v11 = sub_21B20D2C8();
  sub_21B1BE468();
  v12 = sub_21B20D438();

  v13 = [v10 initWithTableName:v11 columns:v12];

  if (!v13)
  {
    __break(1u);
  }
}

void sub_21B1BF754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *v5;
  WitnessTable = swift_getWitnessTable();
  BiomePublisherSchemaProviding.makeBiomeSchema(forTable:)(a1, a2, v8, WitnessTable);
}

uint64_t sub_21B1BF7D0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v28 = a3;
  v9 = sub_21B20CA68();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  result = sub_21B20C948();
  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v14 < *(result + 16))
  {
    (*(v10 + 16))(v13, result + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v14, v9);

    sub_21B20CA38();
    v26 = a5;
    v25 = sub_21B1980F4();
    v16 = sub_21B20CA58();
    v17 = swift_allocObject();
    v18 = a4;
    v19 = v17;
    v17[2] = v28;
    v17[3] = v18;
    v17[4] = a2;
    v17[5] = v14;
    v20 = objc_allocWithZone(MEMORY[0x277CF1A80]);

    v21 = sub_21B20D2C8();

    aBlock[4] = sub_21B1BFDE4;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21B1E89A4;
    aBlock[3] = &block_descriptor_0;
    v22 = _Block_copy(aBlock);

    v23 = [v20 initWithName:v21 dataType:v25 requestOnly:v16 & 1 extractBlock:v22];
    _Block_release(v22);

    result = (*(v10 + 8))(v13, v9);
    *v26 = v23;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_21B1BFA40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v30 = a2;
  v31 = a4;
  v32 = a7;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F860, &unk_21B215C40);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v28 - v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = sub_21B20D5D8();
  v29 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16, v17);
  v20 = &v28 - v19;
  v21 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v18, v22);
  v24 = &v28 - v23;
  sub_21B19DB00(a1, v33);
  v25 = swift_dynamicCast();
  v26 = *(v21 + 56);
  if (v25)
  {
    v26(v20, 0, 1, AssociatedTypeWitness);
    (*(v21 + 32))(v24, v20, AssociatedTypeWitness);
    v33[0] = a3;
    (*(*(a6 + 24) + 32))(v31, v24, a5);
    sub_21B20C968();
    sub_21B186488(v14, &qword_27CD6F860, &unk_21B215C40);
    return (*(v21 + 8))(v24, AssociatedTypeWitness);
  }

  else
  {
    v26(v20, 1, 1, AssociatedTypeWitness);
    (*(v29 + 8))(v20, v16);
    result = sub_21B20D7C8();
    __break(1u);
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t AutomaticDSCFileProtobufFactory.dscUrl.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12PoirotBlocks31AutomaticDSCFileProtobufFactory_dscUrl;
  v4 = sub_21B20C678();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AutomaticDSCFileProtobufFactory.__allocating_init(dscUrl:updateFileAutomatically:messageNameMap:columnsLayout:)(uint64_t a1, int a2, uint64_t a3, unint64_t a4)
{
  v41 = a3;
  v42 = a4;
  v6 = sub_21B20D0C8();
  v38 = *(v6 - 8);
  v39 = v6;
  v8 = MEMORY[0x28223BE20](v6, v7);
  v35 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v34 - v11;
  v13 = swift_allocObject();
  v14 = OBJC_IVAR____TtC12PoirotBlocks31AutomaticDSCFileProtobufFactory_dscUrl;
  v15 = sub_21B20C678();
  v16 = *(v15 - 8);
  v17 = *(v16 + 16);
  v37 = v14;
  v17(v13 + v14, a1, v15);
  v36 = a2;
  *(v13 + OBJC_IVAR____TtC12PoirotBlocks31AutomaticDSCFileProtobufFactory_updateFileAutomatically) = a2;
  v18 = [objc_opt_self() defaultManager];
  sub_21B20C608();
  v19 = sub_21B20D2C8();

  v20 = [v18 fileExistsAtPath_];

  if (v20)
  {
    v21 = v40;
    sub_21B20C688();
    if (v21)
    {
      v22 = *(v16 + 8);
      v22(a1, v15);

      v22(v13 + v37, v15);
      swift_deallocPartialClassInstance();
      return v13;
    }

    sub_21B20D048();
  }

  else
  {
    sub_21B20D058();
    v21 = v40;
  }

  v23 = AutomaticProtobufFactory.init(manifest:messageNameMap:columnsLayout:)(v12, v41, v42);
  v25 = v38;
  v24 = v39;
  if (!v21 && (v13 = v23, (v36 & 1) != 0) && (swift_beginAccess(), (*(v13 + 24) & 1) != 0))
  {
    v27 = *(v13 + 16);
    v28 = OBJC_IVAR____TtC12PoirotBlocks15ProtobufFactory_manifest;
    swift_beginAccess();
    v29 = v27 + v28;
    v30 = v35;
    (*(v25 + 16))(v35, v29, v24);
    v31 = sub_21B20D0B8();
    v42 = v32;
    v33 = v31;
    (*(v25 + 8))(v30, v24);
    sub_21B20C6C8();
    (*(v16 + 8))(a1, v15);
    sub_21B17DAF8(v33, v42);
    *(v13 + 24) = 0;
  }

  else
  {
    (*(v16 + 8))(a1, v15);
  }

  return v13;
}

uint64_t AutomaticDSCFileProtobufFactory.init(dscUrl:updateFileAutomatically:messageNameMap:columnsLayout:)(uint64_t a1, int a2, uint64_t a3, unint64_t a4)
{
  v6 = v5;
  v7 = v4;
  v42 = a4;
  v41 = a3;
  v10 = sub_21B20D0C8();
  v39 = *(v10 - 8);
  v40 = v10;
  v12 = MEMORY[0x28223BE20](v10, v11);
  v36 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v36 - v15;
  v17 = OBJC_IVAR____TtC12PoirotBlocks31AutomaticDSCFileProtobufFactory_dscUrl;
  v18 = sub_21B20C678();
  v19 = *(v18 - 8);
  v20 = *(v19 + 16);
  v38 = v17;
  v20(v7 + v17, a1, v18);
  v37 = a2;
  *(v7 + OBJC_IVAR____TtC12PoirotBlocks31AutomaticDSCFileProtobufFactory_updateFileAutomatically) = a2;
  v21 = [objc_opt_self() defaultManager];
  sub_21B20C608();
  v22 = sub_21B20D2C8();

  v23 = [v21 fileExistsAtPath_];

  if (v23)
  {
    sub_21B20C688();
    if (v5)
    {
      v24 = *(v19 + 8);
      v24(a1, v18);

      v24(v7 + v38, v18);
      type metadata accessor for AutomaticDSCFileProtobufFactory(0);
      swift_deallocPartialClassInstance();
      return v7;
    }

    sub_21B20D048();
    v6 = 0;
  }

  else
  {
    sub_21B20D058();
  }

  v25 = AutomaticProtobufFactory.init(manifest:messageNameMap:columnsLayout:)(v16, v41, v42);
  v27 = v39;
  v26 = v40;
  if (!v6 && (v7 = v25, (v37 & 1) != 0) && (swift_beginAccess(), *(v7 + 24) == 1))
  {
    v29 = *(v7 + 16);
    v30 = OBJC_IVAR____TtC12PoirotBlocks15ProtobufFactory_manifest;
    swift_beginAccess();
    v31 = v29 + v30;
    v32 = v36;
    (*(v27 + 16))(v36, v31, v26);
    v33 = sub_21B20D0B8();
    v42 = v34;
    v35 = v33;
    (*(v27 + 8))(v32, v26);
    sub_21B20C6C8();
    (*(v19 + 8))(a1, v18);
    sub_21B17DAF8(v35, v42);
    *(v7 + 24) = 0;
  }

  else
  {
    (*(v19 + 8))(a1, v18);
  }

  return v7;
}

uint64_t AutomaticDSCFileProtobufFactory.__allocating_init(dscUrl:updateFileAutomatically:messageNameMap:allColumnsArePivots:)(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v44 = a3;
  v5 = v4;
  v40 = a4;
  v38 = sub_21B20D0C8();
  v42 = *(v38 - 8);
  v9 = MEMORY[0x28223BE20](v38, v8);
  v41 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v38 - v12;
  v14 = swift_allocObject();
  v15 = OBJC_IVAR____TtC12PoirotBlocks31AutomaticDSCFileProtobufFactory_dscUrl;
  v16 = sub_21B20C678();
  v17 = *(v16 - 8);
  v18 = *(v17 + 16);
  v45 = v16;
  v18(v14 + v15, a1);
  v39 = a2;
  *(v14 + OBJC_IVAR____TtC12PoirotBlocks31AutomaticDSCFileProtobufFactory_updateFileAutomatically) = a2;
  v19 = [objc_opt_self() defaultManager];
  sub_21B20C608();
  v20 = sub_21B20D2C8();

  v21 = [v19 fileExistsAtPath_];

  if (v21)
  {
    v22 = v43;
    sub_21B20C688();
    v23 = a1;
    if (v22)
    {
      v24 = *(v17 + 8);
      v25 = a1;
      v26 = v45;
      v24(v25, v45);

      v24(v14 + v15, v26);
      swift_deallocPartialClassInstance();
      return v5;
    }

    sub_21B20D048();
  }

  else
  {
    sub_21B20D058();
    v22 = v43;
    v23 = a1;
  }

  v27 = AutomaticProtobufFactory.init(manifest:messageNameMap:allColumnsArePivots:)(v13, v44, v40 & 1);
  v29 = v41;
  v28 = v42;
  if (!v22 && (v5 = v27, (v39 & 1) != 0) && (swift_beginAccess(), (*(v5 + 24) & 1) != 0))
  {
    v31 = *(v5 + 16);
    v32 = OBJC_IVAR____TtC12PoirotBlocks15ProtobufFactory_manifest;
    swift_beginAccess();
    v33 = v31 + v32;
    v34 = v38;
    (*(v28 + 16))(v29, v33, v38);
    v35 = sub_21B20D0B8();
    v37 = v36;
    (*(v28 + 8))(v29, v34);
    sub_21B20C6C8();
    (*(v17 + 8))(v23, v45);
    sub_21B17DAF8(v35, v37);
    *(v5 + 24) = 0;
  }

  else
  {
    (*(v17 + 8))(v23, v45);
  }

  return v5;
}

uint64_t AutomaticDSCFileProtobufFactory.init(dscUrl:updateFileAutomatically:messageNameMap:allColumnsArePivots:)(uint64_t a1, int a2, unint64_t a3, int a4)
{
  v5 = v4;
  v38 = a4;
  v41 = a3;
  v36 = sub_21B20D0C8();
  v39 = *(v36 - 8);
  v9 = MEMORY[0x28223BE20](v36, v8);
  v35 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v34 - v12;
  v14 = OBJC_IVAR____TtC12PoirotBlocks31AutomaticDSCFileProtobufFactory_dscUrl;
  v15 = sub_21B20C678();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v5 + v14, a1, v15);
  v37 = a2;
  *(v5 + OBJC_IVAR____TtC12PoirotBlocks31AutomaticDSCFileProtobufFactory_updateFileAutomatically) = a2;
  v17 = [objc_opt_self() defaultManager];
  sub_21B20C608();
  v18 = sub_21B20D2C8();

  v19 = [v17 fileExistsAtPath_];

  if (v19)
  {
    v20 = v40;
    sub_21B20C688();
    v21 = a1;
    if (v20)
    {
      v22 = *(v16 + 8);
      v22(a1, v15);

      v22(v5 + v14, v15);
      type metadata accessor for AutomaticDSCFileProtobufFactory(0);
      swift_deallocPartialClassInstance();
      return v5;
    }

    sub_21B20D048();
  }

  else
  {
    sub_21B20D058();
    v21 = a1;
    v20 = v40;
  }

  v23 = AutomaticProtobufFactory.init(manifest:messageNameMap:allColumnsArePivots:)(v13, v41, v38 & 1);
  v24 = v39;
  if (!v20 && (v5 = v23, (v37 & 1) != 0) && (swift_beginAccess(), *(v5 + 24) == 1))
  {
    v26 = *(v5 + 16);
    v27 = OBJC_IVAR____TtC12PoirotBlocks15ProtobufFactory_manifest;
    swift_beginAccess();
    v28 = v26 + v27;
    v29 = v35;
    v30 = v36;
    (*(v24 + 16))(v35, v28, v36);
    v31 = sub_21B20D0B8();
    v41 = v32;
    v33 = v31;
    (*(v24 + 8))(v29, v30);
    sub_21B20C6C8();
    (*(v16 + 8))(v21, v15);
    sub_21B17DAF8(v33, v41);
    *(v5 + 24) = 0;
  }

  else
  {
    (*(v16 + 8))(v21, v15);
  }

  return v5;
}

uint64_t sub_21B1C0F88()
{
  v2 = sub_21B20D0C8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = swift_beginAccess();
  if (*(v0 + 24) == 1)
  {
    v8 = v0;
    v9 = *(v0 + 16);
    v10 = OBJC_IVAR____TtC12PoirotBlocks15ProtobufFactory_manifest;
    swift_beginAccess();
    (*(v3 + 16))(v6, v9 + v10, v2);
    v11 = sub_21B20D0B8();
    if (v1)
    {
      return (*(v3 + 8))(v6, v2);
    }

    else
    {
      v13 = v11;
      v14 = v6;
      v15 = v12;
      (*(v3 + 8))(v14, v2);
      sub_21B20C6C8();
      result = sub_21B17DAF8(v13, v15);
      *(v8 + 24) = 0;
    }
  }

  return result;
}

uint64_t sub_21B1C1134(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_21B20D0C8();
  v24 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  v25 = *a1;
  v26 = v9;
  v27 = v10;
  v11 = *(v2 + 16);
  v12 = *(v11 + OBJC_IVAR____TtC12PoirotBlocks15ProtobufFactory_messageNameMap);

  v13 = v28;
  sub_21B1C1E48(&v25, v12);

  if (!v13)
  {
    v15 = v7;
    v16 = v24;
    v25 = v8;
    v26 = v9;
    v27 = v10;
    result = sub_21B1C4C58(&v25);
    if (*(v2 + OBJC_IVAR____TtC12PoirotBlocks31AutomaticDSCFileProtobufFactory_updateFileAutomatically) == 1)
    {
      v23 = result;
      v28 = v17;
      swift_beginAccess();
      if (*(v2 + 24) == 1)
      {
        v18 = OBJC_IVAR____TtC12PoirotBlocks15ProtobufFactory_manifest;
        swift_beginAccess();
        v19 = v16;
        (*(v16 + 16))(v15, v11 + v18, v4);
        v20 = sub_21B20D0B8();
        v22 = v21;
        (*(v19 + 8))(v15, v4);
        sub_21B20C6C8();
        sub_21B17DAF8(v20, v22);
        *(v2 + 24) = 0;
      }

      return v23;
    }
  }

  return result;
}

uint64_t sub_21B1C1424()
{
  v1 = OBJC_IVAR____TtC12PoirotBlocks31AutomaticDSCFileProtobufFactory_dscUrl;
  v2 = sub_21B20C678();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t AutomaticDSCFileProtobufFactory.deinit()
{

  v1 = OBJC_IVAR____TtC12PoirotBlocks31AutomaticDSCFileProtobufFactory_dscUrl;
  v2 = sub_21B20C678();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t AutomaticDSCFileProtobufFactory.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12PoirotBlocks31AutomaticDSCFileProtobufFactory_dscUrl;
  v2 = sub_21B20C678();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for AutomaticDSCFileProtobufFactory(uint64_t a1)
{
  result = qword_27CD6F868;
  if (!qword_27CD6F868)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21B1C15EC(uint64_t a1)
{
  result = sub_21B20C678();
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

uint64_t AutomaticProtobufFactory.init(manifest:messageNameMap:columnsLayout:)(char *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F878, &qword_21B215CA0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v42 = v36 - v9;
  v10 = sub_21B20D0C8();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v41 = v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v17 = v36 - v16;
  v18 = *(v11 + 16);
  v43 = a1;
  v40 = v18;
  v18(v36 - v16, a1, v10);
  v44[0] = MEMORY[0x277D84FA0];

  v19 = a2;
  v20 = sub_21B1C3A48(0, a3, a2, v17, v44);
  v21 = (v11 + 8);
  if (v3)
  {

    swift_bridgeObjectRelease_n();
    v22 = *v21;
    (*v21)(v43, v10);

    v22(v17, v10);
    type metadata accessor for AutomaticProtobufFactory();
    v23 = v45;
    swift_deallocPartialClassInstance();
  }

  else
  {
    v24 = v20;

    v37 = v19;

    v25 = sub_21B1C2650(0, v44[0], v17);
    v36[1] = 0;
    v38 = *(v11 + 8);
    v39 = v11 + 8;
    v38(v43, v10);

    v26 = v45;
    *(v45 + 24) = (v25 | v24) & 1;
    *(v26 + 25) = 2;
    v27 = v41;
    v40(v41, v17, v10);
    type metadata accessor for ProtobufFactory(0);
    v28 = swift_allocObject();
    v29 = OBJC_IVAR____TtC12PoirotBlocks15ProtobufFactory_store;
    v30 = sub_21B20CF68();
    v31 = *(*(v30 - 8) + 56);
    v31(v28 + v29, 1, 1, v30);
    (*(v11 + 32))(v28 + OBJC_IVAR____TtC12PoirotBlocks15ProtobufFactory_manifest, v27, v10);
    *(v28 + OBJC_IVAR____TtC12PoirotBlocks15ProtobufFactory_messageNameMap) = v37;
    v32 = v42;
    v31(v42, 1, 1, v30);
    v33 = OBJC_IVAR____TtC12PoirotBlocks15ProtobufFactory_store;
    swift_beginAccess();
    v34 = v28 + v33;
    v23 = v45;
    sub_21B1C3DEC(v32, v34);
    swift_endAccess();
    v38(v17, v10);
    *(v23 + 16) = v28;
  }

  return v23;
}

uint64_t AutomaticProtobufFactory.init(manifest:messageNameMap:allColumnsArePivots:)(uint64_t a1, uint64_t a2, char a3)
{
  v19 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F878, &qword_21B215CA0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v18 - v8;
  *(v3 + 24) = 0;
  *(v3 + 25) = a3;
  type metadata accessor for ProtobufFactory(0);
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC12PoirotBlocks15ProtobufFactory_store;
  v12 = sub_21B20CF68();
  v13 = *(*(v12 - 8) + 56);
  v13(v10 + v11, 1, 1, v12);
  v14 = OBJC_IVAR____TtC12PoirotBlocks15ProtobufFactory_manifest;
  v15 = sub_21B20D0C8();
  (*(*(v15 - 8) + 32))(v10 + v14, a1, v15);
  *(v10 + OBJC_IVAR____TtC12PoirotBlocks15ProtobufFactory_messageNameMap) = v19;
  v13(v9, 1, 1, v12);
  v16 = OBJC_IVAR____TtC12PoirotBlocks15ProtobufFactory_store;
  swift_beginAccess();
  sub_21B1C3DEC(v9, v10 + v16);
  swift_endAccess();
  *(v3 + 16) = v10;
  return v3;
}

uint64_t sub_21B1C1CB4(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v8 = *a1;
  v9 = v4;
  v10 = v5;
  v6 = *(*(v1 + 16) + OBJC_IVAR____TtC12PoirotBlocks15ProtobufFactory_messageNameMap);

  sub_21B1C1E48(&v8, v6);

  if (!v2)
  {
    v8 = v3;
    v9 = v4;
    v10 = v5;
    return sub_21B1C4C58(&v8);
  }

  return result;
}

uint64_t sub_21B1C1D6C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = OBJC_IVAR____TtC12PoirotBlocks15ProtobufFactory_manifest;
  swift_beginAccess();
  v5 = sub_21B20D0C8();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_21B1C1E48(uint64_t *a1, uint64_t a2)
{
  v45 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F878, &qword_21B215CA0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v38 = &v36 - v6;
  v7 = sub_21B20D0C8();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v36 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v36 - v13;
  v15 = *a1;
  v16 = a1[1];
  v17 = a1[2];
  v18 = *(v2 + 16);
  v19 = OBJC_IVAR____TtC12PoirotBlocks15ProtobufFactory_manifest;
  swift_beginAccess();
  v20 = *(v8 + 16);
  v37 = v18;
  v41 = v7;
  v20(v14, v18 + v19, v7);
  v39 = v2;
  v21 = *(v2 + 25);
  if (v21 == 2)
  {
    v22 = v45;
    v23 = v40;
    v24 = 0;
  }

  else
  {
    v42 = v15;
    v43 = v16;
    v44 = v17;
    v25 = v40;
    v26 = sub_21B1CD904(&v42, v45, v21 & 1);
    v23 = v25;
    if (v25)
    {
      return (*(v8 + 8))(v14, v41);
    }

    v24 = v26;
    v22 = v45;
  }

  v42 = v15;
  v43 = v16;
  v44 = v17;
  v27 = sub_21B1CDC80(&v42, v22);
  if (!v23 && ((v27 | v24) & 1) != 0)
  {
    v28 = v36;
    v29 = v41;
    (*(v8 + 32))(v36, v14, v41);
    v30 = v37;
    swift_beginAccess();
    (*(v8 + 40))(v30 + v19, v28, v29);
    swift_endAccess();
    v31 = sub_21B20CF68();
    v32 = v38;
    (*(*(v31 - 8) + 56))(v38, 1, 1, v31);
    v33 = OBJC_IVAR____TtC12PoirotBlocks15ProtobufFactory_store;
    swift_beginAccess();
    sub_21B1C3DEC(v32, v30 + v33);
    swift_endAccess();
    v34 = v39;
    result = swift_beginAccess();
    *(v34 + 24) = 1;
    return result;
  }

  return (*(v8 + 8))(v14, v41);
}

uint64_t sub_21B1C2168(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21B20CF68();
  v31 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v32 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21B20D038();
  v29 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10);
  v30 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v12 = a1[1];
  v14 = a1[2];
  v15 = *a1 == a2 && v12 == a3;
  if (v15 || (sub_21B20DB28() & 1) != 0)
  {
    v16 = sub_21B197D24(MEMORY[0x277D84F90]);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F880, &qword_21B215CA8);
    inited = swift_initStackObject();
    v28 = v6;
    v18 = inited;
    *(inited + 16) = xmmword_21B2110C0;
    v27 = v9;
    *(inited + 32) = v13;
    v19 = inited + 32;
    *(inited + 40) = v12;
    *(inited + 48) = a2;
    *(inited + 56) = a3;

    v16 = sub_21B197D24(v18);
    v6 = v28;
    swift_setDeallocating();
    v20 = v19;
    v9 = v27;
    sub_21B186488(v20, &qword_27CD6F888, &qword_21B215CB0);
  }

  v33[0] = v13;
  v33[1] = v12;
  v33[2] = v14;
  v21 = v34;
  sub_21B1C1E48(v33, v16);
  v22 = v21;

  if (!v21)
  {
    v23 = v32;
    sub_21B1C4780(v32);
    v24 = v30;
    sub_21B20CF58();
    (*(v31 + 8))(v23, v6);
    v22 = sub_21B20D028();
    (*(v29 + 8))(v24, v9);
  }

  return v22;
}

uint64_t sub_21B1C2490()
{
  result = swift_beginAccess();
  *(v0 + 24) = 0;
  return result;
}

uint64_t AutomaticProtobufFactory.__allocating_init(manifest:messageNameMap:allColumnsArePivots:)(uint64_t a1, uint64_t a2, char a3)
{
  v6 = swift_allocObject();
  AutomaticProtobufFactory.init(manifest:messageNameMap:allColumnsArePivots:)(a1, a2, a3);
  return v6;
}

uint64_t AutomaticProtobufFactory.__allocating_init(manifest:messageNameMap:columnsLayout:)(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  AutomaticProtobufFactory.init(manifest:messageNameMap:columnsLayout:)(a1, a2, a3);
  return v6;
}

uint64_t AutomaticProtobufFactory.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 26, 7);
}

uint64_t sub_21B1C2650(int a1, uint64_t a2, uint64_t a3)
{
  v85 = a3;
  LODWORD(v83) = a1;
  v84 = sub_21B20CFB8();
  v4 = *(v84 - 8);
  MEMORY[0x28223BE20](v84, v5);
  v73 = v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F890, &qword_21B215D30);
  v9 = MEMORY[0x28223BE20](v7 - 8, v8);
  v11 = v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v76 = v68 - v14;
  MEMORY[0x28223BE20](v13, v15);
  v80 = v68 - v16;
  v17 = a2 + 56;
  v18 = 1 << *(a2 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(a2 + 56);
  v21 = (v18 + 63) >> 6;
  v70 = v4 + 16;
  v82 = (v4 + 56);
  v74 = (v4 + 32);
  v75 = (v4 + 48);
  v78 = v4;
  v68[0] = v4 + 40;

  v22 = 0;
  v79 = a2;
  v71 = v11;
  v72 = v21;
  while (v20)
  {
LABEL_13:
    v25 = (*(a2 + 48) + ((v22 << 10) | (16 * __clz(__rbit64(v20)))));
    v26 = *v25;
    v27 = v25[1];

    v28 = sub_21B20D078();
    if (!*(v28 + 16) || (v29 = sub_21B1B9778(v26, v27), (v30 & 1) == 0))
    {
      v83 = v26;

      v34 = *v82;
      v35 = v80;
      v36 = v84;
      (*v82)(v80, 1, 1, v84);
      sub_21B186488(v35, &qword_27CD6F890, &qword_21B215D30);

      v37 = v76;
      sub_21B20CF88();
      v34(v37, 0, 1, v36);
      v38 = v34;
      v39 = v37;
      v81 = sub_21B20D068();
      v41 = v40;
      if ((*v75)(v39, 1, v36) == 1)
      {
        sub_21B186488(v39, &qword_27CD6F890, &qword_21B215D30);
        v42 = sub_21B1B9778(v83, v27);
        if (v43)
        {
          v44 = v42;
          v83 = v34;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v46 = *v41;
          v87 = *v41;
          v77 = v41;
          v21 = v72;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_21B2046DC();
            v46 = v87;
          }

          v47 = *(v46 + 56) + *(v78 + 72) * v44;
          v48 = v44;
          v23 = v71;
          v49 = v84;
          (*(v78 + 32))(v71, v47, v84);
          sub_21B1BB0D0(v48, v46);
          *v77 = v46;
          (v83)(v23, 0, 1, v49);
        }

        else
        {
          v23 = v71;
          v21 = v72;
          v38(v71, 1, 1, v84);
        }

        sub_21B186488(v23, &qword_27CD6F890, &qword_21B215D30);
        a2 = v79;
        goto LABEL_6;
      }

      v50 = *v74;
      (*v74)(v73, v39, v36);
      v51 = swift_isUniquelyReferenced_nonNull_native();
      v77 = v41;
      v87 = *v41;
      v52 = v87;
      v54 = sub_21B1B9778(v83, v27);
      v55 = v52[2];
      v56 = (v53 & 1) == 0;
      v57 = v55 + v56;
      if (__OFADD__(v55, v56))
      {
        goto LABEL_35;
      }

      v58 = v53;
      v69 = v50;
      if (v52[3] >= v57)
      {
        v21 = v72;
        if (v51)
        {
          v61 = v87;
          if ((v53 & 1) == 0)
          {
            goto LABEL_30;
          }
        }

        else
        {
          sub_21B2046DC();
          v61 = v87;
          if ((v58 & 1) == 0)
          {
            goto LABEL_30;
          }
        }
      }

      else
      {
        sub_21B20295C(v57, v51);
        v59 = sub_21B1B9778(v83, v27);
        v21 = v72;
        if ((v58 & 1) != (v60 & 1))
        {
          goto LABEL_37;
        }

        v54 = v59;
        v61 = v87;
        if ((v58 & 1) == 0)
        {
LABEL_30:
          v61[(v54 >> 6) + 8] |= 1 << v54;
          v62 = (v61[6] + 16 * v54);
          v63 = v84;
          *v62 = v83;
          v62[1] = v27;
          v69(v61[7] + *(v78 + 72) * v54, v73, v63);
          v64 = v61[2];
          v65 = __OFADD__(v64, 1);
          v66 = v64 + 1;
          if (v65)
          {
            goto LABEL_36;
          }

          v61[2] = v66;
          goto LABEL_32;
        }
      }

      (*(v78 + 40))(v61[7] + *(v78 + 72) * v54, v73, v84);

LABEL_32:
      *v77 = v61;
      a2 = v79;
LABEL_6:
      v81(v86, 0);
      LODWORD(v83) = 1;
      goto LABEL_7;
    }

    v31 = v78;
    v32 = v80;
    v33 = v84;
    (*(v78 + 16))(v80, *(v28 + 56) + *(v78 + 72) * v29, v84);

    (*(v31 + 56))(v32, 0, 1, v33);
    sub_21B186488(v32, &qword_27CD6F890, &qword_21B215D30);
    a2 = v79;
LABEL_7:
    v20 &= v20 - 1;
  }

  while (1)
  {
    v24 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v24 >= v21)
    {

      return v83 & 1;
    }

    v20 = *(v17 + 8 * v24);
    ++v22;
    if (v20)
    {
      v22 = v24;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  result = sub_21B20DBF8();
  __break(1u);
  return result;
}

uint64_t sub_21B1C2CF8(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10)
{
  v143 = a7;
  v144 = a8;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F898, qword_21B215D38);
  v16 = MEMORY[0x28223BE20](v14 - 8, v15);
  v114 = v112 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v18);
  v130 = v112 - v19;
  v129 = sub_21B20D118();
  v20 = *(v129 - 8);
  MEMORY[0x28223BE20](v129, v21);
  v128 = v112 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_21B20CFD8();
  v23 = *(v131 - 8);
  v25 = MEMORY[0x28223BE20](v131, v24);
  v127 = v112 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v27);
  v126 = v112 - v28;
  v29 = sub_21B20D018();
  v115 = *(v29 - 8);
  v31 = MEMORY[0x28223BE20](v29, v30);
  v125 = v112 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v31, v33);
  v36 = v112 - v35;
  v38 = MEMORY[0x28223BE20](v34, v37);
  v113 = v112 - v39;
  MEMORY[0x28223BE20](v38, v40);
  v116 = v112 - v41;
  v42 = type metadata accessor for DatasetColumnDescription(0);
  v142 = *(v42 - 8);
  MEMORY[0x28223BE20](v42 - 8, v43);
  v141 = (v112 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = type metadata accessor for InferredProtobufType(0);
  v47 = MEMORY[0x28223BE20](v45, v46);
  v124 = v112 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v47, v49);
  v52 = v112 - v51;
  if (a2 == a3)
  {
    return a1 & 1;
  }

  if (a3 < a2)
  {
LABEL_44:
    __break(1u);
    return result;
  }

  v137 = result;
  v112[1] = a10;
  v152 = a9;
  v135 = (v115 + 16);
  v132 = (v115 + 32);
  v145 = (v115 + 8);
  v123 = (v23 + 16);
  v122 = (v20 + 16);
  v121 = (v20 + 8);
  v120 = (v23 + 88);
  v119 = *MEMORY[0x277D3E4F0];
  v118 = (v23 + 8);
  v139 = (v115 + 56);
  v117 = (v115 + 48);
  v136 = a2;
  v138 = v112 - v51;
  v133 = a3;
  v134 = a6;
  v140 = v36;
  while (1)
  {
    if (a3 == a2)
    {
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    if (v136 < 0)
    {
      goto LABEL_42;
    }

    if (a2 >= *(a6 + 16))
    {
      goto LABEL_43;
    }

    v56 = v141;
    v57 = (a6 + ((*(v142 + 80) + 32) & ~*(v142 + 80)) + *(v142 + 72) * a2);
    sub_21B17FCC8(v57, v141);
    v58 = v144;

    sub_21B1CC190(v56, v143, v58, v52);
    v59 = *v57;
    v60 = v57[1];
    v61 = sub_21B20D108();
    v62 = *(v61 + 16);
    v147 = v59;
    if (!v62 || (v63 = sub_21B1B9778(v59, v60), (v64 & 1) == 0))
    {
      v146 = v60;
      v79 = v29;

      v80 = v52;
      v81 = v131;
      (*v123)(v126, v80, v131);
      v82 = v128;
      v83 = v129;
      (*v122)(v128, v152, v129);

      sub_21B20D0D8();
      (*v121)(v82, v83);
      LOBYTE(v150) = 1;
      v84 = v140;
      sub_21B20CFE8();
      v85 = v127;
      sub_21B20CFF8();
      LODWORD(v82) = (*v120)(v85, v81);
      (*v118)(v85, v81);
      if (v82 == v119)
      {
        v86 = sub_21B20D008();
        if (v87)
        {
          sub_21B1B9C24(&v150, v86, v87);
        }
      }

      v29 = v79;
      v88 = v130;
      (*v135)();
      v89 = *v139;
      (*v139)(v88, 0, 1, v29);
      v90 = v146;

      v91 = sub_21B20D0F8();
      v93 = v92;
      if ((*v117)(v88, 1, v29) == 1)
      {
        sub_21B186488(v88, &qword_27CD6F898, qword_21B215D38);
        v94 = sub_21B1B9778(v147, v90);
        if (v95)
        {
          v96 = v94;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v98 = *v93;
          v148 = *v93;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_21B2046B4();
            v98 = v148;
          }

          v99 = v114;
          (*(v115 + 32))(v114, *(v98 + 56) + *(v115 + 72) * v96, v29);
          sub_21B1BB0B8(v96, v98);
          v100 = 0;
          *v93 = v98;
        }

        else
        {
          v100 = 1;
          v99 = v114;
        }

        v89(v99, v100, 1, v29);

        sub_21B186488(v99, &qword_27CD6F898, qword_21B215D38);
        a6 = v134;
        v84 = v140;
      }

      else
      {
        v53 = v90;
        v54 = v125;
        (*v132)(v125, v88, v29);
        v55 = swift_isUniquelyReferenced_nonNull_native();
        v148 = *v93;
        sub_21B1BBA18(v54, v147, v53, v55);

        *v93 = v148;
        a6 = v134;
      }

      v91(&v150, 0);
      (*v145)(v84, v29);
      a1 = 1;
      v52 = v138;
      goto LABEL_7;
    }

    LODWORD(v146) = a1;
    v65 = v115;
    v66 = *(v115 + 16);
    v67 = v113;
    v66(v113, *(v61 + 56) + *(v115 + 72) * v63, v29);

    v68 = v116;
    (*(v65 + 32))(v116, v67, v29);
    v69 = v125;
    v66(v125, v68, v29);
    v70 = v124;
    sub_21B20CFF8();
    v71 = sub_21B20D008();
    v73 = v72;
    v74 = *(v65 + 8);
    v74(v69, v29);
    v75 = v137;
    v76 = (v70 + *(v137 + 20));
    *v76 = v71;
    v76[1] = v73;
    v52 = v138;
    if ((sub_21B20CFC8() & 1) == 0)
    {
      goto LABEL_33;
    }

    v77 = &v52[*(v75 + 20)];
    v78 = *(v77 + 1);
    if (v73)
    {
      if (!v78 || (v71 != *v77 || v73 != v78) && (sub_21B20DB28() & 1) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    }

    if (v78)
    {
      break;
    }

LABEL_31:
    v74(v116, v29);
    sub_21B1C416C(v124);
    a1 = v146;
    a6 = v134;
LABEL_7:
    ++a2;
    result = sub_21B1C416C(v52);
    a3 = v133;
    if (v133 == a2)
    {
      return a1 & 1;
    }
  }

  v73 = 0;
LABEL_33:
  v150 = 0;
  v151 = 0xE000000000000000;
  sub_21B20D6A8();
  v101 = v144;

  v150 = v143;
  v151 = v101;
  MEMORY[0x21CEEBBB0](46, 0xE100000000000000);
  MEMORY[0x21CEEBBB0](v147, v60);
  MEMORY[0x21CEEBBB0](0x2073616820, 0xE500000000000000);
  v148 = 0;
  v149 = 0xE000000000000000;
  if (v73)
  {
    MEMORY[0x21CEEBBB0](v71, v73);
    MEMORY[0x21CEEBBB0](10272, 0xE200000000000000);
    sub_21B20D768();
    v102 = 0x657079742029;
    v103 = 0xE600000000000000;
  }

  else
  {
    sub_21B20D768();
    v102 = 0x6570797420;
    v103 = 0xE500000000000000;
  }

  MEMORY[0x21CEEBBB0](v102, v103);
  MEMORY[0x21CEEBBB0](v148, v149);

  MEMORY[0x21CEEBBB0](0x20656C696877202CLL, 0xE800000000000000);
  v104 = v138;
  v105 = &v138[*(v137 + 20)];
  LOBYTE(a1) = v146;
  if (*(v105 + 1))
  {
    v106 = *v105;
    v148 = 0;
    v149 = 0xE000000000000000;
    MEMORY[0x21CEEBBB0](v106);
    MEMORY[0x21CEEBBB0](10272, 0xE200000000000000);
    sub_21B20D768();
    v107 = 0x657079742029;
    v108 = 0xE600000000000000;
  }

  else
  {
    v148 = 0;
    v149 = 0xE000000000000000;
    sub_21B20D768();
    v107 = 0x6570797420;
    v108 = 0xE500000000000000;
  }

  MEMORY[0x21CEEBBB0](v107, v108);
  MEMORY[0x21CEEBBB0](v148, v149);

  MEMORY[0x21CEEBBB0](0x65666E6920736920, 0xEC00000064657272);
  v109 = v150;
  v110 = v151;
  sub_21B186430();
  swift_allocError();
  *v111 = v109;
  *(v111 + 8) = v110;
  *(v111 + 16) = 5;
  swift_willThrow();
  v74(v116, v29);
  sub_21B1C416C(v124);
  sub_21B1C416C(v104);
  return a1 & 1;
}

uint64_t sub_21B1C3A48(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v50 = a5;
  v51 = a4;
  v10 = sub_21B20D118();
  v49 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v47 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 + 16);
  if (!v13)
  {
    return a1 & 1;
  }

  v14 = (a2 + 48);
  v48 = a3;
  while (1)
  {
    v52 = v13;
    v56 = a1;
    v57 = v6;
    v15 = *(v14 - 2);
    v16 = *(v14 - 1);
    v17 = *v14;
    v18 = *(a3 + 16);
    swift_bridgeObjectRetain_n();
    v54 = v17;

    v19 = v15;
    v20 = v16;
    if (v18)
    {
      v21 = sub_21B1B9778(v15, v16);
      v19 = v15;
      v20 = v16;
      if (v22)
      {
        v23 = (*(a3 + 56) + 16 * v21);
        v19 = *v23;
        v20 = v23[1];
      }
    }

    v55 = v15;
    v53 = sub_21B20D088();
    v25 = v24;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v59 = *v25;
    v27 = v59;
    *v25 = 0x8000000000000000;
    v28 = v19;
    v30 = sub_21B1B9778(v19, v20);
    v31 = v27[2];
    v32 = (v29 & 1) == 0;
    v33 = v31 + v32;
    if (__OFADD__(v31, v32))
    {
      break;
    }

    v34 = v29;
    if (v27[3] >= v33)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_21B2044CC();
      }
    }

    else
    {
      sub_21B202604(v33, isUniquelyReferenced_nonNull_native);
      v35 = sub_21B1B9778(v28, v20);
      if ((v34 & 1) != (v36 & 1))
      {
        goto LABEL_20;
      }

      v30 = v35;
    }

    v37 = v57;
    a1 = v56;
    *v25 = v59;

    v38 = *v25;
    if ((v34 & 1) == 0)
    {
      v39 = v47;
      sub_21B20D0E8();
      sub_21B2051DC(v30, v28, v20, v39, v38);
    }

    v40 = v38[7] + *(v49 + 72) * v30;
    v41 = v54;
    v42 = *(v54 + 16);

    v43 = sub_21B1C2CF8(0, 0, v42, v55, v16, v41, v28, v20, v40, v50);
    v6 = v37;
    if (v37)
    {

      v53(v58, 1);

      return a1 & 1;
    }

    v44 = v43;

    v53(v58, 0);

    a1 |= v44;
    v14 += 3;
    v13 = v52 - 1;
    a3 = v48;
    if (v52 == 1)
    {
      return a1 & 1;
    }
  }

  __break(1u);
LABEL_20:
  result = sub_21B20DBF8();
  __break(1u);
  return result;
}

uint64_t sub_21B1C3DEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F878, &qword_21B215CA0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for AutomaticProtobufFactory.DrivenBy(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = (v7 + 2147483646) & 0x7FFFFFFF;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AutomaticProtobufFactory.DrivenBy(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_21B1C4128(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_21B1C4144(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t sub_21B1C416C(uint64_t a1)
{
  v2 = type metadata accessor for InferredProtobufType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ProtobufFactory.__allocating_init(manifest:messageNameMap:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F878, &qword_21B215CA0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v16 - v6;
  v8 = swift_allocObject();
  v9 = OBJC_IVAR____TtC12PoirotBlocks15ProtobufFactory_store;
  v10 = sub_21B20CF68();
  v11 = *(*(v10 - 8) + 56);
  v11(v8 + v9, 1, 1, v10);
  v12 = OBJC_IVAR____TtC12PoirotBlocks15ProtobufFactory_manifest;
  v13 = sub_21B20D0C8();
  (*(*(v13 - 8) + 32))(v8 + v12, a1, v13);
  *(v8 + OBJC_IVAR____TtC12PoirotBlocks15ProtobufFactory_messageNameMap) = a2;
  v11(v7, 1, 1, v10);
  v14 = OBJC_IVAR____TtC12PoirotBlocks15ProtobufFactory_store;
  swift_beginAccess();
  sub_21B1C3DEC(v7, v8 + v14);
  swift_endAccess();
  return v8;
}

uint64_t sub_21B1C43C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12PoirotBlocks15ProtobufFactory_manifest;
  swift_beginAccess();
  v5 = sub_21B20D0C8();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_21B1C4450(uint64_t a1, uint64_t *a2)
{
  v4 = sub_21B20D0C8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = *a2;
  v10 = OBJC_IVAR____TtC12PoirotBlocks15ProtobufFactory_manifest;
  swift_beginAccess();
  (*(v5 + 40))(v9 + v10, v8, v4);
  return swift_endAccess();
}

uint64_t sub_21B1C4568@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12PoirotBlocks15ProtobufFactory_manifest;
  swift_beginAccess();
  v4 = sub_21B20D0C8();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t ProtobufFactory.init(manifest:messageNameMap:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F878, &qword_21B215CA0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v16 - v7;
  v9 = OBJC_IVAR____TtC12PoirotBlocks15ProtobufFactory_store;
  v10 = sub_21B20CF68();
  v11 = *(*(v10 - 8) + 56);
  v11(v2 + v9, 1, 1, v10);
  v12 = OBJC_IVAR____TtC12PoirotBlocks15ProtobufFactory_manifest;
  v13 = sub_21B20D0C8();
  (*(*(v13 - 8) + 32))(v2 + v12, a1, v13);
  *(v2 + OBJC_IVAR____TtC12PoirotBlocks15ProtobufFactory_messageNameMap) = a2;
  v11(v8, 1, 1, v10);
  v14 = OBJC_IVAR____TtC12PoirotBlocks15ProtobufFactory_store;
  swift_beginAccess();
  sub_21B1C3DEC(v8, v2 + v14);
  swift_endAccess();
  return v2;
}

uint64_t sub_21B1C4780@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21B20D0C8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F878, &qword_21B215CA0);
  v10 = MEMORY[0x28223BE20](v8 - 8, v9);
  v24 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v24 - v13;
  v15 = OBJC_IVAR____TtC12PoirotBlocks15ProtobufFactory_store;
  swift_beginAccess();
  sub_21B1C573C(v1 + v15, v14);
  v16 = sub_21B20CF68();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v14, 1, v16) != 1)
  {
    return (*(v17 + 32))(a1, v14, v16);
  }

  sub_21B1C546C(v14);
  v18 = OBJC_IVAR____TtC12PoirotBlocks15ProtobufFactory_manifest;
  swift_beginAccess();
  (*(v4 + 16))(v7, v1 + v18, v3);
  v19 = v25;
  sub_21B20CF38();
  if (v19)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v21 = *(v4 + 8);
  v25 = 0;
  v21(v7, v3);
  swift_getObjectType();
  v22 = v1;
  sub_21B20D128();
  swift_unknownObjectRelease();
  v23 = v24;
  (*(v17 + 16))(v24, a1, v16);
  (*(v17 + 56))(v23, 0, 1, v16);
  swift_beginAccess();
  sub_21B1C3DEC(v23, v22 + v15);
  return swift_endAccess();
}

uint64_t sub_21B1C4A8C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F878, &qword_21B215CA0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v16 - v5;
  v7 = sub_21B20D0C8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a1, v7);
  v12 = OBJC_IVAR____TtC12PoirotBlocks15ProtobufFactory_manifest;
  swift_beginAccess();
  (*(v8 + 40))(v1 + v12, v11, v7);
  swift_endAccess();
  v13 = sub_21B20CF68();
  (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
  v14 = OBJC_IVAR____TtC12PoirotBlocks15ProtobufFactory_store;
  swift_beginAccess();
  sub_21B1C3DEC(v6, v1 + v14);
  return swift_endAccess();
}

uint64_t sub_21B1C4C58(uint64_t *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = sub_21B20CF68();
  v21 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21B20D038();
  v20 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v14 = a1[1];
  v19 = a1[2];
  v16 = *(*(v4 + OBJC_IVAR____TtC12PoirotBlocks15ProtobufFactory_messageNameMap) + 16);

  if (v16)
  {
    sub_21B1B9778(v15, v14);
    if (v17)
    {
    }
  }

  sub_21B1C4780(v9);
  if (v3)
  {
  }

  else
  {
    sub_21B20CF58();

    (*(v21 + 8))(v9, v6);
    v6 = sub_21B20D028();
    (*(v20 + 8))(v13, v10);
  }

  return v6;
}

uint64_t sub_21B1C4ED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15[3] = a3;
  v15[1] = a2;
  v4 = sub_21B20CF68();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21B20D038();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B1C4780(v8);
  if (!v3)
  {
    sub_21B20CF58();
    (*(v5 + 8))(v8, v4);
    v4 = sub_21B20D028();
    (*(v10 + 8))(v13, v9);
  }

  return v4;
}

uint64_t ProtobufFactory.deinit()
{
  v1 = OBJC_IVAR____TtC12PoirotBlocks15ProtobufFactory_manifest;
  v2 = sub_21B20D0C8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_21B1C546C(v0 + OBJC_IVAR____TtC12PoirotBlocks15ProtobufFactory_store);
  return v0;
}

uint64_t ProtobufFactory.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC12PoirotBlocks15ProtobufFactory_manifest;
  v2 = sub_21B20D0C8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_21B1C546C(v0 + OBJC_IVAR____TtC12PoirotBlocks15ProtobufFactory_store);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_21B1C525C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15[3] = a3;
  v15[1] = a2;
  v4 = sub_21B20CF68();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21B20D038();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B1C4780(v8);
  if (!v3)
  {
    sub_21B20CF58();
    (*(v5 + 8))(v8, v4);
    v4 = sub_21B20D028();
    (*(v10 + 8))(v13, v9);
  }

  return v4;
}

uint64_t sub_21B1C546C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F878, &qword_21B215CA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for ProtobufFactory(uint64_t a1)
{
  result = qword_27CD6F8A8;
  if (!qword_27CD6F8A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21B1C5528(uint64_t a1)
{
  sub_21B20D0C8();
  if (v1 <= 0x3F)
  {
    sub_21B1C56E4(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_21B1C56E4(uint64_t a1)
{
  if (!qword_27CD6F8B8)
  {
    sub_21B20CF68();
    v1 = sub_21B20D5D8();
    if (!v2)
    {
      atomic_store(v1, &qword_27CD6F8B8);
    }
  }
}

uint64_t sub_21B1C573C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F878, &qword_21B215CA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B1C57AC()
{
  v0 = sub_21B20D218();
  __swift_allocate_value_buffer(v0, qword_27CD7E090);
  __swift_project_value_buffer(v0, qword_27CD7E090);
  return sub_21B20D208();
}

uint64_t sub_21B1C5824(void (*a1)(__int128 *__return_ptr, uint64_t *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v16 = MEMORY[0x277D84F90];
    sub_21B18FE78(0, v5, 0);
    v6 = v16;
    for (i = (a3 + 32); ; ++i)
    {
      v14 = *i;

      a1(v15, &v14, &v13);
      if (v4)
      {
        break;
      }

      v4 = 0;

      v16 = v6;
      v11 = *(v6 + 16);
      v10 = *(v6 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_21B18FE78((v10 > 1), v11 + 1, 1);
        v6 = v16;
      }

      *(v6 + 16) = v11 + 1;
      sub_21B17C284(v15, v6 + 40 * v11 + 32);
      if (!--v5)
      {
        return v6;
      }
    }
  }

  return v6;
}

uint64_t sub_21B1C595C(void (*a1)(void *__return_ptr, void *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v27 = MEMORY[0x277D84F90];
    sub_21B19006C(0, v4, 0);
    v5 = v27;
    v7 = (a3 + 56);
    while (1)
    {
      v8 = *(v7 - 2);
      v9 = *(v7 - 1);
      v10 = *v7;
      v22[0] = *(v7 - 3);
      v22[1] = v8;
      v22[2] = v9;
      v23 = v10;

      a1(v24, v22, &v21);
      if (v3)
      {
        break;
      }

      v12 = v24[0];
      v11 = v24[1];
      v13 = v25;
      v14 = v26;
      v27 = v5;
      v16 = *(v5 + 16);
      v15 = *(v5 + 24);
      if (v16 >= v15 >> 1)
      {
        v19 = v25;
        sub_21B19006C((v15 > 1), v16 + 1, 1);
        v13 = v19;
        v5 = v27;
      }

      *(v5 + 16) = v16 + 1;
      v17 = v5 + 40 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v11;
      *(v17 + 48) = v13;
      *(v17 + 64) = v14;
      v7 += 32;
      --v4;
      v3 = 0;
      if (!v4)
      {
        return v5;
      }
    }
  }

  return v5;
}

void *sub_21B1C5AB4(void (*a1)(uint64_t *__return_ptr, char *, void *), uint64_t a2)
{
  v3 = v2;
  v29 = a1;
  v30 = a2;
  v4 = sub_21B20CA88();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21B20CAA8();
  v10 = sub_21B1C83C0();
  v11 = sub_21B20D538();
  result = MEMORY[0x277D84F90];
  if (v11)
  {
    v37 = MEMORY[0x277D84F90];
    sub_21B18FD38(0, v11 & ~(v11 >> 63), 0);
    *&v33 = v37;
    result = sub_21B20D528();
    if ((v11 & 0x8000000000000000) == 0)
    {
      v32 = v10;
      v13 = 0;
      v27 = (v5 + 16);
      v28 = (v5 + 8);
      v25 = v4;
      v26 = v8;
      v24[1] = v9;
      while (1)
      {
        v14 = v11;
        v15 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        v16 = sub_21B20D558();
        (*v27)(v8);
        v16(v34, 0);
        v29(&v35, v8, v34);
        if (v3)
        {
          (*v28)(v8, v4);
        }

        v31 = 0;
        (*v28)(v8, v4);
        v17 = v35;
        v18 = v36;
        v19 = v33;
        v37 = v33;
        v21 = *(v33 + 16);
        v20 = *(v33 + 24);
        if (v21 >= v20 >> 1)
        {
          v33 = v36;
          sub_21B18FD38((v20 > 1), v21 + 1, 1);
          v18 = v33;
          v19 = v37;
        }

        *(v19 + 16) = v21 + 1;
        *&v33 = v19;
        v22 = v19 + 24 * v21;
        *(v22 + 32) = v17;
        *(v22 + 40) = v18;
        result = sub_21B20D548();
        ++v13;
        v23 = v15 == v14;
        v11 = v14;
        v4 = v25;
        v8 = v26;
        v3 = v31;
        if (v23)
        {
          return v33;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21B1C5D74(uint64_t result, uint64_t a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    for (i = (result + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      __swift_mutable_project_boxed_opaque_existential_1(a2, *(a2 + 24));
      sub_21B1A7C74(v5, v6, v7);
      sub_21B1ACF78();
      sub_21B20DAE8();
      if (v2)
      {
        break;
      }

      result = sub_21B1A7C90(v5, v6, v7);
      if (!--v3)
      {
        return result;
      }
    }

    return sub_21B1A7C90(v5, v6, v7);
  }

  return result;
}

uint64_t sub_21B1C5E60@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = 1;
  return result;
}

void sub_21B1C5E80(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
}

uint64_t sub_21B1C5E90(uint64_t a1)
{
  v2 = sub_21B1C7EBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B1C5ECC(uint64_t a1)
{
  v2 = sub_21B1C7EBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AnyCodable.init(arrayLiteral:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  return result;
}

void AnyCodable.init(floatLiteral:)(uint64_t a1@<X8>, double a2@<D0>)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 4;
}

uint64_t AnyCodable.init(BOOLeanLiteral:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result & 1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 5;
  return result;
}

uint64_t AnyCodable.init(integerLiteral:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 3;
  return result;
}

void AnyCodable.init(dictionaryLiteral:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    v3 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F8C0, &qword_21B215D90);
    v4 = sub_21B20D808();
    a1 = v3;
  }

  else
  {
    v4 = MEMORY[0x277D84F98];
  }

  v5 = v4;
  sub_21B1C70C0(a1, 1, &v5);
  *a2 = v5;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
}

uint64_t AnyCodable.init(stringLiteral:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 2;
  return result;
}

uint64_t AnyCodable.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v31 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F8C8, &qword_21B215D98);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F8D0, &qword_21B215DA0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v27 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B1C7EBC();
  sub_21B20DCD8();
  if (v2)
  {

    (*(v9 + 56))(v7, 1, 1, v8);
    sub_21B186488(v7, &qword_27CD6F8C8, &qword_21B215D98);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_21B20DCB8();
    sub_21B17C284(&v27, v29);
    __swift_project_boxed_opaque_existential_1(v29, v30);
    v16 = sub_21B20DAD8();
    v17 = MEMORY[0x277D84F90];
    if ((v16 & 1) == 0)
    {
      do
      {
        __swift_mutable_project_boxed_opaque_existential_1(v29, v30);
        sub_21B1ACF24();
        sub_21B20DAC8();
        v20 = v27;
        v21 = v28;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_21B1D31A0(0, *(v17 + 2) + 1, 1, v17);
        }

        v23 = *(v17 + 2);
        v22 = *(v17 + 3);
        if (v23 >= v22 >> 1)
        {
          v17 = sub_21B1D31A0((v22 > 1), v23 + 1, 1, v17);
        }

        *(v17 + 2) = v23 + 1;
        v24 = &v17[24 * v23];
        *(v24 + 2) = v20;
        v24[48] = v21;
        __swift_project_boxed_opaque_existential_1(v29, v30);
      }

      while ((sub_21B20DAD8() & 1) == 0);
    }

    __swift_destroy_boxed_opaque_existential_1(v29);
    v18 = 1;
  }

  else
  {
    (*(v9 + 56))(v7, 0, 1, v8);
    (*(v9 + 32))(v12, v7, v8);
    v13 = sub_21B20D968();
    MEMORY[0x28223BE20](v13, v14);
    *(&v27 - 2) = v12;
    v15 = sub_21B1C595C(sub_21B1C7F10, (&v27 - 2), v13);

    if (*(v15 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F8C0, &qword_21B215D90);
      v19 = sub_21B20D808();
    }

    else
    {
      v19 = MEMORY[0x277D84F98];
    }

    v29[0] = v19;
    sub_21B1C70C0(v15, 1, v29);
    v17 = v29[0];
    (*(v9 + 8))(v12, v8);
    v18 = 0;
  }

  v25 = v31;
  *v31 = v17;
  v25[1] = 0;
  *(v25 + 16) = v18;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void *sub_21B1C6624@<X0>(uint64_t *a1@<X0>, void *a2@<X2>, void *a3@<X8>)
{
  v5 = a1[1];
  *a3 = *a1;
  a3[1] = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F8D0, &qword_21B215DA0);
  sub_21B1ACF24();
  result = sub_21B20D918();
  if (v3)
  {

    *a2 = v3;
  }

  return result;
}

uint64_t AnyCodable.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F8E8, &qword_21B215DB0);
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = v18 - v8;
  v10 = *v1;
  v11 = *(v1 + 16);
  if (v11 > 2)
  {
    if (v11 != 3)
    {
      if (v11 == 4)
      {
        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        sub_21B20DCF8();
        __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
        sub_21B20DBA8();
      }

      else
      {
        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        sub_21B20DCF8();
        __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
        sub_21B20DB98();
      }

      return __swift_destroy_boxed_opaque_existential_1(v21);
    }

    goto LABEL_11;
  }

  v12 = *(v1 + 8);
  if (*(v1 + 16))
  {
    if (v11 == 1)
    {
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      sub_21B20DCE8();
      sub_21B1C5D74(v10, v21);
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      sub_21B20DCF8();
      __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
      sub_21B20DB88();
    }

    return __swift_destroy_boxed_opaque_existential_1(v21);
  }

  v20 = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B1C7EBC();
  sub_21B20DD08();
  a1 = *(v10 + 16);
  if (a1)
  {
    v13 = sub_21B1C703C(*(v10 + 16), 0);
    v14 = sub_21B1C7A9C(v21, v13 + 4, a1, v10);
    v15 = v21[0];
    v18[2] = v21[1];
    v19 = v14;
    v18[0] = v23;
    v18[1] = v22;
    sub_21B1A7C74(v10, v12, 0);
    sub_21B1A7C74(v10, v12, 0);
    sub_21B17AB4C(v15);
    if (v19 != a1)
    {
      __break(1u);
LABEL_11:
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      sub_21B20DCF8();
      __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
      sub_21B20DBC8();
      return __swift_destroy_boxed_opaque_existential_1(v21);
    }
  }

  else
  {

    v13 = MEMORY[0x277D84F90];
  }

  v21[0] = v13;
  sub_21B1836B8(v21);
  if (v2)
  {

    __break(1u);
  }

  else
  {
    sub_21B1A7C90(v10, v12, 0);
    v17 = v21[0];
    sub_21B1A7C74(v10, v12, 0);
    sub_21B1C7F30(v17, v9, v10);
    sub_21B1A7C90(v10, v12, 0);

    return (*(v5 + 8))(v9, v20);
  }

  return result;
}

void AnyCodable.asAny()(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 16);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v5 = MEMORY[0x277D84A28];
    }

    else
    {
      if (v3 != 4)
      {
        *(a1 + 24) = MEMORY[0x277D839B0];
        *a1 = v2 & 1;
        return;
      }

      v5 = MEMORY[0x277D839F8];
    }

    *(a1 + 24) = v5;
    *a1 = v2;
    return;
  }

  if (*(v1 + 16))
  {
    if (v3 == 1)
    {
      *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F8F0, &qword_21B215DB8);
      *a1 = v2;
    }

    else
    {
      v26 = v1[1];
      *(a1 + 24) = MEMORY[0x277D837D0];
      *a1 = v2;
      *(a1 + 8) = v26;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EBB8, &qword_21B2115D0);
    v6 = sub_21B20D7E8();
    v7 = v6;
    v8 = 0;
    v9 = v2 + 64;
    v10 = 1 << *(v2 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v2 + 64);
    v13 = (v10 + 63) >> 6;
    v28 = v6 + 64;
    v29 = v6;
    if (v12)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = v2;
        v19 = (*(v2 + 48) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];

        AnyCodable.asAny()(v30);
        v7 = v29;
        *(v28 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        v22 = (v29[6] + 16 * v17);
        *v22 = v20;
        v22[1] = v21;
        sub_21B17C304(v30, (v29[7] + 32 * v17));
        v23 = v29[2];
        v24 = __OFADD__(v23, 1);
        v25 = v23 + 1;
        if (v24)
        {
          break;
        }

        v29[2] = v25;
        v2 = v18;
        if (!v12)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
LABEL_12:
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
          *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F8F8, &qword_21B215DC0);
          *a1 = v7;
          return;
        }

        v16 = *(v9 + 8 * v8);
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

    __break(1u);
  }
}

void sub_21B1C6D94(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    v3 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F8C0, &qword_21B215D90);
    v4 = sub_21B20D808();
    a1 = v3;
  }

  else
  {
    v4 = MEMORY[0x277D84F98];
  }

  v5 = v4;
  sub_21B1C70C0(a1, 1, &v5);
  *a2 = v5;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
}

uint64_t sub_21B1C6E50@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  return result;
}

void *sub_21B1C6E60@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 4;
  return result;
}

unsigned __int8 *sub_21B1C6E74@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 5;
  return result;
}

void *sub_21B1C6E88@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 3;
  return result;
}

void *sub_21B1C6EB0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EB90, &qword_21B2115B0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

void *sub_21B1C6F40(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EE38, &qword_21B214180);
  v4 = *(type metadata accessor for DatasetColumnDescription(0) - 8);
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

void *sub_21B1C703C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EE20, &qword_21B212318);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void sub_21B1C70C0(uint64_t a1, char a2, uint64_t *a3)
{
  v47 = *(a1 + 16);
  if (!v47)
  {
    goto LABEL_24;
  }

  v6 = *(a1 + 64);
  v8 = *(a1 + 48);
  v7 = *(a1 + 56);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);

  sub_21B1A7C74(v8, v7, v6);
  if (!v10)
  {
    goto LABEL_24;
  }

  v49 = v6;
  v48 = a3;
  v11 = *a3;
  v13 = sub_21B1B9778(v9, v10);
  v14 = *(v11 + 16);
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v17 = v12;
  if (*(v11 + 24) >= v16)
  {
    if (a2)
    {
      if ((v12 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_21B2044F4();
      if ((v17 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_10;
  }

  sub_21B20262C(v16, a2 & 1);
  v18 = sub_21B1B9778(v9, v10);
  if ((v17 & 1) == (v19 & 1))
  {
    v13 = v18;
    if ((v17 & 1) == 0)
    {
LABEL_13:
      v22 = v48;
      v23 = *v48;
      *(*v48 + 8 * (v13 >> 6) + 64) |= 1 << v13;
      v24 = (v23[6] + 16 * v13);
      *v24 = v9;
      v24[1] = v10;
      v25 = v23[7] + 24 * v13;
      *v25 = v8;
      *(v25 + 8) = v7;
      *(v25 + 16) = v49;
      v26 = v23[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v23[2] = v28;
      if (v47 != 1)
      {
        v29 = (a1 + 104);
        v30 = 1;
        while (v30 < *(a1 + 16))
        {
          v31 = *v29;
          v8 = *(v29 - 2);
          v7 = *(v29 - 1);
          v33 = *(v29 - 4);
          v32 = *(v29 - 3);

          sub_21B1A7C74(v8, v7, v31);
          if (!v32)
          {
            goto LABEL_24;
          }

          v49 = v31;
          v34 = *v22;
          v35 = sub_21B1B9778(v33, v32);
          v37 = *(v34 + 16);
          v38 = (v36 & 1) == 0;
          v27 = __OFADD__(v37, v38);
          v39 = v37 + v38;
          if (v27)
          {
            goto LABEL_26;
          }

          v40 = v36;
          if (*(v34 + 24) < v39)
          {
            sub_21B20262C(v39, 1);
            v35 = sub_21B1B9778(v33, v32);
            if ((v40 & 1) != (v41 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v40)
          {
            goto LABEL_10;
          }

          v22 = v48;
          v42 = *v48;
          *(*v48 + 8 * (v35 >> 6) + 64) |= 1 << v35;
          v43 = (v42[6] + 16 * v35);
          *v43 = v33;
          v43[1] = v32;
          v44 = v42[7] + 24 * v35;
          *v44 = v8;
          *(v44 + 8) = v7;
          *(v44 + 16) = v49;
          v45 = v42[2];
          v27 = __OFADD__(v45, 1);
          v46 = v45 + 1;
          if (v27)
          {
            goto LABEL_27;
          }

          ++v30;
          v42[2] = v46;
          v29 += 40;
          if (v47 == v30)
          {
            goto LABEL_24;
          }
        }

        __break(1u);
        goto LABEL_26;
      }

LABEL_24:

      return;
    }

LABEL_10:
    v20 = swift_allocError();
    swift_willThrow();

    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EB28, &qword_21B2126E0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_21B1A7C90(v8, v7, v49);

      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  sub_21B20DBF8();
  __break(1u);
LABEL_29:
  sub_21B20D6A8();
  MEMORY[0x21CEEBBB0](0xD00000000000001BLL, 0x800000021B20EA00);
  sub_21B20D768();
  MEMORY[0x21CEEBBB0](39, 0xE100000000000000);
  sub_21B20D7C8();
  __break(1u);
}

void *sub_21B1C74BC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (!a2)
  {
    v6 = 0;
    goto LABEL_12;
  }

  v6 = a3;
  if (!a3)
  {
LABEL_12:
    *v5 = a4;
    v5[1] = v6;
    return v6;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v7 = *(a4 + 16);
    if (v7)
    {
      v8 = a2;
      v9 = 0;
      v10 = (a4 + 48);
      v11 = a3 - 1;
      while (v9 < *(a4 + 16))
      {
        v12 = *(v10 - 1);
        v13 = *v10;
        *v8 = *(v10 - 2);
        v8[1] = v12;
        v8[2] = v13;
        if (v11 == v9)
        {

          goto LABEL_12;
        }

        ++v9;
        v10 += 3;
        v8 += 3;
        if (v7 == v9)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_14;
    }

LABEL_9:
    v6 = v7;
    goto LABEL_12;
  }

LABEL_14:
  __break(1u);
  return result;
}

void *sub_21B1C7598(void *result, void *a2, uint64_t a3, uint64_t a4)
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
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v23 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 56) + 24 * (v17 | (v12 << 6)));
      v19 = v18[1];
      v20 = v18[2];
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v20;
      if (v14 == v10)
      {

        goto LABEL_23;
      }

      v11 += 3;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v22 = v12 + 1;
    }

    else
    {
      v22 = v13;
    }

    v12 = v22 - 1;
    v10 = result;
LABEL_23:
    v7 = v23;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_21B1C7718(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for DatasetColumnDescription(0);
  v34 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8 - 8, v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10, v13);
  v16 = &v31 - v15;
  v17 = a4 + 8;
  v18 = -1 << *(a4 + 32);
  if (-v18 < 64)
  {
    v19 = ~(-1 << -v18);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & a4[8];
  if (!a2)
  {
LABEL_18:
    v21 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v17;
    a1[2] = ~v18;
    a1[3] = v21;
    a1[4] = v20;
    return a3;
  }

  if (!a3)
  {
    v21 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v32 = a1;
    v33 = a3;
    result = 0;
    v21 = 0;
    v31 = v18;
    v22 = (63 - v18) >> 6;
    v23 = 1;
    while (v20)
    {
LABEL_14:
      v26 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      a1 = a4;
      v27 = a4[7];
      v28 = *(v34 + 72);
      sub_21B17FCC8(v27 + v28 * (v26 | (v21 << 6)), v12);
      sub_21B1867B4(v12, v16);
      sub_21B1867B4(v16, a2);
      if (v23 == v33)
      {
        a4 = a1;
        a1 = v32;
        a3 = v33;
        goto LABEL_23;
      }

      a2 += v28;
      result = v23;
      v29 = __OFADD__(v23++, 1);
      a4 = a1;
      if (v29)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v24 = v21;
    while (1)
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v25 >= v22)
      {
        break;
      }

      v20 = v17[v25];
      ++v24;
      if (v20)
      {
        v21 = v25;
        goto LABEL_14;
      }
    }

    v20 = 0;
    if (v22 <= v21 + 1)
    {
      v30 = v21 + 1;
    }

    else
    {
      v30 = v22;
    }

    v21 = v30 - 1;
    a3 = result;
    a1 = v32;
LABEL_23:
    v18 = v31;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_21B1C7940(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_21B1C7A9C(void *result, void *a2, uint64_t a3, uint64_t a4)
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
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t _s12PoirotBlocks10AnyCodableO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      if (v7 == 3)
      {
        sub_21B1A7C90(*a1, v3, 3u);
        sub_21B1A7C90(v5, v6, 3u);
        v12 = v2 == v5;
        return v12 & 1;
      }
    }

    else
    {
      if (v4 != 4)
      {
        if (v7 != 5)
        {
          goto LABEL_21;
        }

        sub_21B1A7C90(*a1, v3, 5u);
        sub_21B1A7C90(v5, v6, 5u);
        v12 = v5 ^ v2 ^ 1;
        return v12 & 1;
      }

      if (v7 == 4)
      {
        sub_21B1A7C90(*a1, v3, 4u);
        sub_21B1A7C90(v5, v6, 4u);
        v12 = *&v2 == *&v5;
        return v12 & 1;
      }
    }

LABEL_21:
    sub_21B1A7C74(v5, v6, v7);
    sub_21B1A7C90(v2, v3, v4);
    sub_21B1A7C90(v5, v6, v7);
    v12 = 0;
    return v12 & 1;
  }

  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      sub_21B1A7C74(*a2, *(a2 + 8), 0);
      sub_21B1A7C74(v2, v3, 0);
      v8 = sub_21B1B76AC(v2, v5);
      sub_21B1A7C90(v2, v3, 0);
      v9 = v5;
      v10 = v6;
      v11 = 0;
      goto LABEL_25;
    }

    goto LABEL_18;
  }

  if (v4 != 1)
  {
    if (v7 != 2)
    {
LABEL_18:

      goto LABEL_21;
    }

    if (v2 != v5 || v3 != v6)
    {
      LOBYTE(v8) = sub_21B20DB28();
      sub_21B1A7C74(v5, v6, 2u);
      sub_21B1A7C74(v2, v3, 2u);
      sub_21B1A7C90(v2, v3, 2u);
      v9 = v5;
      v10 = v6;
      v11 = 2;
      goto LABEL_25;
    }

    sub_21B1A7C74(v2, v3, 2u);
    sub_21B1A7C74(v2, v3, 2u);
    sub_21B1A7C90(v2, v3, 2u);
    sub_21B1A7C90(v2, v3, 2u);
    v12 = 1;
    return v12 & 1;
  }

  if (v7 != 1)
  {
    goto LABEL_18;
  }

  sub_21B1A7C74(*a2, *(a2 + 8), 1u);
  sub_21B1A7C74(v2, v3, 1u);
  LOBYTE(v8) = sub_21B1A6CB8(v2, v5);
  sub_21B1A7C90(v2, v3, 1u);
  v9 = v5;
  v10 = v6;
  v11 = 1;
LABEL_25:
  sub_21B1A7C90(v9, v10, v11);
  return v8 & 1;
}

unint64_t sub_21B1C7EBC()
{
  result = qword_27CD6F8D8;
  if (!qword_27CD6F8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F8D8);
  }

  return result;
}

uint64_t sub_21B1C7F30(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(result + 16);
  if (v5)
  {
    v7 = v5 - 1;
    v8 = (result + 40);
    do
    {
      v9 = v7;
      v11 = *(v8 - 1);
      v10 = *v8;
      v12 = *(a3 + 16);

      if (v12 && (v13 = sub_21B1B9778(v11, v10), (v14 & 1) != 0))
      {
        v15 = *(a3 + 56) + 24 * v13;
        v16 = *v15;
        v17 = *(v15 + 8);
        v18 = *(v15 + 16);
        sub_21B1A7C74(*v15, v17, v18);
      }

      else
      {
        v16 = 0;
        v17 = 0;
        v18 = -1;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F8E8, &qword_21B215DB0);
      sub_21B1ACF78();
      sub_21B20D9D8();
      sub_21B1C8418(v16, v17, v18);

      if (v4)
      {
        break;
      }

      v7 = v9 - 1;
      v8 += 2;
    }

    while (v9);
  }

  return result;
}

unint64_t sub_21B1C8080()
{
  result = qword_27CD6F900;
  if (!qword_27CD6F900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F900);
  }

  return result;
}

unint64_t sub_21B1C80FC()
{
  result = qword_27CD6F908;
  if (!qword_27CD6F908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F908);
  }

  return result;
}

unint64_t sub_21B1C8160()
{
  result = qword_27CD6F910;
  if (!qword_27CD6F910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F910);
  }

  return result;
}

uint64_t sub_21B1C81D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 17))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 16);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_21B1C8220(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_21B1C8274(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_21B1C82BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21B1C8314()
{
  result = qword_27CD6F918;
  if (!qword_27CD6F918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F918);
  }

  return result;
}

unint64_t sub_21B1C836C()
{
  result = qword_27CD6F920;
  if (!qword_27CD6F920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F920);
  }

  return result;
}

unint64_t sub_21B1C83C0()
{
  result = qword_27CD6F928;
  if (!qword_27CD6F928)
  {
    sub_21B20CAA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F928);
  }

  return result;
}

uint64_t sub_21B1C8418(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_21B1A7C90(result, a2, a3);
  }

  return result;
}

uint64_t static Archiver.archive(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21B20C678();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B1C867C(a1, v8);
  if (!v1)
  {
    v2 = sub_21B20C688();
    sub_21B1C9218();
    (*(v5 + 8))(v8, v4);
  }

  return v2;
}

void sub_21B1C8580(void *a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = sub_21B20C5A8();
  v7[0] = 0;
  LODWORD(a1) = [a1 removeItemAtURL:v2 error:v7];

  v3 = v7[0];
  if (a1)
  {

    v4 = v3;
  }

  else
  {
    v5 = v7[0];
    v6 = sub_21B20C508();

    swift_willThrow();
  }
}

uint64_t sub_21B1C867C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a1;
  v79 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F958, &qword_21B216210);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v84 = &v75 - v4;
  v88 = sub_21B20CC18();
  v97 = *(v88 - 8);
  v6 = MEMORY[0x28223BE20](v88, v5);
  v82 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v93 = &v75 - v9;
  v10 = sub_21B20CC08();
  v86 = *(v10 - 8);
  v87 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v85 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21B20D228();
  v95 = *(v13 - 8);
  v96 = v13;
  v15 = MEMORY[0x28223BE20](v13, v14);
  v80 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v89 = &v75 - v18;
  v92 = sub_21B20C548();
  v19 = *(v92 - 8);
  MEMORY[0x28223BE20](v92, v20);
  v22 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_21B20C768();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v25);
  v27 = &v75 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_21B20C678();
  v94 = *(v100 - 8);
  v29 = MEMORY[0x28223BE20](v100, v28);
  v31 = &v75 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v32);
  v34 = &v75 - v33;
  v91 = [objc_opt_self() defaultManager];
  v35 = [v91 temporaryDirectory];
  sub_21B20C5E8();

  _s12PoirotBlocks0A18ToolTaskParametersV16recipeFolderPath07loggingH011executionId07runtimeE011userDefinedACSS_SSSg10Foundation4UUIDVAA07RuntimeE0VSgSDySSAA10AnyCodableOGSgtcfcfA1__0();
  v36 = sub_21B20C738();
  v38 = v37;
  (*(v24 + 8))(v27, v23);
  v39 = v96;
  v98 = v36;
  v99 = v38;
  v40 = v92;
  (*(v19 + 104))(v22, *MEMORY[0x277CC91D8], v92);
  sub_21B17FBB0();
  sub_21B20C668();
  (*(v19 + 8))(v22, v40);
  v41 = v100;

  v42 = (v94 + 8);
  v90 = *(v94 + 8);
  v90(v31, v41);
  sub_21B20CBE8();
  v92 = v34;
  v43 = sub_21B20C618();
  v44 = v89;
  MEMORY[0x21CEEBA50](v43);
  v45 = sub_21B20CBC8();
  v47 = v95 + 8;
  v46 = *(v95 + 8);
  v46(v44, v39);
  if (!v45)
  {
    sub_21B1CA13C();
    swift_allocError();
    *v68 = 0xD000000000000011;
    *(v68 + 8) = 0x800000021B20FA60;
    *(v68 + 16) = 0;
    swift_willThrow();

    v66 = v92;
    return (v90)(v66, v41);
  }

  v75 = v47;
  v76 = v46;
  v89 = v42;
  v48 = v85;
  sub_21B20CBF8();
  v98 = MEMORY[0x277D84F90];
  v49 = sub_21B1CA190();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F940, &qword_21B216200);
  v51 = sub_21B1CA1E8();
  v52 = v93;
  v77 = v50;
  v53 = v88;
  v78 = v49;
  sub_21B20D638();
  v54 = sub_21B20CBA8();
  v55 = v97 + 8;
  v56 = *(v97 + 8);
  v56(v52, v53);
  (*(v86 + 8))(v48, v87);
  if (!v54)
  {
    sub_21B1CA13C();
    swift_allocError();
    *v69 = 0xD000000000000018;
    *(v69 + 8) = 0x800000021B20FB20;
    *(v69 + 16) = 0;
    swift_willThrow();
    sub_21B20CBD8();
    v66 = v92;

    v41 = v100;
    return (v90)(v66, v41);
  }

  v87 = v45;
  sub_21B20CCA8();
  v57 = MEMORY[0x277D84F90];
  v58 = v93;
  v86 = v51;
  v97 = v55;
  v98 = MEMORY[0x277D84F90];
  sub_21B20D638();
  v59 = sub_21B20CC58();
  v56(v58, v53);
  if (!v59)
  {
    sub_21B1CA13C();
    swift_allocError();
    *v70 = 0xD000000000000013;
    *(v70 + 8) = 0x800000021B20FB40;
    *(v70 + 16) = 0;
    swift_willThrow();
    sub_21B20CBD8();
    v66 = v92;
    v41 = v100;

    sub_21B20CBD8();

    return (v90)(v66, v41);
  }

  v93 = v54;
  sub_21B20CC28();
  swift_allocObject();
  if (!sub_21B20CC38())
  {
    sub_21B1CA13C();
    swift_allocError();
    *v72 = 0xD000000000000015;
    *(v72 + 8) = 0x800000021B20FB90;
    *(v72 + 16) = 0;
    swift_willThrow();
    sub_21B20CC88();
    goto LABEL_7;
  }

  v85 = v56;
  v60 = sub_21B20C618();
  v61 = v80;
  MEMORY[0x21CEEBA50](v60);
  v62 = v84;
  (*(v95 + 56))(v84, 1, 1, v96);
  v98 = v57;
  v63 = v88;
  v64 = v82;
  sub_21B20D638();
  v65 = v83;
  sub_21B20CC78();
  if (v65)
  {

    (v85)(v64, v63);
    sub_21B1CA24C(v62);
    v76(v61, v96);
    sub_21B20CC88();
LABEL_7:
    v66 = v92;

    sub_21B20CBD8();
    v67 = v100;

    sub_21B20CBD8();

    v41 = v67;
    return (v90)(v66, v41);
  }

  (v85)(v64, v63);
  sub_21B1CA24C(v62);
  v76(v61, v96);
  v73 = v92;
  (*(v94 + 16))(v79, v92, v100);
  sub_21B20CC88();

  sub_21B20CBD8();
  v74 = v100;

  sub_21B20CBD8();

  return (v90)(v73, v74);
}

void sub_21B1C9218()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() defaultManager];
  v1 = sub_21B20C5A8();
  v7[0] = 0;
  v2 = [v0 removeItemAtURL:v1 error:v7];

  v3 = v7[0];
  if (v2)
  {

    v4 = v3;
  }

  else
  {
    v5 = v7[0];
    v6 = sub_21B20C508();

    swift_willThrow();
  }
}

void sub_21B1C9338(void (*a1)(char *, uint64_t), char *a2, uint64_t a3)
{
  v108 = a2;
  v99 = a3;
  v107 = a1;
  v115 = *MEMORY[0x277D85DE8];
  v101 = sub_21B20CC18();
  v104 = *(v101 - 8);
  v4 = MEMORY[0x28223BE20](v101, v3);
  v97 = v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v6);
  v100 = v95 - v7;
  v103 = sub_21B20D228();
  v105 = *(v103 - 8);
  MEMORY[0x28223BE20](v103, v8);
  v102 = v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_21B20C548();
  v10 = *(v106 - 1);
  MEMORY[0x28223BE20](v106, v11);
  v13 = v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21B20C768();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = v95 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_21B20C678();
  v20 = *(v19 - 8);
  v111 = v19;
  v112 = v20;
  v22 = MEMORY[0x28223BE20](v19, v21);
  v24 = v95 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v25);
  v27 = v95 - v26;
  v98 = objc_opt_self();
  v110 = [v98 defaultManager];
  v28 = [v110 temporaryDirectory];
  sub_21B20C5E8();

  _s12PoirotBlocks0A18ToolTaskParametersV16recipeFolderPath07loggingH011executionId07runtimeE011userDefinedACSS_SSSg10Foundation4UUIDVAA07RuntimeE0VSgSDySSAA10AnyCodableOGSgtcfcfA1__0();
  v29 = sub_21B20C738();
  v31 = v30;
  (*(v15 + 8))(v18, v14);
  v113 = v29;
  v114 = v31;
  v32 = v106;
  (*(v10 + 104))(v13, *MEMORY[0x277CC91D8], v106);
  sub_21B17FBB0();
  sub_21B20C668();
  v33 = v13;
  v34 = v111;
  (*(v10 + 8))(v33, v32);
  v35 = v112;
  v36 = v27;

  v39 = *(v35 + 8);
  v37 = v35 + 8;
  v38 = v39;
  v39(v24, v34);
  v40 = v109;
  sub_21B20C6C8();
  if (v40)
  {
    v38(v36, v34);

    return;
  }

  v96 = 0;
  v41 = v104;
  sub_21B20CBE8();
  v42 = sub_21B20C618();
  v43 = v102;
  MEMORY[0x21CEEBA50](v42);
  v44 = sub_21B20CBC8();
  v45 = v105 + 8;
  v106 = *(v105 + 8);
  (v106)(v43, v103);
  if (!v44)
  {
    sub_21B1CA13C();
    swift_allocError();
    *v75 = 0xD000000000000011;
    *(v75 + 8) = 0x800000021B20FA60;
    *(v75 + 16) = 1;
    swift_willThrow();
    v76 = v110;
    sub_21B1C8580(v110);

    v77 = v36;
    v78 = v34;
LABEL_18:
    v38(v77, v78);
    return;
  }

  v105 = v45;
  v107 = v38;
  v108 = v36;
  v112 = v37;
  v113 = MEMORY[0x277D84F90];
  v46 = sub_21B1CA190();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F940, &qword_21B216200);
  v48 = sub_21B1CA1E8();
  v49 = v100;
  v95[4] = v47;
  v50 = v101;
  sub_21B20D638();
  v51 = sub_21B20CBB8();
  v54 = *(v41 + 8);
  v52 = v41 + 8;
  v53 = v54;
  (v54)(v49, v50);
  v109 = v51;
  if (!v51)
  {
    sub_21B1CA13C();
    swift_allocError();
    *v79 = 0xD00000000000001ALL;
    *(v79 + 8) = 0x800000021B20FA80;
    *(v79 + 16) = 1;
    swift_willThrow();
    sub_21B20CBD8();

    v80 = v110;
    v81 = v108;
    sub_21B1C8580(v110);

    v107(v81, v111);
    return;
  }

  v95[3] = v44;
  sub_21B20CCA8();
  v113 = MEMORY[0x277D84F90];
  v95[0] = v48;
  v95[1] = v46;
  sub_21B20D638();
  v55 = sub_21B20CC48();
  (v53)(v49, v50);
  v95[2] = v55;
  if (!v55)
  {
    sub_21B1CA13C();
    swift_allocError();
    *v82 = 0xD000000000000013;
    *(v82 + 8) = 0x800000021B20FAA0;
    *(v82 + 16) = 1;
    swift_willThrow();
    sub_21B20CBD8();
    v83 = v111;
    v38 = v107;
    v84 = v108;

    sub_21B20CBD8();
LABEL_17:

    v87 = v110;
    sub_21B1C8580(v110);

    v77 = v84;
    v78 = v83;
    goto LABEL_18;
  }

  v104 = v52;
  v56 = [v98 defaultManager];
  v57 = sub_21B20C5A8();
  v113 = 0;
  v58 = [v56 createDirectoryAtURL:v57 withIntermediateDirectories:1 attributes:0 error:&v113];

  if (!v58)
  {
    v85 = v113;
    sub_21B20C508();

LABEL_16:
    swift_willThrow();
    sub_21B20CC88();
    v83 = v111;
    v38 = v107;
    v84 = v108;

    sub_21B20CBD8();

    sub_21B20CBD8();
    goto LABEL_17;
  }

  v59 = v113;
  v60 = sub_21B20C618();
  v61 = v102;
  MEMORY[0x21CEEBA50](v60);
  v113 = MEMORY[0x277D84F90];
  v62 = v100;
  v63 = v101;
  sub_21B20D638();
  v64 = sub_21B20CC68();
  v100 = v53;
  (v53)(v62, v63);
  (v106)(v61, v103);
  if (!v64)
  {
    sub_21B1CA13C();
    swift_allocError();
    *v86 = 0xD000000000000014;
    *(v86 + 8) = 0x800000021B20FAC0;
    *(v86 + 16) = 1;
    goto LABEL_16;
  }

  v113 = MEMORY[0x277D84F90];
  v65 = v97;
  sub_21B20D638();
  v66 = v96;
  v67 = sub_21B20CC98();
  if (v66)
  {
    (v100)(v65, v63);
LABEL_10:
    v68 = v111;
    v69 = v107;
    v70 = v108;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F950, &qword_21B216208);
    v71 = swift_allocObject();
    *(v71 + 16) = xmmword_21B2110C0;
    v113 = 0;
    v114 = 0xE000000000000000;
    MEMORY[0x21CEEBBB0](0x203A726F727245, 0xE700000000000000);
    swift_getErrorValue();
    sub_21B20DB08();
    v72 = v113;
    v73 = v114;
    *(v71 + 56) = MEMORY[0x277D837D0];
    *(v71 + 32) = v72;
    *(v71 + 40) = v73;
    sub_21B20DC68();

    swift_willThrow();
    sub_21B20CC88();

    sub_21B20CC88();

    sub_21B20CBD8();

    sub_21B20CBD8();

    v74 = v110;
    sub_21B1C8580(v110);

    v69(v70, v68);
    return;
  }

  v88 = v67;
  (v100)(v65, v63);
  if (!v88)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F950, &qword_21B216208);
    v93 = swift_allocObject();
    *(v93 + 16) = xmmword_21B2110C0;
    *(v93 + 56) = MEMORY[0x277D837D0];
    *(v93 + 32) = 0xD00000000000001CLL;
    *(v93 + 40) = 0x800000021B20FAE0;
    sub_21B20DC68();

    sub_21B1CA13C();
    swift_allocError();
    *v94 = 0xD000000000000015;
    *(v94 + 8) = 0x800000021B20FB00;
    *(v94 + 16) = 1;
    swift_willThrow();
    goto LABEL_10;
  }

  sub_21B20CC88();
  v89 = v111;
  v91 = v107;
  v90 = v108;

  sub_21B20CC88();

  sub_21B20CBD8();

  sub_21B20CBD8();
  v92 = v110;

  sub_21B1C8580(v92);

  v91(v90, v89);
}