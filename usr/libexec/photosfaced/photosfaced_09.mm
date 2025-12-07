uint64_t sub_1000F3614(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1000F3D54(v8);
      v8 = result;
    }

    v75 = v8 + 2;
    v76 = v8[2];
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = &v8[2 * v76];
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_1000F3B60((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1000F3D68(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v5 = v8[2];
    v29 = v8[3];
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_1000F3D68((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v30;
    v31 = v8 + 4;
    v32 = &v8[2 * v5 + 4];
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = v8[4];
          v34 = v8[5];
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = &v8[2 * v30];
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = &v31[2 * v5];
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = &v8[2 * v30];
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = &v31[2 * v5];
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
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
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = &v31[2 * v5 - 2];
        v71 = *v70;
        v72 = &v31[2 * v5];
        v73 = v72[1];
        sub_1000F3B60((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > v8[2])
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = v8[2];
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove(&v31[2 * v5], v72 + 2, 16 * (v74 - 1 - v5));
        v8[2] = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = &v31[2 * v30];
      v38 = *(v37 - 8);
      v39 = *(v37 - 7);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 6);
      v41 = *(v37 - 5);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = &v8[2 * v30];
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = &v31[2 * v5];
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_1000F3B60(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
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

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

char *sub_1000F3D68(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000560C(&qword_10012B4E0, &qword_10010A3C8);
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

uint64_t sub_1000F3E6C(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v16 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v17[3] = &v16;
  v17[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v12 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe);
    v9 = &v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_1000F400C(v9, v7, v3, a2);
  }

  else
  {
    v13 = v12;
    v14 = swift_slowAlloc();
    bzero(v14, v13);
    sub_1000F63FC(v14, v7, v17);
    v10 = v17[0];
  }

  return v10;
}

uint64_t sub_1000F400C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a2;
  v29 = a1;
  v6 = type metadata accessor for UUID();
  v7 = __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v39 = &v26 - v11;
  v32 = *(a3 + 16);
  if (v32)
  {
    v28 = 0;
    v12 = 0;
    v37 = *(v10 + 16);
    v38 = v10 + 16;
    v31 = a3 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v13 = *(v10 + 72);
    v35 = a4 + 56;
    v36 = v13;
    v14 = (v10 + 8);
    v34 = a4;
    while (1)
    {
      v33 = v12;
      v37(v39, v31 + v36 * v12, v6);
      sub_1000FAACC(&qword_10012A1F8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v17 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v18 = -1 << *(a4 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      v21 = 1 << v19;
      if (((1 << v19) & *(v35 + 8 * (v19 >> 6))) == 0)
      {
        break;
      }

      v30 = v14 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v22 = ~v18;
      while (1)
      {
        v37(v9, *(v34 + 48) + v19 * v36, v6);
        sub_1000FAACC(&qword_10012A660, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v23 = dispatch thunk of static Equatable.== infix(_:_:)();
        v15 = *v14;
        (*v14)(v9, v6);
        if (v23)
        {
          break;
        }

        v19 = (v19 + 1) & v22;
        v20 = v19 >> 6;
        v21 = 1 << v19;
        if (((1 << v19) & *(v35 + 8 * (v19 >> 6))) == 0)
        {
          a4 = v34;
          goto LABEL_4;
        }
      }

      result = (v15)(v39, v6);
      v25 = v29[v20];
      v29[v20] = v25 | v21;
      if ((v25 & v21) != 0)
      {
        a4 = v34;
LABEL_5:
        v16 = v33;
        goto LABEL_6;
      }

      v16 = v33;
      a4 = v34;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        return result;
      }

      ++v28;
LABEL_6:
      v12 = v16 + 1;
      if (v12 == v32)
      {
        goto LABEL_17;
      }
    }

    v15 = *v14;
LABEL_4:
    v15(v39, v6);
    goto LABEL_5;
  }

  v28 = 0;
LABEL_17:

  return sub_10006AF50(v29, v27, v28, a4);
}

uint64_t sub_1000F4358(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, int a5, uint64_t a6, int a7)
{
  v14 = *a4;
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_10000CC84;

  return sub_1000EEAE8(a1, a2, a3, v14, a5, a6, a7);
}

void *sub_1000F444C(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 8 * a2);
    *result = *(*(a5 + 56) + 8 * a2);

    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_1000F44C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a5 + 36) != a3)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v8 = *(a5 + 48);
  v9 = a6(0);
  (*(*(v9 - 8) + 16))(a1, v8 + *(*(v9 - 8) + 72) * a2, v9);
}

uint64_t sub_1000F45B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6, uint64_t a7, char a8)
{
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a7;
  *(v8 + 16) = a4;
  *(v8 + 49) = *a6;
  return _swift_task_switch(sub_1000F45E0, 0, 0);
}

uint64_t sub_1000F45E0()
{
  type metadata accessor for CommunicationActor();
  *(v0 + 40) = static CommunicationActor.shared.getter();
  sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000CC94, v2, v1);
}

uint64_t sub_1000F46A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1000FBED0;

  return sub_1000E18A0(a2, a3, a4);
}

uint64_t sub_1000F4754(uint64_t a1, uint64_t *a2, int *a3)
{
  v5 = *a2;
  v6 = a2[1];
  v9 = (a3 + *a3);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000CC84;

  return v9(a1, v5, v6);
}

uint64_t sub_1000F4860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1000FBED0;

  return sub_1000E27FC(a2, a3, a4);
}

uint64_t sub_1000F4910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1000FBED0;

  return sub_1000E3758(a2, a3, a4);
}

uint64_t sub_1000F49C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6, uint64_t a7, char a8)
{
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a7;
  *(v8 + 16) = a4;
  *(v8 + 49) = *a6;
  return _swift_task_switch(sub_1000F49F0, 0, 0);
}

uint64_t sub_1000F49F0()
{
  type metadata accessor for CommunicationActor();
  *(v0 + 40) = static CommunicationActor.shared.getter();
  sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000C6B8, v2, v1);
}

uint64_t sub_1000F4AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1000F4B64;

  return sub_1000E46B4(a2, a3, a4);
}

uint64_t sub_1000F4B64(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_1000F4C78()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000CC84;

  return sub_1000F19D0();
}

uint64_t sub_1000F4D2C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_10005E750;

  return sub_1000F2E54(a1, a2, v2);
}

uint64_t sub_1000F4DD4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000F4E0C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000CC84;

  return sub_1000E9190(a1, v1);
}

uint64_t sub_1000F4EA4()
{
  v1 = type metadata accessor for Message();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 3) & 0xFFFFFFFFFFFFFFFCLL;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 4, v3 | 7);
}

uint64_t sub_1000F4F74(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for Message() - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = *(v2 + 16);
  v9 = *(v2 + 28);
  v10 = *(v2 + ((*(v6 + 64) + v7 + 3) & 0xFFFFFFFFFFFFFFFCLL));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_10000CC84;

  return sub_1000F4358(a1, a2, v8, (v2 + 24), v9, v2 + v7, v10);
}

uint64_t sub_1000F50B4(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000CC84;

  return sub_1000EE9E8(a1, a2, v6);
}

uint64_t sub_1000F5178()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000CC84;

  return sub_100006A44();
}

uint64_t sub_1000F522C()
{
  v1 = type metadata accessor for Message();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 20) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000F52B4(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for Message() - 8);
  v7 = (*(v6 + 80) + 20) & ~*(v6 + 80);
  v8 = *(v2 + 16);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_10000CC84;

  return sub_100085F14(a1, a2, v8, v2 + v7);
}

uint64_t sub_1000F53A4(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000045BC;

  return sub_1000EE9E8(a1, a2, v6);
}

uint64_t sub_1000F5468()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000045BC;

  return sub_100006A44();
}

uint64_t sub_1000F551C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000CC84;

  return sub_10008C364(a1, a2);
}

uint64_t sub_1000F55C8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000CC84;

  return sub_10008F2B0(a1);
}

uint64_t sub_1000F5660()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000FBEE0;

  return sub_100091A90();
}

uint64_t sub_1000F56F0(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_10000CC84;

  return sub_1000921C8(a1, a2, v2);
}

uint64_t sub_1000F579C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000FBEE0;

  return sub_100092D18(a1);
}

uint64_t sub_1000F5834(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000FBEE0;

  return sub_10009355C(a1, v1);
}

uint64_t sub_1000F58CC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000CC84;

  return sub_100093F74();
}

uint64_t sub_1000F595C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000CC84;

  return sub_100094284();
}

uint64_t sub_1000F59EC()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100043E28;

  return sub_1000FC84C(v2);
}

uint64_t sub_1000F5A84(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000CC84;

  return sub_10008C364(a1, a2);
}

uint64_t sub_1000F5B30(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000CC84;

  return sub_10008F2B0(a1);
}

uint64_t sub_1000F5BC8(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000CC84;

  return sub_100004EBC(a1, a2, v6);
}

uint64_t sub_1000F5C7C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000CC84;

  return sub_1000D09DC(a1, a2);
}

uint64_t sub_1000F5D28()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000CC84;

  return sub_1000D5FE0();
}

uint64_t sub_1000F5DB8(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000CC84;

  return sub_1000041B8(a1, v6, v4, v5);
}

uint64_t sub_1000F5E68(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10000CC84;

  return sub_1000EE5B8(a1, a2, v7, v6);
}

__n128 sub_1000F5F48(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(a2 + 32) = *(a1 + 32);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_1000F5F7C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000CC84;

  return sub_100064050(a1, a2);
}

uint64_t sub_1000F6058(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for MessageBody() - 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = v1 + ((*(v5 + 80) + 49) & ~*(v5 + 80));
  v11 = *(v10 + *(v5 + 64));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_10000CC84;

  return sub_1000F45B0(a1, v6, v7, v8, v9, (v1 + 48), v10, v11);
}

uint64_t sub_1000F61A0(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10000CC84;

  return sub_1000F46A4(a1, a2, v7, v6);
}

uint64_t sub_1000F6268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[2];
  v9 = v3[3];
  v10 = v3[4];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_10000CC84;

  return sub_1000E57A4(a1, a2, a3, v8, v9, v10);
}

uint64_t sub_1000F6334(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000CC84;

  return sub_1000F4754(a1, a2, v6);
}

uint64_t sub_1000F63FC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1000F400C(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1000F6430()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000F64A4(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for MessageBody() - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_10000CC84;

  return sub_1000ED8C0(a1, a2, v8, v9, v2 + v7);
}

uint64_t sub_1000F65B0(uint64_t a1)
{
  v4 = *(type metadata accessor for ShuffleID() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000CC84;

  return sub_1000D9458(a1, v6, v1 + v5);
}

void *sub_1000F6694(void *result)
{
  if ((*(*(result[3] - 8) + 80) & 0x20000) != 0)
  {
  }

  return result;
}

uint64_t sub_1000F66E4(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for ShuffleID() - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = *(v2 + 16);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_10000CC84;

  return sub_1000D9FE8(a1, a2, v8, v2 + v7);
}

uint64_t sub_1000F67D4(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for MessageBody() - 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = v1 + ((*(v5 + 80) + 49) & ~*(v5 + 80));
  v11 = *(v10 + *(v5 + 64));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_10000CC84;

  return sub_1000F45B0(a1, v6, v7, v8, v9, (v1 + 48), v10, v11);
}

uint64_t sub_1000F6934(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000CC84;

  return sub_10008C5D0(a1, a2);
}

uint64_t sub_1000F69E0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000CC84;

  return sub_10008F380(a1);
}

uint64_t sub_1000F6A78()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000FBEE0;

  return sub_100091EA4();
}

uint64_t sub_1000F6B08(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_10000CC84;

  return sub_100092480(a1, a2, v2);
}

uint64_t sub_1000F6BB4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000FBEE0;

  return sub_100092E34(a1);
}

uint64_t sub_1000F6C4C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000FBEE0;

  return sub_100093934(a1, v1);
}

uint64_t sub_1000F6CE4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000CC84;

  return sub_100094038();
}

uint64_t sub_1000F6D74()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000CC84;

  return sub_100094348();
}

uint64_t sub_1000F6E04(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000CC84;

  return sub_10008C5D0(a1, a2);
}

uint64_t sub_1000F6EB0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000CC84;

  return sub_10008F380(a1);
}

uint64_t sub_1000F6F48(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000CC84;

  return sub_1000D0ABC(a1, a2);
}

uint64_t sub_1000F6FF4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000CC84;

  return sub_1000D60A4();
}

uint64_t sub_1000F7084()
{

  return _swift_deallocObject(v0, 40, 7);
}

