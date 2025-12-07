uint64_t sub_1002DB320(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = *(*(v3 + 56) + 8 * (v9 | (v4 << 6)));
    v13 = sub_100067004();
    if (v14)
    {
      result = sub_1001B42A0(*(*(a2 + 56) + 8 * v13), v12);
      if (result)
      {
        continue;
      }
    }

    return 0;
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1002DB42C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = 0;
  v29 = result + 64;
  v30 = result;
  v3 = 1 << *(result + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(result + 64);
  v28 = (v3 + 63) >> 6;
  while (v5)
  {
    v6 = __clz(__rbit64(v5));
    v32 = (v5 - 1) & v5;
LABEL_13:
    v9 = v6 | (v2 << 6);
    v10 = (*(result + 48) + 40 * v9);
    v11 = *v10;
    v12 = *(v10 + 1);
    v13 = *(v10 + 1);
    v14 = *(v10 + 4);
    v15 = *(v10 + 3);
    v16 = *(v10 + 4);
    v17 = *(result + 56) + 12 * v9;
    v18 = *v17;
    v19 = *(v17 + 8);

    sub_100014CEC(v15, v16);
    v20 = v13 == 0;
    if (!v13)
    {
      return v20;
    }

    v33[0] = v11 | (v12 << 32);
    v33[1] = v13;
    v33[2] = v14;
    v33[3] = v15;
    v33[4] = v16;
    v21 = sub_100063FFC(v33);
    v23 = v22;
    sub_100066FB0(v33);
    if ((v23 & 1) == 0)
    {
      return v20;
    }

    v24 = *(a2 + 56) + 12 * v21;
    v25 = *v24;
    if (*(v24 + 8) != 1)
    {
      if (v19)
      {
        return v20;
      }

      v27 = v18 == v25;
      goto LABEL_28;
    }

    if (v25)
    {
      if (v19)
      {
        v26 = v18 == 0;
      }

      else
      {
        v26 = 1;
      }

      result = v30;
      v5 = v32;
      if (v26)
      {
        return v20;
      }
    }

    else
    {
      if (v19)
      {
        v27 = v18 == 0;
      }

      else
      {
        v27 = 0;
      }

LABEL_28:
      result = v30;
      v5 = v32;
      if (!v27)
      {
        return v20;
      }
    }
  }

  v7 = v2;
  while (1)
  {
    v2 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v2 >= v28)
    {
      return 1;
    }

    v8 = *(v29 + 8 * v2);
    ++v7;
    if (v8)
    {
      v6 = __clz(__rbit64(v8));
      v32 = (v8 - 1) & v8;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1002DB614(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v27 = (v7 - 1) & v7;
LABEL_17:
    v13 = v10 | (v3 << 6);
    v14 = result;
    v15 = *(result + 48) + 16 * v13;
    v16 = *(result + 56) + 24 * v13;
    v17 = *v16;
    v18 = *(v16 + 4);
    v19 = *(v16 + 8);
    v20 = *(v16 + 16);
    v21 = sub_100063C84(*v15, *(v15 + 8));
    if ((v22 & 1) == 0)
    {
      return 0;
    }

    v23 = *(a2 + 56) + 24 * v21;
    v24 = *(v23 + 8);
    v25 = *(v23 + 16);
    if (*(v23 + 4))
    {
      if (!v18)
      {
        return 0;
      }
    }

    else
    {
      if (*v23 == v17)
      {
        v26 = v18;
      }

      else
      {
        v26 = 1;
      }

      if (v26)
      {
        return 0;
      }
    }

    if (v25)
    {
      result = v14;
      v7 = v27;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v24 == v19)
      {
        v9 = v20;
      }

      else
      {
        v9 = 1;
      }

      result = v14;
      v7 = v27;
      if (v9)
      {
        return 0;
      }
    }
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v27 = (v12 - 1) & v12;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

void sub_1002DB79C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v64 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v60 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v55 - v7;
  __chkstk_darwin(v9);
  v59 = &v55 - v10;
  v11 = sub_10000C9C0(&qword_1005D79D0, &qword_1004F2688);
  __chkstk_darwin(v11 - 8);
  v62 = (&v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v61 = (&v55 - v14);
  if (a1 == a2)
  {
    v63 = 1;
  }

  else if (*(a1 + 16) == *(a2 + 16))
  {
    v15 = 0;
    v57 = a2;
    v58 = a1;
    v18 = *(a1 + 64);
    v17 = a1 + 64;
    v16 = v18;
    v19 = 1 << *(v17 - 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & v16;
    v55 = (v19 + 63) >> 6;
    v56 = v17;
    while (v21)
    {
      v22 = __clz(__rbit64(v21));
      v23 = (v21 - 1) & v21;
      v24 = v22 | (v15 << 6);
LABEL_16:
      v29 = v59;
      v30 = *(v58 + 48) + 16 * v24;
      v31 = *v30;
      v32 = *(v30 + 8);
      sub_10000E268(*(v58 + 56) + *(v64 + 72) * v24, v59, &unk_1005D91B0, &unk_1004CF400);
      v33 = sub_10000C9C0(&qword_1005D79D8, &qword_1004F2690);
      v34 = *(v33 + 48);
      v35 = v62;
      *v62 = v31;
      *(v35 + 2) = v32;
      v36 = v35;
      sub_100025FDC(v29, v35 + v34, &unk_1005D91B0, &unk_1004CF400);
      (*(*(v33 - 8) + 56))(v36, 0, 1, v33);

      a2 = v57;
LABEL_17:
      v37 = v36;
      v38 = v61;
      sub_100025FDC(v37, v61, &qword_1005D79D0, &qword_1004F2688);
      v39 = sub_10000C9C0(&qword_1005D79D8, &qword_1004F2690);
      v40 = (*(*(v39 - 8) + 48))(v38, 1, v39);
      v63 = v40 == 1;
      if (v40 == 1)
      {
        return;
      }

      v41 = v23;
      v42 = v64;
      v43 = *(v39 + 48);
      v44 = v38;
      v45 = *v38;
      v46 = *(v44 + 2);
      sub_100025FDC(v44 + v43, v8, &unk_1005D91B0, &unk_1004CF400);
      v47 = sub_100063B5C(v45, v46);
      v49 = v48;

      if ((v49 & 1) == 0)
      {
        sub_100025F40(v8, &unk_1005D91B0, &unk_1004CF400);
        goto LABEL_24;
      }

      v50 = *(a2 + 56) + *(v42 + 72) * v47;
      v51 = v60;
      sub_10000E268(v50, v60, &unk_1005D91B0, &unk_1004CF400);
      sub_100016D2C();
      v52 = sub_1004A7034();
      sub_100025F40(v51, &unk_1005D91B0, &unk_1004CF400);
      sub_100025F40(v8, &unk_1005D91B0, &unk_1004CF400);
      v21 = v41;
      if ((v52 & 1) == 0)
      {
        return;
      }
    }

    if (v55 <= v15 + 1)
    {
      v25 = v15 + 1;
    }

    else
    {
      v25 = v55;
    }

    v26 = v25 - 1;
    while (1)
    {
      v27 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v27 >= v55)
      {
        v53 = sub_10000C9C0(&qword_1005D79D8, &qword_1004F2690);
        v54 = v62;
        (*(*(v53 - 8) + 56))(v62, 1, 1, v53);
        v23 = 0;
        v15 = v26;
        v36 = v54;
        goto LABEL_17;
      }

      v28 = *(v56 + 8 * v27);
      ++v15;
      if (v28)
      {
        v23 = (v28 - 1) & v28;
        v24 = __clz(__rbit64(v28)) | (v27 << 6);
        v15 = v27;
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_24:
    v63 = 0;
  }
}

unint64_t SearchRequest.Query.predicate.setter(uint64_t a1)
{
  result = sub_1000C9F38(*(v1 + 8));
  *(v1 + 8) = a1;
  return result;
}

unint64_t static SearchRequest.Query.__derived_struct_equals(_:_:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_1002DAEFC(a1, a3);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  return static SearchRequest.Predicate.__derived_enum_equals(_:_:)(a2, a4);
}

unint64_t static SearchRequest.Predicate.__derived_enum_equals(_:_:)(unint64_t a1, unint64_t a2)
{
  while (2)
  {
    switch(a1 >> 60)
    {
      case 1uLL:
        if (a2 >> 60 != 1)
        {
          goto LABEL_60;
        }

        return *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10) == *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10) && *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18) == *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18) && *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20) == *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      case 2uLL:
        if (a2 >> 60 != 2)
        {
          goto LABEL_60;
        }

        goto LABEL_37;
      case 3uLL:
        if (a2 >> 60 != 3)
        {
          goto LABEL_60;
        }

        goto LABEL_37;
      case 4uLL:
        if (a2 >> 60 != 4)
        {
          goto LABEL_60;
        }

        return *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10) == *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      case 5uLL:
        if (a2 >> 60 != 5)
        {
          goto LABEL_60;
        }

        goto LABEL_37;
      case 6uLL:
        if (a2 >> 60 != 6)
        {
          goto LABEL_60;
        }

        v11 = a1 & 0xFFFFFFFFFFFFFFFLL;
        v12 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v13 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v14 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v15 = *(v11 + 40);
        v16 = a2 & 0xFFFFFFFFFFFFFFFLL;
        v17 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v18 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v19 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v20 = *(v16 + 40);
        v21 = v12 == v17 && v13 == v18;
        if (!v21 && (sub_1004A6D34() & 1) == 0)
        {
          goto LABEL_60;
        }

        if (v14 != v19 || v15 != v20)
        {
          goto LABEL_41;
        }

        goto LABEL_59;
      case 7uLL:
        if (a2 >> 60 != 7)
        {
          goto LABEL_60;
        }

        v24 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v25 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        sub_1000C9E60(v25);
        LOBYTE(v24) = static SearchRequest.Predicate.__derived_enum_equals(_:_:)(v24, v25);
        sub_1000C9F38(v25);
        return v24 & 1;
      case 8uLL:
        if (a2 >> 60 == 8)
        {
          v7 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          a1 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          v8 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          a2 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          if (static SearchRequest.Predicate.__derived_enum_equals(_:_:)(v7, v8))
          {
            continue;
          }
        }

        goto LABEL_60;
      case 9uLL:
        if (a2 >> 60 != 9)
        {
          goto LABEL_60;
        }

        return *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10) == *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10) && *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18) == *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18) && *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20) == *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      case 0xAuLL:
        if (a2 >> 60 == 10)
        {
          goto LABEL_37;
        }

        goto LABEL_60;
      case 0xBuLL:
        if (a2 >> 60 != 11)
        {
          goto LABEL_60;
        }

LABEL_37:
        if (*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10) == *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10) && *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18) == *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18))
        {
          goto LABEL_59;
        }

LABEL_41:

        return sub_1004A6D34();
      case 0xCuLL:
        v9 = __ROR8__(a1 + 0x4000000000000000, 3);
        if (v9 > 1)
        {
          if (v9 == 2)
          {
            v10 = 0xC000000000000010;
          }

          else
          {
            v10 = 0xC000000000000018;
          }
        }

        else if (v9)
        {
          v10 = 0xC000000000000008;
        }

        else
        {
          v10 = 0xC000000000000000;
        }

        if (a2 != v10)
        {
          goto LABEL_60;
        }

LABEL_59:
        result = 1;
        break;
      default:
        if (!(a2 >> 60))
        {
          v4 = *(a1 + 24);
          v5 = *(a2 + 16);
          a2 = *(a2 + 24);
          v6 = static SearchRequest.Predicate.__derived_enum_equals(_:_:)(*(a1 + 16), v5);
          a1 = v4;
          if (v6)
          {
            continue;
          }
        }

LABEL_60:
        result = 0;
        break;
    }

    return result;
  }
}

unint64_t sub_1002DBFF8(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  sub_1002DAEFC(*a1, *a2);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  return static SearchRequest.Predicate.__derived_enum_equals(_:_:)(v2, v3);
}

void static SearchRequest.Kind.__derived_enum_equals(_:_:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a2 & 4) != 0)
  {
    if ((a4 & 4) != 0)
    {

      sub_1002DAA1C(a1, a3);
    }
  }

  else if ((a4 & 4) == 0)
  {
    sub_1002DAEFC(a1, a3);
    if (v6)
    {
      static SearchRequest.Predicate.__derived_enum_equals(_:_:)(a2, a4);
    }
  }
}

void sub_1002DC0CC(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  if ((v5 & 4) != 0)
  {
    if ((v7 & 4) != 0)
    {

      sub_1002DAA1C(v4, v6);
    }
  }

  else if ((v7 & 4) == 0)
  {
    sub_1002DAEFC(v4, v6);
    if (v8)
    {
      static SearchRequest.Predicate.__derived_enum_equals(_:_:)(v5, v7);
    }
  }
}

unint64_t SearchRequest.kind.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1000C9EF0(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t static SearchRequest.__derived_struct_equals(_:_:)(int a1, uint64_t a2, unint64_t a3, int a4, uint64_t a5, unint64_t a6)
{
  if (a1 != a4)
  {
    return 0;
  }

  if ((a3 & 4) != 0)
  {
    if ((a6 & 4) != 0)
    {
      sub_1002DAA1C(a2, a5);
      if (v10)
      {
        return 1;
      }
    }
  }

  else if ((a6 & 4) == 0)
  {
    sub_1002DAEFC(a2, a5);
    if (v8 & 1) != 0 && (static SearchRequest.Predicate.__derived_enum_equals(_:_:)(a3, a6))
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1002DC278(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if ((v4 & 4) != 0)
  {
    if ((v7 & 4) != 0)
    {
      sub_1002DAA1C(v3, v6);
      if (v10)
      {
        return 1;
      }
    }
  }

  else if ((v7 & 4) == 0)
  {
    sub_1002DAEFC(v3, v6);
    if (v8 & 1) != 0 && (static SearchRequest.Predicate.__derived_enum_equals(_:_:)(v4, v7))
    {
      return 1;
    }
  }

  return 0;
}

void SearchRequest.Predicate.Day.hash(into:)(uint64_t a1, Swift::UInt a2, Swift::UInt a3, Swift::UInt a4)
{
  sub_1004A6EB4(a2);
  sub_1004A6EB4(a3);
  sub_1004A6EB4(a4);
}

Swift::Int SearchRequest.Predicate.Day.hashValue.getter(Swift::UInt a1, Swift::UInt a2, Swift::UInt a3)
{
  sub_1004A6E94();
  sub_1004A6EB4(a1);
  sub_1004A6EB4(a2);
  sub_1004A6EB4(a3);
  return sub_1004A6F14();
}

Swift::Int sub_1002DC3BC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1004A6E94();
  sub_1004A6EB4(v1);
  sub_1004A6EB4(v2);
  sub_1004A6EB4(v3);
  return sub_1004A6F14();
}

void sub_1002DC428()
{
  v1 = v0[1];
  v2 = v0[2];
  sub_1004A6EB4(*v0);
  sub_1004A6EB4(v1);
  sub_1004A6EB4(v2);
}

Swift::Int sub_1002DC470(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  sub_1004A6E94();
  sub_1004A6EB4(v2);
  sub_1004A6EB4(v3);
  sub_1004A6EB4(v4);
  return sub_1004A6F14();
}

void SearchRequest.Predicate.hash(into:)(uint64_t a1, unint64_t a2)
{
  while (1)
  {
    v5 = a2 >> 60;
    switch(a2 >> 60)
    {
      case 1uLL:
        v16 = a2 & 0xFFFFFFFFFFFFFFFLL;
        v8 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v9 = *(v16 + 24);
        v10 = *(v16 + 32);
        v11 = 2;
        goto LABEL_25;
      case 2uLL:
        v6 = 3;
        goto LABEL_21;
      case 3uLL:
        v6 = 4;
        goto LABEL_21;
      case 4uLL:
        v14 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        sub_1004A6EB4(7uLL);
        v13 = v14;
        goto LABEL_26;
      case 5uLL:
        v6 = 8;
        goto LABEL_21;
      case 6uLL:
        sub_1004A6EB4(9uLL);
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
        return;
      case 7uLL:
        v15 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        sub_1004A6EB4(0xAuLL);
        sub_1000C9E60(v15);
        SearchRequest.Predicate.hash(into:)(a1, v15);

        sub_1000C9F38(v15);
        return;
      case 8uLL:
        a2 &= 0xFFFFFFFFFFFFFFFuLL;
        v5 = 11;
        goto LABEL_2;
      case 9uLL:
        v7 = a2 & 0xFFFFFFFFFFFFFFFLL;
        v8 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v9 = *(v7 + 24);
        v10 = *(v7 + 32);
        v11 = 13;
LABEL_25:
        sub_1004A6EB4(v11);
        sub_1004A6EB4(v8);
        sub_1004A6EB4(v9);
        v13 = v10;
        goto LABEL_26;
      case 0xAuLL:
        v6 = 14;
        goto LABEL_21;
      case 0xBuLL:
        v6 = 15;
LABEL_21:
        sub_1004A6EB4(v6);

        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

        return;
      case 0xCuLL:
        v12 = __ROR8__(a2 + 0x4000000000000000, 3);
        if (v12 > 1)
        {
          if (v12 == 2)
          {
            v13 = 6;
          }

          else
          {
            v13 = 12;
          }
        }

        else if (v12)
        {
          v13 = 5;
        }

        else
        {
          v13 = 1;
        }

LABEL_26:
        sub_1004A6EB4(v13);
        return;
      default:
LABEL_2:
        v4 = *(a2 + 16);
        a2 = *(a2 + 24);
        sub_1004A6EB4(v5);
        SearchRequest.Predicate.hash(into:)(a1, v4);
        break;
    }
  }
}

Swift::Int SearchRequest.Predicate.hashValue.getter(unint64_t a1)
{
  sub_1004A6E94();
  SearchRequest.Predicate.hash(into:)(v3, a1);
  return sub_1004A6F14();
}

Swift::Int sub_1002DC79C()
{
  v1 = *v0;
  sub_1004A6E94();
  SearchRequest.Predicate.hash(into:)(v3, v1);
  return sub_1004A6F14();
}

Swift::Int sub_1002DC7EC(uint64_t a1)
{
  v2 = *v1;
  sub_1004A6E94();
  SearchRequest.Predicate.hash(into:)(v4, v2);
  return sub_1004A6F14();
}

void *static SearchRequest.Predicate.and(_:)(void *result)
{
  v1 = result[2];
  if (v1 == 1)
  {
    v3 = result[4];
    v5 = v3;
    goto LABEL_10;
  }

  if (v1)
  {
    v2 = &result[v1];
    v3 = v2[2];
    v4 = v2[3];
    result = swift_allocObject();
    v5 = result;
    result[2] = v3;
    result[3] = v4;
    if (v1 != 2)
    {
      v6 = v1 - 3;
      v7 = v2 + 1;
      v8 = result;
      while (v1 - 2 >= v6 + 1)
      {
        if (v6 >= v1)
        {
          goto LABEL_12;
        }

        v9 = *v7--;
        v5 = swift_allocObject();
        v5[2] = v9;
        v5[3] = v8;
        result = sub_1000C9E60(v9);
        --v6;
        v8 = v5;
        if (v6 == -1)
        {
          goto LABEL_8;
        }
      }

      __break(1u);
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

LABEL_8:
    sub_1000C9E60(v4);
LABEL_10:
    sub_1000C9E60(v3);
    return v5;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1002DC93C()
{
  sub_1000C9F38(*(v0 + 16));
  sub_1000C9F38(*(v0 + 24));

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t static SearchRequest.Predicate.or(_:)(unint64_t result)
{
  v1 = *(result + 16);
  if (v1 == 1)
  {
    v3 = *(result + 32);
    v5 = v3;
    goto LABEL_10;
  }

  if (v1)
  {
    v2 = (result + 8 * v1);
    v3 = v2[2];
    v4 = v2[3];
    result = swift_allocObject();
    *(result + 16) = v3;
    *(result + 24) = v4;
    v5 = result | 0x8000000000000000;
    if (v1 != 2)
    {
      v6 = v1 - 3;
      v7 = v2 + 1;
      while (v1 - 2 >= v6 + 1)
      {
        if (v6 >= v1)
        {
          goto LABEL_12;
        }

        v8 = *v7--;
        v9 = swift_allocObject();
        *(v9 + 16) = v8;
        *(v9 + 24) = v5;
        result = sub_1000C9E60(v8);
        v5 = v9 | 0x8000000000000000;
        if (--v6 == -1)
        {
          goto LABEL_8;
        }
      }

      __break(1u);
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

LABEL_8:
    sub_1000C9E60(v4);
LABEL_10:
    sub_1000C9E60(v3);
    return v5;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t SearchRequest.Predicate.Color.description.getter(unsigned __int8 a1)
{
  v1 = 6579570;
  v2 = 0x656C70727570;
  if (a1 != 5)
  {
    v2 = 2036429415;
  }

  v3 = 0x6E65657267;
  if (a1 != 3)
  {
    v3 = 1702194274;
  }

  if (a1 <= 4u)
  {
    v2 = v3;
  }

  v4 = 0x65676E61726FLL;
  if (a1 != 1)
  {
    v4 = 0x776F6C6C6579;
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

uint64_t sub_1002DCB2C()
{
  v1 = *v0;
  v2 = 6579570;
  v3 = 0x656C70727570;
  if (v1 != 5)
  {
    v3 = 2036429415;
  }

  v4 = 0x6E65657267;
  if (v1 != 3)
  {
    v4 = 1702194274;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x65676E61726FLL;
  if (v1 != 1)
  {
    v5 = 0x776F6C6C6579;
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

uint64_t SearchRequest.Predicate.Day.description.getter()
{
  v1 = sub_1004A6CE4();
  v2._countAndFlagsBits = 45;
  v2._object = 0xE100000000000000;
  sub_1004A5994(v2);
  v3._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v3);

  v4._countAndFlagsBits = 45;
  v4._object = 0xE100000000000000;
  sub_1004A5994(v4);
  v5._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v5);

  return v1;
}

uint64_t SearchRequest.Predicate.description.getter(unint64_t a1)
{
  switch(a1 >> 60)
  {
    case 1uLL:
      v22 = 0x2845524F464542;
      goto LABEL_37;
    case 2uLL:
      v6 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v7 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v23 = 1497648962;
      goto LABEL_40;
    case 3uLL:
      v6 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v7 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v8 = 2638659;
      goto LABEL_43;
    case 4uLL:
      v9 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v10 = 0xE600000000000000;
      v11 = 0x65676E61726FLL;
      v12 = 0xE600000000000000;
      countAndFlagsBits = 0x28524F4C4F43;
      v13 = 0x656C70727570;
      if (v9 != 5)
      {
        v13 = 2036429415;
        v12 = 0xE400000000000000;
      }

      v14 = 0xE500000000000000;
      v15 = 0x6E65657267;
      if (v9 != 3)
      {
        v15 = 1702194274;
        v14 = 0xE400000000000000;
      }

      if (*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10) <= 4u)
      {
        v13 = v15;
        v12 = v14;
      }

      if (v9 != 1)
      {
        v11 = 0x776F6C6C6579;
        v10 = 0xE600000000000000;
      }

      if (!*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10))
      {
        v11 = 6579570;
        v10 = 0xE300000000000000;
      }

      if (*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10) <= 2u)
      {
        v16._countAndFlagsBits = v11;
      }

      else
      {
        v16._countAndFlagsBits = v13;
      }

      if (v9 <= 2)
      {
        v17 = v10;
      }

      else
      {
        v17 = v12;
      }

      v16._object = v17;
      goto LABEL_38;
    case 5uLL:
      v6 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v7 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v23 = 1297044038;
LABEL_40:
      v8 = v23 & 0xFFFF0000FFFFFFFFLL | 0x2800000000;
      goto LABEL_43;
    case 6uLL:
      v25 = a1 & 0xFFFFFFFFFFFFFFFLL;
      v36._countAndFlagsBits = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v36._object = *(v25 + 24);
      v26 = *(v25 + 32);
      v27 = *(v25 + 40);
      countAndFlagsBits = 0x28524544414548;
      sub_1004A5994(v36);
      v37._countAndFlagsBits = 61;
      v37._object = 0xE100000000000000;
      sub_1004A5994(v37);
      v38._countAndFlagsBits = v26;
      v38._object = v27;
      sub_1004A5994(v38);
      goto LABEL_45;
    case 7uLL:
      v24 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      countAndFlagsBits = 542396238;
      sub_1000C9E60(v24);
      v35._countAndFlagsBits = SearchRequest.Predicate.description.getter(v24);
      sub_1004A5994(v35);

      sub_1000C9F38(v24);
      return countAndFlagsBits;
    case 8uLL:
      v29 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v28 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v30._countAndFlagsBits = SearchRequest.Predicate.description.getter(v29);
      if (!(v29 >> 60))
      {
        sub_1004A5994(v30);

        v41._countAndFlagsBits = 41;
        v41._object = 0xE100000000000000;
        sub_1004A5994(v41);
        v30._countAndFlagsBits = 40;
      }

      countAndFlagsBits = v30._countAndFlagsBits;
      v42._countAndFlagsBits = 542265120;
      v42._object = 0xE400000000000000;
      sub_1004A5994(v42);
      v4._countAndFlagsBits = SearchRequest.Predicate.description.getter(v28);
      object = v4._object;
      if (v28 >> 60)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    case 9uLL:
      v22 = 0x2845434E4953;
LABEL_37:
      countAndFlagsBits = v22;
      v16._countAndFlagsBits = SearchRequest.Predicate.Day.description.getter();
LABEL_38:
      sub_1004A5994(v16);
      goto LABEL_44;
    case 0xAuLL:
      v6 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v7 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v8 = 0x285443454A425553;
      goto LABEL_43;
    case 0xBuLL:
      v6 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v7 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v8 = 2641748;
LABEL_43:
      countAndFlagsBits = v8;

      v39._countAndFlagsBits = v6;
      v39._object = v7;
      sub_1004A5994(v39);
LABEL_44:

LABEL_45:
      v40._countAndFlagsBits = 41;
      v40._object = 0xE100000000000000;
      sub_1004A5994(v40);
      return countAndFlagsBits;
    case 0xCuLL:
      v18 = __ROR8__(a1 + 0x4000000000000000, 3);
      v19 = 0x4445524557534E41;
      v20 = 0x44454747414C46;
      if (v18 != 2)
      {
        v20 = 1145128274;
      }

      if (v18)
      {
        v19 = 0x444554454C4544;
      }

      if (v18 <= 1)
      {
        return v19;
      }

      else
      {
        return v20;
      }

    default:
      v2 = *(a1 + 16);
      v1 = *(a1 + 24);
      v3._countAndFlagsBits = SearchRequest.Predicate.description.getter(v2);
      if (v2 >> 60 == 8)
      {
        sub_1004A5994(v3);

        v32._countAndFlagsBits = 41;
        v32._object = 0xE100000000000000;
        sub_1004A5994(v32);
        v3._countAndFlagsBits = 40;
      }

      countAndFlagsBits = v3._countAndFlagsBits;
      v33._countAndFlagsBits = 0x20444E4120;
      v33._object = 0xE500000000000000;
      sub_1004A5994(v33);
      v4._countAndFlagsBits = SearchRequest.Predicate.description.getter(v1);
      object = v4._object;
      if (v1 >> 60 == 8)
      {
LABEL_5:
        v4._object = object;
        sub_1004A5994(v4);

        v34._countAndFlagsBits = 41;
        v34._object = 0xE100000000000000;
        sub_1004A5994(v34);
        v4._countAndFlagsBits = 40;
        object = 0xE100000000000000;
      }

LABEL_6:
      v4._object = object;
      sub_1004A5994(v4);

      return countAndFlagsBits;
  }
}

BOOL SearchRequest.Predicate.requiresBody.getter(unint64_t a1)
{
  v1 = a1 >> 60;
  if ((a1 >> 60) > 2)
  {
    if (((1 << v1) & 0x1E78) != 0)
    {
      return 0;
    }

    if (v1 == 7)
    {
      v3 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      sub_1000C9E60(v3);
LABEL_12:
      v6 = SearchRequest.Predicate.requiresBody.getter(v3);
      sub_1000C9F38(v3);
      return v6;
    }

    a1 &= 0xFFFFFFFFFFFFFFFuLL;
LABEL_10:
    v4 = *(a1 + 16);
    v3 = *(a1 + 24);
    sub_1000C9E60(v4);
    sub_1000C9E60(v3);
    v5 = SearchRequest.Predicate.requiresBody.getter(v4);
    sub_1000C9F38(v4);
    if (v5)
    {
      sub_1000C9F38(v3);
      return 1;
    }

    goto LABEL_12;
  }

  if (!v1)
  {
    goto LABEL_10;
  }

  return v1 != 1;
}

BOOL static SearchRequest.RangesToExclude.__derived_struct_equals(_:_:)(int32x2_t *a1, uint64_t a2, char a3, int32x2_t *a4, uint64_t a5, char a6)
{
  if ((sub_100102A80(a1, a4) & 1) == 0)
  {
    return 0;
  }

  if ((a3 & 1) == 0)
  {
    return (a6 & 1) == 0 && a2 == a5;
  }

  return (a6 & 1) != 0;
}

unint64_t sub_1002DD2CC()
{
  result = qword_1005D7988;
  if (!qword_1005D7988)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SearchRequest.ID, &type metadata for SearchRequest.ID, v0, v1);
    atomic_store(result, &qword_1005D7988);
  }

  return result;
}

unint64_t sub_1002DD324()
{
  result = qword_1005D7990;
  if (!qword_1005D7990)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SearchRequest.Predicate.Color, &type metadata for SearchRequest.Predicate.Color, v0, v1);
    atomic_store(result, &qword_1005D7990);
  }

  return result;
}

unint64_t sub_1002DD37C()
{
  result = qword_1005D7998;
  if (!qword_1005D7998)
  {
    result = swift_getWitnessTable("9O\t", &type metadata for SearchRequest.Predicate.Day, v0, v1);
    atomic_store(result, &qword_1005D7998);
  }

  return result;
}

unint64_t sub_1002DD3D4()
{
  result = qword_1005D79A0;
  if (!qword_1005D79A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SearchRequest.Predicate, &type metadata for SearchRequest.Predicate, v0, v1);
    atomic_store(result, &qword_1005D79A0);
  }

  return result;
}

uint64_t sub_1002DD428(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if (sub_100102A80(*a1, *a2))
  {
    if (v3)
    {
      if (v5)
      {
        return 1;
      }
    }

    else
    {
      if (v2 == v4)
      {
        v7 = v5;
      }

      else
      {
        v7 = 1;
      }

      if ((v7 & 1) == 0)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1002DD48C(void *a1)
{
  if (*a1 >> 62 == 3)
  {
    return (*a1 >> 3) + 12;
  }

  else
  {
    return *a1 >> 60;
  }
}

uint64_t sub_1002DD4B8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 7 && *(a1 + 24))
  {
    return (*a1 + 7);
  }

  v3 = ((*(a1 + 16) >> 2) & 1 | (2 * (*(a1 + 16) & 3))) ^ 7;
  if (v3 >= 6)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1002DD508(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 6)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 7;
    if (a3 >= 7)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 7)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (-a2 >> 1) & 3 | (4 * (-a2 & 1));
    }
  }

  return result;
}

ValueMetadata *type metadata accessor for SearchRequest()
{
  return &type metadata for SearchRequest;
}

{
  return &type metadata for SearchRequest;
}

uint64_t sub_1002DD574(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 7 && *(a1 + 16))
  {
    return (*a1 + 7);
  }

  v3 = ((*(a1 + 8) >> 2) & 1 | (2 * (*(a1 + 8) & 3))) ^ 7;
  if (v3 >= 6)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1002DD5C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 6)
  {
    *result = a2 - 7;
    *(result + 8) = 0;
    if (a3 >= 7)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 7)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (-a2 >> 1) & 3 | (4 * (-a2 & 1));
    }
  }

  return result;
}

