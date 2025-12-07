uint64_t sub_100049EA8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for ImpressionModel(0);
  v9 = __chkstk_darwin(v8);
  v56 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v55 = &v48 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v15 = a2;
  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v16 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v14 != -1)
  {
    v17 = (a2 - a1) / v14;
    v59 = a1;
    v18 = a4;
    v58 = a4;
    if (v17 < v16 / v14)
    {
      v19 = v17 * v14;
      if (a4 < a1 || a1 + v19 <= a4)
      {
        v20 = v15;
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (a4 == a1)
        {
          goto LABEL_17;
        }

        v20 = v15;
        swift_arrayInitWithTakeBackToFront();
      }

      v15 = v20;
      v18 = a4;
LABEL_17:
      v52 = v18 + v19;
      v57 = v18 + v19;
      if (v19 >= 1 && v15 < a3)
      {
        v51 = a3;
        do
        {
          v25 = v14;
          v26 = v55;
          v27 = v15;
          sub_10004C9B4(v15, v55);
          v28 = v56;
          sub_10004C9B4(v18, v56);
          v29 = v8;
          v30 = *(v8 + 48);
          v31 = *(v26 + v30);
          v32 = *(v28 + v30);
          sub_10004CA18(v28);
          sub_10004CA18(v26);
          if (v32 >= v31)
          {
            v54 = v27;
            v14 = v25;
            if (a1 < v18 || a1 >= v18 + v25)
            {
              v8 = v29;
              swift_arrayInitWithTakeFrontToBack();
              v33 = v51;
            }

            else
            {
              v33 = v51;
              v8 = v29;
              if (a1 != v18)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v58 = v18 + v25;
            v18 += v25;
            v15 = v54;
          }

          else
          {
            v53 = v18;
            v14 = v25;
            if (a1 < v27 || a1 >= v27 + v25)
            {
              v8 = v29;
              swift_arrayInitWithTakeFrontToBack();
              v15 = v27 + v25;
              v33 = v51;
            }

            else
            {
              v33 = v51;
              v8 = v29;
              if (a1 != v27)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              v15 = v27 + v25;
            }

            v18 = v53;
          }

          a1 += v14;
          v59 = a1;
        }

        while (v18 < v52 && v15 < v33);
      }

LABEL_60:
      sub_10004A828(&v59, &v58, &v57);
      return 1;
    }

    v21 = v8;
    v22 = v16 / v14 * v14;
    if (a4 < v15 || v15 + v22 <= a4)
    {
      v23 = v15;
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (a4 == v15)
      {
LABEL_41:
        v34 = v18 + v22;
        if (v22 >= 1)
        {
          v35 = -v14;
          v36 = v18 + v22;
          v53 = v18;
          v49 = v35;
          v50 = a1;
          do
          {
            v48 = v34;
            v37 = v15 + v35;
            v54 = v15 + v35;
            v52 = v15;
            while (1)
            {
              if (v15 <= a1)
              {
                v59 = v15;
                v57 = v48;
                goto LABEL_60;
              }

              v38 = a3;
              v51 = v34;
              a3 += v35;
              v39 = v36 + v35;
              v40 = v55;
              sub_10004C9B4(v36 + v35, v55);
              v41 = v56;
              sub_10004C9B4(v37, v56);
              v42 = v21;
              v43 = *(v21 + 48);
              v44 = *(v40 + v43);
              v45 = *(v41 + v43);
              sub_10004CA18(v41);
              sub_10004CA18(v40);
              if (v45 < v44)
              {
                break;
              }

              v34 = v39;
              if (v38 < v36 || a3 >= v36)
              {
                v21 = v42;
                swift_arrayInitWithTakeFrontToBack();
                v35 = v49;
                a1 = v50;
              }

              else
              {
                v21 = v42;
                v35 = v49;
                a1 = v50;
                if (v38 != v36)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v36 = v39;
              v37 = v54;
              v15 = v52;
              if (v39 <= v53)
              {
                goto LABEL_58;
              }
            }

            if (v38 < v52 || a3 >= v52)
            {
              v47 = v54;
              v21 = v42;
              swift_arrayInitWithTakeFrontToBack();
              v15 = v47;
              a1 = v50;
              v34 = v51;
              v35 = v49;
            }

            else
            {
              v21 = v42;
              v15 = v54;
              a1 = v50;
              v34 = v51;
              v35 = v49;
              if (v38 != v52)
              {
                v46 = v54;
                swift_arrayInitWithTakeBackToFront();
                v15 = v46;
              }
            }
          }

          while (v36 > v53);
        }

LABEL_58:
        v59 = v15;
        v57 = v34;
        goto LABEL_60;
      }

      v23 = v15;
      swift_arrayInitWithTakeBackToFront();
    }

    v15 = v23;
    v18 = a4;
    goto LABEL_41;
  }

LABEL_63:
  __break(1u);
  return result;
}

uint64_t sub_10004A3B0(char *__src, char *a2, unint64_t a3, char *a4)
{
  v4 = a3;
  v5 = __src;
  v6 = a2 - __src;
  v7 = (a2 - __src) / 40;
  v8 = a3 - a2;
  v9 = (a3 - a2) / 40;
  if (v7 >= v9)
  {
    v27 = a2;
    if (a4 != a2 || &a2[40 * v9] <= a4)
    {
      v28 = a4;
      memmove(a4, a2, 40 * v9);
      a4 = v28;
    }

    v12 = &a4[40 * v9];
    v11 = a4;
    if (v8 < 40 || v27 <= v5)
    {
      v26 = v27;
      goto LABEL_36;
    }

    v51 = v5;
    v59 = a4;
    while (1)
    {
      __dst = v27;
      v29 = (v27 - 40);
      v30 = (v12 - 40);
      v31 = v4 - 40;
      while (1)
      {
        v34 = v30 + 40;
        v35 = v31;
        v36 = (v31 + 40);
        sub_10000CE28(v30, v56);
        v37 = v29;
        sub_10000CE28(v29, v53);
        v39 = v57;
        v38 = v58;
        sub_10000DA7C(v56, v57);
        v40 = (*(v38 + 16))(v39, v38);
        v42 = v54;
        v41 = v55;
        sub_10000DA7C(v53, v54);
        v43 = (*(v41 + 16))(v42, v41);
        sub_10000DB58(v53);
        sub_10000DB58(v56);
        if (v43 < v40)
        {
          break;
        }

        if (v36 != v34)
        {
          v44 = *v30;
          v45 = *(v30 + 16);
          *(v35 + 32) = *(v30 + 32);
          *v35 = v44;
          *(v35 + 16) = v45;
        }

        v32 = v30 - 40;
        v31 = v35 - 40;
        v11 = v59;
        v33 = v30 > v59;
        v30 -= 40;
        v29 = v37;
        if (!v33)
        {
          v12 = (v32 + 40);
          v26 = __dst;
          goto LABEL_36;
        }
      }

      v26 = v37;
      v4 = v35;
      if (v36 != __dst)
      {
        v46 = *v37;
        v47 = *(v37 + 1);
        *(v35 + 32) = *(v37 + 4);
        *v35 = v46;
        *(v35 + 16) = v47;
      }

      v11 = v59;
      if (v34 > v59)
      {
        v12 = (v30 + 40);
        v27 = v37;
        if (v37 > v51)
        {
          continue;
        }
      }

      v12 = (v30 + 40);
      goto LABEL_36;
    }
  }

  v11 = a4;
  if (a4 != __src || &__src[40 * v7] <= a4)
  {
    memmove(a4, __src, 40 * v7);
  }

  v12 = &v11[40 * v7];
  if (v6 < 40 || a2 >= v4)
  {
    v26 = v5;
    goto LABEL_36;
  }

  v13 = a2;
  do
  {
    v14 = v4;
    v15 = v12;
    sub_10000CE28(v13, v56);
    sub_10000CE28(v11, v53);
    v16 = v57;
    v17 = v58;
    sub_10000DA7C(v56, v57);
    v18 = (*(v17 + 16))(v16, v17);
    v19 = v54;
    v20 = v55;
    sub_10000DA7C(v53, v54);
    v21 = (*(v20 + 16))(v19, v20);
    sub_10000DB58(v53);
    sub_10000DB58(v56);
    if (v21 < v18)
    {
      v22 = v13;
      v23 = v5 == v13;
      v13 += 40;
      if (v23)
      {
        goto LABEL_14;
      }

LABEL_13:
      v24 = *v22;
      v25 = *(v22 + 1);
      *(v5 + 4) = *(v22 + 4);
      *v5 = v24;
      *(v5 + 1) = v25;
      goto LABEL_14;
    }

    v22 = v11;
    v23 = v5 == v11;
    v11 += 40;
    if (!v23)
    {
      goto LABEL_13;
    }

LABEL_14:
    v5 += 40;
    v12 = v15;
    if (v11 >= v15)
    {
      break;
    }

    v4 = v14;
  }

  while (v13 < v14);
  v26 = v5;
LABEL_36:
  v48 = ((v12 - v11) * 0x6666666666666667) >> 64;
  v49 = (v48 >> 4) + (v48 >> 63);
  if (v26 != v11 || v26 >= &v11[40 * v49])
  {
    memmove(v26, v11, 40 * v49);
  }

  return 1;
}

uint64_t sub_10004A788(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10004A814(v3);
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
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_10004A828(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for ImpressionModel(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_10004A90C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000CDE0(&qword_10023AC50, &unk_1001B7010);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_10004AA24(uint64_t a1, unsigned __int8 a2, unint64_t *a3)
{
  v5 = *a3;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v36[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v12 = &v36[-v11];
  if (v5 >= 2)
  {
    if (*(v5 + 16) && (v17 = sub_1000C3CEC(0x6C61626F6C67, 0xE600000000000000), (v18 & 1) != 0))
    {
      v19 = *(v5 + 56) + 32 * v17;
      v20 = *v19;
      v41 = *(v19 + 8);
      v42 = v20;
      v40 = *(v19 + 16);
      v16 = *(v19 + 24);
    }

    else
    {
      v41 = 0;
      v42 = 0;
      v40 = 0;
      v16 = 1024;
    }

    v21 = type metadata accessor for ImpressionModel(0);
    if (*(v5 + 16) && (v22 = sub_1000C3CEC(*(a1 + *(v21 + 32)), *(a1 + *(v21 + 32) + 8)), (v23 & 1) != 0))
    {
      v24 = *(v5 + 56) + 32 * v22;
      v13 = *v24;
      v14 = *(v24 + 8);
      v15 = *(v24 + 24);
    }

    else
    {
      v13 = 0;
      v14 = 0;
      v15 = 1024;
    }
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v41 = 0;
    v42 = 0;
    v40 = 0;
    v15 = 1024;
    v16 = 1024;
  }

  if (a2 > 1u)
  {
    v26 = 1;
  }

  else
  {
    v38 = v14;
    v39 = v13;
    if ((v16 & 0xFF00) == 0x400)
    {
      v41 = 0;
      v42 = 0;
      v40 = 0;
      v16 = 768;
    }

    v25 = a1;
    if ((v15 & 0xFF00) != 0x300)
    {
      if ((v15 & 0xFF00) == 0x400)
      {
        v38 = 0;
        v39 = 0;
        LOWORD(v15) = 768;
      }

      else
      {
        v27 = type metadata accessor for ImpressionModel(0);
        if (v15 >> 8 != 2)
        {
          v30 = *(a1 + *(v27 + 40));
          if ((v15 >> 8))
          {
            v31 = 0x6B63696C63;
          }

          else
          {
            v31 = 2003134838;
          }

          if ((v15 >> 8))
          {
            v32 = 0xE500000000000000;
          }

          else
          {
            v32 = 0xE400000000000000;
          }

          if (v30)
          {
            v33 = 0x6B63696C63;
          }

          else
          {
            v33 = 2003134838;
          }

          if (v30)
          {
            v34 = 0xE500000000000000;
          }

          else
          {
            v34 = 0xE400000000000000;
          }

          if (v31 == v33 && v32 == v34)
          {

            v26 = 0;
            return v26 & 1;
          }

          v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v26 = 0;
          v25 = a1;
          if (v37)
          {
            return v26 & 1;
          }
        }
      }
    }

    if (*(v25 + *(type metadata accessor for ImpressionModel(0) + 40)) & 1) == 0 && ((v15 & 0xFF00) == 0x300 || (v38) && (v16 & 0xFF00) != 0x300)
    {
      v39 = v42;
    }

    Date.init(timeIntervalSinceNow:)();
    Date.init(timeIntervalSince1970:)();
    v26 = static Date.> infix(_:_:)();
    v28 = *(v7 + 8);
    v28(v10, v6);
    v28(v12, v6);
  }

  return v26 & 1;
}

char *sub_10004ADEC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  v82 = a5;
  v90 = a4;
  v85 = a3;
  LODWORD(v5) = a2;
  v92 = type metadata accessor for ImpressionModel(0);
  v7 = *(v92 - 1);
  v8 = __chkstk_darwin(v92);
  v86 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v88 = &v80 - v11;
  v12 = __chkstk_darwin(v10);
  v89 = &v80 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v80 - v15;
  v17 = __chkstk_darwin(v14);
  v87 = &v80 - v18;
  __chkstk_darwin(v17);
  v20 = &v80 - v19;
  v21 = ConversionType.isInstall.getter(v5);
  v22 = 6;
  if ((v21 & 1) == 0)
  {
    v22 = 1;
  }

  v81 = v22;
  v23 = *(a1 + 16);
  v91 = v7;
  if (v23)
  {
    v83 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v24 = a1 + v83;
    v25 = *(v7 + 72);
    v26 = _swiftEmptyArrayStorage;
    v27 = v82;
    LODWORD(v84) = v5;
    do
    {
      sub_10004C9B4(v24, v20);
      if (sub_10004AA24(v20, v5, v27))
      {
        sub_10004CA74(v20, v87);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v94 = v26;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10014705C(0, v26[2] + 1, 1);
          v27 = v82;
          v26 = v94;
        }

        v5 = v26[2];
        v29 = v26[3];
        if (v5 >= v29 >> 1)
        {
          sub_10014705C((v29 > 1), v5 + 1, 1);
          v27 = v82;
          v26 = v94;
        }

        v26[2] = v5 + 1;
        sub_10004CA74(v87, v26 + v83 + v5 * v25);
        LOBYTE(v5) = v84;
      }

      else
      {
        sub_10004CA18(v20);
      }

      v24 += v25;
      --v23;
    }

    while (v23);
  }

  else
  {
    v26 = _swiftEmptyArrayStorage;
  }

  v87 = v26[2];
  if (v87)
  {
    v30 = 0;
    v31 = _swiftEmptyArrayStorage;
    v32 = v91;
    while (1)
    {
      if (v30 >= v26[2])
      {
        __break(1u);
LABEL_69:
        __break(1u);
        goto LABEL_70;
      }

      v33 = (*(v32 + 80) + 32) & ~*(v32 + 80);
      v34 = *(v32 + 72);
      sub_10004C9B4(v26 + v33 + v34 * v30, v16);
      if (v16[v92[10]] == 1)
      {
        break;
      }

      v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v35)
      {
        goto LABEL_22;
      }

      sub_10004CA18(v16);
LABEL_17:
      if (v87 == ++v30)
      {
        goto LABEL_28;
      }
    }

LABEL_22:
    sub_10004CA74(v16, v89);
    v36 = swift_isUniquelyReferenced_nonNull_native();
    v94 = v31;
    if ((v36 & 1) == 0)
    {
      sub_10014705C(0, v31[2] + 1, 1);
      v31 = v94;
    }

    v38 = v31[2];
    v37 = v31[3];
    if (v38 >= v37 >> 1)
    {
      sub_10014705C((v37 > 1), v38 + 1, 1);
      v31 = v94;
    }

    v31[2] = v38 + 1;
    sub_10004CA74(v89, v31 + v33 + v38 * v34);
    v32 = v91;
    goto LABEL_17;
  }

  v31 = _swiftEmptyArrayStorage;
  v32 = v91;
LABEL_28:
  v94 = v31;

  v39 = v80;
  sub_1000475C4(&v94);
  if (v39)
  {
    goto LABEL_73;
  }

  v83 = 0;

  v40 = v94;
  v89 = v94[2];
  if (v89)
  {
    v41 = 0;
    v87 = v81 - 1;
    v42 = _swiftEmptyArrayStorage;
    v84 = v94;
    while (v41 < *(v40 + 16))
    {
      v43 = v40 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v41;
      v44 = (v43 + v92[11]);
      v46 = *v44;
      v45 = v44[1];
      v47 = *(v43 + v92[10]);
      v48 = *(v43 + v92[12]);
      v93 = 0;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = sub_100088544(0, *(v42 + 2) + 1, 1, v42);
      }

      v50 = *(v42 + 2);
      v49 = *(v42 + 3);
      if (v50 >= v49 >> 1)
      {
        v42 = sub_100088544((v49 > 1), v50 + 1, 1, v42);
      }

      *(v42 + 2) = v50 + 1;
      v51 = &v42[64 * v50];
      *(v51 + 4) = v46;
      *(v51 + 5) = v45;
      v51[48] = v47;
      v52 = *(&v94 + 3);
      *(v51 + 49) = v94;
      *(v51 + 13) = v52;
      v53 = v85;
      *(v51 + 7) = v41;
      *(v51 + 8) = v53;
      *(v51 + 9) = v90;
      *(v51 + 10) = v48;
      v51[88] = v93;
      if (v87 == v41)
      {

        goto LABEL_67;
      }

      ++v41;
      v32 = v91;
      v40 = v84;
      if (v89 == v41)
      {
        goto LABEL_40;
      }
    }

LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v42 = _swiftEmptyArrayStorage;
LABEL_40:

  v87 = v26[2];
  if (v87)
  {
    v54 = 0;
    v55 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v54 >= v26[2])
      {
        goto LABEL_69;
      }

      v56 = (*(v91 + 80) + 32) & ~*(v91 + 80);
      v57 = *(v91 + 72);
      v58 = v88;
      sub_10004C9B4(v26 + v56 + v57 * v54, v88);
      if ((*(v58 + v92[10]) & 1) == 0)
      {
        break;
      }

      v59 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v59)
      {
        goto LABEL_49;
      }

      sub_10004CA18(v88);
LABEL_43:
      if (v87 == ++v54)
      {
        goto LABEL_56;
      }
    }

LABEL_49:
    sub_10004CA74(v88, v86);
    v60 = swift_isUniquelyReferenced_nonNull_native();
    v94 = v55;
    if ((v60 & 1) == 0)
    {
      sub_10014705C(0, v55[2] + 1, 1);
      v55 = v94;
    }

    v62 = v55[2];
    v61 = v55[3];
    if (v62 >= v61 >> 1)
    {
      sub_10014705C((v61 > 1), v62 + 1, 1);
      v55 = v94;
    }

    v55[2] = v62 + 1;
    sub_10004CA74(v86, v55 + v56 + v62 * v57);
    goto LABEL_43;
  }

  v55 = _swiftEmptyArrayStorage;
LABEL_56:

  v94 = v55;

  v63 = v83;
  sub_1000475C4(&v94);
  v83 = v63;
  if (v63)
  {
    goto LABEL_73;
  }

  v64 = v94;
  v65 = v91;
  v88 = v94[2];
  if (!v88)
  {
LABEL_67:

    return v42;
  }

  v66 = 0;
  v87 = v81 + ~v89;
  while (v66 < *(v64 + 16))
  {
    v67 = v64 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v66;
    v68 = (v67 + v92[11]);
    v70 = *v68;
    v69 = v68[1];
    v71 = *(v67 + v92[10]);
    v72 = *(v67 + v92[12]);
    v93 = 0;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v42 = sub_100088544(0, *(v42 + 2) + 1, 1, v42);
    }

    v74 = *(v42 + 2);
    v73 = *(v42 + 3);
    if (v74 >= v73 >> 1)
    {
      v42 = sub_100088544((v73 > 1), v74 + 1, 1, v42);
    }

    v75 = v89;
    *(v42 + 2) = v74 + 1;
    v76 = &v42[64 * v74];
    *(v76 + 4) = v70;
    *(v76 + 5) = v69;
    v76[48] = v71;
    v77 = *(&v94 + 3);
    *(v76 + 49) = v94;
    *(v76 + 13) = v77;
    *(v76 + 7) = v75 + v66;
    v78 = v90;
    *(v76 + 8) = v85;
    *(v76 + 9) = v78;
    *(v76 + 10) = v72;
    v76[88] = v93;
    if ((v75 ^ v66) == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_72;
    }

    if (v87 != v66)
    {
      ++v66;
      v65 = v91;
      if (v88 != v66)
      {
        continue;
      }
    }

    goto LABEL_67;
  }

LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:

  __break(1u);
  return result;
}

char *sub_10004B658(unint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v195 = a6;
  v196 = a4;
  v202 = a5;
  v194 = type metadata accessor for Logger();
  v10 = *(v194 - 8);
  __chkstk_darwin(v194 - 8);
  v193 = v191 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000CDE0(&qword_10023A7C8, &qword_1001C17F0);
  __chkstk_darwin(v12 - 8);
  v206 = v191 - v13;
  v14 = type metadata accessor for ImpressionModel(0);
  v207 = *(v14 - 8);
  v15 = __chkstk_darwin(v14);
  v201 = v191 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v204 = v191 - v18;
  v19 = __chkstk_darwin(v17);
  v200 = v191 - v20;
  v21 = __chkstk_darwin(v19);
  v205 = (v191 - v22);
  v23 = __chkstk_darwin(v21);
  v199 = (v191 - v24);
  v25 = __chkstk_darwin(v23);
  v203 = v191 - v26;
  v27 = __chkstk_darwin(v25);
  v29 = v191 - v28;
  v30 = *(a1 + 16);
  v240 = v27;
  v192 = a2;
  if (!a2)
  {
    if (v30)
    {
      v191[0] = v10;
LABEL_41:
      v197 = (*(v207 + 80) + 32) & ~*(v207 + 80);
      v73 = a1 + v197;
      v74 = *(v207 + 72);
      v31 = _swiftEmptyArrayStorage;
      a1 = v195;
      LODWORD(v198) = a3;
      do
      {
        sub_10004C9B4(v73, v29);
        if (sub_10004AA24(v29, a3, a1))
        {
          sub_10004CA74(v29, v203);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v221 = v31;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_10014705C(0, v31[2] + 1, 1);
            a1 = v195;
            v31 = v221;
          }

          v77 = v31[2];
          v76 = v31[3];
          if (v77 >= v76 >> 1)
          {
            sub_10014705C((v76 > 1), v77 + 1, 1);
            a1 = v195;
            v31 = v221;
          }

          v31[2] = v77 + 1;
          sub_10004CA74(v203, v31 + v197 + v77 * v74);
          v14 = v240;
          LOBYTE(a3) = v198;
        }

        else
        {
          sub_10004CA18(v29);
        }

        v73 += v74;
        --v30;
      }

      while (v30);
      goto LABEL_5;
    }

LABEL_50:
    sub_10004CB40();
    swift_allocError();
    *v78 = 1;
    swift_willThrow();
    return v6;
  }

  if (!(v30 | *(a2 + 16)))
  {
    goto LABEL_50;
  }

  v191[0] = v10;
  if (v30)
  {
    goto LABEL_41;
  }

  v31 = _swiftEmptyArrayStorage;
LABEL_5:
  v32 = _swiftEmptyArrayStorage;
  v203 = v31[2];
  if (v203)
  {
    v33 = 0;
    v34 = v199;
    while (1)
    {
      if (v33 >= v31[2])
      {
        __break(1u);
LABEL_153:
        __break(1u);
        goto LABEL_154;
      }

      v35 = (*(v207 + 80) + 32) & ~*(v207 + 80);
      v36 = *(v207 + 72);
      sub_10004C9B4(v31 + v35 + v36 * v33, v34);
      if (*(v34 + *(v14 + 40)) == 1)
      {
        break;
      }

      a1 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (a1)
      {
        goto LABEL_13;
      }

      sub_10004CA18(v34);
LABEL_8:
      if (v203 == ++v33)
      {
        goto LABEL_18;
      }
    }

LABEL_13:
    sub_10004CA74(v34, v205);
    v37 = swift_isUniquelyReferenced_nonNull_native();
    *&v221 = v32;
    if ((v37 & 1) == 0)
    {
      a1 = &v221;
      sub_10014705C(0, v32[2] + 1, 1);
      v32 = v221;
    }

    v39 = v32[2];
    v38 = v32[3];
    if (v39 >= v38 >> 1)
    {
      a1 = &v221;
      sub_10014705C((v38 > 1), v39 + 1, 1);
      v32 = v221;
    }

    v32[2] = v39 + 1;
    sub_10004CA74(v205, v32 + v35 + v39 * v36);
    v14 = v240;
    v34 = v199;
    goto LABEL_8;
  }

LABEL_18:
  if (!v192)
  {
    v43 = 0;
    goto LABEL_53;
  }

  v40 = *(v192 + 16);
  if (!v40)
  {
    v43 = _swiftEmptyArrayStorage;
    goto LABEL_53;
  }

  v41 = 0;
  v42 = (v192 + 32);
  v43 = _swiftEmptyArrayStorage;
  v203 = (v192 + 32);
  do
  {
    v205 = v43;
    v44 = &v42[224 * v41];
    v45 = v41;
    while (1)
    {
      if (v45 >= v40)
      {
        goto LABEL_156;
      }

      v46 = v44[1];
      v221 = *v44;
      v222 = v46;
      v47 = v44[2];
      v48 = v44[3];
      v49 = v44[5];
      v225 = v44[4];
      v226 = v49;
      v223 = v47;
      v224 = v48;
      v50 = v44[6];
      v51 = v44[7];
      v52 = v44[9];
      v229 = v44[8];
      v230 = v52;
      v227 = v50;
      v228 = v51;
      v53 = v44[10];
      v54 = v44[11];
      v55 = v44[12];
      *(v233 + 9) = *(v44 + 201);
      v232 = v54;
      v233[0] = v55;
      v231 = v53;
      v41 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        goto LABEL_157;
      }

      if ((BYTE8(v231) & 1) == 0 && v231 == 1)
      {
        a1 = *(&v232 + 1);
        if (*(&v232 + 1))
        {
          break;
        }
      }

      sub_10000E870(&v221, &v208);
LABEL_30:
      a1 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (a1)
      {
        goto LABEL_33;
      }

      sub_10000E8CC(&v221);
      ++v45;
      v44 += 14;
      if (v41 == v40)
      {
        v43 = v205;
        goto LABEL_53;
      }
    }

    v56 = v232;
    sub_10000E870(&v221, &v208);

    v57._countAndFlagsBits = v56;
    v57._object = a1;
    v58 = _findStringSwitchCase(cases:string:)(&off_100213170, v57);

    if (v58 != 1)
    {
      goto LABEL_30;
    }