void *sub_1000F70BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DailyID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v57 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_10000560C(&qword_100129F60, &qword_100108D78);
  v7 = *(v56 - 8);
  v8 = __chkstk_darwin(v56);
  v53 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v55 = &v41 - v10;
  v11 = &_swiftEmptyDictionarySingleton;
  v58 = &_swiftEmptyDictionarySingleton;
  v12 = *(a1 + 16);
  if (!v12)
  {
    return v11;
  }

  v14 = *(v7 + 16);
  v13 = v7 + 16;
  v15 = *(v13 + 64);
  v16 = *(v13 + 56);
  v51 = (v15 + 32) & ~v15;
  v52 = v14;
  v17 = a1 + v51;
  v54 = (v13 + 16);
  v44 = v5 + 32;
  v45 = v15;
  v43 = (v5 + 8);
  v42 = xmmword_1001089C0;
  v46 = v4;
  v47 = a2;
  v48 = v5;
  v49 = v16;
  v50 = v13;
  v14(v55, v17, v56);
  while (1)
  {
    v20 = v57;
    swift_getAtKeyPath();
    v22 = sub_100057E38(v20);
    v23 = v11[2];
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      break;
    }

    v26 = v21;
    if (v11[3] < v25)
    {
      sub_10005B0A4(v25, 1);
      v11 = v58;
      v27 = sub_100057E38(v57);
      if ((v26 & 1) != (v28 & 1))
      {
        goto LABEL_20;
      }

      v22 = v27;
    }

    if (v26)
    {
      (*v43)(v57, v4);
      v29 = v11[7];
      v30 = *v54;
      (*v54)(v53, v55, v56);
      v31 = *(v29 + 8 * v22);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v29 + 8 * v22) = v31;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v31 = sub_1001002D0(0, *(v31 + 2) + 1, 1, v31);
        *(v29 + 8 * v22) = v31;
      }

      v34 = *(v31 + 2);
      v33 = *(v31 + 3);
      if (v34 >= v33 >> 1)
      {
        v31 = sub_1001002D0((v33 > 1), v34 + 1, 1, v31);
        *(v29 + 8 * v22) = v31;
      }

      v18 = v51;
      *(v31 + 2) = v34 + 1;
      v5 = v48;
      v19 = v49;
      v30(&v31[v18 + v34 * v49], v53, v56);
      v4 = v46;
    }

    else
    {
      sub_10000560C(&qword_10012A708, &unk_1001095F0);
      v35 = v51;
      v36 = swift_allocObject();
      *(v36 + 16) = v42;
      (*v54)((v36 + v35), v55, v56);
      v11[(v22 >> 6) + 8] |= 1 << v22;
      (*(v5 + 32))(v11[6] + *(v5 + 72) * v22, v57, v4);
      *(v11[7] + 8 * v22) = v36;
      v37 = v11[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_19;
      }

      v11[2] = v39;
      v19 = v49;
    }

    v17 += v19;
    if (!--v12)
    {
      return v11;
    }

    v52(v55, v17, v56);
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_1000F74F0(uint64_t a1)
{
  v85 = type metadata accessor for DailyID();
  v2 = *(v85 - 8);
  __chkstk_darwin(v85);
  v84 = &v80[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v89 = type metadata accessor for Logger();
  v4 = *(v89 - 8);
  __chkstk_darwin(v89);
  v86 = &v80[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_10000560C(&qword_100129F60, &qword_100108D78);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v80[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __chkstk_darwin(v8);
  v13 = &v80[-v12];
  v14 = __chkstk_darwin(v11);
  v16 = &v80[-v15];
  v17 = __chkstk_darwin(v14);
  v99 = &v80[-v18];
  __chkstk_darwin(v17);
  v20 = &v80[-v19];
  v105 = static PhotosFaceIDDatabaseFix.hourValueLowerBound()();
  v90 = static PhotosFaceIDDatabaseFix.hourValueDivisor()();
  v21 = *(a1 + 16);
  if (v21)
  {
    v100 = v4;
    v101 = v2;
    v93 = v13;
    v94 = v16;
    v97 = v20;
    v98 = 0;
    v22 = 0;
    v23 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v24 = v7 + 16;
    v104 = (v7 + 8);
    v106 = 0x7FFFFFFFFFFFFFFFLL;
    v25 = 0;
    do
    {
      while (1)
      {
        v27 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          __break(1u);
          goto LABEL_49;
        }

        v102 = *(v7 + 72);
        v107 = *(v7 + 16);
        (v107)(v10, v23 + v102 * v25, v6);
        if (v22 < SyncedPhotosFace.day.getter())
        {
          v22 = SyncedPhotosFace.day.getter();
        }

        v28 = SyncedPhotosFace.day.getter();
        v29 = v106;
        if (v28 < v106)
        {
          v29 = SyncedPhotosFace.day.getter();
        }

        v103 = *v104;
        v103(v10, v6);
        v106 = v29;
        if (v29 < v105 && v22 >= v105)
        {
          break;
        }

        ++v25;
        v26 = v107;
        if (v27 == v21)
        {
          goto LABEL_15;
        }

        if (v25 >= v21)
        {
          goto LABEL_14;
        }
      }

      v98 = 1;
      v26 = v107;
      if (v27 == v21)
      {
        goto LABEL_15;
      }

      ++v25;
    }

    while (v27 < v21);
LABEL_14:
    __break(1u);
LABEL_15:
    v32 = v106 == 0x8000000000000000 && v90 == -1;
    v81 = v32;
    v88 = (v100 + 8);
    v33 = &_swiftEmptyDictionarySingleton;
    v83 = (v101 + 8);
    *&v30 = 134218754;
    v82 = v30;
    v34 = v86;
    v35 = v21;
    v36 = v94;
    v37 = v99;
    v38 = v97;
    v92 = v24;
    while (1)
    {
      v101 = v35;
      if (!v35)
      {
        break;
      }

      v53 = v23;
      v54 = v34;
      v100 = v53;
      v26(v38);
      v55 = SyncedPhotosFace.day.getter();
      v56 = v24;
      v57 = v105;
      if (v105 >= v55 || (v98 & 1) == 0)
      {
        v62 = SyncedPhotosFace.day.getter();
        if (SyncedPhotosFace.day.getter() >= v57)
        {
          if (!v90)
          {
            goto LABEL_51;
          }

          if (v81)
          {
            goto LABEL_55;
          }

          v34 = v54;
          v64 = SyncedPhotosFace.day.getter();
          v65 = v64 - v106;
          if (__OFSUB__(v64, v106))
          {
            goto LABEL_52;
          }

          v63 = v106 / v90 + v65;
          if (__OFADD__(v106 / v90, v65))
          {
            goto LABEL_53;
          }
        }

        else
        {
          v63 = SyncedPhotosFace.day.getter();
          v34 = v54;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v108 = v33;
        v67 = sub_100057BD0(v62);
        v69 = v33[2];
        v70 = (v68 & 1) == 0;
        v71 = __OFADD__(v69, v70);
        v72 = v69 + v70;
        v52 = v100;
        if (v71)
        {
          goto LABEL_50;
        }

        v73 = v68;
        if (v33[3] >= v72)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v78 = v67;
            sub_100058B50();
            v67 = v78;
            v34 = v86;
          }
        }

        else
        {
          sub_10005A7BC(v72, isUniquelyReferenced_nonNull_native);
          v67 = sub_100057BD0(v62);
          if ((v73 & 1) != (v74 & 1))
          {
            goto LABEL_56;
          }
        }

        v75 = v99;
        v24 = v92;
        v33 = v108;
        if (v73)
        {
          *(v108[7] + 8 * v67) = v63;
          v38 = v97;
          v103(v97, v6);
        }

        else
        {
          v108[(v67 >> 6) + 8] |= 1 << v67;
          *(v33[6] + 8 * v67) = v62;
          *(v33[7] + 8 * v67) = v63;
          v38 = v97;
          v103(v97, v6);
          v76 = v33[2];
          v71 = __OFADD__(v76, 1);
          v77 = v76 + 1;
          if (v71)
          {
            goto LABEL_54;
          }

          v33[2] = v77;
        }

        v36 = v94;
        v26 = v107;
        v37 = v75;
      }

      else
      {
        v96 = v33;
        static Log.session.getter();
        (v26)(v37, v38, v6);
        (v26)(v36, v38, v6);
        v58 = v37;
        v59 = v93;
        (v26)(v93, v38, v6);
        v60 = Logger.logObject.getter();
        v91 = static os_log_type_t.error.getter();
        v95 = v60;
        if (os_log_type_enabled(v60, v91))
        {
          v39 = swift_slowAlloc();
          v87 = swift_slowAlloc();
          v108 = v87;
          *v39 = v82;
          v40 = SyncedPhotosFace.day.getter();
          v41 = v103;
          v103(v99, v6);
          *(v39 + 4) = v40;
          *(v39 + 12) = 2080;
          v42 = v84;
          SyncedPhotosFace.id.getter();
          v41(v36, v6);
          sub_1000FAACC(&qword_10012A1E0, &type metadata accessor for DailyID, &protocol conformance descriptor for DailyID);
          v43 = v85;
          v44 = dispatch thunk of CustomStringConvertible.description.getter();
          v46 = v45;
          v47 = v42;
          v26 = v107;
          v48 = v93;
          v36 = v94;
          (*v83)(v47, v43);
          v49 = sub_100102F80(v44, v46, &v108);
          v34 = v86;

          *(v39 + 14) = v49;
          *(v39 + 22) = 2048;
          *(v39 + 24) = v106;
          *(v39 + 32) = 2048;
          v50 = SyncedPhotosFace.day.getter();
          v41(v48, v6);
          *(v39 + 34) = v50;
          v51 = v95;
          _os_log_impl(&_mh_execute_header, v95, v91, "Found day %ld for %s, but the minimum valid day is %ld; skipping photos for day %ld", v39, 0x2Au);
          sub_10000C304(v87);

          v24 = v92;
          v37 = v99;

          (*v88)(v34, v89);
          v38 = v97;
          v41(v97, v6);
          v33 = v96;
        }

        else
        {
          v24 = v56;
          v61 = v103;
          v103(v59, v6);
          v61(v58, v6);
          v61(v36, v6);

          (*v88)(v54, v89);
          v61(v38, v6);
          v37 = v58;
          v33 = v96;
          v34 = v54;
        }

        v52 = v100;
      }

      v23 = v52 + v102;
      v35 = v101 - 1;
      if (v101 == 1)
      {
        return v33;
      }
    }

LABEL_49:
    __break(1u);
LABEL_50:
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
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1000F7E58(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for MessageBody() - 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = v1 + ((*(v5 + 80) + 49) & ~*(v5 + 80));
  v11 = *(v10 + *(v5 + 64));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_10000CC84;

  return sub_1000F45B0(a1, v6, v7, v8, v9, (v1 + 48), v10, v11);
}

uint64_t sub_1000F7FA0(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10000CC84;

  return sub_1000F4860(a1, a2, v7, v6);
}

uint64_t sub_1000F8068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[2];
  v9 = v3[3];
  v10 = v3[4];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_10000CC84;

  return sub_1000E5CE4(a1, a2, a3, v8, v9, v10);
}

uint64_t sub_1000F8134(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000CC84;

  return sub_1000F4754(a1, a2, v6);
}

uint64_t sub_1000F8214(uint64_t a1)
{
  v4 = *(type metadata accessor for DailyID() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000CC84;

  return sub_1000D973C(a1, v6, v1 + v5);
}

uint64_t sub_1000F82F8(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for DailyID() - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = *(v2 + 16);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_10000CC84;

  return sub_1000DB8B8(a1, a2, v8, v2 + v7);
}

uint64_t sub_1000F83E8(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for MessageBody() - 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = v1 + ((*(v5 + 80) + 49) & ~*(v5 + 80));
  v11 = *(v10 + *(v5 + 64));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_10000CC84;

  return sub_1000F45B0(a1, v6, v7, v8, v9, (v1 + 48), v10, v11);
}

uint64_t sub_1000F8530(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000CC84;

  return sub_10008C6B0(a1, a2);
}

uint64_t sub_1000F85DC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000CC84;

  return sub_10008F450(a1);
}

uint64_t sub_1000F8674()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000FBEE0;

  return sub_100091FB0();
}

uint64_t sub_1000F8704(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_10000CC84;

  return sub_100092738(a1, a2, v2);
}

uint64_t sub_1000F87B0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000FBEE0;

  return sub_100092F50(a1);
}

uint64_t sub_1000F8848(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000FBEE0;

  return sub_10009355C(a1, v1);
}

uint64_t sub_1000F88E0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000CC84;

  return sub_1000940FC();
}

uint64_t sub_1000F8970()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000CC84;

  return sub_10009440C();
}

uint64_t sub_1000F8A00(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000CC84;

  return sub_10008C6B0(a1, a2);
}

uint64_t sub_1000F8AAC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000CC84;

  return sub_10008F450(a1);
}

uint64_t sub_1000F8B44(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000CC84;

  return sub_1000D0B9C(a1, a2);
}

uint64_t sub_1000F8BF0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000CC84;

  return sub_1000D6168();
}

