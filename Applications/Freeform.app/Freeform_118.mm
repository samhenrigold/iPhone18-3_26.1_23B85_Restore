uint64_t sub_100E8EFFC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_10113DE48(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_100E8FBCC((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100B355CC(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_100B355CC((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_100E8FBCC((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_10113DE48(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_10113DDBC(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

void sub_100E8F5D8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v51 = type metadata accessor for UUID();
  v8 = *(v51 - 8);
  __chkstk_darwin(v51);
  v49 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v48 = &v39 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_63;
  }

  v50 = a3;
  v15 = (a2 - a1) / v13;
  v54 = a1;
  v53 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v26 = a4 + v17;
    if (v17 >= 1)
    {
      v27 = -v13;
      v42 = a4;
      v43 = (v8 + 16);
      v40 = (v8 + 8);
      v41 = a1;
      v28 = a4 + v17;
      v29 = v50;
      v44 = v27;
      do
      {
        v39 = v26;
        v30 = a2 + v27;
        v46 = a2 + v27;
        v47 = v26;
        v45 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v54 = a2;
            v26 = v39;
            goto LABEL_59;
          }

          v32 = v29;
          v50 = v29 + v27;
          v33 = v28 + v27;
          v34 = *v43;
          v35 = v48;
          v36 = v51;
          (*v43)(v48, v28 + v27, v51);
          v37 = v49;
          v34(v49, v30, v36);
          sub_1000066D0(&unk_101A09E30, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          LOBYTE(v34) = dispatch thunk of static Comparable.< infix(_:_:)();
          v38 = *v40;
          (*v40)(v37, v36);
          v38(v35, v36);
          if (v34)
          {
            break;
          }

          v29 = v50;
          if (v32 < v28 || v50 >= v28)
          {
            swift_arrayInitWithTakeFrontToBack();
            v30 = v46;
            a1 = v41;
          }

          else
          {
            v30 = v46;
            a1 = v41;
            if (v32 != v28)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v47 = v33;
          v28 = v33;
          v31 = v33 > v42;
          v27 = v44;
          a2 = v45;
          if (!v31)
          {
            v26 = v47;
            goto LABEL_58;
          }
        }

        v29 = v50;
        if (v32 < v45 || v50 >= v45)
        {
          a2 = v46;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v41;
        }

        else
        {
          a2 = v46;
          a1 = v41;
          if (v32 != v45)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v26 = v47;
        v27 = v44;
      }

      while (v28 > v42);
    }

LABEL_58:
    v54 = a2;
LABEL_59:
    v52 = v26;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v47 = a4 + v16;
    v52 = a4 + v16;
    if (v16 >= 1 && a2 < v50)
    {
      v45 = *(v8 + 16);
      v46 = v8 + 16;
      v43 = v13;
      v44 = (v8 + 8);
      do
      {
        v19 = v48;
        v20 = v51;
        v21 = v45;
        (v45)(v48, a2, v51);
        v22 = v49;
        v21(v49, a4, v20);
        sub_1000066D0(&unk_101A09E30, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        LOBYTE(v21) = dispatch thunk of static Comparable.< infix(_:_:)();
        v23 = *v44;
        (*v44)(v22, v20);
        v23(v19, v20);
        if (v21)
        {
          v24 = v43;
          if (a1 < a2 || a1 >= &v43[a2])
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v24;
        }

        else
        {
          v24 = v43;
          v25 = &v43[a4];
          if (a1 < a4 || a1 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v53 = v25;
          a4 += v24;
        }

        a1 += v24;
        v54 = a1;
      }

      while (a4 < v47 && a2 < v50);
    }
  }

  sub_10063F77C(&v54, &v53, &v52);
}

uint64_t sub_100E8FBCC(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

double sub_100E8FDF4@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *(sub_1005B981C(&qword_1019F6998, &qword_10146F760) + 48);
  v5 = sub_1005B981C(&qword_101A22780, &unk_10149E9A0);
  v7 = *a1;
  v6 = a1[1];
  sub_10000BE14(a1 + v4, a2 + *(v5 + 48), &qword_1019F6990, &qword_10146D2F0);
  *a2 = v7;
  a2[1] = v6;

  return result;
}

unint64_t sub_100E8FE90(uint64_t (*a1)(void *), uint64_t a2, unint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3;
  }

  v7 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = v7 | (v6 << 16);
  while (1)
  {
    if (v8 < 0x4000)
    {
      return 0;
    }

    v8 = String.index(before:)();
    v13[0] = String.subscript.getter();
    v13[1] = v9;
    v10 = a1(v13);
    if (v4)
    {
      break;
    }

    v11 = v10;

    if (v11)
    {
      return v8;
    }
  }

  return v8;
}

void sub_100E8FF94(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v19 = *(v3 - 8);
  __chkstk_darwin(v3);
  v18 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
  __chkstk_darwin(v5 - 8);
  v7 = &v18 - v6;
  v8 = type metadata accessor for CRLWPHyperlinkSmartFieldData(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1005B981C(&unk_101A096C0, &qword_101489120);
  __chkstk_darwin(v12 - 8);
  v14 = &v18 - v13;
  sub_10000BE14(v1, &v18 - v13, &unk_101A096C0, &qword_101489120);
  if ((*(v9 + 48))(v14, 1, v8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    sub_100025668(v14, v11, type metadata accessor for CRLWPHyperlinkSmartFieldData);
    Hasher._combine(_:)(1u);
    v15 = v11[8];
    v20 = *v11;
    v21 = v15;
    sub_1005B981C(&unk_101A0D940, &unk_101490740);
    CRExtensible.hash(into:)();
    sub_10000BE14(&v11[*(v8 + 20)], v7, &unk_1019F33C0, &unk_101468A60);
    v16 = v19;
    if ((*(v19 + 48))(v7, 1, v3) == 1)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      v17 = v18;
      (*(v16 + 32))(v18, v7, v3);
      Hasher._combine(_:)(1u);
      sub_1000066D0(&qword_101A00578, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      dispatch thunk of Hashable.hash(into:)();
      (*(v16 + 8))(v17, v3);
    }

    String.hash(into:)();
    sub_100864DE8(a1, *&v11[*(v8 + 28)]);
    sub_100026028(v11, type metadata accessor for CRLWPHyperlinkSmartFieldData);
  }
}

void sub_100E90344(uint64_t a1, uint64_t a2)
{
  v4 = _s5BoardVMa(0);
  __chkstk_darwin(v4 - 8);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  __chkstk_darwin(v7 - 8);
  v35[0] = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v9 - 8);
  v36 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v37 = v35 - v12;
  v13 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  __chkstk_darwin(v13);
  v15 = v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = _s4NodeVMa(0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a2 + 16);
  Hasher._combine(_:)(v20);
  if (v20)
  {
    v21 = v17;
    v22 = *(v16 + 20);
    v23 = a2 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v24 = *(v21 + 72);
    v35[1] = v13;
    while (1)
    {
      sub_10000C83C(v23, v19, _s4NodeVMa);
      sub_10000C83C(v19, v15, type metadata accessor for CRLBoardLibraryViewModel.Item);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        break;
      }

      Hasher._combine(_:)(*v15);
LABEL_4:
      sub_100E90344(a1, *&v19[v22]);
      sub_100026028(v19, _s4NodeVMa);
      v23 += v24;
      if (!--v20)
      {
        return;
      }
    }

    if (EnumCaseMultiPayload != 1)
    {
      sub_100025668(v15, v6, _s5BoardVMa);
      type metadata accessor for UUID();
      sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      type metadata accessor for CRLBoardIdentifierStorage(0);
      String.hash(into:)();
      v32 = _s5BoardVMa;
      v33 = v6;
LABEL_19:
      sub_100026028(v33, v32);
      goto LABEL_4;
    }

    v26 = v37;
    sub_100025668(v15, v37, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    v27 = v26;
    v28 = v36;
    sub_10000C83C(v27, v36, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    v29 = sub_1005B981C(&qword_1019F3480, &unk_10146F1F0);
    v30 = (*(*(v29 - 8) + 48))(v28, 5, v29);
    if (v30 > 2)
    {
      if (v30 == 3)
      {
        v31 = 2;
      }

      else if (v30 == 4)
      {
        v31 = 3;
      }

      else
      {
        v31 = 4;
      }
    }

    else
    {
      if (!v30)
      {
        v34 = v35[0];
        sub_100025668(v36, v35[0], type metadata accessor for CRLBoardLibraryViewModel.Folder);
        Hasher._combine(_:)(5uLL);
        sub_100F8ED58(a1);
        sub_100026028(v34, type metadata accessor for CRLBoardLibraryViewModel.Folder);
LABEL_18:
        v32 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
        v33 = v37;
        goto LABEL_19;
      }

      v31 = v30 != 1;
    }

    Hasher._combine(_:)(v31);
    goto LABEL_18;
  }
}

void sub_100E9082C(uint64_t a1@<X8>)
{
  v3 = sub_1005B981C(&qword_1019FEF98, &qword_10147A980);
  v43 = *(v3 - 8);
  v44 = v3;
  __chkstk_darwin(v3);
  v5 = &v39 - v4;
  v42 = type metadata accessor for UUID();
  v6 = *(v42 - 8);
  __chkstk_darwin(v42);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1005B981C(&qword_101A11C48, &unk_1014B68D0);
  __chkstk_darwin(v9 - 8);
  v46 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v14 = &v39 - v12;
  v15 = *v1;
  v16 = v1[1];
  v18 = v1[2];
  v17 = v1[3];
  v19 = v1[4];
  v39 = v5;
  v45 = v18;
  if (v19)
  {
    v41 = a1;
    v20 = v17;
LABEL_11:
    v40 = (v19 - 1) & v19;
    v24 = __clz(__rbit64(v19)) | (v20 << 6);
    v25 = v42;
    (*(v6 + 16))(v8, *(v15 + 48) + *(v6 + 72) * v24, v42, v13);
    v26 = *(*(v15 + 56) + 8 * v24);
    v27 = *(v44 + 48);
    v28 = v8;
    v29 = v44;
    (*(v6 + 32))(v14, v28, v25);
    *&v14[v27] = v26;
    v30 = v43;
    (*(v43 + 56))(v14, 0, 1, v29);

    v31 = v40;
    a1 = v41;
    v23 = v20;
    v32 = v30;
LABEL_12:
    *v1 = v15;
    v1[1] = v16;
    v33 = v46;
    v1[2] = v45;
    v1[3] = v23;
    v1[4] = v31;
    v34 = v1[5];
    sub_10003DFF8(v14, v33, &qword_101A11C48, &unk_1014B68D0);
    v35 = 1;
    if ((*(v32 + 48))(v33, 1, v29) != 1)
    {
      v36 = v33;
      v37 = v39;
      sub_10003DFF8(v36, v39, &qword_1019FEF98, &qword_10147A980);
      v34(v37);
      sub_10000CAAC(v37, &qword_1019FEF98, &qword_10147A980);
      v35 = 0;
    }

    v38 = sub_1005B981C(&qword_1019FEFC0, &unk_1014B77E0);
    (*(*(v38 - 8) + 56))(a1, v35, 1, v38);
  }

  else
  {
    v21 = (v18 + 64) >> 6;
    if (v21 <= v17 + 1)
    {
      v22 = v17 + 1;
    }

    else
    {
      v22 = (v18 + 64) >> 6;
    }

    v23 = v22 - 1;
    while (1)
    {
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v20 >= v21)
      {
        v32 = v43;
        v29 = v44;
        (*(v43 + 56))(&v39 - v12, 1, 1, v44, v13);
        v31 = 0;
        goto LABEL_12;
      }

      v19 = *(v16 + 8 * v20);
      ++v17;
      if (v19)
      {
        v41 = a1;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

void sub_100E90C10(uint64_t a1@<X8>)
{
  v3 = sub_1005B981C(&qword_1019F6998, &qword_10146F760);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v39 = &v38 - v5;
  v6 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v9 = &v38 - v8;
  v10 = sub_1005B981C(&unk_101A0B050, &qword_10148AB78);
  __chkstk_darwin(v10 - 8);
  v45 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v12);
  v15 = (&v38 - v14);
  v16 = *v1;
  v17 = v1[1];
  v19 = v1[2];
  v18 = v1[3];
  v20 = v1[4];
  v44 = v19;
  if (v20)
  {
    v42 = v4;
    v43 = a1;
    v21 = v3;
    v22 = v18;
LABEL_11:
    v40 = v16;
    v41 = (v20 - 1) & v20;
    v26 = __clz(__rbit64(v20)) | (v22 << 6);
    v27 = (*(v16 + 48) + 16 * v26);
    v28 = *v27;
    v29 = v27[1];
    sub_10000BE14(*(v16 + 56) + *(v7 + 72) * v26, v9, &qword_1019F6990, &qword_10146D2F0);
    v30 = *(v21 + 48);
    *v15 = v28;
    v15[1] = v29;
    v3 = v21;
    sub_10003DFF8(v9, v15 + v30, &qword_1019F6990, &qword_10146D2F0);
    v4 = v42;
    (*(v42 + 56))(v15, 0, 1, v3);

    v25 = v22;
    v32 = v40;
    v31 = v41;
    a1 = v43;
LABEL_12:
    *v1 = v32;
    v1[1] = v17;
    v33 = v45;
    v1[2] = v44;
    v1[3] = v25;
    v1[4] = v31;
    v34 = v1[5];
    sub_10003DFF8(v15, v33, &unk_101A0B050, &qword_10148AB78);
    v35 = 1;
    if ((*(v4 + 48))(v33, 1, v3) != 1)
    {
      v36 = v39;
      sub_10003DFF8(v33, v39, &qword_1019F6998, &qword_10146F760);
      v34(v36);
      sub_10000CAAC(v36, &qword_1019F6998, &qword_10146F760);
      v35 = 0;
    }

    v37 = sub_1005B981C(&qword_101A22780, &unk_10149E9A0);
    (*(*(v37 - 8) + 56))(a1, v35, 1, v37);
  }

  else
  {
    v23 = (v19 + 64) >> 6;
    if (v23 <= v18 + 1)
    {
      v24 = v18 + 1;
    }

    else
    {
      v24 = (v19 + 64) >> 6;
    }

    v25 = v24 - 1;
    while (1)
    {
      v22 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v22 >= v23)
      {
        v32 = v16;
        (*(v4 + 56))(v15, 1, 1, v3, v13);
        v31 = 0;
        goto LABEL_12;
      }

      v20 = *(v17 + 8 * v22);
      ++v18;
      if (v20)
      {
        v42 = v4;
        v43 = a1;
        v21 = v3;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

void sub_100E90FF4(uint64_t a1@<X8>)
{
  v3 = sub_1005B981C(&qword_1019FEFB8, &qword_1014B6B50);
  v42 = *(v3 - 8);
  v43 = v3;
  __chkstk_darwin(v3);
  v5 = &v38 - v4;
  v41 = type metadata accessor for UUID();
  v6 = *(v41 - 8);
  __chkstk_darwin(v41);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1005B981C(&qword_101A22038, &unk_1014B6B58);
  __chkstk_darwin(v9 - 8);
  v45 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v14 = &v38 - v12;
  v15 = *v1;
  v16 = v1[1];
  v18 = v1[2];
  v17 = v1[3];
  v19 = v1[4];
  v38 = v5;
  v44 = v18;
  if (v19)
  {
    v40 = a1;
    v20 = v17;
LABEL_11:
    v39 = (v19 - 1) & v19;
    v24 = __clz(__rbit64(v19)) | (v20 << 6);
    v25 = v41;
    (*(v6 + 16))(v8, *(v15 + 48) + *(v6 + 72) * v24, v41, v13);
    v26 = *(v43 + 48);
    v27 = *(v6 + 32);
    v46 = *(*(v15 + 56) + 16 * v24);
    v28 = v8;
    v29 = v43;
    v27(v14, v28, v25);
    *&v14[v26] = v46;
    v30 = v42;
    (*(v42 + 56))(v14, 0, 1, v29);
    swift_unknownObjectRetain();
    v31 = v39;
    a1 = v40;
    v23 = v20;
LABEL_12:
    *v1 = v15;
    v1[1] = v16;
    v32 = v45;
    v1[2] = v44;
    v1[3] = v23;
    v1[4] = v31;
    v33 = v1[5];
    sub_10003DFF8(v14, v32, &qword_101A22038, &unk_1014B6B58);
    v34 = 1;
    if ((*(v30 + 48))(v32, 1, v29) != 1)
    {
      v35 = v32;
      v36 = v38;
      sub_10003DFF8(v35, v38, &qword_1019FEFB8, &qword_1014B6B50);
      v33(v36);
      sub_10000CAAC(v36, &qword_1019FEFB8, &qword_1014B6B50);
      v34 = 0;
    }

    v37 = sub_1005B981C(&qword_1019FEFB0, &unk_10147A9A0);
    (*(*(v37 - 8) + 56))(a1, v34, 1, v37);
  }

  else
  {
    v21 = (v18 + 64) >> 6;
    if (v21 <= v17 + 1)
    {
      v22 = v17 + 1;
    }

    else
    {
      v22 = (v18 + 64) >> 6;
    }

    v23 = v22 - 1;
    while (1)
    {
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v20 >= v21)
      {
        v30 = v42;
        v29 = v43;
        (*(v42 + 56))(&v38 - v12, 1, 1, v43, v13);
        v31 = 0;
        goto LABEL_12;
      }

      v19 = *(v16 + 8 * v20);
      ++v17;
      if (v19)
      {
        v40 = a1;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

void sub_100E913E0(uint64_t a1@<X8>)
{
  v3 = sub_1005B981C(&qword_1019FEF90, &qword_1014B67F0);
  v43 = *(v3 - 8);
  v44 = v3;
  __chkstk_darwin(v3);
  v5 = &v39 - v4;
  v42 = type metadata accessor for UUID();
  v6 = *(v42 - 8);
  __chkstk_darwin(v42);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1005B981C(&qword_101A21E48, &unk_1014B67F8);
  __chkstk_darwin(v9 - 8);
  v46 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v14 = &v39 - v12;
  v15 = *v1;
  v16 = v1[1];
  v18 = v1[2];
  v17 = v1[3];
  v19 = v1[4];
  v39 = v5;
  v45 = v18;
  if (v19)
  {
    v41 = a1;
    v20 = v17;
LABEL_11:
    v40 = (v19 - 1) & v19;
    v24 = __clz(__rbit64(v19)) | (v20 << 6);
    v25 = v42;
    (*(v6 + 16))(v8, *(v15 + 48) + *(v6 + 72) * v24, v42, v13);
    v26 = *(*(v15 + 56) + 8 * v24);
    v27 = *(v44 + 48);
    v28 = v8;
    v29 = v44;
    (*(v6 + 32))(v14, v28, v25);
    *&v14[v27] = v26;
    v30 = v43;
    (*(v43 + 56))(v14, 0, 1, v29);

    v31 = v40;
    a1 = v41;
    v23 = v20;
    v32 = v30;
LABEL_12:
    *v1 = v15;
    v1[1] = v16;
    v33 = v46;
    v1[2] = v45;
    v1[3] = v23;
    v1[4] = v31;
    v34 = v1[5];
    sub_10003DFF8(v14, v33, &qword_101A21E48, &unk_1014B67F8);
    v35 = 1;
    if ((*(v32 + 48))(v33, 1, v29) != 1)
    {
      v36 = v33;
      v37 = v39;
      sub_10003DFF8(v36, v39, &qword_1019FEF90, &qword_1014B67F0);
      v34(v37);
      sub_10000CAAC(v37, &qword_1019FEF90, &qword_1014B67F0);
      v35 = 0;
    }

    v38 = sub_1005B981C(&qword_1019FEF88, &unk_10147A970);
    (*(*(v38 - 8) + 56))(a1, v35, 1, v38);
  }

  else
  {
    v21 = (v18 + 64) >> 6;
    if (v21 <= v17 + 1)
    {
      v22 = v17 + 1;
    }

    else
    {
      v22 = (v18 + 64) >> 6;
    }

    v23 = v22 - 1;
    while (1)
    {
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v20 >= v21)
      {
        v32 = v43;
        v29 = v44;
        (*(v43 + 56))(&v39 - v12, 1, 1, v44, v13);
        v31 = 0;
        goto LABEL_12;
      }

      v19 = *(v16 + 8 * v20);
      ++v17;
      if (v19)
      {
        v41 = a1;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

uint64_t sub_100E917C4(uint64_t a1, uint64_t a2)
{
  v62 = a1;
  v3 = sub_1005B981C(&qword_101A21C68, &qword_1014B6530);
  __chkstk_darwin(v3 - 8);
  v53 = &v47 - v4;
  v5 = type metadata accessor for CRLBoardCRDTData(0);
  v52 = *(v5 - 8);
  __chkstk_darwin(v5);
  v51 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v50 = &v47 - v8;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v47 - v14;
  v16 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v16 - 8);
  v49 = a2 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_boardIdentifier;
  v59 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C83C(a2 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_boardIdentifier, v59, type metadata accessor for CRLBoardIdentifier);
  v18 = (a2 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_minRequiredVersions);
  v19 = *(a2 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_minRequiredVersions);
  v57 = *(a2 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_minRequiredVersions + 16);
  v58 = v19;
  v56 = *(a2 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_minRequiredVersions + 32);
  v20 = OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_rootContainerUUID;
  swift_beginAccess();
  v21 = *(v10 + 16);
  v60 = v15;
  v21(v15, a2 + v20, v9);
  v22 = OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_alternateRootContainerUUID;
  swift_beginAccess();
  v61 = v12;
  v21(v12, a2 + v22, v9);
  v23 = 0;
  v55 = *(a2 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_isLocalTombstone);
  v54 = *(a2 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_hideFromRecentlyDeleted);
  v24 = (a2 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_data);
  v25 = *(a2 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_data + 8);
  if (v25 >> 60 != 15)
  {
    v26 = *v24;
    sub_100024E84(*v24, *(a2 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_data + 8));
    sub_100024E84(v26, v25);
    sub_1000066D0(&unk_101A22E10, type metadata accessor for CRLBoardCRDTData, byte_1014DD800);

    v27 = v53;
    CRDT.init(serializedData:)();
    (*(v52 + 7))(v27, 0, 1, v5);
    v52 = type metadata accessor for CRLBoardCRDTData;
    v28 = v50;
    sub_100025668(v27, v50, type metadata accessor for CRLBoardCRDTData);
    LODWORD(v53) = *(v18 + 32);
    v29 = v18[1];
    v48 = *v18;
    v47 = v29;
    v30 = v51;
    sub_10000C83C(v28, v51, type metadata accessor for CRLBoardCRDTData);
    v31 = (v49 + *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20));
    v33 = *v31;
    v32 = v31[1];
    type metadata accessor for CRLBoardData(0);
    v23 = swift_allocObject();

    sub_100025870(v26, v25);

    sub_100026028(v28, type metadata accessor for CRLBoardCRDTData);
    *(v23 + 16) = 7;
    *(v23 + 40) = v47;
    *(v23 + 24) = v48;
    *(v23 + 56) = v53;
    sub_100025668(v30, v23 + OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData, v52);
    v34 = (v23 + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
    *v34 = v33;
    v34[1] = v32;
  }

  v35 = *(a2 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_unsyncedChanges);
  v36 = *(a2 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_syncData);
  v37 = *(a2 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_syncData + 8);
  v64 = type metadata accessor for CRLBoardDataStore(0);
  v65 = &off_1018A4BB8;
  sub_100024E84(v36, v37);

  *&v63 = v62;
  type metadata accessor for CRLBoardSyncLocalChangeRecord(0);
  v38 = swift_allocObject();
  v39 = OBJC_IVAR____TtC8Freeform29CRLBoardSyncLocalChangeRecord_boardData;
  *(v38 + OBJC_IVAR____TtC8Freeform29CRLBoardSyncLocalChangeRecord_boardData) = 0;
  sub_100050F74(&v63, v38 + OBJC_IVAR____TtC8Freeform29CRLBoardSyncLocalChangeRecord_persistenceContext);
  *(v38 + v39) = v23;
  *(v38 + OBJC_IVAR____TtC8Freeform29CRLBoardSyncLocalChangeRecord_unsyncedChanges) = v35;
  *(v38 + OBJC_IVAR____TtC8Freeform29CRLBoardSyncLocalChangeRecord_unsyncedAssetUUIDs) = _swiftEmptySetSingleton;
  *(v38 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_syncData) = xmmword_101486780;
  sub_100025668(v59, v38 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
  v40 = v38 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_minRequiredVersions;
  v41 = v57;
  *v40 = v58;
  *(v40 + 16) = v41;
  *(v40 + 32) = v56;
  v42 = *(v10 + 32);
  v42(v38 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_rootContainerUUID, v60, v9);
  v42(v38 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_alternateRootContainerUUID, v61, v9);
  *(v38 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_tombstoned) = v55;
  *(v38 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_hideFromRecentlyDeleted) = v54;
  v43 = (v38 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_syncData);
  v44 = *(v38 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_syncData);
  v45 = *(v38 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_syncData + 8);
  sub_100024E84(v36, v37);
  *v43 = v36;
  v43[1] = v37;
  sub_100025870(v44, v45);
  sub_100025870(v36, v37);
  return v38;
}

uint64_t sub_100E91F48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v6;
  v7 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v7 - 8);
  v9 = &v37 - v8;
  v43 = &v37 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v41 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v12);
  v42 = *(a2 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_minRequiredVersions + 32);
  v47 = *(a2 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_objectOptions);
  v14 = *(a2 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_rawTypeValues);
  v45 = *(a2 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_rawTypeValues + 8);
  v46 = v14;
  v44 = *(a2 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_rawTypeValues + 16);
  v15 = OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_parentContainerUUID;
  v16 = *(a2 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_minRequiredVersions + 16);
  v40 = *(a2 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_minRequiredVersions);
  v39 = v16;
  swift_beginAccess();
  sub_10000BE14(a2 + v15, v9, &qword_1019F6990, &qword_10146D2F0);
  sub_10000C83C(a2 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_boardIdentifier, v6, type metadata accessor for CRLBoardIdentifier);
  v49 = *(a2 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_isLocalTombstone);
  v17 = sub_100E929EC(a2);
  v19 = *(a2 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue);
  v18 = *(a2 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue + 8);
  v38 = *(a2 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_unsyncedChanges);
  v20 = *(a2 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData);
  v21 = *(a2 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData + 8);
  v51 = type metadata accessor for CRLBoardDataStore(0);
  v52 = &off_1018A4BB8;
  sub_100024E84(v19, v18);
  sub_100024E84(v20, v21);

  *&v50 = a1;
  type metadata accessor for CRLBoardItemSyncLocalChangeRecord(0);
  v22 = swift_allocObject();
  v23 = OBJC_IVAR____TtC8Freeform33CRLBoardItemSyncLocalChangeRecord_itemData;
  *(v22 + OBJC_IVAR____TtC8Freeform33CRLBoardItemSyncLocalChangeRecord_itemData) = 0;
  v24 = (v22 + OBJC_IVAR____TtC8Freeform33CRLBoardItemSyncLocalChangeRecord_ckMergeableRecordValueData);
  v37 = xmmword_101486780;
  *(v22 + OBJC_IVAR____TtC8Freeform33CRLBoardItemSyncLocalChangeRecord_ckMergeableRecordValueData) = xmmword_101486780;
  sub_100050F74(&v50, v22 + OBJC_IVAR____TtC8Freeform33CRLBoardItemSyncLocalChangeRecord_persistenceContext);
  *(v22 + v23) = v17;
  v25 = *v24;
  v26 = v24[1];
  *v24 = v19;
  v24[1] = v18;
  sub_100025870(v25, v26);
  *(v22 + OBJC_IVAR____TtC8Freeform33CRLBoardItemSyncLocalChangeRecord_unsyncedChanges) = v38;
  *(v22 + OBJC_IVAR____TtC8Freeform33CRLBoardItemSyncLocalChangeRecord_unsyncedAssetUUIDs) = _swiftEmptySetSingleton;
  v27 = OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_parentContainerUUID;
  (*(v11 + 56))(v22 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_parentContainerUUID, 1, 1, v10);
  *(v22 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_syncData) = v37;
  (*(v11 + 32))(v22 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_id, v41, v10);
  v28 = v22 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_minRequiredVersions;
  *(v28 + 32) = v42;
  v29 = v39;
  *v28 = v40;
  *(v28 + 16) = v29;
  v30 = v46;
  *(v22 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_objectOptions) = v47;
  v31 = v22 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_rawTypeValues;
  v32 = v45;
  *v31 = v30;
  *(v31 + 8) = v32;
  *(v31 + 16) = v44;
  swift_beginAccess();
  sub_10002C638(v43, v22 + v27, &qword_1019F6990, &qword_10146D2F0);
  swift_endAccess();
  sub_100025668(v48, v22 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
  *(v22 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_tombstoned) = v49;
  v33 = (v22 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_syncData);
  v34 = *(v22 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_syncData);
  v35 = *(v22 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_syncData + 8);
  sub_100024E84(v20, v21);
  *v33 = v20;
  v33[1] = v21;
  sub_100025870(v34, v35);
  sub_100025870(v20, v21);
  return v22;
}

uint64_t sub_100E92454(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for CRLBoardDataStore(0);
  v37 = &off_1018A4BB8;
  *&v35 = a1;
  v34 = *(a2 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_bucketIndex);
  sub_10000C83C(a2 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_boardIdentifier, v6, type metadata accessor for CRLBoardIdentifier);
  v7 = *(a2 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_bucketData);
  v8 = *(a2 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_bucketData + 8);
  v9 = *(a2 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData);
  v10 = *(a2 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData + 8);
  v11 = *(a2 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData);
  v12 = *(a2 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData + 8);
  v13 = *(a2 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_minRequiredVersions + 32);
  v32 = *(a2 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_minRequiredVersions + 40);
  v33 = v13;
  v31 = *(a2 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_minRequiredVersions + 48);
  v14 = *(a2 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_unsyncedChanges);
  v15 = *(a2 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_minRequiredVersions);
  v29 = *(a2 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_minRequiredVersions + 16);
  v30 = v15;
  sub_100024E98(v7, v8);
  sub_100024E84(v9, v10);
  sub_100024E84(v11, v12);

  type metadata accessor for CRLFreehandDrawingBucketSyncLocalChangeRecord(0);
  v16 = swift_allocObject();
  v17 = (v16 + OBJC_IVAR____TtC8Freeform45CRLFreehandDrawingBucketSyncLocalChangeRecord_ckMergeableRecordValueData);
  v28 = xmmword_101486780;
  *(v16 + OBJC_IVAR____TtC8Freeform45CRLFreehandDrawingBucketSyncLocalChangeRecord_ckMergeableRecordValueData) = xmmword_101486780;
  sub_100050F74(&v35, v16 + OBJC_IVAR____TtC8Freeform45CRLFreehandDrawingBucketSyncLocalChangeRecord_persistenceContext);
  v18 = (v16 + OBJC_IVAR____TtC8Freeform45CRLFreehandDrawingBucketSyncLocalChangeRecord_bucketData);
  *v18 = v7;
  v18[1] = v8;
  v19 = *v17;
  v20 = v17[1];
  *v17 = v11;
  v17[1] = v12;
  sub_100025870(v19, v20);
  *(v16 + OBJC_IVAR____TtC8Freeform45CRLFreehandDrawingBucketSyncLocalChangeRecord_unsyncedChanges) = v14;
  v21 = v16 + OBJC_IVAR____TtC8Freeform45CRLFreehandDrawingBucketSyncLocalChangeRecord_minRequiredVersions;
  v22 = v29;
  *v21 = v30;
  *(v21 + 16) = v22;
  v23 = v32;
  *(v21 + 32) = v33;
  *(v21 + 40) = v23;
  *(v21 + 48) = v31;
  *(v16 + OBJC_IVAR____TtC8Freeform34CRLFreehandDrawingBucketSyncRecord_syncData) = v28;
  sub_100025668(v6, v16 + OBJC_IVAR____TtC8Freeform34CRLFreehandDrawingBucketSyncRecord_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
  *(v16 + OBJC_IVAR____TtC8Freeform34CRLFreehandDrawingBucketSyncRecord_bucketIndex) = v34;
  v24 = (v16 + OBJC_IVAR____TtC8Freeform34CRLFreehandDrawingBucketSyncRecord_syncData);
  v25 = *(v16 + OBJC_IVAR____TtC8Freeform34CRLFreehandDrawingBucketSyncRecord_syncData);
  v26 = *(v16 + OBJC_IVAR____TtC8Freeform34CRLFreehandDrawingBucketSyncRecord_syncData + 8);
  sub_100024E84(v9, v10);
  *v24 = v9;
  v24[1] = v10;
  sub_100025870(v25, v26);
  sub_100025870(v9, v10);
  return v16;
}

uint64_t sub_100E92710(uint64_t a1)
{
  v2 = _s6CellIDVMa(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v13 - v7;
  v9 = *(a1 + 16);
  sub_1000066D0(&qword_101A21DA8, _s6CellIDVMa, byte_1014D2178);
  result = Set.init(minimumCapacity:)();
  v14 = result;
  if (v9)
  {
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);
    do
    {
      sub_10000C83C(v11, v5, _s6CellIDVMa);
      sub_100E6AB44(v8, v5);
      sub_100026028(v8, _s6CellIDVMa);
      v11 += v12;
      --v9;
    }

    while (v9);
    return v14;
  }

  return result;
}

sqlite3_stmt *sub_100E928A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  LODWORD(v7) = a3;
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (!result)
  {
LABEL_4:
    v12 = __OFSUB__(a2, a1);
    v13 = a2 - a1;
    if (v12)
    {
      __break(1u);
    }

    else
    {
      v14 = __DataStorage._length.getter();
      if (v14 >= v13)
      {
        v7 = v13;
      }

      else
      {
        v7 = v14;
      }

      result = swift_beginAccess();
      if (a5 >= 0xFFFFFFFF80000000)
      {
        if (a5 <= 0x7FFFFFFF)
        {
          if (!v11)
          {
            v7 = 0;
          }

          if (v7 >= 0xFFFFFFFF80000000)
          {
            if (v7 <= 0x7FFFFFFF)
            {
              result = *(a4 + 24);
              if (qword_1019F17C8 == -1)
              {
                return sqlite3_bind_blob(result, a5, v11, v7, qword_101AD69D0);
              }

LABEL_21:
              v15 = result;
              swift_once();
              result = v15;
              return sqlite3_bind_blob(result, a5, v11, v7, qword_101AD69D0);
            }

LABEL_20:
            __break(1u);
            goto LABEL_21;
          }

LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

LABEL_18:
        __break(1u);
        goto LABEL_19;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

  result = __DataStorage._offset.getter();
  if (!__OFSUB__(a1, result))
  {
    v11 = (v11 + a1 - result);
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

uint64_t *sub_100E929EC(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_commonData + 8);
  if (v1 >> 60 == 15)
  {
    return 0;
  }

  v2 = *(a1 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_commonData);
  v67 = (a1 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_minRequiredVersions);
  v3 = *(a1 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_minRequiredVersions);
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  *&v70 = &type metadata for UInt64;
  sub_100024E98(v2, v1);
  sub_1005B981C(&qword_101A21C70, &qword_1014B6538);
  String.init<A>(describing:)();
  v5 = String._bridgeToObjectiveC()();

  v6 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(inited + 56) = v6;
  v7 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
  *(inited + 32) = v5;
  v8 = inited + 32;
  v9 = inited;
  *(inited + 64) = v7;
  v69 = v2;
  if (v3)
  {

LABEL_32:
    v8 = sub_100A0557C(*(a1 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_rawTypeValues), *(a1 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_rawTypeValues + 8), *(a1 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_rawTypeValues + 16));
    v29 = v48;
    LOWORD(v28) = v49;
    if ((v49 & 0x10000) != 0)
    {
      if (qword_1019F2258 != -1)
      {
        goto LABEL_43;
      }

      goto LABEL_36;
    }

    v50 = *(a1 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData + 8);
    if (v50 >> 60 == 15)
    {
      sub_100025870(v69, v1);
      return 0;
    }

    v58 = *(a1 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData);
    v59 = v67[1];
    v70 = *v67;
    v71 = v59;
    v72 = *(v67 + 32);
    v60 = *(a1 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_objectOptions);
    v61 = *(a1 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_capsuleData);
    v62 = *(a1 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_capsuleData + 8);
    sub_100024E84(v58, v50);
    sub_100024E84(v61, v62);
    v63 = sub_100B69CC0(v8, v29, v28 & 0x1FF, &v70, v60, v69, v1, v58, v50, v61, v62);
    sub_100025870(v61, v62);
    sub_100025870(v58, v50);
    sub_100025870(v69, v1);
    return v63;
  }

  v10 = v7;
  v65 = v1;
  v64 = objc_opt_self();
  v66 = [v64 _atomicIncrementAssertCount];
  *&v70 = [objc_allocWithZone(NSString) init];
  sub_100604538(inited, &v70, "expected inequality between two values of type %{public}@", 57, 2u);
  StaticString.description.getter("createItemData(from:)", 21, 2);
  v11 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
  v12 = v9;
  v13 = String._bridgeToObjectiveC()();

  v14 = [v13 lastPathComponent];

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v18 = static OS_os_log.crlAssert;
  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_10146CA70;
  *(v19 + 56) = &type metadata for Int32;
  *(v19 + 64) = &protocol witness table for Int32;
  *(v19 + 32) = v66;
  *(v19 + 96) = v6;
  *(v19 + 104) = v10;
  *(v19 + 72) = v11;
  *(v19 + 136) = &type metadata for String;
  v20 = sub_1000053B0();
  *(v19 + 112) = v15;
  *(v19 + 120) = v17;
  *(v19 + 176) = &type metadata for UInt;
  *(v19 + 184) = &protocol witness table for UInt;
  *(v19 + 144) = v20;
  *(v19 + 152) = 11651;
  v21 = v70;
  *(v19 + 216) = v6;
  *(v19 + 224) = v10;
  *(v19 + 192) = v21;
  v22 = v11;
  v23 = v21;
  v24 = static os_log_type_t.error.getter();
  sub_100005404(v18, &_mh_execute_header, v24, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v19);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v25 = static os_log_type_t.error.getter();
  sub_100005404(v18, &_mh_execute_header, v25, "expected inequality between two values of type %{public}@", 57, 2, v12);

  type metadata accessor for __VaListBuilder();
  v26 = swift_allocObject();
  v26[2] = 8;
  v26[3] = 0;
  v27 = v26 + 3;
  v26[4] = 0;
  v26[5] = 0;
  v28 = *(v12 + 16);
  if (!v28)
  {
LABEL_31:
    v44 = __VaListBuilder.va_list()();
    StaticString.description.getter("createItemData(from:)", 21, 2);
    v45 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
    v46 = String._bridgeToObjectiveC()();

    StaticString.description.getter("expected inequality between two values of type %{public}@", 57, 2);
    v47 = String._bridgeToObjectiveC()();

    [v64 handleFailureInFunction:v45 file:v46 lineNumber:11651 isFatal:0 format:v47 args:v44];

    v1 = v65;
    goto LABEL_32;
  }

  v1 = 0;
  while (1)
  {
    v29 = sub_100020E58((v8 + 40 * v1), *(v8 + 40 * v1 + 24));
    v30 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v31 = *v27;
    v32 = *(v30 + 16);
    v33 = __OFADD__(*v27, v32);
    v34 = *v27 + v32;
    if (v33)
    {
      break;
    }

    v35 = v26[4];
    if (v35 >= v34)
    {
      goto LABEL_23;
    }

    if (v35 + 0x4000000000000000 < 0)
    {
      goto LABEL_41;
    }

    v29 = v26[5];
    if (2 * v35 > v34)
    {
      v34 = 2 * v35;
    }

    v26[4] = v34;
    if ((v34 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_42;
    }

    v36 = v30;
    v37 = swift_slowAlloc();
    v38 = v37;
    v26[5] = v37;
    if (v29)
    {
      if (v37 != v29 || v37 >= &v29[v31])
      {
        memmove(v37, v29, 8 * v31);
      }

      v29 = v26;
      __VaListBuilder.deallocStorage(wordCount:storage:)();
      v30 = v36;
LABEL_23:
      v38 = v26[5];
      if (!v38)
      {
        goto LABEL_30;
      }

      goto LABEL_24;
    }

    v30 = v36;
    if (!v38)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

LABEL_24:
    v40 = *(v30 + 16);
    if (v40)
    {
      v41 = (v30 + 32);
      v42 = *v27;
      while (1)
      {
        v43 = *v41++;
        v38[v42] = v43;
        v42 = *v27 + 1;
        if (__OFADD__(*v27, 1))
        {
          break;
        }

        *v27 = v42;
        if (!--v40)
        {
          goto LABEL_8;
        }
      }

      __break(1u);
      break;
    }

LABEL_8:

    if (++v1 == v28)
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  swift_once();
LABEL_36:
  v51 = static OS_os_log.boardStore;
  v52 = swift_initStackObject();
  *(v52 + 16) = xmmword_10146C6B0;
  *&v70 = v8;
  *(&v70 + 1) = v29;
  LOWORD(v71) = v28;
  BYTE2(v71) = 1;
  v53 = String.init<A>(describing:)();
  v55 = v54;
  *(v52 + 56) = &type metadata for String;
  *(v52 + 64) = sub_1000053B0();
  *(v52 + 32) = v53;
  *(v52 + 40) = v55;
  v56 = static os_log_type_t.error.getter();
  sub_100005404(v51, &_mh_execute_header, v56, "Database record has invalid board item type: %@", 47, 2, v52);
  sub_100025870(v69, v1);
  swift_setDeallocating();
  sub_100005070((v52 + 32));
  return 0;
}

uint64_t sub_100E931D8(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {

    v3._countAndFlagsBits = 46;
    v3._object = 0xE100000000000000;
    String.append(_:)(v3);
    v5 = a1;
    v4 = a2;
  }

  else
  {
    v5 = 0;
    v4 = 0xE000000000000000;
  }

  _StringGuts.grow(_:)(34);

  v6._countAndFlagsBits = 0xD000000000000013;
  v6._object = 0x80000001015A3FA0;
  String.append(_:)(v6);
  v7._countAndFlagsBits = 8236;
  v7._object = 0xE200000000000000;
  String.append(_:)(v7);
  v8._countAndFlagsBits = v5;
  v8._object = v4;
  String.append(_:)(v8);
  v9._object = 0x8000000101585360;
  v9._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 8236;
  v10._object = 0xE200000000000000;
  String.append(_:)(v10);
  v11._countAndFlagsBits = v5;
  v11._object = v4;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 0xD000000000000013;
  v12._object = 0x80000001015A3FC0;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 8236;
  v13._object = 0xE200000000000000;
  String.append(_:)(v13);
  v14._countAndFlagsBits = v5;
  v14._object = v4;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0x75755F7465737361;
  v15._object = 0xEA00000000006469;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 8236;
  v16._object = 0xE200000000000000;
  String.append(_:)(v16);
  v17._countAndFlagsBits = v5;
  v17._object = v4;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0x7265727265666572;
  v18._object = 0xED0000657079745FLL;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 8236;
  v19._object = 0xE200000000000000;
  String.append(_:)(v19);
  v20._countAndFlagsBits = v5;
  v20._object = v4;
  String.append(_:)(v20);

  v21._object = 0x80000001015A33D0;
  v21._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v21);
  return v5;
}

uint64_t sub_100E933E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A21D08, &unk_1014B6620);
  __chkstk_darwin(v4 - 8);
  v45 = &v39 - v5;
  v6 = type metadata accessor for CRLAssetReferrerIdentifier(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v44 = &v39 - v11;
  v12 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v12 - 8);
  v14 = &v39 - v13;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  __chkstk_darwin(v17);
  v20 = &v39 - v19;
  result = a2 + 2;
  if (__OFADD__(a2, 2))
  {
    __break(1u);
    goto LABEL_18;
  }

  v43 = v18;
  sub_10089C2BC(result, a1);
  if (v23)
  {
    v24 = v22;
    result = a2 + 3;
    if (!__OFADD__(a2, 3))
    {
      v25 = v23;
      v41 = v24;
      v42 = v9;
      sub_100083B64(result, a1, v14);
      if ((*(v16 + 48))(v14, 1, v15) == 1)
      {

        v26 = &qword_1019F6990;
        v27 = &qword_10146D2F0;
LABEL_8:
        sub_10000CAAC(v14, v26, v27);
        return 0;
      }

      v40 = *(v16 + 32);
      v40(v20, v14, v15);

      v14 = v45;
      sub_1005C6064(v28, a2, v45);
      if ((*(v7 + 48))(v14, 1, v6) == 1)
      {
        (*(v16 + 8))(v20, v15);

        v26 = &qword_101A21D08;
        v27 = &unk_1014B6620;
        goto LABEL_8;
      }

      v29 = v44;
      sub_100025668(v14, v44, type metadata accessor for CRLAssetReferrerIdentifier);
      result = a2 + 5;
      if (!__OFADD__(a2, 5))
      {
        v30 = sub_100028894(result, a1);
        v32 = v31;

        if ((v32 & 1) == 0)
        {
          v33 = v29;
          v34 = v42;
          sub_100025668(v33, v42, type metadata accessor for CRLAssetReferrerIdentifier);
          v35 = v43;
          v36 = v40;
          v40(v43, v20, v15);
          type metadata accessor for CRLAssetReferenceDatabaseRow(0);
          v37 = swift_allocObject();
          sub_100025668(v34, v37 + OBJC_IVAR____TtC8Freeform28CRLAssetReferenceDatabaseRow_referrerIdentifier, type metadata accessor for CRLAssetReferrerIdentifier);
          v38 = (v37 + OBJC_IVAR____TtC8Freeform28CRLAssetReferenceDatabaseRow_referrerAssetName);
          *v38 = v41;
          v38[1] = v25;
          v36(v37 + OBJC_IVAR____TtC8Freeform28CRLAssetReferenceDatabaseRow_assetUUID, v35, v15);
          result = v37;
          *(v37 + OBJC_IVAR____TtC8Freeform28CRLAssetReferenceDatabaseRow_unsyncedChanges) = v30;
          return result;
        }

        sub_100026028(v29, type metadata accessor for CRLAssetReferrerIdentifier);
        (*(v16 + 8))(v20, v15);
        return 0;
      }

LABEL_19:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  return 0;
}

void *sub_100E938DC(unint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t *, uint64_t, uint64_t))
{
  v17 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
LABEL_18:
    v6 = _CocoaArrayWrapper.endIndex.getter();
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_3:
      v7 = 0;
      v8 = _swiftEmptyArrayStorage;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v10 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
LABEL_15:
            __break(1u);
LABEL_16:

            return v8;
          }
        }

        else
        {
          if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_18;
          }

          v9 = *(a1 + 8 * v7 + 32);

          v10 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_15;
          }
        }

        v16 = v9;
        a4(&v15, &v16, a2, a3);
        if (v4)
        {
          goto LABEL_16;
        }

        if (v15)
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v8 = v17;
        }

        ++v7;
        if (v10 == v6)
        {
          return v8;
        }
      }
    }
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_100E93A84(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  result = Set.init(minimumCapacity:)();
  v17 = result;
  if (v9)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v5, v14, v2);
      sub_100E6AF38(v8, v5);
      (*(v11 - 8))(v8, v2);
      v14 += v15;
      --v9;
    }

    while (v9);
    return v17;
  }

  return result;
}

uint64_t sub_100E93C20(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  while (1)
  {
    type metadata accessor for CRLBoardItem(0);
    sub_1000066D0(&qword_1019FCB80, type metadata accessor for CRLBoardItem, &protocol conformance descriptor for NSObject);
    result = Set.init(minimumCapacity:)();
    v9 = result;
    if (i)
    {
      break;
    }

    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }

LABEL_6:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v6 = *(a1 + 8 * i + 32);
      }

      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_100E72958(&v8, v6, type metadata accessor for CRLBoardItem, &qword_1019F37D8, &qword_1014C5ED0, type metadata accessor for CRLBoardItem);

      if (v7 == v4)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    _CocoaArrayWrapper.endIndex.getter();
  }

  v5 = result;
  v4 = _CocoaArrayWrapper.endIndex.getter();
  result = v5;
  if (v4)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_100E93DC8(unint64_t a1)
{
  v2 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  while (1)
  {
    sub_100006370(0, &qword_1019FB7A0, off_10182F798);
    sub_10000FDE0(&qword_1019F5048, &qword_1019FB7A0, off_10182F798, &protocol conformance descriptor for NSObject);
    result = Set.init(minimumCapacity:)();
    v10 = result;
    if (v2)
    {
      break;
    }

    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }

LABEL_6:
    v6 = 0;
    v2 = off_10182F798;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      sub_100E7227C(&v9, v7, &qword_1019FB7A0, off_10182F798, &unk_1019F3720, &qword_101468B00);

      ++v6;
      if (v8 == v4)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    _CocoaArrayWrapper.endIndex.getter();
  }

  v5 = result;
  v4 = _CocoaArrayWrapper.endIndex.getter();
  result = v5;
  if (v4)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_100E93F68(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_100EA2F30();
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = a1 + 32;
    do
    {
      sub_10063FD8C(v4, v5);
      sub_100E6CD34(v6, v5);
      sub_10063FDE8(v6);
      v4 += 48;
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_100E93FF4(uint64_t a1)
{
  v2 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v13 - v7;
  v9 = *(a1 + 16);
  sub_1000066D0(&qword_1019F66A0, type metadata accessor for CRLBoardLibraryViewModel.Item, aY_45);
  result = Set.init(minimumCapacity:)();
  v14 = result;
  if (v9)
  {
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);
    do
    {
      sub_10000C83C(v11, v5, type metadata accessor for CRLBoardLibraryViewModel.Item);
      sub_100E6DFC0(v8, v5);
      sub_100026028(v8, type metadata accessor for CRLBoardLibraryViewModel.Item);
      v11 += v12;
      --v9;
    }

    while (v9);
    return v14;
  }

  return result;
}

uint64_t sub_100E94184(uint64_t a1)
{
  v2 = type metadata accessor for CRLPreviewImages.Item(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v13 - v7;
  v9 = *(a1 + 16);
  sub_1000066D0(&qword_1019FAA38, type metadata accessor for CRLPreviewImages.Item, byte_101473398);
  result = Set.init(minimumCapacity:)();
  v14 = result;
  if (v9)
  {
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);
    do
    {
      sub_10000C83C(v11, v5, type metadata accessor for CRLPreviewImages.Item);
      sub_100E6EC58(v8, v5);
      sub_100026028(v8, type metadata accessor for CRLPreviewImages.Item);
      v11 += v12;
      --v9;
    }

    while (v9);
    return v14;
  }

  return result;
}

uint64_t sub_100E94314(uint64_t a1)
{
  v2 = type metadata accessor for CRLFolderIdentifier(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v13 - v7;
  v9 = *(a1 + 16);
  sub_1000066D0(&qword_101A21C80, type metadata accessor for CRLFolderIdentifier, byte_1014DC54C);
  result = Set.init(minimumCapacity:)();
  v14 = result;
  if (v9)
  {
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);
    do
    {
      sub_10000C83C(v11, v5, type metadata accessor for CRLFolderIdentifier);
      sub_100E70750(v8, v5);
      sub_100026028(v8, type metadata accessor for CRLFolderIdentifier);
      v11 += v12;
      --v9;
    }

    while (v9);
    return v14;
  }

  return result;
}

uint64_t sub_100E944A4(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  while (1)
  {
    type metadata accessor for CRLFreehandDrawingShapeItem(0);
    sub_1000066D0(&qword_101A21DC8, type metadata accessor for CRLFreehandDrawingShapeItem, &protocol conformance descriptor for NSObject);
    result = Set.init(minimumCapacity:)();
    v9 = result;
    if (i)
    {
      break;
    }

    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }

LABEL_6:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v6 = *(a1 + 8 * i + 32);
      }

      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_100E72958(&v8, v6, type metadata accessor for CRLFreehandDrawingShapeItem, &qword_101A21DD0, &qword_1014B6738, type metadata accessor for CRLFreehandDrawingShapeItem);

      if (v7 == v4)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    _CocoaArrayWrapper.endIndex.getter();
  }

  v5 = result;
  v4 = _CocoaArrayWrapper.endIndex.getter();
  result = v5;
  if (v4)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_100E9464C(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  while (1)
  {
    type metadata accessor for CRLiOSMiniFormatterBuilder();
    sub_1000066D0(&qword_101A0E898, type metadata accessor for CRLiOSMiniFormatterBuilder, &protocol conformance descriptor for NSObject);
    result = Set.init(minimumCapacity:)();
    v9 = result;
    if (i)
    {
      break;
    }

    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }

LABEL_6:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v6 = *(a1 + 8 * i + 32);
      }

      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_100E72958(&v8, v6, type metadata accessor for CRLiOSMiniFormatterBuilder, &qword_101A22050, &qword_1014B6B78, type metadata accessor for CRLiOSMiniFormatterBuilder);

      if (v7 == v4)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    _CocoaArrayWrapper.endIndex.getter();
  }

  v5 = result;
  v4 = _CocoaArrayWrapper.endIndex.getter();
  result = v5;
  if (v4)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_100E947F4(uint64_t a1)
{
  v2 = type metadata accessor for CRLBoardIdentifierAndValue(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v13 - v7;
  v9 = *(a1 + 16);
  sub_1000066D0(&qword_101A22060, type metadata accessor for CRLBoardIdentifierAndValue, byte_101481314);
  result = Set.init(minimumCapacity:)();
  v14 = result;
  if (v9)
  {
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);
    do
    {
      sub_10000C83C(v11, v5, type metadata accessor for CRLBoardIdentifierAndValue);
      sub_100E6F088(v8, v5);
      sub_100026028(v8, type metadata accessor for CRLBoardIdentifierAndValue);
      v11 += v12;
      --v9;
    }

    while (v9);
    return v14;
  }

  return result;
}

uint64_t sub_100E94984(unint64_t a1)
{
  v2 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  while (1)
  {
    sub_100006370(0, &qword_1019F69D0, CKRecordZoneID_ptr);
    sub_10000FDE0(&qword_1019F69D8, &qword_1019F69D0, CKRecordZoneID_ptr, &protocol conformance descriptor for NSObject);
    result = Set.init(minimumCapacity:)();
    v10 = result;
    if (v2)
    {
      break;
    }

    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }

LABEL_6:
    v6 = 0;
    v2 = CKRecordZoneID_ptr;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      sub_100E7227C(&v9, v7, &qword_1019F69D0, CKRecordZoneID_ptr, &unk_1019F3540, &unk_1014B6540);

      ++v6;
      if (v8 == v4)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    _CocoaArrayWrapper.endIndex.getter();
  }

  v5 = result;
  v4 = _CocoaArrayWrapper.endIndex.getter();
  result = v5;
  if (v4)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_100E94B24(unint64_t a1)
{
  v2 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  while (1)
  {
    sub_100006370(0, &qword_1019F4D70, NSLayoutConstraint_ptr);
    sub_10000FDE0(&qword_1019F69E8, &qword_1019F4D70, NSLayoutConstraint_ptr, &protocol conformance descriptor for NSObject);
    result = Set.init(minimumCapacity:)();
    v10 = result;
    if (v2)
    {
      break;
    }

    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }

LABEL_6:
    v6 = 0;
    v2 = NSLayoutConstraint_ptr;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      sub_100E7227C(&v9, v7, &qword_1019F4D70, NSLayoutConstraint_ptr, &qword_101A22000, &unk_1014B6AF0);

      ++v6;
      if (v8 == v4)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    _CocoaArrayWrapper.endIndex.getter();
  }

  v5 = result;
  v4 = _CocoaArrayWrapper.endIndex.getter();
  result = v5;
  if (v4)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_100E94CC4(uint64_t a1)
{
  v2 = type metadata accessor for UTType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  sub_1000066D0(&unk_101A22910, &type metadata accessor for UTType, &protocol conformance descriptor for UTType);
  result = Set.init(minimumCapacity:)();
  v17 = result;
  if (v9)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v5, v14, v2);
      sub_100E715B0(v8, v5);
      (*(v11 - 8))(v8, v2);
      v14 += v15;
      --v9;
    }

    while (v9);
    return v17;
  }

  return result;
}

uint64_t sub_100E94E60(uint64_t a1)
{
  v2 = type metadata accessor for CRLSELibraryViewModel.Item(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v13 - v7;
  v9 = *(a1 + 16);
  sub_1000066D0(&qword_101A21FE8, type metadata accessor for CRLSELibraryViewModel.Item, byte_10147D6B0);
  result = Set.init(minimumCapacity:)();
  v14 = result;
  if (v9)
  {
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);
    do
    {
      sub_10000C83C(v11, v5, type metadata accessor for CRLSELibraryViewModel.Item);
      sub_100E71890(v8, v5);
      sub_100026028(v8, type metadata accessor for CRLSELibraryViewModel.Item);
      v11 += v12;
      --v9;
    }

    while (v9);
    return v14;
  }

  return result;
}

uint64_t sub_100E94FF0(int8x16_t *a1)
{
  v2 = a1[1].i64[0];
  sub_100068328();
  result = Set.init(minimumCapacity:)();
  v12 = result;
  if (v2)
  {
    v4 = a1 + 2;
    do
    {
      v5 = v4[1];
      v13[0] = *v4;
      v13[1] = v5;
      v13[2] = v4[2];
      v14 = v4[3].i8[0];
      sub_1000693DC(v13, &v6);
      sub_100E6CEB8(&v6, v13);
      sub_1000771BC(v6.i64[0], v6.i64[1], v7, v8, v9, v10, v11);
      v4 = (v4 + 56);
      --v2;
    }

    while (v2);
    return v12;
  }

  return result;
}

uint64_t sub_100E950A0(uint64_t a1)
{
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  sub_1000066D0(&unk_101A23C60, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
  result = Set.init(minimumCapacity:)();
  v17 = result;
  if (v9)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v5, v14, v2);
      sub_100E724F0(v8, v5);
      (*(v11 - 8))(v8, v2);
      v14 += v15;
      --v9;
    }

    while (v9);
    return v17;
  }

  return result;
}

uint64_t sub_100E9523C(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  while (1)
  {
    type metadata accessor for CRLSceneInfo(0);
    sub_1000066D0(&qword_101A28670, type metadata accessor for CRLSceneInfo, &protocol conformance descriptor for NSObject);
    result = Set.init(minimumCapacity:)();
    v9 = result;
    if (i)
    {
      break;
    }

    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }

LABEL_6:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v6 = *(a1 + 8 * i + 32);
      }

      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_100E72958(&v8, v6, type metadata accessor for CRLSceneInfo, &qword_1019F3688, &unk_1014B6860, type metadata accessor for CRLSceneInfo);

      if (v7 == v4)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    _CocoaArrayWrapper.endIndex.getter();
  }

  v5 = result;
  v4 = _CocoaArrayWrapper.endIndex.getter();
  result = v5;
  if (v4)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_100E953E4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = a1 + 32;
    do
    {
      sub_100064110(v4, v5);
      sub_100E7280C(v6, v5);
      sub_100064234(v6);
      v4 += 40;
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_100E95470(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  while (1)
  {
    type metadata accessor for CRLCollaborationParticipant(0);
    sub_1000066D0(&qword_101A00E38, type metadata accessor for CRLCollaborationParticipant, &protocol conformance descriptor for NSObject);
    result = Set.init(minimumCapacity:)();
    v9 = result;
    if (i)
    {
      break;
    }

    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }

LABEL_6:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v6 = *(a1 + 8 * i + 32);
      }

      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_100E72958(&v8, v6, type metadata accessor for CRLCollaborationParticipant, &qword_101A21E50, &qword_1014B6808, type metadata accessor for CRLCollaborationParticipant);

      if (v7 == v4)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    _CocoaArrayWrapper.endIndex.getter();
  }

  v5 = result;
  v4 = _CocoaArrayWrapper.endIndex.getter();
  result = v5;
  if (v4)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_100E95618(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  while (1)
  {
    type metadata accessor for CRLShapeItem(0);
    sub_1000066D0(&qword_101A21DB8, type metadata accessor for CRLShapeItem, &protocol conformance descriptor for NSObject);
    result = Set.init(minimumCapacity:)();
    v9 = result;
    if (i)
    {
      break;
    }

    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }

LABEL_6:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v6 = *(a1 + 8 * i + 32);
      }

      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_100E72958(&v8, v6, type metadata accessor for CRLShapeItem, &qword_101A21DC0, &qword_1014B6730, type metadata accessor for CRLShapeItem);

      if (v7 == v4)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    _CocoaArrayWrapper.endIndex.getter();
  }

  v5 = result;
  v4 = _CocoaArrayWrapper.endIndex.getter();
  result = v5;
  if (v4)
  {
    goto LABEL_6;
  }

  return result;
}

void sub_100E957C0(unint64_t a1, uint64_t *a2, char *a3)
{
  v7 = sub_1005B981C(&qword_101A0B040, &unk_101478840);
  __chkstk_darwin(v7 - 8);
  v91 = &v67 - v8;
  v89 = sub_1005B981C(&qword_1019FBED8, &unk_10148AB60);
  v69 = *(v89 - 8);
  __chkstk_darwin(v89);
  v71 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v70 = &v67 - v11;
  v12 = sub_1005B981C(&qword_101A0EF20, &unk_1014B6710);
  v87 = *(v12 - 8);
  v88 = v12;
  __chkstk_darwin(v12);
  isUniquelyReferenced_nonNull_native = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = (&v67 - v16);
  v95 = type metadata accessor for UUID();
  v72 = *(v95 - 8);
  __chkstk_darwin(v95);
  v96 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v3;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v20 = 0;
    v80 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManagerLock;
    v21 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager;
    v85 = a1 & 0xFFFFFFFFFFFFFF8;
    v86 = a1 & 0xC000000000000001;
    v93 = (v72 + 16);
    v79 = (v69 + 56);
    v78 = (v69 + 48);
    v74 = (v72 + 8);
    v84 = a3;
    v82 = isUniquelyReferenced_nonNull_native;
    v75 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager;
    v83 = a2;
    v77 = a1;
    v81 = v17;
    v76 = i;
    while (v86)
    {
      v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        goto LABEL_40;
      }

LABEL_9:
      v94 = v23;
      v24 = OBJC_IVAR____TtC8Freeform19CRLAssetDatabaseRow_assetUUID;
      v92 = *v93;
      v92(v96, v22 + OBJC_IVAR____TtC8Freeform19CRLAssetDatabaseRow_assetUUID, v95);
      *v17 = v22;
      v25 = *&a3[v80];
      v26 = *(v25 + 16);

      os_unfair_lock_lock(v26);
      v27 = *&a3[v21];
      if (v27)
      {
        v28 = *&a3[v21];
      }

      else
      {
        v29 = objc_allocWithZone(type metadata accessor for CRLAssetFileManager(0));
        v30 = a3;
        v31 = sub_10001F1A0(v30);

        v32 = *&a3[v21];
        *&a3[v21] = v31;
        v28 = v31;

        v27 = 0;
      }

      v33 = *(v25 + 16);
      v34 = v27;
      os_unfair_lock_unlock(v33);
      v35 = *(v22 + OBJC_IVAR____TtC8Freeform19CRLAssetDatabaseRow_fileExtension + 8);
      v90 = *(v22 + OBJC_IVAR____TtC8Freeform19CRLAssetDatabaseRow_fileExtension);
      v36 = *&v28[OBJC_IVAR____TtC8Freeform19CRLAssetFileManager_lock];
      os_unfair_lock_lock(*(v36 + 16));
      v37 = OBJC_IVAR____TtC8Freeform19CRLAssetFileManager_assetFileURLCache;
      swift_beginAccess();
      v38 = *&v28[v37];
      if (*(v38 + 16))
      {

        v39 = sub_10003E994(v22 + v24);
        if (v40)
        {
          sub_10000BE14(*(v38 + 56) + *(v69 + 72) * v39, v91, &qword_1019FBED8, &unk_10148AB60);
          v41 = 0;
        }

        else
        {
          v41 = 1;
        }
      }

      else
      {
        v41 = 1;
      }

      v42 = v91;
      v43 = v41;
      v44 = v89;
      (*v79)(v91, v43, 1, v89);
      v45 = *(v88 + 48);
      os_unfair_lock_unlock(*(v36 + 16));
      if ((*v78)(v42, 1, v44) == 1)
      {
        v73 = v45;
        sub_10000CAAC(v42, &qword_101A0B040, &unk_101478840);
        UUID.uuidString.getter();
        if (v35)
        {
          v46 = HIBYTE(v35) & 0xF;
          if ((v35 & 0x2000000000000000) == 0)
          {
            v46 = v90 & 0xFFFFFFFFFFFFLL;
          }

          if (v46)
          {
            v47 = String._bridgeToObjectiveC()();
            v48 = String._bridgeToObjectiveC()();
            v49 = [v47 stringByAppendingPathExtension:v48];

            if (v49)
            {

              static String._unconditionallyBridgeFromObjectiveC(_:)();
            }
          }
        }

        a2 = v83;
        a3 = v84;
        v50 = v81;
        URL.appendingPathComponent(_:)();

        v17 = v50;
      }

      else
      {

        v51 = v70;
        sub_10003DFF8(v42, v70, &qword_1019FBED8, &unk_10148AB60);
        v52 = v51;
        v53 = v71;
        sub_10003DFF8(v52, v71, &qword_1019FBED8, &unk_10148AB60);
        v54 = type metadata accessor for URL();
        v17 = v81;
        (*(*(v54 - 8) + 32))(v81 + v45, v53, v54);
        a2 = v83;
        a3 = v84;
      }

      v55 = v82;
      sub_10003DFF8(v17, v82, &qword_101A0EF20, &unk_1014B6710);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v97 = *a2;
      a1 = v97;
      v56 = sub_10003E994(v96);
      v58 = *(a1 + 16);
      v59 = (v57 & 1) == 0;
      v60 = __OFADD__(v58, v59);
      v61 = v58 + v59;
      if (v60)
      {
        goto LABEL_42;
      }

      v62 = v57;
      if (*(a1 + 24) < v61)
      {
        sub_100A97918(v61, isUniquelyReferenced_nonNull_native);
        v56 = sub_10003E994(v96);
        if ((v62 & 1) != (v63 & 1))
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return;
        }

LABEL_32:
        a1 = v97;
        if (v62)
        {
          goto LABEL_4;
        }

        goto LABEL_33;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_32;
      }

      isUniquelyReferenced_nonNull_native = v56;
      sub_100AAC77C();
      v56 = isUniquelyReferenced_nonNull_native;
      a1 = v97;
      if (v62)
      {
LABEL_4:
        sub_10002C638(v55, *(a1 + 56) + *(v87 + 72) * v56, &qword_101A0EF20, &unk_1014B6710);
        goto LABEL_5;
      }

LABEL_33:
      *(a1 + 8 * (v56 >> 6) + 64) |= 1 << v56;
      v64 = v56;
      v92(*(a1 + 48) + *(v72 + 72) * v56, v96, v95);
      sub_10003DFF8(v55, *(a1 + 56) + *(v87 + 72) * v64, &qword_101A0EF20, &unk_1014B6710);
      v65 = *(a1 + 16);
      v60 = __OFADD__(v65, 1);
      v66 = v65 + 1;
      if (v60)
      {
        goto LABEL_43;
      }

      *(a1 + 16) = v66;
LABEL_5:
      (*v74)(v96, v95);
      *a2 = a1;

      ++v20;
      a1 = v77;
      v21 = v75;
      if (v94 == v76)
      {
        return;
      }
    }

    if (v20 >= *(v85 + 16))
    {
      goto LABEL_41;
    }

    v22 = *(a1 + 8 * v20 + 32);

    v23 = v20 + 1;
    if (!__OFADD__(v20, 1))
    {
      goto LABEL_9;
    }

LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    ;
  }
}

unint64_t sub_100E96070(unint64_t a1, uint64_t a2)
{
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_22:
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v7 = *(a1 + 8 * v6 + 32);
    }

    if (*(v7 + 16) == *(a2 + 16) && *(v7 + 24) == *(a2 + 24))
    {
      break;
    }

    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      return v6;
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_21;
    }
  }

  return v6;
}

