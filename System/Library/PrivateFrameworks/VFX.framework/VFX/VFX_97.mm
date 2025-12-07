unint64_t sub_1AF88348C()
{
  result = qword_1EB63FB30;
  if (!qword_1EB63FB30)
  {
    result = swift_getWitnessTable(aA_51, &type metadata for FunctionDescriptor, v0, v1);
    atomic_store(result, &qword_1EB63FB30);
  }

  return result;
}

unint64_t sub_1AF8834E0()
{
  result = qword_1ED726B70;
  if (!qword_1ED726B70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED726B70);
  }

  return result;
}

uint64_t sub_1AF88352C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1AFDFD038();
  v7 = *(a5 + 16);
  MEMORY[0x1B271ACB0](v7);
  if (v7)
  {
    v8 = a5 + 64;
    do
    {
      v9 = *(v8 - 32);
      v10 = *(v8 - 24);
      v11 = *(v8 - 16);
      if (v11 == 1)
      {
        MEMORY[0x1B271ACB0](1);

        sub_1AFDFD038();
      }

      else
      {
        MEMORY[0x1B271ACB0](0);
        MEMORY[0x1B271ACB0](v9);
      }

      sub_1AF87A0E4();
      sub_1AF4456D0(v9, v10, v11);
      v8 += 112;
      --v7;
    }

    while (v7);
  }

  return MEMORY[0x1B271ACB0](a4);
}

uint64_t sub_1AF88362C(uint64_t a1, uint64_t a2, uint64_t a3, float32x4_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, float32x4_t *a8)
{
  if ((a1 != a5 || a2 != a6) && (sub_1AFDFEE28() & 1) == 0)
  {
    return 0;
  }

  if (!a3)
  {
    if (!a7)
    {
      goto LABEL_7;
    }

    return 0;
  }

  if (!a7 || a3 != a7)
  {
    return 0;
  }

LABEL_7:

  return sub_1AFB7B210(a4, a8);
}

uint64_t sub_1AF8836C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1AFDFF288();
  sub_1AFDFD038();
  v6 = *(a4 + 16);
  MEMORY[0x1B271ACB0](v6);
  if (v6)
  {
    v7 = a4 + 64;
    do
    {
      v8 = *(v7 - 32);
      v9 = *(v7 - 24);
      v10 = *(v7 - 16);
      if (v10 == 1)
      {
        MEMORY[0x1B271ACB0](1);

        sub_1AFDFD038();
      }

      else
      {
        MEMORY[0x1B271ACB0](0);
        MEMORY[0x1B271ACB0](v8);
      }

      sub_1AF87A0E4();
      sub_1AF4456D0(v8, v9, v10);
      v7 += 112;
      --v6;
    }

    while (v6);
  }

  MEMORY[0x1B271ACB0](a3);
  return sub_1AFDFF2F8();
}

void sub_1AF8837E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v6 = 0xE100000000000000;
  MEMORY[0x1B2718AE0](91, 0xE100000000000000);
  sub_1AF87E644(a4);
  sub_1AF723768();
  v7 = sub_1AFDFD1B8();
  MEMORY[0x1B2718AE0](v7);

  MEMORY[0x1B2718AE0](8285, 0xE200000000000000);
  if (a3)
  {
    v8 = [swift_unknownObjectRetain() label];
    if (v8)
    {
      v9 = v8;
      v10 = sub_1AFDFCEF8();
      v6 = v11;
      swift_unknownObjectRelease();

      v12 = v10;
    }

    else
    {
      sub_1AFDFE458();
      swift_unknownObjectRelease();
      v12 = 0;
      v6 = 0xE000000000000000;
    }
  }

  else
  {
    v12 = 45;
  }

  MEMORY[0x1B2718AE0](v12, v6);
}

void *sub_1AF883930(uint64_t a1, uint64_t a2, void *a3, char *a4)
{
  v8 = *(a2 + 16);

  v30 = a4;

  if (v8)
  {
    v9 = 0;
    v10 = a2 + 40;
    v31 = -v8;
    v29 = a2 + 40;
    do
    {
      for (i = (v10 + 16 * v9++); ; i += 2)
      {
        v13 = *(i - 1);
        v12 = *i;
        v14 = *(a1 + 16);

        if (v14 && (v15 = sub_1AF419914(v13, v12), (v16 & 1) != 0))
        {
          v17 = *(*(a1 + 56) + 8 * v15);
        }

        else
        {
          v17 = 0;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v32 = a3;
        v19 = sub_1AF419914(v13, v12);
        v21 = v20;
        if (a3[3] >= (a3[2] + ((v20 & 1) == 0)))
        {
          break;
        }

        sub_1AF82CE44(a3[2] + ((v20 & 1) == 0), isUniquelyReferenced_nonNull_native);
        v19 = sub_1AF419914(v13, v12);
        if ((v21 & 1) != (v22 & 1))
        {
          result = sub_1AFDFF1A8();
          __break(1u);
          return result;
        }

LABEL_12:
        if ((v21 & 1) == 0)
        {
          goto LABEL_16;
        }

LABEL_13:
        *(a3[7] + 8 * v19) = v17;

        ++v9;
        if (v31 + v9 == 1)
        {
          return a3;
        }
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_12;
      }

      v23 = v19;
      sub_1AF844B24();
      v19 = v23;
      a3 = v32;
      if (v21)
      {
        goto LABEL_13;
      }

LABEL_16:
      a3[(v19 >> 6) + 8] |= 1 << v19;
      v24 = (a3[6] + 16 * v19);
      *v24 = v13;
      v24[1] = v12;
      *(a3[7] + 8 * v19) = v17;
      ++a3[2];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_1AF420554(0, *(v30 + 2) + 1, 1, v30);
      }

      v26 = *(v30 + 2);
      v25 = *(v30 + 3);
      if (v26 >= v25 >> 1)
      {
        v30 = sub_1AF420554(v25 > 1, v26 + 1, 1, v30);
      }

      *(v30 + 2) = v26 + 1;
      v27 = &v30[16 * v26];
      *(v27 + 4) = v13;
      *(v27 + 5) = v12;
      v10 = v29;
    }

    while (v31 + v9);
  }

  return a3;
}

uint64_t sub_1AF883BC0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v3 = 0xD000000000000010;
  }

  if (v2)
  {
    v4 = "Table";
  }

  else
  {
    v4 = "vertexParameters";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000012;
  }

  else
  {
    v6 = 0xD000000000000010;
  }

  if (*a2)
  {
    v7 = "vertexParameters";
  }

  else
  {
    v7 = "Table";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1AFDFEE28();
  }

  return v9 & 1;
}

uint64_t sub_1AF883C6C()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF883CEC(uint64_t a1)
{
  sub_1AFDFD038();
}

