uint64_t _s12NIOIMAPCore216MetadataResponseO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v4 < 0)
  {
    v10 = *(a2 + 16);
    if (v10 < 0)
    {
      v11 = v3;
      v12 = *(a2 + 8);
      if (sub_1003A370C() & 1) != 0 && v4 == v10 && (sub_1000FFC98(v11, v12))
      {
        return 1;
      }
    }
  }

  else
  {
    v5 = *(a2 + 16);
    if ((v5 & 0x8000000000000000) == 0)
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 24);
      v8 = *(a2 + 32);
      v9 = *(a2 + 24);
      if (sub_1003A0868(v3, *(a2 + 8)) & 1) != 0 && (sub_1003A09B0(v4, v5) & 1) != 0 && (v6 | (v6 << 32)) == (v8 | (v8 << 32)) && (sub_1000FFC98(v7, v9))
      {
        return 1;
      }
    }
  }

  return 0;
}

unint64_t sub_10045B928()
{
  result = qword_1005DD0E0;
  if (!qword_1005DD0E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MetadataResponse, &type metadata for MetadataResponse, v0, v1);
    atomic_store(result, &qword_1005DD0E0);
  }

  return result;
}

uint64_t sub_10045B988(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF && *(a1 + 36))
  {
    return (*a1 + 15);
  }

  v3 = (((*(a1 + 16) >> 60) >> 3) & 0xFFFFFFF1 | (2 * ((*(a1 + 16) >> 60) & 7))) ^ 0xF;
  if (v3 >= 0xE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10045B9DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 15;
    *(result + 8) = 0;
    if (a3 >= 0xF)
    {
      *(result + 36) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF)
    {
      *(result + 36) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 1) & 7) - 8 * a2) << 60;
      *(result + 24) = 0;
      *(result + 32) = 0;
    }
  }

  return result;
}

uint64_t sub_10045BA6C(uint64_t *a1)
{
  v12._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v12);

  v13._countAndFlagsBits = 658813;
  v13._object = 0xE300000000000000;
  sub_1004A5994(v13);
  v3 = *(v1 + 20);
  v4 = sub_1002F178C(0x7B7EuLL, 0xE200000000000000, v1 + 8, v3);
  if (v5)
  {
    v6._countAndFlagsBits = 31614;
    v6._object = 0xE200000000000000;
    v4 = ByteBuffer._setStringSlowpath(_:at:)(v6, v3);
  }

  v7 = v4;

  v8 = *(v1 + 20);
  result = (v8 + v7);
  if (__CFADD__(v8, v7))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  *(v1 + 20) = result;
  if (((*(v1 + 1) | (*(v1 + 5) << 32)) & 0x8000000000000000) == 0)
  {
    sub_1003E46E4(result);
  }

  sub_1003E0BCC(a1);
  v11 = __OFADD__(v7, v10);
  result = v7 + v10;
  if (v11)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_10045BB90(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (result)
  {
    if (HIDWORD(a2) < a2)
    {
      __break(1u);
    }

    else if (a3 - (BYTE6(a3) | (WORD2(a3) << 8)) >= HIDWORD(a2))
    {
      v11[0] = result;
      v11[1] = a2;
      v12 = a3;
      v13 = WORD2(a3);
      v14 = BYTE6(a3);
      v15 = a2;
      v16 = HIDWORD(a2);

      v4 = sub_10045BA6C(v11);
      sub_1003A52D0(v11);
      return v4;
    }

    __break(1u);
    goto LABEL_12;
  }

  v5 = *(v3 + 20);
  result = sub_1002F178C(0x4C494EuLL, 0xE300000000000000, v3 + 8, v5);
  if (v6)
  {
    v7._countAndFlagsBits = 4999502;
    v7._object = 0xE300000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v7, v5);
  }

  v8 = *(v3 + 20);
  v9 = __CFADD__(v8, result);
  v10 = v8 + result;
  if (v9)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  *(v3 + 20) = v10;
  return result;
}

void MetadataValue.hash(into:)(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a2)
  {
    sub_1004A6EC4(1u);
    swift_beginAccess();
    sub_1004A6EA4();
  }

  else
  {
    sub_1004A6EC4(0);
  }
}

Swift::Int MetadataValue.hashValue.getter(uint64_t a1, unint64_t a2, unint64_t a3)
{
  sub_1004A6E94();
  if (a1)
  {
    sub_1004A6EC4(1u);
    swift_beginAccess();
    sub_1004A6EA4();
  }

  else
  {
    sub_1004A6EC4(0);
  }

  return sub_1004A6F14();
}

Swift::Int sub_10045BDF0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16) | ((*(v1 + 20) | (*(v1 + 22) << 16)) << 32);
  sub_1004A6E94();
  MetadataValue.hash(into:)(v6, v2, v3, v4);
  return sub_1004A6F14();
}

void sub_10045BE94(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  *(a1 + 15) = 0;
}

uint64_t sub_10045BEA0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    if (a4)
    {

      LOBYTE(a6) = sub_10020FBD0(v11, a2, a3 & 0xFFFFFFFFFFFFFFLL, a4, a5, a6 & 0xFFFFFFFFFFFFFFLL);

      if (a6)
      {
        return 1;
      }
    }
  }

  else if (!a4)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_10045BF40()
{
  result = qword_1005DD0E8;
  if (!qword_1005DD0E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MetadataValue, &type metadata for MetadataValue, v0, v1);
    atomic_store(result, &qword_1005DD0E8);
  }

  return result;
}

uint64_t sub_10045BF94(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 23))
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

uint64_t sub_10045BFF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 22) = 0;
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 23) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 23) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t ModificationSequenceValue.init<A>(exactly:)(char *a1, uint64_t a2, uint64_t a3)
{
  v30[2] = *(*(a3 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __chkstk_darwin(AssociatedTypeWitness);
  v30[1] = v30 - v6;
  v7 = *(a2 - 8);
  __chkstk_darwin(v8);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v30 - v12;
  if (sub_1004A64B4())
  {
    if (sub_1004A64A4() < 64)
    {
LABEL_9:
      (*(v7 + 16))(v13, a1, a2);
      v18 = sub_1004A6494();
      v17 = *(v7 + 8);
      v17(v13, a2);
      if ((v18 & 0x8000000000000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_17:
      v17(a1, a2);
      return 0;
    }

    goto LABEL_6;
  }

  v14 = sub_1004A64B4();
  v15 = sub_1004A64A4();
  if (v14)
  {
    if (v15 <= 64)
    {
      swift_getAssociatedConformanceWitness();
      sub_1004A6DE4();
      sub_1004A6D04();
      v24 = sub_1004A5634();
      v30[0] = a1;
      v17 = *(v7 + 8);
      v17(v13, a2);
      if (v24)
      {
        a1 = v30[0];
      }

      else
      {
        (*(v7 + 16))(v13, v30[0], a2);
        v29 = sub_1004A6494();
        v17(v13, a2);
        a1 = v30[0];
        if ((v29 & 0x8000000000000000) == 0)
        {
          goto LABEL_10;
        }
      }

      goto LABEL_17;
    }

LABEL_6:
    v31 = 0;
    sub_1001C08B0();
    sub_1004A6474();
    v16 = sub_1004A5634();
    v17 = *(v7 + 8);
    v17(v13, a2);
    if (v16)
    {
      goto LABEL_17;
    }

    goto LABEL_10;
  }

  if (v15 < 64)
  {
    goto LABEL_9;
  }

LABEL_10:
  (*(v7 + 16))(v10, a1, a2);
  if (sub_1004A64B4())
  {
    swift_getAssociatedConformanceWitness();
    sub_1004A6DE4();
    sub_1004A6D04();
    v19 = sub_1004A5634();
    v20 = *(v7 + 8);
    v20(v13, a2);
    if (v19)
    {
      goto LABEL_22;
    }
  }

  if (sub_1004A64A4() < 64)
  {
    goto LABEL_24;
  }

  v31 = -1;
  v21 = sub_1004A64B4();
  v22 = sub_1004A64A4();
  if (v21)
  {
    if (v22 <= 64)
    {
      swift_getAssociatedConformanceWitness();
      sub_1004A6DE4();
      sub_1004A6D04();
      v23 = sub_1004A5624();
      (*(v7 + 8))(v13, a2);
      if ((v23 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    goto LABEL_21;
  }

  if (v22 >= 65)
  {
LABEL_21:
    sub_100433888();
    sub_1004A6474();
    v25 = sub_1004A5634();
    v20 = *(v7 + 8);
    v20(v13, a2);
    if ((v25 & 1) == 0)
    {
      goto LABEL_24;
    }

LABEL_22:
    v20(a1, a2);
    v20(v10, a2);
    return 0;
  }

LABEL_23:
  sub_1004A6494();
LABEL_24:
  v26 = sub_1004A6494();
  v27 = *(v7 + 8);
  v27(a1, a2);
  v27(v10, a2);
  if ((v26 & 0x8000000000000000) == 0)
  {
    return v26;
  }

  return 0;
}

NIOIMAPCore2::ModificationSequenceValue __swiftcall ModificationSequenceValue.init(_:)(NIOIMAPCore2::ModificationSequenceValue result)
{
  if ((result.value & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  return result;
}

Swift::Int64 __swiftcall ModificationSequenceValue.distance(to:)(Swift::Int64 to)
{
  if ((v1 | to) < 0)
  {
    __break(1u);
  }

  else
  {
    to -= v1;
  }

  return to;
}

NIOIMAPCore2::ModificationSequenceValue __swiftcall ModificationSequenceValue.advanced(by:)(NIOIMAPCore2::ModificationSequenceValue by)
{
  if (v1 < 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  v2 = __OFADD__(v1, by.value);
  by.value += v1;
  if (v2)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if ((by.value & 0x8000000000000000) != 0)
  {
LABEL_7:
    __break(1u);
  }

  return by;
}

unint64_t sub_10045C788()
{
  result = qword_1005DD0F0;
  if (!qword_1005DD0F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ModificationSequenceValue, &type metadata for ModificationSequenceValue, v0, v1);
    atomic_store(result, &qword_1005DD0F0);
  }

  return result;
}

unint64_t sub_10045C7EC()
{
  result = qword_1005DD0F8;
  if (!qword_1005DD0F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ModificationSequenceValue, &type metadata for ModificationSequenceValue, v0, v1);
    atomic_store(result, &qword_1005DD0F8);
  }

  return result;
}

void *sub_10045C840@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (((*v2 | *result) & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *a2 = *result - *v2;
  }

  return result;
}

void *sub_10045C860@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v3 = *v2;
  if (*v2 < 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = __OFADD__(v3, *result);
  v5 = v3 + *result;
  if (v4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    *a2 = v5;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_10045C88C(void *result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, void *a6)
{
  v6 = *a4;
  if (*a4 < 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  v7 = __OFADD__(v6, *a6);
  v8 = v6 + *a6;
  if (v7)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if ((v8 & 0x8000000000000000) == 0)
  {
    *result = v8;
    return 0;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_10045C954(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v5 = HIDWORD(a2);
  v6 = a2;
  sub_1004A5874((HIDWORD(a2) - a2));
  v7 = v5;
  v8 = v6;

  v50 = a1;
  swift_beginAccess();
  if (v6 == v7)
  {
LABEL_2:
  }

  else
  {
    v47 = v7;
    v48 = (a3 >> 24) & 0xFFFF00 | BYTE6(a3);
    v49 = -v7;
    while (1)
    {
      v9 = v8 + 1;
      if (v8 == -1)
      {
        break;
      }

      v10 = *(v50 + 24) + v48;
      if (*(v10 + v8) == 38)
      {
        if (v9 == v7)
        {
          LODWORD(v11) = v7;
          v12 = _swiftEmptyArrayStorage;
LABEL_29:
          v19 = *(v12 + 2);
          v45 = v11;
          if ((v19 & 3) != 0)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v12 = sub_10015BF20(0, v19 + 1, 1, v12);
            }

            v21 = *(v12 + 2);
            v20 = *(v12 + 3);
            v22 = v21 + 1;
            if (v21 >= v20 >> 1)
            {
              v12 = sub_10015BF20((v20 > 1), v21 + 1, 1, v12);
            }

            *(v12 + 2) = v22;
            v12[v21 + 32] = 61;
            if ((v22 & 3) != 0)
            {
              v23 = *(v12 + 3);
              v24 = v21 + 2;
              if (v22 >= v23 >> 1)
              {
                v12 = sub_10015BF20((v23 > 1), v21 + 2, 1, v12);
              }

              *(v12 + 2) = v24;
              v12[v22 + 32] = 61;
              if ((v24 & 3) != 0)
              {
                v25 = *(v12 + 3);
                v26 = v21 + 3;
                if (v24 >= v25 >> 1)
                {
                  v12 = sub_10015BF20((v25 > 1), v21 + 3, 1, v12);
                }

                *(v12 + 2) = v26;
                v12[v24 + 32] = 61;
                if ((v26 & 3) != 0)
                {
                  v27 = *(v12 + 3);
                  if (v26 >= v27 >> 1)
                  {
                    v12 = sub_10015BF20((v27 > 1), v21 + 4, 1, v12);
                  }

                  *(v12 + 2) = v21 + 4;
                  v12[v26 + 32] = 61;
                }
              }
            }
          }

          v28 = sub_1003C5A60(v12, 0);
          if (v46)
          {

            return;
          }

          v29 = v28;

          v30 = v29[2];
          if (v30)
          {

            sub_10045D8C0();
            swift_allocError();
            *v44 = v30;
            swift_willThrow();

            return;
          }

          if (v30)
          {
            v31 = 0;
            v32 = v29 + 33;
            v33 = _swiftEmptyArrayStorage;
            while (1)
            {
              v34 = v29[2];
              if (v31 >= v34)
              {
                break;
              }

              v35 = v31 + 1;
              if (v31 + 1 == v30)
              {
                goto LABEL_56;
              }

              if (v35 >= v34)
              {
                goto LABEL_61;
              }

              v36 = *(v32 - 1);
              v37 = *v32;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v33 = sub_100460EE4(0, *(v33 + 2) + 1, 1, v33);
              }

              v39 = *(v33 + 2);
              v38 = *(v33 + 3);
              if (v39 >= v38 >> 1)
              {
                v33 = sub_100460EE4((v38 > 1), v39 + 1, 1, v33);
              }

              *(v33 + 2) = v39 + 1;
              *&v33[2 * v39 + 32] = v37 | (v36 << 8);
              v32 += 2;
              v31 = v35 + 1;
              if (v35 + 1 == v30)
              {
                goto LABEL_56;
              }
            }

            __break(1u);
LABEL_61:
            __break(1u);
LABEL_62:
            __break(1u);
            break;
          }

LABEL_56:

          sub_10000C9C0(&qword_1005DD108, &qword_1005093D8);
          sub_10045D914();
          sub_1002A73D8();
          v40 = sub_1004A5854();
          if (!v41)
          {
            goto LABEL_66;
          }

          v42 = v40;
          v43 = v41;

          v53._countAndFlagsBits = v42;
          v53._object = v43;
          sub_1004A5994(v53);

          v8 = v45;
        }

        else
        {
          if (*(v10 + v9) != 45)
          {
            v11 = v9 - 0xFFFFFFFFLL;
            v13 = v48 + v9;
            v12 = _swiftEmptyArrayStorage;
            while (v11)
            {
              v14 = *(*(v50 + 24) + v13);
              if (v14 == 44)
              {
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v12 = sub_10015BF20(0, *(v12 + 2) + 1, 1, v12);
                }

                v16 = *(v12 + 2);
                v18 = *(v12 + 3);
                v17 = v16 + 1;
                if (v16 >= v18 >> 1)
                {
                  v12 = sub_10015BF20((v18 > 1), v16 + 1, 1, v12);
                }

                LOBYTE(v14) = 47;
              }

              else
              {
                if (v14 == 45)
                {
                  goto LABEL_29;
                }

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v12 = sub_10015BF20(0, *(v12 + 2) + 1, 1, v12);
                }

                v16 = *(v12 + 2);
                v15 = *(v12 + 3);
                v17 = v16 + 1;
                if (v16 >= v15 >> 1)
                {
                  v12 = sub_10015BF20((v15 > 1), v16 + 1, 1, v12);
                }
              }

              *(v12 + 2) = v17;
              v12[v16 + 32] = v14;
              ++v11;
              ++v13;
              if (v49 + v11 == 1)
              {
                LODWORD(v11) = v47;
                goto LABEL_29;
              }
            }

            goto LABEL_62;
          }

          v8 += 2;
          if (v9 == -1)
          {
            goto LABEL_64;
          }

          if (v8 > v7)
          {
            goto LABEL_65;
          }

          v52._countAndFlagsBits = 38;
          v52._object = 0xE100000000000000;
          sub_1004A5994(v52);
        }
      }

      else
      {
        v51._countAndFlagsBits = sub_1004A58E4();
        sub_1004A5984(v51);

        ++v8;
      }

      v7 = v47;
      if (v8 == v47)
      {
        goto LABEL_2;
      }
    }

    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
  }
}

uint64_t sub_10045CF70(unint64_t *a1, unint64_t a2)
{
  if (qword_1005DB9D0 != -1)
  {
    goto LABEL_135;
  }

  while (1)
  {
    v4 = dword_1005DE398;
    v5 = word_1005DE39C;
    v6 = byte_1005DE39E;
    v80 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
    v81 = HIDWORD(qword_1005DE390);
    v82 = dword_1005DE398;
    v83 = word_1005DE39C;
    v84 = byte_1005DE39E;
    if ((a2 & 0x1000000000000000) != 0)
    {
      v7 = sub_1004A59E4();
    }

    else if ((a2 & 0x2000000000000000) != 0)
    {
      v7 = HIBYTE(a2) & 0xF;
    }

    else
    {
      v7 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (v7 <= v4 - (v6 | (v5 << 8)))
    {
    }

    else
    {

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        ByteBuffer._ensureAvailableCapacity(_:at:)(v7, 0);
      }

      else
      {
        v8 = variable initialization expression of Engine.isProcessingUpdates();
        ByteBuffer._copyStorageAndRebase(capacity:resetIndices:)(v7, v8 & 1);
      }
    }

    v9 = a1 & 0xFFFFFFFFFFFFLL;
    if ((a2 & 0x2000000000000000) != 0)
    {
      v9 = HIBYTE(a2) & 0xF;
    }

    if (!v9)
    {
      return v80;
    }

    v79 = 4 * v9;
    v10 = 15;
    v76 = a1;
    v77 = a2;
    while (1)
    {
      while (1)
      {
        v11 = v10;
        v13 = sub_1004A5A94();
        v14 = v12;
        if (v13 == 2573 && v12 == 0xE200000000000000 || (sub_1004A6D34() & 1) != 0)
        {
          goto LABEL_51;
        }

        if ((v14 & 0x2000000000000000) != 0)
        {
          v15 = HIBYTE(v14) & 0xF;
        }

        else
        {
          v15 = v13 & 0xFFFFFFFFFFFFLL;
        }

        if (!v15)
        {
          goto LABEL_131;
        }

        v16 = (v14 & 0x1000000000000000) != 0 ? sub_1004A5884() : sub_1004A6704(0) << 16;
        if (v16 >> 14 != 4 * v15)
        {
          goto LABEL_51;
        }

        v17 = sub_1001E11BC(v13, v14);
        if ((v17 & 0x100000000) != 0)
        {
          __break(1u);
LABEL_138:
          __break(1u);
        }

        if ((v17 & 0xFFFFFF80) != 0)
        {
LABEL_51:

          break;
        }

        v18 = sub_1001E11BC(v13, v14);
        if ((v18 & 0x100000000) != 0)
        {
          goto LABEL_138;
        }

        v19 = v18;

        if ((v19 & 0xFFFFFF00) != 0)
        {
          goto LABEL_132;
        }

        v20 = v19;
        if (v19 - 32 > 0x5E)
        {
          break;
        }

        v21 = v81 + 1;
        if (v81 == -1)
        {
          goto LABEL_133;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          if (v21 >= v82)
          {
            v22 = v21 - v82;
          }

          else
          {
            v22 = 0;
          }

          v23 = variable initialization expression of Engine.isProcessingUpdates();
          ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v22, v23 & 1);
        }

        ByteBuffer._ensureAvailableCapacity(_:at:)(1u, v81);
        swift_beginAccess();
        v24 = v84 | (v83 << 8);
        v25 = v82 - v24;
        if (v82 - v24 >= v81)
        {
          v25 = v81;
        }

        if (!v81)
        {
          v25 = 0;
        }

        *(*(v80 + 24) + v24 + v25) = v20;
        v26 = ++v81;
        if (v20 == 38)
        {
          v27 = v26 + 1;
          if (v26 == -1)
          {
            goto LABEL_134;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            if (v27 >= v82)
            {
              v28 = v27 - v82;
            }

            else
            {
              v28 = 0;
            }

            v29 = variable initialization expression of Engine.isProcessingUpdates();
            ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v28, v29 & 1);
          }

          ByteBuffer._ensureAvailableCapacity(_:at:)(1u, v26);
          swift_beginAccess();
          v30 = sub_1003B7140(v26, *(v80 + 24) + (v84 | (v83 << 8)), *(v80 + 24) + (v84 | (v83 << 8)) + v82 - (v84 | (v83 << 8)));
          if (v31)
          {
            *(v31 + v30) = 45;
          }

          v81 = v26 + 1;
        }

        v10 = sub_1004A5934();
        if (v79 <= v10 >> 14)
        {
          return v80;
        }
      }

      v32 = v11;
      if (v79 <= v11 >> 14)
      {
        v33 = _swiftEmptyArrayStorage;
      }

      else
      {
        v33 = _swiftEmptyArrayStorage;
        while (1)
        {
          v34 = v32;
          v35 = sub_1004A5A94();
          v37 = v36;
          v38 = sub_1004A5584();
          if ((v38 & 0x100) == 0 && v38 - 127 >= 0xFFFFFFA1)
          {
            break;
          }

          v39 = HIBYTE(v37) & 0xF;
          v85[0] = v35;
          v85[1] = v37;
          if ((v37 & 0x2000000000000000) == 0)
          {
            v39 = v35 & 0xFFFFFFFFFFFFLL;
          }

          v85[2] = 0;
          v85[3] = v39;
          v86 = 0;
          v87 = 1;
          v40 = sub_1004A5A44();
          if ((v40 & 0x10000) == 0)
          {
            LOWORD(v41) = v40;
            do
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v33 = sub_10015BF20(0, *(v33 + 2) + 1, 1, v33);
              }

              v43 = *(v33 + 2);
              v42 = *(v33 + 3);
              v44 = v42 >> 1;
              v45 = v43 + 1;
              if (v42 >> 1 <= v43)
              {
                v33 = sub_10015BF20((v42 > 1), v43 + 1, 1, v33);
                v42 = *(v33 + 3);
                v44 = v42 >> 1;
              }

              *(v33 + 2) = v45;
              v33[v43 + 32] = BYTE1(v41);
              if (v44 < (v43 + 2))
              {
                v33 = sub_10015BF20((v42 > 1), v43 + 2, 1, v33);
              }

              *(v33 + 2) = v43 + 2;
              v33[v45 + 32] = v41;
              v41 = sub_1004A5A44();
            }

            while ((v41 & 0x10000) == 0);
          }

          v32 = sub_1004A5934();
          if (v79 <= v32 >> 14)
          {
            goto LABEL_71;
          }
        }

        v32 = v34;
      }

LABEL_71:
      v46 = *(v33 + 2);
      v47 = v46 + 2;
      if (__OFADD__(v46, 2))
      {
        break;
      }

      v48 = v47 / 3;
      if ((v47 / 3 - 0x2000000000000000) >> 62 != 3)
      {
        goto LABEL_122;
      }

      v49 = 4 * v48;
      if (((4 * v48) & 0x8000000000000000) != 0)
      {
        goto LABEL_123;
      }

      v78 = v32;
      a1 = _swiftEmptyArrayStorage;
      if (v47 >= 3)
      {
        a1 = sub_1004A5C64();
        a1[2] = v49;
      }

      v85[0] = 0;
      sub_1003C511C(&unk_1005BB228, 256, &unk_1005BB348, 256, (v33 + 32), v46, (a1 + 4), v49, 0, v85);
      v50 = v85[0];
      if (v49 < v85[0])
      {
        goto LABEL_124;
      }

      a1[2] = v85[0];
      if (v50)
      {
        v85[0] = _swiftEmptyArrayStorage;
        sub_1001D606C(0, v50 & ~(v50 >> 63), 0);
        if (v50 < 1)
        {
          goto LABEL_130;
        }

        v51 = v85[0];
        v52 = *(v85[0] + 16);
        v53 = 32;
        do
        {
          if (*(a1 + v53) == 47)
          {
            v54 = 44;
          }

          else
          {
            v54 = *(a1 + v53);
          }

          v85[0] = v51;
          v55 = v51[3];
          if (v52 >= v55 >> 1)
          {
            sub_1001D606C((v55 > 1), v52 + 1, 1);
            v51 = v85[0];
          }

          v51[2] = v52 + 1;
          *(v51 + v52 + 32) = v54;
          ++v53;
          ++v52;
          --v50;
        }

        while (v50);

        a2 = v51[2];
        if (!a2)
        {
LABEL_96:
          a1 = _swiftEmptyArrayStorage;
          goto LABEL_97;
        }
      }

      else
      {

        v51 = _swiftEmptyArrayStorage;
        a2 = _swiftEmptyArrayStorage[2];
        if (!a2)
        {
          goto LABEL_96;
        }
      }

      v56 = (v51 + 4);
      a1 = _swiftEmptyArrayStorage;
      do
      {
        v60 = *v56++;
        v59 = v60;
        if (v60 != 61)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v85[0] = a1;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1001D606C(0, a1[2] + 1, 1);
            a1 = v85[0];
          }

          v58 = a1[2];
          v57 = a1[3];
          if (v58 >= v57 >> 1)
          {
            sub_1001D606C((v57 > 1), v58 + 1, 1);
            a1 = v85[0];
          }

          a1[2] = v58 + 1;
          *(a1 + v58 + 32) = v59;
        }

        --a2;
      }

      while (a2);
LABEL_97:

      LOBYTE(v85[0]) = 38;
      v62 = v81 + 1;
      if (v81 == -1)
      {
        goto LABEL_125;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        if (v62 >= v82)
        {
          v63 = v62 - v82;
        }

        else
        {
          v63 = 0;
        }

        v64 = variable initialization expression of Engine.isProcessingUpdates();
        ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v63, v64 & 1);
      }

      ByteBuffer._ensureAvailableCapacity(_:at:)(1u, v81);
      ByteBuffer._setBytesAssumingUniqueBufferAccess(_:at:)(v85, v85 + 1, v81);
      v65 = v81 + 1;
      v66 = a1[2];
      v67 = v81 + 1 + v66;
      if (__CFADD__(v81 + 1, v66))
      {
        goto LABEL_126;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        if (v67 >= v82)
        {
          v68 = v67 - v82;
        }

        else
        {
          v68 = 0;
        }

        v69 = variable initialization expression of Engine.isProcessingUpdates();
        ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v68, v69 & 1);
      }

      if (HIDWORD(v66))
      {
        goto LABEL_127;
      }

      ByteBuffer._ensureAvailableCapacity(_:at:)(v66, v65);
      ByteBuffer._setBytesAssumingUniqueBufferAccess(_:at:)(a1 + 4, a1 + v66 + 32, v65);

      v70 = __CFADD__(v65, v66);
      v71 = v65 + v66;
      if (v70)
      {
        goto LABEL_128;
      }

      LOBYTE(v85[0]) = 45;
      v72 = v71 + 1;
      if (v71 == -1)
      {
        goto LABEL_129;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        if (v72 >= v82)
        {
          v73 = v72 - v82;
        }

        else
        {
          v73 = 0;
        }

        v74 = variable initialization expression of Engine.isProcessingUpdates();
        ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v73, v74 & 1);
      }

      ByteBuffer._ensureAvailableCapacity(_:at:)(1u, v71);
      ByteBuffer._setBytesAssumingUniqueBufferAccess(_:at:)(v85, v85 + 1, v71);
      a1 = v76;
      a2 = v77;
      v81 = v71 + 1;
      v10 = v78;
      if (v79 <= v78 >> 14)
      {
        return v80;
      }
    }

    __break(1u);
LABEL_122:
    __break(1u);
LABEL_123:
    __break(1u);
LABEL_124:
    __break(1u);
LABEL_125:
    __break(1u);
    __break(1u);
LABEL_126:
    __break(1u);
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    __break(1u);
LABEL_134:
    __break(1u);
    __break(1u);
LABEL_135:
    swift_once();
  }
}