LABEL_33:
    v43 = v205;
    v59 = swift_isUniquelyReferenced_nonNull_native();
    v235[0] = v43;
    if ((v59 & 1) == 0)
    {
      a1 = v235;
      sub_1001470E0(0, v43[2] + 1, 1);
      v43 = v235[0];
    }

    v61 = v43[2];
    v60 = v43[3];
    if (v61 >= v60 >> 1)
    {
      a1 = v235;
      sub_1001470E0((v60 > 1), v61 + 1, 1);
      v43 = v235[0];
    }

    v43[2] = v61 + 1;
    v62 = &v43[28 * v61];
    v63 = v222;
    v62[2] = v221;
    v62[3] = v63;
    v64 = v223;
    v65 = v224;
    v66 = v226;
    v62[6] = v225;
    v62[7] = v66;
    v62[4] = v64;
    v62[5] = v65;
    v67 = v227;
    v68 = v228;
    v69 = v230;
    v62[10] = v229;
    v62[11] = v69;
    v62[8] = v67;
    v62[9] = v68;
    v70 = v231;
    v71 = v232;
    v72 = v233[0];
    *(v62 + 233) = *(v233 + 9);
    v62[13] = v71;
    v62[14] = v72;
    v62[12] = v70;
    v42 = v203;
  }

  while (v41 != v40);
LABEL_53:
  v238 = _swiftEmptyArrayStorage;
  v239 = _swiftEmptyArrayStorage;
  v79 = sub_10008760C(v32);

  sub_1000473C4(v79);
  if (v43)
  {
    v80 = sub_1000877A0(v43);

    sub_1000473C4(v80);
  }

  a1 = v238;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_160;
  }

  while (1)
  {
    v81 = v200;
    v82 = *(a1 + 16);
    v203 = a1;
    *&v221 = a1 + 32;
    *(&v221 + 1) = v82;
    v83 = v191[1];
    sub_100048A0C(&v221);
    v199 = v83;
    v84 = _swiftEmptyArrayStorage;
    v205 = v31[2];
    if (v205)
    {
      v85 = 0;
      while (1)
      {
        if (v85 >= v31[2])
        {
          goto LABEL_153;
        }

        v86 = (*(v207 + 80) + 32) & ~*(v207 + 80);
        v87 = *(v207 + 72);
        sub_10004C9B4(v31 + v86 + v87 * v85, v81);
        if ((*(v81 + *(v240 + 40)) & 1) == 0)
        {
          break;
        }

        a1 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (a1)
        {
          goto LABEL_65;
        }

        sub_10004CA18(v81);
LABEL_59:
        if (v205 == ++v85)
        {
          goto LABEL_70;
        }
      }

LABEL_65:
      sub_10004CA74(v81, v204);
      v88 = swift_isUniquelyReferenced_nonNull_native();
      *&v221 = v84;
      if ((v88 & 1) == 0)
      {
        a1 = &v221;
        sub_10014705C(0, v84[2] + 1, 1);
        v84 = v221;
      }

      v90 = v84[2];
      v89 = v84[3];
      if (v90 >= v89 >> 1)
      {
        a1 = &v221;
        sub_10014705C((v89 > 1), v90 + 1, 1);
        v84 = v221;
      }

      v84[2] = v90 + 1;
      sub_10004CA74(v204, v84 + v86 + v90 * v87);
      v81 = v200;
      goto LABEL_59;
    }

LABEL_70:

    if (v192)
    {
      v31 = *(v192 + 16);
      if (v31)
      {
        v91 = 0;
        v205 = (v192 + 32);
        v92 = _swiftEmptyArrayStorage;
LABEL_73:
        v93 = &v205[28 * v91];
        v94 = v91;
        while (v94 < v31)
        {
          v95 = v93[1];
          v221 = *v93;
          v222 = v95;
          v96 = v93[2];
          v97 = v93[3];
          v98 = v93[5];
          v225 = v93[4];
          v226 = v98;
          v223 = v96;
          v224 = v97;
          v99 = v93[6];
          v100 = v93[7];
          v101 = v93[9];
          v229 = v93[8];
          v230 = v101;
          v227 = v99;
          v228 = v100;
          v102 = v93[10];
          v103 = v93[11];
          v104 = v93[12];
          *(v233 + 9) = *(v93 + 201);
          v232 = v103;
          v233[0] = v104;
          v231 = v102;
          v91 = v94 + 1;
          if (__OFADD__(v94, 1))
          {
            goto LABEL_159;
          }

          if ((BYTE8(v231) & 1) != 0 || v231 != 1 || (a1 = *(&v232 + 1)) == 0)
          {
            sub_10000E870(&v221, &v208);
LABEL_84:

LABEL_85:
            v108 = swift_isUniquelyReferenced_nonNull_native();
            v235[0] = v92;
            if ((v108 & 1) == 0)
            {
              a1 = v235;
              sub_1001470E0(0, v92[2] + 1, 1);
              v92 = v235[0];
            }

            v110 = v92[2];
            v109 = v92[3];
            if (v110 >= v109 >> 1)
            {
              a1 = v235;
              sub_1001470E0((v109 > 1), v110 + 1, 1);
              v92 = v235[0];
            }

            v92[2] = v110 + 1;
            v111 = &v92[28 * v110];
            v112 = v222;
            v111[2] = v221;
            v111[3] = v112;
            v113 = v223;
            v114 = v224;
            v115 = v226;
            v111[6] = v225;
            v111[7] = v115;
            v111[4] = v113;
            v111[5] = v114;
            v116 = v227;
            v117 = v228;
            v118 = v230;
            v111[10] = v229;
            v111[11] = v118;
            v111[8] = v116;
            v111[9] = v117;
            v119 = v231;
            v120 = v232;
            v121 = v233[0];
            *(v111 + 233) = *(v233 + 9);
            v111[13] = v120;
            v111[14] = v121;
            v111[12] = v119;
            if (v91 != v31)
            {
              goto LABEL_73;
            }

            goto LABEL_93;
          }

          v105 = v232;
          sub_10000E870(&v221, &v208);

          v106._countAndFlagsBits = v105;
          v106._object = a1;
          v107 = _findStringSwitchCase(cases:string:)(&off_1002131C0, v106);

          if (v107 != 1)
          {
            goto LABEL_84;
          }

          a1 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (a1)
          {
            goto LABEL_85;
          }

          sub_10000E8CC(&v221);
          ++v94;
          v93 += 14;
          if (v91 == v31)
          {
            goto LABEL_93;
          }
        }

        goto LABEL_158;
      }

      v92 = _swiftEmptyArrayStorage;
    }

    else
    {
      v92 = 0;
    }

LABEL_93:
    v237 = _swiftEmptyArrayStorage;
    v122 = sub_10008760C(v84);

    sub_1000473C4(v122);
    if (v92)
    {
      v123 = sub_1000877A0(v92);

      sub_1000473C4(v123);
    }

    v124 = v237;
    v125 = swift_isUniquelyReferenced_nonNull_native();
    v126 = v203;
    if ((v125 & 1) == 0)
    {
      v124 = sub_10007B0F8(v124);
    }

    v127 = v206;
    v128 = v124[2];
    *&v221 = v124 + 4;
    *(&v221 + 1) = v128;
    v129 = v199;
    sub_100048A0C(&v221);
    v197 = v129;
    a1 = &v239;
    sub_1000473C4(v126);
    sub_1000473C4(v124);
    v236 = &_swiftEmptySetSingleton;
    v130 = v239;
    v205 = *(v239 + 2);
    if (!v205)
    {
      break;
    }

    v131 = 0;
    v203 = v239 + 32;
    v132 = _swiftEmptyArrayStorage;
    v204 = v239;
    while (v131 < *(v130 + 16))
    {
      sub_10000CE28(&v203[40 * v131], &v208);
      v133 = v236;
      v134 = *(&v209 + 1);
      v135 = v210;
      sub_10000DA7C(&v208, *(&v209 + 1));
      v136 = (*(v135 + 24))(v134, v135);
      v138 = v137;
      if (v133[2] && (v31 = v136, Hasher.init(_seed:)(), String.hash(into:)(), v139 = Hasher._finalize()(), a1 = (v133 + 7), v140 = -1 << *(v133 + 32), v141 = v139 & ~v140, ((*(v133 + ((v141 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v141) & 1) != 0))
      {
        v142 = ~v140;
        while (1)
        {
          v143 = (v133[6] + 16 * v141);
          v144 = *v143 == v31 && v143[1] == v138;
          if (v144 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v141 = (v141 + 1) & v142;
          if (((*(a1 + ((v141 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v141) & 1) == 0)
          {
            goto LABEL_111;
          }
        }

        v127 = v206;
      }

      else
      {
LABEL_111:

        v145 = *(&v209 + 1);
        v31 = v210;
        sub_10000DA7C(&v208, *(&v209 + 1));
        v146 = (v31[3])(v145, v31);
        sub_100021FF4(&v221, v146, v147);

        sub_10000CE28(&v208, &v221);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v132 = sub_100088774(0, v132[2] + 1, 1, v132);
        }

        v127 = v206;
        v149 = v132[2];
        v148 = v132[3];
        a1 = v149 + 1;
        if (v149 >= v148 >> 1)
        {
          v132 = sub_100088774((v148 > 1), v149 + 1, 1, v132);
        }

        v132[2] = a1;
        sub_10000DA64(&v221, &v132[5 * v149 + 4]);
      }

      ++v131;
      sub_10000DB58(&v208);
      v130 = v204;
      if (v131 == v205)
      {

        goto LABEL_118;
      }
    }

LABEL_154:
    __break(1u);
LABEL_155:
    __break(1u);
LABEL_156:
    __break(1u);
LABEL_157:
    __break(1u);
LABEL_158:
    __break(1u);
LABEL_159:
    __break(1u);
LABEL_160:
    a1 = sub_10007B0F8(a1);
  }

  v132 = _swiftEmptyArrayStorage;
LABEL_118:

  v150 = v132[2];
  if (v150 < 7)
  {
    v154 = v132;
  }

  else
  {
    if (v150 >= v150 - 6)
    {
      v151 = 6;
    }

    else
    {
      v151 = 0;
    }

    a1 = type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    v152 = swift_dynamicCastClass();
    if (!v152)
    {
      swift_unknownObjectRelease();
      v152 = _swiftEmptyArrayStorage;
    }

    v153 = v152[2];

    if (v153 == v151)
    {
      v154 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      v127 = v206;
      if (!v154)
      {
        v154 = _swiftEmptyArrayStorage;
        goto LABEL_127;
      }
    }

    else
    {
      a1 = (2 * v151) | 1;
      swift_unknownObjectRelease();
      sub_1000487E4(v132, (v132 + 4), 0, a1);
      v154 = v190;
      v127 = v206;
LABEL_127:
      swift_unknownObjectRelease();
    }
  }

  v205 = v154[2];
  if (v205)
  {
    v155 = 0;
    v31 = v154 + 4;
    v207 += 56;
    v198 = (v191[0] + 16);
    v199 = (v191[0] + 8);
    v6 = _swiftEmptyArrayStorage;
    v203 = _swiftEmptyArrayStorage;
    v156 = v240;
    v200 = v154;
    while (1)
    {
      if (v155 >= v154[2])
      {
        goto LABEL_155;
      }

      sub_10000CE28(v31, v235);
      sub_10000CE28(v235, &v221);
      sub_10000CDE0(&qword_10023BC80, &unk_1001B7000);
      if (swift_dynamicCast())
      {
        (*v207)(v127, 0, 1, v156);
        v157 = v127;
        v158 = v201;
        sub_10004CA74(v157, v201);
        v159 = *(v156 + 40);
        v160 = (v158 + *(v156 + 44));
        v161 = v156;
        v162 = *v160;
        a1 = v160[1];
        v163 = *(v158 + v159);
        v204 = *(v158 + *(v161 + 48));
        v234[0] = 0;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_100088544(0, *(v6 + 2) + 1, 1, v6);
        }

        v165 = *(v6 + 2);
        v164 = *(v6 + 3);
        v166 = v6;
        if (v165 >= v164 >> 1)
        {
          v166 = sub_100088544((v164 > 1), v165 + 1, 1, v6);
        }

        sub_10004CA18(v201);
        sub_10000DB58(v235);
        *(v166 + 2) = v165 + 1;
        v6 = v166;
        v167 = &v166[64 * v165];
        *(v167 + 4) = v162;
        *(v167 + 5) = a1;
        v167[48] = v163;
        v168 = *(&v208 + 3);
        *(v167 + 49) = v208;
        *(v167 + 13) = v168;
        v169 = v196;
        *(v167 + 7) = v155;
        *(v167 + 8) = v169;
        v170 = v204;
        *(v167 + 9) = v202;
        *(v167 + 10) = v170;
        v167[88] = v234[0];
        v127 = v206;
        v156 = v240;
      }

      else
      {
        (*v207)(v127, 1, 1, v156);
        sub_10004CAD8(v127);
        sub_10000CE28(v235, v234);
        if (swift_dynamicCast())
        {
          v216 = v229;
          v217 = v230;
          v218 = v231;
          v219 = v232;
          v212 = v225;
          v213 = v226;
          v214 = v227;
          v215 = v228;
          v208 = v221;
          v209 = v222;
          v210 = v223;
          v211 = v224;
          v220 = *(v233 + 9);
          v234[40] = 0;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v203 = sub_100088650(0, *(v203 + 2) + 1, 1, v203);
          }

          v172 = *(v203 + 2);
          v171 = *(v203 + 3);
          a1 = v172 + 1;
          if (v172 >= v171 >> 1)
          {
            v203 = sub_100088650((v171 > 1), v172 + 1, 1, v203);
          }

          sub_10000DB58(v235);
          v173 = v203;
          *(v203 + 2) = a1;
          v174 = &v173[224 * v172];
          v175 = v208;
          v176 = v209;
          v177 = v211;
          *(v174 + 4) = v210;
          *(v174 + 5) = v177;
          *(v174 + 2) = v175;
          *(v174 + 3) = v176;
          v178 = v212;
          v179 = v213;
          v180 = v215;
          *(v174 + 8) = v214;
          *(v174 + 9) = v180;
          *(v174 + 6) = v178;
          *(v174 + 7) = v179;
          v181 = v216;
          v182 = v217;
          v183 = v219;
          *(v174 + 12) = v218;
          *(v174 + 13) = v183;
          *(v174 + 10) = v181;
          *(v174 + 11) = v182;
          *(v174 + 28) = v155;
          v174[232] = 0;
          *(v174 + 233) = v220;
          goto LABEL_133;
        }

        v204 = v6;
        v184 = Logger.general.unsafeMutableAddressor();
        v186 = v193;
        v185 = v194;
        (*v198)(v193, v184, v194);
        a1 = Logger.logObject.getter();
        v187 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(a1, v187))
        {
          v188 = swift_slowAlloc();
          *v188 = 0;
          _os_log_impl(&_mh_execute_header, a1, v187, "Could not convert impression into either AK or SKAN Impression, wat?", v188, 2u);
          v154 = v200;

          (*v199)(v186, v185);
          sub_10000DB58(v235);
          v127 = v206;
          v6 = v204;
          goto LABEL_133;
        }

        (*v199)(v186, v185);
        sub_10000DB58(v235);
        v127 = v206;
        v6 = v204;
      }

      v154 = v200;
LABEL_133:
      v155 = (v155 + 1);
      v31 += 5;
      if (v205 == v155)
      {
        goto LABEL_150;
      }
    }
  }

  v6 = _swiftEmptyArrayStorage;
  v203 = _swiftEmptyArrayStorage;
LABEL_150:

  return v6;
}

uint64_t sub_10004C9B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImpressionModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004CA18(uint64_t a1)
{
  v2 = type metadata accessor for ImpressionModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004CA74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImpressionModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004CAD8(uint64_t a1)
{
  v2 = sub_10000CDE0(&qword_10023A7C8, &qword_1001C17F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10004CB40()
{
  result = qword_10023AC40;
  if (!qword_10023AC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023AC40);
  }

  return result;
}

__n128 sub_10004CBA8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10004CBC4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_10004CC0C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10004CC6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 201) = *(a2 + 201);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_10004CCB0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 217))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10004CCF8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 216) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 217) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 217) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10004CD80(uint64_t a1)
{
  result = sub_10004CB40();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10004CDAC()
{
  result = qword_10023AC58;
  if (!qword_10023AC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023AC58);
  }

  return result;
}

unint64_t sub_10004CE00()
{
  result = qword_10023AC68;
  if (!qword_10023AC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023AC68);
  }

  return result;
}

unint64_t sub_10004CE54()
{
  result = qword_10023AC70;
  if (!qword_10023AC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023AC70);
  }

  return result;
}

unint64_t sub_10004CEA8()
{
  result = qword_10023AC80;
  if (!qword_10023AC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023AC80);
  }

  return result;
}

unint64_t sub_10004CEFC()
{
  result = qword_10023AC88;
  if (!qword_10023AC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023AC88);
  }

  return result;
}

unint64_t sub_10004CF50(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100214130, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10004CF9C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_10000CDE0(&qword_10023ACA0, &qword_1001B7268);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - v7;
  sub_10000DA7C(a1, a1[3]);
  sub_10004CE00();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000DB58(a1);
  }

  LOBYTE(v33[0]) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  v29 = v9;
  LOBYTE(v30) = 1;
  sub_10004DC18();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v12 = LOBYTE(v33[0]);
  LOBYTE(v33[0]) = 2;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v27 = v12;
  v26 = v13;
  LOBYTE(v33[0]) = 3;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v28 = v15;
  v25 = v14;
  v41 = 4;
  v16 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v18 = v17;
  v19 = v16;
  (*(v6 + 8))(v8, v5);
  v18 &= 1u;
  v40 = v18;
  v20 = v28;
  *&v30 = v29;
  *(&v30 + 1) = v11;
  LOBYTE(v31) = v27;
  v22 = v25;
  v21 = v26;
  *(&v31 + 1) = v26;
  *v32 = v25;
  *&v32[8] = v28;
  *&v32[16] = v19;
  v32[24] = v18;
  sub_10000E7C0(&v30, v33);
  sub_10000DB58(a1);
  v33[0] = v29;
  v33[1] = v11;
  v34 = v27;
  v35 = v21;
  v36 = v22;
  v37 = v20;
  v38 = v19;
  v39 = v18;
  result = sub_10000E81C(v33);
  v24 = v31;
  *a2 = v30;
  a2[1] = v24;
  a2[2] = *v32;
  *(a2 + 41) = *&v32[9];
  return result;
}

unint64_t sub_10004D2B4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1002141C8, v2);

  if (v3 >= 0x10)
  {
    return 16;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10004D300@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_10000CDE0(&qword_10023AC90, &qword_1001B7260);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v41 - v7;
  v9 = a1[3];
  v122 = a1;
  sub_10000DA7C(a1, v9);
  sub_10004CEA8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000DB58(v122);
  }

  v10 = v6;
  LOBYTE(v80[0]) = 0;
  v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v14 = v13;
  LOBYTE(v80[0]) = 1;
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v80[0]) = 2;
  v61 = KeyedDecodingContainer.decode(_:forKey:)();
  v65 = v16;
  LOBYTE(v80[0]) = 3;
  v60 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v121 = v17 & 1;
  LOBYTE(v80[0]) = 4;
  v59 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v119 = v18 & 1;
  LOBYTE(v80[0]) = 5;
  v58 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v64 = v19;
  LOBYTE(v80[0]) = 6;
  v57 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v63 = v20;
  LOBYTE(v80[0]) = 7;
  v56 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v80[0]) = 8;
  v55 = KeyedDecodingContainer.decode(_:forKey:)();
  v62 = v21;
  v66 = 0;
  v53 = v15;
  LOBYTE(v80[0]) = 9;
  v54 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v66 = 0;
  v117 = v22 & 1;
  LOBYTE(v80[0]) = 10;
  v52 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v66 = 0;
  v24 = v23;
  LOBYTE(v80[0]) = 11;
  v50 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v66 = 0;
  v115 = v25 & 1;
  LOBYTE(v80[0]) = 12;
  *&v49 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(&v49 + 1) = v26;
  v51 = 0;
  LOBYTE(v80[0]) = 13;
  v48 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v66 = 0;
  v113 = v27 & 1;
  LOBYTE(v67) = 14;
  sub_10004DBC4();
  v28 = v66;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v66 = v28;
  if (v28)
  {
    (*(v10 + 8))(v8, v5);
    sub_10000DB58(v122);

    if (!v51)
    {
    }
  }

  else
  {
    v47 = LOBYTE(v80[0]);
    v109 = 15;
    v46 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v66 = 0;
    v30 = v29;
    (*(v10 + 8))(v8, v5);
    v110 = v30 & 1;
    *&v67 = v12;
    *(&v67 + 1) = v14;
    v31 = v53;
    v33 = v60;
    v32 = v61;
    *&v68 = v53;
    *(&v68 + 1) = v61;
    v34 = v65;
    *&v69 = v65;
    *(&v69 + 1) = v60;
    HIDWORD(v41) = v121;
    LOBYTE(v70) = v121;
    *(&v70 + 1) = v59;
    v43 = v119;
    LOBYTE(v71) = v119;
    *(&v71 + 1) = v58;
    *&v72 = v64;
    *(&v72 + 1) = v57;
    *&v73 = v63;
    *(&v73 + 1) = v56;
    *&v74 = v55;
    *(&v74 + 1) = v62;
    *&v75 = v54;
    v44 = v117;
    BYTE8(v75) = v117;
    *&v76 = v52;
    *(&v76 + 1) = v24;
    *&v77 = v50;
    LODWORD(v51) = v115;
    BYTE8(v77) = v115;
    *(&v77 + 9) = *v114;
    HIDWORD(v77) = *&v114[3];
    v78 = v49;
    *&v79[0] = v48;
    v45 = v113;
    BYTE8(v79[0]) = v113;
    BYTE9(v79[0]) = v47;
    HIWORD(v79[0]) = v112;
    *(v79 + 10) = v111;
    *&v79[1] = v46;
    v42 = v110;
    BYTE8(v79[1]) = v110;
    sub_10000E870(&v67, v80);
    sub_10000DB58(v122);
    v80[0] = v12;
    v80[1] = v14;
    v80[2] = v31;
    v80[3] = v32;
    v80[4] = v34;
    v80[5] = v33;
    v81 = BYTE4(v41);
    *v82 = *v120;
    *&v82[3] = *&v120[3];
    v83 = v59;
    v84 = v43;
    *v85 = *v118;
    *&v85[3] = *&v118[3];
    v86 = v58;
    v87 = v64;
    v88 = v57;
    v89 = v63;
    v90 = v56;
    v91 = v55;
    v92 = v62;
    v93 = v54;
    v94 = v44;
    *v95 = *v116;
    *&v95[3] = *&v116[3];
    v96 = v52;
    v97 = v24;
    v98 = v50;
    v99 = v51;
    *v100 = *v114;
    *&v100[3] = *&v114[3];
    v101 = v49;
    v102 = v48;
    v103 = v45;
    v104 = v47;
    v106 = v112;
    v105 = v111;
    v107 = v46;
    v108 = v42;
    result = sub_10000E8CC(v80);
    v35 = v78;
    a2[10] = v77;
    a2[11] = v35;
    a2[12] = v79[0];
    *(a2 + 201) = *(v79 + 9);
    v36 = v74;
    a2[6] = v73;
    a2[7] = v36;
    v37 = v76;
    a2[8] = v75;
    a2[9] = v37;
    v38 = v70;
    a2[2] = v69;
    a2[3] = v38;
    v39 = v72;
    a2[4] = v71;
    a2[5] = v39;
    v40 = v68;
    *a2 = v67;
    a2[1] = v40;
  }

  return result;
}

unint64_t sub_10004DBC4()
{
  result = qword_10023AC98;
  if (!qword_10023AC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023AC98);
  }

  return result;
}

unint64_t sub_10004DC18()
{
  result = qword_10023ACA8;
  if (!qword_10023ACA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023ACA8);
  }

  return result;
}

unint64_t sub_10004DC90()
{
  result = qword_10023ACB0;
  if (!qword_10023ACB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023ACB0);
  }

  return result;
}

unint64_t sub_10004DCE8()
{
  result = qword_10023ACB8;
  if (!qword_10023ACB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023ACB8);
  }

  return result;
}

unint64_t sub_10004DD40()
{
  result = qword_10023ACC0;
  if (!qword_10023ACC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023ACC0);
  }

  return result;
}

unint64_t sub_10004DD98()
{
  result = qword_10023ACC8;
  if (!qword_10023ACC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023ACC8);
  }

  return result;
}

unint64_t sub_10004DDF0()
{
  result = qword_10023ACD0;
  if (!qword_10023ACD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023ACD0);
  }

  return result;
}

unint64_t sub_10004DE48()
{
  result = qword_10023ACD8;
  if (!qword_10023ACD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023ACD8);
  }

  return result;
}

id sub_10004E048(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ItemIdentifierBundleIDMapEntity();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_10004E0A4()
{
  result = qword_10023AD08;
  if (!qword_10023AD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023AD08);
  }

  return result;
}

uint64_t sub_10004E0F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_10004E140(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10004E1CC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000BD30;

  return sub_10004E26C();
}

