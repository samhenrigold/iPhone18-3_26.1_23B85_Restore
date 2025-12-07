uint64_t sub_1ABD21148(uint64_t a1)
{
  v2 = sub_1ABF23784();
  v19 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1ABF23744();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for LogSignpost(0);
  v9 = *a1;
  v10 = *(a1 + 16);
  v11 = sub_1ABF23764();
  sub_1ABF23794();
  v18 = sub_1ABF24704();
  result = sub_1ABF247D4();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v6 + 8))(v8, v5);
  }

  if ((v10 & 1) == 0)
  {
    if (v9)
    {
LABEL_9:

      sub_1ABF237C4();

      v13 = v19;
      if ((*(v19 + 88))(v4, v2) == *MEMORY[0x1E69E93E8])
      {
        v14 = "[Error] Interval already ended";
      }

      else
      {
        (*(v13 + 8))(v4, v2);
        v14 = "";
      }

      v15 = swift_slowAlloc();
      *v15 = 0;
      v16 = sub_1ABF23724();
      _os_signpost_emit_with_name_impl(&dword_1ABA78000, v11, v18, v16, v9, v14, v15, 2u);
      MEMORY[0x1AC5AB8B0](v15, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v9 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v9 & 0xFFFFF800) != 0xD800)
  {
    if (v9 >> 16 <= 0x10)
    {
      v9 = &v20;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

unint64_t *sub_1ABD214A8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t), unint64_t *a3)
{
  v6 = a1;
  v13[1] = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  if ((v7 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();
      a3 = sub_1ABD21808(v12, v8, v6, a2);
      MEMORY[0x1AC5AB8B0](v12, -1, -1);
      return a3;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v9 = (v13 - ((8 * v8 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_1ABB18078(0, v8, v9);
  sub_1ABD21684(v9, v8, v6, a2);
  if (!v3)
  {
    return v10;
  }

  swift_willThrow();
  return a3;
}

uint64_t sub_1ABD2162C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1ABA7BBB0();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_1ABD21684(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v22 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(a3 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(*(a3 + 56) + 8 * v13);

    v18 = a4(v15, v16, v17);

    if (v18)
    {
      *(result + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_15:
        sub_1ABD21B10(result, a2, v22, a3, &qword_1EB4D8060, &unk_1ABF58E10);
        return;
      }
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
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t *sub_1ABD21808(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1ABD21684(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void sub_1ABD21898(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v4 = a4;
    v5 = a3;
    if (*(a4 + 16) == a3)
    {
    }

    else
    {
      sub_1ABAD219C(&qword_1EB4D56F0, &qword_1ABF4ACF8);
      v7 = sub_1ABF24D54();
      if (a2 < 1)
      {
        v8 = 0;
      }

      else
      {
        v8 = *a1;
      }

      v9 = 0;
      v10 = v7 + 64;
      v38 = a2;
      v39 = v4;
      while (v8)
      {
        v11 = __clz(__rbit64(v8));
        v40 = (v8 - 1) & v8;
LABEL_16:
        v14 = v11 | (v9 << 6);
        v15 = *(v4 + 56);
        v16 = (*(v4 + 48) + 48 * v14);
        v17 = *v16;
        v18 = v16[1];
        v19 = v16[2];
        v20 = v16[3];
        v22 = v16[4];
        v21 = v16[5];
        v23 = *(v15 + 8 * v14);
        sub_1ABF25234();

        v41 = v23;
        sub_1ABF23D34();
        sub_1ABF23D34();
        sub_1ABF23D34();
        sub_1ABF25294();
        sub_1ABA9A51C();
        if (((v26 << v25) & ~*(v10 + 8 * v24)) == 0)
        {
          sub_1ABA8E674();
          while (++v27 != v29 || (v28 & 1) == 0)
          {
            v30 = v27 == v29;
            if (v27 == v29)
            {
              v27 = 0;
            }

            v28 |= v30;
            if (*(v10 + 8 * v27) != -1)
            {
              sub_1ABA83620();
              goto LABEL_25;
            }
          }

          goto LABEL_29;
        }

        sub_1ABA8154C();
LABEL_25:
        sub_1ABA8FE48();
        *(v10 + v31) |= v32;
        v35 = (v33[6] + 48 * v34);
        *v35 = v17;
        v35[1] = v18;
        v35[2] = v19;
        v35[3] = v20;
        v35[4] = v22;
        v35[5] = v21;
        *(v33[7] + 8 * v34) = v41;
        ++v33[2];
        if (__OFSUB__(v5--, 1))
        {
          goto LABEL_30;
        }

        a2 = v38;
        v4 = v39;
        v8 = v40;
        if (!v5)
        {
          return;
        }
      }

      v12 = v9;
      while (1)
      {
        v9 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v9 >= a2)
        {
          return;
        }

        v13 = a1[v9];
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v40 = (v13 - 1) & v13;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
    }
  }
}

void sub_1ABD21B10(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  if (a3)
  {
    v6 = a4;
    v7 = a3;
    if (*(a4 + 16) == a3)
    {
    }

    else
    {
      sub_1ABAD219C(a5, a6);
      v10 = sub_1ABF24D54();
      v11 = v10;
      if (a2 < 1)
      {
        v12 = 0;
      }

      else
      {
        v12 = *a1;
      }

      v13 = 0;
      v14 = v10 + 64;
      v36 = v6;
      while (v12)
      {
        v15 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_16:
        v18 = v15 | (v13 << 6);
        v19 = *(v6 + 56);
        v20 = (*(v6 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = *(v19 + 8 * v18);
        sub_1ABF25234();

        sub_1ABF23D34();
        sub_1ABF25294();
        sub_1ABA9A51C();
        if (((v26 << v25) & ~*(v14 + 8 * v24)) == 0)
        {
          sub_1ABA8E674();
          while (++v27 != v29 || (v28 & 1) == 0)
          {
            v30 = v27 == v29;
            if (v27 == v29)
            {
              v27 = 0;
            }

            v28 |= v30;
            if (*(v14 + 8 * v27) != -1)
            {
              sub_1ABA83620();
              goto LABEL_25;
            }
          }

          goto LABEL_29;
        }

        sub_1ABA8154C();
LABEL_25:
        sub_1ABA8FE48();
        *(v14 + v31) |= v32;
        v34 = (v11[6] + 16 * v33);
        *v34 = v21;
        v34[1] = v22;
        *(v11[7] + 8 * v33) = v23;
        ++v11[2];
        if (__OFSUB__(v7--, 1))
        {
          goto LABEL_30;
        }

        v6 = v36;
        if (!v7)
        {
          return;
        }
      }

      v16 = v13;
      while (1)
      {
        v13 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v13 >= a2)
        {
          return;
        }

        v17 = a1[v13];
        ++v16;
        if (v17)
        {
          v15 = __clz(__rbit64(v17));
          v12 = (v17 - 1) & v17;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
    }
  }
}

uint64_t sub_1ABD21D84(uint64_t a1)
{
  result = type metadata accessor for QueryContext(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ResultGraph();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t HandleView.identifier(forHandle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1ABAD219C(&qword_1EB4D10F0, &qword_1ABF3A5C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1ABF34740;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  sub_1ABB2C7F4(inited, v7, v8, v9, v10, v11, v12, v13, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39);
  swift_getObjectType();
  sub_1ABAD219C(&qword_1EB4D8098, &qword_1ABF58E68);
  sub_1ABF22464();

  if (*(v27 + 16))
  {
    v14 = *(v27 + 48);

    v16 = 0;
  }

  else
  {

    v14 = 0;
    v16 = 1;
  }

  *a3 = v14;
  *(a3 + 8) = v16;
  return result;
}

uint64_t HandleView.identifiers(forHandles:)(uint64_t a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  ObjectType = swift_getObjectType();
  v48 = a1;
  sub_1ABAD219C(&qword_1EB4D8098, &qword_1ABF58E68);
  v6 = v3;
  v7 = 0;
  sub_1ABF22464();
  v17 = v54;
  sub_1ABF239C4();
  sub_1ABA81940();
  while (1)
  {
    if (v44 == v7)
    {

      return v6;
    }

    if (v7 >= *(v45 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      sub_1ABA7D178(&qword_1ED871B38);
      v8 = sub_1ABF237F4();
      sub_1ABA7AA24(v8, qword_1ED871B40);
      v9 = sub_1ABA7E848();
      v10 = sub_1ABF237D4();
      v11 = sub_1ABF24664();

      if (os_log_type_enabled(v10, v11))
      {
        swift_slowAlloc();
        v54 = sub_1ABA839A4();
        *ObjectType = 136315138;
        swift_getErrorValue();
        v12 = sub_1ABF25154();
        v6 = v13;
        v14 = sub_1ABADD6D8(v12, v13, &v54);

        *(ObjectType + 4) = v14;
        sub_1ABA80C84(&dword_1ABA78000, v15, v16, "HandleView: unable to retrieve records matching handles: %s");
        sub_1ABA7C384();
        sub_1ABA7BC34();
      }

      sub_1ABF239C4();
      return v6;
    }

    sub_1ABA90198();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v54 = v6;
    sub_1ABA8C190(isUniquelyReferenced_nonNull_native, v19, v20, v21, v22, v23, v24, v25, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53);
    sub_1ABA94B0C();
    if (v28)
    {
      goto LABEL_19;
    }

    v29 = v26;
    v30 = v27;
    sub_1ABAD219C(&qword_1EB4D80A0, &unk_1ABF3A630);
    v31 = sub_1ABF24C64();
    if (v31)
    {
      break;
    }

LABEL_11:
    if (v30)
    {

      v6 = v54;
      *(*(v54 + 56) + 8 * v29) = v4;
    }

    else
    {
      v6 = v54;
      sub_1ABA7F484();
      v41 = *(v54 + 16);
      v28 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v28)
      {
        goto LABEL_20;
      }

      *(v54 + 16) = v42;
    }

    v17 += 24;
    ++v7;
  }

  v39 = sub_1ABA8C190(v31, v32, v33, v34, v35, v36, v37, v38, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53);
  if ((v30 & 1) == (v40 & 1))
  {
    v29 = v39;
    goto LABEL_11;
  }

  result = sub_1ABF25104();
  __break(1u);
  return result;
}

uint64_t HandleView.handleToIdentifierMap()()
{
  v2 = *(v0 + 16);
  ObjectType = swift_getObjectType();
  sub_1ABAD219C(&qword_1EB4D8098, &qword_1ABF58E68);
  v4 = sub_1ABA7D9D4();
  sub_1ABA8EA48(v4, v5, v6);
  if (!v1)
  {
    v16 = v50;
    sub_1ABF239C4();
    sub_1ABA81940();
    while (1)
    {
      if (v43 == v1)
      {

        return v0;
      }

      if (v1 >= *(v44 + 16))
      {
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      sub_1ABA90198();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1ABA8C190(isUniquelyReferenced_nonNull_native, v18, v19, v20, v21, v22, v23, v24, v43, v44, v45, v46, v47, v48, v49, v0, v51, v52);
      sub_1ABA94B0C();
      if (v27)
      {
        goto LABEL_21;
      }

      v28 = v25;
      v29 = v26;
      sub_1ABAD219C(&qword_1EB4D80A0, &unk_1ABF3A630);
      v30 = sub_1ABF24C64();
      if (v30)
      {
        v38 = sub_1ABA8C190(v30, v31, v32, v33, v34, v35, v36, v37, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52);
        if ((v29 & 1) != (v39 & 1))
        {
          result = sub_1ABF25104();
          __break(1u);
          return result;
        }

        v28 = v38;
      }

      if (v29)
      {

        v0 = v50;
        *(*(v50 + 56) + 8 * v28) = v2;
      }

      else
      {
        v0 = v50;
        sub_1ABA7F484();
        v40 = *(v50 + 16);
        v27 = __OFADD__(v40, 1);
        v41 = v40 + 1;
        if (v27)
        {
          goto LABEL_22;
        }

        *(v50 + 16) = v41;
      }

      v16 += 24;
      ++v1;
    }
  }

  if (qword_1ED871B38 != -1)
  {
LABEL_23:
    sub_1ABA7D178(&qword_1ED871B38);
  }

  v7 = sub_1ABF237F4();
  sub_1ABA7AA24(v7, qword_1ED871B40);
  v8 = sub_1ABA7E848();
  v9 = sub_1ABF237D4();
  v10 = sub_1ABF24664();

  if (os_log_type_enabled(v9, v10))
  {
    swift_slowAlloc();
    v50 = sub_1ABA839A4();
    *ObjectType = 136315138;
    swift_getErrorValue();
    v11 = sub_1ABF25154();
    v0 = v12;
    v13 = sub_1ABADD6D8(v11, v12, &v50);

    *(ObjectType + 4) = v13;
    sub_1ABA80C84(&dword_1ABA78000, v14, v15, "HandleView: unable to retrieve all records: %s");
    sub_1ABA7C384();
    sub_1ABA7BC34();
  }

  sub_1ABF239C4();
  return v0;
}

uint64_t HandleView.identifierToHandleMap()()
{
  ObjectType = swift_getObjectType();
  sub_1ABAD219C(&qword_1EB4D8098, &qword_1ABF58E68);
  v2 = sub_1ABA7D9D4();
  sub_1ABA8EA48(v2, v3, v4);
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1ABAD219C(&unk_1EB4D2E60, &qword_1ABF4D8A0);
    sub_1ABB668FC();
    v14 = sub_1ABF239C4();
    ObjectType = 0;
    v27 = *(v29 + 16);
    v28 = v29;
    for (i = (v29 + 48); ; i += 3)
    {
      if (v27 == ObjectType)
      {

        return v14;
      }

      if (ObjectType >= *(v28 + 16))
      {
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      v17 = *(i - 2);
      v16 = *(i - 1);
      v18 = *i;
      swift_bridgeObjectRetain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = v14;
      v19 = sub_1ABAF81A8();
      if (__OFADD__(*(v14 + 16), (v20 & 1) == 0))
      {
        goto LABEL_19;
      }

      v21 = v19;
      v22 = v20;
      sub_1ABAD219C(&qword_1EB4D80A8, &qword_1ABF58E70);
      v23 = sub_1ABF24C64();
      v14 = v29;
      if (v23)
      {
        v24 = sub_1ABAF81A8();
        if ((v22 & 1) != (v25 & 1))
        {
          result = sub_1ABF25104();
          __break(1u);
          return result;
        }

        v21 = v24;
      }

      if ((v22 & 1) == 0)
      {
        sub_1ABAFDFD8(v21, v18, MEMORY[0x1E69E7CD0], v14);
      }

      sub_1ABB1840C(&v29, v17, v16);

      ++ObjectType;
    }
  }

  if (qword_1ED871B38 != -1)
  {
LABEL_20:
    sub_1ABA7D178(&qword_1ED871B38);
  }

  v5 = sub_1ABF237F4();
  sub_1ABA7AA24(v5, qword_1ED871B40);
  v6 = sub_1ABA7E848();
  v7 = sub_1ABF237D4();
  v8 = sub_1ABF24664();

  if (os_log_type_enabled(v7, v8))
  {
    swift_slowAlloc();
    v29 = sub_1ABA839A4();
    *ObjectType = 136315138;
    swift_getErrorValue();
    v9 = sub_1ABF25154();
    v11 = sub_1ABADD6D8(v9, v10, &v29);

    *(ObjectType + 4) = v11;
    sub_1ABA80C84(&dword_1ABA78000, v12, v13, "HandleView: unable to retrieve all records: %s");
    sub_1ABA7C384();
    sub_1ABA7BC34();
  }

  sub_1ABAD219C(&unk_1EB4D2E60, &qword_1ABF4D8A0);
  sub_1ABB668FC();
  v14 = sub_1ABF239C4();

  return v14;
}

uint64_t sub_1ABD22970@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v12 = a3;
  v5 = sub_1ABAD219C(&unk_1EB4D80B0, qword_1ABF58EE8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  v14[6] = a2;
  v13[3] = sub_1ABF22D14();
  v13[4] = MEMORY[0x1E69A0050];
  sub_1ABA93DC0(v13);
  sub_1ABF22D24();
  v14[3] = sub_1ABF22424();
  v14[4] = MEMORY[0x1E699FE60];
  sub_1ABA93DC0(v14);
  sub_1ABAD219C(&unk_1EB4D2E60, &qword_1ABF4D8A0);
  sub_1ABAB47C4(&qword_1ED86B990, &unk_1EB4D2E60, &qword_1ABF4D8A0, MEMORY[0x1E69E6508]);
  sub_1ABF23EE4();
  sub_1ABA84B54(v13);
  sub_1ABD22CB8();
  sub_1ABF221C4();
  sub_1ABA84B54(v14);
  sub_1ABAB47C4(&unk_1EB4D80C0, &unk_1EB4D80B0, qword_1ABF58EE8, MEMORY[0x1E699FF60]);
  sub_1ABD22C64();
  v9 = sub_1ABF22234();
  result = (*(v6 + 8))(v8, v5);
  if (!v3)
  {
    *v12 = v9;
  }

  return result;
}

uint64_t sub_1ABD22BBC@<X0>(uint64_t *a2@<X8>)
{
  sub_1ABD22C64();
  sub_1ABD22CB8();
  result = sub_1ABF22514();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1ABD22C64()
{
  result = qword_1EB4CFF10;
  if (!qword_1EB4CFF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CFF10);
  }

  return result;
}

unint64_t sub_1ABD22CB8()
{
  result = qword_1EB4CFF18;
  if (!qword_1EB4CFF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CFF18);
  }

  return result;
}

BOOL sub_1ABD22D34(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return v2 == v3;
  }

  v5 = sub_1ABF25054();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t sub_1ABD22D90(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C646E6168 && a2 == 0xE600000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

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

uint64_t sub_1ABD22E4C(char a1)
{
  if (a1)
  {
    return 25705;
  }

  else
  {
    return 0x656C646E6168;
  }
}

uint64_t sub_1ABD22E74(void *a1)
{
  v4 = sub_1ABAD219C(&qword_1EB4D80E0, &qword_1ABF59060);
  sub_1ABA7BB64();
  v12 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - v7;
  v11 = *(v1 + 16);
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABD23478();
  sub_1ABF252E4();
  v15 = 0;
  sub_1ABF24F34();
  if (!v2)
  {
    v13 = v11;
    v14 = 1;
    sub_1ABAE8BC8();
    sub_1ABF24F84();
  }

  return (*(v12 + 8))(v8, v4);
}

uint64_t sub_1ABD22FFC(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_1ABF23D34();
  return MEMORY[0x1AC5AA8D0](v2);
}

uint64_t sub_1ABD23034()
{
  v1 = *(v0 + 16);
  sub_1ABF25234();
  sub_1ABF23D34();
  MEMORY[0x1AC5AA8D0](v1);
  return sub_1ABF25294();
}

uint64_t sub_1ABD23098@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1ABAD219C(&qword_1EB4D80D8, &qword_1ABF59058);
  sub_1ABA7BB64();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABD23478();
  sub_1ABF252C4();
  if (v2)
  {
    return sub_1ABA84B54(a1);
  }

  v6 = sub_1ABF24E14();
  v8 = v7;
  sub_1ABAE8B74();
  sub_1ABF24E64();
  v9 = sub_1ABA8E0A8();
  v10(v9);
  *a2 = v6;
  a2[1] = v8;
  a2[2] = v12;

  sub_1ABA84B54(a1);
}

uint64_t sub_1ABD23274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABD22D90(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABD2329C(uint64_t a1)
{
  v2 = sub_1ABD23478();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABD232D8(uint64_t a1)
{
  v2 = sub_1ABD23478();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABD23344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABD234CC();

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1ABD233CC(uint64_t a1)
{
  v2 = *(v1 + 16);
  *&v4[72] = *v1;
  v5 = v2;
  sub_1ABF25234();
  sub_1ABD22FFC(v4);
  return sub_1ABF25294();
}

unint64_t sub_1ABD23424()
{
  result = qword_1EB4D80D0;
  if (!qword_1EB4D80D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D80D0);
  }

  return result;
}

unint64_t sub_1ABD23478()
{
  result = qword_1EB4CF1F8;
  if (!qword_1EB4CF1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF1F8);
  }

  return result;
}

unint64_t sub_1ABD234CC()
{
  result = qword_1EB4CFF00;
  if (!qword_1EB4CFF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CFF00);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HandleViewRecord.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1ABD23600()
{
  result = qword_1EB4D80E8[0];
  if (!qword_1EB4D80E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB4D80E8);
  }

  return result;
}

unint64_t sub_1ABD23658()
{
  result = qword_1EB4CF1E8;
  if (!qword_1EB4CF1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF1E8);
  }

  return result;
}

unint64_t sub_1ABD236B0()
{
  result = qword_1EB4CF1F0;
  if (!qword_1EB4CF1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF1F0);
  }

  return result;
}

void sub_1ABD23704()
{
  sub_1ABA7E2A8();
  v1 = v0;
  v2 = v0 + 64;
  v3 = 1 << *(v0 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v0 + 64);
  if (v5)
  {
    v6 = 0;
    v7 = __clz(__rbit64(v5));
    v8 = (v5 - 1) & v5;
    v9 = (v3 + 63) >> 6;
LABEL_9:
    v12 = (*(v0 + 48) + 16 * v7);
    v14 = *v12;
    v13 = v12[1];

    while (v8)
    {
LABEL_15:
      v16 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v17 = (*(v1 + 48) + ((v6 << 10) | (16 * v16)));
      v18 = *v17;
      v19 = v17[1];
      v20 = v14 == *v17 && v13 == v19;
      if (!v20 && (sub_1ABF25054() & 1) != 0)
      {

        v14 = v18;
        v13 = v19;
      }
    }

    while (1)
    {
      v15 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v15 >= v9)
      {

        goto LABEL_22;
      }

      v8 = *(v2 + 8 * v15);
      ++v6;
      if (v8)
      {
        v6 = v15;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v10 = 0;
    v9 = (v3 + 63) >> 6;
    while (1)
    {
      v6 = v5 + 1;
      if (v5 + 1 >= v9)
      {
        break;
      }

      v11 = *(v0 + 72 + 8 * v5);
      v10 += 64;
      ++v5;
      if (v11)
      {
        v8 = (v11 - 1) & v11;
        v7 = __clz(__rbit64(v11)) + v10;
        goto LABEL_9;
      }
    }

LABEL_22:
    sub_1ABA7BC1C();
  }
}

uint64_t sub_1ABD23888(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

uint64_t sub_1ABD238CC(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return 0;
  }

  result = a1[4];
  v4 = v1 - 1;
  if (v1 != 1)
  {
    v5 = a1 + 5;
    do
    {
      v7 = *v5++;
      v6 = v7;
      if (result <= v7)
      {
        result = v6;
      }

      --v4;
    }

    while (v4);
  }

  return result;
}

void sub_1ABD23910()
{
  sub_1ABA7E2A8();
  v2 = v1;
  v4 = v3;
  v5 = sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
  sub_1ABA7BD7C();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA80CA4();
  v11 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - v10;
  v27 = *(v2 + 16);
  if (v27)
  {
    v26 = v4;
    v13 = *(v7 + 16);
    v14 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v13(&v26 - v10, v14, v5, v11);
    for (i = 1; v27 != i; ++i)
    {
      (v13)(v0, v14 + *(v7 + 72) * i, v5);
      sub_1ABD25684();
      sub_1ABA7D0F8();
      v16 = sub_1ABF23B64();
      v17 = *(v7 + 8);
      if (v16)
      {
        v17(v12, v5);
        v18 = sub_1ABA7D0F8();
        v19(v18);
      }

      else
      {
        v17(v0, v5);
      }
    }

    v20 = v26;
    (*(v7 + 32))(v26, v12, v5);
    sub_1ABA7B9B4(v20, 0, 1, v5);
    sub_1ABA7BC1C();
  }

  else
  {
    sub_1ABA7BC1C();

    sub_1ABA7B9B4(v21, v22, v23, v24);
  }
}

uint64_t Heap.comparator.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Heap.init(usingComparator:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  result = sub_1ABF24154();
  a4[2] = result;
  return result;
}

void Heap.append(_:)()
{
  sub_1ABA7E2A8();
  v2 = v0;
  v4 = v3;
  v6 = *(v5 + 16);
  sub_1ABA7BD7C();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA80CA4();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v19 - v11;
  v13 = sub_1ABF24194();
  (*(v8 + 16))(v12, v4, v6);
  sub_1ABF241F4();
  v19[1] = v0 + 2;
  sub_1ABF241A4();
  v14 = (v8 + 8);
  while (v13 >= 1)
  {
    v15 = *v2;
    sub_1ABF24224();
    sub_1ABF24224();
    v16 = sub_1ABA7D0F8();
    v17 = v15(v16);
    v18 = *v14;
    (*v14)(v1, v6);
    v18(v12, v6);
    if ((v17 & 1) == 0)
    {
      break;
    }

    v19[2] = (v13 - 1) >> 1;
    v19[3] = v13;
    sub_1ABA7F4C8();
    swift_getWitnessTable();
    sub_1ABF23B84();
    v13 = (v13 - 1) >> 1;
  }

  sub_1ABA7BC1C();
}

Swift::Int __swiftcall Heap.parentIndex(_:)(Swift::Int result)
{
  if (!__OFSUB__(result, 1))
  {
    return (result - 1) / 2;
  }

  __break(1u);
  return result;
}

void Heap.removeRoot()()
{
  sub_1ABA7E2A8();
  v2 = v1;
  v4 = v3;
  v5 = *(v1 + 16);
  sub_1ABA7BD7C();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v0 + 16);
  sub_1ABF241F4();
  sub_1ABA7F390();
  swift_getWitnessTable();
  if (sub_1ABF24574())
  {
    v11 = 1;
LABEL_5:
    sub_1ABA7B9B4(v4, v11, 1, v5);
    sub_1ABA7BC1C();
    return;
  }

  sub_1ABF24224();
  v14 = 0;
  v12 = sub_1ABF24194();
  if (!__OFSUB__(v12, 1))
  {
    v13 = v12 - 1;
    sub_1ABA7F4C8();
    swift_getWitnessTable();
    sub_1ABF23B84();
    swift_getWitnessTable();
    swift_getWitnessTable();
    sub_1ABF245F4();
    (*(v7 + 8))(v10, v5);
    sub_1ABD23F1C(0, v2);
    v11 = 0;
    goto LABEL_5;
  }

  __break(1u);
}

void sub_1ABD23F1C(Swift::Int a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v26 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21[-v9];
  if (v11 + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v12 = *v2;
  v25 = *(v2 + 8);
  v13 = Heap.rightIndex(_:)(a1);
  v14 = sub_1ABF24194();
  if (__OFSUB__(v14, 1))
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

  v24 = a2;
  v15 = a1;
  if (v14 - 1 > 2 * a1)
  {
    v15 = (2 * a1) | 1;
    sub_1ABF24224();
    sub_1ABF24224();
    v23 = v13;
    v22 = v12(v10, v7);
    v16 = *(v26 + 8);
    v16(v7, v5);
    v16(v10, v5);
    v13 = v23;
    if ((v22 & 1) == 0)
    {
      v15 = a1;
    }
  }

  v17 = sub_1ABF24194();
  if (__OFSUB__(v17, 1))
  {
    goto LABEL_15;
  }

  if (v17 - 1 >= v13)
  {
    sub_1ABF24224();
    sub_1ABF24224();
    v18 = v13;
    v19 = v12(v10, v7);
    v20 = *(v26 + 8);
    v20(v7, v5);
    v20(v10, v5);
    if (v19)
    {
      v15 = v18;
    }
  }

  if (v15 != a1)
  {
    v27 = v15;
    v28 = a1;
    sub_1ABF241F4();
    swift_getWitnessTable();
    sub_1ABF23B84();
    sub_1ABD23F1C(v15, v24);
  }
}

Swift::Int __swiftcall Heap.leftIndex(_:)(Swift::Int result)
{
  if (result + 0x4000000000000000 >= 0)
  {
    return (2 * result) | 1;
  }

  __break(1u);
  return result;
}

Swift::Int __swiftcall Heap.rightIndex(_:)(Swift::Int result)
{
  if (result + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v1 = __OFADD__(2 * result, 2);
  result = 2 * result + 2;
  if (v1)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1ABD24228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - v11;
  v13 = *v3;
  v23 = v3;
  v14 = (v3 + 2);
  sub_1ABF24224();
  v22 = a2;
  v15 = v13(v12, a2);
  v24 = *(v7 + 8);
  v25 = v7 + 8;
  v24(v12, v6);
  if (v15)
  {
    result = sub_1ABF24CD4();
    __break(1u);
  }

  else
  {
    sub_1ABF241F4();
    sub_1ABF24144();
    v16 = *v14;
    sub_1ABD256E8(v5, *v14, v6);
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
    v18 = v16 & 0xFFFFFFFFFFFFFF8;
    if ((isClassOrObjCExistentialType & 1) == 0)
    {
      v18 = v16;
    }

    result = (*(v7 + 24))(v18 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v5, v22, v6);
    while (v5 >= 1)
    {
      sub_1ABF24224();
      sub_1ABF24224();
      v20 = v13(v12, v9);
      v21 = v24;
      v24(v9, v6);
      result = v21(v12, v6);
      if ((v20 & 1) == 0)
      {
        break;
      }

      v26 = (v5 - 1) >> 1;
      v27 = v5;
      swift_getWitnessTable();
      result = sub_1ABF23B84();
      v13 = *v23;
      v5 = (v5 - 1) >> 1;
    }
  }

  return result;
}

uint64_t (*Heap<A>.init()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)(uint64_t a1, uint64_t a2)@<X8>))(uint64_t a1, uint64_t a2)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  sub_1ABA93630();
  result = sub_1ABF24154();
  *a3 = sub_1ABD25518;
  a3[1] = v6;
  a3[2] = result;
  return result;
}

uint64_t Heap<A>.removeFirst(where:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a4;
  v16 = a1;
  v17 = a2;
  sub_1ABA93630();
  v7 = sub_1ABF247E4();
  sub_1ABA7BD7C();
  v14 = v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v18 = v12;
  sub_1ABA93630();
  sub_1ABF241F4();
  sub_1ABA7F390();
  swift_getWitnessTable();
  result = sub_1ABF24574();
  if ((result & 1) == 0)
  {
    v20 = v12;

    sub_1ABF244D4();

    if (!v5 && (v19 & 1) == 0)
    {
      sub_1ABD246F8(v18, a3, v15, v11);
      return (*(v14 + 8))(v11, v7);
    }
  }

  return result;
}

uint64_t sub_1ABD246F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v45 = a2;
  v46 = a3;
  v49 = a4;
  v6 = *(a2 + 16);
  v48 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v42 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v42 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v42 - v16;
  v47 = v4;
  v18 = v4 + 16;
  v50 = *(v4 + 16);
  sub_1ABF241F4();
  swift_getWitnessTable();
  if (sub_1ABF24574())
  {
    v19 = 1;
    v20 = v49;
    return sub_1ABA7B9B4(v20, v19, 1, v6);
  }

  sub_1ABF24224();
  if (sub_1ABF24194() == 1)
  {
    goto LABEL_6;
  }

  sub_1ABF24224();
  v21 = sub_1ABF24194();
  v22 = __OFSUB__(v21, 1);
  result = v21 - 1;
  if (v22)
  {
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  sub_1ABF24224();
  v44 = a1;
  v24 = sub_1ABF23BB4();
  v25 = v8;
  v26 = v17;
  v46 = v18;
  v27 = v48 + 8;
  v28 = *(v48 + 8);
  v28(v11, v6);
  v42[1] = v27;
  v43 = v28;
  v28(v14, v6);
  v17 = v26;
  if (v24)
  {
LABEL_6:
    swift_getWitnessTable();
    swift_getWitnessTable();
    sub_1ABF245F4();
    v29 = v48;
    (*(v48 + 8))(v14, v6);
LABEL_7:
    v20 = v49;
LABEL_8:
    (*(v29 + 32))(v20, v17, v6);
    v19 = 0;
    return sub_1ABA7B9B4(v20, v19, 1, v6);
  }

  v30 = v25;
  v31 = *v47;
  sub_1ABF24224();
  v32 = sub_1ABF24194();
  v22 = __OFSUB__(v32, 1);
  result = v32 - 1;
  if (v22)
  {
    goto LABEL_22;
  }

  sub_1ABF24224();
  v33 = v31(v14, v11);
  v34 = v43;
  v43(v11, v6);
  v34(v14, v6);
  v35 = sub_1ABF24194();
  v22 = __OFSUB__(v35, 1);
  result = v35 - 1;
  v36 = v22;
  if (v33)
  {
    if ((v36 & 1) == 0)
    {
      sub_1ABF24224();
      sub_1ABF24144();
      v37 = *(v47 + 16);
      v38 = v44;
      sub_1ABD256E8(v44, v37, v6);
      isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
      v40 = v37 & 0xFFFFFFFFFFFFFF8;
      if ((isClassOrObjCExistentialType & 1) == 0)
      {
        v40 = v37;
      }

      v29 = v48;
      (*(v48 + 40))(v40 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v38, v30, v6);
      swift_getWitnessTable();
      swift_getWitnessTable();
      sub_1ABF245F4();
      v43(v14, v6);
      sub_1ABD23F1C(v38, v45);
      goto LABEL_7;
    }

    goto LABEL_23;
  }

  if ((v36 & 1) == 0)
  {
    sub_1ABF24224();
    sub_1ABD24228(v44, v14, v45);
    v41 = v43;
    v43(v14, v6);
    swift_getWitnessTable();
    swift_getWitnessTable();
    sub_1ABF245F4();
    v41(v14, v6);
    v29 = v48;
    v20 = v49;
    goto LABEL_8;
  }

LABEL_24:
  __break(1u);
  return result;
}

void Heap<A>.remove(value:)()
{
  sub_1ABA7E2A8();
  v2 = v1;
  v4 = v3;
  sub_1ABA93630();
  v5 = sub_1ABF247E4();
  sub_1ABA7BD7C();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v11 - v9;
  v11[1] = *(v0 + 16);
  sub_1ABA93630();
  sub_1ABF241F4();
  sub_1ABA7F390();
  swift_getWitnessTable();
  sub_1ABF245B4();
  if ((v12 & 1) == 0)
  {
    sub_1ABD246F8(v11[2], v4, v2, v10);
    (*(v7 + 8))(v10, v5);
  }

  sub_1ABA7BC1C();
}

void Heap.debugDescription.getter(uint64_t a1)
{
  v2 = *v1;
  v52 = v1[1];
  v53 = v2;
  v3 = v1[2];
  v54 = v3;
  v4 = *(a1 + 16);
  v5 = sub_1ABF241F4();

  sub_1ABA7F390();
  WitnessTable = swift_getWitnessTable();
  v7 = sub_1ABF24574();
  if (v7)
  {

    return;
  }

  v54 = v3;
  MEMORY[0x1EEE9AC00](v7);
  v46[2] = v4;
  v9 = sub_1ABB66290(sub_1ABD25520, v46, v5, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v8);

  v10 = *(v9 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  v49 = v10;
  if (v10)
  {
    v54 = MEMORY[0x1E69E7CC0];
    sub_1ABADE07C(0, v10, 0);
    v12 = v54;
    v13 = v9 + 40;
    do
    {

      v14 = sub_1ABF23D44();

      v54 = v12;
      v16 = v12[2];
      v15 = v12[3];
      if (v16 >= v15 >> 1)
      {
        sub_1ABADE07C(v15 > 1, v16 + 1, 1);
        v12 = v54;
      }

      v12[2] = v16 + 1;
      v12[v16 + 4] = v14;
      v13 += 16;
      --v10;
    }

    while (v10);
    v10 = v49;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v17 = sub_1ABD238CC(v12);
  v19 = v18;

  if ((v19 & 1) == 0)
  {
    v50 = v4;
    v51 = v3;
    if (v10)
    {
      v56 = v11;
      sub_1ABADDBD4(0, v10, 0);
      v20 = 0;
      v21 = v56;
      v48 = v9 + 32;
      while (v20 < *(v9 + 16))
      {
        v22 = v9;
        v23 = v21;
        v24 = (v48 + 16 * v20);
        v25 = *v24;
        v26 = v24[1];

        sub_1ABA81954();
        if (sub_1ABF23D44() < v17)
        {
          do
          {
            sub_1ABA81954();
            if (sub_1ABF23D44())
            {
              v54 = v25;
              v55 = v26;
              v28 = sub_1ABA8E7B8();
              MEMORY[0x1AC5A9410](v28);
            }

            else
            {
              v54 = 32;
              v55 = 0xE100000000000000;
              v27 = sub_1ABA81954();
              MEMORY[0x1AC5A9410](v27);
            }

            v25 = v54;
            v26 = v55;

            sub_1ABA81954();
            v29 = sub_1ABF23D44();
          }

          while (v29 < v17);
        }

        v21 = v23;
        v56 = v23;
        v31 = *(v23 + 16);
        v30 = *(v23 + 24);
        if (v31 >= v30 >> 1)
        {
          sub_1ABADDBD4(v30 > 1, v31 + 1, 1);
          v21 = v56;
        }

        ++v20;
        *(v21 + 16) = v31 + 1;
        v32 = v21 + 16 * v31;
        *(v32 + 32) = v25;
        *(v32 + 40) = v26;
        v9 = v22;
        if (v20 == v49)
        {

          goto LABEL_24;
        }
      }
    }

    else
    {

      v21 = MEMORY[0x1E69E7CC0];
LABEL_24:
      v54 = 10;
      v55 = 0xE100000000000000;
      sub_1ABA8E7B8();
      v47 = sub_1ABF23E84();
      v48 = v33;
      v34 = 0;
      v35 = *(v21 + 16);
      v36 = v21 + 40;
      v49 = v21;
      if (!v35)
      {
LABEL_36:

        MEMORY[0x1AC5A9410](10, 0xE100000000000000);
        return;
      }

      while (v34 < *(v21 + 16))
      {
        v37 = v36;

        sub_1ABD25340(v34, v53, v52, v51, v17, v50);
        sub_1ABA8E7B8();
        v38 = sub_1ABF23E84();
        MEMORY[0x1AC5A9410](v38);

        v39 = sub_1ABA7D0F8();
        MEMORY[0x1AC5A9410](v39);

        sub_1ABA8E7B8();
        v40 = sub_1ABF23E84();
        MEMORY[0x1AC5A9410](v40);

        v41 = log2((v34 + 1));
        v42 = v41;
        if ((*&v41 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_38;
        }

        if (v41 <= -9.22337204e18)
        {
          goto LABEL_39;
        }

        if (v41 >= 9.22337204e18)
        {
          goto LABEL_40;
        }

        v43 = log2((v34 + 2));
        if ((*&v43 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_41;
        }

        if (v43 <= -9.22337204e18)
        {
          goto LABEL_42;
        }

        if (v43 >= 9.22337204e18)
        {
          goto LABEL_43;
        }

        if (*&v42 == *&v43)
        {
          v44 = v47;
          v45 = v48;
        }

        else
        {
          v44 = 10;
          v45 = 0xE100000000000000;
        }

        MEMORY[0x1AC5A9410](v44, v45);
        v36 = v37 + 16;
        --v35;
        ++v34;
        v21 = v49;
        if (!v35)
        {
          goto LABEL_36;
        }
      }

      __break(1u);
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
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1ABD25270@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x1EEE9AC00](a1);
  (*(v6 + 16))(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  result = sub_1ABF23C74();
  *a3 = result;
  a3[1] = v8;
  return result;
}

Swift::Int sub_1ABD25340(Swift::Int result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v11 = (2 * result) | 1;
  v12 = Heap.rightIndex(_:)(result);
  v13 = sub_1ABF24194();
  if (v11 >= v13)
  {
    goto LABEL_7;
  }

  result = sub_1ABD25340(v11, a2, a3, a4, a5, a6);
  v15 = result + v14;
  if (__OFADD__(result, v14))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v16 = v15 + a5;
  if (!__OFADD__(v15, a5))
  {
    goto LABEL_8;
  }

  __break(1u);
LABEL_7:
  v16 = 0;
LABEL_8:
  if (v12 >= v13)
  {
    return v16;
  }

  result = sub_1ABD25340(v12, a2, a3, a4, a5, a6);
  if (!__OFADD__(result, v17))
  {
    if (__OFADD__(result + v17, a5))
    {
      __break(1u);
    }

    return v16;
  }

LABEL_16:
  __break(1u);
  return result;
}

void HeapIterator.next()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Heap(0, *(a1 + 16), a3, a4);

  Heap.removeRoot()();
}

uint64_t Heap.makeIterator()@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
}

uint64_t sub_1ABD254D8@<X0>(void *a1@<X8>)
{
  Heap.makeIterator()(a1);
}

uint64_t sub_1ABD25574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1ABD255B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1ABD255EC(uint64_t *a1, int a2)
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

uint64_t sub_1ABD2562C(uint64_t result, int a2, int a3)
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

unint64_t sub_1ABD25684()
{
  result = qword_1EB4D8170;
  if (!qword_1EB4D8170)
  {
    sub_1ABAE2850(&qword_1EB4D1710, &qword_1ABF338A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8170);
  }

  return result;
}

uint64_t sub_1ABD256E8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v6 = a2;
  }

  if (*(v6 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

void sub_1ABD25744(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_1ABAFF238(a1, v27);
    swift_isUniquelyReferenced_nonNull_native();
    sub_1ABA7D9F0();
    v11 = sub_1ABAFAEC0(v4, a2, v5, v6, v7, v8, v9, v10, v23, v25);
    sub_1ABA81960(v11, v12, v13, v14, v15, v16, v17, v18, v24, v26);
  }

  else
  {
    sub_1ABA925A4(a1, &qword_1EB4D3000, &unk_1ABF3AA60);
    v19 = sub_1ABAC92C0(a2);
    if (v20)
    {
      v21 = v19;
      swift_isUniquelyReferenced_nonNull_native();
      sub_1ABA839C0();
      v22 = sub_1ABAD219C(&qword_1EB4D1FB8, &qword_1ABF351A8);
      sub_1ABA8C1A8(v22);
      sub_1ABAFF238((*(v25 + 56) + 32 * v21), v27);
      sub_1ABF24C84();
      *v2 = v25;
    }

    else
    {
      memset(v27, 0, sizeof(v27));
    }

    sub_1ABA925A4(v27, &qword_1EB4D3000, &unk_1ABF3AA60);
  }
}

void sub_1ABD25860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 8))
  {
    sub_1ABA925A4(a1, &qword_1EB4D3EE0, &unk_1ABF41370);
    sub_1ABC25D00(a2, a3, v5, v6, v7, v8, v9, v10, v21);

    sub_1ABA925A4(v21, &qword_1EB4D3EE0, &unk_1ABF41370);
  }

  else
  {
    sub_1ABAFF42C(a1, v21);
    swift_isUniquelyReferenced_nonNull_native();
    sub_1ABA7D9F0();
    sub_1ABAFB478();

    sub_1ABA81960(v11, v12, v13, v14, v15, v16, v17, v18, v19, v20);
  }
}

void sub_1ABD25924(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_1ABAFF5C4(a1, v27);
    swift_isUniquelyReferenced_nonNull_native();
    sub_1ABA7D9F0();
    v11 = sub_1ABAFB8D4(v4, a2, v5, v6, v7, v8, v9, v10, v23, v25);
    sub_1ABA81960(v11, v12, v13, v14, v15, v16, v17, v18, v24, v26);
  }

  else
  {
    sub_1ABA925A4(a1, &qword_1EB4D8178, &qword_1ABF594C8);
    v19 = sub_1ABAF8388(a2);
    if (v20)
    {
      v21 = v19;
      swift_isUniquelyReferenced_nonNull_native();
      sub_1ABA839C0();
      v22 = sub_1ABAD219C(&qword_1EB4D1FC0, &unk_1ABF351B0);
      sub_1ABA8C1A8(v22);
      sub_1ABAFF5C4((*(v25 + 56) + 40 * v21), v27);
      sub_1ABAD219C(&qword_1EB4D8190, qword_1ABF60F30);
      sub_1ABD26F30();
      sub_1ABF24C84();
      *v2 = v25;
    }

    else
    {
      v28 = 0;
      memset(v27, 0, sizeof(v27));
    }

    sub_1ABA925A4(v27, &qword_1EB4D8178, &qword_1ABF594C8);
  }
}

void sub_1ABD25A58(__int128 *a1, uint64_t a2)
{
  if (*(a1 + 40) == 255)
  {
    sub_1ABA925A4(a1, &qword_1EB4D8180, &unk_1ABF594D0);
    sub_1ABC25F10(&v14);
    sub_1ABC1AFCC(a2);
    sub_1ABA925A4(&v14, &qword_1EB4D8180, &unk_1ABF594D0);
  }

  else
  {
    v3 = a1[1];
    v14 = *a1;
    v15[0] = v3;
    *(v15 + 9) = *(a1 + 25);
    swift_isUniquelyReferenced_nonNull_native();
    sub_1ABA7D9F0();
    sub_1ABAFBF84();
    v4 = sub_1ABC1AFCC(a2);
    sub_1ABA81960(v4, v5, v6, v7, v8, v9, v10, v11, v12, v13);
  }
}

uint64_t sub_1ABD25B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 8))
  {
    sub_1ABA925A4(a1, &qword_1EB4D8188, &qword_1ABF67410);
    sub_1ABC26020(v13, a2, a3, a4, a5);

    return sub_1ABA925A4(v13, &qword_1EB4D8188, &qword_1ABF67410);
  }

  else
  {
    sub_1ABAFF124(a1, v13);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v5;
    sub_1ABAFC138(v13, a2, a3, a4, a5, isUniquelyReferenced_nonNull_native);

    *v5 = v12;
  }

  return result;
}

void IndexHandler.init(indexMap:)(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = a1;
  v4 = &type metadata for ContextIndexHandler;
  v5 = &off_1F2084CE0;
  sub_1ABD25924(v3, 5);
  *a2 = v6;
}

uint64_t sub_1ABD25C88@<X0>(unsigned __int8 *a1@<X0>, const void *a2@<X1>, void *a3@<X8>)
{
  sub_1ABF23744();
  sub_1ABA7BB64();
  v123 = v8;
  v124 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v121 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v122 = &v110 - v11;
  v128 = sub_1ABF237F4();
  sub_1ABA7BB64();
  v116 = v12;
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7C21C();
  v115 = v14;
  sub_1ABF23774();
  sub_1ABA7BB64();
  v119 = v16;
  v120 = v15;
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABA7C21C();
  v127 = v17;
  v117 = type metadata accessor for LogSignpost(0);
  MEMORY[0x1EEE9AC00](v117);
  sub_1ABA7C21C();
  v126 = v18;
  v19 = *a1;
  v20 = *(a1 + 2);
  v118 = *(a1 + 1);
  v22 = *(a1 + 3);
  v21 = *(a1 + 4);
  v129 = v20;
  *&v130 = v22;
  *(&v130 + 1) = v21;
  LODWORD(v141) = a1[40];
  v23 = *(a1 + 6);
  memcpy(__dst, a2, sizeof(__dst));
  v24 = v19;
  sub_1ABAD5168();
  if (*(&v131[1] + 1))
  {
    v114 = a3;
    v125 = v3;
    v25 = 1701736302;
    sub_1ABAFF5C4(v131, v137);
    v26 = v139;
    sub_1ABA93E20(v137, v138);
    v27 = sub_1ABA94A78();
    v29 = 0xE400000000000000;
    v30 = v28(v27, v26);
    switch(v19)
    {
      case 1:
        v29 = 0x80000001ABF7EE20;
        goto LABEL_12;
      case 2:
        v29 = 0xE700000000000000;
        goto LABEL_12;
      case 3:
        v29 = 0xEF7865646E496870;
        goto LABEL_12;
      case 4:
        v29 = 0xED00007865646E49;
        goto LABEL_12;
      case 5:
        v29 = 0xEC0000007865646ELL;
        goto LABEL_12;
      case 6:

        goto LABEL_13;
      case 7:
        v29 = 0x80000001ABF7EE80;
        goto LABEL_12;
      case 8:
        v29 = 0x80000001ABF7EEA0;
        goto LABEL_12;
      default:
LABEL_12:
        v25 = sub_1ABF25054();

        if ((v25 & 1) == 0)
        {
          goto LABEL_15;
        }

LABEL_13:
        if (*(v30 + 16))
        {
          sub_1ABB2C388(&unk_1F208E460);
          v32 = sub_1ABA94A78();
          sub_1ABD7A84C(v32, v29);
          v25 = v33;

          if ((v25 & 1) == 0)
          {
            if ((sub_1ABD26BE0(v30, v23) & 1) == 0)
            {
              if (qword_1ED86E458 != -1)
              {
                sub_1ABA8F02C(&qword_1ED86E458);
              }

              sub_1ABA7AA24(v128, qword_1ED86E460);
              sub_1ABA94A78();

              sub_1ABA8EA6C();
              v57 = sub_1ABF237D4();
              v58 = sub_1ABF24664();

              sub_1ABB3F860(v26, v25, a3);

              if (os_log_type_enabled(v57, v58))
              {
                v59 = swift_slowAlloc();
                v141 = swift_slowAlloc();
                *&v131[0] = v141;
                *v59 = 136315394;
                sub_1ABD26F30();
                v60 = sub_1ABF243A4();
                v62 = sub_1ABADD6D8(v60, v61, v131);

                *(v59 + 4) = v62;
                *(v59 + 12) = 2080;
                v63 = sub_1ABF243A4();
                v65 = sub_1ABADD6D8(v63, v64, v131);

                *(v59 + 14) = v65;
                _os_log_impl(&dword_1ABA78000, v57, v58, "Knosis.IndexHandler: insufficient access to query index: %s. Available access: %s", v59, 0x16u);
                swift_arrayDestroy();
                sub_1ABA7BC34();
                sub_1ABA7BC34();
              }

              v66 = v114;
              sub_1ABA901B8();
              MEMORY[0x1AC5A9410](0xD000000000000039, 0x80000001ABF8DC80);
              sub_1ABD26F30();
              v67 = sub_1ABF243A4();
              v69 = v68;

              MEMORY[0x1AC5A9410](v67, v69);

              v70 = v131[0];
              *v66 = 0;
              *(v66 + 1) = v70;
              return sub_1ABA84B54(v137);
            }

LABEL_16:
            if (qword_1ED86E458 != -1)
            {
              sub_1ABA8F02C(&qword_1ED86E458);
            }

            v41 = sub_1ABA7AA24(v128, qword_1ED86E460);

            v42 = v130;
            v43 = v141;
            sub_1ABB3F4DC(v130, *(&v130 + 1), v141);

            v113 = v41;
            v44 = sub_1ABF237D4();
            v45 = sub_1ABF24654();

            sub_1ABB3F860(v42, *(&v42 + 1), v43);

            if (os_log_type_enabled(v44, v45))
            {
              HIDWORD(v112) = v45;
              v46 = 0x617247746E657665;
              v47 = swift_slowAlloc();
              v111 = swift_slowAlloc();
              v132[0] = v111;
              *v47 = 136315394;
              v48 = v122;
              v49 = 0xEF7865646E496870;
              switch(v24)
              {
                case 1:
                  v46 = 0xD000000000000010;
                  v49 = 0x80000001ABF7EE20;
                  break;
                case 2:
                  v49 = 0xE700000000000000;
                  v46 = 0x7865646E496F6ELL;
                  break;
                case 3:
                  break;
                case 4:
                  v46 = 0x79676F6C6F746E6FLL;
                  v49 = 0xED00007865646E49;
                  break;
                case 5:
                  v46 = 0x49747865746E6F63;
                  v49 = 0xEC0000007865646ELL;
                  break;
                case 6:
                  v46 = 0x6172476C61636F6CLL;
                  break;
                case 7:
                  v49 = 0x80000001ABF7EE80;
                  v46 = 0xD00000000000001ALL;
                  break;
                case 8:
                  v49 = 0x80000001ABF7EEA0;
                  v46 = 0xD000000000000018;
                  break;
                default:
                  v49 = 0xE400000000000000;
                  v46 = 1701736302;
                  break;
              }

              v71 = sub_1ABADD6D8(v46, v49, v132);

              *(v47 + 4) = v71;
              *(v47 + 12) = 2080;
              v131[0] = v130;
              LOBYTE(v131[1]) = v141;
              *(&v131[1] + 1) = v23;
              v72 = KnosisAccessConfig.description.getter();
              v74 = sub_1ABADD6D8(v72, v73, v132);

              *(v47 + 14) = v74;
              _os_log_impl(&dword_1ABA78000, v44, BYTE4(v112), "Knosis.IndexHandler: sufficient access to query index: %s, from available access: %s", v47, 0x16u);
              swift_arrayDestroy();
              sub_1ABA7BC34();
              sub_1ABA7BC34();
            }

            else
            {

              v48 = v122;
            }

            v75 = v125;
            if (qword_1ED871F20 != -1)
            {
              swift_once();
            }

            v76 = v128;
            v77 = sub_1ABA7AA24(v128, qword_1ED871EF8);
            (*(v116 + 16))(v115, v77, v76);
            sub_1ABF23754();
            sub_1ABF23764();
            sub_1ABF23714();
            v78 = sub_1ABF23764();
            v79 = sub_1ABF24714();
            if (sub_1ABF247D4())
            {
              v80 = swift_slowAlloc();
              *v80 = 0;
              v81 = sub_1ABF23724();
              _os_signpost_emit_with_name_impl(&dword_1ABA78000, v78, v79, v81, "IndexHandler.execute", "", v80, 2u);
              sub_1ABA7BC34();
            }

            v82 = v123;
            v83 = v48;
            v84 = v48;
            v85 = v124;
            (*(v123 + 16))(v121, v83, v124);
            sub_1ABF237B4();
            swift_allocObject();
            sub_1ABA94A78();
            v86 = sub_1ABF237A4();
            (*(v82 + 8))(v84, v85);
            v88 = v126;
            v87 = v127;
            *v126 = "IndexHandler.execute";
            v88[1] = 20;
            *(v88 + 16) = 2;
            v88[3] = v86;
            (*(v119 + 32))(v88 + *(v117 + 24), v87, v120);
            v89 = v138;
            v90 = v139;
            sub_1ABA93E20(v137, v138);
            LOBYTE(v132[0]) = v24;
            v132[1] = v118;
            v132[2] = v129;
            v133 = v130;
            v134 = v141;
            v135 = v23;
            memcpy(v131, __dst, 0x69uLL);
            (*(v90 + 8))(v136, v132, v131, v89, v90);
            if (v75)
            {
              sub_1ABD26C08(v88);
              v91 = v88;
            }

            else
            {
              v92 = v136[0];
              v93 = v136[1];
              v94 = v136[2];

              v95 = sub_1ABF237D4();
              v96 = sub_1ABF24654();

              if (os_log_type_enabled(v95, v96))
              {
                v97 = swift_slowAlloc();
                v125 = 0;
                v98 = v97;
                *(&v130 + 1) = swift_slowAlloc();
                *&v131[0] = v92;
                v132[0] = *(&v130 + 1);
                *v98 = 136315138;
                *(&v131[0] + 1) = v93;
                *&v131[1] = v94;

                v141 = v93;
                v99 = v96;
                v100 = IndexResult.description.getter();
                v102 = v101;

                v103 = sub_1ABADD6D8(v100, v102, v132);

                *(v98 + 4) = v103;
                v104 = v99;
                v93 = v141;
                _os_log_impl(&dword_1ABA78000, v95, v104, "Index result: %s", v98, 0xCu);
                sub_1ABA84B54(*(&v130 + 1));
                sub_1ABA7BC34();
                sub_1ABA7BC34();
              }

              v105 = v114;
              *v114 = v92;
              v105[1] = v93;
              v105[2] = v94;
              v106 = v126;
              sub_1ABD26C08(v126);
              v91 = v106;
            }

            sub_1ABBA4F10(v91);
            return sub_1ABA84B54(v137);
          }
        }

LABEL_15:

        sub_1ABB131AC(v19, v23, v34, v35, v36, v37, v38, v39, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, *(&v130 + 1));
        if (v40)
        {
          goto LABEL_16;
        }

        v127 = 0xEF7865646E496870;
        if (qword_1ED86E458 != -1)
        {
          sub_1ABA8F02C(&qword_1ED86E458);
        }

        sub_1ABA7AA24(v128, qword_1ED86E460);

        sub_1ABA8EA6C();
        v50 = sub_1ABF237D4();
        v51 = sub_1ABF24664();

        sub_1ABB3F860(v26, v25, a3);

        if (os_log_type_enabled(v50, v51))
        {
          v52 = 0x617247746E657665;
          v53 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          *&v131[0] = v54;
          *v53 = 136315138;
          v55 = v54;
          switch(v24)
          {
            case 1:
              sub_1ABA9363C("stableGraphIndex");
              v52 = 0xD000000000000010;
              break;
            case 2:
              v127 = 0xE700000000000000;
              v52 = 0x7865646E496F6ELL;
              break;
            case 3:
              break;
            case 4:
              v52 = 0x79676F6C6F746E6FLL;
              v107 = 0xED00007865646E49;
              goto LABEL_59;
            case 5:
              v52 = 0x49747865746E6F63;
              v107 = 0xEC0000007865646ELL;
LABEL_59:
              v127 = v107;
              break;
            case 6:
              v52 = 0x6172476C61636F6CLL;
              break;
            case 7:
              sub_1ABA9363C("staticGlobalKnowledgeIndex");
              v52 = 0xD00000000000001ALL;
              break;
            case 8:
              sub_1ABA9363C("liveGlobalKnowledgeIndex");
              v52 = 0xD000000000000018;
              break;
            default:
              v127 = 0xE400000000000000;
              v52 = 1701736302;
              break;
          }

          v108 = sub_1ABADD6D8(v52, v127, v131);

          *(v53 + 4) = v108;
          _os_log_impl(&dword_1ABA78000, v50, v51, "Knosis.IndexHandler: insufficient access to query index: %s", v53, 0xCu);
          sub_1ABA84B54(v55);
          sub_1ABA7BC34();
          sub_1ABA7BC34();

          v56 = v114;
        }

        else
        {

          v56 = v114;
        }

        sub_1ABA901B8();
        MEMORY[0x1AC5A9410](0xD000000000000039, 0x80000001ABF8DC80);
        sub_1ABD7EAA4(v24);
        v109 = v131[0];
        *v56 = 0;
        *(v56 + 1) = v109;
        result = sub_1ABA84B54(v137);
        break;
    }
  }

  else
  {
    result = sub_1ABA925A4(v131, &qword_1EB4D8178, &qword_1ABF594C8);
    *a3 = xmmword_1ABF592F0;
    a3[2] = 0x80000001ABF8DC60;
  }

  return result;
}

uint64_t sub_1ABD26BE0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) >= *(a2 + 16))
  {
    return 0;
  }

  else
  {
    return sub_1ABD26F84(a2, a1);
  }
}

uint64_t sub_1ABD26C08(uint64_t a1)
{
  v2 = sub_1ABF23784();
  v19 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1ABF23744();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for LogSignpost(0);
  v9 = *a1;
  v10 = *(a1 + 16);
  v11 = sub_1ABF23764();
  sub_1ABF23794();
  v18 = sub_1ABF24704();
  result = sub_1ABF247D4();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v6 + 8))(v8, v5);
  }

  if ((v10 & 1) == 0)
  {
    if (v9)
    {
LABEL_9:

      sub_1ABF237C4();

      v13 = v19;
      if ((*(v19 + 88))(v4, v2) == *MEMORY[0x1E69E93E8])
      {
        v14 = "[Error] Interval already ended";
      }

      else
      {
        (*(v13 + 8))(v4, v2);
        v14 = "";
      }

      v15 = swift_slowAlloc();
      *v15 = 0;
      v16 = sub_1ABF23724();
      _os_signpost_emit_with_name_impl(&dword_1ABA78000, v11, v18, v16, v9, v14, v15, 2u);
      MEMORY[0x1AC5AB8B0](v15, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v9 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v9 & 0xFFFFF800) != 0xD800)
  {
    if (v9 >> 16 <= 0x10)
    {
      v9 = &v20;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_1ABD26F30()
{
  result = qword_1EB4CFF28[0];
  if (!qword_1EB4CFF28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB4CFF28);
  }

  return result;
}

uint64_t sub_1ABD26F84(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) < *(a2 + 16))
  {
    return 0;
  }

  v2 = a2;
  v4 = a2 + 56;
  v5 = 1 << *(a2 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a2 + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a1 + 56;

  v11 = 0;
  v27 = v4;
  v28 = v2;
  v26 = v8;
  if (v7)
  {
    while (1)
    {
      v12 = v11;
LABEL_10:
      if (!*(a1 + 16))
      {
        break;
      }

      v13 = *(*(v2 + 48) + (__clz(__rbit64(v7)) | (v12 << 6)));
      sub_1ABF25234();
      sub_1ABBB4ED8(v29, v13);
      v14 = sub_1ABF25294();
      v15 = -1 << *(a1 + 32);
      v16 = v14 & ~v15;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        break;
      }

      v7 &= v7 - 1;
      v17 = ~v15;
      while (1)
      {
        v18 = 0xE400000000000000;
        v19 = 1701736302;
        switch(*(*(a1 + 48) + v16))
        {
          case 1:
            v19 = 0xD000000000000010;
            v18 = 0x80000001ABF7EE20;
            break;
          case 2:
            v18 = 0xE700000000000000;
            v19 = 0x7865646E496F6ELL;
            break;
          case 3:
            v20 = 0x47746E657665;
            goto LABEL_21;
          case 4:
            v19 = 0x79676F6C6F746E6FLL;
            v18 = 0xED00007865646E49;
            break;
          case 5:
            v19 = 0x49747865746E6F63;
            v18 = 0xEC0000007865646ELL;
            break;
          case 6:
            v20 = 0x476C61636F6CLL;
LABEL_21:
            v19 = v20 & 0xFFFFFFFFFFFFLL | 0x6172000000000000;
            v18 = 0xEF7865646E496870;
            break;
          case 7:
            v19 = 0xD00000000000001ALL;
            v18 = 0x80000001ABF7EE80;
            break;
          case 8:
            v19 = 0xD000000000000018;
            v18 = 0x80000001ABF7EEA0;
            break;
          default:
            break;
        }

        v21 = 0xE400000000000000;
        v22 = 1701736302;
        switch(v13)
        {
          case 1:
            v22 = 0xD000000000000010;
            v21 = 0x80000001ABF7EE20;
            break;
          case 2:
            v21 = 0xE700000000000000;
            v22 = 0x7865646E496F6ELL;
            break;
          case 3:
            v23 = 0x47746E657665;
            goto LABEL_31;
          case 4:
            v22 = 0x79676F6C6F746E6FLL;
            v21 = 0xED00007865646E49;
            break;
          case 5:
            v22 = 0x49747865746E6F63;
            v21 = 0xEC0000007865646ELL;
            break;
          case 6:
            v23 = 0x476C61636F6CLL;
LABEL_31:
            v22 = v23 & 0xFFFFFFFFFFFFLL | 0x6172000000000000;
            v21 = 0xEF7865646E496870;
            break;
          case 7:
            v22 = 0xD00000000000001ALL;
            v21 = 0x80000001ABF7EE80;
            break;
          case 8:
            v22 = 0xD000000000000018;
            v21 = 0x80000001ABF7EEA0;
            break;
          default:
            break;
        }

        if (v19 == v22 && v18 == v21)
        {
          break;
        }

        v25 = sub_1ABF25054();

        if (v25)
        {
          goto LABEL_41;
        }

        v16 = (v16 + 1) & v17;
        if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
        {
          goto LABEL_43;
        }
      }

LABEL_41:
      v11 = v12;
      v4 = v27;
      v2 = v28;
      v8 = v26;
      if (!v7)
      {
        goto LABEL_7;
      }
    }

LABEL_43:

    return 0;
  }

LABEL_7:
  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return 1;
    }

    v7 = *(v4 + 8 * v12);
    ++v11;
    if (v7)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t InferenceClient.__allocating_init()()
{
  sub_1ABA7D544();
  v0 = swift_allocObject();
  InferenceClient.init()();
  return v0;
}

uint64_t InferenceClient.__allocating_init(serverParameters:)(uint64_t a1)
{
  sub_1ABA7D544();
  v1 = swift_allocObject();
  InferenceClient.init(serverParameters:)();
  return v1;
}

uint64_t InferenceClient.init(serverParameters:)()
{
  sub_1ABA7DA04();
  v3 = *v2;
  type metadata accessor for InferenceServer();
  v4 = sub_1ABD27500(v3);
  if (v1)
  {
    sub_1ABA7F4E0();
  }

  else
  {
    *(v0 + 16) = v4;
  }

  return v0;
}

uint64_t InferenceClient.__allocating_init(server:)(uint64_t a1)
{
  sub_1ABA7D544();
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void *sub_1ABD27500(uint64_t a1)
{
  v2 = a1;
  sub_1ABF217F4();
  swift_allocObject();
  v3 = sub_1ABF217E4();
  v4 = v3;
  if (qword_1ED870898 != -1)
  {
    v3 = swift_once();
  }

  v5 = qword_1ED8708A8;
  v6 = unk_1ED8708B0;
  MEMORY[0x1EEE9AC00](v3);
  v10[2] = v4;
  v10[3] = v1;
  type metadata accessor for InferenceServerLifecycleManagerNoOp();
  swift_allocObject();
  v7 = sub_1ABA92F40();
  v12 = type metadata accessor for InferenceServerCacheManagerNoOp();
  v13 = &off_1F207BA70;
  v11[0] = swift_allocObject();
  type metadata accessor for InferenceServer();
  swift_allocObject();

  v8 = sub_1ABD27750(v2, sub_1ABD27734, v4, v5, v6, sub_1ABA93F68, v10, v7, &off_1F2079E60, v11, MEMORY[0x1E69E7CC0], v4);

  return v8;
}

void *sub_1ABD27750(char a1, void (*a2)(__int128 *__return_ptr), uint64_t a3, void (*a4)(__int128 *__return_ptr), uint64_t a5, void (*a6)(__int128 *__return_ptr, uint64_t *), uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12)
{
  v14 = v12;
  *(v12 + 192) = 0;
  sub_1ABA92FFC();
  *(v12 + 16) = sub_1ABF239C4();
  *(v12 + 24) = a1;
  if (a1 < 0)
  {
    v30 = a1 & 1;
    a4(&v26);
    if (!v13)
    {
      v19 = v27;
      v20 = v28;
      v21 = sub_1ABA93E20(&v26, v27);
      v29[3] = v19;
      v29[4] = *(v20 + 16);
      v22 = sub_1ABA93DC0(v29);
      (*(*(v19 - 8) + 16))(v22, v21, v19);
      sub_1ABA84B54(&v26);
      goto LABEL_7;
    }
  }

  else
  {
    a2(&v26);
    if (!v13)
    {
      sub_1ABA946C0(&v26, v29);
LABEL_7:
      sub_1ABA93E64(v29, (v14 + 4));
      a6(&v26, v29);
      sub_1ABA946C0(&v26, (v14 + 16));
      v14[9] = a8;
      v14[10] = a9;
      sub_1ABA93E64(a10, (v14 + 11));
      v14[21] = a11;
      v14[22] = &type metadata for InferenceServiceDefinitionList;
      v14[23] = &protocol witness table for InferenceServiceDefinitionList;
      v14[25] = a12;
      swift_unknownObjectRetain();

      sub_1ABA94ED0(v24);
      swift_unknownObjectRelease();

      sub_1ABA84B54(a10);
      sub_1ABA84B54(v29);
      return v14;
    }
  }

  sub_1ABA84B54(a10);
  swift_unknownObjectRelease();

  type metadata accessor for InferenceServer();
  swift_deallocPartialClassInstance();
  return v14;
}

uint64_t sub_1ABD27A64(uint64_t a1)
{
  v2 = sub_1ABD27BD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABD27AA0(uint64_t a1)
{
  v2 = sub_1ABD27BD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t InferenceInterfaceNoError.encode(to:)(void *a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4D8198, &qword_1ABF59570);
  sub_1ABA7BB64();
  v4 = v3;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - v6;
  sub_1ABA93E20(a1, a1[3]);
  v8 = sub_1ABD27BD0();
  sub_1ABA7C3B8(&type metadata for InferenceInterfaceNoError.CodingKeys, v9, v8);
  return (*(v4 + 8))(v7, v2);
}

unint64_t sub_1ABD27BD0()
{
  result = qword_1EB4D81A0;
  if (!qword_1EB4D81A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D81A0);
  }

  return result;
}

uint64_t sub_1ABD27C98(uint64_t a1)
{
  v2 = sub_1ABD27E1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABD27CD4(uint64_t a1)
{
  v2 = sub_1ABD27E1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABD27D28(void *a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4D81A8, &qword_1ABF59578);
  sub_1ABA7BB64();
  v4 = v3;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - v6;
  sub_1ABA93E20(a1, a1[3]);
  v8 = sub_1ABD27E1C();
  sub_1ABA7C3B8(&type metadata for InferenceInterfaceNoFeedback.CodingKeys, v9, v8);
  return (*(v4 + 8))(v7, v2);
}

unint64_t sub_1ABD27E1C()
{
  result = qword_1EB4D81B0;
  if (!qword_1EB4D81B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D81B0);
  }

  return result;
}

uint64_t InferenceInterfaceNoFeedback.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  sub_1ABA84B54(a1);
  return v2;
}

unint64_t sub_1ABD27EEC()
{
  result = qword_1EB4D81B8;
  if (!qword_1EB4D81B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D81B8);
  }

  return result;
}

uint64_t sub_1ABD27F60(uint64_t a1)
{
  *(a1 + 8) = sub_1ABD28064(&qword_1EB4D81C0, &protocol conformance descriptor for InferenceInterfaceNoFeedback);
  result = sub_1ABD28064(&qword_1EB4D81C8, &protocol conformance descriptor for InferenceInterfaceNoFeedback);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1ABD27FEC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = InferenceInterfaceNoFeedback.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1ABD28064(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for InferenceInterfaceNoFeedback();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *sub_1ABD280C8(_BYTE *result, int a2, int a3)
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

unint64_t sub_1ABD28210()
{
  result = qword_1EB4D81D0;
  if (!qword_1EB4D81D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D81D0);
  }

  return result;
}

unint64_t sub_1ABD28268()
{
  result = qword_1EB4D81D8;
  if (!qword_1EB4D81D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D81D8);
  }

  return result;
}

unint64_t sub_1ABD282C0()
{
  result = qword_1EB4D81E0;
  if (!qword_1EB4D81E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D81E0);
  }

  return result;
}

unint64_t sub_1ABD28318()
{
  result = qword_1EB4D81E8;
  if (!qword_1EB4D81E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D81E8);
  }

  return result;
}

uint64_t sub_1ABD2836C@<X0>(void *a1@<X0>, char *a4@<X8>)
{
  v56 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = sub_1ABA80CC0();
  sub_1ABF247E4();
  sub_1ABA7BB64();
  v52 = v9;
  v53 = v8;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  v54 = &v49 - v11;
  v55 = v7;
  v51 = *(v7 - 8);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v12);
  v50 = &v49 - v13;
  v14 = sub_1ABA80CC0();
  v15 = sub_1ABF247E4();
  sub_1ABA7BB64();
  v17 = v16;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v49 - v19;
  v21 = *(v14 - 8);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v49 - v23;
  v61[0] = a1;
  v25 = a1;
  sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
  if (swift_dynamicCast())
  {
    sub_1ABA7B9B4(v20, 0, 1, v14);
    v26 = *(v21 + 32);
    v26(v24, v20, v14);
    v26(v56, v24, v14);
    type metadata accessor for InferenceMessageResponseError.ServiceError(0, AssociatedTypeWitness, AssociatedConformanceWitness, v27);
    sub_1ABA7ED80();
    swift_storeEnumTagMultiPayload();
    type metadata accessor for InferenceMessageResponseError(0, AssociatedTypeWitness, AssociatedConformanceWitness, v28);
    sub_1ABA7ED80();
  }

  else
  {
    v29 = AssociatedTypeWitness;
    v30 = v56;
    sub_1ABA7B9B4(v20, 1, 1, v14);
    (*(v17 + 8))(v20, v15);
    v61[0] = a1;
    v31 = a1;
    v32 = v54;
    v33 = v55;
    if (swift_dynamicCast())
    {
      sub_1ABA7B9B4(v32, 0, 1, v33);
      v34 = v50;
      v35 = *(v51 + 32);
      v35(v50, v32, v33);
      v35(v30, v34, v33);
      type metadata accessor for InferenceMessageResponseError.ServiceError(0, v29, AssociatedConformanceWitness, v36);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for InferenceMessageResponseError(0, v29, AssociatedConformanceWitness, v37);
    }

    else
    {
      sub_1ABA7B9B4(v32, 1, 1, v33);
      (*(v52 + 8))(v32, v53);
      v60 = a1;
      v39 = a1;
      sub_1ABAD219C(&qword_1EB4D5790, &unk_1ABF4B3A0);
      v40 = v30;
      if (swift_dynamicCast())
      {
        sub_1ABA946C0(&v57, v61);
        v41 = v62;
        v42 = v63;
        sub_1ABA93E20(v61, v62);
        (*(v42 + 32))(&v57, v41, v42);
        v43 = v59;
        v44 = v58;
        *v40 = v57;
        *(v40 + 1) = v44;
        v40[32] = v43;
        type metadata accessor for InferenceMessageResponseError(0, v29, AssociatedConformanceWitness, v45);
        sub_1ABA7ED80();
        swift_storeEnumTagMultiPayload();
        return sub_1ABA84B54(v61);
      }

      v59 = 0;
      v57 = 0u;
      v58 = 0u;
      sub_1ABC1B020(&v57);
      v61[0] = a1;
      v46 = a1;
      *v30 = sub_1ABF23C94();
      *(v30 + 1) = v47;
      type metadata accessor for InferenceMessageResponseError(0, v29, AssociatedConformanceWitness, v48);
      sub_1ABA7ED80();
    }
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t static InferenceInterfaceList.interfaceWrappers.getter()
{
  sub_1ABAD219C(&qword_1EB4D81F0, &qword_1ABF598F0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1ABF34740;
  v1 = sub_1ABAD219C(&qword_1EB4D81F8, &qword_1ABF598F8);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v0 + 56) = v1;
  *(v0 + 64) = sub_1ABD2894C();
  *(v0 + 32) = v2;
  return v0;
}

unint64_t sub_1ABD2894C()
{
  result = qword_1EB4D8200[0];
  if (!qword_1EB4D8200[0])
  {
    sub_1ABAE2850(&qword_1EB4D81F8, &qword_1ABF598F8);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB4D8200);
  }

  return result;
}

uint64_t static InferenceInterfaceList.interfaceWrapper(for:wrapperId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1ABAD219C(&qword_1EB4D81F0, &qword_1ABF598F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1ABF34740;
  v11 = sub_1ABAD219C(&qword_1EB4D81F8, &qword_1ABF598F8);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(inited + 56) = v11;
  *(inited + 64) = sub_1ABD2894C();
  *(inited + 32) = v12;
  sub_1ABA93E64(inited + 32, &v25);
  v13 = v26;
  v14 = v27;
  sub_1ABA93E20(&v25, v26);
  if (InferenceInterfaceWrapperProtocol.interfaceId.getter(v13, v14) == a1 && v15 == a2)
  {
  }

  else
  {
    v17 = sub_1ABF25054();

    if ((v17 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  v18 = v26;
  v19 = v27;
  sub_1ABA93E20(&v25, v26);
  v20 = (*(v19 + 88))(v18, v19);
  if (!v21)
  {
    if (!a4)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  if (!a4)
  {

    goto LABEL_19;
  }

  if (v20 != a3 || v21 != a4)
  {
    v23 = sub_1ABF25054();

    if (v23)
    {
      goto LABEL_21;
    }

LABEL_19:
    sub_1ABA84B54(&v25);
    swift_setDeallocating();
    result = sub_1ABB4DBAC();
    *(a5 + 32) = 0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
    return result;
  }

LABEL_21:

  return sub_1ABA946C0(&v25, a5);
}

_BYTE *storeEnumTagSinglePayload for InferenceInterfaceList(_BYTE *result, int a2, int a3)
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

uint64_t InferenceInterfaceDefaultCodableWrapper.__allocating_init(interfaceType:wrapperId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  *(result + 16) = a2;
  *(result + 24) = a3;
  return result;
}

uint64_t InferenceInterfaceWrapperProtocol.interfaceId.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 56))(AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_1ABD28D20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 16);

  return v5(a2, a1, AssociatedTypeWitness);
}

uint64_t InferenceInterfaceDefaultCodableWrapper.wrapperId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t InferenceInterfaceDefaultCodableWrapper.init(interfaceType:wrapperId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = v3;
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return result;
}

uint64_t InferenceInterfaceDefaultCodableWrapper.__deallocating_deinit()
{
  InferenceInterfaceDefaultCodableWrapper.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABD28E64(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v7 = a2[6];
  v10[0] = a2[5];
  v10[1] = v7;
  v10[2] = a2[7];
  v8 = type metadata accessor for InferenceInterfaceDefaultCodableWrapper(0, v10);
  return a4(a1, v8, a3);
}

uint64_t InferenceInterfaceCustomCodableWrapper.wrapperId.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

void *InferenceInterfaceCustomCodableWrapper.__allocating_init(interfaceType:wrapperId:convertInput:convertOutput:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = swift_allocObject();
  result[6] = a2;
  result[7] = a3;
  result[2] = a4;
  result[3] = a5;
  result[4] = a6;
  result[5] = a7;
  return result;
}

void *InferenceInterfaceCustomCodableWrapper.init(interfaceType:wrapperId:convertInput:convertOutput:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = v7;
  v7[6] = a2;
  v7[7] = a3;
  v7[2] = a4;
  v7[3] = a5;
  v7[4] = a6;
  v7[5] = a7;
  return result;
}

uint64_t InferenceInterfaceCustomCodableWrapper.deinit()
{

  return v0;
}

uint64_t InferenceInterfaceCustomCodableWrapper.__deallocating_deinit()
{
  InferenceInterfaceCustomCodableWrapper.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABD29284(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for InferenceMessageResponse(319, a1[2], a3, a4);
  if (v7 <= 0x3F)
  {
    result = type metadata accessor for InferenceMessageResponseError(319, a1[3], a1[6], v6);
    if (v8 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1ABD29304(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v6 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v7 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v7 <= v6)
  {
    v7 = v6;
  }

  if (v7 + 1 > 0x21)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 33;
  }

  if (v8 + 1 > v5)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = v5;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_28;
  }

  v10 = v9 + 1;
  v11 = 8 * (v9 + 1);
  if ((v9 + 1) <= 3)
  {
    v14 = ((a2 + ~(-1 << v11) - 254) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_28;
      }

      goto LABEL_20;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_28;
      }

      goto LABEL_20;
    }

    if (v14 < 2)
    {
LABEL_28:
      v16 = *(a1 + v9);
      if (v16 >= 2)
      {
        return (v16 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_28;
  }

LABEL_20:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return (v10 | v15) + 255;
}

void sub_1ABD294F0(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = ((*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v8 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v9 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v9 <= v8)
  {
    v9 = v8;
  }

  if (v9 + 1 > 0x21)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 33;
  }

  if (v10 + 1 > v7)
  {
    v11 = v10 + 1;
  }

  else
  {
    v11 = v7;
  }

  v12 = v11 + 1;
  v13 = 8 * (v11 + 1);
  if (a3 < 0xFF)
  {
    v14 = 0;
  }

  else if (v12 <= 3)
  {
    v17 = ((a3 + ~(-1 << v13) - 254) >> v13) + 1;
    if (HIWORD(v17))
    {
      v14 = 4;
    }

    else
    {
      if (v17 < 0x100)
      {
        v18 = 1;
      }

      else
      {
        v18 = 2;
      }

      if (v17 >= 2)
      {
        v14 = v18;
      }

      else
      {
        v14 = 0;
      }
    }
  }

  else
  {
    v14 = 1;
  }

  if (a2 > 0xFE)
  {
    v15 = a2 - 255;
    if (v12 < 4)
    {
      v16 = (v15 >> v13) + 1;
      if (v11 != -1)
      {
        v19 = v15 & ~(-1 << v13);
        bzero(a1, v12);
        if (v12 == 3)
        {
          *a1 = v19;
          a1[2] = BYTE2(v19);
        }

        else if (v12 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v15;
        }
      }
    }

    else
    {
      bzero(a1, v11 + 1);
      *a1 = v15;
      v16 = 1;
    }

    switch(v14)
    {
      case 1:
        a1[v12] = v16;
        break;
      case 2:
        *&a1[v12] = v16;
        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v12] = v16;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v14)
    {
      case 1:
        a1[v12] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      case 2:
        *&a1[v12] = 0;
        goto LABEL_31;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v12] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          a1[v11] = -a2;
        }

        break;
    }
  }
}

uint64_t sub_1ABD2976C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

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

uint64_t sub_1ABD29830(char a1)
{
  if (a1)
  {
    return 0x726F727265;
  }

  else
  {
    return 0x73736563637573;
  }
}

uint64_t sub_1ABD29864(void *a1, void *a2)
{
  v74 = a1;
  v3 = a2[2];
  v4 = a2[3];
  v6 = a2[4];
  v5 = a2[5];
  v8 = a2[6];
  v7 = a2[7];
  v9 = a2[8];
  v10 = a2[9];
  v77 = a2[10];
  v78 = v10;
  v96 = v6;
  v79 = v7;
  v80 = v5;
  v11 = v9;
  v12 = sub_1ABA839D4();
  v14 = type metadata accessor for InferenceMessageRemoteServerResponse.ErrorCodingKeys(v12, v13);
  sub_1ABA80CE0();
  swift_getWitnessTable();
  sub_1ABA8BE78();
  v67 = v14;
  v66 = v15;
  v16 = sub_1ABF24FC4();
  sub_1ABA8E5AC(v16, &v98);
  v72 = v17;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v18);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v19);
  v21 = type metadata accessor for InferenceMessageResponseError(0, v4, v8, v20);
  sub_1ABA8E5AC(v21, &v97);
  v70 = v22;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v23);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v24);
  v87 = v3;
  v88 = v4;
  v89 = v6;
  v90 = v80;
  v91 = v8;
  v92 = v7;
  v93 = v11;
  v25 = v11;
  v94 = v10;
  v95 = v77;
  v26 = sub_1ABA839D4();
  v28 = type metadata accessor for InferenceMessageRemoteServerResponse.SuccessCodingKeys(v26, v27);
  sub_1ABA7F500();
  swift_getWitnessTable();
  sub_1ABA8BE78();
  v60[1] = v28;
  v60[0] = v29;
  v30 = sub_1ABF24FC4();
  sub_1ABA8E5AC(v30, &v94);
  v65 = v31;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v32);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v33);
  v36 = type metadata accessor for InferenceMessageResponse(0, v3, v34, v35);
  sub_1ABA8E5AC(v36, &v92);
  v63 = v37;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v38);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v39);
  v40 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](v41);
  v43 = v60 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = v3;
  v88 = v4;
  v89 = v96;
  v90 = v80;
  v91 = v8;
  v92 = v79;
  v73 = v25;
  v93 = v25;
  v94 = v10;
  v95 = v77;
  v44 = sub_1ABA839D4();
  v46 = type metadata accessor for InferenceMessageRemoteServerResponse.CodingKeys(v44, v45);
  v47 = sub_1ABA7C3D8(v46);
  sub_1ABA7F418();
  v48 = sub_1ABF24FC4();
  sub_1ABA8E5AC(v48, &v99);
  v76 = v49;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v50);
  v52 = v60 - v51;
  v53 = v74[3];
  sub_1ABA93E20(v74, v53);
  sub_1ABF252E4();
  (*(v40 + 16))(v43, v75, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v54 = v70;
    v55 = v68;
    v56 = v71;
    (*(v70 + 32))(v68, v43, v71);
    LOBYTE(v87) = 1;
    v57 = v69;
    sub_1ABA99474();
    sub_1ABF24EC4();
    v83 = v79;
    v84 = v73;
    v85 = v78;
    v86 = v77;
  }

  else
  {
    v54 = v63;
    v55 = v61;
    v56 = v64;
    (*(v63 + 32))(v61, v43, v64);
    LOBYTE(v87) = 0;
    v57 = v62;
    sub_1ABA99474();
    sub_1ABF24EC4();
    v81 = v96;
    v82 = v80;
  }

  swift_getWitnessTable();
  sub_1ABA908BC();
  sub_1ABA9364C();
  v58(v57, v53);
  (*(v54 + 8))(v55, v56);
  return (*(v76 + 8))(v52, v47);
}

