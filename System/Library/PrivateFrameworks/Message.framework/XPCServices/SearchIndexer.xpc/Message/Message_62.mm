uint64_t sub_1003FE864(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), void (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t *))
{
  v9 = v5[1];
  v10 = *(v9 + 16);
  v11 = *v5;
  if (!*v5)
  {
    if (!v10)
    {
      goto LABEL_16;
    }

    return sub_1003FEBBC(a1, a3);
  }

  swift_beginAccess();
  if ((*(v11 + 16) & 0x3FLL) == (*(v11 + 24) & 0x3FLL))
  {
    if (!v10)
    {
      goto LABEL_16;
    }
  }

  else if (v10 <= sub_1004A4764())
  {
LABEL_16:
    v18 = sub_1003FEBBC(a1, a3);
    a4();
    return v18;
  }

  result = swift_isUniquelyReferenced_native();
  v15 = *v5;
  if ((result & 1) == 0)
  {
    if (!v15)
    {
      goto LABEL_20;
    }

    v16 = sub_1004A4774();

    *v5 = v16;
    v15 = v16;
  }

  if (v15)
  {
    result = a5(a2, v15 + 16, v15 + 32, v5);
    v17 = a1 + 1;
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (v17 >= a1)
    {
      sub_1003FEEC4(a1, v17, v9, (v15 + 16), v15 + 32);
      return sub_1003FEBBC(a1, a3);
    }

    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1003FE9D8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10046B5C8(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(type metadata accessor for ParameterValue(0) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_1002FC114(v11, a2);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1003FEAF4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10046B630(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 24 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 56), 24 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1003FEBBC(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = a2(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 24 * a1;
    v10 = *(v9 + 32);
    memmove((v9 + 32), (v9 + 56), 24 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
    return v10;
  }

  return result;
}

unint64_t sub_1003FEC78(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v13 = sub_1004A46F4();
  sub_1004A4744();
  if (v13)
  {
    v6 = sub_1004A4704();
    while (1)
    {
      result = sub_1004A4724();
      if (v8)
      {
LABEL_20:
        __break(1u);
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      if (result >= *(*(a4 + 8) + 16))
      {
        goto LABEL_18;
      }

      sub_1004A6E94();
      swift_beginAccess();
      sub_1004A6EA4();
      result = sub_1004A6F14();
      v9 = 1 << *a2;
      if (__OFSUB__(v9, 1))
      {
        goto LABEL_19;
      }

      v10 = (v9 - 1) & result;
      if (v5 >= v6)
      {
        break;
      }

      if (v10 < v6)
      {
        goto LABEL_12;
      }

LABEL_13:
      sub_1004A4724();
      v5 = a1;
      sub_1004A4714();
LABEL_3:
      sub_1004A4744();
    }

    if (v10 < v6)
    {
      goto LABEL_3;
    }

LABEL_12:
    if (v5 < v10)
    {
      goto LABEL_3;
    }

    goto LABEL_13;
  }

  return sub_1004A4714();
}

void sub_1003FEEC4(uint64_t result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    goto LABEL_54;
  }

  if (v6 >= 1)
  {
    v9 = *(a3 + 16);
    v24 = a2 - result;
    if (result < (v9 - v6) / 2)
    {
      if (sub_1004A4754() / 3 > result)
      {
        if (result < 0)
        {
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        if (v9 < result)
        {
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        if (result)
        {
          v10 = 0;
          while (1)
          {
            sub_1004A6E94();
            swift_beginAccess();
            sub_1004A6EA4();
            sub_1004A6F14();
            if (__OFSUB__(1 << *a4, 1))
            {
              break;
            }

            if (sub_1004A46F4())
            {
              while (1)
              {
                v11 = sub_1004A4724();
                if ((v12 & 1) == 0 && v11 == v10)
                {
                  break;
                }

                sub_1004A4744();
              }
            }

            v6 = v24;
            if (__OFADD__(v10, v24))
            {
              goto LABEL_51;
            }

            ++v10;
            sub_1004A4734();
            if (v10 == result)
            {
              goto LABEL_17;
            }
          }

          __break(1u);
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        goto LABEL_17;
      }

      sub_1004A46F4();
      v18 = sub_1004A4724();
      if ((v19 & 1) != 0 || v18 >= result)
      {
LABEL_29:
        sub_1004A4744();
LABEL_17:
        v13 = a4[1];
        if (__OFSUB__(v13 >> 6, v6))
        {
LABEL_56:
          __break(1u);
          goto LABEL_57;
        }

        v14 = 1 << *a4;
        v15 = __OFSUB__(v14, 1);
        v16 = v14 - 1;
        if (v15)
        {
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

        v17 = (v16 & (((v13 >> 6) - v6) >> 63)) + (v13 >> 6) - v6;
        if (v17 < v16)
        {
          v16 = 0;
        }

        a4[1] = a4[1] & 0x3FLL | ((v17 - v16) << 6);
        return;
      }

      if (!__OFADD__(v18, v6))
      {
        sub_1004A4734();
        goto LABEL_29;
      }

      __break(1u);
LABEL_35:
      sub_1004A46F4();
      v20 = sub_1004A4724();
      if ((v21 & 1) == 0 && v20 >= v5)
      {
        if (__OFSUB__(v20, v6))
        {
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
          goto LABEL_55;
        }

        sub_1004A4734();
      }

      sub_1004A4744();
      return;
    }

    v5 = a2;
    if (__OFSUB__(v9, a2))
    {
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    if ((v9 - a2) >= sub_1004A4754() / 3)
    {
      goto LABEL_35;
    }

    if (v9 < v5)
    {
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    if (v5 < 0)
    {
LABEL_61:
      __break(1u);
      return;
    }

    if (v9 != v5)
    {
      while (1)
      {
        sub_1004A6E94();
        swift_beginAccess();
        sub_1004A6EA4();
        sub_1004A6F14();
        if (__OFSUB__(1 << *a4, 1))
        {
          break;
        }

        if (sub_1004A46F4())
        {
          while (1)
          {
            v22 = sub_1004A4724();
            if ((v23 & 1) == 0 && v22 == v5)
            {
              break;
            }

            sub_1004A4744();
          }
        }

        sub_1004A4734();
        if (++v5 == v9)
        {
          return;
        }
      }

      goto LABEL_53;
    }
  }
}

uint64_t sub_1003FF33C(uint64_t a1)
{
  v2 = type metadata accessor for ParameterValue(0);
  v31 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v28 - v6;
  v32 = sub_10000C9C0(&qword_1005D8480, &qword_1004F4968);
  v8 = *(v32 - 8);
  __chkstk_darwin(v32);
  v10 = (&v28 - v9);
  v34 = 0;
  v35 = _swiftEmptyArrayStorage;
  v11 = *(a1 + 16);
  sub_1003FE66C(v11, 0, sub_100134BC4, sub_100475620);
  v33 = _swiftEmptyArrayStorage;
  sub_1003E54FC(0, v11, 0);
  v12 = v33;
  v30 = v11;
  if (!v11)
  {
    return v34;
  }

  v13 = 0;
  v29 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v28 = *(v8 + 72);
  while (1)
  {
    sub_10000E268(v29 + v28 * v13, v10, &qword_1005D8480, &qword_1004F4968);
    v15 = *v10;
    v14 = v10[1];
    sub_1002FC114(v10 + *(v32 + 48), v7);
    v16 = v34;
    v17 = v35;
    v18 = v35[2];
    if (!v34)
    {
      break;
    }

    sub_10047564C(v15, v14, (v17 + 4), v18, (v16 + 16), v16 + 32);
    v20 = v19;
    v22 = v21;

    if ((v20 & 1) == 0)
    {
      goto LABEL_21;
    }

LABEL_15:
    sub_10046A70C(v15, v14, v22);
    sub_1002FC178(v7, v4);
    v33 = v12;
    v27 = v12[2];
    v26 = v12[3];
    if (v27 >= v26 >> 1)
    {
      sub_1003E54FC(v26 > 1, v27 + 1, 1);

      v12 = v33;
    }

    else
    {
    }

    ++v13;
    sub_1002FC1DC(v7);
    v12[2] = v27 + 1;
    sub_1002FC114(v4, v12 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v27);
    if (v13 == v30)
    {
      return v34;
    }
  }

  if (!v18)
  {
LABEL_14:
    v22 = 0;
    goto LABEL_15;
  }

  v24 = v35 + 5;
  while (1)
  {
    result = *(v24 - 1);
    if (result == v15 && *v24 == v14)
    {
      break;
    }

    result = sub_1004A6D34();
    if (result)
    {
      break;
    }

    v24 += 2;
    if (!--v18)
    {
      goto LABEL_14;
    }
  }

LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_1003FF690()
{
  result = qword_1005DC780;
  if (!qword_1005DC780)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ExceededLiteralSizeLimitError, &type metadata for ExceededLiteralSizeLimitError, v0, v1);
    atomic_store(result, &qword_1005DC780);
  }

  return result;
}

uint64_t sub_1003FF6E4()
{

  sub_10005132C(*(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224), *(v0 + 232), *(v0 + 240), *(v0 + 248), *(v0 + 256), *(v0 + 264), *(v0 + 272), *(v0 + 280), *(v0 + 288), *(v0 + 296), *(v0 + 304), *(v0 + 312), *(v0 + 320), *(v0 + 328));

  return _swift_deallocObject(v0, 344, 7);
}

void sub_1003FF878(uint64_t a1)
{
  v2 = type metadata accessor for ParameterValue(0);
  v74 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v4 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v68 - v6;
  v76 = sub_10000C9C0(&qword_1005DBC48, &qword_1004FE578);
  v8 = *(v76 - 8);
  __chkstk_darwin(v76);
  v75 = &v68 - v9;
  v91 = 0;
  v92 = _swiftEmptyArrayStorage;
  v10 = *(a1 + 16);
  sub_1003FE66C(v10, 0, sub_1003E555C, sub_10046B16C);
  v90 = _swiftEmptyArrayStorage;
  sub_1002E5340(0, v10, 0);
  v11 = v90;
  v73 = v10;
  if (!v10)
  {
    return;
  }

  v12 = 0;
  v72 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v13 = *(v8 + 72);
  v70 = v4;
  v71 = v13;
  v69 = v7;
  while (1)
  {
    v79 = v11;
    v14 = v75;
    sub_10000E268(v72 + v71 * v12, v75, &qword_1005DBC48, &qword_1004FE578);
    v15 = *(v76 + 48);
    v16 = *v14;
    v18 = *(v14 + 8);
    v17 = *(v14 + 12);
    v83 = *(v14 + 16);
    v19 = *(v14 + 20);
    v20 = v7;
    v21 = *(v14 + 22);
    sub_1002FC114(v14 + v15, v20);
    v22 = v91;
    v84 = v21;
    v85 = v19;
    v81 = v17;
    if (v91)
    {
      v68 = v92;
      v78 = v8;
      sub_1004A6E94();
      swift_beginAccess();
      v23 = v21 | (v19 << 8);
      sub_1004A6EA4();
      v24 = sub_1004A6F14();
      v25 = 1 << *(v22 + 16);
      v26 = __OFSUB__(v25, 1);
      v27 = v25 - 1;
      if (v26)
      {
        __break(1u);
      }

      else
      {
        v80 = v18;
        v28 = v27 & v24;
        v29 = sub_1004A46F4();
        *&v97 = v22 + 16;
        *(&v97 + 1) = v22 + 32;
        *&v98 = v28;
        *(&v98 + 1) = v29;
        *&v99 = v30;
        *(&v99 + 1) = v31;
        v100 = 0;
        v32 = sub_1004A4724();
        LOBYTE(v28) = v33;
        v34 = v98;
        v86 = v97;
        v87 = v98;
        v88 = v99;
        v89 = v100;
        v82 = v22;

        if (v28)
        {
          v7 = v69;
          v35 = v70;
LABEL_39:
          v11 = v79;

          v8 = v78;
          v18 = v80;
          v40 = v84;
          v39 = v85;
          goto LABEL_42;
        }

        v77 = v12;
        v52 = v68 + 4;
        v53 = v81 - v80;
        v54 = v23 + v80;
        v55 = v32;
        while (1)
        {
          v57 = &v52[3 * v55];
          v58 = *(v57 + 2);
          v59 = *(v57 + 3);
          if (v59 - v58 == v53)
          {
            v60 = *v57;
            v61 = *(v57 + 10);
            v62 = *(v57 + 22);
            v63 = *(v57 + 4) == v83 && v61 == v85;
            v64 = v63 && v62 == v84;
            if (v64 && v60 == v16)
            {
              break;
            }

            swift_beginAccess();
            if (!memcmp((*(v60 + 24) + (v62 | (v61 << 8)) + v58), (*(v16 + 24) + v54), v59 - v58))
            {
              break;
            }
          }

          sub_1004A4744();
          v93 = v86;
          v94 = v87;
          v95 = v88;
          v96 = v89;
          v34 = v87;
          v55 = sub_1004A4724();
          if (v56)
          {
            v7 = v69;
            v35 = v70;
            v12 = v77;
            goto LABEL_39;
          }
        }
      }

      goto LABEL_50;
    }

    v36 = v92[2];
    if (v36)
    {
      break;
    }

    v34 = 0;
    v40 = v84;
    v39 = v85;
    v7 = v69;
    v35 = v70;
    v11 = v79;
LABEL_42:
    v8 = v8 & 0xFF00000000000000 | v83 | (v39 << 32) | (v40 << 48);
    sub_10046A8DC(v16, v18 | (v81 << 32), v8, v34);
    sub_1002FC178(v7, v35);
    v90 = v11;
    v67 = v11[2];
    v66 = v11[3];
    if (v67 >= v66 >> 1)
    {
      sub_1002E5340((v66 > 1), v67 + 1, 1);

      v11 = v90;
    }

    else
    {
    }

    ++v12;
    sub_1002FC1DC(v7);
    v11[2] = v67 + 1;
    sub_1002FC114(v35, v11 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v67);
    if (v12 == v73)
    {
      return;
    }
  }

  v77 = v12;
  v78 = v8;
  v37 = v17 - v18;
  v38 = v92;
  swift_beginAccess();
  v40 = v84;
  v39 = v85;
  v41 = v18;
  v42 = v38 + 54;
  v80 = v41;
  v82 = (v84 | (v85 << 8)) + v41;
  while (1)
  {
    v43 = *(v42 - 14);
    v44 = *(v42 - 10);
    if (v44 - v43 == v37)
    {
      v45 = *(v42 - 22);
      v46 = *(v42 - 1);
      v47 = *v42;
      v48 = *(v42 - 6) == v83 && v46 == v39;
      v49 = v48 && v47 == v40;
      if (v49 && v45 == v16)
      {
        break;
      }

      swift_beginAccess();
      v51 = memcmp((*(v45 + 24) + (v47 | (v46 << 8)) + v43), (*(v16 + 24) + v82), v44 - v43);
      v40 = v84;
      v39 = v85;
      if (!v51)
      {
        break;
      }
    }

    v42 += 24;
    if (!--v36)
    {
      v34 = 0;
      v7 = v69;
      v35 = v70;
      v12 = v77;
      v8 = v78;
      v11 = v79;
      v18 = v80;
      goto LABEL_42;
    }
  }

LABEL_50:
  __break(1u);
}

uint64_t sub_1003FFE70()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1003FFF20()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1003FFF58@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  result = (*(v3 + 16))(a1, *a2, a2[1]);
  if (!v4)
  {
    *a3 = result;
    a3[1] = v7;
  }

  return result;
}

double sub_1003FFF94@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v7 = *(v4 + 16);
  v9[0] = a2;
  v9[1] = a3;
  v7(&v10, a1, v9);
  if (!v5)
  {
    result = *&v10;
    *a4 = v10;
  }

  return result;
}

uint64_t sub_1003FFFE0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100400018()
{

  return _swift_deallocObject(v0, 48, 7);
}

double sub_100400138@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(v4 + 16);
  v10[0] = a2;
  v10[1] = a3;
  v7(&v11, a1, v10);
  if (!v5)
  {
    v9 = v12;
    result = *&v11;
    *a4 = v11;
    *(a4 + 16) = v9;
  }

  return result;
}

uint64_t sub_10040018C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ParameterValue(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double sub_1004001F0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(v4 + 16);
  v11[0] = a2;
  v11[1] = a3;
  v7(&v12, a1, v11);
  if (!v5)
  {
    v9 = v13;
    v10 = v14;
    result = *&v12;
    *a4 = v12;
    *(a4 + 16) = v9;
    *(a4 + 24) = v10;
  }

  return result;
}

void *sub_100400264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = *(v4 + 16);
  v10[0] = a2;
  v10[1] = a3;
  result = v7(v11, a1, v10);
  if (!v5)
  {
    v9 = v11[1];
    *a4 = v11[0];
    a4[1] = v9;
  }

  return result;
}

void *sub_1004002B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = *(v4 + 16);
  v9[0] = a2;
  v9[1] = a3;
  result = v7(&v10, a1, v9);
  if (!v5)
  {
    *a4 = v10;
  }

  return result;
}

void *sub_100400314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(v4 + 16);
  v10[0] = a2;
  v10[1] = a3;
  result = v7(&v11, a1, v10);
  if (!v5)
  {
    v9 = v12;
    *a4 = v11;
    *(a4 + 8) = v9;
  }

  return result;
}

uint64_t sub_1004003F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Command(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t *sub_100400454(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v8 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v15 = a3;
      return swift_willThrow();
    }

    v10 = result;
    v11 = *result;
    v12 = result[1];
    v13 = *(result + 4);
    v16 = *(result + 22);
    v17 = *(result + 10);

    sub_1004007F8(v10, v8, a3, a5, &v18);
    if (v7)
    {

      *v10 = v11;
      *(v10 + 8) = v12;
      *(v10 + 16) = v13;
      *(v10 + 20) = v17;
      *(v10 + 22) = v16;
      return swift_willThrow();
    }

    return v18;
  }

  return result;
}

uint64_t *sub_10040057C(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    v8 = result;
    if (v6 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v15 = a3;
    }

    else
    {
      v9 = *result;
      v10 = result[1];
      v11 = *(result + 4);
      v12 = *(result + 10);
      v13 = *(result + 22);

      v14 = sub_100400D50(v8, v6, a3);
      if (!v5)
      {
LABEL_13:
        v17 = v14;

        return v17;
      }

      *v8 = v9;
      *(v8 + 8) = v10;
      *(v8 + 16) = v11;
      *(v8 + 20) = v12;
      *(v8 + 22) = v13;
    }

    swift_willThrow();
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {
    }

    else
    {

      swift_errorRetain();
      if ((swift_dynamicCast() & 1) == 0)
      {
      }
    }

    if (v6 < a3)
    {

      v14 = sub_100400EE8(v8, v6, a3);
      goto LABEL_13;
    }

    sub_1003A5228();
    swift_allocError();
    *v16 = a3;
    swift_willThrow();
  }

  __break(1u);
  return result;
}

uint64_t sub_1004007F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  result = sub_10046B71C(0x22uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (!v5)
  {
    v13 = sub_10040057C(a1, a2, a3, v12, a4);
    sub_10046B71C(0x2DuLL, 0xE100000000000000, 0, 0, a1, a2, a3);
    v14 = sub_100400FE4(a1, a2, a3);
    sub_10046B71C(0x2DuLL, 0xE100000000000000, 0, 0, a1, a2, a3);
    v15 = sub_10042D860(a1, a2, a3);
    sub_10046B71C(0x20uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
    v16 = sub_10042D87C(a1, a2, a3);
    sub_10046B71C(0x3AuLL, 0xE100000000000000, 0, 0, a1, a2, a3);
    v17 = sub_10042D87C(a1, a2, a3);
    sub_10046B71C(0x3AuLL, 0xE100000000000000, 0, 0, a1, a2, a3);
    v23 = sub_10042D87C(a1, a2, a3);
    result = sub_10046B71C(0x20uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
    v22 = a2 + 1;
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else
    {
      if (v22 < a3)
      {

        v21 = sub_1004011E0(a1, v22, a3, v16);
        goto LABEL_15;
      }

      sub_1003A5228();
      swift_allocError();
      *v18 = a3;
      swift_willThrow();
      swift_errorRetain();
      sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
      if (swift_dynamicCast())
      {

LABEL_11:

        if (v22 >= a3)
        {
          sub_1003A5228();
          swift_allocError();
          *v19 = a3;
          return swift_willThrow();
        }

        v21 = sub_10040139C(a1, v22, a3, v16);
LABEL_15:

        sub_10046B71C(0x22uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
        if ((v13 - 4) >= 0xFFFFFFFFFFFFFFE1 && (v14 - 13) >= 0xFFFFFFFFFFFFFFF4 && v16 <= 0x17 && v17 <= 0x3B && v23 <= 0x3C && v21 - 1441 >= 0xFFFFFFFFFFFFF4BFLL && (v15 - 0x2000) >= 0xFFFFFFFFFFFF0001)
        {
          v24[0] = v15;
          v24[1] = v14;
          v24[2] = v13;
          v24[3] = v16;
          v24[4] = v17;
          v24[5] = v23;
          v24[6] = v21;
          result = _s12NIOIMAPCore217ServerMessageDateVyA2C10ComponentsVcfC_0(v24);
          *a5 = result;
          return result;
        }

        sub_1003A527C();
        swift_allocError();
        *v20 = 0xD000000000000016;
        v20[1] = 0x80000001004B0900;
        v20[2] = 0xD000000000000020;
        v20[3] = 0x80000001004B03C0;
        v20[4] = 167;
        return swift_willThrow();
      }

      swift_errorRetain();
      if (swift_dynamicCast())
      {

        goto LABEL_11;
      }
    }
  }

  return result;
}

uint64_t *sub_100400D50(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    v7 = result;
    if (v4 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v13 = a3;
    }

    else
    {
      v8 = *result;
      v9 = result[1];
      v10 = *(result + 4);
      v11 = *(result + 10);
      v12 = *(result + 22);

      sub_10046B71C(0x20uLL, 0xE100000000000000, 0, 0, v7, v4, a3);
      if (!v3)
      {

        return sub_10042D768(v7, a2, a3, 1);
      }

      *v7 = v8;
      *(v7 + 8) = v9;
      *(v7 + 16) = v10;
      *(v7 + 20) = v11;
      *(v7 + 22) = v12;
    }

    swift_willThrow();
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (!swift_dynamicCast())
    {
    }

    return sub_10042D768(v7, a2, a3, 1);
  }

  __break(1u);
  return result;
}

uint64_t *sub_100400EE8(uint64_t *result, uint64_t a2, uint64_t a3)
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

    sub_10042D57C(v6, v4, a3, 2, &v13);
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

uint64_t sub_100400FE4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v8 = __OFADD__(a2, 1);
  v9 = a2 + 1;
  if (!v8)
  {
    v33 = v7;
    v34 = v4;
    v35 = v5;
    v36 = v6;
    if (v9 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v16 = a3;
    }

    else
    {
      v10 = result;
      v11 = *result;
      v12 = *(result + 8);
      v13 = *(result + 16);
      v14 = *(result + 20);
      v4 = *(result + 22);
      sub_10046608C(result, &v28);
      if (!v3)
      {
        sub_10046C184(v28, v29, v30 | (v31 << 32) | (v32 << 48), 0xD000000000000020, 0x80000001004B03C0, 78);
        v18 = v17;
        v20 = v19;
        v21 = sub_1004A5814();
        v4 = sub_100431478(v21, v22);
        v24 = v23;

        if (v24)
        {
          v28 = 0;
          v29 = 0xE000000000000000;
          sub_1004A6724(21);

          v28 = 0xD000000000000013;
          v29 = 0x80000001004B0940;
          v37._countAndFlagsBits = v20;
          v37._object = v18;
          sub_1004A5994(v37);

          v25 = v28;
          v26 = v29;
          sub_1003A527C();
          swift_allocError();
          *v27 = v25;
          v27[1] = v26;
          v27[2] = 0xD000000000000020;
          v27[3] = 0x80000001004B03C0;
          v27[4] = 80;
          swift_willThrow();
        }

        else
        {
        }

        return v4;
      }

      *v10 = v11;
      *(v10 + 8) = v12;
      *(v10 + 16) = v13;
      *(v10 + 20) = v14;
      *(v10 + 22) = v4;
    }

    swift_willThrow();
    return v4;
  }

  __break(1u);
  return result;
}

unint64_t sub_1004011E0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_10046B71C(0x2BuLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (!v4)
  {
    v10 = sub_10042D860(a1, a2, a3);
    if ((v10 & 0x8000000000000000) == 0 && (v10 % 0x64 <= 0x3C ? (v11 = a4 <= 24) : (v11 = 0), v11))
    {
      return v10 % 0x64 + 60 * ((v10 - v10 % 0x64) / 100);
    }

    else
    {
      sub_1004A6724(32);

      v13._countAndFlagsBits = sub_1004A6CE4();
      sub_1004A5994(v13);

      v14._countAndFlagsBits = 0x64656C69616620;
      v14._object = 0xE700000000000000;
      sub_1004A5994(v14);
      sub_1003A527C();
      swift_allocError();
      *v12 = 0xD000000000000017;
      v12[1] = 0x80000001004B0920;
      v12[2] = 0xD000000000000020;
      v12[3] = 0x80000001004B03C0;
      v12[4] = 134;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_10040139C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_10046B71C(0x2DuLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (!v4)
  {
    v10 = sub_10042D860(a1, a2, a3);
    if ((v10 & 0x8000000000000000) == 0 && (v10 % 0x64 <= 0x3C ? (v11 = a4 <= 24) : (v11 = 0), v11))
    {
      return -(v10 % 0x64) - 60 * ((v10 - v10 % 0x64) / 100);
    }

    else
    {
      sub_1004A6724(32);

      v13._countAndFlagsBits = sub_1004A6CE4();
      sub_1004A5994(v13);

      v14._countAndFlagsBits = 0x64656C69616620;
      v14._object = 0xE700000000000000;
      sub_1004A5994(v14);
      sub_1003A527C();
      swift_allocError();
      *v12 = 0xD000000000000017;
      v12[1] = 0x80000001004B0920;
      v12[2] = 0xD000000000000020;
      v12[3] = 0x80000001004B03C0;
      v12[4] = 143;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t *sub_10040155C(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v8 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v18 = a3;
      return swift_willThrow();
    }

    v10 = result;
    v11 = *result;
    v12 = result[1];
    v13 = *(result + 4);
    v19 = *(result + 22);
    v20 = *(result + 10);

    sub_100401A28(v10, v8, a3, a4, a5, a6, a7, &v21);
    if (v7)
    {

      *v10 = v11;
      *(v10 + 8) = v12;
      *(v10 + 16) = v13;
      *(v10 + 20) = v20;
      *(v10 + 22) = v19;
      return swift_willThrow();
    }

    return v21;
  }

  return result;
}

uint64_t *sub_100401688@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v9 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v21 = a3;
    }

    else
    {
      v15 = result;
      v16 = *result;
      v17 = result[1];
      v34 = *(result + 10);
      v35 = *(result + 4);
      v33 = *(result + 22);

      v18 = sub_10041ED48(v15, v9, a3, a4, a5, a6, a7);
      if (!v8)
      {
        v31 = v18;
        if (v9 + 1 < a3)
        {
          v29 = v19;
          v30 = v20;
          sub_100469DF8(v15);

          v23 = sub_10041F1D8(v15, v9 + 1, a3, a4, a5, a6, a7);
          v25 = v24;
          v26 = v23;
          v28 = v27;

          *a8 = v31;
          *(a8 + 8) = v29;
          *(a8 + 16) = v30;
          *(a8 + 20) = WORD2(v30);
          *(a8 + 22) = BYTE6(v30);
          *(a8 + 24) = v26;
          *(a8 + 32) = v25;
          *(a8 + 40) = v28;
          *(a8 + 46) = BYTE6(v28);
          *(a8 + 44) = WORD2(v28);
          return result;
        }

        sub_1003A5228();
        swift_allocError();
        *v22 = a3;
        swift_willThrow();
      }

      *v15 = v16;
      *(v15 + 8) = v17;
      *(v15 + 16) = v35;
      *(v15 + 20) = v34;
      *(v15 + 22) = v33;
    }

    return swift_willThrow();
  }

  return result;
}

uint64_t sub_100401A28@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  result = sub_10046B71C(0x28uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (!v8)
  {
    v25 = 0;
    *&v26 = _swiftEmptyArrayStorage;
    *(&v26 + 1) = _swiftEmptyArrayStorage;
    sub_100401688(a1, a2, a3, a4, a5, a6, a7, v27);
    v18 = v27[0];
    v24 = v27[1];
    v23 = v31;
    v21 = v32 | ((v33 | (v34 << 16)) << 32);
    v22 = v28 | (v29 << 32) | (v30 << 48);

    result = sub_1003FC71C(v19, v23, v21, v18, v24, v22);
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else if (a2 + 1 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v20 = a3;

      swift_willThrow();

      sub_1004021BC(v27);
    }

    else
    {
      swift_retain_n();

      sub_100467BC8(a1, a2 + 1, a3, &v25, a4, a5, a6, a7);

      sub_10046B71C(0x29uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
      result = sub_1004021BC(v27);
      *a8 = v25;
      *(a8 + 8) = v26;
    }
  }

  return result;
}

uint64_t *sub_100401CE4(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    if (v9 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v23 = a3;
    }

    else
    {
      v11 = result;
      v12 = *result;
      v13 = result[1];
      v57 = *(result + 10);
      v58 = *(result + 4);
      v56 = *(result + 22);
      sub_10000C9C0(&qword_1005DC7A8, &qword_1005099C0);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_1004CEAA0;
      v16 = v12;

      v17 = sub_10041ED48(v11, v9, a3, a4, a5, a6, a7);
      if (v7)
      {

        *(v8 + 16) = 0;

        v20 = v57;
        v21 = v58;
        v22 = v56;
      }

      else
      {
        v51 = a6;
        v52 = a7;
        *(v8 + 32) = v17;
        *(v8 + 40) = v18;
        *(v8 + 48) = v19;
        *(v8 + 52) = WORD2(v19);
        *(v8 + 54) = BYTE6(v19);
        if (v9 + 1 >= a3)
        {
          sub_1003A5228();
          swift_allocError();
          *v37 = a3;
          v20 = v57;
          v21 = v58;
          v22 = v56;
        }

        else
        {
          v24 = *(v11 + 8);
          v42 = *(v11 + 20);
          v43 = *(v11 + 16);
          v41 = *(v11 + 22);
          v44 = *v11;

          v48 = v9 + 2;
          v21 = v58;
          if (v9 + 2 >= a3)
          {
            sub_1003A5228();
            swift_allocError();
            *v38 = a3;
            v39 = v44;
            v22 = v56;
            v20 = v57;
          }

          else
          {
            v25 = v9 + 3;
            v26 = *v11;
            v27 = *(v11 + 8);
            v47 = *(v11 + 16);
            v49 = *(v11 + 22);
            v50 = *(v11 + 20);
            v20 = v57;
            if (v25 >= a3)
            {
              v22 = v56;
            }

            else
            {
              v28 = v8;
              v45 = v8;
              v46 = v12;
              do
              {
                v53 = v28;
                swift_retain_n();
                sub_100469DF8(v11);

                v29 = sub_10041ED48(v11, v48, a3, a4, a5, v51, v52);
                v31 = v30;
                v33 = v32;

                v28 = v53;
                v35 = *(v53 + 2);
                v34 = *(v53 + 3);
                if (v35 >= v34 >> 1)
                {
                  v28 = sub_100461284((v34 > 1), v35 + 1, 1, v53);
                }

                *(v28 + 2) = v35 + 1;
                v36 = &v28[24 * v35];
                *(v36 + 4) = v29;
                *(v36 + 5) = v31;
                *(v36 + 12) = v33;
                *(v36 + 26) = WORD2(v33);
                v36[54] = BYTE6(v33);
                v26 = *v11;
                v27 = *(v11 + 8);
                v47 = *(v11 + 16);
                v49 = *(v11 + 22);
                v50 = *(v11 + 20);
                v8 = v45;
                v16 = v46;
                v20 = v57;
                v21 = v58;
                v22 = v56;
              }

              while (v25 < a3);
            }

            sub_1003A5228();
            swift_allocError();
            *v40 = a3;

            swift_willThrow();
            v39 = v44;

            *v11 = v26;
            *(v11 + 8) = v27;
            *(v11 + 16) = v47;
            *(v11 + 20) = v50;
            *(v11 + 22) = v49;
          }

          swift_willThrow();
          swift_errorRetain();
          sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
          if (swift_dynamicCast())
          {

            return v8;
          }

          *v11 = v39;
          *(v11 + 8) = v24;
          *(v11 + 16) = v43;
          *(v11 + 20) = v42;
          *(v11 + 22) = v41;
        }

        swift_willThrow();
      }

      *v11 = v16;
      *(v11 + 8) = v13;
      *(v11 + 16) = v21;
      *(v11 + 20) = v20;
      *(v11 + 22) = v22;
    }

    swift_willThrow();
    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1004021BC(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005DC7A0, &qword_100504120);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *sub_100402224@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v9 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v19 = a3;
      return swift_willThrow();
    }

    v11 = result;
    v12 = *result;
    v13 = result[1];
    v14 = *(result + 4);
    v24 = *(result + 22);
    v25 = *(result + 10);

    sub_100402B48(v11, v9, a3, a4, a5, a6, a7, v26);
    if (v8)
    {

      *v11 = v12;
      *(v11 + 8) = v13;
      *(v11 + 16) = v14;
      *(v11 + 20) = v25;
      *(v11 + 22) = v24;
      return swift_willThrow();
    }

    v20 = v26[5];
    *(a8 + 64) = v26[4];
    *(a8 + 80) = v20;
    *(a8 + 96) = v26[6];
    *(a8 + 112) = v27;
    v21 = v26[1];
    *a8 = v26[0];
    *(a8 + 16) = v21;
    v22 = v26[3];
    *(a8 + 32) = v26[2];
    *(a8 + 48) = v22;
  }

  return result;
}

uint64_t *sub_100402384(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    v11 = result;
    if (v8 >= a3)
    {
      sub_1003A5228();
      v17 = swift_allocError();
      *v19 = a3;
    }

    else
    {
      v15 = *result;
      v16 = result[1];
      v22 = *(result + 10);
      v23 = *(result + 4);
      v21 = *(result + 22);

      sub_10046B71C(0x28uLL, 0xE100000000000000, 0, 0, v11, v8, a3);
      v17 = v7;
      if (!v7)
      {
        v24 = _swiftEmptyArrayStorage;

        sub_100471550(v11, &v24, v8, a3, a4, a5, a6, a7);

        v18 = v24;
        sub_10046B71C(0x29uLL, 0xE100000000000000, 0, 0, v11, v8, a3);

LABEL_17:
        a5 = sub_100403620(v18);

        return a5;
      }

      *v11 = v15;
      *(v11 + 8) = v16;
      *(v11 + 16) = v23;
      *(v11 + 20) = v22;
      *(v11 + 22) = v21;
    }

    swift_willThrow();
    v25 = v17;
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {
    }

    else
    {

      v25 = v17;
      swift_errorRetain();
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_15;
      }
    }

    if (v8 < a3)
    {

      sub_10046B71C(0x6C696EuLL, 0xE300000000000000, 0, 0, v11, v8, a3);

      v18 = _swiftEmptyArrayStorage;
      goto LABEL_17;
    }

    sub_1003A5228();
    swift_allocError();
    *v20 = a3;
    swift_willThrow();
LABEL_15:

    return a5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1004026F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  v63 = v17;
  v64 = v12;
  v65 = v8;
  v66[0] = v15;
  v66[1] = v16;
  v15 = v66;
  v51 = a8;
  if (a2 + 1 >= a3)
  {
    sub_1003A5228();
    v27 = swift_allocError();
    *v28 = a3;
LABEL_9:
    swift_willThrow();
    *&v58 = v27;
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (!swift_dynamicCast())
    {
    }

    goto LABEL_11;
  }

  v22 = *a1;
  v23 = a1[1];
  v24 = *(a1 + 4);
  v25 = *(a1 + 10);
  v26 = *(a1 + 22);
  if (a2 + 2 >= a3)
  {
    sub_1003A5228();
    v27 = swift_allocError();
    *v29 = a3;
    goto LABEL_8;
  }

  sub_100469DF8(a1);
  v27 = v10;
  if (v10)
  {
LABEL_8:
    swift_willThrow();
    *a1 = v22;
    a1[1] = v23;
    *(a1 + 4) = v24;
    *(a1 + 10) = v25;
    *(a1 + 22) = v26;
    goto LABEL_9;
  }

LABEL_11:
  sub_10046B71C(0x28uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  v30 = sub_10041F1D8(a1, a2, a3, a4, a5, a6, a7);
  v12 = v31;
  v33 = v32;
  v9 = v30;
  sub_10046B71C(0x20uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  v34 = sub_10041F1D8(a1, a2, a3, a4, a5, a6, a7);
  v49 = v36;
  v50 = v35;
  v13 = v34;
  sub_10046B71C(0x20uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  v37 = sub_10041F1D8(a1, a2, a3, a4, a5, a6, a7);
  v46 = v39;
  v47 = v38;
  v48 = v37;
  sub_10046B71C(0x20uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  v40 = sub_10041F1D8(a1, a2, a3, a4, a5, a6, a7);
  v14 = v33;
  v53 = v41;
  v55 = v42;
  v11 = v40;
  sub_10046B71C(0x29uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
LABEL_14:
  *&v58 = v9;
  *(&v58 + 1) = v14;
  LODWORD(v59) = v12;
  BYTE6(v59) = BYTE6(v12);
  WORD2(v59) = WORD2(v12);
  *(&v59 + 1) = v13;
  *&v60 = v50;
  DWORD2(v60) = v49;
  BYTE14(v60) = BYTE6(v49);
  WORD6(v60) = WORD2(v49);
  *&v61 = v48;
  *(&v61 + 1) = v47;
  *v62 = v46;
  v62[6] = BYTE6(v46);
  *&v62[4] = WORD2(v46);
  *&v62[8] = v11;
  *&v62[16] = v53;
  *&v62[24] = v55;
  v62[30] = BYTE6(v55);
  *&v62[28] = WORD2(v55);
  *(v15 - 23) = v9;
  *(v15 - 22) = v14;
  *(v15 - 42) = v12;
  *(v15 - 162) = BYTE6(v12);
  *(v15 - 82) = WORD2(v12);
  *(v15 - 20) = v13;
  *(v15 - 19) = v50;
  *(v15 - 36) = v49;
  *(v15 - 138) = BYTE6(v49);
  *(v15 - 70) = WORD2(v49);
  *(v15 - 17) = v48;
  *(v15 - 16) = v47;
  *(v15 - 30) = v46;
  *(v15 - 114) = BYTE6(v46);
  *(v15 - 58) = WORD2(v46);
  *(v15 - 14) = v11;
  *(v15 - 13) = v53;
  *(v15 - 24) = v55;
  *(v15 - 90) = BYTE6(v55);
  *(v15 - 46) = WORD2(v55);
  sub_1003A3260(&v58, v57);
  result = sub_1003A32BC((v15 - 23));
  v44 = v61;
  v51[2] = v60;
  v51[3] = v44;
  v51[4] = *v62;
  *(v51 + 79) = *&v62[15];
  v45 = v59;
  *v51 = v58;
  v51[1] = v45;
  return result;
}

uint64_t sub_100402B48@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  result = sub_10046B71C(0x28uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (v8)
  {
    return result;
  }

  v51 = a5;
  v53 = a7;
  v50 = a8;
  if (sub_10041F1D8(a1, a2, a3, a4, a5, a6, a7))
  {
    swift_beginAccess();
    v18 = sub_1004A58D4();
    v20 = v19;

    v21 = a2 + 1;
    if (!__OFADD__(a2, 1))
    {
LABEL_4:
      if (v21 >= a3)
      {

        sub_1003A5228();
        swift_allocError();
        *v22 = a3;
        return swift_willThrow();
      }

      sub_100469DF8(a1);
      goto LABEL_11;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    v21 = a2 + 1;
    if (!__OFADD__(a2, 1))
    {
      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_11:
  v23 = sub_10041F1D8(a1, a2, a3, a4, v51, a6, v53);
  v46 = v24;
  v26 = v25;
  v49 = v23;
  sub_100469DF8(a1);
  v48 = sub_100402384(a1, a2, a3, a4, v51, a6, v53);
  sub_100469DF8(a1);
  v47 = sub_100402384(a1, a2, a3, a4, v51, a6, v53);
  sub_100469DF8(a1);
  v45 = sub_100402384(a1, a2, a3, a4, v51, a6, v53);
  sub_100469DF8(a1);
  v44 = sub_100402384(a1, a2, a3, a4, v51, a6, v53);
  sub_100469DF8(a1);
  v43 = sub_100402384(a1, a2, a3, a4, v51, a6, v53);
  sub_100469DF8(a1);
  v42 = sub_100402384(a1, a2, a3, a4, v51, a6, v53);
  sub_100469DF8(a1);
  v27 = sub_10041F1D8(a1, a2, a3, a4, v51, a6, v53);
  if (v27)
  {
    sub_10046C184(v27, v28, v29 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000020, 0x80000001004B03C0, 103);
    v40 = v30;
    v41 = v31;
  }

  else
  {
    v40 = 0;
    v41 = 0;
  }

  sub_100469DF8(a1);
  v32 = sub_10041F1D8(a1, a2, a3, a4, v51, a6, v53);
  if (v32)
  {
    sub_10046C184(v32, v33, v34 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000020, 0x80000001004B03C0, 103);
    v52 = v35;
    v54 = v36;
  }

  else
  {
    v52 = 0;
    v54 = 0;
  }

  sub_10046B71C(0x29uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  *&v56 = v18;
  *(&v56 + 1) = v20;
  *&v57 = v49;
  *(&v57 + 1) = v26;
  LODWORD(v58) = v46;
  BYTE6(v58) = BYTE6(v46);
  WORD2(v58) = WORD2(v46);
  *(&v58 + 1) = v48;
  *&v59 = v47;
  *(&v59 + 1) = v45;
  *&v60 = v44;
  *(&v60 + 1) = v43;
  *&v61 = v42;
  *(&v61 + 1) = v40;
  *&v62 = v41;
  *(&v62 + 1) = v52;
  v63 = v54;
  v64[0] = v18;
  v64[1] = v20;
  v64[2] = v49;
  v64[3] = v26;
  v65 = v46;
  v67 = BYTE6(v46);
  v66 = WORD2(v46);
  v68 = v48;
  v69 = v47;
  v70 = v45;
  v71 = v44;
  v72 = v43;
  v73 = v42;
  v74 = v40;
  v75 = v41;
  v76 = v52;
  v77 = v54;
  sub_1002FA030(&v56, v55);
  result = sub_1003E771C(v64);
  v37 = v61;
  *(v50 + 64) = v60;
  *(v50 + 80) = v37;
  *(v50 + 96) = v62;
  *(v50 + 112) = v63;
  v38 = v57;
  *v50 = v56;
  *(v50 + 16) = v38;
  v39 = v59;
  *(v50 + 32) = v58;
  *(v50 + 48) = v39;
  return result;
}

uint64_t sub_100403620(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = (a1 + 32);
  v4 = v1 - 1;
  v5 = _swiftEmptyArrayStorage;
  while (1)
  {
    *&v71[15] = *(v3 + 79);
    v6 = v3[4];
    v70 = v3[3];
    *v71 = v6;
    v7 = v3[2];
    v68 = v3[1];
    v69 = v7;
    v67 = *v3;
    if (*&v71[8])
    {
      break;
    }

    if (v70)
    {
      v49 = v70;
      LODWORD(v50) = *v71;
      WORD2(v50) = *&v71[4];
      BYTE6(v50) = v71[6];
      *(&v50 + 1) = *(&v68 + 1);
      *&v51 = v69;
      DWORD2(v51) = DWORD2(v69);
      BYTE14(v51) = BYTE14(v69);
      WORD6(v51) = WORD6(v69);
      v52 = _swiftEmptyArrayStorage;
      v53 = v70;
      v54 = *v71;
      v55 = *&v71[4];
      v56 = v71[6];
      v57 = *(&v68 + 1);
      v58 = v69;
      v59 = DWORD2(v69);
      v61 = BYTE14(v69);
      v60 = WORD6(v69);
      v62 = _swiftEmptyArrayStorage;
      swift_retain_n();
      sub_1003A3260(&v67, &v63);

      sub_1003A31B0(&v49, &v63);
      sub_1003A320C(&v53);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_1004612A0(0, *(v2 + 2) + 1, 1, v2);
      }

      v22 = *(v2 + 2);
      v21 = *(v2 + 3);
      if (v22 >= v21 >> 1)
      {
        v2 = sub_1004612A0((v21 > 1), v22 + 1, 1, v2);
      }

      sub_1003A32BC(&v67);
      *(v2 + 2) = v22 + 1;
      v23 = &v2[56 * v22];
      v25 = v50;
      v24 = v51;
      v26 = v49;
      *(v23 + 10) = v52;
      *(v23 + 3) = v25;
      *(v23 + 4) = v24;
      *(v23 + 2) = v26;
      if (!v4)
      {
        goto LABEL_45;
      }
    }

    else
    {
      if (!*(v2 + 2))
      {
        goto LABEL_30;
      }

      sub_1003A3260(&v67, &v63);
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v27 = *(v2 + 2);
        if (!v27)
        {
          goto LABEL_49;
        }
      }

      else
      {
        result = sub_10040360C(v2);
        v2 = result;
        v27 = *(result + 16);
        if (!v27)
        {
          goto LABEL_49;
        }
      }

      v28 = &v2[56 * v27 - 24];
      v29 = *v28;
      v30 = *(v28 + 16);
      v31 = *(v28 + 32);
      v66 = *(v28 + 48);
      v64 = v30;
      v65 = v31;
      v63 = v29;
      *(v2 + 2) = v27 - 1;
      v32 = swift_allocObject();
      v33 = v64;
      *(v32 + 16) = v63;
      *(v32 + 32) = v33;
      *(v32 + 48) = v65;
      *(v32 + 64) = v66;
      if (v27 == 1)
      {
        sub_1003A31B0(&v63, &v53);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_1004613C8(0, *(v5 + 2) + 1, 1, v5);
        }

        v48 = *(v5 + 2);
        v47 = *(v5 + 3);
        if (v48 >= v47 >> 1)
        {
          v5 = sub_1004613C8((v47 > 1), v48 + 1, 1, v5);
        }

        sub_1003A320C(&v63);
        sub_1003A32BC(&v67);
        v39 = v32 | 0x8000000000000000;
        *(v5 + 2) = v48 + 1;
        v41 = &v5[8 * v48];
      }

      else
      {
        sub_1003A31B0(&v63, &v53);
        v34 = &v2[56 * v27 + 32];
        v35 = *(v34 - 64);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v34 - 64) = v35;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v35 = sub_1004613C8(0, *(v35 + 2) + 1, 1, v35);
          *(v34 - 64) = v35;
        }

        v38 = *(v35 + 2);
        v37 = *(v35 + 3);
        if (v38 >= v37 >> 1)
        {
          *(v34 - 64) = sub_1004613C8((v37 > 1), v38 + 1, 1, v35);
        }

        sub_1003A320C(&v63);
        sub_1003A32BC(&v67);
        v39 = v32 | 0x8000000000000000;
        v40 = *(v34 - 64);
        *(v40 + 16) = v38 + 1;
        v41 = (v40 + 8 * v38);
      }

      *(v41 + 4) = v39;
      if (!v4)
      {
LABEL_45:

        return v5;
      }
    }

LABEL_42:
    --v4;
    v3 += 6;
  }

  v8 = *(v2 + 2);
  if (!v8)
  {
LABEL_30:
    v42 = swift_allocObject();
    v43 = v3[3];
    v42[3] = v3[2];
    v42[4] = v43;
    v42[5] = v3[4];
    *(v42 + 95) = *(v3 + 79);
    v44 = v3[1];
    v42[1] = *v3;
    v42[2] = v44;
    sub_1003A3260(&v67, &v63);
    sub_1003A3260(&v67, &v63);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_1004613C8(0, *(v5 + 2) + 1, 1, v5);
    }

    v46 = *(v5 + 2);
    v45 = *(v5 + 3);
    if (v46 >= v45 >> 1)
    {
      v5 = sub_1004613C8((v45 > 1), v46 + 1, 1, v5);
    }

    sub_1003A32BC(&v67);
    *(v5 + 2) = v46 + 1;
    *&v5[8 * v46 + 32] = v42;
    if (!v4)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v9 = swift_allocObject();
  v10 = v3[3];
  v9[3] = v3[2];
  v9[4] = v10;
  v9[5] = v3[4];
  *(v9 + 95) = *(v3 + 79);
  v11 = v3[1];
  v9[1] = *v3;
  v9[2] = v11;
  sub_1003A3260(&v67, &v63);
  sub_1003A3260(&v67, &v63);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10040360C(v2);
    v2 = result;
  }

  if (v8 <= *(v2 + 2))
  {
    v13 = &v2[56 * v8];
    v16 = *(v13 + 3);
    v15 = (v13 + 24);
    v14 = v16;
    v17 = swift_isUniquelyReferenced_nonNull_native();
    *v15 = v16;
    if ((v17 & 1) == 0)
    {
      v14 = sub_1004613C8(0, *(v14 + 2) + 1, 1, v14);
      *v15 = v14;
    }

    v19 = *(v14 + 2);
    v18 = *(v14 + 3);
    if (v19 >= v18 >> 1)
    {
      *v15 = sub_1004613C8((v18 > 1), v19 + 1, 1, v14);
    }

    sub_1003A32BC(&v67);
    v20 = *v15;
    *(v20 + 2) = v19 + 1;
    *&v20[8 * v19 + 32] = v9;
    if (!v4)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  __break(1u);
LABEL_49:
  __break(1u);
  return result;
}

uint64_t sub_100403BC4()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100403C0C()
{

  return _swift_deallocObject(v0, 111, 7);
}

double sub_100403C5C@<D0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  sub_10000C9C0(&qword_1005DC7B0, &qword_100504128);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004D1B20;
  v15 = swift_allocObject();
  v15[2] = a4;
  v15[3] = a5;
  v15[4] = a6;
  v15[5] = a7;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1004060F0;
  *(v16 + 24) = v15;
  *(inited + 32) = 0x542E323238434652;
  *(inited + 40) = 0xEB00000000545845;
  *(inited + 48) = sub_100406108;
  *(inited + 56) = v16;
  v17 = swift_allocObject();
  v17[2] = a4;
  v17[3] = a5;
  v17[4] = a6;
  v17[5] = a7;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_100406120;
  *(v18 + 24) = v17;
  strcpy((inited + 64), "RFC822.HEADER");
  *(inited + 78) = -4864;
  *(inited + 80) = sub_100406904;
  *(inited + 88) = v18;
  v19 = swift_allocObject();
  v19[2] = a4;
  v19[3] = a5;
  v19[4] = a6;
  v19[5] = a7;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_100406138;
  *(v20 + 24) = v19;
  *(inited + 96) = 1497648962;
  *(inited + 104) = 0xE400000000000000;
  *(inited + 112) = sub_100406904;
  *(inited + 120) = v20;
  v21 = swift_allocObject();
  v21[2] = a4;
  v21[3] = a5;
  v21[4] = a6;
  v21[5] = a7;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_100406158;
  *(v22 + 24) = v21;
  *(inited + 128) = 0x5952414E4942;
  *(inited + 136) = 0xE600000000000000;
  *(inited + 144) = sub_100406904;
  *(inited + 152) = v22;
  swift_retain_n();
  v24 = sub_1004117F4(inited, v23);
  swift_setDeallocating();
  sub_10000C9C0(&qword_1005DC798, &qword_100504118);
  swift_arrayDestroy();
  v25 = v32;
  sub_1004061E8(a1, a2, a3, v24, v30);

  if (!v25)
  {
    result = *v30;
    v27 = v30[1];
    *a8 = v30[0];
    *(a8 + 16) = v27;
    *(a8 + 32) = v31;
  }

  return result;
}

uint64_t sub_100403F54@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{

  v17 = sub_10046FB50(a1, a2, a3, a4, a5, a6, a7);
  v19 = v18;
  v21 = v20;

  if (!v8)
  {
    if (!v17)
    {
      v17 = _swiftEmptyArrayStorage;
      v19 = 0;
      v21 = 2;
    }

    result = sub_10047562C(a1, a2, a3);
    *a8 = v17;
    *(a8 + 8) = v19;
    *(a8 + 16) = v21;
    *(a8 + 24) = result;
    *(a8 + 32) = v23 & 1 | 0x40;
  }

  return result;
}

uint64_t *sub_100404060@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    return result;
  }

  if (v9 >= a3)
  {
    sub_1003A5228();
    swift_allocError();
    *v19 = a3;
    return swift_willThrow();
  }

  v12 = result;
  v16 = *result;
  v17 = result[1];
  v25 = *(result + 10);
  v26 = *(result + 4);
  v24 = *(result + 22);

  sub_10046B71C(0x5BuLL, 0xE100000000000000, 0, 0, v12, v9, a3);
  if (v8)
  {

    *v12 = v16;
    *(v12 + 8) = v17;
    *(v12 + 16) = v26;
    *(v12 + 20) = v25;
    *(v12 + 22) = v24;
    return swift_willThrow();
  }

  v18 = sub_100470F30(v12, v9, a3, a4, a5, a6, a7);

  sub_10046B71C(0x5DuLL, 0xE100000000000000, 0, 0, v12, v9, a3);

  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = _swiftEmptyArrayStorage;
  }

  result = sub_10047562C(v12, a2, a3);
  *a8 = v20;
  *(a8 + 8) = result;
  *(a8 + 16) = v21 & 1;
  *(a8 + 24) = 0;
  *(a8 + 32) = 0;
  return result;
}

uint64_t sub_10040424C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = v8;
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a7;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1004048A8;
  *(v17 + 24) = v16;
  v40[0] = sub_100404E94;
  v40[1] = v17;
  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a6;
  v18[5] = a7;
  result = swift_allocObject();
  *(result + 16) = sub_100404EAC;
  *(result + 24) = v18;
  v40[2] = sub_1004068EC;
  v40[3] = result;
  v20 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    swift_retain_n();
    v21 = 0;
    for (i = 0; ; i = 1)
    {
      v38 = v21;
      *(swift_allocObject() + 16) = *&v40[2 * i];
      if (v20 >= a3)
      {
        sub_1003A5228();
        swift_allocError();
        *v29 = a3;
      }

      else
      {
        v23 = *a1;
        v24 = a1[1];
        v25 = *(a1 + 4);
        v37 = v9;
        v26 = v20;
        v27 = *(a1 + 10);
        v28 = *(a1 + 22);

        sub_100405A98(a1, v26, a3);
        if (!v37)
        {

          sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
          result = swift_arrayDestroy();
          v31 = v50;
          *(a8 + 128) = v49;
          *(a8 + 144) = v31;
          *(a8 + 160) = v51;
          *(a8 + 176) = v52;
          v32 = v46;
          *(a8 + 64) = v45;
          *(a8 + 80) = v32;
          v33 = v48;
          *(a8 + 96) = v47;
          *(a8 + 112) = v33;
          v34 = v42;
          *a8 = v41;
          *(a8 + 16) = v34;
          v35 = v44;
          *(a8 + 32) = v43;
          *(a8 + 48) = v35;
          return result;
        }

        *a1 = v23;
        a1[1] = v24;
        *(a1 + 4) = v25;
        *(a1 + 10) = v27;
        *(a1 + 22) = v28;
        v20 = v26;
      }

      swift_willThrow();
      swift_errorRetain();
      sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
      if (swift_dynamicCast())
      {
      }

      else
      {

        swift_errorRetain();
        if ((swift_dynamicCast() & 1) == 0)
        {
          sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
          swift_arrayDestroy();
        }
      }

      v9 = 0;
      v21 = 1;
      if (v38)
      {
        sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
        swift_arrayDestroy();
        sub_1003A527C();
        swift_allocError();
        *v30 = 0xD000000000000019;
        v30[1] = 0x80000001004B08C0;
        v30[2] = 0xD000000000000020;
        v30[3] = 0x80000001004B03C0;
        v30[4] = 294;
        return swift_willThrow();
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t *sub_1004046C4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v5 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v15 = a3;
    }

    else
    {
      v7 = result;
      v9 = *result;
      v10 = result[1];
      v11 = *(result + 4);
      v12 = *(result + 10);
      v13 = *(result + 22);

      sub_10046B71C(0x202AuLL, 0xE200000000000000, 0, 0, v7, v5, a3);
      if (!v4)
      {
        v21 = sub_100405E9C(v7, v5, a3, v14);
        sub_10046B71C(0x2820484354454620uLL, 0xE800000000000000, 0, 0, v7, v5, a3);

        LODWORD(v22[0]) = v21;
        result = sub_1002F9BA4(v22);
        v16 = v22[9];
        *(a4 + 128) = v22[8];
        *(a4 + 144) = v16;
        *(a4 + 160) = v22[10];
        *(a4 + 176) = v23;
        v17 = v22[5];
        *(a4 + 64) = v22[4];
        *(a4 + 80) = v17;
        v18 = v22[7];
        *(a4 + 96) = v22[6];
        *(a4 + 112) = v18;
        v19 = v22[1];
        *a4 = v22[0];
        *(a4 + 16) = v19;
        v20 = v22[3];
        *(a4 + 32) = v22[2];
        *(a4 + 48) = v20;
        return result;
      }

      *v7 = v9;
      *(v7 + 8) = v10;
      *(v7 + 16) = v11;
      *(v7 + 20) = v12;
      *(v7 + 22) = v13;
    }

    return swift_willThrow();
  }

  return result;
}

uint64_t sub_100404870()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t *sub_1004048C8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v5 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v15 = a3;
    }

    else
    {
      v7 = result;
      v9 = *result;
      v10 = result[1];
      v11 = *(result + 4);
      v12 = *(result + 10);
      v13 = *(result + 22);

      sub_10046B71C(0x202AuLL, 0xE200000000000000, 0, 0, v7, v5, a3);
      if (!v4)
      {
        v21 = sub_100405E9C(v7, v5, a3, v14);
        sub_10046B71C(0x4354454644495520uLL, 0xEB00000000282048, 0, 0, v7, v5, a3);

        LODWORD(v22[0]) = v21;
        result = sub_1002F9B90(v22);
        v16 = v22[9];
        *(a4 + 128) = v22[8];
        *(a4 + 144) = v16;
        *(a4 + 160) = v22[10];
        *(a4 + 176) = v23;
        v17 = v22[5];
        *(a4 + 64) = v22[4];
        *(a4 + 80) = v17;
        v18 = v22[7];
        *(a4 + 96) = v22[6];
        *(a4 + 112) = v18;
        v19 = v22[1];
        *a4 = v22[0];
        *(a4 + 16) = v19;
        v20 = v22[3];
        *(a4 + 32) = v22[2];
        *(a4 + 48) = v20;
        return result;
      }

      *v7 = v9;
      *(v7 + 8) = v10;
      *(v7 + 16) = v11;
      *(v7 + 20) = v12;
      *(v7 + 22) = v13;
    }

    return swift_willThrow();
  }

  return result;
}