unint64_t sub_10045D8C0()
{
  result = qword_1005DD100;
  if (!qword_1005DD100)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ModifiedUTF7.OddByteCountError, &type metadata for ModifiedUTF7.OddByteCountError, v0, v1);
    atomic_store(result, &qword_1005DD100);
  }

  return result;
}

unint64_t sub_10045D914()
{
  result = qword_1005DD110;
  if (!qword_1005DD110)
  {
    v3 = sub_10000DEFC(&qword_1005DD108, &qword_1005093D8);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v3, v0, v1);
    atomic_store(result, &qword_1005DD110);
  }

  return result;
}

void sub_10045D97C(uint64_t a1)
{
  v3 = sub_10045DD28(0, *a1, v1);
  v4 = *(v1 + 20);
  v5 = sub_1002F178C(0x20uLL, 0xE100000000000000, v1 + 8, v4);
  if (v6)
  {
    v7._countAndFlagsBits = 32;
    v7._object = 0xE100000000000000;
    v5 = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
  }

  v8 = *(v1 + 20);
  v9 = __CFADD__(v8, v5);
  v10 = v8 + v5;
  if (v9)
  {
    __break(1u);
    goto LABEL_22;
  }

  *(v1 + 20) = v10;
  v11 = __OFADD__(v3, v5);
  v12 = v3 + v5;
  if (v11)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v13 = sub_1004499A8(*(a1 + 8), *(a1 + 16));
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v15 = *(a1 + 32);
  if (v15)
  {
    v16 = *(a1 + 24);
    v17 = *(a1 + 40);
    v18 = *(a1 + 48);
    v39 = *(a1 + 72);
    v40 = *(a1 + 56);
    v19 = *(v1 + 20);
    v20 = sub_1002F178C(0x20uLL, 0xE100000000000000, v1 + 8, v19);
    if (v21)
    {
      v22._countAndFlagsBits = 32;
      v22._object = 0xE100000000000000;
      v20 = ByteBuffer._setStringSlowpath(_:at:)(v22, v19);
    }

    v23 = v20;
    v24 = *(v1 + 20);
    v9 = __CFADD__(v24, v20);
    v25 = v24 + v20;
    if (v9)
    {
      goto LABEL_25;
    }

    *(v1 + 20) = v25;
    sub_1004633BC(v16, v15, v17);
    v27 = v26;
    if (v40 == 1)
    {
      v28 = 0;
    }

    else
    {
      v30 = *(v1 + 20);
      v31 = sub_1002F178C(0x20uLL, 0xE100000000000000, v1 + 8, v30);
      if (v32)
      {
        v33._countAndFlagsBits = 32;
        v33._object = 0xE100000000000000;
        v31 = ByteBuffer._setStringSlowpath(_:at:)(v33, v30);
      }

      v34 = v31;
      v35 = *(v1 + 20);
      v9 = __CFADD__(v35, v31);
      v36 = v35 + v31;
      if (v9)
      {
        goto LABEL_28;
      }

      *(v1 + 20) = v36;
      v41 = v18;
      v42 = v40;
      v43 = v39;
      sub_1003E2110(&v41);
      v28 = v34 + v37;
      if (__OFADD__(v34, v37))
      {
LABEL_29:
        __break(1u);
        return;
      }
    }

    v11 = __OFADD__(v27, v28);
    v38 = v27 + v28;
    if (v11)
    {
      goto LABEL_26;
    }

    v11 = __OFADD__(v23, v38);
    v29 = v23 + v38;
    if (v11)
    {
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }
  }

  else
  {
    v29 = 0;
  }

  if (__OFADD__(v14, v29))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }
}

double BodyStructure.Multipart.Extension.init(parameters:dispositionAndLanguage:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  *&v12[8] = xmmword_1004B1230;
  memset(&v12[24], 0, 56);
  *&v11 = a1;
  *(&v11 + 1) = a2;
  *v12 = a3;
  sub_10027F8A8(a4, &v12[8], &qword_1005DBCD8, &qword_1004FE5F0);
  v15 = *&v12[16];
  v16 = *&v12[32];
  v17 = *&v12[48];
  v18 = *&v12[64];
  v13 = v11;
  v14 = *v12;
  v19[2] = *&v12[16];
  v19[3] = *&v12[32];
  v19[4] = *&v12[48];
  v19[5] = *&v12[64];
  v19[0] = v11;
  v19[1] = *v12;
  sub_100400058(&v13, &v10);
  sub_1004000B4(v19);
  v6 = v16;
  a5[2] = v15;
  a5[3] = v6;
  v7 = v18;
  a5[4] = v17;
  a5[5] = v7;
  result = *&v13;
  v9 = v14;
  *a5 = v13;
  a5[1] = v9;
  return result;
}

double BodyStructure.Multipart.init(parts:mediaSubtype:extension:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  memset(&v12[8], 0, 96);
  *&v11 = a1;
  *(&v11 + 1) = a2;
  *v12 = a3;
  sub_10027F8A8(a4, &v12[8], &qword_1005DBCC8, &qword_1004FE5E0);
  v17 = *&v12[48];
  v18 = *&v12[64];
  v19 = *&v12[80];
  v20 = *&v12[96];
  v13 = v11;
  v14 = *v12;
  v15 = *&v12[16];
  v16 = *&v12[32];
  v22 = *&v12[96];
  v21[5] = *&v12[64];
  v21[6] = *&v12[80];
  v21[3] = *&v12[32];
  v21[4] = *&v12[48];
  v21[1] = *v12;
  v21[2] = *&v12[16];
  v21[0] = v11;
  sub_100259A40(&v13, &v10);
  sub_100267AA8(v21);
  v6 = v18;
  *(a5 + 64) = v17;
  *(a5 + 80) = v6;
  *(a5 + 96) = v19;
  *(a5 + 112) = v20;
  v7 = v14;
  *a5 = v13;
  *(a5 + 16) = v7;
  result = *&v15;
  v9 = v16;
  *(a5 + 32) = v15;
  *(a5 + 48) = v9;
  return result;
}

uint64_t sub_10045DD28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a2 + 16);
  if (!v6)
  {
    return a1;
  }

  for (i = (a2 + 32); ; i = (i + 184))
  {
    v9 = i[9];
    v106 = i[8];
    v107 = v9;
    v108 = i[10];
    v109 = *(i + 176);
    v10 = i[5];
    v102 = i[4];
    v103 = v10;
    v11 = i[7];
    v104 = i[6];
    v105 = v11;
    v12 = i[1];
    v98 = *i;
    v99 = v12;
    v13 = i[3];
    v100 = i[2];
    v101 = v13;
    v14 = *(a3 + 20);
    sub_1000510B4(&v98, v93);
    v15 = v4;
    result = sub_1002F178C(0x28uLL, 0xE100000000000000, a3 + 8, v14);
    v17 = v4;
    if (v18)
    {
      v19._countAndFlagsBits = 40;
      v19._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v19, v14);
    }

    v20 = result;
    v21 = *(a3 + 20);
    v22 = __CFADD__(v21, result);
    v23 = v21 + result;
    if (v22)
    {
      break;
    }

    *(a3 + 20) = v23;
    v96[8] = v106;
    v96[9] = v107;
    v96[10] = v108;
    v97 = v109;
    v96[4] = v102;
    v96[5] = v103;
    v96[6] = v104;
    v96[7] = v105;
    v96[0] = v98;
    v96[1] = v99;
    v96[2] = v100;
    v96[3] = v101;
    if (sub_10000FE88(v96) == 1)
    {
      v24 = UInt32.init(_:)(v96);
      v25 = *(v24 + 80);
      v120[4] = *(v24 + 64);
      v120[5] = v25;
      v120[6] = *(v24 + 96);
      v121 = *(v24 + 112);
      v26 = *(v24 + 16);
      v120[0] = *v24;
      v120[1] = v26;
      v27 = *(v24 + 48);
      v120[2] = *(v24 + 32);
      v120[3] = v27;
      result = sub_10045D97C(v120);
      v28 = v20 + result;
      if (__OFADD__(v20, result))
      {
        goto LABEL_44;
      }
    }

    else
    {
      v122 = v15;
      v29 = UInt32.init(_:)(v96);
      v30 = v29;
      v31 = *v29;
      v32 = *v29 >> 62;
      if (v32)
      {
        v33 = (v31 & 0x3FFFFFFFFFFFFFFFLL);
        if (v32 == 1)
        {
          memcpy(__dst, v33 + 2, sizeof(__dst));
          v34 = *(v30 + 24);
          v35 = *(v30 + 56);
          v118[2] = *(v30 + 40);
          v118[3] = v35;
          v118[4] = *(v30 + 72);
          v36 = *(v30 + 8);
          v118[1] = v34;
          v118[0] = v36;
          sub_100259990(__dst, v93);
          sub_10049AF5C(__dst, v118);
          v38 = v37;
          result = sub_1002599EC(__dst);
        }

        else
        {
          v63 = v33[2];
          v64 = v33[3];
          v65 = v33[4];
          v66 = *(v29 + 24);
          v67 = *(v29 + 56);
          v119[2] = *(v29 + 40);
          v119[3] = v67;
          v119[4] = *(v29 + 72);
          v68 = *(v29 + 8);
          v119[1] = v66;
          v119[0] = v68;

          sub_10049B274(v63, v64, v65, v119);
          v38 = v69;
        }
      }

      else
      {
        v40 = *(v31 + 16);
        v39 = *(v31 + 24);
        v41 = *(v31 + 40);
        v91 = *(v31 + 32);
        v42 = *(v29 + 24);
        v43 = *(v29 + 56);
        v116[2] = *(v29 + 40);
        v116[3] = v43;
        v116[4] = *(v29 + 72);
        v116[0] = *(v29 + 8);
        v116[1] = v42;

        v92 = v41;

        v44 = sub_1004498E0(v40, v39);
        v45 = *(a3 + 20);
        v46 = v122;
        result = sub_1002F178C(0x20uLL, 0xE100000000000000, a3 + 8, v45);
        v122 = v46;
        if (v47)
        {
          v48._countAndFlagsBits = 32;
          v48._object = 0xE100000000000000;
          result = ByteBuffer._setStringSlowpath(_:at:)(v48, v45);
        }

        v49 = *(a3 + 20);
        v22 = __CFADD__(v49, result);
        v50 = v49 + result;
        if (v22)
        {
          goto LABEL_49;
        }

        *(a3 + 20) = v50;
        v51 = v44 + result;
        if (__OFADD__(v44, result))
        {
          goto LABEL_50;
        }

        result = sub_1004499A8(v91, v92);
        v52 = __OFADD__(v51, result);
        v53 = v51 + result;
        if (v52)
        {
          goto LABEL_51;
        }

        v54 = *(a3 + 20);
        v55 = v122;
        result = sub_1002F178C(0x20uLL, 0xE100000000000000, a3 + 8, v54);
        v122 = v55;
        if (v56)
        {
          v57._countAndFlagsBits = 32;
          v57._object = 0xE100000000000000;
          result = ByteBuffer._setStringSlowpath(_:at:)(v57, v54);
        }

        v58 = *(a3 + 20);
        v22 = __CFADD__(v58, result);
        v59 = v58 + result;
        if (v22)
        {
          goto LABEL_52;
        }

        *(a3 + 20) = v59;
        v52 = __OFADD__(v53, result);
        v60 = v53 + result;
        if (v52)
        {
          goto LABEL_53;
        }

        sub_1003F0B84(v116);
        v62 = v61;

        v52 = __OFADD__(v60, v62);
        v38 = v60 + v62;
        if (v52)
        {
          goto LABEL_54;
        }
      }

      v70 = *(v30 + 96);
      if (v70 != 1)
      {
        v110[0] = *(v30 + 88);
        v110[1] = v70;
        v71 = *(v30 + 120);
        v72 = *(v30 + 152);
        v113 = *(v30 + 136);
        v114 = v72;
        v115 = *(v30 + 168);
        v111 = *(v30 + 104);
        v112 = v71;
        v73 = *(a3 + 20);
        v74 = *(v30 + 136);
        v93[2] = *(v30 + 120);
        v93[3] = v74;
        v93[4] = *(v30 + 152);
        v94 = *(v30 + 168);
        v75 = *(v30 + 104);
        v93[0] = *(v30 + 88);
        v93[1] = v75;
        sub_1003FF7C8(v93, v95);
        v76 = v122;
        result = sub_1002F178C(0x20uLL, 0xE100000000000000, a3 + 8, v73);
        v122 = v76;
        if (v77)
        {
          v78._countAndFlagsBits = 32;
          v78._object = 0xE100000000000000;
          result = ByteBuffer._setStringSlowpath(_:at:)(v78, v73);
        }

        v79 = *(a3 + 20);
        v22 = __CFADD__(v79, result);
        v80 = v79 + result;
        if (v22)
        {
          goto LABEL_46;
        }

        *(a3 + 20) = v80;
        v52 = __OFADD__(v38, result);
        v81 = v38 + result;
        if (v52)
        {
          goto LABEL_47;
        }

        sub_10049B448(v110);
        v83 = v82;
        result = sub_100025F40(v30 + 88, &qword_1005DBCE8, &qword_1004FE600);
        v52 = __OFADD__(v81, v83);
        v38 = v81 + v83;
        if (v52)
        {
          goto LABEL_48;
        }
      }

      v28 = v20 + v38;
      v17 = v122;
      if (__OFADD__(v20, v38))
      {
        goto LABEL_45;
      }
    }

    v84 = *(a3 + 20);
    result = sub_1002F178C(0x29uLL, 0xE100000000000000, a3 + 8, v84);
    v4 = v17;
    if (v85)
    {
      v86._countAndFlagsBits = 41;
      v86._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v86, v84);
    }

    v87 = result;
    v88 = *(a3 + 20);
    v22 = __CFADD__(v88, result);
    v89 = v88 + result;
    if (v22)
    {
      goto LABEL_41;
    }

    *(a3 + 20) = v89;
    result = sub_100051110(&v98);
    v90 = v28 + v87;
    if (__OFADD__(v28, v87))
    {
      goto LABEL_42;
    }

    v52 = __OFADD__(a1, v90);
    a1 += v90;
    if (v52)
    {
      goto LABEL_43;
    }

    if (!--v6)
    {
      return a1;
    }
  }

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
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
  return result;
}