uint64_t sub_10004E288()
{
  v14 = v0;
  if (qword_100239CA8 != -1)
  {
    swift_once();
  }

  v1 = qword_10023FC50;
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 sharedScheduler];
  *(v0 + 208) = &type metadata for ActivityManager;
  *(v0 + 216) = &off_100223E90;
  v5 = swift_allocObject();
  *(v0 + 184) = v5;
  v5[5] = &type metadata for BackgroundSystemTaskScheduler;
  v5[6] = &off_100217910;
  v5[2] = v4;
  *(v0 + 272) = &type metadata for AttributionKitCanineArbiter;
  *(v0 + 280) = &off_1002191C8;
  if (qword_100239C90 != -1)
  {
    swift_once();
  }

  v6 = qword_10023FC28;
  *(v0 + 312) = type metadata accessor for TaskGreyhound(0);
  *(v0 + 320) = &off_1002169F0;
  *(v0 + 288) = v6;
  *(v0 + 352) = &type metadata for LaunchServicesRecordFactory;
  *(v0 + 360) = &off_10021CBA8;
  *(v0 + 392) = &type metadata for AMSDogBag;
  *(v0 + 400) = &off_100222F48;

  v7 = [v2 sharedScheduler];
  v12[3] = &type metadata for ActivityManager;
  v12[4] = &off_100223E90;
  v8 = swift_allocObject();
  v12[0] = v8;
  v8[5] = &type metadata for BackgroundSystemTaskScheduler;
  v8[6] = &off_100217910;
  v8[2] = v7;
  v13[3] = &type metadata for LaunchServicesRecordFactory;
  v13[4] = &off_10021CBA8;
  sub_1000B8524(v12, v13, v0 + 408);
  *(v0 + 520) = &type metadata for AppStoreDaemonSKANInterop;
  *(v0 + 528) = &off_100222C60;
  sub_1000B42E0((v0 + 536));
  if (qword_100239D30 != -1)
  {
    swift_once();
  }

  v9 = qword_10023FD90;
  *(v0 + 600) = type metadata accessor for SnoutManager(0);
  *(v0 + 608) = &off_100223858;
  *(v0 + 576) = v9;
  strcpy((v0 + 16), "postback_store");
  *(v0 + 31) = -18;
  *(v0 + 32) = v3;
  *(v0 + 40) = 0x63616274736F6867;
  *(v0 + 48) = 0xEF65726F74735F6BLL;
  *(v0 + 56) = v3;
  *(v0 + 64) = 0xD000000000000010;
  *(v0 + 72) = 0x80000001001CB320;
  *(v0 + 80) = v3;
  *(v0 + 88) = 0x74735F6E656B6F74;
  *(v0 + 96) = 0xEB0000000065726FLL;
  *(v0 + 104) = v3;
  *(v0 + 112) = 0xD000000000000012;
  *(v0 + 120) = 0x80000001001CB340;
  *(v0 + 128) = v3;
  *(v0 + 136) = 0xD000000000000014;
  *(v0 + 144) = 0x80000001001CB360;
  *(v0 + 152) = v3;
  *(v0 + 160) = 0xD000000000000018;
  *(v0 + 168) = 0x80000001001CB380;
  *(v0 + 176) = v3;
  *(v0 + 224) = 0xD000000000000011;
  *(v0 + 232) = 0x80000001001CB3A0;
  *(v0 + 240) = v3;

  v10 = swift_task_alloc();
  *(v0 + 616) = v10;
  *v10 = v0;
  v10[1] = sub_10004E668;

  return sub_100111D78();
}

uint64_t sub_10004E668()
{

  return _swift_task_switch(sub_10004E764, 0, 0);
}

uint64_t sub_10004E764()
{
  sub_10004E7FC(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10004E7C4()
{
  sub_10000DB58((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

void sub_10004E850(uint64_t a1, unint64_t a2, char a3)
{
  sub_10000CDE0(&qword_10023AD58, &qword_1001B7620);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B5820;
  v4 = String._bridgeToObjectiveC()();

  v5 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v6 = objc_opt_self();
  v7 = [v6 predicateWithProperty:v4 equalToValue:v5];
  swift_unknownObjectRelease();

  *(inited + 32) = v7;
  v8 = String._bridgeToObjectiveC()();

  v9 = [v6 predicateWithProperty:v8 equalToValue:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();

  *(inited + 40) = v9;
  v10 = sub_10004F3E4(inited, &selRef_predicateMatchingAllPredicates_);
  swift_setDeallocating();
  sub_10000CDE0(&unk_10023AD60, &qword_1001B7628);
  swift_arrayDestroy();
  v11 = [v14 connection];
  v12 = v10;
  v13 = sub_100085B0C(v11, v10, _swiftEmptyArrayStorage, 0, 0);
  if (([v13 deleteAllEntities] & 1) == 0)
  {
    type metadata accessor for AKSQLError(0);
    sub_10008976C(_swiftEmptyArrayStorage);
    sub_10001558C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }
}

void sub_10004EB24(uint64_t a1, int a2)
{
  v4 = v2;
  v71 = sub_10000CDE0(&qword_10023AD58, &qword_1001B7620);
  inited = swift_initStackObject();
  v69 = xmmword_1001B75D0;
  *(inited + 16) = xmmword_1001B75D0;
  Date.timeIntervalSince1970.getter();
  v9 = v8 * 1000.0;
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v9 <= -1.0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v9 >= 1.84467441e19)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v68 = a1;
  v66 = v4;
  v60[1] = v3;
  v10 = v9;
  v11 = String._bridgeToObjectiveC()();
  v73[0] = v10;
  v12 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v72 = objc_opt_self();
  v13 = [v72 predicateWithProperty:v11 value:v12 comparisonType:4];
  swift_unknownObjectRelease();

  *(inited + 32) = v13;
  v74 = &type metadata for ConversionType;
  v14 = sub_10004FAD0();
  v75 = v14;
  v65 = a2;
  LOBYTE(v73[0]) = a2;
  v15 = sub_10000DA7C(v73, &type metadata for ConversionType);
  v63 = v14;
  v67 = v60;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(AssociatedTypeWitness - 8);
  v62 = *(v16 + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v18 = (v60 - v17);
  if (*v15)
  {
    if (*v15 == 1)
    {
      v19 = 0x6F6C6E776F646572;
      v20 = 0xEA00000000006461;
    }

    else
    {
      v19 = 0x6761676E652D6572;
      v20 = 0xED0000746E656D65;
    }
  }

  else
  {
    v20 = 0xE800000000000000;
    v19 = 0x64616F6C6E776F64;
  }

  *v18 = v19;
  v18[1] = v20;
  v21 = String._bridgeToObjectiveC()();
  v22 = AssociatedTypeWitness;
  v23 = _bridgeAnythingToObjectiveC<A>(_:)();
  v24 = v72;
  v25 = [v72 predicateWithProperty:v21 equalToValue:v23];
  swift_unknownObjectRelease();

  v26 = *(v16 + 8);
  v64 = v16 + 8;
  v26(v18, v22);
  sub_10000DB58(v73);
  *(inited + 40) = v25;
  v27 = String._bridgeToObjectiveC()();
  LOBYTE(v73[0]) = 0;
  v28 = [v24 predicateWithProperty:v27 equalToValue:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();

  *(inited + 48) = v28;
  v29 = sub_10004F3E4(inited, &selRef_predicateMatchingAllPredicates_);
  swift_setDeallocating();
  v30 = sub_10000CDE0(&unk_10023AD60, &qword_1001B7628);
  swift_arrayDestroy();
  v31 = swift_initStackObject();
  *(v31 + 16) = v69;
  Date.timeIntervalSince1970.getter();
  v33 = v32 * 1000.0;
  if ((*&v33 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_23;
  }

  if (v33 <= -1.0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v33 >= 1.84467441e19)
  {
LABEL_25:
    __break(1u);
    return;
  }

  v34 = v33;
  v35 = String._bridgeToObjectiveC()();
  v73[0] = v34;
  v36 = [v72 predicateWithProperty:v35 value:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)() comparisonType:4];
  swift_unknownObjectRelease();

  *(v31 + 32) = v36;
  v74 = &type metadata for ConversionType;
  v75 = v63;
  LOBYTE(v73[0]) = v65;
  v37 = sub_10000DA7C(v73, &type metadata for ConversionType);
  v38 = __chkstk_darwin(v37);
  v40 = (v60 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = *v38;
  v67 = v30;
  v61 = v29;
  if (v41)
  {
    if (v41 == 1)
    {
      v42 = 0x6F6C6E776F646572;
      v43 = 0xEA00000000006461;
    }

    else
    {
      v42 = 0x6761676E652D6572;
      v43 = 0xED0000746E656D65;
    }
  }

  else
  {
    v43 = 0xE800000000000000;
    v42 = 0x64616F6C6E776F64;
  }

  *v40 = v42;
  v40[1] = v43;
  v44 = String._bridgeToObjectiveC()();
  v45 = AssociatedTypeWitness;
  v46 = _bridgeAnythingToObjectiveC<A>(_:)();
  v47 = v72;
  v48 = [v72 predicateWithProperty:v44 equalToValue:v46];
  swift_unknownObjectRelease();

  v26(v40, v45);
  sub_10000DB58(v73);
  *(v31 + 40) = v48;
  v49 = String._bridgeToObjectiveC()();
  LOBYTE(v73[0]) = 0;
  v50 = [v47 predicateWithProperty:v49 equalToValue:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();

  *(v31 + 48) = v50;
  v51 = sub_10004F3E4(v31, &selRef_predicateMatchingAllPredicates_);
  swift_setDeallocating();
  swift_arrayDestroy();
  v52 = swift_initStackObject();
  *(v52 + 16) = xmmword_1001B5820;
  v53 = v61;
  *(v52 + 32) = v61;
  *(v52 + 40) = v51;
  v54 = v53;
  v55 = v51;
  v56 = sub_10004F3E4(v52, &selRef_predicateMatchingAnyPredicates_);
  swift_setDeallocating();
  swift_arrayDestroy();
  v57 = [v66 connection];
  v58 = v56;
  v59 = sub_100085B0C(v57, v56, _swiftEmptyArrayStorage, 0, 0);
  if (([v59 deleteAllEntities] & 1) == 0)
  {
    type metadata accessor for AKSQLError(0);
    v76 = 8;
    sub_10008976C(_swiftEmptyArrayStorage);
    sub_10001558C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }
}

id sub_10004F3E4(uint64_t a1, SEL *a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v3;
    }

    while (v3);
  }

  sub_100087A38(_swiftEmptyArrayStorage);

  isa = Array._bridgeToObjectiveC()().super.isa;

  v9 = [objc_opt_self() *a2];

  return v9;
}

void sub_10004F4F0(uint64_t a1)
{
  sub_10000CDE0(&qword_10023AD58, &qword_1001B7620);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B75D0;
  v3 = String._bridgeToObjectiveC()();
  v4 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v5 = objc_opt_self();
  v6 = [v5 predicateWithProperty:v3 equalToValue:v4];
  swift_unknownObjectRelease();

  *(inited + 32) = v6;
  v7 = String._bridgeToObjectiveC()();
  v8 = [v5 predicateWithProperty:v7 equalToValue:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();

  *(inited + 40) = v8;
  v9 = objc_opt_self();
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 isNullPredicateWithProperty:v10];

  *(inited + 48) = v11;
  v12 = sub_10004F3E4(inited, &selRef_predicateMatchingAllPredicates_);
  swift_setDeallocating();
  sub_10000CDE0(&unk_10023AD60, &qword_1001B7628);
  swift_arrayDestroy();
  v13 = [v1 connection];
  v14 = v12;
  v15 = sub_100085B0C(v13, v12, _swiftEmptyArrayStorage, 0, 0);
  if (([v15 deleteAllEntities] & 1) == 0)
  {
    type metadata accessor for AKSQLError(0);
    sub_10008976C(_swiftEmptyArrayStorage);
    sub_10001558C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }
}

void sub_10004F7B0(uint64_t a1, uint64_t a2)
{
  sub_10000CDE0(&qword_10023AD58, &qword_1001B7620);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B5820;
  v4 = String._bridgeToObjectiveC()();

  v5 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v6 = objc_opt_self();
  v7 = [v6 predicateWithProperty:v4 equalToValue:v5];
  swift_unknownObjectRelease();

  *(inited + 32) = v7;
  v8 = String._bridgeToObjectiveC()();
  v9 = [v6 predicateWithProperty:v8 equalToValue:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();

  *(inited + 40) = v9;
  v10 = sub_10004F3E4(inited, &selRef_predicateMatchingAllPredicates_);
  swift_setDeallocating();
  sub_10000CDE0(&unk_10023AD60, &qword_1001B7628);
  swift_arrayDestroy();
  v11 = [v2 connection];
  v12 = v10;
  v13 = sub_100085B0C(v11, v10, _swiftEmptyArrayStorage, 0, 0);
  if (([v13 deleteAllEntities] & 1) == 0)
  {
    type metadata accessor for AKSQLError(0);
    sub_10008976C(_swiftEmptyArrayStorage);
    sub_10001558C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }
}

unint64_t sub_10004FAD0()
{
  result = qword_10023AD70;
  if (!qword_10023AD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023AD70);
  }

  return result;
}

uint64_t sub_10004FB30(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 1480))
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

uint64_t sub_10004FB78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
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
    *(result + 1448) = 0u;
    *(result + 1432) = 0u;
    *(result + 1416) = 0u;
    *(result + 1464) = 0u;
    *(result + 1400) = 0u;
    *(result + 1384) = 0u;
    *(result + 1368) = 0u;
    *(result + 1352) = 0u;
    *(result + 1336) = 0u;
    *(result + 1320) = 0u;
    *(result + 1304) = 0u;
    *(result + 1288) = 0u;
    *(result + 1272) = 0u;
    *(result + 1256) = 0u;
    *(result + 1240) = 0u;
    *(result + 1224) = 0u;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 1480) = 1;
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

    *(result + 1480) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_10004FD4C@<X0>(uint64_t a1@<X8>)
{
  if (qword_100239CA8 != -1)
  {
    swift_once();
  }

  v2 = qword_10023FC50;
  v3 = objc_allocWithZone(ASCLockupViewGroup);
  v4 = v2;
  v5 = String._bridgeToObjectiveC()();
  v6 = [v3 initWithName:v5];

  v30 = sub_10001523C(0, &qword_10023AD90, ASCLockupViewGroup_ptr);
  v31 = &off_100217948;
  *&v29 = v6;
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v28 = &off_10021E338;
    v27 = &type metadata for LaunchServicesWorkspace;
    *&v26 = result;
    *(a1 + 128) = &type metadata for DogDistributor;
    *(a1 + 136) = &off_10021A0A8;
    *(a1 + 168) = &type metadata for LaunchServicesRecordFactory;
    *(a1 + 176) = &off_10021CBA8;
    if (qword_100239D30 != -1)
    {
      swift_once();
    }

    v8 = qword_10023FD90;
    v9 = type metadata accessor for SnoutManager(0);
    *(a1 + 208) = v9;
    *(a1 + 216) = &off_100223858;
    *(a1 + 184) = v8;
    *a1 = 0xD000000000000010;
    *(a1 + 8) = 0x80000001001CB740;
    *(a1 + 16) = v4;
    sub_10000DA64(&v29, a1 + 24);
    sub_10000DA64(&v26, a1 + 64);
    v10 = swift_retain_n();
    v11 = sub_100054A18(v10);
    *(a1 + 280) = v9;
    *(a1 + 288) = &off_100223858;
    *(a1 + 256) = v8;
    *(a1 + 320) = &type metadata for AMSDogBag;
    *(a1 + 328) = &off_100222F48;
    *(a1 + 224) = v11;
    *(a1 + 232) = 0xD000000000000010;
    *(a1 + 240) = 0x80000001001CB320;
    *(a1 + 248) = v4;
    v12 = v4;
    v13 = objc_opt_self();
    v14 = v12;

    v15 = [v13 sharedScheduler];
    *(a1 + 528) = &type metadata for ActivityManager;
    *(a1 + 536) = &off_100223E90;
    v16 = swift_allocObject();
    *(a1 + 504) = v16;
    v16[5] = &type metadata for BackgroundSystemTaskScheduler;
    v16[6] = &off_100217910;
    v16[2] = v15;
    *(a1 + 592) = &type metadata for AttributionKitCanineArbiter;
    *(a1 + 600) = &off_1002191C8;
    v17 = qword_100239C90;
    v18 = v14;
    if (v17 != -1)
    {
      swift_once();
    }

    v19 = qword_10023FC28;
    v25 = type metadata accessor for TaskGreyhound(0);
    *(a1 + 632) = v25;
    *(a1 + 640) = &off_1002169F0;
    *(a1 + 608) = v19;
    *(a1 + 672) = &type metadata for LaunchServicesRecordFactory;
    *(a1 + 680) = &off_10021CBA8;
    *(a1 + 712) = &type metadata for AMSDogBag;
    *(a1 + 720) = &off_100222F48;
    swift_retain_n();
    v20 = [v13 sharedScheduler];
    v30 = &type metadata for ActivityManager;
    v31 = &off_100223E90;
    v21 = swift_allocObject();
    *&v29 = v21;
    v21[5] = &type metadata for BackgroundSystemTaskScheduler;
    v21[6] = &off_100217910;
    v21[2] = v20;
    v27 = &type metadata for LaunchServicesRecordFactory;
    v28 = &off_10021CBA8;
    sub_1000B8524(&v29, &v26, a1 + 728);
    *(a1 + 840) = &type metadata for AppStoreDaemonSKANInterop;
    *(a1 + 848) = &off_100222C60;
    sub_1000B42E0((a1 + 856));
    *(a1 + 920) = v9;
    *(a1 + 928) = &off_100223858;
    *(a1 + 896) = v8;
    strcpy((a1 + 336), "postback_store");
    *(a1 + 351) = -18;
    *(a1 + 352) = v18;
    *(a1 + 360) = 0x63616274736F6867;
    *(a1 + 368) = 0xEF65726F74735F6BLL;
    *(a1 + 376) = v18;
    *(a1 + 384) = 0xD000000000000010;
    *(a1 + 392) = 0x80000001001CB320;
    *(a1 + 400) = v18;
    *(a1 + 408) = 0x74735F6E656B6F74;
    *(a1 + 416) = 0xEB0000000065726FLL;
    *(a1 + 424) = v18;
    *(a1 + 432) = 0xD000000000000012;
    *(a1 + 440) = 0x80000001001CB340;
    *(a1 + 448) = v18;
    *(a1 + 456) = 0xD000000000000014;
    *(a1 + 464) = 0x80000001001CB360;
    *(a1 + 472) = v18;
    *(a1 + 480) = 0xD000000000000018;
    *(a1 + 488) = 0x80000001001CB380;
    *(a1 + 496) = v18;
    *(a1 + 544) = 0xD000000000000011;
    *(a1 + 552) = 0x80000001001CB3A0;
    *(a1 + 560) = v18;
    v22 = v18;

    v23 = v22;
    sub_1000B44B4((a1 + 1080));
    *(a1 + 1144) = &type metadata for LaunchServicesRecordFactory;
    *(a1 + 1152) = &off_10021CBA8;
    *(a1 + 1184) = &type metadata for DogTokenClientFactory;
    *(a1 + 1192) = &off_100219C38;
    *(a1 + 1224) = v25;
    *(a1 + 1232) = &off_1002169F0;
    *(a1 + 1200) = v19;
    *(a1 + 1264) = &type metadata for AMSDogBag;
    *(a1 + 1272) = &off_100222F48;
    *(a1 + 1304) = &type metadata for CasinoDog;
    *(a1 + 1312) = &off_1002179A0;
    *(a1 + 1344) = v9;
    *(a1 + 1352) = &off_100223858;
    *(a1 + 1320) = v8;
    *(a1 + 936) = 0x74735F6E656B6F74;
    *(a1 + 944) = 0xEB0000000065726FLL;
    *(a1 + 952) = v23;
    *(a1 + 960) = 0xD000000000000010;
    *(a1 + 968) = 0x80000001001CB320;
    *(a1 + 976) = v23;
    *(a1 + 984) = 0xD000000000000012;
    *(a1 + 992) = 0x80000001001CB340;
    *(a1 + 1000) = v23;
    *(a1 + 1008) = 0xD000000000000014;
    *(a1 + 1016) = 0x80000001001CB360;
    *(a1 + 1024) = v23;
    *(a1 + 1032) = 0xD000000000000018;
    *(a1 + 1040) = 0x80000001001CB380;
    *(a1 + 1048) = v23;
    *(a1 + 1056) = 0x63616274736F6867;
    *(a1 + 1064) = 0xEF65726F74735F6BLL;
    *(a1 + 1072) = v23;
    *(a1 + 1384) = v9;
    *(a1 + 1392) = &off_100223858;
    *(a1 + 1360) = v8;
    *(a1 + 1424) = &type metadata for AMSDogBag;
    *(a1 + 1432) = &off_100222F48;
    *(a1 + 1464) = &type metadata for AggregatedReportingManager;
    *(a1 + 1472) = &off_10021E0D0;
    v24 = swift_allocObject();
    *(a1 + 1440) = v24;
    v24[11] = &type metadata for BiomeEventStreamDog;
    v24[12] = &off_10021F658;
    v24[16] = &type metadata for AMSDogBag;
    v24[17] = &off_100222F48;
    v24[21] = v25;
    v24[22] = &off_1002169F0;
    v24[18] = v19;
    v24[26] = &type metadata for LaunchServicesRecordFactory;
    v24[27] = &off_10021CBA8;
    v24[31] = v9;
    v24[32] = &off_100223858;
    v24[28] = v8;
    v24[2] = 0xD00000000000001ALL;
    v24[3] = 0x80000001001CB760;
    v24[4] = v23;
    v24[5] = 0xD000000000000018;
    v24[6] = 0x80000001001CB380;
    v24[7] = v23;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000504CC()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = Logger.xpc.unsafeMutableAddressor();
  (*(v1 + 16))(v3, v4, v0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Inside the daemon static library code now", v7, 2u);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10005061C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[95] = v3;
  v4[94] = a3;
  v4[93] = a2;
  v4[92] = a1;
  updated = type metadata accessor for PostbackUpdateData(0);
  v4[96] = updated;
  v6 = *(updated - 8);
  v4[97] = v6;
  v4[98] = *(v6 + 64);
  v4[99] = swift_task_alloc();
  v4[100] = swift_task_alloc();
  v7 = type metadata accessor for Date();
  v4[101] = v7;
  v4[102] = *(v7 - 8);
  v4[103] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v4[104] = v8;
  v4[105] = *(v8 - 8);
  v4[106] = swift_task_alloc();
  v4[107] = swift_task_alloc();

  return _swift_task_switch(sub_1000507C0, 0, 0);
}

uint64_t sub_1000507C0(uint64_t a1)
{
  v2 = *(v1 + 856);
  v3 = *(v1 + 840);
  v4 = *(v1 + 832);
  v5 = Logger.xpc.unsafeMutableAddressor();
  v6 = *(v3 + 16);
  *(v1 + 864) = v6;
  *(v1 + 872) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v4);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Updating postback", v9, 2u);
  }

  v10 = *(v1 + 856);
  v11 = *(v1 + 840);
  v12 = *(v1 + 832);

  v13 = *(v11 + 8);
  *(v1 + 880) = v13;
  v13(v10, v12);
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_1000547A4();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v15 = *(v1 + 736);

  *(v1 + 888) = *(v1 + 616);
  *(v1 + 960) = *(v1 + 624);
  *(v1 + 961) = *(v1 + 625);
  *(v1 + 896) = *(v1 + 632);
  v16 = *(v1 + 640);
  v17 = *(v1 + 648);
  *(v1 + 904) = v17;
  sub_100014B50(v15, v1 + 656, &qword_10023A7E0, &qword_1001B5850);
  v18 = *(v1 + 680);
  if (v18)
  {
    v19 = *(v1 + 688);
    sub_10000DA7C((v1 + 656), *(v1 + 680));
    *(v1 + 912) = (*(v19 + 16))(v18, v19);
    sub_10000DB58((v1 + 656));
    v20 = swift_task_alloc();
    *(v1 + 920) = v20;
    *v20 = v1;
    v20[1] = sub_100050B20;

    return sub_100128E9C(v16, v17);
  }

  else
  {

    sub_10000DAF8(v1 + 656, &qword_10023A7E0, &qword_1001B5850);

    v21 = *(v1 + 8);

    return v21();
  }
}

uint64_t sub_100050B20(uint64_t a1, char a2)
{
  v4 = *v3;
  *(v4 + 928) = a1;
  *(v4 + 962) = a2;

  if (v2)
  {
    *(v4 + 952) = v2;
    v5 = sub_1000514B8;
  }

  else
  {
    v5 = sub_100050C48;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100050C48(uint64_t a1)
{
  v2 = *(v1 + 888);
  static Date.now.getter();
  if (v2 >= 0x40)
  {
    sub_1000401C4();
    v3 = swift_allocError();
    v4[1] = 0;
    v4[2] = 0;
    *v4 = 6;
LABEL_3:
    v5 = *(v1 + 824);
    v6 = *(v1 + 816);
    v7 = *(v1 + 808);
    swift_willThrow();
    (*(v6 + 8))(v5, v7);
    *(v1 + 952) = v3;

    return _swift_task_switch(sub_1000514B8, 0, 0);
  }

  v8 = *(v1 + 896);
  if (v8 && *(v8 + 16))
  {
    Hasher.init(_seed:)();
    String.hash(into:)();
    v9 = Hasher._finalize()();
    v10 = v8 + 56;
    v11 = -1 << *(v8 + 32);
    v12 = v9 & ~v11;
    if ((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
    {
      v13 = ~v11;
      while (1)
      {
        v14 = *(*(v8 + 48) + v12);
        if (v14 != 1 && v14 != 2)
        {
          break;
        }

        v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v15)
        {
          goto LABEL_23;
        }

        v12 = (v12 + 1) & v13;
        if (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
LABEL_14:
      if (!*(v8 + 16))
      {
        goto LABEL_24;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v16 = Hasher._finalize()();
      v17 = -1 << *(v8 + 32);
      v18 = v16 & ~v17;
      if (((*(v10 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_24;
      }

      v19 = ~v17;
      while (!*(*(v8 + 48) + v18) || *(*(v8 + 48) + v18) == 2)
      {
        v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v20)
        {
          goto LABEL_23;
        }

        v18 = (v18 + 1) & v19;
        if (((*(v10 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
        {
          goto LABEL_24;
        }
      }
    }

LABEL_23:
    if ((*(v1 + 962) & 1) == 0)
    {
      sub_10003FB4C();
      v3 = swift_allocError();
      *v45 = 1;
      goto LABEL_3;
    }
  }

LABEL_24:
  v47 = *(v1 + 962);
  v21 = *(v1 + 928);
  v22 = *(v1 + 896);
  v23 = *(v1 + 961);
  v24 = *(v1 + 960);
  v25 = *(v1 + 888);
  v49 = *(v1 + 864);
  v26 = *(v1 + 848);
  v48 = *(v1 + 832);
  v27 = *(v1 + 800);
  v28 = *(v1 + 768);
  (*(*(v1 + 816) + 16))(v27 + *(v28 + 32), *(v1 + 824), *(v1 + 808));
  *v27 = v25;
  *(v27 + 8) = v24;
  *(v27 + 9) = v23;
  *(v27 + 16) = v22;
  v29 = v27 + *(v28 + 36);
  *v29 = v21;
  *(v29 + 8) = v47 & 1;

  v30 = Logger.postback.unsafeMutableAddressor();
  v49(v26, v30, v48);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&_mh_execute_header, v31, v32, "Queueing update postback", v33, 2u);
  }

  v34 = *(v1 + 880);
  v35 = *(v1 + 848);
  v36 = *(v1 + 832);
  v37 = *(v1 + 800);
  v38 = *(v1 + 792);
  v50 = *(v1 + 912);
  v39 = *(v1 + 776);
  v40 = *(v1 + 760);

  v34(v35, v36);
  sub_10003FD38(v40 + 336, v1 + 16);
  sub_10003FD94(v37, v38);
  v41 = (*(v39 + 80) + 624) & ~*(v39 + 80);
  v42 = swift_allocObject();
  *(v1 + 936) = v42;
  memcpy((v42 + 16), (v1 + 16), 0x258uLL);
  *(v42 + 616) = v50;
  sub_10003FFB8(v38, v42 + v41);
  sub_10000DA7C((v40 + 608), *(v40 + 632));
  *(v1 + 720) = sub_10000CDE0(&qword_10023A970, &qword_1001B5EF8);
  *(v1 + 728) = sub_100040104();
  *(v1 + 696) = &unk_1001B5EF0;
  *(v1 + 704) = v42;
  v43 = type metadata accessor for TaskGreyhound(0);

  v44 = swift_task_alloc();
  *(v1 + 944) = v44;
  *v44 = v1;
  v44[1] = sub_1000512AC;

  return (sub_10000C9BC)(v1 + 696, v43, &off_1002169F0);
}

uint64_t sub_1000512AC()
{
  v1 = *v0;

  sub_10000DB58((v1 + 696));

  return _swift_task_switch(sub_1000513B0, 0, 0);
}

uint64_t sub_1000513B0()
{
  v1 = v0[103];
  v2 = v0[102];
  v3 = v0[101];
  v4 = v0[100];

  sub_1000549B8(v4, type metadata accessor for PostbackUpdateData);

  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000514B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100051570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[6] = a6;
  v7[7] = v6;
  v7[4] = a4;
  v7[5] = a5;
  v7[2] = a2;
  v7[3] = a3;
  v8 = type metadata accessor for Logger();
  v7[8] = v8;
  v7[9] = *(v8 - 8);
  v7[10] = swift_task_alloc();
  v7[11] = swift_task_alloc();

  return _swift_task_switch(sub_100051644, 0, 0);
}

uint64_t sub_100051644(uint64_t a1)
{
  v2 = v1[11];
  v3 = v1[8];
  v4 = v1[9];
  v5 = Logger.xpc.unsafeMutableAddressor();
  v1[12] = v5;
  v6 = *(v4 + 16);
  v1[13] = v6;
  v1[14] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v3);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Preflighting impression", v9, 2u);
  }

  v10 = v1[11];
  v11 = v1[8];
  v12 = v1[9];

  v13 = *(v12 + 8);
  v1[15] = v13;
  v13(v10, v11);
  v14 = swift_task_alloc();
  v1[16] = v14;
  *v14 = v1;
  v14[1] = sub_1000517C0;
  v15 = v1[5];
  v16 = v1[6];
  v18 = v1[3];
  v17 = v1[4];
  v19 = v1[2];

  return sub_100028E3C(v18, v17, v19, v15, v16);
}

uint64_t sub_1000517C0()
{
  v2 = *v1;
  v3 = *v1;

  if (v0 || v2[2] == 915061776)
  {

    v4 = v3[1];

    return v4();
  }

  else
  {
    v6 = swift_task_alloc();
    v2[17] = v6;
    *v6 = v3;
    v6[1] = sub_100051970;
    v7 = v2[6];
    v8 = v2[5];
    v9 = v2[2];

    return sub_100062E34(v9, v8, v7);
  }
}

uint64_t sub_100051970()
{
  v2 = *v1;
  *(v2 + 144) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100051AB8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100051AB8()
{
  (*(v0 + 104))(*(v0 + 80), *(v0 + 96), *(v0 + 64));
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
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to fetch distributor metadata: %@", v3, 0xCu);
    sub_10000DAF8(v4, &qword_100239F10, &qword_1001B4FD0);
  }

  else
  {
  }

  (*(v0 + 120))(*(v0 + 80), *(v0 + 64));

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100051C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  sub_10000CDE0(&qword_10023A7D0, &unk_1001B5840);
  v5[7] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();

  return _swift_task_switch(sub_100051D5C, 0, 0);
}

uint64_t sub_100051D5C(uint64_t a1)
{
  v3 = v1[9];
  v2 = v1[10];
  v4 = v1[8];
  v5 = Logger.xpc.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v5, v4);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Starting view", v8, 2u);
  }

  v10 = v1[9];
  v9 = v1[10];
  v11 = v1[8];

  (*(v10 + 8))(v9, v11);
  v12 = swift_task_alloc();
  v1[11] = v12;
  *v12 = v1;
  v12[1] = sub_100051EC8;
  v13 = v1[7];
  v14 = v1[4];
  v15 = v1[5];
  v16 = v1[3];

  return sub_10002C13C(v13, v14, v15, v16, 0);
}

uint64_t sub_100051EC8()
{
  v2 = *v1;
  v2[12] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100054C88, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[13] = v3;
    *v3 = v2;
    v3[1] = sub_10005204C;
    v4 = v2[7];
    v5 = v2[3];
    v6 = v2[2];

    return sub_10002CA7C(v6, v5, v4, 0, 1);
  }
}

uint64_t sub_10005204C()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_100054C80;
  }

  else
  {
    v2 = sub_100054C84;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100052160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  sub_10000CDE0(&qword_10023A7D0, &unk_1001B5840);
  v5[7] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();

  return _swift_task_switch(sub_100052260, 0, 0);
}

uint64_t sub_100052260(uint64_t a1)
{
  v3 = v1[9];
  v2 = v1[10];
  v4 = v1[8];
  v5 = Logger.xpc.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v5, v4);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Ending view", v8, 2u);
  }

  v10 = v1[9];
  v9 = v1[10];
  v11 = v1[8];

  (*(v10 + 8))(v9, v11);
  v12 = swift_task_alloc();
  v1[11] = v12;
  *v12 = v1;
  v12[1] = sub_1000523CC;
  v13 = v1[7];
  v14 = v1[4];
  v15 = v1[5];
  v16 = v1[3];

  return sub_10002C13C(v13, v14, v15, v16, 0);
}

uint64_t sub_1000523CC()
{
  v2 = *v1;
  v2[12] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000526F0, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[13] = v3;
    *v3 = v2;
    v3[1] = sub_100052550;
    v4 = v2[7];
    v5 = v2[3];
    v6 = v2[2];

    return sub_10002CA7C(v6, v5, v4, 1, 1);
  }
}

uint64_t sub_100052550()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_100052760;
  }

  else
  {
    v2 = sub_100052664;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100052664()
{
  sub_10000DAF8(*(v0 + 56), &qword_10023A7D0, &unk_1001B5840);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000526F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100052760()
{
  sub_10000DAF8(*(v0 + 56), &qword_10023A7D0, &unk_1001B5840);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000527E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[12] = a6;
  v7[13] = v6;
  v7[10] = a4;
  v7[11] = a5;
  v7[8] = a2;
  v7[9] = a3;
  v7[7] = a1;
  v8 = type metadata accessor for URL();
  v7[14] = v8;
  v7[15] = *(v8 - 8);
  v7[16] = swift_task_alloc();
  sub_10000CDE0(&qword_10023C230, &qword_1001B4FB0);
  v7[17] = swift_task_alloc();
  v7[18] = swift_task_alloc();
  v7[19] = swift_task_alloc();
  sub_10000CDE0(&qword_10023A7D0, &unk_1001B5840);
  v7[20] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v7[21] = v9;
  v7[22] = *(v9 - 8);
  v7[23] = swift_task_alloc();

  return _swift_task_switch(sub_100052998, 0, 0);
}

uint64_t sub_100052998(uint64_t a1)
{
  v3 = v1[22];
  v2 = v1[23];
  v4 = v1[21];
  v5 = Logger.xpc.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v5, v4);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Processing tap", v8, 2u);
  }

  v10 = v1[22];
  v9 = v1[23];
  v11 = v1[21];
  v12 = v1[11];

  (*(v10 + 8))(v9, v11);
  v1[5] = sub_10001523C(0, &qword_10023AB70, BKSHIDEventAuthenticationMessage_ptr);
  v1[6] = &off_100218E28;
  v1[2] = v12;
  v13 = v12;
  v14 = swift_task_alloc();
  v1[24] = v14;
  *v14 = v1;
  v14[1] = sub_100052B30;
  v15 = v1[8];

  return sub_1001596F8((v1 + 2), v15);
}

uint64_t sub_100052B30()
{
  v2 = *v1;
  v2[25] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100053A10, 0, 0);
  }

  else
  {
    sub_10000DB58(v2 + 2);
    v3 = swift_task_alloc();
    v2[26] = v3;
    *v3 = v2;
    v3[1] = sub_100052CAC;
    v4 = v2[8];

    return sub_100064AC4(v4);
  }
}

uint64_t sub_100052CAC()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = v3[1];

    return v4();
  }

  else
  {
    v6 = swift_task_alloc();
    v2[27] = v6;
    *v6 = v3;
    v6[1] = sub_100052E78;
    v7 = v2[20];
    v8 = v2[9];
    v9 = v2[10];
    v10 = v2[8];

    return sub_10002C13C(v7, v8, v9, v10, 1);
  }
}