uint64_t sub_1ABD29E48@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v118 = a1;
  v109 = a9;
  v135 = a11;
  v119 = a10;
  v117 = a2;
  v130 = a6;
  v131 = a7;
  v132 = a8;
  v133 = a10;
  v134 = a11;
  v18 = sub_1ABA839D4();
  v20 = type metadata accessor for InferenceMessageRemoteServerResponse.ErrorCodingKeys(v18, v19);
  sub_1ABA80CE0();
  swift_getWitnessTable();
  sub_1ABA8BE78();
  v108 = v20;
  v107 = v21;
  v22 = sub_1ABF24EB4();
  sub_1ABA8E5AC(v22, &v130);
  v99 = v23;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v24);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v25);
  *&v128 = a2;
  *(&v128 + 1) = a3;
  *&v129 = a4;
  *(&v129 + 1) = a5;
  v26 = a5;
  v130 = a6;
  v131 = a7;
  v27 = a6;
  v28 = a7;
  v29 = a8;
  v132 = a8;
  v133 = a10;
  v30 = v135;
  v134 = v135;
  v31 = sub_1ABA839D4();
  v33 = type metadata accessor for InferenceMessageRemoteServerResponse.SuccessCodingKeys(v31, v32);
  sub_1ABA7F500();
  swift_getWitnessTable();
  sub_1ABA8BE78();
  v105 = v33;
  v104 = v34;
  v35 = sub_1ABF24EB4();
  sub_1ABA8E5AC(v35, &v127);
  v95 = v36;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v37);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v38);
  *&v128 = v117;
  *(&v128 + 1) = a3;
  *&v129 = a4;
  *(&v129 + 1) = v26;
  v130 = v27;
  v131 = v28;
  v132 = v29;
  v133 = a10;
  v134 = v30;
  v39 = sub_1ABA839D4();
  v41 = type metadata accessor for InferenceMessageRemoteServerResponse.CodingKeys(v39, v40);
  v115 = sub_1ABA7C3D8(v41);
  sub_1ABA7F418();
  v42 = sub_1ABF24EB4();
  sub_1ABA8E5AC(v42, &v136);
  v113 = v43;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v91 - v45;
  *&v128 = v117;
  *(&v128 + 1) = a3;
  v97 = a3;
  v98 = a4;
  *&v129 = a4;
  *(&v129 + 1) = v26;
  v112 = v26;
  v100 = v27;
  v130 = v27;
  v131 = v28;
  v101 = v28;
  v103 = v29;
  v132 = v29;
  v133 = a10;
  v134 = v135;
  v47 = type metadata accessor for InferenceMessageRemoteServerResponse(0, &v128);
  v94 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v91 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v91 - v51;
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v91 - v54;
  sub_1ABA93E20(v118, v118[3]);
  v110 = v46;
  v56 = v116;
  sub_1ABF252C4();
  if (!v56)
  {
    v93 = v49;
    v115 = v52;
    v92 = v55;
    v57 = v111;
    v58 = v112;
    v116 = v47;
    v59 = v110;
    *&v126 = sub_1ABF24EA4();
    sub_1ABA7F418();
    sub_1ABF241F4();
    swift_getWitnessTable();
    *&v128 = sub_1ABF24914();
    *(&v128 + 1) = v60;
    *&v129 = v61;
    *(&v129 + 1) = v62;
    sub_1ABA7F418();
    sub_1ABF24904();
    swift_getWitnessTable();
    sub_1ABF244C4();
    v63 = v126;
    v64 = v59;
    if (v126 == 2 || (v91 = v128, v126 = v128, v127 = v129, (sub_1ABF24574() & 1) == 0))
    {
      v68 = sub_1ABF24B44();
      swift_allocError();
      v70 = v69;
      sub_1ABAD219C(&qword_1EB4D0768, &qword_1ABF31050);
      *v70 = v116;
      v71 = v114;
      sub_1ABF24DA4();
      sub_1ABF24B34();
      (*(*(v68 - 8) + 104))(v70, *MEMORY[0x1E69E6AF8], v68);
      swift_willThrow();
      v72 = sub_1ABA7DA18();
      v73(v72, v71);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v63)
      {
        LOBYTE(v126) = 1;
        v65 = v57;
        v66 = v114;
        sub_1ABF24D94();
        v67 = v109;
        type metadata accessor for InferenceMessageResponseError(0, v97, v100, v80);
        v122 = v101;
        v123 = v103;
        v124 = v119;
        v125 = v135;
        swift_getWitnessTable();
        v81 = v93;
        v82 = v102;
        v83 = v65;
        sub_1ABF24E64();
        v84 = v113;
        sub_1ABA9364C();
        v88(v65, v82);
        (*(v84 + 8))(v64, v66);
      }

      else
      {
        LOBYTE(v126) = 0;
        v74 = v106;
        v75 = v114;
        sub_1ABF24D94();
        v67 = v109;
        type metadata accessor for InferenceMessageResponse(0, v117, v76, v77);
        v120 = v98;
        v121 = v58;
        swift_getWitnessTable();
        v81 = v115;
        v78 = v96;
        v83 = v74;
        sub_1ABF24E64();
        sub_1ABA9364C();
        v85(v74, v78);
        v86 = sub_1ABA7DA18();
        v87(v86, v75);
      }

      sub_1ABA901D8();
      swift_unknownObjectRelease();
      sub_1ABAA60F0();
      swift_storeEnumTagMultiPayload();
      v89 = *(v94 + 32);
      v90 = v92;
      v89(v92, v81, v83);
      v89(v67, v90, v83);
    }
  }

  return sub_1ABA84B54(v118);
}

