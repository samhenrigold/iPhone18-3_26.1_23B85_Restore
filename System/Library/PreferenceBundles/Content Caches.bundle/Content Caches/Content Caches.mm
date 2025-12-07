uint64_t sub_1790()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 name];

  v2 = sub_33244();
  return v2;
}

uint64_t sub_1810()
{
  v0 = 0x6E776F6E6B6E75;
  v16 = 0;
  if (!getifaddrs(&v16))
  {
    v1 = v16;
    if (v16)
    {
      v2 = 0;
      v3 = 0;
      while (v1)
      {
        ifa_addr = v1->ifa_addr;
        if (!ifa_addr)
        {
          goto LABEL_34;
        }

        if (ifa_addr->sa_family != 2)
        {
          goto LABEL_12;
        }

        if (!v1->ifa_name)
        {
          goto LABEL_35;
        }

        if (sub_33314() == 3173989 && v5 == 0xE300000000000000)
        {
LABEL_10:
        }

        else
        {
          while (1)
          {
            v6 = sub_33644();

            if (v6)
            {
              break;
            }

            do
            {
LABEL_12:
              v1 = v1->ifa_next;
              if (!v1)
              {
                goto LABEL_28;
              }

              ifa_addr = v1->ifa_addr;
              if (!ifa_addr)
              {
                goto LABEL_34;
              }
            }

            while (ifa_addr->sa_family != 2);
            if (!v1->ifa_name)
            {
              goto LABEL_35;
            }

            if (sub_33314() == 3173989 && v7 == 0xE300000000000000)
            {
              goto LABEL_10;
            }
          }
        }

        v9 = sub_333C4();
        *(v9 + 16) = 1025;
        bzero((v9 + 32), 0x401uLL);
        getnameinfo(ifa_addr, ifa_addr->sa_len, (v9 + 32), 0x401u, 0, 0, 2);
        v10 = *(v9 + 16);
        if (!v10)
        {
          goto LABEL_33;
        }

        if (*(v9 + 32))
        {
          v11 = 0;
          v12 = v10 - 1;
          while (v12 != v11)
          {
            if (!*(v9 + 33 + v11++))
            {
              goto LABEL_27;
            }
          }

          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
        }

LABEL_27:
        v2 = sub_332C4();
        v3 = v14;

        v1 = v1->ifa_next;
      }

LABEL_28:
      freeifaddrs(v16);
      if (v3)
      {
        return v2;
      }
    }

    else
    {
      freeifaddrs(0);
    }
  }

  return v0;
}

uint64_t sub_1A58(uint64_t a1)
{
  v2 = sub_160C4();
  if (*(a1 + 16) && (v3 = *v2, v4 = v2[1], , v5 = sub_26C8(v3, v4), v7 = v6, , (v7 & 1) != 0) && (sub_2740(*(a1 + 56) + 32 * v5, v10), (swift_dynamicCast() & 1) != 0))
  {
    return v9;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

Class sub_1B14(void *a1)
{
  if (!a1)
  {
    v2 = objc_allocWithZone(NSNull);

    return [v2 init];
  }

  *&v84 = a1;
  swift_unknownObjectRetain_n();
  if (swift_dynamicCast())
  {

    return a1;
  }

  swift_unknownObjectRetain();
  objc_opt_self();
  if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()))
  {
    swift_unknownObjectRelease();
    return a1;
  }

  *&v89 = a1;
  sub_279C(&qword_45138, &qword_33E40);
  if (swift_dynamicCast())
  {
    v4 = *(v84 + 16);
    if (v4)
    {
      v5 = v84 + 32;
      v6 = _swiftEmptyArrayStorage;
      do
      {
        sub_3228(v5, &v89);
        isa = sub_33514().isa;
        sub_3310(&v89);
        v8 = sub_1B14(isa);

        *&v81 = v8;
        swift_dynamicCast();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_25A8(0, *(v6 + 2) + 1, 1, v6);
        }

        v10 = *(v6 + 2);
        v9 = *(v6 + 3);
        if (v10 >= v9 >> 1)
        {
          v6 = sub_25A8((v9 > 1), v10 + 1, 1, v6);
        }

        *(v6 + 2) = v10 + 1;
        v11 = &v6[40 * v10];
        v12 = v84;
        v13 = v85;
        *(v11 + 8) = v86;
        *(v11 + 2) = v12;
        *(v11 + 3) = v13;
        v5 += 40;
        --v4;
      }

      while (v4);
    }

    else
    {
    }

    v59.super.isa = sub_333B4().super.isa;
    goto LABEL_66;
  }

  *&v89 = a1;
  swift_unknownObjectRetain();
  sub_279C(&qword_45140, &qword_33E48);
  if (swift_dynamicCast())
  {
    v14 = 0;
    v16 = v84 + 56;
    v15 = *(v84 + 56);
    v75 = v84;
    v17 = 1 << *(v84 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & v15;
    v20 = (v17 + 63) >> 6;
    v21 = _swiftEmptyArrayStorage;
    if ((v18 & v15) != 0)
    {
      goto LABEL_28;
    }

    while (1)
    {
      v22 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_76;
      }

      if (v22 >= v20)
      {

        v58.super.isa = sub_333B4().super.isa;
        swift_unknownObjectRelease();
        goto LABEL_67;
      }

      v19 = *(v16 + 8 * v22);
      ++v14;
      if (v19)
      {
        v14 = v22;
        do
        {
LABEL_28:
          sub_3228(*(v75 + 48) + 40 * (__clz(__rbit64(v19)) | (v14 << 6)), &v89);
          v23 = sub_33514().isa;
          sub_3310(&v89);
          v24 = sub_1B14(v23);

          *&v81 = v24;
          swift_dynamicCast();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v21 = sub_25A8(0, *(v21 + 2) + 1, 1, v21);
          }

          v26 = *(v21 + 2);
          v25 = *(v21 + 3);
          if (v26 >= v25 >> 1)
          {
            v21 = sub_25A8((v25 > 1), v26 + 1, 1, v21);
          }

          v19 &= v19 - 1;
          *(v21 + 2) = v26 + 1;
          v27 = &v21[40 * v26];
          v28 = v84;
          v29 = v85;
          *(v27 + 8) = v86;
          *(v27 + 2) = v28;
          *(v27 + 3) = v29;
        }

        while (v19);
      }
    }
  }

  *&v89 = a1;
  swift_unknownObjectRetain();
  sub_279C(&qword_45148, &qword_33E50);
  if (!swift_dynamicCast())
  {
    *&v89 = a1;
    sub_27E4();
    swift_unknownObjectRetain();
    if (swift_dynamicCast())
    {
      v60 = v84;
      sub_279C(&qword_45160, &unk_33E60);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_33E20;
      *(inited + 32) = 0x726F727265;
      *(inited + 40) = 0xE500000000000000;
      sub_279C(&qword_45168, qword_340E0);
      v62 = swift_initStackObject();
      *(v62 + 16) = xmmword_33E30;
      *(v62 + 32) = 0x6E69616D6F64;
      *(v62 + 40) = 0xE600000000000000;
      v63 = [v60 domain];
      v64 = sub_33244();
      v66 = v65;

      *(v62 + 48) = v64;
      *(v62 + 56) = v66;
      *(v62 + 72) = &type metadata for String;
      *(v62 + 80) = 1701080931;
      *(v62 + 88) = 0xE400000000000000;
      *(v62 + 96) = [v60 code];
      *(v62 + 120) = &type metadata for Int;
      *(v62 + 128) = 0x6F666E4972657375;
      *(v62 + 136) = 0xE800000000000000;
      v67 = [v60 userInfo];
      v68 = sub_331E4();

      *(v62 + 168) = sub_279C(&qword_45170, &unk_33E70);
      *(v62 + 144) = v68;
      v69 = sub_2F8C(v62);
      swift_setDeallocating();
      sub_279C(&qword_45178, "T\b");
      swift_arrayDestroy();
      *(inited + 48) = v69;
      sub_30BC(inited);
      swift_setDeallocating();
      sub_31C0(inited + 32);
      v58.super.isa = sub_331D4().super.isa;
      swift_unknownObjectRelease();

      goto LABEL_67;
    }

    if ([a1 respondsToSelector:"description"])
    {
      v71 = [a1 description];
      v72 = sub_33244();
      v74 = v73;
    }

    else
    {
      v72 = 0;
      v74 = 0;
    }

    *&v89 = v72;
    *(&v89 + 1) = v74;
    sub_279C(&qword_45158, &qword_33E58);
    v59.super.isa = sub_334A4();
LABEL_66:
    v58.super.isa = v59.super.isa;
    swift_unknownObjectRelease();
LABEL_67:

    return v58.super.isa;
  }

  v30 = sub_2E50(_swiftEmptyArrayStorage);
  v31 = 0;
  v32 = v84 + 64;
  v76 = v84;
  v33 = 1 << *(v84 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & *(v84 + 64);
  v36 = (v33 + 63) >> 6;
  while (v35)
  {
    v38 = v31;
LABEL_50:
    v41 = __clz(__rbit64(v35));
    v35 &= v35 - 1;
    v42 = v41 | (v38 << 6);
    sub_3228(*(v76 + 48) + 40 * v42, &v81);
    sub_2740(*(v76 + 56) + 32 * v42, &v79);
    v84 = v81;
    v85 = v82;
    *&v86 = v83;
    sub_3284(&v79, (&v86 + 8));
LABEL_51:
    v91[0] = v86;
    v91[1] = v87;
    v92 = v88;
    v89 = v84;
    v90 = v85;
    if (!*(&v85 + 1))
    {

      v70 = sub_331D4().super.isa;
      swift_unknownObjectRelease();

      return v70;
    }

    sub_3284((v91 + 8), &v81);
    v84 = v89;
    v85 = v90;
    *&v86 = *&v91[0];
    sub_3294(&v81, *(&v82 + 1));
    v43 = sub_33634();
    v44 = sub_1B14(v43);
    swift_unknownObjectRelease();
    v78 = v44;
    v80 = &type metadata for AnyHashable;
    *&v79 = swift_allocObject();
    swift_dynamicCast();
    sub_3284(&v79, v77);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v46 = sub_2830(&v84);
    v48 = v30[2];
    v49 = (v47 & 1) == 0;
    v50 = __OFADD__(v48, v49);
    v51 = v48 + v49;
    if (v50)
    {
      goto LABEL_77;
    }

    v52 = v47;
    if (v30[3] < v51)
    {
      sub_29F4(v51, isUniquelyReferenced_nonNull_native);
      v46 = sub_2830(&v84);
      if ((v52 & 1) != (v53 & 1))
      {
        goto LABEL_79;
      }

LABEL_57:
      if (v52)
      {
        goto LABEL_38;
      }

      goto LABEL_58;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_57;
    }

    v57 = v46;
    sub_2CAC();
    v46 = v57;
    if (v52)
    {
LABEL_38:
      v37 = (v30[7] + 32 * v46);
      sub_3364(v37);
      sub_3284(v77, v37);
      sub_3310(&v84);
      goto LABEL_39;
    }

LABEL_58:
    v30[(v46 >> 6) + 8] |= 1 << v46;
    v54 = v46;
    sub_3228(&v84, v30[6] + 40 * v46);
    sub_3284(v77, (v30[7] + 32 * v54));
    sub_3310(&v84);
    v55 = v30[2];
    v50 = __OFADD__(v55, 1);
    v56 = v55 + 1;
    if (v50)
    {
      goto LABEL_78;
    }

    v30[2] = v56;
LABEL_39:
    sub_3364(&v81);
  }

  if (v36 <= v31 + 1)
  {
    v39 = v31 + 1;
  }

  else
  {
    v39 = v36;
  }

  v40 = v39 - 1;
  while (1)
  {
    v38 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v38 >= v36)
    {
      v35 = 0;
      v88 = 0;
      v86 = 0u;
      v87 = 0u;
      v85 = 0u;
      v31 = v40;
      v84 = 0u;
      goto LABEL_51;
    }

    v35 = *(v32 + 8 * v38);
    ++v31;
    if (v35)
    {
      v31 = v38;
      goto LABEL_50;
    }
  }

  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  result = sub_33664();
  __break(1u);
  return result;
}

char *sub_25A8(char *result, int64_t a2, char a3, char *a4)
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
    sub_279C(&qword_45188, &qword_33EB8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_26C8(uint64_t a1, uint64_t a2)
{
  sub_336C4();
  sub_332E4();
  v4 = sub_336E4();

  return sub_2874(a1, a2, v4);
}

uint64_t sub_2740(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_279C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_27E4()
{
  result = qword_45150;
  if (!qword_45150)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_45150);
  }

  return result;
}

unint64_t sub_2830(uint64_t a1)
{
  v2 = v1;
  v4 = sub_33524(*(v2 + 40));

  return sub_292C(a1, v4);
}