uint64_t sub_100052E78()
{
  v2 = *v1;
  v2[28] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100053AC0, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[29] = v3;
    *v3 = v2;
    v3[1] = sub_100052FF4;
    v4 = v2[20];
    v5 = v2[8];
    v6 = v2[7];

    return sub_10003212C(v6, v5, v4);
  }
}

uint64_t sub_100052FF4()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_100053B68;
  }

  else
  {
    v2 = sub_100053108;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100053108()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[14];
  v4 = v0[15];
  v5 = v0[12];
  v6 = *(v4 + 56);
  v0[31] = v6;
  v0[32] = (v4 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v6(v1, 1, 1, v3);
  sub_100014B50(v5, v2, &qword_10023C230, &qword_1001B4FB0);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_10000DAF8(v0[18], &qword_10023C230, &qword_1001B4FB0);
    v7 = swift_task_alloc();
    v0[38] = v7;
    *v7 = v0;
    v7[1] = sub_1000536B4;
    v8 = v0[20];
    v9 = v0[8];

    return sub_1000D14BC(v9, v8, 0, 1);
  }

  else
  {
    (*(v0[15] + 32))(v0[16], v0[18], v0[14]);
    v11 = swift_task_alloc();
    v0[33] = v11;
    *v11 = v0;
    v11[1] = sub_1000532DC;
    v12 = v0[8];

    return sub_1000D0A04(v12);
  }
}

uint64_t sub_1000532DC(uint64_t a1, char a2)
{
  v6 = *v3;
  v7 = *v3;
  *(v6 + 328) = a2;
  *(v6 + 272) = a1;
  *(v6 + 280) = v2;

  if (v2)
  {

    return _swift_task_switch(sub_100053C28, 0, 0);
  }

  else
  {
    v8 = swift_task_alloc();
    *(v6 + 288) = v8;
    *v8 = v7;
    v8[1] = sub_100053484;
    v10 = *(v6 + 128);
    v9 = *(v6 + 136);
    v11 = *(v6 + 64);

    return sub_100079540(v9, v10, v11, a1, a2 & 1);
  }
}

uint64_t sub_100053484()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = sub_100053D1C;
  }

  else
  {
    v2 = sub_100053598;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100053598()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 152);
  v3 = *(v0 + 136);
  v4 = *(v0 + 112);
  (*(*(v0 + 120) + 8))(*(v0 + 128), v4);
  sub_10000DAF8(v2, &qword_10023C230, &qword_1001B4FB0);
  v1(v3, 0, 1, v4);
  sub_100054734(v3, v2);
  v5 = *(v0 + 328);
  v6 = *(v0 + 272);
  v7 = swift_task_alloc();
  *(v0 + 304) = v7;
  *v7 = v0;
  v7[1] = sub_1000536B4;
  v8 = *(v0 + 160);
  v9 = *(v0 + 64);

  return sub_1000D14BC(v9, v8, v6, v5 & 1);
}

uint64_t sub_1000536B4()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  v1[39] = v3;
  *v3 = v2;
  v3[1] = sub_100053820;
  v4 = v1[19];
  v5 = v1[8];

  return sub_100065D48(v5, v4);
}