uint64_t sub_1ABD2A7FC(uint64_t a1)
{
  sub_1ABF25234();
  sub_1ABAB8190(v3, *v1);
  return sub_1ABF25294();
}

uint64_t sub_1ABD2A89C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABD2976C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABD2A930@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1ABB01724();
  *a1 = result;
  return result;
}

uint64_t sub_1ABD2A97C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1ABD2A9D0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1ABD2AAB4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1ABD2AB08(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1ABD2AC14(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(_BYTE *, void, void, void, void, void, void, void, void, void))
{
  sub_1ABF25234();
  a4(v7, a2[2], a2[3], a2[4], a2[5], a2[6], a2[7], a2[8], a2[9], a2[10]);
  return sub_1ABF25294();
}

uint64_t sub_1ABD2AC9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABB0307C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1ABD2AD1C@<X0>(_BYTE *a1@<X8>)
{
  sub_1ABA8C1C8();
  result = v2();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1ABD2AD64(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1ABD2ADB8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

_BYTE *sub_1ABD2AEA8(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1ABD2AF74(_BYTE *result, int a2, int a3)
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

uint64_t sub_1ABD2B128(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1ABD2B1A0(uint64_t result, unsigned int a2, uint64_t a3)
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
      v16 = *(((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return sub_1ABA7E1E0(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 25;
    v9 = (a2 - v7 + 255) >> 8;
    if (v8 <= 3)
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

    switch(v12)
    {
      case 1:
        v13 = *(result + v8);
        if (!*(result + v8))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v13 = *(result + v8);
        if (!*(result + v8))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v13 = *(result + v8);
        if (!v13)
        {
          goto LABEL_26;
        }

LABEL_22:
        v14 = (v13 - 1) << (8 * v8);
        if (v8 <= 3)
        {
          v15 = *result;
        }

        else
        {
          v14 = 0;
          v15 = *result;
        }

        result = v7 + (v15 | v14) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1ABD2B2F4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 25;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (v8 >= a2)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = &a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8;
            if ((a2 & 0x80000000) != 0)
            {
              *(v17 + 8) = 0;
              *(v17 + 16) = 0;
              *(v17 + 24) = 0;
              *v17 = a2 & 0x7FFFFFFF;
            }

            else
            {
              *(v17 + 8) = (a2 - 1);
            }
          }

          else
          {

            sub_1ABA7B9B4(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    v15 = ~v8 + a2;
    bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 25);
    if (v10 <= 3)
    {
      v16 = (v15 >> 8) + 1;
    }

    else
    {
      v16 = 1;
    }

    if (v10 > 3)
    {
      *a1 = v15;
    }

    else
    {
      *a1 = v15;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v16;
        break;
      case 2:
        *&a1[v10] = v16;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v16;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1ABD2B514@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v14 = *(a4 - 8);
  (*(v14 + 16))(a7, a1, a4);
  v15 = (*(a6 + 56))(a5, a6);
  v17 = v16;
  (*(v14 + 8))(a1, a4);
  result = type metadata accessor for InferenceMessageRequest(0, a4, v18, v19);
  v21 = a7 + *(result + 28);
  *v21 = v15;
  *(v21 + 8) = v17;
  *(v21 + 16) = a2;
  *(v21 + 24) = a3 & 1;
  return result;
}

uint64_t sub_1ABD2B620(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7475706E69 && a2 == 0xE500000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697469646461 && a2 == 0xEE006F666E496C61)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

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

uint64_t sub_1ABD2B6EC(char a1)
{
  if (a1)
  {
    return 0x6E6F697469646461;
  }

  else
  {
    return 0x7475706E69;
  }
}

void sub_1ABD2B72C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1ABA7BCA8();
  v43 = v25;
  v44 = v24;
  v41 = v26;
  v42 = v23;
  v28 = v27;
  type metadata accessor for InferenceMessageRequest.CodingKeys(255, *(v26 + 16), v29, v25);
  sub_1ABA7DA2C();
  swift_getWitnessTable();
  v30 = sub_1ABF24FC4();
  sub_1ABA7BB64();
  v32 = v31;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v41 - v34;
  sub_1ABA93E20(v28, v28[3]);
  v36 = v42;
  sub_1ABF252E4();
  LOBYTE(v45) = 0;
  v37 = v44;
  sub_1ABF24F84();
  if (!v37)
  {
    v38 = (v36 + *(v41 + 28));
    v39 = *v38;
    v40 = *(v38 + 2);
    LOBYTE(v38) = *(v38 + 24);
    v45 = v39;
    v46 = v40;
    v47 = v38;
    sub_1ABD2C714();
    sub_1ABF24F84();
  }

  (*(v32 + 8))(v35, v30);
  sub_1ABA7BC90();
}

void sub_1ABD2B8CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1ABA7BCA8();
  v61 = v23;
  v25 = v24;
  v27 = v26;
  v55 = v28;
  v57 = *(v24 - 8);
  v58 = v29;
  MEMORY[0x1EEE9AC00](v26);
  v60 = &v54 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for InferenceMessageRequest.CodingKeys(255, v31, v32, v33);
  sub_1ABA7DA2C();
  swift_getWitnessTable();
  v59 = sub_1ABF24EB4();
  sub_1ABA7BB64();
  v56 = v34;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v35);
  v38 = type metadata accessor for InferenceMessageRequest(0, v25, v36, v37);
  sub_1ABA7BB64();
  v54 = v39;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v54 - v41;
  sub_1ABA93E20(v27, v27[3]);
  v43 = v61;
  sub_1ABF252C4();
  if (v43)
  {
    sub_1ABA84B54(v27);
  }

  else
  {
    v61 = v38;
    v44 = v57;
    LOBYTE(v62) = 0;
    sub_1ABF24E64();
    v45 = *(v44 + 32);
    v58 = v42;
    v45(v42, v60, v25);
    sub_1ABD2C6C0();
    sub_1ABF24E64();
    v46 = sub_1ABA93658();
    v47(v46);
    v48 = v63;
    v49 = v64;
    v50 = v61;
    v51 = v58;
    v52 = &v58[*(v61 + 28)];
    *v52 = v62;
    *(v52 + 2) = v48;
    v52[24] = v49;
    v53 = v54;
    (*(v54 + 16))(v55, v51, v50);
    sub_1ABA84B54(v27);
    (*(v53 + 8))(v51, v50);
  }

  sub_1ABA7BC90();
}

uint64_t sub_1ABD2BC14(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6361667265746E69 && a2 == 0xEB00000000644965;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7645746E65726170 && a2 == 0xED00006449746E65)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

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

uint64_t sub_1ABD2BCE8(char a1)
{
  if (a1)
  {
    return 0x7645746E65726170;
  }

  else
  {
    return 0x6361667265746E69;
  }
}

void sub_1ABD2BD34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1ABA7BCA8();
  v27 = v26;
  v28 = sub_1ABAD219C(qword_1EB4D8528, qword_1ABF5A030);
  sub_1ABA7BB64();
  v30 = v29;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v31);
  sub_1ABA7ED98();
  sub_1ABA93E20(v27, v27[3]);
  sub_1ABD2C768();
  sub_1ABF252E4();
  sub_1ABF24F34();
  if (!v24)
  {
    sub_1ABF24F24();
  }

  (*(v30 + 8))(v25, v28);
  sub_1ABA7BC90();
}

void sub_1ABD2BE90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1ABA7BCA8();
  v25 = v24;
  sub_1ABAD219C(&qword_1EB4D8518, &qword_1ABF5A028);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v26);
  sub_1ABA7ED98();
  sub_1ABA93E20(v25, v25[3]);
  v27 = sub_1ABD2C768();
  sub_1ABA7E878(&type metadata for InferenceFullRequestAdditionalInfo.CodingKeys, v28, v27);
  if (!v23)
  {
    sub_1ABF24E14();
    sub_1ABF24E04();
    v29 = sub_1ABA7BCF0();
    v30(v29);
  }

  sub_1ABA84B54(v25);
  sub_1ABA7BC90();
}

uint64_t sub_1ABD2C020(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E6F697469646461 && a2 == 0xEE006F666E496C61)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1ABF25054();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void sub_1ABD2C0C4()
{
  sub_1ABA7BCA8();
  v16 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_1ABAD219C(&qword_1EB4D85D8, &qword_1ABF5A310);
  sub_1ABA7BB64();
  v11 = v10;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v15 - v13;
  sub_1ABA93E20(v8, v8[3]);
  sub_1ABD2CBDC();
  sub_1ABF252E4();
  v17 = v6;
  v18 = v4;
  v19 = v2;
  v20 = v16 & 1;
  sub_1ABD2C714();
  sub_1ABF24F84();
  (*(v11 + 8))(v14, v9);
  sub_1ABA7BC90();
}

void *sub_1ABD2C210(void *a1)
{
  v4 = sub_1ABAD219C(&qword_1EB4D85C8, &qword_1ABF5A308);
  sub_1ABA7BB64();
  v6 = v5;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7ED98();
  v8 = sub_1ABA93E20(a1, a1[3]);
  v9 = sub_1ABD2CBDC();
  sub_1ABA7E878(&type metadata for InferenceFullRequestBase.CodingKeys, v10, v9);
  if (v1)
  {
    sub_1ABA84B54(a1);
  }

  else
  {
    sub_1ABD2C6C0();
    sub_1ABF24E64();
    (*(v6 + 8))(v2, v4);
    v8 = v12;
    sub_1ABA84B54(a1);
  }

  return v8;
}

uint64_t sub_1ABD2C398(uint64_t a1)
{
  sub_1ABF25234();
  sub_1ABAB8190(v3, *v1);
  return sub_1ABF25294();
}

uint64_t sub_1ABD2C3F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABD2B620(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABD2C444@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1ABB01724();
  *a1 = result;
  return result;
}

uint64_t sub_1ABD2C470(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1ABD2C4C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1ABD2C55C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABD2BC14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABD2C584(uint64_t a1)
{
  v2 = sub_1ABD2C768();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABD2C5C0(uint64_t a1)
{
  v2 = sub_1ABD2C768();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABD2C658(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 28));

  return v2;
}

unint64_t sub_1ABD2C6C0()
{
  result = qword_1EB4D8508;
  if (!qword_1EB4D8508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8508);
  }

  return result;
}

unint64_t sub_1ABD2C714()
{
  result = qword_1EB4D8510;
  if (!qword_1EB4D8510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8510);
  }

  return result;
}

unint64_t sub_1ABD2C768()
{
  result = qword_1EB4D8520;
  if (!qword_1EB4D8520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8520);
  }

  return result;
}

uint64_t sub_1ABD2C7BC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1ABD2C7FC(uint64_t result, int a2, int a3)
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

_BYTE *sub_1ABD2C868(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1ABD2C954()
{
  result = qword_1EB4D85B0;
  if (!qword_1EB4D85B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D85B0);
  }

  return result;
}

uint64_t sub_1ABD2C9AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABD2C020(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1ABD2C9D8(uint64_t a1)
{
  v2 = sub_1ABD2CBDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABD2CA14(uint64_t a1)
{
  v2 = sub_1ABD2CBDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABD2CA50()
{
  v1 = *v0;

  return v1;
}

void *sub_1ABD2CA98@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1ABD2C210(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7 & 1;
  }

  return result;
}

unint64_t sub_1ABD2CAF8()
{
  result = qword_1EB4D85B8;
  if (!qword_1EB4D85B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D85B8);
  }

  return result;
}

unint64_t sub_1ABD2CB50()
{
  result = qword_1EB4D85C0;
  if (!qword_1EB4D85C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D85C0);
  }

  return result;
}

unint64_t sub_1ABD2CBDC()
{
  result = qword_1EB4D85D0;
  if (!qword_1EB4D85D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D85D0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for InferenceFullRequestBase.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_1ABD2CCE0()
{
  result = qword_1EB4D85E0;
  if (!qword_1EB4D85E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D85E0);
  }

  return result;
}

unint64_t sub_1ABD2CD38()
{
  result = qword_1EB4D85E8;
  if (!qword_1EB4D85E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D85E8);
  }

  return result;
}

unint64_t sub_1ABD2CD90()
{
  result = qword_1EB4D85F0[0];
  if (!qword_1EB4D85F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB4D85F0);
  }

  return result;
}

