unint64_t sub_10005E9FC(uint64_t a1)
{
  v1 = 0xD00000000000001DLL;
  v75 = 0xD00000000000001DLL;
  v76 = 0x8000000100106030;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = 0;
    v59 = a1 + 32;
    v57 = *(a1 + 16);
    while (1)
    {
      v4 = (v59 + 40 * v3);
      v5 = v4[2];
      v6 = v4[3];
      v8 = *v4;
      v7 = *(v59 + 40 * v3 + 8);
      v74._countAndFlagsBits = 0;
      v74._object = 0xE000000000000000;
      v73._countAndFlagsBits = v8;
      v73._object = v7;
      swift_bridgeObjectRetain_n();
      sub_1000146B0(v5, v6);
      v9._countAndFlagsBits = 544106784;
      v9._object = 0xE400000000000000;
      String.append(_:)(v9);
      v62 = v5;
      if (v6 >> 60 == 15)
      {
        v10 = 0xE600000000000000;
        v11 = 0x6D6574737973;
        goto LABEL_45;
      }

      v71 = 0;
      v72 = 0xE000000000000000;
      _StringGuts.grow(_:)(38);

      v71 = 0xD000000000000024;
      v72 = 0x8000000100105EB0;
      v12 = v6 >> 62;
      v61 = HIDWORD(v5);
      if ((v6 >> 62) <= 1)
      {
        break;
      }

      if (v12 == 2)
      {
        v58 = v3;
        v15 = *(v5 + 16);
        v14 = *(v5 + 24);
        v13 = v14 - v15;
        if (__OFSUB__(v14, v15))
        {
          goto LABEL_65;
        }

        if (v13)
        {
LABEL_12:
          v70 = _swiftEmptyArrayStorage;
          sub_1000635A4(0, v13 & ~(v13 >> 63), 0);
          v16 = v5;
          if (v12)
          {
            if (v12 == 2)
            {
              v17 = *(v5 + 16);
            }

            else
            {
              v17 = v5;
            }
          }

          else
          {
            v17 = 0;
          }

          v63 = v17;
          if (v13 < 0)
          {
            goto LABEL_63;
          }

          v20 = 0;
          v19 = v70;
          v60 = &v64 + v17;
          while (2)
          {
            if (v20 >= v13)
            {
              __break(1u);
LABEL_56:
              __break(1u);
LABEL_57:
              __break(1u);
LABEL_58:
              __break(1u);
LABEL_59:
              __break(1u);
LABEL_60:
              __break(1u);
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
LABEL_66:

              __break(1u);
LABEL_67:
              __break(1u);
LABEL_68:
              __break(1u);
            }

            v21 = v20 + 1;
            if (__OFADD__(v20, 1))
            {
              goto LABEL_56;
            }

            v22 = v63 + v20;
            if (v12 == 2)
            {
              if (v22 < *(v16 + 16))
              {
                goto LABEL_58;
              }

              if (v22 >= *(v16 + 24))
              {
                goto LABEL_60;
              }

              v27 = __DataStorage._bytes.getter();
              if (!v27)
              {
                goto LABEL_68;
              }

              v24 = v27;
              v28 = __DataStorage._offset.getter();
              v26 = v22 - v28;
              if (__OFSUB__(v22, v28))
              {
                goto LABEL_62;
              }

LABEL_37:
              v29 = *(v24 + v26);
              v16 = v62;
            }

            else
            {
              if (v12 == 1)
              {
                if (v22 < v62 || v22 >= v62 >> 32)
                {
                  goto LABEL_59;
                }

                v23 = __DataStorage._bytes.getter();
                if (!v23)
                {
                  goto LABEL_67;
                }

                v24 = v23;
                v25 = __DataStorage._offset.getter();
                v26 = v22 - v25;
                if (__OFSUB__(v22, v25))
                {
                  goto LABEL_61;
                }

                goto LABEL_37;
              }

              if (v22 >= BYTE6(v6))
              {
                goto LABEL_57;
              }

              LOWORD(v64) = v16;
              BYTE2(v64) = BYTE2(v16);
              BYTE3(v64) = BYTE3(v16);
              BYTE4(v64) = v61;
              BYTE5(v64) = BYTE5(v16);
              BYTE6(v64) = BYTE6(v16);
              HIBYTE(v64) = HIBYTE(v16);
              v65 = v6;
              v66 = BYTE2(v6);
              v67 = BYTE3(v6);
              v68 = BYTE4(v6);
              v69 = BYTE5(v6);
              v29 = v60[v20];
            }

            sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
            v30 = swift_allocObject();
            *(v30 + 16) = xmmword_1000F3160;
            *(v30 + 56) = &type metadata for UInt8;
            *(v30 + 64) = &protocol witness table for UInt8;
            *(v30 + 32) = v29;
            v31 = String.init(format:_:)();
            v12 = v32;
            v70 = v19;
            v34 = v19[2];
            v33 = v19[3];
            if (v34 >= v33 >> 1)
            {
              sub_1000635A4((v33 > 1), v34 + 1, 1);
              v16 = v62;
              v19 = v70;
            }

            v19[2] = v34 + 1;
            v35 = &v19[2 * v34];
            v35[4] = v31;
            v35[5] = v12;
            ++v20;
            LODWORD(v12) = v6 >> 62;
            if (v21 == v13)
            {
              goto LABEL_43;
            }

            continue;
          }
        }

        goto LABEL_17;
      }

      v19 = _swiftEmptyArrayStorage;
LABEL_44:
      v64 = v19;
      sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
      sub_10001455C(&qword_100134288, &qword_100136C80, &qword_1000F39B0, &protocol conformance descriptor for [A]);
      v36 = BidirectionalCollection<>.joined(separator:)();
      v38 = v37;

      v39._countAndFlagsBits = v36;
      v39._object = v38;
      String.append(_:)(v39);

      v11 = v71;
      v10 = v72;
LABEL_45:
      v40 = v10;
      String.append(_:)(*&v11);

      v41._countAndFlagsBits = 8250;
      v41._object = 0xE200000000000000;
      String.append(_:)(v41);
      if (qword_100133A30 != -1)
      {
        swift_once();
      }

      ++v3;
      v43 = __chkstk_darwin(off_100135B38, v42);
      v44 = sub_10006573C(v43, sub_10006861C);
      v45 = 0;
      v46 = 1 << *(v44 + 32);
      v47 = (v46 + 63) >> 6;
      v48 = 8;
      while (1)
      {
        v49 = v44[v48];
        if (v49)
        {
          break;
        }

        v45 -= 64;
        ++v48;
        if (!--v47)
        {
          goto LABEL_66;
        }
      }

      v50 = __clz(__rbit64(v49));
      if (v50 - v46 == v45)
      {
        goto LABEL_66;
      }

      v51 = sub_10008DF38(&v71, v50 - v45, *(v44 + 9), 0, v44);
      v53 = v52;

      v54._countAndFlagsBits = v51;
      v54._object = v53;
      String.append(_:)(v54);

      String.append(_:)(v73);

      v55._countAndFlagsBits = 10;
      v55._object = 0xE100000000000000;
      String.append(_:)(v55);
      String.append(_:)(v74);

      sub_100014528(v62, v6);
      if (v3 == v2)
      {
        return v75;
      }
    }

    v58 = v3;
    if (v12)
    {
      v18 = HIDWORD(v5) - v5;
      if (__OFSUB__(HIDWORD(v5), v5))
      {
        goto LABEL_64;
      }

      v13 = v18;
      if (v18)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v13 = BYTE6(v6);
      if (BYTE6(v6))
      {
        goto LABEL_12;
      }
    }

LABEL_17:
    v19 = _swiftEmptyArrayStorage;
LABEL_43:
    v2 = v57;
    v3 = v58;
    goto LABEL_44;
  }

  return v1;
}

uint64_t sub_10005F0FC()
{
  if (*v0)
  {
    return 0x6E6F6973726576;
  }

  else
  {
    return 12406;
  }
}

uint64_t sub_10005F12C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12406 && a2 == 0xE200000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
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