uint64_t sub_100053820()
{
  *(*v1 + 320) = v0;

  if (v0)
  {
    v2 = sub_100053E10;
  }

  else
  {
    v2 = sub_100053934;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100053934()
{
  v1 = v0[20];
  sub_10000DAF8(v0[19], &qword_10023C230, &qword_1001B4FB0);
  sub_10000DAF8(v1, &qword_10023A7D0, &unk_1001B5840);

  v2 = v0[1];

  return v2();
}

uint64_t sub_100053A10()
{
  sub_10000DB58((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100053AC0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100053B68()
{
  sub_10000DAF8(*(v0 + 160), &qword_10023A7D0, &unk_1001B5840);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100053C28()
{
  v1 = v0[19];
  v2 = v0[20];
  (*(v0[15] + 8))(v0[16], v0[14]);
  sub_10000DAF8(v1, &qword_10023C230, &qword_1001B4FB0);
  sub_10000DAF8(v2, &qword_10023A7D0, &unk_1001B5840);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100053D1C()
{
  v1 = v0[19];
  v2 = v0[20];
  (*(v0[15] + 8))(v0[16], v0[14]);
  sub_10000DAF8(v1, &qword_10023C230, &qword_1001B4FB0);
  sub_10000DAF8(v2, &qword_10023A7D0, &unk_1001B5840);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100053E10()
{
  v1 = v0[20];
  sub_10000DAF8(v0[19], &qword_10023C230, &qword_1001B4FB0);
  sub_10000DAF8(v1, &qword_10023A7D0, &unk_1001B5840);

  v2 = v0[1];

  return v2();
}

uint64_t sub_100053EE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = type metadata accessor for DeveloperBillingEvent(0);
  v4[7] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();

  return _swift_task_switch(sub_100053FE8, 0, 0);
}

uint64_t sub_100053FE8(uint64_t a1)
{
  v2 = v1[11];
  v3 = v1[8];
  v4 = v1[9];
  v5 = Logger.xpc.unsafeMutableAddressor();
  v1[12] = v5;
  v6 = *(v4 + 16);
  v1[13] = v6;
  v1[14] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v3);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Reporting developer billing event", v9, 2u);
  }

  v10 = v1[11];
  v11 = v1[8];
  v12 = v1[9];

  v13 = *(v12 + 8);
  v1[15] = v13;
  v13(v10, v11);
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_1000546DC();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v14 = v1[5];

  sub_10000DA7C((v14 + 1440), *(v14 + 1464));
  v15 = swift_task_alloc();
  v1[16] = v15;
  *v15 = v1;
  v15[1] = sub_100054358;
  v16 = v1[7];
  v17 = v1[2];

  return sub_1000DF214(v16, v17);
}

uint64_t sub_100054358()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_10005450C;
  }

  else
  {
    v2 = sub_10005446C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10005446C()
{
  sub_1000549B8(*(v0 + 56), type metadata accessor for DeveloperBillingEvent);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10005450C()
{
  sub_1000549B8(*(v0 + 56), type metadata accessor for DeveloperBillingEvent);
  (*(v0 + 104))(*(v0 + 80), *(v0 + 96), *(v0 + 64));
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
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to report developer billing event: %@", v3, 0xCu);
    sub_10000DAF8(v4, &qword_100239F10, &qword_1001B4FD0);
  }

  v6 = *(v0 + 120);
  v7 = *(v0 + 80);
  v8 = *(v0 + 64);

  v6(v7, v8);
  swift_willThrow();

  v9 = *(v0 + 8);

  return v9();
}

unint64_t sub_1000546DC()
{
  result = qword_10023AD80;
  if (!qword_10023AD80)
  {
    type metadata accessor for DeveloperBillingEvent(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023AD80);
  }

  return result;
}

uint64_t sub_100054734(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000CDE0(&qword_10023C230, &qword_1001B4FB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000547A4()
{
  result = qword_10023AD88;
  if (!qword_10023AD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023AD88);
  }

  return result;
}

uint64_t sub_1000547F8()
{
  v1 = (type metadata accessor for PostbackUpdateData(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 624) & ~v2;
  v4 = *(*v1 + 64);

  sub_10000DB58((v0 + 184));

  sub_10000DB58((v0 + 248));
  sub_10000DB58((v0 + 288));
  sub_10000DB58((v0 + 328));
  sub_10000DB58((v0 + 368));
  sub_10000DB58((v0 + 408));
  sub_10000DB58((v0 + 448));

  sub_10000DB58((v0 + 496));
  sub_10000DB58((v0 + 536));
  sub_10000DB58((v0 + 576));

  v5 = v1[10];
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000549B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100054A18(uint64_t a1)
{
  v17[3] = &type metadata for BackBoardEventDeliveryManager;
  v17[4] = &off_100218F58;
  v2 = type metadata accessor for SnoutManager(0);
  v16[3] = v2;
  v16[4] = &off_100223858;
  v16[0] = a1;
  type metadata accessor for TapEventValidator();
  v3 = swift_allocObject();
  sub_100054C30(v17, &type metadata for BackBoardEventDeliveryManager);
  v4 = sub_100054C30(v16, v2);
  __chkstk_darwin(v4);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v7 + 16))(v6);
  v8 = *v6;
  v14 = &type metadata for BackBoardEventDeliveryManager;
  v15 = &off_100218F58;
  v11 = v2;
  v12 = &off_100223858;
  *&v10 = v8;
  swift_defaultActor_initialize();
  sub_10000DA64(&v13, v3 + 112);
  sub_10000DA64(&v10, v3 + 152);
  *(v3 + 192) = 0;
  sub_10000DB58(v16);
  sub_10000DB58(v17);
  return v3;
}

uint64_t sub_100054B80()
{
  sub_10000DB58((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100054BB8()
{

  sub_10000DB58((v0 + 64));
  sub_10000DB58((v0 + 104));
  sub_10000DB58((v0 + 144));
  sub_10000DB58((v0 + 184));
  sub_10000DB58((v0 + 224));

  return _swift_deallocObject(v0, 264, 7);
}

uint64_t sub_100054C30(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_100054CA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Logger();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 56);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100054D64(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Logger();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 56);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for InstallConversionTask(uint64_t a1)
{
  result = qword_10023ADF0;
  if (!qword_10023ADF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100054E54(uint64_t a1)
{
  result = sub_100054FCC(319, &qword_10023AE00, &protocol descriptor for PostbackAttributionManager);
  if (v2 <= 0x3F)
  {
    result = sub_100054FCC(319, &qword_10023AE08, &protocol descriptor for TokenClientFactory);
    if (v3 <= 0x3F)
    {
      result = sub_100054FCC(319, &qword_10023AE10, &protocol descriptor for TaskRunner);
      if (v4 <= 0x3F)
      {
        result = sub_100054FCC(319, &qword_10023AE18, &protocol descriptor for RecordFactory);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for Logger();
          if (v6 <= 0x3F)
          {
            result = sub_100054FCC(319, &unk_10023AE20, &protocol descriptor for SnoutLogger);
            if (v7 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_100054FCC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100055028(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 sub_100055050(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_100055064(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 3 && *(a1 + 25))
  {
    return (*a1 + 3);
  }

  v3 = ((2 * ((*(a1 + 16) & 0x1000000000000000) != 0)) | ((*(a1 + 16) >> 60) >> 1) & 1) ^ 3;
  if (v3 >= 2)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1000550B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 3;
    if (a3 >= 3)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 3)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = ((2 * a2) & 2 | 1u) << 60;
      *(result + 24) = 0;
    }
  }

  return result;
}

uint64_t sub_100055168()
{
  type metadata accessor for InstallConversionTask(0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Running install conversion task", v3, 2u);
  }

  v4 = *(v0 + 16);

  v5 = *v4;
  *(v0 + 24) = *v4;
  v6 = *(v4 + 8);
  *(v0 + 32) = v6;
  v7 = *(v4 + 16);
  *(v0 + 40) = v7;
  v8 = *(v4 + 24);
  *(v0 + 80) = v8;
  if ((v7 & 0x2000000000000000) != 0)
  {
    sub_1000438D8(v6, v7 & 0xDFFFFFFFFFFFFFFFLL);
    v11 = swift_task_alloc();
    *(v0 + 48) = v11;
    *v11 = v0;
    v11[1] = sub_100055354;

    return sub_100056F8C(v5, v6, v7 & 0xDFFFFFFFFFFFFFFFLL);
  }

  else
  {
    sub_1000438D8(v6, v7);
    v9 = swift_task_alloc();
    *(v0 + 64) = v9;
    *v9 = v0;
    v9[1] = sub_100055468;

    return sub_1000556C0(v5, v6, v7, v8);
  }
}

uint64_t sub_100055354()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_100055654;
  }

  else
  {
    v2 = sub_10005CE20;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100055468()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1000555E8;
  }

  else
  {
    v2 = sub_10005557C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10005557C()
{
  sub_10005C824(v0[3], v0[4], v0[5]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1000555E8()
{
  sub_10005C824(v0[3], v0[4], v0[5]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_100055654()
{
  sub_10005C824(v0[3], v0[4], v0[5]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1000556C0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 856) = v4;
  *(v5 + 1044) = a4;
  *(v5 + 848) = a3;
  *(v5 + 840) = a2;
  *(v5 + 832) = a1;
  v6 = type metadata accessor for Calendar.Component();
  *(v5 + 864) = v6;
  *(v5 + 872) = *(v6 - 8);
  *(v5 + 880) = swift_task_alloc();
  v7 = type metadata accessor for Date();
  *(v5 + 888) = v7;
  *(v5 + 896) = *(v7 - 8);
  *(v5 + 904) = swift_task_alloc();
  *(v5 + 912) = type metadata accessor for RegisterConversionTask(0);
  *(v5 + 920) = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  *(v5 + 928) = v8;
  *(v5 + 936) = *(v8 - 8);
  *(v5 + 944) = swift_task_alloc();

  return _swift_task_switch(sub_100055878, 0, 0);
}

uint64_t sub_100055878()
{
  v1 = type metadata accessor for InstallConversionTask(0);
  *(v0 + 952) = v1;
  *(v0 + 1028) = *(v1 + 56);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Handling App Store app install flow", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 960) = v5;
  *v5 = v0;
  v5[1] = sub_1000559A4;
  v6 = *(v0 + 832);
  v7 = *(v0 + 1044);

  return sub_10005A77C(v6, v7);
}

uint64_t sub_1000559A4(char a1)
{
  v3 = *v2;
  *(v3 + 1045) = a1;
  *(v3 + 968) = v1;

  if (v1)
  {
    v4 = sub_100056818;
  }

  else
  {
    v4 = sub_100055ABC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100055ABC(uint64_t a1)
{
  if (*(v1 + 1045) == 2)
  {
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "No ad data present. Ignoring handoff", v4, 2u);
    }

    v5 = *(v1 + 8);

    return v5();
  }

  else
  {
    v7 = *(v1 + 968);
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    sub_10005C830();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    if (v7)
    {

      *(v1 + 992) = v7;
      swift_errorRetain();
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        *v10 = 138412290;
        swift_errorRetain();
        v12 = _swift_stdlib_bridgeErrorToNSError();
        *(v10 + 4) = v12;
        *v11 = v12;
        _os_log_impl(&_mh_execute_header, v8, v9, "Unpacking handed off token failed: %@", v10, 0xCu);
        sub_10000DAF8(v11, &qword_100239F10, &qword_1001B4FD0);
      }

      v95 = (v1 + 1017);
      v97 = (v1 + 1033);
      v91 = (v1 + 1038);
      v85 = (v1 + 1022);
      v101 = *(v1 + 952);
      v13 = *(v1 + 904);
      v93 = (v1 + 1009);
      v14 = *(v1 + 896);
      v87 = (v1 + 753);
      v89 = (v1 + 825);
      v15 = *(v1 + 888);
      v16 = *(v1 + 880);
      v17 = *(v1 + 872);
      v18 = *(v1 + 864);
      v99 = *(v1 + 856);

      swift_errorRetain();
      v19 = sub_1000C7C10(v7);
      v81 = v20;
      v83 = v19;
      v77 = v22;
      v79 = v21;
      static Date.now.getter();
      (*(v17 + 104))(v16, enum case for Calendar.Component.hour(_:), v18);
      v23 = sub_100025808(v13, v16);
      v25 = v24;
      (*(v17 + 8))(v16, v18);
      (*(v14 + 8))(v13, v15);
      if (v25)
      {
        v26 = 0;
      }

      else
      {
        v26 = v23;
      }

      v27 = [objc_opt_self() buildVersion];
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;

      *(v1 + 1008) = 1;
      *(v1 + 1016) = 1;
      *(v1 + 1032) = 1;
      *(v1 + 1048) = 1;
      *(v1 + 1056) = 1;
      *(v1 + 16) = 5;
      *(v1 + 18) = *v85;
      *(v1 + 22) = *(v1 + 1026);
      *(v1 + 24) = v83;
      *(v1 + 32) = v81;
      *(v1 + 40) = v79;
      *(v1 + 48) = v77;
      *(v1 + 56) = 0;
      *(v1 + 64) = 0;
      *(v1 + 72) = v26;
      *(v1 + 80) = v28;
      *(v1 + 88) = v30;
      *(v1 + 96) = 0;
      *(v1 + 97) = 33686018;
      *(v1 + 101) = 0;
      *(v1 + 104) = 0;
      v31 = *(v1 + 1008);
      *(v1 + 112) = v31;
      *(v1 + 113) = *v87;
      *(v1 + 116) = *(v1 + 756);
      *(v1 + 120) = 0;
      v32 = *(v1 + 1016);
      *(v1 + 128) = v32;
      *(v1 + 129) = 3;
      *(v1 + 130) = *v91;
      *(v1 + 134) = *(v1 + 1042);
      *(v1 + 136) = 0;
      v33 = *(v1 + 1032);
      *(v1 + 144) = v33;
      v34 = *v89;
      *(v1 + 148) = *(v1 + 828);
      *(v1 + 145) = v34;
      *(v1 + 152) = 0;
      LOBYTE(v34) = *(v1 + 1048);
      *(v1 + 160) = v34;
      *(v1 + 161) = 768;
      *(v1 + 167) = *(v1 + 1021);
      *(v1 + 163) = *v95;
      *(v1 + 168) = 0;
      v35 = *(v1 + 1056);
      *(v1 + 176) = v35;
      *(v1 + 177) = *v93;
      *(v1 + 180) = *(v1 + 1012);
      *(v1 + 184) = 0;
      *(v1 + 192) = 0;
      *(v1 + 200) = 514;
      *(v1 + 202) = 2;
      v36 = *v97;
      *(v1 + 207) = *(v1 + 1037);
      *(v1 + 203) = v36;
      *(v1 + 240) = 5;
      *(v1 + 208) = 0u;
      *(v1 + 224) = 0u;
      v37 = *v85;
      *(v1 + 246) = *(v1 + 1026);
      *(v1 + 242) = v37;
      *(v1 + 248) = v83;
      *(v1 + 256) = v81;
      *(v1 + 264) = v79;
      *(v1 + 272) = v77;
      *(v1 + 280) = 0;
      *(v1 + 288) = 0;
      *(v1 + 296) = v26;
      *(v1 + 304) = v28;
      *(v1 + 312) = v30;
      *(v1 + 320) = 0;
      *(v1 + 321) = 33686018;
      *(v1 + 325) = 0;
      *(v1 + 328) = 0;
      *(v1 + 336) = v31;
      v38 = *v87;
      *(v1 + 340) = *(v1 + 756);
      *(v1 + 337) = v38;
      *(v1 + 344) = 0;
      *(v1 + 352) = v32;
      *(v1 + 353) = 3;
      v39 = *v91;
      *(v1 + 358) = *(v1 + 1042);
      *(v1 + 354) = v39;
      *(v1 + 360) = 0;
      *(v1 + 368) = v33;
      v40 = *v89;
      *(v1 + 372) = *(v1 + 828);
      *(v1 + 369) = v40;
      *(v1 + 376) = 0;
      *(v1 + 384) = v34;
      *(v1 + 385) = 768;
      v41 = *v95;
      *(v1 + 391) = *(v1 + 1021);
      *(v1 + 387) = v41;
      *(v1 + 392) = 0;
      *(v1 + 400) = v35;
      v42 = *v93;
      *(v1 + 404) = *(v1 + 1012);
      *(v1 + 401) = v42;
      *(v1 + 408) = 0;
      *(v1 + 416) = 0;
      *(v1 + 424) = 514;
      *(v1 + 426) = 2;
      v43 = *v97;
      *(v1 + 431) = *(v1 + 1037);
      *(v1 + 427) = v43;
      *(v1 + 432) = 0u;
      *(v1 + 448) = 0u;
      sub_100010568(v1 + 16, v1 + 464);
      sub_10003AE8C(v1 + 240);
      sub_10000DA7C((v99 + *(v101 + 60)), *(v99 + *(v101 + 60) + 24));
      v44 = type metadata accessor for SnoutManager(0);
      v45 = swift_task_alloc();
      *(v1 + 1000) = v45;
      *v45 = v1;
      v45[1] = sub_100056668;
      v46 = *(v1 + 832);

      return (sub_10016E27C)(v1 + 16, v46, 0, 0, v44, &off_100223858);
    }

    else
    {
      v47 = *(v1 + 1045);
      v102 = *(v1 + 1028);
      v103 = *(v1 + 952);
      v48 = *(v1 + 944);
      v49 = *(v1 + 936);
      v50 = *(v1 + 928);
      v51 = *(v1 + 920);
      v86 = *(v1 + 912);
      v52 = *(v1 + 856);

      *(v1 + 824) = *(v1 + 752);
      v53 = *(v1 + 704);
      *(v1 + 760) = *(v1 + 688);
      *(v1 + 776) = v53;
      v54 = *(v1 + 736);
      *(v1 + 792) = *(v1 + 720);
      *(v1 + 808) = v54;
      v100 = *(v1 + 824);
      v96 = *(v1 + 776);
      v98 = *(v1 + 816);
      v92 = *(v1 + 792);
      v94 = *(v1 + 760);
      v88 = *(v1 + 784);
      v90 = *(v1 + 800);
      v82 = *(v1 + 808);
      v84 = *(v1 + 768);

      UUID.init()();
      v55 = UUID.uuidString.getter();
      v68 = v56;
      v69 = v55;
      (*(v49 + 8))(v48, v50);
      sub_10005C884(v1 + 760);
      v57 = v47 & 1;
      v58 = *(v52 + 8);
      v59 = *(v52 + 9);
      v78 = *(v52 + 10);
      v80 = *(v52 + 7);
      v60 = *(v52 + 11);
      v70 = *(v52 + 12);
      v71 = *(v52 + 14);
      v75 = *(v52 + 16);
      v76 = *(v52 + 13);
      v72 = *(v52 + 15);
      v73 = *(v52 + 17);
      v74 = *(v52 + 18);
      sub_10000CE28((v52 + 152), v51 + 256);
      sub_10000CE28((v52 + 272), v51 + 296);
      v61 = *(v86 + 64);
      v62 = type metadata accessor for Logger();
      (*(*(v62 - 8) + 16))(v51 + v61, &v52[v102], v62);
      sub_10000CE28(&v52[*(v103 + 60)], v51 + *(v86 + 68));
      *v51 = 0;
      *(v51 + 8) = 1;
      *(v51 + 16) = v69;
      *(v51 + 24) = v68;
      *(v51 + 32) = v98;
      *(v51 + 40) = v96;
      *(v51 + 48) = v88;
      *(v51 + 56) = v94;
      *(v51 + 64) = v84;
      *(v51 + 72) = v92;
      *(v51 + 80) = v90;
      *(v51 + 88) = v82;
      *(v51 + 96) = v100;
      *(v51 + 97) = v57;
      *(v51 + 98) = 0;
      *(v51 + 99) = v100;
      *(v51 + 104) = 0xD000000000000012;
      *(v51 + 112) = 0x80000001001CB3C0;
      *(v51 + 120) = v57;
      *(v51 + 128) = 0;
      *(v51 + 136) = 1;
      *(v51 + 144) = 0;
      *(v51 + 152) = 0;
      *(v51 + 160) = v80;
      *(v51 + 168) = v58;
      *(v51 + 176) = v59;
      *(v51 + 184) = v78;
      *(v51 + 192) = v60;
      *(v51 + 200) = v70;
      *(v51 + 208) = v76;
      *(v51 + 216) = v71;
      *(v51 + 224) = v72;
      *(v51 + 232) = v75;
      *(v51 + 240) = v73;
      *(v51 + 248) = v74;

      v63 = v59;

      v64 = v70;

      v65 = v72;

      v66 = v74;
      v67 = swift_task_alloc();
      *(v1 + 976) = v67;
      *v67 = v1;
      v67[1] = sub_1000564BC;

      return sub_100072714();
    }
  }
}

uint64_t sub_1000564BC()
{
  *(*v1 + 984) = v0;

  if (v0)
  {
    v2 = sub_100056DF0;
  }

  else
  {
    v2 = sub_1000565D0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000565D0()
{
  sub_10005C8D8(*(v0 + 920));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100056668()
{
  v1 = *v0;

  sub_10003AE8C(v1 + 16);

  return _swift_task_switch(sub_10005676C, 0, 0);
}

uint64_t sub_10005676C(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_100056818()
{
  v1 = *(v0 + 968);
  *(v0 + 992) = v1;
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Unpacking handed off token failed: %@", v4, 0xCu);
    sub_10000DAF8(v5, &qword_100239F10, &qword_1001B4FD0);
  }

  v51 = (v0 + 1017);
  v52 = (v0 + 1033);
  v49 = (v0 + 1038);
  v46 = (v0 + 1022);
  v54 = *(v0 + 952);
  v7 = *(v0 + 904);
  v50 = (v0 + 1009);
  v8 = *(v0 + 896);
  v47 = (v0 + 753);
  v48 = (v0 + 825);
  v9 = *(v0 + 888);
  v10 = *(v0 + 880);
  v11 = *(v0 + 872);
  v12 = *(v0 + 864);
  v53 = *(v0 + 856);

  swift_errorRetain();
  v13 = sub_1000C7C10(v1);
  v44 = v14;
  v45 = v13;
  v42 = v16;
  v43 = v15;
  static Date.now.getter();
  (*(v11 + 104))(v10, enum case for Calendar.Component.hour(_:), v12);
  v17 = sub_100025808(v7, v10);
  v19 = v18;
  (*(v11 + 8))(v10, v12);
  (*(v8 + 8))(v7, v9);
  if (v19)
  {
    v20 = 0;
  }

  else
  {
    v20 = v17;
  }

  v21 = [objc_opt_self() buildVersion];
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  *(v0 + 1008) = 1;
  *(v0 + 1016) = 1;
  *(v0 + 1032) = 1;
  *(v0 + 1048) = 1;
  *(v0 + 16) = 5;
  *(v0 + 1056) = 1;
  *(v0 + 18) = *v46;
  *(v0 + 22) = *(v0 + 1026);
  *(v0 + 24) = v45;
  *(v0 + 32) = v44;
  *(v0 + 40) = v43;
  *(v0 + 48) = v42;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = v20;
  *(v0 + 80) = v22;
  *(v0 + 88) = v24;
  *(v0 + 96) = 0;
  *(v0 + 97) = 33686018;
  *(v0 + 101) = 0;
  *(v0 + 104) = 0;
  v25 = *(v0 + 1008);
  *(v0 + 112) = v25;
  *(v0 + 113) = *v47;
  *(v0 + 116) = *(v0 + 756);
  *(v0 + 120) = 0;
  v26 = *(v0 + 1016);
  *(v0 + 128) = v26;
  *(v0 + 129) = 3;
  *(v0 + 130) = *v49;
  *(v0 + 134) = *(v0 + 1042);
  *(v0 + 136) = 0;
  v27 = *(v0 + 1032);
  *(v0 + 144) = v27;
  v28 = *v48;
  *(v0 + 148) = *(v0 + 828);
  *(v0 + 145) = v28;
  *(v0 + 152) = 0;
  LOBYTE(v28) = *(v0 + 1048);
  *(v0 + 160) = v28;
  *(v0 + 161) = 768;
  *(v0 + 167) = *(v0 + 1021);
  *(v0 + 163) = *v51;
  *(v0 + 168) = 0;
  v29 = *(v0 + 1056);
  *(v0 + 176) = v29;
  *(v0 + 177) = *v50;
  *(v0 + 180) = *(v0 + 1012);
  *(v0 + 184) = 0;
  *(v0 + 192) = 0;
  *(v0 + 200) = 514;
  *(v0 + 202) = 2;
  v30 = *v52;
  *(v0 + 207) = *(v0 + 1037);
  *(v0 + 203) = v30;
  *(v0 + 240) = 5;
  *(v0 + 208) = 0u;
  *(v0 + 224) = 0u;
  v31 = *v46;
  *(v0 + 246) = *(v0 + 1026);
  *(v0 + 242) = v31;
  *(v0 + 248) = v45;
  *(v0 + 256) = v44;
  *(v0 + 264) = v43;
  *(v0 + 272) = v42;
  *(v0 + 280) = 0;
  *(v0 + 288) = 0;
  *(v0 + 296) = v20;
  *(v0 + 304) = v22;
  *(v0 + 312) = v24;
  *(v0 + 320) = 0;
  *(v0 + 321) = 33686018;
  *(v0 + 325) = 0;
  *(v0 + 328) = 0;
  *(v0 + 336) = v25;
  v32 = *v47;
  *(v0 + 340) = *(v0 + 756);
  *(v0 + 337) = v32;
  *(v0 + 344) = 0;
  *(v0 + 352) = v26;
  *(v0 + 353) = 3;
  v33 = *v49;
  *(v0 + 358) = *(v0 + 1042);
  *(v0 + 354) = v33;
  *(v0 + 360) = 0;
  *(v0 + 368) = v27;
  v34 = *v48;
  *(v0 + 372) = *(v0 + 828);
  *(v0 + 369) = v34;
  *(v0 + 376) = 0;
  *(v0 + 384) = v28;
  *(v0 + 385) = 768;
  v35 = *v51;
  *(v0 + 391) = *(v0 + 1021);
  *(v0 + 387) = v35;
  *(v0 + 392) = 0;
  *(v0 + 400) = v29;
  v36 = *v50;
  *(v0 + 404) = *(v0 + 1012);
  *(v0 + 401) = v36;
  *(v0 + 408) = 0;
  *(v0 + 416) = 0;
  *(v0 + 424) = 514;
  *(v0 + 426) = 2;
  v37 = *v52;
  *(v0 + 431) = *(v0 + 1037);
  *(v0 + 427) = v37;
  *(v0 + 432) = 0u;
  *(v0 + 448) = 0u;
  sub_100010568(v0 + 16, v0 + 464);
  sub_10003AE8C(v0 + 240);
  sub_10000DA7C((v53 + *(v54 + 60)), *(v53 + *(v54 + 60) + 24));
  v38 = type metadata accessor for SnoutManager(0);
  v39 = swift_task_alloc();
  *(v0 + 1000) = v39;
  *v39 = v0;
  v39[1] = sub_100056668;
  v40 = *(v0 + 832);

  return (sub_10016E27C)(v0 + 16, v40, 0, 0, v38, &off_100223858);
}

uint64_t sub_100056DF0()
{
  sub_10005C8D8(*(v0 + 920));
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
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to register conversion: %@", v3, 0xCu);
    sub_10000DAF8(v4, &qword_100239F10, &qword_1001B4FD0);
  }

  swift_willThrow();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100056F8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[416] = v3;
  v4[415] = a3;
  v4[414] = a2;
  v4[413] = a1;
  v4[417] = type metadata accessor for RegisterConversionTask(0);
  v4[418] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v4[419] = v6;
  v4[420] = *(v6 - 8);
  v4[421] = swift_task_alloc();
  v7 = type metadata accessor for SKANUTClient();
  v4[422] = v7;
  v4[423] = *(v7 - 8);
  v4[424] = swift_task_alloc();
  v8 = type metadata accessor for String.Encoding();
  v4[425] = v8;
  v4[426] = *(v8 - 8);
  v4[427] = swift_task_alloc();
  v9 = type metadata accessor for Calendar.Component();
  v4[428] = v9;
  v4[429] = *(v9 - 8);
  v4[430] = swift_task_alloc();
  v10 = type metadata accessor for Date();
  v4[431] = v10;
  v4[432] = *(v10 - 8);
  v4[433] = swift_task_alloc();
  v11 = swift_task_alloc();
  v4[434] = v11;
  *v11 = v4;
  v11[1] = sub_100057264;

  return sub_10005A77C(a1, 2);
}

uint64_t sub_100057264(char a1)
{
  v3 = *v2;
  *(v3 + 4118) = a1;
  *(v3 + 3480) = v1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_10005744C, 0, 0);
  }
}

uint64_t sub_10005744C(uint64_t a1)
{
  if (*(v1 + 4118) == 2)
  {
    type metadata accessor for InstallConversionTask(0);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "No ad information found. Aborting flow", v4, 2u);
    }

    v5 = *(v1 + 8);

    return v5();
  }

  v7 = *(v1 + 3464);
  v119 = (v1 + 3152);
  v117 = (v1 + 2912);
  v118 = (v1 + 3192);
  v8 = *(v1 + 3456);
  v9 = *(v1 + 3448);
  v10 = *(v1 + 3440);
  v11 = *(v1 + 3432);
  v12 = *(v1 + 3424);
  static Date.now.getter();
  *(v1 + 3244) = enum case for Calendar.Component.hour(_:);
  v13 = *(v11 + 104);
  *(v1 + 3488) = v13;
  *(v1 + 3496) = (v11 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v13(v10);
  v14 = sub_100025808(v7, v10);
  v16 = v15;
  v17 = *(v11 + 8);
  *(v1 + 3504) = v17;
  *(v1 + 3512) = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17(v10, v12);
  v18 = *(v8 + 8);
  *(v1 + 3520) = v18;
  *(v1 + 3528) = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v18(v7, v9);
  if (v16)
  {
    v19 = 0;
  }

  else
  {
    v19 = v14;
  }

  v20 = objc_opt_self();
  *(v1 + 3536) = v20;
  v21 = [v20 buildVersion];
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  *(v1 + 4128) = 1;
  *(v1 + 4144) = 1;
  *(v1 + 4152) = 1;
  *(v1 + 4160) = 1;
  *(v1 + 4168) = 1;
  *(v1 + 2480) = 1287;
  *(v1 + 2488) = 0u;
  *(v1 + 2504) = 0u;
  *(v1 + 2520) = 0u;
  *(v1 + 2536) = v19;
  *(v1 + 2544) = v22;
  *(v1 + 2552) = v24;
  *(v1 + 2560) = 0;
  *(v1 + 2561) = 33686018;
  *(v1 + 2565) = 2;
  *(v1 + 2568) = 0;
  *(v1 + 2576) = 1;
  *(v1 + 2584) = 0;
  *(v1 + 16) = 1287;
  v25 = (v1 + 16);
  *(v1 + 2592) = 257;
  *(v1 + 2600) = 0;
  v26 = *(v1 + 4152);
  *(v1 + 2608) = v26;
  *(v1 + 2616) = 0;
  v27 = *(v1 + 4160);
  *(v1 + 2624) = v27;
  *(v1 + 2625) = 768;
  *(v1 + 2632) = 0;
  v28 = *(v1 + 4168);
  *(v1 + 2640) = v28;
  *(v1 + 2648) = 0u;
  *(v1 + 2664) = 514;
  *(v1 + 2666) = 2;
  *(v1 + 2672) = 0u;
  *(v1 + 2688) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 72) = v19;
  *(v1 + 80) = v22;
  *(v1 + 88) = v24;
  *(v1 + 96) = 0;
  *(v1 + 101) = 2;
  *(v1 + 97) = 33686018;
  *(v1 + 104) = 0;
  *(v1 + 112) = 1;
  *(v1 + 120) = 0;
  *(v1 + 128) = 257;
  *(v1 + 136) = 0;
  *(v1 + 144) = v26;
  *(v1 + 152) = 0;
  *(v1 + 160) = v27;
  *(v1 + 161) = 768;
  *(v1 + 168) = 0;
  *(v1 + 176) = v28;
  *(v1 + 184) = 0;
  *(v1 + 192) = 0;
  *(v1 + 200) = 514;
  *(v1 + 202) = 2;
  *(v1 + 208) = 0u;
  *(v1 + 224) = 0u;
  sub_100010568(v1 + 2480, v1 + 2256);
  sub_10003AE8C(v1 + 16);
  v29 = *(v1 + 2496);
  *(v1 + 3544) = *(v1 + 2480);
  *(v1 + 3560) = v29;
  *(v1 + 3576) = *(v1 + 2512);
  v30 = *(v1 + 2568);
  *(v1 + 2944) = *(v1 + 2552);
  *(v1 + 2960) = v30;
  *(v1 + 2976) = *(v1 + 2584);
  v31 = *(v1 + 2536);
  *v117 = *(v1 + 2520);
  *(v1 + 2928) = v31;
  *(v1 + 3584) = *(v1 + 2600);
  *(v1 + 4136) = *(v1 + 2608);
  v32 = *(v1 + 2625);
  *v118 = *(v1 + 2609);
  *(v1 + 3208) = v32;
  *(v1 + 3223) = *(v1 + 2640);
  v33 = *(v1 + 2648);
  v34 = *(v1 + 2656);
  v35 = *(v1 + 2680);
  *v119 = *(v1 + 2664);
  *(v1 + 3168) = v35;
  *(v1 + 3184) = *(v1 + 2696);
  static String.Encoding.utf8.getter();
  v36 = String.init(data:encoding:)();
  *(v1 + 3592) = v37;
  if (!v37)
  {
    sub_10005C97C();
    v40 = swift_allocError();
    *v54 = xmmword_1001B7890;
    *(v54 + 16) = 2;
    v41 = swift_willThrow();
    goto LABEL_14;
  }

  v38 = v37;
  v39 = *(v1 + 3480);
  v111 = v36;
  sub_10005AD2C(v36, v37, v1 + 2704);
  if (v39)
  {
    v40 = v39;

LABEL_14:
    v55 = 0;
LABEL_15:
    *(v1 + 4016) = v41;
    *(v1 + 4008) = v51;
    *(v1 + 4000) = v52;
    *(v1 + 3992) = v48;
    *(v1 + 3984) = v49;
    *(v1 + 3968) = v53;
    *(v1 + 3960) = v50;
    *(v1 + 3952) = v45;
    *(v1 + 3944) = v47;
    *(v1 + 3936) = v44;
    *(v1 + 3928) = v46;
    *(v1 + 3920) = v43;
    *(v1 + 3912) = object;
    *(v1 + 3904) = v25;
    *(v1 + 4123) = 0;
    *(v1 + 4122) = v55;
    *(v1 + 3880) = v40;
    v113 = v34;
    v115 = v33;
    *(v1 + 3872) = v34;
    *(v1 + 3864) = v33;
    v112 = type metadata accessor for InstallConversionTask(0);
    swift_errorRetain();
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      *v58 = 138412290;
      swift_errorRetain();
      v60 = _swift_stdlib_bridgeErrorToNSError();
      *(v58 + 4) = v60;
      *v59 = v60;
      _os_log_impl(&_mh_execute_header, v56, v57, "POD exchange error %@", v58, 0xCu);
      sub_10000DAF8(v59, &qword_100239F10, &qword_1001B4FD0);
    }

    v61 = *(v1 + 3584);
    v62 = *(v1 + 3544);
    v63 = *(v1 + 3328);

    v64 = sub_1000C7C10(v40);
    v66 = v65;
    v68 = v67;
    v70 = v69;
    *(v1 + 4024) = v64;
    *(v1 + 4032) = v65;
    *(v1 + 4040) = v67;
    *(v1 + 4048) = v69;

    sub_10000DA7C((v63 + *(v112 + 60)), *(v63 + *(v112 + 60) + 24));
    *(v1 + 240) = v62;
    *(v1 + 248) = v64;
    *(v1 + 256) = v66;
    *(v1 + 264) = v68;
    *(v1 + 272) = v70;
    v71 = *(v1 + 2960);
    *(v1 + 312) = *(v1 + 2944);
    *(v1 + 328) = v71;
    *(v1 + 344) = *(v1 + 2976);
    v72 = *(v1 + 2928);
    *(v1 + 280) = *v117;
    *(v1 + 296) = v72;
    *(v1 + 360) = v61;
    *(v1 + 368) = *(v1 + 4136);
    v73 = *(v1 + 3208);
    *(v1 + 369) = *v118;
    *(v1 + 385) = v73;
    *(v1 + 400) = *(v1 + 3223);
    *(v1 + 408) = v115;
    *(v1 + 416) = v113;
    v74 = *(v1 + 3168);
    *(v1 + 424) = *v119;
    *(v1 + 440) = v74;
    *(v1 + 456) = *(v1 + 3184);
    v75 = type metadata accessor for SnoutManager(0);
    v76 = swift_task_alloc();
    *(v1 + 4056) = v76;
    *v76 = v1;
    v76[1] = sub_100059EB0;
    v77 = *(v1 + 3304);

    return (sub_10016E27C)(v1 + 240, v77, 0, 0, v75, &off_100223858);
  }

  v78 = *(v1 + 3392);
  v79 = *(v1 + 3384);
  v80 = *(v1 + 3376);
  v81 = sub_1000D2EBC();
  v114 = v82;
  v116 = v81;
  *(v1 + 3600) = v81;
  *(v1 + 3608) = v82;

  v83 = sub_1000EBF70();
  v85 = v84;
  *(v1 + 3616) = v83;
  *(v1 + 3624) = v84;
  v86 = Data.base64EncodedString(options:)(0);
  *(v1 + 3632) = v86;
  sub_1000438D8(v83, v85);
  v109 = v85;
  v110 = v83;
  SKANUTClient.init(privateInput:)();
  *(v1 + 3136) = v80;
  *(v1 + 3144) = &off_100217540;
  v87 = sub_10005CA24((v1 + 3112));
  (*(v79 + 16))(v87, v78, v80);
  type metadata accessor for PersistentTokenHandler();
  v25 = swift_allocObject();
  *(v1 + 3648) = v25;
  v88 = *(v1 + 3136);
  v89 = sub_100054C30(v1 + 3112, v88);
  v90 = *(v88 - 8);
  v91 = swift_task_alloc();
  (*(v90 + 16))(v91, v89, v88);
  v25[5] = v80;
  v25[6] = &off_100217540;
  v92 = sub_10005CA24(v25 + 2);
  (*(v79 + 32))(v92, v91, v80);
  v25[7] = 0;
  sub_10000DB58((v1 + 3112));

  sub_10000DA7C(v25 + 2, v25[5]);

  v93 = SKANUTClient.blindedElement()();
  v95 = v94;
  v96 = Data.base64EncodedString(options:)(0);
  *(v1 + 3656) = v96._object;
  sub_10001BABC(v93, v95);
  sub_10000DA7C(v25 + 2, v25[5]);
  v97 = SKANUTClient.input.getter();
  v99 = v98;
  *(v1 + 3664) = Data.base64EncodedString(options:)(0)._object;
  sub_10001BABC(v97, v99);
  v100 = sub_1000EBFFC();
  *(v1 + 3672) = v100;
  if (v101)
  {
    v102 = *(v1 + 3392);
    v103 = *(v1 + 3384);
    v104 = *(v1 + 3376);

    sub_10005CA88();
    v40 = swift_allocError();
    v55 = 1;
    *v105 = 1;
    swift_willThrow();

    sub_10001BABC(v110, v109);
    (*(v103 + 8))(v102, v104);
    v51 = *(v1 + 2792);
    v41 = *(v1 + 2800);
    v48 = *(v1 + 2776);
    v52 = *(v1 + 2784);
    v49 = *(v1 + 2768);
    v53 = *(v1 + 2752);
    v45 = *(v1 + 2736);
    v50 = *(v1 + 2744);
    v44 = *(v1 + 2720);
    v47 = *(v1 + 2728);
    v43 = *(v1 + 2704);
    v46 = *(v1 + 2712);
    v34 = v114;
    v33 = v116;
    object = v86._object;
    goto LABEL_15;
  }

  v106 = v100;
  v107 = *(v1 + 3304);
  v25[7] = v100;

  *(v1 + 3064) = v111;
  *(v1 + 3072) = v38;
  *(v1 + 3080) = v107;
  *(v1 + 3088) = v96;
  *(v1 + 3104) = v106;

  v108 = swift_task_alloc();
  *(v1 + 3680) = v108;
  *v108 = v1;
  v108[1] = sub_100058018;

  return sub_1000FF410(v1 + 2992);
}

uint64_t sub_100058018()
{
  *(*v1 + 3688) = v0;

  if (v0)
  {

    v2 = sub_10005939C;
  }

  else
  {
    swift_bridgeObjectRelease_n();

    v2 = sub_100058198;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100058198()
{
  v1 = *(v0 + 3608);
  v2 = *(v0 + 3600);
  v3 = *(v0 + 3576);
  v4 = *(v0 + 3328);
  *(v0 + 4136) = 0;
  v5 = type metadata accessor for InstallConversionTask(0);
  *(v0 + 3696) = v5;
  v6 = *(v5 + 60);
  *(v0 + 4108) = v6;
  v16 = *(v0 + 3560);
  v17 = *(v0 + 3544);
  sub_10000DA7C((v4 + v6), *(v4 + v6 + 24));
  *(v0 + 464) = v17;
  *(v0 + 480) = v16;
  *(v0 + 496) = v3;
  v7 = *(v0 + 2928);
  v8 = *(v0 + 2960);
  *(v0 + 536) = *(v0 + 2944);
  *(v0 + 552) = v8;
  *(v0 + 568) = *(v0 + 2976);
  *(v0 + 504) = *(v0 + 2912);
  *(v0 + 520) = v7;
  *(v0 + 584) = 200;
  *(v0 + 592) = *(v0 + 4136);
  v9 = *(v0 + 3192);
  v10 = *(v0 + 3208);
  *(v0 + 624) = *(v0 + 3223);
  *(v0 + 593) = v9;
  *(v0 + 609) = v10;
  *(v0 + 632) = v2;
  *(v0 + 640) = v1;
  v11 = *(v0 + 3168);
  *(v0 + 648) = *(v0 + 3152);
  *(v0 + 664) = v11;
  *(v0 + 680) = *(v0 + 3184);
  *(v0 + 3704) = &unk_1001C3B20;
  *(v0 + 3712) = &off_100223860 & 0xFFFFFFFFFFFFLL | 0x823E000000000000;
  v12 = type metadata accessor for SnoutManager(0);
  *(v0 + 3720) = v12;
  v13 = swift_task_alloc();
  *(v0 + 3728) = v13;
  *v13 = v0;
  v13[1] = sub_1000583E4;
  v14 = *(v0 + 3304);

  return (sub_10016E27C)(v0 + 464, v14, 0, 0, v12, &off_100223858);
}

uint64_t sub_1000583E4()
{

  return _swift_task_switch(sub_10005850C, 0, 0);
}

uint64_t sub_10005850C()
{
  v1 = *(v0 + 3392);
  v2 = *(v0 + 3384);
  v3 = *(v0 + 3376);
  sub_10001BABC(*(v0 + 3616), *(v0 + 3624));
  (*(v2 + 8))(v1, v3);
  if (*(v0 + 2736) == 0x6F6C6E776F646572 && *(v0 + 2744) == 0xEA00000000006461)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  *(v0 + 4119) = v5 & 1;
  v6 = *(v0 + 3672);
  v7 = *(v0 + 3416);
  v8 = *(v0 + 3408);
  v124 = *(v0 + 3400);
  *(v0 + 3288) = *(v0 + 3304);
  v9 = 1702195828;
  if ((v5 & 1) == 0)
  {
    v9 = 0x65736C6166;
  }

  v121 = v9;
  if (v5)
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  dispatch thunk of CustomStringConvertible.description.getter();

  v11._countAndFlagsBits = 10715618;
  v11._object = 0xA300000000000000;
  String.append(_:)(v11);

  *(v0 + 3296) = v6;
  v12 = dispatch thunk of CustomStringConvertible.description.getter();
  v14 = v13;

  v15._countAndFlagsBits = v12;
  v15._object = v14;
  String.append(_:)(v15);

  v16._countAndFlagsBits = 10715618;
  v16._object = 0xA300000000000000;
  String.append(_:)(v16);

  v17._countAndFlagsBits = v121;
  v17._object = v10;
  String.append(_:)(v17);

  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  String.append(_:)(v18);

  static String.Encoding.utf8.getter();
  v19 = String.data(using:allowLossyConversion:)();
  v21 = v20;

  *(v0 + 3736) = v19;
  *(v0 + 3744) = v21;
  (*(v8 + 8))(v7, v124);
  if (v21 >> 60 == 15)
  {

    sub_10005CADC(v0 + 2992);
    sub_10005C9D0(v0 + 2704);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Could not get data from public input", v24, 2u);
    }

    sub_10005C97C();
    v25 = swift_allocError();
    *v26 = xmmword_1001B78C0;
    *(v26 + 16) = 2;
    swift_willThrow();
    goto LABEL_18;
  }

  v125 = *(v0 + 3688);
  v27 = *(v0 + 2992);
  v28 = *(v0 + 3000);
  v29 = *(v0 + 3008);
  v30 = *(v0 + 3016);
  v31 = *(v0 + 3024);
  *(v0 + 3752) = v31;
  v32 = *(v0 + 3032);
  *(v0 + 3760) = v32;

  v33 = sub_1000EBBA4(v19, v21, v31, v32, v27, v28, v29, v30);
  *(v0 + 3768) = v33;
  *(v0 + 3776) = v34;
  if (v125)
  {
    v25 = v125;
    sub_10005CB30(v19, v21);
    sub_10005CADC(v0 + 2992);

    sub_10005C9D0(v0 + 2704);
LABEL_18:
    *(v0 + 4064) = v25;
    swift_errorRetain();
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v37 = 138412290;
      swift_errorRetain();
      v39 = _swift_stdlib_bridgeErrorToNSError();
      *(v37 + 4) = v39;
      *v38 = v39;
      _os_log_impl(&_mh_execute_header, v35, v36, "Token finalization error: %@", v37, 0xCu);
      sub_10000DAF8(v38, &qword_100239F10, &qword_1001B4FD0);
    }

    v120 = (v0 + 4113);
    v122 = *(v0 + 3704);
    v118 = (v0 + 4097);
    v40 = v35;
    v41 = *(v0 + 4108);
    v119 = (v0 + 4089);
    v114 = (v0 + 4081);
    v115 = (v0 + 3238);
    v116 = (v0 + 3231);
    v110 = *(v0 + 3536);
    v109 = *(v0 + 3520);
    v42 = *(v0 + 3488);
    v43 = *(v0 + 3244);
    v44 = *(v0 + 3464);
    v107 = *(v0 + 3448);
    v108 = *(v0 + 3504);
    v45 = *(v0 + 3440);
    v46 = *(v0 + 3424);
    v47 = *(v0 + 3328);

    v117 = (v47 + v41);
    swift_errorRetain();
    v48 = sub_1000C7C10(v25);
    v112 = v50;
    v113 = v49;
    v111 = v51;
    static Date.now.getter();
    v42(v45, v43, v46);
    v52 = sub_100025808(v44, v45);
    LOBYTE(v41) = v53;
    v108(v45, v46);
    v109(v44, v107);
    if (v41)
    {
      v54 = 0;
    }

    else
    {
      v54 = v52;
    }

    v55 = [v110 buildVersion];
    v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = v57;

    *(v0 + 4096) = 1;
    *(v0 + 4080) = 1;
    *(v0 + 4088) = 1;
    *(v0 + 4112) = 1;
    *(v0 + 4120) = 1;
    *(v0 + 688) = 5;
    *(v0 + 690) = *(v0 + 4102);
    *(v0 + 694) = *(v0 + 4106);
    *(v0 + 696) = v48;
    *(v0 + 704) = v113;
    *(v0 + 712) = v112;
    *(v0 + 720) = v111;
    *(v0 + 728) = 0u;
    *(v0 + 744) = v54;
    *(v0 + 752) = v56;
    *(v0 + 760) = v58;
    *(v0 + 768) = 0;
    *(v0 + 769) = 33686018;
    *(v0 + 773) = 0;
    *(v0 + 776) = 0;
    v59 = *(v0 + 4096);
    *(v0 + 784) = v59;
    *(v0 + 785) = *v114;
    *(v0 + 788) = *(v0 + 4084);
    *(v0 + 792) = 0;
    v60 = *(v0 + 4080);
    *(v0 + 800) = v60;
    *(v0 + 801) = 3;
    *(v0 + 802) = *v115;
    *(v0 + 806) = *(v0 + 3242);
    *(v0 + 808) = 0;
    v61 = *(v0 + 4088);
    *(v0 + 816) = v61;
    *(v0 + 820) = *(v0 + 3234);
    *(v0 + 817) = *v116;
    *(v0 + 824) = 0;
    v62 = *(v0 + 4112);
    *(v0 + 832) = v62;
    *(v0 + 833) = 768;
    *(v0 + 839) = *(v0 + 4101);
    *(v0 + 835) = *v118;
    *(v0 + 840) = 0;
    v63 = *(v0 + 4120);
    *(v0 + 848) = v63;
    v64 = *v119;
    *(v0 + 852) = *(v0 + 4092);
    *(v0 + 849) = v64;
    *(v0 + 856) = 0u;
    *(v0 + 872) = 514;
    *(v0 + 874) = 2;
    v65 = *v120;
    *(v0 + 879) = *(v0 + 4117);
    *(v0 + 875) = v65;
    *(v0 + 880) = 0u;
    *(v0 + 896) = 0u;
    *(v0 + 1360) = 5;
    v66 = *(v0 + 4102);
    *(v0 + 1366) = *(v0 + 4106);
    *(v0 + 1362) = v66;
    *(v0 + 1368) = v48;
    *(v0 + 1376) = v113;
    *(v0 + 1384) = v112;
    *(v0 + 1392) = v111;
    *(v0 + 1400) = 0u;
    *(v0 + 1416) = v54;
    *(v0 + 1424) = v56;
    *(v0 + 1432) = v58;
    *(v0 + 1440) = 0;
    *(v0 + 1441) = 33686018;
    *(v0 + 1445) = 0;
    *(v0 + 1448) = 0;
    *(v0 + 1456) = v59;
    v67 = *v114;
    *(v0 + 1460) = *(v0 + 4084);
    *(v0 + 1457) = v67;
    *(v0 + 1464) = 0;
    *(v0 + 1472) = v60;
    *(v0 + 1473) = 3;
    v68 = *v115;
    *(v0 + 1478) = *(v0 + 3242);
    *(v0 + 1474) = v68;
    *(v0 + 1480) = 0;
    *(v0 + 1488) = v61;
    v69 = *v116;
    *(v0 + 1492) = *(v0 + 3234);
    *(v0 + 1489) = v69;
    *(v0 + 1496) = 0;
    *(v0 + 1504) = v62;
    *(v0 + 1505) = 768;
    v70 = *v118;
    *(v0 + 1511) = *(v0 + 4101);
    *(v0 + 1507) = v70;
    *(v0 + 1512) = 0;
    *(v0 + 1520) = v63;
    v71 = *v119;
    *(v0 + 1524) = *(v0 + 4092);
    *(v0 + 1521) = v71;
    *(v0 + 1528) = 0u;
    *(v0 + 1544) = 514;
    *(v0 + 1546) = 2;
    v72 = *v120;
    *(v0 + 1551) = *(v0 + 4117);
    *(v0 + 1547) = v72;
    *(v0 + 1568) = 0u;
    *(v0 + 1552) = 0u;
    sub_100010568(v0 + 688, v0 + 1136);
    sub_10003AE8C(v0 + 1360);
    sub_10000DA7C(v117, v117[3]);
    v127 = (v122 + *v122);
    v73 = swift_task_alloc();
    *(v0 + 4072) = v73;
    *v73 = v0;
    v73[1] = sub_10005A228;
    v74 = *(v0 + 3720);
    v75 = *(v0 + 3304);

    return (v127)(v0 + 688, v75, 0, 0, v74, &off_100223858);
  }

  v77 = v21;
  v123 = v33;
  v126 = v34;
  v78 = [objc_allocWithZone(NSNumberFormatter) init];
  v79 = String._bridgeToObjectiveC()();
  v80 = [v78 numberFromString:v79];

  if (!v80)
  {
    sub_10005CADC(v0 + 2992);

    sub_10005C9D0(v0 + 2704);

    v98 = Logger.logObject.getter();
    v99 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      *v100 = 0;
      _os_log_impl(&_mh_execute_header, v98, v99, "Could not get marketplace ID", v100, 2u);
    }

    sub_10005C97C();
    v25 = swift_allocError();
    *v101 = xmmword_1001B78B0;
    *(v101 + 16) = 2;
    swift_willThrow();
    sub_10001BABC(v123, v126);
    sub_10005CB30(v19, v77);
    goto LABEL_18;
  }

  v81 = [v80 unsignedLongLongValue];

  sub_10005C9D0(v0 + 2704);
  v82 = objc_allocWithZone(LSApplicationRecord);
  *(v0 + 3280) = 0;
  v83 = [v82 initWithStoreItemIdentifier:v81 error:v0 + 3280];
  *(v0 + 3784) = v83;
  v84 = *(v0 + 3280);
  if (!v83)
  {
    v102 = v84;
    v25 = _convertNSErrorToError(_:)();

    swift_willThrow();

    sub_10001BABC(v123, v126);
    sub_10005CB30(v19, v77);

    sub_10005CADC(v0 + 2992);
    goto LABEL_18;
  }

  v85 = v83;
  v86 = v84;
  v87 = [v85 bundleIdentifier];
  if (!v87)
  {
    sub_10005CADC(v0 + 2992);

    v103 = Logger.logObject.getter();
    v104 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      *v105 = 0;
      _os_log_impl(&_mh_execute_header, v103, v104, "Marketplace bundle id missing", v105, 2u);
    }

    sub_10005C97C();
    v25 = swift_allocError();
    *v106 = xmmword_1001B78A0;
    *(v106 + 16) = 2;
    swift_willThrow();
    sub_10001BABC(v123, v126);
    sub_10005CB30(v19, v77);

    goto LABEL_18;
  }

  v88 = *(v0 + 3368);
  v89 = *(v0 + 3360);
  v90 = *(v0 + 3352);
  v91 = v87;
  v92 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v94 = v93;

  *(v0 + 3792) = v92;
  *(v0 + 3800) = v94;
  *(v0 + 3808) = Data.base64EncodedString(options:)(0);

  UUID.init()();
  *(v0 + 3824) = UUID.uuidString.getter();
  *(v0 + 3832) = v95;
  (*(v89 + 8))(v88, v90);

  *(v0 + 4121) = 1;
  *(v0 + 3248) = *(v0 + 3040);
  sub_10005CB44(v0 + 3248, v0 + 3264);
  v96 = swift_task_alloc();
  *(v0 + 3840) = v96;
  *v96 = v0;
  v96[1] = sub_1000597C0;
  v97 = *(v0 + 3304);

  return sub_10005B010(v0 + 2992, v92, v94, v97);
}

uint64_t sub_10005939C()
{
  v1 = *(v0 + 3392);
  v2 = *(v0 + 3384);
  v3 = *(v0 + 3376);
  sub_10001BABC(*(v0 + 3616), *(v0 + 3624));
  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 2776);
  v5 = *(v0 + 2784);
  v6 = *(v0 + 2768);
  v7 = *(v0 + 2736);
  v8 = *(v0 + 2744);
  v9 = *(v0 + 2720);
  v10 = *(v0 + 2728);
  v11 = *(v0 + 2704);
  v12 = *(v0 + 2712);
  v13 = *(v0 + 3688);
  v14 = *(v0 + 3664);
  v15 = *(v0 + 3640);
  v16 = *(v0 + 3608);
  v17 = *(v0 + 3600);
  *(v0 + 4016) = *(v0 + 2800);
  *(v0 + 4000) = v5;
  *(v0 + 3992) = v4;
  *(v0 + 3984) = v6;
  *(v0 + 3968) = *(v0 + 2752);
  *(v0 + 3960) = v8;
  *(v0 + 3952) = v7;
  *(v0 + 3944) = v10;
  *(v0 + 3936) = v9;
  *(v0 + 3928) = v12;
  *(v0 + 3920) = v11;
  *(v0 + 3912) = v15;
  v43 = v16;
  *(v0 + 3896) = vextq_s8(*(v0 + 3648), *(v0 + 3648), 8uLL);
  *(v0 + 3888) = v14;
  *(v0 + 4122) = 257;
  *(v0 + 3880) = v13;
  *(v0 + 3872) = v16;
  v42 = v17;
  *(v0 + 3864) = v17;
  v41 = type metadata accessor for InstallConversionTask(0);
  swift_errorRetain();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138412290;
    swift_errorRetain();
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 4) = v22;
    *v21 = v22;
    _os_log_impl(&_mh_execute_header, v18, v19, "POD exchange error %@", v20, 0xCu);
    sub_10000DAF8(v21, &qword_100239F10, &qword_1001B4FD0);
  }

  v39 = *(v0 + 3544);
  v40 = *(v0 + 3584);
  v23 = *(v0 + 3328);

  v24 = sub_1000C7C10(v13);
  v26 = v25;
  v28 = v27;
  v30 = v29;
  *(v0 + 4024) = v24;
  *(v0 + 4032) = v25;
  *(v0 + 4040) = v27;
  *(v0 + 4048) = v29;

  sub_10000DA7C((v23 + *(v41 + 60)), *(v23 + *(v41 + 60) + 24));
  *(v0 + 240) = v39;
  *(v0 + 248) = v24;
  *(v0 + 256) = v26;
  *(v0 + 264) = v28;
  *(v0 + 272) = v30;
  v31 = *(v0 + 2928);
  v32 = *(v0 + 2960);
  *(v0 + 312) = *(v0 + 2944);
  *(v0 + 328) = v32;
  *(v0 + 344) = *(v0 + 2976);
  *(v0 + 280) = *(v0 + 2912);
  *(v0 + 296) = v31;
  *(v0 + 360) = v40;
  *(v0 + 368) = *(v0 + 4136);
  v33 = *(v0 + 3208);
  *(v0 + 369) = *(v0 + 3192);
  *(v0 + 385) = v33;
  *(v0 + 400) = *(v0 + 3223);
  *(v0 + 408) = v42;
  *(v0 + 416) = v43;
  v34 = *(v0 + 3168);
  *(v0 + 424) = *(v0 + 3152);
  *(v0 + 440) = v34;
  *(v0 + 456) = *(v0 + 3184);
  v35 = type metadata accessor for SnoutManager(0);
  v36 = swift_task_alloc();
  *(v0 + 4056) = v36;
  *v36 = v0;
  v36[1] = sub_100059EB0;
  v37 = *(v0 + 3304);

  return (sub_10016E27C)(v0 + 240, v37, 0, 0, v35, &off_100223858);
}

uint64_t sub_1000597C0()
{
  v1 = *v0;

  sub_10005CADC(v1 + 2992);

  return _swift_task_switch(sub_1000598F0, 0, 0);
}

uint64_t sub_1000598F0()
{
  v39 = *(v0 + 4121);
  v38 = *(v0 + 3824);
  v40 = *(v0 + 3808);
  v41 = *(v0 + 3816);
  v42 = *(v0 + 3792);
  v43 = *(v0 + 3800);
  v1 = *(v0 + 3784);
  v36 = *(v0 + 3752);
  v37 = *(v0 + 3760);
  v2 = *(v0 + 3744);
  v3 = *(v0 + 3736);
  v35 = *(v0 + 4119);
  v4 = *(v0 + 3696);
  v33 = *(v0 + 3640);
  v34 = *(v0 + 3672);
  v32 = *(v0 + 3632);
  v5 = *(v0 + 3344);
  v6 = *(v0 + 3336);
  v7 = *(v0 + 3328);
  v8 = *(v0 + 4118) & 1;
  v21 = *(v0 + 3304);
  v22 = *(v0 + 4108);
  sub_10001BABC(*(v0 + 3768), *(v0 + 3776));
  sub_10005CB30(v3, v2);

  v9 = *(v7 + 8);
  v10 = *(v7 + 9);
  v30 = *(v7 + 10);
  v31 = *(v7 + 7);
  v11 = *(v7 + 11);
  v23 = *(v7 + 12);
  v24 = *(v7 + 14);
  v28 = *(v7 + 16);
  v29 = *(v7 + 13);
  v25 = *(v7 + 15);
  v26 = *(v7 + 17);
  v27 = *(v7 + 18);
  sub_10000CE28((v7 + 152), v5 + 256);
  sub_10000CE28((v7 + 272), v5 + 296);
  v12 = *(v4 + 56);
  *(v0 + 4124) = v12;
  v13 = *(v6 + 64);
  v14 = type metadata accessor for Logger();
  (*(*(v14 - 8) + 16))(v5 + v13, &v7[v12], v14);
  sub_10000CE28(&v7[v22], v5 + *(v6 + 68));
  *v5 = 0;
  *(v5 + 8) = v39;
  *(v5 + 16) = v38;
  *(v5 + 32) = v21;
  *(v5 + 40) = v32;
  *(v5 + 48) = v33;
  *(v5 + 56) = v40;
  *(v5 + 64) = v41;
  *(v5 + 72) = v34;
  *(v5 + 80) = v36;
  *(v5 + 88) = v37;
  *(v5 + 96) = v35;
  *(v5 + 97) = v8;
  *(v5 + 98) = 0;
  *(v5 + 99) = v35;
  *(v5 + 104) = v42;
  *(v5 + 112) = v43;
  *(v5 + 120) = v8;
  *(v5 + 128) = 0;
  *(v5 + 136) = 1;
  *(v5 + 144) = *(v0 + 3248);
  *(v5 + 160) = v31;
  *(v5 + 168) = v9;
  *(v5 + 176) = v10;
  *(v5 + 184) = v30;
  *(v5 + 192) = v11;
  *(v5 + 200) = v23;
  *(v5 + 208) = v29;
  *(v5 + 216) = v24;
  *(v5 + 224) = v25;
  *(v5 + 232) = v28;
  *(v5 + 240) = v26;
  *(v5 + 248) = v27;

  v15 = v10;

  v16 = v23;

  v17 = v25;

  v18 = v27;
  v19 = swift_task_alloc();
  *(v0 + 3848) = v19;
  *v19 = v0;
  v19[1] = sub_100059BD8;

  return sub_100072714();
}

uint64_t sub_100059BD8()
{
  *(*v1 + 3856) = v0;

  if (v0)
  {
    v2 = sub_10005A4F0;
  }

  else
  {
    v2 = sub_100059D18;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100059D18()
{
  v1 = *(v0 + 3608);
  v2 = *(v0 + 3600);
  v3 = *(v0 + 3576);
  v10 = *(v0 + 3560);
  v11 = *(v0 + 3544);
  sub_10005C8D8(*(v0 + 3344));

  *(v0 + 1824) = v10;
  *(v0 + 1808) = v11;
  *(v0 + 1840) = v3;
  v4 = *(v0 + 2928);
  v5 = *(v0 + 2960);
  *(v0 + 1880) = *(v0 + 2944);
  *(v0 + 1896) = v5;
  *(v0 + 1912) = *(v0 + 2976);
  *(v0 + 1848) = *(v0 + 2912);
  *(v0 + 1864) = v4;
  *(v0 + 1928) = 200;
  *(v0 + 1936) = *(v0 + 4136);
  v6 = *(v0 + 3208);
  *(v0 + 1937) = *(v0 + 3192);
  *(v0 + 1953) = v6;
  *(v0 + 1968) = *(v0 + 3223);
  *(v0 + 1976) = v2;
  *(v0 + 1984) = v1;
  v7 = *(v0 + 3168);
  *(v0 + 1992) = *(v0 + 3152);
  *(v0 + 2008) = v7;
  *(v0 + 2024) = *(v0 + 3184);
  sub_10003AE8C(v0 + 1808);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100059EB0()
{

  return _swift_task_switch(sub_100059FD8, 0, 0);
}

uint64_t sub_100059FD8(uint64_t a1)
{
  v2 = *(v1 + 4048);
  v3 = *(v1 + 4040);
  v4 = *(v1 + 4032);
  v22 = *(v1 + 4122);
  v5 = *(v1 + 4024);
  v20 = *(v1 + 3864);
  v21 = *(v1 + 3872);
  v6 = *(v1 + 3584);
  v7 = *(v1 + 3544);
  swift_willThrow();
  *(v1 + 2032) = v7;
  *(v1 + 2040) = v5;
  *(v1 + 2048) = v4;
  *(v1 + 2056) = v3;
  *(v1 + 2064) = v2;
  v8 = *(v1 + 2928);
  v9 = *(v1 + 2960);
  *(v1 + 2104) = *(v1 + 2944);
  *(v1 + 2120) = v9;
  *(v1 + 2136) = *(v1 + 2976);
  *(v1 + 2072) = *(v1 + 2912);
  *(v1 + 2088) = v8;
  *(v1 + 2152) = v6;
  *(v1 + 2160) = *(v1 + 4136);
  v10 = *(v1 + 3192);
  v11 = *(v1 + 3208);
  *(v1 + 2192) = *(v1 + 3223);
  *(v1 + 2161) = v10;
  *(v1 + 2177) = v11;
  *(v1 + 2200) = v20;
  *(v1 + 2208) = v21;
  v12 = *(v1 + 3168);
  *(v1 + 2216) = *(v1 + 3152);
  *(v1 + 2232) = v12;
  *(v1 + 2248) = *(v1 + 3184);
  sub_10003AE8C(v1 + 2032);
  if (v22 == 1)
  {
    v13 = *(v1 + 4000);
    v14 = *(v1 + 3984);
    v15 = *(v1 + 3960);
    v16 = *(v1 + 3952);
    v17 = *(v1 + 3936);
    *(v1 + 2808) = *(v1 + 3920);
    *(v1 + 2824) = v17;
    *(v1 + 2840) = v16;
    *(v1 + 2848) = v15;
    *(v1 + 2856) = *(v1 + 3968);
    *(v1 + 2872) = v14;
    *(v1 + 2888) = v13;
    *(v1 + 2896) = *(v1 + 4008);
    sub_10005C9D0(v1 + 2808);
  }

  if (*(v1 + 4123) == 1)
  {
  }

  if (*(v1 + 4122) == 1)
  {
  }

  v18 = *(v1 + 8);

  return v18();
}

uint64_t sub_10005A228()
{
  v1 = *v0;

  sub_10003AE8C(v1 + 688);

  return _swift_task_switch(sub_10005A358, 0, 0);
}

uint64_t sub_10005A358(uint64_t a1)
{
  v2 = *(v1 + 3608);
  v3 = *(v1 + 3600);
  v4 = *(v1 + 3576);
  v11 = *(v1 + 3560);
  v12 = *(v1 + 3544);
  swift_willThrow();

  *(v1 + 1600) = v11;
  *(v1 + 1584) = v12;
  *(v1 + 1616) = v4;
  v5 = *(v1 + 2928);
  v6 = *(v1 + 2960);
  *(v1 + 1656) = *(v1 + 2944);
  *(v1 + 1672) = v6;
  *(v1 + 1688) = *(v1 + 2976);
  *(v1 + 1624) = *(v1 + 2912);
  *(v1 + 1640) = v5;
  *(v1 + 1704) = 200;
  *(v1 + 1712) = *(v1 + 4136);
  v7 = *(v1 + 3208);
  *(v1 + 1713) = *(v1 + 3192);
  *(v1 + 1729) = v7;
  *(v1 + 1744) = *(v1 + 3223);
  *(v1 + 1752) = v3;
  *(v1 + 1760) = v2;
  v8 = *(v1 + 3168);
  *(v1 + 1768) = *(v1 + 3152);
  *(v1 + 1784) = v8;
  *(v1 + 1800) = *(v1 + 3184);
  sub_10003AE8C(v1 + 1584);

  v9 = *(v1 + 8);

  return v9();
}

uint64_t sub_10005A4F0()
{
  sub_10005C8D8(*(v0 + 3344));
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
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to register conversion: %@", v3, 0xCu);
    sub_10000DAF8(v4, &qword_100239F10, &qword_1001B4FD0);
  }

  v6 = *(v0 + 3608);
  v7 = *(v0 + 3600);
  v8 = *(v0 + 3576);
  v15 = *(v0 + 3560);
  v16 = *(v0 + 3544);

  swift_willThrow();

  *(v0 + 912) = v16;
  *(v0 + 928) = v15;
  *(v0 + 944) = v8;
  v9 = *(v0 + 2928);
  v10 = *(v0 + 2960);
  *(v0 + 984) = *(v0 + 2944);
  *(v0 + 1000) = v10;
  *(v0 + 1016) = *(v0 + 2976);
  *(v0 + 952) = *(v0 + 2912);
  *(v0 + 968) = v9;
  *(v0 + 1032) = 200;
  *(v0 + 1040) = *(v0 + 4136);
  v11 = *(v0 + 3208);
  *(v0 + 1041) = *(v0 + 3192);
  *(v0 + 1057) = v11;
  *(v0 + 1072) = *(v0 + 3223);
  *(v0 + 1080) = v7;
  *(v0 + 1088) = v6;
  v12 = *(v0 + 3168);
  *(v0 + 1096) = *(v0 + 3152);
  *(v0 + 1112) = v12;
  *(v0 + 1128) = *(v0 + 3184);
  sub_10003AE8C(v0 + 912);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_10005A77C(uint64_t a1, char a2)
{
  *(v3 + 56) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return _swift_task_switch(sub_10005A7A0, 0, 0);
}

uint64_t sub_10005A7A0()
{
  v2 = v0[2];
  v1 = v0[3];
  v4 = v1[4];
  v3 = v1[5];
  v5 = v1[6];
  v6 = swift_allocObject();
  v0[4] = v6;
  *(v6 + 16) = v2;
  v7 = swift_task_alloc();
  v0[5] = v7;
  *v7 = v0;
  v7[1] = sub_10005A8A0;

  return sub_10010FDAC(sub_10005C944, v6, v4, v3, v5);
}

uint64_t sub_10005A8A0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 48) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_10005A9F4, 0, 0);
  }
}

uint64_t sub_10005A9F4()
{
  v1 = *(v0 + 48);
  if (*(v1 + 16))
  {
    Hasher.init(_seed:)();
    String.hash(into:)();
    v2 = Hasher._finalize()();
    v3 = -1 << *(v1 + 32);
    v4 = v2 & ~v3;
    if ((*(v1 + 56 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
    {
      v5 = ~v3;
      v6 = *(v0 + 48);
      while (*(*(v6 + 48) + v4) != 1)
      {
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v7)
        {
          goto LABEL_24;
        }

        v4 = (v4 + 1) & v5;
        if (((*(v1 + 56 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      goto LABEL_18;
    }
  }

LABEL_7:
  v8 = *(v0 + 56);
  if (v8 == 2)
  {
    v9 = *(v0 + 48);
  }

  else
  {
    if (v8)
    {
LABEL_18:

LABEL_24:

      v18 = 1;
      goto LABEL_28;
    }

    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v9 = *(v0 + 48);
    if (v19)
    {
      goto LABEL_24;
    }
  }

  if (*(v1 + 16))
  {
    Hasher.init(_seed:)();
    String.hash(into:)();
    v10 = Hasher._finalize()();
    v11 = v9 + 56;
    v12 = -1 << *(v9 + 32);
    v13 = v10 & ~v12;
    v14 = *(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8));
    v15 = *(v0 + 48);
    if ((v14 >> v13))
    {
      v16 = ~v12;
      while ((*(*(v15 + 48) + v13) & 1) != 0)
      {
        v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v17)
        {
          goto LABEL_27;
        }

        v13 = (v13 + 1) & v16;
        if (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      goto LABEL_27;
    }
  }

LABEL_15:

  if (v8 == 2)
  {
    goto LABEL_16;
  }

  if ((*(v0 + 56) & 1) == 0)
  {
LABEL_27:

    v18 = 0;
    goto LABEL_28;
  }

  v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v18 = 0;
  if ((v20 & 1) == 0)
  {
LABEL_16:
    v18 = 2;
  }

LABEL_28:
  v21 = *(v0 + 8);

  return v21(v18);
}

uint64_t sub_10005AD2C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v30[0] = 46;
  *(&v30[0] + 1) = 0xE100000000000000;
  v29[2] = v30;

  v8 = sub_100146984(0x7FFFFFFFFFFFFFFFLL, 1, sub_10003B8DC, v29, a1, a2, v7);
  if (v8[2] != 3)
  {

    type metadata accessor for InstallConversionTask(0);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "POD token has invalid number of components", v22, 2u);
    }

    sub_10005C97C();
    swift_allocError();
    v19 = xmmword_1001B78D0;
    goto LABEL_9;
  }

  v9 = v8[8];
  v10 = v8[9];
  v11 = v8[10];
  v12 = v8[11];

  v13 = sub_10005C508(v9, v10, v11, v12);
  if (v14 >> 60 == 15)
  {
    type metadata accessor for InstallConversionTask(0);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "POD payload string is not valid data", v17, 2u);
    }

    sub_10005C97C();
    swift_allocError();
    v19 = xmmword_1001B78E0;
LABEL_9:
    *v18 = v19;
    *(v18 + 16) = 2;
    return swift_willThrow();
  }

  v24 = v13;
  v25 = v14;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_10005CC08();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  sub_10005CB30(v24, v25);

  if (!v3)
  {
    v26 = v30[5];
    *(a3 + 64) = v30[4];
    *(a3 + 80) = v26;
    *(a3 + 96) = v31;
    v27 = v30[1];
    *a3 = v30[0];
    *(a3 + 16) = v27;
    v28 = v30[3];
    *(a3 + 32) = v30[2];
    *(a3 + 48) = v28;
  }

  return result;
}

uint64_t sub_10005B010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[102] = v4;
  v5[101] = a4;
  v5[100] = a3;
  v5[99] = a2;
  v5[98] = a1;
  v6 = type metadata accessor for Calendar.Component();
  v5[103] = v6;
  v5[104] = *(v6 - 8);
  v5[105] = swift_task_alloc();
  v7 = type metadata accessor for Date();
  v5[106] = v7;
  v5[107] = *(v7 - 8);
  v5[108] = swift_task_alloc();

  return _swift_task_switch(sub_10005B13C, 0, 0);
}

uint64_t sub_10005B13C()
{
  v1 = *(*(v0 + 784) + 64);
  *(v0 + 872) = v1;
  if (v1)
  {
    v2 = *(v1 + 16);
    *(v0 + 880) = v2;
    if (v2)
    {
      v3 = type metadata accessor for InstallConversionTask(0);
      *(v0 + 964) = *(v3 + 56);
      *(v0 + 888) = objc_opt_self();
      *(v0 + 980) = *(v3 + 60);
      *(v0 + 896) = &unk_1001C3B20;
      *(v0 + 904) = &off_100223860 & 0xFFFFFFFFFFFFLL | 0x823E000000000000;
      *(v0 + 984) = enum case for Calendar.Component.hour(_:);
      *(v0 + 912) = 0;
      v4 = *(v0 + 872);
      v5 = *(v4 + 48);
      v6 = *(v4 + 56);
      swift_bridgeObjectRetain_n();

      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        *v9 = 138412290;
        v11 = String.lowercased()();
        if (v11._countAndFlagsBits == 0xD000000000000014 && 0x80000001001CB780 == v11._object || (v17 = _stringCompareWithSmolCheck(_:_:expecting:)(), , , (v17 & 1) != 0))
        {

          v18 = 0;
          v19 = 0;
        }

        else
        {
          v18 = v5;
          v19 = v6;
        }

        sub_10005CBB4();
        swift_allocError();
        *v20 = v18;
        v20[1] = v19;
        v21 = _swift_stdlib_bridgeErrorToNSError();
        *(v9 + 4) = v21;
        *v10 = v21;
        _os_log_impl(&_mh_execute_header, v7, v8, "Received exchange response error: %@", v9, 0xCu);
        sub_10000DAF8(v10, &qword_100239F10, &qword_1001B4FD0);
      }

      v22 = String.lowercased()();
      if (v22._countAndFlagsBits == 0xD000000000000014 && 0x80000001001CB780 == v22._object)
      {
      }

      else
      {
        v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v23 & 1) == 0)
        {

          goto LABEL_24;
        }

        swift_bridgeObjectRelease_n();
      }

      v5 = 0;
      v6 = 0;
LABEL_24:
      v69 = (v0 + 929);
      v70 = (v0 + 937);
      v71 = (v0 + 945);
      v72 = (v0 + 958);
      v73 = (v0 + 974);
      v74 = (v0 + 953);
      v75 = (v0 + 969);
      sub_10005CBB4();
      v24 = swift_allocError();
      *v25 = v5;
      v25[1] = v6;
      *(v0 + 768) = v24;
      swift_errorRetain();
      swift_errorRetain();
      sub_10000CDE0(&qword_10023A710, &qword_1001B5480);
      sub_10000CDE0(&qword_10023AEB8, &unk_1001B7AE0);
      if (swift_dynamicCast())
      {
        sub_10000DA64((v0 + 728), v0 + 688);
        v26 = *(v0 + 712);
        sub_10000DA7C((v0 + 688), v26);
        v27 = sub_10009DB48(v26);
        v65 = v28;
        v66 = v27;
        v63 = v30;
        v64 = v29;
        sub_10000DB58((v0 + 688));
      }

      else
      {
        *(v0 + 760) = 0;
        *(v0 + 728) = 0u;
        *(v0 + 744) = 0u;
        sub_10000DAF8(v0 + 728, &qword_10023AEC0, &unk_1001BCC00);
        v31 = _convertErrorToNSError(_:)();
        v32 = [v31 domain];
        v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v65 = v34;
        v66 = v33;

        *(v0 + 776) = [v31 code];
        v35 = dispatch thunk of CustomStringConvertible.description.getter();
        v63 = v36;
        v64 = v35;
      }

      v37 = *(v0 + 984);
      v68 = *(v0 + 896);
      v60 = *(v0 + 888);
      v38 = *(v0 + 864);
      v39 = *(v0 + 856);
      v40 = *(v0 + 848);
      v41 = *(v0 + 840);
      v67 = (*(v0 + 816) + *(v0 + 980));
      v42 = *(v0 + 832);
      v43 = *(v0 + 824);
      v61 = *(v0 + 792);
      v62 = *(v0 + 800);
      static Date.now.getter();
      (*(v42 + 104))(v41, v37, v43);
      v44 = sub_100025808(v38, v41);
      v46 = v45;
      (*(v42 + 8))(v41, v43);
      (*(v39 + 8))(v38, v40);
      if (v46)
      {
        v47 = 0;
      }

      else
      {
        v47 = v44;
      }

      v48 = [v60 buildVersion];
      v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v51 = v50;

      *(v0 + 340) = *(v0 + 932);
      *(v0 + 337) = *v69;
      *(v0 + 354) = *v73;
      *(v0 + 372) = *(v0 + 940);
      *(v0 + 369) = *v70;
      *(v0 + 387) = *v74;
      *(v0 + 404) = *(v0 + 948);
      *(v0 + 401) = *v71;
      *(v0 + 427) = *v75;
      *(v0 + 928) = 1;
      *(v0 + 936) = 1;
      *(v0 + 944) = 1;
      *(v0 + 952) = 1;
      *(v0 + 968) = 1;
      *(v0 + 18) = *v72;
      *(v0 + 22) = *(v0 + 962);
      *(v0 + 113) = *v69;
      *(v0 + 116) = *(v0 + 932);
      *(v0 + 130) = *v73;
      *(v0 + 134) = *(v0 + 978);
      *(v0 + 148) = *(v0 + 940);
      *(v0 + 145) = *v70;
      *(v0 + 385) = 770;
      *(v0 + 161) = 770;
      *(v0 + 167) = *(v0 + 957);
      *(v0 + 163) = *v74;
      *(v0 + 180) = *(v0 + 948);
      *(v0 + 16) = 2564;
      *(v0 + 177) = *v71;
      *(v0 + 207) = *(v0 + 973);
      *(v0 + 203) = *v75;
      *(v0 + 240) = 2564;
      *(v0 + 246) = *(v0 + 962);
      *(v0 + 242) = *v72;
      *(v0 + 248) = v66;
      *(v0 + 256) = v65;
      *(v0 + 24) = v66;
      *(v0 + 32) = v65;
      *(v0 + 264) = v64;
      *(v0 + 272) = v63;
      *(v0 + 40) = v64;
      *(v0 + 48) = v63;
      *(v0 + 296) = v47;
      *(v0 + 304) = v49;
      *(v0 + 72) = v47;
      *(v0 + 80) = v49;
      *(v0 + 88) = v51;
      *(v0 + 312) = v51;
      *(v0 + 321) = 33686018;
      *(v0 + 101) = 2;
      *(v0 + 97) = 33686018;
      *(v0 + 325) = 2;
      v52 = *(v0 + 928);
      *(v0 + 112) = v52;
      *(v0 + 336) = v52;
      v53 = *(v0 + 936);
      *(v0 + 128) = v53;
      *(v0 + 352) = v53;
      *(v0 + 129) = 3;
      *(v0 + 353) = 3;
      *(v0 + 358) = *(v0 + 978);
      v54 = *(v0 + 944);
      *(v0 + 144) = v54;
      *(v0 + 368) = v54;
      v55 = *(v0 + 952);
      *(v0 + 160) = v55;
      *(v0 + 384) = v55;
      *(v0 + 391) = *(v0 + 957);
      v56 = *(v0 + 968);
      *(v0 + 176) = v56;
      *(v0 + 400) = v56;
      *(v0 + 184) = v61;
      *(v0 + 192) = v62;
      *(v0 + 408) = v61;
      *(v0 + 200) = 514;
      *(v0 + 424) = 514;
      *(v0 + 202) = 2;
      *(v0 + 426) = 2;
      *(v0 + 431) = *(v0 + 973);
      *(v0 + 56) = 0;
      *(v0 + 64) = 0;
      *(v0 + 96) = 0;
      *(v0 + 104) = 0;
      *(v0 + 120) = 0;
      *(v0 + 136) = 0;
      *(v0 + 152) = 0;
      *(v0 + 168) = 0;
      *(v0 + 208) = 0u;
      *(v0 + 224) = 0u;
      *(v0 + 280) = 0;
      *(v0 + 288) = 0;
      *(v0 + 320) = 0;
      *(v0 + 328) = 0;
      *(v0 + 344) = 0;
      *(v0 + 360) = 0;
      *(v0 + 376) = 0;
      *(v0 + 392) = 0;
      *(v0 + 416) = v62;
      *(v0 + 432) = 0u;
      *(v0 + 448) = 0u;

      sub_100010568(v0 + 16, v0 + 464);
      sub_10003AE8C(v0 + 240);
      sub_10000DA7C(v67, v67[3]);
      v57 = type metadata accessor for SnoutManager(0);
      v76 = (v68 + *v68);
      v58 = swift_task_alloc();
      *(v0 + 920) = v58;
      *v58 = v0;
      v58[1] = sub_10005BB04;
      v59 = *(v0 + 808);

      return (v76)(v0 + 16, v59, 0, 0, v57, &off_100223858);
    }
  }

  else
  {
    type metadata accessor for InstallConversionTask(0);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "No errors in exchange response", v14, 2u);
    }
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_10005BB04()
{
  v1 = *v0;

  sub_10003AE8C(v1 + 16);

  return _swift_task_switch(sub_10005BC08, 0, 0);
}

uint64_t sub_10005BC08()
{
  v1 = *(v0 + 912) + 1;
  if (v1 == *(v0 + 880))
  {

    v2 = *(v0 + 8);

    return v2();
  }

  *(v0 + 912) = v1;
  v4 = *(v0 + 872) + 32 * v1;
  v5 = *(v4 + 48);
  v6 = *(v4 + 56);
  swift_bridgeObjectRetain_n();

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = String.lowercased()();
    v12 = v11._countAndFlagsBits == 0xD000000000000014 && 0x80000001001CB780 == v11._object;
    if (v12 || (v13 = _stringCompareWithSmolCheck(_:_:expecting:)(), , , (v13 & 1) != 0))
    {

      v14 = 0;
      v15 = 0;
    }

    else
    {
      v14 = v5;
      v15 = v6;
    }

    sub_10005CBB4();
    swift_allocError();
    *v16 = v14;
    v16[1] = v15;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v17;
    *v10 = v17;
    _os_log_impl(&_mh_execute_header, v7, v8, "Received exchange response error: %@", v9, 0xCu);
    sub_10000DAF8(v10, &qword_100239F10, &qword_1001B4FD0);
  }

  v18 = String.lowercased()();
  if (v18._countAndFlagsBits == 0xD000000000000014 && 0x80000001001CB780 == v18._object)
  {
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v20 & 1) == 0)
    {

      goto LABEL_23;
    }

    swift_bridgeObjectRelease_n();
  }

  v5 = 0;
  v6 = 0;
LABEL_23:
  v66 = (v0 + 929);
  v67 = (v0 + 937);
  v68 = (v0 + 945);
  v69 = (v0 + 958);
  v70 = (v0 + 974);
  v71 = (v0 + 953);
  v72 = (v0 + 969);
  sub_10005CBB4();
  v21 = swift_allocError();
  *v22 = v5;
  v22[1] = v6;
  *(v0 + 768) = v21;
  swift_errorRetain();
  swift_errorRetain();
  sub_10000CDE0(&qword_10023A710, &qword_1001B5480);
  sub_10000CDE0(&qword_10023AEB8, &unk_1001B7AE0);
  if (swift_dynamicCast())
  {
    sub_10000DA64((v0 + 728), v0 + 688);
    v23 = *(v0 + 712);
    sub_10000DA7C((v0 + 688), v23);
    v24 = sub_10009DB48(v23);
    v62 = v25;
    v63 = v24;
    v60 = v27;
    v61 = v26;
    sub_10000DB58((v0 + 688));
  }

  else
  {
    *(v0 + 760) = 0;
    *(v0 + 728) = 0u;
    *(v0 + 744) = 0u;
    sub_10000DAF8(v0 + 728, &qword_10023AEC0, &unk_1001BCC00);
    v28 = _convertErrorToNSError(_:)();
    v29 = [v28 domain];
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v62 = v31;
    v63 = v30;

    *(v0 + 776) = [v28 code];
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    v60 = v33;
    v61 = v32;
  }

  v34 = *(v0 + 984);
  v65 = *(v0 + 896);
  v57 = *(v0 + 888);
  v35 = *(v0 + 864);
  v36 = *(v0 + 856);
  v37 = *(v0 + 848);
  v38 = *(v0 + 840);
  v64 = (*(v0 + 816) + *(v0 + 980));
  v39 = *(v0 + 832);
  v40 = *(v0 + 824);
  v58 = *(v0 + 792);
  v59 = *(v0 + 800);
  static Date.now.getter();
  (*(v39 + 104))(v38, v34, v40);
  v41 = sub_100025808(v35, v38);
  v43 = v42;
  (*(v39 + 8))(v38, v40);
  (*(v36 + 8))(v35, v37);
  if (v43)
  {
    v44 = 0;
  }

  else
  {
    v44 = v41;
  }

  v45 = [v57 buildVersion];
  v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v48 = v47;

  *(v0 + 340) = *(v0 + 932);
  *(v0 + 337) = *v66;
  *(v0 + 354) = *v70;
  *(v0 + 372) = *(v0 + 940);
  *(v0 + 369) = *v67;
  *(v0 + 387) = *v71;
  *(v0 + 404) = *(v0 + 948);
  *(v0 + 401) = *v68;
  *(v0 + 427) = *v72;
  *(v0 + 928) = 1;
  *(v0 + 936) = 1;
  *(v0 + 944) = 1;
  *(v0 + 952) = 1;
  *(v0 + 968) = 1;
  *(v0 + 18) = *v69;
  *(v0 + 22) = *(v0 + 962);
  *(v0 + 113) = *v66;
  *(v0 + 116) = *(v0 + 932);
  *(v0 + 130) = *v70;
  *(v0 + 134) = *(v0 + 978);
  *(v0 + 148) = *(v0 + 940);
  *(v0 + 145) = *v67;
  *(v0 + 385) = 770;
  *(v0 + 161) = 770;
  *(v0 + 167) = *(v0 + 957);
  *(v0 + 163) = *v71;
  *(v0 + 180) = *(v0 + 948);
  *(v0 + 177) = *v68;
  *(v0 + 207) = *(v0 + 973);
  *(v0 + 203) = *v72;
  *(v0 + 16) = 2564;
  *(v0 + 240) = 2564;
  *(v0 + 246) = *(v0 + 962);
  *(v0 + 242) = *v69;
  *(v0 + 248) = v63;
  *(v0 + 24) = v63;
  *(v0 + 32) = v62;
  *(v0 + 256) = v62;
  *(v0 + 264) = v61;
  *(v0 + 40) = v61;
  *(v0 + 48) = v60;
  *(v0 + 272) = v60;
  *(v0 + 296) = v44;
  *(v0 + 304) = v46;
  *(v0 + 72) = v44;
  *(v0 + 80) = v46;
  *(v0 + 88) = v48;
  *(v0 + 312) = v48;
  *(v0 + 321) = 33686018;
  *(v0 + 101) = 2;
  *(v0 + 97) = 33686018;
  *(v0 + 325) = 2;
  v49 = *(v0 + 928);
  *(v0 + 112) = v49;
  *(v0 + 336) = v49;
  v50 = *(v0 + 936);
  *(v0 + 128) = v50;
  *(v0 + 352) = v50;
  *(v0 + 129) = 3;
  *(v0 + 353) = 3;
  *(v0 + 358) = *(v0 + 978);
  v51 = *(v0 + 944);
  *(v0 + 144) = v51;
  *(v0 + 368) = v51;
  v52 = *(v0 + 952);
  *(v0 + 160) = v52;
  *(v0 + 384) = v52;
  *(v0 + 391) = *(v0 + 957);
  v53 = *(v0 + 968);
  *(v0 + 176) = v53;
  *(v0 + 400) = v53;
  *(v0 + 184) = v58;
  *(v0 + 192) = v59;
  *(v0 + 408) = v58;
  *(v0 + 200) = 514;
  *(v0 + 424) = 514;
  *(v0 + 202) = 2;
  *(v0 + 426) = 2;
  *(v0 + 431) = *(v0 + 973);
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0;
  *(v0 + 120) = 0;
  *(v0 + 136) = 0;
  *(v0 + 152) = 0;
  *(v0 + 168) = 0;
  *(v0 + 208) = 0u;
  *(v0 + 224) = 0u;
  *(v0 + 280) = 0;
  *(v0 + 288) = 0;
  *(v0 + 320) = 0;
  *(v0 + 328) = 0;
  *(v0 + 344) = 0;
  *(v0 + 360) = 0;
  *(v0 + 376) = 0;
  *(v0 + 392) = 0;
  *(v0 + 416) = v59;
  *(v0 + 432) = 0u;
  *(v0 + 448) = 0u;

  sub_100010568(v0 + 16, v0 + 464);
  sub_10003AE8C(v0 + 240);
  sub_10000DA7C(v64, v64[3]);
  v54 = type metadata accessor for SnoutManager(0);
  v73 = (v65 + *v65);
  v55 = swift_task_alloc();
  *(v0 + 920) = v55;
  *v55 = v0;
  v55[1] = sub_10005BB04;
  v56 = *(v0 + 808);

  return (v73)(v0 + 16, v56, 0, 0, v54, &off_100223858);
}

char *sub_10005C508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = Substring.distance(from:to:)();
  if (v4)
  {
    v5 = v4;
    result = sub_100147100(0, v4 & ~(v4 >> 63), 0);
    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    do
    {
      v8 = Substring.subscript.getter();
      v9 = v7;
      if (v8 == 45 && v7 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v9 = 0xE100000000000000;
        v8 = 43;
      }

      else if (v8 == 95 && v9 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v9 = 0xE100000000000000;
        v8 = 47;
      }

      v11 = _swiftEmptyArrayStorage[2];
      v10 = _swiftEmptyArrayStorage[3];
      if (v11 >= v10 >> 1)
      {
        sub_100147100((v10 > 1), v11 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v11 + 1;
      v12 = &_swiftEmptyArrayStorage[2 * v11];
      v12[4] = v8;
      v12[5] = v9;
      Substring.index(after:)();
      --v5;
    }

    while (v5);
  }

  sub_10000CDE0(&qword_10023AED0, &qword_1001B7AF0);
  sub_10005CC5C();
  String.init<A>(_:)();

  v13 = String.count.getter();

  v14 = v13 & 3;
  if (v13 <= 0)
  {
    v14 = -(-v13 & 3);
  }

  if (v14)
  {
    v15._countAndFlagsBits = 61;
    v15._object = 0xE100000000000000;
    v16 = String.init(repeating:count:)(v15, 4 - v14);
    String.append(_:)(v16);
  }

  v17 = Data.init(base64Encoded:options:)();

  return v17;
}

uint64_t sub_10005C798()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000BD30;

  return sub_100055148();
}

unint64_t sub_10005C830()
{
  result = qword_10023AE90;
  if (!qword_10023AE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023AE90);
  }

  return result;
}

uint64_t sub_10005C8D8(uint64_t a1)
{
  v2 = type metadata accessor for RegisterConversionTask(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_10005C944@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000C1204(*(v1 + 16));
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_10005C97C()
{
  result = qword_10023AE98;
  if (!qword_10023AE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023AE98);
  }

  return result;
}

uint64_t *sub_10005CA24(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_10005CA88()
{
  result = qword_10023AEA0;
  if (!qword_10023AEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023AEA0);
  }

  return result;
}

uint64_t sub_10005CB30(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10001BABC(result, a2);
  }

  return result;
}

uint64_t sub_10005CB44(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000CDE0(&qword_10023AEA8, &unk_1001B7AD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10005CBB4()
{
  result = qword_10023AEB0;
  if (!qword_10023AEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023AEB0);
  }

  return result;
}

unint64_t sub_10005CC08()
{
  result = qword_10023AEC8;
  if (!qword_10023AEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023AEC8);
  }

  return result;
}

unint64_t sub_10005CC5C()
{
  result = qword_10023AED8;
  if (!qword_10023AED8)
  {
    sub_10000CCC0(&qword_10023AED0, &qword_1001B7AF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023AED8);
  }

  return result;
}

uint64_t sub_10005CCC0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 24))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10005CD14(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_10005CD74(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
  if (v3 <= 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = *(a1 + 24);
  }

  v5 = v4 - 3;
  if (v3 < 2)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t sub_10005CDC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 2;
    }
  }

  return result;
}