void BodyStructure.Multipart.hash(into:)(uint64_t a1)
{
  sub_1003AF454(a1, *v1);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  v3 = v1[4];
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = v1[5];
  v19 = v1[9];
  v13 = v1[10];
  v17 = v1[11];
  v18 = v1[7];
  v15 = v1[13];
  v16 = v1[12];
  v14 = v1[14];
  sub_1004A6EC4(1u);
  v5 = *(v4 + 16);
  sub_1004A6EB4(v5);

  if (v5)
  {
    v6 = 0;
    v7 = v4 + 40;
    v8 = v3 + 40;
    while (v6 < *(v3 + 16))
    {
      ++v6;

      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      v7 += 16;
      v8 += 16;
      if (v5 == v6)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

LABEL_6:

  if (v18 == 1)
  {
LABEL_7:
    sub_1004A6EC4(0);
    return;
  }

  sub_1004A6EC4(1u);
  if (v18)
  {
    sub_1004A6EC4(1u);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    v9 = *(v13 + 16);
    sub_1004A6EB4(v9);

    if (v9)
    {
      v10 = 0;
      v11 = v13 + 40;
      v12 = v19 + 40;
      while (v10 < *(v19 + 16))
      {
        ++v10;

        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

        v11 += 16;
        v12 += 16;
        if (v9 == v10)
        {
          goto LABEL_13;
        }
      }

LABEL_19:
      __break(1u);
      return;
    }

LABEL_13:
  }

  else
  {
    sub_1004A6EC4(0);
  }

  sub_1003B0794(a1, v17, v16, v15, v14);
}

Swift::Int BodyStructure.Multipart.hashValue.getter()
{
  sub_1004A6E94();
  BodyStructure.Multipart.hash(into:)(v1);
  return sub_1004A6F14();
}

Swift::Int sub_10045E580(uint64_t a1)
{
  sub_1004A6E94();
  BodyStructure.Multipart.hash(into:)(v2);
  return sub_1004A6F14();
}

BOOL sub_10045E5BC(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 80);
  v12[4] = *(a1 + 64);
  v12[5] = v2;
  v12[6] = *(a1 + 96);
  v13 = *(a1 + 112);
  v3 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v3;
  v4 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v4;
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[3];
  v14[2] = a2[2];
  v14[3] = v7;
  v14[0] = v5;
  v14[1] = v6;
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  v15 = *(a2 + 14);
  v14[5] = v9;
  v14[6] = v10;
  v14[4] = v8;
  return _s12NIOIMAPCore213BodyStructureO9MultipartV23__derived_struct_equalsySbAE_AEtFZ_0(v12, v14);
}

void BodyStructure.Multipart.Extension.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 8);
  v2 = *(v1 + 16);
  v24 = v2;
  v4 = *(v2 + 16);
  sub_1004A6EB4(v4);

  if (v4)
  {
    v6 = 0;
    v7 = v2 + 40;
    v8 = v3 + 40;
    while (v6 < *(v3 + 16))
    {
      ++v6;

      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      v7 += 16;
      v8 += 16;
      if (v4 == v6)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_5:
  sub_100025F40(&v24, &qword_1005D3FD0, &qword_1004DF4C0);
  v9 = v22[4];
  if (v9 == 1)
  {
    sub_1004A6EC4(0);
    return;
  }

  v10 = v22[7];
  v23 = v22[6];
  v11 = v22[8];
  v12 = v22[9];
  v13 = v22[10];
  v14 = v22[11];
  sub_1004A6EC4(1u);
  if (v9)
  {
    v19 = v14;
    v20 = v13;
    v21 = v12;
    sub_1004A6EC4(1u);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    v15 = *(v10 + 16);
    sub_1004A6EB4(v15);

    if (v15)
    {
      v16 = 0;
      v17 = v10 + 40;
      v18 = v23 + 40;
      while (v16 < *(v23 + 16))
      {
        ++v16;

        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

        v17 += 16;
        v18 += 16;
        if (v15 == v16)
        {
          goto LABEL_12;
        }
      }

LABEL_17:
      __break(1u);
      return;
    }

LABEL_12:

    v12 = v21;
    v14 = v19;
    v13 = v20;
  }

  else
  {
    sub_1004A6EC4(0);
  }

  sub_1003B0794(a1, v11, v12, v13, v14);
}

uint64_t BodyStructure.Multipart.Extension.hashValue.getter()
{
  sub_1004A6E94();
  v2 = v0[1];
  v1 = v0[2];
  v23 = v1;
  v3 = *(v1 + 16);
  sub_1004A6EB4(v3);

  if (v3)
  {
    v5 = 0;
    v6 = v1 + 40;
    v7 = v2 + 40;
    while (v5 < *(v2 + 16))
    {
      ++v5;

      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      v6 += 16;
      v7 += 16;
      if (v3 == v5)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_5:
  sub_100025F40(&v23, &qword_1005D3FD0, &qword_1004DF4C0);
  v8 = v0[4];
  if (v8 == 1)
  {
    sub_1004A6EC4(0);
    return sub_1004A6F14();
  }

  v9 = v0[6];
  v10 = v0[7];
  v11 = v0[8];
  v12 = v0[9];
  v14 = v0[10];
  v13 = v0[11];
  sub_1004A6EC4(1u);
  if (!v8)
  {
    sub_1004A6EC4(0);
    goto LABEL_14;
  }

  v19 = v13;
  v20 = v12;
  v21 = v11;
  sub_1004A6EC4(1u);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  v15 = *(v10 + 16);
  sub_1004A6EB4(v15);

  if (!v15)
  {
LABEL_12:

    v12 = v20;
    v11 = v21;
    v13 = v19;
LABEL_14:
    sub_1003B0794(v22, v11, v12, v14, v13);
    return sub_1004A6F14();
  }

  v16 = 0;
  v17 = v10 + 40;
  v18 = v9 + 40;
  while (v16 < *(v9 + 16))
  {
    ++v16;

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

    v17 += 16;
    v18 += 16;
    if (v15 == v16)
    {
      goto LABEL_12;
    }
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_10045EB08(uint64_t a1)
{
  v3 = v1[4];
  v4 = v1[6];
  v5 = v1[7];
  v6 = v1[8];
  v7 = v1[9];
  v8 = v1[10];
  v9 = v1[11];
  sub_1003A1364(a1, v1[1], v1[2]);
  if (v3 == 1)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    if (v3)
    {
      sub_1004A6EC4(1u);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      sub_1003A1364(a1, v4, v5);
    }

    else
    {
      sub_1004A6EC4(0);
    }

    sub_1003B0794(a1, v6, v7, v8, v9);
  }
}

Swift::Int sub_10045EC00(uint64_t a1)
{
  v3 = v1[1];
  v2 = v1[2];
  v4 = v1[4];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[9];
  v11 = v1[8];
  v8 = v1[10];
  v9 = v1[11];
  sub_1004A6E94();
  sub_1003A1364(v12, v3, v2);
  if (v4 == 1)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    if (v4)
    {
      sub_1004A6EC4(1u);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      sub_1003A1364(v12, v5, v6);
    }

    else
    {
      sub_1004A6EC4(0);
    }

    sub_1003B0794(v12, v11, v7, v8, v9);
  }

  return sub_1004A6F14();
}

BOOL sub_10045ECF0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v9[3] = v2;
  v3 = a1[5];
  v9[4] = a1[4];
  v9[5] = v3;
  v4 = a1[1];
  v9[0] = *a1;
  v9[1] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  return _s12NIOIMAPCore213BodyStructureO9MultipartV9ExtensionV23__derived_struct_equalsySbAG_AGtFZ_0(v9, v10);
}

BOOL _s12NIOIMAPCore213BodyStructureO9MultipartV9ExtensionV23__derived_struct_equalsySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (sub_10020FB40(*(a1 + 8), *(a2 + 8)) & 1) != 0 && (sub_10020FB40(v4, v5))
  {
    v6 = *(a1 + 40);
    v7 = *(a1 + 72);
    v40[2] = *(a1 + 56);
    v40[3] = v7;
    v41 = *(a1 + 88);
    v40[0] = *(a1 + 24);
    v40[1] = v6;
    v8 = *(a2 + 40);
    v9 = *(a2 + 72);
    v38[2] = *(a2 + 56);
    v38[3] = v9;
    v39 = *(a2 + 88);
    v38[0] = *(a2 + 24);
    v38[1] = v8;
    v10 = v40[0];
    if (*(&v40[0] + 1) == 1)
    {
      if (*(&v38[0] + 1) == 1)
      {
        v11 = 1;
        *&v28 = *&v40[0];
        *(&v28 + 1) = 1;
        v12 = *(a1 + 56);
        v29 = *(a1 + 40);
        v30 = v12;
        v31 = *(a1 + 72);
        v32 = *(a1 + 88);
        sub_10000E268(v40, v42, &qword_1005DBCD8, &qword_1004FE5F0);
        sub_10000E268(v38, v42, &qword_1005DBCD8, &qword_1004FE5F0);
        v13 = &v28;
LABEL_11:
        sub_100025F40(v13, &qword_1005DBCD8, &qword_1004FE5F0);
        return v11;
      }
    }

    else if (*(&v38[0] + 1) != 1)
    {
      v21 = v38[0];
      v16 = *(a2 + 56);
      v22 = *(a2 + 40);
      v23 = v16;
      v24 = *(a2 + 72);
      v25 = *(a2 + 88);
      v32 = v25;
      v30 = v16;
      v31 = v24;
      v28 = v38[0];
      v29 = v22;
      v17 = *(a1 + 40);
      v18 = *(a1 + 56);
      v19 = *(a1 + 72);
      v43 = *(a1 + 88);
      v42[2] = v18;
      v42[3] = v19;
      v42[1] = v17;
      v42[0] = v40[0];
      sub_10000E268(v40, v26, &qword_1005DBCD8, &qword_1004FE5F0);
      sub_10000E268(v38, v26, &qword_1005DBCD8, &qword_1004FE5F0);
      v11 = _s12NIOIMAPCore213BodyStructureO22DispositionAndLanguageV23__derived_struct_equalsySbAE_AEtFZ_0(v42, &v28);
      sub_100025F40(&v21, &qword_1005DBCD8, &qword_1004FE5F0);
      v26[0] = v10;
      v20 = *(a1 + 56);
      v26[1] = *(a1 + 40);
      v26[2] = v20;
      v26[3] = *(a1 + 72);
      v27 = *(a1 + 88);
      v13 = v26;
      goto LABEL_11;
    }

    v28 = v40[0];
    v15 = *(a1 + 56);
    v29 = *(a1 + 40);
    v30 = v15;
    v31 = *(a1 + 72);
    v32 = *(a1 + 88);
    v33 = v38[0];
    v34 = *(a2 + 40);
    v35 = *(a2 + 56);
    v36 = *(a2 + 72);
    v37 = *(a2 + 88);
    sub_10000E268(v40, v42, &qword_1005DBCD8, &qword_1004FE5F0);
    sub_10000E268(v38, v42, &qword_1005DBCD8, &qword_1004FE5F0);
    sub_100025F40(&v28, &qword_1005DBCE0, &qword_1004FE5F8);
    return 0;
  }

  else
  {
    return 0;
  }
}

BOOL _s12NIOIMAPCore213BodyStructureO9MultipartV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_10039C870(*a1) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v4 && (sub_1004A6D34() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 72);
  v49[2] = *(a1 + 56);
  v49[3] = v5;
  v6 = *(a1 + 104);
  v49[4] = *(a1 + 88);
  v49[5] = v6;
  v7 = *(a1 + 40);
  v49[0] = *(a1 + 24);
  v49[1] = v7;
  v8 = *(a2 + 72);
  v48[2] = *(a2 + 56);
  v48[3] = v8;
  v9 = *(a2 + 104);
  v48[4] = *(a2 + 88);
  v48[5] = v9;
  v10 = *(a2 + 40);
  v48[0] = *(a2 + 24);
  v48[1] = v10;
  v11 = v49[0];
  if (!*(&v49[0] + 1))
  {
    if (!*(&v48[0] + 1))
    {
      v36 = *&v49[0];
      v27 = *(a1 + 56);
      v28 = *(a1 + 88);
      v39 = *(a1 + 72);
      v40 = v28;
      v41 = *(a1 + 104);
      v37 = *(a1 + 40);
      v38 = v27;
      sub_10000E268(v49, v50, &qword_1005DBCC8, &qword_1004FE5E0);
      sub_10000E268(v48, v50, &qword_1005DBCC8, &qword_1004FE5E0);
      sub_100025F40(&v36, &qword_1005DBCC8, &qword_1004FE5E0);
      return 1;
    }

    goto LABEL_11;
  }

  if (!*(&v48[0] + 1))
  {
LABEL_11:
    v36 = v49[0];
    v21 = *(a1 + 56);
    v22 = *(a1 + 88);
    v39 = *(a1 + 72);
    v40 = v22;
    v41 = *(a1 + 104);
    v37 = *(a1 + 40);
    v38 = v21;
    v42 = v48[0];
    v23 = *(a2 + 104);
    v24 = *(a2 + 72);
    v46 = *(a2 + 88);
    v47 = v23;
    v25 = *(a2 + 40);
    v44 = *(a2 + 56);
    v45 = v24;
    v43 = v25;
    sub_10000E268(v49, v50, &qword_1005DBCC8, &qword_1004FE5E0);
    sub_10000E268(v48, v50, &qword_1005DBCC8, &qword_1004FE5E0);
    sub_100025F40(&v36, &qword_1005DBCD0, &qword_1004FE5E8);
    return 0;
  }

  v29 = v48[0];
  v12 = *(a2 + 56);
  v13 = *(a2 + 88);
  v32 = *(a2 + 72);
  v33 = v13;
  v34 = *(a2 + 104);
  v30 = *(a2 + 40);
  v31 = v12;
  v40 = v13;
  v41 = v34;
  v38 = v12;
  v39 = v32;
  v36 = v48[0];
  v37 = v30;
  v14 = *(a1 + 40);
  v15 = *(a1 + 104);
  v16 = *(a1 + 72);
  v50[4] = *(a1 + 88);
  v50[5] = v15;
  v17 = *(a1 + 56);
  v50[1] = v14;
  v50[2] = v17;
  v50[3] = v16;
  v50[0] = v49[0];
  sub_10000E268(v49, v35, &qword_1005DBCC8, &qword_1004FE5E0);
  sub_10000E268(v48, v35, &qword_1005DBCC8, &qword_1004FE5E0);
  v18 = _s12NIOIMAPCore213BodyStructureO9MultipartV9ExtensionV23__derived_struct_equalsySbAG_AGtFZ_0(v50, &v36);
  sub_100025F40(&v29, &qword_1005DBCC8, &qword_1004FE5E0);
  v35[0] = v11;
  v19 = *(a1 + 56);
  v20 = *(a1 + 88);
  v35[3] = *(a1 + 72);
  v35[4] = v20;
  v35[5] = *(a1 + 104);
  v35[1] = *(a1 + 40);
  v35[2] = v19;
  sub_100025F40(v35, &qword_1005DBCC8, &qword_1004FE5E0);
  return v18;
}

unint64_t sub_10045F2E0()
{
  result = qword_1005DD118;
  if (!qword_1005DD118)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BodyStructure.Multipart, &type metadata for BodyStructure.Multipart, v0, v1);
    atomic_store(result, &qword_1005DD118);
  }

  return result;
}

unint64_t sub_10045F338()
{
  result = qword_1005DD120;
  if (!qword_1005DD120)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BodyStructure.Multipart.Extension, &type metadata for BodyStructure.Multipart.Extension, v0, v1);
    atomic_store(result, &qword_1005DD120);
  }

  return result;
}

uint64_t sub_10045F39C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_10045F3E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10045F44C(uint64_t a1)
{
  v2 = v1;
  if (!*(a1 + 16))
  {
    goto LABEL_20;
  }

  v35 = a1;
  v4 = *(v1 + 20);
  result = sub_1002F178C(0, 0xE000000000000000, v1 + 8, v4);
  if (v6)
  {
    v7._countAndFlagsBits = 0;
    v7._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
  }

  v8 = result;
  v9 = *(v1 + 20);
  v10 = (v9 + result);
  if (__CFADD__(v9, result))
  {
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  *(v1 + 20) = v10;
  result = sub_1002F178C(0x28uLL, 0xE100000000000000, v1 + 8, v10);
  if (v11)
  {
    v12._countAndFlagsBits = 40;
    v12._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v12, v10);
  }

  v13 = *(v1 + 20);
  v14 = __CFADD__(v13, result);
  v15 = v13 + result;
  if (v14)
  {
    goto LABEL_26;
  }

  *(v1 + 20) = v15;
  v16 = v8 + result;
  if (__OFADD__(v8, result))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  __chkstk_darwin(result);
  v34[2] = sub_10045F690;
  v34[3] = 0;
  v34[4] = v2;
  v34[5] = &v35;
  v34[6] = 0;
  v34[7] = 0xE000000000000000;
  result = sub_100452F74(0, sub_10045F750, v34, a1);
  v17 = v16 + result;
  if (__OFADD__(v16, result))
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v18 = *(v2 + 20);
  result = sub_1002F178C(0x29uLL, 0xE100000000000000, v2 + 8, v18);
  if (v19)
  {
    v20._countAndFlagsBits = 41;
    v20._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v20, v18);
  }

  v21 = *(v2 + 20);
  v22 = (v21 + result);
  if (__CFADD__(v21, result))
  {
    goto LABEL_29;
  }

  *(v2 + 20) = v22;
  v23 = __OFADD__(v17, result);
  v24 = v17 + result;
  if (v23)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    return result;
  }

  result = sub_1002F178C(0, 0xE000000000000000, v2 + 8, v22);
  if (v25)
  {
    v26._countAndFlagsBits = 0;
    v26._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v26, v22);
  }

  v27 = *(v2 + 20);
  v14 = __CFADD__(v27, result);
  v28 = v27 + result;
  if (v14)
  {
    goto LABEL_31;
  }

  *(v2 + 20) = v28;
  v23 = __OFADD__(v24, result);
  result += v24;
  if (!v23)
  {
    return result;
  }

  __break(1u);
LABEL_20:
  v29 = *(v2 + 20);
  result = sub_1002F178C(0x4C494EuLL, 0xE300000000000000, v2 + 8, v29);
  if (v30)
  {
    v31._countAndFlagsBits = 4999502;
    v31._object = 0xE300000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v31, v29);
  }

  v32 = *(v2 + 20);
  v14 = __CFADD__(v32, result);
  v33 = v32 + result;
  if (v14)
  {
    goto LABEL_32;
  }

  *(v2 + 20) = v33;
  return result;
}

uint64_t sub_10045F690(_OWORD *a1)
{
  v1 = a1[1];
  v4[0] = *a1;
  v4[1] = v1;
  v2 = a1[3];
  v4[2] = a1[2];
  v4[3] = v2;
  return sub_10045F80C(v4);
}

uint64_t sub_10045F6D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(__int128 *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X8>, unint64_t a8@<X6>, void *a9@<X7>)
{
  v11 = *a1;
  v12 = *(a2 + 8);
  v13 = *(a2 + 24);
  v14 = *(a2 + 28);
  v15 = *(a2 + 30);
  v16 = *(a2 + 48);
  v17 = *a6;
  v19[0] = *a2;
  v19[1] = v12;
  v19[2] = *(a2 + 16);
  v20 = v13;
  v21 = v14;
  v22 = v15;
  v23 = *(a2 + 32);
  v24 = v16;
  v25 = *(a2 + 56);
  result = sub_100492868(v11, v19, a3, a4, a5, v17, a8, a9);
  if (!v9)
  {
    *a7 = result;
  }

  return result;
}

double NamespaceDescription.init(string:char:responseExtensions:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>)
{
  *&v14 = a1;
  *(&v14 + 1) = a2;
  LODWORD(v15) = a3;
  WORD2(v15) = WORD2(a3);
  BYTE6(v15) = BYTE6(a3);
  *(&v15 + 1) = a4;
  *&v16 = a5;
  *(&v16 + 1) = a6;
  *&v17 = a7;
  *(&v17 + 1) = a8;
  v18[0] = a1;
  v18[1] = a2;
  v19 = a3;
  v20 = WORD2(a3);
  v21 = BYTE6(a3);
  v22 = a4;
  v23 = a5;
  v24 = a6;
  v25 = a7;
  v26 = a8;
  sub_1003A3310(&v14, &v13);
  sub_1002EED64(v18);
  v10 = v15;
  *a9 = v14;
  a9[1] = v10;
  result = *&v16;
  v12 = v17;
  a9[2] = v16;
  a9[3] = v12;
  return result;
}

uint64_t sub_10045F80C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 20);
  result = sub_1002F178C(0x28uLL, 0xE100000000000000, v1 + 8, v4);
  if (v6)
  {
    v7._countAndFlagsBits = 40;
    v7._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
  }

  v8 = result;
  v9 = *(v1 + 20);
  v10 = __CFADD__(v9, result);
  v11 = v9 + result;
  if (v10)
  {
    __break(1u);
    goto LABEL_27;
  }

  *(v1 + 20) = v11;
  result = sub_1003B1E70(*a1, *(a1 + 8), *(a1 + 16) | (*(a1 + 20) << 32) | (*(a1 + 22) << 48));
  v12 = v8 + result;
  if (__OFADD__(v8, result))
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v13 = *(v1 + 20);
  result = sub_1002F178C(0x20uLL, 0xE100000000000000, v1 + 8, v13);
  if (v14)
  {
    v15._countAndFlagsBits = 32;
    v15._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v15, v13);
  }

  v16 = *(v1 + 20);
  v17 = (v16 + result);
  if (__CFADD__(v16, result))
  {
    goto LABEL_28;
  }

  *(v1 + 20) = v17;
  v18 = v12 + result;
  if (__OFADD__(v12, result))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (!*(a1 + 32))
  {
LABEL_16:
    result = sub_1002F178C(0x4C494EuLL, 0xE300000000000000, v2 + 8, v17);
    if (v27)
    {
      v28._countAndFlagsBits = 4999502;
      v28._object = 0xE300000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v28, v17);
    }

    v29 = *(v2 + 20);
    v10 = __CFADD__(v29, result);
    v30 = v29 + result;
    if (v10)
    {
      goto LABEL_34;
    }

    *(v2 + 20) = v30;
    v26 = v18 + result;
    if (__OFADD__(v18, result))
    {
LABEL_35:
      __break(1u);
      return result;
    }

    goto LABEL_20;
  }

  v37._countAndFlagsBits = 34;
  v37._object = 0xE100000000000000;
  sub_1004A5994(v37);
  sub_1004A55C4();
  v38._countAndFlagsBits = 34;
  v38._object = 0xE100000000000000;
  sub_1004A5994(v38);
  v19 = sub_1002F178C(0, 0xE000000000000000, v1 + 8, v17);
  if (v20)
  {
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    v19 = ByteBuffer._setStringSlowpath(_:at:)(v21, v17);
  }

  v22 = v19;

  v23 = *(v2 + 20);
  v10 = __CFADD__(v23, v22);
  v24 = v23 + v22;
  if (v10)
  {
    goto LABEL_33;
  }

  *(v2 + 20) = v24;
  v25 = __OFADD__(v18, v22);
  v26 = v18 + v22;
  if (v25)
  {
    __break(1u);
    goto LABEL_16;
  }