unint64_t sub_100E96184(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
LABEL_17:
    v8 = a1 & 0xFFFFFFFFFFFFFF8;
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFFF8;
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  while (1)
  {
    if (v3 == v4)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v4 >= *(v8 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }
    }

    type metadata accessor for UUID();
    sub_1000066D0(&qword_1019F37C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v5 = dispatch thunk of static Equatable.== infix(_:_:)();

    if (v5)
    {
      return v4;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_16;
    }
  }
}

char *sub_100E96300(char *a1, void *a2, unint64_t a3, uint64_t a4, void *a5, char *a6)
{
  v210 = a5;
  v220 = a3;
  v221 = a4;
  v230 = a2;
  v233 = a1;
  ObjectType = swift_getObjectType();
  v7 = type metadata accessor for URL();
  v231 = *(v7 - 8);
  v232 = v7;
  __chkstk_darwin(v7);
  v213 = &v209 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v214 = &v209 - v10;
  v11 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v12 = *(v11 - 8);
  v235 = v11;
  v236 = v12;
  __chkstk_darwin(v11);
  v229 = &v209 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v14);
  v16 = &v209 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v17 - 8);
  v19 = &v209 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  a6[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_hasAttemptedVacuum] = 0;
  v20 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_logCategory;
  if (qword_1019F2258 != -1)
  {
    swift_once();
  }

  v21 = static OS_os_log.boardStore;
  *&a6[v20] = static OS_os_log.boardStore;
  v22 = &a6[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_storeName];
  *v22 = 0x7461446472616F62;
  *(v22 + 1) = 0xE900000000000061;
  v212 = v22;
  v23 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_userDefaults;
  v24 = objc_opt_self();
  v234 = v24;
  v25 = v21;
  *&a6[v23] = [v24 standardUserDefaults];
  *&a6[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_recordIDsToOverwrite] = _swiftEmptySetSingleton;
  *&a6[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_syncHelper] = 0;
  v26 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManagerLock;
  type metadata accessor for CRLUnfairLock();
  v27 = swift_allocObject();
  v28 = swift_slowAlloc();
  *v28 = 0;
  *(v27 + 16) = v28;
  atomic_thread_fence(memory_order_acq_rel);
  *&a6[v26] = v27;
  *&a6[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager] = 0;
  v29 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManagerLock;
  v30 = swift_allocObject();
  v31 = swift_slowAlloc();
  *v31 = 0;
  *(v30 + 16) = v31;
  atomic_thread_fence(memory_order_acq_rel);
  *&a6[v29] = v30;
  *&a6[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager] = 0;
  v32 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetDownloadManagerLock;
  v33 = swift_allocObject();
  v34 = swift_slowAlloc();
  *v34 = 0;
  *(v33 + 16) = v34;
  atomic_thread_fence(memory_order_acq_rel);
  *&a6[v32] = v33;
  *&a6[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetDownloadManager] = 0;
  v237 = a6;
  v219 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_assetUploadTracker;
  v35 = sub_100006370(0, &qword_1019F2D90, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  *&v240 = _swiftEmptyArrayStorage;
  v36 = sub_1000066D0(&qword_101A1DE70, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  v37 = sub_1005B981C(&unk_1019FB800, &unk_10146F020);
  v224 = sub_10001A2F8(&qword_101A1DE80, &unk_1019FB800, &unk_10146F020, &protocol conformance descriptor for [A]);
  v225 = v37;
  v211 = v14;
  v226 = v36;
  v38 = v234;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v39 = *(v236 + 104);
  v223 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v236 += 104;
  v222 = v39;
  v39(v229);
  v227 = v35;
  v40 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  type metadata accessor for CRLAssetUploadTracker();
  v41 = swift_allocObject();
  type metadata accessor for CRLAssetUploadObserverManager();
  v42 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v42 + 112) = [objc_allocWithZone(NSHashTable) initWithOptions:5 capacity:1];
  *(v41 + 16) = v42;
  *(v41 + 24) = _swiftEmptyDictionarySingleton;
  *(v41 + 32) = _swiftEmptyDictionarySingleton;
  *(v41 + 40) = 0;
  *(v41 + 48) = v40;
  *&v219[v237] = v41;
  v43 = v237;
  v44 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_accountUtilities;
  type metadata accessor for CRLAccountUtilities();
  *&v43[v44] = swift_allocObject();
  *&v43[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_transientSyncExclusions] = _swiftEmptyDictionarySingleton;
  v45 = [v38 standardUserDefaults];
  v46 = [v45 objectForKey:@"CRLDeleteBoardCleanupTolerance"];

  if (v46)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v243 = 0u;
    v244 = 0u;
  }

  v240 = v243;
  v241 = v244;
  if (*(&v244 + 1))
  {
    if (swift_dynamicCast())
    {
      v47 = v238;
      goto LABEL_11;
    }
  }

  else
  {
    sub_10000CAAC(&v240, &unk_1019F4D00, &unk_10146E7F0);
  }

  v47 = 0x40AC200000000000;