uint64_t sub_1002DD654(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x74 && *(a1 + 8))
  {
    return (*a1 + 116);
  }

  v3 = ((*a1 >> 60) & 0x8F | (16 * (*a1 & 7))) ^ 0x7F;
  if (v3 >= 0x73)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1002DD6A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x73)
  {
    *result = a2 - 116;
    if (a3 >= 0x74)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x74)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 4) & 7 | (8 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1002DD6F4(void *result, uint64_t a2)
{
  if (a2 < 0xC)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 60);
  }

  else
  {
    *result = (8 * (a2 - 12)) | 0xC000000000000000;
  }

  return result;
}

uint64_t sub_1002DD760(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Activity.MailboxStatus(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002DD7C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002DD824(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

Swift::Int sub_1002DD890(uint64_t a1, unsigned __int8 a2)
{
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1004A6F14();
}

uint64_t RemoteMailbox.SpecialUse.rawValue.getter(unsigned __int8 a1)
{
  v1 = 7105633;
  v2 = 1953391987;
  if (a1 != 5)
  {
    v2 = 0x6873617274;
  }

  v3 = 0x64656767616C66;
  if (a1 != 3)
  {
    v3 = 1802401130;
  }

  if (a1 <= 4u)
  {
    v2 = v3;
  }

  v4 = 0x65766968637261;
  if (a1 != 1)
  {
    v4 = 0x737466617264;
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

unint64_t sub_1002DDA70@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s16IMAP2Persistence13RemoteMailboxV10SpecialUseO8rawValueAESgSS_tcfC_0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1002DDAA0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 7105633;
  v5 = 0xE400000000000000;
  v6 = 1953391987;
  if (v2 != 5)
  {
    v6 = 0x6873617274;
    v5 = 0xE500000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x64656767616C66;
  if (v2 != 3)
  {
    v8 = 1802401130;
    v7 = 0xE400000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x65766968637261;
  if (v2 != 1)
  {
    v10 = 0x737466617264;
    v9 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_1002DDB6C(uint64_t a1)
{
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t _s16IMAP2Persistence13RemoteMailboxV10SpecialUseOyAESg12NIOIMAPCore20D4InfoV9AttributeVcfC_0(uint64_t a1, uint64_t a2)
{
  UseAttribute.all.unsafeMutableAddressor();
  v2 = sub_1004A5814();
  v4 = v3;
  if (v2 == sub_1004A5814() && v4 == v5)
  {

LABEL_8:

    return 0;
  }

  v7 = sub_1004A6D34();

  if (v7)
  {
    goto LABEL_8;
  }

  UseAttribute.archive.unsafeMutableAddressor();
  v9 = sub_1004A5814();
  v11 = v10;
  if (v9 == sub_1004A5814() && v11 == v12)
  {

LABEL_13:

    return 1;
  }

  v13 = sub_1004A6D34();

  if (v13)
  {
    goto LABEL_13;
  }

  UseAttribute.drafts.unsafeMutableAddressor();
  v14 = sub_1004A5814();
  v16 = v15;
  if (v14 == sub_1004A5814() && v16 == v17)
  {

LABEL_18:

    return 2;
  }

  v18 = sub_1004A6D34();

  if (v18)
  {
    goto LABEL_18;
  }

  UseAttribute.flagged.unsafeMutableAddressor();
  v19 = sub_1004A5814();
  v21 = v20;
  if (v19 == sub_1004A5814() && v21 == v22)
  {

LABEL_23:

    return 3;
  }

  v23 = sub_1004A6D34();

  if (v23)
  {
    goto LABEL_23;
  }

  UseAttribute.junk.unsafeMutableAddressor();
  v24 = sub_1004A5814();
  v26 = v25;
  if (v24 == sub_1004A5814() && v26 == v27)
  {

LABEL_28:

    return 4;
  }

  v28 = sub_1004A6D34();

  if (v28)
  {
    goto LABEL_28;
  }

  UseAttribute.sent.unsafeMutableAddressor();
  v29 = sub_1004A5814();
  v31 = v30;
  if (v29 == sub_1004A5814() && v31 == v32)
  {

LABEL_33:

    return 5;
  }

  v33 = sub_1004A6D34();

  if (v33)
  {
    goto LABEL_33;
  }

  UseAttribute.trash.unsafeMutableAddressor();
  v34 = sub_1004A5814();
  v36 = v35;
  if (v34 == sub_1004A5814() && v36 == v37)
  {

    return 6;
  }

  else
  {
    v38 = sub_1004A6D34();

    if (v38)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

unint64_t _s16IMAP2Persistence13RemoteMailboxV10SpecialUseO8rawValueAESgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1005AEC18;
  v6._object = a2;
  v4 = sub_1004A6AF4(v3, v6);

  if (v4 >= 7)
  {
    return 7;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1002DE0EC()
{
  result = qword_1005D79E0;
  if (!qword_1005D79E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RemoteMailbox.SpecialUse, &type metadata for RemoteMailbox.SpecialUse, v0, v1);
    atomic_store(result, &qword_1005D79E0);
  }

  return result;
}

unint64_t sub_1002DE144()
{
  result = qword_1005D79E8;
  if (!qword_1005D79E8)
  {
    v3 = sub_10000DEFC(&qword_1005D79F0, &qword_1004F2738);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v3, v0, v1);
    atomic_store(result, &qword_1005D79E8);
  }

  return result;
}

uint64_t ConnectionStatus.Error.details.setter(uint64_t a1, __n128 a2)
{
  v4 = v2 + *(type metadata accessor for ConnectionStatus.Error(0) + 20);

  return sub_1002E0568(a1, v4);
}

uint64_t property wrapper backing initializer of ConnectionStatus.Error.backedOffUntil(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005D0F20, &qword_1004E9390);
  __chkstk_darwin(v2 - 8);
  v4 = &v7 - v3;
  sub_10000E268(a1, &v7 - v3, &qword_1005D0F20, &qword_1004E9390);
  v5 = OptionalMillisecondDate.init(wrappedValue:)(v4);
  sub_100025F40(a1, &qword_1005D0F20, &qword_1004E9390);
  return v5;
}

uint64_t ConnectionStatus.Error.backedOffUntil.getter@<X0>(uint64_t a1@<X8>)
{
  if (*(v2 + *(type metadata accessor for ConnectionStatus.Error(0) + 24) + 8))
  {
    v4 = 1;
  }

  else
  {
    sub_1004A4454();
    v4 = 0;
  }

  v5 = sub_1004A44E4();
  v6 = *(*(v5 - 8) + 56);

  return v6(a1, v4, 1, v5);
}

uint64_t ConnectionStatus.Error.backedOffUntil.setter(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005D0F20, &qword_1004E9390);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - v3;
  sub_10000E268(a1, &v6 - v3, &qword_1005D0F20, &qword_1004E9390);
  type metadata accessor for ConnectionStatus.Error(0);
  OptionalMillisecondDate.wrappedValue.setter(v4);
  return sub_100025F40(a1, &qword_1005D0F20, &qword_1004E9390);
}

void (*ConnectionStatus.Error.backedOffUntil.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(sub_10000C9C0(&qword_1005D0F20, &qword_1004E9390) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(a1 + 8) = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    *(a1 + 8) = malloc(v3);
    v4 = malloc(v3);
  }

  v5 = v4;
  *(a1 + 16) = v4;
  v6 = *(type metadata accessor for ConnectionStatus.Error(0) + 24);
  *(a1 + 24) = v6;
  if (*(v1 + v6 + 8))
  {
    v7 = 1;
  }

  else
  {
    sub_1004A4454();
    v7 = 0;
  }

  v8 = sub_1004A44E4();
  (*(*(v8 - 8) + 56))(v5, v7, 1, v8);
  return sub_1002DE5FC;
}

void sub_1002DE5FC(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    sub_10000E268(*(a1 + 16), v2, &qword_1005D0F20, &qword_1004E9390);
    OptionalMillisecondDate.wrappedValue.setter(v2);
    sub_100025F40(v3, &qword_1005D0F20, &qword_1004E9390);
  }

  else
  {
    OptionalMillisecondDate.wrappedValue.setter(*(a1 + 16));
  }

  free(v3);

  free(v2);
}

uint64_t ConnectionStatus.Error.init(kind:details:backedOffUntil:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v25 = a2;
  v24 = a1;
  v6 = sub_10000C9C0(&qword_1005D0F20, &qword_1004E9390);
  __chkstk_darwin(v6 - 8);
  v8 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v23[-v10];
  v12 = type metadata accessor for ConnectionStatus.Error(0);
  v13 = *(v12 + 20);
  v14 = type metadata accessor for ConnectionStatus.Error.Details(0);
  (*(*(v14 - 8) + 56))(&a4[v13], 1, 1, v14);
  v15 = &a4[*(v12 + 24)];
  v16 = sub_1004A44E4();
  (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
  sub_10000E268(v11, v8, &qword_1005D0F20, &qword_1004E9390);
  v17 = OptionalMillisecondDate.init(wrappedValue:)(v8);
  v19 = v18;
  sub_100025F40(v11, &qword_1005D0F20, &qword_1004E9390);
  *v15 = v17;
  v15[8] = v19 & 1;
  *a4 = v24;
  v20 = &a4[v13];
  v21 = v25;
  sub_1002E05F8(v25, v20);
  sub_10000E268(a3, v11, &qword_1005D0F20, &qword_1004E9390);
  sub_10000E268(v11, v8, &qword_1005D0F20, &qword_1004E9390);
  OptionalMillisecondDate.wrappedValue.setter(v8);
  sub_100025F40(a3, &qword_1005D0F20, &qword_1004E9390);
  sub_100025F40(v21, &qword_1005D55B8, &unk_1004F2790);
  return sub_100025F40(v11, &qword_1005D0F20, &qword_1004E9390);
}

uint64_t ConnectionStatus.Error.debugDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ConnectionStatus.Error.Details(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v61 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v60 = &v58 - v6;
  v7 = sub_1004A44E4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v59 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v58 - v11;
  v13 = sub_10000C9C0(&qword_1005D79F8, &qword_1004F27A0);
  __chkstk_darwin(v13);
  v15 = &v58 - v14;
  v16 = sub_10000C9C0(&qword_1005D0F20, &qword_1004E9390);
  __chkstk_darwin(v16 - 8);
  v18 = &v58 - v17;
  v19 = type metadata accessor for ConnectionStatus.Error(0);
  if (v1[*(v19 + 24) + 8])
  {
    (*(v8 + 56))(v18, 1, 1, v7);
  }

  else
  {
    sub_1004A4454();
    (*(v8 + 56))(v18, 0, 1, v7);
  }

  v20 = *(v13 + 48);
  sub_10000E268(&v1[*(v19 + 20)], v15, &qword_1005D55B8, &unk_1004F2790);
  sub_1002E0A60(v18, &v15[v20]);
  v21 = (*(v3 + 48))(v15, 1, v2);
  v22 = (*(v8 + 48))(&v15[v20], 1, v7);
  if (v21 != 1)
  {
    if (v22 != 1)
    {
      v27 = v61;
      sub_1002E110C(v15, v61, type metadata accessor for ConnectionStatus.Error.Details);
      v44 = &v15[v20];
      v45 = v59;
      (*(v8 + 32))(v59, v44, v7);
      v62 = 0;
      v63 = 0xE000000000000000;
      sub_1004A6724(31);
      v46 = 0x80000001004AB580;
      v47 = 0xD000000000000014;
      v48 = *v1;
      v49 = 0xE700000000000000;
      v50 = 0x6B726F7774656ELL;
      if (v48 != 4)
      {
        v50 = 0x7245726573726170;
        v49 = 0xEB00000000726F72;
      }

      if (v48 != 3)
      {
        v47 = v50;
        v46 = v49;
      }

      v51 = 0xD000000000000011;
      v52 = 0x80000001004AE120;
      v53 = 0xD000000000000011;
      v54 = 0x80000001004AE100;
      if (v48 == 1)
      {
        v53 = 0x7245726576726573;
        v54 = 0xEB00000000726F72;
      }

      if (*v1)
      {
        v51 = v53;
        v52 = v54;
      }

      if (*v1 <= 2u)
      {
        v55._countAndFlagsBits = v51;
      }

      else
      {
        v55._countAndFlagsBits = v47;
      }

      if (*v1 <= 2u)
      {
        v56 = v52;
      }

      else
      {
        v56 = v46;
      }

      v55._object = v56;
      sub_1004A5994(v55);

      v67._countAndFlagsBits = 0x6C69617465647B20;
      v67._object = 0xEB00000000203A73;
      sub_1004A5994(v67);
      sub_1004A6934();
      v68._countAndFlagsBits = 0x64656B636162202CLL;
      v68._object = 0xED0000203A66664FLL;
      sub_1004A5994(v68);
      sub_1002E0AD0();
      v69._countAndFlagsBits = sub_1004A6CE4();
      sub_1004A5994(v69);

      v70._countAndFlagsBits = 125;
      v70._object = 0xE100000000000000;
      sub_1004A5994(v70);
      v43 = v62;
      (*(v8 + 8))(v45, v7);
      goto LABEL_61;
    }

    v27 = v60;
    sub_1002E110C(v15, v60, type metadata accessor for ConnectionStatus.Error.Details);
    v62 = 0;
    v63 = 0xE000000000000000;
    sub_1004A6724(16);
    v28 = *v1;
    if (v28 > 2)
    {
      v29 = 0xEB00000000726F72;
      if (v28 == 3)
      {
        v29 = 0x80000001004AB580;
        v30._countAndFlagsBits = 0xD000000000000014;
      }

      else if (v28 == 4)
      {
        v29 = 0xE700000000000000;
        v30._countAndFlagsBits = 0x6B726F7774656ELL;
      }

      else
      {
        v30._countAndFlagsBits = 0x7245726573726170;
      }

      goto LABEL_60;
    }

    v29 = 0xEB00000000726F72;
    if (*v1)
    {
      v30._countAndFlagsBits = 0x7245726576726573;
      if (v28 == 1)
      {
LABEL_60:
        v30._object = v29;
        sub_1004A5994(v30);

        v71._countAndFlagsBits = 0x6C69617465647B20;
        v71._object = 0xEB00000000203A73;
        sub_1004A5994(v71);
        sub_1004A6934();
        v72._countAndFlagsBits = 125;
        v72._object = 0xE100000000000000;
        sub_1004A5994(v72);
        v43 = v62;
LABEL_61:
        sub_1002E0BB0(v27, type metadata accessor for ConnectionStatus.Error.Details);
        return v43;
      }

      v30._countAndFlagsBits = 0xD000000000000011;
      v31 = "serverUnavailable";
    }

    else
    {
      v30._countAndFlagsBits = 0xD000000000000011;
      v31 = "serverUnreachable";
    }

    v29 = ((v31 - 32) | 0x8000000000000000);
    goto LABEL_60;
  }

  if (v22 == 1)
  {
    v62 = 0;
    v63 = 0xE000000000000000;
    v23 = *v1;
    if (v23 > 2)
    {
      v24 = 0xEB00000000726F72;
      if (v23 == 3)
      {
        v24 = 0x80000001004AB580;
        v25._countAndFlagsBits = 0xD000000000000014;
      }

      else if (v23 == 4)
      {
        v24 = 0xE700000000000000;
        v25._countAndFlagsBits = 0x6B726F7774656ELL;
      }

      else
      {
        v25._countAndFlagsBits = 0x7245726573726170;
      }

      goto LABEL_58;
    }

    v24 = 0xEB00000000726F72;
    if (*v1)
    {
      v25._countAndFlagsBits = 0x7245726576726573;
      if (v23 == 1)
      {
LABEL_58:
        v25._object = v24;
        sub_1004A5994(v25);

        return v62;
      }

      v25._countAndFlagsBits = 0xD000000000000011;
      v26 = "serverUnavailable";
    }

    else
    {
      v25._countAndFlagsBits = 0xD000000000000011;
      v26 = "serverUnreachable";
    }

    v24 = ((v26 - 32) | 0x8000000000000000);
    goto LABEL_58;
  }

  (*(v8 + 32))(v12, &v15[v20], v7);
  v62 = 0;
  v63 = 0xE000000000000000;
  sub_1004A6724(18);
  v32 = 0x80000001004AB580;
  v33 = 0xD000000000000014;
  v34 = *v1;
  v35 = 0xE700000000000000;
  v36 = 0x6B726F7774656ELL;
  if (v34 != 4)
  {
    v36 = 0x7245726573726170;
    v35 = 0xEB00000000726F72;
  }

  if (v34 != 3)
  {
    v33 = v36;
    v32 = v35;
  }

  v37 = 0xD000000000000011;
  v38 = 0x80000001004AE120;
  v39 = 0xD000000000000011;
  v40 = 0x80000001004AE100;
  if (v34 == 1)
  {
    v39 = 0x7245726576726573;
    v40 = 0xEB00000000726F72;
  }

  if (*v1)
  {
    v37 = v39;
    v38 = v40;
  }

  if (*v1 <= 2u)
  {
    v41._countAndFlagsBits = v37;
  }

  else
  {
    v41._countAndFlagsBits = v33;
  }

  if (*v1 <= 2u)
  {
    v42 = v38;
  }

  else
  {
    v42 = v32;
  }

  v41._object = v42;
  sub_1004A5994(v41);

  v64._countAndFlagsBits = 0x64656B6361627B20;
  v64._object = 0xED0000203A66664FLL;
  sub_1004A5994(v64);
  sub_1002E0AD0();
  v65._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v65);

  v66._countAndFlagsBits = 125;
  v66._object = 0xE100000000000000;
  sub_1004A5994(v66);
  v43 = v62;
  (*(v8 + 8))(v12, v7);
  return v43;
}

unint64_t ConnectionStatus.Error.Kind.description.getter(unsigned __int8 a1)
{
  v1 = 0x7245726576726573;
  v2 = 0xD000000000000014;
  v3 = 0x6B726F7774656ELL;
  if (a1 != 4)
  {
    v3 = 0x7245726573726170;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  if (a1 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (!a1)
  {
    v1 = 0xD000000000000011;
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

unint64_t ConnectionStatus.Error.Details.debugDescription.getter()
{
  v1 = v0;
  v2 = sub_1004A5214();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v25[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for ConnectionStatus.Error.Details(0);
  __chkstk_darwin(v6);
  v8 = &v25[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1002E0B48(v1, v8, type metadata accessor for ConnectionStatus.Error.Details);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    v13 = *v8;
    v14 = v8[1];
    v27 = 0;
    v28 = 0xE000000000000000;
    if (EnumCaseMultiPayload == 2)
    {
      sub_1004A6724(25);

      v15 = 0x80000001004AE160;
      v16 = 0xD000000000000015;
    }

    else
    {
      sub_1004A6724(22);

      v15 = 0x80000001004AE140;
      v16 = 0xD000000000000012;
    }

    v27 = v16;
    v28 = v15;
    v33._countAndFlagsBits = v13;
    v33._object = v14;
    sub_1004A5994(v33);
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload)
  {
    v17 = *v8;
    v18 = v8[1];
    v19 = v8[2];
    v20 = v8[3];
    v27 = 0;
    v28 = 0xE000000000000000;
    sub_1004A6724(45);

    v27 = 0xD00000000000001DLL;
    v28 = 0x80000001004AE180;
    v30._countAndFlagsBits = v17;
    v30._object = v18;
    sub_1004A5994(v30);

    v31._countAndFlagsBits = 0x3A74786574202C27;
    v31._object = 0xEA00000000002720;
    sub_1004A5994(v31);
    v32._countAndFlagsBits = v19;
    v32._object = v20;
    sub_1004A5994(v32);
LABEL_10:

    v12._countAndFlagsBits = 10535;
    goto LABEL_11;
  }

  v10 = (*(v3 + 88))(v8, v2);
  if (v10 == enum case for NWError.posix(_:))
  {
    (*(v3 + 96))(v8, v2);
    v11 = *v8;
    v27 = 0;
    v28 = 0xE000000000000000;
    sub_1004A6724(24);
    v29._countAndFlagsBits = 0xD000000000000014;
    v29._object = 0x80000001004AE1E0;
    sub_1004A5994(v29);
    v26 = v11;
    sub_1004A6934();
    v12._countAndFlagsBits = 10537;
LABEL_11:
    v12._object = 0xE200000000000000;
    sub_1004A5994(v12);
    return v27;
  }

  if (v10 == enum case for NWError.dns(_:))
  {
    (*(v3 + 96))(v8, v2);
    v22 = *v8;
    v27 = 0;
    v28 = 0xE000000000000000;
    sub_1004A6724(22);

    v23 = "networkError(.dns(";
LABEL_16:
    v27 = 0xD000000000000012;
    v28 = (v23 - 32) | 0x8000000000000000;
    v26 = v22;
    v34._countAndFlagsBits = sub_1004A6CE4();
    sub_1004A5994(v34);

    v12._countAndFlagsBits = 10537;
    goto LABEL_11;
  }

  if (v10 == enum case for NWError.tls(_:))
  {
    (*(v3 + 96))(v8, v2);
    v22 = *v8;
    v27 = 0;
    v28 = 0xE000000000000000;
    sub_1004A6724(22);

    v23 = "networkError(.tls(";
    goto LABEL_16;
  }

  (*(v3 + 32))(v5, v8, v2);
  v27 = 0;
  v28 = 0xE000000000000000;
  sub_1004A6724(16);
  v35._countAndFlagsBits = 0x456B726F7774656ELL;
  v35._object = 0xED000028726F7272;
  sub_1004A5994(v35);
  sub_1004A6934();
  v36._countAndFlagsBits = 41;
  v36._object = 0xE100000000000000;
  sub_1004A5994(v36);
  v24 = v27;
  (*(v3 + 8))(v5, v2);
  return v24;
}

uint64_t ConnectionStatus.mailbox.getter()
{
  v1 = type metadata accessor for ConnectionStatus(0);
  __chkstk_darwin(v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002E0B48(v0, v3, type metadata accessor for ConnectionStatus);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload < 2)
  {
    return *v3;
  }

  if (EnumCaseMultiPayload - 3 >= 2)
  {
    sub_1002E0BB0(v3, type metadata accessor for ConnectionStatus);
  }

  return 0;
}

uint64_t ConnectionStatus.Error.shouldPresentToUserForIMAP.getter()
{
  v1 = sub_1004A5214();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v7 = &v21 - v6;
  v8 = sub_10000C9C0(&qword_1005D55B8, &unk_1004F2790);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v21 - v12;
  v14 = type metadata accessor for ConnectionStatus.Error(0);
  sub_10000E268(v0 + *(v14 + 20), v13, &qword_1005D55B8, &unk_1004F2790);
  v15 = type metadata accessor for ConnectionStatus.Error.Details(0);
  v16 = 1;
  if ((*(*(v15 - 8) + 48))(v13, 1, v15) != 1)
  {
    sub_10000E268(v13, v10, &qword_1005D55B8, &unk_1004F2790);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1002E0BB0(v10, type metadata accessor for ConnectionStatus.Error.Details);
    }

    else
    {
      (*(v2 + 32))(v7, v10, v1);
      if ((*(v2 + 88))(v7, v1) == enum case for NWError.posix(_:))
      {
        (*(v2 + 16))(v4, v7, v1);
        (*(v2 + 96))(v4, v1);
        v17 = *v4 - 52;
        v18 = v17 > 0x2C;
        v19 = 0xFFFFFFFFEF8uLL >> v17;
        if (v18)
        {
          v16 = 1;
        }

        else
        {
          v16 = v19;
        }
      }

      (*(v2 + 8))(v7, v1);
    }
  }

  sub_100025F40(v13, &qword_1005D55B8, &unk_1004F2790);
  return v16 & 1;
}

uint64_t NWError.shouldPresentToUserForIMAP.getter()
{
  v1 = v0;
  v2 = sub_1004A5214();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __chkstk_darwin(v6);
  v9 = &v16 - v8;
  v10 = *(v3 + 16);
  v10(&v16 - v8, v1, v2, v7);
  if ((*(v3 + 88))(v9, v2) == enum case for NWError.posix(_:))
  {
    (v10)(v5, v9, v2);
    (*(v3 + 96))(v5, v2);
    v11 = *v5 - 52;
    v12 = v11 > 0x2C;
    v13 = 0xFFFFFFFFEF8uLL >> v11;
    if (v12)
    {
      v14 = 1;
    }

    else
    {
      v14 = v13;
    }
  }

  else
  {
    v14 = 1;
  }

  (*(v3 + 8))(v9, v2);
  return v14 & 1;
}

uint64_t _s16IMAP2Persistence16ConnectionStatusO5ErrorV7DetailsO21__derived_enum_equalsySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004A5214();
  v46 = *(v4 - 8);
  v47 = v4;
  __chkstk_darwin(v4);
  v45 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ConnectionStatus.Error.Details(0);
  __chkstk_darwin(v6);
  v8 = (&v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v11 = (&v44 - v10);
  __chkstk_darwin(v12);
  v14 = (&v44 - v13);
  __chkstk_darwin(v15);
  v17 = &v44 - v16;
  v18 = sub_10000C9C0(&qword_1005D7C30, &unk_1004F2980);
  __chkstk_darwin(v18 - 8);
  v20 = &v44 - v19;
  v22 = (&v44 + *(v21 + 56) - v19);
  sub_1002E0B48(a1, &v44 - v19, type metadata accessor for ConnectionStatus.Error.Details);
  sub_1002E0B48(a2, v22, type metadata accessor for ConnectionStatus.Error.Details);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1002E0B48(v20, v11, type metadata accessor for ConnectionStatus.Error.Details);
      v25 = *v11;
      v24 = v11[1];
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_22;
      }
    }

    else
    {
      sub_1002E0B48(v20, v8, type metadata accessor for ConnectionStatus.Error.Details);
      v25 = *v8;
      v24 = v8[1];
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_22;
      }
    }

    if (v25 != *v22 || v24 != v22[1])
    {
LABEL_31:
      v42 = sub_1004A6D34();

      if ((v42 & 1) == 0)
      {
        goto LABEL_32;
      }

LABEL_34:
      sub_1002E0BB0(v20, type metadata accessor for ConnectionStatus.Error.Details);
      v35 = 1;
      return v35 & 1;
    }

LABEL_33:

    goto LABEL_34;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_1002E0B48(v20, v17, type metadata accessor for ConnectionStatus.Error.Details);
    if (!swift_getEnumCaseMultiPayload())
    {
      v37 = v45;
      v36 = v46;
      v38 = v22;
      v39 = v47;
      (*(v46 + 32))(v45, v38, v47);
      v35 = sub_1004A5204();
      v40 = *(v36 + 8);
      v40(v37, v39);
      v40(v17, v39);
      sub_1002E0BB0(v20, type metadata accessor for ConnectionStatus.Error.Details);
      return v35 & 1;
    }

    (*(v46 + 8))(v17, v47);
    goto LABEL_23;
  }

  sub_1002E0B48(v20, v14, type metadata accessor for ConnectionStatus.Error.Details);
  v27 = *v14;
  v26 = v14[1];
  v29 = v14[2];
  v28 = v14[3];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v31 = v22[2];
    v30 = v22[3];
    if (v27 == *v22 && v26 == v22[1])
    {
    }

    else
    {
      v33 = sub_1004A6D34();

      if ((v33 & 1) == 0)
      {

LABEL_32:
        sub_1002E0BB0(v20, type metadata accessor for ConnectionStatus.Error.Details);
        goto LABEL_24;
      }
    }

    if (v29 != v31 || v28 != v30)
    {
      goto LABEL_31;
    }

    goto LABEL_33;
  }

LABEL_22:

LABEL_23:
  sub_100025F40(v20, &qword_1005D7C30, &unk_1004F2980);
LABEL_24:
  v35 = 0;
  return v35 & 1;
}

BOOL _s16IMAP2Persistence16ConnectionStatusO5ErrorV23__derived_struct_equalsySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for ConnectionStatus.Error.Details(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C9C0(&qword_1005D55B8, &unk_1004F2790);
  __chkstk_darwin(v8 - 8);
  v10 = &v27 - v9;
  v11 = sub_10000C9C0(&qword_1005D79B8, &unk_1004F2660);
  __chkstk_darwin(v11);
  v13 = &v27 - v12;
  if (*a1 != *a2)
  {
    return 0;
  }

  v14 = type metadata accessor for ConnectionStatus.Error(0);
  v15 = a1;
  v16 = a2;
  v27 = v14;
  v28 = v15;
  v17 = *(v14 + 20);
  v18 = *(v11 + 48);
  sub_10000E268(&v15[v17], v13, &qword_1005D55B8, &unk_1004F2790);
  sub_10000E268(&v16[v17], &v13[v18], &qword_1005D55B8, &unk_1004F2790);
  v19 = *(v5 + 48);
  if (v19(v13, 1, v4) == 1)
  {
    if (v19(&v13[v18], 1, v4) == 1)
    {
      sub_100025F40(v13, &qword_1005D55B8, &unk_1004F2790);
      goto LABEL_10;
    }

LABEL_7:
    sub_100025F40(v13, &qword_1005D79B8, &unk_1004F2660);
    return 0;
  }

  sub_10000E268(v13, v10, &qword_1005D55B8, &unk_1004F2790);
  if (v19(&v13[v18], 1, v4) == 1)
  {
    sub_1002E0BB0(v10, type metadata accessor for ConnectionStatus.Error.Details);
    goto LABEL_7;
  }

  sub_1002E110C(&v13[v18], v7, type metadata accessor for ConnectionStatus.Error.Details);
  v21 = _s16IMAP2Persistence16ConnectionStatusO5ErrorV7DetailsO21__derived_enum_equalsySbAG_AGtFZ_0(v10, v7);
  sub_1002E0BB0(v7, type metadata accessor for ConnectionStatus.Error.Details);
  sub_1002E0BB0(v10, type metadata accessor for ConnectionStatus.Error.Details);
  sub_100025F40(v13, &qword_1005D55B8, &unk_1004F2790);
  if ((v21 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  v22 = *(v27 + 24);
  v23 = &v28[v22];
  v24 = v28[v22 + 8];
  v25 = &v16[v22];
  v26 = v16[v22 + 8];
  if ((v24 & 1) == 0)
  {
    if (*v23 != *v25)
    {
      v26 = 1;
    }

    return (v26 & 1) == 0;
  }

  return (v26 & 1) != 0;
}

uint64_t sub_1002E0568(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D55B8, &unk_1004F2790);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002E05F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D55B8, &unk_1004F2790);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

BOOL _s16IMAP2Persistence16ConnectionStatusO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConnectionStatus.Error(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ConnectionStatus(0);
  __chkstk_darwin(v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v27 - v11;
  __chkstk_darwin(v13);
  v15 = &v27 - v14;
  v16 = sub_10000C9C0(&qword_1005D7C28, &qword_1004F2978);
  __chkstk_darwin(v16 - 8);
  v18 = &v27 - v17;
  v20 = &v27 + *(v19 + 56) - v17;
  sub_1002E0B48(a1, &v27 - v17, type metadata accessor for ConnectionStatus);
  sub_1002E0B48(a2, v20, type metadata accessor for ConnectionStatus);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1002E0B48(v18, v12, type metadata accessor for ConnectionStatus);
      v22 = *v12;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v23 = *(v12 + 2);
LABEL_15:
        if ((v23 | (v23 << 32)) == (*(v20 + 2) | (*(v20 + 2) << 32)))
        {
          v25 = sub_1000FFC98(v22, *v20);

          if (v25)
          {
LABEL_17:
            sub_1002E0BB0(v18, type metadata accessor for ConnectionStatus);
            return 1;
          }
        }

        else
        {
        }

        sub_1002E0BB0(v18, type metadata accessor for ConnectionStatus);
        return 0;
      }
    }

    else
    {
      sub_1002E0B48(v18, v15, type metadata accessor for ConnectionStatus);
      v22 = *v15;
      if (!swift_getEnumCaseMultiPayload())
      {
        v23 = *(v15 + 2);
        goto LABEL_15;
      }
    }

LABEL_20:
    sub_100025F40(v18, &qword_1005D7C28, &qword_1004F2978);
    return 0;
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_20;
      }
    }

    else if (swift_getEnumCaseMultiPayload() != 4)
    {
      goto LABEL_20;
    }

    goto LABEL_17;
  }

  sub_1002E0B48(v18, v9, type metadata accessor for ConnectionStatus);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1002E0BB0(v9, type metadata accessor for ConnectionStatus.Error);
    goto LABEL_20;
  }

  sub_1002E110C(v20, v6, type metadata accessor for ConnectionStatus.Error);
  v24 = _s16IMAP2Persistence16ConnectionStatusO5ErrorV23__derived_struct_equalsySbAE_AEtFZ_0(v9, v6);
  sub_1002E0BB0(v6, type metadata accessor for ConnectionStatus.Error);
  sub_1002E0BB0(v9, type metadata accessor for ConnectionStatus.Error);
  sub_1002E0BB0(v18, type metadata accessor for ConnectionStatus);
  return v24;
}

uint64_t sub_1002E0A60(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D0F20, &qword_1004E9390);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1002E0AD0()
{
  result = qword_1005D7A00;
  if (!qword_1005D7A00)
  {
    v3 = sub_1004A44E4();
    result = swift_getWitnessTable(&protocol conformance descriptor for Date, v3, v0, v1);
    atomic_store(result, &qword_1005D7A00);
  }

  return result;
}

uint64_t sub_1002E0B48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002E0BB0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1002E0C14()
{
  result = qword_1005D7A08;
  if (!qword_1005D7A08)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ConnectionStatus.Error.Kind, &type metadata for ConnectionStatus.Error.Kind, v0, v1);
    atomic_store(result, &qword_1005D7A08);
  }

  return result;
}

