uint64_t sub_10016508C(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_1001650E4(uint64_t a1, uint64_t a2)
{
  v10 = String.lowercased()();
  v9 = &v10;
  v2 = sub_10015FB80(sub_100165538, v8, &off_100300070);

  if (v2)
  {

    swift_arrayDestroy();
    return v2 & 1;
  }

  v3 = String.lowercased()();

  v10 = v3;
  __chkstk_darwin(v4);
  v7[2] = &v10;
  v5 = sub_10015FB80(sub_100166F10, v7, &off_1003000E0);
  swift_arrayDestroy();

  if (v5)
  {
    return v2 & 1;
  }

  return 2;
}

unint64_t sub_100165238(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_100164584(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_100165554(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

unint64_t sub_1001655AC(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    v25 = 0;
    LOBYTE(v24) = 1;
LABEL_65:
    LOBYTE(v27[0]) = v24;
    return v25 | ((v24 & 1) << 32);
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v6 = sub_100164B10(result, a2, 10);

    v24 = (v6 >> 32) & 1;
LABEL_63:
    v25 = v6;
    if (v24)
    {
      v25 = 0;
    }

    goto LABEL_65;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v3 = v26;
    }

    v5 = *result;
    if (v5 == 43)
    {
      if (v3 >= 1)
      {
        if (--v3)
        {
          LODWORD(v6) = 0;
          if (result)
          {
            v13 = (result + 1);
            while (1)
            {
              v14 = *v13 - 48;
              if (v14 > 9)
              {
                goto LABEL_61;
              }

              v15 = 10 * v6;
              if ((v15 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_61;
              }

              LODWORD(v6) = v15 + v14;
              if (__CFADD__(v15, v14))
              {
                goto LABEL_61;
              }

              ++v13;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

        goto LABEL_61;
      }

      goto LABEL_71;
    }

    if (v5 != 45)
    {
      if (v3)
      {
        LODWORD(v6) = 0;
        if (result)
        {
          while (1)
          {
            v19 = *result - 48;
            if (v19 > 9)
            {
              goto LABEL_61;
            }

            v20 = 10 * v6;
            if ((v20 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_61;
            }

            LODWORD(v6) = v20 + v19;
            if (__CFADD__(v20, v19))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_60;
      }

LABEL_61:
      LODWORD(v6) = 0;
      LOBYTE(v3) = 1;
      goto LABEL_62;
    }

    if (v3 >= 1)
    {
      if (--v3)
      {
        LODWORD(v6) = 0;
        if (result)
        {
          v7 = (result + 1);
          while (1)
          {
            v8 = *v7 - 48;
            if (v8 > 9)
            {
              goto LABEL_61;
            }

            v9 = 10 * v6;
            if ((v9 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_61;
            }

            LODWORD(v6) = v9 - v8;
            if (v9 < v8)
            {
              goto LABEL_61;
            }

            ++v7;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_60:
        LOBYTE(v3) = 0;
LABEL_62:
        v28 = v3;
        LOBYTE(v24) = v3;

        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v27[0] = result;
  v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v2)
      {
        LODWORD(v6) = 0;
        v21 = v27;
        while (1)
        {
          v22 = *v21 - 48;
          if (v22 > 9)
          {
            break;
          }

          v23 = 10 * v6;
          if ((v23 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v6) = v23 + v22;
          if (__CFADD__(v23, v22))
          {
            break;
          }

          ++v21;
          if (!--v2)
          {
            goto LABEL_60;
          }
        }
      }

      goto LABEL_61;
    }

    if (v2)
    {
      v3 = v2 - 1;
      if (v2 != 1)
      {
        LODWORD(v6) = 0;
        v10 = v27 + 1;
        while (1)
        {
          v11 = *v10 - 48;
          if (v11 > 9)
          {
            break;
          }

          v12 = 10 * v6;
          if ((v12 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v6) = v12 - v11;
          if (v12 < v11)
          {
            break;
          }

          ++v10;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_70;
  }

  if (v2)
  {
    v3 = v2 - 1;
    if (v2 != 1)
    {
      LODWORD(v6) = 0;
      v16 = v27 + 1;
      while (1)
      {
        v17 = *v16 - 48;
        if (v17 > 9)
        {
          break;
        }

        v18 = 10 * v6;
        if ((v18 & 0xFFFFFFFF00000000) != 0)
        {
          break;
        }

        LODWORD(v6) = v18 + v17;
        if (__CFADD__(v18, v17))
        {
          break;
        }

        ++v16;
        if (!--v3)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_72:
  __break(1u);
  return result;
}

uint64_t sub_100165888(uint64_t a1)
{
  v2 = *((swift_isaMask & *v1) + 0x50);
  v3 = *(v2 - 8);
  result = __chkstk_darwin(a1);
  v6 = &v9 - v5;
  if (*(v1 + *((v8 & v7) + 0x88)))
  {

    sub_10015FE78(v6);
    CurrentValueSubject.send(_:)();

    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

uint64_t type metadata accessor for UserDefaultsRepresentation(uint64_t a1)
{
  result = qword_1003483E8;
  if (!qword_1003483E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100165A18(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for URL();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for UUID();
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_100165ADC()
{
  result = qword_100348478;
  if (!qword_100348478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348478);
  }

  return result;
}

unint64_t sub_100165B30()
{
  result = qword_100348480;
  if (!qword_100348480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348480);
  }

  return result;
}

uint64_t sub_100165B84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserDefaultsRepresentation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100165BE8()
{
  result = qword_100348488;
  if (!qword_100348488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348488);
  }

  return result;
}

unint64_t sub_100165C3C()
{
  result = qword_100348490;
  if (!qword_100348490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348490);
  }

  return result;
}

unint64_t sub_100165C90()
{
  result = qword_1003484A0;
  if (!qword_1003484A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003484A0);
  }

  return result;
}

unint64_t sub_100165CE4()
{
  result = qword_1003484A8;
  if (!qword_1003484A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003484A8);
  }

  return result;
}

unint64_t sub_100165D38()
{
  result = qword_1003484B0;
  if (!qword_1003484B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003484B0);
  }

  return result;
}

unint64_t sub_100165D8C()
{
  result = qword_1003484B8;
  if (!qword_1003484B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003484B8);
  }

  return result;
}

unint64_t sub_100165DE0()
{
  result = qword_1003484C0;
  if (!qword_1003484C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003484C0);
  }

  return result;
}

unint64_t sub_100165E34()
{
  result = qword_1003484C8;
  if (!qword_1003484C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003484C8);
  }

  return result;
}

unint64_t sub_100165E88()
{
  result = qword_1003484D0;
  if (!qword_1003484D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003484D0);
  }

  return result;
}

unint64_t sub_100165EDC()
{
  result = qword_1003484D8;
  if (!qword_1003484D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003484D8);
  }

  return result;
}

uint64_t sub_100165F30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserDefaultsRepresentation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100165F94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100165FDC()
{
  result = qword_100348540;
  if (!qword_100348540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348540);
  }

  return result;
}

unint64_t sub_1001660E4()
{
  result = qword_100348548;
  if (!qword_100348548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348548);
  }

  return result;
}

unint64_t sub_10016613C()
{
  result = qword_100348550;
  if (!qword_100348550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348550);
  }

  return result;
}

unint64_t sub_100166194()
{
  result = qword_100348558;
  if (!qword_100348558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348558);
  }

  return result;
}

unint64_t sub_1001661EC()
{
  result = qword_100348560;
  if (!qword_100348560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348560);
  }

  return result;
}

unint64_t sub_100166244()
{
  result = qword_100348568;
  if (!qword_100348568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348568);
  }

  return result;
}

unint64_t sub_10016629C()
{
  result = qword_100348570;
  if (!qword_100348570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348570);
  }

  return result;
}

unint64_t sub_1001662F4()
{
  result = qword_100348578;
  if (!qword_100348578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348578);
  }

  return result;
}

unint64_t sub_10016634C()
{
  result = qword_100348580;
  if (!qword_100348580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348580);
  }

  return result;
}

unint64_t sub_1001663A4()
{
  result = qword_100348588;
  if (!qword_100348588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348588);
  }

  return result;
}

unint64_t sub_1001663FC()
{
  result = qword_100348590;
  if (!qword_100348590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348590);
  }

  return result;
}

unint64_t sub_100166454()
{
  result = qword_100348598;
  if (!qword_100348598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348598);
  }

  return result;
}

unint64_t sub_1001664AC()
{
  result = qword_1003485A0;
  if (!qword_1003485A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003485A0);
  }

  return result;
}

unint64_t sub_100166504()
{
  result = qword_1003485A8;
  if (!qword_1003485A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003485A8);
  }

  return result;
}

unint64_t sub_10016655C()
{
  result = qword_1003485B0;
  if (!qword_1003485B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003485B0);
  }

  return result;
}

unint64_t sub_1001665B4()
{
  result = qword_1003485B8;
  if (!qword_1003485B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003485B8);
  }

  return result;
}

unint64_t sub_10016660C()
{
  result = qword_1003485C0;
  if (!qword_1003485C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003485C0);
  }

  return result;
}

unint64_t sub_100166664()
{
  result = qword_1003485C8;
  if (!qword_1003485C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003485C8);
  }

  return result;
}

unint64_t sub_1001666BC()
{
  result = qword_1003485D0;
  if (!qword_1003485D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003485D0);
  }

  return result;
}

unint64_t sub_100166714()
{
  result = qword_1003485D8;
  if (!qword_1003485D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003485D8);
  }

  return result;
}

unint64_t sub_10016676C()
{
  result = qword_1003485E0;
  if (!qword_1003485E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003485E0);
  }

  return result;
}

unint64_t sub_1001667C4()
{
  result = qword_1003485E8;
  if (!qword_1003485E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003485E8);
  }

  return result;
}

unint64_t sub_10016681C()
{
  result = qword_1003485F0;
  if (!qword_1003485F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003485F0);
  }

  return result;
}

unint64_t sub_100166874()
{
  result = qword_1003485F8;
  if (!qword_1003485F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003485F8);
  }

  return result;
}

unint64_t sub_1001668CC()
{
  result = qword_100348600;
  if (!qword_100348600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348600);
  }

  return result;
}

unint64_t sub_100166924()
{
  result = qword_100348608;
  if (!qword_100348608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348608);
  }

  return result;
}

unint64_t sub_10016697C()
{
  result = qword_100348610;
  if (!qword_100348610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348610);
  }

  return result;
}

unint64_t sub_1001669D4()
{
  result = qword_100348618;
  if (!qword_100348618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348618);
  }

  return result;
}

unint64_t sub_100166A2C()
{
  result = qword_100348620;
  if (!qword_100348620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348620);
  }

  return result;
}

unint64_t sub_100166A84()
{
  result = qword_100348628;
  if (!qword_100348628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348628);
  }

  return result;
}

unint64_t sub_100166ADC()
{
  result = qword_100348630;
  if (!qword_100348630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348630);
  }

  return result;
}

unint64_t sub_100166B34()
{
  result = qword_100348638;
  if (!qword_100348638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348638);
  }

  return result;
}

unint64_t sub_100166B8C()
{
  result = qword_100348640;
  if (!qword_100348640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348640);
  }

  return result;
}

uint64_t sub_100166BE0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1819242338 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C62756F64 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 7630441 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x676E69727473 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x3233746E6975 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 1684632949 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 1701736302 && a2 == 0xE400000000000000)
  {

    return 9;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

void sub_100166F34(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = a1;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_10016729C(v4, &v45);
  if (!v3)
  {
    v36 = 0;
    v37 = a2;
    v11 = v45;
    if (v45)
    {
      v44 = v10;
      v41 = v46;
      v42 = v6;
      LOBYTE(v48) = BYTE8(v45);
      v12 = sub_100013158(&qword_100348678, type metadata accessor for ContextDeliveryModeStateMachine, &unk_10028D994);
      v13 = *(v12 + 88);
      v14 = type metadata accessor for ContextDeliveryModeStateMachine(0);
      v13(&v48, v14, v12);
      v16 = *(v11 + 16);
      if (v16)
      {
        v17 = 0;
        v18 = v11 + 40;
        while (v17 < *(v11 + 16))
        {
          ++v17;
          v19 = *(v18 - 8);
          LOBYTE(v48) = v4;

          v19(&v48);

          v18 += 16;
          if (v16 == v17)
          {
            goto LABEL_7;
          }
        }

        __break(1u);
        goto LABEL_16;
      }

LABEL_7:
      v21 = v41;
      v20 = v42;
      v22 = *(v41 + 16);
      v23 = v44;
      if (v22)
      {
        v24 = 0;
        v25 = OBJC_IVAR____TtC17proximitycontrold31ContextDeliveryModeStateMachine_log;
        v43 = (v7 + 16);
        v26 = (v7 + 8);
        *&v15 = 136315138;
        v38 = v15;
        v39 = v26;
        v40 = v9;
        while (v24 < *(v21 + 16))
        {
          (*v43)(v9, v23 + v25, v20);
          v27 = Logger.logObject.getter();
          v28 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v27, v28))
          {
            v29 = swift_slowAlloc();
            v30 = swift_slowAlloc();
            v48 = v30;
            *v29 = v38;
            v31 = String.init<A>(describing:)();
            v33 = sub_100017494(v31, v32, &v48);
            v9 = v40;

            *(v29 + 4) = v33;
            v20 = v42;
            _os_log_impl(&_mh_execute_header, v27, v28, "Output: %s", v29, 0xCu);
            sub_10000903C(v30);
            v21 = v41;

            v26 = v39;
          }

          (*v26)(v9, v20);
          ++v24;
          v23 = v44;

          PassthroughSubject.send(_:)();

          if (v22 == v24)
          {
            goto LABEL_13;
          }
        }

LABEL_16:
        __break(1u);
        return;
      }
    }

LABEL_13:
    v34 = v46;
    v35 = v37;
    *v37 = v45;
    v35[1] = v34;
    v35[2] = v47;
  }
}

void sub_10016729C(unsigned __int8 a1@<W0>, void *a2@<X8>)
{
  v3 = a1;
  v4 = *(v2 + 16);
  v67 = &v70;

  v5 = sub_1000816EC(sub_10016B5D4, v66, v4);
  v6 = 0;
  v7 = *(v5 + 16);
  v8 = _swiftEmptyArrayStorage;
LABEL_2:
  v9 = v5 + 16 + 48 * v6;
  while (v7 != v6)
  {
    if (v6 >= *(v5 + 16))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      return;
    }

    ++v6;
    v10 = (v9 + 48);
    v11 = *(v9 + 25);
    v12 = v11 == 5 || v11 == v3;
    v9 += 48;
    if (v12)
    {
      v55 = *(v10 - 24);
      v13 = *(v10 - 2);
      v61 = *(v10 - 8);
      v14 = v10[1];
      v57 = *(v10 - 4);
      v59 = *v10;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v69 = v8;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1000CE040(0, v8[2] + 1, 1);
        v8 = v69;
      }

      v16 = v8;
      v17 = v8[2];
      v18 = v16[3];
      if (v17 >= v18 >> 1)
      {
        sub_1000CE040((v18 > 1), v17 + 1, 1);
        v16 = v69;
      }

      v16[2] = v17 + 1;
      v19 = &v16[6 * v17];
      v19[4] = v57;
      *(v19 + 40) = v55;
      *(v19 + 41) = v11;
      v19[6] = v13;
      *(v19 + 56) = v61;
      v19[8] = v59;
      v19[9] = v14;
      v8 = v16;
      goto LABEL_2;
    }
  }

  v20 = v8[2];
  if (v20)
  {
    v21 = 0;
    v22 = v8 + 5;
    v62 = v8[2];
    v56 = v20 - 1;
    v58 = v8 + 5;
    v60 = _swiftEmptyArrayStorage;
    v65 = v3;
    v64 = v8;
LABEL_17:
    v23 = &v22[6 * v21];
    v24 = v21;
    while (v24 < v8[2])
    {
      v25 = *(v23 - 1);
      v63 = *v23;
      v26 = *(v23 + 1);
      v27 = v23[1];
      v28 = *(v23 + 16);
      v30 = v23[3];
      v29 = v23[4];
      v21 = v24 + 1;
      v68 = v3;
      v31 = v24;

      if (v30(&v68))
      {
        v52 = v29;
        v53 = v31;
        v32 = v60;
        v33 = swift_isUniquelyReferenced_nonNull_native();
        v69 = v60;
        if ((v33 & 1) == 0)
        {
          sub_1000CE040(0, v60[2] + 1, 1);
          v32 = v69;
        }

        LOBYTE(v3) = v65;
        v34 = v63;
        v35 = v30;
        v37 = v32[2];
        v36 = v32[3];
        v38 = v37 + 1;
        if (v37 >= v36 >> 1)
        {
          sub_1000CE040((v36 > 1), v37 + 1, 1);
          v38 = v37 + 1;
          v35 = v30;
          v34 = v63;
          LOBYTE(v3) = v65;
          v32 = v69;
        }

        v32[2] = v38;
        v60 = v32;
        v39 = &v32[6 * v37];
        v39[4] = v25;
        *(v39 + 40) = v34;
        *(v39 + 41) = v26;
        v39[6] = v27;
        *(v39 + 56) = v28;
        v39[8] = v35;
        v39[9] = v52;
        v8 = v64;
        v22 = v58;
        if (v56 != v53)
        {
          goto LABEL_17;
        }

        goto LABEL_29;
      }

      v23 += 6;
      v24 = v21;
      LOBYTE(v3) = v65;
      v8 = v64;
      if (v62 == v21)
      {
        goto LABEL_29;
      }
    }

    goto LABEL_36;
  }

  v60 = _swiftEmptyArrayStorage;
LABEL_29:

  v40 = v60[2];
  if (v40 <= 1)
  {
    if (v40)
    {
      v46 = v60[4];
      v47 = v60[6];
      v48 = *(v60 + 56);
      v49 = v60[8];
      v50 = v60[9];
      v51 = *(v60 + 20);
    }

    else
    {
      v46 = 0;
      v51 = 0;
      v47 = 0;
      v48 = 0;
      v49 = 0;
      v50 = 0;
    }

    *a2 = v46;
    a2[1] = v51;
    a2[2] = v47;
    a2[3] = v48;
    a2[4] = v49;
    a2[5] = v50;
  }

  else
  {
    sub_100035D04(&qword_100348680, &qword_100281CC0);
    sub_10000E244(&qword_100348688, &qword_100348680, &qword_100281CC0, &unk_10027C780);
    swift_allocError();
    v42 = v41;
    v43 = sub_100013158(&qword_100348678, type metadata accessor for ContextDeliveryModeStateMachine, &unk_10028D994);
    v44 = *(v43 + 80);
    v45 = type metadata accessor for ContextDeliveryModeStateMachine(0);
    v44(v45, v43);
    *(v42 + 1) = v3;
    *(v42 + 8) = v60;
    *(v42 + 16) = 0;
    swift_willThrow();
  }
}