LABEL_11:
  *&v43[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__deletedBoardsCleanupTolerance] = v47;
  *&v43[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_deletedBoardsCleanupWorkItem] = 0;
  v48 = [v38 standardUserDefaults];
  v49 = [v48 objectForKey:@"CRLDeletedBoardTTL"];

  if (v49)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v243 = 0u;
    v244 = 0u;
  }

  v240 = v243;
  v241 = v244;
  v228 = v19;
  v209 = v16;
  if (*(&v244 + 1))
  {
    if (swift_dynamicCast())
    {
      v50 = v238;
      goto LABEL_19;
    }
  }

  else
  {
    sub_10000CAAC(&v240, &unk_1019F4D00, &unk_10146E7F0);
  }

  v50 = 0x4143C68000000000;
LABEL_19:
  *&v43[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__deletedBoardTTL] = v50;
  v219 = &v43[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_foldersTableCreationSQLQuery];
  *&v240 = 0;
  *(&v240 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(241);
  v51._object = 0x80000001015A8F20;
  v51._countAndFlagsBits = 0xD000000000000011;
  v216 = 0xD000000000000011;
  v217 = "rm.assetUploadTracker";
  String.append(_:)(v51);
  v52._countAndFlagsBits = 0x737265646C6F66;
  v52._object = 0xE700000000000000;
  String.append(_:)(v52);
  v53._countAndFlagsBits = 0x202020202820;
  v53._object = 0xE600000000000000;
  String.append(_:)(v53);
  v54._countAndFlagsBits = 0x696669746E656469;
  v54._object = 0xEA00000000007265;
  String.append(_:)(v54);
  v218 = "    CREATE TABLE ";
  v55._countAndFlagsBits = 0xD000000000000020;
  v55._object = 0x80000001015A8F40;
  String.append(_:)(v55);
  v56._countAndFlagsBits = 1635017060;
  v56._object = 0xE400000000000000;
  String.append(_:)(v56);
  v234 = "Y NOT NULL,     ";
  v57._object = 0x80000001015A8F70;
  v57._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v57);
  v58._countAndFlagsBits = 0x5F65726168736B63;
  v58._object = 0xEC00000061746164;
  String.append(_:)(v58);
  v59._countAndFlagsBits = 0x20202C424F4C4220;
  v59._object = 0xEB00000000202020;
  String.append(_:)(v59);
  v60._object = 0x80000001015A3BE0;
  v60._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v60);
  v61._countAndFlagsBits = 0x20202C424F4C4220;
  v61._object = 0xEB00000000202020;
  String.append(_:)(v61);
  v62._object = 0x80000001015A3590;
  v62._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v62);
  v63._countAndFlagsBits = 0xD00000000000001ALL;
  v63._object = 0x80000001015A8F90;
  String.append(_:)(v63);
  *&v243 = 0x4000000000000;
  v64._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v64);

  v65._countAndFlagsBits = 0x20202020202CLL;
  v65._object = 0xE600000000000000;
  String.append(_:)(v65);
  v66._countAndFlagsBits = 0xD00000000000002DLL;
  v66._object = 0x80000001015A3760;
  String.append(_:)(v66);
  v67._countAndFlagsBits = 0xD00000000000001ALL;
  v67._object = 0x80000001015A8F90;
  String.append(_:)(v67);
  *&v243 = 0x4000000000000;
  v68._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v68);

  v69._countAndFlagsBits = 0x20202020202CLL;
  v69._object = 0xE600000000000000;
  String.append(_:)(v69);
  v70._countAndFlagsBits = 0xD000000000000026;
  v70._object = 0x80000001015A33F0;
  String.append(_:)(v70);
  v71._countAndFlagsBits = 0xD00000000000001ALL;
  v71._object = 0x80000001015A8F90;
  String.append(_:)(v71);
  *&v243 = 0x4000000000000;
  v72._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v72);

  v73._countAndFlagsBits = 0x20202020202CLL;
  v73._object = 0xE600000000000000;
  String.append(_:)(v73);
  v74._countAndFlagsBits = 0x656C746974;
  v74._object = 0xE500000000000000;
  String.append(_:)(v74);
  v75._countAndFlagsBits = 0x20202C5458455420;
  v75._object = 0xEB00000000202020;
  String.append(_:)(v75);
  v76._countAndFlagsBits = 0xD000000000000012;
  v76._object = 0x80000001015A3810;
  String.append(_:)(v76);
  v77._countAndFlagsBits = 0x2020204C41455220;
  v77._object = 0xEB00000000292020;
  String.append(_:)(v77);
  v78 = *(&v240 + 1);
  v79 = v219;
  *v219 = v240;
  *(v79 + 1) = v78;
  v80 = &v237[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_foldersMetadataTableCreationSQLQuery];
  *&v240 = 0;
  *(&v240 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(158);
  v82 = v216;
  v81 = v217;
  v83._object = (v217 | 0x8000000000000000);
  v83._countAndFlagsBits = v216;
  String.append(_:)(v83);
  v84._countAndFlagsBits = 0xD000000000000010;
  v219 = 0xD000000000000010;
  v84._object = 0x80000001015A30F0;
  String.append(_:)(v84);
  v85._countAndFlagsBits = 0x202020202820;
  v85._object = 0xE600000000000000;
  String.append(_:)(v85);
  v86._countAndFlagsBits = 0x696669746E656469;
  v86._object = 0xEA00000000007265;
  String.append(_:)(v86);
  v87._countAndFlagsBits = 0xD00000000000002ALL;
  v87._object = 0x80000001015A8FB0;
  String.append(_:)(v87);
  v88._countAndFlagsBits = 0x737265646C6F66;
  v88._object = 0xE700000000000000;
  String.append(_:)(v88);
  v89._countAndFlagsBits = 10272;
  v89._object = 0xE200000000000000;
  String.append(_:)(v89);
  v90._countAndFlagsBits = 0x696669746E656469;
  v90._object = 0xEA00000000007265;
  String.append(_:)(v90);
  v91._countAndFlagsBits = 0xD000000000000019;
  v91._object = 0x80000001015A8FE0;
  String.append(_:)(v91);
  v92._countAndFlagsBits = 1635017060;
  v92._object = 0xE400000000000000;
  String.append(_:)(v92);
  v93 = v234;
  v94._object = (v234 | 0x8000000000000000);
  v94._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v94);
  v95._countAndFlagsBits = 0xD000000000000026;
  v95._object = 0x80000001015A33F0;
  String.append(_:)(v95);
  v96._countAndFlagsBits = 0xD00000000000001ALL;
  v96._object = 0x80000001015A8F90;
  String.append(_:)(v96);
  *&v243 = 0x4000000000000;
  v97._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v97);

  v98._countAndFlagsBits = 0x292020202020;
  v98._object = 0xE600000000000000;
  String.append(_:)(v98);
  v99 = *(&v240 + 1);
  *v80 = v240;
  *(v80 + 1) = v99;
  v100 = &v237[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_ckRecordCacheTableCreationSQLQuery];
  *&v240 = 0;
  *(&v240 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(103);
  v101._object = (v81 | 0x8000000000000000);
  v101._countAndFlagsBits = v82;
  String.append(_:)(v101);
  v102._countAndFlagsBits = 0x64726F6365726B63;
  v102._object = 0xEE0065686361635FLL;
  String.append(_:)(v102);
  v103._countAndFlagsBits = 0x202020202820;
  v103._object = 0xE600000000000000;
  String.append(_:)(v103);
  v104._countAndFlagsBits = 0x695F64726F636572;
  v104._object = 0xE900000000000064;
  String.append(_:)(v104);
  v105._countAndFlagsBits = 0xD000000000000020;
  v106 = v218;
  v105._object = (v218 | 0x8000000000000000);
  String.append(_:)(v105);
  v107._countAndFlagsBits = 0x64695F656E6F7ALL;
  v107._object = 0xE700000000000000;
  String.append(_:)(v107);
  v108._object = (v93 | 0x8000000000000000);
  v108._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v108);
  v109._countAndFlagsBits = 0x64726F636572;
  v109._object = 0xE600000000000000;
  String.append(_:)(v109);
  v110._object = 0x80000001015A9000;
  v110._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v110);
  v111 = *(&v240 + 1);
  *v100 = v240;
  *(v100 + 1) = v111;
  v112 = &v237[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_ckZoneCacheTableCreationSQLQuery];
  *&v240 = 0;
  *(&v240 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(107);
  v113._object = (v81 | 0x8000000000000000);
  v113._countAndFlagsBits = v82;
  String.append(_:)(v113);
  v114._countAndFlagsBits = 0x635F656E6F7A6B63;
  v114._object = 0xEC00000065686361;
  String.append(_:)(v114);
  v115._countAndFlagsBits = 0x202020202820;
  v115._object = 0xE600000000000000;
  String.append(_:)(v115);
  v116._countAndFlagsBits = 0x64695F656E6F7ALL;
  v116._object = 0xE700000000000000;
  String.append(_:)(v116);
  v117._countAndFlagsBits = 0xD000000000000020;
  v117._object = (v106 | 0x8000000000000000);
  String.append(_:)(v117);
  v118._countAndFlagsBits = 0x646574656C6564;
  v118._object = 0xE700000000000000;
  String.append(_:)(v118);
  v119._countAndFlagsBits = 0x52454745544E4920;
  v119._object = 0xEE0020202020202CLL;
  String.append(_:)(v119);
  v120._countAndFlagsBits = 0x646567727570;
  v120._object = 0xE600000000000000;
  String.append(_:)(v120);
  v121._countAndFlagsBits = 0x52454745544E4920;
  v121._object = 0xEE0020202020202CLL;
  String.append(_:)(v121);
  v122._countAndFlagsBits = 0xD000000000000028;
  v122._object = 0x80000001015A87B0;
  String.append(_:)(v122);
  v123._object = 0xEE00292020202020;
  v123._countAndFlagsBits = 0x52454745544E4920;
  String.append(_:)(v123);
  v124 = *(&v240 + 1);
  *v112 = v240;
  *(v112 + 1) = v124;
  v125 = &v237[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_purgedCKRecordCacheTableCreationSQLQuery];
  *&v240 = 0;
  *(&v240 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(103);
  v126._object = (v81 | 0x8000000000000000);
  v126._countAndFlagsBits = v82;
  String.append(_:)(v126);
  v127._countAndFlagsBits = 0xD000000000000015;
  v127._object = 0x80000001015A3110;
  String.append(_:)(v127);
  v128._countAndFlagsBits = 0x202020202820;
  v128._object = 0xE600000000000000;
  String.append(_:)(v128);
  v129._countAndFlagsBits = 0x695F64726F636572;
  v129._object = 0xE900000000000064;
  String.append(_:)(v129);
  v130._countAndFlagsBits = 0xD000000000000020;
  v130._object = (v106 | 0x8000000000000000);
  String.append(_:)(v130);
  v131._countAndFlagsBits = 0x64695F656E6F7ALL;
  v131._object = 0xE700000000000000;
  String.append(_:)(v131);
  v132._object = (v234 | 0x8000000000000000);
  v132._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v132);
  v133._countAndFlagsBits = 0x745F64726F636572;
  v133._object = 0xEB00000000657079;
  String.append(_:)(v133);
  v134._object = 0x80000001015A9020;
  v134._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v134);
  v135 = *(&v240 + 1);
  *v125 = v240;
  *(v125 + 1) = v135;
  v136 = &v237[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_ckRecordCacheZoneIdIndexSQLQuery];
  *v136 = 0xD00000000000004FLL;
  *(v136 + 1) = 0x80000001015A9040;
  v137 = &v237[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_purgedCKRecordCacheZoneIdIndexSQLQuery];
  *v137 = 0xD00000000000005DLL;
  *(v137 + 1) = 0x80000001015A9090;
  v138 = &v237[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_lastUpgradedVersionPerBoardMigrationQuery];
  *&v240 = 0;
  *(&v240 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(60);
  v139._object = 0x80000001015A90F0;
  v140 = v219;
  v139._countAndFlagsBits = v219;
  String.append(_:)(v139);
  v141._countAndFlagsBits = 0x736472616F62;
  v141._object = 0xE600000000000000;
  String.append(_:)(v141);
  v142._countAndFlagsBits = 0x4C4F432044444120;
  v142._object = 0xEC000000204E4D55;
  String.append(_:)(v142);
  v143._countAndFlagsBits = 0xD000000000000015;
  v143._object = 0x80000001015A3830;
  String.append(_:)(v143);
  v144._countAndFlagsBits = 0xD00000000000001CLL;
  v144._object = 0x80000001015A9110;
  String.append(_:)(v144);
  v145 = *(&v240 + 1);
  *v138 = v240;
  *(v138 + 1) = v145;
  v146 = &v237[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_lastCloudKitFetchVersionBoardMigrationQuery];
  *&v240 = 0;
  *(&v240 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(63);
  v147._object = 0x80000001015A90F0;
  v147._countAndFlagsBits = v140;
  String.append(_:)(v147);
  v148._countAndFlagsBits = 0x736472616F62;
  v148._object = 0xE600000000000000;
  String.append(_:)(v148);
  v149._countAndFlagsBits = 0x4C4F432044444120;
  v149._object = 0xEC000000204E4D55;
  String.append(_:)(v149);
  v150._countAndFlagsBits = 0xD00000000000001BLL;
  v150._object = 0x80000001015A3790;
  String.append(_:)(v150);
  v151._countAndFlagsBits = 0xD00000000000001FLL;
  v151._object = 0x80000001015A9130;
  String.append(_:)(v151);
  v152 = *(&v240 + 1);
  *v146 = v240;
  *(v146 + 1) = v152;
  v153 = &v237[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_lastCloudKitFetchVersionBoardItemMigrationQuery];
  *&v240 = 0;
  *(&v240 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(63);
  v154._object = 0x80000001015A90F0;
  v154._countAndFlagsBits = v140;
  String.append(_:)(v154);
  v155._countAndFlagsBits = 0x74695F6472616F62;
  v155._object = 0xEB00000000736D65;
  String.append(_:)(v155);
  v156._countAndFlagsBits = 0x4C4F432044444120;
  v156._object = 0xEC000000204E4D55;
  String.append(_:)(v156);
  v157._countAndFlagsBits = 0xD00000000000001BLL;
  v157._object = 0x80000001015A3790;
  String.append(_:)(v157);
  v158._countAndFlagsBits = 0xD00000000000001FLL;
  v158._object = 0x80000001015A9130;
  String.append(_:)(v158);
  v159 = *(&v240 + 1);
  *v153 = v240;
  *(v153 + 1) = v159;
  v160 = &v237[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_lastCloudKitFetchVersionFreehandItemMigrationQuery];
  *&v240 = 0;
  *(&v240 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(63);
  v161._object = 0x80000001015A90F0;
  v161._countAndFlagsBits = v140;
  String.append(_:)(v161);
  v162._countAndFlagsBits = 0xD000000000000018;
  v162._object = 0x80000001015A31A0;
  String.append(_:)(v162);
  v163._countAndFlagsBits = 0x4C4F432044444120;
  v163._object = 0xEC000000204E4D55;
  String.append(_:)(v163);
  v164._countAndFlagsBits = 0xD00000000000001BLL;
  v164._object = 0x80000001015A3790;
  String.append(_:)(v164);
  v165._countAndFlagsBits = 0xD00000000000001FLL;
  v165._object = 0x80000001015A9130;
  String.append(_:)(v165);
  v166 = *(&v240 + 1);
  *v160 = v240;
  *(v160 + 1) = v166;
  v167 = &v237[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_addBoardItemSubItemTypeMigrationQuery];
  *&v240 = 0;
  *(&v240 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(51);
  v168._object = 0x80000001015A90F0;
  v168._countAndFlagsBits = v140;
  String.append(_:)(v168);
  v169._countAndFlagsBits = 0x74695F6472616F62;
  v169._object = 0xEB00000000736D65;
  v170 = v237;
  String.append(_:)(v169);
  v171._countAndFlagsBits = 0x4C4F432044444120;
  v171._object = 0xEC000000204E4D55;
  String.append(_:)(v171);
  v172._countAndFlagsBits = 0x6D6574695F627573;
  v172._object = 0xED0000657079745FLL;
  String.append(_:)(v172);
  v173._countAndFlagsBits = 0xD000000000000013;
  v173._object = 0x80000001015A9150;
  String.append(_:)(v173);
  v174 = *(&v240 + 1);
  *v167 = v240;
  *(v167 + 1) = v174;
  v175 = &v170[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_addBoardItemCapsuleDataMigrationQuery];
  *v175 = 0xD000000000000039;
  *(v175 + 1) = 0x80000001015A9170;
  v176 = &v170[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_addBoardItemCKMergeableRecordValueMigrationQuery];
  *v176 = 0xD000000000000046;
  *(v176 + 1) = 0x80000001015A91B0;
  v177 = *(v231 + 16);
  v234 = v231 + 16;
  v219 = v177;
  (v177)(&v170[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_dataDirectory], v233, v232);
  v178 = v230;
  *&v170[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_temporaryDirectory] = v230;
  *&v170[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_lastFetchResultsTime] = 0;
  v179 = v178;
  v180 = sub_1006183CC(v220, v221);

  *&v170[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_sideStore] = v180;
  v181 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue;
  v182 = v210;
  *&v170[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue] = v210;
  v183 = v182;
  *&v240 = OS_dispatch_queue.label.getter();
  *(&v240 + 1) = v184;
  v185._countAndFlagsBits = 0x646165722ELL;
  v185._object = 0xE500000000000000;
  String.append(_:)(v185);
  v221 = v240;
  v186 = *&v170[v181];
  static DispatchQoS.unspecified.getter();
  *&v240 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v187 = v229;
  v222(v229, v223, v235);
  *&v170[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_readQueue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v188 = *&v170[v181];
  v189 = OS_dispatch_queue.label.getter();
  v191 = v190;

  *&v240 = v189;
  *(&v240 + 1) = v191;
  v192._countAndFlagsBits = 0x65746972772ELL;
  v192._object = 0xE600000000000000;
  String.append(_:)(v192);
  v221 = v181;
  v193 = *&v170[v181];
  static DispatchQoS.unspecified.getter();
  *&v240 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v222(v187, v223, v235);
  *&v170[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  if (v230)
  {
    v194 = v232;
    v195 = v233;
    v196 = v214;
    v197 = v219;
    if (qword_1019F17C0 != -1)
    {
      swift_once();
    }

    v198 = sub_1005EB3DC(v194, qword_101AD69B8);
    (v197)(v196, v198, v194);
  }

  else
  {
    v196 = v214;
    v195 = v233;
    URL.appendingPathComponent(_:)();
    v194 = v232;
    v197 = v219;
  }

  v199 = v213;
  v200 = *v212;
  v201 = v212[1];
  (v197)(v213, v196, v194);
  v202 = v237;
  v203 = *&v237[v221];
  type metadata accessor for SQLiteDatabase(0);
  swift_allocObject();

  *&v202[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_database] = sub_10089ABDC(v200, v201, v199, v203);
  type metadata accessor for CRContext();
  v242 = 0;
  v240 = 0u;
  v241 = 0u;
  v204 = static CRContext.newTransientContext(uniqueAssetManager:encryptionDelegate:)();
  sub_10000CAAC(&v240, &qword_101A07B90, &unk_101493B40);
  *&v202[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_crdtContext] = v204;
  v205 = [objc_opt_self() mainBundle];
  v206 = *(v231 + 8);
  v206(v196, v194);
  *&v202[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_assetBundle] = v205;
  v239.receiver = v202;
  v239.super_class = ObjectType;
  v207 = objc_msgSendSuper2(&v239, "init");
  v206(v195, v194);
  return v207;
}

char *sub_100E980B4(char *a1)
{
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v30 = *(v3 - 8);
  __chkstk_darwin(v3);
  v29 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v27);
  v28 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for URL();
  __chkstk_darwin(v7 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_allocWithZone(CRLTemporaryDirectory);
  v11 = String._bridgeToObjectiveC()();
  v31 = 0;
  v12 = [v10 initWithSignature:v11 error:&v31];

  v13 = v31;
  if (v12)
  {
    v14 = [v12 URL];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v25 = v12;
    v31 = OS_dispatch_queue.label.getter();
    v32 = v15;
    v16._countAndFlagsBits = 0x656469732ELL;
    v16._object = 0xE500000000000000;
    String.append(_:)(v16);
    v23 = v32;
    v24 = v31;
    v22 = sub_100006370(0, &qword_1019F2D90, OS_dispatch_queue_ptr);
    v26 = v1;
    static DispatchQoS.unspecified.getter();
    v31 = _swiftEmptyArrayStorage;
    sub_1000066D0(&qword_101A1DE70, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
    sub_1005B981C(&unk_1019FB800, &unk_10146F020);
    sub_10001A2F8(&qword_101A1DE80, &unk_1019FB800, &unk_10146F020, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v30 + 104))(v29, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v3);
    v17 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v18 = objc_allocWithZone(type metadata accessor for CRLBoardDataStore(0));
    a1 = sub_100E96300(v9, v12, v24, v23, v17, v18);
    v19 = v25;
  }

  else
  {
    v20 = v13;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return a1;
}

uint64_t sub_100E984CC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v7 = *a1;
  v8 = sub_100E96070(*a1, a2);
  v10 = v8;
  if (v3)
  {
    return v10;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v21 = a3;
  v11 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v7 >> 62)
    {
      if (v11 == _CocoaArrayWrapper.endIndex.getter())
      {
        return v10;
      }
    }

    else if (v11 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v10;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_16;
    }

    if ((v11 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v11 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_46;
    }

    v13 = *(v7 + 8 * v11 + 32);

LABEL_16:
    if (*(v13 + 16) == *(a2 + 16) && *(v13 + 24) == *(a2 + 24))
    {
LABEL_8:
    }

    else
    {
      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v14 & 1) == 0)
      {
        if (v10 != v11)
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if ((v10 & 0x8000000000000000) != 0)
            {
              goto LABEL_50;
            }

            v17 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v10 >= v17)
            {
              goto LABEL_51;
            }

            if (v11 >= v17)
            {
              goto LABEL_52;
            }

            v15 = *(v7 + 32 + 8 * v10);
            v16 = *(v7 + 32 + 8 * v11);
          }

          if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
          {
            v7 = v21(v7);
            v18 = (v7 >> 62) & 1;
          }

          else
          {
            LODWORD(v18) = 0;
          }

          v19 = v7 & 0xFFFFFFFFFFFFFF8;
          *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20) = v16;

          if ((v7 & 0x8000000000000000) != 0 || v18)
          {
            v7 = v21(v7);
            v19 = v7 & 0xFFFFFFFFFFFFFF8;
            if ((v11 & 0x8000000000000000) != 0)
            {
LABEL_43:
              __break(1u);
              return v10;
            }
          }

          else if ((v11 & 0x8000000000000000) != 0)
          {
            goto LABEL_43;
          }

          if (v11 >= *(v19 + 16))
          {
            goto LABEL_49;
          }

          *(v19 + 8 * v11 + 32) = v15;

          *a1 = v7;
        }

        v12 = __OFADD__(v10++, 1);
        if (v12)
        {
          goto LABEL_48;
        }
      }
    }

    v12 = __OFADD__(v11++, 1);
    if (v12)
    {
      goto LABEL_47;
    }
  }

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
  return _CocoaArrayWrapper.endIndex.getter();
}