void sub_100404A7C(uint64_t a1)
{
  v3 = *(v1 + 144);
  v26[8] = *(v1 + 128);
  v26[9] = v3;
  v26[10] = *(v1 + 160);
  v27 = *(v1 + 176);
  v4 = *(v1 + 80);
  v26[4] = *(v1 + 64);
  v26[5] = v4;
  v5 = *(v1 + 112);
  v26[6] = *(v1 + 96);
  v26[7] = v5;
  v6 = *(v1 + 16);
  v26[0] = *v1;
  v26[1] = v6;
  v7 = *(v1 + 48);
  v26[2] = *(v1 + 32);
  v26[3] = v7;
  v8 = sub_1003043EC(v26);
  if (v8 > 2)
  {
    if (v8 == 3)
    {
      v16 = sub_1002F9BA4(v26);
      v17 = *(v16 + 32);
      v13 = *(v16 + 40);
      v18 = *(v16 + 16);
      v28 = *v16;
      v29 = v18;
      LOBYTE(v30) = v17;
      v15 = 3;
    }

    else
    {
      if (v8 != 4)
      {
        v19 = 5;
        goto LABEL_14;
      }

      v11 = sub_1002F9BA4(v26);
      v12 = *(v11 + 32);
      v13 = *(v11 + 40);
      v14 = *(v11 + 16);
      v28 = *v11;
      v29 = v14;
      LOBYTE(v30) = v12;
      v15 = 4;
    }

    sub_1004A6EB4(v15);
    StreamingKind.hash(into:)(a1);
    v19 = v13;
LABEL_14:
    sub_1004A6EB4(v19);
    return;
  }

  if (!v8)
  {
    v9 = *sub_1002F9BA4(v26);
    v10 = 0;
    goto LABEL_9;
  }

  if (v8 == 1)
  {
    v9 = *sub_1002F9BA4(v26);
    v10 = 1;
LABEL_9:
    sub_1004A6EB4(v10);
    sub_1004A6EE4(v9);
    return;
  }

  v20 = sub_1002F9BA4(v26);
  v21 = *(v20 + 144);
  v36 = *(v20 + 128);
  v37 = v21;
  v38 = *(v20 + 160);
  v39 = *(v20 + 176);
  v22 = *(v20 + 80);
  v32 = *(v20 + 64);
  v33 = v22;
  v23 = *(v20 + 112);
  v34 = *(v20 + 96);
  v35 = v23;
  v24 = *(v20 + 16);
  v28 = *v20;
  v29 = v24;
  v25 = *(v20 + 48);
  v30 = *(v20 + 32);
  v31 = v25;
  sub_1004A6EB4(2uLL);
  MessageAttribute.hash(into:)(a1);
}

