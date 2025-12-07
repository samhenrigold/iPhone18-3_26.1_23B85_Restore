Swift::Int CreateParameter.hashValue.getter()
{
  sub_1004A6E94();
  CreateParameter.hash(into:)(v1);
  return sub_1004A6F14();
}

Swift::Int sub_1003E0228(uint64_t a1)
{
  sub_1004A6E94();
  CreateParameter.hash(into:)(v2);
  return sub_1004A6F14();
}

uint64_t _s12NIOIMAPCore215CreateParameterO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005DBCA8, &unk_100504BF0);
  __chkstk_darwin(v4 - 8);
  v6 = (&v21 - v5);
  Parameter = type metadata accessor for CreateParameter(0);
  __chkstk_darwin(Parameter);
  v9 = (&v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v12 = (&v21 - v11);
  v13 = sub_10000C9C0(&qword_1005DBCB0, &qword_1004FE5C8);
  __chkstk_darwin(v13 - 8);
  v15 = &v21 - v14;
  v17 = *(v16 + 56);
  sub_1003E0540(a1, &v21 - v14);
  sub_1003E0540(a2, &v15[v17]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1003E0540(v15, v9);
    v18 = *v9;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v19 = sub_1003A3710(v18, *&v15[v17]);

LABEL_9:
      sub_1003E0918(v15, type metadata accessor for CreateParameter);
      return v19 & 1;
    }
  }

  else
  {
    sub_1003E0540(v15, v12);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1003E05A4(&v15[v17], v6);
      v19 = sub_100436BFC(v12, v6);
      sub_100025F40(v6, &qword_1005DBCA8, &unk_100504BF0);
      sub_100025F40(v12, &qword_1005DBCA8, &unk_100504BF0);
      goto LABEL_9;
    }

    sub_100025F40(v12, &qword_1005DBCA8, &unk_100504BF0);
  }

  sub_100025F40(v15, &qword_1005DBCB0, &qword_1004FE5C8);
  v19 = 0;
  return v19 & 1;
}

uint64_t type metadata accessor for CreateParameter(uint64_t a1)
{
  result = qword_1005DC488;
  if (!qword_1005DC488)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003E0540(uint64_t a1, uint64_t a2)
{
  Parameter = type metadata accessor for CreateParameter(0);
  (*(*(Parameter - 8) + 16))(a2, a1, Parameter);
  return a2;
}

uint64_t sub_1003E05A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005DBCA8, &unk_100504BF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003E0614(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D7F50, &unk_100502FF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1003E06CC(uint64_t a1)
{
  sub_1003E0740(319);
  if (v1 <= 0x3F)
  {
    sub_1003E08C8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1003E0740(uint64_t a1)
{
  if (!qword_1005DC498)
  {
    v4[0] = &type metadata for String;
    v4[1] = sub_10000DEFC(&qword_1005D7F50, &unk_100502FF0);
    v4[2] = &protocol witness table for String;
    v4[3] = sub_1003E07CC();
    v2 = type metadata accessor for KeyValue(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1005DC498);
    }
  }
}

unint64_t sub_1003E07CC()
{
  result = qword_1005DC4A0;
  if (!qword_1005DC4A0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10000DEFC(&qword_1005D7F50, &unk_100502FF0);
    v4[0] = sub_1003E0880(&qword_1005DC4A8, type metadata accessor for ParameterValue, protocol conformance descriptor for ParameterValue);
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v3, v4);
    atomic_store(result, &qword_1005DC4A0);
  }

  return result;
}

uint64_t sub_1003E0880(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

void sub_1003E08C8()
{
  if (!qword_1005DC4B0)
  {
    v0 = sub_1004A5CD4();
    if (!v1)
    {
      atomic_store(v0, &qword_1005DC4B0);
    }
  }
}

uint64_t sub_1003E0918(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1003E0978(uint64_t result, unint64_t a2)
{
  v3 = v2;
  if (*v2 == 1)
  {
    sub_10015BC90(result, a2);

    v16._countAndFlagsBits = sub_1004A6CE4();
    sub_1004A5994(v16);

    v17._countAndFlagsBits = 0x5D736574796220;
    v17._object = 0xE700000000000000;
    sub_1004A5994(v17);
    v4 = *(v2 + 20);
    v5 = sub_1002F178C(0x5BuLL, 0xE100000000000000, v2 + 8, v4);
    if (v6)
    {
      v7._countAndFlagsBits = 91;
      v7._object = 0xE100000000000000;
      v5 = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
    }

    v8 = v5;

    v9 = *(v3 + 20);
    result = v8;
    v10 = __CFADD__(v9, v8);
    v11 = v9 + v8;
    if (!v10)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  v12 = *(v3 + 20);
  v13 = result;
  v14 = a2;
  result = sub_1003B2588(result, a2, v3 + 8, v12);
  if ((result & 0x100000000) != 0)
  {
    result = sub_1003B51F4(v13, v14, v12);
  }

  v15 = *(v3 + 20);
  v10 = __CFADD__(v15, result);
  v11 = v15 + result;
  if (!v10)
  {
    result = result;
LABEL_11:
    *(v3 + 20) = v11;
    return result;
  }

  __break(1u);
  return result;
}

void sub_1003E0AC4(uint64_t a1)
{
  v2 = v1;
  if (*v1 == 1)
  {
    v11._countAndFlagsBits = sub_1004A6CE4();
    sub_1004A5994(v11);

    v12._countAndFlagsBits = 0x5D736574796220;
    v12._object = 0xE700000000000000;
    sub_1004A5994(v12);
    v3 = *(v1 + 20);
    v4 = sub_1002F178C(0x5BuLL, 0xE100000000000000, v1 + 8, v3);
    if (v5)
    {
      v6._countAndFlagsBits = 91;
      v6._object = 0xE100000000000000;
      v4 = ByteBuffer._setStringSlowpath(_:at:)(v6, v3);
    }

    v7 = v4;

    v8 = *(v2 + 20);
    v9 = __CFADD__(v8, v7);
    v10 = v8 + v7;
    if (v9)
    {
      __break(1u);
    }

    else
    {
      *(v2 + 20) = v10;
    }
  }

  else
  {
    sub_10041F128(a1);
  }
}

void sub_1003E0BCC(uint64_t *a1)
{
  v2 = v1;
  if (*v2 != 1)
  {
    v8 = *(v2 + 20);
    v9 = *a1;
    v10 = *(a1 + 10);
    v11 = *(a1 + 22);
    swift_beginAccess();
    v13 = a1[3];
    v12 = a1[4];
    v14 = v12 - v13;
    if (!__OFSUB__(v12, v13))
    {
      v15 = v8 + v14;
      if (!__CFADD__(v8, v14))
      {
        v16 = *(v9 + 24);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = *(v2 + 24);
          v18 = v15 >= v17;
          v19 = v15 - v17;
          if (v18)
          {
            v20 = v19;
          }

          else
          {
            v20 = 0;
          }

          v21 = variable initialization expression of Engine.isProcessingUpdates();
          ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v20, v21 & 1);
        }

        if (v14 <= 0xFFFFFFFFLL)
        {
          ByteBuffer._ensureAvailableCapacity(_:at:)(v14, v8);
          ByteBuffer._setBytesAssumingUniqueBufferAccess(_:at:)((v16 + (v11 | (v10 << 8)) + v13), v16 + (v11 | (v10 << 8)) + v13 + v14, v8);
          v22 = *(v2 + 20);
          v18 = __CFADD__(v22, v14);
          v23 = v22 + v14;
          if (!v18)
          {
LABEL_18:
            *(v2 + 20) = v23;
            return;
          }

          goto LABEL_23;
        }

LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v36 = 91;
  v37 = 0xE100000000000000;
  v4 = a1[3];
  v5 = a1[4];
  v6 = v5 - v4;
  if (v5 == v4)
  {
    v7 = _swiftEmptyArrayStorage;
    goto LABEL_15;
  }

  v24 = sub_10015BEAC(v5 - v4, 0);
  ByteBufferView._copyContents(initializing:)(v24 + 4, v6, v35);
  v25 = v35[6];

  v7 = v24;
  if (v25 == v6)
  {
LABEL_15:
    v26 = v7[2];

    v35[0] = v26;
    v38._countAndFlagsBits = sub_1004A6CE4();
    sub_1004A5994(v38);

    v39._countAndFlagsBits = 0x5D736574796220;
    v39._object = 0xE700000000000000;
    sub_1004A5994(v39);
    v28 = v36;
    v27 = v37;
    v29 = *(v2 + 20);
    v30 = sub_1002F178C(v36, v37, v2 + 8, v29);
    if (v31)
    {
      v32._countAndFlagsBits = v28;
      v32._object = v27;
      v30 = ByteBuffer._setStringSlowpath(_:at:)(v32, v29);
    }

    v33 = v30;

    v34 = *(v2 + 20);
    v18 = __CFADD__(v34, v33);
    v23 = v34 + v33;
    if (!v18)
    {
      goto LABEL_18;
    }

    goto LABEL_20;
  }

LABEL_24:
  __break(1u);
}

uint64_t EncodeBuffer.writeCustomCommandPayload(_:)(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (result < 0)
  {
    if (HIDWORD(a2) < a2)
    {
      __break(1u);
    }

    else if (a3 - (BYTE6(a3) | (WORD2(a3) << 8)) >= HIDWORD(a2))
    {
      v6[0] = result & 0x7FFFFFFFFFFFFFFFLL;
      v6[1] = a2;
      v7 = a3;
      v8 = WORD2(a3);
      v9 = BYTE6(a3);
      v10 = a2;
      v11 = HIDWORD(a2);

      sub_1003E0BCC(v6);
      v5 = v4;
      sub_1003A52D0(v6);
      return v5;
    }

    __break(1u);
  }

  else
  {
    v3 = a3 & 0xFFFFFFFFFFFFFFLL;

    return sub_1003B1E70(result, a2, v3);
  }

  return result;
}

BOOL static Command.CustomCommandPayload.__derived_enum_equals(_:_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 < 0)
  {
    if ((a4 & 0x8000000000000000) == 0)
    {
      return 0;
    }

    a1 &= ~0x8000000000000000;
    a4 &= ~0x8000000000000000;
  }

  else if (a4 < 0)
  {
    return 0;
  }

  return sub_10020FBD0(a1, a2, a3 & 0xFFFFFFFFFFFFFFLL, a4, a5, a6 & 0xFFFFFFFFFFFFFFLL);
}

uint64_t Command.CustomCommandPayload.hash(into:)(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  sub_1004A6EB4(a2 < 0);
  swift_beginAccess();
  return sub_1004A6EA4();
}

Swift::Int Command.CustomCommandPayload.hashValue.getter(uint64_t a1, unint64_t a2, uint64_t a3)
{
  sub_1004A6E94();
  Command.CustomCommandPayload.hash(into:)(v7, a1, a2, a3 & 0xFFFFFFFFFFFFFFLL);
  return sub_1004A6F14();
}

Swift::Int sub_1003E0FCC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16) | ((*(v0 + 20) | (*(v0 + 22) << 16)) << 32);
  sub_1004A6E94();
  Command.CustomCommandPayload.hash(into:)(v5, v1, v2, v3);
  return sub_1004A6F14();
}

Swift::Int sub_1003E1054(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16) | ((*(v1 + 20) | (*(v1 + 22) << 16)) << 32);
  sub_1004A6E94();
  Command.CustomCommandPayload.hash(into:)(v6, v2, v3, v4);
  return sub_1004A6F14();
}

BOOL sub_1003E10BC(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 22);
  v7 = *(a1 + 20);
  v8 = *(a1 + 16);
  v9 = *a2;
  v10 = *(a2 + 8);
  v11 = *(a2 + 22);
  v12 = *(a2 + 20);
  v13 = *(a2 + 16);
  if (v4 < 0)
  {
    if ((v9 & 0x8000000000000000) == 0)
    {
      return 0;
    }

    v4 &= ~0x8000000000000000;
    v9 &= ~0x8000000000000000;
  }

  else if (v9 < 0)
  {
    return 0;
  }

  return sub_10020FBD0(v4, v5, (v8 | ((v7 | (v6 << 16)) << 32)) & 0xFFFFFFFFFFFFFFLL, v9, v10, (v13 | ((v12 | (v11 << 16)) << 32)) & 0xFFFFFFFFFFFFFFLL);
}

unint64_t sub_1003E1128()
{
  result = qword_1005DC4E0;
  if (!qword_1005DC4E0)
  {
    result = swift_getWitnessTable("YV\b", &type metadata for Command.CustomCommandPayload, v0, v1);
    atomic_store(result, &qword_1005DC4E0);
  }

  return result;
}

uint64_t sub_1003E1188(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 23))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1003E11E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 22) = 0;
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 23) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 23) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = 0;
      *(result + 22) = 0;
      *(result + 20) = 0;
      *(result + 16) = 0;
    }
  }

  return result;
}

BOOL static Base64.DecodingError.__derived_enum_equals(_:_:)(__int16 a1, __int16 a2)
{
  if ((a1 & 0x100) != 0)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return (a2 & 0x100) != 0 && a2 == 1;
      }

      else
      {
        return (a2 & 0x100) != 0 && a2 > 1u;
      }
    }

    else
    {
      return (a2 & 0x100) != 0 && !a2;
    }
  }

  else
  {
    if ((a2 & 0x100) != 0)
    {
      return 0;
    }

    return a1 == a2;
  }
}

BOOL sub_1003E12F4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (a1[1] != 1)
  {
    if ((a2[1] & 1) == 0)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (*a1)
  {
    if (v2 != 1)
    {
      if (v3 > 1)
      {
        v7 = a2[1];
      }

      else
      {
        v7 = 0;
      }

      return v7 == 1;
    }

    v4 = v3 == 1;
  }

  else
  {
    v4 = v3 == 0;
  }

  if (v4)
  {
    v6 = a2[1];
  }

  else
  {
    v6 = 0;
  }

  return (v6 & 1) != 0;
}

uint64_t _s13DecodingErrorOwet(unsigned __int16 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2 + 0xFFFF;
  if ((a2 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (v2 < 0xFF0000)
  {
    v3 = 1;
  }

  if (v2 >= 0x10000)
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
      return v4;
    }

    v4 = *(a1 + 2);
    if (!*(a1 + 2))
    {
      return v4;
    }

    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  if (v4 == 2)
  {
    v4 = a1[1];
    if (!a1[1])
    {
      return v4;
    }

    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  v4 = *(a1 + 1);
  if (v4)
  {
    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  return v4;
}

_WORD *_s13DecodingErrorOwst(_WORD *result, int a2, int a3)
{
  v3 = a3 + 0xFFFF;
  if ((a3 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if (v3 < 0xFF0000)
  {
    v4 = 1;
  }

  if (v3 >= 0x10000)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (!a3)
  {
    v5 = 0;
  }

  if (a2)
  {
    v6 = ((a2 - 1) >> 16) + 1;
    *result = a2 - 1;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        result[1] = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
    }
  }

  else if (v5 > 1)
  {
    if (v5 == 2)
    {
      result[1] = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v5)
  {
    *(result + 2) = 0;
  }

  return result;
}

uint64_t sub_1003E1480(unsigned __int8 *a1)
{
  if (a1[1])
  {
    return (*a1 | (a1[1] << 8)) - 255;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1003E14A0(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    result[1] = ((a2 - 1) >> 8) + 1;
  }

  else
  {
    result[1] = 0;
  }

  return result;
}

uint64_t sub_1003E14D4()
{
  result = sub_1004A5814();
  static BodyStructure.DispositionKind.inline = result;
  *algn_1005DE968 = v1;
  return result;
}

uint64_t *BodyStructure.DispositionKind.inline.unsafeMutableAddressor()
{
  if (qword_1005DBB50 != -1)
  {
    swift_once();
  }

  return &static BodyStructure.DispositionKind.inline;
}

uint64_t sub_1003E1580()
{
  result = sub_1004A5814();
  static BodyStructure.DispositionKind.attachment = result;
  *algn_1005DE978 = v1;
  return result;
}

uint64_t *BodyStructure.DispositionKind.attachment.unsafeMutableAddressor()
{
  if (qword_1005DBB58 != -1)
  {
    swift_once();
  }

  return &static BodyStructure.DispositionKind.attachment;
}

uint64_t sub_1003E1634@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1004A5814();
  v5 = v4;

  *a2 = v3;
  a2[1] = v5;
  return result;
}

uint64_t BodyStructure.Disposition.parameters.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t BodyStructure.Disposition.parameters.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  return result;
}

uint64_t BodyStructure.Disposition.init(kind:parameters:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

unsigned __int8 *BodyStructure.Disposition.size.getter()
{
  v1 = *(v0 + 24);
  v39 = *(v0 + 32);
  v2 = *(v39 + 16);

  if (!v2)
  {
LABEL_10:
    sub_1003E1B30(&v39);
    return 0;
  }

  v4 = 0;
  v5 = (v3 + 40);
  v6 = v1 + 40;
  while (1)
  {
    if (v4 >= *(v1 + 16))
    {
      __break(1u);
      goto LABEL_79;
    }

    v8 = *(v5 - 1);
    v7 = *v5;
    if (sub_1004A5814() == 1702521203 && v9 == 0xE400000000000000)
    {
      break;
    }

    v11 = sub_1004A6D34();

    if (v11)
    {
      goto LABEL_13;
    }

    ++v4;

    v5 += 2;
    v6 += 16;
    if (v2 == v4)
    {
      goto LABEL_10;
    }
  }

LABEL_13:
  sub_1003E1B30(&v39);

  v13 = HIBYTE(v7) & 0xF;
  v14 = v8 & 0xFFFFFFFFFFFFLL;
  if ((v7 & 0x2000000000000000) != 0)
  {
    v15 = HIBYTE(v7) & 0xF;
  }

  else
  {
    v15 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15)
  {
LABEL_79:

    return 0;
  }

  if ((v7 & 0x1000000000000000) != 0)
  {
    v17 = sub_10010C28C(v8, v7, 10);
    v35 = v36;
    goto LABEL_75;
  }

  if ((v7 & 0x2000000000000000) != 0)
  {
    v37[0] = v8;
    v37[1] = v7 & 0xFFFFFFFFFFFFFFLL;
    if (v8 == 43)
    {
      if (!v13)
      {
LABEL_85:
        __break(1u);
        return result;
      }

      if (--v13)
      {
        v17 = 0;
        v27 = v37 + 1;
        while (1)
        {
          v28 = *v27 - 48;
          if (v28 > 9)
          {
            break;
          }

          v29 = 10 * v17;
          if ((v17 * 10) >> 64 != (10 * v17) >> 63)
          {
            break;
          }

          v17 = v29 + v28;
          if (__OFADD__(v29, v28))
          {
            break;
          }

          ++v27;
          if (!--v13)
          {
            goto LABEL_74;
          }
        }
      }
    }

    else if (v8 == 45)
    {
      if (!v13)
      {
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

      if (--v13)
      {
        v17 = 0;
        v21 = v37 + 1;
        while (1)
        {
          v22 = *v21 - 48;
          if (v22 > 9)
          {
            break;
          }

          v23 = 10 * v17;
          if ((v17 * 10) >> 64 != (10 * v17) >> 63)
          {
            break;
          }

          v17 = v23 - v22;
          if (__OFSUB__(v23, v22))
          {
            break;
          }

          ++v21;
          if (!--v13)
          {
            goto LABEL_74;
          }
        }
      }
    }

    else if (v13)
    {
      v17 = 0;
      v32 = v37;
      while (1)
      {
        v33 = *v32 - 48;
        if (v33 > 9)
        {
          break;
        }

        v34 = 10 * v17;
        if ((v17 * 10) >> 64 != (10 * v17) >> 63)
        {
          break;
        }

        v17 = v34 + v33;
        if (__OFADD__(v34, v33))
        {
          break;
        }

        ++v32;
        if (!--v13)
        {
          goto LABEL_74;
        }
      }
    }

LABEL_73:
    v17 = 0;
    LOBYTE(v13) = 1;
    goto LABEL_74;
  }

  if ((v8 & 0x1000000000000000) != 0)
  {
    result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    result = sub_1004A67E4();
  }

  v16 = *result;
  if (v16 == 43)
  {
    if (v14 < 1)
    {
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    v13 = v14 - 1;
    if (v14 == 1)
    {
      goto LABEL_73;
    }

    v17 = 0;
    if (!result)
    {
      goto LABEL_65;
    }

    v24 = result + 1;
    while (1)
    {
      v25 = *v24 - 48;
      if (v25 > 9)
      {
        goto LABEL_73;
      }

      v26 = 10 * v17;
      if ((v17 * 10) >> 64 != (10 * v17) >> 63)
      {
        goto LABEL_73;
      }

      v17 = v26 + v25;
      if (__OFADD__(v26, v25))
      {
        goto LABEL_73;
      }

      ++v24;
      if (!--v13)
      {
        goto LABEL_74;
      }
    }
  }

  if (v16 != 45)
  {
    if (!v14)
    {
      goto LABEL_73;
    }

    v17 = 0;
    if (!result)
    {
      goto LABEL_65;
    }

    while (1)
    {
      v30 = *result - 48;
      if (v30 > 9)
      {
        goto LABEL_73;
      }

      v31 = 10 * v17;
      if ((v17 * 10) >> 64 != (10 * v17) >> 63)
      {
        goto LABEL_73;
      }

      v17 = v31 + v30;
      if (__OFADD__(v31, v30))
      {
        goto LABEL_73;
      }

      ++result;
      if (!--v14)
      {
        goto LABEL_65;
      }
    }
  }

  if (v14 < 1)
  {
    __break(1u);
    goto LABEL_83;
  }

  v13 = v14 - 1;
  if (v14 == 1)
  {
    goto LABEL_73;
  }

  v17 = 0;
  if (result)
  {
    v18 = result + 1;
    while (1)
    {
      v19 = *v18 - 48;
      if (v19 > 9)
      {
        goto LABEL_73;
      }

      v20 = 10 * v17;
      if ((v17 * 10) >> 64 != (10 * v17) >> 63)
      {
        goto LABEL_73;
      }

      v17 = v20 - v19;
      if (__OFSUB__(v20, v19))
      {
        goto LABEL_73;
      }

      ++v18;
      if (!--v13)
      {
        goto LABEL_74;
      }
    }
  }

LABEL_65:
  LOBYTE(v13) = 0;
LABEL_74:
  v38 = v13;
  v35 = v13;
LABEL_75:

  if (v35)
  {
    return 0;
  }

  else
  {
    return v17;
  }
}

uint64_t sub_1003E1B30(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005D3FD0, &qword_1004DF4C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t BodyStructure.Disposition.filename.getter()
{
  v12 = *(v0 + 24);
  v13 = *(v0 + 32);
  v1 = *(v13 + 16);

  if (v1)
  {
    v3 = 0;
    v4 = 0x656D616E656C6966;
    v5 = result + 40;
    v6 = v12 + 40;
    while (v3 < *(v12 + 16))
    {
      v7 = *(v5 - 8);
      if (sub_1004A5814() == v4 && v8 == 0xE800000000000000)
      {

LABEL_12:
        sub_1003E1B30(&v13);

        return v7;
      }

      v10 = v4;
      v11 = sub_1004A6D34();

      if (v11)
      {
        goto LABEL_12;
      }

      ++v3;

      v5 += 16;
      v6 += 16;
      v4 = v10;
      if (v1 == v3)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    sub_1003E1B30(&v13);
    return 0;
  }

  return result;
}

BOOL static BodyStructure.Disposition.__derived_struct_equals(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (v5 = sub_1004A6D34(), result = 0, (v5 & 1) != 0))
  {
    v7 = a1[3];
    v8 = a1[4];
    v9 = a2[3];
    v10 = a2[4];
    return (sub_10020FB40(v7, v9) & 1) != 0 && (sub_10020FB40(v8, v10) & 1) != 0;
  }

  return result;
}

uint64_t BodyStructure.Disposition.hash(into:)(uint64_t a1)
{
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  v3 = *(v1 + 24);
  v2 = *(v1 + 32);
  v9 = v2;
  v4 = *(v2 + 16);
  sub_1004A6EB4(v4);

  if (!v4)
  {
    return sub_1003E1B30(&v9);
  }

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
      return sub_1003E1B30(&v9);
    }
  }

  __break(1u);
  return result;
}

Swift::Int BodyStructure.Disposition.hashValue.getter()
{
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v8 = v1;
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
  }

  else
  {
LABEL_5:
    sub_1003E1B30(&v8);
    return sub_1004A6F14();
  }

  return result;
}

Swift::Int sub_1003E1F64()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  sub_1003A1364(v4, v2, v1);
  return sub_1004A6F14();
}

uint64_t sub_1003E1FCC(uint64_t a1)
{
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1003A1364(a1, v4, v3);
}

Swift::Int sub_1003E201C(uint64_t a1)
{
  v3 = *(v1 + 24);
  v2 = *(v1 + 32);
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  sub_1003A1364(v5, v3, v2);
  return sub_1004A6F14();
}

BOOL sub_1003E2080(uint64_t *a1, void *a2)
{
  v3 = a1[3];
  v2 = a1[4];
  v5 = a2[3];
  v4 = a2[4];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return (sub_10020FB40(v3, v5) & 1) != 0 && (sub_10020FB40(v2, v4) & 1) != 0;
  }

  v7 = sub_1004A6D34();
  result = 0;
  if (v7)
  {
    return (sub_10020FB40(v3, v5) & 1) != 0 && (sub_10020FB40(v2, v4) & 1) != 0;
  }

  return result;
}

void sub_1003E2110(unint64_t *a1)
{
  v2 = v1;
  v3 = a1[1];
  v4 = *(v1 + 20);
  if (!v3)
  {
    goto LABEL_17;
  }

  v5 = *a1;
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];

  v9 = sub_1002F178C(0x28uLL, 0xE100000000000000, v1 + 8, v4);
  if (v10)
  {
    v11._countAndFlagsBits = 40;
    v11._object = 0xE100000000000000;
    v9 = ByteBuffer._setStringSlowpath(_:at:)(v11, v4);
  }

  v12 = v9;
  v13 = *(v1 + 20);
  v14 = __CFADD__(v13, v9);
  v15 = v13 + v9;
  if (v14)
  {
    __break(1u);
    goto LABEL_23;
  }

  *(v1 + 20) = v15;
  v39[0] = v5;
  v39[1] = v3;

  sub_100441B60(v5, v3);
  v17 = v16;
  sub_100257A18(v39);
  v18 = v12 + v17;
  if (__OFADD__(v12, v17))
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v19 = *(v2 + 20);
  v20 = sub_1002F178C(0x20uLL, 0xE100000000000000, v2 + 8, v19);
  if (v21)
  {
    v22._countAndFlagsBits = 32;
    v22._object = 0xE100000000000000;
    v20 = ByteBuffer._setStringSlowpath(_:at:)(v22, v19);
  }

  v23 = *(v2 + 20);
  v14 = __CFADD__(v23, v20);
  v24 = v23 + v20;
  if (v14)
  {
    goto LABEL_24;
  }

  *(v2 + 20) = v24;
  v25 = v18 + v20;
  if (__OFADD__(v18, v20))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  sub_1004633BC(v6, v7, v8);
  v4 = v25 + v26;
  if (__OFADD__(v25, v26))
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    return;
  }

  v27 = *(v2 + 20);
  v28 = sub_1002F178C(0x29uLL, 0xE100000000000000, v2 + 8, v27);
  if (v29)
  {
    v30._countAndFlagsBits = 41;
    v30._object = 0xE100000000000000;
    v28 = ByteBuffer._setStringSlowpath(_:at:)(v30, v27);
  }

  v31 = v28;
  sub_100257A18(v39);

  v32 = *(v2 + 20);
  v14 = __CFADD__(v32, v31);
  v33 = v32 + v31;
  if (v14)
  {
    goto LABEL_27;
  }

  *(v2 + 20) = v33;
  if (!__OFADD__(v4, v31))
  {
    return;
  }

  __break(1u);
LABEL_17:
  v34 = sub_1002F178C(0x4C494EuLL, 0xE300000000000000, v2 + 8, v4);
  if (v35)
  {
    v36._countAndFlagsBits = 4999502;
    v36._object = 0xE300000000000000;
    v34 = ByteBuffer._setStringSlowpath(_:at:)(v36, v4);
  }

  v37 = *(v2 + 20);
  v14 = __CFADD__(v37, v34);
  v38 = v37 + v34;
  if (v14)
  {
    goto LABEL_28;
  }

  *(v2 + 20) = v38;
}

unint64_t sub_1003E2340()
{
  result = qword_1005DC4E8;
  if (!qword_1005DC4E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BodyStructure.DispositionKind, &type metadata for BodyStructure.DispositionKind, v0, v1);
    atomic_store(result, &qword_1005DC4E8);
  }

  return result;
}