void *sub_1000F8C80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShuffleID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v57 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_10000560C(&qword_100129F30, &qword_100108D20);
  v7 = *(v56 - 8);
  v8 = __chkstk_darwin(v56);
  v53 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v55 = &v41 - v10;
  v11 = &_swiftEmptyDictionarySingleton;
  v58 = &_swiftEmptyDictionarySingleton;
  v12 = *(a1 + 16);
  if (!v12)
  {
    return v11;
  }

  v14 = *(v7 + 16);
  v13 = v7 + 16;
  v15 = *(v13 + 64);
  v16 = *(v13 + 56);
  v51 = (v15 + 32) & ~v15;
  v52 = v14;
  v17 = a1 + v51;
  v54 = (v13 + 16);
  v44 = v5 + 32;
  v45 = v15;
  v43 = (v5 + 8);
  v42 = xmmword_1001089C0;
  v46 = v4;
  v47 = a2;
  v48 = v5;
  v49 = v16;
  v50 = v13;
  v14(v55, v17, v56);
  while (1)
  {
    v20 = v57;
    swift_getAtKeyPath();
    v22 = sub_100057D64(v20);
    v23 = v11[2];
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      break;
    }

    v26 = v21;
    if (v11[3] < v25)
    {
      sub_10005ACC8(v25, 1);
      v11 = v58;
      v27 = sub_100057D64(v57);
      if ((v26 & 1) != (v28 & 1))
      {
        goto LABEL_20;
      }

      v22 = v27;
    }

    if (v26)
    {
      (*v43)(v57, v4);
      v29 = v11[7];
      v30 = *v54;
      (*v54)(v53, v55, v56);
      v31 = *(v29 + 8 * v22);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v29 + 8 * v22) = v31;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v31 = sub_1001002AC(0, *(v31 + 2) + 1, 1, v31);
        *(v29 + 8 * v22) = v31;
      }

      v34 = *(v31 + 2);
      v33 = *(v31 + 3);
      if (v34 >= v33 >> 1)
      {
        v31 = sub_1001002AC((v33 > 1), v34 + 1, 1, v31);
        *(v29 + 8 * v22) = v31;
      }

      v18 = v51;
      *(v31 + 2) = v34 + 1;
      v5 = v48;
      v19 = v49;
      v30(&v31[v18 + v34 * v49], v53, v56);
      v4 = v46;
    }

    else
    {
      sub_10000560C(&qword_10012A6A0, &unk_100109590);
      v35 = v51;
      v36 = swift_allocObject();
      *(v36 + 16) = v42;
      (*v54)((v36 + v35), v55, v56);
      v11[(v22 >> 6) + 8] |= 1 << v22;
      (*(v5 + 32))(v11[6] + *(v5 + 72) * v22, v57, v4);
      *(v11[7] + 8 * v22) = v36;
      v37 = v11[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_19;
      }

      v11[2] = v39;
      v19 = v49;
    }

    v17 += v19;
    if (!--v12)
    {
      return v11;
    }

    v52(v55, v17, v56);
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_1000F90B4(uint64_t a1)
{
  v85 = type metadata accessor for ShuffleID();
  v2 = *(v85 - 8);
  __chkstk_darwin(v85);
  v84 = &v80[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v89 = type metadata accessor for Logger();
  v4 = *(v89 - 8);
  __chkstk_darwin(v89);
  v86 = &v80[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_10000560C(&qword_100129F30, &qword_100108D20);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v80[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __chkstk_darwin(v8);
  v13 = &v80[-v12];
  v14 = __chkstk_darwin(v11);
  v16 = &v80[-v15];
  v17 = __chkstk_darwin(v14);
  v99 = &v80[-v18];
  __chkstk_darwin(v17);
  v20 = &v80[-v19];
  v105 = static PhotosFaceIDDatabaseFix.hourValueLowerBound()();
  v90 = static PhotosFaceIDDatabaseFix.hourValueDivisor()();
  v21 = *(a1 + 16);
  if (v21)
  {
    v100 = v4;
    v101 = v2;
    v93 = v13;
    v94 = v16;
    v97 = v20;
    v98 = 0;
    v22 = 0;
    v23 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v24 = v7 + 16;
    v104 = (v7 + 8);
    v106 = 0x7FFFFFFFFFFFFFFFLL;
    v25 = 0;
    do
    {
      while (1)
      {
        v27 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          __break(1u);
          goto LABEL_49;
        }

        v102 = *(v7 + 72);
        v107 = *(v7 + 16);
        (v107)(v10, v23 + v102 * v25, v6);
        if (v22 < SyncedPhotosFace.day.getter())
        {
          v22 = SyncedPhotosFace.day.getter();
        }

        v28 = SyncedPhotosFace.day.getter();
        v29 = v106;
        if (v28 < v106)
        {
          v29 = SyncedPhotosFace.day.getter();
        }

        v103 = *v104;
        v103(v10, v6);
        v106 = v29;
        if (v29 < v105 && v22 >= v105)
        {
          break;
        }

        ++v25;
        v26 = v107;
        if (v27 == v21)
        {
          goto LABEL_15;
        }

        if (v25 >= v21)
        {
          goto LABEL_14;
        }
      }

      v98 = 1;
      v26 = v107;
      if (v27 == v21)
      {
        goto LABEL_15;
      }

      ++v25;
    }

    while (v27 < v21);
LABEL_14:
    __break(1u);
LABEL_15:
    v32 = v106 == 0x8000000000000000 && v90 == -1;
    v81 = v32;
    v88 = (v100 + 8);
    v33 = &_swiftEmptyDictionarySingleton;
    v83 = (v101 + 8);
    *&v30 = 134218754;
    v82 = v30;
    v34 = v86;
    v35 = v21;
    v36 = v94;
    v37 = v99;
    v38 = v97;
    v92 = v24;
    while (1)
    {
      v101 = v35;
      if (!v35)
      {
        break;
      }

      v53 = v23;
      v54 = v34;
      v100 = v53;
      v26(v38);
      v55 = SyncedPhotosFace.day.getter();
      v56 = v24;
      v57 = v105;
      if (v105 >= v55 || (v98 & 1) == 0)
      {
        v62 = SyncedPhotosFace.day.getter();
        if (SyncedPhotosFace.day.getter() >= v57)
        {
          if (!v90)
          {
            goto LABEL_51;
          }

          if (v81)
          {
            goto LABEL_55;
          }

          v34 = v54;
          v64 = SyncedPhotosFace.day.getter();
          v65 = v64 - v106;
          if (__OFSUB__(v64, v106))
          {
            goto LABEL_52;
          }

          v63 = v106 / v90 + v65;
          if (__OFADD__(v106 / v90, v65))
          {
            goto LABEL_53;
          }
        }

        else
        {
          v63 = SyncedPhotosFace.day.getter();
          v34 = v54;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v108 = v33;
        v67 = sub_100057BD0(v62);
        v69 = v33[2];
        v70 = (v68 & 1) == 0;
        v71 = __OFADD__(v69, v70);
        v72 = v69 + v70;
        v52 = v100;
        if (v71)
        {
          goto LABEL_50;
        }

        v73 = v68;
        if (v33[3] >= v72)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v78 = v67;
            sub_100058B50();
            v67 = v78;
            v34 = v86;
          }
        }

        else
        {
          sub_10005A7BC(v72, isUniquelyReferenced_nonNull_native);
          v67 = sub_100057BD0(v62);
          if ((v73 & 1) != (v74 & 1))
          {
            goto LABEL_56;
          }
        }

        v75 = v99;
        v24 = v92;
        v33 = v108;
        if (v73)
        {
          *(v108[7] + 8 * v67) = v63;
          v38 = v97;
          v103(v97, v6);
        }

        else
        {
          v108[(v67 >> 6) + 8] |= 1 << v67;
          *(v33[6] + 8 * v67) = v62;
          *(v33[7] + 8 * v67) = v63;
          v38 = v97;
          v103(v97, v6);
          v76 = v33[2];
          v71 = __OFADD__(v76, 1);
          v77 = v76 + 1;
          if (v71)
          {
            goto LABEL_54;
          }

          v33[2] = v77;
        }

        v36 = v94;
        v26 = v107;
        v37 = v75;
      }

      else
      {
        v96 = v33;
        static Log.session.getter();
        (v26)(v37, v38, v6);
        (v26)(v36, v38, v6);
        v58 = v37;
        v59 = v93;
        (v26)(v93, v38, v6);
        v60 = Logger.logObject.getter();
        v91 = static os_log_type_t.error.getter();
        v95 = v60;
        if (os_log_type_enabled(v60, v91))
        {
          v39 = swift_slowAlloc();
          v87 = swift_slowAlloc();
          v108 = v87;
          *v39 = v82;
          v40 = SyncedPhotosFace.day.getter();
          v41 = v103;
          v103(v99, v6);
          *(v39 + 4) = v40;
          *(v39 + 12) = 2080;
          v42 = v84;
          SyncedPhotosFace.id.getter();
          v41(v36, v6);
          sub_1000FAACC(&qword_10012A2F0, &type metadata accessor for ShuffleID, &protocol conformance descriptor for ShuffleID);
          v43 = v85;
          v44 = dispatch thunk of CustomStringConvertible.description.getter();
          v46 = v45;
          v47 = v42;
          v26 = v107;
          v48 = v93;
          v36 = v94;
          (*v83)(v47, v43);
          v49 = sub_100102F80(v44, v46, &v108);
          v34 = v86;

          *(v39 + 14) = v49;
          *(v39 + 22) = 2048;
          *(v39 + 24) = v106;
          *(v39 + 32) = 2048;
          v50 = SyncedPhotosFace.day.getter();
          v41(v48, v6);
          *(v39 + 34) = v50;
          v51 = v95;
          _os_log_impl(&_mh_execute_header, v95, v91, "Found day %ld for %s, but the minimum valid day is %ld; skipping photos for day %ld", v39, 0x2Au);
          sub_10000C304(v87);

          v24 = v92;
          v37 = v99;

          (*v88)(v34, v89);
          v38 = v97;
          v41(v97, v6);
          v33 = v96;
        }

        else
        {
          v24 = v56;
          v61 = v103;
          v103(v59, v6);
          v61(v58, v6);
          v61(v36, v6);

          (*v88)(v54, v89);
          v61(v38, v6);
          v37 = v58;
          v33 = v96;
          v34 = v54;
        }

        v52 = v100;
      }

      v23 = v52 + v102;
      v35 = v101 - 1;
      if (v101 == 1)
      {
        return v33;
      }
    }

LABEL_49:
    __break(1u);
LABEL_50:
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
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1000F9A1C(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10000CC84;

  return sub_1000F4910(a1, a2, v7, v6);
}

uint64_t sub_1000F9AE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[2];
  v9 = v3[3];
  v10 = v3[4];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_10000CC84;

  return sub_1000E6D88(a1, a2, a3, v8, v9, v10);
}

uint64_t sub_1000F9BB0(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000CC84;

  return sub_1000F4754(a1, a2, v6);
}

uint64_t sub_1000F9C78(uint64_t a1)
{
  v4 = *(type metadata accessor for ShuffleID() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000CC84;

  return sub_1000D9A20(a1, v6, v1 + v5);
}

uint64_t sub_1000F9D5C(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for ShuffleID() - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = *(v2 + 16);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_10000CC84;

  return sub_1000DD188(a1, a2, v8, v2 + v7);
}

uint64_t sub_1000F9E4C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000CC84;

  return sub_10008C790(a1, a2);
}

uint64_t sub_1000F9EF8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000CC84;

  return sub_10008F520(a1);
}

uint64_t sub_1000F9F90()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000FBEE0;

  return sub_1000920BC();
}

uint64_t sub_1000FA020(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_10000CC84;

  return sub_1000929F0(a1, a2, v2);
}

uint64_t sub_1000FA0CC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000FA164;

  return sub_10009306C(a1);
}

uint64_t sub_1000FA164(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1000FA260(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000FBEE0;

  return sub_100093AC0(a1, v1);
}

uint64_t sub_1000FA2F8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000CC84;

  return sub_1000941C0();
}

uint64_t sub_1000FA388()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000CC84;

  return sub_1000944D0();
}

uint64_t sub_1000FA418(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000CC84;

  return sub_1000D0770(a1, a2);
}

uint64_t sub_1000FA4C4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000CC84;

  return sub_10008F520(a1);
}

uint64_t sub_1000FA55C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000CC84;

  return sub_1000D0C7C(a1, a2);
}

uint64_t sub_1000FA608()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000CC84;

  return sub_1000D622C();
}