uint64_t sub_1001677A8(uint64_t a1)
{
  v3 = sub_100035D04(&qword_10033AAF8, &qword_100271808);
  __chkstk_darwin(v3 - 8);
  v107 = &v90 - v4;
  v5 = sub_100035D04(&qword_10033AAD0, &qword_100271708);
  v96 = *(v5 - 8);
  v97 = v5;
  v6 = __chkstk_darwin(v5);
  v93 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v90 - v8;
  v10 = type metadata accessor for DiscoveryTokenStateMachine.Input(0);
  v11 = __chkstk_darwin(v10);
  v91 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v90 = &v90 - v14;
  v15 = __chkstk_darwin(v13);
  v100 = &v90 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v90 - v18;
  __chkstk_darwin(v17);
  v21 = &v90 - v20;
  v22 = type metadata accessor for Logger();
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v95 = &v90 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v92 = &v90 - v27;
  v28 = __chkstk_darwin(v26);
  v102 = &v90 - v29;
  __chkstk_darwin(v28);
  v31 = &v90 - v30;
  v108 = v1;
  v32 = *v1;
  v33 = *(v23 + 16);
  v103 = OBJC_IVAR____TtC17proximitycontrold26DiscoveryTokenStateMachine_log;
  v104 = v32;
  v105 = v33;
  v106 = v23 + 16;
  v33(&v90 - v30, v32 + OBJC_IVAR____TtC17proximitycontrold26DiscoveryTokenStateMachine_log, v22);
  v109 = a1;
  sub_1000120BC(a1, v21);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();
  v36 = os_log_type_enabled(v34, v35);
  v98 = v19;
  v99 = v10;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v101 = v23;
    v38 = v37;
    v39 = swift_slowAlloc();
    v94 = v9;
    v40 = v39;
    v112[0] = v39;
    *v38 = 136315138;
    sub_1000120BC(v21, v19);
    v41 = v22;
    v42 = String.init<A>(describing:)();
    v44 = v43;
    sub_100010B48(v21);
    v45 = v42;
    v22 = v41;
    v46 = sub_100017494(v45, v44, v112);

    *(v38 + 4) = v46;
    _os_log_impl(&_mh_execute_header, v34, v35, "Sending state input %s", v38, 0xCu);
    sub_10000903C(v40);
    v9 = v94;

    v47 = v101;

    v48 = *(v47 + 8);
    v48(v31, v41);
  }

  else
  {

    sub_100010B48(v21);
    v48 = *(v23 + 8);
    v48(v31, v22);
  }

  v49 = v107;
  v50 = v109;
  sub_1000114E0(v109, v107);
  if ((*(v96 + 48))(v49, 1, v97) == 1)
  {
    sub_1000097E8(v49, &qword_10033AAF8, &qword_100271808);
    v51 = sub_100013158(&qword_10033AA98, type metadata accessor for DiscoveryTokenStateMachine, &unk_10027165C);
    v52 = *(v51 + 80);
    v53 = type metadata accessor for DiscoveryTokenStateMachine(0);
    v52(&v111, v53, v51);
    v54 = v95;
    v105(v95, v104 + v103, v22);
    v55 = v91;
    sub_1000120BC(v50, v91);
    v56 = v111;
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      LODWORD(v109) = v56;
      v112[0] = v60;
      *v59 = 136315394;
      sub_1000120BC(v55, v98);
      v61 = String.init<A>(describing:)();
      v63 = v62;
      sub_100010B48(v55);
      v64 = sub_100017494(v61, v63, v112);

      *(v59 + 4) = v64;
      *(v59 + 12) = 2080;
      v110 = v109;
      v65 = String.init<A>(describing:)();
      v67 = sub_100017494(v65, v66, v112);

      *(v59 + 14) = v67;
      _os_log_impl(&_mh_execute_header, v57, v58, "No edge for state input: %s, state=%s", v59, 0x16u);
      swift_arrayDestroy();

      v68 = v95;
    }

    else
    {

      sub_100010B48(v55);
      v68 = v54;
    }

    return (v48)(v68, v22);
  }

  else
  {
    sub_10016B564(v49, v9);
    v69 = v92;
    v105(v92, v104 + v103, v22);
    v70 = v50;
    v71 = v90;
    sub_1000120BC(v70, v90);
    v72 = v93;
    sub_100009848(v9, v93, &qword_10033AAD0, &qword_100271708);
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = v72;
      v76 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      v112[0] = v109;
      *v76 = 136315394;
      v94 = v9;
      sub_1000120BC(v71, v98);
      v77 = String.init<A>(describing:)();
      v78 = v71;
      v80 = v79;
      sub_100010B48(v78);
      v81 = sub_100017494(v77, v80, v112);

      *(v76 + 4) = v81;
      *(v76 + 12) = 2080;
      v82 = v75;
      v111 = *(v75 + 8);
      v83 = String.init<A>(describing:)();
      v84 = v48;
      v86 = v85;
      sub_1000097E8(v82, &qword_10033AAD0, &qword_100271708);
      v87 = sub_100017494(v83, v86, v112);

      *(v76 + 14) = v87;
      _os_log_impl(&_mh_execute_header, v73, v74, "State after receiving %s: %s", v76, 0x16u);
      swift_arrayDestroy();

      v84(v69, v22);
      v88 = v94;
    }

    else
    {

      sub_1000097E8(v72, &qword_10033AAD0, &qword_100271708);
      sub_100010B48(v71);
      v48(v69, v22);
      v88 = v9;
    }

    return sub_1000097E8(v88, &qword_10033AAD0, &qword_100271708);
  }
}

uint64_t sub_1001682D4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v63 = v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = v61 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = v61 - v12;
  __chkstk_darwin(v11);
  v15 = v61 - v14;
  v16 = *v2;
  v17 = *(v5 + 16);
  v65 = OBJC_IVAR____TtC17proximitycontrold31ContextDeliveryModeStateMachine_log;
  v66 = v16;
  v67 = v17;
  v68 = (v5 + 16);
  v17(v61 - v14, v16 + OBJC_IVAR____TtC17proximitycontrold31ContextDeliveryModeStateMachine_log, v4);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  v20 = os_log_type_enabled(v18, v19);
  v64 = v4;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v61[1] = v2;
    v23 = v22;
    *&v72 = v22;
    *v21 = 136315138;
    LOBYTE(v71[0]) = a1;
    v24 = String.init<A>(describing:)();
    v62 = v13;
    v26 = v5;
    v27 = sub_100017494(v24, v25, &v72);

    *(v21 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v18, v19, "Sending state input %s", v21, 0xCu);
    sub_10000903C(v23);

    v4 = v64;

    v28 = v26;
  }

  else
  {

    v28 = v5;
  }

  v29 = *(v28 + 8);
  v29(v15, v4);
  sub_100166F34(a1, &v72);
  LODWORD(v62) = a1;
  if (v72)
  {
    v30 = BYTE8(v72);
    v67(v10, v66 + v65, v4);

    v31 = Logger.logObject.getter();
    v32 = v4;
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v33))
    {
      v34 = swift_slowAlloc();
      v68 = v29;
      v35 = v34;
      v66 = swift_slowAlloc();
      v71[0] = v66;
      *v35 = 136315394;
      v70 = v62;
      v36 = String.init<A>(describing:)();
      v38 = sub_100017494(v36, v37, v71);
      v67 = v10;
      v39 = v38;

      *(v35 + 4) = v39;
      *(v35 + 12) = 2080;
      v70 = v30;
      v40 = String.init<A>(describing:)();
      v42 = v41;

      v43 = sub_100017494(v40, v42, v71);

      *(v35 + 14) = v43;
      _os_log_impl(&_mh_execute_header, v31, v33, "State after receiving %s: %s", v35, 0x16u);
      swift_arrayDestroy();

      return (v68)(v67, v64);
    }

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    v60 = v10;
    v45 = v32;
  }

  else
  {
    v46 = sub_100013158(&qword_100348678, type metadata accessor for ContextDeliveryModeStateMachine, &unk_10028D994);
    v47 = *(v46 + 80);
    v48 = type metadata accessor for ContextDeliveryModeStateMachine(0);
    v47(&v70, v48, v46);
    v49 = v63;
    v67(v63, v66 + v65, v4);
    v50 = v70;
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v71[0] = swift_slowAlloc();
      *v53 = 136315394;
      v69 = v62;
      v54 = String.init<A>(describing:)();
      v56 = sub_100017494(v54, v55, v71);

      *(v53 + 4) = v56;
      *(v53 + 12) = 2080;
      v69 = v50;
      v57 = String.init<A>(describing:)();
      v59 = sub_100017494(v57, v58, v71);

      *(v53 + 14) = v59;
      _os_log_impl(&_mh_execute_header, v51, v52, "No edge for state input: %s, state=%s", v53, 0x16u);
      swift_arrayDestroy();

      v60 = v63;
    }

    else
    {

      v60 = v49;
    }

    v45 = v4;
  }

  return (v29)(v60, v45);
}

uint64_t sub_100168AF4(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DiscoveryTokenStateMachine.Input(0);
  __chkstk_darwin(v6);
  v8 = (&v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1003390E0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100003078(v9, qword_100348648);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v35 = v12;
    v37 = swift_slowAlloc();
    v38[0] = v37;
    *v12 = 136315138;
    v36 = v11;
    v13 = UUID.uuidString.getter();
    sub_10000B584(8, v13, v14);
    v34 = v10;

    v15 = static String._fromSubstring(_:)();
    v17 = v16;

    v18 = sub_100017494(v15, v17, v38);

    v20 = v34;
    v19 = v35;
    *(v35 + 1) = v18;
    _os_log_impl(&_mh_execute_header, v20, v36, "Received peer token from %s", v19, 0xCu);
    sub_10000903C(v37);
  }

  else
  {
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v21 = *(v38[0] + OBJC_IVAR____TtC17proximitycontrold8Identity_nearbyID);
  *(v38[0] + OBJC_IVAR____TtC17proximitycontrold8Identity_nearbyID) = a1;
  v22 = a1;

  *v8 = v22;
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  v23 = v22;
  sub_1001677A8(v8);
  sub_100010B48(v8);
  swift_endAccess();
  v24 = OBJC_IVAR____TtC17proximitycontrold11NearbyAgent__rangingProxy;
  v25 = *(*(v3 + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent__rangingProxy) + 24);
  if (v25)
  {
    v26 = v25;
    sub_1001A5D30(v23, a2);

    v27 = *(*(v3 + v24) + 24);
    if (v27)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v28 = v27;
      static Published.subscript.getter();

      v29 = v38[0];
      if (v38[0])
      {
        v30 = [v38[0] discoveryToken];

        if (v30)
        {
          sub_100003118(0, &qword_100347E38, NSKeyedArchiver_ptr);
          v31 = sub_100168F0C(v30);

          return v31;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_100168F0C(uint64_t a1)
{
  v6 = 0;
  v1 = [swift_getObjCClassFromMetadata() archivedDataWithRootObject:a1 requiringSecureCoding:1 error:&v6];
  v2 = v6;
  if (v1)
  {
    v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = v2;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    return 0;
  }

  return v3;
}

uint64_t sub_100168FEC()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_100348648);
  v1 = sub_100003078(v0, qword_100348648);
  if (qword_100339070 != -1)
  {
    swift_once();
  }

  v2 = sub_100003078(v0, qword_10038B220);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1001690B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v60 = type metadata accessor for DiscoveryTokenStateMachine.Input(0);
  __chkstk_darwin(v60);
  v7 = v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_100035D04(&qword_10033AAA0, &qword_1002716E0);
  v8 = __chkstk_darwin(v57);
  v59 = v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v56 = (v54 - v11);
  v12 = __chkstk_darwin(v10);
  v61 = (v54 - v13);
  __chkstk_darwin(v12);
  v62 = v54 - v14;
  if (qword_1003390E0 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  v16 = sub_100003078(v15, qword_100348648);

  swift_errorRetain();
  v58 = v16;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v55 = v7;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v23 = v21;
    v63[0] = v21;
    *v19 = 136315394;
    v54[1] = v3;
    if (a2)
    {
      v24 = sub_1000092A0(v21, v22);
      v26 = v25;
    }

    else
    {
      v26 = 0xE500000000000000;
      v24 = 0x296C696E28;
    }

    v27 = sub_100017494(v24, v26, v63);

    *(v19 + 4) = v27;
    *(v19 + 12) = 2112;
    swift_errorRetain();
    v28 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 14) = v28;
    *v20 = v28;
    _os_log_impl(&_mh_execute_header, v17, v18, "### Failed to exchange tokens with %s: %@", v19, 0x16u);
    sub_1000097E8(v20, &qword_100339940, &unk_100272C50);

    sub_10000903C(v23);

    v7 = v55;
    if (!a2)
    {
      return;
    }
  }

  else
  {

    if (!a2)
    {
      return;
    }
  }

  v29 = _convertErrorToNSError(_:)();
  v30 = v61;
  sub_100169834(a2, v29, v61);

  v31 = type metadata accessor for DispatchTimeInterval();
  v32 = *(v31 - 8);
  v33 = *(v32 + 48);
  if (v33(v30, 1, v31) == 1)
  {
    v63[0] = a1;
    swift_errorRetain();
    sub_100035D04(&unk_100346020, &qword_100271A00);
    if (swift_dynamicCast())
    {
      v34 = v64;
    }

    else
    {
      v34 = 11;
    }

    v35 = v56;
    sub_100169DC4(v34, v56);
    if (v33(v35, 1, v31) == 1)
    {
      v63[0] = a1;
      swift_errorRetain();
      if (swift_dynamicCast())
      {
        v36 = v64;
      }

      else
      {
        v36 = 4;
      }

      sub_100169F18(v36, v62);
      if (v33(v35, 1, v31) != 1)
      {
        sub_1000097E8(v35, &qword_10033AAA0, &qword_1002716E0);
      }
    }

    else
    {
      v38 = v62;
      (*(v32 + 32))(v62, v35, v31);
      (*(v32 + 56))(v38, 0, 1, v31);
    }

    v39 = v61;
    if (v33(v61, 1, v31) != 1)
    {
      sub_1000097E8(v39, &qword_10033AAA0, &qword_1002716E0);
    }
  }

  else
  {
    v37 = v62;
    (*(v32 + 32))(v62, v30, v31);
    (*(v32 + 56))(v37, 0, 1, v31);
  }

  v40 = v59;
  sub_100009848(v62, v59, &qword_10033AAA0, &qword_1002716E0);

  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v63[0] = v44;
    *v43 = 136315394;
    v46 = sub_1000092A0(v44, v45);
    v48 = sub_100017494(v46, v47, v63);

    *(v43 + 4) = v48;
    *(v43 + 12) = 2080;
    v49 = Optional.debugDescription.getter();
    v51 = v50;
    sub_1000097E8(v40, &qword_10033AAA0, &qword_1002716E0);
    v52 = sub_100017494(v49, v51, v63);

    *(v43 + 14) = v52;
    _os_log_impl(&_mh_execute_header, v41, v42, "Retry interval for %s: %s", v43, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1000097E8(v40, &qword_10033AAA0, &qword_1002716E0);
  }

  v53 = v62;
  sub_100009848(v62, v7, &qword_10033AAA0, &qword_1002716E0);
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_1001677A8(v7);
  sub_100010B48(v7);
  swift_endAccess();

  sub_1000097E8(v53, &qword_10033AAA0, &qword_1002716E0);
}

uint64_t sub_100169834@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = sub_100035D04(&qword_10033C280, &qword_100272A80);
  __chkstk_darwin(v6 - 8);
  v8 = &v38 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a2 domain];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  if (v14 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v16 == v17)
  {
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v19 & 1) == 0)
    {
LABEL_17:
      v26 = type metadata accessor for DispatchTimeInterval();
      v27 = *(*(v26 - 8) + 56);

      return v27(a3, 1, 1, v26);
    }
  }

  v20 = [a2 code];
  if (v20 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (v20 > 0x7FFFFFFF)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v20 != -6714)
  {
    LODWORD(a1) = v20;
    if (qword_1003390E0 == -1)
    {
LABEL_14:
      v22 = type metadata accessor for Logger();
      sub_100003078(v22, qword_100348648);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 67109120;
        *(v25 + 4) = a1;
        _os_log_impl(&_mh_execute_header, v23, v24, "Unsupported rapport error code %d", v25, 8u);
      }

      goto LABEL_17;
    }

LABEL_30:
    swift_once();
    goto LABEL_14;
  }

  v21 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_lastTokenSyncAttempt;
  swift_beginAccess();
  sub_100009848(a1 + v21, v8, &qword_10033C280, &qword_100272A80);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1000097E8(v8, &qword_10033C280, &qword_100272A80);
LABEL_22:
    *a3 = 5;
    v30 = enum case for DispatchTimeInterval.seconds(_:);
    v31 = type metadata accessor for DispatchTimeInterval();
    v32 = *(v31 - 8);
    (*(v32 + 104))(a3, v30, v31);
    return (*(v32 + 56))(a3, 0, 1, v31);
  }

  (*(v10 + 32))(v12, v8, v9);
  Date.timeIntervalSinceNow.getter();
  if (fabs(v29) > 10.0)
  {
    (*(v10 + 8))(v12, v9);
    goto LABEL_22;
  }

  if (qword_1003390E0 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  sub_100003078(v33, qword_100348648);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&_mh_execute_header, v34, v35, "'NotHandledErr': Attempted a token sync in past 10s, not trying again", v36, 2u);
  }

  (*(v10 + 8))(v12, v9);
  v37 = type metadata accessor for DispatchTimeInterval();
  return (*(*(v37 - 8) + 56))(a3, 1, 1, v37);
}

uint64_t sub_100169DC4@<X0>(unsigned __int8 a1@<W1>, uint64_t *a2@<X8>)
{
  if (a1 > 5u)
  {
    if (a1 == 6)
    {
      v3 = 5;
      goto LABEL_8;
    }

LABEL_6:
    v4 = type metadata accessor for DispatchTimeInterval();
    v5 = *(*(v4 - 8) + 56);
    v6 = v4;
    v7 = a2;
    v8 = 1;
    goto LABEL_9;
  }

  if (a1 && a1 != 3)
  {
    goto LABEL_6;
  }

  v3 = 1;
LABEL_8:
  *a2 = v3;
  v9 = enum case for DispatchTimeInterval.seconds(_:);
  v10 = type metadata accessor for DispatchTimeInterval();
  v12 = *(v10 - 8);
  (*(v12 + 104))(a2, v9, v10);
  v5 = *(v12 + 56);
  v7 = a2;
  v8 = 0;
  v6 = v10;
LABEL_9:

  return v5(v7, v8, 1, v6);
}

uint64_t sub_100169F18@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{
  if (a1 == 3)
  {
    if (qword_1003390E0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100003078(v3, qword_100348648);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "### Invalid peer, not scheduling retry", v6, 2u);
    }
  }

  v7 = type metadata accessor for DispatchTimeInterval();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2, 1, 1, v7);
}

double sub_10016A04C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v9 = *(v17 - 8);
  __chkstk_darwin(v17);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003391E8 != -1)
  {
    swift_once();
  }

  v16 = qword_10038B5B8;
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = v12;
  v13[4] = a2;
  v13[5] = a3;
  aBlock[4] = sub_10016B5F4;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100018AB8;
  aBlock[3] = &unk_10030C598;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v19 = _swiftEmptyArrayStorage;
  sub_100013158(&qword_10033D8C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100035D04(&unk_100343710, &qword_100271800);
  sub_10000E244(&qword_10033D8D0, &unk_100343710, &qword_100271800, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v18 + 8))(v8, v6);
  (*(v9 + 8))(v11, v17);

  return result;
}