unint64_t sub_1003E2398()
{
  result = qword_1005DC4F0;
  if (!qword_1005DC4F0)
  {
    result = swift_getWitnessTable("IT\b", &type metadata for BodyStructure.Disposition, v0, v1);
    atomic_store(result, &qword_1005DC4F0);
  }

  return result;
}

unint64_t sub_1003E23F0()
{
  result = qword_1005DC4F8;
  if (!qword_1005DC4F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BodyStructure.DispositionKind, &type metadata for BodyStructure.DispositionKind, v0, v1);
    atomic_store(result, &qword_1005DC4F8);
  }

  return result;
}

unint64_t sub_1003E2448()
{
  result = qword_1005DC500;
  if (!qword_1005DC500)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BodyStructure.DispositionKind, &type metadata for BodyStructure.DispositionKind, v0, v1);
    atomic_store(result, &qword_1005DC500);
  }

  return result;
}

uint64_t sub_1003E24D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D6280, &qword_100501A80);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t BodyStructure.DispositionAndLanguage.language.getter()
{
  v1 = v0[5];
  sub_1003E2598(v1, v0[6], v0[7], v0[8]);
  return v1;
}

double sub_1003E2598(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {

    return sub_1003E25F0(a2, a3, a4);
  }

  return v7;
}

double sub_1003E25F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

void BodyStructure.DispositionAndLanguage.language.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100051638(v4[5], v4[6], v4[7], v4[8]);
  v4[5] = a1;
  v4[6] = a2;
  v4[7] = a3;
  v4[8] = a4;
}

__n128 BodyStructure.DispositionAndLanguage.init(disposition:language:)@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = a1[1];
  v17[0] = *a1;
  v17[1] = v7;
  v8 = a1[2].n128_u64[0];
  v12 = v17[0];
  v13 = v7;
  *&v14 = v8;
  *(&v14 + 1) = a2;
  *&v15 = a3;
  *(&v15 + 1) = a4;
  v16 = a5;
  v18 = v8;
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  sub_1003E2704(&v12, v11);
  sub_1003E273C(v17);
  v9 = v15;
  *(a6 + 32) = v14;
  *(a6 + 48) = v9;
  *(a6 + 64) = v16;
  result = v13;
  *a6 = v12;
  *(a6 + 16) = result;
  return result;
}

void BodyStructure.DispositionAndLanguage.hash(into:)(uint64_t a1)
{
  v2 = v1;
  if (!v2[1])
  {
    sub_1004A6EC4(0);
    goto LABEL_8;
  }

  v5 = v2[3];
  v4 = v2[4];
  v14 = v2;
  sub_1004A6EC4(1u);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  v6 = *(v4 + 16);
  sub_1004A6EB4(v6);

  if (!v6)
  {
LABEL_6:

    v2 = v14;
LABEL_8:
    v10 = v2[5];
    v11 = v2[6];
    v12 = v2[7];
    v13 = v2[8];

    sub_1003B0794(a1, v10, v11, v12, v13);
    return;
  }

  v7 = 0;
  v8 = v4 + 40;
  v9 = v5 + 40;
  while (v7 < *(v5 + 16))
  {
    ++v7;

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

    v8 += 16;
    v9 += 16;
    if (v6 == v7)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
}

Swift::Int BodyStructure.DispositionAndLanguage.hashValue.getter()
{
  sub_1004A6E94();
  if (!v0[1])
  {
    sub_1004A6EC4(0);
    goto LABEL_8;
  }

  v2 = v0[3];
  v1 = v0[4];
  sub_1004A6EC4(1u);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  v3 = *(v1 + 16);
  sub_1004A6EB4(v3);

  if (!v3)
  {
LABEL_6:

LABEL_8:
    sub_1003B0794(v8, v0[5], v0[6], v0[7], v0[8]);
    return sub_1004A6F14();
  }

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
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

Swift::Int sub_1003E2A00()
{
  v1 = v0[1];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  sub_1004A6E94();
  if (v1)
  {
    sub_1004A6EC4(1u);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    sub_1003A1364(v9, v2, v3);
  }

  else
  {
    sub_1004A6EC4(0);
  }

  sub_1003B0794(v9, v4, v5, v6, v7);
  return sub_1004A6F14();
}

void sub_1003E2ABC(uint64_t a1)
{
  v3 = v1[5];
  v4 = v1[6];
  v5 = v1[7];
  v6 = v1[8];
  if (v1[1])
  {
    v8 = v1[3];
    v7 = v1[4];
    sub_1004A6EC4(1u);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    sub_1003A1364(a1, v8, v7);
  }

  else
  {
    sub_1004A6EC4(0);
  }

  sub_1003B0794(a1, v3, v4, v5, v6);
}

Swift::Int sub_1003E2B74(uint64_t a1)
{
  v2 = v1[1];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  sub_1004A6E94();
  if (v2)
  {
    sub_1004A6EC4(1u);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    sub_1003A1364(v10, v3, v4);
  }

  else
  {
    sub_1004A6EC4(0);
  }

  sub_1003B0794(v10, v5, v6, v7, v8);
  return sub_1004A6F14();
}

BOOL sub_1003E2C2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return _s12NIOIMAPCore213BodyStructureO22DispositionAndLanguageV23__derived_struct_equalsySbAE_AEtFZ_0(v7, v9);
}

BOOL _s12NIOIMAPCore213BodyStructureO22DispositionAndLanguageV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v10 = a2[3];
  v11 = a2[4];
  if (!v2)
  {
    if (!v7)
    {
      goto LABEL_14;
    }

LABEL_12:
    sub_100269A7C(*a2, a2[1]);
    sub_100269A7C(v3, v2);
    sub_1000515D4(v3, v2, v5, v4, v6);
    sub_1000515D4(v8, v7, v9, v10, v11);
    return 0;
  }

  if (!v7)
  {
    goto LABEL_12;
  }

  v24 = a2;
  v25 = a1;
  v12 = v3 == v8 && v2 == v7;
  if (!v12 && (sub_1004A6D34() & 1) == 0 || (sub_10020FB40(v4, v10) & 1) == 0)
  {
    sub_100269A7C(v8, v7);
    sub_100269A7C(v3, v2);

    sub_1000515D4(v3, v2, v5, v4, v6);
    return 0;
  }

  v23 = sub_10020FB40(v6, v11);
  sub_100269A7C(v8, v7);
  sub_100269A7C(v3, v2);

  sub_1000515D4(v3, v2, v5, v4, v6);
  a2 = v24;
  a1 = v25;
  if ((v23 & 1) == 0)
  {
    return 0;
  }

LABEL_14:
  v13 = a1[5];
  v14 = a1[6];
  v15 = a1[7];
  v16 = a1[8];
  v18 = a2[5];
  v17 = a2[6];
  v19 = a2[7];
  v20 = a2[8];
  if (v13)
  {
    if (v18)
    {
      sub_1003E2598(a2[5], a2[6], v19, v20);
      sub_1003E2598(v13, v14, v15, v16);
      v21 = _s12NIOIMAPCore213BodyStructureO16LanguageLocationV23__derived_struct_equalsySbAE_AEtFZ_0(v13, v14, v15, v16, v18, v17, v19, v20);

      sub_100051690(v17, v19, v20);
      sub_100051638(v13, v14, v15, v16);
      return v21;
    }

LABEL_19:
    sub_1003E2598(a2[5], a2[6], v19, v20);
    sub_1003E2598(v13, v14, v15, v16);
    sub_100051638(v13, v14, v15, v16);
    sub_100051638(v18, v17, v19, v20);
    return 0;
  }

  if (v18)
  {
    goto LABEL_19;
  }

  return 1;
}

unint64_t sub_1003E2F84()
{
  result = qword_1005DC508;
  if (!qword_1005DC508)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BodyStructure.DispositionAndLanguage, &type metadata for BodyStructure.DispositionAndLanguage, v0, v1);
    atomic_store(result, &qword_1005DC508);
  }

  return result;
}

uint64_t sub_1003E2FD8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 72))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1003E3034(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t EmailAddress.personName.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{

  *v3 = a1;
  *(v3 + 8) = a2;
  *(v3 + 22) = BYTE6(a3);
  *(v3 + 20) = WORD2(a3);
  *(v3 + 16) = a3;
  return result;
}

uint64_t EmailAddressGroup.sourceRoot.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{

  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  *(v3 + 46) = BYTE6(a3);
  *(v3 + 44) = WORD2(a3);
  *(v3 + 40) = a3;
  return result;
}

uint64_t EmailAddress.mailbox.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{

  *(v3 + 48) = a1;
  *(v3 + 56) = a2;
  *(v3 + 70) = BYTE6(a3);
  *(v3 + 68) = WORD2(a3);
  *(v3 + 64) = a3;
  return result;
}

uint64_t EmailAddress.host.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{

  *(v3 + 72) = a1;
  *(v3 + 80) = a2;
  *(v3 + 94) = BYTE6(a3);
  *(v3 + 92) = WORD2(a3);
  *(v3 + 88) = a3;
  return result;
}

double EmailAddress.init(personName:sourceRoot:mailbox:host:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>, int a10, __int16 a11, char a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17)
{
  *&v22 = a1;
  *(&v22 + 1) = a2;
  LODWORD(v23) = a3;
  BYTE6(v23) = BYTE6(a3);
  WORD2(v23) = WORD2(a3);
  *(&v23 + 1) = a4;
  *&v24 = a5;
  DWORD2(v24) = a6;
  BYTE14(v24) = BYTE6(a6);
  WORD6(v24) = WORD2(a6);
  *&v25 = a7;
  *(&v25 + 1) = a8;
  *v26 = a10;
  v26[6] = a12;
  *&v26[4] = a11;
  *&v26[8] = a13;
  *&v26[16] = a14;
  *&v26[24] = a15;
  v26[30] = a17;
  *&v26[28] = a16;
  v27[0] = a1;
  v27[1] = a2;
  v28 = a3;
  v30 = BYTE6(a3);
  v29 = WORD2(a3);
  v31 = a4;
  v32 = a5;
  v33 = a6;
  v35 = BYTE6(a6);
  v34 = WORD2(a6);
  v36 = a7;
  v37 = a8;
  v38 = a10;
  v40 = a12;
  v39 = a11;
  v41 = a13;
  v42 = a14;
  v43 = a15;
  v45 = a17;
  v44 = a16;
  sub_1003A3260(&v22, &v21);
  sub_1003A32BC(v27);
  v18 = v25;
  a9[2] = v24;
  a9[3] = v18;
  a9[4] = *v26;
  *(a9 + 79) = *&v26[15];
  result = *&v22;
  v20 = v23;
  *a9 = v22;
  a9[1] = v20;
  return result;
}

void EmailAddress.hash(into:)()
{
  if (*v0)
  {
    sub_1004A6EC4(1u);
    swift_beginAccess();
    sub_1004A6EA4();
    if (v0[3])
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1004A6EC4(0);
    if (v0[3])
    {
LABEL_3:
      sub_1004A6EC4(1u);
      swift_beginAccess();
      sub_1004A6EA4();
      if (v0[6])
      {
        goto LABEL_4;
      }

LABEL_8:
      sub_1004A6EC4(0);
      if (v0[9])
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  sub_1004A6EC4(0);
  if (!v0[6])
  {
    goto LABEL_8;
  }

LABEL_4:
  sub_1004A6EC4(1u);
  swift_beginAccess();
  sub_1004A6EA4();
  if (v0[9])
  {
LABEL_5:
    sub_1004A6EC4(1u);
    swift_beginAccess();
    sub_1004A6EA4();
    return;
  }

LABEL_9:
  sub_1004A6EC4(0);
}

Swift::Int EmailAddress.hashValue.getter()
{
  sub_1004A6E94();
  EmailAddress.hash(into:)();
  return sub_1004A6F14();
}

Swift::Int sub_1003E35D4(uint64_t a1)
{
  sub_1004A6E94();
  EmailAddress.hash(into:)();
  return sub_1004A6F14();
}

uint64_t sub_1003E3610(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v7[2] = a1[2];
  v7[3] = v2;
  v8[0] = a1[4];
  *(v8 + 15) = *(a1 + 79);
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v4 = a2[3];
  v9[2] = a2[2];
  v9[3] = v4;
  v10[0] = a2[4];
  *(v10 + 15) = *(a2 + 79);
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  return _s12NIOIMAPCore212EmailAddressV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v9) & 1;
}

uint64_t sub_1003E367C(uint64_t *a1)
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
  v10 = (v9 + result);
  if (__CFADD__(v9, result))
  {
    goto LABEL_53;
  }

  *(v1 + 20) = v10;
  v11 = *a1;
  if (*a1)
  {
    v12 = *(a1 + 4) | ((*(a1 + 10) | (*(a1 + 22) << 16)) << 32);
    v13 = a1[1];

    v15 = sub_1003B1E70(v14, v13, v12);

    v16 = v8 + v15;
    if (!__OFADD__(v8, v15))
    {
      goto LABEL_6;
    }

LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  result = sub_1002F178C(0x4C494EuLL, 0xE300000000000000, v1 + 8, v10);
  if (v49)
  {
    v50._countAndFlagsBits = 4999502;
    v50._object = 0xE300000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v50, v10);
  }

  v51 = *(v1 + 20);
  v46 = __CFADD__(v51, result);
  v52 = v51 + result;
  if (v46)
  {
    goto LABEL_62;
  }

  *(v1 + 20) = v52;
  v16 = v8 + result;
  if (__OFADD__(v8, result))
  {
    goto LABEL_34;
  }

LABEL_6:
  v17 = *(v2 + 20);
  result = sub_1002F178C(0x20uLL, 0xE100000000000000, v2 + 8, v17);
  if (v18)
  {
    v19._countAndFlagsBits = 32;
    v19._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v19, v17);
  }

  v20 = *(v2 + 20);
  v8 = (v20 + result);
  if (__CFADD__(v20, result))
  {
    goto LABEL_54;
  }

  *(v2 + 20) = v8;
  v11 = v16 + result;
  if (__OFADD__(v16, result))
  {
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (a1[3])
  {
    v21 = *(a1 + 10) | ((*(a1 + 22) | (*(a1 + 46) << 16)) << 32);
    v8 = a1[4];

    v23 = sub_1003B1E70(v22, v8, v21);

    v24 = v11 + v23;
    if (!__OFADD__(v11, v23))
    {
      goto LABEL_12;
    }

LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

LABEL_35:
  result = sub_1002F178C(0x4C494EuLL, 0xE300000000000000, v2 + 8, v8);
  if (v53)
  {
    v54._countAndFlagsBits = 4999502;
    v54._object = 0xE300000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v54, v8);
  }

  v55 = *(v2 + 20);
  v46 = __CFADD__(v55, result);
  v56 = v55 + result;
  if (v46)
  {
    goto LABEL_63;
  }

  *(v2 + 20) = v56;
  v24 = v11 + result;
  if (__OFADD__(v11, result))
  {
    goto LABEL_40;
  }

LABEL_12:
  v25 = *(v2 + 20);
  result = sub_1002F178C(0x20uLL, 0xE100000000000000, v2 + 8, v25);
  if (v26)
  {
    v27._countAndFlagsBits = 32;
    v27._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v27, v25);
  }

  v28 = *(v2 + 20);
  v8 = (v28 + result);
  if (__CFADD__(v28, result))
  {
    goto LABEL_56;
  }

  *(v2 + 20) = v8;
  v11 = v24 + result;
  if (__OFADD__(v24, result))
  {
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  if (a1[6])
  {
    v29 = *(a1 + 16) | ((*(a1 + 34) | (*(a1 + 70) << 16)) << 32);
    v8 = a1[7];

    v31 = sub_1003B1E70(v30, v8, v29);

    v32 = v11 + v31;
    if (!__OFADD__(v11, v31))
    {
      goto LABEL_18;
    }

LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

LABEL_41:
  result = sub_1002F178C(0x4C494EuLL, 0xE300000000000000, v2 + 8, v8);
  if (v57)
  {
    v58._countAndFlagsBits = 4999502;
    v58._object = 0xE300000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v58, v8);
  }

  v59 = *(v2 + 20);
  v46 = __CFADD__(v59, result);
  v60 = v59 + result;
  if (v46)
  {
    goto LABEL_64;
  }

  *(v2 + 20) = v60;
  v32 = v11 + result;
  if (__OFADD__(v11, result))
  {
    goto LABEL_46;
  }

LABEL_18:
  v33 = *(v2 + 20);
  result = sub_1002F178C(0x20uLL, 0xE100000000000000, v2 + 8, v33);
  if (v34)
  {
    v35._countAndFlagsBits = 32;
    v35._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v35, v33);
  }

  v36 = *(v2 + 20);
  v8 = (v36 + result);
  if (__CFADD__(v36, result))
  {
    goto LABEL_58;
  }

  *(v2 + 20) = v8;
  v11 = v32 + result;
  if (__OFADD__(v32, result))
  {
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (a1[9])
  {
    v37 = *(a1 + 22) | ((*(a1 + 46) | (*(a1 + 94) << 16)) << 32);
    v38 = a1[10];

    v40 = sub_1003B1E70(v39, v38, v37);

    v41 = v11 + v40;
    if (!__OFADD__(v11, v40))
    {
      goto LABEL_24;
    }

    goto LABEL_52;
  }

LABEL_47:
  result = sub_1002F178C(0x4C494EuLL, 0xE300000000000000, v2 + 8, v8);
  if (v61)
  {
    v62._countAndFlagsBits = 4999502;
    v62._object = 0xE300000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v62, v8);
  }

  v63 = *(v2 + 20);
  v46 = __CFADD__(v63, result);
  v64 = v63 + result;
  if (v46)
  {
    goto LABEL_65;
  }

  *(v2 + 20) = v64;
  v41 = v11 + result;
  if (__OFADD__(v11, result))
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

LABEL_24:
  v42 = *(v2 + 20);
  result = sub_1002F178C(0x29uLL, 0xE100000000000000, v2 + 8, v42);
  if (v43)
  {
    v44._countAndFlagsBits = 41;
    v44._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v44, v42);
  }

  v45 = *(v2 + 20);
  v46 = __CFADD__(v45, result);
  v47 = v45 + result;
  if (v46)
  {
    goto LABEL_60;
  }

  *(v2 + 20) = v47;
  v48 = __OFADD__(v41, result);
  result += v41;
  if (v48)
  {
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
  }

  return result;
}

uint64_t _s12NIOIMAPCore212EmailAddressV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = *a2;
  if (*a1)
  {
    if (!v4)
    {
      return 0;
    }

    v5 = a1[1];
    v6 = *(a1 + 4) | ((*(a1 + 10) | (*(a1 + 22) << 16)) << 32);
    v7 = *(a2 + 8);
    v8 = *(a2 + 16) | ((*(a2 + 20) | (*(a2 + 22) << 16)) << 32);

    LOBYTE(v5) = sub_10020FBD0(v9, v5, v6 & 0xFFFFFFFFFFFFFFLL, v4, v7, v8 & 0xFFFFFFFFFFFFFFLL);

    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  v10 = *(a2 + 24);
  if (a1[3])
  {
    if (!v10)
    {
      return 0;
    }

    v11 = a1[4];
    v12 = *(a1 + 10) | ((*(a1 + 22) | (*(a1 + 46) << 16)) << 32);
    v13 = *(a2 + 32);
    v14 = *(a2 + 40) | ((*(a2 + 44) | (*(a2 + 46) << 16)) << 32);

    LOBYTE(v11) = sub_10020FBD0(v15, v11, v12 & 0xFFFFFFFFFFFFFFLL, v10, v13, v14 & 0xFFFFFFFFFFFFFFLL);

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v16 = *(a2 + 48);
  if (a1[6])
  {
    if (!v16)
    {
      return 0;
    }

    v17 = a1[7];
    v18 = *(a1 + 16) | ((*(a1 + 34) | (*(a1 + 70) << 16)) << 32);
    v19 = *(a2 + 56);
    v20 = *(a2 + 64) | ((*(a2 + 68) | (*(a2 + 70) << 16)) << 32);

    LOBYTE(v17) = sub_10020FBD0(v21, v17, v18 & 0xFFFFFFFFFFFFFFLL, v16, v19, v20 & 0xFFFFFFFFFFFFFFLL);

    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  v22 = *(a2 + 72);
  if (a1[9])
  {
    if (v22)
    {
      v23 = a1[10];
      v24 = *(a1 + 22) | ((*(a1 + 46) | (*(a1 + 94) << 16)) << 32);
      v25 = *(a2 + 80);
      v26 = *(a2 + 88) | ((*(a2 + 92) | (*(a2 + 94) << 16)) << 32);

      LOBYTE(v26) = sub_10020FBD0(v27, v23, v24 & 0xFFFFFFFFFFFFFFLL, v22, v25, v26 & 0xFFFFFFFFFFFFFFLL);

      if (v26)
      {
        return 1;
      }
    }
  }

  else if (!v22)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_1003E3D44()
{
  result = qword_1005DC510;
  if (!qword_1005DC510)
  {
    result = swift_getWitnessTable("aQ\b", &type metadata for EmailAddress, v0, v1);
    atomic_store(result, &qword_1005DC510);
  }

  return result;
}

__n128 sub_1003E3D98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 79) = *(a2 + 79);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1003E3DBC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 95))
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

uint64_t sub_1003E3E18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 94) = 0;
    *(result + 92) = 0;
    *(result + 88) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 95) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 95) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1003E3E9C(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 1;
  }

  v5 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  v6 = 4 << v5;
  v7 = a2 & 0xFFFFFFFFFFFFFFLL;
  v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  result = 15;
  while (1)
  {
    v10 = result & 0xC;
    v11 = result;
    if (v10 == v6)
    {
      v15 = result;
      v11 = sub_10010C210(result, a1, a2);
      result = v15;
    }

    v12 = v11 >> 16;
    if (v11 >> 16 >= v2)
    {
      break;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      v19 = result;
      v14 = sub_1004A5A24();
      result = v19;
      if (v10 != v6)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v20[0] = a1;
        v20[1] = v7;
        v13 = v20;
      }

      else
      {
        v13 = v8;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v18 = result;
          v13 = sub_1004A67E4();
          result = v18;
        }
      }

      v14 = *(v13 + v12);
      if (v10 != v6)
      {
LABEL_18:
        if ((a2 & 0x1000000000000000) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_22;
      }
    }

    result = sub_10010C210(result, a1, a2);
    if ((a2 & 0x1000000000000000) == 0)
    {
LABEL_19:
      result = (result & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_24;
    }

LABEL_22:
    if (v2 <= result >> 16)
    {
      goto LABEL_31;
    }

    result = sub_1004A59F4();
LABEL_24:
    if (v14 != 95 && v14 != 45)
    {
      v16 = result;
      v17 = isalnum(v14);
      result = v16;
      if (!v17)
      {
        return 0;
      }
    }

    if (4 * v2 == result >> 14)
    {
      return 1;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

NIOIMAPCore2::MailboxID_optional __swiftcall MailboxID.init(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v3 = sub_1004A5924();
  if (v3 <= 0 || v3 >= 0x100 || (sub_1003E3E9C(countAndFlagsBits, object) & 1) == 0)
  {

    countAndFlagsBits = 0;
    object = 0;
  }

  v5 = countAndFlagsBits;
  v6 = object;
  result.value.objectID.rawValue._object = v6;
  result.value.objectID.rawValue._countAndFlagsBits = v5;
  result.is_nil = v4;
  return result;
}

NIOIMAPCore2::MailboxID __swiftcall MailboxID.init(stringLiteral:)(Swift::String stringLiteral)
{
  object = stringLiteral._object;
  countAndFlagsBits = stringLiteral._countAndFlagsBits;
  if (sub_1004A5924() - 256) >= 0xFFFFFFFFFFFFFF01 && (sub_1003E3E9C(countAndFlagsBits, object))
  {
    v3 = countAndFlagsBits;
    v4 = object;
  }

  else
  {

    __break(1u);
  }

  result.objectID.rawValue._object = v4;
  result.objectID.rawValue._countAndFlagsBits = v3;
  return result;
}

unint64_t sub_1003E4140@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  if (sub_1004A5924() - 256) >= 0xFFFFFFFFFFFFFF01 && (result = sub_1003E3E9C(v4, v3), (result))
  {
    *a2 = v4;
    a2[1] = v3;
  }

  else
  {

    __break(1u);
  }

  return result;
}

uint64_t MailboxID.debugDescription.getter(Swift::String a1)
{
  sub_1004A5994(a1);
  v2._countAndFlagsBits = 41;
  v2._object = 0xE100000000000000;
  sub_1004A5994(v2);
  return 40;
}

uint64_t sub_1003E41FC()
{
  sub_1004A5994(*v0);
  v2._countAndFlagsBits = 41;
  v2._object = 0xE100000000000000;
  sub_1004A5994(v2);
  return 40;
}

unint64_t sub_1003E4250()
{
  result = qword_1005DC518;
  if (!qword_1005DC518)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EmailID, &type metadata for EmailID, v0, v1);
    atomic_store(result, &qword_1005DC518);
  }

  return result;
}