LABEL_20:
  result = sub_10045FE78(0, *(a1 + 48), *(a1 + 56), v2);
  v31 = v26 + result;
  if (__OFADD__(v26, result))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v32 = *(v2 + 20);
  result = sub_1002F178C(0x29uLL, 0xE100000000000000, v2 + 8, v32);
  if (v33)
  {
    v34._countAndFlagsBits = 41;
    v34._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v34, v32);
  }

  v35 = *(v2 + 20);
  v10 = __CFADD__(v35, result);
  v36 = v35 + result;
  if (v10)
  {
    goto LABEL_31;
  }

  *(v2 + 20) = v36;
  v25 = __OFADD__(v31, result);
  result += v31;
  if (v25)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  return result;
}

uint64_t NamespaceDescription.responseExtensions.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t NamespaceDescription.responseExtensions.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v3[5] = a1;
  v3[6] = a2;
  v3[7] = a3;
  return result;
}

uint64_t NamespaceDescription.hash(into:)(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  sub_1004A6EA4();
  if (v2[4])
  {
    sub_1004A6EC4(1u);
    sub_1004A55B4();
  }

  else
  {
    sub_1004A6EC4(0);
  }

  return sub_1003A15DC(a1, v2[6], v2[7]);
}

Swift::Int NamespaceDescription.hashValue.getter()
{
  sub_1004A6E94();
  swift_beginAccess();
  sub_1004A6EA4();
  if (v0[4])
  {
    sub_1004A6EC4(1u);
    sub_1004A55B4();
  }

  else
  {
    sub_1004A6EC4(0);
  }

  sub_1003A15DC(v2, v0[6], v0[7]);
  return sub_1004A6F14();
}

Swift::Int sub_10045FCC0(uint64_t a1)
{
  sub_1004A6E94();
  NamespaceDescription.hash(into:)(v2);
  return sub_1004A6F14();
}

BOOL sub_10045FCFC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return _s12NIOIMAPCore220NamespaceDescriptionV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v8);
}

BOOL _s12NIOIMAPCore220NamespaceDescriptionV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (!sub_10020FBD0(*a1, *(a1 + 8), *(a1 + 16) | (*(a1 + 20) << 32) | (*(a1 + 22) << 48), *a2, *(a2 + 8), *(a2 + 16) | (*(a2 + 20) << 32) | (*(a2 + 22) << 48)))
  {
    return 0;
  }

  v4 = *(a1 + 32);
  v5 = *(a2 + 32);
  if (v4)
  {
    if (!v5 || (*(a1 + 24) != *(a2 + 24) || v4 != v5) && (sub_1004A6D34() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a2 + 48);
  v9 = *(a2 + 56);
  return (sub_1003A0868(v6, v8) & 1) != 0 && (sub_1003A06A0(v7, v9) & 1) != 0;
}

unint64_t sub_10045FE14()
{
  result = qword_1005DD128;
  if (!qword_1005DD128)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NamespaceDescription, &type metadata for NamespaceDescription, v0, v1);
    atomic_store(result, &qword_1005DD128);
  }

  return result;
}

uint64_t sub_10045FE78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a1;
  v5 = v4;
  v9 = a1;
  v10 = *(a3 + 16);

  if (v10)
  {
    v12 = 0;
    v13 = (a2 + 54);
    while (v12 < *(a2 + 16))
    {
      v14 = *(v13 - 6);
      v15 = *(v13 - 1);
      v16 = *v13;
      v17 = *(a3 + 32 + 8 * v12);
      v18[0] = *(v13 - 22);
      v18[1] = *(v13 - 14);
      v19 = v14;
      v20 = v15;
      v21 = v16;
      v22 = v17;

      sub_1004604A8(&v23, v18, a4);
      if (v5)
      {

        return v9;
      }

      ++v12;
      v9 = v18[0];

      v13 += 24;
      if (v10 == v12)
      {
        v9 = v23;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:

    return v9;
  }

  return result;
}

uint64_t static NamespaceResponse.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((sub_10039EF50(a1, a4) & 1) == 0 || (sub_10039EF50(a2, a5) & 1) == 0)
  {
    return 0;
  }

  return sub_10039EF50(a3, a6);
}

uint64_t sub_10046002C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 20);
  result = sub_1002F178C(0x43415053454D414EuLL, 0xEA00000000002045, v3 + 8, v7);
  if (v9)
  {
    v10._countAndFlagsBits = 0x43415053454D414ELL;
    v10._object = 0xEA00000000002045;
    result = ByteBuffer._setStringSlowpath(_:at:)(v10, v7);
  }

  v11 = result;
  v12 = *(v3 + 20);
  v13 = __CFADD__(v12, result);
  v14 = v12 + result;
  if (v13)
  {
    __break(1u);
    goto LABEL_17;
  }

  *(v3 + 20) = v14;
  result = sub_10045F44C(a1);
  v15 = v11 + result;
  if (__OFADD__(v11, result))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v16 = *(v3 + 20);
  result = sub_1002F178C(0x20uLL, 0xE100000000000000, v3 + 8, v16);
  if (v17)
  {
    v18._countAndFlagsBits = 32;
    v18._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v18, v16);
  }

  v19 = *(v3 + 20);
  v13 = __CFADD__(v19, result);
  v20 = v19 + result;
  if (v13)
  {
    goto LABEL_18;
  }

  *(v3 + 20) = v20;
  v21 = v15 + result;
  if (__OFADD__(v15, result))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  result = sub_10045F44C(a2);
  v22 = __OFADD__(v21, result);
  v23 = v21 + result;
  if (v22)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v24 = *(v3 + 20);
  result = sub_1002F178C(0x20uLL, 0xE100000000000000, v3 + 8, v24);
  if (v25)
  {
    v26._countAndFlagsBits = 32;
    v26._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v26, v24);
  }

  v27 = *(v3 + 20);
  v13 = __CFADD__(v27, result);
  v28 = v27 + result;
  if (v13)
  {
    goto LABEL_21;
  }

  *(v3 + 20) = v28;
  v29 = v23 + result;
  if (__OFADD__(v23, result))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v30 = sub_10045F44C(a3);
  v22 = __OFADD__(v29, v30);
  result = v29 + v30;
  if (v22)
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

void NamespaceResponse.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1003AF0EC(a1, a2);
  sub_1003AF0EC(a1, a3);

  sub_1003AF0EC(a1, a4);
}

Swift::Int NamespaceResponse.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1004A6E94();
  sub_1003AF0EC(v7, a1);
  sub_1003AF0EC(v7, a2);
  sub_1003AF0EC(v7, a3);
  return sub_1004A6F14();
}

Swift::Int sub_100460294()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1004A6E94();
  sub_1003AF0EC(v5, v1);
  sub_1003AF0EC(v5, v2);
  sub_1003AF0EC(v5, v3);
  return sub_1004A6F14();
}

void sub_100460300(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  sub_1003AF0EC(a1, v3);
  sub_1003AF0EC(a1, v4);

  sub_1003AF0EC(a1, v5);
}

Swift::Int sub_100460358(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  sub_1004A6E94();
  sub_1003AF0EC(v6, v2);
  sub_1003AF0EC(v6, v3);
  sub_1003AF0EC(v6, v4);
  return sub_1004A6F14();
}

uint64_t sub_1004603C0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if ((sub_10039EF50(*a1, *a2) & 1) == 0 || (sub_10039EF50(v2, v4) & 1) == 0)
  {
    return 0;
  }

  return sub_10039EF50(v3, v5);
}

unint64_t sub_100460444()
{
  result = qword_1005DD130;
  if (!qword_1005DD130)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NamespaceResponse, &type metadata for NamespaceResponse, v0, v1);
    atomic_store(result, &qword_1005DD130);
  }

  return result;
}

uint64_t sub_1004604A8(void *a1, uint64_t a2, uint64_t a3)
{
  v50 = a1;
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 20);
  v8 = *(a2 + 22);
  v51 = *(a2 + 24);
  v9 = *(a3 + 20);
  result = sub_1002F178C(0x20uLL, 0xE100000000000000, a3 + 8, v9);
  if (v11)
  {
    v12._countAndFlagsBits = 32;
    v12._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v12, v9);
  }

  v13 = result;
  v14 = *(a3 + 20);
  v15 = __CFADD__(v14, result);
  v16 = v14 + result;
  if (v15)
  {
    goto LABEL_34;
  }

  *(a3 + 20) = v16;
  result = sub_1003B1E70(v4, v5, v6 | (v7 << 32) | (v8 << 48));
  v17 = v13 + result;
  if (__OFADD__(v13, result))
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v18 = *(a3 + 20);
  result = sub_1002F178C(0x20uLL, 0xE100000000000000, a3 + 8, v18);
  if (v19)
  {
    v20._countAndFlagsBits = 32;
    v20._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v20, v18);
  }

  v21 = v51;
  v22 = *(a3 + 20);
  v23 = (v22 + result);
  if (__CFADD__(v22, result))
  {
    goto LABEL_36;
  }

  *(a3 + 20) = v23;
  v24 = v17 + result;
  if (__OFADD__(v17, result))
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v52 = v21;
  if (*(v21 + 16))
  {
    result = sub_1002F178C(0, 0xE000000000000000, a3 + 8, v23);
    if (v25)
    {
      v26._countAndFlagsBits = 0;
      v26._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v26, v23);
    }

    v27 = result;
    v28 = *(a3 + 20);
    LODWORD(v23) = v28 + result;
    if (__CFADD__(v28, result))
    {
      goto LABEL_45;
    }

    *(a3 + 20) = v23;
  }

  else
  {
    v27 = 0;
  }

  result = sub_1002F178C(0x28uLL, 0xE100000000000000, a3 + 8, v23);
  if (v29)
  {
    v30._countAndFlagsBits = 40;
    v30._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v30, v23);
  }

  v31 = *(a3 + 20);
  v15 = __CFADD__(v31, result);
  v32 = v31 + result;
  if (v15)
  {
    goto LABEL_38;
  }

  *(a3 + 20) = v32;
  v33 = v27 + result;
  if (__OFADD__(v27, result))
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  __chkstk_darwin(result);
  v49[2] = sub_10044CF7C;
  v49[3] = 0;
  v49[4] = a3;
  v49[5] = &v52;
  v49[6] = 32;
  v49[7] = 0xE100000000000000;
  result = sub_1004520C0(0, sub_10044D69C, v49, v21);
  v34 = __OFADD__(v33, result);
  v35 = v33 + result;
  if (v34)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v36 = *(a3 + 20);
  result = sub_1002F178C(0x29uLL, 0xE100000000000000, a3 + 8, v36);
  if (v37)
  {
    v38._countAndFlagsBits = 41;
    v38._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v38, v36);
  }

  v39 = *(a3 + 20);
  v40 = (v39 + result);
  if (__CFADD__(v39, result))
  {
    goto LABEL_41;
  }

  *(a3 + 20) = v40;
  v41 = v35 + result;
  if (__OFADD__(v35, result))
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (!*(v21 + 16))
  {
    result = 0;
    v46 = v41;
    goto LABEL_29;
  }

  result = sub_1002F178C(0, 0xE000000000000000, a3 + 8, v40);
  if (v42)
  {
    v43._countAndFlagsBits = 0;
    v43._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v43, v40);
  }

  v44 = *(a3 + 20);
  v15 = __CFADD__(v44, result);
  v45 = v44 + result;
  if (v15)
  {
    goto LABEL_46;
  }

  *(a3 + 20) = v45;
  v46 = v41 + result;
  if (__OFADD__(v41, result))
  {
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

LABEL_29:
  v34 = __OFADD__(v24, v46);
  v47 = v24 + v46;
  if (!v34)
  {
    v34 = __OFADD__(*v50, v47);
    v48 = *v50 + v47;
    if (!v34)
    {
      *v50 = v48;
      return result;
    }

    goto LABEL_44;
  }

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

uint64_t sub_1004607F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, unint64_t a7@<X6>, void *a8@<X7>, uint64_t *a9@<X8>)
{
  result = sub_1004915B8(*a1, *a2, *(a2 + 8), *(a2 + 16), *(a2 + 24) | (*(a2 + 28) << 32) | (*(a2 + 30) << 48), a3, a4, a5, *a6, a7, a8);
  if (!v9)
  {
    *a9 = result;
  }

  return result;
}

uint64_t ByteToMessageDecoder.wrapInboundOut<A>(_:)(uint64_t a1)
{
  v3 = __chkstk_darwin(a1);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  type metadata accessor for Response(0);
  return swift_dynamicCast();
}

double ChannelHandlerContext.responses.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t ChannelHandlerContext.responses.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t ChannelHandlerContext.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = _swiftEmptyArrayStorage;
  return result;
}

uint64_t ChannelHandlerContext.init()()
{
  result = v0;
  *(v0 + 16) = _swiftEmptyArrayStorage;
  return result;
}

uint64_t ChannelHandlerContext.fireChannelRead(_:)(uint64_t a1)
{
  v3 = type metadata accessor for Response(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100460C04(a1, v6);
  swift_beginAccess();
  v7 = *(v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 16) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_100462204(0, v7[2] + 1, 1, v7, &qword_1005D8448, &unk_1004F4720, type metadata accessor for Response);
    *(v1 + 16) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = sub_100462204((v9 > 1), v10 + 1, 1, v7, &qword_1005D8448, &unk_1004F4720, type metadata accessor for Response);
  }

  v7[2] = v10 + 1;
  sub_1004623E0(v6, v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v10);
  *(v1 + 16) = v7;
  return swift_endAccess();
}

uint64_t sub_100460C04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Response(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ChannelHandlerContext.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

char *sub_100460CC0(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005D14D8, &qword_1004F1B10);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_100460DD8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005DD270, &qword_100509A38);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100460EE4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005DD268, &qword_100509A30);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

