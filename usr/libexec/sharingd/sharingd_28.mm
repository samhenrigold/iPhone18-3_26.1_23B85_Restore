uint64_t sub_100464D08(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100005C00;

  return sub_10045BB34(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100464E34()
{
  swift_unknownObjectRelease();

  sub_10000C60C((v0 + 40));

  return _swift_deallocObject(v0, 104);
}

uint64_t sub_100464E84(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 80);
  v8 = *(v1 + 88);
  v9 = *(v1 + 96);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100005C00;

  return sub_1006DD6C4(a1, v4, v5, v6, v1 + 40, v7, v8, v9);
}

uint64_t sub_100464F60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AuthenticationSecurityRequest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100464FC4(uint64_t a1)
{
  v3 = *(type metadata accessor for AuthenticationSecurityRequest(0) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1[2];
  v8 = v1[3];
  v9 = *(v1 + v5);
  v10 = *(v1 + v6);
  v11 = v1[4];
  v12 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_100005C00;

  return sub_100459F74(a1, v7, v8, v11, v1 + v4, v9, v10, v12);
}

uint64_t sub_1004651B0(uint64_t a1)
{
  v4 = *(type metadata accessor for AuthenticationSecurityRequest(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100005C00;

  return sub_1004572E0(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1004652B0()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10046530C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 80);
  v8 = *(v1 + 88);
  v9 = *(v1 + 96);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100005C04;

  return sub_1006DD6C4(a1, v4, v5, v6, v1 + 40, v7, v8, v9);
}

void *sub_100465450(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v3 = a2 >> 62;
  v28 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      v4 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v3 != 2)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v4 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_62;
    }

    v4 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v7 = _swiftEmptyArrayStorage;
  if (v4)
  {
    v44 = _swiftEmptyArrayStorage;
    v30 = a2 >> 62;
    sub_10028FE90(0, v4 & ~(v4 >> 63), 0);
    v9 = v30;
    v8 = a1;
    if (v30)
    {
      if (v30 == 2)
      {
        v10 = *(a1 + 16);
      }

      else
      {
        v10 = a1;
      }
    }

    else
    {
      v10 = 0;
    }

    if (v4 < 0)
    {
      goto LABEL_61;
    }

    v11 = 0;
    v7 = v44;
    v29 = BYTE6(v2);
    v12 = 0x1000000000000000;
    while (1)
    {
      if (v9 == 2)
      {
        if (v10 < *(v8 + 16))
        {
          goto LABEL_53;
        }

        v13 = *(v8 + 24);
      }

      else if (v9 == 1)
      {
        v13 = a1 >> 32;
        if (v10 < a1)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v13 = v29;
        if (v10 < 0)
        {
          goto LABEL_54;
        }
      }

      if (v10 >= v13)
      {
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
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
      }

      if (v9 == 2)
      {
        break;
      }

      if (v9 == 1)
      {
        if (v10 < a1 || v10 >= a1 >> 32)
        {
          goto LABEL_57;
        }

        v14 = v7;
        v15 = __DataStorage._bytes.getter();
        if (!v15)
        {
          goto LABEL_63;
        }

        v16 = v15;
        v17 = __DataStorage._offset.getter();
        v18 = v10 - v17;
        if (__OFSUB__(v10, v17))
        {
          goto LABEL_59;
        }

LABEL_39:
        v21 = *(v16 + v18);
        v9 = v30;
        v8 = a1;
        v7 = v14;
        if (!v12)
        {
          goto LABEL_51;
        }

        goto LABEL_43;
      }

      if (v10 >= v29)
      {
        goto LABEL_56;
      }

      v32 = v8;
      v33 = BYTE2(v8);
      v34 = BYTE3(v8);
      v35 = v28;
      v36 = BYTE5(v8);
      v37 = BYTE6(v8);
      v38 = HIBYTE(v8);
      v39 = v2;
      v40 = BYTE2(v2);
      v41 = BYTE3(v2);
      v42 = BYTE4(v2);
      v43 = BYTE5(v2);
      v21 = *(&v32 + v10);
      if (!v12)
      {
        goto LABEL_51;
      }

LABEL_43:
      v22 = v2;
      v23 = v21 << (v11 & 0x38);
      if (v11 >= 0x40)
      {
        v24 = 0;
      }

      else
      {
        v24 = v23;
      }

      v44 = v7;
      v26 = v7[2];
      v25 = v7[3];
      if (v26 >= v25 >> 1)
      {
        sub_10028FE90((v25 > 1), v26 + 1, 1);
        v9 = v30;
        v8 = a1;
        v7 = v44;
      }

      v7[2] = v26 + 1;
      v7[v26 + 4] = v24;
      ++v10;
      --v12;
      v11 += 8;
      --v4;
      v2 = v22;
      if (!v4)
      {
        return v7;
      }
    }

    if (v10 < *(v8 + 16))
    {
      goto LABEL_55;
    }

    if (v10 >= *(v8 + 24))
    {
      goto LABEL_58;
    }

    v14 = v7;
    v19 = __DataStorage._bytes.getter();
    if (!v19)
    {
      goto LABEL_64;
    }

    v16 = v19;
    v20 = __DataStorage._offset.getter();
    v18 = v10 - v20;
    if (__OFSUB__(v10, v20))
    {
      goto LABEL_60;
    }

    goto LABEL_39;
  }

  return v7;
}

uint64_t sub_1004657B8(uint64_t result, unint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      result = 0;
      goto LABEL_19;
    }

    v8 = *(result + 16);
    v7 = *(result + 24);
    v9 = __OFSUB__(v7, v8);
    v6 = v7 - v8;
    if (!v9)
    {
LABEL_10:
      if ((v6 - 0x1000000000000000) >> 61 != 7)
      {
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

      if ((v6 & 7) != 0)
      {
        sub_10028088C(&qword_10097EEF8, &qword_100804AF8);
        sub_100467324();
        swift_allocError();
        swift_willThrow();
        return v3;
      }

      if (v5)
      {
        if (v5 == 2)
        {
          result = *(result + 16);
        }

        else
        {
          result = result;
        }
      }

      else
      {
        result = 0;
      }

LABEL_19:
      v44 = BYTE6(a2);
      v10 = _swiftEmptyArrayStorage;
      if (v5 > 1)
      {
        goto LABEL_24;
      }

LABEL_20:
      v11 = v44;
      if (v5)
      {
        v11 = v4 >> 32;
      }

      if (result >= v11)
      {
        goto LABEL_44;
      }

LABEL_26:
      v12 = result + a3;
      if (!__OFADD__(result, a3))
      {
        if (v5)
        {
          if (v5 == 1)
          {
            v14 = v4;
            v13 = v4 >> 32;
          }

          else
          {
            v14 = *(v4 + 16);
            v13 = *(v4 + 24);
          }
        }

        else
        {
          v14 = 0;
          v13 = v44;
        }

        while (v12 >= v14 && v13 >= v12)
        {
          if (v12 < result)
          {
            goto LABEL_76;
          }

          v15 = Data._Representation.subscript.getter();
          v17 = v16;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_10028EEAC(0, *(v10 + 2) + 1, 1, v10);
          }

          v19 = *(v10 + 2);
          v18 = *(v10 + 3);
          if (v19 >= v18 >> 1)
          {
            v10 = sub_10028EEAC((v18 > 1), v19 + 1, 1, v10);
          }

          *(v10 + 2) = v19 + 1;
          v20 = &v10[16 * v19];
          *(v20 + 4) = v15;
          *(v20 + 5) = v17;
          result = v12;
          if (v5 <= 1)
          {
            goto LABEL_20;
          }

LABEL_24:
          if (v5 == 2)
          {
            if (result < *(v4 + 24))
            {
              goto LABEL_26;
            }

LABEL_44:
            v21 = *(v10 + 2);
            if (!v21)
            {

              return _swiftEmptyArrayStorage;
            }

            result = sub_10028FE90(0, v21, 0);
            v22 = 0;
            v3 = _swiftEmptyArrayStorage;
            while (2)
            {
              if (v22 >= *(v10 + 2))
              {
                goto LABEL_79;
              }

              v23 = &v10[16 * v22 + 32];
              v24 = *v23;
              v25 = v23[1];
              v26 = v25 >> 62;
              if ((v25 >> 62) > 1)
              {
                if (v26 != 2)
                {
                  goto LABEL_73;
                }

                v29 = *(v24 + 16);
                v28 = *(v24 + 24);
                v27 = v28 - v29;
                if (__OFSUB__(v28, v29))
                {
                  goto LABEL_82;
                }
              }

              else
              {
                if (!v26)
                {
                  v27 = BYTE6(v25);
                  goto LABEL_57;
                }

                if (__OFSUB__(HIDWORD(v24), v24))
                {
                  goto LABEL_81;
                }

                v27 = HIDWORD(v24) - v24;
              }

              result = sub_100294008(v24, v25);
LABEL_57:
              if ((v27 - 0x1000000000000000) >> 61 != 7)
              {
                goto LABEL_78;
              }

              if ((v27 & 0x1FFFFFFFFFFFFFFFLL) != 8)
              {
LABEL_73:
                sub_10028088C(&qword_10097EEF8, &qword_100804AF8);
                sub_100467324();
                swift_allocError();
                swift_willThrow();

                sub_100026AC0(v24, v25);

                return v3;
              }

              v30 = sub_100465450(v24, v25);
              v31 = v30[1].u64[0];
              if (v31)
              {
                if (v31 < 4)
                {
                  v32 = 0;
                  v33 = 0;
                  goto LABEL_66;
                }

                v32 = v31 & 0x7FFFFFFFFFFFFFFCLL;
                v34 = v30 + 3;
                v35 = 0uLL;
                v36 = v31 & 0x7FFFFFFFFFFFFFFCLL;
                v37 = 0uLL;
                do
                {
                  v35 = vorrq_s8(v34[-1], v35);
                  v37 = vorrq_s8(*v34, v37);
                  v34 += 2;
                  v36 -= 4;
                }

                while (v36);
                v38 = vorrq_s8(v37, v35);
                v33 = vorr_s8(*v38.i8, *&vextq_s8(v38, v38, 8uLL));
                if (v31 != v32)
                {
LABEL_66:
                  v39 = v31 - v32;
                  v40 = &v30[2].i64[v32];
                  do
                  {
                    v41 = *v40++;
                    *&v33 |= v41;
                    --v39;
                  }

                  while (v39);
                }
              }

              else
              {
                v33 = 0;
              }

              result = sub_100026AC0(v24, v25);
              v43 = _swiftEmptyArrayStorage[2];
              v42 = _swiftEmptyArrayStorage[3];
              if (v43 >= v42 >> 1)
              {
                result = sub_10028FE90((v42 > 1), v43 + 1, 1);
              }

              ++v22;
              _swiftEmptyArrayStorage[2] = v43 + 1;
              _swiftEmptyArrayStorage[v43 + 4] = v33;
              if (v22 == v21)
              {

                return v3;
              }

              continue;
            }
          }

          if ((result & 0x8000000000000000) == 0)
          {
            goto LABEL_44;
          }

          v12 = result + a3;
          if (__OFADD__(result, a3))
          {
            goto LABEL_80;
          }

          v13 = 0;
          v14 = 0;
        }

        __break(1u);
LABEL_76:
        __break(1u);
      }

      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

    __break(1u);
  }

  else if (!v5)
  {
    v6 = BYTE6(a2);
    goto LABEL_10;
  }

  LODWORD(v6) = HIDWORD(result) - result;
  if (!__OFSUB__(HIDWORD(result), result))
  {
    v6 = v6;
    goto LABEL_10;
  }

LABEL_84:
  __break(1u);
  return result;
}

uint64_t sub_100465C70(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2 || *(a1 + 16) == *(a1 + 24))
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (!v2)
    {
      if ((a2 & 0xFF000000000000) != 0)
      {
        v3 = BYTE6(a2);
        goto LABEL_12;
      }

LABEL_10:
      v4 = 0;
      v5 = 1;
      return v4 | (v5 << 8);
    }

    if (a1 == a1 >> 32)
    {
      goto LABEL_10;
    }
  }

  if (v2 == 2)
  {
    v3 = *(a1 + 24);
  }

  else
  {
    v3 = a1 >> 32;
  }

LABEL_12:
  result = v3 - 1;
  if (!__OFSUB__(v3, 1))
  {
    v4 = Data._Representation.subscript.getter();
    v5 = 0;
    return v4 | (v5 << 8);
  }

  __break(1u);
  return result;
}

void sub_100465D18(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = sub_10028088C(&qword_100987400, &qword_10080DDD0) - 8;
  __chkstk_darwin(v41);
  v7 = v38 - v6;
  v8 = type metadata accessor for SHA256();
  v40 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for SHA256Digest();
  v42 = *(v39 - 8);
  __chkstk_darwin(v39);
  v12 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for String.Encoding();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String.Encoding.utf8.getter();
  v38[0] = a1;
  v38[1] = a2;
  v17 = String.data(using:allowLossyConversion:)();
  v19 = v18;
  (*(v14 + 8))(v16, v13);
  v46 = v17;
  v47 = v19;
  sub_10028088C(&qword_100974E10, &qword_1007FC4C0);
  Optional.unwrap(_:file:line:)();
  sub_10028BCC0(v46, v47);
  v21 = v43[0];
  v20 = v43[1];
  sub_1004672DC(&unk_100983280, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
  dispatch thunk of HashFunction.init()();
  sub_100294008(v21, v20);
  sub_100635718(v21, v20, v10);
  sub_100026AC0(v21, v20);
  dispatch thunk of HashFunction.finalize()();
  (*(v40 + 8))(v10, v8);
  v22 = *(v42 + 16);
  v23 = v39;
  v22(v7, v12);
  *&v7[*(v41 + 44)] = 3;
  v24 = sub_100635BB8(v7);
  sub_100467220(v7);
  if (*(v24 + 2) == 3)
  {
    LODWORD(v41) = sub_100467288(v24);

    v44 = v23;
    v45 = sub_1004672DC(&unk_10097F060, &type metadata accessor for SHA256Digest, &protocol conformance descriptor for SHA256Digest);
    v25 = sub_10002F604(v43);
    (v22)(v25, v12, v23);
    v26 = v23;
    sub_10002CDC0(v43, v44);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    v27 = v46;
    v28 = v47;
    sub_10000C60C(v43);
    v29 = sub_100466420(v27, v28);
    v31 = v30;
    v33 = v32;
    v35 = v34;
    (*(v42 + 8))(v12, v26);
    sub_100026AC0(v21, v20);

    *a3 = v38[0];
    *(a3 + 8) = v36;
    *(a3 + 16) = v29;
    *(a3 + 24) = v31;
    *(a3 + 32) = v33;
    *(a3 + 40) = v35;
    v37 = v41;
    *(a3 + 50) = BYTE2(v41);
    *(a3 + 48) = v37;
    *(a3 + 51) = 0;
  }

  else
  {
    __break(1u);
    swift_unexpectedError();
    __break(1u);
    swift_unexpectedError();
    __break(1u);
  }
}

uint64_t sub_100466258(uint64_t result, unint64_t a2)
{
  v4 = result;
  v5 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v5)
    {
      v6 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v5 != 2)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (v9)
  {
    __break(1u);
LABEL_8:
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
      __break(1u);
      goto LABEL_36;
    }

    v6 = v6;
  }