unint64_t sub_1002E0C6C()
{
  result = qword_1005D7A10;
  if (!qword_1005D7A10)
  {
    v3 = sub_10000DEFC(&qword_1005D7A18, &qword_1004F2810);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v3, v0, v1);
    atomic_store(result, &qword_1005D7A10);
  }

  return result;
}

uint64_t sub_1002E0CD0(uint64_t a1)
{
  result = type metadata accessor for ConnectionStatus.Error(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1002E0D50(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 250)
  {
    v4 = *a1;
    if (v4 >= 6)
    {
      return v4 - 5;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_10000C9C0(&qword_1005D55B8, &unk_1004F2790);
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_1002E0E18(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 250)
  {
    *result = a2 + 5;
  }

  else
  {
    v7 = sub_10000C9C0(&qword_1005D55B8, &unk_1004F2790);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1002E0EC4(uint64_t a1)
{
  sub_1002E0F48(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1002E0F48(uint64_t a1)
{
  if (!qword_1005D7B30)
  {
    type metadata accessor for ConnectionStatus.Error.Details(255);
    v1 = sub_1004A6374();
    if (!v2)
    {
      atomic_store(v1, &qword_1005D7B30);
    }
  }
}

void sub_1002E0FB0(uint64_t a1)
{
  sub_1004A5214();
  if (v1 <= 0x3F)
  {
    sub_1002E104C();
    if (v2 <= 0x3F)
    {
      sub_1002E10AC();
      if (v3 <= 0x3F)
      {
        sub_1002E10DC();
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_1002E104C()
{
  if (!qword_1005D7BE8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1005D7BE8);
    }
  }
}

void *sub_1002E10AC()
{
  result = qword_1005D7BF0;
  if (!qword_1005D7BF0)
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &qword_1005D7BF0);
  }

  return result;
}

void *sub_1002E10DC()
{
  result = qword_1005D7BF8;
  if (!qword_1005D7BF8)
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &qword_1005D7BF8);
  }

  return result;
}

uint64_t sub_1002E110C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

Swift::Bool __swiftcall SyncRequest.includes(_:)(IMAP2Persistence::OpaqueMailboxID a1)
{
  if (v1)
  {
    return sub_10001284C(a1.rawValue._rawValue, a1.hashValue, v1);
  }

  else
  {
    return 1;
  }
}

BOOL static SyncRequest.Kind.__derived_enum_equals(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  switch(a1)
  {
    case 2u:
      return a2 == 2;
    case 3u:
      return a2 == 3;
    case 4u:
      return a2 == 4;
  }

  if (a2 - 2 < 3)
  {
    return 0;
  }

  return ((a2 ^ a1) & 1) == 0;
}

void SyncRequest.hash(into:)(__int128 *a1, char a2, uint64_t a3, char a4)
{
  v7 = a2 - 2;
  if ((a2 - 2) >= 3u)
  {
    sub_1004A6EB4(3uLL);
    v7 = a2 & 1;
  }

  sub_1004A6EB4(v7);
  if (a3)
  {
    sub_1004A6EC4(1u);
    sub_1002C36A0(a1, a3);
  }

  else
  {
    sub_1004A6EC4(0);
  }

  sub_1004A6EC4(a4 & 1);
}

Swift::Int SyncRequest.hashValue.getter(char a1, uint64_t a2, char a3)
{
  sub_1004A6E94();
  SyncRequest.hash(into:)(v7, a1, a2, a3);
  return sub_1004A6F14();
}

Swift::Int sub_1002E12E4()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *v0;
  sub_1004A6E94();
  SyncRequest.hash(into:)(v5, v3, v1, v2);
  return sub_1004A6F14();
}

Swift::Int sub_1002E1354(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *v1;
  sub_1004A6E94();
  SyncRequest.hash(into:)(v6, v4, v2, v3);
  return sub_1004A6F14();
}

IMAP2Persistence::SyncRequest::ID __swiftcall SyncRequest.ID.makeNext()()
{
  if ((v0 + 1) > 1)
  {
    return (v0 + 1);
  }

  else
  {
    return 1;
  }
}

void SyncRequest.Kind.hash(into:)(uint64_t a1, char a2)
{
  v2 = a2 - 2;
  if ((a2 - 2) >= 3u)
  {
    sub_1004A6EB4(3uLL);
    v2 = a2 & 1;
  }

  sub_1004A6EB4(v2);
}

Swift::Int SyncRequest.Kind.hashValue.getter(char a1)
{
  sub_1004A6E94();
  v2 = a1 - 2;
  if ((a1 - 2) >= 3u)
  {
    sub_1004A6EB4(3uLL);
    v2 = a1 & 1;
  }

  sub_1004A6EB4(v2);
  return sub_1004A6F14();
}

Swift::Int sub_1002E14BC()
{
  v1 = *v0;
  sub_1004A6E94();
  v2 = v1 - 2;
  if ((v1 - 2) >= 3)
  {
    sub_1004A6EB4(3uLL);
    v2 = v1 & 1;
  }

  sub_1004A6EB4(v2);
  return sub_1004A6F14();
}

void sub_1002E1520()
{
  v1 = *v0;
  v2 = v1 - 2;
  if ((v1 - 2) >= 3)
  {
    sub_1004A6EB4(3uLL);
    v2 = v1 & 1;
  }

  sub_1004A6EB4(v2);
}

Swift::Int sub_1002E1568(uint64_t a1)
{
  v2 = *v1;
  sub_1004A6E94();
  v3 = v2 - 2;
  if ((v2 - 2) >= 3)
  {
    sub_1004A6EB4(3uLL);
    v3 = v2 & 1;
  }

  sub_1004A6EB4(v3);
  return sub_1004A6F14();
}

BOOL sub_1002E15D8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch(v2)
  {
    case 2:
      return v3 == 2;
    case 3:
      return v3 == 3;
    case 4:
      return v3 == 4;
  }

  if ((v3 - 2) < 3)
  {
    return 0;
  }

  return ((v3 ^ v2) & 1) == 0;
}

uint64_t SyncRequest.Kind.description.getter(char a1)
{
  switch(a1)
  {
    case 2:
      return 0x6369646F69726570;
    case 3:
      return 1752397168;
    case 4:
      return 0x74696E4972657375;
  }

  BYTE8(v3) = 0;
  sub_1004A6724(34);
  v4._object = 0x80000001004AE200;
  v4._countAndFlagsBits = 0xD00000000000001FLL;
  sub_1004A5994(v4);
  *&v3 = a1 & 1;
  sub_1004A6934();
  v5._countAndFlagsBits = 41;
  v5._object = 0xE100000000000000;
  sub_1004A5994(v5);
  return *(&v3 + 1);
}

void Set<>.makeNonEmpty()(uint64_t a1)
{
  if (*(a1 + 16))
  {
  }

  else
  {
    sub_1002E187C(&off_1005AED58);
  }
}

void Set<>.formNonEmpty()()
{
  v1 = *v0;
  if (!*(*v0 + 16))
  {
    v2 = sub_1002E187C(&off_1005AED80);

    v1 = v2;
  }

  *v0 = v1;
}

uint64_t _s16IMAP2Persistence11SyncRequestV23__derived_struct_equalsySbAC_ACtFZ_0(unsigned __int8 a1, Swift::Int a2, int a3, unsigned __int8 a4, uint64_t a5, int a6)
{
  switch(a1)
  {
    case 2u:
      if (a4 != 2)
      {
        return 0;
      }

      break;
    case 3u:
      if (a4 != 3)
      {
        return 0;
      }

      break;
    case 4u:
      if (a4 != 4)
      {
        return 0;
      }

      break;
    default:
      if (a4 - 2 < 3 || ((a4 ^ a1) & 1) != 0)
      {
        return 0;
      }

      break;
  }

  if (a2)
  {
    if (!a5)
    {
      return 0;
    }

    v6 = a6;
    v7 = a3;
    v8 = sub_1002BF750(a2, a5);
    a3 = v7;
    a6 = v6;
    if ((v8 & 1) == 0)
    {
      return 0;
    }

    return (a3 ^ a6 ^ 1) & 1;
  }

  if (!a5)
  {
    return (a3 ^ a6 ^ 1) & 1;
  }

  return 0;
}

Swift::Int sub_1002E187C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000C9C0(&qword_1005CEE98, &unk_1004F2C50);
    v3 = sub_1004A66B4();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 4 * v4);
      sub_1004A6E94();
      sub_1004A6EE4(v10);
      result = sub_1004A6F14();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + 4 * v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + 4 * v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return _swiftEmptySetSingleton;
}

unint64_t sub_1002E19BC()
{
  result = qword_1005D7C38;
  if (!qword_1005D7C38)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SyncRequest, &type metadata for SyncRequest, v0, v1);
    atomic_store(result, &qword_1005D7C38);
  }

  return result;
}

unint64_t sub_1002E1A14()
{
  result = qword_1005D7C40;
  if (!qword_1005D7C40)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SyncRequest.ID, &type metadata for SyncRequest.ID, v0, v1);
    atomic_store(result, &qword_1005D7C40);
  }

  return result;
}

unint64_t sub_1002E1A6C()
{
  result = qword_1005D7C48;
  if (!qword_1005D7C48)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SyncRequest.Kind.BackFillPurpose, &type metadata for SyncRequest.Kind.BackFillPurpose, v0, v1);
    atomic_store(result, &qword_1005D7C48);
  }

  return result;
}

unint64_t sub_1002E1AC4()
{
  result = qword_1005D7C50;
  if (!qword_1005D7C50)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SyncRequest.Kind, &type metadata for SyncRequest.Kind, v0, v1);
    atomic_store(result, &qword_1005D7C50);
  }

  return result;
}

unint64_t sub_1002E1B1C()
{
  result = qword_1005D7C58[0];
  if (!qword_1005D7C58[0])
  {
    v3 = sub_10000DEFC(&qword_1005D0E38, &qword_1004D5E28);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v3, v0, v1);
    atomic_store(result, qword_1005D7C58);
  }

  return result;
}

uint64_t sub_1002E1B80(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
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

uint64_t sub_1002E1BDC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SyncRequest.Kind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_20;
  }

  v2 = a2 + 4;
  if (a2 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 4;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 4;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 2)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 4)
  {
    return v8 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SyncRequest.Kind(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 4;
  if (a3 + 4 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFC)
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t UIDValidityWith.init(uidValidity:value:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _DWORD *a4@<X8>, uint64_t a5@<X3>)
{
  *a4 = a1;
  v8 = type metadata accessor for UIDValidityWith(0, a3, a3, a5);
  v9 = *(*(a3 - 8) + 32);
  v10 = a4 + *(v8 + 28);

  return v9(v10, a2, a3);
}

uint64_t static UIDValidityWith<A>.__derived_struct_equals(_:_:)(_DWORD *a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  type metadata accessor for UIDValidityWith(0, a3, a3, a4);
  return sub_1004A5724() & 1;
}

uint64_t sub_1002E1F80(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

BOOL static WindowOfInterestSize.__derived_enum_equals(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    return (a4 & 1) != 0;
  }

  if (a4)
  {
    return 0;
  }

  return a1 == a3;
}

void WindowOfInterestSize.hash(into:)(uint64_t a1, Swift::UInt a2, char a3)
{
  if (a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = a2;
    sub_1004A6EB4(1uLL);
  }

  sub_1004A6EB4(v3);
}

Swift::Int WindowOfInterestSize.hashValue.getter(Swift::UInt a1, char a2)
{
  sub_1004A6E94();
  v4 = 0;
  if ((a2 & 1) == 0)
  {
    sub_1004A6EB4(1uLL);
    v4 = a1;
  }

  sub_1004A6EB4(v4);
  return sub_1004A6F14();
}

Swift::Int sub_1002E20C8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1004A6E94();
  v3 = 0;
  if ((v2 & 1) == 0)
  {
    sub_1004A6EB4(1uLL);
    v3 = v1;
  }

  sub_1004A6EB4(v3);
  return sub_1004A6F14();
}

void sub_1002E2128()
{
  if (*(v0 + 8))
  {
    v1 = 0;
  }

  else
  {
    v1 = *v0;
    sub_1004A6EB4(1uLL);
  }

  sub_1004A6EB4(v1);
}

Swift::Int sub_1002E2170(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_1004A6E94();
  if (v3)
  {
    v2 = 0;
  }

  else
  {
    sub_1004A6EB4(1uLL);
  }

  sub_1004A6EB4(v2);
  return sub_1004A6F14();
}

NIOIMAPCore2::SequenceNumber __swiftcall WindowOfInterestSize.lowestSequenceNumber(messageCount:)(Swift::Int messageCount)
{
  if (v2)
  {
    LODWORD(messageCount) = 1;
    return messageCount;
  }

  v3 = messageCount - v1;
  if (__OFSUB__(messageCount, v1))
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
LABEL_9:
    __break(1u);
    return messageCount;
  }

  if ((v5 - 0x100000000) < 0xFFFFFFFF00000001)
  {
    LODWORD(messageCount) = 1;
  }

  else
  {
    LODWORD(messageCount) = v5;
  }

  return messageCount;
}