char *sub_100460FE0(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005DCB38, &qword_100507088);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 184);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[184 * v8])
    {
      memmove(v12, v13, 184 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100461148(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005D52A0, &unk_1004E75A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1004612A0(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005DD200, &qword_100509978);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1004613E4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005DD1F8, &qword_100509970);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10046154C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005DD230, &unk_1005099D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100461684(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    sub_10000C9C0(a5, a6);
    v13 = swift_allocObject();
    v14 = j__malloc_size(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * ((v14 - 32) / 24);
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v15 >= &v16[24 * v11])
    {
      memmove(v15, v16, 24 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1004617B4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005D15B8, &unk_1005099A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1004618DC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005DD228, &qword_1005099C8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1004619E8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    sub_10000C9C0(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
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
    v12 = _swiftEmptyArrayStorage;
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

void *sub_100461B08(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_10000C9C0(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000C9C0(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_100461C64(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    sub_10000C9C0(a5, a6);
    v13 = swift_allocObject();
    v14 = j__malloc_size(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 17;
    }

    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * (v15 >> 4);
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  v16 = v13 + 32;
  v17 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v16 >= &v17[16 * v11])
    {
      memmove(v16, v17, 16 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_100461D70(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005DD220, &unk_1005099B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100461E7C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    sub_10000C9C0(a5, a6);
    v13 = swift_allocObject();
    v14 = j__malloc_size(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * ((v14 - 32) / 24);
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v15 >= &v16[24 * v11])
    {
      memmove(v15, v16, 24 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_100461F9C(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000C9C0(&qword_1005DD248, &qword_100509A00);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000C9C0(&qword_1005DD250, &qword_100509A08);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1004620D0(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000C9C0(&qword_1005DD258, &qword_100509A20);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000C9C0(&qword_1005DD260, &qword_100509A28);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100462204(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000C9C0(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
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

uint64_t sub_1004623E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Response(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100462448()
{
  result = qword_1005DD138;
  if (!qword_1005DD138)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DecodingState, &type metadata for DecodingState, v0, v1);
    atomic_store(result, &qword_1005DD138);
  }

  return result;
}

unint64_t sub_1004624F4()
{
  result = qword_1005DD278;
  if (!qword_1005DD278)
  {
    result = swift_getWitnessTable(aY_31, &type metadata for ObjectID, v0, v1);
    atomic_store(result, &qword_1005DD278);
  }

  return result;
}

uint64_t sub_100462548(unint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  if (a1[4])
  {
    result = sub_100462978(*a1, v4, a1[2], a1[3]);
  }

  else
  {
    v6 = *(v1 + 20);
    result = sub_1002F178C(*a1, v4, v1 + 8, v6);
    if (v7)
    {
      v8._countAndFlagsBits = v3;
      v8._object = v4;
      result = ByteBuffer._setStringSlowpath(_:at:)(v8, v6);
    }

    v9 = *(v1 + 20);
    v10 = __CFADD__(v9, result);
    v11 = v9 + result;
    if (v10)
    {
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    *(v1 + 20) = v11;
  }

  v12 = a1[7];
  if (HIBYTE(v12) == 255)
  {
    return result;
  }

  v13 = result;
  v15 = a1[5];
  v14 = a1[6];
  v16 = *(v1 + 20);
  sub_1003A30E8(v15, v14, v12, HIBYTE(v12) & 1);
  result = sub_1002F178C(0x20uLL, 0xE100000000000000, v1 + 8, v16);
  if (v17)
  {
    v18._countAndFlagsBits = 32;
    v18._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v18, v16);
  }

  v19 = *(v1 + 20);
  v10 = __CFADD__(v19, result);
  v20 = v19 + result;
  if (v10)
  {
    goto LABEL_15;
  }

  *(v1 + 20) = v20;
  v21 = v13 + result;
  if (__OFADD__(v13, result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v22 = sub_100462BEC(v15, v14, v12 & 0xFFFFFFFFFFFFFFLL | ((HIBYTE(v12) & 1) << 56));
  sub_1003A3390(v15, v14, v12);
  result = v21 + v22;
  if (__OFADD__(v21, v22))
  {
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t OptionExtensionKind.hash(into:)(uint64_t a1)
{
  if (*(v1 + 32))
  {
    sub_1004A6EB4(1uLL);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_1004A6EB4(0);
  }

  return _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

Swift::Int OptionExtensionKind.hashValue.getter()
{
  sub_1004A6E94();
  if (*(v0 + 32))
  {
    sub_1004A6EB4(1uLL);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_1004A6EB4(0);
  }

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1004A6F14();
}

Swift::Int sub_1004627F0()
{
  v1 = *(v0 + 32);
  sub_1004A6E94();
  if (v1)
  {
    sub_1004A6EB4(1uLL);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_1004A6EB4(0);
  }

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1004A6F14();
}

Swift::Int sub_100462890(uint64_t a1)
{
  v2 = *(v1 + 32);
  sub_1004A6E94();
  if (v2)
  {
    sub_1004A6EB4(1uLL);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_1004A6EB4(0);
  }

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1004A6F14();
}

uint64_t sub_10046292C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return _s12NIOIMAPCore219OptionExtensionKindO21__derived_enum_equalsySbAC_ACtFZ_0(v5, v7) & 1;
}

uint64_t sub_100462978(unint64_t a1, void *a2, unint64_t a3, void *a4)
{
  v9 = *(v4 + 20);
  result = sub_1002F178C(a1, a2, v4 + 8, v9);
  if (v11)
  {
    v12._countAndFlagsBits = a1;
    v12._object = a2;
    result = ByteBuffer._setStringSlowpath(_:at:)(v12, v9);
  }

  v13 = result;
  v14 = *(v4 + 20);
  v15 = (v14 + result);
  if (__CFADD__(v14, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  *(v4 + 20) = v15;
  result = sub_1002F178C(0x2DuLL, 0xE100000000000000, v4 + 8, v15);
  if (v16)
  {
    v17._countAndFlagsBits = 45;
    v17._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v17, v15);
  }

  v18 = *(v4 + 20);
  v19 = (v18 + result);
  if (__CFADD__(v18, result))
  {
    goto LABEL_14;
  }

  *(v4 + 20) = v19;
  v20 = __OFADD__(v13, result);
  v21 = v13 + result;
  if (v20)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  result = sub_1002F178C(a3, a4, v4 + 8, v19);
  if (v22)
  {
    v23._countAndFlagsBits = a3;
    v23._object = a4;
    result = ByteBuffer._setStringSlowpath(_:at:)(v23, v19);
  }

  v24 = *(v4 + 20);
  v25 = __CFADD__(v24, result);
  v26 = v24 + result;
  if (v25)
  {
    goto LABEL_16;
  }

  *(v4 + 20) = v26;
  v20 = __OFADD__(v21, result);
  result += v21;
  if (v20)
  {
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t _s12NIOIMAPCore219OptionExtensionKindO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  if (a1[4])
  {
    if (a2[4])
    {
      v8 = a1[2];
      v9 = a1[3];
      v10 = a2[2];
      v11 = a2[3];
      v12 = v4 == v6 && v5 == v7;
      if (v12 || (sub_1004A6D34() & 1) != 0)
      {
        v13 = v8 == v10 && v9 == v11;
        if (v13 || (sub_1004A6D34() & 1) != 0)
        {
          return 1;
        }
      }
    }

    return 0;
  }

  if (a2[4])
  {
    return 0;
  }

  if (v4 == v6 && v5 == v7)
  {
    return 1;
  }

  return sub_1004A6D34();
}

unint64_t sub_100462B88()
{
  result = qword_1005DD280;
  if (!qword_1005DD280)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OptionExtensionKind, &type metadata for OptionExtensionKind, v0, v1);
    atomic_store(result, &qword_1005DD280);
  }

  return result;
}

uint64_t sub_100462BEC(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v7 = *(v3 + 20);
  result = sub_1002F178C(0x28uLL, 0xE100000000000000, v3 + 8, v7);
  if (v9)
  {
    v10._countAndFlagsBits = 40;
    v10._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v10, v7);
  }

  v11 = result;
  v12 = *(v3 + 20);
  v13 = __CFADD__(v12, result);
  v14 = v12 + result;
  if (v13)
  {
    __break(1u);
    goto LABEL_11;
  }

  *(v3 + 20) = v14;
  result = sub_100462FF4(a1, a2, a3 & 0xFFFFFFFFFFFFFFLL | ((HIBYTE(a3) & 1) << 56));
  v15 = v11 + result;
  if (__OFADD__(v11, result))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v16 = *(v3 + 20);
  result = sub_1002F178C(0x29uLL, 0xE100000000000000, v3 + 8, v16);
  if (v17)
  {
    v18._countAndFlagsBits = 41;
    v18._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v18, v16);
  }

  v19 = *(v3 + 20);
  v13 = __CFADD__(v19, result);
  v20 = v19 + result;
  if (v13)
  {
    goto LABEL_12;
  }

  *(v3 + 20) = v20;
  v21 = __OFADD__(v15, result);
  result += v15;
  if (v21)
  {
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t static OptionValueComp.__derived_enum_equals(_:_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a3 & 0x100000000000000) == 0)
  {
    if ((a6 & 0x100000000000000) == 0)
    {
      return sub_10020FBD0(a1, a2, a3 & 0xFFFFFFFFFFFFFFLL, a4, a5, a6 & 0xFFFFFFFFFFFFFFLL);
    }

    return 0;
  }

  if ((a6 & 0x100000000000000) == 0)
  {
    return 0;
  }

  return sub_100397AD8(a1, a4);
}

void OptionValueComp.hash(into:)(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x100000000000000) != 0)
  {
    sub_1004A6EB4(1uLL);

    sub_1003AD2A4(a1, a2);
  }

  else
  {
    sub_1004A6EB4(0);
    swift_beginAccess();
    sub_1004A6EA4();
  }
}

Swift::Int OptionValueComp.hashValue.getter(uint64_t a1, unint64_t a2, unint64_t a3)
{
  sub_1004A6E94();
  if ((a3 & 0x100000000000000) != 0)
  {
    sub_1004A6EB4(1uLL);
    sub_1003AD2A4(v6, a1);
  }

  else
  {
    sub_1004A6EB4(0);
    swift_beginAccess();
    sub_1004A6EA4();
  }

  return sub_1004A6F14();
}

Swift::Int sub_100462EE8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16) | ((*(v1 + 20) | (*(v1 + 22) << 16)) << 32);
  v5 = *(v1 + 23);
  sub_1004A6E94();
  OptionValueComp.hash(into:)(v7, v2, v3, v4 | (v5 << 56));
  return sub_1004A6F14();
}

uint64_t sub_100462F5C(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  if (*(a1 + 23))
  {
    if (*(a2 + 23))
    {
      return sub_100397AD8(v3, *a2);
    }

    return 0;
  }

  if (*(a2 + 23))
  {
    return 0;
  }

  return sub_10020FBD0(v3, *(a1 + 8), *(a1 + 16) | ((*(a1 + 20) | (*(a1 + 22) << 16)) << 32), *a2, *(a2 + 8), (*(a2 + 16) | ((*(a2 + 20) | (*(a2 + 22) << 16)) << 32)) & 0xFFFFFFFFFFFFFFLL);
}

uint64_t sub_100462FE4@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = result;
  a2[1] = 0;
  a2[2] = 0x100000000000000;
  return result;
}

uint64_t sub_100462FF4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  if ((a3 & 0x100000000000000) != 0)
  {
    v35 = a1;
    v7 = *(a1 + 16);
    if (v7)
    {
      v8 = a1;
      v9 = *(v3 + 20);
      result = sub_1002F178C(0, 0xE000000000000000, v3 + 8, v9);
      if (v10)
      {
        v11._countAndFlagsBits = 0;
        v11._object = 0xE000000000000000;
        result = ByteBuffer._setStringSlowpath(_:at:)(v11, v9);
      }

      v12 = result;
      v13 = *(v3 + 20);
      v14 = __CFADD__(v13, result);
      v15 = v13 + result;
      if (v14)
      {
        goto LABEL_33;
      }

      *(v3 + 20) = v15;
    }

    else
    {
      v8 = a1;
      v12 = 0;
      v15 = *(v3 + 20);
    }

    v16 = v15;
    result = sub_1002F178C(0x28uLL, 0xE100000000000000, v3 + 8, v15);
    if (v17)
    {
      v18._countAndFlagsBits = 40;
      v18._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v18, v16);
    }

    v19 = *(v3 + 20);
    v14 = __CFADD__(v19, result);
    v20 = v19 + result;
    if (!v14)
    {
      *(v3 + 20) = v20;
      v21 = v12 + result;
      if (__OFADD__(v12, result))
      {
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      __chkstk_darwin(result);
      v34[2] = sub_10046324C;
      v34[3] = 0;
      v34[4] = v4;
      v34[5] = &v35;
      v34[6] = 32;
      v34[7] = 0xE100000000000000;
      result = sub_1004529B8(0, sub_100463398, v34, v8);
      v22 = v21 + result;
      if (__OFADD__(v21, result))
      {
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v23 = *(v4 + 20);
      result = sub_1002F178C(0x29uLL, 0xE100000000000000, v4 + 8, v23);
      if (v24)
      {
        v25._countAndFlagsBits = 41;
        v25._object = 0xE100000000000000;
        result = ByteBuffer._setStringSlowpath(_:at:)(v25, v23);
      }

      v26 = *(v4 + 20);
      v27 = (v26 + result);
      if (__CFADD__(v26, result))
      {
        goto LABEL_31;
      }

      *(v4 + 20) = v27;
      v28 = __OFADD__(v22, result);
      v29 = v22 + result;
      if (v28)
      {
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        return result;
      }

      if (!v7)
      {
        return v29;
      }

      result = sub_1002F178C(0, 0xE000000000000000, v4 + 8, v27);
      if (v30)
      {
        v31._countAndFlagsBits = 0;
        v31._object = 0xE000000000000000;
        result = ByteBuffer._setStringSlowpath(_:at:)(v31, v27);
      }

      v32 = *(v4 + 20);
      v14 = __CFADD__(v32, result);
      v33 = v32 + result;
      if (v14)
      {
        goto LABEL_34;
      }

      *(v4 + 20) = v33;
      v28 = __OFADD__(v29, result);
      result += v29;
      if (!v28)
      {
        return result;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_29;
  }

  v5 = a3 & 0xFFFFFFFFFFFFFFLL;

  return sub_1003B1E70(a1, a2, v5);
}

uint64_t sub_1004632A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, unint64_t a7@<X6>, void *a8@<X7>, uint64_t *a9@<X8>)
{
  result = sub_100492104(*a1, *a2, *(a2 + 8), *(a2 + 16), *(a2 + 24) | ((*(a2 + 28) | (*(a2 + 30) << 16)) << 32) | (*(a2 + 31) << 56), a3, a4, a5, *a6, a7, a8);
  if (!v9)
  {
    *a9 = result;
  }

  return result;
}

unint64_t sub_100463334()
{
  result = qword_1005DD288;
  if (!qword_1005DD288)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OptionValueComp, &type metadata for OptionValueComp, v0, v1);
    atomic_store(result, &qword_1005DD288);
  }

  return result;
}

void sub_1004633BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(v3 + 20);
  v64 = *(a3 + 16);
  if (!v64)
  {
    goto LABEL_36;
  }

  v7 = sub_1002F178C(0, 0xE000000000000000, v3 + 8, v5);
  if (v8)
  {
    v9._countAndFlagsBits = 0;
    v9._object = 0xE000000000000000;
    v7 = ByteBuffer._setStringSlowpath(_:at:)(v9, v5);
  }

  v10 = v7;
  v11 = *(v3 + 20);
  v5 = (v11 + v7);
  if (__CFADD__(v11, v7))
  {
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  *(v3 + 20) = v5;
  v12 = sub_1002F178C(0x28uLL, 0xE100000000000000, v3 + 8, v5);
  if (v13)
  {
    v14._countAndFlagsBits = 40;
    v14._object = 0xE100000000000000;
    v12 = ByteBuffer._setStringSlowpath(_:at:)(v14, v5);
  }

  v15 = *(v3 + 20);
  v16 = __CFADD__(v15, v12);
  v17 = v15 + v12;
  if (v16)
  {
    goto LABEL_48;
  }

  *(v3 + 20) = v17;
  if (__OFADD__(v10, v12))
  {
    goto LABEL_49;
  }

  v61 = v10 + v12;

  v18 = 0;
  v19 = 0;
  v20 = 0;
  v62 = a2;
  while (v64 != v19)
  {
    if (v19 >= *(a2 + 16))
    {
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
      goto LABEL_47;
    }

    v23 = *(a2 + v18 + 32);
    v24 = *(a2 + v18 + 40);
    v5 = *(a3 + v18 + 40);
    v65 = *(a3 + v18 + 32);

    sub_100441B60(v23, v24);
    v26 = v25;
    v27 = *(v4 + 20);
    v28 = sub_1002F178C(0x20uLL, 0xE100000000000000, v4 + 8, v27);
    if (v29)
    {
      v30._countAndFlagsBits = 32;
      v30._object = 0xE100000000000000;
      v28 = ByteBuffer._setStringSlowpath(_:at:)(v30, v27);
    }

    v31 = *(v4 + 20);
    v16 = __CFADD__(v31, v28);
    v32 = v31 + v28;
    if (v16)
    {
      goto LABEL_41;
    }

    *(v4 + 20) = v32;
    v33 = v26 + v28;
    if (__OFADD__(v26, v28))
    {
      goto LABEL_42;
    }

    sub_100441B60(v65, v5);
    v35 = v33 + v34;
    if (__OFADD__(v33, v34))
    {
      goto LABEL_43;
    }

    v22 = __OFADD__(v20, v35);
    v36 = v20 + v35;
    if (v22)
    {
      goto LABEL_44;
    }

    if (v19 >= v64 - 1)
    {

      v21 = 0;
      a2 = v62;
    }

    else
    {
      v37 = *(v4 + 20);
      v38 = sub_1002F178C(0x20uLL, 0xE100000000000000, v4 + 8, v37);
      a2 = v62;
      if (v39)
      {
        v40._countAndFlagsBits = 32;
        v40._object = 0xE100000000000000;
        v38 = ByteBuffer._setStringSlowpath(_:at:)(v40, v37);
      }

      v21 = v38;

      v41 = *(v4 + 20);
      v16 = __CFADD__(v41, v21);
      v42 = v41 + v21;
      if (v16)
      {
        goto LABEL_46;
      }

      *(v4 + 20) = v42;
    }

    v18 += 16;
    ++v19;
    v22 = __OFADD__(v36, v21);
    v20 = v36 + v21;
    if (v22)
    {
      goto LABEL_45;
    }
  }

  v22 = __OFADD__(v61, v20);
  v43 = v61 + v20;
  if (v22)
  {
    goto LABEL_50;
  }

  v44 = *(v4 + 20);
  v45 = sub_1002F178C(0x29uLL, 0xE100000000000000, v4 + 8, v44);
  if (v46)
  {
    v47._countAndFlagsBits = 41;
    v47._object = 0xE100000000000000;
    v45 = ByteBuffer._setStringSlowpath(_:at:)(v47, v44);
  }

  v48 = *(v4 + 20);
  v49 = (v48 + v45);
  if (__CFADD__(v48, v45))
  {
    goto LABEL_51;
  }

  *(v4 + 20) = v49;
  v22 = __OFADD__(v43, v45);
  v50 = v43 + v45;
  if (v22)
  {
    goto LABEL_52;
  }

  v51 = sub_1002F178C(0, 0xE000000000000000, v4 + 8, v49);
  if (v52)
  {
    v53._countAndFlagsBits = 0;
    v53._object = 0xE000000000000000;
    v51 = ByteBuffer._setStringSlowpath(_:at:)(v53, v49);
  }

  v54 = *(v4 + 20);
  v16 = __CFADD__(v54, v51);
  v55 = v54 + v51;
  if (v16)
  {
    goto LABEL_53;
  }

  *(v4 + 20) = v55;
  if (!__OFADD__(v50, v51))
  {
    return;
  }

  __break(1u);
LABEL_36:
  v56 = sub_1002F178C(0x4C494EuLL, 0xE300000000000000, v4 + 8, v5);
  if (v57)
  {
    v58._countAndFlagsBits = 4999502;
    v58._object = 0xE300000000000000;
    v56 = ByteBuffer._setStringSlowpath(_:at:)(v58, v5);
  }

  v59 = *(v4 + 20);
  v16 = __CFADD__(v59, v56);
  v60 = v59 + v56;
  if (!v16)
  {
    *(v4 + 20) = v60;
    return;
  }

LABEL_54:
  __break(1u);
}

uint64_t ParameterValue.hash(into:)(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005CDA68, &qword_1004CF7D0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = sub_10000C9C0(&qword_1005CDA78, &unk_1004CF7E0);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v19 - v10;
  v12 = type metadata accessor for ParameterValue(0);
  __chkstk_darwin(v12);
  v14 = (&v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1002FC178(v1, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v14;
    sub_1004A6EB4(1uLL);
    sub_1004A6EB4(*(v15 + 16));
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = v15 + 40;
      do
      {

        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

        v17 += 16;
        --v16;
      }

      while (v16);
    }
  }

  else
  {
    sub_100025FDC(v14, v11, &qword_1005CDA78, &unk_1004CF7E0);
    sub_1004A6EB4(0);
    sub_100463F9C(v11, v8);
    if ((*(v3 + 48))(v8, 1, v2) == 1)
    {
      sub_1004A6EB4(1uLL);
    }

    else
    {
      sub_100025FDC(v8, v5, &qword_1005CDA68, &qword_1004CF7D0);
      sub_1004A6EB4(0);
      sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
      sub_1000956A0();
      sub_1004A5564();
      sub_100025F40(v5, &qword_1005CDA68, &qword_1004CF7D0);
    }

    return sub_100025F40(v11, &qword_1005CDA78, &unk_1004CF7E0);
  }
}

Swift::Int ParameterValue.hashValue.getter()
{
  sub_1004A6E94();
  ParameterValue.hash(into:)(v1);
  return sub_1004A6F14();
}

Swift::Int sub_100463A90(uint64_t a1)
{
  sub_1004A6E94();
  ParameterValue.hash(into:)(v2);
  return sub_1004A6F14();
}

uint64_t sub_100463ACC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000C9C0(&qword_1005CDA78, &unk_1004CF7E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v27[-v5];
  v7 = type metadata accessor for ParameterValue(0);
  __chkstk_darwin(v7);
  v9 = &v27[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1002FC178(a1, v9);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    goto LABEL_12;
  }

  v10 = *v9;
  v11 = *(v2 + 20);
  v6 = 0;
  result = sub_1002F178C(0x28uLL, 0xE100000000000000, v2 + 8, v11);
  if (v13)
  {
    v14._countAndFlagsBits = 40;
    v14._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v14, v11);
  }

  v15 = result;
  v16 = *(v2 + 20);
  v17 = __CFADD__(v16, result);
  v18 = v16 + result;
  if (v17)
  {
    __break(1u);
    goto LABEL_15;
  }

  *(v2 + 20) = v18;
  v9 = sub_10049ED68(v10);

  v19 = __OFADD__(v15, v9);
  v20 = v9 + v15;
  if (v19)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  v21 = *(v2 + 20);
  result = sub_1002F178C(0x29uLL, 0xE100000000000000, v2 + 8, v21);
  if (v22)
  {
    v9 = (v2 + 8);
    v23._countAndFlagsBits = 41;
    v23._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v23, v21);
  }

  v24 = *(v2 + 20);
  v17 = __CFADD__(v24, result);
  v25 = v24 + result;
  if (v17)
  {
    goto LABEL_16;
  }

  *(v2 + 20) = v25;
  v19 = __OFADD__(v20, result);
  result += v20;
  if (!v19)
  {
    return result;
  }

  __break(1u);
LABEL_12:
  sub_100025FDC(v9, v6, &qword_1005CDA78, &unk_1004CF7E0);
  v26 = sub_10048D800(v6);
  sub_100025F40(v6, &qword_1005CDA78, &unk_1004CF7E0);
  return v26;
}

uint64_t _s12NIOIMAPCore214ParameterValueO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005CDA78, &unk_1004CF7E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v21 - v5;
  v7 = type metadata accessor for ParameterValue(0);
  __chkstk_darwin(v7);
  v9 = (&v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v12 = &v21 - v11;
  v13 = sub_10000C9C0(&qword_1005DBC68, &qword_1004FE598);
  __chkstk_darwin(v13 - 8);
  v15 = &v21 - v14;
  v17 = *(v16 + 56);
  sub_1002FC178(a1, &v21 - v14);
  sub_1002FC178(a2, &v15[v17]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1002FC178(v15, v9);
    v18 = *v9;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v19 = sub_10020FB40(v18, *&v15[v17]);

LABEL_9:
      sub_1002FC1DC(v15);
      return v19 & 1;
    }
  }

  else
  {
    sub_1002FC178(v15, v12);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_100025FDC(&v15[v17], v6, &qword_1005CDA78, &unk_1004CF7E0);
      v19 = sub_100488D88(v12, v6);
      sub_100025F40(v6, &qword_1005CDA78, &unk_1004CF7E0);
      sub_100025F40(v12, &qword_1005CDA78, &unk_1004CF7E0);
      goto LABEL_9;
    }

    sub_100025F40(v12, &qword_1005CDA78, &unk_1004CF7E0);
  }

  sub_100025F40(v15, &qword_1005DBC68, &qword_1004FE598);
  v19 = 0;
  return v19 & 1;
}

uint64_t type metadata accessor for ParameterValue(uint64_t a1)
{
  result = qword_1005DD308;
  if (!qword_1005DD308)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100463F9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005CDA78, &unk_1004CF7E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100464010()
{
  result = qword_1005DD290;
  if (!qword_1005DD290)
  {
    v3 = type metadata accessor for ParameterValue(255);
    result = swift_getWitnessTable(protocol conformance descriptor for ParameterValue, v3, v0, v1);
    atomic_store(result, &qword_1005DD290);
  }

  return result;
}

void sub_100464068(uint64_t a1)
{
  sub_1004640DC(319);
  if (v1 <= 0x3F)
  {
    sub_100464138();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1004640DC(uint64_t a1)
{
  if (!qword_1005DD318)
  {
    v2 = sub_1000796C4();
    CommandSet = type metadata accessor for LastCommandSet(a1, &type metadata for SequenceNumber, v2, v3);
    if (!v5)
    {
      atomic_store(CommandSet, &qword_1005DD318);
    }
  }
}

void sub_100464138()
{
  if (!qword_1005D6C88)
  {
    v0 = sub_1004A5CD4();
    if (!v1)
    {
      atomic_store(v0, &qword_1005D6C88);
    }
  }
}

void sub_100464188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 12);
  v9 = *(a1 + 16);
  v10 = *(a1 + 20);
  v11 = *(a1 + 22);
  v12 = sub_1003BA02C(v7, 0, *a1, v7 | (v8 << 32), v9 | (v10 << 32) | (v11 << 48));
  if ((v12 & 0x10000) != 0)
  {
    if (v8 != v7)
    {
      goto LABEL_14;
    }

    sub_1003A5324();
    swift_allocError();
LABEL_30:
    swift_willThrow();
    return;
  }

  if (v12 == 3338)
  {
    v13 = v7 + 2;
    if (v7 >= 0xFFFFFFFE)
    {
      __break(1u);
    }

    else if (v8 >= v13)
    {
      *(a1 + 8) = v13;
      return;
    }

    __break(1u);
    goto LABEL_34;
  }

  if (BYTE1(v12) == 10)
  {
LABEL_11:
    v14 = v7 + 1;
    if (v7 == -1)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if (v8 >= v14)
    {
      goto LABEL_21;
    }

    __break(1u);
LABEL_14:
    swift_beginAccess();
    v15 = *(*(v6 + 24) + (v11 | (v10 << 8)) + v7);
    if (v15 != 13 && v15 != 10)
    {
      sub_1003A527C();
      swift_allocError();
      *v17 = 0x6E776F6E6B6E55;
      v17[1] = 0xE700000000000000;
      v17[2] = 0xD000000000000020;
      v17[3] = 0x80000001004B03C0;
      v17[4] = 426;
      goto LABEL_30;
    }

    v14 = v7 + 1;
    if (v7 == -1)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    if (v8 < v14)
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

LABEL_21:
    *(a1 + 8) = v14;
    return;
  }

  if (BYTE1(v12) != 32)
  {
    if (BYTE1(v12) != 13)
    {
      sub_1003A527C();
      swift_allocError();
      *v21 = 0x6E776F6E6B6E55;
      v21[1] = 0xE700000000000000;
      v21[2] = 0xD000000000000020;
      v21[3] = 0x80000001004B03C0;
      v21[4] = 430;
      goto LABEL_30;
    }

    goto LABEL_11;
  }

  v18 = __OFADD__(a2, 1);
  v19 = a2 + 1;
  if (v18)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v19 >= a3)
  {
    sub_1003A5228();
    swift_allocError();
    *v22 = a3;
    goto LABEL_30;
  }

  v20 = v7 + 1;
  if (v7 == -1)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v8 >= v20)
  {
    *(a1 + 8) = v20;

    sub_100464188(a1, v19, a3);
    if (!v23)
    {

      return;
    }

    *a1 = v6;
    *(a1 + 8) = v7;
    *(a1 + 12) = v8;
    *(a1 + 16) = v9;
    *(a1 + 20) = v10;
    *(a1 + 22) = v11;
    goto LABEL_30;
  }

LABEL_39:
  __break(1u);
}

uint64_t *sub_100464464(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v4 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v12 = a3;
      return swift_willThrow();
    }

    v6 = result;
    v7 = *result;
    v8 = result[1];
    v9 = *(result + 4);
    v10 = *(result + 10);
    v11 = *(result + 22);

    sub_1004178CC(v6, v4, a3, &v13);
    if (v3)
    {

      *v6 = v7;
      *(v6 + 8) = v8;
      *(v6 + 16) = v9;
      *(v6 + 20) = v10;
      *(v6 + 22) = v11;
      return swift_willThrow();
    }

    return v13;
  }

  return result;
}

uint64_t *sub_10046455C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100464464(a1, a2, a3);
  if (v3)
  {
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {

      return 0;
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_10046460C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v4 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v12 = a3;
    }

    else
    {
      v6 = result;
      v7 = *result;
      v8 = *(result + 8);
      v9 = *(result + 16);
      v10 = *(result + 20);
      v11 = *(result + 22);

      sub_10046B71C(0x44495520uLL, 0xE400000000000000, 0, 0, v6, v4, a3);
      if (!v3)
      {

        return 1;
      }

      *v6 = v7;
      *(v6 + 8) = v8;
      *(v6 + 16) = v9;
      *(v6 + 20) = v10;
      *(v6 + 22) = v11;
    }

    swift_willThrow();
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {

      return 2;
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_10046478C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = sub_10046B71C(0x3AuLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (!v7)
  {
    result = swift_allocObject();
    *(result + 16) = a4;
    *(result + 24) = a5;
    *(result + 32) = a6;
    *(result + 40) = a7;
    v16 = a2 + 1;
    if (__OFADD__(a2, 1))
    {
      __break(1u);
      return result;
    }

    if (v16 < a3)
    {

      sub_10046B71C(0x2AuLL, 0xE100000000000000, 0, 0, a1, v16, a3);

      return 0xFFFFFFFFLL;
    }

    sub_1003A5228();
    v17 = swift_allocError();
    *v18 = a3;

    swift_willThrow();
    v22 = v17;
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {
    }

    else
    {

      v22 = v17;
      swift_errorRetain();
      if ((swift_dynamicCast() & 1) == 0)
      {
      }
    }

    if (v16 < a3)
    {

      sub_10046B6C4(a1, v16, a3, &v21, v19);

      return v21;
    }

    sub_1003A5228();
    swift_allocError();
    *v20 = a3;
    swift_willThrow();
  }

  return result;
}

uint64_t sub_100464A98(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = sub_10046B71C(0x3AuLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (!v7)
  {
    result = swift_allocObject();
    *(result + 16) = a4;
    *(result + 24) = a5;
    *(result + 32) = a6;
    *(result + 40) = a7;
    v16 = a2 + 1;
    if (__OFADD__(a2, 1))
    {
      __break(1u);
      return result;
    }

    if (v16 < a3)
    {

      sub_10046B71C(0x2AuLL, 0xE100000000000000, 0, 0, a1, v16, a3);

      return 0xFFFFFFFFLL;
    }

    sub_1003A5228();
    v17 = swift_allocError();
    *v18 = a3;

    swift_willThrow();
    v22 = v17;
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {
    }

    else
    {

      v22 = v17;
      swift_errorRetain();
      if ((swift_dynamicCast() & 1) == 0)
      {
      }
    }

    if (v16 < a3)
    {

      sub_10046B6C4(a1, v16, a3, &v21, v19);

      return v21;
    }

    sub_1003A5228();
    swift_allocError();
    *v20 = a3;
    swift_willThrow();
  }

  return result;
}

uint64_t sub_100464DA4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = sub_10046B71C(0x3AuLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (!v7)
  {
    result = swift_allocObject();
    *(result + 16) = a4;
    *(result + 24) = a5;
    *(result + 32) = a6;
    *(result + 40) = a7;
    v16 = a2 + 1;
    if (__OFADD__(a2, 1))
    {
      __break(1u);
      return result;
    }

    if (v16 < a3)
    {

      sub_10046B71C(0x2AuLL, 0xE100000000000000, 0, 0, a1, v16, a3);

      return 0xFFFFFFFFLL;
    }

    sub_1003A5228();
    v17 = swift_allocError();
    *v18 = a3;

    swift_willThrow();
    v22 = v17;
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {
    }

    else
    {

      v22 = v17;
      swift_errorRetain();
      if ((swift_dynamicCast() & 1) == 0)
      {
      }
    }

    if (v16 < a3)
    {

      sub_10046B6F0(a1, v16, a3, &v21, v19);

      return v21;
    }

    sub_1003A5228();
    swift_allocError();
    *v20 = a3;
    swift_willThrow();
  }

  return result;
}

double BadCommand.parserError.getter@<D0>(void *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  *a1 = v1[2];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;

  return result;
}

__n128 BadCommand.parserError.setter(uint64_t a1)
{

  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  *(v1 + 48) = *(a1 + 32);
  return result;
}

void sub_10046517C(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 2);
  v2 = *(a1 + 3);
  if (v2 < v3)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v4 = *(a1 + 4);
  v5 = *(a1 + 10);
  v6 = *(a1 + 22);
  if (v4 - (v6 | (v5 << 8)) < v2)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v21 = *(a1 + 10);
  v22 = *a1;
  v39 = *a1;
  v40 = v3;
  v41 = v2;
  v19 = v4;
  v42 = v4;
  v43 = v5;
  v20 = v6;
  v44 = v6;
  v45 = v3;
  v46 = v2;
  if (v2 == v3)
  {
LABEL_9:

    sub_1003A52D0(&v39);
    sub_1003A5324();
    swift_allocError();
LABEL_10:
    swift_willThrow();
    return;
  }

  v7 = 0;
  v8 = v3 + (v5 << 8) + v6;
  while (1)
  {
    if (v3 + v7 < v40)
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    if (v3 + v7 - v40 >= v41 - v40)
    {
      goto LABEL_20;
    }

    swift_beginAccess();
    if (*(*(v39 + 24) + (v44 | (v43 << 8)) + v3 + v7) - 58 < 0xFFFFFFF6)
    {
      break;
    }

    ++v8;
    ++v7;
    if (!(v3 - v2 + v7))
    {
      goto LABEL_9;
    }
  }

  sub_1003A52D0(&v39);
  v31 = v22;
  v32 = v3;
  v33 = v2;
  v34 = v19;
  v35 = v21;
  v36 = v20;
  v37 = v3;
  v38 = v2;

  sub_1003A52D0(&v31);
  if (v3 + v7 == v37)
  {
    v23 = v22;
    v24 = v3;
    v25 = v2;
    v26 = v19;
    v27 = v21;
    v28 = v20;
    v29 = v3;
    v30 = v2;
    if (v7 >= (v2 - v3))
    {
      goto LABEL_24;
    }

    swift_beginAccess();
    v13 = *(v22 + 24);
    v14 = *(v13 + v8);
    v15 = *(v13 + v8);

    sub_1003A52D0(&v23);
    sub_1004A6724(19);
    v48._object = 0x80000001004B0EA0;
    v48._countAndFlagsBits = 0xD000000000000011;
    sub_1004A5994(v48);
    v16 = ((v15 >> 6) & 0xFFFFC0FF | ((v15 & 0x3F) << 8)) + 33217;
    if (v14 >= 0)
    {
      v16 = v15 + 1;
    }

    v47 = (v16 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v16) >> 3))));
    sub_1004A58E4();
    sub_1004A55C4();

    sub_1003A527C();
    swift_allocError();
    *v17 = 0;
    v17[1] = 0xE000000000000000;
    v17[2] = 0xD000000000000020;
    v17[3] = 0x80000001004B03C0;
    v17[4] = 118;
    goto LABEL_10;
  }

  v23 = v22;
  v24 = v3;
  v25 = v2;
  v26 = v19;
  v27 = v21;
  v28 = v20;
  v29 = v3;
  v30 = v2;
  v9 = v3 + v7;

  sub_1003A52D0(&v23);
  if (__OFSUB__(v9, v29))
  {
    goto LABEL_23;
  }

  v10 = ByteBuffer.readSlice(length:)(v9 - v29);
  if (v10)
  {
    *a2 = v10;
    *(a2 + 8) = v11;
    *(a2 + 16) = v12;
    *(a2 + 20) = WORD2(v12);
    *(a2 + 22) = BYTE6(v12);
    return;
  }

LABEL_25:
  __break(1u);
}

void sub_100465520(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 2);
  v2 = *(a1 + 3);
  if (v2 < v3)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v4 = *(a1 + 4);
  v5 = *(a1 + 10);
  v6 = *(a1 + 22);
  if (v4 - (v6 | (v5 << 8)) < v2)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v26 = *(a1 + 10);
  v27 = *a1;
  v44 = *a1;
  v45 = v3;
  v46 = v2;
  v24 = v4;
  v47 = v4;
  v48 = v5;
  v25 = v6;
  v49 = v6;
  v50 = v3;
  v51 = v2;
  if (v2 == v3)
  {
LABEL_4:

    sub_1003A52D0(&v44);
    sub_1003A5324();
    swift_allocError();
LABEL_26:
    swift_willThrow();
    return;
  }

  v7 = 0;
  v8 = v3 + (v5 << 8) + v6;
  while (1)
  {
    if (v3 + v7 < v45)
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    if (v3 + v7 - v45 >= v46 - v45)
    {
      goto LABEL_28;
    }

    swift_beginAccess();
    v9 = *(*(v44 + 24) + (v49 | (v48 << 8)) + v3 + v7);
    if (v9 != 93)
    {
      v10 = v9 - 32;
      if (v9 < 0x20)
      {
        break;
      }

      v11 = v10 > 0x3C;
      v12 = (1 << v10) & 0x1000000000000725;
      v13 = v11 || v12 == 0;
      if (!v13 || v9 == 123 || (v9 & 0x80) != 0)
      {
        break;
      }
    }

    ++v8;
    ++v7;
    if (!(v3 - v2 + v7))
    {
      goto LABEL_4;
    }
  }

  sub_1003A52D0(&v44);
  v36 = v27;
  v37 = v3;
  v38 = v2;
  v39 = v24;
  v40 = v26;
  v41 = v25;
  v42 = v3;
  v43 = v2;

  sub_1003A52D0(&v36);
  if (v3 + v7 == v42)
  {
    v28 = v27;
    v29 = v3;
    v30 = v2;
    v31 = v24;
    v32 = v26;
    v33 = v25;
    v34 = v3;
    v35 = v2;
    if (v7 >= (v2 - v3))
    {
      goto LABEL_32;
    }

    swift_beginAccess();
    v18 = *(v27 + 24);
    v19 = *(v18 + v8);
    v20 = *(v18 + v8);

    sub_1003A52D0(&v28);
    sub_1004A6724(19);
    v53._object = 0x80000001004B0EA0;
    v53._countAndFlagsBits = 0xD000000000000011;
    sub_1004A5994(v53);
    v21 = ((v20 >> 6) & 0xFFFFC0FF | ((v20 & 0x3F) << 8)) + 33217;
    if (v19 >= 0)
    {
      v21 = v20 + 1;
    }

    v52 = (v21 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v21) >> 3))));
    sub_1004A58E4();
    sub_1004A55C4();

    sub_1003A527C();
    swift_allocError();
    *v22 = 0;
    v22[1] = 0xE000000000000000;
    v22[2] = 0xD000000000000020;
    v22[3] = 0x80000001004B03C0;
    v22[4] = 118;
    goto LABEL_26;
  }

  v28 = v27;
  v29 = v3;
  v30 = v2;
  v31 = v24;
  v32 = v26;
  v33 = v25;
  v34 = v3;
  v35 = v2;
  v14 = v3 + v7;

  sub_1003A52D0(&v28);
  if (__OFSUB__(v14, v34))
  {
    goto LABEL_31;
  }

  v15 = ByteBuffer.readSlice(length:)(v14 - v34);
  if (v15)
  {
    *a2 = v15;
    *(a2 + 8) = v16;
    *(a2 + 16) = v17;
    *(a2 + 20) = WORD2(v17);
    *(a2 + 22) = BYTE6(v17);
    return;
  }