unint64_t sub_1003E42A8()
{
  result = qword_1005DC520;
  if (!qword_1005DC520)
  {
    result = swift_getWitnessTable("Qg\b", &type metadata for EmailID, v0, v1);
    atomic_store(result, &qword_1005DC520);
  }

  return result;
}

unint64_t sub_1003E4300()
{
  result = qword_1005DC528;
  if (!qword_1005DC528)
  {
    result = swift_getWitnessTable("9g\b", &type metadata for EmailID, v0, v1);
    atomic_store(result, &qword_1005DC528);
  }

  return result;
}

Swift::Int __swiftcall EncodeBuffer.writeString(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = *(v1 + 20);
  result = sub_1002F178C(a1._countAndFlagsBits, a1._object, v1 + 8, v4);
  if (v6)
  {
    v7._countAndFlagsBits = countAndFlagsBits;
    v7._object = object;
    result = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
  }

  v8 = *(v1 + 20);
  v9 = __CFADD__(v8, result);
  v10 = v8 + result;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 20) = v10;
  }

  return result;
}

Swift::Int __swiftcall EncodeBuffer.markStopPoint()()
{
  if (((*(v0 + 1) | (*(v0 + 5) << 32)) & 0x8000000000000000) == 0)
  {
    sub_1003E46E4(*(v0 + 20));
  }

  return 0;
}

void EncodeBuffer.writeBuffer(_:)(uint64_t *a1)
{
  v2 = v1;
  if (*v1 == 1)
  {
    v11._countAndFlagsBits = sub_1004A6CE4();
    sub_1004A5994(v11);

    v12._countAndFlagsBits = 0x5D736574796220;
    v12._object = 0xE700000000000000;
    sub_1004A5994(v12);
    v3 = *(v1 + 20);
    v4 = sub_1002F178C(0x5BuLL, 0xE100000000000000, v1 + 8, v3);
    if (v5)
    {
      v6._countAndFlagsBits = 91;
      v6._object = 0xE100000000000000;
      v4 = ByteBuffer._setStringSlowpath(_:at:)(v6, v3);
    }

    v7 = v4;

    v8 = *(v2 + 20);
    v9 = __CFADD__(v8, v7);
    v10 = v8 + v7;
    if (v9)
    {
      __break(1u);
    }

    else
    {
      *(v2 + 20) = v10;
    }
  }

  else
  {
    ByteBuffer.writeBuffer(_:)(a1);
  }
}

unint64_t EncodeBuffer.writeBytes<A>(_:)(uint64_t a1)
{
  v2 = v1;
  v8 = __chkstk_darwin(a1);
  if (*v1 != 1)
  {
    return ByteBuffer.writeBytes<A>(_:)(v3, v4, v5);
  }

  v22 = 91;
  v23 = 0xE100000000000000;
  (*(v7 + 16))(v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v3, v4, v8);
  v9 = *(sub_1004A5CF4() + 16);

  v21[1] = v9;
  v24._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v24);

  v25._countAndFlagsBits = 0x5D736574796220;
  v25._object = 0xE700000000000000;
  sub_1004A5994(v25);
  v11 = v22;
  v10 = v23;
  v12 = *(v2 + 5);
  v13 = sub_1002F178C(v22, v23, (v2 + 8), v12);
  if (v14)
  {
    v15._countAndFlagsBits = v11;
    v15._object = v10;
    v13 = ByteBuffer._setStringSlowpath(_:at:)(v15, v12);
  }

  v16 = v13;

  v18 = *(v2 + 5);
  v19 = __CFADD__(v18, v16);
  v20 = v18 + v16;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 5) = v20;
    return v16;
  }

  return result;
}

void sub_1003E46E4(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_10046B5A0(v4);
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = *(v4 + 2);
  if (v3 >= v5)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v6 = &v4[16 * v3];
  *(v6 + 4) = a1;
  v6[40] = 0;
  *v1 = v4;
  v7 = (v5 + 0x7FFFFFFFFFFFFFFFLL) & (v3 + 1);
  *(v1 + 16) = v7;
  if (*(v1 + 8) == v7)
  {

    sub_1003DAE20();
  }
}

uint64_t sub_1003E4794(uint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v5 < v4;
  v7 = v5 - v4;
  if (v6)
  {
    v7 += *(v3 + 16);
  }

  if (v7 < result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    if (!result)
    {
LABEL_13:
      v1[1] = v4;
      return result;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10046B5A0(v3);
      v3 = result;
    }

    while ((v4 & 0x8000000000000000) == 0)
    {
      v8 = *(v3 + 16);
      if (v4 >= v8)
      {
        goto LABEL_15;
      }

      v9 = v3 + 32 + 16 * v4;
      *v9 = 0;
      *(v9 + 8) = 1;
      v4 = (v8 + 0x7FFFFFFFFFFFFFFFLL) & (v4 + 1);
      if (!--v2)
      {
        *v1 = v3;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1003E4850()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v3 - v2;
  if (v3 < v2)
  {
    v4 += *(v1 + 16);
  }

  if (v4 < 1)
  {
    return 0;
  }

  result = sub_1003E48C0(v1, v2, v3);
  if ((v6 & 1) == 0)
  {
    v7 = result;
    sub_1003E4794(1);
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1003E48C0(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a2 == a3)
  {
    return 0;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (HIDWORD(a2))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (*(result + 16) <= a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v3 = result + 16 * a2;
  if (*(v3 + 40))
  {
LABEL_12:
    __break(1u);
    return result;
  }

  return *(v3 + 32);
}

uint64_t sub_1003E4914(uint64_t result, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, int64_t a6)
{
  v6 = a3 - a2;
  if (a3 < a2)
  {
    v6 += *(result + 16);
    v7 = a6 - a5;
    if (a6 >= a5)
    {
LABEL_3:
      if (v6 != v7)
      {
        return 0;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v7 = a6 - a5;
    if (a6 >= a5)
    {
      goto LABEL_3;
    }
  }

  if (v6 != v7 + *(a4 + 16))
  {
    return 0;
  }

LABEL_7:
  if (a2 < 0)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (HIDWORD(a2))
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (a5 < 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (HIDWORD(a5))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (a3 < 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (!HIDWORD(a3))
  {
    v8 = 0;
    v9 = 0;
    LODWORD(v10) = a5;
    LODWORD(v11) = a2;
    while (1)
    {
      if (a3 >= a2 != v9 && v11 == a3)
      {
        return 1;
      }

      v13 = v11;
      v14 = *(result + 16);
      if (v13 >= v14)
      {
        break;
      }

      v15 = result + 32 + 16 * v13;
      if (*(v15 + 8))
      {
        goto LABEL_43;
      }

      v11 = (v14 - 1) & (v13 + 1);
      v9 = v11 < a2;
      if (HIDWORD(v11))
      {
        goto LABEL_32;
      }

      if (a6 < 0)
      {
        goto LABEL_33;
      }

      if (HIDWORD(a6))
      {
        goto LABEL_34;
      }

      v16 = *v15;
      if (v10 == a6 && (((a6 >= a5) ^ v8) & 1) != 0)
      {
        return 1;
      }

      v17 = *(a4 + 16);
      if (v10 >= v17)
      {
        goto LABEL_35;
      }

      v18 = a4 + 32 + 16 * v10;
      if (*(v18 + 8))
      {
        goto LABEL_44;
      }

      v10 = (v17 - 1) & (v10 + 1);
      if (HIDWORD(v10))
      {
        goto LABEL_36;
      }

      v19 = *v18;
      v8 = v10 < a5;
      if (v16 != v19)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

unint64_t EncodeBuffer.nextChunk()()
{
  if (((*(v0 + 1) | (*(v0 + 5) << 32)) & 0x8000000000000000) != 0)
  {
    goto LABEL_5;
  }

  v1 = sub_1003E4850();
  if (v2)
  {
    result = ByteBuffer.readSlice(length:)((*(v0 + 20) - *(v0 + 16)));
    if (result)
    {
      return result;
    }

    __break(1u);
LABEL_5:
    result = ByteBuffer.readSlice(length:)((*(v0 + 20) - *(v0 + 16)));
    if (result)
    {
      return result;
    }

    goto LABEL_11;
  }

  v4 = *(v0 + 16);
  v5 = __OFSUB__(v1, v4);
  result = v1 - v4;
  if (v5)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result = ByteBuffer.readSlice(length:)(result);
  if (!result)
  {
LABEL_12:
    __break(1u);
  }

  return result;
}

void EncodeBuffer.Mode.hash(into:)(uint64_t a1, unint64_t a2)
{
  LODWORD(v3) = (a2 >> 8) & 1;
  if ((a2 & 0x8000000000) != 0)
  {
    sub_1004A6EB4(1uLL);
    sub_1004A6EC4(a2 & 1);
  }

  else
  {
    sub_1004A6EB4(0);
    sub_1004A6EC4(a2 & 1);
    sub_1004A6EC4(v3);
    sub_1004A6EC4(BYTE2(a2) & 1);
    sub_1004A6EC4(BYTE3(a2) & 1);
    v3 = HIDWORD(a2) & 1;
  }

  sub_1004A6EC4(v3);
}

Swift::Int EncodeBuffer.Mode.hashValue.getter(uint64_t a1)
{
  sub_1004A6E94();
  EncodeBuffer.Mode.hash(into:)(v3, a1 & 0xFFFFFFFFFFLL);
  return sub_1004A6F14();
}

Swift::Int sub_1003E4C1C()
{
  v1 = *v0 | (*(v0 + 4) << 32);
  sub_1004A6E94();
  EncodeBuffer.Mode.hash(into:)(v3, v1);
  return sub_1004A6F14();
}

Swift::Int sub_1003E4C7C(uint64_t a1)
{
  v2 = *v1 | (*(v1 + 4) << 32);
  sub_1004A6E94();
  EncodeBuffer.Mode.hash(into:)(v4, v2);
  return sub_1004A6F14();
}

uint64_t EncodeBuffer.buffer.setter(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v4 = a3;
  v5 = a2;
  v7 = HIDWORD(a2);
  v8 = HIDWORD(a3);
  v9 = HIWORD(a3);

  *(v3 + 8) = a1;
  *(v3 + 16) = v5;
  *(v3 + 20) = v7;
  *(v3 + 24) = v4;
  *(v3 + 28) = v8;
  *(v3 + 30) = v9;
  return result;
}

uint64_t EncodeBuffer.stopPoints.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v3[4] = a1;
  v3[5] = a2;
  v3[6] = a3;
  return result;
}

void EncodeBuffer.hash(into:)(uint64_t a1)
{
  v2 = v1;
  sub_1004A6EC4(*v2 & 1);
  EncodeBuffer.Mode.hash(into:)(a1, *(v2 + 1) | (*(v2 + 5) << 32));
  swift_beginAccess();
  sub_1004A6EA4();
  sub_1003DB278(a1, *(v2 + 32), *(v2 + 40), *(v2 + 48));
}

Swift::Int EncodeBuffer.hashValue.getter()
{
  v1 = v0;
  sub_1004A6E94();
  sub_1004A6EC4(*v0 & 1);
  EncodeBuffer.Mode.hash(into:)(v3, *(v1 + 1) | (v1[5] << 32));
  swift_beginAccess();
  sub_1004A6EA4();
  sub_1003DB278(v3, *(v1 + 4), *(v1 + 5), *(v1 + 6));
  return sub_1004A6F14();
}

Swift::Int sub_1003E4F74(uint64_t a1)
{
  sub_1004A6E94();
  EncodeBuffer.hash(into:)(v2);
  return sub_1004A6F14();
}

uint64_t sub_1003E4FB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return _s12NIOIMAPCore212EncodeBufferV23__derived_struct_equalsySbAC_ACtFZ_0(v5, v7) & 1;
}

void EncodeBuffer.Chunk.hash(into:)(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4);
  swift_beginAccess();
  sub_1004A6EA4();
  sub_1004A6EC4(v4 & 1);
}

Swift::Int EncodeBuffer.Chunk.hashValue.getter(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3);
  sub_1004A6E94();
  swift_beginAccess();
  sub_1004A6EA4();
  sub_1004A6EC4(v3 & 1);
  return sub_1004A6F14();
}

Swift::Int sub_1003E51B4()
{
  v1 = 0x100000000000000;
  if (!*(v0 + 23))
  {
    v1 = 0;
  }

  return EncodeBuffer.Chunk.hashValue.getter(*v0, *(v0 + 8), *(v0 + 16) | (*(v0 + 20) << 32) | (*(v0 + 22) << 48) | v1);
}

void sub_1003E51E4(uint64_t a1)
{
  v2 = 0x100000000000000;
  if (!*(v1 + 23))
  {
    v2 = 0;
  }

  EncodeBuffer.Chunk.hash(into:)(a1, *v1, *(v1 + 8), *(v1 + 16) | (*(v1 + 20) << 32) | (*(v1 + 22) << 48) | v2);
}

Swift::Int sub_1003E5214(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 20);
  v6 = *(v1 + 22);
  v7 = *(v1 + 23);
  sub_1004A6E94();
  v8 = 0x100000000000000;
  if (!v7)
  {
    v8 = 0;
  }

  EncodeBuffer.Chunk.hash(into:)(v10, v2, v3, v4 | (v5 << 32) | (v6 << 48) | v8);
  return sub_1004A6F14();
}

uint64_t sub_1003E5294(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 23);
  v3 = *(a2 + 23);
  return sub_10020FBD0(*a1, *(a1 + 8), *(a1 + 16) | (*(a1 + 20) << 32) | (*(a1 + 22) << 48), *a2, *(a2 + 8), *(a2 + 16) | (*(a2 + 20) << 32) | (*(a2 + 22) << 48)) & ~(v2 ^ v3) & 1;
}

unint64_t EncodeBuffer.nextChunk(allowEmptyChunk:)(char a1)
{
  if (((*(v1 + 1) | (*(v1 + 5) << 32)) & 0x8000000000000000) != 0)
  {
    goto LABEL_7;
  }

  result = sub_1003E4850();
  v4 = *(v1 + 16);
  if (v5)
  {
    v6 = *(v1 + 20);
    if ((a1 & 1) != 0 || v6 != v4)
    {
      result = ByteBuffer.readSlice(length:)((v6 - v4));
      if (result)
      {
        return result;
      }

      __break(1u);
LABEL_7:
      result = ByteBuffer.readSlice(length:)((*(v1 + 20) - *(v1 + 16)));
      if (result)
      {
        return result;
      }

      goto LABEL_14;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = __OFSUB__(result, v4);
  result -= v4;
  if (v7)
  {
    __break(1u);
    goto LABEL_13;
  }

  result = ByteBuffer.readSlice(length:)(result);
  if (!result)
  {
LABEL_15:
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall EncodeBuffer.clear()()
{
  v1 = v0;
  v2 = (v0 + 32);

  *v2 = _swiftEmptyArrayStorage;
  sub_1003E54DC(0, 1, 1);
  v3 = *v2;
  v5 = *(*v2 + 16);
  v4 = *(*v2 + 24);
  if (v5 >= v4 >> 1)
  {
    sub_1003E54DC(v4 > 1, v5 + 1, 1);
    v3 = *v2;
  }

  *(v3 + 16) = v5 + 1;
  v6 = v3 + 16 * v5;
  *(v6 + 32) = 0;
  *(v6 + 40) = 1;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 32) = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v1 + 8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    swift_beginAccess();
    v9 = ByteBuffer._Storage.allocateStorage(capacity:)(*(v8 + 16));

    *(v1 + 8) = v9;
    v8 = v9;
  }

  swift_beginAccess();
  *(v1 + 24) = *(v8 + 16);
  *(v1 + 28) = 0;
  *(v1 + 30) = 0;
  *(v1 + 16) = 0;
}

uint64_t sub_1003E54DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_100475618();
  *v3 = result;
  return result;
}

uint64_t sub_1003E54FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_10047561C();
  *v3 = result;
  return result;
}

char *sub_1003E551C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10046ADE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1003E553C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10046AE04(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1003E555C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10046AE20(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1003E557C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10046AF58(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1003E559C(unint64_t a1, unint64_t a2)
{
  if ((a1 & 0x8000000000) != 0)
  {
    if ((a2 ^ a1))
    {
      LOBYTE(v5) = 0;
    }

    else
    {
      v5 = (a1 >> 8) & 1 ^ ((a2 & 0x100) == 0);
    }

    if ((a2 & 0x8000000000) == 0)
    {
      LOBYTE(v5) = 0;
    }

    return v5 & 1;
  }

  else if ((a2 & 0x8000000000) != 0)
  {
    return 0;
  }

  else
  {
    v2 = vdupq_n_s64(a1);
    v3 = vdupq_n_s64(a2);
    *v2.i8 = vcltz_s16(vshl_n_s16(vmovn_s32(vmvnq_s8(veorq_s8(vuzp1q_s32(vceqzq_s64(vandq_s8(v2, xmmword_100501E10)), vceqzq_s64(vandq_s8(v2, xmmword_100501E20))), vuzp1q_s32(vceqzq_s64(vandq_s8(v3, xmmword_100501E10)), vceqzq_s64(vandq_s8(v3, xmmword_100501E20)))))), 0xFuLL));
    v2.i16[0] = vminv_u16(*v2.i8);
    return v2.i32[0] & (a2 ^ a1 ^ 1) & 1;
  }
}

uint64_t _s12NIOIMAPCore212EncodeBufferV23__derived_struct_equalsySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if ((*a1 ^ *a2))
  {
    return 0;
  }

  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[5];
  v6 = a2[1];
  v7 = a2[2];
  v8 = *(a2 + 3) | (a2[5] << 16);
  if (v5 < 0)
  {
    if (v8 & 0x80000000) == 0 || ((v3 ^ v6) & 1) != 0 || ((v4 ^ v7))
    {
      return 0;
    }
  }

  else if (v8 < 0 || ((v3 ^ v6) & 1) != 0 || ((v4 ^ v7) & 1) != 0 || ((a1[3] ^ v8) & 1) != 0 || ((a1[4] ^ ((*(a2 + 3) & 0x100) >> 8)) & 1) != 0 || ((v5 ^ ((v8 & 0x10000u) >> 16)) & 1) != 0)
  {
    return 0;
  }

  if (!sub_10020FBD0(*(a1 + 1), *(a1 + 2), *(a1 + 6) | (*(a1 + 14) << 32) | (a1[30] << 48), *(a2 + 1), *(a2 + 2), *(a2 + 6) | (*(a2 + 14) << 32) | (a2[30] << 48)))
  {
    return 0;
  }

  v11 = *(a1 + 4);
  v12 = *(a1 + 5);
  v13 = *(a1 + 6);
  v14 = *(a2 + 4);
  v15 = *(a2 + 5);
  v16 = *(a2 + 6);

  return sub_1003E4914(v11, v12, v13, v14, v15, v16);
}

unint64_t sub_1003E5768()
{
  result = qword_1005DC530;
  if (!qword_1005DC530)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EncodeBuffer.Mode, &type metadata for EncodeBuffer.Mode, v0, v1);
    atomic_store(result, &qword_1005DC530);
  }

  return result;
}

unint64_t sub_1003E57C0()
{
  result = qword_1005DC538;
  if (!qword_1005DC538)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EncodeBuffer, &type metadata for EncodeBuffer, v0, v1);
    atomic_store(result, &qword_1005DC538);
  }

  return result;
}

unint64_t sub_1003E5818()
{
  result = qword_1005DC540;
  if (!qword_1005DC540)
  {
    result = swift_getWitnessTable(")N\b", &type metadata for EncodeBuffer.Chunk, v0, v1);
    atomic_store(result, &qword_1005DC540);
  }

  return result;
}

uint64_t sub_1003E586C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = (a1 + 1);
  v3 = vld1q_dup_f32(v2);
  v4 = vandq_s8(vshlq_u32(v3, xmmword_100500E40), xmmword_100500E50);
  *v4.i8 = vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL));
  v5 = v4.i32[0] | v4.i32[1] | (*(a1 + 5) >> 1 << 28);
  if (v5 > 0x80000000)
  {
    v6 = ~v5;
  }

  else
  {
    v6 = -1;
  }

  return (v6 + 1);
}

int8x8_t sub_1003E58F4(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 56) = 1;
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
      v4 = -a2;
      v5 = vandq_s8(vshlq_u32(vdupq_n_s32(v4), xmmword_100500E60), xmmword_100500E70);
      *v5.i8 = vorr_s8(*v5.i8, *&vextq_s8(v5, v5, 8uLL));
      v6.i64[0] = v5.u32[0];
      v6.i64[1] = v5.u32[1];
      result = vorr_s8(v5.u32[0], *&vextq_s8(v6, v6, 8uLL));
      *(a1 + 5) = ((32 * v4) & 0x1E00000000uLL) >> 32;
      *(a1 + 1) = result.i32[0];
      return result;
    }

    *(a1 + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EncodeBuffer.Mode(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 5))
  {
    return *a1 + 0x80000000;
  }

  v3 = vld1q_dup_f32(a1);
  v2 = (a1 + 4);
  v4 = vandq_s8(vshlq_u32(v3, xmmword_100500E40), xmmword_100500E50);
  *v4.i8 = vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL));
  v5 = v4.i32[0] | v4.i32[1] | (*v2 >> 1 << 28);
  if (v5 > 0x80000000)
  {
    v6 = ~v5;
  }

  else
  {
    v6 = -1;
  }

  return (v6 + 1);
}

int8x8_t storeEnumTagSinglePayload for EncodeBuffer.Mode(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 4) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 5) = 1;
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
      v3 = -a2;
      v4 = vandq_s8(vshlq_u32(vdupq_n_s32(v3), xmmword_100500E60), xmmword_100500E70);
      *v4.i8 = vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL));
      v5.i64[0] = v4.u32[0];
      v5.i64[1] = v4.u32[1];
      result = vorr_s8(v4.u32[0], *&vextq_s8(v5, v5, 8uLL));
      *(a1 + 4) = ((32 * v3) & 0x1E00000000uLL) >> 32;
      *a1 = result.i32[0];
      return result;
    }

    *(a1 + 5) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unsigned int *sub_1003E5AC0(unsigned int *result, uint64_t a2)
{
  v2 = (*result | (*(result + 4) << 32)) & 0x101010101010101 | (a2 << 39);
  *result &= 0x1010101u;
  *(result + 4) = BYTE4(v2);
  return result;
}

uint64_t sub_1003E5B04(uint64_t (*a1)(__int128 *))
{
  if (qword_1005DB9D0 != -1)
  {
    swift_once();
  }

  v2 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
  v3 = dword_1005DE398;
  v4 = word_1005DE39C;
  v5 = byte_1005DE39E;

  LOBYTE(v11) = 0;
  BYTE5(v11) = 0;
  *(&v11 + 1) = 65537;
  *(&v11 + 1) = v2;
  *&v12 = qword_1005DE390;
  DWORD2(v12) = v3;
  WORD6(v12) = v4;
  BYTE14(v12) = v5;
  *&v13 = sub_1003DBA20(_swiftEmptyArrayStorage);
  *(&v13 + 1) = v6;
  v14 = v7;
  result = a1(&v11);
  if (DWORD1(v12) < v12)
  {
    __break(1u);
  }

  else if (DWORD2(v12) - (BYTE14(v12) | (WORD6(v12) << 8)) >= DWORD1(v12))
  {
    v15[0] = *(&v11 + 1);
    v15[1] = v12;
    v16 = DWORD2(v12);
    v17 = WORD6(v12);
    v18 = BYTE14(v12);
    v19 = v12;
    v20 = DWORD1(v12);
    v9 = DWORD1(v12) - v12;
    *&v21[0] = 0;
    *(&v21[0] + 1) = 0xE000000000000000;

    sub_1004A5874(v9);
    sub_1003BB2E4(v15, v21);
    sub_1003A52D0(v15);
    v10 = *&v21[0];
    v21[0] = v11;
    v21[1] = v12;
    v21[2] = v13;
    v22 = v14;
    sub_1003E5C94(v21);
    return v10;
  }

  __break(1u);
  return result;
}

unint64_t sub_1003E5CC8()
{
  result = qword_1005DC548;
  if (!qword_1005DC548)
  {
    result = swift_getWitnessTable("IM\b", &type metadata for EncodedAuthenticationType, v0, v1);
    atomic_store(result, &qword_1005DC548);
  }

  return result;
}