Swift::Int sub_100404C10()
{
  sub_1004A6E94();
  v1 = *(v0 + 144);
  v26[8] = *(v0 + 128);
  v26[9] = v1;
  v26[10] = *(v0 + 160);
  v27 = *(v0 + 176);
  v2 = *(v0 + 80);
  v26[4] = *(v0 + 64);
  v26[5] = v2;
  v3 = *(v0 + 112);
  v26[6] = *(v0 + 96);
  v26[7] = v3;
  v4 = *(v0 + 16);
  v26[0] = *v0;
  v26[1] = v4;
  v5 = *(v0 + 48);
  v26[2] = *(v0 + 32);
  v26[3] = v5;
  v6 = sub_1003043EC(v26);
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v14 = sub_1002F9BA4(v26);
      v15 = *(v14 + 32);
      v11 = *(v14 + 40);
      v16 = *(v14 + 16);
      v28 = *v14;
      v29 = v16;
      LOBYTE(v30) = v15;
      v13 = 3;
    }

    else
    {
      if (v6 != 4)
      {
        v17 = 5;
        goto LABEL_14;
      }

      v9 = sub_1002F9BA4(v26);
      v10 = *(v9 + 32);
      v11 = *(v9 + 40);
      v12 = *(v9 + 16);
      v28 = *v9;
      v29 = v12;
      LOBYTE(v30) = v10;
      v13 = 4;
    }

    sub_1004A6EB4(v13);
    StreamingKind.hash(into:)(v25);
    v17 = v11;
LABEL_14:
    sub_1004A6EB4(v17);
    return sub_1004A6F14();
  }

  if (v6)
  {
    if (v6 != 1)
    {
      v18 = sub_1002F9BA4(v26);
      v19 = *(v18 + 144);
      v36 = *(v18 + 128);
      v37 = v19;
      v38 = *(v18 + 160);
      v39 = *(v18 + 176);
      v20 = *(v18 + 80);
      v32 = *(v18 + 64);
      v33 = v20;
      v21 = *(v18 + 112);
      v34 = *(v18 + 96);
      v35 = v21;
      v22 = *(v18 + 16);
      v28 = *v18;
      v29 = v22;
      v23 = *(v18 + 48);
      v30 = *(v18 + 32);
      v31 = v23;
      sub_1004A6EB4(2uLL);
      MessageAttribute.hash(into:)(v25);
      return sub_1004A6F14();
    }

    v7 = *sub_1002F9BA4(v26);
    v8 = 1;
  }

  else
  {
    v7 = *sub_1002F9BA4(v26);
    v8 = 0;
  }

  sub_1004A6EB4(v8);
  sub_1004A6EE4(v7);
  return sub_1004A6F14();
}

double sub_100404DC8@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  v7 = a2[1];
  sub_10046B71C(0x29uLL, 0xE100000000000000, 0, 0, a1, *a2, v7);
  if (!v3)
  {
    sub_100464188(a1, v6, v7);
    sub_1002F9F80(v14);
    v9 = v22;
    *(a3 + 128) = v21;
    *(a3 + 144) = v9;
    *(a3 + 160) = v23;
    *(a3 + 176) = v24;
    v10 = v18;
    *(a3 + 64) = v17;
    *(a3 + 80) = v10;
    v11 = v20;
    *(a3 + 96) = v19;
    *(a3 + 112) = v11;
    v12 = v14[1];
    *a3 = v14[0];
    *(a3 + 16) = v12;
    result = *&v15;
    v13 = v16;
    *(a3 + 32) = v15;
    *(a3 + 48) = v13;
  }

  return result;
}

Swift::Int sub_100404ED4(uint64_t a1)
{
  sub_1004A6E94();
  v2 = *(v1 + 144);
  v39[8] = *(v1 + 128);
  v39[9] = v2;
  v39[10] = *(v1 + 160);
  v40 = *(v1 + 176);
  v3 = *(v1 + 80);
  v39[4] = *(v1 + 64);
  v39[5] = v3;
  v4 = *(v1 + 112);
  v39[6] = *(v1 + 96);
  v39[7] = v4;
  v5 = *(v1 + 16);
  v39[0] = *v1;
  v39[1] = v5;
  v6 = *(v1 + 48);
  v39[2] = *(v1 + 32);
  v39[3] = v6;
  v7 = sub_1003043EC(v39);
  if (v7 > 2)
  {
    if (v7 == 3)
    {
      v15 = sub_1002F9BA4(v39);
      v16 = *(v15 + 32);
      v12 = *(v15 + 40);
      v17 = *(v15 + 16);
      v27 = *v15;
      v28 = v17;
      LOBYTE(v29) = v16;
      v14 = 3;
    }

    else
    {
      if (v7 != 4)
      {
        v18 = 5;
        goto LABEL_14;
      }

      v10 = sub_1002F9BA4(v39);
      v11 = *(v10 + 32);
      v12 = *(v10 + 40);
      v13 = *(v10 + 16);
      v27 = *v10;
      v28 = v13;
      LOBYTE(v29) = v11;
      v14 = 4;
    }

    sub_1004A6EB4(v14);
    StreamingKind.hash(into:)(v26);
    v18 = v12;
LABEL_14:
    sub_1004A6EB4(v18);
    return sub_1004A6F14();
  }

  if (v7)
  {
    if (v7 != 1)
    {
      v19 = sub_1002F9BA4(v39);
      v20 = *(v19 + 144);
      v35 = *(v19 + 128);
      v36 = v20;
      v37 = *(v19 + 160);
      v38 = *(v19 + 176);
      v21 = *(v19 + 80);
      v31 = *(v19 + 64);
      v32 = v21;
      v22 = *(v19 + 112);
      v33 = *(v19 + 96);
      v34 = v22;
      v23 = *(v19 + 16);
      v27 = *v19;
      v28 = v23;
      v24 = *(v19 + 48);
      v29 = *(v19 + 32);
      v30 = v24;
      sub_1004A6EB4(2uLL);
      MessageAttribute.hash(into:)(v26);
      return sub_1004A6F14();
    }

    v8 = *sub_1002F9BA4(v39);
    v9 = 1;
  }

  else
  {
    v8 = *sub_1002F9BA4(v39);
    v9 = 0;
  }

  sub_1004A6EB4(v9);
  sub_1004A6EE4(v8);
  return sub_1004A6F14();
}

uint64_t sub_100405088(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 144);
  v13[8] = *(a1 + 128);
  v13[9] = v2;
  v13[10] = *(a1 + 160);
  v14 = *(a1 + 176);
  v3 = *(a1 + 80);
  v13[4] = *(a1 + 64);
  v13[5] = v3;
  v4 = *(a1 + 112);
  v13[6] = *(a1 + 96);
  v13[7] = v4;
  v5 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v5;
  v6 = *(a1 + 48);
  v13[2] = *(a1 + 32);
  v13[3] = v6;
  v7 = *(a2 + 144);
  v15[8] = *(a2 + 128);
  v15[9] = v7;
  v15[10] = *(a2 + 160);
  v16 = *(a2 + 176);
  v8 = *(a2 + 80);
  v15[4] = *(a2 + 64);
  v15[5] = v8;
  v9 = *(a2 + 112);
  v15[6] = *(a2 + 96);
  v15[7] = v9;
  v10 = *(a2 + 16);
  v15[0] = *a2;
  v15[1] = v10;
  v11 = *(a2 + 48);
  v15[2] = *(a2 + 32);
  v15[3] = v11;
  return sub_100405AE8(v13, v15) & 1;
}

uint64_t sub_10040512C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = v8;
  v17 = swift_allocObject();
  v17[2] = a4;
  v17[3] = a5;
  v17[4] = a6;
  v17[5] = a7;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_100405F74;
  *(v18 + 24) = v17;
  v40 = sub_1004068EC;
  v41 = v18;
  v19 = swift_allocObject();
  v19[2] = a4;
  v19[3] = a5;
  v19[4] = a6;
  v19[5] = a7;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_100405F94;
  *(v20 + 24) = v19;
  v42 = sub_1004068EC;
  v43 = v20;
  v21 = swift_allocObject();
  v21[2] = a4;
  v21[3] = a5;
  v21[4] = a6;
  v21[5] = a7;
  result = swift_allocObject();
  *(result + 16) = sub_100405FB4;
  *(result + 24) = v21;
  v44 = sub_1004068EC;
  v45 = result;
  v46 = sub_100404DC8;
  v47 = 0;
  v23 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    swift_retain_n();
    v24 = 32;
    while (1)
    {
      *(swift_allocObject() + 16) = *&v39[v24];
      if (v23 >= a3)
      {
        sub_1003A5228();
        swift_allocError();
        *v30 = a3;
      }

      else
      {
        v25 = *a1;
        v26 = a1[1];
        v38 = *(a1 + 4);
        v27 = a3;
        v28 = *(a1 + 10);
        v29 = *(a1 + 22);

        sub_10040694C(a1, v23, v27);
        if (!v9)
        {

          sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
          result = swift_arrayDestroy();
          v32 = v57;
          *(a8 + 128) = v56;
          *(a8 + 144) = v32;
          *(a8 + 160) = v58;
          *(a8 + 176) = v59;
          v33 = v53;
          *(a8 + 64) = v52;
          *(a8 + 80) = v33;
          v34 = v55;
          *(a8 + 96) = v54;
          *(a8 + 112) = v34;
          v35 = v49;
          *a8 = v48;
          *(a8 + 16) = v35;
          v36 = v51;
          *(a8 + 32) = v50;
          *(a8 + 48) = v36;
          return result;
        }

        *a1 = v25;
        a1[1] = v26;
        *(a1 + 4) = v38;
        *(a1 + 10) = v28;
        *(a1 + 22) = v29;
        a3 = v27;
      }

      swift_willThrow();
      swift_errorRetain();
      sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
      if (swift_dynamicCast())
      {
      }

      else
      {

        swift_errorRetain();
        if ((swift_dynamicCast() & 1) == 0)
        {
          sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
          swift_arrayDestroy();
        }
      }

      v9 = 0;
      v24 += 16;
      if (v24 == 96)
      {
        sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
        swift_arrayDestroy();
        sub_1003A527C();
        swift_allocError();
        *v31 = 0xD000000000000019;
        v31[1] = 0x80000001004B08C0;
        v31[2] = 0xD000000000000020;
        v31[3] = 0x80000001004B03C0;
        v31[4] = 356;
        return swift_willThrow();
      }
    }
  }

  __break(1u);
  return result;
}

double sub_1004055EC@<D0>(uint64_t a1@<X8>, uint64_t *a2@<X0>, uint64_t a3@<X1>, int64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t a7@<X5>, uint64_t a8@<X6>)
{
  sub_10040CB98(a2, a3, a4, a5, a6, a7, a8, v28);
  if (!v8)
  {
    v24 = v28[8];
    v25 = v28[9];
    v26 = v28[10];
    v27 = v29;
    v20 = v28[4];
    v21 = v28[5];
    v22 = v28[6];
    v23 = v28[7];
    v16 = v28[0];
    v17 = v28[1];
    v18 = v28[2];
    v19 = v28[3];
    sub_1002F9E70(&v16);
    v11 = v25;
    *(a1 + 128) = v24;
    *(a1 + 144) = v11;
    *(a1 + 160) = v26;
    *(a1 + 176) = v27;
    v12 = v21;
    *(a1 + 64) = v20;
    *(a1 + 80) = v12;
    v13 = v23;
    *(a1 + 96) = v22;
    *(a1 + 112) = v13;
    v14 = v17;
    *a1 = v16;
    *(a1 + 16) = v14;
    result = *&v18;
    v15 = v19;
    *(a1 + 32) = v18;
    *(a1 + 48) = v15;
  }

  return result;
}

void sub_1004056AC(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  sub_100403C5C(a1, a2, a3, a4, a5, a6, a7, v35);
  if (!v8)
  {
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else if (a2 + 1 >= a3)
    {
      sub_10040609C(v35);
      sub_1003A5228();
      swift_allocError();
      *v14 = a3;
      swift_willThrow();
    }

    else
    {
      v20 = v35[1];
      v21 = v35[0];
      v22 = v36;

      sub_100469DF8(a1);

      v23 = v21;
      v24 = v20;
      LOBYTE(v25) = v22;
      *(&v25 + 1) = sub_10042E674(a1, a2, a3, a7);
      sub_1002F9F58(&v23);
      v15 = v32;
      *(a8 + 128) = v31;
      *(a8 + 144) = v15;
      *(a8 + 160) = v33;
      *(a8 + 176) = v34;
      v16 = v28;
      *(a8 + 64) = v27;
      *(a8 + 80) = v16;
      v17 = v30;
      *(a8 + 96) = v29;
      *(a8 + 112) = v17;
      v18 = v24;
      *a8 = v23;
      *(a8 + 16) = v18;
      v19 = v26;
      *(a8 + 32) = v25;
      *(a8 + 48) = v19;
    }
  }
}

void sub_10040586C(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  sub_100403C5C(a1, a2, a3, a4, a5, a6, a7, v42);
  if (!v8)
  {
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else if (a2 + 1 >= a3)
    {
      sub_10040609C(v42);
      sub_1003A5228();
      swift_allocError();
      *v13 = a3;
      swift_willThrow();
    }

    else
    {
      v28 = v42[1];
      v29 = v42[0];
      v27 = v43;

      sub_100469DF8(a1);

      v14 = *a1;
      v15 = *(a1 + 8);
      v16 = *(a1 + 16);
      v17 = *(a1 + 20);
      v18 = *(a1 + 22);

      sub_10042D898(a1, a2, a3);
      v26 = HIDWORD(v19);
      v20 = v19;

      *a1 = v14;
      *(a1 + 8) = v15;
      *(a1 + 16) = v16;
      *(a1 + 20) = v17;
      *(a1 + 22) = v18;
      v31 = v28;
      v30 = v29;
      LOBYTE(v32) = v27;
      *(&v32 + 1) = (v26 - v20);
      sub_1002F9F6C(&v30);
      v21 = v39;
      *(a8 + 128) = v38;
      *(a8 + 144) = v21;
      *(a8 + 160) = v40;
      *(a8 + 176) = v41;
      v22 = v35;
      *(a8 + 64) = v34;
      *(a8 + 80) = v22;
      v23 = v37;
      *(a8 + 96) = v36;
      *(a8 + 112) = v23;
      v24 = v31;
      *a8 = v30;
      *(a8 + 16) = v24;
      v25 = v33;
      *(a8 + 32) = v32;
      *(a8 + 48) = v25;
    }
  }
}

uint64_t sub_100405AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void *))
{
  v5[1] = a3;
  v5[0] = a2;
  return a4(a1, v5);
}

uint64_t sub_100405AE8(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 144);
  v83[8] = *(a1 + 128);
  v83[9] = v3;
  v83[10] = *(a1 + 160);
  v84 = *(a1 + 176);
  v4 = *(a1 + 80);
  v83[4] = *(a1 + 64);
  v83[5] = v4;
  v5 = *(a1 + 112);
  v83[6] = *(a1 + 96);
  v83[7] = v5;
  v6 = *(a1 + 16);
  v83[0] = *a1;
  v83[1] = v6;
  v7 = *(a1 + 48);
  v83[2] = *(a1 + 32);
  v83[3] = v7;
  v8 = sub_1003043EC(v83);
  if (v8 > 2)
  {
    if (v8 == 3)
    {
      v29 = sub_1002F9BA4(v83);
      v57 = *(v29 + 16);
      v58 = *v29;
      v16 = *(v29 + 32);
      v17 = *(v29 + 40);
      v30 = a2[3];
      v87 = a2[2];
      v88 = v30;
      v31 = a2[1];
      v85 = *a2;
      v86 = v31;
      v32 = a2[7];
      v91 = a2[6];
      v92 = v32;
      v33 = a2[5];
      v89 = a2[4];
      v90 = v33;
      v96 = *(a2 + 88);
      v34 = a2[10];
      v94 = a2[9];
      v95 = v34;
      v93 = a2[8];
      if (sub_1003043EC(&v85) != 3)
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v8 != 4)
      {
        v51 = a2[9];
        v93 = a2[8];
        v94 = v51;
        v95 = a2[10];
        v96 = *(a2 + 88);
        v52 = a2[5];
        v89 = a2[4];
        v90 = v52;
        v53 = a2[7];
        v91 = a2[6];
        v92 = v53;
        v54 = a2[1];
        v85 = *a2;
        v86 = v54;
        v55 = a2[3];
        v87 = a2[2];
        v88 = v55;
        if (sub_1003043EC(&v85) == 5)
        {
          v28 = 1;
          return v28 & 1;
        }

        goto LABEL_19;
      }

      v15 = sub_1002F9BA4(v83);
      v57 = *(v15 + 16);
      v58 = *v15;
      v16 = *(v15 + 32);
      v17 = *(v15 + 40);
      v18 = a2[3];
      v87 = a2[2];
      v88 = v18;
      v19 = a2[1];
      v85 = *a2;
      v86 = v19;
      v20 = a2[7];
      v91 = a2[6];
      v92 = v20;
      v21 = a2[5];
      v89 = a2[4];
      v90 = v21;
      v96 = *(a2 + 88);
      v22 = a2[10];
      v94 = a2[9];
      v95 = v22;
      v93 = a2[8];
      if (sub_1003043EC(&v85) != 4)
      {
        goto LABEL_19;
      }
    }

    v35 = sub_1002F9BA4(&v85);
    v36 = *(v35 + 32);
    v37 = *(v35 + 40);
    v59 = v58;
    v60 = v57;
    LOBYTE(v61) = v16;
    v38 = *(v35 + 16);
    v71 = *v35;
    v72 = v38;
    LOBYTE(v73) = v36;
    if (_s12NIOIMAPCore213StreamingKindO21__derived_enum_equalsySbAC_ACtFZ_0(&v59, &v71))
    {
      v28 = v17 == v37;
      return v28 & 1;
    }