uint64_t sub_1AF883D58(uint64_t a1)
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF883DD4@<X0>(char *a2@<X8>)
{
  v3 = sub_1AFDFE638();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1AF883E34(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000012;
  }

  else
  {
    v2 = 0xD000000000000010;
  }

  if (*v1)
  {
    v3 = "vertexParameters";
  }

  else
  {
    v3 = "Table";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

unint64_t sub_1AF883E74()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1AF883EB0@<X0>(char *a3@<X8>)
{
  v4 = sub_1AFDFE638();

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

uint64_t sub_1AF883F14(uint64_t a1)
{
  v2 = sub_1AF884A0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF883F50(uint64_t a1)
{
  v2 = sub_1AF884A0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t *sub_1AF883F8C@<X0>(uint64_t **a1@<X8>, void *a2@<X0>)
{
  result = sub_1AF8846B0(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

void *sub_1AF883FD8@<X0>(void *a1@<X8>)
{
  type metadata accessor for CustomParameters();
  v2 = swift_allocObject();
  v3 = MEMORY[0x1E69E7CC0];
  v2[2] = MEMORY[0x1E69E7CC0];
  v2[3] = v3;
  v2[4] = v3;
  v4 = swift_allocObject();
  v4[2] = v3;
  v4[3] = v3;
  v4[4] = v3;
  result = sub_1AF42CA3C(v3);
  *a1 = v2;
  a1[1] = v4;
  a1[2] = result;
  a1[3] = v6;
  return result;
}

_OWORD *sub_1AF884058@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  sub_1AF8A0CF4(a2, a3, &v7);
  if (v8)
  {
    sub_1AF449D40(&v7, v9);
  }

  else
  {
    sub_1AF8A0CF4(a2, a3, v9);
    if (v8)
    {
      sub_1AF44CB60(&v7);
    }
  }

  sub_1AF44CBE4(v9, &v7);
  if (v8)
  {
    sub_1AF44CB60(v9);
    return sub_1AF449D40(&v7, a1);
  }

  else
  {
    *(a1 + 24) = MEMORY[0x1E69E6530];
    *a1 = 0;
    result = sub_1AF44CB60(v9);
    if (v8)
    {
      return sub_1AF44CB60(&v7);
    }
  }

  return result;
}

uint64_t sub_1AF884140(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1AF8A0E2C(a2, a3, a1);
  sub_1AF8A0E2C(a2, a3, a1);

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
}

void *sub_1AF8841D0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  v3 = sub_1AF428E18(v1, v2, sub_1AF56F254);

  return v3;
}

char *sub_1AF884244(uint64_t a1, uint64_t a2, ValueMetadata *a3)
{
  result = sub_1AF8A1370(a1, a2, a3);
  if (!result)
  {
    return sub_1AF8A1370(a1, a2, a3);
  }

  return result;
}

uint64_t destroy for MaterialParameters(uint64_t a1)
{
}

uint64_t *initializeWithCopy for MaterialParameters(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;

  return a1;
}

uint64_t *assignWithCopy for MaterialParameters(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];

  a1[3] = a2[3];

  return a1;
}

_OWORD *assignWithTake for MaterialParameters(_OWORD *a1, _OWORD *a2)
{

  *a1 = *a2;

  a1[1] = a2[1];

  return a1;
}

uint64_t sub_1AF88443C(void *a1, void *a2, void *a3)
{
  v15[2] = *a3;
  sub_1AF884A60(0, &qword_1EB63FB48, MEMORY[0x1E69E6F58]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v15 - v10;
  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  v12 = sub_1AFDFDA08();
  if (qword_1ED731058 != -1)
  {
    v14 = v12;
    swift_once();
    v12 = v14;
  }

  v17 = 0;
  sub_1AF0D4F18(v12, &v17, 0xD00000000000002ELL, 0x80000001AFF386D0);
  sub_1AF441150(a1, a1[3]);
  sub_1AF884A0C();
  sub_1AFDFF3F8();
  v17 = a2;
  v16 = 0;
  sub_1AF884AC4(&unk_1ED722908, asc_1AFE7EA84);
  sub_1AFDFE918();
  if (!v3)
  {
    v17 = a3;
    v16 = 1;
    sub_1AFDFE918();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t *sub_1AF8846B0(void *a1)
{
  sub_1AF884A60(0, &qword_1EB63FB38, MEMORY[0x1E69E6F48]);
  v18 = *(v3 - 8);
  v19 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = v16 - v4;
  type metadata accessor for CustomParameters();
  inited = swift_initStackObject();
  v7 = MEMORY[0x1E69E7CC0];
  inited[2] = MEMORY[0x1E69E7CC0];
  inited[3] = v7;
  inited[4] = v7;
  v8 = swift_initStackObject();
  v8[2] = v7;
  v8[3] = v7;
  v8[4] = v7;
  v9 = sub_1AF42CA3C(v7);
  v20 = v10;
  v21 = v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AF884A0C();
  sub_1AFDFF3B8();
  if (!v1)
  {
    v22 = 0;
    sub_1AF884AC4(&qword_1ED722900, asc_1AFE7EAAC);
    sub_1AFDFE768();

    inited = v23;
    v22 = 1;
    sub_1AFDFE768();

    v12 = sub_1AF8A0980();
    v16[1] = v12;
    v14 = v13;
    v17 = sub_1AF8A0980();
    sub_1AF883930(v17, v15, v12, v14);

    (*(v18 + 8))(v5, v19);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);

  return inited;
}

unint64_t sub_1AF884A0C()
{
  result = qword_1EB63FB40;
  if (!qword_1EB63FB40)
  {
    result = swift_getWitnessTable(byte_1AFE7CE10, &type metadata for MaterialParameters.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63FB40);
  }

  return result;
}

void sub_1AF884A60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AF884A0C();
    v7 = a3(a1, &type metadata for MaterialParameters.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1AF884AC4(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for CustomParameters();
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AF884B1C()
{
  result = qword_1EB63FB50;
  if (!qword_1EB63FB50)
  {
    result = swift_getWitnessTable(aA_52, &type metadata for MaterialParameters.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63FB50);
  }

  return result;
}

unint64_t sub_1AF884B74()
{
  result = qword_1EB63FB58;
  if (!qword_1EB63FB58)
  {
    result = swift_getWitnessTable(byte_1AFE7CD20, &type metadata for MaterialParameters.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63FB58);
  }

  return result;
}

unint64_t sub_1AF884BCC()
{
  result = qword_1EB63FB60;
  if (!qword_1EB63FB60)
  {
    result = swift_getWitnessTable(byte_1AFE7CD48, &type metadata for MaterialParameters.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63FB60);
  }

  return result;
}

void sub_1AF884C20(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  if (*(v3 + 24) && object_getClass(*(v3 + 24)) == _TtC3VFX16CustomParameters && (sub_1AF8A0CF4(a2, a3, &v7), v8))
  {
    sub_1AF449D40(&v7, a1);
  }

  else
  {
    *(a1 + 24) = MEMORY[0x1E69E6530];
    *a1 = 0;
  }
}

uint64_t sub_1AF884CBC(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 24);
  if (v5)
  {
    if (object_getClass(v5) == _TtC3VFX16CustomParameters)
    {
      swift_unknownObjectRetain();
      sub_1AF8A0E2C(a2, a3, a1);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  else
  {
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }
}

uint64_t sub_1AF884D84()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  if (qword_1EB636D80 != -1)
  {
    swift_once();
  }

  v3 = qword_1EB6C2DB8;

  v4 = sub_1AF428E18(v1, v2, sub_1AF56F254);

  sub_1AF48FA18(v4);
  return v3;
}

uint64_t sub_1AF884E54(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 88);
  v10 = MEMORY[0x1B27189E0]();
  if (*(v9 + 16))
  {
    v12 = sub_1AF419914(v10, v11);
    v14 = v13;

    if (v14)
    {
      v15 = *(*(v9 + 56) + 8 * v12);

      return v15;
    }
  }

  else
  {
  }

  if (qword_1EB636D80 != -1)
  {
    swift_once();
  }

  v16 = qword_1EB6C2DB8;
  if (!(qword_1EB6C2DB8 >> 62))
  {
    v17 = *((qword_1EB6C2DB8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
      goto LABEL_9;
    }

    return 0;
  }

  v17 = sub_1AFDFE108();
  if (!v17)
  {
    return 0;
  }

LABEL_9:
  v18 = 0;
  v19 = a1 >> 16;
  v20 = a2 >> 16;
  while (1)
  {
    if ((v16 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x1B2719C70](v18, v16);
    }

    else
    {
      v15 = *(v16 + 8 * v18 + 32);
    }

    v21 = *(v15 + 16);
    v22 = *(v15 + 24);
    v23 = (v22 & 0x2000000000000000) != 0 ? HIBYTE(v22) & 0xF : v21 & 0xFFFFFFFFFFFFLL;
    v24 = v21 == a3 && v22 == a4;
    v25 = v24 && v19 == 0;
    v26 = v25 && v23 == v20;
    if (v26 || (sub_1AFDFE9E8() & 1) != 0)
    {
      break;
    }

    if (v17 == ++v18)
    {
      return 0;
    }
  }

  return v15;
}

char *sub_1AF884FF4(uint64_t a1, uint64_t a2, ValueMetadata *a3)
{
  v4 = *(v3 + 24);
  if (!v4 || object_getClass(v4) != _TtC3VFX16CustomParameters)
  {
    return 0;
  }

  swift_unknownObjectRetain();
  v9 = sub_1AF8A1370(a1, a2, a3);
  swift_unknownObjectRelease();
  return v9;
}

unint64_t sub_1AF8851F4(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 1684957547;
    v6 = 0x68536D6F74737563;
    if (a1 != 2)
    {
      v6 = 0x6574656D61726170;
    }

    if (a1)
    {
      v5 = 0x646F4D646E656C62;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6D6F436874706564;
    v2 = 0x6972576874706564;
    if (a1 != 7)
    {
      v2 = 0x66666F747563;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x65646F4D6C6C7563;
    if (a1 != 4)
    {
      v3 = 0xD000000000000014;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1AF885334()
{
  v1 = *v0;
  sub_1AFDFF288();
  sub_1AF3D45C4(v3, v1);
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF885384(uint64_t a1)
{
  v2 = *v1;
  sub_1AFDFF288();
  sub_1AF3D45C4(v4, v2);
  return sub_1AFDFF2F8();
}

unint64_t sub_1AF8853C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF88A3B8(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1AF8853F8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1AF8851F4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1AF885440@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF88A3B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AF885468(uint64_t a1)
{
  v2 = sub_1AF88B628();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF8854A4(uint64_t a1)
{
  v2 = sub_1AF88B628();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF8854E0(void *a1)
{
  v3 = v1;
  sub_1AF88B67C(0, &qword_1EB63FB80, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13[-1] - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AF88B628();
  sub_1AFDFF3F8();
  LOBYTE(v13[0]) = *v3;
  v14 = 0;
  sub_1AF51C884();
  sub_1AFDFE918();
  if (!v2)
  {
    LODWORD(v13[0]) = *(v3 + 40);
    BYTE4(v13[0]) = *(v3 + 44);
    v14 = 1;
    sub_1AF51E090();
    sub_1AFDFE918();
    LOBYTE(v13[0]) = 8;
    sub_1AFDFE8E8();
    v13[0] = *(v3 + 16);
    v14 = 2;
    sub_1AF480018();
    sub_1AFDFE918();
    v13[0] = *(v3 + 80);
    v14 = 4;
    type metadata accessor for MTLCullMode(0);
    sub_1AF88B5E0(&unk_1EB639AB8, type metadata accessor for MTLCullMode, protocol conformance descriptor for MTLCullMode);
    sub_1AFDFE918();
    if (*(v3 + 53) == 1)
    {
      LOBYTE(v13[0]) = 5;
      sub_1AFDFE8C8();
      v13[0] = *(v3 + 56);
      v14 = 6;
      type metadata accessor for MTLCompareFunction(0);
      sub_1AF88B5E0(&qword_1EB639AC8, type metadata accessor for MTLCompareFunction, protocol conformance descriptor for MTLCompareFunction);
      sub_1AFDFE918();
      LOBYTE(v13[0]) = 7;
      sub_1AFDFE8C8();
    }

    v11 = *(v3 + 24);
    if (v11)
    {
      v13[3] = swift_getObjectType();
      v13[0] = v11;
      v14 = 3;
      sub_1AF48726C();
      swift_unknownObjectRetain();
      sub_1AFDFE918();
      sub_1AF4872C0(v13);
    }
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1AF8858A8()
{
  sub_1AFDFF288();
  sub_1AFDFF2C8();
  sub_1AFDFF2C8();
  v1 = sub_1AFDFF2F8() - 0x61C8864680B583EBLL;
  if (v0[11])
  {
    v2 = *(v0 + 10) - 0x61C8864680B583EBLL;
  }

  else
  {
    v2 = 0x9E3779B97F4A7C18;
  }

  v3 = ((v1 >> 2) + (v1 << 6) + v2) ^ v1;
  if (v0[12] < 0.0)
  {
    v4 = 0x9E3779B97F4A7C15;
  }

  else
  {
    v4 = 0x9E3779B97F4A7C16;
  }

  v5 = (v4 + (v3 << 6) + (v3 >> 2)) ^ v3;
  v6 = (*v0 - 0x61C8864680B583EBLL + (v5 << 6) + (v5 >> 2)) ^ v5;
  if (*(v0 + 53))
  {
    v7 = 0x9E3779B97F4A7C16;
  }

  else
  {
    v7 = 0x9E3779B97F4A7C15;
  }

  result = (v7 + (v6 << 6) + (v6 >> 2)) ^ v6;
  if (*(v0 + 53))
  {
    if (v0[16])
    {
      v10 = 0x9E3779B97F4A7C16;
    }

    else
    {
      v10 = 0x9E3779B97F4A7C15;
    }

    v9 = ((result << 6) - 0x61C8864680B583EBLL + (result >> 2) + *(v0 + 7)) ^ result;
    return (v10 + (v9 << 6) + (v9 >> 2)) ^ v9;
  }

  return result;
}

uint64_t sub_1AF8859C0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  if (v3 && object_getClass(v3) == _TtC3VFX16CustomParameters && (sub_1AF8A0CF4(a1, a2, &v7), v8))
  {
    sub_1AF449D40(&v7, &v9);
  }

  else
  {
    v10 = MEMORY[0x1E69E6530];
    *&v9 = 0;
  }

  if (swift_dynamicCast())
  {
    return v7;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

__n128 sub_1AF885A80@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1AF88A404(a2, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v5;
    *(a1 + 96) = v8;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
    result = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = result;
  }

  return result;
}

void sub_1AF885AF8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  (*(a2 + 8))(v3 + 16, 4, ObjectType, a2);
  v7 = *(v3 + 32);
  if (*(v3 + 24))
  {
    v8 = swift_getObjectType();
    v9 = (*(v7 + 24))(a1, a2, v8, v7);
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0;
  }

  *(v3 + 24) = v9;
  *(v3 + 32) = v7;
}

__n128 sub_1AF885BA8@<Q0>(uint64_t a1@<X8>)
{
  sub_1AF88A2FC(v5);
  v2 = v5[5];
  *(a1 + 64) = v5[4];
  *(a1 + 80) = v2;
  *(a1 + 96) = v6;
  v3 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  result = v5[3];
  *(a1 + 32) = v5[2];
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1AF885C04(uint64_t a1, _WORD *a2)
{
  sub_1AF88B884(0, &qword_1ED730B70, &type metadata for FunctionConstant, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AFE4C5F0;
  v5 = sub_1AF8C3410(0, a1, a2);
  *(v4 + 32) = xmmword_1AFE7CE60;
  *(v4 + 48) = 0;
  *(v4 + 64) = v5;
  *(v4 + 128) = 13;
  v6 = sub_1AF8C3410(1, a1, a2);
  *(v4 + 144) = xmmword_1AFE7CE70;
  *(v4 + 160) = 0;
  *(v4 + 176) = v6;
  *(v4 + 240) = 13;
  v7 = sub_1AF8C3410(2, a1, a2);
  *(v4 + 256) = xmmword_1AFE7CE80;
  *(v4 + 272) = 0;
  *(v4 + 288) = v7;
  *(v4 + 352) = 13;
  v8 = sub_1AF8C3410(3, a1, a2);
  *(v4 + 368) = xmmword_1AFE7CE90;
  *(v4 + 384) = 0;
  *(v4 + 400) = v8;
  *(v4 + 464) = 13;
  v9 = sub_1AF8C3410(6, a1, a2);
  *(v4 + 480) = xmmword_1AFE7CEA0;
  *(v4 + 496) = 0;
  *(v4 + 512) = v9;
  *(v4 + 576) = 13;
  v10 = sub_1AF8C3410(7, a1, a2);
  *(v4 + 592) = xmmword_1AFE7CEB0;
  *(v4 + 608) = 0;
  *(v4 + 624) = v10;
  *(v4 + 688) = 13;
  v11 = sub_1AF8C3410(4, a1, a2);
  *(v4 + 704) = xmmword_1AFE7CEC0;
  *(v4 + 720) = 0;
  *(v4 + 736) = v11;
  *(v4 + 800) = 13;
  v12 = sub_1AF8C3410(5, a1, a2);
  *(v4 + 816) = xmmword_1AFE7CED0;
  *(v4 + 832) = 0;
  *(v4 + 848) = v12;
  *(v4 + 912) = 13;
  return v4;
}

uint64_t sub_1AF885E08(uint64_t a1)
{
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v104 = qword_1ED73B840;
  v105 = 0;
  v106 = 2;
  v107 = 0;
  v108 = 2;
  v109 = 0;
  sub_1AF70506C(2, &v83);
  v98 = v83;
  v99 = v84;
  v100 = v85;
  v101 = v86 | 1;
  v102 = v87;
  v103 = v88;
  sub_1AF6B06C0(a1, &v98, 0x200000000, v89);
  v73 = *v89;
  if (!*v89)
  {
    v64 = &unk_1EB6333D8;
    v65 = &type metadata for MaterialRuntime;
    v66 = &off_1F253FE70;
    v67 = sub_1AF5DD590;
    v68 = &v83;
    return sub_1AF88B3FC(v68, v64, v65, v66, v67);
  }

  v72 = *&v89[40];
  v2 = *(&v90 + 1);
  v3 = *(&v91 + 1);
  v93 = *&v89[8];
  v94 = *&v89[24];
  if (v92 <= 0 || !*(&v90 + 1))
  {
    sub_1AF88B3FC(&v83, &unk_1EB6333D8, &type metadata for MaterialRuntime, &off_1F253FE70, sub_1AF5DD590);
    v64 = &qword_1ED725EA0;
    v65 = &type metadata for QueryResult;
    v66 = MEMORY[0x1E69E6720];
    v67 = sub_1AF88B884;
    v68 = v89;
    return sub_1AF88B3FC(v68, v64, v65, v66, v67);
  }

  v77 = *(*(&v91 + 1) + 32);
  v76 = *(v91 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v82[3] = v90;
  v82[4] = v91;
  v82[5] = v92;
  v82[0] = *v89;
  v82[1] = *&v89[16];
  v82[2] = *&v89[32];
  sub_1AF5DD298(v82, v80);
  v4 = 0;
  v5 = 0;
  v71 = v2;
  v78 = v3;
  while (1)
  {
    v74 = v5;
    v75 = v4;
    v6 = (v72 + 48 * v4);
    v7 = *v6;
    v8 = v6[1];
    v10 = *(v6 + 2);
    v9 = *(v6 + 3);
    v11 = *(v6 + 4);
    v12 = *(v6 + 5);
    if (v76)
    {
      v13 = *(v12 + 376);

      os_unfair_lock_lock(v13);
      os_unfair_lock_lock(*(v12 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v77);
    v14 = *(v78 + 64);
    v80[0] = *(v78 + 48);
    v80[1] = v14;
    v81 = *(v78 + 80);
    v15 = *(*(*(*(v12 + 40) + 16) + 32) + 16) + 1;
    *(v78 + 48) = ecs_stack_allocator_allocate(*(v78 + 32), 48 * v15, 8);
    *(v78 + 56) = v15;
    *(v78 + 72) = 0;
    *(v78 + 80) = 0;
    *(v78 + 64) = 0;
    v16 = sub_1AF64B110(&type metadata for MaterialRuntime, &off_1F253FE70, v10, v9, v11, v78);
    if (v10)
    {
      if (v11)
      {
        v17 = 0;
        while (1)
        {
          v18 = v10[v17];
          v19 = *(v12 + 16);
          v20 = *(v12 + 192);

          if (v20)
          {
            v21 = *(v12 + 208);
            *(v20 + 8 * (v18 >> 6)) |= 1 << v18;
            *(v21 + 8 * (v18 >> 6)) &= ~(1 << v18);
          }

          if (*(*(v12 + 40) + 213) == 1)
          {
            v22 = *(v12 + 48);
            v23 = (v22 + 32);
            v24 = *(v22 + 16) + 1;
            while (--v24)
            {
              v25 = v23 + 5;
              v26 = *v23;
              v23 += 5;
              if (v26 == &type metadata for PropagateDirtiness)
              {
                v27 = *(v25 - 2);
                goto LABEL_23;
              }
            }

            v27 = 0;
LABEL_23:
            v28 = *(v12 + 128);

            if (*(v12 + 184))
            {
              goto LABEL_67;
            }

            v29 = v28 + v27;
            v30 = *(*(v12 + 168) + 4 * v18);
            v31 = (v29 + 8 * v18);
            v32 = *(*(v19 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v30 + 8);

            v33 = *v31;
            v34 = v31[1];
            if (v33 != -1 || v34 != 0)
            {
              sub_1AF70D248(v79, v30 | (v32 << 32), v33 | (v34 << 32));
            }
          }

          *&v16[240 * v17++ + 216] = 0;
          if (v17 == v11)
          {
            goto LABEL_30;
          }
        }
      }

      goto LABEL_30;
    }

    if (v7 != v8)
    {
      break;
    }

LABEL_30:
    v5 = v74;
    v95 = v73;
    v96 = v93;
    v97 = v94;
    sub_1AF630994(v78, &v95, v80);
    if (*(*(v78 + 104) + 16))
    {

      sub_1AF62F348(v36, v12);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = *(v78 + 104);
      if (isUniquelyReferenced_nonNull_native)
      {
        v39 = v38[2];
        v40 = swift_isUniquelyReferenced_nonNull_native();
        *(v78 + 104) = v38;
        if ((v40 & 1) == 0)
        {
          v38 = sub_1AF420EA0(0, v39, 1, v38);
          *(v78 + 104) = v38;
        }

        sub_1AF43A540(0);
        swift_arrayDestroy();
        if (v39)
        {
          v41 = v38[2] - v39;
          memmove(v38 + 4, &v38[9 * v39 + 4], 72 * v41);
          v38[2] = v41;
        }

        *(v78 + 104) = v38;
      }

      else
      {
        v59 = MEMORY[0x1E69E7CC0];
        if (v38[3] >= 2uLL)
        {
          sub_1AF88B244(0, &qword_1ED7269C0, sub_1AF43A540, MEMORY[0x1E69E6F90]);
          v59 = swift_allocObject();
          v60 = j__malloc_size_0(v59);
          v59[2] = 0;
          v59[3] = 2 * ((v60 - 32) / 72);
        }

        *(v78 + 104) = v59;
      }

      if (*(*(v78 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_currentState) - 1 >= 2)
      {
        v61 = *(v12 + 232);
        v62 = *(v12 + 256);
        if (v61 == v62)
        {
          v63 = *(v12 + 240);
        }

        else
        {
          sub_1AF6497A0(v62, v61);
          v62 = *(v12 + 232);
          v63 = *(v12 + 240);
          if (v63 == v62)
          {
            v63 = 0;
            v62 = 0;
            *(v12 + 232) = 0;
            *(v12 + 240) = 0;
          }
        }

        *(v12 + 248) = v63;
        *(v12 + 256) = v62;
      }
    }

    ecs_stack_allocator_pop_snapshot(v77);
    if (v76)
    {
      os_unfair_lock_unlock(*(v12 + 344));
      os_unfair_lock_unlock(*(v12 + 376));
    }

    v4 = v75 + 1;
    if (v75 + 1 == v71)
    {
      v69 = MEMORY[0x1E69E6720];
      sub_1AF88B3FC(v89, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF88B884);
      sub_1AF88B3FC(&v83, &unk_1EB6333D8, &type metadata for MaterialRuntime, &off_1F253FE70, sub_1AF5DD590);
      v68 = v89;
      v64 = &qword_1ED725EA0;
      v65 = &type metadata for QueryResult;
      v66 = v69;
      v67 = sub_1AF88B884;
      return sub_1AF88B3FC(v68, v64, v65, v66, v67);
    }
  }

  while (1)
  {
    v42 = *(v12 + 16);
    v43 = *(v12 + 192);

    if (v43)
    {
      v44 = *(v12 + 208);
      *(v43 + 8 * (v7 >> 6)) |= 1 << v7;
      *(v44 + 8 * (v7 >> 6)) &= ~(1 << v7);
    }

    if (*(*(v12 + 40) + 213) != 1)
    {
      goto LABEL_37;
    }

    v45 = *(v12 + 48);
    v46 = (v45 + 32);
    v47 = *(v45 + 16) + 1;
    while (--v47)
    {
      v48 = v46 + 5;
      v49 = *v46;
      v46 += 5;
      if (v49 == &type metadata for PropagateDirtiness)
      {
        v50 = *(v48 - 2);
        goto LABEL_46;
      }
    }

    v50 = 0;
LABEL_46:
    v51 = *(v12 + 128);

    if (*(v12 + 184))
    {
      break;
    }

    v52 = v51 + v50;
    v53 = *(*(v12 + 168) + 4 * v7);
    v54 = (v52 + 8 * v7);
    v55 = *(*(v42 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v53 + 8);

    v56 = *v54;
    v57 = v54[1];
    if (v56 != -1 || v57 != 0)
    {
      sub_1AF70D248(v79, v53 | (v55 << 32), v56 | (v57 << 32));
    }

LABEL_37:

    *&v16[240 * v7++ + 216] = 0;
    if (v7 == v8)
    {
      goto LABEL_30;
    }
  }

LABEL_67:
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

void sub_1AF886674(uint64_t a1)
{
  v3 = v1[2];
  v4 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_queryManager);
  swift_getObjectType();
  v5 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v3);

  sub_1AF6B1B20(a1, v5, v3);
  os_unfair_lock_unlock(*(v4 + 40));
  v6 = v1[7];
  swift_getObjectType();
  v7 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v6);

  sub_1AF6B1B20(a1, v7, v6);
  os_unfair_lock_unlock(*(v4 + 40));
  v8 = v1[12];
  swift_getObjectType();
  v9 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v8);

  sub_1AF6B1B20(a1, v9, v8);
  os_unfair_lock_unlock(*(v4 + 40));
  v10 = v1[17];
  swift_getObjectType();
  v11 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v10);

  sub_1AF6B1B20(a1, v11, v10);
  v12 = *(v4 + 40);

  os_unfair_lock_unlock(v12);
}

void sub_1AF886884(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v7 = a1;
  v85 = 0;
  v8 = *(v3 + 32);
  v129[0] = *(v3 + 16);
  v129[1] = v8;
  v130 = *(v3 + 48);
  v73 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_queryManager);
  sub_1AF6B06C0(a1, v129, 0x200000000, v97);
  if (*&v97[0])
  {
    v72 = a3;
    v71 = a2;
    if (v101 >= 1 && v99)
    {
      v9 = v98;
      v81 = v98 + 48 * v99;
      v82 = v100;
      v74 = v7;
      v75 = v3;
      do
      {
        v10 = *(v9 + 40);
        v11 = *(v10 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v11);
        os_unfair_lock_lock(*(v10 + 344));
        v12 = *(v10 + 24);

        v117 = 0;
        v115 = 0u;
        v116 = 0u;
        memset(v102, 0, 40);
        v13 = sub_1AF65A4B4(v12, &type metadata for MaterialRuntime, &off_1F253FE70, 0, 0, &v115, v102);

        sub_1AF5DD41C(v102);
        sub_1AF5DD41C(&v115);
        if (sub_1AF649CEC(v13))
        {
          sub_1AF649D40(v13, v82);
        }

        else
        {
          v80 = v9;
          v14 = *(v10 + 232);
          v15 = *(v10 + 240);
          v16 = *(v10 + 120);
          v89 = *(v10 + 28);
          LODWORD(v88) = *(v10 + 32);
          v17 = *(v10 + 16);
          v18 = *(v10 + 40);
          v19 = v18[200];
          v87 = *(*(v17 + 88) + 8 * v13 + 32);

          if ((v19 & 1) != 0 || *(v87 + 200) == 1)
          {
            *(v17 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v18 = *(v10 + 40);
          }

          v77 = v16;
          if (v18[212])
          {
            v79 = 0;
          }

          else
          {
            v79 = *(v87 + 212);
          }

          v78 = v18[208];
          v86 = *(v10 + 128);
          v20 = *(v10 + 256);
          sub_1AF5B4FCC(v18, v14, v15, 0, v10);
          v84 = v20;
          v83 = *(v10 + 256);
          v21 = v83 - v20;
          if (v83 == v20)
          {
            v22 = 0;
          }

          else
          {
            v22 = v20;
          }

          *&v102[0] = v22;
          v23 = *(*(v10 + 40) + 24);
          v24 = *(v23 + 16);
          if (v24)
          {
            v25 = v23 + 32;
            v76 = *(*(v10 + 40) + 24);

            for (i = 0; i != v24; ++i)
            {
              v27 = (v25 + 40 * i);
              if ((v27[4] & 1) == 0)
              {
                v28 = *v27;
                v30 = v27[2];
                v29 = v27[3];
                v31 = *(v87 + 24);
                v32 = *(v31 + 16);
                if (v32)
                {
                  v33 = (v31 + 32);
                  while (*v33 != v28)
                  {
                    v33 += 5;
                    if (!--v32)
                    {
                      goto LABEL_19;
                    }
                  }
                }

                else
                {
LABEL_19:
                  sub_1AF640BC8(v86 + v30 * v22 + v29, v21);
                }
              }
            }
          }

          v4 = v75;
          if (*(v17 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v17 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v10 + 72) * v21);
          }

          if (*(v10 + 184))
          {
            v34 = 0;
          }

          else
          {
            v34 = *(v10 + 168);
          }

          *&v91 = 0;

          MEMORY[0x1EEE9AC00](v35);
          v36 = v89;
          v37 = v88;
          v64 = 0u;
          v65 = v102;
          v66 = v86;
          v67 = &v91;
          LOBYTE(v68) = v78;
          HIDWORD(v68) = v13;
          LOBYTE(v69) = v79;
          v70 = v82;
          *&v116 = v34;
          DWORD2(v116) = -1;
          v117 = v84;
          v118 = v83;
          v119 = v84;
          v120 = v83;
          *&v115 = v84;
          *(&v115 + 1) = v83;
          if (v21 < 1)
          {
          }

          else
          {
            do
            {
              LOBYTE(v90[0]) = v37;
              sub_1AF6248A8(v13, v36 | (v37 << 32), v77, v17, &v115, sub_1AF5C5ACC);
              v37 = v88;
              v36 = v89;
            }

            while ((*(&v115 + 1) - v115) > 0);

            v4 = v75;
          }

          v38 = *(v10 + 192);
          v7 = v74;
          v9 = v80;
          if (v38)
          {
            v39 = *(v10 + 208);
            sub_1AF75D364(v84, v83, v38);
            v7 = v74;
            sub_1AF75D364(v84, v83, v39);
          }
        }

        v9 += 48;
        os_unfair_lock_unlock(*(v10 + 344));
        os_unfair_lock_unlock(*(v10 + 376));
      }

      while (v9 != v81);
    }

    sub_1AF88B3FC(v97, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF88B884);
    LOBYTE(a3) = v72;
    a2 = v71;
  }

  v40 = *(v4 + 72);
  v127[0] = *(v4 + 56);
  v127[1] = v40;
  v128 = *(v4 + 88);
  sub_1AF6B06C0(v7, v127, 0x200000000, v102);
  v93 = v102[2];
  v94 = v103;
  v95 = v104;
  v96 = v105;
  v91 = v102[0];
  v92 = v102[1];
  v86 = *&v102[0];
  if (*&v102[0])
  {
    v42 = *(&v102[2] + 1);
    v43 = *(&v103 + 1);
    v89 = *(&v104 + 1);
    v84 = v104;
    v107 = *(v102 + 8);
    v108 = *(&v102[1] + 8);
    MEMORY[0x1EEE9AC00](v41);
    v82 = &v64 + 8;
    v83 = v44;
    v66 = v7;
    v67 = v4;
    v68 = v7;
    v69 = a2;
    LOBYTE(v70) = a3;
    v80 = v45;
    if (v44 > 0 && v43)
    {
      v46 = v89[4];
      v47 = *(v84 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v90[2] = v93;
      v90[3] = v94;
      v90[4] = v95;
      v90[5] = v96;
      v90[0] = v91;
      v90[1] = v92;
      sub_1AF5DD298(v90, &v115);
      v48 = (v42 + 24);
      LODWORD(v81) = v47;
      while (1)
      {
        v50 = *(v48 - 6);
        v49 = *(v48 - 5);
        v51 = *(v48 - 4);
        v53 = *(v48 - 1);
        v52 = *v48;
        v54 = v48[2];
        v87 = v48[1];
        v88 = v52;
        if (v47)
        {
          v55 = v46;
          v56 = *(v54 + 376);

          v57 = v56;
          v46 = v55;
          os_unfair_lock_lock(v57);
          os_unfair_lock_lock(*(v54 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v46);

        v59 = v46;
        v60 = v89;
        sub_1AF630914(v58, v89, v106);

        LOBYTE(v109) = 1;
        *&v115 = v84;
        *(&v115 + 1) = v54;
        *&v116 = v60;
        *(&v116 + 1) = v51;
        v117 = (v49 - v50 + v51);
        v118 = v83;
        v119 = v50;
        v120 = v49;
        v121 = 0;
        v122 = 0;
        v123 = 1;
        v124 = v53;
        v125 = v88;
        v126 = v87;
        v61 = v85;
        sub_1AF889980(&v115, sub_1AF88A2D8, v82);
        if (v61)
        {
          break;
        }

        v112 = v86;
        v113 = v107;
        v114 = v108;
        sub_1AF630994(v89, &v112, v106);
        v85 = 0;
        sub_1AF62D29C(v54);
        ecs_stack_allocator_pop_snapshot(v59);
        v46 = v59;
        v47 = v81;
        if (v81)
        {
          os_unfair_lock_unlock(*(v54 + 344));
          os_unfair_lock_unlock(*(v54 + 376));
        }

        v48 += 6;
        if (!--v43)
        {
          v63 = MEMORY[0x1E69E6720];
          sub_1AF88B3FC(v102, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF88B884);
          v62 = v63;
          goto LABEL_54;
        }
      }

      v109 = v86;
      v110 = v107;
      v111 = v108;
      sub_1AF630994(v89, &v109, v106);
      sub_1AF62D29C(v54);
      ecs_stack_allocator_pop_snapshot(v59);
      os_unfair_lock_unlock(*(v54 + 344));
      os_unfair_lock_unlock(*(v54 + 376));
      __break(1u);
    }

    else
    {
      v62 = MEMORY[0x1E69E6720];
LABEL_54:
      sub_1AF88B3FC(v102, &qword_1ED725EA0, &type metadata for QueryResult, v62, sub_1AF88B884);
    }
  }
}

void sub_1AF88713C(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, uint64_t a8)
{
  v47 = a6;
  v12 = *(a1 + 32);

  sub_1AF6496EC(v12);

  v13 = sub_1AF64F35C();

  if (v13)
  {
    *(a3 + 200) = *(a2 + 10);
    *(a3 + 192) = *(a2 + 9);
    v14 = a7;
    v15 = a8;
    v16 = *(a3 + 216);
    v17 = a2[5];
    v44 = a2[4];
    v45 = v17;
    v46 = *(a2 + 12);
    v18 = a2[1];
    v40 = *a2;
    v41 = v18;
    v19 = a2[3];
    v42 = a2[2];
    v43 = v19;
    v20 = v16 == sub_1AF8858A8();
    a8 = v15;
    a7 = v14;
    if (v20)
    {
      if ((*(*(&v40 + 1) + 80) & 0x40) == 0 || !*(&v41 + 1) || (ObjectType = swift_getObjectType(), v22 = a2[5], v38[4] = a2[4], v38[5] = v22, v39 = *(a2 + 12), v23 = a2[1], v38[0] = *a2, v38[1] = v23, v24 = a2[3], v38[2] = a2[2], v38[3] = v24, (*(v42 + 32))(v38, ObjectType, v42), sub_1AF88B1F0(), v25 = sub_1AFDFD558(), , *(a3 + 224) == v25))
      {
LABEL_9:
        if ((*(*(a2 + 1) + 209) & 1) == 0)
        {
          return;
        }

        goto LABEL_13;
      }

      *(a3 + 224) = v25;
    }

    v26 = sub_1AF6496EC(v12);

    sub_1AF8873D0(v26, a2, a3, v47, a7, a8);
    goto LABEL_9;
  }

  if (*(*(a2 + 1) + 209) == 1 && *(a3 + 209) == 1)
  {
LABEL_13:
    if (*(a2 + 3))
    {
      v27 = *(a2 + 4);
      v28 = a7;
      v29 = swift_getObjectType();
      v30 = a2[5];
      v36[4] = a2[4];
      v36[5] = v30;
      v37 = *(a2 + 12);
      v31 = a2[1];
      v36[0] = *a2;
      v36[1] = v31;
      v32 = a2[3];
      v36[2] = a2[2];
      v36[3] = v32;
      v33 = a8;
      v34 = *(v27 + 40);
      sub_1AF4424F4(v36, v35);
      v34(v36, a3, v47, v28, v33, v29, v27);
      sub_1AF584F68(v36);
    }
  }
}

void sub_1AF8873D0(unint64_t a1, unsigned __int8 *a2, uint64_t *a3, uint64_t a4, _BYTE *a5, int a6)
{
  v300 = a2;
  v313 = a1;
  sub_1AF88B244(0, &qword_1ED722AF0, sub_1AF5B2388, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v286 - v12;
  sub_1AF5B2388(0);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v286 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a5)
  {
    return;
  }

  LODWORD(v312) = a6;
  v19 = *(a3 + 13);
  v327[12] = *(a3 + 12);
  v327[13] = v19;
  v327[14] = *(a3 + 14);
  v20 = *(a3 + 9);
  v327[8] = *(a3 + 8);
  v327[9] = v20;
  v21 = *(a3 + 11);
  v327[10] = *(a3 + 10);
  v327[11] = v21;
  v22 = *(a3 + 5);
  v327[4] = *(a3 + 4);
  v327[5] = v22;
  v23 = *(a3 + 7);
  v327[6] = *(a3 + 6);
  v327[7] = v23;
  v24 = *(a3 + 1);
  v327[0] = *a3;
  v327[1] = v24;
  v26 = *(a3 + 2);
  v25 = *(a3 + 3);
  v302 = a3;
  v327[2] = v26;
  v327[3] = v25;

  sub_1AF644CB8(v327);
  v303 = a4;
  v27 = *(a4 + OBJC_IVAR____TtC3VFX13EntityManager_isInPrepare);
  v28 = a5[393];
  v297 = v6;
  if (v28)
  {
    v29 = 1;
    v30 = v300;
  }

  else
  {
    v29 = a5[395];
    v30 = v300;
    if (v29 != 1)
    {
      v29 = a5[396];
    }
  }

  v314 = HIDWORD(v313);
  v298 = *(v303 + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);
  v31 = *v30;
  v32 = MEMORY[0x1E69E7CC0];
  v299 = a5;
  LODWORD(v311) = v27 | v29;
  LODWORD(v310) = v31;
  if (!v31)
  {
    type metadata accessor for RenderPipelineFactory();
    swift_allocObject();
    v33 = v298;
    v42 = v298;
    v43 = sub_1AF89DCA8(140);
    *(v43 + 88) = sub_1AF891C5C;
    *(v43 + 96) = 0;

    *(v30 + 1) = v43;
    if (*(v30 + 3))
    {
      v36 = *(v30 + 4);
      if (object_getClass(*(v30 + 3)) == _TtC3VFX13PBRParameters)
      {
        goto LABEL_51;
      }
    }

    sub_1AF892268();
    v37 = v44;
    swift_unknownObjectRelease();
    v39 = &qword_1EB63D260;
    v40 = type metadata accessor for PBRParameters;
    v41 = aFb;
LABEL_14:
    v36 = sub_1AF88B5E0(v39, v40, v41);
    *(v30 + 3) = v37;
    *(v30 + 4) = v36;
    v45 = sub_1AF42CA3C(MEMORY[0x1E69E7CC0]);
    v47 = v46;
LABEL_50:

    *(v30 + 11) = v45;
    *(v30 + 12) = v47;
LABEL_51:
    v82 = v30;
    v79 = v302;
    v83 = v303;
    v49 = v313;
    goto LABEL_52;
  }

  if (v31 == 1)
  {
    type metadata accessor for RenderPipelineFactory();
    swift_allocObject();
    v33 = v298;
    v34 = v298;
    v35 = sub_1AF89DCA8(196);
    *(v35 + 88) = sub_1AF88C2E0;
    *(v35 + 96) = 0;

    *(v30 + 1) = v35;
    if (*(v30 + 3))
    {
      v36 = *(v30 + 4);
      if (object_getClass(*(v30 + 3)) == _TtC3VFX16PrelitParameters)
      {
        goto LABEL_51;
      }
    }

    type metadata accessor for PrelitParameters();
    v37 = swift_allocObject();
    *&v38 = 0xFFFFFFFFLL;
    *(&v38 + 1) = 0xFFFFFFFFLL;
    *(v37 + 16) = v38;
    *(v37 + 32) = 0;
    swift_unknownObjectRelease();
    v39 = &unk_1EB63FB70;
    v40 = type metadata accessor for PrelitParameters;
    v41 = &unk_1AFE7D464;
    goto LABEL_14;
  }

  sub_1AF3CB994(*(v30 + 2), v13);
  if ((*(v16 + 48))(v13, 1, v15) == 1)
  {
    v33 = v298;
    v48 = v298;
    sub_1AF88B2A8(v13);
    v49 = v313;
  }

  else
  {
    sub_1AF88B4E0(v13, v18);
    v50 = *&v18[*(v15 + 44)];
    v33 = v298;
    if (v50)
    {
      type metadata accessor for RenderPipelineFactory();
      swift_allocObject();
      v51 = v33;
      v309 = sub_1AF89DCA8(128);
      v52 = *(v309 + 80);
      if ((v52 & 8) == 0)
      {
        v52 |= 8u;
        *(v309 + 80) = v52;
      }

      v53 = 0x80000001AFF38780;
      v54 = *(v50 + 16);
      if (v54)
      {
        v55 = (v50 + 48);
        v56 = *(v50 + 16);
        while (*v55 != 2)
        {
          v55 += 24;
          if (!--v56)
          {
            v57 = 0xD000000000000010;
            goto LABEL_30;
          }
        }

        v57 = *(v55 - 2);
        v53 = *(v55 - 1);
        if ((v52 & 0x20) == 0)
        {
          v52 |= 0x20u;
          *(v309 + 80) = v52;
        }

LABEL_30:
        v60 = (v50 + 48);
        while (*v60 != 1)
        {
          v60 += 24;
          if (!--v54)
          {
            v287 = 0xD000000000000015;
            v59 = 0x80000001AFF387A0;
            goto LABEL_37;
          }
        }

        v59 = *(v60 - 1);
        v287 = *(v60 - 2);
        if ((v52 & 0x10) == 0)
        {
          v52 |= 0x10u;
          *(v309 + 80) = v52;
        }
      }

      else
      {
        v59 = 0x80000001AFF387A0;
        v57 = 0xD000000000000010;
        v287 = 0xD000000000000015;
      }

LABEL_37:
      v61 = *&v18[*(v15 + 36)];
      if (v61)
      {
        if ((v52 & 0x20) != 0)
        {
          v62 = *(v61 + 88);
          swift_unknownObjectRetain();
        }

        else
        {
          v62 = 0;
        }

        v65 = v57;
        v68 = v59;
        if ((v52 & 0x10) != 0)
        {
          v64 = *(v61 + 88);
          swift_unknownObjectRetain();
        }

        else
        {
          v64 = 0;
        }

        v289 = 0;
        v290 = 0;
        v295 = 0;
        v296 = 0;
        v293 = 0;
        v294 = 0;
        v291 = 0;
        v292 = 0;
        v305 = 0;
        v306 = 0;
        v304 = 0;
        v301 = 0;
        v307 = &unk_1F25048E0;
        v308 = 0;
        v67 = MEMORY[0x1E69E7CC0];
        v288 = MEMORY[0x1E69E7CC0];
        v63 = v68;
        v66 = v287;
      }

      else
      {
        sub_1AF8989FC(v57, v53, v287, v59, MEMORY[0x1E69E7CC0], v328);

        v307 = v328[20];
        v308 = v328[21];
        v305 = v328[17];
        v306 = v328[16];
        v304 = v328[18];
        v301 = v328[19];
        v295 = v328[11];
        v296 = v328[10];
        v293 = v328[13];
        v294 = v328[12];
        v291 = v328[14];
        v292 = v328[15];
        v63 = v328[6];
        v64 = v328[8];
        v288 = v328[9];
        v65 = v328[0];
        v53 = v328[1];
        v289 = v328[2];
        v290 = v328[7];
        v62 = v328[3];
        v66 = v328[5];
        v67 = v328[4];
      }

      sub_1AF88B334(v18, sub_1AF5B2388);
      v69 = swift_allocObject();
      v69[2] = v65;
      v69[3] = v53;
      v70 = v290;
      v69[4] = v289;
      v69[5] = v62;
      v69[6] = v67;
      v69[7] = v66;
      v69[8] = v63;
      v69[9] = v70;
      v71 = v288;
      v69[10] = v64;
      v69[11] = v71;
      v72 = v295;
      v69[12] = v296;
      v69[13] = v72;
      v73 = v293;
      v69[14] = v294;
      v69[15] = v73;
      v74 = v292;
      v69[16] = v291;
      v69[17] = v74;
      v75 = v305;
      v69[18] = v306;
      v69[19] = v75;
      v76 = v301;
      v69[20] = v304;
      v69[21] = v76;
      v77 = v308;
      v69[22] = v307;
      v69[23] = v77;
      v78 = v309;
      *(v309 + 88) = sub_1AF88B544;
      *(v78 + 96) = v69;

      v30 = v300;

      *(v30 + 1) = v78;
      v49 = v313;
      v33 = v298;
      v32 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v58 = v298;
      sub_1AF88B334(v18, sub_1AF5B2388);
      v49 = v313;
      v30 = v300;
    }
  }

  v79 = v302;
  if (!*(v30 + 3) || (v36 = *(v30 + 4), object_getClass(*(v30 + 3)) != _TtC3VFX16CustomParameters))
  {
    type metadata accessor for CustomParameters();
    v80 = swift_allocObject();
    v80[2] = v32;
    v80[3] = v32;
    v80[4] = v32;
    v36 = sub_1AF88B5E0(&qword_1EB63FB68, type metadata accessor for CustomParameters, byte_1AFE7EA68);
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    *(v30 + 3) = v80;
    *(v30 + 4) = v36;
    v45 = sub_1AF8A0980();
    v47 = v81;

    goto LABEL_50;
  }

  v82 = v30;
  v83 = v303;
LABEL_52:
  ObjectType = swift_getObjectType();
  v85 = *(v82 + 80);
  v363[4] = *(v82 + 64);
  v363[5] = v85;
  v364 = *(v82 + 96);
  v86 = *(v82 + 16);
  v363[0] = *v82;
  v363[1] = v86;
  v87 = *(v82 + 48);
  v363[2] = *(v82 + 32);
  v363[3] = v87;
  v88 = (*(v36 + 32))(v363, ObjectType, v36);
  sub_1AF88B884(0, &qword_1ED730B70, &type metadata for FunctionConstant, MEMORY[0x1E69E6F90]);
  v89 = swift_allocObject();
  v90 = v310 == 2;
  v326 = 0;
  *(v89 + 16) = xmmword_1AFE431C0;
  *(v89 + 32) = xmmword_1AFE7CEE0;
  *(v89 + 48) = 0;
  *(v89 + 64) = v90;
  *(v89 + 128) = 13;
  *&v329[0] = v88;
  sub_1AF490060(v89);
  v91 = *&v329[0];
  sub_1AF88E91C(v329);
  v92 = v329[13];
  *(v79 + 12) = v329[12];
  *(v79 + 13) = v92;
  *(v79 + 14) = v329[14];
  v93 = v329[9];
  *(v79 + 8) = v329[8];
  *(v79 + 9) = v93;
  v94 = v329[11];
  *(v79 + 10) = v329[10];
  *(v79 + 11) = v94;
  v95 = v329[5];
  *(v79 + 4) = v329[4];
  *(v79 + 5) = v95;
  v96 = v329[7];
  *(v79 + 6) = v329[6];
  *(v79 + 7) = v96;
  v97 = v329[1];
  *v79 = v329[0];
  *(v79 + 1) = v97;
  v98 = v329[3];
  *(v79 + 2) = v329[2];
  *(v79 + 3) = v98;
  v99 = sub_1AF68B28C(v49, v83);
  v310 = 0;
  v100 = v79;
  if (v99)
  {
    v101 = v99;
  }

  else
  {
    v101 = MEMORY[0x1E69E7CC0];
  }

  v296 = v91;
  LODWORD(v295) = sub_1AF89BCC0(v82, v100, v101, v91, v83, v299, v312, v311 & 1, v33);

  v102 = v297;
  v103 = *(v297 + 112);
  v361[0] = *(v297 + 96);
  v361[1] = v103;
  v362 = *(v297 + 128);
  v104 = *(v83 + OBJC_IVAR____TtC3VFX13EntityManager_queryManager);
  sub_1AF6B06C0(v83, v361, 0x200000000, v330);
  v301 = 32;
  v307 = *&v330[0];
  if (*&v330[0])
  {
    v306 = *(&v330[2] + 1);
    v105 = *(&v331 + 1);
    v311 = *(&v332 + 1);
    v340 = *(v330 + 8);
    v341 = *(&v330[1] + 8);
    v106 = v302;
    if (v333 > 0 && *(&v331 + 1))
    {
      v294 = v104;
      v309 = v311[4];
      v107 = *(v332 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v350 = v330[2];
      v351 = v331;
      v352 = v332;
      v353 = v333;
      v348 = v330[0];
      v349 = v330[1];
      sub_1AF5DD298(&v348, v334);
      v108 = 0;
      LODWORD(v304) = v107;
      v305 = v105;
      do
      {
        v308 = v108;
        v109 = &v306[24 * v108];
        v111 = *v109;
        v110 = *(v109 + 1);
        v112 = *(v109 + 3);
        v312 = *(v109 + 2);
        v113 = *(v109 + 4);
        v114 = *(v109 + 5);
        if (v107)
        {
          v115 = *(v114 + 376);

          os_unfair_lock_lock(v115);
          os_unfair_lock_lock(*(v114 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v309);
        v116 = v311;
        v117 = *(v311 + 4);
        v359[0] = *(v311 + 3);
        v359[1] = v117;
        v360 = v311[10];
        v118 = *(*(*(*(v114 + 40) + 16) + 32) + 16) + 1;
        v116[6] = ecs_stack_allocator_allocate(v311[4], 48 * v118, 8);
        v116[7] = v118;
        v116[9] = 0;
        v116[10] = 0;
        v116[8] = 0;
        v119 = v312;
        v120 = sub_1AF64B110(&type metadata for ParticleMeshRenderer, &off_1F2550788, v312, v112, v113, v116);
        if (v119)
        {
          v121 = v314;
          if (v113)
          {
            for (i = 0; i != v113; ++i)
            {
              v123 = &v120[40 * i];
              v125 = *(v123 + 2);
              v124 = *(v123 + 3);
              if (v125 == v49 && v124 == v121)
              {
                v127 = v312[i];
                v128 = *(v114 + 16);
                v129 = *(v114 + 192);

                if (v129)
                {
                  v130 = *(v114 + 208);
                  *(v129 + 8 * (v127 >> 6)) |= 1 << v127;
                  *(v130 + 8 * (v127 >> 6)) &= ~(1 << v127);
                }

                if (*(*(v114 + 40) + 213) == 1)
                {
                  v131 = *(v114 + 48);
                  v132 = (v131 + 32);
                  v133 = *(v131 + 16) + 1;
                  while (--v133)
                  {
                    v134 = v132 + 5;
                    v135 = *v132;
                    v132 += 5;
                    if (v135 == &type metadata for PropagateDirtiness)
                    {
                      v136 = *(v134 - 2);
                      goto LABEL_81;
                    }
                  }

                  v136 = 0;
LABEL_81:
                  v137 = *(v114 + 128);

                  if (*(v114 + 184))
                  {
                    goto LABEL_235;
                  }

                  v138 = v137 + v136;
                  v139 = *(*(v114 + 168) + 4 * v127);
                  v140 = (v138 + 8 * v127);
                  v141 = *(*(v128 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v139 + 8);

                  v142 = *v140;
                  v143 = v140[1];
                  if (v142 != -1 || v143 != 0)
                  {
                    sub_1AF70D248(v334, v139 | (v141 << 32), v142 | (v143 << 32));
                  }

                  LODWORD(v49) = v313;
                  v121 = v314;
                }

                else
                {

                  LODWORD(v49) = v313;
                }
              }
            }
          }
        }

        else
        {
          v145 = v314;
          if (v111 != v110)
          {
            do
            {
              v155 = &v120[40 * v111];
              v157 = *(v155 + 2);
              v156 = *(v155 + 3);
              if (v157 == v49 && v156 == v145)
              {
                v159 = *(v114 + 16);
                v160 = *(v114 + 192);

                if (v160)
                {
                  v161 = *(v114 + 208);
                  *(v160 + 8 * (v111 >> 6)) |= 1 << v111;
                  *(v161 + 8 * (v111 >> 6)) &= ~(1 << v111);
                }

                if (*(*(v114 + 40) + 213) == 1)
                {
                  v162 = *(v114 + 48);
                  v163 = (v162 + 32);
                  v164 = *(v162 + 16) + 1;
                  while (--v164)
                  {
                    v165 = v163 + 5;
                    v166 = *v163;
                    v163 += 5;
                    if (v166 == &type metadata for PropagateDirtiness)
                    {
                      v167 = *(v165 - 2);
                      goto LABEL_112;
                    }
                  }

                  v167 = 0;
LABEL_112:
                  v168 = *(v114 + 128);

                  if (*(v114 + 184))
                  {
LABEL_235:
                    sub_1AFDFE518();
                    __break(1u);
                    return;
                  }

                  v169 = v168 + v167;
                  v170 = *(*(v114 + 168) + 4 * v111);
                  v171 = (v169 + 8 * v111);
                  v172 = *(*(v159 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v170 + 8);

                  v173 = *v171;
                  v174 = v171[1];
                  if (v173 != -1 || v174 != 0)
                  {
                    sub_1AF70D248(v334, v170 | (v172 << 32), v173 | (v174 << 32));
                  }

                  LODWORD(v49) = v313;
                }

                else
                {
                }

                v145 = v314;
              }

              ++v111;
            }

            while (v111 != v110);
          }
        }

        v342 = v307;
        v343 = v340;
        v344 = v341;
        v146 = v310;
        v147 = v311;
        sub_1AF630994(v311, &v342, v359);
        v310 = v146;
        v148 = v305;
        v107 = v304;
        if (*(v147[13] + 16))
        {

          sub_1AF62F348(v149, v114);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v151 = v147[13];
          if (isUniquelyReferenced_nonNull_native)
          {
            v152 = v151[2];
            v153 = swift_isUniquelyReferenced_nonNull_native();
            v147[13] = v151;
            if ((v153 & 1) == 0)
            {
              v151 = sub_1AF420EA0(0, v152, 1, v151);
              v147[13] = v151;
            }

            sub_1AF43A540(0);
            swift_arrayDestroy();
            if (v152)
            {
              v154 = v151[2] - v152;
              memmove(v151 + 4, &v151[9 * v152 + 4], 72 * v154);
              v151[2] = v154;
            }

            v147[13] = v151;
          }

          else
          {
            v176 = MEMORY[0x1E69E7CC0];
            if (v151[3] >= 2uLL)
            {
              sub_1AF88B244(0, &qword_1ED7269C0, sub_1AF43A540, MEMORY[0x1E69E6F90]);
              v176 = swift_allocObject();
              v177 = j__malloc_size_0(v176);
              v176[2] = 0;
              v176[3] = 2 * ((v177 - 32) / 72);
            }

            v147[13] = v176;
          }

          if (*(v147[2] + OBJC_IVAR____TtC3VFX13EntityManager_currentState) - 1 >= 2)
          {
            v178 = *(v114 + 232);
            v179 = *(v114 + 256);
            if (v178 == v179)
            {
              v180 = *(v114 + 240);
            }

            else
            {
              sub_1AF6497A0(v179, v178);
              v179 = *(v114 + 232);
              v180 = *(v114 + 240);
              if (v180 == v179)
              {
                v180 = 0;
                v179 = 0;
                *(v114 + 232) = 0;
                *(v114 + 240) = 0;
              }
            }

            *(v114 + 248) = v180;
            *(v114 + 256) = v179;
          }
        }

        ecs_stack_allocator_pop_snapshot(v309);
        if (v107)
        {
          os_unfair_lock_unlock(*(v114 + 344));
          os_unfair_lock_unlock(*(v114 + 376));
        }

        v108 = v308 + 1;
        LODWORD(v49) = v313;
      }

      while (v308 + 1 != v148);
      v181 = MEMORY[0x1E69E6720];
      sub_1AF88B3FC(v330, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF88B884);
      v49 = v313;
      sub_1AF88B3FC(v330, &qword_1ED725EA0, &type metadata for QueryResult, v181, sub_1AF88B884);
      v106 = v302;
      v83 = v303;
      v102 = v297;
      v33 = v298;
    }

    else
    {
      sub_1AF88B3FC(v330, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF88B884);
    }
  }

  else
  {
    v106 = v302;
  }

  v182 = *(v102 + 152);
  v357[0] = *(v102 + 136);
  v357[1] = v182;
  v358 = *(v102 + 168);
  sub_1AF6B06C0(v83, v357, 0x200000000, v334);
  v306 = *&v334[0];
  if (!*&v334[0])
  {
LABEL_210:
    v257 = v295;
    if (v295)
    {
LABEL_222:

      sub_1AF678B44(v49, v273);
      goto LABEL_223;
    }

    goto LABEL_211;
  }

  v305 = *(&v334[2] + 1);
  v183 = *(&v335 + 1);
  v184 = *(&v336 + 1);
  v338 = *(v334 + 8);
  v339 = *(&v334[1] + 8);
  if (v337 <= 0 || !*(&v335 + 1))
  {
    sub_1AF88B3FC(v334, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF88B884);
    goto LABEL_210;
  }

  v309 = *(*(&v336 + 1) + 32);
  LODWORD(v308) = *(v336 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v350 = v334[2];
  v351 = v335;
  v352 = v336;
  v353 = v337;
  v348 = v334[0];
  v349 = v334[1];
  sub_1AF5DD298(&v348, &v315);
  v185 = 0;
  v311 = v184;
  v304 = v183;
  do
  {
    v307 = v185;
    v186 = (v305 + 48 * v185);
    v188 = *v186;
    v187 = v186[1];
    v189 = *(v186 + 3);
    v312 = *(v186 + 2);
    v190 = *(v186 + 4);
    v191 = *(v186 + 5);
    if (v308)
    {
      v192 = *(v191 + 376);

      v193 = v192;
      v184 = v311;
      os_unfair_lock_lock(v193);
      os_unfair_lock_lock(*(v191 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v309);
    v194 = *(v184 + 4);
    v355[0] = *(v184 + 3);
    v355[1] = v194;
    v356 = v184[10];
    v195 = *(*(*(*(v191 + 40) + 16) + 32) + 16) + 1;
    v184[6] = ecs_stack_allocator_allocate(v184[4], 48 * v195, 8);
    v184[7] = v195;
    v184[9] = 0;
    v184[10] = 0;
    v184[8] = 0;
    v196 = v312;
    v197 = sub_1AF64B110(&type metadata for ParticleQuadRenderer, &off_1F2551038, v312, v189, v190, v184);
    if (v196)
    {
      v198 = v314;
      if (v190)
      {
        for (j = 0; j != v190; ++j)
        {
          v200 = &v197[144 * j];
          v202 = *(v200 + 7);
          v201 = *(v200 + 8);
          if (v202 == v49 && v201 == v198)
          {
            v204 = v312[j];
            v205 = *(v191 + 16);
            v206 = *(v191 + 192);

            if (v206)
            {
              v207 = *(v191 + 208);
              *(v206 + 8 * (v204 >> 6)) |= 1 << v204;
              *(v207 + 8 * (v204 >> 6)) &= ~(1 << v204);
            }

            if (*(*(v191 + 40) + 213) == 1)
            {
              v208 = *(v191 + 48);
              v209 = (v208 + 32);
              v210 = *(v208 + 16) + 1;
              while (--v210)
              {
                v211 = v209 + 5;
                v212 = *v209;
                v209 += 5;
                if (v212 == &type metadata for PropagateDirtiness)
                {
                  v213 = *(v211 - 2);
                  goto LABEL_160;
                }
              }

              v213 = 0;
LABEL_160:
              v214 = *(v191 + 128);

              if (*(v191 + 184))
              {
                goto LABEL_235;
              }

              v215 = v214 + v213;
              v216 = *(*(v191 + 168) + 4 * v204);
              v217 = (v215 + 8 * v204);
              v218 = *(*(v205 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v216 + 8);

              v219 = *v217;
              v220 = v217[1];
              if (v219 != -1 || v220 != 0)
              {
                sub_1AF70D248(&v315, v216 | (v218 << 32), v219 | (v220 << 32));
              }

              LODWORD(v49) = v313;
            }

            else
            {
            }

            v198 = v314;
          }
        }
      }
    }

    else
    {
      v222 = v314;
      if (v188 != v187)
      {
        do
        {
          v231 = &v197[144 * v188];
          v233 = *(v231 + 7);
          v232 = *(v231 + 8);
          if (v233 == v49 && v232 == v222)
          {
            v235 = *(v191 + 16);
            v236 = *(v191 + 192);

            if (v236)
            {
              v237 = *(v191 + 208);
              *(v236 + 8 * (v188 >> 6)) |= 1 << v188;
              *(v237 + 8 * (v188 >> 6)) &= ~(1 << v188);
            }

            if (*(*(v191 + 40) + 213) == 1)
            {
              v238 = *(v191 + 48);
              v239 = (v238 + 32);
              v240 = *(v238 + 16) + 1;
              while (--v240)
              {
                v241 = v239 + 5;
                v242 = *v239;
                v239 += 5;
                if (v242 == &type metadata for PropagateDirtiness)
                {
                  v243 = *(v241 - 2);
                  goto LABEL_191;
                }
              }

              v243 = 0;
LABEL_191:
              v244 = *(v191 + 128);

              if (*(v191 + 184))
              {
                goto LABEL_235;
              }

              v245 = v244 + v243;
              v246 = *(*(v191 + 168) + 4 * v188);
              v247 = (v245 + 8 * v188);
              v248 = *(*(v235 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v246 + 8);

              v249 = *v247;
              v250 = v247[1];
              if (v249 != -1 || v250 != 0)
              {
                sub_1AF70D248(&v315, v246 | (v248 << 32), v249 | (v250 << 32));
              }

              LODWORD(v49) = v313;
            }

            else
            {
            }

            v222 = v314;
          }

          ++v188;
        }

        while (v188 != v187);
      }
    }

    v345 = v306;
    v346 = v338;
    v347 = v339;
    v223 = v310;
    v184 = v311;
    sub_1AF630994(v311, &v345, v355);
    v310 = v223;
    v224 = v304;
    if (*(v184[13] + 16))
    {

      sub_1AF62F348(v225, v191);

      v226 = swift_isUniquelyReferenced_nonNull_native();
      v227 = v184[13];
      if (v226)
      {
        v228 = v227[2];
        v229 = swift_isUniquelyReferenced_nonNull_native();
        v184[13] = v227;
        if ((v229 & 1) == 0)
        {
          v227 = sub_1AF420EA0(0, v228, 1, v227);
          v184[13] = v227;
        }

        sub_1AF43A540(0);
        swift_arrayDestroy();
        if (v228)
        {
          v230 = v227[2] - v228;
          memmove(v227 + 4, &v227[9 * v228 + 4], 72 * v230);
          v227[2] = v230;
        }

        v184[13] = v227;
      }

      else
      {
        v252 = MEMORY[0x1E69E7CC0];
        if (v227[3] >= 2uLL)
        {
          sub_1AF88B244(0, &qword_1ED7269C0, sub_1AF43A540, MEMORY[0x1E69E6F90]);
          v252 = swift_allocObject();
          v253 = j__malloc_size_0(v252);
          v252[2] = 0;
          v252[3] = 2 * ((v253 - 32) / 72);
        }

        v184[13] = v252;
      }

      if (*(v184[2] + OBJC_IVAR____TtC3VFX13EntityManager_currentState) - 1 >= 2)
      {
        v254 = *(v191 + 232);
        v255 = *(v191 + 256);
        if (v254 == v255)
        {
          v256 = *(v191 + 240);
        }

        else
        {
          sub_1AF6497A0(v255, v254);
          v255 = *(v191 + 232);
          v256 = *(v191 + 240);
          if (v256 == v255)
          {
            v256 = 0;
            v255 = 0;
            *(v191 + 232) = 0;
            *(v191 + 240) = 0;
          }
        }

        *(v191 + 248) = v256;
        *(v191 + 256) = v255;
      }
    }

    ecs_stack_allocator_pop_snapshot(v309);
    if (v308)
    {
      os_unfair_lock_unlock(*(v191 + 344));
      os_unfair_lock_unlock(*(v191 + 376));
    }

    v185 = (v307 + 1);
    LODWORD(v49) = v313;
  }

  while ((v307 + 1) != v224);
  v272 = MEMORY[0x1E69E6720];
  sub_1AF88B3FC(v334, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF88B884);
  v49 = v313;
  sub_1AF88B3FC(v334, &qword_1ED725EA0, &type metadata for QueryResult, v272, sub_1AF88B884);
  v106 = v302;
  v83 = v303;
  v33 = v298;
  v257 = v295;
  if (v295)
  {
    goto LABEL_222;
  }

LABEL_211:
  if ((v257 & 4) == 0)
  {

LABEL_223:

    return;
  }

  v258 = *(v300 + 3);
  v350 = *(v300 + 2);
  v351 = v258;
  v259 = *(v300 + 5);
  v352 = *(v300 + 4);
  v353 = v259;
  v354 = *(v300 + 12);
  v260 = *(v300 + 1);
  v348 = *v300;
  v349 = v260;
  v261 = *(&v260 + 1);
  v262 = v350;
  v106[27] = sub_1AF8858A8();
  sub_1AF88B1F0();
  v263 = sub_1AFDFD558();

  v106[28] = v263;
  if (v261)
  {
    if (object_getClass(v261) == _TtC3VFX16CustomParameters)
    {
      swift_unknownObjectRetain();

      v266 = sub_1AF8A14F4(v264, v265);

      swift_unknownObjectRelease();
      if (v266)
      {
        v267 = v83 + OBJC_IVAR____TtC3VFX13EntityManager_scriptingConfig;
        v268 = type metadata accessor for ScriptingConfiguration(0);
        ++*&v267[*(v268 + 36)];
      }
    }
  }

  if (sub_1AF67CACC(&type metadata for VFXAssetTag, &off_1F253D5D8, v49))
  {
    v365 = v354;
    v366[0] = *(&v353 + 1);
    if (v261 && object_getClass(v261) == _TtC3VFX16CustomParameters)
    {
      swift_unknownObjectRetain();
      v269 = sub_1AF8A0980();
      v271 = v274;
      swift_unknownObjectRelease();
    }

    else
    {
      v269 = sub_1AF42CA3C(MEMORY[0x1E69E7CC0]);
      v271 = v270;
    }

    sub_1AF88B334(v366, sub_1AF88B394);
    sub_1AF88B3FC(&v365, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8], sub_1AF88B884);
    v275 = v300;
    *(v300 + 11) = v269;
    *(v275 + 12) = v271;
    v276 = *(v83 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);
    if (v276)
    {
      v277 = *(v276 + 80);
      swift_unknownObjectWeakLoadStrong();
      v276 = *(v276 + 56);
    }

    else
    {
      v277 = 0;
    }

    v324 = 0;
    swift_unknownObjectUnownedInit();
    v323 = v303;
    v324 = v276;
    v278 = v303;
    swift_unknownObjectUnownedAssign();

    swift_unownedRetain();
    swift_unknownObjectRelease();
    v325 = v277;
    KeyPath = swift_getKeyPath();
    v280 = v313;
    v281 = v314;
    v315 = __PAIR64__(v314, v313);
    v316 = v278;
    sub_1AF88B45C(0);
    v320 = v282;
    v321 = &off_1F2536190;
    v317 = KeyPath;
    v318 = v261;
    v319 = v262;
    v322 = 11;
    swift_unknownObjectRetain();
    sub_1AF6C67D0(&v315);
    sub_1AF57955C(&v315);
    v283 = swift_getKeyPath();
    v315 = __PAIR64__(v281, v280);
    v316 = v278;
    sub_1AF58523C();
    v320 = v284;
    v321 = &off_1F2536190;
    v317 = v283;
    LOBYTE(v318) = 1;
    v322 = 11;
    sub_1AF6C67D0(&v315);
    sub_1AF57955C(&v315);
    sub_1AF579490(&v323);
    if (v277)
    {
      v285 = [objc_opt_self() immediateMode];
      sub_1AF6C5E30(v285 ^ 1);
    }
  }
}

uint64_t sub_1AF888FDC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 24) && object_getClass(*(a2 + 24)) == _TtC3VFX16CustomParameters)
  {
    swift_unknownObjectRetain();
    v3 = sub_1AF8A0980();
    v5 = v6;
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = sub_1AF42CA3C(MEMORY[0x1E69E7CC0]);
    v5 = v4;
  }

  *(a2 + 88) = v3;
  *(a2 + 96) = v5;
  return result;
}

uint64_t sub_1AF889070()
{

  return swift_deallocClassInstance();
}

uint64_t destroy for Material(void *a1)
{

  swift_unknownObjectRelease();
}

uint64_t initializeWithCopy for Material(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  v4 = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v4;

  swift_unknownObjectRetain();

  return a1;
}

uint64_t assignWithCopy for Material(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  v4 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 32) = v4;
  v5 = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 40) = v5;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 53) = *(a2 + 53);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);

  return a1;
}

uint64_t assignWithTake for Material(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  swift_unknownObjectRelease();
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 53) = *(a2 + 53);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);

  *(a1 + 88) = *(a2 + 88);

  return a1;
}

uint64_t getEnumTagSinglePayload for Material(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t storeEnumTagSinglePayload for Material(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AF889434()
{
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v33 = qword_1ED73B840;
  v34 = 0;
  v35 = 2;
  v36 = 0;
  v37 = 2;
  v38 = 0;
  sub_1AF702ED8(1, v15);
  sub_1AF88B244(0, &qword_1ED7269A0, sub_1AF5C5300, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = &type metadata for MaterialRuntime;
  *(inited + 40) = &off_1F253FDF0;
  sub_1AF5D1EBC(inited);
  sub_1AF88B3FC(v15, &unk_1ED723BE8, &type metadata for Material, &off_1F253F848, sub_1AF5DD590);
  swift_setDeallocating();
  v2 = v17;
  *(v0 + 16) = v16;
  *(v0 + 32) = v2;
  *(v0 + 48) = v18;
  sub_1AFCC3A60(4, 2, v19);
  v3 = v19[1];
  *(v0 + 56) = v19[0];
  *(v0 + 72) = v3;
  *(v0 + 88) = v20;
  sub_1AF702EB0(1, &v21);
  v4 = v22;
  v5 = v23;
  v6 = v25;
  v7 = v26;
  v8 = v24 | 0x20;
  *(v0 + 96) = v21;
  *(v0 + 104) = v4;
  *(v0 + 108) = v5;
  *(v0 + 112) = v8;
  *(v0 + 120) = v6;
  *(v0 + 128) = v7;
  sub_1AF7032A8(1, &v27);
  v9 = v28;
  v10 = v29;
  v11 = v31;
  v12 = v32;
  v13 = v30 | 0x20;
  *(v0 + 136) = v27;
  *(v0 + 144) = v9;
  *(v0 + 148) = v10;
  *(v0 + 152) = v13;
  *(v0 + 160) = v11;
  *(v0 + 168) = v12;
  return v0;
}

uint64_t sub_1AF889634()
{
  v0 = swift_allocObject();
  sub_1AF889434();
  return v0;
}

char *sub_1AF889684(uint64_t *a1, uint64_t (*a2)(void *, uint64_t, uint64_t), uint64_t a3)
{
  v24[6] = a3;
  v5 = a1[11];
  v4 = a1[12];
  v6 = a1[13];
  v7 = a1[1];
  v8 = a1[2];
  v9 = sub_1AF64B110(&type metadata for EmitterDescription, &off_1F2563648, v5, v4, v6, v8);
  result = sub_1AF64B110(&type metadata for EmitterRuntime, &off_1F2563418, v5, v4, v6, v8);
  v11 = result;
  if (v5)
  {
    if (v6)
    {
      v12 = a1[3];
      v13 = *a1;
      do
      {
        v14 = *v5++;
        v23[0] = v13;
        v23[1] = v7;
        v23[2] = v8;
        v23[3] = v12;
        v23[4] = v14;
        result = a2(v23, v9, v11);
        if (v21)
        {
          break;
        }

        v11 += 848;
        v9 += 104;
        ++v12;
        --v6;
      }

      while (v6);
    }
  }

  else
  {
    v15 = a1[3];
    v16 = a1[6];
    v17 = a1[7];
    v18 = &v9[104 * v16];
    v19 = &result[848 * v16];
    do
    {
      if (v17 == v16)
      {
        break;
      }

      v20 = v16 + 1;
      v24[0] = *a1;
      v24[1] = v7;
      v24[2] = v8;
      v24[3] = v15;
      v24[4] = v16;
      result = a2(v24, v18, v19);
      ++v15;
      v18 += 104;
      v19 += 848;
      v16 = v20;
    }

    while (!v21);
  }

  return result;
}

char *sub_1AF889804(uint64_t *a1, uint64_t (*a2)(void *, uint64_t, uint64_t), uint64_t a3)
{
  v24[6] = a3;
  v5 = a1[11];
  v4 = a1[12];
  v6 = a1[13];
  v7 = a1[1];
  v8 = a1[2];
  v9 = sub_1AF64B110(&type metadata for TextureShaderAsset, &off_1F2543F30, v5, v4, v6, v8);
  result = sub_1AF64B110(&type metadata for TextureGPURuntime, &off_1F2544388, v5, v4, v6, v8);
  v11 = result;
  if (v5)
  {
    if (v6)
    {
      v12 = a1[3];
      v13 = *a1;
      do
      {
        v14 = *v5++;
        v23[0] = v13;
        v23[1] = v7;
        v23[2] = v8;
        v23[3] = v12;
        v23[4] = v14;
        result = a2(v23, v9, v11);
        if (v21)
        {
          break;
        }

        v11 += 16;
        v9 += 112;
        ++v12;
        --v6;
      }

      while (v6);
    }
  }

  else
  {
    v15 = a1[3];
    v16 = a1[6];
    v17 = a1[7];
    v18 = &v9[112 * v16];
    v19 = &result[16 * v16];
    do
    {
      if (v17 == v16)
      {
        break;
      }

      v20 = v16 + 1;
      v24[0] = *a1;
      v24[1] = v7;
      v24[2] = v8;
      v24[3] = v15;
      v24[4] = v16;
      result = a2(v24, v18, v19);
      ++v15;
      v18 += 112;
      v19 += 16;
      v16 = v20;
    }

    while (!v21);
  }

  return result;
}

char *sub_1AF889980(uint64_t *a1, uint64_t (*a2)(void *, uint64_t, uint64_t), uint64_t a3)
{
  v24[6] = a3;
  v5 = a1[11];
  v4 = a1[12];
  v6 = a1[13];
  v7 = a1[1];
  v8 = a1[2];
  v9 = sub_1AF64B110(&type metadata for Material, &off_1F253F848, v5, v4, v6, v8);
  result = sub_1AF64B110(&type metadata for MaterialRuntime, &off_1F253FE70, v5, v4, v6, v8);
  v11 = result;
  if (v5)
  {
    if (v6)
    {
      v12 = a1[3];
      v13 = *a1;
      do
      {
        v14 = *v5++;
        v23[0] = v13;
        v23[1] = v7;
        v23[2] = v8;
        v23[3] = v12;
        v23[4] = v14;
        result = a2(v23, v9, v11);
        if (v21)
        {
          break;
        }

        v11 += 240;
        v9 += 104;
        ++v12;
        --v6;
      }

      while (v6);
    }
  }

  else
  {
    v15 = a1[3];
    v16 = a1[6];
    v17 = a1[7];
    v18 = &v9[104 * v16];
    v19 = &result[240 * v16];
    do
    {
      if (v17 == v16)
      {
        break;
      }

      v20 = v16 + 1;
      v24[0] = *a1;
      v24[1] = v7;
      v24[2] = v8;
      v24[3] = v15;
      v24[4] = v16;
      result = a2(v24, v18, v19);
      ++v15;
      v18 += 104;
      v19 += 240;
      v16 = v20;
    }

    while (!v21);
  }

  return result;
}

char *sub_1AF889B00(uint64_t *a1, uint64_t (*a2)(void *, uint64_t, uint64_t), uint64_t a3)
{
  v24[6] = a3;
  v5 = a1[11];
  v4 = a1[12];
  v6 = a1[13];
  v7 = a1[1];
  v8 = a1[2];
  v9 = sub_1AF64B110(&type metadata for ParticlePlaneCollider, &off_1F25530C8, v5, v4, v6, v8);
  result = sub_1AF64B110(&type metadata for WorldTransform, &off_1F2529FC0, v5, v4, v6, v8);
  v11 = result;
  if (v5)
  {
    if (v6)
    {
      v12 = a1[3];
      v13 = *a1;
      do
      {
        v14 = *v5++;
        v23[0] = v13;
        v23[1] = v7;
        v23[2] = v8;
        v23[3] = v12;
        v23[4] = v14;
        result = a2(v23, v9, v11);
        if (v21)
        {
          break;
        }

        v11 += 64;
        v9 += 28;
        ++v12;
        --v6;
      }

      while (v6);
    }
  }

  else
  {
    v15 = a1[3];
    v16 = a1[6];
    v17 = a1[7];
    v18 = &v9[28 * v16];
    v19 = &result[64 * v16];
    do
    {
      if (v17 == v16)
      {
        break;
      }

      v20 = v16 + 1;
      v24[0] = *a1;
      v24[1] = v7;
      v24[2] = v8;
      v24[3] = v15;
      v24[4] = v16;
      result = a2(v24, v18, v19);
      ++v15;
      v18 += 28;
      v19 += 64;
      v16 = v20;
    }

    while (!v21);
  }

  return result;
}

char *sub_1AF889C7C(uint64_t *a1, uint64_t (*a2)(void *, uint64_t, uint64_t), uint64_t a3)
{
  v24[6] = a3;
  v5 = a1[11];
  v4 = a1[12];
  v6 = a1[13];
  v7 = a1[1];
  v8 = a1[2];
  v9 = sub_1AF64B110(&type metadata for ParticleMeshCollider, &off_1F2552EB8, v5, v4, v6, v8);
  result = sub_1AF64B110(&type metadata for WorldTransform, &off_1F2529FC0, v5, v4, v6, v8);
  v11 = result;
  if (v5)
  {
    if (v6)
    {
      v12 = a1[3];
      v13 = *a1;
      do
      {
        v14 = *v5++;
        v23[0] = v13;
        v23[1] = v7;
        v23[2] = v8;
        v23[3] = v12;
        v23[4] = v14;
        result = a2(v23, v9, v11);
        if (v21)
        {
          break;
        }

        v11 += 64;
        v9 += 32;
        ++v12;
        --v6;
      }

      while (v6);
    }
  }

  else
  {
    v15 = a1[3];
    v16 = a1[6];
    v17 = a1[7];
    v18 = &v9[32 * v16];
    v19 = &result[64 * v16];
    do
    {
      if (v17 == v16)
      {
        break;
      }

      v20 = v16 + 1;
      v24[0] = *a1;
      v24[1] = v7;
      v24[2] = v8;
      v24[3] = v15;
      v24[4] = v16;
      result = a2(v24, v18, v19);
      ++v15;
      v18 += 32;
      v19 += 64;
      v16 = v20;
    }

    while (!v21);
  }

  return result;
}

char *sub_1AF889DF4(uint64_t *a1, uint64_t (*a2)(void *, uint64_t, uint64_t), uint64_t a3)
{
  v24[6] = a3;
  v5 = a1[11];
  v4 = a1[12];
  v6 = a1[13];
  v7 = a1[1];
  v8 = a1[2];
  v9 = sub_1AF64B110(&type metadata for KillShape, &off_1F2561EB0, v5, v4, v6, v8);
  result = sub_1AF64B110(&type metadata for WorldTransform, &off_1F2529FC0, v5, v4, v6, v8);
  v11 = result;
  if (v5)
  {
    if (v6)
    {
      v12 = a1[3];
      v13 = *a1;
      do
      {
        v14 = *v5++;
        v23[0] = v13;
        v23[1] = v7;
        v23[2] = v8;
        v23[3] = v12;
        v23[4] = v14;
        result = a2(v23, v9, v11);
        if (v21)
        {
          break;
        }

        v11 += 64;
        v9 += 2;
        ++v12;
        --v6;
      }

      while (v6);
    }
  }

  else
  {
    v15 = a1[3];
    v16 = a1[6];
    v17 = a1[7];
    v18 = &v9[2 * v16];
    v19 = &result[64 * v16];
    do
    {
      if (v17 == v16)
      {
        break;
      }

      v20 = v16 + 1;
      v24[0] = *a1;
      v24[1] = v7;
      v24[2] = v8;
      v24[3] = v15;
      v24[4] = v16;
      result = a2(v24, v18, v19);
      ++v15;
      v18 += 2;
      v19 += 64;
      v16 = v20;
    }

    while (!v21);
  }

  return result;
}

char *sub_1AF889F6C(uint64_t *a1, uint64_t (*a2)(void *, uint64_t, uint64_t))
{
  v22 = a2;
  v4 = a1[11];
  v5 = a1[13];
  v6 = a1[1];
  v19 = a1[2];
  v7 = sub_1AF64B110(&type metadata for SceneKitAssetInstance, &off_1F2546F58, v4, a1[12], v5, v19);
  result = sub_1AF705CF4(v6, a1);
  v9 = result;
  if (v4)
  {
    if (v5)
    {
      v10 = a1[3];
      v18 = *a1;
      v11 = *(*(type metadata accessor for SceneKitRenderer(0) - 8) + 72);
      do
      {
        v12 = *v4++;
        v20[0] = v18;
        v20[1] = v6;
        v20[2] = v19;
        v20[3] = v10;
        v20[4] = v12;
        result = v22(v20, v7, v9);
        if (v2)
        {
          break;
        }

        v9 += v11;
        v7 += 12;
        ++v10;
        --v5;
      }

      while (v5);
    }
  }

  else
  {
    v13 = a1[3];
    v14 = a1[6];
    v15 = a1[7];
    v16 = &v7[12 * v14];
    do
    {
      if (v15 == v14)
      {
        break;
      }

      v21[0] = *a1;
      v21[1] = v6;
      v21[2] = v19;
      v21[3] = v13;
      v21[4] = v14;
      v17 = &v9[*(*(type metadata accessor for SceneKitRenderer(0) - 8) + 72) * v14];
      result = v22(v21, v16, v17);
      ++v13;
      v16 += 12;
      ++v14;
    }

    while (!v2);
  }

  return result;
}

char *sub_1AF88A110(uint64_t *a1, uint64_t (*a2)(void *, uint64_t, uint64_t), uint64_t a3)
{
  v23[6] = a3;
  v5 = a1[11];
  v4 = a1[12];
  v6 = a1[13];
  v7 = a1[1];
  v8 = a1[2];
  v9 = sub_1AF64B110(&type metadata for ParticleCollisionEvent, &off_1F2553660, v5, v4, v6, v8);
  result = sub_1AF64B110(&type metadata for OldEvent, &off_1F2534568, v5, v4, v6, v8);
  v11 = result;
  if (v5)
  {
    if (v6)
    {
      v12 = a1[3];
      v13 = *a1;
      do
      {
        v14 = *v5++;
        v22[0] = v13;
        v22[1] = v7;
        v22[2] = v8;
        v22[3] = v12;
        v22[4] = v14;
        result = a2(v22, v9, v11);
        if (v20)
        {
          break;
        }

        ++v11;
        v9 += 80;
        ++v12;
        --v6;
      }

      while (v6);
    }
  }

  else
  {
    v15 = a1[3];
    v16 = a1[6];
    v17 = a1[7];
    v18 = &v9[80 * v16];
    do
    {
      if (v17 == v16)
      {
        break;
      }

      v19 = v16 + 1;
      v23[0] = *a1;
      v23[1] = v7;
      v23[2] = v8;
      v23[3] = v15;
      v23[4] = v16;
      result = a2(v23, v18, v11 + v16);
      ++v15;
      v18 += 80;
      v16 = v19;
    }

    while (!v20);
  }

  return result;
}

unint64_t sub_1AF88A284()
{
  result = qword_1ED7220D0;
  if (!qword_1ED7220D0)
  {
    result = swift_getWitnessTable(byte_1AFE7D3A0, &type metadata for Material.Kind, v0, v1);
    atomic_store(result, &qword_1ED7220D0);
  }

  return result;
}

double sub_1AF88A2FC@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for RenderPipelineFactory();
  swift_allocObject();
  v2 = sub_1AF89DCA8(0);
  v3 = sub_1AF42CA3C(MEMORY[0x1E69E7CC0]);
  *a1 = 2;
  *(a1 + 8) = v2;
  *(a1 + 16) = -1;
  *(a1 + 20) = 0;
  *(a1 + 36) = 0;
  *(a1 + 28) = 0;
  *(a1 + 44) = 1;
  *(a1 + 48) = -1082130432;
  *(a1 + 52) = 3;
  *(a1 + 56) = 7;
  *(a1 + 64) = 0;
  *&result = 1;
  *(a1 + 72) = xmmword_1AFE431C0;
  *(a1 + 88) = v3;
  *(a1 + 96) = v5;
  return result;
}

unint64_t sub_1AF88A3B8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AFDFE638();

  if (v2 >= 9)
  {
    return 9;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1AF88A404@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  sub_1AF88B67C(0, &qword_1ED721EC8, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v52 - v7;
  type metadata accessor for RenderPipelineFactory();
  swift_allocObject();
  v64 = sub_1AF89DCA8(0);
  v94 = 1;
  v63 = sub_1AF42CA3C(MEMORY[0x1E69E7CC0]);
  v62 = v9;
  v10 = a1[3];
  v65 = a1;
  v11 = a1;
  v12 = v8;
  sub_1AF441150(v11, v10);
  sub_1AF88B628();
  sub_1AFDFF3B8();
  if (v2)
  {
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v65);
    LOBYTE(v74) = 2;
    *(&v74 + 1) = *v95;
    DWORD1(v74) = *&v95[3];
    *(&v74 + 1) = v64;
    v75 = 0xFFFFFFFFuLL;
    v76 = 0;
    v77 = 0.0;
    v78 = v94;
    v79 = v92;
    v80 = v93;
    v81 = -1.0;
    v82 = 3;
    v83 = 0;
    v84 = 7;
    v85 = 0;
    *v86 = *v91;
    *&v86[3] = *&v91[3];
    v87 = 1;
    v88 = 2;
    v89 = v63;
    v90 = v62;
    return sub_1AF584F68(&v74);
  }

  v60 = v6;
  v13 = v61;
  LOBYTE(v67) = 0;
  sub_1AF51C830();
  sub_1AFDFE6E8();
  v15 = v74;
  if (v74 == 3)
  {
    v15 = 2;
  }

  LODWORD(v59) = v15;
  LOBYTE(v67) = 1;
  sub_1AF51E03C();
  sub_1AFDFE6E8();
  v16 = v74 | (BYTE4(v74) << 32);
  v17 = HIDWORD(v16) & 1;
  if (BYTE5(v74))
  {
    LODWORD(v16) = 0;
  }

  v58 = *&v16;
  v18 = BYTE5(v74) | v17;
  v94 = BYTE5(v74) | v17;
  LOBYTE(v67) = 2;
  sub_1AF47FEB4();
  sub_1AFDFE6E8();
  v20 = v74;
  v19 = DWORD1(v74);
  if (BYTE8(v74))
  {
    v20 = -1;
  }

  LODWORD(v57) = v20;
  if (BYTE8(v74))
  {
    v19 = 0;
  }

  HIDWORD(v57) = v19;
  type metadata accessor for MTLCullMode(0);
  LOBYTE(v67) = 4;
  sub_1AF88B5E0(&unk_1ED721FE0, type metadata accessor for MTLCullMode, protocol conformance descriptor for MTLCullMode);
  sub_1AFDFE6E8();
  v21 = v60;
  v22 = v74;
  if (BYTE8(v74))
  {
    v22 = 2;
  }

  v56 = v22;
  LOBYTE(v74) = 8;
  v23 = sub_1AFDFE6C8();
  if ((v23 & 0x100000000) != 0)
  {
    v24 = -1.0;
  }

  else
  {
    v24 = *&v23;
  }

  LOBYTE(v74) = 5;
  LOBYTE(v55) = sub_1AFDFE6A8() & 1;
  v55 = v55;
  if (v55)
  {
    type metadata accessor for MTLCompareFunction(0);
    LOBYTE(v67) = 6;
    sub_1AF88B5E0(&unk_1EB630CD0, type metadata accessor for MTLCompareFunction, protocol conformance descriptor for MTLCompareFunction);
    sub_1AFDFE768();
    v30 = v74;
    LOBYTE(v74) = 7;
    LOBYTE(v53) = sub_1AFDFE718() & 1;
    v53 = v53;
  }

  else
  {
    v53 = 0;
    v30 = 7;
  }

  swift_allocObject();
  v52 = v18;
  if (!v59)
  {
    v25 = sub_1AF89DCA8(140);
    v26 = sub_1AF891C5C;
    goto LABEL_24;
  }

  if (v59 == 1)
  {
    v25 = sub_1AF89DCA8(196);
    v26 = sub_1AF88C2E0;
LABEL_24:
    *(v25 + 88) = v26;
    *(v25 + 96) = 0;
    v54 = v25;

    goto LABEL_26;
  }

  v54 = sub_1AF89DCA8(128);
LABEL_26:

  v27 = v65[3];
  v28 = v65[4];
  sub_1AF441150(v65, v27);
  if (!sub_1AF69504C(2021, v27, v28))
  {
    LOBYTE(v66[0]) = 3;
    sub_1AF4870B8();
    sub_1AFDFE6E8();
    if (!*(&v68 + 1))
    {
      sub_1AF88B3FC(&v67, &unk_1EB63FB78, &type metadata for AnyCoder, MEMORY[0x1E69E6720], sub_1AF88B884);
      goto LABEL_28;
    }

    v74 = v67;
    v75 = v68;
    sub_1AF0D5A54(&v74, &v67);
    sub_1AF4498F4(0, qword_1ED7223D0, &protocol descriptor for MaterialParametersProvider, 0);
    if (swift_dynamicCast())
    {
      v64 = v66[1];
      v34 = v66[0];
      if (object_getClass(v66[0]) == _TtC3VFX16CustomParameters && v34)
      {
        swift_unknownObjectRetain();
        v35 = sub_1AF8A0980();
        v37 = v36;
        swift_unknownObjectRelease();
LABEL_47:
        sub_1AF4872C0(&v74);

        v63 = v35;
        v62 = v37;
        v21 = v60;
        v39 = v65;
        v29 = v34;
        goto LABEL_40;
      }
    }

    else
    {
      v64 = 0;
      v34 = 0;
    }

    v35 = sub_1AF42CA3C(MEMORY[0x1E69E7CC0]);
    v37 = v51;
    goto LABEL_47;
  }

  if (!v59)
  {
    type metadata accessor for PBRParameters();
    LOBYTE(v67) = 3;
    sub_1AF88B5E0(&qword_1EB6322C0, type metadata accessor for PBRParameters, aQ_63);
    sub_1AFDFE6E8();
    v29 = v74;
    if (!v74)
    {
      sub_1AF892FF0(v31, v32, v33);
      v29 = v38;
    }

    v64 = sub_1AF88B5E0(&qword_1EB63D260, type metadata accessor for PBRParameters, aFb);
    v21 = v60;
    goto LABEL_39;
  }

LABEL_28:
  v64 = 0;
  v29 = 0;
LABEL_39:
  v39 = v65;
LABEL_40:
  v40 = v39[3];
  v41 = v39[4];
  sub_1AF441150(v39, v40);
  LOBYTE(v40) = sub_1AF69504C(2047, v40, v41);
  (*(v21 + 8))(v12, v5);
  if (v52 & 1 | ((v40 & 1) == 0))
  {
    v42 = v58;
  }

  else
  {
    v24 = v58;
    v94 = 1;
    v42 = 0.0;
  }

  v43 = v59;
  v58 = v42;
  LOBYTE(v67) = v59;
  *(&v67 + 1) = *v95;
  DWORD1(v67) = *&v95[3];
  *(&v67 + 1) = v54;
  *&v68 = v57;
  *(&v68 + 1) = v29;
  *&v69 = v64;
  *(&v69 + 2) = v42;
  LODWORD(v60) = v94;
  BYTE12(v69) = v94;
  *(&v69 + 13) = v92;
  HIBYTE(v69) = v93;
  *&v70 = v24;
  BYTE4(v70) = 3;
  v44 = v55;
  BYTE5(v70) = v55;
  *(&v70 + 1) = v30;
  v59 = v29;
  v45 = v53;
  LOBYTE(v71) = v53;
  *(&v71 + 1) = *v91;
  DWORD1(v71) = *&v91[3];
  *(&v71 + 1) = 1;
  v46 = v63;
  *&v72 = v56;
  *(&v72 + 1) = v63;
  v47 = v62;
  v73 = v62;
  sub_1AF4424F4(&v67, &v74);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v65);
  LOBYTE(v74) = v43;
  *(&v74 + 1) = *v95;
  DWORD1(v74) = *&v95[3];
  *(&v74 + 1) = v54;
  *&v75 = v57;
  *(&v75 + 1) = v59;
  v76 = v64;
  v77 = v58;
  v78 = v60;
  v79 = v92;
  v80 = v93;
  v81 = v24;
  v82 = 3;
  v83 = v44;
  v84 = v30;
  v85 = v45;
  *v86 = *v91;
  *&v86[3] = *&v91[3];
  v87 = 1;
  v88 = v56;
  v89 = v46;
  v90 = v47;
  result = sub_1AF584F68(&v74);
  v48 = v72;
  *(v13 + 64) = v71;
  *(v13 + 80) = v48;
  *(v13 + 96) = v73;
  v49 = v68;
  *v13 = v67;
  *(v13 + 16) = v49;
  v50 = v70;
  *(v13 + 32) = v69;
  *(v13 + 48) = v50;
  return result;
}

unint64_t sub_1AF88B1F0()
{
  result = qword_1ED7228F8;
  if (!qword_1ED7228F8)
  {
    result = swift_getWitnessTable(byte_1AFE7C88C, &type metadata for FunctionConstant, v0, v1);
    atomic_store(result, &qword_1ED7228F8);
  }

  return result;
}

void sub_1AF88B244(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1AF88B2A8(uint64_t a1)
{
  sub_1AF88B244(0, &qword_1ED722AF0, sub_1AF5B2388, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AF88B334(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1AF88B394(uint64_t a1)
{
  if (!qword_1ED722050)
  {
    type metadata accessor for PropertyDescription();
    v1 = sub_1AFDFCCB8();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED722050);
    }
  }
}

uint64_t sub_1AF88B3FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_1AF88B45C(uint64_t a1)
{
  if (!qword_1ED722530[0])
  {
    sub_1AF6897C4(255, &qword_1ED7223C8, qword_1ED7223D0, &protocol descriptor for MaterialParametersProvider, 0);
    v3 = type metadata accessor for ComponentValueWriter(a1, &type metadata for Material, v2, &off_1F253F848);
    if (!v4)
    {
      atomic_store(v3, qword_1ED722530);
    }
  }
}

uint64_t sub_1AF88B4E0(uint64_t a1, uint64_t a2)
{
  sub_1AF5B2388(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 sub_1AF88B544@<Q0>(__n128 *a1@<X8>)
{
  v3 = v1[10];
  v22 = v1[9];
  v23 = v3;
  v24 = v1[11];
  v4 = v1[6];
  v18 = v1[5];
  v19 = v4;
  v5 = v1[8];
  v20 = v1[7];
  v21 = v5;
  v6 = v1[2];
  v14 = v1[1];
  v15 = v6;
  v7 = v1[4];
  v16 = v1[3];
  v17 = v7;
  nullsub_106();
  sub_1AF6021F8(&v1[1], &v13);
  v8 = v23;
  a1[8] = v22;
  a1[9] = v8;
  a1[10] = v24;
  v9 = v19;
  a1[4] = v18;
  a1[5] = v9;
  v10 = v21;
  a1[6] = v20;
  a1[7] = v10;
  v11 = v15;
  *a1 = v14;
  a1[1] = v11;
  result = v17;
  a1[2] = v16;
  a1[3] = result;
  return result;
}

uint64_t sub_1AF88B5E0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AF88B628()
{
  result = qword_1ED7220E8;
  if (!qword_1ED7220E8)
  {
    result = swift_getWitnessTable(aI_35, &type metadata for Material.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED7220E8);
  }

  return result;
}

void sub_1AF88B67C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AF88B628();
    v7 = a3(a1, &type metadata for Material.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1AF88B740(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1AF88B884(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v5);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AF88B7A8()
{
  result = qword_1EB63FB98;
  if (!qword_1EB63FB98)
  {
    result = swift_getWitnessTable(a9_28, &type metadata for Material.Kind, v0, v1);
    atomic_store(result, &qword_1EB63FB98);
  }

  return result;
}

unint64_t sub_1AF88B800()
{
  result = qword_1EB63FBA0;
  if (!qword_1EB63FBA0)
  {
    result = swift_getWitnessTable(byte_1AFE7D1C8, &type metadata for Layer, v0, v1);
    atomic_store(result, &qword_1EB63FBA0);
  }

  return result;
}

void sub_1AF88B884(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1AF88B8D8()
{
  result = qword_1EB63FBB8;
  if (!qword_1EB63FBB8)
  {
    result = swift_getWitnessTable(asc_1AFE7D328, &type metadata for Material.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63FBB8);
  }

  return result;
}

unint64_t sub_1AF88B930()
{
  result = qword_1ED7220D8;
  if (!qword_1ED7220D8)
  {
    result = swift_getWitnessTable(byte_1AFE7D260, &type metadata for Material.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED7220D8);
  }

  return result;
}

unint64_t sub_1AF88B988()
{
  result = qword_1ED7220E0;
  if (!qword_1ED7220E0)
  {
    result = swift_getWitnessTable(byte_1AFE7D288, &type metadata for Material.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED7220E0);
  }

  return result;
}

unint64_t sub_1AF88B9DC()
{
  result = qword_1EB63FBC0;
  if (!qword_1EB63FBC0)
  {
    result = swift_getWitnessTable(byte_1AFE7D228, &type metadata for Layer, v0, v1);
    atomic_store(result, &qword_1EB63FBC0);
  }

  return result;
}

uint64_t sub_1AF88BA34(__objc2_class *Class)
{
  v2 = *(v1 + 24);
  if (v2 && object_getClass(*(v1 + 24)) == _TtC3VFX16PrelitParameters)
  {
    swift_unknownObjectRetain();
  }

  else
  {
    type metadata accessor for PrelitParameters();
    v2 = swift_allocObject();
    *&v3 = 0xFFFFFFFFLL;
    *(&v3 + 1) = 0xFFFFFFFFLL;
    *(v2 + 16) = v3;
    *(v2 + 32) = 0;
  }

  return v2;
}

uint64_t sub_1AF88BAA0(uint64_t a1)
{
  v2 = *(v1 + 184);

  os_unfair_recursive_lock_lock_with_options();
  sub_1AF6D2A6C(&type metadata for DefaultMaterialInstance);
  if (v3 == 2 || (v3 & 1) == 0)
  {
    os_unfair_recursive_lock_unlock();

    return 0;
  }

  else
  {
    v5 = 32 * v4;
    os_unfair_lock_lock(*(*(v2 + 32) + 32 * v4 + 24));
    os_unfair_recursive_lock_unlock();
    swift_getAtKeyPath();
    os_unfair_lock_unlock(*(*(v2 + 32) + v5 + 24));

    return v7;
  }
}

void sub_1AF88BB90(uint64_t *a1, uint64_t a2, char a3)
{
  v8 = *a1;
  v7 = a1[1];
  v34 = *(a1 + 1);
  v35 = *(a1 + 32);
  v9 = *v3;
  v10 = *v3 + 32;
  v11 = *(*v3 + 16);
  v12 = sub_1AF88D89C(v10, v11, a2);
  if (v13)
  {
    sub_1AF88DAE0(a1, &v37);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1AF4249DC(0, v11 + 1, 1, v9);
    }

    v15 = v9[2];
    v14 = v9[3];
    if (v15 >= v14 >> 1)
    {
      v9 = sub_1AF4249DC(v14 > 1, v15 + 1, 1, v9);
    }

    v9[2] = v15 + 1;
    v16 = &v9[6 * v15];
    v16[4] = v8;
    v16[5] = v7;
    *(v16 + 3) = v34;
    *(v16 + 64) = v35;
    v16[9] = a2;
    *v3 = v9;
  }

  else
  {
    v17 = v12;
    v18 = v10 + 48 * v12;
    if (*(v18 + 40) == a2)
    {
      v19 = a2;
      if (a3)
      {
        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        *&v37 = 0;
        *(&v37 + 1) = 0xE000000000000000;
        sub_1AFDFE218();
        v36 = v37;
        MEMORY[0x1B2718AE0](0x746972777265764FLL, 0xEA00000000002065);
        v20 = *(v18 + 32);
        v21 = *(v18 + 16);
        v37 = *v18;
        v38 = v21;
        v39 = v20;
        sub_1AFDFE458();
        MEMORY[0x1B2718AE0](0x206874697720, 0xE600000000000000);
        v22 = *(a1 + 1);
        v37 = *a1;
        v38 = v22;
        v39 = *(a1 + 32);
        sub_1AFDFE458();
        MEMORY[0x1B2718AE0](544497952, 0xE400000000000000);
        *&v37 = a2;
        v23 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v23);

        v24 = sub_1AFDFDA08();
        if (qword_1ED731058 != -1)
        {
          v33 = v24;
          swift_once();
          v24 = v33;
        }

        *&v37 = 0;
        sub_1AF0D4F18(v24, &v37, v36, *(&v36 + 1));
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1AFC0DB34(v9);
      }

      v25 = &v9[6 * v17];
      v26 = v25[4];
      v27 = v25[5];
      v28 = v25[6];
      v29 = v25[7];
      v30 = *(a1 + 32);
      v31 = *(a1 + 1);
      *(v25 + 2) = *a1;
      *(v25 + 3) = v31;
      v32 = *(v25 + 64);
      *(v25 + 64) = v30;
      sub_1AF88DAE0(a1, &v37);
      sub_1AF88DB90(v26, v27, v28, v29, v32);
      v25[9] = v19;
      *v3 = v9;
    }

    else
    {
      *&v37 = v8;
      *(&v37 + 1) = v7;
      v38 = v34;
      v39 = v35;
      v40 = a2;
      sub_1AF88DAE0(a1, &v36);
      sub_1AF64DBC0(v17, v17, &v37);
      sub_1AF88DB3C(a1);
    }
  }
}

void sub_1AF88BF14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v8 = a4;
  v12 = *v6;
  v13 = *v6 + 32;
  v14 = *(*v6 + 16);
  v15 = sub_1AF88D910(v13, v14, a5);
  if (v16)
  {
    sub_1AF64E4D0(a1, a2, a3, v8);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_1AF424B14(0, v14 + 1, 1, v12);
    }

    v18 = v12[2];
    v17 = v12[3];
    if (v18 >= v17 >> 1)
    {
      v12 = sub_1AF424B14(v17 > 1, v18 + 1, 1, v12);
    }

    v12[2] = v18 + 1;
    v19 = &v12[5 * v18];
    v19[4] = a1;
    v19[5] = a2;
    v19[6] = a3;
    *(v19 + 56) = v8;
    v19[8] = a5;
    *v32 = v12;
  }

  else
  {
    v20 = v15;
    *&v30 = a1;
    *(&v30 + 1) = a2;
    if (*(v13 + 40 * v15 + 32) == a5)
    {
      if (a6)
      {
        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        *&v34 = 0;
        *(&v34 + 1) = 0xE000000000000000;
        sub_1AFDFE218();
        v33 = v34;
        MEMORY[0x1B2718AE0](0x746972777265764FLL, 0xEA00000000002065);
        sub_1AFDFE458();
        MEMORY[0x1B2718AE0](0x206874697720, 0xE600000000000000);
        *(&v34 + 1) = a2;
        v35 = a3;
        v36 = v8;
        sub_1AFDFE458();
        MEMORY[0x1B2718AE0](544497952, 0xE400000000000000);
        *&v34 = a5;
        v21 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v21);

        v22 = sub_1AFDFDA08();
        if (qword_1ED731058 != -1)
        {
          v29 = v22;
          swift_once();
          v22 = v29;
        }

        *&v34 = 0;
        sub_1AF0D4F18(v22, &v34, v33, *(&v33 + 1));
      }

      v23 = v12;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_1AFC0DB48(v12);
      }

      v24 = &v23[5 * v20];
      v25 = v24[4];
      v26 = v24[5];
      v27 = v24[6];
      v24[4] = a1;
      v24[5] = *(&v30 + 1);
      v24[6] = a3;
      v28 = *(v24 + 56);
      *(v24 + 56) = v8;
      sub_1AF64E4D0(a1, *(&v30 + 1), a3, v8);
      sub_1AF88DCFC(v25, v26, v27, v28);
      v24[8] = a5;
      *v32 = v23;
    }

    else
    {
      v34 = v30;
      v35 = a3;
      v36 = v8;
      v37 = a5;
      sub_1AF64E4D0(v30, a2, a3, v8);
      sub_1AF64DDD0(v20, v20, &v34);

      sub_1AF88DCFC(a1, a2, a3, v8);
    }
  }
}

__n128 sub_1AF88C2E0@<Q0>(__int16 a1@<W0>, uint64_t a2@<X8>)
{
  v3 = 0xEC00000067617266;
  v4 = 0x5F656E696C74756FLL;
  v5 = 0x80000001AFF387E0;
  v6 = 0xD000000000000014;
  if ((a1 & 0x4000) == 0)
  {
    v6 = 0x665F74696C657270;
    v5 = 0xEB00000000676172;
  }

  if ((a1 & 0x8000) == 0)
  {
    v4 = v6;
    v3 = v5;
  }

  if ((a1 & 0x800) != 0)
  {
    v7 = 0x665F74696C657270;
  }

  else
  {
    v7 = v4;
  }

  if ((a1 & 0x800) != 0)
  {
    v8 = 0xEB00000000676172;
  }

  else
  {
    v8 = v3;
  }

  sub_1AF8989FC(0x765F74696C657270, 0xEB00000000747265, v7, v8, MEMORY[0x1E69E7CC0], v14);

  nullsub_106();
  v9 = v14[9];
  *(a2 + 128) = v14[8];
  *(a2 + 144) = v9;
  *(a2 + 160) = v14[10];
  v10 = v14[5];
  *(a2 + 64) = v14[4];
  *(a2 + 80) = v10;
  v11 = v14[7];
  *(a2 + 96) = v14[6];
  *(a2 + 112) = v11;
  v12 = v14[1];
  *a2 = v14[0];
  *(a2 + 16) = v12;
  result = v14[3];
  *(a2 + 32) = v14[2];
  *(a2 + 48) = result;
  return result;
}

__n128 sub_1AF88C3EC@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  sub_1AF8989FC(a1, a2, a3, a4, MEMORY[0x1E69E7CC0], v11);
  nullsub_106();
  v6 = v11[9];
  *(a5 + 128) = v11[8];
  *(a5 + 144) = v6;
  *(a5 + 160) = v11[10];
  v7 = v11[5];
  *(a5 + 64) = v11[4];
  *(a5 + 80) = v7;
  v8 = v11[7];
  *(a5 + 96) = v11[6];
  *(a5 + 112) = v8;
  v9 = v11[1];
  *a5 = v11[0];
  *(a5 + 16) = v9;
  result = v11[3];
  *(a5 + 32) = v11[2];
  *(a5 + 48) = result;
  return result;
}

void sub_1AF88C470(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5)
{
  v6 = a1;
  if ((a3 & 1) == 0)
  {
    *(a1 + 53) = 1;
    *(a1 + 56) = a2;
  }

  if (a4 != 2)
  {
    *(a1 + 53) = 1;
    *(a1 + 64) = a4 & 1;
  }

  v7 = *(a5 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v24 = MEMORY[0x1E69E7CC0];
    sub_1AFC077D8(0, v7, 0);
    v9 = v24;
    v10 = (a5 + 48);
    do
    {
      v12 = *(v10 - 2);
      v11 = *(v10 - 1);
      v13 = *v10;
      v14 = *(v24 + 16);
      v15 = *(v24 + 24);

      if (v14 >= v15 >> 1)
      {
        sub_1AFC077D8(v15 > 1, v14 + 1, 1);
      }

      v10 += 3;
      *(v24 + 16) = v14 + 1;
      v16 = v24 + 144 * v14;
      *(v16 + 32) = v12;
      *(v16 + 40) = v11;
      *(v16 + 48) = xmmword_1AFE72A80;
      *(v16 + 72) = 0;
      *(v16 + 80) = 0;
      *(v16 + 64) = 16;
      *(v16 + 88) = 1;
      *(v16 + 92) = *&v23[3];
      *(v16 + 89) = *v23;
      *(v16 + 96) = v13;
      *(v16 + 160) = 0x80;
      --v7;
    }

    while (v7);
    v6 = a1;
    v8 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for CustomParameters();
  v17 = swift_allocObject();
  v18 = sub_1AF9D3CF4(v9);
  v20 = v19;

  v17[2] = v18;
  v17[3] = v20;
  v17[4] = v8;
  v21 = sub_1AF88DD2C(&qword_1EB63FB68, 255, type metadata accessor for CustomParameters, byte_1AFE7EA68);
  swift_unknownObjectRelease();
  *(v6 + 24) = v17;
  *(v6 + 32) = v21;
}

unint64_t sub_1AF88C660()
{
  v1 = v0;
  KeyPath = swift_getKeyPath();
  v3 = sub_1AF88BAA0(KeyPath);
  v5 = v4;

  if ((v5 & 1) != 0 || ((v18 = v3, !HIDWORD(v3)) ? (v6 = v3 == -1) : (v6 = 0), v6))
  {
    sub_1AF892268();
    v8 = v7;
    type metadata accessor for RenderPipelineFactory();
    swift_allocObject();
    v9 = sub_1AF89DCA8(140);
    *(v9 + 88) = sub_1AF891C5C;
    *(v9 + 96) = 0;

    v10 = *(v1 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
    v11 = *v10;
    v12 = *(*v10 + 32);

    ecs_stack_allocator_push_snapshot(v12);
    v13 = ecs_stack_allocator_allocate(*(v11 + 32), 32, 8);
    *v13 = &type metadata for Material;
    v13[1] = &off_1F253F848;
    v13[2] = &type metadata for Name;
    v13[3] = &off_1F2535068;
    v14 = sub_1AF635354(v13, 2uLL, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, v11, 0, v9, -1.0, 0, 1, 0xD000000000000018, 0x80000001AFF38800);

    ecs_stack_allocator_pop_snapshot(*(v11 + 32));

    sub_1AF6879B0(v14, v1, v8);

    v18 = v14;
    MEMORY[0x1EEE9AC00](v15);
    v16 = *(v1 + 184);

    sub_1AF6D655C(&type metadata for DefaultMaterialInstance, &off_1F253FC80, v16, sub_1AF88DD1C);
  }

  return v18;
}

double sub_1AF88C8D0(void *a1, double *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1AF88C8DC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x614D6C616D726F6ELL;
  v4 = 0xE900000000000070;
  v5 = 0x80000001AFF23580;
  if (v2 != 1)
  {
    v3 = 0xD000000000000010;
    v4 = 0x80000001AFF23580;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x70614D726F6C6F63;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  v8 = 0x614D6C616D726F6ELL;
  if (*a2 == 1)
  {
    v5 = 0xE900000000000070;
  }

  else
  {
    v8 = 0xD000000000000010;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x70614D726F6C6F63;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1AFDFEE28();
  }

  return v11 & 1;
}

uint64_t sub_1AF88C9E0()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF88CA8C(uint64_t a1)
{
  sub_1AFDFD038();
}

uint64_t sub_1AF88CB24(uint64_t a1)
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

unint64_t sub_1AF88CBCC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF88D984(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1AF88CBFC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE900000000000070;
  v5 = 0x614D6C616D726F6ELL;
  if (v2 != 1)
  {
    v5 = 0xD000000000000010;
    v4 = 0x80000001AFF23580;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x70614D726F6C6F63;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_1AF88CC64()
{
  v1 = 0x614D6C616D726F6ELL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x70614D726F6C6F63;
  }
}

unint64_t sub_1AF88CCC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF88D984(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AF88CCF0(uint64_t a1)
{
  v2 = sub_1AF88D9D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF88CD2C(uint64_t a1)
{
  v2 = sub_1AF88D9D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF88CD68(void *a1)
{
  v3 = v1;
  sub_1AF88DA24(0, &unk_1EB63FBF0, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AF88D9D0();
  sub_1AFDFF3F8();
  v12 = *(v3 + 16);
  HIBYTE(v11) = 0;
  sub_1AF480018();
  sub_1AFDFE918();
  if (!v2)
  {
    v12 = *(v3 + 24);
    HIBYTE(v11) = 1;
    sub_1AFDFE918();
    LOBYTE(v12) = 2;
    sub_1AFDFE8C8();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1AF88CF24(void *a1)
{
  v3 = v1;
  sub_1AF88DA24(0, &qword_1EB63FBD8, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  *&v10 = 0xFFFFFFFFLL;
  *(&v10 + 1) = 0xFFFFFFFFLL;
  *(v1 + 16) = v10;
  *(v1 + 32) = 0;
  sub_1AF441150(a1, a1[3]);
  sub_1AF88D9D0();
  sub_1AFDFF3B8();
  if (v2)
  {
  }

  else
  {
    v14 = 0;
    sub_1AF47FEB4();
    sub_1AFDFE768();
    *(v1 + 16) = v15;
    v14 = 1;
    sub_1AFDFE768();
    *(v1 + 24) = v15;
    LOBYTE(v15) = 2;
    v12 = sub_1AFDFE718();
    (*(v7 + 8))(v9, v6);
    *(v3 + 32) = v12 & 1;
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v3;
}

uint64_t sub_1AF88D184@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_1AF88CF24(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1AF88D200(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  if (a4)
  {
    v6 = *(*(result + 8) + 192);
    if (v6)
    {
      v7 = v5;
      v11 = *(a4 + 16);
      swift_getObjectType();
      v12 = v11;
      swift_unknownObjectRetain();

      v13 = [v6 encodedLength];
      BufferWithLength = CFXGPUDeviceCreateBufferWithLength(v12, v13, 0);
      if (BufferWithLength)
      {
        v15 = BufferWithLength;
        v27 = a2;
        v16 = sub_1AFDFCEC8();
        [v15 setLabel_];

        sub_1AF471BB8(v15, 0, v13, 0);
        v17 = sub_1AF8D93C8(*(v7 + 16), &v30, a3, a4);
        v18 = sub_1AF8D93C8(*(v7 + 24), &v30, a3, a4);
        sub_1AF471CAC(v17, 100);
        sub_1AF471CAC(v18, 104);
        v19 = sub_1AF67CACC(&type metadata for MovieFileAsset, &off_1F256EBE8, *(v7 + 16)) || sub_1AF67CACC(&type metadata for MovieFileAsset, &off_1F256EBE8, *(v7 + 24));
        *(v27 + 209) = v19;
        v30 = v15;
        v31 = 0;
        v32 = v13;
        v33 = 0;
        v34 = 0;
        sub_1AF88BB90(&v30, 2, 0);
        v28[4] = v17;
        v28[5] = v18;
        v22 = MEMORY[0x1E69E7CC0];
        v29 = MEMORY[0x1E69E7CC0];
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        for (i = 0; i != 2; ++i)
        {
          if (v28[i + 4])
          {
            v25 = swift_unknownObjectRetain();
            MEMORY[0x1B2718E00](v25);
            if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1AFDFD458();
            }

            sub_1AFDFD4B8();
            v22 = v29;
          }
        }

        sub_1AF88DA88(0);
        swift_arrayDestroy();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        *(v27 + 136) = v22;
      }

      else
      {
        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        v31 = 0xE000000000000000;
        sub_1AFDFE218();
        MEMORY[0x1B2718AE0](0xD00000000000001DLL, 0x80000001AFF290F0);
        MEMORY[0x1B2718AE0](4271950, 0xE300000000000000);
        MEMORY[0x1B2718AE0](0x6E656C20666F2022, 0xEC00000020687467);
        v20 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v20);

        MEMORY[0x1B2718AE0](0x706F206874697720, 0xEE0020736E6F6974);
        v29 = 0;
        type metadata accessor for MTLResourceOptions(0);
        sub_1AFDFE458();
        v21 = sub_1AFDFDA08();
        if (qword_1ED731058 != -1)
        {
          v26 = v21;
          swift_once();
          v21 = v26;
        }

        v30 = 0;
        sub_1AF0D4F18(v21, &v30, 0, 0xE000000000000000);

        swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_1AF88D67C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  sub_1AF62BFF0(*(v2 + 16), 0, ObjectType, a2);
  v7 = v6;
  v8 = HIDWORD(v6);
  sub_1AF62BFF0(*(v2 + 24), 0, ObjectType, a2);
  v10 = v9;
  v11 = HIDWORD(v9);
  LOBYTE(v3) = *(v3 + 32);
  result = swift_allocObject();
  *(result + 16) = v7;
  *(result + 20) = v8;
  *(result + 24) = v10;
  *(result + 28) = v11;
  *(result + 32) = v3;
  return result;
}

BOOL sub_1AF88D74C(uint64_t a1)
{
  if (v1[4] == a1 && v1[5] == HIDWORD(a1))
  {
    return 1;
  }

  if (v1[6] == a1)
  {
    return v1[7] == HIDWORD(a1);
  }

  return 0;
}

uint64_t sub_1AF88D78C@<X0>(uint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = sub_1AF6C97E0(*(*v2 + 16));
  v6 = v5;
  v7 = HIDWORD(v5);
  v8 = sub_1AF6C97E0(*(v4 + 24));
  v9 = v8;
  v10 = HIDWORD(v8);
  LOBYTE(v4) = *(v4 + 32);
  result = swift_allocObject();
  *(result + 16) = v6;
  *(result + 20) = v7;
  *(result + 24) = v9;
  *(result + 28) = v10;
  *(result + 32) = v4;
  *a2 = result;
  return result;
}

uint64_t sub_1AF88D818(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_1AF88DD2C(&qword_1EB63FBC8, a2, type metadata accessor for PrelitParameters, byte_1AFE7D4A8);
  result = sub_1AF88DD2C(&qword_1EB63FBD0, v3, type metadata accessor for PrelitParameters, asc_1AFE7D480);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1AF88D89C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2 - 1;
  if (a2 - 1 >= 0)
  {
    result = 0;
    do
    {
      v6 = result + (v3 - result) / 2;
      v7 = *(a1 + 48 * v6 + 40);
      if (v7 < a3)
      {
        result = v6 + 1;
      }

      else
      {
        if (v7 <= a3)
        {
          result += (v3 - result) / 2;
          return result;
        }

        v3 = v6 - 1;
      }
    }

    while (v3 >= result);
    if (result < a2)
    {
      return result;
    }
  }

  return 0;
}

uint64_t sub_1AF88D910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2 - 1;
  if (a2 - 1 >= 0)
  {
    result = 0;
    do
    {
      v6 = result + (v3 - result) / 2;
      v7 = *(a1 + 40 * v6 + 32);
      if (v7 < a3)
      {
        result = v6 + 1;
      }

      else
      {
        if (v7 <= a3)
        {
          result += (v3 - result) / 2;
          return result;
        }

        v3 = v6 - 1;
      }
    }

    while (v3 >= result);
    if (result < a2)
    {
      return result;
    }
  }

  return 0;
}

unint64_t sub_1AF88D984(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AFDFE638();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1AF88D9D0()
{
  result = qword_1EB63FBE0;
  if (!qword_1EB63FBE0)
  {
    result = swift_getWitnessTable(aU_39, &type metadata for PrelitParameters.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63FBE0);
  }

  return result;
}

void sub_1AF88DA24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AF88D9D0();
    v7 = a3(a1, &type metadata for PrelitParameters.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1AF88DA88(uint64_t a1)
{
  if (!qword_1EB630D50)
  {
    sub_1AF64E46C();
    v1 = sub_1AFDFDD58();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB630D50);
    }
  }
}

void sub_1AF88DB90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if ((a5 >> 6) > 1u)
  {
    if (a5 >> 6 != 2)
    {

      return;
    }

LABEL_5:
    swift_unknownObjectRelease();
    return;
  }

  if (!(a5 >> 6))
  {
    goto LABEL_5;
  }
}

double sub_1AF88DBB8()
{
  sub_1AF88DCAC();
  v1 = swift_allocObject();
  v2 = *(v0 + 32);
  *(v1 + 16) = xmmword_1AFE4C6B0;
  *(v1 + 32) = xmmword_1AFE7D3E0;
  *(v1 + 48) = 0;
  *(v1 + 64) = v2;
  *(v1 + 128) = 13;
  v3 = *(v0 + 16) != -1 || *(v0 + 20) != 0;
  *(v1 + 144) = xmmword_1AFE7D3F0;
  *(v1 + 160) = 0;
  *(v1 + 176) = v3;
  *(v1 + 240) = 13;
  v4 = *(v0 + 24) != -1 || *(v0 + 28) != 0;
  *(v1 + 256) = xmmword_1AFE7D400;
  *(v1 + 272) = 0;
  *(v1 + 288) = v4;
  *(v1 + 352) = 13;
  *&result = 20073;
  *(v1 + 368) = xmmword_1AFE7D410;
  *(v1 + 384) = 0;
  *(v1 + 400) = 0;
  *(v1 + 464) = 13;
  return result;
}

void sub_1AF88DCAC()
{
  if (!qword_1ED730B70)
  {
    v0 = sub_1AFDFEA18();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED730B70);
    }
  }
}

void sub_1AF88DCFC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {
  }

  else if (!a4)
  {
    swift_unknownObjectRelease();
  }
}

double sub_1AF88DD1C(void *a1)
{
  v2 = *(v1 + 16);
  result = *v2;
  *a1 = *v2;
  return result;
}

uint64_t sub_1AF88DD2C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = a3(a2);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AF88DD98()
{
  result = qword_1EB63FC00;
  if (!qword_1EB63FC00)
  {
    result = swift_getWitnessTable(aM_36, &type metadata for PrelitParameters.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63FC00);
  }

  return result;
}

unint64_t sub_1AF88DDF0()
{
  result = qword_1EB63FC08;
  if (!qword_1EB63FC08)
  {
    result = swift_getWitnessTable(byte_1AFE7D514, &type metadata for PrelitParameters.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63FC08);
  }

  return result;
}

unint64_t sub_1AF88DE48()
{
  result = qword_1EB63FC10[0];
  if (!qword_1EB63FC10[0])
  {
    result = swift_getWitnessTable(byte_1AFE7D53C, &type metadata for PrelitParameters.CodingKeys, v0, v1);
    atomic_store(result, qword_1EB63FC10);
  }

  return result;
}

double destroy for RenderStates(void *a1)
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_1AF88DED8(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return a1;
}

uint64_t *assignWithCopy for RenderStates(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  a1[1] = a2[1];
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t assignWithTake for RenderStates(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRelease();
  *a1 = *a2;
  swift_unknownObjectRelease();
  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t destroy for MaterialRuntime(uint64_t a1)
{
}

uint64_t initializeWithCopy for MaterialRuntime(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = a2[3];
  *(a1 + 16) = a2[2];
  *(a1 + 24) = v4;
  v5 = a2[5];
  *(a1 + 32) = a2[4];
  *(a1 + 40) = v5;
  v6 = a2[7];
  *(a1 + 48) = a2[6];
  *(a1 + 56) = v6;
  v7 = a2[9];
  *(a1 + 64) = a2[8];
  *(a1 + 72) = v7;
  v14 = a2[11];
  *(a1 + 80) = a2[10];
  *(a1 + 88) = v14;
  v8 = a2[13];
  *(a1 + 96) = a2[12];
  *(a1 + 104) = v8;
  v9 = a2[15];
  *(a1 + 112) = a2[14];
  *(a1 + 120) = v9;
  *(a1 + 128) = *(a2 + 32);
  v10 = a2[18];
  *(a1 + 136) = a2[17];
  *(a1 + 144) = v10;
  *(a1 + 152) = *(a2 + 19);
  *(a1 + 168) = a2[21];
  v11 = *(a2 + 12);
  *(a1 + 176) = *(a2 + 11);
  *(a1 + 192) = v11;
  *(a1 + 208) = *(a2 + 52);
  *(a1 + 216) = *(a2 + 27);
  *(a1 + 232) = a2[29];

  v12 = v4;

  return a1;
}

uint64_t *assignWithCopy for MaterialRuntime(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];

  v4 = a1[3];
  v5 = a2[3];
  a1[3] = v5;
  v6 = v5;

  a1[4] = a2[4];

  a1[5] = a2[5];

  a1[6] = a2[6];

  a1[7] = a2[7];

  a1[8] = a2[8];

  a1[9] = a2[9];

  a1[10] = a2[10];

  a1[11] = a2[11];

  a1[12] = a2[12];

  a1[13] = a2[13];

  a1[14] = a2[14];

  a1[15] = a2[15];

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 65) = *(a2 + 65);
  a1[17] = a2[17];

  a1[18] = a2[18];
  *(a1 + 19) = *(a2 + 19);
  a1[21] = a2[21];

  a1[22] = a2[22];
  a1[23] = a2[23];
  a1[24] = a2[24];
  a1[25] = a2[25];
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 209) = *(a2 + 209);
  *(a1 + 210) = *(a2 + 210);
  *(a1 + 211) = *(a2 + 211);
  a1[27] = a2[27];
  a1[28] = a2[28];
  a1[29] = a2[29];
  return a1;
}

__n128 initializeWithTake for MaterialRuntime(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[14];
  *(a1 + 208) = a2[13];
  *(a1 + 224) = v12;
  *(a1 + 176) = result;
  *(a1 + 192) = v11;
  return result;
}

uint64_t assignWithTake for MaterialRuntime(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  v4 = *(a1 + 24);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 64) = *(a2 + 64);

  *(a1 + 80) = *(a2 + 80);

  *(a1 + 96) = *(a2 + 96);

  *(a1 + 112) = *(a2 + 112);

  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);

  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);

  v5 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v5;
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 209) = *(a2 + 209);
  *(a1 + 210) = *(a2 + 210);
  *(a1 + 211) = *(a2 + 211);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 232) = *(a2 + 232);
  return a1;
}

uint64_t getEnumTagSinglePayload for MaterialRuntime(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 240))
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

uint64_t storeEnumTagSinglePayload for MaterialRuntime(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
    *(result + 216) = 0u;
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
      *(result + 240) = 1;
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

    *(result + 240) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1AF88E6D8@<Q0>(uint64_t a2@<X8>)
{
  sub_1AF88E91C(v10);
  v3 = v10[13];
  *(a2 + 192) = v10[12];
  *(a2 + 208) = v3;
  *(a2 + 224) = v10[14];
  v4 = v10[9];
  *(a2 + 128) = v10[8];
  *(a2 + 144) = v4;
  v5 = v10[11];
  *(a2 + 160) = v10[10];
  *(a2 + 176) = v5;
  v6 = v10[5];
  *(a2 + 64) = v10[4];
  *(a2 + 80) = v6;
  v7 = v10[7];
  *(a2 + 96) = v10[6];
  *(a2 + 112) = v7;
  v8 = v10[1];
  *a2 = v10[0];
  *(a2 + 16) = v8;
  result = v10[3];
  *(a2 + 32) = v10[2];
  *(a2 + 48) = result;
  return result;
}

double sub_1AF88E748(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v7 = v6;
  if (a4)
  {
    v11 = *a1;
    if (!*(*a1 + 16))
    {
      return result;
    }

    v12 = sub_1AF449CB8(a3);
    if ((v14 & 1) == 0)
    {
      return result;
    }

    v15 = *(*(v11 + 56) + 8 * v12);
    if (!*(v15 + 16))
    {
      return result;
    }
  }

  else
  {
    v15 = a1[1];
    if (!*(v15 + 16))
    {
      return result;
    }
  }

  v16 = *(a2 + 16);
  *&v28[4] = *a2;
  *&v28[20] = v16;
  *&v28[84] = *(a2 + 80);
  v17 = *(a2 + 48);
  *&v28[68] = *(a2 + 64);
  v18 = *(a2 + 32);
  *&v28[52] = v17;
  *&v28[36] = v18;
  v30 = 0;
  v32 = *&v28[16];
  v31 = *v28;
  *&v35[12] = *&v28[76];
  *v35 = *&v28[64];
  v34 = *&v28[48];
  v33 = *&v28[32];
  v19 = sub_1AF419A14(&v30);
  if (v20)
  {
    v21 = (*(v15 + 56) + 24 * v19);
    v22 = *v21;
    v23 = v21[1];
    v24 = a1[25];
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    [v7 setCullMode_];
    [v7 setFrontFacingWinding_];
    [v7 setDepthStencilState_];
    [v7 setRenderPipelineState_];
    v25 = *(a1 + 7);
    *&v28[64] = *(a1 + 6);
    *&v28[80] = v25;
    v29 = *(a1 + 8);
    v26 = *(a1 + 3);
    *v28 = *(a1 + 2);
    *&v28[16] = v26;
    v27 = *(a1 + 5);
    *&v28[32] = *(a1 + 4);
    *&v28[48] = v27;
    sub_1AFB488A0(v28, v7, a5, 3);
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
  }

  return result;
}

double sub_1AF88E91C@<D0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  v3 = sub_1AF42C5F8(MEMORY[0x1E69E7CC0]);
  v4 = sub_1AF42C624(v2);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = v2;
  *(a1 + 40) = v2;
  *(a1 + 48) = v2;
  *(a1 + 56) = v2;
  *(a1 + 64) = v2;
  *(a1 + 72) = v2;
  *(a1 + 80) = v2;
  *(a1 + 88) = v2;
  *(a1 + 96) = v2;
  *(a1 + 104) = v2;
  *(a1 + 112) = v2;
  *(a1 + 120) = v2;
  *(a1 + 128) = 0;
  *(a1 + 136) = v2;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 168) = &unk_1F24F3AB8;
  *&result = 1;
  *(a1 + 192) = xmmword_1AFE431C0;
  *(a1 + 208) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 216) = 0;
  return result;
}

uint64_t sub_1AF88EA88(void *a1, uint64_t a2)
{
  sub_1AF893704(0, &unk_1EB63FCA8, sub_1AF8936B0, &type metadata for TextureSampler.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11[-v8];
  sub_1AF441150(a1, a1[3]);
  sub_1AF8936B0();
  sub_1AFDFF3F8();
  v11[31] = a2 & 1;
  v11[30] = 0;
  sub_1AF51DB6C();
  sub_1AFDFE918();
  if (!v2)
  {
    v11[29] = BYTE1(a2) & 1;
    v11[28] = 1;
    sub_1AFDFE918();
    v11[27] = BYTE2(a2);
    v11[26] = 2;
    sub_1AF51DA98();
    sub_1AFDFE918();
    v11[25] = BYTE3(a2);
    v11[24] = 3;
    sub_1AF51DC40();
    sub_1AFDFE918();
    v11[15] = BYTE4(a2);
    v11[14] = 4;
    sub_1AFDFE918();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1AF88ED1C()
{
  v1 = *v0;
  v2 = 0x65746C694667616DLL;
  v3 = 0x65746C694670696DLL;
  v4 = 0x5370617277;
  if (v1 != 3)
  {
    v4 = 0x5470617277;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x65746C69466E696DLL;
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

uint64_t sub_1AF88EDB0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1AF892020(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1AF88EDD8(uint64_t a1)
{
  v2 = sub_1AF8936B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF88EE14(uint64_t a1)
{
  v2 = sub_1AF8936B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF88EE50@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1AF8924D8(a2);
  if (!v2)
  {
    *a1 = result & 1;
    a1[1] = BYTE1(result) & 1;
    a1[2] = BYTE2(result);
    a1[3] = BYTE3(result);
    a1[4] = BYTE4(result);
  }

  return result;
}

uint64_t sub_1AF88EEA0(void *a1)
{
  v2 = 256;
  if (!v1[1])
  {
    v2 = 0;
  }

  return sub_1AF88EA88(a1, v2 | *v1 | (v1[2] << 16) | (v1[3] << 24) | (v1[4] << 32));
}

unint64_t sub_1AF88EEF4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF8921D0(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1AF88EF24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF8921D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AF88EF4C(uint64_t a1)
{
  v2 = sub_1AF892F9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF88EF88(uint64_t a1)
{
  v2 = sub_1AF892F9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF88EFC4(void *a1, unint64_t a2, uint64_t a3, __n128 a4, __n128 a5)
{
  v14 = a5;
  v15 = a2;
  v16 = a4;
  sub_1AF893704(0, &qword_1EB63FC68, sub_1AF892F9C, &type metadata for PBRColorProperty.CodingKeys, MEMORY[0x1E69E6F58]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v14 - v11;
  sub_1AF441150(a1, a1[3]);
  sub_1AF892F9C();
  sub_1AFDFF3F8();
  v17 = v16;
  v18 = 0;
  sub_1AF893704(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
  sub_1AF892ECC(&qword_1ED72F710, MEMORY[0x1E69E74B0]);
  sub_1AFDFE918();
  if (!v5)
  {
    v17.n128_u64[0] = v15;
    v18 = 1;
    sub_1AF480018();
    sub_1AFDFE918();
    v17.n128_u16[0] = a3 & 0x101;
    v17.n128_u8[2] = BYTE2(a3);
    v17.n128_u8[3] = BYTE3(a3);
    v17.n128_u8[4] = BYTE4(a3);
    v18 = 2;
    sub_1AF892F48();
    sub_1AFDFE918();
    v17 = v14;
    v18 = 3;
    sub_1AFDFE918();
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1AF88F290@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1AF8927C8(a2);
  if (!v2)
  {
    *a1 = v6;
    *(a1 + 16) = result;
    *(a1 + 24) = v5 & 1;
    *(a1 + 25) = BYTE1(v5) & 1;
    *(a1 + 26) = BYTE2(v5);
    *(a1 + 27) = BYTE3(v5);
    *(a1 + 28) = BYTE4(v5);
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_1AF88F2F0(void *a1)
{
  v2 = 256;
  if ((v1[1].n128_u8[9] & 1) == 0)
  {
    v2 = 0;
  }

  return sub_1AF88EFC4(a1, v1[1].n128_u64[0], v2 & 0xFFFFFFFFFFFFFFFELL | v1[1].n128_u8[8] & 1 | (v1[1].n128_u8[10] << 16) | (v1[1].n128_u8[11] << 24) | (v1[1].n128_u8[12] << 32), *v1, v1[2]);
}

void sub_1AF88F38C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_1AF88F344(*v3, a1, a2, v3[1].n128_i64[0]);
  *(a3 + 16) = v5;
  *(a3 + 24) = v6;
  *(a3 + 32) = v7;
}

uint64_t sub_1AF88F3F8()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF88F4C0(uint64_t a1)
{
  sub_1AFDFD038();
}

uint64_t sub_1AF88F570(uint64_t a1)
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

unint64_t sub_1AF88F634@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF89221C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1AF88F664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF89221C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AF88F68C(uint64_t a1)
{
  v2 = sub_1AF892E24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF88F6C8(uint64_t a1)
{
  v2 = sub_1AF892E24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF88F704(void *a1, unint64_t a2, uint64_t a3, float a4, __n128 a5)
{
  v14 = a5;
  v15 = a2;
  sub_1AF893704(0, &unk_1EB63FC48, sub_1AF892E24, &type metadata for PBRScalarProperty.CodingKeys, MEMORY[0x1E69E6F58]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v14 - v11;
  sub_1AF441150(a1, a1[3]);
  sub_1AF892E24();
  sub_1AFDFF3F8();
  v16.n128_u8[0] = 0;
  sub_1AFDFE8E8();
  if (!v5)
  {
    v16.n128_u64[0] = v15;
    v17 = 1;
    sub_1AF480018();
    sub_1AFDFE918();
    v16.n128_u16[0] = a3 & 0x101;
    v16.n128_u8[2] = BYTE2(a3);
    v16.n128_u8[3] = BYTE3(a3);
    v16.n128_u8[4] = BYTE4(a3);
    v17 = 2;
    sub_1AF892F48();
    sub_1AFDFE918();
    v16 = v14;
    v17 = 3;
    sub_1AF893704(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
    sub_1AF892ECC(&qword_1ED72F710, MEMORY[0x1E69E74B0]);
    sub_1AFDFE918();
  }

  return (*(v10 + 8))(v12, v9);
}

void sub_1AF88F9C4(uint64_t a1@<X8>, void *a2@<X0>)
{
  v6 = sub_1AF892B04(a2);
  if (!v2)
  {
    *a1 = v4;
    *(a1 + 8) = v5 & 1;
    *(a1 + 9) = BYTE1(v5) & 1;
    *(a1 + 10) = BYTE2(v5);
    *(a1 + 11) = BYTE3(v5);
    *(a1 + 12) = BYTE4(v5);
    *(a1 + 16) = v6;
    *(a1 + 32) = v7;
  }
}

uint64_t sub_1AF88FA24(void *a1)
{
  v2 = 256;
  if ((v1->n128_u8[9] & 1) == 0)
  {
    v2 = 0;
  }

  return sub_1AF88F704(a1, v1->n128_u64[0], v2 & 0xFFFFFFFFFFFFFFFELL | v1->n128_u8[8] & 1 | (v1->n128_u8[10] << 16) | (v1->n128_u8[11] << 24) | (v1->n128_u8[12] << 32), v1[1].n128_f32[0], v1[2]);
}

__n128 sub_1AF88FA78@<Q0>(__n128 *a1@<X8>)
{
  v3 = v1->n128_u8[8];
  v4 = v1->n128_u8[9];
  v5 = v1->n128_u16[5];
  v6 = v1->n128_u8[12];
  v7 = v1[1].n128_u32[0];
  v9 = v1[2];
  a1->n128_u64[0] = sub_1AF6C97E0(v1->n128_u64[0]);
  a1->n128_u8[8] = v3;
  a1->n128_u8[9] = v4;
  a1->n128_u16[5] = v5;
  a1->n128_u8[12] = v6;
  a1[1].n128_u32[0] = v7;
  result = v9;
  a1[2] = v9;
  return result;
}

unint64_t sub_1AF88FB14()
{
  v1 = *v0;
  v2 = 0x6F6465626C61;
  v3 = 0xD00000000000001ALL;
  if (v1 != 6)
  {
    v3 = 0x656C62756F447369;
  }

  v4 = 0x6F6973756C63636FLL;
  if (v1 != 4)
  {
    v4 = 0x6C616D726F6ELL;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x73656E6867756F72;
  if (v1 != 2)
  {
    v5 = 0x73656E6C6174656DLL;
  }

  if (*v0)
  {
    v2 = 0x6576697373696D65;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1AF88FC28@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1AF891D78(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1AF88FC50(uint64_t a1)
{
  v2 = sub_1AF8922D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF88FC8C(uint64_t a1)
{
  v2 = sub_1AF8922D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t getEnumTagSinglePayload for PBRScalarProperty(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 48))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PBRScalarProperty(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PBRColorProperty(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 48))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PBRColorProperty(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1AF88FE44(void *a1)
{
  v2 = v1;
  sub_1AF893704(0, &qword_1EB63FC28, sub_1AF8922D0, &type metadata for PBRParameters.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17[-v7];
  sub_1AF441150(a1, a1[3]);
  sub_1AF8922D0();
  sub_1AFDFF3F8();
  v9 = v2[2];
  v36[0] = v2[1];
  v36[1] = v9;
  v36[2] = v2[3];
  v35 = 0;
  sub_1AF8923CC();
  v10 = v37;
  sub_1AFDFE918();
  if (!v10)
  {
    v11 = v2[5];
    v34[0] = v2[4];
    v34[1] = v11;
    v34[2] = v2[6];
    v33 = 1;
    sub_1AFDFE918();
    v12 = v2[8];
    v30 = v2[7];
    v31 = v12;
    v32 = v2[9];
    v29 = 2;
    sub_1AF892420();
    sub_1AFDFE918();
    v13 = v2[11];
    v26 = v2[10];
    v27 = v13;
    v28 = v2[12];
    v25 = 3;
    sub_1AFDFE918();
    v14 = v2[14];
    v22 = v2[13];
    v23 = v14;
    v24 = v2[15];
    v21 = 4;
    sub_1AFDFE918();
    v15 = v2[17];
    v18 = v2[16];
    v19 = v15;
    v20 = v2[18];
    v17[15] = 5;
    sub_1AFDFE918();
    LOBYTE(v18) = 6;
    sub_1AFDFE8C8();
    LOBYTE(v18) = 7;
    sub_1AFDFE8C8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1AF890178(void *a1)
{
  v2 = v1;
  sub_1AF893704(0, &qword_1EB630B28, sub_1AF8922D0, &type metadata for PBRParameters.CodingKeys, MEMORY[0x1E69E6F48]);
  v32 = v4;
  v30 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v26 - v5;
  v34 = v2;
  *(v2 + 64) = 0u;
  v7 = v2 + 64;
  *(v7 - 48) = 0u;
  v29 = (v7 - 48);
  *(v7 - 32) = 0xFFFFFFFFLL;
  *(v7 - 24) = 16777473;
  *(v7 - 20) = 1;
  *(v7 - 16) = xmmword_1AFE20670;
  *(v7 + 16) = 0xFFFFFFFFLL;
  *(v7 + 24) = 16777473;
  *(v7 + 28) = 1;
  *(v7 + 32) = xmmword_1AFE20670;
  *(v7 + 48) = 0xFFFFFFFFLL;
  v28 = (v7 + 48);
  *(v7 + 56) = 16777473;
  *(v7 + 60) = 1;
  *(v7 + 64) = 0;
  *(v7 + 80) = xmmword_1AFE20670;
  *(v7 + 96) = 0xFFFFFFFFLL;
  v8 = (v7 + 96);
  *(v7 + 104) = 16777473;
  *(v7 + 108) = 1;
  *(v7 + 112) = 0;
  *(v7 + 144) = 0xFFFFFFFFLL;
  *(v7 + 128) = xmmword_1AFE20670;
  *(v7 + 152) = 16777473;
  *(v7 + 156) = 1;
  *(v7 + 160) = 1065353216;
  *(v7 + 176) = xmmword_1AFE20670;
  *(v7 + 192) = 0xFFFFFFFFLL;
  *(v7 + 200) = 16777473;
  *(v7 + 204) = 1;
  *(v7 + 205) = v58;
  *(v7 + 207) = v59;
  *(v7 + 208) = 1065353216;
  *(v7 + 212) = v56;
  *(v7 + 220) = v57;
  *(v7 + 224) = xmmword_1AFE20670;
  *(v7 + 240) = 0;
  v9 = a1[3];
  v60 = a1;
  sub_1AF441150(a1, v9);
  sub_1AF8922D0();
  v31 = v6;
  v10 = v33;
  sub_1AFDFF3B8();
  if (v10)
  {
    v11 = v34;
  }

  else
  {
    v12 = v29;
    v33 = (v7 + 144);
    v27 = (v7 + 192);
    v13 = v34;
    v54 = 0;
    sub_1AF892324();
    sub_1AFDFE768();
    v14 = v55[1];
    *v12 = v55[0];
    v12[1] = v14;
    v12[2] = v55[2];
    v52 = 1;
    sub_1AFDFE768();
    v15 = v53[1];
    *v7 = v53[0];
    *(v7 + 16) = v15;
    *(v7 + 32) = v53[2];
    v48 = 2;
    sub_1AF892378();
    sub_1AFDFE768();
    v17 = v50;
    v18 = v28;
    *v28 = v49;
    v18[1] = v17;
    v18[2] = v51;
    v44 = 3;
    sub_1AFDFE768();
    v11 = v13;
    v19 = v46;
    *v8 = v45;
    v8[1] = v19;
    v8[2] = v47;
    v40 = 4;
    sub_1AFDFE768();
    v20 = v30;
    v21 = v42;
    v22 = v33;
    *v33 = v41;
    v22[1] = v21;
    v22[2] = v43;
    v36 = 5;
    sub_1AFDFE768();
    v23 = v38;
    v24 = v27;
    *v27 = v37;
    v24[1] = v23;
    v24[2] = v39;
    v35 = 6;
    *(v11 + 304) = sub_1AFDFE718() & 1;
    v35 = 7;
    v25 = sub_1AFDFE718();
    (*(v20 + 8))(v31, v32);
    *(v11 + 305) = v25 & 1;
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v60);
  return v11;
}

uint64_t sub_1AF890638@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_1AF890178(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

double sub_1AF8906B4(uint64_t a1)
{
  sub_1AF8932F0(0, &qword_1ED730B70, &type metadata for FunctionConstant, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE4C6A0;
  *(v3 + 32) = xmmword_1AFE7D750;
  *(v3 + 48) = 0;
  v4 = 1;
  *(v3 + 64) = 1;
  *(v3 + 128) = 13;
  v5 = *(v1 + 304);
  *(v3 + 144) = xmmword_1AFE7D760;
  *(v3 + 160) = 0;
  *(v3 + 176) = v5;
  *(v3 + 240) = 13;
  if (*(v1 + 208) == -1)
  {
    v4 = *(v1 + 212) != 0;
  }

  *(v3 + 256) = xmmword_1AFE7D770;
  *(v3 + 272) = 0;
  *(v3 + 288) = v4;
  *(v3 + 352) = 13;
  v6 = *(a1 + 44);
  v7 = *(a1 + 40) == 0;
  *(v3 + 368) = xmmword_1AFE7D780;
  *(v3 + 384) = 0;
  *(v3 + 400) = v6 & v7;
  *(v3 + 464) = 13;
  v8 = *(v1 + 305);
  *&result = 20053;
  *(v3 + 480) = xmmword_1AFE7D790;
  *(v3 + 496) = 0;
  *(v3 + 512) = v8;
  *(v3 + 576) = 13;
  return result;
}

__n128 sub_1AF8907E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v61 = *(v2 + 16);
  v5 = *(v2 + 32);
  v32 = *(v2 + 41);
  v33 = *(v2 + 40);
  v30 = *(v2 + 44);
  v31 = *(v2 + 42);
  v60 = *(v2 + 48);
  ObjectType = swift_getObjectType();
  sub_1AF62BFF0(v5, 0, ObjectType, a2);
  v8 = v7;
  v26 = HIDWORD(v7);
  v34 = *(v2 + 88);
  v35 = *(v2 + 89);
  v52 = *(v2 + 92);
  v53 = *(v2 + 90);
  v54 = *(v2 + 64);
  v55 = *(v2 + 96);
  sub_1AF62BFF0(*(v2 + 80), 0, ObjectType, a2);
  v10 = v9;
  v11 = HIDWORD(v9);
  v38 = *(v2 + 121);
  v39 = *(v2 + 120);
  v36 = *(v2 + 124);
  v37 = *(v2 + 122);
  v12 = *(v2 + 128);
  v56 = *(v2 + 144);
  sub_1AF62BFF0(*(v2 + 112), 0, ObjectType, a2);
  v14 = v13;
  v27 = HIDWORD(v13);
  v42 = *(v2 + 169);
  v43 = *(v2 + 168);
  v40 = *(v2 + 172);
  v41 = *(v2 + 170);
  v15 = *(v2 + 176);
  v57 = *(v2 + 192);
  sub_1AF62BFF0(*(v2 + 160), 0, ObjectType, a2);
  v17 = v16;
  v28 = HIDWORD(v16);
  v46 = *(v2 + 217);
  v47 = *(v2 + 216);
  v44 = *(v2 + 220);
  v45 = *(v2 + 218);
  v18 = *(v2 + 224);
  v58 = *(v2 + 240);
  sub_1AF62BFF0(*(v2 + 208), 0, ObjectType, a2);
  LODWORD(v5) = v19;
  v29 = HIDWORD(v19);
  v50 = *(v2 + 265);
  v51 = *(v2 + 264);
  v48 = *(v2 + 268);
  v49 = *(v2 + 266);
  v20 = *(v2 + 272);
  v59 = *(v2 + 288);
  sub_1AF62BFF0(*(v2 + 256), 0, ObjectType, a2);
  v22 = v21;
  v23 = HIDWORD(v21);
  LOBYTE(a2) = *(v3 + 304);
  LOBYTE(v3) = *(v3 + 305);
  v24 = swift_allocObject();
  *(v24 + 32) = v8;
  *(v24 + 36) = v26;
  *(v24 + 40) = v33;
  *(v24 + 41) = v32;
  *(v24 + 42) = v31;
  *(v24 + 44) = v30;
  *(v24 + 80) = v10;
  *(v24 + 84) = v11;
  *(v24 + 45) = v62;
  *(v24 + 47) = v63;
  *(v24 + 88) = v34;
  *(v24 + 89) = v35;
  *(v24 + 16) = v61;
  *(v24 + 48) = v60;
  *(v24 + 64) = v54;
  *(v24 + 90) = v53;
  *(v24 + 92) = v52;
  *(v24 + 95) = v65;
  *(v24 + 93) = v64;
  *(v24 + 96) = v55;
  *(v24 + 112) = v14;
  *(v24 + 116) = v27;
  *(v24 + 120) = v39;
  *(v24 + 121) = v38;
  *(v24 + 122) = v37;
  *(v24 + 124) = v36;
  *(v24 + 127) = v69;
  *(v24 + 125) = v68;
  *(v24 + 128) = v12;
  *(v24 + 140) = v67;
  *(v24 + 132) = v66;
  *(v24 + 144) = v56;
  *(v24 + 160) = v17;
  *(v24 + 164) = v28;
  *(v24 + 168) = v43;
  *(v24 + 169) = v42;
  *(v24 + 170) = v41;
  *(v24 + 172) = v40;
  *(v24 + 175) = v73;
  *(v24 + 173) = v72;
  *(v24 + 176) = v15;
  *(v24 + 188) = v71;
  *(v24 + 180) = v70;
  *(v24 + 192) = v57;
  *(v24 + 208) = v5;
  *(v24 + 212) = v29;
  *(v24 + 216) = v47;
  *(v24 + 217) = v46;
  *(v24 + 218) = v45;
  *(v24 + 220) = v44;
  *(v24 + 221) = v76;
  *(v24 + 223) = v77;
  *(v24 + 224) = v18;
  *(v24 + 228) = v74;
  *(v24 + 236) = v75;
  *(v24 + 240) = v58;
  *(v24 + 256) = v22;
  *(v24 + 260) = v23;
  *(v24 + 264) = v51;
  *(v24 + 265) = v50;
  *(v24 + 266) = v49;
  *(v24 + 268) = v48;
  *(v24 + 271) = v81;
  *(v24 + 269) = v80;
  *(v24 + 272) = v20;
  *(v24 + 284) = v79;
  *(v24 + 276) = v78;
  result = v59;
  *(v24 + 288) = v59;
  *(v24 + 304) = a2;
  *(v24 + 305) = v3;
  return result;
}

void sub_1AF890BD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v92 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v6 = v5;
    v11 = *(a1 + 8);
    v12 = *(v11 + 200);
    v13 = *(a4 + 16);

    BufferWithLength = CFXGPUDeviceCreateBufferWithLength(v13, v12, 0);
    if (BufferWithLength)
    {
      v15 = BufferWithLength;
      v68 = a3;
      v16 = sub_1AFDFCEC8();
      [v15 setLabel_];

      if (v12 < 208)
      {
        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        v17 = sub_1AFDFDA08();
        if (qword_1ED731058 != -1)
        {
          v51 = v17;
          swift_once();
          v17 = v51;
        }

        *&v69 = 0;
        sub_1AF0D4F18(v17, &v69, 0xD000000000000020, 0x80000001AFF38940);
        goto LABEL_60;
      }

      v23 = 0uLL;
      if ((*(v6 + 304) & 1) == 0)
      {
        v23 = *(v6 + 192);
      }

      v66 = v23;
      v24 = *(v6 + 128);
      v25 = *(v6 + 176);
      v26 = *(v6 + 224);
      v27 = *(v6 + 272);
      v28 = *(a1 + 48);
      v62 = *(v6 + 144);
      v64 = *(v6 + 240);
      v58 = *(v6 + 64);
      v60 = *(v6 + 96);
      v54 = *(v6 + 16);
      v56 = *(v6 + 48);
      v53 = *(v6 + 288);
      if (*(v11 + 192))
      {
        ObjectType = swift_getObjectType();
        swift_unknownObjectRetain();
        sub_1AF471BB8(v15, 0, v12, 0);
        v76 = 0;
        v75 = 0;
        v79 = 0;
        v80 = 0;
        v83 = 0;
        v84 = 0;
        v87 = 0;
        v88 = 0;
        v90 = 0;
        v91 = 0;
        v69 = v54;
        v70 = v56;
        v71 = v58;
        v72 = v60;
        v73 = v53;
        v74 = v27;
        v77 = v66;
        v78 = v25;
        v81 = v62;
        v82 = v24;
        v85 = v64;
        v86 = v26;
        v89 = v28;
        type metadata accessor for pbr_material_constants(0);
        sub_1AF471D6C(&v69, 0, ObjectType, v30);
        v31 = v68;
        v67 = sub_1AF8D93C8(*(v6 + 32), &v69, v68, a4);
        if (*(v6 + 36))
        {
          v32 = 0;
        }

        else
        {
          v32 = *(v6 + 32) == -1;
        }

        if (!v32 && !v67)
        {
          if (qword_1ED730EA0 != -1)
          {
            swift_once();
          }

          *&v69 = 0;
          *(&v69 + 1) = 0xE000000000000000;
          sub_1AFDFE218();

          *&v69 = 0xD000000000000014;
          *(&v69 + 1) = 0x80000001AFF38920;
          v33 = sub_1AFDFEA08();
          MEMORY[0x1B2718AE0](v33);

          v34 = v69;
          v35 = sub_1AFDFDA08();
          if (qword_1ED731058 != -1)
          {
            v52 = v35;
            swift_once();
            v35 = v52;
          }

          *&v69 = 0;
          sub_1AF0D4F18(v35, &v69, v34, *(&v34 + 1));

          v31 = v68;
        }

        v57 = sub_1AF8D93C8(*(v6 + 80), &v69, v31, a4);
        if (!v57)
        {
          v57 = sub_1AF70924C();
        }

        v65 = sub_1AF8D93C8(*(v6 + 112), &v69, v31, a4);
        if (!v65)
        {
          v65 = sub_1AF70924C();
        }

        v63 = sub_1AF8D93C8(*(v6 + 160), &v69, v31, a4);
        if (!v63)
        {
          v63 = sub_1AF70924C();
        }

        v61 = sub_1AF8D93C8(*(v6 + 208), &v69, v31, a4);
        if (!v61)
        {
          v61 = sub_1AF70924C();
        }

        v59 = sub_1AF8D93C8(*(v6 + 256), &v69, v31, a4);
        if (!v59)
        {
          v59 = sub_1AF709A68();
        }

        v55 = a2;
        sub_1AF471CAC(v67, 100);
        v36 = swift_unknownObjectRetain();
        sub_1AF471CAC(v36, 105);
        swift_unknownObjectRelease();
        v37 = swift_unknownObjectRetain();
        sub_1AF471CAC(v37, 101);
        swift_unknownObjectRelease();
        if ((*(v6 + 304) & 1) == 0)
        {
          v38 = swift_unknownObjectRetain();
          sub_1AF471CAC(v38, 102);
          swift_unknownObjectRelease();
        }

        v39 = swift_unknownObjectRetain();
        sub_1AF471CAC(v39, 103);
        swift_unknownObjectRelease();
        v40 = swift_unknownObjectRetain();
        sub_1AF471CAC(v40, 104);
        swift_unknownObjectRelease();
        sub_1AF892474(0, &qword_1EB630950, sub_1AF88DA88, MEMORY[0x1E69E6F90]);
        v41 = swift_allocObject();
        v41[4] = v67;
        v41[5] = v57;
        v41[6] = v65;
        v41[7] = v63;
        v41[8] = v61;
        v41[9] = v59;
        v42 = MEMORY[0x1E69E7CC0];
        *&v69 = MEMORY[0x1E69E7CC0];
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        for (i = 0; i != 6; ++i)
        {
          if (v41[i + 4])
          {
            v45 = swift_unknownObjectRetain();
            MEMORY[0x1B2718E00](v45);
            if (*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1AFDFD458();
            }

            sub_1AFDFD4B8();
            v42 = v69;
          }
        }

        swift_setDeallocating();
        sub_1AF88DA88(0);
        swift_arrayDestroy();
        swift_deallocClassInstance();

        *(v55 + 136) = v42;
        if (sub_1AF67CACC(&type metadata for MovieFileAsset, &off_1F256EBE8, *(v6 + 32)) || sub_1AF67CACC(&type metadata for MovieFileAsset, &off_1F256EBE8, *(v6 + 80)) || sub_1AF67CACC(&type metadata for MovieFileAsset, &off_1F256EBE8, *(v6 + 112)) || sub_1AF67CACC(&type metadata for MovieFileAsset, &off_1F256EBE8, *(v6 + 160)) || sub_1AF67CACC(&type metadata for MovieFileAsset, &off_1F256EBE8, *(v6 + 208)))
        {
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          v46 = 1;
        }

        else
        {
          v46 = sub_1AF67CACC(&type metadata for MovieFileAsset, &off_1F256EBE8, *(v6 + 256));
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        *(v55 + 209) = v46;
        goto LABEL_59;
      }

      if ([swift_unknownObjectRetain() storageMode] != 2)
      {
        v47 = [v15 contents];
        v48 = v15;
        *v47 = v54;
        *(v47 + 1) = v56;
        *(v47 + 2) = v58;
        *(v47 + 3) = v60;
        *(v47 + 4) = v53;
        *(v47 + 20) = v27;
        *(v47 + 84) = 0;
        *(v47 + 23) = 0;
        *(v47 + 6) = v66;
        *(v47 + 28) = v25;
        *(v47 + 116) = 0;
        *(v47 + 31) = 0;
        *(v47 + 8) = v62;
        *(v47 + 36) = v24;
        *(v47 + 148) = 0;
        *(v47 + 39) = 0;
        *(v47 + 10) = v64;
        *(v47 + 44) = v26;
        *(v47 + 47) = 0;
        *(v47 + 180) = 0;
        *(v47 + 48) = v28;
        *(v47 + 51) = 0;
        *(v47 + 196) = 0;
LABEL_59:
        v69 = v15;
        v70 = v12;
        LOBYTE(v71) = 0;
        sub_1AF88BB90(&v69, 2, 0);
LABEL_60:

        swift_unknownObjectRelease();
        return;
      }

      swift_unknownObjectRelease();
      __break(1u);
    }

    else
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      *&v69 = 0;
      *(&v69 + 1) = 0xE000000000000000;
      sub_1AFDFE218();
      MEMORY[0x1B2718AE0](0xD00000000000001DLL, 0x80000001AFF290F0);
      MEMORY[0x1B2718AE0](4271950, 0xE300000000000000);
      MEMORY[0x1B2718AE0](0x6E656C20666F2022, 0xEC00000020687467);
      v19 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v19);

      MEMORY[0x1B2718AE0](0x706F206874697720, 0xEE0020736E6F6974);
      type metadata accessor for MTLResourceOptions(0);
      sub_1AFDFE458();
      v20 = v69;
      v21 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v50 = v21;
        swift_once();
        v21 = v50;
      }

      *&v69 = 0;
      sub_1AF0D4F18(v21, &v69, v20, *(&v20 + 1));

      v22 = sub_1AFDFDA08();
      *&v69 = 0;
      sub_1AF0D4F18(v22, &v69, 0xD000000000000040, 0x80000001AFF388D0);
    }
  }

  else
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v18 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v49 = v18;
      swift_once();
      v18 = v49;
    }

    *&v69 = 0;
    sub_1AF0D4F18(v18, &v69, 0xD000000000000036, 0x80000001AFF38890);
  }
}

BOOL sub_1AF89177C(uint64_t a1)
{
  if (*(v1 + 32) == a1 && *(v1 + 36) == HIDWORD(a1))
  {
    return 1;
  }

  if (*(v1 + 80) == a1 && *(v1 + 84) == HIDWORD(a1))
  {
    return 1;
  }

  v4 = *(v1 + 112) == a1 && *(v1 + 116) == HIDWORD(a1);
  if (v4 || *(v1 + 160) == a1 || *(v1 + 208) == a1)
  {
    return 1;
  }

  if (*(v1 + 256) == a1)
  {
    return *(v1 + 260) == HIDWORD(a1);
  }

  return 0;
}

__n128 sub_1AF89181C()
{
  v1 = v0;
  v51 = *(v0 + 16);
  v50 = *(v0 + 48);
  if (*(v0 + 41))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  v45 = v2 & 0xFFFFFFFFFFFFFFFELL | *(v0 + 40) & 1 | (*(v0 + 42) << 16) | (*(v0 + 43) << 24) | (*(v0 + 44) << 32);
  v43 = sub_1AF6C97E0(*(v0 + 32));
  v48 = *(v0 + 96);
  v49 = *(v0 + 64);
  if (*(v0 + 89))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  v41 = v3 & 0xFFFFFFFFFFFFFFFELL | *(v0 + 88) & 1 | (*(v0 + 90) << 16) | (*(v0 + 91) << 24) | (*(v0 + 92) << 32);
  v24 = sub_1AF6C97E0(*(v0 + 80));
  v39 = *(v0 + 121);
  v40 = *(v0 + 120);
  v37 = *(v0 + 124);
  v38 = *(v0 + 122);
  v4 = *(v0 + 128);
  v47 = *(v0 + 144);
  v5 = sub_1AF6C97E0(*(v0 + 112));
  v6 = v5;
  v7 = HIDWORD(v5);
  v35 = *(v0 + 169);
  v36 = *(v0 + 168);
  v33 = *(v0 + 172);
  v34 = *(v0 + 170);
  v8 = *(v0 + 176);
  v46 = *(v0 + 192);
  v9 = sub_1AF6C97E0(*(v0 + 160));
  v10 = v9;
  v11 = HIDWORD(v9);
  v31 = *(v0 + 217);
  v32 = *(v0 + 216);
  v29 = *(v0 + 220);
  v30 = *(v0 + 218);
  v12 = *(v0 + 224);
  v44 = *(v0 + 240);
  v13 = sub_1AF6C97E0(*(v0 + 208));
  v14 = v13;
  v15 = HIDWORD(v13);
  v27 = *(v0 + 265);
  v28 = *(v0 + 264);
  v25 = *(v0 + 268);
  v26 = *(v0 + 266);
  v16 = *(v0 + 272);
  v42 = *(v0 + 288);
  v17 = sub_1AF6C97E0(*(v0 + 256));
  v18 = v17;
  v19 = HIDWORD(v17);
  v23 = *(v1 + 304);
  v20 = *(v1 + 305);
  v21 = swift_allocObject();
  *(v21 + 269) = v66;
  *(v21 + 276) = v64;
  *(v21 + 32) = v43;
  *(v21 + 40) = v45;
  *(v21 + 80) = v24;
  *(v21 + 88) = v41;
  *(v21 + 112) = v6;
  *(v21 + 116) = v7;
  *(v21 + 120) = v40;
  *(v21 + 121) = v39;
  *(v21 + 122) = v38;
  *(v21 + 124) = v37;
  *(v21 + 127) = v55;
  *(v21 + 125) = v54;
  *(v21 + 140) = v53;
  *(v21 + 132) = v52;
  *(v21 + 160) = v10;
  *(v21 + 164) = v11;
  *(v21 + 168) = v36;
  *(v21 + 169) = v35;
  *(v21 + 170) = v34;
  *(v21 + 172) = v33;
  *(v21 + 175) = v59;
  *(v21 + 173) = v58;
  *(v21 + 188) = v57;
  *(v21 + 180) = v56;
  *(v21 + 208) = v14;
  *(v21 + 212) = v15;
  *(v21 + 216) = v32;
  *(v21 + 217) = v31;
  *(v21 + 218) = v30;
  *(v21 + 220) = v29;
  *(v21 + 223) = v63;
  *(v21 + 221) = v62;
  *(v21 + 236) = v61;
  *(v21 + 228) = v60;
  *(v21 + 256) = v18;
  *(v21 + 260) = v19;
  *(v21 + 264) = v28;
  *(v21 + 265) = v27;
  *(v21 + 266) = v26;
  *(v21 + 268) = v25;
  *(v21 + 271) = v67;
  *(v21 + 284) = v65;
  *(v21 + 304) = v23;
  *(v21 + 305) = v20;
  *(v21 + 16) = v51;
  *(v21 + 48) = v50;
  *(v21 + 64) = v49;
  *(v21 + 96) = v48;
  *(v21 + 128) = v4;
  *(v21 + 144) = v47;
  *(v21 + 176) = v8;
  *(v21 + 192) = v46;
  *(v21 + 224) = v12;
  *(v21 + 240) = v44;
  *(v21 + 272) = v16;
  result = v42;
  *(v21 + 288) = v42;
  return result;
}

uint64_t sub_1AF891BB4(uint64_t a1)
{
  *(a1 + 8) = sub_1AF891C1C(&qword_1EB6322C0, aQ_63);
  result = sub_1AF891C1C(&qword_1EB6322C8, aI_36);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1AF891C1C(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for PBRParameters();
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

__n128 sub_1AF891C5C@<Q0>(__int16 a1@<W0>, uint64_t a2@<X8>)
{
  v3 = 0xEC00000067617266;
  v4 = 0x5F656E696C74756FLL;
  v5 = 0xEC000000746E656DLL;
  v6 = 0x676172665F726270;
  if ((a1 & 0x4000) != 0)
  {
    v6 = 0xD000000000000015;
    v5 = 0x80000001AFF38850;
  }

  if ((a1 & 0x8000) == 0)
  {
    v4 = v6;
    v3 = v5;
  }

  if ((a1 & 0x800) != 0)
  {
    v7 = 0xD000000000000017;
  }

  else
  {
    v7 = v4;
  }

  if ((a1 & 0x800) != 0)
  {
    v8 = 0x80000001AFF38870;
  }

  else
  {
    v8 = v3;
  }

  sub_1AF8989FC(0x747265765F726270, 0xEA00000000007865, v7, v8, MEMORY[0x1E69E7CC0], v14);

  nullsub_106();
  v9 = v14[9];
  *(a2 + 128) = v14[8];
  *(a2 + 144) = v9;
  *(a2 + 160) = v14[10];
  v10 = v14[5];
  *(a2 + 64) = v14[4];
  *(a2 + 80) = v10;
  v11 = v14[7];
  *(a2 + 96) = v14[6];
  *(a2 + 112) = v11;
  v12 = v14[1];
  *a2 = v14[0];
  *(a2 + 16) = v12;
  result = v14[3];
  *(a2 + 32) = v14[2];
  *(a2 + 48) = result;
  return result;
}

uint64_t sub_1AF891D78(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F6465626C61 && a2 == 0xE600000000000000;
  if (v4 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6576697373696D65 && a2 == 0xE800000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73656E6867756F72 && a2 == 0xE900000000000073 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73656E6C6174656DLL && a2 == 0xE900000000000073 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F6973756C63636FLL && a2 == 0xE90000000000006ELL || (sub_1AFDFEE28() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C616D726F6ELL && a2 == 0xE600000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001AFF29560 == a2 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x656C62756F447369 && a2 == 0xED00006465646953)
  {

    return 7;
  }

  else
  {
    v6 = sub_1AFDFEE28();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1AF892020(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65746C694667616DLL && a2 == 0xE900000000000072;
  if (v4 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65746C69466E696DLL && a2 == 0xE900000000000072 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65746C694670696DLL && a2 == 0xE900000000000072 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x5370617277 && a2 == 0xE500000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x5470617277 && a2 == 0xE500000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1AFDFEE28();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t sub_1AF8921D0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AFDFE638();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1AF89221C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AFDFE638();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1AF89227C()
{
  result = qword_1EB6317D0;
  if (!qword_1EB6317D0)
  {
    result = swift_getWitnessTable(aU_40, &type metadata for TextureMipFilterMode, v0, v1);
    atomic_store(result, &qword_1EB6317D0);
  }

  return result;
}

unint64_t sub_1AF8922D0()
{
  result = qword_1EB6322E0;
  if (!qword_1EB6322E0)
  {
    result = swift_getWitnessTable(byte_1AFE7DE2C, &type metadata for PBRParameters.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB6322E0);
  }

  return result;
}

unint64_t sub_1AF892324()
{
  result = qword_1EB631D78;
  if (!qword_1EB631D78)
  {
    result = swift_getWitnessTable(byte_1AFE7D86C, &type metadata for PBRColorProperty, v0, v1);
    atomic_store(result, &qword_1EB631D78);
  }

  return result;
}

unint64_t sub_1AF892378()
{
  result = qword_1EB631C10;
  if (!qword_1EB631C10)
  {
    result = swift_getWitnessTable(asc_1AFE7D8BC, &type metadata for PBRScalarProperty, v0, v1);
    atomic_store(result, &qword_1EB631C10);
  }

  return result;
}

unint64_t sub_1AF8923CC()
{
  result = qword_1EB63FC30;
  if (!qword_1EB63FC30)
  {
    result = swift_getWitnessTable(byte_1AFE7D844, &type metadata for PBRColorProperty, v0, v1);
    atomic_store(result, &qword_1EB63FC30);
  }

  return result;
}

unint64_t sub_1AF892420()
{
  result = qword_1EB63FC38;
  if (!qword_1EB63FC38)
  {
    result = swift_getWitnessTable(aU_41, &type metadata for PBRScalarProperty, v0, v1);
    atomic_store(result, &qword_1EB63FC38);
  }

  return result;
}

void sub_1AF892474(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1AF8924D8(void *a1)
{
  sub_1AF893704(0, &unk_1EB630B00, sub_1AF8936B0, &type metadata for TextureSampler.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v15 - v6;
  sub_1AF441150(a1, a1[3]);
  sub_1AF8936B0();
  sub_1AFDFF3B8();
  if (v1)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v25 = 0;
  sub_1AF51DB18();
  sub_1AFDFE768();
  v8 = v26;
  v23 = 1;
  sub_1AFDFE768();
  v9 = v24;
  v21 = 2;
  sub_1AF51DA44();
  sub_1AFDFE768();
  v16 = v9;
  v10 = v22;
  v19 = 3;
  sub_1AF51DBEC();
  sub_1AFDFE768();
  v15 = v10;
  v11 = v20;
  v17 = 4;
  sub_1AFDFE768();
  (*(v5 + 8))(v7, v4);
  v13 = v18;
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  v14 = 256;
  if (!v16)
  {
    v14 = 0;
  }

  return v14 | v8 | (v15 << 16) | (v11 << 24) | (v13 << 32);
}

uint64_t sub_1AF8927C8(void *a1)
{
  sub_1AF893704(0, &qword_1EB630AE8, sub_1AF892F9C, &type metadata for PBRColorProperty.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  sub_1AF441150(a1, a1[3]);
  sub_1AF892F9C();
  sub_1AFDFF3B8();
  if (!v1)
  {
    sub_1AF893704(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
    v18 = 0;
    sub_1AF892ECC(&qword_1ED72F6F0, MEMORY[0x1E69E74C0]);
    sub_1AFDFE768();
    v15 = v16;
    v18 = 1;
    sub_1AF47FEB4();
    sub_1AFDFE768();
    v8 = v16;
    v18 = 2;
    sub_1AF892E78();
    sub_1AFDFE768();
    v14 = v16;
    v17 = BYTE1(v16);
    v13 = BYTE2(v16);
    v12 = BYTE3(v16);
    v11 = BYTE4(v16);
    v18 = 3;
    sub_1AFDFE768();
    (*(v5 + 8))(v7, v4);
    v10 = v16;
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v8;
}

float sub_1AF892B04(void *a1)
{
  sub_1AF893704(0, &qword_1EB630AD0, sub_1AF892E24, &type metadata for PBRScalarProperty.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  sub_1AF441150(a1, a1[3]);
  sub_1AF892E24();
  sub_1AFDFF3B8();
  if (!v1)
  {
    LOBYTE(v15) = 0;
    sub_1AFDFE738();
    v2 = v9;
    v16 = 1;
    sub_1AF47FEB4();
    sub_1AFDFE768();
    v16 = 2;
    sub_1AF892E78();
    sub_1AFDFE768();
    v14 = v15;
    v13 = BYTE3(v15);
    v12 = BYTE4(v15);
    sub_1AF893704(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
    v16 = 3;
    sub_1AF892ECC(&qword_1ED72F6F0, MEMORY[0x1E69E74C0]);
    sub_1AFDFE768();
    (*(v6 + 8))(v8, v5);
    v11 = v15;
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v2;
}

unint64_t sub_1AF892E24()
{
  result = qword_1EB631C38;
  if (!qword_1EB631C38)
  {
    result = swift_getWitnessTable(byte_1AFE7DDDC, &type metadata for PBRScalarProperty.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB631C38);
  }

  return result;
}

unint64_t sub_1AF892E78()
{
  result = qword_1EB6320E8;
  if (!qword_1EB6320E8)
  {
    result = swift_getWitnessTable(asc_1AFE7DDB4, &type metadata for TextureSampler, v0, v1);
    atomic_store(result, &qword_1EB6320E8);
  }

  return result;
}

uint64_t sub_1AF892ECC(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1AF893704(255, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AF892F48()
{
  result = qword_1EB63FC58;
  if (!qword_1EB63FC58)
  {
    result = swift_getWitnessTable(aT_9, &type metadata for TextureSampler, v0, v1);
    atomic_store(result, &qword_1EB63FC58);
  }

  return result;
}

unint64_t sub_1AF892F9C()
{
  result = qword_1EB631D90;
  if (!qword_1EB631D90)
  {
    result = swift_getWitnessTable(asc_1AFE7DD3C, &type metadata for PBRColorProperty.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB631D90);
  }

  return result;
}

double sub_1AF892FF0(double a1, double a2, double a3)
{
  __asm { FMOV            V0.4S, #1.0 }

  return sub_1AF893000(_Q0, 1.0, 1.0);
}

double sub_1AF893000(__n128 a1, float a2, float a3)
{
  type metadata accessor for PBRParameters();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *&result = 0xFFFFFFFFLL;
  *(v5 + 32) = 0xFFFFFFFFLL;
  *(v5 + 40) = 16777473;
  *(v5 + 44) = 1;
  *(v5 + 45) = v8;
  *(v5 + 47) = v9;
  *(v5 + 48) = xmmword_1AFE20670;
  *(v5 + 64) = 0;
  *(v5 + 72) = 0;
  *(v5 + 80) = 0xFFFFFFFFLL;
  *(v5 + 88) = 16777473;
  *(v5 + 92) = 1;
  *(v5 + 93) = v10;
  *(v5 + 95) = v11;
  *(v5 + 96) = xmmword_1AFE20670;
  *(v5 + 112) = 0xFFFFFFFFLL;
  *(v5 + 120) = 16777473;
  *(v5 + 124) = 1;
  *(v5 + 125) = v14;
  *(v5 + 127) = v15;
  *(v5 + 128) = a2;
  *(v5 + 132) = v12;
  *(v5 + 140) = v13;
  *(v5 + 144) = xmmword_1AFE20670;
  *(v5 + 160) = 0xFFFFFFFFLL;
  *(v5 + 168) = 16777473;
  *(v5 + 172) = 1;
  *(v5 + 175) = v19;
  *(v5 + 173) = v18;
  *(v5 + 176) = a3;
  *(v5 + 188) = v17;
  *(v5 + 180) = v16;
  *(v5 + 192) = xmmword_1AFE20670;
  *(v5 + 208) = 0xFFFFFFFFLL;
  *(v5 + 216) = 16777473;
  *(v5 + 220) = 1;
  *(v5 + 223) = v23;
  *(v5 + 221) = v22;
  *(v5 + 224) = 1065353216;
  *(v5 + 236) = v21;
  *(v5 + 228) = v20;
  *(v5 + 240) = xmmword_1AFE20670;
  *(v5 + 256) = 0xFFFFFFFFLL;
  *(v5 + 264) = 16777473;
  *(v5 + 268) = 1;
  *(v5 + 271) = v27;
  *(v5 + 269) = v26;
  *(v5 + 272) = 1065353216;
  *(v5 + 284) = v25;
  *(v5 + 276) = v24;
  *(v5 + 288) = xmmword_1AFE20670;
  *(v5 + 304) = 0;
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for TextureSampler(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for TextureSampler(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[5])
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

uint64_t storeEnumTagSinglePayload for TextureSampler(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1AF893274()
{
  result = qword_1EB63FC70;
  if (!qword_1EB63FC70)
  {
    sub_1AF8932F0(255, &qword_1EB63FC78, &type metadata for TextureMipFilterMode, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &qword_1EB63FC70);
  }

  return result;
}

void sub_1AF8932F0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1AF893344()
{
  result = qword_1EB63FC80;
  if (!qword_1EB63FC80)
  {
    result = swift_getWitnessTable(asc_1AFE7DA3C, &type metadata for TextureMipFilterMode, v0, v1);
    atomic_store(result, &qword_1EB63FC80);
  }

  return result;
}

unint64_t sub_1AF89339C()
{
  result = qword_1EB63FC88;
  if (!qword_1EB63FC88)
  {
    result = swift_getWitnessTable(byte_1AFE7DB34, &type metadata for PBRParameters.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63FC88);
  }

  return result;
}

unint64_t sub_1AF8933F4()
{
  result = qword_1EB63FC90;
  if (!qword_1EB63FC90)
  {
    result = swift_getWitnessTable(asc_1AFE7DC24, &type metadata for PBRScalarProperty.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63FC90);
  }

  return result;
}

unint64_t sub_1AF89344C()
{
  result = qword_1EB63FC98;
  if (!qword_1EB63FC98)
  {
    result = swift_getWitnessTable(a5_20, &type metadata for PBRColorProperty.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63FC98);
  }

  return result;
}

unint64_t sub_1AF8934A4()
{
  result = qword_1EB631D80;
  if (!qword_1EB631D80)
  {
    result = swift_getWitnessTable(byte_1AFE7DC4C, &type metadata for PBRColorProperty.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB631D80);
  }

  return result;
}

unint64_t sub_1AF8934FC()
{
  result = qword_1EB631D88;
  if (!qword_1EB631D88)
  {
    result = swift_getWitnessTable(byte_1AFE7DC74, &type metadata for PBRColorProperty.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB631D88);
  }

  return result;
}

unint64_t sub_1AF893554()
{
  result = qword_1EB631C20;
  if (!qword_1EB631C20)
  {
    result = swift_getWitnessTable(byte_1AFE7DB5C, &type metadata for PBRScalarProperty.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB631C20);
  }

  return result;
}

unint64_t sub_1AF8935AC()
{
  result = qword_1EB631C28;
  if (!qword_1EB631C28)
  {
    result = swift_getWitnessTable(byte_1AFE7DB84, &type metadata for PBRScalarProperty.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB631C28);
  }

  return result;
}

unint64_t sub_1AF893604()
{
  result = qword_1EB6322D0;
  if (!qword_1EB6322D0)
  {
    result = swift_getWitnessTable(aM_38, &type metadata for PBRParameters.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB6322D0);
  }

  return result;
}

unint64_t sub_1AF89365C()
{
  result = qword_1EB6322D8;
  if (!qword_1EB6322D8)
  {
    result = swift_getWitnessTable(aE_42, &type metadata for PBRParameters.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB6322D8);
  }

  return result;
}

unint64_t sub_1AF8936B0()
{
  result = qword_1EB632108;
  if (!qword_1EB632108)
  {
    result = swift_getWitnessTable(aM_37, &type metadata for TextureSampler.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB632108);
  }

  return result;
}

void sub_1AF893704(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1AF893780()
{
  result = qword_1EB63FCB8;
  if (!qword_1EB63FCB8)
  {
    result = swift_getWitnessTable(byte_1AFE7DF44, &type metadata for TextureSampler.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63FCB8);
  }

  return result;
}

unint64_t sub_1AF8937D8()
{
  result = qword_1EB6320F0;
  if (!qword_1EB6320F0)
  {
    result = swift_getWitnessTable(asc_1AFE7DEB4, &type metadata for TextureSampler.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB6320F0);
  }

  return result;
}

unint64_t sub_1AF893830()
{
  result = qword_1EB6320F8;
  if (!qword_1EB6320F8)
  {
    result = swift_getWitnessTable(aU_42, &type metadata for TextureSampler.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB6320F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ExternalConstantsCopyEncoder.PointerLocation(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ExternalConstantsCopyEncoder.PointerLocation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 3;
    }
  }

  return result;
}

unint64_t sub_1AF893964()
{
  result = qword_1EB63FCC0;
  if (!qword_1EB63FCC0)
  {
    result = swift_getWitnessTable(byte_1AFE7E04C, &type metadata for ExternalConstantsCopyEncoder.PointerLocation.Destination, v0, v1);
    atomic_store(result, &qword_1EB63FCC0);
  }

  return result;
}

uint64_t destroy for RenderArguments(void *a1)
{
}

uint64_t initializeWithCopy for RenderArguments(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = a2[3];
  *(a1 + 16) = a2[2];
  *(a1 + 24) = v4;
  v5 = a2[5];
  *(a1 + 32) = a2[4];
  *(a1 + 40) = v5;
  v6 = a2[7];
  *(a1 + 48) = a2[6];
  *(a1 + 56) = v6;
  v7 = a2[9];
  *(a1 + 64) = a2[8];
  *(a1 + 72) = v7;
  v8 = a2[11];
  *(a1 + 80) = a2[10];
  *(a1 + 88) = v8;
  *(a1 + 96) = *(a2 + 24);
  *(a1 + 104) = a2[13];

  return a1;
}

uint64_t *assignWithCopy for RenderArguments(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];

  a1[3] = a2[3];

  a1[4] = a2[4];

  a1[5] = a2[5];

  a1[6] = a2[6];

  a1[7] = a2[7];

  a1[8] = a2[8];

  a1[9] = a2[9];

  a1[10] = a2[10];

  a1[11] = a2[11];

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 49) = *(a2 + 49);
  a1[13] = a2[13];

  return a1;
}

uint64_t assignWithTake for RenderArguments(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 64) = *(a2 + 64);

  *(a1 + 80) = *(a2 + 80);

  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);

  return a1;
}

uint64_t sub_1AF893D9C@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF894E90(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1AF893DC8(char a1)
{
  if ((a1 & 1) == 0)
  {
    if ((a1 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    MEMORY[0x1B2718AE0](0xD000000000000011, 0x80000001AFF389A0);
    if ((a1 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF389C0);
  if ((a1 & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((a1 & 4) != 0)
  {
LABEL_4:
    MEMORY[0x1B2718AE0](0xD000000000000011, 0x80000001AFF38980);
  }

LABEL_5:
  v2 = sub_1AF8FD3D4(1, 0, 0xE000000000000000);
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v9 = MEMORY[0x1B27189E0](v2, v4, v6, v8);

  return v9;
}

void sub_1AF893EE0(void *a1)
{
  v2 = a1;
  if (*(*v1 + 16))
  {
    if (!a1[2])
    {
      return;
    }

    v3 = 0;
    v60 = a1 + 4;
    v61 = a1[2];
    v2 = *v1;
    do
    {
      v11 = &v60[6 * v3];
      v12 = *v11;
      v13 = v11[1];
      v14 = v11[2];
      v15 = v11[3];
      v16 = *(v11 + 32);
      v17 = v11[5];
      v18 = v2[2];
      if (v18)
      {
        v19 = 0;
        v20 = v2 + 4;
        v21 = v18 - 1;
        do
        {
          while (1)
          {
            v22 = v19 + (v21 - v19) / 2;
            v23 = v20[6 * v22 + 5];
            if (v23 >= v17)
            {
              break;
            }

            v19 = v22 + 1;
            if (v21 < v22 + 1)
            {
              goto LABEL_14;
            }
          }

          if (v17 >= v23)
          {
            v19 += (v21 - v19) / 2;
            goto LABEL_22;
          }

          v21 = v22 - 1;
        }

        while (v22 - 1 >= v19);
LABEL_14:
        if (v19 >= v18)
        {
          goto LABEL_16;
        }

        v23 = v20[6 * v19 + 5];
LABEL_22:
        v63 = v2;
        v36 = v12;
        if (v23 == v17)
        {
          v37 = v14;
          v38 = v13;
          v39 = v13;
          v40 = v37;
          v65 = v15;
          v41 = v15;
          v32 = v16;
          sub_1AF64E2C4(v12, v39, v37, v41, v16);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v63 = sub_1AFC0DB34(v63);
          }

          v42 = &v63[6 * v19];
          v44 = v42[4];
          v43 = v42[5];
          v6 = v42 + 4;
          v57 = v43;
          v58 = v44;
          v55 = v6[3];
          v56 = v6[2];
          v45 = v36;
          *v6 = v36;
          v6[1] = v38;
          v46 = v38;
          v14 = v40;
          v6[2] = v40;
          v6[3] = v65;
          v54 = *(v6 + 32);
          *(v6 + 32) = v32;
          sub_1AF64E2C4(v45, v46, v40, v65, v32);
          sub_1AF88DB90(v58, v57, v56, v55, v54);
          v9 = v65;
          v8 = v46;
          v2 = v63;
          v7 = v45;
        }

        else
        {
          v47 = v16;
          sub_1AF64E2C4(v12, v13, v14, v15, v16);
          v66 = v36;
          v59 = v13;
          v48 = v13;
          v49 = v15;
          v50 = v15;
          v32 = v47;
          sub_1AF64E2C4(v36, v48, v14, v50, v47);
          v4 = v63;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (!isUniquelyReferenced_nonNull_native || v18 >= v63[3] >> 1)
          {
            v4 = sub_1AF4249DC(isUniquelyReferenced_nonNull_native, v18 + 1, 1, v63);
          }

          v5 = &v4[6 * v19];
          v6 = v5 + 4;
          sub_1AF64ED04(0, &qword_1ED7256D0, &type metadata for BufferArgument);
          swift_arrayDestroy();
          memmove(v5 + 10, v5 + 4, 48 * (v4[2] - v19));
          ++v4[2];
          v7 = v66;
          v8 = v59;
          v5[4] = v66;
          v5[5] = v59;
          v5[6] = v14;
          v5[7] = v49;
          v9 = v49;
          *(v5 + 64) = v32;
          v2 = v4;
        }

        v10 = v61;
      }

      else
      {
LABEL_16:
        v24 = v12;
        v25 = v2;
        v26 = v16;
        sub_1AF64E2C4(v12, v13, v14, v15, v16);
        v27 = v14;
        v28 = v13;
        v29 = v13;
        v62 = v27;
        v64 = v24;
        v30 = v15;
        v31 = v15;
        v32 = v26;
        v2 = v25;
        sub_1AF64E2C4(v24, v29, v27, v31, v32);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_1AF4249DC(0, v18 + 1, 1, v25);
        }

        v34 = v2[2];
        v33 = v2[3];
        v7 = v64;
        v10 = v61;
        if (v34 >= v33 >> 1)
        {
          v52 = sub_1AF4249DC(v33 > 1, v34 + 1, 1, v2);
          v9 = v30;
          v8 = v28;
          v2 = v52;
          v7 = v64;
        }

        else
        {
          v8 = v28;
          v9 = v30;
        }

        v2[2] = v34 + 1;
        v35 = &v2[6 * v34];
        v35[4] = v7;
        v35[5] = v8;
        v6 = v35 + 4;
        v14 = v62;
        v6[2] = v62;
        v6[3] = v9;
        *(v6 + 32) = v32;
      }

      ++v3;
      v6[5] = v17;
      sub_1AF88DB90(v7, v8, v14, v9, v32);
    }

    while (v3 != v10);
  }

  else
  {
    v53 = v1;
  }

  *v53 = v2;
}

void sub_1AF8942A8(void *a1)
{
  v2 = a1;
  v3 = *v1;
  if (*(*v1 + 16))
  {
    if (!a1[2])
    {
      return;
    }

    v4 = 0;
    v34 = a1 + 4;
    v35 = a1[2];
    v2 = v3;
    do
    {
      v9 = &v34[5 * v4];
      v10 = *v9;
      v11 = v9[1];
      v12 = v9[2];
      v13 = *(v9 + 24);
      v14 = v9[4];
      v15 = v2[2];
      if (v15)
      {
        v16 = 0;
        v17 = v2 + 4;
        v18 = v15 - 1;
        do
        {
          while (1)
          {
            v19 = v16 + (v18 - v16) / 2;
            v20 = v17[5 * v19 + 4];
            if (v20 >= v14)
            {
              break;
            }

            v16 = v19 + 1;
            if (v18 < v19 + 1)
            {
              goto LABEL_14;
            }
          }

          if (v14 >= v20)
          {
            v16 += (v18 - v16) / 2;
            goto LABEL_22;
          }

          v18 = v19 - 1;
        }

        while (v19 - 1 >= v16);
LABEL_14:
        if (v16 >= v15)
        {
          goto LABEL_16;
        }

        v20 = v17[5 * v16 + 4];
LABEL_22:
        v33 = v10;
        if (v20 == v14)
        {
          sub_1AF64E4D0(v10, v11, v12, v13);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_1AFC0DB48(v2);
          }

          v24 = &v2[5 * v16];
          v26 = v24[4];
          v25 = v24[5];
          v6 = v24 + 4;
          v31 = v25;
          v32 = v26;
          v30 = v6[2];
          *v6 = v10;
          v6[1] = v11;
          v6[2] = v12;
          v27 = *(v6 + 24);
          *(v6 + 24) = v13;
          sub_1AF64E4D0(v10, v11, v12, v13);
          sub_1AF88DCFC(v32, v31, v30, v27);
          v7 = v10;
        }

        else
        {
          sub_1AF64E4D0(v10, v11, v12, v13);
          sub_1AF64E4D0(v10, v11, v12, v13);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (!isUniquelyReferenced_nonNull_native || v15 >= v2[3] >> 1)
          {
            v2 = sub_1AF424B14(isUniquelyReferenced_nonNull_native, v15 + 1, 1, v2);
          }

          v5 = &v2[5 * v16];
          v6 = v5 + 4;
          sub_1AF64ED04(0, &qword_1EB63D160, &type metadata for TextureArgument);
          swift_arrayDestroy();
          memmove(v5 + 9, v5 + 4, 40 * (v2[2] - v16));
          ++v2[2];
          v7 = v33;
          v5[4] = v33;
          v5[5] = v11;
          v5[6] = v12;
          *(v5 + 56) = v13;
        }

        v8 = v35;
      }

      else
      {
LABEL_16:
        sub_1AF64E4D0(v10, v11, v12, v13);
        sub_1AF64E4D0(v10, v11, v12, v13);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_1AF424B14(0, v15 + 1, 1, v2);
        }

        v22 = v2[2];
        v21 = v2[3];
        if (v22 >= v21 >> 1)
        {
          v2 = sub_1AF424B14(v21 > 1, v22 + 1, 1, v2);
        }

        v7 = v10;
        v8 = v35;
        v2[2] = v22 + 1;
        v23 = &v2[5 * v22];
        v23[4] = v7;
        v23[5] = v11;
        v6 = v23 + 4;
        v6[2] = v12;
        *(v6 + 24) = v13;
      }

      ++v4;
      v6[4] = v14;
      sub_1AF88DCFC(v7, v11, v12, v13);
    }

    while (v4 != v8);
  }

  else
  {
    v29 = v1;
  }

  *v29 = v2;
}

void sub_1AF8945D4(void *result)
{
  v2 = result;
  v3 = *v1;
  if (*(*v1 + 16))
  {
    if (!result[2])
    {
      return;
    }

    v4 = 0;
    v34 = result + 4;
    v35 = result[2];
    v2 = v3;
    do
    {
      v9 = &v34[5 * v4];
      v10 = *v9;
      v11 = v9[1];
      v12 = v9[2];
      v13 = *(v9 + 24);
      v14 = v9[4];
      v15 = v2[2];
      if (v15)
      {
        v16 = 0;
        v17 = v2 + 4;
        v18 = v15 - 1;
        do
        {
          while (1)
          {
            v19 = v16 + (v18 - v16) / 2;
            v20 = v17[5 * v19 + 4];
            if (v20 >= v14)
            {
              break;
            }

            v16 = v19 + 1;
            if (v18 < v19 + 1)
            {
              goto LABEL_14;
            }
          }

          if (v14 >= v20)
          {
            v16 += (v18 - v16) / 2;
            goto LABEL_22;
          }

          v18 = v19 - 1;
        }

        while (v19 - 1 >= v16);
LABEL_14:
        if (v16 >= v15)
        {
          goto LABEL_16;
        }

        v20 = v17[5 * v16 + 4];
LABEL_22:
        v33 = v10;
        if (v20 == v14)
        {
          sub_1AF8949B0(v10, v11, v12, v13);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_1AFC0DC38(v2);
          }

          v24 = &v2[5 * v16];
          v26 = v24[4];
          v25 = v24[5];
          v6 = v24 + 4;
          v31 = v25;
          v32 = v26;
          v30 = v6[2];
          v27 = *(v6 + 24);
          *v6 = v10;
          v6[1] = v11;
          v6[2] = v12;
          *(v6 + 24) = v13;
          sub_1AF8949B0(v10, v11, v12, v13);
          sub_1AF894E80(v32, v31, v30, v27);
          v7 = v10;
        }

        else
        {
          sub_1AF8949B0(v10, v11, v12, v13);
          sub_1AF8949B0(v10, v11, v12, v13);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (!isUniquelyReferenced_nonNull_native || v15 >= v2[3] >> 1)
          {
            v2 = sub_1AF426940(isUniquelyReferenced_nonNull_native, v15 + 1, 1, v2);
          }

          v5 = &v2[5 * v16];
          v6 = v5 + 4;
          sub_1AF64ED04(0, &qword_1EB63FCD0, &type metadata for SamplerArgument);
          swift_arrayDestroy();
          memmove(v5 + 9, v5 + 4, 40 * (v2[2] - v16));
          ++v2[2];
          v7 = v33;
          v5[4] = v33;
          v5[5] = v11;
          v5[6] = v12;
          *(v5 + 56) = v13;
        }

        v8 = v35;
      }

      else
      {
LABEL_16:
        sub_1AF8949B0(v10, v11, v12, v13);
        sub_1AF8949B0(v10, v11, v12, v13);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_1AF426940(0, v15 + 1, 1, v2);
        }

        v22 = v2[2];
        v21 = v2[3];
        if (v22 >= v21 >> 1)
        {
          v2 = sub_1AF426940(v21 > 1, v22 + 1, 1, v2);
        }

        v7 = v10;
        v8 = v35;
        v2[2] = v22 + 1;
        v23 = &v2[5 * v22];
        v23[4] = v7;
        v23[5] = v11;
        v6 = v23 + 4;
        v6[2] = v12;
        *(v6 + 24) = v13;
      }

      ++v4;
      v6[4] = v14;
      sub_1AF894E80(v7, v11, v12, v13);
    }

    while (v4 != v8);
  }

  else
  {
    v29 = v1;
  }

  *v29 = v2;
}

uint64_t sub_1AF894900(uint64_t a1)
{
  sub_1AF893EE0(*a1);
  sub_1AF8942A8(*(a1 + 8));
  sub_1AF8945D4(*(a1 + 16));
  v3 = *(a1 + 96);
  v4 = *(v1 + 96);
  if ((v3 & ~v4) != 0)
  {
    *(v1 + 96) = v4 | v3;
  }

  sub_1AF893EE0(*(a1 + 24));
  sub_1AF8942A8(*(a1 + 32));
  sub_1AF8945D4(*(a1 + 40));
  v5 = *(a1 + 98);
  v6 = *(v1 + 98);
  if ((v5 & ~v6) != 0)
  {
    *(v1 + 98) = v6 | v5;
  }

  return sub_1AF490B34(v7);
}

double sub_1AF8949B0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
    swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_1AF8949C0(char a1)
{
  v2 = v1;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4 = *v1;
    if (isUniquelyReferenced_nonNull_native)
    {
      sub_1AF64E5AC(0, *(v4 + 16));
    }

    else
    {
      v7 = sub_1AFC85F28(0, *(v4 + 24) >> 1);

      *v2 = v7;
    }

    v8 = swift_isUniquelyReferenced_nonNull_native();
    v9 = v2[1];
    if (v8)
    {
      sub_1AF64E5D8(0, *(v9 + 16));
    }

    else
    {
      v10 = sub_1AFC85FAC(0, *(v9 + 24) >> 1);

      v2[1] = v10;
    }

    v11 = swift_isUniquelyReferenced_nonNull_native();
    v12 = v2[2];
    if (v11)
    {
      sub_1AF64E6C8(0, *(v12 + 16));
    }

    else
    {
      v13 = sub_1AFC860D8(0, *(v12 + 24) >> 1);

      v2[2] = v13;
    }

    v14 = swift_isUniquelyReferenced_nonNull_native();
    v15 = v2[3];
    if (v14)
    {
      sub_1AF64E5AC(0, *(v15 + 16));
    }

    else
    {
      v16 = sub_1AFC85F28(0, *(v15 + 24) >> 1);

      v2[3] = v16;
    }

    v17 = swift_isUniquelyReferenced_nonNull_native();
    v18 = v2[4];
    if (v17)
    {
      sub_1AF64E5D8(0, *(v18 + 16));
    }

    else
    {
      v19 = sub_1AFC85FAC(0, *(v18 + 24) >> 1);

      v2[4] = v19;
    }

    v20 = swift_isUniquelyReferenced_nonNull_native();
    v21 = v2[5];
    if (v20)
    {
      sub_1AF64E6C8(0, *(v21 + 16));
    }

    else
    {
      v22 = sub_1AFC860D8(0, *(v21 + 24) >> 1);

      v2[5] = v22;
    }

    v23 = swift_isUniquelyReferenced_nonNull_native();
    v24 = v2[6];
    if (v23)
    {
      sub_1AF64E5AC(0, *(v24 + 16));
    }

    else
    {
      v25 = sub_1AFC85F28(0, *(v24 + 24) >> 1);

      v2[6] = v25;
    }

    v26 = swift_isUniquelyReferenced_nonNull_native();
    v27 = v2[7];
    if (v26)
    {
      sub_1AF64E5D8(0, *(v27 + 16));
    }

    else
    {
      v28 = sub_1AFC85FAC(0, *(v27 + 24) >> 1);

      v2[7] = v28;
    }

    v29 = swift_isUniquelyReferenced_nonNull_native();
    v30 = v2[8];
    if (v29)
    {
      sub_1AF64E6C8(0, *(v30 + 16));
    }

    else
    {
      v31 = sub_1AFC860D8(0, *(v30 + 24) >> 1);

      v2[8] = v31;
    }

    v32 = swift_isUniquelyReferenced_nonNull_native();
    v33 = v2[9];
    if (v32)
    {
      sub_1AF64E5AC(0, *(v33 + 16));
    }

    else
    {
      v34 = sub_1AFC85F28(0, *(v33 + 24) >> 1);

      v2[9] = v34;
    }

    v35 = swift_isUniquelyReferenced_nonNull_native();
    v36 = v2[10];
    if (v35)
    {
      sub_1AF64E5D8(0, *(v36 + 16));
    }

    else
    {
      v37 = sub_1AFC85FAC(0, *(v36 + 24) >> 1);

      v2[10] = v37;
    }

    v38 = swift_isUniquelyReferenced_nonNull_native();
    v39 = v2[11];
    if (v38)
    {
      sub_1AF64E6C8(0, *(v39 + 16));
    }

    else
    {
      v40 = sub_1AFC860D8(0, *(v39 + 24) >> 1);

      v2[11] = v40;
    }

    v41 = v2 + 13;
    v42 = v2[13];
    if ((v42 & 0x8000000000000000) != 0 || (v42 & 0x4000000000000000) != 0 || (isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject(), v42 = *v41, (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0))
    {
      if (v42 >> 62)
      {
        sub_1AFDFE108();
        sub_1AFDFE108();
        sub_1AFDFE108();
      }

      v45 = sub_1AFC892CC();

      *v41 = v45;
    }

    else
    {
      if (v42 >> 62)
      {
        v44 = sub_1AFDFE108();
      }

      else
      {
        v44 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      result = sub_1AF64E3CC(0, v44);
    }
  }

  else
  {

    v5 = MEMORY[0x1E69E7CC0];
    *v2 = MEMORY[0x1E69E7CC0];

    v2[1] = v5;

    v2[2] = v5;

    v2[3] = v5;

    v2[4] = v5;

    v2[5] = v5;

    v2[6] = v5;

    v2[7] = v5;

    v2[8] = v5;

    v2[9] = v5;

    v2[10] = v5;

    v2[11] = v5;

    v2[13] = v5;
  }

  *(v2 + 24) = 0;
  return result;
}

double sub_1AF894E80(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1AF894E90(uint64_t result)
{
  if (result >= 0xB)
  {
    return 11;
  }

  else
  {
    return result;
  }
}

uint64_t initializeWithCopy for SamplerArgument(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  sub_1AF8949B0(*a2, v4, v5, v6);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  return a1;
}

uint64_t assignWithCopy for SamplerArgument(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  sub_1AF8949B0(*a2, v4, v5, v6);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  sub_1AF894E80(v7, v8, v9, v10);
  return a1;
}

uint64_t assignWithTake for SamplerArgument(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = *a1;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = *(a1 + 24);
  *a1 = *a2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  sub_1AF894E80(v5, v7, v6, v8);
  return a1;
}

uint64_t initializeWithCopy for TextureArgument(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  sub_1AF64E4D0(*a2, v4, v5, v6);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  return a1;
}

uint64_t assignWithCopy for TextureArgument(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  sub_1AF64E4D0(*a2, v4, v5, v6);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  v10 = *(a1 + 24);
  *(a1 + 24) = v6;
  sub_1AF88DCFC(v7, v8, v9, v10);
  return a1;
}

uint64_t assignWithTake for TextureArgument(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = *a1;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  v8 = *(a1 + 24);
  *(a1 + 24) = v4;
  sub_1AF88DCFC(v5, v7, v6, v8);
  return a1;
}

uint64_t getEnumTagSinglePayload for TextureArgument(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 25))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 24);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TextureArgument(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t initializeWithCopy for BufferArgument(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  sub_1AF64E2C4(*a2, v4, v5, v6, v7);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  return a1;
}

uint64_t assignWithCopy for BufferArgument(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  sub_1AF64E2C4(*a2, v4, v5, v6, v7);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  v12 = *(a1 + 32);
  *(a1 + 32) = v7;
  sub_1AF88DB90(v8, v9, v10, v11, v12);
  return a1;
}