void sub_10016A3A4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v5 = sub_100035D04(&qword_10034C680, &qword_100270390);
  __chkstk_darwin(v5 - 8);
  v96 = v77 - v6;
  v7 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v89 = *(v7 - 8);
  v90 = v7;
  __chkstk_darwin(v7);
  v88 = v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_100035D04(&qword_100348690, &qword_100281CC8);
  v91 = *(v93 - 8);
  __chkstk_darwin(v93);
  v100 = v77 - v9;
  v10 = sub_100035D04(&qword_100348698, &qword_100281CD0);
  v94 = *(v10 - 8);
  v95 = v10;
  __chkstk_darwin(v10);
  v92 = v77 - v11;
  v12 = sub_100035D04(&qword_1003486A0, qword_100281CD8);
  v98 = *(v12 - 8);
  v99 = v12;
  v13 = __chkstk_darwin(v12);
  v97 = v77 - v14;
  v101 = sub_1000092A0(v13, v15);
  v17 = v16;
  if (qword_1003390E0 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100003078(v18, qword_100348648);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = a3;
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v104[0] = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_100017494(v101, v17, v104);
    _os_log_impl(&_mh_execute_header, v19, v20, "START exchanging ranging tokens with %s", v22, 0xCu);
    sub_10000903C(v23);

    a3 = v21;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    sub_10001618C();
    v33 = swift_allocError();
    *v34 = 0x666C6573206C696ELL;
    *(v34 + 8) = 0xE800000000000000;
    *(v34 + 16) = 9;
    (a3)(v33, 1);
    goto LABEL_12;
  }

  v25 = Strong;
  v26 = *(*(Strong + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent__rangingProxy) + 24);
  if (v26)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v27 = v26;
    static Published.subscript.getter();

    v28 = v103;
    if (v103)
    {
      v87 = a3;
      v29 = [v103 discoveryToken];

      if (!v29)
      {

        goto LABEL_16;
      }

      sub_100003118(0, &qword_100347E38, NSKeyedArchiver_ptr);
      v30 = sub_100168F0C(v29);
      v32 = v31;

      if (v32 >> 60 == 15)
      {

LABEL_16:
        a3 = v87;
        goto LABEL_17;
      }

      v86 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_discoveryTokenSyncTask;
      if (*(a1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_discoveryTokenSyncTask))
      {

        v36 = Logger.logObject.getter();
        v37 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          p_isa = &v39->isa;
          v103 = v39;
          *v38 = 136315138;
          v84 = v36;
          v41 = sub_1000092A0(v39, v40);
          v43 = sub_100017494(v41, v42, &v103);
          LODWORD(v83) = v37;
          v44 = v30;
          v45 = v32;
          v46 = v43;

          *(v38 + 4) = v46;
          v32 = v45;
          v30 = v44;
          v36 = v84;
          _os_log_impl(&_mh_execute_header, v84, v83, "### %s already initiated token sync?", v38, 0xCu);
          sub_10000903C(p_isa);
        }
      }

      v47 = *(*&v25[OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_state] + 32);
      if (v47)
      {
        v48 = v47;
        v57 = sub_100123194(v30, v32, a1);
        v84 = v57;

        v103 = v57;
        v58 = v88;
        static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
        v83 = OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_dispatchQueue;
        v102 = *&v25[OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_dispatchQueue];
        v59 = v102;
        v80 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
        v60 = *(v80 - 8);
        v81 = *(v60 + 56);
        v82 = v60 + 56;
        v61 = v96;
        v81(v96, 1, 1, v80);
        v78 = v59;
        p_isa = v32;
        v77[1] = sub_100035D04(&qword_10033EF90, &qword_1002755D0);
        v77[2] = sub_100003118(0, &qword_100339320, OS_dispatch_queue_ptr);
        sub_10000E244(&qword_10033EF98, &qword_10033EF90, &qword_1002755D0, &protocol conformance descriptor for Future<A, B>);
        v79 = sub_1000513CC();
        Publisher.timeout<A>(_:scheduler:options:customError:)();
        sub_1000097E8(v61, &qword_10034C680, &qword_100270390);

        (*(v89 + 8))(v58, v90);

        v103 = *&v25[v83];
        v62 = v103;
        v81(v61, 1, 1, v80);
        sub_10000E244(&qword_1003486A8, &qword_100348690, &qword_100281CC8, &protocol conformance descriptor for Publishers.Timeout<A, B>);
        v90 = v30;
        v63 = v62;
        v65 = v92;
        v64 = v93;
        v66 = v100;
        Publisher.receive<A>(on:options:)();
        sub_1000097E8(v61, &qword_10034C680, &qword_100270390);

        (*(v91 + 8))(v66, v64);
        sub_100003118(0, &qword_10034A350, NIDiscoveryToken_ptr);
        sub_10000E244(&qword_1003486B0, &qword_100348698, &qword_100281CD0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
        v67 = v97;
        v68 = v95;
        Publisher.tryMap<A>(_:)();
        (*(v94 + 8))(v65, v68);
        v69 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v70 = swift_allocObject();
        swift_weakInit();
        v71 = swift_allocObject();
        v71[2] = v69;
        v71[3] = v70;
        v71[4] = v101;
        v71[5] = v17;
        v72 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v73 = swift_allocObject();
        swift_weakInit();
        v74 = swift_allocObject();
        *(v74 + 16) = v72;
        *(v74 + 24) = v73;
        sub_10000E244(&qword_1003486B8, &qword_1003486A0, qword_100281CD8, &protocol conformance descriptor for Publishers.TryMap<A, B>);
        v75 = v99;
        v76 = Publisher.sink(receiveCompletion:receiveValue:)();

        (*(v98 + 8))(v67, v75);
        *(a1 + v86) = v76;

        (v87)(1, 0);
        sub_10006DB04(v90, p_isa);
        goto LABEL_18;
      }

      v49 = v30;

      sub_100123630();
      v50 = swift_allocError();
      *v51 = 6;
      swift_willThrow();
      swift_errorRetain();
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        *v54 = 138412290;
        swift_errorRetain();
        v56 = _swift_stdlib_bridgeErrorToNSError();
        *(v54 + 4) = v56;
        *v55 = v56;
        _os_log_impl(&_mh_execute_header, v52, v53, "### Error sharing token %@", v54, 0xCu);
        sub_1000097E8(v55, &qword_100339940, &unk_100272C50);
      }

      swift_errorRetain();
      (v87)(v50, 1);
      sub_10006DB04(v49, v32);

LABEL_12:

      return;
    }
  }

  else
  {
  }

LABEL_17:
  sub_100123630();
  swift_allocError();
  *v35 = 1;
  a3();

LABEL_18:
}

uint64_t sub_10016B120@<X0>(uint64_t *a1@<X8>)
{
  sub_100123630();
  result = swift_allocError();
  *a1 = result;
  *v3 = 10;
  return result;
}

uint64_t sub_10016B168@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  sub_100003118(0, &qword_10034A350, NIDiscoveryToken_ptr);
  result = sub_10017B1C8(v3, v4);
  if (result)
  {
    *a2 = result;
  }

  else
  {
    sub_100123630();
    swift_allocError();
    *v6 = 0;
    return swift_willThrow();
  }

  return result;
}

double sub_10016B200(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v7 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if (v7)
    {
      swift_beginAccess();
      v11 = swift_weakLoadStrong();
      sub_1001690B4(v7, v11);
    }

    else
    {
      if (qword_1003390E0 != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      sub_100003078(v12, qword_100348648);

      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v18[0] = v16;
        *v15 = 136315138;
        *(v15 + 4) = sub_100017494(a4, a5, v18);
        _os_log_impl(&_mh_execute_header, v13, v14, "DONE exchanging tokens with %s", v15, 0xCu);
        sub_10000903C(v16);
      }
    }

    swift_beginAccess();
    v17 = swift_weakLoadStrong();

    if (v17)
    {
      *(v17 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_discoveryTokenSyncTask) = 0;
    }
  }

  return result;
}

void sub_10016B40C(void **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_beginAccess();
    v6 = swift_weakLoadStrong();
    if (v6)
    {
      v7 = sub_100168AF4(v3, v6);
      sub_10006DB04(v7, v8);
    }

    else
    {
    }
  }
}

BOOL sub_10016B4B0(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 24);
  v8 = *a2;
  v3 = sub_100013158(&qword_100348678, type metadata accessor for ContextDeliveryModeStateMachine, &unk_10028D994);
  v4 = *(v3 + 80);
  v5 = type metadata accessor for ContextDeliveryModeStateMachine(0);
  v4(&v7, v5, v3);
  return v2 == v7;
}

uint64_t sub_10016B564(uint64_t a1, uint64_t a2)
{
  v4 = sub_100035D04(&qword_10033AAD0, &qword_100271708);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10016B600(void (*a1)(void, __n128))
{

  (a1)(*(v1 + 40));

  return _swift_deallocObject(v1, 48, 7);
}

uint64_t sub_10016B67C(uint64_t a1)
{
  if ((*(a1 + 56) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 56) & 3;
  }
}

uint64_t sub_10016B698(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 57))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 56);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10016B6E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_10016B734(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    LOBYTE(a2) = 2;
  }

  *(result + 56) = a2;
  return result;
}

uint64_t sub_10016B76C(void *a1, int a2)
{
  v18 = a2;
  v3 = sub_100035D04(&qword_1003486F8, &qword_100281F78);
  v16 = *(v3 - 8);
  v17 = v3;
  __chkstk_darwin(v3);
  v5 = &v15 - v4;
  v15 = sub_100035D04(&qword_100348700, &qword_100281F80);
  v6 = *(v15 - 8);
  __chkstk_darwin(v15);
  v8 = &v15 - v7;
  v9 = sub_100035D04(&qword_100348708, &qword_100281F88);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - v11;
  sub_10000EBC0(a1, a1[3]);
  sub_10016CF8C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = (v10 + 8);
  if (v18)
  {
    v20 = 1;
    sub_10016CFE0();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v19 = 0;
    sub_10016D034();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v6 + 8))(v8, v15);
  }

  return (*v13)(v12, v9);
}

uint64_t sub_10016BA28(uint64_t a1)
{
  v2 = sub_10016CF8C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10016BA64(uint64_t a1)
{
  v2 = sub_10016CF8C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10016BAA0(uint64_t a1)
{
  v2 = sub_10016CFE0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10016BADC(uint64_t a1)
{
  v2 = sub_10016CFE0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10016BB18(uint64_t a1)
{
  v2 = sub_10016D034();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10016BB54(uint64_t a1)
{
  v2 = sub_10016D034();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10016BB90@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_10016CAD0(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

unint64_t sub_10016BBDC()
{
  v1 = *v0;
  v2 = v0[1];
  if (*(v0 + 56))
  {
    v4 = v0[2];
    v3 = v0[3];
    if (*(v0 + 56) == 1)
    {
      v5._countAndFlagsBits = 0x202864656C696166;
      v5._object = 0xE800000000000000;
      String.append(_:)(v5);
      _print_unlocked<A, B>(_:_:)();
      v6._countAndFlagsBits = 10528;
      v6._object = 0xE200000000000000;
      String.append(_:)(v6);
      return 0;
    }

    else
    {
      v9 = v0[4] | v0[5] | v0[6];
      if (v4 | v2 | v1 | v3 | v9)
      {
        v10 = v4 | v2 | v3 | v9;
        if (v1 != 1 || v10)
        {
          if (v10)
          {
            v11 = 0x61546C65636E6163;
          }

          else
          {
            v11 = 0xD000000000000010;
          }

          if (v1 == 2)
          {
            return v11;
          }

          else
          {
            return 0x61546C65636E6163;
          }
        }

        else
        {
          return 0x65746E6573657270;
        }
      }

      else
      {
        return 0x69746E6573657270;
      }
    }
  }

  else
  {
    String.append(_:)(*v0);
    v8._countAndFlagsBits = 10528;
    v8._object = 0xE200000000000000;
    String.append(_:)(v8);
    return 0x657373696D736964;
  }
}

uint64_t sub_10016BDA4(void *a1)
{
  v2 = v1;
  v4 = sub_100035D04(&qword_100348780, &qword_100281FC8);
  v48 = *(v4 - 8);
  v49 = v4;
  __chkstk_darwin(v4);
  v47 = &v43 - v5;
  v46 = sub_100035D04(&qword_100348788, &qword_100281FD0);
  v45 = *(v46 - 8);
  __chkstk_darwin(v46);
  v44 = &v43 - v6;
  v7 = sub_100035D04(&qword_100348790, &qword_100281FD8);
  v57 = *(v7 - 8);
  v58 = v7;
  __chkstk_darwin(v7);
  v56 = &v43 - v8;
  v9 = sub_100035D04(&qword_100348798, &qword_100281FE0);
  v55 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v43 - v10;
  v12 = sub_100035D04(&qword_1003487A0, &qword_100281FE8);
  v51 = *(v12 - 8);
  v52 = v12;
  __chkstk_darwin(v12);
  v50 = &v43 - v13;
  v14 = sub_100035D04(&qword_1003487A8, &qword_100281FF0);
  v53 = *(v14 - 8);
  v54 = v14;
  __chkstk_darwin(v14);
  v16 = &v43 - v15;
  v17 = sub_100035D04(&qword_1003487B0, &qword_100281FF8);
  v60 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v43 - v18;
  sub_10000EBC0(a1, a1[3]);
  sub_10016DD14();
  v59 = v19;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v21 = *v2;
  v20 = v2[1];
  if (!*(v2 + 56))
  {
    LOBYTE(v61) = 2;
    sub_10016DE64();
    v32 = v59;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v55 + 8))(v11, v9);
    return (*(v60 + 8))(v32, v17);
  }

  v22 = v17;
  v23 = v2[2];
  v24 = v2[3];
  v26 = v2[4];
  v25 = v2[5];
  v27 = v2[6];
  if (*(v2 + 56) == 1)
  {
    LOBYTE(v61) = 3;
    v55 = v27;
    sub_10016DE10();
    v28 = v56;
    v43 = v22;
    v29 = v59;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v61 = v21;
    v62 = v20;
    v63 = v23;
    v64 = v24;
    v65 = v26;
    v66 = v25;
    v67 = v55;
    sub_10010B950();
    v30 = v58;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v57 + 8))(v28, v30);
    return (*(v60 + 8))(v29, v43);
  }

  v33 = v26 | v25 | v27;
  if (!(v23 | v20 | v21 | v24 | v33))
  {
    LOBYTE(v61) = 0;
    sub_10016DF0C();
    v40 = v22;
    v41 = v59;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v53 + 8))(v16, v54);
    return (*(v60 + 8))(v41, v40);
  }

  v34 = v23 | v20 | v24 | v33;
  v35 = v22;
  if (v21 == 1 && !v34)
  {
    LOBYTE(v61) = 1;
    sub_10016DEB8();
    v36 = v50;
    v37 = v59;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v39 = v51;
    v38 = v52;
LABEL_14:
    (*(v39 + 8))(v36, v38);
    return (*(v60 + 8))(v37, v35);
  }

  if (v21 != 2 || v34)
  {
    LOBYTE(v61) = 5;
    sub_10016DD68();
    v36 = v47;
    v37 = v59;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v39 = v48;
    v38 = v49;
    goto LABEL_14;
  }

  LOBYTE(v61) = 4;
  sub_10016DDBC();
  v42 = v44;
  v37 = v59;
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v45 + 8))(v42, v46);
  return (*(v60 + 8))(v37, v35);
}

uint64_t sub_10016C4C4(uint64_t a1)
{
  v2 = sub_10016DD68();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10016C500(uint64_t a1)
{
  v2 = sub_10016DD68();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10016C53C()
{
  v1 = *v0;
  v2 = 0x69746E6573657270;
  v3 = 0x64656C696166;
  v4 = 0xD000000000000010;
  if (v1 != 4)
  {
    v4 = 0x61546C65636E6163;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x65746E6573657270;
  if (v1 != 1)
  {
    v5 = 0x657373696D736964;
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

uint64_t sub_10016C60C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10016D088(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10016C634(uint64_t a1)
{
  v2 = sub_10016DD14();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10016C670(uint64_t a1)
{
  v2 = sub_10016DD14();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10016C6AC(uint64_t a1)
{
  v2 = sub_10016DE64();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10016C6E8(uint64_t a1)
{
  v2 = sub_10016DE64();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10016C724(uint64_t a1)
{
  v2 = sub_10016DE10();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10016C760(uint64_t a1)
{
  v2 = sub_10016DE10();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10016C79C(uint64_t a1)
{
  v2 = sub_10016DEB8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10016C7D8(uint64_t a1)
{
  v2 = sub_10016DEB8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10016C814(uint64_t a1)
{
  v2 = sub_10016DF0C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10016C850(uint64_t a1)
{
  v2 = sub_10016DF0C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10016C88C(uint64_t a1)
{
  v2 = sub_10016DDBC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10016C8C8(uint64_t a1)
{
  v2 = sub_10016DDBC();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10016C904@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_10016D2A4(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    a1[2] = v7[0];
    result = *(v7 + 9);
    *(a1 + 41) = *(v7 + 9);
  }

  return result;
}

BOOL sub_10016C96C(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a2 + 56);
  if (*(a1 + 56))
  {
    if (*(a1 + 56) == 1)
    {
      return v2 == 1;
    }

    v4 = *a1;
    v3 = a1[1];
    v6 = *a2;
    v5 = a2[1];
    v8 = a2[2];
    v7 = a2[3];
    v10 = a2[4];
    v9 = a2[5];
    v11 = a2[6];
    v12 = a1[3];
    v13 = a1[4];
    v14 = a1[2];
    v15 = a1[5] | a1[6];
    v16 = v12 | v14 | v3;
    if (!(v15 | v4 | v13 | v16))
    {
      return v2 == 2 && !(v8 | v5 | v6 | v7 | v10 | v9 | v11);
    }

    v17 = v15 | v13 | v16;
    if (v4 != 1 || v17)
    {
      if (v4 != 2 || v17)
      {
        if (v2 != 2 || v6 != 3)
        {
          return 0;
        }
      }

      else if (v2 != 2 || v6 != 2)
      {
        return 0;
      }
    }

    else if (v2 != 2 || v6 != 1)
    {
      return 0;
    }

    if (!(v8 | v5 | v7 | v10 | v9 | v11))
    {
      return 1;
    }
  }

  else if (!*(a2 + 56))
  {
    return 1;
  }

  return 0;
}

unint64_t sub_10016CA7C()
{
  result = qword_1003486C0;
  if (!qword_1003486C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003486C0);
  }

  return result;
}

uint64_t sub_10016CAD0(void *a1)
{
  v2 = sub_100035D04(&qword_1003486C8, &qword_100281F58);
  v23 = *(v2 - 8);
  v24 = v2;
  __chkstk_darwin(v2);
  v4 = &v21 - v3;
  v5 = sub_100035D04(&qword_1003486D0, &qword_100281F60);
  v22 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v21 - v6;
  v8 = sub_100035D04(&qword_1003486D8, &unk_100281F68);
  v25 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v21 - v9;
  sub_10000EBC0(a1, a1[3]);
  sub_10016CF8C();
  v11 = v26;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v11)
  {
    return sub_10000903C(a1);
  }

  v26 = a1;
  v12 = v24;
  v13 = KeyedDecodingContainer.allKeys.getter();
  v14 = (2 * *(v13 + 16)) | 1;
  v27 = v13;
  v28 = v13 + 32;
  v29 = 0;
  v30 = v14;
  v15 = sub_10021800C();
  if (v15 == 2 || v29 != v30 >> 1)
  {
    v17 = type metadata accessor for DecodingError();
    swift_allocError();
    v19 = v18;
    sub_100035D04(&qword_10033EA78, &qword_100275A60);
    *v19 = &type metadata for NearbySharingInteractionViewEffect;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v17 - 8) + 104))(v19, enum case for DecodingError.typeMismatch(_:), v17);
    swift_willThrow();
    (*(v25 + 8))(v10, v8);
    swift_unknownObjectRelease();
    a1 = v26;
    return sub_10000903C(a1);
  }

  v31 = v15;
  if (v15)
  {
    v32 = 1;
    sub_10016CFE0();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v16 = v25;
    (*(v23 + 8))(v4, v12);
  }

  else
  {
    v32 = 0;
    sub_10016D034();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v16 = v25;
    (*(v22 + 8))(v7, v5);
  }

  (*(v16 + 8))(v10, v8);
  swift_unknownObjectRelease();
  sub_10000903C(v26);
  return v31 & 1;
}

unint64_t sub_10016CF8C()
{
  result = qword_1003486E0;
  if (!qword_1003486E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003486E0);
  }

  return result;
}

unint64_t sub_10016CFE0()
{
  result = qword_1003486E8;
  if (!qword_1003486E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003486E8);
  }

  return result;
}

unint64_t sub_10016D034()
{
  result = qword_1003486F0;
  if (!qword_1003486F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003486F0);
  }

  return result;
}

uint64_t sub_10016D088(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69746E6573657270 && a2 == 0xEA0000000000676ELL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65746E6573657270 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657373696D736964 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x64656C696166 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001002A29A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x61546C65636E6163 && a2 == 0xEC00000064657070)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_10016D2A4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v3 = sub_100035D04(&qword_100348710, &qword_100281F90);
  v61 = *(v3 - 8);
  v62 = v3;
  __chkstk_darwin(v3);
  v67 = &v49 - v4;
  v5 = sub_100035D04(&qword_100348718, &qword_100281F98);
  v59 = *(v5 - 8);
  v60 = v5;
  __chkstk_darwin(v5);
  v63 = &v49 - v6;
  v55 = sub_100035D04(&qword_100348720, &qword_100281FA0);
  v58 = *(v55 - 8);
  __chkstk_darwin(v55);
  v66 = &v49 - v7;
  v57 = sub_100035D04(&qword_100348728, &qword_100281FA8);
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v65 = &v49 - v8;
  v54 = sub_100035D04(&qword_100348730, &qword_100281FB0);
  v53 = *(v54 - 8);
  __chkstk_darwin(v54);
  v10 = &v49 - v9;
  v11 = sub_100035D04(&qword_100348738, &qword_100281FB8);
  v52 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v49 - v12;
  v14 = sub_100035D04(&qword_100348740, &qword_100281FC0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v49 - v16;
  v18 = a1[3];
  v80 = a1;
  sub_10000EBC0(a1, v18);
  sub_10016DD14();
  v19 = v68;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v20 = v19;
  if (v19)
  {
    return sub_10000903C(v80);
  }

  v21 = v13;
  v50 = v11;
  v51 = v10;
  v22 = v65;
  v23 = v66;
  v24 = v67;
  v68 = v15;
  v25 = v17;
  v26 = KeyedDecodingContainer.allKeys.getter();
  v27 = (2 * *(v26 + 16)) | 1;
  v76 = v26;
  v77 = v26 + 32;
  v78 = 0;
  v79 = v27;
  v28 = sub_100218010();
  if (v28 == 6 || v78 != v79 >> 1)
  {
    v38 = type metadata accessor for DecodingError();
    swift_allocError();
    v40 = v39;
    sub_100035D04(&qword_10033EA78, &qword_100275A60);
    *v40 = &type metadata for NearbySharingInteractionViewEvent;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v38 - 8) + 104))(v40, enum case for DecodingError.typeMismatch(_:), v38);
    swift_willThrow();
    (*(v68 + 8))(v17, v14);
    swift_unknownObjectRelease();
    return sub_10000903C(v80);
  }

  if (v28 > 2u)
  {
    if (v28 == 3)
    {
      LOBYTE(v69) = 3;
      sub_10016DE10();
      v44 = v17;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v37 = v64;
      v45 = v68;
      sub_10010B758();
      v46 = v55;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v49 = 0;
      (*(v58 + 8))(v23, v46);
      (*(v45 + 8))(v44, v14);
      swift_unknownObjectRelease();
      v36 = v69;
      v31 = v70;
      v32 = v71;
      v33 = v72;
      v34 = v73;
      v20 = v74;
      v35 = 1;
      v14 = v75;
    }

    else
    {
      v37 = v64;
      v42 = v68;
      if (v28 == 4)
      {
        LOBYTE(v69) = 4;
        sub_10016DDBC();
        v43 = v63;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v49 = 0;
        (*(v59 + 8))(v43, v60);
        (*(v42 + 8))(v25, v14);
        swift_unknownObjectRelease();
        v31 = 0;
        v32 = 0;
        v33 = 0;
        v34 = 0;
        v14 = 0;
        v36 = 2;
        v35 = 2;
      }

      else
      {
        LOBYTE(v69) = 5;
        sub_10016DD68();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v49 = 0;
        (*(v61 + 8))(v24, v62);
        (*(v42 + 8))(v25, v14);
        swift_unknownObjectRelease();
        v31 = 0;
        v32 = 0;
        v33 = 0;
        v34 = 0;
        v14 = 0;
        v35 = 2;
        v36 = 3;
      }
    }
  }

  else if (v28)
  {
    if (v28 == 1)
    {
      LOBYTE(v69) = 1;
      sub_10016DEB8();
      v29 = v51;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v30 = v68;
      v49 = 0;
      (*(v53 + 8))(v29, v54);
      (*(v30 + 8))(v17, v14);
      swift_unknownObjectRelease();
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v14 = 0;
      v35 = 2;
      v36 = 1;
      v37 = v64;
    }

    else
    {
      LOBYTE(v69) = 2;
      sub_10016DE64();
      v33 = v22;
      v34 = v17;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v37 = v64;
      v47 = v68;
      v32 = v57;
      v20 = 0;
      v36 = KeyedDecodingContainer.decode(_:forKey:)();
      v31 = v48;
      v49 = 0;
      (*(v56 + 8))(v33, v32);
      (*(v47 + 8))(v34, v14);
      swift_unknownObjectRelease();
      v35 = 0;
    }
  }

  else
  {
    LOBYTE(v69) = 0;
    sub_10016DF0C();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v49 = 0;
    (*(v52 + 8))(v21, v50);
    (*(v68 + 8))(v17, v14);
    swift_unknownObjectRelease();
    v36 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v14 = 0;
    v35 = 2;
    v37 = v64;
  }

  result = sub_10000903C(v80);
  *v37 = v36;
  *(v37 + 8) = v31;
  *(v37 + 16) = v32;
  *(v37 + 24) = v33;
  *(v37 + 32) = v34;
  *(v37 + 40) = v20;
  *(v37 + 48) = v14;
  *(v37 + 56) = v35;
  return result;
}

unint64_t sub_10016DD14()
{
  result = qword_100348748;
  if (!qword_100348748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348748);
  }

  return result;
}

unint64_t sub_10016DD68()
{
  result = qword_100348750;
  if (!qword_100348750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348750);
  }

  return result;
}

unint64_t sub_10016DDBC()
{
  result = qword_100348758;
  if (!qword_100348758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348758);
  }

  return result;
}

unint64_t sub_10016DE10()
{
  result = qword_100348760;
  if (!qword_100348760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348760);
  }

  return result;
}

unint64_t sub_10016DE64()
{
  result = qword_100348768;
  if (!qword_100348768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348768);
  }

  return result;
}