uint64_t sub_1ABD2CDF0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_DWORD *sub_1ABD2CE68(_DWORD *result, unsigned int a2, uint64_t a3)
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
          return sub_1ABA7E1E0(result, v5, v4);
        }

        return 0;
    }
  }

  return sub_1ABA7E1E0(result, v5, v4);
}

void sub_1ABD2CF6C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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

          sub_1ABA7B9B4(a1, a2, v7, v6);
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

uint64_t sub_1ABD2D11C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  result = type metadata accessor for InferenceMessageResponse(0, a3, v7, v8);
  *(a4 + *(result + 28)) = a2;
  return result;
}

uint64_t sub_1ABD2D190(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74757074756FLL && a2 == 0xE600000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6449746E657665 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

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

uint64_t sub_1ABD2D254(char a1)
{
  if (a1)
  {
    return 0x6449746E657665;
  }

  else
  {
    return 0x74757074756FLL;
  }
}

uint64_t sub_1ABD2D288(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[2] = a4;
  v13[0] = a2;
  type metadata accessor for InferenceMessageResponse.CodingKeys(255, *(a2 + 16), a3, a4);
  sub_1ABA8F5A0();
  swift_getWitnessTable();
  v5 = sub_1ABF24FC4();
  sub_1ABA7BD7C();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - v9;
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABF252E4();
  v15 = 0;
  v11 = v13[3];
  sub_1ABF24F84();
  if (!v11)
  {
    v14 = 1;
    sub_1ABF24FA4();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1ABD2D414@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a3;
  v32 = a4;
  sub_1ABA7BD7C();
  v34 = v6;
  MEMORY[0x1EEE9AC00](v7);
  v37 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for InferenceMessageResponse.CodingKeys(255, v9, v10, v11);
  sub_1ABA8F5A0();
  swift_getWitnessTable();
  v35 = sub_1ABF24EB4();
  sub_1ABA7BD7C();
  v33 = v12;
  MEMORY[0x1EEE9AC00](v13);
  v16 = type metadata accessor for InferenceMessageResponse(0, a2, v14, v15);
  sub_1ABA7BD7C();
  v31 = v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v31 - v19;
  sub_1ABA93E20(a1, a1[3]);
  v21 = v38;
  sub_1ABF252C4();
  if (v21)
  {
    return sub_1ABA84B54(a1);
  }

  v38 = v16;
  v22 = v34;
  v40 = 0;
  sub_1ABF24E64();
  v23 = *(v22 + 32);
  v36 = v20;
  v23(v20, v37, a2);
  v39 = 1;
  v24 = sub_1ABF24E84();
  v25 = sub_1ABA7F518();
  v26(v25);
  v27 = v38;
  v28 = v36;
  *&v36[*(v38 + 28)] = v24;
  v29 = v31;
  (*(v31 + 16))(v32, v28, v27);
  sub_1ABA84B54(a1);
  return (*(v29 + 8))(v28, v27);
}

uint64_t sub_1ABD2D760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABD2D190(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABD2D78C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1ABD2D7E0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

_BYTE *sub_1ABD2D888(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1ABD2D9A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F7272456E7572 && a2 == 0xE800000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F72724574696E69 && a2 == 0xE900000000000072)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

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

uint64_t sub_1ABD2DA78(char a1)
{
  if (a1)
  {
    return 0x6F72724574696E69;
  }

  else
  {
    return 0x726F7272456E7572;
  }
}

uint64_t sub_1ABD2DAB4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4565636976726573 && a2 == 0xEC000000726F7272;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7245726576726573 && a2 == 0xEB00000000726F72;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x456E776F6E6B6E75 && a2 == 0xEC000000726F7272)
    {

      return 2;
    }

    else
    {
      v8 = sub_1ABF25054();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1ABD2DBD4(char a1)
{
  if (!a1)
  {
    return 0x4565636976726573;
  }

  if (a1 == 1)
  {
    return 0x7245726576726573;
  }

  return 0x456E776F6E6B6E75;
}

uint64_t sub_1ABD2DC48(uint64_t a1)
{
  sub_1ABF25234();
  sub_1ABAB8190(v3, *v1);
  return sub_1ABF25294();
}

uint64_t sub_1ABD2DCA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABD2D9A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABD2DCF8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1ABD2DD4C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1ABD2DDE4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1ABA7E270();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1ABD2DE18(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1ABD2DE6C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1ABD2DEC0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1ABD2DF14(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1ABD2DF74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABD2DAB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABD2DFA4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1ABD2DFF8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1ABD2E04C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1ABD2E0A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1ABD2E0F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1ABD2E148(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1ABD2E19C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, void, void))
{
  sub_1ABF25234();
  a4(v7, *(a2 + 16), *(a2 + 24));
  return sub_1ABF25294();
}

uint64_t sub_1ABD2E210(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1ABD2E264(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

void InferenceMessageResponseError.ServiceError<>.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1ABA7BCA8();
  v98 = v23;
  v99 = v24;
  v94 = v25;
  v95 = v26;
  v28 = v27;
  v30 = v29;
  v31 = sub_1ABAA4A44();
  inited = type metadata accessor for InferenceMessageResponseError.ServiceError.InitErrorCodingKeys(v31, v32, v33, v34);
  sub_1ABA839E0();
  swift_getWitnessTable();
  sub_1ABA8BE78();
  v91 = inited;
  v87 = v36;
  sub_1ABF24FC4();
  sub_1ABA7BB64();
  v92 = v38;
  v93 = v37;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v39);
  sub_1ABA7FBE0();
  v89 = v40;
  sub_1ABAA3D38();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1ABA7BB64();
  v88 = v41;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v42);
  sub_1ABA7FBE0();
  v86 = v43;
  v44 = sub_1ABAA4A44();
  v48 = type metadata accessor for InferenceMessageResponseError.ServiceError.RunErrorCodingKeys(v44, v45, v46, v47);
  sub_1ABA7E89C();
  swift_getWitnessTable();
  sub_1ABA8BE78();
  v83 = v48;
  v79 = v49;
  sub_1ABF24FC4();
  sub_1ABA7BB64();
  v84 = v51;
  v85 = v50;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v52);
  sub_1ABA7FBE0();
  v81 = v53;
  sub_1ABAA3D38();
  v82 = swift_getAssociatedTypeWitness();
  sub_1ABA7BB64();
  v80 = v54;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v55);
  sub_1ABA7FBE0();
  v78 = v56;
  v57 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v77 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1ABAA4A44();
  type metadata accessor for InferenceMessageResponseError.ServiceError.CodingKeys(v61, v62, v63, v64);
  sub_1ABA8C1E0();
  swift_getWitnessTable();
  sub_1ABA7DA44();
  sub_1ABF24FC4();
  sub_1ABA7BB64();
  v96 = v65;
  v97 = v66;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v67);
  v69 = &v77 - v68;
  sub_1ABA93E20(v30, v30[3]);
  sub_1ABF252E4();
  (*(v57 + 16))(v60, v98, v28);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v70 = v88;
    v71 = v86;
    v72 = AssociatedTypeWitness;
    (*(v88 + 32))(v86, v60, AssociatedTypeWitness);
    v73 = v89;
    v74 = v96;
    sub_1ABF24EC4();
    v75 = v93;
    sub_1ABAA3D38();
    sub_1ABF24F84();
    v76 = v92;
  }

  else
  {
    v70 = v80;
    v71 = v78;
    v72 = v82;
    (*(v80 + 32))(v78, v60, v82);
    v73 = v81;
    v74 = v96;
    sub_1ABF24EC4();
    v75 = v85;
    sub_1ABAA3D38();
    sub_1ABF24F84();
    v76 = v84;
  }

  (*(v76 + 8))(v73, v75);
  (*(v70 + 8))(v71, v72);
  (*(v97 + 8))(v69, v74);
  sub_1ABA7BC90();
}