uint64_t WindowOfInterestSize.limit(serverNextUID:windowOfInterest:)(uint64_t a1, unint64_t a2, unsigned __int8 a3, uint64_t a4, unsigned __int8 a5)
{
  if (BYTE4(a1) & 1 | (a3 | a5) & 1)
  {
    return 0;
  }

  v6 = ~HIDWORD(a2) + a1;
  result = a4 - v6;
  if (__OFSUB__(a4, v6))
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1002E224C()
{
  result = qword_1005D7CE0;
  if (!qword_1005D7CE0)
  {
    result = swift_getWitnessTable("Y@\t", &type metadata for WindowOfInterestSize, v0, v1);
    atomic_store(result, &qword_1005D7CE0);
  }

  return result;
}

uint64_t sub_1002E22B0(char a1, char a2)
{
  if (a1)
  {
    v2 = 6581810;
  }

  else
  {
    v2 = 7631665;
  }

  if (a2)
  {
    v3 = 6581810;
  }

  else
  {
    v3 = 7631665;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1004A6D34();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1002E2324(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE800000000000000;
    v12 = 0xE800000000000000;
    v13 = 0x64656B72616D6E75;
    if (a1 != 2)
    {
      v13 = 0x74736978456E6F6ELL;
      v12 = 0xEB00000000746E65;
    }

    v14 = 0x64656B72616DLL;
    if (a1)
    {
      v11 = 0xE600000000000000;
    }

    else
    {
      v14 = 0x7463656C65536F6ELL;
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
    v3 = 0xE600000000000000;
    v4 = 0x65746F6D6572;
    v5 = 0x646C696843736168;
    v6 = 0xEB000000006E6572;
    if (a1 != 7)
    {
      v5 = 0x6968436F4E736168;
      v6 = 0xED00006E6572646CLL;
    }

    if (a1 != 6)
    {
      v4 = v5;
      v3 = v6;
    }

    v7 = 0x697265666E496F6ELL;
    v8 = 0xEB0000000073726FLL;
    if (a1 != 4)
    {
      v7 = 0x6269726373627573;
      v8 = 0xEA00000000006465;
    }

    if (a1 <= 5u)
    {
      v9 = v7;
    }

    else
    {
      v9 = v4;
    }

    if (v2 <= 5)
    {
      v10 = v8;
    }

    else
    {
      v10 = v3;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v17 = 0xE600000000000000;
        if (v9 != 0x64656B72616DLL)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v17 = 0xE800000000000000;
        if (v9 != 0x7463656C65536F6ELL)
        {
          goto LABEL_51;
        }
      }

      goto LABEL_49;
    }

    if (a2 == 2)
    {
      v17 = 0xE800000000000000;
      if (v9 != 0x64656B72616D6E75)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    }

    v15 = 0x74736978456E6F6ELL;
    v16 = 7630437;
    goto LABEL_44;
  }

  if (a2 <= 5u)
  {
    if (a2 != 4)
    {
      v17 = 0xEA00000000006465;
      if (v9 != 0x6269726373627573)
      {
LABEL_51:
        v18 = sub_1004A6D34();
        goto LABEL_52;
      }

      goto LABEL_49;
    }

    v15 = 0x697265666E496F6ELL;
    v16 = 7565935;
LABEL_44:
    v17 = v16 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
    if (v9 != v15)
    {
      goto LABEL_51;
    }

    goto LABEL_49;
  }

  if (a2 != 6)
  {
    if (a2 != 7)
    {
      v17 = 0xED00006E6572646CLL;
      if (v9 != 0x6968436F4E736168)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    }

    v15 = 0x646C696843736168;
    v16 = 7234930;
    goto LABEL_44;
  }

  v17 = 0xE600000000000000;
  if (v9 != 0x65746F6D6572)
  {
    goto LABEL_51;
  }

LABEL_49:
  if (v10 != v17)
  {
    goto LABEL_51;
  }

  v18 = 1;
LABEL_52:

  return v18 & 1;
}

uint64_t sub_1002E260C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE300000000000000;
  v4 = 0xE400000000000000;
  v5 = 1953391987;
  if (a1 != 5)
  {
    v5 = 0x6873617274;
    v4 = 0xE500000000000000;
  }

  v6 = 0xE700000000000000;
  v7 = 0x64656767616C66;
  if (a1 != 3)
  {
    v7 = 1802401130;
    v6 = 0xE400000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE700000000000000;
  v9 = 0x65766968637261;
  if (a1 != 1)
  {
    v9 = 0x737466617264;
    v8 = 0xE600000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 7105633;
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
        v12 = 0xE700000000000000;
        if (v10 != 0x65766968637261)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xE600000000000000;
        if (v10 != 0x737466617264)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE300000000000000;
      if (v10 != 7105633)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xE400000000000000;
      if (v10 != 1953391987)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x6873617274)
      {
LABEL_39:
        v13 = sub_1004A6D34();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xE700000000000000;
    if (v10 != 0x64656767616C66)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0xE400000000000000;
    if (v10 != 1802401130)
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

uint64_t static WindowOfInterestSizes.__derived_struct_equals(_:_:)(unint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (sub_1002DB0E8(a1, a4))
  {
    if (a3)
    {
      if (a6)
      {
        return 1;
      }
    }

    else if ((a6 & 1) == 0 && a2 == a5)
    {
      return 1;
    }
  }

  return 0;
}

void WindowOfInterestSizes.hash(into:)(uint64_t a1, uint64_t a2, Swift::UInt a3, char a4)
{
  sub_1002E2C80(a1, a2);
  if (a4)
  {
    a3 = 0;
  }

  else
  {
    sub_1004A6EB4(1uLL);
  }

  sub_1004A6EB4(a3);
}

Swift::Int WindowOfInterestSizes.hashValue.getter(uint64_t a1, Swift::UInt a2, char a3)
{
  sub_1004A6E94();
  sub_1002E2C80(v8, a1);
  v6 = 0;
  if ((a3 & 1) == 0)
  {
    sub_1004A6EB4(1uLL);
    v6 = a2;
  }

  sub_1004A6EB4(v6);
  return sub_1004A6F14();
}

Swift::Int sub_1002E2948()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1004A6E94();
  sub_1002E2C80(v6, v1);
  v4 = 0;
  if ((v3 & 1) == 0)
  {
    sub_1004A6EB4(1uLL);
    v4 = v2;
  }

  sub_1004A6EB4(v4);
  return sub_1004A6F14();
}

void sub_1002E29BC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  sub_1002E2C80(a1, v2);
  if (v4)
  {
    v3 = 0;
  }

  else
  {
    sub_1004A6EB4(1uLL);
  }

  sub_1004A6EB4(v3);
}

Swift::Int sub_1002E2A14(uint64_t a1)
{
  v3 = *v1;
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  sub_1004A6E94();
  sub_1002E2C80(v6, v3);
  if (v4)
  {
    v2 = 0;
  }

  else
  {
    sub_1004A6EB4(1uLL);
  }

  sub_1004A6EB4(v2);
  return sub_1004A6F14();
}

uint64_t sub_1002E2A88(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if ((sub_1002DB0E8(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v2 == v4)
    {
      v7 = v5;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t WindowOfInterestSizes.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  if (!*a1)
  {
    return a3;
  }

  v6 = *(a1 + 16);
  v7 = *(a1 + 8);
  v8 = MailboxName.inbox.unsafeMutableAddressor();
  if (v7 | (v7 << 32)) == (*(v8 + 2) | (*(v8 + 2) << 32)) && (sub_1000FFC98(v4, *v8))
  {
    v9 = 1;
    if (!*(a2 + 16))
    {
      return a3;
    }

    goto LABEL_19;
  }

  if (v6 <= 3)
  {
    if (v6 <= 1 && v6)
    {

      goto LABEL_18;
    }

LABEL_14:
    v10 = sub_1004A6D34();

    if ((v10 & 1) == 0)
    {
      goto LABEL_15;
    }

LABEL_18:
    v9 = 2;
    if (!*(a2 + 16))
    {
      return a3;
    }

    goto LABEL_19;
  }

  if (v6 <= 5 || v6 == 6)
  {
    goto LABEL_14;
  }

LABEL_15:
  v9 = 0;
  if (!*(a2 + 16))
  {
    return a3;
  }

LABEL_19:
  v11 = sub_1002B375C(v9);
  if (v12)
  {
    return *(*(a2 + 56) + 16 * v11);
  }

  return a3;
}

void sub_1002E2C80(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = 0;
  v5 = a2 + 64;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
LABEL_11:
    v11 = __clz(__rbit64(v8)) | (v4 << 6);
    v12 = *(*(a2 + 48) + v11);
    v13 = *(a2 + 56) + 16 * v11;
    v14 = *v13;
    v15 = *(v13 + 8);
    sub_1004A6EB4(v12);
    if (v15)
    {
      v14 = 0;
    }

    else
    {
      sub_1004A6EB4(1uLL);
    }

    v8 &= v8 - 1;
    sub_1004A6EB4(v14);
    v3 ^= sub_1004A6F14();
  }

  while (1)
  {
    v10 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v10 >= v9)
    {
      sub_1004A6EB4(v3);
      return;
    }

    v8 = *(v5 + 8 * v10);
    ++v4;
    if (v8)
    {
      v4 = v10;
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t sub_1002E2DB8()
{
  result = qword_1005D7CE8;
  if (!qword_1005D7CE8)
  {
    result = swift_getWitnessTable("\t@\t", &type metadata for WindowOfInterestSizes.MailboxType, v0, v1);
    atomic_store(result, &qword_1005D7CE8);
  }

  return result;
}

unint64_t sub_1002E2E10()
{
  result = qword_1005D7CF0;
  if (!qword_1005D7CF0)
  {
    result = swift_getWitnessTable("a?\t", &type metadata for WindowOfInterestSizes, v0, v1);
    atomic_store(result, &qword_1005D7CF0);
  }

  return result;
}

void ClientCommand.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v113 = a1;
  v3 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v3 - 8);
  v112 = &v110 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v110 - v6;
  v8 = type metadata accessor for SearchReturnOption(0);
  v111 = *(v8 - 8);
  __chkstk_darwin(v8 - 8);
  v10 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v110 - v12;
  v14 = sub_1004A44E4();
  v110 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v110 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000C9C0(&qword_1005D0F20, &qword_1004E9390);
  __chkstk_darwin(v17 - 8);
  v19 = &v110 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v110 - v21;
  v23 = type metadata accessor for ClientCommand(0);
  __chkstk_darwin(v23);
  v25 = &v110 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002E7FC4(v2, v25, type metadata accessor for ClientCommand);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1004A6EB4(4uLL);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      return;
    case 2u:
      v59 = *v25;
      v60 = v113;
      sub_1004A6EB4(5uLL);
      sub_1002E5AF4(v60, v59);
      goto LABEL_30;
    case 3u:
      v70 = *(v25 + 2);
      v71 = *(v25 + 2);
      v72 = v113;
      sub_1004A6EB4(6uLL);
      sub_1004A6EB4(v70 | (v70 << 32));

      sub_1002E5BA4(v72, v71);
      goto LABEL_30;
    case 4u:
      v49 = *(v25 + 2);
      v50 = 7;
      goto LABEL_40;
    case 5u:
      v49 = *(v25 + 2);
      v50 = 8;
      goto LABEL_40;
    case 6u:
      v49 = *(v25 + 2);
      v50 = 9;
LABEL_40:
      sub_1004A6EB4(v50);
      sub_1004A6EB4(v49 | (v49 << 32));
      goto LABEL_30;
    case 7u:
      v73 = *(v25 + 2);
      v74 = *(v25 + 6);
      sub_1004A6EB4(0xAuLL);
      sub_1004A6EB4(v73 | (v73 << 32));

      sub_1004A6EB4(v74 | (v74 << 32));
      goto LABEL_30;
    case 8u:
      v93 = *v25;
      v94 = *(v25 + 2);
      v95 = *(v25 + 2);
      v96 = *(v25 + 6);
      v97 = *(v25 + 4);
      v98 = v113;
      sub_1004A6EB4(0xBuLL);
      if (v93)
      {
        sub_1004A6EC4(1u);
        sub_1004A6EB4(v94 | (v94 << 32));
      }

      else
      {
        sub_1004A6EC4(0);
      }

      if (v95)
      {
        sub_1004A6EC4(1u);
        sub_1004A6EB4(v96 | (v96 << 32));
      }

      else
      {
        sub_1004A6EC4(0);
      }

      sub_1004A6EB4(*(v97 + 16));
      v105 = *(v97 + 16);
      if (v105)
      {
        v106 = 32;
        do
        {
          v107 = *(v97 + v106);
          v108 = *(v97 + v106 + 16);
          v109 = *(v97 + v106 + 48);
          *&v116[16] = *(v97 + v106 + 32);
          v117 = v109;
          v115 = v107;
          *v116 = v108;
          sub_1002E802C(&v115, v114);
          ReturnOption.hash(into:)(v98);
          sub_1002E8088(&v115);
          v106 += 64;
          --v105;
        }

        while (v105);
      }

      goto LABEL_30;
    case 9u:
      v56 = *(v25 + 2);
      v57 = *(v25 + 2);
      v58 = v113;
      sub_1004A6EB4(0xCuLL);
      sub_1004A6EB4(v56 | (v56 << 32));

      sub_1002E5960(v58, v57);
      goto LABEL_30;
    case 0xAu:
      v85 = *(v25 + 2);
      v86 = *(v25 + 2);
      v87 = sub_10000C9C0(&qword_1005D0F18, &unk_1004E53C0);
      v88 = *(v87 + 64);
      v89 = &v25[*(v87 + 80)];
      v90 = *v89;
      v111 = v89[1];
      v112 = v90;
      sub_100025FDC(&v25[v88], v22, &qword_1005D0F20, &qword_1004E9390);
      v91 = v113;
      sub_1004A6EB4(0xDuLL);
      sub_1004A6EB4(v85 | (v85 << 32));

      sub_100092C14(v91, v86);

      sub_10000E268(v22, v19, &qword_1005D0F20, &qword_1004E9390);
      v92 = v110;
      if ((*(v110 + 48))(v19, 1, v14) == 1)
      {
        sub_1004A6EC4(0);
      }

      else
      {
        (*(v92 + 32))(v16, v19, v14);
        sub_1004A6EC4(1u);
        sub_1002E87C0(&qword_1005D7D20, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        sub_1004A5564();
        (*(v92 + 8))(v16, v14);
      }

      v104 = v111;
      v103 = v112;
      sub_1004A4424();
      sub_100014D40(v103, v104);
      sub_100025F40(v22, &qword_1005D0F20, &qword_1004E9390);
      return;
    case 0xBu:
      v47 = *v25;
      v48 = 18;
      goto LABEL_38;
    case 0xCu:
      v42 = *v25;
      v51 = *(v25 + 1);
      v52 = v113;
      sub_1004A6EB4(0x13uLL);
      SearchKey.hash(into:)(v52, v42);
      sub_1004A6EB4(*(v51 + 16));
      v53 = *(v51 + 16);
      if (v53)
      {
        v54 = v51 + ((*(v111 + 80) + 32) & ~*(v111 + 80));
        v55 = *(v111 + 72);
        do
        {
          sub_1002E7FC4(v54, v13, type metadata accessor for SearchReturnOption);
          SearchReturnOption.hash(into:)(v52);
          sub_1002E80DC(v13, type metadata accessor for SearchReturnOption);
          v54 += v55;
          --v53;
        }

        while (v53);
      }

      goto LABEL_18;
    case 0xDu:
      v47 = *v25;
      v48 = 20;
LABEL_38:
      v84 = v113;
      sub_1004A6EB4(v48);
      SearchKey.hash(into:)(v84, v47);
      sub_1000B37D8(v47);
      return;
    case 0xEu:
      v42 = *v25;
      v41 = *(v25 + 1);
      v43 = v113;
      sub_1004A6EB4(0x15uLL);
      SearchKey.hash(into:)(v43, v42);
      sub_1004A6EB4(*(v41 + 16));
      v44 = *(v41 + 16);
      if (v44)
      {
        v45 = v41 + ((*(v111 + 80) + 32) & ~*(v111 + 80));
        v46 = *(v111 + 72);
        do
        {
          sub_1002E7FC4(v45, v10, type metadata accessor for SearchReturnOption);
          SearchReturnOption.hash(into:)(v43);
          sub_1002E80DC(v10, type metadata accessor for SearchReturnOption);
          v45 += v46;
          --v44;
        }

        while (v44);
      }

LABEL_18:
      sub_1000B37D8(v42);
LABEL_30:

      return;
    case 0xFu:
      v61 = &v25[*(sub_10000C9C0(&qword_1005CD558, &unk_1004CF330) + 48)];
      v62 = *v61;
      v63 = *(v61 + 1);
      v64 = v61[16];
      sub_100025FDC(v25, v7, &unk_1005D91B0, &unk_1004CF400);
      v65 = v113;
      sub_1004A6EB4(0x16uLL);
      sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
      sub_1000956A0();
      sub_1004A5564();
      sub_1004A6EB4(*(v62 + 16));
      v66 = *(v62 + 16);
      if (v66)
      {
        v67 = (v62 + 32);
        do
        {
          v68 = *v67;
          v69 = v67[1];
          *&v116[13] = *(v67 + 29);
          v115 = v68;
          *v116 = v69;
          sub_1002E7F14(&v115, v114);
          FetchAttribute.hash(into:)(v65);
          sub_1002E7F70(&v115);
          v67 = (v67 + 40);
          --v66;
        }

        while (v66);
      }

      if (v64)
      {
        sub_1004A6EC4(0);
      }

      else
      {
        sub_1004A6EC4(1u);
        sub_1004A6EF4(v63);
      }

      sub_100025F40(v7, &unk_1005D91B0, &unk_1004CF400);
      return;
    case 0x10u:
      v33 = &v25[*(sub_10000C9C0(&qword_1005D0488, &qword_1004DA4C0) + 48)];
      v34 = *v33;
      v35 = v33[1];
      v36 = *(v33 + 1);
      v37 = v112;
      sub_100025FDC(v25, v112, &unk_1005D91B0, &unk_1004CF400);
      v38 = v113;
      sub_1004A6EB4(0x17uLL);
      sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
      sub_1000956A0();
      sub_1004A5564();
      if (v35)
      {
        v39 = 256;
      }

      else
      {
        v39 = 0;
      }

      StoreFlags.hash(into:)(v38, v39 | v34, v36);

      v40 = v37;
      goto LABEL_44;
    case 0x11u:
      v75 = *&v25[*(sub_10000C9C0(&qword_1005D0480, &qword_1004D3D00) + 48) + 8];
      v76 = v112;
      sub_100025FDC(v25, v112, &unk_1005D91B0, &unk_1004CF400);
      v77 = 24;
      goto LABEL_43;
    case 0x12u:
      v75 = *&v25[*(sub_10000C9C0(&qword_1005D0480, &qword_1004D3D00) + 48) + 8];
      v76 = v112;
      sub_100025FDC(v25, v112, &unk_1005D91B0, &unk_1004CF400);
      v77 = 25;
LABEL_43:
      sub_1004A6EB4(v77);
      sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
      sub_1000956A0();
      sub_1004A5564();
      sub_1004A6EB4(v75 | (v75 << 32));

      v40 = v76;
LABEL_44:
      sub_100025F40(v40, &unk_1005D91B0, &unk_1004CF400);
      return;
    case 0x13u:
      v100 = *v25;
      v99 = *(v25 + 1);
      v101 = *(v25 + 2);
      v102 = v25[24];
      sub_1004A6EB4(0x1AuLL);
      sub_1004A6EB4(v100);
      if (v102 == 1)
      {
        goto LABEL_51;
      }

      sub_1004A6EC4(1u);
      sub_1004A6EB4(v99);
      v32 = v101;
LABEL_56:
      sub_1004A6EB4(v32);
      break;
    case 0x14u:
      v78 = *(v25 + 1);
      v79 = *(v25 + 2);
      v80 = v113;
      sub_1004A6EB4(0x1BuLL);
      sub_1002E5DBC(v80, v78, v79);

      goto LABEL_34;
    case 0x15u:
      v81 = *(v25 + 1);
      v115 = *v25;
      *v116 = v81;
      v82 = *(v25 + 3);
      *&v116[16] = *(v25 + 2);
      v117 = v82;
      v83 = v113;
      sub_1004A6EB4(0x1CuLL);
      PushRegistrationInfo.hash(into:)(v83);
      sub_10021D02C(&v115);
      return;
    case 0x16u:
      v32 = 0;
      goto LABEL_56;
    case 0x17u:
      v32 = 1;
      goto LABEL_56;
    case 0x18u:
      v32 = 2;
      goto LABEL_56;
    case 0x19u:
      v32 = 14;
      goto LABEL_56;
    case 0x1Au:
      v32 = 15;
      goto LABEL_56;
    case 0x1Bu:
      v32 = 16;
      goto LABEL_56;
    case 0x1Cu:
      v32 = 17;
      goto LABEL_56;
    case 0x1Du:
      v32 = 29;
      goto LABEL_56;
    default:
      v26 = *(v25 + 2);
      v27 = *(v25 + 3);
      v28 = v25[38];
      v29 = *(v25 + 18);
      v30 = *(v25 + 8);
      v31 = v113;
      sub_1004A6EB4(3uLL);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      if (v26)
      {
        sub_1004A6EC4(1u);
        QuotaRoot.hash(into:)(v31, v26, v27, (v30 | ((v29 | (v28 << 16)) << 32)) & 0xFFFFFFFFFFFFFFLL);
LABEL_34:
      }

      else
      {
LABEL_51:
        sub_1004A6EC4(0);
      }

      break;
  }
}

Swift::Int ClientCommand.hashValue.getter()
{
  sub_1004A6E94();
  ClientCommand.hash(into:)(v1);
  return sub_1004A6F14();
}

Swift::Int sub_1002E3BD8(uint64_t a1)
{
  sub_1004A6E94();
  ClientCommand.hash(into:)(v2);
  return sub_1004A6F14();
}

void ClientCommand.FetchData.hash(into:)(uint64_t a1, uint64_t a2, Swift::UInt64 a3, char a4)
{
  v8 = *(a2 + 16);
  sub_1004A6EB4(v8);
  if (v8)
  {
    v9 = (a2 + 32);
    do
    {
      v10 = v9[1];
      v12 = *v9;
      v13[0] = v10;
      *(v13 + 13) = *(v9 + 29);
      sub_1002E7F14(&v12, v11);
      FetchAttribute.hash(into:)(a1);
      sub_1002E7F70(&v12);
      v9 = (v9 + 40);
      --v8;
    }

    while (v8);
  }

  if (a4)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    sub_1004A6EF4(a3);
  }
}

Swift::Int ClientCommand.FetchData.hashValue.getter(uint64_t a1, Swift::UInt64 a2, char a3)
{
  sub_1004A6E94();
  ClientCommand.FetchData.hash(into:)(v7, a1, a2, a3 & 1);
  return sub_1004A6F14();
}

Swift::Int sub_1002E3D38()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1004A6E94();
  ClientCommand.FetchData.hash(into:)(v5, v1, v2, v3);
  return sub_1004A6F14();
}

Swift::Int sub_1002E3DA0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  sub_1004A6E94();
  ClientCommand.FetchData.hash(into:)(v6, v2, v3, v4);
  return sub_1004A6F14();
}

double static ClientCommand.uidFetch(messages:items:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a3 + *(sub_10000C9C0(&qword_1005CD558, &unk_1004CF330) + 48);
  sub_10000E268(a1, a3, &unk_1005D91B0, &unk_1004CF400);
  *v6 = a2;
  *(v6 + 8) = 0;
  *(v6 + 16) = 1;
  type metadata accessor for ClientCommand(0);
  swift_storeEnumTagMultiPayload();

  return result;
}

uint64_t ClientCommand.kind.getter()
{
  v1 = type metadata accessor for ClientCommand(0);
  __chkstk_darwin(v1);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002E7FC4(v0, v3, type metadata accessor for ClientCommand);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      sub_1002E80DC(v3, type metadata accessor for ClientCommand);
      result = 4;
      break;
    case 2:
      sub_1002E80DC(v3, type metadata accessor for ClientCommand);
      result = 5;
      break;
    case 3:
      sub_1002E80DC(v3, type metadata accessor for ClientCommand);
      result = 6;
      break;
    case 4:
      sub_1002E80DC(v3, type metadata accessor for ClientCommand);
      result = 7;
      break;
    case 5:
      sub_1002E80DC(v3, type metadata accessor for ClientCommand);
      result = 8;
      break;
    case 6:
      sub_1002E80DC(v3, type metadata accessor for ClientCommand);
      result = 9;
      break;
    case 7:
      sub_1002E80DC(v3, type metadata accessor for ClientCommand);
      result = 10;
      break;
    case 8:
      sub_1002E80DC(v3, type metadata accessor for ClientCommand);
      result = 11;
      break;
    case 9:
      sub_1002E80DC(v3, type metadata accessor for ClientCommand);
      result = 12;
      break;
    case 10:

      v6 = sub_10000C9C0(&qword_1005D0F18, &unk_1004E53C0);
      v7 = *(v6 + 64);
      sub_100014D40(*&v3[*(v6 + 80)], *&v3[*(v6 + 80) + 8]);
      sub_100025F40(&v3[v7], &qword_1005D0F20, &qword_1004E9390);
      result = 13;
      break;
    case 11:
      sub_1002E80DC(v3, type metadata accessor for ClientCommand);
      result = 18;
      break;
    case 12:
      sub_1002E80DC(v3, type metadata accessor for ClientCommand);
      result = 19;
      break;
    case 13:
      sub_1002E80DC(v3, type metadata accessor for ClientCommand);
      result = 20;
      break;
    case 14:
      sub_1002E80DC(v3, type metadata accessor for ClientCommand);
      result = 21;
      break;
    case 15:
      sub_10000C9C0(&qword_1005CD558, &unk_1004CF330);

      sub_100025F40(v3, &unk_1005D91B0, &unk_1004CF400);
      result = 22;
      break;
    case 16:
      sub_10000C9C0(&qword_1005D0488, &qword_1004DA4C0);

      sub_100025F40(v3, &unk_1005D91B0, &unk_1004CF400);
      result = 24;
      break;
    case 17:
      sub_10000C9C0(&qword_1005D0480, &qword_1004D3D00);

      sub_100025F40(v3, &unk_1005D91B0, &unk_1004CF400);
      result = 25;
      break;
    case 18:
      sub_10000C9C0(&qword_1005D0480, &qword_1004D3D00);

      sub_100025F40(v3, &unk_1005D91B0, &unk_1004CF400);
      result = 23;
      break;
    case 19:
      result = 29;
      break;
    case 20:
      sub_1002E80DC(v3, type metadata accessor for ClientCommand);
      result = 26;
      break;
    case 21:
      sub_1002E80DC(v3, type metadata accessor for ClientCommand);
      result = 27;
      break;
    case 22:
      return result;
    case 23:
      result = 1;
      break;
    case 24:
      result = 2;
      break;
    case 25:
      result = 14;
      break;
    case 26:
      result = 15;
      break;
    case 27:
      result = 16;
      break;
    case 28:
      result = 17;
      break;
    case 29:
      result = 28;
      break;
    default:
      sub_1002E80DC(v3, type metadata accessor for ClientCommand);
      result = 3;
      break;
  }

  return result;
}

