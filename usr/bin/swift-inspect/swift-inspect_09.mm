unint64_t sub_1000854F8(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
LABEL_3:
      sub_1000021C0(&qword_1000B59C8, &qword_100096550);
      result = static _SetStorage.allocate(capacity:)();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (!v2)
  {
LABEL_4:
    v5 = *(v4 + 16);
    if (!v5)
    {
      return v3;
    }

    goto LABEL_9;
  }

LABEL_8:
  result = _CocoaArrayWrapper.endIndex.getter();
  v5 = result;
  if (!result)
  {
    return v3;
  }

LABEL_9:
  v6 = v3 + 56;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v8 = __OFADD__(v7++, 1);
      if (v8)
      {
        break;
      }

      v9 = result;
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v9);
      result = Hasher._finalize()();
      v10 = ~(-1 << v3[32]);
      v11 = result & v10;
      v12 = (result & v10) >> 6;
      v13 = *&v6[8 * v12];
      v14 = 1 << (result & v10);
      v15 = *(v3 + 6);
      if ((v14 & v13) != 0)
      {
        while (*(v15 + 8 * v11) != v9)
        {
          v11 = (v11 + 1) & v10;
          v12 = v11 >> 6;
          v13 = *&v6[8 * (v11 >> 6)];
          v14 = 1 << v11;
          if (((1 << v11) & v13) == 0)
          {
            goto LABEL_16;
          }
        }

        swift_unknownObjectRelease();
        if (v7 == v5)
        {
          return v3;
        }
      }

      else
      {
LABEL_16:
        *&v6[8 * v12] = v14 | v13;
        *(v15 + 8 * v11) = v9;
        v16 = *(v3 + 2);
        v8 = __OFADD__(v16, 1);
        v17 = v16 + 1;
        if (v8)
        {
          goto LABEL_28;
        }

        *(v3 + 2) = v17;
        if (v7 == v5)
        {
          return v3;
        }
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
    v18 = 0;
    v19 = v1 + 32;
    v20 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v18 != v20)
    {
      v21 = *(v19 + 8 * v18);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v21);
      result = Hasher._finalize()();
      v22 = ~(-1 << v3[32]);
      v23 = result & v22;
      v24 = (result & v22) >> 6;
      v25 = *&v6[8 * v24];
      v26 = 1 << (result & v22);
      v27 = *(v3 + 6);
      if ((v26 & v25) != 0)
      {
        while (*(v27 + 8 * v23) != v21)
        {
          v23 = (v23 + 1) & v22;
          v24 = v23 >> 6;
          v25 = *&v6[8 * (v23 >> 6)];
          v26 = 1 << v23;
          if (((1 << v23) & v25) == 0)
          {
            goto LABEL_25;
          }
        }
      }

      else
      {
LABEL_25:
        *&v6[8 * v24] = v26 | v25;
        *(v27 + 8 * v23) = v21;
        v28 = *(v3 + 2);
        v8 = __OFADD__(v28, 1);
        v29 = v28 + 1;
        if (v8)
        {
          goto LABEL_30;
        }

        *(v3 + 2) = v29;
      }

      if (++v18 == v5)
      {
        return v3;
      }
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_100085794()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000857CC@<X0>(Swift::UInt *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100083E34(*a1, *(v2 + 16));
  *a2 = result;
  return result;
}

uint64_t sub_1000857FC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100085834@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100084BE4(a1, *(v2 + 16));
  *a2 = result;
  return result;
}

uint64_t sub_100085860(uint64_t a1)
{
  v2 = sub_1000021C0(&qword_1000B5FA8, &qword_100096558);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000858E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = qword_1000B5FB0[0];
  if (!qword_1000B5FB0[0])
  {
    sub_10006720C(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000B5FB0);
  }

  return result;
}

uint64_t sub_100085940(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FFF && *(a1 + 16))
  {
    return (*a1 + 0x3FFF);
  }

  v3 = (((*(a1 + 8) >> 50) >> 13) | (2 * ((*(a1 + 8) >> 50) & 0x1C00 | ((*(a1 + 8) & 7) << 7) | (*a1 >> 57) & 0x78 | *a1 & 7))) ^ 0x3FFF;
  if (v3 >= 0x3FFE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1000859B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFE)
  {
    *result = a2 - 0x3FFF;
    *(result + 8) = 0;
    if (a3 >= 0x3FFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x1FFF | ((-a2 & 0x3FFF) << 13);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = ((v3 >> 7) | (v3 << 50)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_100085A40(void *result, uint64_t a2)
{
  v2 = result[1] & 0xFFFFFFFFFFFFFF8 | (a2 << 63);
  *result &= 0xFFFFFFFFFFFFFF8uLL;
  result[1] = v2;
  return result;
}

uint64_t sub_100085A7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x8000000100099B50 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_100085B10(uint64_t a1)
{
  v2 = sub_100085CDC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100085B4C(uint64_t a1)
{
  v2 = sub_100085CDC();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *ToolInfoHeader.init(from:)(void *a1)
{
  v3 = sub_1000021C0(&qword_1000B6038, &qword_1000965E0);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v9 - v5;
  v7 = sub_100002AA0(a1, a1[3]);
  sub_100085CDC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_100002B38(a1);
  return v7;
}

unint64_t sub_100085CDC()
{
  result = qword_1000BE760;
  if (!qword_1000BE760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BE760);
  }

  return result;
}

uint64_t sub_100085D30@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1000021C0(&qword_1000B6038, &qword_1000965E0);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v11 - v7;
  sub_100002AA0(a1, a1[3]);
  sub_100085CDC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100002B38(a1);
  }

  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  result = sub_100002B38(a1);
  *a2 = v9;
  return result;
}

__n128 ToolInfoV0.init(command:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  *(a2 + 40) = *(a1 + 32);
  *(a2 + 56) = v2;
  *(a2 + 72) = *(a1 + 64);
  result = *a1;
  v4 = *(a1 + 16);
  *(a2 + 8) = *a1;
  *a2 = 0;
  *(a2 + 88) = *(a1 + 80);
  *(a2 + 24) = v4;
  return result;
}

uint64_t sub_100085F6C()
{
  if (*v0)
  {
    return 0x646E616D6D6F63;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_100085FAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x8000000100099B50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x646E616D6D6F63 && a2 == 0xE700000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_100086094(uint64_t a1)
{
  v2 = sub_10008A004();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000860D0(uint64_t a1)
{
  v2 = sub_10008A004();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t static ToolInfoV0.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v13 = v2;
  v14 = v3;
  v4 = *(a1 + 56);
  v11[2] = *(a1 + 40);
  v11[3] = v4;
  v11[4] = *(a1 + 72);
  v12 = *(a1 + 88);
  v5 = *(a1 + 24);
  v11[0] = *(a1 + 8);
  v11[1] = v5;
  v6 = *(a2 + 56);
  v9[2] = *(a2 + 40);
  v9[3] = v6;
  v9[4] = *(a2 + 72);
  v10 = *(a2 + 88);
  v7 = *(a2 + 24);
  v9[0] = *(a2 + 8);
  v9[1] = v7;
  return _s22ArgumentParserToolInfo07CommandD2V0V23__derived_struct_equalsySbAC_ACtFZ_0(v11, v9) & 1;
}

uint64_t ToolInfoV0.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000021C0(&qword_1000B6040, &qword_1000965E8);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v12 - v7;
  sub_100002AA0(a1, a1[3]);
  sub_10008A004();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v12[0]) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v10 = *(v3 + 56);
    v16 = *(v3 + 40);
    v17 = v10;
    v18 = *(v3 + 72);
    v19 = *(v3 + 88);
    v11 = *(v3 + 24);
    v14 = *(v3 + 8);
    v15 = v11;
    v20 = 1;
    sub_10008A058(v3, v12);
    sub_10008A090();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12[2] = v16;
    v12[3] = v17;
    v12[4] = v18;
    v13 = v19;
    v12[0] = v14;
    v12[1] = v15;
    sub_10008A0E4(v12);
  }

  return (*(v6 + 8))(v8, v5);
}

void ToolInfoV0.hash(into:)(uint64_t a1)
{
  v2 = v1;
  Hasher._combine(_:)(*v2);
  CommandInfoV0.hash(into:)(a1);
}

Swift::Int ToolInfoV0.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*v0);
  CommandInfoV0.hash(into:)(v2);
  return Hasher._finalize()();
}