void *sub_1000FA698(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlbumID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v57 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_10000560C(&qword_100129F70, &qword_100108D90);
  v7 = *(v56 - 8);
  v8 = __chkstk_darwin(v56);
  v53 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v55 = &v41 - v10;
  v11 = &_swiftEmptyDictionarySingleton;
  v58 = &_swiftEmptyDictionarySingleton;
  v12 = *(a1 + 16);
  if (!v12)
  {
    return v11;
  }

  v14 = *(v7 + 16);
  v13 = v7 + 16;
  v15 = *(v13 + 64);
  v16 = *(v13 + 56);
  v51 = (v15 + 32) & ~v15;
  v52 = v14;
  v17 = a1 + v51;
  v54 = (v13 + 16);
  v44 = v5 + 32;
  v45 = v15;
  v43 = (v5 + 8);
  v42 = xmmword_1001089C0;
  v46 = v4;
  v47 = a2;
  v48 = v5;
  v49 = v16;
  v50 = v13;
  v14(v55, v17, v56);
  while (1)
  {
    v20 = v57;
    swift_getAtKeyPath();
    v22 = sub_100057F0C(v20);
    v23 = v11[2];
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      break;
    }

    v26 = v21;
    if (v11[3] < v25)
    {
      sub_10005B480(v25, 1);
      v11 = v58;
      v27 = sub_100057F0C(v57);
      if ((v26 & 1) != (v28 & 1))
      {
        goto LABEL_20;
      }

      v22 = v27;
    }

    if (v26)
    {
      (*v43)(v57, v4);
      v29 = v11[7];
      v30 = *v54;
      (*v54)(v53, v55, v56);
      v31 = *(v29 + 8 * v22);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v29 + 8 * v22) = v31;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v31 = sub_1001002F4(0, *(v31 + 2) + 1, 1, v31);
        *(v29 + 8 * v22) = v31;
      }

      v34 = *(v31 + 2);
      v33 = *(v31 + 3);
      if (v34 >= v33 >> 1)
      {
        v31 = sub_1001002F4((v33 > 1), v34 + 1, 1, v31);
        *(v29 + 8 * v22) = v31;
      }

      v18 = v51;
      *(v31 + 2) = v34 + 1;
      v5 = v48;
      v19 = v49;
      v30(&v31[v18 + v34 * v49], v53, v56);
      v4 = v46;
    }

    else
    {
      sub_10000560C(&qword_10012A768, &unk_100109650);
      v35 = v51;
      v36 = swift_allocObject();
      *(v36 + 16) = v42;
      (*v54)((v36 + v35), v55, v56);
      v11[(v22 >> 6) + 8] |= 1 << v22;
      (*(v5 + 32))(v11[6] + *(v5 + 72) * v22, v57, v4);
      *(v11[7] + 8 * v22) = v36;
      v37 = v11[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_19;
      }

      v11[2] = v39;
      v19 = v49;
    }

    v17 += v19;
    if (!--v12)
    {
      return v11;
    }

    v52(v55, v17, v56);
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000FAACC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1000FAB14(uint64_t a1)
{
  v85 = type metadata accessor for AlbumID();
  v2 = *(v85 - 8);
  __chkstk_darwin(v85);
  v84 = &v80[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v89 = type metadata accessor for Logger();
  v4 = *(v89 - 8);
  __chkstk_darwin(v89);
  v86 = &v80[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_10000560C(&qword_100129F70, &qword_100108D90);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v80[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __chkstk_darwin(v8);
  v13 = &v80[-v12];
  v14 = __chkstk_darwin(v11);
  v16 = &v80[-v15];
  v17 = __chkstk_darwin(v14);
  v99 = &v80[-v18];
  __chkstk_darwin(v17);
  v20 = &v80[-v19];
  v105 = static PhotosFaceIDDatabaseFix.hourValueLowerBound()();
  v90 = static PhotosFaceIDDatabaseFix.hourValueDivisor()();
  v21 = *(a1 + 16);
  if (v21)
  {
    v100 = v4;
    v101 = v2;
    v93 = v13;
    v94 = v16;
    v97 = v20;
    v98 = 0;
    v22 = 0;
    v23 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v24 = v7 + 16;
    v104 = (v7 + 8);
    v106 = 0x7FFFFFFFFFFFFFFFLL;
    v25 = 0;
    do
    {
      while (1)
      {
        v27 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          __break(1u);
          goto LABEL_49;
        }

        v102 = *(v7 + 72);
        v107 = *(v7 + 16);
        (v107)(v10, v23 + v102 * v25, v6);
        if (v22 < SyncedPhotosFace.day.getter())
        {
          v22 = SyncedPhotosFace.day.getter();
        }

        v28 = SyncedPhotosFace.day.getter();
        v29 = v106;
        if (v28 < v106)
        {
          v29 = SyncedPhotosFace.day.getter();
        }

        v103 = *v104;
        v103(v10, v6);
        v106 = v29;
        if (v29 < v105 && v22 >= v105)
        {
          break;
        }

        ++v25;
        v26 = v107;
        if (v27 == v21)
        {
          goto LABEL_15;
        }

        if (v25 >= v21)
        {
          goto LABEL_14;
        }
      }

      v98 = 1;
      v26 = v107;
      if (v27 == v21)
      {
        goto LABEL_15;
      }

      ++v25;
    }

    while (v27 < v21);
LABEL_14:
    __break(1u);
LABEL_15:
    v32 = v106 == 0x8000000000000000 && v90 == -1;
    v81 = v32;
    v88 = (v100 + 8);
    v33 = &_swiftEmptyDictionarySingleton;
    v83 = (v101 + 8);
    *&v30 = 134218754;
    v82 = v30;
    v34 = v86;
    v35 = v21;
    v36 = v94;
    v37 = v99;
    v38 = v97;
    v92 = v24;
    while (1)
    {
      v101 = v35;
      if (!v35)
      {
        break;
      }

      v53 = v23;
      v54 = v34;
      v100 = v53;
      v26(v38);
      v55 = SyncedPhotosFace.day.getter();
      v56 = v24;
      v57 = v105;
      if (v105 >= v55 || (v98 & 1) == 0)
      {
        v62 = SyncedPhotosFace.day.getter();
        if (SyncedPhotosFace.day.getter() >= v57)
        {
          if (!v90)
          {
            goto LABEL_51;
          }

          if (v81)
          {
            goto LABEL_55;
          }

          v34 = v54;
          v64 = SyncedPhotosFace.day.getter();
          v65 = v64 - v106;
          if (__OFSUB__(v64, v106))
          {
            goto LABEL_52;
          }

          v63 = v106 / v90 + v65;
          if (__OFADD__(v106 / v90, v65))
          {
            goto LABEL_53;
          }
        }

        else
        {
          v63 = SyncedPhotosFace.day.getter();
          v34 = v54;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v108 = v33;
        v67 = sub_100057BD0(v62);
        v69 = v33[2];
        v70 = (v68 & 1) == 0;
        v71 = __OFADD__(v69, v70);
        v72 = v69 + v70;
        v52 = v100;
        if (v71)
        {
          goto LABEL_50;
        }

        v73 = v68;
        if (v33[3] >= v72)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v78 = v67;
            sub_100058B50();
            v67 = v78;
            v34 = v86;
          }
        }

        else
        {
          sub_10005A7BC(v72, isUniquelyReferenced_nonNull_native);
          v67 = sub_100057BD0(v62);
          if ((v73 & 1) != (v74 & 1))
          {
            goto LABEL_56;
          }
        }

        v75 = v99;
        v24 = v92;
        v33 = v108;
        if (v73)
        {
          *(v108[7] + 8 * v67) = v63;
          v38 = v97;
          v103(v97, v6);
        }

        else
        {
          v108[(v67 >> 6) + 8] |= 1 << v67;
          *(v33[6] + 8 * v67) = v62;
          *(v33[7] + 8 * v67) = v63;
          v38 = v97;
          v103(v97, v6);
          v76 = v33[2];
          v71 = __OFADD__(v76, 1);
          v77 = v76 + 1;
          if (v71)
          {
            goto LABEL_54;
          }

          v33[2] = v77;
        }

        v36 = v94;
        v26 = v107;
        v37 = v75;
      }

      else
      {
        v96 = v33;
        static Log.session.getter();
        (v26)(v37, v38, v6);
        (v26)(v36, v38, v6);
        v58 = v37;
        v59 = v93;
        (v26)(v93, v38, v6);
        v60 = Logger.logObject.getter();
        v91 = static os_log_type_t.error.getter();
        v95 = v60;
        if (os_log_type_enabled(v60, v91))
        {
          v39 = swift_slowAlloc();
          v87 = swift_slowAlloc();
          v108 = v87;
          *v39 = v82;
          v40 = SyncedPhotosFace.day.getter();
          v41 = v103;
          v103(v99, v6);
          *(v39 + 4) = v40;
          *(v39 + 12) = 2080;
          v42 = v84;
          SyncedPhotosFace.id.getter();
          v41(v36, v6);
          sub_1000FAACC(&qword_10012A0A0, &type metadata accessor for AlbumID, &protocol conformance descriptor for AlbumID);
          v43 = v85;
          v44 = dispatch thunk of CustomStringConvertible.description.getter();
          v46 = v45;
          v47 = v42;
          v26 = v107;
          v48 = v93;
          v36 = v94;
          (*v83)(v47, v43);
          v49 = sub_100102F80(v44, v46, &v108);
          v34 = v86;

          *(v39 + 14) = v49;
          *(v39 + 22) = 2048;
          *(v39 + 24) = v106;
          *(v39 + 32) = 2048;
          v50 = SyncedPhotosFace.day.getter();
          v41(v48, v6);
          *(v39 + 34) = v50;
          v51 = v95;
          _os_log_impl(&_mh_execute_header, v95, v91, "Found day %ld for %s, but the minimum valid day is %ld; skipping photos for day %ld", v39, 0x2Au);
          sub_10000C304(v87);

          v24 = v92;
          v37 = v99;

          (*v88)(v34, v89);
          v38 = v97;
          v41(v97, v6);
          v33 = v96;
        }

        else
        {
          v24 = v56;
          v61 = v103;
          v103(v59, v6);
          v61(v58, v6);
          v61(v36, v6);

          (*v88)(v54, v89);
          v61(v38, v6);
          v37 = v58;
          v33 = v96;
          v34 = v54;
        }

        v52 = v100;
      }

      v23 = v52 + v102;
      v35 = v101 - 1;
      if (v101 == 1)
      {
        return v33;
      }
    }

LABEL_49:
    __break(1u);
LABEL_50:
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
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1000FB47C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for MessageBody() - 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = v1 + ((*(v5 + 80) + 49) & ~*(v5 + 80));
  v11 = *(v10 + *(v5 + 64));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_10000CC84;

  return sub_1000F49C0(a1, v6, v7, v8, v9, (v1 + 48), v10, v11);
}

uint64_t sub_1000FB5C4(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10000CC84;

  return sub_1000F4AB4(a1, a2, v7, v6);
}

uint64_t sub_1000FB68C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[2];
  v9 = v3[3];
  v10 = v3[4];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_10000CC84;

  return sub_1000E7E2C(a1, a2, a3, v8, v9, v10);
}

uint64_t sub_1000FB758(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000CC84;

  return sub_1000F4754(a1, a2, v6);
}

uint64_t sub_1000FB838(uint64_t a1)
{
  v4 = *(type metadata accessor for AlbumID() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000CC84;

  return sub_1000D9D04(a1, v6, v1 + v5);
}

uint64_t sub_1000FB91C(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for AlbumID() - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = *(v2 + 16);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_10000CC84;

  return sub_1000DEA58(a1, a2, v8, v2 + v7);
}

uint64_t sub_1000FBA0C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for MessageBody() - 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = v1 + ((*(v5 + 80) + 49) & ~*(v5 + 80));
  v11 = *(v10 + *(v5 + 64));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_10000CC84;

  return sub_1000F45B0(a1, v6, v7, v8, v9, (v1 + 48), v10, v11);
}

uint64_t sub_1000FBB54(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_1000FBC58()
{
  v1 = type metadata accessor for MessageBody();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000FBD1C(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for MessageBody() - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_10000CC84;

  return sub_1000ED0A8(a1, a2, v8, v9, v2 + v7);
}

uint64_t sub_1000FBF3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10000560C(&qword_100129E70, &unk_100109CD0);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_10000C04C(a3, v22 - v9);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_10000C460(v10, &qword_100129E70, &unk_100109CD0);
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

      sub_10000C460(a3, &qword_100129E70, &unk_100109CD0);

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

  sub_10000C460(a3, &qword_100129E70, &unk_100109CD0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1000FC1D8()
{
  v1 = v0;
  v9[0] = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v9[0] - 8);
  __chkstk_darwin(v9[0]);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue_serial.Attributes();
  __chkstk_darwin(v5);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  swift_defaultActor_initialize();
  sub_100100890();
  static DispatchQoS.unspecified.getter();
  v9[1] = _swiftEmptyArrayStorage;
  sub_1001008DC(&qword_10012B750, &type metadata accessor for OS_dispatch_queue_serial.Attributes, &protocol conformance descriptor for OS_dispatch_queue_serial.Attributes);
  sub_10000560C(&qword_10012B758, &unk_10010AAC0);
  sub_100100924();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v9[0]);
  *(v0 + 112) = OS_dispatch_queue_serial.init(label:qos:attributes:autoreleaseFrequency:target:)();
  ContinuousClock.init()();
  v7 = OBJC_IVAR____TtC11photosfaced21BackgroundTaskManager_registry;
  *(v1 + v7) = sub_10005D2D4(_swiftEmptyArrayStorage);
  return v1;
}

void sub_1000FC444()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.default.getter();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "BackgroundTaskManager Activate", v6, 2u);
  }

  (*(v1 + 8))(v3, v0);
  v7 = objc_opt_self();
  v8 = 0;
  v16 = *(v18 + 112);
  v17 = v7;
  v15[1] = "com.apple.photosface.sync";
  v15[2] = v20;
  v15[0] = "v16@?0@BGSystemTask8";
  do
  {
    v9 = *(&off_100125EB8 + v8++ + 32);
    v10 = [v17 sharedScheduler];
    v11 = String._bridgeToObjectiveC()();

    v12 = swift_allocObject();
    swift_weakInit();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = v9;
    v20[2] = sub_100100884;
    v20[3] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    v20[0] = sub_1000FC7E4;
    v20[1] = &unk_100127968;
    v14 = _Block_copy(aBlock);

    [v10 registerForTaskWithIdentifier:v11 usingQueue:v16 launchHandler:v14];
    _Block_release(v14);
  }

  while (v8 != 5);
}

uint64_t sub_1000FC770(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000FCE60(v3, a1);
  }

  return result;
}

void sub_1000FC7E4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1000FC84C(int *a1)
{
  v4 = (a1 + *a1);
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1000FC934;

  return v4();
}

uint64_t sub_1000FC934()
{
  v7 = *v1;

  v5 = *(v7 + 8);
  if (!v0)
  {
    v2 = 0;
    v3 = 0;
    v4 = 1;
  }

  return v5(v2, v3, v4);
}

uint64_t sub_1000FCA38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v9 = OBJC_IVAR____TtC11photosfaced21BackgroundTaskManager_registry;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v4 + v9);
  *(v4 + v9) = 0x8000000000000000;
  v13 = sub_1000579F8(a1);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  if (v11[3] >= v16)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      *(v4 + v9) = v11;
      if (v12)
      {
        goto LABEL_9;
      }
    }

    else
    {
      sub_100058608();
      *(v4 + v9) = v11;
      if (v17)
      {
        goto LABEL_9;
      }
    }