unint64_t ClientCommand.logIdentifier.getter()
{
  v1 = type metadata accessor for ClientCommand(0);
  __chkstk_darwin(v1);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002E7FC4(v0, v3, type metadata accessor for ClientCommand);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x494C494241504143;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      sub_1002E80DC(v3, type metadata accessor for ClientCommand);
      result = 0x4E49474F4CLL;
      break;
    case 2:
      sub_1002E80DC(v3, type metadata accessor for ClientCommand);
      result = 0x454C42414E45;
      break;
    case 3:
      sub_1002E80DC(v3, type metadata accessor for ClientCommand);
      result = 0x5443454C4553;
      break;
    case 4:
      sub_1002E80DC(v3, type metadata accessor for ClientCommand);
      result = 0x454E494D415845;
      break;
    case 5:
      sub_1002E80DC(v3, type metadata accessor for ClientCommand);
      result = 0x455441455243;
      break;
    case 6:
      sub_1002E80DC(v3, type metadata accessor for ClientCommand);
      result = 0x4554454C4544;
      break;
    case 7:
      sub_1002E80DC(v3, type metadata accessor for ClientCommand);
      result = 0x454D414E4552;
      break;
    case 8:
      sub_1002E80DC(v3, type metadata accessor for ClientCommand);
      result = 1414744396;
      break;
    case 9:
      sub_1002E80DC(v3, type metadata accessor for ClientCommand);
      result = 0x535554415453;
      break;
    case 10:

      v6 = sub_10000C9C0(&qword_1005D0F18, &unk_1004E53C0);
      v7 = *(v6 + 64);
      sub_100014D40(*&v3[*(v6 + 80)], *&v3[*(v6 + 80) + 8]);
      sub_100025F40(&v3[v7], &qword_1005D0F20, &qword_1004E9390);
      result = 0x444E45505041;
      break;
    case 11:
      sub_1002E80DC(v3, type metadata accessor for ClientCommand);
      result = 0x5241455320444955;
      break;
    case 12:
      sub_1002E80DC(v3, type metadata accessor for ClientCommand);
      result = 0xD000000000000015;
      break;
    case 13:
      sub_1002E80DC(v3, type metadata accessor for ClientCommand);
      result = 0x484352414553;
      break;
    case 14:
    case 21:
      sub_1002E80DC(v3, type metadata accessor for ClientCommand);
      result = 0xD000000000000011;
      break;
    case 15:
      sub_10000C9C0(&qword_1005CD558, &unk_1004CF330);

      sub_100025F40(v3, &unk_1005D91B0, &unk_1004CF400);
      result = 0x4354454620444955;
      break;
    case 16:
      sub_10000C9C0(&qword_1005D0488, &qword_1004DA4C0);

      sub_100025F40(v3, &unk_1005D91B0, &unk_1004CF400);
      result = 0x524F545320444955;
      break;
    case 17:
      sub_10000C9C0(&qword_1005D0480, &qword_1004D3D00);

      sub_100025F40(v3, &unk_1005D91B0, &unk_1004CF400);
      result = 0x59504F4320444955;
      break;
    case 18:
      sub_10000C9C0(&qword_1005D0480, &qword_1004D3D00);

      sub_100025F40(v3, &unk_1005D91B0, &unk_1004CF400);
      result = 0x45564F4D20444955;
      break;
    case 19:
      result = 0x4843544142444955;
      break;
    case 20:
      sub_1002E80DC(v3, type metadata accessor for ClientCommand);
      result = 17481;
      break;
    case 22:
      return result;
    case 23:
      result = 1347374926;
      break;
    case 24:
      result = 0x534C545452415453;
      break;
    case 25:
      result = 0x43415053454D414ELL;
      break;
    case 26:
      result = 0x4B43454843;
      break;
    case 27:
      result = 0x45534F4C43;
      break;
    case 28:
      result = 0x45474E55505845;
      break;
    case 29:
      result = 0x53534552504D4F43;
      break;
    default:
      sub_1002E80DC(v3, type metadata accessor for ClientCommand);
      result = 0x49544E4548545541;
      break;
  }

  return result;
}

uint64_t LoggableCommand.tag.setter(uint64_t result)
{
  *v1 = result;
  *(v1 + 4) = HIDWORD(result);
  return result;
}

uint64_t LoggableCommand.command.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for LoggableCommand(0) + 20);

  return sub_1002E815C(a1, v3);
}

uint64_t LoggableCommand.init(tag:command:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 4) = HIDWORD(a1);
  v4 = a3 + *(type metadata accessor for LoggableCommand(0) + 20);

  return sub_10000F8F8(a2, v4);
}

Swift::String __swiftcall LoggableCommand.makeDescriptionWithoutPII()()
{
  v1 = sub_1004A5384();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v46 = v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v40 - v5;
  v7 = type metadata accessor for ClientCommand.Encoded(0);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = (v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = v0 + *(type metadata accessor for LoggableCommand(0) + 20);
  v12 = *(v0 + 4);
  v47[16] = *v0;
  v48 = v12;
  v49 = v11;
  sub_1002EFAE8(sub_1002E81C0, v47, 0x10000u, v10);
  if (*(*(v10 + *(v8 + 28)) + 16))
  {
    v45 = v6;
    sub_10000C9C0(&qword_1005D7D28, &qword_1004F2E88);
    v13 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v44 = *(v2 + 72);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1004CEAA0;
    v15 = *(v2 + 16);
    v42 = v1;
    v15(v14 + v13, v10, v1);
    v50 = v14;

    sub_1002E5134(v16, sub_1002FAB68, &type metadata accessor for DispatchData);
    v17 = v50;
    v18 = v50[2];
    if (v18)
    {
      v43 = v2 + 16;
      v41 = v10;
      v50 = _swiftEmptyArrayStorage;
      sub_100091A08(0, v18, 0);
      v19 = v50;
      v40[1] = v17;
      v20 = (v17 + v13);
      v21 = (v2 + 8);
      v22 = v42;
      do
      {
        v23 = v45;
        v15(v45, v20, v22);
        v24 = v46;
        v25.n128_f64[0] = v15(v46, v23, v22);
        v26 = sub_1002E81D4(v24, v25);
        v28 = v27;
        (*v21)(v23, v22);
        v50 = v19;
        v30 = v19[2];
        v29 = v19[3];
        if (v30 >= v29 >> 1)
        {
          sub_100091A08((v29 > 1), v30 + 1, 1);
          v22 = v42;
          v19 = v50;
        }

        v19[2] = v30 + 1;
        v31 = &v19[2 * v30];
        v31[4] = v26;
        v31[5] = v28;
        v20 = (v20 + v44);
        --v18;
      }

      while (v18);

      v10 = v41;
    }

    else
    {

      v19 = _swiftEmptyArrayStorage;
    }

    v50 = v19;
    sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
    sub_100031CDC();
    v33 = sub_1004A5614();
    v35 = v36;
  }

  else
  {
    v32.n128_f64[0] = (*(v2 + 16))(v6, v10, v1);
    v33 = sub_1002E81D4(v6, v32);
    v35 = v34;
  }

  sub_1002E80DC(v10, type metadata accessor for ClientCommand.Encoded);
  v37 = v33;
  v38 = v35;
  result._object = v38;
  result._countAndFlagsBits = v37;
  return result;
}

double variable initialization expression of MessageData.bodyStructure@<D0>(uint64_t a1@<X8>)
{
  sub_1000519AC(v8);
  v2 = v16;
  *(a1 + 128) = v15;
  *(a1 + 144) = v2;
  *(a1 + 160) = v17;
  *(a1 + 176) = v18;
  v3 = v12;
  *(a1 + 64) = v11;
  *(a1 + 80) = v3;
  v4 = v14;
  *(a1 + 96) = v13;
  *(a1 + 112) = v4;
  v5 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v5;
  result = *&v9;
  v7 = v10;
  *(a1 + 32) = v9;
  *(a1 + 48) = v7;
  return result;
}

double variable initialization expression of MessageData.envelope@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 112) = 0;
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t variable initialization expression of MessageData.BodySection.data@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for MessageData.BodyData(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t ServerResponseTranscoder.init()(__n128 a1)
{
  sub_1004A47B4();
}

uint64_t sub_1002E5134(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

char *sub_1002E5278(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1002E5384(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1002E5298(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1002E5488(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1002E52B8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1002E5678(a1, a2, a3, *v3, &qword_1005D7F40, &qword_1004F30D8, type metadata accessor for SelectParameter);
  *v3 = result;
  return result;
}

void *sub_1002E52FC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1002E5678(a1, a2, a3, *v3, &qword_1005D7F30, &unk_1004F3D80, type metadata accessor for CommandStreamPart);
  *v3 = result;
  return result;
}

void *sub_1002E5340(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1002E5678(a1, a2, a3, *v3, &qword_1005D7F38, &qword_1004F30D0, type metadata accessor for ParameterValue);
  *v3 = result;
  return result;
}

char *sub_1002E5384(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005D7F58, &unk_100509A10);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

void *sub_1002E5488(void *result, int64_t a2, char a3, void *a4)
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

  sub_10000C9C0(&qword_1005D7F48, &qword_10050A090);
  v10 = *(sub_10000C9C0(&qword_1005D7F50, &unk_100502FF0) - 8);
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
  v15 = *(sub_10000C9C0(&qword_1005D7F50, &unk_100502FF0) - 8);
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

void *sub_1002E5678(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

char *sub_1002E5854(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005CEE68, &unk_1004D1B40);
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

void sub_1002E5960(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  sub_1004A6EB4(v3);
  if (v3)
  {
    v4 = a2 + 32;
    do
    {
      ++v4;
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      --v3;
    }

    while (v3);
  }
}

void sub_1002E5AF4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  sub_1004A6EB4(v3);
  if (v3)
  {
    v4 = (a2 + 56);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;

      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      if (v6 == 1)
      {
        sub_1004A6EC4(0);
      }

      else
      {
        sub_1004A6EC4(1u);
        sub_1004A6EF4(v5 >> 14);
      }

      v4 += 32;
      --v3;
    }

    while (v3);
  }
}

void sub_1002E5BA4(__int128 *a1, uint64_t a2)
{
  sub_1004A6F14();
  v3 = 0;
  v4 = 0;
  v7 = *(a2 + 56);
  v6 = a2 + 56;
  v5 = v7;
  v8 = 1 << *(v6 - 24);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
LABEL_4:
    v10 &= v10 - 1;
    sub_1004A6E94();
    sub_1004A6EB4(0);
    v3 ^= sub_1004A6F14();
  }

  while (1)
  {
    v12 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v12 >= v11)
    {
      sub_1004A6EB4(v3);
      return;
    }

    v10 = *(v6 + 8 * v12);
    ++v4;
    if (v10)
    {
      v4 = v12;
      goto LABEL_4;
    }
  }

  __break(1u);
}

uint64_t sub_1002E5CA8(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v6 = *(result + 16);
  if (v6 != *(a4 + 16))
  {
    return 0;
  }

  if (v6)
  {
    v11 = result == a4;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v12 = (result + 32);
    v13 = (a4 + 32);
    while (1)
    {
      v14 = v12[1];
      v18 = *v12;
      v19[0] = v14;
      *(v19 + 13) = *(v12 + 29);
      if (!v6)
      {
        break;
      }

      v15 = v13[1];
      v20 = *v13;
      v21[0] = v15;
      *(v21 + 13) = *(v13 + 29);
      sub_1002E7F14(&v18, v17);
      sub_1002E7F14(&v20, v17);
      v16 = static FetchAttribute.__derived_enum_equals(_:_:)(&v18, &v20);
      sub_1002E7F70(&v20);
      result = sub_1002E7F70(&v18);
      if ((v16 & 1) == 0)
      {
        return 0;
      }

      v13 = (v13 + 40);
      v12 = (v12 + 40);
      if (!--v6)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

LABEL_10:
  if (a3)
  {
    return (a6 & 1) != 0;
  }

  if (a6)
  {
    return 0;
  }

  if (((a5 | a2) & 0x8000000000000000) == 0)
  {
    return a5 == a2;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1002E5DBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  sub_1004A6EB4(v5);

  if (v5)
  {
    v7 = 0;
    v8 = (a3 + 40);
    v9 = a2 + 40;
    while (v7 < *(a2 + 16))
    {
      v10 = *v8;

      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      if (v10)
      {
        sub_1004A6EC4(1u);
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      }

      else
      {
        sub_1004A6EC4(0);
      }

      ++v7;

      v8 += 2;
      v9 += 16;
      if (v5 == v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:
  }

  return result;
}

uint64_t _s13IMAP2Protocol13ClientCommandO21__derived_enum_equalsySbAC_ACtFZ_0(unint64_t a1, char *a2)
{
  v297 = a1;
  v298 = a2;
  v2 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v2 - 8);
  v278 = &v268 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v277 = &v268 - v5;
  __chkstk_darwin(v6);
  v276 = &v268 - v7;
  __chkstk_darwin(v8);
  v275 = &v268 - v9;
  v274 = sub_1004A44E4();
  v272 = *(v274 - 8);
  __chkstk_darwin(v274);
  v269 = &v268 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v271 = sub_10000C9C0(&qword_1005D6770, &qword_1004EC278);
  __chkstk_darwin(v271);
  v273 = &v268 - v11;
  v12 = sub_10000C9C0(&qword_1005D0F20, &qword_1004E9390);
  __chkstk_darwin(v12 - 8);
  v270 = &v268 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v279 = &v268 - v15;
  __chkstk_darwin(v16);
  v295 = &v268 - v17;
  v296 = type metadata accessor for ClientCommand(0);
  __chkstk_darwin(v296);
  v290 = (&v268 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19);
  v288 = &v268 - v20;
  __chkstk_darwin(v21);
  v289 = &v268 - v22;
  __chkstk_darwin(v23);
  v294 = &v268 - v24;
  __chkstk_darwin(v25);
  v293 = &v268 - v26;
  __chkstk_darwin(v27);
  v292 = &v268 - v28;
  __chkstk_darwin(v29);
  v291 = &v268 - v30;
  __chkstk_darwin(v31);
  v286 = (&v268 - v32);
  __chkstk_darwin(v33);
  v285 = (&v268 - v34);
  __chkstk_darwin(v35);
  v284 = (&v268 - v36);
  __chkstk_darwin(v37);
  v283 = (&v268 - v38);
  __chkstk_darwin(v39);
  v287 = &v268 - v40;
  __chkstk_darwin(v41);
  v282 = &v268 - v42;
  __chkstk_darwin(v43);
  v45 = &v268 - v44;
  __chkstk_darwin(v46);
  v281 = &v268 - v47;
  __chkstk_darwin(v48);
  v280 = &v268 - v49;
  __chkstk_darwin(v50);
  v52 = &v268 - v51;
  __chkstk_darwin(v53);
  v55 = &v268 - v54;
  __chkstk_darwin(v56);
  v58 = &v268 - v57;
  __chkstk_darwin(v59);
  v61 = (&v268 - v60);
  __chkstk_darwin(v62);
  v64 = (&v268 - v63);
  __chkstk_darwin(v65);
  v67 = &v268 - v66;
  v68 = sub_10000C9C0(&qword_1005D7F60, &unk_1004F30E0);
  __chkstk_darwin(v68 - 8);
  v70 = &v268 - v69;
  v72 = &v268 + *(v71 + 56) - v69;
  sub_1002E7FC4(v297, &v268 - v69, type metadata accessor for ClientCommand);
  v73 = v298;
  v298 = v72;
  sub_1002E7FC4(v73, v72, type metadata accessor for ClientCommand);
  v299 = v70;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v82 = v299;
      sub_1002E7FC4(v299, v64, type metadata accessor for ClientCommand);
      v153 = *v64;
      v152 = v64[1];
      v155 = v64[2];
      v154 = v64[3];
      v156 = v298;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_124;
      }

      v157 = *v156;
      v158 = *(v156 + 1);
      v160 = *(v156 + 2);
      v159 = *(v156 + 3);
      if (v153 == v157 && v152 == v158)
      {
      }

      else
      {
        v252 = sub_1004A6D34();

        if ((v252 & 1) == 0)
        {
          goto LABEL_147;
        }
      }

      if (v155 == v160 && v154 == v159)
      {

        goto LABEL_167;
      }

      v188 = sub_1004A6D34();

      goto LABEL_81;
    case 2u:
      v82 = v299;
      sub_1002E7FC4(v299, v61, type metadata accessor for ClientCommand);
      v121 = *v61;
      v122 = v298;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_125;
      }

      v118 = sub_1001CE84C(v121, *v122);
      goto LABEL_34;
    case 3u:
      v82 = v299;
      sub_1002E7FC4(v299, v58, type metadata accessor for ClientCommand);
      v135 = *v58;
      v136 = *(v58 + 2);
      v137 = v298;
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_122;
      }

      v138 = *v137;
      v139 = *(v137 + 2);
      v140 = *(v137 + 2);
      if ((*(v58 + 2) | (*(v58 + 2) << 32)) != (v139 | (v139 << 32)))
      {
        goto LABEL_140;
      }

      v141 = sub_1000FFC98(v135, v138);

      if ((v141 & 1) == 0)
      {
        goto LABEL_147;
      }

      v118 = sub_100083010(v136, v140);
      goto LABEL_34;
    case 4u:
      v82 = v299;
      sub_1002E7FC4(v299, v55, type metadata accessor for ClientCommand);
      v105 = *v55;
      v106 = v298;
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_125;
      }

      v107 = *(v55 + 2);
      goto LABEL_78;
    case 5u:
      v82 = v299;
      sub_1002E7FC4(v299, v52, type metadata accessor for ClientCommand);
      v105 = *v52;
      v106 = v298;
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_125;
      }

      v107 = *(v52 + 2);
      goto LABEL_78;
    case 6u:
      v82 = v299;
      v187 = v280;
      sub_1002E7FC4(v299, v280, type metadata accessor for ClientCommand);
      v105 = *v187;
      v106 = v298;
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_125;
      }

      v107 = *(v187 + 8);
LABEL_78:
      v147 = *v106;
      v150 = v107 | (v107 << 32);
      v151 = *(v106 + 2) | (*(v106 + 2) << 32);
      goto LABEL_79;
    case 7u:
      v82 = v299;
      v142 = v281;
      sub_1002E7FC4(v299, v281, type metadata accessor for ClientCommand);
      v143 = *v142;
      v105 = *(v142 + 16);
      v144 = *(v142 + 24);
      v145 = v298;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
LABEL_124:

        goto LABEL_125;
      }

      v146 = *(v142 + 8);
      v147 = *(v145 + 2);
      if ((v146 | (v146 << 32)) != (*(v145 + 2) | (*(v145 + 2) << 32)))
      {

        goto LABEL_147;
      }

      v148 = *(v145 + 6);
      v149 = sub_1000FFC98(v143, *v145);

      if ((v149 & 1) == 0)
      {
        goto LABEL_147;
      }

      v150 = v144 | (v144 << 32);
      v151 = v148 | (v148 << 32);
LABEL_79:
      if (v150 != v151)
      {
        goto LABEL_147;
      }

      v188 = sub_1000FFC98(v105, v147);

LABEL_81:

      if (v188)
      {
        goto LABEL_167;
      }

      goto LABEL_148;
    case 8u:
      v82 = v299;
      sub_1002E7FC4(v299, v45, type metadata accessor for ClientCommand);
      v221 = *v45;
      v222 = *(v45 + 2);
      v223 = *(v45 + 2);
      v224 = *(v45 + 6);
      v225 = *(v45 + 4);
      v226 = v298;
      if (swift_getEnumCaseMultiPayload() != 8)
      {

        goto LABEL_125;
      }

      v227 = *v226;
      v228 = *(v226 + 2);
      v229 = *(v226 + 6);
      v230 = *(v226 + 4);
      if (v221)
      {
        if (v227)
        {
          if ((v222 | (v222 << 32)) == (*(v298 + 2) | (*(v298 + 2) << 32)))
          {
            v231 = sub_1000FFC98(v221, *v226);

            if (v231)
            {
LABEL_169:
              if (!v223)
              {
                v220 = v299;
                if (v228)
                {

                  goto LABEL_190;
                }

                goto LABEL_193;
              }

              if (v228)
              {
                if ((v224 | (v224 << 32)) == (v229 | (v229 << 32)))
                {
                  v259 = sub_1000FFC98(v223, v228);

                  v220 = v299;
                  if ((v259 & 1) == 0)
                  {

LABEL_190:

                    goto LABEL_200;
                  }

LABEL_193:
                  v96 = sub_1002F3208(v225, v230);

LABEL_203:
                  sub_1002E80DC(v220, type metadata accessor for ClientCommand);
                  return v96 & 1;
                }

                swift_bridgeObjectRelease_n();
              }

              else
              {
              }

              v220 = v299;
LABEL_200:
              v253 = v220;
LABEL_181:
              sub_1002E80DC(v253, type metadata accessor for ClientCommand);
              goto LABEL_182;
            }
          }

          else
          {

            swift_bridgeObjectRelease_n();
          }
        }

        else
        {
        }

        goto LABEL_180;
      }

      if (v227)
      {

        goto LABEL_180;
      }

      goto LABEL_169;
    case 9u:
      v82 = v299;
      v109 = v282;
      sub_1002E7FC4(v299, v282, type metadata accessor for ClientCommand);
      v110 = *v109;
      v111 = *(v109 + 16);
      v112 = v298;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
LABEL_122:

LABEL_125:

LABEL_126:
        sub_100025F40(v82, &qword_1005D7F60, &unk_1004F30E0);
LABEL_182:
        v96 = 0;
        return v96 & 1;
      }

      v113 = *(v109 + 8);
      v114 = *v112;
      v115 = *(v112 + 2);
      v116 = *(v112 + 2);
      if ((v113 | (v113 << 32)) != (v115 | (v115 << 32)))
      {
LABEL_140:

        goto LABEL_147;
      }

      v117 = sub_1000FFC98(v110, v114);

      if ((v117 & 1) == 0)
      {
LABEL_147:

        goto LABEL_148;
      }

      v118 = sub_1002F32E8(v111, v116);
LABEL_34:
      v96 = v118;

LABEL_35:

LABEL_74:
      sub_1002E80DC(v82, type metadata accessor for ClientCommand);
      return v96 & 1;
    case 0xAu:
      v82 = v299;
      v194 = v287;
      sub_1002E7FC4(v299, v287, type metadata accessor for ClientCommand);
      v195 = *v194;
      v196 = *(v194 + 16);
      v197 = sub_10000C9C0(&qword_1005D0F18, &unk_1004E53C0);
      v198 = *(v197 + 64);
      v199 = *(v197 + 80);
      v201 = *(v194 + v199);
      v200 = *(v194 + v199 + 8);
      v202 = v298;
      if (swift_getEnumCaseMultiPayload() != 10)
      {

        sub_100014D40(v201, v200);
        sub_100025F40(v194 + v198, &qword_1005D0F20, &qword_1004E9390);
        goto LABEL_126;
      }

      v293 = v196;
      v296 = v201;
      v297 = v200;
      v203 = *(v194 + 8);
      v294 = *v202;
      v204 = *(v202 + 2);
      v205 = *(v202 + 2);
      v207 = *&v202[v199];
      v206 = *&v202[v199 + 8];
      sub_100025FDC(v194 + v198, v295, &qword_1005D0F20, &qword_1004E9390);
      v208 = &v202[v198];
      v209 = v279;
      sub_100025FDC(v208, v279, &qword_1005D0F20, &qword_1004E9390);
      if ((v203 | (v203 << 32)) == (v204 | (v204 << 32)))
      {
        v210 = v207;
        v211 = v206;
        v212 = sub_1000FFC98(v195, v294);

        if (v212)
        {
          v213 = sub_100083750(v293, v205);

          if (v213)
          {
            v214 = *(v271 + 48);
            v215 = v273;
            sub_10000E268(v295, v273, &qword_1005D0F20, &qword_1004E9390);
            sub_10000E268(v209, v215 + v214, &qword_1005D0F20, &qword_1004E9390);
            v216 = v272;
            v217 = *(v272 + 48);
            v218 = v274;
            v219 = v217(v215, 1, v274);
            v220 = v299;
            if (v219 == 1)
            {
              if (v217(v215 + v214, 1, v218) == 1)
              {
                sub_100025F40(v215, &qword_1005D0F20, &qword_1004E9390);
LABEL_202:
                v267 = v296;
                v266 = v297;
                v96 = sub_10003A194(v296, v297, v210, v211);
                sub_100014D40(v210, v211);
                sub_100014D40(v267, v266);
                sub_100025F40(v209, &qword_1005D0F20, &qword_1004E9390);
                sub_100025F40(v295, &qword_1005D0F20, &qword_1004E9390);
                goto LABEL_203;
              }

              sub_100014D40(v210, v211);
              sub_100014D40(v296, v297);
            }

            else
            {
              v261 = v270;
              sub_10000E268(v215, v270, &qword_1005D0F20, &qword_1004E9390);
              if (v217(v215 + v214, 1, v218) != 1)
              {
                v262 = v215 + v214;
                v263 = v269;
                (*(v216 + 32))(v269, v262, v218);
                sub_1002E87C0(&qword_1005D6780, &type metadata accessor for Date, &protocol conformance descriptor for Date);
                v264 = sub_1004A5724();
                v265 = *(v216 + 8);
                v265(v263, v218);
                v265(v261, v218);
                sub_100025F40(v215, &qword_1005D0F20, &qword_1004E9390);
                v220 = v299;
                if (v264)
                {
                  goto LABEL_202;
                }

                sub_100014D40(v210, v211);
                sub_100014D40(v296, v297);
LABEL_199:
                sub_100025F40(v209, &qword_1005D0F20, &qword_1004E9390);
                sub_100025F40(v295, &qword_1005D0F20, &qword_1004E9390);
                goto LABEL_200;
              }

              sub_100014D40(v210, v211);
              sub_100014D40(v296, v297);
              (*(v216 + 8))(v261, v218);
              v220 = v299;
            }

            sub_100025F40(v215, &qword_1005D6770, &qword_1004EC278);
            goto LABEL_199;
          }
        }

        else
        {
        }

        sub_100014D40(v207, v206);
        sub_100014D40(v296, v297);
      }

      else
      {

        sub_100014D40(v207, v206);
        sub_100014D40(v296, v297);
      }

      v249 = &qword_1005D0F20;
      v250 = &qword_1004E9390;
      sub_100025F40(v209, &qword_1005D0F20, &qword_1004E9390);
      v251 = v295;
      goto LABEL_163;
    case 0xBu:
      v82 = v299;
      v103 = v283;
      sub_1002E7FC4(v299, v283, type metadata accessor for ClientCommand);
      v98 = *v103;
      v104 = v298;
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_75;
      }

      goto LABEL_73;
    case 0xCu:
      v82 = v299;
      v108 = v284;
      sub_1002E7FC4(v299, v284, type metadata accessor for ClientCommand);
      v98 = *v108;
      v99 = v108[1];
      v100 = v298;
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        goto LABEL_23;
      }

      goto LABEL_16;
    case 0xDu:
      v82 = v299;
      v185 = v285;
      sub_1002E7FC4(v299, v285, type metadata accessor for ClientCommand);
      v98 = *v185;
      v104 = v298;
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        goto LABEL_75;
      }