unint64_t sub_1003E5D30()
{
  result = qword_1005DC550;
  if (!qword_1005DC550)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EncodedMailbox, &type metadata for EncodedMailbox, v0, v1);
    atomic_store(result, &qword_1005DC550);
  }

  return result;
}

unint64_t sub_1003E5D98()
{
  result = qword_1005DC558;
  if (!qword_1005DC558)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EncodedSearch, &type metadata for EncodedSearch, v0, v1);
    atomic_store(result, &qword_1005DC558);
  }

  return result;
}

uint64_t EncodedSearchQuery.mailboxUIDValidity.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t EncodedSearchQuery.mailboxUIDValidity.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{

  *v3 = a1;
  *(v3 + 8) = a2;
  *(v3 + 16) = a3;
  *(v3 + 20) = BYTE4(a3) & 1;
  return result;
}

void __swiftcall EncodedSearchQuery.init(mailboxUIDValidity:encodedSearch:)(NIOIMAPCore2::EncodedSearchQuery *__return_ptr retstr, NIOIMAPCore2::MailboxUIDValidity mailboxUIDValidity, NIOIMAPCore2::EncodedSearch_optional encodedSearch)
{
  retstr->mailboxUIDValidity.encodedMailbox.mailbox._countAndFlagsBits = mailboxUIDValidity.encodedMailbox.mailbox._countAndFlagsBits;
  retstr->mailboxUIDValidity.encodedMailbox.mailbox._object = mailboxUIDValidity.encodedMailbox.mailbox._object;
  retstr->mailboxUIDValidity.uidValidity.value.rawValue = mailboxUIDValidity.uidValidity.value.rawValue;
  retstr->mailboxUIDValidity.uidValidity.is_nil = mailboxUIDValidity.uidValidity.is_nil;
  retstr->encodedSearch.value.query._countAndFlagsBits = encodedSearch.value.query._countAndFlagsBits;
  retstr->encodedSearch.value.query._object = encodedSearch.value.query._object;
}

void EncodedSearchQuery.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 20);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  if ((v3 & 1) == 0)
  {
    sub_1004A6EC4(1u);
    sub_1004A6EE4(v2);
    if (*(v1 + 32))
    {
      goto LABEL_3;
    }

LABEL_7:
    sub_1004A6EC4(0);
    return;
  }

  sub_1004A6EC4(0);
  if (!*(v1 + 32))
  {
    goto LABEL_7;
  }

LABEL_3:
  sub_1004A6EC4(1u);

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

Swift::Int EncodedSearchQuery.hashValue.getter()
{
  v1 = v0;
  sub_1004A6E94();
  v2 = *(v0 + 16);
  v3 = *(v0 + 20);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  if ((v3 & 1) == 0)
  {
    sub_1004A6EC4(1u);
    sub_1004A6EE4(v2);
    if (*(v1 + 32))
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1004A6EC4(0);
    return sub_1004A6F14();
  }

  sub_1004A6EC4(0);
  if (!*(v1 + 32))
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1004A6EC4(1u);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1004A6F14();
}

void sub_1003E6020(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 20);
  v4 = *(v1 + 32);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  if (v3 != 1)
  {
    sub_1004A6EC4(1u);
    sub_1004A6EE4(v2);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    sub_1004A6EC4(0);
    return;
  }

  sub_1004A6EC4(0);
  if (!v4)
  {
    goto LABEL_7;
  }

LABEL_3:
  sub_1004A6EC4(1u);

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

Swift::Int sub_1003E60DC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 20);
  v4 = *(v1 + 32);
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  if (v3 != 1)
  {
    sub_1004A6EC4(1u);
    sub_1004A6EE4(v2);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1004A6EC4(0);
    return sub_1004A6F14();
  }

  sub_1004A6EC4(0);
  if (!v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1004A6EC4(1u);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1004A6F14();
}

uint64_t sub_1003E61A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return _s12NIOIMAPCore218EncodedSearchQueryV23__derived_struct_equalsySbAC_ACtFZ_0(v5, v7) & 1;
}

uint64_t _s12NIOIMAPCore218EncodedSearchQueryV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = *(a1 + 4);
  v5 = *(a1 + 20);
  v6 = *(a2 + 16);
  v7 = *(a2 + 20);
  v8 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v8 && (sub_1004A6D34() & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    if ((v7 & 1) == 0)
    {
      return 0;
    }

LABEL_11:
    v10 = a1[4];
    v11 = *(a2 + 32);
    if (v10)
    {
      if (!v11 || (a1[3] != *(a2 + 24) || v10 != v11) && (sub_1004A6D34() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v11)
    {
      return 0;
    }

    return 1;
  }

  result = 0;
  if ((v7 & 1) == 0 && v4 == v6)
  {
    goto LABEL_11;
  }

  return result;
}

unint64_t sub_1003E62BC()
{
  result = qword_1005DC560;
  if (!qword_1005DC560)
  {
    result = swift_getWitnessTable("IK\b", &type metadata for EncodedSearchQuery, v0, v1);
    atomic_store(result, &qword_1005DC560);
  }

  return result;
}

unint64_t sub_1003E6324()
{
  result = qword_1005DC568;
  if (!qword_1005DC568)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EncodedSection, &type metadata for EncodedSection, v0, v1);
    atomic_store(result, &qword_1005DC568);
  }

  return result;
}

unint64_t sub_1003E638C()
{
  result = qword_1005DC570;
  if (!qword_1005DC570)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EncodedAuthenticatedURL, &type metadata for EncodedAuthenticatedURL, v0, v1);
    atomic_store(result, &qword_1005DC570);
  }

  return result;
}

unint64_t sub_1003E63F4()
{
  result = qword_1005DC578;
  if (!qword_1005DC578)
  {
    result = swift_getWitnessTable("AI\b", &type metadata for EncodedUser, v0, v1);
    atomic_store(result, &qword_1005DC578);
  }

  return result;
}

unint64_t sub_1003E64C0()
{
  result = qword_1005DC580;
  if (!qword_1005DC580)
  {
    result = swift_getWitnessTable("qH\b", &type metadata for BodyStructure.Encoding, v0, v1);
    atomic_store(result, &qword_1005DC580);
  }

  return result;
}

uint64_t sub_1003E6524(Swift::String a1)
{
  v2 = v1;
  if (a1._object)
  {
    sub_1004A5994(a1);
    v14._countAndFlagsBits = 34;
    v14._object = 0xE100000000000000;
    sub_1004A5994(v14);
    v2 = v1 + 5;
    v3 = v1[5];
    v4 = sub_1002F178C(0x22uLL, 0xE100000000000000, (v1 + 2), v3);
    if (v5)
    {
      v6._countAndFlagsBits = 34;
      v6._object = 0xE100000000000000;
      v4 = ByteBuffer._setStringSlowpath(_:at:)(v6, v3);
    }

    v7 = v4;

    result = v7;
    v9 = *v2 + v7;
    if (!__CFADD__(*v2, v7))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  v11 = v2[5];
  v2 += 5;
  v10 = v11;
  result = sub_1002F178C(0x4C494EuLL, 0xE300000000000000, (v2 - 3), v11);
  if (v12)
  {
    v13._countAndFlagsBits = 4999502;
    v13._object = 0xE300000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v13, v10);
  }

  v9 = *v2 + result;
  if (!__CFADD__(*v2, result))
  {
LABEL_10:
    *v2 = v9;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_1003E6638()
{
  result = qword_1005DC588;
  if (!qword_1005DC588)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EntryFlagName, &type metadata for EntryFlagName, v0, v1);
    atomic_store(result, &qword_1005DC588);
  }

  return result;
}

uint64_t sub_1003E669C(unint64_t a1, void *a2)
{
  v5 = *(v2 + 20);
  result = sub_1002F178C(0x2F7367616C662F22uLL, 0xE800000000000000, v2 + 8, v5);
  if (v7)
  {
    v8._countAndFlagsBits = 0x2F7367616C662F22;
    v8._object = 0xE800000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v8, v5);
  }

  v9 = result;
  v10 = *(v2 + 20);
  v11 = (v10 + result);
  if (__CFADD__(v10, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  *(v2 + 20) = v11;
  result = sub_1002F178C(a1, a2, v2 + 8, v11);
  if (v12)
  {
    v13._countAndFlagsBits = a1;
    v13._object = a2;
    result = ByteBuffer._setStringSlowpath(_:at:)(v13, v11);
  }

  v14 = *(v2 + 20);
  v15 = (v14 + result);
  if (__CFADD__(v14, result))
  {
    goto LABEL_14;
  }

  *(v2 + 20) = v15;
  v16 = v9 + result;
  if (__OFADD__(v9, result))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  result = sub_1002F178C(0x22uLL, 0xE100000000000000, v2 + 8, v15);
  if (v17)
  {
    v18._countAndFlagsBits = 34;
    v18._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v18, v15);
  }

  v19 = *(v2 + 20);
  v20 = __CFADD__(v19, result);
  v21 = v19 + result;
  if (v20)
  {
    goto LABEL_16;
  }

  *(v2 + 20) = v21;
  v22 = __OFADD__(v16, result);
  result += v16;
  if (v22)
  {
LABEL_17:
    __break(1u);
  }

  return result;
}

unint64_t sub_1003E6834()
{
  result = qword_1005DC590;
  if (!qword_1005DC590)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EntryKindRequest, &type metadata for EntryKindRequest, v0, v1);
    atomic_store(result, &qword_1005DC590);
  }

  return result;
}

uint64_t sub_1003E6898(uint64_t a1)
{
  v2 = v1;
  v32 = a1;
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = *(v1 + 20);
    result = sub_1002F178C(0, 0xE000000000000000, v1 + 8, v5);
    if (v7)
    {
      v8._countAndFlagsBits = 0;
      v8._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v8, v5);
    }

    v9 = result;
    v10 = *(v1 + 20);
    v11 = __CFADD__(v10, result);
    v12 = v10 + result;
    if (v11)
    {
      goto LABEL_29;
    }

    *(v1 + 20) = v12;
  }

  else
  {
    v9 = 0;
    v12 = *(v1 + 20);
  }

  v13 = v12;
  result = sub_1002F178C(0x28uLL, 0xE100000000000000, v1 + 8, v12);
  if (v14)
  {
    v15._countAndFlagsBits = 40;
    v15._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v15, v13);
  }

  v16 = *(v1 + 20);
  v11 = __CFADD__(v16, result);
  v17 = v16 + result;
  if (v11)
  {
    goto LABEL_24;
  }

  *(v1 + 20) = v17;
  v18 = v9 + result;
  if (__OFADD__(v9, result))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  __chkstk_darwin(result);
  v31[2] = sub_1003E7420;
  v31[3] = 0;
  v31[4] = v2;
  v31[5] = &v32;
  v31[6] = 32;
  v31[7] = 0xE100000000000000;
  result = sub_10045948C(0, sub_1003E7408, v31, a1);
  v19 = v18 + result;
  if (__OFADD__(v18, result))
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v20 = *(v2 + 20);
  result = sub_1002F178C(0x29uLL, 0xE100000000000000, v2 + 8, v20);
  if (v21)
  {
    v22._countAndFlagsBits = 41;
    v22._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v22, v20);
  }

  v23 = *(v2 + 20);
  v24 = (v23 + result);
  if (__CFADD__(v23, result))
  {
    goto LABEL_27;
  }

  *(v2 + 20) = v24;
  v25 = __OFADD__(v19, result);
  v26 = v19 + result;
  if (v25)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    return result;
  }

  if (!v4)
  {
    return v26;
  }

  result = sub_1002F178C(0, 0xE000000000000000, v2 + 8, v24);
  if (v27)
  {
    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v28, v24);
  }

  v29 = *(v2 + 20);
  v11 = __CFADD__(v29, result);
  v30 = v29 + result;
  if (v11)
  {
    goto LABEL_30;
  }

  *(v2 + 20) = v30;
  v25 = __OFADD__(v26, result);
  result += v26;
  if (v25)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  return result;
}

void sub_1003E6AB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = *(v3 + 20);
    v7 = sub_1002F178C(0, 0xE000000000000000, v3 + 8, v6);
    if (v8)
    {
      v9._countAndFlagsBits = 0;
      v9._object = 0xE000000000000000;
      v7 = ByteBuffer._setStringSlowpath(_:at:)(v9, v6);
    }

    v10 = v7;
    v11 = *(v3 + 20);
    v12 = __CFADD__(v11, v7);
    v13 = v11 + v7;
    if (v12)
    {
      goto LABEL_55;
    }

    *(v3 + 20) = v13;
  }

  else
  {
    v10 = 0;
    v13 = *(v3 + 20);
  }

  v14 = v13;
  v15 = v3;
  v16 = sub_1002F178C(0x28uLL, 0xE100000000000000, v3 + 8, v13);
  if (v17)
  {
    v18._countAndFlagsBits = 40;
    v18._object = 0xE100000000000000;
    v16 = ByteBuffer._setStringSlowpath(_:at:)(v18, v14);
  }

  v19 = *(v3 + 20);
  v12 = __CFADD__(v19, v16);
  v20 = v19 + v16;
  if (v12)
  {
    goto LABEL_50;
  }

  *(v3 + 20) = v20;
  if (__OFADD__(v10, v16))
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v72 = v10 + v16;
  v76 = v3;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  if (v5)
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v74 = v5;
    v75 = v5 - 1;
    v73 = a2;
    while (v23 < *(a2 + 16))
    {
      v86 = v22;
      v24 = *(a2 + v21 + 32);
      v26 = *(a2 + v21 + 40);
      v25 = *(a2 + v21 + 44);
      v27 = *(a2 + v21 + 48);
      v28 = *(a2 + v21 + 52);
      v29 = *(a2 + v21 + 54);
      v78 = v23;
      v79 = v21;
      v30 = *(a3 + v21 + 48);
      v32 = *(a3 + v21 + 32);
      v31 = *(a3 + v21 + 40);
      v33 = *(a3 + v21 + 52) | (*(a3 + v21 + 54) << 16);
      v103[0] = v23;
      v103[1] = v24;
      v104 = v26;
      v105 = v25;
      v106 = v27;
      v107 = v28;
      v108 = v29;
      v109 = v32;
      v110 = v31;
      v111 = v30;
      v113 = BYTE2(v33);
      v80 = v33;
      v112 = v33;
      v114 = v24;
      v115 = v26;
      v116 = v25;
      v117 = v27;
      v118 = v28;
      v119 = v29;
      v120 = v32;
      v121 = v31;
      v124 = BYTE2(v33);
      v123 = v33;
      v122 = v30;
      v125 = v24;
      v126 = v26;
      v127 = v25;
      v84 = v27;
      v128 = v27;
      v129 = v28;
      v130 = v29;
      v131 = v32;
      v132 = v31;
      v81 = v31;
      v135 = BYTE2(v33);
      v134 = v33;
      v133 = v30;
      swift_retain_n();
      swift_retain_n();
      sub_1003E70AC(&v114, &v92);
      sub_1003E70AC(&v125, &v92);

      v90 = v132;
      v91 = v131;
      v88 = v134;
      v89 = v135;
      v82 = v25;
      v87 = v133;
      swift_beginAccess();
      v85 = v28;
      v83 = v29;

      v34 = sub_1004A58D4();
      v36 = v35;

      sub_100441B60(v34, v36);
      v38 = v37;

      v39 = *(v15 + 20);
      v40 = sub_1002F178C(0x20uLL, 0xE100000000000000, v15 + 8, v39);
      if (v41)
      {
        v42._countAndFlagsBits = 32;
        v42._object = 0xE100000000000000;
        v40 = ByteBuffer._setStringSlowpath(_:at:)(v42, v39);
      }

      v43 = *(v15 + 20);
      v12 = __CFADD__(v43, v40);
      v44 = v43 + v40;
      if (v12)
      {
        goto LABEL_44;
      }

      v45 = v103[0];
      *(v15 + 20) = v44;
      v46 = v38 + v40;
      if (__OFADD__(v38, v40))
      {
        goto LABEL_45;
      }

      v47 = sub_10045BB90(v91, v90, (v87 | ((v88 | (v89 << 16)) << 32)) & 0xFFFFFFFFFFFFFFLL);
      v48 = v46 + v47;
      if (__OFADD__(v46, v47))
      {
        goto LABEL_46;
      }

      v49 = v86 + v48;
      if (__OFADD__(v86, v48))
      {
        goto LABEL_47;
      }

      v50 = v30 | (v80 << 32);
      if (v45 >= v75)
      {
        v92 = v24;
        v93 = v26;
        v94 = v82;
        v95 = v84;
        v96 = v85;
        v97 = v83;
        v98 = v32;
        v99 = v81;
        v100 = v50;
        v102 = BYTE6(v50);
        v101 = WORD2(v50);
        sub_100025F40(&v92, &qword_1005DC598, &qword_1005026D8);
        sub_100025F40(v103, &qword_1005DC5A0, &qword_1005026E0);
        v55 = 0;
        v15 = v76;
      }

      else
      {
        v15 = v76;
        v51 = *(v76 + 20);
        v52 = sub_1002F178C(0x20uLL, 0xE100000000000000, v76 + 8, v51);
        if (v53)
        {
          v54._countAndFlagsBits = 32;
          v54._object = 0xE100000000000000;
          v52 = ByteBuffer._setStringSlowpath(_:at:)(v54, v51);
        }

        v55 = v52;
        v92 = v24;
        v93 = v26;
        v94 = v82;
        v95 = v84;
        v96 = v85;
        v97 = v83;
        v98 = v32;
        v99 = v81;
        v100 = v50;
        v102 = BYTE6(v50);
        v101 = WORD2(v50);
        sub_100025F40(&v92, &qword_1005DC598, &qword_1005026D8);
        sub_100025F40(v103, &qword_1005DC5A0, &qword_1005026E0);
        v56 = *(v76 + 20);
        v12 = __CFADD__(v56, v55);
        v57 = v56 + v55;
        if (v12)
        {
          goto LABEL_49;
        }

        *(v76 + 20) = v57;
      }

      v58 = __OFADD__(v49, v55);
      v22 = v49 + v55;
      v5 = v74;
      if (v58)
      {
        goto LABEL_48;
      }

      v23 = v78 + 1;
      v21 = v79 + 24;
      a2 = v73;
      if (v74 == v78 + 1)
      {
        goto LABEL_30;
      }
    }

    goto LABEL_43;
  }

  v22 = 0;
LABEL_30:

  v59 = v72 + v22;
  if (__OFADD__(v72, v22))
  {
    goto LABEL_52;
  }

  v60 = *(v76 + 20);
  v61 = sub_1002F178C(0x29uLL, 0xE100000000000000, v76 + 8, v60);
  if (v62)
  {
    v63._countAndFlagsBits = 41;
    v63._object = 0xE100000000000000;
    v61 = ByteBuffer._setStringSlowpath(_:at:)(v63, v60);
  }

  v64 = *(v76 + 20);
  v65 = (v64 + v61);
  if (__CFADD__(v64, v61))
  {
    goto LABEL_53;
  }

  *(v76 + 20) = v65;
  v58 = __OFADD__(v59, v61);
  v66 = v59 + v61;
  if (v58)
  {
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    return;
  }

  if (v5)
  {
    v67 = sub_1002F178C(0, 0xE000000000000000, v76 + 8, v65);
    if (v68)
    {
      v69._countAndFlagsBits = 0;
      v69._object = 0xE000000000000000;
      v67 = ByteBuffer._setStringSlowpath(_:at:)(v69, v65);
    }

    v70 = *(v76 + 20);
    v12 = __CFADD__(v70, v67);
    v71 = v70 + v67;
    if (v12)
    {
      goto LABEL_56;
    }

    *(v76 + 20) = v71;
    if (__OFADD__(v66, v67))
    {
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
      goto LABEL_51;
    }
  }
}

uint64_t sub_1003E70AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005DC598, &qword_1005026D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003E7120(uint64_t result)
{
  v2 = v1;
  v3 = result;
  v20 = result;
  v4 = *(result + 16);
  if (v4)
  {
    v5 = *(v1 + 20);
    result = sub_1002F178C(0, 0xE000000000000000, v1 + 8, v5);
    if (v6)
    {
      v7._countAndFlagsBits = 0;
      v7._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v7, v5);
    }

    v8 = result;
    v9 = *(v2 + 20);
    v10 = __CFADD__(v9, result);
    v11 = v9 + result;
    if (v10)
    {
      goto LABEL_17;
    }

    *(v2 + 20) = v11;
  }

  else
  {
    v8 = 0;
  }

  __chkstk_darwin(result);
  v19[2] = sub_1003E7420;
  v19[3] = 0;
  v19[4] = v2;
  v19[5] = &v20;
  v19[6] = 32;
  v19[7] = 0xE100000000000000;
  result = sub_10045948C(0, sub_1003E73CC, v19, v3);
  v12 = v8 + result;
  if (__OFADD__(v8, result))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (!v4)
  {
    result += v8;
    return result;
  }

  v13 = *(v2 + 20);
  result = sub_1002F178C(0, 0xE000000000000000, v2 + 8, v13);
  if (v14)
  {
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v15, v13);
  }

  v16 = *(v2 + 20);
  v10 = __CFADD__(v16, result);
  v17 = v16 + result;
  if (v10)
  {
    goto LABEL_18;
  }

  *(v2 + 20) = v17;
  v18 = __OFADD__(v12, result);
  result += v12;
  if (v18)
  {
    __break(1u);
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_1003E729C(uint64_t *a1)
{
  swift_beginAccess();

  v1 = sub_1004A58D4();
  v3 = v2;

  sub_100441B60(v1, v3);
  v5 = v4;

  return v5;
}

uint64_t sub_1003E7350@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, unint64_t a7@<X6>, void *a8@<X7>, uint64_t *a9@<X8>)
{
  result = sub_100494CAC(*a1, *a2, *(a2 + 8), *(a2 + 16), *(a2 + 24) | (*(a2 + 28) << 32) | (*(a2 + 30) << 48), a3, a4, a5, *a6, a7, a8);
  if (!v9)
  {
    *a9 = result;
  }

  return result;
}

uint64_t Envelope.subject.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{

  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 38) = BYTE6(a3);
  *(v3 + 36) = WORD2(a3);
  *(v3 + 32) = a3;
  return result;
}

uint64_t Envelope.sender.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t Envelope.to.setter(uint64_t a1)
{

  *(v1 + 64) = a1;
  return result;
}

uint64_t Envelope.cc.setter(uint64_t a1)
{

  *(v1 + 72) = a1;
  return result;
}

uint64_t Envelope.bcc.setter(uint64_t a1)
{

  *(v1 + 80) = a1;
  return result;
}

uint64_t Envelope.inReplyTo.getter()
{
  v1 = *(v0 + 88);

  return v1;
}

uint64_t Envelope.inReplyTo.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return result;
}

uint64_t Envelope.messageID.getter()
{
  v1 = *(v0 + 104);

  return v1;
}

uint64_t Envelope.messageID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
  return result;
}

double Envelope.init(date:subject:from:sender:reply:to:cc:bcc:inReplyTo:messageID:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, __int128 a12, uint64_t a13)
{
  *&v21 = a1;
  *(&v21 + 1) = a2;
  *&v22 = a3;
  *(&v22 + 1) = a4;
  LODWORD(v23) = a5;
  BYTE6(v23) = BYTE6(a5);
  WORD2(v23) = WORD2(a5);
  *(&v23 + 1) = a6;
  *&v24 = a7;
  *(&v24 + 1) = a8;
  v25 = a10;
  v26 = a11;
  v27 = a12;
  v28 = a13;
  v29[0] = a1;
  v29[1] = a2;
  v29[2] = a3;
  v29[3] = a4;
  v30 = a5;
  v32 = BYTE6(a5);
  v31 = WORD2(a5);
  v33 = a6;
  v34 = a7;
  v35 = a8;
  v36 = a10;
  v37 = a11;
  v38 = a12;
  v39 = a13;
  sub_1002FA030(&v21, v20);
  sub_1003E771C(v29);
  v14 = v26;
  v15 = v27;
  v16 = v24;
  *(a9 + 64) = v25;
  *(a9 + 80) = v14;
  *(a9 + 96) = v15;
  result = *&v21;
  v18 = v22;
  v19 = v23;
  *a9 = v21;
  *(a9 + 16) = v18;
  *(a9 + 112) = v28;
  *(a9 + 32) = v19;
  *(a9 + 48) = v16;
  return result;
}

void Envelope.hash(into:)(uint64_t a1)
{
  v2 = v1;
  if (v2[1])
  {
    sub_1004A6EC4(1u);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    if (v2[2])
    {
LABEL_3:
      sub_1004A6EC4(1u);
      swift_beginAccess();
      sub_1004A6EA4();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1004A6EC4(0);
    if (v2[2])
    {
      goto LABEL_3;
    }
  }

  sub_1004A6EC4(0);
LABEL_6:
  sub_1003AB028(a1, v2[5]);
  sub_1003AB028(a1, v2[6]);
  sub_1003AB028(a1, v2[7]);
  sub_1003AB028(a1, v2[8]);
  sub_1003AB028(a1, v2[9]);
  sub_1003AB028(a1, v2[10]);
  if (v2[12])
  {
    sub_1004A6EC4(1u);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    if (v2[14])
    {
LABEL_8:
      sub_1004A6EC4(1u);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      return;
    }
  }

  else
  {
    sub_1004A6EC4(0);
    if (v2[14])
    {
      goto LABEL_8;
    }
  }

  sub_1004A6EC4(0);
}

Swift::Int Envelope.hashValue.getter()
{
  sub_1004A6E94();
  Envelope.hash(into:)(v1);
  return sub_1004A6F14();
}

Swift::Int sub_1003E7904(uint64_t a1)
{
  sub_1004A6E94();
  Envelope.hash(into:)(v2);
  return sub_1004A6F14();
}

BOOL sub_1003E7940(uint64_t a1, __int128 *a2)
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
  return _s12NIOIMAPCore28EnvelopeV23__derived_struct_equalsySbAC_ACtFZ_0(v12, v14);
}