void InferenceMessageResponseError.ServiceError<>.init(from:)()
{
  sub_1ABA7BCA8();
  v87 = v0;
  v75 = v1;
  v74 = v2;
  v4 = v3;
  v6 = v5;
  v92 = v7;
  v69 = v8;
  inited = type metadata accessor for InferenceMessageResponseError.ServiceError.InitErrorCodingKeys(255, v5, v3, v2);
  sub_1ABA839E0();
  swift_getWitnessTable();
  sub_1ABA8BE78();
  v80 = v10;
  v81 = inited;
  v73 = sub_1ABF24EB4();
  sub_1ABA7BB64();
  v72 = v11;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA7FBE0();
  v82 = v13;
  v14 = sub_1ABAA3950();
  v18 = type metadata accessor for InferenceMessageResponseError.ServiceError.RunErrorCodingKeys(v14, v15, v16, v17);
  sub_1ABA7E89C();
  swift_getWitnessTable();
  sub_1ABA8BE78();
  v77 = v19;
  v78 = v18;
  v71 = sub_1ABF24EB4();
  sub_1ABA7BB64();
  v70 = v20;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA7FBE0();
  v79 = v22;
  v23 = sub_1ABAA3950();
  type metadata accessor for InferenceMessageResponseError.ServiceError.CodingKeys(v23, v24, v25, v26);
  sub_1ABA8C1E0();
  swift_getWitnessTable();
  v84 = sub_1ABF24EB4();
  sub_1ABA7BB64();
  v86 = v27;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v65 - v29;
  v85 = v6;
  v76 = v4;
  v32 = type metadata accessor for InferenceMessageResponseError.ServiceError(0, v6, v4, v31);
  sub_1ABA7BB64();
  v68 = v33;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v65 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v65 - v38;
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v65 - v41;
  sub_1ABA93E20(v92, v92[3]);
  v83 = v30;
  v43 = v87;
  sub_1ABF252C4();
  if (!v43)
  {
    v67 = v36;
    v87 = v39;
    v66 = v42;
    v44 = v84;
    v45 = v83;
    *&v88 = sub_1ABF24EA4();
    sub_1ABF241F4();
    sub_1ABA8F18C();
    swift_getWitnessTable();
    *&v90 = sub_1ABF24914();
    *(&v90 + 1) = v46;
    *&v91 = v47;
    *(&v91 + 1) = v48;
    sub_1ABF24904();
    sub_1ABA8EAA8();
    swift_getWitnessTable();
    sub_1ABF244C4();
    v49 = v88;
    if (v88 == 2 || (v65 = v90, v88 = v90, v89 = v91, (sub_1ABF24574() & 1) == 0))
    {
      v53 = sub_1ABF24B44();
      swift_allocError();
      v55 = v54;
      sub_1ABAD219C(&qword_1EB4D0768, &qword_1ABF31050);
      *v55 = v32;
      sub_1ABF24DA4();
      sub_1ABAA4128();
      (*(*(v53 - 8) + 104))(v55, *MEMORY[0x1E69E6AF8], v53);
      swift_willThrow();
      (*(v86 + 8))(v45, v44);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v49)
      {
        LOBYTE(v88) = 1;
        v50 = v82;
        sub_1ABF24D94();
        swift_getAssociatedTypeWitness();
        v51 = v67;
        v52 = v73;
        sub_1ABF24E64();
        sub_1ABA9364C();
        v58(v50, v52);
      }

      else
      {
        LOBYTE(v88) = 0;
        v56 = v79;
        sub_1ABF24D94();
        swift_getAssociatedTypeWitness();
        v51 = v87;
        v57 = v71;
        sub_1ABA8E300();
        sub_1ABF24E64();
        sub_1ABA9364C();
        v61(v56, v57);
      }

      v59 = sub_1ABA97C00();
      v60(v59);
      sub_1ABAA58EC();
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v62 = v69;
      v63 = *(v68 + 32);
      v64 = v66;
      v63(v66, v51, v32);
      v63(v62, v64, v32);
    }
  }

  sub_1ABA84B54(v92);
  sub_1ABA7BC90();
}

