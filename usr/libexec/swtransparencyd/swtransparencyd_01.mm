uint64_t sub_10002C2EC(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 56);
  v4 = *(a2 + 16) + 1;
  while (1)
  {
    if (!--v4)
    {
      return a1;
    }

    v5 = *(v3 - 1);
    v19 = *v3;
    v6 = *(v3 - 2);
    v20 = *(v3 - 24);
    v7 = v20;
    sub_100027004(v6, v5);
    v8 = sub_10002ABFC();
    ATLogProofs.VerificationResult.result.getter();
    v18 = sub_1000A20C8(&v20, &type metadata for UInt8, &type metadata for UInt8, v8);
    __chkstk_darwin(v18);
    v14[16] = v7;
    v15 = v6;
    v16 = v5;
    v17 = v19;
    v9 = sub_10002B4FC();
    v10 = sub_1000A39FC(&type metadata for UInt16, sub_10002DC38, v14, &type metadata for UInt16, v9);
    result = sub_100026FB0(v6, v5);
    v12 = v18 + v10;
    if (__OFADD__(v18, v10))
    {
      break;
    }

    v3 += 4;
    v13 = __OFADD__(a1, v12);
    a1 += v12;
    if (v13)
    {
      __break(1u);
      return a1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10002C448(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 56);
    for (i = (a2 + 56); *(v3 - 24) == *(i - 24); i += 4)
    {
      v5 = *(v3 - 2);
      v6 = *(v3 - 1);
      v7 = *v3;
      v9 = *(i - 1);
      v8 = *i;
      v10 = *(i - 2);
      sub_100027004(v5, v6);
      sub_100027004(v10, v9);
      LOBYTE(v7) = static TransparencyByteBuffer.== infix(_:_:)(v5, v6, v7, v10, v9, v8);
      sub_100026FB0(v10, v9);
      sub_100026FB0(v5, v6);
      if ((v7 & 1) == 0)
      {
        break;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_10002C540(uint64_t a1)
{
  v2 = v1;
  Hasher._combine(_:)(*v2);
  Hasher._combine(_:)(*(v2 + 1));
  Data.hash(into:)();
  Data.hash(into:)();
  Hasher._combine(_:)(*(v2 + 40));
  sub_10002D4F8(a1, *(v2 + 48));
  if (*(v2 + 56))
  {
    Hasher._combine(_:)(1u);
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int sub_10002C5C8()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(*(v0 + 1));
  Data.hash(into:)();
  Data.hash(into:)();
  Hasher._combine(_:)(*(v0 + 40));
  sub_10002D4F8(v2, *(v0 + 48));
  if (*(v0 + 56))
  {
    Hasher._combine(_:)(1u);
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

Swift::Int sub_10002C67C()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *v0;
  v5 = *(v0 + 1);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Data.hash(into:)();
  Data.hash(into:)();
  Hasher._combine(_:)(v1);
  sub_10002D4F8(v7, v2);
  if (v3)
  {
    Hasher._combine(_:)(1u);
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

void sub_10002C764(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  v6 = *(v1 + 1);
  Hasher._combine(_:)(*v1);
  Hasher._combine(_:)(v6);
  Data.hash(into:)();
  Data.hash(into:)();
  Hasher._combine(_:)(v3);
  sub_10002D4F8(a1, v4);
  if (v5)
  {
    Hasher._combine(_:)(1u);
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int sub_10002C82C(uint64_t a1)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *v1;
  v6 = *(v1 + 1);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Data.hash(into:)();
  Data.hash(into:)();
  Hasher._combine(_:)(v2);
  sub_10002D4F8(v8, v3);
  if (v4)
  {
    Hasher._combine(_:)(1u);
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

uint64_t sub_10002C910(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return sub_10002D6D0(v7, v8) & 1;
}

char *sub_10002C95C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100024248(&qword_100152D60, &qword_100103DA0);
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

char *sub_10002CA60(char *result, int64_t a2, char a3, char *a4)
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
    sub_100024248(&qword_100152D68, &qword_100103DA8);
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

Swift::Int sub_10002CB6C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10002D5B0(v2);
  }

  v3 = *(v2 + 2);
  v20[0] = (v2 + 32);
  v20[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 56;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = v12[8];
          if (v13 >= *(v12 - 24))
          {
            break;
          }

          v14 = *(v12 + 4);
          v15 = *(v12 + 1);
          v16 = *(v12 - 8);
          *(v12 + 8) = *(v12 - 24);
          *(v12 + 24) = v16;
          *(v12 - 24) = v13;
          *(v12 - 1) = v15;
          *v12 = v14;
          v12 -= 32;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 32;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v18[0] = v7 + 4;
    v18[1] = v6;
    sub_10002CCC0(v18, v19, v20, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_10002CCC0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v96 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_88:
    v96 = *v96;
    if (!v96)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = sub_10002D4E4(v9);
      v9 = result;
    }

    v88 = v9 + 16;
    v89 = *(v9 + 2);
    if (v89 >= 2)
    {
      while (*a3)
      {
        v90 = &v9[16 * v89];
        v91 = *v90;
        v92 = &v88[2 * v89];
        v93 = v92[1];
        sub_10002D254((*a3 + 32 * *v90), (*a3 + 32 * *v92), (*a3 + 32 * v93), v96);
        if (v4)
        {
        }

        if (v93 < v91)
        {
          goto LABEL_112;
        }

        if (v89 - 2 >= *v88)
        {
          goto LABEL_113;
        }

        *v90 = v91;
        *(v90 + 1) = v93;
        v94 = *v88 - v89;
        if (*v88 < v89)
        {
          goto LABEL_114;
        }

        v89 = *v88 - 1;
        result = memmove(v92, v92 + 2, 16 * v94);
        *v88 = v89;
        if (v89 <= 1)
        {
        }
      }

      goto LABEL_124;
    }
  }

  v7 = a4;
  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  while (1)
  {
    v10 = v8++;
    if (v8 < v6)
    {
      v11 = *(*a3 + 32 * v8);
      v12 = 32 * v10;
      v13 = (*a3 + 32 * v10);
      v16 = *v13;
      v15 = v13 + 64;
      v14 = v16;
      v17 = v10 + 2;
      v18 = v11;
      while (v6 != v17)
      {
        v19 = *v15;
        v15 += 32;
        v20 = (v11 < v14) ^ (v19 >= v18);
        ++v17;
        v18 = v19;
        if ((v20 & 1) == 0)
        {
          v8 = v17 - 1;
          if (v11 >= v14)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v8 = v6;
      if (v11 >= v14)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v8 < v10)
      {
        goto LABEL_117;
      }

      if (v10 < v8)
      {
        v21 = 32 * v8 - 8;
        v22 = v8;
        v23 = v10;
        do
        {
          if (v23 != --v22)
          {
            v30 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v24 = (v30 + v12);
            v25 = (v30 + v21);
            v26 = *v24;
            v27 = *(v24 + 3);
            v28 = *(v24 + 8);
            v29 = *(v25 - 1);
            *v24 = *(v25 - 3);
            *(v24 + 1) = v29;
            *(v25 - 24) = v26;
            *(v25 - 1) = v28;
            *v25 = v27;
          }

          ++v23;
          v21 -= 32;
          v12 += 32;
        }

        while (v23 < v22);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v8 < v6)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_116;
      }

      if (v8 - v10 < v7)
      {
        if (__OFADD__(v10, v7))
        {
          goto LABEL_118;
        }

        if (v10 + v7 < v6)
        {
          v6 = v10 + v7;
        }

        if (v6 < v10)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v8 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v8 < v10)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10002C95C(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v42 = *(v9 + 2);
    v41 = *(v9 + 3);
    v43 = v42 + 1;
    if (v42 >= v41 >> 1)
    {
      result = sub_10002C95C((v41 > 1), v42 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v43;
    v44 = &v9[16 * v42];
    *(v44 + 4) = v10;
    *(v44 + 5) = v8;
    v45 = *v96;
    if (!*v96)
    {
      goto LABEL_125;
    }

    if (v42)
    {
      while (1)
      {
        v46 = v43 - 1;
        if (v43 >= 4)
        {
          break;
        }

        if (v43 == 3)
        {
          v47 = *(v9 + 4);
          v48 = *(v9 + 5);
          v57 = __OFSUB__(v48, v47);
          v49 = v48 - v47;
          v50 = v57;
LABEL_57:
          if (v50)
          {
            goto LABEL_103;
          }

          v63 = &v9[16 * v43];
          v65 = *v63;
          v64 = *(v63 + 1);
          v66 = __OFSUB__(v64, v65);
          v67 = v64 - v65;
          v68 = v66;
          if (v66)
          {
            goto LABEL_106;
          }

          v69 = &v9[16 * v46 + 32];
          v71 = *v69;
          v70 = *(v69 + 1);
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v67, v72))
          {
            goto LABEL_110;
          }

          if (v67 + v72 >= v49)
          {
            if (v49 < v72)
            {
              v46 = v43 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v73 = &v9[16 * v43];
        v75 = *v73;
        v74 = *(v73 + 1);
        v57 = __OFSUB__(v74, v75);
        v67 = v74 - v75;
        v68 = v57;
LABEL_71:
        if (v68)
        {
          goto LABEL_105;
        }

        v76 = &v9[16 * v46];
        v78 = *(v76 + 4);
        v77 = *(v76 + 5);
        v57 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v57)
        {
          goto LABEL_108;
        }

        if (v79 < v67)
        {
          goto LABEL_3;
        }

LABEL_78:
        v84 = v46 - 1;
        if (v46 - 1 >= v43)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
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
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v85 = *&v9[16 * v84 + 32];
        v86 = *&v9[16 * v46 + 40];
        sub_10002D254((*a3 + 32 * v85), (*a3 + 32 * *&v9[16 * v46 + 32]), (*a3 + 32 * v86), v45);
        if (v4)
        {
        }

        if (v86 < v85)
        {
          goto LABEL_99;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_10002D4E4(v9);
        }

        if (v84 >= *(v9 + 2))
        {
          goto LABEL_100;
        }

        v87 = &v9[16 * v84];
        *(v87 + 4) = v85;
        *(v87 + 5) = v86;
        result = sub_10002D458(v46);
        v43 = *(v9 + 2);
        if (v43 <= 1)
        {
          goto LABEL_3;
        }
      }

      v51 = &v9[16 * v43 + 32];
      v52 = *(v51 - 64);
      v53 = *(v51 - 56);
      v57 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      if (v57)
      {
        goto LABEL_101;
      }

      v56 = *(v51 - 48);
      v55 = *(v51 - 40);
      v57 = __OFSUB__(v55, v56);
      v49 = v55 - v56;
      v50 = v57;
      if (v57)
      {
        goto LABEL_102;
      }

      v58 = &v9[16 * v43];
      v60 = *v58;
      v59 = *(v58 + 1);
      v57 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v57)
      {
        goto LABEL_104;
      }

      v57 = __OFADD__(v49, v61);
      v62 = v49 + v61;
      if (v57)
      {
        goto LABEL_107;
      }

      if (v62 >= v54)
      {
        v80 = &v9[16 * v46 + 32];
        v82 = *v80;
        v81 = *(v80 + 1);
        v57 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v57)
        {
          goto LABEL_111;
        }

        if (v49 < v83)
        {
          v46 = v43 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    v7 = a4;
    if (v8 >= v6)
    {
      goto LABEL_88;
    }
  }

  v31 = *a3;
  v32 = *a3 + 32 * v8 - 32;
  v33 = v10 - v8;
LABEL_30:
  v34 = *(v31 + 32 * v8);
  v35 = v33;
  v36 = v32;
  while (1)
  {
    if (v34 >= *v36)
    {
LABEL_29:
      ++v8;
      v32 += 32;
      --v33;
      if (v8 != v6)
      {
        goto LABEL_30;
      }

      v8 = v6;
      goto LABEL_37;
    }

    if (!v31)
    {
      break;
    }

    v37 = *(v36 + 7);
    v38 = *(v36 + 40);
    v39 = *(v36 + 1);
    *(v36 + 2) = *v36;
    *(v36 + 3) = v39;
    *v36 = v34;
    *(v36 + 8) = v38;
    *(v36 + 3) = v37;
    v36 -= 32;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_10002D254(char *__dst, char *__src, unsigned __int8 *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v12 >> 5)
  {
    if (a4 != __dst || &__dst[32 * v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[32 * v10];
    if (v8 < 32)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 32;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 32;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 32;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    v17 = v15[1];
    *v7 = *v15;
    *(v7 + 1) = v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[32 * v13] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v14 = &v4[32 * v13];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_24:
    v18 = v6 - 32;
    v5 -= 32;
    v19 = v14;
    do
    {
      v20 = v5 + 32;
      v21 = *(v19 - 32);
      v19 -= 32;
      if (v21 < *v18)
      {
        if (v20 != v6)
        {
          v23 = *(v6 - 1);
          *v5 = *v18;
          *(v5 + 1) = v23;
        }

        if (v14 <= v4 || (v6 -= 32, v18 <= v7))
        {
          v6 = v18;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v20 != v14)
      {
        v22 = *(v19 + 1);
        *v5 = *v19;
        *(v5 + 1) = v22;
      }

      v5 -= 32;
      v14 = v19;
    }

    while (v19 > v4);
    v14 = v19;
  }

LABEL_35:
  v24 = v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0);
  if (v6 != v4 || v6 >= &v4[v24 & 0xFFFFFFFFFFFFFFE0])
  {
    memmove(v6, v4, 32 * (v24 >> 5));
  }

  return 1;
}

uint64_t sub_10002D458(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10002D4E4(v3);
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

void sub_10002D4F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    v4 = a2 + 56;
    do
    {
      v5 = *(v4 - 24);
      Hasher._combine(_:)(0);
      Hasher._combine(_:)(v5);
      sub_10002B154();
      dispatch thunk of Hashable.hash(into:)();
      v4 += 32;
      --v3;
    }

    while (v3);
  }
}

char *sub_10002D5C4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100024248(&qword_100152D68, &qword_100103DA8);
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

uint64_t sub_10002D6D0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || !sub_100027800(*(a1 + 1), *(a1 + 2), *(a2 + 1), *(a2 + 2)) || !sub_100027800(*(a1 + 3), *(a1 + 4), *(a2 + 3), *(a2 + 4)) || *(a1 + 5) != *(a2 + 5))
  {
    return 0;
  }

  v7 = *(a1 + 6);

  sub_10002CB6C(&v7);
  v4 = v7;
  v7 = *(a2 + 6);

  sub_10002CB6C(&v7);
  v5 = sub_10002C448(v4, v7);

  return v5 & 1;
}

unint64_t sub_10002D804()
{
  result = qword_100152D28;
  if (!qword_100152D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100152D28);
  }

  return result;
}

uint64_t sub_10002D888(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000242F4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10002D8E0()
{
  result = qword_100152D40;
  if (!qword_100152D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100152D40);
  }

  return result;
}

unint64_t sub_10002D938()
{
  result = qword_100152D48;
  if (!qword_100152D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100152D48);
  }

  return result;
}

unint64_t sub_10002D990()
{
  result = qword_100152D50;
  if (!qword_100152D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100152D50);
  }

  return result;
}

unint64_t sub_10002D9E8()
{
  result = qword_100152D58;
  if (!qword_100152D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100152D58);
  }

  return result;
}

uint64_t sub_10002DA6C(uint64_t a1)
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

__n128 sub_10002DA88(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_10002DA94(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 32))
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

uint64_t sub_10002DAE8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

__n128 sub_10002DB48(uint64_t a1, uint64_t a2)
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

uint64_t sub_10002DB5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10002DBA4(uint64_t result, int a2, int a3)
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
      *(result + 48) = (a2 - 1);
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

unint64_t sub_10002DC6C(unint64_t a1, unsigned __int8 a2)
{
  v2 = a2 >> 5;
  if (v2 <= 1)
  {
    if (!(a2 >> 5))
    {
      _StringGuts.grow(_:)(24);
      v4._countAndFlagsBits = 0xD000000000000016;
      v4._object = 0x800000010010A6B0;
      String.append(_:)(v4);
      type metadata accessor for Status(0);
      goto LABEL_19;
    }

    _StringGuts.grow(_:)(35);
    v9._object = 0x800000010010A690;
    v9._countAndFlagsBits = 0xD000000000000014;
    String.append(_:)(v9);
    type metadata accessor for LogType(0);
LABEL_18:
    _print_unlocked<A, B>(_:_:)();
    v10._countAndFlagsBits = 0x746365707865202CLL;
    v10._object = 0xEB00000000206465;
    String.append(_:)(v10);
    goto LABEL_19;
  }

  if (v2 == 2)
  {
    _StringGuts.grow(_:)(38);
    v5._countAndFlagsBits = 0xD000000000000017;
    v5._object = 0x800000010010A670;
    String.append(_:)(v5);
    type metadata accessor for Application(0);
    goto LABEL_18;
  }

  if (v2 == 3)
  {
    _StringGuts.grow(_:)(22);
    v3._object = 0x800000010010A5E0;
    v3._countAndFlagsBits = 0xD000000000000014;
    String.append(_:)(v3);
    type metadata accessor for LogType(0);
LABEL_19:
    _print_unlocked<A, B>(_:_:)();
    return 0;
  }

  if (a2 == 128 && a1 == 1)
  {
    v7 = 0xD00000000000001ELL;
  }

  else
  {
    v7 = 0xD00000000000001CLL;
  }

  if (a1 | a2 ^ 0x80)
  {
    return v7;
  }

  else
  {
    return 0xD000000000000025;
  }
}

void sub_10002DF48(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_10002DF94(uint64_t a1, unsigned __int8 a2)
{
  v2 = a2 >> 5;
  if (v2 <= 1)
  {
    if (a2 >> 5)
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  else if (v2 == 2)
  {
    return 3;
  }

  else if (v2 == 3)
  {
    return 7;
  }

  else
  {
    return a1 + 4;
  }
}

uint64_t sub_10002DFDC(uint64_t a1)
{
  v2 = sub_100033064();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10002E018(uint64_t a1)
{
  v2 = sub_100033064();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_10002E074()
{
  v1 = *(v0 + 8) >> 5;
  if (v1 <= 1)
  {
    if (v1)
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  else if (v1 == 2)
  {
    return 3;
  }

  else if (v1 == 3)
  {
    return 7;
  }

  else
  {
    return *v0 + 4;
  }
}

uint64_t sub_10002E0C8()
{
  type metadata accessor for AssociatedObjectKey();
  result = sub_1000259C8();
  qword_100156EA8 = result;
  return result;
}

uint64_t sub_10002E0FC()
{
  type metadata accessor for AssociatedObjectKey();
  result = sub_1000259C8();
  qword_100156EB8 = result;
  return result;
}

uint64_t sub_10002E130()
{
  type metadata accessor for AssociatedObjectKey();
  result = sub_1000259C8();
  qword_100156EC8 = result;
  return result;
}

uint64_t sub_10002E164()
{
  type metadata accessor for AssociatedObjectKey();
  result = sub_1000259C8();
  qword_100156ED8 = result;
  return result;
}

uint64_t sub_10002E198()
{
  type metadata accessor for AssociatedObjectKey();
  result = sub_1000259C8();
  qword_100156EE8 = result;
  return result;
}

uint64_t sub_10002E1CC()
{
  type metadata accessor for AssociatedObjectKey();
  result = sub_1000259C8();
  qword_100156EF8 = result;
  return result;
}

uint64_t sub_10002E200()
{
  v0 = type metadata accessor for Logger();
  sub_100027A50(v0, qword_10015D168);
  sub_100025AE0(v0, qword_10015D168);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10002E280()
{
  if (qword_100156F00 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_100025AE0(v0, qword_10015D168);
}

uint64_t sub_10002E2E4@<X0>(uint64_t a1@<X8>)
{
  if (qword_100156F00 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_100025AE0(v2, qword_10015D168);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void (*ConsistencyProofResponse.expectedApplication.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = ConsistencyProofResponse.expectedApplication.getter();
  *(v4 + 32) = v5;
  *(v4 + 36) = BYTE4(v5) & 1;
  return sub_10002E47C;
}

unint64_t sub_10002E4EC(void *a1, void *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (*a1 != -1)
  {
    v12 = a2;
    swift_once();
    a2 = v12;
  }

  v6 = *a2;
  swift_beginAccess();
  v7 = objc_getAssociatedObject(v4, (v6 + 16));
  swift_endAccess();
  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v16[0] = v14;
  v16[1] = v15;
  if (*(&v15 + 1))
  {
    a3(0);
    v8 = swift_dynamicCast();
    v9 = v13;
    v10 = v8 ^ 1;
    if (!v8)
    {
      v9 = 0;
    }
  }

  else
  {
    sub_10002533C(v16, &qword_100152D70, &qword_100103DB0);
    v9 = 0;
    v10 = 1;
  }

  return v9 | (v10 << 32);
}

uint64_t sub_10002E64C(uint64_t a1, void *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  if (*a2 != -1)
  {
    v9 = a4;
    swift_once();
    a4 = v9;
    v6 = *a3;
    if ((a1 & 0x100000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v6 = *a3;
  if ((a1 & 0x100000000) != 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  a4(0);
  v7 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
LABEL_6:
  swift_beginAccess();
  objc_setAssociatedObject(v5, (v6 + 16), v7, 0x303);
  swift_endAccess();
  return swift_unknownObjectRelease();
}

void (*ConsistencyProofResponse.expectedLogType.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = ConsistencyProofResponse.expectedLogType.getter();
  *(v4 + 32) = v5;
  *(v4 + 36) = BYTE4(v5) & 1;
  return sub_10002E798;
}

void sub_10002E7D0(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t (*a5)(void), uint64_t a6)
{
  v6 = *a1;
  v7 = *(*a1 + 32);
  v8 = *(*a1 + 36);
  if (*a3 == -1)
  {
    v9 = *a4;
    if (*(*a1 + 36))
    {
LABEL_3:
      v10 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v13 = a5;
    swift_once();
    a5 = v13;
    v9 = *a4;
    if (v8)
    {
      goto LABEL_3;
    }
  }

  *v6 = v7;
  (a5)(0, a2);
  v10 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
LABEL_6:
  v12 = v6[3];
  swift_beginAccess();
  objc_setAssociatedObject(v12, (v9 + 16), v10, 0x303);
  swift_endAccess();
  swift_unknownObjectRelease();

  free(v6);
}

uint64_t ConsistencyProofResponse.startRevision.getter()
{
  if (qword_100156EC0 != -1)
  {
    swift_once();
  }

  v1 = qword_100156EC8;
  swift_beginAccess();
  v2 = objc_getAssociatedObject(v0, (v1 + 16));
  swift_endAccess();
  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
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
    sub_10002533C(v7, &qword_100152D70, &qword_100103DB0);
    return 0;
  }
}

uint64_t ConsistencyProofResponse.startRevision.setter(uint64_t a1, char a2)
{
  if (qword_100156EC0 != -1)
  {
    v6 = a2;
    swift_once();
    a2 = v6;
  }

  v3 = qword_100156EC8;
  if (a2)
  {
    isa = 0;
  }

  else
  {
    isa = Int64._bridgeToObjectiveC()().super.super.isa;
  }

  swift_beginAccess();
  objc_setAssociatedObject(v2, (v3 + 16), isa, 0x303);
  swift_endAccess();
  return swift_unknownObjectRelease();
}

void (*ConsistencyProofResponse.startRevision.modify(uint64_t *a1))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  *(v3 + 24) = ConsistencyProofResponse.startRevision.getter();
  *(v4 + 32) = v5 & 1;
  return sub_10002EB20;
}

void sub_10002EB20(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  if (qword_100156EC0 != -1)
  {
    swift_once();
  }

  v3 = qword_100156EC8;
  if (v2)
  {
    isa = 0;
  }

  else
  {
    isa = Int64._bridgeToObjectiveC()().super.super.isa;
  }

  v5 = v1[5];
  swift_beginAccess();
  objc_setAssociatedObject(v5, (v3 + 16), isa, 0x303);
  swift_endAccess();
  swift_unknownObjectRelease();

  free(v1);
}

uint64_t ConsistencyProofResponse.keyBag.getter()
{
  if (qword_100156ED0 != -1)
  {
    swift_once();
  }

  v1 = qword_100156ED8;
  swift_beginAccess();
  v2 = objc_getAssociatedObject(v0, (v1 + 16));
  swift_endAccess();
  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_100033178(0, &qword_100152D78, &off_100131310);
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
    sub_10002533C(v7, &qword_100152D70, &qword_100103DB0);
    return 0;
  }
}

void ConsistencyProofResponse.keyBag.setter(void *a1)
{
  if (qword_100156ED0 != -1)
  {
    swift_once();
  }

  v3 = qword_100156ED8;
  swift_beginAccess();
  v4 = a1;
  objc_setAssociatedObject(v1, (v3 + 16), v4, 1);
  swift_endAccess();
}

void (*ConsistencyProofResponse.keyBag.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 24) = ConsistencyProofResponse.keyBag.getter();
  return sub_10002EE44;
}

void sub_10002EE44(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (a2)
  {
    v4 = qword_100156ED0;
    v5 = v3;
    if (v4 != -1)
    {
      swift_once();
    }

    v6 = v2[4];
    v7 = qword_100156ED8;
    swift_beginAccess();
    v8 = v5;
    objc_setAssociatedObject(v6, (v7 + 16), v8, 1);
    swift_endAccess();

    v9 = v2[3];
  }

  else
  {
    if (qword_100156ED0 != -1)
    {
      swift_once();
    }

    v10 = v2[4];
    v11 = qword_100156ED8;
    swift_beginAccess();
    v9 = v3;
    objc_setAssociatedObject(v10, (v11 + 16), v9, 1);
    swift_endAccess();
  }

  free(v2);
}

double sub_10002EF90@<D0>(uint64_t a1@<X8>)
{
  if (qword_100156EE0 != -1)
  {
    swift_once();
  }

  v3 = qword_100156EE8;
  swift_beginAccess();
  v4 = objc_getAssociatedObject(v1, (v3 + 16));
  swift_endAccess();
  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (!*(&v7 + 1))
  {
    sub_10002533C(v8, &qword_100152D70, &qword_100103DB0);
    goto LABEL_10;
  }

  sub_100024248(&qword_100152D80, &qword_100103DB8);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_10002F0C0(uint64_t a1)
{
  if (qword_100156EE0 != -1)
  {
    swift_once();
  }

  v3 = qword_100156EE8;
  sub_100025834(a1, v12, &qword_100152D88, &unk_100103DC0);
  v4 = v13;
  if (v13)
  {
    v5 = sub_100026F6C(v12, v13);
    v6 = *(v4 - 8);
    __chkstk_darwin(v5);
    v8 = &v12[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v8);
    v9 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v6 + 8))(v8, v4);
    sub_100024E14(v12);
  }

  else
  {
    v9 = 0;
  }

  swift_beginAccess();
  objc_setAssociatedObject(v1, (v3 + 16), v9, 1);
  swift_endAccess();
  swift_unknownObjectRelease();
  return sub_10002533C(a1, &qword_100152D88, &unk_100103DC0);
}

void (*sub_10002F284(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  *(v3 + 80) = v1;
  sub_10002EF90(v3);
  return sub_10002F2FC;
}

void sub_10002F2FC(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_100025834(*a1, v2 + 40, &qword_100152D88, &unk_100103DC0);
    sub_10002F0C0(v2 + 40);
    sub_10002533C(v2, &qword_100152D88, &unk_100103DC0);
  }

  else
  {
    sub_10002F0C0(*a1);
  }

  free(v2);
}

uint64_t ConsistencyProofResponse.receiptTime.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100156EF0 != -1)
  {
    swift_once();
  }

  v3 = qword_100156EF8;
  swift_beginAccess();
  v4 = objc_getAssociatedObject(v1, (v3 + 16));
  swift_endAccess();
  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    v5 = type metadata accessor for Date();
    v6 = swift_dynamicCast();
    return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
  }

  else
  {
    sub_10002533C(v11, &qword_100152D70, &qword_100103DB0);
    v8 = type metadata accessor for Date();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }
}

uint64_t ConsistencyProofResponse.receiptTime.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024248(&qword_100152D90, &qword_100105620);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  if (qword_100156EF0 != -1)
  {
    swift_once();
  }

  v7 = qword_100156EF8;
  sub_100025834(a1, v6, &qword_100152D90, &qword_100105620);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  isa = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v9 + 8))(v6, v8);
  }

  swift_beginAccess();
  objc_setAssociatedObject(v2, (v7 + 16), isa, 0x303);
  swift_endAccess();
  swift_unknownObjectRelease();
  return sub_10002533C(a1, &qword_100152D90, &qword_100105620);
}

void (*ConsistencyProofResponse.receiptTime.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(sub_100024248(&qword_100152D90, &qword_100105620) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  ConsistencyProofResponse.receiptTime.getter(v4);
  return sub_10002F780;
}

void sub_10002F780(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    sub_100025834(*(a1 + 16), v2, &qword_100152D90, &qword_100105620);
    ConsistencyProofResponse.receiptTime.setter(v2);
    sub_10002533C(v3, &qword_100152D90, &qword_100105620);
  }

  else
  {
    ConsistencyProofResponse.receiptTime.setter(*(a1 + 16));
  }

  free(v3);

  free(v2);
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ConsistencyProofResponse.isNewEpoch()()
{
  v2 = [v0 responsesArray];
  if (!v2)
  {
    __break(1u);
    goto LABEL_23;
  }

  v3 = v2;
  v4 = [v2 count];

  if (v4 >= 1)
  {
    v5 = ConsistencyProofResponse.keyBag.getter();
    if (!v5)
    {
      sub_10002FB04();
      swift_allocError();
      v16[1] = 0;
      v16[2] = 0;
      *v16 = 0x8000000000000000;
      swift_willThrow();
      goto LABEL_18;
    }

    v6 = v5;
    if ([v0 logType] != 3 && objc_msgSend(v0, "logType") != 2)
    {
      v19 = [v0 logType];
      sub_100032EA4();
      swift_allocError();
      *v17 = v19;
      v18 = 96;
      goto LABEL_17;
    }

    v7 = [v0 logType];
    v8 = &selRef_tltLogBeginningMs;
    if (v7 != 3)
    {
      v8 = &selRef_patLogBeginningMs;
    }

    v9 = [v6 *v8];
    v2 = [v0 responsesArray];
    if (v2)
    {
      v10 = v2;
      v11 = [v2 objectAtIndexedSubscript:0];

      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_100033178(0, &qword_100152DA8, off_1001312D0);
      if (swift_dynamicCast())
      {
        v2 = [v22 startSlh];
        if (v2)
        {
          v12 = v2;
          sub_100033178(0, &qword_100152A98, off_1001312E8);
          v13 = [swift_getObjCClassFromMetadata() signedTypeWithObject:v12];

          v14 = sub_100061B40();
          if (v1)
          {
          }

          else
          {
            v20 = v14;

            if (v20 >= 1 && v9 < v20)
            {
              v15 = 1;
              goto LABEL_18;
            }
          }

          goto LABEL_13;
        }

LABEL_24:
        __break(1u);
        return v2;
      }

      sub_100032EA4();
      swift_allocError();
      *v17 = 2;
      v18 = 0x80;
LABEL_17:
      *(v17 + 8) = v18;
      swift_willThrow();

      goto LABEL_18;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_13:
  v15 = 0;
LABEL_18:
  LOBYTE(v2) = v15 & 1;
  return v2;
}

unint64_t sub_10002FB04()
{
  result = qword_100152D98;
  if (!qword_100152D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100152D98);
  }

  return result;
}

void sub_10002FB58(void *a1)
{
  v4 = sub_100024248(&qword_100152D90, &qword_100105620);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v88 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v88 - v15;
  if (![a1 hasStartSlh] || !objc_msgSend(a1, "hasEndSlh"))
  {
    sub_100032EA4();
    swift_allocError();
    *v25 = 0;
    *(v25 + 8) = 0x80;
    swift_willThrow();
    return;
  }

  v92 = v14;
  v94 = v11;
  v93 = v10;
  v17 = [a1 startSlh];
  if (!v17)
  {
    __break(1u);
    goto LABEL_42;
  }

  v18 = v17;
  v107 = v1;
  sub_100033178(0, &qword_100152A98, off_1001312E8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v20 = [ObjCClassFromMetadata signedTypeWithObject:v18];

  v21 = [a1 endSlh];
  if (!v21)
  {
LABEL_42:
    __break(1u);
    return;
  }

  v22 = v21;
  v23 = [ObjCClassFromMetadata signedTypeWithObject:v21];

  sub_100061CE4(v103);
  v24 = v20;
  if (v2)
  {
LABEL_7:

    return;
  }

  sub_100061CE4(v105);
  sub_10002EF90(&v99);
  if (*(&v100 + 1))
  {
    v91 = v20;
    sub_1000331C0(&v99, v95);
    sub_10002533C(&v99, &qword_100152D88, &unk_100103DC0);
    v89 = v97;
    v90 = v96;
    v88[1] = sub_100026F6C(v95, v96);
    ConsistencyProofResponse.receiptTime.getter(v9);
    v26 = v94;
    v27 = v94[6];
    v28 = v93;
    if (v27(v9, 1, v93) == 1)
    {
      static Date.now.getter();
      if (v27(v9, 1, v28) != 1)
      {
        sub_10002533C(v9, &qword_100152D90, &qword_100105620);
      }
    }

    else
    {
      (v26[4])(v16, v9, v28);
    }

    v24 = v91;
    v34 = [v91 data];
    v35 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    v38 = sub_100061EBC();
    (v89)[3](v103, v16, v35, v37, v38, v90);
    (v94[1])(v16, v28);
    sub_100026FB0(v35, v37);
    sub_100024E14(v95);
  }

  else
  {
    sub_10002533C(&v99, &qword_100152D88, &unk_100103DC0);
    v28 = v93;
  }

  sub_10002EF90(&v99);
  if (*(&v100 + 1))
  {
    sub_1000331C0(&v99, v95);
    sub_10002533C(&v99, &qword_100152D88, &unk_100103DC0);
    v29 = v96;
    v93 = v97;
    v91 = sub_100026F6C(v95, v96);
    ConsistencyProofResponse.receiptTime.getter(v7);
    v30 = v28;
    v31 = v94;
    v32 = v94[6];
    if (v32(v7, 1, v30) == 1)
    {
      static Date.now.getter();
      v33 = v30;
      if (v32(v7, 1, v30) != 1)
      {
        sub_10002533C(v7, &qword_100152D90, &qword_100105620);
      }
    }

    else
    {
      (v31[4])(v92, v7, v30);
      v33 = v30;
    }

    v49 = [v23 data];
    v50 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v51;

    v53 = sub_100061EBC();
    v54 = v92;
    (v93)[3](v105, v92, v50, v52, v53, v29);
    (v94[1])(v54, v33);
    sub_100026FB0(v50, v52);
    sub_100024E14(v95);
  }

  else
  {
    sub_10002533C(&v99, &qword_100152D88, &unk_100103DC0);
  }

  v39 = ConsistencyProofResponse.keyBag.getter();
  if (!v39)
  {
    sub_100032EA4();
    swift_allocError();
    *v55 = 1;
    *(v55 + 8) = 0x80;
    swift_willThrow();
    sub_1000270C0(v105);
    sub_1000270C0(v103);
    goto LABEL_7;
  }

  v40 = v39;
  v41 = [v107 logType];
  v42 = &selRef_tltKeyStore;
  if (v41 != 3)
  {
    v42 = &selRef_appSthKeyStore;
  }

  v43 = [v40 *v42];
  v44 = v24;
  v45 = v23;
  v46 = [v43 signatureVerifier];
  [v45 setVerifier:v46];

  v47 = v44;
  v48 = [v43 signatureVerifier];
  [v47 setVerifier:v48];

  v94 = v47;
  v56 = sub_1000587C8();
  sub_10002EF90(&v99);
  if (*(&v100 + 1))
  {
    v57 = v43;
    sub_1000331C0(&v99, v95);
    sub_10002533C(&v99, &qword_100152D88, &unk_100103DC0);
    v58 = v96;
    v59 = v97;
    sub_100026F6C(v95, v96);
    (v59[6])(v103, v56, v58, v59);
    sub_100024E14(v95);
    v43 = v57;
  }

  else
  {
    sub_10002533C(&v99, &qword_100152D88, &unk_100103DC0);
  }

  if (qword_100156F00 != -1)
  {
    swift_once();
  }

  v60 = type metadata accessor for Logger();
  v61 = sub_100025AE0(v60, qword_10015D168);
  sub_100027114(v103, &v99);
  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.debug.getter();
  sub_1000270C0(v103);
  v64 = os_log_type_enabled(v62, v63);
  v89 = v40;
  v92 = v43;
  if (v64)
  {
    v65 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v98 = v91;
    *v65 = 136315138;
    v99 = v103[0];
    v100 = v103[1];
    v101 = v103[2];
    v102 = v104;
    sub_100027114(v103, v95);
    sub_100027584();
    v66 = dispatch thunk of CustomStringConvertible.description.getter();
    v93 = v61;
    v68 = v67;
    v69 = v45;
    v71 = *(&v101 + 1);
    v70 = v102;

    v72 = v71;
    v45 = v69;
    sub_100026FB0(v72, v70);
    v73 = sub_100021D24(v66, v68, &v98);

    *(v65 + 4) = v73;
    _os_log_impl(&_mh_execute_header, v62, v63, "Verified signature for %s", v65, 0xCu);
    sub_100024E14(v91);
  }

  v74 = sub_1000587C8();
  sub_10002EF90(&v99);
  if (*(&v100 + 1))
  {
    sub_1000331C0(&v99, v95);
    sub_10002533C(&v99, &qword_100152D88, &unk_100103DC0);
    v75 = v96;
    v76 = v97;
    sub_100026F6C(v95, v96);
    (v76[6])(v105, v74, v75, v76);
    sub_100024E14(v95);
  }

  else
  {
    sub_10002533C(&v99, &qword_100152D88, &unk_100103DC0);
  }

  sub_100027114(v105, &v99);
  v77 = Logger.logObject.getter();
  v78 = static os_log_type_t.debug.getter();
  sub_1000270C0(v105);
  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v98 = v80;
    *v79 = 136315138;
    v99 = v105[0];
    v100 = v105[1];
    v101 = v105[2];
    v102 = v106;
    sub_100027114(v105, v95);
    sub_100027584();
    v81 = v77;
    v82 = dispatch thunk of CustomStringConvertible.description.getter();
    v91 = v45;
    v84 = v83;
    v86 = *(&v101 + 1);
    v85 = v102;

    sub_100026FB0(v86, v85);
    v87 = sub_100021D24(v82, v84, &v98);

    *(v79 + 4) = v87;
    _os_log_impl(&_mh_execute_header, v81, v78, "Verified signature for %s", v79, 0xCu);
    sub_100024E14(v80);

    sub_1000270C0(v103);
    sub_1000270C0(v105);
  }

  else
  {
    sub_1000270C0(v103);

    sub_1000270C0(v105);
  }
}

id sub_100030DB0(void *a1)
{
  v6 = type metadata accessor for KTSWDB.SignedLogHead(0);
  __chkstk_darwin(v6 - 8);
  v8 = (&v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (![a1 hasStartSlh] || !objc_msgSend(a1, "hasEndSlh"))
  {
    sub_100032EA4();
    swift_allocError();
    *v16 = 0;
    *(v16 + 8) = 0x80;
    swift_willThrow();
    return (v3 & 1);
  }

  v9 = [a1 startSlh];
  if (!v9)
  {
    __break(1u);
    goto LABEL_63;
  }

  v3 = v9;
  v10 = v1;
  v11 = [v9 object];

  if (!v11)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v13;

  v14 = objc_allocWithZone(LogHead);
  v15 = sub_1000330B8();
  if (v2)
  {
    sub_100026FB0(v12, v3);
    return (v3 & 1);
  }

  v18 = v15;
  sub_100026FB0(v12, v3);
  v3 = [v18 revision];
  v19 = ConsistencyProofResponse.startRevision.getter();
  LOBYTE(v3) = v20 | (v19 < 1) | (v3 >= v19);
  if ((v3 & 1) == 0)
  {
LABEL_11:

    return (v3 & 1);
  }

  sub_10002FB58(a1);
  v21 = ConsistencyProofResponse.keyBag.getter();
  if (!v21)
  {
    sub_100032EA4();
    swift_allocError();
    *v35 = 1;
    *(v35 + 8) = 0x80;
    swift_willThrow();
    goto LABEL_11;
  }

  v22 = v21;
  v102 = v18;
  v23 = [v10 logType];
  v24 = &selRef_tltKeyStore;
  if (v23 != 3)
  {
    v24 = &selRef_appSthKeyStore;
  }

  v25 = *v24;
  v117 = v22;
  v26 = [v22 v25];
  v27 = objc_allocWithZone(TransparencyConsistencyProofVerifier);
  v101 = v26;
  v28 = [v27 initWithTrustedKeyStore:v26];
  [a1 setVerifier:v28];

  ConsistencyProofResponse.startRevision.getter();
  isa = Int64._bridgeToObjectiveC()().super.super.isa;
  [a1 setStartRevision:isa];

  [a1 setForwards:1];
  result = [a1 startSlh];
  if (!result)
  {
    __break(1u);
    goto LABEL_66;
  }

  v30 = result;
  sub_100033178(0, &qword_100152A98, off_1001312E8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v32 = [ObjCClassFromMetadata signedTypeWithObject:v30];

  result = [a1 endSlh];
  if (!result)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v33 = result;
  v34 = [ObjCClassFromMetadata signedTypeWithObject:result];

  sub_100061CE4(v111);
  sub_100061CE4(&v113);
  v100 = v34;
  sub_10002EF90(&v107);
  v98 = *(&v108 + 1);
  if (*(&v108 + 1))
  {
    sub_1000331C0(&v107, v103);
    sub_10002533C(&v107, &qword_100152D88, &unk_100103DC0);
    v36 = v104;
    v37 = v105;
    sub_100026F6C(v103, v104);
    (*(v37 + 64))(v111, v36, v37);
    v38 = *v8;
    sub_10002763C(v8);
    sub_100024E14(v103);
  }

  else
  {
    sub_10002533C(&v107, &qword_100152D88, &unk_100103DC0);
    v38 = 0;
  }

  v99 = v32;
  result = [a1 proofHashesArray];
  if (result)
  {
    v39 = result;
    v40 = [result count];

    v4 = v102;
    if (v40 < 1)
    {
      sub_100033178(0, &qword_100152DC8, off_1001312D8);
      sub_100035B60(v99, v100);
    }

    else
    {
      sub_1000586EC();
    }

    if (!v98)
    {
      goto LABEL_42;
    }

    if (v38 > 1)
    {
      if (v38 != 3)
      {
        if (v38 == 2)
        {
          ConsistencyProofResponse.startRevision.getter();
          if ((v53 & 1) == 0)
          {

            sub_1000270C0(v111);
            sub_1000270C0(&v113);

            return (v3 & 1);
          }

          if (qword_100156F00 != -1)
          {
            swift_once();
          }

          v54 = type metadata accessor for Logger();
          v55 = sub_100025AE0(v54, qword_10015D168);
          sub_100027114(v111, &v107);
          v98 = v55;
          v56 = Logger.logObject.getter();
          v57 = static os_log_type_t.info.getter();
          sub_1000270C0(v111);
          LODWORD(v97) = v57;
          v58 = v56;
          if (os_log_type_enabled(v56, v57))
          {
            v59 = swift_slowAlloc();
            v95 = v59;
            v96 = swift_slowAlloc();
            v106 = v96;
            *v59 = 136315138;
            v107 = v111[0];
            v108 = v111[1];
            v109 = v111[2];
            v110 = v112;
            sub_100027114(v111, v103);
            sub_100027584();
            v60 = dispatch thunk of CustomStringConvertible.description.getter();
            v62 = v61;
            v64 = *(&v109 + 1);
            v63 = v110;

            sub_100026FB0(v64, v63);
            v65 = sub_100021D24(v60, v62, &v106);

            v66 = v95;
            *(v95 + 1) = v65;
            _os_log_impl(&_mh_execute_header, v58, v97, "Verified TOFU consistency for %s", v66, 0xCu);
            sub_100024E14(v96);
          }

          else
          {
          }

          sub_100027114(&v113, &v107);
          v83 = Logger.logObject.getter();
          v84 = static os_log_type_t.info.getter();
          sub_1000270C0(&v113);
          if (os_log_type_enabled(v83, v84))
          {
            v85 = swift_slowAlloc();
            v97 = v85;
            v98 = swift_slowAlloc();
            v106 = v98;
            *v85 = 136315138;
            v107 = v113;
            v108 = v114;
            v109 = v115;
            v110 = v116;
            sub_100027114(&v113, v103);
            sub_100027584();
            v86 = dispatch thunk of CustomStringConvertible.description.getter();
            v88 = v87;
            v89 = *(&v109 + 1);
            v90 = v110;

            sub_100026FB0(v89, v90);
            v91 = sub_100021D24(v86, v88, &v106);

            v92 = v97;
            *(v97 + 1) = v91;
            _os_log_impl(&_mh_execute_header, v83, v84, "Verified consistency for %s", v92, 0xCu);
            sub_100024E14(v98);
          }

          sub_10002EF90(&v107);
          if (*(&v108 + 1))
          {
            sub_1000331C0(&v107, v103);
            sub_10002533C(&v107, &qword_100152D88, &unk_100103DC0);
            v93 = v104;
            v94 = v105;
            sub_100026F6C(v103, v104);
            (*(v94 + 32))(v111, 1, v93, v94);
            sub_100024E14(v103);
          }

          else
          {
            sub_10002533C(&v107, &qword_100152D88, &unk_100103DC0);
          }

LABEL_52:
          sub_10002EF90(&v107);
          if (*(&v108 + 1))
          {
            sub_1000331C0(&v107, v103);
            sub_10002533C(&v107, &qword_100152D88, &unk_100103DC0);
            v81 = v104;
            v82 = v105;
            sub_100026F6C(v103, v104);
            (*(v82 + 32))(&v113, 1, v81, v82);

            sub_1000270C0(v111);
            sub_1000270C0(&v113);

            sub_100024E14(v103);
          }

          else
          {

            sub_1000270C0(v111);
            sub_1000270C0(&v113);

            sub_10002533C(&v107, &qword_100152D88, &unk_100103DC0);
          }

          return (v3 & 1);
        }

        goto LABEL_42;
      }
    }

    else if (v38)
    {
      if (v38 == 1)
      {
        if (qword_100156F00 != -1)
        {
          swift_once();
        }

        v41 = type metadata accessor for Logger();
        sub_100025AE0(v41, qword_10015D168);
        sub_100027114(&v113, &v107);
        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.info.getter();
        sub_1000270C0(&v113);
        if (!os_log_type_enabled(v42, v43))
        {
          goto LABEL_51;
        }

        v44 = swift_slowAlloc();
        v97 = v44;
        v98 = swift_slowAlloc();
        v106 = v98;
        *v44 = 136315138;
        v107 = v113;
        v108 = v114;
        v109 = v115;
        v110 = v116;
        sub_100027114(&v113, v103);
        sub_100027584();
        v45 = dispatch thunk of CustomStringConvertible.description.getter();
        v47 = v46;
        v48 = *(&v109 + 1);
        v49 = v110;

        sub_100026FB0(v48, v49);
        v50 = sub_100021D24(v45, v47, &v106);

        v51 = v97;
        *(v97 + 1) = v50;
        v52 = "Verified consistency for %s";
LABEL_50:
        _os_log_impl(&_mh_execute_header, v42, v43, v52, v51, 0xCu);
        sub_100024E14(v98);

LABEL_51:

        goto LABEL_52;
      }

LABEL_42:
      if (qword_100156F00 == -1)
      {
LABEL_43:
        v67 = type metadata accessor for Logger();
        sub_100025AE0(v67, qword_10015D168);
        v68 = Logger.logObject.getter();
        v69 = static os_log_type_t.error.getter();
        v70 = os_log_type_enabled(v68, v69);
        v71 = v100;
        if (v70)
        {
          v72 = swift_slowAlloc();
          *v72 = 0;
          _os_log_impl(&_mh_execute_header, v68, v69, "Unknown startSlh consistency verification state", v72, 2u);
        }

        sub_1000270C0(v111);
        sub_1000270C0(&v113);

        return (v3 & 1);
      }

LABEL_64:
      swift_once();
      goto LABEL_43;
    }

    if (qword_100156F00 != -1)
    {
      swift_once();
    }

    v73 = type metadata accessor for Logger();
    sub_100025AE0(v73, qword_10015D168);
    sub_100027114(&v113, &v107);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.info.getter();
    sub_1000270C0(&v113);
    if (!os_log_type_enabled(v42, v43))
    {
      goto LABEL_51;
    }

    v74 = swift_slowAlloc();
    v97 = v74;
    v98 = swift_slowAlloc();
    v106 = v98;
    *v74 = 136315138;
    v107 = v113;
    v108 = v114;
    v109 = v115;
    v110 = v116;
    sub_100027114(&v113, v103);
    sub_100027584();
    v75 = dispatch thunk of CustomStringConvertible.description.getter();
    v77 = v76;
    v78 = *(&v109 + 1);
    v79 = v110;

    sub_100026FB0(v78, v79);
    v80 = sub_100021D24(v75, v77, &v106);

    v51 = v97;
    *(v97 + 1) = v80;
    v52 = "Verified consistency for %s following split";
    goto LABEL_50;
  }

LABEL_67:
  __break(1u);
  return result;
}

void sub_100032090(void *a1)
{
  v4 = type metadata accessor for KTSWDB.SignedLogHead(0);
  __chkstk_darwin(v4 - 8);
  v6 = (&v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10002FB58(a1);
  if (v2)
  {
    return;
  }

  v7 = ConsistencyProofResponse.keyBag.getter();
  if (!v7)
  {
    sub_100032EA4();
    swift_allocError();
    *v19 = 1;
    *(v19 + 8) = 0x80;
    swift_willThrow();
    return;
  }

  v8 = v7;
  v9 = [v1 logType];
  v10 = &selRef_tltKeyStore;
  if (v9 != 3)
  {
    v10 = &selRef_appSthKeyStore;
  }

  v11 = [v8 *v10];
  v12 = objc_allocWithZone(TransparencyConsistencyProofVerifier);
  v41 = v11;
  v13 = [v12 initWithTrustedKeyStore:v11];
  [a1 setVerifier:v13];

  ConsistencyProofResponse.startRevision.getter();
  isa = Int64._bridgeToObjectiveC()().super.super.isa;
  [a1 setStartRevision:isa];

  [a1 setForwards:0];
  v15 = [a1 startSlh];
  if (!v15)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    return;
  }

  v16 = v15;
  sub_100033178(0, &qword_100152A98, off_1001312E8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = [ObjCClassFromMetadata signedTypeWithObject:v16];

  sub_100061CE4(v49);
  v20 = [a1 endSlh];
  if (!v20)
  {
    goto LABEL_25;
  }

  v21 = v20;
  v22 = [ObjCClassFromMetadata signedTypeWithObject:v20];

  sub_100061CE4(v51);
  sub_10002EF90(&v45);
  if (!*(&v46 + 1))
  {
    sub_10002533C(&v45, &qword_100152D88, &unk_100103DC0);
    sub_1000586EC();
LABEL_21:
    sub_1000270C0(v51);

    sub_1000270C0(v49);
    return;
  }

  sub_1000331C0(&v45, v42);
  sub_10002533C(&v45, &qword_100152D88, &unk_100103DC0);
  v23 = v43;
  v24 = v44;
  sub_100026F6C(v42, v43);
  (*(v24 + 64))(v51, v23, v24);
  v25 = *v6;
  sub_10002763C(v6);
  sub_100024E14(v42);
  sub_1000586EC();
  if (v25 != 1)
  {
    goto LABEL_21;
  }

  v40 = 0;
  if (qword_100156F00 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_100025AE0(v26, qword_10015D168);
  sub_100027114(v49, &v45);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.info.getter();
  sub_1000270C0(v49);
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v52 = v39;
    *v29 = 136315138;
    v45 = v49[0];
    v46 = v49[1];
    v47 = v49[2];
    v48 = v50;
    sub_100027114(v49, v42);
    sub_100027584();
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v31;
    v34 = *(&v47 + 1);
    v33 = v48;

    sub_100026FB0(v34, v33);
    v35 = sub_100021D24(v30, v32, &v52);

    *(v29 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v27, v28, "Verified consistency for %s", v29, 0xCu);
    sub_100024E14(v39);
  }

  sub_10002EF90(&v45);
  if (*(&v46 + 1))
  {
    sub_1000331C0(&v45, v42);
    sub_10002533C(&v45, &qword_100152D88, &unk_100103DC0);
    v36 = v43;
    v37 = v44;
    sub_100026F6C(v42, v43);
    v38 = v40;
    (*(v37 + 32))(v49, 1, v36, v37);
    if (v38)
    {
    }

    sub_1000270C0(v49);
    sub_1000270C0(v51);

    sub_100024E14(v42);
  }

  else
  {

    sub_1000270C0(v49);
    sub_1000270C0(v51);

    sub_10002533C(&v45, &qword_100152D88, &unk_100103DC0);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ConsistencyProofResponse.verify()()
{
  v2 = v0;
  v3 = type metadata accessor for NSFastEnumerationIterator();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v0 status] != 1)
  {
    v15 = [v0 status];
    sub_100032EA4();
    swift_allocError();
    *v16 = v15;
    *(v16 + 8) = 0;
LABEL_22:
    swift_willThrow();
    return;
  }

  v7 = ConsistencyProofResponse.expectedLogType.getter();
  if ((v7 & 0x100000000) != 0 || [v0 logType] != v7)
  {
    v17 = [v0 logType];
    v18 = ConsistencyProofResponse.expectedLogType.getter();
    v19 = v17 | (v18 << 32);
    v20 = BYTE4(v18) & 1 | 0x20;
LABEL_21:
    sub_100032EA4();
    swift_allocError();
    *v21 = v19;
    *(v21 + 8) = v20;
    goto LABEL_22;
  }

  if ([v0 logType] != 3)
  {
    v8 = ConsistencyProofResponse.expectedApplication.getter();
    v9 = [v2 application];
    if ((v8 & 0x100000000) != 0 || v9 != v8)
    {
      v30 = [v2 application];
      v31 = ConsistencyProofResponse.expectedApplication.getter();
      v19 = v30 | (v31 << 32);
      v20 = BYTE4(v31) & 1 | 0x40;
      goto LABEL_21;
    }
  }

  v38 = _swiftEmptyArrayStorage;
  v10 = [v2 responsesArray];
  if (v10)
  {
    v11 = v10;
    NSArray.makeIterator()();

    NSFastEnumerationIterator.next()();
    if (v37)
    {
      v33 = _swiftEmptyArrayStorage;
      while (1)
      {
        sub_100032F28(v36, &v35);
        sub_100033178(0, &qword_100152DA8, off_1001312D0);
        if (!swift_dynamicCast())
        {

          sub_100032EA4();
          swift_allocError();
          *v32 = 2;
          *(v32 + 8) = 0x80;
          swift_willThrow();
          (*(v4 + 8))(v6, v3);
          return;
        }

        v12 = v34;
        v13 = sub_100030DB0(v34);
        if (v1)
        {
          break;
        }

        if (v13)
        {
        }

        else
        {
          v14 = v12;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v33 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v33 = v38;
        }

        NSFastEnumerationIterator.next()();
        if (!v37)
        {
          goto LABEL_24;
        }
      }

      (*(v4 + 8))(v6, v3);
    }

    else
    {
      v33 = _swiftEmptyArrayStorage;
LABEL_24:
      (*(v4 + 8))(v6, v3);
      v22 = v33;
      if (v33 >> 62)
      {
        goto LABEL_44;
      }

      for (i = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v24 = v22 & 0xC000000000000001;
        v25 = v22 & 0xFFFFFFFFFFFFFF8;
        v26 = v22 + 32;
        while (!__OFSUB__(i--, 1))
        {
          if (v24)
          {
            v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if ((i & 0x8000000000000000) != 0)
            {
              goto LABEL_42;
            }

            if (i >= *(v25 + 16))
            {
              goto LABEL_43;
            }

            v28 = *(v26 + 8 * i);
          }

          v29 = v28;
          v22 = v2;
          sub_100032090(v28);
          if (v1)
          {

            goto LABEL_37;
          }

          if (!i)
          {
            goto LABEL_37;
          }
        }

        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        ;
      }

LABEL_37:
    }
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_100032EA4()
{
  result = qword_100152DA0;
  if (!qword_100152DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100152DA0);
  }

  return result;
}

_DWORD *sub_100032F0C@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

_OWORD *sub_100032F28(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t initializeBufferWithCopyOfBuffer for ConsistencyProofResponseError(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ConsistencyProofResponseError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7C && *(a1 + 9))
  {
    return (*a1 + 124);
  }

  v3 = ((*(a1 + 8) >> 5) & 0xFFFFFF87 | (8 * ((*(a1 + 8) >> 1) & 0xF))) ^ 0x7F;
  if (v3 >= 0x7B)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for ConsistencyProofResponseError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7B)
  {
    *(result + 8) = 0;
    *result = a2 - 124;
    if (a3 >= 0x7C)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7C)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 3) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t sub_100032FF8(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1;
  v3 = v1 >> 5;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 4);
  }
}

uint64_t sub_100033028(uint64_t result, unsigned int a2)
{
  if (a2 < 4)
  {
    *(result + 8) = *(result + 8) & 1 | (32 * a2);
  }

  else
  {
    *result = a2 - 4;
    *(result + 8) = 0x80;
  }

  return result;
}

unint64_t sub_100033064()
{
  result = qword_100152DC0;
  if (!qword_100152DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100152DC0);
  }

  return result;
}

id sub_1000330B8()
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v6 = 0;
  v2 = [v0 initWithData:isa error:&v6];

  if (v2)
  {
    v3 = v6;
  }

  else
  {
    v4 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v2;
}

uint64_t sub_100033178(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_1000331C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

Swift::Int sub_10003329C(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

Swift::Int sub_1000332E4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100033358(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_10003339C(uint64_t a1)
{
  v2 = sub_1000375B4();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000333D8(uint64_t a1)
{
  v2 = sub_1000375B4();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100033424()
{
  type metadata accessor for AssociatedObjectKey();
  result = sub_1000259C8();
  qword_100157298 = result;
  return result;
}

uint64_t sub_100033458()
{
  type metadata accessor for AssociatedObjectKey();
  result = sub_1000259C8();
  qword_1001572A8 = result;
  return result;
}

uint64_t sub_10003348C()
{
  type metadata accessor for AssociatedObjectKey();
  result = sub_1000259C8();
  qword_1001572B8 = result;
  return result;
}

uint64_t sub_1000334C0()
{
  type metadata accessor for AssociatedObjectKey();
  result = sub_1000259C8();
  qword_1001572C8 = result;
  return result;
}

uint64_t sub_1000334F4()
{
  v0 = type metadata accessor for Logger();
  sub_100027A50(v0, qword_10015D180);
  sub_100025AE0(v0, qword_10015D180);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100033574()
{
  if (qword_1001572D0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_100025AE0(v0, qword_10015D180);
}

uint64_t sub_1000335D8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1001572D0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_100025AE0(v2, qword_10015D180);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t MilestoneConsistency.startSlh.getter()
{
  if (qword_1001572A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1001572A8;
  swift_beginAccess();
  v2 = objc_getAssociatedObject(v0, (v1 + 16));
  swift_endAccess();
  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_100033178(0, &qword_100152A98, off_1001312E8);
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
    sub_10002533C(v7, &qword_100152D70, &qword_100103DB0);
    return 0;
  }
}

void (*MilestoneConsistency.startSlh.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 24) = MilestoneConsistency.startSlh.getter();
  return sub_100033844;
}

uint64_t MilestoneConsistency.verifier.getter()
{
  if (qword_100157290 != -1)
  {
    swift_once();
  }

  v1 = qword_100157298;
  swift_beginAccess();
  v2 = objc_getAssociatedObject(v0, (v1 + 16));
  swift_endAccess();
  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_100033178(0, &qword_100152DD0, off_100131300);
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
    sub_10002533C(v7, &qword_100152D70, &qword_100103DB0);
    return 0;
  }
}

void sub_1000339B4(void *a1, void *a2, void *a3, uint64_t a4)
{
  if (*a2 != -1)
  {
    v8 = a3;
    swift_once();
    a3 = v8;
  }

  v6 = *a3;
  swift_beginAccess();
  v7 = a1;
  objc_setAssociatedObject(v4, (v6 + 16), v7, 1);
  swift_endAccess();
}

void (*MilestoneConsistency.verifier.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 24) = MilestoneConsistency.verifier.getter();
  return sub_100033AC4;
}

void sub_100033AE8(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v6 = *a1;
  v7 = *(*a1 + 24);
  if (a2)
  {
    v8 = *a3;
    v9 = v7;
    if (v8 != -1)
    {
      swift_once();
    }

    v10 = v6[4];
    v11 = *a4;
    swift_beginAccess();
    v12 = v9;
    objc_setAssociatedObject(v10, (v11 + 16), v12, 1);
    swift_endAccess();

    v13 = v6[3];
  }

  else
  {
    if (*a3 != -1)
    {
      swift_once();
    }

    v14 = v6[4];
    v15 = *a4;
    swift_beginAccess();
    v13 = v7;
    objc_setAssociatedObject(v14, (v15 + 16), v13, 1);
    swift_endAccess();
  }

  free(v6);
}

double sub_100033C24@<D0>(uint64_t a1@<X8>)
{
  if (qword_1001572B0 != -1)
  {
    swift_once();
  }

  v3 = qword_1001572B8;
  swift_beginAccess();
  v4 = objc_getAssociatedObject(v1, (v3 + 16));
  swift_endAccess();
  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (!*(&v7 + 1))
  {
    sub_10002533C(v8, &qword_100152D70, &qword_100103DB0);
    goto LABEL_10;
  }

  sub_100024248(&qword_100152D80, &qword_100103DB8);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_100033D54(uint64_t a1)
{
  if (qword_1001572B0 != -1)
  {
    swift_once();
  }

  v3 = qword_1001572B8;
  sub_100025834(a1, v12, &qword_100152D88, &unk_100103DC0);
  v4 = v13;
  if (v13)
  {
    v5 = sub_100026F6C(v12, v13);
    v6 = *(v4 - 8);
    __chkstk_darwin(v5);
    v8 = &v12[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v8);
    v9 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v6 + 8))(v8, v4);
    sub_100024E14(v12);
  }

  else
  {
    v9 = 0;
  }

  swift_beginAccess();
  objc_setAssociatedObject(v1, (v3 + 16), v9, 1);
  swift_endAccess();
  swift_unknownObjectRelease();
  return sub_10002533C(a1, &qword_100152D88, &unk_100103DC0);
}

void (*sub_100033F18(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  *(v3 + 80) = v1;
  sub_100033C24(v3);
  return sub_100033F90;
}

void sub_100033F90(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_100025834(*a1, v2 + 40, &qword_100152D88, &unk_100103DC0);
    sub_100033D54(v2 + 40);
    sub_10002533C(v2, &qword_100152D88, &unk_100103DC0);
  }

  else
  {
    sub_100033D54(*a1);
  }

  free(v2);
}

uint64_t MilestoneConsistency.receiptTime.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1001572C0 != -1)
  {
    swift_once();
  }

  v3 = qword_1001572C8;
  swift_beginAccess();
  v4 = objc_getAssociatedObject(v1, (v3 + 16));
  swift_endAccess();
  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    v5 = type metadata accessor for Date();
    v6 = swift_dynamicCast();
    return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
  }

  else
  {
    sub_10002533C(v11, &qword_100152D70, &qword_100103DB0);
    v8 = type metadata accessor for Date();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }
}

uint64_t MilestoneConsistency.receiptTime.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024248(&qword_100152D90, &qword_100105620);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  if (qword_1001572C0 != -1)
  {
    swift_once();
  }

  v7 = qword_1001572C8;
  sub_100025834(a1, v6, &qword_100152D90, &qword_100105620);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  isa = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v9 + 8))(v6, v8);
  }

  swift_beginAccess();
  objc_setAssociatedObject(v2, (v7 + 16), isa, 0x303);
  swift_endAccess();
  swift_unknownObjectRelease();
  return sub_10002533C(a1, &qword_100152D90, &qword_100105620);
}

void (*MilestoneConsistency.receiptTime.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(sub_100024248(&qword_100152D90, &qword_100105620) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  MilestoneConsistency.receiptTime.getter(v4);
  return sub_100034414;
}

void sub_100034414(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    sub_100025834(*(a1 + 16), v2, &qword_100152D90, &qword_100105620);
    MilestoneConsistency.receiptTime.setter(v2);
    sub_10002533C(v3, &qword_100152D90, &qword_100105620);
  }

  else
  {
    MilestoneConsistency.receiptTime.setter(*(a1 + 16));
  }

  free(v3);

  free(v2);
}

id MilestoneConsistency.endSlh.getter()
{
  result = MilestoneConsistency.verifier.getter();
  if (result)
  {
    v2 = result;
    v3 = [v0 milestoneSlh];
    if (v3)
    {
      v4 = v3;
      sub_100033178(0, &qword_100152A98, off_1001312E8);
      v5 = [swift_getObjCClassFromMetadata() signedTypeWithObject:v4];
      v6 = [v2 trustedKeyStore];
      v7 = [v6 signatureVerifier];

      [v5 setVerifier:v7];
      return v5;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

char *sub_1000345B0()
{
  v2 = sub_100024248(&qword_100152D90, &qword_100105620);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v75 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v75 - v13;
  v15 = MilestoneConsistency.verifier.getter();
  if (v15)
  {
    v98 = v15;
    v16 = MilestoneConsistency.startSlh.getter();
    if (v16)
    {
      v17 = v16;
      v83 = v9;
      if ([v0 hasMilestoneSlh] && (v18 = objc_msgSend(v0, "milestoneSlh")) != 0)
      {
        v19 = v18;
        v81 = v8;
        v82 = v0;
        sub_100033178(0, &qword_100152A98, off_1001312E8);
        v20 = [swift_getObjCClassFromMetadata() signedTypeWithObject:v19];
        sub_100061CE4(v92);
        if (v1)
        {
        }

        else
        {
          v80 = v17;
          v79 = v19;
          sub_100061CE4(&v94);
          v78 = v20;
          sub_100033C24(&v88);
          v25 = v80;
          if (*(&v89 + 1))
          {
            sub_1000331C0(&v88, v84);
            sub_10002533C(&v88, &qword_100152D88, &unk_100103DC0);
            v76 = v86;
            v77 = v85;
            v75[1] = sub_100026F6C(v84, v85);
            MilestoneConsistency.receiptTime.getter(v7);
            v26 = v83;
            v27 = v81;
            v28 = v83[6];
            if (v28(v7, 1, v81) == 1)
            {
              static Date.now.getter();
              if (v28(v7, 1, v27) != 1)
              {
                sub_10002533C(v7, &qword_100152D90, &qword_100105620);
              }
            }

            else
            {
              (v26[4])(v14, v7, v27);
            }

            v25 = v80;
            v31 = [v80 data];
            v32 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v34 = v33;

            v35 = sub_100061EBC();
            (v76[3])(v92, v14, v32, v34, v35, v77);
            (v83[1])(v14, v81);
            sub_100026FB0(v32, v34);
            sub_100024E14(v84);
          }

          else
          {
            sub_10002533C(&v88, &qword_100152D88, &unk_100103DC0);
          }

          sub_100033C24(&v88);
          if (*(&v89 + 1))
          {
            sub_1000331C0(&v88, v84);
            sub_10002533C(&v88, &qword_100152D88, &unk_100103DC0);
            v29 = v85;
            v30 = v86;
            sub_100026F6C(v84, v85);
            (v30[7])(v92, 1, v29, v30);
            sub_100024E14(v84);
          }

          else
          {
            sub_10002533C(&v88, &qword_100152D88, &unk_100103DC0);
          }

          sub_100033C24(&v88);
          if (*(&v89 + 1))
          {
            sub_1000331C0(&v88, v84);
            sub_10002533C(&v88, &qword_100152D88, &unk_100103DC0);
            v36 = v85;
            v77 = v86;
            v76 = sub_100026F6C(v84, v85);
            MilestoneConsistency.receiptTime.getter(v5);
            v37 = v83;
            v38 = v83[6];
            v39 = v81;
            if (v38(v5, 1, v81) == 1)
            {
              static Date.now.getter();
              if (v38(v5, 1, v39) != 1)
              {
                sub_10002533C(v5, &qword_100152D90, &qword_100105620);
              }
            }

            else
            {
              (v37[4])(v12, v5, v39);
            }

            v42 = [v78 data];
            v43 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v45 = v44;

            v46 = sub_100061EBC();
            (*(v77 + 24))(&v94, v12, v43, v45, v46, v36);
            (v83[1])(v12, v81);
            sub_100026FB0(v43, v45);
            sub_100024E14(v84);
            v25 = v80;
          }

          else
          {
            sub_10002533C(&v88, &qword_100152D88, &unk_100103DC0);
          }

          sub_100033C24(&v88);
          if (*(&v89 + 1))
          {
            sub_1000331C0(&v88, v84);
            sub_10002533C(&v88, &qword_100152D88, &unk_100103DC0);
            v40 = v85;
            v41 = v86;
            sub_100026F6C(v84, v85);
            (v41[7])(&v94, 1, v40, v41);
            sub_100024E14(v84);
          }

          else
          {
            sub_10002533C(&v88, &qword_100152D88, &unk_100103DC0);
          }

          v47 = [v98 trustedKeyStore];
          v48 = [v47 signatureVerifier];

          [v78 setVerifier:v48];
          [v25 setVerifier:v48];
          v5 = sub_1000587C8();
          sub_100033C24(&v88);
          if (*(&v89 + 1))
          {
            sub_1000331C0(&v88, v84);
            sub_10002533C(&v88, &qword_100152D88, &unk_100103DC0);
            v49 = v85;
            v50 = v86;
            sub_100026F6C(v84, v85);
            (v50[6])(v92, v5, v49, v50);
            sub_100024E14(v84);
          }

          else
          {
            sub_10002533C(&v88, &qword_100152D88, &unk_100103DC0);
          }

          v51 = v79;
          if (v5 == 1)
          {
            v83 = v48;
            if (qword_1001572D0 != -1)
            {
              swift_once();
            }

            v52 = type metadata accessor for Logger();
            v53 = sub_100025AE0(v52, qword_10015D180);
            sub_100027114(v92, &v88);
            v81 = v53;
            v54 = Logger.logObject.getter();
            LODWORD(v53) = static os_log_type_t.debug.getter();
            sub_1000270C0(v92);
            LODWORD(v77) = v53;
            if (os_log_type_enabled(v54, v53))
            {
              v55 = swift_slowAlloc();
              v56 = swift_slowAlloc();
              v87 = v56;
              *v55 = 136315138;
              v88 = v92[0];
              v89 = v92[1];
              v90 = v92[2];
              v91 = v93;
              sub_100027114(v92, v84);
              sub_100027584();
              v57 = dispatch thunk of CustomStringConvertible.description.getter();
              v59 = v58;
              v61 = *(&v90 + 1);
              v60 = v91;

              sub_100026FB0(v61, v60);
              v62 = sub_100021D24(v57, v59, &v87);

              *(v55 + 4) = v62;
              _os_log_impl(&_mh_execute_header, v54, v77, "Verified signature for %s", v55, 0xCu);
              sub_100024E14(v56);
            }

            v5 = sub_1000587C8();
            sub_100033C24(&v88);
            if (*(&v89 + 1))
            {
              sub_1000331C0(&v88, v84);
              sub_10002533C(&v88, &qword_100152D88, &unk_100103DC0);
              v64 = v85;
              v65 = v86;
              sub_100026F6C(v84, v85);
              (v65[6])(&v94, v5, v64, v65);
              sub_100024E14(v84);
            }

            else
            {
              sub_10002533C(&v88, &qword_100152D88, &unk_100103DC0);
            }

            sub_100027114(&v94, &v88);
            v66 = Logger.logObject.getter();
            v67 = static os_log_type_t.debug.getter();
            sub_1000270C0(&v94);
            if (!os_log_type_enabled(v66, v67))
            {
              sub_1000270C0(v92);

              sub_1000270C0(&v94);
              return v5;
            }

            v68 = swift_slowAlloc();
            v82 = swift_slowAlloc();
            v87 = v82;
            *v68 = 136315138;
            v88 = v94;
            v89 = v95[0];
            v90 = v95[1];
            v91 = v96;
            sub_100027114(&v94, v84);
            sub_100027584();
            v69 = dispatch thunk of CustomStringConvertible.description.getter();
            v71 = v70;
            v72 = *(&v90 + 1);
            v73 = v91;

            sub_100026FB0(v72, v73);
            v74 = sub_100021D24(v69, v71, &v87);

            *(v68 + 4) = v74;
            _os_log_impl(&_mh_execute_header, v66, v67, "Verified signature for %s", v68, 0xCu);
            sub_100024E14(v82);

            sub_1000270C0(v92);
            sub_1000270C0(&v94);

            v63 = &v97;
          }

          else
          {

            sub_1000270C0(&v94);
            sub_1000270C0(v92);

            v63 = v95 + 1;
          }
        }
      }

      else
      {
        sub_100027170();
        swift_allocError();
        *v22 = 2;
        swift_willThrow();
      }
    }

    else
    {
      sub_100027170();
      swift_allocError();
      *v23 = 1;
      swift_willThrow();
    }
  }

  else
  {
    sub_100027170();
    swift_allocError();
    *v21 = 0;
    swift_willThrow();
  }

  return v5;
}

void sub_100035B78()
{
  v2 = type metadata accessor for KTSWDB.SignedLogHead(0);
  __chkstk_darwin(v2 - 8);
  v4 = (&v130 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = MilestoneConsistency.verifier.getter();
  if (!v5)
  {
    sub_100027170();
    swift_allocError();
    *v14 = 0;
    swift_willThrow();
    return;
  }

  v6 = v5;
  v7 = MilestoneConsistency.startSlh.getter();
  if (!v7)
  {
    sub_100027170();
    swift_allocError();
    *v16 = 1;
    swift_willThrow();

    return;
  }

  v8 = v7;
  if (![v0 hasMilestoneSlh] || (v9 = objc_msgSend(v0, "milestoneSlh")) == 0)
  {
    sub_100027170();
    swift_allocError();
    *v15 = 2;
    swift_willThrow();

    return;
  }

  v10 = v9;
  v157 = v0;
  sub_100033178(0, &qword_100152A98, off_1001312E8);
  v11 = [swift_getObjCClassFromMetadata() signedTypeWithObject:v10];
  v12 = [v6 trustedKeyStore];
  v13 = [v12 signatureVerifier];

  [v11 setVerifier:v13];
  [v8 setVerifier:v13];
  sub_100061CE4(&v148);
  if (v1)
  {

    return;
  }

  v137 = v6;
  sub_100061CE4(&v152);
  v135 = v8;
  v136 = v11;
  v133 = v10;
  v134 = v13;
  if (!v150)
  {
    sub_100033C24(&v142);
    if (*(&v143 + 1))
    {
      sub_1000331C0(&v142, &v139);
      sub_10002533C(&v142, &qword_100152D88, &unk_100103DC0);
      v18 = v140;
      v17 = v141;
      sub_100026F6C(&v139, v140);
      (*(v17 + 32))(&v148, 1, v18, v17);
      sub_100024E14(&v139);
    }

    else
    {
      sub_10002533C(&v142, &qword_100152D88, &unk_100103DC0);
    }

    if (qword_1001572D0 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100025AE0(v19, qword_10015D180);
    sub_100027114(&v148, &v142);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();
    sub_1000270C0(&v148);
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      v147 = v132;
      *v22 = 136315138;
      v142 = v148;
      v143 = v149;
      v144 = v150;
      v145 = v151;
      sub_100027114(&v148, &v139);
      sub_100027584();
      v131 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      v26 = *(&v144 + 1);
      v25 = v145;

      sub_100026FB0(v26, v25);
      v27 = sub_100021D24(v131, v24, &v147);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v20, v21, "Verified consistency for %s", v22, 0xCu);
      sub_100024E14(v132);
    }
  }

  sub_100033C24(&v142);
  v28 = *(&v143 + 1);
  if (*(&v143 + 1))
  {
    sub_1000331C0(&v142, &v139);
    sub_10002533C(&v142, &qword_100152D88, &unk_100103DC0);
    v29 = v140;
    v30 = v141;
    sub_100026F6C(&v139, v140);
    (*(v30 + 64))(&v148, v29, v30);
    v31 = *v4;
    sub_10002763C(v4);
    sub_100024E14(&v139);
  }

  else
  {
    sub_10002533C(&v142, &qword_100152D88, &unk_100103DC0);
    v31 = 0;
  }

  v32 = [v157 proofHashesArray];
  if (v32)
  {
    *&v142 = 0;
    v33 = v28;
    v34 = v32;
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();

    v28 = v33;
    if (v142)
    {
      if (*(v142 + 16))
      {
        v35 = sub_100058624(v142, v135, v136);

        v36 = v35;
        v37 = v134;
        goto LABEL_28;
      }
    }
  }

  v36 = sub_100037104(v135, v136);
  v37 = v134;
LABEL_28:
  if (v36 == 1)
  {
    if (!v28)
    {
      goto LABEL_66;
    }

    if (v31 <= 1)
    {
      if (v31)
      {
        if (v31 == 1)
        {
          if (qword_1001572D0 != -1)
          {
            swift_once();
          }

          v38 = type metadata accessor for Logger();
          sub_100025AE0(v38, qword_10015D180);
          sub_100027114(&v152, &v142);
          v39 = Logger.logObject.getter();
          v40 = static os_log_type_t.info.getter();
          sub_1000270C0(&v152);
          if (os_log_type_enabled(v39, v40))
          {
            v41 = swift_slowAlloc();
            v132 = swift_slowAlloc();
            v147 = v132;
            *v41 = 136315138;
            v142 = v152;
            v143 = v153;
            v144 = v154;
            v145 = v155;
            sub_100027114(&v152, &v139);
            sub_100027584();
            v42 = dispatch thunk of CustomStringConvertible.description.getter();
            v44 = v43;
            v45 = *(&v144 + 1);
            v46 = v145;

            sub_100026FB0(v45, v46);
            v47 = sub_100021D24(v42, v44, &v147);

            *(v41 + 4) = v47;
            _os_log_impl(&_mh_execute_header, v39, v40, "Verified consistency for %s", v41, 0xCu);
            sub_100024E14(v132);
          }

          sub_100033C24(&v142);
          v48 = &selRef_initWithValidationFunction_rawValues_count_;
          v49 = &selRef_initWithValidationFunction_rawValues_count_;
          if (!*(&v143 + 1))
          {
            sub_10002533C(&v142, &qword_100152D88, &unk_100103DC0);
LABEL_79:
            v97 = v133;
            v37 = v134;
            goto LABEL_80;
          }

LABEL_65:
          sub_1000331C0(&v142, &v139);
          sub_10002533C(&v142, &qword_100152D88, &unk_100103DC0);
          v98 = v140;
          v99 = v141;
          sub_100026F6C(&v139, v140);
          (*(v99 + 32))(&v152, 1, v98, v99);
          sub_100024E14(&v139);
          goto LABEL_79;
        }

LABEL_66:
        if (qword_1001572D0 != -1)
        {
          swift_once();
        }

        v100 = type metadata accessor for Logger();
        sub_100025AE0(v100, qword_10015D180);
        v101 = Logger.logObject.getter();
        v102 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v101, v102))
        {
          v103 = swift_slowAlloc();
          *v103 = 0;
          _os_log_impl(&_mh_execute_header, v101, v102, "Unknown startSlh consistency verification state", v103, 2u);
        }

        v97 = v133;
        v48 = &selRef_initWithValidationFunction_rawValues_count_;
        v49 = &selRef_initWithValidationFunction_rawValues_count_;
        goto LABEL_80;
      }

LABEL_60:
      if (qword_1001572D0 != -1)
      {
        swift_once();
      }

      v86 = type metadata accessor for Logger();
      sub_100025AE0(v86, qword_10015D180);
      sub_100027114(&v152, &v142);
      v87 = Logger.logObject.getter();
      v88 = static os_log_type_t.info.getter();
      sub_1000270C0(&v152);
      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        v132 = swift_slowAlloc();
        v147 = v132;
        *v89 = 136315138;
        v142 = v152;
        v143 = v153;
        v144 = v154;
        v145 = v155;
        sub_100027114(&v152, &v139);
        sub_100027584();
        v90 = dispatch thunk of CustomStringConvertible.description.getter();
        v92 = v91;
        v93 = *(&v144 + 1);
        v94 = v145;

        v95 = v93;
        v37 = v134;
        sub_100026FB0(v95, v94);
        v96 = sub_100021D24(v90, v92, &v147);

        *(v89 + 4) = v96;
        _os_log_impl(&_mh_execute_header, v87, v88, "Verified consistency for %s following split", v89, 0xCu);
        sub_100024E14(v132);
      }

      v97 = v133;
      v48 = &selRef_initWithValidationFunction_rawValues_count_;
      v49 = &selRef_initWithValidationFunction_rawValues_count_;
      sub_100033C24(&v142);
      if (!*(&v143 + 1))
      {
        sub_10002533C(&v142, &qword_100152D88, &unk_100103DC0);
LABEL_80:
        sub_100033C24(&v139);
        if (v140)
        {
          sub_100037608(&v139, &v142);
          v125 = v48[330];
          v126 = v137;
          v127 = [v137 v125];
          v128 = [v127 v49[275]];

          v129 = v136;
          sub_100025F18(&v142, v136, v128);
          sub_100024E14(&v142);

          sub_1000270C0(&v152);
LABEL_82:
          sub_1000270C0(&v148);
          return;
        }

        sub_1000270C0(&v152);
        sub_1000270C0(&v148);
        sub_10002533C(&v139, &qword_100152D88, &unk_100103DC0);
        return;
      }

      goto LABEL_65;
    }

    if (v31 != 2)
    {
      if (v31 != 3)
      {
        goto LABEL_66;
      }

      goto LABEL_60;
    }

    if (qword_1001572D0 != -1)
    {
      swift_once();
    }

    v104 = type metadata accessor for Logger();
    sub_100025AE0(v104, qword_10015D180);
    sub_100027114(&v148, &v142);
    v105 = Logger.logObject.getter();
    v106 = static os_log_type_t.info.getter();
    sub_1000270C0(&v148);
    if (os_log_type_enabled(v105, v106))
    {
      v107 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      v147 = v132;
      *v107 = 136315138;
      v142 = v148;
      v143 = v149;
      v144 = v150;
      v145 = v151;
      sub_100027114(&v148, &v139);
      sub_100027584();
      v108 = dispatch thunk of CustomStringConvertible.description.getter();
      v110 = v109;
      v111 = *(&v144 + 1);
      v112 = v145;

      sub_100026FB0(v111, v112);
      v113 = sub_100021D24(v108, v110, &v147);

      *(v107 + 4) = v113;
      _os_log_impl(&_mh_execute_header, v105, v106, "Consistency for start %s still pending due to disjoint proof", v107, 0xCu);
      sub_100024E14(v132);
    }

    sub_100027114(&v152, &v142);
    v114 = Logger.logObject.getter();
    v115 = static os_log_type_t.info.getter();
    sub_1000270C0(&v152);
    if (os_log_type_enabled(v114, v115))
    {
      v116 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      v147 = v117;
      *v116 = 136315138;
      v142 = v152;
      v143 = v153;
      v144 = v154;
      v145 = v155;
      sub_100027114(&v152, &v139);
      sub_100027584();
      v118 = dispatch thunk of CustomStringConvertible.description.getter();
      v120 = v119;
      v121 = *(&v144 + 1);
      v122 = v145;

      sub_100026FB0(v121, v122);
      v123 = sub_100021D24(v118, v120, &v147);

      *(v116 + 4) = v123;
      _os_log_impl(&_mh_execute_header, v114, v115, "Consistency for end %s still pending due to disjoint proof", v116, 0xCu);
      sub_100024E14(v117);
    }

    sub_100027170();
    v50 = swift_allocError();
    *v124 = 6;
    swift_willThrow();
    v52 = 0;
    v37 = v134;
  }

  else
  {
    sub_100027170();
    v50 = swift_allocError();
    *v51 = 7;
    swift_willThrow();
    v52 = 0;
  }

  v147 = v50;
  swift_errorRetain();
  sub_100024248(&qword_100152630, &qword_100103210);
  if (!swift_dynamicCast() || v146 != 6)
  {

    if (qword_1001572D0 != -1)
    {
      swift_once();
    }

    v68 = type metadata accessor for Logger();
    sub_100025AE0(v68, qword_10015D180);
    sub_100027114(&v152, &v142);
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.error.getter();
    sub_1000270C0(&v152);
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v130 = v71;
      v131 = swift_slowAlloc();
      v147 = v131;
      *v71 = 136446210;
      v142 = v152;
      v143 = v153;
      v144 = v154;
      v145 = v155;
      sub_100027114(&v152, &v139);
      sub_100027584();
      v132 = 0;
      v72 = dispatch thunk of CustomStringConvertible.description.getter();
      v73 = v70;
      v75 = v74;
      v76 = *(&v144 + 1);
      v77 = v145;

      v78 = v76;
      v37 = v134;
      sub_100026FB0(v78, v77);
      v79 = sub_100021D24(v72, v75, &v147);

      v80 = v130;
      *(v130 + 1) = v79;
      _os_log_impl(&_mh_execute_header, v69, v73, "Failed to verify consistency for %{public}s", v80, 0xCu);
      sub_100024E14(v131);

      v52 = v132;
    }

    else
    {
    }

    v81 = v133;
    sub_100033C24(&v142);
    if (*(&v143 + 1))
    {
      sub_1000331C0(&v142, &v139);
      sub_10002533C(&v142, &qword_100152D88, &unk_100103DC0);
      v83 = v140;
      v82 = v141;
      v157 = sub_100026F6C(&v139, v140);
      v84 = v136;
      sub_100061CE4(v156);
      if (v52)
      {

        sub_1000270C0(&v152);

        sub_1000270C0(&v148);
        sub_100024E14(&v139);
        return;
      }

      (*(v82 + 32))(v156, 0, v83, v82);
      sub_1000270C0(v156);
      sub_100024E14(&v139);
    }

    else
    {
      sub_10002533C(&v142, &qword_100152D88, &unk_100103DC0);
    }

    v85 = v136;
    swift_willThrow();

    sub_1000270C0(&v152);
    goto LABEL_82;
  }

  if (qword_1001572D0 != -1)
  {
    swift_once();
  }

  v53 = type metadata accessor for Logger();
  sub_100025AE0(v53, qword_10015D180);
  sub_100027114(&v152, &v142);
  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.info.getter();
  sub_1000270C0(&v152);
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v138 = v57;
    *v56 = 136315138;
    v142 = v152;
    v143 = v153;
    v144 = v154;
    v145 = v155;
    sub_100027114(&v152, &v139);
    sub_100027584();
    v58 = dispatch thunk of CustomStringConvertible.description.getter();
    v60 = v59;
    v61 = *(&v144 + 1);
    v62 = v145;

    v63 = v61;
    v37 = v134;
    sub_100026FB0(v63, v62);
    v64 = sub_100021D24(v58, v60, &v138);

    *(v56 + 4) = v64;
    _os_log_impl(&_mh_execute_header, v54, v55, "Consistency for %s still pending due to disjoint proof", v56, 0xCu);
    sub_100024E14(v57);
  }

  v65 = v133;
  v66 = v136;
  sub_100027170();
  swift_allocError();
  *v67 = 6;
  swift_willThrow();

  sub_1000270C0(&v152);
  sub_1000270C0(&v148);
}

char *MilestoneConsistency.verify()()
{
  v3 = objc_autoreleasePoolPush();
  if ([v0 hasMilestoneSlh])
  {
    v4 = sub_1000345B0();
    if (!v1)
    {
      v2 = v4;
      if (v4 == 1)
      {
        sub_100035B78();
      }
    }
  }

  else
  {
    sub_100027170();
    swift_allocError();
    *v5 = 2;
    swift_willThrow();
  }

  objc_autoreleasePoolPop(v3);
  return v2;
}

uint64_t sub_100037104(void *a1, void *a2)
{
  v3 = [a1 parsedLogHead];
  if (!v3)
  {
    goto LABEL_10;
  }

  v4 = v3;
  v5 = [a2 parsedLogHead];
  if (!v5)
  {

LABEL_10:
    sub_100027170();
    swift_allocError();
    *v16 = 5;
    swift_willThrow();
    return 1;
  }

  v6 = v5;
  v7 = [v4 treeId];
  if (v7 != [v6 treeId])
  {
    goto LABEL_24;
  }

  v8 = [v4 application];
  if (v8 != [v6 application])
  {
    goto LABEL_24;
  }

  v9 = [v4 logType];
  if (v9 != [v6 logType])
  {
    goto LABEL_24;
  }

  v10 = [v4 logSize];
  if (v10 != [v6 logSize])
  {
LABEL_23:
    if (![v4 logSize])
    {
LABEL_25:

      return 1;
    }

LABEL_24:
    sub_100027170();
    swift_allocError();
    *v23 = 3;
    swift_willThrow();
    goto LABEL_25;
  }

  v11 = [v4 logHeadHash];
  if (v11)
  {
    v12 = v11;
    v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0xF000000000000000;
  }

  v17 = [v6 logHeadHash];
  if (!v17)
  {
    if (v15 >> 60 == 15)
    {
LABEL_17:

      sub_10002BEE0(v13, v15);
      return 1;
    }

    v19 = 0;
    v21 = 0xF000000000000000;
LABEL_22:
    sub_10002BEE0(v13, v15);
    sub_10002BEE0(v19, v21);
    goto LABEL_23;
  }

  v18 = v17;
  v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  if (v15 >> 60 == 15)
  {
    if (v21 >> 60 != 15)
    {
      goto LABEL_22;
    }

    goto LABEL_17;
  }

  if (v21 >> 60 == 15)
  {
    goto LABEL_22;
  }

  sub_100037620(v13, v15);
  sub_100037620(v19, v21);
  v22 = sub_100027800(v13, v15, v19, v21);
  sub_10002BEE0(v19, v21);
  sub_10002BEE0(v19, v21);
  sub_10002BEE0(v13, v15);
  sub_10002BEE0(v13, v15);
  if (!v22)
  {
    goto LABEL_23;
  }

  return 1;
}

unint64_t sub_1000373F0()
{
  result = qword_100152DD8;
  if (!qword_100152DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100152DD8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MilestoneConsistencyError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MilestoneConsistencyError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000375B4()
{
  result = qword_100152DE0;
  if (!qword_100152DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100152DE0);
  }

  return result;
}

uint64_t sub_100037608(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_100037620(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100027004(result, a2);
  }

  return result;
}

uint64_t sub_100037638()
{
  v0 = type metadata accessor for Logger();
  sub_100027A50(v0, qword_10015D198);
  sub_100025AE0(v0, qword_10015D198);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000376B8()
{
  if (qword_100157560 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_100025AE0(v0, qword_10015D198);
}

uint64_t sub_10003771C@<X0>(uint64_t a1@<X8>)
{
  if (qword_100157560 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_100025AE0(v2, qword_10015D198);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100037804(__int128 *a1, __int128 *a2)
{
  v4 = swift_allocObject();
  sub_100037608(a1, v4 + 16);
  sub_100037608(a2, v4 + 56);
  return v4;
}

uint64_t sub_100037860(__int128 *a1, __int128 *a2)
{
  sub_100037608(a1, v2 + 16);
  sub_100037608(a2, v2 + 56);
  return v2;
}

uint64_t sub_100037898(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_100024248(&qword_100152F00, &qword_1001042C0);
  v2[4] = swift_task_alloc();
  v3 = type metadata accessor for URL();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();

  return _swift_task_switch(sub_10003799C, 0, 0);
}

uint64_t sub_10003799C()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  URLRequest.url.getter();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10002533C(v0[4], &qword_100152F00, &qword_1001042C0);
    sub_1000383C4();
    swift_allocError();
    *v4 = 1;
    *(v4 + 8) = 1;
    swift_willThrow();

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = v0[3];
    (*(v0[6] + 32))(v0[8], v0[4], v0[5]);
    v8 = v7[10];
    v9 = v7[11];
    sub_100026F6C(v7 + 7, v8);
    v12 = (*(v9 + 24) + **(v9 + 24));
    v10 = swift_task_alloc();
    v0[9] = v10;
    *v10 = v0;
    v10[1] = sub_100037BC4;
    v11 = v0[8];

    return v12(v11, v8, v9);
  }
}

uint64_t sub_100037BC4()
{

  return _swift_task_switch(sub_100037CC0, 0, 0);
}

uint64_t sub_100037CC0()
{
  v24 = v0;
  if (qword_100157560 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = type metadata accessor for Logger();
  sub_100025AE0(v5, qword_10015D198);
  (*(v4 + 16))(v1, v2, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[6];
  v9 = v0[7];
  v11 = v0[5];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 136315138;
    v22 = URL.description.getter();
    v15 = v14;
    v16 = *(v10 + 8);
    v16(v9, v11);
    v17 = sub_100021D24(v22, v15, &v23);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Fetching config bag from %s", v12, 0xCu);
    sub_100024E14(v13);
  }

  else
  {

    v16 = *(v10 + 8);
    v16(v9, v11);
  }

  v0[10] = v16;
  v18 = SWTURLSession.shared.unsafeMutableAddressor();
  v19 = *v18;
  v0[11] = *v18;
  v20 = (*v19 + 96) & 0xFFFFFFFFFFFFLL | 0xE282000000000000;
  v0[12] = *(*v19 + 96);
  v0[13] = v20;

  return _swift_task_switch(sub_100037EF4, v19, 0);
}

uint64_t sub_100037EF4()
{
  *(v0 + 112) = (*(v0 + 96))();

  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v1[1] = sub_100037FB0;
  v2 = *(v0 + 16);

  return NSURLSession.data(for:delegate:)(v2, 0);
}

uint64_t sub_100037FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 112);
  v5[16] = a1;
  v5[17] = a2;
  v5[18] = a3;
  v5[19] = v3;

  if (v3)
  {
    v7 = sub_100038328;
  }

  else
  {
    v7 = sub_1000380E4;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000380E4()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    v3 = [v1 statusCode];
    v4 = *(v0 + 144);
    v5 = *(v0 + 40);
    if (v3 == 200)
    {
      (*(v0 + 80))(*(v0 + 64), *(v0 + 40));

      v6 = *(v0 + 8);
      v7 = *(v0 + 128);
      v8 = *(v0 + 136);

      return v6(v7, v8);
    }

    v18 = *(v0 + 128);
    v17 = *(v0 + 136);
    v19 = *(v0 + 80);
    v20 = *(v0 + 64);
    v21 = [v2 statusCode];
    sub_1000383C4();
    swift_allocError();
    *v22 = v21;
    *(v22 + 8) = 0;
    swift_willThrow();

    sub_100026FB0(v18, v17);
    v19(v20, v5);
  }

  else
  {
    v10 = *(v0 + 136);
    v11 = *(v0 + 144);
    v12 = *(v0 + 128);
    v13 = *(v0 + 80);
    v14 = *(v0 + 64);
    v15 = *(v0 + 40);
    sub_1000383C4();
    swift_allocError();
    *v16 = 0;
    *(v16 + 8) = 1;
    swift_willThrow();
    sub_100026FB0(v12, v10);

    v13(v14, v15);
  }

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_100038328()
{
  (*(v0 + 80))(*(v0 + 64), *(v0 + 40));

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1000383C4()
{
  result = qword_100152DE8;
  if (!qword_100152DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100152DE8);
  }

  return result;
}

uint64_t sub_1000385A4(uint64_t a1, const void *a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = type metadata accessor for URLRequest();
  v3[3] = v5;
  v3[4] = *(v5 - 8);
  v6 = swift_task_alloc();
  v3[5] = v6;
  v3[6] = _Block_copy(a2);
  static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = swift_task_alloc();
  v3[7] = v7;
  *v7 = v3;
  v7[1] = sub_1000386D0;

  return sub_100037898(v6);
}

uint64_t sub_1000386D0(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v8 = *v3;
  v7 = *v3;
  v9 = *v3;

  (*(v7[4] + 8))(v7[5], v7[3]);

  if (v4)
  {
    isa = _convertErrorToNSError(_:)();

    v11 = isa;
    v12 = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100026FB0(a1, a2);
    v12 = isa;
    v11 = 0;
  }

  v13 = isa;
  v14 = v8[6];
  v14[2](v14, v12, v11);

  _Block_release(v14);

  v15 = v9[1];

  return v15();
}

uint64_t sub_1000388BC(double a1)
{
  v2 = v1;
  v4 = sub_100024248(&unk_100152620, &unk_1001031E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  if (qword_100157560 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100025AE0(v7, qword_10015D198);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    *(v10 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v8, v9, "triggerConfigBagFetch(delayInSeconds: %f)", v10, 0xCu);
  }

  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v2;

  sub_10001C660(0, 0, v6, &unk_100104160, v12);
}

uint64_t sub_100038ABC()
{
  v1 = *(v0 + 16);
  v2 = v1[5];
  v3 = v1[6];
  sub_100026F6C(v1 + 2, v2);
  v6 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_100038BE4;

  return v6(v2, v3);
}

uint64_t sub_100038BE4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_100038D24(uint64_t a1, char a2)
{
  if (a2)
  {
    if (a1)
    {
      return 0xD000000000000014;
    }

    else
    {
      return 0xD000000000000010;
    }
  }

  else
  {
    _StringGuts.grow(_:)(32);

    v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v3);

    return 0xD00000000000001ELL;
  }
}

uint64_t sub_100038E10()
{
  sub_100024E14((v0 + 16));
  sub_100024E14((v0 + 56));
  return v0;
}

uint64_t sub_100038E38()
{
  sub_100024E14((v0 + 16));
  sub_100024E14((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_100038E78(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1000258C8;

  return v6();
}

uint64_t sub_100038F60(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_10001CF5C;

  return v7();
}

uint64_t sub_100039048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100024248(&unk_100152620, &unk_1001031E0);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_1000398A4(a3, v23 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_10002533C(v11, &unk_100152620, &unk_1001031E0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = String.utf8CString.getter() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_10002533C(a3, &unk_100152620, &unk_1001031E0);

    return v21;
  }

LABEL_8:
  sub_10002533C(a3, &unk_100152620, &unk_1001031E0);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_100039334(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100039A14;

  return v6(a1);
}

uint64_t sub_10003942C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003946C()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000258C8;

  return sub_100038A9C(v3, v4, v5, v2);
}

uint64_t initializeBufferWithCopyOfBuffer for SWTConfigBagFetcher.SWTConfigBagFetcher(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SWTConfigBagFetcher.SWTConfigBagFetcher(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for SWTConfigBagFetcher.SWTConfigBagFetcher(uint64_t result, int a2, int a3)
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

uint64_t sub_10003958C(uint64_t a1)
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

uint64_t sub_1000395A8(uint64_t result, int a2)
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

uint64_t sub_1000395D8()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100039620()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10001CF5C;

  return sub_1000385A4(v2, v3, v4);
}

uint64_t sub_1000396D8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000258C8;

  return sub_100038E78(v2, v3, v4);
}

uint64_t sub_100039798()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000397D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000258C8;

  return sub_100038F60(a1, v4, v5, v6);
}

uint64_t sub_1000398A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100024248(&unk_100152620, &unk_1001031E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100039914()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003994C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000258C8;

  return sub_100039334(a1, v4);
}

uint64_t sub_100039A24@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SWTDeps(0) + 20);
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_100039AF8(__int128 *a1)
{
  v3 = *(type metadata accessor for SWTDeps(0) + 28);
  sub_100024E14((v1 + v3));

  return sub_100037608(a1, v1 + v3);
}

uint64_t sub_100039B94()
{
  type metadata accessor for SWTDeps(0);

  return swift_unknownObjectRetain();
}

uint64_t sub_100039BC8()
{
  type metadata accessor for SWTDeps(0);

  return swift_unknownObjectRetain();
}

uint64_t sub_100039BFC()
{
  type metadata accessor for SWTDeps(0);
}

id sub_100039C30()
{
  v1 = *(v0 + *(type metadata accessor for SWTDeps(0) + 44));

  return v1;
}

uint64_t sub_100039C64()
{
  type metadata accessor for SWTDeps(0);
}

uint64_t sub_100039C98(uint64_t a1)
{
  v3 = *(type metadata accessor for SWTDeps(0) + 48);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_100039D20()
{
  type metadata accessor for SWTDeps(0);
}

uint64_t sub_100039D54(uint64_t a1)
{
  v3 = *(type metadata accessor for SWTDeps(0) + 52);

  *(v1 + v3) = a1;
  return result;
}

id sub_100039DDC()
{
  v1 = *(v0 + *(type metadata accessor for SWTDeps(0) + 56));

  return v1;
}

void sub_100039E10(uint64_t a1)
{
  v3 = *(type metadata accessor for SWTDeps(0) + 56);

  *(v1 + v3) = a1;
}

uint64_t sub_100039ED0(__int128 *a1)
{
  v3 = *(type metadata accessor for SWTDeps(0) + 60);
  sub_100024E14((v1 + v3));

  return sub_100037608(a1, v1 + v3);
}

uint64_t sub_100039FA4(__int128 *a1)
{
  v3 = *(type metadata accessor for SWTDeps(0) + 64);
  sub_100024E14((v1 + v3));

  return sub_100037608(a1, v1 + v3);
}

uint64_t sub_10003A040()
{
  v0 = type metadata accessor for Logger();
  sub_100027A50(v0, qword_10015D1B0);
  sub_100025AE0(v0, qword_10015D1B0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10003A0B8()
{
  if (qword_100157670 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_100025AE0(v0, qword_10015D1B0);
}

uint64_t sub_10003A11C@<X0>(uint64_t a1@<X8>)
{
  if (qword_100157670 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_100025AE0(v2, qword_10015D1B0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_10003A1C4()
{
  sub_100024248(&qword_100152F08, &qword_1001042C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100104290;
  *(inited + 32) = 0xD000000000000018;
  *(inited + 40) = 0x800000010010A850;
  v1 = sub_100033178(0, &qword_100152F10, NSString_ptr);
  *(inited + 48) = v1;
  *(inited + 56) = 0xD000000000000013;
  *(inited + 64) = 0x800000010010A870;
  *(inited + 72) = v1;
  *(inited + 80) = 0xD000000000000019;
  *(inited + 88) = 0x800000010010A890;
  *(inited + 96) = v1;
  *(inited + 104) = 0xD000000000000011;
  *(inited + 112) = 0x800000010010A8B0;
  v2 = sub_100033178(0, &qword_100152F18, NSNumber_ptr);
  *(inited + 120) = v2;
  *(inited + 128) = 0xD00000000000001CLL;
  *(inited + 136) = 0x800000010010A8D0;
  *(inited + 144) = v2;
  v3 = sub_100044270(inited);
  swift_setDeallocating();
  sub_100024248(&qword_100152F20, &qword_1001042D0);
  swift_arrayDestroy();
  return v3;
}

uint64_t sub_10003A358(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 616) = a3;
  *(v3 + 440) = a1;
  *(v3 + 448) = a2;
  v4 = type metadata accessor for URL();
  *(v3 + 456) = v4;
  *(v3 + 464) = *(v4 - 8);
  *(v3 + 472) = swift_task_alloc();
  v5 = type metadata accessor for URL.DirectoryHint();
  *(v3 + 480) = v5;
  *(v3 + 488) = *(v5 - 8);
  *(v3 + 496) = swift_task_alloc();
  sub_100024248(&qword_100152F00, &qword_1001042C0);
  *(v3 + 504) = swift_task_alloc();
  *(v3 + 512) = swift_task_alloc();

  return _swift_task_switch(sub_10003A4BC, 0, 0);
}

uint64_t sub_10003A4BC()
{
  v54 = v0;
  v1 = *(v0 + 616);
  v2 = *(v0 + 440);
  v3 = type metadata accessor for SWTDeps(0);
  *(v0 + 520) = v3;
  v4 = v3[17];
  sub_100024248(&qword_100152F08, &qword_1001042C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100104290;
  *(inited + 32) = 0xD000000000000018;
  *(inited + 40) = 0x800000010010A850;
  v6 = sub_100033178(0, &qword_100152F10, NSString_ptr);
  *(inited + 48) = v6;
  *(inited + 56) = 0xD000000000000013;
  *(inited + 64) = 0x800000010010A870;
  *(inited + 72) = v6;
  *(inited + 80) = 0xD000000000000019;
  *(inited + 88) = 0x800000010010A890;
  *(inited + 96) = v6;
  *(inited + 104) = 0xD000000000000011;
  *(inited + 112) = 0x800000010010A8B0;
  v7 = sub_100033178(0, &qword_100152F18, NSNumber_ptr);
  *(inited + 120) = v7;
  *(inited + 128) = 0xD00000000000001CLL;
  *(inited + 136) = 0x800000010010A8D0;
  *(inited + 144) = v7;
  v8 = sub_100044270(inited);
  *(v0 + 528) = v8;
  swift_setDeallocating();
  sub_100024248(&qword_100152F20, &qword_1001042D0);
  swift_arrayDestroy();
  *(v2 + v4) = v8;
  v9 = v3[5];
  *(v0 + 608) = v9;
  URL.init(fileURLWithPath:)();
  v50 = v9;
  if (v1)
  {
    v10 = 1;
  }

  else
  {
    v12 = *(v0 + 488);
    v11 = *(v0 + 496);
    v13 = *(v0 + 480);
    *(v0 + 416) = 0x696C71732E747773;
    *(v0 + 424) = 0xEA00000000006574;
    (*(v12 + 104))(v11, enum case for URL.DirectoryHint.inferFromPath(_:), v13);
    sub_10004436C();
    URL.appending<A>(path:directoryHint:)();
    (*(v12 + 8))(v11, v13);
    v10 = 0;
  }

  v15 = *(v0 + 504);
  v14 = *(v0 + 512);
  v17 = *(v0 + 440);
  v16 = *(v0 + 448);
  (*(*(v0 + 464) + 56))(v14, v10, 1, *(v0 + 456));
  v18 = v3[6];
  sub_1000443C0(v14, v17 + v18);
  v19 = type metadata accessor for ReachabilityTracker(0);
  *(v0 + 536) = v19;
  v20 = sub_10001EDEC();
  v22 = sub_10001EE60(v20, v21);
  *(v0 + 544) = v22;
  v23 = (v17 + v3[7]);
  v23[3] = v19;
  v23[4] = &off_1001334C0;
  v49 = v23;
  *v23 = v22;
  type metadata accessor for SWTConfigBagFetcher();
  sub_1000331C0(v16, v0 + 296);
  v52 = v19;
  v53 = &off_1001334C0;
  *&v51 = v22;
  swift_retain_n();
  *(v17 + v3[8]) = sub_100037804((v0 + 296), &v51);
  v24 = [objc_allocWithZone(TransparencySettings) init];
  v25 = [objc_allocWithZone(SWTSettings) initWithTransparencySettings:v24];
  *(v0 + 552) = v25;

  *(v17 + v3[9]) = v25;
  *(v0 + 560) = type metadata accessor for SWTFollowUp(0);
  v26 = sub_10007AF4C();
  *(v0 + 568) = v26;
  *(v17 + v3[10]) = v26;
  type metadata accessor for KTSwiftDB();
  sub_100025834(v17 + v18, v15, &qword_100152F00, &qword_1001042C0);
  v27 = KTSwiftDB.__allocating_init(url:)(v15);
  *(v0 + 576) = v27;
  if (v27)
  {
    *(v0 + 584) = type metadata accessor for KTSWDB();

    v29 = KTSWDB.__allocating_init(db:)(v28);
    *(v0 + 592) = v29;
    v35 = v0 + 16;
    v36 = v0 + 232;
    v38 = *(v0 + 440);
    v37 = *(v0 + 448);
    *(v38 + v3[13]) = v29;
    v39 = objc_opt_self();

    v40 = [v39 logger];
    *(v0 + 600) = v40;
    *(v38 + v3[14]) = v40;
    v41 = type metadata accessor for SWTCloudTelemetry();
    v42 = swift_allocObject();
    v43 = (v38 + v3[15]);
    v43[3] = v41;
    v43[4] = &off_100134150;
    *v43 = v42;
    v44 = v3[16];
    *(v0 + 612) = v44;
    sub_1000331C0(v37, v38 + v44);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 432;
    *(v0 + 24) = sub_10003ABC0;
    v45 = swift_continuation_init();
    *(v0 + 288) = sub_100024248(&qword_100152F38, &qword_1001042E0);
    *(v0 + 232) = _NSConcreteStackBlock;
    *(v0 + 240) = 1107296256;
    *(v0 + 248) = sub_10003B194;
    *(v0 + 256) = &unk_100133FA8;
    *(v0 + 264) = v45;
    v46 = v25;
    v47 = v40;
    [v46 initializeATEnvironmentWithCompletion:v36];

    return _swift_continuation_await(v35);
  }

  else
  {
    v48 = v25;

    type metadata accessor for SWTStateMachineError(0);
    sub_10004617C(&qword_100152F30, type metadata accessor for SWTStateMachineError, &unk_100107268);
    swift_allocError();
    sub_100025834(v17 + v18, v30, &qword_100152F00, &qword_1001042C0);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v31 = *(v0 + 464);
    v32 = *(v0 + 456);
    sub_100024E14(*(v0 + 448));
    (*(v31 + 8))(v2 + v50, v32);
    sub_10002533C(v17 + v18, &qword_100152F00, &qword_1001042C0);
    sub_100024E14(v49);

    v33 = *(v0 + 8);

    return v33();
  }
}

uint64_t sub_10003ABC0()
{

  return _swift_task_switch(sub_10003ACA0, 0, 0);
}

uint64_t sub_10003ACA0()
{
  v48 = v0;
  v1 = *(v0 + 432);

  if (v1 > 9)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  if (((1 << v1) & 0x25E) == 0)
  {
    if (((1 << v1) & 0x1A0) != 0)
    {
      if (qword_100157670 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_100025AE0(v8, qword_10015D1B0);
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.default.getter();
      v9 = os_log_type_enabled(v3, v4);
      v6 = 5;
      if (v9)
      {
        v39 = 5;
        v7 = "Using PrivateCloudCompute Primary";
        goto LABEL_12;
      }

LABEL_13:
      v39 = v6;
      goto LABEL_14;
    }

    return _assertionFailure(_:_:file:line:flags:)();
  }

  if (qword_100157670 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100025AE0(v2, qword_10015D1B0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = 6;
  if (!v5)
  {
    goto LABEL_13;
  }

  v39 = 6;
  v7 = "Using PrivateCloudCompute Internal";
LABEL_12:
  v10 = swift_slowAlloc();
  *v10 = 0;
  _os_log_impl(&_mh_execute_header, v3, v4, v7, v10, 2u);

LABEL_14:
  v34 = *(v0 + 592);
  v35 = *(v0 + 612);
  v33 = *(v0 + 584);
  v38 = *(v0 + 600);
  v36 = *(v0 + 560);
  v37 = *(v0 + 568);
  v11 = *(v0 + 552);
  v29 = *(v0 + 536);
  v30 = *(v0 + 544);
  v28 = *(v0 + 608);
  v12 = *(v0 + 520);
  v13 = *(v0 + 464);
  v31 = *(v0 + 456);
  v32 = *(v0 + 472);
  v40 = *(v0 + 448);
  v14 = *(v0 + 440);

  v15 = v11;
  v16 = [v15 transparencySettings];
  v17 = objc_allocWithZone(TransparencyConfigBag);
  sub_100024248(&qword_100152F40, qword_1001042E8);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  URL._bridgeToObjectiveC()(v19);
  v21 = v20;
  v22 = [v17 initWithRequiredKeys:isa settings:v16 directory:v20 configApp:2 swtSettings:v15];

  swift_unknownObjectRelease();
  *(v14 + *(v12 + 44)) = v22;
  v23 = type metadata accessor for SWTKeyBagFetcher();
  sub_1000331C0(v40, v0 + 336);
  v46 = v29;
  v47 = &off_1001334C0;
  *&v45 = v30;
  v24 = sub_1000A9A6C(v22, (v0 + 336), &v45);
  *v14 = v39;
  type metadata accessor for SWTPublicKeyBag(0);
  (*(v13 + 16))(v32, v14 + v28, v31);
  v42 = v33;
  v43 = sub_10004617C(&qword_100152F48, type metadata accessor for KTSWDB, &unk_100105078);
  *&v41 = v34;
  v44[3] = v23;
  v44[4] = &off_1001369F0;
  v44[0] = v24;
  sub_1000331C0(v14 + v35, v0 + 376);
  v46 = v36;
  v47 = &off_100135AD8;
  *&v45 = v37;

  v25 = sub_10007F9F4(v39, v15, v32, &v41, v44, v0 + 376, &v45, v38);

  sub_100024E14(v40);
  *(v14 + *(v12 + 48)) = v25;

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_10003B194(uint64_t a1, uint64_t a2)
{
  **(*(*sub_100026F6C((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return _swift_continuation_resume();
}

uint64_t sub_10003B25C()
{
  type metadata accessor for SWTDeps(0);
  v3 = *(v0 + 8);
  v1 = swift_unknownObjectRetain();

  return v3(v1);
}

uint64_t sub_10003B2D4(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  return _swift_task_switch(sub_10003B2F8, 0, 0);
}

uint64_t sub_10003B2F8()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  v4 = type metadata accessor for SWTKeyBagFetcher();
  v5 = type metadata accessor for SWTDeps(0);
  sub_1000331C0(v1 + *(v5 + 64), v0 + 16);
  sub_1000331C0(v1 + *(v5 + 28), v0 + 56);
  v6 = sub_1000A9A6C(v2, (v0 + 16), (v0 + 56));
  v3[3] = v4;
  v3[4] = &off_1001369F0;
  *v3 = v6;
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10003B3E0()
{
  v1 = *(v0 + 16);
  ATLogProofs.VerificationResult.result.getter();
  *(v1 + 24) = &type metadata for ActualMilestoneFetcher;
  *(v1 + 32) = &off_100134F10;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10003B474()
{
  v1 = *(v0 + 16);
  ATLogProofs.VerificationResult.result.getter();
  *(v1 + 24) = &type metadata for ActualConsistencyFetcher;
  *(v1 + 32) = &off_100134480;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10003B4E8@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for SWTDeps(0) + 40));
  a1[3] = type metadata accessor for SWTFollowUp(0);
  a1[4] = &off_100135AD8;
  *a1 = v3;
}

uint64_t sub_10003B544(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_10003B564, 0, 0);
}

uint64_t sub_10003B564()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = type metadata accessor for SWTDeps(0);
  sub_1000331C0(v1 + *(v3 + 64), v2);
  v4 = v0[1];

  return v4();
}

uint64_t sub_10003B5D8(uint64_t a1)
{
  v1 = type metadata accessor for UUID();
  v20 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for JSONEncoder.OutputFormatting();
  __chkstk_darwin(v4);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  sub_100024248(&qword_100152F50, &qword_100104318);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1001042A0;
  static JSONEncoder.OutputFormatting.sortedKeys.getter();
  v21 = v5;
  sub_10004617C(&qword_100152F58, &type metadata accessor for JSONEncoder.OutputFormatting, &protocol conformance descriptor for JSONEncoder.OutputFormatting);
  sub_100024248(&qword_100152F60, &unk_100104320);
  sub_100045F80(&qword_100152F68, &qword_100152F60, &unk_100104320);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  dispatch thunk of JSONEncoder.outputFormatting.setter();
  type metadata accessor for TransparencySWIssue();
  sub_10004617C(&qword_100152F70, &type metadata accessor for TransparencySWIssue, &protocol conformance descriptor for TransparencySWIssue);
  v6 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v21 = 0;
  v22 = 0xE000000000000000;
  v7 = v6;
  v9 = v8;
  _StringGuts.grow(_:)(20);

  v21 = 0x70736E6172545753;
  v22 = 0xEF2D79636E657261;
  v10._countAndFlagsBits = TransparencySWIssue.issue.getter();
  String.append(_:)(v10);

  v11._countAndFlagsBits = 45;
  v11._object = 0xE100000000000000;
  String.append(_:)(v11);
  UUID.init()();
  v12 = UUID.uuidString.getter();
  v14 = v13;
  (*(v20 + 8))(v3, v1);
  v15._countAndFlagsBits = v12;
  v15._object = v14;
  String.append(_:)(v15);

  v16 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v18 = String._bridgeToObjectiveC()();

  [v16 writeIssueReport:isa filename:v18];

  sub_100026FB0(v7, v9);
}

uint64_t sub_10003BA6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for URL();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_10003BB20@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(v2 + *(a1 + 40));
  a2[3] = type metadata accessor for SWTFollowUp(0);
  a2[4] = &off_100135AD8;
  *a2 = v4;
}

uint64_t sub_10003BBEC(uint64_t a1)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = a1;
  return _swift_task_switch(sub_10003BC0C, 0, 0);
}

uint64_t sub_10003BC0C()
{
  v3 = *(v0 + 8);
  v1 = swift_unknownObjectRetain();

  return v3(v1);
}

uint64_t sub_10003BC7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = v3;
  v4[15] = a3;
  v4[12] = a1;
  v4[13] = a2;
  return _swift_task_switch(sub_10003BCA0, 0, 0);
}

uint64_t sub_10003BCA0()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v4 = *(v0 + 96);
  v3 = *(v0 + 104);
  v5 = type metadata accessor for SWTKeyBagFetcher();
  sub_1000331C0(v2 + *(v1 + 64), v0 + 16);
  sub_1000331C0(v2 + *(v1 + 28), v0 + 56);
  v6 = sub_1000A9A6C(v3, (v0 + 16), (v0 + 56));
  v4[3] = v5;
  v4[4] = &off_1001369F0;
  *v4 = v6;
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10003BD5C(uint64_t a1, uint64_t a2)
{
  v3[3] = v2;
  v3[4] = a2;
  v3[2] = a1;
  return _swift_task_switch(sub_10003BD80, 0, 0);
}

uint64_t sub_10003BD80()
{
  sub_1000331C0(v0[3] + *(v0[4] + 64), v0[2]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_10003BE04(char *a1, char *a2)
{
  if (qword_1001048A0[*a1] == qword_1001048A0[*a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

Swift::Int sub_10003BE6C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10003BEC8(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10003BF08(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10003BF60@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100044480(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10003BFC4@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100044480(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10003C004(uint64_t a1)
{
  v2 = sub_10004642C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003C040(uint64_t a1)
{
  v2 = sub_10004642C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10003C07C(void *a1)
{
  v4 = a1;
  v45 = _swiftEmptyArrayStorage;
  v5 = &selRef_initWithValidationFunction_rawValues_count_;
  v6 = [a1 userInfo];
  v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v7 + 16))
  {

    goto LABEL_7;
  }

  v10 = sub_1000435B4(v8, v9);
  v12 = v11;

  if ((v12 & 1) == 0)
  {
LABEL_7:

    goto LABEL_8;
  }

  sub_100025058(*(v7 + 56) + 32 * v10, v44);

  sub_100033178(0, &qword_100153480, NSError_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  v13 = v43;
  v14 = sub_10003C07C(v43);
  v16 = v15;
  v18 = v17;
  v42 = v19;
  v2 = sub_1000434A8(0, 1, 1, _swiftEmptyArrayStorage);
  v1 = *(v2 + 2);
  v20 = *(v2 + 3);
  v3 = v1 + 1;
  if (v1 >= v20 >> 1)
  {
    goto LABEL_29;
  }

  while (1)
  {

    *(v2 + 2) = v3;
    v21 = &v2[32 * v1];
    *(v21 + 4) = v14;
    *(v21 + 5) = v16;
    *(v21 + 6) = v18;
    *(v21 + 7) = v42;
    v45 = v2;
LABEL_8:
    v22 = [v4 v5[341]];
    v13 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (!*(v13 + 16))
    {

      goto LABEL_34;
    }

    v39 = v4;
    v25 = sub_1000435B4(v23, v24);
    v27 = v26;

    if ((v27 & 1) == 0)
    {

      goto LABEL_33;
    }

    sub_100025058(*(v13 + 56) + 32 * v25, v44);

    sub_100024248(&qword_100153498, &qword_100104698);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_33;
    }

    v28 = v43;
    if (v43 >> 62)
    {
      break;
    }

    v14 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_31;
    }

LABEL_13:
    v18 = 0;
    v41 = v28 & 0xFFFFFFFFFFFFFF8;
    v42 = v28 & 0xC000000000000001;
    v16 = _swiftEmptyArrayStorage;
    v40 = v28;
    while (1)
    {
      if (v42)
      {
        v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v20 = *(v41 + 16);
        if (v18 >= v20)
        {
          goto LABEL_28;
        }

        v29 = *(v28 + 8 * v18 + 32);
      }

      v5 = v29;
      v1 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      v4 = sub_10003C07C(v29);
      v2 = v30;
      v3 = v31;
      v33 = v32;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_1000434A8(0, *(v16 + 2) + 1, 1, v16);
      }

      v13 = *(v16 + 2);
      v34 = *(v16 + 3);
      v5 = (v13 + 1);
      if (v13 >= v34 >> 1)
      {
        v16 = sub_1000434A8((v34 > 1), v13 + 1, 1, v16);
      }

      *(v16 + 2) = v5;
      v35 = &v16[32 * v13];
      *(v35 + 4) = v4;
      *(v35 + 5) = v2;
      *(v35 + 6) = v3;
      *(v35 + 7) = v33;
      ++v18;
      v28 = v40;
      if (v1 == v14)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    v2 = sub_1000434A8((v20 > 1), v3, 1, v2);
  }

  v1 = v43;
  v14 = _CocoaArrayWrapper.endIndex.getter();
  v28 = v43;
  if (v14)
  {
    goto LABEL_13;
  }

LABEL_31:
  v16 = _swiftEmptyArrayStorage;
LABEL_32:

  sub_10003C4C8(v16);
LABEL_33:
  v4 = v39;
LABEL_34:
  v36 = [v4 domain];
  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  [v4 code];
  if (!*(v45 + 2))
  {
  }

  return v37;
}

uint64_t sub_10003C4C8(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1000434A8(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10003C5BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = a5;
  v15 = a4;
  v7 = sub_100024248(&qword_1001534B0, &qword_100104738);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13 - v9;
  sub_100026F6C(a1, a1[3]);
  sub_10004642C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v19 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v12 = v14;
    v18 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = v12;
    v17 = 2;
    sub_100024248(&qword_1001534B8, &qword_100104740);
    sub_100046480(&qword_1001534C0, sub_100046340, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_10003C7F0@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1000444CC(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_10003C840()
{
  v0 = type metadata accessor for Logger();
  sub_100027A50(v0, qword_100157680);
  sub_100025AE0(v0, qword_100157680);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10003C8CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_100024248(&unk_100153470, &qword_100104668);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for EventValue();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_10002533C(a1, &unk_100153470, &qword_100104668);
    sub_1000436E4(a2, a3, v9);

    return sub_10002533C(v9, &unk_100153470, &qword_100104668);
  }

  else
  {
    (*(v11 + 32))(v13, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_100043DC0(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_10003CAA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  sub_100024248(&qword_100153490, &qword_100104690);
  v6[8] = swift_task_alloc();

  return _swift_task_switch(sub_10003CB44, 0, 0);
}

uint64_t sub_10003CB44()
{
  v2 = v0[7];
  v1 = v0[8];
  type metadata accessor for Reporter();
  v3 = TransparencyTeamID.getter();
  v5 = v4;
  v0[9] = v4;
  swift_beginAccess();
  v6 = *(v2 + 16);
  v0[10] = v6;
  v7 = type metadata accessor for TransportConfiguration();
  (*(*(v7 - 8) + 56))(v1, 1, 1, v7);

  v8 = swift_task_alloc();
  v0[11] = v8;
  *v8 = v0;
  v8[1] = sub_10003CC80;
  v9 = v0[8];
  v10 = v0[5];
  v11 = v0[6];

  return static Reporter.report(teamID:eventType:event:transportConfiguration:)(v3, v5, v10, v11, v6, v9);
}

uint64_t sub_10003CC80()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  *(*v1 + 96) = v0;

  sub_10002533C(v2, &qword_100153490, &qword_100104690);

  if (v0)
  {

    return _swift_task_switch(sub_10003CE40, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_10003CE40()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10003CEA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100024248(&unk_100152620, &unk_1001031E0);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_100025834(a3, v22 - v9, &unk_100152620, &unk_1001031E0);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_10002533C(v10, &unk_100152620, &unk_1001031E0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_10002533C(a3, &unk_100152620, &unk_1001031E0);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10002533C(a3, &unk_100152620, &unk_1001031E0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_10003D198(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 112) = a1;
}

uint64_t sub_10003D1E0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Date();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_10003D24C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15swtransparencyd16TriggerInterface_lastNotifyReady;
  swift_beginAccess();
  return sub_100025834(v1 + v3, a1, &qword_100152D90, &qword_100105620);
}

uint64_t sub_10003D2B4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15swtransparencyd16TriggerInterface_lastNotifyReady;
  swift_beginAccess();
  sub_100044E8C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_10003D374(uint64_t a1)
{
  v4 = *(*v1 + 112);

  return v4(v2);
}

uint64_t sub_10003D3E8()
{
  v1 = (*(**(v0 + 16) + 104))();
  if (v1)
  {
    *(v0 + 24) = *(v1 + 152);

    v2 = swift_task_alloc();
    *(v0 + 32) = v2;
    *v2 = v0;
    v2[1] = sub_1000467A4;

    return sub_100093974(2);
  }

  else
  {
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_10003D514()
{
  v1 = (*(**(v0 + 16) + 104))();
  if (v1)
  {
    *(v0 + 24) = *(v1 + 152);

    v2 = swift_task_alloc();
    *(v0 + 32) = v2;
    *v2 = v0;
    v2[1] = sub_10003D620;

    return sub_100093974(1);
  }

  else
  {
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_10003D620()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10003D730()
{
  v1[2] = v0;
  sub_100024248(&qword_100152D90, &qword_100105620);
  v1[3] = swift_task_alloc();
  v1[4] = swift_task_alloc();
  v2 = type metadata accessor for Date();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();

  return _swift_task_switch(sub_10003D834, v0, 0);
}

uint64_t sub_10003D834()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 32);
  (*(**(v0 + 16) + 128))();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10002533C(*(v0 + 32), &qword_100152D90, &qword_100105620);
  }

  else
  {
    v5 = *(v0 + 48);
    v4 = *(v0 + 56);
    v6 = *(v0 + 40);
    (*(v5 + 32))(v4, *(v0 + 32), v6);
    Date.timeIntervalSinceNow.getter();
    v8 = v7;
    (*(v5 + 8))(v4, v6);
    if (v8 <= 0.0 && v8 >= -600.0)
    {
      goto LABEL_9;
    }
  }

  v10 = *(v0 + 40);
  v11 = *(v0 + 48);
  v13 = *(v0 + 16);
  v12 = *(v0 + 24);
  Date.init()();
  (*(v11 + 56))(v12, 0, 1, v10);
  (*(*v13 + 136))(v12);
  notify_post("com.apple.transparency.swt-ready");
LABEL_9:

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_10003D9EC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_10003DA0C, v1, 0);
}

uint64_t sub_10003DA0C()
{
  (*(**(v0 + 24) + 128))();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10003DA8C()
{

  sub_10002533C(v0 + OBJC_IVAR____TtC15swtransparencyd16TriggerInterface_lastNotifyReady, &qword_100152D90, &qword_100105620);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_10003DAD4()
{

  sub_10002533C(v0 + OBJC_IVAR____TtC15swtransparencyd16TriggerInterface_lastNotifyReady, &qword_100152D90, &qword_100105620);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10003DB2C()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  v1 = OBJC_IVAR____TtC15swtransparencyd16TriggerInterface_lastNotifyReady;
  v2 = type metadata accessor for Date();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  return v0;
}

uint64_t sub_10003DBB0()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  v1 = OBJC_IVAR____TtC15swtransparencyd16TriggerInterface_lastNotifyReady;
  v2 = type metadata accessor for Date();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  return v0;
}

uint64_t sub_10003DC24()
{
  v4 = (*(**v0 + 160) + **(**v0 + 160));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1000258C8;

  return v4();
}

uint64_t sub_10003DD38()
{
  v4 = (*(**v0 + 168) + **(**v0 + 168));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1000258C8;

  return v4();
}

uint64_t sub_10003DE4C()
{
  v4 = (*(**v0 + 176) + **(**v0 + 176));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10001CF5C;

  return v4();
}

uint64_t sub_10003DF60@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15swtransparencyd20SWTransparencyDaemon_logger;
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void *sub_10003DFEC()
{
  v1 = OBJC_IVAR____TtC15swtransparencyd20SWTransparencyDaemon_service;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_10003E038(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15swtransparencyd20SWTransparencyDaemon_service;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_10003E148(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15swtransparencyd20SWTransparencyDaemon_trigger;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_10003E200()
{
  swift_allocObject();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10003E2A0;

  return sub_10003E3A0();
}

uint64_t sub_10003E2A0(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_10003E3A0()
{
  v1[18] = v0;
  v1[19] = type metadata accessor for SWTDeps(0);
  v1[20] = swift_task_alloc();
  v2 = type metadata accessor for Logger();
  v1[21] = v2;
  v1[22] = *(v2 - 8);
  v1[23] = swift_task_alloc();

  return _swift_task_switch(sub_10003E490, 0, 0);
}

uint64_t sub_10003E490()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  v4 = v0[18];
  v5 = OBJC_IVAR____TtC15swtransparencyd20SWTransparencyDaemon_service;
  v0[24] = OBJC_IVAR____TtC15swtransparencyd20SWTransparencyDaemon_service;
  *(v4 + v5) = 0;
  v6 = type metadata accessor for TriggerInterface(0);
  v7 = swift_allocObject();
  v0[25] = v7;
  swift_defaultActor_initialize();
  *(v7 + 112) = 0;
  v8 = OBJC_IVAR____TtC15swtransparencyd16TriggerInterface_lastNotifyReady;
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 56))(v7 + v8, 1, 1, v9);
  Logger.init(subsystem:category:)();
  v10 = OBJC_IVAR____TtC15swtransparencyd20SWTransparencyDaemon_logger;
  v0[26] = OBJC_IVAR____TtC15swtransparencyd20SWTransparencyDaemon_logger;
  (*(v2 + 32))(v4 + v10, v1, v3);
  v0[5] = v6;
  v0[6] = &off_100134160;
  v0[2] = v7;

  v11 = swift_task_alloc();
  v0[27] = v11;
  *v11 = v0;
  v11[1] = sub_10003E654;
  v12 = v0[20];

  return sub_10003A358(v12, (v0 + 2), 0);
}

uint64_t sub_10003E654()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_10003E9C4;
  }

  else
  {
    v2 = sub_10003E768;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10003E768()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[19];
  v4 = v0[18];
  v5 = OBJC_IVAR____TtC15swtransparencyd20SWTransparencyDaemon_deps;
  sub_100044FA0(v0[20], v4 + OBJC_IVAR____TtC15swtransparencyd20SWTransparencyDaemon_deps);
  swift_beginAccess();
  v6 = *(v4 + v1);
  *(v4 + v1) = 0;

  *(v4 + OBJC_IVAR____TtC15swtransparencyd20SWTransparencyDaemon_trigger) = v2;
  type metadata accessor for SWT2SM();
  v0[10] = v3;
  v0[11] = &off_1001340C0;
  v7 = sub_100045004(v0 + 7);
  sub_100044EFC(v4 + v5, v7);

  v8 = sub_1000AB864(v0 + 7);
  v0[29] = v8;
  *(v4 + OBJC_IVAR____TtC15swtransparencyd20SWTransparencyDaemon_stateMachine) = v8;
  v9 = OBJC_IVAR____TtC15swtransparencyd20SWTransparencyDaemon_trigger;
  swift_beginAccess();
  v10 = *(v4 + v9);
  v0[30] = v10;
  v11 = (*v10 + 152) & 0xFFFFFFFFFFFFLL | 0xED95000000000000;
  v0[31] = *(*v10 + 152);
  v0[32] = v11;

  return _swift_task_switch(sub_10003E8C4, v10, 0);
}

uint64_t sub_10003E8C4()
{
  (*(v0 + 248))(*(v0 + 232));

  return _swift_task_switch(sub_10003E944, 0, 0);
}

uint64_t sub_10003E944()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 144);

  return v1(v2);
}

uint64_t sub_10003E9C4()
{
  v1 = v0[26];
  v2 = v0[22];
  v3 = v0[21];
  v4 = v0[18];

  (*(v2 + 8))(v4 + v1, v3);

  type metadata accessor for SWTransparencyDaemon(0);
  swift_deallocPartialClassInstance();

  v5 = v0[1];

  return v5();
}

uint64_t sub_10003EABC()
{
  v1 = sub_100024248(&unk_100152620, &unk_1001031E0);
  __chkstk_darwin(v1 - 8);
  v3 = &v7 - v2;
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;

  sub_10003CEA4(0, 0, v3, &unk_100104388, v5);
}

uint64_t sub_10003EBE4()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC15swtransparencyd20SWTransparencyDaemon_stateMachine);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_100038BE4;

  return sub_10003EC88(v1);
}

uint64_t sub_10003EC88(uint64_t a1)
{
  v2[95] = v1;
  v2[89] = a1;
  v3 = type metadata accessor for URL.DirectoryHint();
  v2[101] = v3;
  v2[107] = *(v3 - 8);
  v2[108] = swift_task_alloc();
  v4 = type metadata accessor for URL();
  v2[109] = v4;
  v2[110] = *(v4 - 8);
  v2[111] = swift_task_alloc();
  v2[112] = swift_task_alloc();
  sub_100024248(&qword_100152D90, &qword_100105620);
  v2[113] = swift_task_alloc();
  sub_100024248(&qword_100153448, &qword_100104650);
  v2[114] = swift_task_alloc();
  v5 = type metadata accessor for TransparencySWSysdiagnose();
  v2[115] = v5;
  v2[116] = *(v5 - 8);
  v2[117] = swift_task_alloc();
  v6 = type metadata accessor for TransparencySWSysdiagnose.StateMachine();
  v2[118] = v6;
  v2[119] = *(v6 - 8);
  v2[120] = swift_task_alloc();

  return _swift_task_switch(sub_10003EEDC, 0, 0);
}

uint64_t sub_10003EEDC()
{

  swift_asyncLet_begin();
  v1 = *(v0 + 960);

  return _swift_asyncLet_get_throwing(v0 + 16, v1, sub_10003EF88, v0 + 656);
}

uint64_t sub_10003EF88()
{
  *(v1 + 968) = v0;
  if (v0)
  {
    v2 = sub_10003F628;
  }

  else
  {
    v2 = sub_10003EFBC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10003EFBC()
{
  v56 = v0;
  v1 = v0[119];
  v2 = v0[118];
  v3 = v0[114];
  v4 = v0[113];
  v53 = v0[121];
  v5 = v0[108];
  v6 = v0[107];
  v7 = v0[101];
  (*(v1 + 16))(v3, v0[120], v2);
  (*(v1 + 56))(v3, 0, 1, v2);
  Date.init()();
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 56))(v4, 0, 1, v8);
  TransparencySWSysdiagnose.init(stateMachine:fallback:)();
  type metadata accessor for SWTDeps(0);
  v0[87] = 0xD000000000000012;
  v0[88] = 0x800000010010AAE0;
  (*(v6 + 104))(v5, enum case for URL.DirectoryHint.inferFromPath(_:), v7);
  sub_10004436C();
  URL.appending<A>(path:directoryHint:)();
  (*(v6 + 8))(v5, v7);
  v9 = TransparencySWSysdiagnose.json()();
  if (v53)
  {
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
      _os_log_impl(&_mh_execute_header, v13, v14, "sysdiagnose write error %@", v15, 0xCu);
      sub_10002533C(v16, &qword_100153450, &unk_100104140);
    }

    v18 = v0[117];
    v19 = v0[116];
    v20 = v0[115];
    v21 = v0[112];
    v22 = v0[110];
    v23 = v0[109];

    (*(v22 + 8))(v21, v23);
    (*(v19 + 8))(v18, v20);
    v24 = sub_10003F734;
    v25 = v0[120];
    v26 = v0 + 2;
    v27 = v0 + 96;
  }

  else
  {
    v11 = v9;
    v12 = v10;
    Data.write(to:options:)();
    v28 = v0[112];
    v29 = v0[111];
    v30 = v0[110];
    v31 = v0[109];
    sub_100026FB0(v11, v12);
    (*(v30 + 16))(v29, v28, v31);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    v34 = os_log_type_enabled(v32, v33);
    v35 = v0[117];
    v36 = v0[116];
    v37 = v0[115];
    v38 = v0[112];
    v39 = v0[111];
    v40 = v0[110];
    v41 = v0[109];
    if (v34)
    {
      v54 = v0[115];
      v42 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v55 = v51;
      *v42 = 136315138;
      sub_10004617C(&unk_100153458, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v50 = v33;
      v43 = dispatch thunk of CustomStringConvertible.description.getter();
      v52 = v35;
      v45 = v44;
      v46 = *(v40 + 8);
      v46(v39, v41);
      v47 = sub_100021D24(v43, v45, &v55);

      *(v42 + 4) = v47;
      _os_log_impl(&_mh_execute_header, v32, v50, "wrote fallback sysdiagnose to: %s", v42, 0xCu);
      sub_100024E14(v51);

      v46(v38, v41);
      (*(v36 + 8))(v52, v54);
    }

    else
    {

      v48 = *(v40 + 8);
      v48(v39, v41);
      v48(v38, v41);
      (*(v36 + 8))(v35, v37);
    }

    v24 = sub_10003F53C;
    v25 = v0[120];
    v26 = v0 + 2;
    v27 = v0 + 102;
  }

  return _swift_asyncLet_finish(v26, v25, v24, v27);
}

uint64_t sub_10003F558()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10003F664()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10003F750(uint64_t a1, uint64_t a2)
{
  v6 = (*(*a2 + 200) + **(*a2 + 200));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001CF5C;

  return v6(a1);
}

xpc_activity_state_t sub_10003F878(_xpc_activity_s *a1)
{
  v2 = v1;
  v4 = sub_100024248(&unk_100152620, &unk_1001031E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  result = xpc_activity_get_state(a1);
  if (result == 2)
  {
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 134217984;
      *(v10 + 4) = 2;
      _os_log_impl(&_mh_execute_header, v8, v9, "Milestone refresh XPC activity triggered, state: %ld", v10, 0xCu);
    }

    v11 = type metadata accessor for TaskPriority();
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = v2;

    sub_10003CEA4(0, 0, v6, &unk_100104398, v12);

    return xpc_activity_set_state(a1, 5);
  }

  return result;
}

uint64_t sub_10003FA54()
{
  v0[5] = &type metadata for SWTFeatureFlags;
  v1 = sub_1000461C4();
  *(v0 + 16) = 0;
  v0[18] = v1;
  v0[6] = v1;
  v2 = isFeatureEnabled(_:)();
  sub_100024E14(v0 + 2);
  if (v2)
  {
    v13 = (*(**(v0[17] + OBJC_IVAR____TtC15swtransparencyd20SWTransparencyDaemon_stateMachine) + 160) + **(**(v0[17] + OBJC_IVAR____TtC15swtransparencyd20SWTransparencyDaemon_stateMachine) + 160));
    v3 = swift_task_alloc();
    v0[19] = v3;
    *v3 = v0;
    v3[1] = sub_10003FE4C;
    v4 = v13;

    return v4();
  }

  *(v0 + 56) = 1;
  v5 = v0[18];
  v0[10] = &type metadata for SWTFeatureFlags;
  v0[11] = v5;
  v6 = isFeatureEnabled(_:)();
  sub_100024E14(v0 + 7);
  if (v6)
  {
    v14 = (*(**(v0[17] + OBJC_IVAR____TtC15swtransparencyd20SWTransparencyDaemon_stateMachine) + 168) + **(**(v0[17] + OBJC_IVAR____TtC15swtransparencyd20SWTransparencyDaemon_stateMachine) + 168));
    v7 = swift_task_alloc();
    v0[20] = v7;
    *v7 = v0;
    v7[1] = sub_100040238;
    v4 = v14;

    return v4();
  }

  v8 = v0[18];
  v0[15] = &type metadata for SWTFeatureFlags;
  v0[16] = v8;
  *(v0 + 96) = 4;
  v9 = isFeatureEnabled(_:)();
  sub_100024E14(v0 + 12);
  if (v9)
  {
    v15 = (*(**(v0[17] + OBJC_IVAR____TtC15swtransparencyd20SWTransparencyDaemon_stateMachine) + 184) + **(**(v0[17] + OBJC_IVAR____TtC15swtransparencyd20SWTransparencyDaemon_stateMachine) + 184));
    v10 = swift_task_alloc();
    v0[21] = v10;
    *v10 = v0;
    v10[1] = sub_1000404FC;
    v4 = v15;

    return v4();
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_10003FE4C()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_10003FF7C, 0, 0);
  }
}

uint64_t sub_10003FF7C()
{
  *(v0 + 56) = 1;
  v1 = v0[18];
  v0[10] = &type metadata for SWTFeatureFlags;
  v0[11] = v1;
  v2 = isFeatureEnabled(_:)();
  sub_100024E14(v0 + 7);
  if (v2)
  {
    v10 = (*(**(v0[17] + OBJC_IVAR____TtC15swtransparencyd20SWTransparencyDaemon_stateMachine) + 168) + **(**(v0[17] + OBJC_IVAR____TtC15swtransparencyd20SWTransparencyDaemon_stateMachine) + 168));
    v3 = swift_task_alloc();
    v0[20] = v3;
    *v3 = v0;
    v3[1] = sub_100040238;
    v4 = v10;

    return v4();
  }

  *(v0 + 96) = 4;
  v6 = v0[18];
  v0[15] = &type metadata for SWTFeatureFlags;
  v0[16] = v6;
  v7 = isFeatureEnabled(_:)();
  sub_100024E14(v0 + 12);
  if (v7)
  {
    v11 = (*(**(v0[17] + OBJC_IVAR____TtC15swtransparencyd20SWTransparencyDaemon_stateMachine) + 184) + **(**(v0[17] + OBJC_IVAR____TtC15swtransparencyd20SWTransparencyDaemon_stateMachine) + 184));
    v8 = swift_task_alloc();
    v0[21] = v8;
    *v8 = v0;
    v8[1] = sub_1000404FC;
    v4 = v11;

    return v4();
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_100040238()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_100040368, 0, 0);
  }
}

uint64_t sub_100040368()
{
  *(v0 + 96) = 4;
  v1 = v0[18];
  v0[15] = &type metadata for SWTFeatureFlags;
  v0[16] = v1;
  v2 = isFeatureEnabled(_:)();
  sub_100024E14(v0 + 12);
  if (v2)
  {
    v6 = (*(**(v0[17] + OBJC_IVAR____TtC15swtransparencyd20SWTransparencyDaemon_stateMachine) + 184) + **(**(v0[17] + OBJC_IVAR____TtC15swtransparencyd20SWTransparencyDaemon_stateMachine) + 184));
    v3 = swift_task_alloc();
    v0[21] = v3;
    *v3 = v0;
    v3[1] = sub_1000404FC;

    return v6();
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1000404FC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100040610()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC15swtransparencyd20SWTransparencyDaemon_stateMachine);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1000406B4;

  return sub_10003EC88(v1);
}

uint64_t sub_1000406B4()
{
  v2 = *v1;

  if (v0)
  {
  }

  v3 = *(v2 + 8);

  return v3();
}

xpc_activity_state_t sub_1000407B8(_xpc_activity_s *a1)
{
  v2 = v1;
  v4 = sub_100024248(&unk_100152620, &unk_1001031E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "24h background work", v9, 2u);
  }

  result = xpc_activity_get_state(a1);
  if (result == 2)
  {
    v11 = type metadata accessor for TaskPriority();
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = v2;
    v12[5] = 2;
    v12[6] = a1;

    swift_unknownObjectRetain();
    sub_10001C660(0, 0, v6, &unk_1001043C0, v12);
  }

  return result;
}

uint64_t sub_100040968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_10004098C, 0, 0);
}

uint64_t sub_10004098C(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[3];
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "24h job triggered triggered, state: %ld", v5, 0xCu);
  }

  v6 = v1[2];

  v9 = (*(*v6 + 200) + **(*v6 + 200));
  v7 = swift_task_alloc();
  v1[5] = v7;
  *v7 = v1;
  v7[1] = sub_100040B40;

  return v9();
}

uint64_t sub_100040B40()
{

  if (v0)
  {

    v1 = sub_1000467DC;
  }

  else
  {
    v1 = sub_100040C58;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_100040C58()
{
  xpc_activity_set_state(*(v0 + 32), 5);
  v1 = *(v0 + 8);

  return v1();
}

void sub_100040CBC()
{
  v1 = v0;
  v35 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for DispatchQoS();
  v5 = *(v34 - 8);
  __chkstk_darwin(v34);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100024248(&unk_100152620, &unk_1001031E0);
  __chkstk_darwin(v8 - 8);
  v10 = &v33 - v9;
  v36 = OBJC_IVAR____TtC15swtransparencyd20SWTransparencyDaemon_logger;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "swtransparencyd starting", v13, 2u);
  }

  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v1;

  sub_10001C660(0, 0, v10, &unk_1001043D0, v15);

  sub_100033178(0, &unk_100152FD8, OS_dispatch_source_ptr);
  sub_100033178(0, &qword_1001525E0, OS_dispatch_queue_ptr);
  v16 = static OS_dispatch_queue.main.getter();
  static OS_dispatch_source.makeSignalSource(signal:queue:)();

  swift_getObjectType();
  aBlock[4] = sub_100045318;
  aBlock[5] = v1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000467BC;
  aBlock[3] = &unk_100134070;
  v17 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  sub_100041928();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v17);
  (*(v2 + 8))(v4, v35);
  (*(v5 + 8))(v7, v34);

  OS_dispatch_source.resume()();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Registering XPC service", v20, 2u);
  }

  type metadata accessor for SWTransparencyXPCService();
  v21 = sub_100068D78(*(v1 + OBJC_IVAR____TtC15swtransparencyd20SWTransparencyDaemon_stateMachine));
  v22 = (*(*v1 + 128))(v21);
  v23 = (*(*v1 + 120))(v22);
  if (v23)
  {
    v24 = v23 + OBJC_IVAR____TtC15swtransparencyd24SWTransparencyXPCService_daemon;
    v25 = v23;
    swift_beginAccess();
    *(v24 + 8) = &off_100134180;
    swift_unknownObjectWeakAssign();
  }

  v26 = v1 + OBJC_IVAR____TtC15swtransparencyd20SWTransparencyDaemon_deps;
  v27 = *(v26 + *(type metadata accessor for SWTDeps(0) + 36));
  v28 = [objc_msgSend(v27 "transparencySettings")];
  swift_unknownObjectRelease();
  v29 = [v27 atEnvironment];
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 134349312;
    *(v32 + 4) = v29;
    *(v32 + 12) = 2050;
    *(v32 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v30, v31, "swtransparencyd started at: %{public}lu kt: %{public}lu", v32, 0x16u);
  }

  swift_unknownObjectRelease();
}

uint64_t sub_1000412D4()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC15swtransparencyd20SWTransparencyDaemon_stateMachine);
  v0[3] = v1;
  v4 = (*(*v1 + 120) + **(*v1 + 120));
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_1000413F8;

  return v4();
}

uint64_t sub_1000413F8()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v6 = *v0;

  v5 = (*(*v2 + 136) + **(*v2 + 136));
  v3 = swift_task_alloc();
  *(v1 + 40) = v3;
  *v3 = v6;
  v3[1] = sub_1000415C4;

  return v5();
}

uint64_t sub_1000415C4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000416B8(uint64_t a1)
{
  v2 = sub_100024248(&unk_100152620, &unk_1001031E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = a1;

  sub_10001C660(0, 0, v4, &unk_100104630, v6);
}

uint64_t sub_1000417E4()
{
  v1 = *(v0 + 16);
  xpc_transaction_exit_clean();
  v2 = *(v1 + OBJC_IVAR____TtC15swtransparencyd20SWTransparencyDaemon_stateMachine);
  v3 = sub_1000258E4();
  v6 = (*(*v2 + 192) + **(*v2 + 192));
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_100038BE4;

  return v6(v3 & 1, 1);
}

uint64_t sub_100041928()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_10004617C(&qword_100153430, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100024248(&qword_100153438, &qword_100104620);
  sub_100045F80(&qword_100153440, &qword_100153438, &qword_100104620);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_100041A00()
{
  v1 = OBJC_IVAR____TtC15swtransparencyd20SWTransparencyDaemon_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100045338(v0 + OBJC_IVAR____TtC15swtransparencyd20SWTransparencyDaemon_deps);

  return v0;
}

uint64_t sub_100041AA0()
{
  v1 = OBJC_IVAR____TtC15swtransparencyd20SWTransparencyDaemon_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100045338(v0 + OBJC_IVAR____TtC15swtransparencyd20SWTransparencyDaemon_deps);

  return swift_deallocClassInstance();
}

uint64_t sub_100041B7C()
{
  v4 = (*(*v0 + 200) + **(*v0 + 200));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1000258C8;

  return v4();
}

uint64_t sub_100041C8C()
{
  v1 = sub_100024248(&unk_100152620, &unk_1001031E0);
  __chkstk_darwin(v1 - 8);
  v108 = &v102 - v2;
  v3 = type metadata accessor for URL();
  v117 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v103 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v104 = &v102 - v7;
  __chkstk_darwin(v6);
  v102 = &v102 - v8;
  v9 = sub_100024248(&qword_100152F00, &qword_1001042C0);
  v10 = __chkstk_darwin(v9 - 8);
  v111 = &v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v110 = &v102 - v13;
  v14 = __chkstk_darwin(v12);
  v106 = &v102 - v15;
  v16 = __chkstk_darwin(v14);
  v105 = &v102 - v17;
  v18 = __chkstk_darwin(v16);
  v112 = &v102 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = &v102 - v21;
  v23 = __chkstk_darwin(v20);
  v116 = &v102 - v24;
  v25 = __chkstk_darwin(v23);
  v27 = &v102 - v26;
  v28 = __chkstk_darwin(v25);
  v115 = &v102 - v29;
  v30 = __chkstk_darwin(v28);
  v32 = &v102 - v31;
  v33 = __chkstk_darwin(v30);
  v35 = &v102 - v34;
  v36 = __chkstk_darwin(v33);
  v38 = &v102 - v37;
  __chkstk_darwin(v36);
  v118 = &v102 - v39;
  v113 = [objc_opt_self() defaultManager];
  v40 = NSHomeDirectory();
  if (!v40)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = String._bridgeToObjectiveC()();
  }

  v109 = v0;
  v41 = [objc_allocWithZone(NSURL) initFileURLWithPath:v40];

  v42 = String._bridgeToObjectiveC()();
  v107 = v41;
  v43 = [v41 URLByAppendingPathComponent:v42];

  if (v43)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v44 = v117;
    v45 = *(v117 + 56);
    v45(v38, 0, 1, v3);
  }

  else
  {
    v44 = v117;
    v45 = *(v117 + 56);
    v45(v38, 1, 1, v3);
  }

  v46 = v38;
  v47 = v118;
  sub_1000443C0(v46, v118);
  sub_100025834(v47, v32, &qword_100152F00, &qword_1001042C0);
  v119 = *(v44 + 48);
  if (v119(v32, 1, v3) == 1)
  {
    sub_10002533C(v32, &qword_100152F00, &qword_1001042C0);
    v48 = 1;
  }

  else
  {
    URL.appendingPathComponent(_:)();
    (*(v44 + 8))(v32, v3);
    v48 = 0;
  }

  v114 = v35;
  v45(v35, v48, 1, v3);
  sub_100025834(v118, v27, &qword_100152F00, &qword_1001042C0);
  if (v119(v27, 1, v3) == 1)
  {
    sub_10002533C(v27, &qword_100152F00, &qword_1001042C0);
    v49 = 1;
    v51 = v115;
    v50 = v116;
  }

  else
  {
    v51 = v115;
    URL.appendingPathComponent(_:)();
    (*(v44 + 8))(v27, v3);
    v49 = 0;
    v50 = v116;
  }

  v52 = v105;
  v45(v51, v49, 1, v3);
  sub_100025834(v118, v22, &qword_100152F00, &qword_1001042C0);
  if (v119(v22, 1, v3) == 1)
  {
    sub_10002533C(v22, &qword_100152F00, &qword_1001042C0);
    v53 = 1;
  }

  else
  {
    URL.appendingPathComponent(_:)();
    v50 = v116;
    (*(v117 + 8))(v22, v3);
    v53 = 0;
  }

  v54 = v114;
  v45(v50, v53, 1, v3);
  sub_100025834(v50, v52, &qword_100152F00, &qword_1001042C0);
  v55 = v119(v52, 1, v3);
  v56 = v112;
  if (v55 == 1)
  {
    sub_10002533C(v52, &qword_100152F00, &qword_1001042C0);
    v57 = 1;
  }

  else
  {
    URL.appendingPathComponent(_:)();
    (*(v117 + 8))(v52, v3);
    v57 = 0;
  }

  v58 = v110;
  v45(v56, v57, 1, v3);
  v59 = v106;
  sub_100025834(v54, v106, &qword_100152F00, &qword_1001042C0);
  v60 = v119(v59, 1, v3);
  v61 = &stru_10014B000;
  v62 = v115;
  if (v60 == 1)
  {
    sub_10002533C(v59, &qword_100152F00, &qword_1001042C0);
    v63 = v117;
    v64 = v111;
  }

  else
  {
    v63 = v117;
    v65 = v102;
    (*(v117 + 32))(v102, v59, v3);
    URL.path(percentEncoded:)(0);
    v66 = String._bridgeToObjectiveC()();

    v67 = v113;
    v68 = [v113 fileExistsAtPath:v66];

    if (v68)
    {
      (*(v63 + 8))(v65, v3);
      v58 = v110;
      v64 = v111;
      v62 = v115;
      v61 = &stru_10014B000;
    }

    else
    {
      URL._bridgeToObjectiveC()(v69);
      v71 = v70;
      v120 = 0;
      v72 = [v67 createDirectoryAtURL:v70 withIntermediateDirectories:1 attributes:0 error:&v120];

      if (v72)
      {
        v73 = v120;
      }

      else
      {
        v74 = v120;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }

      v58 = v110;
      v61 = &stru_10014B000;
      v63 = v117;
      (*(v117 + 8))(v65, v3);
      v64 = v111;
      v62 = v115;
    }
  }

  sub_100025834(v62, v58, &qword_100152F00, &qword_1001042C0);
  if (v119(v58, 1, v3) == 1)
  {
    sub_10002533C(v58, &qword_100152F00, &qword_1001042C0);
  }

  else
  {
    v75 = v104;
    (*(v63 + 32))(v104, v58, v3);
    URL.path(percentEncoded:)(0);
    v76 = String._bridgeToObjectiveC()();

    name = v61[41].name;
    v78 = v113;
    v79 = [v113 name];

    if (v79)
    {
      (*(v63 + 8))(v75, v3);
      v64 = v111;
      v56 = v112;
      v61 = &stru_10014B000;
    }

    else
    {
      URL._bridgeToObjectiveC()(v80);
      v82 = v81;
      v120 = 0;
      v83 = [v78 createDirectoryAtURL:v81 withIntermediateDirectories:1 attributes:0 error:&v120];

      if (v83)
      {
        v84 = v120;
      }

      else
      {
        v85 = v120;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }

      v61 = &stru_10014B000;
      v63 = v117;
      (*(v117 + 8))(v104, v3);
      v64 = v111;
      v56 = v112;
    }
  }

  sub_100025834(v56, v64, &qword_100152F00, &qword_1001042C0);
  if (v119(v64, 1, v3) == 1)
  {
    sub_10002533C(v64, &qword_100152F00, &qword_1001042C0);
    v86 = v113;
  }

  else
  {
    v87 = v103;
    (*(v63 + 32))(v103, v64, v3);
    URL.path(percentEncoded:)(0);
    v88 = String._bridgeToObjectiveC()();

    v89 = v61[41].name;
    v86 = v113;
    v90 = [v113 v89];

    if (v90)
    {
      (*(v63 + 8))(v87, v3);
    }

    else
    {
      URL._bridgeToObjectiveC()(v91);
      v93 = v92;
      v120 = 0;
      v94 = [v86 createDirectoryAtURL:v92 withIntermediateDirectories:1 attributes:0 error:&v120];

      if (v94)
      {
        v95 = v120;
      }

      else
      {
        v96 = v120;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }

      (*(v117 + 8))(v87, v3);
    }
  }

  v97 = type metadata accessor for TaskPriority();
  v98 = v108;
  (*(*(v97 - 8) + 56))(v108, 1, 1, v97);
  v99 = swift_allocObject();
  *(v99 + 16) = 0;
  *(v99 + 24) = 0;
  sub_10003CEA4(0, 0, v98, &unk_1001043E0, v99);

  v100 = [objc_opt_self() mainRunLoop];
  [v100 run];

  sub_10002533C(v56, &qword_100152F00, &qword_1001042C0);
  sub_10002533C(v116, &qword_100152F00, &qword_1001042C0);
  sub_10002533C(v62, &qword_100152F00, &qword_1001042C0);
  sub_10002533C(v114, &qword_100152F00, &qword_1001042C0);
  return sub_10002533C(v118, &qword_100152F00, &qword_1001042C0);
}

uint64_t sub_100042A18()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v0[21] = v1;
  v0[22] = *(v1 - 8);
  v0[23] = swift_task_alloc();
  v2 = type metadata accessor for DispatchQoS();
  v0[24] = v2;
  v0[25] = *(v2 - 8);
  v0[26] = swift_task_alloc();
  v3 = type metadata accessor for DispatchTimeInterval();
  v0[27] = v3;
  v0[28] = *(v3 - 8);
  v0[29] = swift_task_alloc();
  v4 = type metadata accessor for DispatchTime();
  v0[30] = v4;
  v0[31] = *(v4 - 8);
  v0[32] = swift_task_alloc();
  v0[33] = swift_task_alloc();
  v5 = type metadata accessor for DispatchQoS.QoSClass();
  v0[34] = v5;
  v0[35] = *(v5 - 8);
  v0[36] = swift_task_alloc();
  type metadata accessor for SWTransparencyDaemon(0);
  swift_allocObject();
  v6 = swift_task_alloc();
  v0[37] = v6;
  *v6 = v0;
  v6[1] = sub_100042C94;

  return sub_10003E3A0();
}

uint64_t sub_100042C94(uint64_t a1)
{
  v3 = *v2;
  v3[38] = a1;
  v3[39] = v1;

  if (v1)
  {

    v4 = v3[1];

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_100042E20, 0, 0);
  }
}

uint64_t sub_100042E20()
{
  v2 = v0[35];
  v3 = v0[36];
  v23 = v0[33];
  v13 = v0[34];
  v14 = v0[32];
  v25 = v0[31];
  v4 = v0[29];
  v24 = v0[30];
  v5 = v0[28];
  v15 = v0[27];
  v21 = v0[25];
  v22 = v0[24];
  v17 = v0[26];
  v18 = v0[23];
  v19 = v0[21];
  v20 = v0[22];
  qword_100157698 = v0[38];
  v1 = qword_100157698;

  v0[6] = sub_100045D3C;
  v0[7] = v1;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_10001C960;
  v0[5] = &unk_1001341D0;
  v6 = _Block_copy(v0 + 2);

  xpc_activity_register("com.apple.swtransparencyd.milestone-refresh", XPC_ACTIVITY_CHECK_IN, v6);
  _Block_release(v6);
  v0[12] = sub_100045E4C;
  v0[13] = v1;
  v0[8] = _NSConcreteStackBlock;
  v0[9] = 1107296256;
  v0[10] = sub_10001C960;
  v0[11] = &unk_1001341F8;
  v7 = _Block_copy(v0 + 8);

  xpc_activity_register("com.apple.swtransparencyd.24h", XPC_ACTIVITY_CHECK_IN, v7);
  _Block_release(v7);
  sub_100033178(0, &qword_1001525E0, OS_dispatch_queue_ptr);
  (*(v2 + 104))(v3, enum case for DispatchQoS.QoSClass.default(_:), v13);
  v12 = static OS_dispatch_queue.global(qos:)();
  (*(v2 + 8))(v3, v13);
  static DispatchTime.now()();
  *v4 = 5;
  (*(v5 + 104))(v4, enum case for DispatchTimeInterval.seconds(_:), v15);
  + infix(_:_:)();
  (*(v5 + 8))(v4, v15);
  v16 = *(v25 + 8);
  v16(v14, v24);
  v0[18] = sub_100045F5C;
  v0[19] = v1;
  v0[14] = _NSConcreteStackBlock;
  v0[15] = 1107296256;
  v0[16] = sub_1000467BC;
  v0[17] = &unk_100134220;
  v8 = _Block_copy(v0 + 14);

  static DispatchQoS.unspecified.getter();
  v0[20] = _swiftEmptyArrayStorage;
  sub_10004617C(&qword_100153430, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100024248(&qword_100153438, &qword_100104620);
  sub_100045F80(&qword_100153440, &qword_100153438, &qword_100104620);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v8);

  (*(v20 + 8))(v18, v19);
  (*(v21 + 8))(v17, v22);
  v16(v23, v24);

  (*(*v1 + 216))(v9);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100043394(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100045458();
  static ParsableCommand.main()();
  return 0;
}

char *sub_1000434A8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100024248(&qword_1001534A0, &qword_1001046A0);
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

unint64_t sub_1000435B4(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_10004362C(a1, a2, v4);
}

unint64_t sub_10004362C(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1000436E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1000435B4(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100043FF0();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for EventValue();
    v19 = *(v12 - 8);
    (*(v19 + 32))(a3, v11 + *(v19 + 72) * v8, v12);
    sub_100043BD4(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for EventValue();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

Swift::Int sub_100043854(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v45 = type metadata accessor for EventValue();
  v5 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_100024248(&qword_100153488, &qword_100104688);
  v42 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
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
    v38 = v2;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

unint64_t sub_100043BD4(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(type metadata accessor for EventValue() - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_100043DC0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1000435B4(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_100043FF0();
      goto LABEL_7;
    }

    sub_100043854(v15, a4 & 1);
    v26 = sub_1000435B4(a2, a3);
    if ((v16 & 1) == (v27 & 1))
    {
      v12 = v26;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = type metadata accessor for EventValue();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_100043F40(v12, a2, a3, a1, v18);
}

uint64_t sub_100043F40(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for EventValue();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

char *sub_100043FF0()
{
  v1 = v0;
  v35 = type metadata accessor for EventValue();
  v37 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100024248(&qword_100153488, &qword_100104688);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

unint64_t sub_100044270(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100024248(&qword_1001534A8, &qword_1001046A8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1000435B4(v5, v6);
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

unint64_t sub_10004436C()
{
  result = qword_100152F28;
  if (!qword_100152F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100152F28);
  }

  return result;
}