uint64_t sub_1003E79C4(void *a1)
{
  v2 = v1;
  v3 = *(v1 + 20);
  if (!a1[2])
  {
    goto LABEL_20;
  }

  result = sub_1002F178C(0x28uLL, 0xE100000000000000, v1 + 8, *(v1 + 20));
  if (v6)
  {
    v7._countAndFlagsBits = 40;
    v7._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v7, v3);
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
  v34 = a1;
  result = sub_1002F178C(0, 0xE000000000000000, v1 + 8, v10);
  if (v11)
  {
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v12, v10);
  }

  v13 = result;
  v14 = *(v2 + 20);
  v15 = __CFADD__(v14, result);
  v16 = v14 + result;
  if (v15)
  {
    goto LABEL_26;
  }

  *(v2 + 20) = v16;
  __chkstk_darwin(result);
  v33[2] = sub_1003E7C08;
  v33[3] = 0;
  v33[4] = v2;
  v33[5] = &v34;
  v33[6] = 0;
  v33[7] = 0xE000000000000000;
  result = sub_100451C5C(0, sub_1003E8638, v33, a1);
  v3 = v13 + result;
  if (__OFADD__(v13, result))
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v17 = *(v2 + 20);
  result = sub_1002F178C(0, 0xE000000000000000, v2 + 8, v17);
  if (v18)
  {
    v19._countAndFlagsBits = 0;
    v19._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v19, v17);
  }

  v20 = *(v2 + 20);
  v21 = (v20 + result);
  if (__CFADD__(v20, result))
  {
    goto LABEL_28;
  }

  *(v2 + 20) = v21;
  v22 = v3 + result;
  if (__OFADD__(v3, result))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v23 = __OFADD__(v8, v22);
  v24 = v8 + v22;
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

  result = sub_1002F178C(0x29uLL, 0xE100000000000000, v2 + 8, v21);
  if (v25)
  {
    v26._countAndFlagsBits = 41;
    v26._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v26, v21);
  }

  v27 = *(v2 + 20);
  v15 = __CFADD__(v27, result);
  v28 = v27 + result;
  if (v15)
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
  result = sub_1002F178C(0x4C494EuLL, 0xE300000000000000, v2 + 8, v3);
  if (v29)
  {
    v30._countAndFlagsBits = 4999502;
    v30._object = 0xE300000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v30, v3);
  }

  v31 = *(v2 + 20);
  v15 = __CFADD__(v31, result);
  v32 = v31 + result;
  if (v15)
  {
    goto LABEL_32;
  }

  *(v2 + 20) = v32;
  return result;
}

uint64_t sub_1003E7C08(unint64_t *a1)
{
  v1 = *a1;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    v5 = v1 & 0x7FFFFFFFFFFFFFFFLL;
    v6 = *(v5 + 32);
    v9 = *(v5 + 16);
    v10 = v6;
    v11 = *(v5 + 48);
    *&v12 = *(v5 + 64);
    sub_1003A31B0(&v9, v8);
    v4 = sub_100441244(&v9);
    sub_1003A320C(&v9);
  }

  else
  {
    v2 = *(v1 + 64);
    v11 = *(v1 + 48);
    v12 = v2;
    v13[0] = *(v1 + 80);
    *(v13 + 15) = *(v1 + 95);
    v3 = *(v1 + 32);
    v9 = *(v1 + 16);
    v10 = v3;
    sub_1003A3260(&v9, v8);
    v4 = sub_1003E367C(&v9);
    sub_1003A32BC(&v9);
  }

  return v4;
}

void sub_1003E7CBC(uint64_t a1)
{
  v3 = v1;
  v5 = *(v1 + 20);
  v6 = sub_1002F178C(0x28uLL, 0xE100000000000000, v1 + 8, v5);
  if (v7)
  {
    v8._countAndFlagsBits = 40;
    v8._object = 0xE100000000000000;
    v6 = ByteBuffer._setStringSlowpath(_:at:)(v8, v5);
  }

  v9 = v6;
  v10 = *(v1 + 20);
  v11 = (v10 + v6);
  if (__CFADD__(v10, v6))
  {
    goto LABEL_83;
  }

  *(v1 + 20) = v11;
  v12 = *(a1 + 8);
  if (v12)
  {
    sub_100441B60(*a1, v12);
    v14 = v9 + v13;
    if (!__OFADD__(v9, v13))
    {
      goto LABEL_6;
    }

LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v102 = sub_1002F178C(0x4C494EuLL, 0xE300000000000000, v1 + 8, v11);
  if (v103)
  {
    v104._countAndFlagsBits = 4999502;
    v104._object = 0xE300000000000000;
    v102 = ByteBuffer._setStringSlowpath(_:at:)(v104, v11);
  }

  v105 = *(v1 + 20);
  v29 = __CFADD__(v105, v102);
  v106 = v105 + v102;
  if (v29)
  {
    goto LABEL_110;
  }

  *(v1 + 20) = v106;
  v14 = v9 + v102;
  if (__OFADD__(v9, v102))
  {
    goto LABEL_64;
  }

LABEL_6:
  v15 = *(v1 + 20);
  v16 = sub_1002F178C(0x20uLL, 0xE100000000000000, v1 + 8, v15);
  if (v17)
  {
    v18._countAndFlagsBits = 32;
    v18._object = 0xE100000000000000;
    v16 = ByteBuffer._setStringSlowpath(_:at:)(v18, v15);
  }

  v19 = *(v1 + 20);
  v9 = (v19 + v16);
  if (__CFADD__(v19, v16))
  {
    goto LABEL_84;
  }

  *(v1 + 20) = v9;
  v2 = v14 + v16;
  if (__OFADD__(v14, v16))
  {
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  if (*(a1 + 16))
  {
    v20 = *(a1 + 32) | ((*(a1 + 36) | (*(a1 + 38) << 16)) << 32);
    v9 = *(a1 + 24);

    v22 = sub_1003B1E70(v21, v9, v20);

    v23 = v2 + v22;
    if (!__OFADD__(v2, v22))
    {
      goto LABEL_12;
    }

LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

LABEL_65:
  v107 = sub_1002F178C(0x4C494EuLL, 0xE300000000000000, v1 + 8, v9);
  if (v108)
  {
    v109._countAndFlagsBits = 4999502;
    v109._object = 0xE300000000000000;
    v107 = ByteBuffer._setStringSlowpath(_:at:)(v109, v9);
  }

  v110 = *(v1 + 20);
  v29 = __CFADD__(v110, v107);
  v111 = v110 + v107;
  if (v29)
  {
    goto LABEL_111;
  }

  *(v1 + 20) = v111;
  v23 = v2 + v107;
  if (__OFADD__(v2, v107))
  {
    goto LABEL_70;
  }

LABEL_12:
  v24 = *(v3 + 20);
  v25 = sub_1002F178C(0x20uLL, 0xE100000000000000, v3 + 8, v24);
  if (v26)
  {
    v27._countAndFlagsBits = 32;
    v27._object = 0xE100000000000000;
    v25 = ByteBuffer._setStringSlowpath(_:at:)(v27, v24);
  }

  v28 = *(v3 + 20);
  v29 = __CFADD__(v28, v25);
  v30 = v28 + v25;
  if (v29)
  {
    goto LABEL_86;
  }

  *(v3 + 20) = v30;
  v31 = v23 + v25;
  if (__OFADD__(v23, v25))
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v32 = sub_1003E79C4(*(a1 + 40));
  v33 = v31 + v32;
  if (__OFADD__(v31, v32))
  {
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v34 = *(v3 + 20);
  v35 = sub_1002F178C(0x20uLL, 0xE100000000000000, v3 + 8, v34);
  if (v36)
  {
    v37._countAndFlagsBits = 32;
    v37._object = 0xE100000000000000;
    v35 = ByteBuffer._setStringSlowpath(_:at:)(v37, v34);
  }

  v38 = *(v3 + 20);
  v29 = __CFADD__(v38, v35);
  v39 = v38 + v35;
  if (v29)
  {
    goto LABEL_89;
  }

  *(v3 + 20) = v39;
  v40 = v33 + v35;
  if (__OFADD__(v33, v35))
  {
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v41 = sub_1003E79C4(*(a1 + 48));
  v42 = v40 + v41;
  if (__OFADD__(v40, v41))
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v43 = *(v3 + 20);
  v44 = sub_1002F178C(0x20uLL, 0xE100000000000000, v3 + 8, v43);
  if (v45)
  {
    v46._countAndFlagsBits = 32;
    v46._object = 0xE100000000000000;
    v44 = ByteBuffer._setStringSlowpath(_:at:)(v46, v43);
  }

  v47 = *(v3 + 20);
  v29 = __CFADD__(v47, v44);
  v48 = v47 + v44;
  if (v29)
  {
    goto LABEL_92;
  }

  *(v3 + 20) = v48;
  v49 = v42 + v44;
  if (__OFADD__(v42, v44))
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  v50 = sub_1003E79C4(*(a1 + 56));
  v51 = v49 + v50;
  if (__OFADD__(v49, v50))
  {
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  v52 = *(v3 + 20);
  v53 = sub_1002F178C(0x20uLL, 0xE100000000000000, v3 + 8, v52);
  if (v54)
  {
    v55._countAndFlagsBits = 32;
    v55._object = 0xE100000000000000;
    v53 = ByteBuffer._setStringSlowpath(_:at:)(v55, v52);
  }

  v56 = *(v3 + 20);
  v29 = __CFADD__(v56, v53);
  v57 = v56 + v53;
  if (v29)
  {
    goto LABEL_95;
  }

  *(v3 + 20) = v57;
  v58 = v51 + v53;
  if (__OFADD__(v51, v53))
  {
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  v59 = sub_1003E79C4(*(a1 + 64));
  v60 = v58 + v59;
  if (__OFADD__(v58, v59))
  {
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  v61 = *(v3 + 20);
  v62 = sub_1002F178C(0x20uLL, 0xE100000000000000, v3 + 8, v61);
  if (v63)
  {
    v64._countAndFlagsBits = 32;
    v64._object = 0xE100000000000000;
    v62 = ByteBuffer._setStringSlowpath(_:at:)(v64, v61);
  }

  v65 = *(v3 + 20);
  v29 = __CFADD__(v65, v62);
  v66 = v65 + v62;
  if (v29)
  {
    goto LABEL_98;
  }

  *(v3 + 20) = v66;
  v67 = v60 + v62;
  if (__OFADD__(v60, v62))
  {
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  v68 = sub_1003E79C4(*(a1 + 72));
  v69 = v67 + v68;
  if (__OFADD__(v67, v68))
  {
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  v70 = *(v3 + 20);
  v71 = sub_1002F178C(0x20uLL, 0xE100000000000000, v3 + 8, v70);
  if (v72)
  {
    v73._countAndFlagsBits = 32;
    v73._object = 0xE100000000000000;
    v71 = ByteBuffer._setStringSlowpath(_:at:)(v73, v70);
  }

  v74 = *(v3 + 20);
  v29 = __CFADD__(v74, v71);
  v75 = v74 + v71;
  if (v29)
  {
    goto LABEL_101;
  }

  *(v3 + 20) = v75;
  v76 = v69 + v71;
  if (__OFADD__(v69, v71))
  {
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  v77 = sub_1003E79C4(*(a1 + 80));
  v78 = v76 + v77;
  if (__OFADD__(v76, v77))
  {
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  v79 = *(v3 + 20);
  v80 = sub_1002F178C(0x20uLL, 0xE100000000000000, v3 + 8, v79);
  if (v81)
  {
    v82._countAndFlagsBits = 32;
    v82._object = 0xE100000000000000;
    v80 = ByteBuffer._setStringSlowpath(_:at:)(v82, v79);
  }

  v83 = *(v3 + 20);
  v9 = (v83 + v80);
  if (__CFADD__(v83, v80))
  {
    goto LABEL_104;
  }

  *(v3 + 20) = v9;
  v84 = __OFADD__(v78, v80);
  v23 = v78 + v80;
  if (v84)
  {
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  v85 = *(a1 + 96);
  if (v85)
  {
    sub_100441B60(*(a1 + 88), v85);
    v84 = __OFADD__(v23, v86);
    v87 = v23 + v86;
    if (!v84)
    {
      goto LABEL_48;
    }

LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

LABEL_71:
  v112 = sub_1002F178C(0x4C494EuLL, 0xE300000000000000, v3 + 8, v9);
  if (v113)
  {
    v114._countAndFlagsBits = 4999502;
    v114._object = 0xE300000000000000;
    v112 = ByteBuffer._setStringSlowpath(_:at:)(v114, v9);
  }

  v115 = *(v3 + 20);
  v29 = __CFADD__(v115, v112);
  v116 = v115 + v112;
  if (v29)
  {
    goto LABEL_112;
  }

  *(v3 + 20) = v116;
  v84 = __OFADD__(v23, v112);
  v87 = v23 + v112;
  if (v84)
  {
    goto LABEL_76;
  }

LABEL_48:
  v88 = *(v3 + 20);
  v89 = sub_1002F178C(0x20uLL, 0xE100000000000000, v3 + 8, v88);
  if (v90)
  {
    v91._countAndFlagsBits = 32;
    v91._object = 0xE100000000000000;
    v89 = ByteBuffer._setStringSlowpath(_:at:)(v91, v88);
  }

  v92 = *(v3 + 20);
  v9 = (v92 + v89);
  if (__CFADD__(v92, v89))
  {
    goto LABEL_106;
  }

  *(v3 + 20) = v9;
  v84 = __OFADD__(v87, v89);
  v87 += v89;
  if (v84)
  {
LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  v93 = *(a1 + 112);
  if (v93)
  {
    sub_100441B60(*(a1 + 104), v93);
    v95 = v87 + v94;
    if (!__OFADD__(v87, v94))
    {
      goto LABEL_54;
    }

    goto LABEL_82;
  }

LABEL_77:
  v117 = sub_1002F178C(0x4C494EuLL, 0xE300000000000000, v3 + 8, v9);
  if (v118)
  {
    v119._countAndFlagsBits = 4999502;
    v119._object = 0xE300000000000000;
    v117 = ByteBuffer._setStringSlowpath(_:at:)(v119, v9);
  }

  v120 = *(v3 + 20);
  v29 = __CFADD__(v120, v117);
  v121 = v120 + v117;
  if (v29)
  {
    goto LABEL_113;
  }

  *(v3 + 20) = v121;
  v95 = v87 + v117;
  if (__OFADD__(v87, v117))
  {
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

LABEL_54:
  v96 = *(v3 + 20);
  v97 = sub_1002F178C(0x29uLL, 0xE100000000000000, v3 + 8, v96);
  if (v98)
  {
    v99._countAndFlagsBits = 41;
    v99._object = 0xE100000000000000;
    v97 = ByteBuffer._setStringSlowpath(_:at:)(v99, v96);
  }

  v100 = *(v3 + 20);
  v29 = __CFADD__(v100, v97);
  v101 = v100 + v97;
  if (v29)
  {
    goto LABEL_108;
  }

  *(v3 + 20) = v101;
  if (__OFADD__(v95, v97))
  {
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
  }
}

uint64_t sub_1003E82F0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(uint64_t *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, unint64_t a7@<X6>, void *a8@<X7>, uint64_t *a9@<X8>)
{
  result = sub_1004910D4(*a1, *a2, a2[1], a3, a4, a5, *a6, a7, a8);
  if (!v9)
  {
    *a9 = result;
  }

  return result;
}

BOOL _s12NIOIMAPCore28EnvelopeV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1 == *a2 && v4 == v5;
    if (!v6 && (sub_1004A6D34() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = *(a2 + 16);
  if (a1[2])
  {
    if (!v7)
    {
      return 0;
    }

    v8 = a1[3];
    v9 = *(a1 + 8) | ((*(a1 + 18) | (*(a1 + 38) << 16)) << 32);
    v10 = *(a2 + 24);
    v11 = *(a2 + 32) | ((*(a2 + 36) | (*(a2 + 38) << 16)) << 32);

    LOBYTE(v8) = sub_10020FBD0(v12, v8, v9 & 0xFFFFFFFFFFFFFFLL, v7, v10, v11 & 0xFFFFFFFFFFFFFFLL);

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if ((sub_100398218(a1[5], *(a2 + 40)) & 1) == 0 || (sub_100398218(a1[6], *(a2 + 48)) & 1) == 0 || (sub_100398218(a1[7], *(a2 + 56)) & 1) == 0 || (sub_100398218(a1[8], *(a2 + 64)) & 1) == 0 || (sub_100398218(a1[9], *(a2 + 72)) & 1) == 0 || (sub_100398218(a1[10], *(a2 + 80)) & 1) == 0)
  {
    return 0;
  }

  v13 = a1[12];
  v14 = *(a2 + 96);
  if (v13)
  {
    if (!v14 || (a1[11] != *(a2 + 88) || v13 != v14) && (sub_1004A6D34() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  v15 = a1[14];
  v16 = *(a2 + 112);
  if (v15)
  {
    return v16 && (a1[13] == *(a2 + 104) && v15 == v16 || (sub_1004A6D34() & 1) != 0);
  }

  return !v16;
}

unint64_t sub_1003E8530()
{
  result = qword_1005DC5A8;
  if (!qword_1005DC5A8)
  {
    result = swift_getWitnessTable("AF\b", &type metadata for Envelope, v0, v1);
    atomic_store(result, &qword_1005DC5A8);
  }

  return result;
}

uint64_t sub_1003E8584(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1003E85CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1003E8638@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1004910D4(*a1, *a2, a2[1], *(v3 + 16), *(v3 + 24), *(v3 + 32), **(v3 + 40), *(v3 + 48), *(v3 + 56));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

__n128 Expire.dateTime.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  *(a1 + 32) = *(v1 + 32);
  result = *(v1 + 41);
  *(a1 + 41) = result;
  return result;
}

__n128 Expire.dateTime.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v2;
  *(v1 + 32) = *(a1 + 32);
  result = *(a1 + 41);
  *(v1 + 41) = result;
  return result;
}

void __swiftcall Expire.init(dateTime:)(NIOIMAPCore2::Expire *__return_ptr retstr, NIOIMAPCore2::FullDateTime *dateTime)
{
  v2 = *&dateTime->date.day;
  *&retstr->dateTime.date.year = *&dateTime->date.year;
  *&retstr->dateTime.date.day = v2;
  *&retstr->dateTime.time.minute = *&dateTime->time.minute;
  *(&retstr->dateTime.time.second + 1) = *(&dateTime->time.second + 1);
}

void Expire.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  sub_1004A6EB4(*v0);
  sub_1004A6EB4(v1);
  sub_1004A6EB4(v2);
  sub_1004A6EB4(v3);
  sub_1004A6EB4(v4);
  sub_1004A6EB4(v5);
  if (v7)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    sub_1004A6EB4(v6);
  }
}

Swift::Int Expire.hashValue.getter()
{
  sub_1004A6E94();
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  sub_1004A6EB4(*v0);
  sub_1004A6EB4(v1);
  sub_1004A6EB4(v2);
  sub_1004A6EB4(v3);
  sub_1004A6EB4(v4);
  sub_1004A6EB4(v5);
  if (v7)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    sub_1004A6EB4(v6);
  }

  return sub_1004A6F14();
}

Swift::Int sub_1003E8850()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  v8 = *(v0 + 56);
  sub_1004A6E94();
  sub_1004A6EB4(v1);
  sub_1004A6EB4(v2);
  sub_1004A6EB4(v3);
  sub_1004A6EB4(v4);
  sub_1004A6EB4(v5);
  sub_1004A6EB4(v6);
  if (v8 == 1)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    sub_1004A6EB4(v7);
  }

  return sub_1004A6F14();
}

void sub_1003E8930()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  sub_1004A6EB4(*v0);
  sub_1004A6EB4(v1);
  sub_1004A6EB4(v2);
  sub_1004A6EB4(v3);
  sub_1004A6EB4(v4);
  sub_1004A6EB4(v5);
  if (v7 == 1)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    sub_1004A6EB4(v6);
  }
}

Swift::Int sub_1003E89D0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  sub_1004A6E94();
  sub_1004A6EB4(v2);
  sub_1004A6EB4(v3);
  sub_1004A6EB4(v4);
  sub_1004A6EB4(v5);
  sub_1004A6EB4(v6);
  sub_1004A6EB4(v7);
  if (v9 == 1)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    sub_1004A6EB4(v8);
  }

  return sub_1004A6F14();
}

uint64_t sub_1003E8AAC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 9) = *(a2 + 41);
  return _s12NIOIMAPCore26ExpireV23__derived_struct_equalsySbAC_ACtFZ_0(v5, v7) & 1;
}

uint64_t _s12NIOIMAPCore26ExpireV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40))
  {
    if (*(a1 + 56))
    {
      if (*(a2 + 56))
      {
        return 1;
      }
    }

    else if ((*(a2 + 56) & 1) == 0 && *(a1 + 48) == *(a2 + 48))
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_1003E8BA8()
{
  result = qword_1005DC5B0;
  if (!qword_1005DC5B0)
  {
    result = swift_getWitnessTable("YE\b", &type metadata for Expire, v0, v1);
    atomic_store(result, &qword_1005DC5B0);
  }

  return result;
}

uint64_t sub_1003E8BFC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 57))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003E8C1C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = (a2 - 1);
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

  *(result + 57) = v3;
  return result;
}

uint64_t sub_1003E8C6C(unint64_t *a1)
{
  v2 = v1;
  v4 = a1[4];
  if (v4)
  {
    v5 = a1[5];
    v6 = a1[6];
    v7 = a1[7];
    v8 = *(v1 + 20);
    result = sub_1002F178C(0x20uLL, 0xE100000000000000, v1 + 8, v8);
    if (v10)
    {
      v11._countAndFlagsBits = 32;
      v11._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v11, v8);
    }

    v12 = result;
    v13 = *(v1 + 20);
    v14 = __CFADD__(v13, result);
    v15 = v13 + result;
    if (v14)
    {
      goto LABEL_26;
    }

    *(v1 + 20) = v15;
    sub_1003EC39C(v4, v5, v6, v7);
    v4 = v12 + v16;
    if (__OFADD__(v12, v16))
    {
      __break(1u);
    }
  }

  result = sub_10048FB98(a1[3]);
  v17 = v4 + result;
  if (__OFADD__(v4, result))
  {
    goto LABEL_22;
  }

  v18 = *(v1 + 20);
  result = sub_1002F178C(0x20uLL, 0xE100000000000000, v1 + 8, v18);
  if (v19)
  {
    v20._countAndFlagsBits = 32;
    v20._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v20, v18);
  }

  v21 = *(v1 + 20);
  v22 = (v21 + result);
  if (__CFADD__(v21, result))
  {
    goto LABEL_23;
  }

  *(v1 + 20) = v22;
  v23 = v17 + result;
  if (__OFADD__(v17, result))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v24._object = a1[2];
  if (!v24._object)
  {
    v31 = v17 + result;
    goto LABEL_18;
  }

  v24._countAndFlagsBits = a1[1];
  sub_1004A5994(v24);
  v34._countAndFlagsBits = 32;
  v34._object = 0xE100000000000000;
  sub_1004A5994(v34);
  v25 = sub_1002F178C(0x2054455352414843uLL, 0xE800000000000000, v1 + 8, v22);
  if (v26)
  {
    v27._countAndFlagsBits = 0x2054455352414843;
    v27._object = 0xE800000000000000;
    v25 = ByteBuffer._setStringSlowpath(_:at:)(v27, v22);
  }

  v28 = v25;

  v29 = *(v2 + 20);
  v14 = __CFADD__(v29, v28);
  v30 = v29 + v28;
  if (v14)
  {
    goto LABEL_27;
  }

  *(v2 + 20) = v30;
  v31 = v23 + v28;
  if (__OFADD__(v23, v28))
  {
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_18:
  v32 = sub_10048AE40(*a1);
  v33 = __OFADD__(v31, v32);
  result = v31 + v32;
  if (v33)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

unint64_t ExtendedSearchOptions.key.getter()
{
  v1 = *v0;
  sub_1000B3664(*v0);
  return v1;
}

unint64_t ExtendedSearchOptions.key.setter(unint64_t a1)
{
  result = sub_1000B37D8(*v1);
  *v1 = a1;
  return result;
}

uint64_t ExtendedSearchOptions.sourceOptions.getter()
{
  v1 = v0[4];
  sub_1003E93EC(v1, v0[5], v0[6], v0[7]);
  return v1;
}

uint64_t ExtendedSearchOptions.sourceOptions.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1003E9490(v4[4], v4[5], v4[6], v4[7]);
  v4[4] = a1;
  v4[5] = a2;
  v4[6] = a3;
  v4[7] = a4;
  return result;
}

double ExtendedSearchOptions.init(key:charset:returnOptions:sourceOptions:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>)
{
  *&v14 = a1;
  *(&v14 + 1) = a2;
  *&v15 = a3;
  *(&v15 + 1) = a4;
  *&v16 = a5;
  *(&v16 + 1) = a6;
  *&v17 = a7;
  *(&v17 + 1) = a8;
  v18[0] = a1;
  v18[1] = a2;
  v18[2] = a3;
  v18[3] = a4;
  v18[4] = a5;
  v18[5] = a6;
  v18[6] = a7;
  v18[7] = a8;
  sub_1003E94E8(&v14, &v13);
  sub_1003D9E64(v18);
  v10 = v15;
  *a9 = v14;
  a9[1] = v10;
  result = *&v16;
  v12 = v17;
  a9[2] = v16;
  a9[3] = v12;
  return result;
}

void ExtendedSearchOptions.hash(into:)(uint64_t a1)
{
  v2 = v1;
  SearchKey.hash(into:)(a1, *v2);
  if (v2[2])
  {
    sub_1004A6EC4(1u);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_1004A6EC4(0);
  }

  sub_1003ABB18(a1, v2[3]);
  v4 = v2[4];
  if (v4 && (v6 = v2[6], v5 = v2[7], sub_1004A6EC4(1u), sub_1003AEFBC(a1, v4), v6))
  {
    sub_1004A6EC4(1u);

    sub_1003A1878(a1, v6, v5);
  }

  else
  {
    sub_1004A6EC4(0);
  }
}

Swift::Int ExtendedSearchOptions.hashValue.getter()
{
  sub_1004A6E94();
  ExtendedSearchOptions.hash(into:)(v1);
  return sub_1004A6F14();
}

Swift::Int sub_1003E90D8(uint64_t a1)
{
  sub_1004A6E94();
  ExtendedSearchOptions.hash(into:)(v2);
  return sub_1004A6F14();
}

uint64_t sub_1003E9114(_OWORD *a1, _OWORD *a2)
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
  return _s12NIOIMAPCore221ExtendedSearchOptionsV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v8) & 1;
}

uint64_t _s12NIOIMAPCore221ExtendedSearchOptionsV23__derived_struct_equalsySbAC_ACtFZ_0(unint64_t *a1, unint64_t *a2)
{
  if ((static SearchKey.__derived_enum_equals(_:_:)(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = a1[2];
  v5 = a2[2];
  if (v4)
  {
    if (!v5 || (a1[1] != a2[1] || v4 != v5) && (sub_1004A6D34() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if ((sub_1002F361C(a1[3], a2[3]) & 1) == 0)
  {
    return 0;
  }

  v7 = a1[4];
  v6 = a1[5];
  v9 = a1[6];
  v8 = a1[7];
  v11 = a2[4];
  v10 = a2[5];
  v13 = a2[6];
  v12 = a2[7];
  if (!v7)
  {
    if (!v11)
    {
      return 1;
    }

    goto LABEL_19;
  }

  if (!v11)
  {
LABEL_19:
    sub_1003E93EC(v11, v10, v13, v12);
    sub_1003E93EC(v7, v6, v9, v8);
    sub_1003E9490(v7, v6, v9, v8);
    v20 = v11;
    v21 = v10;
    v22 = v13;
    v23 = v12;
LABEL_26:
    sub_1003E9490(v20, v21, v22, v23);
    return 0;
  }

  v14 = sub_100397D28(v7, v11);
  v15 = v13;
  v16 = v9;
  if ((v14 & 1) == 0)
  {
    goto LABEL_24;
  }

  if (v9)
  {
    if (v13)
    {
      v17 = sub_10020FB40(v9, v13);
      v15 = v13;
      v16 = v9;
      if (v17)
      {
        sub_1003E93EC(v11, v10, v13, v12);
        sub_1003E93EC(v7, v6, v9, v8);

        sub_10039FBE4(v8, v12);
        v19 = v18;

        if (v19)
        {
          goto LABEL_29;
        }

        goto LABEL_25;
      }
    }

    else
    {
      v15 = 0;
      v16 = v9;
    }

LABEL_24:
    sub_1003E93EC(v11, v10, v15, v12);
    sub_1003E93EC(v7, v6, v16, v8);

LABEL_25:
    sub_10018A510(v10, v13, v12);
    v20 = v7;
    v21 = v6;
    v22 = v9;
    v23 = v8;
    goto LABEL_26;
  }

  if (v13)
  {
    v16 = 0;
    v15 = v13;
    goto LABEL_24;
  }

  sub_1003E93EC(v11, v10, 0, v12);
  sub_1003E93EC(v7, v6, 0, v8);

LABEL_29:
  sub_10018A510(v10, v13, v12);
  sub_1003E9490(v7, v6, v9, v8);
  return 1;
}

uint64_t sub_1003E93EC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {

    return sub_1003E9444(a2, a3);
  }

  return result;
}

uint64_t sub_1003E9444(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1003E9490(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {

    return sub_10018A510(a2, a3, a4);
  }

  return result;
}

unint64_t sub_1003E9524()
{
  result = qword_1005DC5B8;
  if (!qword_1005DC5B8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ExtendedSearchOptions, &type metadata for ExtendedSearchOptions, v0, v1);
    atomic_store(result, &qword_1005DC5B8);
  }

  return result;
}

uint64_t sub_1003E9578(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1003E9590(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1003E95A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1003E95F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1003E9688(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005DC5C0, &unk_100502CA0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ExtendedSearchResponse.init(correlator:kind:returnData:)@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  v10 = a1[3];
  v11 = *(a1 + 32);
  sub_1003E97D0(*a1, v8);

  sub_100073984(v7, v8, v9);

  *a4 = v7;
  *(a4 + 8) = v8;
  *(a4 + 16) = v9;
  *(a4 + 24) = v10;
  *(a4 + 32) = v11;
  *(a4 + 33) = a2 & 1;
  *(a4 + 40) = a3;
  return result;
}

double sub_1003E97D0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void ExtendedSearchResponse.hash(into:)(uint64_t a1)
{
  v70 = sub_10000C9C0(&qword_1005DC5C8, &qword_10050B730);
  v64 = *(v70 - 8);
  __chkstk_darwin(v70);
  v63 = &v57 - v2;
  v62 = sub_10000C9C0(&qword_1005CDA68, &qword_1004CF7D0);
  v74 = *(v62 - 8);
  __chkstk_darwin(v62);
  v58 = &v57 - v3;
  v4 = sub_10000C9C0(&qword_1005CDA78, &unk_1004CF7E0);
  __chkstk_darwin(v4 - 8);
  v61 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v60 = &v57 - v7;
  v69 = type metadata accessor for ParameterValue(0);
  __chkstk_darwin(v69);
  v68 = (&v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v67 = sub_10000C9C0(&qword_1005DBC78, &unk_100502CB0);
  __chkstk_darwin(v67);
  v72 = &v57 - v9;
  v10 = sub_10000C9C0(&qword_1005DC5D0, &qword_10050B9D0);
  __chkstk_darwin(v10 - 8);
  v66 = &v57 - v11;
  v12 = sub_10000C9C0(&qword_1005DC5D8, &unk_100502CC0);
  __chkstk_darwin(v12 - 8);
  v65 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v71 = &v57 - v15;
  v73 = type metadata accessor for SearchReturnData(0);
  v16 = *(v73 - 8);
  __chkstk_darwin(v73);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v57 - v20;
  v22 = *(v1 + 8);
  v75 = &v57 - v20;
  if (!v22)
  {
    goto LABEL_7;
  }

  v23 = *(v1 + 32);
  v25 = *(v1 + 16);
  v24 = *(v1 + 24);
  sub_1004A6EC4(1u);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  if (v25)
  {
    sub_1004A6EC4(1u);
    sub_1004A6EB4(v24 | (v24 << 32));
  }

  else
  {
    sub_1004A6EC4(0);
  }

  v21 = v75;
  if ((v23 & 1) == 0)
  {
    sub_1004A6EC4(1u);
    sub_1004A6EE4(HIDWORD(v24));
  }

  else
  {
LABEL_7:
    sub_1004A6EC4(0);
  }

  sub_1004A6EB4(*(v1 + 33));
  v26 = *(v1 + 40);
  v27 = *(v26 + 16);
  sub_1004A6EB4(v27);
  if (v27)
  {
    v28 = 0;
    v77 = v26 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v76 = *(v16 + 72);
    v59 = (v74 + 48);
    v64 += 6;
    v29 = &unk_100502CC0;
    v74 = v27;
    do
    {
      sub_1003EBF6C(v77 + v76 * v28, v21, type metadata accessor for SearchReturnData);
      sub_1003EBF6C(v21, v18, type metadata accessor for SearchReturnData);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 2)
      {
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload != 1)
          {
            v42 = v29;
            v43 = v71;
            sub_100025FDC(v18, v71, &qword_1005DC5D8, v42);
            sub_1004A6EB4(2uLL);
            v44 = v65;
            sub_10000E268(v43, v65, &qword_1005DC5D8, v42);
            if ((*v64)(v44, 1, v70) == 1)
            {
              sub_1004A6EB4(1uLL);
              v45 = v43;
            }

            else
            {
              v51 = v63;
              sub_100025FDC(v44, v63, &qword_1005DC5C8, &qword_10050B730);
              sub_1004A6EB4(0);
              sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
              sub_1000956A0();
              sub_1004A5564();
              v52 = v51;
              v27 = v74;
              sub_100025F40(v52, &qword_1005DC5C8, &qword_10050B730);
              v45 = v71;
            }

            sub_100025F40(v45, &qword_1005DC5D8, v42);
            v29 = v42;
            v21 = v75;
            goto LABEL_12;
          }

          v33 = *v18;
          v34 = 1;
        }

        else
        {
          v33 = *v18;
          v34 = 0;
        }

        sub_1004A6EB4(v34);
        sub_1004A6EE4(v33);
      }

      else
      {
        if (EnumCaseMultiPayload <= 4)
        {
          v32 = *v18;
          if (EnumCaseMultiPayload == 3)
          {
            sub_1004A6EB4(3uLL);
            sub_1004A6EB4(v32);
          }

          else
          {
            sub_1004A6EB4(4uLL);
            sub_1004A6EF4(v32);
          }

          goto LABEL_12;
        }

        if (EnumCaseMultiPayload != 5)
        {
          v46 = v72;
          sub_100025FDC(v18, v72, &qword_1005DBC78, &unk_100502CB0);
          sub_1004A6EB4(6uLL);
          _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
          v47 = v68;
          sub_1003EBF6C(v46 + *(v67 + 52), v68, type metadata accessor for ParameterValue);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v48 = *v47;
            sub_1004A6EB4(1uLL);
            sub_1004A6EB4(*(v48 + 16));
            v49 = *(v48 + 16);
            if (v49)
            {
              v50 = v48 + 40;
              do
              {

                _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

                v50 += 16;
                --v49;
              }

              while (v49);

              v27 = v74;
              goto LABEL_37;
            }

            v27 = v74;
          }

          else
          {
            v53 = v60;
            sub_100025FDC(v47, v60, &qword_1005CDA78, &unk_1004CF7E0);
            sub_1004A6EB4(0);
            v54 = v61;
            sub_10000E268(v53, v61, &qword_1005CDA78, &unk_1004CF7E0);
            if ((*v59)(v54, 1, v62) == 1)
            {
              sub_1004A6EB4(1uLL);
            }

            else
            {
              v55 = v58;
              sub_100025FDC(v54, v58, &qword_1005CDA68, &qword_1004CF7D0);
              sub_1004A6EB4(0);
              sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
              sub_1000956A0();
              sub_1004A5564();
              v56 = v55;
              v27 = v74;
              sub_100025F40(v56, &qword_1005CDA68, &qword_1004CF7D0);
            }

            sub_100025F40(v53, &qword_1005CDA78, &unk_1004CF7E0);
LABEL_37:
            v21 = v75;
          }

          sub_100025F40(v72, &qword_1005DBC78, &unk_100502CB0);
          goto LABEL_12;
        }

        v36 = *v18;
        v35 = *(v18 + 1);
        v37 = v18[8];
        v38 = sub_10000C9C0(&qword_1005DC5E0, &qword_100502CD0);
        v39 = v66;
        sub_100025FDC(&v18[*(v38 + 48)], v66, &qword_1005DC5D0, &qword_10050B9D0);
        sub_1004A6EB4(5uLL);
        v40 = v37;
        v27 = v74;
        sub_1004A6EB4(v40);
        sub_1004A6EE4(v36);
        sub_1004A6EE4(v35);
        sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
        sub_1000956A0();
        sub_1004A5564();
        v41 = v39;
        v21 = v75;
        sub_100025F40(v41, &qword_1005DC5D0, &qword_10050B9D0);
      }

LABEL_12:
      ++v28;
      sub_1003EBFD4(v21, v30);
    }

    while (v28 != v27);
  }
}

Swift::Int ExtendedSearchResponse.hashValue.getter()
{
  sub_1004A6E94();
  ExtendedSearchResponse.hash(into:)(v1);
  return sub_1004A6F14();
}

Swift::Int sub_1003EA23C(uint64_t a1)
{
  sub_1004A6E94();
  ExtendedSearchResponse.hash(into:)(v2);
  return sub_1004A6F14();
}

uint64_t sub_1003EA278(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return _s12NIOIMAPCore222ExtendedSearchResponseV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v8) & 1;
}

uint64_t ExtendedSearchResponse.matchedUIDs.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10000C9C0(&qword_1005DC5D0, &qword_10050B9D0);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  if (*(v1 + 33) == 1)
  {
    sub_1003EA44C(v5);
    v6 = sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
    (*(*(v6 - 8) + 32))(a1, v5, v6);
    v7 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
    return (*(*(v7 - 8) + 56))(a1, 0, 1, v7);
  }

  else
  {
    v9 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
    v10 = *(*(v9 - 8) + 56);

    return v10(a1, 1, 1, v9);
  }
}

uint64_t sub_1003EA44C@<X0>(uint64_t a1@<X8>)
{
  v72 = a1;
  v78 = type metadata accessor for SearchReturnData(0);
  v74 = *(v78 - 8);
  __chkstk_darwin(v78);
  v70 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v64 - v5;
  __chkstk_darwin(v7);
  v9 = &v64 - v8;
  v76 = sub_10000C9C0(&qword_1005DC5C8, &qword_10050B730);
  v10 = *(v76 - 8);
  __chkstk_darwin(v76);
  v65 = &v64 - v11;
  v12 = sub_10000C9C0(&qword_1005DC600, &unk_100502E30);
  __chkstk_darwin(v12 - 8);
  v68 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v69 = &v64 - v15;
  __chkstk_darwin(v16);
  v77 = &v64 - v17;
  __chkstk_darwin(v18);
  v71 = &v64 - v19;
  __chkstk_darwin(v20);
  v66 = &v64 - v21;
  __chkstk_darwin(v22);
  v67 = &v64 - v23;
  __chkstk_darwin(v24);
  v26 = &v64 - v25;
  __chkstk_darwin(v27);
  v75 = &v64 - v28;
  v79 = *(v2 + 40);
  v29 = *(v79 + 16);
  v73 = v79;

  if (v29)
  {
    v30 = (v10 + 48);
    v31 = v73 + ((*(v74 + 80) + 32) & ~*(v74 + 80));
    v32 = *(v74 + 72);
    for (i = v29; i; --i)
    {
      sub_1003EBF6C(v31, v9, type metadata accessor for SearchReturnData);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        if ((*v30)(v9, 1, v76) != 1)
        {
          v53 = v65;
          sub_100025FDC(v9, v65, &qword_1005DC5C8, &qword_10050B730);
          sub_100025FDC(v53, v26, &qword_1005DC5D0, &qword_10050B9D0);
          v54 = sub_10000C9C0(&qword_1005DC5D0, &qword_10050B9D0);
          v55 = *(v54 - 8);
          v56 = *(v55 + 56);
          v56(v26, 0, 1, v54);
          sub_100025F40(v26, &qword_1005DC600, &unk_100502E30);
          v57 = v67;
          sub_1003EAF58(v31, v67);
          v58 = v66;
          sub_10000E268(v57, v66, &qword_1005DC600, &unk_100502E30);
          result = (*(v55 + 48))(v58, 1, v54);
          if (result != 1)
          {
            v60 = v75;
            sub_100025FDC(v58, v75, &qword_1005DC5D0, &qword_10050B9D0);
            sub_100025F40(v57, &qword_1005DC600, &unk_100502E30);
            v56(v60, 0, 1, v54);
            sub_100025F40(&v79, &qword_1005DC5E8, &qword_100502CD8);
            return sub_100025FDC(v60, v72, &qword_1005DC5D0, &qword_10050B9D0);
          }

LABEL_28:
          __break(1u);
          return result;
        }

        sub_100025F40(v9, &qword_1005DC5D8, &unk_100502CC0);
      }

      else
      {
        sub_1003EBFD4(v9, v35);
      }

      v34 = sub_10000C9C0(&qword_1005DC5D0, &qword_10050B9D0);
      (*(*(v34 - 8) + 56))(v26, 1, 1, v34);
      sub_100025F40(v26, &qword_1005DC600, &unk_100502E30);
      v31 += v32;
    }
  }

  v36 = sub_10000C9C0(&qword_1005DC5D0, &qword_10050B9D0);
  v76 = *(v36 - 8);
  v37 = *(v76 + 56);
  v37(v75, 1, 1, v36);
  if (v29)
  {
    v38 = v73 + ((*(v74 + 80) + 32) & ~*(v74 + 80));
    v39 = *(v74 + 72);
    while (1)
    {
      sub_1003EBF6C(v38, v6, type metadata accessor for SearchReturnData);
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        break;
      }

      sub_1003EBFD4(v6, v40);
      v41 = v77;
      v37(v77, 1, 1, v36);
      sub_100025F40(v41, &qword_1005DC600, &unk_100502E30);
      v38 += v39;
      if (!--v29)
      {
        goto LABEL_12;
      }
    }

    v45 = sub_10000C9C0(&qword_1005DC5E0, &qword_100502CD0);
    v46 = v77;
    sub_100025FDC(&v6[*(v45 + 48)], v77, &qword_1005DC5D0, &qword_10050B9D0);
    v37(v46, 0, 1, v36);
    sub_100025F40(v46, &qword_1005DC600, &unk_100502E30);
    v47 = v70;
    sub_1003EBF6C(v38, v70, type metadata accessor for SearchReturnData);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v50 = v68;
    if (EnumCaseMultiPayload == 5)
    {
      v51 = v69;
      sub_100025FDC(v47 + *(v45 + 48), v69, &qword_1005DC5D0, &qword_10050B9D0);
      v52 = 0;
      v42 = v71;
    }

    else
    {
      sub_1003EBFD4(v47, v49);
      v52 = 1;
      v42 = v71;
      v51 = v69;
    }

    v61 = v76;
    v37(v51, v52, 1, v36);
    sub_10000E268(v51, v50, &qword_1005DC600, &unk_100502E30);
    v43 = *(v61 + 48);
    result = v43(v50, 1, v36);
    if (result == 1)
    {
      __break(1u);
      goto LABEL_28;
    }

    sub_100025FDC(v50, v42, &qword_1005DC5D0, &qword_10050B9D0);
    sub_100025F40(v51, &qword_1005DC600, &unk_100502E30);
    v37(v42, 0, 1, v36);
    sub_100025F40(&v79, &qword_1005DC5E8, &qword_100502CD8);
    v44 = v43(v42, 1, v36);
  }

  else
  {
LABEL_12:
    v42 = v71;
    v37(v71, 1, 1, v36);
    sub_100025F40(&v79, &qword_1005DC5E8, &qword_100502CD8);
    v43 = *(v76 + 48);
    v44 = v43(v42, 1, v36);
  }

  if (v44 == 1)
  {
    sub_100016D2C();
    sub_1004A7114();
    v62 = v43(v42, 1, v36);
    v63 = v75;
    if (v62 != 1)
    {
      sub_100025F40(v42, &qword_1005DC600, &unk_100502E30);
    }
  }

  else
  {
    sub_100025FDC(v42, v72, &qword_1005DC5D0, &qword_10050B9D0);
    v63 = v75;
  }

  result = v43(v63, 1, v36);
  if (result != 1)
  {
    return sub_100025F40(v63, &qword_1005DC600, &unk_100502E30);
  }

  return result;
}

uint64_t ExtendedSearchResponse.matchedSequenceNumbers.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10000C9C0(&qword_1005DC5D0, &qword_10050B9D0);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  if (*(v1 + 33))
  {
    v6 = sub_10000C9C0(&qword_1005CDA58, &qword_1004CF7C0);
    v7 = *(*(v6 - 8) + 56);

    return v7(a1, 1, 1, v6);
  }

  else
  {
    sub_1003EA44C(v5);
    v9 = sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
    (*(*(v9 - 8) + 32))(a1, v5, v9);
    v10 = sub_10000C9C0(&qword_1005CDA58, &qword_1004CF7C0);
    return (*(*(v10 - 8) + 56))(a1, 0, 1, v10);
  }
}

uint64_t sub_1003EAF58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for SearchReturnData(0);
  __chkstk_darwin(v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C9C0(&qword_1005DC5C8, &qword_10050B730);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - v10;
  sub_1003EBF6C(a1, v7, type metadata accessor for SearchReturnData);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_100025F40(v7, &qword_1005DC5D8, &unk_100502CC0);
      v13 = 1;
    }

    else
    {
      sub_100025FDC(v7, v11, &qword_1005DC5C8, &qword_10050B730);
      sub_100025FDC(v11, a2, &qword_1005DC5D0, &qword_10050B9D0);
      v13 = 0;
    }
  }

  else
  {
    sub_1003EBFD4(v7, v12);
    v13 = 1;
  }

  v14 = sub_10000C9C0(&qword_1005DC5D0, &qword_10050B9D0);
  return (*(*(v14 - 8) + 56))(a2, v13, 1, v14);
}

