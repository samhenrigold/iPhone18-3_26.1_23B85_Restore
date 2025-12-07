void sub_100062990(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 16);
  v5 = [*(a2 + 16) viewContext];
  v6 = [v4 objectID];
  v7 = [v5 objectWithID:v6];

  v14[3] = sub_1000362AC(0, &qword_100106F50, NSManagedObject_ptr);
  v14[0] = v7;
  v8 = v7;
  v9 = sub_10003296C(v14);
  sub_100035DA8(v14);
  v10 = [v9 isPasswordProtected];
  v11 = v10;
  if (v10)
  {
    sub_100066AA8();
    v12 = swift_allocError();
    *v13 = 0;

    v9 = v12;
  }

  *a3 = v9;
  *(a3 + 8) = v11;
}

void sub_100062AB8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

unint64_t sub_100062B20(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100062BEC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100030378(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100035DA8(v11);
  return v7;
}

unint64_t sub_100062BEC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100062CF8(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1000B5C30();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_100062CF8(uint64_t a1, unint64_t a2)
{
  v3 = sub_100062D44(a1, a2);
  sub_100062E74(&off_1000F3208);
  return v3;
}

void *sub_100062D44(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_100041C10(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1000B5C30();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1000B56F0();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100041C10(v10, 0);
        result = sub_1000B5C00();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100062E74(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100062F60(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_100062F60(char *result, int64_t a2, char a3, char *a4)
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
    sub_100030480(&qword_100106FB0, &unk_1000CC360);
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

unint64_t sub_100063054(uint64_t a1)
{
  sub_1000B4DB0();
  sub_100066EA8(&unk_100107790, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v2 = sub_1000B5590();
  return sub_100066134(a1, v2, &type metadata accessor for URL, &qword_100107B48, &type metadata accessor for URL, &protocol conformance descriptor for URL);
}

unint64_t sub_100063128(uint64_t a1)
{
  sub_100030480(&qword_100106AE0, &unk_1000CA340);
  sub_100067020(&qword_100107B60, &qword_100106AE0, &unk_1000CA340, &protocol conformance descriptor for ICObjectReferences<A>);
  v2 = sub_1000B5590();

  return sub_100065EB8(a1, v2);
}

uint64_t sub_1000631D0()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_10006320C(uint64_t a1, uint64_t a2)
{
  sub_1000B5FB0();
  sub_1000B56A0();
  v4 = sub_1000B5FE0();

  return sub_10006607C(a1, a2, v4);
}

unint64_t sub_100063284(uint64_t a1)
{
  sub_1000B4F00();
  sub_100066EA8(&qword_100106FE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v2 = sub_1000B5590();
  return sub_100066134(a1, v2, &type metadata accessor for UUID, &qword_100107B58, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
}

unint64_t sub_100063358(uint64_t a1)
{
  sub_1000B5620();
  sub_1000B5FB0();
  sub_1000B56A0();
  v2 = sub_1000B5FE0();

  return sub_1000662D4(a1, v2);
}

unint64_t sub_1000633EC(uint64_t a1)
{
  v2 = sub_1000B5FA0();

  return sub_1000663D8(a1, v2);
}

void *sub_100063430(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1000335F8(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_100030480(&qword_100106D90, &qword_1000CAB00);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100063534(uint64_t a1)
{
  v70 = _s3TagVMa(0);
  v4 = *(v70 - 8);
  __chkstk_darwin(v70, v5);
  v68 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100030480(&qword_100107B40, &unk_1000CC330);
  v9 = __chkstk_darwin(v7 - 8, v8);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v9, v12);
  v67 = &v57 - v14;
  result = __chkstk_darwin(v13, v15);
  v18 = &v57 - v17;
  v19 = *(a1 + 16);
  v20 = *v2;
  v21 = *(*v2 + 16);
  v22 = v21 + v19;
  if (__OFADD__(v21, v19))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v69 = v11;
  if (!isUniquelyReferenced_nonNull_native || (v24 = v20[3] >> 1, v24 < v22))
  {
    if (v21 <= v22)
    {
      v25 = v21 + v19;
    }

    else
    {
      v25 = v21;
    }

    v20 = sub_1000338C0(isUniquelyReferenced_nonNull_native, v25, 1, v20);
    v24 = v20[3] >> 1;
  }

  v26 = v20[2];
  v22 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v21 = *(v4 + 72);
  v27 = v24 - v26;
  result = sub_100035A64(&v71, v20 + v22 + v21 * v26, v24 - v26, a1);
  if (result < v19)
  {
    goto LABEL_16;
  }

  if (result)
  {
    v29 = v20[2];
    v30 = __OFADD__(v29, result);
    v31 = v29 + result;
    if (v30)
    {
      __break(1u);
      goto LABEL_20;
    }

    v20[2] = v31;
  }

  if (result != v27)
  {
    result = sub_100035A5C(v71);
LABEL_14:
    *v2 = v20;
    return result;
  }

LABEL_17:
  v66 = v20[2];
  v28 = v72;
  v59 = v72;
  v60 = v71;
  v31 = v74;
  v57 = v73;
  v32 = v75;
  if (v75)
  {
    v33 = v74;
LABEL_27:
    v37 = (v32 - 1) & v32;
    sub_1000361E0(*(v60 + 48) + (__clz(__rbit64(v32)) | (v33 << 6)) * v21, v18);
    v62 = *(v1 + 56);
    v62(v18, 0, 1, v70);
    v36 = v33;
    while (1)
    {
      v38 = v67;
      sub_100030C74(v18, v67, &qword_100107B40, &unk_1000CC330);
      v39 = *(v1 + 48);
      v1 += 48;
      v65 = v39;
      if (v39(v38, 1, v70) == 1)
      {
        break;
      }

      v58 = (v57 + 64) >> 6;
      v61 = v4 + 56;
      v40 = v66;
      while (1)
      {
        sub_100066D1C(v38);
        v44 = v20[3];
        v45 = v44 >> 1;
        v66 = v40;
        if ((v44 >> 1) < v40 + 1)
        {
          v20 = sub_1000338C0((v44 > 1), v40 + 1, 1, v20);
          v45 = v20[3] >> 1;
        }

        v46 = v69;
        sub_100030C74(v18, v69, &qword_100107B40, &unk_1000CC330);
        if (v65(v46, 1, v70) != 1)
        {
          break;
        }

        v47 = v36;
        v48 = v69;
LABEL_37:
        sub_100066D1C(v48);
        v41 = v66;
        v36 = v47;
LABEL_32:
        v42 = v70;
        v20[2] = v41;
        v38 = v67;
        sub_100030C74(v18, v67, &qword_100107B40, &unk_1000CC330);
        v43 = v65(v38, 1, v42);
        v40 = v66;
        if (v43 == 1)
        {
          goto LABEL_29;
        }
      }

      v63 = v20 + v22;
      v49 = v66;
      if (v66 <= v45)
      {
        v49 = v45;
      }

      v64 = v49;
      v48 = v69;
      while (1)
      {
        v53 = v68;
        sub_100050EC4(v48, v68);
        if (v66 == v64)
        {
          sub_100066D84(v53);
          v41 = v64;
          v66 = v64;
          goto LABEL_32;
        }

        v4 = v66;
        sub_100066D1C(v18);
        sub_100050EC4(v53, &v63[v4 * v21]);
        if (!v37)
        {
          break;
        }

        v54 = v36;
LABEL_52:
        v56 = __clz(__rbit64(v37));
        v37 &= v37 - 1;
        sub_1000361E0(*(v60 + 48) + (v56 | (v54 << 6)) * v21, v18);
        v50 = 0;
        v36 = v54;
LABEL_42:
        v66 = v4 + 1;
        v51 = v70;
        v62(v18, v50, 1, v70);
        v48 = v69;
        sub_100030C74(v18, v69, &qword_100107B40, &unk_1000CC330);
        v52 = v65(v48, 1, v51);
        v47 = v36;
        if (v52 == 1)
        {
          goto LABEL_37;
        }
      }

      if (v58 <= (v36 + 1))
      {
        v55 = v36 + 1;
      }

      else
      {
        v55 = v58;
      }

      while (1)
      {
        v54 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          break;
        }

        if (v54 >= v58)
        {
          v37 = 0;
          v50 = 1;
          v36 = v55 - 1;
          goto LABEL_42;
        }

        v37 = *(v59 + 8 * v54);
        ++v36;
        if (v37)
        {
          goto LABEL_52;
        }
      }

      __break(1u);
LABEL_54:
      v62 = *(v1 + 56);
      v62(v18, 1, 1, v70);
      v37 = 0;
    }

LABEL_29:
    sub_100066D1C(v18);
    sub_100035A5C(v60);
    result = sub_100066D1C(v38);
    goto LABEL_14;
  }

LABEL_20:
  v34 = (v57 + 64) >> 6;
  if (v34 <= v31 + 1)
  {
    v35 = v31 + 1;
  }

  else
  {
    v35 = (v57 + 64) >> 6;
  }

  v36 = v35 - 1;
  while (1)
  {
    v33 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v33 >= v34)
    {
      goto LABEL_54;
    }

    v32 = *(v28 + 8 * v33);
    ++v31;
    if (v32)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100063B24(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_100030480(&qword_100106AE0, &unk_1000CA340);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v47 = &v41 - v8;
  v9 = *v2;
  sub_100030480(&unk_100107810, &unk_1000CBD60);
  v46 = v4;
  result = sub_1000B5D10();
  v11 = result;
  if (*(v9 + 16))
  {
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v42 = v2;
    v43 = (v6 + 16);
    v44 = v9;
    v45 = v6;
    v48 = (v6 + 32);
    v18 = result + 64;
    v52 = v5;
    v19 = v47;
    while (v16)
    {
      v22 = __clz(__rbit64(v16));
      v23 = (v16 - 1) & v16;
LABEL_15:
      v26 = v22 | (v12 << 6);
      v27 = *(v9 + 48) + *(v45 + 72) * v26;
      v28 = 24 * v26;
      v50 = *(v45 + 72);
      v51 = v23;
      if (v46)
      {
        (*v48)(v19, v27, v52);
        v29 = *(v9 + 56) + v28;
        v30 = *(v29 + 8);
        v49 = *v29;
        v31 = *(v29 + 16);
      }

      else
      {
        (*v43)(v19, v27, v52);
        v32 = *(v9 + 56) + v28;
        v30 = *(v32 + 8);
        v31 = *(v32 + 16);
        v49 = *v32;
        sub_100035D34(v49, v30, v31);
      }

      sub_100067020(&qword_100107B60, &qword_100106AE0, &unk_1000CA340, &protocol conformance descriptor for ICObjectReferences<A>);
      result = sub_1000B5590();
      v33 = -1 << *(v11 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v18 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        v19 = v47;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v18 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v18 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
      v19 = v47;
LABEL_7:
      *(v18 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = (*v48)(*(v11 + 48) + v50 * v20, v19, v52);
      v21 = *(v11 + 56) + 24 * v20;
      *v21 = v49;
      *(v21 + 8) = v30;
      *(v21 + 16) = v31;
      ++*(v11 + 16);
      v9 = v44;
      v16 = v51;
    }

    v24 = v12;
    while (1)
    {
      v12 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v25 = v13[v12];
      ++v24;
      if (v25)
      {
        v22 = __clz(__rbit64(v25));
        v23 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_34;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v13, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

_OWORD *sub_100063F60(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100030480(&unk_100107820, &unk_1000CBD70);
  v35 = v4;
  result = sub_1000B5D10();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v2;
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 4;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = (v20 + 32 * v19);
      if (v35)
      {
        sub_100030C64(v22, v36);
      }

      else
      {
        sub_100030378(v22, v36);
        v23 = v21;
      }

      sub_1000B5620();
      sub_1000B5FB0();
      sub_1000B56A0();
      v24 = sub_1000B5FE0();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + (v26 >> 6))) == 0)
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
          v31 = *(v14 + v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 6) + 8 * v15) = v21;
      result = sub_100030C64(v36, (*(v7 + 7) + 32 * v15));
      ++*(v7 + 2);
      v5 = v34;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_100064244(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_100030480(a3, a4);
  v37 = v6;
  result = sub_1000B5D10();
  v9 = result;
  if (*(v7 + 16))
  {
    v36 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v37 & 1) == 0)
      {

        v27 = v26;
      }

      sub_1000B5FB0();
      sub_1000B56A0();
      result = sub_1000B5FE0();
      v28 = -1 << *(v9 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v16 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v16 + 8 * v30);
          if (v34 != -1)
          {
            v17 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v29) & ~*(v16 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v36;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v35 = 1 << *(v7 + 32);
    v5 = v4;
    if (v35 >= 64)
    {
      bzero(v11, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_1000644E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1000B4DB0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_100030480(&qword_100106B10, &qword_1000CA378);
  v40 = v4;
  result = sub_1000B5D10();
  v12 = result;
  if (*(v10 + 16))
  {
    v44 = v9;
    v36 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v10;
    v39 = v6;
    v41 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v43 = *(v39 + 72);
      v26 = v25 + v43 * v24;
      if (v40)
      {
        (*v41)(v44, v26, v5);
        v42 = *(*(v10 + 56) + 8 * v24);
      }

      else
      {
        (*v37)(v44, v26, v5);
        v42 = *(*(v10 + 56) + 8 * v24);
        swift_errorRetain();
      }

      sub_100066EA8(&unk_100107790, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      result = sub_1000B5590();
      v27 = -1 << *(v12 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v19 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v19 + 8 * v29);
          if (v33 != -1)
          {
            v20 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v28) & ~*(v19 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = (*v41)(*(v12 + 48) + v43 * v20, v44, v5);
      *(*(v12 + 56) + 8 * v20) = v42;
      ++*(v12 + 16);
      v10 = v38;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v10 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v14, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v34;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_1000648BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1000B4F00();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_100030480(&qword_100106AF8, &unk_1000CA360);
  v45 = v4;
  result = sub_1000B5D10();
  v12 = result;
  if (*(v10 + 16))
  {
    v50 = v9;
    v41 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v42 = (v6 + 16);
    v43 = v10;
    v44 = v6;
    v46 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v49 = *(v44 + 72);
      v28 = v27 + v49 * v26;
      if (v45)
      {
        (*v46)(v50, v28, v5);
        v29 = (*(v10 + 56) + 16 * v26);
        v30 = *v29;
        v47 = v29[1];
        v48 = v30;
      }

      else
      {
        (*v42)(v50, v28, v5);
        v31 = (*(v10 + 56) + 16 * v26);
        v32 = *v31;
        v47 = v31[1];
        v48 = v32;
      }

      sub_100066EA8(&qword_100106FE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = sub_1000B5590();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = (*v46)(*(v12 + 48) + v49 * v20, v50, v5);
      v21 = (*(v12 + 56) + 16 * v20);
      v22 = v47;
      *v21 = v48;
      v21[1] = v22;
      ++*(v12 + 16);
      v10 = v43;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v25 = v14[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v17 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v40 = 1 << *(v10 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_100064CA4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1000B4DB0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v50 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_100030480(&qword_100106AD0, &unk_1000CA320);
  v49 = v4;
  result = sub_1000B5D10();
  v11 = result;
  if (*(v9 + 16))
  {
    v56 = v5;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v45 = v2;
    v46 = (v6 + 16);
    v47 = v9;
    v48 = v6;
    v51 = (v6 + 32);
    v18 = result + 64;
    v19 = v50;
    while (v16)
    {
      v23 = __clz(__rbit64(v16));
      v24 = (v16 - 1) & v16;
LABEL_15:
      v27 = v23 | (v12 << 6);
      v28 = *(v9 + 48) + *(v48 + 72) * v27;
      v54 = *(v48 + 72);
      v55 = v24;
      if (v49)
      {
        (*v51)(v19, v28, v56);
        v29 = (*(v9 + 56) + 32 * v27);
        v30 = *v29;
        v52 = v29[1];
        v53 = v30;
        v32 = v29[2];
        v31 = v29[3];
      }

      else
      {
        (*v46)(v19, v28, v56);
        v33 = (*(v9 + 56) + 32 * v27);
        v34 = v33[1];
        v32 = v33[2];
        v31 = v33[3];
        v53 = *v33;
        swift_errorRetain();
        v35 = v31;
        v52 = v34;

        v36 = v32;
      }

      sub_100066EA8(&unk_100107790, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      result = sub_1000B5590();
      v37 = -1 << *(v11 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v18 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        v19 = v50;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v18 + 8 * v39);
          if (v43 != -1)
          {
            v20 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v38) & ~*(v18 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
      v19 = v50;
LABEL_7:
      *(v18 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = (*v51)(*(v11 + 48) + v54 * v20, v19, v56);
      v21 = (*(v11 + 56) + 32 * v20);
      v22 = v52;
      *v21 = v53;
      v21[1] = v22;
      v21[2] = v32;
      v21[3] = v31;
      ++*(v11 + 16);
      v9 = v47;
      v16 = v55;
    }

    v25 = v12;
    while (1)
    {
      v12 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v26 = v13[v12];
      ++v25;
      if (v26)
      {
        v23 = __clz(__rbit64(v26));
        v24 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v49 & 1) == 0)
    {

      v3 = v45;
      goto LABEL_34;
    }

    v44 = 1 << *(v9 + 32);
    v3 = v45;
    if (v44 >= 64)
    {
      bzero(v13, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v44;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1000650B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100030480(&unk_100107800, &unk_1000CBD50);
  result = sub_1000B5D10();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
    v31 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      result = sub_1000B5FA0();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
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

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

void sub_100065318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v9 = a3;
  v31 = a1;
  v32 = a2;
  v10 = sub_100030480(&qword_100106AE0, &unk_1000CA340);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10, v12);
  v14 = &v31 - v13;
  v15 = *v5;
  v17 = sub_100063128(a4);
  v18 = v15[2];
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = v15[3];
  if (v22 < v20 || (a5 & 1) == 0)
  {
    if (v22 >= v20 && (a5 & 1) == 0)
    {
      sub_10005BE34();
      goto LABEL_9;
    }

    sub_100063B24(v20, a5 & 1);
    v23 = sub_100063128(a4);
    if ((v21 & 1) == (v24 & 1))
    {
      v17 = v23;
      goto LABEL_9;
    }

LABEL_15:
    sub_1000B5F50();
    __break(1u);
    return;
  }

LABEL_9:
  v25 = v32;
  v26 = *v6;
  if (v21)
  {
    v27 = v26[7] + 24 * v17;
    v28 = *v27;
    v29 = *(v27 + 8);
    *v27 = v31;
    *(v27 + 8) = v25;
    v30 = *(v27 + 16);
    *(v27 + 16) = v9;

    sub_100065534(v28, v29, v30);
  }

  else
  {
    (*(v11 + 16))(v14, a4, v10);
    sub_100065BE4(v17, v14, v31, v25, v9, v26);
  }
}

uint64_t sub_10006551C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100065534(void *a1, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 2:

      break;
    case 1:

      break;
    case 0:

      break;
  }
}

_OWORD *sub_1000655A8(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_100063358(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_10005C248();
      v8 = v16;
      goto LABEL_8;
    }

    sub_100063F60(v13, a3 & 1);
    v8 = sub_100063358(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for Key(0);
      result = sub_1000B5F50();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    sub_100035DA8(v19);

    return sub_100030C64(a1, v19);
  }

  else
  {
    sub_100065CC4(v8, a2, a1, v18);

    return a2;
  }
}

uint64_t sub_1000656E8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1000B4DB0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_100063054(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_10005C3C8();
      goto LABEL_7;
    }

    sub_1000644E0(v18, a3 & 1);
    v23 = sub_100063054(a2);
    if ((v19 & 1) == (v24 & 1))
    {
      v15 = v23;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_100065D2C(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_1000B5F50();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v21[7] + 8 * v15) = a1;
}

void sub_1000658B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v35 = a3;
  v36 = a4;
  v34 = a2;
  v11 = sub_1000B4DB0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11, v13);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v6;
  v18 = sub_100063054(a5);
  v19 = v16[2];
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_15;
  }

  v22 = v17;
  v23 = v16[3];
  if (v23 < v21 || (a6 & 1) == 0)
  {
    if (v23 >= v21 && (a6 & 1) == 0)
    {
      sub_10005C8D4();
      goto LABEL_7;
    }

    sub_100064CA4(v21, a6 & 1);
    v31 = sub_100063054(a5);
    if ((v22 & 1) == (v32 & 1))
    {
      v18 = v31;
      v24 = *v7;
      if (v22)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v12 + 16))(v15, a5, v11);
      sub_100065DE4(v18, v15, a1, v34, v35, v36, v24);
      return;
    }

LABEL_15:
    sub_1000B5F50();
    __break(1u);
    return;
  }

LABEL_7:
  v24 = *v7;
  if ((v22 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v25 = (v24[7] + 32 * v18);
  v26 = v25[2];
  v33 = v25[3];
  v27 = v34;
  v28 = v35;
  *v25 = a1;
  v25[1] = v27;
  v29 = v36;
  v25[2] = v28;
  v25[3] = v29;

  v30 = v33;
}

unint64_t sub_100065AC0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1000633EC(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_10005CB80();
    result = v17;
    goto LABEL_8;
  }

  sub_1000650B4(v14, a3 & 1);
  result = sub_1000633EC(a2);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a1;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_1000B5F50();
  __break(1u);
  return result;
}

uint64_t sub_100065BE4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a6[6];
  v13 = sub_100030480(&qword_100106AE0, &unk_1000CA340);
  result = (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a2, v13);
  v15 = a6[7] + 24 * a1;
  *v15 = a3;
  *(v15 + 8) = a4;
  *(v15 + 16) = a5;
  v16 = a6[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v18;
  }

  return result;
}

_OWORD *sub_100065CC4(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_100030C64(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_100065D2C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1000B4DB0();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_100065DE4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(a1 >> 6) + 8] |= 1 << a1;
  v14 = a7[6];
  v15 = sub_1000B4DB0();
  result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * a1, a2, v15);
  v17 = (a7[7] + 32 * a1);
  *v17 = a3;
  v17[1] = a4;
  v17[2] = a5;
  v17[3] = a6;
  v18 = a7[2];
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v20;
  }

  return result;
}

unint64_t sub_100065EB8(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_100030480(&qword_100106AE0, &unk_1000CA340);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v18 - v7;
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_100067020(&qword_100107B70, &qword_100106AE0, &unk_1000CA340, &protocol conformance descriptor for ICObjectReferences<A>);
      v16 = sub_1000B55E0();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_10006607C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1000B5F20())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100066134(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
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
      sub_100066EA8(v24, v25, v26);
      v20 = sub_1000B55E0();
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

unint64_t sub_1000662D4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1000B5620();
      v8 = v7;
      if (v6 == sub_1000B5620() && v8 == v9)
      {
        break;
      }

      v11 = sub_1000B5F20();

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

unint64_t sub_1000663D8(uint64_t a1, uint64_t a2)
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

uint64_t sub_100066444(uint64_t a1, char a2, void *a3)
{
  v67 = a3;
  v6 = sub_100030480(&qword_100106AE0, &unk_1000CA340);
  v65 = *(v6 - 8);
  v66 = v6;
  __chkstk_darwin(v6, v7);
  v68 = &v59 - v8;
  v9 = sub_100030480(&qword_100106AD8, &unk_1000CA330);
  v64 = *(v9 - 8);
  v11 = __chkstk_darwin(v9, v10);
  v63 = &v59 - v12;
  v61 = *(a1 + 16);
  if (!v61)
  {
  }

  v59 = v3;
  if (!*(a1 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v13 = v63;
  v14 = v63 + *(v11 + 48);
  v15 = *(v64 + 80);
  v62 = a1;
  v16 = (v65 + 32);
  v60 = a1 + ((v15 + 32) & ~v15);
  sub_100030C74(v60, v63, &qword_100106AD8, &unk_1000CA330);
  v17 = *v16;
  v18 = v68;
  (*v16)(v68, v13, v66);
  v20 = *v14;
  v19 = *(v14 + 8);
  v21 = *(v14 + 16);
  v22 = *v67;
  v24 = sub_100063128(v18);
  v25 = v22[2];
  v26 = (v23 & 1) == 0;
  v27 = v25 + v26;
  if (__OFADD__(v25, v26))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v28 = v23;
  if (v22[3] >= v27)
  {
    if (a2)
    {
      if ((v23 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v33 = v24;
      sub_10005BE34();
      v24 = v33;
      if ((v28 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  sub_100063B24(v27, a2 & 1);
  v29 = sub_100063128(v68);
  if ((v28 & 1) == (v30 & 1))
  {
    v24 = v29;
    if ((v28 & 1) == 0)
    {
LABEL_14:
      v34 = v68;
      v35 = *v67;
      v36 = v24;
      *(*v67 + 8 * (v24 >> 6) + 64) |= 1 << v24;
      v17(v35[6] + *(v65 + 72) * v24, v34, v66);
      v37 = v35[7] + 24 * v36;
      *v37 = v20;
      *(v37 + 8) = v19;
      *(v37 + 16) = v21;
      v38 = v35[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v35[2] = v40;
      if (v61 != 1)
      {
        v41 = 1;
        while (v41 < *(v62 + 16))
        {
          v42 = v63;
          sub_100030C74(v60 + *(v64 + 72) * v41, v63, &qword_100106AD8, &unk_1000CA330);
          v43 = *v16;
          v44 = v68;
          (*v16)(v68, v42, v66);
          v20 = *v14;
          v19 = *(v14 + 8);
          v21 = *(v14 + 16);
          v45 = *v67;
          v46 = sub_100063128(v44);
          v48 = v45[2];
          v49 = (v47 & 1) == 0;
          v39 = __OFADD__(v48, v49);
          v50 = v48 + v49;
          if (v39)
          {
            goto LABEL_26;
          }

          v51 = v47;
          if (v45[3] < v50)
          {
            sub_100063B24(v50, 1);
            v46 = sub_100063128(v68);
            if ((v51 & 1) != (v52 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v51)
          {
            goto LABEL_11;
          }

          v53 = v68;
          v54 = *v67;
          *(*v67 + 8 * (v46 >> 6) + 64) |= 1 << v46;
          v55 = v46;
          v43(v54[6] + *(v65 + 72) * v46, v53, v66);
          v56 = v54[7] + 24 * v55;
          *v56 = v20;
          *(v56 + 8) = v19;
          *(v56 + 16) = v21;
          v57 = v54[2];
          v39 = __OFADD__(v57, 1);
          v58 = v57 + 1;
          if (v39)
          {
            goto LABEL_27;
          }

          ++v41;
          v54[2] = v58;
          if (v61 == v41)
          {
          }
        }

        goto LABEL_25;
      }
    }

LABEL_11:
    v31 = swift_allocError();
    swift_willThrow();

    v71 = v31;
    swift_errorRetain();
    sub_100030480(&qword_100106EB8, &qword_1000CAD80);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_100065534(v20, v19, v21);
      (*(v65 + 8))(v68, v66);
    }

    goto LABEL_29;
  }

LABEL_28:
  sub_1000B5F50();
  __break(1u);
LABEL_29:
  v69 = 0;
  v70 = 0xE000000000000000;
  sub_1000B5C10(30);
  v72._object = 0x80000001000C75C0;
  v72._countAndFlagsBits = 0xD00000000000001BLL;
  sub_1000B56E0(v72);
  sub_1000B5CD0();
  v73._countAndFlagsBits = 39;
  v73._object = 0xE100000000000000;
  sub_1000B56E0(v73);
  result = sub_1000B5CE0();
  __break(1u);
  return result;
}

uint64_t sub_1000669DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100030480(&qword_100106AD8, &unk_1000CA330);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100066A50()
{
  result = qword_100107A70;
  if (!qword_100107A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107A70);
  }

  return result;
}

unint64_t sub_100066AA8()
{
  result = qword_100107A78;
  if (!qword_100107A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107A78);
  }

  return result;
}

unint64_t sub_100066B00()
{
  result = qword_100107A80;
  if (!qword_100107A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107A80);
  }

  return result;
}

unint64_t sub_100066B58()
{
  result = qword_100107A88;
  if (!qword_100107A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107A88);
  }

  return result;
}

unint64_t sub_100066BB0()
{
  result = qword_100107A90;
  if (!qword_100107A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107A90);
  }

  return result;
}

uint64_t sub_100066C38(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 sub_100066C54(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100066C68(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100066CB0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_100066CF4(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_100066D1C(uint64_t a1)
{
  v2 = sub_100030480(&qword_100107B40, &unk_1000CC330);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100066D84(uint64_t a1)
{
  v2 = _s3TagVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100066DE0()
{
  result = qword_100107B50;
  if (!qword_100107B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107B50);
  }

  return result;
}

uint64_t sub_100066E34()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100066EA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100066EF0(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  if (a4)
  {
  }

  else
  {
  }
}

uint64_t sub_100066F40()
{
  sub_100066EF0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 80, 7);
}

id sub_100066FB0(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  if (a4)
  {

    return swift_errorRetain();
  }

  else
  {

    return a3;
  }
}

id sub_100067000(void *a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
    return a1;
  }
}

void sub_10006700C(void *a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    sub_100065534(a1, a2, a3);
  }
}

uint64_t sub_100067020(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10003052C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void (*sub_100067068(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t), void *a4))(uint64_t, uint64_t)
{
  v8 = sub_1000B4DB0();
  v82 = *(v8 - 8);
  v83 = v8;
  __chkstk_darwin(v8, v9);
  v11 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_100030480(&qword_100106AE0, &unk_1000CA340);
  v12 = *(v84 - 8);
  v13 = *(v12 + 64);
  v15 = __chkstk_darwin(v84, v14);
  v17 = __chkstk_darwin(v15, v16);
  v19 = &v80 - v18;
  __chkstk_darwin(v17, v20);
  v22 = &v80 - v21;
  v23 = swift_allocObject();
  v86 = a3;
  v87 = v23;
  *(v23 + 16) = a3;
  *(v23 + 24) = a4;
  swift_beginAccess();
  v81 = a2;
  v24 = a2[3];
  v25 = *(v24 + 16);
  v85 = a4;
  v26 = a1;

  if (!v25 || (v27 = sub_100063128(a1), (v28 & 1) == 0))
  {
    swift_endAccess();
    if (qword_100106A60 != -1)
    {
      swift_once();
    }

    v40 = sub_1000B5530();
    sub_100036380(v40, qword_100107A58);
    v41 = v12;
    v42 = *(v12 + 16);
    v43 = v84;
    v42(v22, a1, v84);
    v44 = sub_1000B5520();
    v45 = sub_1000B5930();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      aBlock[0] = v81;
      *v46 = 136315138;
      sub_1000B5040();
      sub_100066EA8(&qword_100106F10, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v47 = v83;
      v48 = sub_1000B5EE0();
      v50 = v49;
      (*(v82 + 8))(v11, v47);
      (*(v41 + 8))(v22, v43);
      v51 = sub_100062B20(v48, v50, aBlock);

      *(v46 + 4) = v51;
      _os_log_impl(&_mh_execute_header, v44, v45, "Object to be previewed does not exist {url: %s}", v46, 0xCu);
      sub_100035DA8(v81);
    }

    else
    {

      (*(v41 + 8))(v22, v43);
    }

    sub_1000363B8();
    v52 = swift_allocError();
    *v53 = 4;
    swift_errorRetain();
    v86(v52, 1);

    v36 = [objc_allocWithZone(NSProgress) init];
    goto LABEL_12;
  }

  v83 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(v24 + 56) + 24 * v27;
  v31 = *v29;
  v30 = *(v29 + 8);
  v32 = *(v29 + 16);
  swift_endAccess();
  if (v32 <= 1)
  {
    if (v32)
    {
      v55 = objc_opt_self();
      v56 = v31;
      v36 = [v55 progressWithTotalUnitCount:1];
      [v36 setCompletedUnitCount:{objc_msgSend(v36, "totalUnitCount")}];
      v89 = sub_1000362AC(0, &qword_100106C00, ICCloudSyncingObject_ptr);
      aBlock[0] = v56;
      v57 = v56;
      v58 = sub_1000326F8(aBlock);
      sub_100035DA8(aBlock);
      v86(v58, 0);

      sub_100065534(v31, v30, 1);
      sub_100065534(v31, v30, 1);
    }

    else
    {
      sub_100030480(&qword_100106D88, &qword_1000CAAF8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000CAB50;
      v34 = swift_allocObject();
      v35 = v87;
      *(v34 + 16) = sub_1000679EC;
      *(v34 + 24) = v35;
      *(inited + 32) = sub_100067D5C;
      *(inited + 40) = v34;
      aBlock[0] = v30;
      sub_100035D34(v31, v30, 0);
      v36 = v31;

      sub_100063430(inited);
      v37 = aBlock[0];
      v38 = v81;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v92 = v38[3];
      v38[3] = 0x8000000000000000;
      sub_100065318(v31, v37, 0, v26, isUniquelyReferenced_nonNull_native);
      v38[3] = v92;
      swift_endAccess();
    }

    goto LABEL_12;
  }

  if (v32 == 2)
  {
    swift_errorRetain();
    v86(v31, 1);
    v36 = [objc_allocWithZone(NSProgress) init];
    sub_100065534(v31, v30, 2);
LABEL_12:

    return v36;
  }

  v59 = [objc_opt_self() progressWithTotalUnitCount:1];
  sub_100030480(&qword_100106D88, &qword_1000CAAF8);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_1000CAB50;
  v61 = swift_allocObject();
  v62 = v87;
  *(v61 + 16) = sub_1000679EC;
  *(v61 + 24) = v62;
  *(v60 + 32) = sub_100067D5C;
  *(v60 + 40) = v61;
  v63 = v81;
  swift_beginAccess();

  v86 = v59;
  v64 = swift_isUniquelyReferenced_nonNull_native();
  v92 = v63[3];
  v63[3] = 0x8000000000000000;
  sub_100065318(v59, v60, 0, v26, v64);
  v63[3] = v92;
  swift_endAccess();
  v65 = v12;
  v66 = *(v12 + 16);
  v67 = v84;
  v66(v19, v26, v84);
  v68 = *(v65 + 80);
  v69 = swift_allocObject();
  v82 = v69;
  *(v69 + 16) = v63;
  v80 = *(v65 + 32);
  v80(v69 + ((v68 + 24) & ~v68), v19, v67);
  v85 = v63[2];
  v70 = v83;
  v66(v83, v26, v67);
  v71 = (v68 + 16) & ~v68;
  v72 = (v13 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
  v73 = (v72 + 15) & 0xFFFFFFFFFFFFFFF8;
  v74 = swift_allocObject();
  v80(v74 + v71, v70, v67);
  v75 = v86;
  *(v74 + v72) = v86;
  *(v74 + v73) = v81;
  v76 = (v74 + ((v73 + 15) & 0xFFFFFFFFFFFFFFF8));
  v77 = v82;
  *v76 = sub_100067D64;
  v76[1] = v77;
  v90 = sub_100067D58;
  v91 = v74;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100062AB8;
  v89 = &unk_1000F4C78;
  v78 = _Block_copy(aBlock);
  swift_retain_n();
  v79 = v75;

  [v85 performBackgroundTask:v78];
  _Block_release(v78);

  return v79;
}

uint64_t sub_1000679F8()
{
  v1 = sub_100030480(&qword_100106AE0, &unk_1000CA340);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_100067AC8(void *a1, char a2)
{
  v5 = *(sub_100030480(&qword_100106AE0, &unk_1000CA340) - 8);
  v6 = *(v2 + 16);
  v7 = (v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80)));

  sub_100061BA0(a1, a2 & 1, v6, v7);
}

uint64_t sub_100067B5C()
{
  v1 = sub_100030480(&qword_100106AE0, &unk_1000CA340);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

uint64_t sub_100067C30(void *a1)
{
  v3 = *(sub_100030480(&qword_100106AE0, &unk_1000CA340) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);

  return sub_1000620EC(a1, (v1 + v4), v7, v8, v10, v11);
}

id sub_100067D68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v92 = a3;
  v4 = v3;
  v6 = sub_100030480(&qword_100106F88, &qword_1000CAE20);
  __chkstk_darwin(v6 - 8, v7);
  v90 = &v81 - v8;
  v9 = sub_100030480(&qword_100106E38, &unk_1000CB730);
  v11 = __chkstk_darwin(v9 - 8, v10);
  v89 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v13);
  v15 = &v81 - v14;
  v16 = sub_1000B4EA0();
  v88 = *(v16 - 8);
  v18 = __chkstk_darwin(v16, v17);
  v20 = &v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v18, v21);
  v24 = &v81 - v23;
  v26 = __chkstk_darwin(v22, v25);
  v28 = &v81 - v27;
  __chkstk_darwin(v26, v29);
  v31 = &v81 - v30;
  ObjectType = swift_getObjectType();
  v33 = v91;
  v34 = (*(a2 + 40))(v4[1], v4[2], v92, ObjectType, a2);
  v35 = v34;
  if (!v33)
  {
    v83 = v28;
    v84 = v31;
    v36 = v88;
    v85 = v20;
    v86 = 0;
    v91 = v34;
    v37 = v4[9];
    v82 = v24;
    if (v37)
    {
      v38 = sub_1000B55F0();
    }

    else
    {
      v38 = 0;
    }

    v39 = v36;
    [v91 setTypeUTI:v38];

    v40 = type metadata accessor for ICAttachmentArchiveModel(0);
    sub_100030C74(v4 + v40[12], v15, &qword_100106E38, &unk_1000CB730);
    v41 = *(v36 + 48);
    v42 = v16;
    v43 = v41(v15, 1, v16);
    v87 = v4;
    if (v43 == 1)
    {
      v44 = v83;
      sub_1000B4E90();
      v45 = v41(v15, 1, v42) == 1;
      v46 = v15;
      v47 = v84;
      v48 = v41;
      if (!v45)
      {
        sub_100036320(v46, &qword_100106E38, &unk_1000CB730);
      }
    }

    else
    {
      v44 = v83;
      (*(v39 + 32))(v83, v15, v42);
      v47 = v84;
      v48 = v41;
    }

    sub_1000B4E40();
    v49 = *(v39 + 8);
    v49(v44, v42);
    v50.super.isa = sub_1000B4E30().super.isa;
    v51 = v47;
    isa = v50.super.isa;
    v49(v51, v42);
    [v91 setCreationDate:isa];

    v53 = v89;
    sub_100030C74(v87 + v40[13], v89, &qword_100106E38, &unk_1000CB730);
    if (v48(v53, 1, v42) == 1)
    {
      v54 = v85;
      sub_1000B4E90();
      v55 = v48(v53, 1, v42);
      v56 = v90;
      if (v55 != 1)
      {
        sub_100036320(v53, &qword_100106E38, &unk_1000CB730);
      }
    }

    else
    {
      v54 = v85;
      (*(v39 + 32))(v85, v53, v42);
      v56 = v90;
    }

    v57 = v82;
    sub_1000B4E40();
    v49(v54, v42);
    v58 = sub_1000B4E30().super.isa;
    v49(v57, v42);
    v35 = v91;
    [v91 setModificationDate:v58];

    v59 = v87;
    if (*(v87 + v40[15] + 8))
    {
      v60 = sub_1000B55F0();
    }

    else
    {
      v60 = 0;
    }

    [v35 setTitle:v60];

    v61 = v59 + v40[16];
    v62 = 0.0;
    v63 = 0.0;
    v64 = 0.0;
    v65 = 0.0;
    if ((*(v61 + 32) & 1) == 0)
    {
      v64 = *(v61 + 16);
      v65 = *(v61 + 24);
      v62 = *v61;
      v63 = *(v61 + 8);
    }

    [v35 setBounds:{v62, v63, v64, v65}];
    v66 = v59 + v40[17];
    if ((*(v66 + 64) & 1) == 0)
    {
      v68 = *(v66 + 48);
      v67 = *(v66 + 56);
      v70 = *(v66 + 32);
      v69 = *(v66 + 40);
      v72 = *(v66 + 16);
      v71 = *(v66 + 24);
      v73 = *(v66 + 8);
      [v35 setCroppingQuadTopLeftX:*v66];
      [v35 setCroppingQuadTopLeftY:v73];
      [v35 setCroppingQuadTopRightX:v72];
      [v35 setCroppingQuadTopRightY:v71];
      [v35 setCroppingQuadBottomRightX:v70];
      [v35 setCroppingQuadBottomRightY:v69];
      [v35 setCroppingQuadBottomLeftX:v68];
      [v35 setCroppingQuadBottomLeftY:v67];
    }

    [v35 setOrientation:word_1000CCB76[*(v59 + v40[18])]];
    [v35 setImageFilterType:word_1000CCB80[*(v59 + v40[19])]];
    sub_100030C74(v59 + v40[20], v56, &qword_100106F88, &qword_1000CAE20);
    v74 = sub_1000B4DB0();
    v75 = *(v74 - 8);
    if ((*(v75 + 48))(v56, 1, v74) == 1)
    {
      sub_100036320(v56, &qword_100106F88, &qword_1000CAE20);
      v76 = 0;
    }

    else
    {
      sub_1000B4CA0();
      (*(v75 + 8))(v56, v74);
      v35 = v91;
      v76 = sub_1000B55F0();
    }

    [v35 setUrlString:v76];

    if (*(v59 + v40[21] + 8) >> 60 == 15)
    {
      v77 = 0;
    }

    else
    {
      v77 = sub_1000B4DE0().super.isa;
    }

    [v35 setSynapseData:v77];

    v78 = *(v59 + v40[27]);
    if (v78 <= 1)
    {
      v79 = v78 != 0;
LABEL_30:
      [v35 setPreferredViewSize:v79];
      return v35;
    }

    if (v78 == 2)
    {
      v79 = 2;
      goto LABEL_30;
    }
  }

  return v35;
}

void sub_100068568(void *a1, uint32_t *a2, uint64_t a3, char *a4, uint32_t *a5, void (*a6)(char *, uint64_t))
{
  v159 = a6;
  v153 = a5;
  v155 = a4;
  v154 = a2;
  v157 = sub_1000B4DB0();
  v156 = *(v157 - 8);
  v9 = __chkstk_darwin(v157, v8);
  v11 = &v145 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v9, v12);
  v15 = &v145 - v14;
  v17 = __chkstk_darwin(v13, v16);
  v19 = &v145 - v18;
  v21 = __chkstk_darwin(v17, v20);
  v23 = &v145 - v22;
  v25 = __chkstk_darwin(v21, v24);
  v27 = &v145 - v26;
  __chkstk_darwin(v25, v28);
  v30 = &v145 - v29;
  p_align = [a1 attachmentModel];
  objc_opt_self();
  v161 = swift_dynamicCastObjCClass();
  if (!v161)
  {
    v148 = v27;
    v149 = v19;
    v146 = v15;
    v150 = a1;
    v145 = v11;
    v152 = v30;
    v151 = v23;
    v46 = v156;
    objc_opt_self();
    v161 = swift_dynamicCastObjCClass();
    if (v161)
    {
      v47 = *(v158 + *(type metadata accessor for ICAttachmentArchiveModel(0) + 56) + 8);
      v147 = p_align;
      v48 = p_align;
      if (v47 >> 60 == 15)
      {
        isa = 0;
      }

      else
      {
        isa = sub_1000B4DE0().super.isa;
      }

      v88 = v157;
      v89 = v148;
      [v150 setMergeableData:isa];

      v90 = v161;
      v91 = [v161 paperBundleDatabaseSubdirectoryURL];
      sub_1000B4D50();

      sub_1000B4CE0();
      v92 = *(v46 + 1);
      v92(v89, v88);
      sub_1000B4D10();

      v93 = [v90 paperBundleAssetsSubdirectoryURL];
      sub_1000B4D50();

      sub_1000B4CE0();
      v159 = v92;
      v92(v89, v88);
      v94 = v90;
      sub_1000B4D10();

      swift_getObjectType();
      v95 = [v90 paperBundleURL];
      v96 = v149;
      sub_1000B4D50();

      v97 = v160;
      sub_1000B4F90();
      if (v97)
      {
        v98 = v157;
        v99 = v159;
        v103 = v147;
        v159(v96, v157);
        v99(v151, v98);
        v99(v152, v98);
        if (qword_100106A68 != -1)
        {
          swift_once();
        }

        v104 = sub_1000B5530();
        sub_100036380(v104, qword_100107B78);
        swift_errorRetain();
        v105 = sub_1000B5520();
        v106 = sub_1000B5920();

        if (os_log_type_enabled(v105, v106))
        {
          v107 = swift_slowAlloc();
          v108 = swift_slowAlloc();
          v168 = v108;
          *v107 = 136315138;
          swift_getErrorValue();
          v109 = sub_1000B5F60();
          v111 = sub_100062B20(v109, v110, &v168);

          *(v107 + 4) = v111;
          _os_log_impl(&_mh_execute_header, v105, v106, "Cannot import paper attachment database and assets — skipping {error: %s}", v107, 0xCu);
          sub_100035DA8(v108);
        }

        else
        {
        }
      }

      else
      {
        v100 = v159;
        v159(v96, v157);
        v101 = [v94 paperBundleDatabaseSubdirectoryURL];
        v102 = v146;
        sub_1000B4D50();

        sub_1000B4FE0();
        v100(v102, v157);
        v133 = [v94 paperBundleAssetsSubdirectoryURL];
        sub_1000B4D50();

        sub_1000B4FE0();
        v144 = v157;
        v100(v145, v157);
        v100(v151, v144);
        v100(v152, v144);
      }

      return;
    }

    objc_opt_self();
    v72 = swift_dynamicCastObjCClass();
    if (!v72)
    {
      v126 = v160;
      objc_opt_self();
      v127 = swift_dynamicCastObjCClass();
      if (!v127)
      {

        if (*(v158 + *(type metadata accessor for ICAttachmentArchiveModel(0) + 56) + 8) >> 60 != 15)
        {
          v127 = sub_1000B4DE0().super.isa;
        }

        v140 = v150;
        [v150 setMergeableData:v127];

        [v140 attachmentModel];
        return;
      }

      v57 = p_align;
      v60 = v127;
      v128 = [v127 audioDocument];
      if (v128)
      {
        v129 = v128;
        p_align = [v128 document];

        v130 = v158 + *(type metadata accessor for ICAttachmentArchiveModel(0) + 112);
        v131 = *(v130 + 1);
        if (v131 == 1)
        {
          v132 = 0;
        }

        else
        {
          v162 = *v130;
          v163 = v131;
          v141 = *(v130 + 4);
          v166 = *(v130 + 3);
          *v167 = v141;
          *&v167[9] = *(v130 + 73);
          v142 = *(v130 + 1);
          v165 = *(v130 + 2);
          v164 = v142;
          v143 = [v127 audioDocument];
          if (!v143)
          {
LABEL_121:
            __break(1u);
            return;
          }

          v19 = v143;
          v58 = sub_10008B618(v143, v150, &off_1000F67D0, a3, v159);
          if (v126)
          {

            return;
          }

LABEL_106:
          v132 = v58;
        }

        [(uint32_t *)p_align setRootObject:v132];

        swift_unknownObjectRelease();
        [v60 writeMergeableData];

        return;
      }

LABEL_120:
      __break(1u);
      goto LABEL_121;
    }

    v73 = v72;
    v74 = type metadata accessor for ICAttachmentArchiveModel(0);
    v75 = *(v158 + *(v74 + 92));
    if (!v75)
    {
      return;
    }

    v151 = v74;
    v153 = p_align;
    v76 = [v73 table];
    v77 = [v76 rowCount];

    if ((v77 & 0x8000000000000000) != 0)
    {
LABEL_116:
      __break(1u);
    }

    else
    {
      for (; v77; --v77)
      {
        v78 = [v73 table];
        [v78 removeRowAtIndex:0];
      }

      v79 = [v73 table];
      v80 = [v79 columnCount];

      if ((v80 & 0x8000000000000000) == 0)
      {
        for (; v80; --v80)
        {
          v81 = [v73 table];
          [v81 removeColumnAtIndex:0];
        }

        v82 = [v73 table];

        v83 = [v73 table];
        v84 = v83;
        v154 = *(v75 + 2);
        if (!v154)
        {

LABEL_95:
          v135 = *(v158 + *(v151 + 24));
          if (v135 != 2)
          {
            v136 = v135 & 1;
            v137 = [v73 table];
            v138 = [v137 isRightToLeft];

            if (v138 != v136)
            {
              v139 = [v73 table];
              [v139 reverseColumnDirection];
            }
          }

          [v73 writeMergeableData];

          return;
        }

        v85 = *(v75 + 4);
        v155 = v75 + 32;

        v86 = 0;
        v87 = v159;
        v152 = v75;
        while (1)
        {
          if (v86 >= *(v75 + 2))
          {
            __break(1u);
            goto LABEL_116;
          }

          v112 = *(*&v155[8 * v86] + 16);

          v161 = v112;
          if (v112)
          {
            break;
          }

LABEL_80:
          v86 = (v86 + 1);

          v75 = v152;
          if (v86 == v154)
          {
            goto LABEL_95;
          }
        }

        v114 = 0;
        v35 = v113 + 48;
        v156 = v86;
        v157 = v113;
        while (1)
        {
          if (v114 >= *(v113 + 16))
          {
            goto LABEL_113;
          }

          v116 = *(v35 - 16);
          v115 = *(v35 - 8);
          v117 = *v35;

          v118 = v73;
          v119 = [v73 attachment];
          if (!v119)
          {
            goto LABEL_118;
          }

          v120 = v119;
          v121 = sub_10003088C(_swiftEmptyArrayStorage);
          v122 = v160;
          v123 = sub_100090684(v121, v120, &off_1000F67D0, v87, v116, v115, v117);
          if (v122)
          {

            v134 = v153;

            return;
          }

          v124 = v123;
          v160 = 0;

          v73 = v118;
          v125 = [v118 table];
          v86 = v156;
          [v125 setAttributedString:v124 columnIndex:v114 rowIndex:v156];

          v35 += 24;
          ++v114;
          v87 = v159;
          v113 = v157;
          if (v161 == v114)
          {
            goto LABEL_80;
          }
        }
      }
    }

    __break(1u);
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  v32 = p_align;
  v33 = [a1 managedObjectContext];
  if (!v33)
  {
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  v159 = v33;
  v34 = *(v158 + *(type metadata accessor for ICAttachmentArchiveModel(0) + 100));
  v35 = _swiftEmptyArrayStorage;
  v36 = v161;
  if (v34)
  {
    v168 = _swiftEmptyArrayStorage;
    v37 = *(v34 + 16);
    v157 = v32;
    if (v37)
    {
      p_align = 0;
      v38 = (v34 + 40);
      v156 = (v37 - 1);
      v39 = _swiftEmptyArrayStorage;
      v158 = (v34 + 40);
      while (1)
      {
        v40 = &v38[4 * p_align];
        v41 = p_align;
        while (1)
        {
          if (v41 >= *(v34 + 16))
          {
            goto LABEL_110;
          }

          if (!*(a3 + 16))
          {
            goto LABEL_7;
          }

          v42 = *(v40 - 1);
          v19 = *v40;

          v35 = a3;
          v43 = sub_10006320C(v42, v19);
          if (v44)
          {
            break;
          }

LABEL_7:
          v41 = (v41 + 1);
          v40 += 16;
          if (v37 == v41)
          {
            v32 = v157;
            goto LABEL_20;
          }
        }

        v45 = *(*(a3 + 56) + 8 * v43);

        v35 = &v168;
        sub_1000B5780();
        if (*((v168 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v168 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1000B57C0();
        }

        p_align = (v41 + 1);
        sub_1000B57F0();
        v39 = v168;
        v32 = v157;
        v38 = v158;
        if (v156 == v41)
        {
LABEL_20:
          if (!(v39 >> 62))
          {
            goto LABEL_21;
          }

LABEL_60:
          v35 = sub_1000B5CF0();
          goto LABEL_22;
        }
      }
    }

    v39 = _swiftEmptyArrayStorage;
    if (_swiftEmptyArrayStorage >> 62)
    {
      goto LABEL_60;
    }

LABEL_21:
    v35 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_22:
    v158 = v32;
    if (v35)
    {
      v50 = 0;
      p_align = &stru_100100FE8.align;
      do
      {
        if ((v39 & 0xC000000000000001) != 0)
        {
          v51 = sub_1000B5C20();
        }

        else
        {
          if (v50 >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_112;
          }

          v51 = *(v39 + 8 * v50 + 32);
        }

        v52 = v51;
        v19 = (v50 + 1);
        if (__OFADD__(v50, 1))
        {
          goto LABEL_111;
        }

        [v161 addSubAttachment:v51];

        ++v50;
      }

      while (v19 != v35);
    }

    v53 = v158;

    v36 = v161;
    v32 = v157;
  }

  v158 = v32;
  [v36 writeMergeableData];
  v168 = _swiftEmptyArrayStorage;
  v54 = 1 << *(a3 + 32);
  v55 = -1;
  if (v54 < 64)
  {
    v55 = ~(-1 << v54);
  }

  v56 = v55 & *(a3 + 64);
  v57 = ((v54 + 63) >> 6);

  v59 = 0;
  v60 = &selRef_isDeletedOrInTrash;
  if (v56)
  {
    goto LABEL_41;
  }

  while (1)
  {
LABEL_37:
    v61 = v59 + 1;
    if (__OFADD__(v59, 1))
    {
      __break(1u);
      goto LABEL_106;
    }

    if (v61 >= v57)
    {
      break;
    }

    v56 = *(a3 + 64 + 8 * v61);
    ++v59;
    if (v56)
    {
      while (1)
      {
        v62 = __clz(__rbit64(v56));
        v56 &= v56 - 1;
        p_align = *(*(a3 + 56) + ((v61 << 9) | (8 * v62)));
        v63 = [(uint32_t *)p_align parentAttachment];
        if (v63)
        {
          v64 = v63;

          v59 = v61;
          if (!v56)
          {
            goto LABEL_37;
          }
        }

        else
        {
          sub_1000B5C50();
          v19 = *(v168 + 16);
          sub_1000B5C80();
          sub_1000B5C90();
          v58 = sub_1000B5C60();
          v59 = v61;
          if (!v56)
          {
            goto LABEL_37;
          }
        }

LABEL_41:
        v61 = v59;
      }
    }
  }

  v35 = v168;
  if ((v168 & 0x8000000000000000) != 0 || (v168 & 0x4000000000000000) != 0)
  {
    goto LABEL_114;
  }

  for (i = *(v168 + 16); ; i = sub_1000B5CF0())
  {
    v66 = v159;
    if (!i)
    {
      break;
    }

    v67 = 0;
    while (1)
    {
      if ((v35 & 0xC000000000000001) != 0)
      {
        v68 = sub_1000B5C20();
      }

      else
      {
        if (v67 >= *(v35 + 16))
        {
          goto LABEL_109;
        }

        v68 = *(v35 + 8 * v67 + 32);
      }

      v69 = v68;
      v70 = v67 + 1;
      if (__OFADD__(v67, 1))
      {
        break;
      }

      [v66 deleteObject:v68];

      ++v67;
      if (v70 == i)
      {
        goto LABEL_57;
      }
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
    ;
  }

LABEL_57:

  v71 = v158;
}

void sub_1000696D8(void *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  v161 = a2;
  v5 = sub_100030480(&qword_100106F88, &qword_1000CAE20);
  __chkstk_darwin(v5 - 8, v6);
  v160 = &v143 - v7;
  v8 = sub_100030480(&qword_100106E38, &unk_1000CB730);
  v10 = __chkstk_darwin(v8 - 8, v9);
  v157 = &v143 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v12);
  v14 = &v143 - v13;
  *a3 = 4;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 514;
  v15 = type metadata accessor for ICAttachmentArchiveModel(0);
  v16 = v15[12];
  v17 = sub_1000B4EA0();
  v18 = *(v17 - 8);
  v19 = *(v18 + 56);
  v20 = v18 + 56;
  v154 = v16;
  v19(a3 + v16, 1, 1, v17);
  v155 = v15[13];
  v156 = v19;
  v162 = v20;
  v19(a3 + v155, 1, 1, v17);
  v21 = (a3 + v15[14]);
  v153 = xmmword_1000CC370;
  v145 = v21;
  *v21 = xmmword_1000CC370;
  v22 = a3 + v15[17];
  v169 = 1;
  *v22 = 0u;
  *(v22 + 16) = 0u;
  *(v22 + 32) = 0u;
  *(v22 + 48) = 0u;
  *(v22 + 64) = 1;
  v23 = v15[20];
  v24 = sub_1000B4DB0();
  v25 = *(v24 - 8);
  v26 = *(v25 + 56);
  v158 = v23;
  v149 = v26;
  v150 = v24;
  v148 = v25 + 56;
  (v26)(a3 + v23, 1, 1);
  v159 = (a3 + v15[21]);
  *v159 = v153;
  v27 = a3 + v15[22];
  *v27 = 0;
  *(v27 + 8) = 0;
  *&v153 = v27;
  *(v27 + 16) = 1;
  v146 = v15[23];
  *(a3 + v146) = 0;
  v147 = v15[24];
  *(a3 + v147) = 2;
  v151 = v15[25];
  *(a3 + v151) = 0;
  v152 = v15[27];
  *(a3 + v152) = 3;
  v28 = (a3 + v15[28]);
  *v28 = xmmword_1000CB720;
  v28[1] = 0u;
  v28[2] = 0u;
  v28[3] = 0u;
  v28[4] = 0u;
  v144 = v28;
  *(v28 + 73) = 0u;
  v29 = [a1 identifier];
  if (v29)
  {
    v30 = v29;
    v31 = sub_1000B5620();
    v33 = v32;
  }

  else
  {
    v31 = 0;
    v33 = 0xE000000000000000;
  }

  *(a3 + 8) = v31;
  *(a3 + 16) = v33;
  v34 = [a1 typeUTI];
  if (v34)
  {
    v35 = v34;
    v36 = sub_1000B5620();
    v38 = v37;
  }

  else
  {
    v36 = 0;
    v38 = 0;
  }

  v39 = v156;
  *(a3 + 64) = v36;
  *(a3 + 72) = v38;
  v40 = a1;
  v41 = sub_10006D5FC();
  v43 = v42;

  *(a3 + 80) = v41;
  *(a3 + 88) = v43;
  v44 = [v40 creationDate];
  if (v44)
  {
    v45 = v44;
    sub_1000B4E70();

    v46 = 0;
  }

  else
  {
    v46 = 1;
  }

  v47 = v157;
  v48 = 1;
  v39(v14, v46, 1, v17);
  sub_1000521D8(v14, a3 + v154, &qword_100106E38, &unk_1000CB730);
  v49 = [v40 modificationDate];
  if (v49)
  {
    v50 = v49;
    sub_1000B4E70();

    v48 = 0;
  }

  v39(v47, v48, 1, v17);
  sub_1000521D8(v47, a3 + v155, &qword_100106E38, &unk_1000CB730);
  v51 = [v40 title];
  if (v51)
  {
    v52 = v51;
    v53 = sub_1000B5620();
    v55 = v54;
  }

  else
  {
    v53 = 0;
    v55 = 0;
  }

  v56 = (a3 + v15[15]);
  *v56 = v53;
  v56[1] = v55;
  v162 = v55;
  [v40 bounds];
  v171.origin.x = 0.0;
  v171.origin.y = 0.0;
  v171.size.width = 0.0;
  v171.size.height = 0.0;
  v57 = CGRectEqualToRect(v170, v171);
  v58 = 0uLL;
  v59 = 0uLL;
  if (!v57)
  {
    [v40 bounds];
    *(&v58 + 1) = v60;
    *(&v59 + 1) = v61;
  }

  v62 = a3 + v15[16];
  v63 = v15[18];
  *v62 = v58;
  *(v62 + 16) = v59;
  *(v62 + 32) = v57;
  v64 = v40;
  sub_10006D80C(v64, v165);
  v65 = v165[3];
  *(v22 + 32) = v165[2];
  *(v22 + 48) = v65;
  *(v22 + 64) = v166;
  v66 = v165[1];
  *v22 = v165[0];
  *(v22 + 16) = v66;
  *(a3 + v63) = sub_10006D9F0([v64 orientation]);
  v67 = [v64 urlString];
  if (v67)
  {
    v68 = v67;
    sub_1000B5620();

    v69 = v160;
    sub_1000B4DA0();
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v69 = v160;
    v149(v160, 1, 1, v150);
  }

  v70 = v161;
  sub_1000521D8(v69, a3 + v158, &qword_100106F88, &qword_1000CAE20);
  v71 = [v64 synapseData];
  if (v71)
  {
    v72 = v71;
    v73 = sub_1000B4DF0();
    v75 = v74;
  }

  else
  {
    v73 = 0;
    v75 = 0xF000000000000000;
  }

  v76 = v159;
  sub_10004D334(*v159, v159[1]);
  *v76 = v73;
  v76[1] = v75;
  v77 = [v64 synapseBasedMetadata];
  if (v77 && (v78 = v77, v79 = [v77 selectedText], v78, v79))
  {
    v80 = sub_1000B5620();
    v82 = v81;
  }

  else
  {
    v80 = 0;
    v82 = 0;
  }

  v83 = (a3 + v15[26]);
  *v83 = v80;
  v83[1] = v82;
  v84 = [v64 imageFilterType];
  v85 = 0x403020105uLL >> (8 * v84);
  if (v84 >= 5)
  {
    LOBYTE(v85) = 5;
  }

  *(a3 + v15[19]) = v85;
  v86 = [v64 mergeablePreferredViewSize];
  if (v86)
  {
    v87 = v86;
    v88 = sub_1000B4DF0();
    v90 = v89;

    sub_1000449D4(v88, v90);
    v91 = sub_10004CC90([v64 preferredViewSize]);
    *(a3 + v152) = v91;
  }

  v92 = [v64 location];
  if (v92)
  {
    v93 = v92;
    [v93 latitude];
    v95 = v94;
    [v93 longitude];
    v97 = v96;

    v98 = v153;
    *v153 = v95;
    *(v98 + 8) = v97;
    *(v98 + 16) = 0;
  }

  v99 = [v64 tableModel];
  if (v99)
  {
    if ((*v70 & 1) == 0)
    {
      v111 = v99;
      v112 = sub_10006DAEC(v99, v70);
      *(a3 + v146) = v112;
      v113 = [v111 table];
      v114 = [v113 isRightToLeft];

      sub_10004CE38(v70);
      *(a3 + v147) = v114;
      if ((*(v70 + 59) & 1) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_38;
    }
  }

  v100 = [v64 attachmentModel];
  objc_opt_self();
  v101 = swift_dynamicCastObjCClass();
  if (v101)
  {
    v102 = [v101 subAttachmentIdentifiers];
    v103 = sub_1000B57A0();

    sub_10004CE38(v70);
    *(a3 + v151) = v103;
    if (*(v70 + 59))
    {
      goto LABEL_38;
    }

LABEL_42:

    return;
  }

  v120 = [v64 audioModel];
  if (!v120)
  {
    goto LABEL_53;
  }

  v121 = v120;
  v122 = [v120 audioDocument];

  if (!v122)
  {
    __break(1u);
    return;
  }

  v123 = sub_1000B5950();

  if (v123)
  {
    v124 = v64;
    sub_10004D3AC(v70, v167);
    sub_10008DFD0(v123, v124, v70, v167);
    v125 = v144;
    v126 = v144[3];
    v163[2] = v144[2];
    v163[3] = v126;
    v164[0] = v144[4];
    *(v164 + 9) = *(v144 + 73);
    v127 = v144[1];
    v163[0] = *v144;
    v163[1] = v127;
    sub_100036320(v163, &qword_100107B90, &unk_1000CC380);
    sub_10004CE38(v70);
    v128 = v167[3];
    v125[2] = v167[2];
    v125[3] = v128;
    v125[4] = v168[0];
    *(v125 + 73) = *(v168 + 9);
    v129 = v167[1];
    *v125 = v167[0];
    v125[1] = v129;
    if ((*(v70 + 59) & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  else
  {
LABEL_53:
    v130 = [v64 mergeableData];
    if (v130)
    {
      v131 = v130;
      v132 = sub_1000B4DF0();
      v134 = v133;
    }

    else
    {
      v132 = 0;
      v134 = 0xF000000000000000;
    }

    v142 = v145;
    sub_10004D334(*v145, v145[1]);
    sub_10004CE38(v70);
    *v142 = v132;
    v142[1] = v134;
    if ((*(v70 + 59) & 1) == 0)
    {
      goto LABEL_42;
    }
  }

LABEL_38:
  v104 = v64;
  v105 = [v104 note];
  if (v105 && (v106 = v105, v107 = [v105 identifier], v106, v107))
  {
    v108 = sub_1000B5620();
    v110 = v109;
  }

  else
  {
    v108 = 0;
    v110 = 0;
  }

  *(a3 + 24) = v108;
  *(a3 + 32) = v110;
  v115 = [v104 note];

  if (v115)
  {
    v116 = &selRef_sharedManager;
    v117 = [v115 title];

    if (v117)
    {
      v115 = sub_1000B5620();
      v119 = v118;
    }

    else
    {
      v115 = 0;
      v119 = 0;
    }
  }

  else
  {
    v119 = 0;
    v116 = &selRef_sharedManager;
  }

  *(a3 + 40) = v115;
  *(a3 + 48) = v119;
  v135 = [v104 v116[99]];
  if (v135)
  {
    v136 = v135;
    v137 = sub_1000B5620();
    v139 = v138;
  }

  else
  {

    v137 = 0;
    v139 = 0;
  }

  *v56 = v137;
  v56[1] = v139;
  v140 = v104;
  *(a3 + 56) = [v140 markedForDeletion];
  v141 = [v140 isPasswordProtected];

  *(a3 + 57) = v141;
}

uint64_t type metadata accessor for ICAttachmentArchiveModel(uint64_t a1)
{
  result = qword_100107BF0;
  if (!qword_100107BF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10006A284()
{
  v0 = sub_1000B5530();
  sub_10003640C(v0, qword_100107B78);
  sub_100036380(v0, qword_100107B78);
  return sub_1000B5510();
}

unint64_t sub_10006A2D0(char a1)
{
  result = 0x6E65644965707974;
  switch(a1)
  {
    case 1:
      result = 0x696669746E656469;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x6954746E65726170;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
    case 21:
      result = 0xD000000000000018;
      break;
    case 7:
      result = 0x6C6946616964656DLL;
      break;
    case 8:
      result = 0x4164657461657263;
      break;
    case 9:
      result = 0x6465696669646F6DLL;
      break;
    case 10:
      result = 1635017060;
      break;
    case 11:
      result = 0x656C746974;
      break;
    case 12:
      result = 0x73646E756F62;
      break;
    case 13:
      result = 0x676E6970706F7263;
      break;
    case 14:
      result = 0x7461746E6569726FLL;
      break;
    case 15:
      result = 0x6C69466567616D69;
      break;
    case 16:
      result = 7107189;
      break;
    case 17:
      result = 0x4474657070696E73;
      break;
    case 18:
      result = 0x616E6964726F6F63;
      break;
    case 19:
      result = 1937207154;
      break;
    case 20:
      result = 0x5474686769527369;
      break;
    case 22:
      result = 0x65746F75516C7275;
      break;
    case 23:
      result = 0xD000000000000011;
      break;
    case 24:
      result = 0x6365526F69647561;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10006A60C(void *a1)
{
  v3 = v1;
  v5 = sub_100030480(&qword_100107D50, &unk_1000CC818);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = v28 - v8;
  sub_1000458B4(a1, a1[3]);
  sub_10006E814();
  sub_1000B6020();
  LOBYTE(v36) = *v3;
  LOBYTE(v31) = 0;
  sub_10004E214();
  sub_1000B5EB0();
  if (!v2)
  {
    LOBYTE(v36) = 1;
    sub_1000B5E70();
    LOBYTE(v36) = 2;
    sub_1000B5E20();
    LOBYTE(v36) = 3;
    sub_1000B5E20();
    LOBYTE(v36) = 4;
    sub_1000B5E30();
    LOBYTE(v36) = 5;
    sub_1000B5E30();
    LOBYTE(v36) = 6;
    sub_1000B5E20();
    LOBYTE(v36) = 7;
    sub_1000B5E20();
    v47 = type metadata accessor for ICAttachmentArchiveModel(0);
    LOBYTE(v36) = 8;
    sub_1000B4EA0();
    sub_10006FD74(&qword_100107228, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    sub_1000B5E60();
    LOBYTE(v36) = 9;
    sub_1000B5E60();
    v10 = &v3[v47[14]];
    v11 = v10[1];
    *&v36 = *v10;
    *(&v36 + 1) = v11;
    LOBYTE(v31) = 10;
    sub_10006E868(v36, v11);
    sub_100054748();
    sub_1000B5E60();
    sub_10004D334(v36, *(&v36 + 1));
    LOBYTE(v36) = 11;
    sub_1000B5E20();
    v12 = &v3[v47[16]];
    v13 = v12[32];
    v14 = *(v12 + 1);
    v44 = *v12;
    v45 = v14;
    v46 = v13;
    v43 = 12;
    type metadata accessor for CGRect(0);
    sub_10006FD74(&qword_100107D60, type metadata accessor for CGRect, &protocol conformance descriptor for CGRect);
    sub_1000B5E60();
    v15 = &v3[v47[17]];
    v16 = *(v15 + 3);
    v38 = *(v15 + 2);
    v39 = v16;
    v40[0] = v15[64];
    v17 = *(v15 + 1);
    v36 = *v15;
    v37 = v17;
    LOBYTE(v31) = 13;
    sub_10006E87C();
    sub_1000B5E60();
    LOBYTE(v36) = v3[v47[18]];
    LOBYTE(v31) = 14;
    sub_10006E8D0();
    sub_1000B5E60();
    LOBYTE(v36) = v3[v47[19]];
    LOBYTE(v31) = 15;
    sub_10006E924();
    sub_1000B5E60();
    LOBYTE(v36) = 16;
    sub_1000B4DB0();
    sub_10006FD74(&qword_100107D80, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    sub_1000B5E60();
    v18 = &v3[v47[21]];
    v19 = v18[1];
    *&v36 = *v18;
    *(&v36 + 1) = v19;
    LOBYTE(v31) = 17;
    sub_10006E868(v36, v19);
    sub_1000B5E60();
    sub_10004D334(v36, *(&v36 + 1));
    v20 = &v3[v47[22]];
    v21 = v20[16];
    v36 = *v20;
    LOBYTE(v37) = v21;
    LOBYTE(v31) = 18;
    sub_10006E978();
    sub_1000B5E60();
    *&v36 = *&v3[v47[23]];
    LOBYTE(v31) = 19;
    sub_100030480(&qword_100107C40, &unk_1000CC3B0);
    sub_10006EAFC(&qword_100107D90, sub_10006E9CC, &protocol conformance descriptor for <A> [A]);
    sub_1000B5E60();
    LOBYTE(v36) = 20;
    sub_1000B5E30();
    *&v36 = *&v3[v47[25]];
    LOBYTE(v31) = 21;
    sub_100030480(&unk_100107548, &qword_1000CB760);
    sub_100055CC0(&qword_1001075D8, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    sub_1000B5E60();
    LOBYTE(v36) = 22;
    sub_1000B5E20();
    v42 = v3[v47[27]];
    v41 = 23;
    sub_10004E310();
    sub_1000B5E60();
    v22 = &v3[v47[28]];
    v23 = v22[3];
    v24 = v22[1];
    v38 = v22[2];
    v39 = v23;
    v25 = v22[3];
    *v40 = v22[4];
    *&v40[9] = *(v22 + 73);
    v26 = v22[1];
    v36 = *v22;
    v37 = v26;
    v33 = v38;
    v34 = v25;
    v35[0] = v22[4];
    *(v35 + 9) = *(v22 + 73);
    v31 = v36;
    v32 = v24;
    v30 = 24;
    sub_100030C74(&v36, v28, &qword_100107B90, &unk_1000CC380);
    sub_10006EA00();
    sub_1000B5E60();
    v28[2] = v33;
    v28[3] = v34;
    *v29 = v35[0];
    *&v29[9] = *(v35 + 9);
    v28[0] = v31;
    v28[1] = v32;
    sub_100036320(v28, &qword_100107B90, &unk_1000CC380);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10006AEEC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v117 = a1;
  v83 = a2;
  v2 = sub_100030480(&qword_100106F88, &qword_1000CAE20);
  __chkstk_darwin(v2 - 8, v3);
  v82 = v81 - v4;
  v5 = sub_100030480(&qword_100106E38, &unk_1000CB730);
  v7 = __chkstk_darwin(v5 - 8, v6);
  v84 = v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v9);
  v85 = v81 - v10;
  v11 = sub_100030480(&qword_100107DA8, &qword_1000CC828);
  v86 = *(v11 - 8);
  v87 = v11;
  __chkstk_darwin(v11, v12);
  v14 = v81 - v13;
  v15 = type metadata accessor for ICAttachmentArchiveModel(0);
  v17 = __chkstk_darwin(v15, v16);
  v19 = v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v17 + 48);
  v21 = sub_1000B4EA0();
  v22 = *(*(v21 - 8) + 56);
  v94 = v20;
  v22(&v19[v20], 1, 1, v21);
  v93 = v15[13];
  v22(&v19[v93], 1, 1, v21);
  v23 = &v19[v15[14]];
  v96 = xmmword_1000CC370;
  v92 = v23;
  *v23 = xmmword_1000CC370;
  v24 = &v19[v15[17]];
  v116 = 1;
  *v24 = 0u;
  *(v24 + 1) = 0u;
  *(v24 + 2) = 0u;
  *(v24 + 3) = 0u;
  v24[64] = 1;
  v25 = v15[20];
  v26 = sub_1000B4DB0();
  v27 = *(*(v26 - 8) + 56);
  v91 = v25;
  v27(&v19[v25], 1, 1, v26);
  v90 = &v19[v15[21]];
  *v90 = v96;
  v28 = v15[28];
  *&v96 = v19;
  v29 = &v19[v28];
  *v29 = xmmword_1000CB720;
  *(v29 + 1) = 0u;
  *(v29 + 2) = 0u;
  *(v29 + 3) = 0u;
  *(v29 + 4) = 0u;
  v89 = &v19[v28];
  *(v29 + 73) = 0u;
  sub_1000458B4(v117, v117[3]);
  sub_10006E814();
  v88 = v14;
  v30 = v95;
  sub_1000B6010();
  if (v30)
  {
    v95 = v30;
    sub_100035DA8(v117);
    swift_bridgeObjectRelease_n();
LABEL_4:

    v33 = v96;
    sub_100036320(v96 + v94, &qword_100106E38, &unk_1000CB730);
    sub_100036320(v33 + v93, &qword_100106E38, &unk_1000CB730);
    sub_10004D334(*v92, *(v92 + 1));

    sub_100036320(v33 + v91, &qword_100106F88, &qword_1000CAE20);
    sub_10004D334(*v90, *(v90 + 1));

    v34 = *(v89 + 3);
    v113 = *(v89 + 2);
    v114 = v34;
    v115[0] = *(v89 + 4);
    *(v115 + 9) = *(v89 + 73);
    v35 = *(v89 + 1);
    v111 = *v89;
    v112 = v35;
    return sub_100036320(&v111, &qword_100107B90, &unk_1000CC380);
  }

  v81[5] = v21;
  v31 = v85;
  LOBYTE(v102[0]) = 0;
  sub_1000316AC();
  sub_1000B5E00();
  v32 = v96;
  *v96 = v111;
  LOBYTE(v111) = 1;
  *(v32 + 8) = sub_1000B5DC0();
  *(v32 + 16) = v37;
  LOBYTE(v111) = 2;
  *(v32 + 24) = sub_1000B5D70();
  *(v32 + 32) = v38;
  v81[4] = v38;
  LOBYTE(v111) = 3;
  *(v32 + 40) = sub_1000B5D70();
  *(v32 + 48) = v39;
  v81[3] = v39;
  LOBYTE(v111) = 4;
  *(v32 + 56) = sub_1000B5D80();
  LOBYTE(v111) = 5;
  *(v32 + 57) = sub_1000B5D80();
  LOBYTE(v111) = 6;
  *(v32 + 64) = sub_1000B5D70();
  *(v32 + 72) = v40;
  v81[2] = v40;
  LOBYTE(v111) = 7;
  *(v32 + 80) = sub_1000B5D70();
  *(v32 + 88) = v41;
  v81[1] = v41;
  LOBYTE(v111) = 8;
  v81[0] = sub_10006FD74(&qword_100107288, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_1000B5DB0();
  v95 = 0;
  sub_1000521D8(v31, v96 + v94, &qword_100106E38, &unk_1000CB730);
  LOBYTE(v111) = 9;
  v42 = v95;
  sub_1000B5DB0();
  v95 = v42;
  if (v42 || (sub_1000521D8(v84, v96 + v93, &qword_100106E38, &unk_1000CB730), LOBYTE(v102[0]) = 10, sub_1000545EC(), v43 = v95, sub_1000B5DB0(), (v95 = v43) != 0) || (v44 = v111, v45 = v92, sub_10004D334(*v92, *(v92 + 1)), *v45 = v44, LOBYTE(v111) = 11, v46 = v95, v47 = sub_1000B5D70(), v85 = v48, (v95 = v46) != 0))
  {
    (*(v86 + 8))(v88, v87);
    v85 = 0;
LABEL_9:
    sub_100035DA8(v117);

    goto LABEL_4;
  }

  v49 = (v96 + v15[15]);
  v50 = v85;
  *v49 = v47;
  v49[1] = v50;
  type metadata accessor for CGRect(0);
  LOBYTE(v102[0]) = 12;
  sub_10006FD74(&qword_100107DB0, type metadata accessor for CGRect, &protocol conformance descriptor for CGRect);
  v51 = v95;
  sub_1000B5DB0();
  v95 = v51;
  if (v51 || (v52 = v96 + v15[16], v53 = v113, v54 = v112, *v52 = v111, *(v52 + 16) = v54, *(v52 + 32) = v53, v105 = 13, sub_10006EA54(), v55 = v95, sub_1000B5DB0(), (v95 = v55) != 0) || (v56 = v107, v57 = v109, *(v24 + 2) = v108, *(v24 + 3) = v57, v24[64] = v110, *v24 = v106, *(v24 + 1) = v56, LOBYTE(v102[0]) = 14, sub_10006E5AC(), v58 = v95, sub_1000B5DB0(), (v95 = v58) != 0) || (*(v96 + v15[18]) = v111, LOBYTE(v102[0]) = 15, sub_10006E6A0(), v59 = v95, sub_1000B5DB0(), (v95 = v59) != 0) || (*(v96 + v15[19]) = v111, LOBYTE(v111) = 16, sub_10006FD74(&qword_100107DC0, &type metadata accessor for URL, &protocol conformance descriptor for URL), v60 = v95, sub_1000B5DB0(), (v95 = v60) != 0) || (sub_1000521D8(v82, v96 + v91, &qword_100106F88, &qword_1000CAE20), LOBYTE(v102[0]) = 17, v61 = v95, sub_1000B5DB0(), (v95 = v61) != 0) || (v62 = v111, v63 = v90, sub_10004D334(*v90, *(v90 + 1)), *v63 = v62, LOBYTE(v102[0]) = 18, sub_10006EAA8(), v64 = v95, sub_1000B5DB0(), (v95 = v64) != 0) || (v65 = v96 + v15[22], v66 = v112, *v65 = v111, *(v65 + 16) = v66, sub_100030480(&qword_100107C40, &unk_1000CC3B0), LOBYTE(v102[0]) = 19, sub_10006EAFC(&qword_100107DD0, sub_10006EB74, &protocol conformance descriptor for <A> [A]), v67 = v95, sub_1000B5DB0(), (v95 = v67) != 0) || (*(v96 + v15[23]) = v111, LOBYTE(v111) = 20, v68 = sub_1000B5D80(), v95 = 0, *(v96 + v15[24]) = v68, sub_100030480(&unk_100107548, &qword_1000CB760), LOBYTE(v102[0]) = 21, sub_100055CC0(&qword_1001075B0, &protocol witness table for String, &protocol conformance descriptor for <A> [A]), v69 = v95, sub_1000B5DB0(), (v95 = v69) != 0) || (*(v96 + v15[25]) = v111, LOBYTE(v111) = 22, v70 = sub_1000B5D70(), v95 = 0, v71 = (v96 + v15[26]), *v71 = v70, v71[1] = v72, LOBYTE(v102[0]) = 23, sub_10004E00C(), v73 = v95, sub_1000B5DB0(), (v95 = v73) != 0) || (*(v96 + v15[27]) = v111, v104 = 24, sub_10006EC20(), v74 = v95, sub_1000B5DB0(), (v95 = v74) != 0))
  {
    (*(v86 + 8))(v88, v87);
    goto LABEL_9;
  }

  (*(v86 + 8))(v88, v87);
  v99 = v113;
  v100 = v114;
  v101[0] = v115[0];
  *(v101 + 9) = *(v115 + 9);
  v97 = v111;
  v98 = v112;
  v75 = v89;
  v76 = *(v89 + 3);
  v102[2] = *(v89 + 2);
  v102[3] = v76;
  v103[0] = *(v89 + 4);
  *(v103 + 9) = *(v89 + 73);
  v77 = *(v89 + 1);
  v102[0] = *v89;
  v102[1] = v77;
  sub_100036320(v102, &qword_100107B90, &unk_1000CC380);
  v78 = v100;
  v75[2] = v99;
  v75[3] = v78;
  v75[4] = v101[0];
  *(v75 + 73) = *(v101 + 9);
  v79 = v98;
  *v75 = v97;
  v75[1] = v79;
  v80 = v96;
  sub_10006EC74(v96, v83);
  sub_100035DA8(v117);
  return sub_10006ECD8(v80);
}

uint64_t sub_10006BDA8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10006ED34(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10006BDD0(uint64_t a1)
{
  v2 = sub_10006E814();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10006BE0C(uint64_t a1)
{
  v2 = sub_10006E814();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10006BE78(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _OWORD *a5, void **a6)
{
  v29 = a6;
  v9 = sub_1000B4F00();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9, v12);
  v13 = &v30[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v32 = _swiftEmptyArrayStorage;
  v14 = [a4 table];
  (*(v10 + 16))(v13, a1, v9);
  v15 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v16 = (v11 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = ((v16 + 68) & 0xFFFFFFFFFFFFFFF8);
  v18 = swift_allocObject();
  *(v18 + 16) = a4;
  (*(v10 + 32))(v18 + v15, v13, v9);
  v19 = (v18 + v16);
  v20 = a5[1];
  *v19 = *a5;
  v19[1] = v20;
  v19[2] = a5[2];
  *(v19 + 45) = *(a5 + 45);
  *(v17 + v18) = &v32;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_10006DE60;
  *(v21 + 24) = v18;
  aBlock[4] = sub_100070268;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10006C434;
  aBlock[3] = &unk_1000F4D90;
  v22 = _Block_copy(aBlock);
  v23 = a4;
  sub_10004D3AC(a5, v30);

  [v14 enumerateColumnsWithBlock:v22];

  _Block_release(v22);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    isEscapingClosureAtFileLocation = v32;
    v17 = v29;
    a4 = *v29;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v17 = a4;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_3;
    }
  }

  a4 = sub_1000338E8(0, a4[2] + 1, 1, a4);
  *v17 = a4;
LABEL_3:
  v27 = a4[2];
  v26 = a4[3];
  if (v27 >= v26 >> 1)
  {
    a4 = sub_1000338E8((v26 > 1), v27 + 1, 1, a4);
    *v17 = a4;
  }

  a4[2] = v27 + 1;
  a4[v27 + 4] = isEscapingClosureAtFileLocation;
}

void sub_10006C1AC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, char **a7)
{
  v10 = sub_1000B4F00();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10, v12);
  v14 = &v35[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = [a4 table];
  isa = sub_1000B4ED0().super.isa;
  v17 = sub_1000B4ED0().super.isa;
  v18 = [v15 mergeableStringForColumnID:isa rowID:v17];

  if (!v18)
  {
    sub_1000B4EF0();
    v19 = objc_allocWithZone(ICTTMergeableAttributedString);
    v20 = sub_1000B4ED0().super.isa;
    (*(v11 + 8))(v14, v10);
    v18 = [v19 initWithReplicaID:v20];
  }

  v21 = [a4 attachment];
  if (v21)
  {
    v22 = v21;
    sub_10004D3AC(a6, v35);
    v23 = v18;
    v24 = sub_1000A1B30(v23, v22, a6);
    v26 = v25;
    v28 = v27;
    v29 = *a7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a7 = v29;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v29 = sub_100033A1C(0, *(v29 + 2) + 1, 1, v29);
      *a7 = v29;
    }

    v32 = *(v29 + 2);
    v31 = *(v29 + 3);
    if (v32 >= v31 >> 1)
    {
      *a7 = sub_100033A1C((v31 > 1), v32 + 1, 1, v29);
    }

    v33 = *a7;
    *(v33 + 2) = v32 + 1;
    v34 = &v33[24 * v32];
    *(v34 + 4) = v24;
    *(v34 + 5) = v26;
    *(v34 + 6) = v28;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10006C434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1000B4F00();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 32);
  sub_1000B4EE0();
  v12(v11, a3, a4);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_10006C538(void *a1)
{
  v3 = v1;
  v5 = sub_100030480(&qword_100107E38, &qword_1000CC848);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v11 - v8;
  sub_1000458B4(a1, a1[3]);
  sub_10006FD20();
  sub_1000B6020();
  v13 = *v3;
  v12 = 0;
  type metadata accessor for CGPoint(0);
  sub_10006FD74(&qword_100107E40, type metadata accessor for CGPoint, &protocol conformance descriptor for CGPoint);
  sub_1000B5EB0();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[1];
  v12 = 1;
  sub_1000B5EB0();
  v13 = v3[2];
  v12 = 2;
  sub_1000B5EB0();
  v13 = v3[3];
  v12 = 3;
  sub_1000B5EB0();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10006C77C()
{
  v1 = 0x7466654C706F74;
  v2 = 0x69526D6F74746F62;
  if (*v0 != 2)
  {
    v2 = 0x654C6D6F74746F62;
  }

  if (*v0)
  {
    v1 = 0x7468676952706F74;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10006C804@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10006F518(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10006C838(uint64_t a1)
{
  v2 = sub_10006FD20();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10006C874(uint64_t a1)
{
  v2 = sub_10006FD20();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10006C8B0@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_10006F688(a2, v7);
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

Swift::Int sub_10006C918()
{
  sub_1000B5FB0();
  sub_1000B56A0();

  return sub_1000B5FE0();
}

uint64_t sub_10006C9BC(uint64_t a1)
{
  sub_1000B56A0();
}

Swift::Int sub_10006CA4C(uint64_t a1)
{
  sub_1000B5FB0();
  sub_1000B56A0();

  return sub_1000B5FE0();
}

unint64_t sub_10006CAEC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10006F934(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_10006CB1C(uint64_t *a1@<X8>)
{
  v2 = 0xE200000000000000;
  v3 = 20565;
  v4 = 0xE400000000000000;
  v5 = 1413891404;
  if (*v1 != 2)
  {
    v5 = 0x5448474952;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 1314344772;
    v2 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_10006CC94(void *a1, double a2, double a3)
{
  v5 = sub_100030480(&qword_100107DF8, &qword_1000CC838);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v11 - v8;
  sub_1000458B4(a1, a1[3]);
  sub_10006FB7C();
  sub_1000B6020();
  v13 = 0;
  sub_1000B5E90();
  if (!v3)
  {
    v12 = 1;
    sub_1000B5E90();
  }

  return (*(v6 + 8))(v9, v5);
}

Swift::Int sub_10006CE28()
{
  sub_1000B5FB0();
  sub_1000B56A0();

  return sub_1000B5FE0();
}

uint64_t sub_10006CF18(uint64_t a1)
{
  sub_1000B56A0();
}

Swift::Int sub_10006CFF4(uint64_t a1)
{
  sub_1000B5FB0();
  sub_1000B56A0();

  return sub_1000B5FE0();
}

unint64_t sub_10006D0E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10006F980(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_10006D110(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x4F544F4850;
  v5 = 0xE900000000000045;
  v6 = 0x4C41435359415247;
  v7 = 0xEF45544948575F44;
  v8 = 0x4E415F4B43414C42;
  if (v2 != 3)
  {
    v8 = 0x414F424554494857;
    v7 = 0xEA00000000004452;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x524F4C4F43;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_10006D2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a5();
  a6();

  return sub_1000B4FF0();
}

uint64_t sub_10006D368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a5();
  a6();

  return sub_1000B5010();
}

uint64_t sub_10006D40C()
{
  if (*v0)
  {
    return 0x64757469676E6F6CLL;
  }

  else
  {
    return 0x656475746974616CLL;
  }
}

uint64_t sub_10006D44C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656475746974616CLL && a2 == 0xE800000000000000;
  if (v6 || (sub_1000B5F20() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1000B5F20();

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

uint64_t sub_10006D53C(uint64_t a1)
{
  v2 = sub_10006FB7C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10006D578(uint64_t a1)
{
  v2 = sub_10006FB7C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10006D5B4(double *a1@<X8>, void *a2@<X0>)
{
  v4 = sub_10006F9CC(a2);
  if (!v2)
  {
    *a1 = v4;
    *(a1 + 1) = v5;
  }
}

id sub_10006D5FC()
{
  result = sub_10004FC68();
  v2 = v1;
  if (v1)
  {
    v3 = result;
    v17 = result;
    v18 = v1;
    __chkstk_darwin(result, v1);
    v16[2] = &v17;
    v4 = sub_10002F354(sub_100045AC8, v16, &off_1000F3450);
    swift_arrayDestroy();
    if (v4)
    {
      v17 = v3;
      v18 = v2;
      v21 = 46;
      v22 = 0xE100000000000000;
      sub_10003042C();
      v5 = sub_1000B5AD0();

      v17 = sub_10002F0CC(1uLL, v5);
      v18 = v6;
      v19 = v7;
      v20 = v8;

      sub_100030480(&qword_100106AB8, &qword_1000CA310);
      sub_100067020(&qword_100106AC0, &qword_100106AB8, &qword_1000CA310, &protocol conformance descriptor for ArraySlice<A>);
      v9 = sub_1000B55C0();
      v11 = v10;
      swift_unknownObjectRelease();
      v12 = *(v5 + 16);
      if (v12)
      {
        v13 = (v5 + 16 + 16 * v12);
        v14 = *v13;
        v15 = v13[1];

        v17 = v9;
        v18 = v11;
        v23._countAndFlagsBits = 3027488;
        v23._object = 0xE300000000000000;
        sub_1000B56E0(v23);
        v24._countAndFlagsBits = v14;
        v24._object = v15;
        sub_1000B56E0(v24);
      }

      else
      {

        v17 = v9;
        v18 = v11;
        v25._countAndFlagsBits = 12832;
        v25._object = 0xE200000000000000;
        sub_1000B56E0(v25);
      }

      return v17;
    }

    else
    {
      return v3;
    }
  }

  return result;
}

void sub_10006D80C(void *a1@<X0>, uint64_t a2@<X8>)
{
  [a1 croppingQuadTopLeftX];
  if (v4 == 0.0 && ([a1 croppingQuadTopLeftY], v5 == 1.0) && (objc_msgSend(a1, "croppingQuadTopRightX"), v6 == 1.0) && (objc_msgSend(a1, "croppingQuadTopRightY"), v7 == 1.0) && (objc_msgSend(a1, "croppingQuadBottomRightX"), v8 == 1.0) && (objc_msgSend(a1, "croppingQuadBottomRightY"), v9 == 0.0) && (objc_msgSend(a1, "croppingQuadBottomLeftX"), v10 == 0.0) && (objc_msgSend(a1, "croppingQuadBottomLeftY"), v11 == 0.0))
  {

    v12 = 1;
    v13 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
  }

  else
  {
    [a1 croppingQuadTopLeftX];
    v32 = v17;
    [a1 croppingQuadTopLeftY];
    v31 = v18;
    [a1 croppingQuadTopRightX];
    v29 = v19;
    [a1 croppingQuadTopRightY];
    v30 = v20;
    [a1 croppingQuadBottomRightX];
    v27 = v21;
    [a1 croppingQuadBottomRightY];
    v28 = v22;
    [a1 croppingQuadBottomLeftX];
    v25 = v23;
    [a1 croppingQuadBottomLeftY];
    v26 = v24;

    *&v14 = v29;
    *&v13 = v32;
    v12 = 0;
    *(&v13 + 1) = v31;
    *(&v14 + 1) = v30;
    *&v15 = v27;
    *(&v15 + 1) = v28;
    *&v16 = v25;
    *(&v16 + 1) = v26;
  }

  *a2 = v13;
  *(a2 + 16) = v14;
  *(a2 + 32) = v15;
  *(a2 + 48) = v16;
  *(a2 + 64) = v12;
}

uint64_t sub_10006D9F0(unint64_t a1)
{
  if (a1 < 4)
  {
    return 0x3020104u >> (8 * a1);
  }

  if (qword_100106A68 != -1)
  {
    swift_once();
  }

  v2 = sub_1000B5530();
  sub_100036380(v2, qword_100107B78);
  v3 = sub_1000B5520();
  v4 = sub_1000B5930();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Unknown drawing orientation — returning nil", v5, 2u);
  }

  return 4;
}

void *sub_10006DAEC(void *a1, _OWORD *a2)
{
  v14 = _swiftEmptyArrayStorage;
  v4 = [a1 table];
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v6 = a2[1];
  *(v5 + 24) = *a2;
  *(v5 + 40) = v6;
  *(v5 + 56) = a2[2];
  *(v5 + 69) = *(a2 + 45);
  *(v5 + 88) = &v14;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_10006DD04;
  *(v7 + 24) = v5;
  aBlock[4] = sub_10006DD24;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10006C434;
  aBlock[3] = &unk_1000F4D18;
  v8 = _Block_copy(aBlock);
  v9 = a1;
  sub_10004D3AC(a2, v12);

  [v4 enumerateRowsWithBlock:v8];

  _Block_release(v8);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    v11 = v14;

    return v11;
  }

  return result;
}

uint64_t sub_10006DCAC()
{
  if (*(v0 + 40) != 1)
  {
  }

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_10006DD4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10006DD64()
{
  v1 = sub_1000B4F00();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5 + 16) != 1)
  {
  }

  return _swift_deallocObject(v0, ((v5 + 68) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

void sub_10006DE60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(sub_1000B4F00() - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v3 + 16);
  v11 = *(v3 + ((v9 + 68) & 0xFFFFFFFFFFFFFFF8));

  sub_10006C1AC(a1, a2, a3, v10, v3 + v8, v3 + v9, v11);
}

uint64_t sub_10006DF38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100030480(&qword_100106E38, &unk_1000CB730);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 48);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100030480(&qword_100106F88, &qword_1000CAE20);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 80);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_10006E088(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = sub_100030480(&qword_100106E38, &unk_1000CB730);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 48);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100030480(&qword_100106F88, &qword_1000CAE20);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 80);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_10006E1C4(uint64_t a1)
{
  sub_10004D9AC(319, &qword_100106CA0, &type metadata for String);
  if (v1 <= 0x3F)
  {
    sub_10004D9AC(319, &qword_100107080, &type metadata for Bool);
    if (v2 <= 0x3F)
    {
      sub_10006E4B0(319, &qword_100107088, &type metadata accessor for Date);
      if (v3 <= 0x3F)
      {
        sub_10004D9AC(319, &qword_100107C00, &type metadata for Data);
        if (v4 <= 0x3F)
        {
          sub_10006E4B0(319, &qword_100107C08, type metadata accessor for CGRect);
          if (v5 <= 0x3F)
          {
            sub_10004D9AC(319, &qword_100107C10, &type metadata for ICAttachmentArchiveModel.Cropping);
            if (v6 <= 0x3F)
            {
              sub_10004D9AC(319, &qword_100107C18, &type metadata for ICAttachmentArchiveModel.Orientations);
              if (v7 <= 0x3F)
              {
                sub_10004D9AC(319, &qword_100107C20, &type metadata for ICAttachmentArchiveModel.ImageFilters);
                if (v8 <= 0x3F)
                {
                  sub_10006E4B0(319, &qword_100107C28, &type metadata accessor for URL);
                  if (v9 <= 0x3F)
                  {
                    sub_10004D9AC(319, &qword_100107C30, &type metadata for ICAttachmentArchiveModel.Coordinate);
                    if (v10 <= 0x3F)
                    {
                      sub_10004D9F8(319, &qword_100107C38, &qword_100107C40, &unk_1000CC3B0);
                      if (v11 <= 0x3F)
                      {
                        sub_10004D9F8(319, &qword_100107540, &unk_100107548, &qword_1000CB760);
                        if (v12 <= 0x3F)
                        {
                          sub_10004D9AC(319, &qword_1001070A0, &type metadata for ICNoteArchiveModel.AttachmentViewTypes);
                          if (v13 <= 0x3F)
                          {
                            sub_10004D9AC(319, &unk_100107C48, &_s14AudioRecordingVN);
                            if (v14 <= 0x3F)
                            {
                              swift_cvw_initStructMetadataWithLayoutString();
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

void sub_10006E4B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000B5AC0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10006E53C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10006E55C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 64) = v3;
  return result;
}

unint64_t sub_10006E5AC()
{
  result = qword_100107CD8;
  if (!qword_100107CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107CD8);
  }

  return result;
}

unint64_t sub_10006E648()
{
  result = qword_100107CF0;
  if (!qword_100107CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107CF0);
  }

  return result;
}

unint64_t sub_10006E6A0()
{
  result = qword_100107CF8;
  if (!qword_100107CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107CF8);
  }

  return result;
}

unint64_t sub_10006E73C()
{
  result = qword_100107D10;
  if (!qword_100107D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107D10);
  }

  return result;
}

uint64_t sub_10006E790(uint64_t a1)
{
  *(a1 + 8) = sub_10006FD74(&qword_100106F20, type metadata accessor for ICAttachmentArchiveModel, &unk_1000CC7C4);
  result = sub_10006FD74(&qword_100107328, type metadata accessor for ICAttachmentArchiveModel, &unk_1000CC7EC);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10006E814()
{
  result = qword_100107D58;
  if (!qword_100107D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107D58);
  }

  return result;
}

uint64_t sub_10006E868(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000457C8(result, a2);
  }

  return result;
}

unint64_t sub_10006E87C()
{
  result = qword_100107D68;
  if (!qword_100107D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107D68);
  }

  return result;
}

unint64_t sub_10006E8D0()
{
  result = qword_100107D70;
  if (!qword_100107D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107D70);
  }

  return result;
}

unint64_t sub_10006E924()
{
  result = qword_100107D78;
  if (!qword_100107D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107D78);
  }

  return result;
}

unint64_t sub_10006E978()
{
  result = qword_100107D88;
  if (!qword_100107D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107D88);
  }

  return result;
}

unint64_t sub_10006EA00()
{
  result = qword_100107DA0;
  if (!qword_100107DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107DA0);
  }

  return result;
}

unint64_t sub_10006EA54()
{
  result = qword_100107DB8;
  if (!qword_100107DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107DB8);
  }

  return result;
}

unint64_t sub_10006EAA8()
{
  result = qword_100107DC8;
  if (!qword_100107DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107DC8);
  }

  return result;
}

uint64_t sub_10006EAFC(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_10003052C(&qword_100107C40, &unk_1000CC3B0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10006EBA8(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_10003052C(&qword_100106D10, &qword_1000CAA80);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10006EC20()
{
  result = qword_100107DE0;
  if (!qword_100107DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107DE0);
  }

  return result;
}

uint64_t sub_10006EC74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ICAttachmentArchiveModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006ECD8(uint64_t a1)
{
  v2 = type metadata accessor for ICAttachmentArchiveModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10006ED34(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65644965707974 && a2 == 0xEE00726569666974;
  if (v4 || (sub_1000B5F20() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_1000B5F20() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001000C7000 == a2 || (sub_1000B5F20() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6954746E65726170 && a2 == 0xEB00000000656C74 || (sub_1000B5F20() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001000C7020 == a2 || (sub_1000B5F20() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001000C7040 == a2 || (sub_1000B5F20() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001000C7600 == a2 || (sub_1000B5F20() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6C6946616964656DLL && a2 == 0xED0000656D616E65 || (sub_1000B5F20() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x4164657461657263 && a2 == 0xE900000000000074 || (sub_1000B5F20() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6465696669646F6DLL && a2 == 0xEA00000000007441 || (sub_1000B5F20() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000 || (sub_1000B5F20() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1000B5F20() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x73646E756F62 && a2 == 0xE600000000000000 || (sub_1000B5F20() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x676E6970706F7263 && a2 == 0xE800000000000000 || (sub_1000B5F20() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x7461746E6569726FLL && a2 == 0xEB000000006E6F69 || (sub_1000B5F20() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x6C69466567616D69 && a2 == 0xEB00000000726574 || (sub_1000B5F20() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_1000B5F20() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x4474657070696E73 && a2 == 0xEB00000000617461 || (sub_1000B5F20() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x616E6964726F6F63 && a2 == 0xEA00000000006574 || (sub_1000B5F20() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 1937207154 && a2 == 0xE400000000000000 || (sub_1000B5F20() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x5474686769527369 && a2 == 0xED00007466654C6FLL || (sub_1000B5F20() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001000C7620 == a2 || (sub_1000B5F20() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x65746F75516C7275 && a2 == 0xEC00000074786554 || (sub_1000B5F20() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001000C7640 == a2 || (sub_1000B5F20() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0x6365526F69647561 && a2 == 0xEE00676E6964726FLL)
  {

    return 24;
  }

  else
  {
    v6 = sub_1000B5F20();

    if (v6)
    {
      return 24;
    }

    else
    {
      return 25;
    }
  }
}

uint64_t sub_10006F518(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7466654C706F74 && a2 == 0xE700000000000000;
  if (v4 || (sub_1000B5F20() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7468676952706F74 && a2 == 0xE800000000000000 || (sub_1000B5F20() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69526D6F74746F62 && a2 == 0xEB00000000746867 || (sub_1000B5F20() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x654C6D6F74746F62 && a2 == 0xEA00000000007466)
  {

    return 3;
  }

  else
  {
    v6 = sub_1000B5F20();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_10006F688@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_100030480(&qword_100107E20, &qword_1000CC840);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v19 - v8;
  sub_1000458B4(a1, a1[3]);
  sub_10006FD20();
  sub_1000B6010();
  if (v2)
  {
    return sub_100035DA8(a1);
  }

  type metadata accessor for CGPoint(0);
  v21 = 0;
  sub_10006FD74(&qword_100107E30, type metadata accessor for CGPoint, &protocol conformance descriptor for CGPoint);
  sub_1000B5E00();
  v10 = v19;
  v11 = v20;
  v21 = 1;
  sub_1000B5E00();
  v12 = v19;
  v13 = v20;
  v21 = 2;
  sub_1000B5E00();
  v14 = v19;
  v15 = v20;
  v21 = 3;
  sub_1000B5E00();
  (*(v6 + 8))(v9, v5);
  v16 = v19;
  v17 = v20;
  result = sub_100035DA8(a1);
  *a2 = v10;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v13;
  a2[4] = v14;
  a2[5] = v15;
  a2[6] = v16;
  a2[7] = v17;
  return result;
}

unint64_t sub_10006F934(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000F3508;
  v6._object = a2;
  v4 = sub_1000B5D60(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_10006F980(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000F35B0;
  v6._object = a2;
  v4 = sub_1000B5D60(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

double sub_10006F9CC(void *a1)
{
  v2 = sub_100030480(&qword_100107DE8, &qword_1000CC830);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v10[-v5];
  sub_1000458B4(a1, a1[3]);
  sub_10006FB7C();
  sub_1000B6010();
  v10[15] = 0;
  sub_1000B5DE0();
  v8 = v7;
  v10[14] = 1;
  sub_1000B5DE0();
  (*(v3 + 8))(v6, v2);
  sub_100035DA8(a1);
  return v8;
}

unint64_t sub_10006FB7C()
{
  result = qword_100107DF0;
  if (!qword_100107DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107DF0);
  }

  return result;
}

unint64_t sub_10006FBD0()
{
  result = qword_100107E00;
  if (!qword_100107E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107E00);
  }

  return result;
}

unint64_t sub_10006FC24()
{
  result = qword_100107E08;
  if (!qword_100107E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107E08);
  }

  return result;
}

unint64_t sub_10006FC78()
{
  result = qword_100107E10;
  if (!qword_100107E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107E10);
  }

  return result;
}

unint64_t sub_10006FCCC()
{
  result = qword_100107E18;
  if (!qword_100107E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107E18);
  }

  return result;
}

unint64_t sub_10006FD20()
{
  result = qword_100107E28;
  if (!qword_100107E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107E28);
  }

  return result;
}

uint64_t sub_10006FD74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10006FDBC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_10006FE4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10006FF30()
{
  result = qword_100107E48;
  if (!qword_100107E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107E48);
  }

  return result;
}

unint64_t sub_10006FF88()
{
  result = qword_100107E50;
  if (!qword_100107E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107E50);
  }

  return result;
}

unint64_t sub_10006FFE0()
{
  result = qword_100107E58;
  if (!qword_100107E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107E58);
  }

  return result;
}

unint64_t sub_100070038()
{
  result = qword_100107E60;
  if (!qword_100107E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107E60);
  }

  return result;
}

unint64_t sub_100070090()
{
  result = qword_100107E68;
  if (!qword_100107E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107E68);
  }

  return result;
}

unint64_t sub_1000700E8()
{
  result = qword_100107E70;
  if (!qword_100107E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107E70);
  }

  return result;
}

unint64_t sub_100070140()
{
  result = qword_100107E78;
  if (!qword_100107E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107E78);
  }

  return result;
}

unint64_t sub_100070198()
{
  result = qword_100107E80;
  if (!qword_100107E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107E80);
  }

  return result;
}

unint64_t sub_1000701F0()
{
  result = qword_100107E88;
  if (!qword_100107E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107E88);
  }

  return result;
}

Swift::Int sub_1000702A4()
{
  v1 = *v0;
  sub_1000B5FB0();
  sub_1000B5FC0(v1);
  return sub_1000B5FE0();
}

Swift::Int sub_100070318(uint64_t a1)
{
  v2 = *v1;
  sub_1000B5FB0();
  sub_1000B5FC0(v2);
  return sub_1000B5FE0();
}

unint64_t sub_10007035C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100071A1C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id ICCloudSyncingObject.MoveAction.__allocating_init(type:object:fromParentObject:toParentObject:isCopy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v11 = objc_allocWithZone(v5);
  *&v11[OBJC_IVAR___ICCloudSyncingObjectMoveAction_type] = a1;
  *&v11[OBJC_IVAR___ICCloudSyncingObjectMoveAction_object] = a2;
  *&v11[OBJC_IVAR___ICCloudSyncingObjectMoveAction_fromParentObject] = a3;
  *&v11[OBJC_IVAR___ICCloudSyncingObjectMoveAction_toParentObject] = a4;
  v11[OBJC_IVAR___ICCloudSyncingObjectMoveAction_isCopy] = a5;
  v13.receiver = v11;
  v13.super_class = v5;
  return objc_msgSendSuper2(&v13, "init");
}

id ICCloudSyncingObject.MoveAction.init(type:object:fromParentObject:toParentObject:isCopy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  ObjectType = swift_getObjectType();
  *&v5[OBJC_IVAR___ICCloudSyncingObjectMoveAction_type] = a1;
  *&v5[OBJC_IVAR___ICCloudSyncingObjectMoveAction_object] = a2;
  *&v5[OBJC_IVAR___ICCloudSyncingObjectMoveAction_fromParentObject] = a3;
  *&v5[OBJC_IVAR___ICCloudSyncingObjectMoveAction_toParentObject] = a4;
  v5[OBJC_IVAR___ICCloudSyncingObjectMoveAction_isCopy] = a5;
  v13.receiver = v5;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, "init");
}

id ICCloudSyncingObject.MoveAction.__allocating_init(object:fromParentObject:toParentObject:isCopy:)(void *a1, void *a2, void *a3, char a4)
{
  v9 = objc_allocWithZone(v4);
  if (!a2)
  {

    a1 = a3;
    goto LABEL_7;
  }

  if (!a3)
  {

    goto LABEL_7;
  }

  v10 = a3;
  v11 = a2;
  v12 = sub_100071860(v11, v10);
  if (v13)
  {

LABEL_7:
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v15 = [v9 initWithType:v12 object:a1 fromParentObject:v11 toParentObject:v10 isCopy:a4 & 1];

  return v15;
}

id ICCloudSyncingObject.MoveAction.init(object:fromParentObject:toParentObject:isCopy:)(void *a1, void *a2, void *a3, char a4)
{
  v6 = a1;
  if (!a2)
  {

    v6 = a3;
    goto LABEL_7;
  }

  if (!a3)
  {

    goto LABEL_7;
  }

  v9 = a3;
  v10 = a2;
  v11 = sub_100071860(v10, v9);
  if (v12)
  {

LABEL_7:
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v14 = [v4 initWithType:v11 object:v6 fromParentObject:v10 toParentObject:v9 isCopy:a4 & 1];

  return v14;
}

id ICCloudSyncingObject.MoveAction.__allocating_init(folder:toParentObject:isCopy:)(void *a1, void *a2, char a3)
{
  v4 = v3;
  v8 = objc_allocWithZone(v4);
  v9 = [a1 parent];
  if (!v9)
  {
    v9 = [a1 account];
  }

  v10 = [v8 initWithObject:a1 fromParentObject:v9 toParentObject:a2 isCopy:a3 & 1];

  return v10;
}

id ICCloudSyncingObject.MoveAction.init(folder:toParentObject:isCopy:)(void *a1, void *a2, char a3)
{
  v4 = v3;
  v8 = [a1 parent];
  if (!v8)
  {
    v8 = [a1 account];
  }

  v9 = [v4 initWithObject:a1 fromParentObject:v8 toParentObject:a2 isCopy:a3 & 1];

  return v9;
}

id ICCloudSyncingObject.MoveAction.__allocating_init(note:toFolder:isCopy:)(void *a1, void *a2, char a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = [a1 folder];
  v9 = [v7 initWithObject:a1 fromParentObject:v8 toParentObject:a2 isCopy:a3 & 1];

  return v9;
}

id ICCloudSyncingObject.MoveAction.init(note:toFolder:isCopy:)(void *a1, void *a2, char a3)
{
  v7 = [a1 folder];
  v8 = [v3 initWithObject:a1 fromParentObject:v7 toParentObject:a2 isCopy:a3 & 1];

  return v8;
}

Swift::Void __swiftcall ICCloudSyncingObject.persistParticipantActivityEvents(oldShare:newShare:)(CKShare_optional oldShare, CKShare_optional newShare)
{
  v3 = v2;
  v4 = *&oldShare.is_nil;
  isa = oldShare.value.super.super.isa;
  v6 = sub_100030480(&qword_100107EB8, &qword_1000CCB90);
  v30 = *(v6 - 8);
  v31 = v6;
  __chkstk_darwin(v6, v7);
  v9 = &v29 - v8;
  v10 = sub_100030480(&qword_100107EC0, &qword_1000CCB98);
  v12 = __chkstk_darwin(isa, v11);
  v14 = &v29 - v13;
  if (v12)
  {
    v15 = [v12 ic_nonCurrentUserParticipants];
    sub_1000362AC(0, &qword_100107EE0, CKShareParticipant_ptr);
    v16 = sub_1000B57A0();
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  v17 = sub_100071148(v16);
  if (v4)
  {
    v18 = [v4 ic_nonCurrentUserParticipants];
    sub_1000362AC(0, &qword_100107EE0, CKShareParticipant_ptr);
    v19 = sub_1000B57A0();
  }

  else
  {
    v19 = _swiftEmptyArrayStorage;
  }

  v32[0] = sub_100071148(v19);
  v32[4] = v17;
  sub_100030480(&qword_100107EC8, &unk_1000CCBA0);
  sub_100067020(&qword_100107ED0, &qword_100107EC8, &unk_1000CCBA0, &protocol conformance descriptor for [A]);
  sub_100071EDC();
  sub_1000B55B0();

  v21 = v30;
  v20 = v31;
  (*(v30 + 16))(v14, v9, v31);
  v22 = *(v10 + 36);
  sub_100067020(&qword_100107EE8, &qword_100107EB8, &qword_1000CCB90, &protocol conformance descriptor for CollectionDifference<A>);
  sub_1000B5870();
  (*(v21 + 8))(v9, v20);
  while (1)
  {
    sub_1000B5890();
    if (*&v14[v22] == v32[0])
    {
      break;
    }

    v23 = sub_1000B58C0();
    v25 = *(v24 + 8);
    v26 = *(v24 + 25);
    v27 = v25;
    v23(v32, 0);
    sub_1000B58A0();
    v28 = &selRef_persistRemoveParticipantActivityEventForObject_participant_;
    if (!v26)
    {
      v28 = &selRef_persistAddParticipantActivityEventForObject_participant_;
    }
  }

  sub_100036320(v14, &qword_100107EC0, &qword_1000CCB98);
}

void *sub_100071148(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_1000B5CF0();
  if (!v3)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_1000342F8(v3, 0);
  sub_1000716AC((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1000712C4(unsigned int *a1)
{
  v22 = a1;
  v23 = sub_1000B4EA0();
  v2 = *(v23 - 8);
  __chkstk_darwin(v23, v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000B51D0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100030480(&qword_100107368, &qword_1000CB580);
  __chkstk_darwin(v11 - 8, v12);
  v14 = &v22 - v13;
  v15 = sub_1000B5250();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15, v17);
  v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v1;
  sub_1000B5240();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    return sub_100036320(v14, &qword_100107368, &qword_1000CB580);
  }

  (*(v16 + 32))(v19, v14, v15);
  (*(v16 + 16))(v10, v19, v15);
  (*(v7 + 104))(v10, *v22, v6);
  sub_1000B4E90();

  (*(v2 + 8))(v5, v23);
  (*(v7 + 8))(v10, v6);
  return (*(v16 + 8))(v19, v15);
}

void (*sub_100071624(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_1000B5C20();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1000716A4;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000716AC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1000B5CF0();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1000B5CF0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100067020(&qword_100107F20, &qword_100107EC8, &unk_1000CCBA0, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_100030480(&qword_100107EC8, &unk_1000CCBA0);
            v9 = sub_100071624(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1000362AC(0, &qword_100107EE0, CKShareParticipant_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100071860(void *a1, void *a2)
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4 && [v4 isTrashFolder] || (objc_opt_self(), (v5 = swift_dynamicCastObjCClass()) != 0) && objc_msgSend(v5, "isTrashFolder"))
  {

    return 0;
  }

  if ([a1 isSharedViaICloud] && objc_msgSend(a2, "isSharedViaICloud"))
  {
    v7 = [a1 sharedRootObject];
    v8 = [a2 sharedRootObject];
    v9 = v8;
    if (v7)
    {
      if (v8)
      {
        sub_1000362AC(0, &qword_100106C00, ICCloudSyncingObject_ptr);
        v10 = sub_1000B5AA0();

        if ((v10 & 1) == 0)
        {
          return 2;
        }

        return 3;
      }

      v9 = a2;
    }

    else
    {

      if (!v9)
      {
        return 3;
      }
    }

    return 2;
  }

  if ([a1 isSharedViaICloud])
  {
    v11 = [a2 isSharedViaICloud];

    if (v11)
    {
      return 0;
    }

    else
    {
      return 4;
    }
  }

  else
  {

    return 1;
  }
}

unint64_t sub_100071A1C(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

void _sSo20ICCloudSyncingObjectC38com_apple_mobilenotes_SharingExtensionE29undoablyPersistActivityEvents3for03oldC003newC0yAbCE10MoveActionC_ABSgAJtFZ_0(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + OBJC_IVAR___ICCloudSyncingObjectMoveAction_type);
  if (v3 <= 1)
  {
    if (!v3)
    {
      return;
    }

    if (v3 != 1)
    {
      goto LABEL_39;
    }

    if (!a3)
    {
      return;
    }

    v9 = *(a1 + OBJC_IVAR___ICCloudSyncingObjectMoveAction_toParentObject);
    v30 = a3;
    if (*(a1 + OBJC_IVAR___ICCloudSyncingObjectMoveAction_isCopy) == 1)
    {
      goto LABEL_29;
    }

    goto LABEL_31;
  }

  if (v3 != 2)
  {
    if (v3 == 3)
    {
      if (!a3)
      {
        return;
      }

      v4 = *(a1 + OBJC_IVAR___ICCloudSyncingObjectMoveAction_fromParentObject);
      v5 = *(a1 + OBJC_IVAR___ICCloudSyncingObjectMoveAction_toParentObject);
      v30 = a3;
      if (*(a1 + OBJC_IVAR___ICCloudSyncingObjectMoveAction_isCopy) == 1)
      {
        v6 = *(a1 + OBJC_IVAR___ICCloudSyncingObjectMoveAction_object);
        v7 = a3;
        v8 = [v7 persistCopyActivityEventForObject:v7 originalObject:v6 fromParentObject:v4 toParentObject:v5];
      }

      else
      {
        v21 = a3;
        v8 = [v21 persistMoveActivityEventForObject:v21 fromParentObject:v4 toParentObject:v5];
      }

      goto LABEL_32;
    }

    if (v3 == 4)
    {
      if (!a2)
      {
        return;
      }

      v16 = a1;
      v17 = *(a1 + OBJC_IVAR___ICCloudSyncingObjectMoveAction_fromParentObject);
      v30 = a2;
      v18 = [v17 sharedRootObject];
      if (!v18)
      {
        v22 = v30;
LABEL_34:

        return;
      }

      v19 = v18;
      if (*(v16 + OBJC_IVAR___ICCloudSyncingObjectMoveAction_isCopy) == 1)
      {
        v20 = [v18 persistCopyActivityEventForObject:v30 originalObject:*(v16 + OBJC_IVAR___ICCloudSyncingObjectMoveAction_object) fromParentObject:v17 toParentObject:0];
      }

      else
      {
        v20 = [v18 persistMoveActivityEventForObject:v30 fromParentObject:v17 toParentObject:0];
      }

      v28 = v20;
      v29 = [objc_opt_self() shared];
      [v29 registerUndoForCloudSyncingObjectActivityEvent:v28 cloudSyncingObject:v19];

LABEL_33:
      v22 = v29;
      goto LABEL_34;
    }

LABEL_39:
    sub_1000B5F30();
    __break(1u);
    return;
  }

  v30 = a3;
  if (a2)
  {
    v10 = a1;
    v11 = *(a1 + OBJC_IVAR___ICCloudSyncingObjectMoveAction_fromParentObject);
    v12 = a2;
    v13 = [v11 sharedRootObject];
    if (v13)
    {
      v14 = v13;
      if (*(v10 + OBJC_IVAR___ICCloudSyncingObjectMoveAction_isCopy) == 1)
      {
        v15 = [v13 persistCopyActivityEventForObject:v12 originalObject:*(v10 + OBJC_IVAR___ICCloudSyncingObjectMoveAction_object) fromParentObject:v11 toParentObject:0];
      }

      else
      {
        v15 = [v13 persistMoveActivityEventForObject:v12 fromParentObject:v11 toParentObject:0];
      }

      v23 = v15;
      v24 = [objc_opt_self() shared];
      [v24 registerUndoForCloudSyncingObjectActivityEvent:v23 cloudSyncingObject:v14];

      v12 = v24;
    }

    a1 = v10;
    a3 = v30;
  }

  if (a3)
  {
    v9 = *(a1 + OBJC_IVAR___ICCloudSyncingObjectMoveAction_toParentObject);
    if (*(a1 + OBJC_IVAR___ICCloudSyncingObjectMoveAction_isCopy) == 1)
    {
LABEL_29:
      v25 = *(a1 + OBJC_IVAR___ICCloudSyncingObjectMoveAction_object);
      v26 = a3;
      v8 = [v26 persistCopyActivityEventForObject:v26 originalObject:v25 fromParentObject:0 toParentObject:v9];
LABEL_32:
      v28 = v8;
      v29 = [objc_opt_self() shared];
      [v29 registerUndoForCloudSyncingObjectActivityEvent:v28 cloudSyncingObject:v30];
      goto LABEL_33;
    }

LABEL_31:
    v27 = a3;
    v8 = [v27 persistMoveActivityEventForObject:v27 fromParentObject:0 toParentObject:v9];
    goto LABEL_32;
  }
}

unint64_t sub_100071EDC()
{
  result = qword_100107ED8;
  if (!qword_100107ED8)
  {
    sub_1000362AC(255, &qword_100107EE0, CKShareParticipant_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107ED8);
  }

  return result;
}

unint64_t sub_100071F50()
{
  result = qword_100107EF0;
  if (!qword_100107EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107EF0);
  }

  return result;
}

uint64_t sub_100071FD8(uint64_t a1)
{
  if (*(a1 + 16) == 1)
  {
    sub_100030480(&qword_100106D00, &qword_1000CAA70);
    sub_1000B50B0();
    if (v1)
    {
      v2 = sub_1000B55F0();

      v3 = [v2 ic_sanitizedFilenameString];

      v4 = sub_1000B5620();
      v6 = v5;

      v7 = HIBYTE(v6) & 0xF;
      if ((v6 & 0x2000000000000000) == 0)
      {
        v7 = v4 & 0xFFFFFFFFFFFFLL;
      }

      if (v7)
      {
        return v4;
      }
    }
  }

  v9 = [objc_opt_self() mainBundle];
  v10 = sub_1000B55F0();
  v11 = [v9 localizedStringForKey:v10 value:0 table:0];

  v12 = sub_1000B5620();
  return v12;
}

uint64_t sub_100072158(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v32 = a8;
  v41 = a1;
  v42 = a2;
  v10 = *(a5 - 8);
  __chkstk_darwin(a1, a2);
  v43 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v45 = *(AssociatedTypeWitness - 8);
  v13 = __chkstk_darwin(AssociatedTypeWitness, v12);
  v15 = &v30 - v14;
  __chkstk_darwin(v13, v16);
  v39 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_getAssociatedTypeWitness();
  v33 = *(v18 - 8);
  v34 = v18;
  __chkstk_darwin(v18, v19);
  v21 = &v30 - v20;
  v22 = sub_1000B5880();
  if (!v22)
  {
    return sub_1000B57D0();
  }

  v44 = v22;
  v48 = sub_1000B5CB0();
  v35 = sub_1000B5CC0();
  sub_1000B5C70(v44);
  result = sub_1000B5870();
  if ((v44 & 0x8000000000000000) == 0)
  {
    v30 = v10;
    v31 = a5;
    v24 = 0;
    v36 = (v45 + 16);
    v37 = (v45 + 8);
    v38 = v8;
    while (!__OFADD__(v24, 1))
    {
      v45 = v24 + 1;
      v25 = sub_1000B58C0();
      v26 = v15;
      v27 = v15;
      v28 = AssociatedTypeWitness;
      (*v36)(v26);
      v25(v47, 0);
      v29 = v46;
      v41(v27, v43);
      if (v29)
      {
        (*v37)(v27, v28);
        (*(v33 + 8))(v21, v34);

        return (*(v30 + 32))(v32, v43, v31);
      }

      v46 = 0;
      (*v37)(v27, v28);
      sub_1000B5CA0();
      result = sub_1000B58A0();
      ++v24;
      v15 = v27;
      if (v45 == v44)
      {
        (*(v33 + 8))(v21, v34);
        return v48;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100072578(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000B4B70();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  sub_1000B4B60();

  v8(v7);

  return (*(v4 + 8))(v7, v3);
}

uint64_t static ICArchiveExporterConfiguration.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100106A80 != -1)
  {
    swift_once();
  }

  v2 = static ICArchiveCreator.default;
  v4 = qword_100112C30;
  v3 = unk_100112C38;
  v5 = xmmword_100112C40;

  IsAlexandriaDemoModeEnabled = ICInternalSettingsIsAlexandriaDemoModeEnabled();
  v7 = ICInternalSettingsIsAlexandriaDemoModeEnabled();
  result = ICInternalSettingsIsAlexandriaDemoModeEnabled();
  *a1 = 0;
  *(a1 + 8) = v2;
  *(a1 + 24) = v4;
  *(a1 + 32) = v3;
  *(a1 + 40) = v5;
  *(a1 + 56) = IsAlexandriaDemoModeEnabled;
  *(a1 + 57) = v7;
  *(a1 + 58) = result;
  *(a1 + 59) = 0;
  return result;
}

uint64_t sub_10007273C()
{
  v0 = sub_1000B5530();
  sub_10003640C(v0, qword_100107F28);
  sub_100036380(v0, qword_100107F28);
  return sub_1000B5510();
}

uint64_t sub_100072788()
{
  v0 = sub_1000B5530();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000B54B0();
  sub_10003640C(v5, qword_100107F40);
  sub_100036380(v5, qword_100107F40);
  if (qword_100106A70 != -1)
  {
    swift_once();
  }

  v6 = sub_100036380(v0, qword_100107F28);
  (*(v1 + 16))(v4, v6, v0);
  return sub_1000B5490();
}

uint64_t ICArchiveExporter.__allocating_init(objectProvider:configuration:fileManager:)(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  swift_allocObject();
  v8 = sub_10008832C(a1, a2, a3, a4);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v8;
}

uint64_t ICArchiveExporter.init(objectProvider:configuration:fileManager:)(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_10008832C(a1, a2, a3, a4);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_1000729C4()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = swift_allocObject();
  swift_weakInit();
  v8 = sub_100088CF0;
  v9 = v2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100072578;
  ObjectType = &unk_1000F53A0;
  v3 = _Block_copy(aBlock);

  v4 = [v1 addObserverForName:UIApplicationDidReceiveMemoryWarningNotification object:0 queue:0 usingBlock:v3];
  _Block_release(v3);

  ObjectType = swift_getObjectType();
  aBlock[0] = v4;
  swift_beginAccess();
  sub_1000521D8(aBlock, v0 + 128, &qword_100106E30, &unk_1000CAB60);
  return swift_endAccess();
}

uint64_t sub_100072B30()
{
  v1 = (v0 + 16);
  v2 = *v0;
  v3 = [objc_opt_self() defaultCenter];
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  v5[2] = *(v2 + 80);
  v5[3] = *(v2 + 88);
  v5[4] = v4;
  v11 = sub_100088D48;
  v12 = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100072578;
  ObjectType = &unk_1000F5418;
  v6 = _Block_copy(aBlock);

  v7 = [v3 addObserverForName:UIApplicationDidReceiveMemoryWarningNotification object:0 queue:0 usingBlock:v6];
  _Block_release(v6);

  ObjectType = swift_getObjectType();
  aBlock[0] = v7;
  swift_beginAccess();
  sub_1000521D8(aBlock, v1, &qword_100106E30, &unk_1000CAB60);
  return swift_endAccess();
}

uint64_t *ICArchiveExporter.deinit()
{
  sub_100072D48();
  swift_unknownObjectRelease();
  sub_10008839C(v0[4], v0[5], v0[6], v0[7], v0[8], v0[9]);
  swift_unknownObjectRelease();
  sub_100036320((v0 + 16), &qword_100106E30, &unk_1000CAB60);
  return v0;
}

void sub_100072D48()
{
  swift_beginAccess();
  sub_100030C74(v0 + 128, v6, &qword_100106E30, &unk_1000CAB60);
  v1 = [objc_opt_self() defaultCenter];
  sub_100030C74(v6, &v4, &qword_100106E30, &unk_1000CAB60);
  if (v5)
  {
    sub_100030C64(&v4, &v2);
    sub_1000458B4(&v2, v3);
    [v1 removeObserver:sub_1000B5F00()];
    swift_unknownObjectRelease();
    sub_100035DA8(&v2);
  }

  sub_100036320(v6, &qword_100106E30, &unk_1000CAB60);
}

uint64_t ICArchiveExporter.__deallocating_deinit()
{
  ICArchiveExporter.deinit();

  return swift_deallocClassInstance();
}

uint64_t ICArchiveExporter.createArchive(for:at:progress:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000B4DB0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = ICArchiveExporter.createArchive(for:progress:)(a1, a3, v10);
  if (!v3)
  {
    swift_getObjectType();
    sub_1000B4F80();
    sub_1000B4FE0();
    ICArchiveExporter.removeArchive(at:)(v10);
    return (*(v7 + 8))(v10, v6);
  }

  return result;
}

uint64_t sub_100073024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18[0] = a3;
  v6 = sub_100030480(&qword_100106F88, &qword_1000CAE20);
  __chkstk_darwin(v6, v7);
  v9 = v18 - v8;
  v10 = swift_allocBox();
  v12 = v11;
  v13 = sub_1000B4DB0();
  v14 = *(v13 - 8);
  (*(v14 + 56))(v12, 1, 1, v13);
  v23 = 0;
  v18[4] = v12;
  v19 = v3;
  v20 = a1;
  v21 = a2;
  v22 = &v23;
  sub_1000B51C0();
  sub_1000886A4(&qword_100108018, &type metadata accessor for ICModernObjectProvider, &protocol conformance descriptor for ICModernObjectProvider);
  v15 = v18[1];
  sub_1000B5020();
  if (v15)
  {
    goto LABEL_4;
  }

  v16 = v18[0];
  sub_100030C74(v12, v9, &qword_100106F88, &qword_1000CAE20);
  result = (*(v14 + 48))(v9, 1, v13);
  if (result != 1)
  {
    (*(v14 + 32))(v16, v9, v13);
LABEL_4:
    sub_100073A50(v10, &v23, v3);
  }

  __break(1u);
  return result;
}

uint64_t ICArchiveExporter.createArchive(for:progress:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19 = a2;
  v18 = a3;
  v5 = sub_100030480(&qword_100106F88, &qword_1000CAE20);
  __chkstk_darwin(v5, v6);
  v8 = &v17 - v7;
  v9 = swift_allocBox();
  v11 = v10;
  v12 = sub_1000B4DB0();
  v13 = *(v12 - 8);
  (*(v13 + 56))(v11, 1, 1, v12);
  v26 = 0;
  v21 = v11;
  v22 = v3;
  v14 = v20;
  v23 = a1;
  v24 = v19;
  v25 = &v26;
  sub_1000B5020();
  if (v14)
  {
    goto LABEL_4;
  }

  v15 = v18;
  sub_100030C74(v11, v8, &qword_100106F88, &qword_1000CAE20);
  result = (*(v13 + 48))(v8, 1, v12);
  if (result != 1)
  {
    (*(v13 + 32))(v15, v8, v12);
LABEL_4:
    sub_1000740A0(v9, &v26, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_100073430(uint64_t a1)
{
  v3 = sub_1000B4DB0();
  v4 = *(v3 - 8);
  v6 = __chkstk_darwin(v3, v5);
  v27 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v8);
  v10 = &v24 - v9;
  if (qword_100106A70 != -1)
  {
    swift_once();
  }

  v11 = sub_1000B5530();
  sub_100036380(v11, qword_100107F28);
  v12 = *(v4 + 16);
  v28 = a1;
  v12(v10, a1, v3);
  v13 = sub_1000B5520();
  v14 = sub_1000B5910();
  v15 = os_log_type_enabled(v13, v14);
  v29 = v4;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = v1;
    v30 = v25;
    *v16 = 136315138;
    sub_1000886A4(&qword_100106F10, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v17 = sub_1000B5EE0();
    v19 = v18;
    v20 = *(v4 + 8);
    v20(v10, v3);
    v21 = sub_100062B20(v17, v19, &v30);

    *(v16 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v13, v14, "Removing archive… {url: %s}", v16, 0xCu);
    sub_100035DA8(v25);
  }

  else
  {

    v20 = *(v4 + 8);
    v20(v10, v3);
  }

  swift_getObjectType();
  v22 = v27;
  sub_1000B4D30();
  sub_1000B4F80();
  return (v20)(v22, v3);
}

uint64_t ICArchiveExporter.removeArchive(at:)(uint64_t a1)
{
  v3 = sub_1000B4DB0();
  v4 = *(v3 - 8);
  v6 = __chkstk_darwin(v3, v5);
  v27 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v8);
  v10 = &v24 - v9;
  if (qword_100106A70 != -1)
  {
    swift_once();
  }

  v11 = sub_1000B5530();
  sub_100036380(v11, qword_100107F28);
  v12 = *(v4 + 16);
  v28 = a1;
  v12(v10, a1, v3);
  v13 = sub_1000B5520();
  v14 = sub_1000B5910();
  v15 = os_log_type_enabled(v13, v14);
  v29 = v4;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = v1;
    v30 = v25;
    *v16 = 136315138;
    sub_1000886A4(&qword_100106F10, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v17 = sub_1000B5EE0();
    v19 = v18;
    v20 = *(v4 + 8);
    v20(v10, v3);
    v21 = sub_100062B20(v17, v19, &v30);

    *(v16 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v13, v14, "Removing archive… {url: %s}", v16, 0xCu);
    sub_100035DA8(v25);
  }

  else
  {

    v20 = *(v4 + 8);
    v20(v10, v3);
  }

  swift_getObjectType();
  v22 = v27;
  sub_1000B4D30();
  sub_1000B4F80();
  return (v20)(v22, v3);
}

void sub_100073A50(uint64_t a1, uint64_t a2, void *a3)
{
  v51 = a3;
  v53 = a2;
  v3 = sub_100030480(&qword_100106F88, &qword_1000CAE20);
  v5 = __chkstk_darwin(v3 - 8, v4);
  v52 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v7);
  v9 = &v50 - v8;
  v10 = sub_1000B4DB0();
  v11 = *(v10 - 8);
  v13 = __chkstk_darwin(v10, v12);
  v50 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13, v15);
  v18 = &v50 - v17;
  __chkstk_darwin(v16, v19);
  v21 = &v50 - v20;
  v22 = swift_projectBox();
  swift_beginAccess();
  v23 = v11;
  sub_100030C74(v22, v9, &qword_100106F88, &qword_1000CAE20);
  v24 = *(v11 + 48);
  if (v24(v9, 1, v10) == 1)
  {
    sub_100036320(v9, &qword_100106F88, &qword_1000CAE20);
  }

  else
  {
    (*(v11 + 32))(v21, v9, v10);
    if ((*v53 & 1) == 0)
    {
      sub_100073430(v21);
      v37 = v50;
      if (qword_100106A70 != -1)
      {
        swift_once();
      }

      v38 = sub_1000B5530();
      sub_100036380(v38, qword_100107F28);
      (*(v11 + 16))(v37, v21, v10);
      v39 = sub_1000B5520();
      v40 = sub_1000B5910();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v54[0] = v42;
        *v41 = 136315138;
        sub_1000886A4(&qword_100106F10, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v43 = sub_1000B5EE0();
        v44 = v23;
        v46 = v45;
        v47 = *(v44 + 8);
        v47(v37, v10);
        v48 = sub_100062B20(v43, v46, v54);

        *(v41 + 4) = v48;
        _os_log_impl(&_mh_execute_header, v39, v40, "Failed to create archive — removing temporary files {url: %s}", v41, 0xCu);
        sub_100035DA8(v42);

        v47(v21, v10);
      }

      else
      {

        v49 = *(v11 + 8);
        v49(v37, v10);
        v49(v21, v10);
      }

      return;
    }

    (*(v11 + 8))(v21, v10);
  }

  if (qword_100106A70 != -1)
  {
    swift_once();
  }

  v25 = sub_1000B5530();
  sub_100036380(v25, qword_100107F28);

  v26 = sub_1000B5520();
  v27 = sub_1000B5910();
  if (!os_log_type_enabled(v26, v27))
  {

    goto LABEL_11;
  }

  v53 = v11;
  v28 = swift_slowAlloc();
  v51 = swift_slowAlloc();
  v55 = v51;
  *v28 = 136315138;
  swift_beginAccess();
  v29 = v22;
  v30 = v52;
  sub_100030C74(v29, v52, &qword_100106F88, &qword_1000CAE20);
  v31 = v24(v30, 1, v10);

  if (v31 != 1)
  {
    v32 = v53;
    (*(v53 + 32))(v18, v30, v10);
    sub_1000886A4(&qword_100106F10, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v33 = sub_1000B5EE0();
    v35 = v34;
    (*(v32 + 8))(v18, v10);
    v36 = sub_100062B20(v33, v35, &v55);

    *(v28 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v26, v27, "Created archive {url: %s}", v28, 0xCu);
    sub_100035DA8(v51);

LABEL_11:

    return;
  }

  __break(1u);
}

void sub_1000740A0(uint64_t a1, uint64_t a2, void *a3)
{
  v51 = a3;
  v53 = a2;
  v3 = sub_100030480(&qword_100106F88, &qword_1000CAE20);
  v5 = __chkstk_darwin(v3 - 8, v4);
  v52 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v7);
  v9 = &v50 - v8;
  v10 = sub_1000B4DB0();
  v11 = *(v10 - 8);
  v13 = __chkstk_darwin(v10, v12);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v13, v16);
  v50 = &v50 - v18;
  __chkstk_darwin(v17, v19);
  v21 = &v50 - v20;
  v22 = swift_projectBox();
  swift_beginAccess();
  v23 = v11;
  sub_100030C74(v22, v9, &qword_100106F88, &qword_1000CAE20);
  v24 = *(v11 + 48);
  if (v24(v9, 1, v10) == 1)
  {
    sub_100036320(v9, &qword_100106F88, &qword_1000CAE20);
  }

  else
  {
    (*(v11 + 32))(v21, v9, v10);
    if ((*v53 & 1) == 0)
    {
      ICArchiveExporter.removeArchive(at:)(v21);
      v37 = v50;
      if (qword_100106A70 != -1)
      {
        swift_once();
      }

      v38 = sub_1000B5530();
      sub_100036380(v38, qword_100107F28);
      (*(v11 + 16))(v37, v21, v10);
      v39 = sub_1000B5520();
      v40 = sub_1000B5910();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v54[0] = v42;
        *v41 = 136315138;
        sub_1000886A4(&qword_100106F10, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v43 = sub_1000B5EE0();
        v44 = v23;
        v46 = v45;
        v47 = *(v44 + 8);
        v47(v37, v10);
        v48 = sub_100062B20(v43, v46, v54);

        *(v41 + 4) = v48;
        _os_log_impl(&_mh_execute_header, v39, v40, "Failed to create archive — removing temporary files {url: %s}", v41, 0xCu);
        sub_100035DA8(v42);

        v47(v21, v10);
      }

      else
      {

        v49 = *(v11 + 8);
        v49(v37, v10);
        v49(v21, v10);
      }

      return;
    }

    (*(v11 + 8))(v21, v10);
  }

  if (qword_100106A70 != -1)
  {
    swift_once();
  }

  v25 = sub_1000B5530();
  sub_100036380(v25, qword_100107F28);

  v26 = sub_1000B5520();
  v27 = sub_1000B5910();
  if (!os_log_type_enabled(v26, v27))
  {

    goto LABEL_11;
  }

  v53 = v11;
  v28 = swift_slowAlloc();
  v51 = swift_slowAlloc();
  v55 = v51;
  *v28 = 136315138;
  swift_beginAccess();
  v29 = v22;
  v30 = v52;
  sub_100030C74(v29, v52, &qword_100106F88, &qword_1000CAE20);
  v31 = v24(v30, 1, v10);

  if (v31 != 1)
  {
    v32 = v53;
    (*(v53 + 32))(v15, v30, v10);
    sub_1000886A4(&qword_100106F10, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v33 = sub_1000B5EE0();
    v35 = v34;
    (*(v32 + 8))(v15, v10);
    v36 = sub_100062B20(v33, v35, &v55);

    *(v28 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v26, v27, "Created archive {url: %s}", v28, 0xCu);
    sub_100035DA8(v51);

LABEL_11:

    return;
  }

  __break(1u);
}

uint64_t sub_1000746F0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _BYTE *a5)
{
  v88 = a4;
  v89 = a5;
  v97 = a1;
  v7 = sub_100030480(&qword_100106D00, &qword_1000CAA70);
  v87 = *(v7 - 8);
  __chkstk_darwin(v7, v8);
  v10 = v79 - v9;
  v11 = sub_1000B54B0();
  v91 = *(v11 - 8);
  v92 = v11;
  __chkstk_darwin(v11, v12);
  v90 = v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000B5480();
  v93 = *(v14 - 8);
  v94 = v14;
  v16 = __chkstk_darwin(v14, v15);
  v18 = v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v19);
  v21 = v79 - v20;
  v22 = sub_100030480(&qword_100106F88, &qword_1000CAE20);
  v24 = __chkstk_darwin(v22 - 8, v23);
  v26 = v79 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v24, v27);
  v30 = v79 - v29;
  v32 = __chkstk_darwin(v28, v31);
  v98 = v79 - v33;
  __chkstk_darwin(v32, v34);
  v36 = v79 - v35;
  v96 = a2;
  v37 = v99;
  result = sub_1000757FC(a3, v79 - v35);
  if (!v37)
  {
    v81 = v18;
    v82 = v30;
    v80 = v26;
    v83 = v21;
    v84 = a3;
    v95 = 0;
    v39 = sub_1000B4DB0();
    v40 = *(v39 - 8);
    (*(v40 + 56))(v36, 0, 1, v39);
    v41 = v36;
    v42 = v97;
    sub_1000521D8(v41, v97, &qword_100106F88, &qword_1000CAE20);
    v99 = *(v96 + 96);
    v43 = v98;
    v44 = v39;
    sub_100030C74(v42, v98, &qword_100106F88, &qword_1000CAE20);
    v85 = *(v40 + 48);
    v86 = v40 + 48;
    result = v85(v43, 1, v39);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      swift_getObjectType();
      v45 = v95;
      sub_1000B4F90();
      v95 = v45;
      if (v45)
      {
        return (*(v40 + 8))(v43, v39);
      }

      v79[0] = *(v40 + 8);
      v79[1] = v40 + 8;
      (v79[0])(v43, v39);
      if (qword_100106A78 != -1)
      {
        goto LABEL_25;
      }

      while (1)
      {
        v46 = v92;
        v47 = sub_100036380(v92, qword_100107F40);
        v48 = v90;
        v49 = v91;
        v50 = *(v91 + 16);
        v99 = v47;
        v50(v90);
        v51 = v82;
        sub_100030C74(v97, v82, &qword_100106F88, &qword_1000CAE20);
        result = v85(v51, 1, v44);
        if (result == 1)
        {
          break;
        }

        sub_1000B4CF0(v52);
        sub_1000B54A0();
        v53 = v83;
        sub_1000B5460();
        (*(v49 + 8))(v48, v46);
        v92 = v44;
        (v79[0])(v51, v44);
        v54 = sub_1000B54A0();
        v55 = sub_1000B59E0();
        if (sub_1000B5AB0())
        {
          v56 = swift_slowAlloc();
          *v56 = 0;
          v57 = sub_1000B5470();
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v54, v55, v57, "Create Archive", "", v56, 2u);
        }

        (*(v93 + 16))(v81, v53, v94);
        sub_1000B54F0();
        swift_allocObject();
        v91 = sub_1000B54E0();
        v44 = *(v84 + 16);
        if (!v44)
        {
          v58 = 0;
LABEL_15:
          if (qword_100106A70 != -1)
          {
            swift_once();
          }

          v65 = sub_1000B5530();
          sub_100036380(v65, qword_100107F28);
          v66 = sub_1000B5520();
          v67 = sub_1000B5910();
          v68 = os_log_type_enabled(v66, v67);
          v70 = v88;
          v69 = v89;
          v72 = v93;
          v71 = v94;
          v73 = v97;
          if (v68)
          {
            v74 = swift_slowAlloc();
            *v74 = 134217984;
            *(v74 + 4) = v58;
            _os_log_impl(&_mh_execute_header, v66, v67, "Exporting notes… {noteCount: %ld}", v74, 0xCu);
          }

          [v70 setTotalUnitCount:v58];
          v75 = v73;
          v76 = v80;
          sub_100030C74(v75, v80, &qword_100106F88, &qword_1000CAE20);
          result = v85(v76, 1, v92);
          if (result != 1)
          {
            v77 = v95;
            sub_100076354(v76, v84, v70);
            v78 = v83;
            (v79[0])(v76, v92);
            if (!v77)
            {
              sub_1000B58F0();
              *v69 = 1;
            }

            sub_1000795D8(v91, "Create Archive");

            return (*(v72 + 8))(v78, v71);
          }

          goto LABEL_28;
        }

        v58 = 0;
        v59 = v87 + 16;
        v99 = *(v87 + 16);
        v60 = v84 + ((*(v87 + 80) + 32) & ~*(v87 + 80));
        v98 = *(v87 + 72);
        v61 = (v87 + 8);
        while (1)
        {
          v62 = v59;
          v99(v10, v60, v7);
          v63 = sub_1000B5060();
          (*v61)(v10, v7);
          v64 = __OFADD__(v58, v63);
          v58 += v63;
          if (v64)
          {
            break;
          }

          v60 += v98;
          --v44;
          v59 = v62;
          if (!v44)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_25:
        swift_once();
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  return result;
}

uint64_t sub_100074F60(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, _BYTE *a5)
{
  v87 = a1;
  v81 = a4;
  v7 = *a2;
  v79 = a5;
  v80 = v7;
  v8 = sub_1000B54B0();
  v83 = *(v8 - 8);
  v84 = v8;
  __chkstk_darwin(v8, v9);
  v82 = v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000B5480();
  v85 = *(v11 - 8);
  v86 = v11;
  v13 = __chkstk_darwin(v11, v12);
  v15 = v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v16);
  v18 = v71 - v17;
  v19 = sub_100030480(&qword_100106F88, &qword_1000CAE20);
  v21 = __chkstk_darwin(v19 - 8, v20);
  v23 = v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v21, v24);
  v27 = v71 - v26;
  v29 = __chkstk_darwin(v25, v28);
  v31 = v71 - v30;
  __chkstk_darwin(v29, v32);
  v34 = v71 - v33;
  v35 = v88;
  result = sub_100075CC8(a3, v71 - v33);
  if (!v35)
  {
    v73 = v23;
    v74 = v27;
    v72 = v15;
    v88 = 0;
    v75 = v18;
    v76 = a3;
    v37 = sub_1000B4DB0();
    v38 = *(v37 - 8);
    (*(v38 + 56))(v34, 0, 1, v37);
    v39 = v87;
    sub_1000521D8(v34, v87, &qword_100106F88, &qword_1000CAE20);
    sub_100030C74(v39, v31, &qword_100106F88, &qword_1000CAE20);
    v77 = *(v38 + 48);
    v78 = v38 + 48;
    result = v77(v31, 1, v37);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      swift_getObjectType();
      v40 = v88;
      sub_1000B4F90();
      v88 = v40;
      if (v40)
      {
        return (*(v38 + 8))(v31, v37);
      }

      v41 = *(v38 + 8);
      v71[1] = v38 + 8;
      (v41)(v31, v37);
      if (qword_100106A78 != -1)
      {
        swift_once();
      }

      v71[0] = a2;
      v42 = v84;
      v43 = sub_100036380(v84, qword_100107F40);
      v44 = v82;
      v45 = v83;
      v83[2](v82, v43, v42);
      v46 = v74;
      sub_100030C74(v87, v74, &qword_100106F88, &qword_1000CAE20);
      result = v77(v46, 1, v37);
      if (result != 1)
      {
        sub_1000B4CF0(v47);
        sub_1000B54A0();
        v48 = v75;
        sub_1000B5460();
        (v45[1])(v44, v42);
        v83 = v41;
        (v41)(v46, v37);
        v49 = sub_1000B54A0();
        v50 = sub_1000B59E0();
        if (sub_1000B5AB0())
        {
          v51 = swift_slowAlloc();
          *v51 = 0;
          v52 = sub_1000B5470();
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v49, v50, v52, "Create Archive", "", v51, 2u);
        }

        v84 = v37;

        (*(v85 + 16))(v72, v48, v86);
        sub_1000B54F0();
        swift_allocObject();
        v53 = sub_1000B54E0();
        v89 = 0;
        v90 = v76;
        __chkstk_darwin(v53, v54);
        v55 = *(v80 + 88);
        v71[-2] = *(v80 + 80);
        v71[-1] = v55;
        swift_getAssociatedTypeWitness();
        swift_getAssociatedConformanceWitness();
        sub_1000B50E0();
        sub_1000B5810();
        swift_getWitnessTable();
        v56 = v88;
        sub_1000B5740();
        v57 = v91;
        if (qword_100106A70 != -1)
        {
          swift_once();
        }

        v58 = sub_1000B5530();
        sub_100036380(v58, qword_100107F28);
        v59 = sub_1000B5520();
        v60 = sub_1000B5910();
        v61 = os_log_type_enabled(v59, v60);
        v62 = v81;
        v63 = v87;
        if (v61)
        {
          v64 = swift_slowAlloc();
          *v64 = 134217984;
          *(v64 + 4) = v57;
          _os_log_impl(&_mh_execute_header, v59, v60, "Exporting notes… {noteCount: %ld}", v64, 0xCu);
        }

        [v62 setTotalUnitCount:v57];
        v65 = v63;
        v66 = v73;
        sub_100030C74(v65, v73, &qword_100106F88, &qword_1000CAE20);
        result = v77(v66, 1, v84);
        v67 = v86;
        if (result != 1)
        {
          sub_100077448(v66, v76, v62);
          v68 = (v85 + 8);
          v69 = v79;
          v70 = v75;
          if (v56)
          {
            (v83)(v66, v84);
            sub_1000795D8(v53, "Create Archive");

            return (*v68)(v70, v67);
          }

          else
          {
            (v83)(v66, v84);
            sub_1000B58F0();
            *v69 = 1;
            sub_1000795D8(v53, "Create Archive");

            return (*v68)(v70, v67);
          }
        }

LABEL_21:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  return result;
}

uint64_t sub_1000757FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a1;
  v54 = a2;
  v3 = sub_1000B4F00();
  v49 = *(v3 - 8);
  v50 = v3;
  __chkstk_darwin(v3, v4);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000B4DB0();
  v52 = *(v7 - 8);
  v53 = v7;
  v9 = __chkstk_darwin(v7, v8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v9, v12);
  v15 = &v47 - v14;
  v17 = __chkstk_darwin(v13, v16);
  v48 = &v47 - v18;
  v20 = __chkstk_darwin(v17, v19);
  v22 = &v47 - v21;
  v24 = __chkstk_darwin(v20, v23);
  v26 = &v47 - v25;
  __chkstk_darwin(v24, v27);
  v29 = &v47 - v28;
  v30 = *(v2 + 24);
  swift_getObjectType();
  if (v30 == 1)
  {
    v31 = v57;
    result = sub_1000B4FC0();
    if (!v31)
    {
      v57 = 0;
      sub_1000B4D10();
      v33 = *(v52 + 8);
      v34 = v22;
      v35 = v53;
      v33(v34, v53);
      sub_1000B4EF0();
      sub_1000B4EC0();
      (*(v49 + 8))(v6, v50);
      sub_1000B4D10();

      v33(v26, v35);
      sub_100071FD8(v51);
      v36 = sub_1000B55F0();

      v37 = [v36 ic_sanitizedFilenameString];

      sub_1000B5620();
      sub_1000B4D10();

      return (v33)(v29, v35);
    }
  }

  else
  {
    v38 = v57;
    result = sub_1000B4FC0();
    if (!v38)
    {
      sub_1000B4D10();
      v39 = v53;
      v40 = *(v52 + 8);
      v40(v11, v53);
      sub_1000B4EF0();
      sub_1000B4EC0();
      (*(v49 + 8))(v6, v50);
      v41 = v48;
      sub_1000B4D10();

      v40(v15, v39);
      sub_100071FD8(v51);
      v42 = sub_1000B55F0();
      v43 = [v42 ic_sanitizedFilenameString];

      v44 = sub_1000B5620();
      v46 = v45;

      v55 = v44;
      v56 = v46;
      v58._countAndFlagsBits = 46;
      v58._object = 0xE100000000000000;
      sub_1000B56E0(v58);
      v59._countAndFlagsBits = 0x6372617365746F6ELL;
      v59._object = 0xEC00000065766968;
      sub_1000B56E0(v59);

      sub_1000B4D10();

      return (v40)(v41, v39);
    }
  }

  return result;
}

uint64_t sub_100075CC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v52 = *v2;
  v53 = a1;
  v4 = sub_1000B4F00();
  v50 = *(v4 - 8);
  v51 = v4;
  __chkstk_darwin(v4, v5);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000B4DB0();
  v54 = *(v8 - 8);
  v55 = v8;
  v10 = __chkstk_darwin(v8, v9);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v10, v13);
  v16 = &v46 - v15;
  v18 = __chkstk_darwin(v14, v17);
  v49 = &v46 - v19;
  v21 = __chkstk_darwin(v18, v20);
  v23 = &v46 - v22;
  v25 = __chkstk_darwin(v21, v24);
  v27 = &v46 - v26;
  __chkstk_darwin(v25, v28);
  v48 = &v46 - v29;
  v30 = *(v2 + 24);
  swift_getObjectType();
  if (v30 == 1)
  {
    result = sub_1000B4FC0();
    if (!v3)
    {
      v47 = 0;
      sub_1000B4D10();
      v32 = *(v54 + 8);
      v33 = v23;
      v34 = v55;
      v32(v33, v55);
      sub_1000B4EF0();
      sub_1000B4EC0();
      (*(v50 + 8))(v7, v51);
      v35 = v48;
      sub_1000B4D10();

      v32(v27, v34);
      sub_1000362AC(0, &qword_100108060, ICArchive_ptr);
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      static ICArchive.archiveTitle<A>(for:)(v53);
      v36 = sub_1000B55F0();

      v37 = [v36 ic_sanitizedFilenameString];

      sub_1000B5620();
      sub_1000B4D10();

      return (v32)(v35, v34);
    }
  }

  else
  {
    result = sub_1000B4FC0();
    if (!v3)
    {
      v47 = 0;
      sub_1000B4D10();
      v38 = v55;
      v39 = *(v54 + 8);
      v39(v12, v55);
      sub_1000B4EF0();
      sub_1000B4EC0();
      (*(v50 + 8))(v7, v51);
      v40 = v49;
      sub_1000B4D10();

      v39(v16, v38);
      sub_1000362AC(0, &qword_100108060, ICArchive_ptr);
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      static ICArchive.archiveTitle<A>(for:)(v53);
      v41 = sub_1000B55F0();
      v42 = [v41 ic_sanitizedFilenameString];

      v43 = sub_1000B5620();
      v45 = v44;

      v56 = v43;
      v57 = v45;
      v59._countAndFlagsBits = 46;
      v59._object = 0xE100000000000000;
      sub_1000B56E0(v59);
      v60._countAndFlagsBits = 0x6372617365746F6ELL;
      v60._object = 0xEC00000065766968;
      sub_1000B56E0(v60);

      sub_1000B4D10();

      return (v39)(v40, v38);
    }
  }

  return result;
}

uint64_t sub_10007629C@<X0>(uint64_t *a1@<X0>, void *a4@<X8>)
{
  v5 = *a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1000B50E0();
  result = sub_1000B5060();
  if (__OFADD__(v5, result))
  {
    __break(1u);
  }

  else
  {
    *a4 = v5 + result;
  }

  return result;
}

uint64_t sub_100076354(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v131 = a3;
  v6 = sub_1000B4DB0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v121 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = type metadata accessor for ICArchiveModel(0);
  __chkstk_darwin(v126, v11);
  v127 = &v121 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_100030480(&qword_100108020, &qword_1000CCE20);
  v13 = *(v150 - 8);
  v15 = __chkstk_darwin(v150, v14);
  v149 = &v121 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15, v17);
  v148 = &v121 - v18;
  v134 = sub_100030480(&qword_100106D00, &qword_1000CAA70);
  v139 = *(v134 - 8);
  v20 = __chkstk_darwin(v134, v19);
  v22 = __chkstk_darwin(v20, v21);
  v137 = &v121 - v23;
  v25 = __chkstk_darwin(v22, v24);
  v147 = &v121 - v26;
  __chkstk_darwin(v25, v27);
  v161 = (&v121 - v29);
  if (*(v3 + 104))
  {
    goto LABEL_93;
  }

  v152 = v13;
  v123 = v7;
  v124 = v6;
  v132 = a1;
  *(v3 + 104) = 1;
  v30 = *(v3 + 16);
  v31 = *(a2 + 16);
  v32 = _swiftEmptyArrayStorage;
  v133 = v3;
  v129 = a2;
  v125 = v28;
  v122 = v10;
  v130 = v31;
  if (!v31)
  {
    goto LABEL_10;
  }

  *&v153 = _swiftEmptyArrayStorage;

  v33 = v31;
  sub_100043470(0, v31, 0);
  v32 = v153;
  v34 = a2 + ((*(v139 + 80) + 32) & ~*(v139 + 80));
  v35 = *(v139 + 72);
  v36 = v151;
  do
  {
    sub_1000886EC();
    if (v36)
    {
      v151 = v36;

LABEL_50:

LABEL_51:
      v79 = v133;
      goto LABEL_52;
    }

    *&v153 = v32;
    v38 = v32[2];
    v37 = v32[3];
    v6 = v38 + 1;
    if (v38 >= v37 >> 1)
    {
      sub_100043470((v37 > 1), v38 + 1, 1);
      v32 = v153;
    }

    v32[2] = v6;
    v39 = &v32[4 * v38];
    v40 = v157;
    *(v39 + 2) = v156;
    *(v39 + 3) = v40;
    v34 += v35;
    --v33;
  }

  while (v33);
  v151 = 0;

LABEL_10:
  v41 = v32[2];
  v138 = v30;
  if (v41)
  {
    v42 = (v32 + 4);
    v43 = _swiftEmptyArrayStorage;
    v6 = &qword_100106E30;
    while (1)
    {
      sub_100030C74(v42, &v159, &qword_100106E30, &unk_1000CAB60);
      v156 = v159;
      v157 = v160;
      if (*(&v160 + 1))
      {
        sub_100030480(&qword_100106CD8, &unk_1000CCE30);
        if (swift_dynamicCast())
        {
          if (*(&v154 + 1))
          {
            sub_10004589C(&v153, &v156);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v43 = sub_100033B3C(0, v43[2] + 1, 1, v43);
            }

            v45 = v43[2];
            v44 = v43[3];
            if (v45 >= v44 >> 1)
            {
              v43 = sub_100033B3C((v44 > 1), v45 + 1, 1, v43);
            }

            v43[2] = v45 + 1;
            sub_10004589C(&v156, &v43[5 * v45 + 4]);
            v6 = &qword_100106E30;
            goto LABEL_14;
          }
        }

        else
        {
          v155 = 0;
          v153 = 0u;
          v154 = 0u;
        }
      }

      else
      {
        sub_100036320(&v156, &qword_100106E30, &unk_1000CAB60);
        v153 = 0u;
        v154 = 0u;
        v155 = 0;
      }

      sub_100036320(&v153, &qword_100108028, &qword_1000CCE28);
LABEL_14:
      v42 += 32;
      if (!--v41)
      {

        goto LABEL_26;
      }
    }
  }

  v43 = _swiftEmptyArrayStorage;
LABEL_26:
  *&v153 = _swiftEmptyArrayStorage;
  v46 = v43[2];
  if (v46)
  {
    v6 = (v43 + 4);
    do
    {
      sub_100088704(v6, &v156);
      v47 = *(&v157 + 1);
      v48 = v158;
      sub_1000458B4(&v156, *(&v157 + 1));
      v49 = (*(v48 + 24))(v47, v48);
      sub_100035DA8(&v156);
      sub_100063534(v49);
      v6 += 40;
      --v46;
    }

    while (v46);
  }

  v128 = v153;
  v50 = _swiftEmptyArrayStorage;
  v51 = v134;
  v52 = v161;
  if (v130)
  {
    v145 = *(v139 + 16);
    v136 = (*(v139 + 80) + 32) & ~*(v139 + 80);
    v53 = v129 + v136;
    v54 = *(v139 + 72);
    v144 = enum case for ICObjectReferences.Types.folder<A>(_:);
    v143 = (v152 + 104);
    v142 = (v152 + 8);
    v135 = (v139 + 8);
    v146 = v139 + 16;
    v140 = (v139 + 32);
    v55 = v130;
    v141 = v54;
    do
    {
      v152 = v55;
      v161 = v50;
      v145(v52, v53, v51);
      v56 = v148;
      v57 = v51;
      sub_1000B5080();
      v58 = v149;
      v59 = v150;
      (*v143)(v149, v144, v150);
      sub_1000362AC(0, &qword_100108030, NSManagedObjectID_ptr);
      sub_100088768();
      v60 = sub_1000B5090();
      v61 = *v142;
      (*v142)(v58, v59);
      v61(v56, v59);
      if (v60)
      {
        v62 = *v140;
        (*v140)(v147, v52, v57);
        v50 = v161;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v156 = v50;
        if (isUniquelyReferenced_nonNull_native)
        {
          v51 = v57;
        }

        else
        {
          sub_100043430(0, v50[2] + 1, 1);
          v51 = v134;
          v50 = v156;
        }

        v65 = v50[2];
        v64 = v50[3];
        if (v65 >= v64 >> 1)
        {
          sub_100043430((v64 > 1), v65 + 1, 1);
          v51 = v134;
          v50 = v156;
        }

        v50[2] = v65 + 1;
        v66 = v50 + v136 + v65 * v141;
        v6 = v141;
        v62(v66, v147, v51);
      }

      else
      {
        (*v135)(v52, v57);
        v51 = v57;
        v50 = v161;
        v6 = v141;
      }

      v53 += v6;
      v55 = v152 - 1;
    }

    while (v152 != 1);
  }

  v67 = v50[2];
  if (!v67)
  {

    v70 = _swiftEmptyArrayStorage;
LABEL_53:
    v80 = v70[2];
    v79 = v133;
    if (!v80)
    {

      v82 = _swiftEmptyArrayStorage;
LABEL_69:
      v85 = v82[2];
      if (v85)
      {
        *&v153 = _swiftEmptyArrayStorage;
        sub_1000432C4(0, v85, 0);
        v86 = v153;
        v87 = (v82 + 4);
        do
        {
          sub_100088704(v87, &v156);
          v88 = *(&v157 + 1);
          v89 = v158;
          sub_1000458B4(&v156, *(&v157 + 1));
          v90 = (*(v89 + 8))(v88, v89);
          v92 = v91;
          sub_100035DA8(&v156);
          *&v153 = v86;
          v94 = v86[2];
          v93 = v86[3];
          if (v94 >= v93 >> 1)
          {
            sub_1000432C4((v93 > 1), v94 + 1, 1);
            v86 = v153;
          }

          v86[2] = v94 + 1;
          v95 = &v86[2 * v94];
          v95[4] = v90;
          v95[5] = v92;
          v87 += 40;
          --v85;
        }

        while (v85);

        v79 = v133;
      }

      else
      {

        v86 = _swiftEmptyArrayStorage;
      }

      if (*(v79 + 24) != 1)
      {
        v104 = *(v79 + 40);
        v105 = *(v79 + 48);
        v106 = *(v79 + 56);
        v107 = *(v79 + 64);
        v108 = *(v79 + 72);
        v161 = *(v79 + 32);
        sub_100088874(v161, v104, v105, v106, v107, v108);
        v152 = sub_100087CEC(v128);

        if (!v86[2])
        {

          v86 = 0;
        }

        v109 = v126;
        v110 = *(v126 + 24);
        v111 = v127;
        sub_1000B4E90();
        v112 = sub_1000B4EA0();
        (*(*(v112 - 8) + 56))(v111 + v110, 0, 1, v112);
        *v111 = 0;
        *(v111 + 8) = 1;
        v113 = (v111 + v109[7]);
        *v113 = v161;
        v113[1] = v104;
        v113[2] = v105;
        v113[3] = v106;
        v6 = v111;
        v113[4] = v107;
        v113[5] = v108;
        *(v111 + v109[8]) = v152;
        *(v111 + v109[9]) = v86;
        if (qword_100106A00 != -1)
        {
          goto LABEL_94;
        }

        goto LABEL_86;
      }

      goto LABEL_78;
    }

    v81 = (v70 + 4);
    v82 = _swiftEmptyArrayStorage;
    while (1)
    {
      sub_100030C74(v81, &v159, &qword_100106E30, &unk_1000CAB60);
      v156 = v159;
      v157 = v160;
      if (*(&v160 + 1))
      {
        sub_100030480(&qword_100106CD8, &unk_1000CCE30);
        if (swift_dynamicCast())
        {
          if (*(&v154 + 1))
          {
            sub_10004589C(&v153, &v156);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v82 = sub_100033B3C(0, v82[2] + 1, 1, v82);
            }

            v84 = v82[2];
            v83 = v82[3];
            if (v84 >= v83 >> 1)
            {
              v82 = sub_100033B3C((v83 > 1), v84 + 1, 1, v82);
            }

            v82[2] = v84 + 1;
            sub_10004589C(&v156, &v82[5 * v84 + 4]);
            v79 = v133;
            goto LABEL_57;
          }
        }

        else
        {
          v155 = 0;
          v153 = 0u;
          v154 = 0u;
        }
      }

      else
      {
        sub_100036320(&v156, &qword_100106E30, &unk_1000CAB60);
        v153 = 0u;
        v154 = 0u;
        v155 = 0;
      }

      sub_100036320(&v153, &qword_100108028, &qword_1000CCE28);
LABEL_57:
      v81 += 32;
      if (!--v80)
      {

        goto LABEL_69;
      }
    }
  }

  *&v153 = _swiftEmptyArrayStorage;

  sub_100043470(0, v67, 0);
  v68 = v134;
  v69 = 0;
  v70 = v153;
  v161 = (v50 + ((*(v139 + 80) + 32) & ~*(v139 + 80)));
  v152 = v139 + 16;
  v71 = (v139 + 8);
  while (v69 < v50[2])
  {
    v72 = v137;
    (*(v139 + 16))(v137, v161 + *(v139 + 72) * v69, v68);
    v73 = v151;
    sub_10008912C();
    v151 = v73;
    if (v73)
    {

      (*v71)(v72, v68);

      goto LABEL_50;
    }

    (*v71)(v72, v68);
    *&v153 = v70;
    v75 = v70[2];
    v74 = v70[3];
    v6 = v75 + 1;
    if (v75 >= v74 >> 1)
    {
      sub_100043470((v74 > 1), v75 + 1, 1);
      v68 = v134;
      v70 = v153;
    }

    ++v69;
    v70[2] = v6;
    v76 = &v70[4 * v75];
    v77 = v157;
    *(v76 + 2) = v156;
    *(v76 + 3) = v77;
    if (v67 == v69)
    {

      goto LABEL_53;
    }
  }

  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  swift_once();
LABEL_86:
  sub_1000886A4(&qword_100108040, type metadata accessor for ICArchiveModel, &unk_1000CB768);
  v114 = v151;
  v115 = sub_1000B4AF0();
  v151 = v114;
  v79 = v133;
  if (v114)
  {
    result = sub_100089014(v6, type metadata accessor for ICArchiveModel);
    goto LABEL_52;
  }

  v117 = v115;
  v118 = v116;
  swift_getObjectType();
  v119 = v122;
  sub_1000B4D10();
  v120 = v151;
  sub_1000B4F70();
  v151 = v120;
  if (v120)
  {
    sub_1000449D4(v117, v118);
    (*(v123 + 8))(v119, v124);
    result = sub_100089014(v127, type metadata accessor for ICArchiveModel);
    goto LABEL_51;
  }

  sub_1000449D4(v117, v118);
  (*(v123 + 8))(v119, v124);
  result = sub_100089014(v127, type metadata accessor for ICArchiveModel);
  v79 = v133;
LABEL_78:
  v96 = v130;
  if (v130)
  {
    v97 = *(v139 + 16);
    v98 = v129 + ((*(v139 + 80) + 32) & ~*(v139 + 80));
    v99 = *(v139 + 72);
    v100 = (v139 + 8);
    v101 = v134;
    v102 = v125;
    while (1)
    {
      v97(v102, v98, v101);
      v103 = v151;
      sub_100078328(v102, v132, v131);
      v151 = v103;
      if (v103)
      {
        break;
      }

      result = (*v100)(v102, v101);
      v98 += v99;
      if (!--v96)
      {
        goto LABEL_52;
      }
    }

    result = (*v100)(v102, v101);
  }

LABEL_52:
  *(v79 + 104) = 0;
  return result;
}

uint64_t sub_100077448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *v5;
  v10 = sub_1000B4DB0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10, v12);
  v14 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ICArchiveModel(0);
  v17 = __chkstk_darwin(v15, v16);
  if (v5[13])
  {
    __break(1u);
LABEL_58:
    swift_once();
    goto LABEL_53;
  }

  v103 = a1;
  v104 = a3;
  v101 = v17;
  v98 = v14;
  v102 = &v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = v11;
  v100 = v10;
  *(v5 + 104) = 1;
  *&v111 = a2;
  v19 = v5[2];
  v107 = v4;
  v21 = *(v9 + 80);
  v20 = *(v9 + 88);
  v22 = swift_allocObject();
  v22[2] = v21;
  v22[3] = v20;
  v22[4] = v19;
  v23 = swift_unknownObjectRetain();
  v105 = a2;
  ObjectType = &v90;
  __chkstk_darwin(v23, v24);
  v116 = v5;
  *(&v90 - 4) = v21;
  *(&v90 - 3) = v20;
  *(&v90 - 2) = sub_100088B34;
  *(&v90 - 1) = v22;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1000B50E0();
  v25 = sub_1000B5810();
  v26 = sub_100030480(&qword_100106E30, &unk_1000CAB60);
  v27 = sub_100030480(&qword_100106EB8, &qword_1000CAD80);
  WitnessTable = swift_getWitnessTable();
  v29 = v107;
  v30 = sub_100072158(sub_100088A60, (&v90 - 6), v25, v26, v27, WitnessTable, &protocol self-conformance witness table for Error, &v108);
  if (v29)
  {

    v32 = v116;
    goto LABEL_56;
  }

  v91 = 0;
  v93 = v27;
  v94 = v19;
  v95 = v20;
  v96 = v21;
  v97 = v25;
  v107 = v30;

  v33 = *(v107 + 16);
  ObjectType = v26;
  v92 = WitnessTable;
  if (v33)
  {
    v34 = v107 + 32;
    v35 = _swiftEmptyArrayStorage;
    while (1)
    {
      sub_100030C74(v34, &v114, &qword_100106E30, &unk_1000CAB60);
      v111 = v114;
      v112 = v115;
      if (*(&v115 + 1))
      {
        sub_100030480(&qword_100106CD8, &unk_1000CCE30);
        if (swift_dynamicCast())
        {
          if (*(&v109 + 1))
          {
            sub_10004589C(&v108, &v111);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v35 = sub_100033B3C(0, v35[2] + 1, 1, v35);
            }

            v37 = v35[2];
            v36 = v35[3];
            if (v37 >= v36 >> 1)
            {
              v35 = sub_100033B3C((v36 > 1), v37 + 1, 1, v35);
            }

            v35[2] = v37 + 1;
            sub_10004589C(&v111, &v35[5 * v37 + 4]);
            goto LABEL_8;
          }
        }

        else
        {
          v110 = 0;
          v108 = 0u;
          v109 = 0u;
        }
      }

      else
      {
        sub_100036320(&v111, &qword_100106E30, &unk_1000CAB60);
        v108 = 0u;
        v109 = 0u;
        v110 = 0;
      }

      sub_100036320(&v108, &qword_100108028, &qword_1000CCE28);
LABEL_8:
      v34 += 32;
      if (!--v33)
      {

        goto LABEL_20;
      }
    }
  }

  v35 = _swiftEmptyArrayStorage;
LABEL_20:
  *&v108 = _swiftEmptyArrayStorage;
  v38 = v35[2];
  v39 = v97;
  if (v38)
  {
    v40 = (v35 + 4);
    do
    {
      sub_100088704(v40, &v111);
      v41 = *(&v112 + 1);
      v42 = v113;
      sub_1000458B4(&v111, *(&v112 + 1));
      v43 = (*(v42 + 24))(v41, v42);
      sub_100035DA8(&v111);
      sub_100063534(v43);
      v40 += 40;
      --v38;
    }

    while (v38);
  }

  v107 = v108;
  v45 = v105;
  *&v111 = v105;
  __chkstk_darwin(v44, v46);
  v47 = v96;
  v48 = v95;
  *(&v90 - 2) = v96;
  *(&v90 - 1) = v48;

  swift_getWitnessTable();
  v49 = v91;
  *&v111 = sub_1000B5C40();
  v50 = swift_allocObject();
  v50[2] = v47;
  v50[3] = v48;
  v50[4] = v94;
  v51 = swift_unknownObjectRetain();
  __chkstk_darwin(v51, v52);
  *(&v90 - 4) = v47;
  *(&v90 - 3) = v48;
  *(&v90 - 2) = sub_10008917C;
  *(&v90 - 1) = v50;
  ObjectType = sub_100072158(sub_100089148, (&v90 - 6), v39, ObjectType, v93, v92, &protocol self-conformance witness table for Error, &v108);
  if (v49)
  {

    v32 = v116;
    goto LABEL_56;
  }

  v96 = 0;

  v53 = ObjectType[2];
  if (!v53)
  {

    v55 = _swiftEmptyArrayStorage;
    v58 = v45;
    v59 = _swiftEmptyArrayStorage[2];
    if (v59)
    {
      goto LABEL_40;
    }

    goto LABEL_46;
  }

  v54 = (ObjectType + 4);
  v55 = _swiftEmptyArrayStorage;
  do
  {
    sub_100030C74(v54, &v114, &qword_100106E30, &unk_1000CAB60);
    v111 = v114;
    v112 = v115;
    if (!*(&v115 + 1))
    {
      sub_100036320(&v111, &qword_100106E30, &unk_1000CAB60);
      v108 = 0u;
      v109 = 0u;
      v110 = 0;
LABEL_28:
      sub_100036320(&v108, &qword_100108028, &qword_1000CCE28);
      goto LABEL_29;
    }

    sub_100030480(&qword_100106CD8, &unk_1000CCE30);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v110 = 0;
      v108 = 0u;
      v109 = 0u;
      goto LABEL_28;
    }

    if (!*(&v109 + 1))
    {
      goto LABEL_28;
    }

    sub_10004589C(&v108, &v111);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v55 = sub_100033B3C(0, v55[2] + 1, 1, v55);
    }

    v57 = v55[2];
    v56 = v55[3];
    if (v57 >= v56 >> 1)
    {
      v55 = sub_100033B3C((v56 > 1), v57 + 1, 1, v55);
    }

    v55[2] = v57 + 1;
    sub_10004589C(&v111, &v55[5 * v57 + 4]);
LABEL_29:
    v54 += 32;
    --v53;
  }

  while (v53);

  v58 = v105;
  v59 = v55[2];
  if (!v59)
  {
LABEL_46:

    v60 = _swiftEmptyArrayStorage;
    goto LABEL_47;
  }

LABEL_40:
  *&v108 = _swiftEmptyArrayStorage;
  sub_1000432C4(0, v59, 0);
  v60 = v108;
  v61 = (v55 + 4);
  do
  {
    sub_100088704(v61, &v111);
    v62 = *(&v112 + 1);
    v63 = v113;
    sub_1000458B4(&v111, *(&v112 + 1));
    v64 = (*(v63 + 8))(v62, v63);
    v66 = v65;
    sub_100035DA8(&v111);
    *&v108 = v60;
    v68 = v60[2];
    v67 = v60[3];
    if (v68 >= v67 >> 1)
    {
      sub_1000432C4((v67 > 1), v68 + 1, 1);
      v60 = v108;
    }

    v60[2] = v68 + 1;
    v69 = &v60[2 * v68];
    v69[4] = v64;
    v69[5] = v66;
    v61 += 40;
    --v59;
  }

  while (v59);

  v58 = v105;
LABEL_47:
  v32 = v116;
  v71 = v103;
  v70 = v104;
  v72 = v107;
  if (v116[3])
  {

    goto LABEL_49;
  }

  v75 = v116[5];
  v76 = v116[6];
  v77 = v116[7];
  v78 = v116[8];
  v79 = v116[9];
  ObjectType = v116[4];
  sub_100088874(ObjectType, v75, v76, v77, v78, v79);
  v95 = sub_100087CEC(v72);

  if (!v60[2])
  {

    v60 = 0;
  }

  v80 = v101;
  v81 = v101[6];
  v10 = v102;
  sub_1000B4E90();
  v82 = sub_1000B4EA0();
  (*(*(v82 - 8) + 56))(v10 + v81, 0, 1, v82);
  *v10 = 0;
  *(v10 + 8) = 1;
  v83 = (v10 + v80[7]);
  *v83 = ObjectType;
  v83[1] = v75;
  v83[2] = v76;
  v83[3] = v77;
  v83[4] = v78;
  v83[5] = v79;
  *(v10 + v80[8]) = v95;
  *(v10 + v80[9]) = v60;
  if (qword_100106A00 != -1)
  {
    goto LABEL_58;
  }

LABEL_53:
  sub_1000886A4(&qword_100108040, type metadata accessor for ICArchiveModel, &unk_1000CB768);
  v84 = v96;
  v85 = sub_1000B4AF0();
  v32 = v116;
  v71 = v103;
  v70 = v104;
  if (v84)
  {
    result = sub_100089014(v10, type metadata accessor for ICArchiveModel);
  }

  else
  {
    v87 = v85;
    v88 = v86;
    v107 = v116[12];
    ObjectType = swift_getObjectType();
    v89 = v98;
    sub_1000B4D10();
    sub_1000B4F70();
    v96 = 0;
    sub_1000449D4(v87, v88);
    (*(v99 + 8))(v89, v100);
    v73 = sub_100089014(v102, type metadata accessor for ICArchiveModel);
    v58 = v105;
LABEL_49:
    *&v111 = v58;
    __chkstk_darwin(v73, v74);
    *(&v90 - 4) = v32;
    *(&v90 - 3) = v71;
    *(&v90 - 2) = v70;
    swift_getWitnessTable();
    result = sub_1000B5750();
  }

LABEL_56:
  *(v32 + 104) = 0;
  return result;
}

uint64_t sub_10007816C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v3 = sub_1000B50A0();
  v4 = *(v3 - 8);
  v6 = __chkstk_darwin(v3, v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v9);
  v11 = &v15 - v10;
  sub_1000B50E0();
  sub_1000B5080();
  (*(v4 + 104))(v8, enum case for ICObjectReferences.Types.folder<A>(_:), v3);
  v12 = sub_1000B5090();
  v13 = *(v4 + 8);
  v13(v8, v3);
  v13(v11, v3);
  return v12 & 1;
}

uint64_t sub_100078328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = a3;
  v38 = a2;
  v4 = sub_100030480(&qword_100106D00, &qword_1000CAA70);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v35 = &v34 - v7;
  v8 = sub_1000B5480();
  v9 = *(v8 - 8);
  v11 = __chkstk_darwin(v8, v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v14);
  v16 = &v34 - v15;
  if (qword_100106A78 != -1)
  {
    swift_once();
  }

  v17 = sub_1000B54B0();
  sub_100036380(v17, qword_100107F40);
  v37 = a1;
  sub_1000B5040();
  v18 = v41;
  v19 = [v41 description];
  v40 = v16;
  if (v19)
  {
  }

  else
  {
    sub_1000B5620();
    sub_1000B55F0();

    v16 = v40;
  }

  sub_1000B54A0();
  sub_1000B5460();
  v20 = sub_1000B54A0();
  v21 = sub_1000B59E0();
  if (sub_1000B5AB0())
  {
    v22 = v9;
    v23 = v8;
    v24 = swift_slowAlloc();
    *v24 = 0;
    v25 = sub_1000B5470();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v20, v21, v25, "Export Object", "", v24, 2u);
    v8 = v23;
    v9 = v22;
    v16 = v40;
  }

  (*(v9 + 16))(v13, v16, v8);
  sub_1000B54F0();
  swift_allocObject();
  v26 = sub_1000B54E0();
  v27 = v35;
  v28 = v37;
  (*(v5 + 16))(v35, v37, v4);
  v29 = (*(v5 + 88))(v27, v4);
  if (v29 == enum case for ICObjectReferences.account<A>(_:))
  {
    (*(v5 + 8))(v27, v4);
    v30 = objc_autoreleasePoolPush();
    v31 = "Account to be exported does not exist anymore — skipping";
    v32 = sub_100079868;
LABEL_16:
    sub_10007CAF8(v36, v28, v38, v39, v32, v31);
    objc_autoreleasePoolPop(v30);
    sub_1000795D8(v26, "Export Object");

    return (*(v9 + 8))(v40, v8);
  }

  if (v29 == enum case for ICObjectReferences.folder<A>(_:))
  {
    (*(v5 + 8))(v27, v4);
    v30 = objc_autoreleasePoolPush();
    v31 = "Folder to be exported does not exist anymore — skipping";
    v32 = sub_10007A52C;
    goto LABEL_16;
  }

  if (v29 == enum case for ICObjectReferences.note<A>(_:))
  {
    (*(v5 + 8))(v27, v4);
    v30 = objc_autoreleasePoolPush();
    v31 = "Note to be exported does not exist anymore — skipping";
    v32 = sub_10007AF38;
    goto LABEL_16;
  }

  if (v29 == enum case for ICObjectReferences.attachment<A>(_:))
  {
    (*(v5 + 8))(v27, v4);
    v30 = objc_autoreleasePoolPush();
    v31 = "Object to be exported does not exist anymore — skipping";
    v32 = sub_10007CD68;
    goto LABEL_16;
  }

  result = sub_1000B5F10();
  __break(1u);
  return result;
}