unint64_t sub_10016DEB8()
{
  result = qword_100348770;
  if (!qword_100348770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348770);
  }

  return result;
}

unint64_t sub_10016DF0C()
{
  result = qword_100348778;
  if (!qword_100348778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348778);
  }

  return result;
}

unint64_t sub_10016E004()
{
  result = qword_1003487B8;
  if (!qword_1003487B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003487B8);
  }

  return result;
}

unint64_t sub_10016E05C()
{
  result = qword_1003487C0;
  if (!qword_1003487C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003487C0);
  }

  return result;
}

unint64_t sub_10016E0B4()
{
  result = qword_1003487C8;
  if (!qword_1003487C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003487C8);
  }

  return result;
}

unint64_t sub_10016E10C()
{
  result = qword_1003487D0;
  if (!qword_1003487D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003487D0);
  }

  return result;
}

unint64_t sub_10016E164()
{
  result = qword_1003487D8;
  if (!qword_1003487D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003487D8);
  }

  return result;
}

unint64_t sub_10016E1BC()
{
  result = qword_1003487E0;
  if (!qword_1003487E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003487E0);
  }

  return result;
}

unint64_t sub_10016E214()
{
  result = qword_1003487E8;
  if (!qword_1003487E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003487E8);
  }

  return result;
}

unint64_t sub_10016E26C()
{
  result = qword_1003487F0;
  if (!qword_1003487F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003487F0);
  }

  return result;
}

unint64_t sub_10016E2C4()
{
  result = qword_1003487F8;
  if (!qword_1003487F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003487F8);
  }

  return result;
}

unint64_t sub_10016E31C()
{
  result = qword_100348800;
  if (!qword_100348800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348800);
  }

  return result;
}

unint64_t sub_10016E374()
{
  result = qword_100348808;
  if (!qword_100348808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348808);
  }

  return result;
}

unint64_t sub_10016E3CC()
{
  result = qword_100348810;
  if (!qword_100348810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348810);
  }

  return result;
}

unint64_t sub_10016E424()
{
  result = qword_100348818;
  if (!qword_100348818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348818);
  }

  return result;
}

unint64_t sub_10016E47C()
{
  result = qword_100348820;
  if (!qword_100348820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348820);
  }

  return result;
}

unint64_t sub_10016E4D4()
{
  result = qword_100348828;
  if (!qword_100348828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348828);
  }

  return result;
}

unint64_t sub_10016E52C()
{
  result = qword_100348830;
  if (!qword_100348830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348830);
  }

  return result;
}

unint64_t sub_10016E584()
{
  result = qword_100348838;
  if (!qword_100348838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348838);
  }

  return result;
}

unint64_t sub_10016E5DC()
{
  result = qword_100348840;
  if (!qword_100348840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348840);
  }

  return result;
}

unint64_t sub_10016E634()
{
  result = qword_100348848;
  if (!qword_100348848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348848);
  }

  return result;
}

unint64_t sub_10016E68C()
{
  result = qword_100348850;
  if (!qword_100348850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348850);
  }

  return result;
}

unint64_t sub_10016E6E4()
{
  result = qword_100348858;
  if (!qword_100348858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348858);
  }

  return result;
}

unint64_t sub_10016E73C()
{
  result = qword_100348860;
  if (!qword_100348860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348860);
  }

  return result;
}

unint64_t sub_10016E794()
{
  result = qword_100348868;
  if (!qword_100348868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348868);
  }

  return result;
}

unint64_t sub_10016E7EC()
{
  result = qword_100348870;
  if (!qword_100348870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348870);
  }

  return result;
}

uint64_t sub_10016E844(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x746867696CLL;
    }

    else
    {
      v4 = 1952870259;
    }

    if (v2)
    {
      v3 = 0xE500000000000000;
    }

    else
    {
      v3 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE600000000000000;
    v4 = 0x6D756964656DLL;
  }

  else
  {
    v3 = 0xE500000000000000;
    if (a1 == 3)
    {
      v4 = 0x7976616568;
    }

    else
    {
      v4 = 0x6469676972;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 0x746867696CLL;
    }

    else
    {
      v8 = 1952870259;
    }

    if (a2)
    {
      v7 = 0xE500000000000000;
    }

    else
    {
      v7 = 0xE400000000000000;
    }

    if (v4 != v8)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x7976616568;
    if (a2 != 3)
    {
      v5 = 0x6469676972;
    }

    if (a2 == 2)
    {
      v6 = 0x6D756964656DLL;
    }

    else
    {
      v6 = v5;
    }

    if (a2 == 2)
    {
      v7 = 0xE600000000000000;
    }

    else
    {
      v7 = 0xE500000000000000;
    }

    if (v4 != v6)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v7)
  {
LABEL_33:
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_34;
  }

  v9 = 1;
LABEL_34:

  return v9 & 1;
}

uint64_t sub_10016E9A4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x656369766564;
    }

    else
    {
      v3 = 0x7974697669746361;
    }

    if (v2)
    {
      v4 = 0xE600000000000000;
    }

    else
    {
      v4 = 0xE800000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xD000000000000012;
    v4 = 0x8000000100297200;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x7974706D65;
    }

    else
    {
      v3 = 0xD000000000000012;
    }

    if (v2 == 3)
    {
      v4 = 0xE500000000000000;
    }

    else
    {
      v4 = 0x8000000100297220;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x656369766564;
    }

    else
    {
      v9 = 0x7974697669746361;
    }

    if (a2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = 0xE800000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v5 = 0x7974706D65;
    v6 = 0x8000000100297220;
    if (a2 == 3)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xD000000000000012;
    }

    if (a2 == 2)
    {
      v7 = 0xD000000000000012;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0x8000000100297200;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_37;
    }
  }

  if (v4 != v8)
  {
LABEL_37:
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_38;
  }

  v10 = 1;
LABEL_38:

  return v10 & 1;
}

uint64_t sub_10016EB28(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE800000000000000;
    v12 = 0xE500000000000000;
    v13 = 0x656E6F6850;
    if (a1 != 2)
    {
      v13 = 0x74736163646F50;
      v12 = 0xE700000000000000;
    }

    v14 = 0x636973754DLL;
    if (a1)
    {
      v11 = 0xE500000000000000;
    }

    else
    {
      v14 = 0x656D695465636146;
    }

    if (a1 <= 1u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v13;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v3 = 0x436E776F6E6B6E55;
    v4 = 0xEB000000006C6C61;
    v5 = 0x4D6E776F6E6B6E55;
    v6 = 0xEC00000061696465;
    if (a1 != 7)
    {
      v5 = 0x6E776F6E6B6E55;
      v6 = 0xE700000000000000;
    }

    if (a1 != 6)
    {
      v3 = v5;
      v4 = v6;
    }

    v7 = 0xD000000000000019;
    v8 = 0x8000000100297150;
    if (a1 != 4)
    {
      v7 = 0xD00000000000001ALL;
      v8 = 0x8000000100297170;
    }

    if (a1 <= 5u)
    {
      v9 = v7;
    }

    else
    {
      v9 = v3;
    }

    if (v2 <= 5)
    {
      v10 = v8;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v15 = 0xE500000000000000;
        if (v9 != 0x656E6F6850)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v15 = 0xE700000000000000;
        if (v9 != 0x74736163646F50)
        {
          goto LABEL_52;
        }
      }
    }

    else if (a2)
    {
      v15 = 0xE500000000000000;
      if (v9 != 0x636973754DLL)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v15 = 0xE800000000000000;
      if (v9 != 0x656D695465636146)
      {
        goto LABEL_52;
      }
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v15 = 0x8000000100297150;
      if (v9 != 0xD000000000000019)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v15 = 0x8000000100297170;
      if (v9 != 0xD00000000000001ALL)
      {
LABEL_52:
        v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_53;
      }
    }
  }

  else if (a2 == 6)
  {
    v15 = 0xEB000000006C6C61;
    if (v9 != 0x436E776F6E6B6E55)
    {
      goto LABEL_52;
    }
  }

  else if (a2 == 7)
  {
    v15 = 0xEC00000061696465;
    if (v9 != 0x4D6E776F6E6B6E55)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v15 = 0xE700000000000000;
    if (v9 != 0x6E776F6E6B6E55)
    {
      goto LABEL_52;
    }
  }

  if (v10 != v15)
  {
    goto LABEL_52;
  }

  v16 = 1;
LABEL_53:

  return v16 & 1;
}

uint64_t sub_10016EE04(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0xD000000000000013;
    }

    else
    {
      v5 = 0xD000000000000015;
    }

    if (v2)
    {
      v6 = 0x8000000100297530;
    }

    else
    {
      v6 = 0x8000000100297510;
    }
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0xD000000000000011;
    if (a1 == 3)
    {
      v3 = 0x8000000100297570;
    }

    else
    {
      v4 = 0x2E2E2E726568744FLL;
    }

    if (a1 == 2)
    {
      v5 = 0xD000000000000013;
    }

    else
    {
      v5 = v4;
    }

    if (v2 == 2)
    {
      v6 = 0x8000000100297550;
    }

    else
    {
      v6 = v3;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 0xD000000000000013;
    }

    else
    {
      v8 = 0xD000000000000015;
    }

    if (a2)
    {
      v7 = 0x8000000100297530;
    }

    else
    {
      v7 = 0x8000000100297510;
    }

    if (v5 != v8)
    {
      goto LABEL_35;
    }
  }

  else if (a2 == 2)
  {
    v7 = 0x8000000100297550;
    if (v5 != 0xD000000000000013)
    {
      goto LABEL_35;
    }
  }

  else if (a2 == 3)
  {
    v7 = 0x8000000100297570;
    if (v5 != 0xD000000000000011)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v7 = 0xE800000000000000;
    if (v5 != 0x2E2E2E726568744FLL)
    {
LABEL_35:
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_36;
    }
  }

  if (v6 != v7)
  {
    goto LABEL_35;
  }

  v9 = 1;
LABEL_36:

  return v9 & 1;
}

uint64_t sub_10016EFA0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0xD000000000000014;
    }

    else
    {
      v5 = 0xD000000000000012;
    }

    if (v2)
    {
      v6 = 0x80000001002975B0;
    }

    else
    {
      v6 = 0x8000000100297590;
    }
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0xD00000000000001CLL;
    if (a1 == 3)
    {
      v3 = 0x80000001002975F0;
    }

    else
    {
      v4 = 0x2E2E2E726568744FLL;
    }

    if (a1 == 2)
    {
      v5 = 0xD00000000000001ALL;
    }

    else
    {
      v5 = v4;
    }

    if (v2 == 2)
    {
      v6 = 0x80000001002975D0;
    }

    else
    {
      v6 = v3;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 0xD000000000000014;
    }

    else
    {
      v8 = 0xD000000000000012;
    }

    if (a2)
    {
      v7 = 0x80000001002975B0;
    }

    else
    {
      v7 = 0x8000000100297590;
    }

    if (v5 != v8)
    {
      goto LABEL_35;
    }
  }

  else if (a2 == 2)
  {
    v7 = 0x80000001002975D0;
    if (v5 != 0xD00000000000001ALL)
    {
      goto LABEL_35;
    }
  }

  else if (a2 == 3)
  {
    v7 = 0x80000001002975F0;
    if (v5 != 0xD00000000000001CLL)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v7 = 0xE800000000000000;
    if (v5 != 0x2E2E2E726568744FLL)
    {
LABEL_35:
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_36;
    }
  }

  if (v6 != v7)
  {
    goto LABEL_35;
  }

  v9 = 1;
LABEL_36:

  return v9 & 1;
}