LABEL_73:
      v186 = *v104;
      v96 = static SearchKey.__derived_enum_equals(_:_:)(v98, *v104);
      sub_1000B37D8(v186);
      sub_1000B37D8(v98);
      goto LABEL_74;
    case 0xEu:
      v82 = v299;
      v97 = v286;
      sub_1002E7FC4(v299, v286, type metadata accessor for ClientCommand);
      v98 = *v97;
      v99 = v97[1];
      v100 = v298;
      if (swift_getEnumCaseMultiPayload() != 14)
      {
LABEL_23:

LABEL_75:
        sub_1000B37D8(v98);
        goto LABEL_126;
      }

LABEL_16:
      v102 = *v100;
      v101 = v100[1];
      if (static SearchKey.__derived_enum_equals(_:_:)(v98, *v100))
      {
        v96 = sub_1002F361C(v99, v101);
        sub_1000B37D8(v102);
        sub_1000B37D8(v98);

        goto LABEL_35;
      }

      sub_1000B37D8(v102);
      sub_1000B37D8(v98);
      goto LABEL_148;
    case 0xFu:
      v82 = v299;
      v84 = v291;
      sub_1002E7FC4(v299, v291, type metadata accessor for ClientCommand);
      v123 = *(sub_10000C9C0(&qword_1005CD558, &unk_1004CF330) + 48);
      v125 = *(v84 + v123);
      v124 = *(v84 + v123 + 8);
      v126 = *(v84 + v123 + 16);
      v127 = v298;
      if (swift_getEnumCaseMultiPayload() != 15)
      {
        goto LABEL_121;
      }

      v128 = &v127[v123];
      v129 = *&v127[v123];
      v130 = *(v128 + 1);
      v131 = v128[16];
      v132 = v127;
      v133 = v275;
      sub_100025FDC(v132, v275, &unk_1005D91B0, &unk_1004CF400);
      sub_100016D2C();
      if ((sub_1004A7034() & 1) == 0)
      {

        v248 = v133;
        v249 = &unk_1005D91B0;
        v250 = &unk_1004CF400;
        sub_100025F40(v84, &unk_1005D91B0, &unk_1004CF400);
        v251 = v248;
LABEL_163:
        sub_100025F40(v251, v249, v250);
        goto LABEL_180;
      }

      sub_100025F40(v84, &unk_1005D91B0, &unk_1004CF400);
      v134 = sub_1002F2B00(v125, v129);
      sub_100025F40(v133, &unk_1005D91B0, &unk_1004CF400);

      if ((v134 & 1) == 0)
      {
        goto LABEL_180;
      }

      if (v126)
      {
        if ((v131 & 1) == 0)
        {
          goto LABEL_180;
        }
      }

      else
      {
        if (v131)
        {
          goto LABEL_180;
        }

        if ((v130 | v124) < 0)
        {
          __break(1u);
          JUMPOUT(0x1002E7E7CLL);
        }

        if (v130 != v124)
        {
          goto LABEL_180;
        }
      }

      goto LABEL_187;
    case 0x10u:
      v82 = v299;
      v84 = v292;
      sub_1002E7FC4(v299, v292, type metadata accessor for ClientCommand);
      v85 = *(sub_10000C9C0(&qword_1005D0488, &qword_1004DA4C0) + 48);
      v86 = *(v84 + v85);
      v87 = *(v84 + v85 + 1);
      v88 = *(v84 + v85 + 8);
      v89 = v298;
      if (swift_getEnumCaseMultiPayload() != 16)
      {
LABEL_121:

        sub_100025F40(v84, &unk_1005D91B0, &unk_1004CF400);
        goto LABEL_126;
      }

      v90 = *(v89 + v85);
      v91 = *(v89 + v85 + 1);
      v92 = *(v89 + v85 + 8);
      v93 = v276;
      sub_100025FDC(v89, v276, &unk_1005D91B0, &unk_1004CF400);
      sub_100016D2C();
      if ((sub_1004A7034() & 1) == 0)
      {

        sub_100025F40(v84, &unk_1005D91B0, &unk_1004CF400);
        v242 = v93;
        goto LABEL_137;
      }

      sub_100025F40(v84, &unk_1005D91B0, &unk_1004CF400);
      if (v87)
      {
        v94 = 256;
      }

      else
      {
        v94 = 0;
      }

      if (v91)
      {
        v95 = 256;
      }

      else
      {
        v95 = 0;
      }

      v96 = static StoreFlags.__derived_struct_equals(_:_:)(v94 | v86, v88, v95 | v90, v92);

      sub_100025F40(v93, &unk_1005D91B0, &unk_1004CF400);
      goto LABEL_74;
    case 0x11u:
      v82 = v299;
      v161 = v293;
      sub_1002E7FC4(v299, v293, type metadata accessor for ClientCommand);
      v162 = *(sub_10000C9C0(&qword_1005D0480, &qword_1004D3D00) + 48);
      v163 = *(v161 + v162);
      v164 = *(v161 + v162 + 8);
      v165 = v298;
      if (swift_getEnumCaseMultiPayload() != 17)
      {
        goto LABEL_89;
      }

      v166 = &v165[v162];
      v167 = *&v165[v162];
      v168 = *(v166 + 2);
      v169 = v165;
      v170 = &v304 + 8;
      goto LABEL_85;
    case 0x12u:
      v82 = v299;
      v161 = v294;
      sub_1002E7FC4(v299, v294, type metadata accessor for ClientCommand);
      v189 = *(sub_10000C9C0(&qword_1005D0480, &qword_1004D3D00) + 48);
      v163 = *(v161 + v189);
      v164 = *(v161 + v189 + 8);
      v190 = v298;
      if (swift_getEnumCaseMultiPayload() != 18)
      {
LABEL_89:

        sub_100025F40(v161, &unk_1005D91B0, &unk_1004CF400);
        goto LABEL_126;
      }

      v191 = &v190[v189];
      v167 = *&v190[v189];
      v168 = *(v191 + 2);
      v169 = v190;
      v170 = &v305;
LABEL_85:
      v192 = *(v170 - 32);
      sub_100025FDC(v169, v192, &unk_1005D91B0, &unk_1004CF400);
      sub_100016D2C();
      if ((sub_1004A7034() & 1) == 0)
      {

        sub_100025F40(v161, &unk_1005D91B0, &unk_1004CF400);
        v242 = v192;
LABEL_137:
        sub_100025F40(v242, &unk_1005D91B0, &unk_1004CF400);
        goto LABEL_148;
      }

      sub_100025F40(v161, &unk_1005D91B0, &unk_1004CF400);
      if ((v164 | (v164 << 32)) != (v168 | (v168 << 32)))
      {

        sub_100025F40(v192, &unk_1005D91B0, &unk_1004CF400);
        goto LABEL_148;
      }

      v193 = sub_1000FFC98(v163, v167);

      sub_100025F40(v192, &unk_1005D91B0, &unk_1004CF400);
      if ((v193 & 1) == 0)
      {
        goto LABEL_148;
      }

      goto LABEL_167;
    case 0x13u:
      v82 = v299;
      v233 = v289;
      sub_1002E7FC4(v299, v289, type metadata accessor for ClientCommand);
      v235 = *(v233 + 8);
      v234 = *(v233 + 16);
      v236 = *(v233 + 24);
      v237 = v298;
      if (swift_getEnumCaseMultiPayload() != 19)
      {
        goto LABEL_126;
      }

      if (*v233 != *v237)
      {
        goto LABEL_148;
      }

      if (v236)
      {
        if (!v237[24])
        {
          goto LABEL_148;
        }
      }

      else if ((v237[24] & 1) != 0 || v235 != *(v237 + 1) || v234 != *(v237 + 2))
      {
        goto LABEL_148;
      }

      goto LABEL_167;
    case 0x14u:
      v82 = v299;
      v171 = v288;
      sub_1002E7FC4(v299, v288, type metadata accessor for ClientCommand);
      v172 = *(v171 + 8);
      v173 = *(v171 + 16);
      v174 = v298;
      if (swift_getEnumCaseMultiPayload() != 20)
      {

        goto LABEL_126;
      }

      v175 = *(v174 + 1);
      v176 = *(v174 + 2);
      if ((sub_10020FB40(v172, v175) & 1) == 0)
      {

        goto LABEL_148;
      }

      v177 = sub_10020FA9C(v173, v176);

      if ((v177 & 1) == 0)
      {
        goto LABEL_148;
      }

      goto LABEL_167;
    case 0x15u:
      v82 = v299;
      v178 = v290;
      sub_1002E7FC4(v299, v290, type metadata accessor for ClientCommand);
      v179 = v178[1];
      v304 = *v178;
      v305 = v179;
      v180 = v178[3];
      v306 = v178[2];
      v307 = v180;
      v181 = v298;
      if (swift_getEnumCaseMultiPayload() != 21)
      {
        sub_10021D02C(&v304);
        goto LABEL_126;
      }

      v182 = *(v181 + 1);
      v300 = *v181;
      v301 = v182;
      v183 = *(v181 + 3);
      v302 = *(v181 + 2);
      v303 = v183;
      if (v304 == v300 && (__PAIR128__(v305, *(&v304 + 1)) == __PAIR128__(v301, *(&v300 + 1)) || (sub_1004A6D34() & 1) != 0) && (__PAIR128__(v306, *(&v305 + 1)) == __PAIR128__(v302, *(&v301 + 1)) || (sub_1004A6D34() & 1) != 0) && (__PAIR128__(v307, *(&v306 + 1)) == __PAIR128__(v303, *(&v302 + 1)) || (sub_1004A6D34() & 1) != 0))
      {
        v184 = _s12NIOIMAPCore29MailboxesV23__derived_struct_equalsySbAC_ACtFZ_0(*(&v307 + 1), *(&v303 + 1));
        sub_10021D02C(&v300);
        sub_10021D02C(&v304);
        if (v184)
        {
LABEL_167:
          v258 = v82;
LABEL_168:
          sub_1002E80DC(v258, type metadata accessor for ClientCommand);
          v96 = 1;
          return v96 & 1;
        }
      }

      else
      {
        sub_10021D02C(&v300);
        sub_10021D02C(&v304);
      }

LABEL_148:
      v253 = v82;
      goto LABEL_181;
    case 0x16u:
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v82 = v299;
      if (EnumCaseMultiPayload == 22)
      {
        goto LABEL_167;
      }

      goto LABEL_126;
    case 0x17u:
      v238 = swift_getEnumCaseMultiPayload();
      v82 = v299;
      if (v238 == 23)
      {
        goto LABEL_167;
      }

      goto LABEL_126;
    case 0x18u:
      v120 = swift_getEnumCaseMultiPayload();
      v82 = v299;
      if (v120 == 24)
      {
        goto LABEL_167;
      }

      goto LABEL_126;
    case 0x19u:
      v119 = swift_getEnumCaseMultiPayload();
      v82 = v299;
      if (v119 == 25)
      {
        goto LABEL_167;
      }

      goto LABEL_126;
    case 0x1Au:
      v241 = swift_getEnumCaseMultiPayload();
      v82 = v299;
      if (v241 == 26)
      {
        goto LABEL_167;
      }

      goto LABEL_126;
    case 0x1Bu:
      v83 = swift_getEnumCaseMultiPayload();
      v82 = v299;
      if (v83 == 27)
      {
        goto LABEL_167;
      }

      goto LABEL_126;
    case 0x1Cu:
      v239 = swift_getEnumCaseMultiPayload();
      v82 = v299;
      if (v239 == 28)
      {
        goto LABEL_167;
      }

      goto LABEL_126;
    case 0x1Du:
      v240 = swift_getEnumCaseMultiPayload();
      v82 = v299;
      if (v240 == 29)
      {
        goto LABEL_167;
      }

      goto LABEL_126;
    default:
      sub_1002E7FC4(v299, v67, type metadata accessor for ClientCommand);
      v75 = *v67;
      v74 = *(v67 + 1);
      v77 = *(v67 + 2);
      v76 = *(v67 + 3);
      v78 = v67[38];
      v79 = *(v67 + 18);
      v80 = *(v67 + 8);
      v81 = v298;
      if (swift_getEnumCaseMultiPayload())
      {

        v82 = v299;
        goto LABEL_126;
      }

      v297 = v76;
      v243 = *v81;
      v244 = *(v81 + 1);
      v245 = *(v81 + 2);
      v296 = *(v81 + 3);
      LODWORD(v295) = v81[38];
      v246 = *(v81 + 18);
      v247 = *(v81 + 8);
      if (v75 == v243 && v74 == v244)
      {
      }

      else
      {
        v254 = sub_1004A6D34();

        if ((v254 & 1) == 0)
        {
          goto LABEL_179;
        }
      }

      if (v77)
      {
        if (v245)
        {
          v255 = v247 | ((v246 | (v295 << 16)) << 32);

          v257 = sub_10020FBD0(v256, v297, (v80 | ((v79 | (v78 << 16)) << 32)) & 0xFFFFFFFFFFFFFFLL, v245, v296, v255 & 0xFFFFFFFFFFFFFFLL);

          if (v257)
          {
            goto LABEL_187;
          }

LABEL_180:
          v253 = v299;
          goto LABEL_181;
        }
      }

      else if (!v245)
      {
LABEL_187:
        v258 = v299;
        goto LABEL_168;
      }

LABEL_179:

      goto LABEL_180;
  }
}

uint64_t sub_1002E7FC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002E80DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002E815C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientCommand(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002E81D4(uint64_t a1, __n128 a2)
{
  v3 = sub_1004A5224();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004A52F4();
  v20 = 0;
  v21 = 0xE000000000000000;
  v7 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  sub_1004A5874(v7);
  v8 = 0;
  v9 = 0;
  v15[2] = xmmword_1004ED250;
  v15[1] = xmmword_1004ED260;
  v15[0] = xmmword_1004ED270;
  while (1)
  {
    v18 = v8;
    v19 = v9;
    if (!v9)
    {
      break;
    }

    if ((v8 & 0x80) != 0)
    {
      goto LABEL_6;
    }

    sub_1002A57BC();
    v12 = UnsafeExtractedAttachment.part.modify();
    sub_1002A5810(0);
    (v12)(&v16, 0);
LABEL_23:
    v8 = v18;
    v9 = v19;
    v16 = v20;
    v17 = v21;
    sub_1004A58C4();
    v20 = v16;
    v21 = v17;
  }

  sub_1002E87C0(&qword_1005D47B8, &type metadata accessor for DispatchDataIterator, &protocol conformance descriptor for DispatchDataIterator);
  sub_1004A6414();
  if ((v16 & 0x100) != 0)
  {
    goto LABEL_35;
  }

  if ((v16 & 0x80) == 0)
  {
    goto LABEL_23;
  }

  v8 = v8 & 0xFFFFFF00 | v16;
  v9 = 8;
LABEL_6:
  sub_1002E87C0(&qword_1005D47B8, &type metadata accessor for DispatchDataIterator, &protocol conformance descriptor for DispatchDataIterator);
  sub_1004A6414();
  if ((v16 & 0x100) != 0)
  {
    v10 = v9;
LABEL_8:
    if (!v10)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v8 = (v16 << v9) | ((-255 << v9) - 1) & v8;
    v10 = v9 + 8;
    if ((v9 + 8) <= 0x1Fu)
    {
      sub_1004A6414();
      if ((v16 & 0x100) != 0)
      {
        goto LABEL_8;
      }

      v8 = (v16 << v10) | ((-255 << v10) - 1) & v8;
      v10 = v9 + 16;
      if ((v9 + 16) <= 0x1Fu)
      {
        sub_1004A6414();
        if ((v16 & 0x100) != 0)
        {
          goto LABEL_8;
        }

        v8 = (v16 << v10) | ((-255 << v10) - 1) & v8;
        v10 = v9 + 24;
        if ((v9 + 24) <= 0x1Fu)
        {
          sub_1004A6414();
          if ((v16 & 0x100) != 0)
          {
            goto LABEL_8;
          }

          v8 = (v16 << v10) | ((-255 << v10) - 1) & v8;
          v10 = v9 + 32;
          if (v9 >= 0xE0u)
          {
            sub_1004A6414();
            if ((v16 & 0x100) != 0)
            {
              goto LABEL_8;
            }

            v8 = (v16 << v9) | ((-255 << v9) - 1) & v8;
            v10 = v9 + 40;
          }
        }
      }
    }
  }

  if ((v8 & 0xC0E0) == 0x80C0)
  {
    if ((v8 & 0x1E) == 0)
    {
      goto LABEL_34;
    }

    v11 = 16;
    goto LABEL_22;
  }

  if ((v8 & 0xC0C0F0) == 0x8080E0)
  {
    if ((v8 & 0x200F) == 0 || (v8 & 0x200F) == 0x200D)
    {
      goto LABEL_34;
    }

    v11 = 24;
    goto LABEL_22;
  }

  if ((v8 & 0xC0C0C0F8) == 0x808080F0 && (v8 & 0x3007) != 0 && __rev16(v8 & 0x3007) <= 0x400)
  {
    v11 = 32;
LABEL_22:
    v18 = v8 >> v11;
    v19 = v10 - v11;
    goto LABEL_23;
  }

LABEL_34:
  sub_1004A6FB4();
  v22._object = 0x80000001004AE330;
  v22._countAndFlagsBits = 0xD000000000000012;
  sub_1004A5994(v22);
LABEL_35:
  v13 = sub_1004A5384();
  (*(*(v13 - 8) + 8))(a1, v13);
  (*(v4 + 8))(v6, v3);
  return v20;
}

uint64_t sub_1002E87C0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t sub_1002E880C()
{
  result = qword_1005D7D38;
  if (!qword_1005D7D38)
  {
    result = swift_getWitnessTable("1>\t", &type metadata for ClientCommand.FetchData, v0, v1);
    atomic_store(result, &qword_1005D7D38);
  }

  return result;
}

unint64_t sub_1002E8864()
{
  result = qword_1005D7D40;
  if (!qword_1005D7D40)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ClientCommand.SelectOption, &type metadata for ClientCommand.SelectOption, v0, v1);
    atomic_store(result, &qword_1005D7D40);
  }

  return result;
}

unint64_t sub_1002E88BC()
{
  result = qword_1005D7D48;
  if (!qword_1005D7D48)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ClientCommand.Kind, &type metadata for ClientCommand.Kind, v0, v1);
    atomic_store(result, &qword_1005D7D48);
  }

  return result;
}