double ToolInfoV0.init(from:)@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_10008A114(a2, v8);
  if (!v2)
  {
    v5 = v8[3];
    a1[2] = v8[2];
    a1[3] = v5;
    v6 = v8[5];
    a1[4] = v8[4];
    a1[5] = v6;
    result = *v8;
    v7 = v8[1];
    *a1 = v8[0];
    a1[1] = v7;
  }

  return result;
}

Swift::Int sub_1000864C8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  CommandInfoV0.hash(into:)(v3);
  return Hasher._finalize()();
}

Swift::Int sub_100086528(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  CommandInfoV0.hash(into:)(v4);
  return Hasher._finalize()();
}

uint64_t sub_100086584(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 7);
  v12[2] = *(a1 + 5);
  v12[3] = v3;
  v12[4] = *(a1 + 9);
  v13 = a1[11];
  v4 = *(a1 + 3);
  v12[0] = *(a1 + 1);
  v12[1] = v4;
  v5 = *a2;
  v6 = *(a2 + 3);
  v14[0] = *(a2 + 1);
  v14[1] = v6;
  v7 = *(a2 + 5);
  v8 = *(a2 + 7);
  v9 = *(a2 + 9);
  v15 = a2[11];
  v14[3] = v8;
  v14[4] = v9;
  v14[2] = v7;
  if (v2 == v5)
  {
    v10 = _s22ArgumentParserToolInfo07CommandD2V0V23__derived_struct_equalsySbAC_ACtFZ_0(v12, v14);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t CommandInfoV0.superCommands.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t ArgumentInfoV0.sectionTitle.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t ArgumentInfoV0.sectionTitle.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t CommandInfoV0.abstract.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t CommandInfoV0.abstract.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t CommandInfoV0.discussion.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t CommandInfoV0.discussion.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t CommandInfoV0.defaultSubcommand.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t CommandInfoV0.defaultSubcommand.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t CommandInfoV0.subcommands.setter(uint64_t a1)
{

  *(v1 + 72) = a1;
  return result;
}

uint64_t CommandInfoV0.arguments.setter(uint64_t a1)
{

  *(v1 + 80) = a1;
  return result;
}

double CommandInfoV0.init(superCommands:commandName:abstract:discussion:defaultSubcommand:subcommands:arguments:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unint64_t a10, uint64_t a11, uint64_t a12)
{
  v17 = a1;
  if (!*(a1 + 16))
  {

    v17 = 0;
  }

  v19 = a10;
  v20 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v20 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v20)
  {

    a4 = 0;
    a5 = 0;
  }

  v21 = a11;
  v22 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v22 = a6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v22)
  {

    a6 = 0;
    a7 = 0;
    v23 = a12;
    if (a10)
    {
      goto LABEL_11;
    }

LABEL_18:
    a8 = 0;
    if (!*(a11 + 16))
    {
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  v23 = a12;
  if (!a10)
  {
    goto LABEL_18;
  }

LABEL_11:
  v24 = HIBYTE(a10) & 0xF;
  if ((a10 & 0x2000000000000000) == 0)
  {
    v24 = a8 & 0xFFFFFFFFFFFFLL;
  }

  if (v24)
  {
    if (*(a11 + 16))
    {
      goto LABEL_15;
    }

LABEL_21:

    v21 = 0;
    if (*(v23 + 16))
    {
      goto LABEL_16;
    }

LABEL_22:

    v23 = 0;
    goto LABEL_16;
  }

  a8 = 0;
  v19 = 0;
  if (!*(a11 + 16))
  {
    goto LABEL_21;
  }

LABEL_15:
  if (!*(v23 + 16))
  {
    goto LABEL_22;
  }

LABEL_16:
  *&v32 = v17;
  *(&v32 + 1) = a2;
  *&v33 = a3;
  *(&v33 + 1) = a4;
  *&v34 = a5;
  *(&v34 + 1) = a6;
  *&v35 = a7;
  *(&v35 + 1) = a8;
  *&v36 = v19;
  *(&v36 + 1) = v21;
  v37 = v23;
  v38[0] = v17;
  v38[1] = a2;
  v38[2] = a3;
  v38[3] = a4;
  v38[4] = a5;
  v38[5] = a6;
  v38[6] = a7;
  v38[7] = a8;
  v38[8] = v19;
  v38[9] = v21;
  v38[10] = v23;
  sub_100085EA4(&v32, v31);
  sub_10008A0E4(v38);
  v25 = v35;
  v26 = v36;
  *(a9 + 32) = v34;
  *(a9 + 48) = v25;
  *(a9 + 64) = v26;
  *(a9 + 80) = v37;
  result = *&v32;
  v28 = v33;
  *a9 = v32;
  *(a9 + 16) = v28;
  return result;
}

uint64_t sub_100086A84()
{
  v1 = *v0;
  v2 = 0x6D6F437265707573;
  v3 = 0x616D6D6F63627573;
  if (v1 != 5)
  {
    v3 = 0x746E656D75677261;
  }

  v4 = 0x6973737563736964;
  if (v1 != 3)
  {
    v4 = 0xD000000000000011;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x4E646E616D6D6F63;
  if (v1 != 1)
  {
    v5 = 0x7463617274736261;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100086B88@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10008A594(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100086BB0(uint64_t a1)
{
  v2 = sub_10008A37C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100086BEC(uint64_t a1)
{
  v2 = sub_10008A37C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CommandInfoV0.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000021C0(&qword_1000B6050, &qword_1000965F0);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v10 - v7;
  sub_100002AA0(a1, a1[3]);
  sub_10008A37C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  HIBYTE(v10) = 0;
  sub_1000021C0(&qword_1000B6058, &qword_1000965F8);
  sub_10008CC04(&qword_1000B6060, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v11) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v11) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v11 = v3[9];
    HIBYTE(v10) = 5;
    sub_1000021C0(&qword_1000B6068, &qword_100096600);
    sub_10008A3D0();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v11 = v3[10];
    HIBYTE(v10) = 6;
    sub_1000021C0(&qword_1000B6078, &qword_100096608);
    sub_10008A454();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void CommandInfoV0.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  if (*v1)
  {
    Hasher._combine(_:)(1u);
    v4 = *(v3 + 16);
    Hasher._combine(_:)(v4);
    if (v4)
    {
      v5 = v3 + 40;
      do
      {

        String.hash(into:)();

        v5 += 16;
        --v4;
      }

      while (v4);
    }
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  String.hash(into:)();
  if (v1[4])
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (v1[6])
    {
      goto LABEL_9;
    }

LABEL_12:
    Hasher._combine(_:)(0);
    if (v1[8])
    {
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  Hasher._combine(_:)(0);
  if (!v1[6])
  {
    goto LABEL_12;
  }

LABEL_9:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (v1[8])
  {
LABEL_10:
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    goto LABEL_14;
  }

LABEL_13:
  Hasher._combine(_:)(0);
LABEL_14:
  v6 = v1[9];
  if (v6)
  {
    Hasher._combine(_:)(1u);
    v7 = *(v6 + 16);
    Hasher._combine(_:)(v7);
    if (v7)
    {
      v8 = v6 + 32;
      do
      {
        v9 = *(v8 + 16);
        v25[0] = *v8;
        v25[1] = v9;
        v10 = *(v8 + 32);
        v11 = *(v8 + 48);
        v12 = *(v8 + 64);
        v26 = *(v8 + 80);
        v25[3] = v11;
        v25[4] = v12;
        v25[2] = v10;
        sub_100085EA4(v25, v23);
        CommandInfoV0.hash(into:)(a1);
        sub_10008A0E4(v25);
        v8 += 88;
        --v7;
      }

      while (v7);
    }

    v13 = v1[10];
    if (v13)
    {
      goto LABEL_19;
    }

LABEL_24:
    Hasher._combine(_:)(0);
    return;
  }

  Hasher._combine(_:)(0);
  v13 = v1[10];
  if (!v13)
  {
    goto LABEL_24;
  }

LABEL_19:
  Hasher._combine(_:)(1u);
  v14 = *(v13 + 16);
  Hasher._combine(_:)(v14);
  if (v14)
  {
    v15 = v13 + 32;
    do
    {
      v23[0] = *v15;
      v16 = *(v15 + 16);
      v17 = *(v15 + 32);
      v18 = *(v15 + 64);
      v23[3] = *(v15 + 48);
      v23[4] = v18;
      v23[1] = v16;
      v23[2] = v17;
      v19 = *(v15 + 80);
      v20 = *(v15 + 96);
      v21 = *(v15 + 112);
      v24 = *(v15 + 128);
      v23[6] = v20;
      v23[7] = v21;
      v23[5] = v19;
      sub_10008A52C(v23, v22);
      ArgumentInfoV0.hash(into:)(a1);
      sub_10008A564(v23);
      v15 += 136;
      --v14;
    }

    while (v14);
  }
}

Swift::Int CommandInfoV0.hashValue.getter()
{
  Hasher.init(_seed:)();
  CommandInfoV0.hash(into:)(v1);
  return Hasher._finalize()();
}

double CommandInfoV0.init(from:)@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10008A804(a2, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
  }

  return result;
}

Swift::Int sub_100087260(uint64_t a1)
{
  Hasher.init(_seed:)();
  CommandInfoV0.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_10008729C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v7[4] = *(a1 + 64);
  v8 = *(a1 + 80);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return _s22ArgumentParserToolInfo07CommandD2V0V23__derived_struct_equalsySbAC_ACtFZ_0(v7, v9) & 1;
}

uint64_t ArgumentInfoV0.NameInfoV0.KindV0.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 1735290732;
  }

  if (a1 == 1)
  {
    return 0x74726F6873;
  }

  return 0xD000000000000012;
}

uint64_t sub_10008735C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x74726F6873;
  v5 = 0x8000000100099B20;
  if (v2 != 1)
  {
    v4 = 0xD000000000000012;
    v3 = 0x8000000100099B20;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 1735290732;
  }

  if (v2)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  v8 = 0x74726F6873;
  if (*a2 == 1)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v8 = 0xD000000000000012;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1735290732;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

unint64_t sub_100087448@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s22ArgumentParserToolInfo0aD2V0V04NamedE0V04KindE0O8rawValueAGSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_100087478(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x74726F6873;
  if (v2 != 1)
  {
    v5 = 0xD000000000000012;
    v4 = 0x8000000100099B20;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1735290732;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

Swift::Int sub_100087580()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10008761C(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1000876A4(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100087778()
{
  if (*v0)
  {
    return 1701667182;
  }

  else
  {
    return 1684957547;
  }
}

uint64_t sub_10008779C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1684957547 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100087878(uint64_t a1)
{
  v2 = sub_10008AF64();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000878B4(uint64_t a1)
{
  v2 = sub_10008AF64();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ArgumentInfoV0.NameInfoV0.encode(to:)(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v7 = sub_1000021C0(&qword_1000B6090, &qword_100096610);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = v12 - v9;
  sub_100002AA0(a1, a1[3]);
  sub_10008AF64();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = a2;
  v14 = 0;
  sub_10008AFB8();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v4)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t ArgumentInfoV0.NameInfoV0.hash(into:)(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4)
{
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int ArgumentInfoV0.NameInfoV0.hashValue.getter(char a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100087C28@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_10008B00C(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t sub_100087C84(uint64_t a1)
{
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int sub_100087D2C(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t ArgumentInfoV0.KindV0.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6E6F697469736F70;
  }

  if (a1 == 1)
  {
    return 0x6E6F6974706FLL;
  }

  return 1734437990;
}

uint64_t sub_100087E4C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x6E6F6974706FLL;
  if (v2 != 1)
  {
    v4 = 1734437990;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6E6F697469736F70;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEA00000000006C61;
  }

  v7 = 0xE600000000000000;
  v8 = 0x6E6F6974706FLL;
  if (*a2 != 1)
  {
    v8 = 1734437990;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E6F697469736F70;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEA00000000006C61;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

unint64_t sub_100087F38@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s22ArgumentParserToolInfo0aD2V0V04KindE0O8rawValueAESgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_100087F68(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000006C61;
  v4 = 0xE600000000000000;
  v5 = 0x6E6F6974706FLL;
  if (v2 != 1)
  {
    v5 = 1734437990;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E6F697469736F70;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

Swift::Int sub_100088070()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10008810C(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100088194(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t ArgumentInfoV0.names.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t ArgumentInfoV0.preferredName.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t ArgumentInfoV0.preferredName.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v3[5] = a1;
  v3[6] = a2;
  v3[7] = a3;
  return result;
}

uint64_t ArgumentInfoV0.allValueStrings.setter(uint64_t a1)
{

  *(v1 + 96) = a1;
  return result;
}

uint64_t (*ArgumentInfoV0.allValueStrings.modify(void *a1))()
{
  v3 = *(v1 + 96);
  a1[1] = v1;
  a1[2] = v3;
  *a1 = v3;

  return sub_1000883EC;
}

uint64_t sub_1000883EC(void *a1, char a2)
{
  v2 = a1[1];
  v3 = *a1;
  if (a2)
  {

    *(v2 + 96) = v3;
  }

  else
  {

    *(v2 + 96) = v3;
  }

  return result;
}

uint64_t ArgumentInfoV0.abstract.getter()
{
  v1 = *(v0 + 104);

  return v1;
}

uint64_t ArgumentInfoV0.abstract.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
  return result;
}

uint64_t ArgumentInfoV0.discussion.getter()
{
  v1 = *(v0 + 120);

  return v1;
}

uint64_t ArgumentInfoV0.discussion.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 120) = a1;
  *(v2 + 128) = a2;
  return result;
}

__n128 ArgumentInfoV0.init(kind:shouldDisplay:sectionTitle:isOptional:isRepeating:names:preferredName:valueName:defaultValue:allValues:abstract:discussion:)@<Q0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, unint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, unint64_t a12, uint64_t a13, unint64_t a14, uint64_t a15, uint64_t a16, unint64_t a17, uint64_t a18, unint64_t a19)
{
  v20 = a14;
  v21 = a12;
  if (a7 && !*(a7 + 16))
  {

    a7 = 0;
    v22 = a15;
    if (a12)
    {
      goto LABEL_4;
    }

LABEL_9:
    v23 = 0;
    goto LABEL_10;
  }

  v22 = a15;
  if (!a12)
  {
    goto LABEL_9;
  }

LABEL_4:
  v23 = a11;
  v24 = HIBYTE(a12) & 0xF;
  if ((a12 & 0x2000000000000000) == 0)
  {
    v24 = a11 & 0xFFFFFFFFFFFFLL;
  }

  if (!v24)
  {
    v25 = a7;

    a7 = v25;
    v23 = 0;
    v21 = 0;
  }

LABEL_10:
  v26 = a17;
  v49 = a7;
  if (a14)
  {
    v27 = a13;
    v28 = HIBYTE(a14) & 0xF;
    if ((a14 & 0x2000000000000000) == 0)
    {
      v28 = a13 & 0xFFFFFFFFFFFFLL;
    }

    if (!v28)
    {
      v29 = v23;

      v23 = v29;
      v27 = 0;
      v20 = 0;
    }
  }

  else
  {
    v27 = 0;
  }

  v30 = a19;
  if (v22 && !*(v22 + 16))
  {
    v35 = v27;
    v36 = v23;

    v27 = v35;
    v23 = v36;
    v22 = 0;
    if (a17)
    {
      goto LABEL_19;
    }

LABEL_24:
    v31 = 0;
    goto LABEL_25;
  }

  if (!a17)
  {
    goto LABEL_24;
  }

LABEL_19:
  v31 = a16;
  v32 = HIBYTE(a17) & 0xF;
  if ((a17 & 0x2000000000000000) == 0)
  {
    v32 = a16 & 0xFFFFFFFFFFFFLL;
  }

  if (!v32)
  {
    v33 = v27;
    v34 = v23;

    v27 = v33;
    v23 = v34;
    v31 = 0;
    v26 = 0;
  }

LABEL_25:
  if (a19)
  {
    v37 = a18;
    v38 = HIBYTE(a19) & 0xF;
    if ((a19 & 0x2000000000000000) == 0)
    {
      v38 = a18 & 0xFFFFFFFFFFFFLL;
    }

    if (!v38)
    {
      v44 = v27;
      v39 = v23;

      v27 = v44;
      v23 = v39;
      v37 = 0;
      v30 = 0;
    }
  }

  else
  {
    v37 = 0;
  }

  LOBYTE(v54) = a1;
  BYTE1(v54) = a2 & 1;
  *(&v54 + 1) = a3;
  v55.n128_u64[0] = a4;
  v55.n128_u8[8] = a5 & 1;
  v55.n128_u8[9] = a6 & 1;
  *&v56 = v49;
  *(&v56 + 1) = a8;
  v57 = a10;
  *&v58 = v23;
  *(&v58 + 1) = v21;
  *&v59 = v27;
  *(&v59 + 1) = v20;
  *&v60 = v22;
  *(&v60 + 1) = v31;
  *&v61 = v26;
  *(&v61 + 1) = v37;
  v62 = v30;
  v63[0] = a1;
  v63[1] = a2 & 1;
  v64 = a3;
  v65 = a4;
  v66 = a5 & 1;
  v67 = a6 & 1;
  v68 = v49;
  v69 = a8;
  v70 = a10;
  v71 = v23;
  v72 = v21;
  v73 = v27;
  v74 = v20;
  v75 = v22;
  v76 = v31;
  v77 = v26;
  v78 = v37;
  v79 = v30;
  sub_10008A52C(&v54, v53);
  sub_10008A564(v63);
  v40 = v61;
  *(a9 + 96) = v60;
  *(a9 + 112) = v40;
  *(a9 + 128) = v62;
  v41 = v57;
  *(a9 + 32) = v56;
  *(a9 + 48) = v41;
  v42 = v59;
  *(a9 + 64) = v58;
  *(a9 + 80) = v42;
  result = v55;
  *a9 = v54;
  *(a9 + 16) = result;
  return result;
}

uint64_t sub_1000887B0(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x65756C61566C6C61;
    v7 = 0x7463617274736261;
    if (a1 != 10)
    {
      v7 = 0x6973737563736964;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x6572726566657270;
    v9 = 0x6D614E65756C6176;
    if (a1 != 7)
    {
      v9 = 0x56746C7561666564;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 1684957547;
    v2 = 0x6E6F6974704F7369;
    v3 = 0x7461657065527369;
    if (a1 != 4)
    {
      v3 = 0x73656D616ELL;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x6944646C756F6873;
    if (a1 != 1)
    {
      v4 = 0x546E6F6974636573;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_100088974@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10008B39C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000889A8(uint64_t a1)
{
  v2 = sub_10008B21C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000889E4(uint64_t a1)
{
  v2 = sub_10008B21C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ArgumentInfoV0.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000021C0(&qword_1000B60A0, &qword_100096618);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v10 - v7;
  sub_100002AA0(a1, a1[3]);
  sub_10008B21C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v10) = *v3;
  v12 = 0;
  sub_10008B270();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v10) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v10) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v10) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v10) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    *&v10 = *(v3 + 32);
    v12 = 5;
    sub_1000021C0(&qword_1000B60B0, &qword_100096620);
    sub_10008B2C4();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v10 = *(v3 + 40);
    v11 = *(v3 + 56);
    v12 = 6;
    sub_10008B348();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v10) = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v10) = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    *&v10 = *(v3 + 96);
    v12 = 9;
    sub_1000021C0(&qword_1000B6058, &qword_1000965F8);
    sub_10008CC04(&qword_1000B6060, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v10) = 10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v10) = 11;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void ArgumentInfoV0.hash(into:)(uint64_t a1)
{
  v2 = v1;
  String.hash(into:)();

  Hasher._combine(_:)(*(v2 + 1) & 1);
  if (*(v2 + 16))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(*(v2 + 24) & 1);
  Hasher._combine(_:)(*(v2 + 25) & 1);
  v4 = *(v2 + 32);
  if (v4)
  {
    Hasher._combine(_:)(1u);
    sub_10008992C(a1, v4);
    if (*(v2 + 56))
    {
      goto LABEL_6;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (*(v2 + 56))
    {
LABEL_6:
      Hasher._combine(_:)(1u);
      String.hash(into:)();

      String.hash(into:)();
      if (*(v2 + 72))
      {
        goto LABEL_7;
      }

      goto LABEL_19;
    }
  }

  Hasher._combine(_:)(0);
  if (*(v2 + 72))
  {
LABEL_7:
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (*(v2 + 88))
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  Hasher._combine(_:)(0);
  if (*(v2 + 88))
  {
LABEL_8:
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    v5 = *(v2 + 96);
    if (v5)
    {
      goto LABEL_9;
    }

LABEL_21:
    Hasher._combine(_:)(0);
    if (*(v2 + 112))
    {
      goto LABEL_13;
    }

LABEL_22:
    Hasher._combine(_:)(0);
    if (*(v2 + 128))
    {
      goto LABEL_14;
    }

LABEL_23:
    Hasher._combine(_:)(0);
    return;
  }

LABEL_20:
  Hasher._combine(_:)(0);
  v5 = *(v2 + 96);
  if (!v5)
  {
    goto LABEL_21;
  }

LABEL_9:
  Hasher._combine(_:)(1u);
  v6 = *(v5 + 16);
  Hasher._combine(_:)(v6);
  if (v6)
  {
    v7 = v5 + 40;
    do
    {

      String.hash(into:)();

      v7 += 16;
      --v6;
    }

    while (v6);
  }

  if (!*(v2 + 112))
  {
    goto LABEL_22;
  }

LABEL_13:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (!*(v2 + 128))
  {
    goto LABEL_23;
  }

LABEL_14:
  Hasher._combine(_:)(1u);

  String.hash(into:)();
}

Swift::Int ArgumentInfoV0.hashValue.getter()
{
  Hasher.init(_seed:)();
  ArgumentInfoV0.hash(into:)(v1);
  return Hasher._finalize()();
}

__n128 ArgumentInfoV0.init(from:)@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10008B790(a2, v8);
  if (!v2)
  {
    v5 = v8[7];
    *(a1 + 96) = v8[6];
    *(a1 + 112) = v5;
    *(a1 + 128) = v9;
    v6 = v8[3];
    *(a1 + 32) = v8[2];
    *(a1 + 48) = v6;
    v7 = v8[5];
    *(a1 + 64) = v8[4];
    *(a1 + 80) = v7;
    result = v8[1];
    *a1 = v8[0];
    *(a1 + 16) = result;
  }

  return result;
}

Swift::Int sub_100089180(uint64_t a1)
{
  Hasher.init(_seed:)();
  ArgumentInfoV0.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_1000891BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 112);
  v11[6] = *(a1 + 96);
  v11[7] = v2;
  v12 = *(a1 + 128);
  v3 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v3;
  v4 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v4;
  v5 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v5;
  v6 = *(a2 + 112);
  v13[6] = *(a2 + 96);
  v13[7] = v6;
  v14 = *(a2 + 128);
  v7 = *(a2 + 48);
  v13[2] = *(a2 + 32);
  v13[3] = v7;
  v8 = *(a2 + 80);
  v13[4] = *(a2 + 64);
  v13[5] = v8;
  v9 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v9;
  return _s22ArgumentParserToolInfo0aD2V0V23__derived_struct_equalsySbAC_ACtFZ_0(v11, v13) & 1;
}

uint64_t sub_100089240(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 48);
    v4 = (a2 + 48);
    do
    {
      v7 = *(v3 - 1);
      v6 = *v3;
      v8 = *(v3 - 16);
      v9 = *(v4 - 16);
      v11 = *(v4 - 1);
      v10 = *v4;
      if (v8 == 1)
      {
        v12 = 0x74726F6873;
      }

      else
      {
        v12 = 0xD000000000000012;
      }

      if (v8 == 1)
      {
        v13 = 0xE500000000000000;
      }

      else
      {
        v13 = 0x8000000100099B20;
      }

      if (*(v3 - 16))
      {
        v14 = v12;
      }

      else
      {
        v14 = 1735290732;
      }

      if (*(v3 - 16))
      {
        v15 = v13;
      }

      else
      {
        v15 = 0xE400000000000000;
      }

      if (v9 == 1)
      {
        v16 = 0x74726F6873;
      }

      else
      {
        v16 = 0xD000000000000012;
      }

      if (v9 == 1)
      {
        v17 = 0xE500000000000000;
      }

      else
      {
        v17 = 0x8000000100099B20;
      }

      if (*(v4 - 16))
      {
        v18 = v16;
      }

      else
      {
        v18 = 1735290732;
      }

      if (*(v4 - 16))
      {
        v19 = v17;
      }

      else
      {
        v19 = 0xE400000000000000;
      }

      if (v14 == v18 && v15 == v19)
      {
      }

      else
      {
        v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v20 & 1) == 0)
        {

          return 0;
        }
      }

      if (v7 == v11 && v6 == v10)
      {
      }

      else
      {
        v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v5 & 1) == 0)
        {
          return 0;
        }
      }

      v3 += 3;
      v4 += 3;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_100089440(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = a1 + 32;
  v5 = a2 + 32;
  while (1)
  {
    v6 = v4 + 88 * v3;
    v7 = *(v6 + 48);
    *&v38[32] = *(v6 + 32);
    *&v38[48] = v7;
    *&v38[64] = *(v6 + 64);
    v39 = *(v6 + 80);
    v8 = *(v6 + 16);
    *v38 = *v6;
    *&v38[16] = v8;
    v9 = v5 + 88 * v3;
    v10 = *(v9 + 48);
    *&v40[32] = *(v9 + 32);
    *&v40[48] = v10;
    *&v40[64] = *(v9 + 64);
    v41 = *(v9 + 80);
    v11 = *(v9 + 16);
    *v40 = *v9;
    *&v40[16] = v11;
    if (!*v38)
    {
      if (*v40)
      {
        return 0;
      }

      goto LABEL_19;
    }

    if (!*v40)
    {
      return 0;
    }

    v12 = *(*v38 + 16);
    if (v12 != *(*v40 + 16))
    {
      return 0;
    }

    if (v12 && *v38 != *v40)
    {
      break;
    }

LABEL_19:
    if (*&v38[8] != *&v40[8] && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }

    if (*&v38[32])
    {
      if (!*&v40[32] || *&v38[24] != *&v40[24] && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }
    }

    else if (*&v40[32])
    {
      return 0;
    }

    if (*&v38[48])
    {
      if (!*&v40[48] || *&v38[40] != *&v40[40] && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }
    }

    else if (*&v40[48])
    {
      return 0;
    }

    if (*&v38[64])
    {
      if (!*&v40[64] || *&v38[56] != *&v40[56] && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }
    }

    else if (*&v40[64])
    {
      return 0;
    }

    v16 = *&v38[72];
    v17 = *&v40[72];
    if (*&v38[72])
    {
      if (!*&v40[72])
      {
        return 0;
      }

      sub_100085EA4(v38, v37);
      sub_100085EA4(v40, v37);

      v18 = sub_100089440(v16, v17);

      if ((v18 & 1) == 0)
      {
        goto LABEL_59;
      }
    }

    else
    {
      if (*&v40[72])
      {
        return 0;
      }

      sub_100085EA4(v38, v37);
      sub_100085EA4(v40, v37);
    }

    v19 = v39;
    v20 = v41;
    if (v39)
    {
      if (!v41)
      {
        goto LABEL_59;
      }

      v21 = *(v39 + 16);
      if (v21 != *(v41 + 16))
      {
        goto LABEL_59;
      }

      if (v21 && v39 != v41)
      {

        v22 = 32;
        while (1)
        {
          v42[0] = *(v19 + v22);
          v23 = *(v19 + v22 + 16);
          v24 = *(v19 + v22 + 32);
          v25 = *(v19 + v22 + 64);
          v42[3] = *(v19 + v22 + 48);
          v42[4] = v25;
          v42[1] = v23;
          v42[2] = v24;
          v26 = *(v19 + v22 + 80);
          v27 = *(v19 + v22 + 96);
          v28 = *(v19 + v22 + 112);
          v43 = *(v19 + v22 + 128);
          v42[6] = v27;
          v42[7] = v28;
          v42[5] = v26;
          v44[0] = *(v20 + v22);
          v29 = *(v20 + v22 + 16);
          v30 = *(v20 + v22 + 32);
          v31 = *(v20 + v22 + 64);
          v44[3] = *(v20 + v22 + 48);
          v44[4] = v31;
          v44[1] = v29;
          v44[2] = v30;
          v32 = *(v20 + v22 + 80);
          v33 = *(v20 + v22 + 96);
          v34 = *(v20 + v22 + 112);
          v45 = *(v20 + v22 + 128);
          v44[6] = v33;
          v44[7] = v34;
          v44[5] = v32;
          sub_10008A52C(v42, v37);
          sub_10008A52C(v44, v37);
          v35 = _s22ArgumentParserToolInfo0aD2V0V23__derived_struct_equalsySbAC_ACtFZ_0(v42, v44);
          sub_10008A564(v44);
          sub_10008A564(v42);
          if ((v35 & 1) == 0)
          {
            break;
          }

          v22 += 136;
          if (!--v21)
          {

            goto LABEL_54;
          }
        }

LABEL_59:
        sub_10008A0E4(v40);
        sub_10008A0E4(v38);
        return 0;
      }

LABEL_54:
      sub_10008A0E4(v40);
      sub_10008A0E4(v38);
    }

    else
    {
      sub_10008A0E4(v40);
      sub_10008A0E4(v38);
      if (v20)
      {
        return 0;
      }
    }

    if (++v3 == v2)
    {
      return 1;
    }
  }

  v13 = (*v38 + 40);
  v14 = (*v40 + 40);
  while (1)
  {
    v15 = *(v13 - 1) == *(v14 - 1) && *v13 == *v14;
    if (!v15 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }

    v13 += 2;
    v14 += 2;
    if (!--v12)
    {
      goto LABEL_19;
    }
  }
}

uint64_t sub_100089810(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v13 = 1;
    }

    else
    {
      v3 = a1 + 32;
      v4 = a2 + 32;
      do
      {
        v5 = *(v3 + 112);
        v16[6] = *(v3 + 96);
        v16[7] = v5;
        v17 = *(v3 + 128);
        v6 = *(v3 + 48);
        v16[2] = *(v3 + 32);
        v16[3] = v6;
        v7 = *(v3 + 80);
        v16[4] = *(v3 + 64);
        v16[5] = v7;
        v8 = *(v3 + 16);
        v16[0] = *v3;
        v16[1] = v8;
        v9 = *(v4 + 112);
        v18[6] = *(v4 + 96);
        v18[7] = v9;
        v19 = *(v4 + 128);
        v10 = *(v4 + 48);
        v18[2] = *(v4 + 32);
        v18[3] = v10;
        v11 = *(v4 + 80);
        v18[4] = *(v4 + 64);
        v18[5] = v11;
        v12 = *(v4 + 16);
        v18[0] = *v4;
        v18[1] = v12;
        sub_10008A52C(v16, v15);
        sub_10008A52C(v18, v15);
        v13 = _s22ArgumentParserToolInfo0aD2V0V23__derived_struct_equalsySbAC_ACtFZ_0(v16, v18);
        sub_10008A564(v18);
        sub_10008A564(v16);
        if ((v13 & 1) == 0)
        {
          break;
        }

        v3 += 136;
        v4 += 136;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

void sub_10008992C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    v4 = a2 + 48;
    do
    {

      String.hash(into:)();

      String.hash(into:)();
      swift_bridgeObjectRelease_n();
      v4 += 24;
      --v3;
    }

    while (v3);
  }
}

uint64_t _s22ArgumentParserToolInfo0aD2V0V23__derived_struct_equalsySbAC_ACtFZ_0(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = 0xE600000000000000;
  v5 = 0x6E6F6974706FLL;
  if (v3 != 1)
  {
    v5 = 1734437990;
    v4 = 0xE400000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x6E6F697469736F70;
  }

  if (v3)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xEA00000000006C61;
  }

  v9 = 0xE600000000000000;
  v10 = 0x6E6F6974706FLL;
  if (*a2 != 1)
  {
    v10 = 1734437990;
    v9 = 0xE400000000000000;
  }

  if (*a2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0x6E6F697469736F70;
  }

  if (*a2)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0xEA00000000006C61;
  }

  if (v6 == v11 && v7 == v12)
  {
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  if ((a1[1] ^ *(a2 + 1)))
  {
    return 0;
  }

  v15 = *(a1 + 2);
  v16 = *(a2 + 16);
  if (v15)
  {
    if (!v16 || (*(a1 + 1) != *(a2 + 8) || v15 != v16) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  if ((a1[24] ^ *(a2 + 24)) & 1) != 0 || ((a1[25] ^ *(a2 + 25)))
  {
    return 0;
  }

  v17 = *(a1 + 4);
  v18 = *(a2 + 32);
  if (v17)
  {
    if (!v18)
    {
      return 0;
    }

    v19 = sub_100089240(v17, v18);

    if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  v20 = *(a1 + 7);
  v21 = *(a2 + 56);
  if (v20)
  {
    if (!v21)
    {
      return 0;
    }

    v22 = *(a1 + 6);
    v23 = *(a2 + 48);
    v24 = 1735290732;
    if (*(a1 + 5))
    {
      if (*(a1 + 5) == 1)
      {
        v25 = 0xE500000000000000;
        v26 = 0x74726F6873;
      }

      else
      {
        v26 = 0xD000000000000012;
        v25 = 0x8000000100099B20;
      }
    }

    else
    {
      v25 = 0xE400000000000000;
      v26 = 1735290732;
    }

    if (*(a2 + 40))
    {
      if (*(a2 + 40) == 1)
      {
        v27 = 0xE500000000000000;
        v24 = 0x74726F6873;
      }

      else
      {
        v24 = 0xD000000000000012;
        v27 = 0x8000000100099B20;
      }
    }

    else
    {
      v27 = 0xE400000000000000;
    }

    if (v26 == v24 && v25 == v27)
    {
    }

    else
    {
      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v28 & 1) == 0)
      {

        return 0;
      }
    }

    if (v22 == v23 && v20 == v21)
    {
    }

    else
    {
      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v29 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v21)
  {
    return 0;
  }

  v30 = *(a1 + 9);
  v31 = *(a2 + 72);
  if (v30)
  {
    if (!v31 || (*(a1 + 8) != *(a2 + 64) || v30 != v31) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v31)
  {
    return 0;
  }

  v32 = *(a1 + 11);
  v33 = *(a2 + 88);
  if (v32)
  {
    if (!v33 || (*(a1 + 10) != *(a2 + 80) || v32 != v33) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v33)
  {
    return 0;
  }

  v34 = *(a1 + 12);
  v35 = *(a2 + 96);
  if (v34)
  {
    if (!v35 || (sub_100055CD4(v34, v35) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v35)
  {
    return 0;
  }

  v36 = *(a1 + 14);
  v37 = *(a2 + 112);
  if (v36)
  {
    if (!v37 || (*(a1 + 13) != *(a2 + 104) || v36 != v37) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v37)
  {
    return 0;
  }

  v38 = *(a1 + 16);
  v39 = *(a2 + 128);
  if (v38)
  {
    if (!v39 || (*(a1 + 15) != *(a2 + 120) || v38 != v39) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v39)
  {
    return 0;
  }

  return 1;
}

uint64_t _s22ArgumentParserToolInfo07CommandD2V0V23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (v4)
  {
    if (!v5 || (sub_100055CD4(v4, v5) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v6 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v7 = a1[4];
  v8 = a2[4];
  if (v7)
  {
    if (!v8 || (a1[3] != a2[3] || v7 != v8) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v9 = a1[6];
  v10 = a2[6];
  if (v9)
  {
    if (!v10 || (a1[5] != a2[5] || v9 != v10) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v11 = a1[8];
  v12 = a2[8];
  if (v11)
  {
    if (!v12 || (a1[7] != a2[7] || v11 != v12) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  v13 = a1[9];
  v14 = a2[9];
  if (v13)
  {
    if (!v14)
    {
      return 0;
    }

    v15 = sub_100089440(v13, v14);

    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  v16 = a1[10];
  v17 = a2[10];
  if (v16)
  {
    if (v17)
    {

      v18 = sub_100089810(v16, v17);

      if (v18)
      {
        return 1;
      }
    }
  }

  else if (!v17)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_10008A004()
{
  result = qword_1000BE768;
  if (!qword_1000BE768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BE768);
  }

  return result;
}

unint64_t sub_10008A090()
{
  result = qword_1000B6048;
  if (!qword_1000B6048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B6048);
  }

  return result;
}

uint64_t sub_10008A114@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v36 = a2;
  v4 = sub_1000021C0(&qword_1000B6168, &unk_100097200);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v15 - v6;
  sub_100002AA0(a1, a1[3]);
  sub_10008A004();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100002B38(a1);
  }

  v8 = v5;
  v9 = v36;
  LOBYTE(v16) = 0;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v23 = 1;
  sub_10008CD48();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v8 + 8))(v7, v4);
  v32 = v26;
  v33 = v27;
  v34 = v28;
  v35 = v29;
  v30 = v24;
  v31 = v25;
  *&v15[0] = v10;
  *(&v15[4] + 8) = v28;
  *(&v15[5] + 1) = v29;
  *(&v15[3] + 8) = v27;
  *(&v15[2] + 8) = v26;
  *(v15 + 8) = v24;
  *(&v15[1] + 8) = v25;
  sub_10008A058(v15, &v16);
  sub_100002B38(a1);
  v16 = v10;
  v19 = v32;
  v20 = v33;
  v21 = v34;
  v22 = v35;
  v17 = v30;
  v18 = v31;
  result = sub_10008CE74(&v16);
  v12 = v15[3];
  v9[2] = v15[2];
  v9[3] = v12;
  v13 = v15[5];
  v9[4] = v15[4];
  v9[5] = v13;
  v14 = v15[1];
  *v9 = v15[0];
  v9[1] = v14;
  return result;
}

unint64_t sub_10008A37C()
{
  result = qword_1000BE770;
  if (!qword_1000BE770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BE770);
  }

  return result;
}

unint64_t sub_10008A3D0()
{
  result = qword_1000B6070;
  if (!qword_1000B6070)
  {
    sub_100002B84(&qword_1000B6068, &qword_100096600);
    sub_10008A090();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B6070);
  }

  return result;
}

unint64_t sub_10008A454()
{
  result = qword_1000B6080;
  if (!qword_1000B6080)
  {
    sub_100002B84(&qword_1000B6078, &qword_100096608);
    sub_10008A4D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B6080);
  }

  return result;
}

unint64_t sub_10008A4D8()
{
  result = qword_1000B6088;
  if (!qword_1000B6088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B6088);
  }

  return result;
}

uint64_t sub_10008A594(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D6F437265707573 && a2 == 0xED000073646E616DLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4E646E616D6D6F63 && a2 == 0xEB00000000656D61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7463617274736261 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6973737563736964 && a2 == 0xEA00000000006E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000100099B70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x616D6D6F63627573 && a2 == 0xEB0000000073646ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x746E656D75677261 && a2 == 0xE900000000000073)
  {

    return 6;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_10008A804@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000021C0(&qword_1000B6140, &qword_1000971F8);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v28 - v7;
  sub_100002AA0(a1, a1[3]);
  sub_10008A37C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100002B38(a1);
  }

  else
  {
    sub_1000021C0(&qword_1000B6058, &qword_1000965F8);
    LOBYTE(v38) = 0;
    sub_10008CC04(&qword_1000B6128, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v36 = v44[0];
    LOBYTE(v44[0]) = 1;
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    v37 = v10;
    LOBYTE(v44[0]) = 2;
    v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v34 = a2;
    v35 = v12;
    LOBYTE(v44[0]) = 3;
    v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v15 = v14;
    v32 = v13;
    v33 = v11;
    LOBYTE(v44[0]) = 4;
    v16 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v18 = v17;
    v31 = v16;
    sub_1000021C0(&qword_1000B6068, &qword_100096600);
    LOBYTE(v38) = 5;
    sub_10008CCC4();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v30 = v9;
    v19 = v44[0];
    sub_1000021C0(&qword_1000B6078, &qword_100096608);
    v45 = 6;
    sub_10008CD9C();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    v29 = v46;
    v20 = v36;
    *&v38 = v36;
    v21 = v30;
    *(&v38 + 1) = v30;
    v22 = v37;
    *&v39 = v37;
    *(&v39 + 1) = v33;
    v23 = v35;
    *&v40 = v35;
    *(&v40 + 1) = v32;
    *&v41 = v15;
    *(&v41 + 1) = v31;
    *&v42 = v18;
    *(&v42 + 1) = v19;
    v43 = v46;
    sub_100085EA4(&v38, v44);
    sub_100002B38(a1);
    v44[0] = v20;
    v44[1] = v21;
    v44[2] = v22;
    v44[3] = v33;
    v44[4] = v23;
    v44[5] = v32;
    v44[6] = v15;
    v44[7] = v31;
    v44[8] = v18;
    v44[9] = v19;
    v44[10] = v29;
    result = sub_10008A0E4(v44);
    v25 = v41;
    v26 = v34;
    *(v34 + 32) = v40;
    *(v26 + 48) = v25;
    *(v26 + 64) = v42;
    *(v26 + 80) = v43;
    v27 = v39;
    *v26 = v38;
    *(v26 + 16) = v27;
  }

  return result;
}

unint64_t _s22ArgumentParserToolInfo0aD2V0V04NamedE0V04KindE0O8rawValueAGSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000AF950, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t _s22ArgumentParserToolInfo0aD2V0V04NamedE0V23__derived_struct_equalsySbAE_AEtFZ_0(unsigned __int8 a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5, uint64_t a6)
{
  v10 = a1;
  if (!a1)
  {
    v12 = 0xE400000000000000;
    v11 = 1735290732;
    v13 = a4;
    if (a4)
    {
      goto LABEL_9;
    }

LABEL_18:
    v15 = 0xE400000000000000;
    if (v11 != 1735290732)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  if (a1 == 1)
  {
    v11 = 0x74726F6873;
  }

  else
  {
    v11 = 0xD000000000000012;
  }

  if (v10 == 1)
  {
    v12 = 0xE500000000000000;
  }

  else
  {
    v12 = 0x8000000100099B20;
  }

  v13 = a4;
  if (!a4)
  {
    goto LABEL_18;
  }

LABEL_9:
  if (v13 == 1)
  {
    v14 = 0x74726F6873;
  }

  else
  {
    v14 = 0xD000000000000012;
  }

  if (v13 == 1)
  {
    v15 = 0xE500000000000000;
  }

  else
  {
    v15 = 0x8000000100099B20;
  }

  if (v11 != v14)
  {
LABEL_21:
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    result = 0;
    if ((v16 & 1) == 0)
    {
      return result;
    }

    goto LABEL_22;
  }

LABEL_19:
  if (v12 != v15)
  {
    goto LABEL_21;
  }

LABEL_22:
  if (a2 == a5 && a3 == a6)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

unint64_t sub_10008AF64()
{
  result = qword_1000BE778;
  if (!qword_1000BE778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BE778);
  }

  return result;
}

unint64_t sub_10008AFB8()
{
  result = qword_1000B6098;
  if (!qword_1000B6098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B6098);
  }

  return result;
}

uint64_t sub_10008B00C(void *a1)
{
  v3 = sub_1000021C0(&qword_1000B6130, &qword_1000971F0);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v9[-v5];
  v7 = a1[3];
  sub_100002AA0(a1, v7);
  sub_10008AF64();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v9[14] = 0;
    sub_10008CC70();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v7 = v9[15];
    v9[13] = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_100002B38(a1);
  return v7;
}

unint64_t _s22ArgumentParserToolInfo0aD2V0V04KindE0O8rawValueAESgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000AF9B8, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10008B21C()
{
  result = qword_1000BE780[0];
  if (!qword_1000BE780[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000BE780);
  }

  return result;
}

unint64_t sub_10008B270()
{
  result = qword_1000B60A8;
  if (!qword_1000B60A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B60A8);
  }

  return result;
}

unint64_t sub_10008B2C4()
{
  result = qword_1000B60B8;
  if (!qword_1000B60B8)
  {
    sub_100002B84(&qword_1000B60B0, &qword_100096620);
    sub_10008B348();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B60B8);
  }

  return result;
}

unint64_t sub_10008B348()
{
  result = qword_1000B60C0;
  if (!qword_1000B60C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B60C0);
  }

  return result;
}

uint64_t sub_10008B39C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684957547 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6944646C756F6873 && a2 == 0xED000079616C7073 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x546E6F6974636573 && a2 == 0xEC000000656C7469 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F6974704F7369 && a2 == 0xEA00000000006C61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7461657065527369 && a2 == 0xEB00000000676E69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x73656D616ELL && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6572726566657270 && a2 == 0xED0000656D614E64 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6D614E65756C6176 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x56746C7561666564 && a2 == 0xEC00000065756C61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x65756C61566C6C61 && a2 == 0xE900000000000073 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x7463617274736261 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6973737563736964 && a2 == 0xEA00000000006E6FLL)
  {

    return 11;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t sub_10008B790@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = sub_1000021C0(&qword_1000B6108, &qword_1000971E8);
  v5 = *(v47 - 8);
  __chkstk_darwin();
  v7 = &v30 - v6;
  sub_100002AA0(a1, a1[3]);
  sub_10008B21C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v48 = v2;
LABEL_4:
    sub_100002B38(a1);
  }

  LOBYTE(v49) = 0;
  sub_10008CAD8();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v8 = v58;
  LOBYTE(v58) = 1;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v58) = 2;
  v45 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v46 = v11;
  LOBYTE(v58) = 3;
  v74 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v58) = 4;
  v43 = KeyedDecodingContainer.decode(_:forKey:)();
  v44 = v9;
  sub_1000021C0(&qword_1000B60B0, &qword_100096620);
  LOBYTE(v49) = 5;
  sub_10008CB2C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v42 = v58;
  LOBYTE(v49) = 6;
  sub_10008CBB0();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v12 = v58;
  v41 = v59;
  LOBYTE(v58) = 7;
  v37 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v39 = v5;
  v40 = v13;
  LOBYTE(v58) = 8;
  v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v38 = v15;
  v48 = 0;
  v16 = v14;
  sub_1000021C0(&qword_1000B6058, &qword_1000965F8);
  LOBYTE(v49) = 9;
  sub_10008CC04(&qword_1000B6128, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
  v17 = v48;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v48 = v17;
  if (v17)
  {
    (*(v39 + 8))(v7, v47);
    goto LABEL_4;
  }

  v36 = v58;
  LOBYTE(v58) = 10;
  v35 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v48 = 0;
  v19 = v18;
  v75 = 11;
  v33 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v34 = v20;
  v48 = 0;
  v21 = v44 & 1;
  v32 = v44 & 1;
  v74 &= 1u;
  v44 = v43 & 1;
  (*(v39 + 8))(v7, v47);
  HIDWORD(v30) = v8;
  LOBYTE(v49) = v8;
  BYTE1(v49) = v21;
  v22 = v46;
  *(&v49 + 1) = v45;
  *&v50 = v46;
  BYTE8(v50) = v74;
  BYTE9(v50) = v44;
  *&v51 = v42;
  *(&v51 + 1) = v12;
  v31 = v12;
  v52 = v41;
  v23 = v38;
  *&v53 = v37;
  *(&v53 + 1) = v40;
  *&v54 = v16;
  *(&v54 + 1) = v38;
  v24 = v36;
  *&v55 = v36;
  *(&v55 + 1) = v35;
  v25 = v33;
  *&v56 = v19;
  *(&v56 + 1) = v33;
  v57 = v34;
  sub_10008A52C(&v49, &v58);
  sub_100002B38(a1);
  LOBYTE(v58) = BYTE4(v30);
  BYTE1(v58) = v32;
  *&v59 = v45;
  *(&v59 + 1) = v22;
  v60 = v74;
  v61 = v44;
  v62 = v42;
  v63 = v31;
  v64 = v41;
  v65 = v37;
  v66 = v40;
  v67 = v16;
  v68 = v23;
  v69 = v24;
  v70 = v35;
  v71 = v19;
  v72 = v25;
  v73 = v34;
  result = sub_10008A564(&v58);
  v26 = v56;
  *(a2 + 96) = v55;
  *(a2 + 112) = v26;
  *(a2 + 128) = v57;
  v27 = v52;
  *(a2 + 32) = v51;
  *(a2 + 48) = v27;
  v28 = v54;
  *(a2 + 64) = v53;
  *(a2 + 80) = v28;
  v29 = v50;
  *a2 = v49;
  *(a2 + 16) = v29;
  return result;
}

unint64_t sub_10008BE6C()
{
  result = qword_1000B60C8;
  if (!qword_1000B60C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B60C8);
  }

  return result;
}

unint64_t sub_10008BEC4()
{
  result = qword_1000B60D0;
  if (!qword_1000B60D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B60D0);
  }

  return result;
}

unint64_t sub_10008BF1C()
{
  result = qword_1000B60D8;
  if (!qword_1000B60D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B60D8);
  }

  return result;
}

unint64_t sub_10008BF74()
{
  result = qword_1000B60E0;
  if (!qword_1000B60E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B60E0);
  }

  return result;
}

unint64_t sub_10008BFCC()
{
  result = qword_1000B60E8;
  if (!qword_1000B60E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B60E8);
  }

  return result;
}

unint64_t sub_10008C024()
{
  result = qword_1000B60F0;
  if (!qword_1000B60F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B60F0);
  }

  return result;
}

__n128 sub_10008C088(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

__n128 sub_10008C0B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_10008C0D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10008C120(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10008C184(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_10008C1B8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 136))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_10008C214(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

__n128 sub_10008C298(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_10008C2AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10008C2F4(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for ArgumentInfoV0.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ArgumentInfoV0.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10008C50C()
{
  result = qword_1000BF610[0];
  if (!qword_1000BF610[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000BF610);
  }

  return result;
}

unint64_t sub_10008C564()
{
  result = qword_1000BF820[0];
  if (!qword_1000BF820[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000BF820);
  }

  return result;
}

unint64_t sub_10008C5BC()
{
  result = qword_1000BFA30[0];
  if (!qword_1000BFA30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000BFA30);
  }

  return result;
}

unint64_t sub_10008C614()
{
  result = qword_1000BFC40[0];
  if (!qword_1000BFC40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000BFC40);
  }

  return result;
}

unint64_t sub_10008C66C()
{
  result = qword_1000BFE50[0];
  if (!qword_1000BFE50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000BFE50);
  }

  return result;
}

unint64_t sub_10008C6C4()
{
  result = qword_1000BFF60;
  if (!qword_1000BFF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BFF60);
  }

  return result;
}

unint64_t sub_10008C71C()
{
  result = qword_1000BFF68[0];
  if (!qword_1000BFF68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000BFF68);
  }

  return result;
}

unint64_t sub_10008C774()
{
  result = qword_1000BFFF0;
  if (!qword_1000BFFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BFFF0);
  }

  return result;
}

unint64_t sub_10008C7CC()
{
  result = qword_1000BFFF8[0];
  if (!qword_1000BFFF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000BFFF8);
  }

  return result;
}

unint64_t sub_10008C824()
{
  result = qword_1000C0080;
  if (!qword_1000C0080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C0080);
  }

  return result;
}