uint64_t sub_10016F13C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x796C65726152;
  v6 = 0x656D6974656D6F53;
  v7 = 0xE900000000000073;
  if (a1 != 4)
  {
    v6 = 0x656C62616E55;
    v7 = 0xE600000000000000;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0x74276E6469442049;
  v9 = 0xEC00000079725420;
  if (a1 != 1)
  {
    v8 = 0x6C70704120746F4ELL;
    v9 = 0xEE00656C62616369;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x737961776C41;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x796C65726152)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE900000000000073;
      if (v10 != 0x656D6974656D6F53)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x656C62616E55)
      {
LABEL_34:
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xEC00000079725420;
      if (v10 != 0x74276E6469442049)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEE00656C62616369;
      if (v10 != 0x6C70704120746F4ELL)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE600000000000000;
    if (v10 != 0x737961776C41)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_10016F340(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD00000000000001ALL;
  v3 = "soft";
  v4 = a1;
  v5 = 0xD000000000000030;
  if (a1 == 4)
  {
    v6 = "itycontrol.lockscreenControls";
  }

  else
  {
    v5 = 0xD000000000000029;
    v6 = "TransferObserver";
  }

  if (a1 == 3)
  {
    v7 = 0xD00000000000002DLL;
  }

  else
  {
    v7 = v5;
  }

  if (a1 == 3)
  {
    v6 = "ityControlUI.HandoffUI";
  }

  v8 = 0xD000000000000026;
  if (v4 == 1)
  {
    v8 = 0xD00000000000001ALL;
    v9 = "itycontrol.cliClient";
  }

  else
  {
    v9 = "com.apple.proximitycontrol";
  }

  if (!v4)
  {
    v8 = 0xD000000000000024;
    v9 = "soft";
  }

  if (v4 <= 2)
  {
    v10 = v9;
  }

  else
  {
    v8 = v7;
    v10 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xD00000000000002DLL;
      v3 = "ityControlUI.HandoffUI";
    }

    else if (a2 == 4)
    {
      v2 = 0xD000000000000030;
      v3 = "itycontrol.lockscreenControls";
    }

    else
    {
      v2 = 0xD000000000000029;
      v3 = "TransferObserver";
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v3 = "itycontrol.cliClient";
    }

    else
    {
      v2 = 0xD000000000000026;
      v3 = "com.apple.proximitycontrol";
    }
  }

  else
  {
    v2 = 0xD000000000000024;
  }

  if (v8 == v2 && (v10 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

uint64_t sub_10016F4B4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE200000000000000;
  v5 = 30324;
  if (a1 != 5)
  {
    v5 = 0x6863746177;
    v4 = 0xE500000000000000;
  }

  v6 = 1685016681;
  v7 = 0xE400000000000000;
  if (a1 != 3)
  {
    v6 = 6513005;
    v7 = 0xE300000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0xE400000000000000;
  v9 = 1684099177;
  if (a1 != 1)
  {
    v9 = 0x656E6F685069;
    v8 = 0xE600000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x646F50656D6F48;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE400000000000000;
        if (v10 != 1684099177)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xE600000000000000;
        if (v10 != 0x656E6F685069)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x646F50656D6F48)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xE200000000000000;
      if (v10 != 30324)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x6863746177)
      {
LABEL_39:
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xE400000000000000;
    if (v10 != 1685016681)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0xE300000000000000;
    if (v10 != 6513005)
    {
      goto LABEL_39;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_39;
  }

  v13 = 1;
LABEL_40:

  return v13 & 1;
}

uint64_t sub_10016F694(uint64_t *a1)
{
  v1 = *a1;

  return v1;
}

uint64_t sub_10016F6C4()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_100348878);
  sub_100003078(v0, qword_100348878);
  return Logger.init(subsystem:category:)();
}

char *sub_10016F748()
{
  type metadata accessor for HandoffFeedbackManager(0);
  swift_allocObject();
  result = sub_10016F978();
  qword_10038B2F0 = result;
  return result;
}

void sub_10016F788()
{
  v1 = v0;
  if (qword_1003390E8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100348878);

  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v4 = 136315394;
    *(v4 + 4) = sub_100017494(0x74726F706572, 0xE600000000000000, &v10);
    *(v4 + 12) = 2080;
    if (*(v1 + 112))
    {
      type metadata accessor for HandoffFeedback.Report(0);

      v5 = String.init<A>(describing:)();
      v7 = v6;
    }

    else
    {
      v7 = 0xE300000000000000;
      v5 = 7104878;
    }

    v8 = sub_100017494(v5, v7, &v10);

    *(v4 + 14) = v8;
    _os_log_impl(&_mh_execute_header, oslog, v3, "%s: %s", v4, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

char *sub_10016F978()
{
  v1 = sub_100035D04(&qword_10033E800, &qword_100278E80);
  __chkstk_darwin(v1 - 8);
  v20 = &v19 - v2;
  v3 = sub_100035D04(&qword_100348C70, &qword_1002830E0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - v5;
  v22 = sub_100035D04(&qword_100348BE0, &unk_100283010);
  v7 = *(v22 - 8);
  __chkstk_darwin(v22);
  v9 = &v19 - v8;
  v10 = sub_100035D04(&qword_100348C68, &qword_1002830D8);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v19 - v12;
  swift_defaultActor_initialize();
  *(v0 + 14) = 0;
  *(v0 + 15) = 0;
  *(v0 + 16) = 0;
  v14 = OBJC_IVAR____TtC17proximitycontrold22HandoffFeedbackManager_actionStream;
  v21 = OBJC_IVAR____TtC17proximitycontrold22HandoffFeedbackManager_actionContinuation;
  (*(v4 + 104))(v6, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v3);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v4 + 8))(v6, v3);
  (*(v11 + 32))(&v0[v14], v13, v10);
  (*(v7 + 32))(&v0[v21], v9, v22);
  *&v0[OBJC_IVAR____TtC17proximitycontrold22HandoffFeedbackManager_actionStreamTask] = 0;
  if (IsAppleInternalBuild())
  {
    v15 = type metadata accessor for TaskPriority();
    v16 = v20;
    (*(*(v15 - 8) + 56))(v20, 1, 1, v15);
    v17 = swift_allocObject();
    v17[2] = 0;
    v17[3] = 0;
    v17[4] = v0;

    sub_100240220(0, 0, v16, &unk_1002830F0, v17);
  }

  else
  {

    return 0;
  }

  return v0;
}

uint64_t sub_10016FD04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_100035D04(&qword_10033E800, &qword_100278E80);
  *(v4 + 24) = swift_task_alloc();

  return (_swift_task_switch)(sub_10016FDA4, a4, 0);
}

uint64_t sub_10016FDA4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = sub_1001782A0();
  v5 = swift_allocObject();
  v5[2] = v1;
  v5[3] = v4;
  v5[4] = v1;
  swift_retain_n();
  *(v1 + OBJC_IVAR____TtC17proximitycontrold22HandoffFeedbackManager_actionStreamTask) = sub_100240220(0, 0, v2, &unk_100283100, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10016FEC4()
{
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold22HandoffFeedbackManager_actionStreamTask))
  {

    Task.cancel()();
  }

  v1 = OBJC_IVAR____TtC17proximitycontrold22HandoffFeedbackManager_actionStream;
  v2 = sub_100035D04(&qword_100348C68, &qword_1002830D8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC17proximitycontrold22HandoffFeedbackManager_actionContinuation;
  v4 = sub_100035D04(&qword_100348BE0, &unk_100283010);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

void sub_10017001C(uint64_t a1)
{
  sub_100174558(319, &qword_1003488E0, &type metadata accessor for AsyncStream);
  if (v1 <= 0x3F)
  {
    sub_100174558(319, &unk_1003488E8, &type metadata accessor for AsyncStream.Continuation);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_100170140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a4;
  v6 = sub_100035D04(qword_100348C78, &qword_100283108);
  v4[15] = v6;
  v4[16] = *(v6 - 8);
  v4[17] = swift_task_alloc();

  return (_swift_task_switch)(sub_100170210, a4, 0);
}

uint64_t sub_100170210()
{
  sub_100035D04(&qword_100348C68, &qword_1002830D8);
  AsyncStream.makeAsyncIterator()();
  v1 = sub_1001782A0();
  v0[18] = v1;
  v2 = v0[14];
  v3 = swift_task_alloc();
  v0[19] = v3;
  *v3 = v0;
  v3[1] = sub_100170300;
  v4 = v0[15];

  return AsyncStream.Iterator.next(isolation:)(v0 + 2, v2, v1, v4);
}

uint64_t sub_100170300()
{
  v1 = *(*v0 + 112);

  return (_swift_task_switch)(sub_100170410, v1, 0);
}

uint64_t sub_100170410()
{
  if (*(v0 + 56) == 255)
  {
    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v1 = *(v0 + 32);
    *(v0 + 64) = *(v0 + 16);
    *(v0 + 80) = v1;
    *(v0 + 89) = *(v0 + 41);
    v2 = swift_task_alloc();
    *(v0 + 160) = v2;
    *v2 = v0;
    v2[1] = sub_100170518;

    return sub_100170FB0(v0 + 64);
  }
}

uint64_t sub_100170518()
{
  v1 = *(*v0 + 112);

  return (_swift_task_switch)(sub_100170628, v1, 0);
}

uint64_t sub_100170628()
{
  sub_100045F80((v0 + 8));
  v1 = v0[18];
  v2 = v0[14];
  v3 = swift_task_alloc();
  v0[19] = v3;
  *v3 = v0;
  v3[1] = sub_100170300;
  v4 = v0[15];

  return AsyncStream.Iterator.next(isolation:)(v0 + 2, v2, v1, v4);
}

uint64_t sub_1001706E8(uint64_t a1)
{
  v1 = sub_100035D04(&qword_100348BB8, &qword_100282FF8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v24 - v3;
  if (qword_1003390E8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003078(v5, qword_100348878);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v27 = v8;
    v28 = swift_slowAlloc();
    v29 = v28;
    *v8 = 136315138;
    v30 = 60;
    *&v31 = 0xE100000000000000;
    v26 = v7;
    v9 = UUID.uuidString.getter();
    sub_10000B584(8, v9, v10);
    v25 = v6;

    v11 = static String._fromSubstring(_:)();
    v13 = v12;

    v14._countAndFlagsBits = v11;
    v14._object = v13;
    String.append(_:)(v14);

    v15._countAndFlagsBits = 32;
    v15._object = 0xE100000000000000;
    String.append(_:)(v15);
    v18._countAndFlagsBits = sub_1000092A0(v16, v17);
    String.append(_:)(v18);

    v19._countAndFlagsBits = 62;
    v19._object = 0xE100000000000000;
    String.append(_:)(v19);
    v20 = sub_100017494(v30, v31, &v29);

    v21 = v27;
    *(v27 + 1) = v20;
    v22 = v25;
    _os_log_impl(&_mh_execute_header, v25, v26, "Session started: %s", v21, 0xCu);
    sub_10000903C(v28);
  }

  else
  {
  }

  v30 = 5;
  v31 = 0u;
  v32 = 0u;
  v33 = 3;
  sub_100035D04(&qword_100348BE0, &unk_100283010);
  AsyncStream.Continuation.yield(_:)();
  return (*(v2 + 8))(v4, v1);
}

void sub_100170A30(uint64_t a1)
{
  v2 = sub_100035D04(&qword_100348BB8, &qword_100282FF8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v26 - v4;
  if (qword_1003390E8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003078(v6, qword_100348878);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v29 = v9;
    v30 = swift_slowAlloc();
    v31 = v30;
    *v9 = 136315138;
    v32 = 60;
    v33 = 0xE100000000000000;
    v28 = v8;
    v10 = UUID.uuidString.getter();
    sub_10000B584(8, v10, v11);
    v27 = v7;

    v12 = static String._fromSubstring(_:)();
    v14 = v13;

    v15._countAndFlagsBits = v12;
    v15._object = v14;
    String.append(_:)(v15);

    v16._countAndFlagsBits = 32;
    v16._object = 0xE100000000000000;
    String.append(_:)(v16);
    v19._countAndFlagsBits = sub_1000092A0(v17, v18);
    String.append(_:)(v19);

    v20._countAndFlagsBits = 62;
    v20._object = 0xE100000000000000;
    String.append(_:)(v20);
    v21 = sub_100017494(v32, v33, &v31);

    v22 = v29;
    *(v29 + 1) = v21;
    v23 = v27;
    _os_log_impl(&_mh_execute_header, v27, v28, "Session finished: %s", v22, 0xCu);
    sub_10000903C(v30);
  }

  else
  {
  }

  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v24 = *(qword_10038B0B8 + 248);
  v25 = sub_1000031CC();

  if ((v25 & 1) != 0 && ((*(a1 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession_didDwell) & 1) != 0 || *(a1 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession_didExpand) == 1))
  {
    v32 = a1;
    v34 = 0;

    sub_100035D04(&qword_100348BE0, &unk_100283010);
    AsyncStream.Continuation.yield(_:)();
    (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_100170DEC()
{
  v0 = sub_100035D04(&qword_100348BB8, &qword_100282FF8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - v2;
  if (qword_1003390E8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003078(v4, qword_100348878);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Presenting...", v7, 2u);
  }

  v9 = 0;
  v10 = 0;
  sub_100035D04(&qword_100348BE0, &unk_100283010);
  AsyncStream.Continuation.yield(_:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100170FB0(uint64_t a1)
{
  *(v2 + 344) = a1;
  *(v2 + 352) = v1;
  return (_swift_task_switch)(sub_100170FD0, v1, 0);
}

uint64_t sub_100170FD0()
{
  v39 = v0;
  if (qword_1003390E8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 344);
  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100348878);
  sub_1001781EC(v1, v0 + 16);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v38 = v6;
    *v5 = 136315138;
    sub_1001781EC(v0 + 16, v0 + 256);
    v7 = String.init<A>(describing:)();
    v9 = v8;
    sub_100045F80(v0 + 16);
    v10 = sub_100017494(v7, v9, &v38);

    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Action: %s", v5, 0xCu);
    sub_10000903C(v6);
  }

  else
  {

    sub_100045F80(v0 + 16);
  }

  sub_1001781EC(*(v0 + 344), v0 + 64);
  v11 = *(v0 + 64);
  *(v0 + 360) = v11;
  if (*(v0 + 104) <= 1u)
  {
    if (*(v0 + 104))
    {
      sub_10000E754((v0 + 64), v0 + 304);
      v20 = *(v0 + 328);
      v19 = *(v0 + 336);
      v21 = sub_10000EBC0((v0 + 304), v20);
      v22 = swift_task_alloc();
      *(v0 + 408) = v22;
      *v22 = v0;
      v22[1] = sub_100171D44;

      return sub_1001737F8(v21, v20, v19);
    }

    else
    {
      v12 = *(v0 + 352);
      type metadata accessor for HandoffFeedback.Report(0);
      v13 = swift_allocObject();

      sub_100176A48(v14);
      *(v12 + 112) = v13;

      sub_10016F788();

      v15 = swift_task_alloc();
      *(v0 + 368) = v15;
      *v15 = v0;
      v15[1] = sub_100171768;

      return sub_100172424();
    }
  }

  v17 = *(v0 + 72);
  if (*(v0 + 104) == 2)
  {
    if (*(v0 + 80))
    {
      sub_1000D6794(v11, v17, *(v0 + 80));
LABEL_14:
      v18 = *(v0 + 8);

      return v18();
    }

    v31 = *(v0 + 352);
    sub_1000D6794(v11, v17, 0);
    *(v31 + 112) = 0;

    sub_10016F788();
    v32 = swift_task_alloc();
    *(v0 + 416) = v32;
    *v32 = v0;
    v33 = sub_100171EB4;
    goto LABEL_26;
  }

  v24 = *(v0 + 88);
  v23 = *(v0 + 96);
  v25 = *(v0 + 80);
  if (!(v17 | v11 | v23 | v24 | v25))
  {
    v32 = swift_task_alloc();
    *(v0 + 376) = v32;
    *v32 = v0;
    v33 = sub_1001718D8;
LABEL_26:
    v32[1] = v33;

    return sub_1001733BC();
  }

  v26 = v23 | v17 | v24 | v25;
  if (v11 != 1 || v26)
  {
    if (v11 != 2 || v26)
    {
      if (v11 != 3 || v26)
      {
        if (v11 == 4 && !v26)
        {
          sub_1001741D8();
          goto LABEL_14;
        }

        if (v11 != 5 || v26)
        {
          goto LABEL_14;
        }

        *(*(v0 + 352) + 112) = 0;

        sub_10016F788();
        v32 = swift_task_alloc();
        *(v0 + 424) = v32;
        *v32 = v0;
        v33 = sub_100171FC4;
        goto LABEL_26;
      }

      v36 = *(*(v0 + 352) + 112);
      if (v36)
      {
        *(v36 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_sentiment) = 0;
      }

      *(v0 + 136) = sub_100035D04(&qword_100348C08, &qword_100283050);
      *(v0 + 144) = sub_10000E244(&qword_100348C10, &qword_100348C08, &qword_100283050, &unk_100283190);
      v37 = swift_allocObject();
      *(v0 + 112) = v37;
      v28 = v0 + 112;
      sub_100172318(v37 + 16);
      *(v0 + 152) = 1;
      v29 = swift_task_alloc();
      *(v0 + 400) = v29;
      *v29 = v0;
      v30 = sub_100171C18;
    }

    else
    {
      v34 = *(*(v0 + 352) + 112);
      if (v34)
      {
        *(v34 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_sentiment) = 1;
      }

      *(v0 + 184) = sub_100035D04(&qword_100348BD0, &qword_100283008);
      *(v0 + 192) = sub_10000E244(&qword_100348BD8, &qword_100348BD0, &qword_100283008, &unk_100283190);
      v35 = swift_allocObject();
      *(v0 + 160) = v35;
      v28 = v0 + 160;
      sub_1001721F4(v35 + 16);
      *(v0 + 200) = 1;
      v29 = swift_task_alloc();
      *(v0 + 392) = v29;
      *v29 = v0;
      v30 = sub_100171B00;
    }
  }

  else
  {
    *(v0 + 232) = sub_100035D04(&qword_100348C18, &qword_100283058);
    *(v0 + 240) = sub_10000E244(&qword_100348C20, &qword_100348C18, &qword_100283058, &unk_100283190);
    v27 = swift_allocObject();
    *(v0 + 208) = v27;
    v28 = v0 + 208;
    sub_1001720D4(v27 + 16);
    *(v0 + 248) = 1;
    v29 = swift_task_alloc();
    *(v0 + 384) = v29;
    *v29 = v0;
    v30 = sub_1001719E8;
  }

  v29[1] = v30;

  return sub_100170FB0(v28);
}

uint64_t sub_100171768()
{
  v1 = *(*v0 + 352);

  return (_swift_task_switch)(sub_100171878, v1, 0);
}

uint64_t sub_100171878()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001718D8()
{
  v1 = *(*v0 + 352);

  return (_swift_task_switch)(sub_100178788, v1, 0);
}

uint64_t sub_1001719E8()
{
  v1 = *v0;
  v2 = *(*v0 + 352);

  sub_100045F80(v1 + 208);

  return (_swift_task_switch)(sub_100178788, v2, 0);
}

uint64_t sub_100171B00()
{
  v1 = *v0;
  v2 = *(*v0 + 352);

  sub_100045F80(v1 + 160);

  return (_swift_task_switch)(sub_100178788, v2, 0);
}

uint64_t sub_100171C18()
{
  v1 = *v0;
  v2 = *(*v0 + 352);

  sub_100045F80(v1 + 112);

  return (_swift_task_switch)(sub_100171D30, v2, 0);
}

uint64_t sub_100171D44()
{
  v1 = *(*v0 + 352);

  return (_swift_task_switch)(sub_100171E54, v1, 0);
}

uint64_t sub_100171E54()
{
  sub_10000903C((v0 + 304));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100171EB4()
{
  v1 = *(*v0 + 352);

  return (_swift_task_switch)(sub_100178788, v1, 0);
}

uint64_t sub_100171FC4()
{
  v1 = *(*v0 + 352);

  return (_swift_task_switch)(sub_100178788, v1, 0);
}

double sub_1001720D4@<D0>(uint64_t a1@<X8>)
{
  v6[88] = 1;
  *&v7 = 0xD000000000000010;
  *(&v7 + 1) = 0x80000001002984F0;
  *&v8 = 0xD000000000000017;
  *(&v8 + 1) = 0x80000001002A2C30;
  *&v10 = 0;
  v9 = 0uLL;
  WORD4(v10) = 257;
  *&v11 = &off_1003017C8;
  *(&v11 + 1) = sub_100177F68;
  v12 = 0;
  v13[0] = 0xD000000000000010;
  v13[1] = 0x80000001002984F0;
  v13[2] = 0xD000000000000017;
  v13[3] = 0x80000001002A2C30;
  memset(&v13[4], 0, 24);
  v14 = 257;
  v15 = &off_1003017C8;
  v16 = sub_100177F68;
  v17 = 0;
  sub_100009848(&v7, v6, &qword_100348C28, &qword_1002830A8);
  sub_1000097E8(v13, &qword_100348C28, &qword_1002830A8);
  v2 = v10;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v11;
  v3 = v12;
  result = *&v7;
  v5 = v8;
  *a1 = v7;
  *(a1 + 16) = v5;
  *(a1 + 80) = v3;
  *(a1 + 88) = sub_1001754F0;
  *(a1 + 96) = 0;
  return result;
}

double sub_1001721F4@<D0>(uint64_t a1@<X8>)
{
  v6[88] = 1;
  *&v7 = 0xD000000000000012;
  *(&v7 + 1) = 0x80000001002A2E70;
  *&v8 = 0xD000000000000012;
  *(&v8 + 1) = 0x80000001002A2E90;
  v9 = xmmword_100278910;
  *&v10 = 0;
  WORD4(v10) = 257;
  *&v11 = &off_1003017F0;
  *(&v11 + 1) = sub_10016F694;
  v12 = 0;
  v13[0] = 0xD000000000000012;
  v13[1] = 0x80000001002A2E70;
  v13[2] = 0xD000000000000012;
  v13[3] = 0x80000001002A2E90;
  v14 = xmmword_100278910;
  v15 = 0;
  v16 = 257;
  v17 = &off_1003017F0;
  v18 = sub_10016F694;
  v19 = 0;
  sub_100009848(&v7, v6, &qword_100348BF8, &unk_100283030);
  sub_1000097E8(v13, &qword_100348BF8, &unk_100283030);
  v2 = v10;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v11;
  v3 = v12;
  result = *&v7;
  v5 = v8;
  *a1 = v7;
  *(a1 + 16) = v5;
  *(a1 + 80) = v3;
  *(a1 + 88) = sub_100178784;
  *(a1 + 96) = 0;
  return result;
}

double sub_100172318@<D0>(uint64_t a1@<X8>)
{
  v6[88] = 1;
  *&v7 = 0xD000000000000010;
  *(&v7 + 1) = 0x80000001002A2EB0;
  v8 = 0u;
  v9 = 0u;
  *&v10 = 0;
  WORD4(v10) = 257;
  *&v11 = &off_100301820;
  *(&v11 + 1) = sub_100177FB4;
  v12 = 0;
  v13[0] = 0xD000000000000010;
  v13[1] = 0x80000001002A2EB0;
  v14 = 0u;
  v15 = 0u;
  v16 = 0;
  v17 = 257;
  v18 = &off_100301820;
  v19 = sub_100177FB4;
  v20 = 0;
  sub_100009848(&v7, v6, &qword_100348C30, &qword_1002830B0);
  sub_1000097E8(v13, &qword_100348C30, &qword_1002830B0);
  v2 = v10;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v11;
  v3 = v12;
  result = *&v7;
  v5 = v8;
  *a1 = v7;
  *(a1 + 16) = v5;
  *(a1 + 80) = v3;
  *(a1 + 88) = sub_1001758EC;
  *(a1 + 96) = 0;
  return result;
}

uint64_t sub_100172424()
{
  v1[3] = v0;
  sub_100035D04(&qword_10033E800, &qword_100278E80);
  v1[4] = swift_task_alloc();
  v2 = sub_100035D04(&qword_100348BE0, &unk_100283010);
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v1[7] = *(v3 + 64);
  v1[8] = swift_task_alloc();
  v4 = swift_task_alloc();
  v1[9] = v4;
  *v4 = v1;
  v4[1] = sub_10017255C;

  return sub_1001733BC();
}

uint64_t sub_10017255C()
{
  v1 = *(*v0 + 24);

  return (_swift_task_switch)(sub_10017266C, v1, 0);
}

uint64_t sub_10017266C()
{
  if (qword_1003390E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[10] = sub_100003078(v1, qword_100348878);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Presenting banner...", v4, 2u);
  }

  v5 = v0[3];

  v9 = *(v5 + 128);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    v12 = v0[8];
    v13 = v0[5];
    v14 = v0[6];
    v15 = v0[3];
    *(v5 + 128) = v11;
    v0[2] = v11;
    v0[11] = dispatch thunk of CustomStringConvertible.description.getter();
    v0[12] = v16;
    (*(v14 + 16))(v12, v15 + OBJC_IVAR____TtC17proximitycontrold22HandoffFeedbackManager_actionContinuation, v13);
    v17 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v18 = swift_allocObject();
    v0[13] = v18;
    (*(v14 + 32))(v18 + v17, v12, v13);
    v0[14] = type metadata accessor for MainActor();
    v0[15] = static MainActor.shared.getter();
    v19 = dispatch thunk of Actor.unownedExecutor.getter();
    v21 = v20;
    v6 = sub_100172880;
    v7 = v19;
    v8 = v21;
  }

  return (_swift_task_switch)(v6, v7, v8);
}

uint64_t sub_100172880()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  v4 = v0[3];

  v5 = objc_allocWithZone(type metadata accessor for HandoffFeedbackBannerPresenter());
  sub_100044714(v3, v1, sub_100178224, v2);
  v0[16] = v6;

  return (_swift_task_switch)(sub_100172938, v4, 0);
}

uint64_t sub_100172938()
{
  *(v0 + 136) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(sub_1001729C4, v2, v1);
}

uint64_t sub_1001729C4()
{

  sub_100044E70();
  *(v0 + 144) = 0;
  v1 = *(v0 + 24);

  return (_swift_task_switch)(sub_100172A54, v1, 0);
}

uint64_t sub_100172A54()
{
  v1 = v0[16];
  v3 = v0[3];
  v2 = v0[4];
  v4 = *(v3 + 120);
  *(v3 + 120) = v1;
  v5 = v1;

  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  v7 = *(v3 + 128);
  v8 = sub_1001782A0();
  v9 = swift_allocObject();
  v9[2] = v3;
  v9[3] = v8;
  v9[4] = v7;
  v9[5] = v3;
  v9[6] = v5;
  swift_retain_n();
  v10 = v5;
  sub_1000DBA98(0, 0, v2, &unk_100283048, v9);

  v11 = v0[1];

  return v11();
}

uint64_t sub_100172BA0()
{
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "### Failed to present banner: %@", v3, 0xCu);
    sub_1000097E8(v4, &qword_100339940, &unk_100272C50);
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100172D1C(uint64_t a1)
{
  v2 = sub_100035D04(&qword_100348BB8, &qword_100282FF8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7[-v4];
  sub_1001781EC(a1, v7);
  sub_100035D04(&qword_100348BE0, &unk_100283010);
  AsyncStream.Continuation.yield(_:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100172E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v8 = type metadata accessor for ContinuousClock();
  v6[5] = v8;
  v6[6] = *(v8 - 8);
  v6[7] = swift_task_alloc();

  return (_swift_task_switch)(sub_100172EE8, a5, 0);
}

uint64_t sub_100172EE8()
{
  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v1 = *(qword_10038B0B8 + 240);
  sub_10005F4E4();

  v2 = static Duration.seconds(_:)();
  v4 = v3;
  static Clock<>.continuous.getter();
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_100173018;

  return sub_1001FD6AC(v2, v4, 0, 0, 1);
}

uint64_t sub_100173018()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  *(*v1 + 72) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 24);
  if (v0)
  {
    v7 = sub_1001732D0;
  }

  else
  {
    v7 = sub_1001731A0;
  }

  return (_swift_task_switch)(v7, v6, 0);
}

uint64_t sub_1001731A0()
{
  v1 = v0[3];
  if (*(v1 + 128) != v0[2] || (v2 = *(v1 + 120)) == 0 || (v3 = v0[4], type metadata accessor for HandoffFeedbackBannerPresenter(), v4 = v3, v5 = v2, v6 = static NSObject.== infix(_:_:)(), v4, v5, (v6 & 1) == 0))
  {

    v9 = v0[1];

    __asm { BRAA            X1, X16 }
  }

  type metadata accessor for MainActor();
  v0[10] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(sub_100173334, v8, v7);
}

uint64_t sub_1001732D0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100173334()
{

  sub_100045048();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001733DC()
{
  v1 = *(v0[2] + 120);
  v0[3] = v1;
  if (!v1)
  {
    v10 = v0[1];

    __asm { BRAA            X1, X16 }
  }

  v2 = qword_1003390E8;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  v0[4] = sub_100003078(v4, qword_100348878);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Dismissing banner...", v7, 2u);
  }

  type metadata accessor for MainActor();
  v0[5] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(sub_100173578, v9, v8);
}

uint64_t sub_100173578()
{

  sub_100045048();
  *(v0 + 48) = 0;
  v1 = *(v0 + 16);

  return (_swift_task_switch)(sub_10017360C, v1, 0);
}

uint64_t sub_10017360C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 120);
  *(v1 + 120) = 0;

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10017367C()
{
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[3];
  if (v3)
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "### Failed to dismiss banner: %@", v5, 0xCu);
    sub_1000097E8(v6, &qword_100339940, &unk_100272C50);
  }

  else
  {
  }

  v8 = v0[2];
  v9 = *(v8 + 120);
  *(v8 + 120) = 0;

  v10 = v0[1];

  return v10();
}

uint64_t sub_1001737F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[27] = a3;
  v4[28] = v3;
  v4[25] = a1;
  v4[26] = a2;
  v5 = sub_100035D04(&qword_100348BB8, &qword_100282FF8);
  v4[29] = v5;
  v4[30] = *(v5 - 8);
  v4[31] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[32] = AssociatedTypeWitness;
  v9 = type metadata accessor for PCUserAlertResult(0, AssociatedTypeWitness, v7, v8);
  v4[33] = v9;
  v4[34] = *(v9 - 8);
  v4[35] = swift_task_alloc();
  v10 = swift_task_alloc();
  v4[36] = v10;
  *v10 = v4;
  v10[1] = sub_100173988;

  return sub_1001733BC();
}

uint64_t sub_100173988()
{
  v1 = *(*v0 + 224);

  return (_swift_task_switch)(sub_100173A98, v1, 0);
}

uint64_t sub_100173A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[26];
  v5 = v4[27];
  type metadata accessor for PCUserAlert(0, v4[32], a3, a4);
  (*(v5 + 16))(v6, v5);
  v4[37] = PCUserAlert.__allocating_init(definition:)((v4 + 2));
  v7 = swift_task_alloc();
  v4[38] = v7;
  *v7 = v4;
  v7[1] = sub_100173B84;
  v8 = v4[35];

  return PCUserAlert.run()(v8);
}

uint64_t sub_100173B84()
{
  v2 = *v1;
  *(*v1 + 312) = v0;

  v3 = *(v2 + 224);
  if (v0)
  {
    v4 = sub_10017401C;
  }

  else
  {
    v4 = sub_100173CB0;
  }

  return (_swift_task_switch)(v4, v3, 0);
}

uint64_t sub_100173CB0()
{
  v1 = *(v0[28] + 112);
  if (v1)
  {
    v2 = v0[35];
    v22 = v0[34];
    v23 = v0[33];
    v3 = v0[30];
    v20 = v0[31];
    v21 = v0[29];
    v5 = v0[26];
    v4 = v0[27];
    v6 = *(v4 + 24);

    v7 = v6(v5, v4);
    v7(v1, v2);

    sub_1001781EC((v0 + 13), (v0 + 19));
    sub_100035D04(&qword_100348BE0, &unk_100283010);
    AsyncStream.Continuation.yield(_:)();

    (*(v3 + 8))(v20, v21);
    sub_100045F80((v0 + 13));
    (*(v22 + 8))(v2, v23);
  }

  else
  {
    v9 = v0[34];
    v8 = v0[35];
    v10 = v0[33];
    sub_100035D04(&qword_100348BC0, &qword_100283000);
    sub_10000E244(&qword_100348BC8, &qword_100348BC0, &qword_100283000, &unk_10027EBE0);
    swift_allocError();
    *v11 = xmmword_1002828F0;
    swift_willThrow();

    (*(v9 + 8))(v8, v10);
    if (qword_1003390E8 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100003078(v12, qword_100348878);
    swift_errorRetain();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      swift_errorRetain();
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v17;
      *v16 = v17;
      _os_log_impl(&_mh_execute_header, v13, v14, "### Alert failed: %@", v15, 0xCu);
      sub_1000097E8(v16, &qword_100339940, &unk_100272C50);
    }

    else
    {
    }
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_10017401C()
{

  if (qword_1003390E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100003078(v1, qword_100348878);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "### Alert failed: %@", v4, 0xCu);
    sub_1000097E8(v5, &qword_100339940, &unk_100272C50);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

double sub_1001741D8()
{
  v1 = sub_100035D04(&qword_100348BB8, &qword_100282FF8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - v3;
  if (*(v0 + 112))
  {

    sub_1001745AC(v18);
    sub_1000E8064(0, 0);
    sub_1000E8EF8(v18);
  }

  else
  {
    sub_100035D04(&qword_100348BC0, &qword_100283000);
    sub_10000E244(&qword_100348BC8, &qword_100348BC0, &qword_100283000, &unk_10027EBE0);
    swift_allocError();
    *v5 = xmmword_1002828F0;
    swift_willThrow();
    if (qword_1003390E8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100003078(v6, qword_100348878);
    swift_errorRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      swift_errorRetain();
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v11;
      *v10 = v11;
      _os_log_impl(&_mh_execute_header, v7, v8, "### Failed to file radar: %@", v9, 0xCu);
      sub_1000097E8(v10, &qword_100339940, &unk_100272C50);
    }

    v15 = sub_100035D04(&qword_100348BD0, &qword_100283008);
    v16 = sub_10000E244(&qword_100348BD8, &qword_100348BD0, &qword_100283008, &unk_100283190);
    v14 = swift_allocObject();
    sub_1001753DC(v14 + 16);
    v17 = 1;
    sub_100035D04(&qword_100348BE0, &unk_100283010);
    AsyncStream.Continuation.yield(_:)();

    (*(v2 + 8))(v4, v1);
  }

  return result;
}

void sub_100174558(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for HandoffFeedback.Action);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

double sub_1001745AC@<D0>(uint64_t *a1@<X8>)
{
  v120 = a1;
  v123 = type metadata accessor for UUID();
  v3 = *(v123 - 8);
  __chkstk_darwin(v123);
  v115 = v111 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100035D04(&unk_100348F30, &unk_100272540);
  v117 = *(v5 - 8);
  v6 = __chkstk_darwin(v5 - 8);
  v119 = v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v118 = v111 - v8;
  v9 = v170;
  v171 = 0xD000000000000010;
  v172 = 0x80000001002984F0;
  if (*(v1 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_sentiment) <= 1u)
  {
    if (*(v1 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_sentiment))
    {
      v10 = xmmword_100282920;
    }

    else
    {
      v10 = xmmword_100282900;
    }

    goto LABEL_7;
  }

  if (*(v1 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_sentiment) == 2)
  {
    v10 = xmmword_100282910;
LABEL_7:
    v173 = v10;
    goto LABEL_9;
  }

  v173 = 0uLL;
LABEL_9:
  v11 = 0x2E2E2E726568744FLL;
  v116 = OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_problem;
  v12 = *(v1 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_problem);
  if (v12 <= 2)
  {
    if (*(v1 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_problem))
    {
      if (v12 == 1)
      {
        v13 = "Handoff didn't work";
      }

      else
      {
        v13 = "Unexpected behavior";
      }

      v14 = (v13 - 32) | 0x8000000000000000;
      v11 = 0xD000000000000013;
    }

    else
    {
      v14 = 0x8000000100297510;
      v11 = 0xD000000000000015;
    }

    goto LABEL_20;
  }

  if (v12 == 3)
  {
    v14 = 0x8000000100297570;
    v11 = 0xD000000000000011;
    goto LABEL_20;
  }

  if (v12 == 4)
  {
    v14 = 0xE800000000000000;
LABEL_20:
    v174 = v11;
    v175 = v14;
    goto LABEL_21;
  }

  v174 = 0;
  v175 = 0;
LABEL_21:
  v121 = OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_proximity;
  v122 = v3;
  v15 = *(v1 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_proximity);
  v124 = v1;
  if (v15 > 1)
  {
    if (v15 != 2)
    {
      v176 = 0uLL;
      goto LABEL_29;
    }

    v16 = xmmword_100282940;
  }

  else if (v15)
  {
    v16 = xmmword_100282950;
  }

  else
  {
    v16 = xmmword_100282930;
  }

  v176 = v16;
LABEL_29:
  v17 = 0;
  LODWORD(v18) = 4;
  v19 = v170;
  v20 = _swiftEmptyArrayStorage;
LABEL_30:
  if (v17 <= 4)
  {
    v21 = 4;
  }

  else
  {
    v21 = v17;
  }

  v22 = v21 + 1;
  v23 = 16 * v17 + 40;
  while (v17 != 4)
  {
    if (v22 == ++v17)
    {
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      v9 = sub_1000B0230(0, *(v9 + 2) + 1, 1, v9);
      goto LABEL_117;
    }

    v24 = v23 + 16;
    v1 = *&v170[v23];
    v23 += 16;
    if (v1)
    {
      v2 = *(v168 + v24);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_100009088(0, *(v20 + 2) + 1, 1, v20);
      }

      v26 = *(v20 + 2);
      v25 = *(v20 + 3);
      v27 = v20;
      if (v26 >= v25 >> 1)
      {
        v27 = sub_100009088((v25 > 1), v26 + 1, 1, v20);
      }

      *(v27 + 2) = v26 + 1;
      v20 = v27;
      v28 = &v27[16 * v26];
      *(v28 + 4) = v2;
      *(v28 + 5) = v1;
      goto LABEL_30;
    }
  }

  sub_100035D04(&qword_10033A238, &qword_10027D3E0);
  swift_arrayDestroy();
  v29 = *(v20 + 2);
  if (v29)
  {
    v169 = _swiftEmptyArrayStorage;
    sub_1000CDF40(0, v29, 0);
    v30 = v169;
    v114 = v20;
    v31 = (v20 + 40);
    do
    {
      v32 = *(v31 - 1);
      v33 = *v31;
      v125 = 91;
      v126 = 0xE100000000000000;

      v34._countAndFlagsBits = v32;
      v34._object = v33;
      String.append(_:)(v34);
      v35._countAndFlagsBits = 93;
      v35._object = 0xE100000000000000;
      String.append(_:)(v35);

      v37 = v125;
      v36 = v126;
      v169 = v30;
      v39 = v30[2];
      v38 = v30[3];
      if (v39 >= v38 >> 1)
      {
        sub_1000CDF40((v38 > 1), v39 + 1, 1);
        v30 = v169;
      }

      v30[2] = v39 + 1;
      v40 = &v30[2 * v39];
      v40[4] = v37;
      v40[5] = v36;
      v31 += 2;
      --v29;
    }

    while (v29);
  }

  else
  {

    v30 = _swiftEmptyArrayStorage;
  }

  v125 = v30;
  v41 = sub_100035D04(&qword_1003397D0, &qword_1002729A0);
  v111[1] = sub_10000E244(&qword_10033D8A0, &qword_1003397D0, &qword_1002729A0, &protocol conformance descriptor for [A]);
  v42 = BidirectionalCollection<>.joined(separator:)();
  v44 = v43;

  v125 = v42;
  v126 = v44;

  v45._countAndFlagsBits = 32;
  v45._object = 0xE100000000000000;
  String.append(_:)(v45);

  v46 = v125;
  v47 = v126;
  v48 = v124;
  v17 = v124 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_problemExplanation;
  v49 = *(v124 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_problemExplanation + 8);
  v2 = 0xD000000000000011;
  v112 = v41;
  if (v49)
  {
    v50 = *v17;
    v51 = v49;
  }

  else
  {
    v52 = (v124 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_comments);
    v53 = *(v124 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_comments + 8);
    if (v53)
    {
      v50 = *v52;
    }

    else
    {
      v50 = 0;
    }

    if (v53)
    {
      v51 = v52[1];
    }

    else
    {
      v51 = 0xE000000000000000;
    }
  }

  v125 = v46;
  v126 = v47;

  v54._countAndFlagsBits = v50;
  v54._object = v51;
  String.append(_:)(v54);

  v113 = v126;
  v114 = v125;
  v128 = 0x6154207370657453;
  v129 = 0xEB000000006E656BLL;
  v55 = 0xE000000000000000;
  if (!*(v48 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_includeDetailsTemplate))
  {
    v55 = 0;
  }

  v130 = 0;
  v131 = v55;
  v132 = 0xD000000000000011;
  v133 = 0x80000001002A2B50;
  v134 = 0;
  v135 = v55;
  v136 = 0x42206C6175746341;
  v137 = 0xEF726F6976616865;
  v138 = 0;
  v139 = v55;
  v140 = 0x6D617473656D6954;
  v141 = 0xE900000000000070;
  v56 = [objc_allocWithZone(NSDateFormatter) init];
  v57 = String._bridgeToObjectiveC()();
  [v56 setDateFormat:v57];

  isa = Date._bridgeToObjectiveC()().super.isa;
  v59 = [v56 stringFromDate:isa];

  v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v62 = v61;

  v142 = v60;
  v143 = v62;
  strcpy(v144, "Device Model");
  HIBYTE(v144[6]) = 0;
  v144[7] = -5120;
  v111[0] = OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_appleDevice;
  v63 = *(v48 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_appleDevice);
  if (v63 > 3)
  {
    v64 = 0x2E2E2E726568744FLL;
    if (*(v48 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_appleDevice) > 5u)
    {
      if (v63 == 6)
      {
        v67 = 0xEA0000000000332CLL;
        v66 = 0x3531656E6F685069;
      }

      else
      {
        v67 = 0xE100000000000000;
        v66 = 63;
      }
    }

    else if (v63 == 4)
    {
      v66 = 0x3231656E6F685069;
      v67 = 0xEA0000000000352CLL;
    }

    else
    {
      v66 = 0x3531656E6F685069;
      v67 = 0xEA0000000000322CLL;
    }
  }

  else
  {
    v64 = 0x2E2E2E726568744FLL;
    if (*(v48 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_appleDevice) <= 1u)
    {
      if (*(v48 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_appleDevice))
      {
        v65 = "AudioAccessory5,1";
      }

      else
      {
        v65 = "AudioAccessory1,1";
      }

      goto LABEL_73;
    }

    if (v63 == 2)
    {
      v65 = "AudioAccessory6,1";
LABEL_73:
      v67 = (v65 - 32) | 0x8000000000000000;
      v66 = 0xD000000000000011;
      goto LABEL_77;
    }

    v67 = 0xEA0000000000332CLL;
    v66 = 0x3231656E6F685069;
  }

LABEL_77:
  v145 = v66;
  v146 = v67;
  v147 = 0x746E65746E49;
  v148 = 0xE600000000000000;
  v68 = *(v48 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_intent);
  if (v68 > 2)
  {
    if (v68 == 3)
    {
      v69 = 0x80000001002975F0;
      v64 = 0xD00000000000001CLL;
    }

    else
    {
      if (v68 != 4)
      {
        v149 = 0;
        v150 = 0;
        goto LABEL_88;
      }

      v69 = 0xE800000000000000;
    }
  }

  else if (*(v48 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_intent))
  {
    if (v68 == 1)
    {
      v69 = 0x80000001002975B0;
      v64 = 0xD000000000000014;
    }

    else
    {
      v69 = 0x80000001002975D0;
      v64 = 0xD00000000000001ALL;
    }
  }

  else
  {
    v69 = 0x8000000100297590;
    v64 = 0xD000000000000012;
  }

  v149 = v64;
  v150 = v69;
LABEL_88:
  v151 = 0x74696D69786F7250;
  v152 = 0xE900000000000079;
  v70 = *(v48 + v121);
  if (v70 == 3)
  {
    v71 = 0;
    v72 = 0;
  }

  else
  {
    v71 = sub_100176DA4(v70);
  }

  v18 = v127;
  v153 = v71;
  v154 = v72;
  v155 = 0x7470697263736544;
  v156 = 0xEB000000006E6F69;
  v73 = *(v17 + 8);
  v157 = *v17;
  v158 = v73;
  v159 = 0x73746E656D6D6F43;
  v160 = 0xE800000000000000;
  v1 = *(v48 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_comments + 8);
  v161 = *(v48 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_comments);
  v162 = v1;
  strcpy(v163, "Session Report");
  v163[15] = -18;
  v74 = *(v48 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_sessionReport + 8);
  v164 = *(v48 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_sessionReport);
  v165 = v74;
  v166 = 0xD000000000000019;
  v167 = 0x80000001002A2B90;
  v75 = *(v48 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_photoExpected);
  v76 = 20302;
  if (v75)
  {
    v76 = 5457241;
  }

  v77 = 0xE200000000000000;
  if (v75)
  {
    v77 = 0xE300000000000000;
  }

  v78 = v75 == 2;
  if (v75 == 2)
  {
    v79 = 0;
  }

  else
  {
    v79 = v76;
  }

  if (v78)
  {
    v80 = 0;
  }

  else
  {
    v80 = v77;
  }

  v168[0] = v79;
  v168[1] = v80;

  v81 = 0;
  v9 = _swiftEmptyArrayStorage;
  v19 = 11;
LABEL_102:
  if (v81 <= 0xB)
  {
    v82 = 11;
  }

  else
  {
    v82 = v81;
  }

  v83 = v82 + 1;
  v84 = &v127[2 * v81];
  while (v81 != 11)
  {
    if (v83 == ++v81)
    {
      goto LABEL_135;
    }

    v85 = (v84 + 2);
    v86 = *(v84 + 7);
    v84 += 2;
    if (v86)
    {
      v87 = v85[1];
      v88 = v85[2];
      v125 = *v85;
      v126 = v87;
      swift_bridgeObjectRetain_n();

      v89._countAndFlagsBits = 538970682;
      v89._object = 0xE400000000000000;
      String.append(_:)(v89);
      v90._countAndFlagsBits = v88;
      v90._object = v86;
      String.append(_:)(v90);

      v91 = v125;
      v2 = v126;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_100009088(0, *(v9 + 2) + 1, 1, v9);
      }

      v17 = *(v9 + 2);
      v92 = *(v9 + 3);
      v1 = v17 + 1;
      v18 = v127;
      if (v17 >= v92 >> 1)
      {
        v9 = sub_100009088((v92 > 1), v17 + 1, 1, v9);
      }

      *(v9 + 2) = v1;
      v93 = &v9[16 * v17];
      *(v93 + 4) = v91;
      *(v93 + 5) = v2;
      goto LABEL_102;
    }
  }

  sub_100035D04(&qword_100348BE8, &qword_100283020);
  swift_arrayDestroy();
  v125 = v9;
  v121 = BidirectionalCollection<>.joined(separator:)();
  v112 = v94;

  v95 = v124;
  LODWORD(v18) = *(v124 + v116);
  LODWORD(v1) = *(v124 + v111[0]);
  sub_100035D04(&qword_100348BF0, &qword_100283028);
  v17 = (*(v117 + 80) + 32) & ~*(v117 + 80);
  v19 = swift_allocObject();
  v96 = OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_deviceID;
  swift_beginAccess();
  sub_100009848(v95 + v96, v19 + v17, &unk_100348F30, &unk_100272540);
  v97 = v118;
  sub_100009848(v19 + v17, v118, &unk_100348F30, &unk_100272540);
  v98 = v119;
  sub_100008FCC(v97, v119);
  v99 = v122;
  v100 = v123;
  if ((*(v122 + 48))(v98, 1, v123) == 1)
  {
    sub_1000097E8(v98, &unk_100348F30, &unk_100272540);
    v9 = _swiftEmptyArrayStorage;
    goto LABEL_120;
  }

  v2 = *(v99 + 32);
  v2(v115, v98, v100);
  v9 = _swiftEmptyArrayStorage;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_136;
  }

LABEL_117:
  v102 = *(v9 + 2);
  v101 = *(v9 + 3);
  if (v102 >= v101 >> 1)
  {
    v9 = sub_1000B0230((v101 > 1), v102 + 1, 1, v9);
  }

  *(v9 + 2) = v102 + 1;
  v2(&v9[((*(v122 + 80) + 32) & ~*(v122 + 80)) + *(v122 + 72) * v102], v115, v123);
LABEL_120:
  if ((v1 - 3) >= 5)
  {
    v103 = &off_100301848;
  }

  else
  {
    v103 = &off_100301870;
  }

  if (v18)
  {
    v104 = 5;
  }

  else
  {
    v104 = 9;
  }

  if (v18 == 5)
  {
    v105 = 8;
  }

  else
  {
    v105 = v104;
  }

  if (v18 == 5)
  {
    v106 = 2;
  }

  else
  {
    v106 = 4;
  }

  swift_setDeallocating();
  sub_1000097E8(v19 + v17, &unk_100348F30, &unk_100272540);
  swift_deallocClassInstance();
  v107 = v120;
  v108 = v112;
  *v120 = v121;
  v107[1] = v108;
  *(v107 + 16) = v105;
  *(v107 + 3) = xmmword_100282960;
  v107[5] = 0xD000000000000011;
  v107[6] = 0x80000001002A2BB0;
  *&result = 7105601;
  *(v107 + 7) = xmmword_100282970;
  v107[9] = v103;
  v107[10] = v9;
  *(v107 + 88) = v106;
  v110 = v113;
  v107[12] = v114;
  v107[13] = v110;
  return result;
}

double sub_1001753DC@<D0>(uint64_t a2@<X8>)
{
  swift_getErrorValue();
  v8[88] = 0;
  v9 = xmmword_100282980;
  *&v10 = Error.localizedDescription.getter();
  *(&v10 + 1) = v3;
  v11 = 0uLL;
  *&v12 = 0x3FF8000000000000;
  WORD4(v12) = 256;
  *&v13 = _swiftEmptyArrayStorage;
  *(&v13 + 1) = sub_10016F694;
  v14 = 0;
  v15 = xmmword_100282980;
  v16 = v10;
  v17 = v3;
  v18 = 0;
  v19 = 0;
  v20 = 0x3FF8000000000000;
  v21 = 256;
  v22 = _swiftEmptyArrayStorage;
  v23 = sub_10016F694;
  v24 = 0;
  sub_100009848(&v9, v8, &qword_100348BF8, &unk_100283030);
  sub_1000097E8(&v15, &qword_100348BF8, &unk_100283030);
  v4 = v12;
  *(a2 + 32) = v11;
  *(a2 + 48) = v4;
  *(a2 + 64) = v13;
  v5 = v14;
  result = *&v9;
  v7 = v10;
  *a2 = v9;
  *(a2 + 16) = v7;
  *(a2 + 80) = v5;
  *(a2 + 88) = sub_100176980;
  *(a2 + 96) = 0;
  return result;
}

uint64_t sub_1001754F0@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  *(a1 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_sentiment) = v4;
  if (v4)
  {
    if (v4 == 1)
    {
      v7 = sub_100035D04(&qword_100348BD0, &qword_100283008);
      v8 = sub_10000E244(&qword_100348BD8, &qword_100348BD0, &qword_100283008, &unk_100283190);
      *&v6 = swift_allocObject();
      sub_1001721F4(v6 + 16);
    }

    else
    {
      v7 = sub_100035D04(&qword_100348BD0, &qword_100283008);
      v8 = sub_10000E244(&qword_100348BD8, &qword_100348BD0, &qword_100283008, &unk_100283190);
      *&v6 = swift_allocObject();
      sub_100175684(v6 + 16);
    }
  }

  else
  {
    v7 = sub_100035D04(&qword_100348C08, &qword_100283050);
    v8 = sub_10000E244(&qword_100348C10, &qword_100348C08, &qword_100283050, &unk_100283190);
    *&v6 = swift_allocObject();
    sub_100172318(v6 + 16);
  }

  result = sub_10000E754(&v6, a3);
  *(a3 + 40) = 1;
  return result;
}

double sub_100175684@<D0>(uint64_t a1@<X8>)
{
  v6[88] = 1;
  *&v7 = 0xD00000000000001DLL;
  *(&v7 + 1) = 0x80000001002A2C50;
  *v9 = 0;
  v8 = 0uLL;
  *&v9[8] = xmmword_100282990;
  *&v9[24] = 257;
  *&v10 = &off_100301898;
  *(&v10 + 1) = sub_10016F694;
  v11 = 0;
  v12[0] = 0xD00000000000001DLL;
  v12[1] = 0x80000001002A2C50;
  memset(&v12[2], 0, 24);
  v13 = xmmword_100282990;
  v14 = 257;
  v15 = &off_100301898;
  v16 = sub_10016F694;
  v17 = 0;
  sub_100009848(&v7, v6, &qword_100348BF8, &unk_100283030);
  sub_1000097E8(v12, &qword_100348BF8, &unk_100283030);
  v2 = *&v9[16];
  *(a1 + 32) = *v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v10;
  v3 = v11;
  result = *&v7;
  v5 = v8;
  *a1 = v7;
  *(a1 + 16) = v5;
  *(a1 + 80) = v3;
  *(a1 + 88) = sub_100178784;
  *(a1 + 96) = 0;
  return result;
}

double sub_10017579C@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v9[88] = 1;
  *&v10 = 0xD00000000000001BLL;
  *(&v10 + 1) = 0x80000001002A2C70;
  *&v11 = 0xD000000000000020;
  *(&v11 + 1) = 0x80000001002A2C90;
  *&v13 = 0;
  v12 = 0uLL;
  WORD4(v13) = 257;
  *&v14 = &off_1003018C8;
  *(&v14 + 1) = sub_10016F694;
  v15 = 0;
  v16[0] = 0xD00000000000001BLL;
  v16[1] = 0x80000001002A2C70;
  v16[2] = 0xD000000000000020;
  v16[3] = 0x80000001002A2C90;
  memset(&v16[4], 0, 24);
  v17 = 257;
  v18 = &off_1003018C8;
  v19 = sub_10016F694;
  v20 = 0;
  sub_100009848(&v10, v9, &qword_100348BF8, &unk_100283030);
  sub_1000097E8(v16, &qword_100348BF8, &unk_100283030);
  v4 = swift_allocObject();
  *(v4 + 16) = 19279;
  *(v4 + 24) = 0xE200000000000000;
  *(v4 + 32) = a1;
  v5 = v13;
  *(a2 + 32) = v12;
  *(a2 + 48) = v5;
  *(a2 + 64) = v14;
  v6 = v15;
  result = *&v10;
  v8 = v11;
  *a2 = v10;
  *(a2 + 16) = v8;
  *(a2 + 80) = v6;
  *(a2 + 88) = sub_100178430;
  *(a2 + 96) = v4;
  return result;
}

uint64_t sub_1001758EC@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  *(a1 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_problem) = v4;
  if (v4 <= 1)
  {
    if (v4)
    {
      v5 = *(a1 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_appleDevice);
      v11 = sub_100035D04(&qword_100348C38, &qword_1002830B8);
      v12 = sub_10000E244(&qword_100348C40, &qword_100348C38, &qword_1002830B8, &unk_100283190);
      *&v10 = swift_allocObject();
      v6 = v10 + 16;
      v7 = 1;
      goto LABEL_10;
    }

    v8 = *(a1 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_appleDevice);
    v11 = sub_100035D04(&qword_100348C48, &qword_1002830C0);
    v12 = sub_10000E244(&qword_100348C50, &qword_100348C48, &qword_1002830C0, &unk_100283190);
    *&v10 = swift_allocObject();
    sub_100175D28(0, v8, v10 + 16);
  }

  else
  {
    if (v4 == 2)
    {
      v5 = *(a1 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_appleDevice);
      v11 = sub_100035D04(&qword_100348C38, &qword_1002830B8);
      v12 = sub_10000E244(&qword_100348C40, &qword_100348C38, &qword_1002830B8, &unk_100283190);
      *&v10 = swift_allocObject();
      v6 = v10 + 16;
      v7 = 2;
      goto LABEL_10;
    }

    if (v4 == 3)
    {
      v5 = *(a1 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_appleDevice);
      v11 = sub_100035D04(&qword_100348C38, &qword_1002830B8);
      v12 = sub_10000E244(&qword_100348C40, &qword_100348C38, &qword_1002830B8, &unk_100283190);
      *&v10 = swift_allocObject();
      v6 = v10 + 16;
      v7 = 3;
LABEL_10:
      sub_100175BCC(v7, v5, v6);
      goto LABEL_11;
    }

    v11 = sub_100035D04(&qword_100348BD0, &qword_100283008);
    v12 = sub_10000E244(&qword_100348BD8, &qword_100348BD0, &qword_100283008, &unk_100283190);
    *&v10 = swift_allocObject();
    sub_10017579C(5, v10 + 16);
  }

LABEL_11:
  result = sub_10000E754(&v10, a3);
  *(a3 + 40) = 1;
  return result;
}

double sub_100175BCC@<D0>(char a1@<W0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  v11[88] = 1;
  *&v12 = 0xD000000000000014;
  *(&v12 + 1) = 0x80000001002A2F10;
  *&v13 = 0xD00000000000001BLL;
  *(&v13 + 1) = 0x80000001002A2F30;
  *&v15 = 0;
  v14 = 0uLL;
  WORD4(v15) = 257;
  if (a2 - 3 >= 5)
  {
    v5 = &off_100301908;
  }

  else
  {
    v5 = &off_100301930;
  }

  *&v16 = v5;
  *(&v16 + 1) = sub_100178058;
  v17 = 0;
  v18[0] = 0xD000000000000014;
  v18[1] = 0x80000001002A2F10;
  v18[2] = 0xD00000000000001BLL;
  v18[3] = 0x80000001002A2F30;
  memset(&v18[4], 0, 24);
  v19 = 257;
  v20 = v5;
  v21 = sub_100178058;
  v22 = 0;
  sub_100009848(&v12, v11, &qword_100348C60, &qword_1002830D0);
  sub_1000097E8(v18, &qword_100348C60, &qword_1002830D0);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v7 = v15;
  *(a3 + 32) = v14;
  *(a3 + 48) = v7;
  *(a3 + 64) = v16;
  v8 = v17;
  result = *&v12;
  v10 = v13;
  *a3 = v12;
  *(a3 + 16) = v10;
  *(a3 + 80) = v8;
  *(a3 + 88) = sub_1001784AC;
  *(a3 + 96) = v6;
  return result;
}

double sub_100175D28@<D0>(char a1@<W0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  v4 = 0x646F50656D6F48;
  v5 = 0xE700000000000000;
  v6 = a2 - 3;
  if (a2 >= 3u)
  {
    v4 = 0x3E6563697665643CLL;
    v5 = 0xE800000000000000;
  }

  if (v6 >= 4)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x656E6F685069;
  }

  if (v6 >= 4)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0xE600000000000000;
  }

  *&v25[0] = 0;
  *(&v25[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(51);
  v10._object = 0x80000001002A2ED0;
  v10._countAndFlagsBits = 0xD000000000000030;
  String.append(_:)(v10);
  v11._countAndFlagsBits = v7;
  v11._object = v8;
  String.append(_:)(v11);

  v12._countAndFlagsBits = 63;
  v12._object = 0xE100000000000000;
  String.append(_:)(v12);
  v18[88] = 1;
  v19 = xmmword_1002829A0;
  v20 = v25[0];
  *&v22 = 0;
  v21 = 0uLL;
  WORD4(v22) = 257;
  *&v23 = &off_100301958;
  *(&v23 + 1) = sub_100178100;
  v24 = 0;
  v25[0] = xmmword_1002829A0;
  v25[1] = v20;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 257;
  v30 = &off_100301958;
  v31 = sub_100178100;
  v32 = 0;
  sub_100009848(&v19, v18, &qword_100348C58, &qword_1002830C8);
  sub_1000097E8(v25, &qword_100348C58, &qword_1002830C8);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  v14 = v22;
  *(a3 + 32) = v21;
  *(a3 + 48) = v14;
  *(a3 + 64) = v23;
  v15 = v24;
  result = *&v19;
  v17 = v20;
  *a3 = v19;
  *(a3 + 16) = v17;
  *(a3 + 80) = v15;
  *(a3 + 88) = sub_1001784A4;
  *(a3 + 96) = v13;
  return result;
}

void sub_100175EF8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 24);
  v5 = (a1 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_comments);
  *v5 = *(a2 + 16);
  v5[1] = v4;

  *(a3 + 24) = sub_100035D04(&qword_100348BD0, &qword_100283008);
  *(a3 + 32) = sub_10000E244(&qword_100348BD8, &qword_100348BD0, &qword_100283008, &unk_100283190);
  v6 = swift_allocObject();
  *a3 = v6;
  sub_10017579C(5, v6 + 16);
  *(a3 + 40) = 1;
}