double sub_10005CE24@<D0>(uint64_t a2@<X8>)
{
  v5 = [v2 connection];
  v6 = String._bridgeToObjectiveC()();
  v7 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v8 = [objc_opt_self() predicateWithProperty:v6 equalToValue:v7];
  swift_unknownObjectRelease();

  v9 = sub_100085D4C(v5, v8, _swiftEmptyArrayStorage, 0, 0);
  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  v18 = 1;
  v14[2] = &v15;
  sub_10003576C(sub_10005D078, v14, v9);

  if (!v3)
  {
    v11 = v17;
    v12 = v18;
    result = *&v15;
    v13 = v16;
    *a2 = v15;
    *(a2 + 16) = v13;
    *(a2 + 32) = v11;
    *(a2 + 40) = v12;
  }

  return result;
}

id sub_10005D020(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ConversionTagDatabaseSession();
  return objc_msgSendSuper2(&v4, "dealloc");
}

__n128 sub_10005D078(__n128 *a1, uint64_t a2, _BYTE *a3)
{
  v4 = *(v3 + 16);
  v5 = a1->n128_u8[8];
  v6 = a1[2].n128_u64[0];
  v4->n128_u64[0] = a1->n128_u64[0];
  v4->n128_u64[1] = v5;
  result = a1[1];
  v4[1] = result;
  v4[2].n128_u64[0] = v6;
  v4[2].n128_u8[8] = 0;
  *a3 = 1;
  return result;
}