LABEL_19:
    v28 = 0;
    return v28 & 1;
  }

  if (v8)
  {
    if (v8 == 1)
    {
      v9 = *sub_1002F9BA4(v83);
      v10 = a2[3];
      v87 = a2[2];
      v88 = v10;
      v11 = a2[1];
      v85 = *a2;
      v86 = v11;
      v12 = a2[7];
      v91 = a2[6];
      v92 = v12;
      v13 = a2[5];
      v89 = a2[4];
      v90 = v13;
      v96 = *(a2 + 88);
      v14 = a2[10];
      v94 = a2[9];
      v95 = v14;
      v93 = a2[8];
      if (sub_1003043EC(&v85) != 1)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    v39 = sub_1002F9BA4(v83);
    v93 = *(v39 + 128);
    v94 = *(v39 + 144);
    v95 = *(v39 + 160);
    v96 = *(v39 + 176);
    v89 = *(v39 + 64);
    v90 = *(v39 + 80);
    v91 = *(v39 + 96);
    v92 = *(v39 + 112);
    v85 = *v39;
    v86 = *(v39 + 16);
    v87 = *(v39 + 32);
    v88 = *(v39 + 48);
    v40 = a2[1];
    v59 = *a2;
    v60 = v40;
    v41 = a2[3];
    v61 = a2[2];
    v62 = v41;
    v42 = a2[5];
    v63 = a2[4];
    v64 = v42;
    v43 = a2[7];
    v65 = a2[6];
    v66 = v43;
    v44 = a2[9];
    v67 = a2[8];
    v68 = v44;
    v69 = a2[10];
    v70 = *(a2 + 88);
    if (sub_1003043EC(&v59) == 2)
    {
      v45 = sub_1002F9BA4(&v59);
      v46 = *(v45 + 144);
      v79 = *(v45 + 128);
      v80 = v46;
      v81 = *(v45 + 160);
      v82 = *(v45 + 176);
      v47 = *(v45 + 80);
      v75 = *(v45 + 64);
      v76 = v47;
      v48 = *(v45 + 112);
      v77 = *(v45 + 96);
      v78 = v48;
      v49 = *(v45 + 16);
      v71 = *v45;
      v72 = v49;
      v50 = *(v45 + 48);
      v73 = *(v45 + 32);
      v74 = v50;
      v28 = _s12NIOIMAPCore216MessageAttributeO21__derived_enum_equalsySbAC_ACtFZ_0(&v85, v71.i8);
      return v28 & 1;
    }

    goto LABEL_19;
  }

  v9 = *sub_1002F9BA4(v83);
  v23 = a2[3];
  v87 = a2[2];
  v88 = v23;
  v24 = a2[1];
  v85 = *a2;
  v86 = v24;
  v25 = a2[7];
  v91 = a2[6];
  v92 = v25;
  v26 = a2[5];
  v89 = a2[4];
  v90 = v26;
  v96 = *(a2 + 88);
  v27 = a2[10];
  v94 = a2[9];
  v95 = v27;
  v93 = a2[8];
  if (sub_1003043EC(&v85))
  {
    goto LABEL_19;
  }

LABEL_11:
  v28 = *sub_1002F9BA4(&v85) == v9;
  return v28 & 1;
}

uint64_t sub_100405E9C(uint64_t *a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  result = sub_10046C278(a1, a2, a3, 0);
  if (!v4)
  {
    if (result < 0)
    {
      v6 = " in body structure";
      v8 = 202;
      v7 = 0xD000000000000011;
    }

    else
    {
      if ((result - 0x100000000) >= 0xFFFFFFFF00000001)
      {
        return result;
      }

      v6 = "No month match for ";
      v7 = 0xD00000000000001DLL;
      v8 = 87;
    }

    v9 = v6 | 0x8000000000000000;
    sub_1003A527C();
    swift_allocError();
    *v10 = v7;
    v10[1] = v9;
    v10[2] = 0xD000000000000020;
    v10[3] = 0x80000001004B03C0;
    v10[4] = v8;
    return swift_willThrow();
  }

  return result;
}

double sub_100405FD4@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  (*(v3 + 16))(v12, a1, *a2, a2[1]);
  if (!v4)
  {
    v7 = v20;
    *(a3 + 128) = v19;
    *(a3 + 144) = v7;
    *(a3 + 160) = v21;
    *(a3 + 176) = v22;
    v8 = v16;
    *(a3 + 64) = v15;
    *(a3 + 80) = v8;
    v9 = v18;
    *(a3 + 96) = v17;
    *(a3 + 112) = v9;
    v10 = v12[1];
    *a3 = v12[0];
    *(a3 + 16) = v10;
    result = *&v13;
    v11 = v14;
    *(a3 + 32) = v13;
    *(a3 + 48) = v11;
  }

  return result;
}

uint64_t sub_100406064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[1] = a3;
  v4 = *(v3 + 16);
  v6[0] = a2;
  return v4(a1, v6);
}

void sub_1004060F0(uint64_t a1@<X8>)
{
  *a1 = 1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0x80;
}

void sub_100406120(uint64_t a1@<X8>)
{
  *a1 = 2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0x80;
}

double sub_100406178@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  (*(v3 + 16))(v8, a1, *a2, a2[1]);
  if (!v4)
  {
    result = *v8;
    v7 = v8[1];
    *a3 = v8[0];
    *(a3 + 16) = v7;
    *(a3 + 32) = v9;
  }

  return result;
}

unint64_t sub_1004061E8@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (!__OFADD__(a2, 1))
  {
    v7 = result;
    v8 = *result;
    v9 = *(result + 8);
    v10 = *(result + 16);
    v11 = *(result + 20);
    v12 = *(result + 22);
    if (a2 + 1 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v14 = a3;
    }

    else
    {

      sub_1004658F8(v7, &v30);
      if (!v5)
      {
        v26 = v11;
        sub_10046C184(v30, *(&v30 + 1), v31 | (WORD2(v31) << 32) | (BYTE6(v31) << 48), 0xD000000000000020, 0x80000001004B03C0, 84);
        v25 = sub_1004A5834();
        v16 = v15;

        if (*(a4 + 16))
        {
          v17 = sub_100064090(v25, v16);
          if (v18)
          {
            v19 = v17;

            v20 = *(*(a4 + 56) + 16 * v19);
            v29[0] = a2;
            v29[1] = a3;

            v20(&v30, v7, v29);

            v23 = v32;
            v24 = v31;
            *a5 = v30;
            *(a5 + 16) = v24;
            *(a5 + 32) = v23;
            return result;
          }
        }

        *&v30 = 0;
        *(&v30 + 1) = 0xE000000000000000;
        sub_1004A6724(25);

        *&v30 = 0xD000000000000017;
        *(&v30 + 1) = 0x80000001004B08E0;
        v33._countAndFlagsBits = v25;
        v33._object = v16;
        sub_1004A5994(v33);

        v21 = v30;
        sub_1003A527C();
        swift_allocError();
        *v22 = v21;
        *(v22 + 16) = 0xD000000000000020;
        *(v22 + 24) = 0x80000001004B03C0;
        *(v22 + 32) = 86;
        swift_willThrow();

        v11 = v26;
LABEL_7:
        *v7 = v8;
        *(v7 + 8) = v9;
        *(v7 + 16) = v10;
        *(v7 + 20) = v11;
        *(v7 + 22) = v12;
        return swift_willThrow();
      }
    }

    swift_willThrow();

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

unint64_t sub_1004064C0(unint64_t result, uint64_t a2, int64_t a3, uint64_t a4)
{
  if (!__OFADD__(a2, 1))
  {
    v6 = result;
    v7 = *result;
    v8 = *(result + 8);
    v9 = *(result + 16);
    v10 = *(result + 20);
    v11 = *(result + 22);
    if (a2 + 1 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v13 = a3;
    }

    else
    {

      sub_1004658F8(v6, &v27);
      if (!v4)
      {
        v24 = v10;
        sub_10046C184(v27, v28, v29 | (v30 << 32) | (v31 << 48), 0xD000000000000020, 0x80000001004B03C0, 84);
        v23 = sub_1004A5834();
        v15 = v14;

        if (*(a4 + 16))
        {
          v16 = sub_100064090(v23, v15);
          if (v17)
          {
            v18 = v16;

            v19 = *(*(a4 + 56) + 16 * v18);
            v27 = a2;
            v28 = a3;

            v19(&v26, v6, &v27);

            return v26;
          }
        }

        v27 = 0;
        v28 = 0xE000000000000000;
        sub_1004A6724(25);

        v27 = 0xD000000000000017;
        v28 = 0x80000001004B08E0;
        v32._countAndFlagsBits = v23;
        v32._object = v15;
        sub_1004A5994(v32);

        v20 = v27;
        v21 = v28;
        sub_1003A527C();
        swift_allocError();
        *v22 = v20;
        v22[1] = v21;
        v22[2] = 0xD000000000000020;
        v22[3] = 0x80000001004B03C0;
        v22[4] = 86;
        swift_willThrow();

        v10 = v24;
LABEL_7:
        *v6 = v7;
        *(v6 + 8) = v8;
        *(v6 + 16) = v9;
        *(v6 + 20) = v10;
        *(v6 + 22) = v11;
        return swift_willThrow();
      }
    }

    swift_willThrow();

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_100406788()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1004067C0(uint64_t a1)
{
  v1 = (*(a1 + 176) >> 9) & 7;
  if (v1 <= 4)
  {
    return v1;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_1004067DC(uint64_t result, unsigned int a2)
{
  if (a2 < 5)
  {
    *(result + 176) = *(result + 176) & 0xF1FF | (a2 << 9);
  }

  else
  {
    *result = a2 - 5;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 104) = 0u;
    *(result + 120) = 0u;
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 168) = 0;
    *(result + 176) = 2560;
  }

  return result;
}

unint64_t sub_10040684C()
{
  result = qword_1005DC7B8;
  if (!qword_1005DC7B8)
  {
    result = swift_getWitnessTable("\t%\b", &_s14_FetchResponseON, v0, v1);
    atomic_store(result, &qword_1005DC7B8);
  }

  return result;
}

uint64_t sub_100406964@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  v9 = v8;
  v17 = swift_allocObject();
  v17[2] = a4;
  v17[3] = a5;
  v17[4] = a6;
  v17[5] = a7;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1004075B4;
  *(v18 + 24) = v17;
  v39 = sub_100408ED4;
  v40 = v18;
  v19 = swift_allocObject();
  v19[2] = a4;
  v19[3] = a5;
  v19[4] = a6;
  v19[5] = a7;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_100408EEC;
  *(v20 + 24) = v19;
  v41 = sub_10040CB68;
  v42 = v20;
  v21 = swift_allocObject();
  v21[2] = a4;
  v21[3] = a5;
  v21[4] = a6;
  v21[5] = a7;
  result = swift_allocObject();
  *(result + 16) = sub_10040906C;
  *(result + 24) = v21;
  v43 = sub_10040CB68;
  v44 = result;
  v23 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    swift_retain_n();
    v24 = 32;
    while (1)
    {
      *(swift_allocObject() + 16) = *&v38[v24];
      if (v23 >= a3)
      {
        sub_1003A5228();
        swift_allocError();
        *v30 = a3;
      }

      else
      {
        v25 = *a1;
        v26 = a1[1];
        v37 = *(a1 + 4);
        v27 = a3;
        v28 = *(a1 + 10);
        v29 = *(a1 + 22);

        sub_10040BE98(a1, v23, v27);
        if (!v9)
        {

          sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
          result = swift_arrayDestroy();
          v32 = v52;
          a8[6] = v51;
          a8[7] = v32;
          a8[8] = v53;
          v33 = v48;
          a8[2] = v47;
          a8[3] = v33;
          v34 = v50;
          a8[4] = v49;
          a8[5] = v34;
          v35 = v46;
          *a8 = v45;
          a8[1] = v35;
          return result;
        }

        *a1 = v25;
        a1[1] = v26;
        *(a1 + 4) = v37;
        *(a1 + 10) = v28;
        *(a1 + 22) = v29;
        a3 = v27;
      }

      swift_willThrow();
      swift_errorRetain();
      sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
      if (swift_dynamicCast())
      {
      }

      else
      {

        swift_errorRetain();
        if ((swift_dynamicCast() & 1) == 0)
        {
          sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
          swift_arrayDestroy();
        }
      }

      v9 = 0;
      v24 += 16;
      if (v24 == 80)
      {
        sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
        swift_arrayDestroy();
        sub_1003A527C();
        swift_allocError();
        *v31 = 0xD000000000000019;
        v31[1] = 0x80000001004B08C0;
        v31[2] = 0xD000000000000020;
        v31[3] = 0x80000001004B03C0;
        v31[4] = 148;
        return swift_willThrow();
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100406E20@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  sub_10000C9C0(&qword_1005DC7C0, &qword_1005048C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004EC2A0;
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a6;
  v14[5] = a7;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_10040BFE4;
  *(v15 + 24) = v14;
  *(inited + 32) = 0x5347414C46;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = sub_10040CB68;
  *(inited + 56) = v15;
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a7;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_10040C004;
  *(v17 + 24) = v16;
  *(inited + 64) = 1414744396;
  *(inited + 72) = 0xE400000000000000;
  *(inited + 80) = sub_10040CB68;
  *(inited + 88) = v17;
  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a6;
  v18[5] = a7;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_10040C038;
  *(v19 + 24) = v18;
  *(inited + 96) = 1112888140;
  *(inited + 104) = 0xE400000000000000;
  *(inited + 112) = sub_10040CB68;
  *(inited + 120) = v19;
  v20 = swift_allocObject();
  v20[2] = a4;
  v20[3] = a5;
  v20[4] = a6;
  v20[5] = a7;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_10040C06C;
  *(v21 + 24) = v20;
  *(inited + 128) = 0x48435241455345;
  *(inited + 136) = 0xE700000000000000;
  *(inited + 144) = sub_10040CB68;
  *(inited + 152) = v21;
  v22 = swift_allocObject();
  v22[2] = a4;
  v22[3] = a5;
  v22[4] = a6;
  v22[5] = a7;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_10040C08C;
  *(v23 + 24) = v22;
  *(inited + 160) = 0x484352414553;
  *(inited + 168) = 0xE600000000000000;
  *(inited + 176) = sub_10040CB68;
  *(inited + 184) = v23;
  v24 = swift_allocObject();
  v24[2] = a4;
  v24[3] = a5;
  v24[4] = a6;
  v24[5] = a7;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_10040C0AC;
  *(v25 + 24) = v24;
  *(inited + 192) = 0x535554415453;
  *(inited + 200) = 0xE600000000000000;
  *(inited + 208) = sub_10040CB68;
  *(inited + 216) = v25;
  v26 = swift_allocObject();
  v26[2] = a4;
  v26[3] = a5;
  v26[4] = a6;
  v26[5] = a7;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_10040C0CC;
  *(v27 + 24) = v26;
  *(inited + 224) = 0x43415053454D414ELL;
  *(inited + 232) = 0xE900000000000045;
  *(inited + 240) = sub_10040CB68;
  *(inited + 248) = v27;
  v28 = swift_allocObject();
  v28[2] = a4;
  v28[3] = a5;
  v28[4] = a6;
  v28[5] = a7;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_10040C0EC;
  *(v29 + 24) = v28;
  *(inited + 256) = 0x4843544142444955;
  *(inited + 264) = 0xEA00000000005345;
  *(inited + 272) = sub_10040CB68;
  *(inited + 280) = v29;
  swift_retain_n();
  v31 = sub_100411870(inited, v30);
  swift_setDeallocating();
  sub_10000C9C0(&qword_1005DC798, &qword_100504118);
  result = swift_arrayDestroy();
  if (!__OFADD__(a2, 1))
  {
    v33 = *a1;
    v34 = a1[1];
    v35 = *(a1 + 4);
    v36 = *(a1 + 10);
    v37 = *(a1 + 22);
    if (a2 + 1 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v38 = a3;
    }

    else
    {

      sub_1004658F8(a1, &v60);
      if (!v56)
      {
        v57 = v36;
        sub_10046C184(v60, v61, v62 | (v63 << 32) | (v64 << 48), 0xD000000000000020, 0x80000001004B03C0, 84);
        v53 = v35;
        v54 = sub_1004A5834();
        v40 = v39;

        if (*(v31 + 16))
        {
          v41 = sub_100064090(v54, v40);
          if (v42)
          {
            v43 = v41;

            v44 = *(*(v31 + 56) + 16 * v43);
            v60 = a2;
            v61 = a3;

            v44(v65, a1, &v60);

            v48 = v65[7];
            v49 = v65[8];
            a8[6] = v65[6];
            a8[7] = v48;
            a8[8] = v49;
            v50 = v65[3];
            a8[2] = v65[2];
            a8[3] = v50;
            v51 = v65[5];
            a8[4] = v65[4];
            a8[5] = v51;
            v52 = v65[1];
            *a8 = v65[0];
            a8[1] = v52;
            return result;
          }
        }

        v60 = 0;
        v61 = 0xE000000000000000;
        sub_1004A6724(25);

        v60 = 0xD000000000000017;
        v61 = 0x80000001004B08E0;
        v66._countAndFlagsBits = v54;
        v66._object = v40;
        sub_1004A5994(v66);

        v45 = v60;
        v46 = v61;
        sub_1003A527C();
        swift_allocError();
        *v47 = v45;
        v47[1] = v46;
        v47[2] = 0xD000000000000020;
        v47[3] = 0x80000001004B03C0;
        v47[4] = 86;
        swift_willThrow();

        v35 = v53;
        v36 = v57;
LABEL_7:
        *a1 = v33;
        a1[1] = v34;
        *(a1 + 4) = v35;
        *(a1 + 10) = v36;
        *(a1 + 22) = v37;
        swift_willThrow();
      }
    }

    swift_willThrow();

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_10040757C()
{

  return _swift_deallocObject(v0, 48, 7);
}

void sub_1004075D4(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int8x16_t *a8@<X8>)
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v9 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v18 = a3;
      goto LABEL_9;
    }

    v13 = *a1;
    v14 = a1[1];
    v15 = *(a1 + 4);
    v16 = *(a1 + 10);
    v17 = *(a1 + 22);
    sub_100469DF8(a1);
    if (v8)
    {
      *a1 = v13;
      a1[1] = v14;
      *(a1 + 4) = v15;
      *(a1 + 10) = v16;
      *(a1 + 22) = v17;
LABEL_9:
      swift_willThrow();
      return;
    }

    sub_10046B71C(0x28uLL, 0xE100000000000000, 0, 0, a1, v9, a3);

    v19 = sub_10046D9E8(a1, v9, a3, a4, a5, a6, a7, v9, a3);

    if (!v19)
    {
      v19 = _swiftEmptyArrayStorage;
    }

    sub_10046B71C(0x29uLL, 0xE100000000000000, 0, 1, a1, v9, a3);

    v28[0].i64[0] = v19;
    sub_1002F9C4C(v28);
    v20 = v28[7];
    a8[6] = v28[6];
    a8[7] = v20;
    a8[8] = v28[8];
    v21 = v28[3];
    a8[2] = v28[2];
    a8[3] = v21;
    v22 = v28[5];
    a8[4] = v28[4];
    a8[5] = v22;
    v23 = v28[1];
    *a8 = v28[0];
    a8[1] = v23;
  }
}

uint64_t *sub_100407808@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v9 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v19 = a3;
      return swift_willThrow();
    }

    v11 = result;
    v12 = *result;
    v13 = result[1];
    v14 = *(result + 4);
    v25 = *(result + 22);
    v26 = *(result + 10);

    sub_1004093C0(v11, v9, a3, a4, a5, a6, a7, &v27);
    if (v8)
    {

      *v11 = v12;
      *(v11 + 8) = v13;
      *(v11 + 16) = v14;
      *(v11 + 20) = v26;
      *(v11 + 22) = v25;
      return swift_willThrow();
    }

    v20 = v28;
    v21 = v29;
    v22 = v30;
    v23 = v31;
    *a8 = v27;
    *(a8 + 16) = v20;
    *(a8 + 20) = v21;
    *(a8 + 24) = v22;
    *(a8 + 32) = v23;
  }

  return result;
}

uint64_t sub_10040795C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t (*a8)(__int128 *)@<X7>, _OWORD *a9@<X8>)
{
  v11 = __OFADD__(a2, 1);
  v12 = a2 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    if (v12 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v21 = a3;
      return swift_willThrow();
    }

    v14 = result;
    v16 = *result;
    v17 = *(result + 8);
    v18 = *(result + 16);
    v19 = *(result + 20);
    v20 = *(result + 22);
    sub_100469DF8(result);
    if (v9)
    {
      *v14 = v16;
      *(v14 + 8) = v17;
      *(v14 + 16) = v18;
      *(v14 + 20) = v19;
      *(v14 + 22) = v20;
      return swift_willThrow();
    }

    sub_100407808(v14, a2, a3, a4, a5, a6, a7, &v40);
    v31 = v40;
    LODWORD(v32) = v41;
    BYTE4(v32) = v42;
    *(&v32 + 1) = v43;
    v33 = v44;
    result = a8(&v31);
    v22 = v38;
    a9[6] = v37;
    a9[7] = v22;
    a9[8] = v39;
    v23 = v34;
    a9[2] = v33;
    a9[3] = v23;
    v24 = v36;
    a9[4] = v35;
    a9[5] = v24;
    v25 = v32;
    *a9 = v31;
    a9[1] = v25;
  }

  return result;
}

void sub_100407AD8(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v9 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v18 = a3;
    }

    else
    {
      v16 = *a1;
      v17 = a1[1];
      v32 = *(a1 + 10);
      v33 = *(a1 + 4);
      v31 = *(a1 + 22);

      sub_100470558(a1, v9, a3, &v44);
      if (!v8)
      {

        v29 = sub_10046460C(a1, v9, a3);
        v43 = _swiftEmptyArrayStorage;

        sub_100472178(a1, &v43, v9, a3, a4, a5, a6, a7);

        v19 = v43;
        v20 = v44;
        v21 = v45;
        v22 = v46;
        v23 = v47;
        v24 = v48;
        sub_1003E97D0(v44, v45);

        sub_100073984(v20, v21, v22);

        v34.i64[0] = v20;
        v34.i64[1] = v21;
        *&v35 = v22;
        *(&v35 + 1) = v23;
        LOBYTE(v36) = v24;
        BYTE1(v36) = v29 & 1;
        *(&v36 + 1) = v19;
        sub_1002F9C94(&v34);
        v25 = v41;
        *(a8 + 96) = v40;
        *(a8 + 112) = v25;
        *(a8 + 128) = v42;
        v26 = v37;
        *(a8 + 32) = v36;
        *(a8 + 48) = v26;
        v27 = v39;
        *(a8 + 64) = v38;
        *(a8 + 80) = v27;
        v28 = v35;
        *a8 = v34;
        *(a8 + 16) = v28;
        return;
      }

      *a1 = v16;
      a1[1] = v17;
      *(a1 + 4) = v33;
      *(a1 + 10) = v32;
      *(a1 + 22) = v31;
    }

    swift_willThrow();
  }
}

void sub_100407D80(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int8x16_t *a4@<X8>)
{
  v5 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v5 >= a3)
    {
      sub_1003A5228();
      v14 = swift_allocError();
      *v15 = a3;
    }

    else
    {
      v9 = *a1;
      v10 = a1[1];
      v11 = *(a1 + 4);
      v12 = *(a1 + 10);
      v13 = *(a1 + 22);

      sub_10040C32C(a1, v5, a3, v57);
      v14 = v4;
      if (!v4)
      {
        v64 = v57[6];
        v65 = v57[7];
        v66 = v57[8];
        v60 = v57[2];
        v61 = v57[3];
        v62 = v57[4];
        v63 = v57[5];
        v58 = v57[0];
        v59 = v57[1];

LABEL_35:
        v37 = v65;
        a4[6] = v64;
        a4[7] = v37;
        a4[8] = v66;
        v38 = v61;
        a4[2] = v60;
        a4[3] = v38;
        v39 = v63;
        a4[4] = v62;
        a4[5] = v39;
        v40 = v59;
        *a4 = v58;
        a4[1] = v40;
        return;
      }

      *a1 = v9;
      a1[1] = v10;
      *(a1 + 4) = v11;
      *(a1 + 10) = v12;
      *(a1 + 22) = v13;
    }

    swift_willThrow();
    v56 = v14;
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {
    }

    else
    {

      v56 = v14;
      swift_errorRetain();
      if ((swift_dynamicCast() & 1) == 0)
      {

        return;
      }
    }

    if (v5 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v29 = a3;
    }

    else
    {
      v16 = *a1;
      v17 = a1[1];
      v18 = *(a1 + 4);
      v19 = *(a1 + 10);
      v20 = *(a1 + 22);
      if (v5 + 1 >= a3)
      {
        sub_1003A5228();
        swift_allocError();
        *v30 = a3;
      }

      else
      {
        swift_retain_n();
        if (v5 + 2 >= a3)
        {
          sub_1003A5228();
          v31 = swift_allocError();
          *v32 = a3;
          v33 = _swiftEmptyArrayStorage;
        }

        else
        {
          v41 = v18;
          v42 = v16;
          v21 = *a1;
          v22 = a1[1];
          v23 = *(a1 + 4);
          v44 = *(a1 + 22);
          v45 = *(a1 + 10);
          if (v5 + 3 >= a3)
          {
LABEL_28:
            sub_1003A5228();
            v31 = swift_allocError();
            *v34 = a3;

            v33 = _swiftEmptyArrayStorage;
          }

          else
          {
            v46 = _swiftEmptyArrayStorage;
            v43 = v20;
            while (1)
            {
              swift_retain_n();
              sub_100469DF8(a1);

              v24 = v19;
              v25 = sub_10046C278(a1, v5 + 2, a3, 0);
              v26 = v25;
              if ((v25 & 0x8000000000000000) != 0)
              {
                sub_1003A527C();
                v31 = swift_allocError();
                v35->i64[0] = 0xD000000000000011;
                v35->i64[1] = 0x80000001004B08A0;
                v35[1].i64[0] = 0xD000000000000020;
                v35[1].i64[1] = 0x80000001004B03C0;
                v36 = 202;
                goto LABEL_31;
              }

              if ((v25 - 0x20000000) < 0xFFFFFFFF00000001)
              {
                break;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v46 = sub_100461500(0, *(v46 + 2) + 1, 1, v46);
              }

              v28 = *(v46 + 2);
              v27 = *(v46 + 3);
              if (v28 >= v27 >> 1)
              {
                v46 = sub_100461500((v27 > 1), v28 + 1, 1, v46);
              }

              *(v46 + 2) = v28 + 1;
              *&v46[4 * v28 + 32] = v26;
              v21 = *a1;
              v22 = a1[1];
              v23 = *(a1 + 4);
              v44 = *(a1 + 22);
              v45 = *(a1 + 10);
              v19 = v24;
              v20 = v43;
              if (v5 + 3 >= a3)
              {
                goto LABEL_28;
              }
            }

            sub_1004A6724(45);

            v47.i64[0] = 0xD00000000000002BLL;
            v47.i64[1] = 0x80000001004B09A0;
            v56 = v26;
            v68._countAndFlagsBits = sub_1004A6CE4();
            sub_1004A5994(v68);

            sub_1003A527C();
            v31 = swift_allocError();
            *v35 = v47;
            v35[1].i64[0] = 0xD000000000000020;
            v35[1].i64[1] = 0x80000001004B03C0;
            v36 = 69;
LABEL_31:
            v35[2].i64[0] = v36;
            LOWORD(v19) = v24;
            v20 = v43;
            v33 = v46;
          }

          swift_willThrow();

          *a1 = v21;
          a1[1] = v22;
          *(a1 + 4) = v23;
          *(a1 + 10) = v45;
          *(a1 + 22) = v44;
          v16 = v42;
          v18 = v41;
        }

        swift_willThrow();
        v67 = v31;
        swift_errorRetain();
        if (swift_dynamicCast())
        {

          v47 = v33;
          v48.i8[0] = 1;
          sub_1002F9CE0(&v47);
          v64 = v53;
          v65 = v54;
          v66 = v55;
          v60 = v49;
          v61 = v50;
          v62 = v51;
          v63 = v52;
          v58 = v47;
          v59 = v48;
          goto LABEL_35;
        }
      }

      swift_willThrow();

      *a1 = v16;
      a1[1] = v17;
      *(a1 + 4) = v18;
      *(a1 + 10) = v19;
      *(a1 + 22) = v20;
    }

    swift_willThrow();
  }
}