LABEL_8:
    sub_10005F8A8();
    goto LABEL_9;
  }

  sub_100059A44(v16, isUniquelyReferenced_nonNull_native);
  v18 = sub_1000579F8(a1);
  if ((v17 & 1) != (v19 & 1))
  {
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v13 = v18;
  *(v4 + v9) = v11;
  if ((v17 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_9:
  v4 = v11[7];
  v11 = *(v4 + 8 * v13);
  v20 = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + 8 * v13) = v11;
  if ((v20 & 1) == 0)
  {
LABEL_14:
    v11 = sub_1000FFE54(0, v11[2] + 1, 1, v11, &qword_10012B730, &qword_10010AA88);
    *(v4 + 8 * v13) = v11;
  }

  v22 = v11[2];
  v21 = v11[3];
  if (v22 >= v21 >> 1)
  {
    v11 = sub_1000FFE54((v21 > 1), v22 + 1, 1, v11, &qword_10012B730, &qword_10010AA88);
    *(v4 + 8 * v13) = v11;
  }

  v11[2] = v22 + 1;
  v23 = &v11[2 * v22];
  v23[4] = &unk_10010AA80;
  v23[5] = v8;
  return swift_endAccess();
}

uint64_t sub_1000FCC4C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1000FCD38;

  return v5();
}

uint64_t sub_1000FCD38(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v4;
  v9 = *v4;

  if (!v3)
  {
    v10 = *(v8 + 16);
    *v10 = a1;
    *(v10 + 8) = a2;
    *(v10 + 16) = a3 & 1;
  }

  v11 = *(v9 + 8);

  return v11();
}

uint64_t sub_1000FCE60(char a1, void *a2)
{
  v3 = v2;
  v6 = sub_10000560C(&qword_100129E70, &unk_100109CD0);
  __chkstk_darwin(v6 - 8);
  v8 = aBlock - v7;
  type metadata accessor for Analytics.BackgroundTask(0);
  v9 = swift_allocObject();
  static ContinuousClock.Instant.now.getter();
  *(v9 + OBJC_IVAR____TtCC11photosfaced9Analytics14BackgroundTask_errored) = 0;
  v10 = OBJC_IVAR____TtCC11photosfaced9Analytics14BackgroundTask_cancelTime;
  v11 = type metadata accessor for ContinuousClock.Instant();
  v12 = *(*(v11 - 8) + 56);
  v12(v9 + v10, 1, 1, v11);
  v12(v9 + OBJC_IVAR____TtCC11photosfaced9Analytics14BackgroundTask_endTime, 1, 1, v11);
  v13 = OBJC_IVAR____TtCC11photosfaced9Analytics14BackgroundTask_lock;
  sub_10000560C(&qword_10012B728, &qword_10010AA60);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v9 + v13) = v14;
  *(v9 + 16) = a1;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  *(v16 + 32) = v3;
  *(v16 + 40) = v9;
  *(v16 + 48) = a1;
  *(v16 + 56) = a2;

  v17 = a2;
  v18 = sub_1000FBF3C(0, 0, v8, &unk_10010AA70, v16);
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = v9;
  *(v19 + 32) = v18;
  aBlock[4] = sub_100100668;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000FEFF0;
  aBlock[3] = &unk_1001278C8;
  v20 = _Block_copy(aBlock);

  [v17 setExpirationHandler:v20];
  _Block_release(v20);
}

uint64_t sub_1000FD148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v7 + 80) = a5;
  *(v7 + 88) = a7;
  *(v7 + 264) = a6;
  *(v7 + 72) = a4;
  v8 = type metadata accessor for Logger();
  *(v7 + 96) = v8;
  *(v7 + 104) = *(v8 - 8);
  *(v7 + 112) = swift_task_alloc();
  *(v7 + 120) = swift_task_alloc();
  *(v7 + 128) = swift_task_alloc();
  *(v7 + 136) = swift_task_alloc();
  *(v7 + 144) = swift_task_alloc();
  v9 = type metadata accessor for ContinuousClock.Instant();
  *(v7 + 152) = v9;
  *(v7 + 160) = *(v9 - 8);
  *(v7 + 168) = swift_task_alloc();
  *(v7 + 176) = swift_task_alloc();
  *(v7 + 184) = swift_task_alloc();
  *(v7 + 192) = swift_task_alloc();
  *(v7 + 200) = swift_task_alloc();
  *(v7 + 208) = swift_task_alloc();
  *(v7 + 216) = swift_task_alloc();

  return _swift_task_switch(sub_1000FD310, 0, 0);
}

uint64_t sub_1000FD310()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 80);
  *(v0 + 224) = OBJC_IVAR____TtC11photosfaced21BackgroundTaskManager_clock;
  ContinuousClock.now.getter();
  v3 = *(v2 + OBJC_IVAR____TtCC11photosfaced9Analytics14BackgroundTask_lock);
  *(v0 + 232) = v3;
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = swift_task_alloc();
  *(v5 + 16) = sub_1001006D0;
  *(v5 + 24) = v4;
  os_unfair_lock_lock(v3 + 4);
  sub_1001009A8();
  os_unfair_lock_unlock(v3 + 4);

  v6 = swift_task_alloc();
  *(v0 + 240) = v6;
  *v6 = v0;
  v6[1] = sub_1000FD4A0;
  v7 = *(v0 + 264);

  return sub_1000FF034(v7);
}

uint64_t sub_1000FD4A0(uint64_t a1, char a2)
{
  v5 = *v3;
  *(v5 + 248) = a1;
  *(v5 + 256) = v2;

  if (v2)
  {
    v6 = sub_1000FE600;
  }

  else
  {
    *(v5 + 265) = a2;
    v6 = sub_1000FD5F0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000FD5F0(uint64_t a1)
{
  v181 = v1;
  if (*(v1 + 265))
  {
    v2 = *(v1 + 216);
    v3 = *(v1 + 184);
    v4 = *(v1 + 152);
    v5 = *(v1 + 160);
    static Log.session.getter();
    (*(v5 + 16))(v3, v2, v4);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v174 = v7;
      log = v6;
      v8 = *(v1 + 264);
      v9 = swift_slowAlloc();
      v180[0] = swift_slowAlloc();
      v10 = 0xE400000000000000;
      *v9 = 136315394;
      v11 = 0x69737365636F7270;
      v12 = 0xEA0000000000676ELL;
      v13 = 0xE600000000000000;
      v14 = 0x70756D726177;
      if (v8 != 3)
      {
        v14 = 0x70756E61656C63;
        v13 = 0xE700000000000000;
      }

      if (v8 != 2)
      {
        v11 = v14;
        v12 = v13;
      }

      v15 = 0x68736572666572;
      if (v8)
      {
        v10 = 0xE700000000000000;
      }

      else
      {
        v15 = 1668184435;
      }

      if (v8 <= 1)
      {
        v16 = v15;
      }

      else
      {
        v16 = v11;
      }

      if (v8 <= 1)
      {
        v17 = v10;
      }

      else
      {
        v17 = v12;
      }

      v18 = *(v1 + 200);
      v19 = *(v1 + 184);
      v21 = *(v1 + 152);
      v20 = *(v1 + 160);
      v165 = *(v1 + 104);
      v168 = *(v1 + 96);
      v171 = *(v1 + 136);
      v22 = sub_100102F80(v16, v17, v180);

      *(v9 + 4) = v22;
      *(v9 + 12) = 2080;
      ContinuousClock.now.getter();
      ContinuousClock.Instant.duration(to:)();
      v23 = v18;
      v24 = *(v20 + 8);
      (v24)(v23, v21);
      v25 = Duration.description.getter();
      v27 = v26;
      (v24)(v19, v21);
      v28 = sub_100102F80(v25, v27, v180);

      *(v9 + 14) = v28;
      _os_log_impl(&_mh_execute_header, log, v174, "Marking %s as complete after %s", v9, 0x16u);
      swift_arrayDestroy();

      v29 = *(v165 + 8);
      v29(v171, v168);
    }

    else
    {
      v59 = *(v1 + 184);
      v61 = *(v1 + 152);
      v60 = *(v1 + 160);
      v62 = *(v1 + 136);
      v63 = *(v1 + 96);
      v64 = *(v1 + 104);

      v24 = *(v60 + 8);
      (v24)(v59, v61);
      v29 = *(v64 + 8);
      v29(v62, v63);
    }

    v65 = *(v1 + 256);
    v66 = *(v1 + 232);
    v67 = *(v1 + 176);
    v68 = *(v1 + 80);
    static ContinuousClock.Instant.now.getter();
    v69 = swift_task_alloc();
    *(v69 + 16) = v68;
    *(v69 + 24) = v67;
    v70 = swift_task_alloc();
    *(v70 + 16) = sub_100100708;
    *(v70 + 24) = v69;
    os_unfair_lock_lock(v66 + 4);
    sub_1001009A8();
    os_unfair_lock_unlock(v66 + 4);

    if (!v65)
    {
      v72 = *(v1 + 176);
      v73 = *(v1 + 152);
      v74 = *(v1 + 264);

      (v24)(v72, v73);
      logb = v24;
      if (v74 == 3)
      {
        static Log.default.getter();
        v75 = Logger.logObject.getter();
        v76 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v75, v76))
        {
          v77 = swift_slowAlloc();
          *v77 = 134217984;
          *(v77 + 4) = 108;
          _os_log_impl(&_mh_execute_header, v75, v76, "Marking feature %lu as complete.", v77, 0xCu);
        }

        v78 = *(v1 + 128);
        v79 = *(v1 + 96);

        v29(v78, v79);
        v80 = objc_opt_self();
        *(v1 + 56) = 0;
        v81 = [v80 reportFeatureCheckpoint:50 forFeature:108 atDate:0 error:v1 + 56];
        v82 = *(v1 + 56);
        if (v81)
        {
          v83 = v82;
        }

        else
        {
          v134 = v82;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          static Log.default.getter();
          swift_errorRetain();
          v135 = Logger.logObject.getter();
          v136 = static os_log_type_t.error.getter();

          v137 = os_log_type_enabled(v135, v136);
          v138 = *(v1 + 112);
          v139 = *(v1 + 96);
          if (v137)
          {
            v140 = swift_slowAlloc();
            v141 = swift_slowAlloc();
            v142 = swift_slowAlloc();
            v180[0] = v142;
            *v140 = 136315394;
            *(v140 + 4) = sub_100102F80(0x70756D726177, 0xE600000000000000, v180);
            *(v140 + 12) = 2112;
            swift_errorRetain();
            v143 = _swift_stdlib_bridgeErrorToNSError();
            *(v140 + 14) = v143;
            *v141 = v143;
            _os_log_impl(&_mh_execute_header, v135, v136, "Failed to mark %s as available: %@", v140, 0x16u);
            sub_10000C460(v141, &qword_100129EF8, &qword_100108C70);

            sub_10000C304(v142);
          }

          else
          {
          }

          v29(v138, v139);
        }
      }

      [*(v1 + 88) setTaskCompleted];
      goto LABEL_67;
    }
  }

  else
  {
    v30 = *(v1 + 248);
    v31 = *(v1 + 208);
    v32 = *(v1 + 216);
    v33 = *(v1 + 152);
    v34 = *(v1 + 160);
    static Log.session.getter();
    (*(v34 + 16))(v31, v32, v33);

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v175 = v36;
      loga = v35;
      v37 = *(v1 + 264);
      v38 = swift_slowAlloc();
      v180[0] = swift_slowAlloc();
      v39 = 0xE400000000000000;
      *v38 = 136315650;
      v40 = 0x69737365636F7270;
      v41 = 0xEA0000000000676ELL;
      v42 = 0xE600000000000000;
      v43 = 0x70756D726177;
      if (v37 != 3)
      {
        v43 = 0x70756E61656C63;
        v42 = 0xE700000000000000;
      }

      if (v37 != 2)
      {
        v40 = v43;
        v41 = v42;
      }

      v44 = 0x68736572666572;
      if (v37)
      {
        v39 = 0xE700000000000000;
      }

      else
      {
        v44 = 1668184435;
      }

      if (v37 <= 1)
      {
        v45 = v44;
      }

      else
      {
        v45 = v40;
      }

      if (v37 <= 1)
      {
        v46 = v39;
      }

      else
      {
        v46 = v41;
      }

      v48 = *(v1 + 200);
      v47 = *(v1 + 208);
      v50 = *(v1 + 152);
      v49 = *(v1 + 160);
      v164 = *(v1 + 248);
      v166 = *(v1 + 104);
      v169 = *(v1 + 96);
      v172 = *(v1 + 144);
      v51 = sub_100102F80(v45, v46, v180);

      *(v38 + 4) = v51;
      *(v38 + 12) = 2080;
      ContinuousClock.now.getter();
      ContinuousClock.Instant.duration(to:)();
      v52 = *(v49 + 8);
      (v52)(v48, v50);
      v53 = Duration.description.getter();
      v55 = v54;
      v56 = v47;
      v57 = v52;
      (v52)(v56, v50);
      v58 = sub_100102F80(v53, v55, v180);

      *(v38 + 14) = v58;
      *(v38 + 22) = 2048;
      *(v38 + 24) = v164;
      _os_log_impl(&_mh_execute_header, loga, v175, "Asked to delay task %s after %s. Retrying in %f seconds.", v38, 0x20u);
      swift_arrayDestroy();

      (*(v166 + 8))(v172, v169);
    }

    else
    {
      v84 = *(v1 + 208);
      v86 = *(v1 + 152);
      v85 = *(v1 + 160);
      v87 = *(v1 + 144);
      v88 = *(v1 + 96);
      v89 = *(v1 + 104);

      v57 = *(v85 + 8);
      (v57)(v84, v86);
      (*(v89 + 8))(v87, v88);
    }

    v90 = *(v1 + 256);
    v91 = *(v1 + 232);
    v92 = *(v1 + 192);
    v93 = *(v1 + 80);
    static ContinuousClock.Instant.now.getter();
    v94 = swift_task_alloc();
    *(v94 + 16) = v93;
    *(v94 + 24) = v92;
    v95 = swift_task_alloc();
    *(v95 + 16) = sub_10010098C;
    *(v95 + 24) = v94;
    os_unfair_lock_lock(v91 + 4);
    sub_1001009A8();
    os_unfair_lock_unlock(v91 + 4);

    if (!v90)
    {
      v96 = *(v1 + 192);
      v97 = *(v1 + 152);
      v98 = *(v1 + 88);

      (v57)(v96, v97);
      *(v1 + 64) = 0;
      p_name = &stru_100128FF8.name;
      v100 = [v98 setTaskExpiredWithRetryAfter:v1 + 64 error:v30];
      v101 = *(v1 + 64);
      if (v100)
      {
        logb = v57;
        v102 = v101;
      }

      else
      {
        v103 = v101;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        v104 = *(v1 + 216);
        v105 = *(v1 + 160);
        v106 = *(v1 + 168);
        v107 = *(v1 + 152);
        static Log.session.getter();
        (*(v105 + 16))(v106, v104, v107);

        swift_errorRetain();
        v108 = Logger.logObject.getter();
        v109 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v108, v109))
        {
          logc = v109;
          v110 = *(v1 + 264);
          v111 = swift_slowAlloc();
          v180[0] = swift_slowAlloc();
          v112 = 0xE400000000000000;
          *v111 = 136315650;
          v113 = 0x69737365636F7270;
          v114 = 0xEA0000000000676ELL;
          v115 = 0xE600000000000000;
          v116 = 0x70756D726177;
          if (v110 != 3)
          {
            v116 = 0x70756E61656C63;
            v115 = 0xE700000000000000;
          }

          if (v110 != 2)
          {
            v113 = v116;
            v114 = v115;
          }

          v117 = 0x68736572666572;
          if (v110)
          {
            v112 = 0xE700000000000000;
          }

          else
          {
            v117 = 1668184435;
          }

          if (v110 <= 1)
          {
            v118 = v117;
          }

          else
          {
            v118 = v113;
          }

          if (v110 <= 1)
          {
            v119 = v112;
          }

          else
          {
            v119 = v114;
          }

          v120 = *(v1 + 200);
          v121 = *(v1 + 160);
          v122 = *(v1 + 168);
          v123 = *(v1 + 152);
          v167 = *(v1 + 104);
          v170 = *(v1 + 96);
          v173 = *(v1 + 120);
          v124 = sub_100102F80(v118, v119, v180);

          *(v111 + 4) = v124;
          *(v111 + 12) = 2080;
          swift_getErrorValue();
          v125 = sub_100103DF4(*(v1 + 24));
          v127 = sub_100102F80(v125, v126, v180);

          *(v111 + 14) = v127;
          *(v111 + 22) = 2080;
          ContinuousClock.now.getter();
          ContinuousClock.Instant.duration(to:)();
          v128 = v120;
          v129 = *(v121 + 8);
          v129(v128, v123);
          v130 = Duration.description.getter();
          v132 = v131;
          v129(v122, v123);
          v133 = sub_100102F80(v130, v132, v180);

          *(v111 + 24) = v133;
          _os_log_impl(&_mh_execute_header, v108, logc, "Failed to complete task %s due to error %s after %s. Retrying.", v111, 0x20u);
          swift_arrayDestroy();

          (*(v167 + 8))(v173, v170);
          p_name = (&stru_100128FF8 + 8);
        }

        else
        {
          v144 = *(v1 + 160);
          v145 = *(v1 + 168);
          v146 = *(v1 + 152);
          v147 = *(v1 + 120);
          v148 = *(v1 + 96);
          v149 = *(v1 + 104);

          v129 = *(v144 + 8);
          v129(v145, v146);
          (*(v149 + 8))(v147, v148);
        }

        v150 = *(v1 + 232);
        v151 = *(v1 + 80);
        v152 = swift_task_alloc();
        *(v152 + 16) = sub_1001006EC;
        *(v152 + 24) = v151;
        os_unfair_lock_lock(v150 + 4);
        sub_1001009A8();
        os_unfair_lock_unlock(v150 + 4);

        v153 = *(v1 + 88);
        *(v1 + 40) = 0;
        v154 = [v153 p_name[300]];
        v155 = *(v1 + 40);
        if (!v154)
        {
          v160 = v129;
          v161 = *(v1 + 216);
          v162 = *(v1 + 152);
          v163 = v155;
          _convertNSErrorToError(_:)();

          swift_willThrow();

          sub_1001013B0();
          v160(v161, v162);

          v159 = *(v1 + 8);
          goto LABEL_68;
        }

        logb = v129;
        v156 = v155;
      }