LABEL_33:
  __break(1u);
}

unint64_t sub_1004658F8@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 8);
  v2 = *(result + 12);
  if (v2 < v3)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v4 = *(result + 16);
  v5 = *(result + 20);
  v6 = *(result + 22);
  if (v4 - (v6 | (v5 << 8)) < v2)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v19 = *(result + 20);
  v20 = *result;
  v37 = *result;
  v38 = v3;
  v39 = v2;
  v17 = v4;
  v40 = v4;
  v41 = v5;
  v18 = v6;
  v42 = v6;
  v43 = v3;
  v44 = v2;
  if (v2 == v3)
  {
LABEL_12:

    sub_1003A52D0(&v37);
    sub_1003A5324();
    swift_allocError();
    return swift_willThrow();
  }

  v7 = 0;
  v8 = v3 + (v5 << 8) + v6;
  while (1)
  {
    if (v3 + v7 < v38)
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    if (v3 + v7 - v38 >= v39 - v38)
    {
      goto LABEL_23;
    }

    swift_beginAccess();
    v9 = *(*(v37 + 24) + (v42 | (v41 << 8)) + v3 + v7);
    result = isalnum(v9);
    if (!result && (v9 - 45) >= 2)
    {
      break;
    }

    ++v8;
    ++v7;
    if (!(v3 - v2 + v7))
    {
      goto LABEL_12;
    }
  }

  sub_1003A52D0(&v37);
  v29 = v20;
  v30 = v3;
  v31 = v2;
  v32 = v17;
  v33 = v19;
  v34 = v18;
  v35 = v3;
  v36 = v2;

  result = sub_1003A52D0(&v29);
  if (v3 + v7 == v35)
  {
    v21 = v20;
    v22 = v3;
    v23 = v2;
    v24 = v17;
    v25 = v19;
    v26 = v18;
    v27 = v3;
    v28 = v2;
    if (v7 >= (v2 - v3))
    {
      goto LABEL_27;
    }

    swift_beginAccess();
    v13 = *(*(v20 + 24) + v8);

    sub_1003A52D0(&v21);
    sub_1004A6724(19);
    v46._object = 0x80000001004B0EA0;
    v46._countAndFlagsBits = 0xD000000000000011;
    sub_1004A5994(v46);
    v14 = ((v13 >> 6) & 0xFFFFC0FF | ((v13 & 0x3F) << 8)) + 33217;
    if (v13 >= 0)
    {
      v14 = v13 + 1;
    }

    v45 = (v14 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v14) >> 3))));
    sub_1004A58E4();
    sub_1004A55C4();

    sub_1003A527C();
    swift_allocError();
    *v15 = 0;
    v15[1] = 0xE000000000000000;
    v15[2] = 0xD000000000000020;
    v15[3] = 0x80000001004B03C0;
    v15[4] = 118;
    return swift_willThrow();
  }

  v21 = v20;
  v22 = v3;
  v23 = v2;
  v24 = v17;
  v25 = v19;
  v26 = v18;
  v27 = v3;
  v28 = v2;

  sub_1003A52D0(&v21);
  result = v3 + v7 - v27;
  if (__OFSUB__(v3 + v7, v27))
  {
    goto LABEL_26;
  }

  result = ByteBuffer.readSlice(length:)(result);
  if (result)
  {
    *a2 = result;
    *(a2 + 8) = v11;
    *(a2 + 16) = v12;
    *(a2 + 20) = WORD2(v12);
    *(a2 + 22) = BYTE6(v12);
    return result;
  }

LABEL_28:
  __break(1u);
  return result;
}

void sub_100465CAC(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 2);
  v2 = *(a1 + 3);
  if (v2 < v3)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v4 = *(a1 + 4);
  v5 = *(a1 + 10);
  v6 = *(a1 + 22);
  if (v4 - (v6 | (v5 << 8)) < v2)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v26 = *(a1 + 10);
  v27 = *a1;
  v44 = *a1;
  v45 = v3;
  v46 = v2;
  v24 = v4;
  v47 = v4;
  v48 = v5;
  v25 = v6;
  v49 = v6;
  v50 = v3;
  v51 = v2;
  if (v2 == v3)
  {
LABEL_4:

    sub_1003A52D0(&v44);
    sub_1003A5324();
    swift_allocError();
LABEL_27:
    swift_willThrow();
    return;
  }

  v7 = 0;
  v8 = v3 + (v5 << 8) + v6;
  while (1)
  {
    if (v3 + v7 < v45)
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    if (v3 + v7 - v45 >= v46 - v45)
    {
      goto LABEL_29;
    }

    swift_beginAccess();
    v9 = *(*(v44 + 24) + (v49 | (v48 << 8)) + v3 + v7);
    if (v9 != 93)
    {
      v10 = v9 - 32;
      if (v9 < 0x20)
      {
        break;
      }

      v11 = v10 > 0x3C;
      v12 = (1 << v10) & 0x1000000000000725;
      v13 = v11 || v12 == 0;
      if (!v13 || v9 == 123 || (v9 & 0x80) != 0 || v9 == 43)
      {
        break;
      }
    }

    ++v8;
    ++v7;
    if (!(v3 - v2 + v7))
    {
      goto LABEL_4;
    }
  }

  sub_1003A52D0(&v44);
  v36 = v27;
  v37 = v3;
  v38 = v2;
  v39 = v24;
  v40 = v26;
  v41 = v25;
  v42 = v3;
  v43 = v2;

  sub_1003A52D0(&v36);
  if (v3 + v7 == v42)
  {
    v28 = v27;
    v29 = v3;
    v30 = v2;
    v31 = v24;
    v32 = v26;
    v33 = v25;
    v34 = v3;
    v35 = v2;
    if (v7 >= (v2 - v3))
    {
      goto LABEL_33;
    }

    swift_beginAccess();
    v18 = *(v27 + 24);
    v19 = *(v18 + v8);
    v20 = *(v18 + v8);

    sub_1003A52D0(&v28);
    sub_1004A6724(19);
    v53._object = 0x80000001004B0EA0;
    v53._countAndFlagsBits = 0xD000000000000011;
    sub_1004A5994(v53);
    v21 = ((v20 >> 6) & 0xFFFFC0FF | ((v20 & 0x3F) << 8)) + 33217;
    if (v19 >= 0)
    {
      v21 = v20 + 1;
    }

    v52 = (v21 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v21) >> 3))));
    sub_1004A58E4();
    sub_1004A55C4();

    sub_1003A527C();
    swift_allocError();
    *v22 = 0;
    v22[1] = 0xE000000000000000;
    v22[2] = 0xD000000000000020;
    v22[3] = 0x80000001004B03C0;
    v22[4] = 118;
    goto LABEL_27;
  }

  v28 = v27;
  v29 = v3;
  v30 = v2;
  v31 = v24;
  v32 = v26;
  v33 = v25;
  v34 = v3;
  v35 = v2;
  v14 = v3 + v7;

  sub_1003A52D0(&v28);
  if (__OFSUB__(v14, v34))
  {
    goto LABEL_32;
  }

  v15 = ByteBuffer.readSlice(length:)(v14 - v34);
  if (v15)
  {
    *a2 = v15;
    *(a2 + 8) = v16;
    *(a2 + 16) = v17;
    *(a2 + 20) = WORD2(v17);
    *(a2 + 22) = BYTE6(v17);
    return;
  }

LABEL_34:
  __break(1u);
}

void sub_1004660B8(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 2);
  v2 = *(a1 + 3);
  if (v2 < v3)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v4 = *(a1 + 4);
  v5 = *(a1 + 10);
  v6 = *(a1 + 22);
  if (v4 - (v6 | (v5 << 8)) < v2)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v24 = *(a1 + 10);
  v25 = *a1;
  v42 = *a1;
  v43 = v3;
  v44 = v2;
  v22 = v4;
  v45 = v4;
  v46 = v5;
  v23 = v6;
  v47 = v6;
  v48 = v3;
  v49 = v2;
  if (v2 == v3)
  {
LABEL_15:

    sub_1003A52D0(&v42);
    sub_1003A5324();
    swift_allocError();
LABEL_16:
    swift_willThrow();
    return;
  }

  v7 = 0;
  v8 = v3 + (v5 << 8) + v6;
  while (1)
  {
    if (v3 + v7 < v43)
    {
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    if (v3 + v7 - v43 >= v44 - v43)
    {
      goto LABEL_26;
    }

    swift_beginAccess();
    v9 = *(*(v42 + 24) + (v47 | (v46 << 8)) + v3 + v7);
    v10 = (v9 - 45) >= 2 && (v9 - 48) >= 0xA;
    if (v10 && (v9 & 0xFFFFFFDF) - 65 >= 0x1A)
    {
      break;
    }

    ++v8;
    ++v7;
    if (!(v3 - v2 + v7))
    {
      goto LABEL_15;
    }
  }

  sub_1003A52D0(&v42);
  v34 = v25;
  v35 = v3;
  v36 = v2;
  v37 = v22;
  v38 = v24;
  v39 = v23;
  v40 = v3;
  v41 = v2;

  sub_1003A52D0(&v34);
  if (v3 + v7 == v40)
  {
    v26 = v25;
    v27 = v3;
    v28 = v2;
    v29 = v22;
    v30 = v24;
    v31 = v23;
    v32 = v3;
    v33 = v2;
    if (v7 >= (v2 - v3))
    {
      goto LABEL_30;
    }

    swift_beginAccess();
    v16 = *(v25 + 24);
    v17 = *(v16 + v8);
    v18 = *(v16 + v8);

    sub_1003A52D0(&v26);
    sub_1004A6724(19);
    v51._object = 0x80000001004B0EA0;
    v51._countAndFlagsBits = 0xD000000000000011;
    sub_1004A5994(v51);
    v19 = ((v18 >> 6) & 0xFFFFC0FF | ((v18 & 0x3F) << 8)) + 33217;
    if (v17 >= 0)
    {
      v19 = v18 + 1;
    }

    v50 = (v19 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v19) >> 3))));
    sub_1004A58E4();
    sub_1004A55C4();

    sub_1003A527C();
    swift_allocError();
    *v20 = 0;
    v20[1] = 0xE000000000000000;
    v20[2] = 0xD000000000000020;
    v20[3] = 0x80000001004B03C0;
    v20[4] = 118;
    goto LABEL_16;
  }

  v26 = v25;
  v27 = v3;
  v28 = v2;
  v29 = v22;
  v30 = v24;
  v31 = v23;
  v32 = v3;
  v33 = v2;
  v12 = v3 + v7;

  sub_1003A52D0(&v26);
  if (__OFSUB__(v12, v32))
  {
    goto LABEL_29;
  }

  v13 = ByteBuffer.readSlice(length:)(v12 - v32);
  if (v13)
  {
    *a2 = v13;
    *(a2 + 8) = v14;
    *(a2 + 16) = v15;
    *(a2 + 20) = WORD2(v15);
    *(a2 + 22) = BYTE6(v15);
    return;
  }