unint64_t sub_10005D0AC()
{
  result = qword_10023AF08;
  if (!qword_10023AF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023AF08);
  }

  return result;
}

unint64_t sub_10005D104()
{
  result = qword_10023AF10;
  if (!qword_10023AF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023AF10);
  }

  return result;
}

unint64_t sub_10005D158(uint64_t a1)
{
  *(a1 + 8) = sub_10003C2F0();
  result = sub_10005D188();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10005D188()
{
  result = qword_10023AF60;
  if (!qword_10023AF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023AF60);
  }

  return result;
}

uint64_t sub_10005D1DC(void *a1)
{
  v3 = v1;
  v5 = sub_10000CDE0(&qword_10023AF90, &qword_1001B7DC8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_10000DA7C(a1, a1[3]);
  sub_10005D104();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v11) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v11 = *(v3 + 32);
    v12 = *(v3 + 48);
    v10[15] = 1;
    type metadata accessor for Decimal(0);
    sub_10005DD6C(&qword_10023AF98, &protocol conformance descriptor for NSDecimal);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v11) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10005D3AC(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000011;
  v3 = *a1;
  v4 = 0x80000001001CA600;
  if (v3 == 1)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 0xD000000000000012;
  }

  if (v3 == 1)
  {
    v6 = 0x80000001001CA600;
  }

  else
  {
    v6 = 0x80000001001CA620;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x79636E6572727563;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xED000065646F635FLL;
  }

  if (*a2 != 1)
  {
    v2 = 0xD000000000000012;
    v4 = 0x80000001001CA620;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0x79636E6572727563;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xED000065646F635FLL;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_10005D490()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10005D540(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10005D5DC(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10005D688@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10005D9B0(*a1);
  *a2 = result;
  return result;
}

void sub_10005D6B8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED000065646F635FLL;
  v4 = 0xD000000000000011;
  v5 = 0x80000001001CA600;
  if (v2 != 1)
  {
    v4 = 0xD000000000000012;
    v5 = 0x80000001001CA620;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x79636E6572727563;
  }

  if (!v6)
  {
    v3 = v5;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_10005D724()
{
  v1 = *v0;
  v2 = 0xD000000000000011;
  if (v1 != 1)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v2;
  }

  else
  {
    return 0x79636E6572727563;
  }
}

unint64_t sub_10005D78C@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10005D9B0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10005D7C4(uint64_t a1)
{
  v2 = sub_10005D104();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005D800(uint64_t a1)
{
  v2 = sub_10005D104();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10005D83C@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_10005D9FC(a2, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a1 = v7[0];
    a1[1] = v5;
    result = *&v8;
    v6 = v9;
    a1[2] = v8;
    a1[3] = v6;
  }

  return result;
}

unint64_t sub_10005D89C()
{
  result = qword_10023AF68;
  if (!qword_10023AF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023AF68);
  }

  return result;
}

unint64_t sub_10005D8F4()
{
  result = qword_10023AF70;
  if (!qword_10023AF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023AF70);
  }

  return result;
}

unint64_t sub_10005D94C()
{
  result = qword_10023AF78;
  if (!qword_10023AF78)
  {
    sub_10000CCC0(&qword_10023AF80, &qword_1001B7D80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023AF78);
  }

  return result;
}

unint64_t sub_10005D9B0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1002144C0, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10005D9FC@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_10000CDE0(&qword_10023AF88, &qword_1001B7DC0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - v7;
  v38 = 1;
  sub_10000DA7C(a1, a1[3]);
  sub_10005D104();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000DB58(a1);
  }

  LOBYTE(v23) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  v12 = v9;
  type metadata accessor for Decimal(0);
  v32 = 1;
  sub_10005DD6C(&qword_10023A6C0, &protocol conformance descriptor for NSDecimal);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v35 = v33;
  v36 = v34;
  v31 = 2;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  *&v19 = 0;
  v14 = v38;
  BYTE8(v19) = v38;
  *(&v19 + 9) = *v37;
  HIDWORD(v19) = *&v37[3];
  *&v20 = v12;
  *(&v20 + 1) = v11;
  v21 = v35;
  LODWORD(v22) = v36;
  *(&v22 + 1) = v13;
  sub_10005DD10(&v19, &v23);
  sub_10000DB58(a1);
  v23 = 0;
  v24 = v14;
  *v25 = *v37;
  *&v25[3] = *&v37[3];
  v26 = v12;
  v27 = v11;
  v28 = v35;
  v29 = v36;
  v30 = v13;
  result = sub_10003C344(&v23);
  v16 = v20;
  *a2 = v19;
  a2[1] = v16;
  v17 = v22;
  a2[2] = v21;
  a2[3] = v17;
  return result;
}