void sub_100408490(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v9 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v18 = a3;
      goto LABEL_6;
    }

    v13 = *a1;
    v14 = a1[1];
    v15 = *(a1 + 4);
    v16 = *(a1 + 10);
    v17 = *(a1 + 22);
    sub_100469DF8(a1);
    if (v8)
    {
      *a1 = v13;
      a1[1] = v14;
      *(a1 + 4) = v15;
      *(a1 + 10) = v16;
      *(a1 + 22) = v17;
LABEL_6:
      swift_willThrow();
      return;
    }

    v19 = sub_10041ED48(a1, a2, a3, a4, a5, a6, a7);
    v21 = v20;
    v23 = HIDWORD(v22);
    v24 = v22;
    swift_beginAccess();
    v25 = v23 - v24;
    if (v25)
    {
      v27 = v24;
      v28 = v19[3];
      v39 = ((v21 >> 24) & 0xFFFF00 | BYTE6(v21)) + v27;
      v29 = sub_10015BEAC(v25, 0);
      memcpy(v29 + 32, (v28 + v39), v25);
      v26 = v29;
    }

    else
    {
      v26 = _swiftEmptyArrayStorage;
    }

    v30 = _s12NIOIMAPCore211MailboxNameVyACSays5UInt8VGcfC_0(v26);
    v38 = v31;

    sub_100469DF8(a1);

    sub_10046B71C(0x28uLL, 0xE100000000000000, 0, 0, a1, a2, a3);

    sub_100408AC8(a1, v9, a3, a4, a5, a6, a7, v72);

    *&v46[64] = v72[4];
    *&v46[80] = v72[5];
    *&v46[96] = v72[6];
    *&v46[112] = v72[7];
    *v46 = v72[0];
    *&v46[16] = v72[1];
    *&v46[32] = v72[2];
    *&v46[48] = v72[3];
    UInt32.init(_:)(v46);
    v68 = *&v46[64];
    v69 = *&v46[80];
    v70 = *&v46[96];
    v71 = *&v46[112];
    v64 = *v46;
    v65 = *&v46[16];
    v66 = *&v46[32];
    v67 = *&v46[48];
    sub_10046B71C(0x29uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
    v63[4] = v68;
    v63[5] = v69;
    v63[6] = v70;
    v63[7] = v71;
    v63[0] = v64;
    v63[1] = v65;
    v63[2] = v66;
    v63[3] = v67;
    if (sub_10040C198(v63) == 1)
    {
      v54 = 1;
      v53 = 1;
      v52 = 1;
      v51 = 1;
      v50 = 1;
      v49 = 1;
      v48 = 1;
      v47 = 1;
      *v45 = 0;
      v45[8] = 1;
      *&v45[16] = 0;
      v45[24] = 1;
      *&v45[28] = 0;
      v45[32] = 1;
      *&v45[36] = 0;
      v45[40] = 1;
      *&v45[48] = 0;
      v45[56] = 1;
      *&v45[64] = 0;
      v45[72] = 1;
      *&v45[80] = 0;
      v45[88] = 1;
      *&v45[96] = 0;
      v45[104] = 1;
      *&v45[112] = 0uLL;
      *v46 = 0;
      v46[8] = 1;
      *&v46[16] = 0;
      v46[24] = 1;
      *&v46[28] = 0;
      v46[32] = 1;
      *&v46[36] = 0;
      v46[40] = 1;
      *&v46[48] = 0;
      v46[56] = 1;
      *&v46[64] = 0;
      v46[72] = 1;
      *&v46[80] = 0;
      v46[88] = 1;
      *&v46[96] = 0;
      v46[104] = 1;
      *&v46[112] = 0;
      *&v46[120] = 0;
      sub_1000CB8B8(v45, &v55);
      sub_10009A0FC(v46);
      v59 = *&v45[64];
      v60 = *&v45[80];
      v61 = *&v45[96];
      v62 = *&v45[112];
      v55 = *v45;
      v56 = *&v45[16];
      v32 = *&v45[32];
      v33 = *&v45[48];
    }

    else
    {
      v59 = v68;
      v60 = v69;
      v61 = v70;
      v62 = v71;
      v55 = v64;
      v56 = v65;
      v32 = v66;
      v33 = v67;
    }

    v57 = v32;
    v58 = v33;
    *&v45[36] = v32;
    *&v45[20] = v56;
    *&v45[4] = v55;
    *&v45[116] = v62;
    *&v45[100] = v61;
    *&v45[84] = v60;
    *&v45[68] = v59;
    *&v45[52] = v33;
    *v46 = v30;
    *&v46[12] = *v45;
    *&v46[76] = *&v45[64];
    *&v46[60] = *&v45[48];
    *&v46[44] = *&v45[32];
    *&v46[28] = *&v45[16];
    *&v46[8] = v38;
    *&v46[140] = HIDWORD(v62);
    *&v46[124] = *&v45[112];
    *&v46[108] = *&v45[96];
    *&v46[92] = *&v45[80];
    sub_1002F9D78(v46);
    v34 = *&v46[112];
    a8[6] = *&v46[96];
    a8[7] = v34;
    a8[8] = *&v46[128];
    v35 = *&v46[48];
    a8[2] = *&v46[32];
    a8[3] = v35;
    v36 = *&v46[80];
    a8[4] = *&v46[64];
    a8[5] = v36;
    v37 = *&v46[16];
    *a8 = *v46;
    a8[1] = v37;
  }
}

uint64_t *sub_100408AC8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v9 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v19 = a3;
      return swift_willThrow();
    }

    v11 = result;
    v12 = *result;
    v13 = result[1];
    v14 = *(result + 4);
    v25 = *(result + 22);
    v26 = *(result + 10);

    sub_10040B4AC(v11, v9, a3, a4, a5, a6, a7, v27);
    if (v8)
    {

      *v11 = v12;
      *(v11 + 8) = v13;
      *(v11 + 16) = v14;
      *(v11 + 20) = v26;
      *(v11 + 22) = v25;
      return swift_willThrow();
    }

    v20 = v27[5];
    a8[4] = v27[4];
    a8[5] = v20;
    v21 = v27[7];
    a8[6] = v27[6];
    a8[7] = v21;
    v22 = v27[1];
    *a8 = v27[0];
    a8[1] = v22;
    v23 = v27[3];
    a8[2] = v27[2];
    a8[3] = v23;
  }

  return result;
}

__n128 sub_100408C14@<Q0>(uint64_t a1@<X8>, uint64_t *a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  v6 = sub_100420598(a2, a3, a4);
  if (!v4)
  {
    v13.i64[0] = v6;
    v13.i64[1] = v7;
    v14.n128_u64[0] = v8;
    sub_1002F9D2C(&v13);
    v10 = v20;
    *(a1 + 96) = v19;
    *(a1 + 112) = v10;
    *(a1 + 128) = v21;
    v11 = v16;
    *(a1 + 32) = v15;
    *(a1 + 48) = v11;
    v12 = v18;
    *(a1 + 64) = v17;
    *(a1 + 80) = v12;
    result = v14;
    *a1 = v13;
    *(a1 + 16) = result;
  }

  return result;
}

void sub_100408C84(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v9 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v19 = a3;
      goto LABEL_7;
    }

    v16 = *a1;
    v17 = a1[1];
    v18 = *(a1 + 4);
    v45 = *(a1 + 10);
    v46 = v18;
    v33 = *(a1 + 22);

    sub_10041AFA0(a1, v9, a3, v43);
    if (v8)
    {

      *a1 = v16;
      a1[1] = v17;
      v21 = v45;
      *(a1 + 4) = v46;
      *(a1 + 10) = v21;
      *(a1 + 22) = v33;
LABEL_7:
      swift_willThrow();
      return;
    }

    v30 = v43[1];
    v31 = v43[0];
    v29 = v43[2];
    v20 = v43[3];
    v28 = v44;

    v22 = sub_100470080(a1, v9, a3, a4, a5, a6, a7);

    v23 = _swiftEmptyArrayStorage;
    if (v22)
    {
      v23 = v22;
    }

    v34.i64[0] = v31;
    v34.i64[1] = v30;
    *&v35 = v29;
    *(&v35 + 1) = v20;
    LOBYTE(v36) = v28;
    *(&v36 + 1) = v23;
    sub_1002F9B44(&v34);
    v24 = v41;
    *(a8 + 96) = v40;
    *(a8 + 112) = v24;
    *(a8 + 128) = v42;
    v25 = v37;
    *(a8 + 32) = v36;
    *(a8 + 48) = v25;
    v26 = v39;
    *(a8 + 64) = v38;
    *(a8 + 80) = v26;
    v27 = v35;
    *a8 = v34;
    *(a8 + 16) = v27;
  }
}

uint64_t sub_100408F38@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X7>, _OWORD *a5@<X8>, uint64_t (*a7)(_OWORD *))
{
  result = sub_10046C278(a1, a2, a3, 1);
  if (!v7)
  {
    if (result < 0)
    {
      sub_1003A527C();
      swift_allocError();
      *v19 = 0xD000000000000011;
      v19[1] = 0x80000001004B08A0;
      v19[2] = 0xD000000000000020;
      v19[3] = 0x80000001004B03C0;
      v19[4] = 202;
      return swift_willThrow();
    }

    else
    {
      v14 = result;
      sub_10046B71C(a4, 0xE700000000000000, 0, 0, a1, a2, a3);
      *&v20[0] = v14;
      result = a7(v20);
      v15 = v20[7];
      a5[6] = v20[6];
      a5[7] = v15;
      a5[8] = v20[8];
      v16 = v20[3];
      a5[2] = v20[2];
      a5[3] = v16;
      v17 = v20[5];
      a5[4] = v20[4];
      a5[5] = v17;
      v18 = v20[1];
      *a5 = v20[0];
      a5[1] = v18;
    }
  }

  return result;
}

uint64_t *sub_1004090B8(uint64_t *result, uint64_t a2, uint64_t a3)
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

    sub_1004091B0(v6, v4, a3, &v13);
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

void sub_1004091B0(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_10046B71C(0x22uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (!v4)
  {
    v9 = *(a1 + 2);
    if (*(a1 + 3) == v9)
    {
      sub_1003A5324();
      swift_allocError();
LABEL_11:
      swift_willThrow();
      return;
    }

    v10 = *(a1 + 22);
    v11 = *(a1 + 10);
    v12 = *a1;
    swift_beginAccess();
    if (v9 == -1)
    {
      __break(1u);
      return;
    }

    v13 = *(*(v12 + 24) + (v10 | (v11 << 8)) + v9);
    *(a1 + 2) = v9 + 1;
    v14 = v13 == 10 || v13 == 13;
    if (v14 || v13 < 0 || !v13 || v13 == 34 || v13 == 92)
    {
      sub_1004A6724(29);

      v17._countAndFlagsBits = sub_1004A58D4();
      sub_1004A5994(v17);

      sub_1003A527C();
      swift_allocError();
      *v15 = 0xD00000000000001BLL;
      v15[1] = 0x80000001004B09D0;
      v15[2] = 0xD000000000000020;
      v15[3] = 0x80000001004B03C0;
      v15[4] = 174;
      goto LABEL_11;
    }

    sub_10046B71C(0x22uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
    *a4 = sub_1004A58E4();
    a4[1] = v16;
  }
}

void sub_1004093C0(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  sub_10046B71C(0x28uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (!v8)
  {
    v53 = a8;

    v17 = sub_1004700C8(a1, a2, a3, a4, a5, a6, a7);

    if (!v17)
    {
      v17 = _swiftEmptyArrayStorage;
    }

    sub_10046B71C(0x29uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else if (a2 + 1 >= a3)
    {

      sub_1003A5228();
      swift_allocError();
      *v18 = a3;
      swift_willThrow();
    }

    else
    {
      v52 = v17;

      sub_100469DF8(a1);

      sub_1004090B8(a1, a2 + 1, a3);
      v50 = v19;

      sub_100469DF8(a1);

      v20 = sub_10041ED48(a1, a2, a3, a4, a5, a6, a7);
      v22 = v21;
      v46 = HIDWORD(v23);
      v49 = v20;
      v24 = v23;
      swift_beginAccess();
      v25 = v46 - v24;
      if (v46 == v24)
      {
        v26 = _swiftEmptyArrayStorage;
      }

      else
      {
        v45 = ((v22 >> 24) & 0xFFFF00 | BYTE6(v22)) + v24;
        v47 = v49[3];
        v27 = v25;
        v28 = sub_10015BEAC(v25, 0);
        memcpy(v28 + 32, (v47 + v45), v27);
        v26 = v28;
      }

      v29 = _s12NIOIMAPCore211MailboxNameVyACSays5UInt8VGcfC_0(v26);
      v48 = v30;

      v31 = sub_1004700F4(a1, a2, a3, a4, a5, a6, a7);
      v32 = v52;
      v34 = v33;
      v36 = v35;
      v51 = v31;

      if (!v34)
      {
        sub_1003FF878(_swiftEmptyArrayStorage);
        v51 = v37;
        v34 = v38;
        v36 = v39;
      }

      v40 = v29;
      v41 = v48;
      if (!v50)
      {
        goto LABEL_17;
      }

      v42 = sub_1004A5584();

      if ((v42 & 0x100) == 0)
      {
        v43 = sub_1004A5584();

        v32 = v52;
        v41 = v48;
        if ((v43 & 0x100) == 0)
        {
LABEL_18:
          *v53 = v32;
          *(v53 + 8) = v40;
          *(v53 + 16) = v41;
          *(v53 + 20) = v43;
          *(v53 + 24) = v51;
          *(v53 + 32) = v34;
          *(v53 + 40) = v36;
          return;
        }

LABEL_17:
        LOBYTE(v43) = 0;
        goto LABEL_18;
      }

      sub_1002EEE28();
      swift_allocError();
      *v44 = 0xD000000000000029;
      v44[1] = 0x80000001004AE390;
      swift_willThrow();
    }
  }
}

uint64_t *sub_100409AB8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_10000C9C0(&qword_1005DC7E8, &qword_1005048F0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1004CEAA0;
  result = sub_10042117C(a1, a2, a3, a4);
  if (v7)
  {
    *(v12 + 16) = 0;
    v12 = v7;

    return v12;
  }

  *(v12 + 32) = result;
  *(v12 + 40) = v14;
  if (!__OFADD__(a2, 1))
  {
    if (a2 + 1 < a3)
    {
      while (1)
      {

        sub_100469DF8(a1);

        v15 = sub_10042117C(a1, a2, a3, a4);
        v18 = *(v12 + 16);
        v17 = *(v12 + 24);
        if (v18 >= v17 >> 1)
        {
          v20 = v15;
          v21 = v16;
          v22 = sub_100461514((v17 > 1), v18 + 1, 1, v12);
          v16 = v21;
          v12 = v22;
          v15 = v20;
        }

        *(v12 + 16) = v18 + 1;
        v19 = v12 + 16 * v18;
        *(v19 + 32) = v15;
        *(v19 + 40) = v16;
      }
    }

    sub_1003A5228();
    swift_allocError();
    *v23 = a3;
    swift_willThrow();

    return v12;
  }

  __break(1u);
  return result;
}

uint64_t sub_100409CD4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t **a8@<X8>)
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    return result;
  }

  if (v9 >= a3)
  {
    sub_1003A5228();
    swift_allocError();
    *v26 = a3;
    return swift_willThrow();
  }

  v11 = result;
  v13 = *result;
  v14 = *(result + 8);
  v15 = *(result + 16);
  v16 = *(result + 20);
  v17 = *(result + 22);
  sub_100469DF8(result);
  if (v8)
  {
    *v11 = v13;
    *(v11 + 8) = v14;
    *(v11 + 16) = v15;
    *(v11 + 20) = v16;
    *(v11 + 22) = v17;
    return swift_willThrow();
  }

  sub_10046B71C(0x28uLL, 0xE100000000000000, 0, 0, v11, v9, a3);

  v18 = sub_10046E5D4(v11, v9, a3, a4, a5, a6, a7);
  v20 = v19;
  v22 = v21;

  if (!v20)
  {
    sub_1003FF878(_swiftEmptyArrayStorage);
    v18 = v23;
    v20 = v24;
    v22 = v25;
  }

  sub_10046B71C(0x29uLL, 0xE100000000000000, 0, 0, v11, v9, a3);

  *a8 = v18;
  a8[1] = v20;
  a8[2] = v22;
  return result;
}

uint64_t sub_100409ED8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v49 = a6;
  v44 = a8;
  v14 = sub_10000C9C0(&qword_1005D7F50, &unk_100502FF0);
  __chkstk_darwin(v14 - 8);
  v46 = &v41 - v15;
  v45 = sub_10000C9C0(&qword_1005DC7E0, &qword_1005048E8);
  __chkstk_darwin(v45);
  v17 = &v41 - v16;
  v50 = 0;
  *&v51 = _swiftEmptyArrayStorage;
  *(&v51 + 1) = _swiftEmptyArrayStorage;
  v47 = a2;
  v18 = a2;
  v19 = a7;
  v20 = a3;
  v21 = v48;
  sub_10040A230(a1, v18, a3, a4, a5, v49, v19, &v41 - v16);
  v48 = v21;
  if (v21)
  {
    goto LABEL_8;
  }

  v41 = a4;
  v42 = a1;
  v43 = v19;
  v22 = *v17;
  v23 = *(v17 + 1);
  v24 = *(v17 + 4);
  v25 = *(v17 + 10);
  v26 = v17[22];
  v27 = v46;
  sub_1002FC178(&v17[*(v45 + 52)], v46);
  v28 = type metadata accessor for ParameterValue(0);
  (*(*(v28 - 8) + 56))(v27, 0, 1, v28);

  result = sub_1003FCAA0(v27, v22, v23, v24 | (v25 << 32) | (v26 << 48));
  v30 = v47 + 1;
  if (__OFADD__(v47, 1))
  {
    __break(1u);
  }

  else
  {
    if (v30 >= v20)
    {
      sub_1003A5228();
      swift_allocError();
      *v39 = v20;

      goto LABEL_7;
    }

    v31 = v42;
    v32 = *v42;
    v33 = v42[1];
    v34 = *(v42 + 4);
    v35 = *(v42 + 10);
    v36 = *(v42 + 22);
    swift_retain_n();

    v37 = v30;
    v38 = v48;
    sub_1004682F4(v31, v37, v20, &v50, v41, a5, v49, v43);
    if (v38)
    {

      *v31 = v32;
      v31[1] = v33;
      *(v31 + 4) = v34;
      *(v31 + 10) = v35;
      *(v31 + 22) = v36;
LABEL_7:
      swift_willThrow();

      sub_100025F40(v17, &qword_1005DC7E0, &qword_1005048E8);
LABEL_8:
    }

    sub_100025F40(v17, &qword_1005DC7E0, &qword_1005048E8);

    v40 = v44;
    *v44 = v50;
    *(v40 + 1) = v51;
  }

  return result;
}

void sub_10040A230(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v49 = a8;
  v16 = type metadata accessor for ParameterValue(0);
  __chkstk_darwin(v16);
  v19 = v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __OFADD__(a2, 1);
  v21 = a2 + 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    if (v21 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v28 = a3;
    }

    else
    {
      v44 = v17;
      v22 = *a1;
      v23 = a1[1];
      v24 = *(a1 + 4);
      v46 = *(a1 + 10);
      v47 = v24;
      v45 = *(a1 + 22);
      v48 = v22;

      v25 = sub_10041ED48(a1, v21, a3, a4, a5, a6, a7);
      if (!v8)
      {
        v43 = v25;
        if (v21 + 1 < a3)
        {
          v40 = v26;
          v41 = v27;
          v42 = v21 + 1;
          sub_100469DF8(a1);
          v29 = *(a1 + 4);
          v39[2] = *(a1 + 10);
          v39[3] = v29;
          v39[1] = *(a1 + 22);

          sub_10041206C(a1, v42, a3, a4, a5, a6, a7, v19);
          v31 = v40;
          v32 = v41;
          v33 = HIDWORD(v40);
          v34 = HIWORD(v41);
          v35 = HIDWORD(v41);
          swift_storeEnumTagMultiPayload();

          v36 = sub_10000C9C0(&qword_1005DC7E0, &qword_1005048E8);
          v37 = v49;
          sub_1002FC114(v19, v49 + *(v36 + 52));
          *v37 = v43;
          *(v37 + 8) = v31;
          *(v37 + 12) = v33;
          *(v37 + 16) = v32;
          *(v37 + 20) = v35;
          *(v37 + 22) = v34;
          return;
        }

        sub_1003A5228();
        swift_allocError();
        *v30 = a3;
        swift_willThrow();
      }

      *a1 = v48;
      a1[1] = v23;
      v38 = v46;
      *(a1 + 4) = v47;
      *(a1 + 10) = v38;
      *(a1 + 22) = v45;
    }

    swift_willThrow();
  }
}

uint64_t sub_10040A6E0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10046B71C(0x534547415353454DuLL, 0xE900000000000020, 0, 0, a1, a2, a3);
  if (!v3)
  {
    result = sub_10046C278(a1, a2, a3, 1);
    if (result < 0)
    {
      sub_1003A527C();
      swift_allocError();
      *v8 = 0xD000000000000011;
      v8[1] = 0x80000001004B08A0;
      v8[2] = 0xD000000000000020;
      v8[3] = 0x80000001004B03C0;
      v8[4] = 202;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_10040A7D8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10046B71C(0x205458454E444955uLL, 0xE800000000000000, 0, 0, a1, a2, a3);
  if (!v3)
  {
    return sub_100405E9C(a1, a2, a3, v8);
  }

  return result;
}

uint64_t sub_10040A85C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10046B71C(0x44494C4156444955uLL, 0xEC00000020595449, 0, 0, a1, a2, a3);
  if (!v3)
  {
    return sub_10041EC70(a1, a2, a3, v8);
  }

  return result;
}