unint64_t sub_10008C87C()
{
  result = qword_1000C0088[0];
  if (!qword_1000C0088[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000C0088);
  }

  return result;
}

unint64_t sub_10008C8D4()
{
  result = qword_1000C0110;
  if (!qword_1000C0110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C0110);
  }

  return result;
}

unint64_t sub_10008C92C()
{
  result = qword_1000C0118[0];
  if (!qword_1000C0118[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000C0118);
  }

  return result;
}

unint64_t sub_10008C984()
{
  result = qword_1000C01A0;
  if (!qword_1000C01A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C01A0);
  }

  return result;
}

unint64_t sub_10008C9DC()
{
  result = qword_1000C01A8[0];
  if (!qword_1000C01A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000C01A8);
  }

  return result;
}

unint64_t sub_10008CA30()
{
  result = qword_1000B60F8;
  if (!qword_1000B60F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B60F8);
  }

  return result;
}

unint64_t sub_10008CA84()
{
  result = qword_1000B6100;
  if (!qword_1000B6100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B6100);
  }

  return result;
}

unint64_t sub_10008CAD8()
{
  result = qword_1000B6110;
  if (!qword_1000B6110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B6110);
  }

  return result;
}

unint64_t sub_10008CB2C()
{
  result = qword_1000B6118;
  if (!qword_1000B6118)
  {
    sub_100002B84(&qword_1000B60B0, &qword_100096620);
    sub_10008CBB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B6118);
  }

  return result;
}