void sub_1002E8910(uint64_t a1)
{
  sub_1002E8B34(319);
  if (v1 <= 0x3F)
  {
    sub_1002E8BAC(319, &qword_1005D7DE0, &type metadata for String);
    if (v2 <= 0x3F)
    {
      sub_100214F50();
      if (v3 <= 0x3F)
      {
        sub_1002E8C8C(319, &qword_1005D7DE8, &qword_1005D7DF0, &qword_1004F3058);
        if (v4 <= 0x3F)
        {
          sub_1002E8BAC(319, &qword_1005D7DF8, &type metadata for MailboxName);
          if (v5 <= 0x3F)
          {
            sub_1002E8BFC(319);
            if (v6 <= 0x3F)
            {
              sub_1002E8C8C(319, &qword_1005D7E18, &qword_1005D7E20, &qword_100506180);
              if (v7 <= 0x3F)
              {
                sub_1002E8CF0(319);
                if (v8 <= 0x3F)
                {
                  sub_1002E8E30(319);
                  if (v9 <= 0x3F)
                  {
                    sub_1002E8EA8(319, &qword_1005D7E48);
                    if (v10 <= 0x3F)
                    {
                      sub_1002E8EA8(319, &qword_1005D7E50);
                      if (v11 <= 0x3F)
                      {
                        sub_1002E8EA8(319, &qword_1005D7E58);
                        if (v12 <= 0x3F)
                        {
                          sub_1002E8F20(319);
                          if (v13 <= 0x3F)
                          {
                            sub_1002E8F98(319);
                            if (v14 <= 0x3F)
                            {
                              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1002E8B34(uint64_t a1)
{
  if (!qword_1005D7DD0)
  {
    sub_10000DEFC(&qword_1005D7DD8, &qword_1004F3050);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1005D7DD0);
    }
  }
}

void sub_1002E8BAC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1002E8BFC(uint64_t a1)
{
  if (!qword_1005D7E00)
  {
    sub_10000DEFC(&qword_1005D7E08, &qword_1004F4700);
    sub_10000DEFC(&qword_1005D7E10, &qword_1004F3060);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1005D7E00);
    }
  }
}

void sub_1002E8C8C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_10000DEFC(a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1002E8CF0(uint64_t a1)
{
  if (!qword_1005D7E28)
  {
    __chkstk_darwin(a1);
    sub_10000DEFC(&qword_1005D7E30, &qword_1004F3068);
    sub_10000DEFC(&qword_1005D0F20, &qword_1004E9390);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1005D7E28);
    }
  }
}

void sub_1002E8E30(uint64_t a1)
{
  if (!qword_1005D7E38)
  {
    sub_10000DEFC(&qword_1005D7E40, &qword_1004F3070);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1005D7E38);
    }
  }
}

void sub_1002E8EA8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_10000DEFC(&unk_1005D91B0, &unk_1004CF400);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1002E8F20(uint64_t a1)
{
  if (!qword_1005D7E60)
  {
    sub_10000DEFC(&qword_1005D7E68, &qword_1004F3078);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1005D7E60);
    }
  }
}

void sub_1002E8F98(uint64_t a1)
{
  if (!qword_1005D7E70)
  {
    sub_10000DEFC(&qword_1005D4660, &qword_1004E05E8);
    v1 = sub_1004A47A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1005D7E70);
    }
  }
}

uint64_t getEnumTagSinglePayload for ClientCommand.Kind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE3)
  {
    goto LABEL_17;
  }

  if (a2 + 29 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 29) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 29;
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

      return (*a1 | (v4 << 8)) - 29;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 29;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1E;
  v8 = v6 - 30;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ClientCommand.Kind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 29 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 29) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE3)
  {
    v4 = 0;
  }

  if (a2 > 0xE2)
  {
    v5 = ((a2 - 227) >> 8) + 1;
    *result = a2 + 29;
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
    *result = a2 + 29;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1002E9190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for ClientCommand(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1002E921C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for ClientCommand(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1002E9298(uint64_t a1)
{
  result = type metadata accessor for ClientCommand(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t ClientCommand.encode(tag:options:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t (*a3)(__int128 *)@<X8>)
{
  v4[16] = a1;
  v5 = HIDWORD(a1);
  return sub_1002EFAE8(sub_1002E81C0, v4, a2 & 0x101FF, a3);
}

double ClientCommand.Encoded.continuations.getter()
{
  type metadata accessor for ClientCommand.Encoded(0);

  return result;
}

uint64_t ClientCommand.Encoded.continuations.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ClientCommand.Encoded(0) + 20);

  *(v1 + v3) = a1;
  return result;
}

uint64_t ClientCommand.Encoded.init(command:continuations:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1004A5384();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for ClientCommand.Encoded(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t ClientCommand.EncodingOptions.debugDescription.getter(__int16 a1)
{
  if (a1)
  {
    v1 = 0x2B6C61726574694CLL;
    if ((a1 & 0x100) != 0)
    {
      v1 = 0xD000000000000010;
    }

    v2 = 0x2D6C61726574694CLL;
    if ((a1 & 0x100) != 0)
    {
      v2 = 0xD000000000000010;
    }

    if (a1 == 1)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }

  else if ((a1 & 0x100) != 0)
  {
    return 0x7972616E6942;
  }

  else
  {
    return 0x647261646E617453;
  }
}

uint64_t sub_1002E960C()
{
  if (v0[1])
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return ClientCommand.EncodingOptions.debugDescription.getter(v1 | *v0);
}

uint64_t CommandEncodingOptions.init(_:)(__int16 a1)
{
  v1 = 0x100000001;
  if ((a1 & 0x100) == 0)
  {
    v1 = 1;
  }

  return v1 | qword_1004F32E0[a1] | qword_1004F32F8[a1] | qword_1004F3310[a1];
}

uint64_t ClientCommand.EncodingOptions.init(_:)(uint64_t a1)
{
  v2 = Capability.literalPlus.unsafeMutableAddressor();
  v3 = *(v2 + 1);
  v4 = *(v2 + 2);
  v5 = *(v2 + 24);
  v24 = *v2;
  v25 = v3;
  v26 = v4;
  v27 = v5;
  v23 = &v24;

  v6 = sub_100215C70(sub_100197740, v22, a1);

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v8 = Capability.literalMinus.unsafeMutableAddressor();
    v9 = *(v8 + 1);
    v10 = *(v8 + 2);
    v11 = *(v8 + 24);
    v24 = *v8;
    v25 = v9;
    v26 = v10;
    v27 = v11;
    __chkstk_darwin(v8);
    v21 = &v24;

    v12 = sub_100215C70(sub_1001F0EE0, v20, a1);

    if (v12)
    {
      v7 = 2;
    }

    else
    {
      v7 = 0;
    }
  }

  v13 = Capability.binary.unsafeMutableAddressor();
  v14 = *(v13 + 1);
  v15 = *(v13 + 2);
  v16 = *(v13 + 24);
  v24 = *v13;
  v25 = v14;
  v26 = v15;
  v27 = v16;
  __chkstk_darwin(v13);
  v21 = &v24;

  v17 = sub_100215C70(sub_1001F0EE0, v20, a1);

  if (v17)
  {
    v18 = 256;
  }

  else
  {
    v18 = 0;
  }

  return v18 | v7;
}

uint64_t type metadata accessor for ClientCommand.Encoded(uint64_t a1)
{
  result = qword_1005D7FD8;
  if (!qword_1005D7FD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1002E9894()
{
  result = qword_1005D7F68;
  if (!qword_1005D7F68)
  {
    result = swift_getWitnessTable("1<\t", &type metadata for ClientCommand.EncodingOptions.Literal, v0, v1);
    atomic_store(result, &qword_1005D7F68);
  }

  return result;
}

unint64_t sub_1002E98EC()
{
  result = qword_1005D7F70;
  if (!qword_1005D7F70)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ClientCommand.EncodingOptions.MessageBodyEncoding, &type metadata for ClientCommand.EncodingOptions.MessageBodyEncoding, v0, v1);
    atomic_store(result, &qword_1005D7F70);
  }

  return result;
}

unint64_t sub_1002E9944()
{
  result = qword_1005D7F78;
  if (!qword_1005D7F78)
  {
    result = swift_getWitnessTable("a;\t", &type metadata for ClientCommand.EncodingOptions.Mode, v0, v1);
    atomic_store(result, &qword_1005D7F78);
  }

  return result;
}

uint64_t sub_1002E99AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1004A5384();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1002E9A7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1004A5384();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_1002E9B34(uint64_t a1)
{
  sub_1004A5384();
  if (v1 <= 0x3F)
  {
    sub_1002E9BB8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1002E9BB8(uint64_t a1)
{
  if (!qword_1005D7FE8)
  {
    sub_1004A5384();
    v1 = sub_1004A5CD4();
    if (!v2)
    {
      atomic_store(v1, &qword_1005D7FE8);
    }
  }
}

uint64_t _s15EncodingOptionsVwCP(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t _s15EncodingOptionsVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = a1[3];
      if (a1[3])
      {
        return (*a1 | (a1[2] << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (a1[2] << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = a1[1];
  v5 = v4 >= 2;
  v6 = v4 - 2;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t _s15EncodingOptionsVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
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

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *(result + 1) = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t sub_1002E9D78(unsigned __int8 a1)
{
  sub_1004A5874(10);
  v2 = a1 + 1;
  do
  {
    v3 = (v2 - 1);
    v2 = (v2 - 1) / 0x1Au;
    sub_1004A58E4();
    sub_1004A59A4();
  }

  while (v3 > 0x19);
  return 0;
}

unint64_t sub_1002E9E28()
{
  result = qword_1005D8018;
  if (!qword_1005D8018)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ConnectionID, &type metadata for ConnectionID, v0, v1);
    atomic_store(result, &qword_1005D8018);
  }

  return result;
}

char *sub_1002E9E98()
{
  result = EngineTracingID.invalid.unsafeMutableAddressor();
  static ConnectionLoggerID.invalid = *result;
  dword_1005DE18C = -1;
  return result;
}

char *ConnectionLoggerID.invalid.unsafeMutableAddressor()
{
  if (qword_1005D7CF8 != -1)
  {
    swift_once();
  }

  return &static ConnectionLoggerID.invalid;
}

unint64_t static ConnectionLoggerID.invalid.getter()
{
  if (qword_1005D7CF8 != -1)
  {
    swift_once();
  }

  return static ConnectionLoggerID.invalid | (dword_1005DE18C << 32);
}

uint64_t MessageData.uid.setter(uint64_t result)
{
  *(v1 + 8) = result;
  *(v1 + 12) = BYTE4(result) & 1;
  return result;
}

uint64_t MessageData.bodySections.setter(uint64_t a1)
{

  *(v1 + 200) = a1;
  return result;
}

uint64_t MessageData.flags.setter(uint64_t a1)
{

  *(v1 + 512) = a1;
  return result;
}

uint64_t MessageData.gmailLabels.setter(uint64_t a1)
{

  *(v1 + 520) = a1;
  return result;
}

uint64_t MessageData.internalDate.setter(uint64_t result, char a2)
{
  *(v2 + 528) = result;
  *(v2 + 536) = a2 & 1;
  return result;
}

uint64_t MessageData.messageSize.setter(uint64_t result)
{
  *(v1 + 540) = result;
  *(v1 + 544) = BYTE4(result) & 1;
  return result;
}

uint64_t MessageData.modificationSequence.setter(uint64_t result, char a2)
{
  *(v2 + 552) = result;
  *(v2 + 560) = a2 & 1;
  return result;
}

uint64_t MessageData.preview.getter()
{
  v1 = *(v0 + 568);

  return v1;
}

uint64_t MessageData.preview.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 568) = a1;
  *(v2 + 576) = a2;
  return result;
}

uint64_t MessageData.emailID.getter()
{
  v1 = *(v0 + 584);

  return v1;
}

uint64_t MessageData.emailID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 584) = a1;
  *(v2 + 592) = a2;
  return result;
}

uint64_t MessageData.threadID.getter()
{
  v1 = *(v0 + 600);

  return v1;
}

uint64_t MessageData.threadID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 600) = a1;
  *(v2 + 608) = a2;
  return result;
}

uint64_t MessageData.BodySection.section.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);

  sub_100051190(v2, v3);
  return v1;
}

uint64_t MessageData.BodySection.section.setter(uint64_t a1, uint64_t a2, char a3)
{

  result = sub_1000511A4(*(v3 + 8), *(v3 + 16));
  *v3 = a1;
  *(v3 + 8) = a2;
  *(v3 + 16) = a3;
  return result;
}

uint64_t MessageData.BodySection.origin.setter(uint64_t result)
{
  *(v1 + 20) = result;
  *(v1 + 24) = BYTE4(result) & 1;
  return result;
}

uint64_t type metadata accessor for MessageData.BodySection(uint64_t a1)
{
  result = qword_1005D80A0;
  if (!qword_1005D80A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MessageData.BodySection.init(section:origin:data:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = *(type metadata accessor for MessageData.BodySection(0) + 24);
  v13 = type metadata accessor for MessageData.BodyData(0);
  (*(*(v13 - 8) + 56))(a6 + v12, 1, 1, v13);
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 20) = a4;
  *(a6 + 24) = BYTE4(a4) & 1;
  return sub_10027F8A8(a5, a6 + v12, &qword_1005CE218, &unk_1004F3FD0);
}

void *MessageData.init(sequenceNumber:uid:body:bodySections:bodyStructure:envelope:flags:gmailLabels:internalDate:messageSize:modificationSequence:preview:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, char a11, int a12, int a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18)
{
  sub_1000519AC(&v30);
  *&__src[144] = v38;
  *&__src[160] = v39;
  *&__src[176] = v40;
  *&__src[80] = v34;
  *&__src[96] = v35;
  *&__src[112] = v36;
  *&__src[128] = v37;
  *&__src[16] = v30;
  *&__src[32] = v31;
  *&__src[48] = v32;
  *&__src[64] = v33;
  *&__src[336] = v38;
  *&__src[352] = v39;
  *&__src[368] = v40;
  *&__src[272] = v34;
  *&__src[288] = v35;
  *&__src[304] = v36;
  *&__src[320] = v37;
  *&__src[208] = v30;
  *&__src[224] = v31;
  __src[192] = v41;
  __src[384] = v41;
  *&__src[240] = v32;
  *&__src[256] = v33;
  memset(&__src[392], 0, 120);
  memset(&__src[584], 0, 32);
  *__src = a1;
  __src[4] = BYTE4(a1) & 1;
  *&__src[8] = a2;
  __src[12] = BYTE4(a2) & 1;
  sub_10027F8A8(a3, &__src[16], &qword_1005CDFD0, &qword_1004EE450);
  *&__src[200] = a4;
  sub_10027F8A8(a5, &__src[208], &qword_1005CDFD0, &qword_1004EE450);
  sub_10027F8A8(a6, &__src[392], &qword_1005D8038, &unk_1004F4C00);
  *&__src[512] = a7;
  *&__src[520] = a8;
  *&__src[528] = a10;
  __src[536] = a11 & 1;
  *&__src[540] = a13;
  __src[544] = a14 & 1;
  *&__src[552] = a15;
  __src[560] = a16 & 1;
  *&__src[568] = a17;
  *&__src[576] = a18;
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v43, __src, 0x268uLL);
  sub_1002EBB50(__dst, v28);
  sub_100025D5C(v43);
  return memcpy(a9, __dst, 0x268uLL);
}

uint64_t sub_1002EA9B8(void *__src, const void *a2)
{
  memcpy(v4, __src, sizeof(v4));
  memcpy(__dst, a2, sizeof(__dst));
  return _s13IMAP2Protocol11MessageDataV23__derived_struct_equalsySbAC_ACtFZ_0(v4) & 1;
}

uint64_t sub_1002EAA10()
{
  v0 = sub_10000C9C0(&qword_1005D6830, &qword_1004EC2C0);
  __chkstk_darwin(v0 - 8);
  v2 = &v15 - v1;
  v3 = sub_1004A4554();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1004A45B4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001C2074(v11, qword_1005D8020);
  v12 = sub_1001C203C(v7, qword_1005D8020);
  (*(v4 + 104))(v6, enum case for Calendar.Identifier.gregorian(_:), v3);
  sub_1004A4564();
  (*(v4 + 8))(v6, v3);
  sub_1004A4654();
  v13 = sub_1004A4694();
  result = (*(*(v13 - 8) + 48))(v2, 1, v13);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1004A4594();
    return (*(v8 + 32))(v12, v10, v7);
  }

  return result;
}

uint64_t ServerMessageDate.date.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = sub_10000C9C0(&qword_1005D6830, &qword_1004EC2C0);
  __chkstk_darwin(v3 - 8);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v29 - v7;
  v9 = sub_10000C9C0(&qword_1005D8040, &qword_1004F34D8);
  __chkstk_darwin(v9 - 8);
  v11 = &v29 - v10;
  v12 = sub_1004A41B4();
  v33 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1004A45B4();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10000C9C0(&qword_1005D0F20, &qword_1004E9390);
  __chkstk_darwin(v19 - 8);
  v21 = &v29 - v20;
  if (qword_1005D7D00 != -1)
  {
    swift_once();
  }

  v22 = sub_1001C203C(v15, qword_1005D8020);
  (*(v16 + 16))(v18, v22, v15);
  v23 = *(v16 + 56);
  v32 = v11;
  v23(v11, 1, 1, v15);
  ServerMessageDate.components.getter(a1, &v34);
  result = 60 * v35;
  if ((v35 * 60) >> 64 != (60 * v35) >> 63)
  {
    __break(1u);
    goto LABEL_8;
  }

  v30 = v12;
  sub_1004A4674();
  v25 = sub_1004A4694();
  v26 = *(v25 - 8);
  result = (*(v26 + 48))(v5, 1, v25);
  if (result == 1)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  (*(v26 + 32))(v8, v5, v25);
  (*(v26 + 56))(v8, 0, 1, v25);
  sub_1004A4194();
  sub_1004A4584();
  (*(v33 + 8))(v14, v30);
  (*(v16 + 8))(v18, v15);
  v27 = sub_1004A44E4();
  v28 = *(v27 - 8);
  result = (*(v28 + 48))(v21, 1, v27);
  if (result != 1)
  {
    return (*(v28 + 32))(v31, v21, v27);
  }

LABEL_9:
  __break(1u);
  return result;
}

void ServerMessageDate.init(_:)(char *a1)
{
  v51 = a1;
  v48 = sub_1004A44E4();
  v50 = *(v48 - 8);
  __chkstk_darwin(v48);
  v47 = &v40 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10000C9C0(&qword_1005D6830, &qword_1004EC2C0);
  __chkstk_darwin(v2 - 8);
  v49 = &v40 - v3;
  v46 = sub_1004A41B4();
  v45 = *(v46 - 8);
  __chkstk_darwin(v46);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1005D7D00 != -1)
  {
    swift_once();
  }

  v6 = sub_1004A45B4();
  sub_1001C203C(v6, qword_1005D8020);
  sub_10000C9C0(&qword_1005D6838, &qword_1004EC2C8);
  v7 = sub_1004A45A4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1004D0FC0;
  v12 = v11 + v10;
  v13 = *(v8 + 104);
  v13(v12, enum case for Calendar.Component.year(_:), v7);
  v13(v12 + v9, enum case for Calendar.Component.month(_:), v7);
  v13(v12 + 2 * v9, enum case for Calendar.Component.day(_:), v7);
  v13(v12 + 3 * v9, enum case for Calendar.Component.hour(_:), v7);
  v13(v12 + 4 * v9, enum case for Calendar.Component.minute(_:), v7);
  v13(v12 + 5 * v9, enum case for Calendar.Component.second(_:), v7);
  v13(v12 + 6 * v9, enum case for Calendar.Component.timeZone(_:), v7);
  sub_100285C08(v11);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1004A4574();

  v14 = sub_1004A4144();
  if (v15)
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v14;
  v17 = sub_1004A4154();
  if (v18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v19 = v17;
  v20 = sub_1004A4124();
  v21 = v49;
  v22 = v50;
  if (v23)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v24 = v20;
  v25 = sub_1004A4134();
  if (v26)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v27 = v25;
  v28 = sub_1004A4164();
  if (v29)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v30 = v28;
  v31 = sub_1004A4174();
  if (v32)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v41 = v31;
  v42 = v30;
  v43 = v27;
  v44 = v24;
  sub_1004A41A4();
  v33 = sub_1004A4694();
  v34 = *(v33 - 8);
  if ((*(v34 + 48))(v21, 1, v33) == 1)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v35 = v47;
  sub_1004A44D4();
  v36 = sub_1004A4664();
  v37 = *(v22 + 8);
  v38 = v35;
  v39 = v48;
  v37(v38, v48);
  (*(v34 + 8))(v21, v33);
  ServerMessageDate.Components.init(year:month:day:hour:minute:second:timeZoneMinutes:)(&v52, v16, v19, v44, v43, v42, v41, v36 / 60);
  if (!v52.is_nil)
  {
    value = v52.value;
    v37(v51, v39);
    (*(v45 + 8))(v5, v46);
    ServerMessageDate.init(_:)(&value);
    return;
  }

LABEL_19:
  __break(1u);
}