LABEL_31:
  __break(1u);
}

void sub_100466470(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 2);
  v2 = *(a1 + 3);
  if (v2 < v3)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v4 = *(a1 + 4);
  v5 = *(a1 + 10);
  v6 = *(a1 + 22);
  if (v4 - (v6 | (v5 << 8)) < v2)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v25 = *(a1 + 22);
  v26 = *a1;
  v43 = *a1;
  v44 = v3;
  v45 = v2;
  v24 = v4;
  v46 = v4;
  v47 = v5;
  v48 = v6;
  v49 = v3;
  v50 = v2;
  if (v2 == v3)
  {
LABEL_4:

    sub_1003A52D0(&v43);
    sub_1003A5324();
    swift_allocError();
LABEL_26:
    swift_willThrow();
    return;
  }

  v7 = 0;
  v8 = v3 + (v5 << 8) + v6;
  while (1)
  {
    if (v3 + v7 < v44)
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    if (v3 + v7 - v44 >= v45 - v44)
    {
      goto LABEL_28;
    }

    swift_beginAccess();
    v9 = *(*(v43 + 24) + (v48 | (v47 << 8)) + v3 + v7);
    v10 = v9 - 32;
    if (v9 < 0x20)
    {
      break;
    }

    v11 = v10 > 0x3D;
    v12 = (1 << v10) & 0x3000000000000725;
    v13 = v11 || v12 == 0;
    if (!v13 || v9 == 123 || (v9 & 0x80) != 0)
    {
      break;
    }

    ++v8;
    ++v7;
    if (!(v3 - v2 + v7))
    {
      goto LABEL_4;
    }
  }

  sub_1003A52D0(&v43);
  v35 = v26;
  v36 = v3;
  v37 = v2;
  v38 = v24;
  v39 = v5;
  v40 = v25;
  v41 = v3;
  v42 = v2;

  sub_1003A52D0(&v35);
  if (v3 + v7 == v41)
  {
    v27 = v26;
    v28 = v3;
    v29 = v2;
    v30 = v24;
    v31 = v5;
    v32 = v25;
    v33 = v3;
    v34 = v2;
    if (v7 >= (v2 - v3))
    {
      goto LABEL_32;
    }

    swift_beginAccess();
    v18 = *(v26 + 24);
    v19 = *(v18 + v8);
    v20 = *(v18 + v8);

    sub_1003A52D0(&v27);
    sub_1004A6724(19);
    v52._object = 0x80000001004B0EA0;
    v52._countAndFlagsBits = 0xD000000000000011;
    sub_1004A5994(v52);
    v21 = ((v20 >> 6) & 0xFFFFC0FF | ((v20 & 0x3F) << 8)) + 33217;
    if (v19 >= 0)
    {
      v21 = v20 + 1;
    }

    v51 = (v21 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v21) >> 3))));
    sub_1004A58E4();
    sub_1004A55C4();

    sub_1003A527C();
    swift_allocError();
    *v22 = 0;
    v22[1] = 0xE000000000000000;
    v22[2] = 0xD000000000000020;
    v22[3] = 0x80000001004B03C0;
    v22[4] = 118;
    goto LABEL_26;
  }

  v27 = v26;
  v28 = v3;
  v29 = v2;
  v30 = v24;
  v31 = v5;
  v32 = v25;
  v33 = v3;
  v34 = v2;
  v14 = v3 + v7;

  sub_1003A52D0(&v27);
  if (__OFSUB__(v14, v33))
  {
    goto LABEL_31;
  }

  v15 = ByteBuffer.readSlice(length:)(v14 - v33);
  if (v15)
  {
    *a2 = v15;
    *(a2 + 8) = v16;
    *(a2 + 16) = v17;
    *(a2 + 20) = WORD2(v17);
    *(a2 + 22) = BYTE6(v17);
    return;
  }

LABEL_33:
  __break(1u);
}

uint64_t *sub_100466844@<X0>(uint64_t *result@<X0>, uint64_t (*a2)(void, __n128)@<X3>, uint64_t a3@<X8>)
{
  v4 = *(result + 2);
  v3 = *(result + 3);
  if (v3 < v4)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v5 = *(result + 4);
  v6 = *(result + 10);
  v7 = *(result + 22);
  if (v5 - (v7 | (v6 << 8)) < v3)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v20 = *(result + 10);
  v21 = *result;
  v38 = *result;
  v39 = v4;
  v40 = v3;
  v18 = v5;
  v41 = v5;
  v42 = v6;
  v19 = v7;
  v43 = v7;
  v44 = v4;
  v45 = v3;
  if (v3 == v4)
  {
LABEL_9:

    sub_1003A52D0(&v38);
    sub_1003A5324();
    swift_allocError();
    return swift_willThrow();
  }

  v9 = 0;
  v10 = v4 + (v6 << 8) + v7;
  while (1)
  {
    if (v4 + v9 < v39)
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    if (v4 + v9 - v39 >= v40 - v39)
    {
      goto LABEL_20;
    }

    swift_beginAccess();
    result = (a2)(*(*(v38 + 24) + (v43 | (v42 << 8)) + v4 + v9));
    if (!result)
    {
      break;
    }

    ++v10;
    ++v9;
    if (!(v4 - v3 + v9))
    {
      goto LABEL_9;
    }
  }

  sub_1003A52D0(&v38);
  v30 = v21;
  v31 = v4;
  v32 = v3;
  v33 = v18;
  v34 = v20;
  v35 = v19;
  v36 = v4;
  v37 = v3;

  result = sub_1003A52D0(&v30);
  v11 = v4 + v9;
  if (v4 + v9 == v36)
  {
    v22 = v21;
    v23 = v4;
    v24 = v3;
    v25 = v18;
    v26 = v20;
    v27 = v19;
    v28 = v4;
    v29 = v3;
    if (v9 >= (v3 - v4))
    {
      goto LABEL_24;
    }

    swift_beginAccess();
    v14 = *(*(v21 + 24) + v10);

    sub_1003A52D0(&v22);
    sub_1004A6724(19);
    v47._object = 0x80000001004B0EA0;
    v47._countAndFlagsBits = 0xD000000000000011;
    sub_1004A5994(v47);
    v15 = ((v14 >> 6) & 0xFFFFC0FF | ((v14 & 0x3F) << 8)) + 33217;
    if (v14 >= 0)
    {
      v15 = v14 + 1;
    }

    v46 = (v15 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v15) >> 3))));
    sub_1004A58E4();
    sub_1004A55C4();

    sub_1003A527C();
    swift_allocError();
    *v16 = 0;
    v16[1] = 0xE000000000000000;
    v16[2] = 0xD000000000000020;
    v16[3] = 0x80000001004B03C0;
    v16[4] = 118;
    return swift_willThrow();
  }

  v22 = v21;
  v23 = v4;
  v24 = v3;
  v25 = v18;
  v26 = v20;
  v27 = v19;
  v28 = v4;
  v29 = v3;

  sub_1003A52D0(&v22);
  result = (v11 - v28);
  if (__OFSUB__(v11, v28))
  {
    goto LABEL_23;
  }

  result = ByteBuffer.readSlice(length:)(result);
  if (result)
  {
    *a3 = result;
    *(a3 + 8) = v12;
    *(a3 + 16) = v13;
    *(a3 + 20) = WORD2(v13);
    *(a3 + 22) = BYTE6(v13);
    return result;
  }

LABEL_25:
  __break(1u);
  return result;
}

void sub_100466BE8(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 2);
  v2 = *(a1 + 3);
  if (v2 < v3)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v4 = *(a1 + 4);
  v5 = *(a1 + 10);
  v6 = *(a1 + 22);
  if (v4 - (v6 | (v5 << 8)) < v2)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v23 = *(a1 + 10);
  v24 = *a1;
  v41 = *a1;
  v42 = v3;
  v43 = v2;
  v21 = v4;
  v44 = v4;
  v45 = v5;
  v22 = v6;
  v46 = v6;
  v47 = v3;
  v48 = v2;
  if (v2 == v3)
  {
LABEL_4:

    sub_1003A52D0(&v41);
    sub_1003A5324();
    swift_allocError();
LABEL_25:
    swift_willThrow();
    return;
  }

  v7 = 0;
  v8 = v3 + (v5 << 8) + v6;
  while (1)
  {
    if (v3 + v7 < v42)
    {
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    if (v3 + v7 - v42 >= v43 - v42)
    {
      goto LABEL_27;
    }

    swift_beginAccess();
    v9 = *(*(v41 + 24) + (v46 | (v45 << 8)) + v3 + v7);
    v10 = v9 == 10 || v9 == 13;
    if (v10 || (v9 & 0x80) != 0 || !*(*(v41 + 24) + (v46 | (v45 << 8)) + v3 + v7) || v9 == 93)
    {
      break;
    }

    ++v8;
    ++v7;
    if (!(v3 - v2 + v7))
    {
      goto LABEL_4;
    }
  }

  sub_1003A52D0(&v41);
  v33 = v24;
  v34 = v3;
  v35 = v2;
  v36 = v21;
  v37 = v23;
  v38 = v22;
  v39 = v3;
  v40 = v2;

  sub_1003A52D0(&v33);
  if (v3 + v7 == v39)
  {
    v25 = v24;
    v26 = v3;
    v27 = v2;
    v28 = v21;
    v29 = v23;
    v30 = v22;
    v31 = v3;
    v32 = v2;
    if (v7 >= (v2 - v3))
    {
      goto LABEL_31;
    }

    swift_beginAccess();
    v15 = *(v24 + 24);
    v16 = *(v15 + v8);
    v17 = *(v15 + v8);

    sub_1003A52D0(&v25);
    sub_1004A6724(19);
    v50._object = 0x80000001004B0EA0;
    v50._countAndFlagsBits = 0xD000000000000011;
    sub_1004A5994(v50);
    v18 = ((v17 >> 6) & 0xFFFFC0FF | ((v17 & 0x3F) << 8)) + 33217;
    if (v16 >= 0)
    {
      v18 = v17 + 1;
    }

    v49 = (v18 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v18) >> 3))));
    sub_1004A58E4();
    sub_1004A55C4();

    sub_1003A527C();
    swift_allocError();
    *v19 = 0;
    v19[1] = 0xE000000000000000;
    v19[2] = 0xD000000000000020;
    v19[3] = 0x80000001004B03C0;
    v19[4] = 118;
    goto LABEL_25;
  }

  v25 = v24;
  v26 = v3;
  v27 = v2;
  v28 = v21;
  v29 = v23;
  v30 = v22;
  v31 = v3;
  v32 = v2;
  v11 = v3 + v7;

  sub_1003A52D0(&v25);
  if (__OFSUB__(v11, v31))
  {
    goto LABEL_30;
  }

  v12 = ByteBuffer.readSlice(length:)(v11 - v31);
  if (v12)
  {
    *a2 = v12;
    *(a2 + 8) = v13;
    *(a2 + 16) = v14;
    *(a2 + 20) = WORD2(v14);
    *(a2 + 22) = BYTE6(v14);
    return;
  }

LABEL_32:
  __break(1u);
}

void sub_100466FA0(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 2);
  v2 = *(a1 + 3);
  if (v2 < v3)
  {
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
    return;
  }

  v4 = *(a1 + 4);
  v5 = *(a1 + 10);
  v6 = *(a1 + 22);
  if (v4 - (v6 | (v5 << 8)) < v2)
  {
    goto LABEL_27;
  }

  v23 = *(a1 + 10);
  v24 = *a1;
  v41 = *a1;
  v42 = v3;
  v43 = v2;
  v21 = v4;
  v44 = v4;
  v45 = v5;
  v22 = v6;
  v46 = v6;
  v47 = v3;
  v48 = v2;
  if (v2 == v3)
  {
LABEL_4:

    sub_1003A52D0(&v41);
    sub_1003A5324();
    swift_allocError();
    goto LABEL_23;
  }

  v7 = 0;
  v8 = v3 + (v5 << 8) + v6;
  while (1)
  {
    if (v3 + v7 < v42)
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    if (v3 + v7 - v42 >= v43 - v42)
    {
      goto LABEL_25;
    }

    swift_beginAccess();
    v9 = *(*(v41 + 24) + (v46 | (v45 << 8)) + v3 + v7);
    v10 = v9 - 32;
    if (v9 < 0x20)
    {
      break;
    }

    if (v10 <= 0x3D)
    {
      if (v10 == 61)
      {
        goto LABEL_6;
      }

      if (((1 << (v9 - 32)) & 0x1000000000000725) != 0)
      {
        break;
      }
    }

    if (v9 == 123 || (v9 & 0x80) != 0)
    {
      break;
    }

LABEL_6:
    ++v8;
    ++v7;
    if (!(v3 - v2 + v7))
    {
      goto LABEL_4;
    }
  }

  sub_1003A52D0(&v41);
  v33 = v24;
  v34 = v3;
  v35 = v2;
  v36 = v21;
  v37 = v23;
  v38 = v22;
  v39 = v3;
  v40 = v2;

  sub_1003A52D0(&v33);
  if (v3 + v7 != v39)
  {
    v25 = v24;
    v26 = v3;
    v27 = v2;
    v28 = v21;
    v29 = v23;
    v30 = v22;
    v31 = v3;
    v32 = v2;
    v11 = v3 + v7;

    sub_1003A52D0(&v25);
    if (__OFSUB__(v11, v31))
    {
      goto LABEL_28;
    }

    v12 = ByteBuffer.readSlice(length:)(v11 - v31);
    if (v12)
    {
      *a2 = v12;
      *(a2 + 8) = v13;
      *(a2 + 16) = v14;
      *(a2 + 20) = WORD2(v14);
      *(a2 + 22) = BYTE6(v14);
      return;
    }

    goto LABEL_30;
  }

  v25 = v24;
  v26 = v3;
  v27 = v2;
  v28 = v21;
  v29 = v23;
  v30 = v22;
  v31 = v3;
  v32 = v2;
  if (v7 >= (v2 - v3))
  {
    goto LABEL_29;
  }

  swift_beginAccess();
  v15 = *(v24 + 24);
  v16 = *(v15 + v8);
  v17 = *(v15 + v8);

  sub_1003A52D0(&v25);
  sub_1004A6724(19);
  v50._object = 0x80000001004B0EA0;
  v50._countAndFlagsBits = 0xD000000000000011;
  sub_1004A5994(v50);
  v18 = ((v17 >> 6) & 0xFFFFC0FF | ((v17 & 0x3F) << 8)) + 33217;
  if (v16 >= 0)
  {
    v18 = v17 + 1;
  }

  v49 = (v18 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v18) >> 3))));
  sub_1004A58E4();
  sub_1004A55C4();

  sub_1003A527C();
  swift_allocError();
  *v19 = 0;
  v19[1] = 0xE000000000000000;
  v19[2] = 0xD000000000000020;
  v19[3] = 0x80000001004B03C0;
  v19[4] = 118;
LABEL_23:
  swift_willThrow();
}

uint64_t sub_100467378(uint64_t result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    goto LABEL_40;
  }

  v10 = a3;
  if (v9 >= a3)
  {
    sub_1003A5228();
    swift_allocError();
    *v46 = v10;
LABEL_35:
    swift_willThrow();
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {
    }
  }

  v11 = result;
  v12 = a2 + 2;
  v13 = *result;
  v14 = *(result + 8);
  v15 = *(result + 16);
  v16 = *(result + 20);
  v17 = *(result + 22);
  if (a2 + 2 >= a3)
  {
LABEL_32:
    sub_1003A5228();
    swift_allocError();
    *v47 = v10;

LABEL_34:
    swift_willThrow();

    *v11 = v13;
    *(v11 + 8) = v14;
    *(v11 + 16) = v15;
    *(v11 + 20) = v16;
    *(v11 + 22) = v17;
    goto LABEL_35;
  }

  v48 = a2 + 1;
  while (1)
  {

    sub_100469DF8(v11);
    if (v8)
    {
      *v11 = v13;
      *(v11 + 8) = v14;
      *(v11 + 16) = v15;
      *(v11 + 20) = v16;
      *(v11 + 22) = v17;
      goto LABEL_34;
    }

    sub_1003FC270(v11, v9, v10, a5, a6, a7, a8);
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v55 = v28;

    v29 = a4;
    v31 = *a4;
    v30 = a4[1];
    v32 = *(v30 + 16);
    if (*a4)
    {

      v33 = sub_1001E74AC(v23, v25, v30 + 32, v32, (v31 + 16), v31 + 32);
      v35 = v34;
      v37 = v36;

      if (v35)
      {
        v29 = a4;
LABEL_22:
        sub_10046A724(v23, v25, v37, sub_100091A08);

        v40 = v29[2];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v29[2] = v40;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100091A08(0, *(v40 + 16) + 1, 1);
          v40 = v29[2];
        }

        v19 = *(v40 + 16);
        v18 = *(v40 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_100091A08((v18 > 1), v19 + 1, 1);
        }

        v20 = v29[2];
        *(v20 + 16) = v19 + 1;
        v21 = v20 + 16 * v19;
        *(v21 + 32) = v55;
        *(v21 + 40) = v27;
        goto LABEL_8;
      }

      v29 = a4;
    }

    else
    {
      if (!v32)
      {
LABEL_21:

        v37 = 0;
        goto LABEL_22;
      }

      v33 = 0;
      v38 = (v30 + 40);
      while (1)
      {
        v39 = *(v38 - 1) == v23 && *v38 == v25;
        if (v39 || (sub_1004A6D34() & 1) != 0)
        {
          break;
        }

        ++v33;
        v38 += 2;
        if (v32 == v33)
        {
          goto LABEL_21;
        }
      }
    }

    v42 = v29[2];
    v43 = swift_isUniquelyReferenced_nonNull_native();
    v29[2] = v42;
    if ((v43 & 1) == 0)
    {
      v29[2] = sub_1001EDFFC(v42);
    }

    if ((v33 & 0x8000000000000000) != 0)
    {
      break;
    }

    v44 = v29[2];
    if (v33 >= *(v44 + 16))
    {
      goto LABEL_39;
    }

    v45 = v44 + 16 * v33;
    *(v45 + 32) = v55;
    *(v45 + 40) = v27;

LABEL_8:
    v13 = *v11;
    v14 = *(v11 + 8);
    v15 = *(v11 + 16);
    v16 = *(v11 + 20);
    v17 = *(v11 + 22);
    v9 = v48;
    v10 = a3;
    v8 = 0;
    if (v12 >= a3)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1004677A0(uint64_t result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    goto LABEL_40;
  }

  v10 = a3;
  if (v9 >= a3)
  {
    sub_1003A5228();
    swift_allocError();
    *v46 = v10;
LABEL_35:
    swift_willThrow();
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {
    }
  }

  v11 = result;
  v12 = a2 + 2;
  v13 = *result;
  v14 = *(result + 8);
  v15 = *(result + 16);
  v16 = *(result + 20);
  v17 = *(result + 22);
  if (a2 + 2 >= a3)
  {
LABEL_32:
    sub_1003A5228();
    swift_allocError();
    *v47 = v10;

LABEL_34:
    swift_willThrow();

    *v11 = v13;
    *(v11 + 8) = v14;
    *(v11 + 16) = v15;
    *(v11 + 20) = v16;
    *(v11 + 22) = v17;
    goto LABEL_35;
  }

  v48 = a2 + 1;
  while (1)
  {

    sub_100469DF8(v11);
    if (v8)
    {
      *v11 = v13;
      *(v11 + 8) = v14;
      *(v11 + 16) = v15;
      *(v11 + 20) = v16;
      *(v11 + 22) = v17;
      goto LABEL_34;
    }

    sub_100426C94(v11, v9, v10, a5, a6, a7, a8);
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v55 = v28;

    v29 = a4;
    v31 = *a4;
    v30 = a4[1];
    v32 = *(v30 + 16);
    if (*a4)
    {

      v33 = sub_1001E74AC(v23, v25, v30 + 32, v32, (v31 + 16), v31 + 32);
      v35 = v34;
      v37 = v36;

      if (v35)
      {
        v29 = a4;
LABEL_22:
        sub_10046A724(v23, v25, v37, sub_100091A08);

        v40 = v29[2];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v29[2] = v40;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1001D600C(0, *(v40 + 16) + 1, 1);
          v40 = v29[2];
        }

        v19 = *(v40 + 16);
        v18 = *(v40 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_1001D600C((v18 > 1), v19 + 1, 1);
        }

        v20 = v29[2];
        *(v20 + 16) = v19 + 1;
        v21 = v20 + 16 * v19;
        *(v21 + 32) = v55;
        *(v21 + 40) = v27;
        goto LABEL_8;
      }

      v29 = a4;
    }

    else
    {
      if (!v32)
      {
LABEL_21:

        v37 = 0;
        goto LABEL_22;
      }

      v33 = 0;
      v38 = (v30 + 40);
      while (1)
      {
        v39 = *(v38 - 1) == v23 && *v38 == v25;
        if (v39 || (sub_1004A6D34() & 1) != 0)
        {
          break;
        }

        ++v33;
        v38 += 2;
        if (v32 == v33)
        {
          goto LABEL_21;
        }
      }
    }

    v42 = v29[2];
    v43 = swift_isUniquelyReferenced_nonNull_native();
    v29[2] = v42;
    if ((v43 & 1) == 0)
    {
      v29[2] = sub_1001EE010(v42);
    }

    if ((v33 & 0x8000000000000000) != 0)
    {
      break;
    }

    v44 = v29[2];
    if (v33 >= *(v44 + 16))
    {
      goto LABEL_39;
    }

    v45 = v44 + 16 * v33;
    *(v45 + 32) = v55;
    *(v45 + 40) = v27;