unint64_t sub_100E9875C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a1;
  result = sub_100E96184(*a1, a2);
  v9 = result;
  if (v3)
  {
    return v9;
  }

  if (v8)
  {
    if (v6 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    return *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18 = a1;
  v10 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  while (1)
  {
    if (v6 >> 62)
    {
      if (v10 == _CocoaArrayWrapper.endIndex.getter())
      {
        return v9;
      }
    }

    else if (v10 == *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v9;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_15;
    }

    if ((v10 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_40;
    }

LABEL_15:
    type metadata accessor for UUID();
    sub_1000066D0(&qword_1019F37C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v12 = dispatch thunk of static Equatable.== infix(_:_:)();

    if ((v12 & 1) == 0)
    {
      if (v9 != v10)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_44;
          }

          v15 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v9 >= v15)
          {
            goto LABEL_45;
          }

          if (v10 >= v15)
          {
            goto LABEL_46;
          }

          v13 = *(v6 + 32 + 8 * v9);
          v14 = *(v6 + 32 + 8 * v10);
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
        {
          v6 = a3(v6);
          v16 = (v6 >> 62) & 1;
        }

        else
        {
          LODWORD(v16) = 0;
        }

        v17 = v6 & 0xFFFFFFFFFFFFFF8;
        *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v9 + 0x20) = v14;

        if ((v6 & 0x8000000000000000) != 0 || v16)
        {
          v6 = a3(v6);
          v17 = v6 & 0xFFFFFFFFFFFFFF8;
          if ((v10 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v9;
          }
        }

        else if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v10 >= *(v17 + 16))
        {
          goto LABEL_43;
        }

        *(v17 + 8 * v10 + 32) = v13;

        *v18 = v6;
      }

      v11 = __OFADD__(v9++, 1);
      if (v11)
      {
        goto LABEL_42;
      }
    }

    v11 = __OFADD__(v10++, 1);
    if (v11)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_40:
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
  return _CocoaArrayWrapper.endIndex.getter();
}