uint64_t sub_10040A8E8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10046B71C(0x204E4545534E55uLL, 0xE700000000000000, 0, 0, a1, a2, a3);
  if (!v3)
  {
    result = sub_10046C278(a1, a2, a3, 1);
    if (result < 0)
    {
      sub_1003A527C();
      swift_allocError();
      *v8 = 0xD000000000000011;
      v8[1] = 0x80000001004B08A0;
      v8[2] = 0xD000000000000020;
      v8[3] = 0x80000001004B03C0;
      v8[4] = 202;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_10040A9DC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10046B71C(0x20455A4953uLL, 0xE500000000000000, 0, 0, a1, a2, a3);
  if (!v3)
  {
    result = sub_10046C278(a1, a2, a3, 1);
    if (result < 0)
    {
      sub_1003A527C();
      swift_allocError();
      *v8 = 0xD000000000000011;
      v8[1] = 0x80000001004B08A0;
      v8[2] = 0xD000000000000020;
      v8[3] = 0x80000001004B03C0;
      v8[4] = 202;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t *sub_10040AACC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10046B71C(0x4D54534548474948uLL, 0xEE0020514553444FLL, 0, 0, a1, a2, a3);
  if (!v3)
  {
    return sub_10041D9A8(a1, a2, a3);
  }

  return result;
}

uint64_t sub_10040AB58(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10046B71C(0x20544E45434552uLL, 0xE700000000000000, 0, 0, a1, a2, a3);
  if (!v3)
  {
    result = sub_10046C278(a1, a2, a3, 1);
    if (result < 0)
    {
      sub_1003A527C();
      swift_allocError();
      *v8 = 0xD000000000000011;
      v8[1] = 0x80000001004B08A0;
      v8[2] = 0xD000000000000020;
      v8[3] = 0x80000001004B03C0;
      v8[4] = 202;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_10040AC4C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = a3;
  sub_10046B71C(0x494C444E45505041uLL, 0xEC0000002054494DLL, 0, 0, a1, a2, a3);
  if (!v7)
  {
    sub_10000C9C0(&qword_1005DC7D8, &qword_1005048E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004D01D0;
    v16 = swift_allocObject();
    v16[2] = a4;
    v16[3] = a5;
    v16[4] = a6;
    v16[5] = a7;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_10040C8CC;
    *(v17 + 24) = v16;
    *(inited + 32) = sub_10040CB80;
    *(inited + 40) = v17;
    v18 = swift_allocObject();
    v18[2] = a4;
    v18[3] = a5;
    v18[4] = a6;
    v18[5] = a7;
    v19 = swift_allocObject();
    *(v19 + 16) = sub_10040C910;
    *(v19 + 24) = v18;
    *(inited + 48) = sub_10040CB80;
    *(inited + 56) = v19;
    swift_retain_n();
    sub_1003FA628(inited, a1, a2, v12, 0xD000000000000020, 0x80000001004B03C0, 374);
    v12 = v21;
    swift_setDeallocating();
    sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
    swift_arrayDestroy();
  }

  return v12;
}

uint64_t sub_10040AE9C(uint64_t *a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  result = sub_10046C278(a1, a2, a3, 1);
  if (!v4 && result < 0)
  {
    sub_1003A527C();
    swift_allocError();
    *v6 = 0xD000000000000011;
    v6[1] = 0x80000001004B08A0;
    v6[2] = 0xD000000000000020;
    v6[3] = 0x80000001004B03C0;
    v6[4] = 202;
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_10040AF48(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_10046B71C(0x49584F424C49414DuLL, 0xEB00000000282044, 0, 0, a1, a2, a3);
  if (!v3)
  {
    v4 = sub_10042E9D4(a1, a2, a3);
    sub_10046B71C(0x29uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  }

  return v4;
}

uint64_t sub_10040B018(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_10000C9C0(&qword_1005DC7D8, &qword_1005048E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004F5BE0;
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a6;
  v14[5] = a7;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_10040C1BC;
  *(v15 + 24) = v14;
  *(inited + 32) = sub_10040C1DC;
  *(inited + 40) = v15;
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a7;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_10040C1F4;
  *(v17 + 24) = v16;
  *(inited + 48) = sub_10040CB80;
  *(inited + 56) = v17;
  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a6;
  v18[5] = a7;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_10040C214;
  *(v19 + 24) = v18;
  *(inited + 64) = sub_10040CB80;
  *(inited + 72) = v19;
  v20 = swift_allocObject();
  v20[2] = a4;
  v20[3] = a5;
  v20[4] = a6;
  v20[5] = a7;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_10040C234;
  *(v21 + 24) = v20;
  *(inited + 80) = sub_10040CB80;
  *(inited + 88) = v21;
  v22 = swift_allocObject();
  v22[2] = a4;
  v22[3] = a5;
  v22[4] = a6;
  v22[5] = a7;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_10040C28C;
  *(v23 + 24) = v22;
  *(inited + 96) = sub_10040CB80;
  *(inited + 104) = v23;
  v24 = swift_allocObject();
  v24[2] = a4;
  v24[3] = a5;
  v24[4] = a6;
  v24[5] = a7;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_10040C2AC;
  *(v25 + 24) = v24;
  *(inited + 112) = sub_10040CB80;
  *(inited + 120) = v25;
  v26 = swift_allocObject();
  v26[2] = a4;
  v26[3] = a5;
  v26[4] = a6;
  v26[5] = a7;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_10040C2CC;
  *(v27 + 24) = v26;
  *(inited + 128) = sub_10040CB80;
  *(inited + 136) = v27;
  v28 = swift_allocObject();
  v28[2] = a4;
  v28[3] = a5;
  v28[4] = a6;
  v28[5] = a7;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_10040C2EC;
  *(v29 + 24) = v28;
  *(inited + 144) = sub_10040CB80;
  *(inited + 152) = v29;
  v30 = swift_allocObject();
  v30[2] = a4;
  v30[3] = a5;
  v30[4] = a6;
  v30[5] = a7;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_10040C30C;
  *(v31 + 24) = v30;
  *(inited + 160) = sub_10040CB80;
  *(inited + 168) = v31;
  swift_retain_n();
  sub_1003FA628(inited, a1, a2, a3, 0xD000000000000020, 0x80000001004B03C0, 395);
  if (v36)
  {
    swift_setDeallocating();
    sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
    return swift_arrayDestroy();
  }

  else
  {
    v34 = v32;
    swift_setDeallocating();
    sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
    swift_arrayDestroy();
    return v34;
  }
}

uint64_t sub_10040B4AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  sub_10000C9C0(&qword_1005DC7D0, &qword_1005048D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004CEAA0;
  v17 = sub_10040B018(a1, a2, a3, a4, a5, a6, a7);
  if (v8)
  {
    *(inited + 16) = 0;
  }

  v66 = a4;
  v68 = a5;
  *(inited + 32) = v17;
  *(inited + 40) = v18;
  *(inited + 48) = v19;
  v21 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  if (v21 >= a3)
  {
    sub_1003A5228();
    swift_allocError();
    *v41 = a3;
LABEL_37:
    swift_willThrow();
  }

  v22 = a1;
  v23 = *(a1 + 8);
  v24 = *(a1 + 16);
  v55 = *(a1 + 22);
  v56 = *(a1 + 20);
  v57 = *a1;

  v63 = v21 + 1;
  if (v21 + 1 >= a3)
  {
    sub_1003A5228();
    swift_allocError();
    *v42 = a3;
  }

  else
  {
    v54 = v24;
    v25 = v21 + 2;
    v26 = *a1;
    v27 = *(a1 + 8);
    v28 = *(a1 + 16);
    v60 = *(v22 + 22);
    v61 = *(v22 + 20);
    if (v25 < a3)
    {
      v29 = inited;
      v58 = a7;
      v59 = v22;
      v65 = inited;
      do
      {
        v72 = v29;
        swift_retain_n();
        sub_100469DF8(v22);

        v30 = a3;
        v31 = a3;
        v32 = a6;
        v33 = sub_10040B018(v22, v63, v31, v66, v68, a6, a7);
        v35 = v34;
        v37 = v36;

        v29 = v72;
        v39 = *(v72 + 2);
        v38 = *(v72 + 3);
        if (v39 >= v38 >> 1)
        {
          v29 = sub_100461530((v38 > 1), v39 + 1, 1, v72);
        }

        *(v29 + 2) = v39 + 1;
        v40 = &v29[24 * v39];
        *(v40 + 4) = v33;
        *(v40 + 5) = v35;
        v40[48] = v37;
        a7 = v58;
        v22 = v59;
        v26 = *v59;
        v27 = *(v59 + 8);
        v28 = *(v59 + 16);
        v60 = *(v59 + 22);
        v61 = *(v59 + 20);
        inited = v65;
        a6 = v32;
        a3 = v30;
      }

      while (v25 < v30);
    }

    sub_1003A5228();
    swift_allocError();
    *v43 = a3;

    swift_willThrow();

    *v22 = v26;
    *(v22 + 8) = v27;
    *(v22 + 16) = v28;
    *(v22 + 20) = v61;
    *(v22 + 22) = v60;
    v24 = v54;
  }

  swift_willThrow();
  swift_errorRetain();
  sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
  if (!swift_dynamicCast())
  {

    *v22 = v57;
    *(v22 + 8) = v23;
    *(v22 + 16) = v24;
    *(v22 + 20) = v56;
    *(v22 + 22) = v55;
    goto LABEL_37;
  }

  v92 = 0;
  v93 = 1;
  v95 = 0;
  v96 = 1;
  v99 = 0;
  v100 = 1;
  v103 = 0;
  v104 = 1;
  v106 = 0;
  v107 = 1;
  v109 = 0;
  v110 = 1;
  v112 = 0;
  v113 = 1;
  v115 = 0;
  v116 = 1;
  v119 = 0;
  v118 = 0;
  v120 = 0;
  v121 = 1;
  v122 = 0;
  v123 = 1;
  v124 = 0;
  v125 = 1;
  v126 = 0;
  v127 = 1;
  v128 = 0;
  v129 = 1;
  v130 = 0;
  v131 = 1;
  v132 = 0;
  v133 = 1;
  v134 = 0;
  v135 = 1;
  v137 = 0;
  v136 = 0;
  sub_1000CB8B8(&v92, v91);
  sub_10009A0FC(&v120);
  v73 = v92;
  v91[0] = v93;
  *v90 = *v94;
  *&v90[3] = *&v94[3];
  v70 = v95;
  v80 = v96;
  v89 = v98;
  v88 = v97;
  v69 = v99;
  v79 = v100;
  v87 = v102;
  v86 = v101;
  v67 = v103;
  v78 = v104;
  *&v85[3] = *&v105[3];
  *v85 = *v105;
  v77 = v107;
  *&v84[3] = *&v108[3];
  *v84 = *v108;
  v62 = v109;
  v64 = v106;
  v76 = v110;
  *&v83[3] = *&v111[3];
  *v83 = *v111;
  v44 = v112;
  v75 = v113;
  *&v82[3] = *&v114[3];
  *v82 = *v114;
  v45 = v115;
  v74 = v116;
  *&v81[3] = *&v117[3];
  *v81 = *v117;
  v46 = v118;
  v47 = v119;
  v48 = *(inited + 16);
  if (v48)
  {
    v49 = (inited + 48);
    do
    {
      v50 = *(v49 - 2);
      v51 = *v49;
      if (v51 <= 3)
      {
        if (*v49 > 1u)
        {
          if (v51 == 2)
          {
            v78 = 0;
            v67 = *(v49 - 2);
          }

          else
          {
            v77 = 0;
            v64 = *(v49 - 2);
          }
        }

        else if (*v49)
        {
          v79 = 0;
          v69 = *(v49 - 2);
        }

        else
        {
          v91[0] = 0;
          v73 = v50;
        }
      }

      else if (*v49 <= 5u)
      {
        if (v51 == 4)
        {
          v76 = 0;
          v62 = *(v49 - 2);
        }

        else
        {
          v80 = 0;
          v70 = *(v49 - 2);
        }
      }

      else if (v51 == 6)
      {
        v75 = 0;
        v44 = *(v49 - 2);
      }

      else
      {
        v52 = *(v49 - 1);
        if (v51 == 7)
        {
          v74 = v52 & 1;
          v45 = *(v49 - 2);
        }

        else
        {

          v46 = v50;
          v47 = v52;
        }
      }

      v49 += 24;
      --v48;
    }

    while (v48);
  }

  v53 = v91[0];
  *a8 = v73;
  *(a8 + 8) = v53;
  *(a8 + 9) = *v90;
  *(a8 + 12) = *&v90[3];
  *(a8 + 16) = v70;
  *(a8 + 24) = v80;
  *(a8 + 27) = v89;
  *(a8 + 25) = v88;
  *(a8 + 28) = v69;
  *(a8 + 32) = v79;
  *(a8 + 33) = v86;
  *(a8 + 35) = v87;
  *(a8 + 36) = v67;
  *(a8 + 40) = v78;
  *(a8 + 41) = *v85;
  *(a8 + 44) = *&v85[3];
  *(a8 + 48) = v64;
  *(a8 + 56) = v77;
  *(a8 + 60) = *&v84[3];
  *(a8 + 57) = *v84;
  *(a8 + 64) = v62;
  *(a8 + 72) = v76;
  *(a8 + 76) = *&v83[3];
  *(a8 + 73) = *v83;
  *(a8 + 80) = v44;
  *(a8 + 88) = v75;
  *(a8 + 92) = *&v82[3];
  *(a8 + 89) = *v82;
  *(a8 + 96) = v45;
  *(a8 + 104) = v74;
  *(a8 + 108) = *&v81[3];
  *(a8 + 105) = *v81;
  *(a8 + 112) = v46;
  *(a8 + 120) = v47;
  return result;
}

void sub_10040BC9C(uint64_t a1, Swift::UInt a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 3u)
  {
    if (a4 > 1u)
    {
      if (a4 != 2)
      {
        v6 = 3;
        goto LABEL_22;
      }

      v7 = 2;
    }

    else
    {
      if (!a4)
      {
        v6 = 0;
LABEL_22:
        sub_1004A6EB4(v6);
LABEL_23:
        sub_1004A6EB4(a2);
        return;
      }

      v7 = 1;
    }

    sub_1004A6EB4(v7);
    sub_1004A6EE4(a2);
    return;
  }

  if (a4 <= 5u)
  {
    if (a4 == 4)
    {
      v6 = 4;
    }

    else
    {
      v6 = 5;
    }

    goto LABEL_22;
  }

  if (a4 == 6)
  {
    sub_1004A6EB4(6uLL);
    sub_1004A6EF4(a2);
    return;
  }

  v5 = a3;
  if (a4 == 7)
  {
    sub_1004A6EB4(7uLL);
    if (v5)
    {
      sub_1004A6EC4(0);
      return;
    }

    sub_1004A6EC4(1u);
    goto LABEL_23;
  }

  sub_1004A6EB4(8uLL);

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

Swift::Int sub_10040BDBC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1004A6E94();
  sub_10040BC9C(v5, v1, v2, v3);
  return sub_1004A6F14();
}

Swift::Int sub_10040BE24(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  sub_1004A6E94();
  sub_10040BC9C(v6, v2, v3, v4);
  return sub_1004A6F14();
}

uint64_t sub_10040BEB4(uint64_t result, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 <= 3u)
  {
    v6 = result == a4;
    if (a6 != 2)
    {
      v6 = 0;
    }

    v8 = a6 == 3 && result == a4;
    if (a3 != 2)
    {
      v6 = v8;
    }

    if (a6)
    {
      v9 = 0;
    }

    else
    {
      v9 = result == a4;
    }

    v10 = v9;
    v11 = a6 == 1 && a4 == result;
    if (!a3)
    {
      v11 = v10;
    }

    if (a3 <= 1u)
    {
      return v11;
    }

    else
    {
      return v6;
    }
  }

  else if (a3 <= 5u)
  {
    v13 = a6 == 4 && result == a4;
    v15 = a6 == 5 && result == a4;
    if (a3 == 4)
    {
      return v13;
    }

    else
    {
      return v15;
    }
  }

  else
  {
    if (a3 != 6)
    {
      if (a3 == 7)
      {
        if (a6 != 7)
        {
          return 0;
        }

        if (a2)
        {
          return (a5 & 1) != 0;
        }

        if (a5 & 1 | (result != a4))
        {
          return 0;
        }
      }

      else
      {
        if (a6 != 8)
        {
          return 0;
        }

        if (result != a4 || a2 != a5)
        {
          return sub_1004A6D34();
        }
      }

      return 1;
    }

    if (a6 != 6)
    {
      return 0;
    }

    if ((a4 | result) < 0)
    {
      __break(1u);
    }

    else
    {
      return a4 == result;
    }
  }

  return result;
}

__n128 sub_10040C10C@<Q0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  (*(v3 + 16))(v10, a1, *a2, a2[1]);
  if (!v4)
  {
    v7 = v10[7];
    *(a3 + 96) = v10[6];
    *(a3 + 112) = v7;
    *(a3 + 128) = v10[8];
    v8 = v10[3];
    *(a3 + 32) = v10[2];
    *(a3 + 48) = v8;
    v9 = v10[5];
    *(a3 + 64) = v10[4];
    *(a3 + 80) = v9;
    result = v10[1];
    *a3 = v10[0];
    *(a3 + 16) = result;
  }

  return result;
}

double sub_10040C178(uint64_t a1)
{
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 112) = 0;
  *(a1 + 120) = 1;
  return result;
}

uint64_t sub_10040C198(uint64_t a1)
{
  v1 = *(a1 + 120);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10040C254()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_10040C32C(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v5 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v5 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v14 = a3;
      goto LABEL_6;
    }

    v9 = *result;
    v10 = *(result + 8);
    v11 = *(result + 16);
    v12 = *(result + 20);
    v13 = *(result + 22);
    sub_100469DF8(result);
    if (v4)
    {
      *result = v9;
      *(result + 8) = v10;
      *(result + 16) = v11;
      *(result + 20) = v12;
      *(result + 22) = v13;
LABEL_6:
      swift_willThrow();
      return;
    }

    sub_10000C9C0(&qword_1005D14D8, &qword_1004F1B10);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1004CEAA0;
    v16 = sub_10046C278(result, a2, a3, 0);
    if ((v16 & 0x8000000000000000) != 0)
    {
      sub_1003A527C();
      swift_allocError();
      *v30 = 0xD000000000000011;
      v30[1] = 0x80000001004B08A0;
      v30[2] = 0xD000000000000020;
      v30[3] = 0x80000001004B03C0;
      v30[4] = 202;
      swift_willThrow();
      *(v15 + 16) = 0;
    }

    else
    {
      *(v15 + 32) = v16;
      v17 = *result;
      v18 = *(result + 8);
      v19 = *(result + 16);
      v20 = *(result + 20);
      v42 = *(result + 22);

      if (v5 + 1 >= a3)
      {
        sub_1003A5228();
        v31 = swift_allocError();
        *v32 = a3;
      }

      else
      {
        v39 = v20;
        v40 = v19;
        v41 = v17;
        v21 = *result;
        v22 = *(result + 8);
        v44 = *(result + 16);
        v23 = *(result + 20);
        v24 = *(result + 22);
        if (v5 + 2 >= a3)
        {
LABEL_18:
          sub_1003A5228();
          v31 = swift_allocError();
          *v33 = a3;
        }

        else
        {
          v25 = v15;
          while (1)
          {
            v45 = v25;
            swift_retain_n();
            sub_100469DF8(result);

            v43 = v24;
            v26 = v23;
            v27 = sub_10046C278(result, v5 + 1, a3, 0);
            if ((v27 & 0x8000000000000000) != 0)
            {
              break;
            }

            v25 = v45;
            v29 = *(v45 + 2);
            v28 = *(v45 + 3);
            if (v29 >= v28 >> 1)
            {
              v25 = sub_100460CC0((v28 > 1), v29 + 1, 1, v45);
            }

            *(v25 + 2) = v29 + 1;
            *&v25[8 * v29 + 32] = v27;
            v21 = *result;
            v22 = *(result + 8);
            v44 = *(result + 16);
            v23 = *(result + 20);
            v24 = *(result + 22);
            if (v5 + 2 >= a3)
            {
              goto LABEL_18;
            }
          }

          sub_1003A527C();
          v31 = swift_allocError();
          *v38 = 0xD000000000000011;
          v38[1] = 0x80000001004B08A0;
          v38[2] = 0xD000000000000020;
          v38[3] = 0x80000001004B03C0;
          v38[4] = 202;
          v15 = v45;
          v23 = v26;
          v24 = v43;
        }

        swift_willThrow();

        *result = v21;
        *(result + 8) = v22;
        *(result + 16) = v44;
        *(result + 20) = v23;
        *(result + 22) = v24;
        v17 = v41;
        v20 = v39;
        v19 = v40;
      }

      swift_willThrow();
      v48 = v31;
      swift_errorRetain();
      sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
      if (swift_dynamicCast())
      {

        sub_100469DF8(result);

        v47[0].i64[0] = v15;
        v47[0].i64[1] = sub_10041D468(result, a2, a3);
        sub_10040C970(v47);
        v34 = v47[7];
        a4[6] = v47[6];
        a4[7] = v34;
        a4[8] = v47[8];
        v35 = v47[3];
        a4[2] = v47[2];
        a4[3] = v35;
        v36 = v47[5];
        a4[4] = v47[4];
        a4[5] = v36;
        v37 = v47[1];
        *a4 = v47[0];
        a4[1] = v37;
      }

      else
      {

        *result = v17;
        *(result + 8) = v18;
        *(result + 16) = v19;
        *(result + 20) = v20;
        *(result + 22) = v42;
        swift_willThrow();
      }
    }
  }
}

uint64_t sub_10040C930@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  result = (*(v3 + 16))(a1, *a2, a2[1]);
  if (!v4)
  {
    *a3 = result;
    *(a3 + 8) = v7;
    *(a3 + 16) = v8;
  }

  return result;
}

int8x16_t sub_10040C970(int8x16_t *a1)
{
  v1 = a1[4].i64[1] & 1;
  v2 = a1[5].i64[1] & 1;
  v3 = a1[6].i64[1] & 1;
  v4 = a1[7].i64[1] & 1 | 0x9000000000000000;
  result = vandq_s8(a1[3], xmmword_1004DDD00);
  a1[3] = result;
  a1[4].i64[1] = v1;
  a1[5].i64[1] = v2;
  a1[6].i64[1] = v3;
  a1[7].i64[1] = v4;
  return result;
}

uint64_t sub_10040C9C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF8 && *(a1 + 17))
  {
    return (*a1 + 248);
  }

  v3 = *(a1 + 16);
  if (v3 <= 8)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10040CA10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *(result + 16) = 0;
    *result = a2 - 248;
    *(result + 8) = 0;
    if (a3 >= 0xF8)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
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

unint64_t sub_10040CA68()
{
  result = qword_1005DC7F0;
  if (!qword_1005DC7F0)
  {
    result = swift_getWitnessTable(byte_1005049E0, &_s12MailboxValueON, v0, v1);
    atomic_store(result, &qword_1005DC7F0);
  }

  return result;
}

uint64_t sub_10040CB98@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  sub_10000C9C0(&qword_1005DC7F8, &qword_100504A60);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100504A50;
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a6;
  v14[5] = a7;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_10041159C;
  *(v15 + 24) = v14;
  *(v13 + 32) = 0x5347414C46;
  *(v13 + 40) = 0xE500000000000000;
  *(v13 + 48) = sub_100404E94;
  *(v13 + 56) = v15;
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a7;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1004115BC;
  *(v17 + 24) = v16;
  *(v13 + 64) = 0x45504F4C45564E45;
  *(v13 + 72) = 0xE800000000000000;
  *(v13 + 80) = sub_1004068EC;
  *(v13 + 88) = v17;
  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a6;
  v18[5] = a7;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1004115DC;
  *(v19 + 24) = v18;
  strcpy((v13 + 96), "INTERNALDATE");
  *(v13 + 109) = 0;
  *(v13 + 110) = -5120;
  *(v13 + 112) = sub_1004068EC;
  *(v13 + 120) = v19;
  v20 = swift_allocObject();
  v20[2] = a4;
  v20[3] = a5;
  v20[4] = a6;
  v20[5] = a7;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1004115FC;
  *(v21 + 24) = v20;
  *(v13 + 128) = 0x532E323238434652;
  *(v13 + 136) = 0xEB00000000455A49;
  *(v13 + 144) = sub_1004068EC;
  *(v13 + 152) = v21;
  v22 = swift_allocObject();
  v22[2] = a4;
  v22[3] = a5;
  v22[4] = a6;
  v22[5] = a7;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_10041161C;
  *(v23 + 24) = v22;
  *(v13 + 160) = 1497648962;
  *(v13 + 168) = 0xE400000000000000;
  *(v13 + 176) = sub_1004068EC;
  *(v13 + 184) = v23;
  v24 = swift_allocObject();
  v24[2] = a4;
  v24[3] = a5;
  v24[4] = a6;
  v24[5] = a7;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_10041163C;
  *(v25 + 24) = v24;
  strcpy((v13 + 192), "BODYSTRUCTURE");
  *(v13 + 206) = -4864;
  *(v13 + 208) = sub_1004068EC;
  *(v13 + 216) = v25;
  v26 = swift_allocObject();
  v26[2] = a4;
  v26[3] = a5;
  v26[4] = a6;
  v26[5] = a7;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_100411660;
  *(v27 + 24) = v26;
  *(v13 + 224) = 4475221;
  *(v13 + 232) = 0xE300000000000000;
  *(v13 + 240) = sub_1004068EC;
  *(v13 + 248) = v27;
  v28 = swift_allocObject();
  v28[2] = a4;
  v28[3] = a5;
  v28[4] = a6;
  v28[5] = a7;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_100411680;
  *(v29 + 24) = v28;
  *(v13 + 256) = 0x532E5952414E4942;
  *(v13 + 264) = 0xEB00000000455A49;
  *(v13 + 272) = sub_1004068EC;
  *(v13 + 280) = v29;
  *(v13 + 288) = 0x47534D2D4D472D58;
  *(v13 + 296) = 0xEA00000000004449;
  *(v13 + 304) = sub_10040ECB8;
  *(v13 + 312) = 0;
  *(v13 + 320) = 0x5248542D4D472D58;
  *(v13 + 328) = 0xEA00000000004449;
  *(v13 + 336) = sub_10040ECE4;
  *(v13 + 344) = 0;
  v30 = swift_allocObject();
  v30[2] = a4;
  v30[3] = a5;
  v30[4] = a6;
  v30[5] = a7;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_1004116A0;
  *(v31 + 24) = v30;
  *(v13 + 352) = 0x42414C2D4D472D58;
  *(v13 + 360) = 0xEB00000000534C45;
  *(v13 + 368) = sub_1004068EC;
  *(v13 + 376) = v31;
  v32 = swift_allocObject();
  v32[2] = a4;
  v32[3] = a5;
  v32[4] = a6;
  v32[5] = a7;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_1004116C0;
  *(v33 + 24) = v32;
  *(v13 + 384) = 0x514553444F4DLL;
  *(v13 + 392) = 0xE600000000000000;
  *(v13 + 400) = sub_1004068EC;
  *(v13 + 408) = v33;
  v34 = swift_allocObject();
  v34[2] = a4;
  v34[3] = a5;
  v34[4] = a6;
  v34[5] = a7;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1004116E0;
  *(v35 + 24) = v34;
  *(v13 + 416) = 0x542E323238434652;
  *(v13 + 424) = 0xEB00000000545845;
  *(v13 + 432) = sub_1004068EC;
  *(v13 + 440) = v35;
  v36 = swift_allocObject();
  v36[2] = a4;
  v36[3] = a5;
  v36[4] = a6;
  v36[5] = a7;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_100411704;
  *(v37 + 24) = v36;
  strcpy((v13 + 448), "RFC822.HEADER");
  *(v13 + 462) = -4864;
  *(v13 + 464) = sub_1004068EC;
  *(v13 + 472) = v37;
  v38 = swift_allocObject();
  v38[2] = a4;
  v38[3] = a5;
  v38[4] = a6;
  v38[5] = a7;
  v39 = swift_allocObject();
  *(v39 + 16) = sub_100411728;
  *(v39 + 24) = v38;
  *(v13 + 480) = 0x5952414E4942;
  *(v13 + 488) = 0xE600000000000000;
  *(v13 + 496) = sub_1004068EC;
  *(v13 + 504) = v39;
  v40 = swift_allocObject();
  v40[2] = a4;
  v40[3] = a5;
  v40[4] = a6;
  v40[5] = a7;
  v41 = swift_allocObject();
  *(v41 + 16) = sub_100411748;
  *(v41 + 24) = v40;
  *(v13 + 512) = 0x57454956455250;
  *(v13 + 520) = 0xE700000000000000;
  *(v13 + 528) = sub_1004068EC;
  *(v13 + 536) = v41;
  v42 = swift_allocObject();
  v42[2] = a4;
  v42[3] = a5;
  v42[4] = a6;
  v42[5] = a7;
  v43 = swift_allocObject();
  *(v43 + 16) = sub_100411768;
  *(v43 + 24) = v42;
  *(v13 + 544) = 0x44494C49414D45;
  *(v13 + 552) = 0xE700000000000000;
  *(v13 + 560) = sub_1004068EC;
  *(v13 + 568) = v43;
  v44 = swift_allocObject();
  v44[2] = a4;
  v44[3] = a5;
  v44[4] = a6;
  v44[5] = a7;
  v45 = swift_allocObject();
  *(v45 + 16) = sub_100411788;
  *(v45 + 24) = v44;
  *(v13 + 576) = 0x4449444145524854;
  *(v13 + 584) = 0xE800000000000000;
  *(v13 + 592) = sub_1004068EC;
  *(v13 + 600) = v45;
  swift_retain_n();
  v46 = sub_100411884(v13, &qword_1005DC800, &qword_100504A68);
  swift_setDeallocating();
  sub_10000C9C0(&qword_1005DC798, &qword_100504118);
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  if (!__OFADD__(a2, 1))
  {
    v48 = *a1;
    v49 = a1[1];
    v50 = *(a1 + 4);
    v51 = *(a1 + 10);
    v52 = *(a1 + 22);
    if (a2 + 1 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v53 = a3;
    }

    else
    {

      sub_1004658F8(a1, &v76);
      if (!v72)
      {
        v73 = v51;
        sub_10046C184(v76, v77, v78 | (v79 << 32) | (v80 << 48), 0xD000000000000020, 0x80000001004B03C0, 84);
        v69 = v50;
        v70 = sub_1004A5834();
        v55 = v54;

        if (*(v46 + 16))
        {
          v56 = sub_100064090(v70, v55);
          if (v57)
          {
            v58 = v56;

            v59 = *(*(v46 + 56) + 16 * v58);
            v76 = a2;
            v77 = a3;

            v59(v81, a1, &v76);

            v63 = v81[9];
            v64 = v81[10];
            v65 = v81[7];
            *(a8 + 128) = v81[8];
            *(a8 + 144) = v63;
            *(a8 + 160) = v64;
            *(a8 + 176) = v82;
            v66 = v81[5];
            *(a8 + 64) = v81[4];
            *(a8 + 80) = v66;
            *(a8 + 96) = v81[6];
            *(a8 + 112) = v65;
            v67 = v81[1];
            *a8 = v81[0];
            *(a8 + 16) = v67;
            v68 = v81[3];
            *(a8 + 32) = v81[2];
            *(a8 + 48) = v68;
            return result;
          }
        }

        v76 = 0;
        v77 = 0xE000000000000000;
        sub_1004A6724(25);

        v76 = 0xD000000000000017;
        v77 = 0x80000001004B08E0;
        v83._countAndFlagsBits = v70;
        v83._object = v55;
        sub_1004A5994(v83);

        v60 = v76;
        v61 = v77;
        sub_1003A527C();
        swift_allocError();
        *v62 = v60;
        v62[1] = v61;
        v62[2] = 0xD000000000000020;
        v62[3] = 0x80000001004B03C0;
        v62[4] = 86;
        swift_willThrow();

        v50 = v69;
        v51 = v73;
LABEL_7:
        *a1 = v48;
        a1[1] = v49;
        *(a1 + 4) = v50;
        *(a1 + 10) = v51;
        *(a1 + 22) = v52;
        swift_willThrow();
      }
    }

    swift_willThrow();

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_10040D758(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a7;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_100411AA0;
  *(v17 + 24) = v16;
  v41 = sub_100411AC0;
  v42 = v17;
  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a6;
  v18[5] = a7;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_100411AF0;
  *(v19 + 24) = v18;
  v43 = sub_100411C00;
  v44 = v19;
  v20 = swift_allocObject();
  v20[2] = a4;
  v20[3] = a5;
  v20[4] = a6;
  v20[5] = a7;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_100411B10;
  *(v21 + 24) = v20;
  v45 = sub_100411C00;
  v46 = v21;
  v22 = swift_allocObject();
  v22[2] = a4;
  v22[3] = a5;
  v22[4] = a6;
  v22[5] = a7;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_100411B30;
  *(v23 + 24) = v22;
  v47 = sub_100411C00;
  v48 = v23;
  v24 = swift_allocObject();
  v24[2] = a4;
  v24[3] = a5;
  v24[4] = a6;
  v24[5] = a7;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_100411B8C;
  *(v25 + 24) = v24;
  v49 = sub_100411C00;
  v50 = v25;
  v26 = a2 + 1;
  v27 = __OFADD__(a2, 1);

  if (!v27)
  {
    swift_retain_n();
    v29 = 32;
    v30 = a1;
    while (1)
    {
      *(swift_allocObject() + 16) = *&v40[v29];
      if (v26 >= a3)
      {
        sub_1003A5228();
        swift_allocError();
        *v36 = a3;
      }

      else
      {
        v39 = v29;
        v31 = *v30;
        v32 = v30[1];
        v33 = *(v30 + 4);
        v38 = *(v30 + 10);
        v34 = v26;
        v35 = *(v30 + 22);

        sub_100411BE4(v30, v34, a3);
        if (!v8)
        {

          sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
          return swift_arrayDestroy();
        }

        *v30 = v31;
        v30[1] = v32;
        *(v30 + 4) = v33;
        *(v30 + 10) = v38;
        *(v30 + 22) = v35;
        v26 = v34;
        v29 = v39;
      }

      swift_willThrow();
      swift_errorRetain();
      sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
      if (swift_dynamicCast())
      {
      }

      else
      {

        swift_errorRetain();
        if ((swift_dynamicCast() & 1) == 0)
        {
          sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
          swift_arrayDestroy();
        }
      }

      v8 = 0;
      v29 += 16;
      if (v29 == 112)
      {
        sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
        swift_arrayDestroy();
        sub_1003A527C();
        swift_allocError();
        *v37 = 0xD000000000000019;
        v37[1] = 0x80000001004B08C0;
        v37[2] = 0xD000000000000020;
        v37[3] = 0x80000001004B03C0;
        v37[4] = 72;
        return swift_willThrow();
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10040DC90@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _DWORD *a4@<X8>, __n128 a5@<Q0>)
{
  result = sub_10040691C(a1, a2, a3, a5);
  if (!v5)
  {
    v11 = result;
    sub_10046B71C(0x45474E5550584520uLL, 0xE800000000000000, 0, 0, a1, a2, a3);
    *a4 = v11;
    type metadata accessor for MessageData(0);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_10040DD2C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  result = sub_10046B71C(0x44454853494E4156uLL, 0xE900000000000020, 0, 0, a1, a2, a3);
  if (!v8)
  {
    v18 = a2 + 1;
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else if (v18 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v19 = a3;
      return swift_willThrow();
    }

    else
    {

      sub_10041DC38(a1, v18, a3, a4, a5, a6, a7, a8);

      type metadata accessor for MessageData(0);
      return swift_storeEnumTagMultiPayload();
    }
  }

  return result;
}

uint64_t sub_10040DEB4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  result = sub_10046B71C(0xD000000000000013, 0x80000001004B09F0, 0, 0, a1, a2, a3);
  if (!v8)
  {
    v18 = a2 + 1;
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else if (v18 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v19 = a3;
      return swift_willThrow();
    }

    else
    {

      sub_10041DC38(a1, v18, a3, a4, a5, a6, a7, a8);

      type metadata accessor for MessageData(0);
      return swift_storeEnumTagMultiPayload();
    }
  }

  return result;
}

uint64_t sub_10040E03C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, void *a9@<X8>, unint64_t a10, void (*a11)(uint64_t, void **, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = sub_10046B71C(a8, a10, 0, 0, a1, a2, a3);
  if (!v11)
  {
    v21 = _swiftEmptyArrayStorage;

    a11(a1, &v21, a2, a3, a4, a5, a6, a7);

    *a9 = v21;
    type metadata accessor for MessageData(0);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t *sub_10040E140@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    v36 = v11;
    v37 = v9;
    v38 = v10;
    if (a2 + 1 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v21 = a3;
      return swift_willThrow();
    }

    v13 = result;
    v14 = *result;
    v15 = result[1];
    v16 = *(result + 4);
    v17 = *(result + 10);
    v18 = a2 + 2;
    v19 = *(result + 22);
    if (a2 + 2 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v22 = a3;
      goto LABEL_8;
    }

    sub_100469DF8(v13);
    if (v8)
    {

LABEL_8:
      swift_willThrow();
      *v13 = v14;
      *(v13 + 8) = v15;
      *(v13 + 16) = v16;
      *(v13 + 20) = v17;
      *(v13 + 22) = v19;
      return swift_willThrow();
    }

    sub_10046B71C(0x28uLL, 0xE100000000000000, 0, 0, v13, v18, a3);

    v33 = sub_10046D9E8(v13, v18, a3, a4, a5, a6, a7, v18, a3);

    if (v33)
    {
      v23 = v33;
    }

    else
    {
      v23 = _swiftEmptyArrayStorage;
    }

    sub_10046B71C(0x29uLL, 0xE100000000000000, 0, 1, v13, v18, a3);

    *&v34[0] = v23;
    result = sub_1002FA00C(v34);
    v24 = v34[9];
    *(a8 + 128) = v34[8];
    *(a8 + 144) = v24;
    *(a8 + 160) = v34[10];
    *(a8 + 176) = v35;
    v25 = v34[5];
    *(a8 + 64) = v34[4];
    *(a8 + 80) = v25;
    v26 = v34[7];
    *(a8 + 96) = v34[6];
    *(a8 + 112) = v26;
    v27 = v34[1];
    *a8 = v34[0];
    *(a8 + 16) = v27;
    v28 = v34[3];
    *(a8 + 32) = v34[2];
    *(a8 + 48) = v28;
  }

  return result;
}

uint64_t sub_10040E3B4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v10 = __OFADD__(a2, 1);
  v11 = a2 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    if (v11 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v20 = a3;
      return swift_willThrow();
    }

    v13 = result;
    v15 = *result;
    v16 = *(result + 8);
    v17 = *(result + 16);
    v18 = *(result + 20);
    v19 = *(result + 22);
    sub_100469DF8(result);
    if (v8)
    {
      *v13 = v15;
      *(v13 + 8) = v16;
      *(v13 + 16) = v17;
      *(v13 + 20) = v18;
      *(v13 + 22) = v19;
      return swift_willThrow();
    }

    sub_100402224(v13, a2, a3, a4, a5, a6, a7, v42);
    v34 = v42[4];
    v35 = v42[5];
    v36 = v42[6];
    *&v37 = v43;
    v30 = v42[0];
    v31 = v42[1];
    v32 = v42[2];
    v33 = v42[3];
    result = sub_1002FA01C(&v30);
    v21 = v39;
    *(a8 + 128) = v38;
    *(a8 + 144) = v21;
    *(a8 + 160) = v40;
    *(a8 + 176) = v41;
    v22 = v35;
    *(a8 + 64) = v34;
    *(a8 + 80) = v22;
    v23 = v37;
    *(a8 + 96) = v36;
    *(a8 + 112) = v23;
    v24 = v31;
    *a8 = v30;
    *(a8 + 16) = v24;
    v25 = v33;
    *(a8 + 32) = v32;
    *(a8 + 48) = v25;
  }

  return result;
}

uint64_t sub_10040E53C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v10 = __OFADD__(a2, 1);
  v11 = a2 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    if (v11 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v20 = a3;
      return swift_willThrow();
    }

    v13 = result;
    v15 = *result;
    v16 = *(result + 8);
    v17 = *(result + 16);
    v18 = *(result + 20);
    v19 = *(result + 22);
    sub_100469DF8(result);
    if (v8)
    {
      *v13 = v15;
      *(v13 + 8) = v16;
      *(v13 + 16) = v17;
      *(v13 + 20) = v18;
      *(v13 + 22) = v19;
      return swift_willThrow();
    }

    *&v30[0] = sub_100400454(v13, a2, a3, a4, a5, a6, a7);
    result = sub_1002F9FE4(v30);
    v21 = v30[9];
    *(a8 + 128) = v30[8];
    *(a8 + 144) = v21;
    *(a8 + 160) = v30[10];
    *(a8 + 176) = v31;
    v22 = v30[5];
    *(a8 + 64) = v30[4];
    *(a8 + 80) = v22;
    v23 = v30[7];
    *(a8 + 96) = v30[6];
    *(a8 + 112) = v23;
    v24 = v30[1];
    *a8 = v30[0];
    *(a8 + 16) = v24;
    v25 = v30[3];
    *(a8 + 32) = v30[2];
    *(a8 + 48) = v25;
  }

  return result;
}

uint64_t sub_10040E698@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = __OFADD__(a2, 1);
  v7 = a2 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    if (v7 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v16 = a3;
      return swift_willThrow();
    }

    v9 = result;
    v11 = *result;
    v12 = *(result + 8);
    v13 = *(result + 16);
    v14 = *(result + 20);
    v15 = *(result + 22);
    sub_100469DF8(result);
    if (v4)
    {
      *v9 = v11;
      *(v9 + 8) = v12;
      *(v9 + 16) = v13;
      *(v9 + 20) = v14;
      *(v9 + 22) = v15;
      return swift_willThrow();
    }

    v17 = sub_10046C278(v9, a2, a3, 1);
    if ((v17 & 0x8000000000000000) != 0)
    {
      sub_1003A527C();
      swift_allocError();
      *v23 = 0xD000000000000011;
      v23[1] = 0x80000001004B08A0;
      v23[2] = 0xD000000000000020;
      v23[3] = 0x80000001004B03C0;
      v23[4] = 202;
      return swift_willThrow();
    }

    *&v24[0] = v17;
    result = sub_1002F9FD0(v24);
    v18 = v24[9];
    *(a4 + 128) = v24[8];
    *(a4 + 144) = v18;
    *(a4 + 160) = v24[10];
    *(a4 + 176) = v25;
    v19 = v24[5];
    *(a4 + 64) = v24[4];
    *(a4 + 80) = v19;
    v20 = v24[7];
    *(a4 + 96) = v24[6];
    *(a4 + 112) = v20;
    v21 = v24[1];
    *a4 = v24[0];
    *(a4 + 16) = v21;
    v22 = v24[3];
    *(a4 + 32) = v24[2];
    *(a4 + 48) = v22;
  }

  return result;
}

uint64_t sub_10040E840@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = v8;
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a7;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_100411A5C;
  *(v17 + 24) = v16;
  v40[0] = sub_1004068EC;
  v40[1] = v17;
  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a6;
  v18[5] = a7;
  result = swift_allocObject();
  *(result + 16) = sub_100411A80;
  *(result + 24) = v18;
  v40[2] = sub_1004068EC;
  v40[3] = result;
  v20 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    swift_retain_n();
    v21 = 0;
    for (i = 0; ; i = 1)
    {
      v38 = v21;
      *(swift_allocObject() + 16) = *&v40[2 * i];
      if (v20 >= a3)
      {
        sub_1003A5228();
        swift_allocError();
        *v29 = a3;
      }

      else
      {
        v23 = *a1;
        v24 = a1[1];
        v25 = *(a1 + 4);
        v37 = v9;
        v26 = v20;
        v27 = *(a1 + 10);
        v28 = *(a1 + 22);

        sub_100411D00(a1, v26, a3);
        if (!v37)
        {

          sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
          result = swift_arrayDestroy();
          v31 = v50;
          *(a8 + 128) = v49;
          *(a8 + 144) = v31;
          *(a8 + 160) = v51;
          *(a8 + 176) = v52;
          v32 = v46;
          *(a8 + 64) = v45;
          *(a8 + 80) = v32;
          v33 = v48;
          *(a8 + 96) = v47;
          *(a8 + 112) = v33;
          v34 = v42;
          *a8 = v41;
          *(a8 + 16) = v34;
          v35 = v44;
          *(a8 + 32) = v43;
          *(a8 + 48) = v35;
          return result;
        }

        *a1 = v23;
        a1[1] = v24;
        *(a1 + 4) = v25;
        *(a1 + 10) = v27;
        *(a1 + 22) = v28;
        v20 = v26;
      }

      swift_willThrow();
      swift_errorRetain();
      sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
      if (swift_dynamicCast())
      {
      }

      else
      {

        swift_errorRetain();
        if ((swift_dynamicCast() & 1) == 0)
        {
          sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
          swift_arrayDestroy();
        }
      }

      v9 = 0;
      v21 = 1;
      if (v38)
      {
        sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
        swift_arrayDestroy();
        sub_1003A527C();
        swift_allocError();
        *v30 = 0xD000000000000019;
        v30[1] = 0x80000001004B08C0;
        v30[2] = 0xD000000000000020;
        v30[3] = 0x80000001004B03C0;
        v30[4] = 137;
        return swift_willThrow();
      }
    }
  }

  __break(1u);
  return result;
}