LABEL_67:
      v157 = *(v1 + 216);
      v158 = *(v1 + 152);
      sub_1001013B0();
      (logb)(v157, v158);

      v159 = *(v1 + 8);
LABEL_68:

      return v159();
    }
  }

  return result;
}

uint64_t sub_1000FE600(uint64_t a1)
{
  v57 = v1;
  v2 = *(v1 + 216);
  v3 = *(v1 + 160);
  v4 = *(v1 + 168);
  v5 = *(v1 + 152);
  static Log.session.getter();
  (*(v3 + 16))(v4, v2, v5);

  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v55 = v7;
    v8 = *(v1 + 264);
    v9 = swift_slowAlloc();
    v56[0] = swift_slowAlloc();
    v10 = 0xE400000000000000;
    v11 = 1668184435;
    *v9 = 136315650;
    v12 = 0xEA0000000000676ELL;
    v13 = 0x69737365636F7270;
    v14 = 0xE600000000000000;
    v15 = 0x70756D726177;
    if (v8 != 3)
    {
      v15 = 0x70756E61656C63;
      v14 = 0xE700000000000000;
    }

    if (v8 != 2)
    {
      v13 = v15;
      v12 = v14;
    }

    if (v8)
    {
      v11 = 0x68736572666572;
      v10 = 0xE700000000000000;
    }

    if (v8 <= 1)
    {
      v16 = v11;
    }

    else
    {
      v16 = v13;
    }

    if (v8 <= 1)
    {
      v17 = v10;
    }

    else
    {
      v17 = v12;
    }

    v18 = *(v1 + 200);
    v19 = *(v1 + 160);
    v20 = *(v1 + 168);
    v21 = *(v1 + 152);
    v52 = *(v1 + 104);
    v53 = *(v1 + 96);
    v54 = *(v1 + 120);
    v22 = sub_100102F80(v16, v17, v56);

    *(v9 + 4) = v22;
    *(v9 + 12) = 2080;
    swift_getErrorValue();
    v23 = sub_100103DF4(*(v1 + 24));
    v25 = sub_100102F80(v23, v24, v56);

    *(v9 + 14) = v25;
    *(v9 + 22) = 2080;
    ContinuousClock.now.getter();
    ContinuousClock.Instant.duration(to:)();
    v26 = v18;
    v27 = *(v19 + 8);
    v27(v26, v21);
    v28 = Duration.description.getter();
    v30 = v29;
    v27(v20, v21);
    v31 = sub_100102F80(v28, v30, v56);

    *(v9 + 24) = v31;
    _os_log_impl(&_mh_execute_header, v6, v55, "Failed to complete task %s due to error %s after %s. Retrying.", v9, 0x20u);
    swift_arrayDestroy();

    (*(v52 + 8))(v54, v53);
  }

  else
  {
    v33 = *(v1 + 160);
    v32 = *(v1 + 168);
    v34 = *(v1 + 152);
    v35 = *(v1 + 120);
    v36 = *(v1 + 96);
    v37 = *(v1 + 104);

    v27 = *(v33 + 8);
    v27(v32, v34);
    (*(v37 + 8))(v35, v36);
  }

  v38 = *(v1 + 232);
  v39 = *(v1 + 80);
  v40 = swift_task_alloc();
  *(v40 + 16) = sub_1001006EC;
  *(v40 + 24) = v39;
  os_unfair_lock_lock(v38 + 4);
  sub_1001009A8();
  os_unfair_lock_unlock(v38 + 4);

  v41 = *(v1 + 88);
  *(v1 + 40) = 0;
  v42 = [v41 setTaskExpiredWithRetryAfter:v1 + 40 error:0.0];
  v43 = *(v1 + 40);
  if (v42)
  {
    v44 = v43;

    v45 = *(v1 + 216);
    v46 = *(v1 + 152);
    sub_1001013B0();
    v27(v45, v46);
  }

  else
  {
    v48 = *(v1 + 216);
    v49 = *(v1 + 152);
    v50 = v43;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    sub_1001013B0();
    v27(v48, v49);
  }

  v47 = *(v1 + 8);

  return v47();
}

void sub_1000FEC2C(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ContinuousClock.Instant();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((static TestProperties.ignoreDuetCancellations.getter() & 1) == 0)
  {
    v34 = a2;
    v36 = v6;
    static Log.session.getter();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    v16 = os_log_type_enabled(v14, v15);
    v35 = v7;
    if (v16)
    {
      v33 = a3;
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v37 = v18;
      v19 = 0xE400000000000000;
      v20 = 1668184435;
      *v17 = 136315138;
      v21 = 0xEA0000000000676ELL;
      v22 = 0x69737365636F7270;
      v23 = 0xE600000000000000;
      v24 = 0x70756D726177;
      if (a1 != 3)
      {
        v24 = 0x70756E61656C63;
        v23 = 0xE700000000000000;
      }

      if (a1 != 2)
      {
        v22 = v24;
        v21 = v23;
      }

      if (a1)
      {
        v20 = 0x68736572666572;
        v19 = 0xE700000000000000;
      }

      if (a1 <= 1u)
      {
        v25 = v20;
      }

      else
      {
        v25 = v22;
      }

      if (a1 <= 1u)
      {
        v26 = v19;
      }

      else
      {
        v26 = v21;
      }

      v27 = sub_100102F80(v25, v26, &v37);

      *(v17 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v14, v15, "Duet asked us to cancel task %s", v17, 0xCu);
      sub_10000C304(v18);

      (*(v11 + 8))(v13, v10);
    }

    else
    {

      (*(v11 + 8))(v13, v10);
    }

    v28 = static ContinuousClock.Instant.now.getter();
    v29 = *(v34 + OBJC_IVAR____TtCC11photosfaced9Analytics14BackgroundTask_lock);
    v30 = __chkstk_darwin(v28);
    *(&v33 - 2) = v31;
    *(&v33 - 1) = v9;
    __chkstk_darwin(v30);
    *(&v33 - 2) = sub_10010068C;
    *(&v33 - 1) = v32;
    os_unfair_lock_lock(v29 + 4);
    sub_1001006A8();
    os_unfair_lock_unlock(v29 + 4);
    (*(v35 + 8))(v9, v36);
    sub_10000560C(&qword_10012A308, &qword_100109000);
    Task.cancel()();
  }
}

uint64_t sub_1000FEFF0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_1000FF034(char a1)
{
  *(v2 + 96) = v1;
  *(v2 + 57) = a1;
  v3 = type metadata accessor for Logger();
  *(v2 + 104) = v3;
  *(v2 + 112) = *(v3 - 8);
  *(v2 + 120) = swift_task_alloc();
  *(v2 + 128) = swift_task_alloc();

  return _swift_task_switch(sub_1000FF104, v1, 0);
}

void *sub_1000FF104()
{
  v37 = v0;
  v1 = *(v0 + 96);
  v2 = OBJC_IVAR____TtC11photosfaced21BackgroundTaskManager_registry;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = *(v3 + 16);

  if (v4 && (v5 = sub_1000579F8(*(v0 + 57)), (v6 & 1) != 0))
  {
    v7 = *(*(v3 + 56) + 8 * v5);
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  *(v0 + 136) = v7;

  static Log.session.getter();

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 57);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v36 = v12;
    *v11 = 134218242;
    *(v11 + 4) = v7[2];

    v13 = 0xE400000000000000;
    *(v11 + 12) = 2080;
    v14 = 1668184435;
    v15 = 0xEA0000000000676ELL;
    v16 = 0x69737365636F7270;
    v17 = 0xE600000000000000;
    v18 = 0x70756D726177;
    if (v10 != 3)
    {
      v18 = 0x70756E61656C63;
      v17 = 0xE700000000000000;
    }

    if (v10 != 2)
    {
      v16 = v18;
      v15 = v17;
    }

    if (v10)
    {
      v14 = 0x68736572666572;
      v13 = 0xE700000000000000;
    }

    if (v10 <= 1)
    {
      v19 = v14;
    }

    else
    {
      v19 = v16;
    }

    if (v10 <= 1)
    {
      v20 = v13;
    }

    else
    {
      v20 = v15;
    }

    v34 = *(v0 + 128);
    v22 = *(v0 + 104);
    v21 = *(v0 + 112);
    v23 = sub_100102F80(v19, v20, &v36);

    *(v11 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v8, v9, "Running %ld tasks for %s", v11, 0x16u);
    sub_10000C304(v12);

    v24 = *(v21 + 8);
    v24(v34, v22);
  }

  else
  {
    v25 = *(v0 + 128);
    v26 = *(v0 + 104);
    v27 = *(v0 + 112);

    v24 = *(v27 + 8);
    v24(v25, v26);
  }

  *(v0 + 144) = v24;
  v28 = v7[2];
  *(v0 + 152) = v28;
  *(v0 + 160) = 0;
  result = *(v0 + 136);
  if (v28)
  {
    if (result[2])
    {
      v30 = result[4];
      *(v0 + 168) = result[5];

      if (static Task<>.isCancelled.getter())
      {

        type metadata accessor for CancellationError();
        sub_1001008DC(&qword_10012B720, &type metadata accessor for CancellationError, &protocol conformance descriptor for CancellationError);
        swift_allocError();
        CancellationError.init()();
        swift_willThrow();

        v31 = *(v0 + 8);

        return v31();
      }

      else
      {
        v35 = (v30 + *v30);
        v33 = swift_task_alloc();
        *(v0 + 176) = v33;
        *v33 = v0;
        v33[1] = sub_1000FF5AC;

        return v35(v0 + 40);
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v32 = *(v0 + 8);

    return v32(0, 1);
  }

  return result;
}

uint64_t sub_1000FF5AC()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 96);

    *(v2 + 184) = *(v2 + 40);
    *(v2 + 58) = *(v2 + 56);

    return _swift_task_switch(sub_1000FF73C, v6, 0);
  }
}