uint64_t ExtendedSearchResponse.count.getter(__n128 a1)
{
  v2 = type metadata accessor for SearchReturnData(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v8 = &v17 - v7;
  v18 = *(v1 + 40);
  v9 = *(v18 + 16);

  if (!v9)
  {
LABEL_5:
    v14 = 0;
LABEL_8:
    sub_100025F40(&v18, &qword_1005DC5E8, &qword_100502CD8);
    return v14;
  }

  v11 = v10 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v12 = *(v3 + 72);
  while (1)
  {
    sub_1003EBF6C(v11, v8, type metadata accessor for SearchReturnData);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      break;
    }

    sub_1003EBFD4(v8, v13);
    v11 += v12;
    if (!--v9)
    {
      goto LABEL_5;
    }
  }

  sub_1003EBF6C(v11, v5, type metadata accessor for SearchReturnData);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v14 = *v5;
    goto LABEL_8;
  }

  result = sub_1003EBFD4(v5, v15);
  __break(1u);
  return result;
}

unint64_t ExtendedSearchResponse.minUID.getter(__n128 a1)
{
  v2 = type metadata accessor for SearchReturnData(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v18[-v7];
  if (*(v1 + 33) != 1)
  {
    goto LABEL_7;
  }

  v19 = *(v1 + 40);
  v9 = *(v19 + 16);

  if (!v9)
  {
LABEL_6:
    sub_100025F40(&v19, &qword_1005DC5E8, &qword_100502CD8);
LABEL_7:
    v14 = 0;
    v15 = 1;
LABEL_8:
    v18[4] = v15;
    return v14 | (v15 << 32);
  }

  v11 = v10 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v12 = *(v3 + 72);
  while (1)
  {
    sub_1003EBF6C(v11, v8, type metadata accessor for SearchReturnData);
    if (!swift_getEnumCaseMultiPayload())
    {
      break;
    }

    sub_1003EBFD4(v8, v13);
    v11 += v12;
    if (!--v9)
    {
      goto LABEL_6;
    }
  }

  sub_1003EBF6C(v11, v5, type metadata accessor for SearchReturnData);
  if (!swift_getEnumCaseMultiPayload())
  {
    v14 = *v5;
    sub_100025F40(&v19, &qword_1005DC5E8, &qword_100502CD8);
    v15 = 0;
    goto LABEL_8;
  }

  result = sub_1003EBFD4(v5, v17);
  __break(1u);
  return result;
}

unint64_t ExtendedSearchResponse.minSequenceNumber.getter(__n128 a1)
{
  v2 = type metadata accessor for SearchReturnData(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v18[-v7];
  if (*(v1 + 33))
  {
    goto LABEL_7;
  }

  v19 = *(v1 + 40);
  v9 = *(v19 + 16);

  if (!v9)
  {
LABEL_6:
    sub_100025F40(&v19, &qword_1005DC5E8, &qword_100502CD8);
LABEL_7:
    v14 = 0;
    v15 = 1;
LABEL_8:
    v18[4] = v15;
    return v14 | (v15 << 32);
  }

  v11 = v10 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v12 = *(v3 + 72);
  while (1)
  {
    sub_1003EBF6C(v11, v8, type metadata accessor for SearchReturnData);
    if (!swift_getEnumCaseMultiPayload())
    {
      break;
    }

    sub_1003EBFD4(v8, v13);
    v11 += v12;
    if (!--v9)
    {
      goto LABEL_6;
    }
  }

  sub_1003EBF6C(v11, v5, type metadata accessor for SearchReturnData);
  if (!swift_getEnumCaseMultiPayload())
  {
    v14 = *v5;
    sub_100025F40(&v19, &qword_1005DC5E8, &qword_100502CD8);
    v15 = 0;
    goto LABEL_8;
  }

  result = sub_1003EBFD4(v5, v17);
  __break(1u);
  return result;
}

unint64_t ExtendedSearchResponse.maxUID.getter(__n128 a1)
{
  v2 = type metadata accessor for SearchReturnData(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v18[-v7];
  if (*(v1 + 33) != 1)
  {
    goto LABEL_7;
  }

  v19 = *(v1 + 40);
  v9 = *(v19 + 16);

  if (!v9)
  {
LABEL_6:
    sub_100025F40(&v19, &qword_1005DC5E8, &qword_100502CD8);
LABEL_7:
    v14 = 0;
    v15 = 1;
LABEL_8:
    v18[4] = v15;
    return v14 | (v15 << 32);
  }

  v11 = v10 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v12 = *(v3 + 72);
  while (1)
  {
    sub_1003EBF6C(v11, v8, type metadata accessor for SearchReturnData);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      break;
    }

    sub_1003EBFD4(v8, v13);
    v11 += v12;
    if (!--v9)
    {
      goto LABEL_6;
    }
  }

  sub_1003EBF6C(v11, v5, type metadata accessor for SearchReturnData);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = *v5;
    sub_100025F40(&v19, &qword_1005DC5E8, &qword_100502CD8);
    v15 = 0;
    goto LABEL_8;
  }

  result = sub_1003EBFD4(v5, v17);
  __break(1u);
  return result;
}

unint64_t ExtendedSearchResponse.maxSequenceNumber.getter(__n128 a1)
{
  v2 = type metadata accessor for SearchReturnData(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v18[-v7];
  if (*(v1 + 33))
  {
    goto LABEL_7;
  }

  v19 = *(v1 + 40);
  v9 = *(v19 + 16);

  if (!v9)
  {
LABEL_6:
    sub_100025F40(&v19, &qword_1005DC5E8, &qword_100502CD8);
LABEL_7:
    v14 = 0;
    v15 = 1;
LABEL_8:
    v18[4] = v15;
    return v14 | (v15 << 32);
  }

  v11 = v10 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v12 = *(v3 + 72);
  while (1)
  {
    sub_1003EBF6C(v11, v8, type metadata accessor for SearchReturnData);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      break;
    }

    sub_1003EBFD4(v8, v13);
    v11 += v12;
    if (!--v9)
    {
      goto LABEL_6;
    }
  }

  sub_1003EBF6C(v11, v5, type metadata accessor for SearchReturnData);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = *v5;
    sub_100025F40(&v19, &qword_1005DC5E8, &qword_100502CD8);
    v15 = 0;
    goto LABEL_8;
  }

  result = sub_1003EBFD4(v5, v17);
  __break(1u);
  return result;
}