double sub_10040ED10@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(_OWORD *)@<X2>, uint64_t a4@<X8>)
{
  sub_10040F91C(a1, *a2, a2[1], a3, v12);
  if (!v4)
  {
    v7 = v20;
    *(a4 + 128) = v19;
    *(a4 + 144) = v7;
    *(a4 + 160) = v21;
    *(a4 + 176) = v22;
    v8 = v16;
    *(a4 + 64) = v15;
    *(a4 + 80) = v8;
    v9 = v18;
    *(a4 + 96) = v17;
    *(a4 + 112) = v9;
    v10 = v12[1];
    *a4 = v12[0];
    *(a4 + 16) = v10;
    result = *&v13;
    v11 = v14;
    *(a4 + 32) = v13;
    *(a4 + 48) = v11;
  }

  return result;
}

uint64_t sub_10040ED9C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{

  v17 = sub_10046FB50(a1, a2, a3, a4, a5, a6, a7);
  v19 = v18;
  v21 = v20;

  if (!v8)
  {
    if (!v17)
    {
      v17 = _swiftEmptyArrayStorage;
      v19 = 0;
      v21 = 2;
    }

    result = sub_10047562C(a1, a2, a3);
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else if (a2 + 1 >= a3)
    {

      sub_1000511A4(v19, v21);
      sub_1003A5228();
      swift_allocError();
      *v24 = a3;
      return swift_willThrow();
    }

    else
    {
      v30 = v23;
      v31 = result;

      sub_100469DF8(a1);

      sub_10046B71C(0x6C696EuLL, 0xE300000000000000, 0, 0, a1, a2, a3);
      *&v32 = v17;
      *(&v32 + 1) = v19;
      *&v33 = v21;
      *(&v33 + 1) = v31;
      LOBYTE(v34) = v30 & 1 | 0x40;
      result = sub_1002F9E5C(&v32);
      v25 = v41;
      *(a8 + 128) = v40;
      *(a8 + 144) = v25;
      *(a8 + 160) = v42;
      *(a8 + 176) = v43;
      v26 = v37;
      *(a8 + 64) = v36;
      *(a8 + 80) = v26;
      v27 = v39;
      *(a8 + 96) = v38;
      *(a8 + 112) = v27;
      v28 = v33;
      *a8 = v32;
      *(a8 + 16) = v28;
      v29 = v35;
      *(a8 + 32) = v34;
      *(a8 + 48) = v29;
    }
  }

  return result;
}

uint64_t sub_10040F034@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  v11 = __OFADD__(a2, 1);
  v12 = (a2 + 1);
  if (v11)
  {
    __break(1u);
  }

  else
  {
    if (v12 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v21 = a3;
      return swift_willThrow();
    }

    v15 = result;
    v16 = *result;
    v17 = *(result + 8);
    v18 = *(result + 16);
    v19 = *(result + 20);
    v20 = *(result + 22);
    sub_100469DF8(result);
    if (v9)
    {
      *v15 = v16;
      *(v15 + 8) = v17;
      *(v15 + 16) = v18;
      *(v15 + 20) = v19;
      *(v15 + 22) = v20;
      return swift_willThrow();
    }

    sub_1003F60D8(v15, a2, a3, a4, a5, a6, a7, v56);
    v40 = v56[8];
    v41 = v56[9];
    v42 = v56[10];
    LOBYTE(v43) = v57;
    v36 = v56[4];
    v37 = v56[5];
    v38 = v56[6];
    v39 = v56[7];
    v32 = v56[0];
    v33 = v56[1];
    v34 = v56[2];
    v35 = v56[3];
    UInt32.init(_:)(&v32);
    v52 = v40;
    v53 = v41;
    v54 = v42;
    v55 = v43;
    v48 = v36;
    v49 = v37;
    v50 = v38;
    v51 = v39;
    v44 = v32;
    v45 = v33;
    v46 = v34;
    v47 = v35;
    HIBYTE(v43) = a8;
    result = sub_1002F9F44(&v32);
    v22 = v41;
    *(a9 + 128) = v40;
    *(a9 + 144) = v22;
    *(a9 + 160) = v42;
    *(a9 + 176) = v43;
    v23 = v37;
    *(a9 + 64) = v36;
    *(a9 + 80) = v23;
    v24 = v39;
    *(a9 + 96) = v38;
    *(a9 + 112) = v24;
    v25 = v33;
    *a9 = v32;
    *(a9 + 16) = v25;
    v26 = v35;
    *(a9 + 32) = v34;
    *(a9 + 48) = v26;
  }

  return result;
}

uint64_t sub_10040F2E4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = __OFADD__(a2, 1);
  v7 = a2 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    if (v7 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v17 = a3;
      return swift_willThrow();
    }

    v9 = result;
    v11 = *result;
    v12 = *(result + 8);
    v13 = *(result + 16);
    v14 = *(result + 20);
    v15 = *(result + 22);
    sub_100469DF8(result);
    if (v4)
    {
      *v9 = v11;
      *(v9 + 8) = v12;
      *(v9 + 16) = v13;
      *(v9 + 20) = v14;
      *(v9 + 22) = v15;
      return swift_willThrow();
    }

    LODWORD(v23[0]) = sub_100405E9C(v9, a2, a3, v16);
    result = sub_1002F9FBC(v23);
    v18 = v23[9];
    *(a4 + 128) = v23[8];
    *(a4 + 144) = v18;
    *(a4 + 160) = v23[10];
    *(a4 + 176) = v24;
    v19 = v23[5];
    *(a4 + 64) = v23[4];
    *(a4 + 80) = v19;
    v20 = v23[7];
    *(a4 + 96) = v23[6];
    *(a4 + 112) = v20;
    v21 = v23[1];
    *a4 = v23[0];
    *(a4 + 16) = v21;
    v22 = v23[3];
    *(a4 + 32) = v23[2];
    *(a4 + 48) = v22;
  }

  return result;
}

uint64_t *sub_10040F424@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    if (v9 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v19 = a3;
    }

    else
    {
      v12 = result;
      v16 = *result;
      v17 = result[1];
      v31 = *(result + 10);
      v32 = *(result + 4);
      v30 = *(result + 22);

      sub_10046B71C(0x5BuLL, 0xE100000000000000, 0, 0, v12, v9, a3);
      if (v8)
      {

        *v12 = v16;
        *(v12 + 8) = v17;
        *(v12 + 16) = v32;
        *(v12 + 20) = v31;
        *(v12 + 22) = v30;
      }

      else
      {

        v18 = sub_100470F30(v12, v9, a3, a4, a5, a6, a7);

        sub_10046B71C(0x5DuLL, 0xE100000000000000, 0, 0, v12, v9, a3);

        if (v18)
        {
          v20 = v18;
        }

        else
        {
          v20 = _swiftEmptyArrayStorage;
        }

        sub_100469DF8(v12);

        v21 = sub_10046C278(v12, a2, a3, 1);
        if ((v21 & 0x8000000000000000) == 0)
        {
          *&v33[0] = v20;
          *(&v33[0] + 1) = v21;
          result = sub_100411A48(v33);
          v22 = v33[9];
          *(a8 + 128) = v33[8];
          *(a8 + 144) = v22;
          *(a8 + 160) = v33[10];
          *(a8 + 176) = v34;
          v23 = v33[5];
          *(a8 + 64) = v33[4];
          *(a8 + 80) = v23;
          v24 = v33[7];
          *(a8 + 96) = v33[6];
          *(a8 + 112) = v24;
          v25 = v33[1];
          *a8 = v33[0];
          *(a8 + 16) = v25;
          v26 = v33[3];
          *(a8 + 32) = v33[2];
          *(a8 + 48) = v26;
          return result;
        }

        sub_1003A527C();
        swift_allocError();
        *v27 = 0xD000000000000011;
        v27[1] = 0x80000001004B08A0;
        v27[2] = 0xD000000000000020;
        v27[3] = 0x80000001004B03C0;
        v27[4] = 202;
      }
    }

    return swift_willThrow();
  }

  __break(1u);
  return result;
}

uint64_t *sub_10040F718@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v5 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v14 = a3;
      return swift_willThrow();
    }

    v7 = result;
    v8 = *result;
    v9 = result[1];
    v10 = *(result + 4);
    v11 = *(result + 10);
    v12 = *(result + 22);
    if (a2 + 2 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v15 = a3;
      goto LABEL_8;
    }

    sub_100469DF8(v7);
    if (v4)
    {

LABEL_8:
      swift_willThrow();
      *v7 = v8;
      *(v7 + 8) = v9;
      *(v7 + 16) = v10;
      *(v7 + 20) = v11;
      *(v7 + 22) = v12;
      return swift_willThrow();
    }

    sub_10046B71C(0x28uLL, 0xE100000000000000, 0, 0, v7, v5, a3);
    v21 = sub_10041D9A8(v7, v5, a3);
    sub_10046B71C(0x29uLL, 0xE100000000000000, 0, 0, v7, v5, a3);

    *&v22[0] = v21;
    result = sub_1002F9FA8(v22);
    v16 = v22[9];
    *(a4 + 128) = v22[8];
    *(a4 + 144) = v16;
    *(a4 + 160) = v22[10];
    *(a4 + 176) = v23;
    v17 = v22[5];
    *(a4 + 64) = v22[4];
    *(a4 + 80) = v17;
    v18 = v22[7];
    *(a4 + 96) = v22[6];
    *(a4 + 112) = v18;
    v19 = v22[1];
    *a4 = v22[0];
    *(a4 + 16) = v19;
    v20 = v22[3];
    *(a4 + 32) = v22[2];
    *(a4 + 48) = v20;
  }

  return result;
}

uint64_t sub_10040F91C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(_OWORD *)@<X3>, uint64_t a5@<X8>)
{
  v7 = __OFADD__(a2, 1);
  v8 = a2 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    if (v8 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v17 = a3;
      return swift_willThrow();
    }

    v10 = result;
    v12 = *result;
    v13 = *(result + 8);
    v14 = *(result + 16);
    v15 = *(result + 20);
    v16 = *(result + 22);
    sub_100469DF8(result);
    if (v5)
    {
      *v10 = v12;
      *(v10 + 8) = v13;
      *(v10 + 16) = v14;
      *(v10 + 20) = v15;
      *(v10 + 22) = v16;
      return swift_willThrow();
    }

    *&v24[0] = sub_10046C278(v10, a2, a3, 0);
    result = a4(v24);
    v18 = v24[9];
    *(a5 + 128) = v24[8];
    *(a5 + 144) = v18;
    *(a5 + 160) = v24[10];
    *(a5 + 176) = v25;
    v19 = v24[5];
    *(a5 + 64) = v24[4];
    *(a5 + 80) = v19;
    v20 = v24[7];
    *(a5 + 96) = v24[6];
    *(a5 + 112) = v20;
    v21 = v24[1];
    *a5 = v24[0];
    *(a5 + 16) = v21;
    v22 = v24[3];
    *(a5 + 32) = v24[2];
    *(a5 + 48) = v22;
  }

  return result;
}