uint64_t sub_100175FC0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v6 = a3;
  *(a1 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_intent) = *a2;
  v7 = sub_100035D04(&qword_100348BD0, &qword_100283008);
  v8 = sub_10000E244(&qword_100348BD8, &qword_100348BD0, &qword_100283008, &unk_100283190);
  v9 = swift_allocObject();
  v10 = v9 + 16;
  if (v6 == 3)
  {
    sub_1001760B0(3u, v10);
  }

  else
  {
    sub_10017579C(a3, v10);
  }

  v13 = v7;
  v14 = v8;
  *&v12 = v9;
  result = sub_10000E754(&v12, a4);
  *(a4 + 40) = 1;
  return result;
}

double sub_1001760B0@<D0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v5 = 0x8000000100297570;
      v6 = 0xD000000000000011;
    }

    else if (a1 == 4)
    {
      v5 = 0xE800000000000000;
      v6 = 0x2E2E2E726568744FLL;
    }

    else
    {
      v5 = 0x80000001002A2EB0;
      v6 = 0xD000000000000010;
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      v4 = "Handoff didn't work";
    }

    else
    {
      v4 = "Unexpected behavior";
    }

    v5 = (v4 - 32) | 0x8000000000000000;
    v6 = 0xD000000000000013;
  }

  else
  {
    v5 = 0x8000000100297510;
    v6 = 0xD000000000000015;
  }

  v12[88] = 1;
  *&v13 = v6;
  *(&v13 + 1) = v5;
  *&v14 = 0xD000000000000022;
  *(&v14 + 1) = 0x80000001002A2F50;
  v15 = xmmword_100278910;
  *&v16 = 0;
  WORD4(v16) = 257;
  *&v17 = &off_100301980;
  *(&v17 + 1) = sub_10016F694;
  v18 = 0;
  v19[0] = v6;
  v19[1] = v5;
  v19[2] = 0xD000000000000022;
  v19[3] = 0x80000001002A2F50;
  v20 = xmmword_100278910;
  v21 = 0;
  v22 = 257;
  v23 = &off_100301980;
  v24 = sub_10016F694;
  v25 = 0;
  sub_100009848(&v13, v12, &qword_100348BF8, &unk_100283030);
  sub_1000097E8(v19, &qword_100348BF8, &unk_100283030);
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = v16;
  *(a2 + 32) = v15;
  *(a2 + 48) = v8;
  *(a2 + 64) = v17;
  v9 = v18;
  result = *&v13;
  v11 = v14;
  *a2 = v13;
  *(a2 + 16) = v11;
  *(a2 + 80) = v9;
  *(a2 + 88) = sub_1001784B4;
  *(a2 + 96) = v7;
  return result;
}