void InferenceMessageResponseError<>.encode(to:)()
{
  sub_1ABA7BCA8();
  v101 = v0;
  v98 = v1;
  v99 = v2;
  v96 = v3;
  v97 = v4;
  v6 = v5;
  v8 = v7;
  v10 = *(v5 + 16);
  v9 = *(v5 + 24);
  v11 = sub_1ABA9A530();
  v15 = type metadata accessor for InferenceMessageResponseError.UnknownErrorCodingKeys(v11, v12, v13, v14);
  sub_1ABA7C404();
  swift_getWitnessTable();
  sub_1ABA8BE78();
  v92 = v15;
  v91 = v16;
  sub_1ABF24FC4();
  sub_1ABA7BB64();
  v94 = v18;
  v95 = v17;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v19);
  sub_1ABA7FBE0();
  v93 = v20;
  v21 = sub_1ABA9A530();
  v25 = type metadata accessor for InferenceMessageResponseError.ServerErrorCodingKeys(v21, v22, v23, v24);
  sub_1ABA9948C();
  swift_getWitnessTable();
  sub_1ABA8BE78();
  v87 = v25;
  v86 = v26;
  v90 = sub_1ABF24FC4();
  sub_1ABA7BB64();
  v89 = v27;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v28);
  sub_1ABA7FBE0();
  v88 = v29;
  v30 = sub_1ABA9A530();
  v34 = type metadata accessor for InferenceMessageResponseError.ServiceErrorCodingKeys(v30, v31, v32, v33);
  sub_1ABA901E8();
  swift_getWitnessTable();
  sub_1ABA8BE78();
  v81 = v34;
  v80 = v35;
  v85 = sub_1ABF24FC4();
  sub_1ABA7BB64();
  v79 = v36;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v37);
  sub_1ABA7FBE0();
  v82 = v38;
  v84 = type metadata accessor for InferenceMessageResponseError.ServiceError(0, v10, v9, v39);
  sub_1ABA7BB64();
  v83 = v40;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v41);
  sub_1ABA7FBE0();
  v100 = v42;
  v43 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v78 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1ABA9A530();
  type metadata accessor for InferenceMessageResponseError.CodingKeys(v47, v48, v49, v50);
  sub_1ABA8196C();
  swift_getWitnessTable();
  sub_1ABF24FC4();
  sub_1ABA7BB64();
  v102 = v52;
  v103 = v51;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v53);
  sub_1ABA93E20(v8, v8[3]);
  sub_1ABF252E4();
  (*(v43 + 16))(v46, v101, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v66 = v79;
    v67 = v83;
    v68 = v84;
    (*(v83 + 32))(v100, v46, v84);
    LOBYTE(v108) = 0;
    v69 = v82;
    v70 = v103;
    sub_1ABF24EC4();
    v104 = v96;
    v105 = v97;
    v106 = v98;
    v107 = v99;
    swift_getWitnessTable();
    v71 = v85;
    sub_1ABF24F84();
    (*(v66 + 8))(v69, v71);
    (*(v67 + 8))(v100, v68);
    v72 = sub_1ABAA4ED4();
    v74 = v70;
LABEL_6:
    v73(v72, v74);
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload != 1)
  {
    LOBYTE(v108) = 2;
    v75 = v93;
    v76 = v103;
    sub_1ABF24EC4();
    v77 = v95;
    sub_1ABF24F34();

    (*(v94 + 8))(v75, v77);
    v72 = sub_1ABAA4ED4();
    v74 = v76;
    goto LABEL_6;
  }

  v55 = *v46;
  v56 = *(v46 + 1);
  v57 = *(v46 + 2);
  v58 = *(v46 + 3);
  v59 = v46[32];
  LOBYTE(v108) = 1;
  v60 = v88;
  v61 = v103;
  sub_1ABF24EC4();
  v100 = v56;
  v101 = v55;
  v108 = v55;
  v109 = v56;
  v110 = v57;
  v111 = v58;
  v112 = v59;
  sub_1ABD2F59C();
  v62 = v90;
  sub_1ABF24F84();
  sub_1ABA9364C();
  v63(v60, v62);
  v64 = sub_1ABAA4ED4();
  v65(v64, v61);
  sub_1ABD2F5F0(v101, v100, v57, v58, v59);
LABEL_7:
  sub_1ABA7BC90();
}

unint64_t sub_1ABD2F59C()
{
  result = qword_1EB4D8678;
  if (!qword_1EB4D8678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8678);
  }

  return result;
}

uint64_t sub_1ABD2F5F0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 3)
  {
LABEL_4:
  }

  if (a5 != 2)
  {
    if (a5)
    {
      return a1;
    }

    goto LABEL_4;
  }

  return sub_1ABD2F66C(a1, a2);
}

uint64_t sub_1ABD2F66C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

void InferenceMessageResponseError<>.init(from:)()
{
  sub_1ABA7BCA8();
  v131 = v0;
  v115 = v1;
  v114 = v2;
  v113 = v3;
  v112 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v124 = v11;
  v12 = type metadata accessor for InferenceMessageResponseError.UnknownErrorCodingKeys(255, v7, v5, v4);
  sub_1ABA7C404();
  swift_getWitnessTable();
  sub_1ABA8BE78();
  v122 = v12;
  v121 = v13;
  v110 = sub_1ABF24EB4();
  sub_1ABA7BB64();
  v109 = v14;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABA7FBE0();
  v17 = sub_1ABA7F528(v16);
  v21 = type metadata accessor for InferenceMessageResponseError.ServerErrorCodingKeys(v17, v18, v19, v20);
  sub_1ABA9948C();
  swift_getWitnessTable();
  sub_1ABA8BE78();
  v119 = v21;
  v118 = v22;
  v108 = sub_1ABF24EB4();
  sub_1ABA7BB64();
  v107 = v23;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v24);
  sub_1ABA7FBE0();
  v26 = sub_1ABA7F528(v25);
  v30 = type metadata accessor for InferenceMessageResponseError.ServiceErrorCodingKeys(v26, v27, v28, v29);
  sub_1ABA901E8();
  swift_getWitnessTable();
  sub_1ABA8BE78();
  v117 = v30;
  v116 = v31;
  v106 = sub_1ABF24EB4();
  sub_1ABA7BB64();
  v105 = v32;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v33);
  sub_1ABA7FBE0();
  v35 = sub_1ABA7F528(v34);
  type metadata accessor for InferenceMessageResponseError.CodingKeys(v35, v36, v37, v38);
  sub_1ABA8196C();
  swift_getWitnessTable();
  sub_1ABA7DA44();
  v128 = sub_1ABF24EB4();
  sub_1ABA7BB64();
  v130 = v39;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v101 - v41;
  v111 = v8;
  v129 = v6;
  type metadata accessor for InferenceMessageResponseError(0, v8, v6, v43);
  sub_1ABA7BB64();
  v126 = v45;
  v127 = v44;
  MEMORY[0x1EEE9AC00](v44);
  v47 = (&v101 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v101 - v49;
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v101 - v52;
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v101 - v55;
  v141 = v10;
  sub_1ABA93E20(v10, v10[3]);
  v57 = v131;
  sub_1ABF252C4();
  if (!v57)
  {
    v102 = v47;
    v103 = v50;
    v104 = v53;
    v131 = v56;
    v58 = v128;
    v59 = v129;
    v60 = v42;
    *&v136 = sub_1ABF24EA4();
    sub_1ABA7DA44();
    sub_1ABF241F4();
    sub_1ABA8F18C();
    swift_getWitnessTable();
    *&v139 = sub_1ABF24914();
    *(&v139 + 1) = v61;
    *&v140 = v62;
    *(&v140 + 1) = v63;
    sub_1ABA7DA44();
    sub_1ABF24904();
    sub_1ABA8EAA8();
    swift_getWitnessTable();
    sub_1ABF244C4();
    v64 = v136;
    v65 = v58;
    if (v136 != 3)
    {
      v101 = v139;
      v136 = v139;
      v137 = v140;
      if (sub_1ABF24574())
      {
        if (v64)
        {
          v66 = v60;
          if (v64 != 1)
          {
            LOBYTE(v136) = 2;
            v80 = v123;
            sub_1ABAA53CC();
            sub_1ABA8E300();
            sub_1ABF24D94();
            v81 = v124;
            v82 = v126;
            v83 = v110;
            v95 = sub_1ABF24E14();
            v97 = v96;
            sub_1ABA9364C();
            v98(v80, v83);
            (*(v130 + 8))(v66, v65);
            sub_1ABAA6104();
            swift_unknownObjectRelease();
            v99 = v102;
            *v102 = v95;
            v99[1] = v97;
            v88 = v127;
            swift_storeEnumTagMultiPayload();
            v89 = *(v82 + 32);
            v100 = sub_1ABA841E4();
            v89(v100, v99, v88);
LABEL_12:
            v89(v81, v65, v88);
            goto LABEL_10;
          }

          LOBYTE(v136) = 1;
          v67 = v120;
          sub_1ABAA53CC();
          sub_1ABA8E300();
          sub_1ABF24D94();
          v68 = v130;
          v69 = v126;
          sub_1ABD2FFEC();
          v70 = v108;
          sub_1ABF24E64();
          sub_1ABA9364C();
          v84(v67, v70);
          (*(v68 + 8))(v66, v65);
          sub_1ABAA6104();
          swift_unknownObjectRelease();
          v85 = v138;
          v86 = v137;
          v87 = v103;
          *v103 = v136;
          v87[1] = v86;
          *(v87 + 32) = v85;
          v88 = v127;
          swift_storeEnumTagMultiPayload();
          v89 = *(v69 + 32);
          v90 = sub_1ABA841E4();
          v89(v90, v87, v88);
        }

        else
        {
          LOBYTE(v136) = 0;
          sub_1ABAA53CC();
          sub_1ABF24D94();
          type metadata accessor for InferenceMessageResponseError.ServiceError(0, v111, v59, v76);
          v132 = v112;
          v133 = v113;
          v134 = v114;
          v135 = v115;
          swift_getWitnessTable();
          v77 = v104;
          v78 = v106;
          v79 = v125;
          sub_1ABF24E64();
          sub_1ABA9364C();
          v91(v79, v78);
          v92 = sub_1ABAA45F4();
          v93(v92, v65);
          sub_1ABAA6104();
          swift_unknownObjectRelease();
          v88 = v127;
          swift_storeEnumTagMultiPayload();
          v89 = *(v126 + 32);
          v94 = sub_1ABA841E4();
          v89(v94, v77, v88);
        }

        v81 = v124;
        goto LABEL_12;
      }
    }

    v71 = sub_1ABF24B44();
    swift_allocError();
    v73 = v72;
    sub_1ABAD219C(&qword_1EB4D0768, &qword_1ABF31050);
    *v73 = v127;
    sub_1ABF24DA4();
    sub_1ABAA4128();
    (*(*(v71 - 8) + 104))(v73, *MEMORY[0x1E69E6AF8], v71);
    swift_willThrow();
    v74 = sub_1ABAA45F4();
    v75(v74, v65);
    swift_unknownObjectRelease();
  }

LABEL_10:
  sub_1ABA84B54(v141);
  sub_1ABA7BC90();
}