uint64_t sub_10040FA6C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X8>)
{
  v18 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
LABEL_27:
    v11 = sub_100461668((a8 > 1), v15, 1, v11);
    goto LABEL_9;
  }

  v9 = a3;
  if (v18 >= a3)
  {
    sub_1003A5228();
    swift_allocError();
    *v24 = v9;
    return swift_willThrow();
  }

  v13 = a2;
  v10 = a1;
  v68 = a5;
  v73 = a4;
  v69 = a6;
  v70 = a7;
  v67 = a8;
  v19 = *a1;
  v20 = a1[1];
  v21 = *(a1 + 4);
  v22 = *(a1 + 10);
  v23 = *(a1 + 22);
  sub_100469DF8(a1);
  if (v11)
  {
    *v10 = v19;
    v10[1] = v20;
    *(v10 + 4) = v21;
    *(v10 + 10) = v22;
    *(v10 + 22) = v23;
    return swift_willThrow();
  }

  sub_10046B71C(0x28uLL, 0xE100000000000000, 0, 0, v10, v13, v9);
  v12 = 0;

  v16 = sub_1004701D4(v10, v13, v9, v73, v68, v69, v70);
  v27 = v26;
  v29 = v28;

  if (!v16)
  {
    v49 = _swiftEmptyArrayStorage;
LABEL_24:
    sub_10046B71C(0x29uLL, 0xE100000000000000, 0, 0, v10, v13, v9);

    *&v71[0] = v49;
    result = sub_1002F9FF8(v71);
    v52 = v71[9];
    *(v67 + 128) = v71[8];
    *(v67 + 144) = v52;
    *(v67 + 160) = v71[10];
    *(v67 + 176) = v72;
    v53 = v71[5];
    *(v67 + 64) = v71[4];
    *(v67 + 80) = v53;
    v54 = v71[7];
    *(v67 + 96) = v71[6];
    *(v67 + 112) = v54;
    v55 = v71[1];
    *v67 = v71[0];
    *(v67 + 16) = v55;
    v56 = v71[3];
    *(v67 + 32) = v71[2];
    *(v67 + 48) = v56;
    return result;
  }

  v30 = v27;
  v17 = v29;
  v65 = v30;
  v63 = HIDWORD(v30);
  swift_retain_n();
  v11 = sub_100461668(0, 1, 1, _swiftEmptyArrayStorage);
  v14 = *(v11 + 2);
  a8 = *(v11 + 3);
  v15 = v14 + 1;
  if (v14 >= a8 >> 1)
  {
    goto LABEL_27;
  }

LABEL_9:
  *(v11 + 2) = v15;
  v31 = &v11[24 * v14];
  *(v31 + 4) = v16;
  *(v31 + 10) = v65;
  *(v31 + 11) = v63;
  *(v31 + 12) = v17;
  *(v31 + 26) = WORD2(v17);
  v31[54] = BYTE6(v17);
  v32 = v10[1];
  v58 = *(v10 + 10);
  v59 = *(v10 + 4);
  v57 = *(v10 + 22);
  v60 = *v10;

  v64 = v18 + 1;
  if (v18 + 1 >= v9)
  {
    v49 = v11;
    sub_1003A5228();
    swift_allocError();
    *v50 = v9;
  }

  else
  {
    v33 = v18 + 2;
    v34 = *v10;
    v35 = v10[1];
    v36 = *(v10 + 4);
    v37 = *(v10 + 10);
    v38 = *(v10 + 22);
    v61 = v33;
    if (v33 >= v9)
    {
LABEL_19:
      v62 = v38;
      sub_1003A5228();
      swift_allocError();
      *v51 = v9;

      v66 = v11;
    }

    else
    {
      v39 = v11;
      while (1)
      {
        v66 = v39;
        swift_retain_n();
        sub_100469DF8(v10);

        v62 = v38;
        if (v12)
        {
          break;
        }

        v40 = sub_100421650(v10, v64, v9, v73, v68, v69, v70);
        v12 = 0;
        v42 = v41;
        v44 = v43;
        v45 = v40;

        v39 = v66;
        v47 = *(v66 + 2);
        v46 = *(v66 + 3);
        if (v47 >= v46 >> 1)
        {
          v39 = sub_100461668((v46 > 1), v47 + 1, 1, v66);
        }

        *(v39 + 2) = v47 + 1;
        v48 = &v39[24 * v47];
        *(v48 + 4) = v45;
        *(v48 + 5) = v42;
        *(v48 + 12) = v44;
        *(v48 + 26) = WORD2(v44);
        v48[54] = BYTE6(v44);
        v34 = *v10;
        v35 = v10[1];
        v36 = *(v10 + 4);
        v37 = *(v10 + 10);
        v38 = *(v10 + 22);
        if (v61 >= v9)
        {
          goto LABEL_19;
        }
      }

      *v10 = v34;
      v10[1] = v35;
      *(v10 + 4) = v36;
      *(v10 + 10) = v37;
      *(v10 + 22) = v38;
    }

    swift_willThrow();

    *v10 = v34;
    v10[1] = v35;
    *(v10 + 4) = v36;
    *(v10 + 10) = v37;
    v49 = v66;
    *(v10 + 22) = v62;
  }

  swift_willThrow();
  swift_errorRetain();
  sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
  if (swift_dynamicCast())
  {

    goto LABEL_24;
  }

  *v10 = v60;
  v10[1] = v32;
  *(v10 + 4) = v59;
  *(v10 + 10) = v58;
  *(v10 + 22) = v57;
  swift_willThrow();
}

uint64_t sub_100410000@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X7>, uint64_t a5@<X8>)
{
  v7 = __OFADD__(a2, 1);
  v8 = a2 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    if (v8 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v17 = a3;
      return swift_willThrow();
    }

    v10 = result;
    v12 = *result;
    v13 = *(result + 8);
    v14 = *(result + 16);
    v15 = *(result + 20);
    v16 = *(result + 22);
    sub_100469DF8(result);
    if (v5)
    {
      *v10 = v12;
      *(v10 + 8) = v13;
      *(v10 + 16) = v14;
      *(v10 + 20) = v15;
      *(v10 + 22) = v16;
      return swift_willThrow();
    }

    sub_10046B71C(0x6C696EuLL, 0xE300000000000000, 0, 0, v10, a2, a3);
    v24 = a4;
    v25 = 0uLL;
    LOBYTE(v26) = 0x80;
    result = sub_1002F9E5C(&v24);
    v18 = v33;
    *(a5 + 128) = v32;
    *(a5 + 144) = v18;
    *(a5 + 160) = v34;
    *(a5 + 176) = v35;
    v19 = v29;
    *(a5 + 64) = v28;
    *(a5 + 80) = v19;
    v20 = v31;
    *(a5 + 96) = v30;
    *(a5 + 112) = v20;
    v21 = v25;
    *a5 = v24;
    *(a5 + 16) = v21;
    v22 = v27;
    *(a5 + 32) = v26;
    *(a5 + 48) = v22;
  }

  return result;
}

uint64_t *sub_100410168@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    return result;
  }

  if (v9 >= a3)
  {
    sub_1003A5228();
    swift_allocError();
    *v19 = a3;
    return swift_willThrow();
  }

  v12 = result;
  v16 = *result;
  v17 = result[1];
  v34 = *(result + 4);
  v31 = *(result + 22);
  v32 = *(result + 10);

  sub_10046B71C(0x5BuLL, 0xE100000000000000, 0, 0, v12, v9, a3);
  if (v8)
  {

    *v12 = v16;
    *(v12 + 8) = v17;
    *(v12 + 16) = v34;
    *(v12 + 20) = v32;
    *(v12 + 22) = v31;
    return swift_willThrow();
  }

  v18 = sub_100470F30(v12, v9, a3, a4, a5, a6, a7);

  sub_10046B71C(0x5DuLL, 0xE100000000000000, 0, 0, v12, v9, a3);

  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = _swiftEmptyArrayStorage;
  }

  v21 = sub_10047562C(v12, a2, a3);
  v23 = v22;
  v33 = v21;

  sub_100469DF8(v12);

  sub_10046B71C(0x6C696EuLL, 0xE300000000000000, 0, 0, v12, a2, a3);
  *&v35 = v20;
  *(&v35 + 1) = v33;
  v36 = v23 & 1;
  LOBYTE(v37) = 0;
  result = sub_1002F9E5C(&v35);
  v24 = v44;
  *(a8 + 128) = v43;
  *(a8 + 144) = v24;
  *(a8 + 160) = v45;
  *(a8 + 176) = v46;
  v25 = v40;
  *(a8 + 64) = v39;
  *(a8 + 80) = v25;
  v26 = v42;
  *(a8 + 96) = v41;
  *(a8 + 112) = v26;
  v27 = v36;
  *a8 = v35;
  *(a8 + 16) = v27;
  v28 = v38;
  *(a8 + 32) = v37;
  *(a8 + 48) = v28;
  return result;
}

uint64_t sub_100410434@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = v8;
  v17 = swift_allocObject();
  v17[2] = a4;
  v17[3] = a5;
  v17[4] = a6;
  v17[5] = a7;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1004119AC;
  *(v18 + 24) = v17;
  v40 = sub_1004068EC;
  v41 = v18;
  v19 = swift_allocObject();
  v19[2] = a4;
  v19[3] = a5;
  v19[4] = a6;
  v19[5] = a7;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1004119CC;
  *(v20 + 24) = v19;
  v42 = sub_1004068EC;
  v43 = v20;
  v21 = swift_allocObject();
  v21[2] = a4;
  v21[3] = a5;
  v21[4] = a6;
  v21[5] = a7;
  result = swift_allocObject();
  *(result + 16) = sub_1004119EC;
  *(result + 24) = v21;
  v44 = sub_1004068EC;
  v45 = result;
  v23 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    swift_retain_n();
    v24 = 32;
    while (1)
    {
      *(swift_allocObject() + 16) = *&v39[v24];
      if (v23 >= a3)
      {
        sub_1003A5228();
        swift_allocError();
        *v30 = a3;
      }

      else
      {
        v25 = *a1;
        v26 = a1[1];
        v38 = *(a1 + 4);
        v27 = a3;
        v28 = *(a1 + 10);
        v29 = *(a1 + 22);

        sub_100411D00(a1, v23, v27);
        if (!v9)
        {

          sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
          result = swift_arrayDestroy();
          v32 = v55;
          *(a8 + 128) = v54;
          *(a8 + 144) = v32;
          *(a8 + 160) = v56;
          *(a8 + 176) = v57;
          v33 = v51;
          *(a8 + 64) = v50;
          *(a8 + 80) = v33;
          v34 = v53;
          *(a8 + 96) = v52;
          *(a8 + 112) = v34;
          v35 = v47;
          *a8 = v46;
          *(a8 + 16) = v35;
          v36 = v49;
          *(a8 + 32) = v48;
          *(a8 + 48) = v36;
          return result;
        }

        *a1 = v25;
        a1[1] = v26;
        *(a1 + 4) = v38;
        *(a1 + 10) = v28;
        *(a1 + 22) = v29;
        a3 = v27;
      }

      swift_willThrow();
      swift_errorRetain();
      sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
      if (swift_dynamicCast())
      {
      }

      else
      {

        swift_errorRetain();
        if ((swift_dynamicCast() & 1) == 0)
        {
          sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
          swift_arrayDestroy();
        }
      }

      v9 = 0;
      v24 += 16;
      if (v24 == 80)
      {
        sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
        swift_arrayDestroy();
        sub_1003A527C();
        swift_allocError();
        *v31 = 0xD000000000000019;
        v31[1] = 0x80000001004B08C0;
        v31[2] = 0xD000000000000020;
        v31[3] = 0x80000001004B03C0;
        v31[4] = 296;
        return swift_willThrow();
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1004108E0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v10 = __OFADD__(a2, 1);
  v11 = a2 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    if (v11 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v20 = a3;
      return swift_willThrow();
    }

    v13 = result;
    v15 = *result;
    v16 = *(result + 8);
    v17 = *(result + 16);
    v18 = *(result + 20);
    v19 = *(result + 22);
    sub_100469DF8(result);
    if (v8)
    {
      *v13 = v15;
      *(v13 + 8) = v16;
      *(v13 + 16) = v17;
      *(v13 + 20) = v18;
      *(v13 + 22) = v19;
      return swift_willThrow();
    }

    sub_1004218EC(v13, a2, a3, a4, a5, a6, a7);
    swift_beginAccess();
    v21 = sub_1004A58D4();
    v23 = v22;

    *&v34[0] = v21;
    *(&v34[0] + 1) = v23;
    result = sub_1002F9F30(v34);
    v24 = v34[9];
    v25 = v34[10];
    v26 = v34[7];
    *(a8 + 128) = v34[8];
    *(a8 + 144) = v24;
    *(a8 + 160) = v25;
    *(a8 + 176) = v35;
    v27 = v34[5];
    *(a8 + 64) = v34[4];
    *(a8 + 80) = v27;
    *(a8 + 96) = v34[6];
    *(a8 + 112) = v26;
    v28 = v34[1];
    *a8 = v34[0];
    *(a8 + 16) = v28;
    v29 = v34[3];
    *(a8 + 32) = v34[2];
    *(a8 + 48) = v29;
  }

  return result;
}

uint64_t sub_100410A98@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = __OFADD__(a2, 1);
  v7 = a2 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    if (v7 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v16 = a3;
      return swift_willThrow();
    }

    v9 = result;
    v11 = *result;
    v12 = *(result + 8);
    v13 = *(result + 16);
    v14 = *(result + 20);
    v15 = *(result + 22);
    sub_100469DF8(result);
    if (v4)
    {
      *v9 = v11;
      *(v9 + 8) = v12;
      *(v9 + 16) = v13;
      *(v9 + 20) = v14;
      *(v9 + 22) = v15;
      return swift_willThrow();
    }

    sub_10042D898(v9, a2, a3);
    swift_beginAccess();
    v17 = sub_1004A58D4();
    v19 = v18;

    *&v26[0] = v17;
    *(&v26[0] + 1) = v19;
    result = sub_1002F9F30(v26);
    v20 = v26[9];
    v21 = v26[10];
    v22 = v26[7];
    *(a4 + 128) = v26[8];
    *(a4 + 144) = v20;
    *(a4 + 160) = v21;
    *(a4 + 176) = v27;
    v23 = v26[5];
    *(a4 + 64) = v26[4];
    *(a4 + 80) = v23;
    *(a4 + 96) = v26[6];
    *(a4 + 112) = v22;
    v24 = v26[1];
    *a4 = v26[0];
    *(a4 + 16) = v24;
    v25 = v26[3];
    *(a4 + 32) = v26[2];
    *(a4 + 48) = v25;
  }

  return result;
}

uint64_t sub_100410C34@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = __OFADD__(a2, 1);
  v7 = a2 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    if (v7 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v16 = a3;
      return swift_willThrow();
    }

    v9 = result;
    v11 = *result;
    v12 = *(result + 8);
    v13 = *(result + 16);
    v14 = *(result + 20);
    v15 = *(result + 22);
    sub_100469DF8(result);
    if (v4)
    {
      *v9 = v11;
      *(v9 + 8) = v12;
      *(v9 + 16) = v13;
      *(v9 + 20) = v14;
      *(v9 + 22) = v15;
      return swift_willThrow();
    }

    sub_10046B71C(0x28uLL, 0xE100000000000000, 0, 0, v9, a2, a3);
    v17 = sub_10042E9D4(v9, a2, a3);
    v19 = v18;
    v20 = v17;
    sub_10046B71C(0x29uLL, 0xE100000000000000, 0, 0, v9, a2, a3);
    *&v26[0] = v20;
    *(&v26[0] + 1) = v19;
    result = sub_100411998(v26);
    v21 = v26[9];
    *(a4 + 128) = v26[8];
    *(a4 + 144) = v21;
    *(a4 + 160) = v26[10];
    *(a4 + 176) = v27;
    v22 = v26[5];
    *(a4 + 64) = v26[4];
    *(a4 + 80) = v22;
    v23 = v26[7];
    *(a4 + 96) = v26[6];
    *(a4 + 112) = v23;
    v24 = v26[1];
    *a4 = v26[0];
    *(a4 + 16) = v24;
    v25 = v26[3];
    *(a4 + 32) = v26[2];
    *(a4 + 48) = v25;
  }

  return result;
}

uint64_t sub_100410DE0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = v8;
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a7;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_100411808;
  *(v17 + 24) = v16;
  v40[0] = sub_1004068EC;
  v40[1] = v17;
  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a6;
  v18[5] = a7;
  result = swift_allocObject();
  *(result + 16) = sub_100411828;
  *(result + 24) = v18;
  v40[2] = sub_1004068EC;
  v40[3] = result;
  v20 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    swift_retain_n();
    v21 = 0;
    for (i = 0; ; i = 1)
    {
      v38 = v21;
      *(swift_allocObject() + 16) = *&v40[2 * i];
      if (v20 >= a3)
      {
        sub_1003A5228();
        swift_allocError();
        *v29 = a3;
      }

      else
      {
        v23 = *a1;
        v24 = a1[1];
        v25 = *(a1 + 4);
        v37 = v9;
        v26 = v20;
        v27 = *(a1 + 10);
        v28 = *(a1 + 22);

        sub_10040BE98(a1, v26, a3);
        if (!v37)
        {

          sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
          result = swift_arrayDestroy();
          v31 = v50;
          *(a8 + 128) = v49;
          *(a8 + 144) = v31;
          *(a8 + 160) = v51;
          *(a8 + 176) = v52;
          v32 = v46;
          *(a8 + 64) = v45;
          *(a8 + 80) = v32;
          v33 = v48;
          *(a8 + 96) = v47;
          *(a8 + 112) = v33;
          v34 = v42;
          *a8 = v41;
          *(a8 + 16) = v34;
          v35 = v44;
          *(a8 + 32) = v43;
          *(a8 + 48) = v35;
          return result;
        }

        *a1 = v23;
        a1[1] = v24;
        *(a1 + 4) = v25;
        *(a1 + 10) = v27;
        *(a1 + 22) = v28;
        v20 = v26;
      }

      swift_willThrow();
      swift_errorRetain();
      sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
      if (swift_dynamicCast())
      {
      }

      else
      {

        swift_errorRetain();
        if ((swift_dynamicCast() & 1) == 0)
        {
          sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
          swift_arrayDestroy();
        }
      }

      v9 = 0;
      v21 = 1;
      if (v38)
      {
        sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
        swift_arrayDestroy();
        sub_1003A527C();
        swift_allocError();
        *v30 = 0xD000000000000019;
        v30[1] = 0x80000001004B08C0;
        v30[2] = 0xD000000000000020;
        v30[3] = 0x80000001004B03C0;
        v30[4] = 338;
        return swift_willThrow();
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100411258@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = __OFADD__(a2, 1);
  v7 = a2 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    if (v7 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v16 = a3;
      return swift_willThrow();
    }

    v9 = result;
    v11 = *result;
    v12 = *(result + 8);
    v13 = *(result + 16);
    v14 = *(result + 20);
    v15 = *(result + 22);
    sub_100469DF8(result);
    if (v4)
    {
      *v9 = v11;
      *(v9 + 8) = v12;
      *(v9 + 16) = v13;
      *(v9 + 20) = v14;
      *(v9 + 22) = v15;
      return swift_willThrow();
    }

    sub_10046B71C(0x28uLL, 0xE100000000000000, 0, 0, v9, a2, a3);
    v17 = sub_10042E9D4(v9, a2, a3);
    v19 = v18;
    v20 = v17;
    sub_10046B71C(0x29uLL, 0xE100000000000000, 0, 0, v9, a2, a3);
    *&v26[0] = v20;
    *(&v26[0] + 1) = v19;
    result = sub_10041185C(v26);
    v21 = v26[9];
    *(a4 + 128) = v26[8];
    *(a4 + 144) = v21;
    *(a4 + 160) = v26[10];
    *(a4 + 176) = v27;
    v22 = v26[5];
    *(a4 + 64) = v26[4];
    *(a4 + 80) = v22;
    v23 = v26[7];
    *(a4 + 96) = v26[6];
    *(a4 + 112) = v23;
    v24 = v26[1];
    *a4 = v26[0];
    *(a4 + 16) = v24;
    v25 = v26[3];
    *(a4 + 32) = v26[2];
    *(a4 + 48) = v25;
  }

  return result;
}

uint64_t sub_100411404@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(_OWORD *)@<X7>, uint64_t a5@<X8>)
{
  v7 = __OFADD__(a2, 1);
  v8 = a2 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    if (v8 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v17 = a3;
      return swift_willThrow();
    }

    v10 = result;
    v12 = *result;
    v13 = *(result + 8);
    v14 = *(result + 16);
    v15 = *(result + 20);
    v16 = *(result + 22);
    sub_100469DF8(result);
    if (v5)
    {
      *v10 = v12;
      *(v10 + 8) = v13;
      *(v10 + 16) = v14;
      *(v10 + 20) = v15;
      *(v10 + 22) = v16;
      return swift_willThrow();
    }

    sub_10046B71C(0x6C696EuLL, 0xE300000000000000, 0, 0, v10, a2, a3);
    v24[0] = 0uLL;
    result = a4(v24);
    v18 = v24[9];
    *(a5 + 128) = v24[8];
    *(a5 + 144) = v18;
    *(a5 + 160) = v24[10];
    *(a5 + 176) = v25;
    v19 = v24[5];
    *(a5 + 64) = v24[4];
    *(a5 + 80) = v19;
    v20 = v24[7];
    *(a5 + 96) = v24[6];
    *(a5 + 112) = v20;
    v21 = v24[1];
    *a5 = v24[0];
    *(a5 + 16) = v21;
    v22 = v24[3];
    *(a5 + 32) = v24[2];
    *(a5 + 48) = v22;
  }

  return result;
}

uint64_t sub_100411564()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1004117A8()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_100411884(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_10000C9C0(a2, a3);
    v5 = sub_1004A6A74();

    for (i = (a1 + 48); ; i += 2)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v15 = *i;

      result = sub_100064090(v7, v8);
      if (v10)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v5[6] + 16 * result);
      *v11 = v7;
      v11[1] = v8;
      *(v5[7] + 16 * result) = v15;
      v12 = v5[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v5[2] = v14;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t *sub_100411D18(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    v6 = result;
    if (v4 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v15 = a3;
    }

    else
    {
      v7 = *result;
      v8 = result[1];
      v9 = *(result + 4);
      v10 = *(result + 10);
      v11 = *(result + 22);

      v13 = sub_10040691C(v6, v4, a3, v12);
      if (!v3)
      {
        v24 = v13;
        sub_10046B71C(0x3AuLL, 0xE100000000000000, 0, 0, v6, v4, a3);
        v20 = sub_10040691C(v6, v4, a3, v14);

        if (v20 >= v24)
        {
          v21 = v24;
        }

        else
        {
          v21 = v20;
        }

        if (v20 <= v24)
        {
          v22 = v24;
        }

        else
        {
          v22 = v20;
        }

        return (v21 | (v22 << 32));
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
    }

    else
    {

      swift_errorRetain();
      if ((swift_dynamicCast() & 1) == 0)
      {
      }
    }

    if (v4 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v19 = a3;
      return swift_willThrow();
    }

    sub_10046B71C(0x2DuLL, 0xE100000000000000, 0, 0, v6, v4, a3);
    v17 = sub_10040691C(v6, v4, a3, v16);
    sub_10046B71C(0x2D3AuLL, 0xE200000000000000, 0, 0, v6, v4, a3);
    v23 = sub_10040691C(v6, v4, a3, v18);

    if (v23 >= v17)
    {
      v21 = v17;
    }

    else
    {
      v21 = v23;
    }

    if (v23 <= v17)
    {
      v22 = v17;
    }

    else
    {
      v22 = v23;
    }

    return (v21 | (v22 << 32));
  }

  __break(1u);
  return result;
}

uint64_t *sub_1004120FC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X7>, uint64_t a9@<X8>, uint64_t *a10, uint64_t *a11)
{
  v12 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    v14 = result;
    v15 = a9;
    v16 = a11;
    if (v12 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v24 = a3;
    }

    else
    {
      v18 = result[1];
      v29 = *(result + 10);
      v30 = *(result + 4);
      v28 = *(result + 22);
      v31 = *result;

      a8(v14, v12, a3, a4, a5, a6, a7);
      if (!v11)
      {
        v26 = sub_10000C9C0(a10, a11);
        (*(*(v26 - 8) + 56))(a9, 0, 1, v26);
      }

      *v14 = v31;
      *(v14 + 8) = v18;
      *(v14 + 16) = v30;
      *(v14 + 20) = v29;
      *(v14 + 22) = v28;
      v15 = a9;
      v16 = a11;
    }

    swift_willThrow();
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {
    }

    else
    {

      swift_errorRetain();
      if ((swift_dynamicCast() & 1) == 0)
      {
      }
    }

    if (v12 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v25 = a3;
      return swift_willThrow();
    }

    sub_10046B71C(0x24uLL, 0xE100000000000000, 0, 0, v14, v12, a3);
    v27 = sub_10000C9C0(a10, v16);
    (*(*(v27 - 8) + 56))(v15, 1, 1, v27);
  }

  __break(1u);
  return result;
}

uint64_t *sub_100412454(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    return result;
  }

  if (v10 >= a3)
  {
    sub_1003A5228();
    swift_allocError();
    *v21 = a3;
    return swift_willThrow();
  }

  v14 = result;
  v15 = *result;
  v16 = result[1];
  v27 = *(result + 10);
  v28 = *(result + 4);
  v26 = *(result + 22);

  v20 = a8(v14, v10, a3, a4, a5, a6, a7);
  if (v9)
  {

    *v14 = v15;
    *(v14 + 8) = v16;
    *(v14 + 16) = v28;
    *(v14 + 20) = v27;
    *(v14 + 22) = v26;
    return swift_willThrow();
  }

  v25 = v20;

  v22 = a9(v14, v10, a3, a4, a5, a6, a7);

  if (v25 >= v22)
  {
    LODWORD(v23) = v22;
  }

  else
  {
    LODWORD(v23) = v25;
  }

  if (v25 <= v22)
  {
    LODWORD(v24) = v22;
  }

  else
  {
    LODWORD(v24) = v25;
  }

  if ((v22 & &_mh_execute_header) != 0)
  {
    v23 = v25;
  }

  else
  {
    v23 = v23;
  }

  if ((v22 & &_mh_execute_header) != 0)
  {
    v24 = v25;
  }

  else
  {
    v24 = v24;
  }

  return (v23 | (v24 << 32));
}