void sub_100176298(uint64_t a1@<X0>, _BYTE *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *(a1 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_proximity) = *a2;
  *(a4 + 24) = sub_100035D04(&qword_100348BD0, &qword_100283008);
  *(a4 + 32) = sub_10000E244(&qword_100348BD8, &qword_100348BD0, &qword_100283008, &unk_100283190);
  v6 = swift_allocObject();
  *a4 = v6;
  sub_10017579C(a3, v6 + 16);
  *(a4 + 40) = 1;
}

void sub_10017634C(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v6 = *(a2 + 24);
  v7 = (a1 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_problemExplanation);
  *v7 = *(a2 + 16);
  v7[1] = v6;

  *(a4 + 24) = sub_100035D04(&qword_100348BD0, &qword_100283008);
  *(a4 + 32) = sub_10000E244(&qword_100348BD8, &qword_100348BD0, &qword_100283008, &unk_100283190);
  v8 = swift_allocObject();
  *a4 = v8;
  sub_10017579C(a3, v8 + 16);
  *(a4 + 40) = 1;
}

void sub_100176418(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v9 = *a2 == a3 && a2[1] == a4;
  if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    if (((1 << a5) & 0x16) != 0)
    {
      *(a6 + 24) = sub_100035D04(&qword_100348BD0, &qword_100283008);
      *(a6 + 32) = sub_10000E244(&qword_100348BD8, &qword_100348BD0, &qword_100283008, &unk_100283190);
      v10 = swift_allocObject();
      *a6 = v10;
      sub_1001767C0(v10 + 16);
      *(a6 + 40) = 1;
      return;
    }

    if (((1 << a5) & 0x28) == 0 && (*(result + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_proximity) & 0xFE) != 2)
    {
      v13 = *(result + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_appleDevice);
      *(a6 + 24) = sub_100035D04(&qword_100348BD0, &qword_100283008);
      *(a6 + 32) = sub_10000E244(&qword_100348BD8, &qword_100348BD0, &qword_100283008, &unk_100283190);
      v14 = swift_allocObject();
      *a6 = v14;
      sub_1001765CC(v13, v14 + 16);
      v12 = 1;
      goto LABEL_12;
    }

    v11 = 4;
  }

  else
  {
    v11 = 5;
  }

  *a6 = v11;
  *(a6 + 8) = 0u;
  *(a6 + 24) = 0u;
  v12 = 3;
LABEL_12:
  *(a6 + 40) = v12;
}