unint64_t sub_10008CBB0()
{
  result = qword_1000B6120;
  if (!qword_1000B6120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B6120);
  }

  return result;
}

uint64_t sub_10008CC04(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_100002B84(&qword_1000B6058, &qword_1000965F8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10008CC70()
{
  result = qword_1000B6138;
  if (!qword_1000B6138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B6138);
  }

  return result;
}

unint64_t sub_10008CCC4()
{
  result = qword_1000B6148;
  if (!qword_1000B6148)
  {
    sub_100002B84(&qword_1000B6068, &qword_100096600);
    sub_10008CD48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B6148);
  }

  return result;
}

unint64_t sub_10008CD48()
{
  result = qword_1000B6150;
  if (!qword_1000B6150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B6150);
  }

  return result;
}

unint64_t sub_10008CD9C()
{
  result = qword_1000B6158;
  if (!qword_1000B6158)
  {
    sub_100002B84(&qword_1000B6078, &qword_100096608);
    sub_10008CE20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B6158);
  }

  return result;
}

unint64_t sub_10008CE20()
{
  result = qword_1000B6160;
  if (!qword_1000B6160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B6160);
  }

  return result;
}

Swift::String __swiftcall Character.lowercased()()
{
  v0 = Character.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall Character.uppercased()()
{
  v0 = Character.uppercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.uppercased()()
{
  v0 = String.uppercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String_optional __swiftcall String.Iterator.next()()
{
  v0 = String.Iterator.next()();
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.init(repeating:count:)(Swift::String repeating, Swift::Int count)
{
  v2 = String.init(repeating:count:)(repeating._countAndFlagsBits, repeating._object, count);
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t String.subscript.getter()
{
  return String.subscript.getter();
}

{
  return String.subscript.getter();
}

uint64_t String.init<A>(_:)()
{
  return String.init<A>(_:)();
}

{
  return String.init<A>(_:)();
}

uint64_t Substring.subscript.getter()
{
  return Substring.subscript.getter();
}

{
  return Substring.subscript.getter();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

uint64_t UnkeyedDecodingContainer.decodeIfPresent(_:)()
{
  return UnkeyedDecodingContainer.decodeIfPresent(_:)();
}

{
  return UnkeyedDecodingContainer.decodeIfPresent(_:)();
}

{
  return UnkeyedDecodingContainer.decodeIfPresent(_:)();
}

{
  return UnkeyedDecodingContainer.decodeIfPresent(_:)();
}

{
  return UnkeyedDecodingContainer.decodeIfPresent(_:)();
}

{
  return UnkeyedDecodingContainer.decodeIfPresent(_:)();
}

{
  return UnkeyedDecodingContainer.decodeIfPresent(_:)();
}

uint64_t UnkeyedDecodingContainer.decode(_:)()
{
  return UnkeyedDecodingContainer.decode(_:)();
}

{
  return UnkeyedDecodingContainer.decode(_:)();
}

uint64_t SingleValueDecodingContainer.decode(_:)()
{
  return SingleValueDecodingContainer.decode(_:)();
}

{
  return SingleValueDecodingContainer.decode(_:)();
}

uint64_t KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)()
{
  return KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
}

uint64_t KeyedDecodingContainerProtocol.decode(_:forKey:)()
{
  return KeyedDecodingContainerProtocol.decode(_:forKey:)();
}

{
  return KeyedDecodingContainerProtocol.decode(_:forKey:)();
}