uint64_t sub_1000FF73C()
{
  v28 = v0;
  v1 = *(v0 + 58);
  if ((v1 & 1) == 0)
  {

    Duration.timeInterval.getter();
    v3 = v2;
    if (v2 < 300.0 || v2 > 64000000.0)
    {
      static Log.session.getter();
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.error.getter();
      v7 = os_log_type_enabled(v5, v6);
      v8 = *(v0 + 144);
      v9 = *(v0 + 120);
      v10 = *(v0 + 104);
      if (v7)
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v27 = v12;
        *v11 = 134218242;
        *(v11 + 4) = v3;
        *(v11 + 12) = 2080;
        *(v0 + 80) = xmmword_10010A9D0;
        *(v0 + 64) = 0;
        *(v0 + 72) = 0xE000000000000000;
        v25 = v9;
        _print_unlocked<A, B>(_:_:)();
        v13._countAndFlagsBits = 3026478;
        v13._object = 0xE300000000000000;
        String.append(_:)(v13);
        _print_unlocked<A, B>(_:_:)();
        v14 = sub_100102F80(*(v0 + 64), *(v0 + 72), &v27);

        *(v11 + 14) = v14;
        _os_log_impl(&_mh_execute_header, v5, v6, "Invalid Delay Duration: %f, clamping to %s", v11, 0x16u);
        sub_10000C304(v12);

        v8(v25, v10);
      }

      else
      {

        v8(v9, v10);
      }

      v19 = fmax(v3, 300.0);
      if (v19 < 64000000.0)
      {
        v3 = v19;
      }

      else
      {
        v3 = 64000000.0;
      }
    }

    v18 = v3;
    goto LABEL_18;
  }

  if (*(v0 + 184) != 0 || (v15 = *(v0 + 152), v16 = *(v0 + 160) + 1, *(v0 + 160) = v16, result = *(v0 + 136), v16 == v15))
  {

    v18 = 0.0;
LABEL_18:

    v20 = *(v0 + 8);

    return v20(*&v18, v1);
  }

  if (v16 >= *(result + 16))
  {
    __break(1u);
  }

  else
  {
    v21 = result + 16 * v16;
    v22 = *(v21 + 32);
    *(v0 + 168) = *(v21 + 40);

    if (static Task<>.isCancelled.getter())
    {

      type metadata accessor for CancellationError();
      sub_1001008DC(&qword_10012B720, &type metadata accessor for CancellationError, &protocol conformance descriptor for CancellationError);
      swift_allocError();
      CancellationError.init()();
      swift_willThrow();

      v23 = *(v0 + 8);

      return v23();
    }

    else
    {
      v26 = (v22 + *v22);
      v24 = swift_task_alloc();
      *(v0 + 176) = v24;
      *v24 = v0;
      v24[1] = sub_1000FF5AC;

      return v26(v0 + 40);
    }
  }

  return result;
}