LABEL_10:
  if (v6 != 3)
  {
    goto LABEL_39;
  }

  sub_100294008(result, a2);
  result = sub_10053AFB8(2, v4, a2, &v22);
  v10 = v22;
  v11 = v23;
  v12 = v23 >> 62;
  if ((v23 >> 62) <= 1)
  {
    if (!v12)
    {
      v13 = BYTE6(v23);
      goto LABEL_20;
    }

LABEL_18:
    LODWORD(v13) = HIDWORD(v10) - v10;
    if (!__OFSUB__(HIDWORD(v10), v10))
    {
      v13 = v13;
      goto LABEL_20;
    }

LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v12 != 2)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v15 = v22[2];
  v14 = v22[3];
  v9 = __OFSUB__(v14, v15);
  v13 = v14 - v15;
  if (v9)
  {
    __break(1u);
    goto LABEL_18;
  }

LABEL_20:
  if (v13 != 2)
  {
    goto LABEL_40;
  }

  if (v12 != 2)
  {
    if (v12 == 1)
    {
      LODWORD(v16) = HIDWORD(v10) - v10;
      if (!__OFSUB__(HIDWORD(v10), v10))
      {
        v16 = v16;
        goto LABEL_29;
      }

LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    goto LABEL_28;
  }

  v18 = v10[2];
  v17 = v10[3];
  v9 = __OFSUB__(v17, v18);
  v16 = v17 - v18;
  if (v9)
  {
    __break(1u);
LABEL_28:
    v16 = BYTE6(v11);
  }

LABEL_29:
  if (v16 != 2)
  {
LABEL_41:
    __break(1u);
    return result;
  }

  v19 = sub_1002F15B0(v10, v11);
  if (v2)
  {
    sub_100026AC0(v4, a2);
    return sub_100026AC0(v10, v11);
  }

  v20 = v19;
  result = sub_100465C70(v4, a2);
  if ((result & 0x100) != 0)
  {
    goto LABEL_38;
  }

  v21 = result;
  sub_100026AC0(v10, v11);
  sub_100026AC0(v4, a2);
  return v20 | (v21 << 16);
}

uint64_t sub_100466420(uint64_t result, unint64_t a2)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      v4 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v3 != 2)
  {
    goto LABEL_23;
  }

  v6 = *(result + 16);
  v5 = *(result + 24);
  v7 = __OFSUB__(v5, v6);
  v4 = v5 - v6;
  if (v7)
  {
    __break(1u);
LABEL_8:
    LODWORD(v4) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v4 = v4;
  }

LABEL_10:
  if (v4 == 32)
  {
    v8 = result;
    v10 = sub_1004657B8(result, a2, 8);
    result = sub_100026AC0(v8, a2);
    if (v2)
    {
      return v8;
    }

    v11 = *(v10 + 16);
    if (v11)
    {
      if (v11 != 1)
      {
        if (v11 >= 3)
        {
          if (v11 != 3)
          {
            v8 = *(v10 + 32);

            return v8;
          }

          goto LABEL_21;
        }

LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t LongHash.init<A>(data:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 8);
  result = dispatch thunk of Collection.count.getter();
  if (result != 32)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = sub_10046666C();
  v9 = sub_1004666C0();
  result = sub_1002EA0E8(a1, 8, &type metadata for UInt8, &type metadata for UInt64, a2, v8, v9, v6);
  if (v3)
  {
    (*(*(a2 - 8) + 8))(a1, a2);
    return v6;
  }

  v10 = *(result + 16);
  if (!v10)
  {
    goto LABEL_11;
  }

  if (v10 == 1)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v10 < 3)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v10 != 3)
  {
    v6 = *(result + 32);

    (*(*(a2 - 8) + 8))(a1, a2);
    return v6;
  }

LABEL_14:
  __break(1u);
  return result;
}

unint64_t sub_10046666C()
{
  result = qword_10097EEC8;
  if (!qword_10097EEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097EEC8);
  }

  return result;
}

unint64_t sub_1004666C0()
{
  result = qword_10097EED0;
  if (!qword_10097EED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097EED0);
  }

  return result;
}

Swift::Int ShortHash.hashValue.getter(Swift::UInt16 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

Swift::Int sub_100466794()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100466808(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void MediumHash.hash(into:)(int a1, unsigned int a2)
{
  v2 = HIWORD(a2);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v2);
}

Swift::Int MediumHash.hashValue.getter(unsigned int a1)
{
  v1 = a1;
  v2 = HIWORD(a1);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

Swift::Int sub_100466908()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_100466968()
{
  v1 = *(v0 + 2);
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
}

Swift::Int sub_1004669A8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 2);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

void LongHash.hash(into:)(int a1, Swift::UInt64 a2, Swift::UInt64 a3, Swift::UInt64 a4, Swift::UInt64 a5)
{
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(a3);
  Hasher._combine(_:)(a4);
  Hasher._combine(_:)(a5);
}

Swift::Int LongHash.hashValue.getter(Swift::UInt64 a1, Swift::UInt64 a2, Swift::UInt64 a3, Swift::UInt64 a4)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(a3);
  Hasher._combine(_:)(a4);
  return Hasher._finalize()();
}

Swift::Int sub_100466B10()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

void sub_100466B90()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
}

Swift::Int sub_100466BE8(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  return Hasher._finalize()();
}

uint64_t static SDHashStoreContact.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 == a5 && a2 == a6 || (v12 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v12 & 1) != 0))
  {
    if (a3 == a7 && a4 == a8)
    {
      return 1;
    }

    else
    {

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

uint64_t SDHashStoreContact.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int SDHashStoreContact.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

BOOL _s16DaemoniOSLibrary8LongHashV2eeoiySbAC_ACtFZ_0(Swift::UInt64 a1, Swift::UInt64 a2, Swift::UInt64 a3, Swift::UInt64 a4, Swift::UInt64 a5, Swift::UInt64 a6, Swift::UInt64 a7, Swift::UInt64 a8)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(a3);
  Hasher._combine(_:)(a4);
  v16 = Hasher._finalize()();
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a5);
  Hasher._combine(_:)(a6);
  Hasher._combine(_:)(a7);
  Hasher._combine(_:)(a8);
  return v16 == Hasher._finalize()();
}

unint64_t sub_100466EE4()
{
  result = qword_10097EED8;
  if (!qword_10097EED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097EED8);
  }

  return result;
}

unint64_t sub_100466F3C()
{
  result = qword_10097EEE0;
  if (!qword_10097EEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097EEE0);
  }

  return result;
}

unint64_t sub_100466F94()
{
  result = qword_10097EEE8;
  if (!qword_10097EEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097EEE8);
  }

  return result;
}

unint64_t sub_100466FEC()
{
  result = qword_10097EEF0;
  if (!qword_10097EEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097EEF0);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for MediumHash(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for MediumHash(unsigned __int16 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 0x1FFFFFF) >> 24)
  {
    v2 = *(a1 + 3);
    if (!*(a1 + 3))
    {
      return 0;
    }
  }

  else
  {
    v2 = *(a1 + 3);
    if (!*(a1 + 3))
    {
      return 0;
    }
  }

  return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 0xFFFFFF;
}