unint64_t sub_2874(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_33644())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_292C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_3228(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_33534();
      sub_3310(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_29F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_279C(&qword_45190, &qword_33EC0);
  result = sub_335E4();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_3284((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_3228(v23, &v36);
        sub_2740(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_33524(*(v7 + 40));
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_3284(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

void *sub_2CAC()
{
  v1 = v0;
  sub_279C(&qword_45190, &qword_33EC0);
  v2 = *v0;
  v3 = sub_335D4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        sub_3228(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_2740(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_3284(v22, (*(v4 + 56) + v17));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

unint64_t sub_2E50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_279C(&qword_45190, &qword_33EC0);
    v3 = sub_335F4();
    v4 = a1 + 32;

    while (1)
    {
      sub_33C4(v4, v13, &qword_45198, &qword_33EC8);
      result = sub_2830(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_3284(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_2F8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_279C(&qword_451A8, &qword_34190);
    v3 = sub_335F4();
    v4 = a1 + 32;

    while (1)
    {
      sub_33C4(v4, &v13, &qword_45178, "T\b");
      v5 = v13;
      v6 = v14;
      result = sub_26C8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_3284(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_30BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_279C(&qword_451A0, qword_33ED0);
    v3 = sub_335F4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_26C8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_31C0(uint64_t a1)
{
  v2 = sub_279C(&qword_45180, &qword_33E80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_OWORD *sub_3284(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void *sub_3294(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_32D8()
{
  sub_3364((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_3364(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_33C4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_279C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_3484(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_349C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 632))();

  swift_beginAccess();
  return sub_35E4(v1 + 16, a1);
}

uint64_t sub_35E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_3648(void *a1)
{
  swift_getKeyPath();
  v4 = v1;
  v5 = a1;
  (*(*v1 + 640))();

  return sub_3364(a1);
}

uint64_t sub_36F0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  sub_94B4((v2 + 16), v1);
  return swift_endAccess();
}

uint64_t (*sub_3750(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 632))(KeyPath);

  v4[5] = OBJC_IVAR____TtC14Content_Caches15ServerViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_92EC(&qword_451B0, type metadata accessor for ServerViewModel, &unk_34010);
  sub_32B44();

  v4[7] = sub_342C(v4);
  return sub_38A0;
}

uint64_t type metadata accessor for ServerViewModel(uint64_t a1)
{
  result = qword_46B30;
  if (!qword_46B30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_3948()
{
  swift_getKeyPath();
  (*(*v0 + 632))();

  swift_beginAccess();
}

uint64_t sub_39D4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 632))();

  v4 = OBJC_IVAR____TtC14Content_Caches15ServerViewModel__subscriptions;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_3AA0(unint64_t a1)
{
  v3 = OBJC_IVAR____TtC14Content_Caches15ServerViewModel__subscriptions;
  swift_beginAccess();

  v5 = sub_8590(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v8 = __chkstk_darwin(KeyPath);
    v9 = v1;
    v10 = a1;
    (*(*v1 + 640))(v8, sub_9280);
  }
}

double sub_3C40()
{
  swift_getKeyPath();
  (*(*v0 + 632))();

  v1 = OBJC_IVAR____TtC14Content_Caches15ServerViewModel__minSpacerLength;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_3D6C(double a1)
{
  v3 = OBJC_IVAR____TtC14Content_Caches15ServerViewModel__minSpacerLength;
  result = swift_beginAccess();
  if (*(v1 + v3) == a1)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v6 = __chkstk_darwin(KeyPath);
    (*(*v1 + 640))(v6, sub_3E78);
  }

  return result;
}

uint64_t sub_3E78()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC14Content_Caches15ServerViewModel__minSpacerLength;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t (*sub_3EDC(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 632))(KeyPath);

  v4[5] = OBJC_IVAR____TtC14Content_Caches15ServerViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_92EC(&qword_451B0, type metadata accessor for ServerViewModel, &unk_34010);
  sub_32B44();

  v4[7] = sub_3BD8(v4);
  return sub_402C;
}

uint64_t sub_40AC()
{
  swift_getKeyPath();
  (*(*v0 + 632))();

  v1 = OBJC_IVAR____TtC14Content_Caches15ServerViewModel__testInProgress;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_4134@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 472))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_41DC(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC14Content_Caches15ServerViewModel__testInProgress;
  result = swift_beginAccess();
  if (*(v1 + v3) == v2)
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v6 = __chkstk_darwin(KeyPath);
    v7 = v1;
    v8 = v2;
    (*(*v1 + 640))(v6, sub_42E0);
  }

  return result;
}

uint64_t sub_42E0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC14Content_Caches15ServerViewModel__testInProgress;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t (*sub_433C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 632))(KeyPath);

  v4[5] = OBJC_IVAR____TtC14Content_Caches15ServerViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_92EC(&qword_451B0, type metadata accessor for ServerViewModel, &unk_34010);
  sub_32B44();

  v4[7] = sub_4040(v4);
  return sub_448C;
}

uint64_t sub_4498@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for PerformanceResult(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_456C(uint64_t a1, uint64_t a2)
{
  v4 = sub_279C(&qword_451B8, &qword_35710);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_45DC@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 632))();

  v3 = OBJC_IVAR____TtC14Content_Caches15ServerViewModel__performanceResult;
  swift_beginAccess();
  return sub_478C(v1 + v3, a1);
}

uint64_t sub_46C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_279C(&qword_451B8, &qword_35710);
  __chkstk_darwin(v4 - 8);
  v6 = &v8 - v5;
  sub_478C(a1, &v8 - v5);
  return (*(**a2 + 528))(v6);
}

uint64_t sub_478C(uint64_t a1, uint64_t a2)
{
  v4 = sub_279C(&qword_451B8, &qword_35710);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_47FC(uint64_t a1)
{
  v3 = sub_279C(&qword_451B8, &qword_35710);
  __chkstk_darwin(v3 - 8);
  v5 = &v11[-v4];
  v6 = OBJC_IVAR____TtC14Content_Caches15ServerViewModel__performanceResult;
  swift_beginAccess();
  sub_478C(v1 + v6, v5);
  v7 = sub_87A4(v5, a1);
  sub_93EC(v5, &qword_451B8, &qword_35710);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    v9 = __chkstk_darwin(KeyPath);
    *&v11[-16] = v1;
    *&v11[-8] = a1;
    (*(*v1 + 640))(v9, sub_8AF4);
  }

  else
  {
    sub_478C(a1, v5);
    swift_beginAccess();
    sub_8A84(v5, v1 + v6);
    swift_endAccess();
  }

  return sub_93EC(a1, &qword_451B8, &qword_35710);
}

uint64_t (*sub_49CC(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 632))(KeyPath);

  v4[5] = OBJC_IVAR____TtC14Content_Caches15ServerViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_92EC(&qword_451B0, type metadata accessor for ServerViewModel, &unk_34010);
  sub_32B44();

  v4[7] = sub_4504(v4);
  return sub_4B1C;
}

uint64_t sub_4B94@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_4B9C()
{
  swift_getKeyPath();
  (*(*v0 + 632))();

  v1 = (v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel__performanceErrorString);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_4C38@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 568))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_4C8C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 576);

  return v4(v2, v3);
}

uint64_t sub_4CFC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel__performanceErrorString);
  swift_beginAccess();
  v6 = v5[1];
  if (v6)
  {
    if (a2)
    {
      v7 = *v5 == a1 && v6 == a2;
      if (v7 || (sub_33644() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    *v5 = a1;
    v5[1] = a2;
  }

  KeyPath = swift_getKeyPath();
  v10 = __chkstk_darwin(KeyPath);
  v11 = v2;
  v12 = a1;
  v13 = a2;
  (*(*v2 + 640))(v10, sub_8B5C);
}

uint64_t (*sub_4E4C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 632))(KeyPath);

  v4[5] = OBJC_IVAR____TtC14Content_Caches15ServerViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_92EC(&qword_451B0, type metadata accessor for ServerViewModel, &unk_34010);
  sub_32B44();

  v4[7] = sub_4B34(v4);
  return sub_4F9C;
}

void sub_4FA8(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v3 = v3[4];
  swift_getKeyPath();
  sub_32B34();

  free(v3);
}

uint64_t sub_503C(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_508C(a1, a2);
  return v4;
}

void *sub_508C(void *a1, uint64_t a2)
{
  v3 = v2;
  v126 = a2;
  v5 = sub_279C(&qword_451C0, &qword_33FB8);
  v6 = *(v5 - 8);
  v119 = v5;
  v120 = v6;
  __chkstk_darwin(v5);
  v118 = v106 - v7;
  v8 = type metadata accessor for CachingServer(0);
  v116 = *(v8 - 8);
  v124 = *(v116 + 64);
  __chkstk_darwin(v8 - 8);
  v123 = v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_279C(&qword_451C8, &qword_34850);
  __chkstk_darwin(v10 - 8);
  v122 = v106 - v11;
  v115 = sub_279C(&qword_451D0, &qword_33FC0);
  v117 = *(v115 - 1);
  __chkstk_darwin(v115);
  v114 = v106 - v12;
  v13 = sub_32AE4();
  __chkstk_darwin(v13 - 8);
  v14 = sub_33224();
  __chkstk_darwin(v14 - 8);
  *(v2 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel__subscriptions) = _swiftEmptyArrayStorage;
  *(v2 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel__minSpacerLength) = 0x403E000000000000;
  *(v2 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel__testInProgress) = 0;
  v15 = OBJC_IVAR____TtC14Content_Caches15ServerViewModel__performanceResult;
  v16 = type metadata accessor for PerformanceResult(0);
  (*(*(v16 - 8) + 56))(v2 + v15, 1, 1, v16);
  v17 = (v2 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel__performanceErrorString);
  *v17 = 0;
  v17[1] = 0;
  v18 = (v2 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_goodLabel);
  sub_33214();
  v19 = sub_2A72C();
  swift_beginAccess();
  v20 = *v19;
  sub_32AD4();
  *v18 = sub_33284();
  v18[1] = v21;
  v22 = (v2 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_badLabel);
  sub_33214();
  swift_beginAccess();
  v23 = *v19;
  sub_32AD4();
  *v22 = sub_33284();
  v22[1] = v24;
  v25 = (v2 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_infoSectionHeader);
  sub_33214();
  swift_beginAccess();
  v26 = *v19;
  sub_32AD4();
  *v25 = sub_33284();
  v25[1] = v27;
  v28 = (v2 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_yesLabel);
  sub_33214();
  swift_beginAccess();
  v29 = *v19;
  sub_32AD4();
  *v28 = sub_33284();
  v28[1] = v30;
  v31 = (v2 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_noLabel);
  sub_33214();
  swift_beginAccess();
  v32 = *v19;
  sub_32AD4();
  *v31 = sub_33284();
  v31[1] = v33;
  v34 = (v2 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_addressLabel);
  sub_33214();
  swift_beginAccess();
  v35 = *v19;
  sub_32AD4();
  *v34 = sub_33284();
  v34[1] = v36;
  v37 = (v2 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_guidLabel);
  sub_33214();
  swift_beginAccess();
  v38 = *v19;
  sub_32AD4();
  *v37 = sub_33284();
  v37[1] = v39;
  v40 = (v2 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_typeLabel);
  sub_33214();
  swift_beginAccess();
  v41 = *v19;
  sub_32AD4();
  *v40 = sub_33284();
  v40[1] = v42;
  v43 = (v2 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_rankLabel);
  sub_33214();
  swift_beginAccess();
  v44 = *v19;
  sub_32AD4();
  *v43 = sub_33284();
  v43[1] = v45;
  v46 = (v2 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_healthLabel);
  sub_33214();
  swift_beginAccess();
  v47 = *v19;
  sub_32AD4();
  *v46 = sub_33284();
  v46[1] = v48;
  v49 = (v2 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_inFavoredLabel);
  sub_33214();
  swift_beginAccess();
  v50 = *v19;
  sub_32AD4();
  *v49 = sub_33284();
  v49[1] = v51;
  v52 = (v2 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_reachableLabel);
  sub_33214();
  swift_beginAccess();
  v53 = *v19;
  sub_32AD4();
  *v52 = sub_33284();
  v52[1] = v54;
  v55 = (v2 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_testSectionFooter);
  sub_33214();
  swift_beginAccess();
  v56 = *v19;
  sub_32AD4();
  *v55 = sub_33284();
  v55[1] = v57;
  v58 = (v2 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_learnMoreLabel);
  sub_33214();
  swift_beginAccess();
  v59 = *v19;
  sub_32AD4();
  *v58 = sub_33284();
  v58[1] = v60;
  v61 = (v2 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_cancelDownloadLabel);
  sub_33214();
  swift_beginAccess();
  v62 = *v19;
  sub_32AD4();
  *v61 = sub_33284();
  v61[1] = v63;
  v64 = (v2 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_downloadTestLabel);
  sub_33214();
  swift_beginAccess();
  v65 = *v19;
  sub_32AD4();
  *v64 = sub_33284();
  v64[1] = v66;
  v67 = (v2 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_lastCheckedLabel);
  sub_33214();
  swift_beginAccess();
  v68 = *v19;
  sub_32AD4();
  *v67 = sub_33284();
  v67[1] = v69;
  v70 = (v2 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_downloadSpeedLabel);
  sub_33214();
  swift_beginAccess();
  v71 = *v19;
  sub_32AD4();
  *v70 = sub_33284();
  v70[1] = v72;
  v73 = (v2 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_downloadCancelledLabel);
  sub_33214();
  swift_beginAccess();
  v74 = *v19;
  sub_32AD4();
  *v73 = sub_33284();
  v73[1] = v75;
  v76 = (v2 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_downloadFailedLabel);
  sub_33214();
  swift_beginAccess();
  v77 = *v19;
  sub_32AD4();
  *v76 = sub_33284();
  v76[1] = v78;
  sub_32B54();
  sub_35E4(a1, (v2 + 2));
  v125 = type metadata accessor for CachingServer;
  sub_8F98(v126, v2 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_server, type metadata accessor for CachingServer);
  v121 = a1;
  v79 = a1[3];
  v80 = a1[4];
  sub_3294(a1, v79);
  v127 = (*(v80 + 48))(v79, v80);
  v106[4] = sub_9334(0, &qword_451D8, OS_dispatch_queue_ptr);
  v81 = sub_33474();
  v128 = v81;
  v112 = sub_33454();
  v82 = *(v112 - 8);
  v111 = *(v82 + 56);
  v113 = v82 + 56;
  v83 = v122;
  v111(v122, 1, 1, v112);
  sub_279C(&qword_451E0, &qword_33FC8);
  v110 = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_8F50(&qword_451E8, &qword_451E0, &qword_33FC8, &protocol conformance descriptor for AnyPublisher<A, B>);
  v109 = sub_8C18();
  v84 = v114;
  sub_32C94();
  sub_93EC(v83, &qword_451C8, &qword_34850);

  v85 = swift_allocObject();
  swift_weakInit();
  v86 = v125;
  v87 = v123;
  sub_8F98(v126, v123, v125);
  v116 = *(v116 + 80);
  v88 = (v116 + 24) & ~v116;
  v107 = v88;
  v89 = swift_allocObject();
  *(v89 + 16) = v85;
  sub_944C(v87, v89 + v88, v86);
  v108 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_8F50(&qword_451F8, &qword_451D0, &qword_33FC0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);

  v90 = v115;
  sub_32CA4();

  (*(v117 + 8))(v84, v90);
  KeyPath = swift_getKeyPath();
  v115 = (*v3 + 632);
  v117 = *v115;
  (v117)(KeyPath);

  v92 = OBJC_IVAR____TtC14Content_Caches15ServerViewModel___observationRegistrar;
  v127 = v3;
  swift_getKeyPath();
  v106[1] = sub_92EC(&qword_451B0, type metadata accessor for ServerViewModel, &unk_34010);
  v106[2] = v92;
  sub_32B44();

  swift_beginAccess();
  v114 = sub_279C(&qword_45200, &qword_34890);
  v106[3] = sub_8F50(&qword_45208, &qword_45200, &qword_34890, &protocol conformance descriptor for [A]);
  sub_32BE4();
  swift_endAccess();

  v127 = v3;
  swift_getKeyPath();
  sub_32B34();

  v93 = v121[3];
  v94 = v121[4];
  sub_3294(v121, v93);
  v127 = (*(v94 + 40))(v93, v94);
  v95 = sub_33474();
  v128 = v95;
  v96 = v122;
  v111(v122, 1, 1, v112);
  sub_279C(&qword_45210, &qword_33FF8);
  sub_8F50(&qword_45218, &qword_45210, &qword_33FF8, v110);
  v97 = v118;
  sub_32C94();
  sub_93EC(v96, &qword_451C8, &qword_34850);

  v98 = swift_allocObject();
  swift_weakInit();

  v99 = v125;
  v100 = v126;
  v101 = v123;
  sub_8F98(v126, v123, v125);
  v102 = v107;
  v103 = swift_allocObject();
  *(v103 + 16) = v98;
  sub_944C(v101, v103 + v102, v99);
  sub_8F50(&qword_45220, &qword_451C0, &qword_33FB8, v108);
  v104 = v119;
  sub_32CA4();

  (*(v120 + 8))(v97, v104);
  swift_getKeyPath();
  (v117)();

  v127 = v3;
  swift_getKeyPath();
  sub_32B44();

  swift_beginAccess();
  sub_32BE4();
  swift_endAccess();

  v127 = v3;
  swift_getKeyPath();
  sub_32B34();

  sub_9000(v100, v125);
  sub_3364(v121);
  return v3;
}

uint64_t sub_6558()
{
  v0 = sub_32AE4();
  __chkstk_darwin(v0 - 8);
  v1 = sub_33224();
  __chkstk_darwin(v1 - 8);
  sub_33214();
  v2 = sub_2A72C();
  swift_beginAccess();
  v3 = *v2;
  sub_32AD4();
  return sub_33284();
}

uint64_t sub_66A4()
{
  v0 = sub_32AE4();
  __chkstk_darwin(v0 - 8);
  v1 = sub_33224();
  __chkstk_darwin(v1 - 8);
  sub_33214();
  v2 = sub_2A72C();
  swift_beginAccess();
  v3 = *v2;
  sub_32AD4();
  return sub_33284();
}

uint64_t sub_67F8()
{
  v0 = sub_32AE4();
  __chkstk_darwin(v0 - 8);
  v1 = sub_33224();
  __chkstk_darwin(v1 - 8);
  sub_33214();
  v2 = sub_2A72C();
  swift_beginAccess();
  v3 = *v2;
  sub_32AD4();
  return sub_33284();
}

uint64_t sub_691C()
{
  v0 = sub_32AE4();
  __chkstk_darwin(v0 - 8);
  v1 = sub_33224();
  __chkstk_darwin(v1 - 8);
  sub_33214();
  v2 = sub_2A72C();
  swift_beginAccess();
  v3 = *v2;
  sub_32AD4();
  return sub_33284();
}

uint64_t sub_6A9C()
{
  v0 = sub_32AE4();
  __chkstk_darwin(v0 - 8);
  v1 = sub_33224();
  __chkstk_darwin(v1 - 8);
  sub_33214();
  v2 = sub_2A72C();
  swift_beginAccess();
  v3 = *v2;
  sub_32AD4();
  return sub_33284();
}

uint64_t sub_6BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_32AE4();
  __chkstk_darwin(v4 - 8);
  v5 = sub_33224();
  __chkstk_darwin(v5 - 8);
  sub_33214();
  v6 = sub_2A72C();
  swift_beginAccess();
  v7 = *v6;
  sub_32AD4();
  return sub_33284();
}

uint64_t sub_6D1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_336C4();
  sub_332E4();
  v6 = sub_336E4();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_33644() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_6E14(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_32BD4();
  v6 = *(v5 - 8);
  v43 = v5;
  v44 = v6;
  __chkstk_darwin(v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PerformanceResult(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_279C(&qword_451B8, &qword_35710);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v42 - v17;
  v19 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v21 = result;
    v22 = type metadata accessor for CachingServer(0);
    if (*(v19 + 16) && (v23 = sub_26C8(*(a3 + *(v22 + 24)), *(a3 + *(v22 + 24) + 8)), (v24 & 1) != 0))
    {
      sub_8F98(*(v19 + 56) + *(v10 + 72) * v23, v18, type metadata accessor for PerformanceResult);
      v25 = 0;
    }

    else
    {
      v25 = 1;
    }

    (*(v10 + 56))(v18, v25, 1, v9);
    v26 = (*(*v21 + 528))(v18);
    (*(*v21 + 520))(v26);
    if ((*(v10 + 48))(v16, 1, v9))
    {
      sub_93EC(v16, &qword_451B8, &qword_35710);
LABEL_8:
      (*(*v21 + 576))(0, 0);
    }

    sub_8F98(v16, v12, type metadata accessor for PerformanceResult);
    sub_93EC(v16, &qword_451B8, &qword_35710);
    v27 = *&v12[*(v9 + 32)];
    swift_errorRetain();
    sub_9000(v12, type metadata accessor for PerformanceResult);
    if (!v27)
    {
      goto LABEL_8;
    }

    v46 = v27;
    sub_279C(&qword_45540, &unk_35120);
    sub_9334(0, &qword_45150, NSError_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_8;
    }

    v28 = v45;
    v29 = [v45 code];
    v30 = &OBJC_IVAR____TtC14Content_Caches15ServerViewModel_downloadCancelledLabel;
    if (v29 != -999)
    {
      v30 = &OBJC_IVAR____TtC14Content_Caches15ServerViewModel_downloadFailedLabel;
    }

    v31 = (v21 + *v30);
    v32 = *v31;
    v33 = v31[1];

    (*(*v21 + 576))(v32, v33);
    v34 = sub_2167C();
    v35 = v43;
    (*(v44 + 16))(v8, v34, v43);
    v36 = v28;
    v37 = sub_32BB4();
    v38 = sub_33424();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v39 = 138543362;
      *(v39 + 4) = v36;
      *v40 = v36;
      v41 = v36;
      _os_log_impl(&dword_0, v37, v38, "Download test recieved error %{public}@", v39, 0xCu);
      sub_93EC(v40, &qword_45548, &qword_340B8);
    }

    else
    {
    }

    return (*(v44 + 8))(v8, v35);
  }

  return result;
}

uint64_t sub_73B4()
{
  (*(*v0 + 328))(v6);
  v1 = v7;
  v2 = v8;
  sub_3294(v6, v7);
  v3 = v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_server;
  v4 = type metadata accessor for CachingServer(0);
  (*(v2 + 64))(*(v3 + *(v4 + 24)), *(v3 + *(v4 + 24) + 8), v1, v2);
  return sub_3364(v6);
}

uint64_t sub_746C()
{
  (*(*v0 + 328))(v6);
  v1 = v7;
  v2 = v8;
  sub_3294(v6, v7);
  v3 = v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_server;
  v4 = type metadata accessor for CachingServer(0);
  (*(v2 + 56))(*(v3 + *(v4 + 24)), *(v3 + *(v4 + 24) + 8), v1, v2);
  return sub_3364(v6);
}

uint64_t sub_7524()
{
  v1 = type metadata accessor for PerformanceResult(0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_279C(&qword_451B8, &qword_35710);
  __chkstk_darwin(v5 - 8);
  v7 = &v21 - v6;
  v8 = sub_32A84();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v21 - v14;
  (*(*v0 + 520))(v13);
  if ((*(v2 + 48))(v7, 1, v1))
  {
    sub_93EC(v7, &qword_451B8, &qword_35710);
    return 0;
  }

  else
  {
    sub_8F98(v7, v4, type metadata accessor for PerformanceResult);
    sub_93EC(v7, &qword_451B8, &qword_35710);
    (*(v9 + 16))(v12, v4, v8);
    sub_9000(v4, type metadata accessor for PerformanceResult);
    (*(v9 + 32))(v15, v12, v8);
    v17 = [objc_allocWithZone(NSDateFormatter) init];
    [v17 setTimeStyle:1];
    [v17 setDateStyle:1];
    isa = sub_32A34().super.isa;
    v19 = [v17 stringFromDate:isa];

    v20 = sub_33244();
    (*(v9 + 8))(v15, v8);
    return v20;
  }
}

uint64_t sub_7870()
{
  v1 = sub_279C(&qword_45228, &qword_34000);
  v35 = *(v1 - 8);
  v36 = v1;
  __chkstk_darwin(v1);
  v3 = &v33 - v2;
  v4 = type metadata accessor for PerformanceResult(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_279C(&qword_451B8, &qword_35710);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v33 - v13;
  v15 = *(*v0 + 520);
  v15(v12);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4))
  {
    v17 = v14;
LABEL_5:
    sub_93EC(v17, &qword_451B8, &qword_35710);
    return 0;
  }

  v34 = v3;
  sub_8F98(v14, v7, type metadata accessor for PerformanceResult);
  sub_93EC(v14, &qword_451B8, &qword_35710);
  v18 = sub_9000(v7, type metadata accessor for PerformanceResult);
  v15(v18);
  if (v16(v11, 1, v4))
  {
    v17 = v11;
    goto LABEL_5;
  }

  sub_8F98(v11, v7, type metadata accessor for PerformanceResult);
  sub_93EC(v11, &qword_451B8, &qword_35710);
  sub_9000(v7, type metadata accessor for PerformanceResult);
  v20 = [objc_allocWithZone(NSByteCountFormatter) init];
  [v20 setCountStyle:1];
  v21 = [objc_opt_self() bytes];
  sub_9334(0, &qword_45230, NSUnitInformationStorage_ptr);
  v22 = v34;
  sub_32894();
  sub_279C(&qword_45238, &qword_34008);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_33E20;
  v24 = v36;
  v25 = sub_32884();
  v27 = v26;
  v28 = [v20 stringFromMeasurement:{v26, v25}];

  v29 = sub_33244();
  v31 = v30;

  *(v23 + 56) = &type metadata for String;
  *(v23 + 64) = sub_9060();
  *(v23 + 32) = v29;
  *(v23 + 40) = v31;
  v32 = sub_33254();

  (*(v35 + 8))(v22, v24);
  return v32;
}

uint64_t sub_7CE8()
{
  v1 = *(v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_goodLabel);

  return v1;
}

uint64_t sub_7D24()
{
  v1 = *(v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_badLabel);

  return v1;
}

uint64_t sub_7D60()
{
  v1 = *(v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_infoSectionHeader);

  return v1;
}

uint64_t sub_7D9C()
{
  v1 = *(v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_yesLabel);

  return v1;
}

uint64_t sub_7DD8()
{
  v1 = *(v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_noLabel);

  return v1;
}

uint64_t sub_7E14()
{
  v1 = *(v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_addressLabel);

  return v1;
}

uint64_t sub_7E50()
{
  v1 = *(v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_guidLabel);

  return v1;
}

uint64_t sub_7E8C()
{
  v1 = *(v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_typeLabel);

  return v1;
}

uint64_t sub_7EC8()
{
  v1 = *(v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_rankLabel);

  return v1;
}

uint64_t sub_7F04()
{
  v1 = *(v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_healthLabel);

  return v1;
}

uint64_t sub_7F40()
{
  v1 = *(v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_inFavoredLabel);

  return v1;
}

uint64_t sub_7F7C()
{
  v1 = *(v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_reachableLabel);

  return v1;
}

uint64_t sub_7FB8()
{
  v1 = *(v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_testSectionFooter);

  return v1;
}

uint64_t sub_7FF4()
{
  v1 = *(v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_learnMoreLabel);

  return v1;
}

uint64_t sub_8030()
{
  v1 = *(v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_cancelDownloadLabel);

  return v1;
}

uint64_t sub_806C()
{
  v1 = *(v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_downloadTestLabel);

  return v1;
}

uint64_t sub_80A8()
{
  v1 = *(v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_lastCheckedLabel);

  return v1;
}

uint64_t sub_80E4()
{
  v1 = *(v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_downloadSpeedLabel);

  return v1;
}

uint64_t sub_8120()
{
  v1 = *(v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_downloadCancelledLabel);

  return v1;
}

uint64_t sub_815C()
{
  v1 = *(v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_downloadFailedLabel);

  return v1;
}

uint64_t sub_82D8()
{
  sub_3364((v0 + 16));
  sub_9000(v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_server, type metadata accessor for CachingServer);

  sub_93EC(v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel__performanceResult, &qword_451B8, &qword_35710);

  v1 = OBJC_IVAR____TtC14Content_Caches15ServerViewModel___observationRegistrar;
  v2 = sub_32B64();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_8538()
{
  sub_82D8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_8590(unint64_t a1, unint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_32;
  }

  v5 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
LABEL_3:
  if (a2 >> 62)
  {
    result = sub_335C4();
    if (v5 == result)
    {
      goto LABEL_5;
    }

LABEL_34:
    v15 = 0;
    return v15 & 1;
  }

  result = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
  if (v5 != result)
  {
    goto LABEL_34;
  }

LABEL_5:
  if (!v5)
  {
    goto LABEL_28;
  }

  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  if ((a1 & 0x8000000000000000) != 0)
  {
    v7 = a1;
  }

  if (v4)
  {
    v8 = v7;
  }

  v9 = a2 & 0xFFFFFFFFFFFFFF8;
  v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  if ((a2 & 0x8000000000000000) != 0)
  {
    v9 = a2;
  }

  if (a2 >> 62)
  {
    v10 = v9;
  }

  if (v8 == v10)
  {
LABEL_28:
    v15 = 1;
    return v15 & 1;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v4 = sub_32C04();
    v11 = a2 & 0xC000000000000001;
    v12 = 4;
    while (1)
    {
      v13 = v12 - 4;
      v14 = v12 - 3;
      if (__OFADD__(v12 - 4, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        v5 = sub_335C4();
        goto LABEL_3;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        sub_33594();
        if (v11)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v13 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_30;
        }

        if (v11)
        {
LABEL_20:
          sub_33594();
          goto LABEL_25;
        }
      }

      if (v13 >= *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_31;
      }

LABEL_25:
      sub_92EC(&qword_45538, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
      v15 = sub_33204();

      if (v15)
      {
        ++v12;
        if (v14 != v5)
        {
          continue;
        }
      }

      return v15 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_87A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PerformanceResult(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_279C(&qword_451B8, &qword_35710);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - v9;
  v11 = sub_279C(&qword_45550, &unk_340C0);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_478C(a1, &v20 - v13);
  sub_478C(a2, &v14[v15]);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_478C(v14, v10);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      sub_944C(&v14[v15], v7, type metadata accessor for PerformanceResult);
      sub_92EC(&qword_45558, type metadata accessor for PerformanceResult, &unk_34138);
      v18 = sub_33204();
      sub_9000(v7, type metadata accessor for PerformanceResult);
      sub_9000(v10, type metadata accessor for PerformanceResult);
      sub_93EC(v14, &qword_451B8, &qword_35710);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    sub_9000(v10, type metadata accessor for PerformanceResult);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_93EC(v14, &qword_45550, &unk_340C0);
    v17 = 1;
    return v17 & 1;
  }

  sub_93EC(v14, &qword_451B8, &qword_35710);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_8A84(uint64_t a1, uint64_t a2)
{
  v4 = sub_279C(&qword_451B8, &qword_35710);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_8AF4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC14Content_Caches15ServerViewModel__performanceResult;
  swift_beginAccess();
  sub_937C(v1, v2 + v3);
  return swift_endAccess();
}

uint64_t sub_8B5C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = (v1 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel__performanceErrorString);
  swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;
}

uint64_t sub_8BD0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_8C18()
{
  result = qword_451F0;
  if (!qword_451F0)
  {
    sub_9334(255, &qword_451D8, OS_dispatch_queue_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_451F0);
  }

  return result;
}

uint64_t sub_8C80()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_8CBC(uint64_t *a1)
{
  v3 = type metadata accessor for CachingServer(0);
  v4 = *(*(v3 - 8) + 80);
  v5 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = (v1 + *(v3 + 24) + ((v4 + 24) & ~v4));
    v9 = sub_6D1C(*v8, v8[1], v5);
    (*(*v7 + 480))(v9 & 1);
  }

  return result;
}

uint64_t sub_8DBC()
{
  v1 = (type metadata accessor for CachingServer(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = sub_32AC4();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v3, v5);
  v6(v0 + v3 + v1[7], v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_8EDC(uint64_t *a1)
{
  v3 = *(type metadata accessor for CachingServer(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_6E14(a1, v4, v5);
}

uint64_t sub_8F50(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_8BD0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_8F98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_9000(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_9060()
{
  result = qword_45240;
  if (!qword_45240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_45240);
  }

  return result;
}

void sub_90BC(uint64_t a1)
{
  type metadata accessor for CachingServer(319);
  if (v1 <= 0x3F)
  {
    sub_9228(319);
    if (v2 <= 0x3F)
    {
      sub_32B64();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_9228(uint64_t a1)
{
  if (!qword_45270)
  {
    type metadata accessor for PerformanceResult(255);
    v1 = sub_334B4();
    if (!v2)
    {
      atomic_store(v1, &qword_45270);
    }
  }
}

uint64_t sub_9280()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC14Content_Caches15ServerViewModel__subscriptions;
  swift_beginAccess();
  *(v2 + v3) = v1;
}

uint64_t sub_92EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_9334(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_937C(uint64_t a1, uint64_t a2)
{
  v4 = sub_279C(&qword_451B8, &qword_35710);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_93EC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_279C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_944C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t *sub_94B4(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;
        v13 = result;

        *v13 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v14);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v14, v2);
      }
    }
  }

  return result;
}

uint64_t sub_96EC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_32A84();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_9754@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PerformanceResult(0) + 20);
  v4 = sub_32A84();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for PerformanceResult(uint64_t a1)
{
  result = qword_46C40;
  if (!qword_46C40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_9864()
{
  v1 = *(v0 + *(type metadata accessor for PerformanceResult(0) + 32));
  swift_errorRetain();
  return v1;
}

BOOL sub_98DC(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (sub_32A54())
  {
    v4 = type metadata accessor for PerformanceResult(0);
    if ((sub_32A54() & 1) != 0 && *(a1 + *(v4 + 28)) == *(a2 + *(v4 + 28)) && *(a1 + *(v4 + 24)) == *(a2 + *(v4 + 24)))
    {
      return 1;
    }
  }

  return result;
}

unint64_t sub_9964()
{
  v1 = v0;
  v2 = sub_32A24();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_279C(&qword_45168, qword_340E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_340D0;
  *(inited + 32) = 0x7461447472617473;
  v21[1] = inited + 32;
  *(inited + 40) = 0xE900000000000065;
  sub_9C3C(v5);
  v7 = sub_329B4();
  v9 = v8;
  v10 = *(v3 + 8);
  v10(v5, v2);
  *(inited + 48) = v7;
  *(inited + 56) = v9;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x65746144646E65;
  *(inited + 88) = 0xE700000000000000;
  v11 = type metadata accessor for PerformanceResult(0);
  sub_9C3C(v5);
  v12 = sub_329B4();
  v14 = v13;
  v10(v5, v2);
  *(inited + 96) = v12;
  *(inited + 104) = v14;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 0x6E6F697461727564;
  *(inited + 136) = 0xE800000000000000;
  *(inited + 144) = *(v1 + v11[6]);
  *(inited + 168) = &type metadata for Double;
  *(inited + 176) = 1702521203;
  *(inited + 184) = 0xE400000000000000;
  v15 = *(v1 + v11[7]);
  *(inited + 216) = &type metadata for Int;
  *(inited + 192) = v15;
  v16 = sub_2F8C(inited);
  swift_setDeallocating();
  sub_279C(&qword_45178, "T\b");
  swift_arrayDestroy();
  if (*(v1 + v11[8]))
  {
    swift_getErrorValue();
    swift_errorRetain();
    v17 = sub_33674();
    v25 = &type metadata for String;
    *&v24 = v17;
    *(&v24 + 1) = v18;
    sub_3284(&v24, v23);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = v16;
    sub_A4AC(v23, 0x726F727265, 0xE500000000000000, isUniquelyReferenced_nonNull_native);

    return v22;
  }

  return v16;
}

uint64_t sub_9C3C@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v1 = sub_279C(&qword_455F8, qword_34198);
  __chkstk_darwin(v1 - 8);
  v29 = &v24 - v2;
  v28 = sub_32B04();
  v3 = *(v28 - 8);
  __chkstk_darwin(v28);
  v25 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_32A14();
  v5 = *(v27 - 8);
  __chkstk_darwin(v27);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_329F4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_329D4();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_329E4();
  __chkstk_darwin(v16);
  (*(v18 + 104))(&v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for Date.ISO8601FormatStyle.DateSeparator.dash(_:));
  v19 = v12;
  v20 = v28;
  (*(v13 + 104))(v15, enum case for Date.ISO8601FormatStyle.DateTimeSeparator.standard(_:), v19);
  v21 = v7;
  v22 = v29;
  (*(v9 + 104))(v11, enum case for Date.ISO8601FormatStyle.TimeSeparator.colon(_:), v8);
  (*(v5 + 104))(v21, enum case for Date.ISO8601FormatStyle.TimeZoneSeparator.omitted(_:), v27);
  sub_32AF4();
  result = (*(v3 + 48))(v22, 1, v20);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v3 + 32))(v25, v22, v20);
    return sub_32A04();
  }

  return result;
}

uint64_t sub_A040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v12 = sub_32A84();
  v13 = *(*(v12 - 8) + 32);
  v13(a5, a1, v12);
  v14 = type metadata accessor for PerformanceResult(0);
  result = (v13)(a5 + v14[5], a2, v12);
  *(a5 + v14[6]) = a6;
  *(a5 + v14[7]) = a3;
  *(a5 + v14[8]) = a4;
  return result;
}

uint64_t sub_A1F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_279C(&qword_451A8, &qword_34190);
  v33 = v4;
  result = sub_335E4();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_3284(v24, v34);
      }

      else
      {
        sub_2740(v24, v34);
      }

      sub_336C4();
      sub_332E4();
      result = sub_336E4();
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_3284(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

_OWORD *sub_A4AC(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_26C8(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_A668();
      v11 = v19;
      goto LABEL_8;
    }

    sub_A1F4(v16, a4 & 1);
    v11 = sub_26C8(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_33664();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_3364(v22);

    return sub_3284(a1, v22);
  }

  else
  {
    sub_A5FC(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_A5FC(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_3284(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *sub_A668()
{
  v1 = v0;
  sub_279C(&qword_451A8, &qword_34190);
  v2 = *v0;
  v3 = sub_335D4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_2740(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_3284(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

unint64_t sub_A810()
{
  result = qword_45558;
  if (!qword_45558)
  {
    type metadata accessor for PerformanceResult(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_45558);
  }

  return result;
}

uint64_t sub_A87C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_32A84();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_A958(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_32A84();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32)) = a2;
  }

  return result;
}

void sub_AA10(uint64_t a1)
{
  sub_32A84();
  if (v1 <= 0x3F)
  {
    sub_AAA8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_AAA8(uint64_t a1)
{
  if (!qword_455B8)
  {
    sub_8BD0(&qword_45540, &unk_35120);
    v1 = sub_334B4();
    if (!v2)
    {
      atomic_store(v1, &qword_455B8);
    }
  }
}

uint64_t sub_AB0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_279C(&qword_45178, "T\b");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_ABB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  type metadata accessor for PerformanceResult(0);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v5 = sub_32BD4();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  sub_279C(&qword_45600, &qword_341D8);
  v4[15] = swift_task_alloc();
  v6 = sub_32974();
  v4[16] = v6;
  v4[17] = *(v6 - 8);
  v4[18] = swift_task_alloc();
  sub_279C(&qword_45608, &qword_341E0);
  v4[19] = swift_task_alloc();
  v7 = sub_328E4();
  v4[20] = v7;
  v4[21] = *(v7 - 8);
  v4[22] = swift_task_alloc();

  return _swift_task_switch(sub_ADF0, 0, 0);
}

unsigned __int8 *sub_ADF0()
{
  v46 = v0;
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[19];
  sub_328D4();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_93EC(v0[19], &qword_45608, &qword_341E0);
    return sub_335B4();
  }

  v5 = v0[5];
  v6 = v0[6];
  (*(v0[21] + 32))(v0[22], v0[19], v0[20]);
  v0[2] = 58;
  v0[3] = 0xE100000000000000;
  v7 = swift_task_alloc();
  *(v7 + 16) = v0 + 2;

  v9 = sub_CC7C(0x7FFFFFFFFFFFFFFFLL, 1, sub_EA04, v7, v5, v6, v8);

  if (v9[2] < 2uLL)
  {
    __break(1u);
    goto LABEL_23;
  }

  v10 = v9[8];
  v11 = v9[9];
  if ((v11 ^ v10) < 0x4000)
  {
    goto LABEL_13;
  }

  v13 = v9[10];
  v12 = v9[11];
  result = sub_E834(v9[8], v9[9], v13, v12, 10);
  if ((v14 & 0x100) == 0)
  {
    if ((v14 & 1) == 0)
    {
      v15 = result;
      goto LABEL_9;
    }

LABEL_13:

    v20 = 1;
    goto LABEL_14;
  }

  v15 = sub_D6F0(v10, v11, v13, v12, 10);
  v17 = v16;

  if (v17)
  {
    goto LABEL_13;
  }

LABEL_9:
  if (v15 > 65534)
  {
    goto LABEL_13;
  }

  if (!v9[2])
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v18 = v0[17];
  v44 = v0[16];
  v19 = v0[15];

  sub_332B4();

  sub_328B4();
  sub_328C4();
  sub_328A4();
  if ((*(v18 + 48))(v19, 1, v44) == 1)
  {
    sub_93EC(v0[15], &qword_45600, &qword_341D8);
    v20 = 0;
LABEL_14:
    sub_EA5C();
    swift_allocError();
    *v21 = v20;
    *(v21 + 8) = 1;
    swift_willThrow();
    (*(v0[21] + 8))(v0[22], v0[20]);

    v22 = v0[1];

    return v22();
  }

  v23 = v0[14];
  v24 = v0[10];
  v25 = v0[11];
  (*(v0[17] + 32))(v0[18], v0[15], v0[16]);
  v26 = sub_2167C();
  v0[23] = v26;
  v27 = *(v25 + 16);
  v0[24] = v27;
  v0[25] = (v25 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v27(v23, v26, v24);

  v28 = sub_32BB4();
  v29 = sub_33434();

  v30 = os_log_type_enabled(v28, v29);
  v31 = v0[14];
  v32 = v0[10];
  v33 = v0[11];
  if (v30)
  {
    v35 = v0[5];
    v34 = v0[6];
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v45 = v37;
    *v36 = 136446210;
    *(v36 + 4) = sub_D148(v35, v34, &v45);
    _os_log_impl(&dword_0, v28, v29, "Starting download test for: %{public}s", v36, 0xCu);
    sub_3364(v37);
  }

  v38 = *(v33 + 8);
  v38(v31, v32);
  v0[26] = v38;
  v39 = swift_task_alloc();
  v0[27] = v39;
  *v39 = v0;
  v39[1] = sub_B374;
  v40 = v0[18];
  v41 = v0[9];
  v42 = v0[6];
  v43 = v0[5];

  return sub_BC38(v41, v40, v43, v42);
}

uint64_t sub_B374()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_BA08;
  }

  else
  {
    v2 = sub_B488;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_B488()
{
  v19 = v0;
  (*(v0 + 192))(*(v0 + 104), *(v0 + 184), *(v0 + 80));

  v1 = sub_32BB4();
  v2 = sub_33434();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 208);
  v5 = *(v0 + 104);
  v6 = *(v0 + 80);
  if (v3)
  {
    v17 = *(v0 + 208);
    v8 = *(v0 + 40);
    v7 = *(v0 + 48);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_D148(v8, v7, &v18);
    _os_log_impl(&dword_0, v1, v2, "Starting second download test for: %{public}s", v9, 0xCu);
    sub_3364(v10);

    v17(v5, v6);
  }

  else
  {

    v4(v5, v6);
  }

  v11 = swift_task_alloc();
  *(v0 + 232) = v11;
  *v11 = v0;
  v11[1] = sub_B674;
  v12 = *(v0 + 144);
  v13 = *(v0 + 64);
  v14 = *(v0 + 40);
  v15 = *(v0 + 48);

  return sub_BC38(v13, v12, v14, v15);
}

uint64_t sub_B674()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_BB18;
  }

  else
  {
    v2 = sub_B788;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_B788()
{
  v27 = v0;
  (*(v0 + 192))(*(v0 + 96), *(v0 + 184), *(v0 + 80));

  v1 = sub_32BB4();
  v2 = sub_33434();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 208);
  v5 = *(v0 + 96);
  v6 = *(v0 + 80);
  if (v3)
  {
    v25 = *(v0 + 208);
    v8 = *(v0 + 40);
    v7 = *(v0 + 48);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26 = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_D148(v8, v7, &v26);
    _os_log_impl(&dword_0, v1, v2, "Returning performance results for: %{public}s", v9, 0xCu);
    sub_3364(v10);

    v25(v5, v6);
  }

  else
  {

    v4(v5, v6);
  }

  v12 = *(v0 + 168);
  v11 = *(v0 + 176);
  v13 = *(v0 + 160);
  v14 = *(v0 + 136);
  v15 = *(v0 + 144);
  v16 = *(v0 + 128);
  v18 = *(v0 + 64);
  v17 = *(v0 + 72);
  v24 = *(v0 + 32);
  v19 = sub_989C(v17, v18);
  (*(v14 + 8))(v15, v16);
  (*(v12 + 8))(v11, v13);
  if (v19)
  {
    v20 = v18;
  }

  else
  {
    v20 = v17;
  }

  if (v19)
  {
    v21 = v17;
  }

  else
  {
    v21 = v18;
  }

  sub_EAB0(v20);
  sub_EB0C(v21, v24);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_BA08()
{
  (*(v0[17] + 8))(v0[18], v0[16]);
  (*(v0[21] + 8))(v0[22], v0[20]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_BB18()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  sub_EAB0(v0[9]);
  (*(v2 + 8))(v1, v3);
  (*(v0[21] + 8))(v0[22], v0[20]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_BC38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v6 = sub_32A84();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v7 = sub_32974();
  v5[16] = v7;
  v5[17] = *(v7 - 8);
  v5[18] = swift_task_alloc();
  v8 = sub_32874();
  v5[19] = v8;
  v5[20] = *(v8 - 8);
  v5[21] = swift_task_alloc();

  return _swift_task_switch(sub_BDDC, 0, 0);
}

uint64_t sub_BDDC()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[16];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[6];
  v14 = v0[7];
  v7 = [objc_opt_self() ephemeralSessionConfiguration];
  v8 = [objc_opt_self() sessionWithConfiguration:v7];
  v0[22] = v8;

  (*(v1 + 16))(v2, v6, v3);
  sub_32864();
  sub_32854();
  swift_beginAccess();

  v9 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v4 + 16);
  *(v4 + 16) = 0x8000000000000000;
  sub_E550(v9, v14, v5, isUniquelyReferenced_nonNull_native);

  *(v4 + 16) = v15;
  swift_endAccess();
  sub_32A64();
  v11 = swift_task_alloc();
  v0[23] = v11;
  *v11 = v0;
  v11[1] = sub_BFC0;
  v12 = v0[21];

  return NSURLSession.data(for:delegate:)(v12, 0);
}

uint64_t sub_BFC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[24] = a1;
  v5[25] = a2;
  v5[26] = a3;
  v5[27] = v3;

  if (v3)
  {
    v6 = sub_C410;
  }

  else
  {
    v6 = sub_C0D8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_C0D8()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = [v1 statusCode];
    if (v2 == 200)
    {
      v3 = *(v0 + 200);
      v4 = *(v0 + 112);
      v5 = *(v0 + 120);
      v7 = *(v0 + 96);
      v6 = *(v0 + 104);
      v8 = *(v0 + 80);
      v9 = *(v0 + 88);
      sub_32A64();
      v10 = *(v9 + 16);
      v10(v6, v5, v8);
      v10(v7, v4, v8);
      result = sub_329C4();
      v13 = v3 >> 62;
      if ((v3 >> 62) > 1)
      {
        if (v13 != 2)
        {
          v14 = 0;
          goto LABEL_15;
        }

        v27 = *(*(v0 + 192) + 16);
        v28 = *(*(v0 + 192) + 24);
        v14 = v28 - v27;
        if (!__OFSUB__(v28, v27))
        {
          goto LABEL_15;
        }

        __break(1u);
      }

      else if (!v13)
      {
        v14 = *(v0 + 206);
LABEL_15:
        v34 = *(v0 + 200);
        v33 = *(v0 + 208);
        v35 = *(v0 + 192);
        v36 = *(v0 + 168);
        v37 = *(v0 + 160);
        v46 = *(v0 + 176);
        v47 = *(v0 + 152);
        v38 = *(v0 + 112);
        v40 = *(v0 + 80);
        v39 = *(v0 + 88);
        v43 = *(v0 + 72);
        v44 = *(v0 + 120);
        v45 = *(v0 + 64);
        v41 = *(v0 + 56);
        sub_A040(*(v0 + 104), *(v0 + 96), v14, 0, *(v0 + 40), v12);
        sub_EC48(v35, v34);

        v42 = *(v39 + 8);
        v42(v38, v40);
        v42(v44, v40);
        sub_C620(v43, v41, v45);

        (*(v37 + 8))(v36, v47);

        v26 = *(v0 + 8);
        goto LABEL_16;
      }

      v29 = *(v0 + 192);
      v30 = *(v0 + 196);
      v31 = __OFSUB__(v30, v29);
      v32 = v30 - v29;
      if (v31)
      {
        __break(1u);
        return result;
      }

      v14 = v32;
      goto LABEL_15;
    }
  }

  else
  {
    v2 = -1;
  }

  v15 = *(v0 + 200);
  v16 = *(v0 + 208);
  v17 = *(v0 + 192);
  sub_EA5C();
  swift_allocError();
  *v18 = v2;
  *(v18 + 8) = 0;
  swift_willThrow();
  sub_EC48(v17, v15);

  v19 = *(v0 + 168);
  v20 = *(v0 + 176);
  v21 = *(v0 + 152);
  v22 = *(v0 + 160);
  v23 = *(v0 + 64);
  v24 = *(v0 + 72);
  v25 = *(v0 + 56);
  (*(*(v0 + 88) + 8))(*(v0 + 120), *(v0 + 80));
  sub_C620(v24, v25, v23);

  (*(v22 + 8))(v19, v21);

  v26 = *(v0 + 8);
LABEL_16:

  return v26();
}

uint64_t sub_C410()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[19];
  v4 = v0[20];
  v5 = v0[8];
  v6 = v0[9];
  v7 = v0[7];
  (*(v0[11] + 8))(v0[15], v0[10]);
  sub_C620(v6, v7, v5);

  (*(v4 + 8))(v1, v3);

  v8 = v0[1];

  return v8();
}

uint64_t sub_C528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_E550(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_26C8(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_E6C8();
        v14 = v16;
      }

      result = sub_E3A0(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_C620(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = sub_32BD4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();

  sub_C528(0, a2, a3);
  swift_endAccess();
  v9 = sub_2167C();
  (*(v6 + 16))(v8, v9, v5);

  v10 = sub_32BB4();
  v11 = sub_33434();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v16[0] = v13;
    *v12 = 136446210;
    *(v12 + 4) = sub_D148(a2, a3, v16);
    _os_log_impl(&dword_0, v10, v11, "Cleaning up test for %{public}s", v12, 0xCu);
    sub_3364(v13);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_C824(uint64_t a1, unint64_t a2)
{
  v5 = sub_32BD4();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v27 - v10;
  swift_beginAccess();
  v12 = *(v2 + 16);
  if (*(v12 + 16))
  {

    v13 = sub_26C8(a1, a2);
    if (v14)
    {
      v15 = *(*(v12 + 56) + 8 * v13);

      [v15 invalidateAndCancel];
      v16 = sub_2167C();
      (*(v6 + 16))(v11, v16, v5);

      v17 = sub_32BB4();
      v18 = sub_33434();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v27 = v20;
        *v19 = 136446210;
        *(v19 + 4) = sub_D148(a1, a2, &v27);
        _os_log_impl(&dword_0, v17, v18, "Download Test cancelled for %{public}s", v19, 0xCu);
        sub_3364(v20);
      }

      return (*(v6 + 8))(v11, v5);
    }
  }

  v22 = sub_2167C();
  (*(v6 + 16))(v9, v22, v5);

  v23 = sub_32BB4();
  v24 = sub_33434();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = v26;
    *v25 = 136446210;
    *(v25 + 4) = sub_D148(a1, a2, &v27);
    _os_log_impl(&dword_0, v23, v24, "Unable to cancel, no session found for host port: %{public}s", v25, 0xCu);
    sub_3364(v26);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_CB70()
{

  return v0;
}

uint64_t sub_CB98()
{

  return _swift_deallocClassInstance(v0, 40, 7);
}

void *sub_CBD8()
{
  v0 = swift_allocObject();
  v0[2] = sub_E900(_swiftEmptyArrayStorage);
  v0[3] = 0xD000000000000079;
  v0[4] = 0x800000000003ADD0;
  return v0;
}

void *sub_CC38()
{
  v0[2] = sub_E900(_swiftEmptyArrayStorage);
  v0[3] = 0xD000000000000079;
  v0[4] = 0x800000000003ADD0;
  return v0;
}

void *sub_CC7C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return _swiftEmptyArrayStorage;
    }

    v7 = sub_333A4();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_D03C(0, 1, 1, _swiftEmptyArrayStorage);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_D03C((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = _swiftEmptyArrayStorage;
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_33384();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_332F4();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_332F4();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_333A4();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_D03C(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_333A4();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_D03C(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_D03C((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_332F4();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

char *sub_D03C(char *result, int64_t a2, char a3, char *a4)
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
    sub_279C(&qword_45708, &qword_34270);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_D148(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_D214(v11, 0, 0, 1, a1, a2);
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
    sub_2740(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_3364(v11);
  return v7;
}

unint64_t sub_D214(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_D320(a5, a6);
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
    result = sub_335A4();
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

void *sub_D320(uint64_t a1, unint64_t a2)
{
  v3 = sub_D36C(a1, a2);
  sub_D49C(&off_41400);
  return v3;
}

void *sub_D36C(uint64_t a1, unint64_t a2)
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

  v6 = sub_D588(v5, 0);
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

  result = sub_335A4();
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
        v10 = sub_33324();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_D588(v10, 0);
        result = sub_33574();
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

uint64_t sub_D49C(uint64_t result)
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

  result = sub_D5FC(result, v11, 1, v3);
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

void *sub_D588(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_279C(&qword_456F0, &qword_35A40);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_D5FC(char *result, int64_t a2, char a3, char *a4)
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
    sub_279C(&qword_456F0, &qword_35A40);
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

unsigned __int8 *sub_D6F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_EC9C();

  result = sub_33394();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_DC88(result, v7);
    v37 = v36;

    v7 = v37;
    if ((v37 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_335A4();
      v9 = v63;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v21 = v9 - 1;
        if (v21)
        {
          v22 = a5 + 48;
          v23 = a5 + 55;
          v24 = a5 + 87;
          if (a5 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v15 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v19 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              v28 = v15 * a5;
              if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v15 = v28 + (v26 + v27);
              if (__OFADD__(v28, (v26 + v27)))
              {
                goto LABEL_126;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_46:
            v19 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v29 = a5 + 48;
        v30 = a5 + 55;
        v31 = a5 + 87;
        if (a5 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        if (result)
        {
          v32 = 0;
          do
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v29)
            {
              if (v33 < 0x41 || v33 >= v30)
              {
                v19 = 0;
                if (v33 < 0x61 || v33 >= v31)
                {
                  goto LABEL_127;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            v35 = v32 * a5;
            if ((v32 * a5) >> 64 != (v32 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v32 = v35 + (v33 + v34);
            if (__OFADD__(v35, (v33 + v34)))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v19 = v35 + (v33 + v34);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v15 * a5;
            if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v15 = v20 - (v17 + v18);
            if (__OFSUB__(v20, (v17 + v18)))
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
LABEL_127:

        return v19;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v38 = HIBYTE(v7) & 0xF;
  v64 = v8;
  v65 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v38)
      {
        v40 = 0;
        v56 = a5 + 48;
        v57 = a5 + 55;
        v58 = a5 + 87;
        if (a5 > 10)
        {
          v56 = 58;
        }

        else
        {
          v58 = 97;
          v57 = 65;
        }

        v59 = &v64;
        while (1)
        {
          v60 = *v59;
          if (v60 < 0x30 || v60 >= v56)
          {
            if (v60 < 0x41 || v60 >= v57)
            {
              v19 = 0;
              if (v60 < 0x61 || v60 >= v58)
              {
                goto LABEL_127;
              }

              v61 = -87;
            }

            else
            {
              v61 = -55;
            }
          }

          else
          {
            v61 = -48;
          }

          v62 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v62 + (v60 + v61);
          if (__OFADD__(v62, (v60 + v61)))
          {
            goto LABEL_126;
          }

          v59 = (v59 + 1);
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v38)
    {
      v39 = v38 - 1;
      if (v39)
      {
        v40 = 0;
        v41 = a5 + 48;
        v42 = a5 + 55;
        v43 = a5 + 87;
        if (a5 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        v44 = &v64 + 1;
        while (1)
        {
          v45 = *v44;
          if (v45 < 0x30 || v45 >= v41)
          {
            if (v45 < 0x41 || v45 >= v42)
            {
              v19 = 0;
              if (v45 < 0x61 || v45 >= v43)
              {
                goto LABEL_127;
              }

              v46 = -87;
            }

            else
            {
              v46 = -55;
            }
          }

          else
          {
            v46 = -48;
          }

          v47 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v47 - (v45 + v46);
          if (__OFSUB__(v47, (v45 + v46)))
          {
            goto LABEL_126;
          }

          ++v44;
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v38)
  {
    v48 = v38 - 1;
    if (v48)
    {
      v40 = 0;
      v49 = a5 + 48;
      v50 = a5 + 55;
      v51 = a5 + 87;
      if (a5 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v64 + 1;
      do
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            v19 = 0;
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_127;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v40 * a5;
        if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v40 = v55 + (v53 + v54);
        if (__OFADD__(v55, (v53 + v54)))
        {
          goto LABEL_126;
        }

        ++v52;
        --v48;
      }

      while (v48);
LABEL_125:
      v19 = v40;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_DC88(uint64_t a1, unint64_t a2)
{
  v2 = sub_333A4();
  v6 = sub_DD08(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_DD08(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_334C4();
    if (!v9 || (v10 = v9, v11 = sub_D588(v9, 0), v12 = sub_DE60(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_332D4();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_332D4();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_335A4();
LABEL_4:

  return sub_332D4();
}

unint64_t sub_DE60(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_E080(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_33364();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_335A4();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_E080(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_33334();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_E080(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_33374();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = sub_33344();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_E0FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_279C(&qword_456F8, &qword_34268);
  v35 = v4;
  result = sub_335E4();
  v7 = result;
  if (*(v5 + 16))
  {
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
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_336C4();
      sub_332E4();
      result = sub_336E4();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
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
        goto LABEL_35;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_E3A0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_33504() + 1) & ~v5;
    do
    {
      sub_336C4();

      sub_332E4();
      v9 = sub_336E4();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_E550(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_26C8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_E0FC(v16, a4 & 1);
      v11 = sub_26C8(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_33664();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v19 = v11;
      sub_E6C8();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return _objc_release_x1();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

id sub_E6C8()
{
  v1 = v0;
  sub_279C(&qword_456F8, &qword_34268);
  v2 = *v0;
  v3 = sub_335D4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_E834(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = sub_335A4();
  }

  result = sub_ECF0(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

unint64_t sub_E900(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_279C(&qword_456F8, &qword_34268);
    v3 = sub_335F4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_26C8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_EA04(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_33644() & 1;
  }
}

unint64_t sub_EA5C()
{
  result = qword_45610;
  if (!qword_45610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_45610);
  }

  return result;
}

uint64_t sub_EAB0(uint64_t a1)
{
  v2 = type metadata accessor for PerformanceResult(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_EB0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PerformanceResult(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t initializeBufferWithCopyOfBuffer for DownloadTester.Errors(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for DownloadTester.Errors(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DownloadTester.Errors(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_EBFC(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_EC18(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_EC48(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_EC9C()
{
  result = qword_45700;
  if (!qword_45700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_45700);
  }

  return result;
}

uint64_t sub_ECF0(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
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
    result = sub_E080(a2, a4, a5);
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
  result = sub_33354();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_E080(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_E080(a3, a4, a5);
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

  result = sub_33354();
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

uint64_t sub_F160@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_32AC4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_F1C8()
{
  v1 = *(v0 + *(type metadata accessor for AddressRange(0) + 20));

  return v1;
}

uint64_t type metadata accessor for AddressRange(uint64_t a1)
{
  result = qword_46D50;
  if (!qword_46D50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_F254()
{
  v1 = *(v0 + *(type metadata accessor for AddressRange(0) + 24));

  return v1;
}

uint64_t sub_F294()
{
  v1 = *(v0 + *(type metadata accessor for AddressRange(0) + 28));

  return v1;
}

int *sub_F2D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_32AB4();
  result = type metadata accessor for AddressRange(0);
  v15 = (a7 + result[5]);
  *v15 = a1;
  v15[1] = a2;
  v16 = (a7 + result[6]);
  *v16 = a3;
  v16[1] = a4;
  v17 = (a7 + result[7]);
  *v17 = a5;
  v17[1] = a6;
  return result;
}

uint64_t sub_F354@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AddressRange(0);
  v5 = *(v4 - 1);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_32AB4();
  if (!*(a1 + 16))
  {
    goto LABEL_18;
  }

  v8 = sub_26C8(0x7472617473, 0xE500000000000000);
  if ((v9 & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_F670(*(a1 + 56) + 32 * v8, &v27);
  v29 = v27;
  v30 = v28;
  if (*(&v28 + 1))
  {
    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_18:

      goto LABEL_19;
    }

    v10 = v26;
    if (*(a1 + 16))
    {
      v11 = v25;
      v12 = sub_26C8(6581861, 0xE300000000000000);
      if (v13)
      {
        sub_F670(*(a1 + 56) + 32 * v12, &v27);
        v29 = v27;
        v30 = v28;
        if (!*(&v28 + 1))
        {
LABEL_16:

          goto LABEL_14;
        }

        if (swift_dynamicCast())
        {
          v14 = v26;
          if (!*(a1 + 16) || (v15 = v25, v16 = sub_26C8(0x656372756F73, 0xE600000000000000), (v17 & 1) == 0))
          {

            goto LABEL_18;
          }

          sub_F670(*(a1 + 56) + 32 * v16, &v27);

          v29 = v27;
          v30 = v28;
          if (*(&v28 + 1))
          {
            if (swift_dynamicCast())
            {
              v18 = v25;
              v19 = v26;
              v20 = &v7[v4[5]];
              *v20 = v11;
              *(v20 + 1) = v10;
              v21 = &v7[v4[6]];
              *v21 = v15;
              *(v21 + 1) = v14;
              v22 = &v7[v4[7]];
              *v22 = v18;
              *(v22 + 1) = v19;
              sub_F748(v7, a2);
              (*(v5 + 56))(a2, 0, 1, v4);
              return sub_F7AC(v7);
            }

            goto LABEL_15;
          }

          goto LABEL_16;
        }
      }
    }

LABEL_15:

    goto LABEL_18;
  }

LABEL_14:

  sub_F6E0(&v29);
LABEL_19:
  v24 = sub_32AC4();
  (*(*(v24 - 8) + 8))(v7, v24);
  return (*(v5 + 56))(a2, 1, 1, v4);
}

uint64_t sub_F670(uint64_t a1, uint64_t a2)
{
  v4 = sub_279C(&qword_45710, &qword_34278);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_F6E0(uint64_t a1)
{
  v2 = sub_279C(&qword_45710, &qword_34278);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_F748(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AddressRange(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_F7AC(uint64_t a1)
{
  v2 = type metadata accessor for AddressRange(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_F80C()
{
  result = qword_45718;
  if (!qword_45718)
  {
    sub_32AC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_45718);
  }

  return result;
}

uint64_t sub_F878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_32AC4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_F94C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_32AC4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_FA08(uint64_t a1)
{
  result = sub_32AC4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_FA84(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_279C(&qword_457A8, &qword_342E0);
  sub_33114();
  return v5;
}

void (*sub_FB28(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x48uLL);
  }

  v10 = v9;
  *a1 = v9;
  *(v9 + 19) = a5 & 1;
  *(v9 + 48) = a3;
  *(v9 + 56) = a4;
  *v9 = a3;
  *(v9 + 8) = a4;
  *(v9 + 16) = a5 & 1;

  *(v10 + 64) = sub_279C(&qword_457A8, &qword_342E0);
  sub_33114();
  return sub_FBF0;
}

void sub_FBF0(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 17);
  v3 = *(*a1 + 56);
  *(*a1 + 24) = *(*a1 + 48);
  v4 = *(v1 + 19);
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  *(v1 + 18) = v2;
  sub_33124();

  free(v1);
}

uint64_t sub_FC68(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_279C(&qword_457A8, &qword_342E0);
  sub_33134();
  return v5;
}

double sub_FCBC@<D0>(uint64_t a1@<X0>, uint64_t a5@<X8>)
{
  *a5 = sub_32E94();
  *(a5 + 8) = 0;
  *(a5 + 16) = 1;
  v7 = a5 + *(sub_279C(&qword_457B0, &qword_342E8) + 44);
  v8 = sub_32E94();
  v9 = *(a1 + 32);
  *v7 = v8;
  *(v7 + 8) = v9;
  *(v7 + 16) = 0;
  sub_279C(&qword_457B8, &qword_342F0);
  sub_FDA8(a1);
  v10 = sub_32EE4();
  v11 = a5 + *(sub_279C(&qword_457C0, &qword_342F8) + 36);
  *v11 = v10;
  result = 0.0;
  *(v11 + 8) = 0u;
  *(v11 + 24) = 0u;
  *(v11 + 40) = 1;
  return result;
}

uint64_t sub_FDA8(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  LODWORD(v253) = v2;
  v4 = v3;
  v6 = v5;
  v7 = v1;
  v211 = v8;
  v9 = sub_279C(&qword_45800, &qword_34440);
  v10 = __chkstk_darwin(v9 - 8);
  v246 = &v190[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v250 = &v190[-v12];
  v13 = sub_279C(&qword_45808, &qword_34448);
  v14 = __chkstk_darwin(v13 - 8);
  v244 = &v190[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v251 = &v190[-v16];
  v17 = sub_279C(&qword_45810, &qword_34450);
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = &v190[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v23 = &v190[-v22];
  v24 = sub_279C(&qword_45818, &qword_34458);
  v25 = __chkstk_darwin(v24 - 8);
  v243 = &v190[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v25);
  v28 = &v190[-v27];
  *v28 = sub_32E14();
  *(v28 + 1) = 0;
  v28[16] = 1;
  v245 = v28;
  v29 = &v28[*(sub_279C(&qword_45820, &qword_34460) + 44)];
  v30 = swift_allocObject();
  *(v30 + 16) = v7;
  *(v30 + 24) = v6;
  *(v30 + 32) = v4;
  v31 = v253;
  *(v30 + 40) = v253;
  v254 = v7;
  v255 = v6;
  v256 = v4;
  v257 = v31;

  sub_33104();
  v32 = *(v18 + 16);
  v32(v21, v23, v17);
  *v29 = 0;
  v29[8] = 1;
  v33 = sub_279C(&qword_45828, &qword_34468);
  v32(&v29[*(v33 + 48)], v21, v17);
  v34 = *(v18 + 8);
  v34(v23, v17);
  v34(v21, v17);
  v35 = sub_32E14();
  v36 = v251;
  *v251 = v35;
  v36[1] = 0;
  *(v36 + 16) = 1;
  v37 = v36 + *(sub_279C(&qword_45830, &qword_34470) + 44);
  *&v252 = v7;
  sub_119F0(v7, v37);
  v38 = *(v7 + 120);
  v264 = *(v7 + 112);
  v265 = v38;
  v253 = sub_1288C();

  v39 = sub_32FE4();
  v41 = v40;
  LOBYTE(v7) = v42;
  sub_32F44();
  v43 = sub_32FC4();
  v45 = v44;
  LOBYTE(v18) = v46;

  sub_128E0(v39, v41, v7 & 1);

  v47 = sub_32FB4();
  v208 = v48;
  v209 = v47;
  v210 = v49;
  v242 = v50;
  sub_128E0(v43, v45, v18 & 1);

  KeyPath = swift_getKeyPath();
  v51 = sub_32EA4();
  v52 = v252;
  v53 = *(v252 + 24);
  v54 = v250;
  *v250 = v51;
  v54[1] = v53;
  *(v54 + 16) = 0;
  v55 = v54;
  v56 = sub_279C(&qword_45840, &qword_344A8);
  sub_11DC4(v52, (v55 + *(v56 + 44)));
  v57 = sub_32EA4();
  v205 = *(v52 + 16);
  v206 = v57;
  v259 = 0;
  v58 = *(v52 + OBJC_IVAR____TtC14Content_Caches13InfoViewModel_statusIndicatorsTitle + 8);
  v264 = *(v52 + OBJC_IVAR____TtC14Content_Caches13InfoViewModel_statusIndicatorsTitle);
  v265 = v58;

  v59 = sub_32FE4();
  v61 = v60;
  LOBYTE(v7) = v62;
  sub_32F24();
  v63 = sub_32FC4();
  v65 = v64;
  LOBYTE(v18) = v66;

  sub_128E0(v59, v61, v7 & 1);

  v67 = sub_32FB4();
  v239 = v68;
  v240 = v67;
  LOBYTE(v59) = v69;
  v241 = v70;
  sub_128E0(v63, v65, v18 & 1);

  v237 = swift_getKeyPath();
  v238 = sub_32F04();
  v71 = v252;
  sub_32CC4();
  v73 = v72;
  v201 = v74;
  v202 = v72;
  v75 = v74;
  v226 = v76;
  v227 = v77;
  v234 = v59 & 1;
  v263[0] = v59 & 1;
  LOBYTE(v261[0]) = 0;
  v236 = sub_32EF4();
  sub_32CC4();
  v224 = v78;
  v225 = v79;
  v217 = v80;
  v235 = v81;
  LOBYTE(v264) = 0;
  v233 = sub_32E14();
  LOBYTE(v261[0]) = 1;
  v247 = sub_33094();
  v248 = sub_32F64();
  v232 = swift_getKeyPath();
  v264 = sub_33054();
  v249 = sub_12A04();
  v231 = sub_33084();
  v82 = *(v71 + OBJC_IVAR____TtC14Content_Caches13InfoViewModel_reachableLabelTitle + 8);
  v264 = *(v71 + OBJC_IVAR____TtC14Content_Caches13InfoViewModel_reachableLabelTitle);
  v265 = v82;

  v83 = sub_32FE4();
  v85 = v84;
  LOBYTE(v59) = v86;
  sub_32F54();
  v87 = sub_32FC4();
  v89 = v88;
  LOBYTE(v71) = v90;
  v92 = v91;

  sub_128E0(v83, v85, v59 & 1);

  LOBYTE(v83) = v71 & 1;
  LOBYTE(v264) = v71 & 1;
  v93 = v247;

  v94 = v232;

  v95 = v248;

  v96 = v231;

  sub_12948(v87, v89, v83);

  sub_128E0(v87, v89, v83);

  *(&v292 + 1) = *v263;
  DWORD1(v292) = *&v263[3];
  *&v289 = v93;
  *(&v289 + 1) = v94;
  *&v290 = v95;
  *(&v290 + 1) = v96;
  *&v291 = v87;
  *(&v291 + 1) = v89;
  LOBYTE(v292) = v83;
  *(&v292 + 1) = v92;
  v293[0] = v93;
  v293[1] = v94;
  v293[2] = v95;
  v293[3] = v96;
  v293[4] = v87;
  v293[5] = v89;
  v294 = v83;
  *&v295[3] = *&v263[3];
  *v295 = *v263;
  v296 = v92;
  sub_33C4(&v289, &v264, &qword_45860, &qword_344C8);
  sub_93EC(v293, &qword_45860, &qword_344C8);
  *(v283 + 7) = v289;
  *(&v283[1] + 7) = v290;
  *(&v283[2] + 7) = v291;
  *(&v283[3] + 7) = v292;
  LODWORD(v232) = LOBYTE(v261[0]);
  v97 = v252;
  v98 = *(v252 + OBJC_IVAR____TtC14Content_Caches13InfoViewModel_reachableLabelDescription + 8);
  v264 = *(v252 + OBJC_IVAR____TtC14Content_Caches13InfoViewModel_reachableLabelDescription);
  v265 = v98;

  v99 = sub_32FE4();
  v101 = v100;
  LOBYTE(v92) = v102;
  sub_32F64();
  v103 = sub_32FC4();
  v229 = v104;
  v230 = v103;
  LOBYTE(v89) = v105;
  v231 = v106;

  sub_128E0(v99, v101, v92 & 1);

  v223 = swift_getKeyPath();
  v228 = sub_32F04();
  sub_32CC4();
  v108 = v107;
  v110 = v109;
  v203 = v112;
  v204 = v111;
  v222 = v89 & 1;
  LOBYTE(v264) = v89 & 1;
  v263[0] = 0;
  v221 = sub_32E14();
  LOBYTE(v261[0]) = 1;
  v247 = sub_33094();
  v248 = sub_32F64();
  v220 = swift_getKeyPath();
  v264 = sub_33034();
  v249 = sub_33084();
  v113 = *(v97 + OBJC_IVAR____TtC14Content_Caches13InfoViewModel_unreachableLabelTitle + 8);
  v264 = *(v97 + OBJC_IVAR____TtC14Content_Caches13InfoViewModel_unreachableLabelTitle);
  v265 = v113;

  v114 = sub_32FE4();
  v116 = v115;
  LOBYTE(v96) = v117;
  sub_32F54();
  v118 = sub_32FC4();
  v120 = v119;
  LOBYTE(v87) = v121;
  v123 = v122;

  sub_128E0(v114, v116, v96 & 1);

  LOBYTE(v114) = v87 & 1;
  LOBYTE(v264) = v87 & 1;
  v124 = v247;

  v125 = v220;

  v126 = v248;

  v127 = v249;

  sub_12948(v118, v120, v114);

  sub_128E0(v118, v120, v114);

  *(&v300 + 1) = *v263;
  DWORD1(v300) = *&v263[3];
  *&v297 = v124;
  *(&v297 + 1) = v125;
  *&v298 = v126;
  *(&v298 + 1) = v127;
  *&v299 = v118;
  *(&v299 + 1) = v120;
  LOBYTE(v300) = v114;
  *(&v300 + 1) = v123;
  v301[0] = v124;
  v301[1] = v125;
  v301[2] = v126;
  v301[3] = v127;
  v301[4] = v118;
  v301[5] = v120;
  v302 = v114;
  *&v303[3] = *&v263[3];
  *v303 = *v263;
  v304 = v123;
  sub_33C4(&v297, &v264, &qword_45860, &qword_344C8);
  sub_93EC(v301, &qword_45860, &qword_344C8);
  *&v279[7] = v297;
  *&v279[23] = v298;
  *&v279[39] = v299;
  *&v279[55] = v300;
  LODWORD(v220) = LOBYTE(v261[0]);
  v128 = v252;
  v129 = *(v252 + OBJC_IVAR____TtC14Content_Caches13InfoViewModel_unreachableLabelDescription + 8);
  v264 = *(v252 + OBJC_IVAR____TtC14Content_Caches13InfoViewModel_unreachableLabelDescription);
  v265 = v129;

  v130 = sub_32FE4();
  v132 = v131;
  LOBYTE(v126) = v133;
  sub_32F64();
  v213 = sub_32FC4();
  v218 = v134;
  v219 = v135;
  LOBYTE(v118) = v136;

  sub_128E0(v130, v132, v126 & 1);

  v216 = swift_getKeyPath();
  v215 = sub_32F04();
  sub_32CC4();
  v138 = v137;
  v194 = v139;
  v195 = v137;
  v198 = v141;
  v199 = v140;
  v142 = v139;
  v214 = v118 & 1;
  LOBYTE(v264) = v118 & 1;
  v263[0] = 0;
  v200 = sub_32E14();
  v263[0] = 1;
  v143 = sub_33094();
  v248 = sub_32F64();
  v249 = swift_getKeyPath();
  v144 = *(v128 + OBJC_IVAR____TtC14Content_Caches13InfoViewModel_favoredLabelTitle + 8);
  v264 = *(v128 + OBJC_IVAR____TtC14Content_Caches13InfoViewModel_favoredLabelTitle);
  v265 = v144;

  v145 = sub_32FE4();
  v147 = v146;
  LOBYTE(v125) = v148;
  sub_32F54();
  v149 = sub_32FC4();
  v151 = v150;
  LOBYTE(v114) = v152;
  v247 = v153;

  sub_128E0(v145, v147, v125 & 1);

  v273 = v114 & 1;

  v212 = v149;
  v197 = v151;
  sub_12948(v149, v151, v114 & 1);

  sub_128E0(v149, v151, v114 & 1);

  v192 = v143;

  v196 = v263[0];
  LOBYTE(v118) = v273;
  v191 = v273;
  v154 = *(v252 + OBJC_IVAR____TtC14Content_Caches13InfoViewModel_favoredLabelDescription + 8);
  v264 = *(v252 + OBJC_IVAR____TtC14Content_Caches13InfoViewModel_favoredLabelDescription);
  v265 = v154;

  v155 = sub_32FE4();
  v157 = v156;
  LOBYTE(v125) = v158;
  sub_32F64();
  v253 = sub_32FC4();
  v160 = v159;
  v193 = v161;
  v163 = v162;

  sub_128E0(v155, v157, v125 & 1);

  v164 = swift_getKeyPath();
  LOBYTE(v155) = sub_32F04();
  sub_32CC4();
  *v263 = v240;
  *&v263[8] = v239;
  v263[16] = v234;
  *&v263[17] = *v286;
  *&v263[20] = *&v286[3];
  *&v263[24] = v241;
  *&v263[32] = v237;
  v263[40] = 1;
  *&v263[44] = *&v285[3];
  *&v263[41] = *v285;
  v263[48] = v238;
  *&v263[52] = *&v284[3];
  *&v263[49] = *v284;
  *&v263[56] = v73;
  *&v263[64] = v75;
  *&v263[72] = v226;
  *&v263[80] = v227;
  v263[88] = 0;
  *&v263[92] = *&v288[3];
  *&v263[89] = *v288;
  v263[96] = v236;
  *&v263[100] = *&v287[3];
  *&v263[97] = *v287;
  *&v263[104] = v224;
  *&v263[112] = v217;
  *&v263[120] = v225;
  *&v263[128] = v235;
  v263[136] = 0;
  v252 = *v263;
  *&v306[49] = v283[3];
  *&v306[64] = *(&v283[3] + 15);
  DWORD1(v308) = *&v282[3];
  *(&v308 + 1) = *v282;
  HIDWORD(v309) = *&v281[3];
  *(&v309 + 9) = *v281;
  v305[0] = v233;
  v305[1] = 0;
  v306[0] = v232;
  *&v306[1] = v283[0];
  *&v306[17] = v283[1];
  *&v306[33] = v283[2];
  *(&v307 + 1) = v229;
  LOBYTE(v308) = v222;
  *(&v308 + 1) = v231;
  *&v309 = v223;
  BYTE8(v309) = 1;
  LOBYTE(v310) = v228;
  DWORD1(v310) = *&v280[3];
  *(&v310 + 1) = *v280;
  *(&v310 + 1) = v108;
  *&v311[0] = v110;
  v166 = v203;
  v165 = v204;
  *(&v311[0] + 1) = v204;
  *&v311[1] = v203;
  BYTE8(v311[1]) = 0;
  *(&v269[19] + 1) = *(v311 + 9);
  *(&v269[17] + 8) = v310;
  *(&v269[18] + 8) = v311[0];
  *(&v269[16] + 8) = v309;
  v312[0] = v221;
  v312[1] = 0;
  v313[0] = v220;
  *&v313[1] = *v279;
  *&v313[64] = *&v279[63];
  *&v313[49] = *&v279[48];
  *&v313[33] = *&v279[32];
  *&v313[17] = *&v279[16];
  *(&v269[20] + 8) = v221;
  *(&v269[21] + 8) = *v313;
  *(&v269[23] + 8) = *&v313[32];
  *(&v269[24] + 8) = *&v313[48];
  *(&v269[22] + 8) = *&v313[16];
  *&v269[14] = *(&v283[3] + 15);
  *(&v269[25] + 1) = *&v313[64];
  *(&v314 + 1) = v218;
  DWORD1(v315) = *&v278[3];
  *(&v315 + 1) = *v278;
  *(&v315 + 1) = v219;
  *&v316 = v216;
  HIDWORD(v316) = *&v277[3];
  *(&v316 + 9) = *v277;
  DWORD1(v317) = *&v276[3];
  *(&v317 + 1) = *v276;
  *(&v317 + 1) = v138;
  v167 = v199;
  *&v318[0] = v199;
  *(&v318[0] + 1) = v142;
  v168 = v198;
  *&v318[1] = v198;
  BYTE8(v318[1]) = 0;
  *(&v269[30] + 9) = *(v318 + 9);
  DWORD1(v320) = *(v275 + 3);
  *(&v320 + 1) = v275[0];
  DWORD1(v323) = *&v274[3];
  *(&v323 + 1) = *v274;
  DWORD1(v325) = *&v272[3];
  HIDWORD(v326) = *&v271[3];
  DWORD1(v327) = *&v270[3];
  *&v307 = v230;
  *(&v269[7] + 9) = *&v263[121];
  *(&v269[15] + 8) = v308;
  *(&v269[14] + 8) = v307;
  *(&v324 + 1) = v160;
  LOBYTE(v325) = v193 & 1;
  v169 = v163;
  *(&v325 + 1) = v163;
  *&v326 = v164;
  *(&v327 + 1) = v170;
  *&v328[0] = v171;
  *(&v328[0] + 1) = v172;
  *&v328[1] = v173;
  BYTE8(v328[1]) = 0;
  *(&v269[41] + 9) = *(v328 + 9);
  *&v314 = v213;
  LOBYTE(v315) = v214;
  BYTE8(v316) = 1;
  LOBYTE(v317) = v215;
  v174 = v200;
  v319[0] = v200;
  v319[1] = 0;
  LOBYTE(v163) = v196;
  LOBYTE(v320) = v196;
  *(&v320 + 1) = v143;
  *&v321 = v249;
  *(&v321 + 1) = v248;
  *&v322 = v212;
  v175 = v197;
  *(&v322 + 1) = v197;
  LOBYTE(v323) = v118;
  *(&v323 + 1) = v247;
  *(&v325 + 1) = *v272;
  *(&v326 + 9) = *v271;
  *(&v327 + 1) = *v270;
  *&v324 = v253;
  v329[0] = v253;
  v329[1] = v160;
  LOBYTE(v264) = v193 & 1;
  v330 = v193 & 1;
  *&v331[3] = *&v272[3];
  *v331 = *v272;
  v332 = v169;
  v333 = v164;
  *&v335[3] = *&v271[3];
  *v335 = *v271;
  LOBYTE(v327) = v155;
  v336 = v155;
  *&v337[3] = *&v270[3];
  *v337 = *v270;
  v269[3] = *&v263[48];
  v269[2] = *&v263[32];
  v269[0] = *v263;
  v269[1] = *&v263[16];
  v269[7] = *&v263[112];
  v269[6] = *&v263[96];
  v269[4] = *&v263[64];
  v269[5] = *&v263[80];
  v269[9] = v233;
  v269[10] = *v306;
  v269[13] = *&v306[48];
  v269[12] = *&v306[32];
  v269[11] = *&v306[16];
  v269[27] = v315;
  v269[26] = v314;
  v269[29] = v317;
  v269[28] = v316;
  v269[30] = v318[0];
  v269[32] = v200;
  v269[36] = v323;
  v269[35] = v322;
  v269[34] = v321;
  v269[33] = v320;
  BYTE8(v326) = 1;
  v269[38] = v325;
  v269[37] = v324;
  v269[41] = v328[0];
  v269[40] = v327;
  v269[39] = v326;
  v268 = 1;
  v334 = 1;
  v338 = v170;
  v339 = v171;
  v340 = v172;
  v341 = v173;
  v342 = 0;
  sub_33C4(v263, &v264, &qword_45868, &qword_344D0);
  sub_33C4(v305, &v264, &qword_45870, &qword_344D8);
  sub_33C4(&v307, &v264, &qword_45878, &qword_344E0);
  sub_33C4(v312, &v264, &qword_45870, &qword_344D8);
  sub_33C4(&v314, &v264, &qword_45878, &qword_344E0);
  sub_33C4(v319, &v264, &qword_45880, &qword_344E8);
  sub_33C4(&v324, &v264, &qword_45878, &qword_344E0);
  sub_93EC(v329, &qword_45878, &qword_344E0);
  v343[0] = v174;
  v343[1] = 0;
  v344 = v163;
  *v345 = v275[0];
  *&v345[3] = *(v275 + 3);
  v346 = v192;
  v347 = v249;
  v348 = v248;
  v349 = v212;
  v350 = v175;
  v351 = v191;
  *v352 = *v274;
  *&v352[3] = *&v274[3];
  v353 = v247;
  sub_93EC(v343, &qword_45880, &qword_344E8);
  v260[0] = v213;
  v260[1] = v218;
  LOBYTE(v260[2]) = v214;
  *(&v260[2] + 1) = *v278;
  HIDWORD(v260[2]) = *&v278[3];
  v260[3] = v219;
  v260[4] = v216;
  LOBYTE(v260[5]) = 1;
  *(&v260[5] + 1) = *v277;
  HIDWORD(v260[5]) = *&v277[3];
  LOBYTE(v260[6]) = v215;
  *(&v260[6] + 1) = *v276;
  HIDWORD(v260[6]) = *&v276[3];
  v260[7] = v195;
  v260[8] = v167;
  v260[9] = v194;
  v260[10] = v168;
  LOBYTE(v260[11]) = 0;
  sub_93EC(v260, &qword_45878, &qword_344E0);
  v354[0] = v221;
  v354[1] = 0;
  v355 = v220;
  v357 = *&v279[16];
  v358 = *&v279[32];
  *v359 = *&v279[48];
  *&v359[15] = *&v279[63];
  v356 = *v279;
  sub_93EC(v354, &qword_45870, &qword_344D8);
  v261[0] = v230;
  v261[1] = v229;
  LOBYTE(v261[2]) = v222;
  *(&v261[2] + 1) = *v282;
  HIDWORD(v261[2]) = *&v282[3];
  v261[3] = v231;
  v261[4] = v223;
  LOBYTE(v261[5]) = 1;
  *(&v261[5] + 1) = *v281;
  HIDWORD(v261[5]) = *&v281[3];
  LOBYTE(v261[6]) = v228;
  *(&v261[6] + 1) = *v280;
  HIDWORD(v261[6]) = *&v280[3];
  v261[7] = v108;
  v261[8] = v110;
  v261[9] = v165;
  v261[10] = v166;
  LOBYTE(v261[11]) = 0;
  sub_93EC(v261, &qword_45878, &qword_344E0);
  v360[0] = v233;
  v360[1] = 0;
  v361 = v232;
  v363 = v283[1];
  v364 = v283[2];
  v365[0] = v283[3];
  *(v365 + 15) = *(&v283[3] + 15);
  v362 = v283[0];
  sub_93EC(v360, &qword_45870, &qword_344D8);
  v264 = v240;
  v265 = v239;
  v266 = v234;
  v267[0] = *v286;
  *(v267 + 3) = *&v286[3];
  *(&v267[1] + 3) = v241;
  *(&v267[3] + 3) = v237;
  HIBYTE(v267[5]) = 1;
  v267[6] = *v285;
  *(&v267[6] + 3) = *&v285[3];
  HIBYTE(v267[7]) = v238;
  v267[8] = *v284;
  *(&v267[8] + 3) = *&v284[3];
  *(&v267[9] + 3) = v202;
  *(&v267[11] + 3) = v201;
  *(&v267[13] + 3) = v226;
  *(&v267[15] + 3) = v227;
  HIBYTE(v267[17]) = 0;
  *(&v267[18] + 3) = *&v288[3];
  v267[18] = *v288;
  HIBYTE(v267[19]) = v236;
  *(&v267[20] + 3) = *&v287[3];
  v267[20] = *v287;
  *(&v267[21] + 3) = v224;
  *(&v267[23] + 3) = v217;
  *(&v267[25] + 3) = v225;
  *(&v267[27] + 3) = v235;
  HIBYTE(v267[29]) = 0;
  sub_93EC(&v264, &qword_45868, &qword_344D0);
  memcpy(v260, v269, 0x2B0uLL);
  v260[86] = 0;
  LOBYTE(v260[87]) = 1;
  memcpy(v261, v269, 0x2B0uLL);
  v261[86] = 0;
  v262 = 1;
  sub_33C4(v260, &v264, &qword_45848, &qword_344B0);
  sub_93EC(v261, &qword_45848, &qword_344B0);
  memcpy(&v258[7], v260, 0x2B9uLL);
  LODWORD(v253) = v259;
  v176 = v243;
  sub_33C4(v245, v243, &qword_45818, &qword_34458);
  v177 = v244;
  sub_33C4(v251, v244, &qword_45808, &qword_34448);
  v178 = v246;
  sub_33C4(v250, v246, &qword_45800, &qword_34440);
  v179 = v176;
  v180 = v211;
  sub_33C4(v179, v211, &qword_45818, &qword_34458);
  v181 = sub_279C(&qword_45850, &qword_344B8);
  sub_33C4(v177, v180 + v181[12], &qword_45808, &qword_34448);
  v182 = v180 + v181[16];
  v183 = v208;
  v184 = v209;
  *v182 = v209;
  *(v182 + 8) = v183;
  LODWORD(v177) = v210 & 1;
  *(v182 + 16) = v177;
  LODWORD(v252) = v177;
  v185 = KeyPath;
  *(v182 + 24) = v242;
  *(v182 + 32) = v185;
  *(v182 + 40) = 1;
  sub_33C4(v178, v180 + v181[20], &qword_45800, &qword_34440);
  v186 = v181[24];
  v187 = v205;
  v188 = v206;
  *v263 = v206;
  *&v263[8] = v205;
  v263[16] = v253;
  memcpy(&v263[17], v258, 0x2C0uLL);
  memcpy((v180 + v186), v263, 0x2D1uLL);
  sub_12948(v184, v183, v177);

  sub_33C4(v263, &v264, &qword_45858, &qword_344C0);
  sub_93EC(v250, &qword_45800, &qword_34440);
  sub_93EC(v251, &qword_45808, &qword_34448);
  sub_93EC(v245, &qword_45818, &qword_34458);
  v264 = v188;
  v265 = v187;
  v266 = v253;
  memcpy(v267, v258, sizeof(v267));
  sub_93EC(&v264, &qword_45858, &qword_344C0);
  sub_93EC(v246, &qword_45800, &qword_34440);
  sub_128E0(v184, v183, v252);

  sub_93EC(v244, &qword_45808, &qword_34448);
  return sub_93EC(v243, &qword_45818, &qword_34458);
}

uint64_t sub_119F0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_330A4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 64);
  v9 = *(sub_32D64() + 20);
  v10 = enum case for RoundedCornerStyle.continuous(_:);
  v11 = sub_32E84();
  (*(*(v11 - 8) + 104))(&a2[v9], v10, v11);
  *a2 = v8;
  *(a2 + 1) = v8;
  v12 = sub_33044();
  v13 = sub_279C(&qword_458A8, &qword_34568);
  *&a2[*(v13 + 52)] = v12;
  *&a2[*(v13 + 56)] = 256;
  sub_33184();
  sub_32D04();
  v14 = &a2[*(sub_279C(&qword_458B0, &qword_34570) + 36)];
  v41 = a2;
  v15 = v46;
  *v14 = v45;
  *(v14 + 1) = v15;
  *(v14 + 2) = v47;
  LOBYTE(v12) = sub_32EE4();
  sub_32CC4();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = &a2[*(sub_279C(&qword_458B8, &qword_34578) + 36)];
  *v24 = v12;
  *(v24 + 1) = v17;
  *(v24 + 2) = v19;
  *(v24 + 3) = v21;
  *(v24 + 4) = v23;
  v24[40] = 0;
  sub_33094();
  (*(v5 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v4);
  v25 = sub_330B4();

  (*(v5 + 8))(v7, v4);
  sub_33184();
  sub_32D04();
  v26 = v48;
  LOBYTE(v9) = v49;
  v27 = v50;
  v28 = v51;
  v30 = v52;
  v29 = v53;
  v31 = sub_33184();
  v33 = v32;
  v44 = v9;
  v43 = v28;
  *&v54 = v25;
  *(&v54 + 1) = v26;
  LOBYTE(v55) = v9;
  *(&v55 + 1) = v27;
  LOBYTE(v56) = v28;
  *(&v56 + 1) = v30;
  *&v57 = v29;
  *(&v57 + 1) = v31;
  v58 = v32;
  v34 = sub_279C(&qword_458C0, &qword_34580);
  v35 = &v41[*(v34 + 36)];
  v36 = v57;
  *(v35 + 2) = v56;
  *(v35 + 3) = v36;
  *(v35 + 8) = v58;
  v37 = v55;
  *v35 = v54;
  *(v35 + 1) = v37;
  v59[0] = v25;
  v59[1] = v26;
  v60 = v9;
  v61 = v27;
  v62 = v28;
  v63 = v30;
  v64 = v29;
  v65 = v31;
  v66 = v33;
  sub_33C4(&v54, v42, &qword_458C8, &qword_34588);
  sub_93EC(v59, &qword_458C8, &qword_34588);
  v42[0] = sub_33064();
  sub_12A04();
  v38 = sub_33084();
  result = sub_279C(&qword_458D0, &unk_34590);
  *&v41[*(result + 36)] = v38;
  return result;
}

uint64_t sub_11DC4@<X0>(char *a1@<X0>, _OWORD *a2@<X8>)
{
  v48 = a2;
  v47 = sub_32974();
  v45 = *(v47 - 8);
  __chkstk_darwin(v47);
  v44 = &v37[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_279C(&qword_45890, &qword_34520);
  v5 = v4 - 8;
  v6 = __chkstk_darwin(v4);
  v46 = &v37[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v9 = &v37[-v8];
  v10 = *(a1 + 17);
  v54 = *(a1 + 16);
  v55 = v10;
  v40 = sub_1288C();

  v11 = sub_32FE4();
  v13 = v12;
  v15 = v14;
  sub_32F34();
  v42 = sub_32FC4();
  v41 = v16;
  v18 = v17;
  v43 = v19;

  sub_128E0(v11, v13, v15 & 1);

  KeyPath = swift_getKeyPath();
  v39 = KeyPath;
  v21 = swift_getKeyPath();
  LOBYTE(v54) = v18 & 1;
  v38 = v18 & 1;
  v22 = *(a1 + 19);
  v54 = *(a1 + 18);
  v55 = v22;
  (*(v45 + 16))(v44, &a1[OBJC_IVAR____TtC14Content_Caches13InfoViewModel_moreInfoURL], v47);

  sub_32F74();
  v23 = sub_32F54();
  v24 = swift_getKeyPath();
  v25 = &v9[*(v5 + 44)];
  *v25 = v24;
  v25[1] = v23;
  v26 = v46;
  sub_33C4(v9, v46, &qword_45890, &qword_34520);
  v27 = v42;
  v28 = v41;
  *&v51 = v42;
  *(&v51 + 1) = v41;
  LOBYTE(v52) = v18 & 1;
  *(&v52 + 1) = *v50;
  DWORD1(v52) = *&v50[3];
  v29 = v43;
  *(&v52 + 1) = v43;
  *v53 = KeyPath;
  v53[8] = 0;
  *&v53[12] = *&v49[3];
  *&v53[9] = *v49;
  *&v53[16] = v21;
  v53[24] = 1;
  v30 = v51;
  v31 = v52;
  v32 = *v53;
  v33 = v48;
  *(v48 + 41) = *&v53[9];
  v33[1] = v31;
  v33[2] = v32;
  *v33 = v30;
  v34 = v33;
  v35 = sub_279C(&qword_45898, &qword_34558);
  sub_33C4(v26, v34 + *(v35 + 48), &qword_45890, &qword_34520);
  sub_33C4(&v51, &v54, &qword_458A0, &qword_34560);
  sub_93EC(v9, &qword_45890, &qword_34520);
  sub_93EC(v26, &qword_45890, &qword_34520);
  v54 = v27;
  v55 = v28;
  v56 = v38;
  *v57 = *v50;
  *&v57[3] = *&v50[3];
  v58 = v29;
  v59 = v39;
  v60 = 0;
  *v61 = *v49;
  *&v61[3] = *&v49[3];
  v62 = v21;
  v63 = 1;
  return sub_93EC(&v54, &qword_458A0, &qword_34560);
}

double sub_12204@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  *a1 = sub_32E94();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v4 = a1 + *(sub_279C(&qword_457B0, &qword_342E8) + 44);
  v5 = sub_32E94();
  v6 = *(v3 + 32);
  *v4 = v5;
  *(v4 + 8) = v6;
  *(v4 + 16) = 0;
  sub_279C(&qword_457B8, &qword_342F0);
  sub_FDA8(v3);
  v7 = sub_32EE4();
  v8 = a1 + *(sub_279C(&qword_457C0, &qword_342F8) + 36);
  *v8 = v7;
  result = 0.0;
  *(v8 + 8) = 0u;
  *(v8 + 24) = 0u;
  *(v8 + 40) = 1;
  return result;
}

uint64_t sub_122EC@<X0>(uint64_t a1@<X8>)
{
  LOBYTE(v4) = 1;
  sub_330C4();
  type metadata accessor for InfoViewModel(0);
  v2 = sub_30E5C();
  sub_279C(&qword_457C8, &qword_34300);
  sub_330F4();

  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  return result;
}

unint64_t sub_123B8()
{
  result = qword_457D0;
  if (!qword_457D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_457D0);
  }

  return result;
}

uint64_t sub_1242C(uint64_t a1)
{
  v2 = sub_126D0();

  return static PreviewProvider._previews.getter(a1, v2);
}

uint64_t sub_12478(uint64_t a1)
{
  v2 = sub_126D0();

  return static PreviewProvider._platform.getter(a1, v2);
}

__n128 sub_124C4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_124D8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_12520(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_12588()
{
  result = qword_457D8;
  if (!qword_457D8)
  {
    sub_8BD0(&qword_457C0, &qword_342F8);
    sub_12614();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_457D8);
  }

  return result;
}

unint64_t sub_12614()
{
  result = qword_457E0;
  if (!qword_457E0)
  {
    sub_8BD0(&qword_457E8, &qword_34438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_457E0);
  }

  return result;
}

unint64_t sub_1267C()
{
  result = qword_457F0;
  if (!qword_457F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_457F0);
  }

  return result;
}

unint64_t sub_126D0()
{
  result = qword_457F8;
  if (!qword_457F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_457F8);
  }

  return result;
}

uint64_t sub_12724()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_1276C()
{

  sub_279C(&qword_457A8, &qword_342E0);
  sub_33114();
  sub_33124();
}

uint64_t sub_1281C@<X0>(uint64_t a2@<X8>)
{
  sub_1288C();

  result = sub_32FE4();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

unint64_t sub_1288C()
{
  result = qword_45838;
  if (!qword_45838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_45838);
  }

  return result;
}

uint64_t sub_128E0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_128F0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_32D94();
  *a1 = result & 1;
  return result;
}

uint64_t sub_12948(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_12958@<X0>(_BYTE *a1@<X8>)
{
  result = sub_32DB4();
  *a1 = result;
  return result;
}

uint64_t sub_129AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_32DD4();
  *a1 = result;
  return result;
}

unint64_t sub_12A04()
{
  result = qword_45888;
  if (!qword_45888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_45888);
  }

  return result;
}

uint64_t sub_12A64@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_279C(&qword_458D8, &qword_345B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v22 - v5;
  *v6 = sub_32E14();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v7 = sub_279C(&qword_458E0, &qword_345B8);
  sub_12C24(v2, &v6[*(v7 + 44)]);
  sub_279C(&qword_458E8, &qword_345C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_345A0;
  v9 = sub_32EF4();
  *(inited + 32) = v9;
  v10 = sub_32F04();
  *(inited + 33) = v10;
  v11 = sub_32F14();
  sub_32F14();
  if (sub_32F14() != v9)
  {
    v11 = sub_32F14();
  }

  sub_32F14();
  if (sub_32F14() != v10)
  {
    v11 = sub_32F14();
  }

  sub_32CC4();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_130EC(v6, a1);
  result = sub_279C(&qword_458F0, &qword_345C8);
  v21 = a1 + *(result + 36);
  *v21 = v11;
  *(v21 + 8) = v13;
  *(v21 + 16) = v15;
  *(v21 + 24) = v17;
  *(v21 + 32) = v19;
  *(v21 + 40) = 0;
  return result;
}

uint64_t sub_12C24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = sub_279C(&qword_459A0, &qword_346F0) - 8;
  v4 = __chkstk_darwin(v61);
  v72 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v54 - v6;
  v8 = type metadata accessor for AddressRange(0);
  v9 = (a1 + v8[5]);
  v10 = v9[1];
  v74 = *v9;
  v75 = v10;
  sub_1288C();

  v11 = sub_32FE4();
  v63 = v12;
  v64 = v11;
  v60 = v13;
  v65 = v14;
  KeyPath = swift_getKeyPath();
  sub_32E64();
  v15 = sub_32FD4();
  v58 = v16;
  v59 = v15;
  v57 = v17;
  v70 = v18;
  v71 = swift_getKeyPath();
  v19 = (a1 + v8[6]);
  v20 = v19[1];
  v74 = *v19;
  v75 = v20;

  v21 = sub_32FE4();
  v66 = v22;
  v67 = v21;
  v56 = v23;
  v69 = v24;
  v68 = swift_getKeyPath();
  v25 = (a1 + v8[7]);
  v26 = v25[1];
  v74 = *v25;
  v75 = v26;

  v27 = sub_32FE4();
  v29 = v28;
  LOBYTE(a1) = v30;
  v54 = v31;
  v32 = &v7[*(sub_279C(&qword_459A8, &qword_34728) + 36)];
  v33 = *(sub_279C(&qword_459B0, &qword_34730) + 28);
  v34 = enum case for Text.Case.uppercase(_:);
  v35 = sub_32FA4();
  v36 = *(v35 - 8);
  (*(v36 + 104))(v32 + v33, v34, v35);
  (*(v36 + 56))(v32 + v33, 0, 1, v35);
  *v32 = swift_getKeyPath();
  *v7 = v27;
  *(v7 + 1) = v29;
  v7[16] = a1 & 1;
  *(v7 + 3) = v54;
  LODWORD(v36) = sub_32ED4();
  *&v7[*(sub_279C(&qword_459B8, &qword_34768) + 36)] = v36;
  v37 = swift_getKeyPath();
  v38 = *(v61 + 44);
  v55 = v7;
  v39 = &v7[v38];
  *v39 = v37;
  v39[8] = 1;
  LOBYTE(v33) = v60 & 1;
  LOBYTE(v74) = v60 & 1;
  LOBYTE(v27) = v57 & 1;
  v73 = v57 & 1;
  v40 = v72;
  sub_33C4(v7, v72, &qword_459A0, &qword_346F0);
  v42 = v63;
  v41 = v64;
  *a2 = v64;
  *(a2 + 8) = v42;
  *(a2 + 16) = v33;
  v43 = KeyPath;
  *(a2 + 24) = v65;
  *(a2 + 32) = v43;
  *(a2 + 40) = 1;
  v45 = v58;
  v44 = v59;
  *(a2 + 48) = v59;
  *(a2 + 56) = v45;
  *(a2 + 64) = v27;
  v46 = v71;
  *(a2 + 72) = v70;
  *(a2 + 80) = v46;
  *(a2 + 88) = 1;
  v47 = v66;
  *(a2 + 96) = v67;
  *(a2 + 104) = v47;
  LODWORD(v61) = v56 & 1;
  *(a2 + 112) = v56 & 1;
  v48 = v68;
  *(a2 + 120) = v69;
  *(a2 + 128) = v48;
  *(a2 + 136) = 1;
  *(a2 + 144) = 0;
  *(a2 + 152) = 1;
  v49 = sub_279C(&qword_459C0, &qword_34770);
  sub_33C4(v40, a2 + *(v49 + 96), &qword_459A0, &qword_346F0);
  sub_12948(v41, v42, v33);

  v50 = v44;
  sub_12948(v44, v45, v27);

  v52 = v66;
  v51 = v67;
  LOBYTE(v44) = v61;
  sub_12948(v67, v66, v61);

  sub_13774(v55);
  sub_13774(v72);
  sub_128E0(v51, v52, v44);

  sub_128E0(v50, v45, v73);

  sub_128E0(v64, v63, v74);
}

uint64_t sub_130EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_279C(&qword_458D8, &qword_345B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_13164(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AddressRange(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_13230()
{
  result = qword_458F8;
  if (!qword_458F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_458F8);
  }

  return result;
}

uint64_t sub_132A0(uint64_t a1)
{
  v2 = sub_13654();

  return static PreviewProvider._previews.getter(a1, v2);
}

uint64_t sub_132EC(uint64_t a1)
{
  v2 = sub_13654();

  return static PreviewProvider._platform.getter(a1, v2);
}

uint64_t sub_1334C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AddressRange(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_133CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AddressRange(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for AddressRangeItemView(uint64_t a1)
{
  result = qword_47080;
  if (!qword_47080)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_13488(uint64_t a1)
{
  result = type metadata accessor for AddressRange(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_13508()
{
  result = qword_45980;
  if (!qword_45980)
  {
    sub_8BD0(&qword_458F0, &qword_345C8);
    sub_13594();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_45980);
  }

  return result;
}

unint64_t sub_13594()
{
  result = qword_45988;
  if (!qword_45988)
  {
    sub_8BD0(&qword_458D8, &qword_345B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_45988);
  }

  return result;
}

unint64_t sub_135FC()
{
  result = qword_45990;
  if (!qword_45990)
  {
    type metadata accessor for AddressRangeItemView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_45990);
  }

  return result;
}

unint64_t sub_13654()
{
  result = qword_45998;
  if (!qword_45998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_45998);
  }

  return result;
}

uint64_t sub_136CC(uint64_t a1)
{
  v2 = sub_279C(&qword_459C8, &qword_34778);
  __chkstk_darwin(v2 - 8);
  sub_33C4(a1, &v5 - v3, &qword_459C8, &qword_34778);
  return sub_32E04();
}

uint64_t sub_13774(uint64_t a1)
{
  v2 = sub_279C(&qword_459A0, &qword_346F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1382C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 504))();

  swift_beginAccess();
  return sub_35E4(v1 + 16, a1);
}

uint64_t sub_13964(void *a1)
{
  swift_getKeyPath();
  v4 = v1;
  v5 = a1;
  (*(*v1 + 512))();

  return sub_3364(a1);
}

uint64_t (*sub_13A0C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 504))(KeyPath);

  v4[5] = OBJC_IVAR____TtC14Content_Caches21CacheLocatorViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_15F28(&qword_459D0, type metadata accessor for CacheLocatorViewModel, &unk_348A0);
  sub_32B44();

  v4[7] = sub_137DC(v4);
  return sub_13B5C;
}

void sub_13B5C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_32B34();

  free(v1);
}

uint64_t type metadata accessor for CacheLocatorViewModel(uint64_t a1)
{
  result = qword_47160;
  if (!qword_47160)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_13C3C()
{
  swift_getKeyPath();
  (*(*v0 + 504))();

  swift_beginAccess();
}

uint64_t sub_13CC0@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 504))();

  swift_beginAccess();
  *a2 = v3[7];
}

uint64_t sub_13D84(unint64_t a1)
{
  swift_beginAccess();

  v4 = sub_8590(v3, a1);

  if (v4)
  {
    v1[7] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v7 = __chkstk_darwin(KeyPath);
    v8 = v1;
    v9 = a1;
    (*(*v1 + 512))(v7, sub_15EC4);
  }
}

uint64_t sub_13EAC()
{
  swift_getKeyPath();
  (*(*v0 + 504))();
}

uint64_t sub_13F20@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 312))();
  *a2 = result;
  return result;
}

uint64_t sub_13FCC()
{
  swift_getKeyPath();
  (*(*v0 + 504))();
}

uint64_t sub_14040@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 360))();
  *a2 = result;
  return result;
}

uint64_t sub_140EC()
{
  swift_getKeyPath();
  (*(*v0 + 504))();
}

uint64_t sub_14160@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 408))();
  *a2 = result;
  return result;
}

uint64_t sub_141D4(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *a1;
  v8 = *a2;
  KeyPath = swift_getKeyPath();
  v11[2] = v8;
  v11[3] = v7;
  (*(*v8 + 512))(KeyPath, a6, v11, &type metadata for ()[8]);
}

uint64_t sub_14294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  (*(*v3 + 512))();
}

uint64_t sub_1434C()
{
  swift_getKeyPath();
  (*(*v0 + 504))();

  return v0[128];
}

uint64_t sub_143B0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 456))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_14430(uint64_t result)
{
  if (v1[128] == (result & 1))
  {
    v1[128] = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v3 = __chkstk_darwin(KeyPath);
    (*(*v1 + 512))(v3, sub_14518);
  }

  return result;
}

uint64_t sub_14528(void *a1)
{
  v2 = swift_allocObject();
  sub_14568(a1);
  return v2;
}

uint64_t sub_14568(void *a1)
{
  v3 = sub_279C(&qword_459D8, &qword_34848);
  v4 = *(v3 - 8);
  v58 = v3;
  v59 = v4;
  __chkstk_darwin(v3);
  v57 = v44 - v5;
  v6 = sub_279C(&qword_451C8, &qword_34850);
  __chkstk_darwin(v6 - 8);
  v8 = v44 - v7;
  v9 = sub_279C(&qword_459E0, &qword_34858);
  v10 = *(v9 - 8);
  v55 = v9;
  v56 = v10;
  __chkstk_darwin(v9);
  v54 = v44 - v11;
  v12 = sub_32AE4();
  __chkstk_darwin(v12 - 8);
  v13 = sub_33224();
  __chkstk_darwin(v13 - 8);
  *(v1 + 56) = _swiftEmptyArrayStorage;
  v61 = v1 + 56;
  *(v1 + 104) = _swiftEmptyArrayStorage;
  *(v1 + 112) = _swiftEmptyArrayStorage;
  *(v1 + 120) = _swiftEmptyArrayStorage;
  *(v1 + 128) = 0;
  sub_33214();
  v14 = sub_2A72C();
  swift_beginAccess();
  v15 = *v14;
  sub_32AD4();
  *(v1 + 136) = sub_33284();
  *(v1 + 144) = v16;
  sub_33214();
  swift_beginAccess();
  v17 = *v14;
  sub_32AD4();
  *(v1 + 152) = sub_33284();
  *(v1 + 160) = v18;
  sub_33214();
  swift_beginAccess();
  v19 = *v14;
  sub_32AD4();
  *(v1 + 168) = sub_33284();
  *(v1 + 176) = v20;
  sub_33214();
  swift_beginAccess();
  v21 = *v14;
  sub_32AD4();
  *(v1 + 184) = sub_33284();
  *(v1 + 192) = v22;
  sub_33214();
  swift_beginAccess();
  v23 = *v14;
  sub_32AD4();
  *(v1 + 200) = sub_33284();
  *(v1 + 208) = v24;
  sub_33214();
  swift_beginAccess();
  v25 = *v14;
  sub_32AD4();
  *(v1 + 216) = sub_33284();
  *(v1 + 224) = v26;
  sub_32B54();
  sub_35E4(a1, v1 + 16);
  sub_35E4(a1, v62);
  sub_347C(v62, v63);
  v27 = v63[1];
  *(v1 + 64) = v63[0];
  *(v1 + 80) = v27;
  *(v1 + 96) = v64;
  v60 = a1;
  v28 = a1[3];
  v29 = a1[4];
  sub_3294(a1, v28);
  *&v63[0] = (*(v29 + 24))(v28, v29);
  v46 = sub_1507C();
  v30 = sub_33474();
  *&v62[0] = v30;
  v52 = sub_33454();
  v31 = *(v52 - 8);
  v51 = *(v31 + 56);
  v53 = v31 + 56;
  v45 = v8;
  v51(v8, 1, 1, v52);
  sub_279C(&qword_459E8, &qword_34860);
  v50 = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_8F50(&qword_459F0, &qword_459E8, &qword_34860, &protocol conformance descriptor for AnyPublisher<A, B>);
  v48 = sub_15F28(&qword_451F0, sub_1507C, &protocol conformance descriptor for OS_dispatch_queue);
  v32 = v54;
  sub_32C94();
  sub_150C8(v8);

  swift_getKeyPath();
  *&v63[0] = v1;
  v49 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_8F50(&qword_459F8, &qword_459E0, &qword_34858, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v33 = v55;
  sub_32CB4();

  v56[1](v32, v33);
  KeyPath = swift_getKeyPath();
  v35 = *(*v1 + 504);
  v55 = *v1 + 504;
  v56 = v35;
  (v35)(KeyPath);

  v36 = OBJC_IVAR____TtC14Content_Caches21CacheLocatorViewModel___observationRegistrar;
  *&v63[0] = v1;
  swift_getKeyPath();
  v44[0] = sub_15F28(&qword_459D0, type metadata accessor for CacheLocatorViewModel, &unk_348A0);
  v44[1] = v36;
  sub_32B44();

  swift_beginAccess();
  v54 = sub_279C(&qword_45200, &qword_34890);
  v47 = sub_8F50(&qword_45208, &qword_45200, &qword_34890, &protocol conformance descriptor for [A]);
  sub_32BE4();
  swift_endAccess();

  *&v63[0] = v1;
  swift_getKeyPath();
  sub_32B34();

  v38 = v60[3];
  v37 = v60[4];
  sub_3294(v60, v38);
  *&v63[0] = (*(v37 + 16))(v38, v37);
  v39 = sub_33474();
  *&v62[0] = v39;
  v40 = v45;
  v51(v45, 1, 1, v52);
  sub_279C(&qword_45A00, &qword_34898);
  sub_8F50(&qword_45A08, &qword_45A00, &qword_34898, v50);
  v41 = v57;
  sub_32C94();
  sub_150C8(v40);

  swift_allocObject();
  swift_weakInit();
  sub_8F50(&qword_45A10, &qword_459D8, &qword_34848, v49);
  v42 = v58;
  sub_32CA4();

  (*(v59 + 8))(v41, v42);
  swift_getKeyPath();
  (v56)();

  *&v63[0] = v1;
  swift_getKeyPath();
  sub_32B44();

  swift_beginAccess();
  sub_32BE4();
  swift_endAccess();

  *&v63[0] = v1;
  swift_getKeyPath();
  sub_32B34();

  sub_3364(v60);
  return v1;
}

unint64_t sub_1507C()
{
  result = qword_451D8;
  if (!qword_451D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_451D8);
  }

  return result;
}

uint64_t sub_150C8(uint64_t a1)
{
  v2 = sub_279C(&qword_451C8, &qword_34850);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_15130()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_15198()
{
  v0 = sub_32AE4();
  __chkstk_darwin(v0 - 8);
  v1 = sub_33224();
  __chkstk_darwin(v1 - 8);
  sub_33214();
  v2 = sub_2A72C();
  swift_beginAccess();
  v3 = *v2;
  sub_32AD4();
  return sub_33284();
}

uint64_t sub_152BC()
{
  v0 = sub_32AE4();
  __chkstk_darwin(v0 - 8);
  v1 = sub_33224();
  __chkstk_darwin(v1 - 8);
  sub_33214();
  v2 = sub_2A72C();
  swift_beginAccess();
  v3 = *v2;
  sub_32AD4();
  return sub_33284();
}

uint64_t sub_153E0()
{
  v0 = sub_32AE4();
  __chkstk_darwin(v0 - 8);
  v1 = sub_33224();
  __chkstk_darwin(v1 - 8);
  sub_33214();
  v2 = sub_2A72C();
  swift_beginAccess();
  v3 = *v2;
  sub_32AD4();
  return sub_33284();
}

uint64_t sub_15564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_32AE4();
  __chkstk_darwin(v4 - 8);
  v5 = sub_33224();
  __chkstk_darwin(v5 - 8);
  sub_33214();
  v6 = sub_2A72C();
  swift_beginAccess();
  v7 = *v6;
  sub_32AD4();
  return sub_33284();
}

uint64_t sub_1568C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    if (v2)
    {
      KeyPath = swift_getKeyPath();
      v8 = __chkstk_darwin(KeyPath);
      v14 = v6;
      v15 = v2;
      v9 = *(*v6 + 512);
      v9(v8, sub_16028);

      v10 = swift_getKeyPath();
      v11 = __chkstk_darwin(v10);
      v14 = v6;
      v15 = v3;
      v9(v11, sub_16040);

      v12 = swift_getKeyPath();
      v13 = __chkstk_darwin(v12);
      v14 = v6;
      v15 = v4;
      v9(v13, sub_16058);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_15890(uint64_t a1)
{
  v3 = type metadata accessor for CachingServer(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v8[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ServerViewModel(0);
  (*(*v1 + 216))(v8);
  sub_15954(a1, v5);
  return sub_503C(v8, v5);
}

uint64_t sub_15954(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CachingServer(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_15A20()
{
  v1 = *(v0 + 136);

  return v1;
}

uint64_t sub_15A50()
{
  v1 = *(v0 + 152);

  return v1;
}

uint64_t sub_15A80()
{
  v1 = *(v0 + 168);

  return v1;
}

uint64_t sub_15AB0()
{
  v1 = *(v0 + 184);

  return v1;
}

uint64_t sub_15AE0()
{
  v1 = *(v0 + 200);

  return v1;
}

uint64_t sub_15B10()
{
  v1 = *(v0 + 216);

  return v1;
}

char *sub_15C80()
{
  sub_3364((v0 + 16));

  sub_15D40(v0 + 64);

  v1 = OBJC_IVAR____TtC14Content_Caches21CacheLocatorViewModel___observationRegistrar;
  v2 = sub_32B64();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_15D94()
{
  sub_15C80();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_15DF4(uint64_t a1)
{
  result = sub_32B64();
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

uint64_t sub_15EC4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  *(v2 + 56) = v1;
}

uint64_t sub_15F28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_15F70()
{
  *(*(v0 + 16) + 120) = *(v0 + 24);
}

uint64_t sub_15FAC()
{
  *(*(v0 + 16) + 112) = *(v0 + 24);
}

uint64_t sub_15FE8()
{
  *(*(v0 + 16) + 104) = *(v0 + 24);
}

void sub_16364(uint64_t a2@<X8>)
{
  v32 = sub_32E14();
  v42 = 1;
  v3 = type metadata accessor for CachingServer(0);
  v4 = *(v2 + v3[11]);
  v5 = sub_33094();
  v6 = sub_32F64();
  KeyPath = swift_getKeyPath();
  if (v4 == 1)
  {
    *&v49 = sub_33054();
    sub_12A04();
    *&v43 = v5;
    *(&v43 + 1) = KeyPath;
    *&v44 = v6;
    *(&v44 + 1) = sub_33084();
    LOBYTE(v45) = 0;
  }

  else
  {
    *&v49 = sub_33034();
    sub_12A04();
    *&v43 = v5;
    *(&v43 + 1) = KeyPath;
    *&v44 = v6;
    *(&v44 + 1) = sub_33084();
    LOBYTE(v45) = 1;
  }

  sub_279C(&qword_45D50, &qword_34C00);
  sub_17068();
  sub_32EC4();
  v8 = v49;
  v9 = (v2 + v3[6]);
  v10 = v9[1];
  *&v49 = *v9;
  *(&v49 + 1) = v10;
  v31 = v8;
  v33 = *(&v8 + 1);
  v34 = v8;
  sub_171D8(v8, *(&v8 + 1), v50, *(&v50 + 1));
  sub_1288C();

  v35 = sub_32FE4();
  v36 = v11;
  v13 = v12;
  v29 = v14;
  if (*(v2 + v3[10]) == 1)
  {
    v15 = sub_33094();
    v16 = sub_32F64();
    *&v43 = v15;
    *(&v43 + 1) = swift_getKeyPath();
    *&v44 = v16;
    DWORD2(v44) = sub_32ED4();
    BYTE12(v44) = 0;
  }

  else
  {
    v43 = xmmword_34A90;
    *&v44 = 0;
    DWORD2(v44) = 0;
    BYTE12(v44) = 1;
  }

  sub_279C(&qword_45D90, &qword_34C20);
  sub_17234();
  sub_32EC4();
  v37[0] = v13 & 1;
  LOBYTE(v40[0]) = 1;
  sub_171D8(v34, v33, v50, *(&v50 + 1));
  sub_12948(v35, v36, v13 & 1);

  sub_172EC(v49, *(&v49 + 1), v50, DWORD2(v50), SBYTE12(v50));
  sub_1733C(v34, v33, v50, *(&v50 + 1));
  LOBYTE(v39[0]) = BYTE12(v50);
  sub_17394(v49, *(&v49 + 1), v50, DWORD2(v50), SBYTE12(v50));
  sub_128E0(v35, v36, v13 & 1);

  sub_1733C(v34, v33, v50, *(&v50 + 1));
  *(&v45 + 1) = v40[0];
  DWORD1(v45) = *(v40 + 3);
  *(&v46 + 9) = v39[0];
  HIDWORD(v46) = *(v39 + 3);
  *&v48[4] = *&v38[3];
  *&v48[1] = *v38;
  LOBYTE(v45) = v51;
  *v52 = v40[0];
  *&v52[3] = *(v40 + 3);
  v44 = v50;
  v43 = v31;
  *(&v45 + 1) = v35;
  *&v46 = v36;
  BYTE8(v46) = v13 & 1;
  v47 = v29;
  v48[0] = 1;
  *&v48[8] = v49;
  *&v48[24] = v50;
  *&v48[32] = DWORD2(v50);
  v48[36] = BYTE12(v50);
  v49 = v31;
  v53 = v35;
  v54 = v36;
  v55 = v13 & 1;
  *&v56[3] = *(v39 + 3);
  *v56 = v39[0];
  v57 = v29;
  v58 = 0;
  v59 = 1;
  *v60 = *v38;
  *&v60[3] = *&v38[3];
  v61 = *&v48[8];
  v62 = v50;
  v63 = DWORD2(v50);
  v64 = BYTE12(v50);
  sub_16974(&v43, v37);
  sub_169E4(&v49);
  *(&v41[4] + 7) = v47;
  *(&v41[5] + 7) = *v48;
  *(&v41[6] + 7) = *&v48[16];
  *(v41 + 7) = v43;
  *(&v41[1] + 7) = v44;
  *(&v41[2] + 7) = v45;
  *(&v41[7] + 4) = *&v48[29];
  *(&v41[3] + 7) = v46;
  v17 = v42;
  sub_279C(&qword_458E8, &qword_345C0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_345A0;
  v19 = sub_32EF4();
  *(v18 + 32) = v19;
  v20 = sub_32F04();
  *(v18 + 33) = v20;
  v21 = sub_32F14();
  sub_32F14();
  if (sub_32F14() != v19)
  {
    v21 = sub_32F14();
  }

  sub_32F14();
  if (sub_32F14() != v20)
  {
    v21 = sub_32F14();
  }

  sub_32CC4();
  v22 = v41[5];
  *(a2 + 81) = v41[4];
  *(a2 + 97) = v22;
  *(a2 + 113) = v41[6];
  *(a2 + 125) = *(&v41[6] + 12);
  v23 = v41[1];
  *(a2 + 17) = v41[0];
  *(a2 + 33) = v23;
  v24 = v41[3];
  *(a2 + 49) = v41[2];
  *a2 = v32;
  *(a2 + 8) = 0;
  *(a2 + 16) = v17;
  *(a2 + 65) = v24;
  *(a2 + 144) = v21;
  *(a2 + 152) = v25;
  *(a2 + 160) = v26;
  *(a2 + 168) = v27;
  *(a2 + 176) = v28;
  *(a2 + 184) = 0;
}

uint64_t sub_16974(uint64_t a1, uint64_t a2)
{
  v4 = sub_279C(&qword_45C80, &unk_34AA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_169E4(uint64_t a1)
{
  v2 = sub_279C(&qword_45C80, &unk_34AA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_16A54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CachingServer(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_16ABC()
{
  v0 = type metadata accessor for CacheItemView(0);
  v1 = sub_16C14();

  return NavigationStack.init<>(root:)(sub_16B20, 0, v0, v1);
}

uint64_t sub_16B20@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_32AC4();
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_32AB4();
  return sub_1759C(v4, 0xD000000000000013, 0x800000000003B2F0, 0, 1, 2, 0, 1, a1);
}

uint64_t type metadata accessor for CacheItemView(uint64_t a1)
{
  result = qword_472F0;
  if (!qword_472F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_16C14()
{
  result = qword_45C88;
  if (!qword_45C88)
  {
    type metadata accessor for CacheItemView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_45C88);
  }

  return result;
}

unint64_t sub_16C8C()
{
  result = qword_45C90;
  if (!qword_45C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_45C90);
  }

  return result;
}

uint64_t sub_16CFC(uint64_t a1)
{
  v2 = sub_17014();

  return static PreviewProvider._previews.getter(a1, v2);
}

uint64_t sub_16D48(uint64_t a1)
{
  v2 = sub_17014();

  return static PreviewProvider._platform.getter(a1, v2);
}

uint64_t sub_16DA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CachingServer(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_16E28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CachingServer(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_16E98(uint64_t a1)
{
  result = type metadata accessor for CachingServer(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_16F18()
{
  result = qword_45D18;
  if (!qword_45D18)
  {
    sub_8BD0(&qword_45D20, ":%");
    sub_8F50(&qword_45D28, &qword_45D30, &qword_34BC0, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_45D18);
  }

  return result;
}

unint64_t sub_17014()
{
  result = qword_45D48;
  if (!qword_45D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_45D48);
  }

  return result;
}

unint64_t sub_17068()
{
  result = qword_45D58;
  if (!qword_45D58)
  {
    sub_8BD0(&qword_45D50, &qword_34C00);
    sub_17120();
    sub_8F50(&qword_45D80, &qword_45D88, &qword_34C18, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_45D58);
  }

  return result;
}

unint64_t sub_17120()
{
  result = qword_45D60;
  if (!qword_45D60)
  {
    sub_8BD0(&qword_45D68, &qword_34C08);
    sub_8F50(&qword_45D70, &qword_45D78, &qword_34C10, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_45D60);
  }

  return result;
}

uint64_t sub_171D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
}

unint64_t sub_17234()
{
  result = qword_45D98;
  if (!qword_45D98)
  {
    sub_8BD0(&qword_45D90, &qword_34C20);
    sub_17120();
    sub_8F50(&qword_45DA0, &qword_45DA8, &qword_34C28, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_45D98);
  }

  return result;
}

uint64_t sub_172EC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
  }

  return v6;
}

uint64_t sub_1733C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
}

uint64_t sub_17394(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
  }

  return v6;
}

uint64_t sub_173E0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CachingServer(0) + 20);
  v4 = sub_32AC4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for CachingServer(uint64_t a1)
{
  result = qword_47390;
  if (!qword_47390)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_174A8()
{
  v1 = *(v0 + *(type metadata accessor for CachingServer(0) + 24));

  return v1;
}

uint64_t sub_1759C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>)
{
  sub_32AB4();
  v17 = type metadata accessor for CachingServer(0);
  v18 = v17[5];
  v19 = sub_32AC4();
  result = (*(*(v19 - 8) + 32))(a9 + v18, a1, v19);
  v21 = (a9 + v17[6]);
  *v21 = a2;
  v21[1] = a3;
  *(a9 + v17[7]) = a4;
  *(a9 + v17[8]) = a5;
  *(a9 + v17[9]) = a6;
  *(a9 + v17[10]) = a7;
  *(a9 + v17[11]) = a8;
  return result;
}

uint64_t sub_176A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_32AC4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_17774(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_32AC4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_17830(uint64_t a1)
{
  result = sub_32AC4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t variable initialization expression of CacheLocatorSettings.cacheService@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for AssetCacheLocatorService(0);
  result = sub_2B49C();
  a1[3] = v2;
  a1[4] = &off_41C90;
  *a1 = result;
  return result;
}

void sub_179BC()
{
  if (*(v0 + OBJC_IVAR___CacheLocatorSettings_isResultAvailableSubscription))
  {

    sub_32BF4();
  }
}

Swift::Void __swiftcall CacheLocatorSettings.viewDidLoad()()
{
  v1 = v0;
  v2 = sub_32BD4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37.receiver = v1;
  v37.super_class = CacheLocatorSettings;
  objc_msgSendSuper2(&v37, "viewDidLoad");
  v6 = sub_2167C();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_32BB4();
  v8 = sub_33434();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_0, v7, v8, "Loading the CacheLocatorView", v9, 2u);
  }

  (*(v3 + 8))(v5, v2);
  type metadata accessor for CacheLocatorViewModel(0);
  sub_35E4(v1 + OBJC_IVAR___CacheLocatorSettings_cacheService, &v34);
  sub_14528(&v34);

  v34 = sub_1AEEC(v10);
  v35 = v11 & 1;
  v36 = v12;
  v13 = objc_allocWithZone(sub_279C(&qword_45E58, "$&"));
  v14 = sub_32EB4();
  v15 = sub_2A72C();
  swift_beginAccess();
  v16 = *v15;
  v17 = sub_33234();
  v18 = [v16 localizedStringForKey:v17 value:0 table:0];

  if (!v18)
  {
    sub_33244();
    v18 = sub_33234();
  }

  [v1 setTitle:v18];

  v19 = [v14 view];
  if (!v19)
  {

    v20 = v14;
    goto LABEL_10;
  }

  v20 = v19;
  v21 = [v1 view];
  if (v21)
  {
    v22 = v21;
    [v21 addSubview:v20];

    v23 = [v1 view];
    if (v23)
    {
      v24 = v23;
      [v23 bounds];
      v26 = v25;
      v28 = v27;
      v30 = v29;
      v32 = v31;

      [v20 setFrame:{v26, v28, v30, v32}];
      [v20 setAutoresizingMask:18];
      [v1 addChildViewController:v14];
      [v14 didMoveToParentViewController:v1];

LABEL_10:
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void __swiftcall CacheLocatorSettings.init(nibName:bundle:)(CacheLocatorSettings *__return_ptr retstr, Swift::String_optional nibName, NSBundle_optional bundle)
{
  isa = bundle.value.super.isa;
  if (nibName.value._object)
  {
    v4 = sub_33234();
  }

  else
  {
    v4 = 0;
  }

  [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:v4 bundle:isa];
}

id CacheLocatorSettings.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  *&v3[OBJC_IVAR___CacheLocatorSettings_isResultAvailableSubscription] = 0;
  v7 = &v3[OBJC_IVAR___CacheLocatorSettings_cacheService];
  v8 = type metadata accessor for AssetCacheLocatorService(0);
  v9 = sub_2B49C();
  v7[3] = v8;
  v7[4] = &off_41C90;
  *v7 = v9;
  if (a2)
  {
    v10 = sub_33234();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v4;
  v13.super_class = CacheLocatorSettings;
  v11 = objc_msgSendSuper2(&v13, "initWithNibName:bundle:", v10, a3);

  return v11;
}

id CacheLocatorSettings.init(coder:)(void *a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR___CacheLocatorSettings_isResultAvailableSubscription] = 0;
  v4 = &v1[OBJC_IVAR___CacheLocatorSettings_cacheService];
  v5 = type metadata accessor for AssetCacheLocatorService(0);
  v6 = sub_2B49C();
  v4[3] = v5;
  v4[4] = &off_41C90;
  *v4 = v6;
  v9.receiver = v2;
  v9.super_class = CacheLocatorSettings;
  v7 = objc_msgSendSuper2(&v9, "initWithCoder:", a1);

  if (v7)
  {
  }

  return v7;
}

uint64_t sub_181A0(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v26 = a1;
  v2 = sub_279C(&qword_451C8, &qword_34850);
  __chkstk_darwin(v2 - 8);
  v4 = &v26 - v3;
  v27 = sub_279C(&qword_459D8, &qword_34848);
  v5 = *(v27 - 8);
  __chkstk_darwin(v27);
  v7 = &v26 - v6;
  v8 = sub_32BD4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2167C();
  (*(v9 + 16))(v11, v12, v8);
  v13 = sub_32BB4();
  v14 = sub_33434();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_0, v13, v14, "Start scanning for caches", v15, 2u);
  }

  (*(v9 + 8))(v11, v8);
  v16 = v29;
  v17 = *(v29 + OBJC_IVAR___CacheLocatorSettings_cacheService + 24);
  v18 = *(v29 + OBJC_IVAR___CacheLocatorSettings_cacheService + 32);
  sub_3294((v29 + OBJC_IVAR___CacheLocatorSettings_cacheService), v17);
  v31 = (*(v18 + 16))(v17, v18);
  sub_9334(0, &qword_451D8, OS_dispatch_queue_ptr);
  v19 = sub_33474();
  v30 = v19;
  v20 = sub_33454();
  (*(*(v20 - 8) + 56))(v4, 1, 1, v20);
  sub_279C(&qword_45A00, &qword_34898);
  sub_8F50(&qword_45A08, &qword_45A00, &qword_34898, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_8C18();
  sub_32C94();
  sub_150C8(v4);

  v21 = swift_allocObject();
  v22 = v28;
  *(v21 + 16) = v26;
  *(v21 + 24) = v22;
  sub_8F50(&qword_45A10, &qword_459D8, &qword_34848, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);

  v23 = v27;
  v24 = sub_32CA4();

  (*(v5 + 8))(v7, v23);
  *(v16 + OBJC_IVAR___CacheLocatorSettings_isResultAvailableSubscription) = v24;
}

uint64_t sub_185E8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}