double sub_1001765CC@<D0>(unsigned __int8 a1@<W1>, uint64_t a2@<X8>)
{
  v3 = 0x646F50656D6F48;
  v4 = 0xE700000000000000;
  v5 = a1 - 3;
  if (a1 >= 3u)
  {
    v3 = 0x3E6563697665643CLL;
    v4 = 0xE800000000000000;
  }

  if (v5 >= 4)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x656E6F685069;
  }

  if (v5 >= 4)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  *&v23[0] = 0;
  *(&v23[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(270);
  v8._countAndFlagsBits = 0xD0000000000000C6;
  v8._object = 0x80000001002A2CC0;
  String.append(_:)(v8);
  v9._countAndFlagsBits = v6;
  v9._object = v7;
  String.append(_:)(v9);

  v10._countAndFlagsBits = 0xD000000000000046;
  v10._object = 0x80000001002A2D90;
  String.append(_:)(v10);
  v16[88] = 1;
  *&v17 = 0xD000000000000019;
  *(&v17 + 1) = 0x80000001002A2B90;
  v18 = v23[0];
  *&v20 = 0;
  v19 = 0uLL;
  WORD4(v20) = 257;
  *&v21 = &off_1003019B0;
  *(&v21 + 1) = sub_10016F694;
  v22 = 0;
  *&v23[0] = 0xD000000000000019;
  *(&v23[0] + 1) = 0x80000001002A2B90;
  v23[1] = v18;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 257;
  v28 = &off_1003019B0;
  v29 = sub_10016F694;
  v30 = 0;
  sub_100009848(&v17, v16, &qword_100348BF8, &unk_100283030);
  sub_1000097E8(v23, &qword_100348BF8, &unk_100283030);
  v11 = swift_allocObject();
  *(v11 + 16) = 19279;
  *(v11 + 24) = 0xE200000000000000;
  v12 = v20;
  *(a2 + 32) = v19;
  *(a2 + 48) = v12;
  *(a2 + 64) = v21;
  v13 = v22;
  result = *&v17;
  v15 = v18;
  *a2 = v17;
  *(a2 + 16) = v15;
  *(a2 + 80) = v13;
  *(a2 + 88) = sub_10017843C;
  *(a2 + 96) = v11;
  return result;
}

double sub_1001767C0@<D0>(uint64_t a1@<X8>)
{
  v6[88] = 1;
  v7 = xmmword_1002829B0;
  *&v8 = 0xD00000000000008CLL;
  *(&v8 + 1) = 0x80000001002A2DE0;
  *&v10 = 0;
  v9 = 0uLL;
  WORD4(v10) = 257;
  *&v11 = &off_1003019F0;
  *(&v11 + 1) = sub_10016F694;
  v12 = 0;
  v13 = xmmword_1002829B0;
  v14 = 0xD00000000000008CLL;
  v15 = 0x80000001002A2DE0;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  v19 = 257;
  v20 = &off_1003019F0;
  v21 = sub_10016F694;
  v22 = 0;
  sub_100009848(&v7, v6, &qword_100348BF8, &unk_100283030);
  sub_1000097E8(&v13, &qword_100348BF8, &unk_100283030);
  v2 = v10;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v11;
  v3 = v12;
  result = *&v7;
  v5 = v8;
  *a1 = v7;
  *(a1 + 16) = v5;
  *(a1 + 80) = v3;
  *(a1 + 88) = sub_1001768D4;
  *(a1 + 96) = 0;
  return result;
}

double sub_1001768D4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_includeDetailsTemplate) = 1;
  *a2 = 4;
  result = 0.0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 3;
  return result;
}

double sub_100176904@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a2 == a3 && a2[1] == a4;
  if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    *(a1 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_photoExpected) = 1;
  }

  *a5 = 4;
  result = 0.0;
  *(a5 + 8) = 0u;
  *(a5 + 24) = 0u;
  *(a5 + 40) = 3;
  return result;
}

double sub_100176980@<D0>(uint64_t a1@<X8>)
{
  *a1 = 5;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 3;
  return result;
}

uint64_t sub_1001769AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = type metadata accessor for PCUserAlertDefinition(0, *(a1 + 16), a2, a3);
  v7 = *(*(v6 - 8) + 16);

  return v7(a4, v4, v6);
}

uint64_t sub_100176A18()
{
  v1 = *(v0 + 88);

  return v1;
}

uint64_t sub_100176A48(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100035D04(&unk_100348F30, &unk_100272540);
  __chkstk_darwin(v4 - 8);
  v6 = v24 - v5;
  v7 = OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_deviceID;
  v8 = type metadata accessor for UUID();
  v9 = *(*(v8 - 8) + 56);
  v9(v2 + v7, 1, 1, v8);
  v10 = OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_appleDevice;
  *(v2 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_appleDevice) = 7;
  v11 = (v2 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_sessionReport);
  *v11 = 0;
  v11[1] = 0;
  static Date.now.getter();
  *(v2 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_sentiment) = 3;
  *(v2 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_problem) = 5;
  *(v2 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_proximity) = 3;
  *(v2 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_intent) = 5;
  v12 = (v2 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_problemExplanation);
  *v12 = 0;
  v12[1] = 0;
  v13 = (v2 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_comments);
  *v13 = 0;
  v13[1] = 0;
  *(v2 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_includeDetailsTemplate) = 0;
  *(v2 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_photoExpected) = 2;
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    sub_1000BC398(v6);
  }

  else
  {
    v9(v6, 1, 1, v8);
  }

  swift_beginAccess();
  sub_1001783C0(v6, v2 + v7);
  swift_endAccess();
  if (a1)
  {
    v14 = *(a1 + 24);
    LODWORD(v15) = *(v14 + 16);
    if (v15 == 7)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      v15 = sub_10000A0B4(v16, v17);
      v19 = v18;

      if (v19)
      {
        LOBYTE(v15) = sub_100011F00(v15, v19);
      }

      else
      {
        LOBYTE(v15) = 7;
      }

      if ((*(v14 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_isMock) & 1) == 0)
      {
        *(v14 + 16) = v15;
      }
    }

    *(v2 + v10) = v15;

    sub_10008D594(v24);

    v20 = sub_10022B95C();
    v21 = v22;

    sub_100098354(v24);
  }

  else
  {
    v20 = 0;
    v21 = 0;
    *(v2 + v10) = 7;
  }

  *v11 = v20;
  v11[1] = v21;

  return v2;
}

uint64_t sub_100176DA4(char a1)
{
  if (a1 == 2)
  {
    v4._countAndFlagsBits = 7496006;
    v4._object = 0xE300000000000000;
    String.append(_:)(v4);
    v3 = 1952854846;
LABEL_6:
    v2 = 0xE400000000000000;
    goto LABEL_7;
  }

  if (a1 != 1)
  {
    v3 = 1952854332;
    v5._countAndFlagsBits = 0x74616964656D6D49;
    v5._object = 0xE900000000000065;
    String.append(_:)(v5);
    goto LABEL_6;
  }

  v1._countAndFlagsBits = 0x79627261654ELL;
  v1._object = 0xE600000000000000;
  String.append(_:)(v1);
  v2 = 0xE500000000000000;
  v3 = 0x7466332D31;
LABEL_7:

  v6._countAndFlagsBits = 10272;
  v6._object = 0xE200000000000000;
  String.append(_:)(v6);
  v7._countAndFlagsBits = v3;
  v7._object = v2;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 41;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  return 0;
}

uint64_t sub_100176EC0()
{
  sub_1000097E8(v0 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_deviceID, &unk_100348F30, &unk_100272540);

  v1 = OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_timestamp;
  v2 = type metadata accessor for Date();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_100176FE0(uint64_t a1)
{
  sub_1001770EC(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1001770EC(uint64_t a1)
{
  if (!qword_100348A80)
  {
    type metadata accessor for UUID();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100348A80);
    }
  }
}

uint64_t sub_100177194(uint64_t a1)
{
  if ((*(a1 + 40) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 40) & 3;
  }
}

uint64_t sub_1001771B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 41))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 40);
  if (v3 >= 4)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001771EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_100177238(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_1001772B4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1685024583;
  if (v2 != 1)
  {
    v4 = 0x2E2E2E726568744FLL;
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 6578498;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1685024583;
  if (*a2 != 1)
  {
    v8 = 0x2E2E2E726568744FLL;
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 6578498;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE300000000000000;
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

Swift::Int sub_1001773A0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100177434(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1001774B4(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100177544@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100178108(*a1);
  *a2 = result;
  return result;
}

void sub_100177574(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xE400000000000000;
  v5 = 1685024583;
  if (v2 != 1)
  {
    v5 = 0x2E2E2E726568744FLL;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 6578498;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_1001775D8()
{
  result = qword_100348B68;
  if (!qword_100348B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348B68);
  }

  return result;
}

Swift::Int sub_10017767C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100177768(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100177840(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100177928@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100178154(*a1);
  *a2 = result;
  return result;
}

void sub_100177958(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x2E2E2E726568744FLL;
  if (v2 == 3)
  {
    v4 = 0xD000000000000011;
    v3 = 0x8000000100297570;
  }

  if (v2 == 2)
  {
    v4 = 0xD000000000000013;
    v3 = 0x8000000100297550;
  }

  v5 = 0x8000000100297510;
  v6 = 0xD000000000000015;
  if (*v1)
  {
    v6 = 0xD000000000000013;
    v5 = 0x8000000100297530;
  }

  if (*v1 <= 1u)
  {
    v7 = v6;
  }

  else
  {
    v7 = v4;
  }

  if (*v1 <= 1u)
  {
    v3 = v5;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_100177A14()
{
  result = qword_100348B80;
  if (!qword_100348B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348B80);
  }

  return result;
}

Swift::Int sub_100177A74()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100177B64(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100177C40(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100177D2C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001781A0(*a1);
  *a2 = result;
  return result;
}

void sub_100177D5C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x2E2E2E726568744FLL;
  if (v2 == 3)
  {
    v4 = 0xD00000000000001CLL;
    v3 = 0x80000001002975F0;
  }

  if (v2 == 2)
  {
    v4 = 0xD00000000000001ALL;
    v3 = 0x80000001002975D0;
  }

  v5 = 0xD000000000000012;
  v6 = 0x8000000100297590;
  if (*v1)
  {
    v5 = 0xD000000000000014;
    v6 = 0x80000001002975B0;
  }

  if (*v1 <= 1u)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  if (*v1 <= 1u)
  {
    v3 = v6;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_100177E78()
{
  result = qword_100348B98;
  if (!qword_100348B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348B98);
  }

  return result;
}

unint64_t sub_100177F14()
{
  result = qword_100348BB0;
  if (!qword_100348BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348BB0);
  }

  return result;
}

uint64_t sub_100177F68(_BYTE *a1)
{
  v1 = 1685024583;
  if (*a1 != 1)
  {
    v1 = 0x2E2E2E726568744FLL;
  }

  if (*a1)
  {
    return v1;
  }

  else
  {
    return 6578498;
  }
}

unint64_t sub_100177FB4(_BYTE *a1)
{
  v1 = *a1;
  v2 = 0x2E2E2E726568744FLL;
  if (v1 == 3)
  {
    v2 = 0xD000000000000011;
  }

  if (v1 == 2)
  {
    v2 = 0xD000000000000013;
  }

  v3 = 0xD000000000000015;
  if (*a1)
  {
    v3 = 0xD000000000000013;
  }

  if (*a1 <= 1u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_100178058(_BYTE *a1)
{
  v1 = *a1;
  v2 = 0x2E2E2E726568744FLL;
  if (v1 == 3)
  {
    v2 = 0xD00000000000001CLL;
  }

  if (v1 == 2)
  {
    v2 = 0xD00000000000001ALL;
  }

  v3 = 0xD000000000000012;
  if (*a1)
  {
    v3 = 0xD000000000000014;
  }

  if (*a1 <= 1u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_100178108(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100301A30, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100178154(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100301A98, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1001781A0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100301B30, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100178224(uint64_t a1)
{
  sub_100035D04(&qword_100348BE0, &unk_100283010);

  return sub_100172D1C(a1);
}

unint64_t sub_1001782A0()
{
  result = qword_100348C00;
  if (!qword_100348C00)
  {
    type metadata accessor for HandoffFeedbackManager(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348C00);
  }

  return result;
}

uint64_t sub_1001782F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10009D6D4;

  return sub_100172E20(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1001783C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100035D04(&unk_100348F30, &unk_100272540);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100178444()
{

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_1001784BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000E6584;

  return sub_10016FD04(a1, v4, v5, v6);
}

uint64_t sub_100178570()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001785B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10009D6D4;

  return sub_100170140(a1, v4, v5, v6);
}

uint64_t sub_100178664(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_1001786A0(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1001786CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100178714(uint64_t result, int a2, int a3)
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
      *(result + 64) = (a2 - 1);
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

unint64_t sub_1001787A0()
{
  result = qword_100348D20;
  if (!qword_100348D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348D20);
  }

  return result;
}

uint64_t sub_1001787F4()
{
  if (*(v0 + 56))
  {
    v1 = *(v0 + 56);
  }

  else
  {
    v1 = sub_100178854(v0);
    *(v0 + 56) = v1;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v1;
}

uint64_t sub_100178854(uint64_t a1)
{
  v33 = a1;
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v38 = *(v1 - 8);
  v39 = v1;
  __chkstk_darwin(v1);
  v35 = v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DispatchQoS();
  v36 = *(v3 - 8);
  v37 = v3;
  __chkstk_darwin(v3);
  v34 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchTimeInterval();
  v31 = *(v5 - 8);
  v32 = v5;
  __chkstk_darwin(v5);
  v7 = (v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for DispatchTime();
  v29 = *(v8 - 8);
  v30 = v8;
  v9 = __chkstk_darwin(v8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v28 - v12;
  v14 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28[1] = sub_10017906C();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1001790C0(&qword_100348E58, &type metadata accessor for OS_dispatch_source.TimerFlags, &protocol conformance descriptor for OS_dispatch_source.TimerFlags);
  sub_100035D04(&qword_100348E60, qword_100283350);
  sub_100179108(&qword_100348E68, &qword_100348E60, qword_100283350);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v18 = static OS_dispatch_source.makeTimerSource(flags:queue:)();
  (*(v15 + 8))(v17, v14);
  swift_getObjectType();
  static DispatchTime.now()();
  + infix(_:_:)();
  v19 = v30;
  v20 = *(v29 + 8);
  v20(v11, v30);
  *v7 = 0;
  v22 = v31;
  v21 = v32;
  (*(v31 + 104))(v7, enum case for DispatchTimeInterval.nanoseconds(_:), v32);
  OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
  (*(v22 + 8))(v7, v21);
  v20(v13, v19);
  v23 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1001790B8;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100018AB8;
  aBlock[3] = &unk_10030D118;
  v24 = _Block_copy(aBlock);

  v25 = v34;
  static DispatchQoS.unspecified.getter();
  v26 = v35;
  sub_100178E34();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v24);
  (*(v38 + 8))(v26, v39);
  (*(v36 + 8))(v25, v37);

  return v18;
}

void sub_100178DB0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + 16);
    v3 = *(Strong + 24);
    sub_10009D4E0(v2, v3);

    if (v2)
    {
      v2(v4);
      sub_10002689C(v2, v3);
    }
  }
}

uint64_t sub_100178E34()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_1001790C0(&qword_10033D8C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100035D04(&unk_100343710, &qword_100271800);
  sub_100179108(&qword_10033D8D0, &unk_100343710, &qword_100271800);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_100178F0C()
{
  sub_1001787F4();
  swift_getObjectType();
  OS_dispatch_source.cancel()();
  swift_unknownObjectRelease();
  if ((*(v0 + 40) & 1) == 0)
  {
    *(v0 + 40) = 1;
    swift_getObjectType();
    swift_unknownObjectRetain();
    OS_dispatch_source.resume()();
    swift_unknownObjectRelease();
  }

  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  sub_10002689C(v1, v2);
  sub_10002689C(*(v0 + 16), *(v0 + 24));

  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_100178FAC()
{
  sub_100178F0C();

  return swift_deallocClassInstance();
}

unint64_t sub_100179018()
{
  result = qword_100348E48;
  if (!qword_100348E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348E48);
  }

  return result;
}

unint64_t sub_10017906C()
{
  result = qword_100348E50;
  if (!qword_100348E50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100348E50);
  }

  return result;
}

uint64_t sub_1001790C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100179108(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100035D4C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10017915C()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_100348E70);
  sub_100003078(v0, qword_100348E70);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1001791D4@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 nsuuid];
  if (v3)
  {
    v4 = v3;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_100179278(uint64_t a1, void **a2)
{
  v4 = sub_100035D04(&unk_100348F30, &unk_100272540);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  sub_10017B154(a1, &v11 - v5);
  v7 = *a2;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  isa = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v9 + 8))(v6, v8);
  }

  [v7 setNSUUID:isa];
}

uint64_t sub_1001793A4()
{
  if (qword_1003390F8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003078(v0, qword_100348E70);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Activate", v3, 2u);
  }

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100035D04(&qword_100345FE0, &qword_1002795C0);
  swift_allocObject();
  return Future.init(_:)();
}

double sub_1001794E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = *(Strong + OBJC_IVAR____TtC17proximitycontrold8IDSProxy_dispatchQueue);
    v23 = v10;
    v17 = Strong;

    v22 = v16;

    v18 = swift_allocObject();
    v18[2] = a3;
    v18[3] = sub_1000FBAA8;
    v18[4] = v14;
    aBlock[4] = sub_10017B13C;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100018AB8;
    aBlock[3] = &unk_10030D208;
    v19 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v24 = _swiftEmptyArrayStorage;
    sub_10007E5B8();
    sub_100035D04(&unk_100343710, &qword_100271800);
    sub_10000E244(&qword_10033D8D0, &unk_100343710, &qword_100271800, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v20 = v22;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v19);

    (*(v7 + 8))(v9, v6);
    (*(v11 + 8))(v13, v23);
  }

  else
  {
  }

  return result;
}

void sub_100179814(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = objc_allocWithZone(IDSService);
    v6 = String._bridgeToObjectiveC()();
    v7 = [v5 initWithService:v6];

    if (v7)
    {
      sub_10017A3A0();
      v8 = *&v4[OBJC_IVAR____TtC17proximitycontrold8IDSProxy_service];
      *&v4[OBJC_IVAR____TtC17proximitycontrold8IDSProxy_service] = v7;
      v9 = v7;

      [v9 addDelegate:v4 queue:*&v4[OBJC_IVAR____TtC17proximitycontrold8IDSProxy_dispatchQueue]];
      sub_100179AA4();
      if (qword_1003390F8 != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      sub_100003078(v10, qword_100348E70);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v11, v12, "Activated", v13, 2u);
      }

      (a2)(0, 0);
    }

    else
    {
      sub_10001618C();
      swift_allocError();
      *v15 = 0xD00000000000001BLL;
      *(v15 + 8) = 0x80000001002A3050;
      *(v15 + 16) = 0;
      a2();
    }
  }

  else
  {
    sub_10001618C();
    swift_allocError();
    *v14 = 0x666C6573206C696ELL;
    *(v14 + 8) = 0xE800000000000000;
    *(v14 + 16) = 9;
    a2();
  }
}

void sub_100179AA4()
{
  v1 = v0;
  v46 = type metadata accessor for UUID();
  isa = v46[-1].isa;
  __chkstk_darwin(v46);
  v43 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100035D04(&unk_100348F30, &unk_100272540);
  __chkstk_darwin(v4 - 8);
  v6 = &v40 - v5;
  v7 = *(v1 + OBJC_IVAR____TtC17proximitycontrold8IDSProxy_service);
  if (!v7)
  {
    if (qword_1003390F8 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100003078(v22, qword_100348E70);
    v46 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v46, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v46, v23, "### Unable to update IDS cache: no IDS Service?", v24, 2u);
    }

    v25 = v46;
    goto LABEL_26;
  }

  v42 = v7;
  v8 = [v42 devices];
  if (!v8)
  {
    if (qword_1003390F8 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100003078(v27, qword_100348E70);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "No IDS devices to update", v30, 2u);
    }

    v25 = v42;
LABEL_26:

    return;
  }

  v9 = v8;
  sub_10017B028();
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v47 = _swiftEmptyArrayStorage;
  if (v10 >> 62)
  {
    goto LABEL_31;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v41 = v1;
    v12 = 0;
    v44 = v10 & 0xFFFFFFFFFFFFFF8;
    v45 = v10 & 0xC000000000000001;
    v1 = (isa + 32);
    v13 = (isa + 56);
    while (1)
    {
      if (v45)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v12 >= *(v44 + 16))
        {
          goto LABEL_30;
        }

        v14 = *(v10 + 8 * v12 + 32);
      }

      v15 = v14;
      v16 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v17 = [v14 nsuuid];
      if (v17)
      {
        v18 = v10;
        v19 = v43;
        v20 = v17;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v21 = v46;
        (*v1)(v6, v19, v46);
        (*v13)(v6, 0, 1, v21);
        sub_100057640(v6);
        isa = &v47;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v10 = v18;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {

        (*v13)(v6, 1, 1, v46);
        sub_100057640(v6);
      }

      ++v12;
      if (v16 == i)
      {
        v26 = v47;
        v1 = v41;
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    ;
  }

  v26 = _swiftEmptyArrayStorage;
LABEL_33:

  if (qword_1003390F8 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  sub_100003078(v31, qword_100348E70);

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 134217984;
    if ((v26 & 0x8000000000000000) != 0 || (v26 & 0x4000000000000000) != 0)
    {
      v35 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v35 = *(v26 + 16);
    }

    *(v34 + 4) = v35;

    _os_log_impl(&_mh_execute_header, v32, v33, "IDS update cache (%ld)", v34, 0xCu);
  }

  else
  {
  }

  v36 = *(v1 + OBJC_IVAR____TtC17proximitycontrold8IDSProxy_devices) + qword_100346AF8;

  os_unfair_lock_lock(v36);
  v37 = *(v36 + 8);

  v39 = sub_1001C2B08(v38, v26);

  *(v36 + 8) = v39;

  os_unfair_lock_unlock(v36);

  sub_1001C33A0(v37, v39);
}