uint64_t storeEnumTagSinglePayload for MediumHash(uint64_t result, int a2, int a3)
{
  if ((a3 + 0x1FFFFFF) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (!a3)
  {
    v3 = 0;
  }

  if (a2)
  {
    *result = a2 - 1;
    *(result + 2) = (a2 - 1) >> 16;
    if (v3)
    {
      v4 = ((a2 - 1) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else if (v3)
  {
    if (v3 == 2)
    {
      *(result + 3) = 0;
    }

    else
    {
      *(result + 3) = 0;
    }
  }

  return result;
}

__n128 sub_100467150(uint64_t a1, uint64_t a2)
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

uint64_t sub_100467174(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 68))
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

uint64_t sub_1004671BC(uint64_t result, int a2, int a3)
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
      *(result + 68) = 1;
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

    *(result + 68) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100467220(uint64_t a1)
{
  v2 = sub_10028088C(&qword_100987400, &qword_10080DDD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_100467288(void *result)
{
  v2 = result[2];
  if (v2 == 3)
  {
    v3 = result;
    result = sub_1002F1A08((result + 4), 0, 5uLL, v2);
    if (!v1)
    {
      return (result | (*(v3 + 34) << 16));
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004672DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100467324()
{
  result = qword_10097EF00;
  if (!qword_10097EF00)
  {
    sub_100280938(&qword_10097EEF8, &qword_100804AF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097EF00);
  }

  return result;
}

BOOL sub_10046738C()
{
  v1 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  __chkstk_darwin(v1 - 8);
  v3 = &v16 - v2;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v16 - v9;
  if (*(*(v0 + 40) + 16) < 3uLL)
  {
    return 0;
  }

  sub_10044BB70(v11, v3);

  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_100016C08(v3);
    return 0;
  }

  (*(v5 + 32))(v10, v3, v4);
  Date.init()();
  Date.timeIntervalSince(_:)();
  v14 = v13;
  v15 = *(v5 + 8);
  v15(v8, v4);
  v15(v10, v4);
  return v14 <= 30.0;
}

id sub_100467580()
{
  v1 = v0;
  v2 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  __chkstk_darwin(v2 - 8);
  v4 = (&v44 - v3);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v54 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v45 = &v44 - v10;
  v11 = __chkstk_darwin(v9);
  v50 = &v44 - v12;
  v13 = __chkstk_darwin(v11);
  v55 = &v44 - v14;
  __chkstk_darwin(v13);
  v16 = &v44 - v15;
  if (*(*(v1 + 40) + 16) >= 3uLL)
  {

    sub_10044BB70(v17, v4);

    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      sub_100016C08(v4);
    }

    else
    {
      (*(v6 + 32))(v16, v4, v5);
      v18 = v55;
      Date.init()();
      Date.timeIntervalSince(_:)();
      v20 = v19;
      v4 = *(v6 + 8);
      v4(v18, v5);
      result = (v4)(v16, v5);
      if (v20 <= 30.0)
      {
        return result;
      }
    }
  }

  v46 = v1;
  v22 = *(v1 + 40);
  v23 = *(v22 + 16);

  v53 = v23;
  v56 = v6;
  if (v23)
  {
    v24 = 0;
    v51 = (v6 + 32);
    v52 = v6 + 16;
    v25 = _swiftEmptyArrayStorage;
    v48 = v22;
    v49 = v5;
    v26 = v50;
    v47 = v6 + 8;
    while (v24 < *(v22 + 16))
    {
      v27 = v56;
      v23 = (*(v27 + 80) + 32) & ~*(v27 + 80);
      v1 = *(v56 + 72);
      (*(v56 + 16))(v26, v22 + v23 + v1 * v24, v5);
      v4 = v55;
      Date.init()();
      Date.timeIntervalSince(_:)();
      v29 = v28;
      v30 = *(v27 + 8);
      v30(v4, v5);
      if (v29 > 10.0)
      {
        v30(v26, v5);
      }

      else
      {
        v31 = *v51;
        (*v51)(v54, v26, v5);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v57 = v25;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v4 = &v57;
          sub_10028FD60(0, v25[2] + 1, 1);
          v25 = v57;
        }

        v34 = v25[2];
        v33 = v25[3];
        if (v34 >= v33 >> 1)
        {
          v4 = &v57;
          sub_10028FD60((v33 > 1), v34 + 1, 1);
          v25 = v57;
        }

        v25[2] = v34 + 1;
        v5 = v49;
        v31(v25 + v23 + v34 * v1, v54, v49);
        v26 = v50;
        v22 = v48;
      }

      if (v53 == ++v24)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
    v25 = _swiftEmptyArrayStorage;
LABEL_17:

    v23 = v46;
    *(v46 + 40) = v25;

    v1 = v45;
    Date.init()();
    v4 = *(v23 + 40);
    v35 = swift_isUniquelyReferenced_nonNull_native();
    *(v23 + 40) = v4;
    if (v35)
    {
      goto LABEL_18;
    }
  }

  v4 = sub_10028EAA4(0, *(v4 + 2) + 1, 1, v4);
  *(v23 + 40) = v4;
LABEL_18:
  v36 = v56;
  v38 = *(v4 + 2);
  v37 = *(v4 + 3);
  if (v38 >= v37 >> 1)
  {
    v4 = sub_10028EAA4((v37 > 1), v38 + 1, 1, v4);
  }

  *(v4 + 2) = v38 + 1;
  (*(v36 + 32))(v4 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v38, v1, v5);
  v39 = v46;
  *(v46 + 40) = v4;
  result = airdrop_log();
  if (result)
  {
    v40 = result;
    sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1007F5670;
    v42 = *(v39 + 40);
    *(v41 + 56) = sub_10028088C(&qword_10097EFF0, &qword_100804B38);
    *(v41 + 64) = sub_100467B80();
    *(v41 + 32) = v42;

    v43 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Updated tracked declines %@", 27, 2, &_mh_execute_header, v40, v43, v41);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100467B24()
{

  return swift_deallocClassInstance();
}

unint64_t sub_100467B80()
{
  result = qword_10097EFF8;
  if (!qword_10097EFF8)
  {
    sub_100280938(&qword_10097EFF0, &qword_100804B38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097EFF8);
  }

  return result;
}

void *sub_100467BE4(unint64_t a1, unint64_t a2)
{
  v4 = a2 >> 62;
  v30 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    return _swiftEmptyArrayStorage;
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_49;
    }

    v5 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v8 = _swiftEmptyArrayStorage;
  if (v5)
  {
    v45 = _swiftEmptyArrayStorage;
    sub_10028FBDC(0, v5 & ~(v5 >> 63), 0);
    if (v4)
    {
      if (v4 == 2)
      {
        v9 = *(a1 + 16);
      }

      else
      {
        v9 = a1;
      }
    }

    else
    {
      v9 = 0;
    }

    v32 = v9;
    if (v5 < 0)
    {
      goto LABEL_48;
    }

    v10 = 0;
    v8 = v45;
    v29 = &v33 + v9;
    v31 = v4;
    do
    {
      if (v10 >= v5)
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
      }

      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_41;
      }

      v12 = v32 + v10;
      if (v4 == 2)
      {
        if (v12 < *(a1 + 16))
        {
          goto LABEL_43;
        }

        if (v12 >= *(a1 + 24))
        {
          goto LABEL_45;
        }

        v17 = __DataStorage._bytes.getter();
        if (!v17)
        {
          goto LABEL_51;
        }

        v14 = v17;
        v18 = __DataStorage._offset.getter();
        v16 = v12 - v18;
        if (__OFSUB__(v12, v18))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v4 != 1)
        {
          if (v12 >= BYTE6(a2))
          {
            goto LABEL_42;
          }

          v33 = a1;
          v34 = BYTE2(a1);
          v35 = BYTE3(a1);
          v36 = v30;
          v37 = BYTE5(a1);
          v38 = BYTE6(a1);
          v39 = HIBYTE(a1);
          v40 = a2;
          v41 = BYTE2(a2);
          v42 = BYTE3(a2);
          v43 = BYTE4(a2);
          v44 = BYTE5(a2);
          v19 = v29[v10];
          goto LABEL_36;
        }

        if (v12 < a1 || v12 >= a1 >> 32)
        {
          goto LABEL_44;
        }

        v13 = __DataStorage._bytes.getter();
        if (!v13)
        {
          goto LABEL_50;
        }

        v14 = v13;
        v15 = __DataStorage._offset.getter();
        v16 = v12 - v15;
        if (__OFSUB__(v12, v15))
        {
          goto LABEL_46;
        }
      }

      v19 = *(v14 + v16);
LABEL_36:
      sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1007F5670;
      *(v20 + 56) = &type metadata for UInt8;
      *(v20 + 64) = &protocol witness table for UInt8;
      *(v20 + 32) = v19;
      v21 = String.init(format:_:)();
      v45 = v8;
      v24 = v8[2];
      v23 = v8[3];
      if (v24 >= v23 >> 1)
      {
        v28 = v21;
        v26 = v22;
        sub_10028FBDC((v23 > 1), v24 + 1, 1);
        v22 = v26;
        v21 = v28;
        v8 = v45;
      }

      v8[2] = v24 + 1;
      v25 = &v8[2 * v24];
      v25[4] = v21;
      v25[5] = v22;
      ++v10;
      LODWORD(v4) = v31;
    }

    while (v11 != v5);
  }

  return v8;
}

void *sub_100467F54(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v18 = _swiftEmptyArrayStorage;
    sub_10028FB7C(0, v6, 0);
    v7 = v18;
    v10 = *(v3 + 16);
    v8 = v3 + 16;
    v9 = v10;
    v11 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v12 = *(v8 + 56);
    do
    {
      v9(v5, v11, v2);
      swift_dynamicCast();
      v18 = v7;
      v14 = v7[2];
      v13 = v7[3];
      if (v14 >= v13 >> 1)
      {
        sub_10028FB7C((v13 > 1), v14 + 1, 1);
        v7 = v18;
      }

      v7[2] = v14 + 1;
      sub_1000106E0(&v17, &v7[4 * v14 + 4]);
      v11 += v12;
      --v6;
    }

    while (v6);
  }

  return v7;
}

void *sub_1004680EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v9 = _swiftEmptyArrayStorage;
    sub_10028FB7C(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {

      sub_10028088C(&unk_100974E50, &qword_1007FD600);
      swift_dynamicCast();
      v9 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_10028FB7C((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      v2[2] = v6 + 1;
      sub_1000106E0(&v8, &v2[4 * v6 + 4]);
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

char *sub_10046823C(unint64_t a1, unint64_t *a2, void *a3)
{
  if (a1 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = _swiftEmptyArrayStorage;
  if (!v6)
  {
    return v7;
  }

  v17 = _swiftEmptyArrayStorage;
  result = sub_10028FB7C(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v6; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        sub_1000276B4(0, a2, a3);
        swift_dynamicCast();
        v17 = v7;
        v11 = v7[2];
        v10 = v7[3];
        if (v11 >= v10 >> 1)
        {
          sub_10028FB7C((v10 > 1), v11 + 1, 1);
          v7 = v17;
        }

        v7[2] = v11 + 1;
        sub_1000106E0(v16, &v7[4 * v11 + 4]);
      }
    }

    else
    {
      v12 = (a1 + 32);
      sub_1000276B4(0, a2, a3);
      do
      {
        v13 = *v12;
        swift_dynamicCast();
        v17 = v7;
        v15 = v7[2];
        v14 = v7[3];
        if (v15 >= v14 >> 1)
        {
          sub_10028FB7C((v14 > 1), v15 + 1, 1);
          v7 = v17;
        }

        v7[2] = v15 + 1;
        sub_1000106E0(v16, &v7[4 * v15 + 4]);
        ++v12;
        --v6;
      }

      while (v6);
    }

    return v7;
  }

  __break(1u);
  return result;
}

void *sub_100468428(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    v6 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = a1 + 32;
    do
    {
      sub_10000C5B0(v4, &v5);
      sub_10028088C(&unk_10097A940, &unk_100807F40);
      swift_dynamicCast();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v4 += 32;
      --v2;
    }

    while (v2);
    return v6;
  }

  return result;
}

char *sub_10046851C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = _swiftEmptyArrayStorage;
  result = sub_10028FB7C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        type metadata accessor for SecCertificate(0);
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_10028FB7C((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_1000106E0(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      type metadata accessor for SecCertificate(0);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_10028FB7C((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_1000106E0(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void *sub_1004686E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v10 = _swiftEmptyArrayStorage;
    sub_10028FCE0(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {
      sub_1002A9938(v4, v8);
      sub_10028088C(&qword_100974FB0, &unk_10080B000);
      sub_10028088C(&unk_10097F090, &unk_100804740);
      swift_dynamicCast();
      v10 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_10028FCE0((v5 > 1), v6 + 1, 1);
        v2 = v10;
      }

      v2[2] = v6 + 1;
      sub_1000121F8(&v9, &v2[5 * v6 + 4]);
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_100468820(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v10 = _swiftEmptyArrayStorage;
    sub_10028FCE0(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {
      sub_1002A9938(v4, v8);
      sub_10028088C(&qword_100974FC0, &qword_1007F8398);
      sub_10028088C(&unk_10097F090, &unk_100804740);
      swift_dynamicCast();
      v10 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_10028FCE0((v5 > 1), v6 + 1, 1);
        v2 = v10;
      }

      v2[2] = v6 + 1;
      sub_1000121F8(&v9, &v2[5 * v6 + 4]);
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_100468958(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v10 = _swiftEmptyArrayStorage;
    sub_10028FCE0(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {
      sub_1002A9938(v4, v8);
      sub_10028088C(&qword_100974F80, &qword_1007F8370);
      sub_10028088C(&unk_10097F090, &unk_100804740);
      swift_dynamicCast();
      v10 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_10028FCE0((v5 > 1), v6 + 1, 1);
        v2 = v10;
      }

      v2[2] = v6 + 1;
      sub_1000121F8(&v9, &v2[5 * v6 + 4]);
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_100468A90(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v10 = _swiftEmptyArrayStorage;
    sub_10028FCE0(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {
      sub_1002A9938(v4, v8);
      sub_10028088C(&qword_100974F90, qword_10080B010);
      sub_10028088C(&unk_10097F090, &unk_100804740);
      swift_dynamicCast();
      v10 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_10028FCE0((v5 > 1), v6 + 1, 1);
        v2 = v10;
      }

      v2[2] = v6 + 1;
      sub_1000121F8(&v9, &v2[5 * v6 + 4]);
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_100468BC8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v17 = _swiftEmptyArrayStorage;
  result = sub_10028FD20(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v17 = v3;
        v8 = v3[2];
        v7 = v3[3];
        if (v8 >= v7 >> 1)
        {
          sub_10028FD20((v7 > 1), v8 + 1, 1);
          v3 = v17;
        }

        ++v5;
        v15 = sub_1000276B4(0, &qword_10097F0C0, IDSDevice_ptr);
        v16 = &off_1008EA2C0;
        *&v14 = v6;
        v3[2] = v8 + 1;
        sub_1000121F8(&v14, &v3[5 * v8 + 4]);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v17 = v3;
        v12 = v3[2];
        v11 = v3[3];
        v13 = v10;
        if (v12 >= v11 >> 1)
        {
          sub_10028FD20((v11 > 1), v12 + 1, 1);
          v3 = v17;
        }

        v15 = sub_1000276B4(0, &qword_10097F0C0, IDSDevice_ptr);
        v16 = &off_1008EA2C0;
        *&v14 = v13;
        v3[2] = v12 + 1;
        sub_1000121F8(&v14, &v3[5 * v12 + 4]);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void *sub_100468DA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v10 = _swiftEmptyArrayStorage;
    sub_10028FFF4(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {
      sub_1002A9938(v4, v8);
      sub_10028088C(&qword_100974F80, &qword_1007F8370);
      sub_10028088C(&qword_100974FA0, &unk_100804C70);
      swift_dynamicCast();
      v10 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_10028FFF4((v5 > 1), v6 + 1, 1);
        v2 = v10;
      }

      v2[2] = v6 + 1;
      sub_1000121F8(&v9, &v2[5 * v6 + 4]);
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_100468EE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v10 = _swiftEmptyArrayStorage;
    sub_10028FFF4(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {
      sub_1002A9938(v4, v8);
      sub_10028088C(&qword_100974F90, qword_10080B010);
      sub_10028088C(&qword_100974FA0, &unk_100804C70);
      swift_dynamicCast();
      v10 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_10028FFF4((v5 > 1), v6 + 1, 1);
        v2 = v10;
      }

      v2[2] = v6 + 1;
      sub_1000121F8(&v9, &v2[5 * v6 + 4]);
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_10046902C(uint64_t a1, unint64_t *a2, void *a3)
{
  v4 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v4)
  {
    v10 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v8 = a1 + 32;
    do
    {
      sub_10000C5B0(v8, &v9);
      sub_1000276B4(0, a2, a3);
      swift_dynamicCast();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v8 += 32;
      --v4;
    }

    while (v4);
    return v10;
  }

  return result;
}

void *sub_10046911C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v10 = _swiftEmptyArrayStorage;
    sub_100290078(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {
      sub_1002A9938(v4, v8);
      sub_10028088C(&qword_100974FC0, &qword_1007F8398);
      sub_10028088C(&qword_10097C6B0, &unk_100804750);
      swift_dynamicCast();
      v10 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_100290078((v5 > 1), v6 + 1, 1);
        v2 = v10;
      }

      v2[2] = v6 + 1;
      sub_1000121F8(&v9, &v2[5 * v6 + 4]);
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_100469254(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v10 = _swiftEmptyArrayStorage;
    sub_100290078(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {
      sub_1002A9938(v4, v8);
      sub_10028088C(&qword_100974FB0, &unk_10080B000);
      sub_10028088C(&qword_10097C6B0, &unk_100804750);
      swift_dynamicCast();
      v10 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_100290078((v5 > 1), v6 + 1, 1);
        v2 = v10;
      }

      v2[2] = v6 + 1;
      sub_1000121F8(&v9, &v2[5 * v6 + 4]);
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

__SecIdentity *sub_10046938C()
{
  result = [v0 copyMyAppleIDSecIdentity];
  if (result)
  {
    v2 = result;
    v3 = [v0 copyMyAppleIDIntermediateCertificate];
    if (v3)
    {
      v4 = v3;
      sub_10028088C(&qword_100974F70, &unk_100804260);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_1007FD580;
      *(v5 + 32) = v4;
      type metadata accessor for SecCertificate(0);
      v6 = v4;
      isa = Array._bridgeToObjectiveC()().super.isa;

      v8 = sec_identity_create_with_certificates(v2, isa);

      if (v8)
      {
        v9 = sec_identity_copy_ref(v8);
        if (v9)
        {
          v10 = v9;
          swift_unknownObjectRelease();
          return v10;
        }

        swift_unknownObjectRelease();
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

sec_identity_t sub_10046949C()
{
  v1 = [v0 copyMyAppleIDSecIdentity];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 copyMyAppleIDIntermediateCertificate];
    if (v3)
    {
      v4 = v3;
      sub_10028088C(&qword_100974F70, &unk_100804260);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_1007FD580;
      *(v5 + 32) = v4;
      type metadata accessor for SecCertificate(0);
      v6 = v4;
      isa = Array._bridgeToObjectiveC()().super.isa;

      v8 = sec_identity_create_with_certificates(v2, isa);

      result = v8;
      if (v8)
      {
        return result;
      }
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_100469580(uint64_t a1, uint64_t a2, __SecTrust *a3)
{
  v3 = sub_100091420(a3, a2);
  if (!v3)
  {
    __break(1u);
  }

  v4 = v3;
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v6 = 0;
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  return 0;
}

void sub_100469844()
{
  v50 = type metadata accessor for UUID();
  v1 = *(v50 - 8);
  __chkstk_darwin(v50);
  v3 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SHA256();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SHA256Digest();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [v0 nextAirDropID];
  if (v12)
  {
    v13 = v12;
    if (qword_1009738B8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000C4AC(v14, qword_10097F000);
    v15 = v13;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      *(v18 + 4) = v15;
      *v19 = v13;
      v20 = v15;
      _os_log_impl(&_mh_execute_header, v16, v17, "Returning cached AirDropID %@", v18, 0xCu);
      sub_100005508(v19, &qword_100975400, &qword_1007F65D0);
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    return;
  }

  v21 = v1;
  v48 = v9;
  v22 = [v0 bluetoothAddress];
  if (!v22)
  {
    goto LABEL_21;
  }

  v47 = v0;
  v23 = v22;
  v49 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  v26 = v25 >> 62;
  if ((v25 >> 62) > 1)
  {
    if (v26 != 2)
    {
      goto LABEL_20;
    }

    v27 = v5;
    if (*(v49 + 16) == *(v49 + 24))
    {
      goto LABEL_20;
    }
  }

  else
  {
    v27 = v5;
    if (v26)
    {
      if (v49 == v49 >> 32)
      {
LABEL_20:
        sub_100026AC0(v49, v25);
LABEL_21:
        if (qword_1009738B8 != -1)
        {
          swift_once();
        }

        v42 = type metadata accessor for Logger();
        sub_10000C4AC(v42, qword_10097F000);
        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          *v45 = 0;
          _os_log_impl(&_mh_execute_header, v43, v44, "Bluetooth Address missing - using random UUID", v45, 2u);
        }

        UUID.init()();
        UUID.uuidString.getter();
        v25 = v46;
        (*(v21 + 8))(v3, v50);
        object = String.lowercased()()._object;

        v32 = String.index(_:offsetBy:)();
        if (String.index(_:offsetBy:)() >> 14 >= v32 >> 14)
        {
          String.subscript.getter();

          static String._fromSubstring(_:)();

          return;
        }

        __break(1u);
        goto LABEL_28;
      }
    }

    else if ((v25 & 0xFF000000000000) == 0)
    {
      goto LABEL_20;
    }
  }

  sub_1004784F0(&unk_100983280, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
  dispatch thunk of HashFunction.init()();
  v28 = v49;
  sub_100294008(v49, v25);
  sub_100635718(v28, v25, v7);
  sub_100026AC0(v28, v25);
  dispatch thunk of HashFunction.finalize()();
  (*(v27 + 8))(v7, v4);
  v54 = v8;
  v55 = sub_1004784F0(&unk_10097F060, &type metadata accessor for SHA256Digest, &protocol conformance descriptor for SHA256Digest);
  v29 = sub_10002F604(v53);
  v30 = v48;
  (*(v48 + 16))(v29, v11, v8);
  sub_10002CDC0(v53, v54);
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  (*(v30 + 8))(v11, v8);
  object = v51;
  v8 = v52;
  sub_10000C60C(v53);
  v53[0] = sub_100467BE4(object, v8);
  sub_10028088C(&unk_100976C20, &unk_1007F9D80);
  sub_1003117AC();
  BidirectionalCollection<>.joined(separator:)();

  String.index(_:offsetBy:)();
  String.subscript.getter();
  v32 = static String._fromSubstring(_:)();
  v11 = v33;
  if (qword_1009738B8 != -1)
  {
LABEL_28:
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_10000C4AC(v34, qword_10097F000);

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v50 = v8;
    v38 = v37;
    v39 = swift_slowAlloc();
    v53[0] = v39;
    *v38 = 136315138;
    *(v38 + 4) = sub_10000C4E4(v32, v11, v53);
    _os_log_impl(&_mh_execute_header, v35, v36, "Writing AirDropID %s to preferences", v38, 0xCu);
    sub_10000C60C(v39);

    v8 = v50;
  }

  if (@"AirDropID")
  {

    v40 = String._bridgeToObjectiveC()();
    CFPreferencesSetValue(@"AirDropID", v40, kCFPreferencesCurrentApplication, kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
    swift_unknownObjectRelease();
    v41 = String._bridgeToObjectiveC()();
    [v47 setNextAirDropID:v41];

    sub_100026AC0(object, v8);
    sub_100026AC0(v49, v25);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10046A140()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_100340994;
  }

  else
  {
    v2 = sub_10046A254;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10046A270()
{
  v16 = v0;
  v1 = *(v0 + 48);
  (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
  v2 = type metadata accessor for Notification();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) != 1)
  {
    sub_100005508(*(v0 + 48), &qword_1009799D0, &unk_1007FCB10);
  }

  v3 = *(v0 + 40);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 40);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315138;
    *(v0 + 24) = v6;
    sub_1000276B4(0, &unk_10097F050, off_1008C8D68);
    v9 = v6;
    v10 = String.init<A>(describing:)();
    v12 = sub_10000C4E4(v10, v11, &v15);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s: Finished waiting for first unlock", v7, 0xCu);
    sub_10000C60C(v8);
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_10046A484(uint64_t *a1)
{
  v3 = [v1 discoverableMode];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    if (*a1)
    {
      goto LABEL_3;
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = 0;
  v7 = 0;
  if (!*a1)
  {
    goto LABEL_8;
  }

LABEL_3:
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v7)
  {
LABEL_9:
    v10 = 0;
    goto LABEL_12;
  }

  if (v5 == v8 && v7 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

LABEL_12:

  return v10 & 1;
}

void sub_10046A56C(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v8 = [v4 idSelfIdentity];
  v9 = v8;
  if (!a2 || !v8)
  {
    goto LABEL_9;
  }

  v10 = [v9 idsDeviceID];
  if (!v10)
  {
    goto LABEL_8;
  }

  v11 = v10;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15 = [v9 deviceIRKData];
  if (!v15)
  {

LABEL_8:

    goto LABEL_9;
  }

  v16 = v15;
  v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v20 = [v9 edPKData];
  if (v20)
  {
    v21 = v20;
    v31 = v9;
    v22 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v25 = [v31 featureFlags];
    v26 = 0xF000000000000000;
    goto LABEL_14;
  }

  sub_100026AC0(v17, v19);
LABEL_9:
  if (qword_1009738B8 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_10000C4AC(v27, qword_10097F000);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "Missing data for identity update to generate identity share request", v30, 2u);
  }

  a1 = 0;
  a2 = 0;
  v26 = 0;
  v17 = 0;
  v19 = 0;
  v22 = 0;
  v24 = 0;
  v12 = 0;
  v14 = 0;
  v25 = 0;
LABEL_14:
  *a3 = a1;
  a3[1] = a2;
  a3[2] = 0;
  a3[3] = v26;
  a3[4] = v17;
  a3[5] = v19;
  a3[6] = v22;
  a3[7] = v24;
  a3[8] = v12;
  a3[9] = v14;
  a3[10] = v25;
}

uint64_t sub_10046A7CC()
{
  v1 = v0;
  v2 = [v0 myAppleIDCommonName];
  if (v2)
  {
    v3 = v2;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    v7 = String._bridgeToObjectiveC()();
    v8 = [v1 verifiedIdentityForAppleID:v7];

    if (v8)
    {
      v9 = [v8 accountIdentifier];

      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      v13 = HIBYTE(v6) & 0xF;
      if ((v6 & 0x2000000000000000) == 0)
      {
        v13 = v4 & 0xFFFFFFFFFFFFLL;
      }

      if (!v13)
      {
        goto LABEL_13;
      }

      v14 = HIBYTE(v12) & 0xF;
      if ((v12 & 0x2000000000000000) == 0)
      {
        v14 = v10 & 0xFFFFFFFFFFFFLL;
      }

      if (v14)
      {
        if (v10 == v4 && v12 == v6)
        {
          v15 = 1;
        }

        else
        {
          v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }
      }

      else
      {
LABEL_13:
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

void sub_10046A92C(uint64_t a1, uint64_t a2, __SecTrust *a3)
{
  v4 = v3;
  sub_10046BDE0(a3, v22);
  v5 = v22[0];

  if ((v5 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1000276B4(0, &qword_100975088, CNContact_ptr);
    sub_1002D7FB0();
    Set.Iterator.init(_cocoa:)();
    v5 = v22[0];
    v6 = v22[1];
    v7 = v22[2];
    v8 = v22[3];
    v9 = v22[4];
  }

  else
  {
    v10 = -1 << *(v5 + 32);
    v6 = v5 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v5 + 56);

    v8 = 0;
  }

  v19 = v7;
  v13 = (v7 + 64) >> 6;
  while (v5 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (sub_1000276B4(0, &qword_100975088, CNContact_ptr), swift_dynamicCast(), (v14 = v21) == 0))
    {
LABEL_18:
      sub_100027D64(v5);

      sub_10046C824(a3, v18);
      return;
    }

LABEL_9:
    v15 = [v4 contactIsBlocked:{v14, v19}];

    if (v15)
    {
      goto LABEL_18;
    }
  }

  v16 = v8;
  v17 = v9;
  if (v9)
  {
LABEL_8:
    v9 = (v17 - 1) & v17;
    v14 = *(*(v5 + 48) + ((v8 << 9) | (8 * __clz(__rbit64(v17)))));
    if (!v14)
    {
      goto LABEL_18;
    }

    goto LABEL_9;
  }

  while (1)
  {
    v8 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v8 >= v13)
    {
      goto LABEL_18;
    }

    v17 = *(v6 + 8 * v8);
    ++v16;
    if (v17)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

id sub_10046AB74()
{
  result = [v0 copyMyAppleIDSecIdentity];
  if (result)
  {

    result = [v0 myAppleIDValidationRecord];
    if (result)
    {
      v2 = result;
      v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      AnyHashable.init<A>(_:)();
      if (*(v3 + 16) && (v4 = sub_100570754(v6), (v5 & 1) != 0))
      {
        sub_10000C5B0(*(v3 + 56) + 32 * v4, v7);
        sub_100285E74(v6);

        if (swift_dynamicCast())
        {
          return 0xD000000000000022;
        }
      }

      else
      {

        sub_100285E74(v6);
      }

      return 0;
    }
  }

  return result;
}

uint64_t SDStatusMonitor.currentDiscoverabilityMode.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 discoverableLevel];
  if (v3 >= 3)
  {
    if (qword_1009738B8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000C4AC(v5, qword_10097F000);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Unknown discoverability level", v8, 2u);
    }

    v4 = &enum case for SFAirDropInvocations.ChangeDiscoverability.Parameters.DiscoverabilityMode.off(_:);
  }

  else
  {
    v4 = *(&off_1008E2E40 + v3);
  }

  v9 = *v4;
  v10 = type metadata accessor for SFAirDropInvocations.ChangeDiscoverability.Parameters.DiscoverabilityMode();
  v11 = *(*(v10 - 8) + 104);

  return v11(a1, v9, v10);
}

uint64_t SDStatusMonitor.availableDiscoverability.getter()
{
  v1 = type metadata accessor for SFAirDropInvocations.ChangeDiscoverability.Parameters.DiscoverabilityMode();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v18 - v6;
  if ([v0 isAirDropReady])
  {
    sub_10028088C(&qword_10097F018, &qword_100804B40);
    v8 = *(v2 + 72);
    v9 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1007F8A70;
    v11 = v10 + v9;
    v12 = *(v2 + 104);
    v12(v11, enum case for SFAirDropInvocations.ChangeDiscoverability.Parameters.DiscoverabilityMode.off(_:), v1);
    v12(v11 + v8, enum case for SFAirDropInvocations.ChangeDiscoverability.Parameters.DiscoverabilityMode.everyone(_:), v1);
    v13 = sub_100292F84(v10);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v19 = v13;
    if ([v0 appleIDAccountState] == 1 && (objc_msgSend(v0, "wirelessCarPlay") & 1) == 0)
    {
      v12(v5, enum case for SFAirDropInvocations.ChangeDiscoverability.Parameters.DiscoverabilityMode.contactsOnly(_:), v1);
      sub_10046F8DC(v7, v5);
      (*(v2 + 8))(v7, v1);
      return v19;
    }

    return v13;
  }

  else
  {
    sub_10028088C(&qword_10097F018, &qword_100804B40);
    v15 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1007F5670;
    (*(v2 + 104))(v16 + v15, enum case for SFAirDropInvocations.ChangeDiscoverability.Parameters.DiscoverabilityMode.off(_:), v1);
    v17 = sub_100292F84(v16);
    swift_setDeallocating();
    (*(v2 + 8))(v16 + v15, v1);
    swift_deallocClassInstance();
    return v17;
  }
}

id SDStatusMonitor.change(discoverabilityMode:)(uint64_t a1)
{
  v3 = type metadata accessor for SFAirDropInvocations.ChangeDiscoverability.Parameters.DiscoverabilityMode();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, a1, v3);
  v7 = (*(v4 + 88))(v6, v3);
  if (v7 == enum case for SFAirDropInvocations.ChangeDiscoverability.Parameters.DiscoverabilityMode.off(_:))
  {
    if (kSFOperationDiscoverableModeOff)
    {
      return [v1 setDiscoverableMode:?];
    }

    __break(1u);
    goto LABEL_18;
  }

  if (v7 == enum case for SFAirDropInvocations.ChangeDiscoverability.Parameters.DiscoverabilityMode.contactsOnly(_:))
  {
    if (sub_1000929B4())
    {
LABEL_12:
      v9 = &enum case for SFAirDropInvocations.ChangeDiscoverability.Failure.carPlayEnabled(_:);
LABEL_16:
      v10 = type metadata accessor for SFAirDropInvocations.ChangeDiscoverability.Failure();
      sub_1004784F0(&qword_10097F020, &type metadata accessor for SFAirDropInvocations.ChangeDiscoverability.Failure, &protocol conformance descriptor for SFAirDropInvocations.ChangeDiscoverability.Failure);
      swift_allocError();
      (*(*(v10 - 8) + 104))(v11, *v9, v10);
      return swift_willThrow();
    }

    if (sub_10009268C() || [v1 appleIDAccountState] != 1)
    {
LABEL_15:
      v9 = &enum case for SFAirDropInvocations.ChangeDiscoverability.Failure.missingAppleIDState(_:);
      goto LABEL_16;
    }

    v7 = sub_10046CD60();
    if (kSFOperationDiscoverableModeContactsOnly)
    {
      return [v1 setDiscoverableMode:?];
    }

    __break(1u);
  }

  if (v7 == enum case for SFAirDropInvocations.ChangeDiscoverability.Parameters.DiscoverabilityMode.everyone(_:))
  {
    if (sub_1000929B4())
    {
      goto LABEL_12;
    }

    sub_10046CD60();
    if (kSFOperationDiscoverableModeEveryone)
    {
      return [v1 setDiscoverableMode:?];
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_18:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_10046B348()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097F000);
  v1 = sub_10000C4AC(v0, qword_10097F000);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10046B410(uint64_t a1, void *a2)
{
  sub_1000276B4(0, &qword_100975088, CNContact_ptr);
  sub_1002D7FB0();
  isa = Set._bridgeToObjectiveC()().super.isa;
  v4 = [a2 contactWithPreferredIdentifierForContacts:isa];

  if (v4)
  {
    v5 = [v4 identifier];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = [objc_allocWithZone(CNContactFormatter) init];
    v8 = [v7 stringFromContact:v4];

    if (v8)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }
  }

  else
  {
    if (qword_1009738B8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000C4AC(v9, qword_10097F000);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "No matching contacts found", v12, 2u);
    }

    return 0;
  }

  return v6;
}

uint64_t sub_10046B604(void *a1)
{
  v2 = [objc_allocWithZone(NSDictionary) init];
  isa = Data._bridgeToObjectiveC()().super.isa;
  *&v23 = v2;
  v4 = [a1 verifyAndParseValidationRecordData:isa intoDictionary:&v23];

  v5 = v23;
  if (!v4)
  {
    goto LABEL_22;
  }

  if (qword_1009738B8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000C4AC(v6, qword_10097F000);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Sender validation record verified", v9, 2u);
  }

  if (v5)
  {
    *&v20 = 0xD000000000000014;
    *(&v20 + 1) = 0x8000000100791AD0;
    v10 = [v5 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();
    if (v10)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v20 = 0u;
      v22 = 0u;
    }

    v23 = v20;
    v24 = v22;
    if (*(&v22 + 1))
    {
      sub_10028088C(&unk_10097F030, &qword_100804C38);
      swift_dynamicCast();
    }

    else
    {
      sub_100005508(&v23, &unk_1009746F0, &qword_1007F90B0);
    }

    *&v21 = 0xD000000000000014;
    *(&v21 + 1) = 0x8000000100791AF0;
    v11 = [v5 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();
    if (v11)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v21 = 0u;
      v22 = 0u;
    }

    v23 = v21;
    v24 = v22;
    if (*(&v22 + 1))
    {
      sub_10028088C(&unk_10097F030, &qword_100804C38);
      swift_dynamicCast();
      goto LABEL_20;
    }
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
    sub_100005508(&v23, &unk_1009746F0, &qword_1007F90B0);
    v23 = 0u;
    v24 = 0u;
  }

  sub_100005508(&v23, &unk_1009746F0, &qword_1007F90B0);
LABEL_20:
  v12 = Array._bridgeToObjectiveC()().super.isa;

  v13 = SFCombinedHashFromArray();

  v14 = Array._bridgeToObjectiveC()().super.isa;

  v15 = SFCombinedHashFromArray();

  v16 = [a1 contactsForEmailHash:v13 phoneHash:v15];
  if (v16)
  {
    sub_1000276B4(0, &qword_100975088, CNContact_ptr);
    sub_1002D7FB0();
    v17 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v18 = sub_10046B410(v17, a1);

    return v18;
  }

LABEL_22:

  return 0;
}

__SecTrust *sub_10046BAA4@<X0>(void *a1@<X1>, uint64_t *a2@<X8>, uint64_t a3@<X0>)
{
  result = sub_10062E930(a3);
  if (!result)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
LABEL_17:
    v16 = 0;
    goto LABEL_18;
  }

  v6 = result;
  sub_10046BDE0(result, v32);
  v7 = v32[0];
  v8 = v33;
  if (v32[2])
  {

    v9 = String._bridgeToObjectiveC()();

    if (v8)
    {
LABEL_4:

      v10 = String._bridgeToObjectiveC()();

      goto LABEL_8;
    }
  }

  else
  {
    v9 = 0;
    if (v33)
    {
      goto LABEL_4;
    }
  }

  v10 = 0;
LABEL_8:
  v16 = [a1 emailOrPhoneForEmailHash:v9 phoneHash:v10];

  if (!v16)
  {

    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    goto LABEL_18;
  }

  v31 = v7;
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v18;
  v15 = [a1 verifiedIdentityForAppleID:v16];

  if (!v15)
  {

    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    goto LABEL_17;
  }

  if (qword_1009738B8 != -1)
  {
    swift_once();
  }

  v30 = v17;
  v19 = type metadata accessor for Logger();
  sub_10000C4AC(v19, qword_10097F000);
  v20 = v15;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    *(v23 + 4) = v20;
    *v24 = v15;
    v25 = v24;
    v26 = v20;
    _os_log_impl(&_mh_execute_header, v21, v22, "Sender validation record verified %@", v23, 0xCu);
    sub_100005508(v25, &qword_100975400, &qword_1007F65D0);
  }

  v13 = sub_10046B410(v31, a1);
  v14 = v27;
  v15 = v28;
  v16 = v29;

  v11 = v30;
LABEL_18:
  *a2 = v11;
  a2[1] = v12;
  a2[2] = v13;
  a2[3] = v14;
  a2[4] = v15;
  a2[5] = v16;
  return result;
}

void sub_10046BDE0(__SecTrust *a1@<X2>, void *a2@<X8>)
{
  v3 = v2;
  v6 = [objc_allocWithZone(NSString) init];
  v7 = [objc_allocWithZone(NSString) init];
  isa = Data._bridgeToObjectiveC()().super.isa;
  v22 = v7;
  v23 = v6;
  sub_1000916EC(isa, a1, 0, &v23, &v22);

  v9 = v22;
  v10 = v23;

  if (v10 && (v10, [v10 length] >= 1))
  {
    v11 = String.init(_:)(v10);
    countAndFlagsBits = v11._countAndFlagsBits;
    object = v11._object;
    if (!v9)
    {
      goto LABEL_10;
    }
  }

  else
  {
    countAndFlagsBits = 0;
    object = 0;
    if (!v9)
    {
      goto LABEL_10;
    }
  }

  if ([v9 length] >= 1)
  {
    v14 = String.init(_:)(v9);
    v15 = v14._countAndFlagsBits;
    v16 = v14._object;
    if (object)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

LABEL_10:
  v15 = 0;
  v16 = 0;
  if (object)
  {
LABEL_11:

    v17 = String._bridgeToObjectiveC()();

    if (v16)
    {
      goto LABEL_12;
    }

LABEL_9:
    v18 = 0;
    goto LABEL_13;
  }

LABEL_8:
  v17 = 0;
  if (!v16)
  {
    goto LABEL_9;
  }

LABEL_12:

  v18 = String._bridgeToObjectiveC()();

LABEL_13:
  v19 = [v3 contactsForEmailHash:v17 phoneHash:v18];

  if (v19)
  {
    sub_1000276B4(0, &qword_100975088, CNContact_ptr);
    sub_1002D7FB0();
    v20 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v10 = v9;
    v9 = v19;
  }

  else if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_1002F2FD0(_swiftEmptyArrayStorage);
    v20 = v21;
  }

  else
  {
    v20 = &_swiftEmptySetSingleton;
  }

  *a2 = v20;
  a2[1] = countAndFlagsBits;
  a2[2] = object;
  a2[3] = v15;
  a2[4] = v16;
}

uint64_t sub_10046C07C(void *a1)
{
  v2 = [objc_allocWithZone(NSDictionary) init];
  v3 = sub_10046AB74();
  if (v4 >> 60 == 15)
  {

LABEL_9:
    v14 = 0;
    return v14 & 1;
  }

  v5 = v3;
  v27 = v4;
  isa = Data._bridgeToObjectiveC()().super.isa;
  *&v35 = v2;
  v7 = [a1 verifyAndParseValidationRecordData:isa intoDictionary:&v35];

  v8 = v35;
  v9 = [objc_allocWithZone(NSDictionary) init];
  v10 = Data._bridgeToObjectiveC()().super.isa;
  *&v35 = v9;
  v11 = [a1 verifyAndParseValidationRecordData:v10 intoDictionary:&v35];

  v12 = v35;
  if (!v7 || (v11 & 1) == 0)
  {
    sub_10028BCC0(v5, v27);

    goto LABEL_9;
  }

  if (!v8)
  {
    v35 = 0u;
    v36 = 0u;
    sub_100005508(&v35, &unk_1009746F0, &qword_1007F90B0);
    v35 = 0u;
    v36 = 0u;
LABEL_27:
    sub_100005508(&v35, &unk_1009746F0, &qword_1007F90B0);
    v16 = 0;
    v17 = 0;
    goto LABEL_28;
  }

  *&v30 = 0x44497344746C61;
  *(&v30 + 1) = 0xE700000000000000;
  v13 = [v8 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v13)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v30 = 0u;
    v34 = 0u;
  }

  v35 = v30;
  v36 = v34;
  if (*(&v34 + 1))
  {
    if (swift_dynamicCast())
    {
      v16 = *(&v30 + 1);
      v17 = v30;
      goto LABEL_28;
    }
  }

  else
  {
    sub_100005508(&v35, &unk_1009746F0, &qword_1007F90B0);
  }

  *&v31 = 0x44497344636E65;
  *(&v31 + 1) = 0xE700000000000000;
  v18 = [v8 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v18)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v31 = 0u;
    v34 = 0u;
  }

  v35 = v31;
  v36 = v34;
  if (!*(&v34 + 1))
  {
    goto LABEL_27;
  }

  v19 = swift_dynamicCast();
  if (v19)
  {
    v16 = *(&v31 + 1);
  }

  else
  {
    v16 = 0;
  }

  if (v19)
  {
    v17 = v31;
  }

  else
  {
    v17 = 0;
  }

LABEL_28:
  if (!v12)
  {
    v35 = 0u;
    v36 = 0u;
    sub_100005508(&v35, &unk_1009746F0, &qword_1007F90B0);
    v35 = 0u;
    v36 = 0u;
    goto LABEL_53;
  }

  *&v32 = 0x44497344746C61;
  *(&v32 + 1) = 0xE700000000000000;
  v20 = [v12 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v20)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v32 = 0u;
    v34 = 0u;
  }

  v35 = v32;
  v36 = v34;
  if (!*(&v34 + 1))
  {
    sub_100005508(&v35, &unk_1009746F0, &qword_1007F90B0);
LABEL_38:
    *&v33 = 0x44497344636E65;
    *(&v33 + 1) = 0xE700000000000000;
    v24 = [v12 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();
    if (v24)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v33 = 0u;
      v34 = 0u;
    }

    v35 = v33;
    v36 = v34;
    if (*(&v34 + 1))
    {
      v25 = swift_dynamicCast();
      if (v25)
      {
        v21 = v29;
      }

      else
      {
        v21 = 0;
      }

      if (v25)
      {
        v23 = v28;
      }

      else
      {
        v23 = 0;
      }

      v22 = v27;
      if (!v16)
      {
        goto LABEL_55;
      }

      goto LABEL_49;
    }

LABEL_53:
    sub_100005508(&v35, &unk_1009746F0, &qword_1007F90B0);
    if (v16)
    {
      v22 = v27;
    }

    else
    {
      v22 = v27;
    }

    goto LABEL_55;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_38;
  }

  v21 = *(&v32 + 1);
  v22 = v27;
  if (!v16)
  {
    goto LABEL_55;
  }

  v23 = v32;
LABEL_49:
  if (!v21)
  {
LABEL_55:
    sub_10028BCC0(v5, v22);

    goto LABEL_9;
  }

  if (v17 == v23 && v16 == v21)
  {
    sub_10028BCC0(v5, v22);

    v14 = 1;
  }

  else
  {
    v26 = v22;
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_10028BCC0(v5, v26);
  }

  return v14 & 1;
}

uint64_t sub_10046C644(uint64_t a1)
{
  v1 = sub_10062E930(a1);
  if (v1)
  {
    v2 = v1;
    isa = Data._bridgeToObjectiveC()().super.isa;
    v4 = sub_10009229C(isa, v2, 0);

    if (v4)
    {
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v6;

      if (qword_1009738B8 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_10000C4AC(v8, qword_10097F000);

      v4 = Logger.logObject.getter();
      v9 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v4, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v15 = v11;
        *v10 = 136315138;
        v12 = sub_10000C4E4(v5, v7, &v15);

        *(v10 + 4) = v12;
        _os_log_impl(&_mh_execute_header, v4, v9, "Confirmed Bonjour Sender: %s", v10, 0xCu);
        sub_10000C60C(v11);
      }

      else
      {
      }

      LOBYTE(v4) = sub_10046C824(v2, v13);
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4 & 1;
}

uint64_t sub_10046C824(__SecTrust *a1, uint64_t a2)
{
  v2 = sub_100091420(a1, a2);
  if (v2)
  {
    v3 = v2;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      type metadata accessor for SecCertificate(0);
      static Array._conditionallyBridgeFromObjectiveC(_:result:)();
    }
  }

  if (qword_1009736C8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000C4AC(v4, qword_1009A08A0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Missing cert chain / appleID cert - unable to validate same account peer", v7, 2u);
  }

  return 0;
}

id sub_10046CD60()
{
  if (![v0 bluetoothEnabled] || (result = objc_msgSend(v0, "wirelessEnabled"), (result & 1) == 0))
  {
    if ([v0 deviceSupportsWAPI])
    {
      v2 = objc_opt_self();
      v3 = [v0 bluetoothEnabled];
      v4 = [v0 wirelessEnabled];
      v5 = "presentEnableRadiosAlertForBluetooth:andWLAN:";
      v6 = v3 ^ 1;
      v7 = v4 ^ 1;
      v8 = v2;

      return [v8 v5];
    }

    if (([v0 bluetoothEnabled] & 1) == 0)
    {
      [v0 setBluetoothEnabled:1];
    }

    result = [v0 wirelessEnabled];
    if ((result & 1) == 0)
    {
      v5 = "setWirelessEnabled:";
      v8 = v0;
      v6 = 1;

      return [v8 v5];
    }
  }

  return result;
}

uint64_t sub_10046CEC4(void *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (!v2)
  {
    if (!v3)
    {
      return 0;
    }

    goto LABEL_8;
  }

  if (v2 == 1)
  {
    if (v3 == 1)
    {
      return 0;
    }

    goto LABEL_8;
  }

  if (v3 < 2)
  {
LABEL_8:
    v4 = v2 == 0;
    if (v3 != 1)
    {
      v4 = v2 < 2;
    }

    return v3 && v4;
  }

  v6 = *a1 == *a2 && v2 == v3;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 0;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

BOOL sub_10046CFA4(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v3)
  {
    if (v3 == 1)
    {
      if (v2 == 1)
      {
LABEL_18:
        v5 = 0;
        return (v5 & 1) == 0;
      }
    }

    else if (v2 >= 2)
    {
      v6 = *a2 == *a1 && v3 == v2;
      if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
        return (v5 & 1) == 0;
      }

      goto LABEL_18;
    }
  }

  else if (!v2)
  {
    goto LABEL_18;
  }

  v4 = v3 == 0;
  if (v2 != 1)
  {
    v4 = v3 < 2;
  }

  if (v2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return (v5 & 1) == 0;
}

BOOL sub_10046D074(void *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v2)
  {
    if (v2 == 1)
    {
      if (v3 == 1)
      {
LABEL_18:
        v5 = 0;
        return (v5 & 1) == 0;
      }
    }

    else if (v3 >= 2)
    {
      v6 = *a1 == *a2 && v2 == v3;
      if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
        return (v5 & 1) == 0;
      }

      goto LABEL_18;
    }
  }

  else if (!v3)
  {
    goto LABEL_18;
  }

  v4 = v2 == 0;
  if (v3 != 1)
  {
    v4 = v2 < 2;
  }

  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return (v5 & 1) == 0;
}

uint64_t sub_10046D144(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (!v3)
  {
    if (!v2)
    {
      return 0;
    }

    goto LABEL_8;
  }

  if (v3 == 1)
  {
    if (v2 == 1)
    {
      return 0;
    }

    goto LABEL_8;
  }

  if (v2 < 2)
  {
LABEL_8:
    v4 = v3 == 0;
    if (v2 != 1)
    {
      v4 = v3 < 2;
    }

    return v2 && v4;
  }

  v6 = *a2 == *a1 && v3 == v2;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 0;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_10046D224(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (!v3)
  {
    return !v4;
  }

  if (v3 == 1)
  {
    return v4 == 1;
  }

  if (v4 < 2)
  {
    return 0;
  }

  if (*a1 != *a2 || v3 != v4)
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return 1;
}

uint64_t sub_10046D284(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for SFAirDropReceive.AskRequest.ItemInfo();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1004784F0(&qword_10097F100, &type metadata accessor for SFAirDropReceive.AskRequest.ItemInfo, &protocol conformance descriptor for SFAirDropReceive.AskRequest.ItemInfo);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1004784F0(&qword_10097F108, &type metadata accessor for SFAirDropReceive.AskRequest.ItemInfo, &protocol conformance descriptor for SFAirDropReceive.AskRequest.ItemInfo);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1004730A8(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_10046D564(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1004784F0(&unk_100975170, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1004784F0(&unk_10097F0F0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_10047334C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_10046D844(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      sub_1000276B4(0, &qword_100974E40, SFAirDropTransferItem_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_10046FDFC(v7, result + 1, &qword_10097A730, &unk_100804CD0, &qword_100974E40, SFAirDropTransferItem_ptr);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_100471ED8(v20 + 1, &qword_10097A730, &unk_100804CD0);
    }

    v18 = v8;
    sub_1006F2F48();

    *v3 = v19;
    goto LABEL_16;
  }

  sub_1000276B4(0, &qword_100974E40, SFAirDropTransferItem_ptr);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1004735F0(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_10046DAAC(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
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

    sub_100473780(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_10046DBFC(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      sub_1000276B4(0, &qword_100974F60, SFAutoUnlockDevice_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_10046FDFC(v7, result + 1, &qword_10097A6E8, &unk_100804C80, &qword_100974F60, SFAutoUnlockDevice_ptr);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_100471ED8(v20 + 1, &qword_10097A6E8, &unk_100804C80);
    }

    v18 = v8;
    sub_1006F2F48();

    *v3 = v19;
    goto LABEL_16;
  }

  sub_1000276B4(0, &qword_100974F60, SFAutoUnlockDevice_ptr);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_100473900(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_10046DE64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v19 = a1;
  v5 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v8 = &v20[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  Hasher.init(_seed:)();
  sub_10032D3D4(v20);
  v10 = Hasher._finalize()();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v6 + 72);
    while (1)
    {
      sub_100478538(*(v9 + 48) + v14 * v12, v8, type metadata accessor for SDAirDropDiscoveredEndpoint);
      v15 = sub_100331F88(v8, a2);
      sub_1003DEB88(v8, type metadata accessor for SDAirDropDiscoveredEndpoint);
      if (v15)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1003DEB88(a2, type metadata accessor for SDAirDropDiscoveredEndpoint);
    sub_100478538(*(v9 + 48) + v14 * v12, v19, type metadata accessor for SDAirDropDiscoveredEndpoint);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100478538(a2, v8, type metadata accessor for SDAirDropDiscoveredEndpoint);
    v20[0] = *v3;
    sub_100473A90(v8, v12, isUniquelyReferenced_nonNull_native);
    v17 = v19;
    *v3 = v20[0];
    sub_10000ECA8(a2, v17, type metadata accessor for SDAirDropDiscoveredEndpoint);
    return 1;
  }
}

uint64_t sub_10046E0A4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1004784F0(&qword_100976170, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1004784F0(&qword_1009761E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_100473CD4(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_10046E3C0(Swift::UInt *a1, Swift::UInt a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v13 = *v6;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  v14 = Hasher._finalize()();
  v15 = -1 << *(v13 + 32);
  v16 = v14 & ~v15;
  if ((*(v13 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    while (*(*(v13 + 48) + 8 * v16) != a2)
    {
      v16 = (v16 + 1) & v17;
      if (((*(v13 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v6;
    sub_100473F78(a2, v16, isUniquelyReferenced_nonNull_native, a3, a4, a5, a6);
    *v6 = v20;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_10046E4E8(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = static Hasher._hash(seed:_:)();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1004740FC(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_10046E5C8(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for CodableError();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1004784F0(&qword_10097F080, &type metadata accessor for CodableError, &protocol conformance descriptor for CodableError);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1004784F0(&qword_10097F088, &type metadata accessor for CodableError, &protocol conformance descriptor for CodableError);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_10047421C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_10046E8A8(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v6 = *v3;
  Hasher.init(_seed:)();
  Data.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = v6 + 56;
  v9 = -1 << *(v6 + 32);
  v10 = v7 & ~v9;
  if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_62:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v50 = *v40;
    sub_100294008(a2, a3);
    sub_1004744C0(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v40 = *v50;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v11 = ~v9;
  if (a2)
  {
    v12 = 0;
  }

  else
  {
    v12 = a3 == 0xC000000000000000;
  }

  v13 = !v12;
  v48 = v13;
  v14 = a3 >> 62;
  v15 = __OFSUB__(HIDWORD(a2), a2);
  v45 = v15;
  v44 = a3;
  v46 = v11;
  v47 = BYTE6(a3);
  v42 = v6 + 56;
  v43 = v6;
  while (1)
  {
    v16 = (*(v6 + 48) + 16 * v10);
    v18 = *v16;
    v17 = v16[1];
    v19 = v17 >> 62;
    if (v17 >> 62 == 3)
    {
      if (v18)
      {
        v20 = 0;
      }

      else
      {
        v20 = v17 == 0xC000000000000000;
      }

      v22 = !v20 || v14 < 3;
      if (((v22 | v48) & 1) == 0)
      {
        v37 = 0;
        v38 = 0xC000000000000000;
        goto LABEL_63;
      }

LABEL_36:
      v23 = 0;
      if (v14 <= 1)
      {
        goto LABEL_33;
      }

      goto LABEL_37;
    }

    if (v19 > 1)
    {
      if (v19 != 2)
      {
        goto LABEL_36;
      }

      v25 = *(v18 + 16);
      v24 = *(v18 + 24);
      v26 = __OFSUB__(v24, v25);
      v23 = v24 - v25;
      if (v26)
      {
        goto LABEL_65;
      }

      if (v14 <= 1)
      {
        goto LABEL_33;
      }
    }

    else if (v19)
    {
      LODWORD(v23) = HIDWORD(v18) - v18;
      if (__OFSUB__(HIDWORD(v18), v18))
      {
        goto LABEL_66;
      }

      v23 = v23;
      if (v14 <= 1)
      {
LABEL_33:
        v27 = v47;
        if (v14)
        {
          v27 = HIDWORD(a2) - a2;
          if (v45)
          {
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
LABEL_70:
            __break(1u);
          }
        }

        goto LABEL_39;
      }
    }

    else
    {
      v23 = BYTE6(v17);
      if (v14 <= 1)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    if (v14 != 2)
    {
      if (!v23)
      {
        goto LABEL_61;
      }

      goto LABEL_13;
    }

    v29 = *(a2 + 16);
    v28 = *(a2 + 24);
    v26 = __OFSUB__(v28, v29);
    v27 = v28 - v29;
    if (v26)
    {
      goto LABEL_64;
    }

LABEL_39:
    if (v23 != v27)
    {
      goto LABEL_13;
    }

    if (v23 < 1)
    {
      goto LABEL_61;
    }

    if (v19 <= 1)
    {
      if (!v19)
      {
        *v50 = v18;
        *&v50[8] = v17;
        v50[10] = BYTE2(v17);
        v50[11] = BYTE3(v17);
        v50[12] = BYTE4(v17);
        v50[13] = BYTE5(v17);
        sub_100294008(v18, v17);
        v11 = v46;
        goto LABEL_60;
      }

      if (v18 >> 32 < v18)
      {
        goto LABEL_67;
      }

      sub_100294008(v18, v17);
      v32 = __DataStorage._bytes.getter();
      if (v32)
      {
        v34 = __DataStorage._offset.getter();
        if (__OFSUB__(v18, v34))
        {
          goto LABEL_70;
        }

        v32 += v18 - v34;
      }

      goto LABEL_57;
    }

    if (v19 != 2)
    {
      break;
    }

    v31 = *(v18 + 16);
    v30 = *(v18 + 24);
    sub_100294008(v18, v17);
    v32 = __DataStorage._bytes.getter();
    if (v32)
    {
      v33 = __DataStorage._offset.getter();
      if (__OFSUB__(v31, v33))
      {
        goto LABEL_69;
      }

      v32 += v31 - v33;
    }

    if (__OFSUB__(v30, v31))
    {
      goto LABEL_68;
    }

LABEL_57:
    __DataStorage._length.getter();
    a3 = v44;
    sub_100330108(v32, a2, v44, v50);
    sub_100026AC0(v18, v17);
    v8 = v42;
    v6 = v43;
    v11 = v46;
    if (v50[0])
    {
      goto LABEL_61;
    }

LABEL_13:
    v10 = (v10 + 1) & v11;
    if (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  *&v50[6] = 0;
  *v50 = 0;
  sub_100294008(v18, v17);
LABEL_60:
  sub_100330108(v50, a2, a3, &v49);
  sub_100026AC0(v18, v17);
  if (!v49)
  {
    goto LABEL_13;
  }

LABEL_61:
  v37 = a2;
  v38 = a3;
LABEL_63:
  sub_100026AC0(v37, v38);
  v39 = *(*(v6 + 48) + 16 * v10);
  *a1 = v39;
  sub_100294008(v39, *(&v39 + 1));
  return 0;
}

uint64_t sub_10046ED30(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      sub_1000276B4(0, &qword_100975088, CNContact_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_10046FDFC(v7, result + 1, &unk_100977250, &qword_1007FA150, &qword_100975088, CNContact_ptr);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_100471ED8(v20 + 1, &unk_100977250, &qword_1007FA150);
    }

    v18 = v8;
    sub_1006F2F48();

    *v3 = v19;
    goto LABEL_16;
  }

  sub_1000276B4(0, &qword_100975088, CNContact_ptr);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_100474938(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_10046EFE8(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      type metadata accessor for SDAirDropSendConnection(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_10046FFFC(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_100471ED8(v20 + 1, &qword_100977360, &qword_1007FA1E0);
    }

    v18 = v8;
    sub_1006F2F48();

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for SDAirDropSendConnection(0);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_100474AC8(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

BOOL sub_10046F210()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()() & ~(-1 << *(v1 + 32));
  v3 = (1 << v2) & *(v1 + ((v2 >> 3) & 0xFFFFFFFFFFFFFF8) + 56);
  if (!v3)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v0;
    sub_100474C48(v2, isUniquelyReferenced_nonNull_native);
    *v0 = v6;
  }

  return v3 == 0;
}

uint64_t sub_10046F2E0(void *a1, uint64_t a2)
{
  v4 = *v2;
  Hasher.init(_seed:)();
  Task.hash(into:)();
  v5 = Hasher._finalize()();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    while (1)
    {

      v9 = static Task.== infix(_:_:)();

      if (v9)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    *a1 = *(*(v4 + 48) + 8 * v7);

    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v13;

    sub_100474D74(v11, v7, isUniquelyReferenced_nonNull_native);
    *v13 = v15;
    *a1 = a2;
    return 1;
  }
}

uint64_t sub_10046F45C(uint64_t a1, void *a2)
{
  v3 = v2;
  v19 = a1;
  v5 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v8 = (&v20[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *v2;
  Hasher.init(_seed:)();
  sub_10032D050(v20);
  v10 = Hasher._finalize()();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v6 + 72);
    while (1)
    {
      sub_100478538(*(v9 + 48) + v14 * v12, v8, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
      v15 = sub_100331B60(v8, a2);
      sub_1003DEB88(v8, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
      if (v15)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1003DEB88(a2, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
    sub_100478538(*(v9 + 48) + v14 * v12, v19, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100478538(a2, v8, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
    v20[0] = *v3;
    sub_100474F38(v8, v12, isUniquelyReferenced_nonNull_native);
    v17 = v19;
    *v3 = v20[0];
    sub_10000ECA8(a2, v17, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
    return 1;
  }
}

uint64_t sub_10046F69C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v19 = a1;
  v5 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v8 = &v20[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  Hasher.init(_seed:)();
  sub_10032CD80(v20);
  v10 = Hasher._finalize()();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v6 + 72);
    while (1)
    {
      sub_100478538(*(v9 + 48) + v14 * v12, v8, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
      v15 = sub_100331670();
      sub_1003DEB88(v8, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
      if (v15)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1003DEB88(a2, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
    sub_100478538(*(v9 + 48) + v14 * v12, v19, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100478538(a2, v8, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
    v20[0] = *v3;
    sub_10047517C(v8, v12, isUniquelyReferenced_nonNull_native);
    v17 = v19;
    *v3 = v20[0];
    sub_10000ECA8(a2, v17, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
    return 1;
  }
}

uint64_t sub_10046F8DC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for SFAirDropInvocations.ChangeDiscoverability.Parameters.DiscoverabilityMode();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1004784F0(&qword_100975118, &type metadata accessor for SFAirDropInvocations.ChangeDiscoverability.Parameters.DiscoverabilityMode, &protocol conformance descriptor for SFAirDropInvocations.ChangeDiscoverability.Parameters.DiscoverabilityMode);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1004784F0(&qword_10097F0D0, &type metadata accessor for SFAirDropInvocations.ChangeDiscoverability.Parameters.DiscoverabilityMode, &protocol conformance descriptor for SFAirDropInvocations.ChangeDiscoverability.Parameters.DiscoverabilityMode);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1004753C0(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_10046FC0C(Swift::Int *a1, Swift::Int a2, Swift::Int a3, Swift::Int a4, Swift::Int a5, uint64_t *a6, uint64_t *a7, uint64_t a8, uint64_t (*a9)(void))
{
  v14 = *v9;
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  v15 = Hasher._finalize()();
  v16 = v14 + 56;
  v17 = -1 << *(v14 + 32);
  v18 = v15 & ~v17;
  if ((*(v14 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
  {
    v19 = ~v17;
    v32 = v14;
    v20 = *(v14 + 48);
    while (1)
    {
      v21 = (v20 + 32 * v18);
      v22 = v21[2];
      v23 = v21[3];
      v24 = *v21 == a2 && v21[1] == a3;
      if (v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v25 = v22 == a4 && v23 == a5;
        if (v25 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }
      }

      v18 = (v18 + 1) & v19;
      if (((*(v16 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    v26 = (*(v32 + 48) + 32 * v18);
    v27 = v26[1];
    v28 = v26[2];
    v29 = v26[3];
    *a1 = *v26;
    a1[1] = v27;
    a1[2] = v28;
    a1[3] = v29;

    return 0;
  }

  else
  {
LABEL_15:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = *v36;

    sub_100475664(a2, a3, a4, a5, v18, isUniquelyReferenced_nonNull_native, a6, a7, a8, a9);
    *v36 = v38;
    *a1 = a2;
    a1[1] = a3;
    a1[2] = a4;
    a1[3] = a5;
    return 1;
  }
}

Swift::Int sub_10046FDFC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, void *a6)
{
  if (a2)
  {
    sub_10028088C(a3, a4);
    v10 = static _SetStorage.convert(_:capacity:)();
    v23 = v10;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_1000276B4(0, a5, a6);
      do
      {
        swift_dynamicCast();
        v17 = *(v10 + 16);
        if (*(v10 + 24) <= v17)
        {
          sub_100471ED8(v17 + 1, a3, a4);
        }

        v10 = v23;
        result = NSObject._rawHashValue(seed:)(*(v23 + 40));
        v12 = v23 + 56;
        v13 = -1 << *(v23 + 32);
        v14 = result & ~v13;
        v15 = v14 >> 6;
        if (((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6))) != 0)
        {
          v16 = __clz(__rbit64((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = 0;
          v19 = (63 - v13) >> 6;
          do
          {
            if (++v15 == v19 && (v18 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v20 = v15 == v19;
            if (v15 == v19)
            {
              v15 = 0;
            }

            v18 |= v20;
            v21 = *(v12 + 8 * v15);
          }

          while (v21 == -1);
          v16 = __clz(__rbit64(~v21)) + (v15 << 6);
        }

        *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        *(*(v23 + 48) + 8 * v16) = v22;
        ++*(v23 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v10;
}

Swift::Int sub_10046FFFC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10028088C(&qword_100977360, &qword_1007FA1E0);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for SDAirDropSendConnection(0);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_100471ED8(v9 + 1, &qword_100977360, &qword_1007FA1E0);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_1004701FC(uint64_t a1)
{
  v2 = v1;
  v36 = type metadata accessor for SFAirDropReceive.AskRequest.ItemInfo();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_10028088C(&unk_10097A740, &qword_100804CE0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_1004784F0(&qword_10097F100, &type metadata accessor for SFAirDropReceive.AskRequest.ItemInfo, &protocol conformance descriptor for SFAirDropReceive.AskRequest.ItemInfo);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_100470558(uint64_t a1)
{
  v2 = v1;
  v36 = type metadata accessor for URL();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_10028088C(&qword_10097A738, &unk_1007FD990);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_1004784F0(&unk_100975170, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

Swift::Int sub_1004708B4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10028088C(&qword_10097A6E0, &unk_1007FD870);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
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

uint64_t sub_100470B28(uint64_t a1)
{
  v2 = v1;
  v36 = type metadata accessor for UUID();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_10028088C(&unk_100977310, &unk_1007FA1A0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_1004784F0(&qword_100976170, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

Swift::Int sub_100470E84(uint64_t a1)
{
  v47 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint(0);
  __chkstk_darwin(v47);
  v3 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0);
  __chkstk_darwin(v4 - 8);
  v45 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint(0);
  __chkstk_darwin(v6 - 8);
  v44 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v50 = *(v8 - 8);
  v51 = v8;
  v9 = __chkstk_darwin(v8);
  v53 = (&v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v12 = &v44 - v11;
  v46 = v1;
  v13 = *v1;
  sub_10028088C(&unk_100977340, &unk_1007FA1C0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v15 = result;
  if (*(v13 + 16))
  {
    v16 = 0;
    v17 = (v13 + 56);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 56);
    v21 = (v18 + 63) >> 6;
    v22 = result + 56;
    v48 = v13;
    v49 = v12;
    while (1)
    {
      if (!v20)
      {
        v25 = v16;
        while (1)
        {
          v16 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            __break(1u);
            goto LABEL_42;
          }

          if (v16 >= v21)
          {
            break;
          }

          v26 = v17[v16];
          ++v25;
          if (v26)
          {
            v24 = __clz(__rbit64(v26));
            v20 = (v26 - 1) & v26;
            goto LABEL_15;
          }
        }

        v43 = 1 << *(v13 + 32);
        if (v43 >= 64)
        {
          bzero(v17, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v17 = -1 << v43;
        }

        *(v13 + 16) = 0;
        break;
      }

      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v27 = *(v13 + 48);
      v52 = *(v50 + 72);
      sub_10000ECA8(v27 + v52 * (v24 | (v16 << 6)), v12, type metadata accessor for SDAirDropDiscoveredEndpoint);
      Hasher.init(_seed:)();
      sub_100478538(v12, v53, type metadata accessor for SDAirDropDiscoveredEndpoint);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload != 2)
        {
          v35 = *v53;
          Hasher._combine(_:)(3uLL);
          NSObject.hash(into:)();

          goto LABEL_27;
        }

        sub_10000ECA8(v53, v3, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
        Hasher._combine(_:)(2uLL);
        Data.hash(into:)();
        v31 = v3;
        v32 = v47;
        type metadata accessor for UUID();
        sub_1004784F0(&qword_100976170, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        dispatch thunk of Hashable.hash(into:)();
        if (*&v31[*(v32 + 28) + 8])
        {
          Hasher._combine(_:)(1u);
          v3 = v31;
          String.hash(into:)();
        }

        else
        {
          v3 = v31;
          Hasher._combine(_:)(0);
        }

        Hasher._combine(_:)(v3[*(v47 + 36)]);
        v34 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
        v33 = v3;
      }

      else
      {
        if (EnumCaseMultiPayload)
        {
          v29 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint;
          v30 = v45;
          sub_10000ECA8(v53, v45, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
          Hasher._combine(_:)(1uLL);
          sub_10032D050(v54);
        }

        else
        {
          v29 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint;
          v30 = v44;
          sub_10000ECA8(v53, v44, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
          Hasher._combine(_:)(0);
          sub_10032CD80(v54);
        }

        v33 = v30;
        v34 = v29;
      }

      sub_1003DEB88(v33, v34);
      v13 = v48;
LABEL_27:
      v12 = v49;
      result = Hasher._finalize()();
      v36 = -1 << *(v15 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v22 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v22 + 8 * v38);
          if (v42 != -1)
          {
            v23 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_7;
          }
        }

LABEL_42:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v37) & ~*(v22 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = sub_10000ECA8(v12, *(v15 + 48) + v23 * v52, type metadata accessor for SDAirDropDiscoveredEndpoint);
      ++*(v15 + 16);
    }
  }

  *v46 = v15;
  return result;
}

Swift::Int sub_10047149C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  sub_10028088C(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v19);
      result = Hasher._finalize()();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    v4 = v3;
    *(v5 + 16) = 0;
  }

  *v4 = v7;
  return result;
}

uint64_t sub_1004716E4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10028088C(&unk_10097A700, &unk_1007FD890);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v25 = v2;
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = static Hasher._hash(seed:_:)();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_100471908(uint64_t a1)
{
  v2 = v1;
  v36 = type metadata accessor for CodableError();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_10028088C(&qword_10097A6C0, &unk_1007FD850);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_1004784F0(&qword_10097F080, &type metadata accessor for CodableError, &protocol conformance descriptor for CodableError);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

Swift::Int sub_100471C64(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10028088C(&qword_10097A720, &unk_100804CB0);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      Hasher.init(_seed:)();
      Data.hash(into:)();
      result = Hasher._finalize()();
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

Swift::Int sub_100471ED8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  sub_10028088C(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v7 + 40));
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v7;
  return result;
}

Swift::Int sub_1004720F8(uint64_t a1)
{
  v2 = *v1;
  sub_10028088C(&qword_10097A6F8, &unk_100804C90);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
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
    while (v9)
    {
LABEL_13:
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v14 = -1 << *(v4 + 32);
      v15 = result & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v11 + 8 * (v15 >> 6))) == 0)
      {
        v17 = 0;
        v18 = (63 - v14) >> 6;
        while (++v16 != v18 || (v17 & 1) == 0)
        {
          v19 = v16 == v18;
          if (v16 == v18)
          {
            v16 = 0;
          }

          v17 |= v19;
          v20 = *(v11 + 8 * v16);
          if (v20 != -1)
          {
            v12 = __clz(__rbit64(~v20)) + (v16 << 6);
            goto LABEL_7;
          }
        }

LABEL_28:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v15) & ~*(v11 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      v9 &= v9 - 1;
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      ++*(v4 + 16);
    }

    while (1)
    {
      v13 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v13 >= v10)
      {
        break;
      }

      v9 = v6[v13];
      ++v5;
      if (v9)
      {
        v5 = v13;
        goto LABEL_13;
      }
    }

    v21 = 1 << *(v2 + 32);
    if (v21 >= 64)
    {
      bzero((v2 + 56), ((v21 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v21;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

Swift::Int sub_10047232C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10028088C(&unk_10097F0E0, &unk_1007FD980);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      Task.hash(into:)();
      result = Hasher._finalize()();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_100472598(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0);
  v26 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v25 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_10028088C(&qword_10097A6D0, &unk_1007FD860);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v23 = v1;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v24 = result + 56;
    for (i = v25; v12; ++*(v7 + 16))
    {
      v15 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_12:
      v18 = *(v26 + 72);
      sub_10000ECA8(*(v5 + 48) + v18 * (v15 | (v8 << 6)), i, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
      Hasher.init(_seed:)();
      sub_10032D050(v27);
      Hasher._finalize()();
      v19 = v24;
      v20 = _HashTable.nextHole(atOrAfter:)();
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = sub_10000ECA8(i, *(v7 + 48) + v20 * v18, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        return result;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v21 = 1 << *(v5 + 32);
    if (v21 >= 64)
    {
      bzero((v5 + 56), ((v21 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v21;
    }

    v2 = v23;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_100472834(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint(0);
  v26 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v25 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_10028088C(&qword_10097A6C8, &unk_100804C50);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v23 = v1;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v24 = result + 56;
    for (i = v25; v12; ++*(v7 + 16))
    {
      v15 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_12:
      v18 = *(v26 + 72);
      sub_10000ECA8(*(v5 + 48) + v18 * (v15 | (v8 << 6)), i, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
      Hasher.init(_seed:)();
      sub_10032CD80(v27);
      Hasher._finalize()();
      v19 = v24;
      v20 = _HashTable.nextHole(atOrAfter:)();
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = sub_10000ECA8(i, *(v7 + 48) + v20 * v18, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        return result;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v21 = 1 << *(v5 + 32);
    if (v21 >= 64)
    {
      bzero((v5 + 56), ((v21 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v21;
    }

    v2 = v23;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_100472AD0(uint64_t a1)
{
  v2 = v1;
  v36 = type metadata accessor for SFAirDropInvocations.ChangeDiscoverability.Parameters.DiscoverabilityMode();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_10028088C(&qword_10097A728, &unk_1007FD970);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_1004784F0(&qword_100975118, &type metadata accessor for SFAirDropInvocations.ChangeDiscoverability.Parameters.DiscoverabilityMode, &protocol conformance descriptor for SFAirDropInvocations.ChangeDiscoverability.Parameters.DiscoverabilityMode);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

Swift::Int sub_100472E2C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  sub_10028088C(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = (*(v5 + 48) + 32 * (v17 | (v8 << 6)));
      v21 = *v20;
      v22 = v20[1];
      v23 = v20[2];
      v24 = v20[3];
      Hasher.init(_seed:)();
      String.hash(into:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 32 * v15);
      *v16 = v21;
      v16[1] = v22;
      v16[2] = v23;
      v16[3] = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v32 = 1 << *(v5 + 32);
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    v4 = v33;
    *(v5 + 16) = 0;
  }

  *v4 = v7;
  return result;
}

uint64_t sub_1004730A8(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = type metadata accessor for SFAirDropReceive.AskRequest.ItemInfo();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1004701FC(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_10036C5F4();
      goto LABEL_12;
    }

    sub_10047584C(v10 + 1);
  }

  v12 = *v3;
  sub_1004784F0(&qword_10097F100, &type metadata accessor for SFAirDropReceive.AskRequest.ItemInfo, &protocol conformance descriptor for SFAirDropReceive.AskRequest.ItemInfo);
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_1004784F0(&qword_10097F108, &type metadata accessor for SFAirDropReceive.AskRequest.ItemInfo, &protocol conformance descriptor for SFAirDropReceive.AskRequest.ItemInfo);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10047334C(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100470558(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_10036C61C();
      goto LABEL_12;
    }

    sub_100475B68(v10 + 1);
  }

  v12 = *v3;
  sub_1004784F0(&unk_100975170, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_1004784F0(&unk_10097F0F0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_1004735F0(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100471ED8(v6 + 1, &qword_10097A730, &unk_100804CD0);
  }

  else
  {
    if (v7 > v6)
    {
      sub_10036C644();
      goto LABEL_12;
    }

    sub_100477310(v6 + 1, &qword_10097A730, &unk_100804CD0);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1000276B4(0, &qword_100974E40, SFAirDropTransferItem_ptr);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_100473780(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1004708B4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_10036C658();
      goto LABEL_16;
    }

    sub_100475E84(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v11 = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == a1 && v14[1] == a2;
      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = a1;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_100473900(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100471ED8(v6 + 1, &qword_10097A6E8, &unk_100804C80);
  }

  else
  {
    if (v7 > v6)
    {
      sub_10036C7B4();
      goto LABEL_12;
    }

    sub_100477310(v6 + 1, &qword_10097A6E8, &unk_100804C80);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1000276B4(0, &qword_100974F60, SFAutoUnlockDevice_ptr);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_100473A90(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v27[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*v4 + 16);
  v14 = *(*v4 + 24);
  if (v14 > v13 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v26 = v10;
    sub_100470E84(v13 + 1);
  }

  else
  {
    if (v14 > v13)
    {
      sub_10036C7F0();
      goto LABEL_12;
    }

    v26 = v10;
    sub_1004763D8(v13 + 1);
  }

  v15 = *v4;
  Hasher.init(_seed:)();
  sub_10032D3D4(v27);
  v16 = Hasher._finalize()();
  v17 = -1 << *(v15 + 32);
  a2 = v16 & ~v17;
  if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v19 = *(v9 + 72);
    do
    {
      sub_100478538(*(v15 + 48) + v19 * a2, v12, type metadata accessor for SDAirDropDiscoveredEndpoint);
      v20 = sub_100331F88(v12, a1);
      sub_1003DEB88(v12, type metadata accessor for SDAirDropDiscoveredEndpoint);
      if (v20)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v21 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_10000ECA8(a1, *(v21 + 48) + *(v9 + 72) * a2, type metadata accessor for SDAirDropDiscoveredEndpoint);
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    *(v21 + 16) = v25;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100473CD4(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100470B28(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_10036C7C8();
      goto LABEL_12;
    }

    sub_1004760BC(v10 + 1);
  }

  v12 = *v3;
  sub_1004784F0(&qword_100976170, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_1004784F0(&qword_1009761E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_100473F78(Swift::Int result, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v8 = result;
  v9 = *(*v7 + 16);
  v10 = *(*v7 + 24);
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v11 = a6;
    sub_10047149C(v9 + 1, a4, a5);
  }

  else
  {
    if (v10 > v9)
    {
      v12 = a2;
      result = a7();
      a2 = v12;
      goto LABEL_12;
    }

    v11 = a6;
    sub_1004769B0(v9 + 1, a4, a5);
  }

  v13 = *v7;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v8);
  result = Hasher._finalize()();
  v14 = -1 << *(v13 + 32);
  a2 = result & ~v14;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    v16 = result & ~v14;
    result = v11(0);
    a2 = v16;
    while (*(*(v13 + 48) + 8 * a2) != v8)
    {
      a2 = (a2 + 1) & v15;
      if (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v17 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v17 + 48) + 8 * a2) = v8;
  v18 = *(v17 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v17 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1004740FC(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1004716E4(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_10036CB54();
      a2 = v7;
      goto LABEL_12;
    }

    sub_100476BC8(v5 + 1);
  }

  v8 = *v3;
  result = static Hasher._hash(seed:_:)();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10047421C(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = type metadata accessor for CodableError();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100471908(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_10036CC94();
      goto LABEL_12;
    }

    sub_100476DB8(v10 + 1);
  }

  v12 = *v3;
  sub_1004784F0(&qword_10097F080, &type metadata accessor for CodableError, &protocol conformance descriptor for CodableError);
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_1004784F0(&qword_10097F088, &type metadata accessor for CodableError, &protocol conformance descriptor for CodableError);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1004744C0(uint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_100471C64(v8 + 1);
    }

    else
    {
      if (v9 > v8)
      {
        result = sub_10036CDFC();
        goto LABEL_68;
      }

      sub_1004770D4(v8 + 1);
    }

    v10 = *v4;
    Hasher.init(_seed:)();
    Data.hash(into:)();
    result = Hasher._finalize()();
    v11 = v10 + 56;
    v12 = -1 << *(v10 + 32);
    a3 = result & ~v12;
    if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v13 = ~v12;
      if (v7)
      {
        v14 = 0;
      }

      else
      {
        v14 = a2 == 0xC000000000000000;
      }

      v15 = !v14;
      v48 = v15;
      v16 = a2 >> 62;
      v17 = __OFSUB__(HIDWORD(v7), v7);
      v45 = v17;
      v44 = HIDWORD(v7) - v7;
      v46 = v13;
      v47 = BYTE6(a2);
      v41 = v7;
      v42 = a2;
      while (1)
      {
        v18 = (*(v10 + 48) + 16 * a3);
        v20 = *v18;
        v19 = v18[1];
        v21 = v19 >> 62;
        if (v19 >> 62 == 3)
        {
          break;
        }

        if (v21 > 1)
        {
          if (v21 != 2)
          {
            goto LABEL_32;
          }

          v31 = *(v20 + 16);
          v30 = *(v20 + 24);
          v29 = __OFSUB__(v30, v31);
          v25 = v30 - v31;
          if (v29)
          {
            goto LABEL_73;
          }
        }

        else if (v21)
        {
          LODWORD(v25) = HIDWORD(v20) - v20;
          if (__OFSUB__(HIDWORD(v20), v20))
          {
            goto LABEL_74;
          }

          v25 = v25;
        }

        else
        {
          v25 = BYTE6(v19);
        }

LABEL_33:
        if (v16 > 1)
        {
          if (v16 != 2)
          {
            if (!v25)
            {
              goto LABEL_67;
            }

            goto LABEL_20;
          }

          v28 = *(v7 + 16);
          v27 = *(v7 + 24);
          v29 = __OFSUB__(v27, v28);
          v26 = v27 - v28;
          if (v29)
          {
            __break(1u);
LABEL_71:
            __break(1u);
            goto LABEL_72;
          }
        }

        else
        {
          v26 = v47;
          if (v16)
          {
            v26 = v44;
            if (v45)
            {
              goto LABEL_71;
            }
          }
        }

        if (v25 == v26)
        {
          if (v25 < 1)
          {
            goto LABEL_67;
          }

          if (v21 > 1)
          {
            if (v21 == 2)
            {
              v33 = *(v20 + 16);
              v32 = *(v20 + 24);
              sub_100294008(v20, v19);
              v34 = __DataStorage._bytes.getter();
              if (v34)
              {
                v35 = __DataStorage._offset.getter();
                if (__OFSUB__(v33, v35))
                {
                  goto LABEL_77;
                }

                v34 += v33 - v35;
              }

              if (__OFSUB__(v32, v33))
              {
                goto LABEL_76;
              }

              goto LABEL_63;
            }

            *&v50[6] = 0;
            *v50 = 0;
            sub_100294008(v20, v19);
          }

          else
          {
            if (v21)
            {
              if (v20 >> 32 < v20)
              {
                goto LABEL_75;
              }

              sub_100294008(v20, v19);
              v34 = __DataStorage._bytes.getter();
              if (v34)
              {
                v36 = __DataStorage._offset.getter();
                if (__OFSUB__(v20, v36))
                {
                  goto LABEL_78;
                }

                v34 += v20 - v36;
              }

LABEL_63:
              __DataStorage._length.getter();
              v7 = v41;
              a2 = v42;
              sub_100330108(v34, v41, v42, v50);
              result = sub_100026AC0(v20, v19);
              v11 = v10 + 56;
              v13 = v46;
              if (v50[0])
              {
                goto LABEL_67;
              }

              goto LABEL_20;
            }

            *v50 = v20;
            *&v50[8] = v19;
            v50[10] = BYTE2(v19);
            v50[11] = BYTE3(v19);
            v50[12] = BYTE4(v19);
            v50[13] = BYTE5(v19);
            sub_100294008(v20, v19);
            v13 = v46;
          }

          sub_100330108(v50, v7, a2, &v49);
          result = sub_100026AC0(v20, v19);
          if (v49)
          {
            goto LABEL_67;
          }
        }

LABEL_20:
        a3 = (a3 + 1) & v13;
        if (((*(v11 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
        {
          goto LABEL_68;
        }
      }

      if (v20)
      {
        v22 = 0;
      }

      else
      {
        v22 = v19 == 0xC000000000000000;
      }

      v24 = !v22 || v16 < 3;
      if (((v24 | v48) & 1) == 0)
      {
LABEL_67:
        result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        goto LABEL_68;
      }

LABEL_32:
      v25 = 0;
      goto LABEL_33;
    }
  }

LABEL_68:
  v37 = *v43;
  *(*v43 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v38 = (*(v37 + 48) + 16 * a3);
  *v38 = v7;
  v38[1] = a2;
  v39 = *(v37 + 16);
  v29 = __OFADD__(v39, 1);
  v40 = v39 + 1;
  if (v29)
  {
LABEL_72:
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
  }

  *(v37 + 16) = v40;
  return result;
}

void sub_100474938(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100471ED8(v6 + 1, &unk_100977250, &qword_1007FA150);
  }

  else
  {
    if (v7 > v6)
    {
      sub_10036CF58();
      goto LABEL_12;
    }

    sub_100477310(v6 + 1, &unk_100977250, &qword_1007FA150);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1000276B4(0, &qword_100975088, CNContact_ptr);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_100474AC8(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100471ED8(v6 + 1, &qword_100977360, &qword_1007FA1E0);
  }

  else
  {
    if (v7 > v6)
    {
      sub_10036CF80();
      goto LABEL_12;
    }

    sub_100477310(v6 + 1, &qword_100977360, &qword_1007FA1E0);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for SDAirDropSendConnection(0);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

unint64_t sub_100474C48(unint64_t result, char a2)
{
  v3 = *(*v2 + 16);
  v4 = *(*v2 + 24);
  if (v4 <= v3 || (a2 & 1) == 0)
  {
    if (a2)
    {
      sub_1004720F8(v3 + 1);
      goto LABEL_8;
    }

    if (v4 <= v3)
    {
      sub_10047751C(v3 + 1);
LABEL_8:
      v6 = *v2;
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()() & ~(-1 << *(v6 + 32));
      if ((*(v6 + ((result >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> result))
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    }

    v5 = result;
    sub_10036D0D4();
    result = v5;
  }

LABEL_9:
  v7 = *v2;
  *(*v2 + 8 * (result >> 6) + 56) |= 1 << result;
  v8 = *(v7 + 16);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (!v9)
  {
    *(v7 + 16) = v10;
    return result;
  }

  __break(1u);
LABEL_12:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100474D74(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10047232C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_10036D1E0();
      goto LABEL_12;
    }

    sub_100477714(v6 + 1);
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  Task.hash(into:)();
  result = Hasher._finalize()();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    do
    {
      sub_10028088C(&qword_10097F0D8, &unk_100804CC0);

      v11 = static Task.== infix(_:_:)();

      if (v11)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v12 = *v16;
  *(*v16 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v5;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100474F38(void *a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = (&v27[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(*v4 + 16);
  v14 = *(*v4 + 24);
  if (v14 > v13 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v26 = v10;
    sub_100472598(v13 + 1);
  }

  else
  {
    if (v14 > v13)
    {
      sub_10036D330();
      goto LABEL_12;
    }

    v26 = v10;
    sub_100477958(v13 + 1);
  }

  v15 = *v4;
  Hasher.init(_seed:)();
  sub_10032D050(v27);
  v16 = Hasher._finalize()();
  v17 = -1 << *(v15 + 32);
  a2 = v16 & ~v17;
  if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v19 = *(v9 + 72);
    do
    {
      sub_100478538(*(v15 + 48) + v19 * a2, v12, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
      v20 = sub_100331B60(v12, a1);
      sub_1003DEB88(v12, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
      if (v20)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v21 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_10000ECA8(a1, *(v21 + 48) + *(v9 + 72) * a2, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    *(v21 + 16) = v25;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10047517C(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint(0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v27[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*v4 + 16);
  v14 = *(*v4 + 24);
  if (v14 > v13 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v26 = v10;
    sub_100472834(v13 + 1);
  }

  else
  {
    if (v14 > v13)
    {
      sub_10036D53C();
      goto LABEL_12;
    }

    v26 = v10;
    sub_100477BC0(v13 + 1);
  }

  v15 = *v4;
  Hasher.init(_seed:)();
  sub_10032CD80(v27);
  v16 = Hasher._finalize()();
  v17 = -1 << *(v15 + 32);
  a2 = v16 & ~v17;
  if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v19 = *(v9 + 72);
    do
    {
      sub_100478538(*(v15 + 48) + v19 * a2, v12, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
      v20 = sub_100331670();
      sub_1003DEB88(v12, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
      if (v20)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v21 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_10000ECA8(a1, *(v21 + 48) + *(v9 + 72) * a2, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    *(v21 + 16) = v25;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1004753C0(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = type metadata accessor for SFAirDropInvocations.ChangeDiscoverability.Parameters.DiscoverabilityMode();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100472AD0(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_10036D748();
      goto LABEL_12;
    }

    sub_100477E28(v10 + 1);
  }

  v12 = *v3;
  sub_1004784F0(&qword_100975118, &type metadata accessor for SFAirDropInvocations.ChangeDiscoverability.Parameters.DiscoverabilityMode, &protocol conformance descriptor for SFAirDropInvocations.ChangeDiscoverability.Parameters.DiscoverabilityMode);
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_1004784F0(&qword_10097F0D0, &type metadata accessor for SFAirDropInvocations.ChangeDiscoverability.Parameters.DiscoverabilityMode, &protocol conformance descriptor for SFAirDropInvocations.ChangeDiscoverability.Parameters.DiscoverabilityMode);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_100475664(Swift::Int result, Swift::Int a2, Swift::Int a3, Swift::Int a4, unint64_t a5, char a6, uint64_t *a7, uint64_t *a8, uint64_t a9, uint64_t (*a10)(void))
{
  v15 = result;
  v16 = *(*v10 + 16);
  v17 = *(*v10 + 24);
  if (v17 > v16 && (a6 & 1) != 0)
  {
    goto LABEL_22;
  }

  if (a6)
  {
    sub_100472E2C(v16 + 1, a7, a8);
  }

  else
  {
    if (v17 > v16)
    {
      result = a10();
      goto LABEL_22;
    }

    sub_100478144(v16 + 1, a7, a8);
  }

  v18 = *v10;
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v19 = v18 + 56;
  v20 = -1 << *(v18 + 32);
  a5 = result & ~v20;
  if ((*(v18 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
  {
    v21 = ~v20;
    v22 = *(v18 + 48);
    while (1)
    {
      v23 = (v22 + 32 * a5);
      v24 = v23[2];
      v25 = v23[3];
      v26 = *v23 == v15 && v23[1] == a2;
      if (v26 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
      {
        if (v24 == a3 && v25 == a4)
        {
          break;
        }

        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if (result)
        {
          break;
        }
      }

      a5 = (a5 + 1) & v21;
      if (((*(v19 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

LABEL_22:
  v28 = *v33;
  *(*v33 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v29 = (*(v28 + 48) + 32 * a5);
  *v29 = v15;
  v29[1] = a2;
  v29[2] = a3;
  v29[3] = a4;
  v30 = *(v28 + 16);
  v31 = __OFADD__(v30, 1);
  v32 = v30 + 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v28 + 16) = v32;
  }

  return result;
}

uint64_t sub_10047584C(uint64_t a1)
{
  v2 = v1;
  v33 = type metadata accessor for SFAirDropReceive.AskRequest.ItemInfo();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_10028088C(&unk_10097A740, &qword_100804CE0);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_1004784F0(&qword_10097F100, &type metadata accessor for SFAirDropReceive.AskRequest.ItemInfo, &protocol conformance descriptor for SFAirDropReceive.AskRequest.ItemInfo);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v2 = v7;
  }

  return result;
}