unint64_t sub_1ABD2FFEC()
{
  result = qword_1EB4D8680[0];
  if (!qword_1EB4D8680[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB4D8680);
  }

  return result;
}

uint64_t sub_1ABD3008C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for InferenceMessageResponseError.ServiceError(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1ABD30104(unsigned __int16 *a1, unsigned int a2)
{
  v4 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v5 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v5 <= v4)
  {
    v5 = v4;
  }

  v6 = 33;
  if (v5 + 1 > 0x21)
  {
    v6 = v5 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_24;
  }

  v7 = v6 + 1;
  v8 = 8 * (v6 + 1);
  if ((v6 + 1) <= 3)
  {
    v11 = ((a2 + ~(-1 << v8) - 253) >> v8) + 1;
    if (HIWORD(v11))
    {
      v9 = *(a1 + v7);
      if (!v9)
      {
        goto LABEL_24;
      }

      goto LABEL_16;
    }

    if (v11 > 0xFF)
    {
      v9 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_24;
      }

      goto LABEL_16;
    }

    if (v11 < 2)
    {
LABEL_24:
      v13 = *(a1 + v6);
      if (v13 >= 3)
      {
        return (v13 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v9 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_24;
  }

LABEL_16:
  v12 = (v9 - 1) << v8;
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

  return (v7 | v12) + 254;
}

void sub_1ABD302B8(_BYTE *a1, unsigned int a2, unsigned int a3)
{
  v6 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v7 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v7 <= v6)
  {
    v7 = v6;
  }

  if (v7 + 1 > 0x21)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 33;
  }

  v9 = v8 + 1;
  v10 = 8 * (v8 + 1);
  if (a3 < 0xFE)
  {
    v11 = 0;
  }

  else if (v9 <= 3)
  {
    v14 = ((a3 + ~(-1 << v10) - 253) >> v10) + 1;
    if (HIWORD(v14))
    {
      v11 = 4;
    }

    else
    {
      if (v14 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v14 >= 2)
      {
        v11 = v15;
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 1;
  }

  if (a2 > 0xFD)
  {
    v12 = a2 - 254;
    if (v9 < 4)
    {
      v13 = (v12 >> v10) + 1;
      if (v8 != -1)
      {
        v16 = v12 & ~(-1 << v10);
        bzero(a1, v9);
        if (v9 == 3)
        {
          *a1 = v16;
          a1[2] = BYTE2(v16);
        }

        else if (v9 == 2)
        {
          *a1 = v16;
        }

        else
        {
          *a1 = v12;
        }
      }
    }

    else
    {
      bzero(a1, v8 + 1);
      *a1 = v12;
      v13 = 1;
    }

    switch(v11)
    {
      case 1:
        a1[v9] = v13;
        break;
      case 2:
        *&a1[v9] = v13;
        break;
      case 3:
LABEL_40:
        __break(1u);
        break;
      case 4:
        *&a1[v9] = v13;
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
        a1[v9] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_29;
      case 2:
        *&a1[v9] = 0;
        goto LABEL_28;
      case 3:
        goto LABEL_40;
      case 4:
        *&a1[v9] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_29;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:
          a1[v8] = -a2;
        }

        break;
    }
  }
}

uint64_t sub_1ABD304EC(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    result = swift_getAssociatedTypeWitness();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1ABD3059C(unsigned __int16 *a1, unsigned int a2)
{
  v4 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v5 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v5 <= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_23;
  }

  v7 = v6 + 1;
  v8 = 8 * (v6 + 1);
  if ((v6 + 1) <= 3)
  {
    v11 = ((a2 + ~(-1 << v8) - 254) >> v8) + 1;
    if (HIWORD(v11))
    {
      v9 = *(a1 + v7);
      if (!v9)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v11 > 0xFF)
    {
      v9 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v11 < 2)
    {
LABEL_23:
      v13 = *(a1 + v6);
      if (v13 >= 2)
      {
        return (v13 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v9 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_23;
  }

LABEL_15:
  v12 = (v9 - 1) << v8;
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

  return (v7 | v12) + 255;
}

void sub_1ABD30740(_BYTE *a1, unsigned int a2, unsigned int a3)
{
  v6 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v7 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v7 <= v6)
  {
    v7 = v6;
  }

  v8 = v7 + 1;
  v9 = 8 * (v7 + 1);
  if (a3 < 0xFF)
  {
    v10 = 0;
  }

  else if (v8 <= 3)
  {
    v13 = ((a3 + ~(-1 << v9) - 254) >> v9) + 1;
    if (HIWORD(v13))
    {
      v10 = 4;
    }

    else
    {
      if (v13 < 0x100)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      if (v13 >= 2)
      {
        v10 = v14;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 1;
  }

  if (a2 > 0xFE)
  {
    v11 = a2 - 255;
    if (v8 < 4)
    {
      v12 = (v11 >> v9) + 1;
      if (v7 != -1)
      {
        v15 = v11 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v15;
          a1[2] = BYTE2(v15);
        }

        else if (v8 == 2)
        {
          *a1 = v15;
        }

        else
        {
          *a1 = v11;
        }
      }
    }

    else
    {
      bzero(a1, v7 + 1);
      *a1 = v11;
      v12 = 1;
    }

    switch(v10)
    {
      case 1:
        a1[v8] = v12;
        break;
      case 2:
        *&a1[v8] = v12;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = v12;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v10)
    {
      case 1:
        a1[v8] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v8] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v7] = -a2;
        }

        break;
    }
  }
}

_BYTE *sub_1ABD30964(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1ABD30A30(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1ABD30AFC(_BYTE *result, int a2, int a3)
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

id InferenceMLModel.modelDescription.getter()
{
  v1 = [*(v0 + 16) modelDescription];

  return v1;
}

uint64_t InferenceMLModel.prediction<A>(from:context:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  sub_1ABA814B0();
  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1ABD30E58()
{
  sub_1ABA7BBF8();
  v1 = [objc_allocWithZone(MEMORY[0x1E695FF08]) init];
  v0[4] = v1;
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_1ABD30F14;
  v3 = sub_1ABA90084(v0[2]);

  return MEMORY[0x1EEDBB398](v3, v1);
}

uint64_t sub_1ABD30F14()
{
  sub_1ABA7BC04();
  sub_1ABA7BC10();
  v3 = v2;
  sub_1ABA7D4E0();
  *v4 = v3;
  v5 = *v1;
  sub_1ABA7BBC0();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (!v0)
  {

    v7 = *(v5 + 8);

    __asm { BRAA            X2, X16 }
  }

  sub_1ABA814B0();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1ABD31054()
{
  sub_1ABA7BBF8();

  sub_1ABA7BBE0();

  return v1();
}

uint64_t InferenceMLModel.__allocating_init<A>(domainId:assetId:configuration:context:)()
{
  sub_1ABA7BBF8();
  v1[15] = v2;
  v1[16] = v0;
  v1[13] = v3;
  v1[14] = v4;
  v1[11] = v5;
  v1[12] = v6;
  v1[9] = v7;
  v1[10] = v8;
  v1[8] = v9;
  v1[17] = *(v4 - 8);
  v1[18] = swift_task_alloc();
  sub_1ABA814B0();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1ABD3116C()
{
  v26 = v0;
  v1 = v0[17];
  v23 = v0[18];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];
  v31 = v0[12];
  v5 = *((*(v2 + 8))(v3) + 16);
  swift_unownedRetainStrong();

  sub_1ABA93E64(v5 + 32, (v0 + 2));

  v6 = type metadata accessor for AssetRegistry();
  v8 = v0[5];
  v7 = v0[6];
  v9 = sub_1ABA93E20(v0 + 2, v8);
  v24[0] = sub_1ABAF31C0;
  v24[1] = 0;
  v25 = 0;
  v10 = *(v8 - 8);
  v11 = swift_task_alloc();
  (*(v10 + 16))(v11, v9, v8);
  v12 = sub_1ABA94614(v11, v24, v6, v8, *(v7 + 8));
  v0[19] = v12;

  v0[7] = v12;
  (*(v1 + 16))(v23, v4, v3);

  v13 = v31;
  v14 = swift_task_alloc();
  v0[20] = v14;
  *v14 = v0;
  v14[1] = sub_1ABD313AC;
  v15 = v0[18];
  v16 = v0[14];
  v17 = v0[11];
  v18 = v0[12];
  v19 = v0[9];
  v20 = v0[10];
  v21 = v0[8];
  v30 = v0[15];
  v28 = v16;
  v29 = &protocol witness table for AssetRegistry;

  return sub_1ABD31624((v0 + 7), v21, v19, v20, v17, v18, v15, v6);
}

uint64_t sub_1ABD313AC()
{
  sub_1ABA7BC04();
  v3 = v2;
  sub_1ABA7BC10();
  v5 = v4;
  sub_1ABA7D4E0();
  *v6 = v5;
  v7 = *v1;
  sub_1ABA7BBC0();
  *v8 = v7;
  *(v5 + 168) = v0;

  if (!v0)
  {
    *(v5 + 176) = v3;
  }

  sub_1ABA814B0();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1ABD314D0()
{
  sub_1ABA8C008();
  v1 = v0[17];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[12];

  (*(v1 + 8))(v3, v2);

  sub_1ABA84B54(v0 + 2);

  sub_1ABA82A20();
  v6 = v0[22];

  return v5(v6);
}

uint64_t sub_1ABD31584()
{
  sub_1ABA8C008();
  v1 = *(v0 + 96);

  v2 = sub_1ABA7D2D8();
  v3(v2);
  sub_1ABA84B54((v0 + 16));

  sub_1ABA7BBE0();

  return v4();
}

uint64_t sub_1ABD31624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[9] = v23;
  v9[10] = v8;
  v9[7] = a8;
  v9[8] = v21;
  v9[5] = a6;
  v9[6] = a7;
  v9[3] = a3;
  v9[4] = a5;
  v9[2] = a1;
  v9[11] = *(v21 - 8);
  v9[12] = swift_task_alloc();
  v15 = sub_1ABF21CF4();
  v9[13] = v15;
  v9[14] = *(v15 - 8);
  v9[15] = swift_task_alloc();
  sub_1ABAD219C(&qword_1EB4D5990, &qword_1ABF4C1D8);
  v16 = swift_task_alloc();
  v9[16] = v16;
  v9[17] = type metadata accessor for AssetRegistryAsset(0);
  v9[18] = swift_task_alloc();
  v19 = (*(v22 + 16) + **(v22 + 16));
  v17 = swift_task_alloc();
  v9[19] = v17;
  *v17 = v9;
  v17[1] = sub_1ABD318B8;

  return v19(v16, a4, a5, a2, a3, a8);
}

uint64_t sub_1ABD318B8()
{
  sub_1ABA7BC04();
  sub_1ABA7BC10();
  sub_1ABA7D4E0();
  *v3 = v2;
  v4 = *v1;
  sub_1ABA7BBC0();
  *v5 = v4;
  *(v6 + 160) = v0;

  sub_1ABA814B0();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1ABD319F4()
{
  v6 = v2[16];
  if (sub_1ABA7E1E0(v6, 1, v2[17]) == 1)
  {
    sub_1ABA908E0();
    (*(v5 + 8))(v3, v0);
    sub_1ABA7D08C();
    (*(v7 + 8))(v4, v1);
    sub_1ABC23C94(v6);

    sub_1ABA82A20();

    return v8(0);
  }

  else
  {
    v10 = v2[12];
    v11 = v2[11];
    v12 = v2[8];
    v13 = v2[6];
    v23 = v2[5];
    sub_1ABC23CFC(v6, v2[18]);
    v14 = sub_1ABA7D2D8();
    v15(v14);
    (*(v11 + 16))(v10, v13, v12);
    v16 = v23;
    v17 = swift_task_alloc();
    v2[21] = v17;
    *v17 = v2;
    v17[1] = sub_1ABD31BF0;
    v18 = sub_1ABA90084(v2[15]);

    return sub_1ABD31FA4(v18, v19, v20, v21, v22);
  }
}

uint64_t sub_1ABD31BF0()
{
  sub_1ABA7BC04();
  v3 = v2;
  sub_1ABA7BC10();
  v5 = v4;
  sub_1ABA7D4E0();
  *v6 = v5;
  v7 = *v1;
  sub_1ABA7BBC0();
  *v8 = v7;
  *(v5 + 176) = v0;

  if (!v0)
  {
    *(v5 + 184) = v3;
  }

  sub_1ABA814B0();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1ABD31D00()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 144);
  v3 = *(v0 + 88);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  v6 = *(v0 + 48);
  v7 = *(v0 + 16);

  (*(v3 + 8))(v6, v4);
  sub_1ABA7D08C();
  (*(v8 + 8))(v7, v5);
  sub_1ABC23D60(v2);
  sub_1ABA94B20();

  sub_1ABA82A20();

  return v9(v1);
}

uint64_t sub_1ABD31DF8()
{
  sub_1ABA8C008();
  v1 = *(v0 + 88);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v0 + 48);
  v5 = *(v0 + 16);

  (*(v1 + 8))(v4, v3);
  sub_1ABA7D08C();
  (*(v6 + 8))(v5, v2);
  sub_1ABA94B20();

  sub_1ABA7BBE0();

  return v7();
}

uint64_t sub_1ABD31ED0()
{
  sub_1ABA8C008();
  v6 = *(v2 + 144);
  sub_1ABA908E0();
  (*(v5 + 8))(v3, v0);
  sub_1ABA7D08C();
  (*(v7 + 8))(v4, v1);
  sub_1ABC23D60(v6);
  sub_1ABA94B20();

  sub_1ABA7BBE0();

  return v8();
}

uint64_t sub_1ABD31FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_allocObject();
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1ABAF7454;

  return sub_1ABD3207C(a1, a2, a3, a4);
}

uint64_t sub_1ABD3207C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[11] = a4;
  v5[12] = v4;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  v5[13] = *v4;
  return MEMORY[0x1EEE6DFA0](sub_1ABD320CC, 0, 0);
}

uint64_t sub_1ABD320CC()
{
  sub_1ABA7BBF8();
  v1 = v0[9];
  sub_1ABD32890();
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[14] = v2;
    *v2 = v0;
    v2[1] = sub_1ABD321F8;
    v3 = sub_1ABA90084(v0[8]);
    v4 = v1;
  }

  else
  {
    v5 = [objc_allocWithZone(MEMORY[0x1E695FEB0]) init];
    v0[16] = v5;
    v6 = swift_task_alloc();
    v0[17] = v6;
    *v6 = v0;
    v6[1] = sub_1ABD322FC;
    v3 = sub_1ABA90084(v0[8]);
    v4 = v5;
  }

  return MEMORY[0x1EEDBB3B0](v3, v4);
}

uint64_t sub_1ABD321F8()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  sub_1ABA7D4E0();
  *v3 = v2;
  v2[2] = v1;
  v2[3] = v4;
  v2[4] = v0;
  v5 = *v1;
  sub_1ABA7BBC0();
  *v6 = v5;
  *(v7 + 120) = v0;

  sub_1ABA814B0();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1ABD322FC()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  sub_1ABA7D4E0();
  *v3 = v2;
  v2[5] = v1;
  v2[6] = v4;
  v2[7] = v0;
  v6 = *(v5 + 128);
  v7 = *v1;
  sub_1ABA7BBC0();
  *v8 = v7;
  *(v9 + 144) = v0;

  sub_1ABA814B0();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1ABD32418()
{
  sub_1ABA7BC04();

  v1 = *(v0 + 24);
  v2 = *(v0 + 96);
  v3 = *(v0 + 64);
  sub_1ABA7D08C();
  (*(v4 + 8))();
  sub_1ABF21CF4();
  sub_1ABA7D1F8();
  (*(v5 + 8))(v3);
  *(v2 + 16) = v1;
  sub_1ABA82A20();
  v7 = *(v0 + 96);

  return v6(v7);
}

uint64_t sub_1ABD324E4()
{
  sub_1ABA7BC04();
  v1 = v0[6];
  v2 = v0[12];
  v3 = v0[8];
  sub_1ABA7D08C();
  (*(v4 + 8))();
  sub_1ABF21CF4();
  sub_1ABA7D1F8();
  (*(v5 + 8))(v3);
  *(v2 + 16) = v1;
  sub_1ABA82A20();
  v7 = v0[12];

  return v6(v7);
}

uint64_t sub_1ABD325A8()
{
  sub_1ABA7BC04();

  v1 = *(v0 + 64);
  sub_1ABA7D08C();
  (*(v2 + 8))();
  sub_1ABF21CF4();
  sub_1ABA7D1F8();
  (*(v3 + 8))(v1);
  sub_1ABA7D2D8();
  swift_deallocPartialClassInstance();
  sub_1ABA7BBE0();

  return v4();
}

uint64_t sub_1ABD32678()
{
  sub_1ABA7BC04();
  v1 = *(v0 + 64);
  sub_1ABA7D08C();
  (*(v2 + 8))();
  sub_1ABF21CF4();
  sub_1ABA7D1F8();
  (*(v3 + 8))(v1);
  sub_1ABA7D2D8();
  swift_deallocPartialClassInstance();
  sub_1ABA7BBE0();

  return v4();
}

id InferenceMLModel.prediction<A>(from:context:)(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = *(v1 + 16);
  v8[0] = 0;
  v4 = [v3 predictionFromFeatures:a1 error:v8];
  if (v4)
  {
    v5 = v8[0];
  }

  else
  {
    v6 = v8[0];
    sub_1ABF21BE4();

    swift_willThrow();
  }

  return v4;
}

uint64_t InferenceMLModel.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1ABD32890()
{
  result = qword_1ED86B928;
  if (!qword_1ED86B928)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED86B928);
  }

  return result;
}

uint64_t InferenceActor.MyActor.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1ABD32970()
{
  type metadata accessor for InferenceActor.MyActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_1EB4CF2B8 = v0;
  return result;
}

uint64_t static InferenceActor.shared.getter()
{
  if (qword_1EB4CFFC0 != -1)
  {
    sub_1ABA8F5B8(&qword_1EB4CFFC0);
  }
}

uint64_t sub_1ABD32A0C()
{
  if (*(v0 + 192))
  {
    v1 = *(v0 + 192);
  }

  else
  {
    v2 = v0;
    sub_1ABF21854();
    swift_allocObject();
    v1 = sub_1ABF21844();
    *(v2 + 192) = v1;
  }

  return v1;
}

uint64_t InferenceServer.__allocating_init<A>(parameters:serviceDefinitionListType:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a2;
  v15 = a3;
  v6 = *a1;
  sub_1ABF217F4();
  swift_allocObject();
  v7 = sub_1ABF217E4();
  v8 = v7;
  v20 = v6;
  if (qword_1ED870898 != -1)
  {
    v7 = swift_once();
  }

  v9 = qword_1ED8708A8;
  v10 = unk_1ED8708B0;
  MEMORY[0x1EEE9AC00](v7);
  v14[2] = v8;
  v14[3] = v4;
  type metadata accessor for InferenceServerLifecycleManagerNoOp();
  swift_allocObject();
  v11 = sub_1ABA92F40();
  v18 = type metadata accessor for InferenceServerCacheManagerNoOp();
  v19 = &off_1F207BA70;
  v17[0] = swift_allocObject();

  v12 = sub_1ABD32CCC(&v20, sub_1ABD27734, v8, v9, v10, sub_1ABA93F84, v14, v11, &off_1F2079E60, v17, MEMORY[0x1E69E7CC0], v16, v8, v15, a4);

  return v12;
}

uint64_t *sub_1ABD32C54@<X0>(uint64_t a1@<X2>, uint64_t **a2@<X8>)
{
  v5 = type metadata accessor for InferenceSupportLocalBackendBasic();
  swift_allocObject();

  result = sub_1ABD4E550(v6, v7, a1);
  if (!v2)
  {
    a2[3] = v5;
    a2[4] = &off_1F207A6C8;
    *a2 = result;
  }

  return result;
}

uint64_t sub_1ABD32CCC(char *a1, void (*a2)(__int128 *__return_ptr), uint64_t a3, void (*a4)(__int128 *__return_ptr), uint64_t a5, void (*a6)(__int128 *__return_ptr, uint64_t *), uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v21 = swift_allocObject();
  sub_1ABD32D9C(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, v23, a15);
  return v21;
}