uint64_t *sub_100E98A48(uint64_t a1, void *a2, uint64_t *a3, unint64_t a4)
{
  v262 = a4;
  v260 = a2;
  v5 = sub_1005B981C(&qword_101A102C0, &unk_101493DE0);
  v254 = *(v5 - 8);
  __chkstk_darwin(v5);
  v247 = &v235 - v6;
  v7 = sub_1005B981C(&qword_101A21EB8, &qword_1014B6888);
  __chkstk_darwin(v7 - 8);
  v249 = &v235 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v250 = &v235 - v10;
  v259 = sub_1005B981C(&qword_101A21EC0, &unk_1014B6890);
  v252 = *(v259 - 8);
  __chkstk_darwin(v259);
  v258 = &v235 - v11;
  v255 = sub_1005B981C(&unk_101A2C890, &qword_101471EB0);
  v253 = *(v255 - 8);
  __chkstk_darwin(v255);
  v246 = &v235 - v12;
  v13 = sub_1005B981C(&qword_101A21EC8, &qword_1014B68A0);
  __chkstk_darwin(v13 - 8);
  v248 = &v235 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v235 - v16;
  v257 = sub_1005B981C(&qword_101A21ED0, &qword_1014B68A8);
  v251 = *(v257 - 1);
  __chkstk_darwin(v257);
  v256 = &v235 - v18;
  v19 = sub_1005B981C(&qword_101A12928, &unk_1014B68B0);
  v261 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = &v235 - v20;
  v22 = sub_1005B981C(&qword_101A128E8, &unk_1014AC750);
  __chkstk_darwin(v22 - 8);
  v24 = &v235 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v235 - v26;
  v28 = sub_1005B981C(&qword_101A21ED8, &unk_1014B68C0);
  __chkstk_darwin(v28);
  v32 = &v235 - v31;
  v263 = *(v29 + OBJC_IVAR____TtC8Freeform28CRLBoardItemSyncRemoteRecord_commonCRDTData + 8);
  if (v263 >> 60 == 15)
  {
    if (qword_1019F2258 != -1)
    {
LABEL_95:
      swift_once();
    }

    v33 = static OS_os_log.boardStore;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v35 = UUID.uuidString.getter();
    v37 = v36;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v35;
    v38 = (inited + 32);
    *(inited + 40) = v37;
    v39 = static os_log_type_t.error.getter();
    sub_100005404(v33, &_mh_execute_header, v39, "Remote record is missing commonData: %@", 39, 2, inited);
    goto LABEL_11;
  }

  v242 = v5;
  v243 = v30;
  v245 = a3;
  v40 = *(v29 + OBJC_IVAR____TtC8Freeform28CRLBoardItemSyncRemoteRecord_commonCRDTData);
  v41 = v29;
  v42 = sub_100A0557C(*(v29 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_rawTypeValues), *(v29 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_rawTypeValues + 8), *(v29 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_rawTypeValues + 16));
  if ((v44 & 0x10000) != 0)
  {
    LOWORD(v28) = v44;
    v53 = v42;
    v32 = v43;
    v54 = v263;
    sub_100024E98(v40, v263);
    if (qword_1019F2258 != -1)
    {
LABEL_98:
      swift_once();
    }

    v55 = static OS_os_log.boardStore;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v56 = swift_initStackObject();
    *(v56 + 16) = xmmword_10146C6B0;
    *&v264 = v53;
    *(&v264 + 1) = v32;
    LOWORD(v265) = v28;
    BYTE2(v265) = 1;
    v57 = String.init<A>(describing:)();
    v59 = v58;
    *(v56 + 56) = &type metadata for String;
    *(v56 + 64) = sub_1000053B0();
    *(v56 + 32) = v57;
    v38 = (v56 + 32);
    *(v56 + 40) = v59;
    v60 = static os_log_type_t.error.getter();
    sub_100005404(v55, &_mh_execute_header, v60, "Remote record has invalid board item type: %@", 45, 2, v56);
    sub_100025870(v40, v54);
    goto LABEL_11;
  }

  v244 = v40;
  v40 = *(v41 + OBJC_IVAR____TtC8Freeform28CRLBoardItemSyncRemoteRecord_specificCRDTData + 8);
  if (v40 >> 60 == 15)
  {
    v45 = v244;
    v46 = v263;
    sub_100024E98(v244, v263);
    if (qword_1019F2258 != -1)
    {
      swift_once();
    }

    v47 = static OS_os_log.boardStore;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v48 = swift_initStackObject();
    *(v48 + 16) = xmmword_10146C6B0;
    v49 = UUID.uuidString.getter();
    v51 = v50;
    *(v48 + 56) = &type metadata for String;
    *(v48 + 64) = sub_1000053B0();
    *(v48 + 32) = v49;
    v38 = (v48 + 32);
    *(v48 + 40) = v51;
    v52 = static os_log_type_t.error.getter();
    sub_100005404(v47, &_mh_execute_header, v52, "Remote record is missing specificData: %@", 41, 2, v48);
    sub_100025870(v45, v46);
LABEL_11:
    swift_setDeallocating();
    sub_100005070(v38);
    return 0;
  }

  v62 = *(v41 + OBJC_IVAR____TtC8Freeform28CRLBoardItemSyncRemoteRecord_specificCRDTData);
  v63 = *(v41 + OBJC_IVAR____TtC8Freeform28CRLBoardItemSyncRemoteRecord_capsuleMergeableData);
  v238 = *(v41 + OBJC_IVAR____TtC8Freeform28CRLBoardItemSyncRemoteRecord_specificCRDTData + 8);
  v239 = v41;
  v236 = v42;
  v237 = v43;
  v240 = v44;
  v241 = v62;
  if (!v63)
  {
LABEL_73:
    v104 = v40;
    v105 = v263;
    v106 = v62;
    sub_100024E84(v244, v263);
    sub_100024E84(v106, v104);
LABEL_77:
    v116 = v262;
    goto LABEL_79;
  }

  if ((v44 & 0x100) == 0)
  {
    v107 = v62;
    v54 = v19;
    v108 = v19;
    v109 = v63;
    (*(v261 + 56))(v27, 1, 1, v108);
    sub_100024E84(v244, v263);
    sub_100024E84(v107, v40);
    sub_10001A2F8(&qword_101A21F00, &qword_101A12928, &unk_1014B68B0, &protocol conformance descriptor for Capsule<A>);
    v110 = v109;
    v111 = v260;
    CRCKMergeable.init(crdt:context:)();
    sub_10001A2F8(&qword_101A21F08, &qword_101A21ED8, &unk_1014B68C0, &protocol conformance descriptor for CRCKMergeable<A>);
    v260 = v110;
    CKMergeable.merge(_:)();
    CRCKMergeable.crdt.getter();
    v130 = v261;
    v131 = (*(v261 + 48))(v24, 1, v54);
    if (v131 != 1)
    {
      (*(v130 + 32))(v21, v24, v54);
      if (qword_1019F1520 != -1)
      {
        swift_once();
      }

      v135 = type metadata accessor for CRCodableVersion();
      sub_1005EB3DC(v135, qword_101AD6348);
      v89 = Capsule.serializedData(_:version:allowedAppFormats:fileSignature:)();
      goto LABEL_92;
    }

    (*(v243 + 8))(v32, v28);

    v132 = &qword_101A128E8;
    v133 = &unk_1014AC750;
    v134 = v24;
LABEL_87:
    sub_10000CAAC(v134, v132, v133);
    goto LABEL_76;
  }

  v64 = v63;
  if ((v42 | v43 || v44) && (v42 != 1 || v43 || v44) && (v42 != 2 || v43 || v44) && (v42 != 3 || v43 || v44) && (v42 != 4 || v43 || v44) && (v42 != 5 || v43 || v44) && (v42 != 6 || v43 || v44) && (v42 != 7 || v43 || v44) && (v42 != 8 || v43 || v44) && (v42 != 9 || v43 || v44) && (v42 != 10 || v43 || v44))
  {
    v137 = v260;
    if (v42 == 11 && !v237 && !v44)
    {
      (*(v253 + 56))(v17, 1, 1, v255);
      sub_100024E84(v244, v263);
      sub_100024E84(v241, v238);
      sub_10001A2F8(&qword_101A21EF0, &unk_101A2C890, &qword_101471EB0, &protocol conformance descriptor for Capsule<A>);
      v138 = v64;
      v139 = v137;
      CRCKMergeable.init(crdt:context:)();
      sub_10001A2F8(&qword_101A21EF8, &qword_101A21ED0, &qword_1014B68A8, &protocol conformance descriptor for CRCKMergeable<A>);
      v258 = v138;
      CKMergeable.merge(_:)();
      v260 = 0;
      v227 = v248;
      CRCKMergeable.crdt.getter();
      v228 = (*(v253 + 48))(v227, 1, v255);
      if (v228 != 1)
      {
        (*(v253 + 32))(v246, v248, v255);
        if (qword_1019F1520 != -1)
        {
          swift_once();
        }

        v231 = type metadata accessor for CRCodableVersion();
        sub_1005EB3DC(v231, qword_101AD6348);
        v232 = v260;
        v233 = Capsule.serializedData(_:version:allowedAppFormats:fileSignature:)();
        v260 = v232;
        if (!v232)
        {
          v117 = v233;
          v116 = v234;

          (*(v253 + 8))(v246, v255);
          (*(v251 + 8))(v256, v257);
          goto LABEL_93;
        }

        (*(v253 + 8))(v246, v255);
        v255 = 0;
        (*(v251 + 8))(v256, v257);
        sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
        v140 = swift_initStackObject();
        *(v140 + 16) = xmmword_10146C6B0;
        swift_getErrorValue();
        v141 = Error.localizedDescription.getter();
        v143 = v142;
        *(v140 + 56) = &type metadata for String;
        v144 = sub_1000053B0();
        *(v140 + 32) = v141;
        v261 = v140 + 32;
        v257 = v144;
        *(v140 + 64) = v144;
        *(v140 + 40) = v143;
        v256 = objc_opt_self();
        LODWORD(v145) = [v256 _atomicIncrementAssertCount];
        *&v264 = [objc_allocWithZone(NSString) init];
        v259 = v140;
        sub_100604538(v140, &v264, "Merging of Table CKMergeable failed during itemData creation from remote sync record with error %{public}@", 106, 2u);
        StaticString.description.getter("createItemData(from:crdtContext:capsuleDataInCaseMissing:)", 58, 2);
        v146 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
        v147 = String._bridgeToObjectiveC()();

        v148 = [v147 lastPathComponent];

        v149 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v151 = v150;

        if (qword_1019F20A0 != -1)
        {
          goto LABEL_180;
        }

        goto LABEL_104;
      }

      (*(v251 + 8))(v256, v257);

      v132 = &qword_101A21EC8;
      v133 = &qword_1014B68A0;
      v134 = v248;
      goto LABEL_87;
    }

    (*(v254 + 56))(v250, 1, 1, v242);
    sub_100024E84(v244, v263);
    sub_100024E84(v241, v238);
    sub_10001A2F8(&qword_101A21EE0, &qword_101A102C0, &unk_101493DE0, &protocol conformance descriptor for Capsule<A>);
    v178 = v64;
    v179 = v137;
    CRCKMergeable.init(crdt:context:)();
    sub_10001A2F8(&qword_101A21EE8, &qword_101A21EC0, &unk_1014B6890, &protocol conformance descriptor for CRCKMergeable<A>);
    v257 = v178;
    CKMergeable.merge(_:)();
    v260 = 0;
    v225 = v249;
    CRCKMergeable.crdt.getter();
    v226 = (*(v254 + 48))(v225, 1, v242);
    if (v226 == 1)
    {
      (*(v252 + 8))(v258, v259);

      sub_10000CAAC(v249, &qword_101A21EB8, &qword_1014B6888);
      goto LABEL_78;
    }

    (*(v254 + 32))(v247, v249, v242);
    if (qword_1019F1520 != -1)
    {
      swift_once();
    }

    v229 = type metadata accessor for CRCodableVersion();
    sub_1005EB3DC(v229, qword_101AD6348);
    v230 = v260;
    result = Capsule.serializedData(_:version:allowedAppFormats:fileSignature:)();
    v260 = v230;
    if (!v230)
    {
      goto LABEL_172;
    }

    (*(v254 + 8))(v247, v242);
    v255 = 0;
    (*(v252 + 8))(v258, v259);
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v180 = swift_initStackObject();
    *(v180 + 16) = xmmword_10146C6B0;
    swift_getErrorValue();
    v181 = Error.localizedDescription.getter();
    v183 = v182;
    *(v180 + 56) = &type metadata for String;
    v184 = sub_1000053B0();
    *(v180 + 32) = v181;
    v261 = v180 + 32;
    v258 = v184;
    *(v180 + 64) = v184;
    *(v180 + 40) = v183;
    v256 = objc_opt_self();
    v185 = [v256 _atomicIncrementAssertCount];
    *&v264 = [objc_allocWithZone(NSString) init];
    v259 = v180;
    sub_100604538(v180, &v264, "Merging of Surface CKMergeable failed during itemData creation from remote sync record with error %{public}@", 108, 2u);
    StaticString.description.getter("createItemData(from:crdtContext:capsuleDataInCaseMissing:)", 58, 2);
    v186 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
    v187 = String._bridgeToObjectiveC()();

    v188 = [v187 lastPathComponent];

    v189 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v191 = v190;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v192 = static OS_os_log.crlAssert;
    v193 = swift_initStackObject();
    *(v193 + 16) = xmmword_10146CA70;
    *(v193 + 56) = &type metadata for Int32;
    *(v193 + 64) = &protocol witness table for Int32;
    *(v193 + 32) = v185;
    v194 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(v193 + 96) = v194;
    v195 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
    *(v193 + 72) = v186;
    v196 = v258;
    *(v193 + 136) = &type metadata for String;
    *(v193 + 144) = v196;
    *(v193 + 104) = v195;
    *(v193 + 112) = v189;
    *(v193 + 120) = v191;
    *(v193 + 176) = &type metadata for UInt;
    *(v193 + 184) = &protocol witness table for UInt;
    *(v193 + 152) = 11633;
    v197 = v264;
    *(v193 + 216) = v194;
    *(v193 + 224) = v195;
    *(v193 + 192) = v197;
    v198 = v186;
    v199 = v197;
    v200 = static os_log_type_t.error.getter();
    sub_100005404(v192, &_mh_execute_header, v200, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v193);
    swift_setDeallocating();
    v258 = sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v201 = static os_log_type_t.error.getter();
    v202 = v259;
    sub_100005404(v192, &_mh_execute_header, v201, "Merging of Surface CKMergeable failed during itemData creation from remote sync record with error %{public}@", 108, 2, v259);

    type metadata accessor for __VaListBuilder();
    v203 = swift_allocObject();
    v203[2] = 8;
    v203[3] = 0;
    v204 = v203 + 3;
    v203[4] = 0;
    v203[5] = 0;
    v149 = *(v202 + 16);
    if (v149)
    {
      v205 = 0;
      v146 = 40;
      while (1)
      {
        v206 = (v261 + 40 * v205);
        v151 = v206[3];
        LODWORD(v145) = sub_100020E58(v206, v151);
        v207 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v208 = *v204;
        v209 = *(v207 + 16);
        v92 = __OFADD__(*v204, v209);
        v210 = *v204 + v209;
        if (v92)
        {
          break;
        }

        v211 = v207;
        v145 = v203[4];
        if (v145 >= v210)
        {
          goto LABEL_148;
        }

        if (v145 + 0x4000000000000000 < 0)
        {
          goto LABEL_177;
        }

        v151 = v203[5];
        if (2 * v145 > v210)
        {
          v210 = 2 * v145;
        }

        v203[4] = v210;
        if ((v210 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_179;
        }

        result = swift_slowAlloc();
        v203[5] = result;
        if (v151)
        {
          if (result != v151 || result >= &v151[v208])
          {
            memmove(result, v151, 8 * v208);
          }

          __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_148:
          result = v203[5];
        }

        if (!result)
        {
LABEL_182:
          __break(1u);
          return result;
        }

        v213 = *(v211 + 16);
        if (v213)
        {
          v214 = (v211 + 32);
          v215 = *v204;
          do
          {
            v216 = *v214++;
            result[v215] = v216;
            v215 = *v204 + 1;
            if (__OFADD__(*v204, 1))
            {
              goto LABEL_171;
            }

            *v204 = v215;
            --v213;
          }

          while (v213);
        }

        if (++v205 == v149)
        {
          goto LABEL_155;
        }
      }

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
      swift_once();
LABEL_104:
      v152 = static OS_os_log.crlAssert;
      v153 = swift_initStackObject();
      *(v153 + 16) = xmmword_10146CA70;
      *(v153 + 56) = &type metadata for Int32;
      *(v153 + 64) = &protocol witness table for Int32;
      *(v153 + 32) = v145;
      v154 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
      *(v153 + 96) = v154;
      v155 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
      *(v153 + 72) = v146;
      v156 = v257;
      *(v153 + 136) = &type metadata for String;
      *(v153 + 144) = v156;
      *(v153 + 104) = v155;
      *(v153 + 112) = v149;
      *(v153 + 120) = v151;
      *(v153 + 176) = &type metadata for UInt;
      *(v153 + 184) = &protocol witness table for UInt;
      *(v153 + 152) = 11623;
      v157 = v264;
      *(v153 + 216) = v154;
      *(v153 + 224) = v155;
      *(v153 + 192) = v157;
      v158 = v146;
      v159 = v157;
      v160 = static os_log_type_t.error.getter();
      sub_100005404(v152, &_mh_execute_header, v160, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v153);
      swift_setDeallocating();
      v257 = sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v161 = static os_log_type_t.error.getter();
      v162 = v259;
      sub_100005404(v152, &_mh_execute_header, v161, "Merging of Table CKMergeable failed during itemData creation from remote sync record with error %{public}@", 106, 2, v259);

      type metadata accessor for __VaListBuilder();
      v163 = swift_allocObject();
      v163[2] = 8;
      v163[3] = 0;
      v164 = v163 + 3;
      v163[4] = 0;
      v163[5] = 0;
      v149 = *(v162 + 16);
      if (v149)
      {
        v165 = 0;
        v146 = 40;
        while (1)
        {
          v166 = (v261 + 40 * v165);
          v151 = v166[3];
          LODWORD(v145) = sub_100020E58(v166, v151);
          v167 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
          v169 = *v164;
          v170 = *(v167 + 16);
          v92 = __OFADD__(*v164, v170);
          v171 = *v164 + v170;
          if (v92)
          {
            __break(1u);
            goto LABEL_175;
          }

          v172 = v167;
          v145 = v163[4];
          if (v145 >= v171)
          {
            goto LABEL_121;
          }

          if (v145 + 0x4000000000000000 < 0)
          {
            goto LABEL_176;
          }

          v151 = v163[5];
          if (2 * v145 > v171)
          {
            v171 = 2 * v145;
          }

          v163[4] = v171;
          if ((v171 - 0x1000000000000000) >> 61 != 7)
          {
            goto LABEL_178;
          }

          result = swift_slowAlloc();
          v163[5] = result;
          if (v151)
          {
            break;
          }

LABEL_122:
          if (!result)
          {
            __break(1u);
            goto LABEL_182;
          }

          v174 = *(v172 + 16);
          if (v174)
          {
            v175 = (v172 + 32);
            v176 = *v164;
            while (1)
            {
              v177 = *v175++;
              result[v176] = v177;
              v176 = *v164 + 1;
              if (__OFADD__(*v164, 1))
              {
                break;
              }

              *v164 = v176;
              if (!--v174)
              {
                goto LABEL_106;
              }
            }

            __break(1u);
LABEL_171:
            __break(1u);
LABEL_172:
            v117 = result;
            v116 = v168;

            (*(v254 + 8))(v247, v242);
            (*(v252 + 8))(v258, v259);
            goto LABEL_93;
          }

LABEL_106:

          if (++v165 == v149)
          {
            goto LABEL_156;
          }
        }

        if (result != v151 || result >= &v151[v169])
        {
          memmove(result, v151, 8 * v169);
        }

        __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_121:
        result = v163[5];
        goto LABEL_122;
      }

LABEL_156:
      v221 = __VaListBuilder.va_list()();
      StaticString.description.getter("createItemData(from:crdtContext:capsuleDataInCaseMissing:)", 58, 2);
      v222 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
      v223 = String._bridgeToObjectiveC()();

      StaticString.description.getter("Merging of Table CKMergeable failed during itemData creation from remote sync record with error %{public}@", 106, 2);
      v224 = String._bridgeToObjectiveC()();

      [v256 handleFailureInFunction:v222 file:v223 lineNumber:11623 isFatal:0 format:v224 args:v221];

      swift_setDeallocating();
    }

    else
    {
LABEL_155:
      v217 = __VaListBuilder.va_list()();
      StaticString.description.getter("createItemData(from:crdtContext:capsuleDataInCaseMissing:)", 58, 2);
      v218 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
      v219 = String._bridgeToObjectiveC()();

      StaticString.description.getter("Merging of Surface CKMergeable failed during itemData creation from remote sync record with error %{public}@", 108, 2);
      v220 = String._bridgeToObjectiveC()();

      [v256 handleFailureInFunction:v218 file:v219 lineNumber:11633 isFatal:0 format:v220 args:v217];

      swift_setDeallocating();
    }

    swift_arrayDestroy();

LABEL_78:
    v116 = v262;
    v105 = v263;
LABEL_79:
    if (v116 >> 60 == 15)
    {
      v117 = 0;
      v116 = 0xF000000000000000;
      v118 = v239;
    }

    else
    {
      sub_100024E98(v245, v116);
      if (qword_1019F2258 != -1)
      {
        swift_once();
      }

      v119 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      v120 = swift_initStackObject();
      *(v120 + 16) = xmmword_10146C6B0;
      v118 = v239;
      v121 = UUID.uuidString.getter();
      v123 = v122;
      *(v120 + 56) = &type metadata for String;
      *(v120 + 64) = sub_1000053B0();
      *(v120 + 32) = v121;
      *(v120 + 40) = v123;
      v124 = static os_log_type_t.default.getter();
      sub_100005404(v119, &_mh_execute_header, v124, "capsuleData was missing for %{public}@, patching with local capsuleData", 71, 2, v120);
      swift_setDeallocating();
      sub_100005070((v120 + 32));
      v117 = v245;
    }

    goto LABEL_84;
  }

  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_10146BDE0;
  sub_100024E84(v244, v263);
  sub_100024E84(v241, v40);
  v258 = v64;
  v66 = sub_1009B6B8C();
  v68 = v67;
  *(v65 + 56) = &type metadata for String;
  v69 = sub_1000053B0();
  *(v65 + 32) = v66;
  v261 = v65 + 32;
  *(v65 + 64) = v69;
  *(v65 + 40) = v68;
  v70 = UUID.uuidString.getter();
  *(v65 + 96) = &type metadata for String;
  *(v65 + 104) = v69;
  *(v65 + 72) = v70;
  *(v65 + 80) = v71;
  v257 = objc_opt_self();
  v72 = [v257 _atomicIncrementAssertCount];
  *&v264 = [objc_allocWithZone(NSString) init];
  sub_100604538(v65, &v264, "During creation of board item received unexpected ckMergeableRecordValue for unsupported itemType %{public}@ with item id %{public}@", 132, 2u);
  StaticString.description.getter("createItemData(from:crdtContext:capsuleDataInCaseMissing:)", 58, 2);
  v260 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
  v73 = String._bridgeToObjectiveC()();

  v74 = [v73 lastPathComponent];

  v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v77 = v76;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v259 = static OS_os_log.crlAssert;
  v78 = swift_allocObject();
  *(v78 + 16) = xmmword_10146CA70;
  *(v78 + 56) = &type metadata for Int32;
  *(v78 + 64) = &protocol witness table for Int32;
  *(v78 + 32) = v72;
  v79 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(v78 + 96) = v79;
  v80 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
  v81 = v260;
  *(v78 + 72) = v260;
  *(v78 + 136) = &type metadata for String;
  *(v78 + 144) = v69;
  *(v78 + 104) = v80;
  *(v78 + 112) = v75;
  *(v78 + 120) = v77;
  *(v78 + 176) = &type metadata for UInt;
  *(v78 + 184) = &protocol witness table for UInt;
  *(v78 + 152) = 11603;
  v82 = v264;
  *(v78 + 216) = v79;
  *(v78 + 224) = v80;
  *(v78 + 192) = v82;
  v83 = v81;
  v84 = v82;
  v85 = static os_log_type_t.error.getter();
  v86 = v259;
  sub_100005404(v259, &_mh_execute_header, v85, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v78);
  swift_setDeallocating();
  v260 = sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v87 = static os_log_type_t.error.getter();
  sub_100005404(v86, &_mh_execute_header, v87, "During creation of board item received unexpected ckMergeableRecordValue for unsupported itemType %{public}@ with item id %{public}@", 132, 2, v65);

  type metadata accessor for __VaListBuilder();
  v40 = swift_allocObject();
  *(v40 + 16) = 8;
  *(v40 + 24) = 0;
  v54 = (v40 + 24);
  *(v40 + 32) = 0;
  *(v40 + 40) = 0;
  v28 = *(v65 + 16);
  if (!v28)
  {
LABEL_75:
    v112 = __VaListBuilder.va_list()();
    StaticString.description.getter("createItemData(from:crdtContext:capsuleDataInCaseMissing:)", 58, 2);
    v113 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
    v114 = String._bridgeToObjectiveC()();

    StaticString.description.getter("During creation of board item received unexpected ckMergeableRecordValue for unsupported itemType %{public}@ with item id %{public}@", 132, 2);
    v115 = String._bridgeToObjectiveC()();

    [v257 handleFailureInFunction:v113 file:v114 lineNumber:11603 isFatal:0 format:v115 args:v112];

    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
LABEL_76:
    v105 = v263;
    goto LABEL_77;
  }

  v21 = 0;
  while (1)
  {
    v88 = (v261 + 40 * v21);
    v53 = v88[4];
    sub_100020E58(v88, v88[3]);
    v89 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v32 = *v54;
    v91 = *(v89 + 16);
    v92 = __OFADD__(*v54, v91);
    v93 = *v54 + v91;
    if (v92)
    {
      __break(1u);
      goto LABEL_95;
    }

    v94 = *(v40 + 32);
    if (v94 >= v93)
    {
      goto LABEL_65;
    }

    if (v94 + 0x4000000000000000 < 0)
    {
      __break(1u);
LABEL_97:
      __break(1u);
      goto LABEL_98;
    }

    v53 = *(v40 + 40);
    if (2 * v94 > v93)
    {
      v93 = 2 * v94;
    }

    *(v40 + 32) = v93;
    if ((v93 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_97;
    }

    v95 = v65;
    v96 = v89;
    v97 = swift_slowAlloc();
    v98 = v97;
    *(v40 + 40) = v97;
    if (v53)
    {
      if (v97 != v53 || v97 >= &v53[8 * v32])
      {
        memmove(v97, v53, 8 * v32);
      }

      __VaListBuilder.deallocStorage(wordCount:storage:)();
      v89 = v96;
      v65 = v95;
LABEL_65:
      v98 = *(v40 + 40);
      if (!v98)
      {
        goto LABEL_72;
      }

      goto LABEL_66;
    }

    v89 = v96;
    v65 = v95;
    if (!v98)
    {
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

LABEL_66:
    v100 = *(v89 + 16);
    if (v100)
    {
      break;
    }

LABEL_50:

    if (++v21 == v28)
    {
      goto LABEL_75;
    }
  }

  v101 = (v89 + 32);
  v102 = *v54;
  while (1)
  {
    v103 = *v101++;
    *&v98[8 * v102] = v103;
    v102 = *v54 + 1;
    if (__OFADD__(*v54, 1))
    {
      break;
    }

    *v54 = v102;
    if (!--v100)
    {
      goto LABEL_50;
    }
  }

  __break(1u);
  __break(1u);
LABEL_92:
  v117 = v89;
  v136 = v90;

  (*(v261 + 8))(v21, v54);
  (*(v243 + 8))(v32, v28);
  v116 = v136;
LABEL_93:
  v118 = v239;
  v105 = v263;
LABEL_84:
  v125 = *(v118 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_minRequiredVersions + 16);
  v264 = *(v118 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_minRequiredVersions);
  v265 = v125;
  v266 = *(v118 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_minRequiredVersions + 32);
  v126 = v238;
  v127 = v244;
  v128 = v241;
  v129 = sub_100B69CC0(v236, v237, v240 & 0x1FF, &v264, *(v118 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_objectOptions), v244, v105, v241, v238, v117, v116);
  sub_100025870(v128, v126);
  sub_100025870(v127, v105);
  sub_100025870(v117, v116);
  return v129;
}

uint64_t sub_100E9B2F4(uint64_t a1, void *a2)
{
  if (String.count.getter() < 1)
  {
    v5 = 0;
    a2 = 0xE000000000000000;
  }

  else
  {

    v4._countAndFlagsBits = 46;
    v4._object = 0xE100000000000000;
    String.append(_:)(v4);
    v5 = a1;
  }

  _StringGuts.grow(_:)(100);
  v6._countAndFlagsBits = v5;
  v6._object = a2;
  String.append(_:)(v6);
  v7._countAndFlagsBits = 0x6975755F6D657469;
  v7._object = 0xE900000000000064;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 8236;
  v8._object = 0xE200000000000000;
  String.append(_:)(v8);
  v9._countAndFlagsBits = v5;
  v9._object = a2;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 0x755F746E65726170;
  v10._object = 0xEB00000000646975;
  String.append(_:)(v10);
  v11._countAndFlagsBits = 8236;
  v11._object = 0xE200000000000000;
  String.append(_:)(v11);
  v12._countAndFlagsBits = v5;
  v12._object = a2;
  String.append(_:)(v12);
  v13._object = 0x8000000101585360;
  v13._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 8236;
  v14._object = 0xE200000000000000;
  String.append(_:)(v14);
  v15._countAndFlagsBits = v5;
  v15._object = a2;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0x7079745F6D657469;
  v16._object = 0xE900000000000065;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 8236;
  v17._object = 0xE200000000000000;
  String.append(_:)(v17);
  v18._countAndFlagsBits = v5;
  v18._object = a2;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x645F6E6F6D6D6F63;
  v19._object = 0xEB00000000617461;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 8236;
  v20._object = 0xE200000000000000;
  String.append(_:)(v20);
  v21._countAndFlagsBits = v5;
  v21._object = a2;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 0x6369666963657073;
  v22._object = 0xED0000617461645FLL;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 8236;
  v23._object = 0xE200000000000000;
  String.append(_:)(v23);
  v24._countAndFlagsBits = v5;
  v24._object = a2;
  String.append(_:)(v24);
  v25._countAndFlagsBits = 0x6E6F7473626D6F74;
  v25._object = 0xEA00000000006465;
  String.append(_:)(v25);
  v26._countAndFlagsBits = 8236;
  v26._object = 0xE200000000000000;
  String.append(_:)(v26);
  v27._countAndFlagsBits = v5;
  v27._object = a2;
  String.append(_:)(v27);
  v28._object = 0x80000001015A33D0;
  v28._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v28);
  v29._countAndFlagsBits = 8236;
  v29._object = 0xE200000000000000;
  String.append(_:)(v29);
  v30._countAndFlagsBits = v5;
  v30._object = a2;
  String.append(_:)(v30);
  v31._countAndFlagsBits = 0x7461645F636E7973;
  v31._object = 0xE900000000000061;
  String.append(_:)(v31);
  v32._countAndFlagsBits = 8236;
  v32._object = 0xE200000000000000;
  String.append(_:)(v32);
  v33._countAndFlagsBits = v5;
  v33._object = a2;
  String.append(_:)(v33);
  v34._countAndFlagsBits = 0xD000000000000014;
  v34._object = 0x80000001015A3590;
  String.append(_:)(v34);
  v35._countAndFlagsBits = 8236;
  v35._object = 0xE200000000000000;
  String.append(_:)(v35);
  v36._countAndFlagsBits = v5;
  v36._object = a2;
  String.append(_:)(v36);
  v37._countAndFlagsBits = 0x6F5F7463656A626FLL;
  v37._object = 0xEE00736E6F697470;
  String.append(_:)(v37);
  v38._countAndFlagsBits = 8236;
  v38._object = 0xE200000000000000;
  String.append(_:)(v38);
  v39._countAndFlagsBits = v5;
  v39._object = a2;
  String.append(_:)(v39);
  v40._countAndFlagsBits = 0xD00000000000002DLL;
  v40._object = 0x80000001015A3760;
  String.append(_:)(v40);
  v41._countAndFlagsBits = 8236;
  v41._object = 0xE200000000000000;
  String.append(_:)(v41);
  v42._countAndFlagsBits = v5;
  v42._object = a2;
  String.append(_:)(v42);
  v43._countAndFlagsBits = 0xD000000000000026;
  v43._object = 0x80000001015A33F0;
  String.append(_:)(v43);
  v44._countAndFlagsBits = 8236;
  v44._object = 0xE200000000000000;
  String.append(_:)(v44);
  v45._countAndFlagsBits = v5;
  v45._object = a2;
  String.append(_:)(v45);
  v46._countAndFlagsBits = 0xD00000000000001BLL;
  v46._object = 0x80000001015A3790;
  String.append(_:)(v46);
  v47._countAndFlagsBits = 8236;
  v47._object = 0xE200000000000000;
  String.append(_:)(v47);
  v48._countAndFlagsBits = v5;
  v48._object = a2;
  String.append(_:)(v48);
  v49._countAndFlagsBits = 0x6D6574695F627573;
  v49._object = 0xED0000657079745FLL;
  String.append(_:)(v49);
  v50._countAndFlagsBits = 8236;
  v50._object = 0xE200000000000000;
  String.append(_:)(v50);
  v51._countAndFlagsBits = v5;
  v51._object = a2;
  String.append(_:)(v51);
  v52._countAndFlagsBits = 0x5F656C7573706163;
  v52._object = 0xEC00000061746164;
  String.append(_:)(v52);
  v53._countAndFlagsBits = 8236;
  v53._object = 0xE200000000000000;
  String.append(_:)(v53);
  v54._countAndFlagsBits = v5;
  v54._object = a2;
  String.append(_:)(v54);

  v55._countAndFlagsBits = 0xD000000000000019;
  v55._object = 0x80000001015A37B0;
  String.append(_:)(v55);
  return 0;
}

uint64_t sub_100E9B7E0(unint64_t a1, uint64_t a2)
{
  v236 = type metadata accessor for CRLBoardIdentifierStorage(0);
  __chkstk_darwin(v236);
  v234 = &v207 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v233 = &v207 - v5;
  v6 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v6 - 8);
  v230 = &v207 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v232 = &v207 - v9;
  __chkstk_darwin(v10);
  v231 = &v207 - v11;
  __chkstk_darwin(v12);
  v235 = &v207 - v13;
  v14 = type metadata accessor for DispatchPredicate();
  v237 = *(v14 - 8);
  v238 = v14;
  __chkstk_darwin(v14);
  v239 = (&v207 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v16 - 8);
  v229 = &v207 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v241 = &v207 - v19;
  __chkstk_darwin(v20);
  v240 = &v207 - v21;
  __chkstk_darwin(v22);
  v24 = &v207 - v23;
  inited = type metadata accessor for UUID();
  v26 = *(inited - 8);
  __chkstk_darwin(inited);
  v28 = &v207 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = &v207 - v30;
  __chkstk_darwin(v32);
  v34 = &v207 - v33;
  v35 = a2;
  v36 = a2;
  v37 = a1;
  v38 = a1;
  LODWORD(a1) = 0;
  sub_100083B64(v36, v38, v24);
  v225 = v31;
  v226 = v35;
  v223 = v28;
  v227 = v34;
  v228 = v37;
  if ((*(v26 + 48))(v24, 1, inited) == 1)
  {

    sub_10000CAAC(v24, &qword_1019F6990, &qword_10146D2F0);
    return 0;
  }

  v224 = v26;
  v41 = v26 + 32;
  v42 = *(v26 + 32);
  v42(v227, v24, inited);
  v43 = v226;
  v44 = v228;
  if (__OFADD__(v226, 1))
  {
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v45 = v241;
  sub_100083B64(v226 + 1, v228, v241);
  v222 = inited;
  sub_10003DFF8(v45, v240, &qword_1019F6990, &qword_10146D2F0);
  v46 = v43 + 2;
  if (__OFADD__(v43, 2))
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v47 = *(*(v44 + 2) + 32);
  v43 = v238;
  v48 = v239;
  *v239 = v47;
  v49 = v237;
  v50 = v237[13];
  LODWORD(v221) = enum case for DispatchPredicate.onQueue(_:);
  v241 = (v237 + 13);
  v220 = v50;
  v50(v48);
  v51 = v47;
  v24 = _dispatchPreconditionTest(_:)();
  v52 = v49[1];
  inited = (v49 + 1);
  v237 = v52;
  (v52)(v48, v43);
  if ((v24 & 1) == 0)
  {
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v53 = sub_10002C280(v46, v44);
  v55 = v227;
  v56 = v236;
  if (!v53)
  {

    sub_10000CAAC(v240, &qword_1019F6990, &qword_10146D2F0);
    v60 = *(v224 + 8);
    v61 = v55;
    v62 = v222;
LABEL_10:
    v60(v61, v62);
    return 0;
  }

  v218 = v42;
  v219 = v41;
  v57 = sub_100024DD4(v53, v54);
  v59 = v58;
  sub_100024E98(v57, v58);
  v24 = v225;
  sub_100024EEC(v225, v57, v59);
  v43 = v222;
  v64 = v63;
  v216 = v57;
  v217 = v59;
  v66 = v65;
  sub_10002640C(v57, v59);
  v67 = v234;
  v218(v234, v24, v43);
  v68 = (v67 + *(v56 + 20));
  *v68 = v64;
  v68[1] = v66;
  v69 = v233;
  sub_100025668(v67, v233, type metadata accessor for CRLBoardIdentifierStorage);
  v70 = v69;
  v71 = v232;
  sub_100025668(v70, v232, type metadata accessor for CRLBoardIdentifierStorage);
  v72 = v71;
  a1 = v231;
  sub_100025668(v72, v231, type metadata accessor for CRLBoardIdentifier);
  v41 = v235;
  sub_100025668(a1, v235, type metadata accessor for CRLBoardIdentifier);
  v73 = v226;
  if (__OFADD__(v226, 3))
  {
    goto LABEL_82;
  }

  v74 = sub_10001E378(v226 + 3, v44);
  v75 = v224;
  if (v76)
  {

    sub_10002640C(v216, v217);
    sub_100026028(v41, type metadata accessor for CRLBoardIdentifier);
    sub_10000CAAC(v240, &qword_1019F6990, &qword_10146D2F0);
    (*(v75 + 8))(v227, v43);
    return 0;
  }

  a1 = v74;
  if (__OFADD__(v73, 14))
  {
    goto LABEL_83;
  }

  v231 = sub_10001E378(v73 + 14, v44);
  LODWORD(v225) = v77;
  v78 = *(*(v44 + 2) + 32);
  inited = v238;
  v79 = v239;
  *v239 = v78;
  (v220)(v79, v221, inited);
  v80 = v78;
  LOBYTE(v78) = _dispatchPreconditionTest(_:)();
  (v237)(v79, inited);
  if ((v78 & 1) == 0)
  {
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v81 = sub_10002C280(v226 + 4, v44);
  if (v81)
  {
    v234 = sub_100024DD4(v81, v82);
    v236 = v83;
  }

  else
  {
    v234 = 0;
    v236 = 0xF000000000000000;
  }

  v84 = *(*(v44 + 2) + 32);
  inited = v238;
  v85 = v239;
  *v239 = v84;
  (v220)(v85, v221, inited);
  v86 = v84;
  LOBYTE(v84) = _dispatchPreconditionTest(_:)();
  (v237)(v85, inited);
  if ((v84 & 1) == 0)
  {
    goto LABEL_85;
  }

  v87 = sub_10002C280(v226 + 5, v44);
  if (v87)
  {
    v232 = sub_100024DD4(v87, v88);
    v233 = v89;
  }

  else
  {
    v232 = 0;
    v233 = 0xF000000000000000;
  }

  v90 = v239;
  v215 = a1;
  v91 = v226 + 15;
  if (__OFADD__(v226, 15))
  {
    goto LABEL_86;
  }

  a1 = *(*(v44 + 2) + 32);
  *v239 = a1;
  inited = v238;
  (v220)(v90, v221, v238);
  v92 = a1;
  LODWORD(a1) = _dispatchPreconditionTest(_:)();
  (v237)(v90, inited);
  if ((a1 & 1) == 0)
  {
    goto LABEL_87;
  }

  v93 = sub_10002C280(v91, v44);
  v95 = v226;
  if (v93)
  {
    a1 = sub_100024DD4(v93, v94);
    v97 = v96;
  }

  else
  {
    a1 = 0;
    v97 = 0xF000000000000000;
  }

  v98 = sub_100083D68(v95 + 6, v44);
  if (v98 == 2 || (v214 = v98, v99 = sub_100028894(v95 + 7, v44), (v100 & 1) != 0))
  {

    sub_100025870(a1, v97);
    sub_100025870(v232, v233);
    sub_100025870(v234, v236);
    sub_10002640C(v216, v217);
    sub_100026028(v41, type metadata accessor for CRLBoardIdentifier);
    sub_10000CAAC(v240, &qword_1019F6990, &qword_10146D2F0);
    v60 = *(v224 + 8);
    v61 = v227;
    v62 = v43;
    goto LABEL_10;
  }

  v210 = v99;
  v213 = v97;
  v101 = *(*(v44 + 2) + 32);
  v41 = v238;
  v102 = v239;
  *v239 = v101;
  (v220)(v102, v221, v41);
  v103 = v101;
  LOBYTE(v101) = _dispatchPreconditionTest(_:)();
  (v237)(v102, v41);
  if ((v101 & 1) == 0)
  {
    goto LABEL_91;
  }

  v104 = sub_10002C280(v226 + 8, v44);
  if (v104)
  {
    v211 = sub_100024DD4(v104, v105);
    v212 = v106;
  }

  else
  {
    v211 = 0;
    v212 = 0xF000000000000000;
  }

  v107 = v239;
  v239 = a1;
  v108 = v226 + 16;
  if (__OFADD__(v226, 16))
  {
    goto LABEL_92;
  }

  a1 = *(*(v44 + 2) + 32);
  *v107 = a1;
  (v220)(v107, v221, v41);
  v109 = a1;
  v110 = _dispatchPreconditionTest(_:)();
  v111 = v41;
  v41 = v110;
  (v237)(v107, v111);
  if ((v41 & 1) == 0)
  {
LABEL_93:
    __break(1u);
LABEL_94:
    swift_once();
    goto LABEL_45;
  }

  v112 = sub_10002C280(v108, v44);
  v114 = v239;
  v115 = v226;
  v116 = v224;
  if (v112)
  {
    v241 = sub_100024DD4(v112, v113);
    v118 = v117;
  }

  else
  {
    v241 = 0;
    v118 = 0xF000000000000000;
  }

  v119 = v235;
  v120 = sub_100028894(v115 + 9, v44);
  if (v121)
  {

    sub_100025870(v241, v118);
    sub_100025870(v211, v212);
    sub_100025870(v114, v213);
    sub_100025870(v232, v233);
    sub_100025870(v234, v236);
    sub_10002640C(v216, v217);
    sub_100026028(v119, type metadata accessor for CRLBoardIdentifier);
    sub_10000CAAC(v240, &qword_1019F6990, &qword_10146D2F0);
    (*(v116 + 8))(v227, v43);
    return 0;
  }

  v238 = v118;
  v122 = v120;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v242 = &type metadata for UInt64;
  sub_1005B981C(&qword_101A21C70, &qword_1014B6538);
  String.init<A>(describing:)();
  v123 = String._bridgeToObjectiveC()();

  v41 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(inited + 56) = v41;
  v124 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
  *(inited + 32) = v123;
  v24 = inited + 32;
  *(inited + 64) = v124;
  v237 = v122;
  if (v122)
  {

    v125 = v240;
    goto LABEL_71;
  }

  v221 = v124;
  v208 = objc_opt_self();
  LODWORD(a1) = [v208 _atomicIncrementAssertCount];
  v242 = [objc_allocWithZone(NSString) init];
  sub_100604538(inited, &v242, "expected inequality between two values of type %{public}@", 57, 2u);
  StaticString.description.getter("init(row:columnOffsetIndex:)", 28, 2);
  v220 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
  v126 = String._bridgeToObjectiveC()();

  v127 = [v126 lastPathComponent];

  v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v44 = v128;

  if (qword_1019F20A0 != -1)
  {
    goto LABEL_94;
  }

LABEL_45:
  v209 = static OS_os_log.crlAssert;
  v129 = swift_initStackObject();
  *(v129 + 16) = xmmword_10146CA70;
  *(v129 + 56) = &type metadata for Int32;
  *(v129 + 64) = &protocol witness table for Int32;
  *(v129 + 32) = a1;
  v131 = v220;
  v130 = v221;
  *(v129 + 96) = v41;
  *(v129 + 104) = v130;
  *(v129 + 72) = v131;
  *(v129 + 136) = &type metadata for String;
  v132 = sub_1000053B0();
  *(v129 + 112) = v43;
  *(v129 + 120) = v44;
  *(v129 + 176) = &type metadata for UInt;
  *(v129 + 184) = &protocol witness table for UInt;
  *(v129 + 144) = v132;
  *(v129 + 152) = 11251;
  v133 = v242;
  *(v129 + 216) = v41;
  *(v129 + 224) = v130;
  *(v129 + 192) = v133;
  v134 = v131;
  v135 = v133;
  v136 = static os_log_type_t.error.getter();
  v137 = v209;
  sub_100005404(v209, &_mh_execute_header, v136, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v129);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v138 = static os_log_type_t.error.getter();
  sub_100005404(v137, &_mh_execute_header, v138, "expected inequality between two values of type %{public}@", 57, 2, inited);

  type metadata accessor for __VaListBuilder();
  v41 = swift_allocObject();
  *(v41 + 16) = 8;
  *(v41 + 24) = 0;
  v139 = (v41 + 24);
  *(v41 + 32) = 0;
  *(v41 + 40) = 0;
  v221 = inited;
  v140 = *(inited + 16);
  if (v140)
  {
    inited = 0;
    while (1)
    {
      v141 = (v24 + 40 * inited);
      v44 = v141[3];
      v43 = v141[4];
      sub_100020E58(v141, v44);
      v142 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      a1 = *v139;
      v143 = *(v142 + 16);
      v144 = __OFADD__(*v139, v143);
      v145 = *v139 + v143;
      if (v144)
      {
        goto LABEL_88;
      }

      v146 = *(v41 + 32);
      if (v146 >= v145)
      {
        goto LABEL_62;
      }

      if (v146 + 0x4000000000000000 < 0)
      {
        goto LABEL_89;
      }

      v44 = *(v41 + 40);
      if (2 * v146 > v145)
      {
        v145 = 2 * v146;
      }

      *(v41 + 32) = v145;
      if ((v145 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_90;
      }

      v43 = v142;
      v147 = swift_slowAlloc();
      v148 = v147;
      *(v41 + 40) = v147;
      if (v44)
      {
        break;
      }

      v142 = v43;
      if (!v148)
      {
LABEL_69:
        __break(1u);
        goto LABEL_70;
      }

LABEL_63:
      v150 = *(v142 + 16);
      if (v150)
      {
        v151 = (v142 + 32);
        v152 = *v139;
        do
        {
          v153 = *v151++;
          *(v148 + v152) = v153;
          v152 = *v139 + 1;
          if (__OFADD__(*v139, 1))
          {
            goto LABEL_79;
          }

          *v139 = v152;
        }

        while (--v150);
      }

      if (++inited == v140)
      {
        goto LABEL_70;
      }
    }

    if (v147 != v44 || v147 >= v44 + 8 * a1)
    {
      memmove(v147, v44, 8 * a1);
    }

    __VaListBuilder.deallocStorage(wordCount:storage:)();
    v142 = v43;
LABEL_62:
    v148 = *(v41 + 40);
    if (!v148)
    {
      goto LABEL_69;
    }

    goto LABEL_63;
  }

LABEL_70:
  v154 = __VaListBuilder.va_list()();
  StaticString.description.getter("init(row:columnOffsetIndex:)", 28, 2);
  v155 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
  v156 = String._bridgeToObjectiveC()();

  StaticString.description.getter("expected inequality between two values of type %{public}@", 57, 2);
  v157 = String._bridgeToObjectiveC()();

  [v208 handleFailureInFunction:v155 file:v156 lineNumber:11251 isFatal:0 format:v157 args:v154];

  v114 = v239;
  v125 = v240;
LABEL_71:
  v158 = v226;
  v159 = v228;
  v160 = sub_100028894(v226 + 10, v228);
  v161 = v222;
  v162 = v227;
  if (v163)
  {

    sub_100025870(v241, v238);
    sub_100025870(v211, v212);
    v164 = v114;
LABEL_76:
    sub_100025870(v164, v213);
    sub_100025870(v232, v233);
    sub_100025870(v234, v236);
    sub_10002640C(v216, v217);
    sub_100026028(v235, type metadata accessor for CRLBoardIdentifier);
    sub_10000CAAC(v125, &qword_1019F6990, &qword_10146D2F0);
    (*(v224 + 8))(v162, v161);
    return 0;
  }

  v165 = v160;
  v166 = sub_100028894(v158 + 11, v159);
  if (v167 & 1) != 0 || (v168 = v166, v240 = sub_100028894(v158 + 12, v159), (v169))
  {

    sub_100025870(v241, v238);
    sub_100025870(v211, v212);
    v164 = v239;
    goto LABEL_76;
  }

  v170 = sub_100028894(v158 + 13, v159);
  v171 = v224;
  v226 = v170;
  LODWORD(v221) = v172;

  sub_10002640C(v216, v217);
  v173 = v218;
  v218(v223, v162, v161);
  v174 = v125;
  v175 = v229;
  sub_10003DFF8(v174, v229, &qword_1019F6990, &qword_10146D2F0);
  v228 = type metadata accessor for CRLBoardIdentifier;
  sub_100025668(v235, v230, type metadata accessor for CRLBoardIdentifier);
  type metadata accessor for CRLBoardItemDatabaseRow(0);
  v176 = swift_allocObject();
  v177 = OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_parentContainerUUID;
  (*(v171 + 56))(v176 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_parentContainerUUID, 1, 1, v161);
  *(v176 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_commonData) = xmmword_101486780;
  *(v176 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData) = xmmword_101486780;
  *(v176 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_capsuleData) = xmmword_101486780;
  *(v176 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData) = xmmword_101486780;
  *(v176 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue) = xmmword_101486780;
  v173(v176 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_itemUUID, v223, v161);
  v178 = v176 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_minRequiredVersions;
  *v178 = v237;
  *(v178 + 8) = v168;
  v179 = v226;
  *(v178 + 16) = v240;
  *(v178 + 24) = v179;
  *(v178 + 32) = v221 & 1;
  *(v176 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_objectOptions) = v165;
  swift_beginAccess();
  sub_10002C638(v175, v176 + v177, &qword_1019F6990, &qword_10146D2F0);
  swift_endAccess();
  sub_100025668(v230, v176 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_boardIdentifier, v228);
  v180 = v176 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_rawTypeValues;
  v181 = v231;
  *v180 = v215;
  *(v180 + 8) = v181;
  *(v180 + 16) = v225 & 1;
  v182 = (v176 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_commonData);
  v183 = *(v176 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_commonData);
  v184 = *(v176 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_commonData + 8);
  v185 = v234;
  v186 = v236;
  sub_100024E84(v234, v236);
  *v182 = v185;
  v182[1] = v186;
  sub_100025870(v183, v184);
  sub_100025870(v185, v186);
  v187 = (v176 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData);
  v188 = *(v176 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData);
  v189 = *(v176 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData + 8);
  v191 = v232;
  v190 = v233;
  sub_100024E84(v232, v233);
  *v187 = v191;
  v187[1] = v190;
  sub_100025870(v188, v189);
  sub_100025870(v191, v190);
  v192 = (v176 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_capsuleData);
  v193 = *(v176 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_capsuleData);
  v194 = *(v176 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_capsuleData + 8);
  v195 = v239;
  v196 = v213;
  sub_100024E84(v239, v213);
  *v192 = v195;
  v192[1] = v196;
  sub_100025870(v193, v194);
  sub_100025870(v195, v196);
  *(v176 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_isLocalTombstone) = v214 & 1;
  v197 = v211;
  *(v176 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_unsyncedChanges) = v210;
  v198 = (v176 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData);
  v199 = *(v176 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData);
  v200 = *(v176 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData + 8);
  v201 = v212;
  sub_100024E84(v197, v212);
  *v198 = v197;
  v198[1] = v201;
  sub_100025870(v199, v200);
  sub_100025870(v197, v201);
  v202 = (v176 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue);
  v203 = *(v176 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue);
  v204 = *(v176 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue + 8);
  v205 = v241;
  v206 = v238;
  sub_100024E84(v241, v238);
  *v202 = v205;
  v202[1] = v206;
  sub_100025870(v203, v204);
  sub_100025870(v205, v206);
  return v176;
}

void sub_100E9CD68(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v52 = a5;
  v9 = &qword_1019F6990;
  v10 = &qword_10146D2F0;
  v11 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  v43 = *(v11 - 8);
  __chkstk_darwin(v11 - 8);
  v44 = v42 - v12;
  v13 = sub_1005B981C(&qword_101A21DE0, &unk_1014B6740);
  __chkstk_darwin(v13 - 8);
  v15 = (v42 - v14);
  v16 = -1 << *(a1 + 32);
  v17 = ~v16;
  v18 = *(a1 + 64);
  v19 = -v16;
  v45 = a1;
  v46 = a1 + 64;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v47 = v17;
  v48 = 0;
  v49 = v20 & v18;
  v50 = a2;
  v51 = a3;

  v42[1] = a3;

  while (1)
  {
    sub_100E90C10(v15);
    v22 = sub_1005B981C(&qword_101A22780, &unk_10149E9A0);
    if ((*(*(v22 - 8) + 48))(v15, 1, v22) == 1)
    {
      sub_100035F90(v45);

      return;
    }

    v24 = *v15;
    v23 = v15[1];
    v25 = v9;
    v26 = v10;
    sub_10003DFF8(v15 + *(v22 + 48), v44, v9, v10);
    v27 = *v52;
    v29 = sub_10000BE7C(v24, v23);
    v30 = v27[2];
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      break;
    }

    v33 = v28;
    if (v27[3] >= v32)
    {
      if ((a4 & 1) == 0)
      {
        sub_100AA4A54();
      }
    }

    else
    {
      sub_100A8A448(v32, a4 & 1);
      v34 = sub_10000BE7C(v24, v23);
      if ((v33 & 1) != (v35 & 1))
      {
        goto LABEL_19;
      }

      v29 = v34;
    }

    v36 = *v52;
    if (v33)
    {

      v21 = v36[7] + *(v43 + 72) * v29;
      v9 = v25;
      v10 = v26;
      sub_10002C638(v44, v21, v25, v26);
      a4 = 1;
    }

    else
    {
      v36[(v29 >> 6) + 8] |= 1 << v29;
      v37 = (v36[6] + 16 * v29);
      *v37 = v24;
      v37[1] = v23;
      v38 = v36[7] + *(v43 + 72) * v29;
      v9 = v25;
      v10 = v26;
      sub_10003DFF8(v44, v38, v25, v26);
      v39 = v36[2];
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        goto LABEL_18;
      }

      v36[2] = v41;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_100E9D0C0(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {

    v3._countAndFlagsBits = 46;
    v3._object = 0xE100000000000000;
    String.append(_:)(v3);
    v5 = a1;
    v4 = a2;
  }

  else
  {
    v5 = 0;
    v4 = 0xE000000000000000;
  }

  _StringGuts.grow(_:)(16);

  v6._countAndFlagsBits = 0x75755F7465737361;
  v6._object = 0xEA00000000006469;
  String.append(_:)(v6);
  v7._countAndFlagsBits = 8236;
  v7._object = 0xE200000000000000;
  String.append(_:)(v7);
  v8._countAndFlagsBits = v5;
  v8._object = v4;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 0x6F69736E65747865;
  v9._object = 0xE90000000000006ELL;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 8236;
  v10._object = 0xE200000000000000;
  String.append(_:)(v10);
  v11._countAndFlagsBits = v5;
  v11._object = v4;
  String.append(_:)(v11);

  v12._countAndFlagsBits = 0x6E6F7473626D6F74;
  v12._object = 0xEE00657461645F65;
  String.append(_:)(v12);
  return v5;
}

uint64_t sub_100E9D20C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v4 - 8);
  v6 = v24 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v24 - v12;
  sub_100083B64(a2, a1, v6);
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    v15 = *(v8 + 32);
    v15(v13, v6, v7);
    result = a2 + 1;
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else
    {
      sub_10089C2BC(result, a1);
      v24[0] = v17;
      result = a2 + 2;
      if (!__OFADD__(a2, 2))
      {
        v18 = v16;
        v19 = sub_100083E9C(result, a1);
        v21 = v20;

        if ((v21 & 1) == 0)
        {
          v15(v10, v13, v7);
          type metadata accessor for CRLAssetDatabaseRow(0);
          v22 = swift_allocObject();
          v15((v22 + OBJC_IVAR____TtC8Freeform19CRLAssetDatabaseRow_assetUUID), v10, v7);
          result = v22;
          v23 = (v22 + OBJC_IVAR____TtC8Freeform19CRLAssetDatabaseRow_fileExtension);
          *v23 = v24[0];
          v23[1] = v18;
          *(v22 + OBJC_IVAR____TtC8Freeform19CRLAssetDatabaseRow_tombstoneDate) = v19;
          return result;
        }

        (*(v8 + 8))(v13, v7);

        return 0;
      }
    }

    __break(1u);
    return result;
  }

  sub_10000CAAC(v6, &qword_1019F6990, &qword_10146D2F0);
  return 0;
}

uint64_t sub_100E9D4E0(uint64_t a1, char a2)
{
  v2 = a2;
  v3 = *(a1 + 16);
  if (!v3)
  {
    v17 = 0;
    goto LABEL_53;
  }

  v60 = 0;
  v59 = 0;
  v4 = 0;
  v5 = a1 + 32;
  do
  {
    v10 = *(v5 + v4);
    if (v10 == 2)
    {
      if (!v4)
      {
        v60 = 1;
LABEL_17:
        v14 = 0xD000000000000010;
        v13 = 0x8000000101585360;
        goto LABEL_32;
      }

      v60 = 1;
    }

    else if (*(v5 + v4))
    {
      if (!v4)
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (!v4)
      {
        v59 = 1;
        v14 = 0x6975755F6D657469;
        v13 = 0xE900000000000064;
        goto LABEL_32;
      }

      v59 = 1;
    }

    v11._countAndFlagsBits = 8236;
    v11._object = 0xE200000000000000;
    String.append(_:)(v11);
    v12._countAndFlagsBits = 8236;
    v12._object = 0xE200000000000000;
    String.append(_:)(v12);
LABEL_13:
    v13 = 0xE900000000000064;
    v14 = 0x6975755F6D657469;
    switch(v10)
    {
      case 1:
        v14 = 0x755F746E65726170;
        v13 = 0xEB00000000646975;
        break;
      case 2:
        goto LABEL_17;
      case 3:
        v13 = 0xE900000000000065;
        v14 = 0x7079745F6D657469;
        break;
      case 4:
        v14 = 0x645F6E6F6D6D6F63;
        v13 = 0xEB00000000617461;
        break;
      case 5:
        v14 = 0x6369666963657073;
        v13 = 0xED0000617461645FLL;
        break;
      case 6:
        v14 = 0x6E6F7473626D6F74;
        v13 = 0xEA00000000006465;
        break;
      case 7:
        v14 = 0xD000000000000010;
        v13 = 0x80000001015A33D0;
        break;
      case 8:
        v13 = 0xE900000000000061;
        v14 = 0x7461645F636E7973;
        break;
      case 9:
        v14 = 0xD000000000000014;
        v13 = 0x80000001015A3590;
        break;
      case 10:
        v14 = 0x6F5F7463656A626FLL;
        v13 = 0xEE00736E6F697470;
        break;
      case 11:
        v14 = 0xD00000000000002DLL;
        v13 = 0x80000001015A3760;
        break;
      case 12:
        v14 = 0xD000000000000026;
        v13 = 0x80000001015A33F0;
        break;
      case 13:
        v14 = 0xD00000000000001BLL;
        v13 = 0x80000001015A3790;
        break;
      case 14:
        v14 = 0x6D6574695F627573;
        v13 = 0xED0000657079745FLL;
        break;
      case 15:
        v14 = 0x5F656C7573706163;
        v13 = 0xEC00000061746164;
        break;
      case 16:
        v14 = 0xD000000000000019;
        v13 = 0x80000001015A37B0;
        break;
      default:
        break;
    }

LABEL_32:
    ++v4;
    v15 = v13;
    String.append(_:)(*&v14);

    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    String.append(_:)(v16);

    v6 = 0x6975755F6D657469;
    v7 = 0xE900000000000064;
    switch(v10)
    {
      case 0:
        break;
      case 1:
        v6 = 0x755F746E65726170;
        v7 = 0xEB00000000646975;
        break;
      case 2:
        v6 = 0xD000000000000010;
        v7 = 0x8000000101585360;
        break;
      case 3:
        v7 = 0xE900000000000065;
        v6 = 0x7079745F6D657469;
        break;
      case 4:
        v6 = 0x645F6E6F6D6D6F63;
        v7 = 0xEB00000000617461;
        break;
      case 5:
        v6 = 0x6369666963657073;
        v7 = 0xED0000617461645FLL;
        break;
      case 6:
        v6 = 0x6E6F7473626D6F74;
        v7 = 0xEA00000000006465;
        break;
      case 7:
        v6 = 0xD000000000000010;
        v7 = 0x80000001015A33D0;
        break;
      case 8:
        v7 = 0xE900000000000061;
        v6 = 0x7461645F636E7973;
        break;
      case 9:
        v6 = 0xD000000000000014;
        v7 = 0x80000001015A3590;
        break;
      case 10:
        v6 = 0x6F5F7463656A626FLL;
        v7 = 0xEE00736E6F697470;
        break;
      case 11:
        v6 = 0xD00000000000002DLL;
        v7 = 0x80000001015A3760;
        break;
      case 12:
        v6 = 0xD000000000000026;
        v7 = 0x80000001015A33F0;
        break;
      case 13:
        v6 = 0xD00000000000001BLL;
        v7 = 0x80000001015A3790;
        break;
      case 14:
        v6 = 0x6D6574695F627573;
        v7 = 0xED0000657079745FLL;
        break;
      case 15:
        v6 = 0x5F656C7573706163;
        v7 = 0xEC00000061746164;
        break;
      case 16:
        v6 = 0xD000000000000019;
        v7 = 0x80000001015A37B0;
        break;
      default:
        JUMPOUT(0);
    }

    v8 = v7;
    String.append(_:)(*&v6);

    v9._countAndFlagsBits = 24435;
    v9._object = 0xE200000000000000;
    String.append(_:)(v9);
  }

  while (v3 != v4);
  if ((v59 & 1) == 0)
  {
    v2 = a2;
    v17 = v60;
LABEL_53:
    v18._countAndFlagsBits = 0x755F6D657469202CLL;
    v18._object = 0xEB00000000646975;
    String.append(_:)(v18);
    v19._countAndFlagsBits = 0x755F6D6574695F73;
    v19._object = 0xEB00000000646975;
    String.append(_:)(v19);
    v20._countAndFlagsBits = 8236;
    v20._object = 0xE200000000000000;
    String.append(_:)(v20);

    if (v17)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

  v2 = a2;
  if ((v60 & 1) == 0)
  {
LABEL_54:
    v21._countAndFlagsBits = 0xD000000000000012;
    v21._object = 0x80000001015A3A60;
    String.append(_:)(v21);
    v22._countAndFlagsBits = 0xD000000000000012;
    v22._object = 0x80000001015A3A40;
    String.append(_:)(v22);
    v23._countAndFlagsBits = 8236;
    v23._object = 0xE200000000000000;
    String.append(_:)(v23);
  }

LABEL_55:
  if (v2)
  {
    v24._countAndFlagsBits = 0xD000000000000012;
    v24._object = 0x80000001015A3A80;
    String.append(_:)(v24);
    v25._countAndFlagsBits = 807419424;
    v25._object = 0xE400000000000000;
    String.append(_:)(v25);
    v26 = 0xE700000000000000;
    v58._countAndFlagsBits = 0x20455245485720;
  }

  else
  {
    v58._countAndFlagsBits = 0;
    v26 = 0xE000000000000000;
  }

  v58._object = v26;
  _StringGuts.grow(_:)(174);
  v27._countAndFlagsBits = 0xD000000000000019;
  v27._object = 0x80000001015A3AA0;
  String.append(_:)(v27);
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  String.append(_:)(v28);
  v29._countAndFlagsBits = 0x4553282053412029;
  v29._object = 0xED0000205443454CLL;
  String.append(_:)(v29);
  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  String.append(_:)(v30);
  v31._countAndFlagsBits = 0x204D4F524620;
  v31._object = 0xE600000000000000;
  String.append(_:)(v31);
  v32._countAndFlagsBits = 0x74695F6472616F62;
  v32._object = 0xEB00000000736D65;
  String.append(_:)(v32);
  v33._countAndFlagsBits = 0x2820455245485720;
  v33._object = 0xE800000000000000;
  String.append(_:)(v33);
  v34._countAndFlagsBits = 0x6975755F6D657469;
  v34._object = 0xE900000000000064;
  String.append(_:)(v34);
  v35._object = 0xE900000000000020;
  v35._countAndFlagsBits = 0x444E41203F203D20;
  String.append(_:)(v35);
  v36._object = 0x8000000101585360;
  v36._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v36);
  v37._countAndFlagsBits = 0xD000000000000013;
  v37._object = 0x80000001015A3AC0;
  String.append(_:)(v37);
  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  String.append(_:)(v38);

  v39._countAndFlagsBits = 0x204D4F524620;
  v39._object = 0xE600000000000000;
  String.append(_:)(v39);
  v40._countAndFlagsBits = 0x74695F6472616F62;
  v40._object = 0xEB00000000736D65;
  String.append(_:)(v40);
  v41._countAndFlagsBits = 0xD000000000000013;
  v41._object = 0x80000001015A3AE0;
  String.append(_:)(v41);
  v42._countAndFlagsBits = 0x74695F6472616F62;
  v42._object = 0xEB00000000736D65;
  String.append(_:)(v42);
  v43._countAndFlagsBits = 46;
  v43._object = 0xE100000000000000;
  String.append(_:)(v43);
  v44._countAndFlagsBits = 0x755F746E65726170;
  v44._object = 0xEB00000000646975;
  String.append(_:)(v44);
  v45._countAndFlagsBits = 2112800;
  v45._object = 0xE300000000000000;
  String.append(_:)(v45);
  v46._countAndFlagsBits = 0x755F6D6574695F73;
  v46._object = 0xEB00000000646975;
  String.append(_:)(v46);
  v47._countAndFlagsBits = 0x20444E4120;
  v47._object = 0xE500000000000000;
  String.append(_:)(v47);
  v48._countAndFlagsBits = 0x74695F6472616F62;
  v48._object = 0xEB00000000736D65;
  String.append(_:)(v48);
  v49._countAndFlagsBits = 46;
  v49._object = 0xE100000000000000;
  String.append(_:)(v49);
  v50._object = 0x8000000101585360;
  v50._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v50);
  v51._countAndFlagsBits = 2112800;
  v51._object = 0xE300000000000000;
  String.append(_:)(v51);
  v52._countAndFlagsBits = 0xD000000000000012;
  v52._object = 0x80000001015A3A40;
  String.append(_:)(v52);
  v53._countAndFlagsBits = 0x454C455320292029;
  v53._object = 0xEB00000000205443;
  String.append(_:)(v53);
  v54._countAndFlagsBits = 0;
  v54._object = 0xE000000000000000;
  String.append(_:)(v54);

  v55._countAndFlagsBits = 0x7573204D4F524620;
  v55._object = 0xEF736D6574695F62;
  String.append(_:)(v55);
  String.append(_:)(v58);

  return 0;
}

void sub_100E9DF44()
{
  v34 = type metadata accessor for UUID();
  v0 = *(v34 - 8);
  __chkstk_darwin(v34);
  v31 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  v33 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v25 - v6;
  v32 = _swiftEmptyArrayStorage;
  v8 = sub_100BD5554(_swiftEmptyArrayStorage);
  v9 = v8;
  v10 = v8 + 64;
  v11 = 1 << *(v8 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v8 + 64);
  v14 = (v11 + 63) >> 6;
  v15 = (v0 + 48);
  v29 = v0;
  v30 = (v0 + 32);

  v16 = 0;
  while (1)
  {
    v17 = v16;
    if (!v13)
    {
      break;
    }

LABEL_8:
    v18 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    sub_10000BE14(*(v9 + 56) + *(v33 + 72) * (v18 | (v16 << 6)), v7, &qword_1019F6990, &qword_10146D2F0);
    sub_10003DFF8(v7, v4, &qword_1019F6990, &qword_10146D2F0);
    if ((*v15)(v4, 1, v34) == 1)
    {
      sub_10000CAAC(v4, &qword_1019F6990, &qword_10146D2F0);
    }

    else
    {
      v28 = *v30;
      v28(v31, v4, v34);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_100B356D0(0, *(v32 + 2) + 1, 1, v32);
      }

      v20 = *(v32 + 2);
      v19 = *(v32 + 3);
      v21 = v20 + 1;
      if (v20 >= v19 >> 1)
      {
        v26 = *(v32 + 2);
        v27 = v20 + 1;
        v24 = sub_100B356D0((v19 > 1), v20 + 1, 1, v32);
        v20 = v26;
        v21 = v27;
        v32 = v24;
      }

      v22 = v31;
      v23 = v32;
      *(v32 + 2) = v21;
      v28(&v23[((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v20], v22, v34);
    }
  }

  while (1)
  {
    v16 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v16 >= v14)
    {

      sub_100E93A84(v32);

      return;
    }

    v13 = *(v10 + 8 * v16);
    ++v17;
    if (v13)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

uint64_t sub_100E9E2A4(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {

    v3._countAndFlagsBits = 46;
    v3._object = 0xE100000000000000;
    String.append(_:)(v3);
    v5 = a1;
    v4 = a2;
  }

  else
  {
    v5 = 0;
    v4 = 0xE000000000000000;
  }

  _StringGuts.grow(_:)(70);
  v6._countAndFlagsBits = v5;
  v6._object = v4;
  String.append(_:)(v6);
  v7._countAndFlagsBits = 0xD000000000000011;
  v7._object = 0x80000001015A38C0;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 8236;
  v8._object = 0xE200000000000000;
  String.append(_:)(v8);
  v9._countAndFlagsBits = v5;
  v9._object = v4;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 0x695F74656B637562;
  v10._object = 0xEC0000007865646ELL;
  String.append(_:)(v10);
  v11._countAndFlagsBits = 8236;
  v11._object = 0xE200000000000000;
  String.append(_:)(v11);
  v12._countAndFlagsBits = v5;
  v12._object = v4;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 0x645F74656B637562;
  v13._object = 0xEB00000000617461;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 8236;
  v14._object = 0xE200000000000000;
  String.append(_:)(v14);
  v15._countAndFlagsBits = v5;
  v15._object = v4;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0xD000000000000010;
  v16._object = 0x80000001015A33D0;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 8236;
  v17._object = 0xE200000000000000;
  String.append(_:)(v17);
  v18._countAndFlagsBits = v5;
  v18._object = v4;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x7461645F636E7973;
  v19._object = 0xE900000000000061;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 8236;
  v20._object = 0xE200000000000000;
  String.append(_:)(v20);
  v21._countAndFlagsBits = v5;
  v21._object = v4;
  String.append(_:)(v21);
  v22._object = 0x80000001015A3920;
  v22._countAndFlagsBits = 0xD00000000000001ELL;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 8236;
  v23._object = 0xE200000000000000;
  String.append(_:)(v23);
  v24._countAndFlagsBits = v5;
  v24._object = v4;
  String.append(_:)(v24);
  v25._countAndFlagsBits = 0xD00000000000001FLL;
  v25._object = 0x80000001015A3940;
  String.append(_:)(v25);
  v26._countAndFlagsBits = 8236;
  v26._object = 0xE200000000000000;
  String.append(_:)(v26);
  v27._countAndFlagsBits = v5;
  v27._object = v4;
  String.append(_:)(v27);
  v28._object = 0x80000001015A3960;
  v28._countAndFlagsBits = 0xD00000000000001ELL;
  String.append(_:)(v28);
  v29._countAndFlagsBits = 8236;
  v29._object = 0xE200000000000000;
  String.append(_:)(v29);
  v30._countAndFlagsBits = v5;
  v30._object = v4;
  String.append(_:)(v30);
  v31._countAndFlagsBits = 0xD000000000000038;
  v31._object = 0x80000001015A3980;
  String.append(_:)(v31);
  v32._countAndFlagsBits = 8236;
  v32._object = 0xE200000000000000;
  String.append(_:)(v32);
  v33._countAndFlagsBits = v5;
  v33._object = v4;
  String.append(_:)(v33);
  v34._countAndFlagsBits = 0xD000000000000037;
  v34._object = 0x80000001015A39C0;
  String.append(_:)(v34);
  v35._countAndFlagsBits = 8236;
  v35._object = 0xE200000000000000;
  String.append(_:)(v35);
  v36._countAndFlagsBits = v5;
  v36._object = v4;
  String.append(_:)(v36);
  v37._countAndFlagsBits = 0xD000000000000026;
  v37._object = 0x80000001015A33F0;
  String.append(_:)(v37);
  v38._countAndFlagsBits = 8236;
  v38._object = 0xE200000000000000;
  String.append(_:)(v38);
  v39._countAndFlagsBits = v5;
  v39._object = v4;
  String.append(_:)(v39);

  v40._countAndFlagsBits = 0xD00000000000001BLL;
  v40._object = 0x80000001015A3790;
  String.append(_:)(v40);
  return 0;
}

char *sub_100E9E61C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v194 = *(v4 - 8);
  v195 = v4;
  __chkstk_darwin(v4);
  v6 = &v174 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = type metadata accessor for CRLBoardIdentifierStorage(0);
  __chkstk_darwin(v193);
  v192 = &v174 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v191 = &v174 - v9;
  v10 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v10 - 8);
  v184 = &v174 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v190 = &v174 - v13;
  __chkstk_darwin(v14);
  v16 = &v174 - v15;
  __chkstk_darwin(v17);
  v196 = (&v174 - v18);
  v19 = type metadata accessor for DispatchPredicate();
  v27 = *(v19 - 1);
  v20 = __chkstk_darwin(v19);
  v22 = (&v174 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = *(*(a1 + 16) + 32);
  *v22 = v23;
  v25 = v27 + 104;
  v24 = *(v27 + 104);
  LODWORD(v188) = enum case for DispatchPredicate.onQueue(_:);
  v187 = v24;
  v24(v22, v20);
  v26 = v23;
  LOBYTE(v23) = _dispatchPreconditionTest(_:)();
  v28 = *(v27 + 8);
  LODWORD(v27) = v27 + 8;
  v189 = v19;
  *&v186 = v28;
  v28(v22, v19);
  if ((v23 & 1) == 0)
  {
    __break(1u);
    goto LABEL_105;
  }

  v29 = sub_10002C280(a2, a1);
  if (!v29)
  {
LABEL_15:

    return 0;
  }

  v183 = v25;
  v185 = a2;
  v197 = a1;
  v25 = sub_100024DD4(v29, v30);
  v32 = v31;
  sub_100024E98(v25, v31);
  sub_100024EEC(v6, v25, v32);
  a1 = v33;
  v35 = v34;
  v181 = v32;
  v182 = v25;
  sub_10002640C(v25, v32);
  v36 = v192;
  (*(v194 + 32))(v192, v6, v195);
  v37 = (v36 + *(v193 + 20));
  *v37 = a1;
  v37[1] = v35;
  v38 = v191;
  sub_100025668(v36, v191, type metadata accessor for CRLBoardIdentifierStorage);
  v39 = v38;
  v19 = v190;
  sub_100025668(v39, v190, type metadata accessor for CRLBoardIdentifierStorage);
  sub_100025668(v19, v16, type metadata accessor for CRLBoardIdentifier);
  v40 = v196;
  sub_100025668(v16, v196, type metadata accessor for CRLBoardIdentifier);
  v41 = v185;
  if (__OFADD__(v185, 1))
  {
    goto LABEL_106;
  }

  v42 = v197;
  v43 = sub_10001E378(v185 + 1, v197);
  if (v44)
  {
    sub_100026028(v40, type metadata accessor for CRLBoardIdentifier);
    v46 = v181;
    v45 = v182;
LABEL_14:
    sub_10002640C(v45, v46);
    goto LABEL_15;
  }

  v19 = (v41 + 2);
  if (__OFADD__(v41, 2))
  {
    goto LABEL_107;
  }

  a1 = v43;
  v47 = *(*(v42 + 16) + 32);
  *v22 = v47;
  v48 = v189;
  v187(v22, v188, v189);
  v49 = v47;
  LOBYTE(v47) = _dispatchPreconditionTest(_:)();
  (v186)(v22, v48);
  if ((v47 & 1) == 0)
  {
    goto LABEL_108;
  }

  v50 = sub_10002C280(v19, v42);
  if (!v50)
  {
    sub_10002640C(v182, v181);

    sub_100026028(v40, type metadata accessor for CRLBoardIdentifier);
    return 0;
  }

  v194 = a1;
  a1 = sub_100024DD4(v50, v51);
  v53 = v185;
  if (__OFADD__(v185, 3))
  {
    goto LABEL_110;
  }

  v25 = v52;
  v54 = sub_100028894(v185 + 3, v42);
  if (v55)
  {
    sub_100026028(v40, type metadata accessor for CRLBoardIdentifier);
    sub_10002640C(v182, v181);
    v45 = a1;
    v46 = v25;
    goto LABEL_14;
  }

  v179 = v54;
  v19 = (v53 + 4);
  if (__OFADD__(v53, 4))
  {
    goto LABEL_114;
  }

  v57 = *(*(v42 + 16) + 32);
  *v22 = v57;
  v58 = v189;
  v187(v22, v188, v189);
  v59 = v57;
  LOBYTE(v57) = _dispatchPreconditionTest(_:)();
  (v186)(v22, v58);
  if ((v57 & 1) == 0)
  {
    goto LABEL_115;
  }

  v60 = sub_10002C280(v19, v42);
  if (v60)
  {
    v192 = sub_100024DD4(v60, v61);
    v193 = v62;
  }

  else
  {
    v192 = 0;
    v193 = 0xF000000000000000;
  }

  v19 = (v185 + 5);
  if (__OFADD__(v185, 5))
  {
    goto LABEL_116;
  }

  v63 = *(*(v42 + 16) + 32);
  *v22 = v63;
  v64 = v189;
  v187(v22, v188, v189);
  v65 = v63;
  LOBYTE(v63) = _dispatchPreconditionTest(_:)();
  (v186)(v22, v64);
  if ((v63 & 1) == 0)
  {
    goto LABEL_117;
  }

  v66 = sub_10002C280(v19, v42);
  if (v66)
  {
    v27 = sub_100024DD4(v66, v67);
    v69 = v68;
  }

  else
  {
    v27 = 0;
    v69 = 0xF000000000000000;
  }

  if (__OFADD__(v185, 6))
  {
    goto LABEL_118;
  }

  v70 = sub_100028894(v185 + 6, v42);
  if (v71)
  {
LABEL_30:
    sub_100026028(v40, type metadata accessor for CRLBoardIdentifier);
    sub_10002640C(v182, v181);
    sub_10002640C(a1, v25);
    v72 = v27;
LABEL_63:
    sub_100025870(v72, v69);
    sub_100025870(v192, v193);
    goto LABEL_15;
  }

  v180 = v25;
  v191 = v27;
  v73 = v70;
  v190 = sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  v186 = xmmword_10146C6B0;
  *(inited + 16) = xmmword_10146C6B0;
  v198 = &type metadata for UInt64;
  v183 = sub_1005B981C(&qword_101A21C70, &qword_1014B6538);
  String.init<A>(describing:)();
  v75 = String._bridgeToObjectiveC()();

  v25 = NSString_ptr;
  v189 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(inited + 56) = v189;
  v76 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
  *(inited + 32) = v75;
  v188 = v76;
  *(inited + 64) = v76;
  v178 = v73;
  if (v73)
  {

    LODWORD(v27) = v190;
    v19 = v180;
    goto LABEL_60;
  }

  v195 = inited + 32;
  v187 = v69;
  v177 = a1;
  v175 = objc_opt_self();
  LODWORD(v27) = [v175 _atomicIncrementAssertCount];
  v198 = [objc_allocWithZone(NSString) init];
  sub_100604538(inited, &v198, "expected inequality between two values of type %{public}@", 57, 2u);
  StaticString.description.getter("init(row:columnOffsetIndex:)", 28, 2);
  v176 = inited;
  v19 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
  v77 = String._bridgeToObjectiveC()();

  v78 = [v77 lastPathComponent];

  a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v79;

  if (qword_1019F20A0 != -1)
  {
    goto LABEL_123;
  }

  while (1)
  {
    v80 = static OS_os_log.crlAssert;
    v81 = swift_initStackObject();
    *(v81 + 16) = xmmword_10146CA70;
    *(v81 + 56) = &type metadata for Int32;
    *(v81 + 64) = &protocol witness table for Int32;
    *(v81 + 32) = v27;
    v83 = v188;
    v82 = v189;
    *(v81 + 96) = v189;
    *(v81 + 104) = v83;
    *(v81 + 72) = v19;
    *(v81 + 136) = &type metadata for String;
    v84 = sub_1000053B0();
    *(v81 + 112) = a1;
    *(v81 + 120) = v25;
    *(v81 + 176) = &type metadata for UInt;
    *(v81 + 184) = &protocol witness table for UInt;
    *(v81 + 144) = v84;
    *(v81 + 152) = 11489;
    v85 = v198;
    *(v81 + 216) = v82;
    *(v81 + 224) = v83;
    *(v81 + 192) = v85;
    v86 = v19;
    v87 = v85;
    v88 = static os_log_type_t.error.getter();
    sub_100005404(v80, &_mh_execute_header, v88, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v81);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v89 = static os_log_type_t.error.getter();
    v90 = v176;
    sub_100005404(v80, &_mh_execute_header, v89, "expected inequality between two values of type %{public}@", 57, 2, v176);

    type metadata accessor for __VaListBuilder();
    v40 = swift_allocObject();
    v40[2] = 8;
    v40[3] = 0;
    v91 = v40 + 3;
    v40[4] = 0;
    v40[5] = 0;
    v92 = v90;
    a1 = *(v90 + 16);
    if (a1)
    {
      v25 = 0;
      while (1)
      {
        v93 = (v195 + 40 * v25);
        v19 = v93[3];
        v94 = v93[4];
        LODWORD(v27) = sub_100020E58(v93, v19);
        v95 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v96 = *v91;
        v97 = *(v95 + 16);
        v98 = __OFADD__(*v91, v97);
        v99 = *v91 + v97;
        if (v98)
        {
          goto LABEL_109;
        }

        v27 = v40[4];
        if (v27 >= v99)
        {
          goto LABEL_51;
        }

        if (v27 + 0x4000000000000000 < 0)
        {
          goto LABEL_111;
        }

        v19 = v40[5];
        if (2 * v27 > v99)
        {
          v99 = 2 * v27;
        }

        v40[4] = v99;
        if ((v99 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_112;
        }

        v94 = v95;
        v100 = swift_slowAlloc();
        v101 = v100;
        v40[5] = v100;
        if (v19)
        {
          break;
        }

        v95 = v94;
        if (!v101)
        {
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

LABEL_52:
        v103 = *(v95 + 16);
        if (v103)
        {
          v104 = (v95 + 32);
          v105 = *v91;
          while (1)
          {
            v106 = *v104++;
            *&v101[8 * v105] = v106;
            v105 = *v91 + 1;
            if (__OFADD__(*v91, 1))
            {
              break;
            }

            *v91 = v105;
            if (!--v103)
            {
              goto LABEL_36;
            }
          }

          __break(1u);
          goto LABEL_102;
        }

LABEL_36:

        if (++v25 == a1)
        {
          goto LABEL_59;
        }
      }

      if (v100 != v19 || v100 >= &v19[8 * v96])
      {
        memmove(v100, v19, 8 * v96);
      }

      __VaListBuilder.deallocStorage(wordCount:storage:)();
      v95 = v94;
LABEL_51:
      v101 = v40[5];
      if (!v101)
      {
        goto LABEL_58;
      }

      goto LABEL_52;
    }

LABEL_59:
    v27 = __VaListBuilder.va_list()();
    StaticString.description.getter("init(row:columnOffsetIndex:)", 28, 2);
    v107 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
    v108 = String._bridgeToObjectiveC()();

    StaticString.description.getter("expected inequality between two values of type %{public}@", 57, 2);
    v109 = String._bridgeToObjectiveC()();

    [v175 handleFailureInFunction:v107 file:v108 lineNumber:11489 isFatal:0 format:v109 args:v27];

    v40 = v196;
    v42 = v197;
    v19 = v180;
    a1 = v177;
    v69 = v187;
    LODWORD(v27) = v190;
LABEL_60:
    v110 = v191;
    if (__OFADD__(v185, 7))
    {
LABEL_121:
      __break(1u);
      goto LABEL_122;
    }

    v111 = sub_100028894(v185 + 7, v42);
    if (v112)
    {
      sub_100026028(v40, type metadata accessor for CRLBoardIdentifier);
      sub_10002640C(v182, v181);
      sub_10002640C(a1, v19);
      v72 = v110;
      goto LABEL_63;
    }

    v92 = v111;
    v113 = v19;
    v187 = v69;
    v114 = swift_initStackObject();
    *(v114 + 16) = v186;
    v198 = &type metadata for UInt64;
    String.init<A>(describing:)();
    v115 = String._bridgeToObjectiveC()();

    *(v114 + 32) = v115;
    v116 = v188;
    *(v114 + 56) = v189;
    *(v114 + 64) = v116;
    if (v92)
    {

      v25 = v113;
      v27 = v191;
      goto LABEL_93;
    }

    v190 = (v114 + 32);
    v195 = 0;
    v177 = a1;
    *&v186 = objc_opt_self();
    LODWORD(v27) = [v186 _atomicIncrementAssertCount];
    v198 = [objc_allocWithZone(NSString) init];
    sub_100604538(v114, &v198, "expected inequality between two values of type %{public}@", 57, 2u);
    StaticString.description.getter("init(row:columnOffsetIndex:)", 28, 2);
    v19 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
    v117 = String._bridgeToObjectiveC()();

    v118 = [v117 lastPathComponent];

    a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v69 = v114;
    v25 = v119;

    if (qword_1019F20A0 != -1)
    {
LABEL_125:
      swift_once();
    }

    v120 = static OS_os_log.crlAssert;
    v121 = swift_initStackObject();
    *(v121 + 16) = xmmword_10146CA70;
    *(v121 + 56) = &type metadata for Int32;
    *(v121 + 64) = &protocol witness table for Int32;
    *(v121 + 32) = v27;
    v123 = v188;
    v122 = v189;
    *(v121 + 96) = v189;
    *(v121 + 104) = v123;
    *(v121 + 72) = v19;
    *(v121 + 136) = &type metadata for String;
    v124 = sub_1000053B0();
    *(v121 + 112) = a1;
    *(v121 + 120) = v25;
    *(v121 + 176) = &type metadata for UInt;
    *(v121 + 184) = &protocol witness table for UInt;
    *(v121 + 144) = v124;
    *(v121 + 152) = 11494;
    v125 = v198;
    *(v121 + 216) = v122;
    *(v121 + 224) = v123;
    *(v121 + 192) = v125;
    v126 = v19;
    v127 = v125;
    v128 = static os_log_type_t.error.getter();
    sub_100005404(v120, &_mh_execute_header, v128, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v121);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v129 = static os_log_type_t.error.getter();
    sub_100005404(v120, &_mh_execute_header, v129, "expected inequality between two values of type %{public}@", 57, 2, v69);

    type metadata accessor for __VaListBuilder();
    v130 = swift_allocObject();
    v130[2] = 8;
    v130[3] = 0;
    v131 = v130 + 3;
    v130[4] = 0;
    v130[5] = 0;
    v189 = v69;
    a1 = *(v69 + 16);
    v132 = v190;
    if (!a1)
    {
      goto LABEL_92;
    }

    v25 = 0;
    while (1)
    {
      v133 = (v132 + 40 * v25);
      v19 = v133[3];
      LODWORD(v27) = sub_100020E58(v133, v19);
      v134 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v135 = *v131;
      v136 = *(v134 + 16);
      v98 = __OFADD__(*v131, v136);
      v137 = *v131 + v136;
      if (v98)
      {
        goto LABEL_113;
      }

      v27 = v130[4];
      if (v27 >= v137)
      {
        goto LABEL_84;
      }

      if (v27 + 0x4000000000000000 < 0)
      {
        goto LABEL_119;
      }

      v19 = v130[5];
      if (2 * v27 > v137)
      {
        v137 = 2 * v27;
      }

      v130[4] = v137;
      if ((v137 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_120;
      }

      v138 = v134;
      v139 = swift_slowAlloc();
      v140 = v139;
      v130[5] = v139;
      if (!v19)
      {
        break;
      }

      if (v139 != v19 || v139 >= &v19[8 * v135])
      {
        memmove(v139, v19, 8 * v135);
      }

      LODWORD(v27) = v130;
      __VaListBuilder.deallocStorage(wordCount:storage:)();
      v134 = v138;
LABEL_84:
      v140 = v130[5];
      if (!v140)
      {
        goto LABEL_91;
      }

LABEL_85:
      v142 = *(v134 + 16);
      if (v142)
      {
        v143 = (v134 + 32);
        v144 = *v131;
        while (1)
        {
          v145 = *v143++;
          *&v140[8 * v144] = v145;
          v144 = *v131 + 1;
          if (__OFADD__(*v131, 1))
          {
            break;
          }

          *v131 = v144;
          if (!--v142)
          {
            goto LABEL_69;
          }
        }

LABEL_105:
        __break(1u);
LABEL_106:
        __break(1u);
LABEL_107:
        __break(1u);
LABEL_108:
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
LABEL_119:
        __break(1u);
LABEL_120:
        __break(1u);
        goto LABEL_121;
      }

LABEL_69:

      if (++v25 == a1)
      {
        goto LABEL_92;
      }
    }

    v134 = v138;
    if (v140)
    {
      goto LABEL_85;
    }

LABEL_91:
    __break(1u);
LABEL_92:
    v146 = __VaListBuilder.va_list()();
    StaticString.description.getter("init(row:columnOffsetIndex:)", 28, 2);
    v147 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
    v148 = String._bridgeToObjectiveC()();

    StaticString.description.getter("expected inequality between two values of type %{public}@", 57, 2);
    v149 = String._bridgeToObjectiveC()();

    [v186 handleFailureInFunction:v147 file:v148 lineNumber:11494 isFatal:0 format:v149 args:v146];

    v40 = v196;
    v42 = v197;
    v25 = v180;
    a1 = v177;
    v27 = v191;
    v92 = v195;
LABEL_93:
    v19 = v185;
    v69 = v187;
    if (!__OFADD__(v185, 8))
    {
      break;
    }

LABEL_122:
    __break(1u);
LABEL_123:
    swift_once();
  }

  v150 = sub_100028894(v185 + 8, v42);
  if (v151)
  {
    goto LABEL_30;
  }

  v94 = v150;
  if (__OFADD__(v19, 9))
  {
    __break(1u);
    goto LABEL_125;
  }

  v152 = sub_100028894((v19 + 9), v197);
  v91 = v182;
  if (v153)
  {
    sub_100026028(v40, type metadata accessor for CRLBoardIdentifier);
    sub_10002640C(v91, v181);
    sub_10002640C(a1, v25);
    sub_100025870(v191, v69);
    sub_100025870(v192, v193);
    goto LABEL_15;
  }

  v196 = v152;
  result = v19 + 10;
  if (__OFADD__(v19, 10))
  {
    __break(1u);
  }

  else
  {
    v95 = sub_100028894(result, v197);
    if (v154)
    {
      sub_100026028(v40, type metadata accessor for CRLBoardIdentifier);
      sub_10002640C(v91, v181);
      sub_10002640C(a1, v25);
      sub_100025870(v191, v187);
      sub_100025870(v192, v193);
      goto LABEL_15;
    }

LABEL_102:
    v155 = v95;
    v195 = v92;
    result = v19 + 11;
    if (!__OFADD__(v19, 11))
    {
      v190 = sub_100028894(result, v197);
      LODWORD(v189) = v156;

      sub_10002640C(v91, v181);
      v157 = v184;
      sub_100025668(v40, v184, type metadata accessor for CRLBoardIdentifier);
      type metadata accessor for CRLFreehandDrawingBucketDatabaseRow(0);
      v158 = swift_allocObject();
      *(v158 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData) = xmmword_101486780;
      *(v158 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData) = xmmword_101486780;
      sub_100025668(v157, v158 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
      *(v158 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_bucketIndex) = v194;
      v159 = (v158 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_bucketData);
      *v159 = a1;
      v159[1] = v25;
      *(v158 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_unsyncedChanges) = v179;
      v160 = (v158 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData);
      v161 = *(v158 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData);
      v162 = *(v158 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData + 8);
      v164 = v192;
      v163 = v193;
      sub_100024E84(v192, v193);
      *v160 = v164;
      v160[1] = v163;
      sub_100025870(v161, v162);
      sub_100025870(v164, v163);
      v165 = (v158 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData);
      v166 = *(v158 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData);
      v167 = *(v158 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData + 8);
      v168 = v191;
      v169 = v187;
      sub_100024E84(v191, v187);
      *v165 = v168;
      v165[1] = v169;
      sub_100025870(v166, v167);
      sub_100025870(v168, v169);
      result = v158;
      v170 = v158 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_minRequiredVersions;
      v172 = v195;
      v171 = v196;
      *v170 = v178;
      *(v170 + 8) = v172;
      *(v170 + 16) = v94;
      *(v170 + 24) = v171;
      v173 = v190;
      *(v170 + 32) = v155;
      *(v170 + 40) = v173;
      *(v170 + 48) = v189 & 1;
      return result;
    }
  }

  __break(1u);
  return result;
}

double sub_100E9FABC(uint64_t a1)
{
  v2 = sub_1005B981C(&unk_101A341C0, &unk_1014B1D00);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - v4;
  v6 = *(a1 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_bucketIndex);
  v7 = *(a1 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_bucketData);
  v8 = *(a1 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_bucketData + 8);
  v9 = *(a1 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_minRequiredVersions);
  v20 = *(a1 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_minRequiredVersions + 16);
  *v21 = v9;
  v10 = *(a1 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_minRequiredVersions + 32);
  v18 = *(a1 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_minRequiredVersions + 40);
  v19 = v10;
  v17 = *(a1 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_minRequiredVersions + 48);
  sub_100024E98(v7, v8);
  sub_1005B981C(&unk_101A22860, &unk_1014B6550);
  sub_10001A2F8(&qword_101A228C0, &unk_101A22860, &unk_1014B6550, &protocol conformance descriptor for CRDictionary<A, B>);
  Capsule.init(serializedData:allowedAppFormats:fileSignature:)();

  sub_1005B981C(&unk_101A228D0, "ԥ'");
  v11 = swift_allocObject();
  *(v11 + *(*v11 + 136)) = 0;
  v11[2] = v6;
  (*(v3 + 32))(v11 + *(*v11 + 120), v5, v2);
  *(v11 + *(*v11 + 136)) = 0;
  v12 = v11 + *(*v11 + 128);
  v14 = v20;
  result = v21[0];
  *v12 = *v21;
  *(v12 + 1) = v14;
  v15 = v18;
  *(v12 + 4) = v19;
  *(v12 + 5) = v15;
  v12[48] = v17;
  return result;
}

uint64_t sub_100E9FE1C(uint64_t a1)
{
  v2 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1005B981C(&unk_101A22E60, &qword_101489688);
  __chkstk_darwin(v5 - 8);
  v7 = &v18[-v6];
  v8 = type metadata accessor for CRLUserBoardMetadataCRDTData(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v14 = &v18[-v13];
  if (*(a1 + OBJC_IVAR____TtC8Freeform36CRLUserBoardMetadataSyncRemoteRecord_boardCRDTData + 8) >> 60 == 15)
  {

    return 0;
  }

  else
  {
    sub_100024E98(*(a1 + OBJC_IVAR____TtC8Freeform36CRLUserBoardMetadataSyncRemoteRecord_boardCRDTData), *(a1 + OBJC_IVAR____TtC8Freeform36CRLUserBoardMetadataSyncRemoteRecord_boardCRDTData + 8));
    sub_1000066D0(&unk_101A22E20, type metadata accessor for CRLUserBoardMetadataCRDTData, byte_1014DCCE0);
    CRDT.init(serializedData:)();
    (*(v9 + 56))(v7, 0, 1, v8);
    sub_100025668(v7, v14, type metadata accessor for CRLUserBoardMetadataCRDTData);
    sub_10000C83C(a1 + OBJC_IVAR____TtC8Freeform30CRLUserBoardMetadataSyncRecord_boardIdentifier, v4, type metadata accessor for CRLBoardIdentifier);
    sub_100025668(v14, v11, type metadata accessor for CRLUserBoardMetadataCRDTData);
    v16 = *(a1 + OBJC_IVAR____TtC8Freeform30CRLUserBoardMetadataSyncRecord_minRequiredVersionForFullFidelity);

    type metadata accessor for CRLUserBoardMetadataData(0);
    v17 = swift_allocObject();
    sub_100025668(v4, v17 + OBJC_IVAR____TtC8Freeform24CRLUserBoardMetadataData_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
    sub_100025668(v11, v17 + OBJC_IVAR____TtC8Freeform24CRLUserBoardMetadataData_crdtData, type metadata accessor for CRLUserBoardMetadataCRDTData);
    result = v17;
    *(v17 + OBJC_IVAR____TtC8Freeform24CRLUserBoardMetadataData_minRequiredVersionForFullFidelity) = v16;
  }

  return result;
}

uint64_t sub_100EA017C(uint64_t a1, void *a2)
{
  if (String.count.getter() < 1)
  {
    v5 = 0;
    a2 = 0xE000000000000000;
  }

  else
  {

    v4._countAndFlagsBits = 46;
    v4._object = 0xE100000000000000;
    String.append(_:)(v4);
    v5 = a1;
  }

  _StringGuts.grow(_:)(52);
  v6._countAndFlagsBits = v5;
  v6._object = a2;
  String.append(_:)(v6);
  v7._object = 0x8000000101585360;
  v7._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 8236;
  v8._object = 0xE200000000000000;
  String.append(_:)(v8);
  v9._countAndFlagsBits = v5;
  v9._object = a2;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 0x7461645F74647263;
  v10._object = 0xE900000000000061;
  String.append(_:)(v10);
  v11._countAndFlagsBits = 8236;
  v11._object = 0xE200000000000000;
  String.append(_:)(v11);
  v12._countAndFlagsBits = v5;
  v12._object = a2;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 0x726F7661665F7369;
  v13._object = 0xEB00000000657469;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 8236;
  v14._object = 0xE200000000000000;
  String.append(_:)(v14);
  v15._countAndFlagsBits = v5;
  v15._object = a2;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0xD00000000000001BLL;
  v16._object = 0x80000001015A3390;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 8236;
  v17._object = 0xE200000000000000;
  String.append(_:)(v17);
  v18._countAndFlagsBits = v5;
  v18._object = a2;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x6174735F77656976;
  v19._object = 0xEF617461645F6574;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 8236;
  v20._object = 0xE200000000000000;
  String.append(_:)(v20);
  v21._countAndFlagsBits = v5;
  v21._object = a2;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 0xD000000000000019;
  v22._object = 0x80000001015A33B0;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 8236;
  v23._object = 0xE200000000000000;
  String.append(_:)(v23);
  v24._countAndFlagsBits = v5;
  v24._object = a2;
  String.append(_:)(v24);
  v25._object = 0x80000001015A33D0;
  v25._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v25);
  v26._countAndFlagsBits = 8236;
  v26._object = 0xE200000000000000;
  String.append(_:)(v26);
  v27._countAndFlagsBits = v5;
  v27._object = a2;
  String.append(_:)(v27);
  v28._countAndFlagsBits = 0x7461645F636E7973;
  v28._object = 0xE900000000000061;
  String.append(_:)(v28);
  v29._countAndFlagsBits = 8236;
  v29._object = 0xE200000000000000;
  String.append(_:)(v29);
  v30._countAndFlagsBits = v5;
  v30._object = a2;
  String.append(_:)(v30);

  v31._countAndFlagsBits = 0xD000000000000026;
  v31._object = 0x80000001015A33F0;
  String.append(_:)(v31);
  return 0;
}

uint64_t sub_100EA0450(uint64_t a1, uint64_t a2)
{
  v156 = a2;
  v3 = sub_1005B981C(&unk_101A22E60, &qword_101489688);
  __chkstk_darwin(v3 - 8);
  v140 = &v129 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v139 = &v129 - v6;
  __chkstk_darwin(v7);
  v138 = &v129 - v8;
  v9 = type metadata accessor for CRLUserBoardMetadataCRDTData(0);
  v10 = *(v9 - 8);
  v141 = v9;
  v142 = v10;
  __chkstk_darwin(v9);
  v12 = &v129 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v137 = &v129 - v14;
  __chkstk_darwin(v15);
  v136 = &v129 - v16;
  v17 = type metadata accessor for UUID();
  v147 = *(v17 - 8);
  v148 = v17;
  __chkstk_darwin(v17);
  v19 = &v129 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = type metadata accessor for CRLBoardIdentifierStorage(0);
  __chkstk_darwin(v146);
  v145 = &v129 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v144 = &v129 - v22;
  v23 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v23 - 8);
  v25 = &v129 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v143 = &v129 - v27;
  __chkstk_darwin(v28);
  v30 = &v129 - v29;
  __chkstk_darwin(v31);
  v149 = &v129 - v32;
  v33 = type metadata accessor for DispatchPredicate();
  v34 = *(v33 - 8);
  v35 = __chkstk_darwin(v33);
  v37 = (&v129 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = *(*(a1 + 16) + 32);
  *v37 = v40;
  v38 = *(v34 + 104);
  LODWORD(v153) = enum case for DispatchPredicate.onQueue(_:);
  v154 = v34 + 104;
  v152 = v38;
  v38(v37, v35);
  v39 = v40;
  LODWORD(v40) = _dispatchPreconditionTest(_:)();
  v42 = *(v34 + 8);
  v41 = v34 + 8;
  v155 = v33;
  v151 = v42;
  v42(v37, v33);
  if ((v40 & 1) == 0)
  {
    __break(1u);
    goto LABEL_36;
  }

  v43 = sub_10002C280(v156, a1);
  if (v43)
  {
    v134 = v12;
    v135 = v25;
    v150 = a1;
    v45 = sub_100024DD4(v43, v44);
    v47 = v46;
    sub_100024E98(v45, v46);
    sub_100024EEC(v19, v45, v47);
    v49 = v48;
    v51 = v50;
    v132 = v45;
    v133 = v47;
    sub_10002640C(v45, v47);
    v52 = v145;
    (*(v147 + 32))(v145, v19, v148);
    v53 = (v52 + *(v146 + 20));
    *v53 = v49;
    v53[1] = v51;
    v54 = v144;
    sub_100025668(v52, v144, type metadata accessor for CRLBoardIdentifierStorage);
    v55 = v54;
    v19 = v143;
    sub_100025668(v55, v143, type metadata accessor for CRLBoardIdentifierStorage);
    sub_100025668(v19, v30, type metadata accessor for CRLBoardIdentifier);
    v56 = v149;
    sub_100025668(v30, v149, type metadata accessor for CRLBoardIdentifier);
    v40 = v156 + 1;
    if (!__OFADD__(v156, 1))
    {
      v57 = v150;
      v58 = *(*(v150 + 16) + 32);
      *v37 = v58;
      v59 = v155;
      v152(v37, v153, v155);
      v60 = v58;
      v19 = _dispatchPreconditionTest(_:)();
      v151(v37, v59);
      if (v19)
      {
        v61 = sub_10002C280(v40, v57);
        if (!v61)
        {
          goto LABEL_22;
        }

        v64 = sub_100024DD4(v61, v62);
        v40 = v156;
        if (!__OFADD__(v156, 2))
        {
          v65 = v63;
          v66 = sub_100083D68(v156 + 2, v57);
          if (v66 == 2)
          {
LABEL_12:
            sub_100026028(v56, type metadata accessor for CRLBoardIdentifier);
            sub_10002640C(v132, v133);
            v68 = v64;
            v69 = v65;
LABEL_13:
            sub_10002640C(v68, v69);

            return 0;
          }

          v19 = v66;
          if (!__OFADD__(v40, 3))
          {
            v67 = sub_100083D68(v40 + 3, v57);
            if (v67 == 2)
            {
              goto LABEL_12;
            }

            LODWORD(v145) = v67;
            LODWORD(v146) = v19;
            v148 = v40 + 4;
            if (!__OFADD__(v40, 4))
            {
              v70 = *(*(v57 + 16) + 32);
              *v37 = v70;
              v40 = v155;
              v152(v37, v153, v155);
              v71 = v70;
              v19 = _dispatchPreconditionTest(_:)();
              v151(v37, v40);
              if (v19)
              {
                v72 = sub_10002C280(v148, v57);
                if (v72)
                {
                  v147 = sub_100024DD4(v72, v73);
                  v148 = v74;
                  v40 = v156;
                  if (!__OFADD__(v156, 5))
                  {
                    v131 = sub_100028894(v156 + 5, v57);
                    if (!__OFADD__(v40, 6))
                    {
                      v19 = v75;
                      v76 = sub_100028894(v40 + 6, v57);
                      if (v77)
                      {
                        sub_100026028(v56, type metadata accessor for CRLBoardIdentifier);
                        sub_10002640C(v132, v133);
                        sub_10002640C(v64, v65);
                        v68 = v147;
                        v69 = v148;
                        goto LABEL_13;
                      }

                      v143 = v65;
                      v144 = v64;
                      v130 = v76;
                      v79 = v156 + 7;
                      if (!__OFADD__(v156, 7))
                      {
                        v80 = v57;
                        v81 = *(*(v57 + 16) + 32);
                        *v37 = v81;
                        v40 = v155;
                        v152(v37, v153, v155);
                        v82 = v81;
                        LOBYTE(v81) = _dispatchPreconditionTest(_:)();
                        v151(v37, v40);
                        if (v81)
                        {
                          v83 = sub_10002C280(v79, v80);
                          v41 = v133;
                          if (v83)
                          {
                            v37 = sub_100024DD4(v83, v84);
                            v86 = v85;
                          }

                          else
                          {
                            v37 = 0;
                            v86 = 0xF000000000000000;
                          }

                          v40 = v143;
                          if (!__OFADD__(v156, 8))
                          {
                            v87 = sub_100028894(v156 + 8, v80);
                            if (v88)
                            {
                              sub_100026028(v149, type metadata accessor for CRLBoardIdentifier);
                              sub_10002640C(v132, v41);
                              sub_10002640C(v144, v40);
                              sub_10002640C(v147, v148);
                              sub_100025870(v37, v86);

                              return 0;
                            }

                            v154 = v87;
                            v155 = v37;
                            v89 = v135;
                            sub_10000C83C(v149, v135, type metadata accessor for CRLBoardIdentifier);
                            type metadata accessor for CRLUserBoardMetadataDatabaseRow(0);
                            v90 = v86;
                            v91 = swift_allocObject();
                            v92 = (v91 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_syncData);
                            *(v91 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_syncData) = xmmword_101486780;
                            sub_10000C83C(v89, v91 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
                            v93 = (v91 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_crdtData);
                            v94 = v144;
                            *v93 = v144;
                            v93[1] = v40;
                            *(v91 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_isFavorite) = v146 & 1;
                            *(v91 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_enableCollaboratorCursors) = v145 & 1;
                            v95 = (v91 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_viewStateData);
                            v97 = v147;
                            v96 = v148;
                            *v95 = v147;
                            v95[1] = v96;
                            v98 = v91 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_lastOpenCrashedVersion;
                            *v98 = v131;
                            *(v98 + 8) = v19 & 1;
                            *(v91 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_unsyncedChanges) = v130;
                            v99 = v92[1];
                            v153 = *v92;
                            sub_100024E98(v94, v40);
                            sub_100024E98(v97, v96);
                            v100 = v155;
                            sub_100024E84(v155, v90);
                            *v92 = v100;
                            v92[1] = v90;
                            v152 = v90;
                            sub_100025870(v153, v99);
                            *(v91 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_minRequiredVersionForFullFidelity) = v154;
                            sub_100024E98(v94, v40);
                            v101 = sub_1000066D0(&unk_101A22E20, type metadata accessor for CRLUserBoardMetadataCRDTData, byte_1014DCCE0);
                            v102 = v138;
                            v103 = v141;
                            v154 = v101;
                            CRDT.init(serializedData:)();
                            v156 = v91;
                            v119 = *(v142 + 56);
                            v119(v102, 0, 1, v103);
                            v120 = v136;
                            sub_100025668(v102, v136, type metadata accessor for CRLUserBoardMetadataCRDTData);
                            sub_1005B981C(&qword_101A2C810, &unk_101480B50);
                            CRRegister.wrappedValue.getter();
                            sub_100026028(v120, type metadata accessor for CRLUserBoardMetadataCRDTData);
                            *(v91 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_isCanvasDotGridEnabled) = v157;
                            v121 = v143;
LABEL_34:
                            sub_100024E98(v144, v121);
                            v122 = v139;
                            CRDT.init(serializedData:)();
                            v119(v122, 0, 1, v103);
                            v123 = v122;
                            v124 = v137;
                            sub_100025668(v123, v137, type metadata accessor for CRLUserBoardMetadataCRDTData);
                            sub_1005B981C(&qword_101A2C810, &unk_101480B50);
                            CRRegister.wrappedValue.getter();
                            sub_100026028(v124, type metadata accessor for CRLUserBoardMetadataCRDTData);
                            *(v156 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_isConnectorModeEnabled) = v157;
                            v125 = v144;
                            sub_100024E98(v144, v121);
                            v126 = v140;
                            CRDT.init(serializedData:)();
                            v127 = v132;
                            v119(v126, 0, 1, v103);
                            v128 = v134;
                            sub_100025668(v126, v134, type metadata accessor for CRLUserBoardMetadataCRDTData);
                            sub_1005B981C(&qword_101A2C810, &unk_101480B50);
                            CRRegister.wrappedValue.getter();

                            sub_100025870(v155, v152);
                            sub_10002640C(v147, v148);
                            sub_10002640C(v125, v121);
                            sub_10002640C(v127, v133);
                            sub_100026028(v128, type metadata accessor for CRLUserBoardMetadataCRDTData);
                            sub_100026028(v135, type metadata accessor for CRLBoardIdentifier);
                            sub_100026028(v149, type metadata accessor for CRLBoardIdentifier);
                            result = v156;
                            *(v156 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_isScenesNavigatorOpen) = v157;
                            return result;
                          }

LABEL_46:
                          __break(1u);
                          swift_once();
                          v104 = static OS_os_log.crlAssert;
                          sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
                          inited = swift_initStackObject();
                          *(inited + 16) = xmmword_10146CA70;
                          *(inited + 56) = &type metadata for Int32;
                          *(inited + 64) = &protocol witness table for Int32;
                          *(inited + 32) = v40;
                          v106 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
                          *(inited + 96) = v106;
                          v107 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
                          *(inited + 104) = v107;
                          *(inited + 72) = v19;
                          *(inited + 136) = &type metadata for String;
                          v108 = sub_1000053B0();
                          *(inited + 112) = v41;
                          *(inited + 120) = v37;
                          *(inited + 176) = &type metadata for UInt;
                          *(inited + 144) = v108;
                          *(inited + 152) = 92;
                          v109 = v157;
                          *(inited + 216) = v106;
                          *(inited + 224) = v107;
                          *(inited + 184) = &protocol witness table for UInt;
                          *(inited + 192) = v109;
                          v110 = v19;
                          v111 = v109;
                          v112 = static os_log_type_t.error.getter();
                          sub_100005404(v104, &_mh_execute_header, v112, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
                          swift_setDeallocating();
                          sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
                          swift_arrayDestroy();
                          v113 = static os_log_type_t.error.getter();
                          sub_100005404(v104, &_mh_execute_header, v113, "Unable to deserialize user board metadata.", 42, 2, _swiftEmptyArrayStorage);

                          type metadata accessor for __VaListBuilder();
                          v114 = swift_allocObject();
                          v114[2] = 8;
                          v114[3] = 0;
                          v114[4] = 0;
                          v114[5] = 0;
                          v115 = __VaListBuilder.va_list()();
                          StaticString.description.getter("init(boardIdentifier:crdtData:isFavorite:enableCollaboratorCursors:viewStateData:lastOpenCrashedVersion:unsyncedChanges:syncData:isCanvasDotGridEnabled:isConnectorModeEnabled:isScenesNavigatorOpen:minRequiredVersionForFullFidelity:)", 232, 2);
                          v116 = String._bridgeToObjectiveC()();

                          StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLUserBoardMetadataDatabaseRow.swift", 103, 2);
                          v117 = String._bridgeToObjectiveC()();

                          StaticString.description.getter("Unable to deserialize user board metadata.", 42, 2);
                          v118 = String._bridgeToObjectiveC()();

                          [v151 handleFailureInFunction:v116 file:v117 lineNumber:92 isFatal:0 format:v118 args:v115];

                          *(v156 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_isCanvasDotGridEnabled) = 1;
                          v121 = v143;
                          v103 = v141;
                          v119 = v153;
                          goto LABEL_34;
                        }

LABEL_45:
                        __break(1u);
                        goto LABEL_46;
                      }

LABEL_44:
                      __break(1u);
                      goto LABEL_45;
                    }

LABEL_43:
                    __break(1u);
                    goto LABEL_44;
                  }

LABEL_42:
                  __break(1u);
                  goto LABEL_43;
                }

                sub_10002640C(v64, v65);
LABEL_22:
                sub_10002640C(v132, v133);

                sub_100026028(v56, type metadata accessor for CRLBoardIdentifier);
                return 0;
              }

LABEL_41:
              __break(1u);
              goto LABEL_42;
            }

LABEL_40:
            __break(1u);
            goto LABEL_41;
          }

LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  return 0;
}

uint64_t sub_100EA1DC0(uint64_t a1, char a2)
{
  sub_1005B981C(&qword_101A21C58, &qword_1014B6520);

  return sub_100E12F5C(a1, a2 & 1);
}

double sub_100EA1E60(unint64_t a1)
{
  if (a1 >= 2)
  {
  }

  return result;
}

uint64_t sub_100EA2038()
{
  v1 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(v0 + v3);
  v5 = *(v0 + 16);
  v6 = *(v0 + (v3 & 0xFFFFFFFFFFFFFFF8) + 8);
  v7 = *(v0 + (((v3 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8));

  return sub_100E193D4(v5, v0 + v2, v4, v6, v7);
}

uint64_t sub_100EA2238(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(void, unint64_t, unint64_t, uint64_t))
{
  v9 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v10 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(sub_1005B981C(a1, a2) - 8);
  return a4(*(v4 + 16), v4 + v10, v4 + ((v10 + v11 + *(v12 + 80)) & ~*(v12 + 80)), a3);
}

uint64_t sub_100EA2350()
{
  sub_1005B981C(&unk_101A050F0, &unk_10146CFE0);
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];

  return sub_100E282C8(v1, v2, v3);
}

uint64_t sub_100EA2420()
{
  v1 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for Date() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v0 + 16);
  v7 = *(v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100E13864(v6, v0 + v2, v0 + v5, v7);
}

unint64_t sub_100EA2550()
{
  result = qword_101A21DD8;
  if (!qword_101A21DD8)
  {
    result = swift_getWitnessTable(byte_101474A5C, &type metadata for CRLBoardViewState, v0, v1);
    atomic_store(result, &qword_101A21DD8);
  }

  return result;
}

uint64_t sub_100EA25EC(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D4C8;

  return sub_10072D200(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100EA2730()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = (v0 + v3);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v0 + v4);

  return sub_100E2D6F4(v5, v0 + v2, v7, v8, v9);
}

uint64_t sub_100EA2840(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, unint64_t, uint64_t))
{
  v7 = *(a1(0) - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_1005B981C(a2, a3) - 8);
  v11 = *(v4 + 16);
  v12 = v4 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80));

  return a4(v11, v4 + v8, v12);
}

uint64_t sub_100EA2998(uint64_t a1)
{
  v2 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1005B981C(&unk_101A22E60, &qword_101489688);
  __chkstk_darwin(v5 - 8);
  v7 = &v18[-v6];
  v8 = type metadata accessor for CRLUserBoardMetadataCRDTData(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v14 = &v18[-v13];
  sub_100024E98(*(a1 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_crdtData), *(a1 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_crdtData + 8));
  sub_1000066D0(&unk_101A22E20, type metadata accessor for CRLUserBoardMetadataCRDTData, byte_1014DCCE0);
  CRDT.init(serializedData:)();
  (*(v9 + 56))(v7, 0, 1, v8);
  sub_100025668(v7, v14, type metadata accessor for CRLUserBoardMetadataCRDTData);
  sub_10000C83C(a1 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_boardIdentifier, v4, type metadata accessor for CRLBoardIdentifier);
  sub_100025668(v14, v11, type metadata accessor for CRLUserBoardMetadataCRDTData);
  v15 = *(a1 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_minRequiredVersionForFullFidelity);

  type metadata accessor for CRLUserBoardMetadataData(0);
  v16 = swift_allocObject();
  sub_100025668(v4, v16 + OBJC_IVAR____TtC8Freeform24CRLUserBoardMetadataData_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
  sub_100025668(v11, v16 + OBJC_IVAR____TtC8Freeform24CRLUserBoardMetadataData_crdtData, type metadata accessor for CRLUserBoardMetadataCRDTData);
  result = v16;
  *(v16 + OBJC_IVAR____TtC8Freeform24CRLUserBoardMetadataData_minRequiredVersionForFullFidelity) = v15;
  return result;
}

uint64_t sub_100EA2D30()
{
  v1 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1005B981C(&unk_101A050F0, &unk_10146CFE0);
  v4 = *(v0 + 16);

  return sub_100E15E5C(v4, v0 + v2, v0 + v3);
}

unint64_t sub_100EA2F30()
{
  result = qword_101A21E90;
  if (!qword_101A21E90)
  {
    result = swift_getWitnessTable(byte_10147B134, &type metadata for AnyCRLCommandChangeContext, v0, v1);
    atomic_store(result, &qword_101A21E90);
  }

  return result;
}

uint64_t sub_100EA313C(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100E27568(a1, a2, v6);
}

uint64_t sub_100EA31D4(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(sub_1005B981C(&unk_101A050F0, &unk_10146CFE0) - 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = v1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));

  return a1(v3, v4, v5);
}

uint64_t sub_100EA32CC(uint64_t a1)
{

  if (*(v1 + 32))
  {
  }

  return _swift_deallocObject(v1, a1, 7);
}

unint64_t sub_100EA3410()
{
  result = qword_101A21F28;
  if (!qword_101A21F28)
  {
    result = swift_getWitnessTable(a9_6, &type metadata for CRLBoardDataStore.PartialRecordConversionError, v0, v1);
    atomic_store(result, &qword_101A21F28);
  }

  return result;
}

unint64_t sub_100EA3464()
{
  result = qword_101A21F38;
  if (!qword_101A21F38)
  {
    result = swift_getWitnessTable(aY_17, &type metadata for CRLBoardDataStore.PersistenceError, v0, v1);
    atomic_store(result, &qword_101A21F38);
  }

  return result;
}

uint64_t sub_100EA34DC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100F05124(*(a1 + 8));
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_100EA3530()
{
  v1 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  type metadata accessor for CRLBoardIdentifierStorage(0);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

double sub_100EA364C()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v5 = *(v13 - 8);
  __chkstk_darwin(v13);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[1] = *&v0[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue];
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = sub_100EA5524;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_1018A67C0;
  v9 = _Block_copy(aBlock);
  v10 = v0;
  static DispatchQoS.unspecified.getter();
  v14 = _swiftEmptyArrayStorage;
  sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400, &unk_10146CF00);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400, &unk_10146CF00, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v9);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v13);

  return result;
}

unint64_t sub_100EA391C(unint64_t result)
{
  if (result >= 0x13)
  {
    return 19;
  }

  return result;
}

Class sub_100EA392C(void *a1, void *a2)
{
  v34[0] = a1;
  v34[1] = a2;
  sub_100017CD8();
  v2 = StringProtocol.components<A>(separatedBy:)();
  v3 = v2;
  if (*(v2 + 16) == 2)
  {
LABEL_7:
    v27 = v3[4];
    v26 = v3[5];
    v28 = v3[6];
    v29 = v3[7];

    sub_100006370(0, &qword_1019F69D0, CKRecordZoneID_ptr);
    v30._countAndFlagsBits = v27;
    v30._object = v26;
    v31._countAndFlagsBits = v28;
    v31._object = v29;
    return CKRecordZoneID.init(zoneName:ownerName:)(v30, v31).super.isa;
  }

  else
  {
    v33 = *(v2 + 16);
    v32 = objc_opt_self();
    LODWORD(v4) = [v32 _atomicIncrementAssertCount];
    v34[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v34, "Tried to deserialized sqliteString for CKRecordZone.ID that has incorrect number of components", 94, 2u);
    StaticString.description.getter("crl_deserialize(fromSqliteRepresentation:)", 42, 2);
    v5 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
    v6 = String._bridgeToObjectiveC()();

    v7 = [v6 lastPathComponent];

    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_10;
    }

    while (1)
    {
      v11 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v4;
      v13 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
      *(inited + 96) = v13;
      v14 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
      *(inited + 104) = v14;
      *(inited + 72) = v5;
      *(inited + 136) = &type metadata for String;
      v15 = sub_1000053B0();
      *(inited + 112) = v8;
      *(inited + 120) = v10;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v15;
      *(inited + 152) = 12743;
      v16 = v34[0];
      *(inited + 216) = v13;
      *(inited + 224) = v14;
      *(inited + 192) = v16;
      v17 = v5;
      v18 = v16;
      v19 = static os_log_type_t.error.getter();
      sub_100005404(v11, &_mh_execute_header, v19, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v20 = static os_log_type_t.error.getter();
      sub_100005404(v11, &_mh_execute_header, v20, "Tried to deserialized sqliteString for CKRecordZone.ID that has incorrect number of components", 94, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v5 = swift_allocObject();
      v5[2] = 8;
      v5[3] = 0;
      v5[4] = 0;
      v5[5] = 0;
      v4 = __VaListBuilder.va_list()();
      StaticString.description.getter("crl_deserialize(fromSqliteRepresentation:)", 42, 2);
      v21 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
      v22 = String._bridgeToObjectiveC()();

      StaticString.description.getter("Tried to deserialized sqliteString for CKRecordZone.ID that has incorrect number of components", 94, 2);
      v23 = String._bridgeToObjectiveC()();

      [v32 handleFailureInFunction:v21 file:v22 lineNumber:12743 isFatal:0 format:v23 args:v4];

      if (v33 < 2)
      {
        break;
      }

      v25 = v3[2];
      if (v25)
      {
        if (v25 != 1)
        {
          goto LABEL_7;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
LABEL_10:
      swift_once();
    }

    return 0;
  }
}

Class sub_100EA3DBC(char *a1, uint64_t a2)
{
  v39 = a2;
  v37[0] = 58;
  v37[1] = 0xE100000000000000;
  sub_100017CD8();
  v2 = StringProtocol.components<A>(separatedBy:)();
  v38 = v2;
  if (*(v2 + 16) == 3)
  {
    v3 = 3;
  }

  else
  {
    v36 = objc_opt_self();
    v4 = [v36 _atomicIncrementAssertCount];
    v37[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v37, "Tried to deserialized sqliteRepresentation for CKRecord.ID that has incorrect number of components", 98, 2u);
    StaticString.description.getter("crl_deserialize(fromSqliteRepresentation:)", 42, 2);
    v5 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
    v6 = String._bridgeToObjectiveC()();

    v7 = [v6 lastPathComponent];

    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v11 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v4;
    v13 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v13;
    v14 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
    *(inited + 104) = v14;
    *(inited + 72) = v5;
    *(inited + 136) = &type metadata for String;
    v15 = sub_1000053B0();
    *(inited + 112) = v8;
    *(inited + 120) = v10;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v15;
    *(inited + 152) = 12719;
    v16 = v37[0];
    *(inited + 216) = v13;
    *(inited + 224) = v14;
    *(inited + 192) = v16;
    v17 = v5;
    v18 = v16;
    v19 = static os_log_type_t.error.getter();
    sub_100005404(v11, &_mh_execute_header, v19, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v20 = static os_log_type_t.error.getter();
    sub_100005404(v11, &_mh_execute_header, v20, "Tried to deserialized sqliteRepresentation for CKRecord.ID that has incorrect number of components", 98, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v21 = swift_allocObject();
    v21[2] = 8;
    v21[3] = 0;
    v21[4] = 0;
    v21[5] = 0;
    v22 = __VaListBuilder.va_list()();
    StaticString.description.getter("crl_deserialize(fromSqliteRepresentation:)", 42, 2);
    v23 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
    v24 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Tried to deserialized sqliteRepresentation for CKRecord.ID that has incorrect number of components", 98, 2);
    v25 = String._bridgeToObjectiveC()();

    [v36 handleFailureInFunction:v23 file:v24 lineNumber:12719 isFatal:0 format:v25 args:v22];

    v3 = *(v2 + 16);
    if (v3 < 3)
    {
      goto LABEL_12;
    }
  }

  v27 = *(v2 + 32);
  v26 = *(v2 + 40);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38 = v2;
  if (!isUniquelyReferenced_nonNull_native || (v3 - 1) > *(v2 + 24) >> 1)
  {
    v2 = sub_100024CBC(isUniquelyReferenced_nonNull_native, v3, 1, v2);
    v38 = v2;
  }

  sub_10067DBF8(0, 1, 0);
  v37[0] = v2;

  sub_1005B981C(&unk_1019F4D80, &unk_10146CF20);
  sub_10001A2F8(&qword_1019F61E0, &unk_1019F4D80, &unk_10146CF20, &protocol conformance descriptor for [A]);
  v29 = BidirectionalCollection<>.joined(separator:)();
  v31 = v30;

  v32 = sub_100EA392C(v29, v31);

  if (v32)
  {
    sub_100006370(0, &qword_1019F6E98, CKRecordID_ptr);
    v33._countAndFlagsBits = v27;
    v33._object = v26;
    isa = CKRecordID.init(recordName:zoneID:)(v33, v32).super.isa;

    return isa;
  }

LABEL_12:

  return 0;
}

uint64_t sub_100EA4328()
{
  if (*(v0 + 34))
  {
    v1 = 0x10000;
  }

  else
  {
    v1 = 0;
  }

  if (*(v0 + 33))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_100E5FBAC(*(v0 + 16), *(v0 + 24), v2 | *(v0 + 32) | v1) & 1;
}

uint64_t sub_100EA4424@<X0>(_BYTE *a1@<X8>)
{
  v4 = *(v1 + 32);
  v6[1] = *(v1 + 16);
  v6[2] = v4;
  result = sub_10002FA9C(sub_100EA61C0, v6);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t sub_100EA4480()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10002D4C8;

  return sub_100E2C868(v2, v3, v4);
}

uint64_t sub_100EA4578()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10002D4C8;

  return sub_100E2BB74(v2, v3, v4);
}

uint64_t sub_100EA466C()
{
  v1 = sub_1005B981C(&unk_101A050F0, &unk_10146CFE0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100EA4788()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10002D4C8;

  return sub_100E2ABD8(v2, v3, v4);
}

uint64_t sub_100EA483C()
{
  v1 = *(type metadata accessor for CRLBoardDataStore.KeyValueTableKey(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(v1 + 64) + v2 + v3) & ~v2;
  sub_1005B981C(&unk_101A050F0, &unk_10146CFE0);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);

  return sub_100E2A41C(v5, v6, v0 + v3, v0 + v4);
}

uint64_t sub_100EA494C()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100EA4994()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10002D4C8;

  return sub_100E29BCC(v2, v3, v4);
}

uint64_t sub_100EA4A50()
{
  v1 = *(type metadata accessor for CRLBoardDataStore.KeyValueTableKey(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1005B981C(&unk_101A050F0, &unk_10146CFE0);
  v4 = *(v0 + 16);
  v5 = *(v0 + v3);

  return sub_100E29744(v4, v0 + v2, v5);
}

uint64_t sub_100EA4B68()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10002D4C8;

  return sub_100E28CF4(v2, v3, v5, v4);
}