uint64_t sub_1003EBA78(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 20);
  result = sub_1002F178C(0x48435241455345uLL, 0xE700000000000000, v1 + 8, v4);
  if (v6)
  {
    v7._countAndFlagsBits = 0x48435241455345;
    v7._object = 0xE700000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
  }

  v8 = result;
  v9 = *(v1 + 20);
  v10 = __CFADD__(v9, result);
  v11 = v9 + result;
  if (v10)
  {
    goto LABEL_35;
  }

  *(v1 + 20) = v11;
  v12 = *(a1 + 8);
  if (v12)
  {
    v13 = *(a1 + 32);
    v15 = *(a1 + 16);
    v14 = *(a1 + 24);
    v42[0] = *a1;
    v42[1] = v12;
    v42[2] = v15;
    v42[3] = v14;
    v43 = v13 & 1;
    sub_100488324(v42);
    v16 = v8 + result;
    if (__OFADD__(v8, result))
    {
      __break(1u);
LABEL_24:
      v30 = 0;
      v41 = a1;
      goto LABEL_25;
    }
  }

  else
  {
    v16 = result;
  }

  if (*(a1 + 33) == 1)
  {
    v17 = *(v1 + 20);
    result = sub_1002F178C(0x44495520uLL, 0xE400000000000000, v1 + 8, v17);
    if (v18)
    {
      v19._countAndFlagsBits = 1145656608;
      v19._object = 0xE400000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v19, v17);
    }

    v20 = *(v1 + 20);
    v10 = __CFADD__(v20, result);
    v21 = v20 + result;
    if (v10)
    {
      goto LABEL_43;
    }

    *(v1 + 20) = v21;
  }

  else
  {
    result = 0;
  }

  v22 = __OFADD__(v16, result);
  v16 += result;
  if (v22)
  {
    goto LABEL_36;
  }

  a1 = *(a1 + 40);
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_24;
  }

  v23 = *(v1 + 20);
  result = sub_1002F178C(0x20uLL, 0xE100000000000000, v1 + 8, v23);
  if (v24)
  {
    v25._countAndFlagsBits = 32;
    v25._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v25, v23);
  }

  v26 = *(v1 + 20);
  v27 = (v26 + result);
  if (__CFADD__(v26, result))
  {
    goto LABEL_39;
  }

  *(v1 + 20) = v27;
  v22 = __OFADD__(v16, result);
  v16 += result;
  if (v22)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    return result;
  }

  v41 = a1;
  result = sub_1002F178C(0, 0xE000000000000000, v1 + 8, v27);
  if (v28)
  {
    v29._countAndFlagsBits = 0;
    v29._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v29, v27);
  }

  v30 = result;
  v31 = *(v2 + 20);
  v10 = __CFADD__(v31, result);
  v32 = v31 + result;
  if (v10)
  {
    goto LABEL_41;
  }

  *(v2 + 20) = v32;
LABEL_25:
  __chkstk_darwin(result);
  v40[2] = sub_1003EBD6C;
  v40[3] = 0;
  v40[4] = v2;
  v40[5] = &v41;
  v40[6] = 32;
  v40[7] = 0xE100000000000000;
  result = sub_100452C04(0, sub_1003EC118, v40, a1);
  v33 = v30 + result;
  if (__OFADD__(v30, result))
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (!v4)
  {
    v39 = v30 + result;
    goto LABEL_31;
  }

  v34 = *(v2 + 20);
  result = sub_1002F178C(0, 0xE000000000000000, v2 + 8, v34);
  if (v35)
  {
    v36._countAndFlagsBits = 0;
    v36._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v36, v34);
  }

  v37 = *(v2 + 20);
  v10 = __CFADD__(v37, result);
  v38 = v37 + result;
  if (v10)
  {
    goto LABEL_42;
  }

  *(v2 + 20) = v38;
  v39 = v33 + result;
  if (__OFADD__(v33, result))
  {
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

LABEL_31:
  result = v16 + v39;
  if (__OFADD__(v16, v39))
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  return result;
}

uint64_t _s12NIOIMAPCore222ExtendedSearchResponseV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *a2;
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  v13 = *(a2 + 32);
  if (!v4)
  {
    if (!v10)
    {
      goto LABEL_7;
    }

LABEL_6:
    v14 = *(a1 + 16);
    sub_1003E97D0(*a2, *(a2 + 8));
    sub_1003E97D0(v5, v4);
    sub_100073984(v5, v4, v14);
    sub_100073984(v9, v10, v11);
    return 0;
  }

  if (!v10)
  {
    goto LABEL_6;
  }

  v22[0] = *a2;
  v22[1] = v10;
  v22[2] = v11;
  v22[3] = v12;
  v23 = v13 & 1;
  v20[0] = v5;
  v20[1] = v4;
  v20[2] = v6;
  v20[3] = v7;
  v21 = v8 & 1;
  v18 = v6;
  v19 = _s12NIOIMAPCore216SearchCorrelatorV23__derived_struct_equalsySbAC_ACtFZ_0(v20, v22);
  sub_1003E97D0(v9, v10);
  sub_1003E97D0(v5, v4);

  sub_100073984(v5, v4, v18);
  if (!v19)
  {
    return 0;
  }

LABEL_7:
  if (*(a1 + 33) != *(a2 + 33))
  {
    return 0;
  }

  v16 = *(a1 + 40);
  v17 = *(a2 + 40);

  return sub_100397CD4(v16, v17);
}

uint64_t sub_1003EBF6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003EBFD4(uint64_t a1, __n128 a2)
{
  v3 = type metadata accessor for SearchReturnData(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1003EC034()
{
  result = qword_1005DC5F0;
  if (!qword_1005DC5F0)
  {
    result = swift_getWitnessTable("I@\b", &type metadata for ExtendedSearchResponse, v0, v1);
    atomic_store(result, &qword_1005DC5F0);
  }

  return result;
}

unint64_t sub_1003EC08C()
{
  result = qword_1005DC5F8;
  if (!qword_1005DC5F8)
  {
    result = swift_getWitnessTable("!@\b", &type metadata for ExtendedSearchResponse.Kind, v0, v1);
    atomic_store(result, &qword_1005DC5F8);
  }

  return result;
}

uint64_t sub_1003EC0E0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1003EC118@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1004923EC(*a1, a2, *(v3 + 16), *(v3 + 24), *(v3 + 32), **(v3 + 40), *(v3 + 48), *(v3 + 56));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t SearchModificationSequence.extensions.getter(uint64_t a1)
{

  return a1;
}

BOOL static ExtendedSearchScopeOptions.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = 0;
  if (sub_10020FB40(a2, a5))
  {
    sub_10039FBE4(a3, a6);
    if (v8)
    {
      return 1;
    }
  }

  return result;
}

Swift::Int ExtendedSearchScopeOptions.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1004A6E94();
  sub_1003A1878(v6, a2, a3);
  return sub_1004A6F14();
}

Swift::Int sub_1003EC248()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_1004A6E94();
  sub_1003A1878(v4, v1, v2);
  return sub_1004A6F14();
}

Swift::Int sub_1003EC29C(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  sub_1004A6E94();
  sub_1003A1878(v5, v2, v3);
  return sub_1004A6F14();
}

BOOL sub_1003EC2E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  result = 0;
  if (sub_10020FB40(*(a1 + 8), *(a2 + 8)))
  {
    sub_10039FBE4(v2, v3);
    if (v4)
    {
      return 1;
    }
  }

  return result;
}

unint64_t sub_1003EC338()
{
  result = qword_1005DC608;
  if (!qword_1005DC608)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ExtendedSearchScopeOptions, &type metadata for ExtendedSearchScopeOptions, v0, v1);
    atomic_store(result, &qword_1005DC608);
  }

  return result;
}

void sub_1003EC39C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v178 = a4;
  v9 = sub_10000C9C0(&qword_1005D7F50, &unk_100502FF0);
  v177 = *(v9 - 8);
  __chkstk_darwin(v9 - 8);
  v11 = &v153 - v10;
  v165 = type metadata accessor for ParameterValue(0);
  v184 = *(v165 - 8);
  __chkstk_darwin(v165);
  v163 = &v153 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = sub_10000C9C0(&qword_1005DBCA8, &unk_100504BF0);
  __chkstk_darwin(v176);
  v187 = (&v153 - v13);
  v175 = sub_10000C9C0(&qword_1005D8488, &unk_100503000);
  __chkstk_darwin(v175);
  v174 = (&v153 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v173 = (&v153 - v16);
  v172 = sub_10000C9C0(&qword_1005DBCA0, &qword_1004FE5C0);
  __chkstk_darwin(v172);
  v171 = &v153 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v170 = (&v153 - v19);
  __chkstk_darwin(v20);
  v186 = (&v153 - v21);
  __chkstk_darwin(v22);
  v169 = (&v153 - v23);
  __chkstk_darwin(v24);
  v168 = &v153 - v25;
  v167 = sub_10000C9C0(&qword_1005DC308, &qword_100503010);
  __chkstk_darwin(v167);
  v166 = (&v153 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v27);
  v185 = (&v153 - v28);
  v29 = *(v4 + 20);
  v30 = 0;
  v31 = sub_1002F178C(0x28204E49uLL, 0xE400000000000000, v4 + 8, v29);
  if (v32)
  {
    v33._countAndFlagsBits = 673205833;
    v33._object = 0xE400000000000000;
    v31 = ByteBuffer._setStringSlowpath(_:at:)(v33, v29);
  }

  v34 = v31;
  v35 = *(v4 + 20);
  v36 = (v35 + v31);
  if (__CFADD__(v35, v31))
  {
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  *(v4 + 20) = v36;
  v188 = a1;
  v37 = *(a1 + 16);
  v164 = v11;
  if (v37)
  {
    v31 = sub_1002F178C(0, 0xE000000000000000, v4 + 8, v36);
    if (v38)
    {
      v39._countAndFlagsBits = 0;
      v39._object = 0xE000000000000000;
      v31 = ByteBuffer._setStringSlowpath(_:at:)(v39, v36);
    }

    v40 = v31;
    v41 = *(v5 + 20);
    v42 = __CFADD__(v41, v31);
    v43 = v41 + v31;
    if (v42)
    {
      goto LABEL_87;
    }

    *(v5 + 20) = v43;
  }

  else
  {
    v40 = 0;
  }

  __chkstk_darwin(v31);
  *(&v153 - 6) = sub_1003ED324;
  *(&v153 - 5) = 0;
  *(&v153 - 4) = v5;
  *(&v153 - 3) = &v188;
  *(&v153 - 2) = 32;
  *(&v153 - 1) = 0xE100000000000000;
  v44 = sub_100452B28(0, sub_1003ED4D8, (&v153 - 8), a1);
  v45 = v40 + v44;
  if (__OFADD__(v40, v44))
  {
    goto LABEL_82;
  }

  if (v37)
  {
    v46 = *(v5 + 20);
    v47 = sub_1002F178C(0, 0xE000000000000000, v5 + 8, v46);
    if (v49)
    {
      v50._countAndFlagsBits = 0;
      v50._object = 0xE000000000000000;
      v47 = ByteBuffer._setStringSlowpath(_:at:)(v50, v46);
    }

    v51 = *(v5 + 20);
    v42 = __CFADD__(v51, v47);
    v52 = v51 + v47;
    if (v42)
    {
      goto LABEL_88;
    }

    *(v5 + 20) = v52;
    v53 = v45 + v47;
    if (__OFADD__(v45, v47))
    {
      __break(1u);
LABEL_28:
      v66 = 0;
      goto LABEL_65;
    }
  }

  else
  {
    v53 = v40 + v44;
  }

  v48 = v34 + v53;
  if (__OFADD__(v34, v53))
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  if (!a3)
  {
    goto LABEL_28;
  }

  v154 = v34 + v53;
  v54 = *(v5 + 20);
  v55 = sub_1002F178C(0x2820uLL, 0xE200000000000000, v5 + 8, v54);
  if (v56)
  {
    v57._countAndFlagsBits = 10272;
    v57._object = 0xE200000000000000;
    v55 = ByteBuffer._setStringSlowpath(_:at:)(v57, v54);
  }

  v58 = *(v5 + 20);
  v59 = (v58 + v55);
  if (__CFADD__(v58, v55))
  {
    goto LABEL_89;
  }

  *(v5 + 20) = v59;
  v60 = *(v178 + 16);
  v155 = v55;
  if (v60)
  {
    v61 = sub_1002F178C(0, 0xE000000000000000, v5 + 8, v59);
    if (v62)
    {
      v63._countAndFlagsBits = 0;
      v63._object = 0xE000000000000000;
      v61 = ByteBuffer._setStringSlowpath(_:at:)(v63, v59);
    }

    v64 = *(v5 + 20);
    v42 = __CFADD__(v64, v61);
    v65 = v64 + v61;
    if (v42)
    {
      goto LABEL_94;
    }

    v156 = v61;
    *(v5 + 20) = v65;
  }

  else
  {
    v156 = 0;
  }

  v157 = a2;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  v67 = 0;
  if (v60)
  {
    v68 = 0;
    v160 = (v184 + 48);
    v159 = v60 - 1;
    v69 = (a3 + 40);
    v161 = a3;
    v158 = v60;
    v162 = v5;
    while (v68 < *(a3 + 16))
    {
      v182 = v67;
      v70 = v175;
      v71 = *(v175 + 48);
      v180 = v69;
      v72 = *(v69 - 1);
      v73 = *v69;
      v183 = v73;
      v184 = v30;
      v74 = v173;
      *v173 = v72;
      v74[1] = v73;
      sub_10000E268(v178 + ((*(v177 + 80) + 32) & ~*(v177 + 80)) + *(v177 + 72) * v68, v74 + v71, &qword_1005D7F50, &unk_100502FF0);
      v75 = v74;
      v76 = v174;
      sub_100025FDC(v75, v174, &qword_1005D8488, &unk_100503000);
      v77 = *(v70 + 48);
      v78 = v172;
      v79 = *(v172 + 48);
      v80 = v76[1];
      v81 = v169;
      *v169 = *v76;
      v81[1] = v80;
      sub_100025FDC(v76 + v77, v81 + v79, &qword_1005D7F50, &unk_100502FF0);
      v82 = v81;
      v83 = v168;
      sub_100025FDC(v82, v168, &qword_1005DBCA0, &qword_1004FE5C0);
      v84 = v167;
      v85 = *(v167 + 48);
      v86 = v185;
      v179 = v68;
      *v185 = v68;
      sub_100025FDC(v83, v86 + v85, &qword_1005DBCA0, &qword_1004FE5C0);
      v87 = v166;
      sub_10000E268(v86, v166, &qword_1005DC308, &qword_100503010);
      v181 = *v87;
      v88 = (v87 + *(v84 + 48));
      v89 = *(v78 + 48);
      v90 = *v88;
      v91 = v88[1];
      v92 = v170;
      sub_100025FDC(v88 + v89, v170 + v89, &qword_1005D7F50, &unk_100502FF0);
      v93 = *(v78 + 48);
      v94 = v186;
      *v186 = v90;
      v94[1] = v91;
      sub_100025FDC(v92 + v89, v94 + v93, &qword_1005D7F50, &unk_100502FF0);
      sub_10000E268(v94, v92, &qword_1005DBCA0, &qword_1004FE5C0);
      v95 = *(v78 + 48);
      v96 = v171;
      sub_10000E268(v94, v171, &qword_1005DBCA0, &qword_1004FE5C0);
      v97 = *(v78 + 48);
      v99 = *v92;
      v98 = v92[1];
      v5 = v162;
      v100 = v187;
      *v187 = *v92;
      v100[1] = v98;
      v101 = *(v176 + 52);
      sub_100025FDC(v96 + v97, v100 + v101, &qword_1005D7F50, &unk_100502FF0);

      sub_100025F40(v92 + v95, &qword_1005D7F50, &unk_100502FF0);
      v102 = *(v5 + 20);
      v30 = v184;
      v103 = sub_1002F178C(v99, v98, v5 + 8, v102);
      if (v104)
      {
        v105._countAndFlagsBits = v99;
        v105._object = v98;
        v103 = ByteBuffer._setStringSlowpath(_:at:)(v105, v102);
      }

      v106 = v103;
      v107 = *(v5 + 20);
      v108 = (v107 + v103);
      if (__CFADD__(v107, v103))
      {
        goto LABEL_74;
      }

      *(v5 + 20) = v108;
      v109 = v187 + v101;
      v110 = v164;
      sub_10000E268(v109, v164, &qword_1005D7F50, &unk_100502FF0);
      if ((*v160)(v110, 1, v165) == 1)
      {
        sub_100025F40(v110, &qword_1005D7F50, &unk_100502FF0);
        v111 = 0;
        a3 = v161;
      }

      else
      {
        sub_1002FC114(v110, v163);
        v112 = sub_1002F178C(0x20uLL, 0xE100000000000000, v5 + 8, v108);
        v113 = v5;
        if (v114)
        {
          v115._countAndFlagsBits = 32;
          v115._object = 0xE100000000000000;
          v112 = ByteBuffer._setStringSlowpath(_:at:)(v115, v108);
        }

        v116 = v112;
        v117 = *(v113 + 20);
        v42 = __CFADD__(v117, v112);
        v118 = v117 + v112;
        a3 = v161;
        if (v42)
        {
          goto LABEL_78;
        }

        *(v113 + 20) = v118;
        v119 = v163;
        v120 = sub_100463ACC(v163);
        sub_1002FC1DC(v119);
        v111 = v116 + v120;
        if (__OFADD__(v116, v120))
        {
          goto LABEL_79;
        }

        v5 = v113;
      }

      v121 = v106 + v111;
      if (__OFADD__(v106, v111))
      {
        goto LABEL_75;
      }

      sub_100025F40(v187, &qword_1005DBCA8, &unk_100504BF0);
      v122 = v182 + v121;
      if (__OFADD__(v182, v121))
      {
        goto LABEL_76;
      }

      if (v181 >= v159)
      {
        sub_100025F40(v186, &qword_1005DBCA0, &qword_1004FE5C0);
        v127 = 0;
      }

      else
      {
        v123 = *(v5 + 20);
        v124 = sub_1002F178C(0x20uLL, 0xE100000000000000, v5 + 8, v123);
        if (v125)
        {
          v126._countAndFlagsBits = 32;
          v126._object = 0xE100000000000000;
          v124 = ByteBuffer._setStringSlowpath(_:at:)(v126, v123);
        }

        v127 = v124;
        sub_100025F40(v186, &qword_1005DBCA0, &qword_1004FE5C0);
        v128 = *(v5 + 20);
        v42 = __CFADD__(v128, v127);
        v129 = v128 + v127;
        if (v42)
        {
          goto LABEL_80;
        }

        *(v5 + 20) = v129;
      }

      v67 = v122 + v127;
      if (__OFADD__(v122, v127))
      {
        goto LABEL_77;
      }

      v68 = v179 + 1;
      sub_100025F40(v185, &qword_1005DC308, &qword_100503010);
      v69 = v180 + 2;
      v60 = v158;
      if (v158 == v68)
      {
        goto LABEL_53;
      }
    }

    goto LABEL_73;
  }

LABEL_53:

  v130 = __OFADD__(v156, v67);
  v131 = v156 + v67;
  if (v130)
  {
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  if (v60)
  {
    v132 = *(v5 + 20);
    v133 = sub_1002F178C(0, 0xE000000000000000, v5 + 8, v132);
    if (v134)
    {
      v135._countAndFlagsBits = 0;
      v135._object = 0xE000000000000000;
      v133 = ByteBuffer._setStringSlowpath(_:at:)(v135, v132);
    }

    v136 = *(v5 + 20);
    v42 = __CFADD__(v136, v133);
    v137 = v136 + v133;
    if (v42)
    {
      goto LABEL_95;
    }

    *(v5 + 20) = v137;
    v138 = v131 + v133;
    if (__OFADD__(v131, v133))
    {
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }
  }

  else
  {
    v138 = v131;
  }

  v139 = v155 + v138;
  if (__OFADD__(v155, v138))
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v140 = *(v5 + 20);
  v141 = sub_1002F178C(0x29uLL, 0xE100000000000000, v5 + 8, v140);
  if (v142)
  {
    v143._countAndFlagsBits = 41;
    v143._object = 0xE100000000000000;
    v141 = ByteBuffer._setStringSlowpath(_:at:)(v143, v140);
  }

  v144 = *(v5 + 20);
  v42 = __CFADD__(v144, v141);
  v145 = v144 + v141;
  if (v42)
  {
    goto LABEL_92;
  }

  *(v5 + 20) = v145;
  v66 = v139 + v141;
  if (__OFADD__(v139, v141))
  {
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
    return;
  }

  v48 = v154;
LABEL_65:
  v146 = v48 + v66;
  if (__OFADD__(v48, v66))
  {
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v147 = *(v5 + 20);
  v148 = sub_1002F178C(0x29uLL, 0xE100000000000000, v5 + 8, v147);
  if (v149)
  {
    v150._countAndFlagsBits = 41;
    v150._object = 0xE100000000000000;
    v148 = ByteBuffer._setStringSlowpath(_:at:)(v150, v147);
  }

  v151 = *(v5 + 20);
  v42 = __CFADD__(v151, v148);
  v152 = v151 + v148;
  if (v42)
  {
    goto LABEL_85;
  }

  *(v5 + 20) = v152;
  if (__OFADD__(v146, v148))
  {
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }
}

uint64_t ExtendedSearchSourceOptions.init(sourceMailbox:scopeOptions:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(result + 16))
  {
    sub_10018A510(a2, a3, a4);

    return 0;
  }

  return result;
}

void ExtendedSearchSourceOptions.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1003AEFBC(a1, a2);
  if (a4)
  {
    sub_1004A6EC4(1u);

    sub_1003A1878(a1, a4, a5);
  }

  else
  {
    sub_1004A6EC4(0);
  }
}

Swift::Int ExtendedSearchSourceOptions.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1004A6E94();
  sub_1003AEFBC(v8, a1);
  if (a3)
  {
    sub_1004A6EC4(1u);
    sub_1003A1878(v8, a3, a4);
  }

  else
  {
    sub_1004A6EC4(0);
  }

  return sub_1004A6F14();
}

Swift::Int sub_1003ED180()
{
  v1 = *v0;
  v2 = v0[2];
  v3 = v0[3];
  sub_1004A6E94();
  sub_1003AEFBC(v5, v1);
  if (v2)
  {
    sub_1004A6EC4(1u);
    sub_1003A1878(v5, v2, v3);
  }

  else
  {
    sub_1004A6EC4(0);
  }

  return sub_1004A6F14();
}

void sub_1003ED200(uint64_t a1)
{
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  sub_1003AEFBC(a1, *v1);
  if (v4)
  {
    sub_1004A6EC4(1u);

    ExtendedSearchScopeOptions.hash(into:)(a1, v3, v4, v5);
  }

  else
  {
    sub_1004A6EC4(0);
  }
}

Swift::Int sub_1003ED28C(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[2];
  v4 = v1[3];
  sub_1004A6E94();
  sub_1003AEFBC(v6, v2);
  if (v3)
  {
    sub_1004A6EC4(1u);
    sub_1003A1878(v6, v3, v4);
  }

  else
  {
    sub_1004A6EC4(0);
  }

  return sub_1004A6F14();
}

uint64_t sub_1003ED354@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t *, uint64_t, double)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, unint64_t a7@<X6>, void *a8@<X7>, uint64_t *a9@<X8>)
{
  result = sub_1004922C0(*a1, *a2, *(a2 + 8), *(a2 + 16), a3, a4, a5, *a6, a7, a8);
  if (!v9)
  {
    *a9 = result;
  }

  return result;
}