void *sub_1ABD32D9C(char *a1, void (*a2)(__int128 *__return_ptr), uint64_t a3, void (*a4)(__int128 *__return_ptr), uint64_t a5, void (*a6)(__int128 *__return_ptr, uint64_t *), uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v17 = v15;
  v21 = *a1;
  *(v15 + 192) = 0;
  sub_1ABA92FFC();
  *(v15 + 16) = sub_1ABF239C4();
  *(v15 + 24) = v21;
  if (v21 < 0)
  {
    v32 = v21 & 1;
    a4(&v28);
    if (!v16)
    {
      v22 = v29;
      v23 = v30;
      sub_1ABA93E20(&v28, v29);
      v31[3] = v22;
      v31[4] = *(v23 + 16);
      sub_1ABA93DC0(v31);
      sub_1ABA7D08C();
      (*(v24 + 16))();
      sub_1ABA84B54(&v28);
      goto LABEL_7;
    }
  }

  else
  {
    a2(&v28);
    if (!v16)
    {
      sub_1ABA946C0(&v28, v31);
LABEL_7:
      sub_1ABA93FC4(v31, (v17 + 4));
      a6(&v28, v31);
      sub_1ABA946C0(&v28, (v17 + 16));
      v17[9] = a8;
      v17[10] = a9;
      sub_1ABA93FC4(a10, (v17 + 11));
      v17[21] = a11;
      v17[22] = a12;
      v17[23] = a15;
      v17[25] = a13;
      swift_unknownObjectRetain();

      sub_1ABA94ED0(v26);
      swift_unknownObjectRelease();

      sub_1ABA84B54(a10);
      sub_1ABA84B54(v31);
      return v17;
    }
  }

  sub_1ABA84B54(a10);
  swift_unknownObjectRelease();

  type metadata accessor for InferenceServer();
  swift_deallocPartialClassInstance();
  return v17;
}

uint64_t sub_1ABD3303C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v6[9] = a5;
  v6[10] = a6;
  v8 = *a2;
  v9 = a2[1];
  v11 = a2[2];
  v10 = a2[3];
  v13 = a2[4];
  v12 = a2[5];
  if (qword_1EB4CFFC0 != -1)
  {
    sub_1ABA8F5B8(&qword_1EB4CFFC0);
  }

  v7[11] = qword_1EB4CF2B8;
  v7[2] = v8;
  v7[3] = v9;
  v7[4] = v11;
  v7[5] = v10;
  v7[6] = v13;
  v7[7] = v12;
  v7[8] = 0;
  v14 = swift_task_alloc();
  v7[12] = v14;
  *v14 = v7;
  v14[1] = sub_1ABD33164;
  sub_1ABA7DA50();

  return sub_1ABD335D8();
}

uint64_t sub_1ABD33164()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  v3 = v2;
  sub_1ABA7D1C8();
  *v4 = v3;
  v5 = *v1;
  sub_1ABA7BBC0();
  *v6 = v5;
  *(v3 + 104) = v0;

  if (!v0)
  {
    sub_1ABA7BBE0();

    __asm { BRAA            X1, X16 }
  }

  v7 = sub_1ABA7FCF4();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1ABD33278()
{
  v1 = *(v0 + 104);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1ABA8CD18();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for InferenceMessageResponseError(0, AssociatedTypeWitness, AssociatedConformanceWitness, v4);
  swift_getWitnessTable();
  swift_allocError();
  sub_1ABD2836C(v1, v5);
  swift_willThrow();

  sub_1ABA7BBE0();

  return v6();
}

uint64_t sub_1ABD33398(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v7[9] = a6;
  v7[10] = a7;
  v10 = *a2;
  v9 = a2[1];
  v11 = a2[2];
  v12 = a2[3];
  v14 = a2[4];
  v13 = a2[5];
  v15 = *a5;
  if (qword_1EB4CFFC0 != -1)
  {
    sub_1ABA8F5B8(&qword_1EB4CFFC0);
  }

  v8[11] = qword_1EB4CF2B8;
  v8[2] = v10;
  v8[3] = v9;
  v8[4] = v11;
  v8[5] = v12;
  v8[6] = v14;
  v8[7] = v13;
  v8[8] = v15;
  v16 = swift_task_alloc();
  v8[12] = v16;
  *v16 = v8;
  v16[1] = sub_1ABD334C4;
  sub_1ABA7DA50();

  return sub_1ABD335D8();
}

uint64_t sub_1ABD334C4()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  v3 = v2;
  sub_1ABA7D1C8();
  *v4 = v3;
  v5 = *v1;
  sub_1ABA7BBC0();
  *v6 = v5;
  *(v3 + 104) = v0;

  if (!v0)
  {
    sub_1ABA7BBE0();

    __asm { BRAA            X1, X16 }
  }

  v7 = sub_1ABA7FCF4();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1ABD335D8()
{
  sub_1ABA7BBF8();
  *(v1 + 144) = v2;
  *(v1 + 152) = v3;
  *(v1 + 128) = v4;
  *(v1 + 136) = v5;
  *(v1 + 112) = v6;
  *(v1 + 120) = v7;
  v8 = v7[1];
  *(v1 + 16) = *v7;
  *(v1 + 32) = v8;
  *(v1 + 48) = v7[2];
  v10 = *v9;
  *(v1 + 160) = v0;
  *(v1 + 168) = v10;
  if (qword_1EB4CFFC0 != -1)
  {
    sub_1ABA8F5B8(&qword_1EB4CFFC0);
  }

  *(v1 + 176) = qword_1EB4CF2B8;
  v11 = sub_1ABA7FCF4();

  return MEMORY[0x1EEE6DFA0](v11);
}

uint64_t sub_1ABD3367C()
{
  v12 = v0;
  v1 = *(v0 + 120);
  v11 = *(v0 + 168);
  sub_1ABD34F48(v1, &v11);
  v3 = *(v0 + 160);
  v2 = *(v0 + 168);
  v5 = *(v0 + 128);
  v4 = *(v0 + 136);
  v6 = *(v0 + 32);
  *(v0 + 64) = *(v0 + 16);
  *(v0 + 80) = v6;
  *(v0 + 96) = *(v0 + 48);
  v7 = swift_task_alloc();
  *(v0 + 184) = v7;
  *(v7 + 16) = *(v0 + 144);
  *(v7 + 32) = v3;
  *(v7 + 40) = v4;
  *(v7 + 48) = v0 + 16;
  *(v7 + 56) = v5;
  *(v7 + 64) = v2;
  swift_task_alloc();
  sub_1ABA8E8BC();
  *(v0 + 192) = v8;
  *v8 = v9;
  v8[1] = sub_1ABD337E0;

  return sub_1ABD35384();
}

uint64_t sub_1ABD337E0()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  v3 = v2;
  sub_1ABA7D1C8();
  *v4 = v3;
  v5 = *v1;
  sub_1ABA7BBC0();
  *v6 = v5;
  *(v3 + 200) = v0;

  if (!v0)
  {

    sub_1ABA7BBE0();

    __asm { BRAA            X1, X16 }
  }

  v7 = sub_1ABA7FCF4();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1ABD338FC()
{
  sub_1ABA7BBF8();

  sub_1ABA7BBE0();

  return v0();
}

uint64_t sub_1ABD33958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[29] = a8;
  v8[30] = v16;
  v8[27] = a6;
  v8[28] = a7;
  v8[25] = a4;
  v8[26] = a5;
  v8[23] = a2;
  v8[24] = a3;
  v8[22] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[31] = type metadata accessor for InferenceMessageResponse(255, AssociatedTypeWitness, v10, v11);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8[32] = TupleTypeMetadata2;
  v8[33] = *(TupleTypeMetadata2 - 8);
  v8[34] = swift_task_alloc();
  v8[35] = swift_task_alloc();
  v8[36] = swift_task_alloc();
  v13 = sub_1ABF247E4();
  v8[37] = v13;
  v8[38] = *(v13 - 8);
  v8[39] = swift_task_alloc();
  if (qword_1EB4CFFC0 != -1)
  {
    swift_once();
  }

  v8[40] = qword_1EB4CF2B8;

  return MEMORY[0x1EEE6DFA0](sub_1ABD33B2C);
}

uint64_t sub_1ABD33B2C()
{
  sub_1ABA7BBF8();
  v1 = *(v0 + 208);
  sub_1ABA93E20((*(v0 + 192) + 88), *(*(v0 + 192) + 112));
  v3 = v1[1];
  v2 = v1[2];
  *(v0 + 16) = *v1;
  *(v0 + 32) = v3;
  *(v0 + 48) = v2;
  swift_task_alloc();
  sub_1ABA8E8BC();
  *(v0 + 328) = v4;
  *v4 = v5;
  v4[1] = sub_1ABD33BF0;
  v6 = *(v0 + 312);
  v7 = *(v0 + 232);
  v8 = *(v0 + 240);
  v9 = *(v0 + 216);
  v10 = *(v0 + 200);

  return sub_1ABD37740(v6, v10, v0 + 16, v9, v7, v8);
}

uint64_t sub_1ABD33BF0()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  v3 = v2;
  sub_1ABA7D1C8();
  *v4 = v3;
  v5 = *v1;
  sub_1ABA7BBC0();
  *v6 = v5;
  *(v3 + 336) = v0;

  v7 = *(v3 + 320);
  if (v0)
  {
    v8 = sub_1ABD33F50;
  }

  else
  {
    v8 = sub_1ABD33CF0;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1ABD33CF0()
{
  v1 = v0[39];
  if (sub_1ABA7E1E0(v1, 1, v0[31]) != 1)
  {
    v5 = v0[23];
    sub_1ABA7D08C();
    (*(v6 + 32))();
    *v5 = 0;
    *(v5 + 8) = 256;

    sub_1ABA7BBE0();
    goto LABEL_5;
  }

  v2 = v0[42];
  v3 = v0[26];
  (*(v0[38] + 8))(v1, v0[37]);
  sub_1ABD34620(v3, (v0 + 8));
  if (v2)
  {

    sub_1ABA7C144();
LABEL_5:

    return v4();
  }

  v8 = v0[28];
  v9 = v0[24];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = type metadata accessor for InferenceMessageRequest(0, AssociatedTypeWitness, v11, v12);
  v0[43] = v13;
  v0[16] = v13;
  v0[17] = &off_1F2081628;
  sub_1ABA93DC0(v0 + 13);
  sub_1ABA7D08C();
  (*(v14 + 16))();
  v0[18] = v9;
  v0[19] = v8;

  swift_task_alloc();
  sub_1ABA8E8BC();
  v0[44] = v15;
  *v15 = v16;
  v15[1] = sub_1ABD33FC8;

  return sub_1ABD34FC0();
}

uint64_t sub_1ABD33F50()
{
  sub_1ABA7BC04();
  sub_1ABA90900();

  sub_1ABA7BBE0();

  return v0();
}

uint64_t sub_1ABD33FC8()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  v3 = v2;
  sub_1ABA7D1C8();
  *v4 = v3;
  v5 = *v1;
  sub_1ABA7BBC0();
  *v6 = v5;
  v3[45] = v0;

  if (v0)
  {
    v7 = v3[40];
    v8 = sub_1ABD344F0;
  }

  else
  {
    v9 = v3[40];
    sub_1ABA84B54(v3 + 13);
    v8 = sub_1ABD340D8;
    v7 = v9;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

void sub_1ABD340D8()
{
  v1 = v0[28];
  v2 = v0[24];
  sub_1ABA93E20(v0 + 8, v0[11]);
  v0[20] = v2;
  v0[21] = v1;
  sub_1ABA994A4();
  swift_task_alloc();
  sub_1ABA8E8BC();
  v0[46] = v3;
  *v3 = v4;
  v3[1] = sub_1ABD34270;
  sub_1ABA7DA50();

  __asm { BRAA            X8, X16 }
}

uint64_t sub_1ABD34270()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  v3 = v2;
  sub_1ABA7D1C8();
  *v4 = v3;
  v5 = *v1;
  sub_1ABA7BBC0();
  *v6 = v5;
  *(v3 + 376) = v0;

  v7 = *(v3 + 320);
  if (v0)
  {
    v8 = sub_1ABD3458C;
  }

  else
  {
    v8 = sub_1ABD34370;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1ABD34370()
{
  sub_1ABA8C1F8();
  v1 = v0[35];
  v2 = v0[36];
  v4 = v0[33];
  v3 = v0[34];
  v6 = v0[31];
  v5 = v0[32];
  v7 = v0[23];
  v8 = v0[22];

  (*(v4 + 16))(v1, v2, v5);
  v9 = *(v6 - 8);
  (*(v9 + 32))(v8, v1, v6);
  (*(v4 + 32))(v3, v2, v5);
  v10 = (v3 + *(v5 + 48));
  v11 = *v10;
  LOBYTE(v10) = *(v10 + 8);
  *v7 = v11;
  *(v7 + 8) = v10;
  *(v7 + 9) = 0;
  (*(v9 + 8))(v3, v6);
  sub_1ABA84B54(v0 + 8);

  sub_1ABA7BBE0();

  return v12();
}

uint64_t sub_1ABD344F0()
{
  sub_1ABA7BC04();

  sub_1ABA84B54((v0 + 104));
  sub_1ABA84B54((v0 + 64));
  sub_1ABA90900();

  sub_1ABA7BBE0();

  return v1();
}

uint64_t sub_1ABD3458C()
{
  sub_1ABA7BC04();

  sub_1ABA84B54((v0 + 64));
  sub_1ABA90900();

  sub_1ABA7BBE0();

  return v1();
}

uint64_t sub_1ABD34620@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v17[0] = *a1;
  v17[1] = v4;
  v17[2] = a1[2];
  swift_beginAccess();

  sub_1ABAD5A60();

  if (v14 != 255)
  {
    sub_1ABAE2C4C(v12, v10);
    sub_1ABAB08B8(v12, &qword_1EB4D8180, &unk_1ABF594D0);
    sub_1ABD4BE50(&v15);
    sub_1ABD37540(v10);
    return sub_1ABA946C0(&v15, a2);
  }

  sub_1ABAB08B8(v12, &qword_1EB4D8180, &unk_1ABF594D0);
  result = sub_1ABD34E18(v13, v17);
  if (!v2)
  {
    v12[0] = result;
    v12[1] = v6;
    sub_1ABD37428(v12, v10);
    sub_1ABD34AA8();
    sub_1ABD37498(v11);

    if (v16)
    {
      sub_1ABAB08B8(v12, &qword_1EB4D8B20, &qword_1ABF5B3A0);
      return sub_1ABA946C0(&v15, a2);
    }

    sub_1ABAB08B8(&v15, &qword_1EB4D8B30, &unk_1ABF5B3B0);
    sub_1ABD37428(v12, v10);
    v7 = v10[0];
    v8 = v10[1];
    sub_1ABD374EC();
    swift_allocError();
    *v9 = v7;
    *(v9 + 8) = v8;
    *(v9 + 16) = 0;
    swift_willThrow();
    sub_1ABAB08B8(v12, &qword_1EB4D8B20, &qword_1ABF5B3A0);
    return sub_1ABD37498(v11);
  }

  return result;
}

uint64_t sub_1ABD34840@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v18[0] = *a1;
  v18[1] = v4;
  v18[2] = a1[2];
  swift_beginAccess();

  sub_1ABAD5A60();

  if (v14 == 255)
  {
    sub_1ABAB08B8(v12, &qword_1EB4D8180, &unk_1ABF594D0);
    v15 = 0u;
    v16 = 0u;
    v17 = 0;
  }

  else
  {
    sub_1ABAE2C4C(v12, v10);
    sub_1ABAB08B8(v12, &qword_1EB4D8180, &unk_1ABF594D0);
    sub_1ABD4BF10(&v15);
    sub_1ABD37540(v10);
    if (*(&v16 + 1))
    {
      return sub_1ABA946C0(&v15, a2);
    }
  }

  sub_1ABAB08B8(&v15, &qword_1EB4D8B28, &qword_1ABF5B3A8);
  result = sub_1ABD34E18(v13, v18);
  if (!v2)
  {
    v12[0] = result;
    v12[1] = v6;
    sub_1ABD37428(v12, v10);
    sub_1ABD34CD4();
    sub_1ABD37498(v11);

    if (*(&v16 + 1))
    {
      sub_1ABAB08B8(v12, &qword_1EB4D8B20, &qword_1ABF5B3A0);
      return sub_1ABA946C0(&v15, a2);
    }

    sub_1ABAB08B8(&v15, &qword_1EB4D8B28, &qword_1ABF5B3A8);
    sub_1ABD37428(v12, v10);
    v7 = v10[0];
    v8 = v10[1];
    sub_1ABD374EC();
    swift_allocError();
    *v9 = v7;
    *(v9 + 8) = v8;
    *(v9 + 16) = 1;
    swift_willThrow();
    sub_1ABAB08B8(v12, &qword_1EB4D8B20, &qword_1ABF5B3A0);
    return sub_1ABD37498(v11);
  }

  return result;
}

uint64_t sub_1ABD34AA8()
{
  sub_1ABA8E310();
  v4 = v3[1];
  v23 = *v3;
  v24 = v4;
  v25 = v3[2];
  v21[0] = v5;
  v21[1] = v6;
  sub_1ABD373CC(v7, &v22);
  v14[0] = v23;
  v14[1] = v24;
  v15 = v25;
  sub_1ABD37428(v21, &v12);

  sub_1ABD34CD4();
  sub_1ABD37498(v13);

  if (!v0)
  {
    if (v17)
    {
      sub_1ABA946C0(&v16, &v18);
      v8 = v19;
      v9 = v20;
      sub_1ABA93E20(&v18, v19);
      *(v2 + 24) = v8;
      *(v2 + 32) = *(v9 + 8);
      sub_1ABA93DC0(v2);
      sub_1ABA7D08C();
      (*(v10 + 16))();
      sub_1ABA84B54(&v18);
    }

    else
    {
      sub_1ABAB08B8(&v16, &qword_1EB4D8B28, &qword_1ABF5B3A8);
      sub_1ABD493B4(*(v1 + 176), *(v1 + 184), &v12);
      if (v13[1])
      {
        sub_1ABA946C0(&v12, &v18);
        sub_1ABA93FC4(&v18, v14);
        BYTE8(v15) = 0;
        swift_beginAccess();
        sub_1ABAFEFB4(&v23, &v12);
        sub_1ABD25A58(v14, &v23);
        swift_endAccess();
        sub_1ABA946C0(&v18, v2);
      }

      else
      {
        sub_1ABAB08B8(&v12, &qword_1EB4D8B30, &unk_1ABF5B3B0);
        *(v2 + 32) = 0;
        *v2 = 0u;
        *(v2 + 16) = 0u;
      }
    }
  }

  return sub_1ABAB08B8(v21, &qword_1EB4D8B20, &qword_1ABF5B3A0);
}

uint64_t sub_1ABD34CD4()
{
  sub_1ABA8E310();
  v4 = v3[1];
  v17[0] = *v3;
  v17[1] = v4;
  v17[2] = v3[2];
  v15[0] = v5;
  v15[1] = v6;
  sub_1ABD373CC(v7, &v16);
  v8 = *(v1 + 176);
  v9 = *(v1 + 184);

  sub_1ABD4947C(v8, v9, &v11);
  if (!v0)
  {
    if (v12)
    {
      sub_1ABA946C0(&v11, v2);
      sub_1ABA93FC4(v2, v13);
      v14 = 1;
      swift_beginAccess();
      sub_1ABAFEFB4(v17, &v11);
      sub_1ABD25A58(v13, v17);
      swift_endAccess();
    }

    else
    {
      sub_1ABAB08B8(&v11, &qword_1EB4D8B28, &qword_1ABF5B3A8);
      *(v2 + 32) = 0;
      *v2 = 0u;
      *(v2 + 16) = 0u;
    }
  }

  return sub_1ABAB08B8(v15, &qword_1EB4D8B20, &qword_1ABF5B3A0);
}

uint64_t sub_1ABD34E18(void *a1, uint64_t *a2)
{
  v4 = v2;
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[4];
  v11 = a2[5];
  sub_1ABA93E20(v4 + 16, v4[19]);
  v18[0] = v6;
  v18[1] = v7;
  v19 = v8;
  v18[2] = v8;
  v18[3] = v9;
  v18[4] = v10;
  v18[5] = v11;
  result = sub_1ABD38B38(v18);
  if (!v3)
  {
    v17 = result;
    sub_1ABAD219C(&qword_1EB4D8B18, &qword_1ABF5B398);
    v13 = swift_allocObject();
    v14 = v11;
    v15 = v13;
    *(v13 + 16) = xmmword_1ABF34740;
    v16 = *(v4[10] + 8);
    *(v13 + 32) = v4[9];
    *(v13 + 40) = v16;
    *a1 = v6;
    a1[1] = v7;
    a1[2] = v19;
    a1[3] = v9;
    a1[4] = v10;
    a1[5] = v14;
    sub_1ABA93FC4((v4 + 16), (a1 + 6));
    a1[11] = v15;

    swift_unknownObjectRetain();
    return v17;
  }

  return result;
}

__n128 sub_1ABD34F48(__int128 *a1, uint64_t *a2)
{
  v7 = a1[1];
  v8 = *a1;
  v3 = *(a1 + 4);
  v4 = *(a1 + 5);
  v5 = *a2;
  sub_1ABA93E20((v2 + 128), *(v2 + 152));
  v9[0] = v8;
  v9[1] = v7;
  v10 = v3;
  v11 = v4;
  v12 = v5;
  sub_1ABD38A28(v9, &v12);
  return result;
}