uint64_t sub_1000FFBEC()
{
  v1 = OBJC_IVAR____TtC11photosfaced21BackgroundTaskManager_clock;
  v2 = type metadata accessor for ContinuousClock();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for BackgroundTaskManager(uint64_t a1)
{
  result = qword_10012B640;
  if (!qword_10012B640)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000FFCD0(uint64_t a1)
{
  result = type metadata accessor for ContinuousClock();
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

__n128 initializeBufferWithCopyOfBuffer for BackgroundTaskManager.Result(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for BackgroundTaskManager.Result(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for BackgroundTaskManager.Result(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 17) = v3;
  return result;
}

uint64_t sub_1000FFDE8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000FFE04(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 1;
  }

  else
  {
    *(result + 16) = 0;
  }

  return result;
}

void *sub_1000FFE54(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = a4[3];
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = a4[2];
  if (v9 <= v10)
  {
    v11 = a4[2];
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_10000560C(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    v12[2] = v10;
    v12[3] = 2 * (v14 >> 4);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  if (v7)
  {
    if (v12 != a4 || v12 + 4 >= &a4[2 * v10 + 4])
    {
      memmove(v12 + 4, a4 + 4, 16 * v10);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000560C(&qword_10012B738, &unk_10010AA90);
    swift_arrayInitWithCopy();
  }

  return v12;
}

void *sub_1000FFFC8(void *result, int64_t a2, char a3, void *a4)
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

  sub_10000560C(&qword_10012A430, &qword_1001093D0);
  v10 = *(type metadata accessor for UUID() - 8);
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
  v15 = *(type metadata accessor for UUID() - 8);
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

char *sub_1001001A0(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000560C(&qword_10012AFB0, &qword_100109CE0);
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

void *sub_100100318(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000560C(a5, a6);
  v16 = *(sub_10000560C(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = j__malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(sub_10000560C(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

uint64_t sub_100100500()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100100550(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 56);
  v9 = *(v1 + 48);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1000045BC;

  return sub_1000FD148(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100100628()
{

  return _swift_deallocObject(v0, 40, 7);
}

double sub_100100674(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100100724()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10010075C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000CC84;

  return sub_1000FCC4C(a1, v4);
}

uint64_t sub_100100814()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10010084C()
{

  return _swift_deallocObject(v0, 25, 7);
}

unint64_t sub_100100890()
{
  result = qword_10012B748;
  if (!qword_10012B748)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10012B748);
  }

  return result;
}

uint64_t sub_1001008DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100100924()
{
  result = qword_10012B760;
  if (!qword_10012B760)
  {
    sub_10000A990(&qword_10012B758, &unk_10010AAC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012B760);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BackgroundTaskType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BackgroundTaskType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100100B14()
{
  result = qword_10012B768;
  if (!qword_10012B768)
  {
    sub_10000A990(&qword_10012B770, qword_10010AAE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012B768);
  }

  return result;
}

uint64_t sub_100100B78(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1668184435;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x68736572666572;
    }

    else
    {
      v5 = 1668184435;
    }

    if (v3)
    {
      v4 = 0xE700000000000000;
    }

    else
    {
      v4 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x69737365636F7270;
    v4 = 0xEA0000000000676ELL;
  }

  else if (a1 == 3)
  {
    v4 = 0xE600000000000000;
    v5 = 0x70756D726177;
  }

  else
  {
    v4 = 0xE700000000000000;
    v5 = 0x70756E61656C63;
  }

  if (a2 <= 1u)
  {
    v6 = 0xE400000000000000;
    v7 = 0xE700000000000000;
    v8 = 0x68736572666572;
    v9 = a2 == 0;
  }

  else
  {
    v2 = 0x69737365636F7270;
    v6 = 0xEA0000000000676ELL;
    v7 = 0xE600000000000000;
    v8 = 0x70756D726177;
    if (a2 != 3)
    {
      v8 = 0x70756E61656C63;
      v7 = 0xE700000000000000;
    }

    v9 = a2 == 2;
  }

  if (v9)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v9)
  {
    v11 = v6;
  }

  else
  {
    v11 = v7;
  }

  if (v5 == v10 && v4 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v12 & 1;
}

unint64_t sub_100100CF8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100101138(*a1);
  *a2 = result;
  return result;
}

void sub_100100D28(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1668184435;
  v5 = 0xEA0000000000676ELL;
  v6 = 0x69737365636F7270;
  v7 = 0xE600000000000000;
  v8 = 0x70756D726177;
  if (v2 != 3)
  {
    v8 = 0x70756E61656C63;
    v7 = 0xE700000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x68736572666572;
    v3 = 0xE700000000000000;
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

Swift::Int sub_100100DC0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100100E9C(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100100F64(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100101050()
{
  result = qword_10012B778;
  if (!qword_10012B778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012B778);
  }

  return result;
}

uint64_t sub_1001010A4()
{
  v1 = *v0;
  v2 = 1668184435;
  v3 = 0x69737365636F7270;
  v4 = 0x70756D726177;
  if (v1 != 3)
  {
    v4 = 0x70756E61656C63;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x68736572666572;
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

unint64_t sub_100101138(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100125EE0, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1001011A4(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtCC11photosfaced9Analytics14BackgroundTask_startTime;
  swift_beginAccess();
  v5 = type metadata accessor for ContinuousClock.Instant();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t sub_100101260(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = sub_10000560C(&qword_10012B9A8, &qword_10010AC58);
  __chkstk_darwin(v6 - 8);
  v8 = &v13 - v7;
  v9 = type metadata accessor for ContinuousClock.Instant();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, a2, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  v11 = *a3;
  swift_beginAccess();
  sub_100101EAC(v8, a1 + v11);
  return swift_endAccess();
}

void sub_1001013B0()
{
  v1 = v0;
  v2 = type metadata accessor for ContinuousClock.Instant();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v35[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v35[-v7];
  v9 = sub_10000560C(&qword_10012B9A8, &qword_10010AC58);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v35[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v14 = &v35[-v13];
  v15 = OBJC_IVAR____TtCC11photosfaced9Analytics14BackgroundTask_endTime;
  swift_beginAccess();
  sub_100101D20(v1 + v15, v14);
  v16 = *(v3 + 48);
  v17 = v16(v14, 1, v2);
  v37 = 0;
  v38 = 0;
  v36 = v17;
  if (v17 != 1)
  {
    (*(v3 + 32))(v8, v14, v2);
    v18 = OBJC_IVAR____TtCC11photosfaced9Analytics14BackgroundTask_startTime;
    swift_beginAccess();
    (*(v3 + 16))(v6, v1 + v18, v2);
    v19 = ContinuousClock.Instant.duration(to:)();
    v37 = v20;
    v38 = v19;
    v21 = *(v3 + 8);
    v21(v6, v2);
    v21(v8, v2);
  }

  v22 = OBJC_IVAR____TtCC11photosfaced9Analytics14BackgroundTask_cancelTime;
  swift_beginAccess();
  sub_100101D20(v1 + v22, v12);
  v23 = v16(v12, 1, v2);
  v24 = 0;
  v25 = 0;
  if (v23 != 1)
  {
    (*(v3 + 32))(v8, v12, v2);
    v26 = OBJC_IVAR____TtCC11photosfaced9Analytics14BackgroundTask_startTime;
    swift_beginAccess();
    (*(v3 + 16))(v6, v1 + v26, v2);
    v24 = ContinuousClock.Instant.duration(to:)();
    v25 = v27;
    v28 = *(v3 + 8);
    v28(v6, v2);
    v28(v8, v2);
  }

  v29 = v36 == 1;
  v30 = String._bridgeToObjectiveC()();
  v31 = swift_allocObject();
  v32 = v37;
  v33 = v38;
  *(v31 + 16) = v1;
  *(v31 + 24) = v33;
  *(v31 + 32) = v32;
  *(v31 + 40) = v29;
  *(v31 + 48) = v24;
  *(v31 + 56) = v25;
  *(v31 + 64) = v23 == 1;
  aBlock[4] = sub_100101DC8;
  aBlock[5] = v31;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001019F0;
  aBlock[3] = &unk_100127A48;
  v34 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v34);
}

unint64_t sub_1001017CC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, char a7)
{
  sub_10000560C(&qword_10012B9B8, &qword_10010AC60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10010ABF0;
  *(inited + 32) = 1701869940;
  *(inited + 40) = 0xE400000000000000;
  v10 = String._bridgeToObjectiveC()();

  *(inited + 48) = v10;
  *(inited + 56) = 0x70616C45656D6974;
  *(inited + 64) = 0xEB00000000646573;
  if ((a4 & 1) == 0)
  {
    Duration.components.getter();
  }

  *(inited + 72) = Int64._bridgeToObjectiveC()();
  *(inited + 80) = 0x656C6C65636E6163;
  *(inited + 88) = 0xE900000000000064;
  if ((a7 & 1) == 0)
  {
    Duration.components.getter();
  }

  *(inited + 96) = Int64._bridgeToObjectiveC()();
  *(inited + 104) = 0x6465726F727265;
  *(inited + 112) = 0xE700000000000000;
  *(inited + 120) = Bool._bridgeToObjectiveC()();
  v11 = sub_10005DC2C(inited);
  swift_setDeallocating();
  sub_10000560C(qword_10012B9C0, &qword_10010AC68);
  swift_arrayDestroy();
  return v11;
}

Class sub_1001019F0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_100101DF8();
    v4.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

uint64_t sub_100101A7C()
{
  v1 = OBJC_IVAR____TtCC11photosfaced9Analytics14BackgroundTask_startTime;
  v2 = type metadata accessor for ContinuousClock.Instant();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100101E44(v0 + OBJC_IVAR____TtCC11photosfaced9Analytics14BackgroundTask_cancelTime);
  sub_100101E44(v0 + OBJC_IVAR____TtCC11photosfaced9Analytics14BackgroundTask_endTime);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for Analytics.BackgroundTask(uint64_t a1)
{
  result = qword_10012B868;
  if (!qword_10012B868)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100101BD8(uint64_t a1)
{
  type metadata accessor for ContinuousClock.Instant();
  if (v1 <= 0x3F)
  {
    sub_100101CC8(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100101CC8(uint64_t a1)
{
  if (!qword_10012B878)
  {
    type metadata accessor for ContinuousClock.Instant();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10012B878);
    }
  }
}

uint64_t sub_100101D20(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000560C(&qword_10012B9A8, &qword_10010AC58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100101D90()
{

  return _swift_deallocObject(v0, 65, 7);
}

double sub_100101DE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_100101DF8()
{
  result = qword_10012B9B0;
  if (!qword_10012B9B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10012B9B0);
  }

  return result;
}

uint64_t sub_100101E44(uint64_t a1)
{
  v2 = sub_10000560C(&qword_10012B9A8, &qword_10010AC58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100101EAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000560C(&qword_10012B9A8, &qword_10010AC58);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t exponentialBackoff<A>(isolation:operation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[17] = a5;
  v6[18] = a6;
  v6[15] = a1;
  v6[16] = a4;
  v9 = type metadata accessor for ContinuousClock.Instant();
  v6[19] = v9;
  v6[20] = *(v9 - 8);
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v6[23] = v10;
  v6[24] = *(v10 - 8);
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v13 = type metadata accessor for ExponentialBackoffResult(0, a6, v11, v12);
  v6[28] = v13;
  v6[29] = *(v13 - 8);
  v6[30] = swift_task_alloc();
  v6[31] = swift_task_alloc();
  v14 = type metadata accessor for ContinuousClock();
  v6[32] = v14;
  v6[33] = *(v14 - 8);
  v6[34] = swift_task_alloc();
  if (a2)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  v6[35] = v15;
  v6[36] = v17;

  return _swift_task_switch(sub_100102164, v15, v17);
}

uint64_t sub_100102164()
{
  v0[11] = static Duration.seconds(_:)();
  v0[12] = v1;
  ContinuousClock.init()();
  swift_beginAccess();
  v5 = (v0[16] + *v0[16]);
  v2 = swift_task_alloc();
  v0[37] = v2;
  *v2 = v0;
  v2[1] = sub_100102294;
  v3 = v0[31];

  return v5(v3);
}

uint64_t sub_100102294()
{
  v2 = *v1;
  *(*v1 + 304) = v0;

  v3 = *(v2 + 288);
  v4 = *(v2 + 280);
  if (v0)
  {
    v5 = sub_100102E40;
  }

  else
  {
    v5 = sub_1001023D0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1001023D0()
{
  v25 = v0;
  v1 = *(v0 + 240);
  v2 = *(v0 + 144);
  (*(*(v0 + 232) + 16))(v1, *(v0 + 248), *(v0 + 224));
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    static Log.default.getter();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 216);
    v8 = *(v0 + 184);
    v9 = *(v0 + 192);
    if (v6)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v24 = v11;
      *v10 = 136315138;
      v12 = Duration.description.getter();
      v14 = sub_100102F80(v12, v13, &v24);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v4, v5, "Sleeping for %s", v10, 0xCu);
      sub_10000C304(v11);
    }

    v15 = *(v9 + 8);
    v15(v7, v8);
    *(v0 + 312) = v15;
    *(v0 + 104) = *(v0 + 88);
    *(v0 + 64) = 0;
    *(v0 + 72) = 0;
    *(v0 + 80) = 1;

    return _swift_task_switch(sub_1001026BC, 0, 0);
  }

  else
  {
    v17 = *(v0 + 264);
    v16 = *(v0 + 272);
    v18 = *(v0 + 256);
    v19 = *(v0 + 240);
    v20 = *(v0 + 144);
    v21 = *(v0 + 120);
    (*(*(v0 + 232) + 8))(*(v0 + 248), *(v0 + 224));
    (*(v17 + 8))(v16, v18);
    (*(v3 + 32))(v21, v19, v20);

    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_1001026BC()
{
  v1 = v0[21];
  v2 = v0[19];
  v3 = v0[20];
  v4 = sub_100102F38(&qword_100129F10, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_100102F38(&qword_100129F18, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v5 = *(v3 + 8);
  v0[40] = v5;
  v0[41] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v2);
  v6 = swift_task_alloc();
  v0[42] = v6;
  *v6 = v0;
  v6[1] = sub_100102844;
  v7 = v0[32];
  v8 = v0[22];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 8, v7, v4);
}

uint64_t sub_100102844()
{
  v2 = *v1;
  v3 = *(*v1 + 320);
  v4 = *(*v1 + 176);
  v5 = *(*v1 + 152);
  *(*v1 + 344) = v0;

  v3(v4, v5);
  if (v0)
  {
    v6 = sub_100102BBC;
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v7 = *(v2 + 280);
    v8 = *(v2 + 288);
    v6 = sub_1001029CC;
  }

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1001029CC(uint64_t a1)
{
  static Log.default.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Done sleeping.", v4, 2u);
  }

  v5 = *(v1 + 248);
  v6 = *(v1 + 224);
  v7 = *(v1 + 232);
  (*(v1 + 312))(*(v1 + 208), *(v1 + 184));
  swift_beginAccess();
  dispatch thunk of static DurationProtocol.*= infix(_:_:)();
  swift_endAccess();
  (*(v7 + 8))(v5, v6);
  v11 = (*(v1 + 128) + **(v1 + 128));
  v8 = swift_task_alloc();
  *(v1 + 296) = v8;
  *v8 = v1;
  v8[1] = sub_100102294;
  v9 = *(v1 + 248);

  return v11(v9);
}

uint64_t sub_100102BD4(uint64_t a1)
{
  static Log.default.getter();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error Sleeping %@", v4, 0xCu);
    sub_100072EEC(v5);
  }

  else
  {
  }

  v7 = *(v1 + 248);
  v8 = *(v1 + 224);
  v9 = *(v1 + 232);
  (*(v1 + 312))(*(v1 + 200), *(v1 + 184));
  swift_beginAccess();
  dispatch thunk of static DurationProtocol.*= infix(_:_:)();
  swift_endAccess();
  (*(v9 + 8))(v7, v8);
  v13 = (*(v1 + 128) + **(v1 + 128));
  v10 = swift_task_alloc();
  *(v1 + 296) = v10;
  *v10 = v1;
  v10[1] = sub_100102294;
  v11 = *(v1 + 248);

  return v13(v11);
}

uint64_t sub_100102E40()
{
  (*(v0[33] + 8))(v0[34], v0[32]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100102F38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100102F80(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10010304C(v11, 0, 0, 1, a1, a2);
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
    sub_10005E3D0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000C304(v11);
  return v7;
}

unint64_t sub_10010304C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100103158(a5, a6);
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
    result = _StringObject.sharedUTF8.getter();
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

void *sub_100103158(uint64_t a1, unint64_t a2)
{
  v3 = sub_1001031A4(a1, a2);
  sub_1001032D4(&off_100125E58);
  return v3;
}

void *sub_1001031A4(uint64_t a1, unint64_t a2)
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

  v6 = sub_1001033C0(v5, 0);
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

  result = _StringObject.sharedUTF8.getter();
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
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1001033C0(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
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

uint64_t sub_1001032D4(uint64_t result)
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

  result = sub_100103434(result, v11, 1, v3);
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

void *sub_1001033C0(uint64_t a1, uint64_t a2)
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

  sub_10000560C(&qword_10012BA48, &qword_10010ACB0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100103434(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000560C(&qword_10012BA48, &qword_10010ACB0);
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

uint64_t sub_100103530(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_10010358C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_10010370C(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
  {
    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

id sub_100103938(uint64_t a1, char a2)
{
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v5 = v4;
  v11 = 0;
  v6 = [v2 removeItemAtURL:v4 error:&v11];

  if (v6)
  {
    return v11;
  }

  v8 = v11;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  if ((a2 & 1) != 0 && (URL.path(percentEncoded:)(1), v9 = String._bridgeToObjectiveC()(), , v10 = [v2 fileExistsAtPath:v9], v9, (v10 & 1) == 0))
  {
  }

  else
  {
    return swift_willThrow();
  }
}

id sub_100103A60(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v7 = v6;
  URL._bridgeToObjectiveC()(v8);
  v10 = v9;
  if (!a3)
  {
    v39 = 0;
    v17 = [v4 copyItemAtURL:v7 toURL:v9 error:&v39];

    if (v17)
    {
      return v39;
    }

    v19 = v39;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }

  if (a3 == 1)
  {
    v39 = 0;
    v11 = [v4 copyItemAtURL:v7 toURL:v9 error:&v39];

    v12 = v39;
    if (!v11)
    {
      v13 = v39;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      URL.path(percentEncoded:)(1);
      v14 = String._bridgeToObjectiveC()();

      v15 = [v4 fileExistsAtPath:v14];

      if (v15)
      {
      }

      return swift_willThrow();
    }

    return v12;
  }

  v39 = 0;
  v18 = [v4 copyItemAtURL:v7 toURL:v9 error:&v39];

  v12 = v39;
  if (v18)
  {
    return v12;
  }

  v20 = 11;
  while (1)
  {
    v29 = v12;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (!--v20)
    {
      break;
    }

    URL.path(percentEncoded:)(1);
    v30 = String._bridgeToObjectiveC()();

    v31 = [v4 fileExistsAtPath:v30];

    if (!v31)
    {
      break;
    }

    URL._bridgeToObjectiveC()(v32);
    v34 = v33;
    v39 = 0;
    v35 = [v4 removeItemAtURL:v33 error:&v39];

    if (v35)
    {
      v21 = v39;
    }

    else
    {
      v36 = v39;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      URL.path(percentEncoded:)(1);
      v37 = String._bridgeToObjectiveC()();

      v38 = [v4 fileExistsAtPath:v37];

      if (v38)
      {
        swift_willThrow();
      }
    }

    URL._bridgeToObjectiveC()(v22);
    v24 = v23;
    URL._bridgeToObjectiveC()(v25);
    v27 = v26;
    v39 = 0;
    v28 = [v4 copyItemAtURL:v24 toURL:v26 error:&v39];

    v12 = v39;
    if (v28)
    {
      return v12;
    }
  }

  return swift_willThrow();
}

uint64_t sub_100103DF4(uint64_t a1)
{
  __chkstk_darwin(a1);
  (*(v2 + 16))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  return String.init<A>(describing:)();
}

uint64_t sub_100103EAC(uint64_t a1)
{
  v1 = a1;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.default.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    v10 = PhotosFaceType.description.getter();
    v12 = sub_100102F80(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "Sending %s Update Darwin Notification.", v8, 0xCu);
    sub_10000C304(v9);
  }

  (*(v3 + 8))(v5, v2);
  return notify_post(**(&off_100127AE0 + v1));
}

uint64_t sub_100104068(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v12 = type metadata accessor for Logger();
  v39 = *(v12 - 8);
  v40 = v12;
  v13 = __chkstk_darwin(v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v37 = &v36 - v16;
  swift_defaultActor_initialize();
  *(v6 + 120) = a1;
  *(v6 + 128) = a2;
  AssertionID = 0;

  v17 = String._bridgeToObjectiveC()();
  v38 = a1;
  v18 = String._bridgeToObjectiveC()();
  v19 = String._bridgeToObjectiveC()();
  Duration.timeInterval.getter();
  v21 = v20;
  v22 = String._bridgeToObjectiveC()();
  v23 = IOPMAssertionCreateWithDescription(v17, v18, v19, 0, 0, v21, v22, &AssertionID);

  if (v23)
  {

    *(v7 + 112) = 0;
    static Log.default.getter();

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v42 = v27;
      *v26 = 136315138;
      v28 = sub_100102F80(v38, a2, &v42);

      *(v26 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v24, v25, "Failed to create power assertion for %s", v26, 0xCu);
      sub_10000C304(v27);
    }

    else
    {
    }

    (*(v39 + 8))(v15, v40);
  }

  else
  {
    *(v7 + 112) = AssertionID;
    v29 = v37;
    static Log.default.getter();

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v32 = 136315394;
      v33 = sub_100102F80(v38, a2, &v42);

      *(v32 + 4) = v33;
      *(v32 + 12) = 2080;
      v34 = sub_100102F80(a3, a4, &v42);

      *(v32 + 14) = v34;
      _os_log_impl(&_mh_execute_header, v30, v31, "Created power assertion: %s for %s", v32, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    (*(v39 + 8))(v29, v40);
  }

  return v7;
}

uint64_t sub_1001044F0()
{
  sub_100104794();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100104550()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 112);
  if (v6)
  {
    v8 = *(v1 + 120);
    v7 = *(v1 + 128);

    IOPMAssertionRelease(v6);
    *(v1 + 112) = 0;
    static Log.default.getter();

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v16 = v12;
      *v11 = 136315138;
      v13 = sub_100102F80(v8, v7, &v16);

      *(v11 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v9, v10, "Closing power assertion on close for %s", v11, 0xCu);
      sub_10000C304(v12);
    }

    else
    {
    }

    (*(v3 + 8))(v5, v2);
  }

  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_100104744()
{
  sub_100104550();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100104794()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *(v0 + 112);
  if (result)
  {
    v6 = *(v0 + 120);
    v7 = *(v0 + 128);
    IOPMAssertionRelease(result);
    *(v0 + 112) = 0;
    static Log.default.getter();

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v13 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_100102F80(v6, v7, &v13);
      _os_log_impl(&_mh_execute_header, v8, v9, "Closing power assertion on close for %s", v10, 0xCu);
      sub_10000C304(v11);
    }

    return (*(v2 + 8))(v4, v1);
  }

  return result;
}

Swift::String __swiftcall URL.path(percentEncoded:)(Swift::Bool percentEncoded)
{
  v1 = URL.path(percentEncoded:)(percentEncoded);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}