uint64_t sub_10005F200(uint64_t a1)
{
  v2 = sub_100066448();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005F23C(uint64_t a1)
{
  v2 = sub_100066448();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ApprovalDB.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003CDC(&qword_100135B90, &qword_1000F6B08);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v12[-v9];
  sub_100003C4C(a1, a1[3]);
  sub_100066448();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = a2;
  v12[15] = 0;
  sub_10006649C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v3)
  {
    v12[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_10005F430@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1000666A4(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

Swift::Int sub_10005F48C()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_10005F4D0(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_10005F510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73656972746E65 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10005F598(uint64_t a1)
{
  v2 = sub_100066868();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005F5D4(uint64_t a1)
{
  v2 = sub_100066868();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ApprovalSettingsState.encode(to:)(void *a1, uint64_t a2)
{
  v4 = sub_100003CDC(&qword_100135BA8, &qword_1000F6B10);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = v10 - v7;
  sub_100003C4C(a1, a1[3]);
  sub_100066868();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[1] = a2;
  sub_100003CDC(&qword_100135BB8, &qword_1000F6B18);
  sub_100068234(&qword_100135BC0, sub_1000668BC, &protocol conformance descriptor for <> Set<A>);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v8, v4);
}

void *sub_10005F7B4@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100066910(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_10005F800(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  if (v7)
  {
LABEL_7:
    v10 = __clz(__rbit64(v7));
    v11 = (v7 - 1) & v7;
    goto LABEL_13;
  }

  while (1)
  {
    v12 = v3;
    do
    {
      v3 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
LABEL_174:
        __break(1u);
LABEL_175:
        __break(1u);
LABEL_176:
        __break(1u);
LABEL_177:
        __break(1u);
LABEL_178:
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:
        __break(1u);
LABEL_182:
        __break(1u);
LABEL_183:
        __break(1u);
LABEL_184:
        __break(1u);
LABEL_185:
        __break(1u);
LABEL_186:
        __break(1u);
LABEL_187:
        __break(1u);
LABEL_188:
        __break(1u);
LABEL_189:
        __break(1u);
LABEL_190:
        __break(1u);
LABEL_191:
        __break(1u);
LABEL_192:
        __break(1u);
LABEL_193:
        __break(1u);
LABEL_194:
        __break(1u);
LABEL_195:
        __break(1u);
LABEL_196:
        __break(1u);
      }

      if (v3 >= v8)
      {
        return 1;
      }

      v13 = *(v4 + 8 * v3);
      ++v12;
    }

    while (!v13);
    v10 = __clz(__rbit64(v13));
    v11 = (v13 - 1) & v13;
LABEL_13:
    v123 = a1;
    v14 = *(a1 + 48) + 72 * (v10 | (v3 << 6));
    v133 = *v14;
    v16 = *(v14 + 32);
    v15 = *(v14 + 48);
    v17 = *(v14 + 16);
    v137 = *(v14 + 64);
    v135 = v16;
    v136 = v15;
    v134 = v17;
    Hasher.init(_seed:)();
    sub_1000681CC(&v133, &__s2);
    ApprovalSettingsStateEntry.hash(into:)(&v128);
    v18 = Hasher._finalize()();
    v19 = -1 << *(a2 + 32);
    v20 = v18 & ~v19;
    if (((*(v9 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
LABEL_171:
      sub_100068204(&v133);
      return 0;
    }

    v121 = v11;
    v122 = v8;
    v21 = ~v19;
    v22 = v133;
    while (1)
    {
      v23 = *(a2 + 48) + 72 * v20;
      v128 = *v23;
      v25 = *(v23 + 32);
      v24 = *(v23 + 48);
      v26 = *(v23 + 16);
      v132 = *(v23 + 64);
      v131 = v24;
      v129 = v26;
      v130 = v25;
      if (v128 != v22 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_16;
      }

      if (*(&v129 + 1))
      {
        if (!*(&v134 + 1) || v129 != v134 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      else if (*(&v134 + 1))
      {
        goto LABEL_16;
      }

      if (*(&v130 + 1))
      {
        if (!*(&v135 + 1) || v130 != v135 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      else if (*(&v135 + 1))
      {
        goto LABEL_16;
      }

      v27 = *(&v136 + 1);
      if (*(&v131 + 1) >> 60 == 15)
      {
        if (*(&v136 + 1) >> 60 == 15)
        {
          goto LABEL_31;
        }

        goto LABEL_16;
      }

      if (*(&v136 + 1) >> 60 == 15)
      {
        goto LABEL_16;
      }

      v28 = *(&v131 + 1) >> 62;
      v29 = *(&v136 + 1) >> 62;
      if (*(&v131 + 1) >> 62 == 3)
      {
        v30 = 0;
        if (v131 == __PAIR128__(0xC000000000000000, 0) && *(&v136 + 1) >> 62 == 3)
        {
          v30 = 0;
          if (v136 == __PAIR128__(0xC000000000000000, 0))
          {
            goto LABEL_31;
          }
        }

        goto LABEL_54;
      }

      if (v28 <= 1)
      {
        if (!v28)
        {
          v30 = BYTE14(v131);
          if (v29 > 1)
          {
            break;
          }

          goto LABEL_55;
        }

        LODWORD(v30) = DWORD1(v131) - v131;
        if (__OFSUB__(DWORD1(v131), v131))
        {
          goto LABEL_176;
        }

        v30 = v30;
LABEL_54:
        if (v29 > 1)
        {
          break;
        }

        goto LABEL_55;
      }

      if (v28 == 2)
      {
        v36 = *(v131 + 16);
        v35 = *(v131 + 24);
        v33 = __OFSUB__(v35, v36);
        v30 = v35 - v36;
        if (v33)
        {
          goto LABEL_177;
        }

        goto LABEL_54;
      }

      v30 = 0;
      if (v29 > 1)
      {
        break;
      }

LABEL_55:
      if (!v29)
      {
        v34 = BYTE14(v136);
        goto LABEL_57;
      }

      if (__OFSUB__(DWORD1(v136), v136))
      {
        goto LABEL_174;
      }

      if (v30 == DWORD1(v136) - v136)
      {
        goto LABEL_61;
      }

LABEL_16:
      v20 = (v20 + 1) & v21;
      if (((*(v9 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        goto LABEL_171;
      }
    }

    if (v29 != 2)
    {
      if (v30)
      {
        goto LABEL_16;
      }

      goto LABEL_31;
    }

    v32 = *(v136 + 16);
    v31 = *(v136 + 24);
    v33 = __OFSUB__(v31, v32);
    v34 = v31 - v32;
    if (v33)
    {
      goto LABEL_175;
    }

LABEL_57:
    if (v30 != v34)
    {
      goto LABEL_16;
    }

LABEL_61:
    if (v30 >= 1)
    {
      break;
    }

LABEL_31:
    if (v132 != v137)
    {
      goto LABEL_16;
    }

    sub_100068204(&v133);
    a1 = v123;
    v7 = v121;
    v8 = v122;
    if (v121)
    {
      goto LABEL_7;
    }
  }

  if (v28 <= 1)
  {
    if (!v28)
    {
      __s1[0] = v131;
      LODWORD(__s1[1]) = DWORD2(v131);
      WORD2(__s1[1]) = WORD6(v131);
      if (v29)
      {
        if (v29 == 1)
        {
          v98 = (v136 >> 32) - v136;
          v109 = v136;
          if (v136 >> 32 < v136)
          {
            goto LABEL_182;
          }

          sub_1000681CC(&v128, &__s2);
          v37 = __DataStorage._bytes.getter();
          if (!v37)
          {
            goto LABEL_212;
          }

          v38 = v37;
          v39 = __DataStorage._offset.getter();
          if (__OFSUB__(v109, v39))
          {
            goto LABEL_186;
          }

          v40 = (v109 - v39 + v38);
          v41 = __DataStorage._length.getter();
          if (!v40)
          {
            goto LABEL_211;
          }

LABEL_109:
          if (v41 >= v98)
          {
            v67 = v98;
          }

          else
          {
            v67 = v41;
          }

          v68 = __s1;
LABEL_165:
          p_s2 = v40;
LABEL_166:
          v90 = memcmp(v68, p_s2, v67);
          sub_100068204(&v128);
          if (v90)
          {
            goto LABEL_16;
          }

          goto LABEL_31;
        }

        v104 = *(v136 + 24);
        v115 = *(v136 + 16);
        sub_1000681CC(&v128, &__s2);
        v59 = __DataStorage._bytes.getter();
        if (v59)
        {
          v60 = v59;
          v61 = __DataStorage._offset.getter();
          v62 = v115;
          if (__OFSUB__(v115, v61))
          {
            goto LABEL_191;
          }

          v63 = (v115 - v61 + v60);
        }

        else
        {
          v63 = 0;
          v62 = v115;
        }

        v120 = v63;
        v80 = v104 - v62;
        if (__OFSUB__(v104, v62))
        {
          goto LABEL_184;
        }

        v81 = __DataStorage._length.getter();
        p_s2 = v120;
        if (!v120)
        {
          goto LABEL_210;
        }

LABEL_130:
        if (v81 >= v80)
        {
          v67 = v80;
        }

        else
        {
          v67 = v81;
        }

        v68 = __s1;
        goto LABEL_166;
      }

LABEL_86:
      __s2 = v136;
      v126 = DWORD2(v136);
      v127 = WORD6(v136);
      if (memcmp(__s1, &__s2, BYTE14(v136)))
      {
        goto LABEL_16;
      }

      goto LABEL_31;
    }

    v100 = *(&v136 + 1) >> 62;
    v111 = v136;
    v96 = v131;
    if (v131 > v131 >> 32)
    {
      goto LABEL_178;
    }

    sub_1000681CC(&v128, &__s2);
    v44 = __DataStorage._bytes.getter();
    if (v44)
    {
      v93 = v44;
      v45 = __DataStorage._offset.getter();
      if (__OFSUB__(v96, v45))
      {
        goto LABEL_180;
      }

      v97 = (v96 + v93 - v45);
    }

    else
    {
      v97 = 0;
    }

    __DataStorage._length.getter();
    if (v100 != 2)
    {
      v55 = v111;
      if (v100 == 1)
      {
        v56 = v111;
        v114 = (v111 >> 32) - v111;
        if (v55 >> 32 < v55)
        {
          goto LABEL_189;
        }

        v57 = __DataStorage._bytes.getter();
        if (v57)
        {
          v103 = v57;
          v58 = __DataStorage._offset.getter();
          if (__OFSUB__(v56, v58))
          {
            goto LABEL_196;
          }

          v40 = (v56 - v58 + v103);
        }

        else
        {
          v40 = 0;
        }

        v89 = __DataStorage._length.getter();
        v86 = v114;
        if (v89 < v114)
        {
          v86 = v89;
        }

        v68 = v97;
        if (!v97)
        {
          goto LABEL_206;
        }

        if (!v40)
        {
          goto LABEL_207;
        }

        goto LABEL_162;
      }

      v68 = v97;
      __s2 = v111;
      LOWORD(v126) = v27;
      BYTE2(v126) = BYTE2(v27);
      HIBYTE(v126) = BYTE3(v27);
      LOBYTE(v127) = BYTE4(v27);
      HIBYTE(v127) = BYTE5(v27);
      if (!v97)
      {
        goto LABEL_205;
      }

LABEL_122:
      v67 = BYTE6(v27);
      p_s2 = &__s2;
      goto LABEL_166;
    }

    v106 = *(v111 + 16);
    v118 = *(v111 + 24);
    v74 = __DataStorage._bytes.getter();
    if (v74)
    {
      v75 = v74;
      v76 = __DataStorage._offset.getter();
      v77 = v106;
      if (__OFSUB__(v106, v76))
      {
        goto LABEL_194;
      }

      v78 = (v106 - v76 + v75);
    }

    else
    {
      v78 = 0;
      v77 = v106;
    }

    v108 = v78;
    v87 = v118 - v77;
    if (__OFSUB__(v118, v77))
    {
      goto LABEL_190;
    }

    v88 = __DataStorage._length.getter();
    if (v88 >= v87)
    {
      v84 = v87;
    }

    else
    {
      v84 = v88;
    }

    v68 = v97;
    if (!v97)
    {
      goto LABEL_209;
    }

    p_s2 = v108;
    if (!v108)
    {
      goto LABEL_208;
    }

LABEL_155:
    if (v68 != p_s2)
    {
      v67 = v84;
      goto LABEL_166;
    }

    goto LABEL_163;
  }

  if (v28 == 2)
  {
    v99 = *(&v136 + 1) >> 62;
    v110 = v136;
    v94 = *(v131 + 16);
    sub_1000681CC(&v128, &__s2);
    v42 = __DataStorage._bytes.getter();
    if (v42)
    {
      v92 = v42;
      v43 = __DataStorage._offset.getter();
      if (__OFSUB__(v94, v43))
      {
        goto LABEL_179;
      }

      v95 = &v94[v92 - v43];
    }

    else
    {
      v95 = 0;
    }

    __DataStorage._length.getter();
    if (v99 == 2)
    {
      v105 = *(v110 + 16);
      v117 = *(v110 + 24);
      v69 = __DataStorage._bytes.getter();
      if (v69)
      {
        v70 = v69;
        v71 = __DataStorage._offset.getter();
        v72 = v105;
        if (__OFSUB__(v105, v71))
        {
          goto LABEL_193;
        }

        v73 = (v105 - v71 + v70);
      }

      else
      {
        v73 = 0;
        v72 = v105;
      }

      v107 = v73;
      v82 = v117 - v72;
      if (__OFSUB__(v117, v72))
      {
        goto LABEL_188;
      }

      v83 = __DataStorage._length.getter();
      if (v83 >= v82)
      {
        v84 = v82;
      }

      else
      {
        v84 = v83;
      }

      v68 = v95;
      if (!v95)
      {
        goto LABEL_203;
      }

      p_s2 = v107;
      if (!v107)
      {
        goto LABEL_204;
      }

      goto LABEL_155;
    }

    v51 = v110;
    if (v99 != 1)
    {
      v68 = v95;
      __s2 = v110;
      LOWORD(v126) = v27;
      BYTE2(v126) = BYTE2(v27);
      HIBYTE(v126) = BYTE3(v27);
      LOBYTE(v127) = BYTE4(v27);
      HIBYTE(v127) = BYTE5(v27);
      if (!v95)
      {
        goto LABEL_200;
      }

      goto LABEL_122;
    }

    v52 = v110;
    v113 = (v110 >> 32) - v110;
    if (v51 >> 32 < v51)
    {
      goto LABEL_183;
    }

    v53 = __DataStorage._bytes.getter();
    if (v53)
    {
      v102 = v53;
      v54 = __DataStorage._offset.getter();
      if (__OFSUB__(v52, v54))
      {
        goto LABEL_195;
      }

      v40 = (v52 - v54 + v102);
    }

    else
    {
      v40 = 0;
    }

    v85 = __DataStorage._length.getter();
    v86 = v113;
    if (v85 < v113)
    {
      v86 = v85;
    }

    v68 = v95;
    if (!v95)
    {
      goto LABEL_201;
    }

    if (!v40)
    {
      goto LABEL_202;
    }

LABEL_162:
    if (v68 != v40)
    {
      v67 = v86;
      goto LABEL_165;
    }

LABEL_163:
    sub_100068204(&v128);
    goto LABEL_31;
  }

  memset(__s1, 0, 14);
  if (!v29)
  {
    goto LABEL_86;
  }

  if (v29 == 2)
  {
    v101 = *(v136 + 24);
    v112 = *(v136 + 16);
    sub_1000681CC(&v128, &__s2);
    v46 = __DataStorage._bytes.getter();
    if (v46)
    {
      v47 = v46;
      v48 = __DataStorage._offset.getter();
      v49 = v112;
      if (__OFSUB__(v112, v48))
      {
        goto LABEL_192;
      }

      v50 = (v112 - v48 + v47);
    }

    else
    {
      v50 = 0;
      v49 = v112;
    }

    v119 = v50;
    v80 = v101 - v49;
    if (__OFSUB__(v101, v49))
    {
      goto LABEL_185;
    }

    v81 = __DataStorage._length.getter();
    p_s2 = v119;
    if (!v119)
    {
      goto LABEL_199;
    }

    goto LABEL_130;
  }

  v98 = (v136 >> 32) - v136;
  v116 = v136;
  if (v136 >> 32 < v136)
  {
    goto LABEL_181;
  }

  sub_1000681CC(&v128, &__s2);
  v64 = __DataStorage._bytes.getter();
  if (v64)
  {
    v65 = v64;
    v66 = __DataStorage._offset.getter();
    if (__OFSUB__(v116, v66))
    {
      goto LABEL_187;
    }

    v40 = (v116 - v66 + v65);
    v41 = __DataStorage._length.getter();
    if (!v40)
    {
      goto LABEL_198;
    }

    goto LABEL_109;
  }

  __DataStorage._length.getter();
LABEL_198:
  __break(1u);
LABEL_199:
  __break(1u);
LABEL_200:
  __break(1u);
LABEL_201:
  __break(1u);
LABEL_202:
  __break(1u);
LABEL_203:
  __break(1u);
LABEL_204:
  __break(1u);
LABEL_205:
  __break(1u);
LABEL_206:
  __break(1u);
LABEL_207:
  __break(1u);
LABEL_208:
  __break(1u);
LABEL_209:
  __break(1u);
LABEL_210:
  __break(1u);
LABEL_211:
  __break(1u);
LABEL_212:
  result = __DataStorage._length.getter();
  __break(1u);
  return result;
}

unint64_t ApprovalSettingsState.debugDescription.getter(uint64_t a1)
{
  _StringGuts.grow(_:)(35);

  v33._countAndFlagsBits = 0xD000000000000017;
  v33._object = 0x8000000100105EE0;
  v29._countAndFlagsBits = *(a1 + 16);

  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 0x73656972746E6520;
  v3._object = 0xEA00000000000A3ALL;
  String.append(_:)(v3);
  countAndFlagsBits = 0xD000000000000017;
  v45 = v33;
  v5 = -1 << *(a1 + 32);
  v6 = *(a1 + 56);
  v7 = ~v5;
  v8 = -v5;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v39 = a1;
  v40 = a1 + 56;
  v41 = v7;
  v42 = 0;
  v43 = v9 & v6;
  v44 = 0;
  sub_10006078C(&v29);
  *&v34[41] = *&v32[9];
  *&v34[16] = v31;
  *&v34[32] = *v32;
  v33 = v29;
  *v34 = v30;
  object = v29._object;
  v11 = v30;
  v38 = v32[24];
  v36 = *&v34[24];
  v37 = *&v34[40];
  v35 = *&v34[8];
  if (v30)
  {
    do
    {
      v46 = object;
      v47 = v11;
      v48 = v35;
      v49 = v36;
      v50 = v37;
      v51 = v38;
      v29._countAndFlagsBits = 0x207865646E492020;
      v29._object = 0xE800000000000000;
      v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v16);

      v17._countAndFlagsBits = 2618;
      v17._object = 0xE200000000000000;
      String.append(_:)(v17);
      String.append(_:)(v29);

      v18 = ApprovalSettingsStateEntry.debugDescription.getter();
      v21 = sub_10004448C(0x7FFFFFFFFFFFFFFFLL, 1, v18, v19, v20);
      v22 = *(v21 + 16);
      if (v22)
      {
        sub_1000635A4(0, v22, 0);
        v23 = v21 + 56;
        do
        {
          v29._countAndFlagsBits = 538976288;
          v29._object = 0xE400000000000000;

          v24._countAndFlagsBits = static String._fromSubstring(_:)();
          String.append(_:)(v24);

          v25 = v29;
          v27 = _swiftEmptyArrayStorage[2];
          v26 = _swiftEmptyArrayStorage[3];
          if (v27 >= v26 >> 1)
          {
            sub_1000635A4((v26 > 1), v27 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v27 + 1;
          *&_swiftEmptyArrayStorage[2 * v27 + 4] = v25;
          v23 += 32;
          --v22;
        }

        while (v22);
      }

      v29._countAndFlagsBits = _swiftEmptyArrayStorage;
      sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
      sub_10001455C(&qword_100134288, &qword_100136C80, &qword_1000F39B0, &protocol conformance descriptor for [A]);
      v12 = BidirectionalCollection<>.joined(separator:)();
      v14 = v13;

      v29._countAndFlagsBits = v12;
      v29._object = v14;

      v15._countAndFlagsBits = 10;
      v15._object = 0xE100000000000000;
      String.append(_:)(v15);

      String.append(_:)(v29);

      sub_10000A184(&v33, &qword_100135BD0, &unk_1000F6B20);
      sub_10006078C(&v29);
      v33 = v29;
      *v34 = v30;
      *&v34[16] = v31;
      *&v34[32] = *v32;
      *&v34[41] = *&v32[9];
      object = v29._object;
      v11 = v30;
      v38 = v32[24];
      v36 = *&v34[24];
      v37 = *&v34[40];
      v35 = *&v34[8];
    }

    while (v30);
    countAndFlagsBits = v45._countAndFlagsBits;
  }

  sub_1000145A4(v39);
  return countAndFlagsBits;
}

uint64_t sub_10006078C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  if (!v3)
  {
    v5 = (v1[2] + 64) >> 6;
    if (v5 <= v2 + 1)
    {
      v6 = v2 + 1;
    }

    else
    {
      v6 = (v1[2] + 64) >> 6;
    }

    v7 = v6 - 1;
    while (1)
    {
      v4 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if (v4 >= v5)
      {
        v1[3] = v7;
        v1[4] = 0;
        *a1 = 0u;
        *(a1 + 16) = 0u;
        *(a1 + 32) = 0u;
        *(a1 + 48) = 0u;
        *(a1 + 57) = 0u;
        return result;
      }

      v3 = *(v1[1] + 8 * v4);
      ++v2;
      if (v3)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

  v4 = v1[3];
LABEL_10:
  v8 = *(*v1 + 48) + 72 * (__clz(__rbit64(v3)) | (v4 << 6));
  v17 = *v8;
  v9 = *(v8 + 16);
  v10 = *(v8 + 32);
  v11 = *(v8 + 48);
  v21 = *(v8 + 64);
  v19 = v10;
  v20 = v11;
  v18 = v9;
  v1[3] = v4;
  v1[4] = (v3 - 1) & v3;
  v12 = v1[5];
  if (__OFADD__(v12, 1))
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v1[5] = v12 + 1;
  *a1 = v12;
  v13 = v17;
  *(a1 + 24) = v18;
  v14 = v20;
  *(a1 + 40) = v19;
  *(a1 + 56) = v14;
  *(a1 + 72) = v21;
  *(a1 + 8) = v13;
  return sub_1000681CC(&v17, v16);
}

uint64_t ApprovalSettingsStateEntry.debugDescription.getter()
{
  *&v21 = 0;
  *(&v21 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(83);
  v19 = v21;
  v1._countAndFlagsBits = 0xD000000000000013;
  v1._object = 0x8000000100105F00;
  String.append(_:)(v1);
  String.append(_:)(*v0);
  v2._countAndFlagsBits = 0x79616C707369440ALL;
  v2._object = 0xEF203A656D614E20;
  String.append(_:)(v2);
  v20 = *(v0 + 16);
  v21 = v20;
  sub_100014894(&v21, &v18, &qword_100135108, &unk_1000F4FD8);
  sub_100003CDC(&qword_100135108, &unk_1000F4FD8);
  v3._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 0x542065676173550ALL;
  v4._object = 0xED0000203A747865;
  String.append(_:)(v4);
  v20 = *(v0 + 32);
  v18 = *(v0 + 32);
  sub_100014894(&v20, v17, &qword_100135108, &unk_1000F4FD8);
  v5._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 0x3A656372756F530ALL;
  v6._object = 0xE900000000000020;
  String.append(_:)(v6);
  v7._countAndFlagsBits = ApprovalDBEntrySource.description.getter(*(v0 + 48), *(v0 + 56));
  String.append(_:)(v7);

  v8._object = 0x8000000100105F20;
  v8._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v8);
  if (qword_100133A30 != -1)
  {
    swift_once();
  }

  v10 = __chkstk_darwin(off_100135B38, v9);
  v11 = sub_10006573C(v10, sub_10006861C);
  v12 = sub_10005B7B4(v11);
  v14 = v13;

  if (v14)
  {
    v16._countAndFlagsBits = v12;
    v16._object = v14;
    String.append(_:)(v16);

    return v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ApprovalSettingsStateEntry.driverIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ApprovalSettingsStateEntry.displayName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ApprovalSettingsStateEntry.source.getter()
{
  v1 = *(v0 + 48);
  sub_1000146B0(v1, *(v0 + 56));
  return v1;
}

unint64_t sub_100060BB0()
{
  v1 = *v0;
  v2 = 0x4E79616C70736964;
  v3 = 0x7865546567617375;
  v4 = 0x656372756F73;
  if (v1 != 3)
  {
    v4 = 0x6C61766F72707061;
  }

  if (v1 != 2)
  {
    v3 = v4;
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

uint64_t sub_100060C64@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100066B18(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100060C8C(uint64_t a1)
{
  v2 = sub_100066AC4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100060CC8(uint64_t a1)
{
  v2 = sub_100066AC4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ApprovalSettingsStateEntry.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_100003CDC(&qword_100135BD8, &qword_1000F6B30);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v12[-v8 - 8];
  sub_100003C4C(a1, a1[3]);
  sub_100066AC4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v13) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v13) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v13) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v13 = *(v3 + 48);
    v14 = v13;
    v12[23] = 3;
    sub_100065F9C(&v14, v12);
    sub_100065FD4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100014528(v13, *(&v13 + 1));
    LOBYTE(v13) = *(v3 + 64);
    v12[0] = 4;
    sub_100066028();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

__n128 ApprovalSettingsStateEntry.init(from:)@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100066CE4(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7;
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

BOOL sub_100060FD0(uint64_t a1, uint64_t a2)
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
  return _s10driverkitd26ApprovalSettingsStateEntryV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v9);
}

void ApprovalSettingsStateEntry.hash(into:)(uint64_t a1)
{
  String.hash(into:)();
  if (*(v1 + 24))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (*(v1 + 40))
    {
LABEL_3:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      goto LABEL_6;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (*(v1 + 40))
    {
      goto LABEL_3;
    }
  }

  Hasher._combine(_:)(0);
LABEL_6:
  if (*(v1 + 56) >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1uLL);
    Data.hash(into:)();
  }

  Hasher._combine(_:)(*(v1 + 64));
}

Swift::Int ApprovalSettingsStateEntry.hashValue.getter()
{
  Hasher.init(_seed:)();
  ApprovalSettingsStateEntry.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100061148(uint64_t a1)
{
  Hasher.init(_seed:)();
  ApprovalSettingsStateEntry.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t ApprovalStateUpdateRequest.__allocating_init(entry:callback:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v7 = *(a1 + 16);
  *(v6 + 16) = *a1;
  *(v6 + 32) = v7;
  *(v6 + 48) = *(a1 + 32);
  *(v6 + 56) = a2;
  *(v6 + 64) = a3;
  static Date.now.getter();
  return v6;
}

uint64_t ApprovalStateUpdateRequest.init(entry:callback:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  *(v3 + 16) = *a1;
  *(v3 + 32) = v12;
  *(v3 + 48) = *(a1 + 32);
  *(v3 + 56) = a2;
  *(v3 + 64) = a3;
  static Date.now.getter();
  (*(v8 + 32))(v3 + OBJC_IVAR____TtC10driverkitd26ApprovalStateUpdateRequest_timestamp, v11, v7);
  return v3;
}

char *ApprovalStateUpdateRequest.deinit()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  sub_100014528(v1, v2);

  v3 = OBJC_IVAR____TtC10driverkitd26ApprovalStateUpdateRequest_timestamp;
  v4 = type metadata accessor for Date();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t ApprovalStateUpdateRequest.__deallocating_deinit()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  sub_100014528(v1, v2);

  v3 = OBJC_IVAR____TtC10driverkitd26ApprovalStateUpdateRequest_timestamp;
  v4 = type metadata accessor for Date();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

unint64_t ApprovalStateUpdateRequest.description.getter()
{
  _StringGuts.grow(_:)(26);

  type metadata accessor for Date();
  sub_100068088(&unk_1001372C0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v0._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 8250;
  v1._object = 0xE200000000000000;
  String.append(_:)(v1);
  v2._countAndFlagsBits = ApprovalDBEntry.description.getter();
  String.append(_:)(v2);

  return 0xD000000000000014;
}

unint64_t sub_1000615C4(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_100068088(&qword_100134FC8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1000621B4(a1, v2, &type metadata accessor for UUID, &qword_100134FC0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
}

unint64_t sub_1000616D4(uint64_t a1)
{
  v1 = a1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  v2 = Hasher._finalize()();

  return sub_100062144(v1, v2);
}

unint64_t sub_100061740(uint64_t a1)
{
  type metadata accessor for URL();
  sub_100068088(&qword_1001342B0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1000621B4(a1, v2, &type metadata accessor for URL, &qword_1001342B8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
}

unint64_t sub_100061814(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_100062354(a1, v2);
}

uint64_t sub_1000618D4(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, Swift::Int))
{
  Hasher.init(_seed:)();
  a3(v10, a1, a2);
  v7 = Hasher._finalize()();

  return a4(a1, a2, v7);
}

unint64_t sub_100061968(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init(_seed:)();
  sub_1000D7374();
  String.hash(into:)();

  sub_1000D7614();
  if (v7)
  {
    v8 = String._bridgeToObjectiveC()();

    v9 = OSKextParseVersionCFString();
  }

  else
  {
    v9 = 0;
  }

  Hasher._combine(_:)(v9);
  sub_1000138F8(a1 + 24, v18);
  if (v19)
  {
    if (v19 == 1)
    {
      v10 = *&v18[0];
      sub_100068088(&qword_1001342B0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      dispatch thunk of Hashable.hash(into:)();
      Hasher._combine(_:)(*(v10 + OBJC_IVAR____TtC10driverkitd16KernelCollection_kind));
    }
  }

  else
  {
    sub_100009F34(v18, v15);
    v11 = v16;
    v12 = v17;
    sub_100003C4C(v15, v16);
    (*(v12 + 64))(v11, v12);
    sub_100068088(&qword_1001342B0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    dispatch thunk of Hashable.hash(into:)();
    (*(v3 + 8))(v6, v2);
    sub_100003C90(v15);
  }

  v13 = Hasher._finalize()();
  return sub_100062858(a1, v13);
}

unint64_t sub_100061BF8(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003CDC(&unk_1001389D0, &qword_1000F4F60);
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v13 - v9;
  Hasher.init(_seed:)();
  sub_100014894(a1, v10, &unk_1001389D0, &qword_1000F4F60);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    Hasher._combine(_:)(1u);
    sub_100068088(&qword_1001342B0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    dispatch thunk of Hashable.hash(into:)();
    (*(v3 + 8))(v6, v2);
  }

  v11 = Hasher._finalize()();
  return sub_100062D98(a1, v11);
}

unint64_t sub_100061E08(uint64_t a1)
{
  v1 = a1;
  Hasher.init(_seed:)();
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return sub_100063214(v1, v2);
}

unint64_t sub_100061ECC(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for CFString(0);
  sub_100068088(&qword_100135DD8, type metadata accessor for CFString, &unk_1000F36FC);
  _CFObject.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_100063398(a1, v2);
}

unint64_t sub_100061F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();

  return sub_1000634A4(a1, a2, a3, a4, v8);
}

unint64_t sub_100062020(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1000620D8(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100062144(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1000621B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8);
      sub_100068088(v24, v25, v26);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t sub_100062354(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_100062458(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = v3;
    v8 = a2;
    v9 = a1;
    v10 = ~v5;
    if (a1)
    {
      v11 = 0;
    }

    else
    {
      v11 = a2 == 0xC000000000000000;
    }

    v12 = !v11;
    v43 = v12;
    v13 = a2 >> 62;
    v14 = __OFSUB__(HIDWORD(a1), a1);
    v40 = v14;
    v39 = HIDWORD(a1) - a1;
    v41 = v10;
    v42 = BYTE6(a2);
    v36 = v4;
    while (1)
    {
      v15 = (*(v7 + 48) + 16 * v6);
      v17 = *v15;
      v16 = v15[1];
      v18 = v16 >> 62;
      if (v16 >> 62 == 3)
      {
        break;
      }

      if (v18 > 1)
      {
        if (v18 != 2)
        {
          goto LABEL_36;
        }

        v24 = *(v17 + 16);
        v23 = *(v17 + 24);
        v25 = __OFSUB__(v23, v24);
        v22 = v23 - v24;
        if (v25)
        {
          goto LABEL_64;
        }

        if (v13 <= 1)
        {
          goto LABEL_33;
        }
      }

      else if (v18)
      {
        LODWORD(v22) = HIDWORD(v17) - v17;
        if (__OFSUB__(HIDWORD(v17), v17))
        {
          goto LABEL_65;
        }

        v22 = v22;
        if (v13 <= 1)
        {
LABEL_33:
          v26 = v42;
          if (v13)
          {
            v26 = v39;
            if (v40)
            {
              goto LABEL_63;
            }
          }

          goto LABEL_39;
        }
      }

      else
      {
        v22 = BYTE6(v16);
        if (v13 <= 1)
        {
          goto LABEL_33;
        }
      }

LABEL_37:
      if (v13 != 2)
      {
        if (!v22)
        {
          return v6;
        }

        goto LABEL_13;
      }

      v28 = *(v9 + 16);
      v27 = *(v9 + 24);
      v25 = __OFSUB__(v27, v28);
      v26 = v27 - v28;
      if (v25)
      {
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
      }

LABEL_39:
      if (v22 != v26)
      {
        goto LABEL_13;
      }

      if (v22 < 1)
      {
        return v6;
      }

      if (v18 <= 1)
      {
        if (!v18)
        {
          v45[0] = v17;
          LOWORD(v45[1]) = v16;
          BYTE2(v45[1]) = BYTE2(v16);
          BYTE3(v45[1]) = BYTE3(v16);
          BYTE4(v45[1]) = BYTE4(v16);
          BYTE5(v45[1]) = BYTE5(v16);
          sub_1000146C4(v17, v16);
          sub_100045F4C(v45, v9, v8, &v44);
          sub_1000128D8(v17, v16);
          if (v44)
          {
            return v6;
          }

          v10 = v41;
          goto LABEL_13;
        }

        if (v17 >> 32 < v17)
        {
          goto LABEL_66;
        }

        sub_1000146C4(v17, v16);
        v31 = __DataStorage._bytes.getter();
        if (v31)
        {
          v33 = __DataStorage._offset.getter();
          if (__OFSUB__(v17, v33))
          {
            goto LABEL_69;
          }

          v31 += v17 - v33;
        }

        goto LABEL_58;
      }

      if (v18 == 2)
      {
        v30 = *(v17 + 16);
        v29 = *(v17 + 24);
        sub_1000146C4(v17, v16);
        v31 = __DataStorage._bytes.getter();
        if (v31)
        {
          v32 = __DataStorage._offset.getter();
          if (__OFSUB__(v30, v32))
          {
            goto LABEL_68;
          }

          v31 += v30 - v32;
        }

        if (__OFSUB__(v29, v30))
        {
          goto LABEL_67;
        }

LABEL_58:
        __DataStorage._length.getter();
        v34 = v31;
        v9 = a1;
        v8 = a2;
        sub_100045F4C(v34, a1, a2, v45);
        sub_1000128D8(v17, v16);
        if (v45[0])
        {
          return v6;
        }

        v4 = v36;
        v10 = v41;
        goto LABEL_13;
      }

      memset(v45, 0, 14);
      sub_1000146C4(v17, v16);
      sub_100045F4C(v45, v9, v8, &v44);
      sub_1000128D8(v17, v16);
      if (v44)
      {
        return v6;
      }

LABEL_13:
      v6 = (v6 + 1) & v10;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        return v6;
      }
    }

    if (v17)
    {
      v19 = 0;
    }

    else
    {
      v19 = v16 == 0xC000000000000000;
    }

    v21 = !v19 || v13 < 3;
    if (((v21 | v43) & 1) == 0)
    {
      return v6;
    }

LABEL_36:
    v22 = 0;
    if (v13 <= 1)
    {
      goto LABEL_33;
    }

    goto LABEL_37;
  }

  return v6;
}

unint64_t sub_100062858(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  v41 = v2 + 64;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = v2;
    v40 = ~v3;
    v6 = *(a1 + 16);
    do
    {
      v7 = *(*(v5 + 48) + 8 * v4);
      v8 = *(v7 + 16);
      v9 = qword_100133A50;

      if (v9 != -1)
      {
        swift_once();
      }

      v10 = qword_10014E8C0;
      v11 = *algn_10014E8C8;
      if (*(v8 + 16) && (v12 = sub_1000618D4(qword_10014E8C0, *algn_10014E8C8, &String.hash(into:), sub_100062020), (v13 & 1) != 0) && (sub_10000B430(*(v8 + 56) + 32 * v12, v44), (swift_dynamicCast() & 1) != 0))
      {
        v15 = v42;
        v14 = v43;
        if (!*(v6 + 16))
        {
          goto LABEL_18;
        }
      }

      else
      {
        v15 = 0xD000000000000014;
        v14 = 0x8000000100104280;
        if (!*(v6 + 16))
        {
          goto LABEL_18;
        }
      }

      v16 = sub_1000618D4(v10, v11, &String.hash(into:), sub_100062020);
      if (v17)
      {
        sub_10000B430(*(v6 + 56) + 32 * v16, v44);
        if (swift_dynamicCast())
        {
          v18 = v43;
          if (v15 != v42)
          {
            goto LABEL_21;
          }

          goto LABEL_19;
        }
      }

LABEL_18:
      v18 = 0x8000000100104280;
      if (v15 != 0xD000000000000014)
      {
        goto LABEL_21;
      }

LABEL_19:
      if (v14 == v18)
      {

        goto LABEL_22;
      }

LABEL_21:
      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v19 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_22:
      v20 = *(v7 + 16);
      if (*(v20 + 16) && (v21 = sub_1000618D4(v10, v11, &String.hash(into:), sub_100062020), (v22 & 1) != 0) && (sub_10000B430(*(v20 + 56) + 32 * v21, v44), (swift_dynamicCast() & 1) != 0))
      {
        v23 = v42;
        v24 = v43;
      }

      else
      {
        v23 = 0xD000000000000014;
        v24 = 0x8000000100104280;
      }

      if (v23 == 0xD000000000000014 && 0x8000000100104280 == v24)
      {

        goto LABEL_5;
      }

      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v25)
      {
LABEL_4:

        goto LABEL_5;
      }

      v26 = *(v7 + 16);
      if (qword_100133A70 != -1)
      {
        swift_once();
      }

      v27 = qword_10014E900;
      v28 = *algn_10014E908;
      if (*(v26 + 16) && (v29 = sub_1000618D4(qword_10014E900, *algn_10014E908, &String.hash(into:), sub_100062020), (v30 & 1) != 0) && (sub_10000B430(*(v26 + 56) + 32 * v29, v44), swift_dynamicCast()))
      {
        v31 = String._bridgeToObjectiveC()();

        v32 = OSKextParseVersionCFString();

        if (!*(v6 + 16))
        {
          goto LABEL_3;
        }
      }

      else
      {
        v32 = 0;
        if (!*(v6 + 16))
        {
          goto LABEL_3;
        }
      }

      v33 = sub_1000618D4(v27, v28, &String.hash(into:), sub_100062020);
      if ((v34 & 1) == 0 || (sub_10000B430(*(v6 + 56) + 32 * v33, v44), !swift_dynamicCast()))
      {
LABEL_3:
        if (v32)
        {
          goto LABEL_4;
        }

        goto LABEL_42;
      }

      v35 = String._bridgeToObjectiveC()();

      v36 = OSKextParseVersionCFString();

      if (v32 != v36)
      {
        goto LABEL_4;
      }

LABEL_42:
      v37 = sub_1000DCBA8(v7 + 24, a1 + 24);

      if (v37)
      {
        return v4;
      }

LABEL_5:
      v4 = (v4 + 1) & v40;
    }

    while (((*(v41 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100062D98(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v42 = a1;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v34 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_100003CDC(&qword_100135E60, &qword_1000F7C18);
  __chkstk_darwin(v41, v9);
  v11 = &v32 - v10;
  v12 = sub_100003CDC(&unk_1001389D0, &qword_1000F4F60) - 8;
  v14 = __chkstk_darwin(v12, v13);
  __chkstk_darwin(v14, v15);
  v19 = &v32 - v18;
  v43 = v3;
  v20 = -1 << *(v3 + 32);
  v21 = a2 & ~v20;
  v40 = v3 + 64;
  if ((*(v3 + 64 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
  {
    v22 = ~v20;
    v23 = (v6 + 48);
    v24 = *(v16 + 72);
    v38 = v17;
    v39 = v24;
    v32 = (v6 + 48);
    v33 = (v6 + 32);
    v36 = (v6 + 8);
    v37 = ~v20;
    while (1)
    {
      sub_100014894(*(v43 + 48) + v39 * v21, v19, &unk_1001389D0, &qword_1000F4F60);
      v25 = *(v41 + 48);
      sub_100014894(v19, v11, &unk_1001389D0, &qword_1000F4F60);
      sub_100014894(v42, &v11[v25], &unk_1001389D0, &qword_1000F4F60);
      v26 = *v23;
      if ((*v23)(v11, 1, v5) == 1)
      {
        break;
      }

      v27 = v38;
      sub_100014894(v11, v38, &unk_1001389D0, &qword_1000F4F60);
      if (v26(&v11[v25], 1, v5) == 1)
      {
        sub_10000A184(v19, &unk_1001389D0, &qword_1000F4F60);
        (*v36)(v27, v5);
        v22 = v37;
LABEL_4:
        sub_10000A184(v11, &qword_100135E60, &qword_1000F7C18);
        goto LABEL_5;
      }

      v28 = &v11[v25];
      v29 = v34;
      (*v33)(v34, v28, v5);
      sub_100068088(&qword_1001342B8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v35 = dispatch thunk of static Equatable.== infix(_:_:)();
      v30 = *v36;
      (*v36)(v29, v5);
      sub_10000A184(v19, &unk_1001389D0, &qword_1000F4F60);
      v30(v27, v5);
      v23 = v32;
      sub_10000A184(v11, &unk_1001389D0, &qword_1000F4F60);
      v22 = v37;
      if (v35)
      {
        return v21;
      }

LABEL_5:
      v21 = (v21 + 1) & v22;
      if (((*(v40 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
      {
        return v21;
      }
    }

    sub_10000A184(v19, &unk_1001389D0, &qword_1000F4F60);
    if (v26(&v11[v25], 1, v5) == 1)
    {
      sub_10000A184(v11, &unk_1001389D0, &qword_1000F4F60);
      return v21;
    }

    goto LABEL_4;
  }

  return v21;
}

unint64_t sub_100063214(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v13 = ~v3;
    while (1)
    {
      v5 = 0xD00000000000001ALL;
      if (*(*(v2 + 48) + v4) == 1)
      {
        v6 = "OSKextExcludeList";
      }

      else
      {
        v5 = 0xD00000000000001DLL;
        v6 = "OSKextSigExceptionHashList";
      }

      v7 = *(*(v2 + 48) + v4) ? v5 : 0xD000000000000011;
      v8 = *(*(v2 + 48) + v4) ? v6 : "com.apple.message.bundlePath";
      if (a1)
      {
        v9 = a1 == 1 ? 0xD00000000000001ALL : 0xD00000000000001DLL;
        v10 = a1 == 1 ? "OSKextExcludeList" : "OSKextSigExceptionHashList";
      }

      else
      {
        v9 = 0xD000000000000011;
        v10 = "com.apple.message.bundlePath";
      }

      if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v13;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_100063398(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_100068088(&qword_100135DD8, type metadata accessor for CFString, &unk_1000F36FC);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static _CFObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1000634A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = (v14 + 32 * v8);
      v16 = v15[2];
      v17 = v15[3];
      v18 = *v15 == a1 && v15[1] == a2;
      if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v19 = v16 == a3 && v17 == a4;
        if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

char *sub_1000635A4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10006374C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000635C4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100063BB0(a1, a2, a3, *v3, &qword_100135088, &unk_1000F7B90, &type metadata accessor for URL);
  *v3 = result;
  return result;
}

char *sub_100063608(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10006398C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100063628(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100063AAC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100063648(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100063BB0(a1, a2, a3, *v3, &qword_100135080, &unk_1000F4F40, type metadata accessor for ActiveDriverInfo);
  *v3 = result;
  return result;
}

char *sub_10006368C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100063D8C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000636AC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100063E98(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000636CC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100063F8C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000636EC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100064270(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10006370C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000643A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10006372C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000644D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10006374C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003CDC(&qword_1001342F0, &qword_1000F3AB0);
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

void *sub_100063858(void *result, int64_t a2, char a3, void *a4)
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
    sub_100003CDC(&qword_100135148, &unk_1000F5030);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100003CDC(&qword_100135150, &qword_1000F7BA0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10006398C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003CDC(&qword_100135DB0, &qword_1000F7B78);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100063AAC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003CDC(&qword_100134FF8, &unk_1000F7B80);
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

void *sub_100063BB0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_100003CDC(a5, a6);
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

char *sub_100063D8C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003CDC(&qword_100135DE0, &qword_1000F7BC0);
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

char *sub_100063E98(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003CDC(&qword_100135E70, &qword_1000F7C38);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_100063F8C(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100003CDC(&qword_1001351A0, &unk_1000F7C20);
  v10 = *(sub_100003CDC(&qword_100135198, &unk_1000F5080) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_100003CDC(&qword_100135198, &unk_1000F5080) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_10006417C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003CDC(&qword_100135E68, &qword_1000F7C30);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_100064270(void *result, int64_t a2, char a3, void *a4)
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
    sub_100003CDC(&qword_100135100, &qword_1000F4FD0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100003CDC(&qword_100135108, &unk_1000F4FD8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1000643A4(void *result, int64_t a2, char a3, void *a4)
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
    sub_100003CDC(&qword_100135DC8, &qword_1000F7BB0);
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
    sub_100003CDC(&qword_100135DD0, &qword_1000F7BB8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1000644D8(void *result, int64_t a2, char a3, void *a4)
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
    sub_100003CDC(&qword_100135008, &qword_1000F4EC0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100003CDC(&qword_100135010, &qword_1000F4EC8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t *sub_100064628(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_1000655DC(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1000646D0(unint64_t a1)
{
  if (a1 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

BOOL sub_10006475C(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_1000146C4(a3, a4);
          return sub_10004617C(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1000648C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = a1 + 32;
  v5 = (a2 + 64);
  v85 = a1 + 32;
  v86 = *(a1 + 16);
  v84 = (a2 + 64);
  while (2)
  {
    result = v3 == v2;
    if (v3 != v2)
    {
      v7 = (v4 + 40 * v3);
      v9 = *v7;
      v8 = v7[1];
      v10 = v7[2];
      v11 = v7[3];
      v87 = *(v7 + 32);
      v88 = v3 == v2;
      v89 = v3 + 1;

      sub_1000146B0(v10, v11);
      if (v10)
      {
        v12 = 0;
      }

      else
      {
        v12 = v11 == 0xC000000000000000;
      }

      v13 = !v12;
      v97 = v13;
      v99 = v10;
      v100 = v11 >> 62;
      v91 = HIDWORD(v10);
      v14 = __OFSUB__(HIDWORD(v10), v10);
      v95 = v14;
      __n = BYTE6(v11);
      v93 = v10;
      v94 = HIDWORD(v10) - v10;
      v92 = v10 >> 32;
      v90 = (v10 >> 32) - v10;
      v96 = v11;
      while (1)
      {
        if (!v2)
        {
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
LABEL_172:
          __break(1u);
LABEL_173:
          __break(1u);
LABEL_174:
          __break(1u);
LABEL_175:
          __break(1u);
LABEL_176:
          __break(1u);
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
          __break(1u);
LABEL_181:
          __break(1u);
LABEL_182:
          __break(1u);
LABEL_183:
          __break(1u);
LABEL_184:
          __break(1u);
LABEL_185:
          __break(1u);
LABEL_186:
          __break(1u);
LABEL_187:
          __break(1u);
LABEL_188:
          __break(1u);
        }

        v16 = *(v5 - 2);
        v15 = *(v5 - 1);
        v101 = *v5;
        v17 = *(v5 - 4) == v9 && *(v5 - 3) == v8;
        if (!v17 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_15;
        }

        if (v15 >> 60 == 15)
        {
          if (v11 >> 60 == 15)
          {
            goto LABEL_159;
          }

          goto LABEL_15;
        }

        if (v11 >> 60 != 15)
        {
          break;
        }

LABEL_15:
        v5 += 40;
        if (!--v2)
        {

          sub_100014528(v99, v11);
          return 0;
        }
      }

      v18 = v15 >> 62;
      if (v15 >> 62 == 3)
      {
        if (v16)
        {
          v19 = 0;
        }

        else
        {
          v19 = v15 == 0xC000000000000000;
        }

        v20 = v100;
        v22 = !v19 || v100 < 3;
        if (((v22 | v97) & 1) == 0)
        {

          v72 = 0;
          v73 = 0xC000000000000000;
          goto LABEL_160;
        }
      }

      else
      {
        v20 = v100;
        if (v18 <= 1)
        {
          if (v18)
          {
            LODWORD(v23) = HIDWORD(v16) - v16;
            if (__OFSUB__(HIDWORD(v16), v16))
            {
              goto LABEL_169;
            }

            v23 = v23;
            if (v100 > 1)
            {
              goto LABEL_47;
            }
          }

          else
          {
            v23 = BYTE6(v15);
            if (v100 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_43;
        }

        if (v18 == 2)
        {
          v25 = *(v16 + 16);
          v24 = *(v16 + 24);
          v26 = __OFSUB__(v24, v25);
          v23 = v24 - v25;
          if (v26)
          {
            goto LABEL_168;
          }

          if (v100 > 1)
          {
            goto LABEL_47;
          }

          goto LABEL_43;
        }
      }

      v23 = 0;
      if (v20 > 1)
      {
LABEL_47:
        if (v20 != 2)
        {
          if (!v23)
          {
            goto LABEL_159;
          }

          goto LABEL_15;
        }

        v29 = *(v99 + 16);
        v28 = *(v99 + 24);
        v26 = __OFSUB__(v28, v29);
        v27 = v28 - v29;
        if (v26)
        {
          goto LABEL_167;
        }

        goto LABEL_49;
      }

LABEL_43:
      v27 = __n;
      if (v20)
      {
        v27 = v94;
        if (v95)
        {
          goto LABEL_166;
        }
      }

LABEL_49:
      if (v23 == v27)
      {
        if (v23 < 1)
        {
          goto LABEL_159;
        }

        if (v18 > 1)
        {
          if (v18 == 2)
          {
            v34 = *(v16 + 16);

            sub_1000146B0(v16, v15);
            v35 = __DataStorage._bytes.getter();
            if (v35)
            {
              v36 = v35;
              v37 = __DataStorage._offset.getter();
              if (__OFSUB__(v34, v37))
              {
                goto LABEL_171;
              }

              v80 = (v34 - v37 + v36);
            }

            else
            {
              v80 = 0;
            }

            v11 = v96;
            __DataStorage._length.getter();
            if (v100 != 2)
            {
              if (v100 == 1)
              {
                if (v92 < v93)
                {
                  goto LABEL_176;
                }

                v44 = __DataStorage._bytes.getter();
                if (v44)
                {
                  v45 = __DataStorage._offset.getter();
                  if (__OFSUB__(v93, v45))
                  {
                    goto LABEL_187;
                  }

                  v44 += v93 - v45;
                }

                v46 = __DataStorage._length.getter();
                v47 = v90;
                if (v46 < v90)
                {
                  v47 = v46;
                }

                v48 = v80;
                if (!v80)
                {
                  goto LABEL_195;
                }

                if (!v44)
                {
                  goto LABEL_194;
                }

                goto LABEL_103;
              }

              v48 = v80;
              LODWORD(__s1[0]) = v99;
              BYTE4(__s1[0]) = v91;
              *(__s1 + 5) = *(&v99 + 5);
              HIBYTE(__s1[0]) = HIBYTE(v99);
              LODWORD(__s1[1]) = v96;
              WORD2(__s1[1]) = WORD2(v96);
              if (!v80)
              {
                goto LABEL_193;
              }

LABEL_126:
              v62 = __s1;
              v63 = __n;
LABEL_156:
              v71 = memcmp(v48, v62, v63);

              sub_100014528(v16, v15);
              if (!v71)
              {
                goto LABEL_159;
              }

              goto LABEL_15;
            }

            v74 = *(v99 + 24);
            v78 = *(v99 + 16);
            v44 = __DataStorage._bytes.getter();
            if (v44)
            {
              v58 = __DataStorage._offset.getter();
              v59 = v78;
              if (__OFSUB__(v78, v58))
              {
                goto LABEL_185;
              }

              v44 += v78 - v58;
            }

            else
            {
              v59 = v78;
            }

            v67 = v74 - v59;
            if (__OFSUB__(v74, v59))
            {
              goto LABEL_180;
            }

            v68 = __DataStorage._length.getter();
            if (v68 >= v67)
            {
              v47 = v67;
            }

            else
            {
              v47 = v68;
            }

            v48 = v80;
            if (!v80)
            {
              goto LABEL_189;
            }

            if (!v44)
            {
              __break(1u);
LABEL_189:
              __break(1u);
LABEL_190:
              __break(1u);
LABEL_191:
              __break(1u);
LABEL_192:
              __break(1u);
LABEL_193:
              __break(1u);
LABEL_194:
              __break(1u);
LABEL_195:
              __break(1u);
LABEL_196:
              __break(1u);
LABEL_197:
              __break(1u);
LABEL_198:
              __break(1u);
LABEL_199:
              __break(1u);
LABEL_200:
              __DataStorage._length.getter();
              __break(1u);
LABEL_201:
              result = __DataStorage._length.getter();
LABEL_202:
              __break(1u);
LABEL_203:
              __break(1u);
              return result;
            }

LABEL_154:
            v11 = v96;
            if (v48 == v44)
            {
LABEL_158:

              sub_100014528(v16, v15);
LABEL_159:

              v72 = v99;
              v73 = v11;
LABEL_160:
              sub_100014528(v72, v73);
              result = v88;
              v4 = v85;
              v2 = v86;
              v3 = v89;
              v5 = v84;
              if (v101 == v87)
              {
                continue;
              }

              return result;
            }

            goto LABEL_155;
          }

          memset(__s1, 0, 14);
          if (v100)
          {
            if (v100 == 2)
            {
              v76 = *(v99 + 24);
              v82 = *(v99 + 16);

              sub_1000146B0(v16, v15);
              v41 = __DataStorage._bytes.getter();
              if (v41)
              {
                v42 = __DataStorage._offset.getter();
                v43 = v82;
                if (__OFSUB__(v82, v42))
                {
                  goto LABEL_183;
                }

                v41 = &v82[v41 - v42];
              }

              else
              {
                v43 = v82;
              }

              v64 = v76 - v43;
              if (__OFSUB__(v76, v43))
              {
                goto LABEL_175;
              }

              result = __DataStorage._length.getter();
              if (!v41)
              {
                goto LABEL_203;
              }

LABEL_134:
              if (result >= v64)
              {
                v65 = v64;
              }

              else
              {
                v65 = result;
              }

              v66 = memcmp(__s1, v41, v65);

              sub_100014528(v16, v15);
              v11 = v96;
              if (!v66)
              {
                goto LABEL_159;
              }

              goto LABEL_15;
            }

            if (v92 < v93)
            {
              goto LABEL_174;
            }

            sub_1000146B0(v16, v15);
            v53 = __DataStorage._bytes.getter();
            if (!v53)
            {
              goto LABEL_201;
            }

            v54 = v53;
            v55 = __DataStorage._offset.getter();
            if (__OFSUB__(v93, v55))
            {
              goto LABEL_179;
            }

            v33 = (v93 - v55 + v54);
            result = __DataStorage._length.getter();
            if (!v33)
            {
              goto LABEL_202;
            }

            goto LABEL_112;
          }
        }

        else
        {
          if (v18)
          {
            if (v16 > v16 >> 32)
            {
              goto LABEL_170;
            }

            sub_1000146B0(v16, v15);
            v38 = __DataStorage._bytes.getter();
            if (v38)
            {
              v39 = v38;
              v40 = __DataStorage._offset.getter();
              if (__OFSUB__(v16, v40))
              {
                goto LABEL_172;
              }

              v81 = (v16 - v40 + v39);
            }

            else
            {
              v81 = 0;
            }

            v11 = v96;
            __DataStorage._length.getter();
            if (v100 == 2)
            {
              v75 = *(v99 + 24);
              v79 = *(v99 + 16);
              v44 = __DataStorage._bytes.getter();
              if (v44)
              {
                v60 = __DataStorage._offset.getter();
                v61 = v79;
                if (__OFSUB__(v79, v60))
                {
                  goto LABEL_186;
                }

                v44 += v79 - v60;
              }

              else
              {
                v61 = v79;
              }

              v69 = v75 - v61;
              if (__OFSUB__(v75, v61))
              {
                goto LABEL_182;
              }

              v70 = __DataStorage._length.getter();
              if (v70 >= v69)
              {
                v47 = v69;
              }

              else
              {
                v47 = v70;
              }

              v48 = v81;
              if (!v81)
              {
                goto LABEL_197;
              }

              if (!v44)
              {
                goto LABEL_196;
              }

              goto LABEL_154;
            }

            if (v100 != 1)
            {
              v48 = v81;
              LODWORD(__s1[0]) = v99;
              BYTE4(__s1[0]) = v91;
              *(__s1 + 5) = *(&v99 + 5);
              HIBYTE(__s1[0]) = HIBYTE(v99);
              LODWORD(__s1[1]) = v96;
              WORD2(__s1[1]) = WORD2(v96);
              if (!v81)
              {
                goto LABEL_190;
              }

              goto LABEL_126;
            }

            if (v92 < v93)
            {
              goto LABEL_181;
            }

            v44 = __DataStorage._bytes.getter();
            if (v44)
            {
              v49 = __DataStorage._offset.getter();
              if (__OFSUB__(v93, v49))
              {
                goto LABEL_188;
              }

              v44 += v93 - v49;
            }

            v50 = __DataStorage._length.getter();
            v47 = v90;
            if (v50 < v90)
            {
              v47 = v50;
            }

            v48 = v81;
            if (!v81)
            {
              goto LABEL_192;
            }

            if (!v44)
            {
              goto LABEL_191;
            }

LABEL_103:
            if (v48 == v44)
            {
              goto LABEL_158;
            }

LABEL_155:
            v63 = v47;
            v62 = v44;
            goto LABEL_156;
          }

          __s1[0] = v16;
          LOWORD(__s1[1]) = v15;
          BYTE2(__s1[1]) = BYTE2(v15);
          BYTE3(__s1[1]) = BYTE3(v15);
          BYTE4(__s1[1]) = BYTE4(v15);
          BYTE5(__s1[1]) = BYTE5(v15);
          if (v100)
          {
            if (v100 != 1)
            {
              v77 = *(v99 + 24);
              v83 = *(v99 + 16);

              sub_1000146B0(v16, v15);
              v41 = __DataStorage._bytes.getter();
              if (v41)
              {
                v51 = __DataStorage._offset.getter();
                v52 = v83;
                if (__OFSUB__(v83, v51))
                {
                  goto LABEL_184;
                }

                v41 = &v83[v41 - v51];
              }

              else
              {
                v52 = v83;
              }

              v64 = v77 - v52;
              if (__OFSUB__(v77, v52))
              {
                goto LABEL_177;
              }

              result = __DataStorage._length.getter();
              if (!v41)
              {
                goto LABEL_198;
              }

              goto LABEL_134;
            }

            if (v92 < v93)
            {
              goto LABEL_173;
            }

            sub_1000146B0(v16, v15);
            v30 = __DataStorage._bytes.getter();
            if (!v30)
            {
              goto LABEL_200;
            }

            v31 = v30;
            v32 = __DataStorage._offset.getter();
            if (__OFSUB__(v93, v32))
            {
              goto LABEL_178;
            }

            v33 = (v93 - v32 + v31);
            result = __DataStorage._length.getter();
            if (!v33)
            {
              goto LABEL_199;
            }

LABEL_112:
            if (result >= v90)
            {
              v56 = v90;
            }

            else
            {
              v56 = result;
            }

            v57 = memcmp(__s1, v33, v56);

            sub_100014528(v16, v15);
            if (!v57)
            {
              goto LABEL_159;
            }

            goto LABEL_15;
          }
        }

        __s2 = v99;
        v103 = v91;
        v104 = *(&v99 + 5);
        v105 = HIBYTE(v99);
        v106 = v11;
        v107 = BYTE2(v11);
        v108 = BYTE3(v11);
        v109 = BYTE4(v11);
        v110 = BYTE5(v11);
        if (!memcmp(__s1, &__s2, __n))
        {
          goto LABEL_159;
        }
      }

      goto LABEL_15;
    }

    return result;
  }
}

BOOL _s10driverkitd15ApprovalDBEntryV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[3];
  v6 = *(a2 + 24);
  if (v5 >> 60 != 15)
  {
    if (v6 >> 60 == 15 || !sub_10006475C(a1[2], v5, *(a2 + 16), v6))
    {
      return 0;
    }

    return *(a1 + 32) == *(a2 + 32);
  }

  if (v6 >> 60 == 15)
  {
    return *(a1 + 32) == *(a2 + 32);
  }

  return 0;
}

BOOL _s10driverkitd26ApprovalSettingsStateEntryV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[3];
  v6 = *(a2 + 24);
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = a1[2] == *(a2 + 16) && v5 == v6;
    if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v8 = a1[5];
  v9 = *(a2 + 40);
  if (v8)
  {
    if (!v9 || (a1[4] != *(a2 + 32) || v8 != v9) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v10 = a1[7];
  v11 = *(a2 + 56);
  if (v10 >> 60 == 15)
  {
    if (v11 >> 60 == 15)
    {
      return *(a1 + 64) == *(a2 + 64);
    }
  }

  else if (v11 >> 60 != 15 && sub_10006475C(a1[6], v10, *(a2 + 48), v11))
  {
    return *(a1 + 64) == *(a2 + 64);
  }

  return 0;
}

uint64_t _s10driverkitd26ApprovalStateUpdateRequestC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = *(a2 + 32);
  v5 = *(a2 + 40);
  v7 = *(a2 + 48);
  v8 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v8 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v3 >> 60 != 15)
  {
    if (v5 >> 60 != 15 && sub_10006475C(v2, v3, v6, v5) && v4 == v7)
    {
      goto LABEL_17;
    }

    return 0;
  }

  if (v5 >> 60 != 15 || v4 != v7)
  {
    return 0;
  }

LABEL_17:

  return static Date.== infix(_:_:)();
}

unint64_t *sub_1000655DC(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v21 = result;
  v22 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = (*(a3 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    v18 = *(*(a3 + 56) + v14);

    LOBYTE(v18) = a4(v16, v17, v18);

    if (v18)
    {
      *(v21 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
        return sub_1000583E8(v21, a2, v22, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return sub_1000583E8(v21, a2, v22, a3);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_10006573C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v3 = v2;
  v5 = a1;
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = (1 << v6) + 63;
  v9 = v8 >> 6;
  v10 = 8 * (v8 >> 6);
  if (v7 <= 0xD)
  {
    goto LABEL_2;
  }

  v14 = 8 * (v8 >> 6);

  if (swift_stdlib_isStackAllocationSafe())
  {

    v10 = v14;
LABEL_2:
    __chkstk_darwin(a1, v10);
    v12 = &v18 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v12, v11);
    result = sub_1000655DC(v12, v9, v5, a2);
    if (v3)
    {
      return swift_willThrow();
    }

    return result;
  }

  v15 = swift_slowAlloc();
  v16 = v3;
  v17 = sub_100064628(v15, v9, v5, a2);

  if (!v16)
  {
    return v17;
  }

  return result;
}

unint64_t sub_1000658BC()
{
  result = qword_100135B58;
  if (!qword_100135B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135B58);
  }

  return result;
}

unint64_t sub_100065910()
{
  result = qword_100135B60;
  if (!qword_100135B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135B60);
  }

  return result;
}

unint64_t sub_100065964()
{
  result = qword_100135B68;
  if (!qword_100135B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135B68);
  }

  return result;
}

uint64_t sub_1000659B8(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 56) + 24 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

void *sub_100065A14(void *a1)
{
  v2 = sub_100003CDC(&qword_100135E38, &qword_1000F7BE8);
  v3 = *(v2 - 8);
  v30 = v2;
  v31 = v3;
  __chkstk_darwin(v2, v4);
  v6 = &v30 - v5;
  v7 = sub_100003CDC(&qword_100135E40, &qword_1000F7BF0);
  v32 = *(v7 - 8);
  __chkstk_darwin(v7, v8);
  v10 = &v30 - v9;
  v11 = sub_100003CDC(&qword_100135E48, &qword_1000F7BF8);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11, v13);
  v15 = &v30 - v14;
  v16 = a1[3];
  v39 = a1;
  v17 = sub_100003C4C(a1, v16);
  sub_1000658BC();
  v18 = v33;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v18)
  {
    v19 = v32;
    v33 = v12;
    v20 = KeyedDecodingContainer.allKeys.getter();
    v21 = (2 * *(v20 + 16)) | 1;
    v35 = v20;
    v36 = v20 + 32;
    v37 = 0;
    v38 = v21;
    v22 = sub_1000AC100();
    if (v22 == 2 || v37 != v38 >> 1)
    {
      v24 = type metadata accessor for DecodingError();
      swift_allocError();
      v26 = v25;
      sub_100003CDC(&qword_100135E50, &qword_1000F7C00);
      *v26 = &type metadata for ApprovalDBEntrySource;
      v17 = v15;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v24 - 8) + 104))(v26, enum case for DecodingError.typeMismatch(_:), v24);
      swift_willThrow();
      (*(v33 + 8))(v15, v11);
      swift_unknownObjectRelease();
    }

    else if (v22)
    {
      LOBYTE(v34) = 1;
      sub_100065910();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v23 = v33;
      sub_10001D590();
      v29 = v30;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v31 + 8))(v6, v29);
      (*(v23 + 8))(v15, v11);
      swift_unknownObjectRelease();
      v17 = v34;
    }

    else
    {
      LOBYTE(v34) = 0;
      sub_100065964();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v28 = v33;
      (*(v19 + 8))(v10, v7);
      (*(v28 + 8))(v15, v11);
      swift_unknownObjectRelease();
      v17 = 0;
    }
  }

  sub_100003C90(v39);
  return v17;
}

unint64_t sub_100065F48()
{
  result = qword_100135B78;
  if (!qword_100135B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135B78);
  }

  return result;
}

unint64_t sub_100065FD4()
{
  result = qword_100135B80;
  if (!qword_100135B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135B80);
  }

  return result;
}

unint64_t sub_100066028()
{
  result = qword_100135B88;
  if (!qword_100135B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135B88);
  }

  return result;
}

uint64_t sub_10006607C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000100105FD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C61766F72707061 && a2 == 0xED00006574617453)
  {

    return 2;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1000661A4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100003CDC(&qword_100135E30, &qword_1000F7BE0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v17 - v8;
  sub_100003C4C(a1, a1[3]);
  sub_100065F48();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100003C90(a1);
  }

  LOBYTE(v21) = 0;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v12 = v11;
  v20 = v10;
  v23 = 1;
  sub_100068124();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v18 = v21;
  v19 = v22;
  v23 = 2;
  sub_100068178();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v13 = v21;

  v15 = v18;
  v14 = v19;
  sub_1000146B0(v18, v19);
  sub_100003C90(a1);

  result = sub_100014528(v15, v14);
  *a2 = v20;
  *(a2 + 8) = v12;
  *(a2 + 16) = v15;
  *(a2 + 24) = v14;
  *(a2 + 32) = v13;
  return result;
}

unint64_t sub_100066448()
{
  result = qword_100135B98;
  if (!qword_100135B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135B98);
  }

  return result;
}

unint64_t sub_10006649C()
{
  result = qword_100135BA0;
  if (!qword_100135BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135BA0);
  }

  return result;
}

void *sub_1000664F0(void *a1)
{
  v3 = sub_100003CDC(&qword_100135D98, &qword_1000F7B70);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = v10 - v6;
  v8 = sub_100003C4C(a1, a1[3]);
  sub_100067DF4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100003C90(a1);
  }

  else
  {
    sub_100003CDC(&qword_100135D80, &qword_1000F7B68);
    sub_100067E48(&qword_100135DA0, sub_100067F14, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    v8 = v10[1];
    sub_100003C90(a1);
  }

  return v8;
}

uint64_t sub_1000666A4(void *a1)
{
  v3 = sub_100003CDC(&qword_100135E20, &qword_1000F7BD8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v10[-v6];
  v8 = a1[3];
  sub_100003C4C(a1, v8);
  sub_100066448();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v10[7] = 0;
    sub_100068300();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v8 = v11;
    v10[6] = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  sub_100003C90(a1);
  return v8;
}

unint64_t sub_100066868()
{
  result = qword_100135BB0;
  if (!qword_100135BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135BB0);
  }

  return result;
}

unint64_t sub_1000668BC()
{
  result = qword_100135BC8;
  if (!qword_100135BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135BC8);
  }

  return result;
}

void *sub_100066910(void *a1)
{
  v3 = sub_100003CDC(&qword_100135E08, &qword_1000F7BD0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = v10 - v6;
  v8 = sub_100003C4C(a1, a1[3]);
  sub_100066868();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100003C90(a1);
  }

  else
  {
    sub_100003CDC(&qword_100135BB8, &qword_1000F6B18);
    sub_100068234(&qword_100135E10, sub_1000682AC, &protocol conformance descriptor for <> Set<A>);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    v8 = v10[1];
    sub_100003C90(a1);
  }

  return v8;
}

unint64_t sub_100066AC4()
{
  result = qword_100135BE0;
  if (!qword_100135BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135BE0);
  }

  return result;
}

uint64_t sub_100066B18(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000100105FD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7865546567617375 && a2 == 0xE900000000000074 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C61766F72707061 && a2 == 0xED00006574617453)
  {

    return 4;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_100066CE4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100003CDC(&qword_100135DF0, &qword_1000F7BC8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v23 - v8;
  sub_100003C4C(a1, a1[3]);
  sub_100066AC4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100003C90(a1);
  }

  LOBYTE(v34) = 0;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v28 = v11;
  LOBYTE(v34) = 1;
  v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v27 = v13;
  v25 = v12;
  LOBYTE(v34) = 2;
  v24 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v26 = v14;
  LOBYTE(v29) = 3;
  sub_100068124();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v23 = v34;
  v42 = 4;
  sub_100068178();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v41 = v43;
  v16 = v27;
  v15 = v28;
  *&v29 = v10;
  *(&v29 + 1) = v28;
  v17 = v25;
  *&v30 = v25;
  *(&v30 + 1) = v27;
  v18 = v24;
  v19 = v26;
  *&v31 = v24;
  *(&v31 + 1) = v26;
  v32 = v23;
  v33 = v43;
  sub_1000681CC(&v29, &v34);
  sub_100003C90(a1);
  *&v34 = v10;
  *(&v34 + 1) = v15;
  v35 = v17;
  v36 = v16;
  v37 = v18;
  v38 = v19;
  v39 = v23;
  v40 = v41;
  result = sub_100068204(&v34);
  v21 = v32;
  *(a2 + 32) = v31;
  *(a2 + 48) = v21;
  *(a2 + 64) = v33;
  v22 = v30;
  *a2 = v29;
  *(a2 + 16) = v22;
  return result;
}

unint64_t sub_1000670E0()
{
  result = qword_100135BE8;
  if (!qword_100135BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135BE8);
  }

  return result;
}

unint64_t sub_10006717C()
{
  result = qword_100135C00;
  if (!qword_100135C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135C00);
  }

  return result;
}

unint64_t sub_1000671D4()
{
  result = qword_100135C08;
  if (!qword_100135C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135C08);
  }

  return result;
}

uint64_t sub_100067240(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 sub_100067268(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100067274(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 16))
  {
    return (*a1 + 12);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  if (v3 + 1 >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000672C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 12;
    if (a3 >= 0xC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

void *sub_100067318(void *result, unsigned int a2)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    result[1] = 0;
  }

  else if (a2)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

__n128 sub_100067358(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10006736C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1000673B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100067408(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100067450(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
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

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1000674AC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000674D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_100067518(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for ApprovalStateUpdateRequest(uint64_t a1)
{
  result = qword_100135C38;
  if (!qword_100135C38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000675D0(uint64_t a1)
{
  result = type metadata accessor for Date();
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

unint64_t sub_100067718()
{
  result = qword_100135CD0;
  if (!qword_100135CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135CD0);
  }

  return result;
}

unint64_t sub_100067770()
{
  result = qword_100135CD8;
  if (!qword_100135CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135CD8);
  }

  return result;
}

unint64_t sub_1000677C8()
{
  result = qword_100135CE0;
  if (!qword_100135CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135CE0);
  }

  return result;
}

unint64_t sub_100067820()
{
  result = qword_100135CE8;
  if (!qword_100135CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135CE8);
  }

  return result;
}

unint64_t sub_100067878()
{
  result = qword_100135CF0;
  if (!qword_100135CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135CF0);
  }

  return result;
}

unint64_t sub_1000678D0()
{
  result = qword_100135CF8;
  if (!qword_100135CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135CF8);
  }

  return result;
}

unint64_t sub_100067928()
{
  result = qword_100135D00;
  if (!qword_100135D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135D00);
  }

  return result;
}

unint64_t sub_100067980()
{
  result = qword_100135D08;
  if (!qword_100135D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135D08);
  }

  return result;
}

unint64_t sub_1000679D8()
{
  result = qword_100135D10;
  if (!qword_100135D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135D10);
  }

  return result;
}

unint64_t sub_100067A30()
{
  result = qword_100135D18;
  if (!qword_100135D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135D18);
  }

  return result;
}

unint64_t sub_100067A88()
{
  result = qword_100135D20;
  if (!qword_100135D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135D20);
  }

  return result;
}

unint64_t sub_100067AE0()
{
  result = qword_100135D28;
  if (!qword_100135D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135D28);
  }

  return result;
}

unint64_t sub_100067B38()
{
  result = qword_100135D30;
  if (!qword_100135D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135D30);
  }

  return result;
}

unint64_t sub_100067B90()
{
  result = qword_100135D38;
  if (!qword_100135D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135D38);
  }

  return result;
}

unint64_t sub_100067BE8()
{
  result = qword_100135D40;
  if (!qword_100135D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135D40);
  }

  return result;
}

unint64_t sub_100067C40()
{
  result = qword_100135D48;
  if (!qword_100135D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135D48);
  }

  return result;
}

unint64_t sub_100067C98()
{
  result = qword_100135D50;
  if (!qword_100135D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135D50);
  }

  return result;
}

unint64_t sub_100067CF0()
{
  result = qword_100135D58;
  if (!qword_100135D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135D58);
  }

  return result;
}

unint64_t sub_100067D48()
{
  result = qword_100135D60;
  if (!qword_100135D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135D60);
  }

  return result;
}

unint64_t sub_100067DA0()
{
  result = qword_100135D68;
  if (!qword_100135D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135D68);
  }

  return result;
}

unint64_t sub_100067DF4()
{
  result = qword_100135D78;
  if (!qword_100135D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135D78);
  }

  return result;
}

uint64_t sub_100067E48(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_100009FA4(&qword_100135D80, &qword_1000F7B68);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100067EC0()
{
  result = qword_100135D90;
  if (!qword_100135D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135D90);
  }

  return result;
}

unint64_t sub_100067F14()
{
  result = qword_100135DA8;
  if (!qword_100135DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135DA8);
  }

  return result;
}

unint64_t sub_100067F68()
{
  result = qword_100135DB8;
  if (!qword_100135DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135DB8);
  }

  return result;
}

uint64_t sub_100068024(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DriverBinEntry(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100068088(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000680D0()
{
  result = qword_100135DE8;
  if (!qword_100135DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135DE8);
  }

  return result;
}

unint64_t sub_100068124()
{
  result = qword_100135DF8;
  if (!qword_100135DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135DF8);
  }

  return result;
}

unint64_t sub_100068178()
{
  result = qword_100135E00;
  if (!qword_100135E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135E00);
  }

  return result;
}

uint64_t sub_100068234(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_100009FA4(&qword_100135BB8, &qword_1000F6B18);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000682AC()
{
  result = qword_100135E18;
  if (!qword_100135E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135E18);
  }

  return result;
}

unint64_t sub_100068300()
{
  result = qword_100135E28;
  if (!qword_100135E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135E28);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for KernelManagementConfiguration.ExceptionsConfiguration.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for KernelManagementConfiguration.ExceptionsConfiguration.CodingKeys(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

__n128 sub_10006843C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100068450(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100068498(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

unint64_t sub_1000684FC()
{
  result = qword_100135E78;
  if (!qword_100135E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135E78);
  }

  return result;
}

unint64_t sub_100068554()
{
  result = qword_100135E80;
  if (!qword_100135E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135E80);
  }

  return result;
}

unint64_t sub_1000685AC()
{
  result = qword_100135E88;
  if (!qword_100135E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135E88);
  }

  return result;
}

uint64_t sub_100068664(uint64_t a1)
{
  v2 = type metadata accessor for POSIXError();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1;

  sub_1000366A0(0xD000000000000010, 0x8000000100106170, v22);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v8 = _CFXPCCreateXPCObjectFromCFObject();

  if (!v8)
  {

    sub_10001449C();
    swift_allocError();
    *v9 = 0xD000000000000026;
    *(v9 + 8) = 0x8000000100106190;
    v10 = v21;
    v12 = v19;
    v11 = v20;
    *(v9 + 16) = v18;
    *(v9 + 32) = v12;
    *(v9 + 48) = v11;
    *(v9 + 64) = v10;
    *(v9 + 72) = 4;
    swift_willThrow();
    return sub_10006894C(v22);
  }

  sub_1000689B4(v22, &v18);
  if (*(&v19 + 1))
  {
    if (swift_dynamicCast())
    {
      xpc_dictionary_set_mach_send();
    }
  }

  else
  {
    sub_10006894C(&v18);
  }

  LODWORD(v18) = 0;
  if (sub_10000168C(v8, &v18))
  {
    v13 = POSIXErrorCode.init(rawValue:)();

    if ((v13 & &_mh_execute_header) != 0)
    {
      v14 = 96;
    }

    else
    {
      v14 = v13;
    }

    v16[1] = v14;
    sub_1000B50B0(_swiftEmptyArrayStorage);
    sub_100068A24();
    _BridgedStoredNSError.init(_:userInfo:)();
    POSIXError._nsError.getter();
    (*(v3 + 8))(v6, v2);
    swift_willThrow();
    swift_unknownObjectRelease();
    return sub_10006894C(v22);
  }

  sub_10006894C(v22);

  swift_unknownObjectRelease();
  return v18;
}

uint64_t sub_10006894C(uint64_t a1)
{
  v2 = sub_100003CDC(&qword_1001343C8, &unk_1000F3CA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000689B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003CDC(&qword_1001343C8, &unk_1000F3CA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100068A24()
{
  result = qword_100135F28;
  if (!qword_100135F28)
  {
    type metadata accessor for POSIXError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135F28);
  }

  return result;
}

uint64_t sub_100068A7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void sub_100068B00(NSObject *a1, uint64_t a2, uint64_t a3)
{
  sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1000F3160;
  *(v6 + 56) = &type metadata for String;
  v7 = sub_100003D24();
  *(v6 + 64) = v7;
  *(v6 + 32) = 0xD00000000000001CLL;
  *(v6 + 40) = 0x80000001001061E0;
  sub_10001491C();
  v8 = static OS_os_log.default.getter();
  v9 = static os_log_type_t.default.getter();

  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  aBlock[4] = sub_100068D78;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100068A7C;
  aBlock[3] = &unk_100128730;
  v11 = _Block_copy(aBlock);

  v12 = String.utf8CString.getter();
  xpc_set_event_stream_handler((v12 + 32), a1, v11);

  _Block_release(v11);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1000F3160;
  *(v13 + 56) = &type metadata for String;
  *(v13 + 64) = v7;
  *(v13 + 32) = 0xD00000000000001CLL;
  *(v13 + 40) = 0x80000001001061E0;
  v14 = static OS_os_log.default.getter();
  v15 = static os_log_type_t.default.getter();
}

uint64_t sub_100068D40()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_100068DA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_100068DB8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_100003CDC(&qword_100134BF8, &qword_1000F4520);
  __chkstk_darwin(v6 - 8, v7);
  v9 = &v29 - v8;
  v29 = sub_10006AAE0();
  v30 = v10;
  v33 = a1;
  v34 = a2;

  v11._countAndFlagsBits = 61;
  v11._object = 0xE100000000000000;
  String.append(_:)(v11);
  v12 = type metadata accessor for Locale();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  sub_100012814();
  StringProtocol.range<A>(of:options:range:locale:)();
  v14 = v13;
  sub_10000A184(v9, &qword_100134BF8, &qword_1000F4520);

  if ((v14 & 1) == 0)
  {

    v15 = String.distance(from:to:)();

    v17 = *(v3 + 56);
    v16 = *(v3 + 64);

    v18 = sub_10006B728(v15, v17, v16);
    v20 = v19;
    v22 = v21;
    v24 = v23;

    v29 = v18;
    v30 = v20;
    v31 = v22;
    v32 = v24;
    v33 = 32;
    v34 = 0xE100000000000000;
    sub_10006B7D8();
    v25 = StringProtocol.components<A>(separatedBy:)();

    if (v25[2])
    {
      v26 = v25[4];
      v27 = v25[5];

      return sub_100069F58(v26, v27);
    }
  }

  return 0;
}

uint64_t sub_100069024(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{

  v4 = String.Iterator.next()();
  if (v4.value._object)
  {
    countAndFlagsBits = v4.value._countAndFlagsBits;
    object = v4.value._object;
    do
    {
      v9 = String.Iterator.next()();
      if (!v9.value._object)
      {

        return 1;
      }

      if (countAndFlagsBits == v9.value._countAndFlagsBits && object == v9.value._object)
      {
      }

      else
      {
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v7 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v8 = String.Iterator.next()();
      countAndFlagsBits = v8.value._countAndFlagsBits;
      object = v8.value._object;
    }

    while (v8.value._object);
  }

  v10 = String.Iterator.next()().value._object;

  if (!v10)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

double sub_100069180()
{
  sub_100003CDC(&qword_1001362F8, &qword_1000F8080);
  v0 = swift_allocObject();
  *&result = 17;
  *(v0 + 16) = xmmword_1000F7E80;
  *(v0 + 32) = &type metadata for KernelRequests.GetRequests;
  *(v0 + 40) = &off_100129410;
  *(v0 + 48) = &type metadata for KernelRequests.GetLoaded;
  *(v0 + 56) = &off_1001293F8;
  *(v0 + 64) = &type metadata for KernelRequests.LoadExtension;
  *(v0 + 72) = &off_1001293E0;
  *(v0 + 80) = &type metadata for KernelRequests.UnloadExtension;
  *(v0 + 88) = &off_1001293C8;
  *(v0 + 96) = &type metadata for KernelRequests.SendResource;
  *(v0 + 104) = &off_1001293B0;
  *(v0 + 112) = &type metadata for KernelRequests.LoadFileset;
  *(v0 + 120) = &off_100129398;
  *(v0 + 128) = &type metadata for KernelRequests.DextLaunch;
  *(v0 + 136) = &off_100129380;
  *(v0 + 144) = &type metadata for KernelRequests.RequestResource;
  *(v0 + 152) = &off_100129368;
  *(v0 + 160) = &type metadata for KernelRequests.LoadRequest;
  *(v0 + 168) = &off_100129350;
  *(v0 + 176) = &type metadata for KernelRequests.LoadNotification;
  *(v0 + 184) = &off_100129338;
  *(v0 + 192) = &type metadata for KernelRequests.UnloadNotification;
  *(v0 + 200) = &off_100129320;
  *(v0 + 208) = &type metadata for KernelRequests.RequestExit;
  *(v0 + 216) = &off_100129308;
  *(v0 + 224) = &type metadata for KernelRequests.MissingAuxKCBundles;
  *(v0 + 232) = &off_1001292F0;
  *(v0 + 240) = &type metadata for KernelRequests.AuxKCBundleAvailable;
  *(v0 + 248) = &off_1001292D8;
  *(v0 + 256) = &type metadata for KernelRequests.GetDaemonActive;
  *(v0 + 264) = &off_1001292C0;
  *(v0 + 272) = &type metadata for KernelRequests.GetDrivers;
  *(v0 + 280) = &off_1001292A8;
  *(v0 + 288) = &type metadata for KernelRequests.DextUpdateNotification;
  *(v0 + 296) = &off_100129290;
  qword_10014E890 = v0;
  return result;
}

void *sub_10006931C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (!*(a1 + 16) || (v5 = sub_100061588(0xD000000000000016, 0x8000000100104B80), (v6 & 1) == 0) || (sub_10000B430(*(a1 + 56) + 32 * v5, v32), (swift_dynamicCast() & 1) == 0))
  {
    _StringGuts.grow(_:)(27);

    *&v30[0] = 0x2074736575716552;
    *(&v30[0] + 1) = 0xE800000000000000;
    v17._countAndFlagsBits = Dictionary.description.getter();
    String.append(_:)(v17);

    v18 = "Driver Extension Server Name";
    v19 = 0xD000000000000011;
LABEL_16:
    v20 = v18 | 0x8000000000000000;
    String.append(_:)(*&v19);
LABEL_17:
    v21 = v30[0];
    sub_10001449C();
    swift_allocError();
    *v22 = v21;
    v23 = v31;
    v24 = v30[2];
    v25 = v30[1];
    *(v22 + 16) = v30[0];
    *(v22 + 32) = v25;
    *(v22 + 48) = v24;
    *(v22 + 64) = v23;
    *(v22 + 72) = 9;
    return swift_willThrow();
  }

  v7 = v30[0];
  v8 = sub_10006C5B8();
  if (!*(v8 + 16) || (v9 = sub_100061588(*&v30[0], *(&v30[0] + 1)), (v10 & 1) == 0))
  {

LABEL_20:
    _StringGuts.grow(_:)(25);

    *&v30[0] = 0xD000000000000017;
    *(&v30[0] + 1) = 0x8000000100106640;
    String.append(_:)(v7);

    goto LABEL_17;
  }

  v11 = *(*(v8 + 56) + 16 * v9);

  v12 = swift_conformsToProtocol2();
  if (v12)
  {
    v13 = v11 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    goto LABEL_20;
  }

  if (*(a1 + 16))
  {
    v33 = v12;
    v14 = sub_100061588(0xD000000000000016, 0x8000000100104BA0);
    if (v15)
    {
      sub_10000B430(*(a1 + 56) + 32 * v14, v30);
      sub_100003CDC(&unk_1001389A0, &qword_1000F96A0);
      if (swift_dynamicCast())
      {
        v16 = v32[0];
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }

    v12 = v33;
  }

  else
  {
    v16 = 0;
  }

  v27 = v12;
  if (((*(v12 + 16))(v11) & 1) != 0 && !v16)
  {
    *&v30[0] = 0;
    *(&v30[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(53);
    v28._countAndFlagsBits = 0x2074736575716552;
    v28._object = 0xE800000000000000;
    String.append(_:)(v28);
    String.append(_:)(v7);

    v18 = "Unrecognized predicate ";
    v19 = 0xD00000000000002BLL;
    goto LABEL_16;
  }

  v29 = *(v27 + 24);
  a2[3] = v11;
  a2[4] = v27;
  sub_1000193A4(a2);
  result = v29(v16, v11, v27);
  if (v2)
  {
    return sub_10006C7C4(a2);
  }

  return result;
}

double sub_1000696F4()
{
  sub_100003CDC(&qword_1001342F0, &qword_1000F3AB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1000F7E90;
  if (qword_100133A60 != -1)
  {
    swift_once();
  }

  v1 = *algn_10014E8E8;
  *(v0 + 32) = qword_10014E8E0;
  *(v0 + 40) = v1;
  strcpy((v0 + 48), "OSBundleUUID");
  *(v0 + 61) = 0;
  *(v0 + 62) = -5120;
  v2 = qword_100133A50;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = *algn_10014E8C8;
  *(v0 + 64) = qword_10014E8C0;
  *(v0 + 72) = v3;
  strcpy((v0 + 80), "OSBundlePath");
  *(v0 + 93) = 0;
  *(v0 + 94) = -5120;
  v4 = qword_100133A70;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = *algn_10014E908;
  *(v0 + 96) = qword_10014E900;
  *(v0 + 104) = v5;
  *(v0 + 112) = 0xD000000000000015;
  *(v0 + 120) = 0x80000001001066B0;
  *(v0 + 128) = 0xD000000000000015;
  *(v0 + 136) = 0x8000000100105350;
  *(v0 + 144) = 0xD000000000000011;
  *(v0 + 152) = 0x80000001001066D0;
  *(v0 + 160) = 0xD000000000000019;
  *(v0 + 168) = 0x80000001001066F0;
  *(v0 + 176) = 0xD000000000000010;
  *(v0 + 184) = 0x8000000100105020;
  *(v0 + 192) = 0xD00000000000001BLL;
  *(v0 + 200) = 0x8000000100105080;
  *(v0 + 208) = 0xD000000000000010;
  *(v0 + 216) = 0x8000000100106710;
  qword_10014E898 = v0;

  return result;
}

uint64_t sub_10006999C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 16) && (v2 = sub_100061588(0xD00000000000001CLL, 0x8000000100106600), (v3 & 1) != 0))
    {
      sub_10000B430(*(v1 + 56) + 32 * v2, v5);
      if (swift_dynamicCast())
      {
        return v4;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100069A4C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 16) && (v2 = sub_100061588(0xD00000000000001BLL, 0x80000001001065E0), (v3 & 1) != 0))
    {
      sub_10000B430(*(v1 + 56) + 32 * v2, v5);
      if (swift_dynamicCast())
      {
        return v4;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100069B00(uint64_t a1)
{
  if (!a1)
  {
    return 2;
  }

  if (!*(a1 + 16))
  {
    return 2;
  }

  v2 = sub_100061588(0xD00000000000001ELL, 0x80000001001065C0);
  result = 2;
  if (v4)
  {
    sub_10000B430(*(a1 + 56) + 32 * v2, v6);
    if (swift_dynamicCast())
    {
      return v5;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

unint64_t sub_100069BB8(uint64_t a1)
{
  if (!a1)
  {
    goto LABEL_7;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
LABEL_8:
    v6 = 1;
    return v2 | (v6 << 32);
  }

  v3 = sub_100061588(0x6E49206B63656843, 0xEE006E656B6F5420);
  if ((v4 & 1) == 0)
  {
LABEL_7:
    v2 = 0;
    goto LABEL_8;
  }

  sub_10000B430(*(a1 + 56) + 32 * v3, v9);
  v5 = swift_dynamicCast();
  v2 = v8;
  v6 = v5 ^ 1;
  if (!v5)
  {
    v2 = 0;
  }

  return v2 | (v6 << 32);
}

uint64_t sub_100069D98(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 16) && (v2 = sub_100061588(0xD000000000000012, 0x8000000100104E40), (v3 & 1) != 0))
    {
      sub_10000B430(*(v1 + 56) + 32 * v2, v5);
      if (swift_dynamicCast())
      {
        return v4;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100069E48(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 16))
    {
      v2 = sub_100061588(0xD00000000000001DLL, 0x8000000100104B60);
      if (v3)
      {
        sub_10000B430(*(v1 + 56) + 32 * v2, v5);
        if (swift_dynamicCast())
        {
          return v4;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100069F28()
{
  v1 = *(v0 + 8);

  return v1;
}

unint64_t sub_100069F58(uint64_t a1, unint64_t a2)
{
  if ((sub_100069024(30768, 0xE200000000000000, a1, a2) & 1) != 0 && (sub_100069024(2979888, 0xE300000000000000, a1, a2) & 1) == 0)
  {
    v17 = sub_10006B728(2uLL, a1, a2);
    v19 = v18;
    v21 = v20;
    v23 = v22;

    if ((v17 ^ v19) >= 0x4000)
    {
      v25 = sub_10006AEC8(v17, v19, v21, v23, 16, v24);
      if ((v26 & 0x100) != 0)
      {
        v25 = sub_1000777B4(v17, v19, v21, v23, 16);
      }

      v38 = v25;
      v39 = v26;
      goto LABEL_62;
    }

LABEL_79:

    return 0;
  }

  result = sub_100069024(7876653, 0xE300000000000000, a1, a2);
  if (result)
  {
    sub_10006B728(3uLL, a1, a2);
    v6 = v5;
    v8 = v7;

    v49 = 1;
    v50 = 0xE100000000000000;
    v47 = v6;
    v48 = v8;
    sub_10006B82C();
    String.append<A>(contentsOf:)();

    v45 = 45;
    v46 = 0;
    v38 = 0;
    v39 = 1;
LABEL_62:

    if (v39)
    {
      return 0;
    }

    else
    {
      return v38;
    }
  }

  v9 = HIBYTE(a2) & 0xF;
  v10 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v11 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v11 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {
    goto LABEL_79;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v45 = a1;
      v46 = a2 & 0xFFFFFFFFFFFFFFLL;
      if (a1 == 43)
      {
        if (v9)
        {
          if (--v9)
          {
            v13 = 0;
            v33 = &v45 + 1;
            while (1)
            {
              v34 = *v33 - 48;
              if (v34 > 9)
              {
                break;
              }

              v35 = 10 * v13;
              if ((v13 * 10) >> 64 != (10 * v13) >> 63)
              {
                break;
              }

              v13 = v35 + v34;
              if (__OFADD__(v35, v34))
              {
                break;
              }

              ++v33;
              if (!--v9)
              {
                goto LABEL_73;
              }
            }
          }

          goto LABEL_72;
        }

LABEL_84:
        __break(1u);
        return result;
      }

      if (a1 != 45)
      {
        if (v9)
        {
          v13 = 0;
          v40 = &v45;
          while (1)
          {
            v41 = *v40 - 48;
            if (v41 > 9)
            {
              break;
            }

            v42 = 10 * v13;
            if ((v13 * 10) >> 64 != (10 * v13) >> 63)
            {
              break;
            }

            v13 = v42 + v41;
            if (__OFADD__(v42, v41))
            {
              break;
            }

            v40 = (v40 + 1);
            if (!--v9)
            {
              goto LABEL_73;
            }
          }
        }

        goto LABEL_72;
      }

      if (v9)
      {
        if (--v9)
        {
          v13 = 0;
          v27 = &v45 + 1;
          while (1)
          {
            v28 = *v27 - 48;
            if (v28 > 9)
            {
              break;
            }

            v29 = 10 * v13;
            if ((v13 * 10) >> 64 != (10 * v13) >> 63)
            {
              break;
            }

            v13 = v29 - v28;
            if (__OFSUB__(v29, v28))
            {
              break;
            }

            ++v27;
            if (!--v9)
            {
              goto LABEL_73;
            }
          }
        }

        goto LABEL_72;
      }
    }

    else
    {
      if ((a1 & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
      }

      v12 = *result;
      if (v12 == 43)
      {
        if (v10 >= 1)
        {
          v9 = v10 - 1;
          if (v10 != 1)
          {
            v13 = 0;
            if (result)
            {
              v30 = (result + 1);
              while (1)
              {
                v31 = *v30 - 48;
                if (v31 > 9)
                {
                  goto LABEL_72;
                }

                v32 = 10 * v13;
                if ((v13 * 10) >> 64 != (10 * v13) >> 63)
                {
                  goto LABEL_72;
                }

                v13 = v32 + v31;
                if (__OFADD__(v32, v31))
                {
                  goto LABEL_72;
                }

                ++v30;
                if (!--v9)
                {
                  goto LABEL_73;
                }
              }
            }

            goto LABEL_61;
          }

LABEL_72:
          v13 = 0;
          LOBYTE(v9) = 1;
          goto LABEL_73;
        }

        goto LABEL_83;
      }

      if (v12 != 45)
      {
        if (v10)
        {
          v13 = 0;
          while (1)
          {
            v36 = *result - 48;
            if (v36 > 9)
            {
              break;
            }

            v37 = 10 * v13;
            if ((v13 * 10) >> 64 != (10 * v13) >> 63)
            {
              break;
            }

            v13 = v37 + v36;
            if (__OFADD__(v37, v36))
            {
              break;
            }

            ++result;
            if (!--v10)
            {
              goto LABEL_61;
            }
          }
        }

        goto LABEL_72;
      }

      if (v10 >= 1)
      {
        v9 = v10 - 1;
        if (v10 != 1)
        {
          v13 = 0;
          if (result)
          {
            v14 = (result + 1);
            while (1)
            {
              v15 = *v14 - 48;
              if (v15 > 9)
              {
                goto LABEL_72;
              }

              v16 = 10 * v13;
              if ((v13 * 10) >> 64 != (10 * v13) >> 63)
              {
                goto LABEL_72;
              }

              v13 = v16 - v15;
              if (__OFSUB__(v16, v15))
              {
                goto LABEL_72;
              }

              ++v14;
              if (!--v9)
              {
                goto LABEL_73;
              }
            }
          }

LABEL_61:
          LOBYTE(v9) = 0;
LABEL_73:
          LOBYTE(v49) = v9;
          v43 = v9;
          goto LABEL_74;
        }

        goto LABEL_72;
      }

      __break(1u);
      __break(1u);
    }

    __break(1u);
    __break(1u);
LABEL_83:
    __break(1u);
    __break(1u);
    goto LABEL_84;
  }

  v13 = sub_10006AF94(a1, a2, 10);
  v43 = v44;
LABEL_74:

  if (v43)
  {
    return 0;
  }

  else
  {
    return v13;
  }
}

uint64_t sub_10006A730(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_100003CDC(&qword_100134BF8, &qword_1000F4520);
  __chkstk_darwin(v6 - 8, v7);
  v9 = &v28 - v8;
  v28 = sub_10006AAE0();
  v29 = v10;
  v32 = a1;
  v33 = a2;

  v11._countAndFlagsBits = 61;
  v11._object = 0xE100000000000000;
  String.append(_:)(v11);
  v12 = type metadata accessor for Locale();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  sub_100012814();
  StringProtocol.range<A>(of:options:range:locale:)();
  v14 = v13;
  sub_10000A184(v9, &qword_100134BF8, &qword_1000F4520);

  result = 0;
  if ((v14 & 1) == 0)
  {

    v16 = String.distance(from:to:)();

    v18 = *(v3 + 56);
    v17 = *(v3 + 64);

    v19 = sub_10006B728(v16, v18, v17);
    v21 = v20;
    v23 = v22;
    v25 = v24;

    v28 = v19;
    v29 = v21;
    v30 = v23;
    v31 = v25;
    v32 = 32;
    v33 = 0xE100000000000000;
    sub_10006B7D8();
    v26 = StringProtocol.components<A>(separatedBy:)();

    if (*(v26 + 16))
    {
      v27 = *(v26 + 32);

      return v27;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_10006A994()
{
  v1 = *(v0 + 16);
  if (v1 == 2)
  {
    LOBYTE(v1) = 0;
    *(v0 + 16) = 0;
  }

  return v1 & 1;
}

uint64_t sub_10006A9B0()
{
  v1 = *(v0 + 18);
  if (v1 == 2)
  {
    LOBYTE(v1) = 0;
    *(v0 + 18) = 0;
  }

  return v1 & 1;
}

uint64_t sub_10006A9CC()
{
  v1 = *(v0 + 19);
  if (v1 == 2)
  {
    LOBYTE(v1) = 0;
    *(v0 + 19) = 0;
  }

  return v1 & 1;
}

uint64_t sub_10006A9E8()
{
  v1 = *(v0 + 20);
  if (v1 == 2)
  {
    LOBYTE(v1) = 0;
    *(v0 + 20) = 0;
  }

  return v1 & 1;
}

uint64_t sub_10006AA04()
{
  v1 = *(v0 + 21);
  if (v1 == 2)
  {
    LOBYTE(v1) = 0;
    *(v0 + 21) = 0;
  }

  return v1 & 1;
}

char *sub_10006AA20()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = v1;
  if (v2 == 1)
  {
    v3 = sub_10006B514(0xD000000000000012, 0x8000000100104340);
    v4 = *(v0 + 24);
    v5 = *(v0 + 32);
    *(v0 + 24) = v3;
    *(v0 + 32) = v6;

    sub_10006BCEC(v4, v5);
  }

  sub_10006BD00(v1, v2);
  return v3;
}

char *sub_10006AAE0()
{
  if (*(v0 + 64))
  {
    v1 = *(v0 + 56);
  }

  else
  {
    v1 = sub_10006B514(0x6F6F622E6E72656BLL, 0xED00007367726174);
    *(v0 + 56) = v1;
    *(v0 + 64) = v2;
  }

  return v1;
}

uint64_t sub_10006AB90()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = v1;
  if (v2 == 1)
  {
    v3 = sub_10006A730(0x786966667573636BLL, 0xE800000000000000);
    v4 = *(v0 + 72);
    v5 = *(v0 + 80);
    *(v0 + 72) = v3;
    *(v0 + 80) = v6;

    sub_10006BCEC(v4, v5);
  }

  sub_10006BD00(v1, v2);
  return v3;
}

uint64_t sub_10006AC28()
{
  if (*(v0 + 92))
  {
    v1 = sub_100068DB8(0x676F6C6D6BLL, 0xE500000000000000);
    if ((v2 & 1) != 0 || v1 != 1)
    {
      if (qword_100133B38 != -1)
      {
        swift_once();
      }

      if (byte_100138870 != 1)
      {
        LOBYTE(v3) = 0;
        v5 = 256;
        v4 = 1;
        goto LABEL_12;
      }

      LOBYTE(v3) = static os_log_type_t.error.getter();
    }

    else
    {
      LOBYTE(v3) = static os_log_type_t.default.getter();
    }

    v4 = 0;
    v5 = v3;
LABEL_12:
    *(v0 + 90) = v5;
    *(v0 + 92) = 0;
    return v3 | (v4 << 8);
  }

  v3 = *(v0 + 90);
  v4 = (v3 >> 8) & 1;
  return v3 | (v4 << 8);
}

uint64_t sub_10006ACEC()
{
  v1 = *(v0 + 93);
  if (v1 == 2)
  {
    v2 = v0;
    v3 = sub_100068DB8(0x6173615F74786564, 0xEC00000062735F6ELL);
    if (v4)
    {
      LOBYTE(v1) = 0;
    }

    else
    {
      v5 = v3;
      sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_1000F3160;
      *(v6 + 56) = &type metadata for Int;
      *(v6 + 64) = &protocol witness table for Int;
      *(v6 + 32) = v5;
      sub_10001491C();
      v7 = static OS_os_log.default.getter();
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("dext_asan_sb boot-arg present: %d", v9);

      LOBYTE(v1) = v5 == 1;
    }

    *(v2 + 93) = v1;
  }

  return v1 & 1;
}

uint64_t sub_10006ADF4(__n128 a1)
{
  sub_10006BCEC(v1[3], v1[4]);
  sub_10006BCEC(v1[5], v1[6]);

  sub_10006BCEC(v1[9], v1[10]);
  sub_10000A184((v1 + 12), &qword_1001362F0, &unk_1000F8070);

  return swift_deallocClassInstance();
}

double sub_10006AE80()
{
  *(v0 + 16) = xmmword_1000F7EA0;
  *(v0 + 32) = xmmword_1000F7EB0;
  *(v0 + 48) = 1;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  *(v0 + 80) = 1;
  *(v0 + 88) = 514;
  *(v0 + 92) = 513;
  result = 0.0;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0;
  return result;
}

uint64_t sub_10006AEC8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, __n128 a6)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v15[0] = a3;
    v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v12 = v15;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v12 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v12 = _StringObject.sharedUTF8.getter();
  }

  result = sub_10006B880(v12, a1, a2, a3, a4, a5);
  if (!v6)
  {
    v16 = v14 & 1;
LABEL_8:
    v17 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

unsigned __int8 *sub_10006AF94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = a1;
  v62 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100076E30(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v60;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_125;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_124;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_124;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_125;
          }

          goto LABEL_64;
        }

LABEL_124:
        v17 = 0;
        goto LABEL_125;
      }

      goto LABEL_129;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = 0;
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        while (1)
        {
          v31 = *result;
          if (v31 < 0x30 || v31 >= v28)
          {
            if (v31 < 0x41 || v31 >= v29)
            {
              v17 = 0;
              if (v31 < 0x61 || v31 >= v30)
              {
                goto LABEL_125;
              }

              v32 = -87;
            }

            else
            {
              v32 = -55;
            }
          }

          else
          {
            v32 = -48;
          }

          v33 = v27 * a3;
          if ((v27 * a3) >> 64 != (v27 * a3) >> 63)
          {
            goto LABEL_124;
          }

          v27 = v33 + (v31 + v32);
          if (__OFADD__(v33, (v31 + v32)))
          {
            goto LABEL_124;
          }

          ++result;
          if (!--v7)
          {
            goto LABEL_123;
          }
        }
      }

      goto LABEL_124;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_125;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_124;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_124;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_64:
        v17 = 0;
LABEL_125:

        return v17;
      }

      goto LABEL_124;
    }

    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v36 = HIBYTE(v5) & 0xF;
  v61 = v6;
  v62 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v27 = 0;
        v53 = a3 + 48;
        v54 = a3 + 55;
        v55 = a3 + 87;
        if (a3 > 10)
        {
          v53 = 58;
        }

        else
        {
          v55 = 97;
          v54 = 65;
        }

        v56 = &v61;
        while (1)
        {
          v57 = *v56;
          if (v57 < 0x30 || v57 >= v53)
          {
            if (v57 < 0x41 || v57 >= v54)
            {
              v17 = 0;
              if (v57 < 0x61 || v57 >= v55)
              {
                goto LABEL_125;
              }

              v58 = -87;
            }

            else
            {
              v58 = -55;
            }
          }

          else
          {
            v58 = -48;
          }

          v59 = v27 * a3;
          if ((v27 * a3) >> 64 != (v27 * a3) >> 63)
          {
            goto LABEL_124;
          }

          v27 = v59 + (v57 + v58);
          if (__OFADD__(v59, (v57 + v58)))
          {
            goto LABEL_124;
          }

          v56 = (v56 + 1);
          if (!--v36)
          {
            goto LABEL_123;
          }
        }
      }

      goto LABEL_124;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v27 = 0;
        v38 = a3 + 48;
        v39 = a3 + 55;
        v40 = a3 + 87;
        if (a3 > 10)
        {
          v38 = 58;
        }

        else
        {
          v40 = 97;
          v39 = 65;
        }

        v41 = &v61 + 1;
        while (1)
        {
          v42 = *v41;
          if (v42 < 0x30 || v42 >= v38)
          {
            if (v42 < 0x41 || v42 >= v39)
            {
              v17 = 0;
              if (v42 < 0x61 || v42 >= v40)
              {
                goto LABEL_125;
              }

              v43 = -87;
            }

            else
            {
              v43 = -55;
            }
          }

          else
          {
            v43 = -48;
          }

          v44 = v27 * a3;
          if ((v27 * a3) >> 64 != (v27 * a3) >> 63)
          {
            goto LABEL_124;
          }

          v27 = v44 - (v42 + v43);
          if (__OFSUB__(v44, (v42 + v43)))
          {
            goto LABEL_124;
          }

          ++v41;
          if (!--v37)
          {
            goto LABEL_123;
          }
        }
      }

      goto LABEL_124;
    }

    goto LABEL_128;
  }

  if (v36)
  {
    v45 = v36 - 1;
    if (v45)
    {
      v27 = 0;
      v46 = a3 + 48;
      v47 = a3 + 55;
      v48 = a3 + 87;
      if (a3 > 10)
      {
        v46 = 58;
      }

      else
      {
        v48 = 97;
        v47 = 65;
      }

      v49 = &v61 + 1;
      do
      {
        v50 = *v49;
        if (v50 < 0x30 || v50 >= v46)
        {
          if (v50 < 0x41 || v50 >= v47)
          {
            v17 = 0;
            if (v50 < 0x61 || v50 >= v48)
            {
              goto LABEL_125;
            }

            v51 = -87;
          }

          else
          {
            v51 = -55;
          }
        }

        else
        {
          v51 = -48;
        }

        v52 = v27 * a3;
        if ((v27 * a3) >> 64 != (v27 * a3) >> 63)
        {
          goto LABEL_124;
        }

        v27 = v52 + (v50 + v51);
        if (__OFADD__(v52, (v50 + v51)))
        {
          goto LABEL_124;
        }

        ++v49;
        --v45;
      }

      while (v45);
LABEL_123:
      v17 = v27;
      goto LABEL_125;
    }

    goto LABEL_124;
  }

LABEL_130:
  __break(1u);
  return result;
}

char *sub_10006B514(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for POSIXError();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0;
  v7 = String.utf8CString.getter();
  v8 = sysctlbyname((v7 + 32), 0, &v13, 0, 0);

  if (v8)
  {
    sub_1000AC134(v6);
    POSIXError._nsError.getter();
    (*(v3 + 8))(v6, v2);
    swift_willThrow();
  }

  else
  {
    v9 = swift_slowAlloc();
    v10 = String.utf8CString.getter();
    v11 = sysctlbyname((v10 + 32), v9, &v13, 0, 0);

    if (v11)
    {
      sub_1000AC134(v6);
      POSIXError._nsError.getter();
      (*(v3 + 8))(v6, v2);
      swift_willThrow();
    }

    else
    {
      v6 = String.init(cString:)();
    }
  }

  return v6;
}

unint64_t sub_10006B728(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = String.index(_:offsetBy:limitedBy:)();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return String.subscript.getter();
}

unint64_t sub_10006B7D8()
{
  result = qword_1001362E0;
  if (!qword_1001362E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001362E0);
  }

  return result;
}

unint64_t sub_10006B82C()
{
  result = qword_1001362E8;
  if (!qword_1001362E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001362E8);
  }

  return result;
}

uint64_t sub_10006B880(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_10004630C(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_95;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = String.UTF8View._foreignDistance(from:to:)();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_10004630C(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_10004630C(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_91;
  }

  if (v25 < a3 >> 16)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  result = String.UTF8View._foreignDistance(from:to:)();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v26 < v13)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 48;
        v40 = a6 + 55;
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v37;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            v46 = v32 * a6;
            if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
            {
              return 0;
            }

            v32 = v46 + (v44 + v45);
            if (__OFADD__(v46, (v44 + v45)))
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_94;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v47 = a6 + 48;
      v48 = a6 + 55;
      v49 = a6 + 87;
      if (a6 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v50 = *v27;
          if (v50 < 0x30 || v50 >= v47)
          {
            if (v50 < 0x41 || v50 >= v48)
            {
              v37 = 0;
              if (v50 < 0x61 || v50 >= v49)
              {
                return v37;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v52 + (v50 + v51);
          if (__OFADD__(v52, (v50 + v51)))
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v38 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v38 - (v35 + v36);
          if (__OFSUB__(v38, (v35 + v36)))
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

uint64_t sub_10006BCEC(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

double sub_10006BD00(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_10006BD14(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003E208(_swiftEmptyArrayStorage);
  v10 = &type metadata for String;
  *&v9 = a1;
  *(&v9 + 1) = a2;
  sub_10000B48C(&v9, v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100038954(v8, 0xD000000000000012, 0x8000000100104E40, isUniquelyReferenced_nonNull_native);
  v10 = &type metadata for Bool;
  LOBYTE(v9) = 1;
  sub_10000B48C(&v9, v8);
  v6 = swift_isUniquelyReferenced_nonNull_native();
  sub_100038954(v8, 0xD000000000000014, 0x8000000100106580, v6);
  return v4;
}

unint64_t sub_10006BE08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_10003E208(_swiftEmptyArrayStorage);
  v20 = v10;
  if (a2)
  {
    v11 = v10;
    v19 = &type metadata for String;
    *&v18 = a1;
    *(&v18 + 1) = a2;
    sub_10000B48C(&v18, v17);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100038954(v17, 0x656C626165676150, 0xEE00656D614E434BLL, isUniquelyReferenced_nonNull_native);
    v20 = v11;
  }

  else
  {
    sub_1000366A0(0x656C626165676150, 0xEE00656D614E434BLL, &v18);
    sub_10000A184(&v18, &qword_1001343C8, &unk_1000F3CA0);
  }

  if (a4)
  {
    v19 = &type metadata for String;
    *&v18 = a3;
    *(&v18 + 1) = a4;
    sub_10000B48C(&v18, v17);
    v13 = v20;
    v14 = swift_isUniquelyReferenced_nonNull_native();
    sub_100038954(v17, 0x6D614E434B787541, 0xE900000000000065, v14);
  }

  else
  {
    sub_1000366A0(0x6D614E434B787541, 0xE900000000000065, &v18);
    sub_10000A184(&v18, &qword_1001343C8, &unk_1000F3CA0);
    v13 = v20;
  }

  v19 = sub_100003CDC(&qword_100135158, &qword_1000F5040);
  *&v18 = a5;
  sub_10000B48C(&v18, v17);
  v15 = swift_isUniquelyReferenced_nonNull_native();
  sub_100038954(v17, 0xD000000000000016, 0x80000001001065A0, v15);
  return v13;
}

uint64_t sub_10006C000()
{
  RootEntry = IORegistryGetRootEntry(kIOMainPortDefault);
  if (RootEntry)
  {
    v1 = RootEntry;
    v2 = String._bridgeToObjectiveC()();
    CFProperty = IORegistryEntryCreateCFProperty(v1, v2, kCFAllocatorDefault, 0);

    if (CFProperty)
    {
      v4 = CFGetTypeID(CFProperty);
      if (v4 == CFNumberGetTypeID())
      {
        v5 = String._bridgeToObjectiveC()();
        v6 = IORegistryEntryCreateCFProperty(v1, v5, kCFAllocatorDefault, 0);

        if (v6)
        {
          v7 = CFGetTypeID(v6);
          if (v7 == CFNumberGetTypeID())
          {
            swift_unknownObjectRetain();
            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              static Int32._conditionallyBridgeFromObjectiveC(_:result:)();
            }

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            goto LABEL_15;
          }

          swift_unknownObjectRelease();
        }

        v10 = static os_log_type_t.error.getter();
        sub_10001491C();
        v9 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, v9, "CPU Subtype is not a number?", 28, 2, _swiftEmptyArrayStorage);
        swift_unknownObjectRelease();
LABEL_14:

LABEL_15:
        IOObjectRelease(v1);
        return 0;
      }

      swift_unknownObjectRelease();
    }

    v8 = static os_log_type_t.error.getter();
    sub_10001491C();
    v9 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, v9, "CPU Type is not a number?", 25, 2, _swiftEmptyArrayStorage);
    goto LABEL_14;
  }

  return 0;
}

unint64_t sub_10006C3A0(unsigned __int8 a1, char a2, uint64_t a3)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0xE600000000000000;
      v6 = 0x6D6574737953;
    }

    else
    {
      v5 = 0xE700000000000000;
      v6 = 0x7972616D697250;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0xE900000000000079;
    v6 = 0x7261696C69787541;
  }

  else if (a1 == 3)
  {
    v5 = 0xE800000000000000;
    v6 = 0x7373656C65646F43;
  }

  else
  {
    v5 = 0xE300000000000000;
    v6 = 7958081;
  }

  sub_100003CDC(&qword_1001345D8, &unk_1000F3E00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000F7EC0;
  *(inited + 32) = 0x697463656C6C6F43;
  *(inited + 40) = 0xEF65707954206E6FLL;
  *(inited + 48) = v6;
  *(inited + 56) = v5;
  *(inited + 72) = &type metadata for String;
  strcpy((inited + 80), "Loaded State");
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  if (a2)
  {
    if (a2 == 1)
    {
      v8 = 0xE800000000000000;
      v9 = 0x646564616F6C6E55;
    }

    else
    {
      v8 = 0xE300000000000000;
      v9 = 7958081;
    }
  }

  else
  {
    v8 = 0xE600000000000000;
    v9 = 0x646564616F4CLL;
  }

  *(inited + 96) = v9;
  *(inited + 104) = v8;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 0xD000000000000016;
  *(inited + 136) = 0x8000000100104B00;
  v10 = inited;
  *(inited + 168) = sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
  *(v10 + 144) = a3;
  v11 = sub_10003E208(v10);
  swift_setDeallocating();
  sub_100003CDC(&unk_1001372D0, &unk_1000F4500);
  swift_arrayDestroy();
  return v11;
}

uint64_t sub_10006C5B8()
{
  if (qword_100133A38 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v0 = qword_10014E890;
    v1 = sub_1000413F8(_swiftEmptyArrayStorage);
    v2 = *(v0 + 16);
    if (!v2)
    {
      return v1;
    }

    v3 = 0;
    v4 = v0 + 32;
    while (v3 < *(v0 + 16))
    {
      v23 = *(v4 + 16 * v3);
      v6 = (*(*(v4 + 16 * v3 + 8) + 8))();
      v8 = v7;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = v1;
      v10 = sub_100061588(v6, v8);
      v12 = *(v1 + 16);
      v13 = (v11 & 1) == 0;
      v14 = __OFADD__(v12, v13);
      v15 = v12 + v13;
      if (v14)
      {
        goto LABEL_19;
      }

      v16 = v11;
      if (*(v1 + 24) < v15)
      {
        sub_100035680(v15, isUniquelyReferenced_nonNull_native);
        v10 = sub_100061588(v6, v8);
        if ((v16 & 1) != (v17 & 1))
        {
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

LABEL_12:
        if (v16)
        {
          goto LABEL_4;
        }

        goto LABEL_13;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_12;
      }

      v21 = v10;
      sub_10003B428();
      v10 = v21;
      if (v16)
      {
LABEL_4:
        v5 = v10;

        v1 = v24;
        *(v24[7] + 16 * v5) = v23;
        goto LABEL_5;
      }

LABEL_13:
      v1 = v24;
      v24[(v10 >> 6) + 8] |= 1 << v10;
      v18 = (v24[6] + 16 * v10);
      *v18 = v6;
      v18[1] = v8;
      *(v24[7] + 16 * v10) = v23;
      v19 = v24[2];
      v14 = __OFADD__(v19, 1);
      v20 = v19 + 1;
      if (v14)
      {
        goto LABEL_20;
      }

      v24[2] = v20;
LABEL_5:
      if (v2 == ++v3)
      {
        return v1;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    swift_once();
  }
}

void *sub_10006C7C4(void *result)
{
  if ((*(*(result[3] - 8) + 80) & 0x20000) != 0)
  {
  }

  return result;
}

uint64_t sub_10006C928(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
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

uint64_t sub_10006C984(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_10006C9E4(uint64_t a1, int a2)
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

uint64_t sub_10006CA2C(uint64_t result, int a2, int a3)
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

uint64_t sub_10006CAA0(uint64_t a1)
{
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10006CB58(_DWORD *a1, uint64_t a2)
{
  v4 = static os_log_type_t.info.getter();
  sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
  v5 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v4, &_mh_execute_header, v5, "Received MIG message", 20, 2, _swiftEmptyArrayStorage);

  v6 = sub_100001860(a1, a2);
  if (!v6)
  {
    v7 = a1[5] - 64;
    v8 = static os_log_type_t.error.getter();
    v9 = static OS_os_log.default.getter();
    if (v7 > 0xC)
    {
      os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, v9, "Unknown MIG message received.", 29, 2, _swiftEmptyArrayStorage);
    }

    else
    {
      os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, v9, "Failed to process MIG message.", 30, 2, _swiftEmptyArrayStorage);
    }
  }

  sub_100009FEC(0, &unk_1001365C0, NSNumber_ptr);
  isa = NSNumber.init(BOOLeanLiteral:)(v6 != 0).super.super.isa;
  v11 = Int32.init(truncating:)();

  return v11;
}

uint64_t sub_10006CCB0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_10006CCF4()
{
  if (*(v0 + *(*v0 + 104)))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    OS_dispatch_source.activate()();

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10006CD60()
{
  v1 = *(*v0 + 96);
  v2 = type metadata accessor for Optional();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_10006CE1C()
{
  sub_10006CD60();

  return swift_deallocClassInstance();
}

uint64_t sub_10006CE8C(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10006CF6C@<X0>(uint64_t a1@<X8>)
{
  v3 = *((swift_isaMask & *v1) + 0x60);
  swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Optional();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, &v1[v3], v4);
}

id sub_10006D044()
{
  v1 = type metadata accessor for OSSignpostID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1, v3);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_signpost_type_t.event.getter();
  if (qword_100133AB8 != -1)
  {
    swift_once();
  }

  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  (*(v2 + 8))(v5, v1);
  return [*(v0 + *((swift_isaMask & *v0) + 0x68)) resume];
}

uint64_t sub_10006D1A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1000F3160;
  v8 = [a1 processIdentifier];
  *(v7 + 56) = &type metadata for Int32;
  *(v7 + 64) = &protocol witness table for Int32;
  *(v7 + 32) = v8;
  sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
  v9 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Connection with client pid %d interrupted.", v11);

  return (*(a4 + 64))(a3, a4);
}

uint64_t sub_10006D2B8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1000F3160;
  v8 = [a1 processIdentifier];
  *(v7 + 56) = &type metadata for Int32;
  *(v7 + 64) = &protocol witness table for Int32;
  *(v7 + 32) = v8;
  sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
  v9 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Connection with client pid %d invalidated.", v11);

  return (*(a4 + 56))(a3, a4);
}

uint64_t sub_10006D3C8(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  v9 = sub_10006D654(v7);

  return v9 & 1;
}

id sub_10006D468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for NSXPCRequestSource(0, *((swift_isaMask & *v4) + 0x50), *((swift_isaMask & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, "dealloc");
}

void sub_10006D4D8(char *a1)
{
  v2 = *((swift_isaMask & *a1) + 0x60);
  swift_getAssociatedTypeWitness();
  v3 = type metadata accessor for Optional();
  (*(*(v3 - 8) + 8))(&a1[v2], v3);

  v4 = *&a1[*((swift_isaMask & *a1) + 0x78)];
}

uint64_t sub_10006D654(void *a1)
{
  v3 = *v1;
  v4 = swift_isaMask;
  v82 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v81 = *(v82 - 1);
  __chkstk_darwin(v82, v5);
  v80 = (&v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v78 = type metadata accessor for OS_dispatch_workloop.Attributes();
  __chkstk_darwin(v78, v7);
  v79 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *((v4 & v3) + 0x58);
  v10 = *((v4 & v3) + 0x50);
  v88 = v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v74 = type metadata accessor for Optional();
  v73 = *(v74 - 8);
  v13 = __chkstk_darwin(v74, v12);
  v77 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13, v15);
  v86 = &v72 - v17;
  v87 = v10;
  v85 = *(v10 - 8);
  v19 = __chkstk_darwin(v16, v18);
  v83 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = v20;
  __chkstk_darwin(v19, v21);
  v89 = &v72 - v22;
  v23 = type metadata accessor for OSSignpostID();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23, v25);
  v27 = &v72 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = static os_signpost_type_t.event.getter();
  if (qword_100133AB8 != -1)
  {
    swift_once();
  }

  v29 = qword_10014E978;
  sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1000F3160;
  v31 = [a1 processIdentifier];
  *(v30 + 56) = &type metadata for Int32;
  *(v30 + 64) = &protocol witness table for Int32;
  *(v30 + 32) = v31;
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:_:_:)(v28, &_mh_execute_header, v29, "listener(_:shouldAcceptNewConnection:)", 38, 2, v27, "Pid: %d", 7);

  (*(v24 + 8))(v27, v23);
  v32 = *(v1 + *((swift_isaMask & *v1) + 0x78));
  [a1 setExportedInterface:v32];
  v33 = v86;
  sub_10006CF6C(v86);
  v34 = *(*(AssociatedTypeWitness - 8) + 48);
  result = v34(v33, 1, AssociatedTypeWitness);
  v76 = v1;
  if (result == 1)
  {
    __break(1u);
    return result;
  }

  v36 = v88;
  v37 = *(v88 + 40);
  v38 = a1;
  v37(v86, v38, v87, v36);
  v39 = v38;
  [v38 setExportedObject:_bridgeAnythingToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  v40 = v77;
  sub_10006CF6C(v77);
  if (v34(v40, 1, AssociatedTypeWitness) == 1)
  {
    (*(v73 + 8))(v40, v74);
    v41 = v81;
    v42 = v80;
    p_ivars = &ApprovalSettingsStateManager.ivars;
LABEL_9:
    v98 = 0;
    v96 = 0u;
    v97 = 0u;
    goto LABEL_10;
  }

  sub_100003CDC(&unk_1001365B0, &qword_1000F8648);
  v44 = swift_dynamicCast();
  v41 = v81;
  v42 = v80;
  p_ivars = (&ApprovalSettingsStateManager + 48);
  if (!v44)
  {
    goto LABEL_9;
  }

  if (!*(&v97 + 1))
  {
LABEL_10:
    v47 = 0x8000000100106960;
    sub_10006E148(&v96);
    v45 = 0xD00000000000001ALL;
    goto LABEL_11;
  }

  sub_100009F34(&v96, &aBlock);
  sub_100003C4C(&aBlock, v93);
  swift_getDynamicType();
  v45 = (*(v94 + 4))();
  v47 = v46;
  sub_100003C90(&aBlock);
LABEL_11:
  sub_100009FEC(0, &qword_100136590, OS_dispatch_workloop_ptr);
  aBlock = 0;
  v91 = 0xE000000000000000;
  _StringGuts.grow(_:)(20);

  aBlock = v45;
  v91 = v47;
  v48._object = 0x8000000100106980;
  v48._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v48);
  LODWORD(v96) = [v39 p_ivars[132]];
  v49._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v49);

  aBlock = _swiftEmptyArrayStorage;
  sub_10006E1B0();
  sub_100003CDC(&qword_1001365A0, &qword_1000F8640);
  sub_10006E208();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v41[13](v42, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v82);
  v50 = OS_dispatch_workloop.init(label:attributes:autoreleaseFrequency:osWorkgroup:)();
  v75 = v39;
  v86 = v50;
  [v39 _setQueue:?];
  v51 = v85;
  v82 = *(v85 + 16);
  v52 = v83;
  v53 = v87;
  v82(v83, v89, v87);
  v54 = (*(v51 + 80) + 40) & ~*(v51 + 80);
  v55 = swift_allocObject();
  v56 = v88;
  v55[2] = v53;
  v55[3] = v56;
  v55[4] = v39;
  v81 = *(v51 + 32);
  (v81)(v55 + v54, v52, v53);
  v94 = sub_10006E270;
  v95 = v55;
  aBlock = _NSConcreteStackBlock;
  v91 = 1107296256;
  v80 = &v92;
  v92 = sub_10006CCB0;
  v93 = &unk_100129640;
  v57 = _Block_copy(&aBlock);
  v58 = v75;

  [v58 setInterruptionHandler:v57];
  _Block_release(v57);
  v82(v52, v89, v53);
  v59 = swift_allocObject();
  v60 = v88;
  v59[2] = v53;
  v59[3] = v60;
  v59[4] = v58;
  (v81)(v59 + v54, v52, v53);
  v94 = sub_10006E35C;
  v95 = v59;
  aBlock = _NSConcreteStackBlock;
  v91 = 1107296256;
  v92 = sub_10006CCB0;
  v93 = &unk_100129690;
  v61 = _Block_copy(&aBlock);
  v62 = v58;

  [v62 setInvalidationHandler:v61];
  _Block_release(v61);
  v63 = (*(v60 + 48))(v53, v60);
  v64 = *(v63 + 16);
  if (v64)
  {
    v65 = (v63 + 56);
    do
    {
      v66 = *(v65 - 3);
      v67 = *(v65 - 2);
      v68 = *(v65 - 1);
      v69 = *v65;
      v65 += 32;
      [v32 setInterface:v66 forSelector:v67 argumentIndex:v68 ofReply:v69];
      --v64;
    }

    while (v64);
  }

  v70 = v89;
  v71 = v87;
  (*(v88 + 72))(v32, v87);
  [v62 resume];

  (*(v85 + 8))(v70, v71);
  return 1;
}