BOOL _s13IMAP2Protocol11MessageDataV11BodySectionV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageData.BodyData(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C9C0(&qword_1005CE218, &unk_1004F3FD0);
  __chkstk_darwin(v8 - 8);
  v10 = v25 - v9;
  v11 = sub_10000C9C0(&qword_1005D80F8, &qword_1004F3C28);
  __chkstk_darwin(v11);
  v13 = v25 - v12;
  if ((static SectionSpecifier.__derived_struct_equals(_:_:)(*a1, *(a1 + 8), *(a1 + 16), *a2, *(a2 + 8), *(a2 + 16)) & 1) == 0)
  {
    return 0;
  }

  v14 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 20) != *(a2 + 20))
    {
      v14 = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v25[0] = v7;
  v15 = *(type metadata accessor for MessageData.BodySection(0) + 24);
  v16 = *(v11 + 48);
  sub_10000E268(a1 + v15, v13, &qword_1005CE218, &unk_1004F3FD0);
  sub_10000E268(a2 + v15, &v13[v16], &qword_1005CE218, &unk_1004F3FD0);
  v17 = *(v5 + 48);
  if (v17(v13, 1, v4) == 1)
  {
    if (v17(&v13[v16], 1, v4) == 1)
    {
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  sub_10000E268(v13, v10, &qword_1005CE218, &unk_1004F3FD0);
  if (v17(&v13[v16], 1, v4) == 1)
  {
    sub_1002ED6F0(v10);
LABEL_14:
    v19 = &qword_1005D80F8;
    v20 = &qword_1004F3C28;
    goto LABEL_15;
  }

  v21 = v25[0];
  sub_1002ED74C(&v13[v16], v25[0]);
  v22 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  if (v22 == _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0())
  {
    sub_1004A5384();
    sub_1002ED7B0(&qword_1005D3650, &type metadata accessor for DispatchData, &protocol conformance descriptor for DispatchData);
    sub_1004A5E64();
    v23 = sub_1004A5EA4();
    if (v26 != v25[2])
    {
      __chkstk_darwin(v23);
      v25[-2] = v21;
      v25[-1] = v10;
      sub_1004A5314();
      v24 = v26;
      sub_1002ED6F0(v21);
      sub_1002ED6F0(v10);
      sub_100025F40(v13, &qword_1005CE218, &unk_1004F3FD0);
      return (v24 & 1) != 0;
    }

    sub_1002ED6F0(v21);
    sub_1002ED6F0(v10);
LABEL_10:
    sub_100025F40(v13, &qword_1005CE218, &unk_1004F3FD0);
    return 1;
  }

  sub_1002ED6F0(v21);
  sub_1002ED6F0(v10);
  v19 = &qword_1005CE218;
  v20 = &unk_1004F3FD0;
LABEL_15:
  sub_100025F40(v13, v19, v20);
  return 0;
}

uint64_t _s13IMAP2Protocol11MessageDataV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1)
{
  __chkstk_darwin(a1);
  v3 = v2;
  v4 = *(v2 + 4);
  if (*(v1 + 4))
  {
    if (!*(v2 + 4))
    {
      return 0;
    }
  }

  else
  {
    if (*v2 != *v1)
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  v5 = *(v2 + 12);
  if (*(v1 + 12))
  {
    if (!*(v2 + 12))
    {
      return 0;
    }
  }

  else
  {
    if (*(v2 + 8) != *(v1 + 8))
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }
  }

  v6 = *(v1 + 160);
  v7 = *(v1 + 128);
  v375 = *(v1 + 144);
  v376 = v6;
  v8 = *(v1 + 160);
  v377 = *(v1 + 176);
  v9 = *(v1 + 96);
  v10 = *(v1 + 64);
  v371 = *(v1 + 80);
  v372 = v9;
  v11 = *(v1 + 96);
  v12 = *(v1 + 128);
  v373 = *(v1 + 112);
  v374 = v12;
  v13 = *(v1 + 32);
  v368[0] = *(v1 + 16);
  v368[1] = v13;
  v14 = *(v1 + 64);
  v15 = *(v1 + 16);
  v16 = *(v1 + 32);
  v369 = *(v1 + 48);
  v370 = v14;
  v17 = *(v2 + 160);
  v18 = *(v2 + 128);
  v364 = *(v2 + 144);
  v365 = v17;
  v19 = *(v2 + 160);
  v366 = *(v2 + 176);
  v20 = *(v2 + 96);
  v21 = *(v2 + 64);
  v360 = *(v2 + 80);
  v361 = v20;
  v22 = *(v2 + 96);
  v23 = *(v2 + 128);
  v362 = *(v2 + 112);
  v363 = v23;
  v24 = *(v2 + 32);
  v357[0] = *(v2 + 16);
  v357[1] = v24;
  v25 = *(v2 + 64);
  v27 = *(v2 + 16);
  v26 = *(v2 + 32);
  v358 = *(v2 + 48);
  v359 = v25;
  v28 = *(v1 + 160);
  __src[8] = *(v1 + 144);
  __src[9] = v28;
  __src[10] = *(v1 + 176);
  v29 = *(v1 + 96);
  __src[4] = *(v1 + 80);
  __src[5] = v29;
  v30 = *(v1 + 128);
  __src[6] = *(v1 + 112);
  __src[7] = v30;
  v31 = *(v1 + 32);
  __src[0] = *(v1 + 16);
  __src[1] = v31;
  v32 = *(v1 + 64);
  __src[2] = *(v1 + 48);
  __src[3] = v32;
  v33 = *(v2 + 176);
  *(&__src[20] + 8) = v19;
  *(&__src[21] + 8) = v33;
  *(&__src[16] + 8) = v22;
  *(&__src[17] + 8) = v362;
  *(&__src[18] + 8) = v18;
  *(&__src[19] + 8) = v364;
  *(&__src[15] + 8) = v360;
  *(&__src[11] + 8) = v27;
  *(&__src[12] + 8) = v26;
  *(&__src[13] + 8) = v358;
  *(&__src[14] + 8) = v21;
  v331[8] = v375;
  v331[9] = v8;
  v331[10] = *(v1 + 176);
  v331[4] = v371;
  v331[5] = v11;
  v331[6] = v373;
  v331[7] = v7;
  v331[0] = v15;
  v331[1] = v16;
  v378 = *(v1 + 192);
  v367 = *(v2 + 192);
  LOBYTE(__src[11]) = *(v1 + 192);
  BYTE8(__src[22]) = *(v2 + 192);
  v34 = v1;
  v332 = *(v1 + 192);
  v331[2] = v369;
  v331[3] = v10;
  if (sub_10003EC1C(v331) == 1)
  {
    v35 = *(v3 + 160);
    __dst[8] = *(v3 + 144);
    __dst[9] = v35;
    __dst[10] = *(v3 + 176);
    LOBYTE(__dst[11]) = *(v3 + 192);
    v36 = *(v3 + 96);
    __dst[4] = *(v3 + 80);
    __dst[5] = v36;
    v37 = *(v3 + 128);
    __dst[6] = *(v3 + 112);
    __dst[7] = v37;
    v38 = *(v3 + 32);
    __dst[0] = *(v3 + 16);
    __dst[1] = v38;
    v39 = *(v3 + 64);
    __dst[2] = *(v3 + 48);
    __dst[3] = v39;
    if (sub_10003EC1C(__dst) == 1)
    {
      sub_10000E268(v368, v304, &qword_1005CDFD0, &qword_1004EE450);
      v40 = v304;
LABEL_16:
      sub_10000E268(v357, v40, &qword_1005CDFD0, &qword_1004EE450);
      goto LABEL_17;
    }

    goto LABEL_27;
  }

  v101 = *(v3 + 160);
  __dst[8] = *(v3 + 144);
  __dst[9] = v101;
  __dst[10] = *(v3 + 176);
  LOBYTE(__dst[11]) = *(v3 + 192);
  v102 = *(v3 + 96);
  __dst[4] = *(v3 + 80);
  __dst[5] = v102;
  v103 = *(v3 + 128);
  __dst[6] = *(v3 + 112);
  __dst[7] = v103;
  v104 = *(v3 + 32);
  __dst[0] = *(v3 + 16);
  __dst[1] = v104;
  v105 = *(v3 + 64);
  __dst[2] = *(v3 + 48);
  __dst[3] = v105;
  if (sub_10003EC1C(__dst) == 1)
  {
LABEL_27:
    memcpy(__dst, __src, 0x169uLL);
    sub_10000E268(v368, v304, &qword_1005CDFD0, &qword_1004EE450);
    sub_10000E268(v357, v304, &qword_1005CDFD0, &qword_1004EE450);
    v106 = &unk_1005D6D18;
    v107 = &unk_1004EE458;
    v108 = __dst;
LABEL_28:
    sub_100025F40(v108, v106, v107);
    return 0;
  }

  v109 = *(v3 + 160);
  v353 = *(v3 + 144);
  v354 = v109;
  v355 = *(v3 + 176);
  v356 = *(v3 + 192);
  v110 = *(v3 + 96);
  v349 = *(v3 + 80);
  v350 = v110;
  v111 = *(v3 + 128);
  v351 = *(v3 + 112);
  v352 = v111;
  v112 = *(v3 + 32);
  v345 = *(v3 + 16);
  v346 = v112;
  v113 = *(v3 + 64);
  v347 = *(v3 + 48);
  v348 = v113;
  v114 = *(v34 + 160);
  v304[8] = *(v34 + 144);
  v304[9] = v114;
  v304[10] = *(v34 + 176);
  LOBYTE(v304[11]) = *(v34 + 192);
  v115 = *(v34 + 96);
  v304[4] = *(v34 + 80);
  v304[5] = v115;
  v116 = *(v34 + 128);
  v304[6] = *(v34 + 112);
  v304[7] = v116;
  v117 = *(v34 + 32);
  v304[0] = *(v34 + 16);
  v304[1] = v117;
  v118 = *(v34 + 64);
  v304[2] = *(v34 + 48);
  v304[3] = v118;
  if (sub_10000FE74(v304) == 1)
  {
    v119 = *(v3 + 160);
    v341 = *(v3 + 144);
    v342 = v119;
    v343 = *(v3 + 176);
    v344 = *(v3 + 192);
    v120 = *(v3 + 96);
    v337 = *(v3 + 80);
    v338 = v120;
    v121 = *(v3 + 128);
    v339 = *(v3 + 112);
    v340 = v121;
    v122 = *(v3 + 32);
    v333 = *(v3 + 16);
    v334 = v122;
    v123 = *(v3 + 64);
    v335 = *(v3 + 48);
    v336 = v123;
    if (sub_10000FE74(&v333) == 1)
    {
      sub_10000E268(v368, &v317, &qword_1005CDFD0, &qword_1004EE450);
      v40 = &v317;
      goto LABEL_16;
    }

    sub_10000E268(v368, &v317, &qword_1005CDFD0, &qword_1004EE450);
    sub_10000E268(v357, &v317, &qword_1005CDFD0, &qword_1004EE450);
    sub_100025F40(&v345, &qword_1005CDFD0, &qword_1004EE450);
    goto LABEL_38;
  }

  v124 = *(v3 + 160);
  v341 = *(v3 + 144);
  v342 = v124;
  v343 = *(v3 + 176);
  v344 = *(v3 + 192);
  v125 = *(v3 + 96);
  v337 = *(v3 + 80);
  v338 = v125;
  v126 = *(v3 + 128);
  v339 = *(v3 + 112);
  v340 = v126;
  v127 = *(v3 + 32);
  v333 = *(v3 + 16);
  v334 = v127;
  v128 = *(v3 + 64);
  v335 = *(v3 + 48);
  v336 = v128;
  if (sub_10000FE74(&v333) == 1)
  {
    sub_10000E268(v368, &v317, &qword_1005CDFD0, &qword_1004EE450);
    sub_10000E268(v357, &v317, &qword_1005CDFD0, &qword_1004EE450);
LABEL_38:
    v134 = *(v34 + 160);
    v341 = *(v34 + 144);
    v342 = v134;
    v343 = *(v34 + 176);
    v344 = *(v34 + 192);
    v135 = *(v34 + 96);
    v337 = *(v34 + 80);
    v338 = v135;
    v136 = *(v34 + 128);
    v339 = *(v34 + 112);
    v340 = v136;
    v137 = *(v34 + 32);
    v333 = *(v34 + 16);
    v334 = v137;
    v138 = *(v34 + 64);
    v335 = *(v34 + 48);
    v336 = v138;
    v106 = &qword_1005CDFD0;
    v107 = &qword_1004EE450;
    v108 = &v333;
    goto LABEL_28;
  }

  v325 = v304[8];
  v326 = v304[9];
  v327 = v304[10];
  v328 = v304[11];
  v321 = v304[4];
  v322 = v304[5];
  v323 = v304[6];
  v324 = v304[7];
  v317 = v304[0];
  v318 = v304[1];
  v319 = v304[2];
  v320 = v304[3];
  if (sub_10000FE88(&v317) == 1)
  {
    v139 = UInt32.init(_:)(&v317);
    v140 = *(v139 + 80);
    v405 = *(v139 + 64);
    v406 = v140;
    v407 = *(v139 + 96);
    *&v408 = *(v139 + 112);
    v141 = *(v139 + 16);
    v401 = *v139;
    v402 = v141;
    v142 = *(v139 + 48);
    v403 = *(v139 + 32);
    v404 = v142;
    v313 = v341;
    v314 = v342;
    v315 = v343;
    v316 = v344;
    v309 = v337;
    v310 = v338;
    v311 = v339;
    v312 = v340;
    v305 = v333;
    v306 = v334;
    v307 = v335;
    v308 = v336;
    if (sub_10000FE88(&v305) == 1)
    {
      v143 = UInt32.init(_:)(&v305);
      v144 = *(v143 + 80);
      v416 = *(v143 + 64);
      v417 = v144;
      v418 = *(v143 + 96);
      *&v419 = *(v143 + 112);
      v145 = *(v143 + 16);
      v412 = *v143;
      v413 = v145;
      v146 = *(v143 + 48);
      v414 = *(v143 + 32);
      v415 = v146;
      sub_10000E268(v368, &v292, &qword_1005CDFD0, &qword_1004EE450);
      sub_10000E268(v357, &v292, &qword_1005CDFD0, &qword_1004EE450);
      v147 = static BodyStructure.Multipart.__derived_struct_equals(_:_:)(&v401, &v412);
      goto LABEL_54;
    }

LABEL_52:
    UInt32.init(_:)(&v305);
    sub_10000E268(v368, &v292, &qword_1005CDFD0, &qword_1004EE450);
    sub_10000E268(v357, &v292, &qword_1005CDFD0, &qword_1004EE450);
    sub_100025F40(&v345, &qword_1005CDFD0, &qword_1004EE450);
LABEL_55:
    v313 = __src[8];
    v314 = __src[9];
    v315 = __src[10];
    v316 = __src[11];
    v309 = __src[4];
    v310 = __src[5];
    v311 = __src[6];
    v312 = __src[7];
    v305 = __src[0];
    v306 = __src[1];
    v307 = __src[2];
    v308 = __src[3];
    v106 = &qword_1005CDFD0;
    v107 = &qword_1004EE450;
    v108 = &v305;
    goto LABEL_28;
  }

  v163 = UInt32.init(_:)(&v317);
  v164 = v163[9];
  v409 = v163[8];
  v410 = v164;
  v411 = v163[10];
  v165 = v163[5];
  v405 = v163[4];
  v406 = v165;
  v166 = v163[6];
  v408 = v163[7];
  v407 = v166;
  v167 = v163[1];
  v401 = *v163;
  v402 = v167;
  v168 = v163[2];
  v404 = v163[3];
  v403 = v168;
  v316 = v344;
  v315 = v343;
  v314 = v342;
  v313 = v341;
  v312 = v340;
  v311 = v339;
  v310 = v338;
  v309 = v337;
  v308 = v336;
  v307 = v335;
  v306 = v334;
  v305 = v333;
  if (sub_10000FE88(&v305) == 1)
  {
    goto LABEL_52;
  }

  v182 = UInt32.init(_:)(&v305);
  v183 = v182[9];
  v420 = v182[8];
  v421 = v183;
  v422 = v182[10];
  v184 = v182[5];
  v416 = v182[4];
  v417 = v184;
  v185 = v182[7];
  v418 = v182[6];
  v419 = v185;
  v186 = v182[1];
  v412 = *v182;
  v413 = v186;
  v187 = v182[3];
  v414 = v182[2];
  v415 = v187;
  sub_10000E268(v368, &v292, &qword_1005CDFD0, &qword_1004EE450);
  sub_10000E268(v357, &v292, &qword_1005CDFD0, &qword_1004EE450);
  v147 = static BodyStructure.Singlepart.__derived_struct_equals(_:_:)(&v401, &v412);
LABEL_54:
  v188 = v147;
  sub_100025F40(&v345, &qword_1005CDFD0, &qword_1004EE450);
  if ((v188 & 1) == 0)
  {
    goto LABEL_55;
  }

LABEL_17:
  v325 = __src[8];
  v326 = __src[9];
  v327 = __src[10];
  v328 = __src[11];
  v321 = __src[4];
  v322 = __src[5];
  v323 = __src[6];
  v324 = __src[7];
  v317 = __src[0];
  v318 = __src[1];
  v319 = __src[2];
  v320 = __src[3];
  sub_100025F40(&v317, &qword_1005CDFD0, &qword_1004EE450);
  if ((sub_1002F2BE0(*(v34 + 200), *(v3 + 200)) & 1) == 0)
  {
    return 0;
  }

  v41 = *(v34 + 352);
  v42 = *(v34 + 320);
  v353 = *(v34 + 336);
  v354 = v41;
  v43 = *(v34 + 352);
  v355 = *(v34 + 368);
  v44 = *(v34 + 288);
  v45 = *(v34 + 256);
  v349 = *(v34 + 272);
  v350 = v44;
  v46 = *(v34 + 288);
  v47 = *(v34 + 320);
  v351 = *(v34 + 304);
  v352 = v47;
  v48 = *(v34 + 224);
  v345 = *(v34 + 208);
  v346 = v48;
  v49 = *(v34 + 256);
  v50 = *(v34 + 208);
  v51 = *(v34 + 224);
  v347 = *(v34 + 240);
  v348 = v49;
  v52 = *(v3 + 352);
  v53 = *(v3 + 320);
  v341 = *(v3 + 336);
  v342 = v52;
  v54 = *(v3 + 352);
  v343 = *(v3 + 368);
  v55 = *(v3 + 288);
  v56 = *(v3 + 256);
  v337 = *(v3 + 272);
  v338 = v55;
  v57 = *(v3 + 288);
  v58 = *(v3 + 320);
  v339 = *(v3 + 304);
  v340 = v58;
  v59 = *(v3 + 224);
  v333 = *(v3 + 208);
  v334 = v59;
  v60 = *(v3 + 256);
  v62 = *(v3 + 208);
  v61 = *(v3 + 224);
  v335 = *(v3 + 240);
  v336 = v60;
  v63 = *(v34 + 352);
  __dst[8] = *(v34 + 336);
  __dst[9] = v63;
  __dst[10] = *(v34 + 368);
  v64 = *(v34 + 288);
  __dst[4] = *(v34 + 272);
  __dst[5] = v64;
  v65 = *(v34 + 320);
  __dst[6] = *(v34 + 304);
  __dst[7] = v65;
  v66 = *(v34 + 224);
  __dst[0] = *(v34 + 208);
  __dst[1] = v66;
  v67 = *(v34 + 256);
  __dst[2] = *(v34 + 240);
  __dst[3] = v67;
  v68 = *(v3 + 368);
  *(&__dst[20] + 8) = v54;
  *(&__dst[21] + 8) = v68;
  *(&__dst[16] + 8) = v57;
  *(&__dst[17] + 8) = v339;
  *(&__dst[18] + 8) = v53;
  *(&__dst[19] + 8) = v341;
  *(&__dst[15] + 8) = v337;
  *(&__dst[11] + 8) = v62;
  *(&__dst[12] + 8) = v61;
  *(&__dst[13] + 8) = v335;
  *(&__dst[14] + 8) = v56;
  v313 = v353;
  v314 = v43;
  v315 = *(v34 + 368);
  v309 = v349;
  v310 = v46;
  v311 = v351;
  v312 = v42;
  v305 = v50;
  v306 = v51;
  v356 = *(v34 + 384);
  v344 = *(v3 + 384);
  LOBYTE(__dst[11]) = *(v34 + 384);
  BYTE8(__dst[22]) = *(v3 + 384);
  v316 = *(v34 + 384);
  v307 = v347;
  v308 = v45;
  if (sub_10003EC1C(&v305) == 1)
  {
    v69 = *(v3 + 352);
    v304[8] = *(v3 + 336);
    v304[9] = v69;
    v304[10] = *(v3 + 368);
    LOBYTE(v304[11]) = *(v3 + 384);
    v70 = *(v3 + 288);
    v304[4] = *(v3 + 272);
    v304[5] = v70;
    v71 = *(v3 + 320);
    v304[6] = *(v3 + 304);
    v304[7] = v71;
    v72 = *(v3 + 224);
    v304[0] = *(v3 + 208);
    v304[1] = v72;
    v73 = *(v3 + 256);
    v304[2] = *(v3 + 240);
    v304[3] = v73;
    if (sub_10003EC1C(v304) == 1)
    {
      sub_10000E268(&v345, &v292, &qword_1005CDFD0, &qword_1004EE450);
      v74 = &v292;
LABEL_21:
      sub_10000E268(&v333, v74, &qword_1005CDFD0, &qword_1004EE450);
      goto LABEL_22;
    }

LABEL_36:
    memcpy(v304, __dst, 0x169uLL);
    sub_10000E268(&v345, &v292, &qword_1005CDFD0, &qword_1004EE450);
    sub_10000E268(&v333, &v292, &qword_1005CDFD0, &qword_1004EE450);
    v106 = &unk_1005D6D18;
    v107 = &unk_1004EE458;
LABEL_51:
    v108 = v304;
    goto LABEL_28;
  }

  v129 = *(v3 + 352);
  v304[8] = *(v3 + 336);
  v304[9] = v129;
  v304[10] = *(v3 + 368);
  LOBYTE(v304[11]) = *(v3 + 384);
  v130 = *(v3 + 288);
  v304[4] = *(v3 + 272);
  v304[5] = v130;
  v131 = *(v3 + 320);
  v304[6] = *(v3 + 304);
  v304[7] = v131;
  v132 = *(v3 + 224);
  v304[0] = *(v3 + 208);
  v304[1] = v132;
  v133 = *(v3 + 256);
  v304[2] = *(v3 + 240);
  v304[3] = v133;
  if (sub_10003EC1C(v304) == 1)
  {
    goto LABEL_36;
  }

  v148 = *(v3 + 352);
  v288 = *(v3 + 336);
  v289 = v148;
  v290 = *(v3 + 368);
  v291 = *(v3 + 384);
  v149 = *(v3 + 288);
  v284 = *(v3 + 272);
  v285 = v149;
  v150 = *(v3 + 320);
  v286 = *(v3 + 304);
  v287 = v150;
  v151 = *(v3 + 224);
  v280 = *(v3 + 208);
  v281 = v151;
  v152 = *(v3 + 256);
  v282 = *(v3 + 240);
  v283 = v152;
  v153 = *(v34 + 352);
  v300 = *(v34 + 336);
  v301 = v153;
  v302 = *(v34 + 368);
  v303 = *(v34 + 384);
  v154 = *(v34 + 272);
  v297 = *(v34 + 288);
  v155 = *(v34 + 320);
  v298 = *(v34 + 304);
  v299 = v155;
  v156 = *(v34 + 224);
  v292 = *(v34 + 208);
  v293 = v156;
  v157 = *(v34 + 256);
  v294 = *(v34 + 240);
  v295 = v157;
  v296 = v154;
  if (sub_10000FE74(&v292) == 1)
  {
    v158 = *(v3 + 352);
    v276 = *(v3 + 336);
    v277 = v158;
    v278 = *(v3 + 368);
    v279 = *(v3 + 384);
    v159 = *(v3 + 288);
    v272 = *(v3 + 272);
    v273 = v159;
    v160 = *(v3 + 320);
    v274 = *(v3 + 304);
    v275 = v160;
    v161 = *(v3 + 224);
    v268 = *(v3 + 208);
    v269 = v161;
    v162 = *(v3 + 256);
    v270 = *(v3 + 240);
    v271 = v162;
    if (sub_10000FE74(&v268) == 1)
    {
      sub_10000E268(&v345, &v256, &qword_1005CDFD0, &qword_1004EE450);
      v74 = &v256;
      goto LABEL_21;
    }

    sub_10000E268(&v345, &v256, &qword_1005CDFD0, &qword_1004EE450);
    sub_10000E268(&v333, &v256, &qword_1005CDFD0, &qword_1004EE450);
    sub_100025F40(&v280, &qword_1005CDFD0, &qword_1004EE450);
LABEL_57:
    v189 = *(v34 + 352);
    v276 = *(v34 + 336);
    v277 = v189;
    v278 = *(v34 + 368);
    v279 = *(v34 + 384);
    v190 = *(v34 + 288);
    v272 = *(v34 + 272);
    v273 = v190;
    v191 = *(v34 + 320);
    v274 = *(v34 + 304);
    v275 = v191;
    v192 = *(v34 + 224);
    v268 = *(v34 + 208);
    v269 = v192;
    v193 = *(v34 + 256);
    v270 = *(v34 + 240);
    v271 = v193;
    v106 = &qword_1005CDFD0;
    v107 = &qword_1004EE450;
    v108 = &v268;
    goto LABEL_28;
  }

  v169 = *(v3 + 352);
  v276 = *(v3 + 336);
  v277 = v169;
  v278 = *(v3 + 368);
  v279 = *(v3 + 384);
  v170 = *(v3 + 288);
  v272 = *(v3 + 272);
  v273 = v170;
  v171 = *(v3 + 320);
  v274 = *(v3 + 304);
  v275 = v171;
  v172 = *(v3 + 224);
  v268 = *(v3 + 208);
  v269 = v172;
  v173 = *(v3 + 256);
  v270 = *(v3 + 240);
  v271 = v173;
  if (sub_10000FE74(&v268) == 1)
  {
    sub_10000E268(&v345, &v256, &qword_1005CDFD0, &qword_1004EE450);
    sub_10000E268(&v333, &v256, &qword_1005CDFD0, &qword_1004EE450);
    goto LABEL_57;
  }

  v264 = v300;
  v265 = v301;
  v266 = v302;
  v267 = v303;
  v260 = v296;
  v261 = v297;
  v262 = v298;
  v263 = v299;
  v256 = v292;
  v257 = v293;
  v258 = v294;
  v259 = v295;
  if (sub_10000FE88(&v256) == 1)
  {
    v194 = UInt32.init(_:)(&v256);
    v195 = *(v194 + 80);
    v383 = *(v194 + 64);
    v384 = v195;
    v385 = *(v194 + 96);
    *&v386 = *(v194 + 112);
    v196 = *(v194 + 16);
    v379 = *v194;
    v380 = v196;
    v197 = *(v194 + 48);
    v381 = *(v194 + 32);
    v382 = v197;
    v252 = v276;
    v253 = v277;
    v254 = v278;
    v255 = v279;
    v248 = v272;
    v249 = v273;
    v250 = v274;
    v251 = v275;
    v244 = v268;
    v245 = v269;
    v246 = v270;
    v247 = v271;
    if (sub_10000FE88(&v244) == 1)
    {
      v198 = UInt32.init(_:)(&v244);
      v199 = *(v198 + 80);
      v394 = *(v198 + 64);
      v395 = v199;
      v396 = *(v198 + 96);
      *&v397 = *(v198 + 112);
      v200 = *(v198 + 16);
      v390 = *v198;
      v391 = v200;
      v201 = *(v198 + 48);
      v392 = *(v198 + 32);
      v393 = v201;
      sub_10000E268(&v345, v237, &qword_1005CDFD0, &qword_1004EE450);
      sub_10000E268(&v333, v237, &qword_1005CDFD0, &qword_1004EE450);
      v202 = static BodyStructure.Multipart.__derived_struct_equals(_:_:)(&v379, &v390);
      goto LABEL_74;
    }

LABEL_72:
    UInt32.init(_:)(&v244);
    sub_10000E268(&v345, v237, &qword_1005CDFD0, &qword_1004EE450);
    sub_10000E268(&v333, v237, &qword_1005CDFD0, &qword_1004EE450);
    sub_100025F40(&v280, &qword_1005CDFD0, &qword_1004EE450);
LABEL_75:
    v252 = __dst[8];
    v253 = __dst[9];
    v254 = __dst[10];
    v255 = __dst[11];
    v248 = __dst[4];
    v249 = __dst[5];
    v250 = __dst[6];
    v251 = __dst[7];
    v244 = __dst[0];
    v245 = __dst[1];
    v246 = __dst[2];
    v247 = __dst[3];
    v106 = &qword_1005CDFD0;
    v107 = &qword_1004EE450;
    v108 = &v244;
    goto LABEL_28;
  }

  v213 = UInt32.init(_:)(&v256);
  v214 = v213[9];
  v387 = v213[8];
  v388 = v214;
  v389 = v213[10];
  v215 = v213[5];
  v383 = v213[4];
  v384 = v215;
  v216 = v213[6];
  v386 = v213[7];
  v385 = v216;
  v217 = v213[1];
  v379 = *v213;
  v380 = v217;
  v218 = v213[2];
  v382 = v213[3];
  v381 = v218;
  v255 = v279;
  v253 = v277;
  v254 = v278;
  v251 = v275;
  v252 = v276;
  v249 = v273;
  v250 = v274;
  v247 = v271;
  v248 = v272;
  v245 = v269;
  v246 = v270;
  v244 = v268;
  if (sub_10000FE88(&v244) == 1)
  {
    goto LABEL_72;
  }

  v219 = UInt32.init(_:)(&v244);
  v220 = v219[9];
  v398 = v219[8];
  v399 = v220;
  v400 = v219[10];
  v221 = v219[5];
  v394 = v219[4];
  v395 = v221;
  v222 = v219[6];
  v397 = v219[7];
  v396 = v222;
  v223 = v219[1];
  v390 = *v219;
  v391 = v223;
  v224 = v219[2];
  v393 = v219[3];
  v392 = v224;
  sub_10000E268(&v345, v237, &qword_1005CDFD0, &qword_1004EE450);
  sub_10000E268(&v333, v237, &qword_1005CDFD0, &qword_1004EE450);
  v202 = static BodyStructure.Singlepart.__derived_struct_equals(_:_:)(&v379, &v390);
LABEL_74:
  v225 = v202;
  sub_100025F40(&v280, &qword_1005CDFD0, &qword_1004EE450);
  if ((v225 & 1) == 0)
  {
    goto LABEL_75;
  }

LABEL_22:
  v300 = __dst[8];
  v301 = __dst[9];
  v302 = __dst[10];
  v303 = __dst[11];
  v297 = __dst[5];
  v298 = __dst[6];
  v299 = __dst[7];
  v292 = __dst[0];
  v293 = __dst[1];
  v294 = __dst[2];
  v295 = __dst[3];
  v296 = __dst[4];
  sub_100025F40(&v292, &qword_1005CDFD0, &qword_1004EE450);
  v75 = (v34 + 392);
  v76 = *(v34 + 472);
  v272 = *(v34 + 456);
  v273 = v76;
  v274 = *(v34 + 488);
  *&v275 = *(v34 + 504);
  v77 = *(v34 + 408);
  v268 = *(v34 + 392);
  v269 = v77;
  v78 = *(v34 + 440);
  v270 = *(v34 + 424);
  v271 = v78;
  v79 = (v3 + 392);
  v80 = *(v3 + 440);
  v258 = *(v3 + 424);
  v259 = v80;
  v81 = *(v3 + 408);
  v256 = *(v3 + 392);
  v257 = v81;
  *&v263 = *(v3 + 504);
  v82 = *(v3 + 488);
  v261 = *(v3 + 472);
  v262 = v82;
  v260 = *(v3 + 456);
  v83 = *(&v270 + 1);
  v84 = (v34 + 440);
  v85 = (v3 + 440);
  if (!*(&v270 + 1))
  {
    if (!*(&v258 + 1))
    {
      v203 = *(v34 + 408);
      v304[0] = *v75;
      v304[1] = v203;
      v304[2] = *(v34 + 424);
      v204 = *(v34 + 488);
      v304[5] = *(v34 + 472);
      v304[6] = v204;
      *&v304[7] = *(v34 + 504);
      v205 = *v84;
      v304[4] = *(v34 + 456);
      v304[3] = v205;
      sub_10000E268(&v268, &v280, &qword_1005D8038, &unk_1004F4C00);
      sub_10000E268(&v256, &v280, &qword_1005D8038, &unk_1004F4C00);
      result = sub_100025F40(v304, &qword_1005D8038, &unk_1004F4C00);
      goto LABEL_62;
    }

    goto LABEL_50;
  }

  if (!*(&v258 + 1))
  {
LABEL_50:
    v174 = *(v34 + 408);
    v304[0] = *v75;
    v304[1] = v174;
    v175 = *(v34 + 488);
    v304[5] = *(v34 + 472);
    v304[6] = v175;
    v176 = *v84;
    v304[4] = *(v34 + 456);
    v304[3] = v176;
    v177 = *v79;
    *(&v304[8] + 8) = *(v3 + 408);
    *(&v304[7] + 8) = v177;
    v178 = *(v3 + 456);
    *(&v304[10] + 8) = *v85;
    v179 = *(v3 + 472);
    *(&v304[13] + 8) = *(v3 + 488);
    *&v304[2] = *(v34 + 424);
    *(&v304[2] + 1) = *(&v270 + 1);
    v180 = *(v3 + 424);
    *&v304[7] = *(v34 + 504);
    *(&v304[9] + 1) = v180;
    v181 = *(v3 + 504);
    *&v304[10] = *(&v258 + 1);
    *(&v304[14] + 1) = v181;
    *(&v304[12] + 8) = v179;
    *(&v304[11] + 8) = v178;
    sub_10000E268(&v268, &v280, &qword_1005D8038, &unk_1004F4C00);
    sub_10000E268(&v256, &v280, &qword_1005D8038, &unk_1004F4C00);
    v106 = &unk_1005D80F0;
    v107 = &unk_1004F3C20;
    goto LABEL_51;
  }

  v86 = *(v3 + 424);
  v87 = *(v3 + 408);
  v237[0] = *v79;
  v237[1] = v87;
  *&v238 = v86;
  *(&v238 + 1) = *(&v258 + 1);
  v88 = *(v3 + 488);
  v241 = *(v3 + 472);
  v242 = v88;
  v243 = *(v3 + 504);
  v89 = *(v3 + 456);
  v239 = *v85;
  v240 = v89;
  v304[0] = v237[0];
  v304[1] = v87;
  *&v304[7] = v243;
  v304[6] = v88;
  v304[5] = v241;
  v304[4] = v89;
  v304[3] = v239;
  v304[2] = v238;
  v90 = *(v34 + 408);
  v280 = *v75;
  v281 = v90;
  v91 = *(v34 + 424);
  v92 = *v84;
  v93 = *(v34 + 456);
  v94 = *(v34 + 472);
  v95 = *(v34 + 488);
  *&v287 = *(v34 + 504);
  v285 = v94;
  v286 = v95;
  v283 = v92;
  v284 = v93;
  *&v282 = v91;
  *(&v282 + 1) = *(&v270 + 1);
  sub_10000E268(&v268, &v244, &qword_1005D8038, &unk_1004F4C00);
  sub_10000E268(&v256, &v244, &qword_1005D8038, &unk_1004F4C00);
  v96 = static Envelope.__derived_struct_equals(_:_:)(&v280, v304);
  sub_100025F40(v237, &qword_1005D8038, &unk_1004F4C00);
  v97 = *(v34 + 408);
  v244 = *v75;
  v245 = v97;
  *&v246 = *(v34 + 424);
  *(&v246 + 1) = v83;
  v98 = *(v34 + 488);
  v249 = *(v34 + 472);
  v250 = v98;
  *&v251 = *(v34 + 504);
  v99 = *(v34 + 456);
  v247 = *v84;
  v248 = v99;
  result = sub_100025F40(&v244, &qword_1005D8038, &unk_1004F4C00);
  if ((v96 & 1) == 0)
  {
    return 0;
  }

LABEL_62:
  v206 = *(v34 + 512);
  v207 = *(v3 + 512);
  if (v206)
  {
    if (!v207)
    {
      return 0;
    }

    v208 = sub_100083750(v206, v207);

    v209 = v34;
    if ((v208 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v209 = v34;
    if (v207)
    {
      return 0;
    }
  }

  v210 = *(v209 + 520);
  v211 = *(v3 + 520);
  if (v210)
  {
    if (!v211)
    {
      return 0;
    }

    v212 = sub_100083478(v210, v211);

    v209 = v34;
    if ((v212 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v211)
  {
    return 0;
  }

  v226 = *(v3 + 536);
  if (*(v209 + 536))
  {
    if (!*(v3 + 536))
    {
      return 0;
    }
  }

  else
  {
    if (*(v209 + 528) != *(v3 + 528))
    {
      v226 = 1;
    }

    if (v226)
    {
      return 0;
    }
  }

  v227 = *(v3 + 544);
  if (*(v209 + 544))
  {
    if (!*(v3 + 544))
    {
      return 0;
    }
  }

  else
  {
    if (*(v209 + 540) != *(v3 + 540))
    {
      v227 = 1;
    }

    if (v227)
    {
      return 0;
    }
  }

  if (*(v209 + 560))
  {
    if ((*(v3 + 560) & 1) == 0)
    {
      return 0;
    }

    goto LABEL_96;
  }

  if (*(v3 + 560))
  {
    return 0;
  }

  v228 = *(v209 + 552);
  v229 = *(v3 + 552);
  if (((v229 | v228) & 0x8000000000000000) == 0)
  {
    v230 = v229 == v228;
    v209 = v34;
    if (!v230)
    {
      return 0;
    }

LABEL_96:
    v231 = *(v209 + 576);
    v232 = *(v3 + 576);
    if (v231)
    {
      if (!v232 || (*(v34 + 568) != *(v3 + 568) || v231 != v232) && (sub_1004A6D34() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v232)
    {
      return 0;
    }

    v233 = *(v34 + 592);
    v234 = *(v3 + 592);
    if (v233)
    {
      if (!v234 || (static ListID.__derived_struct_equals(_:_:)(*(v34 + 584), v233, *(v3 + 584), v234) & 1) == 0)
      {
        return 0;
      }
    }

    else if (v234)
    {
      return 0;
    }

    v235 = *(v34 + 608);
    v236 = *(v3 + 608);
    if (v235)
    {
      return v236 && (static ListID.__derived_struct_equals(_:_:)(*(v34 + 600), v235, *(v3 + 600), v236) & 1) != 0;
    }

    return !v236;
  }

  __break(1u);
  return result;
}