LABEL_8:
    v13 = *v11;
    v14 = *(v11 + 8);
    v15 = *(v11 + 16);
    v16 = *(v11 + 20);
    v17 = *(v11 + 22);
    v9 = v48;
    v10 = a3;
    v8 = 0;
    if (v12 >= a3)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_100467BC8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (__OFADD__(a2, 1))
  {
    goto LABEL_65;
  }

  v9 = a6;
  if (a2 + 1 >= a3)
  {
    sub_1003A5228();
    v75 = swift_allocError();
    *v76 = a3;
LABEL_59:
    swift_willThrow();
    v96[0] = v75;
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {
    }
  }

  v10 = result;
  v11 = *result;
  v12 = *(result + 8);
  v13 = *(result + 16);
  v14 = *(result + 20);
  v15 = *(result + 22);
  v88 = a2 + 2;
  if (a2 + 2 >= a3)
  {
LABEL_56:
    sub_1003A5228();
    v8 = swift_allocError();
    *v77 = a3;

LABEL_58:
    swift_willThrow();

    *v10 = v11;
    *(v10 + 8) = v12;
    *(v10 + 16) = v13;
    *(v10 + 20) = v14;
    *(v10 + 22) = v15;
    v75 = v8;
    goto LABEL_59;
  }

  v16 = a4;
  v82 = a2 + 1;
  v79 = result;
  while (1)
  {

    sub_100469DF8(v10);
    if (v8)
    {
      *v10 = v11;
      *(v10 + 8) = v12;
      *(v10 + 16) = v13;
      *(v10 + 20) = v14;
      *(v10 + 22) = v15;
      goto LABEL_58;
    }

    sub_100401688(v10, v82, a3, a5, v9, a7, a8, &v101);

    v22 = v101;
    v23 = v102;
    v24 = v103;
    v94 = v104;
    v25 = v105;
    *&v108[15] = *&v107[15];
    *v108 = *v107;
    v26 = *v16;
    v27 = v16[1];
    v95 = v106;
    v86 = v102;
    v87 = v103;
    v93 = v105;
    if (*v16)
    {
      break;
    }

    v39 = *(v27 + 16);
    if (!v39)
    {

      sub_100475424(v108, &v97);
      v72 = v78;
      v55 = v95;
      v9 = a6;
LABEL_51:
      v78 = v72 & 0xFF00000000000000 | v94 | (v25 << 32) | (v55 << 48);
      sub_10046A8F4(v22, v23 | (v24 << 32), v78, v39, sub_1003E553C);

      v73 = v16[2];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v16[2] = v73;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1003E551C(0, *(v73 + 16) + 1, 1);
        v73 = v16[2];
      }

      v18 = *(v73 + 16);
      v17 = *(v73 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1003E551C((v17 > 1), v18 + 1, 1);
      }

      sub_100025F40(&v101, &qword_1005DC7A0, &qword_100504120);
      v19 = v16[2];
      *(v19 + 16) = v18 + 1;
      v20 = v19 + 24 * v18;
      v21 = *v108;
      *(v20 + 47) = *&v108[15];
      *(v20 + 32) = v21;
      goto LABEL_8;
    }

    v92 = v103 - v102;
    v53 = v16[1];

    sub_100475424(v108, &v97);
    v54 = v22;
    swift_beginAccess();
    v37 = 0;
    v55 = v95;
    v56 = v95 | (v25 << 8);
    v57 = (v53 + 54);
    v89 = v56 + v23;
    while (1)
    {
      v58 = *(v57 - 14);
      v59 = *(v57 - 10);
      if (v59 - v58 == v92)
      {
        v60 = *(v57 - 22);
        v61 = *(v57 - 1);
        v62 = *v57;
        v63 = *(v57 - 6) == v94 && v61 == v93;
        v64 = v63 && v62 == v55;
        if (v64 && v60 == v54)
        {
          break;
        }

        swift_beginAccess();
        v66 = memcmp((*(v60 + 24) + (v62 | (v61 << 8)) + v58), (*(v54 + 24) + v89), v59 - v58);
        v55 = v95;
        if (!v66)
        {
          break;
        }
      }

      v57 += 24;
      if (v39 == ++v37)
      {
        v39 = 0;
        v16 = a4;
        v9 = a6;
        v72 = v78;
        v10 = v79;
        v22 = v54;
        v23 = v86;
        v24 = v87;
        v25 = v93;
        goto LABEL_51;
      }
    }

LABEL_43:

    v16 = a4;
    v9 = a6;
    v67 = a4[2];
    v68 = swift_isUniquelyReferenced_nonNull_native();
    a4[2] = v67;
    v10 = v79;
    if ((v68 & 1) == 0)
    {
      a4[2] = sub_10046B630(v67);
    }

    result = sub_100025F40(&v101, &qword_1005DC7A0, &qword_100504120);
    if ((v37 & 0x8000000000000000) != 0)
    {
      goto LABEL_63;
    }

    v69 = a4[2];
    if (v37 >= *(v69 + 16))
    {
      goto LABEL_64;
    }

    v70 = v69 + 24 * v37;
    v71 = *v108;
    *(v70 + 47) = *&v108[15];
    *(v70 + 32) = v71;

LABEL_8:
    v11 = *v10;
    v12 = *(v10 + 8);
    v13 = *(v10 + 16);
    v14 = *(v10 + 20);
    v15 = *(v10 + 22);
    v8 = 0;
    if (v88 >= a3)
    {
      goto LABEL_56;
    }
  }

  v28 = v106;
  sub_1004A6E94();
  swift_beginAccess();
  v29 = v28 | (v25 << 8);
  sub_1004A6EA4();
  result = sub_1004A6F14();
  v30 = 1 << *(v26 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (!v31)
  {
    v33 = v32 & result;
    v34 = sub_1004A46F4();
    *&v113 = v26 + 16;
    *(&v113 + 1) = v26 + 32;
    *&v114 = v33;
    *(&v114 + 1) = v34;
    *&v115 = v35;
    *(&v115 + 1) = v36;
    v116 = 0;
    v37 = sub_1004A4724();
    LOBYTE(v33) = v38;
    v39 = v114;
    v97 = v113;
    v98 = v114;
    v99 = v115;
    v100 = v116;

    sub_100475424(v108, v96);

    if (v33)
    {
      v16 = a4;
      v9 = a6;
    }

    else
    {
      v40 = v22;
      v41 = v27 + 32;
      v42 = v87 - v23;
      v91 = v29 + v23;
      do
      {
        v44 = (v41 + 24 * v37);
        v45 = *(v44 + 2);
        v46 = *(v44 + 3);
        if (v46 - v45 == v42)
        {
          v47 = *v44;
          v48 = *(v44 + 10);
          v49 = *(v44 + 22);
          v50 = *(v44 + 4) == v94 && v48 == v93;
          v51 = v50 && v49 == v95;
          v52 = v51 && v47 == v40;
          if (v52 || (swift_beginAccess(), !memcmp((*(v47 + 24) + (v49 | (v48 << 8)) + v45), (*(v40 + 24) + v91), v46 - v45)))
          {

            goto LABEL_43;
          }
        }

        sub_1004A4744();
        v109 = v97;
        v110 = v98;
        v111 = v99;
        v112 = v100;
        v39 = v98;
        v37 = sub_1004A4724();
      }

      while ((v43 & 1) == 0);
      v10 = v79;
      v16 = a4;
      v22 = v40;
      v9 = a6;
      v23 = v86;
    }

    v72 = v78;
    v24 = v87;
    v25 = v93;
    v55 = v95;
    goto LABEL_51;
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
  return result;
}

void sub_1004682F4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v144 = a7;
  v145 = a8;
  v146 = a6;
  v143 = a5;
  v149 = a1;
  v167 = type metadata accessor for ParameterValue(0);
  v11 = *(v167 - 8);
  __chkstk_darwin(v167);
  v142 = &v140 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v141 = &v140 - v14;
  __chkstk_darwin(v15);
  v147 = &v140 - v16;
  v155 = sub_10000C9C0(&qword_1005DC790, &unk_10050A070);
  __chkstk_darwin(v155);
  v18 = &v140 - v17;
  v19 = sub_10000C9C0(&qword_1005D7F50, &unk_100502FF0);
  __chkstk_darwin(v19 - 8);
  v21 = &v140 - v20;
  v22 = sub_10000C9C0(&qword_1005DD368, &qword_10050A080);
  __chkstk_darwin(v22 - 8);
  v168 = &v140 - v23;
  v166 = sub_10000C9C0(&qword_1005DC7E0, &qword_1005048E8);
  __chkstk_darwin(v166);
  v165 = &v140 - v25;
  v26 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    goto LABEL_112;
  }

  v27 = a2 + 2;
  v150 = (v24 + 48);
  v151 = a2 + 2;
  v156 = (v11 + 56);
  v157 = (v24 + 56);
  v148 = v11;
  v152 = (v11 + 48);
  v153 = v18;
  v163 = a4;
  v164 = v21;
  v154 = a3;
  v158 = a2 + 1;
  while (1)
  {
    while (1)
    {
      if (v26 >= a3)
      {
        sub_1003A5228();
        v36 = swift_allocError();
        *v37 = a3;
      }

      else
      {
        v28 = v149;
        v29 = *v149;
        v30 = *(v149 + 2);
        v31 = *(v149 + 3);
        v32 = *(v149 + 4);
        v33 = *(v149 + 10);
        v34 = *(v149 + 22);
        if (v27 >= a3)
        {
          sub_1003A5228();
          v35 = swift_allocError();
          *v38 = a3;
        }

        else
        {

          v35 = v161;
          sub_100469DF8(v28);
          if (!v35)
          {
            sub_10040A230(v28, v158, a3, v143, v146, v144, v145, v168);

            (*v157)(v168, 0, 1, v166);
            v42 = v163;
            v41 = v164;
            goto LABEL_16;
          }

          *v28 = v29;
          *(v28 + 2) = v30;
          *(v28 + 3) = v31;
          *(v28 + 4) = v32;
          *(v28 + 10) = v33;
          *(v28 + 22) = v34;
        }

        swift_willThrow();

        *v28 = v29;
        *(v28 + 2) = v30;
        *(v28 + 3) = v31;
        *(v28 + 4) = v32;
        *(v28 + 10) = v33;
        *(v28 + 22) = v34;
        v36 = v35;
        a4 = v163;
        v21 = v164;
      }

      swift_willThrow();
      v178 = v36;
      swift_errorRetain();
      sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
      if (!swift_dynamicCast())
      {

        return;
      }

      v39 = v168;
      v40 = v166;
      (*v157)(v168, 1, 1, v166);

      if ((*v150)(v39, 1, v40) == 1)
      {
        sub_100025F40(v168, &qword_1005DD368, &qword_10050A080);

        return;
      }

      v41 = v21;
      v42 = a4;
LABEL_16:
      v161 = 0;
      v43 = v165;
      sub_100025FDC(v168, v165, &qword_1005DC7E0, &qword_1005048E8);
      v44 = *v43;
      v45 = *(v43 + 8);
      v46 = *(v43 + 12);
      v171 = *(v43 + 16);
      v47 = *(v43 + 20);
      v48 = *(v43 + 22);
      sub_1004754E8(v43 + *(v166 + 52), v41, type metadata accessor for ParameterValue);
      (*v156)(v41, 0, 1, v167);
      v49 = *v42;
      v50 = v42[1];
      v172 = v48;
      v173 = v47;
      v162 = v45;
      v160 = v46;
      if (v49)
      {
        break;
      }

      v66 = *(v50 + 16);
      if (v66)
      {
        v72 = v160 - v45;
        swift_beginAccess();
        v73 = v45;
        v63 = 0;
        v75 = v172;
        v74 = v173;
        v76 = (v50 + 54);
        v169 = (v172 | (v173 << 8)) + v73;
        LODWORD(v170) = v72;
        while (1)
        {
          v77 = *(v76 - 14);
          v78 = *(v76 - 10);
          if (v78 - v77 == v72)
          {
            v187 = v63;
            v79 = v66;
            v80 = *(v76 - 22);
            v81 = v44;
            v82 = *(v76 - 1);
            v83 = *v76;
            if (*(v76 - 6) == v171 && v82 == v74 && v83 == v75 && v80 == v81)
            {
              v66 = 0;
              v63 = v187;
              goto LABEL_58;
            }

            swift_beginAccess();
            v87 = memcmp((*(v80 + 24) + (v83 | (v82 << 8)) + v77), (*(v81 + 24) + v169), v78 - v77);
            v75 = v172;
            v74 = v173;
            v44 = v81;
            v66 = v79;
            v63 = v187;
            v72 = v170;
            if (!v87)
            {
              v66 = 0;
              goto LABEL_58;
            }
          }

          v76 += 24;
          if (v66 == ++v63)
          {
            v187 = v44;
            v66 = 0;
            goto LABEL_20;
          }
        }
      }

      v187 = v44;
      v67 = v42;
      v21 = v41;
LABEL_21:
      v68 = *(v155 + 48);
      v69 = v153;
      sub_10000E268(v21, &v153[v68], &qword_1005D7F50, &unk_100502FF0);
      v70 = (*v152)(&v69[v68], 1, v167);
      v71 = v154;
      if (v70 == 1)
      {
        sub_100025F40(v21, &qword_1005D7F50, &unk_100502FF0);
        sub_100025F40(v165, &qword_1005DC7E0, &qword_1005048E8);
        v26 = v158;
        v27 = v151;
        a4 = v67;
        a3 = v71;
      }

      else
      {
        v170 = type metadata accessor for ParameterValue;
        v123 = &v69[v68];
        v124 = v141;
        sub_100475480(v123, v141, type metadata accessor for ParameterValue);
        v140 = v140 & 0xFF00000000000000 | v171 | (v173 << 32) | (v172 << 48);
        v125 = v66;
        a4 = v67;
        sub_10046A8F4(v187, v162 | (v160 << 32), v140, v125, sub_1003E555C);
        sub_1004754E8(v124, v142, v170);
        v126 = v67[2];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v67[2] = v126;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1002E5340(0, *(v126 + 16) + 1, 1);
          v126 = v67[2];
        }

        v129 = *(v126 + 16);
        v128 = *(v126 + 24);
        if (v129 >= v128 >> 1)
        {
          sub_1002E5340((v128 > 1), v129 + 1, 1);
        }

        sub_100475550(v141, type metadata accessor for ParameterValue);
        sub_100025F40(v21, &qword_1005D7F50, &unk_100502FF0);
        sub_100025F40(v165, &qword_1005DC7E0, &qword_1005048E8);
        v130 = a4[2];
        *(v130 + 16) = v129 + 1;
        sub_100475480(v142, v130 + ((*(v148 + 80) + 32) & ~*(v148 + 80)) + *(v148 + 72) * v129, type metadata accessor for ParameterValue);
        v26 = v158;
        v27 = v151;
        a3 = v71;
      }
    }

    v170 = v50;
    v51 = v49;
    v52 = (v49 + 16);
    sub_1004A6E94();
    swift_beginAccess();
    v53 = v48 | (v47 << 8);
    sub_1004A6EA4();
    v54 = sub_1004A6F14();
    v55 = 1 << *v52;
    v56 = __OFSUB__(v55, 1);
    v57 = v55 - 1;
    if (v56)
    {
      break;
    }

    v58 = v46;
    v187 = v44;
    v59 = v57 & v54;
    v60 = sub_1004A46F4();
    *&v183 = v52;
    *(&v183 + 1) = v51 + 32;
    *&v184 = v59;
    *(&v184 + 1) = v60;
    *&v185 = v61;
    *(&v185 + 1) = v62;
    v186 = 0;
    v63 = sub_1004A4724();
    v65 = v64;
    v66 = v184;
    v174 = v183;
    v175 = v184;
    v176 = v185;
    v177 = v186;
    v159 = v51;

    if (v65)
    {
LABEL_19:

LABEL_20:
      v67 = v163;
      v21 = v164;
      goto LABEL_21;
    }

    v88 = v58 - v162;
    v169 = v53 + v162;
    v170 = (v170 + 32);
    while (1)
    {
      v90 = v170 + 24 * v63;
      v91 = *(v90 + 2);
      v92 = *(v90 + 3);
      if (v92 - v91 == v88)
      {
        v93 = *v90;
        v94 = *(v90 + 10);
        v95 = v90[22];
        v96 = *(v90 + 4) == v171 && v94 == v173;
        v97 = v96 && v95 == v172;
        if (v97 && v93 == v187)
        {
          break;
        }

        swift_beginAccess();
        if (!memcmp((*(v93 + 24) + (v95 | (v94 << 8)) + v91), (*(v187 + 24) + v169), v92 - v91))
        {
          break;
        }
      }

      sub_1004A4744();
      v179 = v174;
      v180 = v175;
      v181 = v176;
      v182 = v177;
      v66 = v175;
      v63 = sub_1004A4724();
      if (v89)
      {
        goto LABEL_19;
      }
    }

LABEL_58:
    v99 = *(v155 + 48);
    v100 = v153;
    sub_10000E268(v164, &v153[v99], &qword_1005D7F50, &unk_100502FF0);
    v101 = (*v152)(&v100[v99], 1, v167);
    v102 = v163;
    a3 = v154;
    if (v101 == 1)
    {
      v104 = *v163;
      v103 = v163[1];
      v105 = v163;
      v106 = *(v103 + 2);
      if (*v163)
      {
        swift_beginAccess();
        if ((*(v104 + 16) & 0x3FLL) == (*(v104 + 24) & 0x3FLL))
        {
          if (!v106)
          {
LABEL_81:
            v117 = swift_isUniquelyReferenced_nonNull_native();
            v102[1] = v103;
            if ((v117 & 1) == 0)
            {
              v103 = sub_10046B670(v103);
              v105[1] = v103;
            }

            v118 = *(v103 + 2);
            if (v63 >= v118)
            {
              goto LABEL_113;
            }

            v119 = v118 - 1;
            memmove(&v103[24 * v63 + 32], &v103[24 * v63 + 56], 24 * (v118 - 1 - v63));
            *(v103 + 2) = v119;
            v105[1] = v103;
            v120 = *v105;
            if (*v105)
            {
              swift_beginAccess();
              v121 = *(v120 + 24) & 0x3FLL;
              v122 = *(v103 + 2);
              if (v121)
              {
LABEL_95:
                v131 = sub_1004A4784();
                if (v121 <= v131)
                {
                  v132 = v131;
                }

                else
                {
                  v132 = v121;
                }

                v133 = sub_10046B184(v103, v132, 0, v121, sub_10046B264);

                a4 = v102;
                *v102 = v133;
                goto LABEL_99;
              }
            }

            else
            {
              v121 = 0;
              v122 = *(v103 + 2);
            }

            if (v122 >= 0x10)
            {
              goto LABEL_95;
            }

            a4 = v102;
            *v102 = 0;
LABEL_99:

            v134 = a4[2];
            v135 = swift_isUniquelyReferenced_nonNull_native();
            a4[2] = v134;
            if ((v135 & 1) == 0)
            {
              v134 = sub_10046B5C8(v134);
              a4[2] = v134;
            }

            v136 = v134[2];
            if (v63 >= v136)
            {
              goto LABEL_111;
            }

            v137 = v136 - 1;
            v138 = *(v148 + 72);
            v139 = v134 + ((*(v148 + 80) + 32) & ~*(v148 + 80)) + v138 * v63;
            sub_100475550(v139, type metadata accessor for ParameterValue);
            if (v138 > 0 || v139 >= v139 + v138 + v138 * (v137 - v63))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v138)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v134[2] = v137;
            a4[2] = v134;
            v21 = v164;
            sub_100025F40(v164, &qword_1005D7F50, &unk_100502FF0);
            sub_100025F40(v165, &qword_1005DC7E0, &qword_1005048E8);
            goto LABEL_5;
          }
        }

        else if (v106 <= sub_1004A4764())
        {
          goto LABEL_81;
        }

        isUniquelyReferenced_native = swift_isUniquelyReferenced_native();
        v114 = *v102;
        if ((isUniquelyReferenced_native & 1) == 0)
        {
          if (!v114)
          {
            goto LABEL_118;
          }

          v115 = sub_1004A4774();

          *v102 = v115;
          v114 = v115;
        }

        if (!v114)
        {
          goto LABEL_117;
        }

        v116 = v66;
        a4 = v102;
        sub_1003FEC78(v116, (v114 + 16), v114 + 32, v102);
        if (__OFADD__(v63, 1))
        {
          goto LABEL_114;
        }

        if ((v63 + 1) < v63)
        {
          goto LABEL_115;
        }

        sub_1003FEEC0(v63);
        sub_1003FEBA4(v63);
        goto LABEL_99;
      }

      if (!v106)
      {
        goto LABEL_81;
      }

      v110 = swift_isUniquelyReferenced_nonNull_native();
      a4 = v102;
      v102[1] = v103;
      if ((v110 & 1) == 0)
      {
        v103 = sub_10046B670(v103);
        v105[1] = v103;
      }

      v111 = *(v103 + 2);
      if (v63 >= v111)
      {
        goto LABEL_116;
      }

      v112 = v111 - 1;
      memmove(&v103[24 * v63 + 32], &v103[24 * v63 + 56], 24 * (v111 - 1 - v63));
      *(v103 + 2) = v112;
      v105[1] = v103;
      goto LABEL_99;
    }

    sub_100475480(&v100[v99], v147, type metadata accessor for ParameterValue);
    v107 = v102[2];
    v108 = swift_isUniquelyReferenced_nonNull_native();
    v102[2] = v107;
    a4 = v102;
    if ((v108 & 1) == 0)
    {
      v102[2] = sub_10046B5C8(v107);
    }

    v21 = v164;
    sub_100025F40(v164, &qword_1005D7F50, &unk_100502FF0);
    sub_100025F40(v165, &qword_1005DC7E0, &qword_1005048E8);
    if ((v63 & 0x8000000000000000) != 0)
    {
      goto LABEL_109;
    }

    v109 = a4[2];
    if (v63 >= *(v109 + 16))
    {
      goto LABEL_110;
    }

    sub_10040018C(v147, v109 + ((*(v148 + 80) + 32) & ~*(v148 + 80)) + *(v148 + 72) * v63);
LABEL_5:
    v26 = v158;
    v27 = v151;
  }

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
}