uint64_t sub_10005DD10(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *a2 = v3;
  v4 = a1[3];
  *(a2 + 16) = a1[2];
  *(a2 + 24) = v4;
  v5 = *(a1 + 2);
  *(a2 + 48) = *(a1 + 12);
  *(a2 + 32) = v5;
  *(a2 + 56) = a1[7];

  return a2;
}

uint64_t sub_10005DD6C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Decimal(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for CurrencyExchangeRateModel(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t initializeWithCopy for CurrencyExchangeRateModel(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t assignWithCopy for CurrencyExchangeRateModel(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *a1 = v4;
  *(a1 + 16) = a2[2];
  *(a1 + 24) = a2[3];

  *(a1 + 32) = *(a2 + 8);
  *(a1 + 36) = *(a2 + 18);
  *(a1 + 38) = *(a2 + 19);
  *(a1 + 40) = *(a2 + 20);
  *(a1 + 42) = *(a2 + 21);
  *(a1 + 44) = *(a2 + 22);
  *(a1 + 46) = *(a2 + 23);
  *(a1 + 48) = *(a2 + 24);
  *(a1 + 50) = *(a2 + 25);
  *(a1 + 56) = a2[7];
  return a1;
}

__n128 initializeWithTake for CurrencyExchangeRateModel(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t assignWithTake for CurrencyExchangeRateModel(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t getEnumTagSinglePayload for CurrencyExchangeRateModel(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for CurrencyExchangeRateModel(uint64_t result, int a2, int a3)
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

unint64_t sub_10005E020()
{
  result = qword_10023AFA0;
  if (!qword_10023AFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023AFA0);
  }

  return result;
}

__n128 sub_10005E074@<Q0>(uint64_t a3@<X8>)
{
  v6 = [v3 connection];
  v7 = String._bridgeToObjectiveC()();

  v8 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v9 = [objc_opt_self() predicateWithProperty:v7 equalToValue:v8];
  swift_unknownObjectRelease();

  v10 = sub_100085FF0(v6, v9, _swiftEmptyArrayStorage, 0, 0);
  v21 = 0u;
  memset(v22, 0, 19);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v14[2] = &v17;
  sub_100035B70(sub_10005F1D4, v14, v10);

  if (v4)
  {
    v15[4] = v21;
    v16[0] = v22[0];
    *(v16 + 15) = *(v22 + 15);
    v15[0] = v17;
    v15[1] = v18;
    v15[2] = v19;
    v15[3] = v20;
    sub_10005F0A8(v15);
  }

  else
  {
    v12 = v22[0];
    *(a3 + 64) = v21;
    *(a3 + 80) = v12;
    *(a3 + 95) = *(v22 + 15);
    v13 = v18;
    *a3 = v17;
    *(a3 + 16) = v13;
    result = v20;
    *(a3 + 32) = v19;
    *(a3 + 48) = result;
  }

  return result;
}

__n128 sub_10005E248@<Q0>(uint64_t a2@<X8>)
{
  sub_10000CDE0(&qword_10023AFD0, &qword_1001B7F18);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B75D0;
  v6 = String._bridgeToObjectiveC()();
  v7 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v8 = objc_opt_self();
  v9 = [v8 predicateWithProperty:v6 equalToValue:v7];
  swift_unknownObjectRelease();

  *(inited + 32) = v9;
  v10 = String._bridgeToObjectiveC()();
  v11 = [v8 predicateWithProperty:v10 equalToValue:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();

  *(inited + 40) = v11;
  *(inited + 48) = sub_100113A70(6u, &off_100214580);
  v12 = sub_10004FB24(inited);
  swift_setDeallocating();
  sub_10000CDE0(&unk_10023C000, &qword_1001B7F20);
  swift_arrayDestroy();
  v13 = [v2 connection];
  v14 = v12;
  v15 = sub_100085FF0(v13, v12, _swiftEmptyArrayStorage, 0, 0);
  v26 = 0u;
  memset(v27, 0, sizeof(v27));
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v19[2] = &v22;
  sub_100035B70(sub_10005F1D4, v19, v15);

  if (v3)
  {
    v20[4] = v26;
    v21[0] = *v27;
    *(v21 + 15) = *&v27[15];
    v20[0] = v22;
    v20[1] = v23;
    v20[2] = v24;
    v20[3] = v25;
    sub_10005F0A8(v20);
  }

  else
  {
    v17 = *v27;
    *(a2 + 64) = v26;
    *(a2 + 80) = v17;
    *(a2 + 95) = *&v27[15];
    v18 = v23;
    *a2 = v22;
    *(a2 + 16) = v18;
    result = v25;
    *(a2 + 32) = v24;
    *(a2 + 48) = result;
  }

  return result;
}

void sub_10005E514(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v42 = a3;
  v31 = a4;
  sub_10000CDE0(&qword_10023AFD0, &qword_1001B7F18);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B7EC0;
  v7 = String._bridgeToObjectiveC()();
  *&v36 = a1;
  v8 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v9 = objc_opt_self();
  v10 = [v9 predicateWithProperty:v7 equalToValue:v8];
  swift_unknownObjectRelease();

  *(inited + 32) = v10;
  v11 = String._bridgeToObjectiveC()();
  LOBYTE(v36) = 0;
  v12 = [v9 predicateWithProperty:v11 equalToValue:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();

  *(inited + 40) = v12;
  if (a2)
  {
    v13 = 0x69746375646F7270;
  }

  else
  {
    v13 = 0x6D706F6C65766564;
  }

  if (a2)
  {
    v14 = 0xEA00000000006E6FLL;
  }

  else
  {
    v14 = 0xEB00000000746E65;
  }

  v15 = String._bridgeToObjectiveC()();
  *&v36 = v13;
  *(&v36 + 1) = v14;

  v16 = [v9 predicateWithProperty:v15 equalToValue:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();

  *(inited + 48) = v16;
  Date.timeIntervalSince1970.getter();
  v18 = v17 * 1000.0;
  if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v18 <= -1.0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v18 >= 1.84467441e19)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v19 = String._bridgeToObjectiveC()();
  v20 = [v9 predicateWithProperty:v19 value:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)() comparisonType:6];
  swift_unknownObjectRelease();

  *(inited + 56) = v20;
  v21 = sub_10004FB24(inited);
  swift_setDeallocating();
  sub_10000CDE0(&unk_10023C000, &qword_1001B7F20);
  swift_arrayDestroy();
  v22 = [v32 connection];
  v23 = v21;
  v24 = sub_100085FF0(v22, v21, _swiftEmptyArrayStorage, 0, 0);
  v40 = 0u;
  memset(v41, 0, 19);
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  __chkstk_darwin(v24);
  v30[2] = &v36;
  v25 = v33;
  sub_100035B70(sub_10005F0A4, v30, v24);
  if (v25)
  {

    v34[4] = v40;
    v35[0] = v41[0];
    *(v35 + 15) = *(v41 + 15);
    v34[0] = v36;
    v34[1] = v37;
    v34[2] = v38;
    v34[3] = v39;
    sub_10005F0A8(v34);
  }

  else
  {

    v26 = v41[0];
    v27 = v31;
    *(v31 + 64) = v40;
    *(v27 + 80) = v26;
    *(v27 + 95) = *(v41 + 15);
    v28 = v37;
    *v27 = v36;
    *(v27 + 16) = v28;
    v29 = v39;
    *(v27 + 32) = v38;
    *(v27 + 48) = v29;
  }
}

void sub_10005E974(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  sub_10000CDE0(&unk_10023BFE0, qword_1001BAA60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B75D0;
  Date.timeIntervalSince1970.getter();
  v7 = v6 * 1000.0;
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v7 <= -1.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v7 < 1.84467441e19)
  {
    v8 = String._bridgeToObjectiveC()();
    v9 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    v10 = objc_opt_self();
    v11 = [v10 predicateWithProperty:v8 value:v9 comparisonType:6];
    swift_unknownObjectRelease();

    *(inited + 32) = v11;
    v12 = String._bridgeToObjectiveC()();

    v13 = [v10 predicateWithProperty:v12 equalToValue:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();

    *(inited + 40) = v13;
    v14 = String._bridgeToObjectiveC()();
    v15 = [v10 predicateWithProperty:v14 equalToValue:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();

    *(inited + 48) = v15;
    v16 = sub_10004FB24(inited);
    swift_setDeallocating();
    sub_10000CDE0(&unk_10023BFF0, &qword_1001B7F10);
    swift_arrayDestroy();
    v17 = [v4 connection];
    v18 = v16;
    v19 = sub_100086388(v17, v16, _swiftEmptyArrayStorage, 0, 0);
    [v19 countOfEntities];

    return;
  }

LABEL_7:
  __break(1u);
}

void sub_10005ECD8(uint64_t a1, char a2)
{
  v3 = v2;
  sub_10000CDE0(&unk_10023BFE0, qword_1001BAA60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B5820;
  Date.timeIntervalSince1970.getter();
  v7 = v6 * 1000.0;
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v7 <= -1.0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v7 >= 1.84467441e19)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v8 = v7;
  v9 = String._bridgeToObjectiveC()();
  v21 = v8;
  v10 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v11 = objc_opt_self();
  v12 = [v11 predicateWithProperty:v9 value:v10 comparisonType:{6, v21}];
  swift_unknownObjectRelease();

  *(inited + 32) = v12;
  if (a2)
  {
    if (a2 == 1)
    {
      v13 = 0x6F6C6E776F646572;
    }

    else
    {
      v13 = 0x6761676E652D6572;
    }

    if (a2 == 1)
    {
      v14 = 0xEA00000000006461;
    }

    else
    {
      v14 = 0xED0000746E656D65;
    }
  }

  else
  {
    v14 = 0xE800000000000000;
    v13 = 0x64616F6C6E776F64;
  }

  v15 = String._bridgeToObjectiveC()();

  v16 = [v11 predicateWithProperty:v15 equalToValue:{_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)(), v13, v14}];
  swift_unknownObjectRelease();

  *(inited + 40) = v16;
  v17 = sub_10004FB24(inited);
  swift_setDeallocating();
  sub_10000CDE0(&unk_10023BFF0, &qword_1001B7F10);
  swift_arrayDestroy();
  v18 = [v3 connection];
  v19 = v17;
  v20 = sub_100086388(v18, v17, _swiftEmptyArrayStorage, 0, 0);
  [v20 countOfEntities];
}

id sub_10005F04C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for TokenDatabaseSession();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_10005F0A8(uint64_t a1)
{
  v2 = sub_10000CDE0(&qword_10023AFD8, qword_1001B7F28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10005F110(__int128 *a1, uint64_t a2, _BYTE *a3)
{
  v5 = *(v3 + 16);
  v6 = a1[5];
  v25 = a1[4];
  v26[0] = v6;
  *(v26 + 15) = *(a1 + 95);
  v7 = a1[1];
  v21 = *a1;
  v22 = v7;
  v8 = a1[3];
  v23 = a1[2];
  v24 = v8;
  v10 = v5[4];
  v9 = v5[5];
  v11 = v5[3];
  *(v28 + 15) = *(v5 + 95);
  v27[3] = v11;
  v27[4] = v10;
  v28[0] = v9;
  v12 = *v5;
  v13 = v5[2];
  v27[1] = v5[1];
  v27[2] = v13;
  v27[0] = v12;
  sub_10005F0A8(v27);
  v14 = v23;
  v15 = v22;
  *v5 = v21;
  v5[1] = v15;
  v5[2] = v14;
  v17 = v25;
  v16 = v26[0];
  v18 = v24;
  *(v5 + 95) = *(v26 + 15);
  v5[4] = v17;
  v5[5] = v16;
  v5[3] = v18;
  *a3 = 1;
  return sub_10001B9B0(&v21, v20);
}

uint64_t type metadata accessor for BarktivityType(uint64_t a1)
{
  result = qword_10023B050;
  if (!qword_10023B050)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10005F274(uint64_t a1)
{
  sub_10005F2E8();
  if (v1 <= 0x3F)
  {
    sub_10005F330();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_10005F2E8()
{
  if (!qword_10023B060)
  {
    v0 = type metadata accessor for Date();
    if (!v1)
    {
      atomic_store(v0, &qword_10023B060);
    }
  }
}

void *sub_10005F330()
{
  result = qword_10023B068;
  if (!qword_10023B068)
  {
    result = &type metadata for Double;
    atomic_store(&type metadata for Double, &qword_10023B068);
  }

  return result;
}

uint64_t sub_10005F370()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000BD30;

  return sub_10005F410();
}

uint64_t sub_10005F42C()
{
  v15 = v0;
  if (qword_100239CA8 != -1)
  {
    swift_once();
  }

  v1 = qword_10023FC50;
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 sharedScheduler];
  *(v0 + 208) = &type metadata for ActivityManager;
  *(v0 + 216) = &off_100223E90;
  v5 = swift_allocObject();
  *(v0 + 184) = v5;
  v5[5] = &type metadata for BackgroundSystemTaskScheduler;
  v5[6] = &off_100217910;
  v5[2] = v4;
  *(v0 + 272) = &type metadata for AttributionKitCanineArbiter;
  *(v0 + 280) = &off_1002191C8;
  if (qword_100239C90 != -1)
  {
    swift_once();
  }

  v6 = qword_10023FC28;
  *(v0 + 312) = type metadata accessor for TaskGreyhound(0);
  *(v0 + 320) = &off_1002169F0;
  *(v0 + 288) = v6;
  *(v0 + 352) = &type metadata for LaunchServicesRecordFactory;
  *(v0 + 360) = &off_10021CBA8;
  *(v0 + 392) = &type metadata for AMSDogBag;
  *(v0 + 400) = &off_100222F48;

  v7 = [v2 sharedScheduler];
  v13[3] = &type metadata for ActivityManager;
  v13[4] = &off_100223E90;
  v8 = swift_allocObject();
  v13[0] = v8;
  v8[5] = &type metadata for BackgroundSystemTaskScheduler;
  v8[6] = &off_100217910;
  v8[2] = v7;
  v14[3] = &type metadata for LaunchServicesRecordFactory;
  v14[4] = &off_10021CBA8;
  sub_1000B8524(v13, v14, v0 + 408);
  *(v0 + 520) = &type metadata for AppStoreDaemonSKANInterop;
  *(v0 + 528) = &off_100222C60;
  sub_1000B42E0((v0 + 536));
  if (qword_100239D30 != -1)
  {
    swift_once();
  }

  v9 = qword_10023FD90;
  *(v0 + 600) = type metadata accessor for SnoutManager(0);
  *(v0 + 608) = &off_100223858;
  *(v0 + 576) = v9;
  strcpy((v0 + 16), "postback_store");
  *(v0 + 31) = -18;
  *(v0 + 32) = v3;
  *(v0 + 40) = 0x63616274736F6867;
  *(v0 + 48) = 0xEF65726F74735F6BLL;
  *(v0 + 56) = v3;
  *(v0 + 64) = 0xD000000000000010;
  *(v0 + 72) = 0x80000001001CB320;
  *(v0 + 80) = v3;
  *(v0 + 88) = 0x74735F6E656B6F74;
  *(v0 + 96) = 0xEB0000000065726FLL;
  *(v0 + 104) = v3;
  *(v0 + 112) = 0xD000000000000012;
  *(v0 + 120) = 0x80000001001CB340;
  *(v0 + 128) = v3;
  *(v0 + 136) = 0xD000000000000014;
  *(v0 + 144) = 0x80000001001CB360;
  *(v0 + 152) = v3;
  *(v0 + 160) = 0xD000000000000018;
  *(v0 + 168) = 0x80000001001CB380;
  *(v0 + 176) = v3;
  *(v0 + 224) = 0xD000000000000011;
  *(v0 + 232) = 0x80000001001CB3A0;
  *(v0 + 240) = v3;

  v10 = sub_1000286A4(&off_1002145A8);
  *(v0 + 616) = v10;
  v11 = swift_task_alloc();
  *(v0 + 624) = v11;
  *v11 = v0;
  v11[1] = sub_10005F820;

  return sub_10010B00C(v10);
}

uint64_t sub_10005F820()
{

  return _swift_task_switch(sub_10004E764, 0, 0);
}

uint64_t sub_10005F938()
{
  sub_10000DB58((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_10005F974()
{
  result = qword_10023B098;
  if (!qword_10023B098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B098);
  }

  return result;
}

unint64_t sub_10005F9CC()
{
  result = qword_10023B0A0;
  if (!qword_10023B0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B0A0);
  }

  return result;
}

uint64_t sub_10005FA20(uint64_t a1)
{
  *(a1 + 8) = sub_100060B88(&qword_10023A828, type metadata accessor for ImpressionModel, &unk_1001B8034);
  result = sub_100060B88(&qword_10023B0F0, type metadata accessor for ImpressionModel, &unk_1001B800C);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for ImpressionModel(uint64_t a1)
{
  result = qword_10023B180;
  if (!qword_10023B180)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10005FAF0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6B63696C63;
  }

  else
  {
    v3 = 2003134838;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x6B63696C63;
  }

  else
  {
    v5 = 2003134838;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_10005FB8C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10005FC04(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10005FC68(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10005FCDC@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100214368, *a1);

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

void sub_10005FD3C(uint64_t *a1@<X8>)
{
  v2 = 2003134838;
  if (*v1)
  {
    v2 = 0x6B63696C63;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_10005FE60(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6973736572706D69;
    v6 = 0x6F7774656E5F6461;
    if (a1 == 2)
    {
      v6 = 0xD000000000000012;
    }

    if (a1)
    {
      v5 = 0xD000000000000011;
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
    v1 = 0x5F746361706D6F63;
    v2 = 0x6D6E6F7269766E65;
    if (a1 == 7)
    {
      v2 = 0xD000000000000012;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000010;
    if (a1 == 4)
    {
      v3 = 0x6D617473656D6974;
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

uint64_t sub_10005FFA4(void *a1)
{
  v3 = v1;
  v5 = sub_10000CDE0(&qword_10023B120, &qword_1001B8148);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_10000DA7C(a1, a1[3]);
  sub_10005F9CC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = type metadata accessor for ImpressionModel(0);
  v11[15] = 0;
  type metadata accessor for UUID();
  sub_100060B88(&qword_10023A108, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11[12] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11[11] = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11[10] = *(v3 + *(v9 + 40));
    v11[9] = 5;
    sub_10004CE54();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11[8] = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11[7] = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11[6] = *(v3 + *(v9 + 52));
    v11[5] = 8;
    sub_10004CEFC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000602E4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = type metadata accessor for UUID();
  v27 = *(v4 - 8);
  __chkstk_darwin(v4);
  v28 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_10000CDE0(&qword_10023B118, &qword_1001B8140);
  v26 = *(v30 - 8);
  __chkstk_darwin(v30);
  v7 = &v24 - v6;
  v8 = type metadata accessor for ImpressionModel(0);
  __chkstk_darwin(v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v10 = 0;
  v10[8] = 1;
  sub_10000DA7C(a1, a1[3]);
  sub_10005F9CC();
  v29 = v7;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000DB58(a1);
  }

  v11 = a1;
  v13 = v26;
  v12 = v27;
  v41 = 0;
  sub_100060B88(&qword_10023A0E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v14 = v28;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v15 = *(v12 + 32);
  v16 = &v10[v8[5]];
  v28 = v4;
  v15(v16, v14, v4);
  v40 = 1;
  *&v10[v8[6]] = KeyedDecodingContainer.decode(_:forKey:)();
  v39 = 2;
  *&v10[v8[7]] = KeyedDecodingContainer.decode(_:forKey:)();
  v38 = 3;
  v17 = KeyedDecodingContainer.decode(_:forKey:)();
  v18 = &v10[v8[8]];
  *v18 = v17;
  v18[1] = v19;
  v37 = 4;
  *&v10[v8[9]] = KeyedDecodingContainer.decode(_:forKey:)();
  v35 = 5;
  sub_10004DC18();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v10[v8[10]] = v36;
  v34 = 6;
  v20 = KeyedDecodingContainer.decode(_:forKey:)();
  v21 = &v10[v8[11]];
  *v21 = v20;
  v21[1] = v22;
  v33 = 7;
  *&v10[v8[12]] = KeyedDecodingContainer.decode(_:forKey:)();
  v31 = 8;
  sub_10004DBC4();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v13 + 8))(v29, v30);
  v10[v8[13]] = v32;
  sub_10004C9B4(v10, v25);
  sub_10000DB58(v11);
  return sub_10004CA18(v10);
}