uint64_t _s12NIOIMAPCore227ExtendedSearchSourceOptionsV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (sub_100397D28(a1, a5))
  {
    if (a3)
    {
      if (a7)
      {
        if (sub_10020FB40(a3, a7))
        {

          sub_10039FBE4(a4, a8);
          v13 = v12;

          if (v13)
          {
            return 1;
          }
        }
      }
    }

    else if (!a7)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_1003ED474()
{
  result = qword_1005DC610;
  if (!qword_1005DC610)
  {
    result = swift_getWitnessTable(")>\b", &type metadata for ExtendedSearchSourceOptions, v0, v1);
    atomic_store(result, &qword_1005DC610);
  }

  return result;
}

uint64_t sub_1003ED4FC(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v53 = 1uLL;
  memset(v54, 0, 20);
  BYTE4(v54[1]) = -64;
  v4 = &v53;
  v52 = &v53;
  v5 = sub_100446E7C(sub_1003EF734, v51, a1);
  if (v5)
  {
    v53 = 2uLL;
    memset(v54, 0, 20);
    BYTE4(v54[1]) = -64;
    __chkstk_darwin(v5);
    v49 = &v53;
    result = sub_100446E7C(sub_1003EF7D4, v48, v3);
    if (result)
    {
      v7 = *(v3 + 16);
      if (v7 != 5)
      {
        if (v7 != 4)
        {
          if (v7 != 3)
          {
            goto LABEL_26;
          }

          v4 = v51;
          v53 = 5uLL;
          memset(v54, 0, 20);
          BYTE4(v54[1]) = -64;
          __chkstk_darwin(result);
          v49 = &v53;
          if ((sub_100446E7C(sub_1003EF7D4, v48, v3) & 1) == 0)
          {
            goto LABEL_26;
          }

          v3 = *(v2 + 20);
          result = sub_1002F178C(0x54534146uLL, 0xE400000000000000, v2 + 8, v3);
          if (v8)
          {
            v4 = (v2 + 8);
            v9._countAndFlagsBits = 1414742342;
            v9._object = 0xE400000000000000;
            result = ByteBuffer._setStringSlowpath(_:at:)(v9, v3);
          }

          v10 = *(v2 + 20);
          v11 = __CFADD__(v10, result);
          LODWORD(v7) = v10 + result;
          if (!v11)
          {
            goto LABEL_25;
          }

          __break(1u);
        }

        v53 = 5uLL;
        memset(v54, 0, 20);
        BYTE4(v54[1]) = -64;
        __chkstk_darwin(result);
        v49 = v4;
        v12 = sub_100446E7C(sub_1003EF7D4, v48, v3);
        if ((v12 & 1) == 0)
        {
          goto LABEL_26;
        }

        v53 = 0u;
        memset(v54, 0, 20);
        BYTE4(v54[1]) = -64;
        __chkstk_darwin(v12);
        v49 = v4;
        if ((sub_100446E7C(sub_1003EF7D4, v48, v3) & 1) == 0)
        {
          goto LABEL_26;
        }

        v3 = *(v2 + 20);
        result = sub_1002F178C(0x4C4C41uLL, 0xE300000000000000, v2 + 8, v3);
        if (v13)
        {
          v4 = (v2 + 8);
          v14._countAndFlagsBits = 5000257;
          v14._object = 0xE300000000000000;
          result = ByteBuffer._setStringSlowpath(_:at:)(v14, v3);
        }

        v15 = *(v2 + 20);
        v11 = __CFADD__(v15, result);
        v7 = (v15 + result);
        if (!v11)
        {
          goto LABEL_25;
        }

        __break(1u);
      }

      v53 = v7;
      memset(v54, 0, 20);
      BYTE4(v54[1]) = -64;
      __chkstk_darwin(result);
      v49 = v4;
      v16 = sub_100446E7C(sub_1003EF7D4, v48, v3);
      if (v16)
      {
        v53 = 0u;
        memset(v54, 0, 20);
        BYTE4(v54[1]) = -64;
        __chkstk_darwin(v16);
        v49 = v4;
        v17 = sub_100446E7C(sub_1003EF7D4, v48, v3);
        if (v17)
        {
          v53 = 0u;
          memset(v54, 0, 21);
          __chkstk_darwin(v17);
          v49 = &v53;
          if (sub_100446E7C(sub_1003EF7D4, v48, v3))
          {
            v18 = *(v2 + 20);
            result = sub_1002F178C(0x4C4C5546uLL, 0xE400000000000000, v2 + 8, v18);
            if (v19)
            {
              v20._countAndFlagsBits = 1280070982;
              v20._object = 0xE400000000000000;
              result = ByteBuffer._setStringSlowpath(_:at:)(v20, v18);
            }

            v21 = *(v2 + 20);
            v11 = __CFADD__(v21, result);
            LODWORD(v7) = v21 + result;
            if (!v11)
            {
LABEL_25:
              *(v2 + 20) = v7;
              return result;
            }

            goto LABEL_56;
          }
        }
      }
    }
  }

LABEL_26:
  *&v53 = v3;
  v22 = *(v3 + 16);
  if (v22)
  {
    v23 = *(v2 + 20);
    result = sub_1002F178C(0, 0xE000000000000000, v2 + 8, v23);
    if (v24)
    {
      v25._countAndFlagsBits = 0;
      v25._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v25, v23);
    }

    v26 = result;
    v27 = *(v2 + 20);
    v11 = __CFADD__(v27, result);
    v28 = v27 + result;
    if (v11)
    {
      goto LABEL_54;
    }

    *(v2 + 20) = v28;
  }

  else
  {
    v26 = 0;
    v28 = *(v2 + 20);
  }

  v29 = v28;
  result = sub_1002F178C(0x28uLL, 0xE100000000000000, v2 + 8, v28);
  if (v30)
  {
    v31._countAndFlagsBits = 40;
    v31._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v31, v29);
  }

  v32 = *(v2 + 20);
  v11 = __CFADD__(v32, result);
  v33 = v32 + result;
  if (v11)
  {
    goto LABEL_49;
  }

  *(v2 + 20) = v33;
  v34 = v26 + result;
  if (__OFADD__(v26, result))
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  __chkstk_darwin(result);
  v47[2] = sub_1003EEB04;
  v47[3] = 0;
  v48[0] = v2;
  v48[1] = &v53;
  v49 = 32;
  v50 = 0xE100000000000000;
  result = sub_100452428(0, sub_1003EF750, v47, v3);
  v35 = v34 + result;
  if (__OFADD__(v34, result))
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v36 = *(v2 + 20);
  result = sub_1002F178C(0x29uLL, 0xE100000000000000, v2 + 8, v36);
  if (v37)
  {
    v38._countAndFlagsBits = 41;
    v38._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v38, v36);
  }

  v39 = *(v2 + 20);
  v40 = (v39 + result);
  if (__CFADD__(v39, result))
  {
    goto LABEL_52;
  }

  *(v2 + 20) = v40;
  v41 = __OFADD__(v35, result);
  v42 = v35 + result;
  if (v41)
  {
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    return result;
  }

  if (!v22)
  {
    return v42;
  }

  result = sub_1002F178C(0, 0xE000000000000000, v2 + 8, v40);
  if (v43)
  {
    v44._countAndFlagsBits = 0;
    v44._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v44, v40);
  }

  v45 = *(v2 + 20);
  v11 = __CFADD__(v45, result);
  v46 = v45 + result;
  if (v11)
  {
    goto LABEL_55;
  }

  *(v2 + 20) = v46;
  v41 = __OFADD__(v42, result);
  result += v42;
  if (v41)
  {
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  return result;
}

void FetchAttribute.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v6 = *(v2 + 1);
  v5 = *(v2 + 2);
  *&v21[5] = *(v2 + 29);
  *v21 = *(v2 + 3);
  v7 = (*(v2 + 1) << 8) | ((*(v2 + 5) | (v2[7] << 16)) << 40) | v4;
  v8 = *&v21[8] | (v21[12] << 32);
  v9 = v21[12] >> 5;
  if (v9 <= 2)
  {
    if (v9)
    {
      if (v9 != 1)
      {
        sub_1004A6EB4(0xBuLL);
        sub_1004A6EF4(v7);
        return;
      }

      sub_1004A6EB4(8uLL);
      sub_1004A6EC4(v4 & 1);
      SectionSpecifier.hash(into:)(a1, v6, v5, v21[0]);
      if ((v21[12] & 0x1F) != 1)
      {
        sub_1004A6EC4(1u);
        sub_1004A6EE4(*&v21[4]);
        v13 = HIDWORD(*&v21[4]);
        goto LABEL_33;
      }

LABEL_12:
      sub_1004A6EC4(0);
      return;
    }

    v14 = 7;
    goto LABEL_16;
  }

  if (v21[12] >> 5 > 4u)
  {
    if (v9 != 5)
    {
      v18 = v5 | v6 | *v21;
      if (v8 != 0xC000000000 || v18 | v7)
      {
        if (v8 == 0xC000000000 && (v7 == 1 ? (v19 = v18 == 0) : (v19 = 0), v19))
        {
          sub_1004A6EB4(1uLL);
        }

        else if (v8 == 0xC000000000 && (v7 == 2 ? (v20 = v18 == 0) : (v20 = 0), v20))
        {
          sub_1004A6EB4(2uLL);
        }

        else if (v8 == 0xC000000000 && v7 == 3 && !v18)
        {
          sub_1004A6EB4(3uLL);
        }

        else if (v8 == 0xC000000000 && v7 == 4 && !v18)
        {
          sub_1004A6EB4(4uLL);
        }

        else if (v8 == 0xC000000000 && v7 == 5 && !v18)
        {
          sub_1004A6EB4(5uLL);
        }

        else if (v8 == 0xC000000000 && v7 == 6 && !v18)
        {
          sub_1004A6EB4(6uLL);
        }

        else if (v8 == 0xC000000000 && v7 == 7 && !v18)
        {
          sub_1004A6EB4(9uLL);
        }

        else if (v8 == 0xC000000000 && v7 == 8 && !v18)
        {
          sub_1004A6EB4(0xAuLL);
        }

        else if (v8 == 0xC000000000 && v7 == 9 && !v18)
        {
          sub_1004A6EB4(0xEuLL);
        }

        else if (v8 == 0xC000000000 && v7 == 10 && !v18)
        {
          sub_1004A6EB4(0xFuLL);
        }

        else if (v8 == 0xC000000000 && v7 == 11 && !v18)
        {
          sub_1004A6EB4(0x10uLL);
        }

        else if (v8 == 0xC000000000 && v7 == 12 && !v18)
        {
          sub_1004A6EB4(0x12uLL);
        }

        else
        {
          sub_1004A6EB4(0x13uLL);
        }
      }

      else
      {
        sub_1004A6EB4(0);
      }

      return;
    }

    v14 = 17;
LABEL_16:
    sub_1004A6EB4(v14);
    sub_1004A6EC4(v4 & 1);
    return;
  }

  if (v9 == 3)
  {
    sub_1004A6EB4(0xCuLL);
    sub_1004A6EC4(v4 & 1);
    v10 = *(v6 + 16);
    sub_1004A6EB4(v10);
    if (v10)
    {
      v11 = (v6 + 32);
      do
      {
        v12 = *v11++;
        sub_1004A6EB4(v12);
        --v10;
      }

      while (v10);
    }

    if ((v21[0] & 1) == 0)
    {
      sub_1004A6EC4(1u);
      sub_1004A6EE4(v5);
      v13 = HIDWORD(v5);
LABEL_33:
      sub_1004A6EE4(v13);
      return;
    }

    goto LABEL_12;
  }

  sub_1004A6EB4(0xDuLL);
  v15 = *(v7 + 16);
  sub_1004A6EB4(v15);
  if (v15)
  {
    v16 = (v7 + 32);
    do
    {
      v17 = *v16++;
      sub_1004A6EB4(v17);
      --v15;
    }

    while (v15);
  }
}

Swift::Int FetchAttribute.hashValue.getter()
{
  sub_1004A6E94();
  FetchAttribute.hash(into:)(v1);
  return sub_1004A6F14();
}

Swift::Int sub_1003EDEE0(uint64_t a1)
{
  sub_1004A6E94();
  FetchAttribute.hash(into:)(v2);
  return sub_1004A6F14();
}

unint64_t sub_1003EDF1C(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 13) = *(a1 + 29);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 13) = *(a2 + 29);
  return _s12NIOIMAPCore214FetchAttributeO21__derived_enum_equalsySbAC_ACtFZ_0(&v5, &v7) & 1;
}

unint64_t FetchAttribute.debugDescription.getter()
{
  v1 = v0;
  if (qword_1005DB9D0 != -1)
  {
    swift_once();
  }

  v2 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
  v3 = dword_1005DE398;
  v4 = word_1005DE39C;
  v5 = byte_1005DE39E;

  LOBYTE(v10) = 0;
  BYTE5(v10) = 0;
  *(&v10 + 1) = 65537;
  *(&v10 + 1) = v2;
  *&v11 = qword_1005DE390;
  DWORD2(v11) = v3;
  WORD6(v11) = v4;
  BYTE14(v11) = v5;
  *&v12 = sub_1003DBA20(_swiftEmptyArrayStorage);
  *(&v12 + 1) = v6;
  v13 = v7;
  result = sub_1003EE13C(v1);
  if (DWORD1(v11) < v11)
  {
    __break(1u);
  }

  else if (v3 - (v5 | (v4 << 8)) >= DWORD1(v11))
  {
    v14[0] = v2;
    v14[1] = v11;
    v15 = v3;
    v16 = WORD6(v11);
    v17 = v5;
    v18 = v11;
    v19 = DWORD1(v11);
    *&v20[0] = 0;
    *(&v20[0] + 1) = 0xE000000000000000;

    sub_1004A5874(DWORD1(v11) - v11);
    sub_1003BB2E4(v14, v20);
    sub_1003A52D0(v14);
    v9 = *&v20[0];
    v20[0] = v10;
    v20[1] = v11;
    v20[2] = v12;
    v21 = v13;
    sub_1003E5C94(v20);
    return v9;
  }

  __break(1u);
  return result;
}

unint64_t sub_1003EE13C(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  *&v97[5] = *(a1 + 29);
  *v97 = *(a1 + 3);
  v5 = *&v97[8] | (v97[12] << 32);
  v6 = v97[12] >> 5;
  if (v6 > 2)
  {
    v7 = v2 | ((*(a1 + 1) | ((*(a1 + 5) | (a1[7] << 16)) << 32)) << 8);
    if (v97[12] >> 5 <= 4u)
    {
      if (v6 == 3)
      {

        return sub_1003EEC4C(v2 & 1, v3, v4, v97[0]);
      }

      v34 = *(v1 + 20);
      v35 = sub_1002F178C(0x532E5952414E4942uLL, 0xEB00000000455A49, v1 + 8, v34);
      if (v36)
      {
        v37._countAndFlagsBits = 0x532E5952414E4942;
        v37._object = 0xEB00000000455A49;
        v35 = ByteBuffer._setStringSlowpath(_:at:)(v37, v34);
      }

      v38 = v35;
      v39 = *(v1 + 20);
      v16 = __CFADD__(v39, v35);
      v5 = (v39 + v35);
      if (!v16)
      {
        *(v1 + 20) = v5;
        v40 = sub_100492F74(v7);
        v41 = __OFADD__(v38, v40);
        result = v38 + v40;
        if (!v41)
        {
          return result;
        }

        __break(1u);
        goto LABEL_45;
      }

LABEL_141:
      __break(1u);
      goto LABEL_142;
    }

    if (v6 != 5)
    {
LABEL_45:
      v31 = v4 | v3 | *v97;
      v32 = 0xC000000000;
      if (v5 == 0xC000000000 && !(v31 | v7))
      {
        v7 = *(v1 + 20);
        result = sub_1002F178C(0x45504F4C45564E45uLL, 0xE800000000000000, v1 + 8, v7);
        if (v42)
        {
          v43._countAndFlagsBits = 0x45504F4C45564E45;
          v43._object = 0xE800000000000000;
          result = ByteBuffer._setStringSlowpath(_:at:)(v43, v7);
        }

        v44 = *(v1 + 20);
        v16 = __CFADD__(v44, result);
        v5 = (v44 + result);
        if (!v16)
        {
          goto LABEL_131;
        }

        __break(1u);
      }

      if (v5 == v32 && v7 == 1 && v31 == 0)
      {
        v7 = *(v1 + 20);
        result = sub_1002F178C(0x5347414C46uLL, 0xE500000000000000, v1 + 8, v7);
        if (v46)
        {
          v47._countAndFlagsBits = 0x5347414C46;
          v47._object = 0xE500000000000000;
          result = ByteBuffer._setStringSlowpath(_:at:)(v47, v7);
        }

        v48 = *(v1 + 20);
        v16 = __CFADD__(v48, result);
        v5 = (v48 + result);
        if (!v16)
        {
          goto LABEL_131;
        }

        __break(1u);
      }

      if (v5 == v32 && v7 == 2 && v31 == 0)
      {
        v7 = 0xEC00000045544144;
        v50 = *(v1 + 20);
        result = sub_1002F178C(0x4C414E5245544E49uLL, 0xEC00000045544144, v1 + 8, v50);
        if (v51)
        {
          v52._countAndFlagsBits = 0x4C414E5245544E49;
          v52._object = 0xEC00000045544144;
          result = ByteBuffer._setStringSlowpath(_:at:)(v52, v50);
        }

        v53 = *(v1 + 20);
        v16 = __CFADD__(v53, result);
        v5 = (v53 + result);
        if (!v16)
        {
          goto LABEL_131;
        }

        __break(1u);
      }

      if (v5 == v32 && v7 == 3 && v31 == 0)
      {
        v7 = *(v1 + 20);
        result = sub_1002F178C(0x323238434652uLL, 0xE600000000000000, v1 + 8, v7);
        if (v55)
        {
          v56._countAndFlagsBits = 0x323238434652;
          v56._object = 0xE600000000000000;
          result = ByteBuffer._setStringSlowpath(_:at:)(v56, v7);
        }

        v57 = *(v1 + 20);
        v16 = __CFADD__(v57, result);
        v5 = (v57 + result);
        if (!v16)
        {
          goto LABEL_131;
        }

        __break(1u);
      }

      if (v5 == v32 && v7 == 4 && !v31)
      {
        v7 = 0xED00005245444145;
        v58 = *(v1 + 20);
        result = sub_1002F178C(0x482E323238434652uLL, 0xED00005245444145, v1 + 8, v58);
        if (v59)
        {
          v60._countAndFlagsBits = 0x482E323238434652;
          v60._object = 0xED00005245444145;
          result = ByteBuffer._setStringSlowpath(_:at:)(v60, v58);
        }

        v61 = *(v1 + 20);
        v16 = __CFADD__(v61, result);
        v5 = (v61 + result);
        if (!v16)
        {
          goto LABEL_131;
        }

        __break(1u);
      }

      if (v5 == v32 && v7 == 5 && !v31)
      {
        v7 = 0xEB00000000455A49;
        v62 = *(v1 + 20);
        result = sub_1002F178C(0x532E323238434652uLL, 0xEB00000000455A49, v1 + 8, v62);
        if (v63)
        {
          v64._countAndFlagsBits = 0x532E323238434652;
          v64._object = 0xEB00000000455A49;
          result = ByteBuffer._setStringSlowpath(_:at:)(v64, v62);
        }

        v65 = *(v1 + 20);
        v16 = __CFADD__(v65, result);
        v5 = (v65 + result);
        if (!v16)
        {
          goto LABEL_131;
        }

        __break(1u);
      }

      if (v5 == v32 && v7 == 6 && !v31)
      {
        v7 = 0xEB00000000545845;
        v66 = *(v1 + 20);
        result = sub_1002F178C(0x542E323238434652uLL, 0xEB00000000545845, v1 + 8, v66);
        if (v67)
        {
          v68._countAndFlagsBits = 0x542E323238434652;
          v68._object = 0xEB00000000545845;
          result = ByteBuffer._setStringSlowpath(_:at:)(v68, v66);
        }

        v69 = *(v1 + 20);
        v16 = __CFADD__(v69, result);
        v5 = (v69 + result);
        if (!v16)
        {
          goto LABEL_131;
        }

        __break(1u);
      }

      if (v5 == v32 && v7 == 7 && !v31)
      {
        v7 = *(v1 + 20);
        result = sub_1002F178C(0x444955uLL, 0xE300000000000000, v1 + 8, v7);
        if (v70)
        {
          v71._countAndFlagsBits = 4475221;
          v71._object = 0xE300000000000000;
          result = ByteBuffer._setStringSlowpath(_:at:)(v71, v7);
        }

        v72 = *(v1 + 20);
        v16 = __CFADD__(v72, result);
        v5 = (v72 + result);
        if (!v16)
        {
          goto LABEL_131;
        }

        __break(1u);
      }

      if (v5 == v32 && v7 == 8 && !v31)
      {
        v7 = *(v1 + 20);
        result = sub_1002F178C(0x514553444F4DuLL, 0xE600000000000000, v1 + 8, v7);
        if (v73)
        {
          v74._countAndFlagsBits = 0x514553444F4DLL;
          v74._object = 0xE600000000000000;
          result = ByteBuffer._setStringSlowpath(_:at:)(v74, v7);
        }

        v75 = *(v1 + 20);
        v16 = __CFADD__(v75, result);
        v5 = (v75 + result);
        if (!v16)
        {
          goto LABEL_131;
        }

        __break(1u);
      }

      if (v5 == v32 && v7 == 9 && !v31)
      {
        v76 = *(v1 + 20);
        result = sub_1002F178C(0x47534D2D4D472D58uLL, 0xEA00000000004449, v1 + 8, v76);
        if (v77)
        {
          v78._countAndFlagsBits = 0x47534D2D4D472D58;
          v78._object = 0xEA00000000004449;
          result = ByteBuffer._setStringSlowpath(_:at:)(v78, v76);
        }

        v79 = *(v1 + 20);
        v16 = __CFADD__(v79, result);
        LODWORD(v5) = v79 + result;
        if (!v16)
        {
LABEL_131:
          *(v1 + 20) = v5;
          return result;
        }

        goto LABEL_163;
      }

      if (v5 == v32 && v7 == 10 && !v31)
      {
        v80 = *(v1 + 20);
        result = sub_1002F178C(0x5248542D4D472D58uLL, 0xEA00000000004449, v1 + 8, v80);
        if (v81)
        {
          v82._countAndFlagsBits = 0x5248542D4D472D58;
          v82._object = 0xEA00000000004449;
          result = ByteBuffer._setStringSlowpath(_:at:)(v82, v80);
        }

        v83 = *(v1 + 20);
        v16 = __CFADD__(v83, result);
        v84 = v83 + result;
        if (!v16)
        {
          *(v1 + 20) = v84;
          return result;
        }

        goto LABEL_164;
      }

LABEL_142:
      v24 = v1;
      if (v5 == v32 && v7 == 11 && !v31)
      {
        v7 = 0xEB00000000534C45;
        v85 = *(v1 + 20);
        result = sub_1002F178C(0x42414C2D4D472D58uLL, 0xEB00000000534C45, v1 + 8, v85);
        if (v86)
        {
          v87._countAndFlagsBits = 0x42414C2D4D472D58;
          v87._object = 0xEB00000000534C45;
          result = ByteBuffer._setStringSlowpath(_:at:)(v87, v85);
        }

        v88 = *(v1 + 20);
        v16 = __CFADD__(v88, result);
        v5 = (v88 + result);
        if (!v16)
        {
          goto LABEL_38;
        }

        __break(1u);
      }

      if (v5 == v32 && v7 == 12 && !v31)
      {
        v89 = *(v1 + 20);
        result = sub_1002F178C(0x44494C49414D45uLL, 0xE700000000000000, v1 + 8, v89);
        if (v90)
        {
          v91._countAndFlagsBits = 0x44494C49414D45;
          v91._object = 0xE700000000000000;
          result = ByteBuffer._setStringSlowpath(_:at:)(v91, v89);
        }

        v92 = *(v1 + 20);
        v16 = __CFADD__(v92, result);
        LODWORD(v5) = v92 + result;
        if (!v16)
        {
          goto LABEL_38;
        }

        __break(1u);
      }

      v93 = *(v1 + 20);
      result = sub_1002F178C(0x4449444145524854uLL, 0xE800000000000000, v1 + 8, v93);
      if (v94)
      {
        v95._countAndFlagsBits = 0x4449444145524854;
        v95._object = 0xE800000000000000;
        result = ByteBuffer._setStringSlowpath(_:at:)(v95, v93);
      }

      v96 = *(v1 + 20);
      v16 = __CFADD__(v96, result);
      LODWORD(v5) = v96 + result;
      if (v16)
      {
        __break(1u);
LABEL_163:
        __break(1u);
LABEL_164:
        __break(1u);
        return result;
      }

LABEL_38:
      *(v24 + 20) = v5;
      return result;
    }

    if (v2)
    {
      v9 = 0x2057454956455250;
    }

    else
    {
      v9 = 0x57454956455250;
    }

    if (v2)
    {
      v10 = 0xEE0029595A414C28;
    }

    else
    {
      v10 = 0xE700000000000000;
    }

    v11 = *(v1 + 20);
    v12 = sub_1002F178C(v9, v10, v1 + 8, v11);
    if (v13)
    {
      v14._countAndFlagsBits = v9;
      v14._object = v10;
      v12 = ByteBuffer._setStringSlowpath(_:at:)(v14, v11);
    }

    v15 = v12;

    LODWORD(v5) = *(v1 + 20);
    result = v15;
    v16 = __CFADD__(v5, v15);
    LODWORD(v5) = v5 + v15;
    if (!v16)
    {
      goto LABEL_131;
    }

    __break(1u);
    goto LABEL_24;
  }

  if (!v6)
  {
LABEL_24:
    if (v2)
    {
      v17 = 0x5552545359444F42;
    }

    else
    {
      v17 = 1497648962;
    }

    if (v2)
    {
      v18 = 0xED00004552555443;
    }

    else
    {
      v18 = 0xE400000000000000;
    }

    v19 = *(v1 + 20);
    v20 = sub_1002F178C(v17, v18, v1 + 8, v19);
    if (v21)
    {
      v22._countAndFlagsBits = v17;
      v22._object = v18;
      v20 = ByteBuffer._setStringSlowpath(_:at:)(v22, v19);
    }

    v23 = v20;

    LODWORD(v5) = *(v1 + 20);
    result = v23;
    v16 = __CFADD__(v5, v23);
    LODWORD(v5) = v5 + v23;
    if (!v16)
    {
      goto LABEL_131;
    }

    __break(1u);
    goto LABEL_35;
  }

  if (v6 != 1)
  {
LABEL_35:
    v24 = v1;
    v25 = sub_1004A6CE4();
    v7 = v26;
    v27 = *(v1 + 20);
    v28 = sub_1002F178C(v25, v26, v24 + 8, *(v24 + 20));
    if (v29)
    {
      v30._countAndFlagsBits = v25;
      v30._object = v7;
      v28 = ByteBuffer._setStringSlowpath(_:at:)(v30, v27);
      v24 = v1;
    }

    v1 = v28;

    v33 = *(v24 + 20);
    result = v1;
    v16 = __CFADD__(v33, v1);
    v5 = (v33 + v1);
    if (!v16)
    {
      goto LABEL_38;
    }

    __break(1u);
    goto LABEL_141;
  }

  return sub_1003EEB28(v2 & 1, v3, v4, v97[0], *&v97[4], BYTE4(v5) & 0x1F);
}